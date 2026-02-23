	.file	"acd.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/ipv4/acd.c"
	.section	.text.acd_add,"ax",@progbits
	.align	1
	.globl	acd_add
	.type	acd_add, @function
acd_add:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/ipv4/acd.c"
	.loc 1 120 1
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
	.loc 1 126 30
	lw	a5,-40(s0)
	lw	a4,-44(s0)
	sw	a4,16(a5)
	.loc 1 129 13
	lw	a5,-36(s0)
	lw	a5,80(a5)
	sw	a5,-20(s0)
	.loc 1 129 3
	j	.L2
.L5:
	.loc 1 130 8
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bne	a4,a5,.L3
	.loc 1 133 14
	li	a5,0
	j	.L4
.L3:
	.loc 1 129 50 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L2:
	.loc 1 129 37 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L5
	.loc 1 138 20
	lw	a5,-36(s0)
	lw	a4,80(a5)
	.loc 1 138 13
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 139 19
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,80(a5)
	.loc 1 141 10
	li	a5,0
.L4:
	.loc 1 142 1
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
	.size	acd_add, .-acd_add
	.section	.text.acd_remove,"ax",@progbits
	.align	1
	.globl	acd_remove
	.type	acd_remove, @function
acd_remove:
.LFB6:
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
	sw	a1,-40(s0)
	.loc 1 154 22
	sw	zero,-24(s0)
	.loc 1 158 13
	lw	a5,-36(s0)
	lw	a5,80(a5)
	sw	a5,-20(s0)
	.loc 1 158 3
	j	.L7
.L12:
	.loc 1 159 8
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bne	a4,a5,.L8
	.loc 1 160 10
	lw	a5,-24(s0)
	beq	a5,zero,.L9
	.loc 1 161 25
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 1 161 20
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 1 165 7
	j	.L6
.L9:
	.loc 1 163 30
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 1 163 25
	lw	a5,-36(s0)
	sw	a4,80(a5)
	.loc 1 165 7
	j	.L6
.L8:
	.loc 1 167 10
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 1 158 50 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L7:
	.loc 1 158 37 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L12
.L6:
	.loc 1 170 1
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
	.size	acd_remove, .-acd_remove
	.section	.text.acd_start,"ax",@progbits
	.align	1
	.globl	acd_start
	.type	acd_start, @function
acd_start:
.LFB7:
	.loc 1 183 1
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
	.loc 1 184 9
	sb	zero,-17(s0)
	.loc 1 193 17
	lw	a5,-40(s0)
	sb	zero,9(a5)
	.loc 1 194 21
	lw	a5,-40(s0)
	sb	zero,12(a5)
	.loc 1 195 33
	lw	a4,-44(s0)
	.loc 1 195 23
	lw	a5,-40(s0)
	sw	a4,4(a5)
	.loc 1 196 14
	lw	a5,-40(s0)
	li	a4,1
	sb	a4,8(a5)
	.loc 1 198 31
	call	bl_rand
	mv	a5,a0
	.loc 1 198 24 discriminator 1
	mv	a3,a5
	.loc 1 198 42 discriminator 1
	li	a5,-858992640
	addi	a5,a5,-819
	mulhu	a5,a3,a5
	srli	a4,a5,3
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	sub	a4,a3,a5
	.loc 1 198 14 discriminator 1
	slli	a4,a4,16
	srli	a4,a4,16
	.loc 1 198 12 discriminator 1
	lw	a5,-40(s0)
	sh	a4,10(a5)
	.loc 1 200 10
	lb	a5,-17(s0)
	.loc 1 201 1
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
	.size	acd_start, .-acd_start
	.section	.text.acd_stop,"ax",@progbits
	.align	1
	.globl	acd_stop
	.type	acd_stop, @function
acd_stop:
.LFB8:
	.loc 1 211 1
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
	.loc 1 214 6
	lw	a5,-20(s0)
	beq	a5,zero,.L16
	.loc 1 215 16
	lw	a5,-20(s0)
	sb	zero,8(a5)
.L16:
	.loc 1 217 10
	li	a5,0
	.loc 1 218 1
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
	.size	acd_stop, .-acd_stop
	.section	.text.acd_network_changed_link_down,"ax",@progbits
	.align	1
	.globl	acd_network_changed_link_down
	.type	acd_network_changed_link_down, @function
acd_network_changed_link_down:
.LFB9:
	.loc 1 228 1
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
	.loc 1 231 14
	lw	a5,-36(s0)
	lw	a5,80(a5)
	sw	a5,-20(s0)
	.loc 1 231 3
	j	.L19
.L20:
	.loc 1 232 5
	lw	a0,-20(s0)
	call	acd_stop
	.loc 1 231 10 discriminator 3
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L19:
	.loc 1 231 39 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L20
	.loc 1 234 1
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
.LFE9:
	.size	acd_network_changed_link_down, .-acd_network_changed_link_down
	.section	.text.acd_tmr,"ax",@progbits
	.align	1
	.globl	acd_tmr
	.type	acd_tmr, @function
acd_tmr:
.LFB10:
	.loc 1 241 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 245 16
	lui	a5,%hi(netif_list)
	lw	a5,%lo(netif_list)(a5)
	sw	a5,-20(s0)
	.loc 1 245 3
	j	.L22
.L38:
	.loc 1 246 16
	lw	a5,-20(s0)
	lw	a5,80(a5)
	sw	a5,-24(s0)
	.loc 1 246 5
	j	.L23
