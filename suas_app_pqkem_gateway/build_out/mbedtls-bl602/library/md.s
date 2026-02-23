	.file	"md.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/md.c"
	.section	.srodata.mbedtls_md5_info,"a"
	.align	2
	.type	mbedtls_md5_info, @object
	.size	mbedtls_md5_info, 3
mbedtls_md5_info:
	.byte	3
	.byte	16
	.byte	64
	.section	.srodata.mbedtls_ripemd160_info,"a"
	.align	2
	.type	mbedtls_ripemd160_info, @object
	.size	mbedtls_ripemd160_info, 3
mbedtls_ripemd160_info:
	.byte	4
	.byte	20
	.byte	64
	.section	.srodata.mbedtls_sha1_info,"a"
	.align	2
	.type	mbedtls_sha1_info, @object
	.size	mbedtls_sha1_info, 3
mbedtls_sha1_info:
	.byte	5
	.byte	20
	.byte	64
	.section	.srodata.mbedtls_sha224_info,"a"
	.align	2
	.type	mbedtls_sha224_info, @object
	.size	mbedtls_sha224_info, 3
mbedtls_sha224_info:
	.byte	8
	.byte	28
	.byte	64
	.section	.srodata.mbedtls_sha256_info,"a"
	.align	2
	.type	mbedtls_sha256_info, @object
	.size	mbedtls_sha256_info, 3
mbedtls_sha256_info:
	.byte	9
	.byte	32
	.byte	64
	.section	.srodata.mbedtls_sha384_info,"a"
	.align	2
	.type	mbedtls_sha384_info, @object
	.size	mbedtls_sha384_info, 3
mbedtls_sha384_info:
	.byte	10
	.byte	48
	.byte	-128
	.section	.srodata.mbedtls_sha512_info,"a"
	.align	2
	.type	mbedtls_sha512_info, @object
	.size	mbedtls_sha512_info, 3
mbedtls_sha512_info:
	.byte	11
	.byte	64
	.byte	-128
	.section	.srodata.mbedtls_sha3_224_info,"a"
	.align	2
	.type	mbedtls_sha3_224_info, @object
	.size	mbedtls_sha3_224_info, 3
mbedtls_sha3_224_info:
	.byte	16
	.byte	28
	.byte	-112
	.section	.srodata.mbedtls_sha3_256_info,"a"
	.align	2
	.type	mbedtls_sha3_256_info, @object
	.size	mbedtls_sha3_256_info, 3
mbedtls_sha3_256_info:
	.byte	17
	.byte	32
	.byte	-120
	.section	.srodata.mbedtls_sha3_384_info,"a"
	.align	2
	.type	mbedtls_sha3_384_info, @object
	.size	mbedtls_sha3_384_info, 3
mbedtls_sha3_384_info:
	.byte	18
	.byte	48
	.byte	104
	.section	.srodata.mbedtls_sha3_512_info,"a"
	.align	2
	.type	mbedtls_sha3_512_info, @object
	.size	mbedtls_sha3_512_info, 3
mbedtls_sha3_512_info:
	.byte	19
	.byte	64
	.byte	72
	.section	.text.mbedtls_md_info_from_type,"ax",@progbits
	.align	1
	.globl	mbedtls_md_info_from_type
	.type	mbedtls_md_info_from_type, @function
mbedtls_md_info_from_type:
.LFB72:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/md.c"
	.loc 1 140 1
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
	sb	a5,-17(s0)
	.loc 1 141 5
	lbu	a5,-17(s0)
	li	a4,19
	beq	a5,a4,.L2
	li	a4,19
	bgt	a5,a4,.L3
	li	a4,18
	beq	a5,a4,.L4
	li	a4,18
	bgt	a5,a4,.L3
	li	a4,17
	beq	a5,a4,.L5
	li	a4,17
	bgt	a5,a4,.L3
	li	a4,16
	beq	a5,a4,.L6
	li	a4,16
	bgt	a5,a4,.L3
	li	a4,11
	beq	a5,a4,.L7
	li	a4,11
	bgt	a5,a4,.L3
	li	a4,10
	beq	a5,a4,.L8
	li	a4,10
	bgt	a5,a4,.L3
	li	a4,9
	beq	a5,a4,.L9
	li	a4,9
	bgt	a5,a4,.L3
	li	a4,8
	beq	a5,a4,.L10
	li	a4,8
	bgt	a5,a4,.L3
	li	a4,5
	beq	a5,a4,.L11
	li	a4,5
	bgt	a5,a4,.L3
	li	a4,3
	beq	a5,a4,.L12
	li	a4,4
	beq	a5,a4,.L13
	j	.L3
.L12:
	.loc 1 144 20
	lui	a5,%hi(mbedtls_md5_info)
	addi	a5,a5,%lo(mbedtls_md5_info)
	j	.L14
.L13:
	.loc 1 148 20
	lui	a5,%hi(mbedtls_ripemd160_info)
	addi	a5,a5,%lo(mbedtls_ripemd160_info)
	j	.L14
.L11:
	.loc 1 152 20
	lui	a5,%hi(mbedtls_sha1_info)
	addi	a5,a5,%lo(mbedtls_sha1_info)
	j	.L14
.L10:
	.loc 1 156 20
	lui	a5,%hi(mbedtls_sha224_info)
	addi	a5,a5,%lo(mbedtls_sha224_info)
	j	.L14
.L9:
	.loc 1 160 20
	lui	a5,%hi(mbedtls_sha256_info)
	addi	a5,a5,%lo(mbedtls_sha256_info)
	j	.L14
.L8:
	.loc 1 164 20
	lui	a5,%hi(mbedtls_sha384_info)
	addi	a5,a5,%lo(mbedtls_sha384_info)
	j	.L14
.L7:
	.loc 1 168 20
	lui	a5,%hi(mbedtls_sha512_info)
	addi	a5,a5,%lo(mbedtls_sha512_info)
	j	.L14
.L6:
	.loc 1 172 20
	lui	a5,%hi(mbedtls_sha3_224_info)
	addi	a5,a5,%lo(mbedtls_sha3_224_info)
	j	.L14
.L5:
	.loc 1 176 20
	lui	a5,%hi(mbedtls_sha3_256_info)
	addi	a5,a5,%lo(mbedtls_sha3_256_info)
	j	.L14
.L4:
	.loc 1 180 20
	lui	a5,%hi(mbedtls_sha3_384_info)
	addi	a5,a5,%lo(mbedtls_sha3_384_info)
	j	.L14
.L2:
	.loc 1 184 20
	lui	a5,%hi(mbedtls_sha3_512_info)
	addi	a5,a5,%lo(mbedtls_sha3_512_info)
	j	.L14
.L3:
	.loc 1 187 19
	li	a5,0
.L14:
	.loc 1 189 1
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
	.size	mbedtls_md_info_from_type, .-mbedtls_md_info_from_type
	.section	.text.mbedtls_md_init,"ax",@progbits
	.align	1
	.globl	mbedtls_md_init
	.type	mbedtls_md_init, @function
mbedtls_md_init:
.LFB73:
	.loc 1 256 1
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
	.loc 1 258 5
	li	a2,12
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 1 259 1
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
.LFE73:
	.size	mbedtls_md_init, .-mbedtls_md_init
	.section	.text.mbedtls_md_free,"ax",@progbits
	.align	1
	.globl	mbedtls_md_free
	.type	mbedtls_md_free, @function
mbedtls_md_free:
.LFB74:
	.loc 1 262 1
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
	.loc 1 263 8
	lw	a5,-20(s0)
	beq	a5,zero,.L32
	.loc 1 263 26 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 263 20 discriminator 1
	beq	a5,zero,.L32
	.loc 1 267 12
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 267 8
	beq	a5,zero,.L20
	.loc 1 273 20
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 273 29
	lbu	a5,0(a5)
	.loc 1 273 9
	li	a4,19
	bgt	a5,a4,.L33
	li	a4,16
	bge	a5,a4,.L22
	li	a4,11
	beq	a5,a4,.L23
	li	a4,11
	bgt	a5,a4,.L33
	li	a4,10
	beq	a5,a4,.L24
	li	a4,10
	bgt	a5,a4,.L33
	li	a4,9
	beq	a5,a4,.L25
	li	a4,9
	bgt	a5,a4,.L33
	li	a4,8
	beq	a5,a4,.L26
	li	a4,8
	bgt	a5,a4,.L33
	li	a4,5
	beq	a5,a4,.L27
	li	a4,5
	bgt	a5,a4,.L33
	li	a4,3
	beq	a5,a4,.L28
	li	a4,4
	beq	a5,a4,.L29
	.loc 1 319 17
	j	.L33
.L28:
	.loc 1 276 37
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 276 17
	mv	a0,a5
	call	mbedtls_md5_free
	.loc 1 277 17
	j	.L30
.L29:
	.loc 1 281 43
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 281 17
	mv	a0,a5
	call	mbedtls_ripemd160_free
	.loc 1 282 17
	j	.L30
.L27:
	.loc 1 286 38
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 286 17
	mv	a0,a5
	call	mbedtls_sha1_free
	.loc 1 287 17
	j	.L30
.L26:
	.loc 1 291 40
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 291 17
	mv	a0,a5
	call	mbedtls_sha256_free
	.loc 1 292 17
	j	.L30
.L25:
	.loc 1 296 40
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 296 17
	mv	a0,a5
	call	mbedtls_sha256_free
	.loc 1 297 17
	j	.L30
.L24:
	.loc 1 301 40
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 301 17
	mv	a0,a5
	call	mbedtls_sha512_free
	.loc 1 302 17
	j	.L30
.L23:
	.loc 1 306 40
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 306 17
	mv	a0,a5
	call	mbedtls_sha512_free
	.loc 1 307 17
	j	.L30
.L22:
	.loc 1 314 38
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 314 17
	mv	a0,a5
	call	mbedtls_sha3_free
	.loc 1 315 17
	j	.L30
.L33:
	.loc 1 319 17
	nop
.L30:
	.loc 1 321 9
	lw	a5,-20(s0)
	lw	a5,4(a5)
	mv	a0,a5
	call	free
.L20:
	.loc 1 325 12
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 325 8
	beq	a5,zero,.L31
	.loc 1 326 9
	lw	a5,-20(s0)
	lw	a4,8(a5)
	.loc 1 327 41
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 327 50
	lbu	a5,2(a5)
	.loc 1 327 36
	slli	a5,a5,1
	.loc 1 326 9
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_zeroize_and_free
.L31:
	.loc 1 331 5
	li	a1,12
	lw	a0,-20(s0)
	call	mbedtls_platform_zeroize
	j	.L16
.L32:
	.loc 1 264 9
	nop
.L16:
	.loc 1 332 1
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
	.size	mbedtls_md_free, .-mbedtls_md_free
	.section	.text.mbedtls_md_clone,"ax",@progbits
	.align	1
	.globl	mbedtls_md_clone
	.type	mbedtls_md_clone, @function
mbedtls_md_clone:
.LFB75:
	.loc 1 336 1
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
	.loc 1 337 8
	lw	a5,-20(s0)
	beq	a5,zero,.L35
	.loc 1 337 26 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 337 20 discriminator 1
	beq	a5,zero,.L35
	.loc 1 337 44 discriminator 2
	lw	a5,-24(s0)
	beq	a5,zero,.L35
	.loc 1 338 26
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 338 20
	beq	a5,zero,.L35
	.loc 1 339 12
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 339 28
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 338 44 discriminator 1
	beq	a4,a5,.L36
.L35:
	.loc 1 340 16
	li	a5,-20480
	addi	a5,a5,-256
	j	.L37
