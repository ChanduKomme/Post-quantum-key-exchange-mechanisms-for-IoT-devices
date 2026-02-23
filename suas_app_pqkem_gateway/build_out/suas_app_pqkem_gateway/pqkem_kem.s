	.file	"pqkem_kem.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/suas_app_pqkem_gateway" "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/pqkem_kem.c"
	.section	.bss.g_entropy,"aw",@nobits
	.align	2
	.type	g_entropy, @object
	.size	g_entropy, 420
g_entropy:
	.zero	420
	.section	.bss.g_ctr_drbg,"aw",@nobits
	.align	2
	.type	g_ctr_drbg, @object
	.size	g_ctr_drbg, 320
g_ctr_drbg:
	.zero	320
	.section	.sbss.g_drbg_ready,"aw",@nobits
	.align	2
	.type	g_drbg_ready, @object
	.size	g_drbg_ready, 4
g_drbg_ready:
	.zero	4
	.section	.rodata
	.align	2
.LC0:
	.string	"pqkem_demo"
	.align	2
.LC1:
	.string	"[pqkem] mbedtls_ctr_drbg_seed failed, ret=%d\r\n"
	.section	.text.ensure_drbg,"ax",@progbits
	.align	1
	.type	ensure_drbg, @function
ensure_drbg:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/pqkem_kem.c"
	.loc 1 35 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 36 9
	lui	a5,%hi(g_drbg_ready)
	lw	a5,%lo(g_drbg_ready)(a5)
	.loc 1 36 8
	bne	a5,zero,.L5
	.loc 1 40 5
	lui	a5,%hi(g_entropy)
	addi	a0,a5,%lo(g_entropy)
	call	mbedtls_entropy_init
	.loc 1 41 5
	lui	a5,%hi(g_ctr_drbg)
	addi	a0,a5,%lo(g_ctr_drbg)
	call	mbedtls_ctr_drbg_init
	.loc 1 43 17
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	sw	a5,-20(s0)
	.loc 1 44 15
	lw	a0,-20(s0)
	call	strlen
	mv	a5,a0
	.loc 1 44 15 is_stmt 0 discriminator 1
	mv	a4,a5
	lw	a3,-20(s0)
	lui	a5,%hi(g_entropy)
	addi	a2,a5,%lo(g_entropy)
	lui	a5,%hi(mbedtls_entropy_func)
	addi	a1,a5,%lo(mbedtls_entropy_func)
	lui	a5,%hi(g_ctr_drbg)
	addi	a0,a5,%lo(g_ctr_drbg)
	call	mbedtls_ctr_drbg_seed
	sw	a0,-24(s0)
	.loc 1 49 8 is_stmt 1
	lw	a5,-24(s0)
	bne	a5,zero,.L4
	.loc 1 50 22
	lui	a5,%hi(g_drbg_ready)
	li	a4,1
	sw	a4,%lo(g_drbg_ready)(a5)
	j	.L1
.L4:
	.loc 1 52 22
	lui	a5,%hi(g_drbg_ready)
	sw	zero,%lo(g_drbg_ready)(a5)
	.loc 1 53 9
	lw	a1,-24(s0)
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	j	.L1
.L5:
	.loc 1 37 9
	nop
.L1:
	.loc 1 55 1
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
	.size	ensure_drbg, .-ensure_drbg
	.section	.rodata
	.align	2
.LC2:
	.string	"[pqkem] ctr_drbg_random failed, ret=%d\r\n"
	.section	.text.pqkem_random_bytes,"ax",@progbits
	.align	1
	.globl	pqkem_random_bytes
	.type	pqkem_random_bytes, @function
pqkem_random_bytes:
.LFB6:
	.loc 1 58 1
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
	.loc 1 59 8
	lw	a5,-36(s0)
	beq	a5,zero,.L10
	.loc 1 59 14 discriminator 1
	lw	a5,-40(s0)
	beq	a5,zero,.L10
	.loc 1 63 5
	call	ensure_drbg
	.loc 1 64 15
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lui	a5,%hi(g_ctr_drbg)
	addi	a0,a5,%lo(g_ctr_drbg)
	call	mbedtls_ctr_drbg_random
	sw	a0,-20(s0)
	.loc 1 65 8
	lw	a5,-20(s0)
	beq	a5,zero,.L6
	.loc 1 66 9
	lw	a1,-20(s0)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	j	.L6
.L10:
	.loc 1 60 9
	nop
.L6:
	.loc 1 68 1
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
	.size	pqkem_random_bytes, .-pqkem_random_bytes
	.section	.text.randombytes,"ax",@progbits
	.align	1
	.globl	randombytes
	.type	randombytes, @function
randombytes:
.LFB7:
	.loc 1 74 1
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
	.loc 1 75 5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	pqkem_random_bytes
	.loc 1 76 1
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
	.size	randombytes, .-randombytes
	.section	.text.load32_littleendian,"ax",@progbits
	.align	1
	.type	load32_littleendian, @function
load32_littleendian:
.LFB8:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/kyber/kyber512_ref/cbd.c"
	.loc 2 16 1
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
	.loc 2 18 18
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 2 18 5
	sw	a5,-20(s0)
	.loc 2 19 19
	lw	a5,-36(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 2 19 23
	slli	a5,a5,8
	.loc 2 19 5
	lw	a4,-20(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 20 19
	lw	a5,-36(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 2 20 23
	slli	a5,a5,16
	.loc 2 20 5
	lw	a4,-20(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 21 19
	lw	a5,-36(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 2 21 23
	slli	a5,a5,24
	.loc 2 21 5
	lw	a4,-20(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 22 10
	lw	a5,-20(s0)
	.loc 2 23 1
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
	.size	load32_littleendian, .-load32_littleendian
	.section	.text.load24_littleendian,"ax",@progbits
	.align	1
	.type	load24_littleendian, @function
load24_littleendian:
.LFB9:
	.loc 2 38 1
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
	.loc 2 40 18
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 2 40 5
	sw	a5,-20(s0)
	.loc 2 41 19
	lw	a5,-36(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 2 41 23
	slli	a5,a5,8
	.loc 2 41 5
	lw	a4,-20(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 42 19
	lw	a5,-36(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 2 42 23
	slli	a5,a5,16
	.loc 2 42 5
	lw	a4,-20(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 43 10
	lw	a5,-20(s0)
	.loc 2 44 1
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
	.size	load24_littleendian, .-load24_littleendian
	.section	.text.cbd2,"ax",@progbits
	.align	1
	.type	cbd2, @function
cbd2:
.LFB10:
	.loc 2 59 1
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
	.loc 2 64 8
	sw	zero,-20(s0)
	.loc 2 64 3
	j	.L17
.L20:
	.loc 2 65 34
	lw	a5,-20(s0)
	slli	a5,a5,2
	.loc 2 65 9
	lw	a4,-56(s0)
	add	a5,a4,a5
	mv	a0,a5
	call	load32_littleendian
	sw	a0,-28(s0)
	.loc 2 66 7
	lw	a4,-28(s0)
	li	a5,1431654400
	addi	a5,a5,1365
	and	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 67 12
	lw	a5,-28(s0)
	srli	a4,a5,1
	.loc 2 67 17
	li	a5,1431654400
	addi	a5,a5,1365
	and	a5,a4,a5
	.loc 2 67 7
	lw	a4,-32(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 69 10
	sw	zero,-24(s0)
	.loc 2 69 5
	j	.L18
.L19:
	.loc 2 70 21
	lw	a5,-24(s0)
	slli	a5,a5,2
	.loc 2 70 14
	lw	a4,-32(s0)
	srl	a5,a4,a5
	.loc 2 70 26
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 2 70 9
	andi	a5,a5,3
	sh	a5,-34(s0)
	.loc 2 71 19
	lw	a5,-24(s0)
	slli	a5,a5,2
	.loc 2 71 21
	addi	a5,a5,2
	.loc 2 71 14
	lw	a4,-32(s0)
	srl	a5,a4,a5
	.loc 2 71 26
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 2 71 9
	andi	a5,a5,3
	sh	a5,-36(s0)
	.loc 2 72 28
	lhu	a4,-34(s0)
	lhu	a5,-36(s0)
	sub	a5,a4,a5
	slli	a3,a5,16
	srli	a3,a3,16
	.loc 2 72 18
	lw	a5,-20(s0)
	slli	a4,a5,3
	.loc 2 72 20
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 2 72 28
	slli	a4,a3,16
	srai	a4,a4,16
	.loc 2 72 24
	lw	a3,-52(s0)
	slli	a5,a5,1
	add	a5,a3,a5
	sh	a4,0(a5)
	.loc 2 69 18 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L18:
	.loc 2 69 14 discriminator 1
	lw	a4,-24(s0)
	li	a5,7
	bleu	a4,a5,.L19
	.loc 2 64 20 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L17:
	.loc 2 64 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,31
	bleu	a4,a5,.L20
	.loc 2 75 1
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
.LFE10:
	.size	cbd2, .-cbd2
	.section	.text.cbd3,"ax",@progbits
	.align	1
	.type	cbd3, @function
cbd3:
.LFB11:
	.loc 2 90 1
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
	.loc 2 95 8
	sw	zero,-20(s0)
	.loc 2 95 3
	j	.L22
.L25:
	.loc 2 96 34
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 2 96 9
	lw	a4,-56(s0)
	add	a5,a4,a5
	mv	a0,a5
	call	load24_littleendian
	sw	a0,-28(s0)
	.loc 2 97 7
	lw	a4,-28(s0)
	li	a5,2396160
	addi	a5,a5,585
	and	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 98 12
	lw	a5,-28(s0)
	srli	a4,a5,1
	.loc 2 98 17
	li	a5,2396160
	addi	a5,a5,585
	and	a5,a4,a5
	.loc 2 98 7
	lw	a4,-32(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 99 12
	lw	a5,-28(s0)
	srli	a4,a5,2
	.loc 2 99 17
	li	a5,2396160
	addi	a5,a5,585
	and	a5,a4,a5
	.loc 2 99 7
	lw	a4,-32(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 101 10
	sw	zero,-24(s0)
	.loc 2 101 5
	j	.L23
.L24:
	.loc 2 102 21
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a4,a5
	.loc 2 102 14
	lw	a5,-32(s0)
	srl	a5,a5,a4
	.loc 2 102 26
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 2 102 9
	andi	a5,a5,7
	sh	a5,-34(s0)
	.loc 2 103 19
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	.loc 2 103 21
	addi	a5,a5,3
	.loc 2 103 14
	lw	a4,-32(s0)
	srl	a5,a4,a5
	.loc 2 103 26
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 2 103 9
	andi	a5,a5,7
	sh	a5,-36(s0)
	.loc 2 104 28
	lhu	a4,-34(s0)
	lhu	a5,-36(s0)
	sub	a5,a4,a5
	slli	a3,a5,16
	srli	a3,a3,16
	.loc 2 104 18
	lw	a5,-20(s0)
	slli	a4,a5,2
	.loc 2 104 20
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 2 104 28
	slli	a4,a3,16
	srai	a4,a4,16
	.loc 2 104 24
	lw	a3,-52(s0)
	slli	a5,a5,1
	add	a5,a3,a5
	sh	a4,0(a5)
	.loc 2 101 18 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L23:
	.loc 2 101 14 discriminator 1
	lw	a4,-24(s0)
	li	a5,3
	bleu	a4,a5,.L24
	.loc 2 95 20 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L22:
	.loc 2 95 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,63
	bleu	a4,a5,.L25
	.loc 2 107 1
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
.LFE11:
	.size	cbd3, .-cbd3
	.section	.text.pqcrystals_kyber512_ref_poly_cbd_eta1,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_poly_cbd_eta1
	.type	pqcrystals_kyber512_ref_poly_cbd_eta1, @function
pqcrystals_kyber512_ref_poly_cbd_eta1:
.LFB12:
	.loc 2 111 1
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
	.loc 2 115 3
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	cbd3
	.loc 2 119 1
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
.LFE12:
	.size	pqcrystals_kyber512_ref_poly_cbd_eta1, .-pqcrystals_kyber512_ref_poly_cbd_eta1
	.section	.text.pqcrystals_kyber512_ref_poly_cbd_eta2,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_poly_cbd_eta2
	.type	pqcrystals_kyber512_ref_poly_cbd_eta2, @function
pqcrystals_kyber512_ref_poly_cbd_eta2:
.LFB13:
	.loc 2 122 1
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
	.loc 2 124 3
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	cbd2
	.loc 2 128 1
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
	.size	pqcrystals_kyber512_ref_poly_cbd_eta2, .-pqcrystals_kyber512_ref_poly_cbd_eta2
	.section	.text.load64,"ax",@progbits
	.align	1
	.type	load64, @function
load64:
.LFB14:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/kyber/kyber512_ref/fips202.c"
	.loc 3 22 44
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
	.loc 3 24 12
	li	a0,0
	li	a1,0
	sw	a0,-32(s0)
	sw	a1,-28(s0)
	.loc 3 26 8
	sw	zero,-20(s0)
	.loc 3 26 3
	j	.L29
.L32:
	.loc 3 27 21
	lw	a0,-36(s0)
	lw	a1,-20(s0)
	add	a1,a0,a1
	lbu	a1,0(a1)
	.loc 3 27 10
	mv	a2,a1
	li	a3,0
	.loc 3 27 29
	lw	a1,-20(s0)
	slli	a1,a1,3
	.loc 3 27 25
	addi	a0,a1,-32
	blt	a0,zero,.L30
	sll	a5,a2,a0
	li	a4,0
	j	.L31
.L30:
	srli	t1,a2,1
	li	a0,31
	sub	a0,a0,a1
	srl	a0,t1,a0
	sll	a5,a3,a1
	add	a5,a0,a5
	sll	a4,a2,a1
.L31:
	.loc 3 27 7
	lw	a1,-32(s0)
	or	a6,a1,a4
	lw	a1,-28(s0)
	or	a7,a1,a5
	sw	a6,-32(s0)
	sw	a7,-28(s0)
	.loc 3 26 16 discriminator 3
	lw	a1,-20(s0)
	addi	a1,a1,1
	sw	a1,-20(s0)
.L29:
	.loc 3 26 12 discriminator 1
	lw	a0,-20(s0)
	li	a1,7
	bleu	a0,a1,.L32
	.loc 3 29 10
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	.loc 3 30 1
	mv	a0,a4
	mv	a1,a5
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
	.size	load64, .-load64
	.section	.text.store64,"ax",@progbits
	.align	1
	.type	store64, @function
store64:
.LFB15:
	.loc 3 40 47
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
	sw	a1,-48(s0)
	sw	a2,-44(s0)
	.loc 3 43 8
	sw	zero,-20(s0)
	.loc 3 43 3
	j	.L35
.L38:
	.loc 3 44 18
	lw	a3,-20(s0)
	slli	a3,a3,3
	.loc 3 44 14
	addi	a2,a3,-32
	blt	a2,zero,.L36
	lw	a3,-44(s0)
	srl	a4,a3,a2
	li	a5,0
	j	.L37
.L36:
	lw	a2,-44(s0)
	slli	a1,a2,1
	li	a2,31
	sub	a2,a2,a3
	sll	a2,a1,a2
	lw	a1,-48(s0)
	srl	a4,a1,a3
	add	a4,a2,a4
	lw	a2,-44(s0)
	srl	a5,a2,a3
.L37:
	.loc 3 44 6
	lw	a2,-36(s0)
	lw	a3,-20(s0)
	add	a3,a2,a3
	.loc 3 44 10
	andi	a2,a4,0xff
	sb	a2,0(a3)
	.loc 3 43 16 discriminator 3
	lw	a3,-20(s0)
	addi	a3,a3,1
	sw	a3,-20(s0)
.L35:
	.loc 3 43 12 discriminator 1
	lw	a2,-20(s0)
	li	a3,7
	bleu	a2,a3,.L38
	.loc 3 45 1
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
.LFE15:
	.size	store64, .-store64
	.section	.rodata.KeccakF_RoundConstants,"a"
	.align	3
	.type	KeccakF_RoundConstants, @object
	.size	KeccakF_RoundConstants, 192
KeccakF_RoundConstants:
	.word	1
	.word	0
	.word	32898
	.word	0
	.word	32906
	.word	-2147483648
	.word	-2147450880
	.word	-2147483648
	.word	32907
	.word	0
	.word	-2147483647
	.word	0
	.word	-2147450751
	.word	-2147483648
	.word	32777
	.word	-2147483648
	.word	138
	.word	0
	.word	136
	.word	0
	.word	-2147450871
	.word	0
	.word	-2147483638
	.word	0
	.word	-2147450741
	.word	0
	.word	139
	.word	-2147483648
	.word	32905
	.word	-2147483648
	.word	32771
	.word	-2147483648
	.word	32770
	.word	-2147483648
	.word	128
	.word	-2147483648
	.word	32778
	.word	0
	.word	-2147483638
	.word	-2147483648
	.word	-2147450751
	.word	-2147483648
	.word	32896
	.word	-2147483648
	.word	-2147483647
	.word	0
	.word	-2147450872
	.word	-2147483648
	.section	.text.KeccakF1600_StatePermute,"ax",@progbits
	.align	1
	.type	KeccakF1600_StatePermute, @function
KeccakF1600_StatePermute:
.LFB16:
	.loc 3 83 1
	.cfi_startproc
	addi	sp,sp,-2032
	.cfi_def_cfa_offset 2032
	sw	ra,2028(sp)
	sw	s0,2024(sp)
	sw	s2,2020(sp)
	sw	s3,2016(sp)
	sw	s4,2012(sp)
	sw	s5,2008(sp)
	sw	s6,2004(sp)
	sw	s7,2000(sp)
	sw	s8,1996(sp)
	sw	s9,1992(sp)
	sw	s10,1988(sp)
	sw	s11,1984(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	.cfi_offset 22, -28
	.cfi_offset 23, -32
	.cfi_offset 24, -36
	.cfi_offset 25, -40
	.cfi_offset 26, -44
	.cfi_offset 27, -48
	addi	s0,sp,2032
	.cfi_def_cfa 8, 0
	addi	sp,sp,-928
	sw	a0,-548(s0)
	.loc 3 100 13
	lw	a5,-548(s0)
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-64(s0)
	sw	a5,-60(s0)
	.loc 3 101 13
	lw	a5,-548(s0)
	lw	a4,8(a5)
	lw	a5,12(a5)
	sw	a4,-72(s0)
	sw	a5,-68(s0)
	.loc 3 102 13
	lw	a5,-548(s0)
	lw	a4,16(a5)
	lw	a5,20(a5)
	sw	a4,-80(s0)
	sw	a5,-76(s0)
	.loc 3 103 13
	lw	a5,-548(s0)
	lw	a4,24(a5)
	lw	a5,28(a5)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
	.loc 3 104 13
	lw	a5,-548(s0)
	lw	a4,32(a5)
	lw	a5,36(a5)
	sw	a4,-96(s0)
	sw	a5,-92(s0)
	.loc 3 105 13
	lw	a5,-548(s0)
	lw	a4,40(a5)
	lw	a5,44(a5)
	sw	a4,-104(s0)
	sw	a5,-100(s0)
	.loc 3 106 13
	lw	a5,-548(s0)
	lw	a4,48(a5)
	lw	a5,52(a5)
	sw	a4,-112(s0)
	sw	a5,-108(s0)
	.loc 3 107 13
	lw	a5,-548(s0)
	lw	a4,56(a5)
	lw	a5,60(a5)
	sw	a4,-120(s0)
	sw	a5,-116(s0)
	.loc 3 108 13
	lw	a5,-548(s0)
	lw	a4,64(a5)
	lw	a5,68(a5)
	sw	a4,-128(s0)
	sw	a5,-124(s0)
	.loc 3 109 13
	lw	a5,-548(s0)
	lw	a4,72(a5)
	lw	a5,76(a5)
	sw	a4,-136(s0)
	sw	a5,-132(s0)
	.loc 3 110 13
	lw	a5,-548(s0)
	lw	a4,80(a5)
	lw	a5,84(a5)
	sw	a4,-144(s0)
	sw	a5,-140(s0)
	.loc 3 111 13
	lw	a5,-548(s0)
	lw	a4,88(a5)
	lw	a5,92(a5)
	sw	a4,-152(s0)
	sw	a5,-148(s0)
	.loc 3 112 13
	lw	a5,-548(s0)
	lw	a4,96(a5)
	lw	a5,100(a5)
	sw	a4,-160(s0)
	sw	a5,-156(s0)
	.loc 3 113 13
	lw	a5,-548(s0)
	lw	a4,104(a5)
	lw	a5,108(a5)
	sw	a4,-168(s0)
	sw	a5,-164(s0)
	.loc 3 114 13
	lw	a5,-548(s0)
	lw	a4,112(a5)
	lw	a5,116(a5)
	sw	a4,-176(s0)
	sw	a5,-172(s0)
	.loc 3 115 13
	lw	a5,-548(s0)
	lw	a4,120(a5)
	lw	a5,124(a5)
	sw	a4,-184(s0)
	sw	a5,-180(s0)
	.loc 3 116 13
	lw	a5,-548(s0)
	lw	a4,128(a5)
	lw	a5,132(a5)
	sw	a4,-192(s0)
	sw	a5,-188(s0)
	.loc 3 117 13
	lw	a5,-548(s0)
	lw	a4,136(a5)
	lw	a5,140(a5)
	sw	a4,-200(s0)
	sw	a5,-196(s0)
	.loc 3 118 13
	lw	a5,-548(s0)
	lw	a4,144(a5)
	lw	a5,148(a5)
	sw	a4,-208(s0)
	sw	a5,-204(s0)
	.loc 3 119 13
	lw	a5,-548(s0)
	lw	a4,152(a5)
	lw	a5,156(a5)
	sw	a4,-216(s0)
	sw	a5,-212(s0)
	.loc 3 120 13
	lw	a5,-548(s0)
	lw	a4,160(a5)
	lw	a5,164(a5)
	sw	a4,-224(s0)
	sw	a5,-220(s0)
	.loc 3 121 13
	lw	a5,-548(s0)
	lw	a4,168(a5)
	lw	a5,172(a5)
	sw	a4,-232(s0)
	sw	a5,-228(s0)
	.loc 3 122 13
	lw	a5,-548(s0)
	lw	a4,176(a5)
	lw	a5,180(a5)
	sw	a4,-240(s0)
	sw	a5,-236(s0)
	.loc 3 123 13
	lw	a5,-548(s0)
	lw	a4,184(a5)
	lw	a5,188(a5)
	sw	a4,-248(s0)
	sw	a5,-244(s0)
	.loc 3 124 13
	lw	a5,-548(s0)
	lw	a4,192(a5)
	lw	a5,196(a5)
	sw	a4,-256(s0)
	sw	a5,-252(s0)
	.loc 3 126 19
	sw	zero,-52(s0)
	.loc 3 126 9
	j	.L40
.L41:
	.loc 3 128 22
	lw	a4,-64(s0)
	lw	a5,-104(s0)
	xor	a5,a4,a5
	sw	a5,-560(s0)
	lw	a4,-60(s0)
	lw	a5,-100(s0)
	xor	a5,a4,a5
	sw	a5,-556(s0)
	.loc 3 128 26
	lw	a5,-144(s0)
	lw	a3,-560(s0)
	lw	a4,-556(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-568(s0)
	lw	a5,-140(s0)
	xor	a5,a5,a4
	sw	a5,-564(s0)
	.loc 3 128 30
	lw	a5,-184(s0)
	lw	a3,-568(s0)
	lw	a4,-564(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-576(s0)
	lw	a5,-180(s0)
	xor	a5,a5,a4
	sw	a5,-572(s0)
	.loc 3 128 17
	lw	a5,-224(s0)
	lw	a3,-576(s0)
	lw	a4,-572(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1600(s0)
	lw	a5,-220(s0)
	xor	a5,a5,a4
	sw	a5,-1596(s0)
	lw	a4,-1600(s0)
	lw	a5,-1596(s0)
	sw	a4,-264(s0)
	sw	a5,-260(s0)
	.loc 3 129 22
	lw	a4,-72(s0)
	lw	a5,-112(s0)
	xor	a5,a4,a5
	sw	a5,-584(s0)
	lw	a4,-68(s0)
	lw	a5,-108(s0)
	xor	a5,a4,a5
	sw	a5,-580(s0)
	.loc 3 129 26
	lw	a5,-152(s0)
	lw	a3,-584(s0)
	lw	a4,-580(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-592(s0)
	lw	a5,-148(s0)
	xor	a5,a5,a4
	sw	a5,-588(s0)
	.loc 3 129 30
	lw	a5,-192(s0)
	lw	a3,-592(s0)
	lw	a4,-588(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-600(s0)
	lw	a5,-188(s0)
	xor	a5,a5,a4
	sw	a5,-596(s0)
	.loc 3 129 17
	lw	a5,-232(s0)
	lw	a3,-600(s0)
	lw	a4,-596(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1608(s0)
	lw	a5,-228(s0)
	xor	a5,a5,a4
	sw	a5,-1604(s0)
	lw	a4,-1608(s0)
	lw	a5,-1604(s0)
	sw	a4,-272(s0)
	sw	a5,-268(s0)
	.loc 3 130 22
	lw	a4,-80(s0)
	lw	a5,-120(s0)
	xor	a5,a4,a5
	sw	a5,-608(s0)
	lw	a4,-76(s0)
	lw	a5,-116(s0)
	xor	a5,a4,a5
	sw	a5,-604(s0)
	.loc 3 130 26
	lw	a5,-160(s0)
	lw	a3,-608(s0)
	lw	a4,-604(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-616(s0)
	lw	a5,-156(s0)
	xor	a5,a5,a4
	sw	a5,-612(s0)
	.loc 3 130 30
	lw	a5,-200(s0)
	lw	a3,-616(s0)
	lw	a4,-612(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-624(s0)
	lw	a5,-196(s0)
	xor	a5,a5,a4
	sw	a5,-620(s0)
	.loc 3 130 17
	lw	a5,-240(s0)
	lw	a3,-624(s0)
	lw	a4,-620(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1616(s0)
	lw	a5,-236(s0)
	xor	a5,a5,a4
	sw	a5,-1612(s0)
	lw	a4,-1616(s0)
	lw	a5,-1612(s0)
	sw	a4,-280(s0)
	sw	a5,-276(s0)
	.loc 3 131 22
	lw	a4,-88(s0)
	lw	a5,-128(s0)
	xor	a5,a4,a5
	sw	a5,-632(s0)
	lw	a4,-84(s0)
	lw	a5,-124(s0)
	xor	a5,a4,a5
	sw	a5,-628(s0)
	.loc 3 131 26
	lw	a5,-168(s0)
	lw	a3,-632(s0)
	lw	a4,-628(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-640(s0)
	lw	a5,-164(s0)
	xor	a5,a5,a4
	sw	a5,-636(s0)
	.loc 3 131 30
	lw	a5,-208(s0)
	lw	a3,-640(s0)
	lw	a4,-636(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-648(s0)
	lw	a5,-204(s0)
	xor	a5,a5,a4
	sw	a5,-644(s0)
	.loc 3 131 17
	lw	a5,-248(s0)
	lw	a3,-648(s0)
	lw	a4,-644(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1624(s0)
	lw	a5,-244(s0)
	xor	a5,a5,a4
	sw	a5,-1620(s0)
	lw	a4,-1624(s0)
	lw	a5,-1620(s0)
	sw	a4,-288(s0)
	sw	a5,-284(s0)
	.loc 3 132 22
	lw	a4,-96(s0)
	lw	a5,-136(s0)
	xor	a5,a4,a5
	sw	a5,-656(s0)
	lw	a4,-92(s0)
	lw	a5,-132(s0)
	xor	a5,a4,a5
	sw	a5,-652(s0)
	.loc 3 132 26
	lw	a5,-176(s0)
	lw	a3,-656(s0)
	lw	a4,-652(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-664(s0)
	lw	a5,-172(s0)
	xor	a5,a5,a4
	sw	a5,-660(s0)
	.loc 3 132 30
	lw	a5,-216(s0)
	lw	a3,-664(s0)
	lw	a4,-660(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-672(s0)
	lw	a5,-212(s0)
	xor	a5,a5,a4
	sw	a5,-668(s0)
	.loc 3 132 17
	lw	a5,-256(s0)
	lw	a3,-672(s0)
	lw	a4,-668(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1632(s0)
	lw	a5,-252(s0)
	xor	a5,a5,a4
	sw	a5,-1628(s0)
	lw	a4,-1632(s0)
	lw	a5,-1628(s0)
	sw	a4,-296(s0)
	sw	a5,-292(s0)
	.loc 3 135 34
	lw	a5,-268(s0)
	srli	a4,a5,31
	lw	a5,-272(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sw	a5,-680(s0)
	lw	a5,-272(s0)
	srli	a4,a5,31
	lw	a5,-268(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sw	a5,-676(s0)
	.loc 3 135 16
	lw	a5,-296(s0)
	lw	a3,-680(s0)
	lw	a4,-676(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1640(s0)
	lw	a5,-292(s0)
	xor	a5,a5,a4
	sw	a5,-1636(s0)
	lw	a4,-1640(s0)
	lw	a5,-1636(s0)
	sw	a4,-304(s0)
	sw	a5,-300(s0)
	.loc 3 136 34
	lw	a5,-276(s0)
	srli	a4,a5,31
	lw	a5,-280(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sw	a5,-688(s0)
	lw	a5,-280(s0)
	srli	a4,a5,31
	lw	a5,-276(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sw	a5,-684(s0)
	.loc 3 136 16
	lw	a5,-264(s0)
	lw	a3,-688(s0)
	lw	a4,-684(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1648(s0)
	lw	a5,-260(s0)
	xor	a5,a5,a4
	sw	a5,-1644(s0)
	lw	a4,-1648(s0)
	lw	a5,-1644(s0)
	sw	a4,-312(s0)
	sw	a5,-308(s0)
	.loc 3 137 34
	lw	a5,-284(s0)
	srli	a4,a5,31
	lw	a5,-288(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sw	a5,-696(s0)
	lw	a5,-288(s0)
	srli	a4,a5,31
	lw	a5,-284(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sw	a5,-692(s0)
	.loc 3 137 16
	lw	a5,-272(s0)
	lw	a3,-696(s0)
	lw	a4,-692(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1656(s0)
	lw	a5,-268(s0)
	xor	a5,a5,a4
	sw	a5,-1652(s0)
	lw	a4,-1656(s0)
	lw	a5,-1652(s0)
	sw	a4,-320(s0)
	sw	a5,-316(s0)
	.loc 3 138 34
	lw	a5,-292(s0)
	srli	a4,a5,31
	lw	a5,-296(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sw	a5,-704(s0)
	lw	a5,-296(s0)
	srli	a4,a5,31
	lw	a5,-292(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sw	a5,-700(s0)
	.loc 3 138 16
	lw	a5,-280(s0)
	lw	a3,-704(s0)
	lw	a4,-700(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1664(s0)
	lw	a5,-276(s0)
	xor	a5,a5,a4
	sw	a5,-1660(s0)
	lw	a4,-1664(s0)
	lw	a5,-1660(s0)
	sw	a4,-328(s0)
	sw	a5,-324(s0)
	.loc 3 139 34
	lw	a5,-260(s0)
	srli	a4,a5,31
	lw	a5,-264(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sw	a5,-712(s0)
	lw	a5,-264(s0)
	srli	a4,a5,31
	lw	a5,-260(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sw	a5,-708(s0)
	.loc 3 139 16
	lw	a5,-288(s0)
	lw	a3,-712(s0)
	lw	a4,-708(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1672(s0)
	lw	a5,-284(s0)
	xor	a5,a5,a4
	sw	a5,-1668(s0)
	lw	a4,-1672(s0)
	lw	a5,-1668(s0)
	sw	a4,-336(s0)
	sw	a5,-332(s0)
	.loc 3 141 17
	lw	a4,-64(s0)
	lw	a5,-304(s0)
	xor	a5,a4,a5
	sw	a5,-1680(s0)
	lw	a4,-60(s0)
	lw	a5,-300(s0)
	xor	a5,a4,a5
	sw	a5,-1676(s0)
	lw	a4,-1680(s0)
	lw	a5,-1676(s0)
	sw	a4,-64(s0)
	sw	a5,-60(s0)
	.loc 3 142 17
	lw	a4,-64(s0)
	lw	a5,-60(s0)
	sw	a4,-264(s0)
	sw	a5,-260(s0)
	.loc 3 143 17
	lw	a4,-112(s0)
	lw	a5,-312(s0)
	xor	a5,a4,a5
	sw	a5,-1688(s0)
	lw	a4,-108(s0)
	lw	a5,-308(s0)
	xor	a5,a4,a5
	sw	a5,-1684(s0)
	lw	a4,-1688(s0)
	lw	a5,-1684(s0)
	sw	a4,-112(s0)
	sw	a5,-108(s0)
	.loc 3 144 17
	lw	a5,-108(s0)
	slli	a4,a5,12
	lw	a5,-112(s0)
	srli	a5,a5,20
	add	a5,a4,a5
	sw	a5,-1696(s0)
	lw	a5,-112(s0)
	slli	a4,a5,12
	lw	a5,-108(s0)
	srli	a5,a5,20
	add	a5,a4,a5
	sw	a5,-1692(s0)
	lw	a4,-1696(s0)
	lw	a5,-1692(s0)
	sw	a4,-272(s0)
	sw	a5,-268(s0)
	.loc 3 145 17
	lw	a4,-160(s0)
	lw	a5,-320(s0)
	xor	a5,a4,a5
	sw	a5,-1704(s0)
	lw	a4,-156(s0)
	lw	a5,-316(s0)
	xor	a5,a4,a5
	sw	a5,-1700(s0)
	lw	a4,-1704(s0)
	lw	a5,-1700(s0)
	sw	a4,-160(s0)
	sw	a5,-156(s0)
	.loc 3 146 17
	lw	a5,-156(s0)
	slli	a4,a5,11
	lw	a5,-160(s0)
	srli	a5,a5,21
	add	a5,a4,a5
	sw	a5,-1712(s0)
	lw	a5,-160(s0)
	slli	a4,a5,11
	lw	a5,-156(s0)
	srli	a5,a5,21
	add	a5,a4,a5
	sw	a5,-1708(s0)
	lw	a4,-1712(s0)
	lw	a5,-1708(s0)
	sw	a4,-280(s0)
	sw	a5,-276(s0)
	.loc 3 147 17
	lw	a4,-208(s0)
	lw	a5,-328(s0)
	xor	a5,a4,a5
	sw	a5,-1720(s0)
	lw	a4,-204(s0)
	lw	a5,-324(s0)
	xor	a5,a4,a5
	sw	a5,-1716(s0)
	lw	a4,-1720(s0)
	lw	a5,-1716(s0)
	sw	a4,-208(s0)
	sw	a5,-204(s0)
	.loc 3 148 17
	lw	a5,-204(s0)
	srli	a4,a5,11
	lw	a5,-208(s0)
	slli	a5,a5,21
	add	a5,a4,a5
	sw	a5,-1728(s0)
	lw	a5,-208(s0)
	srli	a4,a5,11
	lw	a5,-204(s0)
	slli	a5,a5,21
	add	a5,a4,a5
	sw	a5,-1724(s0)
	lw	a4,-1728(s0)
	lw	a5,-1724(s0)
	sw	a4,-288(s0)
	sw	a5,-284(s0)
	.loc 3 149 17
	lw	a4,-256(s0)
	lw	a5,-336(s0)
	xor	a5,a4,a5
	sw	a5,-1736(s0)
	lw	a4,-252(s0)
	lw	a5,-332(s0)
	xor	a5,a4,a5
	sw	a5,-1732(s0)
	lw	a4,-1736(s0)
	lw	a5,-1732(s0)
	sw	a4,-256(s0)
	sw	a5,-252(s0)
	.loc 3 150 17
	lw	a5,-252(s0)
	srli	a4,a5,18
	lw	a5,-256(s0)
	slli	a5,a5,14
	add	a5,a4,a5
	sw	a5,-1744(s0)
	lw	a5,-256(s0)
	srli	a4,a5,18
	lw	a5,-252(s0)
	slli	a5,a5,14
	add	a5,a4,a5
	sw	a5,-1740(s0)
	lw	a4,-1744(s0)
	lw	a5,-1740(s0)
	sw	a4,-296(s0)
	sw	a5,-292(s0)
	.loc 3 151 26
	lw	a5,-272(s0)
	not	a5,a5
	sw	a5,-720(s0)
	lw	a5,-268(s0)
	not	a5,a5
	sw	a5,-716(s0)
	.loc 3 151 31
	lw	a5,-280(s0)
	lw	a3,-720(s0)
	lw	a4,-716(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-728(s0)
	lw	a5,-276(s0)
	and	a5,a5,a4
	sw	a5,-724(s0)
	.loc 3 151 17
	lw	a5,-264(s0)
	lw	a3,-728(s0)
	lw	a4,-724(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1752(s0)
	lw	a5,-260(s0)
	xor	a5,a5,a4
	sw	a5,-1748(s0)
	lw	a4,-1752(s0)
	lw	a5,-1748(s0)
	sw	a4,-344(s0)
	sw	a5,-340(s0)
	.loc 3 152 52
	lui	a5,%hi(KeccakF_RoundConstants)
	addi	a4,a5,%lo(KeccakF_RoundConstants)
	lw	a5,-52(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 3 152 17
	lw	a3,-344(s0)
	xor	a3,a3,a4
	sw	a3,-1760(s0)
	lw	a3,-340(s0)
	xor	a5,a3,a5
	sw	a5,-1756(s0)
	lw	a4,-1760(s0)
	lw	a5,-1756(s0)
	sw	a4,-344(s0)
	sw	a5,-340(s0)
	.loc 3 153 26
	lw	a5,-280(s0)
	not	a5,a5
	sw	a5,-736(s0)
	lw	a5,-276(s0)
	not	a5,a5
	sw	a5,-732(s0)
	.loc 3 153 31
	lw	a5,-288(s0)
	lw	a3,-736(s0)
	lw	a4,-732(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-744(s0)
	lw	a5,-284(s0)
	and	a5,a5,a4
	sw	a5,-740(s0)
	.loc 3 153 17
	lw	a5,-272(s0)
	lw	a3,-744(s0)
	lw	a4,-740(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1768(s0)
	lw	a5,-268(s0)
	xor	a5,a5,a4
	sw	a5,-1764(s0)
	lw	a4,-1768(s0)
	lw	a5,-1764(s0)
	sw	a4,-352(s0)
	sw	a5,-348(s0)
	.loc 3 154 26
	lw	a5,-288(s0)
	not	a5,a5
	sw	a5,-752(s0)
	lw	a5,-284(s0)
	not	a5,a5
	sw	a5,-748(s0)
	.loc 3 154 31
	lw	a5,-296(s0)
	lw	a3,-752(s0)
	lw	a4,-748(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-760(s0)
	lw	a5,-292(s0)
	and	a5,a5,a4
	sw	a5,-756(s0)
	.loc 3 154 17
	lw	a5,-280(s0)
	lw	a3,-760(s0)
	lw	a4,-756(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1776(s0)
	lw	a5,-276(s0)
	xor	a5,a5,a4
	sw	a5,-1772(s0)
	lw	a4,-1776(s0)
	lw	a5,-1772(s0)
	sw	a4,-360(s0)
	sw	a5,-356(s0)
	.loc 3 155 26
	lw	a5,-296(s0)
	not	a5,a5
	sw	a5,-768(s0)
	lw	a5,-292(s0)
	not	a5,a5
	sw	a5,-764(s0)
	.loc 3 155 31
	lw	a5,-264(s0)
	lw	a3,-768(s0)
	lw	a4,-764(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-776(s0)
	lw	a5,-260(s0)
	and	a5,a5,a4
	sw	a5,-772(s0)
	.loc 3 155 17
	lw	a5,-288(s0)
	lw	a3,-776(s0)
	lw	a4,-772(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1784(s0)
	lw	a5,-284(s0)
	xor	a5,a5,a4
	sw	a5,-1780(s0)
	lw	a4,-1784(s0)
	lw	a5,-1780(s0)
	sw	a4,-368(s0)
	sw	a5,-364(s0)
	.loc 3 156 26
	lw	a5,-264(s0)
	not	a5,a5
	sw	a5,-784(s0)
	lw	a5,-260(s0)
	not	a5,a5
	sw	a5,-780(s0)
	.loc 3 156 31
	lw	a5,-272(s0)
	lw	a3,-784(s0)
	lw	a4,-780(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-792(s0)
	lw	a5,-268(s0)
	and	a5,a5,a4
	sw	a5,-788(s0)
	.loc 3 156 17
	lw	a5,-296(s0)
	lw	a3,-792(s0)
	lw	a4,-788(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1792(s0)
	lw	a5,-292(s0)
	xor	a5,a5,a4
	sw	a5,-1788(s0)
	lw	a4,-1792(s0)
	lw	a5,-1788(s0)
	sw	a4,-376(s0)
	sw	a5,-372(s0)
	.loc 3 158 17
	lw	a4,-88(s0)
	lw	a5,-328(s0)
	xor	a5,a4,a5
	sw	a5,-1800(s0)
	lw	a4,-84(s0)
	lw	a5,-324(s0)
	xor	a5,a4,a5
	sw	a5,-1796(s0)
	lw	a4,-1800(s0)
	lw	a5,-1796(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
	.loc 3 159 17
	lw	a5,-84(s0)
	srli	a4,a5,4
	lw	a5,-88(s0)
	slli	a5,a5,28
	add	a5,a4,a5
	sw	a5,-1808(s0)
	lw	a5,-88(s0)
	srli	a4,a5,4
	lw	a5,-84(s0)
	slli	a5,a5,28
	add	a5,a4,a5
	sw	a5,-1804(s0)
	lw	a4,-1808(s0)
	lw	a5,-1804(s0)
	sw	a4,-264(s0)
	sw	a5,-260(s0)
	.loc 3 160 17
	lw	a4,-136(s0)
	lw	a5,-336(s0)
	xor	a5,a4,a5
	sw	a5,-1816(s0)
	lw	a4,-132(s0)
	lw	a5,-332(s0)
	xor	a5,a4,a5
	sw	a5,-1812(s0)
	lw	a4,-1816(s0)
	lw	a5,-1812(s0)
	sw	a4,-136(s0)
	sw	a5,-132(s0)
	.loc 3 161 17
	lw	a5,-132(s0)
	srli	a4,a5,12
	lw	a5,-136(s0)
	slli	a5,a5,20
	add	a5,a4,a5
	sw	a5,-1824(s0)
	lw	a5,-136(s0)
	srli	a4,a5,12
	lw	a5,-132(s0)
	slli	a5,a5,20
	add	a5,a4,a5
	sw	a5,-1820(s0)
	lw	a4,-1824(s0)
	lw	a5,-1820(s0)
	sw	a4,-272(s0)
	sw	a5,-268(s0)
	.loc 3 162 17
	lw	a4,-144(s0)
	lw	a5,-304(s0)
	xor	a5,a4,a5
	sw	a5,-1832(s0)
	lw	a4,-140(s0)
	lw	a5,-300(s0)
	xor	a5,a4,a5
	sw	a5,-1828(s0)
	lw	a4,-1832(s0)
	lw	a5,-1828(s0)
	sw	a4,-144(s0)
	sw	a5,-140(s0)
	.loc 3 163 17
	lw	a5,-140(s0)
	srli	a4,a5,29
	lw	a5,-144(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	sw	a5,-1840(s0)
	lw	a5,-144(s0)
	srli	a4,a5,29
	lw	a5,-140(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	sw	a5,-1836(s0)
	lw	a4,-1840(s0)
	lw	a5,-1836(s0)
	sw	a4,-280(s0)
	sw	a5,-276(s0)
	.loc 3 164 17
	lw	a4,-192(s0)
	lw	a5,-312(s0)
	xor	a5,a4,a5
	sw	a5,-1848(s0)
	lw	a4,-188(s0)
	lw	a5,-308(s0)
	xor	a5,a4,a5
	sw	a5,-1844(s0)
	lw	a4,-1848(s0)
	lw	a5,-1844(s0)
	sw	a4,-192(s0)
	sw	a5,-188(s0)
	.loc 3 165 17
	lw	a5,-188(s0)
	slli	a4,a5,13
	lw	a5,-192(s0)
	srli	a5,a5,19
	add	a5,a4,a5
	sw	a5,-1856(s0)
	lw	a5,-192(s0)
	slli	a4,a5,13
	lw	a5,-188(s0)
	srli	a5,a5,19
	add	a5,a4,a5
	sw	a5,-1852(s0)
	lw	a4,-1856(s0)
	lw	a5,-1852(s0)
	sw	a4,-288(s0)
	sw	a5,-284(s0)
	.loc 3 166 17
	lw	a4,-240(s0)
	lw	a5,-320(s0)
	xor	a5,a4,a5
	sw	a5,-1864(s0)
	lw	a4,-236(s0)
	lw	a5,-316(s0)
	xor	a5,a4,a5
	sw	a5,-1860(s0)
	lw	a4,-1864(s0)
	lw	a5,-1860(s0)
	sw	a4,-240(s0)
	sw	a5,-236(s0)
	.loc 3 167 17
	lw	a5,-236(s0)
	slli	a4,a5,29
	lw	a5,-240(s0)
	srli	a5,a5,3
	add	a5,a4,a5
	sw	a5,-1872(s0)
	lw	a5,-240(s0)
	slli	a4,a5,29
	lw	a5,-236(s0)
	srli	a5,a5,3
	add	a5,a4,a5
	sw	a5,-1868(s0)
	lw	a4,-1872(s0)
	lw	a5,-1868(s0)
	sw	a4,-296(s0)
	sw	a5,-292(s0)
	.loc 3 168 26
	lw	a5,-272(s0)
	not	a5,a5
	sw	a5,-800(s0)
	lw	a5,-268(s0)
	not	a5,a5
	sw	a5,-796(s0)
	.loc 3 168 31
	lw	a5,-280(s0)
	lw	a3,-800(s0)
	lw	a4,-796(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-808(s0)
	lw	a5,-276(s0)
	and	a5,a5,a4
	sw	a5,-804(s0)
	.loc 3 168 17
	lw	a5,-264(s0)
	lw	a3,-808(s0)
	lw	a4,-804(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1880(s0)
	lw	a5,-260(s0)
	xor	a5,a5,a4
	sw	a5,-1876(s0)
	lw	a4,-1880(s0)
	lw	a5,-1876(s0)
	sw	a4,-384(s0)
	sw	a5,-380(s0)
	.loc 3 169 26
	lw	a5,-280(s0)
	not	a5,a5
	sw	a5,-816(s0)
	lw	a5,-276(s0)
	not	a5,a5
	sw	a5,-812(s0)
	.loc 3 169 31
	lw	a5,-288(s0)
	lw	a3,-816(s0)
	lw	a4,-812(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-824(s0)
	lw	a5,-284(s0)
	and	a5,a5,a4
	sw	a5,-820(s0)
	.loc 3 169 17
	lw	a5,-272(s0)
	lw	a3,-824(s0)
	lw	a4,-820(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1888(s0)
	lw	a5,-268(s0)
	xor	a5,a5,a4
	sw	a5,-1884(s0)
	lw	a4,-1888(s0)
	lw	a5,-1884(s0)
	sw	a4,-392(s0)
	sw	a5,-388(s0)
	.loc 3 170 26
	lw	a5,-288(s0)
	not	a5,a5
	sw	a5,-832(s0)
	lw	a5,-284(s0)
	not	a5,a5
	sw	a5,-828(s0)
	.loc 3 170 31
	lw	a5,-296(s0)
	lw	a3,-832(s0)
	lw	a4,-828(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-840(s0)
	lw	a5,-292(s0)
	and	a5,a5,a4
	sw	a5,-836(s0)
	.loc 3 170 17
	lw	a5,-280(s0)
	lw	a3,-840(s0)
	lw	a4,-836(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1896(s0)
	lw	a5,-276(s0)
	xor	a5,a5,a4
	sw	a5,-1892(s0)
	lw	a4,-1896(s0)
	lw	a5,-1892(s0)
	sw	a4,-400(s0)
	sw	a5,-396(s0)
	.loc 3 171 26
	lw	a5,-296(s0)
	not	a5,a5
	sw	a5,-848(s0)
	lw	a5,-292(s0)
	not	a5,a5
	sw	a5,-844(s0)
	.loc 3 171 31
	lw	a5,-264(s0)
	lw	a3,-848(s0)
	lw	a4,-844(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-856(s0)
	lw	a5,-260(s0)
	and	a5,a5,a4
	sw	a5,-852(s0)
	.loc 3 171 17
	lw	a5,-288(s0)
	lw	a3,-856(s0)
	lw	a4,-852(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1904(s0)
	lw	a5,-284(s0)
	xor	a5,a5,a4
	sw	a5,-1900(s0)
	lw	a4,-1904(s0)
	lw	a5,-1900(s0)
	sw	a4,-408(s0)
	sw	a5,-404(s0)
	.loc 3 172 26
	lw	a5,-264(s0)
	not	a5,a5
	sw	a5,-864(s0)
	lw	a5,-260(s0)
	not	a5,a5
	sw	a5,-860(s0)
	.loc 3 172 31
	lw	a5,-272(s0)
	lw	a3,-864(s0)
	lw	a4,-860(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-872(s0)
	lw	a5,-268(s0)
	and	a5,a5,a4
	sw	a5,-868(s0)
	.loc 3 172 17
	lw	a5,-296(s0)
	lw	a3,-872(s0)
	lw	a4,-868(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1912(s0)
	lw	a5,-292(s0)
	xor	a5,a5,a4
	sw	a5,-1908(s0)
	lw	a4,-1912(s0)
	lw	a5,-1908(s0)
	sw	a4,-416(s0)
	sw	a5,-412(s0)
	.loc 3 174 17
	lw	a4,-72(s0)
	lw	a5,-312(s0)
	xor	a5,a4,a5
	sw	a5,-1920(s0)
	lw	a4,-68(s0)
	lw	a5,-308(s0)
	xor	a5,a4,a5
	sw	a5,-1916(s0)
	lw	a4,-1920(s0)
	lw	a5,-1916(s0)
	sw	a4,-72(s0)
	sw	a5,-68(s0)
	.loc 3 175 17
	lw	a5,-68(s0)
	srli	a4,a5,31
	lw	a5,-72(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sw	a5,-1928(s0)
	lw	a5,-72(s0)
	srli	a4,a5,31
	lw	a5,-68(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sw	a5,-1924(s0)
	lw	a4,-1928(s0)
	lw	a5,-1924(s0)
	sw	a4,-264(s0)
	sw	a5,-260(s0)
	.loc 3 176 17
	lw	a4,-120(s0)
	lw	a5,-320(s0)
	xor	a5,a4,a5
	sw	a5,-1936(s0)
	lw	a4,-116(s0)
	lw	a5,-316(s0)
	xor	a5,a4,a5
	sw	a5,-1932(s0)
	lw	a4,-1936(s0)
	lw	a5,-1932(s0)
	sw	a4,-120(s0)
	sw	a5,-116(s0)
	.loc 3 177 17
	lw	a5,-116(s0)
	srli	a4,a5,26
	lw	a5,-120(s0)
	slli	a5,a5,6
	add	a5,a4,a5
	sw	a5,-1944(s0)
	lw	a5,-120(s0)
	srli	a4,a5,26
	lw	a5,-116(s0)
	slli	a5,a5,6
	add	a5,a4,a5
	sw	a5,-1940(s0)
	lw	a4,-1944(s0)
	lw	a5,-1940(s0)
	sw	a4,-272(s0)
	sw	a5,-268(s0)
	.loc 3 178 17
	lw	a4,-168(s0)
	lw	a5,-328(s0)
	xor	a5,a4,a5
	sw	a5,-1952(s0)
	lw	a4,-164(s0)
	lw	a5,-324(s0)
	xor	a5,a4,a5
	sw	a5,-1948(s0)
	lw	a4,-1952(s0)
	lw	a5,-1948(s0)
	sw	a4,-168(s0)
	sw	a5,-164(s0)
	.loc 3 179 17
	lw	a5,-164(s0)
	srli	a4,a5,7
	lw	a5,-168(s0)
	slli	a5,a5,25
	add	a5,a4,a5
	sw	a5,-1960(s0)
	lw	a5,-168(s0)
	srli	a4,a5,7
	lw	a5,-164(s0)
	slli	a5,a5,25
	add	a5,a4,a5
	sw	a5,-1956(s0)
	lw	a4,-1960(s0)
	lw	a5,-1956(s0)
	sw	a4,-280(s0)
	sw	a5,-276(s0)
	.loc 3 180 17
	lw	a4,-216(s0)
	lw	a5,-336(s0)
	xor	a5,a4,a5
	sw	a5,-1968(s0)
	lw	a4,-212(s0)
	lw	a5,-332(s0)
	xor	a5,a4,a5
	sw	a5,-1964(s0)
	lw	a4,-1968(s0)
	lw	a5,-1964(s0)
	sw	a4,-216(s0)
	sw	a5,-212(s0)
	.loc 3 181 17
	lw	a5,-212(s0)
	srli	a4,a5,24
	lw	a5,-216(s0)
	slli	a5,a5,8
	add	a5,a4,a5
	sw	a5,-1976(s0)
	lw	a5,-216(s0)
	srli	a4,a5,24
	lw	a5,-212(s0)
	slli	a5,a5,8
	add	a5,a4,a5
	sw	a5,-1972(s0)
	lw	a4,-1976(s0)
	lw	a5,-1972(s0)
	sw	a4,-288(s0)
	sw	a5,-284(s0)
	.loc 3 182 17
	lw	a4,-224(s0)
	lw	a5,-304(s0)
	xor	a5,a4,a5
	sw	a5,-1984(s0)
	lw	a4,-220(s0)
	lw	a5,-300(s0)
	xor	a5,a4,a5
	sw	a5,-1980(s0)
	lw	a4,-1984(s0)
	lw	a5,-1980(s0)
	sw	a4,-224(s0)
	sw	a5,-220(s0)
	.loc 3 183 17
	lw	a5,-220(s0)
	srli	a4,a5,14
	lw	a5,-224(s0)
	slli	a5,a5,18
	add	a5,a4,a5
	sw	a5,-1992(s0)
	lw	a5,-224(s0)
	srli	a4,a5,14
	lw	a5,-220(s0)
	slli	a5,a5,18
	add	a5,a4,a5
	sw	a5,-1988(s0)
	lw	a4,-1992(s0)
	lw	a5,-1988(s0)
	sw	a4,-296(s0)
	sw	a5,-292(s0)
	.loc 3 184 26
	lw	a5,-272(s0)
	not	a5,a5
	sw	a5,-880(s0)
	lw	a5,-268(s0)
	not	a5,a5
	sw	a5,-876(s0)
	.loc 3 184 31
	lw	a5,-280(s0)
	lw	a3,-880(s0)
	lw	a4,-876(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-888(s0)
	lw	a5,-276(s0)
	and	a5,a5,a4
	sw	a5,-884(s0)
	.loc 3 184 17
	lw	a5,-264(s0)
	lw	a3,-888(s0)
	lw	a4,-884(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-2000(s0)
	lw	a5,-260(s0)
	xor	a5,a5,a4
	sw	a5,-1996(s0)
	lw	a4,-2000(s0)
	lw	a5,-1996(s0)
	sw	a4,-424(s0)
	sw	a5,-420(s0)
	.loc 3 185 26
	lw	a5,-280(s0)
	not	a5,a5
	sw	a5,-896(s0)
	lw	a5,-276(s0)
	not	a5,a5
	sw	a5,-892(s0)
	.loc 3 185 31
	lw	a5,-288(s0)
	lw	a3,-896(s0)
	lw	a4,-892(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-904(s0)
	lw	a5,-284(s0)
	and	a5,a5,a4
	sw	a5,-900(s0)
	.loc 3 185 17
	lw	a5,-272(s0)
	lw	a3,-904(s0)
	lw	a4,-900(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-2008(s0)
	lw	a5,-268(s0)
	xor	a5,a5,a4
	sw	a5,-2004(s0)
	lw	a4,-2008(s0)
	lw	a5,-2004(s0)
	sw	a4,-432(s0)
	sw	a5,-428(s0)
	.loc 3 186 26
	lw	a5,-288(s0)
	not	a5,a5
	sw	a5,-912(s0)
	lw	a5,-284(s0)
	not	a5,a5
	sw	a5,-908(s0)
	.loc 3 186 31
	lw	a5,-296(s0)
	lw	a3,-912(s0)
	lw	a4,-908(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-920(s0)
	lw	a5,-292(s0)
	and	a5,a5,a4
	sw	a5,-916(s0)
	.loc 3 186 17
	lw	a5,-280(s0)
	lw	a3,-920(s0)
	lw	a4,-916(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-2016(s0)
	lw	a5,-276(s0)
	xor	a5,a5,a4
	sw	a5,-2012(s0)
	lw	a4,-2016(s0)
	lw	a5,-2012(s0)
	sw	a4,-440(s0)
	sw	a5,-436(s0)
	.loc 3 187 26
	lw	a5,-296(s0)
	not	a5,a5
	sw	a5,-928(s0)
	lw	a5,-292(s0)
	not	a5,a5
	sw	a5,-924(s0)
	.loc 3 187 31
	lw	a5,-264(s0)
	lw	a3,-928(s0)
	lw	a4,-924(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-936(s0)
	lw	a5,-260(s0)
	and	a5,a5,a4
	sw	a5,-932(s0)
	.loc 3 187 17
	lw	a5,-288(s0)
	lw	a3,-936(s0)
	lw	a4,-932(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-2024(s0)
	lw	a5,-284(s0)
	xor	a5,a5,a4
	sw	a5,-2020(s0)
	lw	a4,-2024(s0)
	lw	a5,-2020(s0)
	sw	a4,-448(s0)
	sw	a5,-444(s0)
	.loc 3 188 26
	lw	a5,-264(s0)
	not	a5,a5
	sw	a5,-944(s0)
	lw	a5,-260(s0)
	not	a5,a5
	sw	a5,-940(s0)
	.loc 3 188 31
	lw	a5,-272(s0)
	lw	a3,-944(s0)
	lw	a4,-940(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-952(s0)
	lw	a5,-268(s0)
	and	a5,a5,a4
	sw	a5,-948(s0)
	.loc 3 188 17
	lw	a5,-296(s0)
	lw	a3,-952(s0)
	lw	a4,-948(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-2032(s0)
	lw	a5,-292(s0)
	xor	a5,a5,a4
	sw	a5,-2028(s0)
	lw	a4,-2032(s0)
	lw	a5,-2028(s0)
	sw	a4,-456(s0)
	sw	a5,-452(s0)
	.loc 3 190 17
	lw	a4,-96(s0)
	lw	a5,-336(s0)
	xor	a5,a4,a5
	sw	a5,-2040(s0)
	lw	a4,-92(s0)
	lw	a5,-332(s0)
	xor	a5,a4,a5
	sw	a5,-2036(s0)
	lw	a4,-2040(s0)
	lw	a5,-2036(s0)
	sw	a4,-96(s0)
	sw	a5,-92(s0)
	.loc 3 191 17
	lw	a5,-92(s0)
	srli	a4,a5,5
	lw	a5,-96(s0)
	slli	a5,a5,27
	add	a5,a4,a5
	sw	a5,-2048(s0)
	lw	a5,-96(s0)
	srli	a4,a5,5
	lw	a5,-92(s0)
	slli	a5,a5,27
	add	a5,a4,a5
	sw	a5,-2044(s0)
	lw	a4,-2048(s0)
	lw	a5,-2044(s0)
	sw	a4,-264(s0)
	sw	a5,-260(s0)
	.loc 3 192 17
	lw	a4,-104(s0)
	lw	a5,-304(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-8
	sw	a5,0(a4)
	lw	a4,-100(s0)
	lw	a5,-300(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-4
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-8
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-104(s0)
	sw	a5,-100(s0)
	.loc 3 193 17
	lw	a5,-100(s0)
	slli	a4,a5,4
	lw	a5,-104(s0)
	srli	a5,a5,28
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-16
	sw	a5,0(a4)
	lw	a5,-104(s0)
	slli	a4,a5,4
	lw	a5,-100(s0)
	srli	a5,a5,28
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-12
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-16
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-272(s0)
	sw	a5,-268(s0)
	.loc 3 194 17
	lw	a4,-152(s0)
	lw	a5,-312(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-24
	sw	a5,0(a4)
	lw	a4,-148(s0)
	lw	a5,-308(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-20
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-24
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-152(s0)
	sw	a5,-148(s0)
	.loc 3 195 17
	lw	a5,-148(s0)
	srli	a4,a5,22
	lw	a5,-152(s0)
	slli	a5,a5,10
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-32
	sw	a5,0(a4)
	lw	a5,-152(s0)
	srli	a4,a5,22
	lw	a5,-148(s0)
	slli	a5,a5,10
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-28
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-32
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-280(s0)
	sw	a5,-276(s0)
	.loc 3 196 17
	lw	a4,-200(s0)
	lw	a5,-320(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-40
	sw	a5,0(a4)
	lw	a4,-196(s0)
	lw	a5,-316(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-36
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-40
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-200(s0)
	sw	a5,-196(s0)
	.loc 3 197 17
	lw	a5,-196(s0)
	srli	a4,a5,17
	lw	a5,-200(s0)
	slli	a5,a5,15
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-48
	sw	a5,0(a4)
	lw	a5,-200(s0)
	srli	a4,a5,17
	lw	a5,-196(s0)
	slli	a5,a5,15
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-44
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-48
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-288(s0)
	sw	a5,-284(s0)
	.loc 3 198 17
	lw	a4,-248(s0)
	lw	a5,-328(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-56
	sw	a5,0(a4)
	lw	a4,-244(s0)
	lw	a5,-324(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-52
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-56
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-248(s0)
	sw	a5,-244(s0)
	.loc 3 199 17
	lw	a5,-244(s0)
	slli	a4,a5,24
	lw	a5,-248(s0)
	srli	a5,a5,8
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-64
	sw	a5,0(a4)
	lw	a5,-248(s0)
	slli	a4,a5,24
	lw	a5,-244(s0)
	srli	a5,a5,8
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-60
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-64
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-296(s0)
	sw	a5,-292(s0)
	.loc 3 200 26
	lw	a5,-272(s0)
	not	a5,a5
	sw	a5,-960(s0)
	lw	a5,-268(s0)
	not	a5,a5
	sw	a5,-956(s0)
	.loc 3 200 31
	lw	a5,-280(s0)
	lw	a3,-960(s0)
	lw	a4,-956(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-968(s0)
	lw	a5,-276(s0)
	and	a5,a5,a4
	sw	a5,-964(s0)
	.loc 3 200 17
	lw	a5,-264(s0)
	lw	a3,-968(s0)
	lw	a4,-964(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-72
	sw	a5,0(a0)
	lw	a5,-260(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-68
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-72
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-464(s0)
	sw	a5,-460(s0)
	.loc 3 201 26
	lw	a5,-280(s0)
	not	a5,a5
	sw	a5,-976(s0)
	lw	a5,-276(s0)
	not	a5,a5
	sw	a5,-972(s0)
	.loc 3 201 31
	lw	a5,-288(s0)
	lw	a3,-976(s0)
	lw	a4,-972(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-984(s0)
	lw	a5,-284(s0)
	and	a5,a5,a4
	sw	a5,-980(s0)
	.loc 3 201 17
	lw	a5,-272(s0)
	lw	a3,-984(s0)
	lw	a4,-980(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-80
	sw	a5,0(a0)
	lw	a5,-268(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-76
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-80
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-472(s0)
	sw	a5,-468(s0)
	.loc 3 202 26
	lw	a5,-288(s0)
	not	a5,a5
	sw	a5,-992(s0)
	lw	a5,-284(s0)
	not	a5,a5
	sw	a5,-988(s0)
	.loc 3 202 31
	lw	a5,-296(s0)
	lw	a3,-992(s0)
	lw	a4,-988(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1000(s0)
	lw	a5,-292(s0)
	and	a5,a5,a4
	sw	a5,-996(s0)
	.loc 3 202 17
	lw	a5,-280(s0)
	lw	a3,-1000(s0)
	lw	a4,-996(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-88
	sw	a5,0(a0)
	lw	a5,-276(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-84
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-88
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-480(s0)
	sw	a5,-476(s0)
	.loc 3 203 26
	lw	a5,-296(s0)
	not	a5,a5
	sw	a5,-1008(s0)
	lw	a5,-292(s0)
	not	a5,a5
	sw	a5,-1004(s0)
	.loc 3 203 31
	lw	a5,-264(s0)
	lw	a3,-1008(s0)
	lw	a4,-1004(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1016(s0)
	lw	a5,-260(s0)
	and	a5,a5,a4
	sw	a5,-1012(s0)
	.loc 3 203 17
	lw	a5,-288(s0)
	lw	a3,-1016(s0)
	lw	a4,-1012(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-96
	sw	a5,0(a0)
	lw	a5,-284(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-92
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-96
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-488(s0)
	sw	a5,-484(s0)
	.loc 3 204 26
	lw	a5,-264(s0)
	not	a5,a5
	sw	a5,-1024(s0)
	lw	a5,-260(s0)
	not	a5,a5
	sw	a5,-1020(s0)
	.loc 3 204 31
	lw	a5,-272(s0)
	lw	a3,-1024(s0)
	lw	a4,-1020(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1032(s0)
	lw	a5,-268(s0)
	and	a5,a5,a4
	sw	a5,-1028(s0)
	.loc 3 204 17
	lw	a5,-296(s0)
	lw	a3,-1032(s0)
	lw	a4,-1028(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-104
	sw	a5,0(a0)
	lw	a5,-292(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-100
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-104
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-496(s0)
	sw	a5,-492(s0)
	.loc 3 206 17
	lw	a4,-80(s0)
	lw	a5,-320(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-112
	sw	a5,0(a4)
	lw	a4,-76(s0)
	lw	a5,-316(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-108
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-112
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-80(s0)
	sw	a5,-76(s0)
	.loc 3 207 17
	lw	a5,-76(s0)
	slli	a4,a5,30
	lw	a5,-80(s0)
	srli	a5,a5,2
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-120
	sw	a5,0(a4)
	lw	a5,-80(s0)
	slli	a4,a5,30
	lw	a5,-76(s0)
	srli	a5,a5,2
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-116
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-120
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-264(s0)
	sw	a5,-260(s0)
	.loc 3 208 17
	lw	a4,-128(s0)
	lw	a5,-328(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-128
	sw	a5,0(a4)
	lw	a4,-124(s0)
	lw	a5,-324(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-124
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-128
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-128(s0)
	sw	a5,-124(s0)
	.loc 3 209 17
	lw	a5,-124(s0)
	slli	a4,a5,23
	lw	a5,-128(s0)
	srli	a5,a5,9
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-136
	sw	a5,0(a4)
	lw	a5,-128(s0)
	slli	a4,a5,23
	lw	a5,-124(s0)
	srli	a5,a5,9
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-132
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-136
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-272(s0)
	sw	a5,-268(s0)
	.loc 3 210 17
	lw	a4,-176(s0)
	lw	a5,-336(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-144
	sw	a5,0(a4)
	lw	a4,-172(s0)
	lw	a5,-332(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-140
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-144
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-176(s0)
	sw	a5,-172(s0)
	.loc 3 211 17
	lw	a5,-172(s0)
	slli	a4,a5,7
	lw	a5,-176(s0)
	srli	a5,a5,25
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-152
	sw	a5,0(a4)
	lw	a5,-176(s0)
	slli	a4,a5,7
	lw	a5,-172(s0)
	srli	a5,a5,25
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-148
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-152
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-280(s0)
	sw	a5,-276(s0)
	.loc 3 212 17
	lw	a4,-184(s0)
	lw	a5,-304(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-160
	sw	a5,0(a4)
	lw	a4,-180(s0)
	lw	a5,-300(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-156
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-160
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-184(s0)
	sw	a5,-180(s0)
	.loc 3 213 17
	lw	a5,-180(s0)
	slli	a4,a5,9
	lw	a5,-184(s0)
	srli	a5,a5,23
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-168
	sw	a5,0(a4)
	lw	a5,-184(s0)
	slli	a4,a5,9
	lw	a5,-180(s0)
	srli	a5,a5,23
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-164
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-168
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-288(s0)
	sw	a5,-284(s0)
	.loc 3 214 17
	lw	a4,-232(s0)
	lw	a5,-312(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-176
	sw	a5,0(a4)
	lw	a4,-228(s0)
	lw	a5,-308(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-172
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-176
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-232(s0)
	sw	a5,-228(s0)
	.loc 3 215 17
	lw	a5,-228(s0)
	srli	a4,a5,30
	lw	a5,-232(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-184
	sw	a5,0(a4)
	lw	a5,-232(s0)
	srli	a4,a5,30
	lw	a5,-228(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-180
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-184
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-296(s0)
	sw	a5,-292(s0)
	.loc 3 216 26
	lw	a5,-272(s0)
	not	a5,a5
	sw	a5,-1040(s0)
	lw	a5,-268(s0)
	not	a5,a5
	sw	a5,-1036(s0)
	.loc 3 216 31
	lw	a5,-280(s0)
	lw	a3,-1040(s0)
	lw	a4,-1036(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1048(s0)
	lw	a5,-276(s0)
	and	a5,a5,a4
	sw	a5,-1044(s0)
	.loc 3 216 17
	lw	a5,-264(s0)
	lw	a3,-1048(s0)
	lw	a4,-1044(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-192
	sw	a5,0(a0)
	lw	a5,-260(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-188
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-192
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-504(s0)
	sw	a5,-500(s0)
	.loc 3 217 26
	lw	a5,-280(s0)
	not	a5,a5
	sw	a5,-1056(s0)
	lw	a5,-276(s0)
	not	a5,a5
	sw	a5,-1052(s0)
	.loc 3 217 31
	lw	a5,-288(s0)
	lw	a3,-1056(s0)
	lw	a4,-1052(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1064(s0)
	lw	a5,-284(s0)
	and	a5,a5,a4
	sw	a5,-1060(s0)
	.loc 3 217 17
	lw	a5,-272(s0)
	lw	a3,-1064(s0)
	lw	a4,-1060(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-200
	sw	a5,0(a0)
	lw	a5,-268(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-196
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-200
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-512(s0)
	sw	a5,-508(s0)
	.loc 3 218 26
	lw	a5,-288(s0)
	not	a5,a5
	sw	a5,-1072(s0)
	lw	a5,-284(s0)
	not	a5,a5
	sw	a5,-1068(s0)
	.loc 3 218 31
	lw	a5,-296(s0)
	lw	a3,-1072(s0)
	lw	a4,-1068(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1080(s0)
	lw	a5,-292(s0)
	and	a5,a5,a4
	sw	a5,-1076(s0)
	.loc 3 218 17
	lw	a5,-280(s0)
	lw	a3,-1080(s0)
	lw	a4,-1076(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-208
	sw	a5,0(a0)
	lw	a5,-276(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-204
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-208
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-520(s0)
	sw	a5,-516(s0)
	.loc 3 219 26
	lw	a5,-296(s0)
	not	a5,a5
	sw	a5,-1088(s0)
	lw	a5,-292(s0)
	not	a5,a5
	sw	a5,-1084(s0)
	.loc 3 219 31
	lw	a5,-264(s0)
	lw	a3,-1088(s0)
	lw	a4,-1084(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1096(s0)
	lw	a5,-260(s0)
	and	a5,a5,a4
	sw	a5,-1092(s0)
	.loc 3 219 17
	lw	a5,-288(s0)
	lw	a3,-1096(s0)
	lw	a4,-1092(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-216
	sw	a5,0(a0)
	lw	a5,-284(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-212
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-216
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-528(s0)
	sw	a5,-524(s0)
	.loc 3 220 26
	lw	a5,-264(s0)
	not	a5,a5
	sw	a5,-1104(s0)
	lw	a5,-260(s0)
	not	a5,a5
	sw	a5,-1100(s0)
	.loc 3 220 31
	lw	a5,-272(s0)
	lw	a3,-1104(s0)
	lw	a4,-1100(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1112(s0)
	lw	a5,-268(s0)
	and	a5,a5,a4
	sw	a5,-1108(s0)
	.loc 3 220 17
	lw	a5,-296(s0)
	lw	a3,-1112(s0)
	lw	a4,-1108(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-224
	sw	a5,0(a0)
	lw	a5,-292(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-220
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-224
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-536(s0)
	sw	a5,-532(s0)
	.loc 3 223 22
	lw	a4,-344(s0)
	lw	a5,-384(s0)
	xor	a5,a4,a5
	sw	a5,-1120(s0)
	lw	a4,-340(s0)
	lw	a5,-380(s0)
	xor	a5,a4,a5
	sw	a5,-1116(s0)
	.loc 3 223 26
	lw	a5,-424(s0)
	lw	a3,-1120(s0)
	lw	a4,-1116(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1128(s0)
	lw	a5,-420(s0)
	xor	a5,a5,a4
	sw	a5,-1124(s0)
	.loc 3 223 30
	lw	a5,-464(s0)
	lw	a3,-1128(s0)
	lw	a4,-1124(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1136(s0)
	lw	a5,-460(s0)
	xor	a5,a5,a4
	sw	a5,-1132(s0)
	.loc 3 223 17
	lw	a5,-504(s0)
	lw	a3,-1136(s0)
	lw	a4,-1132(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-232
	sw	a5,0(a0)
	lw	a5,-500(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-228
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-232
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-264(s0)
	sw	a5,-260(s0)
	.loc 3 224 22
	lw	a4,-352(s0)
	lw	a5,-392(s0)
	xor	a5,a4,a5
	sw	a5,-1144(s0)
	lw	a4,-348(s0)
	lw	a5,-388(s0)
	xor	a5,a4,a5
	sw	a5,-1140(s0)
	.loc 3 224 26
	lw	a5,-432(s0)
	lw	a3,-1144(s0)
	lw	a4,-1140(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1152(s0)
	lw	a5,-428(s0)
	xor	a5,a5,a4
	sw	a5,-1148(s0)
	.loc 3 224 30
	lw	a5,-472(s0)
	lw	a3,-1152(s0)
	lw	a4,-1148(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1160(s0)
	lw	a5,-468(s0)
	xor	a5,a5,a4
	sw	a5,-1156(s0)
	.loc 3 224 17
	lw	a5,-512(s0)
	lw	a3,-1160(s0)
	lw	a4,-1156(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-240
	sw	a5,0(a0)
	lw	a5,-508(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-236
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-240
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-272(s0)
	sw	a5,-268(s0)
	.loc 3 225 22
	lw	a4,-360(s0)
	lw	a5,-400(s0)
	xor	a5,a4,a5
	sw	a5,-1168(s0)
	lw	a4,-356(s0)
	lw	a5,-396(s0)
	xor	a5,a4,a5
	sw	a5,-1164(s0)
	.loc 3 225 26
	lw	a5,-440(s0)
	lw	a3,-1168(s0)
	lw	a4,-1164(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1176(s0)
	lw	a5,-436(s0)
	xor	a5,a5,a4
	sw	a5,-1172(s0)
	.loc 3 225 30
	lw	a5,-480(s0)
	lw	a3,-1176(s0)
	lw	a4,-1172(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1184(s0)
	lw	a5,-476(s0)
	xor	a5,a5,a4
	sw	a5,-1180(s0)
	.loc 3 225 17
	lw	a5,-520(s0)
	lw	a3,-1184(s0)
	lw	a4,-1180(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-248
	sw	a5,0(a0)
	lw	a5,-516(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-244
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-248
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-280(s0)
	sw	a5,-276(s0)
	.loc 3 226 22
	lw	a4,-368(s0)
	lw	a5,-408(s0)
	xor	a5,a4,a5
	sw	a5,-1192(s0)
	lw	a4,-364(s0)
	lw	a5,-404(s0)
	xor	a5,a4,a5
	sw	a5,-1188(s0)
	.loc 3 226 26
	lw	a5,-448(s0)
	lw	a3,-1192(s0)
	lw	a4,-1188(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1200(s0)
	lw	a5,-444(s0)
	xor	a5,a5,a4
	sw	a5,-1196(s0)
	.loc 3 226 30
	lw	a5,-488(s0)
	lw	a3,-1200(s0)
	lw	a4,-1196(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1208(s0)
	lw	a5,-484(s0)
	xor	a5,a5,a4
	sw	a5,-1204(s0)
	.loc 3 226 17
	lw	a5,-528(s0)
	lw	a3,-1208(s0)
	lw	a4,-1204(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-256
	sw	a5,0(a0)
	lw	a5,-524(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-252
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-256
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-288(s0)
	sw	a5,-284(s0)
	.loc 3 227 22
	lw	a4,-376(s0)
	lw	a5,-416(s0)
	xor	a5,a4,a5
	sw	a5,-1216(s0)
	lw	a4,-372(s0)
	lw	a5,-412(s0)
	xor	a5,a4,a5
	sw	a5,-1212(s0)
	.loc 3 227 26
	lw	a5,-456(s0)
	lw	a3,-1216(s0)
	lw	a4,-1212(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1224(s0)
	lw	a5,-452(s0)
	xor	a5,a5,a4
	sw	a5,-1220(s0)
	.loc 3 227 30
	lw	a5,-496(s0)
	lw	a3,-1224(s0)
	lw	a4,-1220(s0)
	mv	a0,a3
	xor	a5,a5,a0
	sw	a5,-1232(s0)
	lw	a5,-492(s0)
	xor	a5,a5,a4
	sw	a5,-1228(s0)
	.loc 3 227 17
	lw	a5,-536(s0)
	lw	a3,-1232(s0)
	lw	a4,-1228(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-264
	sw	a5,0(a0)
	lw	a5,-532(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-260
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-264
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-296(s0)
	sw	a5,-292(s0)
	.loc 3 230 34
	lw	a5,-268(s0)
	srli	a4,a5,31
	lw	a5,-272(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sw	a5,-1240(s0)
	lw	a5,-272(s0)
	srli	a4,a5,31
	lw	a5,-268(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sw	a5,-1236(s0)
	.loc 3 230 16
	lw	a5,-296(s0)
	lw	a3,-1240(s0)
	lw	a4,-1236(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-272
	sw	a5,0(a0)
	lw	a5,-292(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-268
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-272
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-304(s0)
	sw	a5,-300(s0)
	.loc 3 231 34
	lw	a5,-276(s0)
	srli	a4,a5,31
	lw	a5,-280(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sw	a5,-1248(s0)
	lw	a5,-280(s0)
	srli	a4,a5,31
	lw	a5,-276(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sw	a5,-1244(s0)
	.loc 3 231 16
	lw	a5,-264(s0)
	lw	a3,-1248(s0)
	lw	a4,-1244(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-280
	sw	a5,0(a0)
	lw	a5,-260(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-276
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-280
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-312(s0)
	sw	a5,-308(s0)
	.loc 3 232 34
	lw	a5,-284(s0)
	srli	a4,a5,31
	lw	a5,-288(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sw	a5,-1256(s0)
	lw	a5,-288(s0)
	srli	a4,a5,31
	lw	a5,-284(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sw	a5,-1252(s0)
	.loc 3 232 16
	lw	a5,-272(s0)
	lw	a3,-1256(s0)
	lw	a4,-1252(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-288
	sw	a5,0(a0)
	lw	a5,-268(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-284
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-288
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-320(s0)
	sw	a5,-316(s0)
	.loc 3 233 34
	lw	a5,-292(s0)
	srli	a4,a5,31
	lw	a5,-296(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sw	a5,-1264(s0)
	lw	a5,-296(s0)
	srli	a4,a5,31
	lw	a5,-292(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sw	a5,-1260(s0)
	.loc 3 233 16
	lw	a5,-280(s0)
	lw	a3,-1264(s0)
	lw	a4,-1260(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-296
	sw	a5,0(a0)
	lw	a5,-276(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-292
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-296
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-328(s0)
	sw	a5,-324(s0)
	.loc 3 234 34
	lw	a5,-260(s0)
	srli	a4,a5,31
	lw	a5,-264(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sw	a5,-1272(s0)
	lw	a5,-264(s0)
	srli	a4,a5,31
	lw	a5,-260(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sw	a5,-1268(s0)
	.loc 3 234 16
	lw	a5,-288(s0)
	lw	a3,-1272(s0)
	lw	a4,-1268(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-304
	sw	a5,0(a0)
	lw	a5,-284(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-300
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-304
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-336(s0)
	sw	a5,-332(s0)
	.loc 3 236 17
	lw	a4,-344(s0)
	lw	a5,-304(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-312
	sw	a5,0(a4)
	lw	a4,-340(s0)
	lw	a5,-300(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-308
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-312
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-344(s0)
	sw	a5,-340(s0)
	.loc 3 237 17
	lw	a4,-344(s0)
	lw	a5,-340(s0)
	sw	a4,-264(s0)
	sw	a5,-260(s0)
	.loc 3 238 17
	lw	a4,-392(s0)
	lw	a5,-312(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-320
	sw	a5,0(a4)
	lw	a4,-388(s0)
	lw	a5,-308(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-316
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-320
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-392(s0)
	sw	a5,-388(s0)
	.loc 3 239 17
	lw	a5,-388(s0)
	slli	a4,a5,12
	lw	a5,-392(s0)
	srli	a5,a5,20
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-328
	sw	a5,0(a4)
	lw	a5,-392(s0)
	slli	a4,a5,12
	lw	a5,-388(s0)
	srli	a5,a5,20
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-324
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-328
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-272(s0)
	sw	a5,-268(s0)
	.loc 3 240 17
	lw	a4,-440(s0)
	lw	a5,-320(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-336
	sw	a5,0(a4)
	lw	a4,-436(s0)
	lw	a5,-316(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-332
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-336
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-440(s0)
	sw	a5,-436(s0)
	.loc 3 241 17
	lw	a5,-436(s0)
	slli	a4,a5,11
	lw	a5,-440(s0)
	srli	a5,a5,21
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-344
	sw	a5,0(a4)
	lw	a5,-440(s0)
	slli	a4,a5,11
	lw	a5,-436(s0)
	srli	a5,a5,21
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-340
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-344
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-280(s0)
	sw	a5,-276(s0)
	.loc 3 242 17
	lw	a4,-488(s0)
	lw	a5,-328(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-352
	sw	a5,0(a4)
	lw	a4,-484(s0)
	lw	a5,-324(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-348
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-352
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-488(s0)
	sw	a5,-484(s0)
	.loc 3 243 17
	lw	a5,-484(s0)
	srli	a4,a5,11
	lw	a5,-488(s0)
	slli	a5,a5,21
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-360
	sw	a5,0(a4)
	lw	a5,-488(s0)
	srli	a4,a5,11
	lw	a5,-484(s0)
	slli	a5,a5,21
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-356
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-360
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-288(s0)
	sw	a5,-284(s0)
	.loc 3 244 17
	lw	a4,-536(s0)
	lw	a5,-336(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-368
	sw	a5,0(a4)
	lw	a4,-532(s0)
	lw	a5,-332(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-364
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-368
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-536(s0)
	sw	a5,-532(s0)
	.loc 3 245 17
	lw	a5,-532(s0)
	srli	a4,a5,18
	lw	a5,-536(s0)
	slli	a5,a5,14
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-376
	sw	a5,0(a4)
	lw	a5,-536(s0)
	srli	a4,a5,18
	lw	a5,-532(s0)
	slli	a5,a5,14
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-372
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-376
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-296(s0)
	sw	a5,-292(s0)
	.loc 3 246 26
	lw	a5,-272(s0)
	not	a5,a5
	sw	a5,-1280(s0)
	lw	a5,-268(s0)
	not	a5,a5
	sw	a5,-1276(s0)
	.loc 3 246 31
	lw	a5,-280(s0)
	lw	a3,-1280(s0)
	lw	a4,-1276(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1288(s0)
	lw	a5,-276(s0)
	and	a5,a5,a4
	sw	a5,-1284(s0)
	.loc 3 246 17
	lw	a5,-264(s0)
	lw	a3,-1288(s0)
	lw	a4,-1284(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-384
	sw	a5,0(a0)
	lw	a5,-260(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-380
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-384
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-64(s0)
	sw	a5,-60(s0)
	.loc 3 247 58
	lw	a5,-52(s0)
	addi	a3,a5,1
	.loc 3 247 52
	lui	a5,%hi(KeccakF_RoundConstants)
	addi	a4,a5,%lo(KeccakF_RoundConstants)
	slli	a5,a3,3
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 3 247 17
	lw	a3,-64(s0)
	xor	a3,a3,a4
	addi	a0,s0,-2048
	addi	a0,a0,-392
	sw	a3,0(a0)
	lw	a3,-60(s0)
	xor	a5,a3,a5
	addi	a4,s0,-2048
	addi	a4,a4,-388
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-392
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-64(s0)
	sw	a5,-60(s0)
	.loc 3 248 26
	lw	a5,-280(s0)
	not	a5,a5
	sw	a5,-1296(s0)
	lw	a5,-276(s0)
	not	a5,a5
	sw	a5,-1292(s0)
	.loc 3 248 31
	lw	a5,-288(s0)
	lw	a3,-1296(s0)
	lw	a4,-1292(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1304(s0)
	lw	a5,-284(s0)
	and	a5,a5,a4
	sw	a5,-1300(s0)
	.loc 3 248 17
	lw	a5,-272(s0)
	lw	a3,-1304(s0)
	lw	a4,-1300(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-400
	sw	a5,0(a0)
	lw	a5,-268(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-396
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-400
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-72(s0)
	sw	a5,-68(s0)
	.loc 3 249 26
	lw	a5,-288(s0)
	not	a5,a5
	sw	a5,-1312(s0)
	lw	a5,-284(s0)
	not	a5,a5
	sw	a5,-1308(s0)
	.loc 3 249 31
	lw	a5,-296(s0)
	lw	a3,-1312(s0)
	lw	a4,-1308(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1320(s0)
	lw	a5,-292(s0)
	and	a5,a5,a4
	sw	a5,-1316(s0)
	.loc 3 249 17
	lw	a5,-280(s0)
	lw	a3,-1320(s0)
	lw	a4,-1316(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-408
	sw	a5,0(a0)
	lw	a5,-276(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-404
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-408
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-80(s0)
	sw	a5,-76(s0)
	.loc 3 250 26
	lw	a5,-296(s0)
	not	a5,a5
	sw	a5,-1328(s0)
	lw	a5,-292(s0)
	not	a5,a5
	sw	a5,-1324(s0)
	.loc 3 250 31
	lw	a5,-264(s0)
	lw	a3,-1328(s0)
	lw	a4,-1324(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1336(s0)
	lw	a5,-260(s0)
	and	a5,a5,a4
	sw	a5,-1332(s0)
	.loc 3 250 17
	lw	a5,-288(s0)
	lw	a3,-1336(s0)
	lw	a4,-1332(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-416
	sw	a5,0(a0)
	lw	a5,-284(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-412
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-416
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
	.loc 3 251 26
	lw	a5,-264(s0)
	not	a5,a5
	sw	a5,-1344(s0)
	lw	a5,-260(s0)
	not	a5,a5
	sw	a5,-1340(s0)
	.loc 3 251 31
	lw	a5,-272(s0)
	lw	a3,-1344(s0)
	lw	a4,-1340(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1352(s0)
	lw	a5,-268(s0)
	and	a5,a5,a4
	sw	a5,-1348(s0)
	.loc 3 251 17
	lw	a5,-296(s0)
	lw	a3,-1352(s0)
	lw	a4,-1348(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-424
	sw	a5,0(a0)
	lw	a5,-292(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-420
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-424
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-96(s0)
	sw	a5,-92(s0)
	.loc 3 253 17
	lw	a4,-368(s0)
	lw	a5,-328(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-432
	sw	a5,0(a4)
	lw	a4,-364(s0)
	lw	a5,-324(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-428
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-432
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-368(s0)
	sw	a5,-364(s0)
	.loc 3 254 17
	lw	a5,-364(s0)
	srli	a4,a5,4
	lw	a5,-368(s0)
	slli	a5,a5,28
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-440
	sw	a5,0(a4)
	lw	a5,-368(s0)
	srli	a4,a5,4
	lw	a5,-364(s0)
	slli	a5,a5,28
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-436
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-440
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-264(s0)
	sw	a5,-260(s0)
	.loc 3 255 17
	lw	a4,-416(s0)
	lw	a5,-336(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-448
	sw	a5,0(a4)
	lw	a4,-412(s0)
	lw	a5,-332(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-444
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-448
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-416(s0)
	sw	a5,-412(s0)
	.loc 3 256 17
	lw	a5,-412(s0)
	srli	a4,a5,12
	lw	a5,-416(s0)
	slli	a5,a5,20
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-456
	sw	a5,0(a4)
	lw	a5,-416(s0)
	srli	a4,a5,12
	lw	a5,-412(s0)
	slli	a5,a5,20
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-452
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-456
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-272(s0)
	sw	a5,-268(s0)
	.loc 3 257 17
	lw	a4,-424(s0)
	lw	a5,-304(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-464
	sw	a5,0(a4)
	lw	a4,-420(s0)
	lw	a5,-300(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-460
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-464
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-424(s0)
	sw	a5,-420(s0)
	.loc 3 258 17
	lw	a5,-420(s0)
	srli	a4,a5,29
	lw	a5,-424(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-472
	sw	a5,0(a4)
	lw	a5,-424(s0)
	srli	a4,a5,29
	lw	a5,-420(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-468
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-472
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-280(s0)
	sw	a5,-276(s0)
	.loc 3 259 17
	lw	a4,-472(s0)
	lw	a5,-312(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-480
	sw	a5,0(a4)
	lw	a4,-468(s0)
	lw	a5,-308(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-476
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-480
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-472(s0)
	sw	a5,-468(s0)
	.loc 3 260 17
	lw	a5,-468(s0)
	slli	a4,a5,13
	lw	a5,-472(s0)
	srli	a5,a5,19
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-488
	sw	a5,0(a4)
	lw	a5,-472(s0)
	slli	a4,a5,13
	lw	a5,-468(s0)
	srli	a5,a5,19
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-484
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-488
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-288(s0)
	sw	a5,-284(s0)
	.loc 3 261 17
	lw	a4,-520(s0)
	lw	a5,-320(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-496
	sw	a5,0(a4)
	lw	a4,-516(s0)
	lw	a5,-316(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-492
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-496
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-520(s0)
	sw	a5,-516(s0)
	.loc 3 262 17
	lw	a5,-516(s0)
	slli	a4,a5,29
	lw	a5,-520(s0)
	srli	a5,a5,3
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-504
	sw	a5,0(a4)
	lw	a5,-520(s0)
	slli	a4,a5,29
	lw	a5,-516(s0)
	srli	a5,a5,3
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-500
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-504
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-296(s0)
	sw	a5,-292(s0)
	.loc 3 263 26
	lw	a5,-272(s0)
	not	a5,a5
	sw	a5,-1360(s0)
	lw	a5,-268(s0)
	not	a5,a5
	sw	a5,-1356(s0)
	.loc 3 263 31
	lw	a5,-280(s0)
	lw	a3,-1360(s0)
	lw	a4,-1356(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1368(s0)
	lw	a5,-276(s0)
	and	a5,a5,a4
	sw	a5,-1364(s0)
	.loc 3 263 17
	lw	a5,-264(s0)
	lw	a3,-1368(s0)
	lw	a4,-1364(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-512
	sw	a5,0(a0)
	lw	a5,-260(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-508
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-512
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-104(s0)
	sw	a5,-100(s0)
	.loc 3 264 26
	lw	a5,-280(s0)
	not	a5,a5
	sw	a5,-1376(s0)
	lw	a5,-276(s0)
	not	a5,a5
	sw	a5,-1372(s0)
	.loc 3 264 31
	lw	a5,-288(s0)
	lw	a3,-1376(s0)
	lw	a4,-1372(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1384(s0)
	lw	a5,-284(s0)
	and	a5,a5,a4
	sw	a5,-1380(s0)
	.loc 3 264 17
	lw	a5,-272(s0)
	lw	a3,-1384(s0)
	lw	a4,-1380(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-520
	sw	a5,0(a0)
	lw	a5,-268(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-516
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-520
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-112(s0)
	sw	a5,-108(s0)
	.loc 3 265 26
	lw	a5,-288(s0)
	not	a5,a5
	sw	a5,-1392(s0)
	lw	a5,-284(s0)
	not	a5,a5
	sw	a5,-1388(s0)
	.loc 3 265 31
	lw	a5,-296(s0)
	lw	a3,-1392(s0)
	lw	a4,-1388(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1400(s0)
	lw	a5,-292(s0)
	and	a5,a5,a4
	sw	a5,-1396(s0)
	.loc 3 265 17
	lw	a5,-280(s0)
	lw	a3,-1400(s0)
	lw	a4,-1396(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-528
	sw	a5,0(a0)
	lw	a5,-276(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-524
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-528
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-120(s0)
	sw	a5,-116(s0)
	.loc 3 266 26
	lw	a5,-296(s0)
	not	a5,a5
	sw	a5,-1408(s0)
	lw	a5,-292(s0)
	not	a5,a5
	sw	a5,-1404(s0)
	.loc 3 266 31
	lw	a5,-264(s0)
	lw	a3,-1408(s0)
	lw	a4,-1404(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1416(s0)
	lw	a5,-260(s0)
	and	a5,a5,a4
	sw	a5,-1412(s0)
	.loc 3 266 17
	lw	a5,-288(s0)
	lw	a3,-1416(s0)
	lw	a4,-1412(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-536
	sw	a5,0(a0)
	lw	a5,-284(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-532
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-536
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-128(s0)
	sw	a5,-124(s0)
	.loc 3 267 26
	lw	a5,-264(s0)
	not	a5,a5
	sw	a5,-1424(s0)
	lw	a5,-260(s0)
	not	a5,a5
	sw	a5,-1420(s0)
	.loc 3 267 31
	lw	a5,-272(s0)
	lw	a3,-1424(s0)
	lw	a4,-1420(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1432(s0)
	lw	a5,-268(s0)
	and	a5,a5,a4
	sw	a5,-1428(s0)
	.loc 3 267 17
	lw	a5,-296(s0)
	lw	a3,-1432(s0)
	lw	a4,-1428(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-544
	sw	a5,0(a0)
	lw	a5,-292(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-540
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-544
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-136(s0)
	sw	a5,-132(s0)
	.loc 3 269 17
	lw	a4,-352(s0)
	lw	a5,-312(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-552
	sw	a5,0(a4)
	lw	a4,-348(s0)
	lw	a5,-308(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-548
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-552
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-352(s0)
	sw	a5,-348(s0)
	.loc 3 270 17
	lw	a5,-348(s0)
	srli	a4,a5,31
	lw	a5,-352(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-560
	sw	a5,0(a4)
	lw	a5,-352(s0)
	srli	a4,a5,31
	lw	a5,-348(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-556
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-560
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-264(s0)
	sw	a5,-260(s0)
	.loc 3 271 17
	lw	a4,-400(s0)
	lw	a5,-320(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-568
	sw	a5,0(a4)
	lw	a4,-396(s0)
	lw	a5,-316(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-564
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-568
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-400(s0)
	sw	a5,-396(s0)
	.loc 3 272 17
	lw	a5,-396(s0)
	srli	a4,a5,26
	lw	a5,-400(s0)
	slli	a5,a5,6
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-576
	sw	a5,0(a4)
	lw	a5,-400(s0)
	srli	a4,a5,26
	lw	a5,-396(s0)
	slli	a5,a5,6
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-572
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-576
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-272(s0)
	sw	a5,-268(s0)
	.loc 3 273 17
	lw	a4,-448(s0)
	lw	a5,-328(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-584
	sw	a5,0(a4)
	lw	a4,-444(s0)
	lw	a5,-324(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-580
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-584
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-448(s0)
	sw	a5,-444(s0)
	.loc 3 274 17
	lw	a5,-444(s0)
	srli	a4,a5,7
	lw	a5,-448(s0)
	slli	a5,a5,25
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-592
	sw	a5,0(a4)
	lw	a5,-448(s0)
	srli	a4,a5,7
	lw	a5,-444(s0)
	slli	a5,a5,25
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-588
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-592
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-280(s0)
	sw	a5,-276(s0)
	.loc 3 275 17
	lw	a4,-496(s0)
	lw	a5,-336(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-600
	sw	a5,0(a4)
	lw	a4,-492(s0)
	lw	a5,-332(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-596
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-600
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-496(s0)
	sw	a5,-492(s0)
	.loc 3 276 17
	lw	a5,-492(s0)
	srli	a4,a5,24
	lw	a5,-496(s0)
	slli	a5,a5,8
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-608
	sw	a5,0(a4)
	lw	a5,-496(s0)
	srli	a4,a5,24
	lw	a5,-492(s0)
	slli	a5,a5,8
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-604
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-608
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-288(s0)
	sw	a5,-284(s0)
	.loc 3 277 17
	lw	a4,-504(s0)
	lw	a5,-304(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-616
	sw	a5,0(a4)
	lw	a4,-500(s0)
	lw	a5,-300(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-612
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-616
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-504(s0)
	sw	a5,-500(s0)
	.loc 3 278 17
	lw	a5,-500(s0)
	srli	a4,a5,14
	lw	a5,-504(s0)
	slli	a5,a5,18
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-624
	sw	a5,0(a4)
	lw	a5,-504(s0)
	srli	a4,a5,14
	lw	a5,-500(s0)
	slli	a5,a5,18
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-620
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-624
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-296(s0)
	sw	a5,-292(s0)
	.loc 3 279 26
	lw	a5,-272(s0)
	not	a5,a5
	sw	a5,-1440(s0)
	lw	a5,-268(s0)
	not	a5,a5
	sw	a5,-1436(s0)
	.loc 3 279 31
	lw	a5,-280(s0)
	lw	a3,-1440(s0)
	lw	a4,-1436(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1448(s0)
	lw	a5,-276(s0)
	and	a5,a5,a4
	sw	a5,-1444(s0)
	.loc 3 279 17
	lw	a5,-264(s0)
	lw	a3,-1448(s0)
	lw	a4,-1444(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-632
	sw	a5,0(a0)
	lw	a5,-260(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-628
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-632
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-144(s0)
	sw	a5,-140(s0)
	.loc 3 280 26
	lw	a5,-280(s0)
	not	a5,a5
	sw	a5,-1456(s0)
	lw	a5,-276(s0)
	not	a5,a5
	sw	a5,-1452(s0)
	.loc 3 280 31
	lw	a5,-288(s0)
	lw	a3,-1456(s0)
	lw	a4,-1452(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1464(s0)
	lw	a5,-284(s0)
	and	a5,a5,a4
	sw	a5,-1460(s0)
	.loc 3 280 17
	lw	a5,-272(s0)
	lw	a3,-1464(s0)
	lw	a4,-1460(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-640
	sw	a5,0(a0)
	lw	a5,-268(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-636
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-640
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-152(s0)
	sw	a5,-148(s0)
	.loc 3 281 26
	lw	a5,-288(s0)
	not	a5,a5
	sw	a5,-1472(s0)
	lw	a5,-284(s0)
	not	a5,a5
	sw	a5,-1468(s0)
	.loc 3 281 31
	lw	a5,-296(s0)
	lw	a3,-1472(s0)
	lw	a4,-1468(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1480(s0)
	lw	a5,-292(s0)
	and	a5,a5,a4
	sw	a5,-1476(s0)
	.loc 3 281 17
	lw	a5,-280(s0)
	lw	a3,-1480(s0)
	lw	a4,-1476(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-648
	sw	a5,0(a0)
	lw	a5,-276(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-644
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-648
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-160(s0)
	sw	a5,-156(s0)
	.loc 3 282 26
	lw	a5,-296(s0)
	not	a5,a5
	sw	a5,-1488(s0)
	lw	a5,-292(s0)
	not	a5,a5
	sw	a5,-1484(s0)
	.loc 3 282 31
	lw	a5,-264(s0)
	lw	a3,-1488(s0)
	lw	a4,-1484(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1496(s0)
	lw	a5,-260(s0)
	and	a5,a5,a4
	sw	a5,-1492(s0)
	.loc 3 282 17
	lw	a5,-288(s0)
	lw	a3,-1496(s0)
	lw	a4,-1492(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-656
	sw	a5,0(a0)
	lw	a5,-284(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-652
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-656
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-168(s0)
	sw	a5,-164(s0)
	.loc 3 283 26
	lw	a5,-264(s0)
	not	a5,a5
	sw	a5,-1504(s0)
	lw	a5,-260(s0)
	not	a5,a5
	sw	a5,-1500(s0)
	.loc 3 283 31
	lw	a5,-272(s0)
	lw	a3,-1504(s0)
	lw	a4,-1500(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1512(s0)
	lw	a5,-268(s0)
	and	a5,a5,a4
	sw	a5,-1508(s0)
	.loc 3 283 17
	lw	a5,-296(s0)
	lw	a3,-1512(s0)
	lw	a4,-1508(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-664
	sw	a5,0(a0)
	lw	a5,-292(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-660
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-664
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-176(s0)
	sw	a5,-172(s0)
	.loc 3 285 17
	lw	a4,-376(s0)
	lw	a5,-336(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-672
	sw	a5,0(a4)
	lw	a4,-372(s0)
	lw	a5,-332(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-668
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-672
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-376(s0)
	sw	a5,-372(s0)
	.loc 3 286 17
	lw	a5,-372(s0)
	srli	a4,a5,5
	lw	a5,-376(s0)
	slli	a5,a5,27
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-680
	sw	a5,0(a4)
	lw	a5,-376(s0)
	srli	a4,a5,5
	lw	a5,-372(s0)
	slli	a5,a5,27
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-676
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-680
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-264(s0)
	sw	a5,-260(s0)
	.loc 3 287 17
	lw	a4,-384(s0)
	lw	a5,-304(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-688
	sw	a5,0(a4)
	lw	a4,-380(s0)
	lw	a5,-300(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-684
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-688
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-384(s0)
	sw	a5,-380(s0)
	.loc 3 288 17
	lw	a5,-380(s0)
	slli	a4,a5,4
	lw	a5,-384(s0)
	srli	a5,a5,28
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-696
	sw	a5,0(a4)
	lw	a5,-384(s0)
	slli	a4,a5,4
	lw	a5,-380(s0)
	srli	a5,a5,28
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-692
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-696
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-272(s0)
	sw	a5,-268(s0)
	.loc 3 289 17
	lw	a4,-432(s0)
	lw	a5,-312(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-704
	sw	a5,0(a4)
	lw	a4,-428(s0)
	lw	a5,-308(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-700
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-704
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-432(s0)
	sw	a5,-428(s0)
	.loc 3 290 17
	lw	a5,-428(s0)
	srli	a4,a5,22
	lw	a5,-432(s0)
	slli	a5,a5,10
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-712
	sw	a5,0(a4)
	lw	a5,-432(s0)
	srli	a4,a5,22
	lw	a5,-428(s0)
	slli	a5,a5,10
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-708
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-712
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-280(s0)
	sw	a5,-276(s0)
	.loc 3 291 17
	lw	a4,-480(s0)
	lw	a5,-320(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-720
	sw	a5,0(a4)
	lw	a4,-476(s0)
	lw	a5,-316(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-716
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-720
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-480(s0)
	sw	a5,-476(s0)
	.loc 3 292 17
	lw	a5,-476(s0)
	srli	a4,a5,17
	lw	a5,-480(s0)
	slli	a5,a5,15
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-728
	sw	a5,0(a4)
	lw	a5,-480(s0)
	srli	a4,a5,17
	lw	a5,-476(s0)
	slli	a5,a5,15
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-724
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-728
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-288(s0)
	sw	a5,-284(s0)
	.loc 3 293 17
	lw	a4,-528(s0)
	lw	a5,-328(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-736
	sw	a5,0(a4)
	lw	a4,-524(s0)
	lw	a5,-324(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-732
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-736
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-528(s0)
	sw	a5,-524(s0)
	.loc 3 294 17
	lw	a5,-524(s0)
	slli	a4,a5,24
	lw	a5,-528(s0)
	srli	a5,a5,8
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-744
	sw	a5,0(a4)
	lw	a5,-528(s0)
	slli	a4,a5,24
	lw	a5,-524(s0)
	srli	a5,a5,8
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-740
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-744
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-296(s0)
	sw	a5,-292(s0)
	.loc 3 295 26
	lw	a5,-272(s0)
	not	a5,a5
	sw	a5,-1520(s0)
	lw	a5,-268(s0)
	not	a5,a5
	sw	a5,-1516(s0)
	.loc 3 295 31
	lw	a5,-280(s0)
	lw	a3,-1520(s0)
	lw	a4,-1516(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1528(s0)
	lw	a5,-276(s0)
	and	a5,a5,a4
	sw	a5,-1524(s0)
	.loc 3 295 17
	lw	a5,-264(s0)
	lw	a3,-1528(s0)
	lw	a4,-1524(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-752
	sw	a5,0(a0)
	lw	a5,-260(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-748
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-752
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-184(s0)
	sw	a5,-180(s0)
	.loc 3 296 26
	lw	a5,-280(s0)
	not	a5,a5
	sw	a5,-1536(s0)
	lw	a5,-276(s0)
	not	a5,a5
	sw	a5,-1532(s0)
	.loc 3 296 31
	lw	a5,-288(s0)
	lw	a3,-1536(s0)
	lw	a4,-1532(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1544(s0)
	lw	a5,-284(s0)
	and	a5,a5,a4
	sw	a5,-1540(s0)
	.loc 3 296 17
	lw	a5,-272(s0)
	lw	a3,-1544(s0)
	lw	a4,-1540(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-760
	sw	a5,0(a0)
	lw	a5,-268(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-756
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-760
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-192(s0)
	sw	a5,-188(s0)
	.loc 3 297 26
	lw	a5,-288(s0)
	not	a5,a5
	sw	a5,-1552(s0)
	lw	a5,-284(s0)
	not	a5,a5
	sw	a5,-1548(s0)
	.loc 3 297 31
	lw	a5,-296(s0)
	lw	a3,-1552(s0)
	lw	a4,-1548(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1560(s0)
	lw	a5,-292(s0)
	and	a5,a5,a4
	sw	a5,-1556(s0)
	.loc 3 297 17
	lw	a5,-280(s0)
	lw	a3,-1560(s0)
	lw	a4,-1556(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-768
	sw	a5,0(a0)
	lw	a5,-276(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-764
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-768
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-200(s0)
	sw	a5,-196(s0)
	.loc 3 298 26
	lw	a5,-296(s0)
	not	a5,a5
	sw	a5,-1568(s0)
	lw	a5,-292(s0)
	not	a5,a5
	sw	a5,-1564(s0)
	.loc 3 298 31
	lw	a5,-264(s0)
	lw	a3,-1568(s0)
	lw	a4,-1564(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1576(s0)
	lw	a5,-260(s0)
	and	a5,a5,a4
	sw	a5,-1572(s0)
	.loc 3 298 17
	lw	a5,-288(s0)
	lw	a3,-1576(s0)
	lw	a4,-1572(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-776
	sw	a5,0(a0)
	lw	a5,-284(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-772
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-776
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-208(s0)
	sw	a5,-204(s0)
	.loc 3 299 26
	lw	a5,-264(s0)
	not	a5,a5
	sw	a5,-1584(s0)
	lw	a5,-260(s0)
	not	a5,a5
	sw	a5,-1580(s0)
	.loc 3 299 31
	lw	a5,-272(s0)
	lw	a3,-1584(s0)
	lw	a4,-1580(s0)
	mv	a0,a3
	and	a5,a5,a0
	sw	a5,-1592(s0)
	lw	a5,-268(s0)
	and	a5,a5,a4
	sw	a5,-1588(s0)
	.loc 3 299 17
	lw	a5,-296(s0)
	lw	a3,-1592(s0)
	lw	a4,-1588(s0)
	mv	a0,a3
	xor	a5,a5,a0
	addi	a0,s0,-2048
	addi	a0,a0,-784
	sw	a5,0(a0)
	lw	a5,-292(s0)
	xor	a5,a5,a4
	addi	a4,s0,-2048
	addi	a4,a4,-780
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-784
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-216(s0)
	sw	a5,-212(s0)
	.loc 3 301 17
	lw	a4,-360(s0)
	lw	a5,-320(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-792
	sw	a5,0(a4)
	lw	a4,-356(s0)
	lw	a5,-316(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-788
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-792
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-360(s0)
	sw	a5,-356(s0)
	.loc 3 302 17
	lw	a5,-356(s0)
	slli	a4,a5,30
	lw	a5,-360(s0)
	srli	a5,a5,2
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-800
	sw	a5,0(a4)
	lw	a5,-360(s0)
	slli	a4,a5,30
	lw	a5,-356(s0)
	srli	a5,a5,2
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-796
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-800
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-264(s0)
	sw	a5,-260(s0)
	.loc 3 303 17
	lw	a4,-408(s0)
	lw	a5,-328(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-808
	sw	a5,0(a4)
	lw	a4,-404(s0)
	lw	a5,-324(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-804
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-808
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-408(s0)
	sw	a5,-404(s0)
	.loc 3 304 17
	lw	a5,-404(s0)
	slli	a4,a5,23
	lw	a5,-408(s0)
	srli	a5,a5,9
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-816
	sw	a5,0(a4)
	lw	a5,-408(s0)
	slli	a4,a5,23
	lw	a5,-404(s0)
	srli	a5,a5,9
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-812
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-816
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-272(s0)
	sw	a5,-268(s0)
	.loc 3 305 17
	lw	a4,-456(s0)
	lw	a5,-336(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-824
	sw	a5,0(a4)
	lw	a4,-452(s0)
	lw	a5,-332(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-820
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-824
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-456(s0)
	sw	a5,-452(s0)
	.loc 3 306 17
	lw	a5,-452(s0)
	slli	a4,a5,7
	lw	a5,-456(s0)
	srli	a5,a5,25
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-832
	sw	a5,0(a4)
	lw	a5,-456(s0)
	slli	a4,a5,7
	lw	a5,-452(s0)
	srli	a5,a5,25
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-828
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-832
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-280(s0)
	sw	a5,-276(s0)
	.loc 3 307 17
	lw	a4,-464(s0)
	lw	a5,-304(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-840
	sw	a5,0(a4)
	lw	a4,-460(s0)
	lw	a5,-300(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-836
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-840
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-464(s0)
	sw	a5,-460(s0)
	.loc 3 308 17
	lw	a5,-460(s0)
	slli	a4,a5,9
	lw	a5,-464(s0)
	srli	a5,a5,23
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-848
	sw	a5,0(a4)
	lw	a5,-464(s0)
	slli	a4,a5,9
	lw	a5,-460(s0)
	srli	a5,a5,23
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-844
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-848
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-288(s0)
	sw	a5,-284(s0)
	.loc 3 309 17
	lw	a4,-512(s0)
	lw	a5,-312(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-856
	sw	a5,0(a4)
	lw	a4,-508(s0)
	lw	a5,-308(s0)
	xor	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-852
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-856
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-512(s0)
	sw	a5,-508(s0)
	.loc 3 310 17
	lw	a5,-508(s0)
	srli	a4,a5,30
	lw	a5,-512(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-864
	sw	a5,0(a4)
	lw	a5,-512(s0)
	srli	a4,a5,30
	lw	a5,-508(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	addi	a4,s0,-2048
	addi	a4,a4,-860
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-864
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-296(s0)
	sw	a5,-292(s0)
	.loc 3 311 26
	lw	a5,-272(s0)
	not	a1,a5
	lw	a5,-268(s0)
	not	a2,a5
	.loc 3 311 31
	lw	a5,-280(s0)
	and	s10,a5,a1
	lw	a5,-276(s0)
	and	s11,a5,a2
	.loc 3 311 17
	lw	a5,-264(s0)
	xor	a5,a5,s10
	addi	a4,s0,-2048
	addi	a4,a4,-872
	sw	a5,0(a4)
	lw	a5,-260(s0)
	xor	a5,a5,s11
	addi	a4,s0,-2048
	addi	a4,a4,-868
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-872
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-224(s0)
	sw	a5,-220(s0)
	.loc 3 312 26
	lw	a5,-280(s0)
	not	s8,a5
	lw	a5,-276(s0)
	not	s9,a5
	.loc 3 312 31
	lw	a5,-288(s0)
	and	s6,a5,s8
	lw	a5,-284(s0)
	and	s7,a5,s9
	.loc 3 312 17
	lw	a5,-272(s0)
	xor	a5,a5,s6
	addi	a4,s0,-2048
	addi	a4,a4,-880
	sw	a5,0(a4)
	lw	a5,-268(s0)
	xor	a5,a5,s7
	addi	a4,s0,-2048
	addi	a4,a4,-876
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-880
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-232(s0)
	sw	a5,-228(s0)
	.loc 3 313 26
	lw	a5,-288(s0)
	not	s4,a5
	lw	a5,-284(s0)
	not	s5,a5
	.loc 3 313 31
	lw	a5,-296(s0)
	and	s2,a5,s4
	lw	a5,-292(s0)
	and	s3,a5,s5
	.loc 3 313 17
	lw	a5,-280(s0)
	xor	a5,a5,s2
	addi	a4,s0,-2048
	addi	a4,a4,-888
	sw	a5,0(a4)
	lw	a5,-276(s0)
	xor	a5,a5,s3
	addi	a4,s0,-2048
	addi	a4,a4,-884
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-888
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-240(s0)
	sw	a5,-236(s0)
	.loc 3 314 26
	lw	a5,-296(s0)
	not	t5,a5
	lw	a5,-292(s0)
	not	t6,a5
	.loc 3 314 31
	lw	a5,-264(s0)
	and	t3,a5,t5
	lw	a5,-260(s0)
	and	t4,a5,t6
	.loc 3 314 17
	lw	a5,-288(s0)
	xor	a5,a5,t3
	addi	a4,s0,-2048
	addi	a4,a4,-896
	sw	a5,0(a4)
	lw	a5,-284(s0)
	xor	a5,a5,t4
	addi	a4,s0,-2048
	addi	a4,a4,-892
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-896
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-248(s0)
	sw	a5,-244(s0)
	.loc 3 315 26
	lw	a5,-264(s0)
	not	t1,a5
	lw	a5,-260(s0)
	not	t2,a5
	.loc 3 315 31
	lw	a5,-272(s0)
	and	a6,a5,t1
	lw	a5,-268(s0)
	and	a7,a5,t2
	.loc 3 315 17
	lw	a5,-296(s0)
	xor	a5,a5,a6
	addi	a4,s0,-2048
	addi	a4,a4,-904
	sw	a5,0(a4)
	lw	a5,-292(s0)
	xor	a5,a5,a7
	addi	a4,s0,-2048
	addi	a4,a4,-900
	sw	a5,0(a4)
	addi	a5,s0,-2048
	addi	a5,a5,-904
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-256(s0)
	sw	a5,-252(s0)
	.loc 3 126 42 discriminator 3
	lw	a5,-52(s0)
	addi	a5,a5,2
	sw	a5,-52(s0)
.L40:
	.loc 3 126 30 discriminator 1
	lw	a4,-52(s0)
	li	a5,23
	ble	a4,a5,.L41
	.loc 3 319 19
	lw	a3,-548(s0)
	lw	a4,-64(s0)
	lw	a5,-60(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 320 14
	lw	a5,-548(s0)
	addi	a3,a5,8
	.loc 3 320 19
	lw	a4,-72(s0)
	lw	a5,-68(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 321 14
	lw	a5,-548(s0)
	addi	a3,a5,16
	.loc 3 321 19
	lw	a4,-80(s0)
	lw	a5,-76(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 322 14
	lw	a5,-548(s0)
	addi	a3,a5,24
	.loc 3 322 19
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 323 14
	lw	a5,-548(s0)
	addi	a3,a5,32
	.loc 3 323 19
	lw	a4,-96(s0)
	lw	a5,-92(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 324 14
	lw	a5,-548(s0)
	addi	a3,a5,40
	.loc 3 324 19
	lw	a4,-104(s0)
	lw	a5,-100(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 325 14
	lw	a5,-548(s0)
	addi	a3,a5,48
	.loc 3 325 19
	lw	a4,-112(s0)
	lw	a5,-108(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 326 14
	lw	a5,-548(s0)
	addi	a3,a5,56
	.loc 3 326 19
	lw	a4,-120(s0)
	lw	a5,-116(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 327 14
	lw	a5,-548(s0)
	addi	a3,a5,64
	.loc 3 327 19
	lw	a4,-128(s0)
	lw	a5,-124(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 328 14
	lw	a5,-548(s0)
	addi	a3,a5,72
	.loc 3 328 19
	lw	a4,-136(s0)
	lw	a5,-132(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 329 14
	lw	a5,-548(s0)
	addi	a3,a5,80
	.loc 3 329 19
	lw	a4,-144(s0)
	lw	a5,-140(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 330 14
	lw	a5,-548(s0)
	addi	a3,a5,88
	.loc 3 330 19
	lw	a4,-152(s0)
	lw	a5,-148(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 331 14
	lw	a5,-548(s0)
	addi	a3,a5,96
	.loc 3 331 19
	lw	a4,-160(s0)
	lw	a5,-156(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 332 14
	lw	a5,-548(s0)
	addi	a3,a5,104
	.loc 3 332 19
	lw	a4,-168(s0)
	lw	a5,-164(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 333 14
	lw	a5,-548(s0)
	addi	a3,a5,112
	.loc 3 333 19
	lw	a4,-176(s0)
	lw	a5,-172(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 334 14
	lw	a5,-548(s0)
	addi	a3,a5,120
	.loc 3 334 19
	lw	a4,-184(s0)
	lw	a5,-180(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 335 14
	lw	a5,-548(s0)
	addi	a3,a5,128
	.loc 3 335 19
	lw	a4,-192(s0)
	lw	a5,-188(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 336 14
	lw	a5,-548(s0)
	addi	a3,a5,136
	.loc 3 336 19
	lw	a4,-200(s0)
	lw	a5,-196(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 337 14
	lw	a5,-548(s0)
	addi	a3,a5,144
	.loc 3 337 19
	lw	a4,-208(s0)
	lw	a5,-204(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 338 14
	lw	a5,-548(s0)
	addi	a3,a5,152
	.loc 3 338 19
	lw	a4,-216(s0)
	lw	a5,-212(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 339 14
	lw	a5,-548(s0)
	addi	a3,a5,160
	.loc 3 339 19
	lw	a4,-224(s0)
	lw	a5,-220(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 340 14
	lw	a5,-548(s0)
	addi	a3,a5,168
	.loc 3 340 19
	lw	a4,-232(s0)
	lw	a5,-228(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 341 14
	lw	a5,-548(s0)
	addi	a3,a5,176
	.loc 3 341 19
	lw	a4,-240(s0)
	lw	a5,-236(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 342 14
	lw	a5,-548(s0)
	addi	a3,a5,184
	.loc 3 342 19
	lw	a4,-248(s0)
	lw	a5,-244(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 343 14
	lw	a5,-548(s0)
	addi	a3,a5,192
	.loc 3 343 19
	lw	a4,-256(s0)
	lw	a5,-252(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 344 1
	nop
	addi	sp,sp,928
	.cfi_def_cfa 2, 2032
	lw	ra,2028(sp)
	.cfi_restore 1
	lw	s0,2024(sp)
	.cfi_restore 8
	lw	s2,2020(sp)
	.cfi_restore 18
	lw	s3,2016(sp)
	.cfi_restore 19
	lw	s4,2012(sp)
	.cfi_restore 20
	lw	s5,2008(sp)
	.cfi_restore 21
	lw	s6,2004(sp)
	.cfi_restore 22
	lw	s7,2000(sp)
	.cfi_restore 23
	lw	s8,1996(sp)
	.cfi_restore 24
	lw	s9,1992(sp)
	.cfi_restore 25
	lw	s10,1988(sp)
	.cfi_restore 26
	lw	s11,1984(sp)
	.cfi_restore 27
	addi	sp,sp,2032
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	KeccakF1600_StatePermute, .-KeccakF1600_StatePermute
	.section	.text.keccak_init,"ax",@progbits
	.align	1
	.type	keccak_init, @function
keccak_init:
.LFB17:
	.loc 3 354 1
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
	.loc 3 356 8
	sw	zero,-20(s0)
	.loc 3 356 3
	j	.L43
.L44:
	.loc 3 357 6
	lw	a5,-20(s0)
	slli	a5,a5,3
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 3 357 10
	li	a3,0
	li	a4,0
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 3 356 17 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L43:
	.loc 3 356 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,24
	bleu	a4,a5,.L44
	.loc 3 358 1
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
.LFE17:
	.size	keccak_init, .-keccak_init
	.section	.text.keccak_absorb,"ax",@progbits
	.align	1
	.type	keccak_absorb, @function
keccak_absorb:
.LFB18:
	.loc 3 378 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s2,84(sp)
	sw	s3,80(sp)
	sw	s4,76(sp)
	sw	s5,72(sp)
	sw	s6,68(sp)
	sw	s7,64(sp)
	sw	s8,60(sp)
	sw	s9,56(sp)
	sw	s10,52(sp)
	sw	s11,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	.cfi_offset 22, -28
	.cfi_offset 23, -32
	.cfi_offset 24, -36
	.cfi_offset 25, -40
	.cfi_offset 26, -44
	.cfi_offset 27, -48
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	sw	a4,-84(s0)
	.loc 3 381 8
	j	.L46
.L51:
	.loc 3 382 10
	lw	a5,-72(s0)
	sw	a5,-52(s0)
	.loc 3 382 5
	j	.L47
.L50:
	.loc 3 383 30
	lw	a5,-80(s0)
	addi	a4,a5,1
	sw	a4,-80(s0)
	.loc 3 383 27
	lbu	a5,0(a5)
	.loc 3 383 17
	mv	s8,a5
	li	s9,0
	.loc 3 383 40
	lw	a5,-52(s0)
	andi	a5,a5,7
	.loc 3 383 37
	slli	a5,a5,3
	.loc 3 383 33
	addi	a4,a5,-32
	blt	a4,zero,.L48
	sll	s5,s8,a4
	li	s4,0
	j	.L49
.L48:
	srli	a3,s8,1
	li	a4,31
	sub	a4,a4,a5
	srl	a4,a3,a4
	sll	s5,s9,a5
	add	s5,a4,s5
	sll	s4,s8,a5
.L49:
	.loc 3 383 8
	lw	a5,-52(s0)
	andi	a5,a5,-8
	lw	a4,-68(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	lw	a3,-52(s0)
	andi	a3,a3,-8
	lw	a2,-68(s0)
	add	a3,a2,a3
	.loc 3 383 14
	xor	a2,s4,a4
	sw	a2,-96(s0)
	xor	a5,s5,a5
	sw	a5,-92(s0)
	lw	a5,-96(s0)
	lw	a6,-92(s0)
	sw	a5,0(a3)
	sw	a6,4(a3)
	.loc 3 382 20 discriminator 3
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
.L47:
	.loc 3 382 16 discriminator 1
	lw	a4,-52(s0)
	lw	a5,-76(s0)
	bltu	a4,a5,.L50
	.loc 3 384 15
	lw	a4,-72(s0)
	lw	a5,-76(s0)
	sub	a5,a4,a5
	.loc 3 384 11
	lw	a4,-84(s0)
	add	a5,a4,a5
	sw	a5,-84(s0)
	.loc 3 385 5
	lw	a0,-68(s0)
	call	KeccakF1600_StatePermute
	.loc 3 386 9
	sw	zero,-72(s0)
.L46:
	.loc 3 381 12
	lw	a4,-72(s0)
	lw	a5,-84(s0)
	add	a5,a4,a5
	.loc 3 381 19
	lw	a4,-76(s0)
	bleu	a4,a5,.L51
	.loc 3 389 8
	lw	a5,-72(s0)
	sw	a5,-52(s0)
	.loc 3 389 3
	j	.L52
.L55:
	.loc 3 390 28
	lw	a5,-80(s0)
	addi	a4,a5,1
	sw	a4,-80(s0)
	.loc 3 390 25
	lbu	a5,0(a5)
	.loc 3 390 15
	mv	s6,a5
	li	s7,0
	.loc 3 390 38
	lw	a5,-52(s0)
	andi	a5,a5,7
	.loc 3 390 35
	slli	a5,a5,3
	.loc 3 390 31
	addi	a4,a5,-32
	blt	a4,zero,.L53
	sll	s3,s6,a4
	li	s2,0
	j	.L54
.L53:
	srli	a3,s6,1
	li	a4,31
	sub	a4,a4,a5
	srl	a4,a3,a4
	sll	s3,s7,a5
	add	s3,a4,s3
	sll	s2,s6,a5
.L54:
	.loc 3 390 6
	lw	a5,-52(s0)
	andi	a5,a5,-8
	lw	a4,-68(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	lw	a3,-52(s0)
	andi	a3,a3,-8
	lw	a2,-68(s0)
	add	a3,a2,a3
	.loc 3 390 12
	xor	s10,s2,a4
	xor	s11,s3,a5
	sw	s10,0(a3)
	sw	s11,4(a3)
	.loc 3 389 26 discriminator 3
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
.L52:
	.loc 3 389 18 discriminator 1
	lw	a4,-72(s0)
	lw	a5,-84(s0)
	add	a5,a4,a5
	.loc 3 389 14 discriminator 1
	lw	a4,-52(s0)
	bltu	a4,a5,.L55
	.loc 3 392 10
	lw	a5,-52(s0)
	.loc 3 393 1
	mv	a0,a5
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	lw	s2,84(sp)
	.cfi_restore 18
	lw	s3,80(sp)
	.cfi_restore 19
	lw	s4,76(sp)
	.cfi_restore 20
	lw	s5,72(sp)
	.cfi_restore 21
	lw	s6,68(sp)
	.cfi_restore 22
	lw	s7,64(sp)
	.cfi_restore 23
	lw	s8,60(sp)
	.cfi_restore 24
	lw	s9,56(sp)
	.cfi_restore 25
	lw	s10,52(sp)
	.cfi_restore 26
	lw	s11,48(sp)
	.cfi_restore 27
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	keccak_absorb, .-keccak_absorb
	.section	.text.keccak_finalize,"ax",@progbits
	.align	1
	.type	keccak_finalize, @function
keccak_finalize:
.LFB19:
	.loc 3 406 1
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
	sb	a3,-29(s0)
	.loc 3 407 4
	lw	a3,-24(s0)
	andi	a3,a3,-8
	lw	a2,-20(s0)
	add	a3,a2,a3
	lw	a0,0(a3)
	lw	a1,4(a3)
	.loc 3 407 15
	lbu	a3,-29(s0)
	andi	a3,a3,0xff
	mv	a6,a3
	li	a7,0
	.loc 3 407 36
	lw	a3,-24(s0)
	andi	a3,a3,7
	.loc 3 407 31
	slli	a3,a3,3
	.loc 3 407 27
	addi	a2,a3,-32
	blt	a2,zero,.L58
	sll	a5,a6,a2
	li	a4,0
	j	.L59
.L58:
	srli	t5,a6,1
	li	a2,31
	sub	a2,a2,a3
	srl	a2,t5,a2
	sll	a5,a7,a3
	add	a5,a2,a5
	sll	a4,a6,a3
.L59:
	.loc 3 407 4
	lw	a3,-24(s0)
	andi	a3,a3,-8
	lw	a2,-20(s0)
	add	a3,a2,a3
	.loc 3 407 12
	xor	t3,a0,a4
	xor	t4,a1,a5
	sw	t3,0(a3)
	sw	t4,4(a3)
	.loc 3 408 4
	lw	a5,-28(s0)
	andi	a5,a5,-8
	addi	a5,a5,-8
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	lw	a3,-28(s0)
	andi	a3,a3,-8
	addi	a3,a3,-8
	lw	a2,-20(s0)
	add	a3,a2,a3
	.loc 3 408 12
	xori	t1,a4,0
	li	a2,-2147483648
	xor	t2,a5,a2
	sw	t1,0(a3)
	sw	t2,4(a3)
	.loc 3 409 1
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
	.size	keccak_finalize, .-keccak_finalize
	.section	.text.keccak_squeeze,"ax",@progbits
	.align	1
	.type	keccak_squeeze, @function
keccak_squeeze:
.LFB20:
	.loc 3 431 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s2,52(sp)
	sw	s3,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	.loc 3 434 8
	j	.L61
.L68:
	.loc 3 435 7
	lw	a4,-48(s0)
	lw	a5,-52(s0)
	bne	a4,a5,.L62
	.loc 3 436 7
	lw	a0,-44(s0)
	call	KeccakF1600_StatePermute
	.loc 3 437 11
	sw	zero,-48(s0)
.L62:
	.loc 3 439 10
	lw	a5,-48(s0)
	sw	a5,-20(s0)
	.loc 3 439 5
	j	.L63
.L67:
	.loc 3 440 17
	lw	a5,-20(s0)
	andi	a5,a5,-8
	lw	a4,-44(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 3 440 30
	lw	a3,-20(s0)
	andi	a3,a3,7
	.loc 3 440 27
	slli	a3,a3,3
	.loc 3 440 23
	addi	a2,a3,-32
	blt	a2,zero,.L64
	srl	s2,a5,a2
	li	s3,0
	j	.L65
.L64:
	slli	a1,a5,1
	li	a2,31
	sub	a2,a2,a3
	sll	a2,a1,a2
	srl	s2,a4,a3
	add	s2,a2,s2
	srl	s3,a5,a3
.L65:
	.loc 3 440 11
	lw	a5,-36(s0)
	addi	a4,a5,1
	sw	a4,-36(s0)
	.loc 3 440 14
	andi	a4,s2,0xff
	sb	a4,0(a5)
	.loc 3 439 41 discriminator 4
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L63:
	.loc 3 439 21 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	bgeu	a4,a5,.L66
	.loc 3 439 31 discriminator 3
	lw	a4,-48(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	.loc 3 439 21 discriminator 3
	lw	a4,-20(s0)
	bltu	a4,a5,.L67
.L66:
	.loc 3 441 16
	lw	a4,-48(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 3 441 12
	lw	a4,-40(s0)
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 3 442 9
	lw	a5,-20(s0)
	sw	a5,-48(s0)
.L61:
	.loc 3 434 9
	lw	a5,-40(s0)
	bne	a5,zero,.L68
	.loc 3 445 10
	lw	a5,-48(s0)
	.loc 3 446 1
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
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	keccak_squeeze, .-keccak_squeeze
	.section	.text.keccak_absorb_once,"ax",@progbits
	.align	1
	.type	keccak_absorb_once, @function
keccak_absorb_once:
.LFB21:
	.loc 3 466 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s2,100(sp)
	sw	s3,96(sp)
	sw	s4,92(sp)
	sw	s5,88(sp)
	sw	s6,84(sp)
	sw	s7,80(sp)
	sw	s8,76(sp)
	sw	s9,72(sp)
	sw	s10,68(sp)
	sw	s11,64(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	.cfi_offset 22, -28
	.cfi_offset 23, -32
	.cfi_offset 24, -36
	.cfi_offset 25, -40
	.cfi_offset 26, -44
	.cfi_offset 27, -48
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	mv	a5,a4
	sb	a5,-81(s0)
	.loc 3 469 8
	sw	zero,-52(s0)
	.loc 3 469 3
	j	.L71
.L72:
	.loc 3 470 6
	lw	a5,-52(s0)
	slli	a5,a5,3
	lw	a4,-68(s0)
	add	a5,a4,a5
	.loc 3 470 10
	li	a3,0
	li	a4,0
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 3 469 17 discriminator 3
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
.L71:
	.loc 3 469 12 discriminator 1
	lw	a4,-52(s0)
	li	a5,24
	bleu	a4,a5,.L72
	.loc 3 472 8
	j	.L73
.L76:
	.loc 3 473 10
	sw	zero,-52(s0)
	.loc 3 473 5
	j	.L74
.L75:
	.loc 3 474 26
	lw	a5,-52(s0)
	slli	a5,a5,3
	.loc 3 474 15
	lw	a4,-76(s0)
	add	a5,a4,a5
	mv	a0,a5
	call	load64
	mv	a2,a0
	mv	a3,a1
	.loc 3 474 8 discriminator 1
	lw	a5,-52(s0)
	slli	a5,a5,3
	lw	a4,-68(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	lw	a1,-52(s0)
	slli	a1,a1,3
	lw	a0,-68(s0)
	add	a1,a0,a1
	.loc 3 474 12 discriminator 1
	xor	a0,a2,a4
	sw	a0,-96(s0)
	xor	a5,a3,a5
	sw	a5,-92(s0)
	lw	a5,-96(s0)
	lw	a6,-92(s0)
	sw	a5,0(a1)
	sw	a6,4(a1)
	.loc 3 473 20 discriminator 3
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
.L74:
	.loc 3 473 16 discriminator 1
	lw	a5,-72(s0)
	srli	a5,a5,3
	.loc 3 473 14 discriminator 1
	lw	a4,-52(s0)
	bltu	a4,a5,.L75
	.loc 3 475 8
	lw	a4,-76(s0)
	lw	a5,-72(s0)
	add	a5,a4,a5
	sw	a5,-76(s0)
	.loc 3 476 11
	lw	a4,-80(s0)
	lw	a5,-72(s0)
	sub	a5,a4,a5
	sw	a5,-80(s0)
	.loc 3 477 5
	lw	a0,-68(s0)
	call	KeccakF1600_StatePermute
.L73:
	.loc 3 472 15
	lw	a4,-80(s0)
	lw	a5,-72(s0)
	bgeu	a4,a5,.L76
	.loc 3 480 8
	sw	zero,-52(s0)
	.loc 3 480 3
	j	.L77
.L80:
	.loc 3 481 6
	lw	a5,-52(s0)
	andi	a5,a5,-8
	lw	a4,-68(s0)
	add	a5,a4,a5
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 3 481 27
	lw	a4,-76(s0)
	lw	a5,-52(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 3 481 15
	mv	s8,a5
	li	s9,0
	.loc 3 481 38
	lw	a5,-52(s0)
	andi	a5,a5,7
	.loc 3 481 35
	slli	a5,a5,3
	.loc 3 481 31
	addi	a4,a5,-32
	blt	a4,zero,.L78
	sll	s5,s8,a4
	li	s4,0
	j	.L79
.L78:
	srli	a1,s8,1
	li	a4,31
	sub	a4,a4,a5
	srl	a4,a1,a4
	sll	s5,s9,a5
	add	s5,a4,s5
	sll	s4,s8,a5
.L79:
	.loc 3 481 6
	lw	a5,-52(s0)
	andi	a5,a5,-8
	lw	a4,-68(s0)
	add	a5,a4,a5
	.loc 3 481 12
	xor	a4,a2,s4
	sw	a4,-104(s0)
	xor	a4,a3,s5
	sw	a4,-100(s0)
	lw	a3,-104(s0)
	lw	a4,-100(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 3 480 20 discriminator 3
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
.L77:
	.loc 3 480 12 discriminator 1
	lw	a4,-52(s0)
	lw	a5,-80(s0)
	bltu	a4,a5,.L80
	.loc 3 483 4
	lw	a5,-52(s0)
	andi	a5,a5,-8
	lw	a4,-68(s0)
	add	a5,a4,a5
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 3 483 13
	lbu	a5,-81(s0)
	andi	a5,a5,0xff
	mv	s6,a5
	li	s7,0
	.loc 3 483 32
	lw	a5,-52(s0)
	andi	a5,a5,7
	.loc 3 483 29
	slli	a5,a5,3
	.loc 3 483 25
	addi	a4,a5,-32
	blt	a4,zero,.L81
	sll	s3,s6,a4
	li	s2,0
	j	.L82
.L81:
	srli	a1,s6,1
	li	a4,31
	sub	a4,a4,a5
	srl	a4,a1,a4
	sll	s3,s7,a5
	add	s3,a4,s3
	sll	s2,s6,a5
.L82:
	.loc 3 483 4
	lw	a5,-52(s0)
	andi	a5,a5,-8
	lw	a4,-68(s0)
	add	a5,a4,a5
	.loc 3 483 10
	xor	a4,a2,s2
	sw	a4,-112(s0)
	xor	a4,a3,s3
	sw	a4,-108(s0)
	lw	a3,-112(s0)
	lw	a4,-108(s0)
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 3 484 4
	lw	a5,-72(s0)
	addi	a5,a5,-1
	andi	a5,a5,-8
	lw	a4,-68(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	lw	a3,-72(s0)
	addi	a3,a3,-1
	andi	a3,a3,-8
	lw	a2,-68(s0)
	add	a3,a2,a3
	.loc 3 484 14
	xori	s10,a4,0
	li	a2,-2147483648
	xor	s11,a5,a2
	sw	s10,0(a3)
	sw	s11,4(a3)
	.loc 3 485 1
	nop
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	lw	s2,100(sp)
	.cfi_restore 18
	lw	s3,96(sp)
	.cfi_restore 19
	lw	s4,92(sp)
	.cfi_restore 20
	lw	s5,88(sp)
	.cfi_restore 21
	lw	s6,84(sp)
	.cfi_restore 22
	lw	s7,80(sp)
	.cfi_restore 23
	lw	s8,76(sp)
	.cfi_restore 24
	lw	s9,72(sp)
	.cfi_restore 25
	lw	s10,68(sp)
	.cfi_restore 26
	lw	s11,64(sp)
	.cfi_restore 27
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	keccak_absorb_once, .-keccak_absorb_once
	.section	.text.keccak_squeezeblocks,"ax",@progbits
	.align	1
	.type	keccak_squeezeblocks, @function
keccak_squeezeblocks:
.LFB22:
	.loc 3 504 1
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
	.loc 3 507 8
	j	.L84
.L87:
	.loc 3 508 5
	lw	a0,-44(s0)
	call	KeccakF1600_StatePermute
	.loc 3 509 10
	sw	zero,-20(s0)
	.loc 3 509 5
	j	.L85
.L86:
	.loc 3 510 20
	lw	a5,-20(s0)
	slli	a5,a5,3
	.loc 3 510 7
	lw	a4,-36(s0)
	add	a3,a4,a5
	.loc 3 510 25
	lw	a5,-20(s0)
	slli	a5,a5,3
	lw	a4,-44(s0)
	add	a5,a4,a5
	.loc 3 510 7
	lw	a4,0(a5)
	lw	a5,4(a5)
	mv	a1,a4
	mv	a2,a5
	mv	a0,a3
	call	store64
	.loc 3 509 20 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L85:
	.loc 3 509 16 discriminator 1
	lw	a5,-48(s0)
	srli	a5,a5,3
	.loc 3 509 14 discriminator 1
	lw	a4,-20(s0)
	bltu	a4,a5,.L86
	.loc 3 511 9
	lw	a4,-36(s0)
	lw	a5,-48(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 3 512 13
	lw	a5,-40(s0)
	addi	a5,a5,-1
	sw	a5,-40(s0)
.L84:
	.loc 3 507 9
	lw	a5,-40(s0)
	bne	a5,zero,.L87
	.loc 3 514 1
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
.LFE22:
	.size	keccak_squeezeblocks, .-keccak_squeezeblocks
	.section	.text.pqcrystals_kyber_fips202_ref_shake128_init,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber_fips202_ref_shake128_init
	.type	pqcrystals_kyber_fips202_ref_shake128_init, @function
pqcrystals_kyber_fips202_ref_shake128_init:
.LFB23:
	.loc 3 524 1
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
	.loc 3 525 20
	lw	a5,-20(s0)
	.loc 3 525 3
	mv	a0,a5
	call	keccak_init
	.loc 3 526 14
	lw	a5,-20(s0)
	sw	zero,200(a5)
	.loc 3 527 1
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
.LFE23:
	.size	pqcrystals_kyber_fips202_ref_shake128_init, .-pqcrystals_kyber_fips202_ref_shake128_init
	.section	.text.pqcrystals_kyber_fips202_ref_shake128_absorb,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber_fips202_ref_shake128_absorb
	.type	pqcrystals_kyber_fips202_ref_shake128_absorb, @function
pqcrystals_kyber_fips202_ref_shake128_absorb:
.LFB24:
	.loc 3 539 1
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
	.loc 3 540 35
	lw	a0,-20(s0)
	.loc 3 540 16
	lw	a5,-20(s0)
	lw	a5,200(a5)
	lw	a4,-28(s0)
	lw	a3,-24(s0)
	li	a2,168
	mv	a1,a5
	call	keccak_absorb
	mv	a4,a0
	.loc 3 540 14 discriminator 1
	lw	a5,-20(s0)
	sw	a4,200(a5)
	.loc 3 541 1
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
.LFE24:
	.size	pqcrystals_kyber_fips202_ref_shake128_absorb, .-pqcrystals_kyber_fips202_ref_shake128_absorb
	.section	.text.pqcrystals_kyber_fips202_ref_shake128_finalize,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber_fips202_ref_shake128_finalize
	.type	pqcrystals_kyber_fips202_ref_shake128_finalize, @function
pqcrystals_kyber_fips202_ref_shake128_finalize:
.LFB25:
	.loc 3 551 1
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
	.loc 3 552 24
	lw	a4,-20(s0)
	.loc 3 552 3
	lw	a5,-20(s0)
	lw	a5,200(a5)
	li	a3,31
	li	a2,168
	mv	a1,a5
	mv	a0,a4
	call	keccak_finalize
	.loc 3 553 14
	lw	a5,-20(s0)
	li	a4,168
	sw	a4,200(a5)
	.loc 3 554 1
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
.LFE25:
	.size	pqcrystals_kyber_fips202_ref_shake128_finalize, .-pqcrystals_kyber_fips202_ref_shake128_finalize
	.section	.text.pqcrystals_kyber_fips202_ref_shake128_squeeze,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber_fips202_ref_shake128_squeeze
	.type	pqcrystals_kyber_fips202_ref_shake128_squeeze, @function
pqcrystals_kyber_fips202_ref_shake128_squeeze:
.LFB26:
	.loc 3 567 1
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
	.loc 3 568 49
	lw	a2,-28(s0)
	.loc 3 568 16
	lw	a5,-28(s0)
	lw	a5,200(a5)
	li	a4,168
	mv	a3,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	keccak_squeeze
	mv	a4,a0
	.loc 3 568 14 discriminator 1
	lw	a5,-28(s0)
	sw	a4,200(a5)
	.loc 3 569 1
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
	.size	pqcrystals_kyber_fips202_ref_shake128_squeeze, .-pqcrystals_kyber_fips202_ref_shake128_squeeze
	.section	.text.pqcrystals_kyber_fips202_ref_shake128_absorb_once,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber_fips202_ref_shake128_absorb_once
	.type	pqcrystals_kyber_fips202_ref_shake128_absorb_once, @function
pqcrystals_kyber_fips202_ref_shake128_absorb_once:
.LFB27:
	.loc 3 581 1
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
	.loc 3 582 27
	lw	a5,-20(s0)
	.loc 3 582 3
	li	a4,31
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	li	a1,168
	mv	a0,a5
	call	keccak_absorb_once
	.loc 3 583 14
	lw	a5,-20(s0)
	li	a4,168
	sw	a4,200(a5)
	.loc 3 584 1
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
.LFE27:
	.size	pqcrystals_kyber_fips202_ref_shake128_absorb_once, .-pqcrystals_kyber_fips202_ref_shake128_absorb_once
	.section	.text.pqcrystals_kyber_fips202_ref_shake128_squeezeblocks,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber_fips202_ref_shake128_squeezeblocks
	.type	pqcrystals_kyber_fips202_ref_shake128_squeezeblocks, @function
pqcrystals_kyber_fips202_ref_shake128_squeezeblocks:
.LFB28:
	.loc 3 599 1
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
	.loc 3 600 43
	lw	a5,-28(s0)
	.loc 3 600 3
	li	a3,168
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	keccak_squeezeblocks
	.loc 3 601 1
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
.LFE28:
	.size	pqcrystals_kyber_fips202_ref_shake128_squeezeblocks, .-pqcrystals_kyber_fips202_ref_shake128_squeezeblocks
	.section	.text.pqcrystals_kyber_fips202_ref_shake256_init,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber_fips202_ref_shake256_init
	.type	pqcrystals_kyber_fips202_ref_shake256_init, @function
pqcrystals_kyber_fips202_ref_shake256_init:
.LFB29:
	.loc 3 611 1
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
	.loc 3 612 20
	lw	a5,-20(s0)
	.loc 3 612 3
	mv	a0,a5
	call	keccak_init
	.loc 3 613 14
	lw	a5,-20(s0)
	sw	zero,200(a5)
	.loc 3 614 1
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
.LFE29:
	.size	pqcrystals_kyber_fips202_ref_shake256_init, .-pqcrystals_kyber_fips202_ref_shake256_init
	.section	.text.pqcrystals_kyber_fips202_ref_shake256_absorb,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber_fips202_ref_shake256_absorb
	.type	pqcrystals_kyber_fips202_ref_shake256_absorb, @function
pqcrystals_kyber_fips202_ref_shake256_absorb:
.LFB30:
	.loc 3 626 1
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
	.loc 3 627 35
	lw	a0,-20(s0)
	.loc 3 627 16
	lw	a5,-20(s0)
	lw	a5,200(a5)
	lw	a4,-28(s0)
	lw	a3,-24(s0)
	li	a2,136
	mv	a1,a5
	call	keccak_absorb
	mv	a4,a0
	.loc 3 627 14 discriminator 1
	lw	a5,-20(s0)
	sw	a4,200(a5)
	.loc 3 628 1
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
.LFE30:
	.size	pqcrystals_kyber_fips202_ref_shake256_absorb, .-pqcrystals_kyber_fips202_ref_shake256_absorb
	.section	.text.pqcrystals_kyber_fips202_ref_shake256_finalize,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber_fips202_ref_shake256_finalize
	.type	pqcrystals_kyber_fips202_ref_shake256_finalize, @function
pqcrystals_kyber_fips202_ref_shake256_finalize:
.LFB31:
	.loc 3 638 1
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
	.loc 3 639 24
	lw	a4,-20(s0)
	.loc 3 639 3
	lw	a5,-20(s0)
	lw	a5,200(a5)
	li	a3,31
	li	a2,136
	mv	a1,a5
	mv	a0,a4
	call	keccak_finalize
	.loc 3 640 14
	lw	a5,-20(s0)
	li	a4,136
	sw	a4,200(a5)
	.loc 3 641 1
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
.LFE31:
	.size	pqcrystals_kyber_fips202_ref_shake256_finalize, .-pqcrystals_kyber_fips202_ref_shake256_finalize
	.section	.text.pqcrystals_kyber_fips202_ref_shake256_squeeze,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber_fips202_ref_shake256_squeeze
	.type	pqcrystals_kyber_fips202_ref_shake256_squeeze, @function
pqcrystals_kyber_fips202_ref_shake256_squeeze:
.LFB32:
	.loc 3 654 1
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
	.loc 3 655 49
	lw	a2,-28(s0)
	.loc 3 655 16
	lw	a5,-28(s0)
	lw	a5,200(a5)
	li	a4,136
	mv	a3,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	keccak_squeeze
	mv	a4,a0
	.loc 3 655 14 discriminator 1
	lw	a5,-28(s0)
	sw	a4,200(a5)
	.loc 3 656 1
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
.LFE32:
	.size	pqcrystals_kyber_fips202_ref_shake256_squeeze, .-pqcrystals_kyber_fips202_ref_shake256_squeeze
	.section	.text.pqcrystals_kyber_fips202_ref_shake256_absorb_once,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber_fips202_ref_shake256_absorb_once
	.type	pqcrystals_kyber_fips202_ref_shake256_absorb_once, @function
pqcrystals_kyber_fips202_ref_shake256_absorb_once:
.LFB33:
	.loc 3 668 1
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
	.loc 3 669 27
	lw	a5,-20(s0)
	.loc 3 669 3
	li	a4,31
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	li	a1,136
	mv	a0,a5
	call	keccak_absorb_once
	.loc 3 670 14
	lw	a5,-20(s0)
	li	a4,136
	sw	a4,200(a5)
	.loc 3 671 1
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
.LFE33:
	.size	pqcrystals_kyber_fips202_ref_shake256_absorb_once, .-pqcrystals_kyber_fips202_ref_shake256_absorb_once
	.section	.text.pqcrystals_kyber_fips202_ref_shake256_squeezeblocks,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber_fips202_ref_shake256_squeezeblocks
	.type	pqcrystals_kyber_fips202_ref_shake256_squeezeblocks, @function
pqcrystals_kyber_fips202_ref_shake256_squeezeblocks:
.LFB34:
	.loc 3 686 1
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
	.loc 3 687 43
	lw	a5,-28(s0)
	.loc 3 687 3
	li	a3,136
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	keccak_squeezeblocks
	.loc 3 688 1
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
.LFE34:
	.size	pqcrystals_kyber_fips202_ref_shake256_squeezeblocks, .-pqcrystals_kyber_fips202_ref_shake256_squeezeblocks
	.section	.text.pqcrystals_kyber_fips202_ref_shake128,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber_fips202_ref_shake128
	.type	pqcrystals_kyber_fips202_ref_shake128, @function
pqcrystals_kyber_fips202_ref_shake128:
.LFB35:
	.loc 3 701 1
	.cfi_startproc
	addi	sp,sp,-256
	.cfi_def_cfa_offset 256
	sw	ra,252(sp)
	sw	s0,248(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,256
	.cfi_def_cfa 8, 0
	sw	a0,-244(s0)
	sw	a1,-248(s0)
	sw	a2,-252(s0)
	sw	a3,-256(s0)
	.loc 3 705 3
	addi	a5,s0,-232
	lw	a2,-256(s0)
	lw	a1,-252(s0)
	mv	a0,a5
	call	pqcrystals_kyber_fips202_ref_shake128_absorb_once
	.loc 3 706 11
	lw	a5,-248(s0)
	srli	a4,a5,3
	li	a5,409042944
	addi	a5,a5,1561
	mulhu	a5,a4,a5
	srli	a5,a5,1
	sw	a5,-20(s0)
	.loc 3 707 3
	addi	a5,s0,-232
	mv	a2,a5
	lw	a1,-20(s0)
	lw	a0,-244(s0)
	call	pqcrystals_kyber_fips202_ref_shake128_squeezeblocks
	.loc 3 708 20
	lw	a4,-20(s0)
	li	a5,168
	mul	a5,a4,a5
	.loc 3 708 10
	lw	a4,-248(s0)
	sub	a5,a4,a5
	sw	a5,-248(s0)
	.loc 3 709 17
	lw	a4,-20(s0)
	li	a5,168
	mul	a5,a4,a5
	.loc 3 709 7
	lw	a4,-244(s0)
	add	a5,a4,a5
	sw	a5,-244(s0)
	.loc 3 710 3
	addi	a5,s0,-232
	mv	a2,a5
	lw	a1,-248(s0)
	lw	a0,-244(s0)
	call	pqcrystals_kyber_fips202_ref_shake128_squeeze
	.loc 3 711 1
	nop
	lw	ra,252(sp)
	.cfi_restore 1
	lw	s0,248(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 256
	addi	sp,sp,256
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE35:
	.size	pqcrystals_kyber_fips202_ref_shake128, .-pqcrystals_kyber_fips202_ref_shake128
	.section	.text.pqcrystals_kyber_fips202_ref_shake256,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber_fips202_ref_shake256
	.type	pqcrystals_kyber_fips202_ref_shake256, @function
pqcrystals_kyber_fips202_ref_shake256:
.LFB36:
	.loc 3 724 1
	.cfi_startproc
	addi	sp,sp,-256
	.cfi_def_cfa_offset 256
	sw	ra,252(sp)
	sw	s0,248(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,256
	.cfi_def_cfa 8, 0
	sw	a0,-244(s0)
	sw	a1,-248(s0)
	sw	a2,-252(s0)
	sw	a3,-256(s0)
	.loc 3 728 3
	addi	a5,s0,-232
	lw	a2,-256(s0)
	lw	a1,-252(s0)
	mv	a0,a5
	call	pqcrystals_kyber_fips202_ref_shake256_absorb_once
	.loc 3 729 11
	lw	a4,-248(s0)
	li	a5,-252645376
	addi	a5,a5,241
	mulhu	a5,a4,a5
	srli	a5,a5,7
	sw	a5,-20(s0)
	.loc 3 730 3
	addi	a5,s0,-232
	mv	a2,a5
	lw	a1,-20(s0)
	lw	a0,-244(s0)
	call	pqcrystals_kyber_fips202_ref_shake256_squeezeblocks
	.loc 3 731 20
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	add	a5,a5,a4
	slli	a5,a5,3
	mv	a4,a5
	.loc 3 731 10
	lw	a5,-248(s0)
	sub	a5,a5,a4
	sw	a5,-248(s0)
	.loc 3 732 17
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	add	a5,a5,a4
	slli	a5,a5,3
	mv	a4,a5
	.loc 3 732 7
	lw	a5,-244(s0)
	add	a5,a5,a4
	sw	a5,-244(s0)
	.loc 3 733 3
	addi	a5,s0,-232
	mv	a2,a5
	lw	a1,-248(s0)
	lw	a0,-244(s0)
	call	pqcrystals_kyber_fips202_ref_shake256_squeeze
	.loc 3 734 1
	nop
	lw	ra,252(sp)
	.cfi_restore 1
	lw	s0,248(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 256
	addi	sp,sp,256
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE36:
	.size	pqcrystals_kyber_fips202_ref_shake256, .-pqcrystals_kyber_fips202_ref_shake256
	.section	.text.pqcrystals_kyber_fips202_ref_sha3_256,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber_fips202_ref_sha3_256
	.type	pqcrystals_kyber_fips202_ref_sha3_256, @function
pqcrystals_kyber_fips202_ref_sha3_256:
.LFB37:
	.loc 3 746 1
	.cfi_startproc
	addi	sp,sp,-240
	.cfi_def_cfa_offset 240
	sw	ra,236(sp)
	sw	s0,232(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,240
	.cfi_def_cfa 8, 0
	sw	a0,-228(s0)
	sw	a1,-232(s0)
	sw	a2,-236(s0)
	.loc 3 750 3
	addi	a5,s0,-224
	li	a4,6
	lw	a3,-236(s0)
	lw	a2,-232(s0)
	li	a1,136
	mv	a0,a5
	call	keccak_absorb_once
	.loc 3 751 3
	addi	a5,s0,-224
	mv	a0,a5
	call	KeccakF1600_StatePermute
	.loc 3 752 8
	sw	zero,-20(s0)
	.loc 3 752 3
	j	.L103
.L104:
	.loc 3 753 16
	lw	a5,-20(s0)
	slli	a5,a5,3
	.loc 3 753 5
	lw	a4,-228(s0)
	add	a3,a4,a5
	lw	a4,-20(s0)
	addi	a5,s0,-224
	slli	a4,a4,3
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	mv	a1,a4
	mv	a2,a5
	mv	a0,a3
	call	store64
	.loc 3 752 16 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L103:
	.loc 3 752 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,3
	bleu	a4,a5,.L104
	.loc 3 754 1
	nop
	nop
	lw	ra,236(sp)
	.cfi_restore 1
	lw	s0,232(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 240
	addi	sp,sp,240
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE37:
	.size	pqcrystals_kyber_fips202_ref_sha3_256, .-pqcrystals_kyber_fips202_ref_sha3_256
	.section	.text.pqcrystals_kyber_fips202_ref_sha3_512,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber_fips202_ref_sha3_512
	.type	pqcrystals_kyber_fips202_ref_sha3_512, @function
pqcrystals_kyber_fips202_ref_sha3_512:
.LFB38:
	.loc 3 766 1
	.cfi_startproc
	addi	sp,sp,-240
	.cfi_def_cfa_offset 240
	sw	ra,236(sp)
	sw	s0,232(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,240
	.cfi_def_cfa 8, 0
	sw	a0,-228(s0)
	sw	a1,-232(s0)
	sw	a2,-236(s0)
	.loc 3 770 3
	addi	a5,s0,-224
	li	a4,6
	lw	a3,-236(s0)
	lw	a2,-232(s0)
	li	a1,72
	mv	a0,a5
	call	keccak_absorb_once
	.loc 3 771 3
	addi	a5,s0,-224
	mv	a0,a5
	call	KeccakF1600_StatePermute
	.loc 3 772 8
	sw	zero,-20(s0)
	.loc 3 772 3
	j	.L106
.L107:
	.loc 3 773 16
	lw	a5,-20(s0)
	slli	a5,a5,3
	.loc 3 773 5
	lw	a4,-228(s0)
	add	a3,a4,a5
	lw	a4,-20(s0)
	addi	a5,s0,-224
	slli	a4,a4,3
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	mv	a1,a4
	mv	a2,a5
	mv	a0,a3
	call	store64
	.loc 3 772 16 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L106:
	.loc 3 772 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,7
	bleu	a4,a5,.L107
	.loc 3 774 1
	nop
	nop
	lw	ra,236(sp)
	.cfi_restore 1
	lw	s0,232(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 240
	addi	sp,sp,240
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE38:
	.size	pqcrystals_kyber_fips202_ref_sha3_512, .-pqcrystals_kyber_fips202_ref_sha3_512
	.section	.text.pack_pk,"ax",@progbits
	.align	1
	.type	pack_pk, @function
pack_pk:
.LFB39:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/kyber/kyber512_ref/indcpa.c"
	.loc 4 27 1
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
	.loc 4 28 3
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	pqcrystals_kyber512_ref_polyvec_tobytes
	.loc 4 29 11
	lw	a5,-20(s0)
	addi	a5,a5,768
	.loc 4 29 3
	li	a2,32
	lw	a1,-28(s0)
	mv	a0,a5
	call	memcpy
	.loc 4 30 1
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
.LFE39:
	.size	pack_pk, .-pack_pk
	.section	.text.unpack_pk,"ax",@progbits
	.align	1
	.type	unpack_pk, @function
unpack_pk:
.LFB40:
	.loc 4 45 1
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
	.loc 4 46 3
	lw	a1,-28(s0)
	lw	a0,-20(s0)
	call	pqcrystals_kyber512_ref_polyvec_frombytes
	.loc 4 47 24
	lw	a5,-28(s0)
	addi	a5,a5,768
	.loc 4 47 3
	li	a2,32
	mv	a1,a5
	lw	a0,-24(s0)
	call	memcpy
	.loc 4 48 1
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
.LFE40:
	.size	unpack_pk, .-unpack_pk
	.section	.text.pack_sk,"ax",@progbits
	.align	1
	.type	pack_sk, @function
pack_sk:
.LFB41:
	.loc 4 59 1
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
	.loc 4 60 3
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	pqcrystals_kyber512_ref_polyvec_tobytes
	.loc 4 61 1
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
.LFE41:
	.size	pack_sk, .-pack_sk
	.section	.text.unpack_sk,"ax",@progbits
	.align	1
	.type	unpack_sk, @function
unpack_sk:
.LFB42:
	.loc 4 72 1
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
	.loc 4 73 3
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	pqcrystals_kyber512_ref_polyvec_frombytes
	.loc 4 74 1
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
.LFE42:
	.size	unpack_sk, .-unpack_sk
	.section	.text.pack_ciphertext,"ax",@progbits
	.align	1
	.type	pack_ciphertext, @function
pack_ciphertext:
.LFB43:
	.loc 4 88 1
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
	.loc 4 89 3
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	pqcrystals_kyber512_ref_polyvec_compress
	.loc 4 90 3
	lw	a5,-20(s0)
	addi	a5,a5,640
	lw	a1,-28(s0)
	mv	a0,a5
	call	pqcrystals_kyber512_ref_poly_compress
	.loc 4 91 1
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
.LFE43:
	.size	pack_ciphertext, .-pack_ciphertext
	.section	.text.unpack_ciphertext,"ax",@progbits
	.align	1
	.type	unpack_ciphertext, @function
unpack_ciphertext:
.LFB44:
	.loc 4 104 1
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
	.loc 4 105 3
	lw	a1,-28(s0)
	lw	a0,-20(s0)
	call	pqcrystals_kyber512_ref_polyvec_decompress
	.loc 4 106 3
	lw	a5,-28(s0)
	addi	a5,a5,640
	mv	a1,a5
	lw	a0,-24(s0)
	call	pqcrystals_kyber512_ref_poly_decompress
	.loc 4 107 1
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
.LFE44:
	.size	unpack_ciphertext, .-unpack_ciphertext
	.section	.text.rej_uniform,"ax",@progbits
	.align	1
	.type	rej_uniform, @function
rej_uniform:
.LFB45:
	.loc 4 126 1
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
	.loc 4 130 13
	sw	zero,-24(s0)
	.loc 4 130 7
	lw	a5,-24(s0)
	sw	a5,-20(s0)
	.loc 4 131 8
	j	.L115
.L119:
	.loc 4 132 17
	lw	a4,-44(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 4 132 47
	lw	a5,-24(s0)
	addi	a5,a5,1
	lw	a3,-44(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 4 132 31
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,8
	slli	a5,a5,16
	srai	a5,a5,16
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 4 132 62
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 4 132 10
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
	sh	a5,-26(s0)
	.loc 4 133 17
	lw	a5,-24(s0)
	addi	a5,a5,1
	lw	a4,-44(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 4 133 31
	srli	a5,a5,4
	andi	a5,a5,0xff
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 4 133 47
	lw	a5,-24(s0)
	addi	a5,a5,2
	lw	a3,-44(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 4 133 31
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,4
	slli	a5,a5,16
	srai	a5,a5,16
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 4 133 62
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 4 133 10
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
	sh	a5,-28(s0)
	.loc 4 134 9
	lw	a5,-24(s0)
	addi	a5,a5,3
	sw	a5,-24(s0)
	.loc 4 136 7
	lhu	a4,-26(s0)
	li	a5,4096
	addi	a5,a5,-768
	bgtu	a4,a5,.L116
	.loc 4 137 12
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 4 137 8
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 4 137 16
	lh	a4,-26(s0)
	sh	a4,0(a5)
.L116:
	.loc 4 138 7
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bgeu	a4,a5,.L115
	.loc 4 138 18 discriminator 1
	lhu	a4,-28(s0)
	li	a5,4096
	addi	a5,a5,-768
	bgtu	a4,a5,.L115
	.loc 4 139 12
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 4 139 8
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 4 139 16
	lh	a4,-28(s0)
	sh	a4,0(a5)
.L115:
	.loc 4 131 19
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bgeu	a4,a5,.L118
	.loc 4 131 26 discriminator 1
	lw	a5,-24(s0)
	addi	a5,a5,3
	.loc 4 131 19 discriminator 1
	lw	a4,-48(s0)
	bgeu	a4,a5,.L119
.L118:
	.loc 4 142 10
	lw	a5,-20(s0)
	.loc 4 143 1
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
.LFE45:
	.size	rej_uniform, .-rej_uniform
	.section	.text.pqcrystals_kyber512_ref_gen_matrix,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_gen_matrix
	.type	pqcrystals_kyber512_ref_gen_matrix, @function
pqcrystals_kyber512_ref_gen_matrix:
.LFB46:
	.loc 4 167 1
	.cfi_startproc
	addi	sp,sp,-768
	.cfi_def_cfa_offset 768
	sw	ra,764(sp)
	sw	s0,760(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,768
	.cfi_def_cfa 8, 0
	sw	a0,-756(s0)
	sw	a1,-760(s0)
	sw	a2,-764(s0)
	.loc 4 173 8
	sw	zero,-24(s0)
	.loc 4 173 3
	j	.L122
.L129:
	.loc 4 174 10
	sw	zero,-28(s0)
	.loc 4 174 5
	j	.L123
.L128:
	.loc 4 175 9
	lw	a5,-764(s0)
	beq	a5,zero,.L124
	.loc 4 176 9
	lw	a5,-24(s0)
	andi	a4,a5,0xff
	lw	a5,-28(s0)
	andi	a3,a5,0xff
	addi	a5,s0,-744
	mv	a2,a4
	lw	a1,-760(s0)
	mv	a0,a5
	call	pqcrystals_kyber512_ref_kyber_shake128_absorb
	j	.L125
.L124:
	.loc 4 178 9
	lw	a5,-28(s0)
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	andi	a3,a5,0xff
	addi	a5,s0,-744
	mv	a2,a4
	lw	a1,-760(s0)
	mv	a0,a5
	call	pqcrystals_kyber512_ref_kyber_shake128_absorb
.L125:
	.loc 4 180 7
	addi	a4,s0,-744
	addi	a5,s0,-536
	mv	a2,a4
	li	a1,3
	mv	a0,a5
	call	pqcrystals_kyber_fips202_ref_shake128_squeezeblocks
	.loc 4 181 14
	li	a5,504
	sw	a5,-32(s0)
	.loc 4 182 26
	lw	a5,-24(s0)
	slli	a5,a5,10
	lw	a4,-756(s0)
	add	a4,a4,a5
	.loc 4 182 36
	lw	a5,-28(s0)
	slli	a5,a5,9
	add	a5,a4,a5
	.loc 4 182 13
	addi	a4,s0,-536
	lw	a3,-32(s0)
	mv	a2,a4
	li	a1,256
	mv	a0,a5
	call	rej_uniform
	sw	a0,-20(s0)
	.loc 4 184 12
	j	.L126
.L127:
	.loc 4 185 9
	addi	a4,s0,-744
	addi	a5,s0,-536
	mv	a2,a4
	li	a1,1
	mv	a0,a5
	call	pqcrystals_kyber_fips202_ref_shake128_squeezeblocks
	.loc 4 186 16
	li	a5,168
	sw	a5,-32(s0)
	.loc 4 187 29
	lw	a5,-24(s0)
	slli	a5,a5,10
	lw	a4,-756(s0)
	add	a4,a4,a5
	.loc 4 187 28
	lw	a5,-28(s0)
	slli	a5,a5,9
	add	a4,a4,a5
	.loc 4 187 47
	lw	a5,-20(s0)
	slli	a5,a5,1
	.loc 4 187 16
	add	a0,a4,a5
	li	a4,256
	lw	a5,-20(s0)
	sub	a5,a4,a5
	addi	a4,s0,-536
	lw	a3,-32(s0)
	mv	a2,a4
	mv	a1,a5
	call	rej_uniform
	mv	a4,a0
	.loc 4 187 13 discriminator 1
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
.L126:
	.loc 4 184 17
	lw	a4,-20(s0)
	li	a5,255
	bleu	a4,a5,.L127
	.loc 4 174 18 discriminator 2
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L123:
	.loc 4 174 14 discriminator 1
	lw	a4,-28(s0)
	li	a5,1
	bleu	a4,a5,.L128
	.loc 4 173 16 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L122:
	.loc 4 173 12 discriminator 1
	lw	a4,-24(s0)
	li	a5,1
	bleu	a4,a5,.L129
	.loc 4 191 1
	nop
	nop
	lw	ra,764(sp)
	.cfi_restore 1
	lw	s0,760(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 768
	addi	sp,sp,768
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE46:
	.size	pqcrystals_kyber512_ref_gen_matrix, .-pqcrystals_kyber512_ref_gen_matrix
	.section	.text.pqcrystals_kyber512_ref_indcpa_keypair_derand,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_indcpa_keypair_derand
	.type	pqcrystals_kyber512_ref_indcpa_keypair_derand, @function
pqcrystals_kyber512_ref_indcpa_keypair_derand:
.LFB47:
	.loc 4 209 1
	.cfi_startproc
	addi	sp,sp,-1136
	.cfi_def_cfa_offset 1136
	sw	ra,1132(sp)
	sw	s0,1128(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,1136
	.cfi_def_cfa 8, 0
	addi	sp,sp,-2048
	addi	sp,sp,-2048
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a0,-1108(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a1,-1112(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a2,-1116(a5)
	.loc 4 212 18
	addi	a5,s0,-96
	sw	a5,-28(s0)
	.loc 4 213 18
	addi	a5,s0,-96
	addi	a5,a5,32
	sw	a5,-32(s0)
	.loc 4 214 11
	sb	zero,-21(s0)
	.loc 4 217 3
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	addi	a4,s0,-96
	li	a2,32
	lw	a1,-1116(a5)
	mv	a0,a4
	call	memcpy
	.loc 4 218 11
	li	a5,2
	sb	a5,-64(s0)
	.loc 4 219 3
	addi	a4,s0,-96
	addi	a5,s0,-96
	li	a2,33
	mv	a1,a4
	mv	a0,a5
	call	pqcrystals_kyber_fips202_ref_sha3_512
	.loc 4 221 3
	li	a5,-4096
	addi	a5,a5,1968
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a2,0
	lw	a1,-28(s0)
	mv	a0,a5
	call	pqcrystals_kyber512_ref_gen_matrix
	.loc 4 223 8
	sw	zero,-20(s0)
	.loc 4 223 3
	j	.L131
.L132:
	.loc 4 224 5
	li	a5,-4096
	addi	a5,a5,-1104
	addi	a5,a5,-16
	add	a4,a5,s0
	lw	a5,-20(s0)
	slli	a5,a5,9
	add	a3,a4,a5
	lbu	a5,-21(s0)
	addi	a4,a5,1
	sb	a4,-21(s0)
	mv	a2,a5
	lw	a1,-32(s0)
	mv	a0,a3
	call	pqcrystals_kyber512_ref_poly_getnoise_eta1
	.loc 4 223 16 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L131:
	.loc 4 223 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,1
	bleu	a4,a5,.L132
	.loc 4 225 8
	sw	zero,-20(s0)
	.loc 4 225 3
	j	.L133
.L134:
	.loc 4 226 5
	li	a5,-4096
	addi	a5,a5,944
	addi	a5,a5,-16
	add	a4,a5,s0
	lw	a5,-20(s0)
	slli	a5,a5,9
	add	a3,a4,a5
	lbu	a5,-21(s0)
	addi	a4,a5,1
	sb	a4,-21(s0)
	mv	a2,a5
	lw	a1,-32(s0)
	mv	a0,a3
	call	pqcrystals_kyber512_ref_poly_getnoise_eta1
	.loc 4 225 16 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L133:
	.loc 4 225 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,1
	bleu	a4,a5,.L134
	.loc 4 228 3
	li	a5,-4096
	addi	a5,a5,-1104
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a0,a5
	call	pqcrystals_kyber512_ref_polyvec_ntt
	.loc 4 229 3
	li	a5,-4096
	addi	a5,a5,944
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a0,a5
	call	pqcrystals_kyber512_ref_polyvec_ntt
	.loc 4 232 8
	sw	zero,-20(s0)
	.loc 4 232 3
	j	.L135
.L136:
	.loc 4 233 5
	li	a5,-4096
	addi	a5,a5,-80
	addi	a5,a5,-16
	add	a4,a5,s0
	lw	a5,-20(s0)
	slli	a5,a5,9
	add	a3,a4,a5
	.loc 4 233 74
	li	a5,-4096
	addi	a5,a5,1968
	addi	a5,a5,-16
	add	a4,a5,s0
	lw	a5,-20(s0)
	slli	a5,a5,10
	add	a4,a4,a5
	.loc 4 233 5
	li	a5,-4096
	addi	a5,a5,-1104
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a2,a5
	mv	a1,a4
	mv	a0,a3
	call	pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery
	.loc 4 234 5
	li	a5,-4096
	addi	a5,a5,-80
	addi	a5,a5,-16
	add	a4,a5,s0
	lw	a5,-20(s0)
	slli	a5,a5,9
	add	a5,a4,a5
	mv	a0,a5
	call	pqcrystals_kyber512_ref_poly_tomont
	.loc 4 232 16 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L135:
	.loc 4 232 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,1
	bleu	a4,a5,.L136
	.loc 4 237 3
	li	a5,-4096
	addi	a5,a5,944
	addi	a5,a5,-16
	add	a3,a5,s0
	li	a5,-4096
	addi	a5,a5,-80
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,-80
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	pqcrystals_kyber512_ref_polyvec_add
	.loc 4 238 3
	li	a5,-4096
	addi	a5,a5,-80
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a0,a5
	call	pqcrystals_kyber512_ref_polyvec_reduce
	.loc 4 240 3
	li	a5,-4096
	addi	a5,a5,-1104
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a1,a4
	lw	a0,-1112(a5)
	call	pack_sk
	.loc 4 241 3
	li	a5,-4096
	addi	a5,a5,-80
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a2,-28(s0)
	mv	a1,a4
	lw	a0,-1108(a5)
	call	pack_pk
	.loc 4 242 1
	nop
	li	t0,4096
	add	sp,sp,t0
	.cfi_def_cfa 2, 1136
	lw	ra,1132(sp)
	.cfi_restore 1
	lw	s0,1128(sp)
	.cfi_restore 8
	addi	sp,sp,1136
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE47:
	.size	pqcrystals_kyber512_ref_indcpa_keypair_derand, .-pqcrystals_kyber512_ref_indcpa_keypair_derand
	.section	.text.pqcrystals_kyber512_ref_indcpa_enc,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_indcpa_enc
	.type	pqcrystals_kyber512_ref_indcpa_enc, @function
pqcrystals_kyber512_ref_indcpa_enc:
.LFB48:
	.loc 4 265 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	li	t0,-8192
	addi	t0,t0,448
	add	sp,sp,t0
	li	a5,-8192
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a0,460(a5)
	li	a5,-8192
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a1,456(a5)
	li	a5,-8192
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a2,452(a5)
	li	a5,-8192
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a3,448(a5)
	.loc 4 268 11
	sb	zero,-21(s0)
	.loc 4 272 3
	li	a5,-8192
	addi	a5,a5,-16
	add	a5,a5,s0
	addi	a3,s0,-56
	li	a4,-4096
	addi	a4,a4,2008
	addi	a4,a4,-16
	add	a4,a4,s0
	lw	a2,452(a5)
	mv	a1,a3
	mv	a0,a4
	call	unpack_pk
	.loc 4 273 3
	li	a5,-8192
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,-8192
	addi	a4,a4,984
	addi	a4,a4,-16
	add	a4,a4,s0
	lw	a1,456(a5)
	mv	a0,a4
	call	pqcrystals_kyber512_ref_poly_frommsg
	.loc 4 274 3
	addi	a4,s0,-56
	li	a5,-4096
	addi	a5,a5,-1064
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	pqcrystals_kyber512_ref_gen_matrix
	.loc 4 276 8
	sw	zero,-20(s0)
	.loc 4 276 3
	j	.L138
.L139:
	.loc 4 277 54
	lw	a5,-20(s0)
	slli	a5,a5,9
	.loc 4 277 5
	addi	a4,s0,-1080
	add	a3,a4,a5
	lbu	a5,-21(s0)
	addi	a4,a5,1
	sb	a4,-21(s0)
	li	a4,-8192
	addi	a4,a4,-16
	add	a4,a4,s0
	mv	a2,a5
	lw	a1,448(a4)
	mv	a0,a3
	call	pqcrystals_kyber512_ref_poly_getnoise_eta1
	.loc 4 276 16 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L138:
	.loc 4 276 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,1
	bleu	a4,a5,.L139
	.loc 4 278 8
	sw	zero,-20(s0)
	.loc 4 278 3
	j	.L140
.L141:
	.loc 4 279 54
	lw	a5,-20(s0)
	slli	a5,a5,9
	.loc 4 279 5
	li	a4,-4096
	addi	a4,a4,984
	addi	a4,a4,-16
	add	a4,a4,s0
	add	a3,a4,a5
	lbu	a5,-21(s0)
	addi	a4,a5,1
	sb	a4,-21(s0)
	li	a4,-8192
	addi	a4,a4,-16
	add	a4,a4,s0
	mv	a2,a5
	lw	a1,448(a4)
	mv	a0,a3
	call	pqcrystals_kyber512_ref_poly_getnoise_eta2
	.loc 4 278 16 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L140:
	.loc 4 278 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,1
	bleu	a4,a5,.L141
	.loc 4 280 3
	lbu	a5,-21(s0)
	addi	a4,a5,1
	sb	a4,-21(s0)
	li	a4,-8192
	addi	a4,a4,-16
	add	a4,a4,s0
	li	a3,-8192
	addi	a3,a3,472
	addi	a3,a3,-16
	add	a3,a3,s0
	mv	a2,a5
	lw	a1,448(a4)
	mv	a0,a3
	call	pqcrystals_kyber512_ref_poly_getnoise_eta2
	.loc 4 282 3
	addi	a5,s0,-1080
	mv	a0,a5
	call	pqcrystals_kyber512_ref_polyvec_ntt
	.loc 4 285 8
	sw	zero,-20(s0)
	.loc 4 285 3
	j	.L142
.L143:
	.loc 4 286 5
	li	a5,-8192
	addi	a5,a5,2008
	addi	a5,a5,-16
	add	a4,a5,s0
	lw	a5,-20(s0)
	slli	a5,a5,9
	add	a3,a4,a5
	.loc 4 286 71
	li	a5,-4096
	addi	a5,a5,-1064
	addi	a5,a5,-16
	add	a4,a5,s0
	lw	a5,-20(s0)
	slli	a5,a5,10
	add	a5,a4,a5
	.loc 4 286 5
	addi	a4,s0,-1080
	mv	a2,a4
	mv	a1,a5
	mv	a0,a3
	call	pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery
	.loc 4 285 16 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L142:
	.loc 4 285 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,1
	bleu	a4,a5,.L143
	.loc 4 288 3
	addi	a3,s0,-1080
	li	a5,-4096
	addi	a5,a5,2008
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-8192
	addi	a5,a5,1496
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery
	.loc 4 290 3
	li	a5,-8192
	addi	a5,a5,2008
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a0,a5
	call	pqcrystals_kyber512_ref_polyvec_invntt_tomont
	.loc 4 291 3
	li	a5,-8192
	addi	a5,a5,1496
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a0,a5
	call	pqcrystals_kyber512_ref_poly_invntt_tomont
	.loc 4 293 3
	li	a5,-4096
	addi	a5,a5,984
	addi	a5,a5,-16
	add	a3,a5,s0
	li	a5,-8192
	addi	a5,a5,2008
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-8192
	addi	a5,a5,2008
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	pqcrystals_kyber512_ref_polyvec_add
	.loc 4 294 3
	li	a5,-8192
	addi	a5,a5,472
	addi	a5,a5,-16
	add	a3,a5,s0
	li	a5,-8192
	addi	a5,a5,1496
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-8192
	addi	a5,a5,1496
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	pqcrystals_kyber512_ref_poly_add
	.loc 4 295 3
	li	a5,-8192
	addi	a5,a5,984
	addi	a5,a5,-16
	add	a3,a5,s0
	li	a5,-8192
	addi	a5,a5,1496
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-8192
	addi	a5,a5,1496
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	pqcrystals_kyber512_ref_poly_add
	.loc 4 296 3
	li	a5,-8192
	addi	a5,a5,2008
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a0,a5
	call	pqcrystals_kyber512_ref_polyvec_reduce
	.loc 4 297 3
	li	a5,-8192
	addi	a5,a5,1496
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a0,a5
	call	pqcrystals_kyber512_ref_poly_reduce
	.loc 4 299 3
	li	a5,-8192
	addi	a5,a5,1496
	addi	a5,a5,-16
	add	a3,a5,s0
	li	a5,-8192
	addi	a5,a5,2008
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-8192
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a2,a3
	mv	a1,a4
	lw	a0,460(a5)
	call	pack_ciphertext
	.loc 4 300 1
	nop
	li	t0,8192
	addi	t0,t0,-448
	add	sp,sp,t0
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE48:
	.size	pqcrystals_kyber512_ref_indcpa_enc, .-pqcrystals_kyber512_ref_indcpa_enc
	.section	.text.pqcrystals_kyber512_ref_indcpa_dec,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_indcpa_dec
	.type	pqcrystals_kyber512_ref_indcpa_dec, @function
pqcrystals_kyber512_ref_indcpa_dec:
.LFB49:
	.loc 4 318 1
	.cfi_startproc
	addi	sp,sp,-2032
	.cfi_def_cfa_offset 2032
	sw	ra,2028(sp)
	sw	s0,2024(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,2032
	.cfi_def_cfa 8, 0
	addi	sp,sp,-1072
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a0,1020(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a1,1016(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a2,1012(a5)
	.loc 4 322 3
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,-4096
	addi	a4,a4,1536
	addi	a4,a4,-16
	add	a3,a4,s0
	addi	a4,s0,-1040
	lw	a2,1016(a5)
	mv	a1,a3
	mv	a0,a4
	call	unpack_ciphertext
	.loc 4 323 3
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	addi	a4,s0,-2048
	addi	a4,a4,-16
	lw	a1,1012(a5)
	mv	a0,a4
	call	unpack_sk
	.loc 4 325 3
	addi	a5,s0,-1040
	mv	a0,a5
	call	pqcrystals_kyber512_ref_polyvec_ntt
	.loc 4 326 3
	addi	a3,s0,-1040
	addi	a4,s0,-2048
	addi	a4,a4,-16
	li	a5,-4096
	addi	a5,a5,1024
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery
	.loc 4 327 3
	li	a5,-4096
	addi	a5,a5,1024
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a0,a5
	call	pqcrystals_kyber512_ref_poly_invntt_tomont
	.loc 4 329 3
	li	a5,-4096
	addi	a5,a5,1024
	addi	a5,a5,-16
	add	a3,a5,s0
	li	a5,-4096
	addi	a5,a5,1536
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,1024
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	pqcrystals_kyber512_ref_poly_sub
	.loc 4 330 3
	li	a5,-4096
	addi	a5,a5,1024
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a0,a5
	call	pqcrystals_kyber512_ref_poly_reduce
	.loc 4 332 3
	li	a5,-4096
	addi	a5,a5,1024
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a1,a4
	lw	a0,1020(a5)
	call	pqcrystals_kyber512_ref_poly_tomsg
	.loc 4 333 1
	nop
	addi	sp,sp,1072
	.cfi_def_cfa 2, 2032
	lw	ra,2028(sp)
	.cfi_restore 1
	lw	s0,2024(sp)
	.cfi_restore 8
	addi	sp,sp,2032
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE49:
	.size	pqcrystals_kyber512_ref_indcpa_dec, .-pqcrystals_kyber512_ref_indcpa_dec
	.section	.text.pqcrystals_kyber512_ref_keypair_derand,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_keypair_derand
	.type	pqcrystals_kyber512_ref_keypair_derand, @function
pqcrystals_kyber512_ref_keypair_derand:
.LFB50:
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/kyber/kyber512_ref/kem.c"
	.loc 5 29 1
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
	.loc 5 30 3
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	pqcrystals_kyber512_ref_indcpa_keypair_derand
	.loc 5 31 12
	lw	a5,-24(s0)
	addi	a5,a5,768
	.loc 5 31 3
	li	a2,800
	lw	a1,-20(s0)
	mv	a0,a5
	call	memcpy
	.loc 5 32 3
	lw	a5,-24(s0)
	addi	a5,a5,1568
	li	a2,800
	lw	a1,-20(s0)
	mv	a0,a5
	call	pqcrystals_kyber_fips202_ref_sha3_256
	.loc 5 34 52
	lw	a5,-24(s0)
	addi	a4,a5,1600
	.loc 5 34 62
	lw	a5,-28(s0)
	addi	a5,a5,32
	.loc 5 34 3
	li	a2,32
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 5 35 10
	li	a5,0
	.loc 5 36 1
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
.LFE50:
	.size	pqcrystals_kyber512_ref_keypair_derand, .-pqcrystals_kyber512_ref_keypair_derand
	.section	.text.pqcrystals_kyber512_ref_keypair,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_keypair
	.type	pqcrystals_kyber512_ref_keypair, @function
pqcrystals_kyber512_ref_keypair:
.LFB51:
	.loc 5 53 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	.loc 5 55 3
	addi	a5,s0,-80
	li	a1,64
	mv	a0,a5
	call	randombytes
	.loc 5 56 3
	addi	a5,s0,-80
	mv	a2,a5
	lw	a1,-88(s0)
	lw	a0,-84(s0)
	call	pqcrystals_kyber512_ref_keypair_derand
	.loc 5 57 10
	li	a5,0
	.loc 5 58 1
	mv	a0,a5
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE51:
	.size	pqcrystals_kyber512_ref_keypair, .-pqcrystals_kyber512_ref_keypair
	.section	.text.pqcrystals_kyber512_ref_enc_derand,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_enc_derand
	.type	pqcrystals_kyber512_ref_enc_derand, @function
pqcrystals_kyber512_ref_enc_derand:
.LFB52:
	.loc 5 81 1
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
	sw	a3,-160(s0)
	.loc 5 86 3
	addi	a5,s0,-80
	li	a2,32
	lw	a1,-160(s0)
	mv	a0,a5
	call	memcpy
	.loc 5 89 3
	addi	a5,s0,-80
	addi	a5,a5,32
	li	a2,800
	lw	a1,-156(s0)
	mv	a0,a5
	call	pqcrystals_kyber_fips202_ref_sha3_256
	.loc 5 90 3
	addi	a4,s0,-80
	addi	a5,s0,-144
	li	a2,64
	mv	a1,a4
	mv	a0,a5
	call	pqcrystals_kyber_fips202_ref_sha3_512
	.loc 5 93 3
	addi	a5,s0,-144
	addi	a5,a5,32
	addi	a4,s0,-80
	mv	a3,a5
	lw	a2,-156(s0)
	mv	a1,a4
	lw	a0,-148(s0)
	call	pqcrystals_kyber512_ref_indcpa_enc
	.loc 5 95 3
	addi	a5,s0,-144
	li	a2,32
	mv	a1,a5
	lw	a0,-152(s0)
	call	memcpy
	.loc 5 96 10
	li	a5,0
	.loc 5 97 1
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
.LFE52:
	.size	pqcrystals_kyber512_ref_enc_derand, .-pqcrystals_kyber512_ref_enc_derand
	.section	.text.pqcrystals_kyber512_ref_enc,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_enc
	.type	pqcrystals_kyber512_ref_enc, @function
pqcrystals_kyber512_ref_enc:
.LFB53:
	.loc 5 117 1
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
	sw	a2,-60(s0)
	.loc 5 119 3
	addi	a5,s0,-48
	li	a1,32
	mv	a0,a5
	call	randombytes
	.loc 5 120 3
	addi	a5,s0,-48
	mv	a3,a5
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	pqcrystals_kyber512_ref_enc_derand
	.loc 5 121 10
	li	a5,0
	.loc 5 122 1
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
.LFE53:
	.size	pqcrystals_kyber512_ref_enc, .-pqcrystals_kyber512_ref_enc
	.section	.text.pqcrystals_kyber512_ref_dec,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_dec
	.type	pqcrystals_kyber512_ref_dec, @function
pqcrystals_kyber512_ref_dec:
.LFB54:
	.loc 5 144 1
	.cfi_startproc
	addi	sp,sp,-944
	.cfi_def_cfa_offset 944
	sw	ra,940(sp)
	sw	s0,936(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,944
	.cfi_def_cfa 8, 0
	sw	a0,-932(s0)
	sw	a1,-936(s0)
	sw	a2,-940(s0)
	.loc 5 151 18
	lw	a5,-940(s0)
	addi	a5,a5,768
	sw	a5,-20(s0)
	.loc 5 153 3
	addi	a5,s0,-88
	lw	a2,-940(s0)
	lw	a1,-936(s0)
	mv	a0,a5
	call	pqcrystals_kyber512_ref_indcpa_dec
	.loc 5 156 3
	addi	a5,s0,-88
	addi	a5,a5,32
	.loc 5 156 60
	lw	a4,-940(s0)
	addi	a4,a4,1568
	.loc 5 156 3
	li	a2,32
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 5 157 3
	addi	a4,s0,-88
	addi	a5,s0,-152
	li	a2,64
	mv	a1,a4
	mv	a0,a5
	call	pqcrystals_kyber_fips202_ref_sha3_512
	.loc 5 160 3
	addi	a5,s0,-152
	addi	a5,a5,32
	addi	a1,s0,-88
	addi	a4,s0,-920
	mv	a3,a5
	lw	a2,-20(s0)
	mv	a0,a4
	call	pqcrystals_kyber512_ref_indcpa_enc
	.loc 5 162 10
	addi	a5,s0,-920
	li	a2,768
	mv	a1,a5
	lw	a0,-936(s0)
	call	pqcrystals_kyber512_ref_verify
	sw	a0,-24(s0)
	.loc 5 165 3
	lw	a5,-940(s0)
	addi	a5,a5,1600
	lw	a2,-936(s0)
	mv	a1,a5
	lw	a0,-932(s0)
	call	pqcrystals_kyber512_ref_kyber_shake256_rkprf
	.loc 5 168 3
	lw	a5,-24(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a4,a5
	addi	a5,s0,-152
	mv	a3,a4
	li	a2,32
	mv	a1,a5
	lw	a0,-932(s0)
	call	pqcrystals_kyber512_ref_cmov
	.loc 5 170 10
	li	a5,0
	.loc 5 171 1
	mv	a0,a5
	lw	ra,940(sp)
	.cfi_restore 1
	lw	s0,936(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 944
	addi	sp,sp,944
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE54:
	.size	pqcrystals_kyber512_ref_dec, .-pqcrystals_kyber512_ref_dec
	.globl	pqcrystals_kyber512_ref_zetas
	.section	.rodata.pqcrystals_kyber512_ref_zetas,"a"
	.align	2
	.type	pqcrystals_kyber512_ref_zetas, @object
	.size	pqcrystals_kyber512_ref_zetas, 256
pqcrystals_kyber512_ref_zetas:
	.half	-1044
	.half	-758
	.half	-359
	.half	-1517
	.half	1493
	.half	1422
	.half	287
	.half	202
	.half	-171
	.half	622
	.half	1577
	.half	182
	.half	962
	.half	-1202
	.half	-1474
	.half	1468
	.half	573
	.half	-1325
	.half	264
	.half	383
	.half	-829
	.half	1458
	.half	-1602
	.half	-130
	.half	-681
	.half	1017
	.half	732
	.half	608
	.half	-1542
	.half	411
	.half	-205
	.half	-1571
	.half	1223
	.half	652
	.half	-552
	.half	1015
	.half	-1293
	.half	1491
	.half	-282
	.half	-1544
	.half	516
	.half	-8
	.half	-320
	.half	-666
	.half	-1618
	.half	-1162
	.half	126
	.half	1469
	.half	-853
	.half	-90
	.half	-271
	.half	830
	.half	107
	.half	-1421
	.half	-247
	.half	-951
	.half	-398
	.half	961
	.half	-1508
	.half	-725
	.half	448
	.half	-1065
	.half	677
	.half	-1275
	.half	-1103
	.half	430
	.half	555
	.half	843
	.half	-1251
	.half	871
	.half	1550
	.half	105
	.half	422
	.half	587
	.half	177
	.half	-235
	.half	-291
	.half	-460
	.half	1574
	.half	1653
	.half	-246
	.half	778
	.half	1159
	.half	-147
	.half	-777
	.half	1483
	.half	-602
	.half	1119
	.half	-1590
	.half	644
	.half	-872
	.half	349
	.half	418
	.half	329
	.half	-156
	.half	-75
	.half	817
	.half	1097
	.half	603
	.half	610
	.half	1322
	.half	-1285
	.half	-1465
	.half	384
	.half	-1215
	.half	-136
	.half	1218
	.half	-1335
	.half	-874
	.half	220
	.half	-1187
	.half	-1659
	.half	-1185
	.half	-1530
	.half	-1278
	.half	794
	.half	-1510
	.half	-854
	.half	-870
	.half	478
	.half	-108
	.half	-308
	.half	996
	.half	991
	.half	958
	.half	-1460
	.half	1522
	.half	1628
	.section	.text.fqmul,"ax",@progbits
	.align	1
	.type	fqmul, @function
fqmul:
.LFB55:
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/kyber/kyber512_ref/ntt.c"
	.loc 6 68 44
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
	mv	a4,a1
	sh	a5,-18(s0)
	mv	a5,a4
	sh	a5,-20(s0)
	.loc 6 69 52
	lh	a4,-18(s0)
	.loc 6 69 10
	lh	a5,-20(s0)
	.loc 6 69 62
	mul	a5,a4,a5
	.loc 6 69 10
	mv	a0,a5
	call	pqcrystals_kyber512_ref_montgomery_reduce
	mv	a5,a0
	.loc 6 70 1
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
.LFE55:
	.size	fqmul, .-fqmul
	.section	.text.pqcrystals_kyber512_ref_ntt,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_ntt
	.type	pqcrystals_kyber512_ref_ntt, @function
pqcrystals_kyber512_ref_ntt:
.LFB56:
	.loc 6 80 50
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
	.loc 6 84 5
	li	a5,1
	sw	a5,-32(s0)
	.loc 6 85 11
	li	a5,128
	sw	a5,-20(s0)
	.loc 6 85 3
	j	.L158
.L163:
	.loc 6 86 15
	sw	zero,-24(s0)
	.loc 6 86 5
	j	.L159
.L162:
	.loc 6 87 45
	lw	a5,-32(s0)
	addi	a4,a5,1
	sw	a4,-32(s0)
	.loc 6 87 12
	lui	a4,%hi(pqcrystals_kyber512_ref_zetas)
	addi	a4,a4,%lo(pqcrystals_kyber512_ref_zetas)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sh	a5,-34(s0)
	.loc 6 88 13
	lw	a5,-24(s0)
	sw	a5,-28(s0)
	.loc 6 88 7
	j	.L160
.L161:
	.loc 6 89 29
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 6 89 26
	slli	a5,a5,1
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 6 89 13
	lh	a4,0(a5)
	lh	a5,-34(s0)
	mv	a1,a4
	mv	a0,a5
	call	fqmul
	mv	a5,a0
	sh	a5,-36(s0)
	.loc 6 90 23
	lw	a5,-28(s0)
	slli	a5,a5,1
	lw	a4,-52(s0)
	add	a5,a4,a5
	lh	a5,0(a5)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 6 90 27
	lhu	a5,-36(s0)
	sub	a5,a4,a5
	slli	a3,a5,16
	srli	a3,a3,16
	.loc 6 90 13
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 6 90 10
	slli	a5,a5,1
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 6 90 27
	slli	a4,a3,16
	srai	a4,a4,16
	.loc 6 90 20
	sh	a4,0(a5)
	.loc 6 91 17
	lw	a5,-28(s0)
	slli	a5,a5,1
	lw	a4,-52(s0)
	add	a5,a4,a5
	lh	a5,0(a5)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 6 91 21
	lhu	a5,-36(s0)
	add	a5,a4,a5
	slli	a3,a5,16
	srli	a3,a3,16
	.loc 6 91 10
	lw	a5,-28(s0)
	slli	a5,a5,1
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 6 91 21
	slli	a4,a3,16
	srai	a4,a4,16
	.loc 6 91 14
	sh	a4,0(a5)
	.loc 6 88 40 discriminator 3
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L160:
	.loc 6 88 32 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 6 88 24 discriminator 1
	lw	a4,-28(s0)
	bltu	a4,a5,.L161
	.loc 6 86 39 discriminator 2
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
.L159:
	.loc 6 86 26 discriminator 1
	lw	a4,-24(s0)
	li	a5,255
	bleu	a4,a5,.L162
	.loc 6 85 32 discriminator 2
	lw	a5,-20(s0)
	srli	a5,a5,1
	sw	a5,-20(s0)
.L158:
	.loc 6 85 22 discriminator 1
	lw	a4,-20(s0)
	li	a5,1
	bgtu	a4,a5,.L163
	.loc 6 95 1
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
.LFE56:
	.size	pqcrystals_kyber512_ref_ntt, .-pqcrystals_kyber512_ref_ntt
	.section	.text.pqcrystals_kyber512_ref_invntt,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_invntt
	.type	pqcrystals_kyber512_ref_invntt, @function
pqcrystals_kyber512_ref_invntt:
.LFB57:
	.loc 6 106 53
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
	.loc 6 109 17
	li	a5,1441
	sh	a5,-34(s0)
	.loc 6 111 5
	li	a5,127
	sw	a5,-32(s0)
	.loc 6 112 11
	li	a5,2
	sw	a5,-24(s0)
	.loc 6 112 3
	j	.L165
.L170:
	.loc 6 113 15
	sw	zero,-20(s0)
	.loc 6 113 5
	j	.L166
.L169:
	.loc 6 114 45
	lw	a5,-32(s0)
	addi	a4,a5,-1
	sw	a4,-32(s0)
	.loc 6 114 12
	lui	a4,%hi(pqcrystals_kyber512_ref_zetas)
	addi	a4,a4,%lo(pqcrystals_kyber512_ref_zetas)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sh	a5,-36(s0)
	.loc 6 115 13
	lw	a5,-20(s0)
	sw	a5,-28(s0)
	.loc 6 115 7
	j	.L167
.L168:
	.loc 6 116 14
	lw	a5,-28(s0)
	slli	a5,a5,1
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 6 116 11
	lhu	a5,0(a5)
	sh	a5,-38(s0)
	.loc 6 117 63
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 6 117 60
	slli	a5,a5,1
	lw	a4,-52(s0)
	add	a5,a4,a5
	lh	a5,0(a5)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 6 117 57
	lhu	a5,-38(s0)
	add	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 6 117 16
	slli	a3,a5,16
	srai	a3,a3,16
	.loc 6 117 10
	lw	a5,-28(s0)
	slli	a5,a5,1
	lw	a4,-52(s0)
	add	s1,a4,a5
	.loc 6 117 16
	mv	a0,a3
	call	pqcrystals_kyber512_ref_barrett_reduce
	mv	a5,a0
	.loc 6 117 14 discriminator 1
	sh	a5,0(s1)
	.loc 6 118 26
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 6 118 23
	slli	a5,a5,1
	lw	a4,-52(s0)
	add	a5,a4,a5
	lh	a5,0(a5)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 6 118 33
	lhu	a5,-38(s0)
	sub	a5,a4,a5
	slli	a3,a5,16
	srli	a3,a3,16
	.loc 6 118 13
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 6 118 10
	slli	a5,a5,1
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 6 118 33
	slli	a4,a3,16
	srai	a4,a4,16
	.loc 6 118 20
	sh	a4,0(a5)
	.loc 6 119 38
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 6 119 35
	slli	a5,a5,1
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 6 119 22
	lh	a3,0(a5)
	.loc 6 119 13
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 6 119 10
	slli	a5,a5,1
	lw	a4,-52(s0)
	add	s1,a4,a5
	.loc 6 119 22
	lh	a5,-36(s0)
	mv	a1,a3
	mv	a0,a5
	call	fqmul
	mv	a5,a0
	.loc 6 119 20 discriminator 1
	sh	a5,0(s1)
	.loc 6 115 40 discriminator 3
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L167:
	.loc 6 115 32 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 6 115 24 discriminator 1
	lw	a4,-28(s0)
	bltu	a4,a5,.L168
	.loc 6 113 39 discriminator 2
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L166:
	.loc 6 113 26 discriminator 1
	lw	a4,-20(s0)
	li	a5,255
	bleu	a4,a5,.L169
	.loc 6 112 32 discriminator 2
	lw	a5,-24(s0)
	slli	a5,a5,1
	sw	a5,-24(s0)
.L165:
	.loc 6 112 20 discriminator 1
	lw	a4,-24(s0)
	li	a5,128
	bleu	a4,a5,.L170
	.loc 6 124 9
	sw	zero,-28(s0)
	.loc 6 124 3
	j	.L171
.L172:
	.loc 6 125 19
	lw	a5,-28(s0)
	slli	a5,a5,1
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 6 125 12
	lh	a3,0(a5)
	.loc 6 125 6
	lw	a5,-28(s0)
	slli	a5,a5,1
	lw	a4,-52(s0)
	add	s1,a4,a5
	.loc 6 125 12
	lh	a5,-34(s0)
	mv	a1,a5
	mv	a0,a3
	call	fqmul
	mv	a5,a0
	.loc 6 125 10 discriminator 1
	sh	a5,0(s1)
	.loc 6 124 24 discriminator 3
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L171:
	.loc 6 124 16 discriminator 1
	lw	a4,-28(s0)
	li	a5,255
	bleu	a4,a5,.L172
	.loc 6 126 1
	nop
	nop
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
.LFE57:
	.size	pqcrystals_kyber512_ref_invntt, .-pqcrystals_kyber512_ref_invntt
	.section	.text.pqcrystals_kyber512_ref_basemul,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_basemul
	.type	pqcrystals_kyber512_ref_basemul, @function
pqcrystals_kyber512_ref_basemul:
.LFB58:
	.loc 6 140 1
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
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	mv	a5,a3
	sh	a5,-30(s0)
	.loc 6 141 17
	lw	a5,-24(s0)
	addi	a5,a5,2
	.loc 6 141 10
	lh	a4,0(a5)
	.loc 6 141 23
	lw	a5,-28(s0)
	addi	a5,a5,2
	.loc 6 141 10
	lh	a5,0(a5)
	mv	a1,a5
	mv	a0,a4
	call	fqmul
	mv	a5,a0
	mv	a4,a5
	.loc 6 141 8 discriminator 1
	lw	a5,-20(s0)
	sh	a4,0(a5)
	.loc 6 142 10
	lw	a5,-20(s0)
	lh	a5,0(a5)
	lh	a4,-30(s0)
	mv	a1,a4
	mv	a0,a5
	call	fqmul
	mv	a5,a0
	mv	a4,a5
	.loc 6 142 8 discriminator 1
	lw	a5,-20(s0)
	sh	a4,0(a5)
	.loc 6 143 11
	lw	a5,-24(s0)
	lh	a4,0(a5)
	lw	a5,-28(s0)
	lh	a5,0(a5)
	mv	a1,a5
	mv	a0,a4
	call	fqmul
	mv	a5,a0
	mv	a3,a5
	.loc 6 143 4 discriminator 1
	lw	a5,-20(s0)
	lh	a5,0(a5)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 6 143 11 discriminator 1
	slli	a5,a3,16
	srli	a5,a5,16
	.loc 6 143 8 discriminator 1
	add	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,16
	srai	a4,a4,16
	lw	a5,-20(s0)
	sh	a4,0(a5)
	.loc 6 144 10
	lw	a5,-24(s0)
	lh	a4,0(a5)
	.loc 6 144 23
	lw	a5,-28(s0)
	addi	a5,a5,2
	.loc 6 144 10
	lh	a3,0(a5)
	.loc 6 144 4
	lw	a5,-20(s0)
	addi	s1,a5,2
	.loc 6 144 10
	mv	a1,a3
	mv	a0,a4
	call	fqmul
	mv	a5,a0
	.loc 6 144 8 discriminator 1
	sh	a5,0(s1)
	.loc 6 145 18
	lw	a5,-24(s0)
	addi	a5,a5,2
	.loc 6 145 11
	lh	a4,0(a5)
	lw	a5,-28(s0)
	lh	a5,0(a5)
	mv	a1,a5
	mv	a0,a4
	call	fqmul
	mv	a5,a0
	mv	a3,a5
	.loc 6 145 4 discriminator 1
	lw	a5,-20(s0)
	addi	a5,a5,2
	lh	a5,0(a5)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 6 145 11 discriminator 1
	slli	a5,a3,16
	srli	a5,a5,16
	.loc 6 145 8 discriminator 1
	add	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 6 145 4 discriminator 1
	lw	a5,-20(s0)
	addi	a5,a5,2
	.loc 6 145 8 discriminator 1
	slli	a4,a4,16
	srai	a4,a4,16
	sh	a4,0(a5)
	.loc 6 146 1
	nop
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
.LFE58:
	.size	pqcrystals_kyber512_ref_basemul, .-pqcrystals_kyber512_ref_basemul
	.section	.text.pqcrystals_kyber512_ref_poly_compress,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_poly_compress
	.type	pqcrystals_kyber512_ref_poly_compress, @function
pqcrystals_kyber512_ref_poly_compress:
.LFB59:
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/kyber/kyber512_ref/poly.c"
	.loc 7 20 1
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
	.loc 7 28 8
	sw	zero,-20(s0)
	.loc 7 28 3
	j	.L175
.L178:
	.loc 7 29 10
	sw	zero,-24(s0)
	.loc 7 29 5
	j	.L176
.L177:
	.loc 7 31 22
	lw	a5,-20(s0)
	slli	a4,a5,3
	.loc 7 31 24
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 7 31 9
	lw	a4,-56(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sh	a5,-26(s0)
	.loc 7 32 22
	lh	a5,-26(s0)
	srai	a5,a5,15
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a4,a5,16
	srli	a4,a4,16
	li	a5,4096
	addi	a5,a5,-767
	and	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 7 32 9
	lhu	a5,-26(s0)
	add	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sh	a5,-26(s0)
	.loc 7 34 14
	lh	a5,-26(s0)
	.loc 7 34 10
	slli	a5,a5,4
	sw	a5,-32(s0)
	.loc 7 35 10
	lw	a5,-32(s0)
	addi	a5,a5,1665
	sw	a5,-32(s0)
	.loc 7 36 10
	lw	a4,-32(s0)
	li	a5,81920
	addi	a5,a5,-1285
	mul	a5,a4,a5
	sw	a5,-32(s0)
	.loc 7 37 10
	lw	a5,-32(s0)
	srli	a5,a5,28
	sw	a5,-32(s0)
	.loc 7 38 17
	lw	a5,-32(s0)
	andi	a5,a5,0xff
	andi	a5,a5,15
	andi	a4,a5,0xff
	.loc 7 38 12
	lw	a5,-24(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-24(a5)
	.loc 7 29 18 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L176:
	.loc 7 29 14 discriminator 1
	lw	a4,-24(s0)
	li	a5,7
	bleu	a4,a5,.L177
	.loc 7 41 13
	lbu	a5,-40(s0)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 7 41 21
	lbu	a5,-39(s0)
	.loc 7 41 17
	slli	a5,a5,24
	srai	a5,a5,24
	slli	a5,a5,4
	slli	a5,a5,24
	srai	a5,a5,24
	or	a5,a4,a5
	slli	a5,a5,24
	srai	a5,a5,24
	andi	a4,a5,0xff
	.loc 7 41 10
	lw	a5,-52(s0)
	sb	a4,0(a5)
	.loc 7 42 13
	lbu	a5,-38(s0)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 7 42 21
	lbu	a5,-37(s0)
	.loc 7 42 17
	slli	a5,a5,24
	srai	a5,a5,24
	slli	a5,a5,4
	slli	a5,a5,24
	srai	a5,a5,24
	or	a5,a4,a5
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 7 42 6
	lw	a5,-52(s0)
	addi	a5,a5,1
	.loc 7 42 17
	andi	a4,a4,0xff
	.loc 7 42 10
	sb	a4,0(a5)
	.loc 7 43 13
	lbu	a5,-36(s0)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 7 43 21
	lbu	a5,-35(s0)
	.loc 7 43 17
	slli	a5,a5,24
	srai	a5,a5,24
	slli	a5,a5,4
	slli	a5,a5,24
	srai	a5,a5,24
	or	a5,a4,a5
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 7 43 6
	lw	a5,-52(s0)
	addi	a5,a5,2
	.loc 7 43 17
	andi	a4,a4,0xff
	.loc 7 43 10
	sb	a4,0(a5)
	.loc 7 44 13
	lbu	a5,-34(s0)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 7 44 21
	lbu	a5,-33(s0)
	.loc 7 44 17
	slli	a5,a5,24
	srai	a5,a5,24
	slli	a5,a5,4
	slli	a5,a5,24
	srai	a5,a5,24
	or	a5,a4,a5
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 7 44 6
	lw	a5,-52(s0)
	addi	a5,a5,3
	.loc 7 44 17
	andi	a4,a4,0xff
	.loc 7 44 10
	sb	a4,0(a5)
	.loc 7 45 7
	lw	a5,-52(s0)
	addi	a5,a5,4
	sw	a5,-52(s0)
	.loc 7 28 20 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L175:
	.loc 7 28 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,31
	bleu	a4,a5,.L178
	.loc 7 71 1
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
.LFE59:
	.size	pqcrystals_kyber512_ref_poly_compress, .-pqcrystals_kyber512_ref_poly_compress
	.section	.text.pqcrystals_kyber512_ref_poly_decompress,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_poly_decompress
	.type	pqcrystals_kyber512_ref_poly_decompress, @function
pqcrystals_kyber512_ref_poly_decompress:
.LFB60:
	.loc 7 84 1
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
	.loc 7 88 8
	sw	zero,-20(s0)
	.loc 7 88 3
	j	.L180
.L181:
	.loc 7 89 38
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 7 89 26
	andi	a4,a5,15
	.loc 7 89 47
	li	a5,4096
	addi	a5,a5,-767
	mul	a5,a4,a5
	.loc 7 89 54
	addi	a5,a5,8
	.loc 7 89 59
	srai	a4,a5,4
	.loc 7 89 18
	lw	a5,-20(s0)
	slli	a5,a5,1
	.loc 7 89 22
	slli	a4,a4,16
	srai	a4,a4,16
	lw	a3,-36(s0)
	slli	a5,a5,1
	add	a5,a3,a5
	sh	a4,0(a5)
	.loc 7 90 38
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 7 90 26
	srli	a5,a5,4
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 7 90 47
	li	a5,4096
	addi	a5,a5,-767
	mul	a5,a4,a5
	.loc 7 90 54
	addi	a5,a5,8
	.loc 7 90 59
	srai	a4,a5,4
	.loc 7 90 16
	lw	a5,-20(s0)
	slli	a5,a5,1
	.loc 7 90 18
	addi	a5,a5,1
	.loc 7 90 22
	slli	a4,a4,16
	srai	a4,a4,16
	lw	a3,-36(s0)
	slli	a5,a5,1
	add	a5,a3,a5
	sh	a4,0(a5)
	.loc 7 91 7
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-40(s0)
	.loc 7 88 20 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L180:
	.loc 7 88 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,127
	bleu	a4,a5,.L181
	.loc 7 113 1
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
.LFE60:
	.size	pqcrystals_kyber512_ref_poly_decompress, .-pqcrystals_kyber512_ref_poly_decompress
	.section	.text.pqcrystals_kyber512_ref_poly_tobytes,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_poly_tobytes
	.type	pqcrystals_kyber512_ref_poly_tobytes, @function
pqcrystals_kyber512_ref_poly_tobytes:
.LFB61:
	.loc 7 125 1
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
	.loc 7 129 8
	sw	zero,-20(s0)
	.loc 7 129 3
	j	.L183
.L184:
	.loc 7 131 21
	lw	a5,-20(s0)
	slli	a5,a5,1
	.loc 7 131 19
	lw	a4,-40(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lh	a5,0(a5)
	.loc 7 131 8
	sh	a5,-22(s0)
	.loc 7 132 12
	lh	a5,-22(s0)
	.loc 7 132 31
	srai	a5,a5,15
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a4,a5,16
	srli	a4,a4,16
	li	a5,4096
	addi	a5,a5,-767
	and	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 7 132 8
	lhu	a4,-22(s0)
	add	a5,a5,a4
	sh	a5,-22(s0)
	.loc 7 133 21
	lw	a5,-20(s0)
	slli	a5,a5,1
	.loc 7 133 23
	addi	a5,a5,1
	.loc 7 133 19
	lw	a4,-40(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lh	a5,0(a5)
	.loc 7 133 8
	sh	a5,-24(s0)
	.loc 7 134 12
	lh	a5,-24(s0)
	.loc 7 134 31
	srai	a5,a5,15
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a4,a5,16
	srli	a4,a4,16
	li	a5,4096
	addi	a5,a5,-767
	and	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 7 134 8
	lhu	a4,-24(s0)
	add	a5,a5,a4
	sh	a5,-24(s0)
	.loc 7 135 8
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 7 135 6
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 7 135 14
	lhu	a4,-22(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 7 136 26
	lhu	a5,-22(s0)
	srli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,24
	srai	a4,a4,24
	lhu	a5,-24(s0)
	slli	a5,a5,24
	srai	a5,a5,24
	slli	a5,a5,4
	slli	a5,a5,24
	srai	a5,a5,24
	or	a5,a4,a5
	slli	a3,a5,24
	srai	a3,a3,24
	.loc 7 136 8
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 7 136 6
	addi	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 7 136 26
	andi	a4,a3,0xff
	.loc 7 136 14
	sb	a4,0(a5)
	.loc 7 137 14
	lhu	a5,-24(s0)
	srli	a5,a5,4
	slli	a3,a5,16
	srli	a3,a3,16
	.loc 7 137 8
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 7 137 6
	addi	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 7 137 14
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 7 129 20 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L183:
	.loc 7 129 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,127
	bleu	a4,a5,.L184
	.loc 7 139 1
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
.LFE61:
	.size	pqcrystals_kyber512_ref_poly_tobytes, .-pqcrystals_kyber512_ref_poly_tobytes
	.section	.text.pqcrystals_kyber512_ref_poly_frombytes,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_poly_frombytes
	.type	pqcrystals_kyber512_ref_poly_frombytes, @function
pqcrystals_kyber512_ref_poly_frombytes:
.LFB62:
	.loc 7 152 1
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
	.loc 7 154 8
	sw	zero,-20(s0)
	.loc 7 154 3
	j	.L186
.L187:
	.loc 7 155 27
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 7 155 25
	lw	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	slli	a3,a5,16
	srai	a3,a3,16
	.loc 7 155 55
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 7 155 53
	addi	a5,a5,1
	lw	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 7 155 39
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,8
	slli	a5,a5,16
	srai	a5,a5,16
	or	a5,a3,a5
	slli	a3,a5,16
	srai	a3,a3,16
	.loc 7 155 16
	lw	a5,-20(s0)
	slli	a5,a5,1
	.loc 7 155 68
	li	a4,4096
	addi	a4,a4,-1
	and	a4,a3,a4
	slli	a4,a4,16
	srai	a4,a4,16
	.loc 7 155 20
	lw	a3,-36(s0)
	slli	a5,a5,1
	add	a5,a3,a5
	sh	a4,0(a5)
	.loc 7 156 29
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 7 156 27
	addi	a5,a5,1
	lw	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 7 156 41
	srli	a5,a5,4
	andi	a5,a5,0xff
	slli	a3,a5,16
	srai	a3,a3,16
	.loc 7 156 57
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 7 156 55
	addi	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 7 156 41
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,4
	slli	a5,a5,16
	srai	a5,a5,16
	or	a5,a3,a5
	slli	a3,a5,16
	srai	a3,a3,16
	.loc 7 156 16
	lw	a5,-20(s0)
	slli	a5,a5,1
	.loc 7 156 18
	addi	a5,a5,1
	.loc 7 156 70
	li	a4,4096
	addi	a4,a4,-1
	and	a4,a3,a4
	slli	a4,a4,16
	srai	a4,a4,16
	.loc 7 156 22
	lw	a3,-36(s0)
	slli	a5,a5,1
	add	a5,a3,a5
	sh	a4,0(a5)
	.loc 7 154 20 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L186:
	.loc 7 154 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,127
	bleu	a4,a5,.L187
	.loc 7 158 1
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
.LFE62:
	.size	pqcrystals_kyber512_ref_poly_frombytes, .-pqcrystals_kyber512_ref_poly_frombytes
	.section	.text.pqcrystals_kyber512_ref_poly_frommsg,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_poly_frommsg
	.type	pqcrystals_kyber512_ref_poly_frommsg, @function
pqcrystals_kyber512_ref_poly_frommsg:
.LFB63:
	.loc 7 169 1
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
	.loc 7 176 8
	sw	zero,-20(s0)
	.loc 7 176 3
	j	.L189
.L192:
	.loc 7 177 10
	sw	zero,-24(s0)
	.loc 7 177 5
	j	.L190
.L191:
	.loc 7 178 18
	lw	a5,-20(s0)
	slli	a4,a5,3
	.loc 7 178 20
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 7 178 24
	lw	a4,-36(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sh	zero,0(a5)
	.loc 7 179 42
	lw	a4,-36(s0)
	.loc 7 179 55
	lw	a5,-20(s0)
	slli	a3,a5,3
	lw	a5,-24(s0)
	add	a5,a3,a5
	slli	a5,a5,1
	.loc 7 179 7
	add	a3,a4,a5
	.loc 7 179 78
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 7 179 82
	lw	a5,-24(s0)
	sra	a5,a4,a5
	.loc 7 179 87
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 7 179 7
	andi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a2,a5
	li	a1,1665
	mv	a0,a3
	call	pqcrystals_kyber512_ref_cmov_int16
	.loc 7 177 18 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L190:
	.loc 7 177 14 discriminator 1
	lw	a4,-24(s0)
	li	a5,7
	bleu	a4,a5,.L191
	.loc 7 176 20 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L189:
	.loc 7 176 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,31
	bleu	a4,a5,.L192
	.loc 7 182 1
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
.LFE63:
	.size	pqcrystals_kyber512_ref_poly_frommsg, .-pqcrystals_kyber512_ref_poly_frommsg
	.section	.text.pqcrystals_kyber512_ref_poly_tomsg,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_poly_tomsg
	.type	pqcrystals_kyber512_ref_poly_tomsg, @function
pqcrystals_kyber512_ref_poly_tomsg:
.LFB64:
	.loc 7 193 1
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
	.loc 7 197 8
	sw	zero,-20(s0)
	.loc 7 197 3
	j	.L194
.L197:
	.loc 7 198 8
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 7 198 12
	sb	zero,0(a5)
	.loc 7 199 10
	sw	zero,-24(s0)
	.loc 7 199 5
	j	.L195
.L196:
	.loc 7 200 22
	lw	a5,-20(s0)
	slli	a4,a5,3
	.loc 7 200 24
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 7 200 20
	lw	a4,-40(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lh	a5,0(a5)
	.loc 7 200 9
	sw	a5,-28(s0)
	.loc 7 203 9
	lw	a5,-28(s0)
	slli	a5,a5,1
	sw	a5,-28(s0)
	.loc 7 204 9
	lw	a5,-28(s0)
	addi	a5,a5,1665
	sw	a5,-28(s0)
	.loc 7 205 9
	lw	a4,-28(s0)
	li	a5,81920
	addi	a5,a5,-1285
	mul	a5,a4,a5
	sw	a5,-28(s0)
	.loc 7 206 9
	lw	a5,-28(s0)
	srli	a5,a5,28
	sw	a5,-28(s0)
	.loc 7 207 9
	lw	a5,-28(s0)
	andi	a5,a5,1
	sw	a5,-28(s0)
	.loc 7 208 10
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 7 208 19
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	sll	a5,a4,a5
	.loc 7 208 14
	andi	a4,a5,0xff
	.loc 7 208 10
	lw	a2,-36(s0)
	lw	a5,-20(s0)
	add	a5,a2,a5
	.loc 7 208 14
	or	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 7 199 18 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L195:
	.loc 7 199 14 discriminator 1
	lw	a4,-24(s0)
	li	a5,7
	bleu	a4,a5,.L196
	.loc 7 197 20 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L194:
	.loc 7 197 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,31
	bleu	a4,a5,.L197
	.loc 7 211 1
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
.LFE64:
	.size	pqcrystals_kyber512_ref_poly_tomsg, .-pqcrystals_kyber512_ref_poly_tomsg
	.section	.text.pqcrystals_kyber512_ref_poly_getnoise_eta1,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_poly_getnoise_eta1
	.type	pqcrystals_kyber512_ref_poly_getnoise_eta1, @function
pqcrystals_kyber512_ref_poly_getnoise_eta1:
.LFB65:
	.loc 7 226 1
	.cfi_startproc
	addi	sp,sp,-224
	.cfi_def_cfa_offset 224
	sw	ra,220(sp)
	sw	s0,216(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,224
	.cfi_def_cfa 8, 0
	sw	a0,-212(s0)
	sw	a1,-216(s0)
	mv	a5,a2
	sb	a5,-217(s0)
	.loc 7 228 3
	lbu	a4,-217(s0)
	addi	a5,s0,-208
	mv	a3,a4
	lw	a2,-216(s0)
	li	a1,192
	mv	a0,a5
	call	pqcrystals_kyber512_ref_kyber_shake256_prf
	.loc 7 229 3
	addi	a5,s0,-208
	mv	a1,a5
	lw	a0,-212(s0)
	call	pqcrystals_kyber512_ref_poly_cbd_eta1
	.loc 7 230 1
	nop
	lw	ra,220(sp)
	.cfi_restore 1
	lw	s0,216(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 224
	addi	sp,sp,224
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE65:
	.size	pqcrystals_kyber512_ref_poly_getnoise_eta1, .-pqcrystals_kyber512_ref_poly_getnoise_eta1
	.section	.text.pqcrystals_kyber512_ref_poly_getnoise_eta2,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_poly_getnoise_eta2
	.type	pqcrystals_kyber512_ref_poly_getnoise_eta2, @function
pqcrystals_kyber512_ref_poly_getnoise_eta2:
.LFB66:
	.loc 7 245 1
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
	mv	a5,a2
	sb	a5,-153(s0)
	.loc 7 247 3
	lbu	a4,-153(s0)
	addi	a5,s0,-144
	mv	a3,a4
	lw	a2,-152(s0)
	li	a1,128
	mv	a0,a5
	call	pqcrystals_kyber512_ref_kyber_shake256_prf
	.loc 7 248 3
	addi	a5,s0,-144
	mv	a1,a5
	lw	a0,-148(s0)
	call	pqcrystals_kyber512_ref_poly_cbd_eta2
	.loc 7 249 1
	nop
	lw	ra,156(sp)
	.cfi_restore 1
	lw	s0,152(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE66:
	.size	pqcrystals_kyber512_ref_poly_getnoise_eta2, .-pqcrystals_kyber512_ref_poly_getnoise_eta2
	.section	.text.pqcrystals_kyber512_ref_poly_ntt,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_poly_ntt
	.type	pqcrystals_kyber512_ref_poly_ntt, @function
pqcrystals_kyber512_ref_poly_ntt:
.LFB67:
	.loc 7 262 1
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
	.loc 7 263 32
	lw	a5,-20(s0)
	.loc 7 263 3
	mv	a0,a5
	call	pqcrystals_kyber512_ref_ntt
	.loc 7 264 3
	lw	a0,-20(s0)
	call	pqcrystals_kyber512_ref_poly_reduce
	.loc 7 265 1
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
.LFE67:
	.size	pqcrystals_kyber512_ref_poly_ntt, .-pqcrystals_kyber512_ref_poly_ntt
	.section	.text.pqcrystals_kyber512_ref_poly_invntt_tomont,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_poly_invntt_tomont
	.type	pqcrystals_kyber512_ref_poly_invntt_tomont, @function
pqcrystals_kyber512_ref_poly_invntt_tomont:
.LFB68:
	.loc 7 277 1
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
	.loc 7 278 35
	lw	a5,-20(s0)
	.loc 7 278 3
	mv	a0,a5
	call	pqcrystals_kyber512_ref_invntt
	.loc 7 279 1
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
.LFE68:
	.size	pqcrystals_kyber512_ref_poly_invntt_tomont, .-pqcrystals_kyber512_ref_poly_invntt_tomont
	.section	.text.pqcrystals_kyber512_ref_poly_basemul_montgomery,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_poly_basemul_montgomery
	.type	pqcrystals_kyber512_ref_poly_basemul_montgomery, @function
pqcrystals_kyber512_ref_poly_basemul_montgomery:
.LFB69:
	.loc 7 291 1
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
	.loc 7 293 8
	sw	zero,-20(s0)
	.loc 7 293 3
	j	.L203
.L204:
	.loc 7 294 49
	lw	a5,-20(s0)
	slli	a5,a5,2
	.loc 7 294 5
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a0,a4,a5
	.loc 7 294 66
	lw	a5,-20(s0)
	slli	a5,a5,2
	.loc 7 294 5
	slli	a5,a5,1
	lw	a4,-40(s0)
	add	a1,a4,a5
	.loc 7 294 83
	lw	a5,-20(s0)
	slli	a5,a5,2
	.loc 7 294 5
	slli	a5,a5,1
	lw	a4,-44(s0)
	add	a2,a4,a5
	.loc 7 294 120
	lw	a5,-20(s0)
	addi	a5,a5,64
	.loc 7 294 117
	lui	a4,%hi(pqcrystals_kyber512_ref_zetas)
	addi	a4,a4,%lo(pqcrystals_kyber512_ref_zetas)
	slli	a5,a5,1
	add	a5,a4,a5
	lh	a5,0(a5)
	.loc 7 294 5
	mv	a3,a5
	call	pqcrystals_kyber512_ref_basemul
	.loc 7 295 49
	lw	a5,-20(s0)
	slli	a5,a5,2
	.loc 7 295 51
	addi	a5,a5,2
	.loc 7 295 5
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a0,a4,a5
	.loc 7 295 68
	lw	a5,-20(s0)
	slli	a5,a5,2
	.loc 7 295 70
	addi	a5,a5,2
	.loc 7 295 5
	slli	a5,a5,1
	lw	a4,-40(s0)
	add	a1,a4,a5
	.loc 7 295 87
	lw	a5,-20(s0)
	slli	a5,a5,2
	.loc 7 295 89
	addi	a5,a5,2
	.loc 7 295 5
	slli	a5,a5,1
	lw	a4,-44(s0)
	add	a2,a4,a5
	.loc 7 295 127
	lw	a5,-20(s0)
	addi	a5,a5,64
	.loc 7 295 124
	lui	a4,%hi(pqcrystals_kyber512_ref_zetas)
	addi	a4,a4,%lo(pqcrystals_kyber512_ref_zetas)
	slli	a5,a5,1
	add	a5,a4,a5
	lh	a5,0(a5)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 7 295 5
	neg	a5,a5
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a5,a5,16
	srai	a5,a5,16
	mv	a3,a5
	call	pqcrystals_kyber512_ref_basemul
	.loc 7 293 20 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L203:
	.loc 7 293 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,63
	bleu	a4,a5,.L204
	.loc 7 297 1
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
.LFE69:
	.size	pqcrystals_kyber512_ref_poly_basemul_montgomery, .-pqcrystals_kyber512_ref_poly_basemul_montgomery
	.section	.text.pqcrystals_kyber512_ref_poly_tomont,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_poly_tomont
	.type	pqcrystals_kyber512_ref_poly_tomont, @function
pqcrystals_kyber512_ref_poly_tomont:
.LFB70:
	.loc 7 308 1
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
	.loc 7 310 17
	li	a5,1353
	sh	a5,-22(s0)
	.loc 7 311 8
	sw	zero,-20(s0)
	.loc 7 311 3
	j	.L206
.L207:
	.loc 7 312 80
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lh	a5,0(a5)
	.loc 7 312 62
	mv	a4,a5
	.loc 7 312 20
	lh	a5,-22(s0)
	.loc 7 312 83
	mul	a5,a4,a5
	.loc 7 312 20
	mv	a0,a5
	call	pqcrystals_kyber512_ref_montgomery_reduce
	mv	a5,a0
	mv	a3,a5
	.loc 7 312 18 discriminator 1
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sh	a3,0(a5)
	.loc 7 311 18 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L206:
	.loc 7 311 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,255
	bleu	a4,a5,.L207
	.loc 7 313 1
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
.LFE70:
	.size	pqcrystals_kyber512_ref_poly_tomont, .-pqcrystals_kyber512_ref_poly_tomont
	.section	.text.pqcrystals_kyber512_ref_poly_reduce,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_poly_reduce
	.type	pqcrystals_kyber512_ref_poly_reduce, @function
pqcrystals_kyber512_ref_poly_reduce:
.LFB71:
	.loc 7 324 1
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
	.loc 7 326 8
	sw	zero,-20(s0)
	.loc 7 326 3
	j	.L209
.L210:
	.loc 7 327 20
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lh	a5,0(a5)
	mv	a0,a5
	call	pqcrystals_kyber512_ref_barrett_reduce
	mv	a5,a0
	mv	a3,a5
	.loc 7 327 18 discriminator 1
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	sh	a3,0(a5)
	.loc 7 326 18 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L209:
	.loc 7 326 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,255
	bleu	a4,a5,.L210
	.loc 7 328 1
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
.LFE71:
	.size	pqcrystals_kyber512_ref_poly_reduce, .-pqcrystals_kyber512_ref_poly_reduce
	.section	.text.pqcrystals_kyber512_ref_poly_add,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_poly_add
	.type	pqcrystals_kyber512_ref_poly_add, @function
pqcrystals_kyber512_ref_poly_add:
.LFB72:
	.loc 7 340 1
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
	.loc 7 342 8
	sw	zero,-20(s0)
	.loc 7 342 3
	j	.L212
.L213:
	.loc 7 343 29
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lh	a5,0(a5)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 7 343 44
	lw	a3,-44(s0)
	lw	a5,-20(s0)
	slli	a5,a5,1
	add	a5,a3,a5
	lh	a5,0(a5)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 7 343 33
	add	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 7 343 18
	lw	a3,-36(s0)
	lw	a5,-20(s0)
	slli	a5,a5,1
	add	a5,a3,a5
	sh	a4,0(a5)
	.loc 7 342 18 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L212:
	.loc 7 342 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,255
	bleu	a4,a5,.L213
	.loc 7 344 1
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
.LFE72:
	.size	pqcrystals_kyber512_ref_poly_add, .-pqcrystals_kyber512_ref_poly_add
	.section	.text.pqcrystals_kyber512_ref_poly_sub,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_poly_sub
	.type	pqcrystals_kyber512_ref_poly_sub, @function
pqcrystals_kyber512_ref_poly_sub:
.LFB73:
	.loc 7 356 1
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
	.loc 7 358 8
	sw	zero,-20(s0)
	.loc 7 358 3
	j	.L215
.L216:
	.loc 7 359 29
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lh	a5,0(a5)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 7 359 44
	lw	a3,-44(s0)
	lw	a5,-20(s0)
	slli	a5,a5,1
	add	a5,a3,a5
	lh	a5,0(a5)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 7 359 33
	sub	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 7 359 18
	lw	a3,-36(s0)
	lw	a5,-20(s0)
	slli	a5,a5,1
	add	a5,a3,a5
	sh	a4,0(a5)
	.loc 7 358 18 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L215:
	.loc 7 358 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,255
	bleu	a4,a5,.L216
	.loc 7 360 1
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
.LFE73:
	.size	pqcrystals_kyber512_ref_poly_sub, .-pqcrystals_kyber512_ref_poly_sub
	.section	.text.pqcrystals_kyber512_ref_polyvec_compress,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_polyvec_compress
	.type	pqcrystals_kyber512_ref_polyvec_compress, @function
pqcrystals_kyber512_ref_polyvec_compress:
.LFB74:
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/kyber/kyber512_ref/polyvec.c"
	.loc 8 16 1
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
	.loc 8 52 8
	sw	zero,-20(s0)
	.loc 8 52 3
	j	.L218
.L223:
	.loc 8 53 10
	sw	zero,-24(s0)
	.loc 8 53 5
	j	.L219
.L222:
	.loc 8 54 12
	sw	zero,-28(s0)
	.loc 8 54 7
	j	.L220
.L221:
	.loc 8 55 34
	lw	a1,-24(s0)
	slli	a0,a1,2
	.loc 8 55 36
	lw	a1,-28(s0)
	add	a1,a0,a1
	.loc 8 55 32
	lw	a0,-56(s0)
	lw	a6,-20(s0)
	slli	a6,a6,8
	add	a1,a6,a1
	slli	a1,a1,1
	add	a1,a0,a1
	lh	a1,0(a1)
	slli	a0,a1,16
	srli	a0,a0,16
	.loc 8 55 14
	lw	a6,-28(s0)
	addi	a1,s0,-48
	slli	a6,a6,1
	add	a1,a6,a1
	sh	a0,0(a1)
	.loc 8 56 10
	lw	a0,-28(s0)
	addi	a1,s0,-48
	slli	a0,a0,1
	add	a1,a0,a1
	lhu	a0,0(a1)
	.loc 8 56 28
	lw	a6,-28(s0)
	addi	a1,s0,-48
	slli	a6,a6,1
	add	a1,a6,a1
	lhu	a1,0(a1)
	.loc 8 56 18
	slli	a1,a1,16
	srai	a1,a1,16
	.loc 8 56 39
	srai	a1,a1,15
	slli	a1,a1,16
	srai	a1,a1,16
	slli	a6,a1,16
	srli	a6,a6,16
	li	a1,4096
	addi	a1,a1,-767
	and	a1,a6,a1
	slli	a1,a1,16
	srli	a1,a1,16
	.loc 8 56 14
	add	a1,a0,a1
	slli	a0,a1,16
	srli	a0,a0,16
	lw	a6,-28(s0)
	addi	a1,s0,-48
	slli	a6,a6,1
	add	a1,a6,a1
	sh	a0,0(a1)
	.loc 8 58 15
	lw	a0,-28(s0)
	addi	a1,s0,-48
	slli	a0,a0,1
	add	a1,a0,a1
	lhu	a1,0(a1)
	.loc 8 58 12
	sw	a1,-40(s0)
	sw	zero,-36(s0)
	.loc 8 59 12
	lw	a1,-40(s0)
	srli	a1,a1,22
	lw	a0,-36(s0)
	slli	a5,a0,10
	add	a5,a1,a5
	lw	a1,-40(s0)
	slli	a4,a1,10
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	.loc 8 60 12
	lw	a6,-40(s0)
	lw	a7,-36(s0)
	li	t1,1665
	li	t2,0
	add	a0,a6,t1
	mv	t5,a0
	sltu	t5,t5,a6
	add	a1,a7,t2
	add	a6,t5,a1
	mv	a1,a6
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	.loc 8 61 12
	lw	a0,-36(s0)
	li	a1,1290240
	addi	a1,a1,-73
	mul	a0,a0,a1
	lw	a1,-40(s0)
	li	a6,0
	mul	a1,a1,a6
	add	a6,a0,a1
	lw	a0,-40(s0)
	li	a1,1290240
	addi	a1,a1,-73
	mul	a7,a0,a1
	mulhu	a3,a0,a1
	mv	a2,a7
	add	a1,a6,a3
	mv	a3,a1
	sw	a2,-40(s0)
	sw	a3,-36(s0)
	sw	a2,-40(s0)
	sw	a3,-36(s0)
	.loc 8 62 12
	lw	a1,-36(s0)
	srli	t3,a1,0
	li	t4,0
	sw	t3,-40(s0)
	sw	t4,-36(s0)
	.loc 8 63 19
	lhu	a1,-40(s0)
	andi	a1,a1,1023
	slli	a0,a1,16
	srli	a0,a0,16
	.loc 8 63 14
	lw	a6,-28(s0)
	addi	a1,s0,-48
	slli	a6,a6,1
	add	a1,a6,a1
	sh	a0,0(a1)
	.loc 8 54 20 discriminator 3
	lw	a1,-28(s0)
	addi	a1,a1,1
	sw	a1,-28(s0)
.L220:
	.loc 8 54 16 discriminator 1
	lw	a0,-28(s0)
	li	a1,3
	bleu	a0,a1,.L221
	.loc 8 66 16
	lhu	a1,-48(s0)
	.loc 8 66 12
	andi	a0,a1,0xff
	lw	a1,-52(s0)
	sb	a0,0(a1)
	.loc 8 67 16
	lhu	a1,-48(s0)
	.loc 8 67 26
	srli	a1,a1,8
	slli	a1,a1,16
	srli	a1,a1,16
	slli	a0,a1,24
	srai	a0,a0,24
	.loc 8 67 30
	lhu	a1,-46(s0)
	.loc 8 67 26
	slli	a1,a1,24
	srai	a1,a1,24
	slli	a1,a1,2
	slli	a1,a1,24
	srai	a1,a1,24
	or	a1,a0,a1
	slli	a0,a1,24
	srai	a0,a0,24
	.loc 8 67 8
	lw	a1,-52(s0)
	addi	a1,a1,1
	.loc 8 67 26
	andi	a0,a0,0xff
	.loc 8 67 12
	sb	a0,0(a1)
	.loc 8 68 16
	lhu	a1,-46(s0)
	.loc 8 68 26
	srli	a1,a1,6
	slli	a1,a1,16
	srli	a1,a1,16
	slli	a0,a1,24
	srai	a0,a0,24
	.loc 8 68 30
	lhu	a1,-44(s0)
	.loc 8 68 26
	slli	a1,a1,24
	srai	a1,a1,24
	slli	a1,a1,4
	slli	a1,a1,24
	srai	a1,a1,24
	or	a1,a0,a1
	slli	a0,a1,24
	srai	a0,a0,24
	.loc 8 68 8
	lw	a1,-52(s0)
	addi	a1,a1,2
	.loc 8 68 26
	andi	a0,a0,0xff
	.loc 8 68 12
	sb	a0,0(a1)
	.loc 8 69 16
	lhu	a1,-44(s0)
	.loc 8 69 26
	srli	a1,a1,4
	slli	a1,a1,16
	srli	a1,a1,16
	slli	a0,a1,24
	srai	a0,a0,24
	.loc 8 69 30
	lhu	a1,-42(s0)
	.loc 8 69 26
	slli	a1,a1,24
	srai	a1,a1,24
	slli	a1,a1,6
	slli	a1,a1,24
	srai	a1,a1,24
	or	a1,a0,a1
	slli	a0,a1,24
	srai	a0,a0,24
	.loc 8 69 8
	lw	a1,-52(s0)
	addi	a1,a1,3
	.loc 8 69 26
	andi	a0,a0,0xff
	.loc 8 69 12
	sb	a0,0(a1)
	.loc 8 70 16
	lhu	a1,-42(s0)
	.loc 8 70 12
	srli	a1,a1,2
	slli	a0,a1,16
	srli	a0,a0,16
	.loc 8 70 8
	lw	a1,-52(s0)
	addi	a1,a1,4
	.loc 8 70 12
	andi	a0,a0,0xff
	sb	a0,0(a1)
	.loc 8 71 9
	lw	a1,-52(s0)
	addi	a1,a1,5
	sw	a1,-52(s0)
	.loc 8 53 22 discriminator 2
	lw	a1,-24(s0)
	addi	a1,a1,1
	sw	a1,-24(s0)
.L219:
	.loc 8 53 14 discriminator 1
	lw	a0,-24(s0)
	li	a1,63
	bleu	a0,a1,.L222
	.loc 8 52 16 discriminator 2
	lw	a1,-20(s0)
	addi	a1,a1,1
	sw	a1,-20(s0)
.L218:
	.loc 8 52 12 discriminator 1
	lw	a0,-20(s0)
	li	a1,1
	bleu	a0,a1,.L223
	.loc 8 77 1
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
.LFE74:
	.size	pqcrystals_kyber512_ref_polyvec_compress, .-pqcrystals_kyber512_ref_polyvec_compress
	.section	.text.pqcrystals_kyber512_ref_polyvec_decompress,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_polyvec_decompress
	.type	pqcrystals_kyber512_ref_polyvec_decompress, @function
pqcrystals_kyber512_ref_polyvec_decompress:
.LFB75:
	.loc 8 90 1
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
	.loc 8 113 8
	sw	zero,-20(s0)
	.loc 8 113 3
	j	.L225
.L230:
	.loc 8 114 10
	sw	zero,-24(s0)
	.loc 8 114 5
	j	.L226
.L229:
	.loc 8 115 16
	lw	a5,-56(s0)
	lbu	a5,0(a5)
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 8 115 40
	lw	a5,-56(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 8 115 26
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,8
	slli	a5,a5,16
	srai	a5,a5,16
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 8 115 12
	sh	a5,-36(s0)
	.loc 8 116 16
	lw	a5,-56(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 8 116 26
	srli	a5,a5,2
	andi	a5,a5,0xff
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 8 116 40
	lw	a5,-56(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 8 116 26
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,6
	slli	a5,a5,16
	srai	a5,a5,16
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 8 116 12
	sh	a5,-34(s0)
	.loc 8 117 16
	lw	a5,-56(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 8 117 26
	srli	a5,a5,4
	andi	a5,a5,0xff
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 8 117 40
	lw	a5,-56(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 8 117 26
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,4
	slli	a5,a5,16
	srai	a5,a5,16
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 8 117 12
	sh	a5,-32(s0)
	.loc 8 118 16
	lw	a5,-56(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 8 118 26
	srli	a5,a5,6
	andi	a5,a5,0xff
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 8 118 40
	lw	a5,-56(s0)
	addi	a5,a5,4
	lbu	a5,0(a5)
	.loc 8 118 26
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,2
	slli	a5,a5,16
	srai	a5,a5,16
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 8 118 12
	sh	a5,-30(s0)
	.loc 8 119 9
	lw	a5,-56(s0)
	addi	a5,a5,5
	sw	a5,-56(s0)
	.loc 8 121 12
	sw	zero,-28(s0)
	.loc 8 121 7
	j	.L227
.L228:
	.loc 8 122 48
	lw	a4,-28(s0)
	addi	a5,s0,-36
	slli	a4,a4,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	.loc 8 122 36
	andi	a4,a5,1023
	.loc 8 122 60
	li	a5,4096
	addi	a5,a5,-767
	mul	a5,a4,a5
	.loc 8 122 66
	addi	a5,a5,512
	.loc 8 122 73
	srli	a3,a5,10
	.loc 8 122 27
	lw	a5,-24(s0)
	slli	a4,a5,2
	.loc 8 122 29
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 8 122 33
	slli	a4,a3,16
	srai	a4,a4,16
	lw	a3,-52(s0)
	lw	a2,-20(s0)
	slli	a2,a2,8
	add	a5,a2,a5
	slli	a5,a5,1
	add	a5,a3,a5
	sh	a4,0(a5)
	.loc 8 121 20 discriminator 3
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L227:
	.loc 8 121 16 discriminator 1
	lw	a4,-28(s0)
	li	a5,3
	bleu	a4,a5,.L228
	.loc 8 114 22 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L226:
	.loc 8 114 14 discriminator 1
	lw	a4,-24(s0)
	li	a5,63
	bleu	a4,a5,.L229
	.loc 8 113 16 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L225:
	.loc 8 113 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,1
	bleu	a4,a5,.L230
	.loc 8 128 1
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
.LFE75:
	.size	pqcrystals_kyber512_ref_polyvec_decompress, .-pqcrystals_kyber512_ref_polyvec_decompress
	.section	.text.pqcrystals_kyber512_ref_polyvec_tobytes,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_polyvec_tobytes
	.type	pqcrystals_kyber512_ref_polyvec_tobytes, @function
pqcrystals_kyber512_ref_polyvec_tobytes:
.LFB76:
	.loc 8 140 1
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
	.loc 8 142 8
	sw	zero,-20(s0)
	.loc 8 142 3
	j	.L232
.L233:
	.loc 8 143 45
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,7
	mv	a4,a5
	.loc 8 143 5
	lw	a5,-36(s0)
	add	a3,a5,a4
	lw	a5,-20(s0)
	slli	a5,a5,9
	lw	a4,-40(s0)
	add	a5,a4,a5
	mv	a1,a5
	mv	a0,a3
	call	pqcrystals_kyber512_ref_poly_tobytes
	.loc 8 142 16 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L232:
	.loc 8 142 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,1
	bleu	a4,a5,.L233
	.loc 8 144 1
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
.LFE76:
	.size	pqcrystals_kyber512_ref_polyvec_tobytes, .-pqcrystals_kyber512_ref_polyvec_tobytes
	.section	.text.pqcrystals_kyber512_ref_polyvec_frombytes,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_polyvec_frombytes
	.type	pqcrystals_kyber512_ref_polyvec_frombytes, @function
pqcrystals_kyber512_ref_polyvec_frombytes:
.LFB77:
	.loc 8 157 1
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
	.loc 8 159 8
	sw	zero,-20(s0)
	.loc 8 159 3
	j	.L235
.L236:
	.loc 8 160 5
	lw	a5,-20(s0)
	slli	a5,a5,9
	lw	a4,-36(s0)
	add	a3,a4,a5
	.loc 8 160 59
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,7
	mv	a4,a5
	.loc 8 160 5
	lw	a5,-40(s0)
	add	a5,a5,a4
	mv	a1,a5
	mv	a0,a3
	call	pqcrystals_kyber512_ref_poly_frombytes
	.loc 8 159 16 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L235:
	.loc 8 159 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,1
	bleu	a4,a5,.L236
	.loc 8 161 1
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
.LFE77:
	.size	pqcrystals_kyber512_ref_polyvec_frombytes, .-pqcrystals_kyber512_ref_polyvec_frombytes
	.section	.text.pqcrystals_kyber512_ref_polyvec_ntt,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_polyvec_ntt
	.type	pqcrystals_kyber512_ref_polyvec_ntt, @function
pqcrystals_kyber512_ref_polyvec_ntt:
.LFB78:
	.loc 8 171 1
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
	.loc 8 173 8
	sw	zero,-20(s0)
	.loc 8 173 3
	j	.L238
.L239:
	.loc 8 174 5
	lw	a5,-20(s0)
	slli	a5,a5,9
	lw	a4,-36(s0)
	add	a5,a4,a5
	mv	a0,a5
	call	pqcrystals_kyber512_ref_poly_ntt
	.loc 8 173 16 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L238:
	.loc 8 173 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,1
	bleu	a4,a5,.L239
	.loc 8 175 1
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
.LFE78:
	.size	pqcrystals_kyber512_ref_polyvec_ntt, .-pqcrystals_kyber512_ref_polyvec_ntt
	.section	.text.pqcrystals_kyber512_ref_polyvec_invntt_tomont,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_polyvec_invntt_tomont
	.type	pqcrystals_kyber512_ref_polyvec_invntt_tomont, @function
pqcrystals_kyber512_ref_polyvec_invntt_tomont:
.LFB79:
	.loc 8 186 1
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
	.loc 8 188 8
	sw	zero,-20(s0)
	.loc 8 188 3
	j	.L241
.L242:
	.loc 8 189 5
	lw	a5,-20(s0)
	slli	a5,a5,9
	lw	a4,-36(s0)
	add	a5,a4,a5
	mv	a0,a5
	call	pqcrystals_kyber512_ref_poly_invntt_tomont
	.loc 8 188 16 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L241:
	.loc 8 188 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,1
	bleu	a4,a5,.L242
	.loc 8 190 1
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
.LFE79:
	.size	pqcrystals_kyber512_ref_polyvec_invntt_tomont, .-pqcrystals_kyber512_ref_polyvec_invntt_tomont
	.section	.text.pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery
	.type	pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery, @function
pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery:
.LFB80:
	.loc 8 203 1
	.cfi_startproc
	addi	sp,sp,-560
	.cfi_def_cfa_offset 560
	sw	ra,556(sp)
	sw	s0,552(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,560
	.cfi_def_cfa 8, 0
	sw	a0,-548(s0)
	sw	a1,-552(s0)
	sw	a2,-556(s0)
	.loc 8 207 3
	lw	a5,-552(s0)
	lw	a4,-556(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-548(s0)
	call	pqcrystals_kyber512_ref_poly_basemul_montgomery
	.loc 8 208 8
	li	a5,1
	sw	a5,-20(s0)
	.loc 8 208 3
	j	.L244
.L245:
	.loc 8 209 5
	lw	a5,-20(s0)
	slli	a5,a5,9
	lw	a4,-552(s0)
	add	a3,a4,a5
	lw	a5,-20(s0)
	slli	a5,a5,9
	lw	a4,-556(s0)
	add	a4,a4,a5
	addi	a5,s0,-532
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	pqcrystals_kyber512_ref_poly_basemul_montgomery
	.loc 8 210 5
	addi	a5,s0,-532
	mv	a2,a5
	lw	a1,-548(s0)
	lw	a0,-548(s0)
	call	pqcrystals_kyber512_ref_poly_add
	.loc 8 208 16 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L244:
	.loc 8 208 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,1
	bleu	a4,a5,.L245
	.loc 8 213 3
	lw	a0,-548(s0)
	call	pqcrystals_kyber512_ref_poly_reduce
	.loc 8 214 1
	nop
	lw	ra,556(sp)
	.cfi_restore 1
	lw	s0,552(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 560
	addi	sp,sp,560
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE80:
	.size	pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery, .-pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery
	.section	.text.pqcrystals_kyber512_ref_polyvec_reduce,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_polyvec_reduce
	.type	pqcrystals_kyber512_ref_polyvec_reduce, @function
pqcrystals_kyber512_ref_polyvec_reduce:
.LFB81:
	.loc 8 226 1
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
	.loc 8 228 8
	sw	zero,-20(s0)
	.loc 8 228 3
	j	.L247
.L248:
	.loc 8 229 5
	lw	a5,-20(s0)
	slli	a5,a5,9
	lw	a4,-36(s0)
	add	a5,a4,a5
	mv	a0,a5
	call	pqcrystals_kyber512_ref_poly_reduce
	.loc 8 228 16 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L247:
	.loc 8 228 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,1
	bleu	a4,a5,.L248
	.loc 8 230 1
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
.LFE81:
	.size	pqcrystals_kyber512_ref_polyvec_reduce, .-pqcrystals_kyber512_ref_polyvec_reduce
	.section	.text.pqcrystals_kyber512_ref_polyvec_add,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_polyvec_add
	.type	pqcrystals_kyber512_ref_polyvec_add, @function
pqcrystals_kyber512_ref_polyvec_add:
.LFB82:
	.loc 8 242 1
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
	.loc 8 244 8
	sw	zero,-20(s0)
	.loc 8 244 3
	j	.L250
.L251:
	.loc 8 245 5
	lw	a5,-20(s0)
	slli	a5,a5,9
	lw	a4,-36(s0)
	add	a3,a4,a5
	lw	a5,-20(s0)
	slli	a5,a5,9
	lw	a4,-40(s0)
	add	a1,a4,a5
	lw	a5,-20(s0)
	slli	a5,a5,9
	lw	a4,-44(s0)
	add	a5,a4,a5
	mv	a2,a5
	mv	a0,a3
	call	pqcrystals_kyber512_ref_poly_add
	.loc 8 244 16 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L250:
	.loc 8 244 12 discriminator 1
	lw	a4,-20(s0)
	li	a5,1
	bleu	a4,a5,.L251
	.loc 8 246 1
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
.LFE82:
	.size	pqcrystals_kyber512_ref_polyvec_add, .-pqcrystals_kyber512_ref_polyvec_add
	.section	.text.pqcrystals_kyber512_ref_montgomery_reduce,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_montgomery_reduce
	.type	pqcrystals_kyber512_ref_montgomery_reduce, @function
pqcrystals_kyber512_ref_montgomery_reduce:
.LFB83:
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/kyber/kyber512_ref/reduce.c"
	.loc 9 17 1
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
	.loc 9 20 7
	lw	a5,-36(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 9 20 17
	li	a5,-4096
	addi	a5,a5,769
	mul	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 9 20 5
	sh	a5,-18(s0)
	.loc 9 21 12
	lh	a4,-18(s0)
	.loc 9 21 22
	li	a5,-4096
	addi	a5,a5,767
	mul	a4,a4,a5
	.loc 9 21 10
	lw	a5,-36(s0)
	add	a5,a4,a5
	.loc 9 21 29
	srai	a5,a5,16
	.loc 9 21 5
	sh	a5,-18(s0)
	.loc 9 22 10
	lh	a5,-18(s0)
	.loc 9 23 1
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
.LFE83:
	.size	pqcrystals_kyber512_ref_montgomery_reduce, .-pqcrystals_kyber512_ref_montgomery_reduce
	.section	.text.pqcrystals_kyber512_ref_barrett_reduce,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_barrett_reduce
	.type	pqcrystals_kyber512_ref_barrett_reduce, @function
pqcrystals_kyber512_ref_barrett_reduce:
.LFB84:
	.loc 9 35 59
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
	sh	a5,-34(s0)
	.loc 9 37 17
	li	a5,20480
	addi	a5,a5,-321
	sh	a5,-18(s0)
	.loc 9 39 8
	lh	a4,-18(s0)
	.loc 9 39 18
	lh	a5,-34(s0)
	mul	a4,a4,a5
	.loc 9 39 21
	li	a5,33554432
	add	a5,a4,a5
	.loc 9 39 32
	srai	a5,a5,26
	.loc 9 39 5
	sh	a5,-20(s0)
	.loc 9 40 5
	lhu	a4,-20(s0)
	li	a5,4096
	addi	a5,a5,-767
	mul	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sh	a5,-20(s0)
	.loc 9 41 12
	lhu	a4,-34(s0)
	lhu	a5,-20(s0)
	sub	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 9 42 1
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
.LFE84:
	.size	pqcrystals_kyber512_ref_barrett_reduce, .-pqcrystals_kyber512_ref_barrett_reduce
	.section	.text.pqcrystals_kyber512_ref_kyber_shake128_absorb,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_kyber_shake128_absorb
	.type	pqcrystals_kyber512_ref_kyber_shake128_absorb, @function
pqcrystals_kyber512_ref_kyber_shake128_absorb:
.LFB85:
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/kyber/kyber512_ref/symmetric-shake.c"
	.loc 10 22 1
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
	sw	a1,-72(s0)
	mv	a5,a2
	mv	a4,a3
	sb	a5,-73(s0)
	mv	a5,a4
	sb	a5,-74(s0)
	.loc 10 25 3
	addi	a5,s0,-52
	li	a2,32
	lw	a1,-72(s0)
	mv	a0,a5
	call	memcpy
	.loc 10 26 18
	lbu	a5,-73(s0)
	sb	a5,-20(s0)
	.loc 10 27 18
	lbu	a5,-74(s0)
	sb	a5,-19(s0)
	.loc 10 29 3
	addi	a5,s0,-52
	li	a2,34
	mv	a1,a5
	lw	a0,-68(s0)
	call	pqcrystals_kyber_fips202_ref_shake128_absorb_once
	.loc 10 30 1
	nop
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE85:
	.size	pqcrystals_kyber512_ref_kyber_shake128_absorb, .-pqcrystals_kyber512_ref_kyber_shake128_absorb
	.section	.text.pqcrystals_kyber512_ref_kyber_shake256_prf,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_kyber_shake256_prf
	.type	pqcrystals_kyber512_ref_kyber_shake256_prf, @function
pqcrystals_kyber512_ref_kyber_shake256_prf:
.LFB86:
	.loc 10 44 1
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
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	mv	a5,a3
	sb	a5,-77(s0)
	.loc 10 47 3
	addi	a5,s0,-52
	li	a2,32
	lw	a1,-76(s0)
	mv	a0,a5
	call	memcpy
	.loc 10 48 14
	lbu	a5,-77(s0)
	sb	a5,-20(s0)
	.loc 10 50 3
	addi	a5,s0,-52
	li	a3,33
	mv	a2,a5
	lw	a1,-72(s0)
	lw	a0,-68(s0)
	call	pqcrystals_kyber_fips202_ref_shake256
	.loc 10 51 1
	nop
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE86:
	.size	pqcrystals_kyber512_ref_kyber_shake256_prf, .-pqcrystals_kyber512_ref_kyber_shake256_prf
	.section	.text.pqcrystals_kyber512_ref_kyber_shake256_rkprf,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_kyber_shake256_rkprf
	.type	pqcrystals_kyber512_ref_kyber_shake256_rkprf, @function
pqcrystals_kyber512_ref_kyber_shake256_rkprf:
.LFB87:
	.loc 10 65 1
	.cfi_startproc
	addi	sp,sp,-240
	.cfi_def_cfa_offset 240
	sw	ra,236(sp)
	sw	s0,232(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,240
	.cfi_def_cfa 8, 0
	sw	a0,-228(s0)
	sw	a1,-232(s0)
	sw	a2,-236(s0)
	.loc 10 68 3
	addi	a5,s0,-224
	mv	a0,a5
	call	pqcrystals_kyber_fips202_ref_shake256_init
	.loc 10 69 3
	addi	a5,s0,-224
	li	a2,32
	lw	a1,-232(s0)
	mv	a0,a5
	call	pqcrystals_kyber_fips202_ref_shake256_absorb
	.loc 10 70 3
	addi	a5,s0,-224
	li	a2,768
	lw	a1,-236(s0)
	mv	a0,a5
	call	pqcrystals_kyber_fips202_ref_shake256_absorb
	.loc 10 71 3
	addi	a5,s0,-224
	mv	a0,a5
	call	pqcrystals_kyber_fips202_ref_shake256_finalize
	.loc 10 72 3
	addi	a5,s0,-224
	mv	a2,a5
	li	a1,32
	lw	a0,-228(s0)
	call	pqcrystals_kyber_fips202_ref_shake256_squeeze
	.loc 10 73 1
	nop
	lw	ra,236(sp)
	.cfi_restore 1
	lw	s0,232(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 240
	addi	sp,sp,240
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE87:
	.size	pqcrystals_kyber512_ref_kyber_shake256_rkprf, .-pqcrystals_kyber512_ref_kyber_shake256_rkprf
	.section	.text.pqcrystals_kyber512_ref_verify,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_verify
	.type	pqcrystals_kyber512_ref_verify, @function
pqcrystals_kyber512_ref_verify:
.LFB88:
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/kyber/kyber512_ref/verify.c"
	.loc 11 17 1
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
	.loc 11 19 11
	sb	zero,-21(s0)
	.loc 11 21 8
	sw	zero,-20(s0)
	.loc 11 21 3
	j	.L260
.L261:
	.loc 11 22 11
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 11 22 18
	lw	a3,-40(s0)
	lw	a5,-20(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 11 22 7
	xor	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-21(s0)
	or	a5,a5,a4
	sb	a5,-21(s0)
	.loc 11 21 18 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L260:
	.loc 11 21 12 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L261
	.loc 11 24 12
	lbu	a5,-21(s0)
	andi	a5,a5,0xff
	mv	a6,a5
	li	a7,0
	.loc 11 24 11
	li	a4,0
	li	a5,0
	sub	a2,a4,a6
	mv	a1,a2
	sgtu	a1,a1,a4
	sub	a3,a5,a7
	sub	a5,a3,a1
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	.loc 11 24 25
	srli	t1,a5,31
	li	t2,0
	mv	a5,t1
	.loc 11 25 1
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
.LFE88:
	.size	pqcrystals_kyber512_ref_verify, .-pqcrystals_kyber512_ref_verify
	.section	.text.pqcrystals_kyber512_ref_cmov,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_cmov
	.type	pqcrystals_kyber512_ref_cmov, @function
pqcrystals_kyber512_ref_cmov:
.LFB89:
	.loc 11 41 1
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
	sb	a5,-45(s0)
	.loc 11 51 3
	lbu	a5,-45(s0)
	sb	a5,-45(s0)
	.loc 11 54 5
	lbu	a5,-45(s0)
	neg	a5,a5
	sb	a5,-45(s0)
	.loc 11 55 8
	sw	zero,-20(s0)
	.loc 11 55 3
	j	.L264
.L265:
	.loc 11 56 6
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 11 56 19
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 11 56 26
	lw	a2,-40(s0)
	lw	a5,-20(s0)
	add	a5,a2,a5
	lbu	a5,0(a5)
	.loc 11 56 10
	xor	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-45(s0)
	and	a5,a5,a4
	andi	a4,a5,0xff
	.loc 11 56 6
	lw	a2,-36(s0)
	lw	a5,-20(s0)
	add	a5,a2,a5
	.loc 11 56 10
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 11 55 18 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L264:
	.loc 11 55 12 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L265
	.loc 11 57 1
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
.LFE89:
	.size	pqcrystals_kyber512_ref_cmov, .-pqcrystals_kyber512_ref_cmov
	.section	.text.pqcrystals_kyber512_ref_cmov_int16,"ax",@progbits
	.align	1
	.globl	pqcrystals_kyber512_ref_cmov_int16
	.type	pqcrystals_kyber512_ref_cmov_int16, @function
pqcrystals_kyber512_ref_cmov_int16:
.LFB90:
	.loc 11 72 1
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
	sh	a5,-24(s0)
	.loc 11 73 5
	lhu	a5,-24(s0)
	neg	a5,a5
	sh	a5,-24(s0)
	.loc 11 74 3
	lw	a5,-20(s0)
	lh	a4,0(a5)
	.loc 11 74 15
	lw	a5,-20(s0)
	lh	a5,0(a5)
	.loc 11 74 11
	lhu	a3,-22(s0)
	xor	a5,a5,a3
	slli	a3,a5,16
	srai	a3,a3,16
	lh	a5,-24(s0)
	and	a5,a3,a5
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 11 74 6
	xor	a5,a4,a5
	slli	a4,a5,16
	srai	a4,a4,16
	lw	a5,-20(s0)
	sh	a4,0(a5)
	.loc 11 75 1
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
.LFE90:
	.size	pqcrystals_kyber512_ref_cmov_int16, .-pqcrystals_kyber512_ref_cmov_int16
	.section	.rodata
	.align	2
.LC3:
	.string	"[pqkem] crypto_kem_keypair ret=%d\r\n"
	.section	.text.pqkem_keygen,"ax",@progbits
	.align	1
	.globl	pqkem_keygen
	.type	pqkem_keygen, @function
pqkem_keygen:
.LFB91:
	.loc 1 95 1
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
	.loc 1 96 8
	lw	a5,-36(s0)
	beq	a5,zero,.L268
	.loc 1 96 13 discriminator 1
	lw	a5,-40(s0)
	bne	a5,zero,.L269
.L268:
	.loc 1 97 16
	li	a5,0
	j	.L270
.L269:
	.loc 1 100 5
	call	ensure_drbg
	.loc 1 102 15
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	pqcrystals_kyber512_ref_keypair
	sw	a0,-20(s0)
	.loc 1 103 8
	lw	a5,-20(s0)
	beq	a5,zero,.L271
	.loc 1 104 9
	lw	a1,-20(s0)
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	.loc 1 105 16
	li	a5,0
	j	.L270
.L271:
	.loc 1 107 12
	li	a5,1
.L270:
	.loc 1 108 1
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
	.size	pqkem_keygen, .-pqkem_keygen
	.section	.rodata
	.align	2
.LC4:
	.string	"[pqkem] crypto_kem_enc ret=%d\r\n"
	.section	.text.pqkem_encapsulate,"ax",@progbits
	.align	1
	.globl	pqkem_encapsulate
	.type	pqkem_encapsulate, @function
pqkem_encapsulate:
.LFB92:
	.loc 1 113 1
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
	.loc 1 114 8
	lw	a5,-36(s0)
	beq	a5,zero,.L273
	.loc 1 114 13 discriminator 1
	lw	a5,-40(s0)
	beq	a5,zero,.L273
	.loc 1 114 20 discriminator 2
	lw	a5,-44(s0)
	bne	a5,zero,.L274
.L273:
	.loc 1 115 16
	li	a5,0
	j	.L275
.L274:
	.loc 1 118 5
	call	ensure_drbg
	.loc 1 120 15
	lw	a2,-36(s0)
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	pqcrystals_kyber512_ref_enc
	sw	a0,-20(s0)
	.loc 1 121 8
	lw	a5,-20(s0)
	beq	a5,zero,.L276
	.loc 1 122 9
	lw	a1,-20(s0)
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
	.loc 1 123 16
	li	a5,0
	j	.L275
.L276:
	.loc 1 125 12
	li	a5,1
.L275:
	.loc 1 126 1
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
.LFE92:
	.size	pqkem_encapsulate, .-pqkem_encapsulate
	.section	.rodata
	.align	2
.LC5:
	.string	"[pqkem] crypto_kem_dec ret=%d\r\n"
	.section	.text.pqkem_decapsulate,"ax",@progbits
	.align	1
	.globl	pqkem_decapsulate
	.type	pqkem_decapsulate, @function
pqkem_decapsulate:
.LFB93:
	.loc 1 131 1
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
	.loc 1 132 8
	lw	a5,-36(s0)
	beq	a5,zero,.L278
	.loc 1 132 13 discriminator 1
	lw	a5,-40(s0)
	beq	a5,zero,.L278
	.loc 1 132 20 discriminator 2
	lw	a5,-44(s0)
	bne	a5,zero,.L279
.L278:
	.loc 1 133 16
	li	a5,0
	j	.L280
.L279:
	.loc 1 136 5
	call	ensure_drbg
	.loc 1 138 15
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lw	a0,-44(s0)
	call	pqcrystals_kyber512_ref_dec
	sw	a0,-20(s0)
	.loc 1 139 8
	lw	a5,-20(s0)
	beq	a5,zero,.L281
	.loc 1 140 9
	lw	a1,-20(s0)
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	printf
	.loc 1 141 16
	li	a5,0
	j	.L280
.L281:
	.loc 1 143 12
	li	a5,1
.L280:
	.loc 1 144 1
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
.LFE93:
	.size	pqkem_decapsulate, .-pqkem_decapsulate
	.text
.Letext0:
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/kyber/kyber512_ref/poly.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/kyber/kyber512_ref/polyvec.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/kyber/kyber512_ref/fips202.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/kyber/kyber512_ref/symmetric.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/aes.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/entropy.h"
	.file 21 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ctr_drbg.h"
	.file 22 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 23 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 24 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/kyber/kyber512_ref/ntt.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2694
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x28
	.4byte	.LASF181
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x10
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xe
	.4byte	.LASF4
	.byte	0xc
	.byte	0x25
	.byte	0x13
	.4byte	0x43
	.uleb128 0x11
	.4byte	0x32
	.uleb128 0x10
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0xe
	.4byte	.LASF5
	.byte	0xc
	.byte	0x28
	.byte	0x12
	.4byte	0x56
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x10
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0xe
	.4byte	.LASF8
	.byte	0xc
	.byte	0x2e
	.byte	0x17
	.4byte	0x75
	.uleb128 0x11
	.4byte	0x64
	.uleb128 0x10
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x11
	.4byte	0x75
	.uleb128 0xe
	.4byte	.LASF10
	.byte	0xc
	.byte	0x31
	.byte	0x1c
	.4byte	0x8d
	.uleb128 0x10
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0xe
	.4byte	.LASF12
	.byte	0xc
	.byte	0x34
	.byte	0x1b
	.4byte	0xa0
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0xe
	.4byte	.LASF14
	.byte	0xc
	.byte	0x37
	.byte	0x20
	.4byte	0xb8
	.uleb128 0x11
	.4byte	0xa7
	.uleb128 0x10
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x29
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0xd
	.byte	0xe5
	.byte	0x16
	.4byte	0xc6
	.uleb128 0x10
	.byte	0x10
	.byte	0x4
	.4byte	.LASF18
	.uleb128 0x2a
	.byte	0x4
	.uleb128 0x18
	.4byte	0xe0
	.uleb128 0xc
	.4byte	0x75
	.uleb128 0x10
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0x11
	.4byte	0xec
	.uleb128 0xc
	.4byte	0xf3
	.uleb128 0x18
	.4byte	0xf8
	.uleb128 0x1c
	.2byte	0x200
	.byte	0xe
	.byte	0xb
	.4byte	0x119
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0xe
	.byte	0xc
	.byte	0xb
	.4byte	0x119
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x32
	.4byte	0x129
	.uleb128 0xf
	.4byte	0xc6
	.byte	0xff
	.byte	0
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0xe
	.byte	0xd
	.byte	0x3
	.4byte	0x102
	.uleb128 0x11
	.4byte	0x129
	.uleb128 0x1c
	.2byte	0x400
	.byte	0xf
	.byte	0x8
	.4byte	0x151
	.uleb128 0x19
	.string	"vec"
	.byte	0xf
	.byte	0x9
	.byte	0x8
	.4byte	0x151
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x129
	.4byte	0x161
	.uleb128 0xf
	.4byte	0xc6
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0xf
	.byte	0xa
	.byte	0x3
	.4byte	0x13a
	.uleb128 0x11
	.4byte	0x161
	.uleb128 0xd
	.4byte	0x3e
	.4byte	0x182
	.uleb128 0xf
	.4byte	0xc6
	.byte	0x7f
	.byte	0
	.uleb128 0x11
	.4byte	0x172
	.uleb128 0x2b
	.4byte	.LASF182
	.byte	0x18
	.byte	0x8
	.byte	0x16
	.4byte	0x182
	.uleb128 0x2c
	.byte	0xd0
	.byte	0x10
	.byte	0xe
	.byte	0x9
	.4byte	0x1b5
	.uleb128 0x19
	.string	"s"
	.byte	0x10
	.byte	0xf
	.byte	0xc
	.4byte	0x1b5
	.byte	0
	.uleb128 0x19
	.string	"pos"
	.byte	0x10
	.byte	0x10
	.byte	0x10
	.4byte	0xc6
	.byte	0xc8
	.byte	0
	.uleb128 0xd
	.4byte	0xa7
	.4byte	0x1c5
	.uleb128 0xf
	.4byte	0xc6
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x10
	.byte	0x11
	.byte	0x3
	.4byte	0x193
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x11
	.byte	0xa
	.byte	0x16
	.4byte	0x1c5
	.uleb128 0x1d
	.4byte	0xbf
	.4byte	0x1f6
	.uleb128 0x6
	.4byte	0xe0
	.uleb128 0x6
	.4byte	0xe7
	.uleb128 0x6
	.4byte	0xcd
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF28
	.2byte	0x118
	.byte	0x12
	.byte	0x3f
	.4byte	0x22b
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x12
	.byte	0x40
	.byte	0x9
	.4byte	0xbf
	.byte	0
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x12
	.byte	0x41
	.byte	0xc
	.4byte	0xcd
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x12
	.byte	0x47
	.byte	0xe
	.4byte	0x22b
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	0x94
	.4byte	0x23b
	.uleb128 0xf
	.4byte	0xc6
	.byte	0x43
	.byte	0
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x12
	.byte	0x51
	.byte	0x1
	.4byte	0x1f6
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x13
	.byte	0x6b
	.byte	0x22
	.4byte	0x258
	.uleb128 0x11
	.4byte	0x247
	.uleb128 0x2d
	.4byte	.LASF29
	.uleb128 0x1e
	.4byte	.LASF30
	.byte	0xc
	.byte	0x13
	.byte	0x7a
	.4byte	0x291
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x13
	.byte	0x7c
	.byte	0x1e
	.4byte	0x291
	.byte	0
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x13
	.byte	0x84
	.byte	0xb
	.4byte	0xe0
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x13
	.byte	0x88
	.byte	0xb
	.4byte	0xe0
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	0x253
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x13
	.byte	0x8a
	.byte	0x3
	.4byte	0x25d
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x14
	.byte	0x58
	.byte	0xf
	.4byte	0x2ae
	.uleb128 0xc
	.4byte	0x2b3
	.uleb128 0x1d
	.4byte	0xbf
	.4byte	0x2d1
	.uleb128 0x6
	.4byte	0xe0
	.uleb128 0x6
	.4byte	0xe7
	.uleb128 0x6
	.4byte	0xcd
	.uleb128 0x6
	.4byte	0x2d1
	.byte	0
	.uleb128 0xc
	.4byte	0xcd
	.uleb128 0x1e
	.4byte	.LASF35
	.byte	0x14
	.byte	0x14
	.byte	0x5e
	.4byte	0x324
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x14
	.byte	0x5f
	.byte	0x22
	.4byte	0x2a2
	.byte	0
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x14
	.byte	0x60
	.byte	0xb
	.4byte	0xe0
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x14
	.byte	0x61
	.byte	0xc
	.4byte	0xcd
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x14
	.byte	0x62
	.byte	0xc
	.4byte	0xcd
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x14
	.byte	0x63
	.byte	0x9
	.4byte	0xbf
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x14
	.byte	0x65
	.byte	0x1
	.4byte	0x2d6
	.uleb128 0x1a
	.4byte	.LASF41
	.2byte	0x1a4
	.byte	0x14
	.byte	0x6a
	.4byte	0x372
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x14
	.byte	0x6b
	.byte	0x1a
	.4byte	0x296
	.byte	0
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x14
	.byte	0x6c
	.byte	0x9
	.4byte	0xbf
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x14
	.byte	0x6f
	.byte	0x9
	.4byte	0xbf
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x14
	.byte	0x70
	.byte	0x22
	.4byte	0x372
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.4byte	0x324
	.4byte	0x382
	.uleb128 0xf
	.4byte	0xc6
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x14
	.byte	0x78
	.byte	0x1
	.4byte	0x330
	.uleb128 0x1a
	.4byte	.LASF46
	.2byte	0x140
	.byte	0x15
	.byte	0xb9
	.4byte	0x404
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x15
	.byte	0xba
	.byte	0x13
	.4byte	0x404
	.byte	0
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x15
	.byte	0xbb
	.byte	0x9
	.4byte	0xbf
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x15
	.byte	0xc5
	.byte	0x9
	.4byte	0xbf
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x15
	.byte	0xc9
	.byte	0xc
	.4byte	0xcd
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x15
	.byte	0xcb
	.byte	0x9
	.4byte	0xbf
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x15
	.byte	0xd2
	.byte	0x19
	.4byte	0x23b
	.byte	0x20
	.uleb128 0x1f
	.4byte	.LASF53
	.byte	0xd8
	.byte	0xa
	.4byte	0x414
	.2byte	0x138
	.uleb128 0x1f
	.4byte	.LASF54
	.byte	0xdb
	.byte	0xb
	.4byte	0xe0
	.2byte	0x13c
	.byte	0
	.uleb128 0xd
	.4byte	0x75
	.4byte	0x414
	.uleb128 0xf
	.4byte	0xc6
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.4byte	0x1dd
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x15
	.byte	0xe8
	.byte	0x1
	.4byte	0x38e
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x1
	.byte	0x1e
	.byte	0x20
	.4byte	0x382
	.uleb128 0x5
	.byte	0x3
	.4byte	g_entropy
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x1
	.byte	0x1f
	.byte	0x21
	.4byte	0x419
	.uleb128 0x5
	.byte	0x3
	.4byte	g_ctr_drbg
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x1
	.byte	0x20
	.byte	0xc
	.4byte	0xbf
	.uleb128 0x5
	.byte	0x3
	.4byte	g_drbg_ready
	.uleb128 0xd
	.4byte	0xb3
	.4byte	0x46b
	.uleb128 0xf
	.4byte	0xc6
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.4byte	0x45b
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0x3
	.byte	0x30
	.byte	0x17
	.4byte	0x46b
	.uleb128 0x5
	.byte	0x3
	.4byte	KeccakF_RoundConstants
	.uleb128 0x2e
	.4byte	0x187
	.byte	0x6
	.byte	0x27
	.byte	0xf
	.uleb128 0x5
	.byte	0x3
	.4byte	pqcrystals_kyber512_ref_zetas
	.uleb128 0x16
	.4byte	.LASF59
	.byte	0x16
	.byte	0x1f
	.byte	0x8
	.4byte	0xe0
	.4byte	0x4b0
	.uleb128 0x6
	.4byte	0xe2
	.uleb128 0x6
	.4byte	0x4b5
	.uleb128 0x6
	.4byte	0xcd
	.byte	0
	.uleb128 0xc
	.4byte	0x4ba
	.uleb128 0x18
	.4byte	0x4b0
	.uleb128 0x2f
	.uleb128 0x20
	.4byte	.LASF60
	.2byte	0x223
	.4byte	0xbf
	.4byte	0x4da
	.uleb128 0x6
	.4byte	0xe0
	.uleb128 0x6
	.4byte	0xe7
	.uleb128 0x6
	.4byte	0xcd
	.byte	0
	.uleb128 0x16
	.4byte	.LASF61
	.byte	0x17
	.byte	0xce
	.byte	0x5
	.4byte	0xbf
	.4byte	0x4f1
	.uleb128 0x6
	.4byte	0xfd
	.uleb128 0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LASF62
	.byte	0x14
	.byte	0xba
	.byte	0x5
	.4byte	0xbf
	.4byte	0x511
	.uleb128 0x6
	.4byte	0xe0
	.uleb128 0x6
	.4byte	0xe7
	.uleb128 0x6
	.4byte	0xcd
	.byte	0
	.uleb128 0x20
	.4byte	.LASF63
	.2byte	0x15b
	.4byte	0xbf
	.4byte	0x53a
	.uleb128 0x6
	.4byte	0x53a
	.uleb128 0x6
	.4byte	0x414
	.uleb128 0x6
	.4byte	0xe0
	.uleb128 0x6
	.4byte	0x53f
	.uleb128 0x6
	.4byte	0xcd
	.byte	0
	.uleb128 0xc
	.4byte	0x419
	.uleb128 0xc
	.4byte	0x7c
	.uleb128 0x16
	.4byte	.LASF64
	.byte	0x16
	.byte	0x29
	.byte	0x8
	.4byte	0xcd
	.4byte	0x55a
	.uleb128 0x6
	.4byte	0xf8
	.byte	0
	.uleb128 0x21
	.4byte	.LASF65
	.byte	0x15
	.byte	0xf6
	.4byte	0x56b
	.uleb128 0x6
	.4byte	0x53a
	.byte	0
	.uleb128 0x21
	.4byte	.LASF66
	.byte	0x14
	.byte	0x87
	.4byte	0x57c
	.uleb128 0x6
	.4byte	0x57c
	.byte	0
	.uleb128 0xc
	.4byte	0x382
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0x1
	.byte	0x80
	.byte	0x6
	.4byte	0x5d5
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d5
	.uleb128 0x2
	.string	"ct"
	.byte	0x1
	.byte	0x80
	.byte	0x27
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"sk"
	.byte	0x1
	.byte	0x81
	.byte	0x27
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"ss"
	.byte	0x1
	.byte	0x82
	.byte	0x21
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"ret"
	.byte	0x1
	.byte	0x8a
	.byte	0x9
	.4byte	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.byte	0x2
	.4byte	.LASF67
	.uleb128 0xc
	.4byte	0x70
	.uleb128 0xc
	.4byte	0x64
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0x1
	.byte	0x6e
	.byte	0x6
	.4byte	0x5d5
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x63a
	.uleb128 0x2
	.string	"pk"
	.byte	0x1
	.byte	0x6e
	.byte	0x27
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"ct"
	.byte	0x1
	.byte	0x6f
	.byte	0x21
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"ss"
	.byte	0x1
	.byte	0x70
	.byte	0x21
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"ret"
	.byte	0x1
	.byte	0x78
	.byte	0x9
	.4byte	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0x1
	.byte	0x5e
	.byte	0x6
	.4byte	0x5d5
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x680
	.uleb128 0x2
	.string	"pk"
	.byte	0x1
	.byte	0x5e
	.byte	0x1c
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"sk"
	.byte	0x1
	.byte	0x5e
	.byte	0x29
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"ret"
	.byte	0x1
	.byte	0x66
	.byte	0x9
	.4byte	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0xb
	.byte	0x47
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6bd
	.uleb128 0x2
	.string	"r"
	.byte	0xb
	.byte	0x47
	.byte	0x32
	.4byte	0x6bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"v"
	.byte	0xb
	.byte	0x47
	.byte	0x3d
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x2
	.string	"b"
	.byte	0xb
	.byte	0x47
	.byte	0x49
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	0x32
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0xb
	.byte	0x28
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x71b
	.uleb128 0x2
	.string	"r"
	.byte	0xb
	.byte	0x28
	.byte	0x2c
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"x"
	.byte	0xb
	.byte	0x28
	.byte	0x3e
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"len"
	.byte	0xb
	.byte	0x28
	.byte	0x48
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"b"
	.byte	0xb
	.byte	0x28
	.byte	0x55
	.4byte	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x1
	.string	"i"
	.byte	0xb
	.byte	0x2a
	.byte	0xa
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF73
	.byte	0xb
	.byte	0x10
	.byte	0x5
	.4byte	0xbf
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x779
	.uleb128 0x2
	.string	"a"
	.byte	0xb
	.byte	0x10
	.byte	0x33
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"b"
	.byte	0xb
	.byte	0x10
	.byte	0x45
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"len"
	.byte	0xb
	.byte	0x10
	.byte	0x4f
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"i"
	.byte	0xb
	.byte	0x12
	.byte	0xa
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"r"
	.byte	0xb
	.byte	0x13
	.byte	0xb
	.4byte	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0xa
	.byte	0x40
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7cd
	.uleb128 0x2
	.string	"out"
	.byte	0xa
	.byte	0x40
	.byte	0x3b
	.4byte	0x5e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2
	.string	"key"
	.byte	0xa
	.byte	0x40
	.byte	0x52
	.4byte	0x5dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0xa
	.byte	0x40
	.byte	0x69
	.4byte	0x5dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x1
	.string	"s"
	.byte	0xa
	.byte	0x42
	.byte	0x10
	.4byte	0x1c5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0xa
	.byte	0x2b
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x832
	.uleb128 0x2
	.string	"out"
	.byte	0xa
	.byte	0x2b
	.byte	0x3a
	.4byte	0x5e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0xa
	.byte	0x2b
	.byte	0x46
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.string	"key"
	.byte	0xa
	.byte	0x2b
	.byte	0x5c
	.4byte	0x5dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0xa
	.byte	0x2b
	.byte	0x6d
	.4byte	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0xa
	.byte	0x2d
	.byte	0xb
	.4byte	0x832
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0xd
	.4byte	0x64
	.4byte	0x842
	.uleb128 0xf
	.4byte	0xc6
	.byte	0x20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0xa
	.byte	0x12
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a3
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0xa
	.byte	0x12
	.byte	0x42
	.4byte	0x8a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0xa
	.byte	0x13
	.byte	0x2a
	.4byte	0x5dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.string	"x"
	.byte	0xa
	.byte	0x14
	.byte	0x24
	.4byte	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0x2
	.string	"y"
	.byte	0xa
	.byte	0x15
	.byte	0x24
	.4byte	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -74
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0xa
	.byte	0x17
	.byte	0xb
	.4byte	0x8a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0xc
	.4byte	0x1c5
	.uleb128 0xd
	.4byte	0x64
	.4byte	0x8b8
	.uleb128 0xf
	.4byte	0xc6
	.byte	0x21
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF84
	.byte	0x9
	.byte	0x23
	.byte	0x9
	.4byte	0x32
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8fa
	.uleb128 0x2
	.string	"a"
	.byte	0x9
	.byte	0x23
	.byte	0x38
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1
	.string	"t"
	.byte	0x9
	.byte	0x24
	.byte	0xb
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"v"
	.byte	0x9
	.byte	0x25
	.byte	0x11
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF85
	.byte	0x9
	.byte	0x10
	.byte	0x9
	.4byte	0x32
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x92f
	.uleb128 0x2
	.string	"a"
	.byte	0x9
	.byte	0x10
	.byte	0x3b
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"t"
	.byte	0x9
	.byte	0x12
	.byte	0xb
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0x8
	.byte	0xf1
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x979
	.uleb128 0x2
	.string	"r"
	.byte	0x8
	.byte	0xf1
	.byte	0x33
	.4byte	0x979
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"a"
	.byte	0x8
	.byte	0xf1
	.byte	0x45
	.4byte	0x97e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"b"
	.byte	0x8
	.byte	0xf1
	.byte	0x57
	.4byte	0x97e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"i"
	.byte	0x8
	.byte	0xf3
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	0x161
	.uleb128 0xc
	.4byte	0x16d
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x8
	.byte	0xe1
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b3
	.uleb128 0x2
	.string	"r"
	.byte	0x8
	.byte	0xe1
	.byte	0x36
	.4byte	0x979
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"i"
	.byte	0x8
	.byte	0xe3
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0x8
	.byte	0xca
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa0e
	.uleb128 0x2
	.string	"r"
	.byte	0x8
	.byte	0xca
	.byte	0x43
	.4byte	0xa0e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -548
	.uleb128 0x2
	.string	"a"
	.byte	0x8
	.byte	0xca
	.byte	0x55
	.4byte	0x97e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.uleb128 0x2
	.string	"b"
	.byte	0x8
	.byte	0xca
	.byte	0x67
	.4byte	0x97e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -556
	.uleb128 0x1
	.string	"i"
	.byte	0x8
	.byte	0xcc
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"t"
	.byte	0x8
	.byte	0xcd
	.byte	0x8
	.4byte	0x129
	.uleb128 0x3
	.byte	0x91
	.sleb128 -532
	.byte	0
	.uleb128 0xc
	.4byte	0x129
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x8
	.byte	0xb9
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa43
	.uleb128 0x2
	.string	"r"
	.byte	0x8
	.byte	0xb9
	.byte	0x3d
	.4byte	0x979
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"i"
	.byte	0x8
	.byte	0xbb
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0x8
	.byte	0xaa
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa73
	.uleb128 0x2
	.string	"r"
	.byte	0x8
	.byte	0xaa
	.byte	0x33
	.4byte	0x979
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"i"
	.byte	0x8
	.byte	0xac
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0x8
	.byte	0x9c
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab0
	.uleb128 0x2
	.string	"r"
	.byte	0x8
	.byte	0x9c
	.byte	0x39
	.4byte	0x979
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"a"
	.byte	0x8
	.byte	0x9c
	.byte	0x4a
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"i"
	.byte	0x8
	.byte	0x9e
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0x8
	.byte	0x8b
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaed
	.uleb128 0x2
	.string	"r"
	.byte	0x8
	.byte	0x8b
	.byte	0x36
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"a"
	.byte	0x8
	.byte	0x8b
	.byte	0x53
	.4byte	0x97e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"i"
	.byte	0x8
	.byte	0x8d
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x8
	.byte	0x59
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb51
	.uleb128 0x2
	.string	"r"
	.byte	0x8
	.byte	0x59
	.byte	0x3a
	.4byte	0x979
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"a"
	.byte	0x8
	.byte	0x59
	.byte	0x4b
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"i"
	.byte	0x8
	.byte	0x5b
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"j"
	.byte	0x8
	.byte	0x5b
	.byte	0x12
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"k"
	.byte	0x8
	.byte	0x5b
	.byte	0x14
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"t"
	.byte	0x8
	.byte	0x70
	.byte	0xc
	.4byte	0xb51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xd
	.4byte	0x81
	.4byte	0xb61
	.uleb128 0xf
	.4byte	0xc6
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0x8
	.byte	0xf
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbd3
	.uleb128 0x2
	.string	"r"
	.byte	0x8
	.byte	0xf
	.byte	0x37
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"a"
	.byte	0x8
	.byte	0xf
	.byte	0x54
	.4byte	0x97e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"i"
	.byte	0x8
	.byte	0x11
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"j"
	.byte	0x8
	.byte	0x11
	.byte	0x12
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"k"
	.byte	0x8
	.byte	0x11
	.byte	0x14
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"d0"
	.byte	0x8
	.byte	0x12
	.byte	0xc
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"t"
	.byte	0x8
	.byte	0x33
	.byte	0xc
	.4byte	0xb51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x22
	.4byte	.LASF95
	.2byte	0x163
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc21
	.uleb128 0x3
	.string	"r"
	.byte	0x7
	.2byte	0x163
	.byte	0x2d
	.4byte	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"a"
	.byte	0x7
	.2byte	0x163
	.byte	0x3c
	.4byte	0xc21
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"b"
	.byte	0x7
	.2byte	0x163
	.byte	0x4b
	.4byte	0xc21
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.string	"i"
	.byte	0x7
	.2byte	0x165
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	0x135
	.uleb128 0x22
	.4byte	.LASF96
	.2byte	0x153
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc74
	.uleb128 0x3
	.string	"r"
	.byte	0x7
	.2byte	0x153
	.byte	0x2d
	.4byte	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"a"
	.byte	0x7
	.2byte	0x153
	.byte	0x3c
	.4byte	0xc21
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"b"
	.byte	0x7
	.2byte	0x153
	.byte	0x4b
	.4byte	0xc21
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.string	"i"
	.byte	0x7
	.2byte	0x155
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x143
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xca7
	.uleb128 0x3
	.string	"r"
	.byte	0x7
	.2byte	0x143
	.byte	0x30
	.4byte	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"i"
	.byte	0x7
	.2byte	0x145
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x133
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce8
	.uleb128 0x3
	.string	"r"
	.byte	0x7
	.2byte	0x133
	.byte	0x30
	.4byte	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"i"
	.byte	0x7
	.2byte	0x135
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"f"
	.byte	0x7
	.2byte	0x136
	.byte	0x11
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x8
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x122
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd37
	.uleb128 0x3
	.string	"r"
	.byte	0x7
	.2byte	0x122
	.byte	0x3c
	.4byte	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"a"
	.byte	0x7
	.2byte	0x122
	.byte	0x4b
	.4byte	0xc21
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"b"
	.byte	0x7
	.2byte	0x122
	.byte	0x5a
	.4byte	0xc21
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.string	"i"
	.byte	0x7
	.2byte	0x124
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x114
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd5c
	.uleb128 0x3
	.string	"r"
	.byte	0x7
	.2byte	0x114
	.byte	0x37
	.4byte	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x105
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd81
	.uleb128 0x3
	.string	"r"
	.byte	0x7
	.2byte	0x105
	.byte	0x2d
	.4byte	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0x7
	.byte	0xf4
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdd5
	.uleb128 0x2
	.string	"r"
	.byte	0x7
	.byte	0xf4
	.byte	0x37
	.4byte	0xa0e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x7
	.byte	0xf4
	.byte	0x48
	.4byte	0x5dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x7
	.byte	0xf4
	.byte	0x5a
	.4byte	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -153
	.uleb128 0x1
	.string	"buf"
	.byte	0x7
	.byte	0xf6
	.byte	0xb
	.4byte	0xdd5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0xd
	.4byte	0x64
	.4byte	0xde5
	.uleb128 0xf
	.4byte	0xc6
	.byte	0x7f
	.byte	0
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0x7
	.byte	0xe1
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe39
	.uleb128 0x2
	.string	"r"
	.byte	0x7
	.byte	0xe1
	.byte	0x37
	.4byte	0xa0e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x7
	.byte	0xe1
	.byte	0x48
	.4byte	0x5dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x7
	.byte	0xe1
	.byte	0x5a
	.4byte	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -217
	.uleb128 0x1
	.string	"buf"
	.byte	0x7
	.byte	0xe3
	.byte	0xb
	.4byte	0xe39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0xd
	.4byte	0x64
	.4byte	0xe49
	.uleb128 0xf
	.4byte	0xc6
	.byte	0xbf
	.byte	0
	.uleb128 0x12
	.4byte	.LASF104
	.byte	0x7
	.byte	0xc0
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xea2
	.uleb128 0x2
	.string	"msg"
	.byte	0x7
	.byte	0xc0
	.byte	0x31
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"a"
	.byte	0x7
	.byte	0xc0
	.byte	0x48
	.4byte	0xc21
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"i"
	.byte	0x7
	.byte	0xc2
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"j"
	.byte	0x7
	.byte	0xc2
	.byte	0x12
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"t"
	.byte	0x7
	.byte	0xc3
	.byte	0xc
	.4byte	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0x7
	.byte	0xa8
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeee
	.uleb128 0x2
	.string	"r"
	.byte	0x7
	.byte	0xa8
	.byte	0x31
	.4byte	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"msg"
	.byte	0x7
	.byte	0xa8
	.byte	0x42
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"i"
	.byte	0x7
	.byte	0xaa
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"j"
	.byte	0x7
	.byte	0xaa
	.byte	0x12
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.4byte	.LASF106
	.byte	0x7
	.byte	0x97
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf2b
	.uleb128 0x2
	.string	"r"
	.byte	0x7
	.byte	0x97
	.byte	0x33
	.4byte	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"a"
	.byte	0x7
	.byte	0x97
	.byte	0x44
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"i"
	.byte	0x7
	.byte	0x99
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF107
	.byte	0x7
	.byte	0x7c
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf84
	.uleb128 0x2
	.string	"r"
	.byte	0x7
	.byte	0x7c
	.byte	0x33
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"a"
	.byte	0x7
	.byte	0x7c
	.byte	0x47
	.4byte	0xc21
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"i"
	.byte	0x7
	.byte	0x7e
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"t0"
	.byte	0x7
	.byte	0x7f
	.byte	0xc
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1
	.string	"t1"
	.byte	0x7
	.byte	0x7f
	.byte	0x10
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.4byte	.LASF108
	.byte	0x7
	.byte	0x53
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfc1
	.uleb128 0x2
	.string	"r"
	.byte	0x7
	.byte	0x53
	.byte	0x34
	.4byte	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"a"
	.byte	0x7
	.byte	0x53
	.byte	0x45
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"i"
	.byte	0x7
	.byte	0x55
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF109
	.byte	0x7
	.byte	0x13
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1033
	.uleb128 0x2
	.string	"r"
	.byte	0x7
	.byte	0x13
	.byte	0x34
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"a"
	.byte	0x7
	.byte	0x13
	.byte	0x48
	.4byte	0xc21
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"i"
	.byte	0x7
	.byte	0x15
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"j"
	.byte	0x7
	.byte	0x15
	.byte	0x12
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"u"
	.byte	0x7
	.byte	0x16
	.byte	0xb
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x1
	.string	"d0"
	.byte	0x7
	.byte	0x17
	.byte	0xc
	.4byte	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"t"
	.byte	0x7
	.byte	0x18
	.byte	0xb
	.4byte	0x1033
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xd
	.4byte	0x64
	.4byte	0x1043
	.uleb128 0xf
	.4byte	0xc6
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0x6
	.byte	0x8b
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x108f
	.uleb128 0x2
	.string	"r"
	.byte	0x6
	.byte	0x8b
	.byte	0x2e
	.4byte	0x6bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"a"
	.byte	0x6
	.byte	0x8b
	.byte	0x42
	.4byte	0x108f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"b"
	.byte	0x6
	.byte	0x8b
	.byte	0x56
	.4byte	0x108f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.4byte	.LASF111
	.byte	0x6
	.byte	0x8b
	.byte	0x64
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.byte	0
	.uleb128 0xc
	.4byte	0x3e
	.uleb128 0xa
	.4byte	.LASF112
	.byte	0x6
	.byte	0x6a
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1118
	.uleb128 0x2
	.string	"r"
	.byte	0x6
	.byte	0x6a
	.byte	0x2d
	.4byte	0x6bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.4byte	.LASF113
	.byte	0x6
	.byte	0x6b
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"len"
	.byte	0x6
	.byte	0x6b
	.byte	0x17
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"j"
	.byte	0x6
	.byte	0x6b
	.byte	0x1c
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"k"
	.byte	0x6
	.byte	0x6b
	.byte	0x1f
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"t"
	.byte	0x6
	.byte	0x6c
	.byte	0xb
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x7
	.4byte	.LASF111
	.byte	0x6
	.byte	0x6c
	.byte	0xe
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"f"
	.byte	0x6
	.byte	0x6d
	.byte	0x11
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.byte	0
	.uleb128 0xa
	.4byte	.LASF114
	.byte	0x6
	.byte	0x50
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x118f
	.uleb128 0x2
	.string	"r"
	.byte	0x6
	.byte	0x50
	.byte	0x2a
	.4byte	0x6bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.string	"len"
	.byte	0x6
	.byte	0x51
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF113
	.byte	0x6
	.byte	0x51
	.byte	0x15
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"j"
	.byte	0x6
	.byte	0x51
	.byte	0x1c
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"k"
	.byte	0x6
	.byte	0x51
	.byte	0x1f
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"t"
	.byte	0x6
	.byte	0x52
	.byte	0xb
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF111
	.byte	0x6
	.byte	0x52
	.byte	0xe
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.byte	0
	.uleb128 0x31
	.4byte	.LASF132
	.byte	0x6
	.byte	0x44
	.byte	0x10
	.4byte	0x32
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11c4
	.uleb128 0x2
	.string	"a"
	.byte	0x6
	.byte	0x44
	.byte	0x1e
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2
	.string	"b"
	.byte	0x6
	.byte	0x44
	.byte	0x29
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF115
	.byte	0x5
	.byte	0x8d
	.byte	0x5
	.4byte	0xbf
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1258
	.uleb128 0x2
	.string	"ss"
	.byte	0x5
	.byte	0x8d
	.byte	0x2a
	.4byte	0x5e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -932
	.uleb128 0x2
	.string	"ct"
	.byte	0x5
	.byte	0x8e
	.byte	0x23
	.4byte	0x5dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -936
	.uleb128 0x2
	.string	"sk"
	.byte	0x5
	.byte	0x8f
	.byte	0x23
	.4byte	0x5dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -940
	.uleb128 0x7
	.4byte	.LASF116
	.byte	0x5
	.byte	0x91
	.byte	0x7
	.4byte	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"buf"
	.byte	0x5
	.byte	0x92
	.byte	0xb
	.4byte	0x1258
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.string	"kr"
	.byte	0x5
	.byte	0x94
	.byte	0xb
	.4byte	0x1258
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1
	.string	"cmp"
	.byte	0x5
	.byte	0x96
	.byte	0xb
	.4byte	0x1268
	.uleb128 0x3
	.byte	0x91
	.sleb128 -920
	.uleb128 0x1
	.string	"pk"
	.byte	0x5
	.byte	0x97
	.byte	0x12
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	0x64
	.4byte	0x1268
	.uleb128 0xf
	.4byte	0xc6
	.byte	0x3f
	.byte	0
	.uleb128 0xd
	.4byte	0x64
	.4byte	0x1279
	.uleb128 0x23
	.4byte	0xc6
	.2byte	0x2ff
	.byte	0
	.uleb128 0x13
	.4byte	.LASF117
	.byte	0x5
	.byte	0x72
	.byte	0x5
	.4byte	0xbf
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12cd
	.uleb128 0x2
	.string	"ct"
	.byte	0x5
	.byte	0x72
	.byte	0x2a
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"ss"
	.byte	0x5
	.byte	0x73
	.byte	0x1d
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"pk"
	.byte	0x5
	.byte	0x74
	.byte	0x23
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.4byte	.LASF118
	.byte	0x5
	.byte	0x76
	.byte	0xb
	.4byte	0x12cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xd
	.4byte	0x64
	.4byte	0x12dd
	.uleb128 0xf
	.4byte	0xc6
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF119
	.byte	0x5
	.byte	0x4d
	.byte	0x5
	.4byte	0xbf
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1354
	.uleb128 0x2
	.string	"ct"
	.byte	0x5
	.byte	0x4d
	.byte	0x31
	.4byte	0x5e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2
	.string	"ss"
	.byte	0x5
	.byte	0x4e
	.byte	0x24
	.4byte	0x5e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2
	.string	"pk"
	.byte	0x5
	.byte	0x4f
	.byte	0x2a
	.4byte	0x5dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x5
	.byte	0x50
	.byte	0x2a
	.4byte	0x5dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1
	.string	"buf"
	.byte	0x5
	.byte	0x52
	.byte	0xb
	.4byte	0x1258
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.string	"kr"
	.byte	0x5
	.byte	0x54
	.byte	0xb
	.4byte	0x1258
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x13
	.4byte	.LASF120
	.byte	0x5
	.byte	0x33
	.byte	0x5
	.4byte	0xbf
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x139d
	.uleb128 0x2
	.string	"pk"
	.byte	0x5
	.byte	0x33
	.byte	0x2e
	.4byte	0x5e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2
	.string	"sk"
	.byte	0x5
	.byte	0x34
	.byte	0x21
	.4byte	0x5e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x7
	.4byte	.LASF118
	.byte	0x5
	.byte	0x36
	.byte	0xb
	.4byte	0x1258
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x13
	.4byte	.LASF121
	.byte	0x5
	.byte	0x1a
	.byte	0x5
	.4byte	0xbf
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13e3
	.uleb128 0x2
	.string	"pk"
	.byte	0x5
	.byte	0x1a
	.byte	0x35
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"sk"
	.byte	0x5
	.byte	0x1b
	.byte	0x28
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x5
	.byte	0x1c
	.byte	0x2e
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x8
	.4byte	.LASF122
	.byte	0x4
	.2byte	0x13b
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1467
	.uleb128 0x3
	.string	"m"
	.byte	0x4
	.2byte	0x13b
	.byte	0x31
	.4byte	0x5e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3092
	.uleb128 0x3
	.string	"c"
	.byte	0x4
	.2byte	0x13c
	.byte	0x1f
	.4byte	0x5dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3096
	.uleb128 0x3
	.string	"sk"
	.byte	0x4
	.2byte	0x13d
	.byte	0x1f
	.4byte	0x5dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3100
	.uleb128 0x5
	.string	"b"
	.byte	0x4
	.2byte	0x13f
	.byte	0xb
	.4byte	0x161
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1040
	.uleb128 0x14
	.4byte	.LASF123
	.byte	0x4
	.2byte	0x13f
	.byte	0xe
	.4byte	0x161
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2064
	.uleb128 0x5
	.string	"v"
	.byte	0x4
	.2byte	0x140
	.byte	0x8
	.4byte	0x129
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2576
	.uleb128 0x5
	.string	"mp"
	.byte	0x4
	.2byte	0x140
	.byte	0xb
	.4byte	0x129
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3088
	.byte	0
	.uleb128 0x8
	.4byte	.LASF124
	.byte	0x4
	.2byte	0x105
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x156a
	.uleb128 0x3
	.string	"c"
	.byte	0x4
	.2byte	0x105
	.byte	0x31
	.4byte	0x5e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -7748
	.uleb128 0x3
	.string	"m"
	.byte	0x4
	.2byte	0x106
	.byte	0x1f
	.4byte	0x5dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -7752
	.uleb128 0x3
	.string	"pk"
	.byte	0x4
	.2byte	0x107
	.byte	0x1f
	.4byte	0x5dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -7756
	.uleb128 0x4
	.4byte	.LASF118
	.byte	0x4
	.2byte	0x108
	.byte	0x1f
	.4byte	0x5dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -7760
	.uleb128 0x5
	.string	"i"
	.byte	0x4
	.2byte	0x10a
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x10b
	.byte	0xb
	.4byte	0x12cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x10c
	.byte	0xb
	.4byte	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x5
	.string	"sp"
	.byte	0x4
	.2byte	0x10d
	.byte	0xb
	.4byte	0x161
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x14
	.4byte	.LASF125
	.byte	0x4
	.2byte	0x10d
	.byte	0xf
	.4byte	0x161
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2104
	.uleb128 0x5
	.string	"ep"
	.byte	0x4
	.2byte	0x10d
	.byte	0x15
	.4byte	0x161
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3128
	.uleb128 0x5
	.string	"at"
	.byte	0x4
	.2byte	0x10d
	.byte	0x19
	.4byte	0x156a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5176
	.uleb128 0x5
	.string	"b"
	.byte	0x4
	.2byte	0x10d
	.byte	0x20
	.4byte	0x161
	.uleb128 0x3
	.byte	0x91
	.sleb128 -6200
	.uleb128 0x5
	.string	"v"
	.byte	0x4
	.2byte	0x10e
	.byte	0x8
	.4byte	0x129
	.uleb128 0x3
	.byte	0x91
	.sleb128 -6712
	.uleb128 0x5
	.string	"k"
	.byte	0x4
	.2byte	0x10e
	.byte	0xb
	.4byte	0x129
	.uleb128 0x3
	.byte	0x91
	.sleb128 -7224
	.uleb128 0x5
	.string	"epp"
	.byte	0x4
	.2byte	0x10e
	.byte	0xe
	.4byte	0x129
	.uleb128 0x3
	.byte	0x91
	.sleb128 -7736
	.byte	0
	.uleb128 0xd
	.4byte	0x161
	.4byte	0x157a
	.uleb128 0xf
	.4byte	0xc6
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF126
	.byte	0x4
	.byte	0xce
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1644
	.uleb128 0x2
	.string	"pk"
	.byte	0x4
	.byte	0xce
	.byte	0x3c
	.4byte	0x5e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5220
	.uleb128 0x2
	.string	"sk"
	.byte	0x4
	.byte	0xcf
	.byte	0x24
	.4byte	0x5e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5224
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x4
	.byte	0xd0
	.byte	0x2a
	.4byte	0x5dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5228
	.uleb128 0x1
	.string	"i"
	.byte	0x4
	.byte	0xd2
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"buf"
	.byte	0x4
	.byte	0xd3
	.byte	0xb
	.4byte	0x1258
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x7
	.4byte	.LASF127
	.byte	0x4
	.byte	0xd4
	.byte	0x12
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF128
	.byte	0x4
	.byte	0xd5
	.byte	0x12
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0x4
	.byte	0xd6
	.byte	0xb
	.4byte	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.string	"a"
	.byte	0x4
	.byte	0xd7
	.byte	0xb
	.4byte	0x156a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2144
	.uleb128 0x1
	.string	"e"
	.byte	0x4
	.byte	0xd7
	.byte	0x11
	.4byte	0x161
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3168
	.uleb128 0x7
	.4byte	.LASF125
	.byte	0x4
	.byte	0xd7
	.byte	0x14
	.4byte	0x161
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4192
	.uleb128 0x7
	.4byte	.LASF123
	.byte	0x4
	.byte	0xd7
	.byte	0x1a
	.4byte	0x161
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5216
	.byte	0
	.uleb128 0xa
	.4byte	.LASF129
	.byte	0x4
	.byte	0xa6
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16e0
	.uleb128 0x2
	.string	"a"
	.byte	0x4
	.byte	0xa6
	.byte	0x32
	.4byte	0x979
	.uleb128 0x3
	.byte	0x91
	.sleb128 -756
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x4
	.byte	0xa6
	.byte	0x43
	.4byte	0x5dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -760
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x4
	.byte	0xa6
	.byte	0x51
	.4byte	0xbf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -764
	.uleb128 0x1
	.string	"ctr"
	.byte	0x4
	.byte	0xa8
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"i"
	.byte	0x4
	.byte	0xa8
	.byte	0x15
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"j"
	.byte	0x4
	.byte	0xa8
	.byte	0x18
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF131
	.byte	0x4
	.byte	0xa9
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"buf"
	.byte	0x4
	.byte	0xaa
	.byte	0xb
	.4byte	0x16e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0x4
	.byte	0xab
	.byte	0xd
	.4byte	0x1d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -744
	.byte	0
	.uleb128 0xd
	.4byte	0x64
	.4byte	0x16f1
	.uleb128 0x23
	.4byte	0xc6
	.2byte	0x1f7
	.byte	0
	.uleb128 0x17
	.4byte	.LASF133
	.byte	0x4
	.byte	0x7a
	.byte	0x15
	.4byte	0xc6
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1782
	.uleb128 0x2
	.string	"r"
	.byte	0x4
	.byte	0x7a
	.byte	0x2a
	.4byte	0x6bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"len"
	.byte	0x4
	.byte	0x7b
	.byte	0x2e
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"buf"
	.byte	0x4
	.byte	0x7c
	.byte	0x30
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x4
	.byte	0x7d
	.byte	0x2e
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"ctr"
	.byte	0x4
	.byte	0x7f
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"pos"
	.byte	0x4
	.byte	0x7f
	.byte	0x15
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF134
	.byte	0x4
	.byte	0x80
	.byte	0xc
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x7
	.4byte	.LASF135
	.byte	0x4
	.byte	0x80
	.byte	0x12
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x15
	.4byte	.LASF136
	.byte	0x4
	.byte	0x67
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17bf
	.uleb128 0x2
	.string	"b"
	.byte	0x4
	.byte	0x67
	.byte	0x28
	.4byte	0x979
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"v"
	.byte	0x4
	.byte	0x67
	.byte	0x31
	.4byte	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"c"
	.byte	0x4
	.byte	0x67
	.byte	0x42
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x15
	.4byte	.LASF137
	.byte	0x4
	.byte	0x57
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17fc
	.uleb128 0x2
	.string	"r"
	.byte	0x4
	.byte	0x57
	.byte	0x25
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"b"
	.byte	0x4
	.byte	0x57
	.byte	0x44
	.4byte	0x979
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"v"
	.byte	0x4
	.byte	0x57
	.byte	0x4d
	.4byte	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x15
	.4byte	.LASF138
	.byte	0x4
	.byte	0x47
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x182f
	.uleb128 0x2
	.string	"sk"
	.byte	0x4
	.byte	0x47
	.byte	0x20
	.4byte	0x979
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0x4
	.byte	0x47
	.byte	0x32
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.4byte	.LASF140
	.byte	0x4
	.byte	0x3a
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1860
	.uleb128 0x2
	.string	"r"
	.byte	0x4
	.byte	0x3a
	.byte	0x1d
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"sk"
	.byte	0x4
	.byte	0x3a
	.byte	0x36
	.4byte	0x979
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.4byte	.LASF141
	.byte	0x4
	.byte	0x2a
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18a2
	.uleb128 0x2
	.string	"pk"
	.byte	0x4
	.byte	0x2a
	.byte	0x20
	.4byte	0x979
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x4
	.byte	0x2b
	.byte	0x1f
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0x4
	.byte	0x2c
	.byte	0x25
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x15
	.4byte	.LASF143
	.byte	0x4
	.byte	0x18
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18e2
	.uleb128 0x2
	.string	"r"
	.byte	0x4
	.byte	0x18
	.byte	0x1d
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"pk"
	.byte	0x4
	.byte	0x19
	.byte	0x1e
	.4byte	0x979
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x4
	.byte	0x1a
	.byte	0x23
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x8
	.4byte	.LASF144
	.byte	0x3
	.2byte	0x2fd
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1946
	.uleb128 0x3
	.string	"h"
	.byte	0x3
	.2byte	0x2fd
	.byte	0x34
	.4byte	0x5e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x3
	.string	"in"
	.byte	0x3
	.2byte	0x2fd
	.byte	0x4a
	.4byte	0x5dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x4
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x2fd
	.byte	0x55
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x5
	.string	"i"
	.byte	0x3
	.2byte	0x2ff
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"s"
	.byte	0x3
	.2byte	0x300
	.byte	0xc
	.4byte	0x1b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x8
	.4byte	.LASF146
	.byte	0x3
	.2byte	0x2e9
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19aa
	.uleb128 0x3
	.string	"h"
	.byte	0x3
	.2byte	0x2e9
	.byte	0x34
	.4byte	0x5e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x3
	.string	"in"
	.byte	0x3
	.2byte	0x2e9
	.byte	0x4a
	.4byte	0x5dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x4
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x2e9
	.byte	0x55
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x5
	.string	"i"
	.byte	0x3
	.2byte	0x2eb
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"s"
	.byte	0x3
	.2byte	0x2ec
	.byte	0xc
	.4byte	0x1b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x8
	.4byte	.LASF147
	.byte	0x3
	.2byte	0x2d3
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a25
	.uleb128 0x3
	.string	"out"
	.byte	0x3
	.2byte	0x2d3
	.byte	0x35
	.4byte	0x5e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0x3
	.2byte	0x2d3
	.byte	0x41
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x3
	.string	"in"
	.byte	0x3
	.2byte	0x2d3
	.byte	0x58
	.4byte	0x5dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x4
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x2d3
	.byte	0x63
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x14
	.4byte	.LASF148
	.byte	0x3
	.2byte	0x2d5
	.byte	0xa
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x3
	.2byte	0x2d6
	.byte	0x10
	.4byte	0x1c5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x8
	.4byte	.LASF149
	.byte	0x3
	.2byte	0x2bc
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1aa0
	.uleb128 0x3
	.string	"out"
	.byte	0x3
	.2byte	0x2bc
	.byte	0x35
	.4byte	0x5e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0x3
	.2byte	0x2bc
	.byte	0x41
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x3
	.string	"in"
	.byte	0x3
	.2byte	0x2bc
	.byte	0x58
	.4byte	0x5dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x4
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x2bc
	.byte	0x63
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x14
	.4byte	.LASF148
	.byte	0x3
	.2byte	0x2be
	.byte	0xa
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x3
	.2byte	0x2bf
	.byte	0x10
	.4byte	0x1c5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x8
	.4byte	.LASF150
	.byte	0x3
	.2byte	0x2ad
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ae7
	.uleb128 0x3
	.string	"out"
	.byte	0x3
	.2byte	0x2ad
	.byte	0x43
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF148
	.byte	0x3
	.2byte	0x2ad
	.byte	0x4f
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x3
	.2byte	0x2ad
	.byte	0x66
	.4byte	0x8a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x8
	.4byte	.LASF151
	.byte	0x3
	.2byte	0x29b
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b2d
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x3
	.2byte	0x29b
	.byte	0x46
	.4byte	0x8a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"in"
	.byte	0x3
	.2byte	0x29b
	.byte	0x5c
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x29b
	.byte	0x67
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x8
	.4byte	.LASF152
	.byte	0x3
	.2byte	0x28d
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b74
	.uleb128 0x3
	.string	"out"
	.byte	0x3
	.2byte	0x28d
	.byte	0x3d
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0x3
	.2byte	0x28d
	.byte	0x49
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x3
	.2byte	0x28d
	.byte	0x5f
	.4byte	0x8a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x8
	.4byte	.LASF153
	.byte	0x3
	.2byte	0x27d
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b9b
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x3
	.2byte	0x27d
	.byte	0x43
	.4byte	0x8a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF154
	.byte	0x3
	.2byte	0x271
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1be1
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x3
	.2byte	0x271
	.byte	0x41
	.4byte	0x8a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"in"
	.byte	0x3
	.2byte	0x271
	.byte	0x57
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x271
	.byte	0x62
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x8
	.4byte	.LASF155
	.byte	0x3
	.2byte	0x262
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c08
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x3
	.2byte	0x262
	.byte	0x3f
	.4byte	0x8a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF156
	.byte	0x3
	.2byte	0x256
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c4f
	.uleb128 0x3
	.string	"out"
	.byte	0x3
	.2byte	0x256
	.byte	0x43
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF148
	.byte	0x3
	.2byte	0x256
	.byte	0x4f
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x3
	.2byte	0x256
	.byte	0x66
	.4byte	0x8a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x8
	.4byte	.LASF157
	.byte	0x3
	.2byte	0x244
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c95
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x3
	.2byte	0x244
	.byte	0x46
	.4byte	0x8a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"in"
	.byte	0x3
	.2byte	0x244
	.byte	0x5c
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x244
	.byte	0x67
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x8
	.4byte	.LASF158
	.byte	0x3
	.2byte	0x236
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cdc
	.uleb128 0x3
	.string	"out"
	.byte	0x3
	.2byte	0x236
	.byte	0x3d
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0x3
	.2byte	0x236
	.byte	0x49
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x3
	.2byte	0x236
	.byte	0x5f
	.4byte	0x8a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x8
	.4byte	.LASF159
	.byte	0x3
	.2byte	0x226
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d03
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x3
	.2byte	0x226
	.byte	0x43
	.4byte	0x8a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF160
	.byte	0x3
	.2byte	0x21a
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d49
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x3
	.2byte	0x21a
	.byte	0x41
	.4byte	0x8a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"in"
	.byte	0x3
	.2byte	0x21a
	.byte	0x57
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x21a
	.byte	0x62
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x8
	.4byte	.LASF161
	.byte	0x3
	.2byte	0x20b
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d70
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x3
	.2byte	0x20b
	.byte	0x3f
	.4byte	0x8a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.4byte	.LASF162
	.2byte	0x1f4
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dd0
	.uleb128 0x3
	.string	"out"
	.byte	0x3
	.2byte	0x1f4
	.byte	0x2b
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF148
	.byte	0x3
	.2byte	0x1f5
	.byte	0x29
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"s"
	.byte	0x3
	.2byte	0x1f6
	.byte	0x2b
	.4byte	0x1dd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"r"
	.byte	0x3
	.2byte	0x1f7
	.byte	0x2f
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.string	"i"
	.byte	0x3
	.2byte	0x1f9
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	0xa7
	.uleb128 0x24
	.4byte	.LASF163
	.2byte	0x1cd
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e47
	.uleb128 0x3
	.string	"s"
	.byte	0x3
	.2byte	0x1cd
	.byte	0x29
	.4byte	0x1dd0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.string	"r"
	.byte	0x3
	.2byte	0x1ce
	.byte	0x2d
	.4byte	0xc6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.string	"in"
	.byte	0x3
	.2byte	0x1cf
	.byte	0x2f
	.4byte	0x5dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x4
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x1d0
	.byte	0x27
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3
	.string	"p"
	.byte	0x3
	.2byte	0x1d1
	.byte	0x28
	.4byte	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -81
	.uleb128 0x5
	.string	"i"
	.byte	0x3
	.2byte	0x1d3
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x25
	.4byte	.LASF164
	.2byte	0x1aa
	.4byte	0xc6
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ebb
	.uleb128 0x3
	.string	"out"
	.byte	0x3
	.2byte	0x1aa
	.byte	0x2d
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0x3
	.2byte	0x1ab
	.byte	0x2b
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"s"
	.byte	0x3
	.2byte	0x1ac
	.byte	0x2d
	.4byte	0x1dd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"pos"
	.byte	0x3
	.2byte	0x1ad
	.byte	0x31
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.string	"r"
	.byte	0x3
	.2byte	0x1ae
	.byte	0x31
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.string	"i"
	.byte	0x3
	.2byte	0x1b0
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.4byte	.LASF165
	.2byte	0x195
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f0b
	.uleb128 0x3
	.string	"s"
	.byte	0x3
	.2byte	0x195
	.byte	0x26
	.4byte	0x1dd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"pos"
	.byte	0x3
	.2byte	0x195
	.byte	0x3a
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"r"
	.byte	0x3
	.2byte	0x195
	.byte	0x4c
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.string	"p"
	.byte	0x3
	.2byte	0x195
	.byte	0x57
	.4byte	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.byte	0
	.uleb128 0x25
	.4byte	.LASF166
	.2byte	0x175
	.4byte	0xc6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f83
	.uleb128 0x3
	.string	"s"
	.byte	0x3
	.2byte	0x175
	.byte	0x2c
	.4byte	0x1dd0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.string	"pos"
	.byte	0x3
	.2byte	0x176
	.byte	0x30
	.4byte	0xc6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.string	"r"
	.byte	0x3
	.2byte	0x177
	.byte	0x30
	.4byte	0xc6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3
	.string	"in"
	.byte	0x3
	.2byte	0x178
	.byte	0x32
	.4byte	0x5dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x4
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x179
	.byte	0x2a
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x5
	.string	"i"
	.byte	0x3
	.2byte	0x17b
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x26
	.4byte	.LASF167
	.2byte	0x161
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fb5
	.uleb128 0x3
	.string	"s"
	.byte	0x3
	.2byte	0x161
	.byte	0x22
	.4byte	0x1dd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"i"
	.byte	0x3
	.2byte	0x163
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.4byte	.LASF168
	.byte	0x52
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23a3
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x3
	.byte	0x52
	.byte	0x2f
	.4byte	0x1dd0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -548
	.uleb128 0x7
	.4byte	.LASF169
	.byte	0x3
	.byte	0x54
	.byte	0xd
	.4byte	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.string	"Aba"
	.byte	0x3
	.byte	0x56
	.byte	0x12
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"Abe"
	.byte	0x3
	.byte	0x56
	.byte	0x17
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.string	"Abi"
	.byte	0x3
	.byte	0x56
	.byte	0x1c
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.string	"Abo"
	.byte	0x3
	.byte	0x56
	.byte	0x21
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.string	"Abu"
	.byte	0x3
	.byte	0x56
	.byte	0x26
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1
	.string	"Aga"
	.byte	0x3
	.byte	0x57
	.byte	0x12
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1
	.string	"Age"
	.byte	0x3
	.byte	0x57
	.byte	0x17
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1
	.string	"Agi"
	.byte	0x3
	.byte	0x57
	.byte	0x1c
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1
	.string	"Ago"
	.byte	0x3
	.byte	0x57
	.byte	0x21
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1
	.string	"Agu"
	.byte	0x3
	.byte	0x57
	.byte	0x26
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1
	.string	"Aka"
	.byte	0x3
	.byte	0x58
	.byte	0x12
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1
	.string	"Ake"
	.byte	0x3
	.byte	0x58
	.byte	0x17
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1
	.string	"Aki"
	.byte	0x3
	.byte	0x58
	.byte	0x1c
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1
	.string	"Ako"
	.byte	0x3
	.byte	0x58
	.byte	0x21
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x1
	.string	"Aku"
	.byte	0x3
	.byte	0x58
	.byte	0x26
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1
	.string	"Ama"
	.byte	0x3
	.byte	0x59
	.byte	0x12
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1
	.string	"Ame"
	.byte	0x3
	.byte	0x59
	.byte	0x17
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1
	.string	"Ami"
	.byte	0x3
	.byte	0x59
	.byte	0x1c
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1
	.string	"Amo"
	.byte	0x3
	.byte	0x59
	.byte	0x21
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1
	.string	"Amu"
	.byte	0x3
	.byte	0x59
	.byte	0x26
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x1
	.string	"Asa"
	.byte	0x3
	.byte	0x5a
	.byte	0x12
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1
	.string	"Ase"
	.byte	0x3
	.byte	0x5a
	.byte	0x17
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x1
	.string	"Asi"
	.byte	0x3
	.byte	0x5a
	.byte	0x1c
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1
	.string	"Aso"
	.byte	0x3
	.byte	0x5a
	.byte	0x21
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x1
	.string	"Asu"
	.byte	0x3
	.byte	0x5a
	.byte	0x26
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1
	.string	"BCa"
	.byte	0x3
	.byte	0x5b
	.byte	0x12
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x1
	.string	"BCe"
	.byte	0x3
	.byte	0x5b
	.byte	0x17
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x1
	.string	"BCi"
	.byte	0x3
	.byte	0x5b
	.byte	0x1c
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x1
	.string	"BCo"
	.byte	0x3
	.byte	0x5b
	.byte	0x21
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x1
	.string	"BCu"
	.byte	0x3
	.byte	0x5b
	.byte	0x26
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x1
	.string	"Da"
	.byte	0x3
	.byte	0x5c
	.byte	0x12
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1
	.string	"De"
	.byte	0x3
	.byte	0x5c
	.byte	0x16
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x1
	.string	"Di"
	.byte	0x3
	.byte	0x5c
	.byte	0x1a
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1
	.string	"Do"
	.byte	0x3
	.byte	0x5c
	.byte	0x1e
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x1
	.string	"Du"
	.byte	0x3
	.byte	0x5c
	.byte	0x22
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1
	.string	"Eba"
	.byte	0x3
	.byte	0x5d
	.byte	0x12
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x1
	.string	"Ebe"
	.byte	0x3
	.byte	0x5d
	.byte	0x17
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1
	.string	"Ebi"
	.byte	0x3
	.byte	0x5d
	.byte	0x1c
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x1
	.string	"Ebo"
	.byte	0x3
	.byte	0x5d
	.byte	0x21
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x1
	.string	"Ebu"
	.byte	0x3
	.byte	0x5d
	.byte	0x26
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x1
	.string	"Ega"
	.byte	0x3
	.byte	0x5e
	.byte	0x12
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x1
	.string	"Ege"
	.byte	0x3
	.byte	0x5e
	.byte	0x17
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x1
	.string	"Egi"
	.byte	0x3
	.byte	0x5e
	.byte	0x1c
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x1
	.string	"Ego"
	.byte	0x3
	.byte	0x5e
	.byte	0x21
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x1
	.string	"Egu"
	.byte	0x3
	.byte	0x5e
	.byte	0x26
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x1
	.string	"Eka"
	.byte	0x3
	.byte	0x5f
	.byte	0x12
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x1
	.string	"Eke"
	.byte	0x3
	.byte	0x5f
	.byte	0x17
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x1
	.string	"Eki"
	.byte	0x3
	.byte	0x5f
	.byte	0x1c
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x1
	.string	"Eko"
	.byte	0x3
	.byte	0x5f
	.byte	0x21
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x1
	.string	"Eku"
	.byte	0x3
	.byte	0x5f
	.byte	0x26
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x1
	.string	"Ema"
	.byte	0x3
	.byte	0x60
	.byte	0x12
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x1
	.string	"Eme"
	.byte	0x3
	.byte	0x60
	.byte	0x17
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x1
	.string	"Emi"
	.byte	0x3
	.byte	0x60
	.byte	0x1c
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x1
	.string	"Emo"
	.byte	0x3
	.byte	0x60
	.byte	0x21
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.uleb128 0x1
	.string	"Emu"
	.byte	0x3
	.byte	0x60
	.byte	0x26
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x1
	.string	"Esa"
	.byte	0x3
	.byte	0x61
	.byte	0x12
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.uleb128 0x1
	.string	"Ese"
	.byte	0x3
	.byte	0x61
	.byte	0x17
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x1
	.string	"Esi"
	.byte	0x3
	.byte	0x61
	.byte	0x1c
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x1
	.string	"Eso"
	.byte	0x3
	.byte	0x61
	.byte	0x21
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x1
	.string	"Esu"
	.byte	0x3
	.byte	0x61
	.byte	0x26
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.byte	0
	.uleb128 0x27
	.4byte	.LASF170
	.byte	0x28
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23df
	.uleb128 0x2
	.string	"x"
	.byte	0x3
	.byte	0x28
	.byte	0x1d
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"u"
	.byte	0x3
	.byte	0x28
	.byte	0x2c
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"i"
	.byte	0x3
	.byte	0x29
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF171
	.byte	0x3
	.byte	0x16
	.byte	0x11
	.4byte	0xa7
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2421
	.uleb128 0x2
	.string	"x"
	.byte	0x3
	.byte	0x16
	.byte	0x26
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"i"
	.byte	0x3
	.byte	0x17
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"r"
	.byte	0x3
	.byte	0x18
	.byte	0xc
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF172
	.byte	0x2
	.byte	0x79
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2453
	.uleb128 0x2
	.string	"r"
	.byte	0x2
	.byte	0x79
	.byte	0x32
	.4byte	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"buf"
	.byte	0x2
	.byte	0x79
	.byte	0x43
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF173
	.byte	0x2
	.byte	0x6e
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2485
	.uleb128 0x2
	.string	"r"
	.byte	0x2
	.byte	0x6e
	.byte	0x32
	.4byte	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"buf"
	.byte	0x2
	.byte	0x6e
	.byte	0x43
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.4byte	.LASF174
	.byte	0x2
	.byte	0x59
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2505
	.uleb128 0x2
	.string	"r"
	.byte	0x2
	.byte	0x59
	.byte	0x18
	.4byte	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"buf"
	.byte	0x2
	.byte	0x59
	.byte	0x29
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"i"
	.byte	0x2
	.byte	0x5b
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"j"
	.byte	0x2
	.byte	0x5b
	.byte	0x12
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"t"
	.byte	0x2
	.byte	0x5c
	.byte	0xc
	.4byte	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"d"
	.byte	0x2
	.byte	0x5c
	.byte	0xe
	.4byte	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"a"
	.byte	0x2
	.byte	0x5d
	.byte	0xb
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1
	.string	"b"
	.byte	0x2
	.byte	0x5d
	.byte	0xd
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x15
	.4byte	.LASF175
	.byte	0x2
	.byte	0x3a
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2585
	.uleb128 0x2
	.string	"r"
	.byte	0x2
	.byte	0x3a
	.byte	0x18
	.4byte	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"buf"
	.byte	0x2
	.byte	0x3a
	.byte	0x29
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"i"
	.byte	0x2
	.byte	0x3c
	.byte	0x10
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"j"
	.byte	0x2
	.byte	0x3c
	.byte	0x12
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"t"
	.byte	0x2
	.byte	0x3d
	.byte	0xc
	.4byte	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"d"
	.byte	0x2
	.byte	0x3d
	.byte	0xe
	.4byte	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"a"
	.byte	0x2
	.byte	0x3e
	.byte	0xb
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1
	.string	"b"
	.byte	0x2
	.byte	0x3e
	.byte	0xd
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x17
	.4byte	.LASF176
	.byte	0x2
	.byte	0x25
	.byte	0x11
	.4byte	0x94
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25ba
	.uleb128 0x2
	.string	"x"
	.byte	0x2
	.byte	0x25
	.byte	0x33
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"r"
	.byte	0x2
	.byte	0x27
	.byte	0xc
	.4byte	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF177
	.byte	0x2
	.byte	0xf
	.byte	0x11
	.4byte	0x94
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25ef
	.uleb128 0x2
	.string	"x"
	.byte	0x2
	.byte	0xf
	.byte	0x33
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"r"
	.byte	0x2
	.byte	0x11
	.byte	0xc
	.4byte	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF178
	.byte	0x1
	.byte	0x49
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2623
	.uleb128 0x2
	.string	"out"
	.byte	0x1
	.byte	0x49
	.byte	0x1b
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x1
	.byte	0x49
	.byte	0x27
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF179
	.byte	0x1
	.byte	0x39
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2666
	.uleb128 0x2
	.string	"buf"
	.byte	0x1
	.byte	0x39
	.byte	0x22
	.4byte	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"len"
	.byte	0x1
	.byte	0x39
	.byte	0x2e
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"ret"
	.byte	0x1
	.byte	0x40
	.byte	0x9
	.4byte	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.4byte	.LASF183
	.byte	0x1
	.byte	0x22
	.byte	0xd
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF180
	.byte	0x1
	.byte	0x2b
	.byte	0x11
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"ret"
	.byte	0x1
	.byte	0x2c
	.byte	0x9
	.4byte	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
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
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x9
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
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x21
	.sleb128 16
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
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 21
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
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 21
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x23
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 21
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
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x18
	.byte	0
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
	.4byte	0x2dc
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
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
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
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
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
	.byte	0x7
	.4byte	.LFB45
	.uleb128 .LFE45-.LFB45
	.byte	0x7
	.4byte	.LFB46
	.uleb128 .LFE46-.LFB46
	.byte	0x7
	.4byte	.LFB47
	.uleb128 .LFE47-.LFB47
	.byte	0x7
	.4byte	.LFB48
	.uleb128 .LFE48-.LFB48
	.byte	0x7
	.4byte	.LFB49
	.uleb128 .LFE49-.LFB49
	.byte	0x7
	.4byte	.LFB50
	.uleb128 .LFE50-.LFB50
	.byte	0x7
	.4byte	.LFB51
	.uleb128 .LFE51-.LFB51
	.byte	0x7
	.4byte	.LFB52
	.uleb128 .LFE52-.LFB52
	.byte	0x7
	.4byte	.LFB53
	.uleb128 .LFE53-.LFB53
	.byte	0x7
	.4byte	.LFB54
	.uleb128 .LFE54-.LFB54
	.byte	0x7
	.4byte	.LFB55
	.uleb128 .LFE55-.LFB55
	.byte	0x7
	.4byte	.LFB56
	.uleb128 .LFE56-.LFB56
	.byte	0x7
	.4byte	.LFB57
	.uleb128 .LFE57-.LFB57
	.byte	0x7
	.4byte	.LFB58
	.uleb128 .LFE58-.LFB58
	.byte	0x7
	.4byte	.LFB59
	.uleb128 .LFE59-.LFB59
	.byte	0x7
	.4byte	.LFB60
	.uleb128 .LFE60-.LFB60
	.byte	0x7
	.4byte	.LFB61
	.uleb128 .LFE61-.LFB61
	.byte	0x7
	.4byte	.LFB62
	.uleb128 .LFE62-.LFB62
	.byte	0x7
	.4byte	.LFB63
	.uleb128 .LFE63-.LFB63
	.byte	0x7
	.4byte	.LFB64
	.uleb128 .LFE64-.LFB64
	.byte	0x7
	.4byte	.LFB65
	.uleb128 .LFE65-.LFB65
	.byte	0x7
	.4byte	.LFB66
	.uleb128 .LFE66-.LFB66
	.byte	0x7
	.4byte	.LFB67
	.uleb128 .LFE67-.LFB67
	.byte	0x7
	.4byte	.LFB68
	.uleb128 .LFE68-.LFB68
	.byte	0x7
	.4byte	.LFB69
	.uleb128 .LFE69-.LFB69
	.byte	0x7
	.4byte	.LFB70
	.uleb128 .LFE70-.LFB70
	.byte	0x7
	.4byte	.LFB71
	.uleb128 .LFE71-.LFB71
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
	.byte	0x7
	.4byte	.LFB93
	.uleb128 .LFE93-.LFB93
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF182:
	.string	"pqcrystals_kyber512_ref_zetas"
.LASF60:
	.string	"mbedtls_ctr_drbg_random"
.LASF75:
	.string	"input"
.LASF64:
	.string	"strlen"
.LASF128:
	.string	"noiseseed"
.LASF126:
	.string	"pqcrystals_kyber512_ref_indcpa_keypair_derand"
.LASF134:
	.string	"val0"
.LASF143:
	.string	"pack_pk"
.LASF16:
	.string	"unsigned int"
.LASF86:
	.string	"pqcrystals_kyber512_ref_polyvec_add"
.LASF141:
	.string	"unpack_pk"
.LASF65:
	.string	"mbedtls_ctr_drbg_init"
.LASF72:
	.string	"pqcrystals_kyber512_ref_cmov"
.LASF161:
	.string	"pqcrystals_kyber_fips202_ref_shake128_init"
.LASF31:
	.string	"private_md_info"
.LASF121:
	.string	"pqcrystals_kyber512_ref_keypair_derand"
.LASF83:
	.string	"extseed"
.LASF98:
	.string	"pqcrystals_kyber512_ref_poly_tomont"
.LASF97:
	.string	"pqcrystals_kyber512_ref_poly_reduce"
.LASF135:
	.string	"val1"
.LASF33:
	.string	"private_hmac_ctx"
.LASF166:
	.string	"keccak_absorb"
.LASF91:
	.string	"pqcrystals_kyber512_ref_polyvec_frombytes"
.LASF163:
	.string	"keccak_absorb_once"
.LASF174:
	.string	"cbd3"
.LASF24:
	.string	"xof_state"
.LASF49:
	.string	"private_prediction_resistance"
.LASF120:
	.string	"pqcrystals_kyber512_ref_keypair"
.LASF12:
	.string	"uint32_t"
.LASF62:
	.string	"mbedtls_entropy_func"
.LASF76:
	.string	"pqcrystals_kyber512_ref_kyber_shake256_prf"
.LASF104:
	.string	"pqcrystals_kyber512_ref_poly_tomsg"
.LASF45:
	.string	"private_source"
.LASF4:
	.string	"int16_t"
.LASF154:
	.string	"pqcrystals_kyber_fips202_ref_shake256_absorb"
.LASF15:
	.string	"long long unsigned int"
.LASF109:
	.string	"pqcrystals_kyber512_ref_poly_compress"
.LASF151:
	.string	"pqcrystals_kyber_fips202_ref_shake256_absorb_once"
.LASF51:
	.string	"private_reseed_interval"
.LASF140:
	.string	"pack_sk"
.LASF178:
	.string	"randombytes"
.LASF39:
	.string	"private_threshold"
.LASF21:
	.string	"coeffs"
.LASF138:
	.string	"unpack_sk"
.LASF40:
	.string	"private_strong"
.LASF105:
	.string	"pqcrystals_kyber512_ref_poly_frommsg"
.LASF30:
	.string	"mbedtls_md_context_t"
.LASF90:
	.string	"pqcrystals_kyber512_ref_polyvec_ntt"
.LASF17:
	.string	"size_t"
.LASF85:
	.string	"pqcrystals_kyber512_ref_montgomery_reduce"
.LASF153:
	.string	"pqcrystals_kyber_fips202_ref_shake256_finalize"
.LASF67:
	.string	"_Bool"
.LASF124:
	.string	"pqcrystals_kyber512_ref_indcpa_enc"
.LASF127:
	.string	"publicseed"
.LASF122:
	.string	"pqcrystals_kyber512_ref_indcpa_dec"
.LASF44:
	.string	"private_source_count"
.LASF114:
	.string	"pqcrystals_kyber512_ref_ntt"
.LASF164:
	.string	"keccak_squeeze"
.LASF77:
	.string	"outlen"
.LASF41:
	.string	"mbedtls_entropy_context"
.LASF29:
	.string	"mbedtls_md_info_t"
.LASF117:
	.string	"pqcrystals_kyber512_ref_enc"
.LASF88:
	.string	"pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery"
.LASF156:
	.string	"pqcrystals_kyber_fips202_ref_shake128_squeezeblocks"
.LASF19:
	.string	"char"
.LASF28:
	.string	"mbedtls_aes_context"
.LASF115:
	.string	"pqcrystals_kyber512_ref_dec"
.LASF119:
	.string	"pqcrystals_kyber512_ref_enc_derand"
.LASF20:
	.string	"poly"
.LASF147:
	.string	"pqcrystals_kyber_fips202_ref_shake256"
.LASF176:
	.string	"load24_littleendian"
.LASF108:
	.string	"pqcrystals_kyber512_ref_poly_decompress"
.LASF139:
	.string	"packedsk"
.LASF131:
	.string	"buflen"
.LASF159:
	.string	"pqcrystals_kyber_fips202_ref_shake128_finalize"
.LASF8:
	.string	"uint8_t"
.LASF152:
	.string	"pqcrystals_kyber_fips202_ref_shake256_squeeze"
.LASF132:
	.string	"fqmul"
.LASF118:
	.string	"coins"
.LASF93:
	.string	"pqcrystals_kyber512_ref_polyvec_decompress"
.LASF175:
	.string	"cbd2"
.LASF145:
	.string	"inlen"
.LASF158:
	.string	"pqcrystals_kyber_fips202_ref_shake128_squeeze"
.LASF7:
	.string	"long long int"
.LASF61:
	.string	"printf"
.LASF137:
	.string	"pack_ciphertext"
.LASF150:
	.string	"pqcrystals_kyber_fips202_ref_shake256_squeezeblocks"
.LASF144:
	.string	"pqcrystals_kyber_fips202_ref_sha3_512"
.LASF168:
	.string	"KeccakF1600_StatePermute"
.LASF57:
	.string	"g_drbg_ready"
.LASF170:
	.string	"store64"
.LASF123:
	.string	"skpv"
.LASF38:
	.string	"private_size"
.LASF37:
	.string	"private_p_source"
.LASF80:
	.string	"pqcrystals_kyber512_ref_kyber_shake128_absorb"
.LASF34:
	.string	"mbedtls_entropy_f_source_ptr"
.LASF42:
	.string	"private_accumulator"
.LASF23:
	.string	"keccak_state"
.LASF167:
	.string	"keccak_init"
.LASF113:
	.string	"start"
.LASF146:
	.string	"pqcrystals_kyber_fips202_ref_sha3_256"
.LASF136:
	.string	"unpack_ciphertext"
.LASF82:
	.string	"seed"
.LASF107:
	.string	"pqcrystals_kyber512_ref_poly_tobytes"
.LASF111:
	.string	"zeta"
.LASF173:
	.string	"pqcrystals_kyber512_ref_poly_cbd_eta1"
.LASF172:
	.string	"pqcrystals_kyber512_ref_poly_cbd_eta2"
.LASF94:
	.string	"pqcrystals_kyber512_ref_polyvec_compress"
.LASF18:
	.string	"long double"
.LASF10:
	.string	"uint16_t"
.LASF43:
	.string	"private_accumulator_started"
.LASF133:
	.string	"rej_uniform"
.LASF92:
	.string	"pqcrystals_kyber512_ref_polyvec_tobytes"
.LASF3:
	.string	"short int"
.LASF157:
	.string	"pqcrystals_kyber_fips202_ref_shake128_absorb_once"
.LASF71:
	.string	"pqcrystals_kyber512_ref_cmov_int16"
.LASF112:
	.string	"pqcrystals_kyber512_ref_invntt"
.LASF142:
	.string	"packedpk"
.LASF6:
	.string	"long int"
.LASF96:
	.string	"pqcrystals_kyber512_ref_poly_add"
.LASF47:
	.string	"private_counter"
.LASF58:
	.string	"KeccakF_RoundConstants"
.LASF48:
	.string	"private_reseed_counter"
.LASF14:
	.string	"uint64_t"
.LASF35:
	.string	"mbedtls_entropy_source_state"
.LASF179:
	.string	"pqkem_random_bytes"
.LASF171:
	.string	"load64"
.LASF70:
	.string	"pqkem_keygen"
.LASF162:
	.string	"keccak_squeezeblocks"
.LASF54:
	.string	"private_p_entropy"
.LASF50:
	.string	"private_entropy_len"
.LASF129:
	.string	"pqcrystals_kyber512_ref_gen_matrix"
.LASF13:
	.string	"long unsigned int"
.LASF160:
	.string	"pqcrystals_kyber_fips202_ref_shake128_absorb"
.LASF55:
	.string	"g_entropy"
.LASF26:
	.string	"private_rk_offset"
.LASF5:
	.string	"int32_t"
.LASF52:
	.string	"private_aes_ctx"
.LASF99:
	.string	"pqcrystals_kyber512_ref_poly_basemul_montgomery"
.LASF22:
	.string	"polyvec"
.LASF87:
	.string	"pqcrystals_kyber512_ref_polyvec_reduce"
.LASF103:
	.string	"pqcrystals_kyber512_ref_poly_getnoise_eta1"
.LASF102:
	.string	"pqcrystals_kyber512_ref_poly_getnoise_eta2"
.LASF89:
	.string	"pqcrystals_kyber512_ref_polyvec_invntt_tomont"
.LASF149:
	.string	"pqcrystals_kyber_fips202_ref_shake128"
.LASF165:
	.string	"keccak_finalize"
.LASF9:
	.string	"unsigned char"
.LASF180:
	.string	"pers"
.LASF46:
	.string	"mbedtls_ctr_drbg_context"
.LASF68:
	.string	"pqkem_decapsulate"
.LASF66:
	.string	"mbedtls_entropy_init"
.LASF69:
	.string	"pqkem_encapsulate"
.LASF81:
	.string	"state"
.LASF169:
	.string	"round"
.LASF177:
	.string	"load32_littleendian"
.LASF78:
	.string	"nonce"
.LASF116:
	.string	"fail"
.LASF53:
	.string	"private_f_entropy"
.LASF79:
	.string	"extkey"
.LASF148:
	.string	"nblocks"
.LASF36:
	.string	"private_f_source"
.LASF155:
	.string	"pqcrystals_kyber_fips202_ref_shake256_init"
.LASF84:
	.string	"pqcrystals_kyber512_ref_barrett_reduce"
.LASF183:
	.string	"ensure_drbg"
.LASF2:
	.string	"signed char"
.LASF101:
	.string	"pqcrystals_kyber512_ref_poly_ntt"
.LASF11:
	.string	"short unsigned int"
.LASF106:
	.string	"pqcrystals_kyber512_ref_poly_frombytes"
.LASF59:
	.string	"memcpy"
.LASF56:
	.string	"g_ctr_drbg"
.LASF125:
	.string	"pkpv"
.LASF74:
	.string	"pqcrystals_kyber512_ref_kyber_shake256_rkprf"
.LASF32:
	.string	"private_md_ctx"
.LASF27:
	.string	"private_buf"
.LASF95:
	.string	"pqcrystals_kyber512_ref_poly_sub"
.LASF130:
	.string	"transposed"
.LASF110:
	.string	"pqcrystals_kyber512_ref_basemul"
.LASF100:
	.string	"pqcrystals_kyber512_ref_poly_invntt_tomont"
.LASF63:
	.string	"mbedtls_ctr_drbg_seed"
.LASF73:
	.string	"pqcrystals_kyber512_ref_verify"
.LASF181:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF25:
	.string	"private_nr"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/pqkem_kem.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/suas_app_pqkem_gateway"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
