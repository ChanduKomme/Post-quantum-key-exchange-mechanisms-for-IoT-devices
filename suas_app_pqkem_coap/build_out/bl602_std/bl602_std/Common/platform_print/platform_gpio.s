	.file	"platform_gpio.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bflb_platform_init_uart_debug_gpio,"ax",@progbits
	.align	1
	.weak	bflb_platform_init_uart_debug_gpio
	.type	bflb_platform_init_uart_debug_gpio, @function
bflb_platform_init_uart_debug_gpio:
.LFB8:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
.LM4:
.LM5:
.LM6:
.LM7:
.LM8:
.LM9:
	li	a5,65536
.LM10:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
.LM11:
	addi	a5,a5,1808
	sw	a5,8(sp)
.LM12:
	addi	a0,sp,8
.LM13:
	li	a5,256
.LM14:
	sw	ra,28(sp)
	.cfi_offset 1, -4
.LM15:
	sh	a5,12(sp)
.LM16:
	call	GLB_GPIO_Init
.LVL0:
.LM17:
	li	a1,2
	li	a0,0
	call	GLB_UART_Fun_Sel
.LVL1:
.LM18:
.LM19:
.LM20:
.LM21:
.LM22:
	li	a5,1799
.LM23:
	addi	a0,sp,8
.LM24:
	sw	a5,8(sp)
.LM25:
	call	GLB_GPIO_Init
.LVL2:
.LM26:
	li	a1,3
	li	a0,7
	call	GLB_UART_Fun_Sel
.LVL3:
.LM27:
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	bflb_platform_init_uart_debug_gpio, .-bflb_platform_init_uart_debug_gpio
	.section	.text.bflb_platform_deinit_uart_debug_gpio,"ax",@progbits
	.align	1
	.weak	bflb_platform_deinit_uart_debug_gpio
	.type	bflb_platform_deinit_uart_debug_gpio, @function
bflb_platform_deinit_uart_debug_gpio:
.LFB9:
.LM28:
	.cfi_startproc
.LM29:
.LM30:
.LM31:
.LM32:
.LM33:
.LM34:
.LM35:
.LM36:
	li	a5,33558528
.LM37:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
.LM38:
	addi	a5,a5,-1264
	sw	a5,8(sp)
.LM39:
	addi	a0,sp,8
.LM40:
	li	a5,256
.LM41:
	sw	ra,28(sp)
	.cfi_offset 1, -4
.LM42:
	sh	a5,12(sp)
.LM43:
	call	GLB_GPIO_Init
.LVL4:
.LM44:
	li	a0,0
	call	GLB_UART_Sig_Swap_Set
.LVL5:
.LM45:
	li	a1,0
	li	a0,0
	call	GLB_UART_Fun_Sel
.LVL6:
.LM46:
.LM47:
.LM48:
	li	a5,4096
	addi	a5,a5,-1273
.LM49:
	addi	a0,sp,8
.LM50:
	sh	a5,8(sp)
.LM51:
	call	GLB_GPIO_Init
.LVL7:
.LM52:
	li	a1,7
	mv	a0,a1
	call	GLB_UART_Fun_Sel
