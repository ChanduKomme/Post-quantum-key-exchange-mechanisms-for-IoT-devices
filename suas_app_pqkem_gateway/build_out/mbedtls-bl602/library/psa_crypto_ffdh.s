	.file	"psa_crypto_ffdh.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_ffdh.c"
	.section	.text.psa_get_key_type,"ax",@progbits
	.align	1
	.type	psa_get_key_type, @function
psa_get_key_type:
.LFB48:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_struct.h"
	.loc 1 427 1
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
	.loc 1 428 22
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	.loc 1 429 1
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
.LFE48:
	.size	psa_get_key_type, .-psa_get_key_type
	.section	.text.mbedtls_psa_ffdh_set_prime_generator,"ax",@progbits
	.align	1
	.type	mbedtls_psa_ffdh_set_prime_generator, @function
mbedtls_psa_ffdh_set_prime_generator:
.LFB76:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_ffdh.c"
	.loc 2 33 1
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
	.loc 2 34 26
	sw	zero,-20(s0)
	.loc 2 35 26
	sw	zero,-24(s0)
	.loc 2 36 12
	sw	zero,-28(s0)
	.loc 2 37 12
	sw	zero,-32(s0)
	.loc 2 38 9
	li	a5,-110
	sw	a5,-36(s0)
	.loc 2 40 8
	lw	a5,-56(s0)
	bne	a5,zero,.L4
	.loc 2 40 18 discriminator 1
	lw	a5,-60(s0)
	bne	a5,zero,.L4
	.loc 2 41 16
	li	a5,-135
	j	.L5
.L4:
	.loc 2 75 5
	lw	a4,-52(s0)
	li	a5,1024
	beq	a4,a5,.L6
	lw	a4,-52(s0)
	li	a5,1024
	bgtu	a4,a5,.L7
	lw	a4,-52(s0)
	li	a5,768
	beq	a4,a5,.L8
	lw	a4,-52(s0)
	li	a5,768
	bgtu	a4,a5,.L7
	lw	a4,-52(s0)
	li	a5,512
	beq	a4,a5,.L9
	lw	a4,-52(s0)
	li	a5,512
	bgtu	a4,a5,.L7
	lw	a4,-52(s0)
	li	a5,256
	beq	a4,a5,.L10
	lw	a4,-52(s0)
	li	a5,384
	beq	a4,a5,.L11
	j	.L7
.L10:
	.loc 2 78 19
	lui	a5,%hi(dhm_P_2048.9)
	addi	a5,a5,%lo(dhm_P_2048.9)
	sw	a5,-20(s0)
	.loc 2 79 19
	lui	a5,%hi(dhm_G_2048.8)
	addi	a5,a5,%lo(dhm_G_2048.8)
	sw	a5,-24(s0)
	.loc 2 80 24
	li	a5,256
	sw	a5,-28(s0)
	.loc 2 81 24
	li	a5,1
	sw	a5,-32(s0)
	.loc 2 82 13
	j	.L12
.L11:
	.loc 2 86 19
	lui	a5,%hi(dhm_P_3072.7)
	addi	a5,a5,%lo(dhm_P_3072.7)
	sw	a5,-20(s0)
	.loc 2 87 19
	lui	a5,%hi(dhm_G_3072.6)
	addi	a5,a5,%lo(dhm_G_3072.6)
	sw	a5,-24(s0)
	.loc 2 88 24
	li	a5,384
	sw	a5,-28(s0)
	.loc 2 89 24
	li	a5,1
	sw	a5,-32(s0)
	.loc 2 90 13
	j	.L12
.L9:
	.loc 2 94 19
	lui	a5,%hi(dhm_P_4096.5)
	addi	a5,a5,%lo(dhm_P_4096.5)
	sw	a5,-20(s0)
	.loc 2 95 19
	lui	a5,%hi(dhm_G_4096.4)
	addi	a5,a5,%lo(dhm_G_4096.4)
	sw	a5,-24(s0)
	.loc 2 96 24
	li	a5,512
	sw	a5,-28(s0)
	.loc 2 97 24
	li	a5,1
	sw	a5,-32(s0)
	.loc 2 98 13
	j	.L12
.L8:
	.loc 2 102 19
	lui	a5,%hi(dhm_P_6144.3)
	addi	a5,a5,%lo(dhm_P_6144.3)
	sw	a5,-20(s0)
	.loc 2 103 19
	lui	a5,%hi(dhm_G_6144.2)
	addi	a5,a5,%lo(dhm_G_6144.2)
	sw	a5,-24(s0)
	.loc 2 104 24
	li	a5,768
	sw	a5,-28(s0)
	.loc 2 105 24
	li	a5,1
	sw	a5,-32(s0)
	.loc 2 106 13
	j	.L12
.L6:
	.loc 2 110 19
	lui	a5,%hi(dhm_P_8192.1)
	addi	a5,a5,%lo(dhm_P_8192.1)
	sw	a5,-20(s0)
	.loc 2 111 19
	lui	a5,%hi(dhm_G_8192.0)
	addi	a5,a5,%lo(dhm_G_8192.0)
	sw	a5,-24(s0)
	.loc 2 112 24
	li	a5,1024
	sw	a5,-28(s0)
	.loc 2 113 24
	li	a5,1
	sw	a5,-32(s0)
	.loc 2 114 13
	j	.L12
.L7:
	.loc 2 117 20
	li	a5,-135
	j	.L5
.L12:
	.loc 2 120 8
	lw	a5,-56(s0)
	beq	a5,zero,.L13
	.loc 2 121 26
	lw	a2,-28(s0)
	lw	a1,-20(s0)
	lw	a0,-56(s0)
	call	mbedtls_mpi_read_binary
	sw	a0,-36(s0)
	.loc 2 121 17 discriminator 1
	lw	a5,-36(s0)
	bne	a5,zero,.L16
