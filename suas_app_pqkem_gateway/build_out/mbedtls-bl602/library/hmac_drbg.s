	.file	"hmac_drbg.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/hmac_drbg.c"
	.section	.text.mbedtls_hmac_drbg_init,"ax",@progbits
	.align	1
	.globl	mbedtls_hmac_drbg_init
	.type	mbedtls_hmac_drbg_init, @function
mbedtls_hmac_drbg_init:
.LFB16:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/hmac_drbg.c"
	.loc 1 34 1
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
	.loc 1 35 5
	li	a2,100
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 1 37 26
	lw	a5,-20(s0)
	li	a4,8192
	addi	a4,a4,1808
	sw	a4,88(a5)
	.loc 1 38 1
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
	.size	mbedtls_hmac_drbg_init, .-mbedtls_hmac_drbg_init
	.section	.text.mbedtls_hmac_drbg_update,"ax",@progbits
	.align	1
	.globl	mbedtls_hmac_drbg_update
	.type	mbedtls_hmac_drbg_update, @function
mbedtls_hmac_drbg_update:
.LFB17:
	.loc 1 46 1
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
	sw	a2,-108(s0)
	.loc 1 47 21
	lw	a5,-100(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_md_get_size
	mv	a5,a0
	.loc 1 47 12 discriminator 1
	sw	a5,-28(s0)
	.loc 1 48 19
	lw	a5,-104(s0)
	beq	a5,zero,.L3
	.loc 1 48 47 discriminator 1
	lw	a5,-108(s0)
	beq	a5,zero,.L3
	.loc 1 48 19 discriminator 3
	li	a5,2
	sb	a5,-17(s0)
	.loc 1 48 19 is_stmt 0
	j	.L4
.L3:
	.loc 1 48 19 discriminator 4
	li	a5,1
	sb	a5,-17(s0)
.L4:
	.loc 1 51 9 is_stmt 1
	li	a5,-20480
	addi	a5,a5,-256
	sw	a5,-24(s0)
	.loc 1 53 17
	sb	zero,-32(s0)
	.loc 1 53 5
	j	.L5
.L15:
	.loc 1 55 20
	lw	a5,-100(s0)
	mv	a0,a5
	call	mbedtls_md_hmac_reset
	sw	a0,-24(s0)
	.loc 1 55 12 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L17
	.loc 1 58 20
	lw	a4,-100(s0)
	.loc 1 59 46
	lw	a5,-100(s0)
	addi	a5,a5,12
	.loc 1 58 20
	lw	a2,-28(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_md_hmac_update
	sw	a0,-24(s0)
	.loc 1 58 12 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L18
	.loc 1 62 20
	lw	a5,-100(s0)
	addi	a4,s0,-32
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_hmac_update
	sw	a0,-24(s0)
	.loc 1 62 12 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L19
	.loc 1 66 12
	lbu	a4,-17(s0)
	li	a5,2
	bne	a4,a5,.L10
	.loc 1 67 24
	lw	a5,-100(s0)
	lw	a2,-108(s0)
	lw	a1,-104(s0)
	mv	a0,a5
	call	mbedtls_md_hmac_update
	sw	a0,-24(s0)
	.loc 1 67 16 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L20
.L10:
	.loc 1 72 20
	lw	a5,-100(s0)
	addi	a4,s0,-96
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_hmac_finish
	sw	a0,-24(s0)
	.loc 1 72 12 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L21
	.loc 1 77 20
	lw	a5,-100(s0)
	addi	a4,s0,-96
	lw	a2,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_hmac_starts
	sw	a0,-24(s0)
	.loc 1 77 12 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L22
	.loc 1 80 20
	lw	a4,-100(s0)
	.loc 1 81 46
	lw	a5,-100(s0)
	addi	a5,a5,12
	.loc 1 80 20
	lw	a2,-28(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_md_hmac_update
	sw	a0,-24(s0)
	.loc 1 80 12 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L23
	.loc 1 84 20
	lw	a4,-100(s0)
	.loc 1 84 60
	lw	a5,-100(s0)
	addi	a5,a5,12
	.loc 1 84 20
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_md_hmac_finish
	sw	a0,-24(s0)
	.loc 1 84 12 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L24
	.loc 1 53 42 discriminator 2
	lbu	a5,-32(s0)
	.loc 1 53 45 discriminator 2
	addi	a5,a5,1
	andi	a5,a5,0xff
	sb	a5,-32(s0)
.L5:
	.loc 1 53 25 discriminator 1
	lbu	a5,-32(s0)
	.loc 1 53 29 discriminator 1
	lbu	a4,-17(s0)
	bgtu	a4,a5,.L15
	.loc 1 89 1
	j	.L7
.L17:
	.loc 1 56 13
	nop
	j	.L7
.L18:
	.loc 1 60 13
	nop
	j	.L7
.L19:
	.loc 1 64 13
	nop
	j	.L7
.L20:
	.loc 1 69 17
	nop
	j	.L7
.L21:
	.loc 1 73 13
	nop
	j	.L7
.L22:
	.loc 1 78 13
	nop
	j	.L7
.L23:
	.loc 1 82 13
	nop
	j	.L7
.L24:
	.loc 1 85 13
	nop
.L7:
	.loc 1 90 5
	addi	a5,s0,-96
	li	a1,64
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 1 91 12
	lw	a5,-24(s0)
	.loc 1 92 1
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
.LFE17:
	.size	mbedtls_hmac_drbg_update, .-mbedtls_hmac_drbg_update
	.section	.text.mbedtls_hmac_drbg_seed_buf,"ax",@progbits
	.align	1
	.globl	mbedtls_hmac_drbg_seed_buf
	.type	mbedtls_hmac_drbg_seed_buf, @function
mbedtls_hmac_drbg_seed_buf:
.LFB18:
	.loc 1 100 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	.loc 1 101 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 103 16
	lw	a5,-36(s0)
	li	a2,1
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_md_setup
	sw	a0,-20(s0)
	.loc 1 103 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L26
	.loc 1 104 16
	lw	a5,-20(s0)
	j	.L27
.L26:
	.loc 1 116 16
	lw	s1,-36(s0)
	.loc 1 116 56
	lw	a5,-36(s0)
	addi	s2,a5,12
	.loc 1 117 39
	lw	a0,-40(s0)
	call	mbedtls_md_get_size
	mv	a5,a0
	.loc 1 116 16
	mv	a2,a5
	mv	a1,s2
	mv	a0,s1
	call	mbedtls_md_hmac_starts
	sw	a0,-20(s0)
	.loc 1 116 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L28
	.loc 1 118 16
	lw	a5,-20(s0)
	j	.L27
.L28:
	.loc 1 120 15
	lw	a5,-36(s0)
	addi	s1,a5,12
	.loc 1 120 26
	lw	a0,-40(s0)
	call	mbedtls_md_get_size
	mv	a5,a0
	.loc 1 120 5 discriminator 1
	mv	a2,a5
	li	a1,1
	mv	a0,s1
	call	memset
	.loc 1 122 16
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	lw	a0,-36(s0)
	call	mbedtls_hmac_drbg_update
	sw	a0,-20(s0)
	.loc 1 122 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L29
	.loc 1 123 16
	lw	a5,-20(s0)
	j	.L27
.L29:
	.loc 1 126 12
	li	a5,0
.L27:
	.loc 1 127 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	mbedtls_hmac_drbg_seed_buf, .-mbedtls_hmac_drbg_seed_buf
	.section	.text.hmac_drbg_reseed_core,"ax",@progbits
	.align	1
	.type	hmac_drbg_reseed_core, @function
hmac_drbg_reseed_core:
.LFB19:
	.loc 1 137 1
	.cfi_startproc
	addi	sp,sp,-432
	.cfi_def_cfa_offset 432
	sw	ra,428(sp)
	sw	s0,424(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,432
	.cfi_def_cfa 8, 0
	sw	a0,-420(s0)
	sw	a1,-424(s0)
	sw	a2,-428(s0)
	sw	a3,-432(s0)
	.loc 1 139 12
	sw	zero,-20(s0)
	.loc 1 140 9
	li	a5,-110
	sw	a5,-28(s0)
.LBB2:
	.loc 1 145 12
	lw	a5,-432(s0)
	bne	a5,zero,.L31
	.loc 1 146 31
	lw	a5,-420(s0)
	lw	a5,80(a5)
	sw	a5,-24(s0)
	j	.L32
.L31:
	.loc 1 148 36
	lw	a5,-420(s0)
	lw	a4,80(a5)
	.loc 1 148 50
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 1 148 31
	srli	a5,a5,1
	sw	a5,-24(s0)
.L32:
	.loc 1 152 12
	lw	a4,-428(s0)
	li	a5,256
	bgtu	a4,a5,.L33
	.loc 1 153 31
	lw	a4,-24(s0)
	lw	a5,-428(s0)
	add	a4,a4,a5
	.loc 1 152 23 discriminator 1
	li	a5,384
	bleu	a4,a5,.L34
.L33:
	.loc 1 154 20
	li	a5,-5
	j	.L42
.L34:
.LBE2:
	.loc 1 158 5
	addi	a5,s0,-412
	li	a2,384
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 161 19
	lw	a5,-420(s0)
	lw	a5,92(a5)
	.loc 1 161 16
	lw	a4,-420(s0)
	lw	a3,96(a4)
	lw	a4,-420(s0)
	lw	a2,80(a4)
	addi	a4,s0,-412
	mv	a1,a4
	mv	a0,a3
	jalr	a5
.LVL0:
	sw	a0,-28(s0)
	.loc 1 161 8 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L36
	.loc 1 163 16
	li	a5,-9
	j	.L42
.L36:
	.loc 1 165 19
	lw	a5,-420(s0)
	lw	a5,80(a5)
	.loc 1 165 13
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 169 8
	lw	a5,-432(s0)
	beq	a5,zero,.L37
	.loc 1 177 23
	lw	a5,-420(s0)
	lw	a5,92(a5)
	.loc 1 177 20
	lw	a4,-420(s0)
	lw	a0,96(a4)
	addi	a3,s0,-412
	lw	a4,-20(s0)
	add	a3,a3,a4
	.loc 1 179 38
	lw	a4,-420(s0)
	lw	a4,80(a4)
	.loc 1 177 20
	srli	a4,a4,1
	mv	a2,a4
	mv	a1,a3
	jalr	a5
.LVL1:
	sw	a0,-28(s0)
	.loc 1 177 12 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L38
	.loc 1 180 20
	li	a5,-9
	j	.L42
.L38:
	.loc 1 183 23
	lw	a5,-420(s0)
	lw	a5,80(a5)
	.loc 1 183 37
	srli	a5,a5,1
	.loc 1 183 17
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L37:
	.loc 1 188 8
	lw	a5,-424(s0)
	beq	a5,zero,.L39
	.loc 1 188 27 discriminator 1
	lw	a5,-428(s0)
	beq	a5,zero,.L39
	.loc 1 189 9
	addi	a4,s0,-412
	lw	a5,-20(s0)
	add	a5,a4,a5
	lw	a2,-428(s0)
	lw	a1,-424(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 190 17
	lw	a4,-20(s0)
	lw	a5,-428(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L39:
	.loc 1 194 16
	addi	a5,s0,-412
	lw	a2,-20(s0)
	mv	a1,a5
	lw	a0,-420(s0)
	call	mbedtls_hmac_drbg_update
	sw	a0,-28(s0)
	.loc 1 194 8 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L43
	.loc 1 199 25
	lw	a5,-420(s0)
	li	a4,1
	sw	a4,76(a5)
	j	.L41
.L43:
	.loc 1 195 9
	nop
.L41:
	.loc 1 203 5
	addi	a5,s0,-412
	lw	a1,-20(s0)
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 1 204 12
	lw	a5,-28(s0)
.L42:
	.loc 1 205 1
	mv	a0,a5
	lw	ra,428(sp)
	.cfi_restore 1
	lw	s0,424(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 432
	addi	sp,sp,432
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	hmac_drbg_reseed_core, .-hmac_drbg_reseed_core
	.section	.text.mbedtls_hmac_drbg_reseed,"ax",@progbits
	.align	1
	.globl	mbedtls_hmac_drbg_reseed
	.type	mbedtls_hmac_drbg_reseed, @function
mbedtls_hmac_drbg_reseed:
.LFB20:
	.loc 1 212 1
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
	.loc 1 213 12
	li	a3,0
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	hmac_drbg_reseed_core
	mv	a5,a0
	.loc 1 214 1
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
	.size	mbedtls_hmac_drbg_reseed, .-mbedtls_hmac_drbg_reseed
	.section	.text.mbedtls_hmac_drbg_seed,"ax",@progbits
	.align	1
	.globl	mbedtls_hmac_drbg_seed
	.type	mbedtls_hmac_drbg_seed, @function
mbedtls_hmac_drbg_seed:
.LFB21:
	.loc 1 228 1
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
	.loc 1 229 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 232 16
	lw	a5,-36(s0)
	li	a2,1
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_md_setup
	sw	a0,-20(s0)
	.loc 1 232 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L47
	.loc 1 233 16
	lw	a5,-20(s0)
	j	.L48
.L47:
	.loc 1 241 15
	lw	a0,-40(s0)
	call	mbedtls_md_get_size
	mv	a5,a0
	.loc 1 241 13 discriminator 1
	sw	a5,-24(s0)
	.loc 1 248 16
	lw	a4,-36(s0)
	.loc 1 248 56
	lw	a5,-36(s0)
	addi	a5,a5,12
	.loc 1 248 16
	lw	a2,-24(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_md_hmac_starts
	sw	a0,-20(s0)
	.loc 1 248 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L49
	.loc 1 249 16
	lw	a5,-20(s0)
	j	.L48
.L49:
	.loc 1 251 15
	lw	a5,-36(s0)
	addi	a5,a5,12
	.loc 1 251 5
	lw	a2,-24(s0)
	li	a1,1
	mv	a0,a5
	call	memset
	.loc 1 253 20
	lw	a5,-36(s0)
	lw	a4,-44(s0)
	sw	a4,92(a5)
	.loc 1 254 20
	lw	a5,-36(s0)
	lw	a4,-48(s0)
	sw	a4,96(a5)
	.loc 1 256 12
	lw	a5,-36(s0)
	lw	a5,80(a5)
	.loc 1 256 8
	bne	a5,zero,.L50
	.loc 1 264 47
	lw	a4,-24(s0)
	li	a5,20
	bleu	a4,a5,.L51
	.loc 1 264 47 is_stmt 0 discriminator 1
	lw	a4,-24(s0)
	li	a5,28
	bgtu	a4,a5,.L52
	.loc 1 264 47 discriminator 3
	li	a5,24
	j	.L53
.L52:
	.loc 1 264 47 discriminator 4
	li	a5,32
	j	.L53
.L51:
	.loc 1 264 47 discriminator 2
	li	a5,16
.L53:
	.loc 1 264 26 is_stmt 1 discriminator 5
	lw	a4,-36(s0)
	sw	a5,80(a4)
.L50:
	.loc 1 269 16
	li	a3,1
	lw	a2,-56(s0)
	lw	a1,-52(s0)
	lw	a0,-36(s0)
	call	hmac_drbg_reseed_core
	sw	a0,-20(s0)
	.loc 1 269 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L54
	.loc 1 271 16
	lw	a5,-20(s0)
	j	.L48
.L54:
	.loc 1 274 12
	li	a5,0
.L48:
	.loc 1 275 1
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
	.size	mbedtls_hmac_drbg_seed, .-mbedtls_hmac_drbg_seed
	.section	.text.mbedtls_hmac_drbg_set_prediction_resistance,"ax",@progbits
	.align	1
	.globl	mbedtls_hmac_drbg_set_prediction_resistance
	.type	mbedtls_hmac_drbg_set_prediction_resistance, @function
mbedtls_hmac_drbg_set_prediction_resistance:
.LFB22:
	.loc 1 282 1
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
	.loc 1 283 32
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,84(a5)
	.loc 1 284 1
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
.LFE22:
	.size	mbedtls_hmac_drbg_set_prediction_resistance, .-mbedtls_hmac_drbg_set_prediction_resistance
	.section	.text.mbedtls_hmac_drbg_set_entropy_len,"ax",@progbits
	.align	1
	.globl	mbedtls_hmac_drbg_set_entropy_len
	.type	mbedtls_hmac_drbg_set_entropy_len, @function
mbedtls_hmac_drbg_set_entropy_len:
.LFB23:
	.loc 1 290 1
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
	.loc 1 291 22
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,80(a5)
	.loc 1 292 1
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
	.size	mbedtls_hmac_drbg_set_entropy_len, .-mbedtls_hmac_drbg_set_entropy_len
	.section	.text.mbedtls_hmac_drbg_set_reseed_interval,"ax",@progbits
	.align	1
	.globl	mbedtls_hmac_drbg_set_reseed_interval
	.type	mbedtls_hmac_drbg_set_reseed_interval, @function
mbedtls_hmac_drbg_set_reseed_interval:
.LFB24:
	.loc 1 298 1
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
	.loc 1 299 26
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,88(a5)
	.loc 1 300 1
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
	.size	mbedtls_hmac_drbg_set_reseed_interval, .-mbedtls_hmac_drbg_set_reseed_interval
	.section	.text.mbedtls_hmac_drbg_random_with_add,"ax",@progbits
	.align	1
	.globl	mbedtls_hmac_drbg_random_with_add
	.type	mbedtls_hmac_drbg_random_with_add, @function
mbedtls_hmac_drbg_random_with_add:
.LFB25:
	.loc 1 309 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	.loc 1 310 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 311 32
	lw	a5,-52(s0)
	sw	a5,-32(s0)
	.loc 1 312 21
	lw	a5,-32(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_md_get_size
	mv	a5,a0
	.loc 1 312 12 discriminator 1
	sw	a5,-36(s0)
	.loc 1 313 12
	lw	a5,-60(s0)
	sw	a5,-24(s0)
	.loc 1 314 20
	lw	a5,-56(s0)
	sw	a5,-28(s0)
	.loc 1 317 8
	lw	a4,-60(s0)
	li	a5,1024
	bleu	a4,a5,.L59
	.loc 1 318 16
	li	a5,-3
	j	.L60
.L59:
	.loc 1 322 8
	lw	a4,-68(s0)
	li	a5,256
	bleu	a4,a5,.L61
	.loc 1 323 16
	li	a5,-5
	j	.L60
.L61:
	.loc 1 327 12
	lw	a5,-32(s0)
	lw	a5,92(a5)
	.loc 1 327 8
	beq	a5,zero,.L62
	.loc 1 328 13
	lw	a5,-32(s0)
	lw	a4,84(a5)
	.loc 1 327 31 discriminator 1
	li	a5,1
	beq	a4,a5,.L63
	.loc 1 329 13
	lw	a5,-32(s0)
	lw	a4,76(a5)
	.loc 1 329 35
	lw	a5,-32(s0)
	lw	a5,88(a5)
	.loc 1 328 42
	ble	a4,a5,.L62
.L63:
	.loc 1 330 20
	lw	a2,-68(s0)
	lw	a1,-64(s0)
	lw	a0,-32(s0)
	call	mbedtls_hmac_drbg_reseed
	sw	a0,-20(s0)
	.loc 1 330 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L64
	.loc 1 331 20
	lw	a5,-20(s0)
	j	.L60
.L64:
	.loc 1 334 17
	sw	zero,-68(s0)
.L62:
	.loc 1 338 8
	lw	a5,-64(s0)
	beq	a5,zero,.L67
	.loc 1 338 27 discriminator 1
	lw	a5,-68(s0)
	beq	a5,zero,.L67
	.loc 1 339 20
	lw	a2,-68(s0)
	lw	a1,-64(s0)
	lw	a0,-32(s0)
	call	mbedtls_hmac_drbg_update
	sw	a0,-20(s0)
	.loc 1 339 12 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L74
	.loc 1 346 11
	j	.L67
.L72:
.LBB3:
	.loc 1 347 16
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	bleu	a5,a4,.L68
	mv	a5,a4
.L68:
	sw	a5,-40(s0)
	.loc 1 349 20
	lw	a5,-32(s0)
	mv	a0,a5
	call	mbedtls_md_hmac_reset
	sw	a0,-20(s0)
	.loc 1 349 12 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L75
	.loc 1 352 20
	lw	a4,-32(s0)
	.loc 1 353 46
	lw	a5,-32(s0)
	addi	a5,a5,12
	.loc 1 352 20
	lw	a2,-36(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_md_hmac_update
	sw	a0,-20(s0)
	.loc 1 352 12 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L76
	.loc 1 356 20
	lw	a4,-32(s0)
	.loc 1 356 60
	lw	a5,-32(s0)
	addi	a5,a5,12
	.loc 1 356 20
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_md_hmac_finish
	sw	a0,-20(s0)
	.loc 1 356 12 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L77
	.loc 1 360 24
	lw	a5,-32(s0)
	addi	a5,a5,12
	.loc 1 360 9
	lw	a2,-40(s0)
	mv	a1,a5
	lw	a0,-28(s0)
	call	memcpy
	.loc 1 361 13
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 362 14
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
.L67:
.LBE3:
	.loc 1 346 17
	lw	a5,-24(s0)
	bne	a5,zero,.L72
	.loc 1 366 16
	lw	a2,-68(s0)
	lw	a1,-64(s0)
	lw	a0,-32(s0)
	call	mbedtls_hmac_drbg_update
	sw	a0,-20(s0)
	.loc 1 366 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L78
	.loc 1 372 8
	lw	a5,-32(s0)
	lw	a5,76(a5)
	.loc 1 372 24
	addi	a4,a5,1
	lw	a5,-32(s0)
	sw	a4,76(a5)
	j	.L66
.L74:
	.loc 1 341 13
	nop
	j	.L66
.L75:
.LBB4:
	.loc 1 350 13
	nop
	j	.L66
.L76:
	.loc 1 354 13
	nop
	j	.L66
.L77:
	.loc 1 357 13
	nop
	j	.L66
.L78:
.LBE4:
	.loc 1 368 9
	nop
.L66:
	.loc 1 376 12
	lw	a5,-20(s0)
.L60:
	.loc 1 377 1
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
.LFE25:
	.size	mbedtls_hmac_drbg_random_with_add, .-mbedtls_hmac_drbg_random_with_add
	.section	.text.mbedtls_hmac_drbg_random,"ax",@progbits
	.align	1
	.globl	mbedtls_hmac_drbg_random
	.type	mbedtls_hmac_drbg_random, @function
mbedtls_hmac_drbg_random:
.LFB26:
	.loc 1 383 1
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
	.loc 1 384 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 385 32
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 393 11
	li	a4,0
	li	a3,0
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	call	mbedtls_hmac_drbg_random_with_add
	sw	a0,-20(s0)
	.loc 1 401 12
	lw	a5,-20(s0)
	.loc 1 402 1
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
	.size	mbedtls_hmac_drbg_random, .-mbedtls_hmac_drbg_random
	.section	.text.mbedtls_hmac_drbg_free,"ax",@progbits
	.align	1
	.globl	mbedtls_hmac_drbg_free
	.type	mbedtls_hmac_drbg_free, @function
mbedtls_hmac_drbg_free:
.LFB27:
	.loc 1 409 1
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
	.loc 1 410 8
	lw	a5,-20(s0)
	beq	a5,zero,.L84
	.loc 1 420 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_md_free
	.loc 1 421 5
	li	a1,100
	lw	a0,-20(s0)
	call	mbedtls_platform_zeroize
	.loc 1 422 26
	lw	a5,-20(s0)
	li	a4,8192
	addi	a4,a4,1808
	sw	a4,88(a5)
	j	.L81
.L84:
	.loc 1 411 9
	nop
.L81:
	.loc 1 423 1
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
	.size	mbedtls_hmac_drbg_free, .-mbedtls_hmac_drbg_free
	.section	.rodata.entropy_pr,"a"
	.align	2
	.type	entropy_pr, @object
	.size	entropy_pr, 56
entropy_pr:
	.base64	"oMmrWPHi5aTePr1P9z6cW2Tv2MoCjPgRSKWE/mmrWu5Cqk1CF2CZ1F4Tl9xATYaje/VZVHVpUeQ="
	.section	.rodata.result_pr,"a"
	.align	2
	.type	result_pr, @object
	.size	result_pr, 80
result_pr:
	.base64	"mgCi0A7Vm/4x7LE5m2CBSNGWnSUNPB6UEBCYEpMlyrj8zC1UcxlwwBB6pIklGZVeS8YAHX9Oaiv4owGrRgVcCaZxiPGnQO7z4VwCm0SvA0Q="
	.section	.rodata.entropy_nopr,"a"
	.align	2
	.type	entropy_nopr, @object
	.size	entropy_nopr, 40
entropy_nopr:
	.base64	"eTSbv3zdpXmVV4ZmIckTgxFGczq/jDXIxyFbW5bEjpszjHTj6Z3+3w=="
	.section	.rodata.result_nopr,"a"
	.align	2
	.type	result_nopr, @object
	.size	result_nopr, 80
result_nopr:
	.base64	"xqFquNQgcG8PNKt/7FrcqdjKOhM+FZymrEPG+KK+IoNKTAoK/7ENcZTxwaXPcyLsGuCWTtS/EidG4If9tbPpGzST1buY+u1J6F8TD8ikWbc="
	.section	.sbss.test_offset,"aw",@nobits
	.align	2
	.type	test_offset, @object
	.size	test_offset, 4
test_offset:
	.zero	4
	.section	.text.hmac_drbg_self_test_entropy,"ax",@progbits
	.align	1
	.type	hmac_drbg_self_test_entropy, @function
hmac_drbg_self_test_entropy:
.LFB28:
	.loc 1 551 1
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
	.loc 1 552 26
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 553 5
	lui	a5,%hi(test_offset)
	lw	a5,%lo(test_offset)(a5)
	.loc 1 553 19
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 1 553 5
	lw	a2,-44(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	memcpy
	.loc 1 554 17
	lui	a5,%hi(test_offset)
	lw	a4,%lo(test_offset)(a5)
	lw	a5,-44(s0)
	add	a4,a4,a5
	lui	a5,%hi(test_offset)
	sw	a4,%lo(test_offset)(a5)
	.loc 1 555 12
	li	a5,0
	.loc 1 556 1
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
.LFE28:
	.size	hmac_drbg_self_test_entropy, .-hmac_drbg_self_test_entropy
	.section	.rodata
	.align	2
.LC0:
	.string	"  HMAC_DRBG (PR = True) : "
	.align	2
.LC1:
	.string	"failed\n"
	.align	2
.LC2:
	.string	"passed\n"
	.align	2
.LC3:
	.string	"  HMAC_DRBG (PR = False) : "
	.align	2
.LC4:
	.string	"\n"
	.section	.text.mbedtls_hmac_drbg_self_test,"ax",@progbits
	.align	1
	.globl	mbedtls_hmac_drbg_self_test
	.type	mbedtls_hmac_drbg_self_test, @function
mbedtls_hmac_drbg_self_test:
.LFB29:
	.loc 1 569 1
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
	.loc 1 572 40
	li	a0,5
	call	mbedtls_md_info_from_type
	sw	a0,-20(s0)
	.loc 1 574 5
	addi	a5,s0,-120
	mv	a0,a5
	call	mbedtls_hmac_drbg_init
	.loc 1 579 8
	lw	a5,-212(s0)
	beq	a5,zero,.L88
	.loc 1 580 9
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
.L88:
	.loc 1 583 17
	lui	a5,%hi(test_offset)
	sw	zero,%lo(test_offset)(a5)
	.loc 1 584 10
	addi	a0,s0,-120
	li	a5,0
	li	a4,0
	lui	a3,%hi(entropy_pr)
	addi	a3,a3,%lo(entropy_pr)
	lui	a2,%hi(hmac_drbg_self_test_entropy)
	addi	a2,a2,%lo(hmac_drbg_self_test_entropy)
	lw	a1,-20(s0)
	call	mbedtls_hmac_drbg_seed
	mv	a5,a0
	.loc 1 584 8 discriminator 1
	beq	a5,zero,.L89
	.loc 1 584 21 discriminator 2
	lw	a5,-212(s0)
	beq	a5,zero,.L90
	.loc 1 584 36 discriminator 3
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L90:
	.loc 1 584 63 discriminator 6
	li	a5,1
	.loc 1 584 63 is_stmt 0
	j	.L112
.L89:
	.loc 1 587 5 is_stmt 1
	addi	a5,s0,-120
	li	a1,1
	mv	a0,a5
	call	mbedtls_hmac_drbg_set_prediction_resistance
	.loc 1 588 10
	addi	a4,s0,-200
	addi	a5,s0,-120
	li	a2,80
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_hmac_drbg_random
	mv	a5,a0
	.loc 1 588 8 discriminator 1
	beq	a5,zero,.L92
	.loc 1 588 62 discriminator 2
	lw	a5,-212(s0)
	beq	a5,zero,.L93
	.loc 1 588 77 discriminator 3
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L93:
	.loc 1 588 104 discriminator 6
	li	a5,1
	.loc 1 588 104 is_stmt 0
	j	.L112
.L92:
	.loc 1 589 10 is_stmt 1
	addi	a4,s0,-200
	addi	a5,s0,-120
	li	a2,80
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_hmac_drbg_random
	mv	a5,a0
	.loc 1 589 8 discriminator 1
	beq	a5,zero,.L94
	.loc 1 589 62 discriminator 2
	lw	a5,-212(s0)
	beq	a5,zero,.L95
	.loc 1 589 77 discriminator 3
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L95:
	.loc 1 589 104 discriminator 6
	li	a5,1
	.loc 1 589 104 is_stmt 0
	j	.L112
.L94:
	.loc 1 590 10 is_stmt 1
	addi	a4,s0,-200
	li	a2,80
	lui	a5,%hi(result_pr)
	addi	a1,a5,%lo(result_pr)
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 1 590 8 discriminator 1
	beq	a5,zero,.L96
	.loc 1 590 49 discriminator 2
	lw	a5,-212(s0)
	beq	a5,zero,.L97
	.loc 1 590 64 discriminator 3
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L97:
	.loc 1 590 91 discriminator 6
	li	a5,1
	.loc 1 590 91 is_stmt 0
	j	.L112
.L96:
	.loc 1 591 5 is_stmt 1
	addi	a5,s0,-120
	mv	a0,a5
	call	mbedtls_hmac_drbg_free
	.loc 1 593 5
	addi	a5,s0,-120
	mv	a0,a5
	call	mbedtls_hmac_drbg_free
	.loc 1 595 8
	lw	a5,-212(s0)
	beq	a5,zero,.L98
	.loc 1 596 9
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L98:
	.loc 1 602 8
	lw	a5,-212(s0)
	beq	a5,zero,.L99
	.loc 1 603 9
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
.L99:
	.loc 1 606 5
	addi	a5,s0,-120
	mv	a0,a5
	call	mbedtls_hmac_drbg_init
	.loc 1 608 17
	lui	a5,%hi(test_offset)
	sw	zero,%lo(test_offset)(a5)
	.loc 1 609 10
	addi	a0,s0,-120
	li	a5,0
	li	a4,0
	lui	a3,%hi(entropy_nopr)
	addi	a3,a3,%lo(entropy_nopr)
	lui	a2,%hi(hmac_drbg_self_test_entropy)
	addi	a2,a2,%lo(hmac_drbg_self_test_entropy)
	lw	a1,-20(s0)
	call	mbedtls_hmac_drbg_seed
	mv	a5,a0
	.loc 1 609 8 discriminator 1
	beq	a5,zero,.L100
	.loc 1 609 21 discriminator 2
	lw	a5,-212(s0)
	beq	a5,zero,.L101
	.loc 1 609 36 discriminator 3
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L101:
	.loc 1 609 63 discriminator 6
	li	a5,1
	.loc 1 609 63 is_stmt 0
	j	.L112
.L100:
	.loc 1 612 10 is_stmt 1
	addi	a5,s0,-120
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	mbedtls_hmac_drbg_reseed
	mv	a5,a0
	.loc 1 612 8 discriminator 1
	beq	a5,zero,.L102
	.loc 1 612 21 discriminator 2
	lw	a5,-212(s0)
	beq	a5,zero,.L103
	.loc 1 612 36 discriminator 3
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L103:
	.loc 1 612 63 discriminator 6
	li	a5,1
	.loc 1 612 63 is_stmt 0
	j	.L112
.L102:
	.loc 1 613 10 is_stmt 1
	addi	a4,s0,-200
	addi	a5,s0,-120
	li	a2,80
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_hmac_drbg_random
	mv	a5,a0
	.loc 1 613 8 discriminator 1
	beq	a5,zero,.L104
	.loc 1 613 62 discriminator 2
	lw	a5,-212(s0)
	beq	a5,zero,.L105
	.loc 1 613 77 discriminator 3
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L105:
	.loc 1 613 104 discriminator 6
	li	a5,1
	.loc 1 613 104 is_stmt 0
	j	.L112
.L104:
	.loc 1 614 10 is_stmt 1
	addi	a4,s0,-200
	addi	a5,s0,-120
	li	a2,80
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_hmac_drbg_random
	mv	a5,a0
	.loc 1 614 8 discriminator 1
	beq	a5,zero,.L106
	.loc 1 614 62 discriminator 2
	lw	a5,-212(s0)
	beq	a5,zero,.L107
	.loc 1 614 77 discriminator 3
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L107:
	.loc 1 614 104 discriminator 6
	li	a5,1
	.loc 1 614 104 is_stmt 0
	j	.L112
.L106:
	.loc 1 615 10 is_stmt 1
	addi	a4,s0,-200
	li	a2,80
	lui	a5,%hi(result_nopr)
	addi	a1,a5,%lo(result_nopr)
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 1 615 8 discriminator 1
	beq	a5,zero,.L108
	.loc 1 615 51 discriminator 2
	lw	a5,-212(s0)
	beq	a5,zero,.L109
	.loc 1 615 66 discriminator 3
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L109:
	.loc 1 615 93 discriminator 6
	li	a5,1
	.loc 1 615 93 is_stmt 0
	j	.L112
.L108:
	.loc 1 616 5 is_stmt 1
	addi	a5,s0,-120
	mv	a0,a5
	call	mbedtls_hmac_drbg_free
	.loc 1 618 5
	addi	a5,s0,-120
	mv	a0,a5
	call	mbedtls_hmac_drbg_free
	.loc 1 620 8
	lw	a5,-212(s0)
	beq	a5,zero,.L110
	.loc 1 621 9
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L110:
	.loc 1 624 8
	lw	a5,-212(s0)
	beq	a5,zero,.L111
	.loc 1 625 9
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
.L111:
	.loc 1 628 12
	li	a5,0
.L112:
	.loc 1 629 1
	mv	a0,a5
	lw	ra,220(sp)
	.cfi_restore 1
	lw	s0,216(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 224
	addi	sp,sp,224
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	mbedtls_hmac_drbg_self_test, .-mbedtls_hmac_drbg_self_test
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/hmac_drbg.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x97d
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1b
	.4byte	.LASF91
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL1
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
	.uleb128 0xe
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
	.uleb128 0x1c
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x12
	.4byte	.LASF25
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x1d
	.byte	0x4
	.uleb128 0x15
	.4byte	0x89
	.uleb128 0x9
	.4byte	0x32
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xe
	.4byte	0x95
	.uleb128 0x9
	.4byte	0x9c
	.uleb128 0x15
	.4byte	0xa1
	.uleb128 0xb
	.4byte	0x32
	.4byte	0xbb
	.uleb128 0xf
	.4byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xc5
	.uleb128 0x15
	.4byte	0xbb
	.uleb128 0x1e
	.uleb128 0x1f
	.4byte	0x68
	.4byte	0xdf
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0x90
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x20
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x3
	.byte	0x2f
	.byte	0xe
	.4byte	0x136
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x11
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x12
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x13
	.byte	0
	.uleb128 0x12
	.4byte	.LASF26
	.byte	0x3
	.byte	0x3c
	.byte	0x3
	.4byte	0xdf
	.uleb128 0x12
	.4byte	.LASF27
	.byte	0x3
	.byte	0x6b
	.byte	0x22
	.4byte	0x153
	.uleb128 0xe
	.4byte	0x142
	.uleb128 0x21
	.4byte	.LASF27
	.uleb128 0x18
	.4byte	.LASF31
	.byte	0xc
	.byte	0x3
	.byte	0x7a
	.4byte	0x18c
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x3
	.byte	0x7c
	.byte	0x1e
	.4byte	0x18c
	.byte	0
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x3
	.byte	0x84
	.byte	0xb
	.4byte	0x89
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x3
	.byte	0x88
	.byte	0xb
	.4byte	0x89
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x14e
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x3
	.byte	0x8a
	.byte	0x3
	.4byte	0x158
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x64
	.byte	0x4
	.byte	0x4a
	.4byte	0x210
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x4
	.byte	0x4d
	.byte	0x1a
	.4byte	0x191
	.byte	0
	.uleb128 0x22
	.string	"V"
	.byte	0x4
	.byte	0x4e
	.byte	0x13
	.4byte	0x210
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x4
	.byte	0x4f
	.byte	0x9
	.4byte	0x68
	.byte	0x4c
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x4
	.byte	0x52
	.byte	0xc
	.4byte	0x76
	.byte	0x50
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x4
	.byte	0x53
	.byte	0x9
	.4byte	0x68
	.byte	0x54
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x4
	.byte	0x55
	.byte	0x9
	.4byte	0x68
	.byte	0x58
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x4
	.byte	0x58
	.byte	0xa
	.4byte	0x220
	.byte	0x5c
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x4
	.byte	0x59
	.byte	0xb
	.4byte	0x89
	.byte	0x60
	.byte	0
	.uleb128 0xb
	.4byte	0x32
	.4byte	0x220
	.uleb128 0xf
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0x9
	.4byte	0xc6
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x4
	.byte	0x66
	.byte	0x3
	.4byte	0x19d
	.uleb128 0xb
	.4byte	0x39
	.4byte	0x241
	.uleb128 0xf
	.4byte	0x6f
	.byte	0x37
	.byte	0
	.uleb128 0xe
	.4byte	0x231
	.uleb128 0x7
	.4byte	.LASF39
	.2byte	0x201
	.byte	0x1c
	.4byte	0x241
	.uleb128 0x5
	.byte	0x3
	.4byte	entropy_pr
	.uleb128 0xb
	.4byte	0x39
	.4byte	0x268
	.uleb128 0xf
	.4byte	0x6f
	.byte	0x4f
	.byte	0
	.uleb128 0xe
	.4byte	0x258
	.uleb128 0x7
	.4byte	.LASF40
	.2byte	0x208
	.byte	0x1c
	.4byte	0x268
	.uleb128 0x5
	.byte	0x3
	.4byte	result_pr
	.uleb128 0xb
	.4byte	0x39
	.4byte	0x28f
	.uleb128 0xf
	.4byte	0x6f
	.byte	0x27
	.byte	0
	.uleb128 0xe
	.4byte	0x27f
	.uleb128 0x7
	.4byte	.LASF41
	.2byte	0x213
	.byte	0x1c
	.4byte	0x28f
	.uleb128 0x5
	.byte	0x3
	.4byte	entropy_nopr
	.uleb128 0x7
	.4byte	.LASF42
	.2byte	0x219
	.byte	0x1c
	.4byte	0x268
	.uleb128 0x5
	.byte	0x3
	.4byte	result_nopr
	.uleb128 0x7
	.4byte	.LASF43
	.2byte	0x224
	.byte	0xf
	.4byte	0x76
	.uleb128 0x5
	.byte	0x3
	.4byte	test_offset
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x5
	.byte	0x1e
	.byte	0x5
	.4byte	0x68
	.4byte	0x2ea
	.uleb128 0x1
	.4byte	0xbb
	.uleb128 0x1
	.4byte	0xbb
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x6
	.byte	0xce
	.byte	0x5
	.4byte	0x68
	.4byte	0x301
	.uleb128 0x1
	.4byte	0xa6
	.uleb128 0x23
	.byte	0
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x3
	.byte	0x95
	.byte	0x1a
	.4byte	0x18c
	.4byte	0x317
	.uleb128 0x1
	.4byte	0x136
	.byte	0
	.uleb128 0x19
	.4byte	.LASF49
	.byte	0x3
	.byte	0xae
	.4byte	0x328
	.uleb128 0x1
	.4byte	0x328
	.byte	0
	.uleb128 0x9
	.4byte	0x191
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x5
	.byte	0x1f
	.byte	0x8
	.4byte	0x89
	.4byte	0x34d
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0xc0
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x3
	.byte	0xc5
	.byte	0x5
	.4byte	0x68
	.4byte	0x36d
	.uleb128 0x1
	.4byte	0x328
	.uleb128 0x1
	.4byte	0x18c
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x19
	.4byte	.LASF50
	.byte	0x7
	.byte	0x9f
	.4byte	0x383
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x13
	.4byte	.LASF51
	.2byte	0x1ae
	.4byte	0x68
	.4byte	0x3a2
	.uleb128 0x1
	.4byte	0x328
	.uleb128 0x1
	.4byte	0x3a2
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x9
	.4byte	0x39
	.uleb128 0x13
	.4byte	.LASF52
	.2byte	0x1db
	.4byte	0x68
	.4byte	0x3c1
	.uleb128 0x1
	.4byte	0x328
	.uleb128 0x1
	.4byte	0x90
	.byte	0
	.uleb128 0x13
	.4byte	.LASF53
	.2byte	0x1c5
	.4byte	0x68
	.4byte	0x3e0
	.uleb128 0x1
	.4byte	0x328
	.uleb128 0x1
	.4byte	0x3a2
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x13
	.4byte	.LASF54
	.2byte	0x1ed
	.4byte	0x68
	.4byte	0x3f5
	.uleb128 0x1
	.4byte	0x328
	.byte	0
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x3
	.byte	0xeb
	.byte	0xf
	.4byte	0x32
	.4byte	0x40b
	.uleb128 0x1
	.4byte	0x18c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x5
	.byte	0x21
	.byte	0x8
	.4byte	0x89
	.4byte	0x42b
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x16
	.4byte	.LASF59
	.2byte	0x238
	.4byte	0x68
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x484
	.uleb128 0x3
	.4byte	.LASF57
	.2byte	0x238
	.byte	0x25
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0xa
	.string	"ctx"
	.2byte	0x23a
	.byte	0x1f
	.4byte	0x225
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0xa
	.string	"buf"
	.2byte	0x23b
	.byte	0x13
	.4byte	0x484
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x7
	.4byte	.LASF28
	.2byte	0x23c
	.byte	0x1e
	.4byte	0x18c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	0x32
	.4byte	0x494
	.uleb128 0xf
	.4byte	0x6f
	.byte	0x4f
	.byte	0
	.uleb128 0x24
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x225
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ea
	.uleb128 0x3
	.4byte	.LASF58
	.2byte	0x225
	.byte	0x2e
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"buf"
	.2byte	0x226
	.byte	0x37
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"len"
	.2byte	0x226
	.byte	0x43
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.string	"p"
	.2byte	0x228
	.byte	0x1a
	.4byte	0x3a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x198
	.byte	0x6
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x511
	.uleb128 0xd
	.string	"ctx"
	.2byte	0x198
	.byte	0x38
	.4byte	0x511
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x225
	.uleb128 0x16
	.4byte	.LASF60
	.2byte	0x17e
	.4byte	0x68
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57b
	.uleb128 0x3
	.4byte	.LASF61
	.2byte	0x17e
	.byte	0x24
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF62
	.2byte	0x17e
	.byte	0x3a
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF63
	.2byte	0x17e
	.byte	0x49
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.string	"ret"
	.2byte	0x180
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"ctx"
	.2byte	0x181
	.byte	0x20
	.4byte	0x511
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.4byte	.LASF64
	.2byte	0x132
	.4byte	0x68
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x64e
	.uleb128 0x3
	.4byte	.LASF61
	.2byte	0x132
	.byte	0x2d
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF62
	.2byte	0x133
	.byte	0x36
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF63
	.2byte	0x133
	.byte	0x45
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF65
	.2byte	0x134
	.byte	0x3c
	.4byte	0x3a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.4byte	.LASF66
	.2byte	0x134
	.byte	0x4f
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xa
	.string	"ret"
	.2byte	0x136
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"ctx"
	.2byte	0x137
	.byte	0x20
	.4byte	0x511
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.4byte	.LASF67
	.2byte	0x138
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF68
	.2byte	0x139
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"out"
	.2byte	0x13a
	.byte	0x14
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x176
	.byte	0x1
	.4byte	.L66
	.uleb128 0x27
	.4byte	.LLRL0
	.uleb128 0x7
	.4byte	.LASF69
	.2byte	0x15b
	.byte	0x10
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF71
	.2byte	0x129
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x682
	.uleb128 0xd
	.string	"ctx"
	.2byte	0x129
	.byte	0x47
	.4byte	0x511
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF72
	.2byte	0x129
	.byte	0x50
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.4byte	.LASF73
	.2byte	0x121
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b6
	.uleb128 0xd
	.string	"ctx"
	.2byte	0x121
	.byte	0x43
	.4byte	0x511
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"len"
	.2byte	0x121
	.byte	0x4f
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.4byte	.LASF74
	.2byte	0x118
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ea
	.uleb128 0xd
	.string	"ctx"
	.2byte	0x118
	.byte	0x4d
	.4byte	0x511
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF75
	.2byte	0x119
	.byte	0x36
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0xde
	.4byte	0x68
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x773
	.uleb128 0x8
	.string	"ctx"
	.byte	0xde
	.byte	0x37
	.4byte	0x511
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0xdf
	.byte	0x35
	.4byte	0x18c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0xe0
	.byte	0x22
	.4byte	0x220
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0xe1
	.byte	0x22
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0xe2
	.byte	0x31
	.4byte	0x3a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.string	"len"
	.byte	0xe3
	.byte	0x23
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.string	"ret"
	.byte	0xe5
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0xe6
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0xd2
	.4byte	0x68
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7b6
	.uleb128 0x8
	.string	"ctx"
	.byte	0xd2
	.byte	0x39
	.4byte	0x511
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0xd3
	.byte	0x33
	.4byte	0x3a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"len"
	.byte	0xd3
	.byte	0x46
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x28
	.4byte	.LASF81
	.byte	0x1
	.byte	0x86
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x85a
	.uleb128 0x8
	.string	"ctx"
	.byte	0x86
	.byte	0x3d
	.4byte	0x511
	.uleb128 0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0x87
	.byte	0x37
	.4byte	0x3a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x8
	.string	"len"
	.byte	0x87
	.byte	0x4a
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -428
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0x88
	.byte	0x26
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0x8a
	.byte	0x13
	.4byte	0x85a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -412
	.uleb128 0x11
	.4byte	.LASF84
	.byte	0x8b
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.string	"ret"
	.byte	0x8c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.4byte	.LASF85
	.byte	0xc9
	.4byte	.L41
	.uleb128 0x29
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x11
	.4byte	.LASF86
	.byte	0x8f
	.byte	0x10
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x32
	.4byte	0x86b
	.uleb128 0x2a
	.4byte	0x6f
	.2byte	0x17f
	.byte	0
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x61
	.4byte	0x68
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ca
	.uleb128 0x8
	.string	"ctx"
	.byte	0x61
	.byte	0x3b
	.4byte	0x511
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x62
	.byte	0x39
	.4byte	0x18c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0x63
	.byte	0x35
	.4byte	0x3a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF88
	.byte	0x63
	.byte	0x42
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"ret"
	.byte	0x65
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF89
	.byte	0x2b
	.4byte	0x68
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x95f
	.uleb128 0x8
	.string	"ctx"
	.byte	0x2b
	.byte	0x39
	.4byte	0x511
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0x2c
	.byte	0x33
	.4byte	0x3a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0x2d
	.byte	0x25
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x2f
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.4byte	.LASF90
	.byte	0x30
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x10
	.string	"sep"
	.byte	0x31
	.byte	0x13
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.string	"K"
	.byte	0x32
	.byte	0x13
	.4byte	0x210
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x10
	.string	"ret"
	.byte	0x33
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.4byte	.LASF85
	.byte	0x59
	.4byte	.L7
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF92
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.string	"ctx"
	.byte	0x21
	.byte	0x38
	.4byte	0x511
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
	.uleb128 0x8
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
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
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x15
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.4byte	0x84
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
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
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
	.4byte	.LBB3
	.byte	0x4
	.uleb128 .LBB3-.LBB3
	.uleb128 .LBE3-.LBB3
	.byte	0x4
	.uleb128 .LBB4-.LBB3
	.uleb128 .LBE4-.LBB3
	.byte	0
.LLRL1:
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF45:
	.string	"printf"
.LASF25:
	.string	"size_t"
.LASF86:
	.string	"total_entropy_len"
.LASF67:
	.string	"md_len"
.LASF75:
	.string	"resistance"
.LASF69:
	.string	"use_len"
.LASF37:
	.string	"f_entropy"
.LASF9:
	.string	"long long unsigned int"
.LASF74:
	.string	"mbedtls_hmac_drbg_set_prediction_resistance"
.LASF42:
	.string	"result_nopr"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF76:
	.string	"mbedtls_hmac_drbg_seed"
.LASF6:
	.string	"long int"
.LASF17:
	.string	"MBEDTLS_MD_SHA224"
.LASF92:
	.string	"mbedtls_hmac_drbg_init"
.LASF55:
	.string	"mbedtls_md_get_size"
.LASF47:
	.string	"memcpy"
.LASF81:
	.string	"hmac_drbg_reseed_core"
.LASF31:
	.string	"mbedtls_md_context_t"
.LASF24:
	.string	"MBEDTLS_MD_SHA3_512"
.LASF72:
	.string	"interval"
.LASF32:
	.string	"mbedtls_hmac_drbg_context"
.LASF51:
	.string	"mbedtls_md_hmac_starts"
.LASF48:
	.string	"mbedtls_md_setup"
.LASF80:
	.string	"hmac_drbg_self_test_entropy"
.LASF70:
	.string	"mbedtls_hmac_drbg_free"
.LASF49:
	.string	"mbedtls_md_free"
.LASF10:
	.string	"unsigned int"
.LASF33:
	.string	"reseed_counter"
.LASF22:
	.string	"MBEDTLS_MD_SHA3_256"
.LASF83:
	.string	"seed"
.LASF7:
	.string	"long unsigned int"
.LASF79:
	.string	"mbedtls_hmac_drbg_reseed"
.LASF15:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF26:
	.string	"mbedtls_md_type_t"
.LASF58:
	.string	"data"
.LASF5:
	.string	"short unsigned int"
.LASF54:
	.string	"mbedtls_md_hmac_reset"
.LASF73:
	.string	"mbedtls_hmac_drbg_set_entropy_len"
.LASF89:
	.string	"mbedtls_hmac_drbg_update"
.LASF61:
	.string	"p_rng"
.LASF39:
	.string	"entropy_pr"
.LASF66:
	.string	"add_len"
.LASF28:
	.string	"md_info"
.LASF77:
	.string	"custom"
.LASF27:
	.string	"mbedtls_md_info_t"
.LASF11:
	.string	"long double"
.LASF82:
	.string	"use_nonce"
.LASF71:
	.string	"mbedtls_hmac_drbg_set_reseed_interval"
.LASF20:
	.string	"MBEDTLS_MD_SHA512"
.LASF64:
	.string	"mbedtls_hmac_drbg_random_with_add"
.LASF43:
	.string	"test_offset"
.LASF16:
	.string	"MBEDTLS_MD_SHA1"
.LASF23:
	.string	"MBEDTLS_MD_SHA3_384"
.LASF84:
	.string	"seedlen"
.LASF38:
	.string	"p_entropy"
.LASF13:
	.string	"MBEDTLS_MD_NONE"
.LASF18:
	.string	"MBEDTLS_MD_SHA256"
.LASF62:
	.string	"output"
.LASF52:
	.string	"mbedtls_md_hmac_finish"
.LASF3:
	.string	"unsigned char"
.LASF41:
	.string	"entropy_nopr"
.LASF29:
	.string	"md_ctx"
.LASF4:
	.string	"short int"
.LASF88:
	.string	"data_len"
.LASF85:
	.string	"exit"
.LASF30:
	.string	"hmac_ctx"
.LASF34:
	.string	"entropy_len"
.LASF53:
	.string	"mbedtls_md_hmac_update"
.LASF59:
	.string	"mbedtls_hmac_drbg_self_test"
.LASF87:
	.string	"mbedtls_hmac_drbg_seed_buf"
.LASF12:
	.string	"char"
.LASF50:
	.string	"mbedtls_platform_zeroize"
.LASF57:
	.string	"verbose"
.LASF65:
	.string	"additional"
.LASF46:
	.string	"mbedtls_md_info_from_type"
.LASF44:
	.string	"memcmp"
.LASF36:
	.string	"reseed_interval"
.LASF19:
	.string	"MBEDTLS_MD_SHA384"
.LASF14:
	.string	"MBEDTLS_MD_MD5"
.LASF91:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF56:
	.string	"memset"
.LASF60:
	.string	"mbedtls_hmac_drbg_random"
.LASF78:
	.string	"md_size"
.LASF90:
	.string	"rounds"
.LASF40:
	.string	"result_pr"
.LASF21:
	.string	"MBEDTLS_MD_SHA3_224"
.LASF63:
	.string	"out_len"
.LASF35:
	.string	"prediction_resistance"
.LASF68:
	.string	"left"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/hmac_drbg.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
