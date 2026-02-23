	.file	"psa_crypto_driver_wrappers_no_static.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_driver_wrappers_no_static.c"
	.section	.text.psa_get_key_lifetime,"ax",@progbits
	.align	1
	.type	psa_get_key_lifetime, @function
psa_get_key_lifetime:
.LFB41:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_struct.h"
	.loc 1 379 1
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
	.loc 1 380 22
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 381 1
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
	.size	psa_get_key_lifetime, .-psa_get_key_lifetime
	.section	.text.psa_get_key_type,"ax",@progbits
	.align	1
	.type	psa_get_key_type, @function
psa_get_key_type:
.LFB48:
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
	.section	.text.psa_get_key_bits,"ax",@progbits
	.align	1
	.type	psa_get_key_bits, @function
psa_get_key_bits:
.LFB50:
	.loc 1 443 1
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
	.loc 1 444 22
	lw	a5,-20(s0)
	lhu	a5,2(a5)
	.loc 1 445 1
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
.LFE50:
	.size	psa_get_key_bits, .-psa_get_key_bits
	.section	.text.psa_driver_wrapper_get_key_buffer_size,"ax",@progbits
	.align	1
	.globl	psa_driver_wrapper_get_key_buffer_size
	.type	psa_driver_wrapper_get_key_buffer_size, @function
psa_driver_wrapper_get_key_buffer_size:
.LFB70:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_driver_wrappers_no_static.c"
	.loc 2 89 1
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
	.loc 2 90 59
	lw	a0,-36(s0)
	call	psa_get_key_lifetime
	mv	a5,a0
	.loc 2 90 24 discriminator 1
	srli	a5,a5,8
	sw	a5,-20(s0)
	.loc 2 91 31
	lw	a0,-36(s0)
	call	psa_get_key_type
	mv	a5,a0
	sh	a5,-22(s0)
	.loc 2 92 23
	lw	a0,-36(s0)
	call	psa_get_key_bits
	sw	a0,-28(s0)
	.loc 2 94 22
	lw	a5,-40(s0)
	sw	zero,0(a5)
	.loc 2 118 19
	li	a5,-135
	.loc 2 120 1
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
.LFE70:
	.size	psa_driver_wrapper_get_key_buffer_size, .-psa_driver_wrapper_get_key_buffer_size
	.section	.text.psa_driver_wrapper_export_public_key,"ax",@progbits
	.align	1
	.globl	psa_driver_wrapper_export_public_key
	.type	psa_driver_wrapper_export_public_key, @function
psa_driver_wrapper_export_public_key:
.LFB71:
	.loc 2 127 1
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
	.loc 2 129 18
	li	a5,-135
	sw	a5,-20(s0)
	.loc 2 130 59
	lw	a0,-36(s0)
	call	psa_get_key_lifetime
	mv	a5,a0
	.loc 2 130 24 discriminator 1
	srli	a5,a5,8
	sw	a5,-24(s0)
	.loc 2 153 5
	lw	a5,-24(s0)
	bne	a5,zero,.L10
	.loc 2 191 21
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	psa_export_public_key_internal
	mv	a5,a0
	j	.L11
.L10:
	.loc 2 217 19
	lw	a5,-20(s0)
.L11:
	.loc 2 220 1
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
.LFE71:
	.size	psa_driver_wrapper_export_public_key, .-psa_driver_wrapper_export_public_key
	.section	.text.psa_driver_wrapper_get_builtin_key,"ax",@progbits
	.align	1
	.globl	psa_driver_wrapper_get_builtin_key
	.type	psa_driver_wrapper_get_builtin_key, @function
