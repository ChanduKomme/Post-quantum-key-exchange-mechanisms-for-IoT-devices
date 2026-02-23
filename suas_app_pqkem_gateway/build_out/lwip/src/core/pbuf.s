	.file	"pbuf.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/pbuf.c"
	.globl	pbuf_free_ooseq_pending
	.section	.sbss.pbuf_free_ooseq_pending,"aw",@nobits
	.type	pbuf_free_ooseq_pending, @object
	.size	pbuf_free_ooseq_pending, 1
pbuf_free_ooseq_pending:
	.zero	1
	.section	.text.pbuf_free_ooseq,"ax",@progbits
	.align	1
	.type	pbuf_free_ooseq, @function
pbuf_free_ooseq:
.LFB6:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/pbuf.c"
	.loc 1 129 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
.LBB2:
	.loc 1 131 42
	call	sys_arch_protect
	sw	a0,-24(s0)
	.loc 1 131 86 discriminator 1
	lui	a5,%hi(pbuf_free_ooseq_pending)
	sb	zero,%lo(pbuf_free_ooseq_pending)(a5)
	.loc 1 131 91 discriminator 1
	lw	a0,-24(s0)
	call	sys_arch_unprotect
.LBE2:
	.loc 1 133 12
	lui	a5,%hi(tcp_active_pcbs)
	lw	a5,%lo(tcp_active_pcbs)(a5)
	sw	a5,-20(s0)
	.loc 1 133 3
	j	.L2
.L5:
	.loc 1 134 12
	lw	a5,-20(s0)
	lw	a5,116(a5)
	.loc 1 134 8
	beq	a5,zero,.L3
	.loc 1 137 7
	lw	a0,-20(s0)
	call	tcp_free_ooseq
	.loc 1 138 7
	j	.L1
.L3:
	.loc 1 133 47 discriminator 2
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
.L2:
	.loc 1 133 35 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L5
.L1:
	.loc 1 141 1
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
	.size	pbuf_free_ooseq, .-pbuf_free_ooseq
	.section	.text.pbuf_free_ooseq_callback,"ax",@progbits
	.align	1
	.type	pbuf_free_ooseq_callback, @function
pbuf_free_ooseq_callback:
.LFB7:
	.loc 1 149 1
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
	.loc 1 151 3
	call	pbuf_free_ooseq
	.loc 1 152 1
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
	.size	pbuf_free_ooseq_callback, .-pbuf_free_ooseq_callback
	.section	.text.pbuf_pool_is_empty,"ax",@progbits
	.align	1
	.type	pbuf_pool_is_empty, @function
pbuf_pool_is_empty:
.LFB8:
	.loc 1 158 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 164 15
	call	sys_arch_protect
	sw	a0,-20(s0)
	.loc 1 165 10
	lui	a5,%hi(pbuf_free_ooseq_pending)
	lbu	a5,%lo(pbuf_free_ooseq_pending)(a5)
	sb	a5,-21(s0)
	.loc 1 166 27
	lui	a5,%hi(pbuf_free_ooseq_pending)
	li	a4,1
	sb	a4,%lo(pbuf_free_ooseq_pending)(a5)
	.loc 1 167 3
	lw	a0,-20(s0)
	call	sys_arch_unprotect
	.loc 1 169 6
	lbu	a5,-21(s0)
	bne	a5,zero,.L9
	.loc 1 171 14
	li	a1,0
	lui	a5,%hi(pbuf_free_ooseq_callback)
	addi	a0,a5,%lo(pbuf_free_ooseq_callback)
	call	tcpip_try_callback
	mv	a5,a0
	.loc 1 171 13 discriminator 1
	beq	a5,zero,.L9
	.loc 1 171 31 discriminator 2
	call	sys_arch_protect
	sw	a0,-20(s0)
	.loc 1 171 75 discriminator 3
	lui	a5,%hi(pbuf_free_ooseq_pending)
	sb	zero,%lo(pbuf_free_ooseq_pending)(a5)
	.loc 1 171 80 discriminator 3
	lw	a0,-20(s0)
	call	sys_arch_unprotect
.L9:
	.loc 1 174 1
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
	.size	pbuf_pool_is_empty, .-pbuf_pool_is_empty
	.section	.text.pbuf_init_alloced_pbuf,"ax",@progbits
	.align	1
	.type	pbuf_init_alloced_pbuf, @function
pbuf_init_alloced_pbuf:
.LFB9:
	.loc 1 180 1
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
	mv	a1,a2
	mv	a2,a3
	mv	a3,a4
	mv	a4,a5
	mv	a5,a1
	sh	a5,-26(s0)
	mv	a5,a2
	sh	a5,-28(s0)
	mv	a5,a3
	sh	a5,-30(s0)
	mv	a5,a4
	sb	a5,-31(s0)
	.loc 1 181 11
	lw	a5,-20(s0)
	sw	zero,0(a5)
	.loc 1 182 14
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	.loc 1 183 14
	lw	a5,-20(s0)
	lhu	a4,-26(s0)
	sh	a4,8(a5)
	.loc 1 184 10
	lw	a5,-20(s0)
	lhu	a4,-28(s0)
	sh	a4,10(a5)
	.loc 1 185 22
	lhu	a5,-30(s0)
	andi	a4,a5,0xff
	.loc 1 185 20
	lw	a5,-20(s0)
	sb	a4,12(a5)
	.loc 1 186 12
	lw	a5,-20(s0)
	lbu	a4,-31(s0)
	sb	a4,13(a5)
	.loc 1 187 10
	lw	a5,-20(s0)
	li	a4,1
	sb	a4,14(a5)
	.loc 1 188 13
	lw	a5,-20(s0)
	sb	zero,15(a5)
	.loc 1 191 1
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
.LFE9:
	.size	pbuf_init_alloced_pbuf, .-pbuf_init_alloced_pbuf
	.section	.text.pbuf_alloc,"ax",@progbits
	.align	1
	.globl	pbuf_alloc
	.type	pbuf_alloc, @function
pbuf_alloc:
.LFB10:
	.loc 1 227 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a3,a1
	mv	a4,a2
	sb	a5,-49(s0)
	mv	a5,a3
	sh	a5,-52(s0)
	mv	a5,a4
	sh	a5,-54(s0)
	.loc 1 229 9
	lbu	a5,-49(s0)
	sh	a5,-22(s0)
	.loc 1 232 3
	lhu	a5,-54(s0)
	li	a4,640
	beq	a5,a4,.L12
	li	a4,640
	bgt	a5,a4,.L13
	li	a4,386
	beq	a5,a4,.L14
	li	a4,386
	bgt	a5,a4,.L13
	li	a4,1
	beq	a5,a4,.L15
	li	a4,65
	bne	a5,a4,.L13
.L15:
	.loc 1 235 11
	lhu	a4,-54(s0)
	lhu	a5,-52(s0)
	mv	a2,a4
	mv	a1,a5
	li	a0,0
	call	pbuf_alloc_reference
	sw	a0,-20(s0)
	.loc 1 236 7
	j	.L16
.L14:
.LBB3:
	.loc 1 240 9
	sw	zero,-20(s0)
	.loc 1 241 12
	sw	zero,-28(s0)
	.loc 1 242 15
	lhu	a5,-52(s0)
	sh	a5,-30(s0)
.L23:
.LBB4:
	.loc 1 245 28
	li	a0,14
	call	memp_malloc
	sw	a0,-40(s0)
	.loc 1 246 12
	lw	a5,-40(s0)
	bne	a5,zero,.L17
	.loc 1 247 11
	call	pbuf_pool_is_empty
	.loc 1 249 14
	lw	a5,-20(s0)
	beq	a5,zero,.L18
	.loc 1 250 13
	lw	a0,-20(s0)
	call	pbuf_free
.L18:
	.loc 1 253 17
	li	a5,0
	j	.L19
.L17:
	.loc 1 255 86
	lhu	a5,-22(s0)
	addi	a5,a5,3
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 255 92
	andi	a5,a5,-4
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 255 31
	li	a4,760
	sub	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 255 14
	mv	a2,a5
	lhu	a5,-30(s0)
	slli	a3,a5,16
	srli	a3,a3,16
	slli	a4,a2,16
	srli	a4,a4,16
	bleu	a3,a4,.L20
	mv	a5,a2
