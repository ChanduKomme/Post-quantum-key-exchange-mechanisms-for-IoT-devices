	.file	"entropy.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/entropy.c"
	.section	.text.mbedtls_entropy_init,"ax",@progbits
	.align	1
	.globl	mbedtls_entropy_init
	.type	mbedtls_entropy_init, @function
mbedtls_entropy_init:
.LFB16:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/entropy.c"
	.loc 1 28 1
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
	.loc 1 29 23
	lw	a5,-20(s0)
	sw	zero,16(a5)
	.loc 1 30 15
	lw	a5,-20(s0)
	addi	a5,a5,20
	.loc 1 30 5
	li	a2,400
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 36 30
	lw	a5,-20(s0)
	sw	zero,12(a5)
	.loc 1 37 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_md_init
	.loc 1 49 5
	li	a4,1
	li	a3,32
	li	a2,0
	lui	a5,%hi(mbedtls_hardware_poll)
	addi	a1,a5,%lo(mbedtls_hardware_poll)
	lw	a0,-20(s0)
	call	mbedtls_entropy_add_source
	.loc 1 60 1
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
	.size	mbedtls_entropy_init, .-mbedtls_entropy_init
	.section	.text.mbedtls_entropy_free,"ax",@progbits
	.align	1
	.globl	mbedtls_entropy_free
	.type	mbedtls_entropy_free, @function
mbedtls_entropy_free:
.LFB17:
	.loc 1 63 1
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
	.loc 1 64 8
	lw	a5,-20(s0)
	beq	a5,zero,.L6
	.loc 1 70 12
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 1 70 8
	li	a5,-1
	beq	a4,a5,.L7
	.loc 1 77 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_md_free
	.loc 1 81 23
	lw	a5,-20(s0)
	sw	zero,16(a5)
	.loc 1 82 33
	lw	a5,-20(s0)
	addi	a5,a5,20
	.loc 1 82 5
	li	a1,400
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 1 83 30
	lw	a5,-20(s0)
	li	a4,-1
	sw	a4,12(a5)
	j	.L2
.L6:
	.loc 1 65 9
	nop
	j	.L2
.L7:
	.loc 1 71 9
	nop
.L2:
	.loc 1 84 1
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
	.size	mbedtls_entropy_free, .-mbedtls_entropy_free
	.section	.text.mbedtls_entropy_add_source,"ax",@progbits
	.align	1
	.globl	mbedtls_entropy_add_source
	.type	mbedtls_entropy_add_source, @function
mbedtls_entropy_add_source:
.LFB18:
	.loc 1 89 1
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
	.loc 1 90 14
	sw	zero,-20(s0)
	.loc 1 98 9
	lw	a5,-36(s0)
	lw	a5,16(a5)
	sw	a5,-24(s0)
	.loc 1 99 8
	lw	a4,-24(s0)
	li	a5,19
	ble	a4,a5,.L9
	.loc 1 100 13
	li	a5,-62
	sw	a5,-20(s0)
	.loc 1 101 9
	j	.L10
.L9:
	.loc 1 104 31
	lw	a3,-36(s0)
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,-40(s0)
	sw	a4,20(a5)
	.loc 1 105 31
	lw	a3,-36(s0)
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,-44(s0)
	sw	a4,24(a5)
	.loc 1 106 32
	lw	a3,-36(s0)
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,-48(s0)
	sw	a4,32(a5)
	.loc 1 107 29
	lw	a3,-36(s0)
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,-52(s0)
	sw	a4,36(a5)
	.loc 1 109 8
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 109 22
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,16(a5)
.L10:
	.loc 1 118 12
	lw	a5,-20(s0)
	.loc 1 119 1
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
.LFE18:
	.size	mbedtls_entropy_add_source, .-mbedtls_entropy_add_source
	.section	.text.entropy_update,"ax",@progbits
	.align	1
	.type	entropy_update, @function
entropy_update:
.LFB19:
	.loc 1 126 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	mv	a5,a1
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	sb	a5,-69(s0)
	.loc 1 129 12
	lw	a5,-80(s0)
	sw	a5,-20(s0)
	.loc 1 130 26
	lw	a5,-76(s0)
	sw	a5,-24(s0)
	.loc 1 131 9
	sw	zero,-28(s0)
	.loc 1 133 8
	lw	a4,-20(s0)
	li	a5,32
	bleu	a4,a5,.L13
	.loc 1 134 20
	li	a0,9
	call	mbedtls_md_info_from_type
	mv	a4,a0
	.loc 1 134 20 is_stmt 0 discriminator 1
	addi	a5,s0,-64
	mv	a3,a5
	lw	a2,-80(s0)
	lw	a1,-76(s0)
	mv	a0,a4
	call	mbedtls_md
	sw	a0,-28(s0)
	.loc 1 134 12 is_stmt 1 discriminator 2
	lw	a5,-28(s0)
	bne	a5,zero,.L21
	.loc 1 138 11
	addi	a5,s0,-64
	sw	a5,-24(s0)
	.loc 1 139 17
	li	a5,32
	sw	a5,-20(s0)
.L13:
	.loc 1 142 15
	lbu	a5,-69(s0)
	sb	a5,-32(s0)
	.loc 1 143 15
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	sb	a5,-31(s0)
	.loc 1 150 12
	lw	a5,-68(s0)
	lw	a5,12(a5)
	.loc 1 150 8
	bne	a5,zero,.L16
	.loc 1 151 15
	lw	s1,-68(s0)
	li	a0,9
	call	mbedtls_md_info_from_type
	mv	a5,a0
	.loc 1 151 15 is_stmt 0 discriminator 1
	li	a2,0
	mv	a1,a5
	mv	a0,s1
	call	mbedtls_md_setup
	sw	a0,-28(s0)
	.loc 1 153 12 is_stmt 1
	lw	a5,-28(s0)
	bne	a5,zero,.L22
	.loc 1 156 15
	lw	a5,-68(s0)
	mv	a0,a5
	call	mbedtls_md_starts
	sw	a0,-28(s0)
	.loc 1 157 12
	lw	a5,-28(s0)
	bne	a5,zero,.L23
	.loc 1 160 34
	lw	a5,-68(s0)
	li	a4,1
	sw	a4,12(a5)
