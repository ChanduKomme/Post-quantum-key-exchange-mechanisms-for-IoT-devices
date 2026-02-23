	.file	"ip.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.globl	ip_data
	.section	.bss.ip_data,"aw",@nobits
	.align	2
	.type	ip_data, @object
	.size	ip_data, 24
ip_data:
	.zero	24
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x719
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x11
	.4byte	.LASF151
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.Ldebug_line0
	.uleb128 0x12
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
	.uleb128 0x13
	.byte	0x4
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xc
	.4byte	0x72
	.uleb128 0x6
	.4byte	0x79
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x2a
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x31
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x3f
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x4d
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x7d
	.byte	0x11
	.4byte	0x8f
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x7e
	.byte	0x10
	.4byte	0x83
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x7f
	.byte	0x12
	.4byte	0x9b
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x81
	.byte	0x12
	.4byte	0xa7
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.byte	0x4
	.byte	0x33
	.4byte	0xfd
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x4
	.byte	0x34
	.byte	0x9
	.4byte	0xd7
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x39
	.byte	0x19
	.4byte	0xe3
	.uleb128 0xc
	.4byte	0xfd
	.uleb128 0x14
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x126
	.byte	0x14
	.4byte	0xfd
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x6
	.byte	0x60
	.byte	0xe
	.4byte	0xbf
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x10
	.byte	0x7
	.byte	0xba
	.4byte	0x19c
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x7
	.byte	0xbc
	.byte	0x10
	.4byte	0x19c
	.byte	0
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x7
	.byte	0xbf
	.byte	0x9
	.4byte	0x70
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x7
	.byte	0xc8
	.byte	0x9
	.4byte	0xcb
	.byte	0x8
	.uleb128 0xa
	.string	"len"
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0xcb
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x7
	.byte	0xd0
	.byte	0x8
	.4byte	0xb3
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x7
	.byte	0xd3
	.byte	0x8
	.4byte	0xb3
	.byte	0xd
	.uleb128 0xa
	.string	"ref"
	.byte	0x7
	.byte	0xda
	.byte	0x8
	.4byte	0xb3
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x7
	.byte	0xdd
	.byte	0x8
	.4byte	0xb3
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0x127
	.uleb128 0x9
	.4byte	.LASF42
	.4byte	0x31
	.byte	0x8
	.byte	0x20
	.byte	0xe
	.4byte	0x1e8
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF43
	.4byte	0x31
	.byte	0x9
	.byte	0x52
	.byte	0xe
	.4byte	0x223
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF51
	.4byte	0x31
	.byte	0x9
	.byte	0xc1
	.byte	0xe
	.4byte	0x252
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0xe1
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0xe2
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0xe3
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xe4
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0xe5
	.byte	0
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x7
	.byte	0x1
	.4byte	0x31
	.byte	0x9
	.2byte	0x13d
	.byte	0xe
	.4byte	0x296
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.4byte	0x70
	.4byte	0x2a6
	.uleb128 0xe
	.4byte	0x62
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.4byte	0x31
	.byte	0xa
	.byte	0x1a
	.4byte	0x2ca
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.4byte	0x31
	.byte	0xb
	.byte	0x34
	.4byte	0x3a2
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x21
	.byte	0
	.uleb128 0x9
	.4byte	.LASF104
	.4byte	0x31
	.byte	0xc
	.byte	0x71
	.byte	0x6
	.4byte	0x3cb
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF109
	.4byte	0x31
	.byte	0xc
	.byte	0x9f
	.byte	0x6
	.4byte	0x3e8
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0x3ed
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x54
	.byte	0xc
	.2byte	0x10d
	.byte	0x8
	.4byte	0x4ff
	.uleb128 0x3
	.4byte	.LASF27
	.2byte	0x110
	.byte	0x11
	.4byte	0x3e8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF113
	.2byte	0x115
	.byte	0xd
	.4byte	0x10e
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF114
	.2byte	0x116
	.byte	0xd
	.4byte	0x10e
	.byte	0x8
	.uleb128 0xf
	.string	"gw"
	.2byte	0x117
	.byte	0xd
	.4byte	0x10e
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF115
	.2byte	0x129
	.byte	0x12
	.4byte	0x4ff
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF116
	.2byte	0x12f
	.byte	0x13
	.4byte	0x524
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF117
	.2byte	0x134
	.byte	0x17
	.4byte	0x553
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF118
	.2byte	0x13f
	.byte	0x1c
	.4byte	0x578
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF119
	.2byte	0x144
	.byte	0x1c
	.4byte	0x578
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF120
	.2byte	0x14c
	.byte	0x9
	.4byte	0x70
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x14e
	.byte	0x9
	.4byte	0x296
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF122
	.2byte	0x152
	.byte	0xf
	.4byte	0x7e
	.byte	0x38
	.uleb128 0xf
	.string	"mtu"
	.2byte	0x158
	.byte	0x9
	.4byte	0xcb
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF123
	.2byte	0x15e
	.byte	0x8
	.4byte	0x5be
	.byte	0x3e
	.uleb128 0x3
	.4byte	.LASF124
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
	.4byte	.LASF125
	.2byte	0x164
	.byte	0x8
	.4byte	0x5ce
	.byte	0x46
	.uleb128 0xf
	.string	"num"
	.2byte	0x167
	.byte	0x8
	.4byte	0xb3
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF126
	.2byte	0x17d
	.byte	0x1c
	.4byte	0x594
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF127
	.2byte	0x185
	.byte	0xf
	.4byte	0x5e3
	.byte	0x50
	.byte	0
	.uleb128 0x4
	.4byte	.LASF128
	.byte	0xc
	.byte	0xb5
	.byte	0x11
	.4byte	0x50b
	.uleb128 0x6
	.4byte	0x510
	.uleb128 0xb
	.4byte	0x11b
	.4byte	0x524
	.uleb128 0x7
	.4byte	0x19c
	.uleb128 0x7
	.4byte	0x3e8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF129
	.byte	0xc
	.byte	0xc0
	.byte	0x11
	.4byte	0x530
	.uleb128 0x6
	.4byte	0x535
	.uleb128 0xb
	.4byte	0x11b
	.4byte	0x54e
	.uleb128 0x7
	.4byte	0x3e8
	.uleb128 0x7
	.4byte	0x19c
	.uleb128 0x7
	.4byte	0x54e
	.byte	0
	.uleb128 0x6
	.4byte	0x109
	.uleb128 0x4
	.4byte	.LASF130
	.byte	0xc
	.byte	0xd7
	.byte	0x11
	.4byte	0x55f
	.uleb128 0x6
	.4byte	0x564
	.uleb128 0xb
	.4byte	0x11b
	.4byte	0x578
	.uleb128 0x7
	.4byte	0x3e8
	.uleb128 0x7
	.4byte	0x19c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF131
	.byte	0xc
	.byte	0xd9
	.byte	0x10
	.4byte	0x584
	.uleb128 0x6
	.4byte	0x589
	.uleb128 0x17
	.4byte	0x594
	.uleb128 0x7
	.4byte	0x3e8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF132
	.byte	0xc
	.byte	0xdc
	.byte	0x11
	.4byte	0x5a0
	.uleb128 0x6
	.4byte	0x5a5
	.uleb128 0xb
	.4byte	0x11b
	.4byte	0x5be
	.uleb128 0x7
	.4byte	0x3e8
	.uleb128 0x7
	.4byte	0x54e
	.uleb128 0x7
	.4byte	0x3cb
	.byte	0
	.uleb128 0xd
	.4byte	0xb3
	.4byte	0x5ce
	.uleb128 0xe
	.4byte	0x62
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.4byte	0x72
	.4byte	0x5de
	.uleb128 0xe
	.4byte	0x62
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.string	"acd"
	.uleb128 0x6
	.4byte	0x5de
	.uleb128 0x8
	.4byte	.LASF133
	.byte	0x4
	.byte	0xd
	.byte	0x35
	.4byte	0x602
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0xd
	.byte	0x36
	.byte	0x9
	.4byte	0xd7
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF134
	.byte	0xd
	.byte	0x3d
	.byte	0x20
	.4byte	0x5e8
	.uleb128 0x8
	.4byte	.LASF135
	.byte	0x14
	.byte	0xd
	.byte	0x49
	.4byte	0x69d
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0xd
	.byte	0x4b
	.byte	0x8
	.4byte	0xb3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0xd
	.byte	0x4d
	.byte	0x8
	.4byte	0xb3
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0xd
	.byte	0x4f
	.byte	0x9
	.4byte	0xcb
	.byte	0x2
	.uleb128 0xa
	.string	"_id"
	.byte	0xd
	.byte	0x51
	.byte	0x9
	.4byte	0xcb
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF139
	.byte	0xd
	.byte	0x53
	.byte	0x9
	.4byte	0xcb
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF140
	.byte	0xd
	.byte	0x59
	.byte	0x8
	.4byte	0xb3
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF141
	.byte	0xd
	.byte	0x5b
	.byte	0x8
	.4byte	0xb3
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF142
	.byte	0xd
	.byte	0x5d
	.byte	0x9
	.4byte	0xcb
	.byte	0xa
	.uleb128 0xa
	.string	"src"
	.byte	0xd
	.byte	0x5f
	.byte	0x10
	.4byte	0x602
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0xd
	.byte	0x60
	.byte	0x10
	.4byte	0x602
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	0x60e
	.uleb128 0x8
	.4byte	.LASF144
	.byte	0x18
	.byte	0xe
	.byte	0x76
	.4byte	0x6fd
	.uleb128 0x2
	.4byte	.LASF145
	.byte	0xe
	.byte	0x79
	.byte	0x11
	.4byte	0x3e8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF146
	.byte	0xe
	.byte	0x7b
	.byte	0x11
	.4byte	0x3e8
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF147
	.byte	0xe
	.byte	0x7e
	.byte	0x18
	.4byte	0x6fd
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF148
	.byte	0xe
	.byte	0x85
	.byte	0x9
	.4byte	0xcb
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF149
	.byte	0xe
	.byte	0x87
	.byte	0xd
	.4byte	0x10e
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF150
	.byte	0xe
	.byte	0x89
	.byte	0xd
	.4byte	0x10e
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.4byte	0x69d
	.uleb128 0x19
	.4byte	.LASF152
	.byte	0xe
	.byte	0x8b
	.byte	0x1a
	.4byte	0x6a2
	.uleb128 0x1a
	.4byte	0x702
	.byte	0x1
	.byte	0x40
	.byte	0x13
	.uleb128 0x5
	.byte	0x3
	.4byte	ip_data
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
	.uleb128 0x3
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x6
	.4byte	.LASF1
	.4byte	.LASF153
	.4byte	.LASF154
	.4byte	.LASF155
	.4byte	.LASF156
	.4byte	.LASF157
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0xf
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF158
	.byte	0x2
	.4byte	.LASF159
	.byte	0x5
	.4byte	.LASF160
	.byte	0x4
	.4byte	.LASF161
	.byte	0x4
	.4byte	.LASF162
	.byte	0x4
	.4byte	.LASF163
	.byte	0x4
	.4byte	.LASF164
	.byte	0x4
	.4byte	.LASF165
	.byte	0x1
	.4byte	.LASF166
	.byte	0x1
	.4byte	.LASF167
	.byte	0x1
	.4byte	.LASF168
	.byte	0x4
	.4byte	.LASF169
	.byte	0x4
	.4byte	.LASF170
	.byte	0x3
	.4byte	.LASF171
	.byte	0x4
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.Letext0
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF141:
	.string	"_proto"
