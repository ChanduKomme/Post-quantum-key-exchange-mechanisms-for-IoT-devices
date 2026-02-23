	.file	"hkdf.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/hkdf.c"
	.section	.text.mbedtls_hkdf,"ax",@progbits
	.align	1
	.globl	mbedtls_hkdf
	.type	mbedtls_hkdf, @function
mbedtls_hkdf:
.LFB13:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/hkdf.c"
	.loc 1 20 1
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
	.loc 1 21 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 24 11
	addi	a5,s0,-84
	lw	a4,-116(s0)
	lw	a3,-112(s0)
	lw	a2,-108(s0)
	lw	a1,-104(s0)
	lw	a0,-100(s0)
	call	mbedtls_hkdf_extract
	sw	a0,-20(s0)
	.loc 1 26 8
	lw	a5,-20(s0)
	bne	a5,zero,.L2
	.loc 1 27 44
	lw	a0,-100(s0)
	call	mbedtls_md_get_size
	mv	a5,a0
	.loc 1 27 15 discriminator 1
	mv	a2,a5
	addi	a1,s0,-84
	lw	a6,0(s0)
	lw	a5,-128(s0)
	lw	a4,-124(s0)
	lw	a3,-120(s0)
	lw	a0,-100(s0)
	call	mbedtls_hkdf_expand
	sw	a0,-20(s0)
.L2:
	.loc 1 31 5
	addi	a5,s0,-84
	li	a1,64
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 1 33 12
	lw	a5,-20(s0)
	.loc 1 34 1
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
.LFE13:
	.size	mbedtls_hkdf, .-mbedtls_hkdf
	.section	.text.mbedtls_hkdf_extract,"ax",@progbits
	.align	1
	.globl	mbedtls_hkdf_extract
	.type	mbedtls_hkdf_extract, @function
mbedtls_hkdf_extract:
.LFB14:
	.loc 1 40 1
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
	.loc 1 41 19
	addi	a5,s0,-84
	li	a4,64
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 43 8
	lw	a5,-104(s0)
	bne	a5,zero,.L5
.LBB2:
	.loc 1 46 12
	lw	a5,-108(s0)
	beq	a5,zero,.L6
	.loc 1 47 20
	li	a5,-24576
	addi	a5,a5,128
	j	.L9
.L6:
	.loc 1 50 20
	lw	a0,-100(s0)
	call	mbedtls_md_get_size
	mv	a5,a0
	.loc 1 50 18 discriminator 1
	sw	a5,-20(s0)
	.loc 1 52 12
	lw	a5,-20(s0)
	bne	a5,zero,.L8
	.loc 1 53 20
	li	a5,-24576
	addi	a5,a5,128
	j	.L9
.L8:
	.loc 1 56 14
	addi	a5,s0,-84
	sw	a5,-104(s0)
	.loc 1 57 18
	lw	a5,-20(s0)
	sw	a5,-108(s0)
.L5:
.LBE2:
	.loc 1 60 12
	lw	a5,-120(s0)
	lw	a4,-116(s0)
	lw	a3,-112(s0)
	lw	a2,-108(s0)
	lw	a1,-104(s0)
	lw	a0,-100(s0)
	call	mbedtls_md_hmac
	mv	a5,a0
.L9:
	.loc 1 61 1
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
.LFE14:
	.size	mbedtls_hkdf_extract, .-mbedtls_hkdf_extract
	.section	.rodata
	.align	2
.LC0:
	.string	""
	.section	.text.mbedtls_hkdf_expand,"ax",@progbits
	.align	1
	.globl	mbedtls_hkdf_expand
	.type	mbedtls_hkdf_expand, @function
mbedtls_hkdf_expand:
.LFB15:
	.loc 1 66 1
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
	sw	a5,-152(s0)
	sw	a6,-156(s0)
	.loc 1 68 12
	sw	zero,-20(s0)
	.loc 1 70 12
	sw	zero,-28(s0)
	.loc 1 72 9
	sw	zero,-36(s0)
	.loc 1 76 8
	lw	a5,-152(s0)
	bne	a5,zero,.L11
	.loc 1 77 16
	li	a5,-24576
	addi	a5,a5,128
	j	.L30
