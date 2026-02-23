	.file	"psa_util.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_util.c"
	.globl	psa_to_md_errors
	.section	.rodata.psa_to_md_errors,"a"
	.align	2
	.type	psa_to_md_errors, @object
	.size	psa_to_md_errors, 16
psa_to_md_errors:
	.half	0
	.half	0
	.half	-134
	.half	-20608
	.half	-135
	.half	-20736
	.half	-141
	.half	-20864
	.globl	psa_to_pk_rsa_errors
	.section	.rodata.psa_to_pk_rsa_errors,"a"
	.align	2
	.type	psa_to_pk_rsa_errors, @object
	.size	psa_to_pk_rsa_errors, 32
psa_to_pk_rsa_errors:
	.half	0
	.half	0
	.half	-133
	.half	-16512
	.half	-135
	.half	-16512
	.half	-136
	.half	-16512
	.half	-138
	.half	-17408
	.half	-148
	.half	-17536
	.half	-149
	.half	-17280
	.half	-150
	.half	-16640
	.section	.text.psa_generic_status_to_mbedtls,"ax",@progbits
	.align	1
	.globl	psa_generic_status_to_mbedtls
	.type	psa_generic_status_to_mbedtls, @function
psa_generic_status_to_mbedtls:
.LFB72:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_util.c"
	.loc 1 126 1
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
	.loc 1 127 5
	lw	a5,-20(s0)
	beq	a5,zero,.L2
	lw	a5,-20(s0)
	bgt	a5,zero,.L3
	lw	a4,-20(s0)
	li	a5,-134
	beq	a4,a5,.L4
	lw	a4,-20(s0)
	li	a5,-134
	bgt	a4,a5,.L3
	lw	a4,-20(s0)
	li	a5,-145
	beq	a4,a5,.L5
	lw	a4,-20(s0)
	li	a5,-145
	bgt	a4,a5,.L3
	lw	a4,-20(s0)
	li	a5,-151
	beq	a4,a5,.L6
	lw	a4,-20(s0)
	li	a5,-147
	beq	a4,a5,.L5
	j	.L3
.L2:
	.loc 1 129 20
	li	a5,0
	j	.L7
.L4:
	.loc 1 131 20
	li	a5,-114
	j	.L7
.L6:
	.loc 1 133 20
	li	a5,-110
	j	.L7
.L5:
	.loc 1 136 20
	li	a5,-112
	j	.L7
.L3:
	.loc 1 139 20
	li	a5,-1
.L7:
	.loc 1 141 1
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
.LFE72:
	.size	psa_generic_status_to_mbedtls, .-psa_generic_status_to_mbedtls
	.section	.text.psa_status_to_mbedtls,"ax",@progbits
	.align	1
	.globl	psa_status_to_mbedtls
	.type	psa_status_to_mbedtls, @function
psa_status_to_mbedtls:
.LFB73:
	.loc 1 147 1
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
.LBB2:
	.loc 1 148 17
	sw	zero,-20(s0)
	.loc 1 148 5
	j	.L9
.L12:
	.loc 1 149 41
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 1 149 44
	lh	a5,0(a5)
	mv	a4,a5
	.loc 1 149 12
	lw	a5,-36(s0)
	bne	a5,a4,.L10
	.loc 1 150 38
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 1 150 41
	lh	a5,2(a5)
	j	.L11
.L10:
	.loc 1 148 47 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L9:
	.loc 1 148 26 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L12
.LBE2:
	.loc 1 153 12
	lw	a5,-48(s0)
	lw	a0,-36(s0)
	jalr	a5
.LVL0:
	mv	a5,a0
.L11:
	.loc 1 154 1
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
.LFE73:
	.size	psa_status_to_mbedtls, .-psa_status_to_mbedtls
	.section	.text.psa_pk_status_to_mbedtls,"ax",@progbits
	.align	1
	.globl	psa_pk_status_to_mbedtls
	.type	psa_pk_status_to_mbedtls, @function
psa_pk_status_to_mbedtls:
.LFB74:
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
	sw	a0,-20(s0)
	.loc 1 159 5
	lw	a4,-20(s0)
	li	a5,-133
	beq	a4,a5,.L14
	lw	a4,-20(s0)
	li	a5,-133
	bgt	a4,a5,.L15
	lw	a4,-20(s0)
	li	a5,-134
	beq	a4,a5,.L16
	lw	a4,-20(s0)
	li	a5,-134
	bgt	a4,a5,.L15
	lw	a4,-20(s0)
	li	a5,-135
	beq	a4,a5,.L17
	lw	a4,-20(s0)
	li	a5,-135
	bgt	a4,a5,.L15
	lw	a4,-20(s0)
	li	a5,-136
	beq	a4,a5,.L18
	lw	a4,-20(s0)
	li	a5,-136
	bgt	a4,a5,.L15
	lw	a4,-20(s0)
	li	a5,-137
	beq	a4,a5,.L19
	lw	a4,-20(s0)
	li	a5,-137
	bgt	a4,a5,.L15
	lw	a4,-20(s0)
	li	a5,-138
	beq	a4,a5,.L20
	lw	a4,-20(s0)
	li	a5,-138
	bgt	a4,a5,.L15
	lw	a4,-20(s0)
	li	a5,-141
	beq	a4,a5,.L21
	lw	a4,-20(s0)
	li	a5,-141
	bgt	a4,a5,.L15
	lw	a4,-20(s0)
	li	a5,-152
	bgt	a4,a5,.L22
	lw	a4,-20(s0)
	li	a5,-153
	bge	a4,a5,.L23
	j	.L15
.L22:
	lw	a4,-20(s0)
	li	a5,-146
	beq	a4,a5,.L23
	j	.L15