.L37:
	.loc 1 247 14
	lw	a5,-24(s0)
	lbu	a5,12(a5)
	.loc 1 247 10
	beq	a5,zero,.L24
	.loc 1 248 12
	lw	a5,-24(s0)
	lbu	a5,12(a5)
	.loc 1 248 26
	addi	a5,a5,-1
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,12(a5)
.L24:
	.loc 1 255 14
	lw	a5,-24(s0)
	lhu	a5,10(a5)
	.loc 1 255 10
	beq	a5,zero,.L25
	.loc 1 256 12
	lw	a5,-24(s0)
	lhu	a5,10(a5)
	.loc 1 256 17
	addi	a5,a5,-1
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-24(s0)
	sh	a4,10(a5)
.L25:
	.loc 1 259 18
	lw	a5,-24(s0)
	lbu	a5,8(a5)
	.loc 1 259 7
	li	a4,7
	beq	a5,a4,.L26
	li	a4,7
	bgt	a5,a4,.L40
	li	a4,2
	bgt	a5,a4,.L28
	bgt	a5,zero,.L29
	.loc 1 332 11
	j	.L40
.L28:
	addi	a4,a5,-3
	.loc 1 259 7
	li	a5,1
	bgtu	a4,a5,.L40
	j	.L39
.L29:
	.loc 1 262 18
	lw	a5,-24(s0)
	lhu	a5,10(a5)
	.loc 1 262 14
	bne	a5,zero,.L41
	.loc 1 263 24
	lw	a5,-24(s0)
	li	a4,2
	sb	a4,8(a5)
	.loc 1 264 37
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 264 13
	mv	a1,a5
	lw	a0,-20(s0)
	call	etharp_acd_probe
	.loc 1 267 16
	lw	a5,-24(s0)
	lbu	a5,9(a5)
	.loc 1 267 26
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,9(a5)
	.loc 1 268 20
	lw	a5,-24(s0)
	lbu	a4,9(a5)
	.loc 1 268 16
	li	a5,2
	bleu	a4,a5,.L32
	.loc 1 270 26
	lw	a5,-24(s0)
	li	a4,3
	sb	a4,8(a5)
	.loc 1 272 29
	lw	a5,-24(s0)
	sb	zero,9(a5)
	.loc 1 275 24
	lw	a5,-24(s0)
	li	a4,20
	sh	a4,10(a5)
	.loc 1 281 11
	j	.L41
.L32:
	.loc 1 278 44
	call	bl_rand
	mv	a5,a0
	.loc 1 278 37 discriminator 1
	mv	a3,a5
	.loc 1 278 55 discriminator 1
	li	a5,-858992640
	addi	a5,a5,-819
	mulhu	a5,a3,a5
	srli	a4,a5,3
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	sub	a4,a3,a5
	.loc 1 278 26 discriminator 1
	slli	a5,a4,16
	srli	a5,a5,16
	addi	a5,a5,10
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 278 24 discriminator 1
	lw	a5,-24(s0)
	sh	a4,10(a5)
	.loc 1 281 11
	j	.L41
.L39:
	.loc 1 285 18
	lw	a5,-24(s0)
	lhu	a5,10(a5)
	.loc 1 285 14
	bne	a5,zero,.L42
	.loc 1 286 20
	lw	a5,-24(s0)
	lbu	a5,9(a5)
	.loc 1 286 16
	bne	a5,zero,.L35
	.loc 1 287 26
	lw	a5,-24(s0)
	li	a4,4
	sb	a4,8(a5)
	.loc 1 290 34
	lw	a5,-24(s0)
	sb	zero,13(a5)
.L35:
	.loc 1 298 40
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 298 13
	mv	a1,a5
	lw	a0,-20(s0)
	call	etharp_acd_announce
	.loc 1 301 22
	lw	a5,-24(s0)
	li	a4,20
	sh	a4,10(a5)
	.loc 1 302 16
	lw	a5,-24(s0)
	lbu	a5,9(a5)
	.loc 1 302 26
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,9(a5)
	.loc 1 304 20
	lw	a5,-24(s0)
	lbu	a4,9(a5)
	.loc 1 304 16
	li	a5,1
	bleu	a4,a5,.L42
	.loc 1 305 26
	lw	a5,-24(s0)
	li	a4,5
	sb	a4,8(a5)
	.loc 1 306 29
	lw	a5,-24(s0)
	sb	zero,9(a5)
	.loc 1 307 24
	lw	a5,-24(s0)
	sh	zero,10(a5)
	.loc 1 314 18
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 314 15
	li	a1,0
	lw	a0,-20(s0)
	jalr	a5
.LVL0:
	.loc 1 317 11
	j	.L42
.L26:
	.loc 1 320 18
	lw	a5,-24(s0)
	lhu	a5,10(a5)
	.loc 1 320 14
	bne	a5,zero,.L43
	.loc 1 322 13
	lw	a0,-24(s0)
	call	acd_stop
	.loc 1 326 16
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 326 13
	li	a1,1
	lw	a0,-20(s0)
	jalr	a5
.LVL1:
	.loc 1 328 11
	j	.L43
.L40:
	.loc 1 332 11
	nop
	j	.L33
.L41:
	.loc 1 281 11
	nop
	j	.L33
.L42:
	.loc 1 317 11
	nop
	j	.L33
.L43:
	.loc 1 328 11
	nop
