	.file	"utils_notifier.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.utils_notifier_chain_init,"ax",@progbits
	.align	1
	.globl	utils_notifier_chain_init
	.type	utils_notifier_chain_init, @function
utils_notifier_chain_init:
.LVL0:
.LFB18:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM4:
	call	utils_list_init
.LVL1:
.LM5:
.LM6:
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	utils_notifier_chain_init, .-utils_notifier_chain_init
	.section	.text.utils_notifier_chain_register,"ax",@progbits
	.align	1
	.globl	utils_notifier_chain_register
	.type	utils_notifier_chain_register, @function
utils_notifier_chain_register:
.LVL2:
.LFB19:
.LM7:
	.cfi_startproc
.LM8:
.LM9:
	beq	a1,zero,.L5
	beq	a0,zero,.L5
.LM10:
.LM11:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM12:
	call	utils_list_push_back
.LVL3:
.LM13:
.LM14:
	lw	ra,12(sp)
	.cfi_restore 1
.LM15:
	li	a0,0
.LM16:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL4:
.L5:
.LM17:
	li	a0,-1
.LVL5:
.LM18:
	ret
	.cfi_endproc
.LFE19:
	.size	utils_notifier_chain_register, .-utils_notifier_chain_register
	.section	.text.utils_notifier_chain_call,"ax",@progbits
	.align	1
	.globl	utils_notifier_chain_call
	.type	utils_notifier_chain_call, @function
utils_notifier_chain_call:
.LVL6:
.LFB20:
.LM19:
	.cfi_startproc
.LM20:
.LM21:
.LM22:
	beq	a0,zero,.L21
.LM23:
.LM24:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
.LM25:
	lw	s0,0(a0)
.LVL7:
.LM26:
.L12:
.LM27:
	bne	s0,zero,.L14
.LM28:
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL8:
.LM29:
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL9:
.L14:
	.cfi_restore_state
.LM30:
.LM31:
	lw	a5,4(s0)
.LM32:
	beq	a5,zero,.L13
.LM33:
	lw	a0,8(s0)
	sw	a1,12(sp)
	jalr	a5
.LVL10:
	lw	a1,12(sp)
.L13:
.LM34:
.LM35:
	lw	s0,0(s0)
.LVL11:
.LM36:
	j	.L12
.LVL12:
.L21:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
.LM37:
	li	a0,0
.LVL13:
.LM38:
	ret
	.cfi_endproc
.LFE20:
	.size	utils_notifier_chain_call, .-utils_notifier_chain_call
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x246
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL6
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF5
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0x4
	.byte	0x2
	.byte	0x26
	.byte	0x8
	.4byte	0x69
	.uleb128 0x1
	.4byte	.LASF8
	.byte	0x2
	.byte	0x28
	.byte	0x1c
	.4byte	0x69
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	0x4e
	.uleb128 0x7
	.4byte	.LASF7
	.byte	0x8
	.byte	0x2
	.byte	0x2b
	.byte	0x8
	.4byte	0x96
	.uleb128 0x1
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2e
	.byte	0x1c
	.4byte	0x69
	.byte	0
	.uleb128 0x1
	.4byte	.LASF10
	.byte	0x2
	.byte	0x30
	.byte	0x1c
	.4byte	0x69
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x24
	.byte	0x1b
	.4byte	0x6e
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x25
	.byte	0xf
	.4byte	0xac
	.uleb128 0x2
	.4byte	0xb1
	.uleb128 0xe
	.4byte	0x39
	.4byte	0xc5
	.uleb128 0x3
	.4byte	0xc5
	.uleb128 0x3
	.4byte	0xc5
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x10
	.byte	0x3
	.byte	0x27
	.byte	0x10
	.4byte	0x108
	.uleb128 0x1
	.4byte	.LASF14
	.byte	0x3
	.byte	0x28
	.byte	0x1b
	.4byte	0x4e
	.byte	0
	.uleb128 0x10
	.string	"cb"
	.byte	0x3
	.byte	0x29
	.byte	0x19
	.4byte	0xa1
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2a
	.byte	0xb
	.4byte	0xc5
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2b
	.byte	0x9
	.4byte	0x39
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x2c
	.byte	0x3
	.4byte	0xc7
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x55
	.4byte	0x128
	.uleb128 0x3
	.4byte	0x128
	.uleb128 0x3
	.4byte	0x69
	.byte	0
	.uleb128 0x2
	.4byte	0x6e
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x3e
	.4byte	0x13d
	.uleb128 0x3
	.4byte	0x128
	.byte	0
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x32
	.4byte	0x39
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19c
	.uleb128 0x5
	.string	"nl"
	.byte	0x32
	.byte	0x2b
	.4byte	0x19c
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x5
	.string	"env"
	.byte	0x32
	.byte	0x35
	.4byte	0xc5
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x11
	.string	"raw"
	.byte	0x1
	.byte	0x34
	.byte	0x17
	.4byte	0x1a1
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x12
	.4byte	.LVL10
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	0x96
	.uleb128 0x2
	.4byte	0x108
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x28
	.4byte	0x39
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x209
	.uleb128 0x5
	.string	"nl"
	.byte	0x28
	.byte	0x2f
	.4byte	0x19c
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x13
	.4byte	.LASF14
	.byte	0x1
	.byte	0x28
	.byte	0x45
	.4byte	0x1a1
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xb
	.4byte	.LVL3
	.4byte	0x113
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x14
	.4byte	.LASF23
	.byte	0x1
	.byte	0x21
	.byte	0x5
	.4byte	0x39
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.string	"nl"
	.byte	0x21
	.byte	0x2b
	.4byte	0x19c
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xb
	.4byte	.LVL1
	.4byte	0x12d
	.uleb128 0x6
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
	.byte	0
	.byte	0
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0xa
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
	.sleb128 5
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
	.uleb128 0xb
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
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
	.uleb128 0x7a
	.uleb128 0x19
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
.LVUS3:
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0x12
	.uleb128 0x12
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL6
	.byte	0x4
	.uleb128 .LVL6-.LVL6
	.uleb128 .LVL7-.LVL6
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL7-.LVL6
	.uleb128 .LVL12-.LVL6
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
	.uleb128 .LVL12-.LVL6
	.uleb128 .LVL13-.LVL6
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL13-.LVL6
	.uleb128 .LFE20-.LVL6
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
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0x12
	.uleb128 0x12
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL6
	.byte	0x4
	.uleb128 .LVL6-.LVL6
	.uleb128 .LVL7-.LVL6
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL7-.LVL6
	.uleb128 .LVL12-.LVL6
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
	.uleb128 .LVL12-.LVL6
	.uleb128 .LFE20-.LVL6
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS5:
	.uleb128 0x7
	.uleb128 0xa
	.uleb128 0xb
	.uleb128 0x11
