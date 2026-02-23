	.file	"psa_crypto_driver_wrappers_no_static.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.psa_driver_wrapper_get_key_buffer_size,"ax",@progbits
	.align	1
	.globl	psa_driver_wrapper_get_key_buffer_size
	.type	psa_driver_wrapper_get_key_buffer_size, @function
psa_driver_wrapper_get_key_buffer_size:
.LVL0:
.LFB70:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
.LM4:
.LM5:
.LM6:
	sw	zero,0(a1)
.LVL1:
.LM7:
.LM8:
.LM9:
.LM10:
.LM11:
	li	a0,-135
.LVL2:
.LM12:
	ret
	.cfi_endproc
.LFE70:
	.size	psa_driver_wrapper_get_key_buffer_size, .-psa_driver_wrapper_get_key_buffer_size
	.section	.text.psa_driver_wrapper_export_public_key,"ax",@progbits
	.align	1
	.globl	psa_driver_wrapper_export_public_key
	.type	psa_driver_wrapper_export_public_key, @function
psa_driver_wrapper_export_public_key:
.LVL3:
.LFB71:
.LM13:
	.cfi_startproc
.LM14:
.LM15:
.LBB12:
.LBI12:
.LM16:
.LBB13:
.LM17:
.LM18:
.LBE13:
.LBE12:
.LM19:
.LM20:
	lw	a6,4(a0)
	srli	a6,a6,8
.LVL4:
.LM21:
	bne	a6,zero,.L3
.LM22:
.LM23:
	tail	psa_export_public_key_internal
.LVL5:
.L3:
.LM24:
	li	a0,-135
.LVL6:
.LM25:
	ret
	.cfi_endproc
.LFE71:
	.size	psa_driver_wrapper_export_public_key, .-psa_driver_wrapper_export_public_key
	.section	.text.psa_driver_wrapper_get_builtin_key,"ax",@progbits
	.align	1
	.globl	psa_driver_wrapper_get_builtin_key
	.type	psa_driver_wrapper_get_builtin_key, @function
psa_driver_wrapper_get_builtin_key:
.LVL7:
.LFB72:
.LM26:
	.cfi_startproc
.LM27:
.LM28:
.LM29:
.LM30:
.LM31:
.LM32:
.LM33:
.LM34:
	li	a0,-140
.LVL8:
.LM35:
	ret
	.cfi_endproc