.L33:
	.loc 1 246 12 discriminator 2
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
.L23:
	.loc 1 246 41 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L37
	.loc 1 245 12 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L22:
	.loc 1 245 38 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L38
	.loc 1 336 1
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
.LFE10:
	.size	acd_tmr, .-acd_tmr
	.section	.text.acd_restart,"ax",@progbits
	.align	1
	.type	acd_restart, @function
acd_restart:
.LFB11:
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
	.loc 1 347 6
	lw	a5,-24(s0)
	lbu	a5,13(a5)
	.loc 1 347 21
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,13(a5)
	.loc 1 350 6
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 350 3
	li	a1,2
	lw	a0,-20(s0)
	jalr	a5
.LVL2:
	.loc 1 354 10
	lw	a5,-24(s0)
	lbu	a4,13(a5)
	.loc 1 354 6
	li	a5,9
	bleu	a4,a5,.L45
	.loc 1 355 16
	lw	a5,-24(s0)
	li	a4,7
	sb	a4,8(a5)
	.loc 1 356 14
	lw	a5,-24(s0)
	li	a4,600
	sh	a4,10(a5)
	.loc 1 367 1
	j	.L47
.L45:
	.loc 1 362 5
	lw	a0,-24(s0)
	call	acd_stop
	.loc 1 365 8
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 365 5
	li	a1,1
	lw	a0,-20(s0)
	jalr	a5
.LVL3:
.L47:
	.loc 1 367 1
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
.LFE11:
	.size	acd_restart, .-acd_restart
	.section	.text.acd_arp_reply,"ax",@progbits
	.align	1
	.globl	acd_arp_reply
	.type	acd_arp_reply, @function
acd_arp_reply:
.LFB12:
	.loc 1 377 1
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
	.loc 1 381 30
	lw	a5,-52(s0)
	addi	a4,a5,62
	.loc 1 381 3
	addi	a5,s0,-36
	li	a2,6
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 1 387 19
	lw	a5,-56(s0)
	addi	a4,a5,14
	.loc 1 387 3
	addi	a5,s0,-24
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 1 388 19
	lw	a5,-56(s0)
	addi	a4,a5,24
	.loc 1 388 3
	addi	a5,s0,-28
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 1 393 14
	lw	a5,-52(s0)
	lw	a5,80(a5)
	sw	a5,-20(s0)
	.loc 1 393 3
	j	.L49
.L58:
	.loc 1 394 15
	lw	a5,-20(s0)
	lbu	a5,8(a5)
	.loc 1 394 5
	li	a4,3
	bgt	a5,a4,.L50
	bgt	a5,zero,.L51
	.loc 1 399 9
	j	.L54
.L50:
	addi	a4,a5,-4
	.loc 1 394 5
	li	a5,2
	bleu	a4,a5,.L53
	.loc 1 399 9
	j	.L54
.L51:
	.loc 1 410 25
	lw	a4,-24(s0)
	.loc 1 410 49
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 410 12
	beq	a4,a5,.L55
	.loc 1 411 24
	lw	a5,-24(s0)
	.loc 1 410 58 discriminator 1
	bne	a5,zero,.L59
	.loc 1 412 25
	lw	a4,-28(s0)
	.loc 1 412 49
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 411 56
	bne	a4,a5,.L59
	.loc 1 413 58
	lw	a5,-56(s0)
	addi	a4,a5,8
	.loc 1 413 16
	addi	a5,s0,-36
	li	a2,6
	mv	a1,a4
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 1 412 57
	beq	a5,zero,.L59
.L55:
	.loc 1 416 11
	lw	a1,-20(s0)
	lw	a0,-52(s0)
	call	acd_restart
	.loc 1 418 9
	j	.L59
.L53:
	.loc 1 427 24
	lw	a4,-24(s0)
	.loc 1 427 48
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 427 12
	bne	a4,a5,.L60
	.loc 1 428 57
	lw	a5,-56(s0)
	addi	a4,a5,8
	.loc 1 428 15
	addi	a5,s0,-36
	li	a2,6
	mv	a1,a4
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 1 427 56 discriminator 1
	beq	a5,zero,.L60
	.loc 1 431 11
	lw	a1,-20(s0)
	lw	a0,-52(s0)
	call	acd_handle_arp_conflict
	.loc 1 433 9
	j	.L60
.L59:
	.loc 1 418 9
	nop
	j	.L54
.L60:
	.loc 1 433 9
	nop
.L54:
	.loc 1 393 10 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L49:
	.loc 1 393 39 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L58
	.loc 1 436 1
	nop
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
.LFE12:
	.size	acd_arp_reply, .-acd_arp_reply
	.section	.text.acd_handle_arp_conflict,"ax",@progbits
	.align	1
	.type	acd_handle_arp_conflict, @function
acd_handle_arp_conflict:
.LFB13:
	.loc 1 443 1
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
	.loc 1 461 10
	lw	a5,-24(s0)
	lbu	a4,8(a5)
	.loc 1 461 6
	li	a5,6
	bne	a4,a5,.L62
	.loc 1 465 5
	lw	a0,-24(s0)
	call	acd_stop
	.loc 1 466 8
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 466 5
	li	a1,2
	lw	a0,-20(s0)
	jalr	a5
.LVL4:
	.loc 1 484 1
	j	.L65
.L62:
	.loc 1 469 12
	lw	a5,-24(s0)
	lbu	a5,12(a5)
	.loc 1 469 8
	beq	a5,zero,.L64
	.loc 1 476 8
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	acd_restart
	.loc 1 484 1
	j	.L65