.L36:
	.loc 1 358 16
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 358 25
	lbu	a5,0(a5)
	.loc 1 358 5
	li	a4,19
	bgt	a5,a4,.L38
	li	a4,16
	bge	a5,a4,.L39
	li	a4,11
	beq	a5,a4,.L40
	li	a4,11
	bgt	a5,a4,.L38
	li	a4,10
	beq	a5,a4,.L41
	li	a4,10
	bgt	a5,a4,.L38
	li	a4,9
	beq	a5,a4,.L42
	li	a4,9
	bgt	a5,a4,.L38
	li	a4,8
	beq	a5,a4,.L43
	li	a4,8
	bgt	a5,a4,.L38
	li	a4,5
	beq	a5,a4,.L44
	li	a4,5
	bgt	a5,a4,.L38
	li	a4,3
	beq	a5,a4,.L45
	li	a4,4
	beq	a5,a4,.L46
	j	.L38
.L45:
	.loc 1 361 34
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 361 47
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 361 13
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_md5_clone
	.loc 1 362 13
	j	.L47
.L46:
	.loc 1 366 40
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 366 53
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 366 13
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_ripemd160_clone
	.loc 1 367 13
	j	.L47
.L44:
	.loc 1 371 35
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 371 48
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 371 13
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_sha1_clone
	.loc 1 372 13
	j	.L47
.L43:
	.loc 1 376 37
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 376 50
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 376 13
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_sha256_clone
	.loc 1 377 13
	j	.L47
.L42:
	.loc 1 381 37
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 381 50
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 381 13
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_sha256_clone
	.loc 1 382 13
	j	.L47
.L41:
	.loc 1 386 37
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 386 50
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 386 13
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_sha512_clone
	.loc 1 387 13
	j	.L47
.L40:
	.loc 1 391 37
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 391 50
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 391 13
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_sha512_clone
	.loc 1 392 13
	j	.L47
.L39:
	.loc 1 399 35
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 399 48
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 399 13
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_sha3_clone
	.loc 1 400 13
	j	.L47
.L38:
	.loc 1 403 20
	li	a5,-20480
	addi	a5,a5,-256
	j	.L37
.L47:
	.loc 1 406 12
	li	a5,0
.L37:
	.loc 1 407 1
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
	.size	mbedtls_md_clone, .-mbedtls_md_clone
	.section	.text.mbedtls_md_setup,"ax",@progbits
	.align	1
	.globl	mbedtls_md_setup
	.type	mbedtls_md_setup, @function
mbedtls_md_setup:
.LFB76:
	.loc 1 419 1
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
	.loc 1 421 8
	lw	a5,-20(s0)
	bne	a5,zero,.L49
	.loc 1 422 16
	li	a5,-20480
	addi	a5,a5,-256
	j	.L50
.L49:
	.loc 1 425 8
	lw	a5,-24(s0)
	bne	a5,zero,.L51
	.loc 1 426 16
	li	a5,-20480
	addi	a5,a5,-256
	j	.L50
.L51:
	.loc 1 429 18
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 430 17
	lw	a5,-20(s0)
	sw	zero,4(a5)
	.loc 1 432 19
	lw	a5,-20(s0)
	sw	zero,8(a5)
	.loc 1 448 20
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 1 448 5
	li	a4,19
	bgt	a5,a4,.L52
	li	a4,16
	bge	a5,a4,.L53
	li	a4,11
	beq	a5,a4,.L54
	li	a4,11
	bgt	a5,a4,.L52
	li	a4,10
	beq	a5,a4,.L55
	li	a4,10
	bgt	a5,a4,.L52
	li	a4,9
	beq	a5,a4,.L56
	li	a4,9
	bgt	a5,a4,.L52
	li	a4,8
	beq	a5,a4,.L57
	li	a4,8
	bgt	a5,a4,.L52
	li	a4,5
	beq	a5,a4,.L58
	li	a4,5
	bgt	a5,a4,.L52
	li	a4,3
	beq	a5,a4,.L59
	li	a4,4
	beq	a5,a4,.L60
	j	.L52
.L59:
	.loc 1 451 32
	li	a1,88
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 1 451 30 discriminator 1
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 451 79 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 451 75 discriminator 1
	bne	a5,zero,.L61
	.loc 1 451 21 discriminator 2
	li	a5,-20480
	addi	a5,a5,-384
	.loc 1 451 21 is_stmt 0
	j	.L50
.L61:
	.loc 1 451 50 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 451 30 discriminator 3
	mv	a0,a5
	call	mbedtls_md5_init
	.loc 1 452 13
	j	.L62
.L60:
	.loc 1 456 32
	li	a1,92
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 1 456 30 discriminator 1
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 456 85 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 456 81 discriminator 1
	bne	a5,zero,.L63
	.loc 1 456 21 discriminator 2
	li	a5,-20480
	addi	a5,a5,-384
	.loc 1 456 21 is_stmt 0
	j	.L50
.L63:
	.loc 1 456 56 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 456 30 discriminator 3
	mv	a0,a5
	call	mbedtls_ripemd160_init
	.loc 1 457 13
	j	.L62
.L58:
	.loc 1 461 32
	li	a1,92
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 1 461 30 discriminator 1
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 461 80 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 461 76 discriminator 1
	bne	a5,zero,.L64
	.loc 1 461 21 discriminator 2
	li	a5,-20480
	addi	a5,a5,-384
	.loc 1 461 21 is_stmt 0
	j	.L50
.L64:
	.loc 1 461 51 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 461 30 discriminator 3
	mv	a0,a5
	call	mbedtls_sha1_init
	.loc 1 462 13
	j	.L62
.L57:
	.loc 1 466 32
	li	a1,108
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 1 466 30 discriminator 1
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 466 82 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 466 78 discriminator 1
	bne	a5,zero,.L65
	.loc 1 466 21 discriminator 2
	li	a5,-20480
	addi	a5,a5,-384
	.loc 1 466 21 is_stmt 0
	j	.L50
.L65:
	.loc 1 466 53 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 466 30 discriminator 3
	mv	a0,a5
	call	mbedtls_sha256_init
	.loc 1 467 13
	j	.L62
.L56:
	.loc 1 471 32
	li	a1,108
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 1 471 30 discriminator 1
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 471 82 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 471 78 discriminator 1
	bne	a5,zero,.L66
	.loc 1 471 21 discriminator 2
	li	a5,-20480
	addi	a5,a5,-384
	.loc 1 471 21 is_stmt 0
	j	.L50
.L66:
	.loc 1 471 53 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 471 30 discriminator 3
	mv	a0,a5
	call	mbedtls_sha256_init
	.loc 1 472 13
	j	.L62
.L55:
	.loc 1 476 32
	li	a1,216
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 1 476 30 discriminator 1
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 476 82 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 476 78 discriminator 1
	bne	a5,zero,.L67
	.loc 1 476 21 discriminator 2
	li	a5,-20480
	addi	a5,a5,-384
	.loc 1 476 21 is_stmt 0
	j	.L50
.L67:
	.loc 1 476 53 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 476 30 discriminator 3
	mv	a0,a5
	call	mbedtls_sha512_init
	.loc 1 477 13
	j	.L62
.L54:
	.loc 1 481 32
	li	a1,216
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 1 481 30 discriminator 1
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 481 82 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 481 78 discriminator 1
	bne	a5,zero,.L68
	.loc 1 481 21 discriminator 2
	li	a5,-20480
	addi	a5,a5,-384
	.loc 1 481 21 is_stmt 0
	j	.L50
.L68:
	.loc 1 481 53 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 481 30 discriminator 3
	mv	a0,a5
	call	mbedtls_sha512_init
	.loc 1 482 13
	j	.L62
.L53:
	.loc 1 489 32
	li	a1,208
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 1 489 30 discriminator 1
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 489 80 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 489 76 discriminator 1
	bne	a5,zero,.L69
	.loc 1 489 21 discriminator 2
	li	a5,-20480
	addi	a5,a5,-384
	.loc 1 489 21 is_stmt 0
	j	.L50
.L69:
	.loc 1 489 51 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 489 30 discriminator 3
	mv	a0,a5
	call	mbedtls_sha3_init
	.loc 1 490 13
	j	.L62
.L52:
	.loc 1 493 20
	li	a5,-20480
	addi	a5,a5,-256
	j	.L50
.L62:
	.loc 1 497 8
	lw	a5,-28(s0)
	beq	a5,zero,.L70
	.loc 1 498 42
	lw	a5,-24(s0)
	lbu	a5,2(a5)
	.loc 1 498 25
	mv	a1,a5
	li	a0,2
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 1 498 23 discriminator 1
	lw	a5,-20(s0)
	sw	a4,8(a5)
	.loc 1 499 16
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 499 12
	bne	a5,zero,.L70
	.loc 1 500 13
	lw	a0,-20(s0)
	call	mbedtls_md_free
	.loc 1 501 20
	li	a5,-20480
	addi	a5,a5,-384
	j	.L50
.L70:
	.loc 1 506 12
	li	a5,0
.L50:
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
.LFE76:
	.size	mbedtls_md_setup, .-mbedtls_md_setup
	.section	.text.mbedtls_md_starts,"ax",@progbits
	.align	1
	.globl	mbedtls_md_starts
	.type	mbedtls_md_starts, @function
mbedtls_md_starts:
.LFB77:
	.loc 1 511 1
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
	.loc 1 513 8
	lw	a5,-20(s0)
	beq	a5,zero,.L72
	.loc 1 513 26 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 513 20 discriminator 1
	bne	a5,zero,.L73
.L72:
	.loc 1 514 16
	li	a5,-20480
	addi	a5,a5,-256
	j	.L74
.L73:
	.loc 1 527 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 527 25
	lbu	a5,0(a5)
	.loc 1 527 5
	li	a4,19
	beq	a5,a4,.L75
	li	a4,19
	bgt	a5,a4,.L76
	li	a4,18
	beq	a5,a4,.L77
	li	a4,18
	bgt	a5,a4,.L76
	li	a4,17
	beq	a5,a4,.L78
	li	a4,17
	bgt	a5,a4,.L76
	li	a4,16
	beq	a5,a4,.L79
	li	a4,16
	bgt	a5,a4,.L76
	li	a4,11
	beq	a5,a4,.L80
	li	a4,11
	bgt	a5,a4,.L76
	li	a4,10
	beq	a5,a4,.L81
	li	a4,10
	bgt	a5,a4,.L76
	li	a4,9
	beq	a5,a4,.L82
	li	a4,9
	bgt	a5,a4,.L76
	li	a4,8
	beq	a5,a4,.L83
	li	a4,8
	bgt	a5,a4,.L76
	li	a4,5
	beq	a5,a4,.L84
	li	a4,5
	bgt	a5,a4,.L76
	li	a4,3
	beq	a5,a4,.L85
	li	a4,4
	beq	a5,a4,.L86
	j	.L76
.L85:
	.loc 1 530 42
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 530 20
	mv	a0,a5
	call	mbedtls_md5_starts
	mv	a5,a0
	j	.L74
.L86:
	.loc 1 534 48
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 534 20
	mv	a0,a5
	call	mbedtls_ripemd160_starts
	mv	a5,a0
	j	.L74
.L84:
	.loc 1 538 43
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 538 20
	mv	a0,a5
	call	mbedtls_sha1_starts
	mv	a5,a0
	j	.L74
.L83:
	.loc 1 542 45
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 542 20
	li	a1,1
	mv	a0,a5
	call	mbedtls_sha256_starts
	mv	a5,a0
	j	.L74
.L82:
	.loc 1 546 45
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 546 20
	li	a1,0
	mv	a0,a5
	call	mbedtls_sha256_starts
	mv	a5,a0
	j	.L74
.L81:
	.loc 1 550 45
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 550 20
	li	a1,1
	mv	a0,a5
	call	mbedtls_sha512_starts
	mv	a5,a0
	j	.L74
