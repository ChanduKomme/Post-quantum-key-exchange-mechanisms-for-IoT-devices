	.file	"web_server.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.web_server2.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"the received data:\n%s\n"
	.section	.text.web_server2,"ax",@progbits
	.align	1
	.globl	web_server2
	.type	web_server2, @function
web_server2:
.LVL0:
.LFB52:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
.LM4:
.LM5:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
.LM6:
	li	a2,0
	li	a1,0
	li	a0,16
.LVL1:
.LM7:
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 9, -12
.LM8:
	call	netconn_new_with_proto_and_callback
.LVL2:
.LM9:
	li	a2,80
	li	a1,0
.LM10:
	mv	s2,a0
.LVL3:
.LM11:
	call	netconn_bind
.LVL4:
.LM12:
	li	a1,255
	mv	a0,s2
	call	netconn_listen_with_backlog
.LVL5:
.LBB4:
.LBB5:
.LM13:
	lui	a5,%hi(.LC0)
	addi	s3,a5,%lo(.LC0)
.LM14:
	li	s0,4
.L8:
.LBE5:
.LBE4:
.LM15:
.LM16:
.LM17:
	addi	a1,sp,4
	mv	a0,s2
	call	netconn_accept
.LVL6:
.LM18:
.LM19:
	bne	a0,zero,.L2
.LM20:
	lw	s1,4(sp)
.LVL7:
.LBB7:
.LBI4:
.LM21:
.LBB6:
.LM22:
.LM23:
.LM24:
.LM25:
.LM26:
.LM27:
	addi	a1,sp,8
	mv	a0,s1
.LVL8:
.LM28:
	call	netconn_recv
.LVL9:
.LM29:
.LM30:
	bne	a0,zero,.L4
.LM31:
	lw	a0,8(sp)
.LVL10:
.LM32:
	addi	a2,sp,2
	addi	a1,sp,12
	call	netbuf_data
.LVL11:
.LM33:
	lw	a1,12(sp)
	mv	a0,s3
	call	printf
.LVL12:
.LM34:
.LM35:
	lhu	a5,2(sp)
	bleu	a5,s0,.L4
.LM36:
	lw	a5,12(sp)
.LM37:
	li	a4,71
	lbu	a3,0(a5)
	bne	a3,a4,.L4
.LM38:
	lbu	a3,1(a5)
	li	a4,69
	bne	a3,a4,.L4
.LM39:
	lbu	a3,2(a5)
	li	a4,84
	bne	a3,a4,.L4
.LM40:
	lbu	a3,3(a5)
	li	a4,32
	bne	a3,a4,.L4
.LM41:
	lbu	a4,4(a5)
	li	a5,47
	bne	a4,a5,.L4
.LM42:
	lui	a1,%hi(http_html_hdr)
	li	a4,0
	li	a3,0
	li	a2,44
	addi	a1,a1,%lo(http_html_hdr)
	mv	a0,s1
	call	netconn_write_partly
.LVL13:
.LM43:
	lui	a1,%hi(http_index_hml)
.LM44:
	li	a4,0
	li	a3,0
	li	a2,351
	addi	a1,a1,%lo(http_index_hml)
	mv	a0,s1
	call	netconn_write_partly
.LVL14:
.L4:
.LM45:
	mv	a0,s1
	call	netconn_close
.LVL15:
.LM46:
	lw	a0,8(sp)
	call	netbuf_delete
.LVL16:
.LM47:
.LBE6:
.LBE7:
.LM48:
	lw	a0,4(sp)
	call	netconn_delete
.LVL17:
.LM49:
.LM50:
	j	.L8
.LVL18:
.L2:
.LM51:
	mv	a0,s2
.LVL19:
.LM52:
	call	netconn_close
.LVL20:
.LM53:
	mv	a0,s2
	call	netconn_delete
.LVL21:
.LM54:
.LM55:
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
.LVL22:
.LM56:
	lw	s3,28(sp)
	.cfi_restore 19
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE52:
	.size	web_server2, .-web_server2
	.section	.rodata.http_index_hml,"a"
	.align	2
	.type	http_index_hml, @object
	.size	http_index_hml, 352
http_index_hml:
	.ascii	"<!DOCTYPE html><html>\n<head>\n  <meta name=\"viewport\" con"
	.ascii	"tent=\"width=device-width, initial-scale"
	.string	"=1\">\n  <style type=\"text/css\">\n    html, body, iframe { margin: 0; padding: 0; height: 100%; }\n    iframe { display: block; width: 100%; border: none; }\n  </style>\n<title>HELLO BL602</title>\n</head>\n<body>\n<h1>Hello World, from BL602!</h1>\n</body>\n</html>\n"
	.section	.rodata.http_html_hdr,"a"
	.align	2
	.type	http_html_hdr, @object
	.size	http_html_hdr, 45