.L64:
	.loc 1 480 34
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 480 7
	mv	a1,a5
	lw	a0,-20(s0)
	call	etharp_acd_announce
	.loc 1 481 25
	lw	a5,-24(s0)
	li	a4,100
	sb	a4,12(a5)
.L65:
	.loc 1 484 1
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
	.size	acd_handle_arp_conflict, .-acd_handle_arp_conflict
	.section	.text.acd_put_in_passive_mode,"ax",@progbits
	.align	1
	.type	acd_put_in_passive_mode, @function
acd_put_in_passive_mode:
.LFB14:
	.loc 1 491 1
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
	.loc 1 492 13
	lw	a5,-24(s0)
	lbu	a5,8(a5)
	.loc 1 492 3
	li	a4,7
	beq	a5,a4,.L67
	li	a4,7
	bgt	a5,a4,.L72
	li	a4,3
	bgt	a5,a4,.L69
	bgt	a5,zero,.L67
	.loc 1 497 7
	j	.L72
.L69:
	addi	a4,a5,-4
	.loc 1 492 3
	li	a5,1
	bleu	a4,a5,.L70
	.loc 1 497 7
	j	.L72
.L67:
	.loc 1 503 7
	lw	a0,-24(s0)
	call	acd_stop
	.loc 1 504 10
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 504 7
	li	a1,2
	lw	a0,-20(s0)
	jalr	a5
.LVL5:
	.loc 1 505 7
	j	.L71
.L70:
	.loc 1 509 18
	lw	a5,-24(s0)
	li	a4,6
	sb	a4,8(a5)
	.loc 1 512 7
	j	.L71
.L72:
	.loc 1 497 7
	nop
.L71:
	.loc 1 514 1
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
	.size	acd_put_in_passive_mode, .-acd_put_in_passive_mode
	.section	.text.acd_netif_ip_addr_changed,"ax",@progbits
	.align	1
	.globl	acd_netif_ip_addr_changed
	.type	acd_netif_ip_addr_changed, @function
acd_netif_ip_addr_changed:
.LFB15:
	.loc 1 527 1
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
	.loc 1 539 6
	lw	a5,-40(s0)
	beq	a5,zero,.L80
	.loc 1 539 23 discriminator 1
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 539 6 discriminator 1
	beq	a5,zero,.L80
	.loc 1 539 56 discriminator 2
	lw	a5,-44(s0)
	beq	a5,zero,.L80
	.loc 1 539 50 discriminator 3
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 1 539 33 discriminator 3
	beq	a5,zero,.L80
	.loc 1 543 14
	lw	a5,-36(s0)
	lw	a5,80(a5)
	sw	a5,-20(s0)
	.loc 1 543 3
	j	.L77
.L79:
	.loc 1 545 23
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 545 45
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 545 7
	bne	a4,a5,.L78
	.loc 1 547 23
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 547 30
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 547 10
	li	a5,65536
	addi	a5,a5,-343
	bne	a4,a5,.L78
	.loc 1 547 441 discriminator 1
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 1 547 448 discriminator 1
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 547 425 discriminator 1
	li	a5,65536
	addi	a5,a5,-343
	beq	a4,a5,.L78
	.loc 1 551 9
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	acd_put_in_passive_mode
.L78:
	.loc 1 543 10 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L77:
	.loc 1 543 39 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L79
	j	.L73
.L80:
	.loc 1 540 5
	nop
