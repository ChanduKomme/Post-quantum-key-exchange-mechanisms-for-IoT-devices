	.file	"sha512.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/sha512.c"
	.section	.text.sha512_put_uint64_be,"ax",@progbits
	.align	1
	.type	sha512_put_uint64_be, @function
sha512_put_uint64_be:
.LFB15:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/sha512.c"
	.loc 1 214 1
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
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	sw	a2,-60(s0)
	mv	a5,a3
	sb	a5,-61(s0)
	.loc 1 215 82 discriminator 2
	lbu	a5,-61(s0)
	.loc 1 215 115 discriminator 2
	lw	a4,-60(s0)
	add	s1,a4,a5
	.loc 1 215 122 discriminator 2
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	__bswapdi2
	mv	a4,a0
	mv	a5,a1
	sw	s1,-20(s0)
	sw	a4,-32(s0)
	sw	a5,-28(s0)
.LBB6:
.LBB7:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/alignment.h"
	.loc 2 252 33
	lw	a5,-20(s0)
	sw	a5,-36(s0)
	.loc 2 253 12
	lw	a5,-36(s0)
	lw	a4,-32(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-32(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-32(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-32(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	lw	a4,-28(s0)
	andi	a4,a4,255
	lbu	a3,4(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,4(a5)
	lw	a4,-28(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,5(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,5(a5)
	lw	a4,-28(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,6(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,6(a5)
	lw	a4,-28(s0)
	srli	a4,a4,24
	lbu	a3,7(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,7(a5)
	.loc 2 257 1
	nop
.LBE7:
.LBE6:
	.loc 1 216 1
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
.LFE15:
	.size	sha512_put_uint64_be, .-sha512_put_uint64_be
	.section	.text.mbedtls_sha512_init,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_init
	.type	mbedtls_sha512_init, @function
mbedtls_sha512_init:
.LFB16:
	.loc 1 222 1
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
	.loc 1 223 5
	li	a2,216
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 1 224 1
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
	.size	mbedtls_sha512_init, .-mbedtls_sha512_init
	.section	.text.mbedtls_sha512_free,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_free
	.type	mbedtls_sha512_free, @function
mbedtls_sha512_free:
.LFB17:
	.loc 1 227 1
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
	.loc 1 228 8
	lw	a5,-20(s0)
	beq	a5,zero,.L6
	.loc 1 232 5
	li	a1,216
	lw	a0,-20(s0)
	call	mbedtls_platform_zeroize
	j	.L3
.L6:
	.loc 1 229 9
	nop
.L3:
	.loc 1 233 1
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
	.size	mbedtls_sha512_free, .-mbedtls_sha512_free
	.section	.text.mbedtls_sha512_clone,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_clone
	.type	mbedtls_sha512_clone, @function
mbedtls_sha512_clone:
.LFB18:
	.loc 1 237 1
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
	.loc 1 238 10
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	mv	a3,a5
	li	a5,216
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcpy
	.loc 1 239 1
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
	.size	mbedtls_sha512_clone, .-mbedtls_sha512_clone
	.section	.text.mbedtls_sha512_starts,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_starts
	.type	mbedtls_sha512_starts, @function
mbedtls_sha512_starts:
.LFB19:
	.loc 1 245 1
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
	.loc 1 247 8
	lw	a5,-24(s0)
	beq	a5,zero,.L9
	.loc 1 247 20 discriminator 1
	lw	a4,-24(s0)
	li	a5,1
	beq	a4,a5,.L9
	.loc 1 248 16
	li	a5,-117
	j	.L10
.L9:
	.loc 1 260 19
	lw	a5,-20(s0)
	li	a3,0
	li	a4,0
	sw	a3,0(a5)
	sw	a4,4(a5)
	.loc 1 261 19
	lw	a5,-20(s0)
	sw	a3,8(a5)
	sw	a4,12(a5)
	.loc 1 263 8
	lw	a5,-24(s0)
	bne	a5,zero,.L11
	.loc 1 265 23
	lw	a3,-20(s0)
	lui	a5,%hi(.LC0)
	lw	a4,%lo(.LC0)(a5)
	lw	a5,%lo(.LC0+4)(a5)
	sw	a4,16(a3)
	sw	a5,20(a3)
	.loc 1 266 23
	lw	a3,-20(s0)
	lui	a5,%hi(.LC1)
	lw	a4,%lo(.LC1)(a5)
	lw	a5,%lo(.LC1+4)(a5)
	sw	a4,24(a3)
	sw	a5,28(a3)
	.loc 1 267 23
	lw	a3,-20(s0)
	lui	a5,%hi(.LC2)
	lw	a4,%lo(.LC2)(a5)
	lw	a5,%lo(.LC2+4)(a5)
	sw	a4,32(a3)
	sw	a5,36(a3)
	.loc 1 268 23
	lw	a3,-20(s0)
	lui	a5,%hi(.LC3)
	lw	a4,%lo(.LC3)(a5)
	lw	a5,%lo(.LC3+4)(a5)
	sw	a4,40(a3)
	sw	a5,44(a3)
	.loc 1 269 23
	lw	a3,-20(s0)
	lui	a5,%hi(.LC4)
	lw	a4,%lo(.LC4)(a5)
	lw	a5,%lo(.LC4+4)(a5)
	sw	a4,48(a3)
	sw	a5,52(a3)
	.loc 1 270 23
	lw	a3,-20(s0)
	lui	a5,%hi(.LC5)
	lw	a4,%lo(.LC5)(a5)
	lw	a5,%lo(.LC5+4)(a5)
	sw	a4,56(a3)
	sw	a5,60(a3)
	.loc 1 271 23
	lw	a3,-20(s0)
	lui	a5,%hi(.LC6)
	lw	a4,%lo(.LC6)(a5)
	lw	a5,%lo(.LC6+4)(a5)
	sw	a4,64(a3)
	sw	a5,68(a3)
	.loc 1 272 23
	lw	a3,-20(s0)
	lui	a5,%hi(.LC7)
	lw	a4,%lo(.LC7)(a5)
	lw	a5,%lo(.LC7+4)(a5)
	sw	a4,72(a3)
	sw	a5,76(a3)
	j	.L12
.L11:
	.loc 1 276 23
	lw	a3,-20(s0)
	lui	a5,%hi(.LC8)
	lw	a4,%lo(.LC8)(a5)
	lw	a5,%lo(.LC8+4)(a5)
	sw	a4,16(a3)
	sw	a5,20(a3)
	.loc 1 277 23
	lw	a3,-20(s0)
	lui	a5,%hi(.LC9)
	lw	a4,%lo(.LC9)(a5)
	lw	a5,%lo(.LC9+4)(a5)
	sw	a4,24(a3)
	sw	a5,28(a3)
	.loc 1 278 23
	lw	a3,-20(s0)
	lui	a5,%hi(.LC10)
	lw	a4,%lo(.LC10)(a5)
	lw	a5,%lo(.LC10+4)(a5)
	sw	a4,32(a3)
	sw	a5,36(a3)
	.loc 1 279 23
	lw	a3,-20(s0)
	lui	a5,%hi(.LC11)
	lw	a4,%lo(.LC11)(a5)
	lw	a5,%lo(.LC11+4)(a5)
	sw	a4,40(a3)
	sw	a5,44(a3)
	.loc 1 280 23
	lw	a3,-20(s0)
	lui	a5,%hi(.LC12)
	lw	a4,%lo(.LC12)(a5)
	lw	a5,%lo(.LC12+4)(a5)
	sw	a4,48(a3)
	sw	a5,52(a3)
	.loc 1 281 23
	lw	a3,-20(s0)
	lui	a5,%hi(.LC13)
	lw	a4,%lo(.LC13)(a5)
	lw	a5,%lo(.LC13+4)(a5)
	sw	a4,56(a3)
	sw	a5,60(a3)
	.loc 1 282 23
	lw	a3,-20(s0)
	lui	a5,%hi(.LC14)
	lw	a4,%lo(.LC14)(a5)
	lw	a5,%lo(.LC14+4)(a5)
	sw	a4,64(a3)
	sw	a5,68(a3)
	.loc 1 283 23
	lw	a3,-20(s0)
	lui	a5,%hi(.LC15)
	lw	a4,%lo(.LC15)(a5)
	lw	a5,%lo(.LC15+4)(a5)
	sw	a4,72(a3)
	sw	a5,76(a3)
.L12:
	.loc 1 288 16
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,208(a5)
	.loc 1 291 12
	li	a5,0
.L10:
	.loc 1 292 1
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
	.size	mbedtls_sha512_starts, .-mbedtls_sha512_starts
	.section	.rodata.K,"a"
	.align	3
	.type	K, @object
	.size	K, 640
K:
	.word	-685199838
	.word	1116352408
	.word	602891725
	.word	1899447441
	.word	-330482897
	.word	-1245643825
	.word	-2121671748
	.word	-373957723
	.word	-213338824
	.word	961987163
	.word	-1241133031
	.word	1508970993
	.word	-1357295717
	.word	-1841331548
	.word	-630357736
	.word	-1424204075
	.word	-1560083902
	.word	-670586216
	.word	1164996542
	.word	310598401
	.word	1323610764
	.word	607225278
	.word	-704662302
	.word	1426881987
	.word	-226784913
	.word	1925078388
	.word	991336113
	.word	-2132889090
	.word	633803317
	.word	-1680079193
	.word	-815192428
	.word	-1046744716
	.word	-1628353838
	.word	-459576895
	.word	944711139
	.word	-272742522
	.word	-1953704523
	.word	264347078
	.word	2007800933
	.word	604807628
	.word	1495990901
	.word	770255983
	.word	1856431235
	.word	1249150122
	.word	-1119749164
	.word	1555081692
	.word	-2096016459
	.word	1996064986
	.word	-295247957
	.word	-1740746414
	.word	766784016
	.word	-1473132947
	.word	-1728372417
	.word	-1341970488
	.word	-1091629340
	.word	-1084653625
	.word	1034457026
	.word	-958395405
	.word	-1828018395
	.word	-710438585
	.word	-536640913
	.word	113926993
	.word	168717936
	.word	338241895
	.word	1188179964
	.word	666307205
	.word	1546045734
	.word	773529912
	.word	1522805485
	.word	1294757372
	.word	-1651133473
	.word	1396182291
	.word	-1951439906
	.word	1695183700
	.word	1014477480
	.word	1986661051
	.word	1206759142
	.word	-2117940946
	.word	344077627
	.word	-1838011259
	.word	1290863460
	.word	-1564481375
	.word	-1136513023
	.word	-1474664885
	.word	-789014639
	.word	-1035236496
	.word	106217008
	.word	-949202525
	.word	-688958952
	.word	-778901479
	.word	1432725776
	.word	-694614492
	.word	1467031594
	.word	-200395387
	.word	851169720
	.word	275423344
	.word	-1194143544
	.word	430227734
	.word	1363258195
	.word	506948616
	.word	-544281703
	.word	659060556
	.word	-509917016
	.word	883997877
	.word	-976659869
	.word	958139571
	.word	-482243893
	.word	1322822218
	.word	2003034995
	.word	1537002063
	.word	-692930397
	.word	1747873779
	.word	1575990012
	.word	1955562222
	.word	1125592928
	.word	2024104815
	.word	-1578062990
	.word	-2067236844
	.word	442776044
	.word	-1933114872
	.word	593698344
	.word	-1866530822
	.word	-561857047
	.word	-1538233109
	.word	-1295615723
	.word	-1090935817
	.word	-479046869
	.word	-965641998
	.word	-366583396
	.word	-903397682
	.word	566280711
	.word	-779700025
	.word	-840897762
	.word	-354779690
	.word	-294727304
	.word	-176337025
	.word	1914138554
	.word	116418474
	.word	-1563912026
	.word	174292421
	.word	-1090974290
	.word	289380356
	.word	320620315
	.word	460393269
	.word	587496836
	.word	685471733
	.word	1086792851
	.word	852142971
	.word	365543100
	.word	1017036298
	.word	-1676669620
	.word	1126000580
	.word	-885112138
	.word	1288033470
	.word	-60457430
	.word	1501505948
	.word	987167468
	.word	1607167915
	.word	1246189591
	.word	1816402316
	.section	.text.mbedtls_internal_sha512_process,"ax",@progbits
	.align	1
	.globl	mbedtls_internal_sha512_process
	.type	mbedtls_internal_sha512_process, @function
mbedtls_internal_sha512_process:
.LFB20:
	.loc 1 603 1
	.cfi_startproc
	addi	sp,sp,-992
	.cfi_def_cfa_offset 992
	sw	ra,988(sp)
	sw	s0,984(sp)
	sw	s2,980(sp)
	sw	s3,976(sp)
	sw	s4,972(sp)
	sw	s5,968(sp)
	sw	s6,964(sp)
	sw	s7,960(sp)
	sw	s8,956(sp)
	sw	s9,952(sp)
	sw	s10,948(sp)
	sw	s11,944(sp)
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
	addi	s0,sp,992
	.cfi_def_cfa 8, 0
	sw	a0,-804(s0)
	sw	a1,-808(s0)
	.loc 1 630 12
	sw	zero,-52(s0)
	.loc 1 630 5
	j	.L14
.L15:
	.loc 1 631 32
	lw	a4,-804(s0)
	lw	a5,-52(s0)
	addi	a5,a5,2
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 631 20
	lw	a5,-52(s0)
	addi	a5,a5,82
	addi	a4,s0,-792
	slli	a5,a5,3
	add	a5,a5,a4
	sw	a2,0(a5)
	sw	a3,4(a5)
	.loc 1 630 25 discriminator 3
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
.L14:
	.loc 1 630 19 discriminator 1
	lw	a4,-52(s0)
	li	a5,7
	ble	a4,a5,.L15
	.loc 1 635 12
	sw	zero,-52(s0)
	.loc 1 635 5
	j	.L16
.L20:
	.loc 1 636 12
	lw	a4,-52(s0)
	li	a5,15
	bgt	a4,a5,.L17
	.loc 1 637 142
	lw	a5,-52(s0)
	slli	a4,a5,3
	.loc 1 637 137
	lw	a5,-808(s0)
	add	a5,a5,a4
	sw	a5,-56(s0)
.LBB8:
.LBB9:
	.loc 2 226 33
	lw	a5,-56(s0)
	sw	a5,-60(s0)
	.loc 2 227 7
	lw	a4,-60(s0)
	lbu	a3,0(a4)
	lbu	a5,1(a4)
	slli	a5,a5,8
	or	a3,a5,a3
	lbu	a5,2(a4)
	slli	a5,a5,16
	or	a3,a5,a3
	lbu	a5,3(a4)
	slli	a5,a5,24
	or	a5,a5,a3
	mv	a0,a5
	lbu	a3,4(a4)
	lbu	a5,5(a4)
	slli	a5,a5,8
	or	a3,a5,a3
	lbu	a5,6(a4)
	slli	a5,a5,16
	or	a3,a5,a3
	lbu	a5,7(a4)
	slli	a5,a5,24
	or	a5,a5,a3
	mv	a1,a5
	sw	a0,-72(s0)
	sw	a1,-68(s0)
	.loc 2 231 12
	lw	a4,-72(s0)
	lw	a5,-68(s0)
.LBE9:
.LBE8:
	.loc 1 637 81 discriminator 1
	mv	a0,a4
	mv	a1,a5
	call	__bswapdi2
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	.loc 1 637 24 discriminator 2
	lw	a5,-52(s0)
	addi	a5,a5,2
	addi	a4,s0,-792
	slli	a5,a5,3
	add	a5,a5,a4
	sw	a2,0(a5)
	sw	a3,4(a5)
	j	.L19
.L17:
	.loc 1 639 41
	lw	a5,-52(s0)
	addi	a5,a5,-2
	.loc 1 639 38
	addi	a5,a5,2
	addi	a4,s0,-792
	slli	a5,a5,3
	add	a5,a5,a4
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 639 59
	slli	a2,a5,13
	srli	a3,a4,19
	add	a3,a2,a3
	sw	a3,-816(s0)
	slli	a3,a4,13
	srli	a5,a5,19
	add	a5,a3,a5
	sw	a5,-812(s0)
	.loc 1 639 112
	lw	a5,-52(s0)
	addi	a5,a5,-2
	.loc 1 639 109
	addi	a5,a5,2
	addi	a4,s0,-792
	slli	a5,a5,3
	add	a5,a5,a4
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 639 130
	srli	a2,a5,29
	slli	a3,a4,3
	add	a3,a2,a3
	sw	a3,-824(s0)
	srli	a3,a4,29
	slli	a5,a5,3
	add	a5,a3,a5
	sw	a5,-820(s0)
	.loc 1 639 96
	lw	a3,-816(s0)
	lw	a4,-812(s0)
	mv	a2,a3
	lw	a5,-824(s0)
	lw	a6,-820(s0)
	mv	a1,a5
	xor	a2,a2,a1
	sw	a2,-832(s0)
	mv	a5,a6
	xor	a5,a4,a5
	sw	a5,-828(s0)
	.loc 1 639 181
	lw	a5,-52(s0)
	addi	a5,a5,-2
	.loc 1 639 178
	addi	a5,a5,2
	addi	a4,s0,-792
	slli	a5,a5,3
	add	a5,a5,a4
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 639 187
	slli	a3,a5,26
	srli	s4,a4,6
	add	s4,a3,s4
	srli	s5,a5,6
	.loc 1 639 167
	lw	a5,-832(s0)
	lw	a6,-828(s0)
	mv	a4,a5
	xor	s8,a4,s4
	mv	a5,a6
	xor	s9,a5,s5
	.loc 1 639 208
	lw	a5,-52(s0)
	addi	a5,a5,-7
	.loc 1 639 205
	addi	a5,a5,2
	addi	a4,s0,-792
	slli	a5,a5,3
	add	a5,a5,a4
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 639 196
	add	a0,s8,a4
	mv	a3,a0
	sltu	a3,a3,s8
	add	a1,s9,a5
	add	a5,a3,a1
	mv	a1,a5
	.loc 1 640 41
	lw	a5,-52(s0)
	addi	a5,a5,-15
	.loc 1 640 38
	addi	a5,a5,2
	addi	a4,s0,-792
	slli	a5,a5,3
	add	a5,a5,a4
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 640 59
	slli	a2,a5,31
	srli	a3,a4,1
	add	a3,a2,a3
	sw	a3,-840(s0)
	slli	a3,a4,31
	srli	a5,a5,1
	add	a5,a3,a5
	sw	a5,-836(s0)
	.loc 1 640 112
	lw	a5,-52(s0)
	addi	a5,a5,-15
	.loc 1 640 109
	addi	a5,a5,2
	addi	a4,s0,-792
	slli	a5,a5,3
	add	a5,a5,a4
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 640 130
	slli	a2,a5,24
	srli	a3,a4,8
	add	a3,a2,a3
	sw	a3,-848(s0)
	slli	a3,a4,24
	srli	a5,a5,8
	add	a5,a3,a5
	sw	a5,-844(s0)
	.loc 1 640 96
	lw	a3,-840(s0)
	lw	a4,-836(s0)
	mv	a2,a3
	lw	a5,-848(s0)
	lw	a6,-844(s0)
	mv	a7,a5
	xor	a2,a2,a7
	sw	a2,-856(s0)
	mv	a5,a6
	xor	a5,a4,a5
	sw	a5,-852(s0)
	.loc 1 640 181
	lw	a5,-52(s0)
	addi	a5,a5,-15
	.loc 1 640 178
	addi	a5,a5,2
	addi	a4,s0,-792
	slli	a5,a5,3
	add	a5,a5,a4
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 640 188
	slli	a3,a5,25
	srli	s2,a4,7
	add	s2,a3,s2
	srli	s3,a5,7
	.loc 1 640 167
	lw	a5,-856(s0)
	lw	a6,-852(s0)
	mv	a4,a5
	xor	s10,a4,s2
	mv	a5,a6
	xor	s11,a5,s3
	.loc 1 639 213
	add	a2,a0,s10
	mv	a5,a2
	sltu	a5,a5,a0
	add	a3,a1,s11
	add	a5,a5,a3
	mv	a3,a5
	mv	a6,a2
	mv	a7,a3
	.loc 1 640 209
	lw	a5,-52(s0)
	addi	a5,a5,-16
	.loc 1 640 206
	addi	a5,a5,2
	addi	a4,s0,-792
	slli	a5,a5,3
	add	a5,a5,a4
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 640 197
	add	a0,a6,a4
	mv	a3,a0
	sltu	a3,a3,a6
	add	a1,a7,a5
	add	a5,a3,a1
	mv	a1,a5
	mv	a2,a0
	mv	a3,a1
	.loc 1 639 24
	lw	a5,-52(s0)
	addi	a5,a5,2
	addi	a4,s0,-792
	slli	a5,a5,3
	add	a5,a5,a4
	sw	a2,0(a5)
	sw	a3,4(a5)
.L19:
	.loc 1 643 36
	lw	a0,-80(s0)
	lw	a1,-76(s0)
	.loc 1 643 55
	lw	a4,-104(s0)
	lw	a5,-100(s0)
	.loc 1 643 72
	slli	a2,a5,18
	srli	a3,a4,14
	add	a3,a2,a3
	sw	a3,-864(s0)
	slli	a3,a4,18
	srli	a5,a5,14
	add	a5,a3,a5
	sw	a5,-860(s0)
	.loc 1 643 118
	lw	a4,-104(s0)
	lw	a5,-100(s0)
	.loc 1 643 135
	slli	a2,a5,14
	srli	a3,a4,18
	add	a3,a2,a3
	sw	a3,-872(s0)
	slli	a3,a4,14
	srli	a5,a5,18
	add	a5,a3,a5
	sw	a5,-868(s0)
	.loc 1 643 105
	lw	a3,-864(s0)
	lw	a4,-860(s0)
	mv	a2,a3
	lw	a5,-872(s0)
	lw	a6,-868(s0)
	mv	a7,a5
	xor	a2,a2,a7
	sw	a2,-880(s0)
	mv	a5,a6
	xor	a5,a4,a5
	sw	a5,-876(s0)
	.loc 1 643 181
	lw	a4,-104(s0)
	lw	a5,-100(s0)
	.loc 1 643 198
	srli	a2,a5,9
	slli	a3,a4,23
	add	a3,a2,a3
	sw	a3,-888(s0)
	srli	a3,a4,9
	slli	a5,a5,23
	add	a5,a3,a5
	sw	a5,-884(s0)
	.loc 1 643 168
	lw	a3,-880(s0)
	lw	a4,-876(s0)
	mv	a2,a3
	lw	a5,-888(s0)
	lw	a6,-884(s0)
	mv	a7,a5
	xor	a2,a2,a7
	sw	a2,-896(s0)
	mv	a5,a6
	xor	a5,a4,a5
	sw	a5,-892(s0)
	.loc 1 643 41
	lw	a6,-896(s0)
	lw	a7,-892(s0)
	mv	a5,a6
	add	a2,a0,a5
	mv	a5,a2
	sltu	a5,a5,a0
	mv	a4,a7
	add	a3,a1,a4
	add	a5,a5,a3
	mv	a3,a5
	mv	t1,a2
	mv	t2,a3
	.loc 1 643 244
	lw	a6,-88(s0)
	lw	a7,-84(s0)
	.loc 1 643 262
	lw	a0,-104(s0)
	lw	a1,-100(s0)
	.loc 1 643 280
	lw	a2,-96(s0)
	lw	a3,-92(s0)
	.loc 1 643 297
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	.loc 1 643 286
	xor	t3,a2,a4
	sw	t3,-904(s0)
	xor	a5,a3,a5
	sw	a5,-900(s0)
	.loc 1 643 268
	lw	a4,-904(s0)
	lw	a5,-900(s0)
	mv	a3,a4
	and	a3,a0,a3
	sw	a3,-912(s0)
	and	a5,a1,a5
	sw	a5,-908(s0)
	.loc 1 643 250
	lw	a4,-912(s0)
	lw	a5,-908(s0)
	mv	a3,a4
	xor	a3,a6,a3
	sw	a3,-920(s0)
	xor	a5,a7,a5
	sw	a5,-916(s0)
	.loc 1 643 232
	lw	a0,-920(s0)
	lw	a1,-916(s0)
	mv	a5,a0
	add	a2,t1,a5
	mv	a5,a2
	sltu	a5,a5,t1
	mv	a4,a1
	add	a3,t2,a4
	add	a5,a5,a3
	mv	a3,a5
	mv	a0,a2
	mv	a1,a3
	.loc 1 643 310
	lui	a5,%hi(K)
	addi	a4,a5,%lo(K)
	lw	a5,-52(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 643 306
	add	a6,a0,a4
	mv	a3,a6
	sltu	a3,a3,a0
	add	a7,a1,a5
	add	a5,a3,a7
	mv	a7,a5
	mv	a0,a6
	mv	a1,a7
	.loc 1 643 325
	lw	a5,-52(s0)
	addi	a5,a5,2
	addi	a4,s0,-792
	slli	a5,a5,3
	add	a5,a5,a4
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 643 315
	add	a6,a0,a4
	mv	a3,a6
	sltu	a3,a3,a0
	add	a7,a1,a5
	add	a5,a3,a7
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	.loc 1 643 26
	sw	a4,-792(s0)
	sw	a5,-788(s0)
	.loc 1 643 357
	lw	a4,-136(s0)
	lw	a5,-132(s0)
	.loc 1 643 374
	slli	a2,a5,4
	srli	a3,a4,28
	add	a3,a2,a3
	sw	a3,-928(s0)
	slli	a3,a4,4
	srli	a5,a5,28
	add	a5,a3,a5
	sw	a5,-924(s0)
	.loc 1 643 420
	lw	a4,-136(s0)
	lw	a5,-132(s0)
	.loc 1 643 437
	srli	a2,a5,2
	slli	a3,a4,30
	add	a3,a2,a3
	sw	a3,-936(s0)
	srli	a3,a4,2
	slli	a5,a5,30
	add	a5,a3,a5
	sw	a5,-932(s0)
	.loc 1 643 407
	lw	a3,-928(s0)
	lw	a4,-924(s0)
	mv	a2,a3
	lw	a5,-936(s0)
	lw	a6,-932(s0)
	mv	a1,a5
	xor	a2,a2,a1
	sw	a2,-944(s0)
	mv	a5,a6
	xor	a5,a4,a5
	sw	a5,-940(s0)
	.loc 1 643 483
	lw	a4,-136(s0)
	lw	a5,-132(s0)
	.loc 1 643 500
	srli	a2,a5,7
	slli	a3,a4,25
	add	a3,a2,a3
	sw	a3,-952(s0)
	srli	a3,a4,7
	slli	a5,a5,25
	add	a5,a3,a5
	sw	a5,-948(s0)
	.loc 1 643 470
	lw	a3,-944(s0)
	lw	a4,-940(s0)
	mv	a2,a3
	lw	a5,-952(s0)
	lw	a6,-948(s0)
	mv	a1,a5
	xor	s6,a2,a1
	mv	a5,a6
	xor	s7,a4,a5
	.loc 1 643 547
	lw	a2,-136(s0)
	lw	a3,-132(s0)
	.loc 1 643 564
	lw	a4,-128(s0)
	lw	a5,-124(s0)
	.loc 1 643 553
	and	a1,a2,a4
	sw	a1,-960(s0)
	and	a5,a3,a5
	sw	a5,-956(s0)
	.loc 1 643 583
	lw	a0,-120(s0)
	lw	a1,-116(s0)
	.loc 1 643 601
	lw	a2,-136(s0)
	lw	a3,-132(s0)
	.loc 1 643 618
	lw	a4,-128(s0)
	lw	a5,-124(s0)
	.loc 1 643 607
	or	a6,a2,a4
	sw	a6,-968(s0)
	or	a5,a3,a5
	sw	a5,-964(s0)
	.loc 1 643 589
	lw	a5,-968(s0)
	lw	a6,-964(s0)
	mv	a4,a5
	and	a4,a0,a4
	sw	a4,-976(s0)
	mv	a5,a6
	and	a5,a1,a5
	sw	a5,-972(s0)
	.loc 1 643 571
	lw	a3,-960(s0)
	lw	a4,-956(s0)
	mv	a2,a3
	lw	a5,-976(s0)
	lw	a6,-972(s0)
	mv	a1,a5
	or	a2,a2,a1
	sw	a2,-984(s0)
	mv	a5,a6
	or	a5,a4,a5
	sw	a5,-980(s0)
	.loc 1 643 534
	lw	a0,-984(s0)
	lw	a1,-980(s0)
	mv	a5,a0
	add	a2,s6,a5
	mv	a5,a2
	sltu	a5,a5,s6
	mv	a4,a1
	add	a3,s7,a4
	add	a5,a5,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	.loc 1 643 343
	sw	a4,-784(s0)
	sw	a5,-780(s0)
	.loc 1 643 636
	lw	a4,-112(s0)
	lw	a5,-108(s0)
	.loc 1 643 649
	lw	a2,-792(s0)
	lw	a3,-788(s0)
	.loc 1 643 641
	add	a6,a4,a2
	mv	a1,a6
	sltu	a1,a1,a4
	add	a7,a5,a3
	add	a5,a1,a7
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	sw	a4,-112(s0)
	sw	a5,-108(s0)
	.loc 1 643 677
	lw	a4,-792(s0)
	lw	a5,-788(s0)
	.loc 1 643 691
	lw	a2,-784(s0)
	lw	a3,-780(s0)
	.loc 1 643 684
	add	a6,a4,a2
	mv	a1,a6
	sltu	a1,a1,a4
	add	a7,a5,a3
	add	a5,a1,a7
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	.loc 1 643 670
	sw	a4,-80(s0)
	sw	a5,-76(s0)
	.loc 1 646 30
	lw	a4,-80(s0)
	lw	a5,-76(s0)
	.loc 1 646 21
	sw	a4,-792(s0)
	sw	a5,-788(s0)
	.loc 1 646 55
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	.loc 1 646 46
	sw	a4,-80(s0)
	sw	a5,-76(s0)
	.loc 1 647 29
	lw	a4,-96(s0)
	lw	a5,-92(s0)
	.loc 1 647 20
	sw	a4,-88(s0)
	sw	a5,-84(s0)
	.loc 1 647 54
	lw	a4,-104(s0)
	lw	a5,-100(s0)
	.loc 1 647 45
	sw	a4,-96(s0)
	sw	a5,-92(s0)
	.loc 1 648 29
	lw	a4,-112(s0)
	lw	a5,-108(s0)
	.loc 1 648 20
	sw	a4,-104(s0)
	sw	a5,-100(s0)
	.loc 1 648 54
	lw	a4,-120(s0)
	lw	a5,-116(s0)
	.loc 1 648 45
	sw	a4,-112(s0)
	sw	a5,-108(s0)
	.loc 1 649 29
	lw	a4,-128(s0)
	lw	a5,-124(s0)
	.loc 1 649 20
	sw	a4,-120(s0)
	sw	a5,-116(s0)
	.loc 1 649 54
	lw	a4,-136(s0)
	lw	a5,-132(s0)
	.loc 1 649 45
	sw	a4,-128(s0)
	sw	a5,-124(s0)
	.loc 1 650 27
	lw	a4,-792(s0)
	lw	a5,-788(s0)
	.loc 1 650 20
	sw	a4,-136(s0)
	sw	a5,-132(s0)
	.loc 1 635 26 discriminator 2
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
.L16:
	.loc 1 635 19 discriminator 1
	lw	a4,-52(s0)
	li	a5,79
	ble	a4,a5,.L20
	.loc 1 683 12
	sw	zero,-52(s0)
	.loc 1 683 5
	j	.L21
.L22:
	.loc 1 684 19
	lw	a4,-804(s0)
	lw	a5,-52(s0)
	addi	a5,a5,2
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 684 33
	lw	a3,-52(s0)
	addi	a2,a3,82
	addi	a3,s0,-792
	slli	a2,a2,3
	add	a3,a2,a3
	lw	a0,0(a3)
	lw	a1,4(a3)
	.loc 1 684 23
	add	a2,a4,a0
	mv	a6,a2
	sltu	a6,a6,a4
	add	a3,a5,a1
	add	a5,a6,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	lw	a2,-804(s0)
	lw	a3,-52(s0)
	addi	a3,a3,2
	slli	a3,a3,3
	add	a3,a2,a3
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 683 25 discriminator 3
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
.L21:
	.loc 1 683 19 discriminator 1
	lw	a4,-52(s0)
	li	a5,7
	ble	a4,a5,.L22
	.loc 1 688 5
	addi	a5,s0,-792
	li	a1,720
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 1 690 12
	li	a5,0
	.loc 1 691 1
	mv	a0,a5
	lw	ra,988(sp)
	.cfi_restore 1
	lw	s0,984(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 992
	lw	s2,980(sp)
	.cfi_restore 18
	lw	s3,976(sp)
	.cfi_restore 19
	lw	s4,972(sp)
	.cfi_restore 20
	lw	s5,968(sp)
	.cfi_restore 21
	lw	s6,964(sp)
	.cfi_restore 22
	lw	s7,960(sp)
	.cfi_restore 23
	lw	s8,956(sp)
	.cfi_restore 24
	lw	s9,952(sp)
	.cfi_restore 25
	lw	s10,948(sp)
	.cfi_restore 26
	lw	s11,944(sp)
	.cfi_restore 27
	addi	sp,sp,992
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	mbedtls_internal_sha512_process, .-mbedtls_internal_sha512_process
	.section	.text.mbedtls_internal_sha512_process_many,"ax",@progbits
	.align	1
	.type	mbedtls_internal_sha512_process_many, @function
mbedtls_internal_sha512_process_many:
.LFB21:
	.loc 1 700 1
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
	.loc 1 701 12
	sw	zero,-20(s0)
	.loc 1 703 11
	j	.L25
.L28:
	.loc 1 704 13
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_internal_sha512_process
	mv	a5,a0
	.loc 1 704 12 discriminator 1
	beq	a5,zero,.L26
	.loc 1 705 20
	li	a5,0
	j	.L27
.L26:
	.loc 1 708 14
	lw	a5,-40(s0)
	addi	a5,a5,128
	sw	a5,-40(s0)
	.loc 1 709 13
	lw	a5,-44(s0)
	addi	a5,a5,-128
	sw	a5,-44(s0)
	.loc 1 711 19
	lw	a5,-20(s0)
	addi	a5,a5,128
	sw	a5,-20(s0)
.L25:
	.loc 1 703 16
	lw	a4,-44(s0)
	li	a5,127
	bgtu	a4,a5,.L28
	.loc 1 714 12
	lw	a5,-20(s0)
.L27:
	.loc 1 715 1
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
	.size	mbedtls_internal_sha512_process_many, .-mbedtls_internal_sha512_process_many
	.section	.text.mbedtls_sha512_update,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_update
	.type	mbedtls_sha512_update, @function
mbedtls_sha512_update:
.LFB22:
	.loc 1 763 1
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
	.loc 1 764 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 1 768 8
	lw	a5,-44(s0)
	bne	a5,zero,.L30
	.loc 1 769 16
	li	a5,0
	j	.L31
.L30:
	.loc 1 772 38
	lw	a5,-36(s0)
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 772 12
	mv	a5,a4
	.loc 1 772 10
	andi	a5,a5,127
	sw	a5,-20(s0)
	.loc 1 773 10
	li	a4,128
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 775 15
	lw	a5,-36(s0)
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 775 22
	lw	a3,-44(s0)
	mv	a6,a3
	li	a7,0
	.loc 1 775 19
	add	a2,a4,a6
	mv	a1,a2
	sltu	a1,a1,a4
	add	a3,a5,a7
	add	a5,a1,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	lw	a3,-36(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 777 19
	lw	a5,-36(s0)
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 777 23
	lw	a3,-44(s0)
	mv	t1,a3
	li	t2,0
	.loc 1 777 8
	mv	a2,t2
	mv	a3,a5
	bgtu	a2,a3,.L40
	mv	a2,t2
	mv	a3,a5
	bne	a2,a3,.L32
	mv	a3,t1
	mv	a5,a4
	bleu	a3,a5,.L32
.L40:
	.loc 1 778 19
	lw	a5,-36(s0)
	lw	a4,8(a5)
	lw	a5,12(a5)
	.loc 1 778 22
	li	a0,1
	li	a1,0
	add	a2,a4,a0
	mv	a6,a2
	sltu	a6,a6,a4
	add	a3,a5,a1
	add	a5,a6,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	lw	a3,-36(s0)
	sw	a4,8(a3)
	sw	a5,12(a3)
.L32:
	.loc 1 781 8
	lw	a5,-20(s0)
	beq	a5,zero,.L36
	.loc 1 781 14 discriminator 1
	lw	a4,-44(s0)
	lw	a5,-28(s0)
	bltu	a4,a5,.L36
	.loc 1 782 26
	lw	a5,-36(s0)
	addi	a4,a5,80
	.loc 1 782 9
	lw	a5,-20(s0)
	add	a5,a4,a5
	lw	a2,-28(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 784 60
	lw	a5,-36(s0)
	addi	a5,a5,80
	.loc 1 784 20
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_internal_sha512_process
	sw	a0,-24(s0)
	.loc 1 784 12 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L35
	.loc 1 785 20
	lw	a5,-24(s0)
	j	.L31
.L35:
	.loc 1 788 15
	lw	a4,-40(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 1 789 14
	lw	a4,-44(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	sw	a5,-44(s0)
	.loc 1 790 14
	sw	zero,-20(s0)
	.loc 1 793 11
	j	.L36
.L38:
.LBB10:
	.loc 1 795 13
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_internal_sha512_process_many
	sw	a0,-32(s0)
	.loc 1 796 12
	lw	a4,-32(s0)
	li	a5,127
	bgtu	a4,a5,.L37
	.loc 1 797 20
	li	a5,-1
	j	.L31
.L37:
	.loc 1 800 15
	lw	a4,-40(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 1 801 14
	lw	a4,-44(s0)
	lw	a5,-32(s0)
	sub	a5,a4,a5
	sw	a5,-44(s0)
.L36:
.LBE10:
	.loc 1 793 17
	lw	a4,-44(s0)
	li	a5,127
	bgtu	a4,a5,.L38
	.loc 1 804 8
	lw	a5,-44(s0)
	beq	a5,zero,.L39
	.loc 1 805 26
	lw	a5,-36(s0)
	addi	a4,a5,80
	.loc 1 805 9
	lw	a5,-20(s0)
	add	a5,a4,a5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcpy
.L39:
	.loc 1 808 12
	li	a5,0
.L31:
	.loc 1 809 1
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
	.size	mbedtls_sha512_update, .-mbedtls_sha512_update
	.section	.text.mbedtls_sha512_finish,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_finish
	.type	mbedtls_sha512_finish, @function
mbedtls_sha512_finish:
.LFB23:
	.loc 1 816 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s2,68(sp)
	sw	s3,64(sp)
	sw	s4,60(sp)
	sw	s5,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	.loc 1 817 9
	li	a5,-110
	sw	a5,-36(s0)
	.loc 1 820 9
	sw	zero,-40(s0)
	.loc 1 825 22
	lw	a5,-68(s0)
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 825 26
	mv	a5,a4
	.loc 1 825 10
	andi	a5,a5,127
	sw	a5,-44(s0)
	.loc 1 827 21
	lw	a5,-44(s0)
	addi	a4,a5,1
	sw	a4,-44(s0)
	.loc 1 827 25
	lw	a4,-68(s0)
	add	a5,a4,a5
	li	a4,-128
	sb	a4,80(a5)
	.loc 1 829 8
	lw	a4,-44(s0)
	li	a5,112
	bgtu	a4,a5,.L42
	.loc 1 831 16
	lw	a5,-68(s0)
	addi	a4,a5,80
	.loc 1 831 9
	lw	a5,-44(s0)
	add	a3,a4,a5
	.loc 1 831 43
	li	a4,112
	lw	a5,-44(s0)
	sub	a5,a4,a5
	.loc 1 831 9
	mv	a2,a5
	li	a1,0
	mv	a0,a3
	call	memset
	j	.L43
.L42:
	.loc 1 834 16
	lw	a5,-68(s0)
	addi	a4,a5,80
	.loc 1 834 9
	lw	a5,-44(s0)
	add	a3,a4,a5
	.loc 1 834 43
	li	a4,128
	lw	a5,-44(s0)
	sub	a5,a4,a5
	.loc 1 834 9
	mv	a2,a5
	li	a1,0
	mv	a0,a3
	call	memset
	.loc 1 836 60
	lw	a5,-68(s0)
	addi	a5,a5,80
	.loc 1 836 20
	mv	a1,a5
	lw	a0,-68(s0)
	call	mbedtls_internal_sha512_process
	sw	a0,-36(s0)
	.loc 1 836 12 discriminator 1
	lw	a5,-36(s0)
	bne	a5,zero,.L49
	.loc 1 840 19
	lw	a5,-68(s0)
	addi	a5,a5,80
	.loc 1 840 9
	li	a2,112
	li	a1,0
	mv	a0,a5
	call	memset
.L43:
	.loc 1 846 23
	lw	a5,-68(s0)
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 846 27
	srli	s4,a5,29
	li	s5,0
	.loc 1 847 25
	lw	a5,-68(s0)
	lw	a4,8(a5)
	lw	a5,12(a5)
	.loc 1 847 29
	srli	a3,a4,29
	slli	s3,a5,3
	add	s3,a3,s3
	slli	s2,a4,3
	.loc 1 846 10
	or	a5,s4,s2
	sw	a5,-56(s0)
	or	a5,s5,s3
	sw	a5,-52(s0)
	.loc 1 848 22
	lw	a5,-68(s0)
	lw	a4,0(a5)
	lw	a5,4(a5)
	.loc 1 848 9
	srli	a3,a4,29
	slli	a2,a5,3
	add	a3,a2,a3
	sw	a3,-60(s0)
	slli	a5,a4,3
	sw	a5,-64(s0)
	.loc 1 850 35
	lw	a5,-68(s0)
	addi	a5,a5,80
	.loc 1 850 5
	li	a3,112
	mv	a2,a5
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	sha512_put_uint64_be
	.loc 1 851 34
	lw	a5,-68(s0)
	addi	a5,a5,80
	.loc 1 851 5
	li	a3,120
	mv	a2,a5
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	sha512_put_uint64_be
	.loc 1 853 56
	lw	a5,-68(s0)
	addi	a5,a5,80
	.loc 1 853 16
	mv	a1,a5
	lw	a0,-68(s0)
	call	mbedtls_internal_sha512_process
	sw	a0,-36(s0)
	.loc 1 853 8 discriminator 1
	lw	a5,-36(s0)
	bne	a5,zero,.L50
	.loc 1 860 5
	lw	a5,-68(s0)
	lw	a4,16(a5)
	lw	a5,20(a5)
	li	a3,0
	lw	a2,-72(s0)
	mv	a0,a4
	mv	a1,a5
	call	sha512_put_uint64_be
	.loc 1 861 5
	lw	a5,-68(s0)
	lw	a4,24(a5)
	lw	a5,28(a5)
	li	a3,8
	lw	a2,-72(s0)
	mv	a0,a4
	mv	a1,a5
	call	sha512_put_uint64_be
	.loc 1 862 5
	lw	a5,-68(s0)
	lw	a4,32(a5)
	lw	a5,36(a5)
	li	a3,16
	lw	a2,-72(s0)
	mv	a0,a4
	mv	a1,a5
	call	sha512_put_uint64_be
	.loc 1 863 5
	lw	a5,-68(s0)
	lw	a4,40(a5)
	lw	a5,44(a5)
	li	a3,24
	lw	a2,-72(s0)
	mv	a0,a4
	mv	a1,a5
	call	sha512_put_uint64_be
	.loc 1 864 5
	lw	a5,-68(s0)
	lw	a4,48(a5)
	lw	a5,52(a5)
	li	a3,32
	lw	a2,-72(s0)
	mv	a0,a4
	mv	a1,a5
	call	sha512_put_uint64_be
	.loc 1 865 5
	lw	a5,-68(s0)
	lw	a4,56(a5)
	lw	a5,60(a5)
	li	a3,40
	lw	a2,-72(s0)
	mv	a0,a4
	mv	a1,a5
	call	sha512_put_uint64_be
	.loc 1 868 15
	lw	a5,-68(s0)
	lw	a5,208(a5)
	sw	a5,-40(s0)
	.loc 1 870 8
	lw	a5,-40(s0)
	bne	a5,zero,.L47
	.loc 1 871 9
	lw	a5,-68(s0)
	lw	a4,64(a5)
	lw	a5,68(a5)
	li	a3,48
	lw	a2,-72(s0)
	mv	a0,a4
	mv	a1,a5
	call	sha512_put_uint64_be
	.loc 1 872 9
	lw	a5,-68(s0)
	lw	a4,72(a5)
	lw	a5,76(a5)
	li	a3,56
	lw	a2,-72(s0)
	mv	a0,a4
	mv	a1,a5
	call	sha512_put_uint64_be
.L47:
	.loc 1 875 9
	sw	zero,-36(s0)
	j	.L45
.L49:
	.loc 1 837 13
	nop
	j	.L45
.L50:
	.loc 1 854 9
	nop
.L45:
	.loc 1 878 5
	lw	a0,-68(s0)
	call	mbedtls_sha512_free
	.loc 1 879 12
	lw	a5,-36(s0)
	.loc 1 880 1
	mv	a0,a5
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s2,68(sp)
	.cfi_restore 18
	lw	s3,64(sp)
	.cfi_restore 19
	lw	s4,60(sp)
	.cfi_restore 20
	lw	s5,56(sp)
	.cfi_restore 21
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	mbedtls_sha512_finish, .-mbedtls_sha512_finish
	.section	.text.mbedtls_sha512,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512
	.type	mbedtls_sha512, @function
mbedtls_sha512:
.LFB24:
	.loc 1 891 1
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
	.loc 1 892 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 896 8
	lw	a5,-256(s0)
	beq	a5,zero,.L52
	.loc 1 896 20 discriminator 1
	lw	a4,-256(s0)
	li	a5,1
	beq	a4,a5,.L52
	.loc 1 897 16
	li	a5,-117
	j	.L57
.L52:
	.loc 1 909 5
	addi	a5,s0,-240
	mv	a0,a5
	call	mbedtls_sha512_init
	.loc 1 911 16
	addi	a5,s0,-240
	lw	a1,-256(s0)
	mv	a0,a5
	call	mbedtls_sha512_starts
	sw	a0,-20(s0)
	.loc 1 911 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L58
	.loc 1 915 16
	addi	a5,s0,-240
	lw	a2,-248(s0)
	lw	a1,-244(s0)
	mv	a0,a5
	call	mbedtls_sha512_update
	sw	a0,-20(s0)
	.loc 1 915 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L59
	.loc 1 919 16
	addi	a5,s0,-240
	lw	a1,-252(s0)
	mv	a0,a5
	call	mbedtls_sha512_finish
	sw	a0,-20(s0)
	.loc 1 923 1
	j	.L55
.L58:
	.loc 1 912 9
	nop
	j	.L55
.L59:
	.loc 1 916 9
	nop
.L55:
	.loc 1 924 5
	addi	a5,s0,-240
	mv	a0,a5
	call	mbedtls_sha512_free
	.loc 1 926 12
	lw	a5,-20(s0)
.L57:
	.loc 1 927 1
	mv	a0,a5
	lw	ra,252(sp)
	.cfi_restore 1
	lw	s0,248(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 256
	addi	sp,sp,256
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE24:
	.size	mbedtls_sha512, .-mbedtls_sha512
	.section	.rodata.sha_test_buf,"a"
	.align	2
	.type	sha_test_buf, @object
	.size	sha_test_buf, 339
sha_test_buf:
	.string	"abc"
	.zero	109
	.string	"abcdefghbcdefghicdefghijdefghijkefghijklfghijklmghijklmnhijklmnoijklmnopjklmnopqklmnopqrlmnopqrsmnopqrstnopqrstu"
	.string	""
	.zero	112
	.section	.rodata.sha_test_buflen,"a"
	.align	2
	.type	sha_test_buflen, @object
	.size	sha_test_buflen, 12
sha_test_buflen:
	.word	3
	.word	112
	.word	1000
	.section	.rodata.sha384_test_sum,"a"
	.align	2
	.type	sha384_test_sum, @object
	.size	sha384_test_sum, 192
sha384_test_sum:
	.base64	"ywB1P0WjXou1oD1pmsZQBycsMqsO3tFjGotgWkP/W+2AhgcroefMI1i67KE0yCWnAA=="
	.zero	15
	.base64	"CTMMM/cRR+g9GS/Hgs0bR1MRGxc7OwXSL6CAhuOw9xL8x8caVX4tuWbD6fqRdGA5AA=="
	.zero	15
	.base64	"nQ4YCXFkdMsIboNOMQpKHO0UnpwA8khSeXLOxXBMKlsHuLPcOOzE666X3dh/PYmFAA=="
	.zero	15
	.section	.rodata.sha512_test_sum,"a"
	.align	2
	.type	sha512_test_sum, @object
	.size	sha512_test_sum, 192
sha512_test_sum:
	.base64	"3a81oZNherrMQXNJriBBMRLm+k6JqX6iCp7u5ktV05ohkpkqJ0/BqDa6PCOj/uu9RU1EI2Q86A4qmslPpUyknw=="
	.base64	"jpWbddrjE9qM9PcoFPwUP493ecbrn3+hcpmurbaIkBhQHSieSQD35DMbmd7EtUM6x9Mp7rbdJlReluVbh0vpCQ=="
	.base64	"5xhIPQznaWROLkLHvBW0Y44fmLE7IEQoVjKoA6+pc+veD/JEh36mCkywQyzld8Mb6wCcXCxJqi5OrbIXrYzAmw=="
	.section	.rodata
	.align	2
.LC16:
	.string	"Buffer allocation failed\n"
	.align	2
.LC17:
	.string	"  SHA-%d test #%d: "
	.align	2
.LC18:
	.string	"passed\n"
	.align	2
.LC19:
	.string	"\n"
	.align	2
.LC20:
	.string	"failed\n"
	.section	.text.mbedtls_sha512_common_self_test,"ax",@progbits
	.align	1
	.type	mbedtls_sha512_common_self_test, @function
mbedtls_sha512_common_self_test:
.LFB25:
	.loc 1 1011 1
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
	.loc 1 1012 20
	sw	zero,-24(s0)
	.loc 1 1018 62
	lw	a5,-328(s0)
	beq	a5,zero,.L61
	.loc 1 1018 21 discriminator 1
	lui	a5,%hi(sha384_test_sum)
	addi	a5,a5,%lo(sha384_test_sum)
	sw	a5,-28(s0)
	j	.L62
.L61:
	.loc 1 1018 21 is_stmt 0 discriminator 2
	lui	a5,%hi(sha512_test_sum)
	addi	a5,a5,%lo(sha512_test_sum)
	sw	a5,-28(s0)
.L62:
	.loc 1 1025 11 is_stmt 1
	li	a1,1
	li	a0,1024
	call	calloc
	mv	a5,a0
	sw	a5,-36(s0)
	.loc 1 1026 8
	lw	a5,-36(s0)
	bne	a5,zero,.L63
	.loc 1 1027 12
	lw	a5,-324(s0)
	beq	a5,zero,.L64
	.loc 1 1028 13
	lui	a5,%hi(.LC16)
	addi	a0,a5,%lo(.LC16)
	call	printf
.L64:
	.loc 1 1031 16
	li	a5,1
	j	.L81
.L63:
	.loc 1 1034 5
	addi	a5,s0,-320
	mv	a0,a5
	call	mbedtls_sha512_init
	.loc 1 1036 12
	sw	zero,-20(s0)
	.loc 1 1036 5
	j	.L66
.L78:
	.loc 1 1037 12
	lw	a5,-324(s0)
	beq	a5,zero,.L67
	.loc 1 1038 47
	li	a4,4
	lw	a5,-328(s0)
	sub	a5,a4,a5
	.loc 1 1038 13
	slli	a4,a5,7
	lw	a5,-20(s0)
	addi	a5,a5,1
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC17)
	addi	a0,a5,%lo(.LC17)
	call	printf
.L67:
	.loc 1 1041 20
	addi	a5,s0,-320
	lw	a1,-328(s0)
	mv	a0,a5
	call	mbedtls_sha512_starts
	sw	a0,-24(s0)
	.loc 1 1041 12 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L82
	.loc 1 1045 12
	lw	a4,-20(s0)
	li	a5,2
	bne	a4,a5,.L70
	.loc 1 1046 37
	li	a5,1000
	sw	a5,-40(s0)
	.loc 1 1046 13
	li	a2,1000
	li	a1,97
	lw	a0,-36(s0)
	call	memset
.LBB11:
	.loc 1 1048 22
	sw	zero,-32(s0)
	.loc 1 1048 13
	j	.L71
.L73:
	.loc 1 1049 23
	lw	a4,-40(s0)
	addi	a5,s0,-320
	mv	a2,a4
	lw	a1,-36(s0)
	mv	a0,a5
	call	mbedtls_sha512_update
	sw	a0,-24(s0)
	.loc 1 1050 20
	lw	a5,-24(s0)
	bne	a5,zero,.L83
	.loc 1 1048 40 discriminator 2
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L71:
	.loc 1 1048 31 discriminator 1
	lw	a4,-32(s0)
	li	a5,999
	ble	a4,a5,.L73
	j	.L74
.L70:
.LBE11:
	.loc 1 1055 59
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	sub	a5,a5,a4
	slli	a5,a5,4
	add	a5,a5,a4
	lui	a4,%hi(sha_test_buf)
	addi	a4,a4,%lo(sha_test_buf)
	add	a3,a5,a4
	.loc 1 1056 56
	lui	a5,%hi(sha_test_buflen)
	addi	a4,a5,%lo(sha_test_buflen)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 1055 19
	addi	a5,s0,-320
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	mbedtls_sha512_update
	sw	a0,-24(s0)
	.loc 1 1057 16
	lw	a5,-24(s0)
	bne	a5,zero,.L84
.L74:
	.loc 1 1062 20
	addi	a4,s0,-104
	addi	a5,s0,-320
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_sha512_finish
	sw	a0,-24(s0)
	.loc 1 1062 12 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L85
	.loc 1 1066 43
	lw	a5,-20(s0)
	slli	a5,a5,6
	lw	a4,-28(s0)
	add	a3,a4,a5
	.loc 1 1066 51
	li	a4,4
	lw	a5,-328(s0)
	sub	a5,a4,a5
	slli	a5,a5,4
	.loc 1 1066 13
	mv	a4,a5
	addi	a5,s0,-104
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 1 1066 12 discriminator 1
	beq	a5,zero,.L76
	.loc 1 1067 17
	li	a5,1
	sw	a5,-24(s0)
	.loc 1 1068 13
	j	.L69
.L76:
	.loc 1 1071 12
	lw	a5,-324(s0)
	beq	a5,zero,.L77
	.loc 1 1072 13
	lui	a5,%hi(.LC18)
	addi	a0,a5,%lo(.LC18)
	call	printf
.L77:
	.loc 1 1036 25 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L66:
	.loc 1 1036 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,2
	ble	a4,a5,.L78
	.loc 1 1076 8
	lw	a5,-324(s0)
	beq	a5,zero,.L86
	.loc 1 1077 9
	lui	a5,%hi(.LC19)
	addi	a0,a5,%lo(.LC19)
	call	printf
	.loc 1 1080 5
	j	.L86
.L82:
	.loc 1 1042 13
	nop
	j	.L69
.L83:
.LBB12:
	.loc 1 1051 21
	nop
	j	.L69
.L84:
.LBE12:
	.loc 1 1058 17
	nop
	j	.L69
.L85:
	.loc 1 1063 13
	nop
.L69:
	.loc 1 1083 8
	lw	a5,-324(s0)
	beq	a5,zero,.L87
	.loc 1 1084 9
	lui	a5,%hi(.LC20)
	addi	a0,a5,%lo(.LC20)
	call	printf
	j	.L80
.L86:
	.loc 1 1080 5
	nop
	j	.L80
.L87:
	.loc 1 1087 1
	nop
.L80:
	.loc 1 1088 5
	addi	a5,s0,-320
	mv	a0,a5
	call	mbedtls_sha512_free
	.loc 1 1089 5
	lw	a0,-36(s0)
	call	free
	.loc 1 1091 12
	lw	a5,-24(s0)
.L81:
	.loc 1 1092 1
	mv	a0,a5
	lw	ra,332(sp)
	.cfi_restore 1
	lw	s0,328(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 336
	addi	sp,sp,336
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE25:
	.size	mbedtls_sha512_common_self_test, .-mbedtls_sha512_common_self_test
	.section	.text.mbedtls_sha512_self_test,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_self_test
	.type	mbedtls_sha512_self_test, @function
mbedtls_sha512_self_test:
.LFB26:
	.loc 1 1096 1
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
	.loc 1 1097 12
	li	a1,0
	lw	a0,-20(s0)
	call	mbedtls_sha512_common_self_test
	mv	a5,a0
	.loc 1 1098 1
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
	.size	mbedtls_sha512_self_test, .-mbedtls_sha512_self_test
	.section	.text.mbedtls_sha384_self_test,"ax",@progbits
	.align	1
	.globl	mbedtls_sha384_self_test
	.type	mbedtls_sha384_self_test, @function
mbedtls_sha384_self_test:
.LFB27:
	.loc 1 1103 1
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
	.loc 1 1104 12
	li	a1,1
	lw	a0,-20(s0)
	call	mbedtls_sha512_common_self_test
	mv	a5,a0
	.loc 1 1105 1
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
.LFE27:
	.size	mbedtls_sha384_self_test, .-mbedtls_sha384_self_test
	.section	.rodata
	.align	3
.LC0:
	.word	-205731576
	.word	1779033703
	.align	3
.LC1:
	.word	-2067093701
	.word	-1150833019
	.align	3
.LC2:
	.word	-23791573
	.word	1013904242
	.align	3
.LC3:
	.word	1595750129
	.word	-1521486534
	.align	3
.LC4:
	.word	-1377402159
	.word	1359893119
	.align	3
.LC5:
	.word	725511199
	.word	-1694144372
	.align	3
.LC6:
	.word	-79577749
	.word	528734635
	.align	3
.LC7:
	.word	327033209
	.word	1541459225
	.align	3
.LC8:
	.word	-1056596264
	.word	-876896931
	.align	3
.LC9:
	.word	914150663
	.word	1654270250
	.align	3
.LC10:
	.word	812702999
	.word	-1856437926
	.align	3
.LC11:
	.word	-150054599
	.word	355462360
	.align	3
.LC12:
	.word	-4191439
	.word	1731405415
	.align	3
.LC13:
	.word	1750603025
	.word	-1900787065
	.align	3
.LC14:
	.word	1694076839
	.word	-619958771
	.align	3
.LC15:
	.word	-1090891868
	.word	1203062813
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/sha512.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x883
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1a
	.4byte	.LASF67
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL1
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x7
	.4byte	0x32
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xc
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x7
	.4byte	0x76
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xc
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x7
	.4byte	0x8e
	.uleb128 0xc
	.4byte	.LASF14
	.byte	0x4
	.byte	0x37
	.byte	0x20
	.4byte	0x61
	.uleb128 0x7
	.4byte	0x9f
	.uleb128 0x1c
	.byte	0x4
	.uleb128 0x11
	.4byte	0xb0
	.uleb128 0x9
	.4byte	0x32
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x7
	.4byte	0xbc
	.uleb128 0x9
	.4byte	0xc3
	.uleb128 0x11
	.4byte	0xc8
	.uleb128 0x9
	.4byte	0xdc
	.uleb128 0x11
	.4byte	0xd2
	.uleb128 0x1d
	.uleb128 0x1e
	.byte	0x8
	.byte	0x2
	.byte	0x5c
	.byte	0x9
	.4byte	0xf2
	.uleb128 0x1f
	.string	"x"
	.byte	0x2
	.byte	0x5d
	.byte	0xe
	.4byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x2
	.byte	0x5e
	.byte	0x1b
	.4byte	0xdd
	.uleb128 0x20
	.4byte	.LASF21
	.byte	0xd8
	.byte	0x5
	.byte	0x27
	.byte	0x10
	.4byte	0x13c
	.uleb128 0xf
	.4byte	.LASF17
	.byte	0x28
	.byte	0xe
	.4byte	0x13c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF18
	.byte	0x29
	.byte	0xe
	.4byte	0x14c
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x2a
	.byte	0x13
	.4byte	0x15c
	.byte	0x50
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x2c
	.byte	0x9
	.4byte	0x68
	.byte	0xd0
	.byte	0
	.uleb128 0x8
	.4byte	0x9f
	.4byte	0x14c
	.uleb128 0x4
	.4byte	0x6f
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x9f
	.4byte	0x15c
	.uleb128 0x4
	.4byte	0x6f
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x32
	.4byte	0x16c
	.uleb128 0x4
	.4byte	0x6f
	.byte	0x7f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x5
	.byte	0x30
	.byte	0x1
	.4byte	0xfe
	.uleb128 0x7
	.4byte	0x16c
	.uleb128 0x8
	.4byte	0xab
	.4byte	0x18d
	.uleb128 0x4
	.4byte	0x6f
	.byte	0x4f
	.byte	0
	.uleb128 0x7
	.4byte	0x17d
	.uleb128 0x5
	.string	"K"
	.2byte	0x12b
	.byte	0x17
	.4byte	0x18d
	.uleb128 0x5
	.byte	0x3
	.4byte	K
	.uleb128 0x8
	.4byte	0x39
	.4byte	0x1b8
	.uleb128 0x4
	.4byte	0x6f
	.byte	0x2
	.uleb128 0x4
	.4byte	0x6f
	.byte	0x70
	.byte	0
	.uleb128 0x7
	.4byte	0x1a2
	.uleb128 0x1
	.4byte	.LASF22
	.2byte	0x3a6
	.byte	0x1c
	.4byte	0x1b8
	.uleb128 0x5
	.byte	0x3
	.4byte	sha_test_buf
	.uleb128 0x8
	.4byte	0x82
	.4byte	0x1df
	.uleb128 0x4
	.4byte	0x6f
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	0x1cf
	.uleb128 0x1
	.4byte	.LASF23
	.2byte	0x3af
	.byte	0x15
	.4byte	0x1df
	.uleb128 0x5
	.byte	0x3
	.4byte	sha_test_buflen
	.uleb128 0x21
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x3b4
	.byte	0x1e
	.4byte	0x203
	.uleb128 0x8
	.4byte	0x39
	.4byte	0x213
	.uleb128 0x4
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0x8
	.4byte	0x39
	.4byte	0x229
	.uleb128 0x4
	.4byte	0x6f
	.byte	0x2
	.uleb128 0x4
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0x7
	.4byte	0x213
	.uleb128 0x1
	.4byte	.LASF25
	.2byte	0x3ba
	.byte	0x17
	.4byte	0x229
	.uleb128 0x5
	.byte	0x3
	.4byte	sha384_test_sum
	.uleb128 0x1
	.4byte	.LASF26
	.2byte	0x3d5
	.byte	0x17
	.4byte	0x229
	.uleb128 0x5
	.byte	0x3
	.4byte	sha512_test_sum
	.uleb128 0x17
	.4byte	.LASF31
	.byte	0x8
	.byte	0x5e
	.4byte	0x263
	.uleb128 0x2
	.4byte	0xb0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x6
	.byte	0x1e
	.byte	0x5
	.4byte	0x68
	.4byte	0x283
	.uleb128 0x2
	.4byte	0xd2
	.uleb128 0x2
	.4byte	0xd2
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x7
	.byte	0xce
	.byte	0x5
	.4byte	0x68
	.4byte	0x29a
	.uleb128 0x2
	.4byte	0xcd
	.uleb128 0x22
	.byte	0
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x8
	.byte	0x5a
	.byte	0x7
	.4byte	0xb0
	.4byte	0x2b5
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x6
	.byte	0x1f
	.byte	0x8
	.4byte	0xb0
	.4byte	0x2d5
	.uleb128 0x2
	.4byte	0xb2
	.uleb128 0x2
	.4byte	0xd7
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0x17
	.4byte	.LASF32
	.byte	0x9
	.byte	0x9f
	.4byte	0x2eb
	.uleb128 0x2
	.4byte	0xb0
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x6
	.byte	0x21
	.byte	0x8
	.4byte	0xb0
	.4byte	0x30b
	.uleb128 0x2
	.4byte	0xb0
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0xb
	.4byte	.LASF34
	.2byte	0x44e
	.4byte	0x68
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x334
	.uleb128 0x3
	.4byte	.LASF36
	.2byte	0x44e
	.byte	0x22
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF35
	.2byte	0x447
	.4byte	0x68
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x35d
	.uleb128 0x3
	.4byte	.LASF36
	.2byte	0x447
	.byte	0x22
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF54
	.2byte	0x3f2
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42a
	.uleb128 0x3
	.4byte	.LASF36
	.2byte	0x3f2
	.byte	0x30
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x3
	.4byte	.LASF20
	.2byte	0x3f2
	.byte	0x3d
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x5
	.string	"i"
	.2byte	0x3f4
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF37
	.2byte	0x3f4
	.byte	0xc
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"ret"
	.2byte	0x3f4
	.byte	0x14
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"buf"
	.2byte	0x3f5
	.byte	0x14
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x3f6
	.byte	0x13
	.4byte	0x42a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x5
	.string	"ctx"
	.2byte	0x3f7
	.byte	0x1c
	.4byte	0x16c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1
	.4byte	.LASF39
	.2byte	0x3fa
	.byte	0x15
	.4byte	0x43a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.4byte	.LASF40
	.2byte	0x43a
	.4byte	.L69
	.uleb128 0x10
	.4byte	.LASF41
	.2byte	0x43f
	.4byte	.L80
	.uleb128 0x23
	.4byte	.LLRL0
	.uleb128 0x5
	.string	"j"
	.2byte	0x418
	.byte	0x16
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x32
	.4byte	0x43a
	.uleb128 0x4
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0x9
	.4byte	0x1f6
	.uleb128 0xb
	.4byte	.LASF42
	.2byte	0x377
	.4byte	0x68
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c3
	.uleb128 0x3
	.4byte	.LASF43
	.2byte	0x377
	.byte	0x29
	.4byte	0x4c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x3
	.4byte	.LASF44
	.2byte	0x378
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x3
	.4byte	.LASF45
	.2byte	0x379
	.byte	0x23
	.4byte	0xb7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x3
	.4byte	.LASF20
	.2byte	0x37a
	.byte	0x18
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x5
	.string	"ret"
	.2byte	0x37c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"ctx"
	.2byte	0x37d
	.byte	0x1c
	.4byte	0x16c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x10
	.4byte	.LASF41
	.2byte	0x39b
	.4byte	.L55
	.byte	0
	.uleb128 0x9
	.4byte	0x39
	.uleb128 0xb
	.4byte	.LASF46
	.2byte	0x32e
	.4byte	0x68
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x558
	.uleb128 0xe
	.string	"ctx"
	.2byte	0x32e
	.byte	0x33
	.4byte	0x558
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.4byte	.LASF45
	.2byte	0x32f
	.byte	0x2a
	.4byte	0xb7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.string	"ret"
	.2byte	0x331
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x332
	.byte	0xe
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF48
	.2byte	0x333
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.string	"low"
	.2byte	0x333
	.byte	0x14
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF49
	.2byte	0x334
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.4byte	.LASF41
	.2byte	0x36d
	.4byte	.L45
	.byte	0
	.uleb128 0x9
	.4byte	0x16c
	.uleb128 0xb
	.4byte	.LASF50
	.2byte	0x2f8
	.4byte	0x68
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ea
	.uleb128 0xe
	.string	"ctx"
	.2byte	0x2f8
	.byte	0x33
	.4byte	0x558
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF43
	.2byte	0x2f9
	.byte	0x30
	.4byte	0x4c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF44
	.2byte	0x2fa
	.byte	0x22
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.string	"ret"
	.2byte	0x2fc
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF51
	.2byte	0x2fd
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF52
	.2byte	0x2fe
	.byte	0x12
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x1
	.4byte	.LASF53
	.2byte	0x31a
	.byte	0x10
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF55
	.2byte	0x2ba
	.byte	0xf
	.4byte	0x76
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x641
	.uleb128 0xe
	.string	"ctx"
	.2byte	0x2bb
	.byte	0x1d
	.4byte	0x558
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF56
	.2byte	0x2bb
	.byte	0x31
	.4byte	0x641
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"len"
	.2byte	0x2bb
	.byte	0x3e
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF53
	.2byte	0x2bd
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x9a
	.uleb128 0xb
	.4byte	.LASF57
	.2byte	0x259
	.4byte	0x68
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x703
	.uleb128 0xe
	.string	"ctx"
	.2byte	0x259
	.byte	0x3d
	.4byte	0x558
	.uleb128 0x3
	.byte	0x91
	.sleb128 -804
	.uleb128 0x3
	.4byte	.LASF56
	.2byte	0x25a
	.byte	0x3b
	.4byte	0x4c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -808
	.uleb128 0x5
	.string	"i"
	.2byte	0x25c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.2byte	0x2d0
	.byte	0x1
	.2byte	0x25d
	.byte	0x5
	.4byte	0x6c7
	.uleb128 0x19
	.4byte	.LASF58
	.byte	0x12
	.4byte	0x9f
	.byte	0
	.uleb128 0x19
	.4byte	.LASF59
	.byte	0x19
	.4byte	0x9f
	.byte	0x8
	.uleb128 0x26
	.string	"W"
	.byte	0x1
	.2byte	0x25e
	.byte	0x20
	.4byte	0x703
	.byte	0x10
	.uleb128 0x27
	.string	"A"
	.byte	0x1
	.2byte	0x25f
	.byte	0x12
	.4byte	0x14c
	.2byte	0x290
	.byte	0
	.uleb128 0x1
	.4byte	.LASF60
	.2byte	0x260
	.byte	0x7
	.4byte	0x68c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -792
	.uleb128 0x28
	.4byte	0x85b
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.2byte	0x27d
	.byte	0x65
	.uleb128 0x12
	.4byte	0x868
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.4byte	0x871
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x13
	.4byte	0x87a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x9f
	.4byte	0x713
	.uleb128 0x4
	.4byte	0x6f
	.byte	0x4f
	.byte	0
	.uleb128 0x29
	.4byte	.LASF61
	.byte	0x1
	.byte	0xf4
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x74b
	.uleb128 0xa
	.string	"ctx"
	.byte	0xf4
	.byte	0x33
	.4byte	0x558
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.4byte	.LASF20
	.byte	0x1
	.byte	0xf4
	.byte	0x3c
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0xeb
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x77c
	.uleb128 0xa
	.string	"dst"
	.byte	0xeb
	.byte	0x33
	.4byte	0x558
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"src"
	.byte	0xec
	.byte	0x39
	.4byte	0x77c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	0x178
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0xe2
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a4
	.uleb128 0xa
	.string	"ctx"
	.byte	0xe2
	.byte	0x32
	.4byte	0x558
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0xdd
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c7
	.uleb128 0xa
	.string	"ctx"
	.byte	0xdd
	.byte	0x32
	.4byte	0x558
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF68
	.byte	0x1
	.byte	0xd5
	.byte	0xd
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x82b
	.uleb128 0xa
	.string	"n"
	.byte	0xd5
	.byte	0x2b
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.string	"b"
	.byte	0xd5
	.byte	0x3d
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xa
	.string	"i"
	.byte	0xd5
	.byte	0x48
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x2c
	.4byte	0x82b
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0xd7
	.byte	0x52
	.uleb128 0x12
	.4byte	0x838
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	0x841
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.4byte	0x84a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF65
	.byte	0x2
	.byte	0xf6
	.byte	0x14
	.byte	0x3
	.4byte	0x856
	.uleb128 0x15
	.string	"p"
	.byte	0xf6
	.byte	0x37
	.4byte	0xb0
	.uleb128 0x15
	.string	"x"
	.byte	0xf6
	.byte	0x43
	.4byte	0x9f
	.uleb128 0x16
	.string	"p64"
	.byte	0xfc
	.byte	0x21
	.4byte	0x856
	.byte	0
	.uleb128 0x9
	.4byte	0xf2
	.uleb128 0x2e
	.4byte	.LASF66
	.byte	0x2
	.byte	0xdb
	.byte	0x18
	.4byte	0x9f
	.byte	0x3
	.uleb128 0x15
	.string	"p"
	.byte	0xdb
	.byte	0x41
	.4byte	0xd2
	.uleb128 0x16
	.string	"r"
	.byte	0xdd
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x16
	.string	"p64"
	.byte	0xe2
	.byte	0x21
	.4byte	0x856
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x7c
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 606
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2b
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0xb
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
	.4byte	0x7c
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
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
	.4byte	.LBB11
	.byte	0x4
	.uleb128 .LBB11-.LBB11
	.uleb128 .LBE11-.LBB11
	.byte	0x4
	.uleb128 .LBB12-.LBB11
	.uleb128 .LBE12-.LBB11
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
	.byte	0x7
	.4byte	.LFB27
	.uleb128 .LFE27-.LFB27
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"printf"
.LASF12:
	.string	"size_t"
.LASF20:
	.string	"is384"
.LASF55:
	.string	"mbedtls_internal_sha512_process_many"
.LASF14:
	.string	"uint64_t"
.LASF34:
	.string	"mbedtls_sha384_self_test"
.LASF24:
	.string	"sha_test_sum_t"
.LASF50:
	.string	"mbedtls_sha512_update"
.LASF9:
	.string	"long long unsigned int"
.LASF31:
	.string	"free"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF57:
	.string	"mbedtls_internal_sha512_process"
.LASF60:
	.string	"local"
.LASF18:
	.string	"state"
.LASF6:
	.string	"long int"
.LASF68:
	.string	"sha512_put_uint64_be"
.LASF30:
	.string	"memcpy"
.LASF26:
	.string	"sha512_test_sum"
.LASF16:
	.string	"mbedtls_uint64_unaligned_t"
.LASF65:
	.string	"mbedtls_put_unaligned_uint64"
.LASF10:
	.string	"unsigned int"
.LASF61:
	.string	"mbedtls_sha512_starts"
.LASF49:
	.string	"truncated"
.LASF7:
	.string	"long unsigned int"
.LASF56:
	.string	"data"
.LASF5:
	.string	"short unsigned int"
.LASF64:
	.string	"mbedtls_sha512_init"
.LASF35:
	.string	"mbedtls_sha512_self_test"
.LASF63:
	.string	"mbedtls_sha512_free"
.LASF17:
	.string	"total"
.LASF62:
	.string	"mbedtls_sha512_clone"
.LASF45:
	.string	"output"
.LASF11:
	.string	"long double"
.LASF39:
	.string	"sha_test_sum"
.LASF23:
	.string	"sha_test_buflen"
.LASF53:
	.string	"processed"
.LASF25:
	.string	"sha384_test_sum"
.LASF66:
	.string	"mbedtls_get_unaligned_uint64"
.LASF22:
	.string	"sha_test_buf"
.LASF47:
	.string	"used"
.LASF42:
	.string	"mbedtls_sha512"
.LASF3:
	.string	"unsigned char"
.LASF4:
	.string	"short int"
.LASF46:
	.string	"mbedtls_sha512_finish"
.LASF38:
	.string	"sha512sum"
.LASF51:
	.string	"fill"
.LASF37:
	.string	"buflen"
.LASF41:
	.string	"exit"
.LASF43:
	.string	"input"
.LASF40:
	.string	"fail"
.LASF58:
	.string	"temp1"
.LASF15:
	.string	"char"
.LASF32:
	.string	"mbedtls_platform_zeroize"
.LASF36:
	.string	"verbose"
.LASF19:
	.string	"buffer"
.LASF48:
	.string	"high"
.LASF27:
	.string	"memcmp"
.LASF67:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF59:
	.string	"temp2"
.LASF21:
	.string	"mbedtls_sha512_context"
.LASF54:
	.string	"mbedtls_sha512_common_self_test"
.LASF33:
	.string	"memset"
.LASF29:
	.string	"calloc"
.LASF44:
	.string	"ilen"
.LASF13:
	.string	"uint8_t"
.LASF52:
	.string	"left"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/sha512.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
	.globl	__bswapdi2
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
