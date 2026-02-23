	.file	"inet_chksum.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/inet_chksum.c"
	.section	.text.lwip_standard_chksum,"ax",@progbits
	.align	1
	.globl	lwip_standard_chksum
	.type	lwip_standard_chksum, @function
lwip_standard_chksum:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/inet_chksum.c"
	.loc 1 190 1
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
	.loc 1 191 15
	lw	a5,-52(s0)
	sw	a5,-20(s0)
	.loc 1 193 9
	sh	zero,-42(s0)
	.loc 1 195 9
	sw	zero,-32(s0)
	.loc 1 197 28
	lw	a5,-20(s0)
	.loc 1 197 7
	andi	a5,a5,1
	sw	a5,-40(s0)
	.loc 1 199 6
	lw	a5,-40(s0)
	beq	a5,zero,.L2
	.loc 1 199 11 discriminator 1
	lw	a5,-56(s0)
	ble	a5,zero,.L2
	.loc 1 200 26
	lw	a4,-20(s0)
	addi	a5,a4,1
	sw	a5,-20(s0)
	.loc 1 200 17
	addi	a5,s0,-42
	addi	a5,a5,1
	.loc 1 200 23
	lbu	a4,0(a4)
	.loc 1 200 21
	sb	a4,0(a5)
	.loc 1 201 8
	lw	a5,-56(s0)
	addi	a5,a5,-1
	sw	a5,-56(s0)
.L2:
	.loc 1 204 6
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 1 206 8
	lw	a5,-24(s0)
	.loc 1 206 22
	andi	a5,a5,3
	.loc 1 206 6
	beq	a5,zero,.L3
	.loc 1 206 27 discriminator 1
	lw	a4,-56(s0)
	li	a5,1
	ble	a4,a5,.L3
	.loc 1 207 15
	lw	a5,-24(s0)
	addi	a4,a5,2
	sw	a4,-24(s0)
	.loc 1 207 12
	lhu	a5,0(a5)
	mv	a4,a5
	.loc 1 207 9
	lw	a5,-32(s0)
	add	a5,a5,a4
	sw	a5,-32(s0)
	.loc 1 208 9
	lw	a5,-56(s0)
	addi	a5,a5,-2
	sw	a5,-56(s0)
.L3:
	.loc 1 211 6
	lw	a5,-24(s0)
	sw	a5,-28(s0)
	.loc 1 213 9
	j	.L4