.L73:
	.loc 1 555 1
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
	.size	acd_netif_ip_addr_changed, .-acd_netif_ip_addr_changed
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/acd.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/ethernet.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/etharp.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/acd.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/etharp.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/config/lwipopts.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9a5
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x20
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x21
	.byte	0x4
	.uleb128 0x19
	.4byte	0x84
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x13
	.4byte	0x8b
	.uleb128 0x6
	.4byte	0x92
	.uleb128 0x6
	.4byte	0xa6
	.uleb128 0x19
	.4byte	0x9c
	.uleb128 0x22
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x22
	.byte	0x15
	.4byte	0x32
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x39
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x55
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0xb3
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0xa7
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0xbf
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xcb
	.uleb128 0x14
	.byte	0x5
	.4byte	0x32
	.byte	0x5
	.byte	0x35
	.4byte	0x17a
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0
	.uleb128 0x5
	.4byte	.LASF23
	.sleb128 -1
	.uleb128 0x5
	.4byte	.LASF24
	.sleb128 -2
	.uleb128 0x5
	.4byte	.LASF25
	.sleb128 -3
	.uleb128 0x5
	.4byte	.LASF26
	.sleb128 -4
	.uleb128 0x5
	.4byte	.LASF27
	.sleb128 -5
	.uleb128 0x5
	.4byte	.LASF28
	.sleb128 -6
	.uleb128 0x5
	.4byte	.LASF29
	.sleb128 -7
	.uleb128 0x5
	.4byte	.LASF30
	.sleb128 -8
	.uleb128 0x5
	.4byte	.LASF31
	.sleb128 -9
	.uleb128 0x5
	.4byte	.LASF32
	.sleb128 -10
	.uleb128 0x5
	.4byte	.LASF33
	.sleb128 -11
	.uleb128 0x5
	.4byte	.LASF34
	.sleb128 -12
	.uleb128 0x5
	.4byte	.LASF35
	.sleb128 -13
	.uleb128 0x5
	.4byte	.LASF36
	.sleb128 -14
	.uleb128 0x5
	.4byte	.LASF37
	.sleb128 -15
	.uleb128 0x5
	.4byte	.LASF38
	.sleb128 -16
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x5
	.byte	0x60
	.byte	0xe
	.4byte	0xe3
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x4
	.byte	0x6
	.byte	0x33
	.4byte	0x1a0
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x6
	.byte	0x34
	.byte	0x9
	.4byte	0xfb
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x6
	.byte	0x39
	.byte	0x19
	.4byte	0x186
	.uleb128 0x13
	.4byte	0x1a0
	.uleb128 0x23
	.4byte	.LASF41
	.byte	0x7
	.2byte	0x126
	.byte	0x14
	.4byte	0x1a0
	.uleb128 0x13
	.4byte	0x1b1
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x10
	.byte	0x8
	.byte	0xba
	.4byte	0x238
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x8
	.byte	0xbc
	.byte	0x10
	.4byte	0x238
	.byte	0
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x8
	.byte	0xbf
	.byte	0x9
	.4byte	0x84
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x8
	.byte	0xc8
	.byte	0x9
	.4byte	0xef
	.byte	0x8
	.uleb128 0x15
	.string	"len"
	.byte	0x8
	.byte	0xcb
	.byte	0x9
	.4byte	0xef
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x8
	.byte	0xd0
	.byte	0x8
	.4byte	0xd7
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x8
	.byte	0xd3
	.byte	0x8
	.4byte	0xd7
	.byte	0xd
	.uleb128 0x15
	.string	"ref"
	.byte	0x8
	.byte	0xda
	.byte	0x8
	.4byte	0xd7
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x8
	.byte	0xdd
	.byte	0x8
	.4byte	0xd7
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0x1c3
	.uleb128 0x24
	.4byte	.LASF128
	.byte	0x7
	.byte	0x1
	.4byte	0x39
	.byte	0x9
	.byte	0x9f
	.byte	0x6
	.4byte	0x25c
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0x261
	.uleb128 0x25
	.4byte	.LASF53
	.byte	0x54
	.byte	0x9
	.2byte	0x10d
	.byte	0x8
	.4byte	0x373
	.uleb128 0x4
	.4byte	.LASF45
	.2byte	0x110
	.byte	0x11
	.4byte	0x25c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF54
	.2byte	0x115
	.byte	0xd
	.4byte	0x1b1
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF55
	.2byte	0x116
	.byte	0xd
	.4byte	0x1b1
	.byte	0x8
	.uleb128 0x16
	.string	"gw"
	.2byte	0x117
	.byte	0xd
	.4byte	0x1b1
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF56
	.2byte	0x129
	.byte	0x12
	.4byte	0x373
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF57
	.2byte	0x12f
	.byte	0x13
	.4byte	0x398
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF58
	.2byte	0x134
	.byte	0x17
	.4byte	0x3c7
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF59
	.2byte	0x13f
	.byte	0x1c
	.4byte	0x3ec
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF60
	.2byte	0x144
	.byte	0x1c
	.4byte	0x3ec
	.byte	0x20
	.uleb128 0x4
	.4byte	.LASF61
	.2byte	0x14c
	.byte	0x9
	.4byte	0x84
	.byte	0x24
	.uleb128 0x4
	.4byte	.LASF62
	.2byte	0x14e
	.byte	0x9
	.4byte	0x432
	.byte	0x28
	.uleb128 0x4
	.4byte	.LASF63
	.2byte	0x152
	.byte	0xf
	.4byte	0x97
	.byte	0x38
	.uleb128 0x16
	.string	"mtu"
	.2byte	0x158
	.byte	0x9
	.4byte	0xef
	.byte	0x3c
	.uleb128 0x4
	.4byte	.LASF64
	.2byte	0x15e
	.byte	0x8
	.4byte	0x442
	.byte	0x3e
	.uleb128 0x4
	.4byte	.LASF65
	.2byte	0x160
	.byte	0x8
	.4byte	0xd7
	.byte	0x44
	.uleb128 0x4
	.4byte	.LASF49
	.2byte	0x162
	.byte	0x8
	.4byte	0xd7
	.byte	0x45
	.uleb128 0x4
	.4byte	.LASF66
	.2byte	0x164
	.byte	0x8
	.4byte	0x452
	.byte	0x46
	.uleb128 0x16
	.string	"num"
	.2byte	0x167
	.byte	0x8
	.4byte	0xd7
	.byte	0x48
	.uleb128 0x4
	.4byte	.LASF67
	.2byte	0x17d
	.byte	0x1c
	.4byte	0x408
	.byte	0x4c
	.uleb128 0x4
	.4byte	.LASF68
	.2byte	0x185
	.byte	0xf
	.4byte	0x4d8
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x9
	.byte	0xb5
	.byte	0x11
	.4byte	0x37f
	.uleb128 0x6
	.4byte	0x384
	.uleb128 0xd
	.4byte	0x17a
	.4byte	0x398
	.uleb128 0x2
	.4byte	0x238
	.uleb128 0x2
	.4byte	0x25c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x9
	.byte	0xc0
	.byte	0x11
	.4byte	0x3a4
	.uleb128 0x6
	.4byte	0x3a9
	.uleb128 0xd
	.4byte	0x17a
	.4byte	0x3c2
	.uleb128 0x2
	.4byte	0x25c
	.uleb128 0x2
	.4byte	0x238
	.uleb128 0x2
	.4byte	0x3c2
	.byte	0
	.uleb128 0x6
	.4byte	0x1ac
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x9
	.byte	0xd7
	.byte	0x11
	.4byte	0x3d3
	.uleb128 0x6
	.4byte	0x3d8
	.uleb128 0xd
	.4byte	0x17a
	.4byte	0x3ec
	.uleb128 0x2
	.4byte	0x25c
	.uleb128 0x2
	.4byte	0x238
	.byte	0
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x9
	.byte	0xd9
	.byte	0x10
	.4byte	0x3f8
	.uleb128 0x6
	.4byte	0x3fd
	.uleb128 0x1a
	.4byte	0x408
	.uleb128 0x2
	.4byte	0x25c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x9
	.byte	0xdc
	.byte	0x11
	.4byte	0x414
	.uleb128 0x6
	.4byte	0x419
	.uleb128 0xd
	.4byte	0x17a
	.4byte	0x432
	.uleb128 0x2
	.4byte	0x25c
	.uleb128 0x2
	.4byte	0x3c2
	.uleb128 0x2
	.4byte	0x23d
	.byte	0
	.uleb128 0xe
	.4byte	0x84
	.4byte	0x442
	.uleb128 0xf
	.4byte	0x6a
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	0xd7
	.4byte	0x452
	.uleb128 0xf
	.4byte	0x6a
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.4byte	0x8b
	.4byte	0x462
	.uleb128 0xf
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x26
	.string	"acd"
	.byte	0x14
	.byte	0xa
	.byte	0x47
	.byte	0x8
	.4byte	0x4d8
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xa
	.byte	0x4a
	.byte	0xf
	.4byte	0x4d8
	.byte	0
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0xa
	.byte	0x4c
	.byte	0xe
	.4byte	0x1a0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0xa
	.byte	0x4e
	.byte	0x14
	.4byte	0x5f2
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0xa
	.byte	0x50
	.byte	0x8
	.4byte	0xd7
	.byte	0x9
	.uleb128 0x15
	.string	"ttw"
	.byte	0xa
	.byte	0x52
	.byte	0x9
	.4byte	0xef
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0xa
	.byte	0x54
	.byte	0x8
	.4byte	0xd7
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0xa
	.byte	0x56
	.byte	0x8
	.4byte	0xd7
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xa
	.byte	0x59
	.byte	0x1b
	.4byte	0x629
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	0x462
	.uleb128 0x27
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x1a7
	.byte	0x16
	.4byte	0x25c
	.uleb128 0x6
	.4byte	0x1be
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x6
	.byte	0xb
	.byte	0x3c
	.4byte	0x509
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xb
	.byte	0x3d
	.byte	0x8
	.4byte	0x442
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x4
	.byte	0xc
	.byte	0x3b
	.4byte	0x523
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xc
	.byte	0x3c
	.byte	0x9
	.4byte	0x523
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xef
	.4byte	0x533
	.uleb128 0xf
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x1c
	.byte	0xc
	.byte	0x56
	.4byte	0x5b5
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0xc
	.byte	0x57
	.byte	0x9
	.4byte	0xef
	.byte	0
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0xc
	.byte	0x58
	.byte	0x9
	.4byte	0xef
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0xc
	.byte	0x59
	.byte	0x8
	.4byte	0xd7
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0xc
	.byte	0x5a
	.byte	0x8
	.4byte	0xd7
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0xc
	.byte	0x5b
	.byte	0x9
	.4byte	0xef
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0xc
	.byte	0x5c
	.byte	0x13
	.4byte	0x4ef
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xc
	.byte	0x5d
	.byte	0x1f
	.4byte	0x509
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0xc
	.byte	0x5e
	.byte	0x13
	.4byte	0x4ef
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0xc
	.byte	0x5f
	.byte	0x1f
	.4byte	0x509
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.4byte	0x39
	.byte	0xd
	.byte	0x3a
	.4byte	0x5f2
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0
	.uleb128 0x7
	.4byte	.LASF93
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF96
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF98
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF99
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0xd
	.byte	0x4f
	.byte	0x3
	.4byte	0x5b5
	.uleb128 0x14
	.byte	0x7
	.4byte	0x39
	.byte	0xd
	.byte	0x51
	.4byte	0x61d
	.uleb128 0x7
	.4byte	.LASF101
	.byte	0
	.uleb128 0x7
	.4byte	.LASF102
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF103
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0xd
	.byte	0x55
	.byte	0x3
	.4byte	0x5fe
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0xa
	.byte	0x44
	.byte	0x10
	.4byte	0x635
	.uleb128 0x6
	.4byte	0x63a
	.uleb128 0x1a
	.4byte	0x64a
	.uleb128 0x2
	.4byte	0x25c
	.uleb128 0x2
	.4byte	0x61d
	.byte	0
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0xe
	.byte	0x1e
	.byte	0x5
	.4byte	0x2b
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x9c
	.uleb128 0x2
	.4byte	0x9c
	.uleb128 0x2
	.4byte	0x71
	.byte	0
	.uleb128 0x10
	.4byte	.LASF107
	.byte	0xe
	.byte	0x1f
	.byte	0x8
	.4byte	0x84
	.4byte	0x68a
	.uleb128 0x2
	.4byte	0x86
	.uleb128 0x2
	.4byte	0xa1
	.uleb128 0x2
	.4byte	0x71
	.byte	0
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0xf
	.byte	0x5d
	.byte	0x7
	.4byte	0x17a
	.4byte	0x6a5
	.uleb128 0x2
	.4byte	0x25c
	.uleb128 0x2
	.4byte	0x3c2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF109
	.byte	0xf
	.byte	0x5c
	.byte	0x7
	.4byte	0x17a
	.4byte	0x6c0
	.uleb128 0x2
	.4byte	0x25c
	.uleb128 0x2
	.4byte	0x3c2
	.byte	0
	.uleb128 0x28
	.4byte	.LASF130
	.byte	0x10
	.2byte	0x127
	.byte	0xc
	.4byte	0x2b
	.uleb128 0x1b
	.4byte	.LASF114
	.2byte	0x20d
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x71e
	.uleb128 0x9
	.4byte	.LASF53
	.2byte	0x20d
	.byte	0x29
	.4byte	0x25c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF110
	.2byte	0x20d
	.byte	0x41
	.4byte	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.4byte	.LASF111
	.2byte	0x20e
	.byte	0x2c
	.4byte	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.string	"acd"
	.2byte	0x210
	.4byte	0x4d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF112
	.2byte	0x1ea
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x752
	.uleb128 0x9
	.4byte	.LASF53
	.2byte	0x1ea
	.byte	0x27
	.4byte	0x25c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.string	"acd"
	.2byte	0x1ea
	.byte	0x3a
	.4byte	0x4d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.4byte	.LASF113
	.2byte	0x1ba
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x786
	.uleb128 0x9
	.4byte	.LASF53
	.2byte	0x1ba
	.byte	0x27
	.4byte	0x25c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.string	"acd"
	.2byte	0x1ba
	.byte	0x3a
	.4byte	0x4d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF115
	.2byte	0x178
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7f5
	.uleb128 0x9
	.4byte	.LASF53
	.2byte	0x178
	.byte	0x1d
	.4byte	0x25c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x11
	.string	"hdr"
	.2byte	0x178
	.byte	0x37
	.4byte	0x7f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"acd"
	.2byte	0x17a
	.4byte	0x4d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF89
	.2byte	0x17b
	.byte	0xe
	.4byte	0x1a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.4byte	.LASF91
	.2byte	0x17b
	.byte	0x17
	.4byte	0x1a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.4byte	.LASF116
	.2byte	0x17c
	.byte	0x13
	.4byte	0x4ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.4byte	0x533
	.uleb128 0x17
	.4byte	.LASF117
	.2byte	0x158
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x82e
	.uleb128 0x9
	.4byte	.LASF53
	.2byte	0x158
	.byte	0x1b
	.4byte	0x25c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.string	"acd"
	.2byte	0x158
	.byte	0x2e
	.4byte	0x4d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF118
	.byte	0xf0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x85e
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0xf2
	.byte	0x11
	.4byte	0x25c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.string	"acd"
	.byte	0xf3
	.4byte	0x4d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF119
	.byte	0xe3
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x88e
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0xe3
	.byte	0x2d
	.4byte	0x25c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.string	"acd"
	.byte	0xe5
	.4byte	0x4d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.4byte	.LASF120
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.4byte	0x17a
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b7
	.uleb128 0x12
	.string	"acd"
	.byte	0xd2
	.byte	0x16
	.4byte	0x4d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF121
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.4byte	0x17a
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x90a
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0xb6
	.byte	0x19
	.4byte	0x25c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"acd"
	.byte	0xb6
	.byte	0x2c
	.4byte	0x4d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0xb6
	.byte	0x3c
	.4byte	0x1a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.4byte	.LASF122
	.byte	0xb8
	.byte	0x9
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF123
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x959
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x98
	.byte	0x1a
	.4byte	0x25c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"acd"
	.byte	0x98
	.byte	0x2d
	.4byte	0x4d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.4byte	.LASF124
	.byte	0x9a
	.byte	0xf
	.4byte	0x4d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF125
	.byte	0x9a
	.byte	0x16
	.4byte	0x4d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF126
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.4byte	0x17a
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x76
	.byte	0x17
	.4byte	0x25c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"acd"
	.byte	0x76
	.byte	0x2a
	.4byte	0x4d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x77
	.byte	0x22
	.4byte	0x629
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.4byte	.LASF124
	.byte	0x79
	.byte	0xf
	.4byte	0x4d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0x19
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1c
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
	.uleb128 0x21
	.sleb128 15
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
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x1e
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
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF79:
	.string	"eth_addr"
