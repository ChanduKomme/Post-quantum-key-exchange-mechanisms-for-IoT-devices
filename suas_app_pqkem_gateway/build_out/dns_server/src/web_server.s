	.file	"web_server.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/dns_server" "/home/chandu/sdk/bl602_iot_sdk/components/network/dns_server/src/web_server.c"
	.section	.rodata.http_html_hdr,"a"
	.align	2
	.type	http_html_hdr, @object
	.size	http_html_hdr, 45
http_html_hdr:
	.string	"HTTP/1.1 200 OK\r\nContent-type: text/html\r\n\r\n"
	.section	.rodata.http_index_hml,"a"
	.align	2
	.type	http_index_hml, @object
	.size	http_index_hml, 352
http_index_hml:
	.ascii	"<!DOCTYPE html><html>\n<head>\n  <meta name=\"viewport\" con"
	.ascii	"tent=\"width=device-width, initial-scale"
	.string	"=1\">\n  <style type=\"text/css\">\n    html, body, iframe { margin: 0; padding: 0; height: 100%; }\n    iframe { display: block; width: 100%; border: none; }\n  </style>\n<title>HELLO BL602</title>\n</head>\n<body>\n<h1>Hello World, from BL602!</h1>\n</body>\n</html>\n"
	.section	.rodata
	.align	2
.LC0:
	.string	"the received data:\n%s\n"
	.section	.text.web_http_server,"ax",@progbits
	.align	1
	.type	web_http_server, @function
web_http_server:
.LFB6:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/dns_server/src/web_server.c"
	.loc 1 47 1
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
	.loc 1 53 9
	addi	a5,s0,-24
	mv	a1,a5
	lw	a0,-36(s0)
	call	netconn_recv
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 54 6
	lb	a5,-17(s0)
	bne	a5,zero,.L2
	.loc 1 55 5
	lw	a5,-24(s0)
	addi	a3,s0,-30
	addi	a4,s0,-28
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	netbuf_data
	.loc 1 56 5
	lw	a5,-28(s0)
	mv	a1,a5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	.loc 1 58 16
	lhu	a4,-30(s0)
	.loc 1 58 8
	li	a5,4
	bleu	a4,a5,.L2
	.loc 1 58 27 discriminator 1
	lw	a5,-28(s0)
	lbu	a4,0(a5)
	.loc 1 58 21 discriminator 1
	li	a5,71
	bne	a4,a5,.L2
	.loc 1 58 44 discriminator 2
	lw	a5,-28(s0)
	addi	a5,a5,1
	lbu	a4,0(a5)
	.loc 1 58 38 discriminator 2
	li	a5,69
	bne	a4,a5,.L2
	.loc 1 58 61 discriminator 3
	lw	a5,-28(s0)
	addi	a5,a5,2
	lbu	a4,0(a5)
	.loc 1 58 55 discriminator 3
	li	a5,84
	bne	a4,a5,.L2
	.loc 1 58 78 discriminator 4
	lw	a5,-28(s0)
	addi	a5,a5,3
	lbu	a4,0(a5)
	.loc 1 58 72 discriminator 4
	li	a5,32
	bne	a4,a5,.L2
	.loc 1 58 95 discriminator 5
	lw	a5,-28(s0)
	addi	a5,a5,4
	lbu	a4,0(a5)
	.loc 1 58 89 discriminator 5
	li	a5,47
	bne	a4,a5,.L2
	.loc 1 59 7
	li	a4,0
	li	a3,0
	li	a2,44
	lui	a5,%hi(http_html_hdr)
	addi	a1,a5,%lo(http_html_hdr)
	lw	a0,-36(s0)
	call	netconn_write_partly
	.loc 1 61 13
	lw	a5,-28(s0)
	addi	a5,a5,5
	lbu	a4,0(a5)
	.loc 1 61 9
	li	a5,104
	bne	a4,a5,.L3
	.loc 1 62 9
	li	a4,0
	li	a3,0
	li	a2,351
	lui	a5,%hi(http_index_hml)
	addi	a1,a5,%lo(http_index_hml)
	lw	a0,-36(s0)
	call	netconn_write_partly
	j	.L2
