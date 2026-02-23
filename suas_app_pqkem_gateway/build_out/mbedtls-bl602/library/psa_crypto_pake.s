	.file	"psa_crypto_pake.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_pake.c"
	.section	.text.psa_pake_cipher_suite_init,"ax",@progbits
	.align	1
	.type	psa_pake_cipher_suite_init, @function
psa_pake_cipher_suite_init:
.LFB64:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_extra.h"
	.loc 1 1962 1
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
	.loc 1 1963 42
	sw	zero,-28(s0)
	sb	zero,-24(s0)
	sb	zero,-23(s0)
	sh	zero,-22(s0)
	sw	zero,-20(s0)
	.loc 1 1964 12
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	lw	a4,-20(s0)
	sw	a4,8(a5)
	.loc 1 1965 1
	lw	a0,-36(s0)
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
	.size	psa_pake_cipher_suite_init, .-psa_pake_cipher_suite_init
	.section	.text.mbedtls_ecjpake_to_psa_error,"ax",@progbits
	.align	1
	.type	mbedtls_ecjpake_to_psa_error, @function
mbedtls_ecjpake_to_psa_error:
.LFB77:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_pake.c"
	.loc 2 106 1
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
	.loc 2 107 5
	lw	a4,-20(s0)
	li	a5,-4
	beq	a4,a5,.L4
	lw	a4,-20(s0)
	li	a5,-4
	bgt	a4,a5,.L5
	lw	a4,-20(s0)
	li	a5,-8
	beq	a4,a5,.L6
	lw	a4,-20(s0)
	li	a5,-8
	bgt	a4,a5,.L5
	lw	a4,-20(s0)
	li	a5,-110
	beq	a4,a5,.L7
	lw	a4,-20(s0)
	li	a5,-110
	bgt	a4,a5,.L5
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,896
	beq	a4,a5,.L4
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,896
	bgt	a4,a5,.L5
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,512
	beq	a4,a5,.L4
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,512
	bgt	a4,a5,.L5
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,256
	beq	a4,a5,.L6
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,256
	bgt	a4,a5,.L5
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,-128
	beq	a4,a5,.L8
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,128
	bne	a4,a5,.L5
.L4:
	.loc 2 112 20
	li	a5,-153
	j	.L9
.L6:
	.loc 2 115 20
	li	a5,-138
	j	.L9
.L8:
	.loc 2 117 20
	li	a5,-134
	j	.L9
.L7:
	.loc 2 119 20
	li	a5,-151
	j	.L9
.L5:
	.loc 2 121 20
	li	a5,-132
.L9:
	.loc 2 123 1
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
	.size	mbedtls_ecjpake_to_psa_error, .-mbedtls_ecjpake_to_psa_error
	.section	.text.psa_pake_ecjpake_setup,"ax",@progbits
	.align	1
	.type	psa_pake_ecjpake_setup, @function
psa_pake_ecjpake_setup:
.LFB78:
	.loc 2 129 1
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
	.loc 2 130 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 132 5
	lw	a5,-36(s0)
	addi	a5,a5,360
	mv	a0,a5
	call	mbedtls_ecjpake_init
	.loc 2 134 11
	lw	a5,-36(s0)
	addi	a0,a5,360
	lw	a5,-36(s0)
	lbu	a1,12(a5)
	.loc 2 138 42
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 2 134 11
	lw	a5,-36(s0)
	lw	a5,8(a5)
	li	a3,3
	li	a2,9
	call	mbedtls_ecjpake_setup
	sw	a0,-20(s0)
	.loc 2 141 39
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 2 141 5
	lw	a5,-36(s0)
	lw	a5,8(a5)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_platform_zeroize
	.loc 2 143 8
	lw	a5,-20(s0)
	beq	a5,zero,.L11
	.loc 2 144 16
	lw	a0,-20(s0)
	call	mbedtls_ecjpake_to_psa_error
	mv	a5,a0
	j	.L12
.L11:
	.loc 2 147 12
	li	a5,0
.L12:
	.loc 2 148 1
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
	.size	psa_pake_ecjpake_setup, .-psa_pake_ecjpake_setup
	.section	.srodata.jpake_server_id,"a"
	.align	2
	.type	jpake_server_id, @object
	.size	jpake_server_id, 6
jpake_server_id:
	.ascii	"server"
	.section	.srodata.jpake_client_id,"a"
	.align	2
	.type	jpake_client_id, @object
	.size	jpake_client_id, 6
jpake_client_id:
	.ascii	"client"
	.section	.text.mbedtls_psa_pake_setup,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_pake_setup
	.type	mbedtls_psa_pake_setup, @function
mbedtls_psa_pake_setup:
.LFB79:
	.loc 2 157 1
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
	.loc 2 158 18
	li	a5,-151
	sw	a5,-20(s0)
	.loc 2 159 12
	sw	zero,-36(s0)
	.loc 2 159 26
	sw	zero,-40(s0)
	.loc 2 159 40
	sw	zero,-44(s0)
	.loc 2 160 14
	sw	zero,-24(s0)
	.loc 2 160 27
	sw	zero,-28(s0)
	.loc 2 161 12
	sw	zero,-48(s0)
	.loc 2 161 33
	sw	zero,-52(s0)
	.loc 2 161 54
	sw	zero,-56(s0)
	.loc 2 162 44
	addi	a5,s0,-68
	mv	a0,a5
	call	psa_pake_cipher_suite_init
	.loc 2 164 14
	addi	a5,s0,-44
	mv	a1,a5
	lw	a0,-88(s0)
	call	psa_crypto_driver_pake_get_password_len
	sw	a0,-20(s0)
	.loc 2 165 8
	lw	a5,-20(s0)
	beq	a5,zero,.L14
	.loc 2 166 16
	lw	a5,-20(s0)
	j	.L35
.L14:
	.loc 2 169 14
	addi	a5,s0,-36
	mv	a1,a5
	lw	a0,-88(s0)
	call	psa_crypto_driver_pake_get_user_len
	sw	a0,-20(s0)
	.loc 2 170 8
	lw	a5,-20(s0)
	beq	a5,zero,.L16
	.loc 2 171 16
	lw	a5,-20(s0)
	j	.L35
.L16:
	.loc 2 174 14
	addi	a5,s0,-40
	mv	a1,a5
	lw	a0,-88(s0)
	call	psa_crypto_driver_pake_get_peer_len
	sw	a0,-20(s0)
	.loc 2 175 8
	lw	a5,-20(s0)
	beq	a5,zero,.L17
	.loc 2 176 16
	lw	a5,-20(s0)
	j	.L35
.L17:
	.loc 2 179 14
	addi	a5,s0,-68
	mv	a1,a5
	lw	a0,-88(s0)
	call	psa_crypto_driver_pake_get_cipher_suite
	sw	a0,-20(s0)
	.loc 2 180 8
	lw	a5,-20(s0)
	beq	a5,zero,.L18
	.loc 2 181 16
	lw	a5,-20(s0)
	j	.L35
.L18:
	.loc 2 184 27
	lw	a5,-44(s0)
	mv	a1,a5
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 2 184 25 discriminator 1
	lw	a5,-84(s0)
	sw	a4,4(a5)
	.loc 2 185 18
	lw	a5,-84(s0)
	lw	a5,4(a5)
	.loc 2 185 8
	bne	a5,zero,.L19
	.loc 2 186 16
	li	a5,-141
	sw	a5,-20(s0)
	.loc 2 187 9
	j	.L20
.L19:
	.loc 2 190 12
	lw	a5,-36(s0)
	mv	a1,a5
	li	a0,1
	call	calloc
	mv	a5,a0
	sw	a5,-28(s0)
	.loc 2 191 8
	lw	a5,-28(s0)
	bne	a5,zero,.L21
	.loc 2 192 16
	li	a5,-141
	sw	a5,-20(s0)
	.loc 2 193 9
	j	.L20