.LASF131:
	.string	"netif_status_callback_fn"
.LASF132:
	.string	"netif_igmp_mac_filter_fn"
.LASF81:
	.string	"MEMP_SYS_TIMEOUT"
.LASF20:
	.string	"u32_t"
.LASF25:
	.string	"pbuf"
.LASF96:
	.string	"MEMP_COAP_CACHE_KEY"
.LASF35:
	.string	"COAP_URI_SCHEME_COAP_TCP"
.LASF82:
	.string	"MEMP_NETDB"
.LASF150:
	.string	"current_iphdr_dest"
.LASF95:
	.string	"MEMP_COAP_STRING"
.LASF2:
	.string	"signed char"
.LASF52:
	.string	"COAP_SIGNALING_CSM"
.LASF58:
	.string	"COAP_PROTO_NONE"
.LASF9:
	.string	"long long unsigned int"
.LASF92:
	.string	"MEMP_COAP_RESOURCE"
.LASF26:
	.string	"addr"
.LASF145:
	.string	"current_netif"
.LASF74:
	.string	"MEMP_TCP_SEG"
.LASF27:
	.string	"next"
.LASF110:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF8:
	.string	"long long int"
.LASF48:
	.string	"COAP_REQUEST_FETCH"
.LASF7:
	.string	"long unsigned int"
