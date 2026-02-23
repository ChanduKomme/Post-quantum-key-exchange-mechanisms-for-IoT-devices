	.file	"sha256.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/sha256.c"
	.section	.text.mbedtls_sha256_init,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_init
	.type	mbedtls_sha256_init, @function
mbedtls_sha256_init:
.LFB15:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/sha256.c"
	.loc 1 226 1
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
	.loc 1 227 5
	li	a2,108
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 1 228 1
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
.LFE15:
	.size	mbedtls_sha256_init, .-mbedtls_sha256_init
	.section	.text.mbedtls_sha256_free,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_free
	.type	mbedtls_sha256_free, @function
mbedtls_sha256_free:
.LFB16:
	.loc 1 231 1
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
	.loc 1 232 8
	lw	a5,-20(s0)
	beq	a5,zero,.L5
	.loc 1 236 5
	li	a1,108
	lw	a0,-20(s0)
	call	mbedtls_platform_zeroize
	j	.L2
.L5:
	.loc 1 233 9
	nop
.L2:
	.loc 1 237 1
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
	.size	mbedtls_sha256_free, .-mbedtls_sha256_free
	.section	.text.mbedtls_sha256_clone,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_clone
	.type	mbedtls_sha256_clone, @function
mbedtls_sha256_clone:
.LFB17:
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
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 242 10
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	mv	a3,a5
	li	a5,108
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcpy
	.loc 1 243 1
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
	.size	mbedtls_sha256_clone, .-mbedtls_sha256_clone
	.section	.text.mbedtls_sha256_starts,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_starts
	.type	mbedtls_sha256_starts, @function
mbedtls_sha256_starts:
.LFB18:
	.loc 1 249 1
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
	.loc 1 251 8
	lw	a5,-24(s0)
	beq	a5,zero,.L8
	.loc 1 251 20 discriminator 1
	lw	a4,-24(s0)
	li	a5,1
	beq	a4,a5,.L8
	.loc 1 252 16
	li	a5,-116
	j	.L9
.L8:
	.loc 1 264 19
	lw	a5,-20(s0)
	sw	zero,64(a5)
	.loc 1 265 19
	lw	a5,-20(s0)
	sw	zero,68(a5)
	.loc 1 267 8
	lw	a5,-24(s0)
	bne	a5,zero,.L10
	.loc 1 269 23
	lw	a5,-20(s0)
	li	a4,1779032064
	addi	a4,a4,1639
	sw	a4,72(a5)
	.loc 1 270 23
	lw	a5,-20(s0)
	li	a4,-1150832640
	addi	a4,a4,-379
	sw	a4,76(a5)
	.loc 1 271 23
	lw	a5,-20(s0)
	li	a4,1013903360
	addi	a4,a4,882
	sw	a4,80(a5)
	.loc 1 272 23
	lw	a5,-20(s0)
	li	a4,-1521487872
	addi	a4,a4,1338
	sw	a4,84(a5)
	.loc 1 273 23
	lw	a5,-20(s0)
	li	a4,1359892480
	addi	a4,a4,639
	sw	a4,88(a5)
	.loc 1 274 23
	lw	a5,-20(s0)
	li	a4,-1694142464
	addi	a4,a4,-1908
	sw	a4,92(a5)
	.loc 1 275 23
	lw	a5,-20(s0)
	li	a4,528736256
	addi	a4,a4,-1621
	sw	a4,96(a5)
	.loc 1 276 23
	lw	a5,-20(s0)
	li	a4,1541459968
	addi	a4,a4,-743
	sw	a4,100(a5)
	j	.L11
.L10:
	.loc 1 280 23
	lw	a5,-20(s0)
	li	a4,-1056595968
	addi	a4,a4,-296
	sw	a4,72(a5)
	.loc 1 281 23
	lw	a5,-20(s0)
	li	a4,914149376
	addi	a4,a4,1287
	sw	a4,76(a5)
	.loc 1 282 23
	lw	a5,-20(s0)
	li	a4,812703744
	addi	a4,a4,-745
	sw	a4,80(a5)
	.loc 1 283 23
	lw	a5,-20(s0)
	li	a4,-150052864
	addi	a4,a4,-1735
	sw	a4,84(a5)
	.loc 1 284 23
	lw	a5,-20(s0)
	li	a4,-4190208
	addi	a4,a4,-1231
	sw	a4,88(a5)
	.loc 1 285 23
	lw	a5,-20(s0)
	li	a4,1750601728
	addi	a4,a4,1297
	sw	a4,92(a5)
	.loc 1 286 23
	lw	a5,-20(s0)
	li	a4,1694076928
	addi	a4,a4,-89
	sw	a4,96(a5)
	.loc 1 287 23
	lw	a5,-20(s0)
	li	a4,-1090891776
	addi	a4,a4,-92
	sw	a4,100(a5)
.L11:
	.loc 1 292 16
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,104(a5)
	.loc 1 295 12
	li	a5,0
.L9:
	.loc 1 296 1
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
	.size	mbedtls_sha256_starts, .-mbedtls_sha256_starts
	.section	.rodata.K,"a"
	.align	2
	.type	K, @object
	.size	K, 256
K:
	.word	1116352408
	.word	1899447441
	.word	-1245643825
	.word	-373957723
	.word	961987163
	.word	1508970993
	.word	-1841331548
	.word	-1424204075
	.word	-670586216
	.word	310598401
	.word	607225278
	.word	1426881987
	.word	1925078388
	.word	-2132889090
	.word	-1680079193
	.word	-1046744716
	.word	-459576895
	.word	-272742522
	.word	264347078
	.word	604807628
	.word	770255983
	.word	1249150122
	.word	1555081692
	.word	1996064986
	.word	-1740746414
	.word	-1473132947
	.word	-1341970488
	.word	-1084653625
	.word	-958395405
	.word	-710438585
	.word	113926993
	.word	338241895
	.word	666307205
	.word	773529912
	.word	1294757372
	.word	1396182291
	.word	1695183700
	.word	1986661051
	.word	-2117940946
	.word	-1838011259
	.word	-1564481375
	.word	-1474664885
	.word	-1035236496
	.word	-949202525
	.word	-778901479
	.word	-694614492
	.word	-200395387
	.word	275423344
	.word	430227734
	.word	506948616
	.word	659060556
	.word	883997877
	.word	958139571
	.word	1322822218
	.word	1537002063
	.word	1747873779
	.word	1955562222
	.word	2024104815
	.word	-2067236844
	.word	-1933114872
	.word	-1866530822
	.word	-1538233109
	.word	-1090935817
	.word	-965641998
	.section	.text.mbedtls_internal_sha256_process,"ax",@progbits
	.align	1
	.globl	mbedtls_internal_sha256_process
	.type	mbedtls_internal_sha256_process, @function