.L3:
	.loc 1 64 18
	lw	a5,-28(s0)
	addi	a5,a5,5
	lbu	a4,0(a5)
	.loc 1 64 14
	li	a5,108
	bne	a4,a5,.L4
	.loc 1 65 9
	li	a4,0
	li	a3,0
	li	a2,351
	lui	a5,%hi(http_index_hml)
	addi	a1,a5,%lo(http_index_hml)
	lw	a0,-36(s0)
	call	netconn_write_partly
	j	.L2
.L4:
	.loc 1 71 11
	li	a4,0
	li	a3,0
	li	a2,351
	lui	a5,%hi(http_index_hml)
	addi	a1,a5,%lo(http_index_hml)
	lw	a0,-36(s0)
	call	netconn_write_partly
.L2:
	.loc 1 75 3
	lw	a0,-36(s0)
	call	netconn_close
	.loc 1 76 3
	lw	a5,-24(s0)
	mv	a0,a5
	call	netbuf_delete
	.loc 1 77 1
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
.LFE6:
	.size	web_http_server, .-web_http_server
	.section	.text.web_server2,"ax",@progbits
	.align	1
	.globl	web_server2
	.type	web_server2, @function
web_server2:
.LFB7:
	.loc 1 81 1
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
	.loc 1 84 10
	li	a2,0
	li	a1,0
	li	a0,16
	call	netconn_new_with_proto_and_callback
	sw	a0,-20(s0)
	.loc 1 85 3
	li	a2,80
	li	a1,0
	lw	a0,-20(s0)
	call	netconn_bind
	.loc 1 86 3
	li	a1,255
	lw	a0,-20(s0)
	call	netconn_listen_with_backlog
.L9:
	.loc 1 88 11
	addi	a5,s0,-28
	mv	a1,a5
	lw	a0,-20(s0)
	call	netconn_accept
	mv	a5,a0
	sb	a5,-21(s0)
	.loc 1 89 8
	lb	a5,-21(s0)
	bne	a5,zero,.L6
	.loc 1 90 7
	lw	a5,-28(s0)
	mv	a0,a5
	call	web_http_server
	.loc 1 91 7
	lw	a5,-28(s0)
	mv	a0,a5
	call	netconn_delete
	j	.L9