.LFE72:
	.size	psa_driver_wrapper_get_builtin_key, .-psa_driver_wrapper_get_builtin_key
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x492
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL14
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
	.uleb128 0x12
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x32
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x55
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x40
	.uleb128 0xd
	.4byte	0x90
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0x4e
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x5c
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x37
	.byte	0x20
	.4byte	0x2b
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x5
	.byte	0x3b
	.byte	0x11
	.4byte	0x84
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x5
	.byte	0x4e
	.byte	0x12
	.4byte	0xa1
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x5
	.byte	0x86
	.byte	0x12
	.4byte	0xad
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x5
	.byte	0xb7
	.byte	0x12
	.4byte	0xad
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x104
	.byte	0x12
	.4byte	0xad
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x113
	.byte	0x12
	.4byte	0xad
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x124
	.byte	0x16
	.4byte	0x109
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x143
	.byte	0x12
	.4byte	0xad
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x1b0
	.byte	0x25
	.4byte	0x142
	.uleb128 0xd
	.4byte	0x130
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x18
	.2byte	0x127
	.4byte	0x18f
	.uleb128 0x5
	.4byte	.LASF28
	.2byte	0x12c
	.byte	0x14
	.4byte	0xd8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF29
	.2byte	0x12d
	.byte	0x14
	.4byte	0x1da
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF30
	.2byte	0x12e
	.byte	0x18
	.4byte	0xf0
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF31
	.2byte	0x12f
	.byte	0x16
	.4byte	0x1cd
	.byte	0x8
	.uleb128 0xf
	.string	"id"
	.2byte	0x13b
	.byte	0x1a
	.4byte	0x116
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.4byte	0x71
	.uleb128 0x8
	.4byte	0x90
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0xc
	.2byte	0x10c
	.4byte	0x1cd
	.uleb128 0x5
	.4byte	.LASF34
	.2byte	0x10d
	.byte	0x15
	.4byte	0x123
	.byte	0
	.uleb128 0xf
	.string	"alg"
	.2byte	0x10e
	.byte	0x15
	.4byte	0xe4
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF35
	.2byte	0x10f
	.byte	0x15
	.4byte	0xe4
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x2
	.2byte	0x111
	.byte	0x21
	.4byte	0x199
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x2
	.2byte	0x11c
	.byte	0x12
	.4byte	0xa1
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x204
	.byte	0x12
	.4byte	0xb9
	.uleb128 0x8
	.4byte	0x9c
	.uleb128 0x8
	.4byte	0x13d
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0x7
	.2byte	0x16d
	.byte	0xe
	.4byte	0xcc
	.4byte	0x22e
	.uleb128 0x6
	.4byte	0x1f9
	.uleb128 0x6
	.4byte	0x1f4
	.uleb128 0x6
	.4byte	0x71
	.uleb128 0x6
	.4byte	0x194
	.uleb128 0x6
	.4byte	0x71
	.uleb128 0x6
	.4byte	0x18f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0xde
	.4byte	0xcc
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a1
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0xdf
	.byte	0x1b
	.4byte	0x1e7
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0xe0
	.byte	0x1b
	.4byte	0x2a1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0xe1
	.byte	0xe
	.4byte	0x194
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0xe1
	.byte	0x21
	.4byte	0x71
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0xe1
	.byte	0x3a
	.4byte	0x18f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0xe4
	.byte	0x18
	.4byte	0xfc
	.4byte	.LLST13
	.4byte	.LVUS13
	.byte	0
	.uleb128 0x8
	.4byte	0x130
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x7a
	.4byte	0xcc
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d1
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x7b
	.byte	0x21
	.4byte	0x1f9
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x7c
	.byte	0x14
	.4byte	0x1f4
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x7c
	.byte	0x27
	.4byte	0x71
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x7d
	.byte	0xe
	.4byte	0x194
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x7d
	.byte	0x1b
	.4byte	0x71
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x7d
	.byte	0x2e
	.4byte	0x18f
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x1
	.byte	0x81
	.byte	0x12
	.4byte	0xcc
	.sleb128 -135
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x82
	.byte	0x18
	.4byte	0xfc
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x15
	.4byte	0x47b
	.4byte	.LBI12
	.byte	0x3
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x82
	.byte	0x3b
	.4byte	0x378
	.uleb128 0x16
	.4byte	0x489
	.4byte	.LLST11
	.4byte	.LVUS11
	.byte	0
	.uleb128 0x17
	.4byte	.LVL5
	.4byte	0x1fe
	.uleb128 0x7
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
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xc
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xd
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xe
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xf
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x56
	.4byte	0xcc
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x443
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x57
	.byte	0x21
	.4byte	0x1f9
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x58
	.byte	0xd
	.4byte	0x18f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x5a
	.byte	0x18
	.4byte	0xfc
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x5b
	.byte	0x14
	.4byte	0xd8
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x5c
	.byte	0xc
	.4byte	0x71
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF53
	.2byte	0x1b9
	.byte	0x16
	.4byte	0x71
	.4byte	0x45f
	.uleb128 0xc
	.4byte	.LASF39
	.2byte	0x1ba
	.4byte	0x1f9
	.byte	0
	.uleb128 0x10
	.4byte	.LASF54
	.2byte	0x1a9
	.byte	0x1e
	.4byte	0xd8
	.4byte	0x47b
	.uleb128 0xc
	.4byte	.LASF39
	.2byte	0x1aa
	.4byte	0x1f9
	.byte	0
	.uleb128 0x18
	.4byte	.LASF58
	.byte	0x2
	.2byte	0x179
	.byte	0x22
	.4byte	0xf0
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF39
	.2byte	0x17a
	.4byte	0x1f9
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 33
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
.LVUS12:
	.uleb128 0
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0
.LLST12:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL8-.LVL7
	.uleb128 .LFE72-.LVL7
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 0x2
	.uleb128 0
