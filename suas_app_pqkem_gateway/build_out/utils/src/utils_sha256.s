	.file	"utils_sha256.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils" "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_sha256.c"
	.section	.text.utils_sha256_zeroize,"ax",@progbits
	.align	1
	.type	utils_sha256_zeroize, @function
utils_sha256_zeroize:
.LFB1:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_sha256.c"
	.loc 1 63 1
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
	.loc 1 64 29
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 65 11
	j	.L2
.L3:
	.loc 1 66 11
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 66 14
	sb	zero,0(a5)
.L2:
	.loc 1 65 13
	lw	a5,-40(s0)
	addi	a4,a5,-1
	sw	a4,-40(s0)
	.loc 1 65 12
	bne	a5,zero,.L3
	.loc 1 68 1
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
.LFE1:
	.size	utils_sha256_zeroize, .-utils_sha256_zeroize
	.section	.text.utils_sha256_init,"ax",@progbits
	.align	1
	.globl	utils_sha256_init
	.type	utils_sha256_init, @function
utils_sha256_init:
.LFB2:
	.loc 1 70 1
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
	.loc 1 71 5
	li	a2,108
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 1 72 1
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
.LFE2:
	.size	utils_sha256_init, .-utils_sha256_init
	.section	.text.utils_sha256_free,"ax",@progbits
	.align	1
	.globl	utils_sha256_free
	.type	utils_sha256_free, @function
utils_sha256_free:
.LFB3:
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
	.loc 1 75 8
	lw	a5,-20(s0)
	beq	a5,zero,.L8
	.loc 1 79 5
	li	a1,108
	lw	a0,-20(s0)
	call	utils_sha256_zeroize
	j	.L5
.L8:
	.loc 1 76 9
	nop
.L5:
	.loc 1 80 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	utils_sha256_free, .-utils_sha256_free
	.section	.text.utils_sha256_clone,"ax",@progbits
	.align	1
	.globl	utils_sha256_clone
	.type	utils_sha256_clone, @function
utils_sha256_clone:
.LFB4:
	.loc 1 83 1
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
	.loc 1 84 10
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	mv	a3,a5
	li	a5,108
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcpy
	.loc 1 85 1
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
.LFE4:
	.size	utils_sha256_clone, .-utils_sha256_clone
	.section	.text.utils_sha256_starts,"ax",@progbits
	.align	1
	.globl	utils_sha256_starts
	.type	utils_sha256_starts, @function
utils_sha256_starts:
.LFB5:
	.loc 1 87 1
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
	.loc 1 88 9
	sw	zero,-20(s0)
	.loc 1 89 19
	lw	a5,-36(s0)
	sw	zero,0(a5)
	.loc 1 90 19
	lw	a5,-36(s0)
	sw	zero,4(a5)
	.loc 1 92 8
	lw	a5,-20(s0)
	bne	a5,zero,.L11
	.loc 1 94 23
	lw	a5,-36(s0)
	li	a4,1779032064
	addi	a4,a4,1639
	sw	a4,8(a5)
	.loc 1 95 23
	lw	a5,-36(s0)
	li	a4,-1150832640
	addi	a4,a4,-379
	sw	a4,12(a5)
	.loc 1 96 23
	lw	a5,-36(s0)
	li	a4,1013903360
	addi	a4,a4,882
	sw	a4,16(a5)
	.loc 1 97 23
	lw	a5,-36(s0)
	li	a4,-1521487872
	addi	a4,a4,1338
	sw	a4,20(a5)
	.loc 1 98 23
	lw	a5,-36(s0)
	li	a4,1359892480
	addi	a4,a4,639
	sw	a4,24(a5)
	.loc 1 99 23
	lw	a5,-36(s0)
	li	a4,-1694142464
	addi	a4,a4,-1908
	sw	a4,28(a5)
	.loc 1 100 23
	lw	a5,-36(s0)
	li	a4,528736256
	addi	a4,a4,-1621
	sw	a4,32(a5)
	.loc 1 101 23
	lw	a5,-36(s0)
	li	a4,1541459968
	addi	a4,a4,-743
	sw	a4,36(a5)
.L11:
	.loc 1 104 16
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,104(a5)
	.loc 1 105 1
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
.LFE5:
	.size	utils_sha256_starts, .-utils_sha256_starts
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
	.section	.text.utils_sha256_process,"ax",@progbits
	.align	1
	.globl	utils_sha256_process
	.type	utils_sha256_process, @function