psa_driver_wrapper_get_builtin_key:
.LFB72:
	.loc 2 226 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	.loc 2 228 59
	lw	a0,-44(s0)
	call	psa_get_key_lifetime
	mv	a5,a0
	.loc 2 228 24 discriminator 1
	srli	a5,a5,8
	sw	a5,-20(s0)
	.loc 2 251 19
	li	a5,-140
	.loc 2 254 1
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
.LFE72:
	.size	psa_driver_wrapper_get_builtin_key, .-psa_driver_wrapper_get_builtin_key
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_types.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_extra.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_core.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3fd
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0xb
	.4byte	0x90
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0x40
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x37
	.byte	0x20
	.4byte	0x5c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x3b
	.byte	0x11
	.4byte	0x84
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x4e
	.byte	0x12
	.4byte	0xa1
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x86
	.byte	0x12
	.4byte	0xad
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0xb7
	.byte	0x12
	.4byte	0xad
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x104
	.byte	0x12
	.4byte	0xad
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x113
	.byte	0x12
	.4byte	0xad
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x124
	.byte	0x16
	.4byte	0x109
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x143
	.byte	0x12
	.4byte	0xad
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x1b0
	.byte	0x25
	.4byte	0x142
	.uleb128 0xb
	.4byte	0x130
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x18
	.2byte	0x127
	.4byte	0x18f
	.uleb128 0x5
	.4byte	.LASF28
	.2byte	0x12c
	.byte	0x14
	.4byte	0xd8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF29
	.2byte	0x12d
	.byte	0x14
	.4byte	0x1da
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF30
	.2byte	0x12e
	.byte	0x18
	.4byte	0xf0
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF31
	.2byte	0x12f
	.byte	0x16
	.4byte	0x1cd
	.byte	0x8
	.uleb128 0xd
	.string	"id"
	.2byte	0x13b
	.byte	0x1a
	.4byte	0x116
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.4byte	0x71
	.uleb128 0x8
	.4byte	0x90
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0xc
	.2byte	0x10c
	.4byte	0x1cd
	.uleb128 0x5
	.4byte	.LASF34
	.2byte	0x10d
	.byte	0x15
	.4byte	0x123
	.byte	0
	.uleb128 0xd
	.string	"alg"
	.2byte	0x10e
	.byte	0x15
	.4byte	0xe4
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF35
	.2byte	0x10f
	.byte	0x15
	.4byte	0xe4
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x111
	.byte	0x21
	.4byte	0x199
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x11c
	.byte	0x12
	.4byte	0xa1
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x204
	.byte	0x12
	.4byte	0xb9
	.uleb128 0x8
	.4byte	0x9c
	.uleb128 0x8
	.4byte	0x13d
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x7
	.2byte	0x16d
	.byte	0xe
	.4byte	0xcc
	.4byte	0x22e
	.uleb128 0x6
	.4byte	0x1f9
	.uleb128 0x6
	.4byte	0x1f4
	.uleb128 0x6
	.4byte	0x71
	.uleb128 0x6
	.4byte	0x194
	.uleb128 0x6
	.4byte	0x71
	.uleb128 0x6
	.4byte	0x18f
	.byte	0
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0xde
	.4byte	0xcc
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29b
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0xdf
	.byte	0x1b
	.4byte	0x1e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0xe0
	.byte	0x1b
	.4byte	0x29b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xe1
	.byte	0xe
	.4byte	0x194
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0xe1
	.byte	0x21
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0xe1
	.byte	0x3a
	.4byte	0x18f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0xe4
	.byte	0x18
	.4byte	0xfc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	0x130
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x7a
	.4byte	0xcc
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x329
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x7b
	.byte	0x21
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x7c
	.byte	0x14
	.4byte	0x1f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x7c
	.byte	0x27
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x7d
	.byte	0xe
	.4byte	0x194
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x7d
	.byte	0x1b
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x7d
	.byte	0x2e
	.4byte	0x18f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x81
	.byte	0x12
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x82
	.byte	0x18
	.4byte	0xfc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x56
	.4byte	0xcc
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x388
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x57
	.byte	0x21
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x58
	.byte	0xd
	.4byte	0x18f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x5a
	.byte	0x18
	.4byte	0xfc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x5b
	.byte	0x14
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x5c
	.byte	0xc
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xe
	.4byte	.LASF54
	.2byte	0x1b9
	.byte	0x16
	.4byte	0x71
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b1
	.uleb128 0xa
	.4byte	.LASF40
	.2byte	0x1ba
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF55
	.2byte	0x1a9
	.byte	0x1e
	.4byte	0xd8
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3da
	.uleb128 0xa
	.4byte	.LASF40
	.2byte	0x1aa
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x179
	.byte	0x22
	.4byte	0xf0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF40
	.2byte	0x17a
	.4byte	0x1f9
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x5
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0x21
	.sleb128 33
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
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
	.4byte	.LFB41
	.uleb128 .LFE41-.LFB41
	.byte	0x7
	.4byte	.LFB48
	.uleb128 .LFE48-.LFB48
	.byte	0x7
	.4byte	.LFB50
	.uleb128 .LFE50-.LFB50
	.byte	0x7
	.4byte	.LFB70
	.uleb128 .LFE70-.LFB70
	.byte	0x7
	.4byte	.LFB71
	.uleb128 .LFE71-.LFB71
	.byte	0x7
	.4byte	.LFB72
	.uleb128 .LFE72-.LFB72
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF41:
	.string	"key_buffer"
