	.file	"coap_hashkey.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.coap_hash_impl,"ax",@progbits
	.align	1
	.globl	coap_hash_impl
	.type	coap_hash_impl, @function
coap_hash_impl:
.LVL0:
.LFB51:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
	add	a1,a0,a1
.LVL1:
.L2:
.LM4:
.LM5:
	bne	a0,a1,.L4
.LM6:
	ret
.L4:
	addi	a5,a2,3
.L3:
.LVL2:
.LM7:
.LM8:
	lbu	a3,0(a5)
.LM9:
	lbu	a4,-1(a5)
.LM10:
	addi	a5,a5,-1
.LVL3:
.LM11:
	slli	a6,a3,7
	srli	a4,a4,1
	or	a4,a4,a6
.LM12:
	add	a3,a3,a4
.LM13:
	sb	a3,1(a5)
.LM14:
.LVL4:
.LM15:
	bne	a2,a5,.L3
.LM16:
.LM17:
	lbu	a5,0(a2)
.LM18:
	addi	a0,a0,1
.LVL5:
.LM19:
	slli	a4,a5,7
	sub	a5,a5,a4
	lbu	a4,-1(a0)
	add	a5,a5,a4
.LM20:
	sb	a5,0(a2)
	j	.L2
	.cfi_endproc
.LFE51:
	.size	coap_hash_impl, .-coap_hash_impl
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xee
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL3
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
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x6
	.4byte	0x47
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
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x32
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.4byte	0x47
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xec
	.uleb128 0x3
	.string	"s"
	.byte	0x25
	.4byte	0xec
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x3
	.string	"len"
	.byte	0x2f
	.4byte	0x76
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x9
	.string	"h"
	.byte	0x1
	.byte	0x13
	.byte	0x3f
	.4byte	0x89
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xa
	.string	"j"
	.byte	0x1
	.byte	0x14
	.byte	0xa
	.4byte	0x76
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0x2
	.4byte	0x4e
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 19
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x12
	.uleb128 0x12
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL5-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL5-.LVL0
	.uleb128 .LFE51-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x4
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LFE51-.LVL0
	.uleb128 0xc
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0x6
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0xe
.LLST2:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL3-.LVL2
	.uleb128 0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.LVL2
	.uleb128 .LVL4-.LVL2
	.uleb128 0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
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
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
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
.LLRL3:
	.byte	0x7
	.4byte	.LFB51
	.uleb128 .LFE51-.LFB51
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
	.uleb128 0x3
	.4byte	.LASF1
	.4byte	.LASF16
	.4byte	.LASF17
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF18
	.byte	0x1
	.4byte	.LASF19
	.byte	0x2
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x29
	.byte	0x5
	.uleb128 0x42
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0x19
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x1
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x21
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x6
	.byte	0x11
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x16
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x18
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x1
	.byte	0x5
	.uleb128 0x2c
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x15
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x1
	.byte	0x5
	.uleb128 0x23
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x1
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x1
	.byte	0x5
	.uleb128 0xa
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE51
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"long long int"
.LASF14:
	.string	"size_t"
.LASF9:
	.string	"long unsigned int"
.LASF13:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF2:
	.string	"long long unsigned int"
.LASF5:
	.string	"unsigned char"
.LASF12:
	.string	"char"
.LASF8:
	.string	"long int"
.LASF7:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF11:
	.string	"long double"
.LASF6:
	.string	"short int"
.LASF3:
	.string	"unsigned int"
.LASF15:
	.string	"coap_hash_impl"
	.section	.debug_line_str,"MS",@progbits,1
.LASF17:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/3rdparty/libcoap/src/coap_hashkey.c"
.LASF19:
	.string	"stddef.h"
.LASF18:
	.string	"coap_hashkey.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/libcoap"
.LASF16:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/3rdparty/libcoap/src"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