.L21:
	.loc 2 196 12
	lw	a5,-40(s0)
	mv	a1,a5
	li	a0,1
	call	calloc
	mv	a5,a0
	sw	a5,-24(s0)
	.loc 2 197 8
	lw	a5,-24(s0)
	bne	a5,zero,.L22
	.loc 2 198 16
	li	a5,-141
	sw	a5,-20(s0)
	.loc 2 199 9
	j	.L20
.L22:
	.loc 2 202 14
	lw	a5,-84(s0)
	lw	a5,4(a5)
	lw	a4,-44(s0)
	addi	a3,s0,-56
	mv	a2,a4
	mv	a1,a5
	lw	a0,-88(s0)
	call	psa_crypto_driver_pake_get_password
	sw	a0,-20(s0)
	.loc 2 204 8
	lw	a5,-20(s0)
	bne	a5,zero,.L36
	.loc 2 208 14
	lw	a5,-36(s0)
	addi	a4,s0,-48
	mv	a3,a4
	mv	a2,a5
	lw	a1,-28(s0)
	lw	a0,-88(s0)
	call	psa_crypto_driver_pake_get_user
	sw	a0,-20(s0)
	.loc 2 210 8
	lw	a5,-20(s0)
	bne	a5,zero,.L37
	.loc 2 214 14
	lw	a5,-40(s0)
	addi	a4,s0,-52
	mv	a3,a4
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-88(s0)
	call	psa_crypto_driver_pake_get_peer
	sw	a0,-20(s0)
	.loc 2 216 8
	lw	a5,-20(s0)
	bne	a5,zero,.L38
	.loc 2 220 29
	lw	a4,-56(s0)
	lw	a5,-84(s0)
	sw	a4,8(a5)
	.loc 2 221 34
	lw	a4,-68(s0)
	.loc 2 221 20
	lw	a5,-84(s0)
	sw	a4,0(a5)
	.loc 2 224 21
	lw	a4,-68(s0)
	.loc 2 224 8
	li	a5,167772160
	addi	a5,a5,256
	bne	a4,a5,.L26
.LBB2:
	.loc 2 225 25
	lbu	a4,-64(s0)
	.loc 2 225 12
	li	a5,1
	bne	a4,a5,.L27
	.loc 2 226 25
	lbu	a4,-63(s0)
	.loc 2 225 69 discriminator 1
	li	a5,18
	bne	a4,a5,.L27
	.loc 2 227 25
	lhu	a4,-62(s0)
	.loc 2 226 62
	li	a5,256
	bne	a4,a5,.L27
	.loc 2 228 25
	lw	a4,-60(s0)
	.loc 2 227 38
	li	a5,33554432
	addi	a5,a5,9
	beq	a4,a5,.L28
.L27:
	.loc 2 229 20
	li	a5,-134
	sw	a5,-20(s0)
	.loc 2 230 13
	j	.L20
.L28:
	.loc 2 233 22
	li	a5,6
	sw	a5,-32(s0)
	.loc 2 234 29
	lw	a5,-48(s0)
	.loc 2 234 12
	lw	a4,-32(s0)
	bne	a4,a5,.L29
	.loc 2 235 29
	lw	a5,-52(s0)
	.loc 2 234 46 discriminator 1
	lw	a4,-32(s0)
	beq	a4,a5,.L30
.L29:
	.loc 2 236 20
	li	a5,-134
	sw	a5,-20(s0)
	.loc 2 237 13
	j	.L20
.L30:
	.loc 2 240 13
	lw	a5,-48(s0)
	mv	a2,a5
	lui	a5,%hi(jpake_client_id)
	addi	a1,a5,%lo(jpake_client_id)
	lw	a0,-28(s0)
	call	memcmp
	mv	a5,a0
	.loc 2 240 12 discriminator 1
	bne	a5,zero,.L31
	.loc 2 241 13
	lw	a5,-52(s0)
	mv	a2,a5
	lui	a5,%hi(jpake_server_id)
	addi	a1,a5,%lo(jpake_server_id)
	lw	a0,-24(s0)
	call	memcmp
	mv	a5,a0
	.loc 2 240 65 discriminator 2
	bne	a5,zero,.L31
	.loc 2 242 29
	lw	a5,-84(s0)
	sb	zero,12(a5)
	j	.L32
.L31:
	.loc 2 244 13
	lw	a5,-48(s0)
	mv	a2,a5
	lui	a5,%hi(jpake_server_id)
	addi	a1,a5,%lo(jpake_server_id)
	lw	a0,-28(s0)
	call	memcmp
	mv	a5,a0
	.loc 2 244 12 discriminator 1
	bne	a5,zero,.L33
	.loc 2 245 13
	lw	a5,-52(s0)
	mv	a2,a5
	lui	a5,%hi(jpake_client_id)
	addi	a1,a5,%lo(jpake_client_id)
	lw	a0,-24(s0)
	call	memcmp
	mv	a5,a0
	.loc 2 244 65 discriminator 2
	bne	a5,zero,.L33
	.loc 2 246 29
	lw	a5,-84(s0)
	li	a4,1
	sb	a4,12(a5)
	j	.L32
.L33:
	.loc 2 248 20
	li	a5,-134
	sw	a5,-20(s0)
	.loc 2 249 13
	j	.L20
.L32:
	.loc 2 252 34
	lw	a5,-84(s0)
	sw	zero,352(a5)
	.loc 2 253 34
	lw	a5,-84(s0)
	sw	zero,356(a5)
	.loc 2 255 18
	lw	a0,-84(s0)
	call	psa_pake_ecjpake_setup
	sw	a0,-20(s0)
	.loc 2 256 12
	lw	a5,-20(s0)
	bne	a5,zero,.L39
	.loc 2 261 9
	lw	a0,-28(s0)
	call	free
	.loc 2 261 21 discriminator 1
	lw	a0,-24(s0)
	call	free
	.loc 2 263 16
	li	a5,0
	j	.L35
.L26:
.LBE2:
	.loc 2 269 14
	li	a5,-134
	sw	a5,-20(s0)
	j	.L20
.L36:
	.loc 2 205 9
	nop
	j	.L20
.L37:
	.loc 2 211 9
	nop
	j	.L20
.L38:
	.loc 2 217 9
	nop
	j	.L20
.L39:
.LBB3:
	.loc 2 257 13
	nop
.L20:
.LBE3:
	.loc 2 272 5
	lw	a0,-28(s0)
	call	free
	.loc 2 272 17 discriminator 1
	lw	a0,-24(s0)
	call	free
	.loc 2 278 5
	lw	a0,-84(s0)
	call	mbedtls_psa_pake_abort
	.loc 2 279 12
	lw	a5,-20(s0)
.L35:
	.loc 2 280 1
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
.LFE79:
	.size	mbedtls_psa_pake_setup, .-mbedtls_psa_pake_setup
	.section	.text.mbedtls_psa_pake_output_internal,"ax",@progbits
	.align	1
	.type	mbedtls_psa_pake_output_internal, @function
mbedtls_psa_pake_output_internal:
.LFB80:
	.loc 2 288 1
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
	mv	a5,a1
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sb	a5,-37(s0)
	.loc 2 289 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 308 18
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 308 8
	li	a5,167772160
	addi	a5,a5,256
	bne	a4,a5,.L41
	.loc 2 310 12
	lbu	a4,-37(s0)
	li	a5,1
	bne	a4,a5,.L42
	.loc 2 311 19
	lw	a5,-36(s0)
	addi	a0,a5,360
	.loc 2 312 60
	lw	a5,-36(s0)
	addi	a1,a5,13
	.loc 2 311 19
	lw	a5,-36(s0)
	addi	a3,a5,352
	li	a5,0
	lui	a4,%hi(mbedtls_psa_get_random)
	addi	a4,a4,%lo(mbedtls_psa_get_random)
	li	a2,336
	call	mbedtls_ecjpake_write_round_one
	sw	a0,-20(s0)
	.loc 2 317 16
	lw	a5,-20(s0)
	beq	a5,zero,.L43
	.loc 2 318 24
	lw	a0,-20(s0)
	call	mbedtls_ecjpake_to_psa_error
	mv	a5,a0
	j	.L44