.LLST5:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL9-.LVL7
	.uleb128 .LVL11-.LVL7
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL3-1-.LVL2
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL3-1-.LVL2
	.uleb128 .LVL4-.LVL2
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
	.uleb128 .LVL4-.LVL2
	.uleb128 .LVL5-.LVL2
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL5-.LVL2
	.uleb128 .LFE19-.LVL2
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
.LVUS2:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL3-1-.LVL2
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL3-1-.LVL2
	.uleb128 .LVL4-.LVL2
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
	.uleb128 .LVL4-.LVL2
	.uleb128 .LFE19-.LVL2
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 0x4
	.uleb128 0x4
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-1-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL1-1-.LVL0
	.uleb128 .LFE18-.LVL0
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
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
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
.LLRL6:
	.byte	0x7
	.4byte	.LFB18
	.uleb128 .LFE18-.LFB18
	.byte	0x7
	.4byte	.LFB19
	.uleb128 .LFE19-.LFB19
	.byte	0x7
	.4byte	.LFB20
	.uleb128 .LFE20-.LFB20
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
	.uleb128 0x3
	.4byte	.LASF1
	.4byte	.LASF24
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x4
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF26
	.byte	0x2
	.4byte	.LASF27
	.byte	0x1
	.4byte	.LASF28
	.byte	0x1
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x38
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE18
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM7
	.byte	0x3f
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x6
	.byte	0x13
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x16
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x12
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x1c
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE19
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM19
	.byte	0x49
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x6
	.byte	0x10
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x1e
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x6
	.byte	0x1f
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x6
	.byte	0x10
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE20
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"long long int"
.LASF13:
	.string	"utils_notifier"
.LASF10:
	.string	"last"
.LASF3:
	.string	"unsigned int"
.LASF15:
	.string	"cb_arg"
.LASF19:
	.string	"utils_list_init"
.LASF18:
	.string	"utils_list_push_back"
.LASF12:
	.string	"utils_notifier_fn_t"
.LASF6:
	.string	"utils_list_hdr"
.LASF22:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF2:
	.string	"long long unsigned int"
.LASF17:
	.string	"utils_notifier_t"
.LASF16:
	.string	"priority"
.LASF14:
	.string	"node"
.LASF7:
	.string	"utils_list"
.LASF9:
	.string	"first"
.LASF23:
	.string	"utils_notifier_chain_init"
.LASF8:
	.string	"next"
.LASF21:
	.string	"utils_notifier_chain_register"
.LASF5:
	.string	"long double"
.LASF20:
	.string	"utils_notifier_chain_call"
.LASF11:
	.string	"ntf_list_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF26:
	.string	"utils_notifier.c"
.LASF25:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src"
.LASF28:
	.string	"utils_notifier.h"
.LASF24:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/include"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_notifier.c"
.LASF27:
	.string	"utils_list.h"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/utils"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