.L13:
	.loc 2 124 8
	lw	a5,-60(s0)
	beq	a5,zero,.L17
	.loc 2 125 26
	lw	a2,-32(s0)
	lw	a1,-24(s0)
	lw	a0,-60(s0)
	call	mbedtls_mpi_read_binary
	sw	a0,-36(s0)
	.loc 2 129 1
	j	.L17
.L16:
	.loc 2 121 80
	nop
	j	.L14
.L17:
	.loc 2 129 1
	nop
.L14:
	.loc 2 130 8
	lw	a5,-36(s0)
	beq	a5,zero,.L15
	.loc 2 131 16
	lw	a0,-36(s0)
	call	mbedtls_to_psa_error
	mv	a5,a0
	j	.L5
.L15:
	.loc 2 134 12
	li	a5,0
.L5:
	.loc 2 135 1
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
.LFE76:
	.size	mbedtls_psa_ffdh_set_prime_generator, .-mbedtls_psa_ffdh_set_prime_generator
	.section	.text.mbedtls_psa_ffdh_export_public_key,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_ffdh_export_public_key
	.type	mbedtls_psa_ffdh_export_public_key, @function
mbedtls_psa_ffdh_export_public_key:
.LFB77:
	.loc 2 150 1
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
	sw	a5,-88(s0)
	.loc 2 151 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 152 18
	li	a5,-151
	sw	a5,-24(s0)
	.loc 2 154 20
	lw	a5,-68(s0)
	lhu	a5,0(a5)
	sh	a5,-26(s0)
	.loc 2 156 18
	lhu	a4,-26(s0)
	li	a5,28672
	and	a4,a4,a5
	.loc 2 156 8
	li	a5,16384
	bne	a4,a5,.L19
	.loc 2 157 12
	lw	a4,-76(s0)
	lw	a5,-84(s0)
	bleu	a4,a5,.L20
	.loc 2 158 20
	li	a5,-138
	j	.L28
.L20:
	.loc 2 160 9
	lw	a2,-76(s0)
	lw	a1,-72(s0)
	lw	a0,-80(s0)
	call	memcpy
	.loc 2 161 21
	lw	a4,-80(s0)
	lw	a5,-76(s0)
	add	a3,a4,a5
	.loc 2 161 9
	lw	a4,-84(s0)
	lw	a5,-76(s0)
	sub	a5,a4,a5
	mv	a2,a5
	li	a1,0
	mv	a0,a3
	call	memset
	.loc 2 163 22
	lw	a5,-88(s0)
	lw	a4,-76(s0)
	sw	a4,0(a5)
	.loc 2 164 16
	li	a5,0
	j	.L28
.L19:
	.loc 2 167 5
	addi	a5,s0,-40
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 167 28 discriminator 1
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 168 5
	addi	a5,s0,-56
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 168 27 discriminator 1
	addi	a5,s0,-64
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 170 35
	lw	a5,-68(s0)
	lhu	a5,2(a5)
	.loc 2 170 43
	addi	a5,a5,7
	.loc 2 170 12
	srli	a5,a5,3
	sw	a5,-32(s0)
	.loc 2 172 14
	addi	a4,s0,-48
	addi	a5,s0,-64
	mv	a2,a4
	mv	a1,a5
	lw	a0,-32(s0)
	call	mbedtls_psa_ffdh_set_prime_generator
	sw	a0,-24(s0)
	.loc 2 174 8
	lw	a5,-24(s0)
	bne	a5,zero,.L29
	.loc 2 178 22
	addi	a5,s0,-56
	lw	a2,-76(s0)
	lw	a1,-72(s0)
	mv	a0,a5
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 2 178 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L30
	.loc 2 181 22
	addi	a3,s0,-64
	addi	a2,s0,-56
	addi	a1,s0,-48
	addi	a5,s0,-40
	li	a4,0
	mv	a0,a5
	call	mbedtls_mpi_exp_mod
	sw	a0,-20(s0)
	.loc 2 181 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L31
	.loc 2 182 22
	addi	a5,s0,-40
	lw	a2,-32(s0)
	lw	a1,-80(s0)
	mv	a0,a5
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	.loc 2 182 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L32
	.loc 2 184 18
	lw	a5,-88(s0)
	lw	a4,-32(s0)
	sw	a4,0(a5)
	.loc 2 186 9
	sw	zero,-20(s0)
	j	.L23
.L29:
	.loc 2 175 9
	nop
	j	.L23
.L30:
	.loc 2 178 87
	nop
	j	.L23
.L31:
	.loc 2 181 14
	nop
	j	.L23
.L32:
	.loc 2 182 75
	nop
.L23:
	.loc 2 188 5
	addi	a5,s0,-64
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 188 27 discriminator 1
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 189 5
	addi	a5,s0,-56
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 189 27 discriminator 1
	addi	a5,s0,-40
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 191 8
	lw	a5,-24(s0)
	bne	a5,zero,.L27
	.loc 2 191 37 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L27
	.loc 2 192 18
	lw	a0,-20(s0)
	call	mbedtls_to_psa_error
	sw	a0,-24(s0)
.L27:
	.loc 2 195 12
	lw	a5,-24(s0)
.L28:
	.loc 2 196 1
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
.LFE77:
	.size	mbedtls_psa_ffdh_export_public_key, .-mbedtls_psa_ffdh_export_public_key
	.section	.text.mbedtls_psa_ffdh_generate_key,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_ffdh_generate_key
	.type	mbedtls_psa_ffdh_generate_key, @function
