	.file	"coap_prng.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.coap_prng_init,"ax",@progbits
	.align	1
	.globl	coap_prng_init
	.type	coap_prng_init, @function
coap_prng_init:
.LVL0:
.LFB51:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
.LM4:
.LM5:
	ret
	.cfi_endproc
.LFE51:
	.size	coap_prng_init, .-coap_prng_init
	.section	.text.coap_prng_init_lkd,"ax",@progbits
	.align	1
	.globl	coap_prng_init_lkd
	.type	coap_prng_init_lkd, @function
coap_prng_init_lkd:
.LFB56:
	.cfi_startproc
.LM6:
	ret
	.cfi_endproc
.LFE56:
	.size	coap_prng_init_lkd, .-coap_prng_init_lkd
	.section	.text.coap_prng_lkd,"ax",@progbits
	.align	1
	.globl	coap_prng_lkd
	.type	coap_prng_lkd, @function
coap_prng_lkd:
.LVL1:
.LFB54:
.LM7:
	.cfi_startproc
.LM8:
.LM9:
.LM10:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
.LM11:
	mv	s0,a1
	add	s1,a0,a1
.LM12:
	call	bl_rand
.LVL2:
.LM13:
	mv	a5,a0
.LM14:
.LM15:
	li	s2,4
.LVL3:
.L4:
.LM16:
	sw	a5,12(sp)
	sub	a0,s1,s0
.LVL4:
.LM17:
	bgtu	s0,s2,.L5
.LM18:
	mv	a2,s0
	addi	a1,sp,12
	call	memcpy
.LVL5:
.LM19:
.LM20:
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL6:
.LM21:
	lw	s1,20(sp)
	.cfi_restore 9
.LM22:
	lw	s2,16(sp)
	.cfi_restore 18
	li	a0,1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL7:
.L5:
	.cfi_restore_state
.LM23:
	li	a2,4
	addi	a1,sp,12
	call	memcpy
.LVL8:
.LM24:
.LM25:
	call	bl_rand
.LVL9:
.LM26:
	addi	s0,s0,-4
.LVL10:
.LM27:
.LM28:
.LM29:
	mv	a5,a0
	j	.L4
	.cfi_endproc
.LFE54:
	.size	coap_prng_lkd, .-coap_prng_lkd
	.section	.text.coap_prng,"ax",@progbits
	.align	1
	.globl	coap_prng
	.type	coap_prng, @function
coap_prng:
.LVL11:
.LFB52:
.LM30:
	.cfi_startproc
.LM31:
.LM32:
.LM33:
.LM34:
	tail	coap_prng_lkd
.LVL12:
.LM35:
	.cfi_endproc