.L6:
	.loc 1 94 7
	lw	a0,-20(s0)
	call	netconn_close
	.loc 1 95 7
	lw	a0,-20(s0)
	call	netconn_delete
	.loc 1 96 7
	nop
	.loc 1 99 1
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
.LFE7:
	.size	web_server2, .-web_server2
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/queue.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/semphr.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/arch/sys_arch.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netbuf.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/api.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7ad
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x17
	.4byte	.LASF137
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x7
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x22
	.byte	0x15
	.4byte	0x5f
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.4byte	.LASF7
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x79
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x8c
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x9f
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0xb2
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x19
	.byte	0x4
	.uleb128 0x3
	.4byte	0xd3
	.uleb128 0x1a
	.4byte	0xc2
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0xe
	.4byte	0xcc
	.uleb128 0x3
	.4byte	0xcc
	.uleb128 0x3
	.4byte	0xe2
	.uleb128 0x1b
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0x80
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0x53
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0x93
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xa6
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0x82
	.byte	0x11
	.4byte	0x6d
	.uleb128 0x12
	.byte	0x5
	.4byte	0x5f
	.byte	0x5
	.byte	0x35
	.4byte	0x192
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF25
	.sleb128 -1
	.uleb128 0x6
	.4byte	.LASF26
	.sleb128 -2
	.uleb128 0x6
	.4byte	.LASF27
	.sleb128 -3
	.uleb128 0x6
	.4byte	.LASF28
	.sleb128 -4
	.uleb128 0x6
	.4byte	.LASF29
	.sleb128 -5
	.uleb128 0x6
	.4byte	.LASF30
	.sleb128 -6
	.uleb128 0x6
	.4byte	.LASF31
	.sleb128 -7
	.uleb128 0x6
	.4byte	.LASF32
	.sleb128 -8
	.uleb128 0x6
	.4byte	.LASF33
	.sleb128 -9
	.uleb128 0x6
	.4byte	.LASF34
	.sleb128 -10
	.uleb128 0x6
	.4byte	.LASF35
	.sleb128 -11
	.uleb128 0x6
	.4byte	.LASF36
	.sleb128 -12
	.uleb128 0x6
	.4byte	.LASF37
	.sleb128 -13
	.uleb128 0x6
	.4byte	.LASF38
	.sleb128 -14
	.uleb128 0x6
	.4byte	.LASF39
	.sleb128 -15
	.uleb128 0x6
	.4byte	.LASF40
	.sleb128 -16
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x5
	.byte	0x60
	.byte	0xe
	.4byte	0xef
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x6
	.byte	0x30
	.byte	0x22
	.4byte	0x1aa
	.uleb128 0x3
	.4byte	0x1af
	.uleb128 0x9
	.4byte	.LASF113
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x7
	.byte	0x25
	.byte	0x17
	.4byte	0x19e
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x8
	.byte	0x2c
	.byte	0x1b
	.4byte	0x1b4
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x8
	.byte	0x2e
	.byte	0x17
	.4byte	0x19e
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x4
	.byte	0x9
	.byte	0x33
	.4byte	0x1f2
	.uleb128 0x5
	.4byte	.LASF50
	.byte	0x9
	.byte	0x34
	.byte	0x9
	.4byte	0x107
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x9
	.byte	0x39
	.byte	0x19
	.4byte	0x1d8
	.uleb128 0x1c
	.4byte	.LASF47
	.byte	0xa
	.2byte	0x126
	.byte	0x14
	.4byte	0x1f2
	.uleb128 0xe
	.4byte	0x1fe
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x10
	.byte	0xb
	.byte	0xba
	.4byte	0x285
	.uleb128 0x5
	.4byte	.LASF51
	.byte	0xb
	.byte	0xbc
	.byte	0x10
	.4byte	0x285
	.byte	0
	.uleb128 0x5
	.4byte	.LASF52
	.byte	0xb
	.byte	0xbf
	.byte	0x9
	.4byte	0xc0
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF53
	.byte	0xb
	.byte	0xc8
	.byte	0x9
	.4byte	0xfb
	.byte	0x8
	.uleb128 0xb
	.string	"len"
	.byte	0xb
	.byte	0xcb
	.byte	0x9
	.4byte	0xfb
	.byte	0xa
	.uleb128 0x5
	.4byte	.LASF54
	.byte	0xb
	.byte	0xd0
	.byte	0x8
	.4byte	0xe3
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF55
	.byte	0xb
	.byte	0xd3
	.byte	0x8
	.4byte	0xe3
	.byte	0xd
	.uleb128 0xb
	.string	"ref"
	.byte	0xb
	.byte	0xda
	.byte	0x8
	.4byte	0xe3
	.byte	0xe
	.uleb128 0x5
	.4byte	.LASF56
	.byte	0xb
	.byte	0xdd
	.byte	0x8
	.4byte	0xe3
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	0x210
	.uleb128 0x12
	.byte	0x7
	.4byte	0x8c
	.byte	0xc
	.byte	0x34
	.4byte	0x2f7
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.4byte	.LASF80
	.4byte	0x8c
	.byte	0xe
	.byte	0x71
	.4byte	0x31f
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	0x20b
	.uleb128 0xf
	.4byte	.LASF77
	.byte	0x14
	.byte	0xd
	.byte	0x3c
	.4byte	0x37d
	.uleb128 0xb
	.string	"p"
	.byte	0xd
	.byte	0x3d
	.byte	0x10
	.4byte	0x285
	.byte	0
	.uleb128 0xb
	.string	"ptr"
	.byte	0xd
	.byte	0x3d
	.byte	0x14
	.4byte	0x285
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF50
	.byte	0xd
	.byte	0x3e
	.byte	0xd
	.4byte	0x1fe
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF78
	.byte	0xd
	.byte	0x3f
	.byte	0x9
	.4byte	0xfb
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF55
	.byte	0xd
	.byte	0x41
	.byte	0x8
	.4byte	0xe3
	.byte	0xe
	.uleb128 0x5
	.4byte	.LASF79
	.byte	0xd
	.byte	0x42
	.byte	0x9
	.4byte	0xfb
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF81
	.4byte	0x8c
	.byte	0xf
	.byte	0x71
	.4byte	0x3b1
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x40
	.byte	0
	.uleb128 0x10
	.4byte	.LASF88
	.4byte	0x8c
	.byte	0xf
	.byte	0x93
	.4byte	0x3df
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF94
	.4byte	0x8c
	.byte	0xf
	.byte	0xb5
	.4byte	0x40d
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF100
	.byte	0xf
	.byte	0xd7
	.byte	0x11
	.4byte	0x419
	.uleb128 0x3
	.4byte	0x41e
	.uleb128 0x1d
	.4byte	0x433
	.uleb128 0x2
	.4byte	0x433
	.uleb128 0x2
	.4byte	0x3df
	.uleb128 0x2
	.4byte	0xfb
	.byte	0
	.uleb128 0x3
	.4byte	0x438
	.uleb128 0xf
	.4byte	.LASF101
	.byte	0x30
	.byte	0xf
	.byte	0xda
	.4byte	0x4ee
	.uleb128 0x5
	.4byte	.LASF102
	.byte	0xf
	.byte	0xdc
	.byte	0x15
	.4byte	0x37d
	.byte	0
	.uleb128 0x5
	.4byte	.LASF103
	.byte	0xf
	.byte	0xde
	.byte	0x16
	.4byte	0x3b1
	.byte	0x1
	.uleb128 0xb
	.string	"pcb"
	.byte	0xf
	.byte	0xe5
	.byte	0x5
	.4byte	0x4ee
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF104
	.byte	0xf
	.byte	0xe7
	.byte	0x9
	.4byte	0x192
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF105
	.byte	0xf
	.byte	0xea
	.byte	0xd
	.4byte	0x1c0
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF106
	.byte	0xf
	.byte	0xee
	.byte	0xe
	.4byte	0x1cc
	.byte	0x10
	.uleb128 0x5
	.4byte	.LASF107
	.byte	0xf
	.byte	0xf2
	.byte	0xe
	.4byte	0x1cc
	.byte	0x14
	.uleb128 0x5
	.4byte	.LASF108
	.byte	0xf
	.byte	0xfc
	.byte	0x5
	.4byte	0x548
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF109
	.2byte	0x100
	.byte	0x9
	.4byte	0x113
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF110
	.2byte	0x105
	.byte	0x9
	.4byte	0x107
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF55
	.2byte	0x115
	.byte	0x8
	.4byte	0xe3
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF111
	.2byte	0x11a
	.byte	0x13
	.4byte	0x56b
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF112
	.2byte	0x11d
	.byte	0x14
	.4byte	0x40d
	.byte	0x2c
	.byte	0
	.uleb128 0x13
	.byte	0xe0
	.4byte	0x520
	.uleb128 0xd
	.string	"ip"
	.byte	0xe1
	.byte	0x14
	.4byte	0x525
	.uleb128 0xd
	.string	"tcp"
	.byte	0xe2
	.byte	0x15
	.4byte	0x52f
	.uleb128 0xd
	.string	"udp"
	.byte	0xe3
	.byte	0x15
	.4byte	0x539
	.uleb128 0xd
	.string	"raw"
	.byte	0xe4
	.byte	0x15
	.4byte	0x543
	.byte	0
	.uleb128 0x9
	.4byte	.LASF114
	.uleb128 0x3
	.4byte	0x520
	.uleb128 0x9
	.4byte	.LASF115
	.uleb128 0x3
	.4byte	0x52a
	.uleb128 0x9
	.4byte	.LASF116
	.uleb128 0x3
	.4byte	0x534
	.uleb128 0x9
	.4byte	.LASF117
	.uleb128 0x3
	.4byte	0x53e
	.uleb128 0x13
	.byte	0xf9
	.4byte	0x566
	.uleb128 0x1e
	.4byte	.LASF118
	.byte	0xf
	.byte	0xfa
	.byte	0x9
	.4byte	0x2b
	.uleb128 0xd
	.string	"ptr"
	.byte	0xfb
	.byte	0xb
	.4byte	0xc0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF119
	.uleb128 0x3
	.4byte	0x566
	.uleb128 0x14
	.4byte	0xd3
	.4byte	0x580
	.uleb128 0x1f
	.4byte	0x3e
	.byte	0x2c
	.byte	0
	.uleb128 0xe
	.4byte	0x570
	.uleb128 0xa
	.4byte	.LASF120
	.byte	0x1d
	.byte	0x13
	.4byte	0x580
	.uleb128 0x5
	.byte	0x3
	.4byte	http_html_hdr
	.uleb128 0x14
	.4byte	0xd3
	.4byte	0x5a7
	.uleb128 0x20
	.4byte	0x3e
	.2byte	0x15f
	.byte	0
	.uleb128 0xe
	.4byte	0x596
	.uleb128 0xa
	.4byte	.LASF121
	.byte	0x1f
	.byte	0x13
	.4byte	0x5a7
	.uleb128 0x5
	.byte	0x3
	.4byte	http_index_hml
	.uleb128 0x8
	.4byte	.LASF122
	.2byte	0x13b
	.byte	0x7
	.4byte	0x192
	.4byte	0x5d3
	.uleb128 0x2
	.4byte	0x433
	.byte	0
	.uleb128 0x8
	.4byte	.LASF123
	.2byte	0x14d
	.byte	0x7
	.4byte	0x192
	.4byte	0x5ee
	.uleb128 0x2
	.4byte	0x433
	.uleb128 0x2
	.4byte	0x5ee
	.byte	0
	.uleb128 0x3
	.4byte	0x433
	.uleb128 0x8
	.4byte	.LASF124
	.2byte	0x14a
	.byte	0x7
	.4byte	0x192
	.4byte	0x60e
	.uleb128 0x2
	.4byte	0x433
	.uleb128 0x2
	.4byte	0xe3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF125
	.2byte	0x146
	.byte	0x7
	.4byte	0x192
	.4byte	0x62e
	.uleb128 0x2
	.4byte	0x433
	.uleb128 0x2
	.4byte	0x31f
	.uleb128 0x2
	.4byte	0xfb
	.byte	0
	.uleb128 0x8
	.4byte	.LASF126
	.2byte	0x138
	.byte	0x11
	.4byte	0x433
	.4byte	0x64e
	.uleb128 0x2
	.4byte	0x37d
	.uleb128 0x2
	.4byte	0xe3
	.uleb128 0x2
	.4byte	0x40d
	.byte	0
	.uleb128 0x21
	.4byte	.LASF138
	.byte	0xd
	.byte	0x4b
	.byte	0x6
	.4byte	0x660
	.uleb128 0x2
	.4byte	0x660
	.byte	0
	.uleb128 0x3
	.4byte	0x324
	.uleb128 0x8
	.4byte	.LASF127
	.2byte	0x15e
	.byte	0x7
	.4byte	0x192
	.4byte	0x67b
	.uleb128 0x2
	.4byte	0x433
	.byte	0
	.uleb128 0x8
	.4byte	.LASF128
	.2byte	0x157
	.byte	0x7
	.4byte	0x192
	.4byte	0x6a5
	.uleb128 0x2
	.4byte	0x433
	.uleb128 0x2
	.4byte	0xdd
	.uleb128 0x2
	.4byte	0x32
	.uleb128 0x2
	.4byte	0xe3
	.uleb128 0x2
	.4byte	0x6a5
	.byte	0
	.uleb128 0x3
	.4byte	0x32
	.uleb128 0x15
	.4byte	.LASF129
	.byte	0x10
	.byte	0xce
	.byte	0x5
	.4byte	0x2b
	.4byte	0x6c1
	.uleb128 0x2
	.4byte	0xc7
	.uleb128 0x22
	.byte	0
	.uleb128 0x15
	.4byte	.LASF130
	.byte	0xd
	.byte	0x52
	.byte	0x7
	.4byte	0x192
	.4byte	0x6e1
	.uleb128 0x2
	.4byte	0x660
	.uleb128 0x2
	.4byte	0x6e1
	.uleb128 0x2
	.4byte	0x6e6
	.byte	0
	.uleb128 0x3
	.4byte	0xc0
	.uleb128 0x3
	.4byte	0xfb
	.uleb128 0x8
	.4byte	.LASF131
	.2byte	0x14e
	.byte	0x7
	.4byte	0x192
	.4byte	0x706
	.uleb128 0x2
	.4byte	0x433
	.uleb128 0x2
	.4byte	0x706
	.byte	0
	.uleb128 0x3
	.4byte	0x660
	.uleb128 0x23
	.4byte	.LASF139
	.byte	0x1
	.byte	0x50
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x759
	.uleb128 0x16
	.4byte	.LASF134
	.byte	0x50
	.byte	0x28
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF132
	.byte	0x52
	.byte	0x13
	.4byte	0x433
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.4byte	.LASF133
	.byte	0x52
	.byte	0x1a
	.4byte	0x433
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.string	"err"
	.byte	0x53
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x24
	.4byte	.LASF140
	.byte	0x1
	.byte	0x2e
	.byte	0xd
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.4byte	.LASF132
	.byte	0x2e
	.byte	0x2d
	.4byte	0x433
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF135
	.byte	0x30
	.byte	0x12
	.4byte	0x660
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"buf"
	.byte	0x31
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.4byte	.LASF136
	.byte	0x32
	.byte	0x9
	.4byte	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x11
	.string	"err"
	.byte	0x33
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0xb
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 15
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
	.uleb128 0x9
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 15
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x7c
	.uleb128 0x19
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
.LASF92:
	.string	"NETCONN_CONNECT"
