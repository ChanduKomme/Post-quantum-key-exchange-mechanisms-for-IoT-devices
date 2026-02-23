	.file	"ecdsa.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ecdsa.c"
	.section	.text.mbedtls_error_add,"ax",@progbits
	.align	1
	.type	mbedtls_error_add, @function
mbedtls_error_add:
.LFB16:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/error.h"
	.loc 1 144 1
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
	.loc 1 153 17
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 1 154 1
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
	.size	mbedtls_error_add, .-mbedtls_error_add
	.section	.text.ecdsa_restart_ver_init,"ax",@progbits
	.align	1
	.type	ecdsa_restart_ver_init, @function
ecdsa_restart_ver_init:
.LFB17:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ecdsa.c"
	.loc 2 50 1
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
	.loc 2 51 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 52 5
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 53 16
	lw	a5,-20(s0)
	sb	zero,16(a5)
	.loc 2 54 1
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
	.size	ecdsa_restart_ver_init, .-ecdsa_restart_ver_init
	.section	.text.ecdsa_restart_ver_free,"ax",@progbits
	.align	1
	.type	ecdsa_restart_ver_free, @function
ecdsa_restart_ver_free:
.LFB18:
	.loc 2 60 1
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
	.loc 2 61 8
	lw	a5,-20(s0)
	beq	a5,zero,.L7
	.loc 2 65 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 66 5
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 68 5
	lw	a0,-20(s0)
	call	ecdsa_restart_ver_init
	j	.L4
.L7:
	.loc 2 62 9
	nop
.L4:
	.loc 2 69 1
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
	.size	ecdsa_restart_ver_free, .-ecdsa_restart_ver_free
	.section	.text.ecdsa_restart_sig_init,"ax",@progbits
	.align	1
	.type	ecdsa_restart_sig_init, @function