mbedtls_internal_sha256_process:
.LFB19:
	.loc 1 494 1
	.cfi_startproc
	addi	sp,sp,-352
	.cfi_def_cfa_offset 352
	sw	ra,348(sp)
	sw	s0,344(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,352
	.cfi_def_cfa 8, 0
	sw	a0,-340(s0)
	sw	a1,-344(s0)
	.loc 1 502 12
	sw	zero,-20(s0)
	.loc 1 502 5
	j	.L13
.L14:
	.loc 1 503 32
	lw	a4,-340(s0)
	lw	a5,-20(s0)
	addi	a5,a5,16
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,8(a5)
	.loc 1 503 20
	lw	a5,-20(s0)
	addi	a3,a5,64
	addi	a5,s0,-320
	slli	a3,a3,2
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 1 502 25 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L13:
	.loc 1 502 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,7
	bleu	a4,a5,.L14
	.loc 1 507 12
	sw	zero,-20(s0)
	.loc 1 507 5
	j	.L15
.L19:
	.loc 1 508 12
	lw	a4,-20(s0)
	li	a5,15
	bgtu	a4,a5,.L16
	.loc 1 509 141
	lw	a5,-20(s0)
	slli	a5,a5,2
	.loc 1 509 136
	lw	a4,-344(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
.LBB24:
.LBB25:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/alignment.h"
	.loc 2 174 33
	lw	a5,-24(s0)
	sw	a5,-28(s0)
	.loc 2 175 7
	lw	a5,-28(s0)
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,2(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,3(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	sw	a5,-32(s0)
	.loc 2 179 12
	lw	a5,-32(s0)
.LBE25:
.LBE24:
	.loc 1 509 80 discriminator 1
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	mv	a3,a5
	.loc 1 509 24 discriminator 2
	lw	a4,-20(s0)
	addi	a5,s0,-320
	slli	a4,a4,2
	add	a5,a4,a5
	sw	a3,0(a5)
	j	.L18
.L16:
	.loc 1 511 45
	lw	a5,-20(s0)
	addi	a4,a5,-2
	.loc 1 511 40
	addi	a5,s0,-320
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 511 74
	srli	a3,a5,17
	slli	a4,a5,15
	add	a4,a4,a3
	.loc 1 511 131
	lw	a5,-20(s0)
	addi	a3,a5,-2
	.loc 1 511 126
	addi	a5,s0,-320
	slli	a3,a3,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 511 160
	srli	a3,a5,19
	slli	a5,a5,13
	add	a5,a5,a3
	.loc 1 511 113
	xor	a4,a4,a5
	.loc 1 511 216
	lw	a5,-20(s0)
	addi	a3,a5,-2
	.loc 1 511 211
	addi	a5,s0,-320
	slli	a3,a3,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 511 236
	srli	a5,a5,10
	.loc 1 511 199
	xor	a4,a4,a5
	.loc 1 511 260
	lw	a5,-20(s0)
	addi	a3,a5,-7
	.loc 1 511 255
	addi	a5,s0,-320
	slli	a3,a3,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 511 246
	add	a3,a4,a5
	.loc 1 511 284
	lw	a5,-20(s0)
	addi	a4,a5,-15
	.loc 1 511 279
	addi	a5,s0,-320
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 511 313
	srli	a2,a5,7
	slli	a4,a5,25
	add	a4,a4,a2
	.loc 1 511 370
	lw	a5,-20(s0)
	addi	a2,a5,-15
	.loc 1 511 365
	addi	a5,s0,-320
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 511 400
	srli	a2,a5,18
	slli	a5,a5,14
	add	a5,a5,a2
	.loc 1 511 352
	xor	a4,a4,a5
	.loc 1 511 457
	lw	a5,-20(s0)
	addi	a2,a5,-15
	.loc 1 511 452
	addi	a5,s0,-320
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 511 478
	srli	a5,a5,3
	.loc 1 511 440
	xor	a5,a4,a5
	.loc 1 511 265
	add	a4,a3,a5
	.loc 1 511 501
	lw	a5,-20(s0)
	addi	a3,a5,-16
	.loc 1 511 496
	addi	a5,s0,-320
	slli	a3,a3,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 511 487
	add	a4,a4,a5
	.loc 1 511 26
	lw	a3,-20(s0)
	addi	a5,s0,-320
	slli	a3,a3,2
	add	a5,a3,a5
	sw	a4,0(a5)
.L18:
	.loc 1 514 36
	lw	a3,-36(s0)
	.loc 1 514 55
	lw	a5,-48(s0)
	.loc 1 514 82
	srli	a2,a5,6
	slli	a4,a5,26
	add	a4,a4,a2
	.loc 1 514 127
	lw	a5,-48(s0)
	.loc 1 514 155
	srli	a2,a5,11
	slli	a5,a5,21
	add	a5,a5,a2
	.loc 1 514 114
	xor	a4,a4,a5
	.loc 1 514 201
	lw	a5,-48(s0)
	.loc 1 514 229
	srli	a2,a5,25
	slli	a5,a5,7
	add	a5,a5,a2
	.loc 1 514 188
	xor	a5,a4,a5
	.loc 1 514 41
	add	a4,a3,a5
	.loc 1 514 275
	lw	a3,-40(s0)
	.loc 1 514 293
	lw	a2,-48(s0)
	.loc 1 514 311
	lw	a1,-44(s0)
	.loc 1 514 328
	lw	a5,-40(s0)
	.loc 1 514 317
	xor	a5,a1,a5
	.loc 1 514 299
	and	a5,a2,a5
	.loc 1 514 281
	xor	a5,a3,a5
	.loc 1 514 263
	add	a4,a4,a5
	.loc 1 514 341
	lui	a5,%hi(K)
	addi	a3,a5,%lo(K)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 514 337
	add	a4,a4,a5
	.loc 1 514 356
	lw	a3,-20(s0)
	addi	a5,s0,-320
	slli	a3,a3,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 514 346
	add	a5,a4,a5
	.loc 1 514 26
	sw	a5,-328(s0)
	.loc 1 514 388
	lw	a5,-64(s0)
	.loc 1 514 415
	srli	a3,a5,2
	slli	a4,a5,30
	add	a4,a4,a3
	.loc 1 514 460
	lw	a5,-64(s0)
	.loc 1 514 488
	srli	a3,a5,13
	slli	a5,a5,19
	add	a5,a5,a3
	.loc 1 514 447
	xor	a4,a4,a5
	.loc 1 514 534
	lw	a5,-64(s0)
	.loc 1 514 562
	srli	a3,a5,22
	slli	a5,a5,10
	add	a5,a5,a3
	.loc 1 514 521
	xor	a4,a4,a5
	.loc 1 514 609
	lw	a3,-64(s0)
	.loc 1 514 626
	lw	a5,-60(s0)
	.loc 1 514 615
	and	a3,a3,a5
	.loc 1 514 645
	lw	a2,-56(s0)
	.loc 1 514 663
	lw	a1,-64(s0)
	.loc 1 514 680
	lw	a5,-60(s0)
	.loc 1 514 669
	or	a5,a1,a5
	.loc 1 514 651
	and	a5,a2,a5
	.loc 1 514 633
	or	a5,a3,a5
	.loc 1 514 596
	add	a5,a4,a5
	.loc 1 514 374
	sw	a5,-324(s0)
	.loc 1 514 698
	lw	a4,-52(s0)
	.loc 1 514 711
	lw	a5,-328(s0)
	.loc 1 514 703
	add	a5,a4,a5
	sw	a5,-52(s0)
	.loc 1 514 739
	lw	a4,-328(s0)
	.loc 1 514 753
	lw	a5,-324(s0)
	.loc 1 514 746
	add	a5,a4,a5
	.loc 1 514 732
	sw	a5,-36(s0)
	.loc 1 517 30
	lw	a5,-36(s0)
	.loc 1 517 21
	sw	a5,-328(s0)
	.loc 1 517 55
	lw	a5,-40(s0)
	.loc 1 517 46
	sw	a5,-36(s0)
	.loc 1 518 29
	lw	a5,-44(s0)
	.loc 1 518 20
	sw	a5,-40(s0)
	.loc 1 518 54
	lw	a5,-48(s0)
	.loc 1 518 45
	sw	a5,-44(s0)
	.loc 1 519 29
	lw	a5,-52(s0)
	.loc 1 519 20
	sw	a5,-48(s0)
	.loc 1 519 54
	lw	a5,-56(s0)
	.loc 1 519 45
	sw	a5,-52(s0)
	.loc 1 520 29
	lw	a5,-60(s0)
	.loc 1 520 20
	sw	a5,-56(s0)
	.loc 1 520 54
	lw	a5,-64(s0)
	.loc 1 520 45
	sw	a5,-60(s0)
	.loc 1 521 27
	lw	a5,-328(s0)
	.loc 1 521 20
	sw	a5,-64(s0)
	.loc 1 507 26 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L15:
	.loc 1 507 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,63
	bleu	a4,a5,.L19
	.loc 1 567 12
	sw	zero,-20(s0)
	.loc 1 567 5
	j	.L20
.L21:
	.loc 1 568 19
	lw	a4,-340(s0)
	lw	a5,-20(s0)
	addi	a5,a5,16
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,8(a5)
	.loc 1 568 33
	lw	a5,-20(s0)
	addi	a3,a5,64
	addi	a5,s0,-320
	slli	a3,a3,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 568 23
	add	a4,a4,a5
	lw	a3,-340(s0)
	lw	a5,-20(s0)
	addi	a5,a5,16
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,8(a5)
	.loc 1 567 25 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L20:
	.loc 1 567 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,7
	bleu	a4,a5,.L21
	.loc 1 572 5
	addi	a5,s0,-328
	li	a1,296
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 1 574 12
	li	a5,0
	.loc 1 575 1
	mv	a0,a5
	lw	ra,348(sp)
	.cfi_restore 1
	lw	s0,344(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 352
	addi	sp,sp,352
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	mbedtls_internal_sha256_process, .-mbedtls_internal_sha256_process
	.section	.text.mbedtls_internal_sha256_process_many,"ax",@progbits
	.align	1
	.type	mbedtls_internal_sha256_process_many, @function
mbedtls_internal_sha256_process_many:
.LFB20:
	.loc 1 584 1
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
	.loc 1 585 12
	sw	zero,-20(s0)
	.loc 1 587 11
	j	.L24
.L27:
	.loc 1 588 13
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_internal_sha256_process
	mv	a5,a0
	.loc 1 588 12 discriminator 1
	beq	a5,zero,.L25
	.loc 1 589 20
	li	a5,0
	j	.L26
.L25:
	.loc 1 592 14
	lw	a5,-40(s0)
	addi	a5,a5,64
	sw	a5,-40(s0)
	.loc 1 593 13
	lw	a5,-44(s0)
	addi	a5,a5,-64
	sw	a5,-44(s0)
	.loc 1 595 19
	lw	a5,-20(s0)
	addi	a5,a5,64
	sw	a5,-20(s0)
.L24:
	.loc 1 587 16
	lw	a4,-44(s0)
	li	a5,63
	bgtu	a4,a5,.L27
	.loc 1 598 12
	lw	a5,-20(s0)
.L26:
	.loc 1 599 1
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
	.size	mbedtls_internal_sha256_process_many, .-mbedtls_internal_sha256_process_many
	.section	.text.mbedtls_sha256_update,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_update
	.type	mbedtls_sha256_update, @function
mbedtls_sha256_update:
.LFB21:
	.loc 1 648 1
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
	.loc 1 649 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 1 653 8
	lw	a5,-44(s0)
	bne	a5,zero,.L29
	.loc 1 654 16
	li	a5,0
	j	.L30
.L29:
	.loc 1 657 22
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 1 657 10
	andi	a5,a5,63
	sw	a5,-20(s0)
	.loc 1 658 10
	li	a4,64
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 660 15
	lw	a5,-36(s0)
	lw	a4,64(a5)
	.loc 1 660 19
	lw	a5,-44(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,64(a5)
	.loc 1 661 15
	lw	a5,-36(s0)
	lw	a4,64(a5)
	.loc 1 661 19
	lw	a5,-36(s0)
	sw	a4,64(a5)
	.loc 1 663 19
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 1 663 8
	lw	a4,-44(s0)
	bleu	a4,a5,.L31
	.loc 1 664 19
	lw	a5,-36(s0)
	lw	a5,68(a5)
	.loc 1 664 22
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,68(a5)
.L31:
	.loc 1 667 8
	lw	a5,-20(s0)
	beq	a5,zero,.L34
	.loc 1 667 14 discriminator 1
	lw	a4,-44(s0)
	lw	a5,-28(s0)
	bltu	a4,a5,.L34
	.loc 1 668 26
	lw	a4,-36(s0)
	.loc 1 668 9
	lw	a5,-20(s0)
	add	a5,a4,a5
	lw	a2,-28(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 670 60
	lw	a5,-36(s0)
	.loc 1 670 20
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_internal_sha256_process
	sw	a0,-24(s0)
	.loc 1 670 12 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L33
	.loc 1 671 20
	lw	a5,-24(s0)
	j	.L30
.L33:
	.loc 1 674 15
	lw	a4,-40(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 1 675 14
	lw	a4,-44(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	sw	a5,-44(s0)
	.loc 1 676 14
	sw	zero,-20(s0)
	.loc 1 679 11
	j	.L34
.L36:
.LBB26:
	.loc 1 681 13
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_internal_sha256_process_many
	sw	a0,-32(s0)
	.loc 1 682 12
	lw	a4,-32(s0)
	li	a5,63
	bgtu	a4,a5,.L35
	.loc 1 683 20
	li	a5,-1
	j	.L30
.L35:
	.loc 1 686 15
	lw	a4,-40(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 1 687 14
	lw	a4,-44(s0)
	lw	a5,-32(s0)
	sub	a5,a4,a5
	sw	a5,-44(s0)
.L34:
.LBE26:
	.loc 1 679 17
	lw	a4,-44(s0)
	li	a5,63
	bgtu	a4,a5,.L36
	.loc 1 690 8
	lw	a5,-44(s0)
	beq	a5,zero,.L37
	.loc 1 691 26
	lw	a4,-36(s0)
	.loc 1 691 9
	lw	a5,-20(s0)
	add	a5,a4,a5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcpy
.L37:
	.loc 1 694 12
	li	a5,0
.L30:
	.loc 1 695 1
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
	.size	mbedtls_sha256_update, .-mbedtls_sha256_update
	.section	.text.mbedtls_sha256_finish,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_finish
	.type	mbedtls_sha256_finish, @function
mbedtls_sha256_finish:
.LFB22:
	.loc 1 702 1
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sw	ra,172(sp)
	sw	s0,168(sp)
	sw	s1,164(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,176
	.cfi_def_cfa 8, 0
	sw	a0,-164(s0)
	sw	a1,-168(s0)
	.loc 1 703 9
	li	a5,-110
	sw	a5,-28(s0)
	.loc 1 706 9
	sw	zero,-36(s0)
	.loc 1 711 22
	lw	a5,-164(s0)
	lw	a5,64(a5)
	.loc 1 711 10
	andi	a5,a5,63
	sw	a5,-32(s0)
	.loc 1 713 21
	lw	a5,-32(s0)
	addi	a4,a5,1
	sw	a4,-32(s0)
	.loc 1 713 25
	lw	a4,-164(s0)
	add	a5,a4,a5
	li	a4,-128
	sb	a4,0(a5)
	.loc 1 715 8
	lw	a4,-32(s0)
	li	a5,56
	bgtu	a4,a5,.L39
	.loc 1 717 16
	lw	a4,-164(s0)
	.loc 1 717 9
	lw	a5,-32(s0)
	add	a3,a4,a5
	.loc 1 717 42
	li	a4,56
	lw	a5,-32(s0)
	sub	a5,a4,a5
	.loc 1 717 9
	mv	a2,a5
	li	a1,0
	mv	a0,a3
	call	memset
	j	.L40
.L39:
	.loc 1 720 16
	lw	a4,-164(s0)
	.loc 1 720 9
	lw	a5,-32(s0)
	add	a3,a4,a5
	.loc 1 720 42
	li	a4,64
	lw	a5,-32(s0)
	sub	a5,a4,a5
	.loc 1 720 9
	mv	a2,a5
	li	a1,0
	mv	a0,a3
	call	memset
	.loc 1 722 60
	lw	a5,-164(s0)
	.loc 1 722 20
	mv	a1,a5
	lw	a0,-164(s0)
	call	mbedtls_internal_sha256_process
	sw	a0,-28(s0)
	.loc 1 722 12 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L46
	.loc 1 726 19
	lw	a5,-164(s0)
	.loc 1 726 9
	li	a2,56
	li	a1,0
	mv	a0,a5
	call	memset
.L40:
	.loc 1 732 23
	lw	a5,-164(s0)
	lw	a5,64(a5)
	.loc 1 732 27
	srli	a4,a5,29
	.loc 1 733 25
	lw	a5,-164(s0)
	lw	a5,68(a5)
	.loc 1 733 29
	slli	a5,a5,3
	.loc 1 732 10
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 734 22
	lw	a5,-164(s0)
	lw	a5,64(a5)
	.loc 1 734 9
	slli	a5,a5,3
	sw	a5,-20(s0)
	.loc 1 736 125 discriminator 2
	lw	a5,-164(s0)
	.loc 1 736 96 discriminator 2
	addi	s1,a5,56
	.loc 1 736 147 discriminator 2
	lw	a0,-24(s0)
	call	__bswapsi2
	mv	a5,a0
	sw	s1,-44(s0)
	sw	a5,-40(s0)
.LBB27:
.LBB28:
	.loc 2 200 33
	lw	a5,-44(s0)
	sw	a5,-48(s0)
	.loc 2 201 12
	lw	a5,-48(s0)
	lw	a4,-40(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-40(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-40(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-40(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 2 205 1
	nop
.LBE28:
.LBE27:
	.loc 1 737 124 discriminator 2
	lw	a5,-164(s0)
	.loc 1 737 95 discriminator 2
	addi	s1,a5,60
	.loc 1 737 146 discriminator 2
	lw	a0,-20(s0)
	call	__bswapsi2
	mv	a5,a0
	sw	s1,-52(s0)
	sw	a5,-56(s0)
.LBB29:
.LBB30:
	.loc 2 200 33
	lw	a5,-52(s0)
	sw	a5,-60(s0)
	.loc 2 201 12
	lw	a5,-60(s0)
	lw	a4,-56(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-56(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-56(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-56(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 2 205 1
	nop
.LBE30:
.LBE29:
	.loc 1 739 56
	lw	a5,-164(s0)
	.loc 1 739 16
	mv	a1,a5
	lw	a0,-164(s0)
	call	mbedtls_internal_sha256_process
	sw	a0,-28(s0)
	.loc 1 739 8 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L47
	.loc 1 746 184 discriminator 2
	lw	a5,-164(s0)
	lw	a5,72(a5)
	.loc 1 746 144 discriminator 2
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	mv	a4,a5
	lw	a5,-168(s0)
	sw	a5,-64(s0)
	sw	a4,-68(s0)
.LBB31:
.LBB32:
	.loc 2 200 33
	lw	a5,-64(s0)
	sw	a5,-72(s0)
	.loc 2 201 12
	lw	a5,-72(s0)
	lw	a4,-68(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-68(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-68(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-68(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 2 205 1
	nop
.LBE32:
.LBE31:
	.loc 1 747 137 discriminator 2
	lw	a5,-168(s0)
	addi	s1,a5,4
	.loc 1 747 184 discriminator 2
	lw	a5,-164(s0)
	lw	a5,76(a5)
	.loc 1 747 144 discriminator 2
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	sw	s1,-76(s0)
	sw	a5,-80(s0)
.LBB33:
.LBB34:
	.loc 2 200 33
	lw	a5,-76(s0)
	sw	a5,-84(s0)
	.loc 2 201 12
	lw	a5,-84(s0)
	lw	a4,-80(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-80(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-80(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-80(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 2 205 1
	nop
.LBE34:
.LBE33:
	.loc 1 748 137 discriminator 2
	lw	a5,-168(s0)
	addi	s1,a5,8
	.loc 1 748 184 discriminator 2
	lw	a5,-164(s0)
	lw	a5,80(a5)
	.loc 1 748 144 discriminator 2
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	sw	s1,-88(s0)
	sw	a5,-92(s0)
.LBB35:
.LBB36:
	.loc 2 200 33
	lw	a5,-88(s0)
	sw	a5,-96(s0)
	.loc 2 201 12
	lw	a5,-96(s0)
	lw	a4,-92(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-92(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-92(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-92(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 2 205 1
	nop
.LBE36:
.LBE35:
	.loc 1 749 138 discriminator 2
	lw	a5,-168(s0)
	addi	s1,a5,12
	.loc 1 749 186 discriminator 2
	lw	a5,-164(s0)
	lw	a5,84(a5)
	.loc 1 749 146 discriminator 2
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	sw	s1,-100(s0)
	sw	a5,-104(s0)
.LBB37:
.LBB38:
	.loc 2 200 33
	lw	a5,-100(s0)
	sw	a5,-108(s0)
	.loc 2 201 12
	lw	a5,-108(s0)
	lw	a4,-104(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-104(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-104(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-104(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 2 205 1
	nop
.LBE38:
.LBE37:
	.loc 1 750 138 discriminator 2
	lw	a5,-168(s0)
	addi	s1,a5,16
	.loc 1 750 186 discriminator 2
	lw	a5,-164(s0)
	lw	a5,88(a5)
	.loc 1 750 146 discriminator 2
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	sw	s1,-112(s0)
	sw	a5,-116(s0)
.LBB39:
.LBB40:
	.loc 2 200 33
	lw	a5,-112(s0)
	sw	a5,-120(s0)
	.loc 2 201 12
	lw	a5,-120(s0)
	lw	a4,-116(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-116(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-116(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-116(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 2 205 1
	nop
.LBE40:
.LBE39:
	.loc 1 751 138 discriminator 2
	lw	a5,-168(s0)
	addi	s1,a5,20
	.loc 1 751 186 discriminator 2
	lw	a5,-164(s0)
	lw	a5,92(a5)
	.loc 1 751 146 discriminator 2
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	sw	s1,-124(s0)
	sw	a5,-128(s0)
.LBB41:
.LBB42:
	.loc 2 200 33
	lw	a5,-124(s0)
	sw	a5,-132(s0)
	.loc 2 201 12
	lw	a5,-132(s0)
	lw	a4,-128(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-128(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-128(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-128(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 2 205 1
	nop
.LBE42:
.LBE41:
	.loc 1 752 138 discriminator 2
	lw	a5,-168(s0)
	addi	s1,a5,24
	.loc 1 752 186 discriminator 2
	lw	a5,-164(s0)
	lw	a5,96(a5)
	.loc 1 752 146 discriminator 2
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	sw	s1,-136(s0)
	sw	a5,-140(s0)
.LBB43:
.LBB44:
	.loc 2 200 33
	lw	a5,-136(s0)
	sw	a5,-144(s0)
	.loc 2 201 12
	lw	a5,-144(s0)
	lw	a4,-140(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-140(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-140(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-140(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 2 205 1
	nop
.LBE44:
.LBE43:
	.loc 1 755 15
	lw	a5,-164(s0)
	lw	a5,104(a5)
	sw	a5,-36(s0)
	.loc 1 757 8
	lw	a5,-36(s0)
	bne	a5,zero,.L44
	.loc 1 758 142 discriminator 2
	lw	a5,-168(s0)
	addi	s1,a5,28
	.loc 1 758 190 discriminator 2
	lw	a5,-164(s0)
	lw	a5,100(a5)
	.loc 1 758 150 discriminator 2
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	sw	s1,-148(s0)
	sw	a5,-152(s0)
.LBB45:
.LBB46:
	.loc 2 200 33
	lw	a5,-148(s0)
	sw	a5,-156(s0)
	.loc 2 201 12
	lw	a5,-156(s0)
	lw	a4,-152(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-152(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-152(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-152(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 2 205 1
	nop
.L44:
.LBE46:
.LBE45:
	.loc 1 761 9
	sw	zero,-28(s0)
	j	.L42
.L46:
	.loc 1 723 13
	nop
	j	.L42
.L47:
	.loc 1 740 9
	nop
.L42:
	.loc 1 764 5
	lw	a0,-164(s0)
	call	mbedtls_sha256_free
	.loc 1 765 12
	lw	a5,-28(s0)
	.loc 1 766 1
	mv	a0,a5
	lw	ra,172(sp)
	.cfi_restore 1
	lw	s0,168(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	lw	s1,164(sp)
	.cfi_restore 9
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	mbedtls_sha256_finish, .-mbedtls_sha256_finish
	.section	.text.mbedtls_sha256,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256
	.type	mbedtls_sha256, @function
mbedtls_sha256:
.LFB23:
	.loc 1 777 1
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	ra,140(sp)
	sw	s0,136(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	sw	a0,-132(s0)
	sw	a1,-136(s0)
	sw	a2,-140(s0)
	sw	a3,-144(s0)
	.loc 1 778 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 782 8
	lw	a5,-144(s0)
	beq	a5,zero,.L49
	.loc 1 782 20 discriminator 1
	lw	a4,-144(s0)
	li	a5,1
	beq	a4,a5,.L49
	.loc 1 783 16
	li	a5,-116
	j	.L54
.L49:
	.loc 1 795 5
	addi	a5,s0,-128
	mv	a0,a5
	call	mbedtls_sha256_init
	.loc 1 797 16
	addi	a5,s0,-128
	lw	a1,-144(s0)
	mv	a0,a5
	call	mbedtls_sha256_starts
	sw	a0,-20(s0)
	.loc 1 797 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L55
	.loc 1 801 16
	addi	a5,s0,-128
	lw	a2,-136(s0)
	lw	a1,-132(s0)
	mv	a0,a5
	call	mbedtls_sha256_update
	sw	a0,-20(s0)
	.loc 1 801 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L56
	.loc 1 805 16
	addi	a5,s0,-128
	lw	a1,-140(s0)
	mv	a0,a5
	call	mbedtls_sha256_finish
	sw	a0,-20(s0)
	.loc 1 809 1
	j	.L52
.L55:
	.loc 1 798 9
	nop
	j	.L52
.L56:
	.loc 1 802 9
	nop
.L52:
	.loc 1 810 5
	addi	a5,s0,-128
	mv	a0,a5
	call	mbedtls_sha256_free
	.loc 1 812 12
	lw	a5,-20(s0)
.L54:
	.loc 1 813 1
	mv	a0,a5
	lw	ra,140(sp)
	.cfi_restore 1
	lw	s0,136(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	mbedtls_sha256, .-mbedtls_sha256
	.section	.rodata.sha_test_buf,"a"
	.align	2
	.type	sha_test_buf, @object
	.size	sha_test_buf, 171
sha_test_buf:
	.string	"abc"
	.zero	53
	.string	"abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq"
	.string	""
	.zero	56
	.section	.rodata.sha_test_buflen,"a"
	.align	2
	.type	sha_test_buflen, @object
	.size	sha_test_buflen, 12
sha_test_buflen:
	.word	3
	.word	56
	.word	1000
	.section	.rodata.sha224_test_sum,"a"
	.align	2
	.type	sha224_test_sum, @object
	.size	sha224_test_sum, 96
sha224_test_sum:
	.base64	"Iwl9IjQF2CKGQqR3vaJVsyqtvOS9oLP342ydpwA="
	.zero	3
	.base64	"dTiLFlEndsxdul2h/YkBULDGRVy09YsZUlIlJQA="
	.zero	3
	.base64	"IHlGVZgMkdi7tMHql2GKS/A/QlgZSLLuTuetZwA="
	.zero	3
	.section	.rodata.sha256_test_sum,"a"
	.align	2
	.type	sha256_test_sum, @object
	.size	sha256_test_sum, 96
sha256_test_sum:
	.base64	"ungWv48Bz+pBQUDeXa4iI7ADYaOWF3qctBD/YfIAFa0="
	.base64	"JI1qYdIGOLjlwCaTDD5gOaM85Flk/yFn9uzt1BnbBsE="
	.base64	"zcduXJkU+5KBocfihNc+Z/GAmkiklyAOBG05zMcRLNA="
	.section	.rodata
	.align	2
.LC0:
	.string	"Buffer allocation failed\n"
	.align	2
.LC1:
	.string	"  SHA-%d test #%d: "
	.align	2
.LC2:
	.string	"passed\n"
	.align	2
.LC3:
	.string	"\n"
	.align	2
.LC4:
	.string	"failed\n"
	.section	.text.mbedtls_sha256_common_self_test,"ax",@progbits
	.align	1
	.type	mbedtls_sha256_common_self_test, @function
mbedtls_sha256_common_self_test:
.LFB24:
	.loc 1 879 1
	.cfi_startproc
	addi	sp,sp,-208
	.cfi_def_cfa_offset 208
	sw	ra,204(sp)
	sw	s0,200(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,208
	.cfi_def_cfa 8, 0
	sw	a0,-196(s0)
	sw	a1,-200(s0)
	.loc 1 880 20
	sw	zero,-24(s0)
	.loc 1 886 62
	lw	a5,-200(s0)
	beq	a5,zero,.L58
	.loc 1 886 21 discriminator 1
	lui	a5,%hi(sha224_test_sum)
	addi	a5,a5,%lo(sha224_test_sum)
	sw	a5,-28(s0)
	j	.L59
.L58:
	.loc 1 886 21 is_stmt 0 discriminator 2
	lui	a5,%hi(sha256_test_sum)
	addi	a5,a5,%lo(sha256_test_sum)
	sw	a5,-28(s0)
.L59:
	.loc 1 893 11 is_stmt 1
	li	a1,1
	li	a0,1024
	call	calloc
	mv	a5,a0
	sw	a5,-36(s0)
	.loc 1 894 8
	lw	a5,-36(s0)
	bne	a5,zero,.L60
	.loc 1 895 12
	lw	a5,-196(s0)
	beq	a5,zero,.L61
	.loc 1 896 13
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
.L61:
	.loc 1 899 16
	li	a5,1
	j	.L78
.L60:
	.loc 1 902 5
	addi	a5,s0,-180
	mv	a0,a5
	call	mbedtls_sha256_init
	.loc 1 904 12
	sw	zero,-20(s0)
	.loc 1 904 5
	j	.L63
.L75:
	.loc 1 905 12
	lw	a5,-196(s0)
	beq	a5,zero,.L64
	.loc 1 906 47
	li	a4,8
	lw	a5,-200(s0)
	sub	a5,a4,a5
	.loc 1 906 13
	slli	a4,a5,5
	lw	a5,-20(s0)
	addi	a5,a5,1
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L64:
	.loc 1 909 20
	addi	a5,s0,-180
	lw	a1,-200(s0)
	mv	a0,a5
	call	mbedtls_sha256_starts
	sw	a0,-24(s0)
	.loc 1 909 12 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L79
	.loc 1 913 12
	lw	a4,-20(s0)
	li	a5,2
	bne	a4,a5,.L67
	.loc 1 914 37
	li	a5,1000
	sw	a5,-40(s0)
	.loc 1 914 13
	li	a2,1000
	li	a1,97
	lw	a0,-36(s0)
	call	memset
.LBB47:
	.loc 1 916 22
	sw	zero,-32(s0)
	.loc 1 916 13
	j	.L68
.L70:
	.loc 1 917 23
	lw	a4,-40(s0)
	addi	a5,s0,-180
	mv	a2,a4
	lw	a1,-36(s0)
	mv	a0,a5
	call	mbedtls_sha256_update
	sw	a0,-24(s0)
	.loc 1 918 20
	lw	a5,-24(s0)
	bne	a5,zero,.L80
	.loc 1 916 40 discriminator 2
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L68:
	.loc 1 916 31 discriminator 1
	lw	a4,-32(s0)
	li	a5,999
	ble	a4,a5,.L70
	j	.L71
.L67:
.LBE47:
	.loc 1 924 59
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	sub	a5,a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	lui	a4,%hi(sha_test_buf)
	addi	a4,a4,%lo(sha_test_buf)
	add	a3,a5,a4
	.loc 1 925 56
	lui	a5,%hi(sha_test_buflen)
	addi	a4,a5,%lo(sha_test_buflen)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 924 19
	addi	a5,s0,-180
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	mbedtls_sha256_update
	sw	a0,-24(s0)
	.loc 1 926 16
	lw	a5,-24(s0)
	bne	a5,zero,.L81
.L71:
	.loc 1 931 20
	addi	a4,s0,-72
	addi	a5,s0,-180
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_sha256_finish
	sw	a0,-24(s0)
	.loc 1 931 12 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L82
	.loc 1 936 43
	lw	a5,-20(s0)
	slli	a5,a5,5
	lw	a4,-28(s0)
	add	a3,a4,a5
	.loc 1 936 51
	li	a4,8
	lw	a5,-200(s0)
	sub	a5,a4,a5
	slli	a5,a5,2
	.loc 1 936 13
	mv	a4,a5
	addi	a5,s0,-72
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 1 936 12 discriminator 1
	beq	a5,zero,.L73
	.loc 1 937 17
	li	a5,1
	sw	a5,-24(s0)
	.loc 1 938 13
	j	.L66
.L73:
	.loc 1 941 12
	lw	a5,-196(s0)
	beq	a5,zero,.L74
	.loc 1 942 13
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L74:
	.loc 1 904 25 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L63:
	.loc 1 904 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,2
	ble	a4,a5,.L75
	.loc 1 946 8
	lw	a5,-196(s0)
	beq	a5,zero,.L83
	.loc 1 947 9
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	.loc 1 950 5
	j	.L83
.L79:
	.loc 1 910 13
	nop
	j	.L66
.L80:
.LBB48:
	.loc 1 919 21
	nop
	j	.L66
.L81:
.LBE48:
	.loc 1 927 17
	nop
	j	.L66
.L82:
	.loc 1 932 13
	nop
.L66:
	.loc 1 953 8
	lw	a5,-196(s0)
	beq	a5,zero,.L84
	.loc 1 954 9
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
	j	.L77
.L83:
	.loc 1 950 5
	nop
	j	.L77
.L84:
	.loc 1 957 1
	nop
.L77:
	.loc 1 958 5
	addi	a5,s0,-180
	mv	a0,a5
	call	mbedtls_sha256_free
	.loc 1 959 5
	lw	a0,-36(s0)
	call	free
	.loc 1 961 12
	lw	a5,-24(s0)
.L78:
	.loc 1 962 1
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
.LFE24:
	.size	mbedtls_sha256_common_self_test, .-mbedtls_sha256_common_self_test
	.section	.text.mbedtls_sha256_self_test,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_self_test
	.type	mbedtls_sha256_self_test, @function
mbedtls_sha256_self_test:
.LFB25:
	.loc 1 966 1
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
	.loc 1 967 12
	li	a1,0
	lw	a0,-20(s0)
	call	mbedtls_sha256_common_self_test
	mv	a5,a0
	.loc 1 968 1
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
.LFE25:
	.size	mbedtls_sha256_self_test, .-mbedtls_sha256_self_test
	.section	.text.mbedtls_sha224_self_test,"ax",@progbits
	.align	1
	.globl	mbedtls_sha224_self_test
	.type	mbedtls_sha224_self_test, @function
mbedtls_sha224_self_test:
.LFB26:
	.loc 1 973 1
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
	.loc 1 974 12
	li	a1,1
	lw	a0,-20(s0)
	call	mbedtls_sha256_common_self_test
	mv	a5,a0
	.loc 1 975 1
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
.LFE26:
	.size	mbedtls_sha224_self_test, .-mbedtls_sha224_self_test
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/sha256.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9f2
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1c
	.4byte	.LASF67
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL1
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x9
	.4byte	0x32
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
	.uleb128 0x1d
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xe
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x9
	.4byte	0x76
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xe
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x9
	.4byte	0x8e
	.uleb128 0xe
	.4byte	.LASF14
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x9
	.4byte	0x9f
	.uleb128 0x1e
	.byte	0x4
	.uleb128 0x14
	.4byte	0xb0
	.uleb128 0xb
	.4byte	0x32
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x9
	.4byte	0xbc
	.uleb128 0xb
	.4byte	0xc3
	.uleb128 0x14
	.4byte	0xc8
	.uleb128 0xb
	.4byte	0xdc
	.uleb128 0x14
	.4byte	0xd2
	.uleb128 0x1f
	.uleb128 0x20
	.byte	0x4
	.byte	0x2
	.byte	0x59
	.byte	0x9
	.4byte	0xf2
	.uleb128 0x21
	.string	"x"
	.byte	0x2
	.byte	0x5a
	.byte	0xe
	.4byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF16
	.byte	0x2
	.byte	0x5b
	.byte	0x1b
	.4byte	0xdd
	.uleb128 0x22
	.4byte	.LASF21
	.byte	0x6c
	.byte	0x5
	.byte	0x28
	.byte	0x10
	.4byte	0x13c
	.uleb128 0x12
	.4byte	.LASF17
	.byte	0x29
	.byte	0x13
	.4byte	0x13c
	.byte	0
	.uleb128 0x12
	.4byte	.LASF18
	.byte	0x2a
	.byte	0xe
	.4byte	0x14c
	.byte	0x40
	.uleb128 0x12
	.4byte	.LASF19
	.byte	0x2b
	.byte	0xe
	.4byte	0x15c
	.byte	0x48
	.uleb128 0x12
	.4byte	.LASF20
	.byte	0x2d
	.byte	0x9
	.4byte	0x68
	.byte	0x68
	.byte	0
	.uleb128 0xa
	.4byte	0x32
	.4byte	0x14c
	.uleb128 0x5
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0xa
	.4byte	0x9f
	.4byte	0x15c
	.uleb128 0x5
	.4byte	0x6f
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x9f
	.4byte	0x16c
	.uleb128 0x5
	.4byte	0x6f
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x5
	.byte	0x31
	.byte	0x1
	.4byte	0xfe
	.uleb128 0x9
	.4byte	0x16c
	.uleb128 0xa
	.4byte	0xab
	.4byte	0x18d
	.uleb128 0x5
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0x9
	.4byte	0x17d
	.uleb128 0x6
	.string	"K"
	.2byte	0x12b
	.byte	0x17
	.4byte	0x18d
	.uleb128 0x5
	.byte	0x3
	.4byte	K
	.uleb128 0xa
	.4byte	0x39
	.4byte	0x1b8
	.uleb128 0x5
	.4byte	0x6f
	.byte	0x2
	.uleb128 0x5
	.4byte	0x6f
	.byte	0x38
	.byte	0
	.uleb128 0x9
	.4byte	0x1a2
	.uleb128 0x2
	.4byte	.LASF22
	.2byte	0x333
	.byte	0x1c
	.4byte	0x1b8
	.uleb128 0x5
	.byte	0x3
	.4byte	sha_test_buf
	.uleb128 0xa
	.4byte	0x82
	.4byte	0x1df
	.uleb128 0x5
	.4byte	0x6f
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x1cf
	.uleb128 0x2
	.4byte	.LASF23
	.2byte	0x33a
	.byte	0x15
	.4byte	0x1df
	.uleb128 0x5
	.byte	0x3
	.4byte	sha_test_buflen
	.uleb128 0x23
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x33f
	.byte	0x1e
	.4byte	0x203
	.uleb128 0xa
	.4byte	0x39
	.4byte	0x213
	.uleb128 0x5
	.4byte	0x6f
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.4byte	0x39
	.4byte	0x229
	.uleb128 0x5
	.4byte	0x6f
	.byte	0x2
	.uleb128 0x5
	.4byte	0x6f
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.4byte	0x213
	.uleb128 0x2
	.4byte	.LASF25
	.2byte	0x345
	.byte	0x17
	.4byte	0x229
	.uleb128 0x5
	.byte	0x3
	.4byte	sha224_test_sum
	.uleb128 0x2
	.4byte	.LASF26
	.2byte	0x35a
	.byte	0x17
	.4byte	0x229
	.uleb128 0x5
	.byte	0x3
	.4byte	sha256_test_sum
	.uleb128 0x18
	.4byte	.LASF31
	.byte	0x8
	.byte	0x5e
	.4byte	0x263
	.uleb128 0x3
	.4byte	0xb0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x6
	.byte	0x1e
	.byte	0x5
	.4byte	0x68
	.4byte	0x283
	.uleb128 0x3
	.4byte	0xd2
	.uleb128 0x3
	.4byte	0xd2
	.uleb128 0x3
	.4byte	0x76
	.byte	0
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x7
	.byte	0xce
	.byte	0x5
	.4byte	0x68
	.4byte	0x29a
	.uleb128 0x3
	.4byte	0xcd
	.uleb128 0x24
	.byte	0
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x8
	.byte	0x5a
	.byte	0x7
	.4byte	0xb0
	.4byte	0x2b5
	.uleb128 0x3
	.4byte	0x76
	.uleb128 0x3
	.4byte	0x76
	.byte	0
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x6
	.byte	0x1f
	.byte	0x8
	.4byte	0xb0
	.4byte	0x2d5
	.uleb128 0x3
	.4byte	0xb2
	.uleb128 0x3
	.4byte	0xd7
	.uleb128 0x3
	.4byte	0x76
	.byte	0
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x9
	.byte	0x9f
	.4byte	0x2eb
	.uleb128 0x3
	.4byte	0xb0
	.uleb128 0x3
	.4byte	0x76
	.byte	0
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x6
	.byte	0x21
	.byte	0x8
	.4byte	0xb0
	.4byte	0x30b
	.uleb128 0x3
	.4byte	0xb0
	.uleb128 0x3
	.4byte	0x68
	.uleb128 0x3
	.4byte	0x76
	.byte	0
	.uleb128 0xd
	.4byte	.LASF34
	.2byte	0x3cc
	.4byte	0x68
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x334
	.uleb128 0x4
	.4byte	.LASF36
	.2byte	0x3cc
	.byte	0x22
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF35
	.2byte	0x3c5
	.4byte	0x68
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x35d
	.uleb128 0x4
	.4byte	.LASF36
	.2byte	0x3c5
	.byte	0x22
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF54
	.2byte	0x36e
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42a
	.uleb128 0x4
	.4byte	.LASF36
	.2byte	0x36e
	.byte	0x30
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x4
	.4byte	.LASF20
	.2byte	0x36e
	.byte	0x3d
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x6
	.string	"i"
	.2byte	0x370
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF37
	.2byte	0x370
	.byte	0xc
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"ret"
	.2byte	0x370
	.byte	0x14
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"buf"
	.2byte	0x371
	.byte	0x14
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF38
	.2byte	0x372
	.byte	0x13
	.4byte	0x42a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.string	"ctx"
	.2byte	0x373
	.byte	0x1c
	.4byte	0x16c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2
	.4byte	.LASF39
	.2byte	0x376
	.byte	0x15
	.4byte	0x43a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF40
	.2byte	0x3b8
	.4byte	.L66
	.uleb128 0x13
	.4byte	.LASF41
	.2byte	0x3bd
	.4byte	.L77
	.uleb128 0x25
	.4byte	.LLRL0
	.uleb128 0x6
	.string	"j"
	.2byte	0x394
	.byte	0x16
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x32
	.4byte	0x43a
	.uleb128 0x5
	.4byte	0x6f
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.4byte	0x1f6
	.uleb128 0xd
	.4byte	.LASF42
	.2byte	0x305
	.4byte	0x68
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c3
	.uleb128 0x4
	.4byte	.LASF43
	.2byte	0x305
	.byte	0x29
	.4byte	0x4c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x4
	.4byte	.LASF44
	.2byte	0x306
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x4
	.4byte	.LASF45
	.2byte	0x307
	.byte	0x23
	.4byte	0xb7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x4
	.4byte	.LASF20
	.2byte	0x308
	.byte	0x18
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x6
	.string	"ret"
	.2byte	0x30a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"ctx"
	.2byte	0x30b
	.byte	0x1c
	.4byte	0x16c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x13
	.4byte	.LASF41
	.2byte	0x329
	.4byte	.L52
	.byte	0
	.uleb128 0xb
	.4byte	0x39
	.uleb128 0xd
	.4byte	.LASF46
	.2byte	0x2bc
	.4byte	0x68
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x72d
	.uleb128 0x10
	.string	"ctx"
	.2byte	0x2bc
	.byte	0x33
	.4byte	0x72d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x4
	.4byte	.LASF45
	.2byte	0x2bd
	.byte	0x2a
	.4byte	0xb7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x6
	.string	"ret"
	.2byte	0x2bf
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF47
	.2byte	0x2c0
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF48
	.2byte	0x2c1
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"low"
	.2byte	0x2c1
	.byte	0x14
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF49
	.2byte	0x2c2
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LASF41
	.2byte	0x2fb
	.4byte	.L42
	.uleb128 0xc
	.4byte	0x99a
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.2byte	0x2e0
	.byte	0x60
	.4byte	0x584
	.uleb128 0x1
	.4byte	0x9a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	0x9b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	0x9b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xc
	.4byte	0x99a
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.2byte	0x2e1
	.byte	0x5f
	.4byte	0x5b1
	.uleb128 0x1
	.4byte	0x9a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	0x9b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.4byte	0x9b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0xc
	.4byte	0x99a
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.2byte	0x2ea
	.byte	0x63
	.4byte	0x5e0
	.uleb128 0x1
	.4byte	0x9a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	0x9b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x7
	.4byte	0x9b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0xc
	.4byte	0x99a
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.2byte	0x2eb
	.byte	0x63
	.4byte	0x610
	.uleb128 0x1
	.4byte	0x9a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1
	.4byte	0x9b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x7
	.4byte	0x9b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0xc
	.4byte	0x99a
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.2byte	0x2ec
	.byte	0x63
	.4byte	0x640
	.uleb128 0x1
	.4byte	0x9a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.4byte	0x9b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x7
	.4byte	0x9b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0xc
	.4byte	0x99a
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.2byte	0x2ed
	.byte	0x64
	.4byte	0x670
	.uleb128 0x1
	.4byte	0x9a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1
	.4byte	0x9b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x7
	.4byte	0x9b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0xc
	.4byte	0x99a
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.2byte	0x2ee
	.byte	0x64
	.4byte	0x6a0
	.uleb128 0x1
	.4byte	0x9a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1
	.4byte	0x9b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x7
	.4byte	0x9b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0xc
	.4byte	0x99a
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.2byte	0x2ef
	.byte	0x64
	.4byte	0x6d0
	.uleb128 0x1
	.4byte	0x9a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1
	.4byte	0x9b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x7
	.4byte	0x9b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.byte	0
	.uleb128 0xc
	.4byte	0x99a
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.2byte	0x2f0
	.byte	0x64
	.4byte	0x700
	.uleb128 0x1
	.4byte	0x9a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1
	.4byte	0x9b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x7
	.4byte	0x9b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x1a
	.4byte	0x99a
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.2byte	0x2f6
	.byte	0x68
	.uleb128 0x1
	.4byte	0x9a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x1
	.4byte	0x9b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x7
	.4byte	0x9b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x16c
	.uleb128 0xd
	.4byte	.LASF50
	.2byte	0x285
	.4byte	0x68
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7bf
	.uleb128 0x10
	.string	"ctx"
	.2byte	0x285
	.byte	0x33
	.4byte	0x72d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF43
	.2byte	0x286
	.byte	0x30
	.4byte	0x4c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF44
	.2byte	0x287
	.byte	0x22
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"ret"
	.2byte	0x289
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF51
	.2byte	0x28a
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF52
	.2byte	0x28b
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.uleb128 0x2
	.4byte	.LASF53
	.2byte	0x2a8
	.byte	0x10
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF55
	.2byte	0x246
	.byte	0xf
	.4byte	0x76
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x816
	.uleb128 0x10
	.string	"ctx"
	.2byte	0x247
	.byte	0x1d
	.4byte	0x72d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF56
	.2byte	0x247
	.byte	0x31
	.4byte	0x816
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"len"
	.2byte	0x247
	.byte	0x3e
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF53
	.2byte	0x249
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	0x9a
	.uleb128 0xd
	.4byte	.LASF57
	.2byte	0x1ec
	.4byte	0x68
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d6
	.uleb128 0x10
	.string	"ctx"
	.2byte	0x1ec
	.byte	0x3d
	.4byte	0x72d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x4
	.4byte	.LASF56
	.2byte	0x1ed
	.byte	0x3b
	.4byte	0x4c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x27
	.2byte	0x128
	.byte	0x1
	.2byte	0x1ef
	.byte	0x5
	.4byte	0x88f
	.uleb128 0x1b
	.4byte	.LASF58
	.byte	0x12
	.4byte	0x9f
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF59
	.byte	0x19
	.4byte	0x9f
	.byte	0x4
	.uleb128 0x28
	.string	"W"
	.byte	0x1
	.2byte	0x1f0
	.byte	0x20
	.4byte	0x8d6
	.byte	0x8
	.uleb128 0x29
	.string	"A"
	.byte	0x1
	.2byte	0x1f1
	.byte	0x12
	.4byte	0x15c
	.2byte	0x108
	.byte	0
	.uleb128 0x2
	.4byte	.LASF60
	.2byte	0x1f2
	.byte	0x7
	.4byte	0x854
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x6
	.string	"i"
	.2byte	0x1f4
	.byte	0x12
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.4byte	0x9ca
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.2byte	0x1fd
	.byte	0x64
	.uleb128 0x1
	.4byte	0x9d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	0x9e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.4byte	0x9e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x9f
	.4byte	0x8e6
	.uleb128 0x5
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF61
	.byte	0x1
	.byte	0xf8
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x91e
	.uleb128 0x11
	.string	"ctx"
	.byte	0xf8
	.byte	0x33
	.4byte	0x72d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.4byte	.LASF20
	.byte	0x1
	.byte	0xf8
	.byte	0x3c
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0xef
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x94f
	.uleb128 0x11
	.string	"dst"
	.byte	0xef
	.byte	0x33
	.4byte	0x72d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.string	"src"
	.byte	0xf0
	.byte	0x39
	.4byte	0x94f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	0x178
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0xe6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x977
	.uleb128 0x11
	.string	"ctx"
	.byte	0xe6
	.byte	0x32
	.4byte	0x72d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0xe1
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x99a
	.uleb128 0x11
	.string	"ctx"
	.byte	0xe1
	.byte	0x32
	.4byte	0x72d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF65
	.byte	0x2
	.byte	0xc2
	.byte	0x14
	.byte	0x3
	.4byte	0x9c5
	.uleb128 0x16
	.string	"p"
	.byte	0xc2
	.byte	0x37
	.4byte	0xb0
	.uleb128 0x16
	.string	"x"
	.byte	0xc2
	.byte	0x43
	.4byte	0x9f
	.uleb128 0x17
	.string	"p32"
	.byte	0xc8
	.byte	0x21
	.4byte	0x9c5
	.byte	0
	.uleb128 0xb
	.4byte	0xf2
	.uleb128 0x2d
	.4byte	.LASF66
	.byte	0x2
	.byte	0xa7
	.byte	0x18
	.4byte	0x9f
	.byte	0x3
	.uleb128 0x16
	.string	"p"
	.byte	0xa7
	.byte	0x41
	.4byte	0xd2
	.uleb128 0x17
	.string	"r"
	.byte	0xa9
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x17
	.string	"p32"
	.byte	0xae
	.byte	0x21
	.4byte	0x9c5
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x34
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 496
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x5
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LBB47
	.byte	0x4
	.uleb128 .LBB47-.LBB47
	.uleb128 .LBE47-.LBB47
	.byte	0x4
	.uleb128 .LBB48-.LBB47
	.uleb128 .LBE48-.LBB47
	.byte	0
.LLRL1:
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"printf"
.LASF12:
	.string	"size_t"
.LASF24:
	.string	"sha_test_sum_t"
.LASF38:
	.string	"sha256sum"
.LASF9:
	.string	"long long unsigned int"
.LASF54:
	.string	"mbedtls_sha256_common_self_test"
.LASF31:
	.string	"free"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF64:
	.string	"mbedtls_sha256_init"
.LASF66:
	.string	"mbedtls_get_unaligned_uint32"
.LASF60:
	.string	"local"
.LASF19:
	.string	"state"
.LASF6:
	.string	"long int"
.LASF63:
	.string	"mbedtls_sha256_free"
.LASF30:
	.string	"memcpy"
.LASF16:
	.string	"mbedtls_uint32_unaligned_t"
.LASF10:
	.string	"unsigned int"
.LASF49:
	.string	"truncated"
.LASF46:
	.string	"mbedtls_sha256_finish"
.LASF7:
	.string	"long unsigned int"
.LASF56:
	.string	"data"
.LASF5:
	.string	"short unsigned int"
.LASF20:
	.string	"is224"
.LASF61:
	.string	"mbedtls_sha256_starts"
.LASF18:
	.string	"total"
.LASF45:
	.string	"output"
.LASF11:
	.string	"long double"
.LASF39:
	.string	"sha_test_sum"
.LASF23:
	.string	"sha_test_buflen"
.LASF26:
	.string	"sha256_test_sum"
.LASF53:
	.string	"processed"
.LASF22:
	.string	"sha_test_buf"
.LASF47:
	.string	"used"
.LASF3:
	.string	"unsigned char"
.LASF4:
	.string	"short int"
.LASF58:
	.string	"temp1"
.LASF59:
	.string	"temp2"
.LASF51:
	.string	"fill"
.LASF42:
	.string	"mbedtls_sha256"
.LASF37:
	.string	"buflen"
.LASF41:
	.string	"exit"
.LASF62:
	.string	"mbedtls_sha256_clone"
.LASF43:
	.string	"input"
.LASF14:
	.string	"uint32_t"
.LASF40:
	.string	"fail"
.LASF15:
	.string	"char"
.LASF50:
	.string	"mbedtls_sha256_update"
.LASF32:
	.string	"mbedtls_platform_zeroize"
.LASF36:
	.string	"verbose"
.LASF17:
	.string	"buffer"
.LASF48:
	.string	"high"
.LASF27:
	.string	"memcmp"
.LASF67:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF57:
	.string	"mbedtls_internal_sha256_process"
.LASF33:
	.string	"memset"
.LASF29:
	.string	"calloc"
.LASF44:
	.string	"ilen"
.LASF13:
	.string	"uint8_t"
.LASF35:
	.string	"mbedtls_sha256_self_test"
.LASF25:
	.string	"sha224_test_sum"
.LASF34:
	.string	"mbedtls_sha224_self_test"
.LASF65:
	.string	"mbedtls_put_unaligned_uint32"
.LASF21:
	.string	"mbedtls_sha256_context"
.LASF52:
	.string	"left"
.LASF55:
	.string	"mbedtls_internal_sha256_process_many"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/sha256.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
	.globl	__bswapsi2
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