mbedtls_psa_ffdh_generate_key:
.LFB78:
	.loc 2 204 1
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
	.loc 2 206 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 207 18
	li	a5,-151
	sw	a5,-24(s0)
	.loc 2 208 5
	addi	a5,s0,-40
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 208 27 discriminator 1
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 211 14
	addi	a5,s0,-40
	li	a2,0
	mv	a1,a5
	lw	a0,-60(s0)
	call	mbedtls_psa_ffdh_set_prime_generator
	sw	a0,-24(s0)
	.loc 2 213 8
	lw	a5,-24(s0)
	bne	a5,zero,.L42
	.loc 2 220 22
	addi	a2,s0,-40
	addi	a0,s0,-32
	li	a4,0
	lui	a5,%hi(mbedtls_psa_get_random)
	addi	a3,a5,%lo(mbedtls_psa_get_random)
	li	a1,3
	call	mbedtls_mpi_random
	sw	a0,-20(s0)
	.loc 2 220 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L43
	.loc 2 222 22
	addi	a4,s0,-32
	addi	a5,s0,-32
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_sub_int
	sw	a0,-20(s0)
	.loc 2 222 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L44
	.loc 2 223 22
	addi	a5,s0,-32
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	mv	a0,a5
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	.loc 2 223 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L45
	.loc 2 224 24
	lw	a5,-64(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	j	.L35
.L42:
	.loc 2 214 9
	nop
	j	.L35
.L43:
	.loc 2 220 14
	nop
	j	.L35
.L44:
	.loc 2 222 61
	nop
	j	.L35
.L45:
	.loc 2 223 88
	nop
.L35:
	.loc 2 227 5
	addi	a5,s0,-40
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 227 27 discriminator 1
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 228 8
	lw	a5,-24(s0)
	bne	a5,zero,.L39
	.loc 2 228 37 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L39
	.loc 2 229 16
	lw	a0,-20(s0)
	call	mbedtls_to_psa_error
	mv	a5,a0
	j	.L41
.L39:
	.loc 2 232 12
	lw	a5,-24(s0)
.L41:
	.loc 2 233 1
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
.LFE78:
	.size	mbedtls_psa_ffdh_generate_key, .-mbedtls_psa_ffdh_generate_key
	.section	.text.mbedtls_psa_ffdh_import_key,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_ffdh_import_key
	.type	mbedtls_psa_ffdh_import_key, @function
mbedtls_psa_ffdh_import_key:
.LFB79:
	.loc 2 242 1
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
	sw	a6,-44(s0)
	.loc 2 245 8
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	bgeu	a4,a5,.L47
	.loc 2 246 16
	li	a5,-138
	j	.L48
.L47:
	.loc 2 248 5
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-32(s0)
	call	memcpy
	.loc 2 249 24
	lw	a5,-40(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	.loc 2 250 28
	lw	a5,-28(s0)
	slli	a4,a5,3
	.loc 2 250 11
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 2 252 12
	li	a5,0
.L48:
	.loc 2 253 1
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
.LFE79:
	.size	mbedtls_psa_ffdh_import_key, .-mbedtls_psa_ffdh_import_key
	.section	.text.mbedtls_psa_ffdh_key_agreement,"ax",@progbits
	.align	1
	.globl	mbedtls_psa_ffdh_key_agreement
	.type	mbedtls_psa_ffdh_key_agreement, @function
mbedtls_psa_ffdh_key_agreement:
.LFB80:
	.loc 2 266 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	sw	a2,-92(s0)
	sw	a3,-96(s0)
	sw	a4,-100(s0)
	sw	a5,-104(s0)
	sw	a6,-108(s0)
	sw	a7,-112(s0)
	.loc 2 267 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 268 18
	li	a5,-151
	sw	a5,-24(s0)
	.loc 2 270 18
	lw	a5,-92(s0)
	sw	a5,-28(s0)
	.loc 2 272 8
	lw	a4,-92(s0)
	lw	a5,-100(s0)
	bne	a4,a5,.L50
	.loc 2 272 44 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-108(s0)
	bleu	a4,a5,.L51
.L50:
	.loc 2 274 16
	li	a5,-135
	j	.L61
.L51:
	.loc 2 277 13
	lw	a0,-84(s0)
	call	psa_get_key_type
	mv	a5,a0
	.loc 2 277 43 discriminator 1
	andi	a4,a5,-256
	.loc 2 277 8 discriminator 1
	li	a5,28672
	addi	a5,a5,512
	beq	a4,a5,.L53
	.loc 2 278 16
	li	a5,-135
	j	.L61
.L53:
	.loc 2 281 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 281 27 discriminator 1
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 282 5
	addi	a5,s0,-52
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 282 27 discriminator 1
	addi	a5,s0,-60
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 283 5
	addi	a5,s0,-68
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 286 22
	lw	a5,-84(s0)
	lhu	a5,2(a5)
	.loc 2 286 30
	addi	a5,a5,7
	.loc 2 286 36
	srli	a5,a5,3
	.loc 2 285 14
	addi	a3,s0,-44
	addi	a4,s0,-36
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_psa_ffdh_set_prime_generator
	sw	a0,-24(s0)
	.loc 2 288 8
	lw	a5,-24(s0)
	bne	a5,zero,.L62
	.loc 2 292 22
	addi	a5,s0,-52
	lw	a2,-100(s0)
	lw	a1,-96(s0)
	mv	a0,a5
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 2 292 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L63
	.loc 2 295 22
	addi	a5,s0,-60
	lw	a2,-92(s0)
	lw	a1,-88(s0)
	mv	a0,a5
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 2 295 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L64
	.loc 2 299 22
	addi	a3,s0,-36
	addi	a2,s0,-52
	addi	a1,s0,-60
	addi	a5,s0,-68
	li	a4,0
	mv	a0,a5
	call	mbedtls_mpi_exp_mod
	sw	a0,-20(s0)
	.loc 2 299 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L65
	.loc 2 301 22
	addi	a5,s0,-68
	lw	a2,-28(s0)
	lw	a1,-104(s0)
	mv	a0,a5
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	.loc 2 301 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L66
	.loc 2 304 27
	lw	a5,-112(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	.loc 2 306 9
	sw	zero,-20(s0)
	j	.L55
.L62:
	.loc 2 289 9
	nop
	j	.L55
.L63:
	.loc 2 292 87
	nop
	j	.L55
.L64:
	.loc 2 295 86
	nop
	j	.L55
.L65:
	.loc 2 299 14
	nop
	j	.L55
.L66:
	.loc 2 301 105
	nop
.L55:
	.loc 2 309 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 309 27 discriminator 1
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 310 5
	addi	a5,s0,-52
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 310 27 discriminator 1
	addi	a5,s0,-60
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 311 5
	addi	a5,s0,-68
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 313 8
	lw	a5,-24(s0)
	bne	a5,zero,.L60
	.loc 2 313 37 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L60
	.loc 2 314 18
	lw	a0,-20(s0)
	call	mbedtls_to_psa_error
	sw	a0,-24(s0)
.L60:
	.loc 2 317 12
	lw	a5,-24(s0)
.L61:
	.loc 2 318 1
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
.LFE80:
	.size	mbedtls_psa_ffdh_key_agreement, .-mbedtls_psa_ffdh_key_agreement
	.section	.rodata.dhm_P_2048.9,"a"
	.align	2
	.type	dhm_P_2048.9, @object
	.size	dhm_P_2048.9, 256
dhm_P_2048.9:
	.base64	"//////////+t+FRYortKmq/cViAnPTzx2LnFg84tNpWp4TZBFGQz+8yTnc4kmz75fS/jY2MMddj2gbICrsRhetPfHtXV/WVhJDP1H18GbtCFY2VVPe0a87VXE15/V8k1mE8McODmi3fipona8+/och3xWKE2rec1MKzKT0g6eXq8CrGCsyT7YdEIqUuyyOP7uWrat2DX9GgdT0Kj3jlN9K5W7edjcrsZCwenyO4KbXCeAvzhzffi7MA0BM0oNC9hkXL+nOmFg/+OTxIy7vKBg8P+OxtMb61zO7X8vC7CIAXFjvGDfRaDssbzSibBsu/6iGtCOGEoXJf/////////"
	.ascii	"\377"
	.section	.srodata.dhm_G_2048.8,"a"
	.align	2
	.type	dhm_G_2048.8, @object
	.size	dhm_G_2048.8, 1
dhm_G_2048.8:
	.ascii	"\002"
	.section	.rodata.dhm_P_3072.7,"a"
	.align	2
	.type	dhm_P_3072.7, @object
	.size	dhm_P_3072.7, 384
dhm_P_3072.7:
	.base64	"//////////+t+FRYortKmq/cViAnPTzx2LnFg84tNpWp4TZBFGQz+8yTnc4kmz75fS/jY2MMddj2gbICrsRhetPfHtXV/WVhJDP1H18GbtCFY2VVPe0a87VXE15/V8k1mE8McODmi3fipona8+/och3xWKE2rec1MKzKT0g6eXq8CrGCsyT7YdEIqUuyyOP7uWrat2DX9GgdT0Kj3jlN9K5W7edjcrsZCwenyO4KbXCeAvzhzffi7MA0BM0oNC9hkXL+nOmFg/+OTxIy7vKBg8P+OxtMb61zO7X8vC7CIAXFjvGDfRaDssbzSibBsu/6iGtCOGEfz9zeNVs7ZRkD"
	.base64	"W7w09N75nAI4YbRvydbmyQd62R0mkff37lmMsPrBhtkcrv4TCYUTknC0EwyTvEN5RPT9RFLi103TZPLiHnH1S/9croKrnJ32nuhtK8UiNjoNq8Uhl5sN6todv5pC1cRITgq80Gv6U93vPBsg7j/VnXwl5B0rZsYuN///////////"
	.section	.srodata.dhm_G_3072.6,"a"
	.align	2
	.type	dhm_G_3072.6, @object
	.size	dhm_G_3072.6, 1
dhm_G_3072.6:
	.ascii	"\002"
	.section	.rodata.dhm_P_4096.5,"a"
	.align	2
	.type	dhm_P_4096.5, @object
	.size	dhm_P_4096.5, 512
dhm_P_4096.5:
	.base64	"//////////+t+FRYortKmq/cViAnPTzx2LnFg84tNpWp4TZBFGQz+8yTnc4kmz75fS/jY2MMddj2gbICrsRhetPfHtXV/WVhJDP1H18GbtCFY2VVPe0a87VXE15/V8k1mE8McODmi3fipona8+/och3xWKE2rec1MKzKT0g6eXq8CrGCsyT7YdEIqUuyyOP7uWrat2DX9GgdT0Kj3jlN9K5W7edjcrsZCwenyO4KbXCeAvzhzffi7MA0BM0oNC9hkXL+nOmFg/+OTxIy7vKBg8P+OxtMb61zO7X8vC7CIAXFjvGDfRaDssbzSibBsu/6iGtCOGEfz9zeNVs7ZRkD"
	.base64	"W7w09N75nAI4YbRvydbmyQd62R0mkff37lmMsPrBhtkcrv4TCYUTknC0EwyTvEN5RPT9RFLi103TZPLiHnH1S/9croKrnJ32nuhtK8UiNjoNq8Uhl5sN6todv5pC1cRITgq80Gv6U93vPBsg7j/VnXwl5B0rZp4e8W5vUsMWTfT7eTDp5OWIV7asfV9C1p9tGHdjzx1VA0AEh/VbpX4xzHpxNciG77Qxiu1qHgEtnmgyqQdgCpGBMMRtx3j5ca0AOAkpmaMzy4t6Gh25PXFAADwqTs6p+Y0KzAqCkc3OyX3Pjsm1Wn+IpGtNtahR9EGC4caKAH5eZV9q////////"
	.ascii	"\377\377"
	.section	.srodata.dhm_G_4096.4,"a"
	.align	2
	.type	dhm_G_4096.4, @object
	.size	dhm_G_4096.4, 1
dhm_G_4096.4:
	.ascii	"\002"
	.section	.rodata.dhm_P_6144.3,"a"
	.align	2
	.type	dhm_P_6144.3, @object
	.size	dhm_P_6144.3, 768
dhm_P_6144.3:
	.base64	"//////////+t+FRYortKmq/cViAnPTzx2LnFg84tNpWp4TZBFGQz+8yTnc4kmz75fS/jY2MMddj2gbICrsRhetPfHtXV/WVhJDP1H18GbtCFY2VVPe0a87VXE15/V8k1mE8McODmi3fipona8+/och3xWKE2rec1MKzKT0g6eXq8CrGCsyT7YdEIqUuyyOP7uWrat2DX9GgdT0Kj3jlN9K5W7edjcrsZCwenyO4KbXCeAvzhzffi7MA0BM0oNC9hkXL+nOmFg/+OTxIy7vKBg8P+OxtMb61zO7X8vC7CIAXFjvGDfRaDssbzSibBsu/6iGtCOGEfz9zeNVs7ZRkD"
	.base64	"W7w09N75nAI4YbRvydbmyQd62R0mkff37lmMsPrBhtkcrv4TCYUTknC0EwyTvEN5RPT9RFLi103TZPLiHnH1S/9croKrnJ32nuhtK8UiNjoNq8Uhl5sN6todv5pC1cRITgq80Gv6U93vPBsg7j/VnXwl5B0rZp4e8W5vUsMWTfT7eTDp5OWIV7asfV9C1p9tGHdjzx1VA0AEh/VbpX4xzHpxNciG77Qxiu1qHgEtnmgyqQdgCpGBMMRtx3j5ca0AOAkpmaMzy4t6Gh25PXFAADwqTs6p+Y0KzAqCkc3OyX3Pjsm1Wn+IpGtNtahR9EGC4caKAH5eDdkCC/1ktkUD"
	.base64	"bHpOZ30sOFMqOiO6RELK9T6mO7RUMpt2JMiRe91kscD9TLOOjDNMcBw6za0GV/zP7HGbH1w+TkYEHziBR/tM/bR3pSRx96mpaRC4VTIu22NA2KAO8JI1BRHjCr7B//njom5/sp+MGDAjw1h+ONoAd9m0dj5OS5Syu8GUxmUed8r5ku6qwCMqKBv2s6c5wSJhFoIK6NtYR6Z8vvnJCRtGLVOM1ysDdGrnf15iKSwxFWKoRlBdyC24VDOK5J9SNclbkReMzy3Vys70A+ydGBDGJysEWztx+dxrgNY/3UqOmtseaWKmlSbUMWHBpB1XDXk42tSkDjKc0OQOZf//////"
	.base64	"////"
	.section	.srodata.dhm_G_6144.2,"a"
	.align	2
	.type	dhm_G_6144.2, @object
	.size	dhm_G_6144.2, 1
dhm_G_6144.2:
	.ascii	"\002"
	.section	.rodata.dhm_P_8192.1,"a"
	.align	2
	.type	dhm_P_8192.1, @object
	.size	dhm_P_8192.1, 1024
dhm_P_8192.1:
	.base64	"//////////+t+FRYortKmq/cViAnPTzx2LnFg84tNpWp4TZBFGQz+8yTnc4kmz75fS/jY2MMddj2gbICrsRhetPfHtXV/WVhJDP1H18GbtCFY2VVPe0a87VXE15/V8k1mE8McODmi3fipona8+/och3xWKE2rec1MKzKT0g6eXq8CrGCsyT7YdEIqUuyyOP7uWrat2DX9GgdT0Kj3jlN9K5W7edjcrsZCwenyO4KbXCeAvzhzffi7MA0BM0oNC9hkXL+nOmFg/+OTxIy7vKBg8P+OxtMb61zO7X8vC7CIAXFjvGDfRaDssbzSibBsu/6iGtCOGEfz9zeNVs7ZRkD"
	.base64	"W7w09N75nAI4YbRvydbmyQd62R0mkff37lmMsPrBhtkcrv4TCYUTknC0EwyTvEN5RPT9RFLi103TZPLiHnH1S/9croKrnJ32nuhtK8UiNjoNq8Uhl5sN6todv5pC1cRITgq80Gv6U93vPBsg7j/VnXwl5B0rZp4e8W5vUsMWTfT7eTDp5OWIV7asfV9C1p9tGHdjzx1VA0AEh/VbpX4xzHpxNciG77Qxiu1qHgEtnmgyqQdgCpGBMMRtx3j5ca0AOAkpmaMzy4t6Gh25PXFAADwqTs6p+Y0KzAqCkc3OyX3Pjsm1Wn+IpGtNtahR9EGC4caKAH5eDdkCC/1ktkUD"
	.base64	"bHpOZ30sOFMqOiO6RELK9T6mO7RUMpt2JMiRe91kscD9TLOOjDNMcBw6za0GV/zP7HGbH1w+TkYEHziBR/tM/bR3pSRx96mpaRC4VTIu22NA2KAO8JI1BRHjCr7B//njom5/sp+MGDAjw1h+ONoAd9m0dj5OS5Syu8GUxmUed8r5ku6qwCMqKBv2s6c5wSJhFoIK6NtYR6Z8vvnJCRtGLVOM1ysDdGrnf15iKSwxFWKoRlBdyC24VDOK5J9SNclbkReMzy3Vys70A+ydGBDGJysEWztx+dxrgNY/3UqOmtseaWKmlSbUMWHBpB1XDXk42tSkDjKcz/RqqjatAEz2"
	.base64	"AMg4HkJaMdlRrmT9sj/OyVCdQ2h/62nt0cxeC4zDvfZLEO+GtjFCo6uIKVVbL3R8kyZlyywPHMAb1wIpOIg50q8F5FRQSseLdYKCKEbAujXDX1xZFgzARv2CUVQfxoychrAiu3CZh2pGDnRRqKkxCXA/7hwhfmw4JuUsUappHg5CPPyZ6eMWUMEhe2JIFs2tmpX51bgBlIjZwKCh/jB1pXfiMYP4HUo/L6RXHvyM4LqKT+i2hV3+crCmbt7S+6v75Yow+vq+HF1xqH4vdB74wf6G/qa7/eUwZ38Nl9EdSfeoRD0IIuUGqfRhTgEeKpSDj/iM1oyLt8XGQkz/////"
	.base64	"/////w=="
	.section	.srodata.dhm_G_8192.0,"a"
	.align	2
	.type	dhm_G_8192.0, @object
	.size	dhm_G_8192.0, 1
dhm_G_8192.0:
	.ascii	"\002"
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_types.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/psa_util.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_core.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8d2
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1a
	.4byte	.LASF86
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
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
	.uleb128 0x6
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
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x6
	.4byte	0x76
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x6
	.4byte	0x9a
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0x45
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x1c
	.byte	0x4
	.uleb128 0x14
	.4byte	0xc3
	.uleb128 0x7
	.4byte	0x32
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x7
	.4byte	0xe0
	.uleb128 0x14
	.4byte	0xd6
	.uleb128 0x1d
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x5
	.byte	0xd1
	.byte	0xd
	.4byte	0xed
	.uleb128 0x1e
	.4byte	0x68
	.4byte	0x106
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0xca
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x6
	.byte	0xa9
	.byte	0x11
	.4byte	0x8e
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x6
	.byte	0xaa
	.byte	0x12
	.4byte	0xb7
	.uleb128 0x1f
	.4byte	.LASF21
	.byte	0x8
	.byte	0x6
	.byte	0xd0
	.byte	0x10
	.4byte	0x14a
	.uleb128 0x10
	.string	"p"
	.byte	0xd5
	.byte	0x17
	.4byte	0x14a
	.byte	0
	.uleb128 0x10
	.string	"s"
	.byte	0xe2
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x10
	.string	"n"
	.byte	0xe5
	.byte	0x14
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.4byte	0x112
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x6
	.byte	0xf0
	.byte	0x1
	.4byte	0x11e
	.uleb128 0x6
	.4byte	0x14f
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x7
	.byte	0x3b
	.byte	0x11
	.4byte	0x8e
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x7
	.byte	0x4e
	.byte	0x12
	.4byte	0xab
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x7
	.byte	0x86
	.byte	0x12
	.4byte	0xb7
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x7
	.byte	0xb7
	.byte	0x12
	.4byte	0xb7
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x7
	.2byte	0x113
	.byte	0x12
	.4byte	0xb7
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x7
	.2byte	0x124
	.byte	0x16
	.4byte	0x190
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x7
	.2byte	0x143
	.byte	0x12
	.4byte	0xb7
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x7
	.2byte	0x1b0
	.byte	0x25
	.4byte	0x1c9
	.uleb128 0x6
	.4byte	0x1b7
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x18
	.2byte	0x127
	.4byte	0x216
	.uleb128 0xb
	.4byte	.LASF31
	.2byte	0x12c
	.byte	0x14
	.4byte	0x16c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.2byte	0x12d
	.byte	0x14
	.4byte	0x266
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF33
	.2byte	0x12e
	.byte	0x18
	.4byte	0x184
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF34
	.2byte	0x12f
	.byte	0x16
	.4byte	0x259
	.byte	0x8
	.uleb128 0x16
	.string	"id"
	.2byte	0x13b
	.byte	0x1a
	.4byte	0x19d
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0x76
	.uleb128 0x7
	.4byte	0x14f
	.uleb128 0x7
	.4byte	0x9a
	.uleb128 0x15
	.4byte	.LASF35
	.byte	0xc
	.2byte	0x10c
	.4byte	0x259
	.uleb128 0xb
	.4byte	.LASF36
	.2byte	0x10d
	.byte	0x15
	.4byte	0x1aa
	.byte	0
	.uleb128 0x16
	.string	"alg"
	.2byte	0x10e
	.byte	0x15
	.4byte	0x178
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF37
	.2byte	0x10f
	.byte	0x15
	.4byte	0x178
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x111
	.byte	0x21
	.4byte	0x225
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x11c
	.byte	0x12
	.4byte	0xab
	.uleb128 0x7
	.4byte	0xa6
	.uleb128 0x7
	.4byte	0x1c4
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x300
	.byte	0x5
	.4byte	0x68
	.4byte	0x29e
	.uleb128 0x1
	.4byte	0x21b
	.uleb128 0x1
	.4byte	0x29e
	.uleb128 0x1
	.4byte	0x106
	.byte	0
	.uleb128 0x7
	.4byte	0x15b
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x8
	.byte	0x39
	.byte	0x5
	.4byte	0x68
	.4byte	0x2c3
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0xca
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x3c7
	.byte	0x5
	.4byte	0x68
	.4byte	0x2ee
	.uleb128 0x1
	.4byte	0x21b
	.uleb128 0x1
	.4byte	0x106
	.uleb128 0x1
	.4byte	0x29e
	.uleb128 0x1
	.4byte	0x2ee
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x7
	.4byte	0xe1
	.uleb128 0x20
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x103
	.byte	0x6
	.4byte	0x306
	.uleb128 0x1
	.4byte	0x21b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x248
	.byte	0x5
	.4byte	0x68
	.4byte	0x327
	.uleb128 0x1
	.4byte	0x29e
	.uleb128 0x1
	.4byte	0xca
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x38e
	.byte	0x5
	.4byte	0x68
	.4byte	0x352
	.uleb128 0x1
	.4byte	0x21b
	.uleb128 0x1
	.4byte	0x29e
	.uleb128 0x1
	.4byte	0x29e
	.uleb128 0x1
	.4byte	0x29e
	.uleb128 0x1
	.4byte	0x21b
	.byte	0
	.uleb128 0x21
	.4byte	.LASF46
	.byte	0x6
	.byte	0xfa
	.byte	0x6
	.4byte	0x364
	.uleb128 0x1
	.4byte	0x21b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x9
	.byte	0x21
	.byte	0x8
	.4byte	0xc3
	.4byte	0x384
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x9
	.byte	0x1f
	.byte	0x8
	.4byte	0xc3
	.4byte	0x3a4
	.uleb128 0x1
	.4byte	0xc5
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0xa
	.2byte	0x119
	.byte	0xe
	.4byte	0x160
	.4byte	0x3bb
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x227
	.byte	0x5
	.4byte	0x68
	.4byte	0x3dc
	.uleb128 0x1
	.4byte	0x21b
	.uleb128 0x1
	.4byte	0x3dc
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x7
	.4byte	0x39
	.uleb128 0x22
	.4byte	.LASF61
	.byte	0x2
	.2byte	0x101
	.byte	0xe
	.4byte	0x160
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x500
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x2
	.2byte	0x102
	.byte	0x21
	.4byte	0x278
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x2
	.2byte	0x103
	.byte	0x14
	.4byte	0x273
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x2
	.2byte	0x104
	.byte	0xc
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x2
	.2byte	0x105
	.byte	0x14
	.4byte	0x273
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x2
	.2byte	0x106
	.byte	0xc
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x2
	.2byte	0x107
	.byte	0xe
	.4byte	0x220
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x2
	.2byte	0x108
	.byte	0xc
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x2
	.2byte	0x109
	.byte	0xd
	.4byte	0x216
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.string	"ret"
	.2byte	0x10b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.4byte	.LASF59
	.2byte	0x10c
	.4byte	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.string	"P"
	.2byte	0x10d
	.byte	0x11
	.4byte	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"G"
	.2byte	0x10d
	.byte	0x14
	.4byte	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.string	"X"
	.2byte	0x10d
	.byte	0x17
	.4byte	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xd
	.string	"GY"
	.2byte	0x10d
	.byte	0x1a
	.4byte	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xd
	.string	"K"
	.2byte	0x10d
	.byte	0x1e
	.4byte	0x14f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.4byte	.LASF60
	.2byte	0x10e
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.4byte	.LASF67
	.byte	0x2
	.2byte	0x134
	.byte	0x1
	.4byte	.L55
	.byte	0
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0xed
	.4byte	0x160
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57b
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0xee
	.byte	0x21
	.4byte	0x278
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0xef
	.byte	0x14
	.4byte	0x273
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0xef
	.byte	0x21
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0xf0
	.byte	0xe
	.4byte	0x220
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0xf0
	.byte	0x21
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0xf1
	.byte	0xd
	.4byte	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0xf1
	.byte	0x28
	.4byte	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0xc9
	.4byte	0x160
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x60a
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0xca
	.byte	0x21
	.4byte	0x278
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0xcb
	.byte	0xe
	.4byte	0x220
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0xcb
	.byte	0x21
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0xcb
	.byte	0x3a
	.4byte	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x9
	.string	"X"
	.byte	0xcd
	.byte	0x11
	.4byte	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.string	"P"
	.byte	0xcd
	.byte	0x14
	.4byte	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"ret"
	.byte	0xce
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0xcf
	.byte	0x12
	.4byte	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0xe2
	.4byte	.L35
	.byte	0
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x8f
	.4byte	0x160
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6f0
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0x90
	.byte	0x21
	.4byte	0x278
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0x91
	.byte	0x14
	.4byte	0x273
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0x92
	.byte	0xc
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x93
	.byte	0xe
	.4byte	0x220
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0x94
	.byte	0xc
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x95
	.byte	0xd
	.4byte	0x216
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x9
	.string	"ret"
	.byte	0x97
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x98
	.byte	0x12
	.4byte	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"GX"
	.byte	0x99
	.byte	0x11
	.4byte	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"G"
	.byte	0x99
	.byte	0x15
	.4byte	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.string	"X"
	.byte	0x99
	.byte	0x18
	.4byte	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.string	"P"
	.byte	0x99
	.byte	0x1b
	.4byte	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x9a
	.byte	0x14
	.4byte	0x16c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0xaa
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0xbb
	.4byte	.L23
	.byte	0
	.uleb128 0x24
	.4byte	.LASF87
	.byte	0x2
	.byte	0x1e
	.byte	0x15
	.4byte	0x160
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x82b
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0x1e
	.byte	0x41
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.string	"P"
	.byte	0x1f
	.byte	0x47
	.4byte	0x21b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.string	"G"
	.byte	0x20
	.byte	0x47
	.4byte	0x21b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x22
	.byte	0x1a
	.4byte	0x3dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x23
	.byte	0x1a
	.4byte	0x3dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x24
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x25
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.string	"ret"
	.byte	0x26
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x2d
	.byte	0x20
	.4byte	0x83b
	.uleb128 0x5
	.byte	0x3
	.4byte	dhm_P_2048.9
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x2f
	.byte	0x20
	.4byte	0x850
	.uleb128 0x5
	.byte	0x3
	.4byte	dhm_G_2048.8
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x33
	.byte	0x20
	.4byte	0x866
	.uleb128 0x5
	.byte	0x3
	.4byte	dhm_P_3072.7
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x35
	.byte	0x20
	.4byte	0x850
	.uleb128 0x5
	.byte	0x3
	.4byte	dhm_G_3072.6
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0x39
	.byte	0x20
	.4byte	0x87c
	.uleb128 0x5
	.byte	0x3
	.4byte	dhm_P_4096.5
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x3b
	.byte	0x20
	.4byte	0x850
	.uleb128 0x5
	.byte	0x3
	.4byte	dhm_G_4096.4
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x3f
	.byte	0x20
	.4byte	0x892
	.uleb128 0x5
	.byte	0x3
	.4byte	dhm_P_6144.3
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0x41
	.byte	0x20
	.4byte	0x850
	.uleb128 0x5
	.byte	0x3
	.4byte	dhm_G_6144.2
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0x45
	.byte	0x20
	.4byte	0x8a8
	.uleb128 0x5
	.byte	0x3
	.4byte	dhm_P_8192.1
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x47
	.byte	0x20
	.4byte	0x850
	.uleb128 0x5
	.byte	0x3
	.4byte	dhm_G_8192.0
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0x81
	.4byte	.L14
	.byte	0
	.uleb128 0xe
	.4byte	0x39
	.4byte	0x83b
	.uleb128 0x19
	.4byte	0x6f
	.byte	0xff
	.byte	0
	.uleb128 0x6
	.4byte	0x82b
	.uleb128 0xe
	.4byte	0x39
	.4byte	0x850
	.uleb128 0x19
	.4byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x840
	.uleb128 0xe
	.4byte	0x39
	.4byte	0x866
	.uleb128 0xf
	.4byte	0x6f
	.2byte	0x17f
	.byte	0
	.uleb128 0x6
	.4byte	0x855
	.uleb128 0xe
	.4byte	0x39
	.4byte	0x87c
	.uleb128 0xf
	.4byte	0x6f
	.2byte	0x1ff
	.byte	0
	.uleb128 0x6
	.4byte	0x86b
	.uleb128 0xe
	.4byte	0x39
	.4byte	0x892
	.uleb128 0xf
	.4byte	0x6f
	.2byte	0x2ff
	.byte	0
	.uleb128 0x6
	.4byte	0x881
	.uleb128 0xe
	.4byte	0x39
	.4byte	0x8a8
	.uleb128 0xf
	.4byte	0x6f
	.2byte	0x3ff
	.byte	0
	.uleb128 0x6
	.4byte	0x897
	.uleb128 0x25
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x1a9
	.byte	0x1e
	.4byte	0x16c
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x1aa
	.byte	0x21
	.4byte	0x278
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
	.uleb128 0x3
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0xb
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
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
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
	.sleb128 8
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
	.uleb128 0x17
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
	.uleb128 0x21
	.sleb128 18
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0xb
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
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
	.4byte	.LFB48
	.uleb128 .LFE48-.LFB48
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF61:
	.string	"mbedtls_psa_ffdh_key_agreement"
.LASF37:
	.string	"alg2"
.LASF79:
	.string	"dhm_G_3072"
.LASF51:
	.string	"attributes"
.LASF36:
	.string	"usage"
.LASF63:
	.string	"data"
.LASF42:
	.string	"mbedtls_mpi_random"
.LASF73:
	.string	"dhm_G"
.LASF4:
	.string	"short int"
.LASF12:
	.string	"size_t"
.LASF72:
	.string	"dhm_P"
.LASF23:
	.string	"psa_key_type_t"
.LASF64:
	.string	"data_length"
.LASF81:
	.string	"dhm_G_4096"
.LASF60:
	.string	"calculated_shared_secret_size"
.LASF66:
	.string	"mbedtls_psa_ffdh_generate_key"
.LASF48:
	.string	"memcpy"
.LASF18:
	.string	"mbedtls_f_rng_t"
.LASF74:
	.string	"dhm_size_P"
.LASF41:
	.string	"mbedtls_psa_get_random"
.LASF34:
	.string	"policy"
.LASF14:
	.string	"uint8_t"
.LASF75:
	.string	"dhm_size_G"
.LASF57:
	.string	"shared_secret_size"
.LASF16:
	.string	"uint32_t"
.LASF43:
	.string	"mbedtls_mpi_write_binary"
.LASF71:
	.string	"key_size"
.LASF19:
	.string	"mbedtls_mpi_sint"
.LASF32:
	.string	"bits"
.LASF21:
	.string	"mbedtls_mpi"
.LASF8:
	.string	"long long int"
.LASF44:
	.string	"mbedtls_mpi_exp_mod"
.LASF50:
	.string	"mbedtls_mpi_read_binary"
.LASF47:
	.string	"memset"
.LASF6:
	.string	"long int"
.LASF54:
	.string	"key_buffer"
.LASF33:
	.string	"lifetime"
.LASF88:
	.string	"psa_get_key_type"
.LASF69:
	.string	"data_size"
.LASF45:
	.string	"mbedtls_mpi_free"
.LASF11:
	.string	"long double"
.LASF3:
	.string	"unsigned char"
.LASF67:
	.string	"cleanup"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF31:
	.string	"type"
.LASF10:
	.string	"unsigned int"
.LASF15:
	.string	"uint16_t"
.LASF39:
	.string	"psa_key_bits_t"
.LASF55:
	.string	"key_buffer_size"
.LASF27:
	.string	"mbedtls_svc_key_id_t"
.LASF58:
	.string	"shared_secret_length"
.LASF59:
	.string	"status"
.LASF17:
	.string	"char"
.LASF30:
	.string	"psa_key_attributes_s"
.LASF13:
	.string	"int32_t"
.LASF84:
	.string	"dhm_P_8192"
.LASF5:
	.string	"short unsigned int"
.LASF53:
	.string	"peer_key_length"
.LASF86:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF22:
	.string	"psa_status_t"
.LASF65:
	.string	"key_buffer_length"
.LASF85:
	.string	"dhm_G_8192"
.LASF49:
	.string	"mbedtls_to_psa_error"
.LASF7:
	.string	"long unsigned int"
.LASF80:
	.string	"dhm_P_4096"
.LASF40:
	.string	"mbedtls_mpi_sub_int"
.LASF46:
	.string	"mbedtls_mpi_init"
.LASF82:
	.string	"dhm_P_6144"
.LASF70:
	.string	"key_len"
.LASF20:
	.string	"mbedtls_mpi_uint"
.LASF29:
	.string	"psa_key_attributes_t"
.LASF56:
	.string	"shared_secret"
.LASF87:
	.string	"mbedtls_psa_ffdh_set_prime_generator"
.LASF83:
	.string	"dhm_G_6144"
.LASF26:
	.string	"psa_key_id_t"
.LASF25:
	.string	"psa_key_lifetime_t"
.LASF76:
	.string	"dhm_P_2048"
.LASF62:
	.string	"mbedtls_psa_ffdh_import_key"
.LASF35:
	.string	"psa_key_policy_s"
.LASF38:
	.string	"psa_key_policy_t"
.LASF52:
	.string	"peer_key"
.LASF78:
	.string	"dhm_P_3072"
.LASF24:
	.string	"psa_algorithm_t"
.LASF77:
	.string	"dhm_G_2048"
.LASF28:
	.string	"psa_key_usage_t"
.LASF68:
	.string	"mbedtls_psa_ffdh_export_public_key"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_ffdh.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