.L43:
	.loc 2 321 38
	lw	a5,-36(s0)
	sw	zero,356(a5)
	j	.L45
.L42:
	.loc 2 322 19
	lbu	a4,-37(s0)
	li	a5,7
	bne	a4,a5,.L45
	.loc 2 323 19
	lw	a5,-36(s0)
	addi	a0,a5,360
	.loc 2 324 60
	lw	a5,-36(s0)
	addi	a1,a5,13
	.loc 2 323 19
	lw	a5,-36(s0)
	addi	a3,a5,352
	li	a5,0
	lui	a4,%hi(mbedtls_psa_get_random)
	addi	a4,a4,%lo(mbedtls_psa_get_random)
	li	a2,336
	call	mbedtls_ecjpake_write_round_two
	sw	a0,-20(s0)
	.loc 2 329 16
	lw	a5,-20(s0)
	beq	a5,zero,.L46
	.loc 2 330 24
	lw	a0,-20(s0)
	call	mbedtls_ecjpake_to_psa_error
	mv	a5,a0
	j	.L44
.L46:
	.loc 2 333 38
	lw	a5,-36(s0)
	sw	zero,356(a5)
.L45:
	.loc 2 347 12
	lbu	a4,-37(s0)
	li	a5,7
	bne	a4,a5,.L47
	.loc 2 348 22
	lw	a5,-36(s0)
	lbu	a4,12(a5)
	.loc 2 347 50 discriminator 1
	li	a5,1
	bne	a4,a5,.L47
	.loc 2 350 22
	lw	a5,-36(s0)
	lw	a5,356(a5)
	.loc 2 350 38
	addi	a4,a5,3
	lw	a5,-36(s0)
	sw	a4,356(a5)
.L47:
	.loc 2 354 45
	lw	a5,-36(s0)
	lw	a5,356(a5)
	.loc 2 354 35
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a5,13(a5)
	.loc 2 354 16
	sw	a5,-24(s0)
	.loc 2 355 18
	lw	a5,-36(s0)
	lw	a5,356(a5)
	.loc 2 355 34
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,356(a5)
	.loc 2 357 22
	lw	a5,-36(s0)
	lw	a4,356(a5)
	.loc 2 357 38
	lw	a5,-24(s0)
	add	a4,a4,a5
	.loc 2 357 58
	lw	a5,-36(s0)
	lw	a5,352(a5)
	.loc 2 357 12
	bleu	a4,a5,.L48
	.loc 2 358 20
	li	a5,-152
	j	.L44
.L48:
	.loc 2 361 12
	lw	a4,-48(s0)
	lw	a5,-24(s0)
	bgeu	a4,a5,.L49
	.loc 2 362 20
	li	a5,-138
	j	.L44
