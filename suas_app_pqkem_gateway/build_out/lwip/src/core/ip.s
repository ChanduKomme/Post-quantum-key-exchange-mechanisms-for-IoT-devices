	.file	"ip.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/ip.c"
	.globl	ip_data
	.section	.bss.ip_data,"aw",@nobits
	.align	2
	.type	ip_data, @object
	.size	ip_data, 24
ip_data:
	.zero	24
	.text
.Letext0:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/ip4.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/ip.c"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x593
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.Ldebug_line0
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
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
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xb
	.4byte	0x72
	.uleb128 0x6
	.4byte	0x79
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x1
	.byte	0x22
	.byte	0x15
	.4byte	0x2a
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x1
	.byte	0x2e
	.byte	0x17
	.4byte	0x31
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x1
	.byte	0x31
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x1
	.byte	0x34
	.byte	0x1b
	.4byte	0x4d
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x2
	.byte	0x7d
	.byte	0x11
	.4byte	0x8f
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x2
	.byte	0x7e
	.byte	0x10
	.4byte	0x83
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x2
	.byte	0x7f
	.byte	0x12
	.4byte	0x9b
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x2
	.byte	0x81
	.byte	0x12
	.4byte	0xa7
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.byte	0x3
	.byte	0x33
	.4byte	0xfd
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x3
	.byte	0x34
	.byte	0x9
	.4byte	0xd7
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x3
	.byte	0x39
	.byte	0x19
	.4byte	0xe3
	.uleb128 0xb
	.4byte	0xfd
	.uleb128 0x13
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x126
	.byte	0x14
	.4byte	0xfd
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0x60
	.byte	0xe
	.4byte	0xbf
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x10
	.byte	0x6
	.byte	0xba
	.4byte	0x19c
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x6
	.byte	0xbc
	.byte	0x10
	.4byte	0x19c
	.byte	0
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x70
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x6
	.byte	0xc8
	.byte	0x9
	.4byte	0xcb
	.byte	0x8
	.uleb128 0x9
	.string	"len"
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0xcb
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x6
	.byte	0xd0
	.byte	0x8
	.4byte	0xb3
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x6
	.byte	0xd3
	.byte	0x8
	.4byte	0xb3
	.byte	0xd
	.uleb128 0x9
	.string	"ref"
	.byte	0x6
	.byte	0xda
	.byte	0x8
	.4byte	0xb3
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x6
	.byte	0xdd
	.byte	0x8
	.4byte	0xb3
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0x127
	.uleb128 0x14
	.byte	0x7
	.byte	0x1
	.4byte	0x31
	.byte	0xa
	.byte	0x34
	.byte	0xe
	.4byte	0x210
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0xd
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.4byte	.LASF53
	.4byte	0x31
	.byte	0x71
	.4byte	0x237
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF54
	.4byte	0x31
	.byte	0x9f
	.4byte	0x252
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0x257
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x54
	.byte	0x7
	.2byte	0x10d
	.byte	0x8
	.4byte	0x369
	.uleb128 0x3
	.4byte	.LASF27
	.2byte	0x110
	.byte	0x11
	.4byte	0x252
	.byte	0
	.uleb128 0x3
	.4byte	.LASF58
	.2byte	0x115
	.byte	0xd
	.4byte	0x10e
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x116
	.byte	0xd
	.4byte	0x10e
	.byte	0x8
	.uleb128 0xc
	.string	"gw"
	.2byte	0x117
	.byte	0xd
	.4byte	0x10e
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF60
	.2byte	0x129
	.byte	0x12
	.4byte	0x369
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF61
	.2byte	0x12f
	.byte	0x13
	.4byte	0x38e
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF62
	.2byte	0x134
	.byte	0x17
	.4byte	0x3bd
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF63
	.2byte	0x13f
	.byte	0x1c
	.4byte	0x3e2
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF64
	.2byte	0x144
	.byte	0x1c
	.4byte	0x3e2
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF65
	.2byte	0x14c
	.byte	0x9
	.4byte	0x70
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF66
	.2byte	0x14e
	.byte	0x9
	.4byte	0x428
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF67
	.2byte	0x152
	.byte	0xf
	.4byte	0x7e
	.byte	0x38
	.uleb128 0xc
	.string	"mtu"
	.2byte	0x158
	.byte	0x9
	.4byte	0xcb
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF68
	.2byte	0x15e
	.byte	0x8
	.4byte	0x438
	.byte	0x3e
	.uleb128 0x3
	.4byte	.LASF69
	.2byte	0x160
	.byte	0x8
	.4byte	0xb3
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF31
	.2byte	0x162
	.byte	0x8
	.4byte	0xb3
	.byte	0x45
	.uleb128 0x3
	.4byte	.LASF70
	.2byte	0x164
	.byte	0x8
	.4byte	0x448
	.byte	0x46
	.uleb128 0xc
	.string	"num"
	.2byte	0x167
	.byte	0x8
	.4byte	0xb3
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF71
	.2byte	0x17d
	.byte	0x1c
	.4byte	0x3fe
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF72
	.2byte	0x185
	.byte	0xf
	.4byte	0x45d
	.byte	0x50
	.byte	0
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0x7
	.byte	0xb5
	.byte	0x11
	.4byte	0x375
	.uleb128 0x6
	.4byte	0x37a
	.uleb128 0xa
	.4byte	0x11b
	.4byte	0x38e
	.uleb128 0x7
	.4byte	0x19c
	.uleb128 0x7
	.4byte	0x252
	.byte	0
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0x7
	.byte	0xc0
	.byte	0x11
	.4byte	0x39a
	.uleb128 0x6
	.4byte	0x39f
	.uleb128 0xa
	.4byte	0x11b
	.4byte	0x3b8
	.uleb128 0x7
	.4byte	0x252
	.uleb128 0x7
	.4byte	0x19c
	.uleb128 0x7
	.4byte	0x3b8
	.byte	0
	.uleb128 0x6
	.4byte	0x109
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0x7
	.byte	0xd7
	.byte	0x11
	.4byte	0x3c9
	.uleb128 0x6
	.4byte	0x3ce
	.uleb128 0xa
	.4byte	0x11b
	.4byte	0x3e2
	.uleb128 0x7
	.4byte	0x252
	.uleb128 0x7
	.4byte	0x19c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0x7
	.byte	0xd9
	.byte	0x10
	.4byte	0x3ee
	.uleb128 0x6
	.4byte	0x3f3
	.uleb128 0x16
	.4byte	0x3fe
	.uleb128 0x7
	.4byte	0x252
	.byte	0
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0x7
	.byte	0xdc
	.byte	0x11
	.4byte	0x40a
	.uleb128 0x6
	.4byte	0x40f
	.uleb128 0xa
	.4byte	0x11b
	.4byte	0x428
	.uleb128 0x7
	.4byte	0x252
	.uleb128 0x7
	.4byte	0x3b8
	.uleb128 0x7
	.4byte	0x237
	.byte	0
	.uleb128 0xd
	.4byte	0x70
	.4byte	0x438
	.uleb128 0xe
	.4byte	0x62
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	0xb3
	.4byte	0x448
	.uleb128 0xe
	.4byte	0x62
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.4byte	0x72
	.4byte	0x458
	.uleb128 0xe
	.4byte	0x62
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.string	"acd"
	.uleb128 0x6
	.4byte	0x458
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0x4
	.byte	0x8
	.byte	0x35
	.4byte	0x47c
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x8
	.byte	0x36
	.byte	0x9
	.4byte	0xd7
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0x8
	.byte	0x3d
	.byte	0x20
	.4byte	0x462
	.uleb128 0x8
	.4byte	.LASF80
	.byte	0x14
	.byte	0x8
	.byte	0x49
	.4byte	0x517
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x8
	.byte	0x4b
	.byte	0x8
	.4byte	0xb3
	.byte	0
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x8
	.byte	0x4d
	.byte	0x8
	.4byte	0xb3
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x8
	.byte	0x4f
	.byte	0x9
	.4byte	0xcb
	.byte	0x2
	.uleb128 0x9
	.string	"_id"
	.byte	0x8
	.byte	0x51
	.byte	0x9
	.4byte	0xcb
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x8
	.byte	0x53
	.byte	0x9
	.4byte	0xcb
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x8
	.byte	0x59
	.byte	0x8
	.4byte	0xb3
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x8
	.byte	0x5b
	.byte	0x8
	.4byte	0xb3
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x8
	.byte	0x5d
	.byte	0x9
	.4byte	0xcb
	.byte	0xa
	.uleb128 0x9
	.string	"src"
	.byte	0x8
	.byte	0x5f
	.byte	0x10
	.4byte	0x47c
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x8
	.byte	0x60
	.byte	0x10
	.4byte	0x47c
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	0x488
	.uleb128 0x8
	.4byte	.LASF89
	.byte	0x18
	.byte	0x9
	.byte	0x76
	.4byte	0x577
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x9
	.byte	0x79
	.byte	0x11
	.4byte	0x252
	.byte	0
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x9
	.byte	0x7b
	.byte	0x11
	.4byte	0x252
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x9
	.byte	0x7e
	.byte	0x18
	.4byte	0x577
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x9
	.byte	0x85
	.byte	0x9
	.4byte	0xcb
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x9
	.byte	0x87
	.byte	0xd
	.4byte	0x10e
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x9
	.byte	0x89
	.byte	0xd
	.4byte	0x10e
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.4byte	0x517
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x9
	.byte	0x8b
	.byte	0x1a
	.4byte	0x51c
	.uleb128 0x19
	.4byte	0x57c
	.byte	0xb
	.byte	0x40
	.byte	0x13
	.uleb128 0x5
	.byte	0x3
	.4byte	ip_data
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x14
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.string	"MEMP_ALTCP_PCB"
.LASF26:
	.string	"addr"