.L80:
	.loc 1 554 45
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 554 20
	li	a1,0
	mv	a0,a5
	call	mbedtls_sha512_starts
	mv	a5,a0
	j	.L74
.L79:
	.loc 1 558 43
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 558 20
	li	a1,1
	mv	a0,a5
	call	mbedtls_sha3_starts
	mv	a5,a0
	j	.L74
.L78:
	.loc 1 560 43
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 560 20
	li	a1,2
	mv	a0,a5
	call	mbedtls_sha3_starts
	mv	a5,a0
	j	.L74
.L77:
	.loc 1 562 43
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 562 20
	li	a1,3
	mv	a0,a5
	call	mbedtls_sha3_starts
	mv	a5,a0
	j	.L74
.L75:
	.loc 1 564 43
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 564 20
	li	a1,4
	mv	a0,a5
	call	mbedtls_sha3_starts
	mv	a5,a0
	j	.L74
.L76:
	.loc 1 567 20
	li	a5,-20480
	addi	a5,a5,-256
.L74:
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
.LFE77:
	.size	mbedtls_md_starts, .-mbedtls_md_starts
	.section	.text.mbedtls_md_update,"ax",@progbits
	.align	1
	.globl	mbedtls_md_update
	.type	mbedtls_md_update, @function
mbedtls_md_update:
.LFB78:
	.loc 1 572 1
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
	.loc 1 574 8
	lw	a5,-20(s0)
	beq	a5,zero,.L88
	.loc 1 574 26 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 574 20 discriminator 1
	bne	a5,zero,.L89
.L88:
	.loc 1 575 16
	li	a5,-20480
	addi	a5,a5,-256
	j	.L90
.L89:
	.loc 1 586 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 586 25
	lbu	a5,0(a5)
	.loc 1 586 5
	li	a4,19
	bgt	a5,a4,.L91
	li	a4,16
	bge	a5,a4,.L92
	li	a4,11
	beq	a5,a4,.L93
	li	a4,11
	bgt	a5,a4,.L91
	li	a4,10
	beq	a5,a4,.L94
	li	a4,10
	bgt	a5,a4,.L91
	li	a4,9
	beq	a5,a4,.L95
	li	a4,9
	bgt	a5,a4,.L91
	li	a4,8
	beq	a5,a4,.L96
	li	a4,8
	bgt	a5,a4,.L91
	li	a4,5
	beq	a5,a4,.L97
	li	a4,5
	bgt	a5,a4,.L91
	li	a4,3
	beq	a5,a4,.L98
	li	a4,4
	beq	a5,a4,.L99
	j	.L91
.L98:
	.loc 1 589 42
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 589 20
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_md5_update
	mv	a5,a0
	j	.L90
.L99:
	.loc 1 593 48
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 593 20
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_ripemd160_update
	mv	a5,a0
	j	.L90
.L97:
	.loc 1 597 43
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 597 20
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_sha1_update
	mv	a5,a0
	j	.L90
.L96:
	.loc 1 601 45
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 601 20
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_sha256_update
	mv	a5,a0
	j	.L90
.L95:
	.loc 1 605 45
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 605 20
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_sha256_update
	mv	a5,a0
	j	.L90
.L94:
	.loc 1 609 45
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 609 20
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_sha512_update
	mv	a5,a0
	j	.L90
.L93:
	.loc 1 613 45
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 613 20
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_sha512_update
	mv	a5,a0
	j	.L90
.L92:
	.loc 1 620 43
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 620 20
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_sha3_update
	mv	a5,a0
	j	.L90
.L91:
	.loc 1 623 20
	li	a5,-20480
	addi	a5,a5,-256
.L90:
	.loc 1 625 1
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
.LFE78:
	.size	mbedtls_md_update, .-mbedtls_md_update
	.section	.text.mbedtls_md_finish,"ax",@progbits
	.align	1
	.globl	mbedtls_md_finish
	.type	mbedtls_md_finish, @function
mbedtls_md_finish:
.LFB79:
	.loc 1 628 1
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
	.loc 1 630 8
	lw	a5,-20(s0)
	beq	a5,zero,.L101
	.loc 1 630 26 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 630 20 discriminator 1
	bne	a5,zero,.L102
.L101:
	.loc 1 631 16
	li	a5,-20480
	addi	a5,a5,-256
	j	.L103
.L102:
	.loc 1 644 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 644 25
	lbu	a5,0(a5)
	.loc 1 644 5
	li	a4,19
	bgt	a5,a4,.L104
	li	a4,16
	bge	a5,a4,.L105
	li	a4,11
	beq	a5,a4,.L106
	li	a4,11
	bgt	a5,a4,.L104
	li	a4,10
	beq	a5,a4,.L107
	li	a4,10
	bgt	a5,a4,.L104
	li	a4,9
	beq	a5,a4,.L108
	li	a4,9
	bgt	a5,a4,.L104
	li	a4,8
	beq	a5,a4,.L109
	li	a4,8
	bgt	a5,a4,.L104
	li	a4,5
	beq	a5,a4,.L110
	li	a4,5
	bgt	a5,a4,.L104
	li	a4,3
	beq	a5,a4,.L111
	li	a4,4
	beq	a5,a4,.L112
	j	.L104
.L111:
	.loc 1 647 42
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 647 20
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_md5_finish
	mv	a5,a0
	j	.L103
.L112:
	.loc 1 651 48
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 651 20
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_ripemd160_finish
	mv	a5,a0
	j	.L103
.L110:
	.loc 1 655 43
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 655 20
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_sha1_finish
	mv	a5,a0
	j	.L103
.L109:
	.loc 1 659 45
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 659 20
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_sha256_finish
	mv	a5,a0
	j	.L103
.L108:
	.loc 1 663 45
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 663 20
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_sha256_finish
	mv	a5,a0
	j	.L103
.L107:
	.loc 1 667 45
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 667 20
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_sha512_finish
	mv	a5,a0
	j	.L103
.L106:
	.loc 1 671 45
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 671 20
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_sha512_finish
	mv	a5,a0
	j	.L103
.L105:
	.loc 1 678 43
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 678 64
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 678 73
	lbu	a5,1(a5)
	.loc 1 678 20
	mv	a2,a5
	lw	a1,-24(s0)
	mv	a0,a4
	call	mbedtls_sha3_finish
	mv	a5,a0
	j	.L103
.L104:
	.loc 1 681 20
	li	a5,-20480
	addi	a5,a5,-256
.L103:
	.loc 1 683 1
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
.LFE79:
	.size	mbedtls_md_finish, .-mbedtls_md_finish
	.section	.text.mbedtls_md,"ax",@progbits
	.align	1
	.globl	mbedtls_md
	.type	mbedtls_md, @function
mbedtls_md:
.LFB80:
	.loc 1 687 1
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
	.loc 1 688 8
	lw	a5,-20(s0)
	bne	a5,zero,.L114
	.loc 1 689 16
	li	a5,-20480
	addi	a5,a5,-256
	j	.L115
.L114:
	.loc 1 702 20
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 702 5
	li	a4,19
	beq	a5,a4,.L116
	li	a4,19
	bgt	a5,a4,.L117
	li	a4,18
	beq	a5,a4,.L118
	li	a4,18
	bgt	a5,a4,.L117
	li	a4,17
	beq	a5,a4,.L119
	li	a4,17
	bgt	a5,a4,.L117
	li	a4,16
	beq	a5,a4,.L120
	li	a4,16
	bgt	a5,a4,.L117
	li	a4,11
	beq	a5,a4,.L121
	li	a4,11
	bgt	a5,a4,.L117
	li	a4,10
	beq	a5,a4,.L122
	li	a4,10
	bgt	a5,a4,.L117
	li	a4,9
	beq	a5,a4,.L123
	li	a4,9
	bgt	a5,a4,.L117
	li	a4,8
	beq	a5,a4,.L124
	li	a4,8
	bgt	a5,a4,.L117
	li	a4,5
	beq	a5,a4,.L125
	li	a4,5
	bgt	a5,a4,.L117
	li	a4,3
	beq	a5,a4,.L126
	li	a4,4
	beq	a5,a4,.L127
	j	.L117
.L126:
	.loc 1 705 20
	lw	a2,-32(s0)
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	mbedtls_md5
	mv	a5,a0
	j	.L115
.L127:
	.loc 1 709 20
	lw	a2,-32(s0)
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	mbedtls_ripemd160
	mv	a5,a0
	j	.L115
.L125:
	.loc 1 713 20
	lw	a2,-32(s0)
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	mbedtls_sha1
	mv	a5,a0
	j	.L115
.L124:
	.loc 1 717 20
	li	a3,1
	lw	a2,-32(s0)
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	mbedtls_sha256
	mv	a5,a0
	j	.L115
.L123:
	.loc 1 721 20
	li	a3,0
	lw	a2,-32(s0)
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	mbedtls_sha256
	mv	a5,a0
	j	.L115
.L122:
	.loc 1 725 20
	li	a3,1
	lw	a2,-32(s0)
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	mbedtls_sha512
	mv	a5,a0
	j	.L115
.L121:
	.loc 1 729 20
	li	a3,0
	lw	a2,-32(s0)
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	mbedtls_sha512
	mv	a5,a0
	j	.L115
.L120:
	.loc 1 733 79
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	.loc 1 733 20
	mv	a4,a5
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	li	a0,1
	call	mbedtls_sha3
	mv	a5,a0
	j	.L115
.L119:
	.loc 1 735 79
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	.loc 1 735 20
	mv	a4,a5
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	li	a0,2
	call	mbedtls_sha3
	mv	a5,a0
	j	.L115
.L118:
	.loc 1 737 79
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	.loc 1 737 20
	mv	a4,a5
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	li	a0,3
	call	mbedtls_sha3
	mv	a5,a0
	j	.L115
.L116:
	.loc 1 739 79
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	.loc 1 739 20
	mv	a4,a5
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	li	a0,4
	call	mbedtls_sha3
	mv	a5,a0
	j	.L115
.L117:
	.loc 1 742 20
	li	a5,-20480
	addi	a5,a5,-256
.L115:
	.loc 1 744 1
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
.LFE80:
	.size	mbedtls_md, .-mbedtls_md
	.section	.text.mbedtls_md_get_size,"ax",@progbits
	.align	1
	.globl	mbedtls_md_get_size
	.type	mbedtls_md_get_size, @function
mbedtls_md_get_size:
.LFB81:
	.loc 1 747 1
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
	.loc 1 748 8
	lw	a5,-20(s0)
	bne	a5,zero,.L129
	.loc 1 749 16
	li	a5,0
	j	.L130
.L129:
	.loc 1 752 19
	lw	a5,-20(s0)
	lbu	a5,1(a5)
.L130:
	.loc 1 753 1
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
.LFE81:
	.size	mbedtls_md_get_size, .-mbedtls_md_get_size
	.section	.text.mbedtls_md_get_type,"ax",@progbits
	.align	1
	.globl	mbedtls_md_get_type
	.type	mbedtls_md_get_type, @function
mbedtls_md_get_type:
.LFB82:
	.loc 1 756 1
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
	.loc 1 757 8
	lw	a5,-20(s0)
	bne	a5,zero,.L132
	.loc 1 758 16
	li	a5,0
	j	.L133
.L132:
	.loc 1 761 19
	lw	a5,-20(s0)
	lbu	a5,0(a5)
.L133:
	.loc 1 762 1
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
.LFE82:
	.size	mbedtls_md_get_type, .-mbedtls_md_get_type
	.section	.text.mbedtls_md_error_from_psa,"ax",@progbits
	.align	1
	.globl	mbedtls_md_error_from_psa
	.type	mbedtls_md_error_from_psa, @function
