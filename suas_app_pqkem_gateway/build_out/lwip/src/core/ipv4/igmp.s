	.file	"igmp.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/ipv4/igmp.c"
	.section	.sbss.allsystems,"aw",@nobits
	.align	2
	.type	allsystems, @object
	.size	allsystems, 4
allsystems:
	.zero	4
	.section	.sbss.allrouters,"aw",@nobits
	.align	2
	.type	allrouters, @object
	.size	allrouters, 4
allrouters:
	.zero	4
	.section	.text.igmp_init,"ax",@progbits
	.align	1
	.globl	igmp_init
	.type	igmp_init, @function
igmp_init:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/ipv4/igmp.c"
	.loc 1 115 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 118 23
	lui	a5,%hi(allsystems)
	li	a4,16777216
	addi	a4,a4,224
	sw	a4,%lo(allsystems)(a5)
	.loc 1 119 23
	lui	a5,%hi(allrouters)
	li	a4,33554432
	addi	a4,a4,224
	sw	a4,%lo(allrouters)(a5)
	.loc 1 120 1
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
	.size	igmp_init, .-igmp_init
	.section	.text.igmp_start,"ax",@progbits
	.align	1
	.globl	igmp_start
	.type	igmp_start, @function
igmp_start:
.LFB6:
	.loc 1 129 1
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
	.loc 1 134 11
	lui	a5,%hi(allsystems)
	addi	a1,a5,%lo(allsystems)
	lw	a0,-36(s0)
	call	igmp_lookup_group
	sw	a0,-20(s0)
	.loc 1 136 6
	lw	a5,-20(s0)
	beq	a5,zero,.L3
	.loc 1 137 24
	lw	a5,-20(s0)
	li	a4,2
	sb	a4,9(a5)
	.loc 1 138 10
	lw	a5,-20(s0)
	lbu	a5,12(a5)
	.loc 1 138 15
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,12(a5)
	.loc 1 141 14
	lw	a5,-36(s0)
	lw	a5,76(a5)
	.loc 1 141 8
	beq	a5,zero,.L4
	.loc 1 145 12
	lw	a5,-36(s0)
	lw	a5,76(a5)
	.loc 1 145 7
	li	a2,1
	lui	a4,%hi(allsystems)
	addi	a1,a4,%lo(allsystems)
	lw	a0,-36(s0)
	jalr	a5
.LVL0:
.L4:
	.loc 1 148 12
	li	a5,0
	j	.L5
.L3:
	.loc 1 151 10
	li	a5,-1
.L5:
	.loc 1 152 1
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
	.size	igmp_start, .-igmp_start
	.section	.text.igmp_stop,"ax",@progbits
	.align	1
	.globl	igmp_stop
	.type	igmp_stop, @function
igmp_stop:
.LFB7:
	.loc 1 161 1
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
	.loc 1 162 22
	lw	a5,-36(s0)
	lw	a5,48(a5)
	sw	a5,-20(s0)
	.loc 1 164 61
	lw	a5,-36(s0)
	sw	zero,48(a5)
	.loc 1 166 9
	j	.L7
.L9:
.LBB2:
	.loc 1 167 24
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 170 14
	lw	a5,-36(s0)
	lw	a5,76(a5)
	.loc 1 170 8
	beq	a5,zero,.L8
	.loc 1 174 12
	lw	a5,-36(s0)
	lw	a5,76(a5)
	.loc 1 174 37
	lw	a4,-20(s0)
	addi	a4,a4,4
	.loc 1 174 7
	li	a2,0
	mv	a1,a4
	lw	a0,-36(s0)
	jalr	a5
.LVL1:
.L8:
	.loc 1 178 5
	lw	a1,-20(s0)
	li	a0,10
	call	memp_free
	.loc 1 181 11
	lw	a5,-24(s0)
	sw	a5,-20(s0)
.L7:
.LBE2:
	.loc 1 166 16
	lw	a5,-20(s0)
	bne	a5,zero,.L9
	.loc 1 183 10
	li	a5,0
	.loc 1 184 1
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
	.size	igmp_stop, .-igmp_stop
	.section	.text.igmp_report_groups,"ax",@progbits
	.align	1
	.globl	igmp_report_groups
	.type	igmp_report_groups, @function
igmp_report_groups:
.LFB8:
	.loc 1 193 1
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
	.loc 1 194 22
	lw	a5,-36(s0)
	lw	a5,48(a5)
	sw	a5,-20(s0)
	.loc 1 199 6
	lw	a5,-20(s0)
	beq	a5,zero,.L13
	.loc 1 200 11
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 203 9
	j	.L13
.L14:
	.loc 1 204 5
	li	a1,5
	lw	a0,-20(s0)
	call	igmp_delaying_member
	.loc 1 205 11
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L13:
	.loc 1 203 16
	lw	a5,-20(s0)
	bne	a5,zero,.L14
	.loc 1 207 1
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
.LFE8:
	.size	igmp_report_groups, .-igmp_report_groups
	.section	.text.igmp_lookfor_group,"ax",@progbits
	.align	1
	.globl	igmp_lookfor_group
	.type	igmp_lookfor_group, @function
igmp_lookfor_group:
.LFB9:
	.loc 1 219 1
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
	.loc 1 220 22
	lw	a5,-36(s0)
	lw	a5,48(a5)
	sw	a5,-20(s0)
	.loc 1 222 9
	j	.L16
.L19:
	.loc 1 223 35
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 223 51
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 223 8
	bne	a4,a5,.L17
	.loc 1 224 14
	lw	a5,-20(s0)
	j	.L18
.L17:
	.loc 1 226 11
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L16:
	.loc 1 222 16
	lw	a5,-20(s0)
	bne	a5,zero,.L19
	.loc 1 232 9
	li	a5,0
.L18:
	.loc 1 233 1
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
	.size	igmp_lookfor_group, .-igmp_lookfor_group
	.section	.text.igmp_lookup_group,"ax",@progbits
	.align	1
	.type	igmp_lookup_group, @function
igmp_lookup_group:
.LFB10:
	.loc 1 245 1
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
	.loc 1 247 22
	lw	a5,-36(s0)
	lw	a5,48(a5)
	sw	a5,-20(s0)
	.loc 1 250 11
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	igmp_lookfor_group
	sw	a0,-24(s0)
	.loc 1 251 6
	lw	a5,-24(s0)
	beq	a5,zero,.L21
	.loc 1 253 12
	lw	a5,-24(s0)
	j	.L22
.L21:
	.loc 1 257 32
	li	a0,10
	call	memp_malloc
	sw	a0,-24(s0)
	.loc 1 258 6
	lw	a5,-24(s0)
	beq	a5,zero,.L23
	.loc 1 259 8
	lw	a5,-40(s0)
	beq	a5,zero,.L24
	.loc 1 259 8 is_stmt 0 discriminator 1
	lw	a5,-40(s0)
	lw	a5,0(a5)
	j	.L25
.L24:
	.loc 1 259 8 discriminator 2
	li	a5,0
.L25:
	.loc 1 259 38 is_stmt 1 discriminator 4
	lw	a4,-24(s0)
	sw	a5,4(a4)
	.loc 1 260 18
	lw	a5,-24(s0)
	sh	zero,10(a5)
	.loc 1 261 24
	lw	a5,-24(s0)
	sb	zero,9(a5)
	.loc 1 262 31
	lw	a5,-24(s0)
	sb	zero,8(a5)
	.loc 1 263 16
	lw	a5,-24(s0)
	sb	zero,12(a5)
	.loc 1 266 8
	lw	a5,-20(s0)
	bne	a5,zero,.L26
	.loc 1 270 19
	lw	a5,-24(s0)
	sw	zero,0(a5)
	.loc 1 271 63
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,48(a5)
	j	.L23
.L26:
	.loc 1 276 30
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 276 19
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 1 277 23
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
.L23:
	.loc 1 285 10
	lw	a5,-24(s0)
.L22:
	.loc 1 286 1
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
	.size	igmp_lookup_group, .-igmp_lookup_group
	.section	.text.igmp_remove_group,"ax",@progbits
	.align	1
	.type	igmp_remove_group, @function
igmp_remove_group:
.LFB11:
	.loc 1 296 1
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
	.loc 1 297 9
	sb	zero,-17(s0)
	.loc 1 301 18
	lw	a5,-36(s0)
	lw	a5,48(a5)
	sw	a5,-24(s0)
	.loc 1 301 3
	j	.L28
.L31:
	.loc 1 302 18
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 302 8
	lw	a4,-40(s0)
	bne	a4,a5,.L29
	.loc 1 303 30
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 1 303 23
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 1 304 7
	j	.L30
.L29:
	.loc 1 301 72 discriminator 2
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
.L28:
	.loc 1 301 112 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L31
.L30:
	.loc 1 308 6
	lw	a5,-24(s0)
	bne	a5,zero,.L32
	.loc 1 309 9
	li	a5,-16
	sb	a5,-17(s0)
.L32:
	.loc 1 312 10
	lb	a5,-17(s0)
	.loc 1 313 1
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
	.size	igmp_remove_group, .-igmp_remove_group
	.section	.text.igmp_input,"ax",@progbits
	.align	1
	.globl	igmp_input
	.type	igmp_input, @function