.L20:
	sh	a5,-42(s0)
	.loc 1 256 125
	lhu	a5,-22(s0)
	addi	a5,a5,16
	.loc 1 256 58
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 1 256 140
	addi	a5,a5,3
	.loc 1 256 145
	andi	a5,a5,-4
	.loc 1 256 9
	mv	a1,a5
	lhu	a4,-54(s0)
	lhu	a3,-42(s0)
	lhu	a2,-30(s0)
	li	a5,0
	lw	a0,-40(s0)
	call	pbuf_init_alloced_pbuf
	.loc 1 262 12
	lw	a5,-20(s0)
	bne	a5,zero,.L21
	.loc 1 264 13
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	j	.L22
.L21:
	.loc 1 267 22
	lw	a5,-28(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
.L22:
	.loc 1 269 14
	lw	a5,-40(s0)
	sw	a5,-28(s0)
	.loc 1 270 17
	lhu	a5,-30(s0)
	mv	a4,a5
	lhu	a5,-42(s0)
	sub	a5,a4,a5
	sh	a5,-30(s0)
	.loc 1 271 16
	sh	zero,-22(s0)
.LBE4:
	.loc 1 272 24
	lhu	a5,-30(s0)
	bne	a5,zero,.L23
	.loc 1 273 7
	j	.L16
.L12:
.LBE3:
.LBB5:
	.loc 1 276 60
	lhu	a5,-22(s0)
	addi	a5,a5,3
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 276 66
	andi	a5,a5,-4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 276 95
	lhu	a5,-52(s0)
	addi	a5,a5,3
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 276 101
	andi	a5,a5,-4
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 276 18
	add	a5,a4,a5
	sh	a5,-32(s0)
	.loc 1 277 18
	lhu	a5,-32(s0)
	addi	a5,a5,16
	sh	a5,-34(s0)
	.loc 1 280 24
	lhu	a4,-32(s0)
	.loc 1 280 41
	lhu	a5,-52(s0)
	addi	a5,a5,3
	.loc 1 280 47
	andi	a5,a5,-4
	.loc 1 280 10
	bltu	a4,a5,.L24
	.loc 1 281 22
	lhu	a4,-34(s0)
	.loc 1 281 39
	lhu	a5,-52(s0)
	addi	a5,a5,3
	.loc 1 281 45
	andi	a5,a5,-4
	.loc 1 280 60 discriminator 1
	bgeu	a4,a5,.L25
.L24:
	.loc 1 282 15
	li	a5,0
	j	.L19
.L25:
	.loc 1 286 26
	lhu	a5,-34(s0)
	mv	a0,a5
	call	mem_malloc
	sw	a0,-20(s0)
	.loc 1 287 10
	lw	a5,-20(s0)
	bne	a5,zero,.L26
	.loc 1 288 15
	li	a5,0
	j	.L19
.L26:
	.loc 1 290 123
	lhu	a5,-22(s0)
	addi	a5,a5,16
	.loc 1 290 56
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 1 290 138
	addi	a5,a5,3
	.loc 1 290 143
	andi	a5,a5,-4
	.loc 1 290 7
	mv	a1,a5
	lhu	a4,-54(s0)
	lhu	a3,-52(s0)
	lhu	a2,-52(s0)
	li	a5,0
	lw	a0,-20(s0)
	call	pbuf_init_alloced_pbuf
	.loc 1 294 7
	j	.L16
.L13:
.LBE5:
	.loc 1 298 13
	li	a5,0
	j	.L19
.L16:
	.loc 1 301 10
	lw	a5,-20(s0)
.L19:
	.loc 1 302 1
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
	.size	pbuf_alloc, .-pbuf_alloc
	.section	.text.pbuf_alloc_reference,"ax",@progbits
	.align	1
	.globl	pbuf_alloc_reference
	.type	pbuf_alloc_reference, @function
pbuf_alloc_reference:
.LFB11:
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
	mv	a5,a1
	mv	a4,a2
	sh	a5,-38(s0)
	mv	a5,a4
	sh	a5,-40(s0)
	.loc 1 334 22
	li	a0,13
	call	memp_malloc
	sw	a0,-20(s0)
	.loc 1 335 6
	lw	a5,-20(s0)
	bne	a5,zero,.L28
	.loc 1 339 11
	li	a5,0
	j	.L29
.L28:
	.loc 1 341 3
	lhu	a4,-40(s0)
	lhu	a3,-38(s0)
	lhu	a2,-38(s0)
	li	a5,0
	lw	a1,-36(s0)
	lw	a0,-20(s0)
	call	pbuf_init_alloced_pbuf
	.loc 1 342 10
	lw	a5,-20(s0)
.L29:
	.loc 1 343 1
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
	.size	pbuf_alloc_reference, .-pbuf_alloc_reference
	.section	.text.pbuf_alloced_custom,"ax",@progbits
	.align	1
	.globl	pbuf_alloced_custom
	.type	pbuf_alloced_custom, @function
pbuf_alloced_custom:
.LFB12:
	.loc 1 367 1
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
	mv	a4,a5
	mv	a5,a0
	sb	a5,-33(s0)
	mv	a5,a1
	sh	a5,-36(s0)
	mv	a5,a2
	sh	a5,-38(s0)
	mv	a5,a4
	sh	a5,-40(s0)
	.loc 1 368 9
	lbu	a5,-33(s0)
	sh	a5,-22(s0)
	.loc 1 372 22
	lhu	a5,-22(s0)
	addi	a5,a5,3
	.loc 1 372 28
	andi	a4,a5,-4
	.loc 1 372 40
	lhu	a5,-36(s0)
	add	a4,a4,a5
	.loc 1 372 49
	lhu	a5,-40(s0)
	.loc 1 372 6
	bleu	a4,a5,.L31
	.loc 1 374 11
	li	a5,0
	j	.L32
.L31:
	.loc 1 377 6
	lw	a5,-48(s0)
	beq	a5,zero,.L33
	.loc 1 378 52
	lhu	a5,-22(s0)
	addi	a5,a5,3
	.loc 1 378 58
	andi	a5,a5,-4
	.loc 1 378 13
	lw	a4,-48(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	j	.L34
.L33:
	.loc 1 380 13
	sw	zero,-20(s0)
.L34:
	.loc 1 382 3
	lw	a0,-44(s0)
	lhu	a4,-38(s0)
	lhu	a3,-36(s0)
	lhu	a2,-36(s0)
	li	a5,2
	lw	a1,-20(s0)
	call	pbuf_init_alloced_pbuf
	.loc 1 383 10
	lw	a5,-44(s0)
.L32:
	.loc 1 384 1
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
.LFE12:
	.size	pbuf_alloced_custom, .-pbuf_alloced_custom
	.section	.text.pbuf_realloc,"ax",@progbits
	.align	1
	.globl	pbuf_realloc
	.type	pbuf_realloc, @function
pbuf_realloc:
.LFB13:
	.loc 1 405 1
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
	sh	a5,-38(s0)
	.loc 1 413 19
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	.loc 1 413 6
	lhu	a4,-38(s0)
	bgeu	a4,a5,.L42
	.loc 1 420 21
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	.loc 1 420 10
	lhu	a4,-38(s0)
	sub	a5,a5,a4
	sh	a5,-24(s0)
	.loc 1 423 11
	lhu	a5,-38(s0)
	sh	a5,-22(s0)
	.loc 1 424 5
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 426 9
	j	.L38
.L39:
	.loc 1 428 34
	lw	a5,-20(s0)
	lhu	a5,10(a5)
	.loc 1 428 13
	lhu	a4,-22(s0)
	sub	a5,a4,a5
	sh	a5,-22(s0)
	.loc 1 430 27
	lw	a5,-20(s0)
	lhu	a5,8(a5)
	.loc 1 430 18
	lhu	a4,-24(s0)
	sub	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 430 16
	lw	a5,-20(s0)
	sh	a4,8(a5)
	.loc 1 432 7
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L38:
	.loc 1 426 21
	lw	a5,-20(s0)
	lhu	a5,10(a5)
	.loc 1 426 18
	lhu	a4,-22(s0)
	bgtu	a4,a5,.L39
	.loc 1 440 12
	lw	a5,-20(s0)
	lbu	a5,12(a5)
	.loc 1 440 28
	andi	a5,a5,15
	.loc 1 440 6
	bne	a5,zero,.L40
	.loc 1 440 72 discriminator 1
	lw	a5,-20(s0)
	lhu	a5,10(a5)
	.loc 1 440 56 discriminator 1
	lhu	a4,-22(s0)
	beq	a4,a5,.L40
	.loc 1 442 13
	lw	a5,-20(s0)
	lbu	a5,13(a5)
	.loc 1 442 21
	andi	a5,a5,2
	.loc 1 442 7
	bne	a5,zero,.L40
.LBB6:
	.loc 1 446 72
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 446 82
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 1 446 37
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 446 49
	lhu	a4,-22(s0)
	add	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 446 37
	mv	a1,a5
	lw	a0,-20(s0)
	call	mem_trim
	sw	a0,-28(s0)
.L40:
.LBE6:
	.loc 1 453 10
	lw	a5,-20(s0)
	lhu	a4,-22(s0)
	sh	a4,10(a5)
	.loc 1 454 17
	lw	a5,-20(s0)
	lhu	a4,10(a5)
	.loc 1 454 14
	lw	a5,-20(s0)
	sh	a4,8(a5)
	.loc 1 457 8
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 457 6
	beq	a5,zero,.L41
	.loc 1 459 5
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	pbuf_free
.L41:
	.loc 1 462 11
	lw	a5,-20(s0)
	sw	zero,0(a5)
	j	.L35
.L42:
	.loc 1 415 5
	nop
.L35:
	.loc 1 464 1
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
	.size	pbuf_realloc, .-pbuf_realloc
	.section	.text.pbuf_add_header_impl,"ax",@progbits
	.align	1
	.type	pbuf_add_header_impl, @function
pbuf_add_header_impl:
.LFB14:
	.loc 1 479 1
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
	.loc 1 485 6
	lw	a5,-36(s0)
	beq	a5,zero,.L44
	.loc 1 485 18 discriminator 1
	lw	a4,-40(s0)
	li	a5,65536
	bltu	a4,a5,.L45
.L44:
	.loc 1 486 12
	li	a5,1
	j	.L46
.L45:
	.loc 1 488 6
	lw	a5,-40(s0)
	bne	a5,zero,.L47
	.loc 1 489 12
	li	a5,0
	j	.L46
.L47:
	.loc 1 492 23
	lw	a5,-40(s0)
	sh	a5,-22(s0)
	.loc 1 494 38
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	.loc 1 494 7
	lhu	a4,-22(s0)
	add	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 494 6
	lhu	a4,-22(s0)
	bleu	a4,a5,.L48
	.loc 1 495 12
	li	a5,1
	j	.L46
.L48:
	.loc 1 498 20
	lw	a5,-36(s0)
	lbu	a5,12(a5)
	.loc 1 498 17
	sh	a5,-24(s0)
	.loc 1 501 21
	lhu	a5,-24(s0)
	andi	a5,a5,128
	.loc 1 501 6
	beq	a5,zero,.L49
	.loc 1 503 24
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 1 503 34
	lw	a5,-40(s0)
	neg	a5,a5
	.loc 1 503 13
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 505 37
	lw	a5,-36(s0)
	addi	a5,a5,16
	.loc 1 505 8
	lw	a4,-20(s0)
	bgeu	a4,a5,.L50
	.loc 1 510 14
	li	a5,1
	j	.L46
.L49:
	.loc 1 515 8
	lbu	a5,-41(s0)
	beq	a5,zero,.L51
	.loc 1 516 26
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 1 516 36
	lw	a5,-40(s0)
	neg	a5,a5
	.loc 1 516 15
	add	a5,a4,a5
	sw	a5,-20(s0)
	j	.L50
.L51:
	.loc 1 520 14
	li	a5,1
	j	.L46
.L50:
	.loc 1 527 14
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,4(a5)
	.loc 1 528 21
	lw	a5,-36(s0)
	lhu	a5,10(a5)
	.loc 1 528 12
	lhu	a4,-22(s0)
	add	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 528 10
	lw	a5,-36(s0)
	sh	a4,10(a5)
	.loc 1 529 25
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	.loc 1 529 16
	lhu	a4,-22(s0)
	add	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 529 14
	lw	a5,-36(s0)
	sh	a4,8(a5)
	.loc 1 532 10
	li	a5,0
.L46:
	.loc 1 533 1
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
	.size	pbuf_add_header_impl, .-pbuf_add_header_impl
	.section	.text.pbuf_add_header,"ax",@progbits
	.align	1
	.globl	pbuf_add_header
	.type	pbuf_add_header, @function
pbuf_add_header:
.LFB15:
	.loc 1 557 1
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
	.loc 1 558 10
	li	a2,0
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	pbuf_add_header_impl
	mv	a5,a0
	.loc 1 559 1
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
	.size	pbuf_add_header, .-pbuf_add_header
	.section	.text.pbuf_add_header_force,"ax",@progbits
	.align	1
	.globl	pbuf_add_header_force
	.type	pbuf_add_header_force, @function
pbuf_add_header_force:
.LFB16:
	.loc 1 567 1
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
	.loc 1 568 10
	li	a2,1
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	pbuf_add_header_impl
	mv	a5,a0
	.loc 1 569 1
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
.LFE16:
	.size	pbuf_add_header_force, .-pbuf_add_header_force
	.section	.text.pbuf_remove_header,"ax",@progbits
	.align	1
	.globl	pbuf_remove_header
	.type	pbuf_remove_header, @function
pbuf_remove_header:
.LFB17:
	.loc 1 588 1
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
	.loc 1 593 6
	lw	a5,-36(s0)
	beq	a5,zero,.L57
	.loc 1 593 18 discriminator 1
	lw	a4,-40(s0)
	li	a5,65536
	bltu	a4,a5,.L58
.L57:
	.loc 1 594 12
	li	a5,1
	j	.L59
.L58:
	.loc 1 596 6
	lw	a5,-40(s0)
	bne	a5,zero,.L60
	.loc 1 597 12
	li	a5,0
	j	.L59
.L60:
	.loc 1 600 23
	lw	a5,-40(s0)
	sh	a5,-18(s0)
	.loc 1 602 39
	lw	a5,-36(s0)
	lhu	a5,10(a5)
	.loc 1 602 11
	lhu	a4,-18(s0)
	bleu	a4,a5,.L61
	.loc 1 602 59 discriminator 1
	li	a5,1
	.loc 1 602 59 is_stmt 0
	j	.L59
.L61:
	.loc 1 605 11 is_stmt 1
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 609 25
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 1 609 35
	lw	a5,-40(s0)
	add	a4,a4,a5
	.loc 1 609 14
	lw	a5,-36(s0)
	sw	a4,4(a5)
	.loc 1 611 21
	lw	a5,-36(s0)
	lhu	a5,10(a5)
	.loc 1 611 12
	lhu	a4,-18(s0)
	sub	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 611 10
	lw	a5,-36(s0)
	sh	a4,10(a5)
	.loc 1 612 25
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	.loc 1 612 16
	lhu	a4,-18(s0)
	sub	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 612 14
	lw	a5,-36(s0)
	sh	a4,8(a5)
	.loc 1 617 10
	li	a5,0
.L59:
	.loc 1 618 1
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
	.size	pbuf_remove_header, .-pbuf_remove_header
	.section	.text.pbuf_header_impl,"ax",@progbits
	.align	1
	.type	pbuf_header_impl, @function
pbuf_header_impl:
.LFB18:
	.loc 1 622 1
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
	mv	a4,a2
	sh	a5,-22(s0)
	mv	a5,a4
	sb	a5,-23(s0)
	.loc 1 623 6
	lh	a5,-22(s0)
	bge	a5,zero,.L63
	.loc 1 624 34
	lh	a5,-22(s0)
	.loc 1 624 12
	neg	a5,a5
	mv	a1,a5
	lw	a0,-20(s0)
	call	pbuf_remove_header
	mv	a5,a0
	j	.L64
.L63:
	.loc 1 626 12
	lh	a5,-22(s0)
	lbu	a4,-23(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-20(s0)
	call	pbuf_add_header_impl
	mv	a5,a0
.L64:
	.loc 1 628 1
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
	.size	pbuf_header_impl, .-pbuf_header_impl
	.section	.text.pbuf_header,"ax",@progbits
	.align	1
	.globl	pbuf_header
	.type	pbuf_header, @function
pbuf_header:
.LFB19:
	.loc 1 652 1
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
	.loc 1 653 10
	lh	a5,-22(s0)
	li	a2,0
	mv	a1,a5
	lw	a0,-20(s0)
	call	pbuf_header_impl
	mv	a5,a0
	.loc 1 654 1
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
	.size	pbuf_header, .-pbuf_header
	.section	.text.pbuf_header_force,"ax",@progbits
	.align	1
	.globl	pbuf_header_force
	.type	pbuf_header_force, @function
pbuf_header_force:
.LFB20:
	.loc 1 662 1
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
	.loc 1 663 10
	lh	a5,-22(s0)
	li	a2,1
	mv	a1,a5
	lw	a0,-20(s0)
	call	pbuf_header_impl
	mv	a5,a0
	.loc 1 664 1
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
	.size	pbuf_header_force, .-pbuf_header_force
	.section	.text.pbuf_free_header,"ax",@progbits
	.align	1
	.globl	pbuf_free_header
	.type	pbuf_free_header, @function
pbuf_free_header:
.LFB21:
	.loc 1 677 1
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
	sh	a5,-38(s0)
	.loc 1 678 16
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 679 9
	lhu	a5,-38(s0)
	sh	a5,-22(s0)
	.loc 1 680 9
	j	.L70
.L74:
	.loc 1 681 23
	lw	a5,-20(s0)
	lhu	a5,10(a5)
	.loc 1 681 8
	lhu	a4,-22(s0)
	bltu	a4,a5,.L71
.LBB7:
	.loc 1 682 20
	lw	a5,-20(s0)
	sw	a5,-28(s0)
	.loc 1 683 40
	lw	a5,-20(s0)
	lhu	a5,10(a5)
	.loc 1 683 17
	lhu	a4,-22(s0)
	sub	a5,a4,a5
	sh	a5,-22(s0)
	.loc 1 684 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 685 15
	lw	a5,-28(s0)
	sw	zero,0(a5)
	.loc 1 686 7
	lw	a0,-28(s0)
	call	pbuf_free
.LBE7:
	j	.L70
.L71:
	.loc 1 688 7
	lhu	a5,-22(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	pbuf_remove_header
	.loc 1 689 17
	sh	zero,-22(s0)
.L70:
	.loc 1 680 20
	lhu	a5,-22(s0)
	beq	a5,zero,.L73
	.loc 1 680 20 is_stmt 0 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L74
.L73:
	.loc 1 692 10 is_stmt 1
	lw	a5,-20(s0)
	.loc 1 693 1
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
.LFE21:
	.size	pbuf_free_header, .-pbuf_free_header
	.section	.text.pbuf_free,"ax",@progbits
	.align	1
	.globl	pbuf_free
	.type	pbuf_free, @function
pbuf_free:
.LFB22:
	.loc 1 730 1
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
	.loc 1 735 6
	lw	a5,-52(s0)
	bne	a5,zero,.L77
	.loc 1 740 12
	li	a5,0
	j	.L78
.L77:
	.loc 1 746 9
	sb	zero,-17(s0)
	.loc 1 749 9
	j	.L79
.L86:
.LBB8:
	.loc 1 755 17
	call	sys_arch_protect
	sw	a0,-24(s0)
	.loc 1 759 15
	lw	a5,-52(s0)
	lbu	a5,14(a5)
	.loc 1 759 11
	addi	a5,a5,-1
	andi	a4,a5,0xff
	.loc 1 759 9
	lw	a5,-52(s0)
	sb	a4,14(a5)
	lw	a5,-52(s0)
	lbu	a5,14(a5)
	sb	a5,-25(s0)
	.loc 1 760 5
	lw	a0,-24(s0)
	call	sys_arch_unprotect
	.loc 1 762 8
	lbu	a5,-25(s0)
	bne	a5,zero,.L80
	.loc 1 764 9
	lw	a5,-52(s0)
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 766 23
	lw	a5,-52(s0)
	lbu	a5,12(a5)
	.loc 1 766 17
	andi	a5,a5,15
	sb	a5,-33(s0)
	.loc 1 769 13
	lw	a5,-52(s0)
	lbu	a5,13(a5)
	.loc 1 769 21
	andi	a5,a5,2
	.loc 1 769 10
	beq	a5,zero,.L81
.LBB9:
	.loc 1 770 29
	lw	a5,-52(s0)
	sw	a5,-40(s0)
	.loc 1 772 11
	lw	a5,-40(s0)
	lw	a5,16(a5)
	.loc 1 772 9
	lw	a0,-52(s0)
	jalr	a5
.LVL0:
.LBE9:
	j	.L82
.L81:
	.loc 1 777 12
	lbu	a4,-33(s0)
	li	a5,2
	bne	a4,a5,.L83
	.loc 1 778 11
	lw	a1,-52(s0)
	li	a0,14
	call	memp_free
	j	.L82
.L83:
	.loc 1 780 19
	lbu	a4,-33(s0)
	li	a5,1
	bne	a4,a5,.L84
	.loc 1 781 11
	lw	a1,-52(s0)
	li	a0,13
	call	memp_free
	j	.L82
.L84:
	.loc 1 783 19
	lbu	a5,-33(s0)
	bne	a5,zero,.L82
	.loc 1 784 11
	lw	a0,-52(s0)
	call	mem_free
.L82:
	.loc 1 790 12
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
	.loc 1 792 9
	lw	a5,-32(s0)
	sw	a5,-52(s0)
	j	.L79
.L80:
	.loc 1 798 9
	sw	zero,-52(s0)
.L79:
.LBE8:
	.loc 1 749 12
	lw	a5,-52(s0)
	bne	a5,zero,.L86
	.loc 1 803 10
	lbu	a5,-17(s0)
.L78:
	.loc 1 804 1
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
	.size	pbuf_free, .-pbuf_free
	.section	.text.pbuf_clen,"ax",@progbits
	.align	1
	.globl	pbuf_clen
	.type	pbuf_clen, @function
pbuf_clen:
.LFB23:
	.loc 1 814 1
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
	.loc 1 817 7
	sh	zero,-18(s0)
	.loc 1 818 9
	j	.L88
.L89:
	.loc 1 819 5
	lhu	a5,-18(s0)
	addi	a5,a5,1
	sh	a5,-18(s0)
	.loc 1 820 7
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-36(s0)
.L88:
	.loc 1 818 12
	lw	a5,-36(s0)
	bne	a5,zero,.L89
	.loc 1 822 10
	lhu	a5,-18(s0)
	.loc 1 823 1
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
	.size	pbuf_clen, .-pbuf_clen
	.section	.text.pbuf_ref,"ax",@progbits
	.align	1
	.globl	pbuf_ref
	.type	pbuf_ref, @function
pbuf_ref:
.LFB24:
	.loc 1 834 1
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
	.loc 1 836 6
	lw	a5,-36(s0)
	beq	a5,zero,.L93
.LBB10:
	.loc 1 837 44
	call	sys_arch_protect
	sw	a0,-20(s0)
	.loc 1 837 81 discriminator 1
	lw	a5,-36(s0)
	lbu	a5,14(a5)
	.loc 1 837 73 discriminator 1
	addi	a5,a5,1
	andi	a4,a5,0xff
	.loc 1 837 71 discriminator 1
	lw	a5,-36(s0)
	sb	a4,14(a5)
	.loc 1 837 93 discriminator 1
	lw	a0,-20(s0)
	call	sys_arch_unprotect
.L93:
.LBE10:
	.loc 1 840 1
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
	.size	pbuf_ref, .-pbuf_ref
	.section	.text.pbuf_cat,"ax",@progbits
	.align	1
	.globl	pbuf_cat
	.type	pbuf_cat, @function
pbuf_cat:
.LFB25:
	.loc 1 858 1
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
	.loc 1 861 11
	lw	a5,-36(s0)
	beq	a5,zero,.L100
	.loc 1 861 12 discriminator 2
	lw	a5,-40(s0)
	beq	a5,zero,.L100
	.loc 1 866 10
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 866 3
	j	.L98
.L99:
	.loc 1 868 27
	lw	a5,-20(s0)
	lhu	a4,8(a5)
	.loc 1 868 40
	lw	a5,-40(s0)
	lhu	a5,8(a5)
	.loc 1 868 18
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 868 16
	lw	a5,-20(s0)
	sh	a4,8(a5)
	.loc 1 866 33 discriminator 3
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L98:
	.loc 1 866 16 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 866 23 discriminator 1
	bne	a5,zero,.L99
	.loc 1 874 25
	lw	a5,-20(s0)
	lhu	a4,8(a5)
	.loc 1 874 38
	lw	a5,-40(s0)
	lhu	a5,8(a5)
	.loc 1 874 16
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 874 14
	lw	a5,-20(s0)
	sh	a4,8(a5)
	.loc 1 876 11
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	j	.L94
.L100:
	.loc 1 861 11
	nop
.L94:
	.loc 1 880 1
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
	.size	pbuf_cat, .-pbuf_cat
	.section	.text.pbuf_chain,"ax",@progbits
	.align	1
	.globl	pbuf_chain
	.type	pbuf_chain, @function
pbuf_chain:
.LFB26:
	.loc 1 901 1
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
	.loc 1 902 3
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	pbuf_cat
	.loc 1 904 3
	lw	a0,-24(s0)
	call	pbuf_ref
	.loc 1 906 1
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
	.size	pbuf_chain, .-pbuf_chain
	.section	.text.pbuf_dechain,"ax",@progbits
	.align	1
	.globl	pbuf_dechain
	.type	pbuf_dechain, @function
pbuf_dechain:
.LFB27:
	.loc 1 918 1
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
	.loc 1 920 8
	li	a5,1
	sb	a5,-17(s0)
	.loc 1 922 5
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 924 6
	lw	a5,-24(s0)
	beq	a5,zero,.L103
	.loc 1 928 27
	lw	a5,-36(s0)
	lhu	a4,8(a5)
	.loc 1 928 40
	lw	a5,-36(s0)
	lhu	a5,10(a5)
	.loc 1 928 18
	sub	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 928 16
	lw	a5,-24(s0)
	sh	a4,8(a5)
	.loc 1 930 13
	lw	a5,-36(s0)
	sw	zero,0(a5)
	.loc 1 932 19
	lw	a5,-36(s0)
	lhu	a4,10(a5)
	.loc 1 932 16
	lw	a5,-36(s0)
	sh	a4,8(a5)
	.loc 1 935 17
	lw	a0,-24(s0)
	call	pbuf_free
	mv	a5,a0
	sb	a5,-17(s0)
.L103:
	.loc 1 944 33
	lbu	a5,-17(s0)
	bne	a5,zero,.L104
	.loc 1 944 33 is_stmt 0 discriminator 1
	lw	a5,-24(s0)
	.loc 1 944 33
	j	.L106
.L104:
	.loc 1 944 33 discriminator 2
	li	a5,0
.L106:
	.loc 1 945 1 is_stmt 1
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
.LFE27:
	.size	pbuf_dechain, .-pbuf_dechain
	.section	.text.pbuf_copy,"ax",@progbits
	.align	1
	.globl	pbuf_copy
	.type	pbuf_copy, @function
pbuf_copy:
.LFB28:
	.loc 1 963 1
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
	.loc 1 967 11
	lw	a5,-24(s0)
	bne	a5,zero,.L108
	.loc 1 967 16 discriminator 1
	li	a5,-16
	.loc 1 967 16 is_stmt 0
	j	.L109
.L108:
	.loc 1 968 53 is_stmt 1
	lw	a5,-24(s0)
	lhu	a5,8(a5)
	.loc 1 968 10
	li	a3,0
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	pbuf_copy_partial_pbuf
	mv	a5,a0
.L109:
	.loc 1 969 1
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
.LFE28:
	.size	pbuf_copy, .-pbuf_copy
	.section	.text.pbuf_copy_partial_pbuf,"ax",@progbits
	.align	1
	.globl	pbuf_copy_partial_pbuf
	.type	pbuf_copy_partial_pbuf, @function
pbuf_copy_partial_pbuf:
.LFB29:
	.loc 1 990 1
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
	sh	a5,-42(s0)
	mv	a5,a4
	sh	a5,-44(s0)
	.loc 1 991 10
	lhu	a5,-44(s0)
	sw	a5,-20(s0)
	.loc 1 991 30
	sw	zero,-24(s0)
	.loc 1 997 11
	lw	a5,-40(s0)
	beq	a5,zero,.L111
	.loc 1 997 14 discriminator 2
	lw	a5,-40(s0)
	lhu	a5,8(a5)
	.loc 1 997 12 discriminator 2
	lhu	a4,-42(s0)
	bleu	a4,a5,.L112
.L111:
	.loc 1 997 51 discriminator 3
	li	a5,-16
	.loc 1 997 51 is_stmt 0
	j	.L113
.L112:
	.loc 1 1000 11 is_stmt 1
	lw	a5,-36(s0)
	beq	a5,zero,.L114
	.loc 1 1000 12 discriminator 2
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	mv	a3,a5
	.loc 1 1000 33 discriminator 2
	lhu	a4,-44(s0)
	lhu	a5,-42(s0)
	add	a5,a4,a5
	.loc 1 1000 12 discriminator 2
	bge	a3,a5,.L115
.L114:
	.loc 1 1000 60 discriminator 3
	li	a5,-16
	.loc 1 1000 60 is_stmt 0
	j	.L113
.L115:
	.loc 1 1006 14 is_stmt 1
	lw	a5,-36(s0)
	lhu	a5,10(a5)
	mv	a4,a5
	.loc 1 1006 20
	lw	a5,-20(s0)
	sub	a4,a4,a5
	.loc 1 1006 43
	lw	a5,-40(s0)
	lhu	a5,10(a5)
	mv	a3,a5
	.loc 1 1006 49
	lw	a5,-24(s0)
	sub	a5,a3,a5
	.loc 1 1006 8
	bltu	a4,a5,.L116
	.loc 1 1008 19
	lw	a5,-40(s0)
	lhu	a5,10(a5)
	mv	a4,a5
	.loc 1 1008 11
	lw	a5,-24(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	j	.L117
.L116:
	.loc 1 1011 17
	lw	a5,-36(s0)
	lhu	a5,10(a5)
	mv	a4,a5
	.loc 1 1011 11
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
.L117:
	.loc 1 1013 46
	lhu	a4,-42(s0)
	.loc 1 1013 9
	lw	a5,-28(s0)
	bleu	a5,a4,.L118
	mv	a5,a4
.L118:
	sw	a5,-28(s0)
	.loc 1 1014 24
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 1 1014 5
	lw	a5,-20(s0)
	add	a3,a4,a5
	.loc 1 1014 60
	lw	a5,-40(s0)
	lw	a4,4(a5)
	.loc 1 1014 5
	lw	a5,-24(s0)
	add	a5,a4,a5
	lw	a2,-28(s0)
	mv	a1,a5
	mv	a0,a3
	call	memcpy
	.loc 1 1015 15
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1016 17
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 1017 16
	lw	a5,-28(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1017 14
	lhu	a4,-42(s0)
	sub	a5,a4,a5
	sh	a5,-42(s0)
	.loc 1 1020 30
	lw	a5,-40(s0)
	lhu	a5,10(a5)
	mv	a4,a5
	.loc 1 1020 8
	lw	a5,-24(s0)
	bltu	a5,a4,.L119
	.loc 1 1022 19
	sw	zero,-24(s0)
	.loc 1 1023 14
	lw	a5,-40(s0)
	lw	a5,0(a5)
	sw	a5,-40(s0)
	.loc 1 1024 15
	lw	a5,-40(s0)
	bne	a5,zero,.L119
	.loc 1 1024 16 discriminator 1
	lhu	a5,-42(s0)
	beq	a5,zero,.L119
	.loc 1 1024 40 discriminator 2
	li	a5,-16
	.loc 1 1024 40 is_stmt 0
	j	.L113
.L119:
	.loc 1 1026 26 is_stmt 1
	lw	a5,-36(s0)
	lhu	a5,10(a5)
	mv	a4,a5
	.loc 1 1026 8
	lw	a5,-20(s0)
	bne	a5,a4,.L120
	.loc 1 1028 17
	sw	zero,-20(s0)
	.loc 1 1029 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 1030 15
	lw	a5,-36(s0)
	bne	a5,zero,.L120
	.loc 1 1030 16 discriminator 1
	lhu	a5,-42(s0)
	beq	a5,zero,.L120
	.loc 1 1030 40 discriminator 2
	li	a5,-16
	.loc 1 1030 40 is_stmt 0
	j	.L113
.L120:
	.loc 1 1033 8 is_stmt 1
	lw	a5,-40(s0)
	beq	a5,zero,.L121
	.loc 1 1033 35 discriminator 1
	lw	a5,-40(s0)
	lhu	a4,10(a5)
	.loc 1 1033 50 discriminator 1
	lw	a5,-40(s0)
	lhu	a5,8(a5)
	.loc 1 1033 25 discriminator 1
	bne	a4,a5,.L121
	.loc 1 1035 25
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 1035 15
	beq	a5,zero,.L121
	.loc 1 1035 21 discriminator 1
	li	a5,-6
	.loc 1 1035 21 is_stmt 0
	j	.L113
.L121:
	.loc 1 1038 8 is_stmt 1
	lw	a5,-36(s0)
	beq	a5,zero,.L122
	.loc 1 1038 31 discriminator 1
	lw	a5,-36(s0)
	lhu	a4,10(a5)
	.loc 1 1038 44 discriminator 1
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	.loc 1 1038 23 discriminator 1
	bne	a4,a5,.L122
	.loc 1 1040 23
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1040 15
	beq	a5,zero,.L122
	.loc 1 1040 21 discriminator 1
	li	a5,-6
	.loc 1 1040 21 is_stmt 0
	j	.L113
.L122:
	.loc 1 1043 12 is_stmt 1
	lhu	a5,-42(s0)
	bne	a5,zero,.L115
	.loc 1 1045 10
	li	a5,0
.L113:
	.loc 1 1046 1
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
	.size	pbuf_copy_partial_pbuf, .-pbuf_copy_partial_pbuf
	.section	.text.pbuf_copy_partial,"ax",@progbits
	.align	1
	.globl	pbuf_copy_partial
	.type	pbuf_copy_partial, @function
pbuf_copy_partial:
.LFB30:
	.loc 1 1062 1
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
	sh	a5,-42(s0)
	mv	a5,a4
	sh	a5,-44(s0)
	.loc 1 1064 9
	sh	zero,-22(s0)
	.loc 1 1066 9
	sh	zero,-26(s0)
	.loc 1 1068 11
	lw	a5,-36(s0)
	bne	a5,zero,.L124
	.loc 1 1068 17 discriminator 1
	li	a5,0
	.loc 1 1068 17 is_stmt 0
	j	.L125
.L124:
	.loc 1 1069 11 is_stmt 1
	lw	a5,-40(s0)
	bne	a5,zero,.L126
	.loc 1 1069 17 discriminator 1
	li	a5,0
	.loc 1 1069 17 is_stmt 0
	j	.L125
.L126:
	.loc 1 1072 10 is_stmt 1
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 1072 3
	j	.L127
.L132:
	.loc 1 1073 8
	lhu	a5,-44(s0)
	beq	a5,zero,.L128
	.loc 1 1073 38 discriminator 1
	lw	a5,-20(s0)
	lhu	a5,10(a5)
	.loc 1 1073 23 discriminator 1
	lhu	a4,-44(s0)
	bltu	a4,a5,.L128
	.loc 1 1075 34
	lw	a5,-20(s0)
	lhu	a5,10(a5)
	.loc 1 1075 14
	lhu	a4,-44(s0)
	sub	a5,a4,a5
	sh	a5,-44(s0)
	j	.L129
.L128:
	.loc 1 1078 31
	lw	a5,-20(s0)
	lhu	a5,10(a5)
	.loc 1 1078 20
	lhu	a4,-44(s0)
	sub	a5,a5,a4
	sh	a5,-24(s0)
	.loc 1 1079 10
	lhu	a4,-24(s0)
	lhu	a5,-42(s0)
	bleu	a4,a5,.L130
	.loc 1 1080 22
	lhu	a5,-42(s0)
	sh	a5,-24(s0)
.L130:
	.loc 1 1083 7
	lhu	a5,-22(s0)
	lw	a4,-40(s0)
	add	a3,a4,a5
	.loc 1 1083 50
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 1083 7
	lhu	a5,-44(s0)
	add	a5,a4,a5
	lhu	a4,-24(s0)
	mv	a2,a4
	mv	a1,a5
	mv	a0,a3
	call	memcpy
	.loc 1 1084 20
	lhu	a5,-26(s0)
	mv	a4,a5
	lhu	a5,-24(s0)
	add	a5,a4,a5
	sh	a5,-26(s0)
	.loc 1 1085 12
	lhu	a5,-22(s0)
	mv	a4,a5
	lhu	a5,-24(s0)
	add	a5,a4,a5
	sh	a5,-22(s0)
	.loc 1 1086 11
	lhu	a5,-42(s0)
	mv	a4,a5
	lhu	a5,-24(s0)
	sub	a5,a4,a5
	sh	a5,-42(s0)
	.loc 1 1087 14
	sh	zero,-44(s0)
.L129:
	.loc 1 1072 41 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L127:
	.loc 1 1072 26 discriminator 1
	lhu	a5,-42(s0)
	beq	a5,zero,.L131
	.loc 1 1072 26 is_stmt 0 discriminator 3
	lw	a5,-20(s0)
	bne	a5,zero,.L132
.L131:
	.loc 1 1090 10 is_stmt 1
	lhu	a5,-26(s0)
.L125:
	.loc 1 1091 1
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
	.size	pbuf_copy_partial, .-pbuf_copy_partial
	.section	.text.pbuf_get_contiguous,"ax",@progbits
	.align	1
	.globl	pbuf_get_contiguous
	.type	pbuf_get_contiguous, @function
pbuf_get_contiguous:
.LFB31:
	.loc 1 1112 1
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
	sh	a5,-46(s0)
	mv	a5,a4
	sh	a5,-48(s0)
	.loc 1 1116 11
	lw	a5,-36(s0)
	bne	a5,zero,.L134
	.loc 1 1116 2 discriminator 1
	li	a5,0
	.loc 1 1116 2 is_stmt 0
	j	.L141
.L134:
	.loc 1 1117 11 is_stmt 1
	lw	a5,-40(s0)
	beq	a5,zero,.L136
	.loc 1 1117 16 discriminator 1
	lhu	a5,-46(s0)
	.loc 1 1117 12 discriminator 1
	lw	a4,-44(s0)
	bgeu	a4,a5,.L136
	.loc 1 1117 2 discriminator 2
	li	a5,0
	.loc 1 1117 2 is_stmt 0
	j	.L141
.L136:
	.loc 1 1119 7 is_stmt 1
	addi	a4,s0,-22
	lhu	a5,-48(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-36(s0)
	call	pbuf_skip_const
	sw	a0,-20(s0)
	.loc 1 1120 6
	lw	a5,-20(s0)
	beq	a5,zero,.L137
	.loc 1 1121 10
	lw	a5,-20(s0)
	lhu	a5,10(a5)
	mv	a4,a5
	.loc 1 1121 31
	lhu	a5,-22(s0)
	mv	a3,a5
	lhu	a5,-46(s0)
	add	a5,a3,a5
	.loc 1 1121 8
	blt	a4,a5,.L138
	.loc 1 1123 23
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 1123 33
	lhu	a4,-22(s0)
	add	a5,a5,a4
	j	.L141
.L138:
	.loc 1 1125 8
	lw	a5,-40(s0)
	bne	a5,zero,.L139
	.loc 1 1127 13
	li	a5,0
	j	.L141
.L139:
	.loc 1 1130 9
	lhu	a4,-22(s0)
	lhu	a5,-46(s0)
	mv	a3,a4
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-20(s0)
	call	pbuf_copy_partial
	mv	a5,a0
	mv	a4,a5
	.loc 1 1130 8 discriminator 1
	lhu	a5,-46(s0)
	beq	a5,a4,.L140
	.loc 1 1132 13
	li	a5,0
	j	.L141
.L140:
	.loc 1 1134 12
	lw	a5,-40(s0)
	j	.L141
.L137:
	.loc 1 1137 9
	li	a5,0
.L141:
	.loc 1 1138 1
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
.LFE31:
	.size	pbuf_get_contiguous, .-pbuf_get_contiguous
	.section	.text.pbuf_skip_const,"ax",@progbits
	.align	1
	.type	pbuf_skip_const, @function
pbuf_skip_const:
.LFB32:
	.loc 1 1193 1
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
	sh	a5,-38(s0)
	.loc 1 1194 9
	lhu	a5,-38(s0)
	sh	a5,-18(s0)
	.loc 1 1195 22
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 1198 9
	j	.L143
.L145:
	.loc 1 1199 42
	lw	a5,-24(s0)
	lhu	a5,10(a5)
	.loc 1 1199 17
	lhu	a4,-18(s0)
	sub	a5,a4,a5
	sh	a5,-18(s0)
	.loc 1 1200 7
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
.L143:
	.loc 1 1198 21
	lw	a5,-24(s0)
	beq	a5,zero,.L144
	.loc 1 1198 26 discriminator 1
	lw	a5,-24(s0)
	lhu	a5,10(a5)
	.loc 1 1198 21 discriminator 1
	lhu	a4,-18(s0)
	bgeu	a4,a5,.L145
.L144:
	.loc 1 1202 6
	lw	a5,-44(s0)
	beq	a5,zero,.L146
	.loc 1 1203 17
	lw	a5,-44(s0)
	lhu	a4,-18(s0)
	sh	a4,0(a5)
.L146:
	.loc 1 1205 10
	lw	a5,-24(s0)
	.loc 1 1206 1
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
	.size	pbuf_skip_const, .-pbuf_skip_const
	.section	.text.pbuf_skip,"ax",@progbits
	.align	1
	.globl	pbuf_skip
	.type	pbuf_skip, @function
pbuf_skip:
.LFB33:
	.loc 1 1219 1
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
	sh	a5,-38(s0)
	.loc 1 1220 28
	lhu	a5,-38(s0)
	lw	a2,-44(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	pbuf_skip_const
	sw	a0,-20(s0)
	.loc 1 1221 11
	lw	a5,-20(s0)
	.loc 1 1222 1
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
.LFE33:
	.size	pbuf_skip, .-pbuf_skip
	.section	.text.pbuf_take,"ax",@progbits
	.align	1
	.globl	pbuf_take
	.type	pbuf_take, @function
pbuf_take:
.LFB34:
	.loc 1 1237 1
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
	.loc 1 1240 10
	lhu	a5,-42(s0)
	sw	a5,-28(s0)
	.loc 1 1241 10
	sw	zero,-32(s0)
	.loc 1 1243 11
	lw	a5,-36(s0)
	bne	a5,zero,.L151
	.loc 1 1243 17 discriminator 1
	li	a5,-16
	.loc 1 1243 17 is_stmt 0
	j	.L152
.L151:
	.loc 1 1244 11 is_stmt 1
	lw	a5,-40(s0)
	bne	a5,zero,.L153
	.loc 1 1244 17 discriminator 1
	li	a5,-16
	.loc 1 1244 17 is_stmt 0
	j	.L152
.L153:
	.loc 1 1245 18 is_stmt 1
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	.loc 1 1245 11
	lhu	a4,-42(s0)
	bleu	a4,a5,.L154
	.loc 1 1245 49 discriminator 1
	li	a5,-1
	.loc 1 1245 49 is_stmt 0
	j	.L152
.L154:
	.loc 1 1247 6 is_stmt 1
	lw	a5,-36(s0)
	beq	a5,zero,.L155
	.loc 1 1247 20 discriminator 1
	lw	a5,-40(s0)
	beq	a5,zero,.L155
	.loc 1 1247 48 discriminator 2
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	.loc 1 1247 41 discriminator 2
	lhu	a4,-42(s0)
	bleu	a4,a5,.L156
.L155:
	.loc 1 1248 12
	li	a5,-16
	j	.L152
.L156:
	.loc 1 1252 10
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 1252 3
	j	.L157
.L159:
	.loc 1 1254 18
	lw	a5,-28(s0)
	sw	a5,-24(s0)
	.loc 1 1255 25
	lw	a5,-20(s0)
	lhu	a5,10(a5)
	mv	a4,a5
	.loc 1 1255 8
	lw	a5,-24(s0)
	bleu	a5,a4,.L158
	.loc 1 1257 23
	lw	a5,-20(s0)
	lhu	a5,10(a5)
	.loc 1 1257 20
	sw	a5,-24(s0)
.L158:
	.loc 1 1260 13
	lw	a5,-20(s0)
	lw	a3,4(a5)
	.loc 1 1260 5
	lw	a4,-40(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	lw	a2,-24(s0)
	mv	a1,a5
	mv	a0,a3
	call	memcpy
	.loc 1 1261 20
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 1262 18
	lw	a4,-32(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 1252 40 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L157:
	.loc 1 1252 32 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L159
	.loc 1 1265 10
	li	a5,0
.L152:
	.loc 1 1266 1
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
.LFE34:
	.size	pbuf_take, .-pbuf_take
	.section	.text.pbuf_take_at,"ax",@progbits
	.align	1
	.globl	pbuf_take_at
	.type	pbuf_take_at, @function
pbuf_take_at:
.LFB35:
	.loc 1 1281 1
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
	mv	a4,a3
	sh	a5,-58(s0)
	mv	a5,a4
	sh	a5,-60(s0)
	.loc 1 1283 20
	addi	a4,s0,-34
	lhu	a5,-60(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-52(s0)
	call	pbuf_skip
	sw	a0,-24(s0)
	.loc 1 1286 6
	lw	a5,-24(s0)
	beq	a5,zero,.L161
	.loc 1 1286 23 discriminator 1
	lw	a5,-24(s0)
	lhu	a5,8(a5)
	mv	a4,a5
	.loc 1 1286 50 discriminator 1
	lhu	a5,-34(s0)
	mv	a3,a5
	lhu	a5,-58(s0)
	add	a5,a3,a5
	.loc 1 1286 18 discriminator 1
	blt	a4,a5,.L161
.LBB11:
	.loc 1 1287 11
	lhu	a5,-58(s0)
	sh	a5,-26(s0)
	.loc 1 1288 17
	lw	a5,-56(s0)
	sw	a5,-32(s0)
	.loc 1 1292 33
	lw	a5,-24(s0)
	lhu	a5,10(a5)
	mv	a4,a5
	.loc 1 1292 39
	lhu	a5,-34(s0)
	sub	a4,a4,a5
	.loc 1 1292 56
	lhu	a5,-58(s0)
	.loc 1 1292 22
	bge	a4,a5,.L162
	.loc 1 1292 69 discriminator 1
	lw	a5,-24(s0)
	lhu	a4,10(a5)
	.loc 1 1292 22 discriminator 1
	lhu	a5,-34(s0)
	.loc 1 1292 20 discriminator 1
	sub	a5,a4,a5
	sh	a5,-18(s0)
	j	.L163
.L162:
	.loc 1 1292 20 is_stmt 0 discriminator 2
	lhu	a5,-58(s0)
	sh	a5,-18(s0)
.L163:
	.loc 1 1293 22 is_stmt 1
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 1293 5
	lhu	a4,-34(s0)
	add	a5,a5,a4
	lhu	a4,-18(s0)
	mv	a2,a4
	lw	a1,-56(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 1294 19
	lhu	a5,-26(s0)
	mv	a4,a5
	lhu	a5,-18(s0)
	sub	a5,a4,a5
	sh	a5,-26(s0)
	.loc 1 1295 13
	lhu	a5,-18(s0)
	lw	a4,-32(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 1296 8
	lhu	a5,-26(s0)
	beq	a5,zero,.L164
	.loc 1 1297 14
	lw	a5,-24(s0)
	lw	a5,0(a5)
	lhu	a4,-26(s0)
	mv	a2,a4
	lw	a1,-32(s0)
	mv	a0,a5
	call	pbuf_take
	mv	a5,a0
	j	.L166
.L164:
	.loc 1 1299 12
	li	a5,0
	j	.L166
.L161:
.LBE11:
	.loc 1 1301 10
	li	a5,-1
.L166:
	.loc 1 1302 1
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
.LFE35:
	.size	pbuf_take_at, .-pbuf_take_at
	.section	.text.pbuf_coalesce,"ax",@progbits
	.align	1
	.globl	pbuf_coalesce
	.type	pbuf_coalesce, @function
pbuf_coalesce:
.LFB36:
	.loc 1 1319 1
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
	.loc 1 1321 8
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1321 6
	bne	a5,zero,.L168
	.loc 1 1322 12
	lw	a5,-36(s0)
	j	.L169
.L168:
	.loc 1 1324 7
	lbu	a5,-37(s0)
	lw	a2,-36(s0)
	li	a1,640
	mv	a0,a5
	call	pbuf_clone
	sw	a0,-20(s0)
	.loc 1 1325 6
	lw	a5,-20(s0)
	bne	a5,zero,.L170
	.loc 1 1327 12
	lw	a5,-36(s0)
	j	.L169
.L170:
	.loc 1 1329 3
	lw	a0,-36(s0)
	call	pbuf_free
	.loc 1 1330 10
	lw	a5,-20(s0)
.L169:
	.loc 1 1331 1
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
.LFE36:
	.size	pbuf_coalesce, .-pbuf_coalesce
	.section	.text.pbuf_clone,"ax",@progbits
	.align	1
	.globl	pbuf_clone
	.type	pbuf_clone, @function
pbuf_clone:
.LFB37:
	.loc 1 1347 1
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
	sb	a5,-33(s0)
	mv	a5,a4
	sh	a5,-36(s0)
	.loc 1 1350 7
	lw	a5,-40(s0)
	lhu	a4,8(a5)
	lhu	a3,-36(s0)
	lbu	a5,-33(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	pbuf_alloc
	sw	a0,-20(s0)
	.loc 1 1351 6
	lw	a5,-20(s0)
	bne	a5,zero,.L172
	.loc 1 1352 11
	li	a5,0
	j	.L173
.L172:
	.loc 1 1354 9
	lw	a1,-40(s0)
	lw	a0,-20(s0)
	call	pbuf_copy
	mv	a5,a0
	sb	a5,-21(s0)
	.loc 1 1357 10
	lw	a5,-20(s0)
.L173:
	.loc 1 1358 1
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
	.size	pbuf_clone, .-pbuf_clone
	.section	.text.pbuf_fill_chksum,"ax",@progbits
	.align	1
	.globl	pbuf_fill_chksum
	.type	pbuf_fill_chksum, @function
pbuf_fill_chksum:
.LFB38:
	.loc 1 1376 1
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
	sw	a4,-48(s0)
	sh	a5,-38(s0)
	mv	a5,a3
	sh	a5,-40(s0)
	.loc 1 1385 25
	lw	a5,-36(s0)
	lhu	a5,10(a5)
	.loc 1 1385 6
	lhu	a4,-38(s0)
	bgeu	a4,a5,.L175
	.loc 1 1385 49 discriminator 1
	lhu	a4,-38(s0)
	lhu	a5,-40(s0)
	add	a5,a4,a5
	.loc 1 1385 58 discriminator 1
	lw	a4,-36(s0)
	lhu	a4,10(a4)
	.loc 1 1385 32 discriminator 1
	ble	a5,a4,.L176
.L175:
	.loc 1 1386 12
	li	a5,-16
	j	.L177
.L176:
	.loc 1 1389 23
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 1 1389 34
	lhu	a5,-38(s0)
	.loc 1 1389 11
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 1390 17
	lhu	a5,-40(s0)
	mv	a2,a5
	lw	a1,-44(s0)
	lw	a0,-24(s0)
	call	lwip_chksum_copy
	mv	a5,a0
	sh	a5,-18(s0)
	.loc 1 1391 21
	lhu	a5,-38(s0)
	andi	a5,a5,1
	.loc 1 1391 6
	beq	a5,zero,.L178
	.loc 1 1392 49
	lh	a5,-18(s0)
	slli	a5,a5,8
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 1 1392 77
	lhu	a5,-18(s0)
	srli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 1392 49
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 1392 17
	sh	a5,-18(s0)
.L178:
	.loc 1 1394 9
	lw	a5,-48(s0)
	lhu	a5,0(a5)
	.loc 1 1394 7
	sw	a5,-28(s0)
	.loc 1 1395 7
	lhu	a5,-18(s0)
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 1396 29
	lw	a5,-28(s0)
	srli	a5,a5,16
	.loc 1 1396 14
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-28(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 1396 11
	lw	a5,-48(s0)
	sh	a4,0(a5)
	.loc 1 1397 10
	li	a5,0
.L177:
	.loc 1 1398 1
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
.LFE38:
	.size	pbuf_fill_chksum, .-pbuf_fill_chksum
	.section	.text.pbuf_get_at,"ax",@progbits
	.align	1
	.globl	pbuf_get_at
	.type	pbuf_get_at, @function
pbuf_get_at:
.LFB39:
	.loc 1 1412 1
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
	sh	a5,-38(s0)
	.loc 1 1413 13
	lhu	a5,-38(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	pbuf_try_get_at
	sw	a0,-20(s0)
	.loc 1 1414 6
	lw	a5,-20(s0)
	blt	a5,zero,.L180
	.loc 1 1415 12
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	j	.L181
.L180:
	.loc 1 1417 10
	li	a5,0
.L181:
	.loc 1 1418 1
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
.LFE39:
	.size	pbuf_get_at, .-pbuf_get_at
	.section	.text.pbuf_try_get_at,"ax",@progbits
	.align	1
	.globl	pbuf_try_get_at
	.type	pbuf_try_get_at, @function
pbuf_try_get_at:
.LFB40:
	.loc 1 1430 1
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
	sh	a5,-38(s0)
	.loc 1 1432 26
	addi	a4,s0,-22
	lhu	a5,-38(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-36(s0)
	call	pbuf_skip_const
	sw	a0,-20(s0)
	.loc 1 1435 6
	lw	a5,-20(s0)
	beq	a5,zero,.L183
	.loc 1 1435 23 discriminator 1
	lw	a5,-20(s0)
	lhu	a4,10(a5)
	.loc 1 1435 29 discriminator 1
	lhu	a5,-22(s0)
	.loc 1 1435 18 discriminator 1
	bleu	a4,a5,.L183
	.loc 1 1436 22
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 1436 32
	lhu	a4,-22(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	j	.L185
.L183:
	.loc 1 1438 10
	li	a5,-1
.L185:
	.loc 1 1439 1
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
.LFE40:
	.size	pbuf_try_get_at, .-pbuf_try_get_at
	.section	.text.pbuf_put_at,"ax",@progbits
	.align	1
	.globl	pbuf_put_at
	.type	pbuf_put_at, @function
pbuf_put_at:
.LFB41:
	.loc 1 1452 1
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
	sh	a5,-38(s0)
	mv	a5,a4
	sb	a5,-39(s0)
	.loc 1 1454 20
	addi	a4,s0,-22
	lhu	a5,-38(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-36(s0)
	call	pbuf_skip
	sw	a0,-20(s0)
	.loc 1 1457 6
	lw	a5,-20(s0)
	beq	a5,zero,.L188
	.loc 1 1457 23 discriminator 1
	lw	a5,-20(s0)
	lhu	a4,10(a5)
	.loc 1 1457 29 discriminator 1
	lhu	a5,-22(s0)
	.loc 1 1457 18 discriminator 1
	bleu	a4,a5,.L188
	.loc 1 1458 15
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 1458 25
	lhu	a4,-22(s0)
	add	a5,a5,a4
	.loc 1 1458 33
	lbu	a4,-39(s0)
	sb	a4,0(a5)
.L188:
	.loc 1 1460 1
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
.LFE41:
	.size	pbuf_put_at, .-pbuf_put_at
	.section	.text.pbuf_memcmp,"ax",@progbits
	.align	1
	.globl	pbuf_memcmp
	.type	pbuf_memcmp, @function
pbuf_memcmp:
.LFB42:
	.loc 1 1475 1
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
	mv	a4,a3
	sh	a5,-38(s0)
	mv	a5,a4
	sh	a5,-40(s0)
	.loc 1 1476 9
	lhu	a5,-38(s0)
	sh	a5,-18(s0)
	.loc 1 1477 22
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 1481 8
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	mv	a3,a5
	.loc 1 1481 28
	lhu	a4,-38(s0)
	lhu	a5,-40(s0)
	add	a5,a4,a5
	.loc 1 1481 6
	bge	a3,a5,.L192
	.loc 1 1482 12
	li	a5,65536
	addi	a5,a5,-1
	j	.L191
.L194:
	.loc 1 1487 30
	lw	a5,-24(s0)
	lhu	a5,10(a5)
	.loc 1 1487 11
	lhu	a4,-18(s0)
	sub	a5,a4,a5
	sh	a5,-18(s0)
	.loc 1 1488 7
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
.L192:
	.loc 1 1486 21
	lw	a5,-24(s0)
	beq	a5,zero,.L193
	.loc 1 1486 26 discriminator 1
	lw	a5,-24(s0)
	lhu	a5,10(a5)
	.loc 1 1486 21 discriminator 1
	lhu	a4,-18(s0)
	bgeu	a4,a5,.L194
.L193:
	.loc 1 1492 10
	sh	zero,-26(s0)
	.loc 1 1492 3
	j	.L195
.L198:
.LBB12:
	.loc 1 1494 29
	lhu	a5,-18(s0)
	mv	a4,a5
	lhu	a5,-26(s0)
	add	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1494 14
	mv	a1,a5
	lw	a0,-24(s0)
	call	pbuf_get_at
	mv	a5,a0
	sb	a5,-27(s0)
	.loc 1 1495 32
	lhu	a5,-26(s0)
	lw	a4,-44(s0)
	add	a5,a4,a5
	.loc 1 1495 10
	lbu	a5,0(a5)
	sb	a5,-28(s0)
	.loc 1 1496 8
	lbu	a4,-27(s0)
	lbu	a5,-28(s0)
	beq	a4,a5,.L196
	.loc 1 1497 14
	lhu	a5,-26(s0)
	slli	a3,a5,16
	srli	a3,a3,16
	li	a4,65536
	addi	a4,a4,-2
	bleu	a3,a4,.L197
	li	a5,-2
.L197:
	slli	a5,a5,16
	srli	a5,a5,16
	addi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	j	.L191
.L196:
.LBE12:
	.loc 1 1492 23 discriminator 2
	lhu	a5,-26(s0)
	addi	a5,a5,1
	sh	a5,-26(s0)
.L195:
	.loc 1 1492 17 discriminator 1
	lhu	a4,-26(s0)
	lhu	a5,-40(s0)
	bltu	a4,a5,.L198
	.loc 1 1500 10
	li	a5,0
.L191:
	.loc 1 1501 1
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
.LFE42:
	.size	pbuf_memcmp, .-pbuf_memcmp
	.section	.text.pbuf_memfind,"ax",@progbits
	.align	1
	.globl	pbuf_memfind
	.type	pbuf_memfind, @function
pbuf_memfind:
.LFB43:
	.loc 1 1517 1
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
	sh	a5,-42(s0)
	mv	a5,a4
	sh	a5,-44(s0)
	.loc 1 1519 34
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	.loc 1 1519 9
	lhu	a4,-42(s0)
	sub	a5,a5,a4
	sh	a5,-20(s0)
	.loc 1 1520 8
	lw	a5,-36(s0)
	lhu	a5,8(a5)
	mv	a3,a5
	.loc 1 1520 29
	lhu	a4,-42(s0)
	lhu	a5,-44(s0)
	add	a5,a4,a5
	.loc 1 1520 6
	blt	a3,a5,.L200
	.loc 1 1521 12
	lhu	a5,-44(s0)
	sh	a5,-18(s0)
	.loc 1 1521 5
	j	.L201
.L204:
.LBB13:
	.loc 1 1522 20
	lhu	a4,-42(s0)
	lhu	a5,-18(s0)
	mv	a3,a4
	lw	a2,-40(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	pbuf_memcmp
	mv	a5,a0
	sh	a5,-22(s0)
	.loc 1 1523 10
	lhu	a5,-22(s0)
	bne	a5,zero,.L202
	.loc 1 1524 16
	lhu	a5,-18(s0)
	j	.L203
.L202:
.LBE13:
	.loc 1 1521 49 discriminator 2
	lhu	a5,-18(s0)
	addi	a5,a5,1
	sh	a5,-18(s0)
.L201:
	.loc 1 1521 30 discriminator 1
	lhu	a4,-18(s0)
	lhu	a5,-20(s0)
	bleu	a4,a5,.L204
.L200:
	.loc 1 1528 10
	li	a5,65536
	addi	a5,a5,-1
.L203:
	.loc 1 1529 1
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
	.size	pbuf_memfind, .-pbuf_memfind
	.section	.text.pbuf_strstr,"ax",@progbits
	.align	1
	.globl	pbuf_strstr
	.type	pbuf_strstr, @function
pbuf_strstr:
.LFB44:
	.loc 1 1544 1
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
	.loc 1 1546 6
	lw	a5,-40(s0)
	beq	a5,zero,.L206
	.loc 1 1546 33 discriminator 1
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 1 1546 23 discriminator 1
	beq	a5,zero,.L206
	.loc 1 1546 48 discriminator 2
	lw	a5,-36(s0)
	lhu	a4,8(a5)
	.loc 1 1546 43 discriminator 2
	li	a5,65536
	addi	a5,a5,-1
	bne	a4,a5,.L207
.L206:
	.loc 1 1547 12
	li	a5,65536
	addi	a5,a5,-1
	j	.L208
.L207:
	.loc 1 1549 16
	lw	a0,-40(s0)
	call	strlen
	sw	a0,-20(s0)
	.loc 1 1550 6
	lw	a4,-20(s0)
	li	a5,65536
	addi	a5,a5,-2
	bleu	a4,a5,.L209
	.loc 1 1551 12
	li	a5,65536
	addi	a5,a5,-1
	j	.L208
.L209:
	.loc 1 1553 10
	lw	a5,-20(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	li	a3,0
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	pbuf_memfind
	mv	a5,a0
.L208:
	.loc 1 1554 1
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
.LFE44:
	.size	pbuf_strstr, .-pbuf_strstr
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/arch/cc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/mem.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/tcpbase.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/tcp.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/priv/tcp_priv.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/tcp.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/tcpip.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/inet_chksum.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x19d7
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x24
	.4byte	.LASF285
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x2
	.byte	0x25
	.byte	0xd
	.4byte	0x37
	.uleb128 0x25
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xd
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0xd
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x76
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x3
	.byte	0xa0
	.byte	0xd
	.4byte	0x37
	.uleb128 0xd
	.byte	0x10
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x26
	.byte	0x4
	.uleb128 0x1c
	.4byte	0x9c
	.uleb128 0xb
	.4byte	0xa8
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x18
	.4byte	0xa8
	.uleb128 0xb
	.4byte	0xaf
	.uleb128 0xb
	.4byte	0xc3
	.uleb128 0x1c
	.4byte	0xb9
	.uleb128 0x27
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0x22
	.byte	0x15
	.4byte	0x3e
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x4
	.byte	0x25
	.byte	0x13
	.4byte	0x4c
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x45
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0x53
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x61
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0x56
	.byte	0x16
	.4byte	0x76
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x5
	.byte	0x7d
	.byte	0x11
	.4byte	0xdc
	.uleb128 0x28
	.4byte	0x10c
	.uleb128 0x18
	.4byte	0x10c
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x5
	.byte	0x7e
	.byte	0x10
	.4byte	0xc4
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x5
	.byte	0x7f
	.byte	0x12
	.4byte	0xe8
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x5
	.byte	0x80
	.byte	0x11
	.4byte	0xd0
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x5
	.byte	0x81
	.byte	0x12
	.4byte	0xf4
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x5
	.byte	0x87
	.byte	0x13
	.4byte	0x100
	.uleb128 0x15
	.byte	0x5
	.byte	0x1
	.4byte	0x3e
	.byte	0x6
	.byte	0x35
	.4byte	0x1d2
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.sleb128 -1
	.uleb128 0xc
	.4byte	.LASF30
	.sleb128 -2
	.uleb128 0xc
	.4byte	.LASF31
	.sleb128 -3
	.uleb128 0xc
	.4byte	.LASF32
	.sleb128 -4
	.uleb128 0xc
	.4byte	.LASF33
	.sleb128 -5
	.uleb128 0xc
	.4byte	.LASF34
	.sleb128 -6
	.uleb128 0xc
	.4byte	.LASF35
	.sleb128 -7
	.uleb128 0xc
	.4byte	.LASF36
	.sleb128 -8
	.uleb128 0xc
	.4byte	.LASF37
	.sleb128 -9
	.uleb128 0xc
	.4byte	.LASF38
	.sleb128 -10
	.uleb128 0xc
	.4byte	.LASF39
	.sleb128 -11
	.uleb128 0xc
	.4byte	.LASF40
	.sleb128 -12
	.uleb128 0xc
	.4byte	.LASF41
	.sleb128 -13
	.uleb128 0xc
	.4byte	.LASF42
	.sleb128 -14
	.uleb128 0xc
	.4byte	.LASF43
	.sleb128 -15
	.uleb128 0xc
	.4byte	.LASF44
	.sleb128 -16
	.byte	0
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x6
	.byte	0x60
	.byte	0xe
	.4byte	0x122
	.uleb128 0x15
	.byte	0x7
	.byte	0x1
	.4byte	0x45
	.byte	0x7
	.byte	0x59
	.4byte	0x20a
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0xb6
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0xa2
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x8e
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0x80
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x7
	.byte	0x70
	.byte	0x3
	.4byte	0x1de
	.uleb128 0x15
	.byte	0x7
	.byte	0x2
	.4byte	0x53
	.byte	0x7
	.byte	0x91
	.4byte	0x23e
	.uleb128 0x1d
	.4byte	.LASF52
	.2byte	0x280
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x41
	.uleb128 0x1d
	.4byte	.LASF55
	.2byte	0x182
	.byte	0
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x7
	.byte	0xa8
	.byte	0x3
	.4byte	0x216
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x10
	.byte	0x7
	.byte	0xba
	.4byte	0x2bf
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x7
	.byte	0xbc
	.byte	0x10
	.4byte	0x2c4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0x7
	.byte	0xbf
	.byte	0x9
	.4byte	0x9c
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0x7
	.byte	0xc8
	.byte	0x9
	.4byte	0x12e
	.byte	0x8
	.uleb128 0xf
	.string	"len"
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0x12e
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x7
	.byte	0xd0
	.byte	0x8
	.4byte	0x10c
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0x7
	.byte	0xd3
	.byte	0x8
	.4byte	0x10c
	.byte	0xd
	.uleb128 0xf
	.string	"ref"
	.byte	0x7
	.byte	0xda
	.byte	0x8
	.4byte	0x10c
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF62
	.byte	0x7
	.byte	0xdd
	.byte	0x8
	.4byte	0x10c
	.byte	0xf
	.byte	0
	.uleb128 0x18
	.4byte	0x24a
	.uleb128 0xb
	.4byte	0x24a
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0x7
	.byte	0xf2
	.byte	0x10
	.4byte	0x2d5
	.uleb128 0xb
	.4byte	0x2da
	.uleb128 0x19
	.4byte	0x2e5
	.uleb128 0x7
	.4byte	0x2c4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x14
	.byte	0x7
	.byte	0xf5
	.4byte	0x30c
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0x7
	.byte	0xf7
	.byte	0xf
	.4byte	0x24a
	.byte	0
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0x7
	.byte	0xf9
	.byte	0x17
	.4byte	0x2c9
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0x8
	.byte	0x43
	.byte	0xf
	.4byte	0x12e
	.uleb128 0x15
	.byte	0x7
	.byte	0x1
	.4byte	0x45
	.byte	0x9
	.byte	0x34
	.4byte	0x386
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0x7
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0xd
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0xe
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	.LASF84
	.byte	0x9
	.byte	0x38
	.byte	0x3
	.4byte	0x318
	.uleb128 0xb
	.4byte	0x397
	.uleb128 0x19
	.4byte	0x3a2
	.uleb128 0x7
	.4byte	0x9c
	.byte	0
	.uleb128 0x10
	.4byte	.LASF85
	.byte	0x4
	.byte	0xa
	.byte	0x33
	.4byte	0x3bc
	.uleb128 0x6
	.4byte	.LASF86
	.byte	0xa
	.byte	0x34
	.byte	0x9
	.4byte	0x146
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF87
	.byte	0xa
	.byte	0x39
	.byte	0x19
	.4byte	0x3a2
	.uleb128 0x29
	.4byte	.LASF88
	.byte	0xb
	.2byte	0x126
	.byte	0x14
	.4byte	0x3bc
	.uleb128 0x1e
	.4byte	.LASF94
	.4byte	0x45
	.byte	0xd
	.byte	0x71
	.4byte	0x3fd
	.uleb128 0x4
	.4byte	.LASF89
	.byte	0
	.uleb128 0x4
	.4byte	.LASF90
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF91
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF92
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF93
	.byte	0xc
	.byte	0x35
	.byte	0xf
	.4byte	0x12e
	.uleb128 0x1e
	.4byte	.LASF95
	.4byte	0x45
	.byte	0xc
	.byte	0x38
	.4byte	0x45b
	.uleb128 0x4
	.4byte	.LASF96
	.byte	0
	.uleb128 0x4
	.4byte	.LASF97
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF98
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF99
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF100
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF101
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF102
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF103
	.byte	0x7
	.uleb128 0x4
	.4byte	.LASF104
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF105
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF106
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.4byte	.LASF107
	.byte	0xe
	.byte	0x46
	.byte	0x11
	.4byte	0x467
	.uleb128 0xb
	.4byte	0x46c
	.uleb128 0x16
	.4byte	0x1d2
	.4byte	0x485
	.uleb128 0x7
	.4byte	0x9c
	.uleb128 0x7
	.4byte	0x485
	.uleb128 0x7
	.4byte	0x1d2
	.byte	0
	.uleb128 0xb
	.4byte	0x48a
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0xa4
	.byte	0xe
	.byte	0xf2
	.4byte	0x7d9
	.uleb128 0x6
	.4byte	.LASF109
	.byte	0xe
	.byte	0xf4
	.byte	0xd
	.4byte	0x3c8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF110
	.byte	0xe
	.byte	0xf4
	.byte	0x21
	.4byte	0x3c8
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF111
	.byte	0xe
	.byte	0xf4
	.byte	0x31
	.4byte	0x10c
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF112
	.byte	0xe
	.byte	0xf4
	.byte	0x41
	.4byte	0x10c
	.byte	0x9
	.uleb128 0xf
	.string	"tos"
	.byte	0xe
	.byte	0xf4
	.byte	0x52
	.4byte	0x10c
	.byte	0xa
	.uleb128 0xf
	.string	"ttl"
	.byte	0xe
	.byte	0xf4
	.byte	0x5c
	.4byte	0x10c
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0xe
	.byte	0xf6
	.byte	0x13
	.4byte	0x485
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF113
	.byte	0xe
	.byte	0xf6
	.byte	0x1f
	.4byte	0x9c
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF114
	.byte	0xe
	.byte	0xf6
	.byte	0x3c
	.4byte	0x409
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF115
	.byte	0xe
	.byte	0xf6
	.byte	0x48
	.4byte	0x10c
	.byte	0x15
	.uleb128 0x6
	.4byte	.LASF116
	.byte	0xe
	.byte	0xf6
	.byte	0x54
	.4byte	0x12e
	.byte	0x16
	.uleb128 0x6
	.4byte	.LASF117
	.byte	0xe
	.byte	0xf9
	.byte	0x9
	.4byte	0x12e
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0xe
	.byte	0xfb
	.byte	0xe
	.4byte	0x932
	.byte	0x1a
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0xe
	.2byte	0x116
	.byte	0x8
	.4byte	0x10c
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0xe
	.2byte	0x116
	.byte	0x11
	.4byte	0x10c
	.byte	0x1d
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0xe
	.2byte	0x117
	.byte	0x8
	.4byte	0x10c
	.byte	0x1e
	.uleb128 0x14
	.string	"tmr"
	.2byte	0x118
	.byte	0x9
	.4byte	0x146
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0xe
	.2byte	0x11b
	.byte	0x9
	.4byte	0x146
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0xe
	.2byte	0x11c
	.byte	0x11
	.4byte	0x3fd
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0xe
	.2byte	0x11d
	.byte	0x11
	.4byte	0x3fd
	.byte	0x2a
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0xe
	.2byte	0x11e
	.byte	0x9
	.4byte	0x146
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0xe
	.2byte	0x127
	.byte	0x9
	.4byte	0x13a
	.byte	0x30
	.uleb128 0x14
	.string	"mss"
	.2byte	0x129
	.byte	0x9
	.4byte	0x12e
	.byte	0x32
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0xe
	.2byte	0x12c
	.byte	0x9
	.4byte	0x146
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0xe
	.2byte	0x12d
	.byte	0x9
	.4byte	0x146
	.byte	0x38
	.uleb128 0x14
	.string	"sa"
	.2byte	0x12e
	.byte	0x9
	.4byte	0x13a
	.byte	0x3c
	.uleb128 0x14
	.string	"sv"
	.2byte	0x12e
	.byte	0xd
	.4byte	0x13a
	.byte	0x3e
	.uleb128 0x14
	.string	"rto"
	.2byte	0x130
	.byte	0x9
	.4byte	0x13a
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0xe
	.2byte	0x131
	.byte	0x8
	.4byte	0x10c
	.byte	0x42
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0xe
	.2byte	0x134
	.byte	0x8
	.4byte	0x10c
	.byte	0x43
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0xe
	.2byte	0x135
	.byte	0x9
	.4byte	0x146
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF131
	.byte	0xe
	.2byte	0x138
	.byte	0x11
	.4byte	0x3fd
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF132
	.byte	0xe
	.2byte	0x139
	.byte	0x11
	.4byte	0x3fd
	.byte	0x4a
	.uleb128 0x2
	.4byte	.LASF133
	.byte	0xe
	.2byte	0x13c
	.byte	0x9
	.4byte	0x146
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF134
	.byte	0xe
	.2byte	0x13f
	.byte	0x9
	.4byte	0x146
	.byte	0x50
	.uleb128 0x2
	.4byte	.LASF135
	.byte	0xe
	.2byte	0x140
	.byte	0x9
	.4byte	0x146
	.byte	0x54
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0xe
	.2byte	0x140
	.byte	0x12
	.4byte	0x146
	.byte	0x58
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0xe
	.2byte	0x142
	.byte	0x9
	.4byte	0x146
	.byte	0x5c
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0xe
	.2byte	0x143
	.byte	0x11
	.4byte	0x3fd
	.byte	0x60
	.uleb128 0x2
	.4byte	.LASF139
	.byte	0xe
	.2byte	0x144
	.byte	0x11
	.4byte	0x3fd
	.byte	0x62
	.uleb128 0x2
	.4byte	.LASF140
	.byte	0xe
	.2byte	0x146
	.byte	0x11
	.4byte	0x3fd
	.byte	0x64
	.uleb128 0x2
	.4byte	.LASF141
	.byte	0xe
	.2byte	0x148
	.byte	0x9
	.4byte	0x12e
	.byte	0x66
	.uleb128 0x2
	.4byte	.LASF142
	.byte	0xe
	.2byte	0x14c
	.byte	0x9
	.4byte	0x12e
	.byte	0x68
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0xe
	.2byte	0x14f
	.byte	0x11
	.4byte	0x3fd
	.byte	0x6a
	.uleb128 0x2
	.4byte	.LASF144
	.byte	0xe
	.2byte	0x152
	.byte	0x13
	.4byte	0x9a8
	.byte	0x6c
	.uleb128 0x2
	.4byte	.LASF145
	.byte	0xe
	.2byte	0x153
	.byte	0x13
	.4byte	0x9a8
	.byte	0x70
	.uleb128 0x2
	.4byte	.LASF146
	.byte	0xe
	.2byte	0x155
	.byte	0x13
	.4byte	0x9a8
	.byte	0x74
	.uleb128 0x2
	.4byte	.LASF147
	.byte	0xe
	.2byte	0x158
	.byte	0x10
	.4byte	0x2c4
	.byte	0x78
	.uleb128 0x2
	.4byte	.LASF148
	.byte	0xe
	.2byte	0x15b
	.byte	0x1a
	.4byte	0x884
	.byte	0x7c
	.uleb128 0x2
	.4byte	.LASF149
	.byte	0xe
	.2byte	0x160
	.byte	0xf
	.4byte	0x808
	.byte	0x80
	.uleb128 0x2
	.4byte	.LASF150
	.byte	0xe
	.2byte	0x162
	.byte	0xf
	.4byte	0x7d9
	.byte	0x84
	.uleb128 0x2
	.4byte	.LASF151
	.byte	0xe
	.2byte	0x164
	.byte	0x14
	.4byte	0x878
	.byte	0x88
	.uleb128 0x2
	.4byte	.LASF152
	.byte	0xe
	.2byte	0x166
	.byte	0xf
	.4byte	0x832
	.byte	0x8c
	.uleb128 0x2
	.4byte	.LASF153
	.byte	0xe
	.2byte	0x168
	.byte	0xe
	.4byte	0x857
	.byte	0x90
	.uleb128 0x2
	.4byte	.LASF154
	.byte	0xe
	.2byte	0x171
	.byte	0x9
	.4byte	0x146
	.byte	0x94
	.uleb128 0x2
	.4byte	.LASF155
	.byte	0xe
	.2byte	0x173
	.byte	0x9
	.4byte	0x146
	.byte	0x98
	.uleb128 0x2
	.4byte	.LASF156
	.byte	0xe
	.2byte	0x174
	.byte	0x9
	.4byte	0x146
	.byte	0x9c
	.uleb128 0x2
	.4byte	.LASF157
	.byte	0xe
	.2byte	0x178
	.byte	0x8
	.4byte	0x10c
	.byte	0xa0
	.uleb128 0x2
	.4byte	.LASF158
	.byte	0xe
	.2byte	0x17a
	.byte	0x8
	.4byte	0x10c
	.byte	0xa1
	.uleb128 0x2
	.4byte	.LASF159
	.byte	0xe
	.2byte	0x17c
	.byte	0x8
	.4byte	0x10c
	.byte	0xa2
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0xe
	.2byte	0x17f
	.byte	0x8
	.4byte	0x10c
	.byte	0xa3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF161
	.byte	0xe
	.byte	0x52
	.byte	0x11
	.4byte	0x7e5
	.uleb128 0xb
	.4byte	0x7ea
	.uleb128 0x16
	.4byte	0x1d2
	.4byte	0x808
	.uleb128 0x7
	.4byte	0x9c
	.uleb128 0x7
	.4byte	0x485
	.uleb128 0x7
	.4byte	0x2c4
	.uleb128 0x7
	.4byte	0x1d2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF162
	.byte	0xe
	.byte	0x60
	.byte	0x11
	.4byte	0x814
	.uleb128 0xb
	.4byte	0x819
	.uleb128 0x16
	.4byte	0x1d2
	.4byte	0x832
	.uleb128 0x7
	.4byte	0x9c
	.uleb128 0x7
	.4byte	0x485
	.uleb128 0x7
	.4byte	0x12e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF163
	.byte	0xe
	.byte	0x6c
	.byte	0x11
	.4byte	0x83e
	.uleb128 0xb
	.4byte	0x843
	.uleb128 0x16
	.4byte	0x1d2
	.4byte	0x857
	.uleb128 0x7
	.4byte	0x9c
	.uleb128 0x7
	.4byte	0x485
	.byte	0
	.uleb128 0x8
	.4byte	.LASF164
	.byte	0xe
	.byte	0x78
	.byte	0x10
	.4byte	0x863
	.uleb128 0xb
	.4byte	0x868
	.uleb128 0x19
	.4byte	0x878
	.uleb128 0x7
	.4byte	0x9c
	.uleb128 0x7
	.4byte	0x1d2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF165
	.byte	0xe
	.byte	0x86
	.byte	0x11
	.4byte	0x467
	.uleb128 0xb
	.4byte	0x889
	.uleb128 0x10
	.4byte	.LASF166
	.byte	0x1c
	.byte	0xe
	.byte	0xdf
	.4byte	0x932
	.uleb128 0x6
	.4byte	.LASF109
	.byte	0xe
	.byte	0xe1
	.byte	0xd
	.4byte	0x3c8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF110
	.byte	0xe
	.byte	0xe1
	.byte	0x21
	.4byte	0x3c8
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF111
	.byte	0xe
	.byte	0xe1
	.byte	0x31
	.4byte	0x10c
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF112
	.byte	0xe
	.byte	0xe1
	.byte	0x41
	.4byte	0x10c
	.byte	0x9
	.uleb128 0xf
	.string	"tos"
	.byte	0xe
	.byte	0xe1
	.byte	0x52
	.4byte	0x10c
	.byte	0xa
	.uleb128 0xf
	.string	"ttl"
	.byte	0xe
	.byte	0xe1
	.byte	0x5c
	.4byte	0x10c
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0xe
	.byte	0xe3
	.byte	0x1a
	.4byte	0x884
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF113
	.byte	0xe
	.byte	0xe3
	.byte	0x26
	.4byte	0x9c
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF114
	.byte	0xe
	.byte	0xe3
	.byte	0x43
	.4byte	0x409
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF115
	.byte	0xe
	.byte	0xe3
	.byte	0x4f
	.4byte	0x10c
	.byte	0x15
	.uleb128 0x6
	.4byte	.LASF116
	.byte	0xe
	.byte	0xe3
	.byte	0x5b
	.4byte	0x12e
	.byte	0x16
	.uleb128 0x6
	.4byte	.LASF167
	.byte	0xe
	.byte	0xe7
	.byte	0x11
	.4byte	0x45b
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.4byte	.LASF168
	.byte	0xe
	.byte	0xce
	.byte	0xf
	.4byte	0x12e
	.uleb128 0x10
	.4byte	.LASF169
	.byte	0x14
	.byte	0xf
	.byte	0xfa
	.4byte	0x9a8
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0xf
	.byte	0xfb
	.byte	0x13
	.4byte	0x9a8
	.byte	0
	.uleb128 0xf
	.string	"p"
	.byte	0xf
	.byte	0xfc
	.byte	0x10
	.4byte	0x2c4
	.byte	0x4
	.uleb128 0xf
	.string	"len"
	.byte	0xf
	.byte	0xfd
	.byte	0x9
	.4byte	0x12e
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF170
	.byte	0xf
	.2byte	0x104
	.byte	0x9
	.4byte	0x12e
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF171
	.byte	0xf
	.2byte	0x105
	.byte	0x8
	.4byte	0x10c
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0xf
	.2byte	0x107
	.byte	0x8
	.4byte	0x10c
	.byte	0xd
	.uleb128 0x2
	.4byte	.LASF172
	.byte	0xf
	.2byte	0x10e
	.byte	0x13
	.4byte	0xa22
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	0x93e
	.uleb128 0x10
	.4byte	.LASF173
	.byte	0x14
	.byte	0x10
	.byte	0x38
	.4byte	0xa22
	.uleb128 0xf
	.string	"src"
	.byte	0x10
	.byte	0x39
	.byte	0x9
	.4byte	0x12e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF174
	.byte	0x10
	.byte	0x3a
	.byte	0x9
	.4byte	0x12e
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF175
	.byte	0x10
	.byte	0x3b
	.byte	0x9
	.4byte	0x146
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF176
	.byte	0x10
	.byte	0x3c
	.byte	0x9
	.4byte	0x146
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF177
	.byte	0x10
	.byte	0x3d
	.byte	0x9
	.4byte	0x12e
	.byte	0xc
	.uleb128 0xf
	.string	"wnd"
	.byte	0x10
	.byte	0x3e
	.byte	0x9
	.4byte	0x12e
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF170
	.byte	0x10
	.byte	0x3f
	.byte	0x9
	.4byte	0x12e
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF178
	.byte	0x10
	.byte	0x40
	.byte	0x9
	.4byte	0x12e
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.4byte	0x9ad
	.uleb128 0x2a
	.4byte	.LASF180
	.byte	0xf
	.2byte	0x14e
	.byte	0x18
	.4byte	0x485
	.uleb128 0x8
	.4byte	.LASF179
	.byte	0x11
	.byte	0x48
	.byte	0x10
	.4byte	0x392
	.uleb128 0x2b
	.4byte	.LASF181
	.byte	0x1
	.byte	0x71
	.byte	0xf
	.4byte	0x118
	.uleb128 0x5
	.byte	0x3
	.4byte	pbuf_free_ooseq_pending
	.uleb128 0x11
	.4byte	.LASF182
	.byte	0x12
	.byte	0x29
	.byte	0x8
	.4byte	0x7d
	.4byte	0xa68
	.uleb128 0x7
	.4byte	0xb4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF183
	.byte	0x13
	.byte	0x4d
	.byte	0x7
	.4byte	0x12e
	.4byte	0xa88
	.uleb128 0x7
	.4byte	0x9c
	.uleb128 0x7
	.4byte	0xb9
	.uleb128 0x7
	.4byte	0x12e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF184
	.byte	0x12
	.byte	0x1f
	.byte	0x8
	.4byte	0x9c
	.4byte	0xaa8
	.uleb128 0x7
	.4byte	0x9e
	.uleb128 0x7
	.4byte	0xbe
	.uleb128 0x7
	.4byte	0x7d
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF185
	.byte	0x8
	.byte	0x4c
	.4byte	0xab9
	.uleb128 0x7
	.4byte	0x9c
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF186
	.byte	0x9
	.byte	0x95
	.4byte	0xacf
	.uleb128 0x7
	.4byte	0x386
	.uleb128 0x7
	.4byte	0x9c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF187
	.byte	0x8
	.byte	0x49
	.byte	0x7
	.4byte	0x9c
	.4byte	0xaea
	.uleb128 0x7
	.4byte	0x9c
	.uleb128 0x7
	.4byte	0x30c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF188
	.byte	0x8
	.byte	0x4a
	.byte	0x7
	.4byte	0x9c
	.4byte	0xb00
	.uleb128 0x7
	.4byte	0x30c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF189
	.byte	0x9
	.byte	0x93
	.byte	0x7
	.4byte	0x9c
	.4byte	0xb16
	.uleb128 0x7
	.4byte	0x386
	.byte	0
	.uleb128 0x11
	.4byte	.LASF190
	.byte	0x11
	.byte	0x52
	.byte	0x7
	.4byte	0x1d2
	.4byte	0xb31
	.uleb128 0x7
	.4byte	0xa34
	.uleb128 0x7
	.4byte	0x9c
	.byte	0
	.uleb128 0x20
	.4byte	.LASF191
	.byte	0xf
	.2byte	0x1fe
	.4byte	0xb43
	.uleb128 0x7
	.4byte	0x485
	.byte	0
	.uleb128 0x20
	.4byte	.LASF192
	.byte	0x14
	.2byte	0x1fc
	.4byte	0xb55
	.uleb128 0x7
	.4byte	0x2b
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF286
	.byte	0x14
	.2byte	0x1fb
	.byte	0xc
	.4byte	0x2b
	.uleb128 0xa
	.4byte	.LASF194
	.2byte	0x607
	.4byte	0x12e
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba7
	.uleb128 0x3
	.string	"p"
	.2byte	0x607
	.byte	0x20
	.4byte	0xba7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF193
	.2byte	0x607
	.byte	0x2f
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF198
	.2byte	0x609
	.byte	0xa
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	0x2bf
	.uleb128 0xa
	.4byte	.LASF195
	.2byte	0x5ec
	.4byte	0x12e
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc35
	.uleb128 0x3
	.string	"p"
	.2byte	0x5ec
	.byte	0x21
	.4byte	0xba7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"mem"
	.2byte	0x5ec
	.byte	0x30
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF196
	.2byte	0x5ec
	.byte	0x3b
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x1
	.4byte	.LASF197
	.2byte	0x5ec
	.byte	0x4a
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.string	"i"
	.2byte	0x5ee
	.byte	0x9
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x5
	.4byte	.LASF199
	.2byte	0x5ef
	.byte	0x9
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x5
	.4byte	.LASF200
	.2byte	0x5f2
	.byte	0xd
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF201
	.2byte	0x5c2
	.4byte	0x12e
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcd3
	.uleb128 0x3
	.string	"p"
	.2byte	0x5c2
	.byte	0x20
	.4byte	0xba7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF202
	.2byte	0x5c2
	.byte	0x29
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x3
	.string	"s2"
	.2byte	0x5c2
	.byte	0x3d
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"n"
	.2byte	0x5c2
	.byte	0x47
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF203
	.2byte	0x5c4
	.byte	0x9
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x9
	.string	"q"
	.2byte	0x5c5
	.byte	0x16
	.4byte	0xba7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"i"
	.2byte	0x5c6
	.byte	0x9
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xe
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x9
	.string	"a"
	.2byte	0x5d6
	.byte	0xa
	.4byte	0x10c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x9
	.string	"b"
	.2byte	0x5d7
	.byte	0xa
	.4byte	0x10c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF243
	.2byte	0x5ab
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd30
	.uleb128 0x3
	.string	"p"
	.2byte	0x5ab
	.byte	0x1a
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF202
	.2byte	0x5ab
	.byte	0x23
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x1
	.4byte	.LASF204
	.2byte	0x5ab
	.byte	0x30
	.4byte	0x10c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -39
	.uleb128 0x5
	.4byte	.LASF205
	.2byte	0x5ad
	.byte	0x9
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x9
	.string	"q"
	.2byte	0x5ae
	.byte	0x10
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF206
	.2byte	0x595
	.4byte	0x37
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd82
	.uleb128 0x3
	.string	"p"
	.2byte	0x595
	.byte	0x24
	.4byte	0xba7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF202
	.2byte	0x595
	.byte	0x2d
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x5
	.4byte	.LASF205
	.2byte	0x597
	.byte	0x9
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x9
	.string	"q"
	.2byte	0x598
	.byte	0x16
	.4byte	0xba7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF207
	.2byte	0x583
	.4byte	0x10c
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdc7
	.uleb128 0x3
	.string	"p"
	.2byte	0x583
	.byte	0x20
	.4byte	0xba7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF202
	.2byte	0x583
	.byte	0x29
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x9
	.string	"ret"
	.2byte	0x585
	.byte	0x7
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF208
	.2byte	0x55e
	.4byte	0x1d2
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe57
	.uleb128 0x3
	.string	"p"
	.2byte	0x55e
	.byte	0x1f
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF197
	.2byte	0x55e
	.byte	0x28
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x1
	.4byte	.LASF209
	.2byte	0x55e
	.byte	0x42
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"len"
	.2byte	0x55f
	.byte	0x18
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF170
	.2byte	0x55f
	.byte	0x24
	.4byte	0xe57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.string	"acc"
	.2byte	0x561
	.byte	0x9
	.4byte	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF210
	.2byte	0x562
	.byte	0x9
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x5
	.4byte	.LASF211
	.2byte	0x563
	.byte	0x9
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	0x12e
	.uleb128 0xa
	.4byte	.LASF212
	.2byte	0x542
	.4byte	0x2c4
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xebd
	.uleb128 0x1
	.4byte	.LASF213
	.2byte	0x542
	.byte	0x17
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF214
	.2byte	0x542
	.byte	0x28
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"p"
	.2byte	0x542
	.byte	0x3b
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"q"
	.2byte	0x544
	.byte	0x10
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"err"
	.2byte	0x545
	.byte	0x9
	.4byte	0x1d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0xa
	.4byte	.LASF215
	.2byte	0x526
	.4byte	0x2c4
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf00
	.uleb128 0x3
	.string	"p"
	.2byte	0x526
	.byte	0x1c
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF213
	.2byte	0x526
	.byte	0x2a
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x9
	.string	"q"
	.2byte	0x528
	.byte	0x10
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF216
	.2byte	0x500
	.4byte	0x1d2
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa9
	.uleb128 0x3
	.string	"buf"
	.2byte	0x500
	.byte	0x1b
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF209
	.2byte	0x500
	.byte	0x2c
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.string	"len"
	.2byte	0x500
	.byte	0x3b
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x1
	.4byte	.LASF202
	.2byte	0x500
	.byte	0x46
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.4byte	.LASF217
	.2byte	0x502
	.byte	0x9
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x9
	.string	"q"
	.2byte	0x503
	.byte	0x10
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x5
	.4byte	.LASF218
	.2byte	0x507
	.byte	0xb
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x5
	.4byte	.LASF219
	.2byte	0x508
	.byte	0x11
	.4byte	0xfa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF220
	.2byte	0x50a
	.byte	0xb
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x11d
	.uleb128 0xa
	.4byte	.LASF221
	.2byte	0x4d4
	.4byte	0x1d2
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x102f
	.uleb128 0x3
	.string	"buf"
	.2byte	0x4d4
	.byte	0x18
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF209
	.2byte	0x4d4
	.byte	0x29
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"len"
	.2byte	0x4d4
	.byte	0x38
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x9
	.string	"p"
	.2byte	0x4d6
	.byte	0x10
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF222
	.2byte	0x4d7
	.byte	0xa
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF223
	.2byte	0x4d8
	.byte	0xa
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF224
	.2byte	0x4d9
	.byte	0xa
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF225
	.2byte	0x4c2
	.4byte	0x2c4
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1084
	.uleb128 0x3
	.string	"in"
	.2byte	0x4c2
	.byte	0x18
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF226
	.2byte	0x4c2
	.byte	0x22
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x1
	.4byte	.LASF227
	.2byte	0x4c2
	.byte	0x34
	.4byte	0xe57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.string	"out"
	.2byte	0x4c4
	.byte	0x16
	.4byte	0xba7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF258
	.2byte	0x4a8
	.4byte	0xba7
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10e6
	.uleb128 0x3
	.string	"in"
	.2byte	0x4a8
	.byte	0x24
	.4byte	0xba7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF226
	.2byte	0x4a8
	.byte	0x2e
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x1
	.4byte	.LASF227
	.2byte	0x4a8
	.byte	0x40
	.4byte	0xe57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF228
	.2byte	0x4aa
	.byte	0x9
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x9
	.string	"q"
	.2byte	0x4ab
	.byte	0x16
	.4byte	0xba7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF229
	.2byte	0x457
	.4byte	0x9c
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1165
	.uleb128 0x3
	.string	"p"
	.2byte	0x457
	.byte	0x28
	.4byte	0xba7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF230
	.2byte	0x457
	.byte	0x31
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF231
	.2byte	0x457
	.byte	0x40
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"len"
	.2byte	0x457
	.byte	0x4f
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x1
	.4byte	.LASF202
	.2byte	0x457
	.byte	0x5a
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.string	"q"
	.2byte	0x459
	.byte	0x16
	.4byte	0xba7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF227
	.2byte	0x45a
	.byte	0x9
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0xa
	.4byte	.LASF232
	.2byte	0x425
	.4byte	0x12e
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11f5
	.uleb128 0x3
	.string	"buf"
	.2byte	0x425
	.byte	0x26
	.4byte	0xba7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF209
	.2byte	0x425
	.byte	0x31
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"len"
	.2byte	0x425
	.byte	0x40
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x1
	.4byte	.LASF202
	.2byte	0x425
	.byte	0x4b
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.string	"p"
	.2byte	0x427
	.byte	0x16
	.4byte	0xba7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF233
	.2byte	0x428
	.byte	0x9
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x5
	.4byte	.LASF222
	.2byte	0x429
	.byte	0x9
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF224
	.2byte	0x42a
	.byte	0x9
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0xa
	.4byte	.LASF234
	.2byte	0x3dd
	.4byte	0x1d2
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1278
	.uleb128 0x1
	.4byte	.LASF235
	.2byte	0x3dd
	.byte	0x25
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF236
	.2byte	0x3dd
	.byte	0x3e
	.4byte	0xba7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF237
	.2byte	0x3dd
	.byte	0x4c
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x1
	.4byte	.LASF202
	.2byte	0x3dd
	.byte	0x5c
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF238
	.2byte	0x3df
	.byte	0xa
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF239
	.2byte	0x3df
	.byte	0x1e
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"len"
	.2byte	0x3df
	.byte	0x2f
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xa
	.4byte	.LASF240
	.2byte	0x3c2
	.4byte	0x1d2
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12b0
	.uleb128 0x1
	.4byte	.LASF235
	.2byte	0x3c2
	.byte	0x18
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF236
	.2byte	0x3c2
	.byte	0x31
	.4byte	0xba7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF241
	.2byte	0x395
	.4byte	0x2c4
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12f3
	.uleb128 0x3
	.string	"p"
	.2byte	0x395
	.byte	0x1b
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"q"
	.2byte	0x397
	.byte	0x10
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF242
	.2byte	0x398
	.byte	0x8
	.4byte	0x10c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x17
	.4byte	.LASF244
	.2byte	0x384
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1323
	.uleb128 0x3
	.string	"h"
	.2byte	0x384
	.byte	0x19
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"t"
	.2byte	0x384
	.byte	0x29
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x359
	.byte	0x1
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1362
	.uleb128 0x3
	.string	"h"
	.2byte	0x359
	.byte	0x17
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"t"
	.2byte	0x359
	.byte	0x27
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"p"
	.2byte	0x35b
	.byte	0x10
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF246
	.2byte	0x341
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x139e
	.uleb128 0x3
	.string	"p"
	.2byte	0x341
	.byte	0x17
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x5
	.4byte	.LASF247
	.2byte	0x345
	.byte	0x15
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF248
	.2byte	0x32d
	.4byte	0x12e
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13d4
	.uleb128 0x3
	.string	"p"
	.2byte	0x32d
	.byte	0x1e
	.4byte	0xba7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"len"
	.2byte	0x32f
	.byte	0x9
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF249
	.2byte	0x2d9
	.4byte	0x10c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1466
	.uleb128 0x3
	.string	"p"
	.2byte	0x2d9
	.byte	0x18
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.4byte	.LASF250
	.2byte	0x2db
	.byte	0x8
	.4byte	0x10c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x9
	.string	"q"
	.2byte	0x2dc
	.byte	0x10
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF251
	.2byte	0x2dd
	.byte	0x8
	.4byte	0x10c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xe
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x9
	.string	"ref"
	.2byte	0x2ee
	.byte	0xa
	.4byte	0x10c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x5
	.4byte	.LASF247
	.2byte	0x2ef
	.byte	0x10
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x9
	.string	"pc"
	.2byte	0x302
	.byte	0x1d
	.4byte	0x1466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x2e5
	.uleb128 0xa
	.4byte	.LASF252
	.2byte	0x2a4
	.4byte	0x2c4
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14d4
	.uleb128 0x3
	.string	"q"
	.2byte	0x2a4
	.byte	0x1f
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF253
	.2byte	0x2a4
	.byte	0x28
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x9
	.string	"p"
	.2byte	0x2a6
	.byte	0x10
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF254
	.2byte	0x2a7
	.byte	0x9
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0xe
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x9
	.string	"f"
	.2byte	0x2aa
	.byte	0x14
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF255
	.2byte	0x295
	.4byte	0x10c
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x150a
	.uleb128 0x3
	.string	"p"
	.2byte	0x295
	.byte	0x20
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF256
	.2byte	0x295
	.byte	0x29
	.4byte	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0xa
	.4byte	.LASF257
	.2byte	0x28b
	.4byte	0x10c
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1540
	.uleb128 0x3
	.string	"p"
	.2byte	0x28b
	.byte	0x1a
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF256
	.2byte	0x28b
	.byte	0x23
	.4byte	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x26d
	.byte	0x1
	.4byte	0x10c
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1587
	.uleb128 0x3
	.string	"p"
	.2byte	0x26d
	.byte	0x1f
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF256
	.2byte	0x26d
	.byte	0x28
	.4byte	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1
	.4byte	.LASF260
	.2byte	0x26d
	.byte	0x44
	.4byte	0x10c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -23
	.byte	0
	.uleb128 0x22
	.4byte	.LASF261
	.2byte	0x24b
	.4byte	0x10c
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15db
	.uleb128 0x3
	.string	"p"
	.2byte	0x24b
	.byte	0x21
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF262
	.2byte	0x24b
	.byte	0x2b
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF58
	.2byte	0x24d
	.byte	0x9
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF263
	.2byte	0x24e
	.byte	0x9
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF264
	.2byte	0x236
	.4byte	0x10c
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1611
	.uleb128 0x3
	.string	"p"
	.2byte	0x236
	.byte	0x24
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF256
	.2byte	0x236
	.byte	0x2e
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF265
	.2byte	0x22c
	.4byte	0x10c
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1647
	.uleb128 0x3
	.string	"p"
	.2byte	0x22c
	.byte	0x1e
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF256
	.2byte	0x22c
	.byte	0x28
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.4byte	.LASF266
	.2byte	0x1de
	.4byte	0x10c
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16b9
	.uleb128 0x3
	.string	"p"
	.2byte	0x1de
	.byte	0x23
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF256
	.2byte	0x1de
	.byte	0x2d
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF260
	.2byte	0x1de
	.byte	0x49
	.4byte	0x10c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x5
	.4byte	.LASF60
	.2byte	0x1e0
	.byte	0x9
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF58
	.2byte	0x1e1
	.byte	0x9
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF263
	.2byte	0x1e2
	.byte	0x9
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x17
	.4byte	.LASF267
	.2byte	0x194
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x172d
	.uleb128 0x3
	.string	"p"
	.2byte	0x194
	.byte	0x1b
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF268
	.2byte	0x194
	.byte	0x24
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x9
	.string	"q"
	.2byte	0x196
	.byte	0x10
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF269
	.2byte	0x197
	.byte	0x9
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x5
	.4byte	.LASF270
	.2byte	0x198
	.byte	0x9
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x9
	.string	"r"
	.2byte	0x1be
	.byte	0x12
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF271
	.2byte	0x16d
	.4byte	0x2c4
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17bb
	.uleb128 0x3
	.string	"l"
	.2byte	0x16d
	.byte	0x20
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF272
	.2byte	0x16d
	.byte	0x29
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF214
	.2byte	0x16d
	.byte	0x3b
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x3
	.string	"p"
	.2byte	0x16d
	.byte	0x55
	.4byte	0x1466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF273
	.2byte	0x16e
	.byte	0x1b
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF274
	.2byte	0x16e
	.byte	0x2e
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF202
	.2byte	0x170
	.byte	0x9
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x5
	.4byte	.LASF58
	.2byte	0x171
	.byte	0x9
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF275
	.2byte	0x149
	.4byte	0x2c4
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x180f
	.uleb128 0x1
	.4byte	.LASF58
	.2byte	0x149
	.byte	0x1c
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF272
	.2byte	0x149
	.byte	0x2b
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x1
	.4byte	.LASF214
	.2byte	0x149
	.byte	0x3d
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"p"
	.2byte	0x14b
	.byte	0x10
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF276
	.byte	0x1
	.byte	0xe2
	.byte	0x1
	.4byte	0x2c4
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18e4
	.uleb128 0x12
	.4byte	.LASF213
	.byte	0xe2
	.byte	0x17
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x12
	.4byte	.LASF272
	.byte	0xe2
	.byte	0x24
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.4byte	.LASF214
	.byte	0xe2
	.byte	0x36
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0x1a
	.string	"p"
	.byte	0xe4
	.byte	0x10
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF202
	.byte	0xe5
	.byte	0x9
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x30
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x18bb
	.uleb128 0x1a
	.string	"q"
	.byte	0xee
	.byte	0x14
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.4byte	.LASF277
	.byte	0xee
	.byte	0x18
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF269
	.byte	0xef
	.byte	0xd
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0xe
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x13
	.4byte	.LASF278
	.byte	0xf4
	.byte	0xf
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x5
	.4byte	.LASF279
	.2byte	0x114
	.byte	0x12
	.4byte	0x30c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF280
	.2byte	0x115
	.byte	0x12
	.4byte	0x30c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF281
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x194d
	.uleb128 0x1b
	.string	"p"
	.byte	0xb3
	.byte	0x25
	.4byte	0x2c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0xb3
	.byte	0x2e
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0xb3
	.byte	0x3d
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x1b
	.string	"len"
	.byte	0xb3
	.byte	0x4c
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF214
	.byte	0xb3
	.byte	0x5b
	.4byte	0x23e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x12
	.4byte	.LASF61
	.byte	0xb3
	.byte	0x66
	.4byte	0x10c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -31
	.byte	0
	.uleb128 0x23
	.4byte	.LASF282
	.byte	0x9d
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x197e
	.uleb128 0x13
	.4byte	.LASF283
	.byte	0xa2
	.byte	0x8
	.4byte	0x10c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x13
	.4byte	.LASF247
	.byte	0xa3
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.4byte	.LASF284
	.byte	0x94
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19a1
	.uleb128 0x1b
	.string	"arg"
	.byte	0x94
	.byte	0x20
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.4byte	.LASF287
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.string	"pcb"
	.byte	0x82
	.byte	0x13
	.4byte	0x485
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x13
	.4byte	.LASF247
	.byte	0x83
	.byte	0x13
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
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
	.uleb128 0x3
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x23
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.4byte	0x14c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"ERR_RTE"
.LASF16:
	.string	"int8_t"
.LASF240:
	.string	"pbuf_copy"
.LASF12:
	.string	"size_t"
.LASF203:
	.string	"start"
.LASF123:
	.string	"rcv_ann_wnd"
.LASF70:
	.string	"MEMP_TCP_PCB"
.LASF252:
	.string	"pbuf_free_header"
.LASF259:
	.string	"pbuf_header_impl"
.LASF248:
	.string	"pbuf_clen"
.LASF286:
	.string	"sys_arch_protect"
.LASF181:
	.string	"pbuf_free_ooseq_pending"
.LASF225:
	.string	"pbuf_skip"
.LASF122:
	.string	"rcv_wnd"
.LASF222:
	.string	"buf_copy_len"
.LASF112:
	.string	"so_options"
.LASF159:
	.string	"persist_probe"
.LASF79:
	.string	"MEMP_SYS_TIMEOUT"
.LASF73:
	.string	"MEMP_ALTCP_PCB"
.LASF188:
	.string	"mem_malloc"
.LASF271:
	.string	"pbuf_alloced_custom"
.LASF97:
	.string	"LISTEN"
.LASF114:
	.string	"state"
.LASF65:
	.string	"pbuf_custom"
.LASF94:
	.string	"lwip_internal_netif_client_data_index"
.LASF254:
	.string	"free_left"
.LASF132:
	.string	"ssthresh"
.LASF214:
	.string	"type"
.LASF54:
	.string	"PBUF_REF"
.LASF274:
	.string	"payload_mem_len"
.LASF106:
	.string	"TIME_WAIT"
.LASF95:
	.string	"tcp_state"
.LASF260:
	.string	"force"
.LASF115:
	.string	"prio"
.LASF118:
	.string	"polltmr"
.LASF262:
	.string	"header_size_decrement"
.LASF185:
	.string	"mem_free"
.LASF63:
	.string	"pbuf_free_custom_fn"
.LASF6:
	.string	"long int"
.LASF207:
	.string	"pbuf_get_at"
.LASF194:
	.string	"pbuf_strstr"
.LASF201:
	.string	"pbuf_memcmp"
.LASF215:
	.string	"pbuf_coalesce"
.LASF85:
	.string	"ip4_addr"
.LASF33:
	.string	"ERR_INPROGRESS"
.LASF247:
	.string	"old_level"
.LASF100:
	.string	"ESTABLISHED"
.LASF34:
	.string	"ERR_VAL"
.LASF243:
	.string	"pbuf_put_at"
.LASF162:
	.string	"tcp_sent_fn"
.LASF82:
	.string	"MEMP_PBUF_POOL"
.LASF2:
	.string	"signed char"
.LASF18:
	.string	"uint8_t"
.LASF111:
	.string	"netif_idx"
.LASF160:
	.string	"keep_cnt_sent"
.LASF121:
	.string	"rcv_nxt"
.LASF109:
	.string	"local_ip"
.LASF3:
	.string	"unsigned char"
.LASF267:
	.string	"pbuf_realloc"
.LASF166:
	.string	"tcp_pcb_listen"
.LASF74:
	.string	"MEMP_NETBUF"
.LASF235:
	.string	"p_to"
.LASF101:
	.string	"FIN_WAIT_1"
.LASF102:
	.string	"FIN_WAIT_2"
.LASF55:
	.string	"PBUF_POOL"
.LASF98:
	.string	"SYN_SENT"
.LASF189:
	.string	"memp_malloc"
.LASF15:
	.string	"char"
.LASF126:
	.string	"rttest"
.LASF172:
	.string	"tcphdr"
.LASF266:
	.string	"pbuf_add_header_impl"
.LASF256:
	.string	"header_size_increment"
.LASF64:
	.string	"pbuf"
.LASF190:
	.string	"tcpip_try_callback"
.LASF265:
	.string	"pbuf_add_header"
.LASF68:
	.string	"MEMP_RAW_PCB"
.LASF116:
	.string	"local_port"
.LASF200:
	.string	"plus"
.LASF61:
	.string	"flags"
.LASF229:
	.string	"pbuf_get_contiguous"
.LASF108:
	.string	"tcp_pcb"
.LASF67:
	.string	"mem_size_t"
.LASF105:
	.string	"LAST_ACK"
.LASF13:
	.string	"ptrdiff_t"
.LASF257:
	.string	"pbuf_header"
.LASF137:
	.string	"snd_lbb"
.LASF245:
	.string	"pbuf_cat"
.LASF37:
	.string	"ERR_ALREADY"
.LASF76:
	.string	"MEMP_TCPIP_MSG_API"
.LASF230:
	.string	"buffer"
.LASF75:
	.string	"MEMP_NETCONN"
.LASF103:
	.string	"CLOSE_WAIT"
.LASF124:
	.string	"rcv_ann_right_edge"
.LASF90:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF168:
	.string	"tcpflags_t"
.LASF11:
	.string	"sys_prot_t"
.LASF233:
	.string	"left"
.LASF120:
	.string	"last_timer"
.LASF227:
	.string	"out_offset"
.LASF226:
	.string	"in_offset"
.LASF216:
	.string	"pbuf_take_at"
.LASF156:
	.string	"keep_cnt"
.LASF39:
	.string	"ERR_CONN"
.LASF234:
	.string	"pbuf_copy_partial_pbuf"
.LASF232:
	.string	"pbuf_copy_partial"
.LASF7:
	.string	"long unsigned int"
.LASF270:
	.string	"shrink"
.LASF53:
	.string	"PBUF_ROM"
.LASF60:
	.string	"type_internal"
.LASF199:
	.string	"max_cmp_start"
.LASF238:
	.string	"offset_to"
.LASF163:
	.string	"tcp_poll_fn"
.LASF279:
	.string	"payload_len"
.LASF287:
	.string	"pbuf_free_ooseq"
.LASF21:
	.string	"uintptr_t"
.LASF58:
	.string	"payload"
.LASF195:
	.string	"pbuf_memfind"
.LASF128:
	.string	"nrtx"
.LASF130:
	.string	"lastack"
.LASF134:
	.string	"snd_nxt"
.LASF241:
	.string	"pbuf_dechain"
.LASF239:
	.string	"offset_from"
.LASF275:
	.string	"pbuf_alloc_reference"
.LASF206:
	.string	"pbuf_try_get_at"
.LASF269:
	.string	"rem_len"
.LASF246:
	.string	"pbuf_ref"
.LASF149:
	.string	"sent"
.LASF8:
	.string	"long long int"
.LASF180:
	.string	"tcp_active_pcbs"
.LASF143:
	.string	"bytes_acked"
.LASF91:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF29:
	.string	"ERR_MEM"
.LASF44:
	.string	"ERR_ARG"
.LASF87:
	.string	"ip4_addr_t"
.LASF198:
	.string	"substr_len"
.LASF175:
	.string	"seqno"
.LASF183:
	.string	"lwip_chksum_copy"
.LASF119:
	.string	"pollinterval"
.LASF193:
	.string	"substr"
.LASF251:
	.string	"count"
.LASF86:
	.string	"addr"
.LASF205:
	.string	"q_idx"
.LASF40:
	.string	"ERR_IF"
.LASF10:
	.string	"unsigned int"
.LASF192:
	.string	"sys_arch_unprotect"
.LASF24:
	.string	"u16_t"
.LASF139:
	.string	"snd_wnd_max"
.LASF36:
	.string	"ERR_USE"
.LASF47:
	.string	"PBUF_IP"
.LASF35:
	.string	"ERR_WOULDBLOCK"
.LASF213:
	.string	"layer"
.LASF133:
	.string	"rto_end"
.LASF221:
	.string	"pbuf_take"
.LASF228:
	.string	"offset_left"
.LASF56:
	.string	"pbuf_type"
.LASF211:
	.string	"dst_ptr"
.LASF31:
	.string	"ERR_TIMEOUT"
.LASF152:
	.string	"poll"
.LASF202:
	.string	"offset"
.LASF125:
	.string	"rtime"
.LASF179:
	.string	"tcpip_callback_fn"
.LASF99:
	.string	"SYN_RCVD"
.LASF242:
	.string	"tail_gone"
.LASF150:
	.string	"recv"
.LASF236:
	.string	"p_from"
.LASF59:
	.string	"tot_len"
.LASF285:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF88:
	.string	"ip_addr_t"
.LASF93:
	.string	"tcpwnd_size_t"
.LASF273:
	.string	"payload_mem"
.LASF14:
	.string	"long double"
.LASF218:
	.string	"remaining_len"
.LASF45:
	.string	"err_t"
.LASF250:
	.string	"alloc_src"
.LASF170:
	.string	"chksum"
.LASF272:
	.string	"length"
.LASF187:
	.string	"mem_trim"
.LASF62:
	.string	"if_idx"
.LASF38:
	.string	"ERR_ISCONN"
.LASF278:
	.string	"qlen"
.LASF253:
	.string	"size"
.LASF9:
	.string	"long long unsigned int"
.LASF219:
	.string	"src_ptr"
.LASF69:
	.string	"MEMP_UDP_PCB"
.LASF117:
	.string	"remote_port"
.LASF224:
	.string	"copied_total"
.LASF72:
	.string	"MEMP_TCP_SEG"
.LASF19:
	.string	"uint16_t"
.LASF158:
	.string	"persist_backoff"
.LASF217:
	.string	"target_offset"
.LASF220:
	.string	"first_copy_len"
.LASF77:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF208:
	.string	"pbuf_fill_chksum"
.LASF131:
	.string	"cwnd"
.LASF147:
	.string	"refused_data"
.LASF141:
	.string	"snd_queuelen"
.LASF283:
	.string	"queued"
.LASF186:
	.string	"memp_free"
.LASF92:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF173:
	.string	"tcp_hdr"
.LASF237:
	.string	"copy_len"
.LASF80:
	.string	"MEMP_NETDB"
.LASF268:
	.string	"new_len"
.LASF51:
	.string	"pbuf_layer"
.LASF144:
	.string	"unsent"
.LASF223:
	.string	"total_copy_len"
.LASF142:
	.string	"unsent_oversize"
.LASF249:
	.string	"pbuf_free"
.LASF28:
	.string	"ERR_OK"
.LASF255:
	.string	"pbuf_header_force"
.LASF174:
	.string	"dest"
.LASF83:
	.string	"MEMP_MAX"
.LASF110:
	.string	"remote_ip"
.LASF165:
	.string	"tcp_connected_fn"
.LASF191:
	.string	"tcp_free_ooseq"
.LASF26:
	.string	"u32_t"
.LASF176:
	.string	"ackno"
.LASF157:
	.string	"persist_cnt"
.LASF177:
	.string	"_hdrlen_rsvd_flags"
.LASF148:
	.string	"listener"
.LASF81:
	.string	"MEMP_PBUF"
.LASF30:
	.string	"ERR_BUF"
.LASF154:
	.string	"keep_idle"
.LASF4:
	.string	"short int"
.LASF281:
	.string	"pbuf_init_alloced_pbuf"
.LASF280:
	.string	"alloc_len"
.LASF145:
	.string	"unacked"
.LASF17:
	.string	"int16_t"
.LASF113:
	.string	"callback_arg"
.LASF153:
	.string	"errf"
.LASF197:
	.string	"start_offset"
.LASF89:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF284:
	.string	"pbuf_free_ooseq_callback"
.LASF167:
	.string	"accept"
.LASF164:
	.string	"tcp_err_fn"
.LASF161:
	.string	"tcp_recv_fn"
.LASF135:
	.string	"snd_wl1"
.LASF136:
	.string	"snd_wl2"
.LASF282:
	.string	"pbuf_pool_is_empty"
.LASF96:
	.string	"CLOSED"
.LASF182:
	.string	"strlen"
.LASF129:
	.string	"dupacks"
.LASF49:
	.string	"PBUF_RAW_TX"
.LASF25:
	.string	"s16_t"
.LASF184:
	.string	"memcpy"
.LASF127:
	.string	"rtseq"
.LASF264:
	.string	"pbuf_add_header_force"
.LASF155:
	.string	"keep_intvl"
.LASF78:
	.string	"MEMP_IGMP_GROUP"
.LASF27:
	.string	"mem_ptr_t"
.LASF178:
	.string	"urgp"
.LASF231:
	.string	"bufsize"
.LASF20:
	.string	"uint32_t"
.LASF41:
	.string	"ERR_ABRT"
.LASF171:
	.string	"chksum_swapped"
.LASF209:
	.string	"dataptr"
.LASF46:
	.string	"PBUF_TRANSPORT"
.LASF263:
	.string	"increment_magnitude"
.LASF196:
	.string	"mem_len"
.LASF5:
	.string	"short unsigned int"
.LASF23:
	.string	"s8_t"
.LASF276:
	.string	"pbuf_alloc"
.LASF84:
	.string	"memp_t"
.LASF22:
	.string	"u8_t"
.LASF104:
	.string	"CLOSING"
.LASF140:
	.string	"snd_buf"
.LASF43:
	.string	"ERR_CLSD"
.LASF138:
	.string	"snd_wnd"
.LASF261:
	.string	"pbuf_remove_header"
.LASF258:
	.string	"pbuf_skip_const"
.LASF52:
	.string	"PBUF_RAM"
.LASF244:
	.string	"pbuf_chain"
.LASF107:
	.string	"tcp_accept_fn"
.LASF212:
	.string	"pbuf_clone"
.LASF50:
	.string	"PBUF_RAW"
.LASF42:
	.string	"ERR_RST"
.LASF57:
	.string	"next"
.LASF204:
	.string	"data"
.LASF169:
	.string	"tcp_seg"
.LASF151:
	.string	"connected"
.LASF71:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF210:
	.string	"copy_chksum"
.LASF146:
	.string	"ooseq"
.LASF66:
	.string	"custom_free_function"
.LASF48:
	.string	"PBUF_LINK"
.LASF277:
	.string	"last"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/pbuf.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