http_html_hdr:
	.string	"HTTP/1.1 200 OK\r\nContent-type: text/html\r\n\r\n"
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xad8
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1b
	.4byte	.LASF191
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL6
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x1c
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x32
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.4byte	.LASF5
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x3
	.byte	0x22
	.byte	0x15
	.4byte	0x66
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.4byte	.LASF8
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x80
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x93
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0xa6
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0xb9
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x1d
	.byte	0x4
	.uleb128 0x4
	.4byte	0xd3
	.uleb128 0x1e
	.4byte	0xc2
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x10
	.4byte	0xcc
	.uleb128 0x4
	.4byte	0xcc
	.uleb128 0x4
	.4byte	0xe2
	.uleb128 0x1f
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0x87
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0x5a
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0x9a
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xad
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x4
	.byte	0x82
	.byte	0x11
	.4byte	0x74
	.uleb128 0x12
	.byte	0x5
	.4byte	0x66
	.byte	0x5
	.byte	0x35
	.4byte	0x192
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0
	.uleb128 0x7
	.4byte	.LASF25
	.sleb128 -1
	.uleb128 0x7
	.4byte	.LASF26
	.sleb128 -2
	.uleb128 0x7
	.4byte	.LASF27
	.sleb128 -3
	.uleb128 0x7
	.4byte	.LASF28
	.sleb128 -4
	.uleb128 0x7
	.4byte	.LASF29
	.sleb128 -5
	.uleb128 0x7
	.4byte	.LASF30
	.sleb128 -6
	.uleb128 0x7
	.4byte	.LASF31
	.sleb128 -7
	.uleb128 0x7
	.4byte	.LASF32
	.sleb128 -8
	.uleb128 0x7
	.4byte	.LASF33
	.sleb128 -9
	.uleb128 0x7
	.4byte	.LASF34
	.sleb128 -10
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 -11
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 -12
	.uleb128 0x7
	.4byte	.LASF37
	.sleb128 -13
	.uleb128 0x7
	.4byte	.LASF38
	.sleb128 -14
	.uleb128 0x7
	.4byte	.LASF39
	.sleb128 -15
	.uleb128 0x7
	.4byte	.LASF40
	.sleb128 -16
	.byte	0
	.uleb128 0x5
	.4byte	.LASF41
	.byte	0x5
	.byte	0x60
	.byte	0xe
	.4byte	0xef
	.uleb128 0x5
	.4byte	.LASF42
	.byte	0x6
	.byte	0x30
	.byte	0x22
	.4byte	0x1aa
	.uleb128 0x4
	.4byte	0x1af
	.uleb128 0xc
	.4byte	.LASF94
	.uleb128 0x5
	.4byte	.LASF43
	.byte	0x7
	.byte	0x25
	.byte	0x17
	.4byte	0x19e
	.uleb128 0x5
	.4byte	.LASF44
	.byte	0x8
	.byte	0x2c
	.byte	0x1b
	.4byte	0x1b4
	.uleb128 0x5
	.4byte	.LASF45
	.byte	0x8
	.byte	0x2e
	.byte	0x17
	.4byte	0x19e
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x4
	.byte	0x9
	.byte	0x33
	.4byte	0x1f2
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x9
	.byte	0x34
	.byte	0x9
	.4byte	0x107
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF46
	.byte	0x9
	.byte	0x39
	.byte	0x19
	.4byte	0x1d8
	.uleb128 0x20
	.4byte	.LASF47
	.byte	0xa
	.2byte	0x126
	.byte	0x14
	.4byte	0x1f2
	.uleb128 0x10
	.4byte	0x1fe
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x10
	.byte	0xb
	.byte	0xba
	.4byte	0x285
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0xb
	.byte	0xbc
	.byte	0x10
	.4byte	0x285
	.byte	0
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0xb
	.byte	0xbf
	.byte	0x9
	.4byte	0xc0
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0xb
	.byte	0xc8
	.byte	0x9
	.4byte	0xfb
	.byte	0x8
	.uleb128 0xd
	.string	"len"
	.byte	0xb
	.byte	0xcb
	.byte	0x9
	.4byte	0xfb
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0xb
	.byte	0xd0
	.byte	0x8
	.4byte	0xe3
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0xb
	.byte	0xd3
	.byte	0x8
	.4byte	0xe3
	.byte	0xd
	.uleb128 0xd
	.string	"ref"
	.byte	0xb
	.byte	0xda
	.byte	0x8
	.4byte	0xe3
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0xb
	.byte	0xdd
	.byte	0x8
	.4byte	0xe3
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	0x210
	.uleb128 0xb
	.4byte	.LASF66
	.4byte	0x93
	.byte	0xc
	.byte	0x20
	.byte	0xe
	.4byte	0x2d1
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
	.byte	0
	.uleb128 0xb
	.4byte	.LASF67
	.4byte	0x93
	.byte	0xd
	.byte	0x52
	.byte	0xe
	.4byte	0x30c
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF75
	.4byte	0x93
	.byte	0xd
	.byte	0xc1
	.byte	0xe
	.4byte	0x33b
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0xe1
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0xe2
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xe3
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xe4
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xe5
	.byte	0
	.uleb128 0x21
	.4byte	.LASF81
	.byte	0x7
	.byte	0x1
	.4byte	0x93
	.byte	0xd
	.2byte	0x13d
	.byte	0xe
	.4byte	0x37f
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.byte	0x7
	.4byte	0x93
	.byte	0xe
	.byte	0x1a
	.4byte	0x3a4
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF95
	.uleb128 0x4
	.4byte	0x3a4
	.uleb128 0x12
	.byte	0x7
	.4byte	0x93
	.byte	0xf
	.byte	0x34
	.4byte	0x487
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF129
	.byte	0x21
	.byte	0
	.uleb128 0xb
	.4byte	.LASF130
	.4byte	0x93
	.byte	0x10
	.byte	0x71
	.byte	0x6
	.4byte	0x4b0
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	0x20b
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0x14
	.byte	0x11
	.byte	0x3c
	.4byte	0x50e
	.uleb128 0xd
	.string	"p"
	.byte	0x11
	.byte	0x3d
	.byte	0x10
	.4byte	0x285
	.byte	0
	.uleb128 0xd
	.string	"ptr"
	.byte	0x11
	.byte	0x3d
	.byte	0x14
	.4byte	0x285
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x11
	.byte	0x3e
	.byte	0xd
	.4byte	0x1fe
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF136
	.byte	0x11
	.byte	0x3f
	.byte	0x9
	.4byte	0xfb
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0x11
	.byte	0x41
	.byte	0x8
	.4byte	0xe3
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF137
	.byte	0x11
	.byte	0x42
	.byte	0x9
	.4byte	0xfb
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF138
	.4byte	0x93
	.byte	0x12
	.byte	0x71
	.byte	0x6
	.4byte	0x543
	.uleb128 0x1
	.4byte	.LASF139
	.byte	0
	.uleb128 0x1
	.4byte	.LASF140
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF142
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF144
	.byte	0x40
	.byte	0
	.uleb128 0xb
	.4byte	.LASF145
	.4byte	0x93
	.byte	0x12
	.byte	0x93
	.byte	0x6
	.4byte	0x572
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0
	.uleb128 0x1
	.4byte	.LASF147
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF149
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF150
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF151
	.4byte	0x93
	.byte	0x12
	.byte	0xb5
	.byte	0x6
	.4byte	0x5a1
	.uleb128 0x1
	.4byte	.LASF152
	.byte	0
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF157
	.byte	0x12
	.byte	0xd7
	.byte	0x11
	.4byte	0x5ad
	.uleb128 0x4
	.4byte	0x5b2
	.uleb128 0x22
	.4byte	0x5c7
	.uleb128 0x3
	.4byte	0x5c7
	.uleb128 0x3
	.4byte	0x572
	.uleb128 0x3
	.4byte	0xfb
	.byte	0
	.uleb128 0x4
	.4byte	0x5cc
	.uleb128 0x11
	.4byte	.LASF158
	.byte	0x30
	.byte	0x12
	.byte	0xda
	.4byte	0x682
	.uleb128 0x6
	.4byte	.LASF159
	.byte	0x12
	.byte	0xdc
	.byte	0x15
	.4byte	0x50e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF160
	.byte	0x12
	.byte	0xde
	.byte	0x16
	.4byte	0x543
	.byte	0x1
	.uleb128 0xd
	.string	"pcb"
	.byte	0x12
	.byte	0xe5
	.byte	0x5
	.4byte	0x682
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF161
	.byte	0x12
	.byte	0xe7
	.byte	0x9
	.4byte	0x192
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF162
	.byte	0x12
	.byte	0xea
	.byte	0xd
	.4byte	0x1c0
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF163
	.byte	0x12
	.byte	0xee
	.byte	0xe
	.4byte	0x1cc
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF164
	.byte	0x12
	.byte	0xf2
	.byte	0xe
	.4byte	0x1cc
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF165
	.byte	0x12
	.byte	0xfc
	.byte	0x5
	.4byte	0x6d2
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF166
	.2byte	0x100
	.byte	0x9
	.4byte	0x113
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF167
	.2byte	0x105
	.byte	0x9
	.4byte	0x107
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF55
	.2byte	0x115
	.byte	0x8
	.4byte	0xe3
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF168
	.2byte	0x11a
	.byte	0x13
	.4byte	0x6f5
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF169
	.2byte	0x11d
	.byte	0x14
	.4byte	0x5a1
	.byte	0x2c
	.byte	0
	.uleb128 0x15
	.byte	0xe0
	.4byte	0x6b4
	.uleb128 0xf
	.string	"ip"
	.byte	0xe1
	.byte	0x14
	.4byte	0x6b9
	.uleb128 0xf
	.string	"tcp"
	.byte	0xe2
	.byte	0x15
	.4byte	0x6c3
	.uleb128 0xf
	.string	"udp"
	.byte	0xe3
	.byte	0x15
	.4byte	0x3a9
	.uleb128 0xf
	.string	"raw"
	.byte	0xe4
	.byte	0x15
	.4byte	0x6cd
	.byte	0
	.uleb128 0xc
	.4byte	.LASF170
	.uleb128 0x4
	.4byte	0x6b4
	.uleb128 0xc
	.4byte	.LASF171
	.uleb128 0x4
	.4byte	0x6be
	.uleb128 0xc
	.4byte	.LASF172
	.uleb128 0x4
	.4byte	0x6c8
	.uleb128 0x15
	.byte	0xf9
	.4byte	0x6f0
	.uleb128 0x23
	.4byte	.LASF173
	.byte	0x12
	.byte	0xfa
	.byte	0x9
	.4byte	0x39
	.uleb128 0xf
	.string	"ptr"
	.byte	0xfb
	.byte	0xb
	.4byte	0xc0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF174
	.uleb128 0x4
	.4byte	0x6f0
	.uleb128 0x16
	.4byte	0xd3
	.4byte	0x70a
	.uleb128 0x24
	.4byte	0x32
	.byte	0x2c
	.byte	0
	.uleb128 0x10
	.4byte	0x6fa
	.uleb128 0x13
	.4byte	.LASF175
	.byte	0x1d
	.byte	0x13
	.4byte	0x70a
	.uleb128 0x5
	.byte	0x3
	.4byte	http_html_hdr
	.uleb128 0x16
	.4byte	0xd3
	.4byte	0x731
	.uleb128 0x25
	.4byte	0x32
	.2byte	0x15f
	.byte	0
	.uleb128 0x10
	.4byte	0x720
	.uleb128 0x13
	.4byte	.LASF176
	.byte	0x1f
	.byte	0x13
	.4byte	0x731
	.uleb128 0x5
	.byte	0x3
	.4byte	http_index_hml
	.uleb128 0x26
	.4byte	.LASF192
	.byte	0x11
	.byte	0x4b
	.byte	0x6
	.4byte	0x759
	.uleb128 0x3
	.4byte	0x759
	.byte	0
	.uleb128 0x4
	.4byte	0x4b5
	.uleb128 0xa
	.4byte	.LASF177
	.2byte	0x157
	.byte	0x7
	.4byte	0x192
	.4byte	0x788
	.uleb128 0x3
	.4byte	0x5c7
	.uleb128 0x3
	.4byte	0xdd
	.uleb128 0x3
	.4byte	0x40
	.uleb128 0x3
	.4byte	0xe3
	.uleb128 0x3
	.4byte	0x788
	.byte	0
	.uleb128 0x4
	.4byte	0x40
	.uleb128 0x17
	.4byte	.LASF178
	.byte	0x13
	.byte	0xce
	.byte	0x5
	.4byte	0x39
	.4byte	0x7a4
	.uleb128 0x3
	.4byte	0xc7
	.uleb128 0x27
	.byte	0
	.uleb128 0x17
	.4byte	.LASF179
	.byte	0x11
	.byte	0x52
	.byte	0x7
	.4byte	0x192
	.4byte	0x7c4
	.uleb128 0x3
	.4byte	0x759
	.uleb128 0x3
	.4byte	0x7c4
	.uleb128 0x3
	.4byte	0x7c9
	.byte	0
	.uleb128 0x4
	.4byte	0xc0
	.uleb128 0x4
	.4byte	0xfb
	.uleb128 0xa
	.4byte	.LASF180
	.2byte	0x14e
	.byte	0x7
	.4byte	0x192
	.4byte	0x7e9
	.uleb128 0x3
	.4byte	0x5c7
	.uleb128 0x3
	.4byte	0x7e9
	.byte	0
	.uleb128 0x4
	.4byte	0x759
	.uleb128 0xa
	.4byte	.LASF181
	.2byte	0x15e
	.byte	0x7
	.4byte	0x192
	.4byte	0x804
	.uleb128 0x3
	.4byte	0x5c7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF182
	.2byte	0x13b
	.byte	0x7
	.4byte	0x192
	.4byte	0x81a
	.uleb128 0x3
	.4byte	0x5c7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF183
	.2byte	0x14d
	.byte	0x7
	.4byte	0x192
	.4byte	0x835
	.uleb128 0x3
	.4byte	0x5c7
	.uleb128 0x3
	.4byte	0x835
	.byte	0
	.uleb128 0x4
	.4byte	0x5c7
	.uleb128 0xa
	.4byte	.LASF184
	.2byte	0x14a
	.byte	0x7
	.4byte	0x192
	.4byte	0x855
	.uleb128 0x3
	.4byte	0x5c7
	.uleb128 0x3
	.4byte	0xe3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF185
	.2byte	0x146
	.byte	0x7
	.4byte	0x192
	.4byte	0x875
	.uleb128 0x3
	.4byte	0x5c7
	.uleb128 0x3
	.4byte	0x4b0
	.uleb128 0x3
	.4byte	0xfb
	.byte	0
	.uleb128 0xa
	.4byte	.LASF186
	.2byte	0x138
	.byte	0x11
	.4byte	0x5c7
	.4byte	0x895
	.uleb128 0x3
	.4byte	0x50e
	.uleb128 0x3
	.4byte	0xe3
	.uleb128 0x3
	.4byte	0x5a1
	.byte	0
	.uleb128 0x28
	.4byte	.LASF193
	.byte	0x1
	.byte	0x50
	.byte	0x6
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa9b
	.uleb128 0x29
	.4byte	.LASF194
	.byte	0x1
	.byte	0x50
	.byte	0x28
	.4byte	0xc0
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x2a
	.4byte	.LASF188
	.byte	0x1
	.byte	0x52
	.byte	0x13
	.4byte	0x5c7
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x13
	.4byte	.LASF187
	.byte	0x52
	.byte	0x1a
	.4byte	0x5c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"err"
	.byte	0x1
	.byte	0x53
	.byte	0x9
	.4byte	0x192
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x2c
	.4byte	0xa9b
	.4byte	.LBI4
	.byte	0x14
	.4byte	.LLRL3
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.4byte	0x9fd
	.uleb128 0x2d
	.4byte	0xaa4
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x14
	.4byte	0xab0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.4byte	0xabb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.4byte	0xac5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x2e
	.4byte	0xad0
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x9
	.4byte	.LVL9
	.4byte	0x7ce
	.4byte	0x956
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x9
	.4byte	.LVL11
	.4byte	0x7a4
	.4byte	0x970
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.byte	0
	.uleb128 0x9
	.4byte	.LVL12
	.4byte	0x78d
	.4byte	0x984
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x83
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.4byte	.LVL13
	.4byte	0x75e
	.4byte	0x9b1
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	http_html_hdr
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x2c
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.4byte	.LVL14
	.4byte	0x75e
	.4byte	0x9df
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	http_index_hml
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x15f
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.4byte	.LVL15
	.4byte	0x7ee
	.4byte	0x9f3
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL16
	.4byte	0x747
	.byte	0
	.uleb128 0x9
	.4byte	.LVL2
	.4byte	0x875
	.4byte	0xa1a
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.4byte	.LVL4
	.4byte	0x855
	.4byte	0xa39
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x82
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x9
	.4byte	.LVL5
	.4byte	0x83a
	.4byte	0xa53
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x82
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x9
	.4byte	.LVL6
	.4byte	0x81a
	.4byte	0xa6d
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x82
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x18
	.4byte	.LVL17
	.4byte	0x804
	.uleb128 0x9
	.4byte	.LVL20
	.4byte	0x7ee
	.4byte	0xa8a
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x82
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL21
	.4byte	0x804
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x82
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF195
	.byte	0x1
	.byte	0x2e
	.byte	0xd
	.byte	0x1
	.uleb128 0x31
	.4byte	.LASF188
	.byte	0x1
	.byte	0x2e
	.byte	0x2d
	.4byte	0x5c7
	.uleb128 0x19
	.4byte	.LASF189
	.byte	0x30
	.byte	0x12
	.4byte	0x759
	.uleb128 0x1a
	.string	"buf"
	.byte	0x31
	.4byte	0xd8
	.uleb128 0x19
	.4byte	.LASF190
	.byte	0x32
	.byte	0x9
	.4byte	0xfb
	.uleb128 0x1a
	.string	"err"
	.byte	0x33
	.4byte	0x192
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
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 18
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 18
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
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 18
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 18
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LFE52-.LVL0
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
.LVUS1:
	.uleb128 0xa
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x37
.LLST1:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL4-1-.LVL3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL4-1-.LVL3
	.uleb128 .LVL22-.LVL3
	.uleb128 0x1
	.byte	0x62
	.byte	0