igmp_input:
.LFB12:
	.loc 1 324 1
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
	.loc 1 329 20
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,98(a5)
	.loc 1 329 3
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,98(a5)
	.loc 1 332 8
	lw	a5,-36(s0)
	lhu	a4,10(a5)
	.loc 1 332 6
	li	a5,7
	bgtu	a4,a5,.L35
	.loc 1 333 5
	lw	a0,-36(s0)
	call	pbuf_free
	.loc 1 334 22
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,104(a5)
	.loc 1 334 5
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,104(a5)
	.loc 1 336 5
	j	.L34
.L35:
	.loc 1 346 8
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	.loc 1 347 7
	lw	a5,-36(s0)
	lhu	a5,10(a5)
	mv	a1,a5
	lw	a0,-28(s0)
	call	inet_chksum
	mv	a5,a0
	.loc 1 347 6 discriminator 1
	beq	a5,zero,.L37
	.loc 1 348 5
	lw	a0,-36(s0)
	call	pbuf_free
	.loc 1 349 22
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,102(a5)
	.loc 1 349 5
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,102(a5)
	.loc 1 351 5
	j	.L34
.L37:
	.loc 1 355 11
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	igmp_lookfor_group
	sw	a0,-20(s0)
	.loc 1 358 6
	lw	a5,-20(s0)
	bne	a5,zero,.L38
	.loc 1 359 5
	lw	a0,-36(s0)
	call	pbuf_free
	.loc 1 360 22
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,100(a5)
	.loc 1 360 5
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,100(a5)
	.loc 1 362 5
	j	.L34
.L38:
	.loc 1 366 15
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	.loc 1 366 3
	li	a4,17
	beq	a5,a4,.L39
	li	a4,22
	beq	a5,a4,.L40
	j	.L56
.L39:
	.loc 1 369 19
	lw	a5,-44(s0)
	lw	a4,0(a5)
	.loc 1 369 42
	lui	a5,%hi(allsystems)
	lw	a5,%lo(allsystems)(a5)
	.loc 1 369 10
	bne	a4,a5,.L42
	.loc 1 369 56 discriminator 1
	lw	a5,-28(s0)
	addi	a5,a5,4
	.loc 1 369 51 discriminator 1
	beq	a5,zero,.L43
	.loc 1 369 80 discriminator 2
	lw	a5,-28(s0)
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
	.loc 1 369 46 discriminator 2
	bne	a5,zero,.L42
.L43:
	.loc 1 373 17
	lw	a5,-28(s0)
	lbu	a5,1(a5)
	.loc 1 373 12
	bne	a5,zero,.L44
	.loc 1 374 28
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,110(a5)
	.loc 1 374 11
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,110(a5)
	.loc 1 376 30
	lw	a5,-28(s0)
	li	a4,10
	sb	a4,1(a5)
	j	.L45
.L44:
	.loc 1 378 28
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,114(a5)
	.loc 1 378 11
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,114(a5)
.L45:
	.loc 1 381 18
	lw	a5,-40(s0)
	lw	a5,48(a5)
	sw	a5,-24(s0)
	.loc 1 385 12
	lw	a5,-24(s0)
	beq	a5,zero,.L47
	.loc 1 386 20
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 389 15
	j	.L47
.L48:
	.loc 1 390 11
	lw	a5,-28(s0)
	lbu	a5,1(a5)
	mv	a1,a5
	lw	a0,-24(s0)
	call	igmp_delaying_member
	.loc 1 391 20
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
.L47:
	.loc 1 389 16
	lw	a5,-24(s0)
	bne	a5,zero,.L48
	.loc 1 369 10
	j	.L49
.L42:
	.loc 1 395 16
	lw	a5,-28(s0)
	addi	a5,a5,4
	.loc 1 395 12
	beq	a5,zero,.L50
	.loc 1 395 47 discriminator 1
	lw	a5,-28(s0)
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
	.loc 1 395 13 discriminator 1
	beq	a5,zero,.L50
	.loc 1 398 22
	lw	a5,-44(s0)
	lw	a4,0(a5)
	.loc 1 398 45
	lui	a5,%hi(allsystems)
	lw	a5,%lo(allsystems)(a5)
	.loc 1 398 14
	bne	a4,a5,.L51
.LBB3:
	.loc 1 402 59
	lw	a5,-28(s0)
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
	.loc 1 402 31
	sw	a5,-32(s0)
	.loc 1 403 21
	addi	a5,s0,-32
	mv	a1,a5
	lw	a0,-40(s0)
	call	igmp_lookfor_group
	sw	a0,-20(s0)
.L51:
.LBE3:
	.loc 1 408 14
	lw	a5,-20(s0)
	beq	a5,zero,.L52
	.loc 1 409 30
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,112(a5)
	.loc 1 409 13
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,112(a5)
	.loc 1 410 13
	lw	a5,-28(s0)
	lbu	a5,1(a5)
	mv	a1,a5
	lw	a0,-20(s0)
	call	igmp_delaying_member
	.loc 1 408 14
	j	.L49
.L52:
	.loc 1 412 30
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,100(a5)
	.loc 1 412 13
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,100(a5)
	.loc 1 408 14
	j	.L49
.L50:
	.loc 1 415 28
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,108(a5)
	.loc 1 415 11
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,108(a5)
	.loc 1 418 7
	j	.L54
.L49:
	j	.L54
.L40:
	.loc 1 421 24
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,116(a5)
	.loc 1 421 7
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,116(a5)
	.loc 1 422 16
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	.loc 1 422 10
	li	a5,1
	bne	a4,a5,.L57
	.loc 1 424 22
	lw	a5,-20(s0)
	sh	zero,10(a5)
	.loc 1 425 28
	lw	a5,-20(s0)
	li	a4,2
	sb	a4,9(a5)
	.loc 1 426 35
	lw	a5,-20(s0)
	sb	zero,8(a5)
	.loc 1 428 7
	j	.L57
.L56:
	.loc 1 432 24
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,108(a5)
	.loc 1 432 7
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,108(a5)
	.loc 1 433 7
	j	.L54
.L57:
	.loc 1 428 7
	nop
.L54:
	.loc 1 436 3
	lw	a0,-36(s0)
	call	pbuf_free
	.loc 1 437 3
	nop
.L34:
	.loc 1 438 1
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
	.size	igmp_input, .-igmp_input
	.section	.text.igmp_joingroup,"ax",@progbits
	.align	1
	.globl	igmp_joingroup
	.type	igmp_joingroup, @function
igmp_joingroup:
.LFB13:
	.loc 1 450 1
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
	.loc 1 451 9
	li	a5,-6
	sb	a5,-17(s0)
	.loc 1 457 27
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 457 34
	andi	a4,a5,240
	.loc 1 457 11
	li	a5,224
	beq	a4,a5,.L59
	.loc 1 457 442 discriminator 1
	li	a5,-6
	.loc 1 457 442 is_stmt 0
	j	.L60
.L59:
	.loc 1 458 28 is_stmt 1
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 1 458 51
	lui	a5,%hi(allsystems)
	lw	a5,%lo(allsystems)(a5)
	.loc 1 458 11
	bne	a4,a5,.L61
	.loc 1 458 73 discriminator 1
	li	a5,-6
	.loc 1 458 73 is_stmt 0
	j	.L60
.L61:
	.loc 1 461 16 is_stmt 1
	lui	a5,%hi(netif_list)
	lw	a5,%lo(netif_list)(a5)
	sw	a5,-24(s0)
	.loc 1 461 3
	j	.L62
.L65:
	.loc 1 463 15
	lw	a5,-24(s0)
	lbu	a5,69(a5)
	.loc 1 463 23
	andi	a5,a5,32
	.loc 1 463 8
	beq	a5,zero,.L63
	.loc 1 463 32 discriminator 1
	lw	a5,-36(s0)
	beq	a5,zero,.L64
	.loc 1 463 61 discriminator 2
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 463 46 discriminator 2
	beq	a5,zero,.L64
	.loc 1 463 120 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 463 142 discriminator 3
	lw	a4,0(a5)
	.loc 1 463 160 discriminator 3
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 463 94 discriminator 3
	bne	a4,a5,.L63
.L64:
	.loc 1 464 13
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	call	igmp_joingroup_netif
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 465 10
	lb	a5,-17(s0)
	beq	a5,zero,.L63
	.loc 1 468 16
	lb	a5,-17(s0)
	j	.L60
.L63:
	.loc 1 461 12 discriminator 2
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
.L62:
	.loc 1 461 38 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L65
	.loc 1 473 10
	lb	a5,-17(s0)
.L60:
	.loc 1 474 1
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
	.size	igmp_joingroup, .-igmp_joingroup
	.section	.text.igmp_joingroup_netif,"ax",@progbits
	.align	1
	.globl	igmp_joingroup_netif
	.type	igmp_joingroup_netif, @function
igmp_joingroup_netif:
.LFB14:
	.loc 1 486 1
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
	.loc 1 492 27
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 492 34
	andi	a4,a5,240
	.loc 1 492 11
	li	a5,224
	beq	a4,a5,.L67
	.loc 1 492 442 discriminator 1
	li	a5,-6
	.loc 1 492 442 is_stmt 0
	j	.L68