.LVL8:
.LM53:
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	bflb_platform_deinit_uart_debug_gpio, .-bflb_platform_deinit_uart_debug_gpio
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x38f
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0x7
	.4byte	0x32
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xb6
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0x97
	.uleb128 0x7
	.4byte	0x32
	.byte	0x4
	.byte	0x29
	.byte	0x1
	.4byte	0x15f
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.byte	0x6
	.byte	0x4
	.byte	0x59
	.byte	0x9
	.4byte	0x1ab
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x5b
	.4byte	0x7f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x5c
	.4byte	0x7f
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x5d
	.4byte	0x7f
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x5e
	.4byte	0x7f
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x5f
	.4byte	0x7f
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x60
	.4byte	0x7f
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF49
	.byte	0x4
	.byte	0x61
	.byte	0x2
	.4byte	0x15f
	.uleb128 0x7
	.4byte	0x32
	.byte	0x5
	.byte	0xe8
	.byte	0xe
	.4byte	0x1f4
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	.LASF58
	.byte	0x5
	.byte	0xf1
	.byte	0x2
	.4byte	0x1b7
	.uleb128 0x7
	.4byte	0x32
	.byte	0x5
	.byte	0xf6
	.byte	0xe
	.4byte	0x23d
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	.LASF67
	.byte	0x5
	.byte	0xff
	.byte	0x2
	.4byte	0x200
	.uleb128 0x9
	.4byte	.LASF68
	.2byte	0x257
	.4byte	0xb6
	.4byte	0x25e
	.uleb128 0x8
	.4byte	0x7f
	.byte	0
	.uleb128 0x9
	.4byte	.LASF69
	.2byte	0x26f
	.4byte	0xb6
	.4byte	0x278
	.uleb128 0x8
	.4byte	0x1f4
	.uleb128 0x8
	.4byte	0x23d
	.byte	0
	.uleb128 0x9
	.4byte	.LASF70
	.2byte	0x276
	.4byte	0xb6
	.4byte	0x28d
	.uleb128 0x8
	.4byte	0x28d
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1ab
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x1
	.byte	0x28
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31e
	.uleb128 0xa
	.string	"cfg"
	.byte	0x2a
	.4byte	0x1ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LVL4
	.4byte	0x278
	.4byte	0x2ca
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LVL5
	.4byte	0x249
	.4byte	0x2dd
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x4
	.4byte	.LVL6
	.4byte	0x25e
	.4byte	0x2f5
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x4
	.4byte	.LVL7
	.4byte	0x278
	.4byte	0x309
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LVL8
	.4byte	0x25e
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x1
	.byte	0x8
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.string	"cfg"
	.byte	0xa
	.4byte	0x1ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LVL0
	.4byte	0x278
	.4byte	0x351
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LVL1
	.4byte	0x25e
	.4byte	0x369
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	.LVL2
	.4byte	0x278
	.4byte	0x37d
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LVL3
	.4byte	0x25e
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.byte	0
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
	.uleb128 0x4
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
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
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
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
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
	.uleb128 0xa
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
	.sleb128 23
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB8
	.uleb128 .LFE8-.LFB8
	.byte	0x7
	.4byte	.LFB9
	.uleb128 .LFE9-.LFB9
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
	.4byte	.LASF74
	.4byte	.LASF75
	.4byte	.LASF76
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF77
	.byte	0x1
	.4byte	.LASF78
	.byte	0x3
	.4byte	.LASF79
	.byte	0x2
	.4byte	.LASF80
	.byte	0x2
	.4byte	.LASF81
	.byte	0x2
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x1f
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x10
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x1e
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0xf
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x1a
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x6
	.byte	0x1f
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x13
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE8
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM28
	.byte	0x3f
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0xe
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x20
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x11
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x12
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x1c
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x6
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x15
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE9
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF61:
	.string	"GLB_UART_SIG_FUN_UART0_TXD"
.LASF50:
	.string	"GLB_UART_SIG_0"
.LASF51:
	.string	"GLB_UART_SIG_1"
.LASF52:
	.string	"GLB_UART_SIG_2"
.LASF53:
	.string	"GLB_UART_SIG_3"
.LASF72:
	.string	"bflb_platform_deinit_uart_debug_gpio"
.LASF55:
	.string	"GLB_UART_SIG_5"
.LASF70:
	.string	"GLB_GPIO_Init"
.LASF57:
	.string	"GLB_UART_SIG_7"
.LASF48:
	.string	"smtCtrl"
.LASF68:
	.string	"GLB_UART_Sig_Swap_Set"
.LASF8:
	.string	"long long int"
.LASF63:
	.string	"GLB_UART_SIG_FUN_UART1_RTS"
.LASF30:
	.string	"GLB_GPIO_PIN_11"
.LASF4:
	.string	"short int"
