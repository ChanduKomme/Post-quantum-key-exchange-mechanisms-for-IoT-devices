	.file	"init.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.lwip_init,"ax",@progbits
	.align	1
	.globl	lwip_init
	.type	lwip_init, @function
lwip_init:
.LFB51:
.LM1:
	.cfi_startproc
.LM2:
.LVL0:
.LM3:
.LM4:
.LM5:
.LM6:
.LM7:
.LM8:
.LM9:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM10:
	call	stats_init
.LVL1:
.LM11:
	call	sys_init
.LVL2:
.LM12:
	call	mem_init
.LVL3:
.LM13:
	call	memp_init
.LVL4:
.LM14:
.LM15:
	call	netif_init
.LVL5:
.LM16:
.LM17:
.LM18:
.LM19:
	call	udp_init
.LVL6:
.LM20:
	call	tcp_init
.LVL7:
.LM21:
	call	igmp_init
.LVL8:
.LM22:
	call	dns_init
.LVL9:
.LM23:
.LM24:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LM25:
	tail	sys_timeouts_init
.LVL10:
	.cfi_endproc
.LFE51:
	.size	lwip_init, .-lwip_init
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x14b
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0xc
	.byte	0xa0
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0x67
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x69
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x5a
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x3d
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0xa5
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x7
	.2byte	0x1ad
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x8
	.byte	0x8d
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x9
	.byte	0x48
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0xa
	.2byte	0x1b7
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0xb
	.2byte	0x136
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x156
	.byte	0x1
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.2byte	0x159
	.byte	0x7
	.4byte	0x2b
	.byte	0
	.uleb128 0x2
	.4byte	.LVL1
	.4byte	0xcc
	.uleb128 0x2
	.4byte	.LVL2
	.4byte	0xc4
	.uleb128 0x2
	.4byte	.LVL3
	.4byte	0xbd
	.uleb128 0x2
	.4byte	.LVL4
	.4byte	0xb6
	.uleb128 0x2
	.4byte	.LVL5
	.4byte	0xae
	.uleb128 0x2
	.4byte	.LVL6
	.4byte	0xa7
	.uleb128 0x2
	.4byte	.LVL7
	.4byte	0xa0
	.uleb128 0x2
	.4byte	.LVL8
	.4byte	0x99
	.uleb128 0x2
	.4byte	.LVL9
	.4byte	0x92
	.uleb128 0xa
	.4byte	.LVL10
	.4byte	0x8b
	.byte	0
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
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
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
.LLRL0:
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
	.uleb128 0x5
	.4byte	.LASF1
	.4byte	.LASF26
	.4byte	.LASF27
	.4byte	.LASF28
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0xd
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF30
	.byte	0x1
	.4byte	.LASF31
	.byte	0x3
	.4byte	.LASF32
	.byte	0x3
	.4byte	.LASF33
	.byte	0x3
	.4byte	.LASF34
	.byte	0x2
	.4byte	.LASF35
	.byte	0x3
	.4byte	.LASF36
	.byte	0x3
	.4byte	.LASF37
	.byte	0x3
	.4byte	.LASF38
	.byte	0x3
	.4byte	.LASF39
	.byte	0x3
	.4byte	.LASF40
	.byte	0x3
	.4byte	.LASF41
	.byte	0x4
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x3
	.sleb128 342
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x19
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x1
	.byte	0x5
	.uleb128 0x6
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x1a
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x1
	.byte	0x5
	.uleb128 0x6
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x1b
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x6
	.byte	0x3
	.sleb128 -11
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x22
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x19
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x19
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x19
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x1b
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x1a
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x1a
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x1a
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x1a
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x1e
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x15
	.byte	0x5
	.uleb128 0x3
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE51
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"long long int"
.LASF19:
	.string	"memp_init"
.LASF10:
	.string	"unsigned int"
.LASF24:
	.string	"ptrdiff_t"
.LASF7:
	.string	"long unsigned int"
.LASF23:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"long long unsigned int"
.LASF20:
	.string	"mem_init"
.LASF25:
	.string	"lwip_init"
.LASF22:
	.string	"stats_init"
.LASF13:
	.string	"sys_timeouts_init"
.LASF3:
	.string	"unsigned char"
.LASF12:
	.string	"char"
.LASF18:
	.string	"netif_init"
.LASF6:
	.string	"long int"
.LASF14:
	.string	"dns_init"
.LASF4:
	.string	"short int"
.LASF5:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF17:
	.string	"udp_init"
.LASF11:
	.string	"long double"
.LASF21:
	.string	"sys_init"
.LASF16:
	.string	"tcp_init"
.LASF15:
	.string	"igmp_init"
	.section	.debug_line_str,"MS",@progbits,1
.LASF37:
	.string	"memp.h"
.LASF39:
	.string	"sys.h"
.LASF36:
	.string	"netif.h"
.LASF28:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip"
.LASF33:
	.string	"igmp.h"
.LASF35:
	.string	"udp.h"
.LASF30:
	.string	"init.c"
.LASF32:
	.string	"dns.h"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/init.c"
.LASF40:
	.string	"stats.h"
.LASF27:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/priv"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/lwip"
.LASF29:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF38:
	.string	"mem.h"
.LASF34:
	.string	"tcp_priv.h"
.LASF26:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core"
.LASF31:
	.string	"timeouts.h"
.LASF41:
	.string	"stddef.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