.L18:
	.loc 1 161 20
	li	a5,-16384
	addi	a5,a5,768
	j	.L24
.L20:
	.loc 1 163 20
	li	a5,-16384
	addi	a5,a5,1920
	j	.L24
.L16:
	.loc 1 165 20
	li	a5,-16384
	addi	a5,a5,1664
	j	.L24
.L17:
	.loc 1 167 20
	li	a5,-16384
	addi	a5,a5,1408
	j	.L24
.L14:
	.loc 1 169 20
	li	a5,-16384
	addi	a5,a5,256
	j	.L24
.L21:
	.loc 1 171 20
	li	a5,-16384
	addi	a5,a5,128
	j	.L24
.L19:
	.loc 1 173 20
	li	a5,-16384
	addi	a5,a5,384
	j	.L24
.L23:
	.loc 1 177 20
	li	a5,-16384
	addi	a5,a5,512
	j	.L24
.L15:
	.loc 1 179 20
	lw	a0,-20(s0)
	call	psa_generic_status_to_mbedtls
	mv	a5,a0
.L24:
	.loc 1 181 1
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
.LFE74:
	.size	psa_pk_status_to_mbedtls, .-psa_pk_status_to_mbedtls
	.section	.text.mbedtls_ecc_group_to_psa,"ax",@progbits
	.align	1
	.globl	mbedtls_ecc_group_to_psa
	.type	mbedtls_ecc_group_to_psa, @function
mbedtls_ecc_group_to_psa:
.LFB75:
	.loc 1 191 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-24(s0)
	sb	a5,-17(s0)
	.loc 1 192 5
	lbu	a5,-17(s0)
	li	a4,13
	beq	a5,a4,.L26
	li	a4,13
	bgt	a5,a4,.L27
	li	a4,12
	beq	a5,a4,.L28
	li	a4,12
	bgt	a5,a4,.L27
	li	a4,10
	beq	a5,a4,.L29
	li	a4,10
	bgt	a5,a4,.L27
	li	a4,9
	beq	a5,a4,.L30
	li	a4,9
	bgt	a5,a4,.L27
	li	a4,8
	beq	a5,a4,.L31
	li	a4,8
	bgt	a5,a4,.L27
	li	a4,7
	beq	a5,a4,.L32
	li	a4,7
	bgt	a5,a4,.L27
	li	a4,6
	beq	a5,a4,.L33
	li	a4,6
	bgt	a5,a4,.L27
	li	a4,5
	beq	a5,a4,.L34
	li	a4,5
	bgt	a5,a4,.L27
	li	a4,4
	beq	a5,a4,.L35
	li	a4,4
	bgt	a5,a4,.L27
	li	a4,3
	beq	a5,a4,.L36
	li	a4,3
	bgt	a5,a4,.L27
	li	a4,1
	beq	a5,a4,.L37
	li	a4,2
	beq	a5,a4,.L38
	j	.L27
.L37:
	.loc 1 195 19
	lw	a5,-24(s0)
	li	a4,192
	sw	a4,0(a5)
	.loc 1 196 20
	li	a5,18
	j	.L39
.L38:
	.loc 1 200 19
	lw	a5,-24(s0)
	li	a4,224
	sw	a4,0(a5)
	.loc 1 201 20
	li	a5,18
	j	.L39
.L36:
	.loc 1 205 19
	lw	a5,-24(s0)
	li	a4,256
	sw	a4,0(a5)
	.loc 1 206 20
	li	a5,18
	j	.L39
.L35:
	.loc 1 210 19
	lw	a5,-24(s0)
	li	a4,384
	sw	a4,0(a5)
	.loc 1 211 20
	li	a5,18
	j	.L39
.L34:
	.loc 1 215 19
	lw	a5,-24(s0)
	li	a4,521
	sw	a4,0(a5)
	.loc 1 216 20
	li	a5,18
	j	.L39
.L33:
	.loc 1 220 19
	lw	a5,-24(s0)
	li	a4,256
	sw	a4,0(a5)
	.loc 1 221 20
	li	a5,48
	j	.L39
.L32:
	.loc 1 225 19
	lw	a5,-24(s0)
	li	a4,384
	sw	a4,0(a5)
	.loc 1 226 20
	li	a5,48
	j	.L39
.L31:
	.loc 1 230 19
	lw	a5,-24(s0)
	li	a4,512
	sw	a4,0(a5)
	.loc 1 231 20
	li	a5,48
	j	.L39
.L30:
	.loc 1 235 19
	lw	a5,-24(s0)
	li	a4,255
	sw	a4,0(a5)
	.loc 1 236 20
	li	a5,65
	j	.L39
.L29:
	.loc 1 240 19
	lw	a5,-24(s0)
	li	a4,192
	sw	a4,0(a5)
	.loc 1 241 20
	li	a5,23
	j	.L39
.L28:
	.loc 1 248 19
	lw	a5,-24(s0)
	li	a4,256
	sw	a4,0(a5)
	.loc 1 249 20
	li	a5,23
	j	.L39
.L26:
	.loc 1 253 19
	lw	a5,-24(s0)
	li	a4,448
	sw	a4,0(a5)
	.loc 1 254 20
	li	a5,65
	j	.L39
.L27:
	.loc 1 257 19
	lw	a5,-24(s0)
	sw	zero,0(a5)
	.loc 1 258 20
	li	a5,0
.L39:
	.loc 1 260 1
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
.LFE75:
	.size	mbedtls_ecc_group_to_psa, .-mbedtls_ecc_group_to_psa
	.section	.text.mbedtls_ecc_group_from_psa,"ax",@progbits
	.align	1
	.globl	mbedtls_ecc_group_from_psa
	.type	mbedtls_ecc_group_from_psa, @function
