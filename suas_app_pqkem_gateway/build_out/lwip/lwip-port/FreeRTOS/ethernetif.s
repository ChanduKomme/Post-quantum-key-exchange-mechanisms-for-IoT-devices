	.file	"ethernetif.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/FreeRTOS/ethernetif.c"
	.section	.text.low_level_init,"ax",@progbits
	.align	1
	.type	low_level_init, @function
low_level_init:
.LFB6:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/FreeRTOS/ethernetif.c"
	.loc 1 78 1
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
	.loc 1 80 21
	lw	a5,-20(s0)
	li	a4,6
	sb	a4,68(a5)
	.loc 1 83 20
	lw	a5,-20(s0)
	sb	zero,62(a5)
	.loc 1 84 20
	lw	a5,-20(s0)
	li	a4,80
	sb	a4,63(a5)
	.loc 1 85 20
	lw	a5,-20(s0)
	li	a4,67
	sb	a4,64(a5)
	.loc 1 86 20
	lw	a5,-20(s0)
	li	a4,-55
	sb	a4,65(a5)
	.loc 1 87 20
	lw	a5,-20(s0)
	sb	zero,66(a5)
	.loc 1 88 20
	lw	a5,-20(s0)
	li	a4,1
	sb	a4,67(a5)
	.loc 1 91 14
	lw	a5,-20(s0)
	li	a4,1500
	sh	a4,60(a5)
	.loc 1 94 16
	lw	a5,-20(s0)
	li	a4,10
	sb	a4,69(a5)
	.loc 1 139 1
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
.LFE6:
	.size	low_level_init, .-low_level_init
	.section	.rodata
	.align	2
.LC0:
	.string	"---------------Sending packet(%d)\r\n"
	.section	.text.low_level_output,"ax",@progbits
	.align	1
	.type	low_level_output, @function
low_level_output:
.LFB7:
	.loc 1 159 1
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
	.loc 1 162 3
	lui	a5,%hi(count.0)
	lw	a5,%lo(count.0)(a5)
	addi	a3,a5,1
	lui	a4,%hi(count.0)
	sw	a3,%lo(count.0)(a4)
	mv	a1,a5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	.loc 1 163 10
	li	a5,0
	.loc 1 164 1
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
.LFE7:
	.size	low_level_output, .-low_level_output
	.section	.rodata
	.align	2
.LC1:
	.string	"lwip"
	.section	.text.ethernetif_init,"ax",@progbits
	.align	1
	.globl	ethernetif_init
	.type	ethernetif_init, @function
ethernetif_init:
.LFB8:
	.loc 1 179 1
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
	.loc 1 184 19
	lw	a5,-20(s0)
	lui	a4,%hi(.LC1)
	addi	a4,a4,%lo(.LC1)
	sw	a4,56(a5)
	.loc 1 187 18
	lw	a5,-20(s0)
	li	a4,115
	sb	a4,70(a5)
	.loc 1 188 18
	lw	a5,-20(s0)
	li	a4,116
	sb	a4,71(a5)
	.loc 1 190 17
	lw	a5,-20(s0)
	lui	a4,%hi(etharp_output)
	addi	a4,a4,%lo(etharp_output)
	sw	a4,20(a5)
	.loc 1 191 21
	lw	a5,-20(s0)
	lui	a4,%hi(low_level_output)
	addi	a4,a4,%lo(low_level_output)
	sw	a4,24(a5)
	.loc 1 194 3
	lw	a0,-20(s0)
	call	low_level_init
	.loc 1 195 10
	li	a5,0
	.loc 1 196 1
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
.LFE8:
	.size	ethernetif_init, .-ethernetif_init
	.section	.text.set_if,"ax",@progbits
	.align	1
	.globl	set_if
	.type	set_if, @function