.LASF109:
	.string	"send_timeout"
.LASF58:
	.string	"MEMP_UDP_PCB"
.LASF68:
	.string	"MEMP_SYS_TIMEOUT"
.LASF34:
	.string	"ERR_ISCONN"
.LASF49:
	.string	"pbuf"
.LASF5:
	.string	"size_t"
.LASF108:
	.string	"callback_arg"
.LASF69:
	.string	"MEMP_NETDB"
.LASF138:
	.string	"netbuf_delete"
.LASF133:
	.string	"newconn"
.LASF102:
	.string	"type"
.LASF129:
	.string	"printf"
.LASF17:
	.string	"long long unsigned int"
.LASF45:
	.string	"sys_mbox_t"
.LASF23:
	.string	"s32_t"
.LASF61:
	.string	"MEMP_TCP_SEG"
.LASF105:
	.string	"op_completed"
.LASF51:
	.string	"next"
.LASF121:
	.string	"http_index_hml"
.LASF44:
	.string	"sys_sem_t"
.LASF3:
	.string	"long long int"
.LASF7:
	.string	"signed char"
.LASF84:
	.string	"NETCONN_UDP"
.LASF32:
	.string	"ERR_USE"
.LASF101:
	.string	"netconn"
.LASF27:
	.string	"ERR_TIMEOUT"
