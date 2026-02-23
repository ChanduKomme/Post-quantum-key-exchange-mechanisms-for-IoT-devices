	.file	"if_api.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/api/if_api.c"
	.section	.text.lwip_if_indextoname,"ax",@progbits
	.align	1
	.globl	lwip_if_indextoname
	.type	lwip_if_indextoname, @function
lwip_if_indextoname:
.LFB6:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/api/if_api.c"
	.loc 1 62 1
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
	.loc 1 64 6
	lw	a4,-36(s0)
	li	a5,255
	bgtu	a4,a5,.L2
.LBB2:
	.loc 1 65 17
	lw	a5,-36(s0)
	andi	a5,a5,0xff
	lw	a1,-40(s0)
	mv	a0,a5
	call	netifapi_netif_index_to_name
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 66 8
	lb	a5,-17(s0)
	bne	a5,zero,.L2
	.loc 1 66 23 discriminator 1
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 1 66 14 discriminator 1
	beq	a5,zero,.L2
	.loc 1 67 14
	lw	a5,-40(s0)
	j	.L3
.L2:
.LBE2:
	.loc 1 74 23 discriminator 1
	lui	a5,%hi(errno)
	li	a4,6
	sw	a4,%lo(errno)(a5)
	.loc 1 75 9
	li	a5,0
.L3:
	.loc 1 76 1
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
.LFE6:
	.size	lwip_if_indextoname, .-lwip_if_indextoname
	.section	.text.lwip_if_nametoindex,"ax",@progbits
	.align	1
	.globl	lwip_if_nametoindex
	.type	lwip_if_nametoindex, @function
lwip_if_nametoindex:
.LFB7:
	.loc 1 87 1
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
	.loc 1 92 9
	addi	a5,s0,-18
	mv	a1,a5
	lw	a0,-36(s0)
	call	netifapi_netif_name_to_index
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 93 6
	lb	a5,-17(s0)
	bne	a5,zero,.L5
	.loc 1 94 12
	lbu	a5,-18(s0)
	j	.L7
.L5:
	.loc 1 99 10
	li	a5,0
.L7:
	.loc 1 100 1
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
.LFE7:
	.size	lwip_if_nametoindex, .-lwip_if_nametoindex
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netifapi.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x19a
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x9
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
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	0x7d
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xa
	.4byte	0x7d
	.uleb128 0x4
	.4byte	0x84
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x32
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x39
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x7d
	.byte	0x11
	.4byte	0x9a
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x7e
	.byte	0x10
	.4byte	0x8e
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x6
	.byte	0xb1
	.byte	0xc
	.4byte	0x2b
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x60
	.byte	0xe
	.4byte	0xb2
	.uleb128 0x4
	.4byte	0xa6
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x50
	.4byte	0xca
	.4byte	0xf4
	.uleb128 0x3
	.4byte	0x89
	.uleb128 0x3
	.4byte	0xd6
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x52
	.4byte	0xca
	.4byte	0x10d
	.uleb128 0x3
	.4byte	0xa6
	.uleb128 0x3
	.4byte	0x78
	.byte	0
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.4byte	0x6a
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x152
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x56
	.byte	0x21
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"err"
	.byte	0x59
	.byte	0x9
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x6
	.string	"idx"
	.byte	0x5a
	.byte	0x8
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.4byte	0x78
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x3d
	.byte	0x22
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x3d
	.byte	0x31
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x6
	.string	"err"
	.byte	0x41
	.byte	0xb
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
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
	.byte	0x7
	.4byte	.LFB7
	.uleb128 .LFE7-.LFB7
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"long long int"
.LASF16:
	.string	"s8_t"
.LASF10:
	.string	"unsigned int"
.LASF24:
	.string	"lwip_if_nametoindex"
.LASF7:
	.string	"long unsigned int"
.LASF22:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"long long unsigned int"
.LASF21:
	.string	"ifindex"
.LASF17:
	.string	"err_t"
.LASF18:
	.string	"netifapi_netif_name_to_index"
.LASF14:
	.string	"uint8_t"
.LASF3:
	.string	"unsigned char"
.LASF12:
	.string	"char"
.LASF13:
	.string	"int8_t"
.LASF6:
	.string	"long int"
.LASF25:
	.string	"lwip_if_indextoname"
.LASF19:
	.string	"netifapi_netif_index_to_name"
.LASF20:
	.string	"ifname"
.LASF5:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF23:
	.string	"errno"
.LASF15:
	.string	"u8_t"
.LASF11:
	.string	"long double"
.LASF4:
	.string	"short int"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/api/if_api.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