set_if:
.LFB9:
	.loc 1 199 1
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
	sw	a3,-48(s0)
	.loc 1 203 8
	addi	a5,s0,-24
	sw	a5,-20(s0)
	.loc 1 206 8
	lw	a5,-40(s0)
	beq	a5,zero,.L7
	.loc 1 206 29 discriminator 1
	addi	a5,s0,-24
	mv	a1,a5
	lw	a0,-40(s0)
	call	ip4addr_aton
	mv	a5,a0
	.loc 1 206 26 discriminator 2
	beq	a5,zero,.L7
	.loc 1 207 9
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	netif_set_ipaddr
.L7:
	.loc 1 211 8
	lw	a5,-44(s0)
	beq	a5,zero,.L8
	.loc 1 211 29 discriminator 1
	addi	a5,s0,-24
	mv	a1,a5
	lw	a0,-44(s0)
	call	ip4addr_aton
	mv	a5,a0
	.loc 1 211 26 discriminator 2
	beq	a5,zero,.L8
	.loc 1 212 9
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	netif_set_gw
.L8:
	.loc 1 216 8
	lw	a5,-48(s0)
	beq	a5,zero,.L10
	.loc 1 216 29 discriminator 1
	addi	a5,s0,-24
	mv	a1,a5
	lw	a0,-48(s0)
	call	ip4addr_aton
	mv	a5,a0
	.loc 1 216 26 discriminator 2
	beq	a5,zero,.L10
	.loc 1 217 9
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	netif_set_netmask
.L10:
	.loc 1 219 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	set_if, .-set_if
	.section	.sbss.count.0,"aw",@nobits
	.align	2
	.type	count.0, @object
	.size	count.0, 4
