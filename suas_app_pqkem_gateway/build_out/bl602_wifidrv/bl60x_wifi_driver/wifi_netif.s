	.file	"wifi_netif.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_wifidrv" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/wifi_netif.c"
	.section	.text.wifi_netif_dhcp_start,"ax",@progbits
	.align	1
	.globl	wifi_netif_dhcp_start
	.type	wifi_netif_dhcp_start, @function
wifi_netif_dhcp_start:
.LFB6:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/wifi_netif.c"
	.loc 1 36 1
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
	.loc 1 37 5
	lui	a5,%hi(dhcp_start)
	addi	a2,a5,%lo(dhcp_start)
	li	a1,0
	lw	a0,-20(s0)
	call	netifapi_netif_common
	.loc 1 38 12
	li	a5,0
	.loc 1 39 1
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
.LFE6:
	.size	wifi_netif_dhcp_start, .-wifi_netif_dhcp_start
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/acd.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/acd.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/priv/api_msg.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/dhcp.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netifapi.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x574
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x12
	.4byte	.LASF80
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x7
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x14
	.byte	0x4
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xe
	.4byte	0x7a
	.uleb128 0x5
	.4byte	0x81
	.uleb128 0x1
	.4byte	.LASF13
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x32
	.uleb128 0x1
	.4byte	.LASF14
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x39
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x47
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x55
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x3
	.byte	0x7d
	.byte	0x11
	.4byte	0x97
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x3
	.byte	0x7e
	.byte	0x10
	.4byte	0x8b
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x3
	.byte	0x7f
	.byte	0x12
	.4byte	0xa3
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x3
	.byte	0x81
	.byte	0x12
	.4byte	0xaf
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x4
	.byte	0x60
	.byte	0xe
	.4byte	0xc7
	.uleb128 0x9
	.4byte	0x78
	.4byte	0x107
	.uleb128 0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x4
	.byte	0x5
	.byte	0x33
	.4byte	0x121
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x5
	.byte	0x34
	.byte	0x9
	.4byte	0xdf
	.byte	0
	.byte	0
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x5
	.byte	0x39
	.byte	0x19
	.4byte	0x107
	.uleb128 0xe
	.4byte	0x121
	.uleb128 0x15
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x126
	.byte	0x14
	.4byte	0x121
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x10
	.byte	0x7
	.byte	0xba
	.4byte	0x1b4
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x7
	.byte	0xbc
	.byte	0x10
	.4byte	0x1b4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x7
	.byte	0xbf
	.byte	0x9
	.4byte	0x78
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x7
	.byte	0xc8
	.byte	0x9
	.4byte	0xd3
	.byte	0x8
	.uleb128 0xb
	.string	"len"
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0xd3
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x7
	.byte	0xd0
	.byte	0x8
	.4byte	0xbb
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x7
	.byte	0xd3
	.byte	0x8
	.4byte	0xbb
	.byte	0xd
	.uleb128 0xb
	.string	"ref"
	.byte	0x7
	.byte	0xda
	.byte	0x8
	.4byte	0xbb
	.byte	0xe
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x7
	.byte	0xdd
	.byte	0x8
	.4byte	0xbb
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	0x13f
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x7
	.byte	0x1
	.4byte	0x39
	.byte	0x8
	.byte	0x9f
	.byte	0x6
	.4byte	0x1d8
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x1dd
	.uleb128 0x17
	.4byte	.LASF35
	.byte	0x54
	.byte	0x8
	.2byte	0x10d
	.byte	0x8
	.4byte	0x2ef
	.uleb128 0x3
	.4byte	.LASF27
	.2byte	0x110
	.byte	0x11
	.4byte	0x1d8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.2byte	0x115
	.byte	0xd
	.4byte	0x132
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF37
	.2byte	0x116
	.byte	0xd
	.4byte	0x132
	.byte	0x8
	.uleb128 0xc
	.string	"gw"
	.2byte	0x117
	.byte	0xd
	.4byte	0x132
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF38
	.2byte	0x129
	.byte	0x12
	.4byte	0x2ef
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF39
	.2byte	0x12f
	.byte	0x13
	.4byte	0x314
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF40
	.2byte	0x134
	.byte	0x17
	.4byte	0x343
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF41
	.2byte	0x13f
	.byte	0x1c
	.4byte	0x368
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF42
	.2byte	0x144
	.byte	0x1c
	.4byte	0x368
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF43
	.2byte	0x14c
	.byte	0x9
	.4byte	0x78
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF44
	.2byte	0x14e
	.byte	0x9
	.4byte	0xf7
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF45
	.2byte	0x152
	.byte	0xf
	.4byte	0x86
	.byte	0x38
	.uleb128 0xc
	.string	"mtu"
	.2byte	0x158
	.byte	0x9
	.4byte	0xd3
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF46
	.2byte	0x15e
	.byte	0x8
	.4byte	0x3ae
	.byte	0x3e
	.uleb128 0x3
	.4byte	.LASF47
	.2byte	0x160
	.byte	0x8
	.4byte	0xbb
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF31
	.2byte	0x162
	.byte	0x8
	.4byte	0xbb
	.byte	0x45
	.uleb128 0x3
	.4byte	.LASF48
	.2byte	0x164
	.byte	0x8
	.4byte	0x3be
	.byte	0x46
	.uleb128 0xc
	.string	"num"
	.2byte	0x167
	.byte	0x8
	.4byte	0xbb
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x17d
	.byte	0x1c
	.4byte	0x384
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF50
	.2byte	0x185
	.byte	0xf
	.4byte	0x444
	.byte	0x50
	.byte	0
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x8
	.byte	0xb5
	.byte	0x11
	.4byte	0x2fb
	.uleb128 0x5
	.4byte	0x300
	.uleb128 0x8
	.4byte	0xeb
	.4byte	0x314
	.uleb128 0x2
	.4byte	0x1b4
	.uleb128 0x2
	.4byte	0x1d8
	.byte	0
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x8
	.byte	0xc0
	.byte	0x11
	.4byte	0x320
	.uleb128 0x5
	.4byte	0x325
	.uleb128 0x8
	.4byte	0xeb
	.4byte	0x33e
	.uleb128 0x2
	.4byte	0x1d8
	.uleb128 0x2
	.4byte	0x1b4
	.uleb128 0x2
	.4byte	0x33e
	.byte	0
	.uleb128 0x5
	.4byte	0x12d
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x8
	.byte	0xd7
	.byte	0x11
	.4byte	0x34f
	.uleb128 0x5
	.4byte	0x354
	.uleb128 0x8
	.4byte	0xeb
	.4byte	0x368
	.uleb128 0x2
	.4byte	0x1d8
	.uleb128 0x2
	.4byte	0x1b4
	.byte	0
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x8
	.byte	0xd9
	.byte	0x10
	.4byte	0x374
	.uleb128 0x5
	.4byte	0x379
	.uleb128 0xd
	.4byte	0x384
	.uleb128 0x2
	.4byte	0x1d8
	.byte	0
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x8
	.byte	0xdc
	.byte	0x11
	.4byte	0x390
	.uleb128 0x5
	.4byte	0x395
	.uleb128 0x8
	.4byte	0xeb
	.4byte	0x3ae
	.uleb128 0x2
	.4byte	0x1d8
	.uleb128 0x2
	.4byte	0x33e
	.uleb128 0x2
	.4byte	0x1b9
	.byte	0
	.uleb128 0x9
	.4byte	0xbb
	.4byte	0x3be
	.uleb128 0xa
	.4byte	0x6a
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.4byte	0x7a
	.4byte	0x3ce
	.uleb128 0xa
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.string	"acd"
	.byte	0x14
	.byte	0x9
	.byte	0x47
	.byte	0x8
	.4byte	0x444
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x9
	.byte	0x4a
	.byte	0xf
	.4byte	0x444
	.byte	0
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0x9
	.byte	0x4c
	.byte	0xe
	.4byte	0x121
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x9
	.byte	0x4e
	.byte	0x14
	.4byte	0x484
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0x9
	.byte	0x50
	.byte	0x8
	.4byte	0xbb
	.byte	0x9
	.uleb128 0xb
	.string	"ttw"
	.byte	0x9
	.byte	0x52
	.byte	0x9
	.4byte	0xd3
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0x9
	.byte	0x54
	.byte	0x8
	.4byte	0xbb
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x9
	.byte	0x56
	.byte	0x8
	.4byte	0xbb
	.byte	0xd
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x9
	.byte	0x59
	.byte	0x1b
	.4byte	0x4b9
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.4byte	0x3ce
	.uleb128 0x10
	.4byte	0x39
	.byte	0x3a
	.4byte	0x484
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0
	.uleb128 0x6
	.4byte	.LASF62
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF68
	.byte	0x7
	.byte	0
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0xa
	.byte	0x4f
	.byte	0x3
	.4byte	0x449
	.uleb128 0x10
	.4byte	0x39
	.byte	0x51
	.4byte	0x4ad
	.uleb128 0x6
	.4byte	.LASF70
	.byte	0
	.uleb128 0x6
	.4byte	.LASF71
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF72
	.byte	0x2
	.byte	0
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0xa
	.byte	0x55
	.byte	0x3
	.4byte	0x490
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x9
	.byte	0x44
	.byte	0x10
	.4byte	0x4c5
	.uleb128 0x5
	.4byte	0x4ca
	.uleb128 0xd
	.4byte	0x4da
	.uleb128 0x2
	.4byte	0x1d8
	.uleb128 0x2
	.4byte	0x4ad
	.byte	0
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0xb
	.byte	0xea
	.byte	0x10
	.4byte	0x4e6
	.uleb128 0x5
	.4byte	0x4eb
	.uleb128 0xd
	.4byte	0x4f6
	.uleb128 0x2
	.4byte	0x1d8
	.byte	0
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0xb
	.byte	0xeb
	.byte	0x11
	.4byte	0x502
	.uleb128 0x5
	.4byte	0x507
	.uleb128 0x8
	.4byte	0xeb
	.4byte	0x516
	.uleb128 0x2
	.4byte	0x1d8
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.4byte	.LASF77
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0xc
	.byte	0x7e
	.4byte	0xeb
	.4byte	0x532
	.uleb128 0x2
	.4byte	0x1d8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0xd
	.byte	0x4c
	.4byte	0xeb
	.4byte	0x551
	.uleb128 0x2
	.4byte	0x1d8
	.uleb128 0x2
	.4byte	0x4da
	.uleb128 0x2
	.4byte	0x4f6
	.byte	0
	.uleb128 0x19
	.4byte	.LASF82
	.byte	0x1
	.byte	0x23
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.4byte	.LASF35
	.byte	0x1
	.byte	0x23
	.byte	0x29
	.4byte	0x1d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
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
	.4byte	.LFB6
	.uleb128 .LFE6-.LFB6
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF71:
	.string	"ACD_RESTART_CLIENT"