.LASF123:
	.string	"hwaddr"
.LASF29:
	.string	"tot_len"
.LASF60:
	.string	"COAP_PROTO_DTLS"
.LASF120:
	.string	"state"
.LASF59:
	.string	"COAP_PROTO_UDP"
.LASF6:
	.string	"long int"
.LASF44:
	.string	"COAP_REQUEST_GET"
.LASF24:
	.string	"ip4_addr"
.LASF146:
	.string	"current_input_netif"
.LASF34:
	.string	"COAP_URI_SCHEME_COAPS"
.LASF108:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF15:
	.string	"uint16_t"
.LASF124:
	.string	"hwaddr_len"
.LASF63:
	.string	"COAP_PROTO_WS"
.LASF39:
	.string	"COAP_URI_SCHEME_COAP_WS"
.LASF41:
	.string	"COAP_URI_SCHEME_LAST"
.LASF139:
	.string	"_offset"
.LASF71:
	.string	"MEMP_UDP_PCB"
.LASF114:
	.string	"netmask"
.LASF68:
	.string	"COAP_LAYER_TLS"
.LASF30:
	.string	"type_internal"
.LASF33:
	.string	"COAP_URI_SCHEME_COAP"
.LASF10:
	.string	"unsigned int"
.LASF17:
	.string	"u8_t"