count.0:
	.zero	4
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/etharp.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5e7
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x53
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x74
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x87
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x9a
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x16
	.byte	0x4
	.uleb128 0xa
	.4byte	0xa8
	.4byte	0xba
	.uleb128 0xb
	.4byte	0x32
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	0xcb
	.uleb128 0x17
	.4byte	0xba
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x10
	.4byte	0xc4
	.uleb128 0x5
	.4byte	0xc4
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x7d
	.byte	0x11
	.4byte	0x68
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x7e
	.byte	0x10
	.4byte	0x47
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x7f
	.byte	0x12
	.4byte	0x7b
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x81
	.byte	0x12
	.4byte	0x8e
	.uleb128 0x18
	.byte	0x5
	.byte	0x1
	.4byte	0x53
	.byte	0x4
	.byte	0x35
	.byte	0xe
	.4byte	0x17a
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.sleb128 -1
	.uleb128 0x3
	.4byte	.LASF23
	.sleb128 -2
	.uleb128 0x3
	.4byte	.LASF24
	.sleb128 -3
	.uleb128 0x3
	.4byte	.LASF25
	.sleb128 -4
	.uleb128 0x3
	.4byte	.LASF26
	.sleb128 -5
	.uleb128 0x3
	.4byte	.LASF27
	.sleb128 -6
	.uleb128 0x3
	.4byte	.LASF28
	.sleb128 -7
	.uleb128 0x3
	.4byte	.LASF29
	.sleb128 -8
	.uleb128 0x3
	.4byte	.LASF30
	.sleb128 -9
	.uleb128 0x3
	.4byte	.LASF31
	.sleb128 -10
	.uleb128 0x3
	.4byte	.LASF32
	.sleb128 -11
	.uleb128 0x3
	.4byte	.LASF33
	.sleb128 -12
	.uleb128 0x3
	.4byte	.LASF34
	.sleb128 -13
	.uleb128 0x3
	.4byte	.LASF35
	.sleb128 -14
	.uleb128 0x3
	.4byte	.LASF36
	.sleb128 -15
	.uleb128 0x3
	.4byte	.LASF37
	.sleb128 -16
	.byte	0
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x4
	.byte	0x60
	.byte	0xe
	.4byte	0xe1
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x10
	.byte	0x5
	.byte	0xba
	.4byte	0x1f9
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x5
	.byte	0xbc
	.byte	0x10
	.4byte	0x1f9
	.byte	0
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x5
	.byte	0xbf
	.byte	0x9
	.4byte	0xa8
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x5
	.byte	0xc8
	.byte	0x9
	.4byte	0xed
	.byte	0x8
	.uleb128 0x12
	.string	"len"
	.byte	0xcb
	.byte	0x9
	.4byte	0xed
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x5
	.byte	0xd0
	.byte	0x8
	.4byte	0xd5
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x5
	.byte	0xd3
	.byte	0x8
	.4byte	0xd5
	.byte	0xd
	.uleb128 0x12
	.string	"ref"
	.byte	0xda
	.byte	0x8
	.4byte	0xd5
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x5
	.byte	0xdd
	.byte	0x8
	.4byte	0xd5
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	0x186
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x4
	.byte	0x6
	.byte	0x33
	.4byte	0x218
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x6
	.byte	0x34
	.byte	0x9
	.4byte	0xf9
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x6
	.byte	0x39
	.byte	0x19
	.4byte	0x1fe
	.uleb128 0x10
	.4byte	0x218
	.uleb128 0x19
	.4byte	.LASF49
	.byte	0x7
	.2byte	0x126
	.byte	0x14
	.4byte	0x218
	.uleb128 0x1a
	.4byte	.LASF83
	.byte	0x7
	.byte	0x1
	.4byte	0x74
	.byte	0x8
	.byte	0x9f
	.byte	0x6
	.4byte	0x255
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x25a
	.uleb128 0x1b
	.4byte	.LASF52
	.byte	0x54
	.byte	0x8
	.2byte	0x10d
	.byte	0x8
	.4byte	0x36c
	.uleb128 0x2
	.4byte	.LASF39
	.2byte	0x110
	.byte	0x11
	.4byte	0x255
	.byte	0
	.uleb128 0x2
	.4byte	.LASF53
	.2byte	0x115
	.byte	0xd
	.4byte	0x229
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF54
	.2byte	0x116
	.byte	0xd
	.4byte	0x229
	.byte	0x8
	.uleb128 0xd
	.string	"gw"
	.2byte	0x117
	.byte	0xd
	.4byte	0x229
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF55
	.2byte	0x129
	.byte	0x12
	.4byte	0x36c
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF56
	.2byte	0x12f
	.byte	0x13
	.4byte	0x391
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF57
	.2byte	0x134
	.byte	0x17
	.4byte	0x3c0
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF58
	.2byte	0x13f
	.byte	0x1c
	.4byte	0x3e5
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF59
	.2byte	0x144
	.byte	0x1c
	.4byte	0x3e5
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF60
	.2byte	0x14c
	.byte	0x9
	.4byte	0xa8
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF61
	.2byte	0x14e
	.byte	0x9
	.4byte	0xaa
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF62
	.2byte	0x152
	.byte	0xf
	.4byte	0xba
	.byte	0x38
	.uleb128 0xd
	.string	"mtu"
	.2byte	0x158
	.byte	0x9
	.4byte	0xed
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF63
	.2byte	0x15e
	.byte	0x8
	.4byte	0x42b
	.byte	0x3e
	.uleb128 0x2
	.4byte	.LASF64
	.2byte	0x160
	.byte	0x8
	.4byte	0xd5
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF43
	.2byte	0x162
	.byte	0x8
	.4byte	0xd5
	.byte	0x45
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x164
	.byte	0x8
	.4byte	0x43b
	.byte	0x46
	.uleb128 0xd
	.string	"num"
	.2byte	0x167
	.byte	0x8
	.4byte	0xd5
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF66
	.2byte	0x17d
	.byte	0x1c
	.4byte	0x401
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF67
	.2byte	0x185
	.byte	0xf
	.4byte	0x450
	.byte	0x50
	.byte	0
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x8
	.byte	0xb5
	.byte	0x11
	.4byte	0x378
	.uleb128 0x5
	.4byte	0x37d
	.uleb128 0x9
	.4byte	0x17a
	.4byte	0x391
	.uleb128 0x1
	.4byte	0x1f9
	.uleb128 0x1
	.4byte	0x255
	.byte	0
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0x8
	.byte	0xc0
	.byte	0x11
	.4byte	0x39d
	.uleb128 0x5
	.4byte	0x3a2
	.uleb128 0x9
	.4byte	0x17a
	.4byte	0x3bb
	.uleb128 0x1
	.4byte	0x255
	.uleb128 0x1
	.4byte	0x1f9
	.uleb128 0x1
	.4byte	0x3bb
	.byte	0
	.uleb128 0x5
	.4byte	0x224
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0x8
	.byte	0xd7
	.byte	0x11
	.4byte	0x3cc
	.uleb128 0x5
	.4byte	0x3d1
	.uleb128 0x9
	.4byte	0x17a
	.4byte	0x3e5
	.uleb128 0x1
	.4byte	0x255
	.uleb128 0x1
	.4byte	0x1f9
	.byte	0
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0x8
	.byte	0xd9
	.byte	0x10
	.4byte	0x3f1
	.uleb128 0x5
	.4byte	0x3f6
	.uleb128 0x1c
	.4byte	0x401
	.uleb128 0x1
	.4byte	0x255
	.byte	0
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0x8
	.byte	0xdc
	.byte	0x11
	.4byte	0x40d
	.uleb128 0x5
	.4byte	0x412
	.uleb128 0x9
	.4byte	0x17a
	.4byte	0x42b
	.uleb128 0x1
	.4byte	0x255
	.uleb128 0x1
	.4byte	0x3bb
	.uleb128 0x1
	.4byte	0x236
	.byte	0
	.uleb128 0xa
	.4byte	0xd5
	.4byte	0x43b
	.uleb128 0xb
	.4byte	0x32
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	0xc4
	.4byte	0x44b
	.uleb128 0xb
	.4byte	0x32
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.string	"acd"
	.uleb128 0x5
	.4byte	0x44b
	.uleb128 0xe
	.4byte	.LASF73
	.2byte	0x1c6
	.4byte	0x46b
	.uleb128 0x1
	.4byte	0x255
	.uleb128 0x1
	.4byte	0x3bb
	.byte	0
	.uleb128 0xe
	.4byte	.LASF74
	.2byte	0x1c7
	.4byte	0x481
	.uleb128 0x1
	.4byte	0x255
	.uleb128 0x1
	.4byte	0x3bb
	.byte	0
	.uleb128 0xe
	.4byte	.LASF75
	.2byte	0x1c5
	.4byte	0x497
	.uleb128 0x1
	.4byte	0x255
	.uleb128 0x1
	.4byte	0x3bb
	.byte	0
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x6
	.byte	0xd6
	.byte	0x5
	.4byte	0x2b
	.4byte	0x4b2
	.uleb128 0x1
	.4byte	0xba
	.uleb128 0x1
	.4byte	0x4b2
	.byte	0
	.uleb128 0x5
	.4byte	0x218
	.uleb128 0xf
	.4byte	.LASF77
	.byte	0x9
	.byte	0x51
	.byte	0x7
	.4byte	0x17a
	.4byte	0x4d7
	.uleb128 0x1
	.4byte	0x255
	.uleb128 0x1
	.4byte	0x1f9
	.uleb128 0x1
	.4byte	0x3bb
	.byte	0
	.uleb128 0xf
	.4byte	.LASF78
	.byte	0xa
	.byte	0xce
	.byte	0x5
	.4byte	0x2b
	.4byte	0x4ee
	.uleb128 0x1
	.4byte	0xbf
	.uleb128 0x1e
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF84
	.byte	0x1
	.byte	0xc6
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x559
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0xc6
	.byte	0x1b
	.4byte	0x255
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0xc6
	.byte	0x28
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF79
	.byte	0xc6
	.byte	0x37
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF80
	.byte	0xc6
	.byte	0x46
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.string	"ip"
	.byte	0x1
	.byte	0xc8
	.byte	0x11
	.4byte	0x4b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0xc9
	.byte	0x10
	.4byte	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.4byte	.LASF85
	.byte	0x1
	.byte	0xb2
	.byte	0x7
	.4byte	0x17a
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x582
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0xb2
	.byte	0x25
	.4byte	0x255
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.4byte	.LASF86
	.byte	0x1
	.byte	0x9e
	.byte	0xe
	.4byte	0x17a
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c9
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x9e
	.byte	0x3d
	.4byte	0x255
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.byte	0x9e
	.byte	0x61
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0xa0
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x5
	.byte	0x3
	.4byte	count.0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF87
	.byte	0x1
	.byte	0x4d
	.byte	0xd
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x4d
	.byte	0x2a
	.4byte	0x255
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.4byte	0x34
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
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
	.byte	0x7
	.4byte	.LFB8
	.uleb128 .LFE8-.LFB8
	.byte	0x7
	.4byte	.LFB9
	.uleb128 .LFE9-.LFB9
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF85:
	.string	"ethernetif_init"