.LASF46:
	.string	"hwaddr"
.LASF13:
	.string	"int8_t"
.LASF43:
	.string	"state"
.LASF52:
	.string	"netif_output_fn"
.LASF56:
	.string	"ipaddr"
.LASF4:
	.string	"short int"
.LASF38:
	.string	"input"
.LASF29:
	.string	"tot_len"
.LASF67:
	.string	"ACD_STATE_PASSIVE_ONGOING"
.LASF34:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF41:
	.string	"status_callback"
.LASF47:
	.string	"hwaddr_len"
.LASF44:
	.string	"client_data"
.LASF33:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF49:
	.string	"igmp_mac_filter"
.LASF14:
	.string	"uint8_t"
.LASF36:
	.string	"ip_addr"
.LASF74:
	.string	"acd_conflict_callback_t"
.LASF40:
	.string	"linkoutput"
.LASF45:
	.string	"hostname"
.LASF78:
	.string	"dhcp_start"
.LASF8:
	.string	"long long int"
.LASF9:
	.string	"long long unsigned int"
.LASF62:
	.string	"ACD_STATE_PROBE_WAIT"
.LASF53:
	.string	"netif_linkoutput_fn"
.LASF6:
	.string	"long int"
.LASF23:
	.string	"ip_addr_t"