.LFE52:
	.size	coap_prng, .-coap_prng
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x246
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL5
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
	.uleb128 0xe
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
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x32
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xf
	.byte	0x4
	.uleb128 0x6
	.4byte	0x84
	.uleb128 0x7
	.4byte	0x47
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x7
	.4byte	0xa1
	.uleb128 0x6
	.4byte	0x97
	.uleb128 0x10
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x63
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xa2
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x5
	.byte	0x1f
	.byte	0x8
	.4byte	0x84
	.4byte	0xda
	.uleb128 0x4
	.4byte	0x86
	.uleb128 0x4
	.4byte	0x9c
	.uleb128 0x4
	.4byte	0x71
	.byte	0
	.uleb128 0x12
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x127
	.byte	0xc
	.4byte	0x39
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x56
	.4byte	0x39
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x197
	.uleb128 0x13
	.4byte	.LASF16
	.byte	0x1
	.byte	0x56
	.byte	0x15
	.4byte	0x84
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x5
	.string	"len"
	.byte	0x56
	.byte	0x22
	.4byte	0x71
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.byte	0x57
	.byte	0x12
	.4byte	0x8b
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x15
	.string	"v"
	.byte	0x1
	.byte	0x58
	.byte	0x9
	.4byte	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LVL2
	.4byte	0xda
	.uleb128 0xa
	.4byte	.LVL5
	.4byte	0xba
	.4byte	0x173
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL8
	.4byte	0xba
	.4byte	0x18d
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x82
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.4byte	.LVL9
	.4byte	0xda
	.byte	0
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x51
	.4byte	0x1ad
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x51
	.byte	0x21
	.4byte	0x32
	.byte	0
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x45
	.4byte	0x39
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21c
	.uleb128 0x5
	.string	"buf"
	.byte	0x45
	.byte	0x11
	.4byte	0x84
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x5
	.string	"len"
	.byte	0x45
	.byte	0x1d
	.4byte	0x71
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.byte	0x46
	.byte	0x7
	.4byte	0x39
	.uleb128 0x17
	.4byte	.LVL12
	.4byte	0xe7
	.uleb128 0x2
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
	.uleb128 0x2
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
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x3e
	.4byte	0x232
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x3e
	.byte	0x1d
	.4byte	0x32
	.byte	0
	.uleb128 0x18
	.4byte	0x21c
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.4byte	0x226
	.uleb128 0x1
	.byte	0x5a
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
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x9
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 1
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
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x12
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL2-1-.LVL1
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL2-1-.LVL1
	.uleb128 .LFE54-.LVL1
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
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0xe
	.uleb128 0x10
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL2-1-.LVL1
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL2-1-.LVL1
	.uleb128 .LVL6-.LVL1
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL7-.LVL1
	.uleb128 .LFE54-.LVL1
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS2:
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0x9
	.uleb128 0xa
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0xe
	.uleb128 0x10
	.uleb128 0x11
	.uleb128 0x11
	.uleb128 0x14
	.uleb128 0x14
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL2-1-.LVL1
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL2-1-.LVL1
	.uleb128 .LVL3-.LVL1
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
	.uleb128 .LVL4-.LVL1
	.uleb128 .LVL5-1-.LVL1
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL5-1-.LVL1
	.uleb128 .LVL6-.LVL1
	.uleb128 0x6
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL1
	.uleb128 .LVL8-1-.LVL1
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL8-1-.LVL1
	.uleb128 .LVL10-.LVL1
	.uleb128 0x6
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.LVL1
	.uleb128 .LVL10-.LVL1
	.uleb128 0x8
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.LVL1
	.uleb128 .LFE54-.LVL1
	.uleb128 0x17
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 0x5
	.uleb128 0x5
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL11
	.byte	0x4
	.uleb128 .LVL11-.LVL11
	.uleb128 .LVL12-1-.LVL11
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL12-1-.LVL11
	.uleb128 .LFE52-.LVL11
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
.LVUS4:
	.uleb128 0
	.uleb128 0x5
	.uleb128 0x5
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL11
	.byte	0x4
	.uleb128 .LVL11-.LVL11
	.uleb128 .LVL12-1-.LVL11
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL12-1-.LVL11
	.uleb128 .LFE52-.LVL11
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
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
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
.LLRL5:
	.byte	0x7
	.4byte	.LFB51
	.uleb128 .LFE51-.LFB51
	.byte	0x7
	.4byte	.LFB56
	.uleb128 .LFE56-.LFB56
	.byte	0x7
	.4byte	.LFB54
	.uleb128 .LFE54-.LFB54
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
	.uleb128 0x6
	.4byte	.LASF1
	.4byte	.LASF25
	.4byte	.LASF26
	.4byte	.LASF27
	.4byte	.LASF28
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x7
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF30
	.byte	0x1
	.4byte	.LASF31
	.byte	0x4
	.4byte	.LASF32
	.byte	0x4
	.4byte	.LASF33
	.byte	0x3
	.4byte	.LASF34
	.byte	0x5
	.4byte	.LASF35
	.byte	0x2
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x54
	.byte	0x5
	.uleb128 0x23
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
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE51
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM6
	.byte	0x67
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE56
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM7
	.byte	0x6c
	.byte	0x5
	.uleb128 0x27
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x6
	.byte	0x15
	.byte	0x5
	.uleb128 0x27
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x1
	.byte	0x5
	.uleb128 0x27
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x19
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x15
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x1e
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x6
	.byte	0xf
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x15
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE54
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM30
	.byte	0x5b
	.byte	0x5
	.uleb128 0x22
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x19
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x18
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE52
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"long long int"
.LASF13:
	.string	"size_t"
.LASF21:
	.string	"seed"
.LASF24:
	.string	"bl_rand"
.LASF9:
	.string	"long unsigned int"
.LASF22:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF17:
	.string	"coap_prng_lkd"
.LASF15:
	.string	"u32_t"
.LASF2:
	.string	"long long unsigned int"
.LASF5:
	.string	"unsigned char"
.LASF12:
	.string	"char"
.LASF14:
	.string	"uint32_t"
.LASF8:
	.string	"long int"
.LASF18:
	.string	"coap_prng"
.LASF16:
	.string	"bufp"
.LASF23:
	.string	"memcpy"
.LASF7:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF20:
	.string	"coap_prng_init"
.LASF11:
	.string	"long double"
.LASF6:
	.string	"short int"
.LASF3:
	.string	"unsigned int"
.LASF19:
	.string	"coap_prng_init_lkd"
	.section	.debug_line_str,"MS",@progbits,1
.LASF34:
	.string	"string.h"
.LASF29:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/3rdparty/libcoap/src/coap_prng.c"
.LASF30:
	.string	"coap_prng.c"
.LASF33:
	.string	"arch.h"
.LASF27:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip"
.LASF25:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/3rdparty/libcoap/src"
.LASF32:
	.string	"stdint-gcc.h"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/libcoap"
.LASF35:
	.string	"lwipopts.h"
.LASF28:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF26:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/config"
.LASF31:
	.string	"stddef.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