.LVUS2:
	.uleb128 0x11
	.uleb128 0x1b
	.uleb128 0x32
	.uleb128 0x33
.LLST2:
	.byte	0x6
	.4byte	.LVL6
	.byte	0x4
	.uleb128 .LVL6-.LVL6
	.uleb128 .LVL8-.LVL6
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL18-.LVL6
	.uleb128 .LVL19-.LVL6
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS4:
	.uleb128 0x14
	.uleb128 0x2e
.LLST4:
	.byte	0x8
	.4byte	.LVL7
	.uleb128 .LVL16-.LVL7
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS5:
	.uleb128 0x1c
	.uleb128 0x1f
.LLST5:
	.byte	0x8
	.4byte	.LVL9
	.uleb128 .LVL10-.LVL9
	.uleb128 0x1
	.byte	0x5a
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
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
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
	.byte	0x5
	.4byte	.LBB4
	.byte	0x4
	.uleb128 .LBB4-.LBB4
	.uleb128 .LBE4-.LBB4
	.byte	0x4
	.uleb128 .LBB7-.LBB4
	.uleb128 .LBE7-.LBB4
	.byte	0
.LLRL6:
	.byte	0x7
	.4byte	.LFB52
	.uleb128 .LFE52-.LFB52
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
	.uleb128 0x8
	.4byte	.LASF1
	.4byte	.LASF196
	.4byte	.LASF197
	.4byte	.LASF198
	.4byte	.LASF199
	.4byte	.LASF200
	.4byte	.LASF201
	.4byte	.LASF202
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x14
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF203
	.byte	0x3
	.4byte	.LASF204
	.byte	0x6
	.4byte	.LASF205
	.byte	0x6
	.4byte	.LASF206
	.byte	0x5
	.4byte	.LASF207
	.byte	0x5
	.4byte	.LASF208
	.byte	0x2
	.4byte	.LASF209
	.byte	0x2
	.4byte	.LASF210
	.byte	0x4
	.4byte	.LASF211
	.byte	0x5
	.4byte	.LASF212
	.byte	0x5
	.4byte	.LASF213
	.byte	0x5
	.4byte	.LASF214
	.byte	0x1
	.4byte	.LASF215
	.byte	0x1
	.4byte	.LASF216
	.byte	0x1
	.4byte	.LASF217
	.byte	0x5
	.4byte	.LASF218
	.byte	0x5
	.4byte	.LASF219
	.byte	0x5
	.4byte	.LASF220
	.byte	0x5
	.4byte	.LASF221
	.byte	0x7
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x67
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x18
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
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x1a
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x1a
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x16
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x6
	.byte	0x3
	.sleb128 -30
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x19
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x6
	.byte	0x34
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x3
	.sleb128 -44
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x19
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x19
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x6
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x5
	.uleb128 0x26
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x5
	.uleb128 0x37
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.uleb128 0x48
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x5
	.byte	0x1
	.byte	0x5
	.uleb128 0x59
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x19
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x21
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x1b
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x6
	.byte	0x26
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0x13
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0x6
	.byte	0x1d
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0x18
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM55-.LM54
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE52
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF149:
	.string	"NETCONN_CONNECT"
