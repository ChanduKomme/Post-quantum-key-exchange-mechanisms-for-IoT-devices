	.file	"psa_crypto_client.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.psa_reset_key_attributes,"ax",@progbits
	.align	1
	.globl	psa_reset_key_attributes
	.type	psa_reset_key_attributes, @function
psa_reset_key_attributes:
.LVL0:
.LFB69:
.LM1:
	.cfi_startproc
.LM2:
	li	a2,24
	li	a1,0
	tail	memset
.LVL1:
.LM3:
	.cfi_endproc
.LFE69:
	.size	psa_reset_key_attributes, .-psa_reset_key_attributes
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x207
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL1
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x32
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x4e
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x5c
	.uleb128 0xb
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
	.uleb128 0x7
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
	.uleb128 0x8
	.string	"id"
	.2byte	0x13b
	.byte	0x1a
	.4byte	0xd6
	.byte	0x14
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x21
	.byte	0x8
	.4byte	0x9c
	.4byte	0x1b8
	.uleb128 0x5
	.4byte	0x9c
	.uleb128 0x5
	.4byte	0x6a
	.uleb128 0x5
	.4byte	0x71
	.byte	0
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0x11
	.byte	0x6
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x204
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x1
	.byte	0x11
	.byte	0x35
	.4byte	0x204
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xf
	.4byte	.LVL1
	.4byte	0x198
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-1-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL1-1-.LVL0
	.uleb128 .LFE69-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
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
.LLRL1:
	.byte	0x7
	.4byte	.LFB69
	.uleb128 .LFE69-.LFB69
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.4byte	.LELT0-.LSLT0
.LSLT0:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf2
	.byte	0xd
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x5
	.4byte	.LASF1
	.4byte	.LASF37
	.4byte	.LASF38
	.4byte	.LASF39
	.4byte	.LASF40
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x7
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF41
	.byte	0x2
	.4byte	.LASF42
	.byte	0x3
	.4byte	.LASF43
	.byte	0x3
	.4byte	.LASF44
	.byte	0x1
	.4byte	.LASF45
	.byte	0x1
	.4byte	.LASF46
	.byte	0x4
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x28
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE69
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"psa_key_lifetime_t"
.LASF12:
	.string	"size_t"
.LASF26:
	.string	"policy"
.LASF28:
	.string	"psa_key_policy_s"
.LASF22:
	.string	"psa_key_attributes_t"
.LASF30:
	.string	"alg2"
.LASF5:
	.string	"unsigned char"
.LASF36:
	.string	"attributes"
.LASF9:
	.string	"long unsigned int"
.LASF7:
	.string	"short unsigned int"
.LASF33:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF34:
	.string	"memset"
.LASF21:
	.string	"psa_key_usage_t"
.LASF6:
	.string	"short int"
.LASF29:
	.string	"usage"
.LASF16:
	.string	"psa_key_type_t"
.LASF3:
	.string	"unsigned int"
.LASF25:
	.string	"lifetime"
.LASF2:
	.string	"long long unsigned int"
.LASF32:
	.string	"psa_key_bits_t"
.LASF20:
	.string	"mbedtls_svc_key_id_t"
.LASF35:
	.string	"psa_reset_key_attributes"
.LASF10:
	.string	"long long int"
.LASF15:
	.string	"char"
.LASF31:
	.string	"psa_key_policy_t"
.LASF23:
	.string	"type"
.LASF24:
	.string	"bits"
.LASF19:
	.string	"psa_key_id_t"
.LASF27:
	.string	"psa_key_attributes_s"
.LASF13:
	.string	"uint16_t"
.LASF14:
	.string	"uint32_t"
.LASF8:
	.string	"long int"
.LASF11:
	.string	"long double"
.LASF4:
	.string	"signed char"
.LASF17:
	.string	"psa_algorithm_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF41:
	.string	"psa_crypto_client.c"
.LASF46:
	.string	"string.h"
.LASF40:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include"
.LASF45:
	.string	"crypto_struct.h"
.LASF43:
	.string	"stdint-gcc.h"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/mbedtls-bl602"
.LASF37:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa"
.LASF44:
	.string	"crypto_types.h"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_client.c"
.LASF39:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF38:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library"
.LASF42:
	.string	"stddef.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