mbedtls_md_error_from_psa:
.LFB83:
	.loc 1 766 1
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
	.loc 1 767 12
	lui	a5,%hi(psa_generic_status_to_mbedtls)
	addi	a3,a5,%lo(psa_generic_status_to_mbedtls)
	li	a2,4
	lui	a5,%hi(psa_to_md_errors)
	addi	a1,a5,%lo(psa_to_md_errors)
	lw	a0,-20(s0)
	call	psa_status_to_mbedtls
	mv	a5,a0
	.loc 1 769 1
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
.LFE83:
	.size	mbedtls_md_error_from_psa, .-mbedtls_md_error_from_psa
	.section	.rodata.supported_digests,"a"
	.align	2
	.type	supported_digests, @object
	.size	supported_digests, 48
supported_digests:
	.word	11
	.word	10
	.word	9
	.word	8
	.word	5
	.word	4
	.word	3
	.word	16
	.word	17
	.word	18
	.word	19
	.word	0
	.section	.text.mbedtls_md_list,"ax",@progbits
	.align	1
	.globl	mbedtls_md_list
	.type	mbedtls_md_list, @function
mbedtls_md_list:
.LFB84:
	.loc 1 831 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 832 12
	lui	a5,%hi(supported_digests)
	addi	a5,a5,%lo(supported_digests)
	.loc 1 833 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE84:
	.size	mbedtls_md_list, .-mbedtls_md_list
	.section	.rodata
	.align	2
.LC0:
	.string	"MD5"
	.align	2
.LC1:
	.string	"RIPEMD160"
	.align	2
.LC2:
	.string	"SHA1"
	.align	2
.LC3:
	.string	"SHA"
	.align	2
.LC4:
	.string	"SHA224"
	.align	2
.LC5:
	.string	"SHA256"
	.align	2
.LC6:
	.string	"SHA384"
	.align	2
.LC7:
	.string	"SHA512"
	.align	2
.LC8:
	.string	"SHA3-224"
	.align	2
.LC9:
	.string	"SHA3-256"
	.align	2
.LC10:
	.string	"SHA3-384"
	.align	2
.LC11:
	.string	"SHA3-512"
	.section	.rodata.md_names,"a"
	.align	2
	.type	md_names, @object
	.size	md_names, 104
md_names:
	.word	.LC0
	.byte	3
	.zero	3
	.word	.LC1
	.byte	4
	.zero	3
	.word	.LC2
	.byte	5
	.zero	3
	.word	.LC3
	.byte	5
	.zero	3
	.word	.LC4
	.byte	8
	.zero	3
	.word	.LC5
	.byte	9
	.zero	3
	.word	.LC6
	.byte	10
	.zero	3
	.word	.LC7
	.byte	11
	.zero	3
	.word	.LC8
	.byte	16
	.zero	3
	.word	.LC9
	.byte	17
	.zero	3
	.word	.LC10
	.byte	18
	.zero	3
	.word	.LC11
	.byte	19
	.zero	3
	.word	0
	.byte	0
	.zero	3
	.section	.text.mbedtls_md_info_from_string,"ax",@progbits
	.align	1
	.globl	mbedtls_md_info_from_string
	.type	mbedtls_md_info_from_string, @function
mbedtls_md_info_from_string:
.LFB85:
	.loc 1 879 1
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
	.loc 1 880 8
	lw	a5,-36(s0)
	bne	a5,zero,.L139
	.loc 1 881 15
	li	a5,0
	j	.L140
.L139:
	.loc 1 884 26
	lui	a5,%hi(md_names)
	addi	a5,a5,%lo(md_names)
	sw	a5,-20(s0)
	.loc 1 885 11
	j	.L141