.LASF97:
	.string	"MEMP_UDP_PCB"
.LASF107:
	.string	"MEMP_SYS_TIMEOUT"
.LASF49:
	.string	"pbuf"
.LASF6:
	.string	"size_t"
.LASF122:
	.string	"MEMP_COAP_CACHE_KEY"
.LASF59:
	.string	"COAP_URI_SCHEME_COAP_TCP"
.LASF165:
	.string	"callback_arg"
.LASF108:
	.string	"MEMP_NETDB"
.LASF84:
	.string	"COAP_PROTO_DTLS"
.LASF121:
	.string	"MEMP_COAP_STRING"
.LASF192:
	.string	"netbuf_delete"
.LASF8:
	.string	"signed char"
.LASF187:
	.string	"newconn"
.LASF76:
	.string	"COAP_SIGNALING_CSM"
.LASF159:
	.string	"type"
.LASF82:
	.string	"COAP_PROTO_NONE"
.LASF178:
	.string	"printf"
.LASF2:
	.string	"long long unsigned int"
.LASF118:
	.string	"MEMP_COAP_RESOURCE"
.LASF45:
	.string	"sys_mbox_t"
.LASF23:
	.string	"s32_t"
.LASF100:
	.string	"MEMP_TCP_SEG"
.LASF172:
	.string	"raw_pcb"
