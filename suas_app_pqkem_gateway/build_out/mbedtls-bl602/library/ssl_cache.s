	.file	"ssl_cache.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_cache.c"
	.section	.text.mbedtls_ssl_cache_init,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_cache_init
	.type	mbedtls_ssl_cache_init, @function
mbedtls_ssl_cache_init:
.LFB142:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_cache.c"
	.loc 1 25 1
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
	.loc 1 26 5
	li	a2,12
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 1 28 20
	lw	a5,-20(s0)
	li	a4,86016
	addi	a4,a4,384
	sw	a4,4(a5)
	.loc 1 29 24
	lw	a5,-20(s0)
	li	a4,50
	sw	a4,8(a5)
	.loc 1 34 1
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
.LFE142:
	.size	mbedtls_ssl_cache_init, .-mbedtls_ssl_cache_init
	.section	.text.ssl_cache_find_entry,"ax",@progbits
	.align	1
	.type	ssl_cache_find_entry, @function
ssl_cache_find_entry:
.LFB143:
	.loc 1 41 1
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
	.loc 1 42 9
	li	a5,-32768
	addi	a5,a5,384
	sw	a5,-20(s0)
	.loc 1 48 14
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 48 5
	j	.L3
.L8:
	.loc 1 56 34
	lw	a5,-24(s0)
	lw	a5,32(a5)
	.loc 1 56 12
	lw	a4,-44(s0)
	bne	a4,a5,.L11
	.loc 1 57 35
	lw	a4,-24(s0)
	.loc 1 57 13
	lw	a5,-24(s0)
	lw	a5,32(a5)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-40(s0)
	call	memcmp
	mv	a5,a0
	.loc 1 56 51 discriminator 2
	beq	a5,zero,.L12
.L11:
	.loc 1 59 13
	nop
	.loc 1 48 46 discriminator 2
	lw	a5,-24(s0)
	lw	a5,44(a5)
	sw	a5,-24(s0)
.L3:
	.loc 1 48 34 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L8
	j	.L7
.L12:
	.loc 1 62 9
	nop