.L67:
	.loc 1 493 28 is_stmt 1
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 1 493 51
	lui	a5,%hi(allsystems)
	lw	a5,%lo(allsystems)(a5)
	.loc 1 493 11
	bne	a4,a5,.L69
	.loc 1 493 73 discriminator 1
	li	a5,-6
	.loc 1 493 73 is_stmt 0
	j	.L68
.L69:
	.loc 1 496 19 is_stmt 1
	lw	a5,-36(s0)
	lbu	a5,69(a5)
	.loc 1 496 27
	andi	a5,a5,32
	.loc 1 496 11
	bne	a5,zero,.L70
	.loc 1 496 48 discriminator 1
	li	a5,-6
	.loc 1 496 48 is_stmt 0
	j	.L68
.L70:
	.loc 1 499 11 is_stmt 1
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	igmp_lookup_group
	sw	a0,-20(s0)
	.loc 1 501 6
	lw	a5,-20(s0)
	beq	a5,zero,.L71
	.loc 1 503 14
	lw	a5,-20(s0)
	lbu	a5,9(a5)
	.loc 1 503 8
	bne	a5,zero,.L72
	.loc 1 512 17
	lw	a5,-20(s0)
	lbu	a5,12(a5)
	.loc 1 512 10
	bne	a5,zero,.L73
	.loc 1 512 38 discriminator 1
	lw	a5,-36(s0)
	lw	a5,76(a5)
	.loc 1 512 29 discriminator 1
	beq	a5,zero,.L73
	.loc 1 516 14
	lw	a5,-36(s0)
	lw	a5,76(a5)
	.loc 1 516 9
	li	a2,1
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	jalr	a5
.LVL2:
.L73:
	.loc 1 519 24
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,118(a5)
	.loc 1 519 7
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,118(a5)
	.loc 1 520 7
	li	a2,22
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	igmp_send
	.loc 1 522 7
	li	a1,5
	lw	a0,-20(s0)
	call	igmp_start_timer
	.loc 1 525 26
	lw	a5,-20(s0)
	li	a4,1
	sb	a4,9(a5)
.L72:
	.loc 1 528 10
	lw	a5,-20(s0)
	lbu	a5,12(a5)
	.loc 1 528 15
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,12(a5)
	.loc 1 530 12
	li	a5,0
	j	.L68
.L71:
	.loc 1 533 12
	li	a5,-1
.L68:
	.loc 1 535 1
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
	.size	igmp_joingroup_netif, .-igmp_joingroup_netif
	.section	.text.igmp_leavegroup,"ax",@progbits
	.align	1
	.globl	igmp_leavegroup
	.type	igmp_leavegroup, @function
igmp_leavegroup:
.LFB15:
	.loc 1 547 1
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
	.loc 1 548 9
	li	a5,-6
	sb	a5,-17(s0)
	.loc 1 554 27
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 554 34
	andi	a4,a5,240
	.loc 1 554 11
	li	a5,224
	beq	a4,a5,.L75
	.loc 1 554 442 discriminator 1
	li	a5,-6
	.loc 1 554 442 is_stmt 0
	j	.L76
.L75:
	.loc 1 555 28 is_stmt 1
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 1 555 51
	lui	a5,%hi(allsystems)
	lw	a5,%lo(allsystems)(a5)
	.loc 1 555 11
	bne	a4,a5,.L77
	.loc 1 555 73 discriminator 1
	li	a5,-6
	.loc 1 555 73 is_stmt 0
	j	.L76
.L77:
	.loc 1 558 16 is_stmt 1
	lui	a5,%hi(netif_list)
	lw	a5,%lo(netif_list)(a5)
	sw	a5,-24(s0)
	.loc 1 558 3
	j	.L78
.L81:
	.loc 1 560 15
	lw	a5,-24(s0)
	lbu	a5,69(a5)
	.loc 1 560 23
	andi	a5,a5,32
	.loc 1 560 8
	beq	a5,zero,.L79
	.loc 1 560 32 discriminator 1
	lw	a5,-36(s0)
	beq	a5,zero,.L80
	.loc 1 560 61 discriminator 2
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 560 46 discriminator 2
	beq	a5,zero,.L80
	.loc 1 560 120 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 560 142 discriminator 3
	lw	a4,0(a5)
	.loc 1 560 160 discriminator 3
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 560 94 discriminator 3
	bne	a4,a5,.L79
.L80:
.LBB4:
	.loc 1 561 19
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	call	igmp_leavegroup_netif
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 1 562 10
	lb	a5,-17(s0)
	beq	a5,zero,.L79
	.loc 1 564 13
	lbu	a5,-25(s0)
	sb	a5,-17(s0)
.L79:
.LBE4:
	.loc 1 558 12 discriminator 2
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
.L78:
	.loc 1 558 38 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L81
	.loc 1 569 10
	lb	a5,-17(s0)
.L76:
	.loc 1 570 1
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
	.size	igmp_leavegroup, .-igmp_leavegroup
	.section	.text.igmp_leavegroup_netif,"ax",@progbits
	.align	1
	.globl	igmp_leavegroup_netif
	.type	igmp_leavegroup_netif, @function
igmp_leavegroup_netif:
.LFB16:
	.loc 1 582 1
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
	.loc 1 588 27
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 588 34
	andi	a4,a5,240
	.loc 1 588 11
	li	a5,224
	beq	a4,a5,.L83
	.loc 1 588 442 discriminator 1
	li	a5,-6
	.loc 1 588 442 is_stmt 0
	j	.L84
.L83:
	.loc 1 589 28 is_stmt 1
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 1 589 51
	lui	a5,%hi(allsystems)
	lw	a5,%lo(allsystems)(a5)
	.loc 1 589 11
	bne	a4,a5,.L85
	.loc 1 589 73 discriminator 1
	li	a5,-6
	.loc 1 589 73 is_stmt 0
	j	.L84
.L85:
	.loc 1 592 19 is_stmt 1
	lw	a5,-36(s0)
	lbu	a5,69(a5)
	.loc 1 592 27
	andi	a5,a5,32
	.loc 1 592 11
	bne	a5,zero,.L86
	.loc 1 592 48 discriminator 1
	li	a5,-6
	.loc 1 592 48 is_stmt 0
	j	.L84
.L86:
	.loc 1 595 11 is_stmt 1
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	igmp_lookfor_group
	sw	a0,-20(s0)
	.loc 1 597 6
	lw	a5,-20(s0)
	beq	a5,zero,.L87
	.loc 1 604 14
	lw	a5,-20(s0)
	lbu	a4,12(a5)
	.loc 1 604 8
	li	a5,1
	bgtu	a4,a5,.L88
	.loc 1 606 7
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	igmp_remove_group
	.loc 1 609 16
	lw	a5,-20(s0)
	lbu	a5,8(a5)
	.loc 1 609 10
	beq	a5,zero,.L89
	.loc 1 611 26
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,120(a5)
	.loc 1 611 9
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,120(a5)
	.loc 1 612 9
	li	a2,23
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	igmp_send
.L89:
	.loc 1 616 16
	lw	a5,-36(s0)
	lw	a5,76(a5)
	.loc 1 616 10
	beq	a5,zero,.L90
	.loc 1 620 14
	lw	a5,-36(s0)
	lw	a5,76(a5)
	.loc 1 620 9
	li	a2,0
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	jalr	a5
.LVL3:
.L90:
	.loc 1 624 7
	lw	a1,-20(s0)
	li	a0,10
	call	memp_free
	j	.L91
.L88:
	.loc 1 627 12
	lw	a5,-20(s0)
	lbu	a5,12(a5)
	.loc 1 627 17
	addi	a5,a5,-1
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,12(a5)
.L91:
	.loc 1 629 12
	li	a5,0
	j	.L84
.L87:
	.loc 1 632 12
	li	a5,-6
.L84:
	.loc 1 634 1
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
	.size	igmp_leavegroup_netif, .-igmp_leavegroup_netif
	.section	.text.igmp_tmr,"ax",@progbits
	.align	1
	.globl	igmp_tmr
	.type	igmp_tmr, @function
igmp_tmr:
.LFB17:
	.loc 1 642 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 645 16
	lui	a5,%hi(netif_list)
	lw	a5,%lo(netif_list)(a5)
	sw	a5,-20(s0)
	.loc 1 645 3
	j	.L93
.L97:
.LBB5:
	.loc 1 646 24
	lw	a5,-20(s0)
	lw	a5,48(a5)
	sw	a5,-24(s0)
	.loc 1 648 11
	j	.L94
.L96:
	.loc 1 649 16
	lw	a5,-24(s0)
	lhu	a5,10(a5)
	.loc 1 649 10
	beq	a5,zero,.L95
	.loc 1 650 14
	lw	a5,-24(s0)
	lhu	a5,10(a5)
	.loc 1 650 21
	addi	a5,a5,-1
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-24(s0)
	sh	a4,10(a5)
	.loc 1 651 18
	lw	a5,-24(s0)
	lhu	a5,10(a5)
	.loc 1 651 12
	bne	a5,zero,.L95
	.loc 1 652 11
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	igmp_timeout
.L95:
	.loc 1 655 13
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
.L94:
	.loc 1 648 18
	lw	a5,-24(s0)
	bne	a5,zero,.L96