.LASF51:
	.string	"next"
.LASF176:
	.string	"http_index_hml"
.LASF44:
	.string	"sys_sem_t"
.LASF4:
	.string	"long long int"
.LASF72:
	.string	"COAP_REQUEST_FETCH"
.LASF141:
	.string	"NETCONN_UDP"
.LASF32:
	.string	"ERR_USE"
.LASF21:
	.string	"u16_t"
.LASF177:
	.string	"netconn_write_partly"
.LASF56:
	.string	"if_idx"
.LASF25:
	.string	"ERR_MEM"
.LASF160:
	.string	"state"
.LASF83:
	.string	"COAP_PROTO_UDP"
.LASF11:
	.string	"long int"
.LASF188:
	.string	"conn"
.LASF68:
	.string	"COAP_REQUEST_GET"
.LASF140:
	.string	"NETCONN_TCP"
.LASF48:
	.string	"ip4_addr"
.LASF58:
	.string	"COAP_URI_SCHEME_COAPS"
.LASF134:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF36:
	.string	"ERR_IF"
.LASF14:
	.string	"uint16_t"
.LASF87:
	.string	"COAP_PROTO_WS"
.LASF63:
	.string	"COAP_URI_SCHEME_COAP_WS"
.LASF65:
	.string	"COAP_URI_SCHEME_LAST"