ecdsa_restart_sig_init:
.LFB19:
	.loc 2 90 1
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
	.loc 2 91 21
	lw	a5,-20(s0)
	sw	zero,0(a5)
	.loc 2 92 20
	lw	a5,-20(s0)
	sw	zero,4(a5)
	.loc 2 93 5
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 94 5
	lw	a5,-20(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 95 16
	lw	a5,-20(s0)
	sb	zero,24(a5)
	.loc 2 96 1
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
	.size	ecdsa_restart_sig_init, .-ecdsa_restart_sig_init
	.section	.text.ecdsa_restart_sig_free,"ax",@progbits
	.align	1
	.type	ecdsa_restart_sig_free, @function
ecdsa_restart_sig_free:
.LFB20:
	.loc 2 102 1
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
	.loc 2 103 8
	lw	a5,-20(s0)
	beq	a5,zero,.L12
	.loc 2 107 5
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 108 5
	lw	a5,-20(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	mbedtls_mpi_free
	j	.L9
.L12:
	.loc 2 104 9
	nop
.L9:
	.loc 2 109 1
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
	.size	ecdsa_restart_sig_free, .-ecdsa_restart_sig_free
	.section	.text.ecdsa_restart_det_init,"ax",@progbits
	.align	1
	.type	ecdsa_restart_det_init, @function
ecdsa_restart_det_init:
.LFB21:
	.loc 2 127 1
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
	.loc 2 128 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_hmac_drbg_init
	.loc 2 129 16
	lw	a5,-20(s0)
	sb	zero,100(a5)
	.loc 2 130 1
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
.LFE21:
	.size	ecdsa_restart_det_init, .-ecdsa_restart_det_init
	.section	.text.ecdsa_restart_det_free,"ax",@progbits
	.align	1
	.type	ecdsa_restart_det_free, @function
ecdsa_restart_det_free:
.LFB22:
	.loc 2 136 1
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
	.loc 2 137 8
	lw	a5,-20(s0)
	beq	a5,zero,.L17
	.loc 2 141 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_hmac_drbg_free
	.loc 2 143 5
	lw	a0,-20(s0)
	call	ecdsa_restart_det_init
	j	.L14
.L17:
	.loc 2 138 9
	nop
.L14:
	.loc 2 144 1
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
	.size	ecdsa_restart_det_free, .-ecdsa_restart_det_free
	.section	.text.derive_mpi,"ax",@progbits
	.align	1
	.type	derive_mpi, @function
derive_mpi:
.LFB23:
	.loc 2 206 1
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
	.loc 2 207 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 208 25
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 2 208 33
	addi	a5,a5,7
	.loc 2 208 12
	srli	a5,a5,3
	sw	a5,-24(s0)
	.loc 2 209 12
	lw	a4,-24(s0)
	lw	a5,-48(s0)
	bleu	a5,a4,.L19
	mv	a5,a4
.L19:
	sw	a5,-28(s0)
	.loc 2 211 22
	lw	a2,-28(s0)
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 2 211 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L24
	.loc 2 212 18
	lw	a5,-28(s0)
	slli	a4,a5,3
	.loc 2 212 27
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 2 212 8
	bleu	a4,a5,.L22
	.loc 2 213 58
	lw	a5,-28(s0)
	slli	a4,a5,3
	.loc 2 213 67
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 2 213 26
	sub	a5,a4,a5
	mv	a1,a5
	lw	a0,-40(s0)
	call	mbedtls_mpi_shift_r
	sw	a0,-20(s0)
	.loc 2 213 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L25
.L22:
	.loc 2 217 9
	lw	a5,-36(s0)
	addi	a5,a5,52
	mv	a1,a5
	lw	a0,-40(s0)
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 217 8 discriminator 1
	blt	a5,zero,.L26
	.loc 2 218 26
	lw	a5,-36(s0)
	addi	a5,a5,52
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-40(s0)
	call	mbedtls_mpi_sub_mpi
	sw	a0,-20(s0)
	.loc 2 221 1
	j	.L26
.L24:
	.loc 2 211 72
	nop
	j	.L21
.L25:
	.loc 2 213 84
	nop
	j	.L21
.L26:
	.loc 2 221 1
	nop
.L21:
	.loc 2 222 12
	lw	a5,-20(s0)
	.loc 2 223 1
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
.LFE23:
	.size	derive_mpi, .-derive_mpi
	.section	.text.mbedtls_ecdsa_can_do,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdsa_can_do
	.type	mbedtls_ecdsa_can_do, @function
mbedtls_ecdsa_can_do:
.LFB24:
	.loc 2 227 1
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
	.loc 2 228 5
	lbu	a5,-17(s0)
	li	a4,9
	beq	a5,a4,.L28
	li	a4,13
	beq	a5,a4,.L29
	j	.L32
.L28:
	.loc 2 230 48
	li	a5,0
	j	.L31
.L29:
	.loc 2 233 46
	li	a5,0
	j	.L31
.L32:
	.loc 2 235 25
	li	a5,1
.L31:
	.loc 2 237 1
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
.LFE24:
	.size	mbedtls_ecdsa_can_do, .-mbedtls_ecdsa_can_do
	.section	.text.mbedtls_ecdsa_sign_restartable,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdsa_sign_restartable
	.type	mbedtls_ecdsa_sign_restartable, @function
mbedtls_ecdsa_sign_restartable:
.LFB25:
	.loc 2 251 1
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
	sw	a6,-124(s0)
	sw	a7,-128(s0)
	.loc 2 253 10
	addi	a5,s0,-44
	sw	a5,-24(s0)
	.loc 2 253 39
	addi	a5,s0,-40
	sw	a5,-28(s0)
	.loc 2 256 18
	addi	a5,s0,-76
	sw	a5,-32(s0)
	.loc 2 256 28
	lw	a5,-104(s0)
	sw	a5,-36(s0)
	.loc 2 259 10
	lw	a5,-100(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	mbedtls_ecdsa_can_do
	mv	a5,a0
	.loc 2 259 8 discriminator 1
	beq	a5,zero,.L34
	.loc 2 259 49 discriminator 2
	lw	a5,-100(s0)
	lw	a5,52(a5)
	.loc 2 259 40 discriminator 2
	bne	a5,zero,.L35
.L34:
	.loc 2 260 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L67
.L35:
	.loc 2 264 9
	li	a1,1
	lw	a0,-112(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 264 8 discriminator 1
	blt	a5,zero,.L37
	.loc 2 264 65 discriminator 2
	lw	a5,-100(s0)
	addi	a5,a5,52
	.loc 2 264 42 discriminator 2
	mv	a1,a5
	lw	a0,-112(s0)
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 264 39 discriminator 3
	blt	a5,zero,.L38
.L37:
	.loc 2 265 16
	li	a5,-20480
	addi	a5,a5,896
	j	.L67
.L38:
	.loc 2 268 5
	addi	a5,s0,-68
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 269 5
	addi	a5,s0,-76
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 269 27 discriminator 1
	addi	a5,s0,-84
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 271 13
	lw	a5,8(s0)
	beq	a5,zero,.L39
	.loc 2 271 18 discriminator 1
	lw	a5,8(s0)
	lw	a5,4(a5)
	.loc 2 271 24 discriminator 1
	addi	a3,a5,1
	lw	a4,8(s0)
	sw	a3,4(a4)
	.loc 2 271 4 discriminator 1
	bne	a5,zero,.L39
	.loc 2 271 54 discriminator 3
	lw	a5,8(s0)
	sw	zero,0(a5)
.L39:
	.loc 2 271 63 discriminator 5
	call	mbedtls_ecp_restart_is_enabled
	mv	a5,a0
	.loc 2 271 62 discriminator 6
	beq	a5,zero,.L40
	.loc 2 271 96 discriminator 7
	lw	a5,8(s0)
	beq	a5,zero,.L40
	.loc 2 271 13 discriminator 8
	lw	a5,8(s0)
	lw	a5,20(a5)
	.loc 2 271 4 discriminator 8
	bne	a5,zero,.L40
	.loc 2 271 22 discriminator 9
	li	a1,28
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 2 271 20 discriminator 10
	lw	a5,8(s0)
	sw	a4,20(a5)
	.loc 2 271 65 discriminator 10
	lw	a5,8(s0)
	lw	a5,20(a5)
	.loc 2 271 58 discriminator 10
	bne	a5,zero,.L41
	.loc 2 271 13 discriminator 11
	li	a5,-20480
	addi	a5,a5,640
	.loc 2 271 13 is_stmt 0
	j	.L67
.L41:
	.loc 2 271 22 is_stmt 1 discriminator 12
	lw	a5,8(s0)
	lw	a5,20(a5)
	mv	a0,a5
	call	ecdsa_restart_sig_init
.L40:
	.loc 2 274 8
	lw	a5,8(s0)
	beq	a5,zero,.L42
	.loc 2 274 32 discriminator 1
	lw	a5,8(s0)
	lw	a5,20(a5)
	.loc 2 274 23 discriminator 1
	beq	a5,zero,.L42
	.loc 2 276 31
	lw	a5,8(s0)
	lw	a5,20(a5)
	.loc 2 276 22
	sw	a5,-24(s0)
	.loc 2 277 30
	lw	a5,8(s0)
	lw	a5,20(a5)
	.loc 2 277 21
	addi	a5,a5,4
	sw	a5,-28(s0)
	.loc 2 278 21
	lw	a5,8(s0)
	lw	a5,20(a5)
	.loc 2 278 12
	addi	a5,a5,8
	sw	a5,-32(s0)
	.loc 2 279 21
	lw	a5,8(s0)
	lw	a5,20(a5)
	.loc 2 279 12
	addi	a5,a5,16
	sw	a5,-36(s0)
	.loc 2 282 19
	lw	a5,8(s0)
	lw	a5,20(a5)
	.loc 2 282 24
	lbu	a4,24(a5)
	.loc 2 282 12
	li	a5,1
	beq	a4,a5,.L68
	.loc 2 285 19
	lw	a5,8(s0)
	lw	a5,20(a5)
	.loc 2 285 24
	lbu	a4,24(a5)
	.loc 2 285 12
	li	a5,2
	beq	a4,a5,.L69
.L42:
	.loc 2 291 19
	lw	a5,-24(s0)
	sw	zero,0(a5)
.L64:
	.loc 2 293 14
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 2 293 28
	addi	a3,a5,1
	lw	a4,-24(s0)
	sw	a3,0(a4)
	.loc 2 293 12
	li	a4,10
	ble	a5,a4,.L46
	.loc 2 294 17
	li	a5,-20480
	addi	a5,a5,768
	sw	a5,-20(s0)
	.loc 2 295 13
	j	.L47
.L46:
	.loc 2 302 22
	lw	a5,-28(s0)
	sw	zero,0(a5)
.L54:
	.loc 2 304 18
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 2 304 31
	addi	a3,a5,1
	lw	a4,-28(s0)
	sw	a3,0(a4)
	.loc 2 304 16
	li	a4,10
	ble	a5,a4,.L48
	.loc 2 305 21
	li	a5,-20480
	addi	a5,a5,768
	sw	a5,-20(s0)
	.loc 2 306 17
	j	.L47
.L48:
	.loc 2 309 30
	lw	a3,-128(s0)
	lw	a2,-124(s0)
	lw	a1,-32(s0)
	lw	a0,-100(s0)
	call	mbedtls_ecp_gen_privkey
	sw	a0,-20(s0)
	.loc 2 309 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L70
	.loc 2 312 16
	lw	a5,8(s0)
	beq	a5,zero,.L71
	.loc 2 312 40 discriminator 1
	lw	a5,8(s0)
	lw	a5,20(a5)
	.loc 2 312 31 discriminator 1
	beq	a5,zero,.L71
	.loc 2 313 23
	lw	a5,8(s0)
	lw	a5,20(a5)
	.loc 2 313 36
	li	a4,1
	sb	a4,24(a5)
	j	.L44
.L68:
	.loc 2 283 13
	nop
	j	.L44
.L71:
	.loc 2 316 1
	nop
.L44:
	.loc 2 318 71
	lw	a5,-100(s0)
	addi	a3,a5,28
	.loc 2 318 30
	lw	a5,8(s0)
	beq	a5,zero,.L50
	.loc 2 318 30 is_stmt 0 discriminator 1
	lw	a5,8(s0)
	j	.L51
.L50:
	.loc 2 318 30 discriminator 2
	li	a5,0
.L51:
	.loc 2 318 30 discriminator 4
	addi	a1,s0,-68
	mv	a6,a5
	lw	a5,4(s0)
	lw	a4,0(s0)
	lw	a2,-32(s0)
	lw	a0,-100(s0)
	call	mbedtls_ecp_mul_restartable
	sw	a0,-20(s0)
	.loc 2 318 21 is_stmt 1 discriminator 5
	lw	a5,-20(s0)
	bne	a5,zero,.L72
	.loc 2 322 60
	lw	a5,-100(s0)
	addi	a4,a5,52
	.loc 2 322 30
	addi	a5,s0,-68
	mv	a2,a4
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 2 322 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L73
	.loc 2 323 18
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 323 45 discriminator 1
	beq	a5,zero,.L54
	.loc 2 326 12
	lw	a5,8(s0)
	beq	a5,zero,.L74
	.loc 2 326 36 discriminator 1
	lw	a5,8(s0)
	lw	a5,20(a5)
	.loc 2 326 27 discriminator 1
	beq	a5,zero,.L74
	.loc 2 327 19
	lw	a5,8(s0)
	lw	a5,20(a5)
	.loc 2 327 32
	li	a4,2
	sb	a4,24(a5)
	j	.L45
.L69:
	.loc 2 286 13
	nop
	j	.L45
.L74:
	.loc 2 330 1
	nop
.L45:
	.loc 2 336 26
	lw	a5,8(s0)
	beq	a5,zero,.L55
	.loc 2 336 26 is_stmt 0 discriminator 1
	lw	a5,8(s0)
	j	.L56
.L55:
	.loc 2 336 26 discriminator 2
	li	a5,0
.L56:
	.loc 2 336 26 discriminator 4
	li	a2,124
	mv	a1,a5
	lw	a0,-100(s0)
	call	mbedtls_ecp_check_budget
	sw	a0,-20(s0)
	.loc 2 336 17 is_stmt 1 discriminator 5
	lw	a5,-20(s0)
	bne	a5,zero,.L75
	.loc 2 341 26
	addi	a5,s0,-84
	lw	a3,-120(s0)
	lw	a2,-116(s0)
	mv	a1,a5
	lw	a0,-100(s0)
	call	derive_mpi
	sw	a0,-20(s0)
	.loc 2 341 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L76
	.loc 2 346 26
	lw	a2,-112(s0)
	lw	a1,-36(s0)
	lw	a0,-108(s0)
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 2 346 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L77
	.loc 2 347 26
	addi	a4,s0,-84
	addi	a5,s0,-84
	lw	a2,-108(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_add_mpi
	sw	a0,-20(s0)
	.loc 2 347 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L78
	.loc 2 348 17
	lw	a5,-100(s0)
	addi	a5,a5,52
	.loc 2 348 26
	mv	a3,a5
	lw	a2,-32(s0)
	lw	a1,-108(s0)
	li	a0,0
	call	mbedtls_mpi_gcd_modinv_odd
	sw	a0,-20(s0)
	.loc 2 348 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L79
	.loc 2 349 26
	addi	a5,s0,-84
	mv	a2,a5
	lw	a1,-108(s0)
	lw	a0,-108(s0)
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 2 349 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L80
	.loc 2 350 52
	lw	a5,-100(s0)
	addi	a5,a5,52
	.loc 2 350 26
	mv	a2,a5
	lw	a1,-108(s0)
	lw	a0,-108(s0)
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 2 350 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L81
	.loc 2 351 14
	li	a1,0
	lw	a0,-108(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 351 40 discriminator 1
	beq	a5,zero,.L64
	.loc 2 354 8
	lw	a5,8(s0)
	beq	a5,zero,.L82
	.loc 2 354 32 discriminator 1
	lw	a5,8(s0)
	lw	a5,20(a5)
	.loc 2 354 23 discriminator 1
	beq	a5,zero,.L82
	.loc 2 355 26
	lw	a1,-36(s0)
	lw	a0,-104(s0)
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 359 1
	j	.L82
.L70:
	.loc 2 309 85
	nop
	j	.L47
.L72:
	.loc 2 318 37
	nop
	j	.L47
.L73:
	.loc 2 322 77
	nop
	j	.L47
.L75:
	.loc 2 336 42
	nop
	j	.L47
.L76:
	.loc 2 341 65
	nop
	j	.L47
.L77:
	.loc 2 346 64
	nop
	j	.L47
.L78:
	.loc 2 347 65
	nop
	j	.L47
.L79:
	.loc 2 348 34
	nop
	j	.L47
.L80:
	.loc 2 349 64
	nop
	j	.L47
.L81:
	.loc 2 350 69
	nop
	j	.L47
.L82:
	.loc 2 359 1
	nop
.L47:
	.loc 2 360 5
	addi	a5,s0,-68
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 361 5
	addi	a5,s0,-76
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 361 27 discriminator 1
	addi	a5,s0,-84
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 363 13
	lw	a5,8(s0)
	beq	a5,zero,.L65
	.loc 2 363 13 discriminator 1
	lw	a5,8(s0)
	lw	a5,20(a5)
	.loc 2 363 4 discriminator 1
	beq	a5,zero,.L65
	.loc 2 363 4 discriminator 3
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,1280
	beq	a4,a5,.L65
	.loc 2 363 25 discriminator 5
	lw	a5,8(s0)
	lw	a5,20(a5)
	mv	a0,a5
	call	ecdsa_restart_sig_free
	.loc 2 363 73 discriminator 7
	lw	a5,8(s0)
	lw	a5,20(a5)
	.loc 2 363 62 discriminator 7
	mv	a0,a5
	call	free
	.loc 2 363 93 discriminator 8
	lw	a5,8(s0)
	sw	zero,20(a5)
.L65:
	.loc 2 363 11 discriminator 9
	lw	a5,8(s0)
	beq	a5,zero,.L66
	.loc 2 363 17 discriminator 10
	lw	a5,8(s0)
	lw	a5,4(a5)
	.loc 2 363 23 discriminator 10
	addi	a4,a5,-1
	lw	a5,8(s0)
	sw	a4,4(a5)
.L66:
	.loc 2 365 12
	lw	a5,-20(s0)
.L67:
	.loc 2 366 1
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
.LFE25:
	.size	mbedtls_ecdsa_sign_restartable, .-mbedtls_ecdsa_sign_restartable
	.section	.text.mbedtls_ecdsa_sign,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdsa_sign
	.type	mbedtls_ecdsa_sign, @function
mbedtls_ecdsa_sign:
.LFB26:
	.loc 2 374 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	sw	a7,-48(s0)
	.loc 2 376 12
	sw	zero,8(sp)
	lw	a5,-48(s0)
	sw	a5,4(sp)
	lw	a5,-44(s0)
	sw	a5,0(sp)
	lw	a7,-48(s0)
	lw	a6,-44(s0)
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_ecdsa_sign_restartable
	mv	a5,a0
	.loc 2 378 1
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
.LFE26:
	.size	mbedtls_ecdsa_sign, .-mbedtls_ecdsa_sign
	.section	.text.mbedtls_ecdsa_sign_det_restartable,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdsa_sign_det_restartable
	.type	mbedtls_ecdsa_sign_det_restartable, @function
mbedtls_ecdsa_sign_det_restartable:
.LFB27:
	.loc 2 395 1
	.cfi_startproc
	addi	sp,sp,-320
	.cfi_def_cfa_offset 320
	sw	ra,316(sp)
	sw	s0,312(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,320
	.cfi_def_cfa 8, 0
	sw	a0,-276(s0)
	sw	a1,-280(s0)
	sw	a2,-284(s0)
	sw	a3,-288(s0)
	sw	a4,-292(s0)
	sw	a5,-296(s0)
	mv	a5,a6
	sw	a7,-304(s0)
	sb	a5,-297(s0)
	.loc 2 396 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 398 32
	addi	a5,s0,-132
	sw	a5,-24(s0)
	.loc 2 400 26
	lw	a5,-276(s0)
	lw	a5,64(a5)
	.loc 2 400 34
	addi	a5,a5,7
	.loc 2 400 12
	srli	a5,a5,3
	sw	a5,-28(s0)
	.loc 2 404 20
	lbu	a5,-297(s0)
	mv	a0,a5
	call	mbedtls_md_info_from_type
	sw	a0,-32(s0)
	.loc 2 404 8 discriminator 1
	lw	a5,-32(s0)
	bne	a5,zero,.L86
	.loc 2 405 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L100
.L86:
	.loc 2 408 5
	addi	a5,s0,-272
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 409 5
	addi	a5,s0,-132
	mv	a0,a5
	call	mbedtls_hmac_drbg_init
	.loc 2 411 13
	lw	a5,4(s0)
	beq	a5,zero,.L88
	.loc 2 411 18 discriminator 1
	lw	a5,4(s0)
	lw	a5,4(a5)
	.loc 2 411 24 discriminator 1
	addi	a3,a5,1
	lw	a4,4(s0)
	sw	a3,4(a4)
	.loc 2 411 4 discriminator 1
	bne	a5,zero,.L88
	.loc 2 411 54 discriminator 3
	lw	a5,4(s0)
	sw	zero,0(a5)
.L88:
	.loc 2 411 63 discriminator 5
	call	mbedtls_ecp_restart_is_enabled
	mv	a5,a0
	.loc 2 411 62 discriminator 6
	beq	a5,zero,.L89
	.loc 2 411 96 discriminator 7
	lw	a5,4(s0)
	beq	a5,zero,.L89
	.loc 2 411 13 discriminator 8
	lw	a5,4(s0)
	lw	a5,24(a5)
	.loc 2 411 4 discriminator 8
	bne	a5,zero,.L89
	.loc 2 411 22 discriminator 9
	li	a1,104
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 2 411 20 discriminator 10
	lw	a5,4(s0)
	sw	a4,24(a5)
	.loc 2 411 65 discriminator 10
	lw	a5,4(s0)
	lw	a5,24(a5)
	.loc 2 411 58 discriminator 10
	bne	a5,zero,.L90
	.loc 2 411 13 discriminator 11
	li	a5,-20480
	addi	a5,a5,640
	.loc 2 411 13 is_stmt 0
	j	.L100
.L90:
	.loc 2 411 22 is_stmt 1 discriminator 12
	lw	a5,4(s0)
	lw	a5,24(a5)
	mv	a0,a5
	call	ecdsa_restart_det_init
.L89:
	.loc 2 414 8
	lw	a5,4(s0)
	beq	a5,zero,.L91
	.loc 2 414 32 discriminator 1
	lw	a5,4(s0)
	lw	a5,24(a5)
	.loc 2 414 23 discriminator 1
	beq	a5,zero,.L91
	.loc 2 416 24
	lw	a5,4(s0)
	lw	a5,24(a5)
	.loc 2 416 15
	sw	a5,-24(s0)
	.loc 2 419 19
	lw	a5,4(s0)
	lw	a5,24(a5)
	.loc 2 419 24
	lbu	a4,100(a5)
	.loc 2 419 12
	li	a5,1
	beq	a4,a5,.L101
.L91:
	.loc 2 426 22
	addi	a5,s0,-264
	lw	a2,-28(s0)
	mv	a1,a5
	lw	a0,-288(s0)
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	.loc 2 426 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L102
	.loc 2 427 22
	addi	a5,s0,-272
	lw	a3,-296(s0)
	lw	a2,-292(s0)
	mv	a1,a5
	lw	a0,-276(s0)
	call	derive_mpi
	sw	a0,-20(s0)
	.loc 2 427 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L103
	.loc 2 428 22
	addi	a4,s0,-264
	lw	a5,-28(s0)
	add	a4,a4,a5
	addi	a5,s0,-272
	lw	a2,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	.loc 2 428 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L104
	.loc 2 429 22
	lw	a5,-28(s0)
	slli	a4,a5,1
	addi	a5,s0,-264
	mv	a3,a4
	mv	a2,a5
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	mbedtls_hmac_drbg_seed_buf
	sw	a0,-20(s0)
	.loc 2 429 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L105
	.loc 2 432 8
	lw	a5,4(s0)
	beq	a5,zero,.L106
	.loc 2 432 32 discriminator 1
	lw	a5,4(s0)
	lw	a5,24(a5)
	.loc 2 432 23 discriminator 1
	beq	a5,zero,.L106
	.loc 2 433 15
	lw	a5,4(s0)
	lw	a5,24(a5)
	.loc 2 433 28
	li	a4,1
	sb	a4,100(a5)
	j	.L92
.L101:
	.loc 2 420 13
	nop
	j	.L92
.L106:
	.loc 2 436 1
	nop
.L92:
	.loc 2 444 11
	lw	a5,4(s0)
	sw	a5,8(sp)
	lw	a5,0(s0)
	sw	a5,4(sp)
	lw	a5,-304(s0)
	sw	a5,0(sp)
	lw	a7,-24(s0)
	lui	a5,%hi(mbedtls_hmac_drbg_random)
	addi	a6,a5,%lo(mbedtls_hmac_drbg_random)
	lw	a5,-296(s0)
	lw	a4,-292(s0)
	lw	a3,-288(s0)
	lw	a2,-284(s0)
	lw	a1,-280(s0)
	lw	a0,-276(s0)
	call	mbedtls_ecdsa_sign_restartable
	sw	a0,-20(s0)
	j	.L94
.L102:
	.loc 2 426 73
	nop
	j	.L94
.L103:
	.loc 2 427 61
	nop
	j	.L94
.L104:
	.loc 2 428 84
	nop
	j	.L94
.L105:
	.loc 2 429 92
	nop
.L94:
	.loc 2 450 5
	addi	a5,s0,-132
	mv	a0,a5
	call	mbedtls_hmac_drbg_free
	.loc 2 451 5
	addi	a5,s0,-272
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 453 13
	lw	a5,4(s0)
	beq	a5,zero,.L98
	.loc 2 453 13 discriminator 1
	lw	a5,4(s0)
	lw	a5,24(a5)
	.loc 2 453 4 discriminator 1
	beq	a5,zero,.L98
	.loc 2 453 4 discriminator 3
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,1280
	beq	a4,a5,.L98
	.loc 2 453 25 discriminator 5
	lw	a5,4(s0)
	lw	a5,24(a5)
	mv	a0,a5
	call	ecdsa_restart_det_free
	.loc 2 453 73 discriminator 7
	lw	a5,4(s0)
	lw	a5,24(a5)
	.loc 2 453 62 discriminator 7
	mv	a0,a5
	call	free
	.loc 2 453 93 discriminator 8
	lw	a5,4(s0)
	sw	zero,24(a5)
.L98:
	.loc 2 453 11 discriminator 9
	lw	a5,4(s0)
	beq	a5,zero,.L99
	.loc 2 453 17 discriminator 10
	lw	a5,4(s0)
	lw	a5,4(a5)
	.loc 2 453 23 discriminator 10
	addi	a4,a5,-1
	lw	a5,4(s0)
	sw	a4,4(a5)
.L99:
	.loc 2 455 12
	lw	a5,-20(s0)
.L100:
	.loc 2 456 1
	mv	a0,a5
	lw	ra,316(sp)
	.cfi_restore 1
	lw	s0,312(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 320
	addi	sp,sp,320
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	mbedtls_ecdsa_sign_det_restartable, .-mbedtls_ecdsa_sign_det_restartable
	.section	.text.mbedtls_ecdsa_sign_det_ext,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdsa_sign_det_ext
	.type	mbedtls_ecdsa_sign_det_ext, @function
mbedtls_ecdsa_sign_det_ext:
.LFB28:
	.loc 2 468 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	mv	a5,a6
	sw	a7,-48(s0)
	sb	a5,-41(s0)
	.loc 2 469 12
	lbu	a4,-41(s0)
	sw	zero,4(sp)
	lw	a5,0(s0)
	sw	a5,0(sp)
	lw	a7,-48(s0)
	mv	a6,a4
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_ecdsa_sign_det_restartable
	mv	a5,a0
	.loc 2 471 1
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
.LFE28:
	.size	mbedtls_ecdsa_sign_det_ext, .-mbedtls_ecdsa_sign_det_ext
	.section	.text.mbedtls_ecdsa_verify_restartable,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdsa_verify_restartable
	.type	mbedtls_ecdsa_verify_restartable, @function
mbedtls_ecdsa_verify_restartable:
.LFB29:
	.loc 2 485 1
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
	sw	a6,-124(s0)
	.loc 2 486 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 489 18
	addi	a5,s0,-52
	sw	a5,-24(s0)
	.loc 2 489 30
	addi	a5,s0,-60
	sw	a5,-28(s0)
	.loc 2 491 5
	addi	a5,s0,-84
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 492 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 492 27 discriminator 1
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 493 5
	addi	a5,s0,-52
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 493 28 discriminator 1
	addi	a5,s0,-60
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 496 10
	lw	a5,-100(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	mbedtls_ecdsa_can_do
	mv	a5,a0
	.loc 2 496 8 discriminator 1
	beq	a5,zero,.L110
	.loc 2 496 49 discriminator 2
	lw	a5,-100(s0)
	lw	a5,52(a5)
	.loc 2 496 40 discriminator 2
	bne	a5,zero,.L111
.L110:
	.loc 2 497 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L137
.L111:
	.loc 2 500 13
	lw	a5,-124(s0)
	beq	a5,zero,.L113
	.loc 2 500 18 discriminator 1
	lw	a5,-124(s0)
	lw	a5,4(a5)
	.loc 2 500 24 discriminator 1
	addi	a3,a5,1
	lw	a4,-124(s0)
	sw	a3,4(a4)
	.loc 2 500 4 discriminator 1
	bne	a5,zero,.L113
	.loc 2 500 54 discriminator 3
	lw	a5,-124(s0)
	sw	zero,0(a5)
.L113:
	.loc 2 500 63 discriminator 5
	call	mbedtls_ecp_restart_is_enabled
	mv	a5,a0
	.loc 2 500 62 discriminator 6
	beq	a5,zero,.L114
	.loc 2 500 96 discriminator 7
	lw	a5,-124(s0)
	beq	a5,zero,.L114
	.loc 2 500 13 discriminator 8
	lw	a5,-124(s0)
	lw	a5,16(a5)
	.loc 2 500 4 discriminator 8
	bne	a5,zero,.L114
	.loc 2 500 22 discriminator 9
	li	a1,20
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 2 500 20 discriminator 10
	lw	a5,-124(s0)
	sw	a4,16(a5)
	.loc 2 500 65 discriminator 10
	lw	a5,-124(s0)
	lw	a5,16(a5)
	.loc 2 500 58 discriminator 10
	bne	a5,zero,.L115
	.loc 2 500 13 discriminator 11
	li	a5,-20480
	addi	a5,a5,640
	.loc 2 500 13 is_stmt 0
	j	.L137
.L115:
	.loc 2 500 22 is_stmt 1 discriminator 12
	lw	a5,-124(s0)
	lw	a5,16(a5)
	mv	a0,a5
	call	ecdsa_restart_ver_init
.L114:
	.loc 2 503 8
	lw	a5,-124(s0)
	beq	a5,zero,.L116
	.loc 2 503 32 discriminator 1
	lw	a5,-124(s0)
	lw	a5,16(a5)
	.loc 2 503 23 discriminator 1
	beq	a5,zero,.L116
	.loc 2 505 22
	lw	a5,-124(s0)
	lw	a5,16(a5)
	.loc 2 505 13
	sw	a5,-24(s0)
	.loc 2 506 22
	lw	a5,-124(s0)
	lw	a5,16(a5)
	.loc 2 506 13
	addi	a5,a5,8
	sw	a5,-28(s0)
	.loc 2 509 19
	lw	a5,-124(s0)
	lw	a5,16(a5)
	.loc 2 509 24
	lbu	a4,16(a5)
	.loc 2 509 12
	li	a5,1
	beq	a4,a5,.L138
.L116:
	.loc 2 518 9
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 518 8 discriminator 1
	blt	a5,zero,.L118
	.loc 2 518 65 discriminator 2
	lw	a5,-100(s0)
	addi	a5,a5,52
	.loc 2 518 42 discriminator 2
	mv	a1,a5
	lw	a0,-116(s0)
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 518 39 discriminator 3
	bge	a5,zero,.L118
	.loc 2 519 9
	li	a1,1
	lw	a0,-120(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 518 79 discriminator 4
	blt	a5,zero,.L118
	.loc 2 519 65
	lw	a5,-100(s0)
	addi	a5,a5,52
	.loc 2 519 42
	mv	a1,a5
	lw	a0,-120(s0)
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 519 39 discriminator 2
	blt	a5,zero,.L119
.L118:
	.loc 2 520 13
	li	a5,-20480
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 2 521 9
	j	.L120
.L119:
	.loc 2 527 22
	addi	a5,s0,-36
	lw	a3,-108(s0)
	lw	a2,-104(s0)
	mv	a1,a5
	lw	a0,-100(s0)
	call	derive_mpi
	sw	a0,-20(s0)
	.loc 2 527 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L139
	.loc 2 532 22
	lw	a5,-124(s0)
	beq	a5,zero,.L122
	.loc 2 532 22 is_stmt 0 discriminator 1
	lw	a5,-124(s0)
	j	.L123
.L122:
	.loc 2 532 22 discriminator 2
	li	a5,0
.L123:
	.loc 2 532 22 discriminator 4
	li	a2,125
	mv	a1,a5
	lw	a0,-100(s0)
	call	mbedtls_ecp_check_budget
	sw	a0,-20(s0)
	.loc 2 532 13 is_stmt 1 discriminator 5
	lw	a5,-20(s0)
	bne	a5,zero,.L140
	.loc 2 534 17
	lw	a5,-100(s0)
	addi	a4,a5,52
	.loc 2 534 22
	addi	a5,s0,-44
	mv	a3,a4
	lw	a2,-120(s0)
	mv	a1,a5
	li	a0,0
	call	mbedtls_mpi_gcd_modinv_odd
	sw	a0,-20(s0)
	.loc 2 534 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L141
	.loc 2 536 22
	addi	a4,s0,-44
	addi	a5,s0,-36
	mv	a2,a4
	mv	a1,a5
	lw	a0,-24(s0)
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 2 536 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L142
	.loc 2 537 52
	lw	a5,-100(s0)
	addi	a5,a5,52
	.loc 2 537 22
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-24(s0)
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 2 537 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L143
	.loc 2 539 22
	addi	a5,s0,-44
	mv	a2,a5
	lw	a1,-116(s0)
	lw	a0,-28(s0)
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 2 539 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L144
	.loc 2 540 52
	lw	a5,-100(s0)
	addi	a5,a5,52
	.loc 2 540 22
	mv	a2,a5
	lw	a1,-28(s0)
	lw	a0,-28(s0)
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 2 540 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L145
	.loc 2 543 8
	lw	a5,-124(s0)
	beq	a5,zero,.L146
	.loc 2 543 32 discriminator 1
	lw	a5,-124(s0)
	lw	a5,16(a5)
	.loc 2 543 23 discriminator 1
	beq	a5,zero,.L146
	.loc 2 544 15
	lw	a5,-124(s0)
	lw	a5,16(a5)
	.loc 2 544 28
	li	a4,1
	sb	a4,16(a5)
	j	.L117
.L138:
	.loc 2 510 13
	nop
	j	.L117
.L146:
	.loc 2 547 1
	nop
.L117:
	.loc 2 552 67
	lw	a5,-100(s0)
	addi	a3,a5,28
	.loc 2 552 22
	lw	a5,-124(s0)
	beq	a5,zero,.L130
	.loc 2 552 22 is_stmt 0 discriminator 1
	lw	a5,-124(s0)
	j	.L131
.L130:
	.loc 2 552 22 discriminator 2
	li	a5,0
.L131:
	.loc 2 552 22 discriminator 4
	addi	a1,s0,-84
	mv	a6,a5
	lw	a5,-112(s0)
	lw	a4,-28(s0)
	lw	a2,-24(s0)
	lw	a0,-100(s0)
	call	mbedtls_ecp_muladd_restartable
	sw	a0,-20(s0)
	.loc 2 552 13 is_stmt 1 discriminator 5
	lw	a5,-20(s0)
	bne	a5,zero,.L147
	.loc 2 555 9
	addi	a5,s0,-84
	mv	a0,a5
	call	mbedtls_ecp_is_zero
	mv	a5,a0
	.loc 2 555 8 discriminator 1
	beq	a5,zero,.L133
	.loc 2 556 13
	li	a5,-20480
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 2 557 9
	j	.L120
.L133:
	.loc 2 564 54
	lw	a5,-100(s0)
	addi	a3,a5,52
	.loc 2 564 22
	addi	a4,s0,-84
	addi	a5,s0,-84
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 2 564 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L148
	.loc 2 569 9
	addi	a5,s0,-84
	lw	a1,-116(s0)
	mv	a0,a5
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 569 8 discriminator 1
	beq	a5,zero,.L149
	.loc 2 570 13
	li	a5,-20480
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 2 571 9
	j	.L120
.L139:
	.loc 2 527 61
	nop
	j	.L120
.L140:
	.loc 2 532 42
	nop
	j	.L120
.L141:
	.loc 2 534 34
	nop
	j	.L120
.L142:
	.loc 2 536 67
	nop
	j	.L120
.L143:
	.loc 2 537 69
	nop
	j	.L120
.L144:
	.loc 2 539 66
	nop
	j	.L120
.L145:
	.loc 2 540 69
	nop
	j	.L120
.L147:
	.loc 2 552 29
	nop
	j	.L120
.L148:
	.loc 2 564 71
	nop
	j	.L120
.L149:
	.loc 2 574 1
	nop
.L120:
	.loc 2 575 5
	addi	a5,s0,-84
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 576 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 576 27 discriminator 1
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 577 5
	addi	a5,s0,-52
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 577 28 discriminator 1
	addi	a5,s0,-60
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 579 13
	lw	a5,-124(s0)
	beq	a5,zero,.L135
	.loc 2 579 13 discriminator 1
	lw	a5,-124(s0)
	lw	a5,16(a5)
	.loc 2 579 4 discriminator 1
	beq	a5,zero,.L135
	.loc 2 579 4 discriminator 3
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,1280
	beq	a4,a5,.L135
	.loc 2 579 25 discriminator 5
	lw	a5,-124(s0)
	lw	a5,16(a5)
	mv	a0,a5
	call	ecdsa_restart_ver_free
	.loc 2 579 73 discriminator 7
	lw	a5,-124(s0)
	lw	a5,16(a5)
	.loc 2 579 62 discriminator 7
	mv	a0,a5
	call	free
	.loc 2 579 93 discriminator 8
	lw	a5,-124(s0)
	sw	zero,16(a5)
.L135:
	.loc 2 579 11 discriminator 9
	lw	a5,-124(s0)
	beq	a5,zero,.L136
	.loc 2 579 17 discriminator 10
	lw	a5,-124(s0)
	lw	a5,4(a5)
	.loc 2 579 23 discriminator 10
	addi	a4,a5,-1
	lw	a5,-124(s0)
	sw	a4,4(a5)
.L136:
	.loc 2 581 12
	lw	a5,-20(s0)
.L137:
	.loc 2 582 1
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
.LFE29:
	.size	mbedtls_ecdsa_verify_restartable, .-mbedtls_ecdsa_verify_restartable
	.section	.text.mbedtls_ecdsa_verify,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdsa_verify
	.type	mbedtls_ecdsa_verify, @function
mbedtls_ecdsa_verify:
.LFB30:
	.loc 2 592 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	.loc 2 593 12
	li	a6,0
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_ecdsa_verify_restartable
	mv	a5,a0
	.loc 2 594 1
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
.LFE30:
	.size	mbedtls_ecdsa_verify, .-mbedtls_ecdsa_verify
	.section	.text.ecdsa_signature_to_asn1,"ax",@progbits
	.align	1
	.type	ecdsa_signature_to_asn1, @function
ecdsa_signature_to_asn1:
.LFB31:
	.loc 2 603 1
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
	.loc 2 604 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 605 19
	addi	a5,s0,-164
	li	a4,139
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 606 28
	addi	a5,s0,-164
	addi	a5,a5,139
	.loc 2 606 20
	sw	a5,-168(s0)
	.loc 2 607 12
	sw	zero,-24(s0)
	.loc 2 609 22
	addi	a4,s0,-164
	addi	a5,s0,-168
	lw	a2,-184(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_asn1_write_mpi
	sw	a0,-20(s0)
	.loc 2 609 13 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L153
	.loc 2 609 71 discriminator 2
	lw	a5,-20(s0)
	.loc 2 609 71 is_stmt 0
	j	.L159
.L153:
	.loc 2 609 87 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 610 22
	addi	a4,s0,-164
	addi	a5,s0,-168
	lw	a2,-180(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_asn1_write_mpi
	sw	a0,-20(s0)
	.loc 2 610 13 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L155
	.loc 2 610 71 discriminator 2
	lw	a5,-20(s0)
	.loc 2 610 71 is_stmt 0
	j	.L159
.L155:
	.loc 2 610 87 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 612 22
	addi	a4,s0,-164
	addi	a5,s0,-168
	lw	a2,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_asn1_write_len
	sw	a0,-20(s0)
	.loc 2 612 13 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L156
	.loc 2 612 73 discriminator 2
	lw	a5,-20(s0)
	.loc 2 612 73 is_stmt 0
	j	.L159
.L156:
	.loc 2 612 89 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 613 22
	addi	a4,s0,-164
	addi	a5,s0,-168
	li	a2,48
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_asn1_write_tag
	sw	a0,-20(s0)
	.loc 2 613 13 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L157
	.loc 2 613 81 discriminator 2
	lw	a5,-20(s0)
	.loc 2 613 81 is_stmt 0
	j	.L159
.L157:
	.loc 2 613 97 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 617 8
	lw	a4,-24(s0)
	lw	a5,-192(s0)
	bleu	a4,a5,.L158
	.loc 2 618 16
	li	a5,-20480
	addi	a5,a5,256
	j	.L159
.L158:
	.loc 2 621 5
	lw	a5,-168(s0)
	lw	a2,-24(s0)
	mv	a1,a5
	lw	a0,-188(s0)
	call	memcpy
	.loc 2 622 11
	lw	a5,-196(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 2 624 12
	li	a5,0
.L159:
	.loc 2 625 1
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
.LFE31:
	.size	ecdsa_signature_to_asn1, .-ecdsa_signature_to_asn1
	.section	.text.mbedtls_ecdsa_write_signature_restartable,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdsa_write_signature_restartable
	.type	mbedtls_ecdsa_write_signature_restartable, @function
mbedtls_ecdsa_write_signature_restartable:
.LFB32:
	.loc 2 637 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	sw	a5,-72(s0)
	sw	a6,-76(s0)
	sw	a7,-80(s0)
	mv	a5,a1
	sb	a5,-53(s0)
	.loc 2 638 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 640 8
	lw	a5,-80(s0)
	bne	a5,zero,.L161
	.loc 2 641 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L165
.L161:
	.loc 2 644 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 645 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 648 22
	lw	a0,-52(s0)
	.loc 2 648 76
	lw	a5,-52(s0)
	addi	a3,a5,96
	.loc 2 648 22
	lbu	a4,-53(s0)
	addi	a2,s0,-36
	addi	a1,s0,-28
	lw	a5,4(s0)
	sw	a5,4(sp)
	lw	a5,0(s0)
	sw	a5,0(sp)
	lw	a7,-80(s0)
	mv	a6,a4
	lw	a5,-64(s0)
	lw	a4,-60(s0)
	call	mbedtls_ecdsa_sign_det_restartable
	sw	a0,-20(s0)
	.loc 2 648 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L166
	.loc 2 667 22
	addi	a1,s0,-36
	addi	a5,s0,-28
	lw	a4,-76(s0)
	lw	a3,-72(s0)
	lw	a2,-68(s0)
	mv	a0,a5
	call	ecdsa_signature_to_asn1
	sw	a0,-20(s0)
	.loc 2 669 1
	j	.L164
.L166:
	.loc 2 648 135
	nop
.L164:
	.loc 2 670 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 671 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 673 12
	lw	a5,-20(s0)
.L165:
	.loc 2 674 1
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
.LFE32:
	.size	mbedtls_ecdsa_write_signature_restartable, .-mbedtls_ecdsa_write_signature_restartable
	.section	.text.mbedtls_ecdsa_write_signature,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdsa_write_signature
	.type	mbedtls_ecdsa_write_signature, @function
mbedtls_ecdsa_write_signature:
.LFB33:
	.loc 2 685 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	sw	a7,-48(s0)
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 2 686 12
	lbu	a1,-21(s0)
	sw	zero,4(sp)
	lw	a5,0(s0)
	sw	a5,0(sp)
	lw	a7,-48(s0)
	lw	a6,-44(s0)
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a0,-20(s0)
	call	mbedtls_ecdsa_write_signature_restartable
	mv	a5,a0
	.loc 2 689 1
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
.LFE33:
	.size	mbedtls_ecdsa_write_signature, .-mbedtls_ecdsa_write_signature
	.section	.text.mbedtls_ecdsa_read_signature,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdsa_read_signature
	.type	mbedtls_ecdsa_read_signature, @function
mbedtls_ecdsa_read_signature:
.LFB34:
	.loc 2 697 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	.loc 2 698 12
	li	a5,0
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_ecdsa_read_signature_restartable
	mv	a5,a0
	.loc 2 700 1
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
.LFE34:
	.size	mbedtls_ecdsa_read_signature, .-mbedtls_ecdsa_read_signature
	.section	.rodata
	.align	2
.LC0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ecdsa.c"
	.section	.text.mbedtls_ecdsa_read_signature_restartable,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdsa_read_signature_restartable
	.type	mbedtls_ecdsa_read_signature_restartable, @function
mbedtls_ecdsa_read_signature_restartable:
.LFB35:
	.loc 2 709 1
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
	.loc 2 710 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 711 20
	lw	a5,-64(s0)
	sw	a5,-28(s0)
	.loc 2 712 26
	lw	a4,-64(s0)
	lw	a5,-68(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 715 5
	addi	a5,s0,-40
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 716 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 718 16
	addi	a4,s0,-32
	addi	a5,s0,-28
	li	a3,48
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 718 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L172
	.loc 2 720 13
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,128
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 721 9
	j	.L173
.L172:
	.loc 2 724 11
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	.loc 2 724 8
	lw	a4,-24(s0)
	beq	a4,a5,.L174
	.loc 2 725 15
	li	a3,725
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-20480
	addi	a0,a5,128
	call	mbedtls_error_add
	sw	a0,-20(s0)
	.loc 2 727 9
	j	.L173
.L174:
	.loc 2 730 16
	addi	a4,s0,-40
	addi	a5,s0,-28
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_mpi
	sw	a0,-20(s0)
	.loc 2 730 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L175
	.loc 2 731 16
	addi	a4,s0,-48
	addi	a5,s0,-28
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_mpi
	sw	a0,-20(s0)
	.loc 2 730 56 discriminator 2
	lw	a5,-20(s0)
	beq	a5,zero,.L176
.L175:
	.loc 2 732 13
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,128
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 733 9
	j	.L173
.L176:
	.loc 2 743 16
	lw	a0,-52(s0)
	.loc 2 744 49
	lw	a5,-52(s0)
	addi	a3,a5,104
	.loc 2 743 16
	addi	a5,s0,-48
	addi	a4,s0,-40
	lw	a6,-72(s0)
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	call	mbedtls_ecdsa_verify_restartable
	sw	a0,-20(s0)
	.loc 2 743 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L179
	.loc 2 752 11
	lw	a5,-28(s0)
	.loc 2 752 8
	lw	a4,-24(s0)
	beq	a4,a5,.L180
	.loc 2 753 13
	li	a5,-20480
	addi	a5,a5,1024
	sw	a5,-20(s0)
	j	.L173
.L179:
	.loc 2 745 9
	nop
	j	.L173
.L180:
	.loc 2 756 1
	nop
.L173:
	.loc 2 757 5
	addi	a5,s0,-40
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 758 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 760 12
	lw	a5,-20(s0)
	.loc 2 761 1
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
.LFE35:
	.size	mbedtls_ecdsa_read_signature_restartable, .-mbedtls_ecdsa_read_signature_restartable
	.section	.text.mbedtls_ecdsa_genkey,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdsa_genkey
	.type	mbedtls_ecdsa_genkey, @function
mbedtls_ecdsa_genkey:
.LFB36:
	.loc 2 769 1
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
	.loc 2 770 9
	sw	zero,-20(s0)
	.loc 2 771 11
	lw	a5,-36(s0)
	lbu	a4,-37(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecp_group_load
	sw	a0,-20(s0)
	.loc 2 772 8
	lw	a5,-20(s0)
	beq	a5,zero,.L182
	.loc 2 773 16
	lw	a5,-20(s0)
	j	.L183
.L182:
	.loc 2 776 12
	lw	a0,-36(s0)
	lw	a5,-36(s0)
	addi	a1,a5,96
	lw	a5,-36(s0)
	addi	a5,a5,104
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	mv	a2,a5
	call	mbedtls_ecp_gen_keypair
	mv	a5,a0
.L183:
	.loc 2 778 1
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
.LFE36:
	.size	mbedtls_ecdsa_genkey, .-mbedtls_ecdsa_genkey
	.section	.text.mbedtls_ecdsa_from_keypair,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdsa_from_keypair
	.type	mbedtls_ecdsa_from_keypair, @function
mbedtls_ecdsa_from_keypair:
.LFB37:
	.loc 2 785 1
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
	.loc 2 786 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 787 16
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecp_group_copy
	sw	a0,-20(s0)
	.loc 2 787 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L185
	.loc 2 788 16
	lw	a5,-36(s0)
	addi	a4,a5,96
	lw	a5,-40(s0)
	addi	a5,a5,96
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 787 67 discriminator 2
	lw	a5,-20(s0)
	bne	a5,zero,.L185
	.loc 2 789 16
	lw	a5,-36(s0)
	addi	a4,a5,104
	lw	a5,-40(s0)
	addi	a5,a5,104
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_ecp_copy
	sw	a0,-20(s0)
	.loc 2 788 57
	lw	a5,-20(s0)
	beq	a5,zero,.L186
.L185:
	.loc 2 790 9
	lw	a0,-36(s0)
	call	mbedtls_ecdsa_free
.L186:
	.loc 2 793 12
	lw	a5,-20(s0)
	.loc 2 794 1
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
.LFE37:
	.size	mbedtls_ecdsa_from_keypair, .-mbedtls_ecdsa_from_keypair
	.section	.text.mbedtls_ecdsa_init,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdsa_init
	.type	mbedtls_ecdsa_init, @function
mbedtls_ecdsa_init:
.LFB38:
	.loc 2 800 1
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
	.loc 2 801 5
	lw	a0,-20(s0)
	call	mbedtls_ecp_keypair_init
	.loc 2 802 1
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
.LFE38:
	.size	mbedtls_ecdsa_init, .-mbedtls_ecdsa_init
	.section	.text.mbedtls_ecdsa_free,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdsa_free
	.type	mbedtls_ecdsa_free, @function
mbedtls_ecdsa_free:
.LFB39:
	.loc 2 808 1
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
	.loc 2 809 8
	lw	a5,-20(s0)
	beq	a5,zero,.L192
	.loc 2 813 5
	lw	a0,-20(s0)
	call	mbedtls_ecp_keypair_free
	j	.L189
.L192:
	.loc 2 810 9
	nop
.L189:
	.loc 2 814 1
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
	.size	mbedtls_ecdsa_free, .-mbedtls_ecdsa_free
	.section	.text.mbedtls_ecdsa_restart_init,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdsa_restart_init
	.type	mbedtls_ecdsa_restart_init, @function
mbedtls_ecdsa_restart_init:
.LFB40:
	.loc 2 821 1
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
	.loc 2 822 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_ecp_restart_init
	.loc 2 824 14
	lw	a5,-20(s0)
	sw	zero,16(a5)
	.loc 2 825 14
	lw	a5,-20(s0)
	sw	zero,20(a5)
	.loc 2 827 14
	lw	a5,-20(s0)
	sw	zero,24(a5)
	.loc 2 829 1
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
	.size	mbedtls_ecdsa_restart_init, .-mbedtls_ecdsa_restart_init
	.section	.text.mbedtls_ecdsa_restart_free,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdsa_restart_free
	.type	mbedtls_ecdsa_restart_free, @function
mbedtls_ecdsa_restart_free:
.LFB41:
	.loc 2 835 1
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
	.loc 2 836 8
	lw	a5,-20(s0)
	beq	a5,zero,.L197
	.loc 2 840 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_ecp_restart_free
	.loc 2 842 5
	lw	a5,-20(s0)
	lw	a5,16(a5)
	mv	a0,a5
	call	ecdsa_restart_ver_free
	.loc 2 843 13
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 2 843 5
	mv	a0,a5
	call	free
	.loc 2 844 14
	lw	a5,-20(s0)
	sw	zero,16(a5)
	.loc 2 846 5
	lw	a5,-20(s0)
	lw	a5,20(a5)
	mv	a0,a5
	call	ecdsa_restart_sig_free
	.loc 2 847 13
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 2 847 5
	mv	a0,a5
	call	free
	.loc 2 848 14
	lw	a5,-20(s0)
	sw	zero,20(a5)
	.loc 2 851 5
	lw	a5,-20(s0)
	lw	a5,24(a5)
	mv	a0,a5
	call	ecdsa_restart_det_free
	.loc 2 852 13
	lw	a5,-20(s0)
	lw	a5,24(a5)
	.loc 2 852 5
	mv	a0,a5
	call	free
	.loc 2 853 14
	lw	a5,-20(s0)
	sw	zero,24(a5)
	j	.L194
.L197:
	.loc 2 837 9
	nop
.L194:
	.loc 2 855 1
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
	.size	mbedtls_ecdsa_restart_free, .-mbedtls_ecdsa_restart_free
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecp.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecdsa.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/hmac_drbg.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/asn1.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/asn1write.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/bignum_internal.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1758
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x23
	.4byte	.LASF188
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
	.uleb128 0x13
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
	.uleb128 0x24
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xa
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0xc
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x25
	.byte	0x4
	.uleb128 0x22
	.4byte	0xa1
	.uleb128 0x5
	.4byte	0x32
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x13
	.4byte	0xad
	.uleb128 0x5
	.4byte	0xb4
	.uleb128 0x5
	.4byte	0xc8
	.uleb128 0x22
	.4byte	0xbe
	.uleb128 0x26
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x5
	.byte	0xd1
	.byte	0xd
	.4byte	0xd5
	.uleb128 0x1d
	.4byte	0x68
	.4byte	0xee
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x1
	.4byte	0xa8
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x6
	.byte	0xa9
	.byte	0x11
	.4byte	0x89
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x6
	.byte	0xaa
	.byte	0x12
	.4byte	0x95
	.uleb128 0x10
	.4byte	.LASF19
	.byte	0x8
	.byte	0x6
	.byte	0xd0
	.byte	0x10
	.4byte	0x135
	.uleb128 0x7
	.string	"p"
	.byte	0x6
	.byte	0xd5
	.byte	0x17
	.4byte	0x135
	.byte	0
	.uleb128 0x7
	.string	"s"
	.byte	0x6
	.byte	0xe2
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x7
	.string	"n"
	.byte	0x6
	.byte	0xe5
	.byte	0x14
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	0xfa
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x6
	.byte	0xf0
	.byte	0x1
	.4byte	0x106
	.uleb128 0x13
	.4byte	0x13a
	.uleb128 0x18
	.4byte	0x32
	.byte	0x7
	.byte	0x66
	.byte	0xe
	.4byte	0x1ac
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x7
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x7
	.byte	0x75
	.byte	0x3
	.4byte	0x14b
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x18
	.byte	0x7
	.byte	0x9e
	.byte	0x10
	.4byte	0x1e7
	.uleb128 0x7
	.string	"X"
	.byte	0x7
	.byte	0x9f
	.byte	0x11
	.4byte	0x13a
	.byte	0
	.uleb128 0x7
	.string	"Y"
	.byte	0x7
	.byte	0xa0
	.byte	0x11
	.4byte	0x13a
	.byte	0x8
	.uleb128 0x7
	.string	"Z"
	.byte	0x7
	.byte	0xa1
	.byte	0x11
	.4byte	0x13a
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x7
	.byte	0xa3
	.byte	0x1
	.4byte	0x1b8
	.uleb128 0x13
	.4byte	0x1e7
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x60
	.byte	0x7
	.byte	0xe9
	.byte	0x10
	.4byte	0x2ba
	.uleb128 0x7
	.string	"id"
	.byte	0x7
	.byte	0xea
	.byte	0x1a
	.4byte	0x1ac
	.byte	0
	.uleb128 0x7
	.string	"P"
	.byte	0x7
	.byte	0xeb
	.byte	0x11
	.4byte	0x13a
	.byte	0x4
	.uleb128 0x7
	.string	"A"
	.byte	0x7
	.byte	0xec
	.byte	0x11
	.4byte	0x13a
	.byte	0xc
	.uleb128 0x7
	.string	"B"
	.byte	0x7
	.byte	0xf1
	.byte	0x11
	.4byte	0x13a
	.byte	0x14
	.uleb128 0x7
	.string	"G"
	.byte	0x7
	.byte	0xf3
	.byte	0x17
	.4byte	0x1e7
	.byte	0x1c
	.uleb128 0x7
	.string	"N"
	.byte	0x7
	.byte	0xf4
	.byte	0x11
	.4byte	0x13a
	.byte	0x34
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x7
	.byte	0xf5
	.byte	0xc
	.4byte	0x76
	.byte	0x3c
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x7
	.byte	0xf6
	.byte	0xc
	.4byte	0x76
	.byte	0x40
	.uleb128 0x7
	.string	"h"
	.byte	0x7
	.byte	0xfb
	.byte	0x12
	.4byte	0x6f
	.byte	0x44
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x7
	.byte	0xfc
	.byte	0xa
	.4byte	0x2ce
	.byte	0x48
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x7
	.byte	0xfe
	.byte	0xa
	.4byte	0x2ec
	.byte	0x4c
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x7
	.byte	0xff
	.byte	0xa
	.4byte	0x2ec
	.byte	0x50
	.uleb128 0x1b
	.4byte	.LASF42
	.2byte	0x100
	.byte	0xb
	.4byte	0xa1
	.byte	0x54
	.uleb128 0x14
	.string	"T"
	.2byte	0x101
	.byte	0x18
	.4byte	0x2e7
	.byte	0x58
	.uleb128 0x1b
	.4byte	.LASF43
	.2byte	0x102
	.byte	0xc
	.4byte	0x76
	.byte	0x5c
	.byte	0
	.uleb128 0x1d
	.4byte	0x68
	.4byte	0x2c9
	.uleb128 0x1
	.4byte	0x2c9
	.byte	0
	.uleb128 0x5
	.4byte	0x13a
	.uleb128 0x5
	.4byte	0x2ba
	.uleb128 0x1d
	.4byte	0x68
	.4byte	0x2e7
	.uleb128 0x1
	.4byte	0x2e7
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x5
	.4byte	0x1e7
	.uleb128 0x5
	.4byte	0x2d3
	.uleb128 0x19
	.4byte	.LASF36
	.2byte	0x104
	.byte	0x1
	.4byte	0x1f8
	.uleb128 0x13
	.4byte	0x2f1
	.uleb128 0x19
	.4byte	.LASF44
	.2byte	0x16c
	.byte	0x28
	.4byte	0x30e
	.uleb128 0x1e
	.4byte	.LASF46
	.uleb128 0x19
	.4byte	.LASF45
	.2byte	0x173
	.byte	0x2b
	.4byte	0x31f
	.uleb128 0x1e
	.4byte	.LASF47
	.uleb128 0x27
	.byte	0x10
	.byte	0x7
	.2byte	0x178
	.byte	0x9
	.4byte	0x362
	.uleb128 0x1b
	.4byte	.LASF48
	.2byte	0x179
	.byte	0xe
	.4byte	0x6f
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF49
	.2byte	0x17a
	.byte	0xe
	.4byte	0x6f
	.byte	0x4
	.uleb128 0x14
	.string	"rsm"
	.2byte	0x17b
	.byte	0x22
	.4byte	0x362
	.byte	0x8
	.uleb128 0x14
	.string	"ma"
	.2byte	0x17c
	.byte	0x25
	.4byte	0x367
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	0x302
	.uleb128 0x5
	.4byte	0x313
	.uleb128 0x19
	.4byte	.LASF50
	.2byte	0x17d
	.byte	0x3
	.4byte	0x324
	.uleb128 0x28
	.4byte	.LASF51
	.byte	0x80
	.byte	0x7
	.2byte	0x1ac
	.byte	0x10
	.4byte	0x3aa
	.uleb128 0x14
	.string	"grp"
	.2byte	0x1ad
	.byte	0x17
	.4byte	0x2f1
	.byte	0
	.uleb128 0x14
	.string	"d"
	.2byte	0x1ae
	.byte	0x11
	.4byte	0x13a
	.byte	0x60
	.uleb128 0x14
	.string	"Q"
	.2byte	0x1af
	.byte	0x17
	.4byte	0x1e7
	.byte	0x68
	.byte	0
	.uleb128 0x19
	.4byte	.LASF51
	.2byte	0x1b1
	.byte	0x1
	.4byte	0x378
	.uleb128 0x13
	.4byte	0x3aa
	.uleb128 0x18
	.4byte	0x32
	.byte	0x8
	.byte	0x2f
	.byte	0xe
	.4byte	0x410
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0x11
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x12
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x8
	.byte	0x3c
	.byte	0x3
	.4byte	0x3bb
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x8
	.byte	0x6b
	.byte	0x22
	.4byte	0x42d
	.uleb128 0x13
	.4byte	0x41c
	.uleb128 0x1e
	.4byte	.LASF65
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0xc
	.byte	0x8
	.byte	0x7a
	.byte	0x10
	.4byte	0x467
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0x8
	.byte	0x7c
	.byte	0x1e
	.4byte	0x467
	.byte	0
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x8
	.byte	0x84
	.byte	0xb
	.4byte	0xa1
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF69
	.byte	0x8
	.byte	0x88
	.byte	0xb
	.4byte	0xa1
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	0x428
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x8
	.byte	0x8a
	.byte	0x3
	.4byte	0x432
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x9
	.byte	0x44
	.byte	0x1d
	.4byte	0x3aa
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x9
	.byte	0x4d
	.byte	0x2a
	.4byte	0x490
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x14
	.byte	0x2
	.byte	0x26
	.byte	0x8
	.4byte	0x4c3
	.uleb128 0x7
	.string	"u1"
	.byte	0x2
	.byte	0x27
	.byte	0x11
	.4byte	0x13a
	.byte	0
	.uleb128 0x7
	.string	"u2"
	.byte	0x2
	.byte	0x27
	.byte	0x15
	.4byte	0x13a
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x2
	.byte	0x2b
	.byte	0x7
	.4byte	0x63c
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0x9
	.byte	0x54
	.byte	0x2a
	.4byte	0x4cf
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0x1c
	.byte	0x2
	.byte	0x4a
	.byte	0x8
	.4byte	0x51a
	.uleb128 0x8
	.4byte	.LASF76
	.byte	0x2
	.byte	0x4b
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x8
	.4byte	.LASF77
	.byte	0x2
	.byte	0x4c
	.byte	0x9
	.4byte	0x68
	.byte	0x4
	.uleb128 0x7
	.string	"k"
	.byte	0x2
	.byte	0x4d
	.byte	0x11
	.4byte	0x13a
	.byte	0x8
	.uleb128 0x7
	.string	"r"
	.byte	0x2
	.byte	0x4e
	.byte	0x11
	.4byte	0x13a
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x2
	.byte	0x53
	.byte	0x7
	.4byte	0x655
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x9
	.byte	0x5c
	.byte	0x2a
	.4byte	0x526
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x68
	.byte	0x2
	.byte	0x73
	.byte	0x8
	.4byte	0x54e
	.uleb128 0x8
	.4byte	.LASF80
	.byte	0x2
	.byte	0x74
	.byte	0x1f
	.4byte	0x630
	.byte	0
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x2
	.byte	0x78
	.byte	0x7
	.4byte	0x674
	.byte	0x64
	.byte	0
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9
	.byte	0x62
	.byte	0x9
	.4byte	0x58c
	.uleb128 0x7
	.string	"ecp"
	.byte	0x9
	.byte	0x63
	.byte	0x1d
	.4byte	0x36c
	.byte	0
	.uleb128 0x7
	.string	"ver"
	.byte	0x9
	.byte	0x65
	.byte	0x24
	.4byte	0x58c
	.byte	0x10
	.uleb128 0x7
	.string	"sig"
	.byte	0x9
	.byte	0x66
	.byte	0x24
	.4byte	0x591
	.byte	0x14
	.uleb128 0x7
	.string	"det"
	.byte	0x9
	.byte	0x68
	.byte	0x24
	.4byte	0x596
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.4byte	0x484
	.uleb128 0x5
	.4byte	0x4c3
	.uleb128 0x5
	.4byte	0x51a
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x9
	.byte	0x6a
	.byte	0x3
	.4byte	0x54e
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x64
	.byte	0xa
	.byte	0x4a
	.byte	0x10
	.4byte	0x61b
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0xa
	.byte	0x4d
	.byte	0x1a
	.4byte	0x46c
	.byte	0
	.uleb128 0x7
	.string	"V"
	.byte	0xa
	.byte	0x4e
	.byte	0x13
	.4byte	0x61b
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF83
	.byte	0xa
	.byte	0x4f
	.byte	0x9
	.4byte	0x68
	.byte	0x4c
	.uleb128 0x8
	.4byte	.LASF84
	.byte	0xa
	.byte	0x52
	.byte	0xc
	.4byte	0x76
	.byte	0x50
	.uleb128 0x8
	.4byte	.LASF85
	.byte	0xa
	.byte	0x53
	.byte	0x9
	.4byte	0x68
	.byte	0x54
	.uleb128 0x8
	.4byte	.LASF86
	.byte	0xa
	.byte	0x55
	.byte	0x9
	.4byte	0x68
	.byte	0x58
	.uleb128 0x8
	.4byte	.LASF87
	.byte	0xa
	.byte	0x58
	.byte	0xa
	.4byte	0x62b
	.byte	0x5c
	.uleb128 0x8
	.4byte	.LASF88
	.byte	0xa
	.byte	0x59
	.byte	0xb
	.4byte	0xa1
	.byte	0x60
	.byte	0
	.uleb128 0x1f
	.4byte	0x32
	.4byte	0x62b
	.uleb128 0x20
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0x5
	.4byte	0xd5
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0xa
	.byte	0x66
	.byte	0x3
	.4byte	0x5a7
	.uleb128 0x18
	.4byte	0x32
	.byte	0x2
	.byte	0x28
	.byte	0xa
	.4byte	0x655
	.uleb128 0x4
	.4byte	.LASF89
	.byte	0
	.uleb128 0x4
	.4byte	.LASF90
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.4byte	0x32
	.byte	0x2
	.byte	0x4f
	.byte	0xa
	.4byte	0x674
	.uleb128 0x4
	.4byte	.LASF91
	.byte	0
	.uleb128 0x4
	.4byte	.LASF92
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF93
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.4byte	0x32
	.byte	0x2
	.byte	0x75
	.byte	0xa
	.4byte	0x68d
	.uleb128 0x4
	.4byte	.LASF94
	.byte	0
	.uleb128 0x4
	.4byte	.LASF95
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x29a
	.4byte	0x69f
	.uleb128 0x1
	.4byte	0x69f
	.byte	0
	.uleb128 0x5
	.4byte	0x36c
	.uleb128 0x11
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x291
	.4byte	0x6b6
	.uleb128 0x1
	.4byte	0x69f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x288
	.4byte	0x6c8
	.uleb128 0x1
	.4byte	0x6c8
	.byte	0
	.uleb128 0x5
	.4byte	0x3aa
	.uleb128 0x11
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x26f
	.4byte	0x6df
	.uleb128 0x1
	.4byte	0x6c8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x2a8
	.4byte	0x68
	.4byte	0x6fa
	.uleb128 0x1
	.4byte	0x2e7
	.uleb128 0x1
	.4byte	0x6fa
	.byte	0
	.uleb128 0x5
	.4byte	0x1f3
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x2b5
	.4byte	0x68
	.4byte	0x71a
	.uleb128 0x1
	.4byte	0x71a
	.uleb128 0x1
	.4byte	0x71f
	.byte	0
	.uleb128 0x5
	.4byte	0x2f1
	.uleb128 0x5
	.4byte	0x2fd
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x4d9
	.4byte	0x68
	.4byte	0x74e
	.uleb128 0x1
	.4byte	0x71a
	.uleb128 0x1
	.4byte	0x2c9
	.uleb128 0x1
	.4byte	0x2e7
	.uleb128 0x1
	.4byte	0x74e
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x5
	.4byte	0xc9
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x369
	.4byte	0x68
	.4byte	0x76e
	.uleb128 0x1
	.4byte	0x71a
	.uleb128 0x1
	.4byte	0x1ac
	.byte	0
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0xb
	.2byte	0x21d
	.4byte	0x68
	.4byte	0x78e
	.uleb128 0x1
	.4byte	0x78e
	.uleb128 0x1
	.4byte	0x793
	.uleb128 0x1
	.4byte	0x2c9
	.byte	0
	.uleb128 0x5
	.4byte	0xa8
	.uleb128 0x5
	.4byte	0x39
	.uleb128 0xf
	.4byte	.LASF105
	.byte	0xb
	.byte	0xf5
	.byte	0x5
	.4byte	0x68
	.4byte	0x7bd
	.uleb128 0x1
	.4byte	0x78e
	.uleb128 0x1
	.4byte	0x793
	.uleb128 0x1
	.4byte	0x7bd
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x5
	.4byte	0x76
	.uleb128 0xf
	.4byte	.LASF106
	.byte	0xc
	.byte	0x1f
	.byte	0x8
	.4byte	0xa1
	.4byte	0x7e2
	.uleb128 0x1
	.4byte	0xa3
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xf
	.4byte	.LASF107
	.byte	0xd
	.byte	0x43
	.byte	0x5
	.4byte	0x68
	.4byte	0x802
	.uleb128 0x1
	.4byte	0x78e
	.uleb128 0x1
	.4byte	0x793
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0xf
	.4byte	.LASF108
	.byte	0xd
	.byte	0x35
	.byte	0x5
	.4byte	0x68
	.4byte	0x822
	.uleb128 0x1
	.4byte	0x78e
	.uleb128 0x1
	.4byte	0x793
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xf
	.4byte	.LASF109
	.byte	0xd
	.byte	0x67
	.byte	0x5
	.4byte	0x68
	.4byte	0x842
	.uleb128 0x1
	.4byte	0x78e
	.uleb128 0x1
	.4byte	0x793
	.uleb128 0x1
	.4byte	0x842
	.byte	0
	.uleb128 0x5
	.4byte	0x146
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x2cc
	.4byte	0x68
	.4byte	0x85d
	.uleb128 0x1
	.4byte	0x2e7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x452
	.4byte	0x68
	.4byte	0x891
	.uleb128 0x1
	.4byte	0x71a
	.uleb128 0x1
	.4byte	0x2e7
	.uleb128 0x1
	.4byte	0x842
	.uleb128 0x1
	.4byte	0x6fa
	.uleb128 0x1
	.4byte	0x842
	.uleb128 0x1
	.4byte	0x6fa
	.uleb128 0x1
	.4byte	0x69f
	.byte	0
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0xa
	.2byte	0x17a
	.4byte	0x68
	.4byte	0x8b1
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x1
	.4byte	0xa8
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xf
	.4byte	.LASF113
	.byte	0xa
	.byte	0xdd
	.byte	0x5
	.4byte	0x68
	.4byte	0x8d6
	.uleb128 0x1
	.4byte	0x8d6
	.uleb128 0x1
	.4byte	0x467
	.uleb128 0x1
	.4byte	0x793
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x5
	.4byte	0x630
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x248
	.4byte	0x68
	.4byte	0x8fb
	.uleb128 0x1
	.4byte	0x842
	.uleb128 0x1
	.4byte	0xa8
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xf
	.4byte	.LASF115
	.byte	0x8
	.byte	0x95
	.byte	0x1a
	.4byte	0x467
	.4byte	0x911
	.uleb128 0x1
	.4byte	0x410
	.byte	0
	.uleb128 0x21
	.4byte	.LASF116
	.byte	0xe
	.byte	0x5e
	.4byte	0x922
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x276
	.4byte	0x934
	.uleb128 0x1
	.4byte	0x2e7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x132
	.4byte	0x68
	.4byte	0x94f
	.uleb128 0x1
	.4byte	0x2c9
	.uleb128 0x1
	.4byte	0x842
	.byte	0
	.uleb128 0xf
	.4byte	.LASF119
	.byte	0xf
	.byte	0x4f
	.byte	0x5
	.4byte	0x68
	.4byte	0x974
	.uleb128 0x1
	.4byte	0x2c9
	.uleb128 0x1
	.4byte	0x2c9
	.uleb128 0x1
	.4byte	0x842
	.uleb128 0x1
	.4byte	0x842
	.byte	0
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x2d5
	.4byte	0x68
	.4byte	0x994
	.uleb128 0x1
	.4byte	0x2c9
	.uleb128 0x1
	.4byte	0x842
	.uleb128 0x1
	.4byte	0x842
	.byte	0
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x30f
	.4byte	0x68
	.4byte	0x9b4
	.uleb128 0x1
	.4byte	0x2c9
	.uleb128 0x1
	.4byte	0x842
	.uleb128 0x1
	.4byte	0x842
	.byte	0
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x192
	.4byte	0x68
	.4byte	0x9d4
	.uleb128 0x1
	.4byte	0x71f
	.uleb128 0x1
	.4byte	0x69f
	.uleb128 0x1
	.4byte	0x6f
	.byte	0
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x35d
	.4byte	0x68
	.4byte	0x9f4
	.uleb128 0x1
	.4byte	0x2c9
	.uleb128 0x1
	.4byte	0x842
	.uleb128 0x1
	.4byte	0x842
	.byte	0
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x3e9
	.4byte	0x68
	.4byte	0xa28
	.uleb128 0x1
	.4byte	0x71a
	.uleb128 0x1
	.4byte	0x2e7
	.uleb128 0x1
	.4byte	0x842
	.uleb128 0x1
	.4byte	0x6fa
	.uleb128 0x1
	.4byte	0x74e
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x1
	.4byte	0x69f
	.byte	0
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0x7
	.2byte	0x49c
	.4byte	0x68
	.4byte	0xa4d
	.uleb128 0x1
	.4byte	0x71f
	.uleb128 0x1
	.4byte	0x2c9
	.uleb128 0x1
	.4byte	0x74e
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0xf
	.4byte	.LASF126
	.byte	0xe
	.byte	0x5a
	.byte	0x7
	.4byte	0xa1
	.4byte	0xa68
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF189
	.byte	0x7
	.2byte	0x211
	.byte	0x5
	.4byte	0x68
	.uleb128 0x11
	.4byte	.LASF127
	.byte	0x7
	.2byte	0x25d
	.4byte	0xa87
	.uleb128 0x1
	.4byte	0x2e7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF128
	.byte	0x6
	.2byte	0x2ab
	.4byte	0x68
	.4byte	0xaa2
	.uleb128 0x1
	.4byte	0x842
	.uleb128 0x1
	.4byte	0xee
	.byte	0
	.uleb128 0x9
	.4byte	.LASF129
	.byte	0x6
	.2byte	0x2e3
	.4byte	0x68
	.4byte	0xac2
	.uleb128 0x1
	.4byte	0x2c9
	.uleb128 0x1
	.4byte	0x842
	.uleb128 0x1
	.4byte	0x842
	.byte	0
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0x6
	.2byte	0x28d
	.4byte	0x68
	.4byte	0xadd
	.uleb128 0x1
	.4byte	0x842
	.uleb128 0x1
	.4byte	0x842
	.byte	0
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0x6
	.2byte	0x275
	.4byte	0x68
	.4byte	0xaf8
	.uleb128 0x1
	.4byte	0x2c9
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0x6
	.2byte	0x227
	.4byte	0x68
	.4byte	0xb18
	.uleb128 0x1
	.4byte	0x2c9
	.uleb128 0x1
	.4byte	0x793
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0xa
	.2byte	0x182
	.4byte	0xb2a
	.uleb128 0x1
	.4byte	0x8d6
	.byte	0
	.uleb128 0x21
	.4byte	.LASF134
	.byte	0xa
	.byte	0x74
	.4byte	0xb3b
	.uleb128 0x1
	.4byte	0x8d6
	.byte	0
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0x6
	.2byte	0x103
	.4byte	0xb4d
	.uleb128 0x1
	.4byte	0x2c9
	.byte	0
	.uleb128 0x21
	.4byte	.LASF136
	.byte	0x6
	.byte	0xfa
	.4byte	0xb5e
	.uleb128 0x1
	.4byte	0x2c9
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF137
	.2byte	0x342
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb83
	.uleb128 0x2
	.string	"ctx"
	.2byte	0x342
	.byte	0x3c
	.4byte	0xb83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x59b
	.uleb128 0x1c
	.4byte	.LASF138
	.2byte	0x334
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbad
	.uleb128 0x2
	.string	"ctx"
	.2byte	0x334
	.byte	0x3c
	.4byte	0xb83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF139
	.2byte	0x327
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbd2
	.uleb128 0x2
	.string	"ctx"
	.2byte	0x327
	.byte	0x30
	.4byte	0xbd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x478
	.uleb128 0x1c
	.4byte	.LASF140
	.2byte	0x31f
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbfc
	.uleb128 0x2
	.string	"ctx"
	.2byte	0x31f
	.byte	0x30
	.4byte	0xbd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF141
	.2byte	0x310
	.4byte	0x68
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc43
	.uleb128 0x2
	.string	"ctx"
	.2byte	0x310
	.byte	0x37
	.4byte	0xbd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"key"
	.2byte	0x310
	.byte	0x57
	.4byte	0xc43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"ret"
	.2byte	0x312
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x3b6
	.uleb128 0xd
	.4byte	.LASF142
	.2byte	0x2ff
	.4byte	0x68
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcad
	.uleb128 0x2
	.string	"ctx"
	.2byte	0x2ff
	.byte	0x31
	.4byte	0xbd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"gid"
	.2byte	0x2ff
	.byte	0x4b
	.4byte	0x1ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x3
	.4byte	.LASF143
	.2byte	0x300
	.byte	0x20
	.4byte	0x62b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF144
	.2byte	0x300
	.byte	0x4f
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ret"
	.2byte	0x302
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF145
	.2byte	0x2c1
	.4byte	0x68
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd82
	.uleb128 0x2
	.string	"ctx"
	.2byte	0x2c1
	.byte	0x45
	.4byte	0xbd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF146
	.2byte	0x2c2
	.byte	0x43
	.4byte	0x793
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF147
	.2byte	0x2c2
	.byte	0x50
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.string	"sig"
	.2byte	0x2c3
	.byte	0x43
	.4byte	0x793
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.4byte	.LASF148
	.2byte	0x2c3
	.byte	0x4f
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.4byte	.LASF149
	.2byte	0x2c4
	.byte	0x49
	.4byte	0xb83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.string	"ret"
	.2byte	0x2c6
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"p"
	.2byte	0x2c7
	.byte	0x14
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.string	"end"
	.2byte	0x2c8
	.byte	0x1a
	.4byte	0x793
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"len"
	.2byte	0x2c9
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"r"
	.2byte	0x2ca
	.byte	0x11
	.4byte	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"s"
	.2byte	0x2ca
	.byte	0x14
	.4byte	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.4byte	.LASF155
	.2byte	0x2f4
	.4byte	.L173
	.byte	0
	.uleb128 0xd
	.4byte	.LASF150
	.2byte	0x2b6
	.4byte	0x68
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xde7
	.uleb128 0x2
	.string	"ctx"
	.2byte	0x2b6
	.byte	0x39
	.4byte	0xbd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF146
	.2byte	0x2b7
	.byte	0x37
	.4byte	0x793
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF147
	.2byte	0x2b7
	.byte	0x44
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.string	"sig"
	.2byte	0x2b8
	.byte	0x37
	.4byte	0x793
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF148
	.2byte	0x2b8
	.byte	0x43
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xd
	.4byte	.LASF151
	.2byte	0x2a7
	.4byte	0x68
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe88
	.uleb128 0x2
	.string	"ctx"
	.2byte	0x2a7
	.byte	0x3a
	.4byte	0xbd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF152
	.2byte	0x2a8
	.byte	0x35
	.4byte	0x410
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x3
	.4byte	.LASF146
	.2byte	0x2a9
	.byte	0x38
	.4byte	0x793
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF147
	.2byte	0x2a9
	.byte	0x45
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.string	"sig"
	.2byte	0x2aa
	.byte	0x32
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF153
	.2byte	0x2aa
	.byte	0x3e
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF148
	.2byte	0x2aa
	.byte	0x50
	.4byte	0x7bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF143
	.2byte	0x2ab
	.byte	0x29
	.4byte	0x62b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF144
	.2byte	0x2ac
	.byte	0x29
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF154
	.2byte	0x276
	.4byte	0x68
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf70
	.uleb128 0x2
	.string	"ctx"
	.2byte	0x276
	.byte	0x46
	.4byte	0xbd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF152
	.2byte	0x277
	.byte	0x41
	.4byte	0x410
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x3
	.4byte	.LASF146
	.2byte	0x278
	.byte	0x44
	.4byte	0x793
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF147
	.2byte	0x278
	.byte	0x51
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.string	"sig"
	.2byte	0x279
	.byte	0x3e
	.4byte	0xa8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.4byte	.LASF153
	.2byte	0x279
	.byte	0x4a
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.4byte	.LASF148
	.2byte	0x279
	.byte	0x5c
	.4byte	0x7bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3
	.4byte	.LASF143
	.2byte	0x27a
	.byte	0x35
	.4byte	0x62b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3
	.4byte	.LASF144
	.2byte	0x27b
	.byte	0x35
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.4byte	.LASF149
	.2byte	0x27c
	.byte	0x4a
	.4byte	0xb83
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x6
	.string	"ret"
	.2byte	0x27e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"r"
	.2byte	0x27f
	.byte	0x11
	.4byte	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.string	"s"
	.2byte	0x27f
	.byte	0x14
	.4byte	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LASF155
	.2byte	0x29d
	.4byte	.L164
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF174
	.byte	0x2
	.2byte	0x258
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1014
	.uleb128 0x2
	.string	"r"
	.2byte	0x258
	.byte	0x37
	.4byte	0x842
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2
	.string	"s"
	.2byte	0x258
	.byte	0x4d
	.4byte	0x842
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2
	.string	"sig"
	.2byte	0x259
	.byte	0x33
	.4byte	0xa8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x3
	.4byte	.LASF153
	.2byte	0x259
	.byte	0x3f
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x3
	.4byte	.LASF148
	.2byte	0x25a
	.byte	0x2c
	.4byte	0x7bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x6
	.string	"ret"
	.2byte	0x25c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"buf"
	.2byte	0x25d
	.byte	0x13
	.4byte	0x1014
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x6
	.string	"p"
	.2byte	0x25e
	.byte	0x14
	.4byte	0xa8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x6
	.string	"len"
	.2byte	0x25f
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.4byte	0x32
	.4byte	0x1024
	.uleb128 0x20
	.4byte	0x6f
	.byte	0x8a
	.byte	0
	.uleb128 0xd
	.4byte	.LASF156
	.2byte	0x24b
	.4byte	0x68
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1092
	.uleb128 0x2
	.string	"grp"
	.2byte	0x24b
	.byte	0x2d
	.4byte	0x71a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"buf"
	.2byte	0x24c
	.byte	0x2f
	.4byte	0x793
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF157
	.2byte	0x24c
	.byte	0x3b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.string	"Q"
	.2byte	0x24d
	.byte	0x33
	.4byte	0x6fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.string	"r"
	.2byte	0x24e
	.byte	0x2d
	.4byte	0x842
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"s"
	.2byte	0x24f
	.byte	0x2d
	.4byte	0x842
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xd
	.4byte	.LASF158
	.2byte	0x1df
	.4byte	0x68
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x119f
	.uleb128 0x2
	.string	"grp"
	.2byte	0x1df
	.byte	0x39
	.4byte	0x71a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2
	.string	"buf"
	.2byte	0x1e0
	.byte	0x3b
	.4byte	0x793
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x3
	.4byte	.LASF157
	.2byte	0x1e0
	.byte	0x47
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2
	.string	"Q"
	.2byte	0x1e1
	.byte	0x3f
	.4byte	0x6fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2
	.string	"r"
	.2byte	0x1e2
	.byte	0x39
	.4byte	0x842
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2
	.string	"s"
	.2byte	0x1e3
	.byte	0x39
	.4byte	0x842
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x3
	.4byte	.LASF149
	.2byte	0x1e4
	.byte	0x41
	.4byte	0xb83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x6
	.string	"ret"
	.2byte	0x1e6
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"e"
	.2byte	0x1e7
	.byte	0x11
	.4byte	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.4byte	.LASF159
	.2byte	0x1e7
	.byte	0x14
	.4byte	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"u1"
	.2byte	0x1e7
	.byte	0x1b
	.4byte	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"u2"
	.2byte	0x1e7
	.byte	0x1f
	.4byte	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.string	"R"
	.2byte	0x1e8
	.byte	0x17
	.4byte	0x1e7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x6
	.string	"pu1"
	.2byte	0x1e9
	.byte	0x12
	.4byte	0x2c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"pu2"
	.2byte	0x1e9
	.byte	0x1e
	.4byte	0x2c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF160
	.2byte	0x223
	.4byte	.L117
	.uleb128 0x12
	.4byte	.LASF155
	.2byte	0x23e
	.4byte	.L120
	.byte	0
	.uleb128 0xd
	.4byte	.LASF161
	.2byte	0x1cd
	.4byte	0x68
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x123a
	.uleb128 0x2
	.string	"grp"
	.2byte	0x1cd
	.byte	0x33
	.4byte	0x71a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"r"
	.2byte	0x1cd
	.byte	0x45
	.4byte	0x2c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"s"
	.2byte	0x1ce
	.byte	0x2d
	.4byte	0x2c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.string	"d"
	.2byte	0x1ce
	.byte	0x43
	.4byte	0x842
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.string	"buf"
	.2byte	0x1cf
	.byte	0x35
	.4byte	0x793
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF157
	.2byte	0x1cf
	.byte	0x41
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF152
	.2byte	0x1d0
	.byte	0x32
	.4byte	0x410
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x3
	.4byte	.LASF162
	.2byte	0x1d1
	.byte	0x26
	.4byte	0x62b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF163
	.2byte	0x1d3
	.byte	0x26
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF164
	.2byte	0x184
	.4byte	0x68
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x136c
	.uleb128 0x2
	.string	"grp"
	.2byte	0x184
	.byte	0x3b
	.4byte	0x71a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x2
	.string	"r"
	.2byte	0x185
	.byte	0x35
	.4byte	0x2c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2
	.string	"s"
	.2byte	0x185
	.byte	0x45
	.4byte	0x2c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x2
	.string	"d"
	.2byte	0x186
	.byte	0x3b
	.4byte	0x842
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2
	.string	"buf"
	.2byte	0x186
	.byte	0x53
	.4byte	0x793
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x3
	.4byte	.LASF157
	.2byte	0x186
	.byte	0x5f
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x3
	.4byte	.LASF152
	.2byte	0x187
	.byte	0x3a
	.4byte	0x410
	.uleb128 0x3
	.byte	0x91
	.sleb128 -297
	.uleb128 0x3
	.4byte	.LASF162
	.2byte	0x188
	.byte	0x2e
	.4byte	0x62b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x3
	.4byte	.LASF163
	.2byte	0x189
	.byte	0x2e
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.4byte	.LASF149
	.2byte	0x18a
	.byte	0x43
	.4byte	0xb83
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x6
	.string	"ret"
	.2byte	0x18c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF80
	.2byte	0x18d
	.byte	0x1f
	.4byte	0x630
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x15
	.4byte	.LASF144
	.2byte	0x18e
	.byte	0x20
	.4byte	0x8d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF165
	.2byte	0x18f
	.byte	0x13
	.4byte	0x136c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x15
	.4byte	.LASF166
	.2byte	0x190
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.4byte	.LASF67
	.2byte	0x191
	.byte	0x1e
	.4byte	0x467
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"h"
	.2byte	0x192
	.byte	0x11
	.4byte	0x13a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x12
	.4byte	.LASF167
	.2byte	0x1b4
	.4byte	.L92
	.uleb128 0x12
	.4byte	.LASF155
	.2byte	0x1c1
	.4byte	.L94
	.byte	0
	.uleb128 0x1f
	.4byte	0x32
	.4byte	0x137c
	.uleb128 0x20
	.4byte	0x6f
	.byte	0x83
	.byte	0
	.uleb128 0xd
	.4byte	.LASF168
	.2byte	0x173
	.4byte	0x68
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1408
	.uleb128 0x2
	.string	"grp"
	.2byte	0x173
	.byte	0x2b
	.4byte	0x71a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"r"
	.2byte	0x173
	.byte	0x3d
	.4byte	0x2c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"s"
	.2byte	0x173
	.byte	0x4d
	.4byte	0x2c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.string	"d"
	.2byte	0x174
	.byte	0x2b
	.4byte	0x842
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.string	"buf"
	.2byte	0x174
	.byte	0x43
	.4byte	0x793
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF157
	.2byte	0x174
	.byte	0x4f
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF143
	.2byte	0x175
	.byte	0x1e
	.4byte	0x62b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF144
	.2byte	0x175
	.byte	0x4d
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF169
	.byte	0x2
	.byte	0xf4
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1576
	.uleb128 0xb
	.string	"grp"
	.byte	0x2
	.byte	0xf4
	.byte	0x37
	.4byte	0x71a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0xb
	.string	"r"
	.byte	0x2
	.byte	0xf5
	.byte	0x31
	.4byte	0x2c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xb
	.string	"s"
	.byte	0x2
	.byte	0xf5
	.byte	0x41
	.4byte	0x2c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0xb
	.string	"d"
	.byte	0x2
	.byte	0xf6
	.byte	0x37
	.4byte	0x842
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xb
	.string	"buf"
	.byte	0x2
	.byte	0xf6
	.byte	0x4f
	.4byte	0x793
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0xe
	.4byte	.LASF157
	.byte	0x2
	.byte	0xf6
	.byte	0x5b
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0xe
	.4byte	.LASF143
	.byte	0x2
	.byte	0xf7
	.byte	0x2a
	.4byte	0x62b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0xe
	.4byte	.LASF144
	.byte	0x2
	.byte	0xf7
	.byte	0x59
	.4byte	0xa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xe
	.4byte	.LASF162
	.byte	0x2
	.byte	0xf8
	.byte	0x2a
	.4byte	0x62b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.4byte	.LASF163
	.byte	0x2
	.byte	0xf9
	.byte	0x2a
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.4byte	.LASF149
	.byte	0x2
	.byte	0xfa
	.byte	0x3f
	.4byte	0xb83
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.string	"ret"
	.byte	0xfc
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0xfc
	.byte	0xe
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0xfc
	.byte	0x19
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.4byte	.LASF170
	.byte	0xfd
	.byte	0xa
	.4byte	0x1576
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.4byte	.LASF171
	.byte	0xfd
	.byte	0x27
	.4byte	0x1576
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.string	"R"
	.byte	0xfe
	.byte	0x17
	.4byte	0x1e7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1a
	.string	"k"
	.byte	0xff
	.byte	0x11
	.4byte	0x13a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1a
	.string	"e"
	.byte	0xff
	.byte	0x14
	.4byte	0x13a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x6
	.string	"pk"
	.2byte	0x100
	.byte	0x12
	.4byte	0x2c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"pr"
	.2byte	0x100
	.byte	0x1c
	.4byte	0x2c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"mul"
	.byte	0x2
	.2byte	0x13c
	.byte	0x1
	.4byte	.L44
	.uleb128 0x12
	.4byte	.LASF172
	.2byte	0x14a
	.4byte	.L45
	.uleb128 0x12
	.4byte	.LASF155
	.2byte	0x167
	.4byte	.L47
	.byte	0
	.uleb128 0x5
	.4byte	0x68
	.uleb128 0x2e
	.4byte	.LASF173
	.byte	0x2
	.byte	0xe2
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15a5
	.uleb128 0xb
	.string	"gid"
	.byte	0x2
	.byte	0xe2
	.byte	0x2f
	.4byte	0x1ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF175
	.byte	0x2
	.byte	0xcc
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1630
	.uleb128 0xb
	.string	"grp"
	.byte	0x2
	.byte	0xcc
	.byte	0x30
	.4byte	0x71f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.string	"x"
	.byte	0x2
	.byte	0xcc
	.byte	0x42
	.4byte	0x2c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"buf"
	.byte	0x2
	.byte	0xcd
	.byte	0x2c
	.4byte	0x793
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.4byte	.LASF157
	.byte	0x2
	.byte	0xcd
	.byte	0x38
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.string	"ret"
	.byte	0xcf
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.4byte	.LASF176
	.byte	0xd0
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.4byte	.LASF177
	.byte	0xd1
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.4byte	.LASF155
	.byte	0x2
	.byte	0xdd
	.byte	0x1
	.4byte	.L21
	.byte	0
	.uleb128 0x17
	.4byte	.LASF178
	.byte	0x87
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1654
	.uleb128 0xb
	.string	"ctx"
	.byte	0x2
	.byte	0x87
	.byte	0x43
	.4byte	0x596
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF179
	.byte	0x7e
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1678
	.uleb128 0xb
	.string	"ctx"
	.byte	0x2
	.byte	0x7e
	.byte	0x43
	.4byte	0x596
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF180
	.byte	0x65
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x169c
	.uleb128 0xb
	.string	"ctx"
	.byte	0x2
	.byte	0x65
	.byte	0x43
	.4byte	0x591
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF181
	.byte	0x59
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16c0
	.uleb128 0xb
	.string	"ctx"
	.byte	0x2
	.byte	0x59
	.byte	0x43
	.4byte	0x591
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF182
	.byte	0x3b
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16e4
	.uleb128 0xb
	.string	"ctx"
	.byte	0x2
	.byte	0x3b
	.byte	0x43
	.4byte	0x58c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF183
	.byte	0x31
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1708
	.uleb128 0xb
	.string	"ctx"
	.byte	0x2
	.byte	0x31
	.byte	0x43
	.4byte	0x58c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.4byte	.LASF184
	.byte	0x1
	.byte	0x8e
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF185
	.byte	0x1
	.byte	0x8e
	.byte	0x29
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"low"
	.byte	0x1
	.byte	0x8e
	.byte	0x33
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.4byte	.LASF186
	.byte	0x1
	.byte	0x8f
	.byte	0x31
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xe
	.4byte	.LASF187
	.byte	0x1
	.byte	0x8f
	.byte	0x3b
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
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
	.uleb128 0x8
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x12
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x1c
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
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x2e
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xe4
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF74:
	.string	"mbedtls_ecdsa_restart_sig_ctx"
.LASF189:
	.string	"mbedtls_ecp_restart_is_enabled"
.LASF119:
	.string	"mbedtls_mpi_gcd_modinv_odd"
.LASF114:
	.string	"mbedtls_mpi_write_binary"
.LASF157:
	.string	"blen"
.LASF136:
	.string	"mbedtls_mpi_init"
.LASF69:
	.string	"hmac_ctx"
.LASF93:
	.string	"ecdsa_sig_modn"
.LASF171:
	.string	"p_key_tries"
.LASF64:
	.string	"mbedtls_md_type_t"
.LASF10:
	.string	"unsigned int"
.LASF101:
	.string	"mbedtls_ecp_group_copy"
.LASF103:
	.string	"mbedtls_ecp_group_load"
.LASF77:
	.string	"key_tries"
.LASF142:
	.string	"mbedtls_ecdsa_genkey"
.LASF107:
	.string	"mbedtls_asn1_write_tag"
.LASF181:
	.string	"ecdsa_restart_sig_init"
.LASF83:
	.string	"reseed_counter"
.LASF152:
	.string	"md_alg"
.LASF176:
	.string	"n_size"
.LASF56:
	.string	"MBEDTLS_MD_SHA224"
.LASF50:
	.string	"mbedtls_ecp_restart_ctx"
.LASF62:
	.string	"MBEDTLS_MD_SHA3_384"
.LASF138:
	.string	"mbedtls_ecdsa_restart_init"
.LASF147:
	.string	"hlen"
.LASF17:
	.string	"mbedtls_mpi_sint"
.LASF39:
	.string	"modp"
.LASF22:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF46:
	.string	"mbedtls_ecp_restart_mul"
.LASF51:
	.string	"mbedtls_ecp_keypair"
.LASF113:
	.string	"mbedtls_hmac_drbg_seed_buf"
.LASF16:
	.string	"mbedtls_f_rng_t"
.LASF90:
	.string	"ecdsa_ver_muladd"
.LASF44:
	.string	"mbedtls_ecp_restart_mul_ctx"
.LASF29:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF133:
	.string	"mbedtls_hmac_drbg_free"
.LASF124:
	.string	"mbedtls_ecp_mul_restartable"
.LASF14:
	.string	"uint32_t"
.LASF102:
	.string	"mbedtls_ecp_gen_keypair"
.LASF149:
	.string	"rs_ctx"
.LASF108:
	.string	"mbedtls_asn1_write_len"
.LASF32:
	.string	"MBEDTLS_ECP_DP_SECP256K1"
.LASF177:
	.string	"use_size"
.LASF40:
	.string	"t_pre"
.LASF35:
	.string	"mbedtls_ecp_point"
.LASF9:
	.string	"long long unsigned int"
.LASF186:
	.string	"file"
.LASF155:
	.string	"cleanup"
.LASF145:
	.string	"mbedtls_ecdsa_read_signature_restartable"
.LASF59:
	.string	"MBEDTLS_MD_SHA512"
.LASF144:
	.string	"p_rng"
.LASF185:
	.string	"high"
.LASF24:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF27:
	.string	"MBEDTLS_ECP_DP_BP384R1"
.LASF183:
	.string	"ecdsa_restart_ver_init"
.LASF30:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
.LASF166:
	.string	"grp_len"
.LASF112:
	.string	"mbedtls_hmac_drbg_random"
.LASF72:
	.string	"mbedtls_ecdsa_restart_ver"
.LASF66:
	.string	"mbedtls_md_context_t"
.LASF18:
	.string	"mbedtls_mpi_uint"
.LASF120:
	.string	"mbedtls_mpi_add_mpi"
.LASF12:
	.string	"size_t"
.LASF167:
	.string	"sign"
.LASF179:
	.string	"ecdsa_restart_det_init"
.LASF109:
	.string	"mbedtls_asn1_write_mpi"
.LASF173:
	.string	"mbedtls_ecdsa_can_do"
.LASF57:
	.string	"MBEDTLS_MD_SHA256"
.LASF33:
	.string	"MBEDTLS_ECP_DP_CURVE448"
.LASF105:
	.string	"mbedtls_asn1_get_tag"
.LASF99:
	.string	"mbedtls_ecp_keypair_init"
.LASF60:
	.string	"MBEDTLS_MD_SHA3_224"
.LASF172:
	.string	"modn"
.LASF82:
	.string	"mbedtls_hmac_drbg_context"
.LASF116:
	.string	"free"
.LASF96:
	.string	"mbedtls_ecp_restart_free"
.LASF79:
	.string	"mbedtls_ecdsa_restart_det"
.LASF47:
	.string	"mbedtls_ecp_restart_muladd"
.LASF43:
	.string	"T_size"
.LASF170:
	.string	"p_sign_tries"
.LASF88:
	.string	"p_entropy"
.LASF148:
	.string	"slen"
.LASF129:
	.string	"mbedtls_mpi_sub_mpi"
.LASF65:
	.string	"mbedtls_md_info_t"
.LASF162:
	.string	"f_rng_blind"
.LASF15:
	.string	"char"
.LASF122:
	.string	"mbedtls_ecp_check_budget"
.LASF71:
	.string	"mbedtls_ecdsa_restart_ver_ctx"
.LASF160:
	.string	"muladd"
.LASF118:
	.string	"mbedtls_mpi_copy"
.LASF165:
	.string	"data"
.LASF84:
	.string	"entropy_len"
.LASF70:
	.string	"mbedtls_ecdsa_context"
.LASF110:
	.string	"mbedtls_ecp_is_zero"
.LASF150:
	.string	"mbedtls_ecdsa_read_signature"
.LASF68:
	.string	"md_ctx"
.LASF63:
	.string	"MBEDTLS_MD_SHA3_512"
.LASF25:
	.string	"MBEDTLS_ECP_DP_SECP521R1"
.LASF8:
	.string	"long long int"
.LASF49:
	.string	"depth"
.LASF87:
	.string	"f_entropy"
.LASF121:
	.string	"mbedtls_mpi_mul_mpi"
.LASF38:
	.string	"nbits"
.LASF42:
	.string	"t_data"
.LASF151:
	.string	"mbedtls_ecdsa_write_signature"
.LASF52:
	.string	"MBEDTLS_MD_NONE"
.LASF95:
	.string	"ecdsa_det_sign"
.LASF85:
	.string	"prediction_resistance"
.LASF61:
	.string	"MBEDTLS_MD_SHA3_256"
.LASF104:
	.string	"mbedtls_asn1_get_mpi"
.LASF159:
	.string	"s_inv"
.LASF106:
	.string	"memcpy"
.LASF164:
	.string	"mbedtls_ecdsa_sign_det_restartable"
.LASF75:
	.string	"mbedtls_ecdsa_restart_sig"
.LASF100:
	.string	"mbedtls_ecp_copy"
.LASF175:
	.string	"derive_mpi"
.LASF174:
	.string	"ecdsa_signature_to_asn1"
.LASF45:
	.string	"mbedtls_ecp_restart_muladd_ctx"
.LASF134:
	.string	"mbedtls_hmac_drbg_init"
.LASF140:
	.string	"mbedtls_ecdsa_init"
.LASF135:
	.string	"mbedtls_mpi_free"
.LASF11:
	.string	"long double"
.LASF76:
	.string	"sign_tries"
.LASF158:
	.string	"mbedtls_ecdsa_verify_restartable"
.LASF28:
	.string	"MBEDTLS_ECP_DP_BP512R1"
.LASF125:
	.string	"mbedtls_ecp_gen_privkey"
.LASF20:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF139:
	.string	"mbedtls_ecdsa_free"
.LASF78:
	.string	"mbedtls_ecdsa_restart_det_ctx"
.LASF4:
	.string	"short int"
.LASF163:
	.string	"p_rng_blind"
.LASF23:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF91:
	.string	"ecdsa_sig_init"
.LASF123:
	.string	"mbedtls_mpi_mod_mpi"
.LASF6:
	.string	"long int"
.LASF130:
	.string	"mbedtls_mpi_cmp_mpi"
.LASF146:
	.string	"hash"
.LASF169:
	.string	"mbedtls_ecdsa_sign_restartable"
.LASF26:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF180:
	.string	"ecdsa_restart_sig_free"
.LASF117:
	.string	"mbedtls_ecp_point_free"
.LASF184:
	.string	"mbedtls_error_add"
.LASF86:
	.string	"reseed_interval"
.LASF137:
	.string	"mbedtls_ecdsa_restart_free"
.LASF67:
	.string	"md_info"
.LASF168:
	.string	"mbedtls_ecdsa_sign"
.LASF48:
	.string	"ops_done"
.LASF182:
	.string	"ecdsa_restart_ver_free"
.LASF21:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF143:
	.string	"f_rng"
.LASF127:
	.string	"mbedtls_ecp_point_init"
.LASF55:
	.string	"MBEDTLS_MD_SHA1"
.LASF131:
	.string	"mbedtls_mpi_shift_r"
.LASF53:
	.string	"MBEDTLS_MD_MD5"
.LASF97:
	.string	"mbedtls_ecp_restart_init"
.LASF7:
	.string	"long unsigned int"
.LASF13:
	.string	"int32_t"
.LASF37:
	.string	"pbits"
.LASF3:
	.string	"unsigned char"
.LASF115:
	.string	"mbedtls_md_info_from_type"
.LASF187:
	.string	"line"
.LASF132:
	.string	"mbedtls_mpi_read_binary"
.LASF156:
	.string	"mbedtls_ecdsa_verify"
.LASF31:
	.string	"MBEDTLS_ECP_DP_SECP224K1"
.LASF89:
	.string	"ecdsa_ver_init"
.LASF141:
	.string	"mbedtls_ecdsa_from_keypair"
.LASF73:
	.string	"state"
.LASF94:
	.string	"ecdsa_det_init"
.LASF111:
	.string	"mbedtls_ecp_muladd_restartable"
.LASF178:
	.string	"ecdsa_restart_det_free"
.LASF154:
	.string	"mbedtls_ecdsa_write_signature_restartable"
.LASF153:
	.string	"sig_size"
.LASF2:
	.string	"signed char"
.LASF19:
	.string	"mbedtls_mpi"
.LASF54:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF34:
	.string	"mbedtls_ecp_group_id"
.LASF5:
	.string	"short unsigned int"
.LASF98:
	.string	"mbedtls_ecp_keypair_free"
.LASF126:
	.string	"calloc"
.LASF58:
	.string	"MBEDTLS_MD_SHA384"
.LASF80:
	.string	"rng_ctx"
.LASF92:
	.string	"ecdsa_sig_mul"
.LASF36:
	.string	"mbedtls_ecp_group"
.LASF41:
	.string	"t_post"
.LASF81:
	.string	"mbedtls_ecdsa_restart_ctx"
.LASF188:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF161:
	.string	"mbedtls_ecdsa_sign_det_ext"
.LASF128:
	.string	"mbedtls_mpi_cmp_int"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ecdsa.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