.LBE5:
	.loc 1 645 12 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L93:
	.loc 1 645 38 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L97
	.loc 1 658 1
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
.LFE17:
	.size	igmp_tmr, .-igmp_tmr
	.section	.text.igmp_timeout,"ax",@progbits
	.align	1
	.type	igmp_timeout, @function
igmp_timeout:
.LFB18:
	.loc 1 668 1
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
	.loc 1 671 13
	lw	a5,-24(s0)
	lbu	a4,9(a5)
	.loc 1 671 6
	li	a5,1
	bne	a4,a5,.L100
	.loc 1 672 36
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 1 672 59
	lui	a5,%hi(allsystems)
	lw	a5,%lo(allsystems)(a5)
	.loc 1 671 33 discriminator 1
	beq	a4,a5,.L100
	.loc 1 677 24
	lw	a5,-24(s0)
	li	a4,2
	sb	a4,9(a5)
	.loc 1 679 22
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,122(a5)
	.loc 1 679 5
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,122(a5)
	.loc 1 680 5
	li	a2,22
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	igmp_send
.L100:
	.loc 1 682 1
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
	.size	igmp_timeout, .-igmp_timeout
	.section	.text.igmp_start_timer,"ax",@progbits
	.align	1
	.type	igmp_start_timer, @function
igmp_start_timer:
.LFB19:
	.loc 1 693 1
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
	.loc 1 695 18
	lbu	a4,-21(s0)
	li	a5,2
	bleu	a4,a5,.L102
	.loc 1 695 50 discriminator 1
	call	bl_rand
	mv	a5,a0
	.loc 1 695 43 discriminator 3
	mv	a4,a5
	.loc 1 695 61 discriminator 3
	lbu	a5,-21(s0)
	remu	a5,a4,a5
	.loc 1 695 18 discriminator 3
	slli	a5,a5,16
	srli	a5,a5,16
	j	.L103
.L102:
	.loc 1 695 18 is_stmt 0 discriminator 2
	li	a5,1
.L103:
	.loc 1 695 16 is_stmt 1 discriminator 5
	lw	a4,-20(s0)
	sh	a5,10(a4)
	.loc 1 701 12
	lw	a5,-20(s0)
	lhu	a5,10(a5)
	.loc 1 701 6
	bne	a5,zero,.L105
	.loc 1 702 18
	lw	a5,-20(s0)
	li	a4,1
	sh	a4,10(a5)
.L105:
	.loc 1 704 1
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
	.size	igmp_start_timer, .-igmp_start_timer
	.section	.text.igmp_delaying_member,"ax",@progbits
	.align	1
	.type	igmp_delaying_member, @function