.LASF143:
	.string	"NETCONN_UDPNOCHKSUM"
.LASF24:
	.string	"ERR_OK"
.LASF150:
	.string	"NETCONN_CLOSE"
.LASF54:
	.string	"type_internal"
.LASF136:
	.string	"port"
.LASF162:
	.string	"op_completed"
.LASF145:
	.string	"netconn_state"
.LASF57:
	.string	"COAP_URI_SCHEME_COAP"
.LASF27:
	.string	"ERR_TIMEOUT"
.LASF19:
	.string	"u8_t"
.LASF106:
	.string	"MEMP_IGMP_GROUP"
.LASF184:
	.string	"netconn_listen_with_backlog"
.LASF144:
	.string	"NETCONN_RAW"
.LASF42:
	.string	"QueueHandle_t"
.LASF90:
	.string	"COAP_LAYER_SESSION"
.LASF17:
	.string	"long unsigned int"
.LASF33:
	.string	"ERR_ALREADY"
.LASF81:
	.string	"coap_proto_t"
.LASF75:
	.string	"coap_pdu_signaling_proto_t"
.LASF194:
	.string	"pvParameters"
.LASF92:
	.string	"COAP_LAYER_TLS"
.LASF61:
	.string	"COAP_URI_SCHEME_HTTP"