mbedtls_ecc_group_from_psa:
.LFB76:
	.loc 1 264 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-24(s0)
	sb	a5,-17(s0)
	.loc 1 265 5
	lbu	a5,-17(s0)
	li	a4,65
	beq	a5,a4,.L41
	li	a4,65
	bgt	a5,a4,.L42
	li	a4,48
	beq	a5,a4,.L43
	li	a4,48
	bgt	a5,a4,.L42
	li	a4,18
	beq	a5,a4,.L44
	li	a4,23
	beq	a5,a4,.L45
	j	.L42
.L44:
	.loc 1 267 13
	lw	a4,-24(s0)
	li	a5,521
	beq	a4,a5,.L46
	lw	a4,-24(s0)
	li	a5,521
	bgtu	a4,a5,.L63
	lw	a4,-24(s0)
	li	a5,384
	beq	a4,a5,.L48
	lw	a4,-24(s0)
	li	a5,384
	bgtu	a4,a5,.L63
	lw	a4,-24(s0)
	li	a5,256
	beq	a4,a5,.L49
	lw	a4,-24(s0)
	li	a5,256
	bgtu	a4,a5,.L63
	lw	a4,-24(s0)
	li	a5,192
	beq	a4,a5,.L50
	lw	a4,-24(s0)
	li	a5,224
	beq	a4,a5,.L51
	.loc 1 289 13
	j	.L63
.L50:
	.loc 1 270 28
	li	a5,1
	j	.L52
.L51:
	.loc 1 274 28
	li	a5,2
	j	.L52
.L49:
	.loc 1 278 28
	li	a5,3
	j	.L52
.L48:
	.loc 1 282 28
	li	a5,4
	j	.L52
.L46:
	.loc 1 286 28
	li	a5,5
	j	.L52
.L43:
	.loc 1 292 13
	lw	a4,-24(s0)
	li	a5,512
	beq	a4,a5,.L53
	lw	a4,-24(s0)
	li	a5,512
	bgtu	a4,a5,.L64
	lw	a4,-24(s0)
	li	a5,256
	beq	a4,a5,.L55
	lw	a4,-24(s0)
	li	a5,384
	beq	a4,a5,.L56
	.loc 1 306 13
	j	.L64
.L55:
	.loc 1 295 28
	li	a5,6
	j	.L52
.L56:
	.loc 1 299 28
	li	a5,7
	j	.L52
.L53:
	.loc 1 303 28
	li	a5,8
	j	.L52
.L41:
	.loc 1 309 13
	lw	a4,-24(s0)
	li	a5,255
	beq	a4,a5,.L57
	lw	a4,-24(s0)
	li	a5,448
	beq	a4,a5,.L58
	.loc 1 319 13
	j	.L42
.L57:
	.loc 1 312 28
	li	a5,9
	j	.L52
.L58:
	.loc 1 316 28
	li	a5,13
	j	.L52
.L45:
	.loc 1 322 13
	lw	a4,-24(s0)
	li	a5,192
	beq	a4,a5,.L60
	lw	a4,-24(s0)
	li	a5,256
	beq	a4,a5,.L61
	.loc 1 335 13
	j	.L42
.L60:
	.loc 1 325 28
	li	a5,10
	j	.L52
.L61:
	.loc 1 332 28
	li	a5,12
	j	.L52
.L63:
	.loc 1 289 13
	nop
	j	.L42
.L64:
	.loc 1 306 13
	nop
.L42:
	.loc 1 338 12
	li	a5,0
.L52:
	.loc 1 339 1
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
.LFE76:
	.size	mbedtls_ecc_group_from_psa, .-mbedtls_ecc_group_from_psa
	.section	.text.mbedtls_psa_get_random,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_get_random
	.type	mbedtls_psa_get_random, @function
mbedtls_psa_get_random:
.LFB77:
	.loc 1 351 1
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
	.loc 1 358 27
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	psa_generate_random
	sw	a0,-20(s0)
	.loc 1 359 8
	lw	a5,-20(s0)
	bne	a5,zero,.L66
	.loc 1 360 16
	li	a5,0
	j	.L67
.L66:
	.loc 1 362 16
	li	a5,-60
.L67:
	.loc 1 364 1
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
.LFE77:
	.size	mbedtls_psa_get_random, .-mbedtls_psa_get_random
	.section	.text.convert_raw_to_der_single_int,"ax",@progbits
	.align	1
	.type	convert_raw_to_der_single_int, @function
convert_raw_to_der_single_int:
.LFB78:
	.loc 1 393 1
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
	.loc 1 394 20
	lw	a5,-48(s0)
	sw	a5,-28(s0)
	.loc 1 396 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 1 401 11
	j	.L69
.L71:
	.loc 1 402 9
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
	.loc 1 403 9
	lw	a5,-40(s0)
	addi	a5,a5,-1
	sw	a5,-40(s0)
	.loc 1 404 12
	lw	a5,-40(s0)
	bne	a5,zero,.L69
	.loc 1 405 20
	li	a5,-104
	j	.L77
.L69:
	.loc 1 401 12
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 401 21
	beq	a5,zero,.L71
	.loc 1 408 9
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 1 411 12
	lw	a4,-28(s0)
	lw	a5,-44(s0)
	sub	a5,a4,a5
	.loc 1 411 8
	lw	a4,-20(s0)
	ble	a4,a5,.L72
	.loc 1 412 16
	li	a5,-108
	j	.L77