.LLST13:
	.byte	0x8
	.4byte	.LVL7
	.uleb128 .LFE72-.LVL7
	.uleb128 0x6
	.byte	0x7c
	.sleb128 4
	.byte	0x6
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL5-1-.LVL3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL5-1-.LVL3
	.uleb128 .LVL5-.LVL3
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
	.byte	0x4
	.uleb128 .LVL5-.LVL3
	.uleb128 .LVL6-.LVL3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL6-.LVL3
	.uleb128 .LFE71-.LVL3
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
.LVUS5:
	.uleb128 0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0
.LLST5:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL5-1-.LVL3
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL5-1-.LVL3
	.uleb128 .LVL5-.LVL3
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.LVL3
	.uleb128 .LFE71-.LVL3
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS6:
	.uleb128 0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0
.LLST6:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL5-1-.LVL3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL5-1-.LVL3
	.uleb128 .LVL5-.LVL3
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xc
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.LVL3
	.uleb128 .LFE71-.LVL3
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS7:
	.uleb128 0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0
.LLST7:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL5-1-.LVL3
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL5-1-.LVL3
	.uleb128 .LVL5-.LVL3
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xd
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.LVL3
	.uleb128 .LFE71-.LVL3
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL5-1-.LVL3
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL5-1-.LVL3
	.uleb128 .LVL5-.LVL3
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xe
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.LVL3
	.uleb128 .LFE71-.LVL3
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS9:
	.uleb128 0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0
.LLST9:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL5-1-.LVL3
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL5-1-.LVL3
	.uleb128 .LVL5-.LVL3
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xf
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.LVL3
	.uleb128 .LFE71-.LVL3
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS10:
	.uleb128 0x5
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0
.LLST10:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL4-.LVL3
	.uleb128 0x6
	.byte	0x7a
	.sleb128 4
	.byte	0x6
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL4-.LVL3
	.uleb128 .LVL5-1-.LVL3
	.uleb128 0x1
	.byte	0x60
	.byte	0x4
	.uleb128 .LVL5-.LVL3
	.uleb128 .LFE71-.LVL3
	.uleb128 0x1
	.byte	0x60
	.byte	0
.LVUS11:
	.uleb128 0x3
	.uleb128 0x5
.LLST11:
	.byte	0x8
	.4byte	.LVL3
	.uleb128 .LVL3-.LVL3
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LFE70-.LVL0
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
	.uleb128 0x2
	.uleb128 0x6
.LLST1:
	.byte	0x8
	.4byte	.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x6
	.byte	0x7a
	.sleb128 4
	.byte	0x6
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0x3
	.uleb128 0x6
.LLST2:
	.byte	0x8
	.4byte	.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
.LVUS3:
	.uleb128 0x4
	.uleb128 0x6
.LLST3:
	.byte	0x8
	.4byte	.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x9
	.byte	0x7a
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
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
.LLRL14:
	.byte	0x7
	.4byte	.LFB70
	.uleb128 .LFE70-.LFB70
	.byte	0x7
	.4byte	.LFB71
	.uleb128 .LFE71-.LFB71
	.byte	0x7
	.4byte	.LFB72
	.uleb128 .LFE72-.LFB72
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
	.uleb128 0x4
	.4byte	.LASF1
	.4byte	.LASF59
	.4byte	.LASF60
	.4byte	.LASF61
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x8
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF62
	.byte	0x2
	.4byte	.LASF63
	.byte	0x1
	.4byte	.LASF64
	.byte	0x3
	.4byte	.LASF65
	.byte	0x3
	.4byte	.LASF66
	.byte	0x1
	.4byte	.LASF67
	.byte	0x1
	.4byte	.LASF68
	.byte	0x2
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x6f
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x2c
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE70
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM13
	.byte	0x95
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 247
	.byte	0x1
	.byte	0x5
	.uleb128 0x22
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x3
	.sleb128 -227
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x3
	.sleb128 -23
	.byte	0x1
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x2e
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x6
	.byte	0x3d
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x34
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE71
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM26
	.byte	0xf8
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x29
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE72
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF40:
	.string	"key_buffer"