.LASF98:
	.string	"MEMP_TCP_PCB"
.LASF62:
	.string	"COAP_URI_SCHEME_HTTPS"
.LASF138:
	.string	"netconn_type"
.LASF85:
	.string	"COAP_PROTO_TCP"
.LASF15:
	.string	"short unsigned int"
.LASF166:
	.string	"send_timeout"
.LASF112:
	.string	"MEMP_COAP_ENDPOINT"
.LASF169:
	.string	"callback"
.LASF147:
	.string	"NETCONN_WRITE"
.LASF86:
	.string	"COAP_PROTO_TLS"
.LASF126:
	.string	"MEMP_COAP_LG_CRCV"
.LASF119:
	.string	"MEMP_COAP_RESOURCEATTR"
.LASF71:
	.string	"COAP_REQUEST_DELETE"
.LASF181:
	.string	"netconn_close"
.LASF129:
	.string	"MEMP_MAX"
.LASF47:
	.string	"ip_addr_t"
.LASF7:
	.string	"int8_t"
.LASF41:
	.string	"err_t"
.LASF114:
	.string	"MEMP_COAP_NODE"
.LASF5:
	.string	"long double"
.LASF60:
	.string	"COAP_URI_SCHEME_COAPS_TCP"
.LASF89:
	.string	"COAP_PROTO_LAST"
.LASF163:
	.string	"recvmbox"
.LASF52:
	.string	"payload"
.LASF180:
	.string	"netconn_recv"
.LASF175:
	.string	"http_html_hdr"
.LASF79:
	.string	"COAP_SIGNALING_RELEASE"
.LASF189:
	.string	"inputbuf"
.LASF113:
	.string	"MEMP_COAP_PACKET"
.LASF66:
	.string	"coap_uri_scheme_t"
.LASF148:
	.string	"NETCONN_LISTEN"
.LASF29:
	.string	"ERR_INPROGRESS"
.LASF161:
	.string	"pending_err"
.LASF132:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF30:
	.string	"ERR_VAL"
.LASF94:
	.string	"QueueDefinition"
.LASF80:
	.string	"COAP_SIGNALING_ABORT"
.LASF10:
	.string	"int32_t"
.LASF13:
	.string	"unsigned char"
.LASF40:
	.string	"ERR_ARG"
.LASF35:
	.string	"ERR_CONN"
.LASF133:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF9:
	.string	"short int"
.LASF117:
	.string	"MEMP_COAP_SUBSCRIPTION"
.LASF156:
	.string	"NETCONN_EVT_ERROR"
.LASF135:
	.string	"netbuf"
.LASF70:
	.string	"COAP_REQUEST_PUT"
.LASF153:
	.string	"NETCONN_EVT_RCVMINUS"
.LASF22:
	.string	"u32_t"
.LASF67:
	.string	"coap_request_t"
.LASF190:
	.string	"buflen"
.LASF50:
	.string	"addr"
.LASF78:
	.string	"COAP_SIGNALING_PONG"
.LASF170:
	.string	"ip_pcb"
.LASF157:
	.string	"netconn_callback"
.LASF69:
	.string	"COAP_REQUEST_POST"
.LASF20:
	.string	"s8_t"
.LASF186:
	.string	"netconn_new_with_proto_and_callback"
.LASF95:
	.string	"udp_pcb"
.LASF38:
	.string	"ERR_RST"
