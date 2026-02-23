	.file	"cmac.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/cmac.c"
	.section	.text.mbedtls_cipher_info_get_type,"ax",@progbits
	.align	1
	.type	mbedtls_cipher_info_get_type, @function
mbedtls_cipher_info_get_type:
.LFB11:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/cipher.h"
	.loc 1 446 1
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
	.loc 1 447 8
	lw	a5,-20(s0)
	bne	a5,zero,.L2
	.loc 1 448 16
	li	a5,0
	j	.L3
.L2:
	.loc 1 450 16
	lw	a5,-20(s0)
	lbu	a5,6(a5)
.L3:
	.loc 1 452 1
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
.LFE11:
	.size	mbedtls_cipher_info_get_type, .-mbedtls_cipher_info_get_type
	.section	.text.mbedtls_cipher_info_get_block_size,"ax",@progbits
	.align	1
	.type	mbedtls_cipher_info_get_block_size, @function
mbedtls_cipher_info_get_block_size:
.LFB16:
	.loc 1 547 1
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
	.loc 1 548 8
	lw	a5,-20(s0)
	bne	a5,zero,.L5
	.loc 1 549 16
	li	a5,0
	j	.L6
.L5:
	.loc 1 552 26
	lw	a5,-20(s0)
	lw	a5,4(a5)
	andi	a5,a5,31
	andi	a5,a5,0xff
.L6:
	.loc 1 553 1
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
	.size	mbedtls_cipher_info_get_block_size, .-mbedtls_cipher_info_get_block_size
	.section	.text.mbedtls_ct_compiler_opaque,"ax",@progbits
	.align	1
	.type	mbedtls_ct_compiler_opaque, @function
mbedtls_ct_compiler_opaque:
.LFB30:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/constant_time_impl.h"
	.loc 2 86 1
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
	.loc 2 88 5
	lw	a5,-20(s0)
	sw	a5,-20(s0)
	.loc 2 89 12
	lw	a5,-20(s0)
	.loc 2 93 1
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
.LFE30:
	.size	mbedtls_ct_compiler_opaque, .-mbedtls_ct_compiler_opaque
	.section	.text.mbedtls_ct_bool,"ax",@progbits
	.align	1
	.type	mbedtls_ct_bool, @function
mbedtls_ct_bool:
.LFB31:
	.loc 2 121 1
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
	.loc 2 184 34
	lw	a0,-36(s0)
	call	mbedtls_ct_compiler_opaque
	sw	a0,-20(s0)
	.loc 2 192 27
	lw	a5,-20(s0)
	neg	a4,a5
	.loc 2 192 39
	lw	a5,-20(s0)
	srli	a5,a5,1
	.loc 2 192 34
	neg	a5,a5
	.loc 2 192 32
	or	a5,a4,a5
	.loc 2 192 22
	sw	a5,-24(s0)
	.loc 2 195 11
	lw	a5,-24(s0)
	.loc 2 195 34
	srli	a5,a5,31
	.loc 2 195 7
	sw	a5,-24(s0)
	.loc 2 198 38
	lw	a5,-24(s0)
	neg	a5,a5
	.loc 2 203 1
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
	.size	mbedtls_ct_bool, .-mbedtls_ct_bool
	.section	.text.mbedtls_ct_uint_if_else_0,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_if_else_0, @function
mbedtls_ct_uint_if_else_0:
.LFB41:
	.loc 2 452 1
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
	.loc 2 453 12
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	and	a5,a4,a5
	.loc 2 454 1
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
.LFE41:
	.size	mbedtls_ct_uint_if_else_0, .-mbedtls_ct_uint_if_else_0
	.section	.text.cmac_multiply_by_u,"ax",@progbits
	.align	1
	.type	cmac_multiply_by_u, @function
cmac_multiply_by_u:
.LFB54:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/cmac.c"
	.loc 3 58 1
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
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	.loc 3 59 25
	li	a5,-121
	sb	a5,-29(s0)
	.loc 3 61 14
	sw	zero,-24(s0)
	.loc 3 64 8
	lw	a4,-76(s0)
	li	a5,16
	bne	a4,a5,.L14
	.loc 3 65 13
	lbu	a5,-29(s0)
	sb	a5,-17(s0)
	j	.L15
.L14:
	.loc 3 68 13
	lw	a4,-76(s0)
	li	a5,8
	bne	a4,a5,.L16
.LBB18:
	.loc 3 69 29
	li	a5,27
	sb	a5,-30(s0)
	.loc 3 70 13
	lbu	a5,-30(s0)
	sb	a5,-17(s0)
.LBE18:
	j	.L15
.L16:
	.loc 3 74 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L17
.L15:
	.loc 3 77 14
	lw	a5,-76(s0)
	.loc 3 77 12
	addi	a5,a5,-4
	sw	a5,-28(s0)
	.loc 3 77 5
	j	.L18
.L20:
.LBB19:
	.loc 3 78 99
	lw	a5,-28(s0)
	.loc 3 78 140
	lw	a4,-72(s0)
	add	a5,a4,a5
	sw	a5,-44(s0)
.LBB20:
.LBB21:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/alignment.h"
	.loc 4 174 33
	lw	a5,-44(s0)
	sw	a5,-48(s0)
	.loc 4 175 7
	lw	a5,-48(s0)
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
	sw	a5,-52(s0)
	.loc 4 179 12
	lw	a5,-52(s0)
.LBE21:
.LBE20:
	.loc 3 78 79 discriminator 1
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	sw	a5,-36(s0)
	.loc 3 79 18
	lw	a5,-36(s0)
	srli	a5,a5,31
	sw	a5,-40(s0)
	.loc 3 80 20
	lw	a5,-36(s0)
	slli	a5,a5,1
	.loc 3 80 13
	lw	a4,-24(s0)
	or	a5,a4,a5
	sw	a5,-36(s0)
	.loc 3 81 97 discriminator 2
	lw	a5,-28(s0)
	.loc 3 81 139 discriminator 2
	lw	a4,-68(s0)
	add	s1,a4,a5
	.loc 3 81 146 discriminator 2
	lw	a0,-36(s0)
	call	__bswapsi2
	mv	a5,a0
	sw	s1,-56(s0)
	sw	a5,-60(s0)