.LASF90:
	.string	"dhwaddr"
.LASF92:
	.string	"ACD_STATE_OFF"
.LASF82:
	.string	"etharp_hdr"
.LASF120:
	.string	"acd_stop"
.LASF112:
	.string	"acd_put_in_passive_mode"
.LASF56:
	.string	"input"
.LASF121:
	.string	"acd_start"
.LASF86:
	.string	"protolen"
.LASF113:
	.string	"acd_handle_arp_conflict"
.LASF49:
	.string	"flags"
.LASF37:
	.string	"ERR_CLSD"
.LASF30:
	.string	"ERR_USE"
.LASF38:
	.string	"ERR_ARG"
.LASF10:
	.string	"unsigned int"
.LASF45:
	.string	"next"
.LASF39:
	.string	"err_t"
.LASF91:
	.string	"dipaddr"
.LASF58:
	.string	"linkoutput"
.LASF125:
	.string	"prev"
.LASF81:
	.string	"addrw"
.LASF20:
	.string	"u16_t"
.LASF96:
	.string	"ACD_STATE_ANNOUNCING"
.LASF77:
	.string	"num_conflicts"
.LASF70:
	.string	"netif_output_fn"
.LASF36:
	.string	"ERR_RST"
.LASF101:
	.string	"ACD_IP_OK"