.LASF16:
	.string	"uint32_t"
.LASF127:
	.string	"MEMP_COAP_LG_SRCV"
.LASF37:
	.string	"ERR_ABRT"
.LASF116:
	.string	"MEMP_COAP_SESSION"
.LASF73:
	.string	"COAP_REQUEST_PATCH"
.LASF128:
	.string	"MEMP_COAP_DIGEST_CTX"
.LASF124:
	.string	"MEMP_COAP_PDU_BUF"
.LASF104:
	.string	"MEMP_TCPIP_MSG_API"
.LASF18:
	.string	"char"
.LASF43:
	.string	"SemaphoreHandle_t"
.LASF91:
	.string	"COAP_LAYER_WS"
.LASF193:
	.string	"web_server2"
.LASF168:
	.string	"current_msg"
.LASF131:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF154:
	.string	"NETCONN_EVT_SENDPLUS"
.LASF3:
	.string	"unsigned int"
.LASF102:
	.string	"MEMP_NETBUF"
.LASF137:
	.string	"toport_chksum"
.LASF99:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF103:
	.string	"MEMP_NETCONN"
.LASF101:
	.string	"MEMP_ALTCP_PCB"
.LASF96:
	.string	"MEMP_RAW_PCB"
.LASF191:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF110:
	.string	"MEMP_PBUF_POOL"
.LASF77:
	.string	"COAP_SIGNALING_PING"
.LASF183:
	.string	"netconn_accept"
.LASF195:
	.string	"web_http_server"
.LASF88:
	.string	"COAP_PROTO_WSS"
.LASF64:
	.string	"COAP_URI_SCHEME_COAPS_WS"
.LASF39:
	.string	"ERR_CLSD"
.LASF28:
	.string	"ERR_RTE"
.LASF46:
	.string	"ip4_addr_t"
.LASF53:
	.string	"tot_len"
.LASF146:
	.string	"NETCONN_NONE"
.LASF26:
	.string	"ERR_BUF"
.LASF74:
	.string	"COAP_REQUEST_IPATCH"
.LASF179:
	.string	"netbuf_data"
.LASF120:
	.string	"MEMP_COAP_OPTLIST"
.LASF130:
	.string	"lwip_internal_netif_client_data_index"
.LASF34:
	.string	"ERR_ISCONN"
.LASF125:
	.string	"MEMP_COAP_LG_XMIT"
.LASF93:
	.string	"COAP_LAYER_LAST"
.LASF12:
	.string	"uint8_t"
.LASF158:
	.string	"netconn"
.LASF55:
	.string	"flags"
.LASF123:
	.string	"MEMP_COAP_CACHE_ENTRY"
.LASF151:
	.string	"netconn_evt"
.LASF139:
	.string	"NETCONN_INVALID"
.LASF182:
	.string	"netconn_delete"
.LASF152:
	.string	"NETCONN_EVT_RCVPLUS"
.LASF31:
	.string	"ERR_WOULDBLOCK"
.LASF173:
	.string	"socket"
.LASF174:
	.string	"api_msg"
.LASF115:
	.string	"MEMP_COAP_PDU"
.LASF164:
	.string	"acceptmbox"
.LASF155:
	.string	"NETCONN_EVT_SENDMINUS"
.LASF167:
	.string	"recv_timeout"
.LASF109:
	.string	"MEMP_PBUF"
.LASF142:
	.string	"NETCONN_UDPLITE"
.LASF171:
	.string	"tcp_pcb"
.LASF105:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF185:
	.string	"netconn_bind"
.LASF111:
	.string	"MEMP_COAP_CONTEXT"
	.section	.debug_line_str,"MS",@progbits,1
.LASF220:
	.string	"api.h"
.LASF218:
	.string	"netif.h"
.LASF202:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include"
.LASF199:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/arch"
.LASF209:
	.string	"semphr.h"
.LASF198:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/dns_server/src"
.LASF205:
	.string	"stdint-gcc.h"
.LASF211:
	.string	"ip4_addr.h"
.LASF200:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip"
.LASF208:
	.string	"queue.h"
.LASF221:
	.string	"stdio.h"
.LASF217:
	.string	"memp.h"
.LASF212:
	.string	"ip_addr.h"
.LASF214:
	.string	"coap_uri.h"
.LASF204:
	.string	"stddef.h"
.LASF206:
	.string	"arch.h"
.LASF201:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF207:
	.string	"err.h"
.LASF213:
	.string	"pbuf.h"
.LASF203:
	.string	"web_server.c"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/dns_server/src/web_server.c"
.LASF216:
	.string	"coap_layers_internal.h"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/dns_server"
.LASF215:
	.string	"coap_pdu.h"
.LASF196:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/3rdparty/libcoap/include/coap3"
.LASF210:
	.string	"sys_arch.h"
.LASF219:
	.string	"netbuf.h"
.LASF197:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/include"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