.L72:
	.loc 1 414 7
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	neg	a5,a5
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 415 5
	lw	a5,-28(s0)
	lw	a4,-20(s0)
	mv	a2,a4
	lw	a1,-36(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 418 9
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 1 418 8
	bge	a5,zero,.L73
	.loc 1 419 16
	lw	a4,-28(s0)
	lw	a5,-44(s0)
	sub	a5,a4,a5
	.loc 1 419 12
	bgt	a5,zero,.L74
	.loc 1 420 20
	li	a5,-108
	j	.L77
.L74:
	.loc 1 422 9
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
	.loc 1 423 9
	lw	a5,-28(s0)
	.loc 1 423 12
	sb	zero,0(a5)
	.loc 1 424 9
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L73:
	.loc 1 427 22
	lw	a4,-20(s0)
	addi	a5,s0,-28
	mv	a2,a4
	lw	a1,-44(s0)
	mv	a0,a5
	call	mbedtls_asn1_write_len
	sw	a0,-24(s0)
	.loc 1 427 13 discriminator 1
	lw	a5,-24(s0)
	bge	a5,zero,.L75
	.loc 1 427 83 discriminator 2
	lw	a5,-24(s0)
	.loc 1 427 83 is_stmt 0
	j	.L77
.L75:
	.loc 1 427 99 is_stmt 1 discriminator 3
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 428 22
	addi	a5,s0,-28
	li	a2,2
	lw	a1,-44(s0)
	mv	a0,a5
	call	mbedtls_asn1_write_tag
	sw	a0,-24(s0)
	.loc 1 428 13 discriminator 1
	lw	a5,-24(s0)
	bge	a5,zero,.L76
	.loc 1 428 84 discriminator 2
	lw	a5,-24(s0)
	.loc 1 428 84 is_stmt 0
	j	.L77
.L76:
	.loc 1 428 100 is_stmt 1 discriminator 3
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 430 12
	lw	a5,-20(s0)
.L77:
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
.LFE78:
	.size	convert_raw_to_der_single_int, .-convert_raw_to_der_single_int
	.section	.text.mbedtls_ecdsa_raw_to_der,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdsa_raw_to_der
	.type	mbedtls_ecdsa_raw_to_der, @function
mbedtls_ecdsa_raw_to_der:
.LFB79:
	.loc 1 435 1
	.cfi_startproc
	addi	sp,sp,-208
	.cfi_def_cfa_offset 208
	sw	ra,204(sp)
	sw	s0,200(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,208
	.cfi_def_cfa 8, 0
	sw	a0,-180(s0)
	sw	a1,-184(s0)
	sw	a2,-188(s0)
	sw	a3,-192(s0)
	sw	a4,-196(s0)
	sw	a5,-200(s0)
	.loc 1 438 44
	lw	a5,-180(s0)
	addi	a5,a5,7
	.loc 1 438 18
	srli	a5,a5,3
	sw	a5,-20(s0)
	.loc 1 439 12
	sw	zero,-24(s0)
	.loc 1 440 28
	lw	a4,-192(s0)
	lw	a5,-196(s0)
	add	a5,a4,a5
	.loc 1 440 20
	sw	a5,-168(s0)
	.loc 1 441 9
	li	a5,-110
	sw	a5,-28(s0)
	.loc 1 443 8
	lw	a5,-180(s0)
	bne	a5,zero,.L79
	.loc 1 444 16
	li	a5,-104
	j	.L87
.L79:
	.loc 1 446 23
	lw	a5,-20(s0)
	slli	a5,a5,1
	.loc 1 446 8
	lw	a4,-188(s0)
	beq	a4,a5,.L81
	.loc 1 447 16
	li	a5,-104
	j	.L87
.L81:
	.loc 1 449 8
	lw	a4,-20(s0)
	li	a5,66
	bleu	a4,a5,.L82
	.loc 1 450 16
	li	a5,-108
	j	.L87
.L82:
	.loc 1 455 5
	addi	a5,s0,-96
	lw	a2,-20(s0)
	lw	a1,-184(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 456 19
	lw	a4,-184(s0)
	lw	a5,-20(s0)
	add	a4,a4,a5
	.loc 1 456 5
	addi	a5,s0,-164
	lw	a2,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 1 460 11
	lw	a4,-168(s0)
	addi	a5,s0,-164
	mv	a3,a4
	lw	a2,-192(s0)
	lw	a1,-20(s0)
	mv	a0,a5
	call	convert_raw_to_der_single_int
	sw	a0,-28(s0)
	.loc 1 461 8
	lw	a5,-28(s0)
	bge	a5,zero,.L83
	.loc 1 462 16
	lw	a5,-28(s0)
	j	.L87
.L83:
	.loc 1 464 7
	lw	a4,-168(s0)
	lw	a5,-28(s0)
	neg	a5,a5
	add	a5,a4,a5
	sw	a5,-168(s0)
	.loc 1 465 9
	lw	a5,-28(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 467 11
	lw	a4,-168(s0)
	addi	a5,s0,-96
	mv	a3,a4
	lw	a2,-192(s0)
	lw	a1,-20(s0)
	mv	a0,a5
	call	convert_raw_to_der_single_int
	sw	a0,-28(s0)
	.loc 1 468 8
	lw	a5,-28(s0)
	bge	a5,zero,.L84
	.loc 1 469 16
	lw	a5,-28(s0)
	j	.L87
.L84:
	.loc 1 471 7
	lw	a4,-168(s0)
	lw	a5,-28(s0)
	neg	a5,a5
	add	a5,a4,a5
	sw	a5,-168(s0)
	.loc 1 472 9
	lw	a5,-28(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 475 22
	addi	a5,s0,-168
	lw	a2,-24(s0)
	lw	a1,-192(s0)
	mv	a0,a5
	call	mbedtls_asn1_write_len
	sw	a0,-28(s0)
	.loc 1 475 13 discriminator 1
	lw	a5,-28(s0)
	bge	a5,zero,.L85
	.loc 1 475 73 discriminator 2
	lw	a5,-28(s0)
	.loc 1 475 73 is_stmt 0
	j	.L87
.L85:
	.loc 1 475 89 is_stmt 1 discriminator 3
	lw	a5,-28(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 476 22
	addi	a5,s0,-168
	li	a2,48
	lw	a1,-192(s0)
	mv	a0,a5
	call	mbedtls_asn1_write_tag
	sw	a0,-28(s0)
	.loc 1 476 13 discriminator 1
	lw	a5,-28(s0)
	bge	a5,zero,.L86
	.loc 1 476 81 discriminator 2
	lw	a5,-28(s0)
	.loc 1 476 81 is_stmt 0
	j	.L87
.L86:
	.loc 1 476 97 is_stmt 1 discriminator 3
	lw	a5,-28(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 481 5
	lw	a5,-168(s0)
	lw	a2,-24(s0)
	mv	a1,a5
	lw	a0,-192(s0)
	call	memmove
	.loc 1 482 14
	lw	a5,-200(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 484 12
	li	a5,0
.L87:
	.loc 1 485 1
	mv	a0,a5
	lw	ra,204(sp)
	.cfi_restore 1
	lw	s0,200(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 208
	addi	sp,sp,208
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE79:
	.size	mbedtls_ecdsa_raw_to_der, .-mbedtls_ecdsa_raw_to_der
	.section	.text.convert_der_to_raw_single_int,"ax",@progbits
	.align	1
	.type	convert_der_to_raw_single_int, @function
convert_der_to_raw_single_int:
.LFB80:
	.loc 1 512 1
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
	.loc 1 513 20
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	.loc 1 514 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 515 26
	sw	zero,-24(s0)
	.loc 1 518 11
	lw	a4,-28(s0)
	.loc 1 518 38
	lw	a5,-40(s0)
	add	a4,a4,a5
	.loc 1 518 11
	addi	a2,s0,-32
	addi	a5,s0,-28
	li	a3,2
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 1 520 8
	lw	a5,-20(s0)
	beq	a5,zero,.L89
	.loc 1 521 16
	lw	a5,-20(s0)
	j	.L95
.L89:
	.loc 1 527 24
	lw	a5,-32(s0)
	.loc 1 527 8
	beq	a5,zero,.L91
	.loc 1 527 34 discriminator 1
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	.loc 1 527 45 discriminator 1
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 1 527 30 discriminator 1
	bge	a5,zero,.L92
.L91:
	.loc 1 528 16
	li	a5,-104
	j	.L95
.L92:
	.loc 1 532 9
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	.loc 1 532 8
	bne	a5,zero,.L93
	.loc 1 533 10
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
	.loc 1 534 21
	lw	a5,-32(s0)
	addi	a5,a5,-1
	sw	a5,-32(s0)
	.loc 1 538 27
	lw	a5,-32(s0)
	.loc 1 538 12
	beq	a5,zero,.L93
	.loc 1 538 36 discriminator 1
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	.loc 1 538 32 discriminator 1
	bne	a5,zero,.L93
	.loc 1 539 20
	li	a5,-104
	j	.L95
.L93:
	.loc 1 543 22
	lw	a5,-32(s0)
	.loc 1 543 8
	lw	a4,-48(s0)
	bgeu	a4,a5,.L94
	.loc 1 545 16
	li	a5,-104
	j	.L95
.L94:
	.loc 1 547 35
	lw	a5,-32(s0)
	.loc 1 547 17
	lw	a4,-48(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 550 16
	lw	a4,-44(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 1 550 5
	lw	a4,-28(s0)
	lw	a3,-32(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 1 551 7
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 553 12
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
.L95:
	.loc 1 554 1
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
.LFE80:
	.size	convert_der_to_raw_single_int, .-convert_der_to_raw_single_int
	.section	.text.mbedtls_ecdsa_der_to_raw,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdsa_der_to_raw
	.type	mbedtls_ecdsa_der_to_raw, @function
mbedtls_ecdsa_der_to_raw:
.LFB81:
	.loc 1 558 1
	.cfi_startproc
	addi	sp,sp,-208
	.cfi_def_cfa_offset 208
	sw	ra,204(sp)
	sw	s0,200(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,208
	.cfi_def_cfa 8, 0
	sw	a0,-180(s0)
	sw	a1,-184(s0)
	sw	a2,-188(s0)
	sw	a3,-192(s0)
	sw	a4,-196(s0)
	sw	a5,-200(s0)
	.loc 1 560 20
	lw	a5,-184(s0)
	sw	a5,-160(s0)
	.loc 1 562 39
	lw	a5,-180(s0)
	addi	a5,a5,7
	.loc 1 562 12
	srli	a5,a5,3
	sw	a5,-20(s0)
	.loc 1 565 8
	lw	a5,-180(s0)
	bne	a5,zero,.L97
	.loc 1 566 16
	li	a5,-104
	j	.L105
.L97:
	.loc 1 570 36
	lw	a5,-20(s0)
	slli	a5,a5,1
	.loc 1 570 8
	lw	a4,-196(s0)
	bgeu	a4,a5,.L99
	.loc 1 571 16
	li	a5,-108
	j	.L105
.L99:
	.loc 1 573 11
	lw	a5,-20(s0)
	slli	a4,a5,1
	.loc 1 573 8
	li	a5,132
	bleu	a4,a5,.L100
	.loc 1 574 16
	li	a5,-108
	j	.L105
.L100:
	.loc 1 578 11
	lw	a4,-184(s0)
	lw	a5,-188(s0)
	add	a4,a4,a5
	addi	a2,s0,-164
	addi	a5,s0,-160
	li	a3,48
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-24(s0)
	.loc 1 580 8
	lw	a5,-24(s0)
	beq	a5,zero,.L101
	.loc 1 581 16
	lw	a5,-24(s0)
	j	.L105
.L101:
	.loc 1 584 5
	lw	a5,-20(s0)
	slli	a4,a5,1
	addi	a5,s0,-156
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 587 11
	lw	a5,-160(s0)
	lw	a4,-164(s0)
	addi	a2,s0,-156
	lw	a3,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	convert_der_to_raw_single_int
	sw	a0,-24(s0)
	.loc 1 588 8
	lw	a5,-24(s0)
	bge	a5,zero,.L102
	.loc 1 589 16
	lw	a5,-24(s0)
	j	.L105
.L102:
	.loc 1 591 7
	lw	a4,-160(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-160(s0)
	.loc 1 592 14
	lw	a4,-164(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	sw	a5,-164(s0)
	.loc 1 595 11
	lw	a0,-160(s0)
	lw	a1,-164(s0)
	addi	a4,s0,-156
	lw	a5,-20(s0)
	add	a5,a4,a5
	lw	a3,-20(s0)
	mv	a2,a5
	call	convert_der_to_raw_single_int
	sw	a0,-24(s0)
	.loc 1 597 8
	lw	a5,-24(s0)
	bge	a5,zero,.L103
	.loc 1 598 16
	lw	a5,-24(s0)
	j	.L105
.L103:
	.loc 1 600 7
	lw	a4,-160(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-160(s0)
	.loc 1 601 14
	lw	a4,-164(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	sw	a5,-164(s0)
	.loc 1 604 21
	lw	a4,-160(s0)
	lw	a5,-184(s0)
	sub	a4,a4,a5
	.loc 1 604 28
	lw	a5,-188(s0)
	.loc 1 604 8
	beq	a4,a5,.L104
	.loc 1 605 16
	li	a5,-102
	j	.L105
.L104:
	.loc 1 608 5
	lw	a5,-20(s0)
	slli	a4,a5,1
	addi	a5,s0,-156
	mv	a2,a4
	mv	a1,a5
	lw	a0,-192(s0)
	call	memcpy
	.loc 1 609 18
	lw	a5,-20(s0)
	slli	a4,a5,1
	.loc 1 609 14
	lw	a5,-200(s0)
	sw	a4,0(a5)
	.loc 1 611 12
	li	a5,0
.L105:
	.loc 1 612 1
	mv	a0,a5
	lw	ra,204(sp)
	.cfi_restore 1
	lw	s0,200(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 208
	addi	sp,sp,208
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE81:
	.size	mbedtls_ecdsa_der_to_raw, .-mbedtls_ecdsa_der_to_raw
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_types.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecp.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_util_internal.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/asn1.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/asn1write.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x72c
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x16
	.4byte	.LASF78
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
	.uleb128 0xc
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
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0xc
	.4byte	0x76
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x3
	.byte	0x25
	.byte	0x13
	.4byte	0x3e
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x18
	.byte	0x4
	.uleb128 0x10
	.4byte	0xb2
	.uleb128 0x7
	.4byte	0x32
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x7
	.4byte	0xcf
	.uleb128 0x10
	.4byte	0xc5
	.uleb128 0x19
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3b
	.byte	0x11
	.4byte	0x9a
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x4
	.byte	0x61
	.byte	0x11
	.4byte	0xa6
	.uleb128 0x7
	.4byte	0x76
	.uleb128 0x1a
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x5
	.byte	0x66
	.byte	0xe
	.4byte	0x150
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x5
	.byte	0x75
	.byte	0x3
	.4byte	0xed
	.uleb128 0x7
	.4byte	0xa6
	.uleb128 0x1b
	.byte	0x4
	.byte	0x6
	.byte	0x2a
	.byte	0x9
	.4byte	0x181
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x2c
	.4byte	0x8e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x30
	.4byte	0x8e
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x6
	.byte	0x31
	.byte	0x3
	.4byte	0x161
	.uleb128 0xc
	.4byte	0x181
	.uleb128 0xd
	.4byte	0x18d
	.4byte	0x1a2
	.uleb128 0xe
	.4byte	0x6f
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	0x192
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x34
	.4byte	0x1a2
	.uleb128 0xd
	.4byte	0x18d
	.4byte	0x1c1
	.uleb128 0xe
	.4byte	0x6f
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	0x1b1
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x45
	.4byte	0x1c1
	.uleb128 0x13
	.4byte	0x1a7
	.byte	0x36
	.uleb128 0x5
	.byte	0x3
	.4byte	psa_to_md_errors
	.uleb128 0x13
	.4byte	0x1c6
	.byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	psa_to_pk_rsa_errors
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x7
	.byte	0x21
	.byte	0x8
	.4byte	0xb2
	.4byte	0x208
	.uleb128 0x1
	.4byte	0xb2
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x8
	.byte	0xf5
	.byte	0x5
	.4byte	0x68
	.4byte	0x22d
	.uleb128 0x1
	.4byte	0x22d
	.uleb128 0x1
	.4byte	0x232
	.uleb128 0x1
	.4byte	0xe8
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x7
	.4byte	0xb9
	.uleb128 0x7
	.4byte	0x39
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x7
	.byte	0x20
	.byte	0x8
	.4byte	0xb2
	.4byte	0x257
	.uleb128 0x1
	.4byte	0xb2
	.uleb128 0x1
	.4byte	0xc5
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x9
	.byte	0x43
	.byte	0x5
	.4byte	0x68
	.4byte	0x277
	.uleb128 0x1
	.4byte	0x22d
	.uleb128 0x1
	.4byte	0x232
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x9
	.byte	0x35
	.byte	0x5
	.4byte	0x68
	.4byte	0x297
	.uleb128 0x1
	.4byte	0x22d
	.uleb128 0x1
	.4byte	0x232
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x7
	.byte	0x1f
	.byte	0x8
	.4byte	0xb2
	.4byte	0x2b7
	.uleb128 0x1
	.4byte	0xb4
	.uleb128 0x1
	.4byte	0xca
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF45
	.byte	0xa
	.2byte	0x104f
	.byte	0xe
	.4byte	0xd0
	.4byte	0x2d3
	.uleb128 0x1
	.4byte	0x15c
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xf
	.4byte	.LASF55
	.2byte	0x22c
	.4byte	0x68
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x399
	.uleb128 0x2
	.4byte	.LASF46
	.2byte	0x22c
	.byte	0x25
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0xb
	.string	"der"
	.2byte	0x22c
	.byte	0x40
	.4byte	0x232
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2
	.4byte	.LASF47
	.2byte	0x22c
	.byte	0x4c
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0xb
	.string	"raw"
	.2byte	0x22d
	.byte	0x2d
	.4byte	0xb9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2
	.4byte	.LASF48
	.2byte	0x22d
	.byte	0x39
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x2
	.4byte	.LASF49
	.2byte	0x22d
	.byte	0x4b
	.4byte	0xe8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x9
	.4byte	.LASF50
	.2byte	0x22f
	.byte	0x13
	.4byte	0x399
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x4
	.string	"p"
	.2byte	0x230
	.byte	0x14
	.4byte	0xb9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x9
	.4byte	.LASF51
	.2byte	0x231
	.byte	0xc
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x9
	.4byte	.LASF52
	.2byte	0x232
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"ret"
	.2byte	0x233
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.4byte	0x32
	.4byte	0x3a9
	.uleb128 0xe
	.4byte	0x6f
	.byte	0x83
	.byte	0
	.uleb128 0x14
	.4byte	.LASF59
	.2byte	0x1fe
	.4byte	0x68
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x439
	.uleb128 0xb
	.string	"der"
	.2byte	0x1fe
	.byte	0x39
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF47
	.2byte	0x1fe
	.byte	0x45
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"raw"
	.2byte	0x1ff
	.byte	0x39
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF52
	.2byte	0x1ff
	.byte	0x45
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.string	"p"
	.2byte	0x201
	.byte	0x14
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.string	"ret"
	.2byte	0x202
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF53
	.2byte	0x203
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.4byte	.LASF54
	.2byte	0x203
	.byte	0x1a
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.4byte	.LASF56
	.2byte	0x1b1
	.4byte	0x68
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50a
	.uleb128 0x2
	.4byte	.LASF46
	.2byte	0x1b1
	.byte	0x25
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0xb
	.string	"raw"
	.2byte	0x1b1
	.byte	0x40
	.4byte	0x232
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2
	.4byte	.LASF49
	.2byte	0x1b1
	.byte	0x4c
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0xb
	.string	"der"
	.2byte	0x1b2
	.byte	0x2d
	.4byte	0xb9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2
	.4byte	.LASF57
	.2byte	0x1b2
	.byte	0x39
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x2
	.4byte	.LASF47
	.2byte	0x1b2
	.byte	0x4b
	.4byte	0xe8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x4
	.string	"r"
	.2byte	0x1b4
	.byte	0x13
	.4byte	0x50a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x4
	.string	"s"
	.2byte	0x1b5
	.byte	0x13
	.4byte	0x50a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x9
	.4byte	.LASF58
	.2byte	0x1b6
	.byte	0x12
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"len"
	.2byte	0x1b7
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.string	"p"
	.2byte	0x1b8
	.byte	0x14
	.4byte	0xb9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x4
	.string	"ret"
	.2byte	0x1b9
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xd
	.4byte	0x32
	.4byte	0x51a
	.uleb128 0xe
	.4byte	0x6f
	.byte	0x41
	.byte	0
	.uleb128 0x14
	.4byte	.LASF60
	.2byte	0x186
	.4byte	0x68
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x59b
	.uleb128 0x2
	.4byte	.LASF61
	.2byte	0x186
	.byte	0x3f
	.4byte	0x232
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF49
	.2byte	0x186
	.byte	0x4f
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF62
	.2byte	0x187
	.byte	0x39
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF63
	.2byte	0x188
	.byte	0x39
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.string	"p"
	.2byte	0x18a
	.byte	0x14
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.string	"len"
	.2byte	0x18b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"ret"
	.2byte	0x18c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.4byte	.LASF64
	.2byte	0x15c
	.4byte	0x68
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f1
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x15c
	.byte	0x22
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF66
	.2byte	0x15d
	.byte	0x2b
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF67
	.2byte	0x15e
	.byte	0x23
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.4byte	.LASF68
	.2byte	0x166
	.byte	0x12
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x106
	.byte	0x16
	.4byte	0x150
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x62b
	.uleb128 0x2
	.4byte	.LASF70
	.2byte	0x106
	.byte	0x42
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.4byte	.LASF46
	.2byte	0x107
	.byte	0x38
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF71
	.byte	0x1
	.byte	0xbd
	.byte	0x12
	.4byte	0xdc
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x662
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0xbd
	.byte	0x40
	.4byte	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0xbe
	.byte	0x33
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x9d
	.4byte	0x68
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x689
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x9d
	.byte	0x2b
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x8f
	.4byte	0x68
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6f1
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x8f
	.byte	0x28
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF75
	.byte	0x90
	.byte	0x37
	.4byte	0x6f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF76
	.byte	0x91
	.byte	0x22
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF77
	.byte	0x92
	.byte	0x21
	.4byte	0x705
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0x94
	.byte	0x11
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x18d
	.uleb128 0x21
	.4byte	0x68
	.4byte	0x705
	.uleb128 0x1
	.4byte	0xd0
	.byte	0
	.uleb128 0x7
	.4byte	0x6f6
	.uleb128 0x22
	.4byte	.LASF79
	.byte	0x1
	.byte	0x7d
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x7d
	.byte	0x30
	.4byte	0xd0
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x10
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 35
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 28
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
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
	.4byte	.LFB72
	.uleb128 .LFE72-.LFB72
	.byte	0x7
	.4byte	.LFB73
	.uleb128 .LFE73-.LFB73
	.byte	0x7
	.4byte	.LFB74
	.uleb128 .LFE74-.LFB74
	.byte	0x7
	.4byte	.LFB75
	.uleb128 .LFE75-.LFB75
	.byte	0x7
	.4byte	.LFB76
	.uleb128 .LFE76-.LFB76
	.byte	0x7
	.4byte	.LFB77
	.uleb128 .LFE77-.LFB77
	.byte	0x7
	.4byte	.LFB78
	.uleb128 .LFE78-.LFB78
	.byte	0x7
	.4byte	.LFB79
	.uleb128 .LFE79-.LFB79
	.byte	0x7
	.4byte	.LFB80
	.uleb128 .LFE80-.LFB80
	.byte	0x7
	.4byte	.LFB81
	.uleb128 .LFE81-.LFB81
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF47:
	.string	"der_len"
.LASF23:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF48:
	.string	"raw_size"
.LASF4:
	.string	"short int"
.LASF12:
	.string	"size_t"
.LASF54:
	.string	"padding_len"
.LASF33:
	.string	"mbedtls_ecp_group_id"
.LASF60:
	.string	"convert_raw_to_der_single_int"
.LASF26:
	.string	"MBEDTLS_ECP_DP_BP384R1"
.LASF53:
	.string	"unpadded_len"
.LASF21:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF72:
	.string	"grpid"
.LASF50:
	.string	"raw_tmp"
.LASF44:
	.string	"memcpy"
.LASF45:
	.string	"psa_generate_random"
.LASF34:
	.string	"psa_status"
.LASF75:
	.string	"local_translations"
.LASF15:
	.string	"uint8_t"
.LASF65:
	.string	"p_rng"
.LASF56:
	.string	"mbedtls_ecdsa_raw_to_der"
.LASF73:
	.string	"psa_pk_status_to_mbedtls"
.LASF42:
	.string	"mbedtls_asn1_write_tag"
.LASF76:
	.string	"local_errors_num"
.LASF77:
	.string	"fallback_f"
.LASF30:
	.string	"MBEDTLS_ECP_DP_SECP224K1"
.LASF43:
	.string	"mbedtls_asn1_write_len"
.LASF8:
	.string	"long long int"
.LASF71:
	.string	"mbedtls_ecc_group_to_psa"
.LASF46:
	.string	"bits"
.LASF61:
	.string	"raw_buf"
.LASF39:
	.string	"memset"
.LASF35:
	.string	"mbedtls_error"
.LASF6:
	.string	"long int"
.LASF55:
	.string	"mbedtls_ecdsa_der_to_raw"
.LASF51:
	.string	"data_len"
.LASF59:
	.string	"convert_der_to_raw_single_int"
.LASF11:
	.string	"long double"
.LASF41:
	.string	"memmove"
.LASF3:
	.string	"unsigned char"
.LASF57:
	.string	"der_size"
.LASF79:
	.string	"psa_generic_status_to_mbedtls"
.LASF31:
	.string	"MBEDTLS_ECP_DP_SECP256K1"
.LASF19:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF40:
	.string	"mbedtls_asn1_get_tag"
.LASF32:
	.string	"MBEDTLS_ECP_DP_CURVE448"
.LASF10:
	.string	"unsigned int"
.LASF24:
	.string	"MBEDTLS_ECP_DP_SECP521R1"
.LASF69:
	.string	"mbedtls_ecc_group_from_psa"
.LASF58:
	.string	"coordinate_len"
.LASF5:
	.string	"short unsigned int"
.LASF68:
	.string	"status"
.LASF63:
	.string	"der_buf_end"
.LASF16:
	.string	"char"
.LASF14:
	.string	"int32_t"
.LASF13:
	.string	"int16_t"
.LASF78:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF17:
	.string	"psa_status_t"
.LASF67:
	.string	"output_size"
.LASF22:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF7:
	.string	"long unsigned int"
.LASF27:
	.string	"MBEDTLS_ECP_DP_BP512R1"
.LASF25:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF64:
	.string	"mbedtls_psa_get_random"
.LASF37:
	.string	"psa_to_md_errors"
.LASF52:
	.string	"coordinate_size"
.LASF20:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF38:
	.string	"psa_to_pk_rsa_errors"
.LASF70:
	.string	"family"
.LASF18:
	.string	"psa_ecc_family_t"
.LASF66:
	.string	"output"
.LASF28:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF62:
	.string	"der_buf_start"
.LASF36:
	.string	"mbedtls_error_pair_t"
.LASF74:
	.string	"psa_status_to_mbedtls"
.LASF49:
	.string	"raw_len"
.LASF29:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_util.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