.L7:
	.loc 1 214 20
	lw	a5,-28(s0)
	addi	a4,a5,4
	sw	a4,-28(s0)
	.loc 1 214 17
	lw	a5,0(a5)
	.loc 1 214 9
	lw	a4,-32(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 1 215 8
	lw	a4,-36(s0)
	lw	a5,-32(s0)
	bgeu	a4,a5,.L5
	.loc 1 216 10
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L5:
	.loc 1 219 20
	lw	a5,-28(s0)
	addi	a4,a5,4
	sw	a4,-28(s0)
	.loc 1 219 17
	lw	a5,0(a5)
	.loc 1 219 9
	lw	a4,-36(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 220 8
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	bgeu	a4,a5,.L6
	.loc 1 221 10
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L6:
	.loc 1 224 9
	lw	a5,-56(s0)
	addi	a5,a5,-8
	sw	a5,-56(s0)
.L4:
	.loc 1 213 14
	lw	a4,-56(s0)
	li	a5,7
	bgt	a4,a5,.L7
	.loc 1 228 25
	lw	a5,-32(s0)
	srli	a4,a5,16
	.loc 1 228 41
	lw	a5,-32(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 228 7
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 230 6
	lw	a5,-28(s0)
	sw	a5,-24(s0)
	.loc 1 233 9
	j	.L8
.L9:
	.loc 1 234 15
	lw	a5,-24(s0)
	addi	a4,a5,2
	sw	a4,-24(s0)
	.loc 1 234 12
	lhu	a5,0(a5)
	mv	a4,a5
	.loc 1 234 9
	lw	a5,-32(s0)
	add	a5,a5,a4
	sw	a5,-32(s0)
	.loc 1 235 9
	lw	a5,-56(s0)
	addi	a5,a5,-2
	sw	a5,-56(s0)
.L8:
	.loc 1 233 14
	lw	a4,-56(s0)
	li	a5,1
	bgt	a4,a5,.L9
	.loc 1 239 6
	lw	a5,-56(s0)
	ble	a5,zero,.L10
	.loc 1 240 14
	addi	a5,s0,-42
	.loc 1 240 23
	lw	a4,-24(s0)
	lbu	a4,0(a4)
	.loc 1 240 21
	sb	a4,0(a5)
.L10:
	.loc 1 243 7
	lhu	a5,-42(s0)
	mv	a4,a5
	lw	a5,-32(s0)
	add	a5,a5,a4
	sw	a5,-32(s0)
	.loc 1 247 25
	lw	a5,-32(s0)
	srli	a4,a5,16
	.loc 1 247 41
	lw	a5,-32(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 247 7
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 248 25
	lw	a5,-32(s0)
	srli	a4,a5,16
	.loc 1 248 41
	lw	a5,-32(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 248 7
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 250 6
	lw	a5,-40(s0)
	beq	a5,zero,.L11
	.loc 1 251 27
	lw	a5,-32(s0)
	slli	a5,a5,8
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 251 53
	lw	a5,-32(s0)
	srli	a5,a5,8
	andi	a5,a5,255
	.loc 1 251 9
	or	a5,a4,a5
	sw	a5,-32(s0)
.L11:
	.loc 1 254 10
	lw	a5,-32(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 255 1
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
	.size	lwip_standard_chksum, .-lwip_standard_chksum
	.section	.text.inet_cksum_pseudo_base,"ax",@progbits
	.align	1
	.type	inet_cksum_pseudo_base, @function
inet_cksum_pseudo_base:
.LFB6:
	.loc 1 261 1
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
	sb	a5,-37(s0)
	mv	a5,a4
	sh	a5,-40(s0)
	.loc 1 263 7
	sw	zero,-24(s0)
	.loc 1 266 10
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 266 3
	j	.L14
.L16:
	.loc 1 269 34
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 269 46
	lw	a5,-20(s0)
	lhu	a5,10(a5)
	.loc 1 269 12
	mv	a1,a5
	mv	a0,a4
	call	lwip_standard_chksum
	mv	a5,a0
	.loc 1 269 12 is_stmt 0 discriminator 1
	mv	a4,a5
	.loc 1 269 9 is_stmt 1 discriminator 1
	lw	a5,-44(s0)
	add	a5,a5,a4
	sw	a5,-44(s0)
	.loc 1 273 27
	lw	a5,-44(s0)
	srli	a4,a5,16
	.loc 1 273 43
	lw	a5,-44(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 273 9
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 1 274 10
	lw	a5,-20(s0)
	lhu	a5,10(a5)
	.loc 1 274 20
	andi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 274 8
	beq	a5,zero,.L15
	.loc 1 275 17
	lw	a5,-24(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 275 15
	sw	a5,-24(s0)
	.loc 1 276 29
	lw	a5,-44(s0)
	slli	a5,a5,8
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 276 55
	lw	a5,-44(s0)
	srli	a5,a5,8
	andi	a5,a5,255
	.loc 1 276 11
	or	a5,a4,a5
	sw	a5,-44(s0)
.L15:
	.loc 1 266 27 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L14:
	.loc 1 266 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L16
	.loc 1 281 6
	lw	a5,-24(s0)
	beq	a5,zero,.L17
	.loc 1 282 27
	lw	a5,-44(s0)
	slli	a5,a5,8
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 282 53
	lw	a5,-44(s0)
	srli	a5,a5,8
	andi	a5,a5,255
	.loc 1 282 9
	or	a5,a4,a5
	sw	a5,-44(s0)
.L17:
	.loc 1 285 17
	lbu	a5,-37(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 285 10 discriminator 1
	mv	a4,a5
	.loc 1 285 7 discriminator 1
	lw	a5,-44(s0)
	add	a5,a5,a4
	sw	a5,-44(s0)
	.loc 1 286 17
	lhu	a5,-40(s0)
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 286 10 discriminator 1
	mv	a4,a5
	.loc 1 286 7 discriminator 1
	lw	a5,-44(s0)
	add	a5,a5,a4
	sw	a5,-44(s0)
	.loc 1 290 25
	lw	a5,-44(s0)
	srli	a4,a5,16
	.loc 1 290 41
	lw	a5,-44(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 290 7
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 1 291 25
	lw	a5,-44(s0)
	srli	a4,a5,16
	.loc 1 291 41
	lw	a5,-44(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 291 7
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 1 293 10
	lw	a5,-44(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	not	a5,a5
	slli	a5,a5,16
	srli	a5,a5,16
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
.LFE6:
	.size	inet_cksum_pseudo_base, .-inet_cksum_pseudo_base
	.section	.text.inet_chksum_pseudo,"ax",@progbits
	.align	1
	.globl	inet_chksum_pseudo
	.type	inet_chksum_pseudo, @function
inet_chksum_pseudo:
.LFB7:
	.loc 1 312 1
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
	sw	a3,-44(s0)
	sw	a4,-48(s0)
	sb	a5,-37(s0)
	mv	a5,a2
	sh	a5,-40(s0)
	.loc 1 316 8
	lw	a5,-44(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 317 7
	lw	a5,-20(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a5,-24(s0)
	.loc 1 318 30
	lw	a5,-20(s0)
	srli	a5,a5,16
	.loc 1 318 7
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 319 8
	lw	a5,-48(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 320 29
	lw	a5,-20(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 320 7
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 321 30
	lw	a5,-20(s0)
	srli	a5,a5,16
	.loc 1 321 7
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 323 25
	lw	a5,-24(s0)
	srli	a4,a5,16
	.loc 1 323 41
	lw	a5,-24(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 323 7
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 324 25
	lw	a5,-24(s0)
	srli	a4,a5,16
	.loc 1 324 41
	lw	a5,-24(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 324 7
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 326 10
	lhu	a4,-40(s0)
	lbu	a5,-37(s0)
	lw	a3,-24(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-36(s0)
	call	inet_cksum_pseudo_base
	mv	a5,a0
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
.LFE7:
	.size	inet_chksum_pseudo, .-inet_chksum_pseudo
	.section	.text.ip_chksum_pseudo,"ax",@progbits
	.align	1
	.globl	ip_chksum_pseudo
	.type	ip_chksum_pseudo, @function
ip_chksum_pseudo:
.LFB8:
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
	mv	a5,a1
	sw	a3,-28(s0)
	sw	a4,-32(s0)
	sb	a5,-21(s0)
	mv	a5,a2
	sh	a5,-24(s0)
	.loc 1 392 12
	lhu	a2,-24(s0)
	lbu	a5,-21(s0)
	lw	a4,-32(s0)
	lw	a3,-28(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	inet_chksum_pseudo
	mv	a5,a0
	.loc 1 395 1
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
	.size	ip_chksum_pseudo, .-ip_chksum_pseudo
	.section	.text.inet_cksum_pseudo_partial_base,"ax",@progbits
	.align	1
	.type	inet_cksum_pseudo_partial_base, @function
inet_cksum_pseudo_partial_base:
.LFB9:
	.loc 1 401 1
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
	sw	a4,-48(s0)
	sb	a5,-37(s0)
	mv	a5,a2
	sh	a5,-40(s0)
	mv	a5,a3
	sh	a5,-42(s0)
	.loc 1 403 7
	sw	zero,-24(s0)
	.loc 1 407 10
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 407 3
	j	.L24
.L28:
	.loc 1 410 12
	lw	a5,-20(s0)
	lhu	a5,10(a5)
	sh	a5,-26(s0)
	.loc 1 411 8
	lhu	a4,-26(s0)
	lhu	a5,-42(s0)
	bleu	a4,a5,.L25
	.loc 1 412 14
	lhu	a5,-42(s0)
	sh	a5,-26(s0)
.L25:
	.loc 1 414 34
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 414 12
	lhu	a4,-26(s0)
	mv	a1,a4
	mv	a0,a5
	call	lwip_standard_chksum
	mv	a5,a0
	.loc 1 414 12 is_stmt 0 discriminator 1
	mv	a4,a5
	.loc 1 414 9 is_stmt 1 discriminator 1
	lw	a5,-48(s0)
	add	a5,a5,a4
	sw	a5,-48(s0)
	.loc 1 415 16
	lhu	a5,-42(s0)
	mv	a4,a5
	lhu	a5,-26(s0)
	sub	a5,a4,a5
	sh	a5,-42(s0)
	.loc 1 419 27
	lw	a5,-48(s0)
	srli	a4,a5,16
	.loc 1 419 43
	lw	a5,-48(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 419 9
	add	a5,a4,a5
	sw	a5,-48(s0)
	.loc 1 420 10
	lw	a5,-20(s0)
	lhu	a5,10(a5)
	.loc 1 420 20
	andi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 420 8
	beq	a5,zero,.L26
	.loc 1 421 17
	lw	a5,-24(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 421 15
	sw	a5,-24(s0)
	.loc 1 422 29
	lw	a5,-48(s0)
	slli	a5,a5,8
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 422 55
	lw	a5,-48(s0)
	srli	a5,a5,8
	andi	a5,a5,255
	.loc 1 422 11
	or	a5,a4,a5
	sw	a5,-48(s0)
.L26:
	.loc 1 407 49 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L24:
	.loc 1 407 26 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L27
	.loc 1 407 26 is_stmt 0 discriminator 3
	lhu	a5,-42(s0)
	bne	a5,zero,.L28
.L27:
	.loc 1 427 6 is_stmt 1
	lw	a5,-24(s0)
	beq	a5,zero,.L29
	.loc 1 428 27
	lw	a5,-48(s0)
	slli	a5,a5,8
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 428 53
	lw	a5,-48(s0)
	srli	a5,a5,8
	andi	a5,a5,255
	.loc 1 428 9
	or	a5,a4,a5
	sw	a5,-48(s0)
.L29:
	.loc 1 431 17
	lbu	a5,-37(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 431 10 discriminator 1
	mv	a4,a5
	.loc 1 431 7 discriminator 1
	lw	a5,-48(s0)
	add	a5,a5,a4
	sw	a5,-48(s0)
	.loc 1 432 17
	lhu	a5,-40(s0)
	mv	a0,a5
	call	lwip_htons
	mv	a5,a0
	.loc 1 432 10 discriminator 1
	mv	a4,a5
	.loc 1 432 7 discriminator 1
	lw	a5,-48(s0)
	add	a5,a5,a4
	sw	a5,-48(s0)
	.loc 1 436 25
	lw	a5,-48(s0)
	srli	a4,a5,16
	.loc 1 436 41
	lw	a5,-48(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 436 7
	add	a5,a4,a5
	sw	a5,-48(s0)
	.loc 1 437 25
	lw	a5,-48(s0)
	srli	a4,a5,16
	.loc 1 437 41
	lw	a5,-48(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 437 7
	add	a5,a4,a5
	sw	a5,-48(s0)
	.loc 1 439 10
	lw	a5,-48(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	not	a5,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 440 1
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
	.size	inet_cksum_pseudo_partial_base, .-inet_cksum_pseudo_partial_base
	.section	.text.inet_chksum_pseudo_partial,"ax",@progbits
	.align	1
	.globl	inet_chksum_pseudo_partial
	.type	inet_chksum_pseudo_partial, @function
inet_chksum_pseudo_partial:
.LFB10:
	.loc 1 458 1
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
	sw	a4,-48(s0)
	sw	a5,-52(s0)
	mv	a5,a1
	sb	a5,-37(s0)
	mv	a5,a2
	sh	a5,-40(s0)
	mv	a5,a3
	sh	a5,-42(s0)
	.loc 1 462 8
	lw	a5,-48(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 463 7
	lw	a5,-20(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a5,-24(s0)
	.loc 1 464 30
	lw	a5,-20(s0)
	srli	a5,a5,16
	.loc 1 464 7
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 465 8
	lw	a5,-52(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 466 29
	lw	a5,-20(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 466 7
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 467 30
	lw	a5,-20(s0)
	srli	a5,a5,16
	.loc 1 467 7
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 469 25
	lw	a5,-24(s0)
	srli	a4,a5,16
	.loc 1 469 41
	lw	a5,-24(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 469 7
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 470 25
	lw	a5,-24(s0)
	srli	a4,a5,16
	.loc 1 470 41
	lw	a5,-24(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 470 7
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 472 10
	lhu	a3,-42(s0)
	lhu	a2,-40(s0)
	lbu	a5,-37(s0)
	lw	a4,-24(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	inet_cksum_pseudo_partial_base
	mv	a5,a0
	.loc 1 473 1
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
.LFE10:
	.size	inet_chksum_pseudo_partial, .-inet_chksum_pseudo_partial
	.section	.text.ip_chksum_pseudo_partial,"ax",@progbits
	.align	1
	.globl	ip_chksum_pseudo_partial
	.type	ip_chksum_pseudo_partial, @function
ip_chksum_pseudo_partial:
.LFB11:
	.loc 1 528 1
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
	sw	a4,-32(s0)
	sw	a5,-36(s0)
	mv	a5,a1
	sb	a5,-21(s0)
	mv	a5,a2
	sh	a5,-24(s0)
	mv	a5,a3
	sh	a5,-26(s0)
	.loc 1 539 12
	lhu	a3,-26(s0)
	lhu	a2,-24(s0)
	lbu	a1,-21(s0)
	lw	a5,-36(s0)
	lw	a4,-32(s0)
	lw	a0,-20(s0)
	call	inet_chksum_pseudo_partial
	mv	a5,a0
	.loc 1 542 1
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
	.size	ip_chksum_pseudo_partial, .-ip_chksum_pseudo_partial
	.section	.text.inet_chksum,"ax",@progbits
	.align	1
	.globl	inet_chksum
	.type	inet_chksum, @function
inet_chksum:
.LFB12:
	.loc 1 556 1
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
	.loc 1 557 32
	lhu	a5,-22(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	lwip_standard_chksum
	mv	a5,a0
	.loc 1 557 10 discriminator 1
	not	a5,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 558 1
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
	.size	inet_chksum, .-inet_chksum
	.section	.text.inet_chksum_pbuf,"ax",@progbits
	.align	1
	.globl	inet_chksum_pbuf
	.type	inet_chksum_pbuf, @function
inet_chksum_pbuf:
.LFB13:
	.loc 1 569 1
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
	.loc 1 572 7
	sw	zero,-28(s0)
	.loc 1 574 7
	sw	zero,-20(s0)
	.loc 1 575 10
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 575 3
	j	.L38
.L40:
	.loc 1 576 34
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 1 576 46
	lw	a5,-24(s0)
	lhu	a5,10(a5)
	.loc 1 576 12
	mv	a1,a5
	mv	a0,a4
	call	lwip_standard_chksum
	mv	a5,a0
	.loc 1 576 12 is_stmt 0 discriminator 1
	mv	a4,a5
	.loc 1 576 9 is_stmt 1 discriminator 1
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 577 27
	lw	a5,-20(s0)
	srli	a4,a5,16
	.loc 1 577 43
	lw	a5,-20(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 577 9
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 578 10
	lw	a5,-24(s0)
	lhu	a5,10(a5)
	.loc 1 578 20
	andi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 578 8
	beq	a5,zero,.L39
	.loc 1 579 17
	lw	a5,-28(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 579 15
	sw	a5,-28(s0)
	.loc 1 580 29
	lw	a5,-20(s0)
	slli	a5,a5,8
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 580 55
	lw	a5,-20(s0)
	srli	a5,a5,8
	andi	a5,a5,255
	.loc 1 580 11
	or	a5,a4,a5
	sw	a5,-20(s0)
.L39:
	.loc 1 575 27 discriminator 2
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
.L38:
	.loc 1 575 17 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L40
	.loc 1 584 6
	lw	a5,-28(s0)
	beq	a5,zero,.L41
	.loc 1 585 27
	lw	a5,-20(s0)
	slli	a5,a5,8
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 585 53
	lw	a5,-20(s0)
	srli	a5,a5,8
	andi	a5,a5,255
	.loc 1 585 9
	or	a5,a4,a5
	sw	a5,-20(s0)
.L41:
	.loc 1 587 10
	lw	a5,-20(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	not	a5,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 588 1
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
	.size	inet_chksum_pbuf, .-inet_chksum_pbuf
	.section	.text.lwip_chksum_copy,"ax",@progbits
	.align	1
	.globl	lwip_chksum_copy
	.type	lwip_chksum_copy, @function
lwip_chksum_copy:
.LFB14:
	.loc 1 604 1
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
	.loc 1 605 3
	lhu	a5,-26(s0)
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	memcpy
	.loc 1 606 10
	lhu	a5,-26(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	lwip_standard_chksum
	mv	a5,a0
	.loc 1 607 1
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
.LFE14:
	.size	lwip_chksum_copy, .-lwip_chksum_copy
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/def.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x658
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x14
	.byte	0x4
	.uleb128 0xd
	.4byte	0x84
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	0x9c
	.uleb128 0xd
	.4byte	0x92
	.uleb128 0x15
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x39
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x47
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x55
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x56
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0x9d
	.uleb128 0xb
	.4byte	0xcd
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0xa9
	.uleb128 0xb
	.4byte	0xde
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xb5
	.uleb128 0xb
	.4byte	0xef
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x87
	.byte	0x13
	.4byte	0xc1
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x10
	.byte	0x5
	.byte	0xba
	.4byte	0x17f
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x5
	.byte	0xbc
	.byte	0x10
	.4byte	0x17f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x5
	.byte	0xbf
	.byte	0x9
	.4byte	0x84
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x5
	.byte	0xc8
	.byte	0x9
	.4byte	0xde
	.byte	0x8
	.uleb128 0xf
	.string	"len"
	.byte	0xcb
	.byte	0x9
	.4byte	0xde
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x5
	.byte	0xd0
	.byte	0x8
	.4byte	0xcd
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x5
	.byte	0xd3
	.byte	0x8
	.4byte	0xcd
	.byte	0xd
	.uleb128 0xf
	.string	"ref"
	.byte	0xda
	.byte	0x8
	.4byte	0xcd
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x5
	.byte	0xdd
	.byte	0x8
	.4byte	0xcd
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	0x10c
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x4
	.byte	0x6
	.byte	0x33
	.4byte	0x19e
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x6
	.byte	0x34
	.byte	0x9
	.4byte	0xef
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x6
	.byte	0x39
	.byte	0x19
	.4byte	0x184
	.uleb128 0xb
	.4byte	0x19e
	.uleb128 0x16
	.4byte	.LASF32
	.byte	0x7
	.2byte	0x126
	.byte	0x14
	.4byte	0x19e
	.uleb128 0xb
	.4byte	0x1af
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x8
	.byte	0x1f
	.byte	0x8
	.4byte	0x84
	.4byte	0x1e1
	.uleb128 0xc
	.4byte	0x86
	.uleb128 0xc
	.4byte	0x97
	.uleb128 0xc
	.4byte	0x71
	.byte	0
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x9
	.byte	0x60
	.byte	0x7
	.4byte	0xde
	.4byte	0x1f7
	.uleb128 0xc
	.4byte	0xde
	.byte	0
	.uleb128 0x7
	.4byte	.LASF35
	.2byte	0x25b
	.4byte	0xde
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23e
	.uleb128 0x2
	.string	"dst"
	.2byte	0x25b
	.byte	0x18
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"src"
	.2byte	0x25b
	.byte	0x29
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"len"
	.2byte	0x25b
	.byte	0x34
	.4byte	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x7
	.4byte	.LASF36
	.2byte	0x238
	.4byte	0xde
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x290
	.uleb128 0x2
	.string	"p"
	.2byte	0x238
	.byte	0x1f
	.4byte	0x17f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"acc"
	.2byte	0x23a
	.byte	0x9
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"q"
	.2byte	0x23b
	.byte	0x10
	.4byte	0x17f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF37
	.2byte	0x23c
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x7
	.4byte	.LASF38
	.2byte	0x22b
	.4byte	0xde
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c8
	.uleb128 0x1
	.4byte	.LASF39
	.2byte	0x22b
	.byte	0x19
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x22b
	.byte	0x28
	.4byte	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x7
	.4byte	.LASF40
	.2byte	0x20e
	.4byte	0xde
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x33a
	.uleb128 0x2
	.string	"p"
	.2byte	0x20e
	.byte	0x27
	.4byte	0x17f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF41
	.2byte	0x20e
	.byte	0x2f
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0x20e
	.byte	0x3c
	.4byte	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF43
	.2byte	0x20f
	.byte	0x20
	.4byte	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x2
	.string	"src"
	.2byte	0x20f
	.byte	0x3d
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF44
	.2byte	0x20f
	.byte	0x53
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x5
	.4byte	0x1bc
	.uleb128 0x7
	.4byte	.LASF45
	.2byte	0x1c8
	.4byte	0xde
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3cf
	.uleb128 0x2
	.string	"p"
	.2byte	0x1c8
	.byte	0x29
	.4byte	0x17f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF41
	.2byte	0x1c8
	.byte	0x31
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0x1c8
	.byte	0x3e
	.4byte	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF43
	.2byte	0x1c9
	.byte	0x22
	.4byte	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x2
	.string	"src"
	.2byte	0x1c9
	.byte	0x40
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF44
	.2byte	0x1c9
	.byte	0x57
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.string	"acc"
	.2byte	0x1cb
	.byte	0x9
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF30
	.2byte	0x1cc
	.byte	0x9
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x1aa
	.uleb128 0x11
	.4byte	.LASF49
	.2byte	0x18f
	.4byte	0xde
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x462
	.uleb128 0x2
	.string	"p"
	.2byte	0x18f
	.byte	0x2d
	.4byte	0x17f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF41
	.2byte	0x18f
	.byte	0x35
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0x18f
	.byte	0x42
	.4byte	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF43
	.2byte	0x190
	.byte	0x26
	.4byte	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x2
	.string	"acc"
	.2byte	0x190
	.byte	0x38
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.string	"q"
	.2byte	0x192
	.byte	0x10
	.4byte	0x17f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.4byte	.LASF37
	.2byte	0x193
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF46
	.2byte	0x194
	.byte	0x9
	.4byte	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x7
	.4byte	.LASF47
	.2byte	0x17b
	.4byte	0xde
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c5
	.uleb128 0x2
	.string	"p"
	.2byte	0x17b
	.byte	0x1f
	.4byte	0x17f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF41
	.2byte	0x17b
	.byte	0x27
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0x17b
	.byte	0x34
	.4byte	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"src"
	.2byte	0x17c
	.byte	0x23
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF44
	.2byte	0x17c
	.byte	0x39
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF48
	.2byte	0x136
	.4byte	0xde
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x546
	.uleb128 0x2
	.string	"p"
	.2byte	0x136
	.byte	0x21
	.4byte	0x17f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF41
	.2byte	0x136
	.byte	0x29
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0x136
	.byte	0x36
	.4byte	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"src"
	.2byte	0x137
	.byte	0x26
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF44
	.2byte	0x137
	.byte	0x3d
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.string	"acc"
	.2byte	0x139
	.byte	0x9
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF30
	.2byte	0x13a
	.byte	0x9
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF50
	.2byte	0x104
	.4byte	0xde
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b6
	.uleb128 0x2
	.string	"p"
	.2byte	0x104
	.byte	0x25
	.4byte	0x17f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF41
	.2byte	0x104
	.byte	0x2d
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0x104
	.byte	0x3a
	.4byte	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"acc"
	.2byte	0x104
	.byte	0x4b
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.string	"q"
	.2byte	0x106
	.byte	0x10
	.4byte	0x17f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.4byte	.LASF37
	.2byte	0x107
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.4byte	.LASF51
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.4byte	0xde
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x64c
	.uleb128 0x18
	.4byte	.LASF39
	.byte	0x1
	.byte	0xbd
	.byte	0x22
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.byte	0xbd
	.byte	0x2f
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.string	"pb"
	.byte	0xbf
	.byte	0xf
	.4byte	0x64c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"ps"
	.byte	0xc0
	.byte	0x10
	.4byte	0x651
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"t"
	.byte	0xc1
	.byte	0x9
	.4byte	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x8
	.string	"pl"
	.byte	0xc2
	.byte	0x10
	.4byte	0x656
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.string	"sum"
	.byte	0xc3
	.byte	0x9
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.string	"tmp"
	.byte	0xc3
	.byte	0x12
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"odd"
	.byte	0xc5
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x5
	.4byte	0xd9
	.uleb128 0x5
	.4byte	0xea
	.uleb128 0x5
	.4byte	0xfb
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF43:
	.string	"chksum_len"
.LASF28:
	.string	"pbuf"
.LASF13:
	.string	"size_t"
.LASF17:
	.string	"uintptr_t"
.LASF45:
	.string	"inet_chksum_pseudo_partial"
.LASF9:
	.string	"long long unsigned int"
.LASF30:
	.string	"addr"
.LASF46:
	.string	"chklen"
.LASF22:
	.string	"next"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF24:
	.string	"tot_len"
.LASF6:
	.string	"long int"
.LASF48:
	.string	"inet_chksum_pseudo"
.LASF29:
	.string	"ip4_addr"
.LASF15:
	.string	"uint16_t"
.LASF35:
	.string	"lwip_chksum_copy"
.LASF25:
	.string	"type_internal"
.LASF10:
	.string	"unsigned int"
.LASF7:
	.string	"long unsigned int"
.LASF20:
	.string	"u32_t"
.LASF5:
	.string	"short unsigned int"
.LASF40:
	.string	"ip_chksum_pseudo_partial"
.LASF34:
	.string	"lwip_htons"
.LASF38:
	.string	"inet_chksum"
.LASF32:
	.string	"ip_addr_t"
.LASF51:
	.string	"lwip_standard_chksum"
.LASF18:
	.string	"u8_t"
.LASF11:
	.string	"long double"
.LASF23:
	.string	"payload"
.LASF44:
	.string	"dest"
.LASF36:
	.string	"inet_chksum_pbuf"
.LASF3:
	.string	"unsigned char"
.LASF49:
	.string	"inet_cksum_pseudo_partial_base"
.LASF4:
	.string	"short int"
.LASF47:
	.string	"ip_chksum_pseudo"
.LASF37:
	.string	"swapped"
.LASF41:
	.string	"proto"
.LASF16:
	.string	"uint32_t"
.LASF12:
	.string	"char"
.LASF39:
	.string	"dataptr"
.LASF50:
	.string	"inet_cksum_pseudo_base"
.LASF33:
	.string	"memcpy"
.LASF52:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF31:
	.string	"ip4_addr_t"
.LASF19:
	.string	"u16_t"
.LASF21:
	.string	"mem_ptr_t"
.LASF14:
	.string	"uint8_t"
.LASF26:
	.string	"flags"
.LASF42:
	.string	"proto_len"
.LASF27:
	.string	"if_idx"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/inet_chksum.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
