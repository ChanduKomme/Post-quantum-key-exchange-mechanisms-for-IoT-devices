	.file	"pk_ecc.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pk_ecc.c"
	.section	.text.mbedtls_error_add,"ax",@progbits
	.align	1
	.type	mbedtls_error_add, @function
mbedtls_error_add:
.LFB69:
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
.LFE69:
	.size	mbedtls_error_add, .-mbedtls_error_add
	.section	.text.mbedtls_pk_ec_ro,"ax",@progbits
	.align	1
	.type	mbedtls_pk_ec_ro, @function
mbedtls_pk_ec_ro:
.LFB72:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pk_internal.h"
	.loc 2 61 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	.loc 2 62 13
	addi	a5,s0,-24
	mv	a0,a5
	call	mbedtls_pk_get_type
	mv	a5,a0
	addi	a4,a5,-2
	.loc 2 62 5 discriminator 1
	li	a5,2
	bgtu	a4,a5,.L4
	.loc 2 66 20
	lw	a5,-20(s0)
	j	.L5
.L4:
	.loc 2 68 19
	li	a5,0
.L5:
	.loc 2 70 1
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
.LFE72:
	.size	mbedtls_pk_ec_ro, .-mbedtls_pk_ec_ro
	.section	.text.mbedtls_pk_ec_rw,"ax",@progbits
	.align	1
	.type	mbedtls_pk_ec_rw, @function
mbedtls_pk_ec_rw:
.LFB73:
	.loc 2 73 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	.loc 2 74 13
	addi	a5,s0,-24
	mv	a0,a5
	call	mbedtls_pk_get_type
	mv	a5,a0
	addi	a4,a5,-2
	.loc 2 74 5 discriminator 1
	li	a5,2
	bgtu	a4,a5,.L7
	.loc 2 78 20
	lw	a5,-20(s0)
	j	.L8
.L7:
	.loc 2 80 19
	li	a5,0
.L8:
	.loc 2 82 1
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
.LFE73:
	.size	mbedtls_pk_ec_rw, .-mbedtls_pk_ec_rw
	.section	.text.mbedtls_pk_ecc_set_group,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_ecc_set_group
	.type	mbedtls_pk_ecc_set_group, @function
mbedtls_pk_ecc_set_group:
.LFB76:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pk_ecc.c"
	.loc 3 18 1
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
	sb	a5,-37(s0)
	.loc 3 35 32
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_ec_rw
	sw	a0,-20(s0)
	.loc 3 38 9
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_ec_ro
	mv	a5,a0
	.loc 3 38 35 discriminator 1
	lbu	a5,0(a5)
	.loc 3 38 8 discriminator 1
	beq	a5,zero,.L10
	.loc 3 39 9
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_ec_ro
	mv	a5,a0
	.loc 3 39 35 discriminator 1
	lbu	a5,0(a5)
	.loc 3 38 62 discriminator 2
	lbu	a4,-37(s0)
	beq	a4,a5,.L10
	.loc 3 40 16
	li	a5,-16384
	addi	a5,a5,768
	j	.L11