.LASF22:
	.string	"psa_key_lifetime_t"
.LASF12:
	.string	"size_t"
.LASF49:
	.string	"location"
.LASF37:
	.string	"psa_key_bits_t"
.LASF58:
	.string	"psa_get_key_lifetime"
.LASF31:
	.string	"policy"
.LASF51:
	.string	"key_type"
.LASF41:
	.string	"key_buffer_size"
.LASF32:
	.string	"psa_key_attributes_s"
.LASF27:
	.string	"psa_key_attributes_t"
.LASF17:
	.string	"uint64_t"
.LASF57:
	.string	"status"
.LASF35:
	.string	"alg2"
.LASF56:
	.string	"psa_export_public_key_internal"
.LASF43:
	.string	"psa_driver_wrapper_get_builtin_key"
.LASF46:
	.string	"data"
.LASF2:
	.string	"long long unsigned int"
.LASF5:
	.string	"unsigned char"
.LASF50:
	.string	"psa_driver_wrapper_get_key_buffer_size"
.LASF39:
	.string	"attributes"
.LASF9:
	.string	"long unsigned int"
.LASF38:
	.string	"psa_drv_slot_number_t"
.LASF55:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF44:
	.string	"psa_driver_wrapper_export_public_key"
.LASF23:
	.string	"psa_key_location_t"
.LASF54:
	.string	"psa_get_key_type"
.LASF6:
	.string	"short int"
.LASF24:
	.string	"psa_key_id_t"
.LASF34:
	.string	"usage"
.LASF20:
	.string	"psa_key_type_t"
.LASF26:
	.string	"psa_key_usage_t"
.LASF30:
	.string	"lifetime"
.LASF47:
	.string	"data_size"
.LASF18:
	.string	"char"
.LASF14:
	.string	"uint8_t"
.LASF25:
	.string	"mbedtls_svc_key_id_t"
.LASF42:
	.string	"key_buffer_length"
.LASF13:
	.string	"int32_t"
.LASF10:
	.string	"long long int"
.LASF53:
	.string	"psa_get_key_bits"
.LASF33:
	.string	"psa_key_policy_s"
.LASF36:
	.string	"psa_key_policy_t"
.LASF29:
	.string	"bits"
.LASF3:
	.string	"unsigned int"
.LASF28:
	.string	"type"
.LASF48:
	.string	"data_length"
.LASF15:
	.string	"uint16_t"
.LASF8:
	.string	"long int"
.LASF45:
	.string	"slot_number"
.LASF11:
	.string	"long double"
.LASF4:
	.string	"signed char"
.LASF16:
	.string	"uint32_t"
.LASF7:
	.string	"short unsigned int"
.LASF19:
	.string	"psa_status_t"
.LASF52:
	.string	"key_bits"
.LASF21:
	.string	"psa_algorithm_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF60:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library"
.LASF65:
	.string	"stdint-gcc.h"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/mbedtls-bl602"
.LASF59:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa"
.LASF66:
	.string	"crypto_types.h"
.LASF67:
	.string	"crypto_extra.h"
.LASF63:
	.string	"crypto_struct.h"
.LASF61:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/psa_crypto_driver_wrappers_no_static.c"
.LASF64:
	.string	"stddef.h"
.LASF68:
	.string	"psa_crypto_core.h"
.LASF62:
	.string	"psa_crypto_driver_wrappers_no_static.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
