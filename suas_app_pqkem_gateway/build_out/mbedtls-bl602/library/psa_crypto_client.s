	.file	"psa_crypto_client.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_client.c"
	.section	.text.psa_reset_key_attributes,"ax",@progbits
	.align	1
	.globl	psa_reset_key_attributes
	.type	psa_reset_key_attributes, @function
psa_reset_key_attributes:
.LFB69:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_client.c"
	.loc 1 18 1
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
	.loc 1 19 5
	li	a2,24
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 1 20 1
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
.LFE69:
	.size	psa_reset_key_attributes, .-psa_reset_key_attributes
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_types.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_struct.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1e1
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x40
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0xa
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x4e
	.byte	0x12
	.4byte	0x84
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x86
	.byte	0x12
	.4byte	0x90
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x4
	.byte	0xb7
	.byte	0x12
	.4byte	0x90
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x113
	.byte	0x12
	.4byte	0x90
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x124
	.byte	0x16
	.4byte	0xc9
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x143
	.byte	0x12
	.4byte	0x90
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x1b0
	.byte	0x25
	.4byte	0xfd
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x18
	.2byte	0x127
	.4byte	0x14a
	.uleb128 0x4
	.4byte	.LASF23
	.2byte	0x12c
	.byte	0x14
	.4byte	0xa5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.2byte	0x12d
	.byte	0x14
	.4byte	0x18b
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF25
	.2byte	0x12e
	.byte	0x18
	.4byte	0xbd
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF26
	.2byte	0x12f
	.byte	0x16
	.4byte	0x17e
	.byte	0x8
	.uleb128 0x7
	.string	"id"
	.2byte	0x13b
	.byte	0x1a
	.4byte	0xd6
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0xc
	.2byte	0x10c
	.4byte	0x17e
	.uleb128 0x4
	.4byte	.LASF29
	.2byte	0x10d
	.byte	0x15
	.4byte	0xe3
	.byte	0
	.uleb128 0x7
	.string	"alg"
	.2byte	0x10e
	.byte	0x15
	.4byte	0xb1
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF30
	.2byte	0x10f
	.byte	0x15
	.4byte	0xb1
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x111
	.byte	0x21
	.4byte	0x14a
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x5
	.2byte	0x11c
	.byte	0x12
	.4byte	0x84
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x21
	.byte	0x8
	.4byte	0x9c
	.4byte	0x1b8
	.uleb128 0x5
	.4byte	0x9c
	.uleb128 0x5
	.4byte	0x63
	.uleb128 0x5
	.4byte	0x71
	.byte	0
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x1
	.byte	0x11
	.byte	0x6
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1de
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x1
	.byte	0x11
	.byte	0x35
	.4byte	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xf0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"psa_key_lifetime_t"
.LASF12:
	.string	"size_t"
.LASF26:
	.string	"policy"
.LASF27:
	.string	"psa_key_attributes_s"
.LASF22:
	.string	"psa_key_attributes_t"
.LASF30:
	.string	"alg2"
.LASF3:
	.string	"unsigned char"
.LASF36:
	.string	"attributes"
.LASF7:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF34:
	.string	"memset"
.LASF21:
	.string	"psa_key_usage_t"
.LASF4:
	.string	"short int"
.LASF29:
	.string	"usage"
.LASF16:
	.string	"psa_key_type_t"
.LASF10:
	.string	"unsigned int"
.LASF25:
	.string	"lifetime"
.LASF9:
	.string	"long long unsigned int"
.LASF32:
	.string	"psa_key_bits_t"
.LASF20:
	.string	"mbedtls_svc_key_id_t"
.LASF35:
	.string	"psa_reset_key_attributes"
.LASF8:
	.string	"long long int"
.LASF33:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF28:
	.string	"psa_key_policy_s"
.LASF31:
	.string	"psa_key_policy_t"
.LASF23:
	.string	"type"
.LASF24:
	.string	"bits"
.LASF19:
	.string	"psa_key_id_t"
.LASF13:
	.string	"uint16_t"
.LASF14:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF15:
	.string	"char"
.LASF11:
	.string	"long double"
.LASF2:
	.string	"signed char"
.LASF17:
	.string	"psa_algorithm_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_client.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