.L10:
	.loc 3 44 12
	lw	a5,-20(s0)
	lbu	a4,-37(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecp_group_load
	mv	a5,a0
.L11:
	.loc 3 46 1
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
.LFE76:
	.size	mbedtls_pk_ecc_set_group, .-mbedtls_pk_ecc_set_group
	.section	.rodata
	.align	2
.LC0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pk_ecc.c"
	.section	.text.mbedtls_pk_ecc_set_key,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_ecc_set_key
	.type	mbedtls_pk_ecc_set_key, @function
mbedtls_pk_ecc_set_key:
.LFB77:
	.loc 3 49 1
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
	.loc 3 75 32
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_ec_rw
	sw	a0,-20(s0)
	.loc 3 76 15
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	lw	a1,-20(s0)
	mv	a0,a5
	call	mbedtls_ecp_read_key
	sw	a0,-24(s0)
	.loc 3 77 8
	lw	a5,-24(s0)
	beq	a5,zero,.L13
	.loc 3 78 16
	li	a3,78
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-24(s0)
	li	a5,-16384
	addi	a0,a5,768
	call	mbedtls_error_add
	mv	a5,a0
	j	.L14
.L13:
	.loc 3 80 12
	li	a5,0
.L14:
	.loc 3 82 1
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
.LFE77:
	.size	mbedtls_pk_ecc_set_key, .-mbedtls_pk_ecc_set_key
	.section	.text.mbedtls_pk_ecc_set_pubkey_from_prv,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_ecc_set_pubkey_from_prv
	.type	mbedtls_pk_ecc_set_pubkey_from_prv, @function
mbedtls_pk_ecc_set_pubkey_from_prv:
.LFB78:
	.loc 3 87 1
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
	.loc 3 139 26
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 3 140 12
	lw	a0,-20(s0)
	lw	a5,-20(s0)
	addi	a1,a5,104
	.loc 3 140 48
	lw	a5,-20(s0)
	addi	a2,a5,96
	.loc 3 140 57
	lw	a5,-20(s0)
	addi	a3,a5,28
	.loc 3 140 12
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	call	mbedtls_ecp_mul
	mv	a5,a0
	.loc 3 143 1
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
	.size	mbedtls_pk_ecc_set_pubkey_from_prv, .-mbedtls_pk_ecc_set_pubkey_from_prv
	.section	.text.mbedtls_pk_ecc_set_pubkey,"ax",@progbits
	.align	1
	.globl	mbedtls_pk_ecc_set_pubkey
	.type	mbedtls_pk_ecc_set_pubkey, @function
mbedtls_pk_ecc_set_pubkey:
.LFB79:
	.loc 3 205 1
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
	.loc 3 245 26
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 3 246 41
	lw	a4,-20(s0)
	.loc 3 246 11
	lw	a5,-20(s0)
	addi	a5,a5,104
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_ecp_point_read_binary
	sw	a0,-24(s0)
	.loc 3 247 8
	lw	a5,-24(s0)
	beq	a5,zero,.L18
	.loc 3 248 16
	lw	a5,-24(s0)
	j	.L19
.L18:
	.loc 3 250 37
	lw	a4,-20(s0)
	.loc 3 250 51
	lw	a5,-20(s0)
	addi	a5,a5,104
	.loc 3 250 12
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_ecp_check_pubkey
	mv	a5,a0
.L19:
	.loc 3 253 1
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
	.size	mbedtls_pk_ecc_set_pubkey, .-mbedtls_pk_ecc_set_pubkey
	.text
.Letext0:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecp.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/pk.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6d1
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x15
	.4byte	.LASF78
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
	.uleb128 0x9
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
	.uleb128 0x16
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x17
	.byte	0x4
	.uleb128 0x3
	.4byte	0x32
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x9
	.4byte	0x9c
	.uleb128 0x3
	.4byte	0xa3
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x6
	.byte	0xd1
	.byte	0xd
	.4byte	0xb9
	.uleb128 0x10
	.4byte	0x68
	.4byte	0xd2
	.uleb128 0x1
	.4byte	0x95
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x7
	.byte	0xaa
	.byte	0x12
	.4byte	0x89
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x8
	.byte	0x7
	.byte	0xd0
	.4byte	0x10c
	.uleb128 0x4
	.string	"p"
	.byte	0x7
	.byte	0xd5
	.byte	0x17
	.4byte	0x10c
	.byte	0
	.uleb128 0x4
	.string	"s"
	.byte	0x7
	.byte	0xe2
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x4
	.string	"n"
	.byte	0x7
	.byte	0xe5
	.byte	0x14
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	0xd2
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x7
	.byte	0xf0
	.byte	0x1
	.4byte	0xde
	.uleb128 0x9
	.4byte	0x111
	.uleb128 0x12
	.4byte	0x32
	.byte	0x8
	.byte	0x66
	.4byte	0x182
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x8
	.byte	0x75
	.byte	0x3
	.4byte	0x122
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x18
	.byte	0x8
	.byte	0x9e
	.4byte	0x1bc
	.uleb128 0x4
	.string	"X"
	.byte	0x8
	.byte	0x9f
	.byte	0x11
	.4byte	0x111
	.byte	0
	.uleb128 0x4
	.string	"Y"
	.byte	0x8
	.byte	0xa0
	.byte	0x11
	.4byte	0x111
	.byte	0x8
	.uleb128 0x4
	.string	"Z"
	.byte	0x8
	.byte	0xa1
	.byte	0x11
	.4byte	0x111
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x8
	.byte	0xa3
	.byte	0x1
	.4byte	0x18e
	.uleb128 0x9
	.4byte	0x1bc
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x60
	.byte	0x8
	.byte	0xe9
	.4byte	0x28e
	.uleb128 0x4
	.string	"id"
	.byte	0x8
	.byte	0xea
	.byte	0x1a
	.4byte	0x182
	.byte	0
	.uleb128 0x4
	.string	"P"
	.byte	0x8
	.byte	0xeb
	.byte	0x11
	.4byte	0x111
	.byte	0x4
	.uleb128 0x4
	.string	"A"
	.byte	0x8
	.byte	0xec
	.byte	0x11
	.4byte	0x111
	.byte	0xc
	.uleb128 0x4
	.string	"B"
	.byte	0x8
	.byte	0xf1
	.byte	0x11
	.4byte	0x111
	.byte	0x14
	.uleb128 0x4
	.string	"G"
	.byte	0x8
	.byte	0xf3
	.byte	0x17
	.4byte	0x1bc
	.byte	0x1c
	.uleb128 0x4
	.string	"N"
	.byte	0x8
	.byte	0xf4
	.byte	0x11
	.4byte	0x111
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x8
	.byte	0xf5
	.byte	0xc
	.4byte	0x76
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x8
	.byte	0xf6
	.byte	0xc
	.4byte	0x76
	.byte	0x40
	.uleb128 0x4
	.string	"h"
	.byte	0x8
	.byte	0xfb
	.byte	0x12
	.4byte	0x6f
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x8
	.byte	0xfc
	.byte	0xa
	.4byte	0x2a2
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x8
	.byte	0xfe
	.byte	0xa
	.4byte	0x2c0
	.byte	0x4c
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x8
	.byte	0xff
	.byte	0xa
	.4byte	0x2c0
	.byte	0x50
	.uleb128 0x13
	.4byte	.LASF40
	.2byte	0x100
	.byte	0xb
	.4byte	0x95
	.byte	0x54
	.uleb128 0xe
	.string	"T"
	.2byte	0x101
	.byte	0x18
	.4byte	0x2bb
	.byte	0x58
	.uleb128 0x13
	.4byte	.LASF41
	.2byte	0x102
	.byte	0xc
	.4byte	0x76
	.byte	0x5c
	.byte	0
	.uleb128 0x10
	.4byte	0x68
	.4byte	0x29d
	.uleb128 0x1
	.4byte	0x29d
	.byte	0
	.uleb128 0x3
	.4byte	0x111
	.uleb128 0x3
	.4byte	0x28e
	.uleb128 0x10
	.4byte	0x68
	.4byte	0x2bb
	.uleb128 0x1
	.4byte	0x2bb
	.uleb128 0x1
	.4byte	0x95
	.byte	0
	.uleb128 0x3
	.4byte	0x1bc
	.uleb128 0x3
	.4byte	0x2a7
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x8
	.2byte	0x104
	.byte	0x1
	.4byte	0x1cd
	.uleb128 0x9
	.4byte	0x2c5
	.uleb128 0x18
	.4byte	.LASF42
	.byte	0x80
	.byte	0x8
	.2byte	0x1ac
	.byte	0x10
	.4byte	0x309
	.uleb128 0xe
	.string	"grp"
	.2byte	0x1ad
	.byte	0x17
	.4byte	0x2c5
	.byte	0
	.uleb128 0xe
	.string	"d"
	.2byte	0x1ae
	.byte	0x11
	.4byte	0x111
	.byte	0x60
	.uleb128 0xe
	.string	"Q"
	.2byte	0x1af
	.byte	0x17
	.4byte	0x1bc
	.byte	0x68
	.byte	0
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x8
	.2byte	0x1b1
	.byte	0x1
	.4byte	0x2d7
	.uleb128 0x9
	.4byte	0x309
	.uleb128 0x12
	.4byte	0x32
	.byte	0x9
	.byte	0x49
	.4byte	0x357
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x9
	.byte	0x52
	.byte	0x3
	.4byte	0x31b
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x9
	.byte	0xd5
	.byte	0x22
	.4byte	0x374
	.uleb128 0x9
	.4byte	0x363
	.uleb128 0x19
	.4byte	.LASF52
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x8
	.byte	0x9
	.byte	0xdc
	.4byte	0x3a0
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x9
	.byte	0xdd
	.byte	0x1e
	.4byte	0x3a0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x9
	.byte	0xde
	.byte	0xb
	.4byte	0x95
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	0x36f
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x9
	.2byte	0x109
	.byte	0x3
	.4byte	0x379
	.uleb128 0x9
	.4byte	0x3a5
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x8
	.2byte	0x474
	.byte	0x5
	.4byte	0x68
	.4byte	0x3d3
	.uleb128 0x1
	.4byte	0x3d3
	.uleb128 0x1
	.4byte	0x3d8
	.byte	0
	.uleb128 0x3
	.4byte	0x2d2
	.uleb128 0x3
	.4byte	0x1c8
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x8
	.2byte	0x323
	.byte	0x5
	.4byte	0x68
	.4byte	0x403
	.uleb128 0x1
	.4byte	0x3d3
	.uleb128 0x1
	.4byte	0x2bb
	.uleb128 0x1
	.4byte	0x403
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x3
	.4byte	0x39
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x8
	.2byte	0x3c7
	.byte	0x5
	.4byte	0x68
	.4byte	0x438
	.uleb128 0x1
	.4byte	0x438
	.uleb128 0x1
	.4byte	0x2bb
	.uleb128 0x1
	.4byte	0x43d
	.uleb128 0x1
	.4byte	0x3d8
	.uleb128 0x1
	.4byte	0x442
	.uleb128 0x1
	.4byte	0x95
	.byte	0
	.uleb128 0x3
	.4byte	0x2c5
	.uleb128 0x3
	.4byte	0x11d
	.uleb128 0x3
	.4byte	0xad
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x8
	.2byte	0x530
	.byte	0x5
	.4byte	0x68
	.4byte	0x46d
	.uleb128 0x1
	.4byte	0x182
	.uleb128 0x1
	.4byte	0x46d
	.uleb128 0x1
	.4byte	0x403
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x3
	.4byte	0x309
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x9
	.2byte	0x400
	.byte	0x13
	.4byte	0x357
	.4byte	0x489
	.uleb128 0x1
	.4byte	0x489
	.byte	0
	.uleb128 0x3
	.4byte	0x3b2
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x8
	.2byte	0x369
	.byte	0x5
	.4byte	0x68
	.4byte	0x4aa
	.uleb128 0x1
	.4byte	0x438
	.uleb128 0x1
	.4byte	0x182
	.byte	0
	.uleb128 0xf
	.4byte	.LASF64
	.byte	0xcc
	.4byte	0x68
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50c
	.uleb128 0x6
	.string	"pk"
	.byte	0x3
	.byte	0xcc
	.byte	0x33
	.4byte	0x50c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"pub"
	.byte	0x3
	.byte	0xcc
	.byte	0x4c
	.4byte	0x403
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x3
	.byte	0xcc
	.byte	0x58
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"ret"
	.byte	0xf4
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.4byte	.LASF63
	.byte	0x3
	.byte	0xf5
	.byte	0x1a
	.4byte	0x46d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	0x3a5
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x54
	.4byte	0x68
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x582
	.uleb128 0x6
	.string	"pk"
	.byte	0x3
	.byte	0x54
	.byte	0x3c
	.4byte	0x50c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"prv"
	.byte	0x3
	.byte	0x55
	.byte	0x3d
	.4byte	0x403
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF66
	.byte	0x3
	.byte	0x55
	.byte	0x49
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0x3
	.byte	0x56
	.byte	0x2e
	.4byte	0x582
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x3
	.byte	0x56
	.byte	0x5d
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.string	"eck"
	.byte	0x8b
	.byte	0x1a
	.4byte	0x46d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	0xb9
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x30
	.4byte	0x68
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e8
	.uleb128 0x6
	.string	"pk"
	.byte	0x3
	.byte	0x30
	.byte	0x30
	.4byte	0x50c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"key"
	.byte	0x3
	.byte	0x30
	.byte	0x43
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF70
	.byte	0x3
	.byte	0x30
	.byte	0x4f
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"eck"
	.byte	0x4b
	.byte	0x1a
	.4byte	0x46d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"ret"
	.byte	0x4c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x11
	.4byte	0x68
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x62c
	.uleb128 0x6
	.string	"pk"
	.byte	0x3
	.byte	0x11
	.byte	0x32
	.4byte	0x50c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x3
	.byte	0x11
	.byte	0x4b
	.4byte	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0xc
	.string	"ecp"
	.byte	0x23
	.byte	0x1a
	.4byte	0x46d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x48
	.byte	0x24
	.4byte	0x46d
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x654
	.uleb128 0x6
	.string	"pk"
	.byte	0x2
	.byte	0x48
	.byte	0x4e
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x3c
	.byte	0x2a
	.4byte	0x67c
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x67c
	.uleb128 0x6
	.string	"pk"
	.byte	0x2
	.byte	0x3c
	.byte	0x54
	.4byte	0x3b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.4byte	0x316
	.uleb128 0x1b
	.4byte	.LASF79
	.byte	0x1
	.byte	0x8e
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF75
	.byte	0x1
	.byte	0x8e
	.byte	0x29
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"low"
	.byte	0x1
	.byte	0x8e
	.byte	0x33
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF76
	.byte	0x1
	.byte	0x8f
	.byte	0x31
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	.LASF77
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x14
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
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
	.uleb128 0x1b
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
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
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
	.4byte	.LFB69
	.uleb128 .LFE69-.LFB69
	.byte	0x7
	.4byte	.LFB72
	.uleb128 .LFE72-.LFB72
	.byte	0x7
	.4byte	.LFB73
	.uleb128 .LFE73-.LFB73
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF67:
	.string	"f_rng"
.LASF48:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF63:
	.string	"ec_key"
.LASF72:
	.string	"grp_id"
.LASF22:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF64:
	.string	"mbedtls_pk_ecc_set_pubkey"
.LASF4:
	.string	"short int"
.LASF12:
	.string	"size_t"
.LASF33:
	.string	"mbedtls_ecp_point"
.LASF32:
	.string	"mbedtls_ecp_group_id"
.LASF25:
	.string	"MBEDTLS_ECP_DP_BP384R1"
.LASF20:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF57:
	.string	"mbedtls_ecp_point_read_binary"
.LASF41:
	.string	"T_size"
.LASF76:
	.string	"file"
.LASF15:
	.string	"mbedtls_f_rng_t"
.LASF52:
	.string	"mbedtls_pk_info_t"
.LASF37:
	.string	"modp"
.LASF59:
	.string	"mbedtls_ecp_read_key"
.LASF68:
	.string	"p_rng"
.LASF51:
	.string	"mbedtls_pk_type_t"
.LASF77:
	.string	"line"
.LASF54:
	.string	"pk_info"
.LASF36:
	.string	"nbits"
.LASF29:
	.string	"MBEDTLS_ECP_DP_SECP224K1"
.LASF47:
	.string	"MBEDTLS_PK_ECDSA"
.LASF60:
	.string	"mbedtls_pk_get_type"
.LASF17:
	.string	"mbedtls_mpi"
.LASF8:
	.string	"long long int"
.LASF6:
	.string	"long int"
.LASF62:
	.string	"pub_len"
.LASF75:
	.string	"high"
.LASF74:
	.string	"mbedtls_pk_ec_ro"
.LASF66:
	.string	"prv_len"
.LASF61:
	.string	"mbedtls_ecp_group_load"
.LASF45:
	.string	"MBEDTLS_PK_ECKEY"
.LASF11:
	.string	"long double"
.LASF43:
	.string	"MBEDTLS_PK_NONE"
.LASF73:
	.string	"mbedtls_pk_ec_rw"
.LASF3:
	.string	"unsigned char"
.LASF79:
	.string	"mbedtls_error_add"
.LASF18:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF31:
	.string	"MBEDTLS_ECP_DP_CURVE448"
.LASF10:
	.string	"unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF50:
	.string	"MBEDTLS_PK_OPAQUE"
.LASF44:
	.string	"MBEDTLS_PK_RSA"
.LASF14:
	.string	"char"
.LASF40:
	.string	"t_data"
.LASF39:
	.string	"t_post"
.LASF55:
	.string	"pk_ctx"
.LASF58:
	.string	"mbedtls_ecp_mul"
.LASF21:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF38:
	.string	"t_pre"
.LASF56:
	.string	"mbedtls_ecp_check_pubkey"
.LASF7:
	.string	"long unsigned int"
.LASF69:
	.string	"mbedtls_pk_ecc_set_key"
.LASF26:
	.string	"MBEDTLS_ECP_DP_BP512R1"
.LASF53:
	.string	"mbedtls_pk_context"
.LASF70:
	.string	"key_len"
.LASF16:
	.string	"mbedtls_mpi_uint"
.LASF30:
	.string	"MBEDTLS_ECP_DP_SECP256K1"
.LASF19:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF46:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF27:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF34:
	.string	"mbedtls_ecp_group"
.LASF23:
	.string	"MBEDTLS_ECP_DP_SECP521R1"
.LASF49:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF42:
	.string	"mbedtls_ecp_keypair"
.LASF65:
	.string	"mbedtls_pk_ecc_set_pubkey_from_prv"
.LASF71:
	.string	"mbedtls_pk_ecc_set_group"
.LASF24:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF78:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF28:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
.LASF35:
	.string	"pbits"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pk_ecc.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