.L49:
	.loc 2 366 16
	lw	a5,-36(s0)
	addi	a4,a5,13
	.loc 2 366 45
	lw	a5,-36(s0)
	lw	a5,356(a5)
	.loc 2 365 9
	add	a5,a4,a5
	lw	a2,-24(s0)
	mv	a1,a5
	lw	a0,-44(s0)
	call	memcpy
	.loc 2 368 24
	lw	a5,-52(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 2 370 18
	lw	a5,-36(s0)
	lw	a4,356(a5)
	.loc 2 370 34
	lw	a5,-24(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,356(a5)
	.loc 2 373 12
	lbu	a4,-37(s0)
	li	a5,6
	beq	a4,a5,.L50
	.loc 2 373 50 discriminator 1
	lbu	a4,-37(s0)
	li	a5,9
	bne	a4,a5,.L51
.L50:
	.loc 2 375 47
	lw	a5,-36(s0)
	addi	a5,a5,13
	.loc 2 375 13
	li	a1,336
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 2 376 38
	lw	a5,-36(s0)
	sw	zero,352(a5)
	.loc 2 377 38
	lw	a5,-36(s0)
	sw	zero,356(a5)
.L51:
	.loc 2 380 16
	li	a5,0
	j	.L44
.L41:
	.loc 2 388 14
	li	a5,-134
.L44:
	.loc 2 389 1
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
.LFE80:
	.size	mbedtls_psa_pake_output_internal, .-mbedtls_psa_pake_output_internal
	.section	.text.mbedtls_psa_pake_output,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_pake_output
	.type	mbedtls_psa_pake_output, @function
mbedtls_psa_pake_output:
.LFB81:
	.loc 2 396 1
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
	mv	a5,a1
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sb	a5,-37(s0)
	.loc 2 397 27
	lbu	a5,-37(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_psa_pake_output_internal
	sw	a0,-20(s0)
	.loc 2 400 12
	lw	a5,-20(s0)
	.loc 2 401 1
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
.LFE81:
	.size	mbedtls_psa_pake_output, .-mbedtls_psa_pake_output
	.section	.text.mbedtls_psa_pake_input_internal,"ax",@progbits
	.align	1
	.type	mbedtls_psa_pake_input_internal, @function
mbedtls_psa_pake_input_internal:
.LFB82:
	.loc 2 408 1
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
	mv	a5,a1
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sb	a5,-37(s0)
	.loc 2 409 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 428 18
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 428 8
	li	a5,167772160
	addi	a5,a5,256
	bne	a4,a5,.L55
	.loc 2 438 12
	lbu	a4,-37(s0)
	li	a5,10
	bne	a4,a5,.L56
	.loc 2 439 22
	lw	a5,-36(s0)
	lbu	a5,12(a5)
	.loc 2 438 50 discriminator 1
	bne	a5,zero,.L56
.LBB4:
	.loc 2 442 27
	li	a5,3
	sh	a5,-24(s0)
	li	a5,23
	sb	a5,-22(s0)
	.loc 2 447 26
	lw	a5,-36(s0)
	lw	a5,352(a5)
	.loc 2 447 42
	addi	a4,a5,3
	.loc 2 447 16
	li	a5,336
	bleu	a4,a5,.L57
	.loc 2 449 24
	li	a5,-138
	j	.L58
.L57:
	.loc 2 452 20
	lw	a5,-36(s0)
	addi	a4,a5,13
	.loc 2 452 49
	lw	a5,-36(s0)
	lw	a5,352(a5)
	.loc 2 452 13
	add	a5,a4,a5
	addi	a4,s0,-24
	li	a2,3
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 2 454 22
	lw	a5,-36(s0)
	lw	a5,352(a5)
	.loc 2 454 38
	addi	a4,a5,3
	lw	a5,-36(s0)
	sw	a4,352(a5)
.L56:
.LBE4:
	.loc 2 462 22
	lw	a5,-36(s0)
	lw	a4,352(a5)
	.loc 2 462 38
	lw	a5,-48(s0)
	add	a5,a4,a5
	.loc 2 462 53
	addi	a4,a5,1
	.loc 2 462 12
	li	a5,336
	bleu	a4,a5,.L59
	.loc 2 463 20
	li	a5,-138
	j	.L58
.L59:
	.loc 2 467 36
	lw	a5,-36(s0)
	lw	a5,352(a5)
	.loc 2 467 55
	lw	a4,-48(s0)
	andi	a4,a4,0xff
	.loc 2 467 53
	lw	a3,-36(s0)
	add	a5,a3,a5
	sb	a4,13(a5)
	.loc 2 468 18
	lw	a5,-36(s0)
	lw	a5,352(a5)
	.loc 2 468 34
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,352(a5)
	.loc 2 471 16
	lw	a5,-36(s0)
	addi	a4,a5,13
	.loc 2 471 45
	lw	a5,-36(s0)
	lw	a5,352(a5)
	.loc 2 471 9
	add	a5,a4,a5
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	mv	a0,a5
	call	memcpy
	.loc 2 473 18
	lw	a5,-36(s0)
	lw	a4,352(a5)
	.loc 2 473 34
	lw	a5,-48(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,352(a5)
	.loc 2 476 12
	lbu	a4,-37(s0)
	li	a5,6
	bne	a4,a5,.L60
	.loc 2 477 19
	lw	a5,-36(s0)
	addi	a4,a5,360
	.loc 2 478 59
	lw	a5,-36(s0)
	addi	a3,a5,13
	.loc 2 477 19
	lw	a5,-36(s0)
	lw	a5,352(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	mbedtls_ecjpake_read_round_one
	sw	a0,-20(s0)
	.loc 2 481 47
	lw	a5,-36(s0)
	addi	a5,a5,13
	.loc 2 481 13
	li	a1,336
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 2 482 38
	lw	a5,-36(s0)
	sw	zero,352(a5)
	.loc 2 484 16
	lw	a5,-20(s0)
	beq	a5,zero,.L61
	.loc 2 485 24
	lw	a0,-20(s0)
	call	mbedtls_ecjpake_to_psa_error
	mv	a5,a0
	j	.L58
.L60:
	.loc 2 487 19
	lbu	a4,-37(s0)
	li	a5,12
	bne	a4,a5,.L61
	.loc 2 488 19
	lw	a5,-36(s0)
	addi	a4,a5,360
	.loc 2 489 59
	lw	a5,-36(s0)
	addi	a3,a5,13
	.loc 2 488 19
	lw	a5,-36(s0)
	lw	a5,352(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	mbedtls_ecjpake_read_round_two
	sw	a0,-20(s0)
	.loc 2 492 47
	lw	a5,-36(s0)
	addi	a5,a5,13
	.loc 2 492 13
	li	a1,336
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 2 493 38
	lw	a5,-36(s0)
	sw	zero,352(a5)
	.loc 2 495 16
	lw	a5,-20(s0)
	beq	a5,zero,.L61
	.loc 2 496 24
	lw	a0,-20(s0)
	call	mbedtls_ecjpake_to_psa_error
	mv	a5,a0
	j	.L58
.L61:
	.loc 2 500 16
	li	a5,0
	j	.L58
.L55:
	.loc 2 507 14
	li	a5,-134
.L58:
	.loc 2 508 1
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
.LFE82:
	.size	mbedtls_psa_pake_input_internal, .-mbedtls_psa_pake_input_internal
	.section	.text.mbedtls_psa_pake_input,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_pake_input
	.type	mbedtls_psa_pake_input, @function
mbedtls_psa_pake_input:
.LFB83:
	.loc 2 514 1
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
	mv	a5,a1
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sb	a5,-37(s0)
	.loc 2 515 27
	lbu	a5,-37(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_psa_pake_input_internal
	sw	a0,-20(s0)
	.loc 2 518 12
	lw	a5,-20(s0)
	.loc 2 519 1
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
	.size	mbedtls_psa_pake_input, .-mbedtls_psa_pake_input
	.section	.text.mbedtls_psa_pake_get_implicit_key,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_pake_get_implicit_key
	.type	mbedtls_psa_pake_get_implicit_key, @function
mbedtls_psa_pake_get_implicit_key:
.LFB84:
	.loc 2 525 1
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
	.loc 2 526 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 529 18
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 529 8
	li	a5,167772160
	addi	a5,a5,256
	bne	a4,a5,.L65
	.loc 2 530 15
	lw	a5,-36(s0)
	addi	a0,a5,360
	li	a5,0
	lui	a4,%hi(mbedtls_psa_get_random)
	addi	a4,a4,%lo(mbedtls_psa_get_random)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	call	mbedtls_ecjpake_write_shared_key
	sw	a0,-20(s0)
	.loc 2 536 12
	lw	a5,-20(s0)
	beq	a5,zero,.L66
	.loc 2 537 20
	lw	a0,-20(s0)
	call	mbedtls_ecjpake_to_psa_error
	mv	a5,a0
	j	.L67
.L66:
	.loc 2 540 16
	li	a5,0
	j	.L67
.L65:
	.loc 2 545 14
	li	a5,-134
.L67:
	.loc 2 546 1
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
	.size	mbedtls_psa_pake_get_implicit_key, .-mbedtls_psa_pake_get_implicit_key
	.section	.text.mbedtls_psa_pake_abort,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_pake_abort
	.type	mbedtls_psa_pake_abort, @function
mbedtls_psa_pake_abort:
.LFB85:
	.loc 2 549 1
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
	.loc 2 550 39
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 2 550 5
	lw	a5,-20(s0)
	lw	a5,8(a5)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_zeroize_and_free
	.loc 2 551 25
	lw	a5,-20(s0)
	sw	zero,4(a5)
	.loc 2 552 29
	lw	a5,-20(s0)
	sw	zero,8(a5)
	.loc 2 555 18
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 555 8
	li	a5,167772160
	addi	a5,a5,256
	bne	a4,a5,.L69
	.loc 2 556 25
	lw	a5,-20(s0)
	li	a4,2
	sb	a4,12(a5)
	.loc 2 557 43
	lw	a5,-20(s0)
	addi	a5,a5,13
	.loc 2 557 9
	li	a1,336
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 2 558 34
	lw	a5,-20(s0)
	sw	zero,352(a5)
	.loc 2 559 34
	lw	a5,-20(s0)
	sw	zero,356(a5)
	.loc 2 560 9
	lw	a5,-20(s0)
	addi	a5,a5,360
	mv	a0,a5
	call	mbedtls_ecjpake_free
.L69:
	.loc 2 564 20
	lw	a5,-20(s0)
	sw	zero,0(a5)
	.loc 2 566 12
	li	a5,0
	.loc 2 567 1
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
.LFE85:
	.size	mbedtls_psa_pake_abort, .-mbedtls_psa_pake_abort
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_types.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_struct.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecp.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecjpake.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_builtin_composites.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/common.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/psa_util.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe84
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1f
	.4byte	.LASF170
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL1
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xe
	.4byte	0x32
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x20
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0xe
	.4byte	0x76
	.uleb128 0xb
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0xe
	.4byte	0x9a
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0x45
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x21
	.byte	0x4
	.uleb128 0x1a
	.4byte	0xc3
	.uleb128 0x7
	.4byte	0x32
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x15
	.4byte	0x32
	.4byte	0xe6
	.uleb128 0x1b
	.4byte	0x6f
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	0xf0
	.uleb128 0x1a
	.4byte	0xe6
	.uleb128 0x22
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x5
	.byte	0x3b
	.byte	0x11
	.4byte	0x8e
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x5
	.byte	0x4e
	.byte	0x12
	.4byte	0xab
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x5
	.byte	0x61
	.byte	0x11
	.4byte	0x9a
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x5
	.byte	0x86
	.byte	0x12
	.4byte	0xb7
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x5
	.byte	0xb7
	.byte	0x12
	.4byte	0xb7
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x113
	.byte	0x12
	.4byte	0xb7
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x124
	.byte	0x16
	.4byte	0x12d
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x143
	.byte	0x12
	.4byte	0xb7
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x1b0
	.byte	0x25
	.4byte	0x161
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x18
	.byte	0x6
	.2byte	0x127
	.4byte	0x1b4
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x12c
	.byte	0x14
	.4byte	0xfd
	.byte	0
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x12d
	.byte	0x14
	.4byte	0x60c
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x12e
	.byte	0x18
	.4byte	0x121
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x12f
	.byte	0x16
	.4byte	0x5ff
	.byte	0x8
	.uleb128 0x16
	.string	"id"
	.byte	0x6
	.2byte	0x13b
	.byte	0x1a
	.4byte	0x13a
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x7
	.byte	0xd1
	.byte	0xd
	.4byte	0x1c0
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x1d9
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0xca
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x7
	.4byte	0x76
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x8
	.byte	0xaa
	.byte	0x12
	.4byte	0xb7
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x8
	.byte	0x8
	.byte	0xd0
	.4byte	0x218
	.uleb128 0x3
	.string	"p"
	.byte	0x8
	.byte	0xd5
	.byte	0x17
	.4byte	0x218
	.byte	0
	.uleb128 0x3
	.string	"s"
	.byte	0x8
	.byte	0xe2
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x3
	.string	"n"
	.byte	0x8
	.byte	0xe5
	.byte	0x14
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.4byte	0x1de
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x8
	.byte	0xf0
	.byte	0x1
	.4byte	0x1ea
	.uleb128 0x18
	.4byte	0x32
	.byte	0x9
	.byte	0x66
	.4byte	0x289
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x9
	.byte	0x75
	.byte	0x3
	.4byte	0x229
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x18
	.byte	0x9
	.byte	0x9e
	.4byte	0x2c3
	.uleb128 0x3
	.string	"X"
	.byte	0x9
	.byte	0x9f
	.byte	0x11
	.4byte	0x21d
	.byte	0
	.uleb128 0x3
	.string	"Y"
	.byte	0x9
	.byte	0xa0
	.byte	0x11
	.4byte	0x21d
	.byte	0x8
	.uleb128 0x3
	.string	"Z"
	.byte	0x9
	.byte	0xa1
	.byte	0x11
	.4byte	0x21d
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x9
	.byte	0xa3
	.byte	0x1
	.4byte	0x295
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x60
	.byte	0x9
	.byte	0xe9
	.4byte	0x393
	.uleb128 0x3
	.string	"id"
	.byte	0x9
	.byte	0xea
	.byte	0x1a
	.4byte	0x289
	.byte	0
	.uleb128 0x3
	.string	"P"
	.byte	0x9
	.byte	0xeb
	.byte	0x11
	.4byte	0x21d
	.byte	0x4
	.uleb128 0x3
	.string	"A"
	.byte	0x9
	.byte	0xec
	.byte	0x11
	.4byte	0x21d
	.byte	0xc
	.uleb128 0x3
	.string	"B"
	.byte	0x9
	.byte	0xf1
	.byte	0x11
	.4byte	0x21d
	.byte	0x14
	.uleb128 0x3
	.string	"G"
	.byte	0x9
	.byte	0xf3
	.byte	0x17
	.4byte	0x2c3
	.byte	0x1c
	.uleb128 0x3
	.string	"N"
	.byte	0x9
	.byte	0xf4
	.byte	0x11
	.4byte	0x21d
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x9
	.byte	0xf5
	.byte	0xc
	.4byte	0x76
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x9
	.byte	0xf6
	.byte	0xc
	.4byte	0x76
	.byte	0x40
	.uleb128 0x3
	.string	"h"
	.byte	0x9
	.byte	0xfb
	.byte	0x12
	.4byte	0x6f
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x9
	.byte	0xfc
	.byte	0xa
	.4byte	0x3a7
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x9
	.byte	0xfe
	.byte	0xa
	.4byte	0x3c5
	.byte	0x4c
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x9
	.byte	0xff
	.byte	0xa
	.4byte	0x3c5
	.byte	0x50
	.uleb128 0x5
	.4byte	.LASF57
	.byte	0x9
	.2byte	0x100
	.byte	0xb
	.4byte	0xc3
	.byte	0x54
	.uleb128 0x16
	.string	"T"
	.byte	0x9
	.2byte	0x101
	.byte	0x18
	.4byte	0x3c0
	.byte	0x58
	.uleb128 0x5
	.4byte	.LASF58
	.byte	0x9
	.2byte	0x102
	.byte	0xc
	.4byte	0x76
	.byte	0x5c
	.byte	0
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x3a2
	.uleb128 0x1
	.4byte	0x3a2
	.byte	0
	.uleb128 0x7
	.4byte	0x21d
	.uleb128 0x7
	.4byte	0x393
	.uleb128 0x17
	.4byte	0x68
	.4byte	0x3c0
	.uleb128 0x1
	.4byte	0x3c0
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x7
	.4byte	0x2c3
	.uleb128 0x7
	.4byte	0x3ac
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x9
	.2byte	0x104
	.byte	0x1
	.4byte	0x2cf
	.uleb128 0x18
	.4byte	0x32
	.byte	0xa
	.byte	0x2f
	.4byte	0x42b
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x11
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0x12
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.4byte	.LASF71
	.byte	0xa
	.byte	0x3c
	.byte	0x3
	.4byte	0x3d7
	.uleb128 0x18
	.4byte	0x32
	.byte	0xb
	.byte	0x2a
	.4byte	0x455
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF75
	.byte	0xb
	.byte	0x2e
	.byte	0x3
	.4byte	0x437
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0xfc
	.byte	0xb
	.byte	0x3c
	.4byte	0x507
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0xb
	.byte	0x3d
	.byte	0x17
	.4byte	0x42b
	.byte	0
	.uleb128 0x3
	.string	"grp"
	.byte	0xb
	.byte	0x3e
	.byte	0x17
	.4byte	0x3ca
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0xb
	.byte	0x3f
	.byte	0x1a
	.4byte	0x455
	.byte	0x64
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0xb
	.byte	0x40
	.byte	0x9
	.4byte	0x68
	.byte	0x68
	.uleb128 0x3
	.string	"Xm1"
	.byte	0xb
	.byte	0x42
	.byte	0x17
	.4byte	0x2c3
	.byte	0x6c
	.uleb128 0x3
	.string	"Xm2"
	.byte	0xb
	.byte	0x43
	.byte	0x17
	.4byte	0x2c3
	.byte	0x84
	.uleb128 0x3
	.string	"Xp1"
	.byte	0xb
	.byte	0x44
	.byte	0x17
	.4byte	0x2c3
	.byte	0x9c
	.uleb128 0x3
	.string	"Xp2"
	.byte	0xb
	.byte	0x45
	.byte	0x17
	.4byte	0x2c3
	.byte	0xb4
	.uleb128 0x3
	.string	"Xp"
	.byte	0xb
	.byte	0x46
	.byte	0x17
	.4byte	0x2c3
	.byte	0xcc
	.uleb128 0x3
	.string	"xm1"
	.byte	0xb
	.byte	0x48
	.byte	0x11
	.4byte	0x21d
	.byte	0xe4
	.uleb128 0x3
	.string	"xm2"
	.byte	0xb
	.byte	0x49
	.byte	0x11
	.4byte	0x21d
	.byte	0xec
	.uleb128 0x3
	.string	"s"
	.byte	0xb
	.byte	0x4b
	.byte	0x11
	.4byte	0x21d
	.byte	0xf4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF76
	.byte	0xb
	.byte	0x4c
	.byte	0x3
	.4byte	0x461
	.uleb128 0x23
	.byte	0xfc
	.byte	0xc
	.byte	0xcb
	.byte	0x5
	.4byte	0x533
	.uleb128 0x1c
	.4byte	.LASF80
	.byte	0xcc
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x1c
	.4byte	.LASF81
	.byte	0xce
	.byte	0x21
	.4byte	0x507
	.byte	0
	.uleb128 0x24
	.2byte	0x264
	.byte	0xc
	.byte	0xbf
	.byte	0x9
	.4byte	0x5a5
	.uleb128 0x3
	.string	"alg"
	.byte	0xc
	.byte	0xc0
	.byte	0x15
	.4byte	0x115
	.byte	0
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0xc
	.byte	0xc2
	.byte	0xe
	.4byte	0x5a5
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0xc
	.byte	0xc3
	.byte	0xc
	.4byte	0x76
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0xc
	.byte	0xc5
	.byte	0x1a
	.4byte	0x455
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0xc
	.byte	0xc6
	.byte	0xd
	.4byte	0x5aa
	.byte	0xd
	.uleb128 0x1d
	.4byte	.LASF85
	.byte	0xc7
	.4byte	0x76
	.2byte	0x160
	.uleb128 0x1d
	.4byte	.LASF86
	.byte	0xc8
	.4byte	0x76
	.2byte	0x164
	.uleb128 0x25
	.string	"ctx"
	.byte	0xc
	.byte	0xd0
	.byte	0x7
	.4byte	0x513
	.2byte	0x168
	.byte	0
	.uleb128 0x7
	.4byte	0x9a
	.uleb128 0x15
	.4byte	0x9a
	.4byte	0x5bb
	.uleb128 0x26
	.4byte	0x6f
	.2byte	0x14f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF87
	.byte	0xc
	.byte	0xd2
	.byte	0x3
	.4byte	0x533
	.uleb128 0xf
	.4byte	.LASF88
	.byte	0xc
	.byte	0x6
	.2byte	0x10c
	.4byte	0x5ff
	.uleb128 0x5
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x10d
	.byte	0x15
	.4byte	0x147
	.byte	0
	.uleb128 0x16
	.string	"alg"
	.byte	0x6
	.2byte	0x10e
	.byte	0x15
	.4byte	0x115
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x10f
	.byte	0x15
	.4byte	0x115
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x111
	.byte	0x21
	.4byte	0x5c7
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x11c
	.byte	0x12
	.4byte	0xab
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x32f
	.byte	0x11
	.4byte	0x9a
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x336
	.byte	0x11
	.4byte	0x9a
	.uleb128 0xf
	.4byte	.LASF95
	.byte	0xc
	.byte	0x1
	.2byte	0x43c
	.4byte	0x687
	.uleb128 0x5
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x43d
	.byte	0x15
	.4byte	0x115
	.byte	0
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x43e
	.byte	0x1f
	.4byte	0x619
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x43f
	.byte	0x17
	.4byte	0x626
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x440
	.byte	0xe
	.4byte	0xab
	.byte	0x6
	.uleb128 0x5
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x441
	.byte	0x15
	.4byte	0x115
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.4byte	0x633
	.uleb128 0xf
	.4byte	.LASF99
	.byte	0x3c
	.byte	0x1
	.2byte	0x444
	.4byte	0x70a
	.uleb128 0x5
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x445
	.byte	0xe
	.4byte	0x5a5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x446
	.byte	0xc
	.4byte	0x76
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x447
	.byte	0xe
	.4byte	0x5a5
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x448
	.byte	0xc
	.4byte	0x76
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x449
	.byte	0xe
	.4byte	0x5a5
	.byte	0x10
	.uleb128 0x5
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x44a
	.byte	0xc
	.4byte	0x76
	.byte	0x14
	.uleb128 0x5
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x44b
	.byte	0x1a
	.4byte	0x154
	.byte	0x18
	.uleb128 0x5
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x44c
	.byte	0x24
	.4byte	0x633
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LASF171
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x1
	.2byte	0x44f
	.byte	0xe
	.4byte	0x76c
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF112
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF115
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x45d
	.byte	0x3
	.4byte	0x70a
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x4a6
	.byte	0x28
	.4byte	0x633
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x52e
	.byte	0x30
	.4byte	0x68c
	.uleb128 0xe
	.4byte	0x786
	.uleb128 0x7
	.4byte	0xa6
	.uleb128 0x15
	.4byte	0xa6
	.4byte	0x7ad
	.uleb128 0x1b
	.4byte	0x6f
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.4byte	0x79d
	.uleb128 0x8
	.4byte	.LASF122
	.byte	0x98
	.byte	0x16
	.4byte	0x7ad
	.uleb128 0x5
	.byte	0x3
	.4byte	jpake_server_id
	.uleb128 0x8
	.4byte	.LASF123
	.byte	0x99
	.byte	0x16
	.4byte	0x7ad
	.uleb128 0x5
	.byte	0x3
	.4byte	jpake_client_id
	.uleb128 0x28
	.4byte	.LASF124
	.byte	0xb
	.2byte	0x118
	.byte	0x6
	.4byte	0x7e7
	.uleb128 0x1
	.4byte	0x7e7
	.byte	0
	.uleb128 0x7
	.4byte	0x507
	.uleb128 0x11
	.4byte	.LASF125
	.byte	0xd
	.byte	0x79
	.4byte	0x802
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xd
	.4byte	.LASF126
	.byte	0xb
	.2byte	0x10b
	.byte	0x5
	.4byte	0x68
	.4byte	0x832
	.uleb128 0x1
	.4byte	0x7e7
	.uleb128 0x1
	.4byte	0xca
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x1d9
	.uleb128 0x1
	.4byte	0x832
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x7
	.4byte	0x1b4
	.uleb128 0xc
	.4byte	.LASF127
	.byte	0xb
	.byte	0xde
	.byte	0x5
	.4byte	0x68
	.4byte	0x857
	.uleb128 0x1
	.4byte	0x7e7
	.uleb128 0x1
	.4byte	0x857
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x7
	.4byte	0x39
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0xb
	.byte	0xb6
	.byte	0x5
	.4byte	0x68
	.4byte	0x87c
	.uleb128 0x1
	.4byte	0x7e7
	.uleb128 0x1
	.4byte	0x857
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0xe
	.byte	0x1f
	.byte	0x8
	.4byte	0xc3
	.4byte	0x89c
	.uleb128 0x1
	.4byte	0xc5
	.uleb128 0x1
	.4byte	0xeb
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0xb
	.byte	0xcc
	.byte	0x5
	.4byte	0x68
	.4byte	0x8cb
	.uleb128 0x1
	.4byte	0x7e7
	.uleb128 0x1
	.4byte	0xca
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x1d9
	.uleb128 0x1
	.4byte	0x832
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF131
	.byte	0xf
	.byte	0x39
	.byte	0x5
	.4byte	0x68
	.4byte	0x8eb
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0xca
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0xb
	.byte	0xa3
	.byte	0x5
	.4byte	0x68
	.4byte	0x91a
	.uleb128 0x1
	.4byte	0x7e7
	.uleb128 0x1
	.4byte	0xca
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x1d9
	.uleb128 0x1
	.4byte	0x832
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0x10
	.byte	0x5e
	.4byte	0x92b
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF134
	.byte	0xe
	.byte	0x1e
	.byte	0x5
	.4byte	0x68
	.4byte	0x94b
	.uleb128 0x1
	.4byte	0xe6
	.uleb128 0x1
	.4byte	0xe6
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xd
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x591
	.byte	0xe
	.4byte	0xf1
	.4byte	0x971
	.uleb128 0x1
	.4byte	0x971
	.uleb128 0x1
	.4byte	0x5a5
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x1d9
	.byte	0
	.uleb128 0x7
	.4byte	0x793
	.uleb128 0xd
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x57f
	.byte	0xe
	.4byte	0xf1
	.4byte	0x99c
	.uleb128 0x1
	.4byte	0x971
	.uleb128 0x1
	.4byte	0x5a5
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x1d9
	.byte	0
	.uleb128 0xd
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x551
	.byte	0xe
	.4byte	0xf1
	.4byte	0x9c2
	.uleb128 0x1
	.4byte	0x971
	.uleb128 0x1
	.4byte	0x5a5
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x1d9
	.byte	0
	.uleb128 0xc
	.4byte	.LASF138
	.byte	0x10
	.byte	0x5a
	.byte	0x7
	.4byte	0xc3
	.4byte	0x9dd
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xd
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x59f
	.byte	0xe
	.4byte	0xf1
	.4byte	0x9f9
	.uleb128 0x1
	.4byte	0x971
	.uleb128 0x1
	.4byte	0x9f9
	.byte	0
	.uleb128 0x7
	.4byte	0x779
	.uleb128 0xd
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x56d
	.byte	0xe
	.4byte	0xf1
	.4byte	0xa1a
	.uleb128 0x1
	.4byte	0x971
	.uleb128 0x1
	.4byte	0x1d9
	.byte	0
	.uleb128 0xd
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x55f
	.byte	0xe
	.4byte	0xf1
	.4byte	0xa36
	.uleb128 0x1
	.4byte	0x971
	.uleb128 0x1
	.4byte	0x1d9
	.byte	0
	.uleb128 0xd
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x541
	.byte	0xe
	.4byte	0xf1
	.4byte	0xa52
	.uleb128 0x1
	.4byte	0x971
	.uleb128 0x1
	.4byte	0x1d9
	.byte	0
	.uleb128 0x11
	.4byte	.LASF143
	.byte	0x7
	.byte	0x9f
	.4byte	0xa68
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xc
	.4byte	.LASF144
	.byte	0xb
	.byte	0x6f
	.byte	0x5
	.4byte	0x68
	.4byte	0xa97
	.uleb128 0x1
	.4byte	0x7e7
	.uleb128 0x1
	.4byte	0x455
	.uleb128 0x1
	.4byte	0x42b
	.uleb128 0x1
	.4byte	0x289
	.uleb128 0x1
	.4byte	0x857
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0xb
	.byte	0x58
	.4byte	0xaa8
	.uleb128 0x1
	.4byte	0x7e7
	.byte	0
	.uleb128 0x12
	.4byte	.LASF146
	.2byte	0x224
	.4byte	0xf1
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad1
	.uleb128 0x4
	.4byte	.LASF148
	.2byte	0x224
	.byte	0x43
	.4byte	0xad1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	0x5bb
	.uleb128 0x12
	.4byte	.LASF147
	.2byte	0x209
	.4byte	0xf1
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb3c
	.uleb128 0x4
	.4byte	.LASF148
	.2byte	0x20a
	.byte	0x23
	.4byte	0xad1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF149
	.2byte	0x20b
	.byte	0xe
	.4byte	0x5a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF150
	.2byte	0x20b
	.byte	0x1d
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF151
	.2byte	0x20c
	.byte	0xd
	.4byte	0x1d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.string	"ret"
	.byte	0x2
	.2byte	0x20e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF152
	.2byte	0x1fe
	.4byte	0xf1
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba1
	.uleb128 0x4
	.4byte	.LASF148
	.2byte	0x1fe
	.byte	0x43
	.4byte	0xad1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF153
	.2byte	0x1ff
	.byte	0x43
	.4byte	0x76c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x4
	.4byte	.LASF154
	.2byte	0x200
	.byte	0x34
	.4byte	0x798
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF155
	.2byte	0x201
	.byte	0x2c
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.4byte	.LASF156
	.2byte	0x203
	.byte	0x12
	.4byte	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF159
	.2byte	0x193
	.4byte	0xf1
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc20
	.uleb128 0x4
	.4byte	.LASF148
	.2byte	0x194
	.byte	0x23
	.4byte	0xad1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF153
	.2byte	0x195
	.byte	0x23
	.4byte	0x76c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x4
	.4byte	.LASF154
	.2byte	0x196
	.byte	0x14
	.4byte	0x798
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF155
	.2byte	0x197
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.string	"ret"
	.byte	0x2
	.2byte	0x199
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x14
	.4byte	.LASF157
	.2byte	0x1ba
	.byte	0x1b
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF158
	.2byte	0x187
	.4byte	0xf1
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc94
	.uleb128 0x4
	.4byte	.LASF148
	.2byte	0x187
	.byte	0x44
	.4byte	0xad1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF153
	.2byte	0x188
	.byte	0x44
	.4byte	0x76c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x4
	.4byte	.LASF149
	.2byte	0x189
	.byte	0x2f
	.4byte	0x5a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF150
	.2byte	0x18a
	.byte	0x2d
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF151
	.2byte	0x18b
	.byte	0x2e
	.4byte	0x1d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.4byte	.LASF156
	.2byte	0x18d
	.byte	0x12
	.4byte	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF160
	.2byte	0x11a
	.4byte	0xf1
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd18
	.uleb128 0x4
	.4byte	.LASF148
	.2byte	0x11b
	.byte	0x23
	.4byte	0xad1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF153
	.2byte	0x11c
	.byte	0x23
	.4byte	0x76c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x4
	.4byte	.LASF149
	.2byte	0x11d
	.byte	0xe
	.4byte	0x5a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF150
	.2byte	0x11e
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF151
	.2byte	0x11f
	.byte	0xd
	.4byte	0x1d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x13
	.string	"ret"
	.byte	0x2
	.2byte	0x121
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF161
	.2byte	0x122
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF162
	.byte	0x2
	.byte	0x9b
	.byte	0xe
	.4byte	0xf1
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdff
	.uleb128 0x19
	.4byte	.LASF148
	.byte	0x9b
	.byte	0x43
	.4byte	0xad1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x19
	.4byte	.LASF163
	.byte	0x9c
	.byte	0x4c
	.4byte	0x971
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x8
	.4byte	.LASF156
	.byte	0x9e
	.byte	0x12
	.4byte	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF101
	.byte	0x9f
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF103
	.byte	0x9f
	.byte	0x1a
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF83
	.byte	0x9f
	.byte	0x28
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF102
	.byte	0xa0
	.byte	0xe
	.4byte	0x5a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF100
	.byte	0xa0
	.byte	0x1b
	.4byte	0x5a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	.LASF164
	.byte	0xa1
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.4byte	.LASF165
	.byte	0xa1
	.byte	0x21
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.4byte	.LASF166
	.byte	0xa1
	.byte	0x36
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.4byte	.LASF105
	.byte	0xa2
	.byte	0x1d
	.4byte	0x779
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.4byte	.LASF172
	.byte	0x2
	.2byte	0x10f
	.byte	0x1
	.4byte	.L20
	.uleb128 0x2c
	.4byte	.LLRL0
	.uleb128 0x8
	.4byte	.LASF167
	.byte	0xe9
	.byte	0x16
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF168
	.byte	0x2
	.byte	0x80
	.byte	0x15
	.4byte	0xf1
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe37
	.uleb128 0x19
	.4byte	.LASF148
	.byte	0x80
	.byte	0x4a
	.4byte	0xad1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.string	"ret"
	.byte	0x2
	.byte	0x82
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF169
	.byte	0x2
	.byte	0x69
	.byte	0x15
	.4byte	0xf1
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe61
	.uleb128 0x30
	.string	"ret"
	.byte	0x2
	.byte	0x69
	.byte	0x36
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x7a9
	.byte	0x2e
	.4byte	0x633
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.string	"v"
	.byte	0x1
	.2byte	0x7ab
	.byte	0x2a
	.4byte	0x687
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
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
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x1a
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
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
	.sleb128 12
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x17
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
	.uleb128 0x24
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x26
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x5
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
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
	.4byte	.LBB2
	.byte	0x4
	.uleb128 .LBB2-.LBB2
	.uleb128 .LBE2-.LBB2
	.byte	0x4
	.uleb128 .LBB3-.LBB2
	.uleb128 .LBE3-.LBB2
	.byte	0
.LLRL1:
	.byte	0x7
	.4byte	.LFB64
	.uleb128 .LFE64-.LFB64
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF112:
	.string	"PSA_JPAKE_X2_STEP_ZK_PROOF"
.LASF20:
	.string	"psa_ecc_family_t"
.LASF163:
	.string	"inputs"
.LASF173:
	.string	"psa_pake_cipher_suite_init"
.LASF59:
	.string	"MBEDTLS_MD_NONE"
.LASF115:
	.string	"PSA_JPAKE_X2S_STEP_ZK_PROOF"
.LASF12:
	.string	"size_t"
.LASF21:
	.string	"psa_algorithm_t"
.LASF37:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF137:
	.string	"psa_crypto_driver_pake_get_password"
.LASF76:
	.string	"mbedtls_ecjpake_context"
.LASF74:
	.string	"MBEDTLS_ECJPAKE_NONE"
.LASF27:
	.string	"type"
.LASF82:
	.string	"password"
.LASF101:
	.string	"user_len"
.LASF121:
	.string	"psa_crypto_driver_pake_inputs_t"
.LASF103:
	.string	"peer_len"
.LASF9:
	.string	"long long unsigned int"
.LASF159:
	.string	"mbedtls_psa_pake_input_internal"
.LASF57:
	.string	"t_data"
.LASF114:
	.string	"PSA_JPAKE_X2S_STEP_ZK_PUBLIC"
.LASF48:
	.string	"MBEDTLS_ECP_DP_CURVE448"
.LASF133:
	.string	"free"
.LASF34:
	.string	"mbedtls_mpi"
.LASF42:
	.string	"MBEDTLS_ECP_DP_BP384R1"
.LASF120:
	.string	"psa_pake_cipher_suite_t"
.LASF130:
	.string	"mbedtls_ecjpake_write_round_two"
.LASF2:
	.string	"signed char"
.LASF85:
	.string	"buffer_length"
.LASF55:
	.string	"t_pre"
.LASF7:
	.string	"long unsigned int"
.LASF95:
	.string	"psa_pake_cipher_suite_s"
.LASF35:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF164:
	.string	"actual_user_len"
.LASF165:
	.string	"actual_peer_len"
.LASF151:
	.string	"output_length"
.LASF28:
	.string	"bits"
.LASF6:
	.string	"long int"
.LASF145:
	.string	"mbedtls_ecjpake_init"
.LASF63:
	.string	"MBEDTLS_MD_SHA224"
.LASF86:
	.string	"buffer_offset"
.LASF169:
	.string	"mbedtls_ecjpake_to_psa_error"
.LASF154:
	.string	"input"
.LASF119:
	.string	"psa_crypto_driver_pake_step_t"
.LASF129:
	.string	"memcpy"
.LASF8:
	.string	"long long int"
.LASF81:
	.string	"jpake"
.LASF15:
	.string	"uint16_t"
.LASF93:
	.string	"psa_pake_primitive_type_t"
.LASF88:
	.string	"psa_key_policy_s"
.LASF91:
	.string	"psa_key_policy_t"
.LASF40:
	.string	"MBEDTLS_ECP_DP_SECP521R1"
.LASF124:
	.string	"mbedtls_ecjpake_free"
.LASF19:
	.string	"psa_key_type_t"
.LASF70:
	.string	"MBEDTLS_MD_SHA3_512"
.LASF11:
	.string	"long double"
.LASF64:
	.string	"MBEDTLS_MD_SHA256"
.LASF36:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF157:
	.string	"ecparameters"
.LASF39:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF80:
	.string	"dummy"
.LASF53:
	.string	"nbits"
.LASF98:
	.string	"hash"
.LASF29:
	.string	"lifetime"
.LASF147:
	.string	"mbedtls_psa_pake_get_implicit_key"
.LASF10:
	.string	"unsigned int"
.LASF123:
	.string	"jpake_client_id"
.LASF68:
	.string	"MBEDTLS_MD_SHA3_256"
.LASF128:
	.string	"mbedtls_ecjpake_read_round_one"
.LASF149:
	.string	"output"
.LASF54:
	.string	"modp"
.LASF150:
	.string	"output_size"
.LASF94:
	.string	"psa_pake_family_t"
.LASF144:
	.string	"mbedtls_ecjpake_setup"
.LASF61:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF71:
	.string	"mbedtls_md_type_t"
.LASF73:
	.string	"MBEDTLS_ECJPAKE_SERVER"
.LASF126:
	.string	"mbedtls_ecjpake_write_shared_key"
.LASF139:
	.string	"psa_crypto_driver_pake_get_cipher_suite"
.LASF45:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
.LASF110:
	.string	"PSA_JPAKE_X2_STEP_KEY_SHARE"
.LASF75:
	.string	"mbedtls_ecjpake_role"
.LASF102:
	.string	"peer"
.LASF24:
	.string	"mbedtls_svc_key_id_t"
.LASF46:
	.string	"MBEDTLS_ECP_DP_SECP224K1"
.LASF106:
	.string	"PSA_JPAKE_STEP_INVALID"
.LASF141:
	.string	"psa_crypto_driver_pake_get_user_len"
.LASF107:
	.string	"PSA_JPAKE_X1_STEP_KEY_SHARE"
.LASF166:
	.string	"actual_password_len"
.LASF148:
	.string	"operation"
.LASF22:
	.string	"psa_key_lifetime_t"
.LASF49:
	.string	"mbedtls_ecp_group_id"
.LASF33:
	.string	"psa_key_attributes_s"
.LASF26:
	.string	"psa_key_attributes_t"
.LASF41:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF158:
	.string	"mbedtls_psa_pake_output"
.LASF105:
	.string	"cipher_suite"
.LASF30:
	.string	"policy"
.LASF146:
	.string	"mbedtls_psa_pake_abort"
.LASF92:
	.string	"psa_key_bits_t"
.LASF58:
	.string	"T_size"
.LASF66:
	.string	"MBEDTLS_MD_SHA512"
.LASF109:
	.string	"PSA_JPAKE_X1_STEP_ZK_PROOF"
.LASF116:
	.string	"PSA_JPAKE_X4S_STEP_KEY_SHARE"
.LASF62:
	.string	"MBEDTLS_MD_SHA1"
.LASF69:
	.string	"MBEDTLS_MD_SHA3_384"
.LASF78:
	.string	"role"
.LASF72:
	.string	"MBEDTLS_ECJPAKE_CLIENT"
.LASF18:
	.string	"psa_status_t"
.LASF77:
	.string	"md_type"
.LASF172:
	.string	"error"
.LASF111:
	.string	"PSA_JPAKE_X2_STEP_ZK_PUBLIC"
.LASF100:
	.string	"user"
.LASF160:
	.string	"mbedtls_psa_pake_output_internal"
.LASF97:
	.string	"family"
.LASF32:
	.string	"mbedtls_mpi_uint"
.LASF13:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF127:
	.string	"mbedtls_ecjpake_read_round_two"
.LASF153:
	.string	"step"
.LASF83:
	.string	"password_len"
.LASF4:
	.string	"short int"
.LASF136:
	.string	"psa_crypto_driver_pake_get_user"
.LASF168:
	.string	"psa_pake_ecjpake_setup"
.LASF99:
	.string	"psa_crypto_driver_pake_inputs_s"
.LASF51:
	.string	"mbedtls_ecp_group"
.LASF47:
	.string	"MBEDTLS_ECP_DP_SECP256K1"
.LASF104:
	.string	"attributes"
.LASF16:
	.string	"uint32_t"
.LASF117:
	.string	"PSA_JPAKE_X4S_STEP_ZK_PUBLIC"
.LASF152:
	.string	"mbedtls_psa_pake_input"
.LASF161:
	.string	"length"
.LASF17:
	.string	"char"
.LASF135:
	.string	"psa_crypto_driver_pake_get_peer"
.LASF131:
	.string	"mbedtls_psa_get_random"
.LASF143:
	.string	"mbedtls_platform_zeroize"
.LASF31:
	.string	"mbedtls_f_rng_t"
.LASF56:
	.string	"t_post"
.LASF79:
	.string	"point_format"
.LASF84:
	.string	"buffer"
.LASF125:
	.string	"mbedtls_zeroize_and_free"
.LASF134:
	.string	"memcmp"
.LASF118:
	.string	"PSA_JPAKE_X4S_STEP_ZK_PROOF"
.LASF140:
	.string	"psa_crypto_driver_pake_get_peer_len"
.LASF65:
	.string	"MBEDTLS_MD_SHA384"
.LASF60:
	.string	"MBEDTLS_MD_MD5"
.LASF170:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF5:
	.string	"short unsigned int"
.LASF43:
	.string	"MBEDTLS_ECP_DP_BP512R1"
.LASF167:
	.string	"user_peer_len"
.LASF132:
	.string	"mbedtls_ecjpake_write_round_one"
.LASF89:
	.string	"usage"
.LASF23:
	.string	"psa_key_id_t"
.LASF50:
	.string	"mbedtls_ecp_point"
.LASF156:
	.string	"status"
.LASF108:
	.string	"PSA_JPAKE_X1_STEP_ZK_PUBLIC"
.LASF138:
	.string	"calloc"
.LASF44:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF113:
	.string	"PSA_JPAKE_X2S_STEP_KEY_SHARE"
.LASF25:
	.string	"psa_key_usage_t"
.LASF14:
	.string	"uint8_t"
.LASF96:
	.string	"algorithm"
.LASF52:
	.string	"pbits"
.LASF155:
	.string	"input_length"
.LASF38:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF90:
	.string	"alg2"
.LASF142:
	.string	"psa_crypto_driver_pake_get_password_len"
.LASF67:
	.string	"MBEDTLS_MD_SHA3_224"
.LASF122:
	.string	"jpake_server_id"
.LASF162:
	.string	"mbedtls_psa_pake_setup"
.LASF87:
	.string	"mbedtls_psa_pake_operation_t"
.LASF171:
	.string	"psa_crypto_driver_pake_step"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_pake.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