.LASF92:
	.string	"current_ip4_header"
.LASF86:
	.string	"_proto"
.LASF68:
	.string	"hwaddr"
.LASF13:
	.string	"int8_t"
.LASF72:
	.string	"acd_list"
.LASF50:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF65:
	.string	"state"
.LASF74:
	.string	"netif_output_fn"
.LASF40:
	.string	"MEMP_NETCONN"
.LASF4:
	.string	"short int"
.LASF39:
	.string	"MEMP_NETBUF"
.LASF60:
	.string	"input"
.LASF80:
	.string	"ip_hdr"
.LASF84:
	.string	"_offset"
.LASF81:
	.string	"_v_hl"
.LASF63:
	.string	"status_callback"
.LASF69:
	.string	"hwaddr_len"
.LASF66:
	.string	"client_data"
.LASF83:
	.string	"_len"
.LASF55:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF44:
	.string	"MEMP_SYS_TIMEOUT"
.LASF71:
	.string	"igmp_mac_filter"
.LASF79:
	.string	"ip4_addr_p_t"
.LASF14:
	.string	"uint8_t"
.LASF67:
	.string	"hostname"
.LASF36:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF85:
	.string	"_ttl"
.LASF94:
	.string	"current_iphdr_src"
.LASF45:
	.string	"MEMP_NETDB"