.LASF80:
	.string	"MEMP_IGMP_GROUP"
.LASF66:
	.string	"COAP_LAYER_SESSION"
.LASF116:
	.string	"output"
.LASF57:
	.string	"coap_proto_t"
.LASF51:
	.string	"coap_pdu_signaling_proto_t"
.LASF125:
	.string	"name"
.LASF37:
	.string	"COAP_URI_SCHEME_HTTP"
.LASF142:
	.string	"_chksum"
.LASF72:
	.string	"MEMP_TCP_PCB"
.LASF100:
	.string	"MEMP_COAP_LG_CRCV"
.LASF38:
	.string	"COAP_URI_SCHEME_HTTPS"
.LASF61:
	.string	"COAP_PROTO_TCP"
.LASF5:
	.string	"short unsigned int"
.LASF134:
	.string	"ip4_addr_p_t"
.LASF147:
	.string	"current_ip4_header"
.LASF149:
	.string	"current_iphdr_src"
.LASF119:
	.string	"link_callback"
.LASF86:
	.string	"MEMP_COAP_ENDPOINT"
.LASF62:
	.string	"COAP_PROTO_TLS"
.LASF133:
	.string	"ip4_addr_packed"
.LASF109:
	.string	"netif_mac_filter_action"
.LASF93:
	.string	"MEMP_COAP_RESOURCEATTR"
.LASF47:
	.string	"COAP_REQUEST_DELETE"
.LASF103:
	.string	"MEMP_MAX"
.LASF22:
	.string	"ip_addr_t"
.LASF13:
	.string	"int8_t"
.LASF23:
	.string	"err_t"
.LASF130:
	.string	"netif_linkoutput_fn"
.LASF88:
	.string	"MEMP_COAP_NODE"
.LASF11:
	.string	"long double"
.LASF36:
	.string	"COAP_URI_SCHEME_COAPS_TCP"
.LASF65:
	.string	"COAP_PROTO_LAST"
.LASF140:
	.string	"_ttl"
.LASF126:
	.string	"igmp_mac_filter"
.LASF28:
	.string	"payload"
.LASF113:
	.string	"ip_addr"
.LASF55:
	.string	"COAP_SIGNALING_RELEASE"
.LASF87:
	.string	"MEMP_COAP_PACKET"
.LASF143:
	.string	"dest"
.LASF42:
	.string	"coap_uri_scheme_t"
.LASF128:
	.string	"netif_input_fn"
.LASF106:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF56:
	.string	"COAP_SIGNALING_ABORT"