.LASF13:
	.string	"uint8_t"
.LASF59:
	.string	"GLB_UART_SIG_FUN_UART0_RTS"
.LASF62:
	.string	"GLB_UART_SIG_FUN_UART0_RXD"
.LASF44:
	.string	"gpioFun"
.LASF42:
	.string	"GLB_GPIO_PIN_MAX"
.LASF29:
	.string	"GLB_GPIO_PIN_10"
.LASF64:
	.string	"GLB_UART_SIG_FUN_UART1_CTS"
.LASF31:
	.string	"GLB_GPIO_PIN_12"
.LASF32:
	.string	"GLB_GPIO_PIN_13"
.LASF33:
	.string	"GLB_GPIO_PIN_14"
.LASF34:
	.string	"GLB_GPIO_PIN_15"
.LASF35:
	.string	"GLB_GPIO_PIN_16"
.LASF36:
	.string	"GLB_GPIO_PIN_17"
.LASF37:
	.string	"GLB_GPIO_PIN_18"
.LASF38:
	.string	"GLB_GPIO_PIN_19"
.LASF17:
	.string	"TIMEOUT"
.LASF65:
	.string	"GLB_UART_SIG_FUN_UART1_TXD"
.LASF18:
	.string	"BL_Err_Type"
.LASF47:
	.string	"drive"
.LASF16:
	.string	"ERROR"
.LASF11:
	.string	"long double"
.LASF3:
	.string	"unsigned char"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint32_t"
.LASF19:
	.string	"GLB_GPIO_PIN_0"
.LASF20:
	.string	"GLB_GPIO_PIN_1"
.LASF49:
	.string	"GLB_GPIO_Cfg_Type"
.LASF21:
	.string	"GLB_GPIO_PIN_2"
.LASF22:
	.string	"GLB_GPIO_PIN_3"
.LASF23:
	.string	"GLB_GPIO_PIN_4"
.LASF39:
	.string	"GLB_GPIO_PIN_20"
.LASF40:
	.string	"GLB_GPIO_PIN_21"
.LASF41:
	.string	"GLB_GPIO_PIN_22"
.LASF25:
	.string	"GLB_GPIO_PIN_6"
.LASF26:
	.string	"GLB_GPIO_PIN_7"
.LASF5:
	.string	"short unsigned int"
.LASF27:
	.string	"GLB_GPIO_PIN_8"
.LASF28:
	.string	"GLB_GPIO_PIN_9"
.LASF12:
	.string	"char"
.LASF6:
	.string	"long int"
.LASF7:
	.string	"long unsigned int"
.LASF45:
	.string	"gpioMode"
.LASF58:
	.string	"GLB_UART_SIG_Type"
.LASF67:
	.string	"GLB_UART_SIG_FUN_Type"
.LASF54:
	.string	"GLB_UART_SIG_4"
.LASF56:
	.string	"GLB_UART_SIG_6"
.LASF24:
	.string	"GLB_GPIO_PIN_5"
.LASF46:
	.string	"pullType"
.LASF15:
	.string	"SUCCESS"
.LASF73:
	.string	"bflb_platform_init_uart_debug_gpio"
.LASF71:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF66:
	.string	"GLB_UART_SIG_FUN_UART1_RXD"
.LASF43:
	.string	"gpioPin"
.LASF10:
	.string	"unsigned int"
.LASF60:
	.string	"GLB_UART_SIG_FUN_UART0_CTS"
.LASF69:
	.string	"GLB_UART_Fun_Sel"
	.section	.debug_line_str,"MS",@progbits,1
.LASF75:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/platform_print/platform_gpio.c"
.LASF77:
	.string	"platform_gpio.c"
.LASF76:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF74:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/platform_print"
.LASF80:
	.string	"bl602_gpio.h"
.LASF78:
	.string	"stdint-gcc.h"
.LASF79:
	.string	"bl602_common.h"
.LASF81:
	.string	"bl602_glb.h"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/bl602_std"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