.L16:
	.loc 1 162 16
	lw	a5,-68(s0)
	addi	a4,s0,-32
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_update
	sw	a0,-28(s0)
	.loc 1 162 8 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L24
	.loc 1 165 11
	lw	a5,-68(s0)
	lw	a2,-20(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_md_update
	sw	a0,-28(s0)
	j	.L15
.L21:
	.loc 1 136 13
	nop
	j	.L15
.L22:
	.loc 1 154 13
	nop
	j	.L15
.L23:
	.loc 1 158 13
	nop
	j	.L15
.L24:
	.loc 1 163 9
	nop
.L15:
	.loc 1 168 5
	addi	a5,s0,-64
	li	a1,32
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 1 170 12
	lw	a5,-28(s0)
	.loc 1 171 1
	mv	a0,a5
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s1,68(sp)
	.cfi_restore 9
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	entropy_update, .-entropy_update
	.section	.text.mbedtls_entropy_update_manual,"ax",@progbits
	.align	1
	.globl	mbedtls_entropy_update_manual
	.type	mbedtls_entropy_update_manual, @function
mbedtls_entropy_update_manual:
.LFB20:
	.loc 1 175 1
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
	.loc 1 176 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 184 11
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	li	a1,20
	lw	a0,-36(s0)
	call	entropy_update
	sw	a0,-20(s0)
	.loc 1 192 12
	lw	a5,-20(s0)
	.loc 1 193 1
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
	.size	mbedtls_entropy_update_manual, .-mbedtls_entropy_update_manual
	.section	.text.entropy_gather_internal,"ax",@progbits
	.align	1
	.type	entropy_gather_internal, @function
entropy_gather_internal:
.LFB21:
	.loc 1 199 1
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sw	ra,172(sp)
	sw	s0,168(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,176
	.cfi_def_cfa 8, 0
	sw	a0,-164(s0)
	.loc 1 200 9
	li	a5,-60
	sw	a5,-20(s0)
	.loc 1 202 9
	sw	zero,-28(s0)
	.loc 1 206 12
	lw	a5,-164(s0)
	lw	a5,16(a5)
	.loc 1 206 8
	bne	a5,zero,.L28
	.loc 1 207 16
	li	a5,-64
	j	.L37
.L28:
	.loc 1 213 12
	sw	zero,-24(s0)
	.loc 1 213 5
	j	.L30
.L36:
	.loc 1 214 27
	lw	a3,-164(s0)
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,36(a5)
	.loc 1 214 12
	li	a5,1
	bne	a4,a5,.L31
	.loc 1 215 29
	li	a5,1
	sw	a5,-28(s0)
.L31:
	.loc 1 218 14
	sw	zero,-160(s0)
	.loc 1 219 34
	lw	a3,-164(s0)
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a6,20(a5)
	.loc 1 219 20
	lw	a3,-164(s0)
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,24(a5)
	addi	a3,s0,-160
	addi	a4,s0,-156
	li	a2,128
	mv	a1,a4
	mv	a0,a5
	jalr	a6
.LVL0:
	sw	a0,-20(s0)
	.loc 1 219 12 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L38
	.loc 1 227 18
	lw	a5,-160(s0)
	.loc 1 227 12
	beq	a5,zero,.L34
	.loc 1 228 24
	lw	a5,-24(s0)
	andi	a5,a5,0xff
	lw	a3,-160(s0)
	addi	a4,s0,-156
	mv	a2,a4
	mv	a1,a5
	lw	a0,-164(s0)
	call	entropy_update
	sw	a0,-20(s0)
	.loc 1 228 16 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L35
	.loc 1 230 24
	lw	a5,-20(s0)
	j	.L37
.L35:
	.loc 1 232 27
	lw	a3,-164(s0)
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,28(a5)
	.loc 1 232 33
	lw	a5,-160(s0)
	add	a3,a4,a5
	lw	a2,-164(s0)
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sw	a3,28(a5)
.L34:
	.loc 1 213 41 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L30:
	.loc 1 213 24 discriminator 1
	lw	a5,-164(s0)
	lw	a5,16(a5)
	.loc 1 213 19 discriminator 1
	lw	a4,-24(s0)
	blt	a4,a5,.L36
	.loc 1 236 8
	lw	a5,-28(s0)
	bne	a5,zero,.L39
	.loc 1 237 13
	li	a5,-61
	sw	a5,-20(s0)
	j	.L33
.L38:
	.loc 1 221 13
	nop
	j	.L33
.L39:
	.loc 1 240 1
	nop
.L33:
	.loc 1 241 5
	addi	a5,s0,-156
	li	a1,128
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 1 243 12
	lw	a5,-20(s0)
.L37:
	.loc 1 244 1
	mv	a0,a5
	lw	ra,172(sp)
	.cfi_restore 1
	lw	s0,168(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	entropy_gather_internal, .-entropy_gather_internal
	.section	.text.mbedtls_entropy_gather,"ax",@progbits
	.align	1
	.globl	mbedtls_entropy_gather
	.type	mbedtls_entropy_gather, @function
mbedtls_entropy_gather:
.LFB22:
	.loc 1 250 1
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
	.loc 1 251 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 259 11
	lw	a0,-36(s0)
	call	entropy_gather_internal
	sw	a0,-20(s0)
	.loc 1 267 12
	lw	a5,-20(s0)
	.loc 1 268 1
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
.LFE22:
	.size	mbedtls_entropy_gather, .-mbedtls_entropy_gather
	.section	.text.mbedtls_entropy_func,"ax",@progbits
	.align	1
	.globl	mbedtls_entropy_func
	.type	mbedtls_entropy_func, @function
mbedtls_entropy_func:
.LFB23:
	.loc 1 271 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	sw	a2,-92(s0)
	.loc 1 272 14
	sw	zero,-24(s0)
	.loc 1 274 30
	lw	a5,-84(s0)
	sw	a5,-40(s0)
	.loc 1 277 8
	lw	a4,-92(s0)
	li	a5,32
	bleu	a4,a5,.L43
	.loc 1 278 16
	li	a5,-60
	j	.L60
.L43:
	.loc 1 303 18
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 1 303 12
	li	a4,256
	ble	a5,a4,.L45
	.loc 1 304 17
	li	a5,-60
	sw	a5,-20(s0)
	.loc 1 305 13
	j	.L46
.L45:
	.loc 1 308 20
	lw	a0,-40(s0)
	call	entropy_gather_internal
	sw	a0,-20(s0)
	.loc 1 308 12 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L61
	.loc 1 312 28
	li	a5,1
	sw	a5,-32(s0)
	.loc 1 313 21
	sw	zero,-36(s0)
	.loc 1 314 16
	sw	zero,-28(s0)
	.loc 1 314 9
	j	.L48
.L51:
	.loc 1 315 31
	lw	a3,-40(s0)
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a3,28(a5)
	.loc 1 315 53
	lw	a2,-40(s0)
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	lw	a5,32(a5)
	.loc 1 315 16
	bgeu	a3,a5,.L49
	.loc 1 316 36
	sw	zero,-32(s0)
.L49:
	.loc 1 318 31
	lw	a3,-40(s0)
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,36(a5)
	.loc 1 318 16
	li	a5,1
	bne	a4,a5,.L50
	.loc 1 319 46
	lw	a3,-40(s0)
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,28(a5)
	.loc 1 319 29
	lw	a4,-36(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
.L50:
	.loc 1 314 45 discriminator 2
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L48:
	.loc 1 314 28 discriminator 1
	lw	a5,-40(s0)
	lw	a5,16(a5)
	.loc 1 314 23 discriminator 1
	lw	a4,-28(s0)
	blt	a4,a5,.L51
	.loc 1 322 34
	lw	a5,-32(s0)
	beq	a5,zero,.L43
	.loc 1 322 34 is_stmt 0 discriminator 1
	lw	a4,-36(s0)
	li	a5,31
	bleu	a4,a5,.L43
	.loc 1 324 5 is_stmt 1
	addi	a5,s0,-72
	li	a2,32
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 331 16
	lw	a5,-40(s0)
	addi	a4,s0,-72
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_finish
	sw	a0,-20(s0)
	.loc 1 331 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L62
	.loc 1 338 5
	lw	a5,-40(s0)
	mv	a0,a5
	call	mbedtls_md_free
	.loc 1 339 5
	lw	a5,-40(s0)
	mv	a0,a5
	call	mbedtls_md_init
	.loc 1 340 11
	lw	s1,-40(s0)
	li	a0,9
	call	mbedtls_md_info_from_type
	mv	a5,a0
	.loc 1 340 11 is_stmt 0 discriminator 1
	li	a2,0
	mv	a1,a5
	mv	a0,s1
	call	mbedtls_md_setup
	sw	a0,-20(s0)
	.loc 1 342 8 is_stmt 1
	lw	a5,-20(s0)
	bne	a5,zero,.L63
	.loc 1 345 11
	lw	a5,-40(s0)
	mv	a0,a5
	call	mbedtls_md_starts
	sw	a0,-20(s0)
	.loc 1 346 8
	lw	a5,-20(s0)
	bne	a5,zero,.L64
	.loc 1 349 16
	lw	a5,-40(s0)
	addi	a4,s0,-72
	li	a2,32
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_update
	sw	a0,-20(s0)
	.loc 1 349 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L65
	.loc 1 357 16
	li	a0,9
	call	mbedtls_md_info_from_type
	.loc 1 357 16 is_stmt 0 discriminator 1
	addi	a4,s0,-72
	addi	a5,s0,-72
	mv	a3,a4
	li	a2,32
	mv	a1,a5
	call	mbedtls_md
	sw	a0,-20(s0)
	.loc 1 357 8 is_stmt 1 discriminator 2
	lw	a5,-20(s0)
	bne	a5,zero,.L66
	.loc 1 362 12
	sw	zero,-28(s0)
	.loc 1 362 5
	j	.L58
.L59:
	.loc 1 363 29
	lw	a3,-40(s0)
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	sw	zero,28(a5)
	.loc 1 362 41 discriminator 3
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L58:
	.loc 1 362 24 discriminator 1
	lw	a5,-40(s0)
	lw	a5,16(a5)
	.loc 1 362 19 discriminator 1
	lw	a4,-28(s0)
	blt	a4,a5,.L59
	.loc 1 366 5
	addi	a5,s0,-72
	lw	a2,-92(s0)
	mv	a1,a5
	lw	a0,-88(s0)
	call	memcpy
	.loc 1 368 9
	sw	zero,-20(s0)
	j	.L46
.L61:
	.loc 1 309 13
	nop
	j	.L46
.L62:
	.loc 1 332 9
	nop
	j	.L46
.L63:
	.loc 1 343 9
	nop
	j	.L46
.L64:
	.loc 1 347 9
	nop
	j	.L46
.L65:
	.loc 1 351 9
	nop
	j	.L46
.L66:
	.loc 1 359 9
	nop
.L46:
	.loc 1 371 5
	addi	a5,s0,-72
	li	a1,32
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 1 379 12
	lw	a5,-20(s0)
.L60:
	.loc 1 380 1
	mv	a0,a5
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	lw	s1,84(sp)
	.cfi_restore 9
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	mbedtls_entropy_func, .-mbedtls_entropy_func
	.section	.text.entropy_dummy_source,"ax",@progbits
	.align	1
	.type	entropy_dummy_source, @function
entropy_dummy_source:
.LFB24:
	.loc 1 488 1
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
	.loc 1 491 5
	lw	a2,-28(s0)
	li	a1,42
	lw	a0,-24(s0)
	call	memset
	.loc 1 492 11
	lw	a5,-32(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	.loc 1 494 12
	li	a5,0
	.loc 1 495 1
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
	.size	entropy_dummy_source, .-entropy_dummy_source
	.section	.text.mbedtls_entropy_source_self_test_gather,"ax",@progbits
	.align	1
	.type	mbedtls_entropy_source_self_test_gather, @function
mbedtls_entropy_source_self_test_gather:
.LFB25:
	.loc 1 500 1
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
	.loc 1 501 9
	sw	zero,-20(s0)
	.loc 1 502 12
	sw	zero,-24(s0)
	.loc 1 503 12
	sw	zero,-32(s0)
	.loc 1 504 12
	lw	a5,-40(s0)
	sw	a5,-28(s0)
	.loc 1 506 11
	j	.L70
.L74:
	.loc 1 507 20
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	add	a1,a4,a5
	lw	a4,-40(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	addi	a4,s0,-32
	mv	a3,a4
	mv	a2,a5
	li	a0,0
	call	mbedtls_hardware_poll
	sw	a0,-20(s0)
	.loc 1 507 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L71
	.loc 1 509 20
	lw	a5,-20(s0)
	j	.L76
.L71:
	.loc 1 512 21
	lw	a5,-32(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 513 17
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
.L70:
	.loc 1 506 25
	lw	a5,-28(s0)
	beq	a5,zero,.L73
	.loc 1 506 25 is_stmt 0 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	bltu	a4,a5,.L74
.L73:
	.loc 1 516 8 is_stmt 1
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	bgeu	a4,a5,.L75
	.loc 1 517 13
	li	a5,1
	sw	a5,-20(s0)
.L75:
	.loc 1 520 12
	lw	a5,-20(s0)
.L76:
	.loc 1 521 1
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
	.size	mbedtls_entropy_source_self_test_gather, .-mbedtls_entropy_source_self_test_gather
	.section	.text.mbedtls_entropy_source_self_test_check_bits,"ax",@progbits
	.align	1
	.type	mbedtls_entropy_source_self_test_check_bits, @function
mbedtls_entropy_source_self_test_check_bits:
.LFB26:
	.loc 1 526 1
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
	.loc 1 527 19
	li	a5,-1
	sb	a5,-17(s0)
	.loc 1 528 19
	sb	zero,-18(s0)
	.loc 1 531 12
	sw	zero,-24(s0)
	.loc 1 531 5
	j	.L78
.L79:
	.loc 1 532 19
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 532 13
	lbu	a4,-17(s0)
	and	a5,a5,a4
	sb	a5,-17(s0)
	.loc 1 533 21
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 533 15
	lbu	a4,-18(s0)
	or	a5,a5,a4
	sb	a5,-18(s0)
	.loc 1 531 31 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L78:
	.loc 1 531 19 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	bltu	a4,a5,.L79
	.loc 1 536 24
	lbu	a4,-17(s0)
	li	a5,255
	beq	a4,a5,.L80
	.loc 1 536 24 is_stmt 0 discriminator 2
	lbu	a5,-18(s0)
	bne	a5,zero,.L81
.L80:
	.loc 1 536 24 discriminator 3
	li	a5,1
	.loc 1 536 24
	j	.L83
.L81:
	.loc 1 536 24 discriminator 4
	li	a5,0
.L83:
	.loc 1 537 1 is_stmt 1
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
.LFE26:
	.size	mbedtls_entropy_source_self_test_check_bits, .-mbedtls_entropy_source_self_test_check_bits
	.section	.rodata
	.align	2
.LC0:
	.string	"  ENTROPY_BIAS test: "
	.align	2
.LC1:
	.string	"failed\n"
	.align	2
.LC2:
	.string	"passed\n"
	.align	2
.LC3:
	.string	"\n"
	.section	.text.mbedtls_entropy_source_self_test,"ax",@progbits
	.align	1
	.globl	mbedtls_entropy_source_self_test
	.type	mbedtls_entropy_source_self_test, @function
mbedtls_entropy_source_self_test:
.LFB27:
	.loc 1 551 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	.loc 1 552 9
	sw	zero,-20(s0)
	.loc 1 556 8
	lw	a5,-68(s0)
	beq	a5,zero,.L85
	.loc 1 557 9
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
.L85:
	.loc 1 560 5
	addi	a5,s0,-36
	li	a2,16
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 561 5
	addi	a5,s0,-52
	li	a2,16
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 563 16
	addi	a5,s0,-36
	li	a1,16
	mv	a0,a5
	call	mbedtls_entropy_source_self_test_gather
	sw	a0,-20(s0)
	.loc 1 563 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L95
	.loc 1 566 16
	addi	a5,s0,-52
	li	a1,16
	mv	a0,a5
	call	mbedtls_entropy_source_self_test_gather
	sw	a0,-20(s0)
	.loc 1 566 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L96
	.loc 1 571 16
	addi	a5,s0,-36
	li	a1,16
	mv	a0,a5
	call	mbedtls_entropy_source_self_test_check_bits
	sw	a0,-20(s0)
	.loc 1 571 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L97
	.loc 1 574 16
	addi	a5,s0,-52
	li	a1,16
	mv	a0,a5
	call	mbedtls_entropy_source_self_test_check_bits
	sw	a0,-20(s0)
	.loc 1 574 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L98
	.loc 1 580 11
	addi	a4,s0,-52
	addi	a5,s0,-36
	li	a2,16
	mv	a1,a4
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 1 580 44 discriminator 1
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 580 9 discriminator 1
	sw	a5,-20(s0)
	j	.L87
.L95:
	.loc 1 564 9
	nop
	j	.L87
.L96:
	.loc 1 567 9
	nop
	j	.L87
.L97:
	.loc 1 572 9
	nop
	j	.L87
.L98:
	.loc 1 575 9
	nop
.L87:
	.loc 1 583 8
	lw	a5,-68(s0)
	beq	a5,zero,.L91
	.loc 1 584 12
	lw	a5,-20(s0)
	beq	a5,zero,.L92
	.loc 1 585 13
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	j	.L93
.L92:
	.loc 1 587 13
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L93:
	.loc 1 590 9
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
.L91:
	.loc 1 593 16
	lw	a5,-20(s0)
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 1 594 1
	mv	a0,a5
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	mbedtls_entropy_source_self_test, .-mbedtls_entropy_source_self_test
	.section	.rodata
	.align	2
.LC4:
	.string	"  ENTROPY test: "
	.section	.text.mbedtls_entropy_self_test,"ax",@progbits
	.align	1
	.globl	mbedtls_entropy_self_test
	.type	mbedtls_entropy_self_test, @function
mbedtls_entropy_self_test:
.LFB28:
	.loc 1 604 1
	.cfi_startproc
	addi	sp,sp,-528
	.cfi_def_cfa_offset 528
	sw	ra,524(sp)
	sw	s0,520(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,528
	.cfi_def_cfa 8, 0
	sw	a0,-516(s0)
	.loc 1 605 9
	li	a5,1
	sw	a5,-20(s0)
	.loc 1 607 19
	sw	zero,-480(s0)
	sw	zero,-476(s0)
	sw	zero,-472(s0)
	sw	zero,-468(s0)
	sw	zero,-464(s0)
	sw	zero,-460(s0)
	sw	zero,-456(s0)
	sw	zero,-452(s0)
	.loc 1 608 19
	sw	zero,-512(s0)
	sw	zero,-508(s0)
	sw	zero,-504(s0)
	sw	zero,-500(s0)
	sw	zero,-496(s0)
	sw	zero,-492(s0)
	sw	zero,-488(s0)
	sw	zero,-484(s0)
	.loc 1 611 8
	lw	a5,-516(s0)
	beq	a5,zero,.L100
	.loc 1 612 9
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
.L100:
	.loc 1 615 5
	addi	a5,s0,-448
	mv	a0,a5
	call	mbedtls_entropy_init
	.loc 1 618 16
	addi	a5,s0,-448
	mv	a0,a5
	call	mbedtls_entropy_gather
	sw	a0,-20(s0)
	.loc 1 618 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L117
	.loc 1 622 11
	addi	a0,s0,-448
	li	a4,0
	li	a3,16
	li	a2,0
	lui	a5,%hi(entropy_dummy_source)
	addi	a1,a5,%lo(entropy_dummy_source)
	call	mbedtls_entropy_add_source
	sw	a0,-20(s0)
	.loc 1 624 8
	lw	a5,-20(s0)
	bne	a5,zero,.L118
	.loc 1 628 16
	addi	a4,s0,-480
	addi	a5,s0,-448
	li	a2,32
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_entropy_update_manual
	sw	a0,-20(s0)
	.loc 1 628 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L119
	.loc 1 640 12
	sw	zero,-24(s0)
	.loc 1 640 5
	j	.L105
.L109:
	.loc 1 641 20
	addi	a4,s0,-480
	addi	a5,s0,-448
	li	a2,32
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_entropy_func
	sw	a0,-20(s0)
	.loc 1 641 12 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L120
	.loc 1 645 16
	sw	zero,-28(s0)
	.loc 1 645 9
	j	.L107
.L108:
	.loc 1 646 16
	lw	a5,-28(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a4,-496(a5)
	.loc 1 646 26
	lw	a5,-28(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-464(a5)
	.loc 1 646 20
	or	a5,a4,a5
	andi	a4,a5,0xff
	lw	a5,-28(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-496(a5)
	.loc 1 645 39 discriminator 3
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L107:
	.loc 1 645 23 discriminator 1
	lw	a4,-28(s0)
	li	a5,31
	bleu	a4,a5,.L108
	.loc 1 640 25 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L105:
	.loc 1 640 19 discriminator 1
	lw	a4,-24(s0)
	li	a5,7
	bleu	a4,a5,.L109
	.loc 1 650 12
	sw	zero,-28(s0)
	.loc 1 650 5
	j	.L110
.L112:
	.loc 1 651 16
	lw	a5,-28(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-496(a5)
	.loc 1 651 12
	bne	a5,zero,.L111
	.loc 1 652 17
	li	a5,1
	sw	a5,-20(s0)
	.loc 1 653 13
	j	.L102
.L111:
	.loc 1 650 35 discriminator 2
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L110:
	.loc 1 650 19 discriminator 1
	lw	a4,-28(s0)
	li	a5,31
	bleu	a4,a5,.L112
	.loc 1 658 16
	li	a0,0
	call	mbedtls_entropy_source_self_test
	sw	a0,-20(s0)
	.loc 1 663 1
	j	.L102
.L117:
	.loc 1 619 9
	nop
	j	.L102
.L118:
	.loc 1 625 9
	nop
	j	.L102
.L119:
	.loc 1 629 9
	nop
	j	.L102
.L120:
	.loc 1 642 13
	nop
.L102:
	.loc 1 664 5
	addi	a5,s0,-448
	mv	a0,a5
	call	mbedtls_entropy_free
	.loc 1 666 8
	lw	a5,-516(s0)
	beq	a5,zero,.L113
	.loc 1 667 12
	lw	a5,-20(s0)
	beq	a5,zero,.L114
	.loc 1 668 13
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	j	.L115
.L114:
	.loc 1 670 13
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L115:
	.loc 1 673 9
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
.L113:
	.loc 1 676 16
	lw	a5,-20(s0)
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 1 677 1
	mv	a0,a5
	lw	ra,524(sp)
	.cfi_restore 1
	lw	s0,520(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 528
	addi	sp,sp,528
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	mbedtls_entropy_self_test, .-mbedtls_entropy_self_test
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/entropy.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/entropy_poll.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x973
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1d
	.4byte	.LASF88
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x13
	.4byte	0x32
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1e
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x1f
	.byte	0x4
	.uleb128 0x14
	.4byte	0x89
	.uleb128 0x7
	.4byte	0x32
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x13
	.4byte	0x95
	.uleb128 0x7
	.4byte	0x9c
	.uleb128 0x14
	.4byte	0xa1
	.uleb128 0x7
	.4byte	0xb5
	.uleb128 0x14
	.4byte	0xab
	.uleb128 0x20
	.uleb128 0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x3
	.byte	0x2f
	.byte	0xe
	.4byte	0x10d
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x11
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x12
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x3
	.byte	0x3c
	.byte	0x3
	.4byte	0xb6
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x3
	.byte	0x6b
	.byte	0x22
	.4byte	0x12a
	.uleb128 0x13
	.4byte	0x119
	.uleb128 0x22
	.4byte	.LASF27
	.uleb128 0x19
	.4byte	.LASF31
	.byte	0xc
	.byte	0x3
	.byte	0x7a
	.4byte	0x163
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x3
	.byte	0x7c
	.byte	0x1e
	.4byte	0x163
	.byte	0
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x3
	.byte	0x84
	.byte	0xb
	.4byte	0x89
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x3
	.byte	0x88
	.byte	0xb
	.4byte	0x89
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	0x125
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x3
	.byte	0x8a
	.byte	0x3
	.4byte	0x12f
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x4
	.byte	0x58
	.byte	0xf
	.4byte	0x180
	.uleb128 0x7
	.4byte	0x185
	.uleb128 0x23
	.4byte	0x68
	.4byte	0x1a3
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0x90
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x1a3
	.byte	0
	.uleb128 0x7
	.4byte	0x76
	.uleb128 0x19
	.4byte	.LASF33
	.byte	0x14
	.byte	0x4
	.byte	0x5e
	.4byte	0x1f6
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x4
	.byte	0x5f
	.byte	0x22
	.4byte	0x174
	.byte	0
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x4
	.byte	0x60
	.byte	0xb
	.4byte	0x89
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x4
	.byte	0x61
	.byte	0xc
	.4byte	0x76
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x4
	.byte	0x62
	.byte	0xc
	.4byte	0x76
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x4
	.byte	0x63
	.byte	0x9
	.4byte	0x68
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x4
	.byte	0x65
	.byte	0x1
	.4byte	0x1a8
	.uleb128 0x24
	.4byte	.LASF39
	.2byte	0x1a4
	.byte	0x4
	.byte	0x6a
	.byte	0x10
	.4byte	0x245
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x4
	.byte	0x6b
	.byte	0x1a
	.4byte	0x168
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x4
	.byte	0x6c
	.byte	0x9
	.4byte	0x68
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x4
	.byte	0x6f
	.byte	0x9
	.4byte	0x68
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x4
	.byte	0x70
	.byte	0x22
	.4byte	0x245
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.4byte	0x1f6
	.4byte	0x255
	.uleb128 0xf
	.4byte	0x6f
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x4
	.byte	0x78
	.byte	0x1
	.4byte	0x202
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x5
	.byte	0x1e
	.byte	0x5
	.4byte	0x68
	.4byte	0x281
	.uleb128 0x1
	.4byte	0xab
	.uleb128 0x1
	.4byte	0xab
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x6
	.byte	0xce
	.byte	0x5
	.4byte	0x68
	.4byte	0x298
	.uleb128 0x1
	.4byte	0xa6
	.uleb128 0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x5
	.byte	0x1f
	.byte	0x8
	.4byte	0x89
	.4byte	0x2b8
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0xb0
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x10
	.4byte	.LASF47
	.2byte	0x13c
	.4byte	0x68
	.4byte	0x2d2
	.uleb128 0x1
	.4byte	0x2d2
	.uleb128 0x1
	.4byte	0x90
	.byte	0
	.uleb128 0x7
	.4byte	0x168
	.uleb128 0x10
	.4byte	.LASF48
	.2byte	0x127
	.4byte	0x68
	.4byte	0x2f6
	.uleb128 0x1
	.4byte	0x2d2
	.uleb128 0x1
	.4byte	0x2f6
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x7
	.4byte	0x39
	.uleb128 0x10
	.4byte	.LASF49
	.2byte	0x114
	.4byte	0x68
	.4byte	0x310
	.uleb128 0x1
	.4byte	0x2d2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x3
	.byte	0xc5
	.byte	0x5
	.4byte	0x68
	.4byte	0x330
	.uleb128 0x1
	.4byte	0x2d2
	.uleb128 0x1
	.4byte	0x163
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x10
	.4byte	.LASF51
	.2byte	0x151
	.4byte	0x68
	.4byte	0x354
	.uleb128 0x1
	.4byte	0x163
	.uleb128 0x1
	.4byte	0x2f6
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x90
	.byte	0
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x3
	.byte	0x95
	.byte	0x1a
	.4byte	0x163
	.4byte	0x36a
	.uleb128 0x1
	.4byte	0x10d
	.byte	0
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0x7
	.byte	0x9f
	.4byte	0x380
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x3
	.byte	0xae
	.4byte	0x391
	.uleb128 0x1
	.4byte	0x2d2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x8
	.byte	0x2e
	.byte	0x5
	.4byte	0x68
	.4byte	0x3b6
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0x90
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x1a3
	.byte	0
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x3
	.byte	0x9f
	.4byte	0x3c7
	.uleb128 0x1
	.4byte	0x2d2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x5
	.byte	0x21
	.byte	0x8
	.4byte	0x89
	.4byte	0x3e7
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x16
	.4byte	.LASF58
	.2byte	0x25b
	.4byte	0x68
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x475
	.uleb128 0x8
	.4byte	.LASF60
	.2byte	0x25b
	.byte	0x23
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -516
	.uleb128 0x2
	.string	"ret"
	.2byte	0x25d
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"ctx"
	.2byte	0x25e
	.byte	0x1d
	.4byte	0x255
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x2
	.string	"buf"
	.2byte	0x25f
	.byte	0x13
	.4byte	0x475
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x2
	.string	"acc"
	.2byte	0x260
	.byte	0x13
	.4byte	0x475
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x2
	.string	"i"
	.2byte	0x261
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"j"
	.2byte	0x261
	.byte	0xf
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.4byte	.LASF63
	.2byte	0x297
	.4byte	.L102
	.byte	0
	.uleb128 0xe
	.4byte	0x32
	.4byte	0x485
	.uleb128 0xf
	.4byte	0x6f
	.byte	0x1f
	.byte	0
	.uleb128 0x16
	.4byte	.LASF59
	.2byte	0x226
	.4byte	0x68
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e7
	.uleb128 0x8
	.4byte	.LASF60
	.2byte	0x226
	.byte	0x2a
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.string	"ret"
	.2byte	0x228
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF61
	.2byte	0x229
	.byte	0x13
	.4byte	0x4e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF62
	.2byte	0x22a
	.byte	0x13
	.4byte	0x4e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x17
	.4byte	.LASF63
	.2byte	0x246
	.4byte	.L87
	.byte	0
	.uleb128 0xe
	.4byte	0x32
	.4byte	0x4f7
	.uleb128 0xf
	.4byte	0x6f
	.byte	0xf
	.byte	0
	.uleb128 0x26
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x20c
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55c
	.uleb128 0x11
	.string	"buf"
	.2byte	0x20c
	.byte	0x4d
	.4byte	0x2f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF64
	.2byte	0x20d
	.byte	0x3f
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"set"
	.2byte	0x20f
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x9
	.4byte	.LASF65
	.2byte	0x210
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2
	.string	"i"
	.2byte	0x211
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF67
	.2byte	0x1f3
	.4byte	0x68
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d0
	.uleb128 0x11
	.string	"buf"
	.2byte	0x1f3
	.byte	0x43
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF64
	.2byte	0x1f3
	.byte	0x4f
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"ret"
	.2byte	0x1f5
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF68
	.2byte	0x1f6
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF69
	.2byte	0x1f7
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.4byte	.LASF70
	.2byte	0x1f8
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF71
	.2byte	0x1e6
	.4byte	0x68
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x626
	.uleb128 0x8
	.4byte	.LASF72
	.2byte	0x1e6
	.byte	0x27
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF73
	.2byte	0x1e6
	.byte	0x3c
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"len"
	.2byte	0x1e7
	.byte	0x28
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	.LASF69
	.2byte	0x1e7
	.byte	0x35
	.4byte	0x1a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x16
	.4byte	.LASF74
	.2byte	0x10e
	.4byte	0x68
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e3
	.uleb128 0x8
	.4byte	.LASF72
	.2byte	0x10e
	.byte	0x20
	.4byte	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x8
	.4byte	.LASF73
	.2byte	0x10e
	.byte	0x35
	.4byte	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x11
	.string	"len"
	.2byte	0x10e
	.byte	0x44
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2
	.string	"ret"
	.2byte	0x110
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF75
	.2byte	0x110
	.byte	0xe
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"i"
	.2byte	0x110
	.byte	0x19
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF76
	.2byte	0x110
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.4byte	.LASF77
	.2byte	0x111
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"ctx"
	.2byte	0x112
	.byte	0x1e
	.4byte	0x6e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"buf"
	.2byte	0x113
	.byte	0x13
	.4byte	0x475
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.4byte	.LASF78
	.2byte	0x172
	.4byte	.L46
	.byte	0
	.uleb128 0x7
	.4byte	0x255
	.uleb128 0x1b
	.4byte	.LASF79
	.byte	0xf9
	.4byte	0x68
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x71d
	.uleb128 0xa
	.string	"ctx"
	.byte	0xf9
	.byte	0x35
	.4byte	0x6e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"ret"
	.byte	0xfb
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF80
	.byte	0xc6
	.4byte	0x68
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x795
	.uleb128 0xa
	.string	"ctx"
	.byte	0xc6
	.byte	0x3d
	.4byte	0x6e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x6
	.string	"ret"
	.byte	0xc8
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"i"
	.byte	0xc9
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0xca
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.string	"buf"
	.byte	0xcb
	.byte	0x13
	.4byte	0x795
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0xcc
	.byte	0xc
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x18
	.4byte	.LASF63
	.byte	0xf0
	.4byte	.L33
	.byte	0
	.uleb128 0xe
	.4byte	0x32
	.4byte	0x7a5
	.uleb128 0xf
	.4byte	0x6f
	.byte	0x7f
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF82
	.byte	0xad
	.4byte	0x68
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7f6
	.uleb128 0xa
	.string	"ctx"
	.byte	0xad
	.byte	0x3c
	.4byte	0x6e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0xae
	.byte	0x38
	.4byte	0x2f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"len"
	.byte	0xae
	.byte	0x45
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"ret"
	.byte	0xb0
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF83
	.byte	0x7c
	.4byte	0x68
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x899
	.uleb128 0xa
	.string	"ctx"
	.byte	0x7c
	.byte	0x34
	.4byte	0x6e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0x7c
	.byte	0x47
	.4byte	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x7d
	.byte	0x30
	.4byte	0x2f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xa
	.string	"len"
	.byte	0x7d
	.byte	0x3d
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.4byte	.LASF85
	.byte	0x7f
	.byte	0x13
	.4byte	0x899
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"tmp"
	.byte	0x80
	.byte	0x13
	.4byte	0x475
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.4byte	.LASF86
	.byte	0x81
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"p"
	.byte	0x82
	.byte	0x1a
	.4byte	0x2f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"ret"
	.byte	0x83
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.4byte	.LASF63
	.byte	0xa7
	.4byte	.L15
	.byte	0
	.uleb128 0xe
	.4byte	0x32
	.4byte	0x8a9
	.uleb128 0xf
	.4byte	0x6f
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.4byte	.LASF87
	.byte	0x1
	.byte	0x56
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x930
	.uleb128 0xa
	.string	"ctx"
	.byte	0x56
	.byte	0x39
	.4byte	0x6e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x57
	.byte	0x3d
	.4byte	0x174
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x57
	.byte	0x4d
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x58
	.byte	0x27
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x58
	.byte	0x36
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"idx"
	.byte	0x5a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"ret"
	.byte	0x5a
	.byte	0xe
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x6f
	.4byte	.L10
	.byte	0
	.uleb128 0x28
	.4byte	.LASF89
	.byte	0x1
	.byte	0x3e
	.byte	0x6
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x955
	.uleb128 0xa
	.string	"ctx"
	.byte	0x3e
	.byte	0x34
	.4byte	0x6e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.4byte	.LASF90
	.byte	0x1
	.byte	0x1b
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.string	"ctx"
	.byte	0x1b
	.byte	0x34
	.4byte	0x6e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
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
	.sleb128 6
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
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xa
	.byte	0
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
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.sleb128 12
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.sleb128 12
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.4byte	0x7c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
.LASF45:
	.string	"printf"
.LASF75:
	.string	"count"
.LASF25:
	.string	"size_t"
.LASF32:
	.string	"mbedtls_entropy_f_source_ptr"
.LASF87:
	.string	"mbedtls_entropy_add_source"
.LASF61:
	.string	"buf0"
.LASF62:
	.string	"buf1"
.LASF86:
	.string	"use_len"
.LASF43:
	.string	"source"
.LASF39:
	.string	"mbedtls_entropy_context"
.LASF51:
	.string	"mbedtls_md"
.LASF55:
	.string	"mbedtls_hardware_poll"
.LASF9:
	.string	"long long unsigned int"
.LASF81:
	.string	"have_one_strong"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF42:
	.string	"source_count"
.LASF64:
	.string	"buf_len"
.LASF49:
	.string	"mbedtls_md_starts"
.LASF6:
	.string	"long int"
.LASF84:
	.string	"source_id"
.LASF17:
	.string	"MBEDTLS_MD_SHA224"
.LASF66:
	.string	"mbedtls_entropy_source_self_test_check_bits"
.LASF46:
	.string	"memcpy"
.LASF35:
	.string	"p_source"
.LASF69:
	.string	"olen"
.LASF33:
	.string	"mbedtls_entropy_source_state"
.LASF74:
	.string	"mbedtls_entropy_func"
.LASF31:
	.string	"mbedtls_md_context_t"
.LASF24:
	.string	"MBEDTLS_MD_SHA3_512"
.LASF50:
	.string	"mbedtls_md_setup"
.LASF54:
	.string	"mbedtls_md_free"
.LASF10:
	.string	"unsigned int"
.LASF22:
	.string	"MBEDTLS_MD_SHA3_256"
.LASF7:
	.string	"long unsigned int"
.LASF41:
	.string	"accumulator_started"
.LASF15:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF26:
	.string	"mbedtls_md_type_t"
.LASF72:
	.string	"data"
.LASF59:
	.string	"mbedtls_entropy_source_self_test"
.LASF36:
	.string	"size"
.LASF5:
	.string	"short unsigned int"
.LASF70:
	.string	"attempts"
.LASF77:
	.string	"strong_size"
.LASF73:
	.string	"output"
.LASF28:
	.string	"md_info"
.LASF27:
	.string	"mbedtls_md_info_t"
.LASF47:
	.string	"mbedtls_md_finish"
.LASF11:
	.string	"long double"
.LASF20:
	.string	"MBEDTLS_MD_SHA512"
.LASF16:
	.string	"MBEDTLS_MD_SHA1"
.LASF23:
	.string	"MBEDTLS_MD_SHA3_384"
.LASF63:
	.string	"cleanup"
.LASF90:
	.string	"mbedtls_entropy_init"
.LASF71:
	.string	"entropy_dummy_source"
.LASF13:
	.string	"MBEDTLS_MD_NONE"
.LASF58:
	.string	"mbedtls_entropy_self_test"
.LASF18:
	.string	"MBEDTLS_MD_SHA256"
.LASF89:
	.string	"mbedtls_entropy_free"
.LASF37:
	.string	"threshold"
.LASF3:
	.string	"unsigned char"
.LASF29:
	.string	"md_ctx"
.LASF4:
	.string	"short int"
.LASF79:
	.string	"mbedtls_entropy_gather"
.LASF78:
	.string	"exit"
.LASF80:
	.string	"entropy_gather_internal"
.LASF30:
	.string	"hmac_ctx"
.LASF68:
	.string	"entropy_len"
.LASF12:
	.string	"char"
.LASF53:
	.string	"mbedtls_platform_zeroize"
.LASF60:
	.string	"verbose"
.LASF52:
	.string	"mbedtls_md_info_from_type"
.LASF44:
	.string	"memcmp"
.LASF40:
	.string	"accumulator"
.LASF19:
	.string	"MBEDTLS_MD_SHA384"
.LASF14:
	.string	"MBEDTLS_MD_MD5"
.LASF82:
	.string	"mbedtls_entropy_update_manual"
.LASF88:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF56:
	.string	"mbedtls_md_init"
.LASF67:
	.string	"mbedtls_entropy_source_self_test_gather"
.LASF57:
	.string	"memset"
.LASF65:
	.string	"unset"
.LASF48:
	.string	"mbedtls_md_update"
.LASF21:
	.string	"MBEDTLS_MD_SHA3_224"
.LASF83:
	.string	"entropy_update"
.LASF34:
	.string	"f_source"
.LASF38:
	.string	"strong"
.LASF76:
	.string	"thresholds_reached"
.LASF85:
	.string	"header"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/entropy.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