.LASF103:
	.string	"state"
.LASF10:
	.string	"long int"
.LASF132:
	.string	"conn"
.LASF57:
	.string	"MEMP_RAW_PCB"
.LASF83:
	.string	"NETCONN_TCP"
.LASF48:
	.string	"ip4_addr"
.LASF76:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF36:
	.string	"ERR_IF"
.LASF13:
	.string	"uint16_t"
.LASF24:
	.string	"ERR_OK"
.LASF117:
	.string	"raw_pcb"
.LASF60:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF93:
	.string	"NETCONN_CLOSE"
.LASF54:
	.string	"type_internal"
.LASF78:
	.string	"port"
.LASF56:
	.string	"if_idx"
.LASF88:
	.string	"netconn_state"
.LASF2:
	.string	"unsigned int"
.LASF19:
	.string	"u8_t"
.LASF67:
	.string	"MEMP_IGMP_GROUP"
.LASF87:
	.string	"NETCONN_RAW"
.LASF106:
	.string	"recvmbox"
.LASF16:
	.string	"long unsigned int"
.LASF33:
	.string	"ERR_ALREADY"
.LASF22:
	.string	"u32_t"
.LASF134:
	.string	"pvParameters"
.LASF59:
	.string	"MEMP_TCP_PCB"
.LASF81:
	.string	"netconn_type"