.L7:
	.loc 1 65 8
	lw	a5,-24(s0)
	beq	a5,zero,.L9
	.loc 1 66 14
	lw	a5,-48(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 67 13
	sw	zero,-20(s0)
.L9:
	.loc 1 70 12
	lw	a5,-20(s0)
	.loc 1 71 1
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
.LFE143:
	.size	ssl_cache_find_entry, .-ssl_cache_find_entry
	.section	.text.mbedtls_ssl_cache_get,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_cache_get
	.type	mbedtls_ssl_cache_get, @function
mbedtls_ssl_cache_get:
.LFB144:
	.loc 1 78 1
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
	.loc 1 79 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 80 32
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 89 11
	addi	a5,s0,-28
	mv	a3,a5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	call	ssl_cache_find_entry
	sw	a0,-20(s0)
	.loc 1 90 8
	lw	a5,-20(s0)
	bne	a5,zero,.L18
	.loc 1 95 41
	lw	a5,-28(s0)
	lw	a4,36(a5)
	.loc 1 96 41
	lw	a5,-28(s0)
	.loc 1 94 11
	lw	a5,40(a5)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-48(s0)
	call	mbedtls_ssl_session_load
	sw	a0,-20(s0)
	.loc 1 97 8
	lw	a5,-20(s0)
	bne	a5,zero,.L19
	.loc 1 101 9
	sw	zero,-20(s0)
	j	.L15
.L18:
	.loc 1 91 9
	nop
	j	.L15
.L19:
	.loc 1 98 9
	nop
.L15:
	.loc 1 110 12
	lw	a5,-20(s0)
	.loc 1 111 1
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
.LFE144:
	.size	mbedtls_ssl_cache_get, .-mbedtls_ssl_cache_get
	.section	.text.ssl_cache_entry_zeroize,"ax",@progbits
	.align	1
	.type	ssl_cache_entry_zeroize, @function
ssl_cache_entry_zeroize:
.LFB145:
	.loc 1 115 1
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
	.loc 1 116 8
	lw	a5,-20(s0)
	beq	a5,zero,.L24
	.loc 1 121 14
	lw	a5,-20(s0)
	lw	a5,36(a5)
	.loc 1 121 8
	beq	a5,zero,.L23
	.loc 1 122 39
	lw	a5,-20(s0)
	lw	a4,36(a5)
	.loc 1 122 9
	lw	a5,-20(s0)
	lw	a5,40(a5)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_zeroize_and_free
.L23:
	.loc 1 126 5
	li	a1,48
	lw	a0,-20(s0)
	call	mbedtls_platform_zeroize
	j	.L20
.L24:
	.loc 1 117 9
	nop
.L20:
	.loc 1 127 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE145:
	.size	ssl_cache_entry_zeroize, .-ssl_cache_entry_zeroize
	.section	.text.ssl_cache_pick_writing_slot,"ax",@progbits
	.align	1
	.type	ssl_cache_pick_writing_slot, @function
ssl_cache_pick_writing_slot:
.LFB146:
	.loc 1 134 1
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
	.loc 1 139 30
	sw	zero,-32(s0)
	.loc 1 140 9
	sw	zero,-20(s0)
	.loc 1 151 10
	sw	zero,-28(s0)
	.loc 1 152 14
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 152 5
	j	.L26
.L29:
	.loc 1 153 14
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 154 34
	lw	a5,-24(s0)
	lw	a5,32(a5)
	.loc 1 154 12
	lw	a4,-44(s0)
	bne	a4,a5,.L27
	.loc 1 155 35
	lw	a4,-24(s0)
	.loc 1 155 13
	lw	a5,-24(s0)
	lw	a5,32(a5)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-40(s0)
	call	memcmp
	mv	a5,a0
	.loc 1 154 51 discriminator 1
	beq	a5,zero,.L37
.L27:
	.loc 1 158 14
	lw	a5,-24(s0)
	sw	a5,-28(s0)
	.loc 1 152 46 discriminator 2
	lw	a5,-24(s0)
	lw	a5,44(a5)
	sw	a5,-24(s0)
.L26:
	.loc 1 152 34 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L29
	.loc 1 184 22
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 184 8
	lw	a4,-20(s0)
	bge	a4,a5,.L30
	.loc 1 186 15
	li	a1,48
	li	a0,1
	call	calloc
	mv	a5,a0
	sw	a5,-24(s0)
	.loc 1 187 12
	lw	a5,-24(s0)
	bne	a5,zero,.L31
	.loc 1 188 20
	li	a5,-32768
	addi	a5,a5,256
	j	.L32
.L31:
	.loc 1 192 12
	lw	a5,-28(s0)
	bne	a5,zero,.L33
	.loc 1 193 26
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 198 9
	j	.L28
.L33:
	.loc 1 195 24
	lw	a5,-28(s0)
	lw	a4,-24(s0)
	sw	a4,44(a5)
	.loc 1 198 9
	j	.L28
.L30:
	.loc 1 213 14
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 213 8
	bne	a5,zero,.L35
	.loc 1 215 16
	li	a5,-110
	j	.L32
.L35:
	.loc 1 218 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 219 23
	lw	a5,-32(s0)
	lw	a4,44(a5)
	.loc 1 219 18
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 220 15
	lw	a5,-32(s0)
	sw	zero,44(a5)
	.loc 1 221 16
	lw	a5,-28(s0)
	lw	a4,-32(s0)
	sw	a4,44(a5)
	.loc 1 225 9
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	j	.L28
.L37:
	.loc 1 156 13
	nop
.L28:
	.loc 1 230 12
	lw	a5,-24(s0)
	lw	a5,36(a5)
	.loc 1 230 8
	beq	a5,zero,.L36
	.loc 1 233 13
	lw	a5,-24(s0)
	lw	a5,44(a5)
	sw	a5,-32(s0)
	.loc 1 234 9
	lw	a0,-24(s0)
	call	ssl_cache_entry_zeroize
	.loc 1 235 19
	lw	a5,-24(s0)
	lw	a4,-32(s0)
	sw	a4,44(a5)
.L36:
	.loc 1 242 10
	lw	a5,-48(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 243 12
	li	a5,0
.L32:
	.loc 1 244 1
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
.LFE146:
	.size	ssl_cache_pick_writing_slot, .-ssl_cache_pick_writing_slot
	.section	.text.mbedtls_ssl_cache_set,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_cache_set
	.type	mbedtls_ssl_cache_set, @function
mbedtls_ssl_cache_set:
.LFB147:
	.loc 1 250 1
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
	sw	a3,-64(s0)
	.loc 1 251 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 252 32
	lw	a5,-52(s0)
	sw	a5,-28(s0)
	.loc 1 255 12
	sw	zero,-36(s0)
	.loc 1 256 20
	sw	zero,-24(s0)
	.loc 1 264 11
	addi	a5,s0,-32
	mv	a3,a5
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-28(s0)
	call	ssl_cache_pick_writing_slot
	sw	a0,-20(s0)
	.loc 1 267 8
	lw	a5,-20(s0)
	bne	a5,zero,.L47
	.loc 1 273 11
	addi	a5,s0,-36
	mv	a3,a5
	li	a2,0
	li	a1,0
	lw	a0,-64(s0)
	call	mbedtls_ssl_session_save
	sw	a0,-20(s0)
	.loc 1 274 8
	lw	a4,-20(s0)
	li	a5,-28672
	addi	a5,a5,1536
	bne	a4,a5,.L48
	.loc 1 278 26
	lw	a5,-36(s0)
	mv	a1,a5
	li	a0,1
	call	calloc
	mv	a5,a0
	sw	a5,-24(s0)
	.loc 1 279 8
	lw	a5,-24(s0)
	bne	a5,zero,.L42
	.loc 1 280 13
	li	a5,-32768
	addi	a5,a5,256
	sw	a5,-20(s0)
	.loc 1 281 9
	j	.L40
.L42:
	.loc 1 285 11
	lw	a5,-36(s0)
	addi	a4,s0,-36
	mv	a3,a4
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-64(s0)
	call	mbedtls_ssl_session_save
	sw	a0,-20(s0)
	.loc 1 289 8
	lw	a5,-20(s0)
	bne	a5,zero,.L49
	.loc 1 293 8
	lw	a4,-60(s0)
	li	a5,32
	bleu	a4,a5,.L44
	.loc 1 294 13
	li	a5,-28672
	addi	a5,a5,-256
	sw	a5,-20(s0)
	.loc 1 295 9
	j	.L40
.L44:
	.loc 1 297 8
	lw	a5,-32(s0)
	.loc 1 297 25
	lw	a4,-60(s0)
	sw	a4,32(a5)
	.loc 1 298 15
	lw	a5,-32(s0)
	.loc 1 298 5
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 300 8
	lw	a5,-32(s0)
	.loc 1 300 18
	lw	a4,-24(s0)
	sw	a4,36(a5)
	.loc 1 301 8
	lw	a5,-32(s0)
	.loc 1 301 22
	lw	a4,-36(s0)
	sw	a4,40(a5)
	.loc 1 302 24
	sw	zero,-24(s0)
	.loc 1 304 9
	sw	zero,-20(s0)
	j	.L40
.L47:
	.loc 1 268 9
	nop
	j	.L40
.L48:
	.loc 1 275 9
	nop
	j	.L40
.L49:
	.loc 1 290 9
	nop
.L40:
	.loc 1 313 8
	lw	a5,-24(s0)
	beq	a5,zero,.L45
	.loc 1 314 9
	lw	a5,-36(s0)
	mv	a1,a5
	lw	a0,-24(s0)
	call	mbedtls_zeroize_and_free
	.loc 1 315 28
	sw	zero,-24(s0)
.L45:
	.loc 1 318 12
	lw	a5,-20(s0)
	.loc 1 319 1
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
.LFE147:
	.size	mbedtls_ssl_cache_set, .-mbedtls_ssl_cache_set
	.section	.text.mbedtls_ssl_cache_remove,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_cache_remove
	.type	mbedtls_ssl_cache_remove, @function
mbedtls_ssl_cache_remove:
.LFB148:
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
	.loc 1 325 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 326 32
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	.loc 1 336 11
	addi	a5,s0,-32
	mv	a3,a5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-28(s0)
	call	ssl_cache_find_entry
	sw	a0,-20(s0)
	.loc 1 338 8
	lw	a5,-20(s0)
	beq	a5,zero,.L51
	.loc 1 339 13
	sw	zero,-20(s0)
	.loc 1 340 9
	j	.L52
.L51:
	.loc 1 344 23
	lw	a5,-28(s0)
	lw	a4,0(a5)
	.loc 1 344 15
	lw	a5,-32(s0)
	.loc 1 344 8
	bne	a4,a5,.L53
	.loc 1 345 29
	lw	a5,-32(s0)
	lw	a4,44(a5)
	.loc 1 345 22
	lw	a5,-28(s0)
	sw	a4,0(a5)
	.loc 1 346 9
	j	.L54
.L53:
	.loc 1 348 15
	lw	a5,-28(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 348 5
	j	.L55
.L57:
	.loc 1 349 17
	lw	a5,-24(s0)
	lw	a4,44(a5)
	.loc 1 349 24
	lw	a5,-32(s0)
	.loc 1 349 12
	bne	a4,a5,.L56
	.loc 1 350 31
	lw	a5,-32(s0)
	lw	a4,44(a5)
	.loc 1 350 24
	lw	a5,-24(s0)
	sw	a4,44(a5)
	.loc 1 351 13
	j	.L54
.L56:
	.loc 1 348 55 discriminator 2
	lw	a5,-24(s0)
	lw	a5,44(a5)
	sw	a5,-24(s0)
.L55:
	.loc 1 348 35 discriminator 1
	lw	a5,-24(s0)
	lw	a5,44(a5)
	.loc 1 348 42 discriminator 1
	bne	a5,zero,.L57
	.loc 1 355 1
	nop
.L54:
	.loc 1 356 5
	lw	a5,-32(s0)
	mv	a0,a5
	call	ssl_cache_entry_zeroize
	.loc 1 357 5
	lw	a5,-32(s0)
	mv	a0,a5
	call	free
	.loc 1 358 9
	sw	zero,-20(s0)
.L52:
	.loc 1 367 12
	lw	a5,-20(s0)
	.loc 1 368 1
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
.LFE148:
	.size	mbedtls_ssl_cache_remove, .-mbedtls_ssl_cache_remove
	.section	.text.mbedtls_ssl_cache_set_max_entries,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_cache_set_max_entries
	.type	mbedtls_ssl_cache_set_max_entries, @function
mbedtls_ssl_cache_set_max_entries:
.LFB149:
	.loc 1 382 1
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
	.loc 1 383 8
	lw	a5,-24(s0)
	bge	a5,zero,.L60
	.loc 1 384 13
	sw	zero,-24(s0)
.L60:
	.loc 1 387 24
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,8(a5)
	.loc 1 388 1
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
.LFE149:
	.size	mbedtls_ssl_cache_set_max_entries, .-mbedtls_ssl_cache_set_max_entries
	.section	.text.mbedtls_ssl_cache_free,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_cache_free
	.type	mbedtls_ssl_cache_free, @function
mbedtls_ssl_cache_free:
.LFB150:
	.loc 1 391 1
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
	.loc 1 394 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 396 11
	j	.L62
.L63:
	.loc 1 397 13
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 1 398 13
	lw	a5,-20(s0)
	lw	a5,44(a5)
	sw	a5,-20(s0)
	.loc 1 400 9
	lw	a0,-24(s0)
	call	ssl_cache_entry_zeroize
	.loc 1 401 9
	lw	a0,-24(s0)
	call	free
.L62:
	.loc 1 396 16
	lw	a5,-20(s0)
	bne	a5,zero,.L63
	.loc 1 407 18
	lw	a5,-36(s0)
	sw	zero,0(a5)
	.loc 1 408 1
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
.LFE150:
	.size	mbedtls_ssl_cache_free, .-mbedtls_ssl_cache_free
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/pk.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/asn1.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/x509.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/x509_crt.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ssl.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ssl_cache.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb85
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x20
	.4byte	.LASF138
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x11
	.4byte	0x32
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
	.uleb128 0x21
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0xa
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x22
	.byte	0x4
	.uleb128 0x16
	.4byte	0xa1
	.uleb128 0x6
	.4byte	0x32
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.4byte	0xbe
	.uleb128 0x16
	.4byte	0xb4
	.uleb128 0x23
	.uleb128 0x17
	.4byte	0x32
	.byte	0x4
	.byte	0x2f
	.4byte	0x113
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x11
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x12
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x4
	.byte	0x3c
	.byte	0x3
	.4byte	0xbf
	.uleb128 0x6
	.4byte	0x76
	.uleb128 0x17
	.4byte	0x32
	.byte	0x5
	.byte	0x49
	.4byte	0x160
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x5
	.byte	0x52
	.byte	0x3
	.4byte	0x124
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x5
	.byte	0xd5
	.byte	0x22
	.4byte	0x17d
	.uleb128 0x11
	.4byte	0x16c
	.uleb128 0x24
	.4byte	.LASF38
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x8
	.byte	0x5
	.byte	0xdc
	.byte	0x10
	.4byte	0x1aa
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x5
	.byte	0xdd
	.byte	0x1e
	.4byte	0x1aa
	.byte	0
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x5
	.byte	0xde
	.byte	0xb
	.4byte	0xa1
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	0x178
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x5
	.2byte	0x109
	.byte	0x3
	.4byte	0x182
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0xc
	.byte	0x6
	.byte	0x8d
	.byte	0x10
	.4byte	0x1ef
	.uleb128 0x7
	.string	"tag"
	.byte	0x6
	.byte	0x8e
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x7
	.string	"len"
	.byte	0x6
	.byte	0x8f
	.byte	0xc
	.4byte	0x76
	.byte	0x4
	.uleb128 0x7
	.string	"p"
	.byte	0x6
	.byte	0x90
	.byte	0x14
	.4byte	0xa8
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x6
	.byte	0x92
	.byte	0x1
	.4byte	0x1bc
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x10
	.byte	0x6
	.byte	0xa1
	.byte	0x10
	.4byte	0x223
	.uleb128 0x7
	.string	"buf"
	.byte	0x6
	.byte	0xa2
	.byte	0x16
	.4byte	0x1ef
	.byte	0
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x6
	.byte	0xab
	.byte	0x23
	.4byte	0x223
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.4byte	0x1fb
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x6
	.byte	0xad
	.byte	0x1
	.4byte	0x1fb
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x20
	.byte	0x6
	.byte	0xb2
	.byte	0x10
	.4byte	0x276
	.uleb128 0x7
	.string	"oid"
	.byte	0x6
	.byte	0xb3
	.byte	0x16
	.4byte	0x1ef
	.byte	0
	.uleb128 0x7
	.string	"val"
	.byte	0x6
	.byte	0xb4
	.byte	0x16
	.4byte	0x1ef
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x6
	.byte	0xbd
	.byte	0x25
	.4byte	0x276
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x6
	.byte	0xc4
	.byte	0x13
	.4byte	0x32
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.4byte	0x234
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x6
	.byte	0xc6
	.byte	0x1
	.4byte	0x234
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x7
	.byte	0xd8
	.byte	0x1a
	.4byte	0x1ef
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x7
	.byte	0xe3
	.byte	0x21
	.4byte	0x27b
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0x7
	.byte	0xe8
	.byte	0x1f
	.4byte	0x228
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x34
	.byte	0x7
	.byte	0xed
	.byte	0x10
	.4byte	0x2ed
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x7
	.byte	0xee
	.byte	0x16
	.4byte	0x287
	.byte	0
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x7
	.byte	0xef
	.byte	0x1b
	.4byte	0x29f
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x7
	.byte	0xf0
	.byte	0x16
	.4byte	0x287
	.byte	0x1c
	.uleb128 0x7
	.string	"raw"
	.byte	0x7
	.byte	0xf1
	.byte	0x16
	.4byte	0x287
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x7
	.byte	0xf3
	.byte	0x1
	.4byte	0x2ab
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x18
	.byte	0x7
	.byte	0xf6
	.byte	0x10
	.4byte	0x355
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x7
	.byte	0xf7
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x7
	.string	"mon"
	.byte	0x7
	.byte	0xf7
	.byte	0xf
	.4byte	0x68
	.byte	0x4
	.uleb128 0x7
	.string	"day"
	.byte	0x7
	.byte	0xf7
	.byte	0x14
	.4byte	0x68
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x7
	.byte	0xf8
	.byte	0x9
	.4byte	0x68
	.byte	0xc
	.uleb128 0x7
	.string	"min"
	.byte	0x7
	.byte	0xf8
	.byte	0xf
	.4byte	0x68
	.byte	0x10
	.uleb128 0x7
	.string	"sec"
	.byte	0x7
	.byte	0xf8
	.byte	0x14
	.4byte	0x68
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x7
	.byte	0xfa
	.byte	0x1
	.4byte	0x2f9
	.uleb128 0x25
	.4byte	.LASF57
	.2byte	0x194
	.byte	0x8
	.byte	0x29
	.byte	0x10
	.4byte	0x510
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x8
	.byte	0x2a
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x7
	.string	"raw"
	.byte	0x8
	.byte	0x2c
	.byte	0x16
	.4byte	0x287
	.byte	0x4
	.uleb128 0x7
	.string	"tbs"
	.byte	0x8
	.byte	0x2d
	.byte	0x16
	.4byte	0x287
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x8
	.byte	0x2f
	.byte	0x9
	.4byte	0x68
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x8
	.byte	0x30
	.byte	0x16
	.4byte	0x287
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x8
	.byte	0x31
	.byte	0x16
	.4byte	0x287
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x8
	.byte	0x33
	.byte	0x16
	.4byte	0x287
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x8
	.byte	0x34
	.byte	0x16
	.4byte	0x287
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x8
	.byte	0x36
	.byte	0x17
	.4byte	0x293
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x8
	.byte	0x37
	.byte	0x17
	.4byte	0x293
	.byte	0x70
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x8
	.byte	0x39
	.byte	0x17
	.4byte	0x355
	.byte	0x90
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x8
	.byte	0x3a
	.byte	0x17
	.4byte	0x355
	.byte	0xa8
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x8
	.byte	0x3c
	.byte	0x16
	.4byte	0x287
	.byte	0xc0
	.uleb128 0x7
	.string	"pk"
	.byte	0x8
	.byte	0x3d
	.byte	0x18
	.4byte	0x1af
	.byte	0xcc
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x8
	.byte	0x3f
	.byte	0x16
	.4byte	0x287
	.byte	0xd4
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x8
	.byte	0x40
	.byte	0x16
	.4byte	0x287
	.byte	0xe0
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x8
	.byte	0x41
	.byte	0x16
	.4byte	0x287
	.byte	0xec
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x8
	.byte	0x42
	.byte	0x1b
	.4byte	0x29f
	.byte	0xf8
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x43
	.byte	0x16
	.4byte	0x287
	.2byte	0x108
	.uleb128 0x8
	.4byte	.LASF74
	.byte	0x44
	.byte	0x1c
	.4byte	0x2ed
	.2byte	0x114
	.uleb128 0x8
	.4byte	.LASF75
	.byte	0x46
	.byte	0x1b
	.4byte	0x29f
	.2byte	0x148
	.uleb128 0x8
	.4byte	.LASF76
	.byte	0x48
	.byte	0x9
	.4byte	0x68
	.2byte	0x158
	.uleb128 0x8
	.4byte	.LASF77
	.byte	0x49
	.byte	0x9
	.4byte	0x68
	.2byte	0x15c
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0x4a
	.byte	0x9
	.4byte	0x68
	.2byte	0x160
	.uleb128 0x8
	.4byte	.LASF79
	.byte	0x4c
	.byte	0x12
	.4byte	0x6f
	.2byte	0x164
	.uleb128 0x8
	.4byte	.LASF80
	.byte	0x4e
	.byte	0x1b
	.4byte	0x29f
	.2byte	0x168
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0x50
	.byte	0x13
	.4byte	0x32
	.2byte	0x178
	.uleb128 0x26
	.string	"sig"
	.byte	0x8
	.byte	0x52
	.byte	0x16
	.4byte	0x287
	.2byte	0x17c
	.uleb128 0x8
	.4byte	.LASF82
	.byte	0x53
	.byte	0x17
	.4byte	0x113
	.2byte	0x188
	.uleb128 0x8
	.4byte	.LASF83
	.byte	0x54
	.byte	0x17
	.4byte	0x160
	.2byte	0x189
	.uleb128 0x8
	.4byte	.LASF84
	.byte	0x55
	.byte	0xb
	.4byte	0xa1
	.2byte	0x18c
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x5a
	.byte	0x1e
	.4byte	0x510
	.2byte	0x190
	.byte	0
	.uleb128 0x6
	.4byte	0x361
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0x8
	.byte	0x5c
	.byte	0x1
	.4byte	0x361
	.uleb128 0x6
	.4byte	0x515
	.uleb128 0x6
	.4byte	0x39
	.uleb128 0x12
	.4byte	.LASF85
	.byte	0x9
	.2byte	0x38b
	.byte	0x24
	.4byte	0x53d
	.uleb128 0x11
	.4byte	0x52b
	.uleb128 0x27
	.4byte	.LASF85
	.byte	0x78
	.byte	0x9
	.2byte	0x4fb
	.byte	0x8
	.4byte	0x602
	.uleb128 0x9
	.4byte	.LASF86
	.2byte	0x4fd
	.byte	0x13
	.4byte	0x32
	.byte	0
	.uleb128 0x9
	.4byte	.LASF87
	.2byte	0x505
	.byte	0x13
	.4byte	0x32
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF88
	.2byte	0x506
	.byte	0xd
	.4byte	0x89
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF89
	.2byte	0x50b
	.byte	0x22
	.4byte	0x630
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF90
	.2byte	0x510
	.byte	0x9
	.4byte	0x68
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF91
	.2byte	0x511
	.byte	0xc
	.4byte	0x76
	.byte	0xc
	.uleb128 0x28
	.string	"id"
	.byte	0x9
	.2byte	0x512
	.byte	0x13
	.4byte	0x63d
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF92
	.2byte	0x513
	.byte	0x13
	.4byte	0x64d
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF93
	.2byte	0x517
	.byte	0x17
	.4byte	0x521
	.byte	0x60
	.uleb128 0x9
	.4byte	.LASF94
	.2byte	0x520
	.byte	0xe
	.4byte	0x95
	.byte	0x64
	.uleb128 0x9
	.4byte	.LASF95
	.2byte	0x523
	.byte	0x14
	.4byte	0xa8
	.byte	0x68
	.uleb128 0x9
	.4byte	.LASF96
	.2byte	0x524
	.byte	0xc
	.4byte	0x76
	.byte	0x6c
	.uleb128 0x9
	.4byte	.LASF97
	.2byte	0x525
	.byte	0xe
	.4byte	0x95
	.byte	0x70
	.uleb128 0x9
	.4byte	.LASF98
	.2byte	0x557
	.byte	0x9
	.4byte	0x68
	.byte	0x74
	.byte	0
	.uleb128 0x6
	.4byte	0x52b
	.uleb128 0x6
	.4byte	0x538
	.uleb128 0x29
	.byte	0x7
	.byte	0x2
	.4byte	0x45
	.byte	0x9
	.2byte	0x4ea
	.byte	0xe
	.4byte	0x630
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0
	.uleb128 0x18
	.4byte	.LASF100
	.2byte	0x303
	.uleb128 0x18
	.4byte	.LASF101
	.2byte	0x304
	.byte	0
	.uleb128 0x12
	.4byte	.LASF102
	.byte	0x9
	.2byte	0x4ee
	.byte	0x3
	.4byte	0x60c
	.uleb128 0x19
	.4byte	0x32
	.4byte	0x64d
	.uleb128 0x1a
	.4byte	0x6f
	.byte	0x1f
	.byte	0
	.uleb128 0x19
	.4byte	0x32
	.4byte	0x65d
	.uleb128 0x1a
	.4byte	0x6f
	.byte	0x2f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF103
	.byte	0xa
	.byte	0x2c
	.byte	0x2a
	.4byte	0x669
	.uleb128 0xb
	.4byte	.LASF103
	.byte	0xc
	.byte	0xa
	.byte	0x43
	.byte	0x8
	.4byte	0x69e
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0xa
	.byte	0x44
	.byte	0x1e
	.4byte	0x6f9
	.byte	0
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0xa
	.byte	0x45
	.byte	0x9
	.4byte	0x68
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0xa
	.byte	0x46
	.byte	0x9
	.4byte	0x68
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF107
	.byte	0xa
	.byte	0x2d
	.byte	0x28
	.4byte	0x6aa
	.uleb128 0xb
	.4byte	.LASF107
	.byte	0x30
	.byte	0xa
	.byte	0x32
	.byte	0x8
	.4byte	0x6f9
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0xa
	.byte	0x37
	.byte	0x13
	.4byte	0x63d
	.byte	0
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0xa
	.byte	0x38
	.byte	0xc
	.4byte	0x76
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0xa
	.byte	0x3a
	.byte	0x14
	.4byte	0xa8
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0xa
	.byte	0x3b
	.byte	0xc
	.4byte	0x76
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xa
	.byte	0x3d
	.byte	0x1e
	.4byte	0x6f9
	.byte	0x2c
	.byte	0
	.uleb128 0x6
	.4byte	0x69e
	.uleb128 0x13
	.4byte	.LASF115
	.byte	0xc
	.byte	0x5e
	.4byte	0x70f
	.uleb128 0x2
	.4byte	0xa1
	.byte	0
	.uleb128 0xf
	.4byte	.LASF112
	.byte	0xb
	.byte	0x1f
	.byte	0x8
	.4byte	0xa1
	.4byte	0x72f
	.uleb128 0x2
	.4byte	0xa3
	.uleb128 0x2
	.4byte	0xb9
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF113
	.2byte	0xd5e
	.4byte	0x68
	.4byte	0x753
	.uleb128 0x2
	.4byte	0x607
	.uleb128 0x2
	.4byte	0xa8
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x2
	.4byte	0x11f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF114
	.byte	0xc
	.byte	0x5a
	.byte	0x7
	.4byte	0xa1
	.4byte	0x76e
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0x13
	.4byte	.LASF116
	.byte	0xd
	.byte	0x9f
	.4byte	0x784
	.uleb128 0x2
	.4byte	0xa1
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0x13
	.4byte	.LASF117
	.byte	0xe
	.byte	0x79
	.4byte	0x79a
	.uleb128 0x2
	.4byte	0xa1
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF118
	.2byte	0xd39
	.4byte	0x68
	.4byte	0x7b9
	.uleb128 0x2
	.4byte	0x602
	.uleb128 0x2
	.4byte	0x526
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0xf
	.4byte	.LASF119
	.byte	0xb
	.byte	0x1e
	.byte	0x5
	.4byte	0x68
	.4byte	0x7d9
	.uleb128 0x2
	.4byte	0xb4
	.uleb128 0x2
	.4byte	0xb4
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0xf
	.4byte	.LASF120
	.byte	0xb
	.byte	0x21
	.byte	0x8
	.4byte	0xa1
	.4byte	0x7f9
	.uleb128 0x2
	.4byte	0xa1
	.uleb128 0x2
	.4byte	0x68
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x186
	.byte	0x6
	.4byte	.LFB150
	.4byte	.LFE150-.LFB150
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x83e
	.uleb128 0xe
	.4byte	.LASF123
	.2byte	0x186
	.byte	0x38
	.4byte	0x83e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"cur"
	.2byte	0x188
	.byte	0x1e
	.4byte	0x6f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.string	"prv"
	.2byte	0x188
	.byte	0x24
	.4byte	0x6f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	0x65d
	.uleb128 0x2b
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x17d
	.byte	0x6
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x87a
	.uleb128 0xe
	.4byte	.LASF123
	.2byte	0x17d
	.byte	0x43
	.4byte	0x83e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.string	"max"
	.byte	0x1
	.2byte	0x17d
	.byte	0x4e
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x141
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB148
	.4byte	.LFE148-.LFB148
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x915
	.uleb128 0xe
	.4byte	.LASF124
	.2byte	0x141
	.byte	0x24
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.4byte	.LASF108
	.2byte	0x142
	.byte	0x33
	.4byte	0x526
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.4byte	.LASF109
	.2byte	0x143
	.byte	0x25
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.string	"ret"
	.2byte	0x145
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	.LASF123
	.2byte	0x146
	.byte	0x20
	.4byte	0x83e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.4byte	.LASF125
	.2byte	0x147
	.byte	0x1e
	.4byte	0x6f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.4byte	.LASF126
	.2byte	0x148
	.byte	0x1e
	.4byte	0x6f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF127
	.2byte	0x168
	.4byte	.L52
	.uleb128 0x15
	.4byte	.LASF115
	.2byte	0x163
	.4byte	.L54
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF129
	.byte	0xf6
	.4byte	0x68
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b8
	.uleb128 0x5
	.4byte	.LASF124
	.byte	0xf6
	.byte	0x21
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.4byte	.LASF108
	.byte	0xf7
	.byte	0x30
	.4byte	0x526
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.4byte	.LASF109
	.byte	0xf8
	.byte	0x22
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.4byte	.LASF110
	.byte	0xf9
	.byte	0x36
	.4byte	0x607
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xc
	.string	"ret"
	.byte	0xfb
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LASF123
	.byte	0xfc
	.byte	0x20
	.4byte	0x83e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.string	"cur"
	.byte	0xfd
	.byte	0x1e
	.4byte	0x6f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.4byte	.LASF130
	.byte	0xff
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.4byte	.LASF131
	.2byte	0x100
	.byte	0x14
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF127
	.2byte	0x132
	.4byte	.L40
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF136
	.byte	0x82
	.4byte	0x68
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa4b
	.uleb128 0x5
	.4byte	.LASF123
	.byte	0x82
	.byte	0x43
	.4byte	0x83e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF108
	.byte	0x83
	.byte	0x3d
	.4byte	0x526
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF109
	.byte	0x84
	.byte	0x2f
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.string	"dst"
	.byte	0x85
	.byte	0x42
	.4byte	0xa4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"old"
	.byte	0x8b
	.byte	0x1e
	.4byte	0x6f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.4byte	.LASF132
	.byte	0x8c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"cur"
	.byte	0x8d
	.byte	0x1e
	.4byte	0x6f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LASF133
	.byte	0x8d
	.byte	0x24
	.4byte	0x6f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.4byte	.LASF134
	.byte	0xe3
	.4byte	.L28
	.byte	0
	.uleb128 0x6
	.4byte	0x6f9
	.uleb128 0x2e
	.4byte	.LASF139
	.byte	0x1
	.byte	0x72
	.byte	0xd
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa75
	.uleb128 0x5
	.4byte	.LASF125
	.byte	0x72
	.byte	0x3e
	.4byte	0x6f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF135
	.byte	0x4a
	.4byte	0x68
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xafa
	.uleb128 0x5
	.4byte	.LASF124
	.byte	0x4a
	.byte	0x21
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF108
	.byte	0x4b
	.byte	0x30
	.4byte	0x526
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF109
	.byte	0x4c
	.byte	0x22
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF110
	.byte	0x4d
	.byte	0x30
	.4byte	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"ret"
	.byte	0x4f
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LASF123
	.byte	0x50
	.byte	0x20
	.4byte	0x83e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LASF125
	.byte	0x51
	.byte	0x1e
	.4byte	0x6f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0x67
	.4byte	.L15
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF137
	.byte	0x25
	.4byte	0x68
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb67
	.uleb128 0x5
	.4byte	.LASF123
	.byte	0x25
	.byte	0x3c
	.4byte	0x83e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF108
	.byte	0x26
	.byte	0x36
	.4byte	0x526
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF109
	.byte	0x27
	.byte	0x28
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.string	"dst"
	.byte	0x28
	.byte	0x3b
	.4byte	0xa4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"ret"
	.byte	0x2a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"cur"
	.byte	0x2e
	.byte	0x1e
	.4byte	0x6f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF140
	.byte	0x1
	.byte	0x18
	.byte	0x6
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF123
	.byte	0x18
	.byte	0x38
	.4byte	0x83e
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x9
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
	.uleb128 0xc
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.sleb128 9
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x2c
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
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.4byte	.LFB148
	.4byte	.LFE148-.LFB148
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
	.4byte	.LFB150
	.4byte	.LFE150-.LFB150
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
	.4byte	.LFB142
	.uleb128 .LFE142-.LFB142
	.byte	0x7
	.4byte	.LFB143
	.uleb128 .LFE143-.LFB143
	.byte	0x7
	.4byte	.LFB144
	.uleb128 .LFE144-.LFB144
	.byte	0x7
	.4byte	.LFB145
	.uleb128 .LFE145-.LFB145
	.byte	0x7
	.4byte	.LFB146
	.uleb128 .LFE146-.LFB146
	.byte	0x7
	.4byte	.LFB147
	.uleb128 .LFE147-.LFB147
	.byte	0x7
	.4byte	.LFB148
	.uleb128 .LFE148-.LFB148
	.byte	0x7
	.4byte	.LFB149
	.uleb128 .LFE149-.LFB149
	.byte	0x7
	.4byte	.LFB150
	.uleb128 .LFE150-.LFB150
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF132:
	.string	"count"
.LASF108:
	.string	"session_id"
.LASF71:
	.string	"v3_ext"
.LASF37:
	.string	"mbedtls_pk_type_t"
.LASF50:
	.string	"mbedtls_x509_authority"
.LASF12:
	.string	"size_t"
.LASF52:
	.string	"authorityCertIssuer"
.LASF90:
	.string	"ciphersuite"
.LASF53:
	.string	"authorityCertSerialNumber"
.LASF129:
	.string	"mbedtls_ssl_cache_set"
.LASF126:
	.string	"prev"
.LASF97:
	.string	"ticket_lifetime"
.LASF66:
	.string	"valid_from"
.LASF42:
	.string	"mbedtls_asn1_buf"
.LASF67:
	.string	"valid_to"
.LASF125:
	.string	"entry"
.LASF9:
	.string	"long long unsigned int"
.LASF48:
	.string	"mbedtls_x509_name"
.LASF101:
	.string	"MBEDTLS_SSL_VERSION_TLS1_3"
.LASF36:
	.string	"MBEDTLS_PK_OPAQUE"
.LASF61:
	.string	"sig_oid"
.LASF38:
	.string	"mbedtls_pk_info_t"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF55:
	.string	"year"
.LASF6:
	.string	"long int"
.LASF103:
	.string	"mbedtls_ssl_cache_context"
.LASF20:
	.string	"MBEDTLS_MD_SHA224"
.LASF122:
	.string	"mbedtls_ssl_cache_set_max_entries"
.LASF112:
	.string	"memcpy"
.LASF135:
	.string	"mbedtls_ssl_cache_get"
.LASF91:
	.string	"id_len"
.LASF47:
	.string	"mbedtls_x509_buf"
.LASF89:
	.string	"tls_version"
.LASF102:
	.string	"mbedtls_ssl_protocol_version"
.LASF27:
	.string	"MBEDTLS_MD_SHA3_512"
.LASF139:
	.string	"ssl_cache_entry_zeroize"
.LASF92:
	.string	"master"
.LASF82:
	.string	"sig_md"
.LASF10:
	.string	"unsigned int"
.LASF88:
	.string	"endpoint"
.LASF25:
	.string	"MBEDTLS_MD_SHA3_256"
.LASF80:
	.string	"ext_key_usage"
.LASF93:
	.string	"peer_cert"
.LASF19:
	.string	"MBEDTLS_MD_SHA1"
.LASF105:
	.string	"timeout"
.LASF58:
	.string	"own_buffer"
.LASF140:
	.string	"mbedtls_ssl_cache_init"
.LASF18:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF28:
	.string	"mbedtls_md_type_t"
.LASF124:
	.string	"data"
.LASF95:
	.string	"ticket"
.LASF79:
	.string	"key_usage"
.LASF109:
	.string	"session_id_len"
.LASF137:
	.string	"ssl_cache_find_entry"
.LASF31:
	.string	"MBEDTLS_PK_ECKEY"
.LASF72:
	.string	"subject_alt_names"
.LASF128:
	.string	"mbedtls_ssl_cache_remove"
.LASF121:
	.string	"mbedtls_ssl_cache_free"
.LASF83:
	.string	"sig_pk"
.LASF94:
	.string	"verify_result"
.LASF70:
	.string	"subject_id"
.LASF33:
	.string	"MBEDTLS_PK_ECDSA"
.LASF113:
	.string	"mbedtls_ssl_session_save"
.LASF107:
	.string	"mbedtls_ssl_cache_entry"
.LASF39:
	.string	"pk_info"
.LASF81:
	.string	"ns_cert_type"
.LASF68:
	.string	"pk_raw"
.LASF11:
	.string	"long double"
.LASF23:
	.string	"MBEDTLS_MD_SHA512"
.LASF106:
	.string	"max_entries"
.LASF76:
	.string	"ext_types"
.LASF100:
	.string	"MBEDTLS_SSL_VERSION_TLS1_2"
.LASF26:
	.string	"MBEDTLS_MD_SHA3_384"
.LASF96:
	.string	"ticket_len"
.LASF110:
	.string	"session"
.LASF56:
	.string	"hour"
.LASF41:
	.string	"mbedtls_pk_context"
.LASF16:
	.string	"MBEDTLS_MD_NONE"
.LASF111:
	.string	"session_len"
.LASF21:
	.string	"MBEDTLS_MD_SHA256"
.LASF43:
	.string	"mbedtls_asn1_sequence"
.LASF131:
	.string	"session_serialized"
.LASF51:
	.string	"keyIdentifier"
.LASF84:
	.string	"sig_opts"
.LASF3:
	.string	"unsigned char"
.LASF59:
	.string	"version"
.LASF99:
	.string	"MBEDTLS_SSL_VERSION_UNKNOWN"
.LASF4:
	.string	"short int"
.LASF63:
	.string	"subject_raw"
.LASF62:
	.string	"issuer_raw"
.LASF98:
	.string	"encrypt_then_mac"
.LASF127:
	.string	"exit"
.LASF104:
	.string	"chain"
.LASF40:
	.string	"pk_ctx"
.LASF130:
	.string	"session_serialized_len"
.LASF14:
	.string	"uint32_t"
.LASF32:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF7:
	.string	"long unsigned int"
.LASF15:
	.string	"char"
.LASF35:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF73:
	.string	"subject_key_id"
.LASF116:
	.string	"mbedtls_platform_zeroize"
.LASF30:
	.string	"MBEDTLS_PK_RSA"
.LASF57:
	.string	"mbedtls_x509_crt"
.LASF133:
	.string	"last"
.LASF117:
	.string	"mbedtls_zeroize_and_free"
.LASF119:
	.string	"memcmp"
.LASF22:
	.string	"MBEDTLS_MD_SHA384"
.LASF17:
	.string	"MBEDTLS_MD_MD5"
.LASF138:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF5:
	.string	"short unsigned int"
.LASF115:
	.string	"free"
.LASF34:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF64:
	.string	"issuer"
.LASF136:
	.string	"ssl_cache_pick_writing_slot"
.LASF134:
	.string	"found"
.LASF118:
	.string	"mbedtls_ssl_session_load"
.LASF120:
	.string	"memset"
.LASF45:
	.string	"mbedtls_asn1_named_data"
.LASF65:
	.string	"subject"
.LASF86:
	.string	"mfl_code"
.LASF114:
	.string	"calloc"
.LASF29:
	.string	"MBEDTLS_PK_NONE"
.LASF74:
	.string	"authority_key_id"
.LASF13:
	.string	"uint8_t"
.LASF49:
	.string	"mbedtls_x509_sequence"
.LASF60:
	.string	"serial"
.LASF69:
	.string	"issuer_id"
.LASF46:
	.string	"next_merged"
.LASF44:
	.string	"next"
.LASF24:
	.string	"MBEDTLS_MD_SHA3_224"
.LASF77:
	.string	"ca_istrue"
.LASF78:
	.string	"max_pathlen"
.LASF75:
	.string	"certificate_policies"
.LASF85:
	.string	"mbedtls_ssl_session"
.LASF123:
	.string	"cache"
.LASF87:
	.string	"exported"
.LASF54:
	.string	"mbedtls_x509_time"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_cache.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