.LASF31:
	.string	"ERR_ALREADY"
.LASF69:
	.string	"netif_input_fn"
.LASF17:
	.string	"uint32_t"
.LASF14:
	.string	"int8_t"
.LASF122:
	.string	"result"
.LASF104:
	.string	"acd_callback_enum_t"
.LASF80:
	.string	"ip4_addr_wordaligned"
.LASF76:
	.string	"lastconflict"
.LASF129:
	.string	"netif_list"
.LASF64:
	.string	"hwaddr"
.LASF116:
	.string	"netifaddr"
.LASF9:
	.string	"long long unsigned int"
.LASF105:
	.string	"acd_conflict_callback_t"
.LASF40:
	.string	"ip4_addr_t"
.LASF65:
	.string	"hwaddr_len"
.LASF28:
	.string	"ERR_VAL"
.LASF83:
	.string	"hwtype"
.LASF117:
	.string	"acd_restart"
.LASF48:
	.string	"type_internal"
.LASF47:
	.string	"tot_len"
.LASF74:
	.string	"ipaddr"
.LASF13:
	.string	"size_t"
.LASF46:
	.string	"payload"
.LASF57:
	.string	"output"
.LASF43:
	.string	"pbuf"
.LASF103:
	.string	"ACD_DECLINE"