.LASF14:
	.string	"short unsigned int"
.LASF46:
	.string	"ip4_addr_t"
.LASF38:
	.string	"ERR_RST"
.LASF112:
	.string	"callback"
.LASF90:
	.string	"NETCONN_WRITE"
.LASF127:
	.string	"netconn_close"
.LASF72:
	.string	"MEMP_MAX"
.LASF47:
	.string	"ip_addr_t"
.LASF41:
	.string	"err_t"
.LASF4:
	.string	"long double"
.LASF53:
	.string	"tot_len"
.LASF52:
	.string	"payload"
.LASF131:
	.string	"netconn_recv"
.LASF120:
	.string	"http_html_hdr"
.LASF135:
	.string	"inputbuf"
.LASF100:
	.string	"netconn_callback"
.LASF91:
	.string	"NETCONN_LISTEN"
.LASF29:
	.string	"ERR_INPROGRESS"
.LASF104:
	.string	"pending_err"
.LASF74:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF30:
	.string	"ERR_VAL"
.LASF128:
	.string	"netconn_write_partly"
.LASF113:
	.string	"QueueDefinition"
.LASF9:
	.string	"int32_t"
.LASF12:
	.string	"unsigned char"
.LASF40:
	.string	"ERR_ARG"
.LASF35:
	.string	"ERR_CONN"