.LASF2:
	.string	"signed char"
.LASF62:
	.string	"linkoutput"
.LASF18:
	.string	"s8_t"
.LASF8:
	.string	"long long int"
.LASF9:
	.string	"long long unsigned int"
.LASF53:
	.string	"lwip_internal_netif_client_data_index"
.LASF29:
	.string	"tot_len"
.LASF6:
	.string	"long int"
.LASF54:
	.string	"netif_mac_filter_action"
.LASF22:
	.string	"ip_addr_t"
.LASF52:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF30:
	.string	"type_internal"
.LASF91:
	.string	"current_input_netif"
.LASF88:
	.string	"dest"
.LASF77:
	.string	"netif_igmp_mac_filter_fn"
.LASF87:
	.string	"_chksum"
.LASF70:
	.string	"name"
.LASF49:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF11:
	.string	"long double"
.LASF73:
	.string	"netif_input_fn"
.LASF3:
	.string	"unsigned char"
.LASF76:
	.string	"netif_status_callback_fn"
.LASF48:
	.string	"MEMP_MAX"
.LASF32:
	.string	"if_idx"
.LASF75:
	.string	"netif_linkoutput_fn"
.LASF31:
	.string	"flags"
.LASF51:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF16:
	.string	"uint32_t"
.LASF10:
	.string	"unsigned int"
.LASF15:
	.string	"uint16_t"
.LASF97:
	.string	"ip_data"
.LASF43:
	.string	"MEMP_IGMP_GROUP"
.LASF56:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF89:
	.string	"ip_globals"
.LASF5:
	.string	"short unsigned int"
.LASF64:
	.string	"link_callback"
.LASF23:
	.string	"err_t"
.LASF12:
	.string	"char"
.LASF41:
	.string	"MEMP_TCPIP_MSG_API"
.LASF93:
	.string	"current_ip_header_tot_len"
.LASF96:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF24:
	.string	"ip4_addr"
.LASF46:
	.string	"MEMP_PBUF"
.LASF90:
	.string	"current_netif"
.LASF7:
	.string	"long unsigned int"
.LASF33:
	.string	"MEMP_RAW_PCB"
.LASF21:
	.string	"ip4_addr_t"
.LASF57:
	.string	"netif"
.LASF59:
	.string	"netmask"
.LASF20:
	.string	"u32_t"
.LASF19:
	.string	"u16_t"
.LASF47:
	.string	"MEMP_PBUF_POOL"
.LASF37:
	.string	"MEMP_TCP_SEG"
.LASF95:
	.string	"current_iphdr_dest"
.LASF42:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF78:
	.string	"ip4_addr_packed"
.LASF61:
	.string	"output"
.LASF35:
	.string	"MEMP_TCP_PCB"
.LASF34:
	.string	"MEMP_UDP_PCB"
.LASF17:
	.string	"u8_t"
.LASF58:
	.string	"ip_addr"
.LASF82:
	.string	"_tos"
.LASF28:
	.string	"payload"
.LASF27:
	.string	"next"
.LASF25:
	.string	"pbuf"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/ip.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