.LASF47:
	.string	"addr"
.LASF63:
	.string	"hwaddr"
.LASF8:
	.string	"int8_t"
.LASF34:
	.string	"ERR_ABRT"
.LASF60:
	.string	"state"
.LASF31:
	.string	"ERR_ISCONN"
.LASF69:
	.string	"netif_output_fn"
.LASF6:
	.string	"short int"
.LASF55:
	.string	"input"
.LASF41:
	.string	"tot_len"
.LASF36:
	.string	"ERR_CLSD"
.LASF77:
	.string	"etharp_output"
.LASF58:
	.string	"status_callback"
.LASF64:
	.string	"hwaddr_len"
.LASF61:
	.string	"client_data"
.LASF50:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF66:
	.string	"igmp_mac_filter"
.LASF9:
	.string	"uint8_t"
.LASF20:
	.string	"u32_t"
.LASF53:
	.string	"ip_addr"
.LASF87:
	.string	"low_level_init"
.LASF21:
	.string	"ERR_OK"
.LASF35:
	.string	"ERR_RST"
.LASF46:
	.string	"ip4_addr"
.LASF62:
	.string	"hostname"
.LASF5:
	.string	"signed char"
.LASF57:
	.string	"linkoutput"
.LASF18:
	.string	"s8_t"