.LASF75:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF8:
	.string	"short int"
.LASF99:
	.string	"NETCONN_EVT_ERROR"
.LASF77:
	.string	"netbuf"
.LASF96:
	.string	"NETCONN_EVT_RCVMINUS"
.LASF136:
	.string	"buflen"
.LASF50:
	.string	"addr"
.LASF86:
	.string	"NETCONN_UDPNOCHKSUM"
.LASF73:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF20:
	.string	"s8_t"
.LASF126:
	.string	"netconn_new_with_proto_and_callback"
.LASF116:
	.string	"udp_pcb"
.LASF42:
	.string	"QueueHandle_t"
.LASF15:
	.string	"uint32_t"
.LASF37:
	.string	"ERR_ABRT"
.LASF85:
	.string	"NETCONN_UDPLITE"
.LASF65:
	.string	"MEMP_TCPIP_MSG_API"
.LASF43:
	.string	"SemaphoreHandle_t"
.LASF18:
	.string	"char"
.LASF139:
	.string	"web_server2"
.LASF111:
	.string	"current_msg"
.LASF97:
	.string	"NETCONN_EVT_SENDPLUS"
.LASF63:
	.string	"MEMP_NETBUF"
.LASF79:
	.string	"toport_chksum"
.LASF114:
	.string	"ip_pcb"
.LASF64:
	.string	"MEMP_NETCONN"
.LASF62:
	.string	"MEMP_ALTCP_PCB"
.LASF71:
	.string	"MEMP_PBUF_POOL"
.LASF123:
	.string	"netconn_accept"
.LASF140:
	.string	"web_http_server"
.LASF137:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF39:
	.string	"ERR_CLSD"
.LASF28:
	.string	"ERR_RTE"
.LASF6:
	.string	"int8_t"
.LASF21:
	.string	"u16_t"
.LASF26:
	.string	"ERR_BUF"
.LASF130:
	.string	"netbuf_data"
.LASF80:
	.string	"lwip_internal_netif_client_data_index"
.LASF124:
	.string	"netconn_listen_with_backlog"
.LASF11:
	.string	"uint8_t"
.LASF55:
	.string	"flags"
.LASF94:
	.string	"netconn_evt"
.LASF82:
	.string	"NETCONN_INVALID"
.LASF122:
	.string	"netconn_delete"
.LASF95:
	.string	"NETCONN_EVT_RCVPLUS"
.LASF31:
	.string	"ERR_WOULDBLOCK"
.LASF118:
	.string	"socket"
.LASF89:
	.string	"NETCONN_NONE"
.LASF119:
	.string	"api_msg"
.LASF107:
	.string	"acceptmbox"
.LASF98:
	.string	"NETCONN_EVT_SENDMINUS"
.LASF110:
	.string	"recv_timeout"
.LASF70:
	.string	"MEMP_PBUF"
.LASF25:
	.string	"ERR_MEM"
.LASF115:
	.string	"tcp_pcb"
.LASF66:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF125:
	.string	"netconn_bind"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/dns_server"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/dns_server/src/web_server.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
