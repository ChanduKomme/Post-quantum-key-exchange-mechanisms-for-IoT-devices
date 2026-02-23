	.file	"dhm.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/dhm.c"
	.section	.text.mbedtls_error_add,"ax",@progbits
	.align	1
	.type	mbedtls_error_add, @function
mbedtls_error_add:
.LFB11:
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
.LFE11:
	.size	mbedtls_error_add, .-mbedtls_error_add
	.section	.rodata
	.align	2
.LC0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/dhm.c"
	.section	.text.dhm_read_bignum,"ax",@progbits
	.align	1
	.type	dhm_read_bignum, @function
dhm_read_bignum:
.LFB15:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/dhm.c"
	.loc 2 45 1
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
	.loc 2 48 15
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 2 48 13
	lw	a4,-60(s0)
	sub	a4,a4,a5
	.loc 2 48 8
	li	a5,1
	bgt	a4,a5,.L4
	.loc 2 49 16
	li	a5,-12288
	addi	a5,a5,-128
	j	.L5
.L4:
	.loc 2 52 77
	lw	a5,-56(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
.LBB4:
.LBB5:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/alignment.h"
	.loc 3 122 33
	lw	a5,-28(s0)
	sw	a5,-32(s0)
	.loc 3 123 7
	lw	a5,-32(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-34(s0)
	.loc 3 127 12
	lhu	a5,-34(s0)
.LBE5:
.LBE4:
	.loc 2 52 59 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 2 52 7 discriminator 2
	sw	a5,-20(s0)
	.loc 2 53 6
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 2 53 10
	addi	a4,a5,2
	lw	a5,-56(s0)
	sw	a4,0(a5)
	.loc 2 55 25
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 2 55 23
	lw	a4,-60(s0)
	sub	a5,a4,a5
	.loc 2 55 9
	mv	a4,a5
	.loc 2 55 31
	lw	a5,-20(s0)
	.loc 2 55 8
	bgeu	a4,a5,.L7
	.loc 2 56 16
	li	a5,-12288
	addi	a5,a5,-128
	j	.L5
.L7:
	.loc 2 59 16
	lw	a5,-56(s0)
	lw	a5,0(a5)
	lw	a4,-20(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-52(s0)
	call	mbedtls_mpi_read_binary
	sw	a0,-24(s0)
	.loc 2 59 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L8
	.loc 2 60 16
	li	a3,60
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-24(s0)
	li	a5,-12288
	addi	a0,a5,-256
	call	mbedtls_error_add
	mv	a5,a0
	j	.L5
.L8:
	.loc 2 63 6
	lw	a5,-56(s0)
	lw	a4,0(a5)
	.loc 2 63 10
	lw	a5,-20(s0)
	add	a4,a4,a5
	lw	a5,-56(s0)
	sw	a4,0(a5)
	.loc 2 65 12
	li	a5,0
.L5:
	.loc 2 66 1
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
.LFE15:
	.size	dhm_read_bignum, .-dhm_read_bignum
	.section	.text.dhm_check_range,"ax",@progbits
	.align	1
	.type	dhm_check_range, @function
dhm_check_range:
.LFB16:
	.loc 2 81 1
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
	.loc 2 83 9
	sw	zero,-20(s0)
	.loc 2 85 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 87 22
	addi	a5,s0,-28
	li	a2,2
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_mpi_sub_int
	sw	a0,-20(s0)
	.loc 2 87 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L14
	.loc 2 89 9
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 89 8 discriminator 1
	blt	a5,zero,.L12
	.loc 2 90 9
	addi	a5,s0,-28
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 89 43 discriminator 2
	ble	a5,zero,.L15
.L12:
	.loc 2 91 13
	li	a5,-12288
	addi	a5,a5,-128
	sw	a5,-20(s0)
	j	.L11
.L14:
	.loc 2 87 60
	nop
	j	.L11
.L15:
	.loc 2 94 1
	nop
.L11:
	.loc 2 95 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 96 12
	lw	a5,-20(s0)
	.loc 2 97 1
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
.LFE16:
	.size	dhm_check_range, .-dhm_check_range
	.section	.text.mbedtls_dhm_init,"ax",@progbits
	.align	1
	.globl	mbedtls_dhm_init
	.type	mbedtls_dhm_init, @function
mbedtls_dhm_init:
.LFB17:
	.loc 2 100 1
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
	.loc 2 101 5
	li	a2,80
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 2 102 1
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
	.size	mbedtls_dhm_init, .-mbedtls_dhm_init
	.section	.text.mbedtls_dhm_get_bitlen,"ax",@progbits
	.align	1
	.globl	mbedtls_dhm_get_bitlen
	.type	mbedtls_dhm_get_bitlen, @function
mbedtls_dhm_get_bitlen:
.LFB18:
	.loc 2 105 1
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
	.loc 2 106 12
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_mpi_bitlen
	mv	a5,a0
	.loc 2 107 1
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
	.size	mbedtls_dhm_get_bitlen, .-mbedtls_dhm_get_bitlen
	.section	.text.mbedtls_dhm_get_len,"ax",@progbits
	.align	1
	.globl	mbedtls_dhm_get_len
	.type	mbedtls_dhm_get_len, @function
mbedtls_dhm_get_len:
.LFB19:
	.loc 2 110 1
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
	.loc 2 111 12
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_mpi_size
	mv	a5,a0
	.loc 2 112 1
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
	.size	mbedtls_dhm_get_len, .-mbedtls_dhm_get_len
	.section	.text.mbedtls_dhm_get_value,"ax",@progbits
	.align	1
	.globl	mbedtls_dhm_get_value
	.type	mbedtls_dhm_get_value, @function
mbedtls_dhm_get_value:
.LFB20:
	.loc 2 117 1
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
	sb	a5,-37(s0)
	.loc 2 118 24
	sw	zero,-20(s0)
	.loc 2 119 5
	lbu	a5,-37(s0)
	li	a4,5
	beq	a5,a4,.L22
	li	a4,5
	bgt	a5,a4,.L23
	li	a4,4
	beq	a5,a4,.L24
	li	a4,4
	bgt	a5,a4,.L23
	li	a4,3
	beq	a5,a4,.L25
	li	a4,3
	bgt	a5,a4,.L23
	li	a4,2
	beq	a5,a4,.L26
	li	a4,2
	bgt	a5,a4,.L23
	beq	a5,zero,.L27
	li	a4,1
	beq	a5,a4,.L28
	j	.L23
.L27:
	.loc 2 121 17
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 2 122 13
	j	.L29
.L28:
	.loc 2 124 17
	lw	a5,-36(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
	.loc 2 125 13
	j	.L29
.L26:
	.loc 2 127 17
	lw	a5,-36(s0)
	addi	a5,a5,16
	sw	a5,-20(s0)
	.loc 2 128 13
	j	.L29
.L25:
	.loc 2 130 17
	lw	a5,-36(s0)
	addi	a5,a5,24
	sw	a5,-20(s0)
	.loc 2 131 13
	j	.L29
.L24:
	.loc 2 133 17
	lw	a5,-36(s0)
	addi	a5,a5,32
	sw	a5,-20(s0)
	.loc 2 134 13
	j	.L29
.L22:
	.loc 2 136 17
	lw	a5,-36(s0)
	addi	a5,a5,40
	sw	a5,-20(s0)
	.loc 2 137 13
	j	.L29
.L23:
	.loc 2 139 20
	li	a5,-12288
	addi	a5,a5,-128
	j	.L30
.L29:
	.loc 2 141 12
	lw	a1,-20(s0)
	lw	a0,-44(s0)
	call	mbedtls_mpi_copy
	mv	a5,a0
.L30:
	.loc 2 142 1
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
	.size	mbedtls_dhm_get_value, .-mbedtls_dhm_get_value
	.section	.text.mbedtls_dhm_read_params,"ax",@progbits
	.align	1
	.globl	mbedtls_dhm_read_params
	.type	mbedtls_dhm_read_params, @function
mbedtls_dhm_read_params:
.LFB21:
	.loc 2 150 1
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
	.loc 2 151 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 153 16
	lw	a5,-36(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	dhm_read_bignum
	sw	a0,-20(s0)
	.loc 2 153 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L32
	.loc 2 154 16
	lw	a5,-36(s0)
	addi	a5,a5,8
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	dhm_read_bignum
	sw	a0,-20(s0)
	.loc 2 153 55 discriminator 2
	lw	a5,-20(s0)
	bne	a5,zero,.L32
	.loc 2 155 16
	lw	a5,-36(s0)
	addi	a5,a5,32
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	dhm_read_bignum
	sw	a0,-20(s0)
	.loc 2 154 55
	lw	a5,-20(s0)
	beq	a5,zero,.L33
.L32:
	.loc 2 156 16
	lw	a5,-20(s0)
	j	.L34
.L33:
	.loc 2 159 32
	lw	a5,-36(s0)
	addi	a5,a5,32
	.loc 2 159 42
	lw	a4,-36(s0)
	.loc 2 159 16
	mv	a1,a4
	mv	a0,a5
	call	dhm_check_range
	sw	a0,-20(s0)
	.loc 2 159 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L35
	.loc 2 160 16
	lw	a5,-20(s0)
	j	.L34
.L35:
	.loc 2 163 12
	li	a5,0
.L34:
	.loc 2 164 1
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
	.size	mbedtls_dhm_read_params, .-mbedtls_dhm_read_params
	.section	.text.dhm_random_below,"ax",@progbits
	.align	1
	.type	dhm_random_below, @function
dhm_random_below:
.LFB22:
	.loc 2 171 1
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
	.loc 2 174 22
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_mpi_random
	sw	a0,-20(s0)
	.loc 2 174 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L40
	.loc 2 175 22
	li	a2,1
	lw	a1,-36(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_sub_int
	sw	a0,-20(s0)
	.loc 2 177 1
	j	.L38
.L40:
	.loc 2 174 72
	nop
.L38:
	.loc 2 178 12
	lw	a5,-20(s0)
	.loc 2 179 1
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
	.size	dhm_random_below, .-dhm_random_below
	.section	.text.dhm_make_common,"ax",@progbits
	.align	1
	.type	dhm_make_common, @function
dhm_make_common:
.LFB23:
	.loc 2 184 1
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
	.loc 2 185 9
	sw	zero,-20(s0)
	.loc 2 187 29
	lw	a5,-36(s0)
	.loc 2 187 9
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 187 8 discriminator 1
	bne	a5,zero,.L42
	.loc 2 188 16
	li	a5,-12288
	addi	a5,a5,-128
	j	.L43
.L42:
	.loc 2 190 8
	lw	a5,-40(s0)
	bge	a5,zero,.L44
	.loc 2 191 16
	li	a5,-12288
	addi	a5,a5,-128
	j	.L43
.L44:
	.loc 2 194 46
	lw	a5,-36(s0)
	.loc 2 194 29
	mv	a0,a5
	call	mbedtls_mpi_size
	mv	a4,a0
	.loc 2 194 27 discriminator 1
	lw	a5,-40(s0)
	.loc 2 194 8 discriminator 1
	bleu	a4,a5,.L45
	.loc 2 195 26
	lw	a5,-36(s0)
	addi	a5,a5,16
	lw	a4,-40(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_fill_random
	sw	a0,-20(s0)
	.loc 2 195 17 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L46
	.loc 2 195 89
	j	.L47
.L45:
	.loc 2 198 15
	lw	a5,-36(s0)
	addi	a5,a5,16
	.loc 2 198 41
	lw	a4,-36(s0)
	.loc 2 198 15
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	mv	a1,a4
	mv	a0,a5
	call	dhm_random_below
	sw	a0,-20(s0)
	.loc 2 199 12
	lw	a4,-20(s0)
	li	a5,-14
	bne	a4,a5,.L48
	.loc 2 200 20
	li	a5,-12288
	addi	a5,a5,-384
	j	.L43
.L48:
	.loc 2 202 12
	lw	a5,-20(s0)
	beq	a5,zero,.L46
	.loc 2 203 20
	lw	a5,-20(s0)
	j	.L43
.L46:
	.loc 2 210 22
	lw	a5,-36(s0)
	addi	a0,a5,24
	.loc 2 210 52
	lw	a5,-36(s0)
	addi	a1,a5,8
	.loc 2 210 61
	lw	a5,-36(s0)
	addi	a2,a5,16
	.loc 2 210 70
	lw	a3,-36(s0)
	.loc 2 210 22
	lw	a5,-36(s0)
	addi	a5,a5,48
	mv	a4,a5
	call	mbedtls_mpi_exp_mod
	sw	a0,-20(s0)
	.loc 2 210 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L50
	.loc 2 213 32
	lw	a5,-36(s0)
	addi	a5,a5,24
	.loc 2 213 42
	lw	a4,-36(s0)
	.loc 2 213 16
	mv	a1,a4
	mv	a0,a5
	call	dhm_check_range
	sw	a0,-20(s0)
	.loc 2 213 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L51
	.loc 2 214 16
	lw	a5,-20(s0)
	j	.L43
.L50:
	.loc 2 210 97
	nop
	j	.L47
.L51:
	.loc 2 217 1
	nop
.L47:
	.loc 2 218 12
	lw	a5,-20(s0)
.L43:
	.loc 2 219 1
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
	.size	dhm_make_common, .-dhm_make_common
	.section	.text.mbedtls_dhm_make_params,"ax",@progbits
	.align	1
	.globl	mbedtls_dhm_make_params
	.type	mbedtls_dhm_make_params, @function
mbedtls_dhm_make_params:
.LFB24:
	.loc 2 228 1
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
	.loc 2 233 11
	lw	a3,-72(s0)
	lw	a2,-68(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	dhm_make_common
	sw	a0,-20(s0)
	.loc 2 234 8
	lw	a5,-20(s0)
	bne	a5,zero,.L60
	.loc 2 252 27
	lw	a5,-52(s0)
	.loc 2 252 10
	mv	a0,a5
	call	mbedtls_mpi_size
	sw	a0,-24(s0)
	.loc 2 253 27
	lw	a5,-52(s0)
	addi	a5,a5,8
	.loc 2 253 10
	mv	a0,a5
	call	mbedtls_mpi_size
	sw	a0,-28(s0)
	.loc 2 254 27
	lw	a5,-52(s0)
	addi	a5,a5,24
	.loc 2 254 10
	mv	a0,a5
	call	mbedtls_mpi_size
	sw	a0,-32(s0)
	.loc 2 256 7
	lw	a5,-60(s0)
	sw	a5,-36(s0)
	.loc 2 257 53
	lw	a4,-52(s0)
	.loc 2 257 27
	lw	a5,-36(s0)
	addi	a5,a5,2
	lw	a2,-24(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	.loc 2 257 18 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L61
	.loc 2 257 136 discriminator 3
	lw	a5,-24(s0)
	srli	a3,a5,8
	.loc 2 257 113 discriminator 3
	lw	a5,-36(s0)
	addi	a4,a5,1
	sw	a4,-36(s0)
	.loc 2 257 119 discriminator 3
	andi	a4,a3,0xff
	.loc 2 257 116 discriminator 3
	sb	a4,0(a5)
	.loc 2 257 154 discriminator 3
	lw	a5,-36(s0)
	addi	a4,a5,1
	sw	a4,-36(s0)
	.loc 2 257 160 discriminator 3
	lw	a4,-24(s0)
	andi	a4,a4,0xff
	.loc 2 257 157 discriminator 3
	sb	a4,0(a5)
	.loc 2 257 188 discriminator 3
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 2 258 53
	lw	a5,-52(s0)
	addi	a4,a5,8
	.loc 2 258 27
	lw	a5,-36(s0)
	addi	a5,a5,2
	lw	a2,-28(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	.loc 2 258 18 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L62
	.loc 2 258 136 discriminator 3
	lw	a5,-28(s0)
	srli	a3,a5,8
	.loc 2 258 113 discriminator 3
	lw	a5,-36(s0)
	addi	a4,a5,1
	sw	a4,-36(s0)
	.loc 2 258 119 discriminator 3
	andi	a4,a3,0xff
	.loc 2 258 116 discriminator 3
	sb	a4,0(a5)
	.loc 2 258 154 discriminator 3
	lw	a5,-36(s0)
	addi	a4,a5,1
	sw	a4,-36(s0)
	.loc 2 258 160 discriminator 3
	lw	a4,-28(s0)
	andi	a4,a4,0xff
	.loc 2 258 157 discriminator 3
	sb	a4,0(a5)
	.loc 2 258 188 discriminator 3
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 2 259 53
	lw	a5,-52(s0)
	addi	a4,a5,24
	.loc 2 259 27
	lw	a5,-36(s0)
	addi	a5,a5,2
	lw	a2,-32(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	.loc 2 259 18 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L63
	.loc 2 259 137 discriminator 3
	lw	a5,-32(s0)
	srli	a3,a5,8
	.loc 2 259 114 discriminator 3
	lw	a5,-36(s0)
	addi	a4,a5,1
	sw	a4,-36(s0)
	.loc 2 259 120 discriminator 3
	andi	a4,a3,0xff
	.loc 2 259 117 discriminator 3
	sb	a4,0(a5)
	.loc 2 259 155 discriminator 3
	lw	a5,-36(s0)
	addi	a4,a5,1
	sw	a4,-36(s0)
	.loc 2 259 161 discriminator 3
	lw	a4,-32(s0)
	andi	a4,a4,0xff
	.loc 2 259 158 discriminator 3
	sb	a4,0(a5)
	.loc 2 259 189 discriminator 3
	lw	a4,-36(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 2 261 25
	lw	a4,-36(s0)
	lw	a5,-60(s0)
	sub	a5,a4,a5
	.loc 2 261 13
	mv	a4,a5
	.loc 2 261 11
	lw	a5,-64(s0)
	sw	a4,0(a5)
	j	.L54
.L60:
	.loc 2 235 9
	nop
	j	.L54
.L61:
	.loc 2 257 84
	nop
	j	.L54
.L62:
	.loc 2 258 84
	nop
	j	.L54
.L63:
	.loc 2 259 85
	nop
.L54:
	.loc 2 264 8
	lw	a5,-20(s0)
	beq	a5,zero,.L58
	.loc 2 264 18 discriminator 1
	lw	a4,-20(s0)
	li	a5,-127
	blt	a4,a5,.L58
	.loc 2 265 15
	li	a3,265
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-12288
	addi	a0,a5,-384
	call	mbedtls_error_add
	sw	a0,-20(s0)
.L58:
	.loc 2 267 12
	lw	a5,-20(s0)
	.loc 2 268 1
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
.LFE24:
	.size	mbedtls_dhm_make_params, .-mbedtls_dhm_make_params
	.section	.text.mbedtls_dhm_set_group,"ax",@progbits
	.align	1
	.globl	mbedtls_dhm_set_group
	.type	mbedtls_dhm_set_group, @function
mbedtls_dhm_set_group:
.LFB25:
	.loc 2 276 1
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
	.loc 2 277 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 279 16
	lw	a5,-36(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 279 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L65
	.loc 2 280 16
	lw	a5,-36(s0)
	addi	a5,a5,8
	lw	a1,-44(s0)
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 279 51 discriminator 2
	lw	a5,-20(s0)
	beq	a5,zero,.L66
.L65:
	.loc 2 281 16
	li	a3,281
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-12288
	addi	a0,a5,-1408
	call	mbedtls_error_add
	mv	a5,a0
	j	.L67
.L66:
	.loc 2 284 12
	li	a5,0
.L67:
	.loc 2 285 1
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
.LFE25:
	.size	mbedtls_dhm_set_group, .-mbedtls_dhm_set_group
	.section	.text.mbedtls_dhm_read_public,"ax",@progbits
	.align	1
	.globl	mbedtls_dhm_read_public
	.type	mbedtls_dhm_read_public, @function
mbedtls_dhm_read_public:
.LFB26:
	.loc 2 292 1
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
	.loc 2 293 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 295 8
	lw	a5,-44(s0)
	beq	a5,zero,.L69
	.loc 2 295 28 discriminator 1
	lw	a0,-36(s0)
	call	mbedtls_dhm_get_len
	mv	a4,a0
	.loc 2 295 18 discriminator 2
	lw	a5,-44(s0)
	bleu	a5,a4,.L70
.L69:
	.loc 2 296 16
	li	a5,-12288
	addi	a5,a5,-128
	j	.L71
.L70:
	.loc 2 299 16
	lw	a5,-36(s0)
	addi	a5,a5,32
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 2 299 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L72
	.loc 2 300 16
	li	a3,300
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-12288
	addi	a0,a5,-512
	call	mbedtls_error_add
	mv	a5,a0
	j	.L71
.L72:
	.loc 2 303 12
	li	a5,0
.L71:
	.loc 2 304 1
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
	.size	mbedtls_dhm_read_public, .-mbedtls_dhm_read_public
	.section	.text.mbedtls_dhm_make_public,"ax",@progbits
	.align	1
	.globl	mbedtls_dhm_make_public
	.type	mbedtls_dhm_make_public, @function
mbedtls_dhm_make_public:
.LFB27:
	.loc 2 313 1
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
	.loc 2 316 8
	lw	a5,-48(s0)
	beq	a5,zero,.L74
	.loc 2 316 28 discriminator 1
	lw	a0,-36(s0)
	call	mbedtls_dhm_get_len
	mv	a4,a0
	.loc 2 316 18 discriminator 2
	lw	a5,-48(s0)
	bleu	a5,a4,.L75
.L74:
	.loc 2 317 16
	li	a5,-12288
	addi	a5,a5,-128
	j	.L76
.L75:
	.loc 2 320 11
	lw	a3,-56(s0)
	lw	a2,-52(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	dhm_make_common
	sw	a0,-20(s0)
	.loc 2 321 8
	lw	a4,-20(s0)
	li	a5,-12288
	addi	a5,a5,-384
	bne	a4,a5,.L77
	.loc 2 322 16
	li	a5,-12288
	addi	a5,a5,-640
	j	.L76
.L77:
	.loc 2 324 8
	lw	a5,-20(s0)
	bne	a5,zero,.L81
	.loc 2 328 47
	lw	a5,-36(s0)
	addi	a5,a5,24
	.loc 2 328 22
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	mv	a0,a5
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	.loc 2 330 1
	j	.L79
.L81:
	.loc 2 325 9
	nop
.L79:
	.loc 2 331 8
	lw	a5,-20(s0)
	beq	a5,zero,.L80
	.loc 2 331 18 discriminator 1
	lw	a4,-20(s0)
	li	a5,-127
	blt	a4,a5,.L80
	.loc 2 332 15
	li	a3,332
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-12288
	addi	a0,a5,-640
	call	mbedtls_error_add
	sw	a0,-20(s0)
.L80:
	.loc 2 334 12
	lw	a5,-20(s0)
.L76:
	.loc 2 335 1
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
.LFE27:
	.size	mbedtls_dhm_make_public, .-mbedtls_dhm_make_public
	.section	.text.dhm_update_blinding,"ax",@progbits
	.align	1
	.type	dhm_update_blinding, @function
dhm_update_blinding:
.LFB28:
	.loc 2 346 1
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
	.loc 2 353 29
	lw	a5,-36(s0)
	addi	a4,a5,16
	.loc 2 353 38
	lw	a5,-36(s0)
	addi	a5,a5,72
	.loc 2 353 9
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 353 8 discriminator 1
	beq	a5,zero,.L83
	.loc 2 354 26
	lw	a5,-36(s0)
	addi	a4,a5,72
	.loc 2 354 53
	lw	a5,-36(s0)
	addi	a5,a5,16
	.loc 2 354 26
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 354 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L96
	.loc 2 355 26
	lw	a5,-36(s0)
	addi	a5,a5,56
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 355 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L97
	.loc 2 356 26
	lw	a5,-36(s0)
	addi	a5,a5,64
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 356 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L98
	.loc 2 358 16
	li	a5,0
	j	.L88
.L83:
	.loc 2 365 29
	lw	a5,-36(s0)
	addi	a5,a5,56
	.loc 2 365 9
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 365 8 discriminator 1
	beq	a5,zero,.L89
	.loc 2 366 26
	lw	a5,-36(s0)
	addi	a4,a5,56
	.loc 2 366 56
	lw	a5,-36(s0)
	addi	a3,a5,56
	.loc 2 366 66
	lw	a5,-36(s0)
	addi	a5,a5,56
	.loc 2 366 26
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 2 366 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L99
	.loc 2 367 26
	lw	a5,-36(s0)
	addi	a4,a5,56
	.loc 2 367 56
	lw	a5,-36(s0)
	addi	a5,a5,56
	.loc 2 367 66
	lw	a3,-36(s0)
	.loc 2 367 26
	mv	a2,a3
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 2 367 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L100
	.loc 2 369 26
	lw	a5,-36(s0)
	addi	a4,a5,64
	.loc 2 369 56
	lw	a5,-36(s0)
	addi	a3,a5,64
	.loc 2 369 66
	lw	a5,-36(s0)
	addi	a5,a5,64
	.loc 2 369 26
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 2 369 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L101
	.loc 2 370 26
	lw	a5,-36(s0)
	addi	a4,a5,64
	.loc 2 370 56
	lw	a5,-36(s0)
	addi	a5,a5,64
	.loc 2 370 66
	lw	a3,-36(s0)
	.loc 2 370 26
	mv	a2,a3
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 2 370 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L102
	.loc 2 372 16
	li	a5,0
	j	.L88
.L89:
	.loc 2 380 22
	lw	a5,-36(s0)
	addi	a5,a5,56
	.loc 2 380 49
	lw	a4,-36(s0)
	.loc 2 380 22
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	mv	a1,a4
	mv	a0,a5
	call	dhm_random_below
	sw	a0,-20(s0)
	.loc 2 380 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L103
	.loc 2 383 22
	lw	a5,-36(s0)
	addi	a4,a5,64
	.loc 2 383 16
	lw	a5,-36(s0)
	addi	a5,a5,56
	.loc 2 383 26
	lw	a3,-36(s0)
	.loc 2 383 22
	mv	a2,a5
	mv	a1,a4
	li	a0,0
	call	mbedtls_mpi_gcd_modinv_odd
	sw	a0,-20(s0)
	.loc 2 383 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L104
	.loc 2 384 22
	lw	a5,-36(s0)
	addi	a0,a5,64
	.loc 2 384 52
	lw	a5,-36(s0)
	addi	a1,a5,64
	.loc 2 384 62
	lw	a5,-36(s0)
	addi	a2,a5,16
	.loc 2 384 71
	lw	a3,-36(s0)
	.loc 2 384 22
	lw	a5,-36(s0)
	addi	a5,a5,48
	mv	a4,a5
	call	mbedtls_mpi_exp_mod
	sw	a0,-20(s0)
	.loc 2 386 1
	j	.L85
.L96:
	.loc 2 354 70
	nop
	j	.L85
.L97:
	.loc 2 355 64
	nop
	j	.L85
.L98:
	.loc 2 356 64
	nop
	j	.L85
.L99:
	.loc 2 366 84
	nop
	j	.L85
.L100:
	.loc 2 367 83
	nop
	j	.L85
.L101:
	.loc 2 369 84
	nop
	j	.L85
.L102:
	.loc 2 370 83
	nop
	j	.L85
.L103:
	.loc 2 380 80
	nop
	j	.L85
.L104:
	.loc 2 383 43
	nop
.L85:
	.loc 2 387 12
	lw	a5,-20(s0)
.L88:
	.loc 2 388 1
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
	.size	dhm_update_blinding, .-dhm_update_blinding
	.section	.text.mbedtls_dhm_calc_secret,"ax",@progbits
	.align	1
	.globl	mbedtls_dhm_calc_secret
	.type	mbedtls_dhm_calc_secret, @function
mbedtls_dhm_calc_secret:
.LFB29:
	.loc 2 397 1
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
	.loc 2 398 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 401 8
	lw	a5,-52(s0)
	bne	a5,zero,.L106
	.loc 2 402 16
	li	a5,-12288
	addi	a5,a5,-128
	j	.L118
.L106:
	.loc 2 405 23
	lw	a0,-36(s0)
	call	mbedtls_dhm_get_len
	mv	a4,a0
	.loc 2 405 8 discriminator 1
	lw	a5,-44(s0)
	bgeu	a5,a4,.L108
	.loc 2 406 16
	li	a5,-12288
	addi	a5,a5,-128
	j	.L118
.L108:
	.loc 2 409 32
	lw	a5,-36(s0)
	addi	a5,a5,32
	.loc 2 409 42
	lw	a4,-36(s0)
	.loc 2 409 16
	mv	a1,a4
	mv	a0,a5
	call	dhm_check_range
	sw	a0,-20(s0)
	.loc 2 409 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L109
	.loc 2 410 16
	lw	a5,-20(s0)
	j	.L118
.L109:
	.loc 2 413 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 416 22
	lw	a2,-56(s0)
	lw	a1,-52(s0)
	lw	a0,-36(s0)
	call	dhm_update_blinding
	sw	a0,-20(s0)
	.loc 2 416 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L119
	.loc 2 417 48
	lw	a5,-36(s0)
	addi	a4,a5,32
	.loc 2 417 58
	lw	a5,-36(s0)
	addi	a3,a5,56
	.loc 2 417 22
	addi	a5,s0,-28
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 2 417 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L120
	.loc 2 418 54
	lw	a3,-36(s0)
	.loc 2 418 22
	addi	a4,s0,-28
	addi	a5,s0,-28
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 2 418 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L121
	.loc 2 421 22
	lw	a5,-36(s0)
	addi	a0,a5,40
	.loc 2 421 57
	lw	a5,-36(s0)
	addi	a2,a5,16
	.loc 2 421 66
	lw	a3,-36(s0)
	.loc 2 421 22
	lw	a5,-36(s0)
	addi	a4,a5,48
	addi	a5,s0,-28
	mv	a1,a5
	call	mbedtls_mpi_exp_mod
	sw	a0,-20(s0)
	.loc 2 421 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L122
	.loc 2 425 22
	lw	a5,-36(s0)
	addi	a4,a5,40
	.loc 2 425 51
	lw	a5,-36(s0)
	addi	a3,a5,40
	.loc 2 425 60
	lw	a5,-36(s0)
	addi	a5,a5,64
	.loc 2 425 22
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 2 425 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L123
	.loc 2 426 22
	lw	a5,-36(s0)
	addi	a4,a5,40
	.loc 2 426 51
	lw	a5,-36(s0)
	addi	a5,a5,40
	.loc 2 426 60
	lw	a3,-36(s0)
	.loc 2 426 22
	mv	a2,a3
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 2 426 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L124
	.loc 2 430 30
	lw	a5,-36(s0)
	addi	a5,a5,40
	.loc 2 430 13
	mv	a0,a5
	call	mbedtls_mpi_size
	mv	a4,a0
	.loc 2 430 11 discriminator 1
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 2 431 47
	lw	a5,-36(s0)
	addi	a4,a5,40
	.loc 2 431 22
	lw	a5,-48(s0)
	lw	a5,0(a5)
	mv	a2,a5
	lw	a1,-40(s0)
	mv	a0,a4
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	.loc 2 433 1
	j	.L111
.L119:
	.loc 2 416 69
	nop
	j	.L111
.L120:
	.loc 2 417 76
	nop
	j	.L111
.L121:
	.loc 2 418 71
	nop
	j	.L111
.L122:
	.loc 2 421 93
	nop
	j	.L111
.L123:
	.loc 2 425 78
	nop
	j	.L111
.L124:
	.loc 2 426 77
	nop
.L111:
	.loc 2 434 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 436 8
	lw	a5,-20(s0)
	beq	a5,zero,.L117
	.loc 2 437 16
	li	a3,437
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-12288
	addi	a0,a5,-768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L118
.L117:
	.loc 2 440 12
	li	a5,0
.L118:
	.loc 2 441 1
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
.LFE29:
	.size	mbedtls_dhm_calc_secret, .-mbedtls_dhm_calc_secret
	.section	.text.mbedtls_dhm_free,"ax",@progbits
	.align	1
	.globl	mbedtls_dhm_free
	.type	mbedtls_dhm_free, @function
mbedtls_dhm_free:
.LFB30:
	.loc 2 447 1
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
	.loc 2 448 8
	lw	a5,-20(s0)
	beq	a5,zero,.L128
	.loc 2 452 5
	lw	a5,-20(s0)
	addi	a5,a5,72
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 453 5
	lw	a5,-20(s0)
	addi	a5,a5,64
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 454 5
	lw	a5,-20(s0)
	addi	a5,a5,56
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 455 5
	lw	a5,-20(s0)
	addi	a5,a5,48
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 456 5
	lw	a5,-20(s0)
	addi	a5,a5,40
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 457 5
	lw	a5,-20(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 458 5
	lw	a5,-20(s0)
	addi	a5,a5,24
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 459 5
	lw	a5,-20(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 460 5
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 461 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 463 5
	li	a1,80
	lw	a0,-20(s0)
	call	mbedtls_platform_zeroize
	j	.L125
.L128:
	.loc 2 449 9
	nop
.L125:
	.loc 2 464 1
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
	.size	mbedtls_dhm_free, .-mbedtls_dhm_free
	.section	.text.mbedtls_dhm_parse_dhm,"ax",@progbits
	.align	1
	.globl	mbedtls_dhm_parse_dhm
	.type	mbedtls_dhm_parse_dhm, @function
mbedtls_dhm_parse_dhm:
.LFB31:
	.loc 2 472 1
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
	.loc 2 473 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 504 7
	lw	a5,-56(s0)
	sw	a5,-32(s0)
	.loc 2 506 13
	lw	a4,-32(s0)
	.loc 2 506 9
	lw	a5,-60(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 515 16
	addi	a4,s0,-28
	addi	a5,s0,-32
	li	a3,48
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	sw	a0,-20(s0)
	.loc 2 515 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L130
	.loc 2 517 15
	li	a3,517
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-12288
	addi	a0,a5,-896
	call	mbedtls_error_add
	sw	a0,-20(s0)
	.loc 2 518 9
	j	.L131
.L130:
	.loc 2 521 13
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	.loc 2 521 9
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 523 16
	lw	a4,-52(s0)
	addi	a5,s0,-32
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_mpi
	sw	a0,-20(s0)
	.loc 2 523 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L132
	.loc 2 524 16
	lw	a5,-52(s0)
	addi	a4,a5,8
	addi	a5,s0,-32
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_mpi
	sw	a0,-20(s0)
	.loc 2 523 61 discriminator 2
	lw	a5,-20(s0)
	beq	a5,zero,.L133
.L132:
	.loc 2 525 15
	li	a3,525
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-12288
	addi	a0,a5,-896
	call	mbedtls_error_add
	sw	a0,-20(s0)
	.loc 2 526 9
	j	.L131
.L133:
	.loc 2 529 11
	lw	a5,-32(s0)
	.loc 2 529 8
	lw	a4,-24(s0)
	beq	a4,a5,.L134
.LBB6:
	.loc 2 533 9
	addi	a5,s0,-40
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 534 15
	addi	a4,s0,-40
	addi	a5,s0,-32
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_asn1_get_mpi
	sw	a0,-20(s0)
	.loc 2 535 9
	addi	a5,s0,-40
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 536 12
	lw	a5,-20(s0)
	beq	a5,zero,.L135
	.loc 2 537 19
	li	a3,537
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-20(s0)
	li	a5,-12288
	addi	a0,a5,-896
	call	mbedtls_error_add
	sw	a0,-20(s0)
	.loc 2 538 13
	j	.L131
.L135:
	.loc 2 540 15
	lw	a5,-32(s0)
	.loc 2 540 12
	lw	a4,-24(s0)
	beq	a4,a5,.L134
	.loc 2 541 19
	li	a3,541
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,-102
	li	a5,-12288
	addi	a0,a5,-896
	call	mbedtls_error_add
	sw	a0,-20(s0)
	.loc 2 543 13
	j	.L131
.L134:
.LBE6:
	.loc 2 547 9
	sw	zero,-20(s0)
.L131:
	.loc 2 553 8
	lw	a5,-20(s0)
	beq	a5,zero,.L138
	.loc 2 554 9
	lw	a0,-52(s0)
	call	mbedtls_dhm_free
.L138:
	.loc 2 557 12
	lw	a5,-20(s0)
	.loc 2 558 1
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
.LFE31:
	.size	mbedtls_dhm_parse_dhm, .-mbedtls_dhm_parse_dhm
	.section	.rodata.mbedtls_test_dhm_params,"a"
	.align	2
	.type	mbedtls_test_dhm_params, @object
	.size	mbedtls_test_dhm_params, 138
mbedtls_test_dhm_params:
	.base64	"MIGHAoGBAJ419DBEOgmQTzo5qXl5fQcN9TN455wkOL7052HzxxRVMyhYmwQcgJvh1sa18fyfR9OiVEMYglOpkqVoGLN7qd5aQNNi5W7/C+VBdHTBJcGZJyyP5B3qcz329mLJKudlVudV0Qxk5qUJaPZ/xupz0NyoVpviuiBOI1gNi8ovSXWzAgEC"
	.section	.srodata.mbedtls_test_dhm_params_len,"a"
	.align	2
	.type	mbedtls_test_dhm_params_len, @object
	.size	mbedtls_test_dhm_params_len, 4
mbedtls_test_dhm_params_len:
	.word	138
	.section	.rodata
	.align	2
.LC1:
	.string	"  DHM parameter load: "
	.align	2
.LC2:
	.string	"failed\n"
	.align	2
.LC3:
	.string	"passed\n\n"
	.section	.text.mbedtls_dhm_self_test,"ax",@progbits
	.align	1
	.globl	mbedtls_dhm_self_test
	.type	mbedtls_dhm_self_test, @function
mbedtls_dhm_self_test:
.LFB32:
	.loc 2 667 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	a0,-116(s0)
	.loc 2 668 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 671 5
	addi	a5,s0,-100
	mv	a0,a5
	call	mbedtls_dhm_init
	.loc 2 673 8
	lw	a5,-116(s0)
	beq	a5,zero,.L141
	.loc 2 674 9
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
.L141:
	.loc 2 677 16
	li	a5,138
	addi	a4,s0,-100
	mv	a2,a5
	lui	a5,%hi(mbedtls_test_dhm_params)
	addi	a1,a5,%lo(mbedtls_test_dhm_params)
	mv	a0,a4
	call	mbedtls_dhm_parse_dhm
	sw	a0,-20(s0)
	.loc 2 677 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L142
	.loc 2 680 12
	lw	a5,-116(s0)
	beq	a5,zero,.L143
	.loc 2 681 13
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L143:
	.loc 2 684 13
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 685 9
	j	.L144
.L142:
	.loc 2 688 8
	lw	a5,-116(s0)
	beq	a5,zero,.L146
	.loc 2 689 9
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	j	.L144
.L146:
	.loc 2 692 1
	nop
.L144:
	.loc 2 693 5
	addi	a5,s0,-100
	mv	a0,a5
	call	mbedtls_dhm_free
	.loc 2 695 12
	lw	a5,-20(s0)
	.loc 2 696 1
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
.LFE32:
	.size	mbedtls_dhm_self_test, .-mbedtls_dhm_self_test
	.text
.Letext0:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/dhm.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/asn1.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/bignum_internal.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xcca
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1a
	.4byte	.LASF92
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
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
	.uleb128 0xd
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
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xa
	.4byte	.LASF12
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0xd
	.4byte	0x76
	.uleb128 0xb
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x5
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x5
	.byte	0x31
	.byte	0x1c
	.4byte	0x45
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x1c
	.byte	0x4
	.uleb128 0x6
	.4byte	0x32
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0xd
	.4byte	0xc5
	.uleb128 0x6
	.4byte	0xcc
	.uleb128 0x1d
	.4byte	0xd1
	.uleb128 0x6
	.4byte	0xe0
	.uleb128 0x1e
	.uleb128 0x1f
	.byte	0x2
	.byte	0x3
	.byte	0x56
	.byte	0x9
	.4byte	0xf6
	.uleb128 0x7
	.string	"x"
	.byte	0x3
	.byte	0x57
	.byte	0xe
	.4byte	0xa6
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x3
	.byte	0x58
	.byte	0x1b
	.4byte	0xe1
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x6
	.byte	0xd1
	.byte	0xd
	.4byte	0x10e
	.uleb128 0x20
	.4byte	0x68
	.4byte	0x127
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0xc0
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x7
	.byte	0xa9
	.byte	0x11
	.4byte	0x8e
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x7
	.byte	0xaa
	.byte	0x12
	.4byte	0xb2
	.uleb128 0x15
	.4byte	.LASF22
	.byte	0x8
	.byte	0x7
	.byte	0xd0
	.4byte	0x16d
	.uleb128 0x7
	.string	"p"
	.byte	0x7
	.byte	0xd5
	.byte	0x17
	.4byte	0x16d
	.byte	0
	.uleb128 0x7
	.string	"s"
	.byte	0x7
	.byte	0xe2
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x7
	.string	"n"
	.byte	0x7
	.byte	0xe5
	.byte	0x14
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.4byte	0x133
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x7
	.byte	0xf0
	.byte	0x1
	.4byte	0x13f
	.uleb128 0xd
	.4byte	0x172
	.uleb128 0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x8
	.byte	0x53
	.byte	0xe
	.4byte	0x1b6
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x8
	.byte	0x5a
	.byte	0x3
	.4byte	0x183
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x50
	.byte	0x8
	.byte	0x65
	.4byte	0x243
	.uleb128 0x7
	.string	"P"
	.byte	0x8
	.byte	0x66
	.byte	0x11
	.4byte	0x172
	.byte	0
	.uleb128 0x7
	.string	"G"
	.byte	0x8
	.byte	0x67
	.byte	0x11
	.4byte	0x172
	.byte	0x8
	.uleb128 0x7
	.string	"X"
	.byte	0x8
	.byte	0x68
	.byte	0x11
	.4byte	0x172
	.byte	0x10
	.uleb128 0x7
	.string	"GX"
	.byte	0x8
	.byte	0x69
	.byte	0x11
	.4byte	0x172
	.byte	0x18
	.uleb128 0x7
	.string	"GY"
	.byte	0x8
	.byte	0x6a
	.byte	0x11
	.4byte	0x172
	.byte	0x20
	.uleb128 0x7
	.string	"K"
	.byte	0x8
	.byte	0x6b
	.byte	0x11
	.4byte	0x172
	.byte	0x28
	.uleb128 0x7
	.string	"RP"
	.byte	0x8
	.byte	0x6c
	.byte	0x11
	.4byte	0x172
	.byte	0x30
	.uleb128 0x7
	.string	"Vi"
	.byte	0x8
	.byte	0x6d
	.byte	0x11
	.4byte	0x172
	.byte	0x38
	.uleb128 0x7
	.string	"Vf"
	.byte	0x8
	.byte	0x6e
	.byte	0x11
	.4byte	0x172
	.byte	0x40
	.uleb128 0x7
	.string	"pX"
	.byte	0x8
	.byte	0x6f
	.byte	0x11
	.4byte	0x172
	.byte	0x48
	.byte	0
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x8
	.byte	0x71
	.byte	0x1
	.4byte	0x1c2
	.uleb128 0xd
	.4byte	0x243
	.uleb128 0x22
	.4byte	0xcc
	.4byte	0x264
	.uleb128 0x23
	.4byte	0x6f
	.byte	0x89
	.byte	0
	.uleb128 0xd
	.4byte	0x254
	.uleb128 0x16
	.4byte	.LASF31
	.2byte	0x285
	.byte	0x13
	.4byte	0x264
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_dhm_params
	.uleb128 0x16
	.4byte	.LASF32
	.2byte	0x295
	.byte	0x15
	.4byte	0x82
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_dhm_params_len
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x9
	.byte	0xce
	.byte	0x5
	.4byte	0x68
	.4byte	0x2a4
	.uleb128 0x1
	.4byte	0xd6
	.uleb128 0x24
	.byte	0
	.uleb128 0x5
	.4byte	.LASF34
	.byte	0xa
	.2byte	0x21d
	.byte	0x5
	.4byte	0x68
	.4byte	0x2c5
	.uleb128 0x1
	.4byte	0x2c5
	.uleb128 0x1
	.4byte	0x2ca
	.uleb128 0x1
	.4byte	0x2cf
	.byte	0
	.uleb128 0x6
	.4byte	0xc0
	.uleb128 0x6
	.4byte	0x39
	.uleb128 0x6
	.4byte	0x172
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0xa
	.byte	0xf5
	.byte	0x5
	.4byte	0x68
	.4byte	0x2f9
	.uleb128 0x1
	.4byte	0x2c5
	.uleb128 0x1
	.4byte	0x2ca
	.uleb128 0x1
	.4byte	0x2f9
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x6
	.4byte	0x76
	.uleb128 0x17
	.4byte	.LASF48
	.byte	0x6
	.byte	0x9f
	.4byte	0x314
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0xb
	.byte	0x4f
	.byte	0x5
	.4byte	0x68
	.4byte	0x339
	.uleb128 0x1
	.4byte	0x2cf
	.uleb128 0x1
	.4byte	0x2cf
	.uleb128 0x1
	.4byte	0x339
	.uleb128 0x1
	.4byte	0x339
	.byte	0
	.uleb128 0x6
	.4byte	0x17e
	.uleb128 0x5
	.4byte	.LASF37
	.byte	0x7
	.2byte	0x35d
	.byte	0x5
	.4byte	0x68
	.4byte	0x35f
	.uleb128 0x1
	.4byte	0x2cf
	.uleb128 0x1
	.4byte	0x339
	.uleb128 0x1
	.4byte	0x339
	.byte	0
	.uleb128 0x5
	.4byte	.LASF38
	.byte	0x7
	.2byte	0x30f
	.byte	0x5
	.4byte	0x68
	.4byte	0x380
	.uleb128 0x1
	.4byte	0x2cf
	.uleb128 0x1
	.4byte	0x339
	.uleb128 0x1
	.4byte	0x339
	.byte	0
	.uleb128 0x5
	.4byte	.LASF39
	.byte	0x7
	.2byte	0x181
	.byte	0x5
	.4byte	0x68
	.4byte	0x39c
	.uleb128 0x1
	.4byte	0x2cf
	.uleb128 0x1
	.4byte	0x127
	.byte	0
	.uleb128 0x5
	.4byte	.LASF40
	.byte	0x7
	.2byte	0x248
	.byte	0x5
	.4byte	0x68
	.4byte	0x3bd
	.uleb128 0x1
	.4byte	0x339
	.uleb128 0x1
	.4byte	0xc0
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x5
	.4byte	.LASF41
	.byte	0x7
	.2byte	0x38e
	.byte	0x5
	.4byte	0x68
	.4byte	0x3e8
	.uleb128 0x1
	.4byte	0x2cf
	.uleb128 0x1
	.4byte	0x339
	.uleb128 0x1
	.4byte	0x339
	.uleb128 0x1
	.4byte	0x339
	.uleb128 0x1
	.4byte	0x2cf
	.byte	0
	.uleb128 0x5
	.4byte	.LASF42
	.byte	0x7
	.2byte	0x3a3
	.byte	0x5
	.4byte	0x68
	.4byte	0x40e
	.uleb128 0x1
	.4byte	0x2cf
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x40e
	.uleb128 0x1
	.4byte	0xbe
	.byte	0
	.uleb128 0x6
	.4byte	0x102
	.uleb128 0x5
	.4byte	.LASF43
	.byte	0x7
	.2byte	0x3c7
	.byte	0x5
	.4byte	0x68
	.4byte	0x43e
	.uleb128 0x1
	.4byte	0x2cf
	.uleb128 0x1
	.4byte	0x127
	.uleb128 0x1
	.4byte	0x339
	.uleb128 0x1
	.4byte	0x40e
	.uleb128 0x1
	.4byte	0xbe
	.byte	0
	.uleb128 0x5
	.4byte	.LASF44
	.byte	0x7
	.2byte	0x132
	.byte	0x5
	.4byte	0x68
	.4byte	0x45a
	.uleb128 0x1
	.4byte	0x2cf
	.uleb128 0x1
	.4byte	0x339
	.byte	0
	.uleb128 0x5
	.4byte	.LASF45
	.byte	0x7
	.2byte	0x1c9
	.byte	0x8
	.4byte	0x76
	.4byte	0x471
	.uleb128 0x1
	.4byte	0x339
	.byte	0
	.uleb128 0x5
	.4byte	.LASF46
	.byte	0x7
	.2byte	0x1ba
	.byte	0x8
	.4byte	0x76
	.4byte	0x488
	.uleb128 0x1
	.4byte	0x339
	.byte	0
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0xc
	.byte	0x21
	.byte	0x8
	.4byte	0xbe
	.4byte	0x4a8
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x25
	.4byte	.LASF49
	.byte	0x7
	.2byte	0x103
	.byte	0x6
	.4byte	0x4bb
	.uleb128 0x1
	.4byte	0x2cf
	.byte	0
	.uleb128 0x5
	.4byte	.LASF50
	.byte	0x7
	.2byte	0x28d
	.byte	0x5
	.4byte	0x68
	.4byte	0x4d7
	.uleb128 0x1
	.4byte	0x339
	.uleb128 0x1
	.4byte	0x339
	.byte	0
	.uleb128 0x5
	.4byte	.LASF51
	.byte	0x7
	.2byte	0x2ab
	.byte	0x5
	.4byte	0x68
	.4byte	0x4f3
	.uleb128 0x1
	.4byte	0x339
	.uleb128 0x1
	.4byte	0x127
	.byte	0
	.uleb128 0x5
	.4byte	.LASF52
	.byte	0x7
	.2byte	0x300
	.byte	0x5
	.4byte	0x68
	.4byte	0x514
	.uleb128 0x1
	.4byte	0x2cf
	.uleb128 0x1
	.4byte	0x339
	.uleb128 0x1
	.4byte	0x127
	.byte	0
	.uleb128 0x17
	.4byte	.LASF53
	.byte	0x7
	.byte	0xfa
	.4byte	0x525
	.uleb128 0x1
	.4byte	0x2cf
	.byte	0
	.uleb128 0x5
	.4byte	.LASF54
	.byte	0x7
	.2byte	0x227
	.byte	0x5
	.4byte	0x68
	.4byte	0x546
	.uleb128 0x1
	.4byte	0x2cf
	.uleb128 0x1
	.4byte	0x2ca
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xf
	.4byte	.LASF55
	.2byte	0x29a
	.4byte	0x68
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x59a
	.uleb128 0x2
	.4byte	.LASF57
	.2byte	0x29a
	.byte	0x1f
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x8
	.string	"ret"
	.2byte	0x29c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"dhm"
	.2byte	0x29d
	.byte	0x19
	.4byte	0x243
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x10
	.4byte	.LASF60
	.2byte	0x2b4
	.4byte	.L144
	.byte	0
	.uleb128 0xf
	.4byte	.LASF56
	.2byte	0x1d6
	.4byte	0x68
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x63f
	.uleb128 0xc
	.string	"dhm"
	.2byte	0x1d6
	.byte	0x30
	.4byte	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF58
	.2byte	0x1d6
	.byte	0x4a
	.4byte	0x2ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF59
	.2byte	0x1d7
	.byte	0x22
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x8
	.string	"ret"
	.2byte	0x1d9
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"len"
	.2byte	0x1da
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.string	"p"
	.2byte	0x1db
	.byte	0x14
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.string	"end"
	.2byte	0x1db
	.byte	0x18
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.4byte	.LASF60
	.2byte	0x225
	.4byte	.L131
	.uleb128 0x26
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x8
	.string	"rec"
	.2byte	0x214
	.byte	0x15
	.4byte	0x172
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x243
	.uleb128 0x27
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x1be
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x66b
	.uleb128 0xc
	.string	"ctx"
	.2byte	0x1be
	.byte	0x2c
	.4byte	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF61
	.2byte	0x189
	.4byte	0x68
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x708
	.uleb128 0xc
	.string	"ctx"
	.2byte	0x189
	.byte	0x32
	.4byte	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF62
	.2byte	0x18a
	.byte	0x2c
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF63
	.2byte	0x18a
	.byte	0x3b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF64
	.2byte	0x18a
	.byte	0x50
	.4byte	0x2f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x18b
	.byte	0x23
	.4byte	0x708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF66
	.2byte	0x18c
	.byte	0x23
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.string	"ret"
	.2byte	0x18e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"GYb"
	.2byte	0x18f
	.byte	0x11
	.4byte	0x172
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.4byte	.LASF67
	.2byte	0x1b1
	.4byte	.L111
	.byte	0
	.uleb128 0x6
	.4byte	0x10e
	.uleb128 0x28
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x158
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x770
	.uleb128 0xc
	.string	"ctx"
	.2byte	0x158
	.byte	0x35
	.4byte	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x159
	.byte	0x26
	.4byte	0x708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF66
	.2byte	0x159
	.byte	0x55
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"ret"
	.2byte	0x15b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	.LASF67
	.2byte	0x182
	.4byte	.L85
	.byte	0
	.uleb128 0xf
	.4byte	.LASF68
	.2byte	0x135
	.4byte	0x68
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7fe
	.uleb128 0xc
	.string	"ctx"
	.2byte	0x135
	.byte	0x32
	.4byte	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF69
	.2byte	0x135
	.byte	0x3b
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF62
	.2byte	0x136
	.byte	0x2c
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF64
	.2byte	0x136
	.byte	0x3b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x137
	.byte	0x23
	.4byte	0x708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF66
	.2byte	0x138
	.byte	0x23
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.string	"ret"
	.2byte	0x13a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	.LASF67
	.2byte	0x14a
	.4byte	.L79
	.byte	0
	.uleb128 0xf
	.4byte	.LASF70
	.2byte	0x122
	.4byte	0x68
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x854
	.uleb128 0xc
	.string	"ctx"
	.2byte	0x122
	.byte	0x32
	.4byte	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF71
	.2byte	0x123
	.byte	0x32
	.4byte	0x2ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF72
	.2byte	0x123
	.byte	0x40
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"ret"
	.2byte	0x125
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF73
	.2byte	0x111
	.4byte	0x68
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a6
	.uleb128 0xc
	.string	"ctx"
	.2byte	0x111
	.byte	0x30
	.4byte	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"P"
	.2byte	0x112
	.byte	0x2e
	.4byte	0x339
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"G"
	.2byte	0x113
	.byte	0x2e
	.4byte	0x339
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"ret"
	.2byte	0x115
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0xe0
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x968
	.uleb128 0x3
	.string	"ctx"
	.byte	0x2
	.byte	0xe0
	.byte	0x32
	.4byte	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0x2
	.byte	0xe0
	.byte	0x3b
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x2
	.byte	0xe1
	.byte	0x2c
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0x2
	.byte	0xe1
	.byte	0x3c
	.4byte	0x2f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0x2
	.byte	0xe2
	.byte	0x23
	.4byte	0x708
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0x2
	.byte	0xe3
	.byte	0x23
	.4byte	0xbe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x9
	.string	"ret"
	.byte	0xe5
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"n1"
	.byte	0xe6
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"n2"
	.byte	0xe6
	.byte	0x10
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.string	"n3"
	.byte	0xe6
	.byte	0x14
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.string	"p"
	.byte	0xe7
	.byte	0x14
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.4byte	.LASF67
	.2byte	0x107
	.4byte	.L54
	.byte	0
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0xb5
	.4byte	0x68
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d5
	.uleb128 0x3
	.string	"ctx"
	.byte	0x2
	.byte	0xb5
	.byte	0x31
	.4byte	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0x2
	.byte	0xb5
	.byte	0x3a
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0x2
	.byte	0xb6
	.byte	0x22
	.4byte	0x708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0x2
	.byte	0xb7
	.byte	0x22
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.string	"ret"
	.byte	0xb9
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0xd9
	.4byte	.L47
	.byte	0
	.uleb128 0x13
	.4byte	.LASF77
	.byte	0xa9
	.4byte	0x68
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa3e
	.uleb128 0x3
	.string	"R"
	.byte	0x2
	.byte	0xa9
	.byte	0x2a
	.4byte	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"M"
	.byte	0x2
	.byte	0xa9
	.byte	0x40
	.4byte	0x339
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0x2
	.byte	0xaa
	.byte	0x23
	.4byte	0x708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0x2
	.byte	0xaa
	.byte	0x52
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.string	"ret"
	.byte	0xac
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0xb1
	.4byte	.L38
	.byte	0
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0x93
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa91
	.uleb128 0x3
	.string	"ctx"
	.byte	0x2
	.byte	0x93
	.byte	0x32
	.4byte	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"p"
	.byte	0x2
	.byte	0x94
	.byte	0x2d
	.4byte	0x2c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"end"
	.byte	0x2
	.byte	0x95
	.byte	0x32
	.4byte	0x2ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.string	"ret"
	.byte	0x97
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0x72
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae6
	.uleb128 0x3
	.string	"ctx"
	.byte	0x2
	.byte	0x72
	.byte	0x36
	.4byte	0xae6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0x2
	.byte	0x73
	.byte	0x31
	.4byte	0x1b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x2
	.byte	0x74
	.byte	0x28
	.4byte	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.string	"src"
	.byte	0x76
	.byte	0x18
	.4byte	0x339
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0x24f
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x6d
	.byte	0x8
	.4byte	0x76
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb14
	.uleb128 0x3
	.string	"ctx"
	.byte	0x2
	.byte	0x6d
	.byte	0x37
	.4byte	0xae6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0x68
	.byte	0x8
	.4byte	0x76
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb3d
	.uleb128 0x3
	.string	"ctx"
	.byte	0x2
	.byte	0x68
	.byte	0x3a
	.4byte	0xae6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.4byte	.LASF85
	.byte	0x2
	.byte	0x63
	.byte	0x6
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb63
	.uleb128 0x3
	.string	"ctx"
	.byte	0x2
	.byte	0x63
	.byte	0x2c
	.4byte	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF86
	.byte	0x50
	.4byte	0x68
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbbc
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0x2
	.byte	0x50
	.byte	0x2f
	.4byte	0x339
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"P"
	.byte	0x2
	.byte	0x50
	.byte	0x49
	.4byte	0x339
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"U"
	.byte	0x52
	.byte	0x11
	.4byte	0x172
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.string	"ret"
	.byte	0x53
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x5e
	.4byte	.L11
	.byte	0
	.uleb128 0x13
	.4byte	.LASF87
	.byte	0x2a
	.4byte	0x68
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc41
	.uleb128 0x3
	.string	"X"
	.byte	0x2
	.byte	0x2a
	.byte	0x29
	.4byte	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.string	"p"
	.byte	0x2
	.byte	0x2b
	.byte	0x2c
	.4byte	0x2c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.string	"end"
	.byte	0x2
	.byte	0x2c
	.byte	0x31
	.4byte	0x2ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x9
	.string	"ret"
	.byte	0x2e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"n"
	.byte	0x2e
	.byte	0xe
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.4byte	0xc98
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x2
	.byte	0x34
	.byte	0x4d
	.uleb128 0x2b
	.4byte	0xca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.4byte	0xcb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x18
	.4byte	0xcbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF88
	.byte	0x1
	.byte	0x8e
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc98
	.uleb128 0x4
	.4byte	.LASF89
	.byte	0x1
	.byte	0x8e
	.byte	0x29
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"low"
	.byte	0x1
	.byte	0x8e
	.byte	0x33
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF90
	.byte	0x1
	.byte	0x8f
	.byte	0x31
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF91
	.byte	0x1
	.byte	0x8f
	.byte	0x3b
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF93
	.byte	0x3
	.byte	0x73
	.byte	0x18
	.4byte	0xa6
	.byte	0x3
	.4byte	0xcc8
	.uleb128 0x2e
	.string	"p"
	.byte	0x3
	.byte	0x73
	.byte	0x41
	.4byte	0xdb
	.uleb128 0x19
	.string	"r"
	.byte	0x75
	.byte	0xe
	.4byte	0xa6
	.uleb128 0x19
	.string	"p16"
	.byte	0x7a
	.byte	0x21
	.4byte	0xcc8
	.byte	0
	.uleb128 0x6
	.4byte	0xf6
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x28
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xac
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF33:
	.string	"printf"
.LASF55:
	.string	"mbedtls_dhm_self_test"
.LASF12:
	.string	"size_t"
.LASF52:
	.string	"mbedtls_mpi_sub_int"
.LASF9:
	.string	"long long unsigned int"
.LASF22:
	.string	"mbedtls_mpi"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF18:
	.string	"mbedtls_uint16_unaligned_t"
.LASF54:
	.string	"mbedtls_mpi_read_binary"
.LASF65:
	.string	"f_rng"
.LASF76:
	.string	"dhm_make_common"
.LASF58:
	.string	"dhmin"
.LASF63:
	.string	"output_size"
.LASF6:
	.string	"long int"
.LASF59:
	.string	"dhminlen"
.LASF15:
	.string	"uint16_t"
.LASF64:
	.string	"olen"
.LASF79:
	.string	"mbedtls_dhm_get_value"
.LASF75:
	.string	"dhm_update_blinding"
.LASF50:
	.string	"mbedtls_mpi_cmp_mpi"
.LASF24:
	.string	"MBEDTLS_DHM_PARAM_G"
.LASF31:
	.string	"mbedtls_test_dhm_params"
.LASF28:
	.string	"MBEDTLS_DHM_PARAM_K"
.LASF23:
	.string	"MBEDTLS_DHM_PARAM_P"
.LASF10:
	.string	"unsigned int"
.LASF68:
	.string	"mbedtls_dhm_make_public"
.LASF7:
	.string	"long unsigned int"
.LASF32:
	.string	"mbedtls_test_dhm_params_len"
.LASF73:
	.string	"mbedtls_dhm_set_group"
.LASF5:
	.string	"short unsigned int"
.LASF53:
	.string	"mbedtls_mpi_init"
.LASF30:
	.string	"mbedtls_dhm_context"
.LASF45:
	.string	"mbedtls_mpi_size"
.LASF41:
	.string	"mbedtls_mpi_exp_mod"
.LASF37:
	.string	"mbedtls_mpi_mod_mpi"
.LASF74:
	.string	"mbedtls_dhm_make_params"
.LASF49:
	.string	"mbedtls_mpi_free"
.LASF66:
	.string	"p_rng"
.LASF56:
	.string	"mbedtls_dhm_parse_dhm"
.LASF62:
	.string	"output"
.LASF85:
	.string	"mbedtls_dhm_init"
.LASF11:
	.string	"long double"
.LASF77:
	.string	"dhm_random_below"
.LASF69:
	.string	"x_size"
.LASF80:
	.string	"param"
.LASF84:
	.string	"mbedtls_dhm_free"
.LASF88:
	.string	"mbedtls_error_add"
.LASF29:
	.string	"mbedtls_dhm_parameter"
.LASF83:
	.string	"mbedtls_dhm_get_bitlen"
.LASF67:
	.string	"cleanup"
.LASF81:
	.string	"dest"
.LASF90:
	.string	"file"
.LASF61:
	.string	"mbedtls_dhm_calc_secret"
.LASF39:
	.string	"mbedtls_mpi_lset"
.LASF21:
	.string	"mbedtls_mpi_uint"
.LASF82:
	.string	"mbedtls_dhm_get_len"
.LASF13:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF36:
	.string	"mbedtls_mpi_gcd_modinv_odd"
.LASF4:
	.string	"short int"
.LASF40:
	.string	"mbedtls_mpi_write_binary"
.LASF43:
	.string	"mbedtls_mpi_random"
.LASF26:
	.string	"MBEDTLS_DHM_PARAM_GX"
.LASF27:
	.string	"MBEDTLS_DHM_PARAM_GY"
.LASF60:
	.string	"exit"
.LASF70:
	.string	"mbedtls_dhm_read_public"
.LASF71:
	.string	"input"
.LASF35:
	.string	"mbedtls_asn1_get_tag"
.LASF16:
	.string	"uint32_t"
.LASF51:
	.string	"mbedtls_mpi_cmp_int"
.LASF17:
	.string	"char"
.LASF48:
	.string	"mbedtls_platform_zeroize"
.LASF57:
	.string	"verbose"
.LASF19:
	.string	"mbedtls_f_rng_t"
.LASF38:
	.string	"mbedtls_mpi_mul_mpi"
.LASF89:
	.string	"high"
.LASF44:
	.string	"mbedtls_mpi_copy"
.LASF91:
	.string	"line"
.LASF46:
	.string	"mbedtls_mpi_bitlen"
.LASF92:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF42:
	.string	"mbedtls_mpi_fill_random"
.LASF20:
	.string	"mbedtls_mpi_sint"
.LASF86:
	.string	"dhm_check_range"
.LASF47:
	.string	"memset"
.LASF72:
	.string	"ilen"
.LASF14:
	.string	"uint8_t"
.LASF87:
	.string	"dhm_read_bignum"
.LASF25:
	.string	"MBEDTLS_DHM_PARAM_X"
.LASF78:
	.string	"mbedtls_dhm_read_params"
.LASF93:
	.string	"mbedtls_get_unaligned_uint16"
.LASF34:
	.string	"mbedtls_asn1_get_mpi"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/dhm.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