utils_sha256_process:
.LFB6:
	.loc 1 152 1
	.cfi_startproc
	addi	sp,sp,-336
	.cfi_def_cfa_offset 336
	sw	ra,332(sp)
	sw	s0,328(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,336
	.cfi_def_cfa 8, 0
	sw	a0,-324(s0)
	sw	a1,-328(s0)
	.loc 1 157 12
	sw	zero,-20(s0)
	.loc 1 157 5
	j	.L13
.L14:
	.loc 1 158 26
	lw	a4,-324(s0)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,8(a5)
	.loc 1 158 14
	lw	a3,-20(s0)
	addi	a5,s0,-316
	slli	a3,a3,2
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 1 157 25 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L13:
	.loc 1 157 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,7
	bleu	a4,a5,.L14
	.loc 1 182 12
	sw	zero,-20(s0)
	.loc 1 182 5
	j	.L15
.L16:
	.loc 1 183 46
	lw	a5,-20(s0)
	slli	a5,a5,2
	.loc 1 183 42
	lw	a4,-328(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 183 53
	slli	a4,a5,24
	.loc 1 183 86
	lw	a5,-20(s0)
	slli	a5,a5,2
	.loc 1 183 82
	addi	a5,a5,1
	lw	a3,-328(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 1 183 96
	slli	a5,a5,16
	.loc 1 183 61
	or	a4,a4,a5
	.loc 1 183 129
	lw	a5,-20(s0)
	slli	a5,a5,2
	.loc 1 183 125
	addi	a5,a5,2
	lw	a3,-328(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 1 183 139
	slli	a5,a5,8
	.loc 1 183 104
	or	a5,a4,a5
	.loc 1 183 171
	lw	a4,-20(s0)
	slli	a4,a4,2
	.loc 1 183 167
	addi	a4,a4,3
	lw	a3,-328(s0)
	add	a4,a3,a4
	lbu	a4,0(a4)
	.loc 1 183 146
	or	a4,a5,a4
	.loc 1 183 21
	lw	a3,-20(s0)
	addi	a5,s0,-284
	slli	a3,a3,2
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 1 182 26 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L15:
	.loc 1 182 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,15
	bleu	a4,a5,.L16
	.loc 1 186 12
	sw	zero,-20(s0)
	.loc 1 186 5
	j	.L17
.L18:
	.loc 1 187 20
	lw	a3,-288(s0)
	.loc 1 187 31
	lw	a5,-300(s0)
	.loc 1 187 55
	srli	a2,a5,6
	slli	a4,a5,26
	add	a4,a4,a2
	.loc 1 187 83
	lw	a5,-300(s0)
	.loc 1 187 108
	srli	a2,a5,11
	slli	a5,a5,21
	add	a5,a5,a2
	.loc 1 187 77
	xor	a4,a4,a5
	.loc 1 187 137
	lw	a5,-300(s0)
	.loc 1 187 162
	srli	a2,a5,25
	slli	a5,a5,7
	add	a5,a5,a2
	.loc 1 187 131
	xor	a5,a4,a5
	.loc 1 187 24
	add	a4,a3,a5
	.loc 1 187 190
	lw	a3,-292(s0)
	.loc 1 187 198
	lw	a2,-300(s0)
	.loc 1 187 206
	lw	a1,-296(s0)
	.loc 1 187 213
	lw	a5,-292(s0)
	.loc 1 187 210
	xor	a5,a1,a5
	.loc 1 187 202
	and	a5,a2,a5
	.loc 1 187 194
	xor	a5,a3,a5
	.loc 1 187 186
	add	a4,a4,a5
	.loc 1 187 223
	lui	a5,%hi(K)
	addi	a3,a5,%lo(K)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 187 220
	add	a4,a4,a5
	.loc 1 187 234
	lw	a3,-20(s0)
	addi	a5,s0,-284
	slli	a3,a3,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 187 17
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 187 256
	lw	a5,-316(s0)
	.loc 1 187 280
	srli	a3,a5,2
	slli	a4,a5,30
	add	a4,a4,a3
	.loc 1 187 308
	lw	a5,-316(s0)
	.loc 1 187 333
	srli	a3,a5,13
	slli	a5,a5,19
	add	a5,a5,a3
	.loc 1 187 302
	xor	a4,a4,a5
	.loc 1 187 362
	lw	a5,-316(s0)
	.loc 1 187 387
	srli	a3,a5,22
	slli	a5,a5,10
	add	a5,a5,a3
	.loc 1 187 356
	xor	a4,a4,a5
	.loc 1 187 416
	lw	a3,-316(s0)
	.loc 1 187 423
	lw	a5,-312(s0)
	.loc 1 187 420
	and	a3,a3,a5
	.loc 1 187 432
	lw	a2,-308(s0)
	.loc 1 187 440
	lw	a1,-316(s0)
	.loc 1 187 447
	lw	a5,-312(s0)
	.loc 1 187 444
	or	a5,a1,a5
	.loc 1 187 436
	and	a5,a2,a5
	.loc 1 187 428
	or	a5,a3,a5
	.loc 1 187 249
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 187 456
	lw	a4,-304(s0)
	.loc 1 187 460
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-304(s0)
	.loc 1 187 483
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 1 187 475
	sw	a5,-288(s0)
	.loc 1 188 20
	lw	a3,-292(s0)
	.loc 1 188 31
	lw	a5,-304(s0)
	.loc 1 188 55
	srli	a2,a5,6
	slli	a4,a5,26
	add	a4,a4,a2
	.loc 1 188 83
	lw	a5,-304(s0)
	.loc 1 188 108
	srli	a2,a5,11
	slli	a5,a5,21
	add	a5,a5,a2
	.loc 1 188 77
	xor	a4,a4,a5
	.loc 1 188 137
	lw	a5,-304(s0)
	.loc 1 188 162
	srli	a2,a5,25
	slli	a5,a5,7
	add	a5,a5,a2
	.loc 1 188 131
	xor	a5,a4,a5
	.loc 1 188 24
	add	a4,a3,a5
	.loc 1 188 190
	lw	a3,-296(s0)
	.loc 1 188 198
	lw	a2,-304(s0)
	.loc 1 188 206
	lw	a1,-300(s0)
	.loc 1 188 213
	lw	a5,-296(s0)
	.loc 1 188 210
	xor	a5,a1,a5
	.loc 1 188 202
	and	a5,a2,a5
	.loc 1 188 194
	xor	a5,a3,a5
	.loc 1 188 186
	add	a4,a4,a5
	.loc 1 188 226
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 1 188 223
	lui	a3,%hi(K)
	addi	a3,a3,%lo(K)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 188 220
	add	a4,a4,a5
	.loc 1 188 237
	lw	a5,-20(s0)
	addi	a3,a5,1
	.loc 1 188 234
	addi	a5,s0,-284
	slli	a3,a3,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 188 17
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 188 256
	lw	a5,-288(s0)
	.loc 1 188 280
	srli	a3,a5,2
	slli	a4,a5,30
	add	a4,a4,a3
	.loc 1 188 308
	lw	a5,-288(s0)
	.loc 1 188 333
	srli	a3,a5,13
	slli	a5,a5,19
	add	a5,a5,a3
	.loc 1 188 302
	xor	a4,a4,a5
	.loc 1 188 362
	lw	a5,-288(s0)
	.loc 1 188 387
	srli	a3,a5,22
	slli	a5,a5,10
	add	a5,a5,a3
	.loc 1 188 356
	xor	a4,a4,a5
	.loc 1 188 416
	lw	a3,-288(s0)
	.loc 1 188 423
	lw	a5,-316(s0)
	.loc 1 188 420
	and	a3,a3,a5
	.loc 1 188 432
	lw	a2,-312(s0)
	.loc 1 188 440
	lw	a1,-288(s0)
	.loc 1 188 447
	lw	a5,-316(s0)
	.loc 1 188 444
	or	a5,a1,a5
	.loc 1 188 436
	and	a5,a2,a5
	.loc 1 188 428
	or	a5,a3,a5
	.loc 1 188 249
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 188 456
	lw	a4,-308(s0)
	.loc 1 188 460
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-308(s0)
	.loc 1 188 483
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 1 188 475
	sw	a5,-292(s0)
	.loc 1 189 20
	lw	a3,-296(s0)
	.loc 1 189 31
	lw	a5,-308(s0)
	.loc 1 189 55
	srli	a2,a5,6
	slli	a4,a5,26
	add	a4,a4,a2
	.loc 1 189 83
	lw	a5,-308(s0)
	.loc 1 189 108
	srli	a2,a5,11
	slli	a5,a5,21
	add	a5,a5,a2
	.loc 1 189 77
	xor	a4,a4,a5
	.loc 1 189 137
	lw	a5,-308(s0)
	.loc 1 189 162
	srli	a2,a5,25
	slli	a5,a5,7
	add	a5,a5,a2
	.loc 1 189 131
	xor	a5,a4,a5
	.loc 1 189 24
	add	a4,a3,a5
	.loc 1 189 190
	lw	a3,-300(s0)
	.loc 1 189 198
	lw	a2,-308(s0)
	.loc 1 189 206
	lw	a1,-304(s0)
	.loc 1 189 213
	lw	a5,-300(s0)
	.loc 1 189 210
	xor	a5,a1,a5
	.loc 1 189 202
	and	a5,a2,a5
	.loc 1 189 194
	xor	a5,a3,a5
	.loc 1 189 186
	add	a4,a4,a5
	.loc 1 189 226
	lw	a5,-20(s0)
	addi	a5,a5,2
	.loc 1 189 223
	lui	a3,%hi(K)
	addi	a3,a3,%lo(K)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 189 220
	add	a4,a4,a5
	.loc 1 189 237
	lw	a5,-20(s0)
	addi	a3,a5,2
	.loc 1 189 234
	addi	a5,s0,-284
	slli	a3,a3,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 189 17
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 189 256
	lw	a5,-292(s0)
	.loc 1 189 280
	srli	a3,a5,2
	slli	a4,a5,30
	add	a4,a4,a3
	.loc 1 189 308
	lw	a5,-292(s0)
	.loc 1 189 333
	srli	a3,a5,13
	slli	a5,a5,19
	add	a5,a5,a3
	.loc 1 189 302
	xor	a4,a4,a5
	.loc 1 189 362
	lw	a5,-292(s0)
	.loc 1 189 387
	srli	a3,a5,22
	slli	a5,a5,10
	add	a5,a5,a3
	.loc 1 189 356
	xor	a4,a4,a5
	.loc 1 189 416
	lw	a3,-292(s0)
	.loc 1 189 423
	lw	a5,-288(s0)
	.loc 1 189 420
	and	a3,a3,a5
	.loc 1 189 432
	lw	a2,-316(s0)
	.loc 1 189 440
	lw	a1,-292(s0)
	.loc 1 189 447
	lw	a5,-288(s0)
	.loc 1 189 444
	or	a5,a1,a5
	.loc 1 189 436
	and	a5,a2,a5
	.loc 1 189 428
	or	a5,a3,a5
	.loc 1 189 249
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 189 456
	lw	a4,-312(s0)
	.loc 1 189 460
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-312(s0)
	.loc 1 189 483
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 1 189 475
	sw	a5,-296(s0)
	.loc 1 190 20
	lw	a3,-300(s0)
	.loc 1 190 31
	lw	a5,-312(s0)
	.loc 1 190 55
	srli	a2,a5,6
	slli	a4,a5,26
	add	a4,a4,a2
	.loc 1 190 83
	lw	a5,-312(s0)
	.loc 1 190 108
	srli	a2,a5,11
	slli	a5,a5,21
	add	a5,a5,a2
	.loc 1 190 77
	xor	a4,a4,a5
	.loc 1 190 137
	lw	a5,-312(s0)
	.loc 1 190 162
	srli	a2,a5,25
	slli	a5,a5,7
	add	a5,a5,a2
	.loc 1 190 131
	xor	a5,a4,a5
	.loc 1 190 24
	add	a4,a3,a5
	.loc 1 190 190
	lw	a3,-304(s0)
	.loc 1 190 198
	lw	a2,-312(s0)
	.loc 1 190 206
	lw	a1,-308(s0)
	.loc 1 190 213
	lw	a5,-304(s0)
	.loc 1 190 210
	xor	a5,a1,a5
	.loc 1 190 202
	and	a5,a2,a5
	.loc 1 190 194
	xor	a5,a3,a5
	.loc 1 190 186
	add	a4,a4,a5
	.loc 1 190 226
	lw	a5,-20(s0)
	addi	a5,a5,3
	.loc 1 190 223
	lui	a3,%hi(K)
	addi	a3,a3,%lo(K)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 190 220
	add	a4,a4,a5
	.loc 1 190 237
	lw	a5,-20(s0)
	addi	a3,a5,3
	.loc 1 190 234
	addi	a5,s0,-284
	slli	a3,a3,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 190 17
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 190 256
	lw	a5,-296(s0)
	.loc 1 190 280
	srli	a3,a5,2
	slli	a4,a5,30
	add	a4,a4,a3
	.loc 1 190 308
	lw	a5,-296(s0)
	.loc 1 190 333
	srli	a3,a5,13
	slli	a5,a5,19
	add	a5,a5,a3
	.loc 1 190 302
	xor	a4,a4,a5
	.loc 1 190 362
	lw	a5,-296(s0)
	.loc 1 190 387
	srli	a3,a5,22
	slli	a5,a5,10
	add	a5,a5,a3
	.loc 1 190 356
	xor	a4,a4,a5
	.loc 1 190 416
	lw	a3,-296(s0)
	.loc 1 190 423
	lw	a5,-292(s0)
	.loc 1 190 420
	and	a3,a3,a5
	.loc 1 190 432
	lw	a2,-288(s0)
	.loc 1 190 440
	lw	a1,-296(s0)
	.loc 1 190 447
	lw	a5,-292(s0)
	.loc 1 190 444
	or	a5,a1,a5
	.loc 1 190 436
	and	a5,a2,a5
	.loc 1 190 428
	or	a5,a3,a5
	.loc 1 190 249
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 190 456
	lw	a4,-316(s0)
	.loc 1 190 460
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-316(s0)
	.loc 1 190 483
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 1 190 475
	sw	a5,-300(s0)
	.loc 1 191 20
	lw	a3,-304(s0)
	.loc 1 191 31
	lw	a5,-316(s0)
	.loc 1 191 55
	srli	a2,a5,6
	slli	a4,a5,26
	add	a4,a4,a2
	.loc 1 191 83
	lw	a5,-316(s0)
	.loc 1 191 108
	srli	a2,a5,11
	slli	a5,a5,21
	add	a5,a5,a2
	.loc 1 191 77
	xor	a4,a4,a5
	.loc 1 191 137
	lw	a5,-316(s0)
	.loc 1 191 162
	srli	a2,a5,25
	slli	a5,a5,7
	add	a5,a5,a2
	.loc 1 191 131
	xor	a5,a4,a5
	.loc 1 191 24
	add	a4,a3,a5
	.loc 1 191 190
	lw	a3,-308(s0)
	.loc 1 191 198
	lw	a2,-316(s0)
	.loc 1 191 206
	lw	a1,-312(s0)
	.loc 1 191 213
	lw	a5,-308(s0)
	.loc 1 191 210
	xor	a5,a1,a5
	.loc 1 191 202
	and	a5,a2,a5
	.loc 1 191 194
	xor	a5,a3,a5
	.loc 1 191 186
	add	a4,a4,a5
	.loc 1 191 226
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 191 223
	lui	a3,%hi(K)
	addi	a3,a3,%lo(K)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 191 220
	add	a4,a4,a5
	.loc 1 191 237
	lw	a5,-20(s0)
	addi	a3,a5,4
	.loc 1 191 234
	addi	a5,s0,-284
	slli	a3,a3,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 191 17
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 191 256
	lw	a5,-300(s0)
	.loc 1 191 280
	srli	a3,a5,2
	slli	a4,a5,30
	add	a4,a4,a3
	.loc 1 191 308
	lw	a5,-300(s0)
	.loc 1 191 333
	srli	a3,a5,13
	slli	a5,a5,19
	add	a5,a5,a3
	.loc 1 191 302
	xor	a4,a4,a5
	.loc 1 191 362
	lw	a5,-300(s0)
	.loc 1 191 387
	srli	a3,a5,22
	slli	a5,a5,10
	add	a5,a5,a3
	.loc 1 191 356
	xor	a4,a4,a5
	.loc 1 191 416
	lw	a3,-300(s0)
	.loc 1 191 423
	lw	a5,-296(s0)
	.loc 1 191 420
	and	a3,a3,a5
	.loc 1 191 432
	lw	a2,-292(s0)
	.loc 1 191 440
	lw	a1,-300(s0)
	.loc 1 191 447
	lw	a5,-296(s0)
	.loc 1 191 444
	or	a5,a1,a5
	.loc 1 191 436
	and	a5,a2,a5
	.loc 1 191 428
	or	a5,a3,a5
	.loc 1 191 249
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 191 456
	lw	a4,-288(s0)
	.loc 1 191 460
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-288(s0)
	.loc 1 191 483
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 1 191 475
	sw	a5,-304(s0)
	.loc 1 192 20
	lw	a3,-308(s0)
	.loc 1 192 31
	lw	a5,-288(s0)
	.loc 1 192 55
	srli	a2,a5,6
	slli	a4,a5,26
	add	a4,a4,a2
	.loc 1 192 83
	lw	a5,-288(s0)
	.loc 1 192 108
	srli	a2,a5,11
	slli	a5,a5,21
	add	a5,a5,a2
	.loc 1 192 77
	xor	a4,a4,a5
	.loc 1 192 137
	lw	a5,-288(s0)
	.loc 1 192 162
	srli	a2,a5,25
	slli	a5,a5,7
	add	a5,a5,a2
	.loc 1 192 131
	xor	a5,a4,a5
	.loc 1 192 24
	add	a4,a3,a5
	.loc 1 192 190
	lw	a3,-312(s0)
	.loc 1 192 198
	lw	a2,-288(s0)
	.loc 1 192 206
	lw	a1,-316(s0)
	.loc 1 192 213
	lw	a5,-312(s0)
	.loc 1 192 210
	xor	a5,a1,a5
	.loc 1 192 202
	and	a5,a2,a5
	.loc 1 192 194
	xor	a5,a3,a5
	.loc 1 192 186
	add	a4,a4,a5
	.loc 1 192 226
	lw	a5,-20(s0)
	addi	a5,a5,5
	.loc 1 192 223
	lui	a3,%hi(K)
	addi	a3,a3,%lo(K)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 192 220
	add	a4,a4,a5
	.loc 1 192 237
	lw	a5,-20(s0)
	addi	a3,a5,5
	.loc 1 192 234
	addi	a5,s0,-284
	slli	a3,a3,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 192 17
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 192 256
	lw	a5,-304(s0)
	.loc 1 192 280
	srli	a3,a5,2
	slli	a4,a5,30
	add	a4,a4,a3
	.loc 1 192 308
	lw	a5,-304(s0)
	.loc 1 192 333
	srli	a3,a5,13
	slli	a5,a5,19
	add	a5,a5,a3
	.loc 1 192 302
	xor	a4,a4,a5
	.loc 1 192 362
	lw	a5,-304(s0)
	.loc 1 192 387
	srli	a3,a5,22
	slli	a5,a5,10
	add	a5,a5,a3
	.loc 1 192 356
	xor	a4,a4,a5
	.loc 1 192 416
	lw	a3,-304(s0)
	.loc 1 192 423
	lw	a5,-300(s0)
	.loc 1 192 420
	and	a3,a3,a5
	.loc 1 192 432
	lw	a2,-296(s0)
	.loc 1 192 440
	lw	a1,-304(s0)
	.loc 1 192 447
	lw	a5,-300(s0)
	.loc 1 192 444
	or	a5,a1,a5
	.loc 1 192 436
	and	a5,a2,a5
	.loc 1 192 428
	or	a5,a3,a5
	.loc 1 192 249
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 192 456
	lw	a4,-292(s0)
	.loc 1 192 460
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-292(s0)
	.loc 1 192 483
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 1 192 475
	sw	a5,-308(s0)
	.loc 1 193 20
	lw	a3,-312(s0)
	.loc 1 193 31
	lw	a5,-292(s0)
	.loc 1 193 55
	srli	a2,a5,6
	slli	a4,a5,26
	add	a4,a4,a2
	.loc 1 193 83
	lw	a5,-292(s0)
	.loc 1 193 108
	srli	a2,a5,11
	slli	a5,a5,21
	add	a5,a5,a2
	.loc 1 193 77
	xor	a4,a4,a5
	.loc 1 193 137
	lw	a5,-292(s0)
	.loc 1 193 162
	srli	a2,a5,25
	slli	a5,a5,7
	add	a5,a5,a2
	.loc 1 193 131
	xor	a5,a4,a5
	.loc 1 193 24
	add	a4,a3,a5
	.loc 1 193 190
	lw	a3,-316(s0)
	.loc 1 193 198
	lw	a2,-292(s0)
	.loc 1 193 206
	lw	a1,-288(s0)
	.loc 1 193 213
	lw	a5,-316(s0)
	.loc 1 193 210
	xor	a5,a1,a5
	.loc 1 193 202
	and	a5,a2,a5
	.loc 1 193 194
	xor	a5,a3,a5
	.loc 1 193 186
	add	a4,a4,a5
	.loc 1 193 226
	lw	a5,-20(s0)
	addi	a5,a5,6
	.loc 1 193 223
	lui	a3,%hi(K)
	addi	a3,a3,%lo(K)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 193 220
	add	a4,a4,a5
	.loc 1 193 237
	lw	a5,-20(s0)
	addi	a3,a5,6
	.loc 1 193 234
	addi	a5,s0,-284
	slli	a3,a3,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 193 17
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 193 256
	lw	a5,-308(s0)
	.loc 1 193 280
	srli	a3,a5,2
	slli	a4,a5,30
	add	a4,a4,a3
	.loc 1 193 308
	lw	a5,-308(s0)
	.loc 1 193 333
	srli	a3,a5,13
	slli	a5,a5,19
	add	a5,a5,a3
	.loc 1 193 302
	xor	a4,a4,a5
	.loc 1 193 362
	lw	a5,-308(s0)
	.loc 1 193 387
	srli	a3,a5,22
	slli	a5,a5,10
	add	a5,a5,a3
	.loc 1 193 356
	xor	a4,a4,a5
	.loc 1 193 416
	lw	a3,-308(s0)
	.loc 1 193 423
	lw	a5,-304(s0)
	.loc 1 193 420
	and	a3,a3,a5
	.loc 1 193 432
	lw	a2,-300(s0)
	.loc 1 193 440
	lw	a1,-308(s0)
	.loc 1 193 447
	lw	a5,-304(s0)
	.loc 1 193 444
	or	a5,a1,a5
	.loc 1 193 436
	and	a5,a2,a5
	.loc 1 193 428
	or	a5,a3,a5
	.loc 1 193 249
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 193 456
	lw	a4,-296(s0)
	.loc 1 193 460
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-296(s0)
	.loc 1 193 483
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 1 193 475
	sw	a5,-312(s0)
	.loc 1 194 20
	lw	a3,-316(s0)
	.loc 1 194 31
	lw	a5,-296(s0)
	.loc 1 194 55
	srli	a2,a5,6
	slli	a4,a5,26
	add	a4,a4,a2
	.loc 1 194 83
	lw	a5,-296(s0)
	.loc 1 194 108
	srli	a2,a5,11
	slli	a5,a5,21
	add	a5,a5,a2
	.loc 1 194 77
	xor	a4,a4,a5
	.loc 1 194 137
	lw	a5,-296(s0)
	.loc 1 194 162
	srli	a2,a5,25
	slli	a5,a5,7
	add	a5,a5,a2
	.loc 1 194 131
	xor	a5,a4,a5
	.loc 1 194 24
	add	a4,a3,a5
	.loc 1 194 190
	lw	a3,-288(s0)
	.loc 1 194 198
	lw	a2,-296(s0)
	.loc 1 194 206
	lw	a1,-292(s0)
	.loc 1 194 213
	lw	a5,-288(s0)
	.loc 1 194 210
	xor	a5,a1,a5
	.loc 1 194 202
	and	a5,a2,a5
	.loc 1 194 194
	xor	a5,a3,a5
	.loc 1 194 186
	add	a4,a4,a5
	.loc 1 194 226
	lw	a5,-20(s0)
	addi	a5,a5,7
	.loc 1 194 223
	lui	a3,%hi(K)
	addi	a3,a3,%lo(K)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 194 220
	add	a4,a4,a5
	.loc 1 194 237
	lw	a5,-20(s0)
	addi	a3,a5,7
	.loc 1 194 234
	addi	a5,s0,-284
	slli	a3,a3,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 194 17
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 194 256
	lw	a5,-312(s0)
	.loc 1 194 280
	srli	a3,a5,2
	slli	a4,a5,30
	add	a4,a4,a3
	.loc 1 194 308
	lw	a5,-312(s0)
	.loc 1 194 333
	srli	a3,a5,13
	slli	a5,a5,19
	add	a5,a5,a3
	.loc 1 194 302
	xor	a4,a4,a5
	.loc 1 194 362
	lw	a5,-312(s0)
	.loc 1 194 387
	srli	a3,a5,22
	slli	a5,a5,10
	add	a5,a5,a3
	.loc 1 194 356
	xor	a4,a4,a5
	.loc 1 194 416
	lw	a3,-312(s0)
	.loc 1 194 423
	lw	a5,-308(s0)
	.loc 1 194 420
	and	a3,a3,a5
	.loc 1 194 432
	lw	a2,-304(s0)
	.loc 1 194 440
	lw	a1,-312(s0)
	.loc 1 194 447
	lw	a5,-308(s0)
	.loc 1 194 444
	or	a5,a1,a5
	.loc 1 194 436
	and	a5,a2,a5
	.loc 1 194 428
	or	a5,a3,a5
	.loc 1 194 249
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 194 456
	lw	a4,-300(s0)
	.loc 1 194 460
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-300(s0)
	.loc 1 194 483
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 1 194 475
	sw	a5,-316(s0)
	.loc 1 186 27 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
.L17:
	.loc 1 186 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,15
	bleu	a4,a5,.L18
	.loc 1 197 12
	li	a5,16
	sw	a5,-20(s0)
	.loc 1 197 5
	j	.L19
.L20:
	.loc 1 198 20
	lw	a3,-288(s0)
	.loc 1 198 31
	lw	a5,-300(s0)
	.loc 1 198 55
	srli	a2,a5,6
	slli	a4,a5,26
	add	a4,a4,a2
	.loc 1 198 83
	lw	a5,-300(s0)
	.loc 1 198 108
	srli	a2,a5,11
	slli	a5,a5,21
	add	a5,a5,a2
	.loc 1 198 77
	xor	a4,a4,a5
	.loc 1 198 137
	lw	a5,-300(s0)
	.loc 1 198 162
	srli	a2,a5,25
	slli	a5,a5,7
	add	a5,a5,a2
	.loc 1 198 131
	xor	a5,a4,a5
	.loc 1 198 24
	add	a4,a3,a5
	.loc 1 198 190
	lw	a3,-292(s0)
	.loc 1 198 198
	lw	a2,-300(s0)
	.loc 1 198 206
	lw	a1,-296(s0)
	.loc 1 198 213
	lw	a5,-292(s0)
	.loc 1 198 210
	xor	a5,a1,a5
	.loc 1 198 202
	and	a5,a2,a5
	.loc 1 198 194
	xor	a5,a3,a5
	.loc 1 198 186
	add	a4,a4,a5
	.loc 1 198 223
	lui	a5,%hi(K)
	addi	a3,a5,%lo(K)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 198 220
	add	a3,a4,a5
	.loc 1 198 258
	lw	a5,-20(s0)
	addi	a4,a5,-2
	.loc 1 198 251
	addi	a5,s0,-284
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 198 284
	srli	a2,a5,17
	slli	a4,a5,15
	add	a4,a4,a2
	.loc 1 198 328
	lw	a5,-20(s0)
	addi	a2,a5,-2
	.loc 1 198 321
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 198 354
	srli	a2,a5,19
	slli	a5,a5,13
	add	a5,a5,a2
	.loc 1 198 315
	xor	a4,a4,a5
	.loc 1 198 397
	lw	a5,-20(s0)
	addi	a2,a5,-2
	.loc 1 198 390
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 198 416
	srli	a5,a5,10
	.loc 1 198 385
	xor	a4,a4,a5
	.loc 1 198 434
	lw	a5,-20(s0)
	addi	a2,a5,-7
	.loc 1 198 427
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 198 424
	add	a2,a4,a5
	.loc 1 198 453
	lw	a5,-20(s0)
	addi	a4,a5,-15
	.loc 1 198 446
	addi	a5,s0,-284
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 198 479
	srli	a1,a5,7
	slli	a4,a5,25
	add	a4,a4,a1
	.loc 1 198 523
	lw	a5,-20(s0)
	addi	a1,a5,-15
	.loc 1 198 516
	addi	a5,s0,-284
	slli	a1,a1,2
	add	a5,a1,a5
	lw	a5,0(a5)
	.loc 1 198 550
	srli	a1,a5,18
	slli	a5,a5,14
	add	a5,a5,a1
	.loc 1 198 510
	xor	a4,a4,a5
	.loc 1 198 594
	lw	a5,-20(s0)
	addi	a1,a5,-15
	.loc 1 198 587
	addi	a5,s0,-284
	slli	a1,a1,2
	add	a5,a1,a5
	lw	a5,0(a5)
	.loc 1 198 614
	srli	a5,a5,3
	.loc 1 198 582
	xor	a5,a4,a5
	.loc 1 198 439
	add	a4,a2,a5
	.loc 1 198 631
	lw	a5,-20(s0)
	addi	a2,a5,-16
	.loc 1 198 624
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 198 621
	add	a4,a4,a5
	.loc 1 198 244
	lw	a2,-20(s0)
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	sw	a4,0(a5)
	.loc 1 198 236
	lw	a4,-20(s0)
	addi	a5,s0,-284
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 198 17
	add	a5,a3,a5
	sw	a5,-24(s0)
	.loc 1 198 653
	lw	a5,-316(s0)
	.loc 1 198 677
	srli	a3,a5,2
	slli	a4,a5,30
	add	a4,a4,a3
	.loc 1 198 705
	lw	a5,-316(s0)
	.loc 1 198 730
	srli	a3,a5,13
	slli	a5,a5,19
	add	a5,a5,a3
	.loc 1 198 699
	xor	a4,a4,a5
	.loc 1 198 759
	lw	a5,-316(s0)
	.loc 1 198 784
	srli	a3,a5,22
	slli	a5,a5,10
	add	a5,a5,a3
	.loc 1 198 753
	xor	a4,a4,a5
	.loc 1 198 813
	lw	a3,-316(s0)
	.loc 1 198 820
	lw	a5,-312(s0)
	.loc 1 198 817
	and	a3,a3,a5
	.loc 1 198 829
	lw	a2,-308(s0)
	.loc 1 198 837
	lw	a1,-316(s0)
	.loc 1 198 844
	lw	a5,-312(s0)
	.loc 1 198 841
	or	a5,a1,a5
	.loc 1 198 833
	and	a5,a2,a5
	.loc 1 198 825
	or	a5,a3,a5
	.loc 1 198 646
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 198 853
	lw	a4,-304(s0)
	.loc 1 198 857
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-304(s0)
	.loc 1 198 880
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 1 198 872
	sw	a5,-288(s0)
	.loc 1 199 20
	lw	a3,-292(s0)
	.loc 1 199 31
	lw	a5,-304(s0)
	.loc 1 199 55
	srli	a2,a5,6
	slli	a4,a5,26
	add	a4,a4,a2
	.loc 1 199 83
	lw	a5,-304(s0)
	.loc 1 199 108
	srli	a2,a5,11
	slli	a5,a5,21
	add	a5,a5,a2
	.loc 1 199 77
	xor	a4,a4,a5
	.loc 1 199 137
	lw	a5,-304(s0)
	.loc 1 199 162
	srli	a2,a5,25
	slli	a5,a5,7
	add	a5,a5,a2
	.loc 1 199 131
	xor	a5,a4,a5
	.loc 1 199 24
	add	a4,a3,a5
	.loc 1 199 190
	lw	a3,-296(s0)
	.loc 1 199 198
	lw	a2,-304(s0)
	.loc 1 199 206
	lw	a1,-300(s0)
	.loc 1 199 213
	lw	a5,-296(s0)
	.loc 1 199 210
	xor	a5,a1,a5
	.loc 1 199 202
	and	a5,a2,a5
	.loc 1 199 194
	xor	a5,a3,a5
	.loc 1 199 186
	add	a4,a4,a5
	.loc 1 199 226
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 1 199 223
	lui	a3,%hi(K)
	addi	a3,a3,%lo(K)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 199 220
	add	a3,a4,a5
	.loc 1 199 258
	lw	a5,-20(s0)
	addi	a4,a5,-1
	.loc 1 199 251
	addi	a5,s0,-284
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 199 284
	srli	a2,a5,17
	slli	a4,a5,15
	add	a4,a4,a2
	.loc 1 199 328
	lw	a5,-20(s0)
	addi	a2,a5,-1
	.loc 1 199 321
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 199 354
	srli	a2,a5,19
	slli	a5,a5,13
	add	a5,a5,a2
	.loc 1 199 315
	xor	a4,a4,a5
	.loc 1 199 397
	lw	a5,-20(s0)
	addi	a2,a5,-1
	.loc 1 199 390
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 199 416
	srli	a5,a5,10
	.loc 1 199 385
	xor	a4,a4,a5
	.loc 1 199 434
	lw	a5,-20(s0)
	addi	a2,a5,-6
	.loc 1 199 427
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 199 424
	add	a2,a4,a5
	.loc 1 199 453
	lw	a5,-20(s0)
	addi	a4,a5,-14
	.loc 1 199 446
	addi	a5,s0,-284
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 199 479
	srli	a1,a5,7
	slli	a4,a5,25
	add	a4,a4,a1
	.loc 1 199 523
	lw	a5,-20(s0)
	addi	a1,a5,-14
	.loc 1 199 516
	addi	a5,s0,-284
	slli	a1,a1,2
	add	a5,a1,a5
	lw	a5,0(a5)
	.loc 1 199 550
	srli	a1,a5,18
	slli	a5,a5,14
	add	a5,a5,a1
	.loc 1 199 510
	xor	a4,a4,a5
	.loc 1 199 594
	lw	a5,-20(s0)
	addi	a1,a5,-14
	.loc 1 199 587
	addi	a5,s0,-284
	slli	a1,a1,2
	add	a5,a1,a5
	lw	a5,0(a5)
	.loc 1 199 614
	srli	a5,a5,3
	.loc 1 199 582
	xor	a5,a4,a5
	.loc 1 199 439
	add	a2,a2,a5
	.loc 1 199 631
	lw	a5,-20(s0)
	addi	a4,a5,-15
	.loc 1 199 624
	addi	a5,s0,-284
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 199 239
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 1 199 621
	add	a2,a2,a4
	.loc 1 199 244
	addi	a4,s0,-284
	slli	a1,a5,2
	add	a4,a1,a4
	sw	a2,0(a4)
	.loc 1 199 236
	addi	a4,s0,-284
	slli	a5,a5,2
	add	a5,a5,a4
	lw	a5,0(a5)
	.loc 1 199 17
	add	a5,a3,a5
	sw	a5,-24(s0)
	.loc 1 199 653
	lw	a5,-288(s0)
	.loc 1 199 677
	srli	a3,a5,2
	slli	a4,a5,30
	add	a4,a4,a3
	.loc 1 199 705
	lw	a5,-288(s0)
	.loc 1 199 730
	srli	a3,a5,13
	slli	a5,a5,19
	add	a5,a5,a3
	.loc 1 199 699
	xor	a4,a4,a5
	.loc 1 199 759
	lw	a5,-288(s0)
	.loc 1 199 784
	srli	a3,a5,22
	slli	a5,a5,10
	add	a5,a5,a3
	.loc 1 199 753
	xor	a4,a4,a5
	.loc 1 199 813
	lw	a3,-288(s0)
	.loc 1 199 820
	lw	a5,-316(s0)
	.loc 1 199 817
	and	a3,a3,a5
	.loc 1 199 829
	lw	a2,-312(s0)
	.loc 1 199 837
	lw	a1,-288(s0)
	.loc 1 199 844
	lw	a5,-316(s0)
	.loc 1 199 841
	or	a5,a1,a5
	.loc 1 199 833
	and	a5,a2,a5
	.loc 1 199 825
	or	a5,a3,a5
	.loc 1 199 646
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 199 853
	lw	a4,-308(s0)
	.loc 1 199 857
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-308(s0)
	.loc 1 199 880
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 1 199 872
	sw	a5,-292(s0)
	.loc 1 200 20
	lw	a3,-296(s0)
	.loc 1 200 31
	lw	a5,-308(s0)
	.loc 1 200 55
	srli	a2,a5,6
	slli	a4,a5,26
	add	a4,a4,a2
	.loc 1 200 83
	lw	a5,-308(s0)
	.loc 1 200 108
	srli	a2,a5,11
	slli	a5,a5,21
	add	a5,a5,a2
	.loc 1 200 77
	xor	a4,a4,a5
	.loc 1 200 137
	lw	a5,-308(s0)
	.loc 1 200 162
	srli	a2,a5,25
	slli	a5,a5,7
	add	a5,a5,a2
	.loc 1 200 131
	xor	a5,a4,a5
	.loc 1 200 24
	add	a4,a3,a5
	.loc 1 200 190
	lw	a3,-300(s0)
	.loc 1 200 198
	lw	a2,-308(s0)
	.loc 1 200 206
	lw	a1,-304(s0)
	.loc 1 200 213
	lw	a5,-300(s0)
	.loc 1 200 210
	xor	a5,a1,a5
	.loc 1 200 202
	and	a5,a2,a5
	.loc 1 200 194
	xor	a5,a3,a5
	.loc 1 200 186
	add	a4,a4,a5
	.loc 1 200 226
	lw	a5,-20(s0)
	addi	a5,a5,2
	.loc 1 200 223
	lui	a3,%hi(K)
	addi	a3,a3,%lo(K)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 200 220
	add	a3,a4,a5
	.loc 1 200 251
	lw	a4,-20(s0)
	addi	a5,s0,-284
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 200 284
	srli	a2,a5,17
	slli	a4,a5,15
	add	a4,a4,a2
	.loc 1 200 321
	lw	a2,-20(s0)
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 200 354
	srli	a2,a5,19
	slli	a5,a5,13
	add	a5,a5,a2
	.loc 1 200 315
	xor	a4,a4,a5
	.loc 1 200 390
	lw	a2,-20(s0)
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 200 416
	srli	a5,a5,10
	.loc 1 200 385
	xor	a4,a4,a5
	.loc 1 200 434
	lw	a5,-20(s0)
	addi	a2,a5,-5
	.loc 1 200 427
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 200 424
	add	a2,a4,a5
	.loc 1 200 453
	lw	a5,-20(s0)
	addi	a4,a5,-13
	.loc 1 200 446
	addi	a5,s0,-284
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 200 479
	srli	a1,a5,7
	slli	a4,a5,25
	add	a4,a4,a1
	.loc 1 200 523
	lw	a5,-20(s0)
	addi	a1,a5,-13
	.loc 1 200 516
	addi	a5,s0,-284
	slli	a1,a1,2
	add	a5,a1,a5
	lw	a5,0(a5)
	.loc 1 200 550
	srli	a1,a5,18
	slli	a5,a5,14
	add	a5,a5,a1
	.loc 1 200 510
	xor	a4,a4,a5
	.loc 1 200 594
	lw	a5,-20(s0)
	addi	a1,a5,-13
	.loc 1 200 587
	addi	a5,s0,-284
	slli	a1,a1,2
	add	a5,a1,a5
	lw	a5,0(a5)
	.loc 1 200 614
	srli	a5,a5,3
	.loc 1 200 582
	xor	a5,a4,a5
	.loc 1 200 439
	add	a2,a2,a5
	.loc 1 200 631
	lw	a5,-20(s0)
	addi	a4,a5,-14
	.loc 1 200 624
	addi	a5,s0,-284
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 200 239
	lw	a5,-20(s0)
	addi	a5,a5,2
	.loc 1 200 621
	add	a2,a2,a4
	.loc 1 200 244
	addi	a4,s0,-284
	slli	a1,a5,2
	add	a4,a1,a4
	sw	a2,0(a4)
	.loc 1 200 236
	addi	a4,s0,-284
	slli	a5,a5,2
	add	a5,a5,a4
	lw	a5,0(a5)
	.loc 1 200 17
	add	a5,a3,a5
	sw	a5,-24(s0)
	.loc 1 200 653
	lw	a5,-292(s0)
	.loc 1 200 677
	srli	a3,a5,2
	slli	a4,a5,30
	add	a4,a4,a3
	.loc 1 200 705
	lw	a5,-292(s0)
	.loc 1 200 730
	srli	a3,a5,13
	slli	a5,a5,19
	add	a5,a5,a3
	.loc 1 200 699
	xor	a4,a4,a5
	.loc 1 200 759
	lw	a5,-292(s0)
	.loc 1 200 784
	srli	a3,a5,22
	slli	a5,a5,10
	add	a5,a5,a3
	.loc 1 200 753
	xor	a4,a4,a5
	.loc 1 200 813
	lw	a3,-292(s0)
	.loc 1 200 820
	lw	a5,-288(s0)
	.loc 1 200 817
	and	a3,a3,a5
	.loc 1 200 829
	lw	a2,-316(s0)
	.loc 1 200 837
	lw	a1,-292(s0)
	.loc 1 200 844
	lw	a5,-288(s0)
	.loc 1 200 841
	or	a5,a1,a5
	.loc 1 200 833
	and	a5,a2,a5
	.loc 1 200 825
	or	a5,a3,a5
	.loc 1 200 646
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 200 853
	lw	a4,-312(s0)
	.loc 1 200 857
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-312(s0)
	.loc 1 200 880
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 1 200 872
	sw	a5,-296(s0)
	.loc 1 201 20
	lw	a3,-300(s0)
	.loc 1 201 31
	lw	a5,-312(s0)
	.loc 1 201 55
	srli	a2,a5,6
	slli	a4,a5,26
	add	a4,a4,a2
	.loc 1 201 83
	lw	a5,-312(s0)
	.loc 1 201 108
	srli	a2,a5,11
	slli	a5,a5,21
	add	a5,a5,a2
	.loc 1 201 77
	xor	a4,a4,a5
	.loc 1 201 137
	lw	a5,-312(s0)
	.loc 1 201 162
	srli	a2,a5,25
	slli	a5,a5,7
	add	a5,a5,a2
	.loc 1 201 131
	xor	a5,a4,a5
	.loc 1 201 24
	add	a4,a3,a5
	.loc 1 201 190
	lw	a3,-304(s0)
	.loc 1 201 198
	lw	a2,-312(s0)
	.loc 1 201 206
	lw	a1,-308(s0)
	.loc 1 201 213
	lw	a5,-304(s0)
	.loc 1 201 210
	xor	a5,a1,a5
	.loc 1 201 202
	and	a5,a2,a5
	.loc 1 201 194
	xor	a5,a3,a5
	.loc 1 201 186
	add	a4,a4,a5
	.loc 1 201 226
	lw	a5,-20(s0)
	addi	a5,a5,3
	.loc 1 201 223
	lui	a3,%hi(K)
	addi	a3,a3,%lo(K)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 201 220
	add	a3,a4,a5
	.loc 1 201 258
	lw	a5,-20(s0)
	addi	a4,a5,1
	.loc 1 201 251
	addi	a5,s0,-284
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 201 284
	srli	a2,a5,17
	slli	a4,a5,15
	add	a4,a4,a2
	.loc 1 201 328
	lw	a5,-20(s0)
	addi	a2,a5,1
	.loc 1 201 321
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 201 354
	srli	a2,a5,19
	slli	a5,a5,13
	add	a5,a5,a2
	.loc 1 201 315
	xor	a4,a4,a5
	.loc 1 201 397
	lw	a5,-20(s0)
	addi	a2,a5,1
	.loc 1 201 390
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 201 416
	srli	a5,a5,10
	.loc 1 201 385
	xor	a4,a4,a5
	.loc 1 201 434
	lw	a5,-20(s0)
	addi	a2,a5,-4
	.loc 1 201 427
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 201 424
	add	a2,a4,a5
	.loc 1 201 453
	lw	a5,-20(s0)
	addi	a4,a5,-12
	.loc 1 201 446
	addi	a5,s0,-284
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 201 479
	srli	a1,a5,7
	slli	a4,a5,25
	add	a4,a4,a1
	.loc 1 201 523
	lw	a5,-20(s0)
	addi	a1,a5,-12
	.loc 1 201 516
	addi	a5,s0,-284
	slli	a1,a1,2
	add	a5,a1,a5
	lw	a5,0(a5)
	.loc 1 201 550
	srli	a1,a5,18
	slli	a5,a5,14
	add	a5,a5,a1
	.loc 1 201 510
	xor	a4,a4,a5
	.loc 1 201 594
	lw	a5,-20(s0)
	addi	a1,a5,-12
	.loc 1 201 587
	addi	a5,s0,-284
	slli	a1,a1,2
	add	a5,a1,a5
	lw	a5,0(a5)
	.loc 1 201 614
	srli	a5,a5,3
	.loc 1 201 582
	xor	a5,a4,a5
	.loc 1 201 439
	add	a2,a2,a5
	.loc 1 201 631
	lw	a5,-20(s0)
	addi	a4,a5,-13
	.loc 1 201 624
	addi	a5,s0,-284
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 201 239
	lw	a5,-20(s0)
	addi	a5,a5,3
	.loc 1 201 621
	add	a2,a2,a4
	.loc 1 201 244
	addi	a4,s0,-284
	slli	a1,a5,2
	add	a4,a1,a4
	sw	a2,0(a4)
	.loc 1 201 236
	addi	a4,s0,-284
	slli	a5,a5,2
	add	a5,a5,a4
	lw	a5,0(a5)
	.loc 1 201 17
	add	a5,a3,a5
	sw	a5,-24(s0)
	.loc 1 201 653
	lw	a5,-296(s0)
	.loc 1 201 677
	srli	a3,a5,2
	slli	a4,a5,30
	add	a4,a4,a3
	.loc 1 201 705
	lw	a5,-296(s0)
	.loc 1 201 730
	srli	a3,a5,13
	slli	a5,a5,19
	add	a5,a5,a3
	.loc 1 201 699
	xor	a4,a4,a5
	.loc 1 201 759
	lw	a5,-296(s0)
	.loc 1 201 784
	srli	a3,a5,22
	slli	a5,a5,10
	add	a5,a5,a3
	.loc 1 201 753
	xor	a4,a4,a5
	.loc 1 201 813
	lw	a3,-296(s0)
	.loc 1 201 820
	lw	a5,-292(s0)
	.loc 1 201 817
	and	a3,a3,a5
	.loc 1 201 829
	lw	a2,-288(s0)
	.loc 1 201 837
	lw	a1,-296(s0)
	.loc 1 201 844
	lw	a5,-292(s0)
	.loc 1 201 841
	or	a5,a1,a5
	.loc 1 201 833
	and	a5,a2,a5
	.loc 1 201 825
	or	a5,a3,a5
	.loc 1 201 646
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 201 853
	lw	a4,-316(s0)
	.loc 1 201 857
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-316(s0)
	.loc 1 201 880
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 1 201 872
	sw	a5,-300(s0)
	.loc 1 202 20
	lw	a3,-304(s0)
	.loc 1 202 31
	lw	a5,-316(s0)
	.loc 1 202 55
	srli	a2,a5,6
	slli	a4,a5,26
	add	a4,a4,a2
	.loc 1 202 83
	lw	a5,-316(s0)
	.loc 1 202 108
	srli	a2,a5,11
	slli	a5,a5,21
	add	a5,a5,a2
	.loc 1 202 77
	xor	a4,a4,a5
	.loc 1 202 137
	lw	a5,-316(s0)
	.loc 1 202 162
	srli	a2,a5,25
	slli	a5,a5,7
	add	a5,a5,a2
	.loc 1 202 131
	xor	a5,a4,a5
	.loc 1 202 24
	add	a4,a3,a5
	.loc 1 202 190
	lw	a3,-308(s0)
	.loc 1 202 198
	lw	a2,-316(s0)
	.loc 1 202 206
	lw	a1,-312(s0)
	.loc 1 202 213
	lw	a5,-308(s0)
	.loc 1 202 210
	xor	a5,a1,a5
	.loc 1 202 202
	and	a5,a2,a5
	.loc 1 202 194
	xor	a5,a3,a5
	.loc 1 202 186
	add	a4,a4,a5
	.loc 1 202 226
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 202 223
	lui	a3,%hi(K)
	addi	a3,a3,%lo(K)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 202 220
	add	a3,a4,a5
	.loc 1 202 258
	lw	a5,-20(s0)
	addi	a4,a5,2
	.loc 1 202 251
	addi	a5,s0,-284
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 202 284
	srli	a2,a5,17
	slli	a4,a5,15
	add	a4,a4,a2
	.loc 1 202 328
	lw	a5,-20(s0)
	addi	a2,a5,2
	.loc 1 202 321
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 202 354
	srli	a2,a5,19
	slli	a5,a5,13
	add	a5,a5,a2
	.loc 1 202 315
	xor	a4,a4,a5
	.loc 1 202 397
	lw	a5,-20(s0)
	addi	a2,a5,2
	.loc 1 202 390
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 202 416
	srli	a5,a5,10
	.loc 1 202 385
	xor	a4,a4,a5
	.loc 1 202 434
	lw	a5,-20(s0)
	addi	a2,a5,-3
	.loc 1 202 427
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 202 424
	add	a2,a4,a5
	.loc 1 202 453
	lw	a5,-20(s0)
	addi	a4,a5,-11
	.loc 1 202 446
	addi	a5,s0,-284
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 202 479
	srli	a1,a5,7
	slli	a4,a5,25
	add	a4,a4,a1
	.loc 1 202 523
	lw	a5,-20(s0)
	addi	a1,a5,-11
	.loc 1 202 516
	addi	a5,s0,-284
	slli	a1,a1,2
	add	a5,a1,a5
	lw	a5,0(a5)
	.loc 1 202 550
	srli	a1,a5,18
	slli	a5,a5,14
	add	a5,a5,a1
	.loc 1 202 510
	xor	a4,a4,a5
	.loc 1 202 594
	lw	a5,-20(s0)
	addi	a1,a5,-11
	.loc 1 202 587
	addi	a5,s0,-284
	slli	a1,a1,2
	add	a5,a1,a5
	lw	a5,0(a5)
	.loc 1 202 614
	srli	a5,a5,3
	.loc 1 202 582
	xor	a5,a4,a5
	.loc 1 202 439
	add	a2,a2,a5
	.loc 1 202 631
	lw	a5,-20(s0)
	addi	a4,a5,-12
	.loc 1 202 624
	addi	a5,s0,-284
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 202 239
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 202 621
	add	a2,a2,a4
	.loc 1 202 244
	addi	a4,s0,-284
	slli	a1,a5,2
	add	a4,a1,a4
	sw	a2,0(a4)
	.loc 1 202 236
	addi	a4,s0,-284
	slli	a5,a5,2
	add	a5,a5,a4
	lw	a5,0(a5)
	.loc 1 202 17
	add	a5,a3,a5
	sw	a5,-24(s0)
	.loc 1 202 653
	lw	a5,-300(s0)
	.loc 1 202 677
	srli	a3,a5,2
	slli	a4,a5,30
	add	a4,a4,a3
	.loc 1 202 705
	lw	a5,-300(s0)
	.loc 1 202 730
	srli	a3,a5,13
	slli	a5,a5,19
	add	a5,a5,a3
	.loc 1 202 699
	xor	a4,a4,a5
	.loc 1 202 759
	lw	a5,-300(s0)
	.loc 1 202 784
	srli	a3,a5,22
	slli	a5,a5,10
	add	a5,a5,a3
	.loc 1 202 753
	xor	a4,a4,a5
	.loc 1 202 813
	lw	a3,-300(s0)
	.loc 1 202 820
	lw	a5,-296(s0)
	.loc 1 202 817
	and	a3,a3,a5
	.loc 1 202 829
	lw	a2,-292(s0)
	.loc 1 202 837
	lw	a1,-300(s0)
	.loc 1 202 844
	lw	a5,-296(s0)
	.loc 1 202 841
	or	a5,a1,a5
	.loc 1 202 833
	and	a5,a2,a5
	.loc 1 202 825
	or	a5,a3,a5
	.loc 1 202 646
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 202 853
	lw	a4,-288(s0)
	.loc 1 202 857
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-288(s0)
	.loc 1 202 880
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 1 202 872
	sw	a5,-304(s0)
	.loc 1 203 20
	lw	a3,-308(s0)
	.loc 1 203 31
	lw	a5,-288(s0)
	.loc 1 203 55
	srli	a2,a5,6
	slli	a4,a5,26
	add	a4,a4,a2
	.loc 1 203 83
	lw	a5,-288(s0)
	.loc 1 203 108
	srli	a2,a5,11
	slli	a5,a5,21
	add	a5,a5,a2
	.loc 1 203 77
	xor	a4,a4,a5
	.loc 1 203 137
	lw	a5,-288(s0)
	.loc 1 203 162
	srli	a2,a5,25
	slli	a5,a5,7
	add	a5,a5,a2
	.loc 1 203 131
	xor	a5,a4,a5
	.loc 1 203 24
	add	a4,a3,a5
	.loc 1 203 190
	lw	a3,-312(s0)
	.loc 1 203 198
	lw	a2,-288(s0)
	.loc 1 203 206
	lw	a1,-316(s0)
	.loc 1 203 213
	lw	a5,-312(s0)
	.loc 1 203 210
	xor	a5,a1,a5
	.loc 1 203 202
	and	a5,a2,a5
	.loc 1 203 194
	xor	a5,a3,a5
	.loc 1 203 186
	add	a4,a4,a5
	.loc 1 203 226
	lw	a5,-20(s0)
	addi	a5,a5,5
	.loc 1 203 223
	lui	a3,%hi(K)
	addi	a3,a3,%lo(K)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 203 220
	add	a3,a4,a5
	.loc 1 203 258
	lw	a5,-20(s0)
	addi	a4,a5,3
	.loc 1 203 251
	addi	a5,s0,-284
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 203 284
	srli	a2,a5,17
	slli	a4,a5,15
	add	a4,a4,a2
	.loc 1 203 328
	lw	a5,-20(s0)
	addi	a2,a5,3
	.loc 1 203 321
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 203 354
	srli	a2,a5,19
	slli	a5,a5,13
	add	a5,a5,a2
	.loc 1 203 315
	xor	a4,a4,a5
	.loc 1 203 397
	lw	a5,-20(s0)
	addi	a2,a5,3
	.loc 1 203 390
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 203 416
	srli	a5,a5,10
	.loc 1 203 385
	xor	a4,a4,a5
	.loc 1 203 434
	lw	a5,-20(s0)
	addi	a2,a5,-2
	.loc 1 203 427
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 203 424
	add	a2,a4,a5
	.loc 1 203 453
	lw	a5,-20(s0)
	addi	a4,a5,-10
	.loc 1 203 446
	addi	a5,s0,-284
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 203 479
	srli	a1,a5,7
	slli	a4,a5,25
	add	a4,a4,a1
	.loc 1 203 523
	lw	a5,-20(s0)
	addi	a1,a5,-10
	.loc 1 203 516
	addi	a5,s0,-284
	slli	a1,a1,2
	add	a5,a1,a5
	lw	a5,0(a5)
	.loc 1 203 550
	srli	a1,a5,18
	slli	a5,a5,14
	add	a5,a5,a1
	.loc 1 203 510
	xor	a4,a4,a5
	.loc 1 203 594
	lw	a5,-20(s0)
	addi	a1,a5,-10
	.loc 1 203 587
	addi	a5,s0,-284
	slli	a1,a1,2
	add	a5,a1,a5
	lw	a5,0(a5)
	.loc 1 203 614
	srli	a5,a5,3
	.loc 1 203 582
	xor	a5,a4,a5
	.loc 1 203 439
	add	a2,a2,a5
	.loc 1 203 631
	lw	a5,-20(s0)
	addi	a4,a5,-11
	.loc 1 203 624
	addi	a5,s0,-284
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 203 239
	lw	a5,-20(s0)
	addi	a5,a5,5
	.loc 1 203 621
	add	a2,a2,a4
	.loc 1 203 244
	addi	a4,s0,-284
	slli	a1,a5,2
	add	a4,a1,a4
	sw	a2,0(a4)
	.loc 1 203 236
	addi	a4,s0,-284
	slli	a5,a5,2
	add	a5,a5,a4
	lw	a5,0(a5)
	.loc 1 203 17
	add	a5,a3,a5
	sw	a5,-24(s0)
	.loc 1 203 653
	lw	a5,-304(s0)
	.loc 1 203 677
	srli	a3,a5,2
	slli	a4,a5,30
	add	a4,a4,a3
	.loc 1 203 705
	lw	a5,-304(s0)
	.loc 1 203 730
	srli	a3,a5,13
	slli	a5,a5,19
	add	a5,a5,a3
	.loc 1 203 699
	xor	a4,a4,a5
	.loc 1 203 759
	lw	a5,-304(s0)
	.loc 1 203 784
	srli	a3,a5,22
	slli	a5,a5,10
	add	a5,a5,a3
	.loc 1 203 753
	xor	a4,a4,a5
	.loc 1 203 813
	lw	a3,-304(s0)
	.loc 1 203 820
	lw	a5,-300(s0)
	.loc 1 203 817
	and	a3,a3,a5
	.loc 1 203 829
	lw	a2,-296(s0)
	.loc 1 203 837
	lw	a1,-304(s0)
	.loc 1 203 844
	lw	a5,-300(s0)
	.loc 1 203 841
	or	a5,a1,a5
	.loc 1 203 833
	and	a5,a2,a5
	.loc 1 203 825
	or	a5,a3,a5
	.loc 1 203 646
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 203 853
	lw	a4,-292(s0)
	.loc 1 203 857
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-292(s0)
	.loc 1 203 880
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 1 203 872
	sw	a5,-308(s0)
	.loc 1 204 20
	lw	a3,-312(s0)
	.loc 1 204 31
	lw	a5,-292(s0)
	.loc 1 204 55
	srli	a2,a5,6
	slli	a4,a5,26
	add	a4,a4,a2
	.loc 1 204 83
	lw	a5,-292(s0)
	.loc 1 204 108
	srli	a2,a5,11
	slli	a5,a5,21
	add	a5,a5,a2
	.loc 1 204 77
	xor	a4,a4,a5
	.loc 1 204 137
	lw	a5,-292(s0)
	.loc 1 204 162
	srli	a2,a5,25
	slli	a5,a5,7
	add	a5,a5,a2
	.loc 1 204 131
	xor	a5,a4,a5
	.loc 1 204 24
	add	a4,a3,a5
	.loc 1 204 190
	lw	a3,-316(s0)
	.loc 1 204 198
	lw	a2,-292(s0)
	.loc 1 204 206
	lw	a1,-288(s0)
	.loc 1 204 213
	lw	a5,-316(s0)
	.loc 1 204 210
	xor	a5,a1,a5
	.loc 1 204 202
	and	a5,a2,a5
	.loc 1 204 194
	xor	a5,a3,a5
	.loc 1 204 186
	add	a4,a4,a5
	.loc 1 204 226
	lw	a5,-20(s0)
	addi	a5,a5,6
	.loc 1 204 223
	lui	a3,%hi(K)
	addi	a3,a3,%lo(K)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 204 220
	add	a3,a4,a5
	.loc 1 204 258
	lw	a5,-20(s0)
	addi	a4,a5,4
	.loc 1 204 251
	addi	a5,s0,-284
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 204 284
	srli	a2,a5,17
	slli	a4,a5,15
	add	a4,a4,a2
	.loc 1 204 328
	lw	a5,-20(s0)
	addi	a2,a5,4
	.loc 1 204 321
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 204 354
	srli	a2,a5,19
	slli	a5,a5,13
	add	a5,a5,a2
	.loc 1 204 315
	xor	a4,a4,a5
	.loc 1 204 397
	lw	a5,-20(s0)
	addi	a2,a5,4
	.loc 1 204 390
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 204 416
	srli	a5,a5,10
	.loc 1 204 385
	xor	a4,a4,a5
	.loc 1 204 434
	lw	a5,-20(s0)
	addi	a2,a5,-1
	.loc 1 204 427
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 204 424
	add	a2,a4,a5
	.loc 1 204 453
	lw	a5,-20(s0)
	addi	a4,a5,-9
	.loc 1 204 446
	addi	a5,s0,-284
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 204 479
	srli	a1,a5,7
	slli	a4,a5,25
	add	a4,a4,a1
	.loc 1 204 523
	lw	a5,-20(s0)
	addi	a1,a5,-9
	.loc 1 204 516
	addi	a5,s0,-284
	slli	a1,a1,2
	add	a5,a1,a5
	lw	a5,0(a5)
	.loc 1 204 550
	srli	a1,a5,18
	slli	a5,a5,14
	add	a5,a5,a1
	.loc 1 204 510
	xor	a4,a4,a5
	.loc 1 204 594
	lw	a5,-20(s0)
	addi	a1,a5,-9
	.loc 1 204 587
	addi	a5,s0,-284
	slli	a1,a1,2
	add	a5,a1,a5
	lw	a5,0(a5)
	.loc 1 204 614
	srli	a5,a5,3
	.loc 1 204 582
	xor	a5,a4,a5
	.loc 1 204 439
	add	a2,a2,a5
	.loc 1 204 631
	lw	a5,-20(s0)
	addi	a4,a5,-10
	.loc 1 204 624
	addi	a5,s0,-284
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 204 239
	lw	a5,-20(s0)
	addi	a5,a5,6
	.loc 1 204 621
	add	a2,a2,a4
	.loc 1 204 244
	addi	a4,s0,-284
	slli	a1,a5,2
	add	a4,a1,a4
	sw	a2,0(a4)
	.loc 1 204 236
	addi	a4,s0,-284
	slli	a5,a5,2
	add	a5,a5,a4
	lw	a5,0(a5)
	.loc 1 204 17
	add	a5,a3,a5
	sw	a5,-24(s0)
	.loc 1 204 653
	lw	a5,-308(s0)
	.loc 1 204 677
	srli	a3,a5,2
	slli	a4,a5,30
	add	a4,a4,a3
	.loc 1 204 705
	lw	a5,-308(s0)
	.loc 1 204 730
	srli	a3,a5,13
	slli	a5,a5,19
	add	a5,a5,a3
	.loc 1 204 699
	xor	a4,a4,a5
	.loc 1 204 759
	lw	a5,-308(s0)
	.loc 1 204 784
	srli	a3,a5,22
	slli	a5,a5,10
	add	a5,a5,a3
	.loc 1 204 753
	xor	a4,a4,a5
	.loc 1 204 813
	lw	a3,-308(s0)
	.loc 1 204 820
	lw	a5,-304(s0)
	.loc 1 204 817
	and	a3,a3,a5
	.loc 1 204 829
	lw	a2,-300(s0)
	.loc 1 204 837
	lw	a1,-308(s0)
	.loc 1 204 844
	lw	a5,-304(s0)
	.loc 1 204 841
	or	a5,a1,a5
	.loc 1 204 833
	and	a5,a2,a5
	.loc 1 204 825
	or	a5,a3,a5
	.loc 1 204 646
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 204 853
	lw	a4,-296(s0)
	.loc 1 204 857
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-296(s0)
	.loc 1 204 880
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 1 204 872
	sw	a5,-312(s0)
	.loc 1 205 20
	lw	a3,-316(s0)
	.loc 1 205 31
	lw	a5,-296(s0)
	.loc 1 205 55
	srli	a2,a5,6
	slli	a4,a5,26
	add	a4,a4,a2
	.loc 1 205 83
	lw	a5,-296(s0)
	.loc 1 205 108
	srli	a2,a5,11
	slli	a5,a5,21
	add	a5,a5,a2
	.loc 1 205 77
	xor	a4,a4,a5
	.loc 1 205 137
	lw	a5,-296(s0)
	.loc 1 205 162
	srli	a2,a5,25
	slli	a5,a5,7
	add	a5,a5,a2
	.loc 1 205 131
	xor	a5,a4,a5
	.loc 1 205 24
	add	a4,a3,a5
	.loc 1 205 190
	lw	a3,-288(s0)
	.loc 1 205 198
	lw	a2,-296(s0)
	.loc 1 205 206
	lw	a1,-292(s0)
	.loc 1 205 213
	lw	a5,-288(s0)
	.loc 1 205 210
	xor	a5,a1,a5
	.loc 1 205 202
	and	a5,a2,a5
	.loc 1 205 194
	xor	a5,a3,a5
	.loc 1 205 186
	add	a4,a4,a5
	.loc 1 205 226
	lw	a5,-20(s0)
	addi	a5,a5,7
	.loc 1 205 223
	lui	a3,%hi(K)
	addi	a3,a3,%lo(K)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 205 220
	add	a3,a4,a5
	.loc 1 205 258
	lw	a5,-20(s0)
	addi	a4,a5,5
	.loc 1 205 251
	addi	a5,s0,-284
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 205 284
	srli	a2,a5,17
	slli	a4,a5,15
	add	a4,a4,a2
	.loc 1 205 328
	lw	a5,-20(s0)
	addi	a2,a5,5
	.loc 1 205 321
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 205 354
	srli	a2,a5,19
	slli	a5,a5,13
	add	a5,a5,a2
	.loc 1 205 315
	xor	a4,a4,a5
	.loc 1 205 397
	lw	a5,-20(s0)
	addi	a2,a5,5
	.loc 1 205 390
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 205 416
	srli	a5,a5,10
	.loc 1 205 385
	xor	a4,a4,a5
	.loc 1 205 427
	lw	a2,-20(s0)
	addi	a5,s0,-284
	slli	a2,a2,2
	add	a5,a2,a5
	lw	a5,0(a5)
	.loc 1 205 424
	add	a2,a4,a5
	.loc 1 205 453
	lw	a5,-20(s0)
	addi	a4,a5,-8
	.loc 1 205 446
	addi	a5,s0,-284
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 205 479
	srli	a1,a5,7
	slli	a4,a5,25
	add	a4,a4,a1
	.loc 1 205 523
	lw	a5,-20(s0)
	addi	a1,a5,-8
	.loc 1 205 516
	addi	a5,s0,-284
	slli	a1,a1,2
	add	a5,a1,a5
	lw	a5,0(a5)
	.loc 1 205 550
	srli	a1,a5,18
	slli	a5,a5,14
	add	a5,a5,a1
	.loc 1 205 510
	xor	a4,a4,a5
	.loc 1 205 594
	lw	a5,-20(s0)
	addi	a1,a5,-8
	.loc 1 205 587
	addi	a5,s0,-284
	slli	a1,a1,2
	add	a5,a1,a5
	lw	a5,0(a5)
	.loc 1 205 614
	srli	a5,a5,3
	.loc 1 205 582
	xor	a5,a4,a5
	.loc 1 205 439
	add	a2,a2,a5
	.loc 1 205 631
	lw	a5,-20(s0)
	addi	a4,a5,-9
	.loc 1 205 624
	addi	a5,s0,-284
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 205 239
	lw	a5,-20(s0)
	addi	a5,a5,7
	.loc 1 205 621
	add	a2,a2,a4
	.loc 1 205 244
	addi	a4,s0,-284
	slli	a1,a5,2
	add	a4,a1,a4
	sw	a2,0(a4)
	.loc 1 205 236
	addi	a4,s0,-284
	slli	a5,a5,2
	add	a5,a5,a4
	lw	a5,0(a5)
	.loc 1 205 17
	add	a5,a3,a5
	sw	a5,-24(s0)
	.loc 1 205 653
	lw	a5,-312(s0)
	.loc 1 205 677
	srli	a3,a5,2
	slli	a4,a5,30
	add	a4,a4,a3
	.loc 1 205 705
	lw	a5,-312(s0)
	.loc 1 205 730
	srli	a3,a5,13
	slli	a5,a5,19
	add	a5,a5,a3
	.loc 1 205 699
	xor	a4,a4,a5
	.loc 1 205 759
	lw	a5,-312(s0)
	.loc 1 205 784
	srli	a3,a5,22
	slli	a5,a5,10
	add	a5,a5,a3
	.loc 1 205 753
	xor	a4,a4,a5
	.loc 1 205 813
	lw	a3,-312(s0)
	.loc 1 205 820
	lw	a5,-308(s0)
	.loc 1 205 817
	and	a3,a3,a5
	.loc 1 205 829
	lw	a2,-304(s0)
	.loc 1 205 837
	lw	a1,-312(s0)
	.loc 1 205 844
	lw	a5,-308(s0)
	.loc 1 205 841
	or	a5,a1,a5
	.loc 1 205 833
	and	a5,a2,a5
	.loc 1 205 825
	or	a5,a3,a5
	.loc 1 205 646
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 205 853
	lw	a4,-300(s0)
	.loc 1 205 857
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-300(s0)
	.loc 1 205 880
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 1 205 872
	sw	a5,-316(s0)
	.loc 1 197 28 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
.L19:
	.loc 1 197 20 discriminator 1
	lw	a4,-20(s0)
	li	a5,63
	bleu	a4,a5,.L20
	.loc 1 209 12
	sw	zero,-20(s0)
	.loc 1 209 5
	j	.L21
.L22:
	.loc 1 210 19
	lw	a4,-324(s0)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,8(a5)
	.loc 1 210 27
	lw	a3,-20(s0)
	addi	a5,s0,-316
	slli	a3,a3,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 210 23
	add	a4,a4,a5
	lw	a3,-324(s0)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,8(a5)
	.loc 1 209 25 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L21:
	.loc 1 209 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,7
	bleu	a4,a5,.L22
	.loc 1 212 1
	nop
	nop
	lw	ra,332(sp)
	.cfi_restore 1
	lw	s0,328(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 336
	addi	sp,sp,336
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	utils_sha256_process, .-utils_sha256_process
	.section	.text.utils_sha256_update,"ax",@progbits
	.align	1
	.globl	utils_sha256_update
	.type	utils_sha256_update, @function
utils_sha256_update:
.LFB7:
	.loc 1 214 1
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
	.loc 1 218 8
	lw	a5,-44(s0)
	beq	a5,zero,.L30
	.loc 1 222 22
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 222 10
	andi	a5,a5,63
	sw	a5,-20(s0)
	.loc 1 223 10
	li	a4,64
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 225 15
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 225 19
	lw	a5,-44(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 226 15
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 226 19
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 228 19
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 228 8
	lw	a4,-44(s0)
	bleu	a4,a5,.L26
	.loc 1 229 19
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 229 22
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,4(a5)
.L26:
	.loc 1 232 8
	lw	a5,-20(s0)
	beq	a5,zero,.L28
	.loc 1 232 14 discriminator 1
	lw	a4,-44(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L28
	.loc 1 233 25
	lw	a5,-36(s0)
	addi	a4,a5,40
	.loc 1 233 9
	lw	a5,-20(s0)
	add	a5,a4,a5
	lw	a2,-24(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 234 38
	lw	a5,-36(s0)
	addi	a5,a5,40
	.loc 1 234 9
	mv	a1,a5
	lw	a0,-36(s0)
	call	utils_sha256_process
	.loc 1 235 15
	lw	a4,-40(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 1 236 14
	lw	a4,-44(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	sw	a5,-44(s0)
	.loc 1 237 14
	sw	zero,-20(s0)
	.loc 1 240 11
	j	.L28
.L29:
	.loc 1 241 9
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	utils_sha256_process
	.loc 1 242 15
	lw	a5,-40(s0)
	addi	a5,a5,64
	sw	a5,-40(s0)
	.loc 1 243 14
	lw	a5,-44(s0)
	addi	a5,a5,-64
	sw	a5,-44(s0)
.L28:
	.loc 1 240 17
	lw	a4,-44(s0)
	li	a5,63
	bgtu	a4,a5,.L29
	.loc 1 246 8
	lw	a5,-44(s0)
	beq	a5,zero,.L23
	.loc 1 247 25
	lw	a5,-36(s0)
	addi	a4,a5,40
	.loc 1 247 9
	lw	a5,-20(s0)
	add	a5,a4,a5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcpy
	j	.L23
.L30:
	.loc 1 219 9
	nop
.L23:
	.loc 1 249 1
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
	.size	utils_sha256_update, .-utils_sha256_update
	.section	.rodata.sha256_padding,"a"
	.align	2
	.type	sha256_padding, @object
	.size	sha256_padding, 64
sha256_padding:
	.string	"\200"
	.zero	62
	.section	.text.utils_sha256_finish,"ax",@progbits
	.align	1
	.globl	utils_sha256_finish
	.type	utils_sha256_finish, @function
utils_sha256_finish:
.LFB8:
	.loc 1 259 1
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
	.loc 1 264 23
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 264 27
	srli	a4,a5,29
	.loc 1 265 25
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 265 29
	slli	a5,a5,3
	.loc 1 264 10
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 266 22
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 266 9
	slli	a5,a5,3
	sw	a5,-28(s0)
	.loc 1 268 52
	lw	a5,-24(s0)
	srli	a5,a5,24
	.loc 1 268 27
	andi	a5,a5,0xff
	.loc 1 268 25
	sb	a5,-40(s0)
	.loc 1 268 106
	lw	a5,-24(s0)
	srli	a5,a5,16
	.loc 1 268 81
	andi	a5,a5,0xff
	.loc 1 268 79
	sb	a5,-39(s0)
	.loc 1 268 160
	lw	a5,-24(s0)
	srli	a5,a5,8
	.loc 1 268 135
	andi	a5,a5,0xff
	.loc 1 268 133
	sb	a5,-38(s0)
	.loc 1 268 188
	lw	a5,-24(s0)
	andi	a5,a5,0xff
	.loc 1 268 186
	sb	a5,-37(s0)
	.loc 1 269 51
	lw	a5,-28(s0)
	srli	a5,a5,24
	.loc 1 269 27
	andi	a5,a5,0xff
	.loc 1 269 25
	sb	a5,-36(s0)
	.loc 1 269 104
	lw	a5,-28(s0)
	srli	a5,a5,16
	.loc 1 269 80
	andi	a5,a5,0xff
	.loc 1 269 78
	sb	a5,-35(s0)
	.loc 1 269 157
	lw	a5,-28(s0)
	srli	a5,a5,8
	.loc 1 269 133
	andi	a5,a5,0xff
	.loc 1 269 131
	sb	a5,-34(s0)
	.loc 1 269 185
	lw	a5,-28(s0)
	andi	a5,a5,0xff
	.loc 1 269 183
	sb	a5,-33(s0)
	.loc 1 271 22
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 271 10
	andi	a5,a5,63
	sw	a5,-32(s0)
	.loc 1 272 38
	lw	a4,-32(s0)
	li	a5,55
	bgtu	a4,a5,.L32
	.loc 1 272 10 discriminator 1
	li	a4,56
	lw	a5,-32(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	j	.L33
.L32:
	.loc 1 272 10 is_stmt 0 discriminator 2
	li	a4,120
	lw	a5,-32(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
.L33:
	.loc 1 274 5 is_stmt 1
	lw	a2,-20(s0)
	lui	a5,%hi(sha256_padding)
	addi	a1,a5,%lo(sha256_padding)
	lw	a0,-52(s0)
	call	utils_sha256_update
	.loc 1 275 5
	addi	a5,s0,-40
	li	a2,8
	mv	a1,a5
	lw	a0,-52(s0)
	call	utils_sha256_update
	.loc 1 277 56
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 1 277 61
	srli	a5,a5,24
	.loc 1 277 27
	andi	a4,a5,0xff
	.loc 1 277 25
	lw	a5,-56(s0)
	sb	a4,0(a5)
	.loc 1 277 119
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 1 277 124
	srli	a4,a5,16
	.loc 1 277 78
	lw	a5,-56(s0)
	addi	a5,a5,1
	.loc 1 277 90
	andi	a4,a4,0xff
	.loc 1 277 88
	sb	a4,0(a5)
	.loc 1 277 182
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 1 277 187
	srli	a4,a5,8
	.loc 1 277 141
	lw	a5,-56(s0)
	addi	a5,a5,2
	.loc 1 277 153
	andi	a4,a4,0xff
	.loc 1 277 151
	sb	a4,0(a5)
	.loc 1 277 244
	lw	a5,-52(s0)
	lw	a4,8(a5)
	.loc 1 277 203
	lw	a5,-56(s0)
	addi	a5,a5,3
	.loc 1 277 215
	andi	a4,a4,0xff
	.loc 1 277 213
	sb	a4,0(a5)
	.loc 1 278 56
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 278 61
	srli	a4,a5,24
	.loc 1 278 18
	lw	a5,-56(s0)
	addi	a5,a5,4
	.loc 1 278 27
	andi	a4,a4,0xff
	.loc 1 278 25
	sb	a4,0(a5)
	.loc 1 278 119
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 278 124
	srli	a4,a5,16
	.loc 1 278 78
	lw	a5,-56(s0)
	addi	a5,a5,5
	.loc 1 278 90
	andi	a4,a4,0xff
	.loc 1 278 88
	sb	a4,0(a5)
	.loc 1 278 182
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 278 187
	srli	a4,a5,8
	.loc 1 278 141
	lw	a5,-56(s0)
	addi	a5,a5,6
	.loc 1 278 153
	andi	a4,a4,0xff
	.loc 1 278 151
	sb	a4,0(a5)
	.loc 1 278 244
	lw	a5,-52(s0)
	lw	a4,12(a5)
	.loc 1 278 203
	lw	a5,-56(s0)
	addi	a5,a5,7
	.loc 1 278 215
	andi	a4,a4,0xff
	.loc 1 278 213
	sb	a4,0(a5)
	.loc 1 279 56
	lw	a5,-52(s0)
	lw	a5,16(a5)
	.loc 1 279 61
	srli	a4,a5,24
	.loc 1 279 18
	lw	a5,-56(s0)
	addi	a5,a5,8
	.loc 1 279 27
	andi	a4,a4,0xff
	.loc 1 279 25
	sb	a4,0(a5)
	.loc 1 279 119
	lw	a5,-52(s0)
	lw	a5,16(a5)
	.loc 1 279 124
	srli	a4,a5,16
	.loc 1 279 78
	lw	a5,-56(s0)
	addi	a5,a5,9
	.loc 1 279 90
	andi	a4,a4,0xff
	.loc 1 279 88
	sb	a4,0(a5)
	.loc 1 279 182
	lw	a5,-52(s0)
	lw	a5,16(a5)
	.loc 1 279 187
	srli	a4,a5,8
	.loc 1 279 141
	lw	a5,-56(s0)
	addi	a5,a5,10
	.loc 1 279 153
	andi	a4,a4,0xff
	.loc 1 279 151
	sb	a4,0(a5)
	.loc 1 279 244
	lw	a5,-52(s0)
	lw	a4,16(a5)
	.loc 1 279 203
	lw	a5,-56(s0)
	addi	a5,a5,11
	.loc 1 279 215
	andi	a4,a4,0xff
	.loc 1 279 213
	sb	a4,0(a5)
	.loc 1 280 57
	lw	a5,-52(s0)
	lw	a5,20(a5)
	.loc 1 280 62
	srli	a4,a5,24
	.loc 1 280 18
	lw	a5,-56(s0)
	addi	a5,a5,12
	.loc 1 280 28
	andi	a4,a4,0xff
	.loc 1 280 26
	sb	a4,0(a5)
	.loc 1 280 121
	lw	a5,-52(s0)
	lw	a5,20(a5)
	.loc 1 280 126
	srli	a4,a5,16
	.loc 1 280 79
	lw	a5,-56(s0)
	addi	a5,a5,13
	.loc 1 280 92
	andi	a4,a4,0xff
	.loc 1 280 90
	sb	a4,0(a5)
	.loc 1 280 185
	lw	a5,-52(s0)
	lw	a5,20(a5)
	.loc 1 280 190
	srli	a4,a5,8
	.loc 1 280 143
	lw	a5,-56(s0)
	addi	a5,a5,14
	.loc 1 280 156
	andi	a4,a4,0xff
	.loc 1 280 154
	sb	a4,0(a5)
	.loc 1 280 248
	lw	a5,-52(s0)
	lw	a4,20(a5)
	.loc 1 280 206
	lw	a5,-56(s0)
	addi	a5,a5,15
	.loc 1 280 219
	andi	a4,a4,0xff
	.loc 1 280 217
	sb	a4,0(a5)
	.loc 1 281 57
	lw	a5,-52(s0)
	lw	a5,24(a5)
	.loc 1 281 62
	srli	a4,a5,24
	.loc 1 281 18
	lw	a5,-56(s0)
	addi	a5,a5,16
	.loc 1 281 28
	andi	a4,a4,0xff
	.loc 1 281 26
	sb	a4,0(a5)
	.loc 1 281 121
	lw	a5,-52(s0)
	lw	a5,24(a5)
	.loc 1 281 126
	srli	a4,a5,16
	.loc 1 281 79
	lw	a5,-56(s0)
	addi	a5,a5,17
	.loc 1 281 92
	andi	a4,a4,0xff
	.loc 1 281 90
	sb	a4,0(a5)
	.loc 1 281 185
	lw	a5,-52(s0)
	lw	a5,24(a5)
	.loc 1 281 190
	srli	a4,a5,8
	.loc 1 281 143
	lw	a5,-56(s0)
	addi	a5,a5,18
	.loc 1 281 156
	andi	a4,a4,0xff
	.loc 1 281 154
	sb	a4,0(a5)
	.loc 1 281 248
	lw	a5,-52(s0)
	lw	a4,24(a5)
	.loc 1 281 206
	lw	a5,-56(s0)
	addi	a5,a5,19
	.loc 1 281 219
	andi	a4,a4,0xff
	.loc 1 281 217
	sb	a4,0(a5)
	.loc 1 282 57
	lw	a5,-52(s0)
	lw	a5,28(a5)
	.loc 1 282 62
	srli	a4,a5,24
	.loc 1 282 18
	lw	a5,-56(s0)
	addi	a5,a5,20
	.loc 1 282 28
	andi	a4,a4,0xff
	.loc 1 282 26
	sb	a4,0(a5)
	.loc 1 282 121
	lw	a5,-52(s0)
	lw	a5,28(a5)
	.loc 1 282 126
	srli	a4,a5,16
	.loc 1 282 79
	lw	a5,-56(s0)
	addi	a5,a5,21
	.loc 1 282 92
	andi	a4,a4,0xff
	.loc 1 282 90
	sb	a4,0(a5)
	.loc 1 282 185
	lw	a5,-52(s0)
	lw	a5,28(a5)
	.loc 1 282 190
	srli	a4,a5,8
	.loc 1 282 143
	lw	a5,-56(s0)
	addi	a5,a5,22
	.loc 1 282 156
	andi	a4,a4,0xff
	.loc 1 282 154
	sb	a4,0(a5)
	.loc 1 282 248
	lw	a5,-52(s0)
	lw	a4,28(a5)
	.loc 1 282 206
	lw	a5,-56(s0)
	addi	a5,a5,23
	.loc 1 282 219
	andi	a4,a4,0xff
	.loc 1 282 217
	sb	a4,0(a5)
	.loc 1 283 57
	lw	a5,-52(s0)
	lw	a5,32(a5)
	.loc 1 283 62
	srli	a4,a5,24
	.loc 1 283 18
	lw	a5,-56(s0)
	addi	a5,a5,24
	.loc 1 283 28
	andi	a4,a4,0xff
	.loc 1 283 26
	sb	a4,0(a5)
	.loc 1 283 121
	lw	a5,-52(s0)
	lw	a5,32(a5)
	.loc 1 283 126
	srli	a4,a5,16
	.loc 1 283 79
	lw	a5,-56(s0)
	addi	a5,a5,25
	.loc 1 283 92
	andi	a4,a4,0xff
	.loc 1 283 90
	sb	a4,0(a5)
	.loc 1 283 185
	lw	a5,-52(s0)
	lw	a5,32(a5)
	.loc 1 283 190
	srli	a4,a5,8
	.loc 1 283 143
	lw	a5,-56(s0)
	addi	a5,a5,26
	.loc 1 283 156
	andi	a4,a4,0xff
	.loc 1 283 154
	sb	a4,0(a5)
	.loc 1 283 248
	lw	a5,-52(s0)
	lw	a4,32(a5)
	.loc 1 283 206
	lw	a5,-56(s0)
	addi	a5,a5,27
	.loc 1 283 219
	andi	a4,a4,0xff
	.loc 1 283 217
	sb	a4,0(a5)
	.loc 1 285 12
	lw	a5,-52(s0)
	lw	a5,104(a5)
	.loc 1 285 8
	bne	a5,zero,.L35
	.loc 1 286 61
	lw	a5,-52(s0)
	lw	a5,36(a5)
	.loc 1 286 66
	srli	a4,a5,24
	.loc 1 286 22
	lw	a5,-56(s0)
	addi	a5,a5,28
	.loc 1 286 32
	andi	a4,a4,0xff
	.loc 1 286 30
	sb	a4,0(a5)
	.loc 1 286 125
	lw	a5,-52(s0)
	lw	a5,36(a5)
	.loc 1 286 130
	srli	a4,a5,16
	.loc 1 286 83
	lw	a5,-56(s0)
	addi	a5,a5,29
	.loc 1 286 96
	andi	a4,a4,0xff
	.loc 1 286 94
	sb	a4,0(a5)
	.loc 1 286 189
	lw	a5,-52(s0)
	lw	a5,36(a5)
	.loc 1 286 194
	srli	a4,a5,8
	.loc 1 286 147
	lw	a5,-56(s0)
	addi	a5,a5,30
	.loc 1 286 160
	andi	a4,a4,0xff
	.loc 1 286 158
	sb	a4,0(a5)
	.loc 1 286 252
	lw	a5,-52(s0)
	lw	a4,36(a5)
	.loc 1 286 210
	lw	a5,-56(s0)
	addi	a5,a5,31
	.loc 1 286 223
	andi	a4,a4,0xff
	.loc 1 286 221
	sb	a4,0(a5)
.L35:
	.loc 1 288 1
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
.LFE8:
	.size	utils_sha256_finish, .-utils_sha256_finish
	.section	.text.utils_sha256,"ax",@progbits
	.align	1
	.globl	utils_sha256
	.type	utils_sha256, @function
utils_sha256:
.LFB9:
	.loc 1 291 1
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
	.loc 1 294 5
	addi	a5,s0,-124
	mv	a0,a5
	call	utils_sha256_init
	.loc 1 295 5
	addi	a5,s0,-124
	mv	a0,a5
	call	utils_sha256_starts
	.loc 1 296 5
	addi	a5,s0,-124
	lw	a2,-136(s0)
	lw	a1,-132(s0)
	mv	a0,a5
	call	utils_sha256_update
	.loc 1 297 5
	addi	a5,s0,-124
	lw	a1,-140(s0)
	mv	a0,a5
	call	utils_sha256_finish
	.loc 1 298 5
	addi	a5,s0,-124
	mv	a0,a5
	call	utils_sha256_free
	.loc 1 299 1
	nop
	lw	ra,140(sp)
	.cfi_restore 1
	lw	s0,136(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	utils_sha256, .-utils_sha256
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_sha256.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x48e
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x37
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x16
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x6
	.4byte	0x5a
	.uleb128 0x17
	.4byte	0x5a
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x18
	.byte	0x4
	.uleb128 0x10
	.4byte	0x8e
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	0xa6
	.uleb128 0x10
	.4byte	0x9c
	.uleb128 0x19
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x5a
	.uleb128 0x6
	.4byte	0xa7
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x80
	.uleb128 0x6
	.4byte	0xb8
	.uleb128 0x1a
	.byte	0x6c
	.byte	0x4
	.byte	0x2f
	.byte	0x9
	.4byte	0x103
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x30
	.byte	0xe
	.4byte	0x103
	.byte	0
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x31
	.byte	0xe
	.4byte	0x113
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x32
	.byte	0x13
	.4byte	0x123
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x33
	.byte	0x9
	.4byte	0x3e
	.byte	0x68
	.byte	0
	.uleb128 0x4
	.4byte	0xb8
	.4byte	0x113
	.uleb128 0x5
	.4byte	0x37
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	0xb8
	.4byte	0x123
	.uleb128 0x5
	.4byte	0x37
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	0x5a
	.4byte	0x133
	.uleb128 0x5
	.4byte	0x37
	.byte	0x3f
	.byte	0
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.byte	0x34
	.byte	0x3
	.4byte	0xc9
	.uleb128 0x6
	.4byte	0x133
	.uleb128 0x4
	.4byte	0xc4
	.4byte	0x154
	.uleb128 0x5
	.4byte	0x37
	.byte	0x3f
	.byte	0
	.uleb128 0x6
	.4byte	0x144
	.uleb128 0x9
	.string	"K"
	.byte	0x6b
	.byte	0x17
	.4byte	0x154
	.uleb128 0x5
	.byte	0x3
	.4byte	K
	.uleb128 0x4
	.4byte	0x61
	.4byte	0x178
	.uleb128 0x5
	.4byte	0x37
	.byte	0x3f
	.byte	0
	.uleb128 0x6
	.4byte	0x168
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0xfb
	.byte	0x1c
	.4byte	0x178
	.uleb128 0x5
	.byte	0x3
	.4byte	sha256_padding
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x1f
	.4byte	0x8e
	.4byte	0x1ac
	.uleb128 0x8
	.4byte	0x90
	.uleb128 0x8
	.4byte	0xa1
	.uleb128 0x8
	.4byte	0x2b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x21
	.4byte	0x8e
	.4byte	0x1ca
	.uleb128 0x8
	.4byte	0x8e
	.uleb128 0x8
	.4byte	0x3e
	.uleb128 0x8
	.4byte	0x2b
	.byte	0
	.uleb128 0x12
	.4byte	.LASF27
	.2byte	0x122
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x220
	.uleb128 0xc
	.4byte	.LASF24
	.2byte	0x122
	.byte	0x22
	.4byte	0x220
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0xc
	.4byte	.LASF25
	.2byte	0x122
	.byte	0x32
	.4byte	0xb8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0xc
	.4byte	.LASF26
	.2byte	0x122
	.byte	0x40
	.4byte	0x225
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x13
	.string	"ctx"
	.2byte	0x124
	.byte	0x18
	.4byte	0x133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.uleb128 0x3
	.4byte	0xb3
	.uleb128 0x3
	.4byte	0xa7
	.uleb128 0x12
	.4byte	.LASF28
	.2byte	0x102
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2aa
	.uleb128 0x1b
	.string	"ctx"
	.byte	0x1
	.2byte	0x102
	.byte	0x2e
	.4byte	0x2aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.4byte	.LASF26
	.2byte	0x102
	.byte	0x3b
	.4byte	0x225
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.4byte	.LASF29
	.2byte	0x104
	.byte	0xe
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.4byte	.LASF30
	.2byte	0x104
	.byte	0x14
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LASF31
	.2byte	0x105
	.byte	0xe
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"low"
	.2byte	0x105
	.byte	0x14
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.4byte	.LASF32
	.2byte	0x106
	.byte	0x13
	.4byte	0x2af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3
	.4byte	0x133
	.uleb128 0x4
	.4byte	0x5a
	.4byte	0x2bf
	.uleb128 0x5
	.4byte	0x37
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0xd5
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31a
	.uleb128 0x2
	.string	"ctx"
	.byte	0xd5
	.byte	0x2e
	.4byte	0x2aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0xd5
	.byte	0x48
	.4byte	0x31a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0xd5
	.byte	0x58
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0xd7
	.byte	0xc
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0xd8
	.byte	0xe
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	0x61
	.uleb128 0x14
	.4byte	.LASF36
	.byte	0x97
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x394
	.uleb128 0x2
	.string	"ctx"
	.byte	0x97
	.byte	0x2f
	.4byte	0x2aa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x97
	.byte	0x48
	.4byte	0x31a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x99
	.byte	0xe
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x99
	.byte	0x15
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.string	"W"
	.byte	0x99
	.byte	0x1c
	.4byte	0x394
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x9
	.string	"A"
	.byte	0x9a
	.byte	0xe
	.4byte	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x9
	.string	"i"
	.byte	0x9b
	.byte	0x12
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	0xb8
	.4byte	0x3a4
	.uleb128 0x5
	.4byte	0x37
	.byte	0x3f
	.byte	0
	.uleb128 0x14
	.4byte	.LASF40
	.byte	0x56
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d5
	.uleb128 0x2
	.string	"ctx"
	.byte	0x56
	.byte	0x2e
	.4byte	0x2aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x58
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x51
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x406
	.uleb128 0x2
	.string	"dst"
	.byte	0x51
	.byte	0x2d
	.4byte	0x2aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"src"
	.byte	0x52
	.byte	0x33
	.4byte	0x406
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.4byte	0x13f
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x49
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42e
	.uleb128 0x2
	.string	"ctx"
	.byte	0x49
	.byte	0x2c
	.4byte	0x2aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x45
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x451
	.uleb128 0x2
	.string	"ctx"
	.byte	0x45
	.byte	0x2c
	.4byte	0x2aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF45
	.byte	0x1
	.byte	0x3e
	.byte	0xd
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48c
	.uleb128 0x2
	.string	"v"
	.byte	0x3e
	.byte	0x28
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"n"
	.byte	0x3e
	.byte	0x34
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"p"
	.byte	0x40
	.byte	0x1d
	.4byte	0x48c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	0x66
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x26
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
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
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
	.4byte	.LFB1
	.uleb128 .LFE1-.LFB1
	.byte	0x7
	.4byte	.LFB2
	.uleb128 .LFE2-.LFB2
	.byte	0x7
	.4byte	.LFB3
	.uleb128 .LFE3-.LFB3
	.byte	0x7
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"is224"
.LASF17:
	.string	"state"
.LASF18:
	.string	"buffer"
.LASF32:
	.string	"msglen"
.LASF35:
	.string	"left"
.LASF30:
	.string	"padn"
.LASF20:
	.string	"iot_sha256_context"
.LASF27:
	.string	"utils_sha256"
.LASF37:
	.string	"data"
.LASF6:
	.string	"unsigned char"
.LASF43:
	.string	"utils_sha256_init"
.LASF24:
	.string	"input"
.LASF40:
	.string	"utils_sha256_starts"
.LASF34:
	.string	"fill"
.LASF10:
	.string	"long unsigned int"
.LASF8:
	.string	"short unsigned int"
.LASF13:
	.string	"size_t"
.LASF15:
	.string	"uint32_t"
.LASF23:
	.string	"memset"
.LASF33:
	.string	"utils_sha256_update"
.LASF31:
	.string	"high"
.LASF45:
	.string	"utils_sha256_zeroize"
.LASF2:
	.string	"unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint8_t"
.LASF41:
	.string	"utils_sha256_clone"
.LASF3:
	.string	"long long int"
.LASF44:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF22:
	.string	"memcpy"
.LASF38:
	.string	"temp1"
.LASF39:
	.string	"temp2"
.LASF21:
	.string	"sha256_padding"
.LASF7:
	.string	"short int"
.LASF26:
	.string	"output"
.LASF42:
	.string	"utils_sha256_free"
.LASF25:
	.string	"ilen"
.LASF16:
	.string	"total"
.LASF9:
	.string	"long int"
.LASF12:
	.string	"char"
.LASF4:
	.string	"long double"
.LASF5:
	.string	"signed char"
.LASF29:
	.string	"last"
.LASF36:
	.string	"utils_sha256_process"
.LASF28:
	.string	"utils_sha256_finish"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_sha256.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