.LBB22:
.LBB23:
	.loc 4 200 33
	lw	a5,-56(s0)
	sw	a5,-64(s0)
	.loc 4 201 12
	lw	a5,-64(s0)
	lw	a4,-60(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-60(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-60(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-60(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 4 205 1
	nop
.LBE23:
.LBE22:
	.loc 3 82 18
	lw	a5,-40(s0)
	sw	a5,-24(s0)
.LBE19:
	.loc 3 77 45 discriminator 2
	lw	a5,-28(s0)
	addi	a5,a5,-4
	sw	a5,-28(s0)
.L18:
	.loc 3 77 37 discriminator 1
	lw	a5,-28(s0)
	bge	a5,zero,.L20
	.loc 3 85 74
	lw	a5,-72(s0)
	lbu	a5,0(a5)
	.loc 3 85 27
	srli	a5,a5,7
	andi	a5,a5,0xff
	mv	a0,a5
	call	mbedtls_ct_bool
	mv	a4,a0
	.loc 3 85 27 is_stmt 0 discriminator 1
	lbu	a5,-17(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_ct_uint_if_else_0
	mv	a5,a0
	.loc 3 85 9 is_stmt 1 discriminator 2
	sb	a5,-17(s0)
	.loc 3 86 11
	lw	a5,-76(s0)
	addi	a5,a5,-1
	lw	a4,-68(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lw	a5,-76(s0)
	addi	a5,a5,-1
	lw	a3,-68(s0)
	add	a5,a3,a5
	.loc 3 86 27
	lbu	a3,-17(s0)
	xor	a4,a4,a3
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 3 88 12
	li	a5,0
.L17:
	.loc 3 89 1
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
.LFE54:
	.size	cmac_multiply_by_u, .-cmac_multiply_by_u
	.section	.text.cmac_generate_subkeys,"ax",@progbits
	.align	1
	.type	cmac_generate_subkeys, @function
cmac_generate_subkeys:
.LFB55:
	.loc 3 98 1
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
	.loc 3 99 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 103 5
	addi	a5,s0,-40
	li	a1,16
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 105 18
	lw	a5,-52(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_cipher_info_get_block_size
	sw	a0,-24(s0)
	.loc 3 108 16
	addi	a4,s0,-44
	addi	a3,s0,-40
	addi	a5,s0,-40
	lw	a2,-24(s0)
	mv	a1,a5
	lw	a0,-52(s0)
	call	mbedtls_cipher_update
	sw	a0,-20(s0)
	.loc 3 108 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L26
	.loc 3 115 16
	addi	a5,s0,-40
	lw	a2,-24(s0)
	mv	a1,a5
	lw	a0,-56(s0)
	call	cmac_multiply_by_u
	sw	a0,-20(s0)
	.loc 3 115 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L27
	.loc 3 119 16
	lw	a2,-24(s0)
	lw	a1,-56(s0)
	lw	a0,-60(s0)
	call	cmac_multiply_by_u
	sw	a0,-20(s0)
	.loc 3 123 1
	j	.L23
.L26:
	.loc 3 109 9
	nop
	j	.L23
.L27:
	.loc 3 116 9
	nop
.L23:
	.loc 3 124 5
	addi	a5,s0,-40
	li	a1,16
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 126 12
	lw	a5,-20(s0)
	.loc 3 127 1
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
.LFE55:
	.size	cmac_generate_subkeys, .-cmac_generate_subkeys
	.section	.text.cmac_pad,"ax",@progbits
	.align	1
	.type	cmac_pad, @function
cmac_pad:
.LFB56:
	.loc 3 142 1
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
	.loc 3 145 12
	sw	zero,-20(s0)
	.loc 3 145 5
	j	.L29
.L33:
	.loc 3 146 12
	lw	a4,-20(s0)
	lw	a5,-48(s0)
	bgeu	a4,a5,.L30
	.loc 3 147 41
	lw	a4,-44(s0)
	lw	a5,-20(s0)
	add	a4,a4,a5
	.loc 3 147 25
	lw	a3,-36(s0)
	lw	a5,-20(s0)
	add	a5,a3,a5
	.loc 3 147 41
	lbu	a4,0(a4)
	.loc 3 147 29
	sb	a4,0(a5)
	j	.L31
.L30:
	.loc 3 148 19
	lw	a4,-20(s0)
	lw	a5,-48(s0)
	bne	a4,a5,.L32
	.loc 3 149 25
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 3 149 29
	li	a4,-128
	sb	a4,0(a5)
	j	.L31
.L32:
	.loc 3 151 25
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 3 151 29
	sb	zero,0(a5)
.L31:
	.loc 3 145 40 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L29:
	.loc 3 145 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bltu	a4,a5,.L33
	.loc 3 154 1
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
.LFE56:
	.size	cmac_pad, .-cmac_pad
	.section	.text.mbedtls_cipher_cmac_starts,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_cmac_starts
	.type	mbedtls_cipher_cmac_starts, @function
mbedtls_cipher_cmac_starts:
.LFB57:
	.loc 3 158 1
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
	.loc 3 163 8
	lw	a5,-36(s0)
	beq	a5,zero,.L35
	.loc 3 163 26 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 163 20 discriminator 1
	beq	a5,zero,.L35
	.loc 3 163 48 discriminator 2
	lw	a5,-40(s0)
	bne	a5,zero,.L36
.L35:
	.loc 3 164 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L37
.L36:
	.loc 3 167 19
	lw	a5,-44(s0)
	li	a3,1
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_cipher_setkey
	sw	a0,-20(s0)
	.loc 3 167 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L38
	.loc 3 169 16
	lw	a5,-20(s0)
	j	.L37
.L38:
	.loc 3 172 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_cipher_info_get_type
	mv	a5,a0
	sb	a5,-21(s0)
	.loc 3 174 5
	lbu	a5,-21(s0)
	li	a4,4
	bgt	a5,a4,.L39
	li	a4,2
	bge	a5,a4,.L44
	j	.L41
.L39:
	li	a4,36
	beq	a5,a4,.L44
.L41:
	.loc 3 181 20
	li	a5,-24576
	addi	a5,a5,-256
	j	.L37
.L44:
	.loc 3 179 13
	nop
	.loc 3 186 16
	li	a1,36
	li	a0,1
	call	calloc
	mv	a5,a0
	sw	a5,-28(s0)
	.loc 3 187 8
	lw	a5,-28(s0)
	bne	a5,zero,.L43
	.loc 3 188 16
	li	a5,-24576
	addi	a5,a5,-384
	j	.L37
.L43:
	.loc 3 191 19
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	sw	a4,64(a5)
	.loc 3 193 38
	lw	a5,-28(s0)
	.loc 3 193 5
	li	a1,16
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 195 12
	li	a5,0
.L37:
	.loc 3 196 1
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
.LFE57:
	.size	mbedtls_cipher_cmac_starts, .-mbedtls_cipher_cmac_starts
	.section	.text.mbedtls_cipher_cmac_update,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_cmac_update
	.type	mbedtls_cipher_cmac_update, @function
mbedtls_cipher_cmac_update:
.LFB58:
	.loc 3 200 1
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
	.loc 3 203 9
	sw	zero,-20(s0)
	.loc 3 206 8
	lw	a5,-100(s0)
	beq	a5,zero,.L46
	.loc 3 206 26 discriminator 1
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 3 206 20 discriminator 1
	beq	a5,zero,.L46
	.loc 3 206 48 discriminator 2
	lw	a5,-104(s0)
	beq	a5,zero,.L46
	.loc 3 207 12
	lw	a5,-100(s0)
	lw	a5,64(a5)
	.loc 3 206 65 discriminator 3
	bne	a5,zero,.L47
.L46:
	.loc 3 208 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L60
.L47:
	.loc 3 211 14
	lw	a5,-100(s0)
	lw	a5,64(a5)
	sw	a5,-28(s0)
	.loc 3 212 18
	lw	a5,-100(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_cipher_info_get_block_size
	sw	a0,-32(s0)
	.loc 3 213 16
	lw	a5,-100(s0)
	lw	a5,64(a5)
	.loc 3 213 11
	sw	a5,-36(s0)
	.loc 3 221 17
	lw	a5,-28(s0)
	lw	a5,32(a5)
	.loc 3 221 8
	beq	a5,zero,.L50
	.loc 3 222 37
	lw	a5,-28(s0)
	lw	a5,32(a5)
	.loc 3 222 27
	lw	a4,-32(s0)
	sub	a5,a4,a5
	.loc 3 221 39 discriminator 1
	lw	a4,-108(s0)
	bleu	a4,a5,.L50
	.loc 3 223 53
	lw	a5,-28(s0)
	lw	a5,32(a5)
	.loc 3 223 16
	addi	a5,a5,16
	lw	a4,-28(s0)
	add	a3,a4,a5
	.loc 3 225 37
	lw	a5,-28(s0)
	lw	a5,32(a5)
	.loc 3 223 9
	lw	a4,-32(s0)
	sub	a5,a4,a5
	mv	a2,a5
	lw	a1,-104(s0)
	mv	a0,a3
	call	memcpy
	.loc 3 227 44
	lw	a5,-28(s0)
	addi	a5,a5,16
	lw	a4,-36(s0)
	sw	a4,-44(s0)
	sw	a5,-48(s0)
	lw	a5,-36(s0)
	sw	a5,-52(s0)
	lw	a5,-32(s0)
	sw	a5,-56(s0)
.LBB24:
.LBB25:
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/common.h"
	.loc 5 273 12
	sw	zero,-60(s0)
	.loc 5 302 5
	j	.L51
.L52:
	.loc 5 303 17
	lw	a4,-48(s0)
	lw	a5,-60(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 5 303 24
	lw	a4,-52(s0)
	lw	a5,-60(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 5 303 10
	lw	a2,-44(s0)
	lw	a5,-60(s0)
	add	a5,a2,a5
	.loc 5 303 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 5 302 20 discriminator 2
	lw	a5,-60(s0)
	addi	a5,a5,1
	sw	a5,-60(s0)
.L51:
	.loc 5 302 14 discriminator 1
	lw	a4,-56(s0)
	lw	a5,-60(s0)
	bgtu	a4,a5,.L52
	.loc 5 305 1
	nop
.LBE25:
.LBE24:
	.loc 3 229 20
	addi	a5,s0,-84
	mv	a4,a5
	lw	a3,-36(s0)
	lw	a2,-32(s0)
	lw	a1,-36(s0)
	lw	a0,-100(s0)
	call	mbedtls_cipher_update
	sw	a0,-20(s0)
	.loc 3 229 12 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L61
	.loc 3 234 39
	lw	a5,-28(s0)
	lw	a5,32(a5)
	.loc 3 234 29
	lw	a4,-32(s0)
	sub	a5,a4,a5
	.loc 3 234 15
	lw	a4,-104(s0)
	add	a5,a4,a5
	sw	a5,-104(s0)
	.loc 3 235 38
	lw	a5,-28(s0)
	lw	a4,32(a5)
	.loc 3 235 14
	lw	a5,-32(s0)
	sub	a5,a4,a5
	lw	a4,-108(s0)
	add	a5,a4,a5
	sw	a5,-108(s0)
	.loc 3 236 35
	lw	a5,-28(s0)
	sw	zero,32(a5)
.L50:
	.loc 3 240 15
	lw	a4,-108(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	.loc 3 240 28
	addi	a4,a5,-1
	.loc 3 240 7
	lw	a5,-32(s0)
	divu	a5,a4,a5
	sw	a5,-40(s0)
	.loc 3 244 12
	li	a5,1
	sw	a5,-24(s0)
	.loc 3 244 5
	j	.L55
.L59:
	lw	a5,-36(s0)
	sw	a5,-64(s0)
	lw	a5,-104(s0)
	sw	a5,-68(s0)
	lw	a5,-36(s0)
	sw	a5,-72(s0)
	lw	a5,-32(s0)
	sw	a5,-76(s0)
.LBB26:
.LBB27:
	.loc 5 273 12
	sw	zero,-80(s0)
	.loc 5 302 5
	j	.L56
.L57:
	.loc 5 303 17
	lw	a4,-68(s0)
	lw	a5,-80(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 5 303 24
	lw	a4,-72(s0)
	lw	a5,-80(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 5 303 10
	lw	a2,-64(s0)
	lw	a5,-80(s0)
	add	a5,a2,a5
	.loc 5 303 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 5 302 20 discriminator 2
	lw	a5,-80(s0)
	addi	a5,a5,1
	sw	a5,-80(s0)
.L56:
	.loc 5 302 14 discriminator 1
	lw	a4,-76(s0)
	lw	a5,-80(s0)
	bgtu	a4,a5,.L57
	.loc 5 305 1
	nop
.LBE27:
.LBE26:
	.loc 3 247 20
	addi	a5,s0,-84
	mv	a4,a5
	lw	a3,-36(s0)
	lw	a2,-32(s0)
	lw	a1,-36(s0)
	lw	a0,-100(s0)
	call	mbedtls_cipher_update
	sw	a0,-20(s0)
	.loc 3 247 12 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L62
	.loc 3 252 14
	lw	a4,-108(s0)
	lw	a5,-32(s0)
	sub	a5,a4,a5
	sw	a5,-108(s0)
	.loc 3 253 15
	lw	a4,-104(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	sw	a5,-104(s0)
	.loc 3 244 25 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L55:
	.loc 3 244 19 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	bltu	a4,a5,.L59
	.loc 3 257 8
	lw	a5,-108(s0)
	beq	a5,zero,.L63
	.loc 3 258 53
	lw	a5,-28(s0)
	lw	a5,32(a5)
	.loc 3 258 16
	addi	a5,a5,16
	lw	a4,-28(s0)
	add	a5,a4,a5
	.loc 3 258 9
	lw	a2,-108(s0)
	lw	a1,-104(s0)
	mv	a0,a5
	call	memcpy
	.loc 3 261 17
	lw	a5,-28(s0)
	lw	a4,32(a5)
	.loc 3 261 35
	lw	a5,-108(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	sw	a4,32(a5)
	j	.L54
.L61:
	.loc 3 231 13
	nop
	j	.L54
.L62:
	.loc 3 249 13
	nop
	j	.L54
.L63:
	.loc 3 264 1
	nop
.L54:
	.loc 3 265 12
	lw	a5,-20(s0)
.L60:
	.loc 3 266 1
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
.LFE58:
	.size	mbedtls_cipher_cmac_update, .-mbedtls_cipher_cmac_update
	.section	.text.mbedtls_cipher_cmac_finish,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_cmac_finish
	.type	mbedtls_cipher_cmac_finish, @function
mbedtls_cipher_cmac_finish:
.LFB59:
	.loc 3 270 1
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
	sw	a1,-168(s0)
	.loc 3 276 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 279 8
	lw	a5,-164(s0)
	beq	a5,zero,.L65
	.loc 3 279 26 discriminator 1
	lw	a5,-164(s0)
	lw	a5,0(a5)
	.loc 3 279 20 discriminator 1
	beq	a5,zero,.L65
	.loc 3 279 54 discriminator 2
	lw	a5,-164(s0)
	lw	a5,64(a5)
	.loc 3 279 48 discriminator 2
	beq	a5,zero,.L65
	.loc 3 279 73 discriminator 3
	lw	a5,-168(s0)
	bne	a5,zero,.L66
.L65:
	.loc 3 281 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L79
.L66:
	.loc 3 284 14
	lw	a5,-164(s0)
	lw	a5,64(a5)
	sw	a5,-24(s0)
	.loc 3 285 18
	lw	a5,-164(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_cipher_info_get_block_size
	sw	a0,-28(s0)
	.loc 3 287 11
	lw	a5,-24(s0)
	sw	a5,-32(s0)
	.loc 3 289 5
	addi	a5,s0,-112
	li	a1,16
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 290 5
	addi	a5,s0,-128
	li	a1,16
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 291 5
	addi	a4,s0,-128
	addi	a5,s0,-112
	mv	a2,a4
	mv	a1,a5
	lw	a0,-164(s0)
	call	cmac_generate_subkeys
	.loc 3 293 16
	lw	a5,-24(s0)
	addi	a5,a5,16
	sw	a5,-36(s0)
	.loc 3 296 17
	lw	a5,-24(s0)
	lw	a5,32(a5)
	.loc 3 296 8
	lw	a4,-28(s0)
	bleu	a4,a5,.L69
	.loc 3 297 9
	lw	a5,-24(s0)
	lw	a4,32(a5)
	addi	a5,s0,-144
	mv	a3,a4
	lw	a2,-36(s0)
	lw	a1,-28(s0)
	mv	a0,a5
	call	cmac_pad
	addi	a5,s0,-144
	sw	a5,-40(s0)
	addi	a5,s0,-144
	sw	a5,-44(s0)
	addi	a5,s0,-128
	sw	a5,-48(s0)
	lw	a5,-28(s0)
	sw	a5,-52(s0)
.LBB28:
.LBB29:
	.loc 5 191 12
	sw	zero,-56(s0)
	.loc 5 234 5
	j	.L70
.L71:
	.loc 5 235 17
	lw	a4,-44(s0)
	lw	a5,-56(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 5 235 24
	lw	a4,-48(s0)
	lw	a5,-56(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 5 235 10
	lw	a2,-40(s0)
	lw	a5,-56(s0)
	add	a5,a2,a5
	.loc 5 235 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 5 234 20 discriminator 2
	lw	a5,-56(s0)
	addi	a5,a5,1
	sw	a5,-56(s0)
.L70:
	.loc 5 234 14 discriminator 1
	lw	a4,-52(s0)
	lw	a5,-56(s0)
	bgtu	a4,a5,.L71
	.loc 5 237 1
	j	.L72
.L69:
	addi	a5,s0,-144
	sw	a5,-60(s0)
	lw	a5,-36(s0)
	sw	a5,-64(s0)
	addi	a5,s0,-112
	sw	a5,-68(s0)
	lw	a5,-28(s0)
	sw	a5,-72(s0)
.LBE29:
.LBE28:
.LBB30:
.LBB31:
	.loc 5 191 12
	sw	zero,-76(s0)
	.loc 5 234 5
	j	.L73
.L74:
	.loc 5 235 17
	lw	a4,-64(s0)
	lw	a5,-76(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 5 235 24
	lw	a4,-68(s0)
	lw	a5,-76(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 5 235 10
	lw	a2,-60(s0)
	lw	a5,-76(s0)
	add	a5,a2,a5
	.loc 5 235 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 5 234 20 discriminator 2
	lw	a5,-76(s0)
	addi	a5,a5,1
	sw	a5,-76(s0)
.L73:
	.loc 5 234 14 discriminator 1
	lw	a4,-72(s0)
	lw	a5,-76(s0)
	bgtu	a4,a5,.L74
	.loc 5 237 1
	nop
.L72:
	lw	a5,-32(s0)
	sw	a5,-80(s0)
	addi	a5,s0,-144
	sw	a5,-84(s0)
	lw	a5,-32(s0)
	sw	a5,-88(s0)
	lw	a5,-28(s0)
	sw	a5,-92(s0)
.LBE31:
.LBE30:
.LBB32:
.LBB33:
	.loc 5 191 12
	sw	zero,-96(s0)
	.loc 5 234 5
	j	.L75
.L76:
	.loc 5 235 17
	lw	a4,-84(s0)
	lw	a5,-96(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 5 235 24
	lw	a4,-88(s0)
	lw	a5,-96(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 5 235 10
	lw	a2,-80(s0)
	lw	a5,-96(s0)
	add	a5,a2,a5
	.loc 5 235 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 5 234 20 discriminator 2
	lw	a5,-96(s0)
	addi	a5,a5,1
	sw	a5,-96(s0)
.L75:
	.loc 5 234 14 discriminator 1
	lw	a4,-92(s0)
	lw	a5,-96(s0)
	bgtu	a4,a5,.L76
	.loc 5 237 1
	nop
.LBE33:
.LBE32:
	.loc 3 306 16
	addi	a5,s0,-148
	mv	a4,a5
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-32(s0)
	lw	a0,-164(s0)
	call	mbedtls_cipher_update
	sw	a0,-20(s0)
	.loc 3 306 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L80
	.loc 3 311 5
	lw	a2,-28(s0)
	lw	a1,-32(s0)
	lw	a0,-168(s0)
	call	memcpy
	j	.L78
.L80:
	.loc 3 308 9
	nop
.L78:
	.loc 3 316 5
	addi	a5,s0,-112
	li	a1,16
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 317 5
	addi	a5,s0,-128
	li	a1,16
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 319 31
	lw	a5,-24(s0)
	sw	zero,32(a5)
	.loc 3 320 38
	lw	a5,-24(s0)
	addi	a5,a5,16
	.loc 3 320 5
	li	a1,16
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 323 5
	li	a1,16
	lw	a0,-32(s0)
	call	mbedtls_platform_zeroize
	.loc 3 324 12
	lw	a5,-20(s0)
.L79:
	.loc 3 325 1
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
.LFE59:
	.size	mbedtls_cipher_cmac_finish, .-mbedtls_cipher_cmac_finish
	.section	.text.mbedtls_cipher_cmac_reset,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_cmac_reset
	.type	mbedtls_cipher_cmac_reset, @function
mbedtls_cipher_cmac_reset:
.LFB60:
	.loc 3 328 1
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
	.loc 3 331 8
	lw	a5,-36(s0)
	beq	a5,zero,.L82
	.loc 3 331 26 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 3 331 20 discriminator 1
	beq	a5,zero,.L82
	.loc 3 331 54 discriminator 2
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 3 331 48 discriminator 2
	bne	a5,zero,.L83
.L82:
	.loc 3 332 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L84
.L83:
	.loc 3 335 14
	lw	a5,-36(s0)
	lw	a5,64(a5)
	sw	a5,-20(s0)
	.loc 3 338 31
	lw	a5,-20(s0)
	sw	zero,32(a5)
	.loc 3 339 38
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 3 339 5
	li	a1,16
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 341 38
	lw	a5,-20(s0)
	.loc 3 341 5
	li	a1,16
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 344 12
	li	a5,0
.L84:
	.loc 3 345 1
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
.LFE60:
	.size	mbedtls_cipher_cmac_reset, .-mbedtls_cipher_cmac_reset
	.section	.text.mbedtls_cipher_cmac,"ax",@progbits
	.align	1
	.globl	mbedtls_cipher_cmac
	.type	mbedtls_cipher_cmac, @function
mbedtls_cipher_cmac:
.LFB61:
	.loc 3 351 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	a0,-100(s0)
	sw	a1,-104(s0)
	sw	a2,-108(s0)
	sw	a3,-112(s0)
	sw	a4,-116(s0)
	sw	a5,-120(s0)
	.loc 3 353 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 355 8
	lw	a5,-100(s0)
	beq	a5,zero,.L86
	.loc 3 355 28 discriminator 1
	lw	a5,-104(s0)
	beq	a5,zero,.L86
	.loc 3 355 43 discriminator 2
	lw	a5,-112(s0)
	beq	a5,zero,.L86
	.loc 3 355 60 discriminator 3
	lw	a5,-120(s0)
	bne	a5,zero,.L87
.L86:
	.loc 3 356 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L93
.L87:
	.loc 3 359 5
	addi	a5,s0,-88
	mv	a0,a5
	call	mbedtls_cipher_init
	.loc 3 361 16
	addi	a5,s0,-88
	lw	a1,-100(s0)
	mv	a0,a5
	call	mbedtls_cipher_setup
	sw	a0,-20(s0)
	.loc 3 361 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L94
	.loc 3 365 11
	addi	a5,s0,-88
	lw	a2,-108(s0)
	lw	a1,-104(s0)
	mv	a0,a5
	call	mbedtls_cipher_cmac_starts
	sw	a0,-20(s0)
	.loc 3 366 8
	lw	a5,-20(s0)
	bne	a5,zero,.L95
	.loc 3 370 11
	addi	a5,s0,-88
	lw	a2,-116(s0)
	lw	a1,-112(s0)
	mv	a0,a5
	call	mbedtls_cipher_cmac_update
	sw	a0,-20(s0)
	.loc 3 371 8
	lw	a5,-20(s0)
	bne	a5,zero,.L96
	.loc 3 375 11
	addi	a5,s0,-88
	lw	a1,-120(s0)
	mv	a0,a5
	call	mbedtls_cipher_cmac_finish
	sw	a0,-20(s0)
	j	.L90
.L94:
	.loc 3 362 9
	nop
	j	.L90
.L95:
	.loc 3 367 9
	nop
	j	.L90
.L96:
	.loc 3 372 9
	nop
.L90:
	.loc 3 378 5
	addi	a5,s0,-88
	mv	a0,a5
	call	mbedtls_cipher_free
	.loc 3 380 12
	lw	a5,-20(s0)
.L93:
	.loc 3 381 1
	mv	a0,a5
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE61:
	.size	mbedtls_cipher_cmac, .-mbedtls_cipher_cmac
	.section	.text.mbedtls_aes_cmac_prf_128,"ax",@progbits
	.align	1
	.globl	mbedtls_aes_cmac_prf_128
	.type	mbedtls_aes_cmac_prf_128, @function
mbedtls_aes_cmac_prf_128:
.LFB62:
	.loc 3 390 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	sw	a4,-84(s0)
	.loc 3 391 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 396 8
	lw	a5,-68(s0)
	beq	a5,zero,.L98
	.loc 3 396 20 discriminator 1
	lw	a5,-76(s0)
	beq	a5,zero,.L98
	.loc 3 396 37 discriminator 2
	lw	a5,-84(s0)
	bne	a5,zero,.L99
.L98:
	.loc 3 397 16
	li	a5,-24576
	addi	a5,a5,-256
	j	.L105
.L99:
	.loc 3 400 19
	li	a0,2
	call	mbedtls_cipher_info_from_type
	sw	a0,-24(s0)
	.loc 3 401 8
	lw	a5,-24(s0)
	bne	a5,zero,.L101
	.loc 3 403 13
	li	a5,-24576
	addi	a5,a5,-128
	sw	a5,-20(s0)
	.loc 3 404 9
	j	.L102
.L101:
	.loc 3 407 8
	lw	a4,-72(s0)
	li	a5,16
	bne	a4,a5,.L103
	.loc 3 409 9
	addi	a5,s0,-56
	li	a2,16
	lw	a1,-68(s0)
	mv	a0,a5
	call	memcpy
	j	.L104
.L103:
	.loc 3 411 9
	addi	a5,s0,-40
	li	a2,16
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 3 413 15
	addi	a5,s0,-56
	addi	a1,s0,-40
	lw	a4,-72(s0)
	lw	a3,-68(s0)
	li	a2,128
	lw	a0,-24(s0)
	call	mbedtls_cipher_cmac
	sw	a0,-20(s0)
	.loc 3 415 12
	lw	a5,-20(s0)
	bne	a5,zero,.L106
.L104:
	.loc 3 420 11
	addi	a1,s0,-56
	lw	a5,-84(s0)
	lw	a4,-80(s0)
	lw	a3,-76(s0)
	li	a2,128
	lw	a0,-24(s0)
	call	mbedtls_cipher_cmac
	sw	a0,-20(s0)
	j	.L102
.L106:
	.loc 3 416 13
	nop
.L102:
	.loc 3 424 5
	addi	a5,s0,-56
	li	a1,16
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 3 426 12
	lw	a5,-20(s0)
.L105:
	.loc 3 427 1
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
.LFE62:
	.size	mbedtls_aes_cmac_prf_128, .-mbedtls_aes_cmac_prf_128
	.section	.rodata.test_message,"a"
	.align	2
	.type	test_message, @object
	.size	test_message, 64
test_message:
	.base64	"a8G+4i5An5bpPX4Rc5MXKq4tilceA6ycnrdvrEWvjlEwyBxGo1zkEeX7wRkaClLv9p8kRd9PmxetK0F75mw3EA=="
	.section	.rodata.aes_message_lengths,"a"
	.align	2
	.type	aes_message_lengths, @object
	.size	aes_message_lengths, 16
aes_message_lengths:
	.word	0
	.word	16
	.word	20
	.word	64
	.section	.rodata.aes_128_key,"a"
	.align	2
	.type	aes_128_key, @object
	.size	aes_128_key, 16
aes_128_key:
	.base64	"K34VFiiu0qar9xWICc9PPA=="
	.section	.rodata.aes_128_subkeys,"a"
	.align	2
	.type	aes_128_subkeys, @object
	.size	aes_128_subkeys, 32
aes_128_subkeys:
	.base64	"++7WGDVxM2Z8heCPcjao3g=="
	.base64	"992sMGriZsz5C8Ee5G1ROw=="
	.section	.rodata.aes_128_expected_result,"a"
	.align	2
	.type	aes_128_expected_result, @object
	.size	aes_128_expected_result, 64
aes_128_expected_result:
	.base64	"ux1pKelZNyh/o30Sm3VnRg=="
	.base64	"BwoWtGtNQUT3m92d0EoofA=="
	.base64	"fYVEnqbqGcgjp794g3363g=="
	.base64	"UfC+v347nZL8SXQXeTY8/g=="
	.section	.rodata.aes_192_key,"a"
	.align	2
	.type	aes_192_key, @object
	.size	aes_192_key, 24
aes_192_key:
	.base64	"jnOw99oOZFLIEPMrgJB55WL46tJSLGt7"
	.section	.rodata.aes_192_subkeys,"a"
	.align	2
	.type	aes_192_subkeys, @object
	.size	aes_192_subkeys, 32
aes_192_subkeys:
	.base64	"RIpbHJNRSyc+5kOd1Nqilg=="
	.base64	"iRS2OSailk59zIc7qbVFLA=="
	.section	.rodata.aes_192_expected_result,"a"
	.align	2
	.type	aes_192_expected_result, @object
	.size	aes_192_expected_result, 64
aes_192_expected_result:
	.base64	"0X3fRq2qzeUxysSD3nqTZw=="
	.base64	"npmnvzHnEJAGYvZeYXxRhA=="
	.base64	"PXXBlO2WBwREqfp+x0Ds+A=="
	.base64	"odXfDu15D3lNd1iWWfOaEQ=="
	.section	.rodata.aes_256_key,"a"
	.align	2
	.type	aes_256_key, @object
	.size	aes_256_key, 32
aes_256_key:
	.base64	"YD3rEBXKcb4rc67whX13gR81LAc7YQjXLZgQowkU3/Q="
	.section	.rodata.aes_256_subkeys,"a"
	.align	2
	.type	aes_256_subkeys, @object
	.size	aes_256_subkeys, 32
aes_256_subkeys:
	.base64	"ytHtAyme7awumpmAhiFQLw=="
	.base64	"laPaBlM921hdNTMBDEKg2Q=="
	.section	.rodata.aes_256_expected_result,"a"
	.align	2
	.type	aes_256_expected_result, @object
	.size	aes_256_expected_result, 64
aes_256_expected_result:
	.base64	"Aoli9ht7+J78a1UfRmfZgw=="
	.base64	"KKcCP0Uuj4K9S/KNjDfDXA=="
	.base64	"FWcn3Ah4lEoCPB/gO61tkw=="
	.base64	"4ZkhkFSfbtVpaiwFbDFUEA=="
	.section	.rodata.des3_message_lengths,"a"
	.align	2
	.type	des3_message_lengths, @object
	.size	des3_message_lengths, 16
des3_message_lengths:
	.word	0
	.word	16
	.word	20
	.word	32
	.section	.rodata.des3_2key_key,"a"
	.align	2
	.type	des3_2key_key, @object
	.size	des3_2key_key, 24
des3_2key_key:
	.base64	"ASNFZ4mrze8jRWeJq83vAQEjRWeJq83v"
	.section	.rodata.des3_2key_subkeys,"a"
	.align	2
	.type	des3_2key_subkeys, @object
	.size	des3_2key_subkeys, 16
des3_2key_subkeys:
	.base64	"DdLLej2IiNk="
	.base64	"G6WW9HsREbI="
	.section	.rodata.des3_2key_expected_result,"a"
	.align	2
	.type	des3_2key_expected_result, @object
	.size	des3_2key_expected_result, 32
des3_2key_expected_result:
	.base64	"ec5Sp/eGqWA="
	.base64	"zBigt5ryQTs="
	.base64	"wG03fs0QGWk="
	.base64	"nNM1gPm2Tfs="
	.section	.rodata.des3_3key_key,"a"
	.align	2
	.type	des3_3key_key, @object
	.size	des3_3key_key, 24
des3_3key_key:
	.base64	"ASNFZ4mqze8jRWeJq83vAUVniavN7wEj"
	.section	.rodata.des3_3key_subkeys,"a"
	.align	2
	.type	des3_3key_subkeys, @object
	.size	des3_3key_subkeys, 16
des3_3key_subkeys:
	.base64	"nXTnOTMXlsA="
	.base64	"OunOcmYvLZs="
	.section	.rodata.des3_3key_expected_result,"a"
	.align	2
	.type	des3_3key_expected_result, @object
	.size	des3_3key_expected_result, 32
des3_3key_expected_result:
	.base64	"fbDTffk2xVA="
	.base64	"MCOc8fUuZgk="
	.base64	"bJ8+5JI/a+I="
	.base64	"mUKb0L95BOU="
	.section	.rodata.PRFK,"a"
	.align	2
	.type	PRFK, @object
	.size	PRFK, 18
PRFK:
	.base64	"AAECAwQFBgcICQoLDA0OD+3L"
	.section	.rodata.PRFKlen,"a"
	.align	2
	.type	PRFKlen, @object
	.size	PRFKlen, 12
PRFKlen:
	.word	18
	.word	16
	.word	10
	.section	.rodata.PRFM,"a"
	.align	2
	.type	PRFM, @object
	.size	PRFM, 20
PRFM:
	.base64	"AAECAwQFBgcICQoLDA0ODxAREhM="
	.section	.rodata.PRFT,"a"
	.align	2
	.type	PRFT, @object
	.size	PRFT, 48
PRFT:
	.base64	"hKNIpKRdI1ur//wNK02gmg=="
	.base64	"mAroe19MnFIU9baoRV5MLQ=="
	.base64	"KQ2eES7bCe4UH89kwLcvPQ=="
	.section	.rodata
	.align	2
.LC0:
	.string	"  %s CMAC subkey #%d: "
	.align	2
.LC1:
	.string	"test execution failed\n"
	.align	2
.LC2:
	.string	"skipped\n"
	.align	2
.LC3:
	.string	"failed\n"
	.align	2
.LC4:
	.string	"passed\n"
	.section	.text.cmac_test_subkeys,"ax",@progbits
	.align	1
	.type	cmac_test_subkeys, @function
cmac_test_subkeys:
.LFB63:
	.loc 3 737 1
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	ra,156(sp)
	sw	s0,152(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sw	a0,-132(s0)
	sw	a1,-136(s0)
	sw	a2,-140(s0)
	sw	a3,-144(s0)
	sw	a4,-148(s0)
	sw	a6,-156(s0)
	sw	a7,-160(s0)
	sb	a5,-149(s0)
	.loc 3 738 12
	sw	zero,-24(s0)
	.loc 3 744 19
	lbu	a5,-149(s0)
	mv	a0,a5
	call	mbedtls_cipher_info_from_type
	sw	a0,-28(s0)
	.loc 3 745 8
	lw	a5,-28(s0)
	bne	a5,zero,.L108
	.loc 3 747 16
	li	a5,-24576
	addi	a5,a5,-128
	j	.L128
.L108:
	.loc 3 750 12
	sw	zero,-20(s0)
	.loc 3 750 5
	j	.L110
.L126:
	.loc 3 751 12
	lw	a5,-132(s0)
	beq	a5,zero,.L111
	.loc 3 752 13
	lw	a5,-20(s0)
	addi	a5,a5,1
	mv	a2,a5
	lw	a1,-136(s0)
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
.L111:
	.loc 3 755 9
	addi	a5,s0,-96
	mv	a0,a5
	call	mbedtls_cipher_init
	.loc 3 757 20
	addi	a5,s0,-96
	lw	a1,-28(s0)
	mv	a0,a5
	call	mbedtls_cipher_setup
	sw	a0,-24(s0)
	.loc 3 757 12 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L112
	.loc 3 758 16
	lw	a5,-132(s0)
	beq	a5,zero,.L129
	.loc 3 759 17
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	.loc 3 762 13
	j	.L129
.L112:
	.loc 3 765 20
	addi	a5,s0,-96
	li	a3,1
	lw	a2,-144(s0)
	lw	a1,-140(s0)
	mv	a0,a5
	call	mbedtls_cipher_setkey
	sw	a0,-24(s0)
	.loc 3 765 12 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L115
	.loc 3 771 16
	lw	a4,-24(s0)
	li	a5,-114
	beq	a4,a5,.L116
	.loc 3 771 33 discriminator 1
	lw	a4,-24(s0)
	li	a5,-24576
	addi	a5,a5,-128
	bne	a4,a5,.L117
.L116:
	.loc 3 772 34
	lbu	a4,-149(s0)
	li	a5,3
	bne	a4,a5,.L117
	.loc 3 774 20
	lw	a5,-132(s0)
	beq	a5,zero,.L130
	.loc 3 775 21
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	.loc 3 777 17
	j	.L130
.L117:
	.loc 3 780 16
	lw	a5,-132(s0)
	beq	a5,zero,.L131
	.loc 3 781 17
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	.loc 3 784 13
	j	.L131
.L115:
	.loc 3 787 15
	addi	a3,s0,-128
	addi	a4,s0,-112
	addi	a5,s0,-96
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	cmac_generate_subkeys
	sw	a0,-24(s0)
	.loc 3 788 12
	lw	a5,-24(s0)
	beq	a5,zero,.L121
	.loc 3 789 16
	lw	a5,-132(s0)
	beq	a5,zero,.L132
	.loc 3 790 17
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	.loc 3 793 13
	j	.L132
.L121:
	.loc 3 796 20
	lw	a4,-156(s0)
	addi	a5,s0,-112
	mv	a2,a4
	lw	a1,-148(s0)
	mv	a0,a5
	call	memcmp
	sw	a0,-24(s0)
	.loc 3 796 12 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L123
	.loc 3 797 20
	lw	a5,-156(s0)
	.loc 3 797 31
	lw	a4,-148(s0)
	add	a4,a4,a5
	.loc 3 797 20
	lw	a3,-156(s0)
	addi	a5,s0,-128
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	memcmp
	sw	a0,-24(s0)
	.loc 3 796 58 discriminator 2
	lw	a5,-24(s0)
	beq	a5,zero,.L124
.L123:
	.loc 3 798 16
	lw	a5,-132(s0)
	beq	a5,zero,.L133
	.loc 3 799 17
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	.loc 3 802 13
	j	.L133
.L124:
	.loc 3 805 12
	lw	a5,-132(s0)
	beq	a5,zero,.L134
	.loc 3 806 13
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
	j	.L119
.L130:
	.loc 3 777 17
	nop
	j	.L119
.L134:
	.loc 3 809 1
	nop
.L119:
	.loc 3 810 9
	addi	a5,s0,-96
	mv	a0,a5
	call	mbedtls_cipher_free
	.loc 3 750 33 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L110:
	.loc 3 750 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-160(s0)
	blt	a4,a5,.L126
	.loc 3 813 9
	sw	zero,-24(s0)
	.loc 3 814 5
	j	.L127
.L129:
	.loc 3 762 13
	nop
	j	.L114
.L131:
	.loc 3 784 13
	nop
	j	.L114
.L132:
	.loc 3 793 13
	nop
	j	.L114
.L133:
	.loc 3 802 13
	nop
.L114:
	.loc 3 817 5
	addi	a5,s0,-96
	mv	a0,a5
	call	mbedtls_cipher_free
.L127:
	.loc 3 820 12
	lw	a5,-24(s0)
.L128:
	.loc 3 821 1
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
.LFE63:
	.size	cmac_test_subkeys, .-cmac_test_subkeys
	.section	.rodata
	.align	2
.LC5:
	.string	"  %s CMAC #%d: "
	.section	.text.cmac_test_wth_cipher,"ax",@progbits
	.align	1
	.type	cmac_test_wth_cipher, @function
cmac_test_wth_cipher:
.LFB64:
	.loc 3 833 1
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
	sw	a5,-72(s0)
	sw	a6,-76(s0)
	mv	a5,a7
	sb	a5,-77(s0)
	.loc 3 835 12
	sw	zero,-24(s0)
	.loc 3 838 19
	lbu	a5,-77(s0)
	mv	a0,a5
	call	mbedtls_cipher_info_from_type
	sw	a0,-28(s0)
	.loc 3 839 8
	lw	a5,-28(s0)
	bne	a5,zero,.L136
	.loc 3 841 13
	li	a5,-24576
	addi	a5,a5,-128
	sw	a5,-24(s0)
	.loc 3 842 9
	j	.L137
.L136:
	.loc 3 845 12
	sw	zero,-20(s0)
	.loc 3 845 5
	j	.L138
.L149:
	.loc 3 846 12
	lw	a5,-52(s0)
	beq	a5,zero,.L139
	.loc 3 847 13
	lw	a5,-20(s0)
	addi	a5,a5,1
	mv	a2,a5
	lw	a1,-56(s0)
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	printf
.L139:
	.loc 3 850 20
	lw	a2,-64(s0)
	.loc 3 851 55
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-72(s0)
	add	a5,a4,a5
	.loc 3 850 20
	lw	a4,0(a5)
	addi	a5,s0,-44
	lw	a3,-68(s0)
	lw	a1,-60(s0)
	lw	a0,-28(s0)
	call	mbedtls_cipher_cmac
	sw	a0,-24(s0)
	.loc 3 850 12 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L140
	.loc 3 856 16
	lw	a4,-24(s0)
	li	a5,-114
	beq	a4,a5,.L141
	.loc 3 856 33 discriminator 1
	lw	a4,-24(s0)
	li	a5,-24576
	addi	a5,a5,-128
	bne	a4,a5,.L142
.L141:
	.loc 3 857 34
	lbu	a4,-77(s0)
	li	a5,3
	beq	a4,a5,.L143
	.loc 3 858 60
	lbu	a4,-77(s0)
	li	a5,36
	bne	a4,a5,.L142
.L143:
	.loc 3 860 20
	lw	a5,-52(s0)
	beq	a5,zero,.L151
	.loc 3 861 21
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	.loc 3 863 17
	j	.L151
.L142:
	.loc 3 866 16
	lw	a5,-52(s0)
	beq	a5,zero,.L152
	.loc 3 867 17
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	.loc 3 869 13
	j	.L152
.L140:
	.loc 3 872 54
	lw	a4,-20(s0)
	lw	a5,0(s0)
	mul	a5,a4,a5
	mv	a4,a5
	.loc 3 872 35
	lw	a5,-76(s0)
	add	a4,a5,a4
	.loc 3 872 20
	lw	a3,0(s0)
	addi	a5,s0,-44
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	memcmp
	sw	a0,-24(s0)
	.loc 3 872 12 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L147
	.loc 3 873 16
	lw	a5,-52(s0)
	beq	a5,zero,.L153
	.loc 3 874 17
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	.loc 3 876 13
	j	.L153
.L147:
	.loc 3 879 12
	lw	a5,-52(s0)
	beq	a5,zero,.L145
	.loc 3 880 13
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
	j	.L145
.L151:
	.loc 3 863 17
	nop
.L145:
	.loc 3 845 33 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L138:
	.loc 3 845 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,4(s0)
	blt	a4,a5,.L149
	.loc 3 883 9
	sw	zero,-24(s0)
	j	.L137
.L152:
	.loc 3 869 13
	nop
	j	.L137
.L153:
	.loc 3 876 13
	nop
.L137:
	.loc 3 886 12
	lw	a5,-24(s0)
	.loc 3 887 1
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
.LFE64:
	.size	cmac_test_wth_cipher, .-cmac_test_wth_cipher
	.section	.rodata
	.align	2
.LC6:
	.string	"  AES CMAC 128 PRF #%d: "
	.section	.text.test_aes128_cmac_prf,"ax",@progbits
	.align	1
	.type	test_aes128_cmac_prf, @function
test_aes128_cmac_prf:
.LFB65:
	.loc 3 891 1
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
	.loc 3 893 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 3 896 12
	sw	zero,-20(s0)
	.loc 3 896 5
	j	.L155
.L161:
	.loc 3 897 9
	lw	a1,-20(s0)
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	printf
	.loc 3 898 53
	lui	a5,%hi(PRFKlen)
	addi	a4,a5,%lo(PRFKlen)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a1,0(a5)
	.loc 3 898 15
	addi	a5,s0,-40
	mv	a4,a5
	li	a3,20
	lui	a5,%hi(PRFM)
	addi	a2,a5,%lo(PRFM)
	lui	a5,%hi(PRFK)
	addi	a0,a5,%lo(PRFK)
	call	mbedtls_aes_cmac_prf_128
	sw	a0,-24(s0)
	.loc 3 899 12
	lw	a5,-24(s0)
	bne	a5,zero,.L156
	.loc 3 900 32
	lw	a5,-20(s0)
	slli	a4,a5,4
	lui	a5,%hi(PRFT)
	addi	a5,a5,%lo(PRFT)
	add	a4,a4,a5
	.loc 3 900 13
	addi	a5,s0,-40
	li	a2,16
	mv	a1,a4
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 3 899 22 discriminator 1
	beq	a5,zero,.L157
.L156:
	.loc 3 902 16
	lw	a5,-52(s0)
	beq	a5,zero,.L158
	.loc 3 903 17
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
.L158:
	.loc 3 906 20
	lw	a5,-24(s0)
	j	.L162
.L157:
	.loc 3 907 19
	lw	a5,-52(s0)
	beq	a5,zero,.L160
	.loc 3 908 13
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
.L160:
	.loc 3 896 25 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L155:
	.loc 3 896 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,2
	ble	a4,a5,.L161
	.loc 3 911 12
	lw	a5,-24(s0)
.L162:
	.loc 3 912 1
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
.LFE65:
	.size	test_aes128_cmac_prf, .-test_aes128_cmac_prf
	.section	.rodata
	.align	2
.LC7:
	.string	"AES 128"
	.align	2
.LC8:
	.string	"AES 192"
	.align	2
.LC9:
	.string	"AES 256"
	.align	2
.LC10:
	.string	"3DES 2 key"
	.align	2
.LC11:
	.string	"3DES 3 key"
	.align	2
.LC12:
	.string	"\n"
	.section	.text.mbedtls_cmac_self_test,"ax",@progbits
	.align	1
	.globl	mbedtls_cmac_self_test
	.type	mbedtls_cmac_self_test, @function
mbedtls_cmac_self_test:
.LFB66:
	.loc 3 916 1
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
	.loc 3 917 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 3 921 16
	li	a7,4
	li	a6,16
	li	a5,2
	lui	a4,%hi(aes_128_subkeys)
	addi	a4,a4,%lo(aes_128_subkeys)
	li	a3,128
	lui	a2,%hi(aes_128_key)
	addi	a2,a2,%lo(aes_128_key)
	lui	a1,%hi(.LC7)
	addi	a1,a1,%lo(.LC7)
	lw	a0,-36(s0)
	call	cmac_test_subkeys
	sw	a0,-20(s0)
	.loc 3 921 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L164
	.loc 3 929 16
	lw	a5,-20(s0)
	j	.L165
.L164:
	.loc 3 932 16
	li	a5,4
	sw	a5,4(sp)
	li	a5,16
	sw	a5,0(sp)
	li	a7,2
	lui	a5,%hi(aes_128_expected_result)
	addi	a6,a5,%lo(aes_128_expected_result)
	lui	a5,%hi(aes_message_lengths)
	addi	a5,a5,%lo(aes_message_lengths)
	lui	a4,%hi(test_message)
	addi	a4,a4,%lo(test_message)
	li	a3,128
	lui	a2,%hi(aes_128_key)
	addi	a2,a2,%lo(aes_128_key)
	lui	a1,%hi(.LC7)
	addi	a1,a1,%lo(.LC7)
	lw	a0,-36(s0)
	call	cmac_test_wth_cipher
	sw	a0,-20(s0)
	.loc 3 932 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L166
	.loc 3 942 16
	lw	a5,-20(s0)
	j	.L165
.L166:
	.loc 3 947 16
	li	a7,4
	li	a6,16
	li	a5,3
	lui	a4,%hi(aes_192_subkeys)
	addi	a4,a4,%lo(aes_192_subkeys)
	li	a3,192
	lui	a2,%hi(aes_192_key)
	addi	a2,a2,%lo(aes_192_key)
	lui	a1,%hi(.LC8)
	addi	a1,a1,%lo(.LC8)
	lw	a0,-36(s0)
	call	cmac_test_subkeys
	sw	a0,-20(s0)
	.loc 3 947 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L167
	.loc 3 955 16
	lw	a5,-20(s0)
	j	.L165
.L167:
	.loc 3 958 16
	li	a5,4
	sw	a5,4(sp)
	li	a5,16
	sw	a5,0(sp)
	li	a7,3
	lui	a5,%hi(aes_192_expected_result)
	addi	a6,a5,%lo(aes_192_expected_result)
	lui	a5,%hi(aes_message_lengths)
	addi	a5,a5,%lo(aes_message_lengths)
	lui	a4,%hi(test_message)
	addi	a4,a4,%lo(test_message)
	li	a3,192
	lui	a2,%hi(aes_192_key)
	addi	a2,a2,%lo(aes_192_key)
	lui	a1,%hi(.LC8)
	addi	a1,a1,%lo(.LC8)
	lw	a0,-36(s0)
	call	cmac_test_wth_cipher
	sw	a0,-20(s0)
	.loc 3 958 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L168
	.loc 3 968 16
	lw	a5,-20(s0)
	j	.L165
.L168:
	.loc 3 974 16
	li	a7,4
	li	a6,16
	li	a5,4
	lui	a4,%hi(aes_256_subkeys)
	addi	a4,a4,%lo(aes_256_subkeys)
	li	a3,256
	lui	a2,%hi(aes_256_key)
	addi	a2,a2,%lo(aes_256_key)
	lui	a1,%hi(.LC9)
	addi	a1,a1,%lo(.LC9)
	lw	a0,-36(s0)
	call	cmac_test_subkeys
	sw	a0,-20(s0)
	.loc 3 974 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L169
	.loc 3 982 16
	lw	a5,-20(s0)
	j	.L165
.L169:
	.loc 3 985 16
	li	a5,4
	sw	a5,4(sp)
	li	a5,16
	sw	a5,0(sp)
	li	a7,4
	lui	a5,%hi(aes_256_expected_result)
	addi	a6,a5,%lo(aes_256_expected_result)
	lui	a5,%hi(aes_message_lengths)
	addi	a5,a5,%lo(aes_message_lengths)
	lui	a4,%hi(test_message)
	addi	a4,a4,%lo(test_message)
	li	a3,256
	lui	a2,%hi(aes_256_key)
	addi	a2,a2,%lo(aes_256_key)
	lui	a1,%hi(.LC9)
	addi	a1,a1,%lo(.LC9)
	lw	a0,-36(s0)
	call	cmac_test_wth_cipher
	sw	a0,-20(s0)
	.loc 3 985 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L170
	.loc 3 995 16
	lw	a5,-20(s0)
	j	.L165
.L170:
	.loc 3 1002 16
	li	a7,4
	li	a6,8
	li	a5,36
	lui	a4,%hi(des3_2key_subkeys)
	addi	a4,a4,%lo(des3_2key_subkeys)
	li	a3,192
	lui	a2,%hi(des3_2key_key)
	addi	a2,a2,%lo(des3_2key_key)
	lui	a1,%hi(.LC10)
	addi	a1,a1,%lo(.LC10)
	lw	a0,-36(s0)
	call	cmac_test_subkeys
	sw	a0,-20(s0)
	.loc 3 1002 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L171
	.loc 3 1010 16
	lw	a5,-20(s0)
	j	.L165
.L171:
	.loc 3 1013 16
	li	a5,4
	sw	a5,4(sp)
	li	a5,8
	sw	a5,0(sp)
	li	a7,36
	lui	a5,%hi(des3_2key_expected_result)
	addi	a6,a5,%lo(des3_2key_expected_result)
	lui	a5,%hi(des3_message_lengths)
	addi	a5,a5,%lo(des3_message_lengths)
	lui	a4,%hi(test_message)
	addi	a4,a4,%lo(test_message)
	li	a3,192
	lui	a2,%hi(des3_2key_key)
	addi	a2,a2,%lo(des3_2key_key)
	lui	a1,%hi(.LC10)
	addi	a1,a1,%lo(.LC10)
	lw	a0,-36(s0)
	call	cmac_test_wth_cipher
	sw	a0,-20(s0)
	.loc 3 1013 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L172
	.loc 3 1023 16
	lw	a5,-20(s0)
	j	.L165
.L172:
	.loc 3 1027 16
	li	a7,4
	li	a6,8
	li	a5,36
	lui	a4,%hi(des3_3key_subkeys)
	addi	a4,a4,%lo(des3_3key_subkeys)
	li	a3,192
	lui	a2,%hi(des3_3key_key)
	addi	a2,a2,%lo(des3_3key_key)
	lui	a1,%hi(.LC11)
	addi	a1,a1,%lo(.LC11)
	lw	a0,-36(s0)
	call	cmac_test_subkeys
	sw	a0,-20(s0)
	.loc 3 1027 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L173
	.loc 3 1035 16
	lw	a5,-20(s0)
	j	.L165
.L173:
	.loc 3 1038 16
	li	a5,4
	sw	a5,4(sp)
	li	a5,8
	sw	a5,0(sp)
	li	a7,36
	lui	a5,%hi(des3_3key_expected_result)
	addi	a6,a5,%lo(des3_3key_expected_result)
	lui	a5,%hi(des3_message_lengths)
	addi	a5,a5,%lo(des3_message_lengths)
	lui	a4,%hi(test_message)
	addi	a4,a4,%lo(test_message)
	li	a3,192
	lui	a2,%hi(des3_3key_key)
	addi	a2,a2,%lo(des3_3key_key)
	lui	a1,%hi(.LC11)
	addi	a1,a1,%lo(.LC11)
	lw	a0,-36(s0)
	call	cmac_test_wth_cipher
	sw	a0,-20(s0)
	.loc 3 1038 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L174
	.loc 3 1048 16
	lw	a5,-20(s0)
	j	.L165
.L174:
	.loc 3 1053 16
	lw	a0,-36(s0)
	call	test_aes128_cmac_prf
	sw	a0,-20(s0)
	.loc 3 1053 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L175
	.loc 3 1054 16
	lw	a5,-20(s0)
	j	.L165
.L175:
	.loc 3 1058 8
	lw	a5,-36(s0)
	beq	a5,zero,.L176
	.loc 3 1059 9
	lui	a5,%hi(.LC12)
	addi	a0,a5,%lo(.LC12)
	call	printf
.L176:
	.loc 3 1062 12
	li	a5,0
.L165:
	.loc 3 1063 1
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
.LFE66:
	.size	mbedtls_cmac_self_test, .-mbedtls_cmac_self_test
	.text
.Letext0:
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/cmac.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/constant_time_internal.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1484
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x2a
	.4byte	.LASF219
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x6
	.4byte	0x32
	.uleb128 0xc
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0xc
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	0x6f
	.uleb128 0xf
	.4byte	.LASF12
	.byte	0x6
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x6
	.4byte	0x7b
	.uleb128 0xc
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xf
	.4byte	.LASF13
	.byte	0x7
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0xf
	.4byte	.LASF14
	.byte	0x7
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x2c
	.byte	0x4
	.uleb128 0x1c
	.4byte	0xab
	.uleb128 0xb
	.4byte	0x32
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.4byte	0xb7
	.uleb128 0xb
	.4byte	0xbe
	.uleb128 0x1c
	.4byte	0xc3
	.uleb128 0xb
	.4byte	0xd7
	.uleb128 0x1c
	.4byte	0xcd
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x4
	.byte	0x4
	.byte	0x59
	.byte	0x9
	.4byte	0xed
	.uleb128 0x2f
	.string	"x"
	.byte	0x4
	.byte	0x5a
	.byte	0xe
	.4byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF16
	.byte	0x4
	.byte	0x5b
	.byte	0x1b
	.4byte	0xd8
	.uleb128 0x21
	.byte	0x7
	.4byte	0x32
	.byte	0x54
	.4byte	0x2fd
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x35
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x36
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x37
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x39
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x3a
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x3b
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x49
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x4b
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x4d
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x4f
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x51
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x52
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0x53
	.byte	0
	.uleb128 0xf
	.4byte	.LASF101
	.byte	0x1
	.byte	0xa9
	.byte	0x3
	.4byte	0xf9
	.uleb128 0x6
	.4byte	0x2fd
	.uleb128 0x21
	.byte	0x5
	.4byte	0x2b
	.byte	0xc7
	.4byte	0x32c
	.uleb128 0x30
	.4byte	.LASF102
	.sleb128 -1
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.4byte	.LASF105
	.byte	0x1
	.byte	0xcb
	.byte	0x3
	.4byte	0x30e
	.uleb128 0x6
	.4byte	0x32c
	.uleb128 0xf
	.4byte	.LASF106
	.byte	0x1
	.byte	0xf9
	.byte	0x27
	.4byte	0x349
	.uleb128 0x31
	.4byte	.LASF106
	.byte	0x24
	.byte	0x8
	.byte	0x3b
	.byte	0x8
	.4byte	0x37b
	.uleb128 0x1d
	.4byte	.LASF107
	.byte	0x3d
	.byte	0x13
	.4byte	0x4e3
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF108
	.byte	0x41
	.byte	0x13
	.4byte	0x4e3
	.byte	0x10
	.uleb128 0x1d
	.4byte	.LASF109
	.byte	0x44
	.byte	0xc
	.4byte	0x7b
	.byte	0x20
	.byte	0
	.uleb128 0x22
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x10a
	.4byte	0x3f0
	.uleb128 0xd
	.4byte	.LASF111
	.2byte	0x10c
	.byte	0x11
	.4byte	0xc3
	.byte	0
	.uleb128 0x14
	.4byte	.LASF112
	.2byte	0x10f
	.4byte	0x6f
	.byte	0x5
	.byte	0x20
	.uleb128 0x14
	.4byte	.LASF113
	.2byte	0x115
	.4byte	0x6f
	.byte	0x3
	.byte	0x25
	.uleb128 0x14
	.4byte	.LASF114
	.2byte	0x11b
	.4byte	0x6f
	.byte	0x4
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF115
	.2byte	0x120
	.4byte	0x6f
	.byte	0x4
	.byte	0x2c
	.uleb128 0x14
	.4byte	.LASF116
	.2byte	0x128
	.4byte	0x6f
	.byte	0x8
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF117
	.2byte	0x12e
	.4byte	0x6f
	.byte	0x2
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF118
	.2byte	0x131
	.4byte	0x6f
	.byte	0x5
	.byte	0x3a
	.byte	0
	.uleb128 0x23
	.4byte	.LASF110
	.2byte	0x133
	.4byte	0x37b
	.uleb128 0x6
	.4byte	0x3f0
	.uleb128 0x22
	.4byte	.LASF119
	.byte	0x44
	.2byte	0x13c
	.4byte	0x49c
	.uleb128 0xd
	.4byte	.LASF120
	.2byte	0x13e
	.byte	0x22
	.4byte	0x49c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF114
	.2byte	0x141
	.byte	0x9
	.4byte	0x68
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF121
	.2byte	0x146
	.byte	0x19
	.4byte	0x32c
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF122
	.2byte	0x14c
	.byte	0xb
	.4byte	0x4b6
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF123
	.2byte	0x152
	.byte	0xa
	.4byte	0x4de
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF124
	.2byte	0x158
	.byte	0x13
	.4byte	0x4e3
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF109
	.2byte	0x15b
	.byte	0xc
	.4byte	0x7b
	.byte	0x24
	.uleb128 0x32
	.string	"iv"
	.byte	0x1
	.2byte	0x15f
	.byte	0x13
	.4byte	0x4e3
	.byte	0x28
	.uleb128 0xd
	.4byte	.LASF113
	.2byte	0x162
	.byte	0xc
	.4byte	0x7b
	.byte	0x38
	.uleb128 0xd
	.4byte	.LASF125
	.2byte	0x165
	.byte	0xb
	.4byte	0xab
	.byte	0x3c
	.uleb128 0xd
	.4byte	.LASF126
	.2byte	0x169
	.byte	0x1d
	.4byte	0x4f3
	.byte	0x40
	.byte	0
	.uleb128 0xb
	.4byte	0x3fb
	.uleb128 0x33
	.4byte	0x4b6
	.uleb128 0x3
	.4byte	0xb2
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0xb
	.4byte	0x4a1
	.uleb128 0x34
	.4byte	0x68
	.4byte	0x4d9
	.uleb128 0x3
	.4byte	0xb2
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x4d9
	.uleb128 0x3
	.4byte	0x4d9
	.byte	0
	.uleb128 0xb
	.4byte	0x7b
	.uleb128 0xb
	.4byte	0x4bb
	.uleb128 0x9
	.4byte	0x32
	.4byte	0x4f3
	.uleb128 0x7
	.4byte	0x6f
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.4byte	0x33d
	.uleb128 0x23
	.4byte	.LASF119
	.2byte	0x177
	.4byte	0x400
	.uleb128 0xf
	.4byte	.LASF127
	.byte	0x9
	.byte	0x50
	.byte	0x12
	.4byte	0x9f
	.uleb128 0xf
	.4byte	.LASF128
	.byte	0x9
	.byte	0x51
	.byte	0x12
	.4byte	0x9f
	.uleb128 0x6
	.4byte	0x50f
	.uleb128 0xf
	.4byte	.LASF129
	.byte	0x9
	.byte	0x52
	.byte	0x11
	.4byte	0x93
	.uleb128 0x9
	.4byte	0x39
	.4byte	0x53c
	.uleb128 0x7
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0x6
	.4byte	0x52c
	.uleb128 0x2
	.4byte	.LASF130
	.2byte	0x1bf
	.byte	0x1c
	.4byte	0x53c
	.uleb128 0x5
	.byte	0x3
	.4byte	test_message
	.uleb128 0x9
	.4byte	0x76
	.4byte	0x563
	.uleb128 0x7
	.4byte	0x6f
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	0x553
	.uleb128 0x2
	.4byte	.LASF131
	.2byte	0x1ce
	.byte	0x1b
	.4byte	0x563
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_message_lengths
	.uleb128 0x9
	.4byte	0x39
	.4byte	0x58a
	.uleb128 0x7
	.4byte	0x6f
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0x57a
	.uleb128 0x2
	.4byte	.LASF132
	.2byte	0x1d7
	.byte	0x1c
	.4byte	0x58a
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_128_key
	.uleb128 0x9
	.4byte	0x39
	.4byte	0x5b7
	.uleb128 0x7
	.4byte	0x6f
	.byte	0x1
	.uleb128 0x7
	.4byte	0x6f
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0x5a1
	.uleb128 0x2
	.4byte	.LASF133
	.2byte	0x1db
	.byte	0x1c
	.4byte	0x5b7
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_128_subkeys
	.uleb128 0x9
	.4byte	0x39
	.4byte	0x5e4
	.uleb128 0x7
	.4byte	0x6f
	.byte	0x3
	.uleb128 0x7
	.4byte	0x6f
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0x5ce
	.uleb128 0x2
	.4byte	.LASF134
	.2byte	0x1e7
	.byte	0x1c
	.4byte	0x5e4
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_128_expected_result
	.uleb128 0x9
	.4byte	0x39
	.4byte	0x60b
	.uleb128 0x7
	.4byte	0x6f
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.4byte	0x5fb
	.uleb128 0x2
	.4byte	.LASF135
	.2byte	0x201
	.byte	0x1c
	.4byte	0x60b
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_192_key
	.uleb128 0x2
	.4byte	.LASF136
	.2byte	0x206
	.byte	0x1c
	.4byte	0x5b7
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_192_subkeys
	.uleb128 0x2
	.4byte	.LASF137
	.2byte	0x212
	.byte	0x1c
	.4byte	0x5e4
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_192_expected_result
	.uleb128 0x9
	.4byte	0x39
	.4byte	0x656
	.uleb128 0x7
	.4byte	0x6f
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.4byte	0x646
	.uleb128 0x2
	.4byte	.LASF138
	.2byte	0x22d
	.byte	0x1c
	.4byte	0x656
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_256_key
	.uleb128 0x2
	.4byte	.LASF139
	.2byte	0x233
	.byte	0x1c
	.4byte	0x5b7
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_256_subkeys
	.uleb128 0x2
	.4byte	.LASF140
	.2byte	0x23f
	.byte	0x1c
	.4byte	0x5e4
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_256_expected_result
	.uleb128 0x2
	.4byte	.LASF141
	.2byte	0x25b
	.byte	0x1b
	.4byte	0x563
	.uleb128 0x5
	.byte	0x3
	.4byte	des3_message_lengths
	.uleb128 0x2
	.4byte	.LASF142
	.2byte	0x263
	.byte	0x1c
	.4byte	0x60b
	.uleb128 0x5
	.byte	0x3
	.4byte	des3_2key_key
	.uleb128 0x9
	.4byte	0x39
	.4byte	0x6cb
	.uleb128 0x7
	.4byte	0x6f
	.byte	0x1
	.uleb128 0x7
	.4byte	0x6f
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.4byte	0x6b5
	.uleb128 0x2
	.4byte	.LASF143
	.2byte	0x26b
	.byte	0x1c
	.4byte	0x6cb
	.uleb128 0x5
	.byte	0x3
	.4byte	des3_2key_subkeys
	.uleb128 0x9
	.4byte	0x39
	.4byte	0x6f8
	.uleb128 0x7
	.4byte	0x6f
	.byte	0x3
	.uleb128 0x7
	.4byte	0x6f
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.4byte	0x6e2
	.uleb128 0x2
	.4byte	.LASF144
	.2byte	0x275
	.byte	0x1c
	.4byte	0x6f8
	.uleb128 0x5
	.byte	0x3
	.4byte	des3_2key_expected_result
	.uleb128 0x2
	.4byte	.LASF145
	.2byte	0x28a
	.byte	0x1c
	.4byte	0x60b
	.uleb128 0x5
	.byte	0x3
	.4byte	des3_3key_key
	.uleb128 0x2
	.4byte	.LASF146
	.2byte	0x292
	.byte	0x1c
	.4byte	0x6cb
	.uleb128 0x5
	.byte	0x3
	.4byte	des3_3key_subkeys
	.uleb128 0x2
	.4byte	.LASF147
	.2byte	0x29c
	.byte	0x1c
	.4byte	0x6f8
	.uleb128 0x5
	.byte	0x3
	.4byte	des3_3key_expected_result
	.uleb128 0x9
	.4byte	0x39
	.4byte	0x755
	.uleb128 0x7
	.4byte	0x6f
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.4byte	0x745
	.uleb128 0x2
	.4byte	.LASF148
	.2byte	0x2b4
	.byte	0x1c
	.4byte	0x755
	.uleb128 0x5
	.byte	0x3
	.4byte	PRFK
	.uleb128 0x9
	.4byte	0x87
	.4byte	0x77c
	.uleb128 0x7
	.4byte	0x6f
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	0x76c
	.uleb128 0x2
	.4byte	.LASF149
	.2byte	0x2bc
	.byte	0x15
	.4byte	0x77c
	.uleb128 0x5
	.byte	0x3
	.4byte	PRFKlen
	.uleb128 0x9
	.4byte	0x39
	.4byte	0x7a3
	.uleb128 0x7
	.4byte	0x6f
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.4byte	0x793
	.uleb128 0x2
	.4byte	.LASF150
	.2byte	0x2c3
	.byte	0x1c
	.4byte	0x7a3
	.uleb128 0x5
	.byte	0x3
	.4byte	PRFM
	.uleb128 0x9
	.4byte	0x39
	.4byte	0x7d0
	.uleb128 0x7
	.4byte	0x6f
	.byte	0x2
	.uleb128 0x7
	.4byte	0x6f
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0x7ba
	.uleb128 0x2
	.4byte	.LASF151
	.2byte	0x2c9
	.byte	0x1c
	.4byte	0x7d0
	.uleb128 0x5
	.byte	0x3
	.4byte	PRFT
	.uleb128 0x17
	.4byte	.LASF152
	.byte	0xa
	.byte	0x1e
	.byte	0x5
	.4byte	0x68
	.4byte	0x807
	.uleb128 0x3
	.4byte	0xcd
	.uleb128 0x3
	.4byte	0xcd
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0x17
	.4byte	.LASF153
	.byte	0xb
	.byte	0xce
	.byte	0x5
	.4byte	0x68
	.4byte	0x81e
	.uleb128 0x3
	.4byte	0xc8
	.uleb128 0x35
	.byte	0
	.uleb128 0x17
	.4byte	.LASF154
	.byte	0xa
	.byte	0x21
	.byte	0x8
	.4byte	0xab
	.4byte	0x83e
	.uleb128 0x3
	.4byte	0xab
	.uleb128 0x3
	.4byte	0x68
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0x19
	.4byte	.LASF155
	.2byte	0x19f
	.byte	0x1e
	.4byte	0x49c
	.4byte	0x854
	.uleb128 0x3
	.4byte	0x309
	.byte	0
	.uleb128 0x24
	.4byte	.LASF157
	.2byte	0x261
	.4byte	0x865
	.uleb128 0x3
	.4byte	0x865
	.byte	0
	.uleb128 0xb
	.4byte	0x4f8
	.uleb128 0x19
	.4byte	.LASF156
	.2byte	0x27e
	.byte	0x5
	.4byte	0x68
	.4byte	0x885
	.uleb128 0x3
	.4byte	0x865
	.uleb128 0x3
	.4byte	0x49c
	.byte	0
	.uleb128 0x24
	.4byte	.LASF158
	.2byte	0x256
	.4byte	0x896
	.uleb128 0x3
	.4byte	0x865
	.byte	0
	.uleb128 0x17
	.4byte	.LASF159
	.byte	0xa
	.byte	0x1f
	.byte	0x8
	.4byte	0xab
	.4byte	0x8b6
	.uleb128 0x3
	.4byte	0xad
	.uleb128 0x3
	.4byte	0xd2
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0x17
	.4byte	.LASF160
	.byte	0xc
	.byte	0x5a
	.byte	0x7
	.4byte	0xab
	.4byte	0x8d1
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0x19
	.4byte	.LASF161
	.2byte	0x33e
	.byte	0x5
	.4byte	0x68
	.4byte	0x8f6
	.uleb128 0x3
	.4byte	0x865
	.uleb128 0x3
	.4byte	0x8f6
	.uleb128 0x3
	.4byte	0x68
	.uleb128 0x3
	.4byte	0x338
	.byte	0
	.uleb128 0xb
	.4byte	0x39
	.uleb128 0x19
	.4byte	.LASF162
	.2byte	0x3c5
	.byte	0x5
	.4byte	0x68
	.4byte	0x925
	.uleb128 0x3
	.4byte	0x865
	.uleb128 0x3
	.4byte	0x8f6
	.uleb128 0x3
	.4byte	0x7b
	.uleb128 0x3
	.4byte	0xb2
	.uleb128 0x3
	.4byte	0x4d9
	.byte	0
	.uleb128 0x36
	.4byte	.LASF163
	.byte	0xd
	.byte	0x9f
	.byte	0x6
	.4byte	0x93c
	.uleb128 0x3
	.4byte	0xab
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0x18
	.4byte	.LASF180
	.2byte	0x393
	.4byte	0x68
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x975
	.uleb128 0x4
	.4byte	.LASF164
	.byte	0x3
	.2byte	0x393
	.byte	0x20
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"ret"
	.2byte	0x395
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF166
	.2byte	0x37a
	.4byte	0x68
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9ca
	.uleb128 0x4
	.4byte	.LASF164
	.byte	0x3
	.2byte	0x37a
	.byte	0x25
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.string	"i"
	.2byte	0x37c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"ret"
	.2byte	0x37d
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF165
	.2byte	0x37e
	.byte	0x13
	.4byte	0x4e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF167
	.2byte	0x337
	.4byte	0x68
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xacd
	.uleb128 0x4
	.4byte	.LASF164
	.byte	0x3
	.2byte	0x337
	.byte	0x25
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF168
	.byte	0x3
	.2byte	0x338
	.byte	0x2d
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.string	"key"
	.byte	0x3
	.2byte	0x339
	.byte	0x36
	.4byte	0x8f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF169
	.byte	0x3
	.2byte	0x33a
	.byte	0x25
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.4byte	.LASF170
	.byte	0x3
	.2byte	0x33b
	.byte	0x36
	.4byte	0x8f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.4byte	.LASF171
	.byte	0x3
	.2byte	0x33c
	.byte	0x34
	.4byte	0xacd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x4
	.4byte	.LASF172
	.byte	0x3
	.2byte	0x33d
	.byte	0x36
	.4byte	0x8f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x4
	.4byte	.LASF173
	.byte	0x3
	.2byte	0x33e
	.byte	0x37
	.4byte	0x2fd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.uleb128 0x4
	.4byte	.LASF112
	.byte	0x3
	.2byte	0x33f
	.byte	0x25
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF174
	.byte	0x3
	.2byte	0x340
	.byte	0x25
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2
	.4byte	.LASF120
	.2byte	0x342
	.byte	0x22
	.4byte	0x49c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.string	"i"
	.2byte	0x343
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"ret"
	.2byte	0x343
	.byte	0xc
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF165
	.2byte	0x344
	.byte	0x13
	.4byte	0x4e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.4byte	.LASF177
	.2byte	0x375
	.4byte	.L137
	.byte	0
	.uleb128 0xb
	.4byte	0x76
	.uleb128 0x1e
	.4byte	.LASF175
	.2byte	0x2d9
	.4byte	0x68
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbee
	.uleb128 0x4
	.4byte	.LASF164
	.byte	0x3
	.2byte	0x2d9
	.byte	0x22
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x4
	.4byte	.LASF168
	.byte	0x3
	.2byte	0x2da
	.byte	0x2a
	.4byte	0xc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x15
	.string	"key"
	.byte	0x3
	.2byte	0x2db
	.byte	0x33
	.4byte	0x8f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x4
	.4byte	.LASF169
	.byte	0x3
	.2byte	0x2dc
	.byte	0x22
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x4
	.4byte	.LASF176
	.byte	0x3
	.2byte	0x2dd
	.byte	0x33
	.4byte	0x8f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x4
	.4byte	.LASF173
	.byte	0x3
	.2byte	0x2de
	.byte	0x34
	.4byte	0x2fd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -149
	.uleb128 0x4
	.4byte	.LASF112
	.byte	0x3
	.2byte	0x2df
	.byte	0x22
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x4
	.4byte	.LASF174
	.byte	0x3
	.2byte	0x2e0
	.byte	0x22
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x8
	.string	"i"
	.2byte	0x2e2
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"ret"
	.2byte	0x2e2
	.byte	0xc
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"ctx"
	.2byte	0x2e3
	.byte	0x1e
	.4byte	0x4f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2
	.4byte	.LASF120
	.2byte	0x2e4
	.byte	0x22
	.4byte	0x49c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.string	"K1"
	.2byte	0x2e5
	.byte	0x13
	.4byte	0x4e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x8
	.string	"K2"
	.2byte	0x2e6
	.byte	0x13
	.4byte	0x4e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x11
	.4byte	.LASF178
	.2byte	0x330
	.4byte	.L114
	.uleb128 0x11
	.4byte	.LASF179
	.2byte	0x329
	.4byte	.L119
	.uleb128 0x11
	.4byte	.LASF177
	.2byte	0x333
	.4byte	.L127
	.byte	0
	.uleb128 0x18
	.4byte	.LASF181
	.2byte	0x183
	.4byte	0x68
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xca4
	.uleb128 0x15
	.string	"key"
	.byte	0x3
	.2byte	0x183
	.byte	0x33
	.4byte	0x8f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.4byte	.LASF182
	.byte	0x3
	.2byte	0x183
	.byte	0x3f
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x4
	.4byte	.LASF183
	.byte	0x3
	.2byte	0x184
	.byte	0x33
	.4byte	0x8f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x4
	.4byte	.LASF184
	.byte	0x3
	.2byte	0x184
	.byte	0x41
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x4
	.4byte	.LASF165
	.byte	0x3
	.2byte	0x185
	.byte	0x2c
	.4byte	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x8
	.string	"ret"
	.2byte	0x187
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF120
	.2byte	0x188
	.byte	0x22
	.4byte	0x49c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF185
	.2byte	0x189
	.byte	0x13
	.4byte	0x4e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF186
	.2byte	0x18a
	.byte	0x13
	.4byte	0x4e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.4byte	.LASF177
	.2byte	0x1a7
	.4byte	.L102
	.byte	0
	.uleb128 0x18
	.4byte	.LASF187
	.2byte	0x15b
	.4byte	0x68
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd4e
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0x3
	.2byte	0x15b
	.byte	0x36
	.4byte	0x49c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x15
	.string	"key"
	.byte	0x3
	.2byte	0x15c
	.byte	0x2e
	.4byte	0x8f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x4
	.4byte	.LASF188
	.byte	0x3
	.2byte	0x15c
	.byte	0x3a
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x4
	.4byte	.LASF183
	.byte	0x3
	.2byte	0x15d
	.byte	0x2e
	.4byte	0x8f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x4
	.4byte	.LASF189
	.byte	0x3
	.2byte	0x15d
	.byte	0x3c
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x4
	.4byte	.LASF165
	.byte	0x3
	.2byte	0x15e
	.byte	0x28
	.4byte	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x8
	.string	"ctx"
	.2byte	0x160
	.byte	0x1e
	.4byte	0x4f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x8
	.string	"ret"
	.2byte	0x161
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.4byte	.LASF177
	.2byte	0x179
	.4byte	.L90
	.byte	0
	.uleb128 0x18
	.4byte	.LASF190
	.2byte	0x147
	.4byte	0x68
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd87
	.uleb128 0x15
	.string	"ctx"
	.byte	0x3
	.2byte	0x147
	.byte	0x39
	.4byte	0x865
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF126
	.2byte	0x149
	.byte	0x1d
	.4byte	0x4f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF191
	.2byte	0x10c
	.4byte	0x68
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf11
	.uleb128 0x15
	.string	"ctx"
	.byte	0x3
	.2byte	0x10c
	.byte	0x3a
	.4byte	0x865
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x4
	.4byte	.LASF165
	.byte	0x3
	.2byte	0x10d
	.byte	0x2f
	.4byte	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2
	.4byte	.LASF126
	.2byte	0x10f
	.byte	0x1d
	.4byte	0x4f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF107
	.2byte	0x110
	.byte	0x14
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF192
	.2byte	0x110
	.byte	0x1c
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"K1"
	.2byte	0x111
	.byte	0x13
	.4byte	0x4e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x8
	.string	"K2"
	.2byte	0x112
	.byte	0x13
	.4byte	0x4e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2
	.4byte	.LASF193
	.2byte	0x113
	.byte	0x13
	.4byte	0x4e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x8
	.string	"ret"
	.2byte	0x114
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF194
	.2byte	0x115
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2
	.4byte	.LASF112
	.2byte	0x115
	.byte	0x12
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.4byte	.LASF177
	.2byte	0x139
	.4byte	.L78
	.uleb128 0x25
	.4byte	0x13ea
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.2byte	0x12a
	.4byte	0xe92
	.uleb128 0x5
	.4byte	0x13f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	0x13ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	0x1409
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	0x1413
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.4byte	0x141d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x25
	.4byte	0x13ea
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.2byte	0x12d
	.4byte	0xed1
	.uleb128 0x5
	.4byte	0x13f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.4byte	0x13ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.4byte	0x1409
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.4byte	0x1413
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x12
	.4byte	0x141d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x37
	.4byte	0x13ea
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x3
	.2byte	0x131
	.byte	0x5
	.uleb128 0x5
	.4byte	0x13f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.4byte	0x13ff
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x5
	.4byte	0x1409
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x5
	.4byte	0x1413
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x12
	.4byte	0x141d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF195
	.byte	0xc6
	.4byte	0x68
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x103d
	.uleb128 0x13
	.string	"ctx"
	.byte	0x3
	.byte	0xc6
	.byte	0x3a
	.4byte	0x865
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x10
	.4byte	.LASF183
	.byte	0xc7
	.byte	0x35
	.4byte	0x8f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x10
	.4byte	.LASF189
	.byte	0xc7
	.byte	0x43
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0xa
	.4byte	.LASF126
	.byte	0xc9
	.byte	0x1d
	.4byte	0x4f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.4byte	.LASF107
	.byte	0xca
	.byte	0x14
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.string	"ret"
	.byte	0x3
	.byte	0xcb
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"n"
	.byte	0x3
	.byte	0xcc
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"j"
	.byte	0x3
	.byte	0xcc
	.byte	0xf
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF194
	.byte	0xcc
	.byte	0x12
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xa
	.4byte	.LASF112
	.byte	0xcc
	.byte	0x18
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.4byte	.LASF177
	.2byte	0x108
	.4byte	.L54
	.uleb128 0x27
	.4byte	0x13a8
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0xe3
	.byte	0x9
	.4byte	0x1000
	.uleb128 0x5
	.4byte	0x13b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	0x13c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	0x13ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.4byte	0x13d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.4byte	0x13de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x28
	.4byte	0x13a8
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0xf5
	.byte	0x9
	.uleb128 0x5
	.4byte	0x13b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.4byte	0x13c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.4byte	0x13ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.4byte	0x13d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x12
	.4byte	0x13de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF196
	.byte	0x9c
	.4byte	0x68
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10ac
	.uleb128 0x13
	.string	"ctx"
	.byte	0x3
	.byte	0x9c
	.byte	0x3a
	.4byte	0x865
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.string	"key"
	.byte	0x3
	.byte	0x9d
	.byte	0x35
	.4byte	0x8f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.4byte	.LASF169
	.byte	0x9d
	.byte	0x41
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.4byte	.LASF116
	.byte	0x9f
	.byte	0x1b
	.4byte	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0xa
	.4byte	.LASF126
	.byte	0xa0
	.byte	0x1d
	.4byte	0x4f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.4byte	.LASF197
	.byte	0xa1
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x38
	.4byte	.LASF220
	.byte	0x3
	.byte	0x8a
	.byte	0xd
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1108
	.uleb128 0x10
	.4byte	.LASF198
	.byte	0x8a
	.byte	0x24
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.4byte	.LASF199
	.byte	0x8b
	.byte	0x1d
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.4byte	.LASF192
	.byte	0x8c
	.byte	0x2b
	.4byte	0x8f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.4byte	.LASF200
	.byte	0x8d
	.byte	0x1d
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"j"
	.byte	0x3
	.byte	0x8f
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF201
	.byte	0x3
	.byte	0x60
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1192
	.uleb128 0x13
	.string	"ctx"
	.byte	0x3
	.byte	0x60
	.byte	0x3c
	.4byte	0x865
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x13
	.string	"K1"
	.byte	0x3
	.byte	0x61
	.byte	0x31
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.string	"K2"
	.byte	0x3
	.byte	0x61
	.byte	0x44
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xe
	.string	"ret"
	.byte	0x3
	.byte	0x63
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"L"
	.byte	0x3
	.byte	0x64
	.byte	0x13
	.4byte	0x4e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.4byte	.LASF194
	.byte	0x65
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.4byte	.LASF112
	.byte	0x65
	.byte	0x12
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.4byte	.LASF177
	.byte	0x3
	.byte	0x7b
	.byte	0x1
	.4byte	.L23
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF202
	.byte	0x3
	.byte	0x37
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12a9
	.uleb128 0x10
	.4byte	.LASF165
	.byte	0x37
	.byte	0x2e
	.4byte	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x10
	.4byte	.LASF183
	.byte	0x38
	.byte	0x34
	.4byte	0x8f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x10
	.4byte	.LASF203
	.byte	0x39
	.byte	0x26
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xa
	.4byte	.LASF204
	.byte	0x3b
	.byte	0x19
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0xe
	.string	"R_n"
	.byte	0x3
	.byte	0x3c
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xa
	.4byte	.LASF205
	.byte	0x3d
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"i"
	.byte	0x3
	.byte	0x3e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3a
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0x122d
	.uleb128 0xa
	.4byte	.LASF206
	.byte	0x45
	.byte	0x1d
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.byte	0
	.uleb128 0x3b
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0xe
	.string	"i32"
	.byte	0x3
	.byte	0x4e
	.byte	0x12
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF207
	.byte	0x4f
	.byte	0x12
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.4byte	0x1459
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x4e
	.byte	0x63
	.4byte	0x127f
	.uleb128 0x5
	.4byte	0x1466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.4byte	0x1470
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.4byte	0x147a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x28
	.4byte	0x1428
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x51
	.byte	0x61
	.uleb128 0x5
	.4byte	0x1433
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.4byte	0x143d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x12
	.4byte	0x1447
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF208
	.byte	0x2
	.2byte	0x1c3
	.byte	0x18
	.4byte	0x6f
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12e5
	.uleb128 0x4
	.4byte	.LASF209
	.byte	0x2
	.2byte	0x1c3
	.byte	0x49
	.4byte	0x503
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.string	"if1"
	.byte	0x2
	.2byte	0x1c3
	.byte	0x5d
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF210
	.byte	0x2
	.byte	0x78
	.byte	0x26
	.4byte	0x503
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1328
	.uleb128 0x13
	.string	"x"
	.byte	0x2
	.byte	0x78
	.byte	0x48
	.4byte	0x50f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.string	"xo"
	.byte	0x2
	.byte	0xb8
	.byte	0x1d
	.4byte	0x51b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"y"
	.byte	0x2
	.byte	0xc0
	.byte	0x16
	.4byte	0x520
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF211
	.byte	0x2
	.byte	0x55
	.byte	0x21
	.4byte	0x50f
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1350
	.uleb128 0x13
	.string	"x"
	.byte	0x2
	.byte	0x55
	.byte	0x4e
	.4byte	0x50f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x221
	.byte	0x16
	.4byte	0x7b
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x137c
	.uleb128 0x4
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x222
	.byte	0x22
	.4byte	0x49c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x1bc
	.byte	0x25
	.4byte	0x2fd
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13a8
	.uleb128 0x4
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x1bd
	.byte	0x22
	.4byte	0x49c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF215
	.byte	0x5
	.2byte	0x10c
	.byte	0x14
	.byte	0x3
	.4byte	0x13ea
	.uleb128 0x1a
	.string	"r"
	.2byte	0x10c
	.byte	0x37
	.4byte	0xb2
	.uleb128 0x1a
	.string	"a"
	.2byte	0x10d
	.byte	0x3d
	.4byte	0x8f6
	.uleb128 0x1a
	.string	"b"
	.2byte	0x10e
	.byte	0x3d
	.4byte	0x8f6
	.uleb128 0x1a
	.string	"n"
	.2byte	0x10f
	.byte	0x2f
	.4byte	0x7b
	.uleb128 0x3e
	.string	"i"
	.byte	0x5
	.2byte	0x111
	.byte	0xc
	.4byte	0x7b
	.byte	0
	.uleb128 0x29
	.4byte	.LASF216
	.byte	0x5
	.byte	0xba
	.4byte	0x1428
	.uleb128 0x16
	.string	"r"
	.byte	0x5
	.byte	0xba
	.byte	0x2f
	.4byte	0xb2
	.uleb128 0x16
	.string	"a"
	.byte	0x5
	.byte	0xbb
	.byte	0x35
	.4byte	0x8f6
	.uleb128 0x16
	.string	"b"
	.byte	0x5
	.byte	0xbc
	.byte	0x35
	.4byte	0x8f6
	.uleb128 0x16
	.string	"n"
	.byte	0x5
	.byte	0xbd
	.byte	0x27
	.4byte	0x7b
	.uleb128 0x1b
	.string	"i"
	.byte	0x5
	.byte	0xbf
	.byte	0xc
	.4byte	0x7b
	.byte	0
	.uleb128 0x29
	.4byte	.LASF217
	.byte	0x4
	.byte	0xc2
	.4byte	0x1454
	.uleb128 0x16
	.string	"p"
	.byte	0x4
	.byte	0xc2
	.byte	0x37
	.4byte	0xab
	.uleb128 0x16
	.string	"x"
	.byte	0x4
	.byte	0xc2
	.byte	0x43
	.4byte	0x9f
	.uleb128 0x1b
	.string	"p32"
	.byte	0x4
	.byte	0xc8
	.byte	0x21
	.4byte	0x1454
	.byte	0
	.uleb128 0xb
	.4byte	0xed
	.uleb128 0x3f
	.4byte	.LASF218
	.byte	0x4
	.byte	0xa7
	.byte	0x18
	.4byte	0x9f
	.byte	0x3
	.uleb128 0x16
	.string	"p"
	.byte	0x4
	.byte	0xa7
	.byte	0x41
	.4byte	0xcd
	.uleb128 0x1b
	.string	"r"
	.byte	0x4
	.byte	0xa9
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x1b
	.string	"p32"
	.byte	0x4
	.byte	0xae
	.byte	0x21
	.4byte	0x1454
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x21
	.sleb128 18
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x18
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.sleb128 3
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x27
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
	.sleb128 3
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.sleb128 20
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.4byte	0xa4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
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
	.4byte	.LFB11
	.uleb128 .LFE11-.LFB11
	.byte	0x7
	.4byte	.LFB16
	.uleb128 .LFE16-.LFB16
	.byte	0x7
	.4byte	.LFB30
	.uleb128 .LFE30-.LFB30
	.byte	0x7
	.4byte	.LFB31
	.uleb128 .LFE31-.LFB31
	.byte	0x7
	.4byte	.LFB41
	.uleb128 .LFE41-.LFB41
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF81:
	.string	"MBEDTLS_CIPHER_ARIA_256_GCM"
.LASF208:
	.string	"mbedtls_ct_uint_if_else_0"
.LASF127:
	.string	"mbedtls_ct_condition_t"
.LASF121:
	.string	"operation"
.LASF165:
	.string	"output"
.LASF203:
	.string	"blocksize"
.LASF48:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_GCM"
.LASF199:
	.string	"padded_block_len"
.LASF202:
	.string	"cmac_multiply_by_u"
.LASF117:
	.string	"flags"
.LASF169:
	.string	"keybits"
.LASF101:
	.string	"mbedtls_cipher_type_t"
.LASF10:
	.string	"unsigned int"
.LASF96:
	.string	"MBEDTLS_CIPHER_AES_192_KW"
.LASF18:
	.string	"MBEDTLS_CIPHER_NULL"
.LASF106:
	.string	"mbedtls_cmac_context_t"
.LASF173:
	.string	"cipher_type"
.LASF172:
	.string	"expected_result"
.LASF85:
	.string	"MBEDTLS_CIPHER_ARIA_128_CCM_STAR_NO_TAG"
.LASF19:
	.string	"MBEDTLS_CIPHER_AES_128_ECB"
.LASF176:
	.string	"subkeys"
.LASF25:
	.string	"MBEDTLS_CIPHER_AES_128_CFB128"
.LASF215:
	.string	"mbedtls_xor_no_simd"
.LASF73:
	.string	"MBEDTLS_CIPHER_ARIA_128_CFB128"
.LASF67:
	.string	"MBEDTLS_CIPHER_ARIA_128_ECB"
.LASF115:
	.string	"mode"
.LASF42:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CFB128"
.LASF189:
	.string	"ilen"
.LASF206:
	.string	"R_64"
.LASF149:
	.string	"PRFKlen"
.LASF160:
	.string	"calloc"
.LASF210:
	.string	"mbedtls_ct_bool"
.LASF105:
	.string	"mbedtls_operation_t"
.LASF139:
	.string	"aes_256_subkeys"
.LASF99:
	.string	"MBEDTLS_CIPHER_AES_192_KWP"
.LASF34:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_ECB"
.LASF136:
	.string	"aes_192_subkeys"
.LASF21:
	.string	"MBEDTLS_CIPHER_AES_256_ECB"
.LASF194:
	.string	"olen"
.LASF51:
	.string	"MBEDTLS_CIPHER_DES_EDE_ECB"
.LASF186:
	.string	"int_key"
.LASF14:
	.string	"uint32_t"
.LASF102:
	.string	"MBEDTLS_OPERATION_NONE"
.LASF69:
	.string	"MBEDTLS_CIPHER_ARIA_256_ECB"
.LASF86:
	.string	"MBEDTLS_CIPHER_ARIA_192_CCM_STAR_NO_TAG"
.LASF93:
	.string	"MBEDTLS_CIPHER_CHACHA20"
.LASF195:
	.string	"mbedtls_cipher_cmac_update"
.LASF220:
	.string	"cmac_pad"
.LASF168:
	.string	"testname"
.LASF36:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_ECB"
.LASF9:
	.string	"long long unsigned int"
.LASF22:
	.string	"MBEDTLS_CIPHER_AES_128_CBC"
.LASF178:
	.string	"cleanup"
.LASF32:
	.string	"MBEDTLS_CIPHER_AES_192_GCM"
.LASF88:
	.string	"MBEDTLS_CIPHER_AES_128_OFB"
.LASF126:
	.string	"cmac_ctx"
.LASF104:
	.string	"MBEDTLS_ENCRYPT"
.LASF103:
	.string	"MBEDTLS_DECRYPT"
.LASF70:
	.string	"MBEDTLS_CIPHER_ARIA_128_CBC"
.LASF110:
	.string	"mbedtls_cipher_info_t"
.LASF80:
	.string	"MBEDTLS_CIPHER_ARIA_192_GCM"
.LASF133:
	.string	"aes_128_subkeys"
.LASF217:
	.string	"mbedtls_put_unaligned_uint32"
.LASF60:
	.string	"MBEDTLS_CIPHER_AES_256_CCM_STAR_NO_TAG"
.LASF37:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CBC"
.LASF24:
	.string	"MBEDTLS_CIPHER_AES_256_CBC"
.LASF109:
	.string	"unprocessed_len"
.LASF12:
	.string	"size_t"
.LASF47:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_GCM"
.LASF130:
	.string	"test_message"
.LASF52:
	.string	"MBEDTLS_CIPHER_DES_EDE_CBC"
.LASF90:
	.string	"MBEDTLS_CIPHER_AES_256_OFB"
.LASF16:
	.string	"mbedtls_uint32_unaligned_t"
.LASF207:
	.string	"new_overflow"
.LASF72:
	.string	"MBEDTLS_CIPHER_ARIA_256_CBC"
.LASF82:
	.string	"MBEDTLS_CIPHER_ARIA_128_CCM"
.LASF216:
	.string	"mbedtls_xor"
.LASF183:
	.string	"input"
.LASF192:
	.string	"last_block"
.LASF39:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CBC"
.LASF161:
	.string	"mbedtls_cipher_setkey"
.LASF201:
	.string	"cmac_generate_subkeys"
.LASF61:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CCM"
.LASF191:
	.string	"mbedtls_cipher_cmac_finish"
.LASF57:
	.string	"MBEDTLS_CIPHER_AES_256_CCM"
.LASF185:
	.string	"zero_key"
.LASF188:
	.string	"keylen"
.LASF218:
	.string	"mbedtls_get_unaligned_uint32"
.LASF15:
	.string	"char"
.LASF97:
	.string	"MBEDTLS_CIPHER_AES_256_KW"
.LASF84:
	.string	"MBEDTLS_CIPHER_ARIA_256_CCM"
.LASF146:
	.string	"des3_3key_subkeys"
.LASF170:
	.string	"messages"
.LASF157:
	.string	"mbedtls_cipher_free"
.LASF190:
	.string	"mbedtls_cipher_cmac_reset"
.LASF177:
	.string	"exit"
.LASF131:
	.string	"aes_message_lengths"
.LASF28:
	.string	"MBEDTLS_CIPHER_AES_128_CTR"
.LASF155:
	.string	"mbedtls_cipher_info_from_type"
.LASF20:
	.string	"MBEDTLS_CIPHER_AES_192_ECB"
.LASF63:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CCM"
.LASF171:
	.string	"message_lengths"
.LASF142:
	.string	"des3_2key_key"
.LASF75:
	.string	"MBEDTLS_CIPHER_ARIA_256_CFB128"
.LASF167:
	.string	"cmac_test_wth_cipher"
.LASF76:
	.string	"MBEDTLS_CIPHER_ARIA_128_CTR"
.LASF212:
	.string	"mbedtls_cipher_info_get_block_size"
.LASF197:
	.string	"retval"
.LASF162:
	.string	"mbedtls_cipher_update"
.LASF68:
	.string	"MBEDTLS_CIPHER_ARIA_192_ECB"
.LASF55:
	.string	"MBEDTLS_CIPHER_AES_128_CCM"
.LASF8:
	.string	"long long int"
.LASF184:
	.string	"in_len"
.LASF153:
	.string	"printf"
.LASF43:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CTR"
.LASF66:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CCM_STAR_NO_TAG"
.LASF30:
	.string	"MBEDTLS_CIPHER_AES_256_CTR"
.LASF58:
	.string	"MBEDTLS_CIPHER_AES_128_CCM_STAR_NO_TAG"
.LASF35:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_ECB"
.LASF144:
	.string	"des3_2key_expected_result"
.LASF49:
	.string	"MBEDTLS_CIPHER_DES_ECB"
.LASF154:
	.string	"memset"
.LASF78:
	.string	"MBEDTLS_CIPHER_ARIA_256_CTR"
.LASF174:
	.string	"num_tests"
.LASF27:
	.string	"MBEDTLS_CIPHER_AES_256_CFB128"
.LASF41:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CFB128"
.LASF196:
	.string	"mbedtls_cipher_cmac_starts"
.LASF45:
	.string	"MBEDTLS_CIPHER_CAMELLIA_256_CTR"
.LASF213:
	.string	"info"
.LASF141:
	.string	"des3_message_lengths"
.LASF23:
	.string	"MBEDTLS_CIPHER_AES_192_CBC"
.LASF140:
	.string	"aes_256_expected_result"
.LASF200:
	.string	"last_block_len"
.LASF89:
	.string	"MBEDTLS_CIPHER_AES_192_OFB"
.LASF11:
	.string	"long double"
.LASF71:
	.string	"MBEDTLS_CIPHER_ARIA_192_CBC"
.LASF59:
	.string	"MBEDTLS_CIPHER_AES_192_CCM_STAR_NO_TAG"
.LASF180:
	.string	"mbedtls_cmac_self_test"
.LASF38:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CBC"
.LASF56:
	.string	"MBEDTLS_CIPHER_AES_192_CCM"
.LASF4:
	.string	"short int"
.LASF6:
	.string	"long int"
.LASF138:
	.string	"aes_256_key"
.LASF129:
	.string	"mbedtls_ct_int_t"
.LASF40:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CFB128"
.LASF83:
	.string	"MBEDTLS_CIPHER_ARIA_192_CCM"
.LASF152:
	.string	"memcmp"
.LASF64:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_CCM_STAR_NO_TAG"
.LASF209:
	.string	"condition"
.LASF118:
	.string	"base_idx"
.LASF112:
	.string	"block_size"
.LASF198:
	.string	"padded_block"
.LASF182:
	.string	"key_length"
.LASF62:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CCM"
.LASF114:
	.string	"key_bitlen"
.LASF50:
	.string	"MBEDTLS_CIPHER_DES_CBC"
.LASF123:
	.string	"get_padding"
.LASF120:
	.string	"cipher_info"
.LASF125:
	.string	"cipher_ctx"
.LASF111:
	.string	"name"
.LASF94:
	.string	"MBEDTLS_CIPHER_CHACHA20_POLY1305"
.LASF91:
	.string	"MBEDTLS_CIPHER_AES_128_XTS"
.LASF108:
	.string	"unprocessed_block"
.LASF53:
	.string	"MBEDTLS_CIPHER_DES_EDE3_ECB"
.LASF7:
	.string	"long unsigned int"
.LASF211:
	.string	"mbedtls_ct_compiler_opaque"
.LASF29:
	.string	"MBEDTLS_CIPHER_AES_192_CTR"
.LASF181:
	.string	"mbedtls_aes_cmac_prf_128"
.LASF113:
	.string	"iv_size"
.LASF13:
	.string	"int32_t"
.LASF175:
	.string	"cmac_test_subkeys"
.LASF98:
	.string	"MBEDTLS_CIPHER_AES_128_KWP"
.LASF145:
	.string	"des3_3key_key"
.LASF134:
	.string	"aes_128_expected_result"
.LASF156:
	.string	"mbedtls_cipher_setup"
.LASF77:
	.string	"MBEDTLS_CIPHER_ARIA_192_CTR"
.LASF116:
	.string	"type"
.LASF3:
	.string	"unsigned char"
.LASF65:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CCM_STAR_NO_TAG"
.LASF17:
	.string	"MBEDTLS_CIPHER_NONE"
.LASF92:
	.string	"MBEDTLS_CIPHER_AES_256_XTS"
.LASF44:
	.string	"MBEDTLS_CIPHER_CAMELLIA_192_CTR"
.LASF158:
	.string	"mbedtls_cipher_init"
.LASF143:
	.string	"des3_2key_subkeys"
.LASF135:
	.string	"aes_192_key"
.LASF107:
	.string	"state"
.LASF147:
	.string	"des3_3key_expected_result"
.LASF100:
	.string	"MBEDTLS_CIPHER_AES_256_KWP"
.LASF119:
	.string	"mbedtls_cipher_context_t"
.LASF193:
	.string	"M_last"
.LASF87:
	.string	"MBEDTLS_CIPHER_ARIA_256_CCM_STAR_NO_TAG"
.LASF128:
	.string	"mbedtls_ct_uint_t"
.LASF164:
	.string	"verbose"
.LASF31:
	.string	"MBEDTLS_CIPHER_AES_128_GCM"
.LASF2:
	.string	"signed char"
.LASF148:
	.string	"PRFK"
.LASF150:
	.string	"PRFM"
.LASF5:
	.string	"short unsigned int"
.LASF151:
	.string	"PRFT"
.LASF159:
	.string	"memcpy"
.LASF54:
	.string	"MBEDTLS_CIPHER_DES_EDE3_CBC"
.LASF205:
	.string	"overflow"
.LASF137:
	.string	"aes_192_expected_result"
.LASF214:
	.string	"mbedtls_cipher_info_get_type"
.LASF79:
	.string	"MBEDTLS_CIPHER_ARIA_128_GCM"
.LASF204:
	.string	"R_128"
.LASF122:
	.string	"add_padding"
.LASF124:
	.string	"unprocessed_data"
.LASF219:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF166:
	.string	"test_aes128_cmac_prf"
.LASF46:
	.string	"MBEDTLS_CIPHER_CAMELLIA_128_GCM"
.LASF33:
	.string	"MBEDTLS_CIPHER_AES_256_GCM"
.LASF163:
	.string	"mbedtls_platform_zeroize"
.LASF26:
	.string	"MBEDTLS_CIPHER_AES_192_CFB128"
.LASF95:
	.string	"MBEDTLS_CIPHER_AES_128_KW"
.LASF132:
	.string	"aes_128_key"
.LASF179:
	.string	"next_test"
.LASF74:
	.string	"MBEDTLS_CIPHER_ARIA_192_CFB128"
.LASF187:
	.string	"mbedtls_cipher_cmac"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/cmac.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
	.globl	__bswapsi2
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