.LASF69:
	.string	"acd_state_enum_t"
.LASF26:
	.string	"addr"
.LASF30:
	.string	"type_internal"
.LASF73:
	.string	"acd_callback_enum_t"
.LASF55:
	.string	"netif_igmp_mac_filter_fn"
.LASF48:
	.string	"name"
.LASF63:
	.string	"ACD_STATE_PROBING"
.LASF58:
	.string	"lastconflict"
.LASF11:
	.string	"long double"
.LASF81:
	.string	"netif_mac_filter_action"
.LASF3:
	.string	"unsigned char"
.LASF66:
	.string	"ACD_STATE_ONGOING"
.LASF65:
	.string	"ACD_STATE_ANNOUNCING"
.LASF54:
	.string	"netif_status_callback_fn"
.LASF32:
	.string	"if_idx"
.LASF2:
	.string	"signed char"
.LASF31:
	.string	"flags"
.LASF57:
	.string	"sent_num"
.LASF16:
	.string	"uint32_t"
.LASF68:
	.string	"ACD_STATE_RATE_LIMIT"
.LASF60:
	.string	"acd_conflict_callback"
.LASF10:
	.string	"unsigned int"
.LASF15:
	.string	"uint16_t"
.LASF61:
	.string	"ACD_STATE_OFF"
.LASF19:
	.string	"u16_t"
.LASF5:
	.string	"short unsigned int"
.LASF76:
	.string	"netifapi_errt_fn"
.LASF75:
	.string	"netifapi_void_fn"
.LASF21:
	.string	"err_t"
.LASF12:
	.string	"char"
.LASF72:
	.string	"ACD_DECLINE"
.LASF18:
	.string	"s8_t"
.LASF79:
	.string	"netifapi_netif_common"
.LASF80:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF77:
	.string	"_Bool"
.LASF82:
	.string	"wifi_netif_dhcp_start"
.LASF24:
	.string	"ip4_addr"
.LASF42:
	.string	"link_callback"
.LASF7:
	.string	"long unsigned int"
.LASF22:
	.string	"ip4_addr_t"
.LASF35:
	.string	"netif"
.LASF37:
	.string	"netmask"
.LASF20:
	.string	"u32_t"
.LASF64:
	.string	"ACD_STATE_ANNOUNCE_WAIT"
.LASF59:
	.string	"num_conflicts"
.LASF50:
	.string	"acd_list"
.LASF39:
	.string	"output"
.LASF17:
	.string	"u8_t"
.LASF70:
	.string	"ACD_IP_OK"
.LASF51:
	.string	"netif_input_fn"
.LASF28:
	.string	"payload"
.LASF27:
	.string	"next"
.LASF25:
	.string	"pbuf"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_wifidrv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/wifi_netif.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