.L11:
	.loc 1 80 16
	lw	a0,-132(s0)
	call	mbedtls_md_get_size
	mv	a5,a0
	.loc 1 80 14 discriminator 1
	sw	a5,-44(s0)
	.loc 1 82 8
	lw	a4,-140(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L13
	.loc 1 82 28 discriminator 1
	lw	a5,-44(s0)
	bne	a5,zero,.L14
.L13:
	.loc 1 83 16
	li	a5,-24576
	addi	a5,a5,128
	j	.L30
.L14:
	.loc 1 86 8
	lw	a5,-144(s0)
	bne	a5,zero,.L15
	.loc 1 87 14
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	sw	a5,-144(s0)
	.loc 1 88 18
	sw	zero,-148(s0)
.L15:
	.loc 1 91 7
	lw	a4,-156(s0)
	lw	a5,-44(s0)
	divu	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 93 17
	lw	a4,-156(s0)
	lw	a5,-44(s0)
	remu	a5,a4,a5
	.loc 1 93 8
	beq	a5,zero,.L16
	.loc 1 94 10
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L16:
	.loc 1 101 8
	lw	a4,-24(s0)
	li	a5,255
	bleu	a4,a5,.L17
	.loc 1 102 16
	li	a5,-24576
	addi	a5,a5,128
	j	.L30
.L17:
	.loc 1 105 5
	addi	a5,s0,-56
	mv	a0,a5
	call	mbedtls_md_init
	.loc 1 107 16
	addi	a5,s0,-56
	li	a2,1
	lw	a1,-132(s0)
	mv	a0,a5
	call	mbedtls_md_setup
	sw	a0,-36(s0)
	.loc 1 107 8 discriminator 1
	lw	a5,-36(s0)
	bne	a5,zero,.L31
	.loc 1 111 5
	addi	a5,s0,-120
	lw	a2,-44(s0)
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 117 12
	li	a5,1
	sw	a5,-32(s0)
	.loc 1 117 5
	j	.L20
.L29:
.LBB3:
	.loc 1 119 23
	lw	a5,-32(s0)
	andi	a5,a5,0xff
	sb	a5,-121(s0)
	.loc 1 121 15
	addi	a5,s0,-56
	lw	a2,-140(s0)
	lw	a1,-136(s0)
	mv	a0,a5
	call	mbedtls_md_hmac_starts
	sw	a0,-36(s0)
	.loc 1 122 12
	lw	a5,-36(s0)
	bne	a5,zero,.L32
	.loc 1 126 15
	addi	a4,s0,-120
	addi	a5,s0,-56
	lw	a2,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_hmac_update
	sw	a0,-36(s0)
	.loc 1 127 12
	lw	a5,-36(s0)
	bne	a5,zero,.L33
	.loc 1 131 15
	addi	a5,s0,-56
	lw	a2,-148(s0)
	lw	a1,-144(s0)
	mv	a0,a5
	call	mbedtls_md_hmac_update
	sw	a0,-36(s0)
	.loc 1 132 12
	lw	a5,-36(s0)
	bne	a5,zero,.L34
	.loc 1 138 15
	addi	a4,s0,-121
	addi	a5,s0,-56
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_hmac_update
	sw	a0,-36(s0)
	.loc 1 139 12
	lw	a5,-36(s0)
	bne	a5,zero,.L35
	.loc 1 143 15
	addi	a4,s0,-120
	addi	a5,s0,-56
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_hmac_finish
	sw	a0,-36(s0)
	.loc 1 144 12
	lw	a5,-36(s0)
	bne	a5,zero,.L36
	.loc 1 148 41
	lw	a4,-32(s0)
	lw	a5,-24(s0)
	bne	a4,a5,.L27
	.loc 1 148 21 discriminator 1
	lw	a4,-156(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-40(s0)
	j	.L28
.L27:
	.loc 1 148 21 is_stmt 0 discriminator 2
	lw	a5,-44(s0)
	sw	a5,-40(s0)
.L28:
	.loc 1 149 20 is_stmt 1
	lw	a4,-152(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 149 9
	addi	a4,s0,-120
	lw	a2,-40(s0)
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 1 150 15
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 151 15
	lw	a5,-44(s0)
	sw	a5,-28(s0)
.LBE3:
	.loc 1 117 26 discriminator 2
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L20:
	.loc 1 117 19 discriminator 1
	lw	a4,-32(s0)
	lw	a5,-24(s0)
	bleu	a4,a5,.L29
	.loc 1 154 1
	j	.L19
.L31:
	.loc 1 108 9
	nop
	j	.L19
.L32:
.LBB4:
	.loc 1 123 13
	nop
	j	.L19
.L33:
	.loc 1 128 13
	nop
	j	.L19
.L34:
	.loc 1 133 13
	nop
	j	.L19
.L35:
	.loc 1 140 13
	nop
	j	.L19
.L36:
	.loc 1 145 13
	nop
.L19:
.LBE4:
	.loc 1 155 5
	addi	a5,s0,-56
	mv	a0,a5
	call	mbedtls_md_free
	.loc 1 156 5
	addi	a5,s0,-120
	li	a1,64
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 1 158 12
	lw	a5,-36(s0)
.L30:
	.loc 1 159 1
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
.LFE15:
	.size	mbedtls_hkdf_expand, .-mbedtls_hkdf_expand
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4b6
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL1
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xd
	.4byte	0x32
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x12
	.byte	0x4
	.uleb128 0xe
	.4byte	0x89
	.uleb128 0x7
	.4byte	0x32
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x7
	.4byte	0xa6
	.uleb128 0xe
	.4byte	0x9c
	.uleb128 0x13
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x3
	.byte	0x6b
	.byte	0x22
	.4byte	0xb8
	.uleb128 0xd
	.4byte	0xa7
	.uleb128 0x14
	.4byte	.LASF14
	.uleb128 0x15
	.4byte	.LASF18
	.byte	0xc
	.byte	0x3
	.byte	0x7a
	.byte	0x10
	.4byte	0xef
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x7c
	.byte	0x1e
	.4byte	0xef
	.byte	0
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x84
	.byte	0xb
	.4byte	0x89
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x88
	.byte	0xb
	.4byte	0x89
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	0xb3
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x3
	.byte	0x8a
	.byte	0x3
	.4byte	0xbd
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x3
	.byte	0xae
	.4byte	0x111
	.uleb128 0x1
	.4byte	0x111
	.byte	0
	.uleb128 0x7
	.4byte	0xf4
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0x1f
	.byte	0x8
	.4byte	0x89
	.4byte	0x136
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x9
	.4byte	.LASF20
	.2byte	0x1db
	.4byte	0x68
	.4byte	0x150
	.uleb128 0x1
	.4byte	0x111
	.uleb128 0x1
	.4byte	0x90
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.2byte	0x1c5
	.4byte	0x68
	.4byte	0x16f
	.uleb128 0x1
	.4byte	0x111
	.uleb128 0x1
	.4byte	0x16f
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x7
	.4byte	0x39
	.uleb128 0x9
	.4byte	.LASF22
	.2byte	0x1ae
	.4byte	0x68
	.4byte	0x193
	.uleb128 0x1
	.4byte	0x111
	.uleb128 0x1
	.4byte	0x16f
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.byte	0x21
	.byte	0x8
	.4byte	0x89
	.4byte	0x1b3
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x3
	.byte	0xc5
	.byte	0x5
	.4byte	0x68
	.4byte	0x1d3
	.uleb128 0x1
	.4byte	0x111
	.uleb128 0x1
	.4byte	0xef
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x3
	.byte	0x9f
	.4byte	0x1e4
	.uleb128 0x1
	.4byte	0x111
	.byte	0
	.uleb128 0x9
	.4byte	.LASF27
	.2byte	0x206
	.4byte	0x68
	.4byte	0x212
	.uleb128 0x1
	.4byte	0xef
	.uleb128 0x1
	.4byte	0x16f
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x16f
	.uleb128 0x1
	.4byte	0x76
	.uleb128 0x1
	.4byte	0x90
	.byte	0
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x5
	.byte	0x9f
	.4byte	0x228
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x3
	.byte	0xeb
	.byte	0xf
	.4byte	0x32
	.4byte	0x23e
	.uleb128 0x1
	.4byte	0xef
	.byte	0
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x3f
	.4byte	0x68
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x357
	.uleb128 0x4
	.string	"md"
	.byte	0x3f
	.byte	0x32
	.4byte	0xef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x4
	.string	"prk"
	.byte	0x3f
	.byte	0x4b
	.4byte	0x16f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x40
	.byte	0x20
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x40
	.byte	0x3e
	.4byte	0x16f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x41
	.byte	0x20
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x4
	.string	"okm"
	.byte	0x41
	.byte	0x39
	.4byte	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x41
	.byte	0x45
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x43
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x44
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"n"
	.byte	0x45
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x46
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.string	"i"
	.byte	0x47
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.string	"ret"
	.byte	0x48
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"ctx"
	.byte	0x49
	.byte	0x1a
	.4byte	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.string	"t"
	.byte	0x4a
	.byte	0x13
	.4byte	0x357
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x16
	.4byte	.LASF45
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.4byte	.L19
	.uleb128 0x17
	.4byte	.LLRL0
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x76
	.byte	0x10
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"c"
	.byte	0x77
	.byte	0x17
	.4byte	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -121
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x32
	.4byte	0x367
	.uleb128 0x19
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x24
	.4byte	0x68
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x400
	.uleb128 0x4
	.string	"md"
	.byte	0x24
	.byte	0x33
	.4byte	0xef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x25
	.byte	0x2f
	.4byte	0x16f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0x25
	.byte	0x3c
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x4
	.string	"ikm"
	.byte	0x26
	.byte	0x2f
	.4byte	0x16f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x26
	.byte	0x3b
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x4
	.string	"prk"
	.byte	0x27
	.byte	0x29
	.4byte	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x29
	.byte	0x13
	.4byte	0x357
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1a
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x2c
	.byte	0x10
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF46
	.byte	0x1
	.byte	0x10
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.string	"md"
	.byte	0x10
	.byte	0x2b
	.4byte	0xef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x10
	.byte	0x44
	.4byte	0x16f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0x11
	.byte	0x19
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x4
	.string	"ikm"
	.byte	0x11
	.byte	0x38
	.4byte	0x16f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x11
	.byte	0x44
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x12
	.byte	0x27
	.4byte	0x16f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x12
	.byte	0x34
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x4
	.string	"okm"
	.byte	0x13
	.byte	0x21
	.4byte	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x13
	.byte	0x2d
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.string	"ret"
	.byte	0x15
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"prk"
	.byte	0x16
	.byte	0x13
	.4byte	0x357
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x9
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
	.uleb128 0xd
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
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
	.4byte	.LFB13
	.uleb128 .LFE13-.LFB13
	.byte	0x7
	.4byte	.LFB14
	.uleb128 .LFE14-.LFB14
	.byte	0x7
	.4byte	.LFB15
	.uleb128 .LFE15-.LFB15
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF43:
	.string	"null_salt"
.LASF13:
	.string	"size_t"
.LASF45:
	.string	"exit"
.LASF41:
	.string	"salt_len"
.LASF22:
	.string	"mbedtls_md_hmac_starts"
.LASF33:
	.string	"okm_len"
.LASF26:
	.string	"mbedtls_md_init"
.LASF40:
	.string	"salt"
.LASF18:
	.string	"mbedtls_md_context_t"
.LASF37:
	.string	"num_to_copy"
.LASF27:
	.string	"mbedtls_md_hmac"
.LASF7:
	.string	"long unsigned int"
.LASF20:
	.string	"mbedtls_md_hmac_finish"
.LASF5:
	.string	"short unsigned int"
.LASF34:
	.string	"hash_len"
.LASF32:
	.string	"info_len"
.LASF23:
	.string	"memset"
.LASF31:
	.string	"info"
.LASF24:
	.string	"mbedtls_md_setup"
.LASF21:
	.string	"mbedtls_md_hmac_update"
.LASF3:
	.string	"unsigned char"
.LASF10:
	.string	"unsigned int"
.LASF38:
	.string	"mbedtls_hkdf_expand"
.LASF9:
	.string	"long long unsigned int"
.LASF42:
	.string	"ikm_len"
.LASF16:
	.string	"md_ctx"
.LASF15:
	.string	"md_info"
.LASF8:
	.string	"long long int"
.LASF44:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF12:
	.string	"char"
.LASF19:
	.string	"memcpy"
.LASF39:
	.string	"mbedtls_hkdf_extract"
.LASF25:
	.string	"mbedtls_md_free"
.LASF4:
	.string	"short int"
.LASF36:
	.string	"t_len"
.LASF35:
	.string	"where"
.LASF29:
	.string	"mbedtls_md_get_size"
.LASF6:
	.string	"long int"
.LASF30:
	.string	"prk_len"
.LASF46:
	.string	"mbedtls_hkdf"
.LASF11:
	.string	"long double"
.LASF2:
	.string	"signed char"
.LASF14:
	.string	"mbedtls_md_info_t"
.LASF17:
	.string	"hmac_ctx"
.LASF28:
	.string	"mbedtls_platform_zeroize"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/hkdf.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