igmp_delaying_member:
.LFB20:
	.loc 1 714 1
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
	.loc 1 715 13
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	.loc 1 715 6
	li	a5,2
	beq	a4,a5,.L107
	.loc 1 716 14
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	.loc 1 715 33 discriminator 1
	li	a5,1
	bne	a4,a5,.L109
	.loc 1 717 15
	lw	a5,-20(s0)
	lhu	a5,10(a5)
	.loc 1 716 34
	beq	a5,zero,.L107
	.loc 1 717 41
	lbu	a5,-21(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 717 48
	lw	a5,-20(s0)
	lhu	a5,10(a5)
	.loc 1 717 29
	bgeu	a4,a5,.L109
.L107:
	.loc 1 718 5
	lbu	a5,-21(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	igmp_start_timer
	.loc 1 719 24
	lw	a5,-20(s0)
	li	a4,1
	sb	a4,9(a5)
.L109:
	.loc 1 721 1
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
	.size	igmp_delaying_member, .-igmp_delaying_member
	.section	.text.igmp_ip_output_if,"ax",@progbits
	.align	1
	.type	igmp_ip_output_if, @function
igmp_ip_output_if:
.LFB21:
	.loc 1 742 1
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
	.loc 1 745 9
	li	a5,1172
	sh	a5,-20(s0)
	.loc 1 746 9
	sh	zero,-18(s0)
	.loc 1 747 20
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,96(a5)
	.loc 1 747 3
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,96(a5)
	.loc 1 748 10
	addi	a4,s0,-20
	li	a5,4
	sw	a5,0(sp)
	mv	a7,a4
	lw	a6,-48(s0)
	li	a5,2
	li	a4,0
	li	a3,1
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	ip4_output_if_opt
	mv	a5,a0
	.loc 1 749 1
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
.LFE21:
	.size	igmp_ip_output_if, .-igmp_ip_output_if
	.section	.text.igmp_send,"ax",@progbits
	.align	1
	.type	igmp_send, @function
igmp_send:
.LFB22:
	.loc 1 759 1
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
	sb	a5,-41(s0)
	.loc 1 760 16
	sw	zero,-24(s0)
	.loc 1 761 20
	sw	zero,-28(s0)
	.loc 1 762 14
	lui	a5,%hi(ip_addr_any)
	lw	a5,%lo(ip_addr_any)(a5)
	sw	a5,-32(s0)
	.loc 1 763 15
	sw	zero,-20(s0)
	.loc 1 766 7
	li	a2,640
	li	a1,8
	li	a0,182
	call	pbuf_alloc
	sw	a0,-24(s0)
	.loc 1 768 6
	lw	a5,-24(s0)
	beq	a5,zero,.L113
	.loc 1 769 10
	lw	a5,-24(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	.loc 1 772 42
	lw	a5,-36(s0)
	addi	a5,a5,4
	.loc 1 772 64
	lw	a5,0(a5)
	.loc 1 772 17
	sw	a5,-32(s0)
	.loc 1 774 8
	lbu	a4,-41(s0)
	li	a5,22
	bne	a4,a5,.L114
	.loc 1 775 12
	lw	a5,-40(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 776 64
	lw	a5,-40(s0)
	lw	a4,4(a5)
	.loc 1 776 40
	lw	a5,-28(s0)
	andi	a3,a4,255
	lbu	a2,4(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,4(a5)
	srli	a3,a4,8
	andi	a3,a3,255
	lbu	a2,5(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,5(a5)
	srli	a3,a4,16
	andi	a3,a3,255
	lbu	a2,6(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,6(a5)
	srli	a4,a4,24
	lbu	a3,7(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,7(a5)
	.loc 1 777 33
	lw	a5,-40(s0)
	li	a4,1
	sb	a4,8(a5)
	j	.L115
.L114:
	.loc 1 779 10
	lbu	a4,-41(s0)
	li	a5,23
	bne	a4,a5,.L115
	.loc 1 780 14
	lui	a5,%hi(allrouters)
	addi	a5,a5,%lo(allrouters)
	sw	a5,-20(s0)
	.loc 1 781 66
	lw	a5,-40(s0)
	lw	a4,4(a5)
	.loc 1 781 42
	lw	a5,-28(s0)
	andi	a3,a4,255
	lbu	a2,4(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,4(a5)
	srli	a3,a4,8
	andi	a3,a3,255
	lbu	a2,5(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,5(a5)
	srli	a3,a4,16
	andi	a3,a3,255
	lbu	a2,6(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,6(a5)
	srli	a4,a4,24
	lbu	a3,7(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,7(a5)
.L115:
	.loc 1 785 8
	lbu	a4,-41(s0)
	li	a5,22
	beq	a4,a5,.L116
	.loc 1 785 24 discriminator 1
	lbu	a4,-41(s0)
	li	a5,23
	bne	a4,a5,.L117
.L116:
	.loc 1 786 26
	lw	a5,-28(s0)
	lbu	a4,-41(s0)
	sb	a4,0(a5)
	.loc 1 787 26
	lw	a5,-28(s0)
	sb	zero,1(a5)
	.loc 1 788 27
	lw	a5,-28(s0)
	lbu	a4,2(a5)
	andi	a4,a4,0
	sb	a4,2(a5)
	lbu	a4,3(a5)
	andi	a4,a4,0
	sb	a4,3(a5)
	.loc 1 789 29
	li	a1,8
	lw	a0,-28(s0)
	call	inet_chksum
	mv	a5,a0
	mv	a4,a5
	.loc 1 789 27 discriminator 1
	lw	a5,-28(s0)
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
	.loc 1 791 7
	addi	a5,s0,-32
	lw	a3,-36(s0)
	lw	a2,-20(s0)
	mv	a1,a5
	lw	a0,-24(s0)
	call	igmp_ip_output_if
.L117:
	.loc 1 794 5
	lw	a0,-24(s0)
	call	pbuf_free
	.loc 1 799 1
	j	.L119
.L113:
	.loc 1 797 22
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,106(a5)
	.loc 1 797 5
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,106(a5)
.L119:
	.loc 1 799 1
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
.LFE22:
	.size	igmp_send, .-igmp_send
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/mem.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/stats.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/igmp.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/ip4.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/igmp.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/inet_chksum.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/config/lwipopts.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf85
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x22
	.4byte	.LASF190
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x23
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xa
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x24
	.byte	0x4
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x19
	.4byte	0x7a
	.uleb128 0x8
	.4byte	0x81
	.uleb128 0x8
	.4byte	0x90
	.uleb128 0x25
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x32
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x39
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x47
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x55
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x3
	.byte	0x7d
	.byte	0x11
	.4byte	0x9d
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x3
	.byte	0x7e
	.byte	0x10
	.4byte	0x91
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x3
	.byte	0x7f
	.byte	0x12
	.4byte	0xa9
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x3
	.byte	0x81
	.byte	0x12
	.4byte	0xb5
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x4
	.byte	0x4
	.byte	0x33
	.4byte	0x10b
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x4
	.byte	0x34
	.byte	0x9
	.4byte	0xe5
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x4
	.byte	0x39
	.byte	0x19
	.4byte	0xf1
	.uleb128 0x19
	.4byte	0x10b
	.uleb128 0x26
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x126
	.byte	0x14
	.4byte	0x10b
	.uleb128 0x19
	.4byte	0x11c
	.uleb128 0x1a
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x18e
	.byte	0x18
	.4byte	0x129
	.uleb128 0x13
	.byte	0x5
	.byte	0x1
	.4byte	0x32
	.byte	0x6
	.byte	0x35
	.4byte	0x1af
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0
	.uleb128 0x7
	.4byte	.LASF24
	.sleb128 -1
	.uleb128 0x7
	.4byte	.LASF25
	.sleb128 -2
	.uleb128 0x7
	.4byte	.LASF26
	.sleb128 -3
	.uleb128 0x7
	.4byte	.LASF27
	.sleb128 -4
	.uleb128 0x7
	.4byte	.LASF28
	.sleb128 -5
	.uleb128 0x7
	.4byte	.LASF29
	.sleb128 -6
	.uleb128 0x7
	.4byte	.LASF30
	.sleb128 -7
	.uleb128 0x7
	.4byte	.LASF31
	.sleb128 -8
	.uleb128 0x7
	.4byte	.LASF32
	.sleb128 -9
	.uleb128 0x7
	.4byte	.LASF33
	.sleb128 -10
	.uleb128 0x7
	.4byte	.LASF34
	.sleb128 -11
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 -12
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 -13
	.uleb128 0x7
	.4byte	.LASF37
	.sleb128 -14
	.uleb128 0x7
	.4byte	.LASF38
	.sleb128 -15
	.uleb128 0x7
	.4byte	.LASF39
	.sleb128 -16
	.byte	0
	.uleb128 0x5
	.4byte	.LASF40
	.byte	0x6
	.byte	0x60
	.byte	0xe
	.4byte	0xcd
	.uleb128 0x13
	.byte	0x7
	.byte	0x1
	.4byte	0x39
	.byte	0x7
	.byte	0x59
	.4byte	0x1e7
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0xb6
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0xa2
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x8e
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x80
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF46
	.byte	0x7
	.byte	0x70
	.byte	0x3
	.4byte	0x1bb
	.uleb128 0x13
	.byte	0x7
	.byte	0x2
	.4byte	0x47
	.byte	0x7
	.byte	0x91
	.4byte	0x21b
	.uleb128 0x1c
	.4byte	.LASF47
	.2byte	0x280
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x41
	.uleb128 0x1c
	.4byte	.LASF50
	.2byte	0x182
	.byte	0
	.uleb128 0x5
	.4byte	.LASF51
	.byte	0x7
	.byte	0xa8
	.byte	0x3
	.4byte	0x1f3
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x10
	.byte	0x7
	.byte	0xba
	.4byte	0x29c
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x7
	.byte	0xbc
	.byte	0x10
	.4byte	0x29c
	.byte	0
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x7
	.byte	0xbf
	.byte	0x9
	.4byte	0x78
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x7
	.byte	0xc8
	.byte	0x9
	.4byte	0xd9
	.byte	0x8
	.uleb128 0xb
	.string	"len"
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0xd9
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x7
	.byte	0xd0
	.byte	0x8
	.4byte	0xc1
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x7
	.byte	0xd3
	.byte	0x8
	.4byte	0xc1
	.byte	0xd
	.uleb128 0xb
	.string	"ref"
	.byte	0x7
	.byte	0xda
	.byte	0x8
	.4byte	0xc1
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x7
	.byte	0xdd
	.byte	0x8
	.4byte	0xc1
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0x227
	.uleb128 0x5
	.4byte	.LASF61
	.byte	0x8
	.byte	0x43
	.byte	0xf
	.4byte	0xd9
	.uleb128 0x13
	.byte	0x7
	.byte	0x1
	.4byte	0x39
	.byte	0x9
	.byte	0x34
	.4byte	0x31b
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0xd
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	.LASF78
	.byte	0x9
	.byte	0x38
	.byte	0x3
	.4byte	0x2ad
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0xa
	.byte	0xa
	.byte	0x62
	.4byte	0x375
	.uleb128 0xb
	.string	"err"
	.byte	0xa
	.byte	0x66
	.byte	0x9
	.4byte	0xd9
	.byte	0
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xa
	.byte	0x67
	.byte	0xe
	.4byte	0x2a1
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xa
	.byte	0x68
	.byte	0xe
	.4byte	0x2a1
	.byte	0x4
	.uleb128 0xb
	.string	"max"
	.byte	0xa
	.byte	0x69
	.byte	0xe
	.4byte	0x2a1
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xa
	.byte	0x6a
	.byte	0x9
	.4byte	0xd9
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x327
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x18
	.byte	0xa
	.byte	0x40
	.4byte	0x422
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0xa
	.byte	0x41
	.byte	0x9
	.4byte	0xd9
	.byte	0
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0xa
	.byte	0x42
	.byte	0x9
	.4byte	0xd9
	.byte	0x2
	.uleb128 0xb
	.string	"fw"
	.byte	0xa
	.byte	0x43
	.byte	0x9
	.4byte	0xd9
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0xa
	.byte	0x44
	.byte	0x9
	.4byte	0xd9
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0xa
	.byte	0x45
	.byte	0x9
	.4byte	0xd9
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0xa
	.byte	0x46
	.byte	0x9
	.4byte	0xd9
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xa
	.byte	0x47
	.byte	0x9
	.4byte	0xd9
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0xa
	.byte	0x48
	.byte	0x9
	.4byte	0xd9
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0xa
	.byte	0x49
	.byte	0x9
	.4byte	0xd9
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0xa
	.byte	0x4a
	.byte	0x9
	.4byte	0xd9
	.byte	0x12
	.uleb128 0xb
	.string	"err"
	.byte	0xa
	.byte	0x4b
	.byte	0x9
	.4byte	0xd9
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0xa
	.byte	0x4c
	.byte	0x9
	.4byte	0xd9
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x1c
	.byte	0xa
	.byte	0x50
	.4byte	0x4e5
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0xa
	.byte	0x51
	.byte	0x9
	.4byte	0xd9
	.byte	0
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0xa
	.byte	0x52
	.byte	0x9
	.4byte	0xd9
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0xa
	.byte	0x53
	.byte	0x9
	.4byte	0xd9
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0xa
	.byte	0x54
	.byte	0x9
	.4byte	0xd9
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0xa
	.byte	0x55
	.byte	0x9
	.4byte	0xd9
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xa
	.byte	0x56
	.byte	0x9
	.4byte	0xd9
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0xa
	.byte	0x57
	.byte	0x9
	.4byte	0xd9
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0xa
	.byte	0x58
	.byte	0x9
	.4byte	0xd9
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0xa
	.byte	0x59
	.byte	0x9
	.4byte	0xd9
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0xa
	.byte	0x5a
	.byte	0x9
	.4byte	0xd9
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0xa
	.byte	0x5b
	.byte	0x9
	.4byte	0xd9
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0xa
	.byte	0x5c
	.byte	0x9
	.4byte	0xd9
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0xa
	.byte	0x5d
	.byte	0x9
	.4byte	0xd9
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0xa
	.byte	0x5e
	.byte	0x9
	.4byte	0xd9
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF102
	.byte	0x6
	.byte	0xa
	.byte	0x6e
	.4byte	0x519
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xa
	.byte	0x6f
	.byte	0x9
	.4byte	0xd9
	.byte	0
	.uleb128 0xb
	.string	"max"
	.byte	0xa
	.byte	0x70
	.byte	0x9
	.4byte	0xd9
	.byte	0x2
	.uleb128 0xb
	.string	"err"
	.byte	0xa
	.byte	0x71
	.byte	0x9
	.4byte	0xd9
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF103
	.byte	0x12
	.byte	0xa
	.byte	0x75
	.4byte	0x54d
	.uleb128 0xb
	.string	"sem"
	.byte	0xa
	.byte	0x76
	.byte	0x18
	.4byte	0x4e5
	.byte	0
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0xa
	.byte	0x77
	.byte	0x18
	.4byte	0x4e5
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0xa
	.byte	0x78
	.byte	0x18
	.4byte	0x4e5
	.byte	0xc
	.byte	0
	.uleb128 0x27
	.4byte	.LASF106
	.2byte	0x108
	.byte	0xa
	.byte	0xeb
	.byte	0x8
	.4byte	0x5e3
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0xa
	.byte	0xee
	.byte	0x16
	.4byte	0x37a
	.byte	0
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0xa
	.byte	0xf2
	.byte	0x16
	.4byte	0x37a
	.byte	0x18
	.uleb128 0xb
	.string	"ip"
	.byte	0xa
	.byte	0xfa
	.byte	0x16
	.4byte	0x37a
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0xa
	.byte	0xfe
	.byte	0x16
	.4byte	0x37a
	.byte	0x48
	.uleb128 0x6
	.4byte	.LASF110
	.byte	0xa
	.2byte	0x102
	.byte	0x15
	.4byte	0x422
	.byte	0x60
	.uleb128 0xe
	.string	"udp"
	.byte	0xa
	.2byte	0x106
	.byte	0x16
	.4byte	0x37a
	.byte	0x7c
	.uleb128 0xe
	.string	"tcp"
	.byte	0xa
	.2byte	0x10a
	.byte	0x16
	.4byte	0x37a
	.byte	0x94
	.uleb128 0xe
	.string	"mem"
	.byte	0xa
	.2byte	0x10e
	.byte	0x14
	.4byte	0x327
	.byte	0xac
	.uleb128 0x6
	.4byte	.LASF111
	.byte	0xa
	.2byte	0x112
	.byte	0x15
	.4byte	0x5e3
	.byte	0xb8
	.uleb128 0xe
	.string	"sys"
	.byte	0xa
	.2byte	0x116
	.byte	0x14
	.4byte	0x519
	.byte	0xf4
	.byte	0
	.uleb128 0x10
	.4byte	0x375
	.4byte	0x5f3
	.uleb128 0x11
	.4byte	0x6a
	.byte	0xe
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF113
	.byte	0xa
	.2byte	0x133
	.byte	0x16
	.4byte	0x54d
	.uleb128 0x1d
	.4byte	.LASF118
	.4byte	0x39
	.byte	0x71
	.4byte	0x627
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0
	.uleb128 0x2
	.4byte	.LASF115
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0x3
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF119
	.4byte	0x39
	.byte	0x9f
	.4byte	0x642
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x647
	.uleb128 0x28
	.4byte	.LASF122
	.byte	0x54
	.byte	0xb
	.2byte	0x10d
	.byte	0x8
	.4byte	0x76d
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0xb
	.2byte	0x110
	.byte	0x11
	.4byte	0x642
	.byte	0
	.uleb128 0x6
	.4byte	.LASF123
	.byte	0xb
	.2byte	0x115
	.byte	0xd
	.4byte	0x11c
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF124
	.byte	0xb
	.2byte	0x116
	.byte	0xd
	.4byte	0x11c
	.byte	0x8
	.uleb128 0xe
	.string	"gw"
	.byte	0xb
	.2byte	0x117
	.byte	0xd
	.4byte	0x11c
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF125
	.byte	0xb
	.2byte	0x129
	.byte	0x12
	.4byte	0x76d
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF126
	.byte	0xb
	.2byte	0x12f
	.byte	0x13
	.4byte	0x792
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF127
	.byte	0xb
	.2byte	0x134
	.byte	0x17
	.4byte	0x7c1
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF128
	.byte	0xb
	.2byte	0x13f
	.byte	0x1c
	.4byte	0x7e6
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF129
	.byte	0xb
	.2byte	0x144
	.byte	0x1c
	.4byte	0x7e6
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF130
	.byte	0xb
	.2byte	0x14c
	.byte	0x9
	.4byte	0x78
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF131
	.byte	0xb
	.2byte	0x14e
	.byte	0x9
	.4byte	0x82c
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF132
	.byte	0xb
	.2byte	0x152
	.byte	0xf
	.4byte	0x86
	.byte	0x38
	.uleb128 0xe
	.string	"mtu"
	.byte	0xb
	.2byte	0x158
	.byte	0x9
	.4byte	0xd9
	.byte	0x3c
	.uleb128 0x6
	.4byte	.LASF133
	.byte	0xb
	.2byte	0x15e
	.byte	0x8
	.4byte	0x83c
	.byte	0x3e
	.uleb128 0x6
	.4byte	.LASF134
	.byte	0xb
	.2byte	0x160
	.byte	0x8
	.4byte	0xc1
	.byte	0x44
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0xb
	.2byte	0x162
	.byte	0x8
	.4byte	0xc1
	.byte	0x45
	.uleb128 0x6
	.4byte	.LASF135
	.byte	0xb
	.2byte	0x164
	.byte	0x8
	.4byte	0x84c
	.byte	0x46
	.uleb128 0xe
	.string	"num"
	.byte	0xb
	.2byte	0x167
	.byte	0x8
	.4byte	0xc1
	.byte	0x48
	.uleb128 0x6
	.4byte	.LASF136
	.byte	0xb
	.2byte	0x17d
	.byte	0x1c
	.4byte	0x802
	.byte	0x4c
	.uleb128 0x6
	.4byte	.LASF137
	.byte	0xb
	.2byte	0x185
	.byte	0xf
	.4byte	0x861
	.byte	0x50
	.byte	0
	.uleb128 0x5
	.4byte	.LASF138
	.byte	0xb
	.byte	0xb5
	.byte	0x11
	.4byte	0x779
	.uleb128 0x8
	.4byte	0x77e
	.uleb128 0x14
	.4byte	0x1af
	.4byte	0x792
	.uleb128 0x3
	.4byte	0x29c
	.uleb128 0x3
	.4byte	0x642
	.byte	0
	.uleb128 0x5
	.4byte	.LASF139
	.byte	0xb
	.byte	0xc0
	.byte	0x11
	.4byte	0x79e
	.uleb128 0x8
	.4byte	0x7a3
	.uleb128 0x14
	.4byte	0x1af
	.4byte	0x7bc
	.uleb128 0x3
	.4byte	0x642
	.uleb128 0x3
	.4byte	0x29c
	.uleb128 0x3
	.4byte	0x7bc
	.byte	0
	.uleb128 0x8
	.4byte	0x117
	.uleb128 0x5
	.4byte	.LASF140
	.byte	0xb
	.byte	0xd7
	.byte	0x11
	.4byte	0x7cd
	.uleb128 0x8
	.4byte	0x7d2
	.uleb128 0x14
	.4byte	0x1af
	.4byte	0x7e6
	.uleb128 0x3
	.4byte	0x642
	.uleb128 0x3
	.4byte	0x29c
	.byte	0
	.uleb128 0x5
	.4byte	.LASF141
	.byte	0xb
	.byte	0xd9
	.byte	0x10
	.4byte	0x7f2
	.uleb128 0x8
	.4byte	0x7f7
	.uleb128 0x29
	.4byte	0x802
	.uleb128 0x3
	.4byte	0x642
	.byte	0
	.uleb128 0x5
	.4byte	.LASF142
	.byte	0xb
	.byte	0xdc
	.byte	0x11
	.4byte	0x80e
	.uleb128 0x8
	.4byte	0x813
	.uleb128 0x14
	.4byte	0x1af
	.4byte	0x82c
	.uleb128 0x3
	.4byte	0x642
	.uleb128 0x3
	.4byte	0x7bc
	.uleb128 0x3
	.4byte	0x627
	.byte	0
	.uleb128 0x10
	.4byte	0x78
	.4byte	0x83c
	.uleb128 0x11
	.4byte	0x6a
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.4byte	0xc1
	.4byte	0x84c
	.uleb128 0x11
	.4byte	0x6a
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.4byte	0x7a
	.4byte	0x85c
	.uleb128 0x11
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.string	"acd"
	.uleb128 0x8
	.4byte	0x85c
	.uleb128 0x1a
	.4byte	.LASF143
	.byte	0xb
	.2byte	0x1a7
	.byte	0x16
	.4byte	0x642
	.uleb128 0xc
	.4byte	.LASF144
	.byte	0x10
	.byte	0xc
	.byte	0x4a
	.4byte	0x8ce
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xc
	.byte	0x4c
	.byte	0x16
	.4byte	0x8ce
	.byte	0
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0xc
	.byte	0x4e
	.byte	0xe
	.4byte	0x10b
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0xc
	.byte	0x50
	.byte	0x8
	.4byte	0xc1
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF147
	.byte	0xc
	.byte	0x52
	.byte	0x8
	.4byte	0xc1
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0xc
	.byte	0x54
	.byte	0x9
	.4byte	0xd9
	.byte	0xa
	.uleb128 0xb
	.string	"use"
	.byte	0xc
	.byte	0x56
	.byte	0x8
	.4byte	0xc1
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x873
	.uleb128 0xc
	.4byte	.LASF149
	.byte	0x4
	.byte	0xd
	.byte	0x35
	.4byte	0x8ed
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0xd
	.byte	0x36
	.byte	0x9
	.4byte	0xe5
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF150
	.byte	0xd
	.byte	0x3d
	.byte	0x20
	.4byte	0x8d3
	.uleb128 0xc
	.4byte	.LASF151
	.byte	0x8
	.byte	0xe
	.byte	0x4b
	.4byte	0x93a
	.uleb128 0x1
	.4byte	.LASF152
	.byte	0xe
	.byte	0x4c
	.byte	0x8
	.4byte	0xc1
	.byte	0
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0xe
	.byte	0x4d
	.byte	0x8
	.4byte	0xc1
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0xe
	.byte	0x4e
	.byte	0x9
	.4byte	0xd9
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0xe
	.byte	0x4f
	.byte	0x10
	.4byte	0x8ed
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF156
	.byte	0x6b
	.byte	0x13
	.4byte	0x10b
	.uleb128 0x5
	.byte	0x3
	.4byte	allsystems
	.uleb128 0xd
	.4byte	.LASF157
	.byte	0x6c
	.byte	0x13
	.4byte	0x10b
	.uleb128 0x5
	.byte	0x3
	.4byte	allrouters
	.uleb128 0x1e
	.4byte	.LASF158
	.2byte	0x113
	.byte	0xe
	.4byte	0x29c
	.4byte	0x97c
	.uleb128 0x3
	.4byte	0x1e7
	.uleb128 0x3
	.4byte	0xd9
	.uleb128 0x3
	.4byte	0x21b
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF159
	.byte	0xf
	.byte	0x53
	.4byte	0x1af
	.4byte	0x9b9
	.uleb128 0x3
	.4byte	0x29c
	.uleb128 0x3
	.4byte	0x7bc
	.uleb128 0x3
	.4byte	0x7bc
	.uleb128 0x3
	.4byte	0xc1
	.uleb128 0x3
	.4byte	0xc1
	.uleb128 0x3
	.4byte	0xc1
	.uleb128 0x3
	.4byte	0x642
	.uleb128 0x3
	.4byte	0x78
	.uleb128 0x3
	.4byte	0xd9
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF191
	.byte	0x11
	.2byte	0x127
	.byte	0xc
	.4byte	0x2b
	.uleb128 0x1b
	.4byte	.LASF160
	.byte	0x10
	.byte	0x4a
	.4byte	0xd9
	.4byte	0x9e0
	.uleb128 0x3
	.4byte	0x8b
	.uleb128 0x3
	.4byte	0xd9
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF161
	.2byte	0x125
	.byte	0x6
	.4byte	0xc1
	.4byte	0x9f6
	.uleb128 0x3
	.4byte	0x29c
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF162
	.byte	0x9
	.byte	0x93
	.4byte	0x78
	.4byte	0xa0b
	.uleb128 0x3
	.4byte	0x31b
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF192
	.byte	0x9
	.byte	0x95
	.byte	0x6
	.4byte	0xa22
	.uleb128 0x3
	.4byte	0x31b
	.uleb128 0x3
	.4byte	0x78
	.byte	0
	.uleb128 0x15
	.4byte	.LASF166
	.2byte	0x2f6
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa9f
	.uleb128 0x4
	.4byte	.LASF122
	.2byte	0x2f6
	.byte	0x19
	.4byte	0x642
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF163
	.2byte	0x2f6
	.byte	0x33
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF164
	.2byte	0x2f6
	.byte	0x3f
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0xf
	.string	"p"
	.2byte	0x2f8
	.byte	0x10
	.4byte	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF110
	.2byte	0x2f9
	.byte	0x14
	.4byte	0xa9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.string	"src"
	.2byte	0x2fa
	.byte	0xe
	.4byte	0x10b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.4byte	.LASF165
	.2byte	0x2fb
	.byte	0xf
	.4byte	0xaa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	0x8f9
	.uleb128 0x8
	.4byte	0x10b
	.uleb128 0x2d
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x2e5
	.byte	0x1
	.4byte	0x1af
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb0d
	.uleb128 0x16
	.string	"p"
	.2byte	0x2e5
	.byte	0x20
	.4byte	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.string	"src"
	.2byte	0x2e5
	.byte	0x35
	.4byte	0x7bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF165
	.2byte	0x2e5
	.byte	0x4c
	.4byte	0x7bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF122
	.2byte	0x2e5
	.byte	0x60
	.4byte	0x642
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"ra"
	.2byte	0x2e8
	.byte	0x9
	.4byte	0xb0d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	0xd9
	.4byte	0xb1d
	.uleb128 0x11
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.4byte	.LASF167
	.2byte	0x2c9
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb51
	.uleb128 0x4
	.4byte	.LASF163
	.2byte	0x2c9
	.byte	0x29
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF168
	.2byte	0x2c9
	.byte	0x35
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x15
	.4byte	.LASF169
	.2byte	0x2b4
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb85
	.uleb128 0x4
	.4byte	.LASF163
	.2byte	0x2b4
	.byte	0x25
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF170
	.2byte	0x2b4
	.byte	0x31
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x15
	.4byte	.LASF171
	.2byte	0x29b
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbb9
	.uleb128 0x4
	.4byte	.LASF122
	.2byte	0x29b
	.byte	0x1c
	.4byte	0x642
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF163
	.2byte	0x29b
	.byte	0x36
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF178
	.2byte	0x281
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf7
	.uleb128 0x9
	.4byte	.LASF122
	.2byte	0x283
	.byte	0x11
	.4byte	0x642
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x9
	.4byte	.LASF163
	.2byte	0x286
	.byte	0x18
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF173
	.2byte	0x245
	.4byte	0x1af
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc3e
	.uleb128 0x4
	.4byte	.LASF122
	.2byte	0x245
	.byte	0x25
	.4byte	0x642
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF172
	.2byte	0x245
	.byte	0x3e
	.4byte	0x7bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.4byte	.LASF163
	.2byte	0x247
	.byte	0x16
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF174
	.2byte	0x222
	.4byte	0x1af
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcad
	.uleb128 0x4
	.4byte	.LASF175
	.2byte	0x222
	.byte	0x23
	.4byte	0x7bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF172
	.2byte	0x222
	.byte	0x3d
	.4byte	0x7bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"err"
	.2byte	0x224
	.byte	0x9
	.4byte	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x9
	.4byte	.LASF122
	.2byte	0x225
	.byte	0x11
	.4byte	0x642
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0xf
	.string	"res"
	.2byte	0x231
	.byte	0xd
	.4byte	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF176
	.2byte	0x1e5
	.4byte	0x1af
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcf4
	.uleb128 0x4
	.4byte	.LASF122
	.2byte	0x1e5
	.byte	0x24
	.4byte	0x642
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF172
	.2byte	0x1e5
	.byte	0x3d
	.4byte	0x7bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.4byte	.LASF163
	.2byte	0x1e7
	.byte	0x16
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF177
	.2byte	0x1c1
	.4byte	0x1af
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd4a
	.uleb128 0x4
	.4byte	.LASF175
	.2byte	0x1c1
	.byte	0x22
	.4byte	0x7bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF172
	.2byte	0x1c1
	.byte	0x3c
	.4byte	0x7bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"err"
	.2byte	0x1c3
	.byte	0x9
	.4byte	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x9
	.4byte	.LASF122
	.2byte	0x1c4
	.byte	0x11
	.4byte	0x642
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF179
	.2byte	0x143
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdd1
	.uleb128 0x16
	.string	"p"
	.2byte	0x143
	.byte	0x19
	.4byte	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.string	"inp"
	.2byte	0x143
	.byte	0x2a
	.4byte	0x642
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF165
	.2byte	0x143
	.byte	0x41
	.4byte	0x7bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.4byte	.LASF110
	.2byte	0x145
	.byte	0x14
	.4byte	0xa9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF163
	.2byte	0x146
	.byte	0x16
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF180
	.2byte	0x147
	.byte	0x16
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x9
	.4byte	.LASF172
	.2byte	0x18f
	.byte	0x18
	.4byte	0x10b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x127
	.byte	0x1
	.4byte	0x1af
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe29
	.uleb128 0x4
	.4byte	.LASF122
	.2byte	0x127
	.byte	0x21
	.4byte	0x642
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF163
	.2byte	0x127
	.byte	0x3b
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"err"
	.2byte	0x129
	.byte	0x9
	.4byte	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x9
	.4byte	.LASF183
	.2byte	0x12a
	.byte	0x16
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF184
	.byte	0x1
	.byte	0xf4
	.byte	0x1
	.4byte	0x8ce
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe7c
	.uleb128 0x20
	.string	"ifp"
	.byte	0xf4
	.byte	0x21
	.4byte	0x642
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0xf4
	.byte	0x38
	.4byte	0x7bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.4byte	.LASF163
	.byte	0xf6
	.byte	0x16
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LASF185
	.byte	0xf7
	.byte	0x16
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x30
	.4byte	.LASF186
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.4byte	0x8ce
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xec1
	.uleb128 0x20
	.string	"ifp"
	.byte	0xda
	.byte	0x22
	.4byte	0x642
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0xda
	.byte	0x39
	.4byte	0x7bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.4byte	.LASF163
	.byte	0xdc
	.byte	0x16
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.4byte	.LASF187
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xef4
	.uleb128 0x12
	.4byte	.LASF122
	.byte	0xc0
	.byte	0x22
	.4byte	0x642
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.4byte	.LASF163
	.byte	0xc2
	.byte	0x16
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF188
	.byte	0xa0
	.4byte	0x1af
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf41
	.uleb128 0x12
	.4byte	.LASF122
	.byte	0xa0
	.byte	0x19
	.4byte	0x642
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.4byte	.LASF163
	.byte	0xa2
	.byte	0x16
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0xa7
	.byte	0x18
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF189
	.byte	0x80
	.4byte	0x1af
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf76
	.uleb128 0x12
	.4byte	.LASF122
	.byte	0x80
	.byte	0x1a
	.4byte	0x642
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.4byte	.LASF163
	.byte	0x82
	.byte	0x16
	.4byte	0x8ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.4byte	.LASF193
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xa
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
	.uleb128 0xd
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1b
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
	.sleb128 7
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
	.uleb128 0x1c
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xa4
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF178:
	.string	"igmp_tmr"
.LASF65:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF125:
	.string	"input"
.LASF161:
	.string	"pbuf_free"
.LASF36:
	.string	"ERR_ABRT"
.LASF155:
	.string	"igmp_group_address"
.LASF47:
	.string	"PBUF_RAM"
.LASF116:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF45:
	.string	"PBUF_RAW"
.LASF51:
	.string	"pbuf_type"
.LASF38:
	.string	"ERR_CLSD"
.LASF31:
	.string	"ERR_USE"
.LASF39:
	.string	"ERR_ARG"
.LASF98:
	.string	"rx_report"
.LASF154:
	.string	"igmp_checksum"
.LASF10:
	.string	"unsigned int"
.LASF55:
	.string	"next"
.LASF40:
	.string	"err_t"
.LASF127:
	.string	"linkoutput"
.LASF145:
	.string	"group_address"
.LASF192:
	.string	"memp_free"
.LASF19:
	.string	"u16_t"
.LASF185:
	.string	"list_head"
.LASF159:
	.string	"ip4_output_if_opt"
.LASF79:
	.string	"stats_mem"
.LASF139:
	.string	"netif_output_fn"
.LASF76:
	.string	"MEMP_PBUF_POOL"
.LASF113:
	.string	"lwip_stats"
.LASF174:
	.string	"igmp_leavegroup"
.LASF37:
	.string	"ERR_RST"
.LASF41:
	.string	"PBUF_TRANSPORT"
.LASF32:
	.string	"ERR_ALREADY"
.LASF102:
	.string	"stats_syselem"
.LASF138:
	.string	"netif_input_fn"
.LASF16:
	.string	"uint32_t"
.LASF13:
	.string	"int8_t"
.LASF72:
	.string	"MEMP_IGMP_GROUP"
.LASF70:
	.string	"MEMP_TCPIP_MSG_API"
.LASF92:
	.string	"opterr"
.LASF104:
	.string	"mutex"
.LASF193:
	.string	"igmp_init"
.LASF149:
	.string	"ip4_addr_packed"
.LASF82:
	.string	"illegal"
.LASF173:
	.string	"igmp_leavegroup_netif"
.LASF143:
	.string	"netif_list"
.LASF133:
	.string	"hwaddr"
.LASF108:
	.string	"etharp"
.LASF9:
	.string	"long long unsigned int"
.LASF110:
	.string	"igmp"
.LASF21:
	.string	"ip4_addr_t"
.LASF134:
	.string	"hwaddr_len"
.LASF162:
	.string	"memp_malloc"
.LASF29:
	.string	"ERR_VAL"
.LASF101:
	.string	"tx_report"
.LASF177:
	.string	"igmp_joingroup"
.LASF71:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF49:
	.string	"PBUF_REF"
.LASF106:
	.string	"stats_"
.LASF58:
	.string	"type_internal"
.LASF57:
	.string	"tot_len"
.LASF56:
	.string	"payload"
.LASF42:
	.string	"PBUF_IP"
.LASF147:
	.string	"group_state"
.LASF126:
	.string	"output"
.LASF53:
	.string	"pbuf"
.LASF50:
	.string	"PBUF_POOL"
.LASF59:
	.string	"flags"
.LASF77:
	.string	"MEMP_MAX"
.LASF18:
	.string	"s8_t"
.LASF180:
	.string	"groupref"
.LASF69:
	.string	"MEMP_NETCONN"
.LASF170:
	.string	"max_time"
.LASF97:
	.string	"rx_general"
.LASF30:
	.string	"ERR_WOULDBLOCK"
.LASF26:
	.string	"ERR_TIMEOUT"
.LASF75:
	.string	"MEMP_PBUF"
.LASF131:
	.string	"client_data"
.LASF12:
	.string	"char"
.LASF61:
	.string	"mem_size_t"
.LASF136:
	.string	"igmp_mac_filter"
.LASF83:
	.string	"stats_proto"
.LASF176:
	.string	"igmp_joingroup_netif"
.LASF179:
	.string	"igmp_input"
.LASF121:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF14:
	.string	"uint8_t"
.LASF158:
	.string	"pbuf_alloc"
.LASF189:
	.string	"igmp_start"
.LASF132:
	.string	"hostname"
.LASF129:
	.string	"link_callback"
.LASF68:
	.string	"MEMP_NETBUF"
.LASF124:
	.string	"netmask"
.LASF8:
	.string	"long long int"
.LASF35:
	.string	"ERR_IF"
.LASF128:
	.string	"status_callback"
.LASF64:
	.string	"MEMP_TCP_PCB"
.LASF111:
	.string	"memp"
.LASF17:
	.string	"u8_t"
.LASF81:
	.string	"used"
.LASF87:
	.string	"chkerr"
.LASF183:
	.string	"tmp_group"
.LASF186:
	.string	"igmp_lookfor_group"
.LASF43:
	.string	"PBUF_LINK"
.LASF67:
	.string	"MEMP_ALTCP_PCB"
.LASF120:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF160:
	.string	"inet_chksum"
.LASF167:
	.string	"igmp_delaying_member"
.LASF151:
	.string	"igmp_msg"
.LASF11:
	.string	"long double"
.LASF15:
	.string	"uint16_t"
.LASF163:
	.string	"group"
.LASF60:
	.string	"if_idx"
.LASF169:
	.string	"igmp_start_timer"
.LASF150:
	.string	"ip4_addr_p_t"
.LASF182:
	.string	"igmp_remove_group"
.LASF25:
	.string	"ERR_BUF"
.LASF142:
	.string	"netif_igmp_mac_filter_fn"
.LASF168:
	.string	"maxresp"
.LASF20:
	.string	"u32_t"
.LASF4:
	.string	"short int"
.LASF109:
	.string	"icmp"
.LASF6:
	.string	"long int"
.LASF90:
	.string	"rterr"
.LASF80:
	.string	"avail"
.LASF73:
	.string	"MEMP_SYS_TIMEOUT"
.LASF63:
	.string	"MEMP_UDP_PCB"
.LASF105:
	.string	"mbox"
.LASF166:
	.string	"igmp_send"
.LASF28:
	.string	"ERR_INPROGRESS"
.LASF52:
	.string	"ip4_addr"
.LASF33:
	.string	"ERR_ISCONN"
.LASF93:
	.string	"cachehit"
.LASF135:
	.string	"name"
.LASF181:
	.string	"igmp_ip_output_if"
.LASF188:
	.string	"igmp_stop"
.LASF140:
	.string	"netif_linkoutput_fn"
.LASF62:
	.string	"MEMP_RAW_PCB"
.LASF88:
	.string	"lenerr"
.LASF7:
	.string	"long unsigned int"
.LASF119:
	.string	"netif_mac_filter_action"
.LASF191:
	.string	"bl_rand"
.LASF46:
	.string	"pbuf_layer"
.LASF175:
	.string	"ifaddr"
.LASF187:
	.string	"igmp_report_groups"
.LASF91:
	.string	"proterr"
.LASF153:
	.string	"igmp_maxresp"
.LASF95:
	.string	"rx_v1"
.LASF146:
	.string	"last_reporter_flag"
.LASF164:
	.string	"type"
.LASF103:
	.string	"stats_sys"
.LASF3:
	.string	"unsigned char"
.LASF118:
	.string	"lwip_internal_netif_client_data_index"
.LASF89:
	.string	"memerr"
.LASF66:
	.string	"MEMP_TCP_SEG"
.LASF141:
	.string	"netif_status_callback_fn"
.LASF107:
	.string	"link"
.LASF152:
	.string	"igmp_msgtype"
.LASF54:
	.string	"addr"
.LASF99:
	.string	"tx_join"
.LASF84:
	.string	"xmit"
.LASF86:
	.string	"drop"
.LASF130:
	.string	"state"
.LASF117:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF122:
	.string	"netif"
.LASF112:
	.string	"ip_addr_any"
.LASF137:
	.string	"acd_list"
.LASF100:
	.string	"tx_leave"
.LASF23:
	.string	"ERR_OK"
.LASF85:
	.string	"recv"
.LASF114:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF2:
	.string	"signed char"
.LASF5:
	.string	"short unsigned int"
.LASF144:
	.string	"igmp_group"
.LASF94:
	.string	"stats_igmp"
.LASF34:
	.string	"ERR_CONN"
.LASF172:
	.string	"groupaddr"
.LASF27:
	.string	"ERR_RTE"
.LASF22:
	.string	"ip_addr_t"
.LASF74:
	.string	"MEMP_NETDB"
.LASF78:
	.string	"memp_t"
.LASF44:
	.string	"PBUF_RAW_TX"
.LASF48:
	.string	"PBUF_ROM"
.LASF148:
	.string	"timer"
.LASF190:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF115:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF184:
	.string	"igmp_lookup_group"
.LASF24:
	.string	"ERR_MEM"
.LASF165:
	.string	"dest"
.LASF157:
	.string	"allrouters"
.LASF156:
	.string	"allsystems"
.LASF123:
	.string	"ip_addr"
.LASF171:
	.string	"igmp_timeout"
.LASF96:
	.string	"rx_group"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/ipv4/igmp.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