.LASF22:
	.string	"psa_key_lifetime_t"
.LASF12:
	.string	"size_t"
.LASF49:
	.string	"location"
.LASF37:
	.string	"psa_key_bits_t"
.LASF58:
	.string	"psa_get_key_lifetime"
.LASF31:
	.string	"policy"
.LASF52:
	.string	"key_type"
.LASF42:
	.string	"key_buffer_size"
.LASF32:
	.string	"psa_key_attributes_s"
.LASF27:
	.string	"psa_key_attributes_t"
.LASF17:
	.string	"uint64_t"
.LASF50:
	.string	"status"
.LASF35:
	.string	"alg2"
.LASF57:
	.string	"psa_export_public_key_internal"
.LASF44:
	.string	"psa_driver_wrapper_get_builtin_key"
.LASF46:
	.string	"data"
.LASF9:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned char"
.LASF51:
	.string	"psa_driver_wrapper_get_key_buffer_size"
.LASF40:
	.string	"attributes"
.LASF7:
	.string	"long unsigned int"
.LASF38:
	.string	"psa_drv_slot_number_t"
.LASF47:
	.string	"data_size"
.LASF45:
	.string	"psa_driver_wrapper_export_public_key"
.LASF23:
	.string	"psa_key_location_t"
.LASF55:
	.string	"psa_get_key_type"
.LASF4:
	.string	"short int"
.LASF24:
	.string	"psa_key_id_t"
.LASF34:
	.string	"usage"
.LASF20:
	.string	"psa_key_type_t"
.LASF26:
	.string	"psa_key_usage_t"
.LASF30:
	.string	"lifetime"
.LASF18:
	.string	"char"
.LASF14:
	.string	"uint8_t"
.LASF25:
	.string	"mbedtls_svc_key_id_t"
.LASF43:
	.string	"key_buffer_length"
.LASF13:
	.string	"int32_t"
.LASF15:
	.string	"uint16_t"
.LASF8:
	.string	"long long int"
.LASF54:
	.string	"psa_get_key_bits"
.LASF33:
	.string	"psa_key_policy_s"
.LASF36:
	.string	"psa_key_policy_t"
.LASF29:
	.string	"bits"
.LASF10:
	.string	"unsigned int"
.LASF28:
	.string	"type"
.LASF48:
	.string	"data_length"
.LASF56:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF6:
	.string	"long int"
.LASF39:
	.string	"slot_number"
.LASF11:
	.string	"long double"
.LASF2:
	.string	"signed char"
.LASF16:
	.string	"uint32_t"
.LASF5:
	.string	"short unsigned int"
.LASF19:
	.string	"psa_status_t"
.LASF53:
	.string	"key_bits"
.LASF21:
	.string	"psa_algorithm_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_driver_wrappers_no_static.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