.L143:
	.loc 1 887 9
	lw	a5,-20(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
.L141:
	.loc 1 885 17
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 885 34
	beq	a5,zero,.L142
	.loc 1 886 24
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 886 12
	lw	a1,-36(s0)
	mv	a0,a5
	call	strcmp
	mv	a5,a0
	.loc 1 885 34 discriminator 1
	bne	a5,zero,.L143
.L142:
	.loc 1 890 43
	lw	a5,-20(s0)
	lbu	a5,4(a5)
	.loc 1 890 12
	mv	a0,a5
	call	mbedtls_md_info_from_type
	mv	a5,a0
.L140:
	.loc 1 891 1
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
.LFE85:
	.size	mbedtls_md_info_from_string, .-mbedtls_md_info_from_string
	.section	.text.mbedtls_md_get_name,"ax",@progbits
	.align	1
	.globl	mbedtls_md_get_name
	.type	mbedtls_md_get_name, @function
mbedtls_md_get_name:
.LFB86:
	.loc 1 894 1
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
	.loc 1 895 8
	lw	a5,-36(s0)
	bne	a5,zero,.L145
	.loc 1 896 15
	li	a5,0
	j	.L146
.L145:
	.loc 1 899 26
	lui	a5,%hi(md_names)
	addi	a5,a5,%lo(md_names)
	sw	a5,-20(s0)
	.loc 1 900 11
	j	.L147
.L149:
	.loc 1 902 9
	lw	a5,-20(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
.L147:
	.loc 1 900 17
	lw	a5,-20(s0)
	lbu	a5,4(a5)
	.loc 1 900 46
	beq	a5,zero,.L148
	.loc 1 901 17
	lw	a5,-20(s0)
	lbu	a4,4(a5)
	.loc 1 901 37
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 900 46 discriminator 1
	bne	a4,a5,.L149
.L148:
	.loc 1 905 17
	lw	a5,-20(s0)
	lw	a5,0(a5)
.L146:
	.loc 1 906 1
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
.LFE86:
	.size	mbedtls_md_get_name, .-mbedtls_md_get_name
	.section	.text.mbedtls_md_info_from_ctx,"ax",@progbits
	.align	1
	.globl	mbedtls_md_info_from_ctx
	.type	mbedtls_md_info_from_ctx, @function
mbedtls_md_info_from_ctx:
.LFB87:
	.loc 1 910 1
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
	.loc 1 911 8
	lw	a5,-20(s0)
	bne	a5,zero,.L151
	.loc 1 912 15
	li	a5,0
	j	.L152
.L151:
	.loc 1 915 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
.L152:
	.loc 1 916 1
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
.LFE87:
	.size	mbedtls_md_info_from_ctx, .-mbedtls_md_info_from_ctx
	.section	.text.mbedtls_md_hmac_starts,"ax",@progbits
	.align	1
	.globl	mbedtls_md_hmac_starts
	.type	mbedtls_md_hmac_starts, @function
mbedtls_md_hmac_starts:
.LFB88:
	.loc 1 970 1
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	ra,156(sp)
	sw	s0,152(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sw	a0,-148(s0)
	sw	a1,-152(s0)
	sw	a2,-156(s0)
	.loc 1 971 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 975 8
	lw	a5,-148(s0)
	beq	a5,zero,.L154
	.loc 1 975 26 discriminator 1
	lw	a5,-148(s0)
	lw	a5,0(a5)
	.loc 1 975 20 discriminator 1
	beq	a5,zero,.L154
	.loc 1 975 50 discriminator 2
	lw	a5,-148(s0)
	lw	a5,8(a5)
	.loc 1 975 44 discriminator 2
	bne	a5,zero,.L155
.L154:
	.loc 1 976 16
	li	a5,-20480
	addi	a5,a5,-256
	j	.L167
.L155:
	.loc 1 979 30
	lw	a5,-148(s0)
	lw	a5,0(a5)
	.loc 1 979 39
	lbu	a5,2(a5)
	.loc 1 979 18
	mv	a4,a5
	.loc 1 979 8
	lw	a5,-156(s0)
	bleu	a5,a4,.L157
	.loc 1 980 20
	lw	a0,-148(s0)
	call	mbedtls_md_starts
	sw	a0,-20(s0)
	.loc 1 980 12 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L168
	.loc 1 983 20
	lw	a2,-156(s0)
	lw	a1,-152(s0)
	lw	a0,-148(s0)
	call	mbedtls_md_update
	sw	a0,-20(s0)
	.loc 1 983 12 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L169
	.loc 1 986 20
	addi	a5,s0,-132
	mv	a1,a5
	lw	a0,-148(s0)
	call	mbedtls_md_finish
	sw	a0,-20(s0)
	.loc 1 986 12 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L170
	.loc 1 990 21
	lw	a5,-148(s0)
	lw	a5,0(a5)
	.loc 1 990 30
	lbu	a5,1(a5)
	.loc 1 990 16
	sw	a5,-156(s0)
	.loc 1 991 13
	addi	a5,s0,-132
	sw	a5,-152(s0)
.L157:
	.loc 1 994 10
	lw	a5,-148(s0)
	lw	a5,8(a5)
	sw	a5,-24(s0)
	.loc 1 995 33
	lw	a5,-148(s0)
	lw	a5,8(a5)
	.loc 1 995 49
	lw	a4,-148(s0)
	lw	a4,0(a4)
	.loc 1 995 58
	lbu	a4,2(a4)
	.loc 1 995 10
	add	a5,a5,a4
	sw	a5,-28(s0)
	.loc 1 997 27
	lw	a5,-148(s0)
	lw	a5,0(a5)
	.loc 1 997 36
	lbu	a5,2(a5)
	.loc 1 997 5
	mv	a2,a5
	li	a1,54
	lw	a0,-24(s0)
	call	memset
	.loc 1 998 27
	lw	a5,-148(s0)
	lw	a5,0(a5)
	.loc 1 998 36
	lbu	a5,2(a5)
	.loc 1 998 5
	mv	a2,a5
	li	a1,92
	lw	a0,-28(s0)
	call	memset
	lw	a5,-24(s0)
	sw	a5,-52(s0)
	lw	a5,-24(s0)
	sw	a5,-56(s0)
	lw	a5,-152(s0)
	sw	a5,-60(s0)
	lw	a5,-156(s0)
	sw	a5,-64(s0)
.LBB6:
.LBB7:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/common.h"
	.loc 2 191 12
	sw	zero,-68(s0)
	.loc 2 234 5
	j	.L162
.L163:
	.loc 2 235 17
	lw	a4,-56(s0)
	lw	a5,-68(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 2 235 24
	lw	a4,-60(s0)
	lw	a5,-68(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 2 235 10
	lw	a2,-52(s0)
	lw	a5,-68(s0)
	add	a5,a2,a5
	.loc 2 235 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 2 234 20 discriminator 2
	lw	a5,-68(s0)
	addi	a5,a5,1
	sw	a5,-68(s0)
.L162:
	.loc 2 234 14 discriminator 1
	lw	a4,-64(s0)
	lw	a5,-68(s0)
	bgtu	a4,a5,.L163
	.loc 2 237 1
	nop
	lw	a5,-28(s0)
	sw	a5,-32(s0)
	lw	a5,-28(s0)
	sw	a5,-36(s0)
	lw	a5,-152(s0)
	sw	a5,-40(s0)
	lw	a5,-156(s0)
	sw	a5,-44(s0)
.LBE7:
.LBE6:
.LBB8:
.LBB9:
	.loc 2 191 12
	sw	zero,-48(s0)
	.loc 2 234 5
	j	.L164
.L165:
	.loc 2 235 17
	lw	a4,-36(s0)
	lw	a5,-48(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 2 235 24
	lw	a4,-40(s0)
	lw	a5,-48(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 2 235 10
	lw	a2,-32(s0)
	lw	a5,-48(s0)
	add	a5,a2,a5
	.loc 2 235 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 2 234 20 discriminator 2
	lw	a5,-48(s0)
	addi	a5,a5,1
	sw	a5,-48(s0)
.L164:
	.loc 2 234 14 discriminator 1
	lw	a4,-44(s0)
	lw	a5,-48(s0)
	bgtu	a4,a5,.L165
	.loc 2 237 1
	nop
.LBE9:
.LBE8:
	.loc 1 1003 16
	lw	a0,-148(s0)
	call	mbedtls_md_starts
	sw	a0,-20(s0)
	.loc 1 1003 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L171
	.loc 1 1007 37
	lw	a5,-148(s0)
	lw	a5,0(a5)
	.loc 1 1007 46
	lbu	a5,2(a5)
	.loc 1 1006 16
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-148(s0)
	call	mbedtls_md_update
	sw	a0,-20(s0)
	.loc 1 1011 1
	j	.L159
.L168:
	.loc 1 981 13
	nop
	j	.L159
.L169:
	.loc 1 984 13
	nop
	j	.L159
.L170:
	.loc 1 987 13
	nop
	j	.L159
.L171:
	.loc 1 1004 9
	nop
.L159:
	.loc 1 1012 5
	addi	a5,s0,-132
	li	a1,64
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 1 1014 12
	lw	a5,-20(s0)
.L167:
	.loc 1 1015 1
	mv	a0,a5
	lw	ra,156(sp)
	.cfi_restore 1
	lw	s0,152(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE88:
	.size	mbedtls_md_hmac_starts, .-mbedtls_md_hmac_starts
	.section	.text.mbedtls_md_hmac_update,"ax",@progbits
	.align	1
	.globl	mbedtls_md_hmac_update
	.type	mbedtls_md_hmac_update, @function
mbedtls_md_hmac_update:
.LFB89:
	.loc 1 1018 1
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
	.loc 1 1019 8
	lw	a5,-20(s0)
	beq	a5,zero,.L173
	.loc 1 1019 26 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1019 20 discriminator 1
	beq	a5,zero,.L173
	.loc 1 1019 50 discriminator 2
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 1019 44 discriminator 2
	bne	a5,zero,.L174
.L173:
	.loc 1 1020 16
	li	a5,-20480
	addi	a5,a5,-256
	j	.L175
.L174:
	.loc 1 1023 12
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_md_update
	mv	a5,a0
.L175:
	.loc 1 1024 1
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
.LFE89:
	.size	mbedtls_md_hmac_update, .-mbedtls_md_hmac_update
	.section	.text.mbedtls_md_hmac_finish,"ax",@progbits
	.align	1
	.globl	mbedtls_md_hmac_finish
	.type	mbedtls_md_hmac_finish, @function
mbedtls_md_hmac_finish:
.LFB90:
	.loc 1 1027 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	a0,-100(s0)
	sw	a1,-104(s0)
	.loc 1 1028 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 1032 8
	lw	a5,-100(s0)
	beq	a5,zero,.L177
	.loc 1 1032 26 discriminator 1
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 1 1032 20 discriminator 1
	beq	a5,zero,.L177
	.loc 1 1032 50 discriminator 2
	lw	a5,-100(s0)
	lw	a5,8(a5)
	.loc 1 1032 44 discriminator 2
	bne	a5,zero,.L178
.L177:
	.loc 1 1033 16
	li	a5,-20480
	addi	a5,a5,-256
	j	.L184
.L178:
	.loc 1 1036 33
	lw	a5,-100(s0)
	lw	a5,8(a5)
	.loc 1 1036 49
	lw	a4,-100(s0)
	lw	a4,0(a4)
	.loc 1 1036 58
	lbu	a4,2(a4)
	.loc 1 1036 10
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 1038 16
	addi	a5,s0,-88
	mv	a1,a5
	lw	a0,-100(s0)
	call	mbedtls_md_finish
	sw	a0,-20(s0)
	.loc 1 1038 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L180
	.loc 1 1039 16
	lw	a5,-20(s0)
	j	.L184
.L180:
	.loc 1 1041 16
	lw	a0,-100(s0)
	call	mbedtls_md_starts
	sw	a0,-20(s0)
	.loc 1 1041 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L181
	.loc 1 1042 16
	lw	a5,-20(s0)
	j	.L184
.L181:
	.loc 1 1045 37
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 1 1045 46
	lbu	a5,2(a5)
	.loc 1 1044 16
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-100(s0)
	call	mbedtls_md_update
	sw	a0,-20(s0)
	.loc 1 1044 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L182
	.loc 1 1046 16
	lw	a5,-20(s0)
	j	.L184
.L182:
	.loc 1 1049 37
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 1 1049 46
	lbu	a5,1(a5)
	.loc 1 1048 16
	mv	a4,a5
	addi	a5,s0,-88
	mv	a2,a4
	mv	a1,a5
	lw	a0,-100(s0)
	call	mbedtls_md_update
	sw	a0,-20(s0)
	.loc 1 1048 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L183
	.loc 1 1050 16
	lw	a5,-20(s0)
	j	.L184
.L183:
	.loc 1 1052 12
	lw	a1,-104(s0)
	lw	a0,-100(s0)
	call	mbedtls_md_finish
	mv	a5,a0
.L184:
	.loc 1 1053 1
	mv	a0,a5
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE90:
	.size	mbedtls_md_hmac_finish, .-mbedtls_md_hmac_finish
	.section	.text.mbedtls_md_hmac_reset,"ax",@progbits
	.align	1
	.globl	mbedtls_md_hmac_reset
	.type	mbedtls_md_hmac_reset, @function
mbedtls_md_hmac_reset:
.LFB91:
	.loc 1 1056 1
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
	.loc 1 1057 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 1060 8
	lw	a5,-36(s0)
	beq	a5,zero,.L186
	.loc 1 1060 26 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1060 20 discriminator 1
	beq	a5,zero,.L186
	.loc 1 1060 50 discriminator 2
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 1060 44 discriminator 2
	bne	a5,zero,.L187
.L186:
	.loc 1 1061 16
	li	a5,-20480
	addi	a5,a5,-256
	j	.L188
.L187:
	.loc 1 1064 10
	lw	a5,-36(s0)
	lw	a5,8(a5)
	sw	a5,-24(s0)
	.loc 1 1066 16
	lw	a0,-36(s0)
	call	mbedtls_md_starts
	sw	a0,-20(s0)
	.loc 1 1066 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L189
	.loc 1 1067 16
	lw	a5,-20(s0)
	j	.L188
.L189:
	.loc 1 1069 44
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1069 53
	lbu	a5,2(a5)
	.loc 1 1069 12
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	mbedtls_md_update
	mv	a5,a0
.L188:
	.loc 1 1070 1
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
.LFE91:
	.size	mbedtls_md_hmac_reset, .-mbedtls_md_hmac_reset
	.section	.text.mbedtls_md_hmac,"ax",@progbits
	.align	1
	.globl	mbedtls_md_hmac
	.type	mbedtls_md_hmac, @function
mbedtls_md_hmac:
.LFB92:
	.loc 1 1076 1
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
	sw	a5,-56(s0)
	.loc 1 1078 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 1080 8
	lw	a5,-36(s0)
	bne	a5,zero,.L191
	.loc 1 1081 16
	li	a5,-20480
	addi	a5,a5,-256
	j	.L197
.L191:
	.loc 1 1084 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_md_init
	.loc 1 1086 16
	addi	a5,s0,-32
	li	a2,1
	lw	a1,-36(s0)
	mv	a0,a5
	call	mbedtls_md_setup
	sw	a0,-20(s0)
	.loc 1 1086 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L198
	.loc 1 1090 16
	addi	a5,s0,-32
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_md_hmac_starts
	sw	a0,-20(s0)
	.loc 1 1090 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L199
	.loc 1 1093 16
	addi	a5,s0,-32
	lw	a2,-52(s0)
	lw	a1,-48(s0)
	mv	a0,a5
	call	mbedtls_md_hmac_update
	sw	a0,-20(s0)
	.loc 1 1093 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L200
	.loc 1 1096 16
	addi	a5,s0,-32
	lw	a1,-56(s0)
	mv	a0,a5
	call	mbedtls_md_hmac_finish
	sw	a0,-20(s0)
	.loc 1 1100 1
	j	.L194
.L198:
	.loc 1 1087 9
	nop
	j	.L194
.L199:
	.loc 1 1091 9
	nop
	j	.L194
.L200:
	.loc 1 1094 9
	nop
.L194:
	.loc 1 1101 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_md_free
	.loc 1 1103 12
	lw	a5,-20(s0)
.L197:
	.loc 1 1104 1
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
.LFE92:
	.size	mbedtls_md_hmac, .-mbedtls_md_hmac
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/md_wrap.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md5.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ripemd160.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/sha1.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/sha256.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/sha512.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/sha3.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_types.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_util_internal.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x116d
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1b
	.4byte	.LASF161
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x8
	.4byte	0x32
	.uleb128 0xe
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0xe
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1c
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.4byte	0x68
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x74
	.uleb128 0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x4
	.byte	0x25
	.byte	0x13
	.4byte	0x3e
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x8
	.4byte	0xa6
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0x45
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x37
	.byte	0x20
	.4byte	0x61
	.uleb128 0x1d
	.byte	0x4
	.uleb128 0x4
	.4byte	0x32
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0x8
	.4byte	0xe2
	.uleb128 0x4
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0x32
	.byte	0x5
	.byte	0x2f
	.4byte	0x147
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x5
	.byte	0x3c
	.byte	0x3
	.4byte	0xf3
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x5
	.byte	0x6b
	.byte	0x22
	.4byte	0x164
	.uleb128 0x8
	.4byte	0x153
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x3
	.byte	0x6
	.byte	0x1d
	.byte	0x8
	.4byte	0x199
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x6
	.byte	0x1f
	.byte	0x17
	.4byte	0x147
	.byte	0
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x6
	.byte	0x22
	.byte	0x13
	.4byte	0x32
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x6
	.byte	0x26
	.byte	0x13
	.4byte	0x32
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0xc
	.byte	0x5
	.byte	0x7a
	.byte	0x10
	.4byte	0x1ce
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x5
	.byte	0x7c
	.byte	0x1e
	.4byte	0x1ce
	.byte	0
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x5
	.byte	0x84
	.byte	0xb
	.4byte	0xdb
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x5
	.byte	0x88
	.byte	0xb
	.4byte	0xdb
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	0x15f
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x5
	.byte	0x8a
	.byte	0x3
	.4byte	0x199
	.uleb128 0x8
	.4byte	0x1d3
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x58
	.byte	0x7
	.byte	0x27
	.byte	0x10
	.4byte	0x219
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x7
	.byte	0x28
	.byte	0xe
	.4byte	0x219
	.byte	0
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x7
	.byte	0x29
	.byte	0xe
	.4byte	0x229
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x7
	.byte	0x2a
	.byte	0x13
	.4byte	0x239
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.4byte	0xc3
	.4byte	0x229
	.uleb128 0xd
	.4byte	0x74
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	0xc3
	.4byte	0x239
	.uleb128 0xd
	.4byte	0x74
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	0x32
	.4byte	0x249
	.uleb128 0xd
	.4byte	0x74
	.byte	0x3f
	.byte	0
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x7
	.byte	0x2c
	.byte	0x1
	.4byte	0x1e4
	.uleb128 0x8
	.4byte	0x249
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x5c
	.byte	0x8
	.byte	0x1e
	.byte	0x10
	.4byte	0x28f
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x8
	.byte	0x1f
	.byte	0xe
	.4byte	0x219
	.byte	0
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x8
	.byte	0x20
	.byte	0xe
	.4byte	0x28f
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x8
	.byte	0x21
	.byte	0x13
	.4byte	0x239
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.4byte	0xc3
	.4byte	0x29f
	.uleb128 0xd
	.4byte	0x74
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x8
	.byte	0x23
	.byte	0x1
	.4byte	0x25a
	.uleb128 0x8
	.4byte	0x29f
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x5c
	.byte	0x9
	.byte	0x2d
	.byte	0x10
	.4byte	0x2e5
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x9
	.byte	0x2e
	.byte	0xe
	.4byte	0x219
	.byte	0
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x9
	.byte	0x2f
	.byte	0xe
	.4byte	0x28f
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x9
	.byte	0x30
	.byte	0x13
	.4byte	0x239
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x9
	.byte	0x32
	.byte	0x1
	.4byte	0x2b0
	.uleb128 0x8
	.4byte	0x2e5
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x6c
	.byte	0xa
	.byte	0x28
	.byte	0x10
	.4byte	0x338
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0xa
	.byte	0x29
	.byte	0x13
	.4byte	0x239
	.byte	0
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0xa
	.byte	0x2a
	.byte	0xe
	.4byte	0x219
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0xa
	.byte	0x2b
	.byte	0xe
	.4byte	0x338
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0xa
	.byte	0x2d
	.byte	0x9
	.4byte	0x68
	.byte	0x68
	.byte	0
	.uleb128 0xc
	.4byte	0xc3
	.4byte	0x348
	.uleb128 0xd
	.4byte	0x74
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0xa
	.byte	0x31
	.byte	0x1
	.4byte	0x2f6
	.uleb128 0x8
	.4byte	0x348
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0xd8
	.byte	0xb
	.byte	0x27
	.byte	0x10
	.4byte	0x39b
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0xb
	.byte	0x28
	.byte	0xe
	.4byte	0x39b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0xb
	.byte	0x29
	.byte	0xe
	.4byte	0x3ab
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0xb
	.byte	0x2a
	.byte	0x13
	.4byte	0x3bb
	.byte	0x50
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0xb
	.byte	0x2c
	.byte	0x9
	.4byte	0x68
	.byte	0xd0
	.byte	0
	.uleb128 0xc
	.4byte	0xcf
	.4byte	0x3ab
	.uleb128 0xd
	.4byte	0x74
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	0xcf
	.4byte	0x3bb
	.uleb128 0xd
	.4byte	0x74
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	0x32
	.4byte	0x3cb
	.uleb128 0xd
	.4byte	0x74
	.byte	0x7f
	.byte	0
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0xb
	.byte	0x30
	.byte	0x1
	.4byte	0x359
	.uleb128 0x8
	.4byte	0x3cb
	.uleb128 0x16
	.4byte	0x32
	.byte	0xc
	.byte	0x25
	.4byte	0x406
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0xc
	.byte	0x2b
	.byte	0x3
	.4byte	0x3dc
	.uleb128 0x17
	.byte	0xd0
	.byte	0xc
	.byte	0x32
	.4byte	0x44f
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0xc
	.byte	0x33
	.byte	0xe
	.4byte	0x44f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0xc
	.byte	0x34
	.byte	0xe
	.4byte	0xc3
	.byte	0xc8
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0xc
	.byte	0x35
	.byte	0xe
	.4byte	0xb7
	.byte	0xcc
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0xc
	.byte	0x36
	.byte	0xe
	.4byte	0xb7
	.byte	0xce
	.byte	0
	.uleb128 0xc
	.4byte	0xcf
	.4byte	0x45f
	.uleb128 0xd
	.4byte	0x74
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0xc
	.byte	0x38
	.byte	0x1
	.4byte	0x412
	.uleb128 0x8
	.4byte	0x45f
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0xd
	.byte	0x3b
	.byte	0x11
	.4byte	0x9a
	.uleb128 0x4
	.4byte	0xa6
	.uleb128 0x17
	.byte	0x4
	.byte	0xe
	.byte	0x2a
	.4byte	0x4a4
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0xe
	.byte	0x2c
	.byte	0xd
	.4byte	0x8e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0xe
	.byte	0x30
	.byte	0xd
	.4byte	0x8e
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0xe
	.byte	0x31
	.byte	0x3
	.4byte	0x481
	.uleb128 0x8
	.4byte	0x4a4
	.uleb128 0xc
	.4byte	0x4b0
	.4byte	0x4c5
	.uleb128 0xd
	.4byte	0x74
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x4b5
	.uleb128 0x1e
	.4byte	.LASF162
	.byte	0xe
	.byte	0x34
	.byte	0x23
	.4byte	0x4c5
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x4a
	.4byte	0x15f
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_md5_info
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x50
	.4byte	0x15f
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_ripemd160_info
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x56
	.4byte	0x15f
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_sha1_info
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x5c
	.4byte	0x15f
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_sha224_info
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x62
	.4byte	0x15f
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_sha256_info
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x68
	.4byte	0x15f
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_sha384_info
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x6e
	.4byte	0x15f
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_sha512_info
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0x74
	.4byte	0x15f
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_sha3_224_info
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0x7a
	.4byte	0x15f
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_sha3_256_info
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0x80
	.4byte	0x15f
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_sha3_384_info
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0x86
	.4byte	0x15f
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_sha3_512_info
	.uleb128 0xc
	.4byte	0x6f
	.4byte	0x596
	.uleb128 0xd
	.4byte	0x74
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.4byte	0x586
	.uleb128 0x10
	.4byte	.LASF76
	.2byte	0x30e
	.byte	0x12
	.4byte	0x596
	.uleb128 0x5
	.byte	0x3
	.4byte	supported_digests
	.uleb128 0x1f
	.byte	0x8
	.byte	0x1
	.2byte	0x343
	.byte	0x9
	.4byte	0x5d2
	.uleb128 0x18
	.4byte	.LASF77
	.2byte	0x344
	.byte	0x11
	.4byte	0xee
	.byte	0
	.uleb128 0x18
	.4byte	.LASF78
	.2byte	0x345
	.byte	0x17
	.4byte	0x147
	.byte	0x4
	.byte	0
	.uleb128 0x20
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x346
	.byte	0x3
	.4byte	0x5ad
	.uleb128 0x8
	.4byte	0x5d2
	.uleb128 0xc
	.4byte	0x5df
	.4byte	0x5f4
	.uleb128 0xd
	.4byte	0x74
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x5e4
	.uleb128 0x10
	.4byte	.LASF80
	.2byte	0x348
	.byte	0x1c
	.4byte	0x5f4
	.uleb128 0x5
	.byte	0x3
	.4byte	md_names
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0xf
	.byte	0x24
	.byte	0x5
	.4byte	0x68
	.4byte	0x626
	.uleb128 0x1
	.4byte	0xee
	.uleb128 0x1
	.4byte	0xee
	.byte	0
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0xe
	.byte	0x4f
	.byte	0x5
	.4byte	0x68
	.4byte	0x63c
	.uleb128 0x1
	.4byte	0x470
	.byte	0
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0xe
	.byte	0x53
	.byte	0x5
	.4byte	0x68
	.4byte	0x661
	.uleb128 0x1
	.4byte	0x470
	.uleb128 0x1
	.4byte	0x661
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x666
	.byte	0
	.uleb128 0x4
	.4byte	0x4b0
	.uleb128 0x4
	.4byte	0x66b
	.uleb128 0x21
	.4byte	0x68
	.4byte	0x67a
	.uleb128 0x1
	.4byte	0x470
	.byte	0
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0xc
	.byte	0x99
	.byte	0x5
	.4byte	0x68
	.4byte	0x6a4
	.uleb128 0x1
	.4byte	0x406
	.uleb128 0x1
	.4byte	0x6a4
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x47c
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x4
	.4byte	0xb2
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0xb
	.byte	0xaf
	.byte	0x5
	.4byte	0x68
	.4byte	0x6ce
	.uleb128 0x1
	.4byte	0x6ce
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xdd
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x4
	.4byte	0x39
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0xa
	.byte	0xa7
	.byte	0x5
	.4byte	0x68
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x6ce
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xdd
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x9
	.byte	0xc2
	.byte	0x5
	.4byte	0x68
	.4byte	0x718
	.uleb128 0x1
	.4byte	0x6ce
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xdd
	.byte	0
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x8
	.byte	0x75
	.byte	0x5
	.4byte	0x68
	.4byte	0x738
	.uleb128 0x1
	.4byte	0x6ce
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xdd
	.byte	0
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x7
	.byte	0xa6
	.byte	0x5
	.4byte	0x68
	.4byte	0x758
	.uleb128 0x1
	.4byte	0x6ce
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xdd
	.byte	0
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0xc
	.byte	0x7f
	.byte	0x5
	.4byte	0x68
	.4byte	0x778
	.uleb128 0x1
	.4byte	0x778
	.uleb128 0x1
	.4byte	0x47c
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x4
	.4byte	0x45f
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0xb
	.byte	0x80
	.byte	0x5
	.4byte	0x68
	.4byte	0x798
	.uleb128 0x1
	.4byte	0x798
	.uleb128 0x1
	.4byte	0xdd
	.byte	0
	.uleb128 0x4
	.4byte	0x3cb
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0xa
	.byte	0x7f
	.byte	0x5
	.4byte	0x68
	.4byte	0x7b8
	.uleb128 0x1
	.4byte	0x7b8
	.uleb128 0x1
	.4byte	0xdd
	.byte	0
	.uleb128 0x4
	.4byte	0x348
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0x9
	.byte	0x96
	.byte	0x5
	.4byte	0x68
	.4byte	0x7d8
	.uleb128 0x1
	.4byte	0x7d8
	.uleb128 0x1
	.4byte	0xdd
	.byte	0
	.uleb128 0x4
	.4byte	0x2e5
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0x8
	.byte	0x5e
	.byte	0x5
	.4byte	0x68
	.4byte	0x7f8
	.uleb128 0x1
	.4byte	0x7f8
	.uleb128 0x1
	.4byte	0xdd
	.byte	0
	.uleb128 0x4
	.4byte	0x29f
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0x7
	.byte	0x85
	.byte	0x5
	.4byte	0x68
	.4byte	0x818
	.uleb128 0x1
	.4byte	0x818
	.uleb128 0x1
	.4byte	0xdd
	.byte	0
	.uleb128 0x4
	.4byte	0x249
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0xc
	.byte	0x6c
	.byte	0x5
	.4byte	0x68
	.4byte	0x83d
	.uleb128 0x1
	.4byte	0x778
	.uleb128 0x1
	.4byte	0x6a4
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0xb
	.byte	0x6f
	.byte	0x5
	.4byte	0x68
	.4byte	0x85d
	.uleb128 0x1
	.4byte	0x798
	.uleb128 0x1
	.4byte	0x6ce
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF98
	.byte	0xa
	.byte	0x6e
	.byte	0x5
	.4byte	0x68
	.4byte	0x87d
	.uleb128 0x1
	.4byte	0x7b8
	.uleb128 0x1
	.4byte	0x6ce
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0x9
	.byte	0x82
	.byte	0x5
	.4byte	0x68
	.4byte	0x89d
	.uleb128 0x1
	.4byte	0x7d8
	.uleb128 0x1
	.4byte	0x6ce
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0x8
	.byte	0x52
	.byte	0x5
	.4byte	0x68
	.4byte	0x8bd
	.uleb128 0x1
	.4byte	0x7f8
	.uleb128 0x1
	.4byte	0x6ce
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0x7
	.byte	0x74
	.byte	0x5
	.4byte	0x68
	.4byte	0x8dd
	.uleb128 0x1
	.4byte	0x818
	.uleb128 0x1
	.4byte	0x6ce
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0xc
	.byte	0x5d
	.byte	0x5
	.4byte	0x68
	.4byte	0x8f8
	.uleb128 0x1
	.4byte	0x778
	.uleb128 0x1
	.4byte	0x406
	.byte	0
	.uleb128 0x3
	.4byte	.LASF103
	.byte	0xb
	.byte	0x60
	.byte	0x5
	.4byte	0x68
	.4byte	0x913
	.uleb128 0x1
	.4byte	0x798
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0xa
	.byte	0x5f
	.byte	0x5
	.4byte	0x68
	.4byte	0x92e
	.uleb128 0x1
	.4byte	0x7b8
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0x9
	.byte	0x6f
	.byte	0x5
	.4byte	0x68
	.4byte	0x944
	.uleb128 0x1
	.4byte	0x7d8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0x8
	.byte	0x47
	.byte	0x5
	.4byte	0x68
	.4byte	0x95a
	.uleb128 0x1
	.4byte	0x7f8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0x7
	.byte	0x64
	.byte	0x5
	.4byte	0x68
	.4byte	0x970
	.uleb128 0x1
	.4byte	0x818
	.byte	0
	.uleb128 0x6
	.4byte	.LASF108
	.byte	0xc
	.byte	0x3f
	.4byte	0x981
	.uleb128 0x1
	.4byte	0x778
	.byte	0
	.uleb128 0x6
	.4byte	.LASF109
	.byte	0xb
	.byte	0x3c
	.4byte	0x992
	.uleb128 0x1
	.4byte	0x798
	.byte	0
	.uleb128 0x6
	.4byte	.LASF110
	.byte	0xa
	.byte	0x3c
	.4byte	0x9a3
	.uleb128 0x1
	.4byte	0x7b8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF111
	.byte	0x9
	.byte	0x43
	.4byte	0x9b4
	.uleb128 0x1
	.4byte	0x7d8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF112
	.byte	0x8
	.byte	0x2e
	.4byte	0x9c5
	.uleb128 0x1
	.4byte	0x7f8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF113
	.byte	0x7
	.byte	0x3c
	.4byte	0x9d6
	.uleb128 0x1
	.4byte	0x818
	.byte	0
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0x10
	.byte	0x5a
	.byte	0x7
	.4byte	0xdb
	.4byte	0x9f1
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x6
	.4byte	.LASF115
	.byte	0xc
	.byte	0x50
	.4byte	0xa07
	.uleb128 0x1
	.4byte	0x778
	.uleb128 0x1
	.4byte	0xa07
	.byte	0
	.uleb128 0x4
	.4byte	0x46b
	.uleb128 0x6
	.4byte	.LASF116
	.byte	0xb
	.byte	0x4e
	.4byte	0xa22
	.uleb128 0x1
	.4byte	0x798
	.uleb128 0x1
	.4byte	0xa22
	.byte	0
	.uleb128 0x4
	.4byte	0x3d7
	.uleb128 0x6
	.4byte	.LASF117
	.byte	0xa
	.byte	0x4d
	.4byte	0xa3d
	.uleb128 0x1
	.4byte	0x7b8
	.uleb128 0x1
	.4byte	0xa3d
	.byte	0
	.uleb128 0x4
	.4byte	0x354
	.uleb128 0x6
	.4byte	.LASF118
	.byte	0x9
	.byte	0x5f
	.4byte	0xa58
	.uleb128 0x1
	.4byte	0x7d8
	.uleb128 0x1
	.4byte	0xa58
	.byte	0
	.uleb128 0x4
	.4byte	0x2f1
	.uleb128 0x6
	.4byte	.LASF119
	.byte	0x8
	.byte	0x3d
	.4byte	0xa73
	.uleb128 0x1
	.4byte	0x7f8
	.uleb128 0x1
	.4byte	0xa73
	.byte	0
	.uleb128 0x4
	.4byte	0x2ab
	.uleb128 0x6
	.4byte	.LASF120
	.byte	0x7
	.byte	0x55
	.4byte	0xa8e
	.uleb128 0x1
	.4byte	0x818
	.uleb128 0x1
	.4byte	0xa8e
	.byte	0
	.uleb128 0x4
	.4byte	0x255
	.uleb128 0x6
	.4byte	.LASF121
	.byte	0x11
	.byte	0x9f
	.4byte	0xaa9
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x6
	.4byte	.LASF122
	.byte	0x2
	.byte	0x79
	.4byte	0xabf
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x6
	.4byte	.LASF123
	.byte	0x10
	.byte	0x5e
	.4byte	0xad0
	.uleb128 0x1
	.4byte	0xdb
	.byte	0
	.uleb128 0x6
	.4byte	.LASF124
	.byte	0xc
	.byte	0x48
	.4byte	0xae1
	.uleb128 0x1
	.4byte	0x778
	.byte	0
	.uleb128 0x6
	.4byte	.LASF125
	.byte	0xb
	.byte	0x46
	.4byte	0xaf2
	.uleb128 0x1
	.4byte	0x798
	.byte	0
	.uleb128 0x6
	.4byte	.LASF126
	.byte	0xa
	.byte	0x45
	.4byte	0xb03
	.uleb128 0x1
	.4byte	0x7b8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF127
	.byte	0x9
	.byte	0x52
	.4byte	0xb14
	.uleb128 0x1
	.4byte	0x7d8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF128
	.byte	0x8
	.byte	0x35
	.4byte	0xb25
	.uleb128 0x1
	.4byte	0x7f8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF129
	.byte	0x7
	.byte	0x48
	.4byte	0xb36
	.uleb128 0x1
	.4byte	0x818
	.byte	0
	.uleb128 0x3
	.4byte	.LASF130
	.byte	0xf
	.byte	0x21
	.byte	0x8
	.4byte	0xdb
	.4byte	0xb56
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0xb
	.4byte	.LASF135
	.2byte	0x430
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf4
	.uleb128 0x5
	.4byte	.LASF38
	.2byte	0x430
	.byte	0x2e
	.4byte	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"key"
	.2byte	0x431
	.byte	0x2a
	.4byte	0x6ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF131
	.2byte	0x431
	.byte	0x36
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x432
	.byte	0x2a
	.4byte	0x6ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	.LASF133
	.2byte	0x432
	.byte	0x38
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.4byte	.LASF134
	.2byte	0x433
	.byte	0x24
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.string	"ctx"
	.2byte	0x435
	.byte	0x1a
	.4byte	0x1d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.string	"ret"
	.2byte	0x436
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.4byte	.LASF142
	.2byte	0x44c
	.4byte	.L194
	.byte	0
	.uleb128 0xb
	.4byte	.LASF136
	.2byte	0x41f
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc3c
	.uleb128 0xa
	.string	"ctx"
	.2byte	0x41f
	.byte	0x31
	.4byte	0xc3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.string	"ret"
	.2byte	0x421
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	.LASF137
	.2byte	0x422
	.byte	0x14
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	0x1d3
	.uleb128 0xb
	.4byte	.LASF138
	.2byte	0x402
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcaa
	.uleb128 0xa
	.string	"ctx"
	.2byte	0x402
	.byte	0x32
	.4byte	0xc3c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x5
	.4byte	.LASF134
	.2byte	0x402
	.byte	0x46
	.4byte	0xdd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x13
	.string	"ret"
	.2byte	0x404
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.string	"tmp"
	.2byte	0x405
	.byte	0x13
	.4byte	0x239
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x10
	.4byte	.LASF139
	.2byte	0x406
	.byte	0x14
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF140
	.2byte	0x3f9
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcf2
	.uleb128 0xa
	.string	"ctx"
	.2byte	0x3f9
	.byte	0x32
	.4byte	0xc3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x3f9
	.byte	0x4c
	.4byte	0x6ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF133
	.2byte	0x3f9
	.byte	0x5a
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF141
	.2byte	0x3c9
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdfe
	.uleb128 0xa
	.string	"ctx"
	.2byte	0x3c9
	.byte	0x32
	.4byte	0xc3c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0xa
	.string	"key"
	.2byte	0x3c9
	.byte	0x4c
	.4byte	0x6ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x5
	.4byte	.LASF131
	.2byte	0x3c9
	.byte	0x58
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x13
	.string	"ret"
	.2byte	0x3cb
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.string	"sum"
	.2byte	0x3cc
	.byte	0x13
	.4byte	0x239
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x10
	.4byte	.LASF137
	.2byte	0x3cd
	.byte	0x14
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.4byte	.LASF139
	.2byte	0x3cd
	.byte	0x1b
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.4byte	.LASF142
	.2byte	0x3f3
	.4byte	.L159
	.uleb128 0x22
	.4byte	0x1138
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.2byte	0x3e8
	.byte	0x5
	.4byte	0xdc3
	.uleb128 0x11
	.4byte	0x1141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x11
	.4byte	0x114a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.4byte	0x1153
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x11
	.4byte	0x115c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.4byte	0x1165
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x23
	.4byte	0x1138
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.2byte	0x3e9
	.byte	0x5
	.uleb128 0x11
	.4byte	0x1141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.4byte	0x114a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.4byte	0x1153
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.4byte	0x115c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.4byte	0x1165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF143
	.2byte	0x38c
	.byte	0x1a
	.4byte	0x1ce
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe28
	.uleb128 0xa
	.string	"ctx"
	.2byte	0x38d
	.byte	0x21
	.4byte	0xe28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	0x1df
	.uleb128 0x14
	.4byte	.LASF144
	.2byte	0x37d
	.byte	0xd
	.4byte	0xee
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe66
	.uleb128 0x5
	.4byte	.LASF38
	.2byte	0x37d
	.byte	0x3a
	.4byte	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.4byte	.LASF145
	.2byte	0x383
	.byte	0x1a
	.4byte	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	0x5df
	.uleb128 0xb
	.4byte	.LASF146
	.2byte	0x36e
	.byte	0x1a
	.4byte	0x1ce
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xea4
	.uleb128 0x5
	.4byte	.LASF77
	.2byte	0x36e
	.byte	0x42
	.4byte	0xee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.4byte	.LASF145
	.2byte	0x374
	.byte	0x1a
	.4byte	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x33e
	.byte	0xc
	.4byte	0xebb
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	0x6f
	.uleb128 0xb
	.4byte	.LASF147
	.2byte	0x2fd
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeea
	.uleb128 0x5
	.4byte	.LASF148
	.2byte	0x2fd
	.byte	0x2c
	.4byte	0x470
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF149
	.2byte	0x2f3
	.byte	0x13
	.4byte	0x147
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf14
	.uleb128 0x5
	.4byte	.LASF38
	.2byte	0x2f3
	.byte	0x40
	.4byte	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF150
	.2byte	0x2ea
	.byte	0xf
	.4byte	0x32
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf3e
	.uleb128 0x5
	.4byte	.LASF38
	.2byte	0x2ea
	.byte	0x3c
	.4byte	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF151
	.2byte	0x2ad
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf95
	.uleb128 0x5
	.4byte	.LASF38
	.2byte	0x2ad
	.byte	0x29
	.4byte	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x2ad
	.byte	0x47
	.4byte	0x6ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF133
	.2byte	0x2ad
	.byte	0x55
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF134
	.2byte	0x2ae
	.byte	0x1f
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xb
	.4byte	.LASF152
	.2byte	0x273
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfce
	.uleb128 0xa
	.string	"ctx"
	.2byte	0x273
	.byte	0x2d
	.4byte	0xc3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF134
	.2byte	0x273
	.byte	0x41
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF153
	.2byte	0x23b
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1016
	.uleb128 0xa
	.string	"ctx"
	.2byte	0x23b
	.byte	0x2d
	.4byte	0xc3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x23b
	.byte	0x47
	.4byte	0x6ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF133
	.2byte	0x23b
	.byte	0x55
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF154
	.2byte	0x1fe
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1040
	.uleb128 0xa
	.string	"ctx"
	.2byte	0x1fe
	.byte	0x2d
	.4byte	0xc3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF155
	.2byte	0x1a2
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1088
	.uleb128 0xa
	.string	"ctx"
	.2byte	0x1a2
	.byte	0x2c
	.4byte	0xc3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF38
	.2byte	0x1a2
	.byte	0x4a
	.4byte	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF156
	.2byte	0x1a2
	.byte	0x57
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF157
	.2byte	0x14e
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10c1
	.uleb128 0xa
	.string	"dst"
	.2byte	0x14e
	.byte	0x2c
	.4byte	0xc3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"src"
	.2byte	0x14f
	.byte	0x32
	.4byte	0xe28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x105
	.byte	0x6
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10e8
	.uleb128 0xa
	.string	"ctx"
	.2byte	0x105
	.byte	0x2c
	.4byte	0xc3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.4byte	.LASF159
	.byte	0x1
	.byte	0xff
	.byte	0x6
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x110e
	.uleb128 0x27
	.string	"ctx"
	.byte	0x1
	.byte	0xff
	.byte	0x2c
	.4byte	0xc3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.4byte	.LASF160
	.byte	0x1
	.byte	0x8b
	.byte	0x1a
	.4byte	0x1ce
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1138
	.uleb128 0x29
	.4byte	.LASF78
	.byte	0x1
	.byte	0x8b
	.byte	0x46
	.4byte	0x147
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF164
	.byte	0x2
	.byte	0xba
	.byte	0x14
	.byte	0x3
	.uleb128 0x15
	.string	"r"
	.byte	0xba
	.byte	0x2f
	.4byte	0xdd
	.uleb128 0x15
	.string	"a"
	.byte	0xbb
	.byte	0x35
	.4byte	0x6ce
	.uleb128 0x15
	.string	"b"
	.byte	0xbc
	.byte	0x35
	.4byte	0x6ce
	.uleb128 0x15
	.string	"n"
	.byte	0xbd
	.byte	0x27
	.4byte	0x7b
	.uleb128 0x2b
	.string	"i"
	.byte	0x2
	.byte	0xbf
	.byte	0xc
	.4byte	0x7b
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x21
	.sleb128 32
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x20
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
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x29
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xbc
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
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
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
	.byte	0x7
	.4byte	.LFB82
	.uleb128 .LFE82-.LFB82
	.byte	0x7
	.4byte	.LFB83
	.uleb128 .LFE83-.LFB83
	.byte	0x7
	.4byte	.LFB84
	.uleb128 .LFE84-.LFB84
	.byte	0x7
	.4byte	.LFB85
	.uleb128 .LFE85-.LFB85
	.byte	0x7
	.4byte	.LFB86
	.uleb128 .LFE86-.LFB86
	.byte	0x7
	.4byte	.LFB87
	.uleb128 .LFE87-.LFB87
	.byte	0x7
	.4byte	.LFB88
	.uleb128 .LFE88-.LFB88
	.byte	0x7
	.4byte	.LFB89
	.uleb128 .LFE89-.LFB89
	.byte	0x7
	.4byte	.LFB90
	.uleb128 .LFE90-.LFB90
	.byte	0x7
	.4byte	.LFB91
	.uleb128 .LFE91-.LFB91
	.byte	0x7
	.4byte	.LFB92
	.uleb128 .LFE92-.LFB92
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF104:
	.string	"mbedtls_sha256_starts"
.LASF45:
	.string	"mbedtls_ripemd160_context"
.LASF81:
	.string	"strcmp"
.LASF12:
	.string	"size_t"
.LASF50:
	.string	"is384"
.LASF47:
	.string	"mbedtls_sha256_context"
.LASF18:
	.string	"uint64_t"
.LASF127:
	.string	"mbedtls_sha1_free"
.LASF164:
	.string	"mbedtls_xor"
.LASF162:
	.string	"psa_to_md_errors"
.LASF34:
	.string	"type"
.LASF95:
	.string	"mbedtls_md5_finish"
.LASF97:
	.string	"mbedtls_sha512_update"
.LASF145:
	.string	"entry"
.LASF9:
	.string	"long long unsigned int"
.LASF146:
	.string	"mbedtls_md_info_from_string"
.LASF123:
	.string	"free"
.LASF13:
	.string	"int16_t"
.LASF55:
	.string	"MBEDTLS_SHA3_512"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF110:
	.string	"mbedtls_sha256_init"
.LASF163:
	.string	"mbedtls_md_list"
.LASF154:
	.string	"mbedtls_md_starts"
.LASF101:
	.string	"mbedtls_md5_update"
.LASF76:
	.string	"supported_digests"
.LASF43:
	.string	"state"
.LASF6:
	.string	"long int"
.LASF126:
	.string	"mbedtls_sha256_free"
.LASF77:
	.string	"md_name"
.LASF24:
	.string	"MBEDTLS_MD_SHA224"
.LASF150:
	.string	"mbedtls_md_get_size"
.LASF120:
	.string	"mbedtls_md5_clone"
.LASF80:
	.string	"md_names"
.LASF16:
	.string	"uint16_t"
.LASF100:
	.string	"mbedtls_ripemd160_update"
.LASF108:
	.string	"mbedtls_sha3_init"
.LASF118:
	.string	"mbedtls_sha1_clone"
.LASF37:
	.string	"mbedtls_md_context_t"
.LASF31:
	.string	"MBEDTLS_MD_SHA3_512"
.LASF41:
	.string	"mbedtls_md5_context"
.LASF88:
	.string	"mbedtls_ripemd160"
.LASF115:
	.string	"mbedtls_sha3_clone"
.LASF112:
	.string	"mbedtls_ripemd160_init"
.LASF74:
	.string	"mbedtls_sha3_384_info"
.LASF141:
	.string	"mbedtls_md_hmac_starts"
.LASF155:
	.string	"mbedtls_md_setup"
.LASF158:
	.string	"mbedtls_md_free"
.LASF56:
	.string	"mbedtls_sha3_id"
.LASF10:
	.string	"unsigned int"
.LASF36:
	.string	"block_size"
.LASF65:
	.string	"mbedtls_md5_info"
.LASF103:
	.string	"mbedtls_sha512_starts"
.LASF29:
	.string	"MBEDTLS_MD_SHA3_256"
.LASF92:
	.string	"mbedtls_sha256_finish"
.LASF134:
	.string	"output"
.LASF23:
	.string	"MBEDTLS_MD_SHA1"
.LASF102:
	.string	"mbedtls_sha3_starts"
.LASF119:
	.string	"mbedtls_ripemd160_clone"
.LASF22:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF32:
	.string	"mbedtls_md_type_t"
.LASF63:
	.string	"mbedtls_error"
.LASF35:
	.string	"size"
.LASF5:
	.string	"short unsigned int"
.LASF109:
	.string	"mbedtls_sha512_init"
.LASF79:
	.string	"md_name_entry"
.LASF99:
	.string	"mbedtls_sha1_update"
.LASF48:
	.string	"is224"
.LASF54:
	.string	"MBEDTLS_SHA3_384"
.LASF70:
	.string	"mbedtls_sha384_info"
.LASF125:
	.string	"mbedtls_sha512_free"
.LASF4:
	.string	"short int"
.LASF42:
	.string	"total"
.LASF89:
	.string	"mbedtls_md5"
.LASF149:
	.string	"mbedtls_md_get_type"
.LASF20:
	.string	"MBEDTLS_MD_NONE"
.LASF135:
	.string	"mbedtls_md_hmac"
.LASF116:
	.string	"mbedtls_sha512_clone"
.LASF106:
	.string	"mbedtls_ripemd160_starts"
.LASF72:
	.string	"mbedtls_sha3_224_info"
.LASF38:
	.string	"md_info"
.LASF98:
	.string	"mbedtls_sha256_update"
.LASF82:
	.string	"psa_generic_status_to_mbedtls"
.LASF152:
	.string	"mbedtls_md_finish"
.LASF11:
	.string	"long double"
.LASF128:
	.string	"mbedtls_ripemd160_free"
.LASF27:
	.string	"MBEDTLS_MD_SHA512"
.LASF157:
	.string	"mbedtls_md_clone"
.LASF87:
	.string	"mbedtls_sha1"
.LASF84:
	.string	"mbedtls_sha3"
.LASF30:
	.string	"MBEDTLS_MD_SHA3_384"
.LASF131:
	.string	"keylen"
.LASF142:
	.string	"cleanup"
.LASF61:
	.string	"psa_status_t"
.LASF73:
	.string	"mbedtls_sha3_256_info"
.LASF67:
	.string	"mbedtls_sha1_info"
.LASF33:
	.string	"mbedtls_md_info_t"
.LASF78:
	.string	"md_type"
.LASF25:
	.string	"MBEDTLS_MD_SHA256"
.LASF85:
	.string	"mbedtls_sha512"
.LASF151:
	.string	"mbedtls_md"
.LASF156:
	.string	"hmac"
.LASF138:
	.string	"mbedtls_md_hmac_finish"
.LASF137:
	.string	"ipad"
.LASF14:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF68:
	.string	"mbedtls_sha224_info"
.LASF39:
	.string	"md_ctx"
.LASF130:
	.string	"memset"
.LASF91:
	.string	"mbedtls_sha512_finish"
.LASF86:
	.string	"mbedtls_sha256"
.LASF90:
	.string	"mbedtls_sha3_finish"
.LASF132:
	.string	"input"
.LASF40:
	.string	"hmac_ctx"
.LASF83:
	.string	"psa_status_to_mbedtls"
.LASF94:
	.string	"mbedtls_ripemd160_finish"
.LASF51:
	.string	"MBEDTLS_SHA3_NONE"
.LASF140:
	.string	"mbedtls_md_hmac_update"
.LASF17:
	.string	"uint32_t"
.LASF107:
	.string	"mbedtls_md5_starts"
.LASF113:
	.string	"mbedtls_md5_init"
.LASF69:
	.string	"mbedtls_sha256_info"
.LASF66:
	.string	"mbedtls_ripemd160_info"
.LASF7:
	.string	"long unsigned int"
.LASF147:
	.string	"mbedtls_md_error_from_psa"
.LASF19:
	.string	"char"
.LASF64:
	.string	"mbedtls_error_pair_t"
.LASF136:
	.string	"mbedtls_md_hmac_reset"
.LASF121:
	.string	"mbedtls_platform_zeroize"
.LASF57:
	.string	"index"
.LASF46:
	.string	"mbedtls_sha1_context"
.LASF129:
	.string	"mbedtls_md5_free"
.LASF44:
	.string	"buffer"
.LASF96:
	.string	"mbedtls_sha3_update"
.LASF160:
	.string	"mbedtls_md_info_from_type"
.LASF122:
	.string	"mbedtls_zeroize_and_free"
.LASF26:
	.string	"MBEDTLS_MD_SHA384"
.LASF21:
	.string	"MBEDTLS_MD_MD5"
.LASF52:
	.string	"MBEDTLS_SHA3_224"
.LASF58:
	.string	"olen"
.LASF161:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF144:
	.string	"mbedtls_md_get_name"
.LASF159:
	.string	"mbedtls_md_init"
.LASF62:
	.string	"psa_status"
.LASF59:
	.string	"max_block_size"
.LASF53:
	.string	"MBEDTLS_SHA3_256"
.LASF49:
	.string	"mbedtls_sha512_context"
.LASF117:
	.string	"mbedtls_sha256_clone"
.LASF148:
	.string	"status"
.LASF75:
	.string	"mbedtls_sha3_512_info"
.LASF114:
	.string	"calloc"
.LASF133:
	.string	"ilen"
.LASF15:
	.string	"uint8_t"
.LASF124:
	.string	"mbedtls_sha3_free"
.LASF153:
	.string	"mbedtls_md_update"
.LASF28:
	.string	"MBEDTLS_MD_SHA3_224"
.LASF105:
	.string	"mbedtls_sha1_starts"
.LASF139:
	.string	"opad"
.LASF143:
	.string	"mbedtls_md_info_from_ctx"
.LASF60:
	.string	"mbedtls_sha3_context"
.LASF71:
	.string	"mbedtls_sha512_info"
.LASF93:
	.string	"mbedtls_sha1_finish"
.LASF111:
	.string	"mbedtls_sha1_init"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/md.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