.LASF3:
	.string	"unsigned char"
.LASF135:
	.string	"ip_hdr"
.LASF107:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF4:
	.string	"short int"
.LASF91:
	.string	"MEMP_COAP_SUBSCRIPTION"
.LASF129:
	.string	"netif_output_fn"
.LASF46:
	.string	"COAP_REQUEST_PUT"
.LASF122:
	.string	"hostname"
.LASF118:
	.string	"status_callback"
.LASF43:
	.string	"coap_request_t"
.LASF54:
	.string	"COAP_SIGNALING_PONG"
.LASF115:
	.string	"input"
.LASF105:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF45:
	.string	"COAP_REQUEST_POST"
.LASF148:
	.string	"current_ip_header_tot_len"
.LASF18:
	.string	"s8_t"
.LASF111:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF16:
	.string	"uint32_t"
.LASF101:
	.string	"MEMP_COAP_LG_SRCV"
.LASF90:
	.string	"MEMP_COAP_SESSION"
.LASF102:
	.string	"MEMP_COAP_DIGEST_CTX"
.LASF98:
	.string	"MEMP_COAP_PDU_BUF"
.LASF78:
	.string	"MEMP_TCPIP_MSG_API"
.LASF12:
	.string	"char"
.LASF67:
	.string	"COAP_LAYER_WS"
.LASF76:
	.string	"MEMP_NETBUF"
.LASF73:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF77:
	.string	"MEMP_NETCONN"
.LASF75:
	.string	"MEMP_ALTCP_PCB"
.LASF70:
	.string	"MEMP_RAW_PCB"
.LASF151:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF84:
	.string	"MEMP_PBUF_POOL"
.LASF53:
	.string	"COAP_SIGNALING_PING"
.LASF64:
	.string	"COAP_PROTO_WSS"
.LASF152:
	.string	"ip_data"
.LASF40:
	.string	"COAP_URI_SCHEME_COAPS_WS"
.LASF49:
	.string	"COAP_REQUEST_PATCH"
.LASF112:
	.string	"netif"
.LASF21:
	.string	"ip4_addr_t"
.LASF19:
	.string	"u16_t"
.LASF50:
	.string	"COAP_REQUEST_IPATCH"
.LASF94:
	.string	"MEMP_COAP_OPTLIST"
.LASF104:
	.string	"lwip_internal_netif_client_data_index"
.LASF137:
	.string	"_tos"
.LASF99:
	.string	"MEMP_COAP_LG_XMIT"
.LASF127:
	.string	"acd_list"
.LASF69:
	.string	"COAP_LAYER_LAST"
.LASF136:
	.string	"_v_hl"
.LASF14:
	.string	"uint8_t"
.LASF31:
	.string	"flags"
.LASF97:
	.string	"MEMP_COAP_CACHE_ENTRY"
.LASF144:
	.string	"ip_globals"
.LASF32:
	.string	"if_idx"
.LASF121:
	.string	"client_data"
.LASF117:
	.string	"linkoutput"
.LASF89:
	.string	"MEMP_COAP_PDU"
.LASF83:
	.string	"MEMP_PBUF"
.LASF79:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF138:
	.string	"_len"
.LASF85:
	.string	"MEMP_COAP_CONTEXT"
	.section	.debug_line_str,"MS",@progbits,1
.LASF164:
	.string	"pbuf.h"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/ip.c"
.LASF161:
	.string	"ip4_addr.h"
.LASF168:
	.string	"memp.h"
.LASF167:
	.string	"coap_layers_internal.h"
.LASF160:
	.string	"arch.h"
.LASF156:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip"
.LASF169:
	.string	"netif.h"
.LASF159:
	.string	"stdint-gcc.h"
.LASF166:
	.string	"coap_pdu.h"
.LASF155:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot"
.LASF153:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/3rdparty/libcoap/include/coap3"
.LASF170:
	.string	"ip4.h"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/lwip"
.LASF162:
	.string	"ip_addr.h"
.LASF157:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF165:
	.string	"coap_uri.h"
.LASF158:
	.string	"ip.c"
.LASF154:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core"
.LASF163:
	.string	"err.h"
.LASF171:
	.string	"ip.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