.LASF3:
	.string	"long long int"
.LASF24:
	.string	"ERR_TIMEOUT"
.LASF7:
	.string	"long int"
.LASF83:
	.string	"netif_mac_filter_action"
.LASF49:
	.string	"ip_addr_t"
.LASF76:
	.string	"ip4addr_aton"
.LASF78:
	.string	"printf"
.LASF30:
	.string	"ERR_ALREADY"
.LASF73:
	.string	"netif_set_netmask"
.LASF74:
	.string	"netif_set_gw"
.LASF10:
	.string	"unsigned char"
.LASF72:
	.string	"netif_igmp_mac_filter_fn"
.LASF65:
	.string	"name"
.LASF84:
	.string	"set_if"
.LASF4:
	.string	"long double"
.LASF25:
	.string	"ERR_RTE"
.LASF68:
	.string	"netif_input_fn"
.LASF32:
	.string	"ERR_CONN"
.LASF26:
	.string	"ERR_INPROGRESS"
.LASF71:
	.string	"netif_status_callback_fn"
.LASF44:
	.string	"if_idx"
.LASF70:
	.string	"netif_linkoutput_fn"
.LASF43:
	.string	"flags"
.LASF15:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF2:
	.string	"unsigned int"
.LASF11:
	.string	"uint16_t"
.LASF33:
	.string	"ERR_IF"
.LASF22:
	.string	"ERR_MEM"
.LASF23:
	.string	"ERR_BUF"
.LASF51:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF12:
	.string	"short unsigned int"
.LASF79:
	.string	"gw_addr"
.LASF59:
	.string	"link_callback"
.LASF38:
	.string	"err_t"
.LASF16:
	.string	"char"
.LASF82:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF75:
	.string	"netif_set_ipaddr"
.LASF28:
	.string	"ERR_WOULDBLOCK"
.LASF40:
	.string	"payload"
.LASF14:
	.string	"long unsigned int"
.LASF48:
	.string	"ip4_addr_t"
.LASF52:
	.string	"netif"
.LASF81:
	.string	"count"
.LASF54:
	.string	"netmask"
.LASF86:
	.string	"low_level_output"
.LASF19:
	.string	"u16_t"
.LASF67:
	.string	"acd_list"
.LASF29:
	.string	"ERR_USE"
.LASF56:
	.string	"output"
.LASF42:
	.string	"type_internal"
.LASF37:
	.string	"ERR_ARG"
.LASF17:
	.string	"u8_t"
.LASF27:
	.string	"ERR_VAL"
.LASF80:
	.string	"nm_addr"
.LASF39:
	.string	"next"
.LASF45:
	.string	"pbuf"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/FreeRTOS/ethernetif.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