.LASF93:
	.string	"ACD_STATE_PROBE_WAIT"
.LASF108:
	.string	"etharp_acd_announce"
.LASF19:
	.string	"s8_t"
.LASF88:
	.string	"shwaddr"
.LASF29:
	.string	"ERR_WOULDBLOCK"
.LASF25:
	.string	"ERR_TIMEOUT"
.LASF119:
	.string	"acd_network_changed_link_down"
.LASF62:
	.string	"client_data"
.LASF124:
	.string	"acd2"
.LASF12:
	.string	"char"
.LASF67:
	.string	"igmp_mac_filter"
.LASF84:
	.string	"proto"
.LASF94:
	.string	"ACD_STATE_PROBING"
.LASF95:
	.string	"ACD_STATE_ANNOUNCE_WAIT"
.LASF87:
	.string	"opcode"
.LASF89:
	.string	"sipaddr"
.LASF52:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF15:
	.string	"uint8_t"
.LASF99:
	.string	"ACD_STATE_RATE_LIMIT"
.LASF114:
	.string	"acd_netif_ip_addr_changed"
.LASF63:
	.string	"hostname"
.LASF60:
	.string	"link_callback"
.LASF55:
	.string	"netmask"
.LASF8:
	.string	"long long int"
.LASF34:
	.string	"ERR_IF"
.LASF59:
	.string	"status_callback"
.LASF18:
	.string	"u8_t"
.LASF100:
	.string	"acd_state_enum_t"
.LASF115:
	.string	"acd_arp_reply"
.LASF123:
	.string	"acd_remove"
.LASF126:
	.string	"acd_add"
.LASF51:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF11:
	.string	"long double"
.LASF16:
	.string	"uint16_t"
.LASF50:
	.string	"if_idx"
.LASF98:
	.string	"ACD_STATE_PASSIVE_ONGOING"
.LASF24:
	.string	"ERR_BUF"
.LASF21:
	.string	"u32_t"
.LASF4:
	.string	"short int"
.LASF6:
	.string	"long int"
.LASF110:
	.string	"old_addr"
.LASF106:
	.string	"memcmp"
.LASF27:
	.string	"ERR_INPROGRESS"
.LASF42:
	.string	"ip4_addr"
.LASF118:
	.string	"acd_tmr"
.LASF32:
	.string	"ERR_ISCONN"
.LASF66:
	.string	"name"
.LASF71:
	.string	"netif_linkoutput_fn"
.LASF102:
	.string	"ACD_RESTART_CLIENT"
.LASF7:
	.string	"long unsigned int"
.LASF128:
	.string	"netif_mac_filter_action"
.LASF97:
	.string	"ACD_STATE_ONGOING"
.LASF3:
	.string	"unsigned char"
.LASF72:
	.string	"netif_status_callback_fn"
.LASF109:
	.string	"etharp_acd_probe"
.LASF44:
	.string	"addr"
.LASF61:
	.string	"state"
.LASF53:
	.string	"netif"
.LASF35:
	.string	"ERR_ABRT"
.LASF68:
	.string	"acd_list"
.LASF73:
	.string	"netif_igmp_mac_filter_fn"
.LASF22:
	.string	"ERR_OK"
.LASF2:
	.string	"signed char"
.LASF75:
	.string	"sent_num"
.LASF5:
	.string	"short unsigned int"
.LASF107:
	.string	"memcpy"
.LASF33:
	.string	"ERR_CONN"
.LASF85:
	.string	"hwlen"
.LASF26:
	.string	"ERR_RTE"
.LASF41:
	.string	"ip_addr_t"
.LASF130:
	.string	"bl_rand"
.LASF127:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF111:
	.string	"new_addr"
.LASF23:
	.string	"ERR_MEM"
.LASF78:
	.string	"acd_conflict_callback"
.LASF54:
	.string	"ip_addr"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/ipv4/acd.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
