	.file	"vfs_gpio.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.vfs_gpio_open,"ax",@progbits
	.align	1
	.globl	vfs_gpio_open
	.type	vfs_gpio_open, @function
vfs_gpio_open:
.LVL0:
.LFB5:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
.LM4:
.LM5:
	beq	a1,zero,.L4
.LM6:
	lw	a5,0(a1)
.LM7:
	beq	a5,zero,.L4
.LM8:
.LM9:
	lbu	a3,17(a5)
	li	a4,1
.LM10:
	li	a0,0
.LVL1:
.LM11:
	bne	a3,a4,.L1
.LM12:
.LVL2:
.LM13:
.LM14:
	lw	a0,4(a5)
	tail	hal_gpio_init
.LVL3:
.L4:
.LM15:
	li	a0,-22
.LVL4:
.L1:
.LM16:
	ret
	.cfi_endproc
.LFE5:
	.size	vfs_gpio_open, .-vfs_gpio_open
	.section	.text.vfs_gpio_close,"ax",@progbits
	.align	1
	.globl	vfs_gpio_close
	.type	vfs_gpio_close, @function
vfs_gpio_close:
.LVL5:
.LFB6:
.LM17:
	.cfi_startproc
.LM18:
.LM19:
.LM20:
.LM21:
	beq	a0,zero,.L11
.LM22:
	lw	a5,0(a0)
.LM23:
	beq	a5,zero,.L11
.LM24:
.LM25:
	lbu	a3,17(a5)
	li	a4,1
.LM26:
	li	a0,0
.LVL6:
.LM27:
	bne	a3,a4,.L6
.LM28:
.LM29:
	lw	a0,4(a5)
.LVL7:
.LM30:
.LM31:
	beq	a0,zero,.L11
.LM32:
.LM33:
	tail	hal_gpio_finalize
.LVL8:
.L11:
.LM34:
	li	a0,-22
.LVL9:
.LM35:
.L6:
.LM36:
	ret
	.cfi_endproc
.LFE6:
	.size	vfs_gpio_close, .-vfs_gpio_close
	.section	.text.vfs_gpio_write,"ax",@progbits
	.align	1
	.globl	vfs_gpio_write
	.type	vfs_gpio_write, @function
vfs_gpio_write:
.LVL10:
.LFB7:
.LM37:
	.cfi_startproc
.LM38:
.LM39:
.LM40:
.LM41:
.LM42:
	beq	a0,zero,.L17
.LM43:
	lw	a5,0(a0)
.LM44:
	beq	a5,zero,.L17
.LM45:
.LM46:
	lw	a0,4(a5)
.LVL11:
.LM47:
.LM48:
	beq	a0,zero,.L20
.LM49:
.LM50:
	lbu	a4,1(a0)
	li	a5,2
	bne	a4,a5,.L20
.LM51:
.LM52:
	lbu	a5,0(a1)
.LVL12:
.LM53:
	li	a3,1
	beq	a5,a3,.L14
	beq	a5,a4,.L15
	bne	a5,zero,.L20
.LM54:
.LM55:
	tail	hal_gpio_output_low
.LVL13:
.L14:
.LM56:
.LM57:
	tail	hal_gpio_output_high
.LVL14:
.L15:
.LM58:
.LM59:
	tail	hal_gpio_output_toggle
.LVL15:
.L17:
.LM60:
	li	a0,-1
.LVL16:
.LM61:
	ret
.LVL17:
.L20:
.LM62:
	li	a0,-22
.LVL18:
.LM63:
.LM64:
	ret
	.cfi_endproc
.LFE7:
	.size	vfs_gpio_write, .-vfs_gpio_write
	.section	.text.vfs_gpio_read,"ax",@progbits
	.align	1
	.globl	vfs_gpio_read
	.type	vfs_gpio_read, @function
vfs_gpio_read:
.LVL19:
.LFB8:
.LM65:
	.cfi_startproc
.LM66:
.LM67:
.LM68:
.LM69:
	beq	a0,zero,.L25
.LM70:
	lw	a5,0(a0)
.LM71:
	li	a0,-22
.LVL20:
.LM72:
	beq	a5,zero,.L31
.LM73:
.LM74:
	lw	a5,4(a5)
.LVL21:
.LM75:
.LM76:
	beq	a5,zero,.L31
.LM77:
.LM78:
	lbu	a3,1(a5)
	li	a4,2
.LM79:
	li	a0,-1
.LM80:
	bne	a3,a4,.L23
.LM81:
.LM82:
	lbu	a4,8(a5)
.LM83:
	li	a0,0
.LM84:
	sb	a4,0(a1)
.LM85:
.LVL22:
.L23:
.LM86:
.LM87:
	lbu	a3,1(a5)
	li	a4,3
	bne	a3,a4,.L32
.LM88:
.LM89:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM90:
	mv	a0,a5
.LVL23:
.LM91:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM92:
	call	hal_gpio_input_get
.LVL24:
.LM93:
.LM94:
	beq	a0,zero,.L29
.LVL25:
.L21:
.LM95:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL26:
.L25:
.LM96:
	li	a0,-22
.LVL27:
.LM97:
	ret
.LVL28:
.L29:
	.cfi_def_cfa_offset 16
	.cfi_offset 1, -4
.LM98:
	li	a0,1
.LVL29:
.LM99:
.LM100:
	j	.L21
.LVL30:
.L32:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
.LM101:
.LM102:
	bne	a0,zero,.L31
.LM103:
	li	a0,1
.LVL31:
.LM104:
	ret
.LVL32:
.L31:
.LM105:
	ret
	.cfi_endproc
.LFE8:
	.size	vfs_gpio_read, .-vfs_gpio_read
	.section	.text.vfs_gpio_ioctl,"ax",@progbits
	.align	1
	.globl	vfs_gpio_ioctl
	.type	vfs_gpio_ioctl, @function
vfs_gpio_ioctl:
.LVL33:
.LFB9:
.LM106:
	.cfi_startproc
.LM107:
.LM108:
.LM109:
.LM110:
	beq	a0,zero,.L37
.LM111:
	lw	a5,0(a0)
.LM112:
	beq	a5,zero,.L37
.LM113:
.LM114:
	lw	a0,4(a5)
.LVL34:
.LM115:
.LM116:
	beq	a0,zero,.L37
.LM117:
	li	a5,1
	beq	a1,a5,.L39
	li	a5,2
	beq	a1,a5,.L40
	bne	a1,zero,.L37
.LM118:
.LM119:
	li	a1,32
.LVL35:
.L48:
.LM120:
	tail	hal_gpio_pulltype_set
.LVL36:
.L39:
.LM121:
.LM122:
	li	a1,48
.LVL37:
.LM123:
	j	.L48
.LVL38:
.L40:
.LM124:
.LM125:
	li	a1,16
.LVL39:
.LM126:
	j	.L48
.LVL40:
.L37:
.LM127:
	li	a0,-22
	ret
	.cfi_endproc
.LFE9:
	.size	vfs_gpio_ioctl, .-vfs_gpio_ioctl
	.globl	gpio_ops
	.section	.rodata.gpio_ops,"a"
	.align	2
	.type	gpio_ops, @object
	.size	gpio_ops, 28
gpio_ops:
	.word	vfs_gpio_open
	.word	vfs_gpio_close
	.word	vfs_gpio_read
	.word	vfs_gpio_write
	.word	vfs_gpio_ioctl
	.zero	8
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc87
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x17
	.4byte	.LASF144
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL21
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x68
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x2
	.byte	0xc8
	.byte	0x17
	.4byte	0x6f
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x32
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x1e
	.byte	0xe
	.4byte	0x55
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x22
	.byte	0xe
	.4byte	0x55
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.4byte	0x55
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x38
	.byte	0xf
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3c
	.byte	0x18
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x3f
	.byte	0x18
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x4b
	.byte	0x18
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x5a
	.byte	0x14
	.4byte	0x5c
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x66
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x93
	.byte	0x14
	.4byte	0x82
	.uleb128 0x19
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0xd5
	.byte	0x18
	.4byte	0x4e
	.uleb128 0x4
	.4byte	0x127
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF26
	.uleb128 0xf
	.4byte	0x127
	.uleb128 0x4
	.4byte	0x12e
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x4c
	.byte	0x11
	.4byte	0xfc
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x5
	.byte	0x51
	.byte	0x12
	.4byte	0x108
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x6
	.byte	0x28
	.byte	0x12
	.4byte	0x55
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x6
	.byte	0x2e
	.byte	0x17
	.4byte	0x40
	.uleb128 0x4
	.4byte	0x15c
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x7
	.byte	0x2a
	.byte	0x19
	.4byte	0x76
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x10
	.byte	0x8
	.byte	0x2f
	.4byte	0x1a0
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x8
	.byte	0x30
	.byte	0x9
	.4byte	0x16d
	.byte	0
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x8
	.byte	0x31
	.byte	0x7
	.4byte	0x55
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x9
	.byte	0x61
	.byte	0x14
	.4byte	0x9c
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x9
	.byte	0x66
	.byte	0x15
	.4byte	0xa8
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x9
	.byte	0x89
	.byte	0x11
	.4byte	0xe4
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x9
	.byte	0x9f
	.byte	0x11
	.4byte	0xc0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x9
	.byte	0xa3
	.byte	0x11
	.4byte	0xcc
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x9
	.byte	0xa7
	.byte	0x11
	.4byte	0xd8
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x9
	.byte	0xbb
	.byte	0x12
	.4byte	0xf0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x9
	.byte	0xc0
	.byte	0x13
	.4byte	0x116
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x58
	.byte	0xa
	.byte	0x1b
	.4byte	0x2c3
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xa
	.byte	0x1d
	.byte	0x9
	.4byte	0x1c4
	.byte	0
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xa
	.byte	0x1e
	.byte	0x9
	.4byte	0x1b8
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0xa
	.byte	0x1f
	.byte	0xa
	.4byte	0x1e8
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0xa
	.byte	0x20
	.byte	0xb
	.4byte	0x1f4
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0xa
	.byte	0x21
	.byte	0x9
	.4byte	0x1d0
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0xa
	.byte	0x22
	.byte	0x9
	.4byte	0x1dc
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0xa
	.byte	0x23
	.byte	0x9
	.4byte	0x1c4
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0xa
	.byte	0x24
	.byte	0x9
	.4byte	0x138
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0xa
	.byte	0x2a
	.byte	0x13
	.4byte	0x179
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0xa
	.byte	0x2b
	.byte	0x13
	.4byte	0x179
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0xa
	.byte	0x2c
	.byte	0x13
	.4byte	0x179
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xa
	.byte	0x2d
	.byte	0xd
	.4byte	0x1ac
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0xa
	.byte	0x2e
	.byte	0xc
	.4byte	0x1a0
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0xa
	.byte	0x30
	.byte	0x8
	.4byte	0x2c3
	.byte	0x50
	.byte	0
	.uleb128 0x13
	.4byte	0x55
	.4byte	0x2d3
	.uleb128 0x1a
	.4byte	0x32
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x24
	.byte	0xb
	.byte	0x4
	.4byte	0x355
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0xb
	.byte	0x5
	.byte	0xa
	.4byte	0x55
	.byte	0
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0xb
	.byte	0x6
	.byte	0xa
	.4byte	0x55
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0xb
	.byte	0x7
	.byte	0xa
	.4byte	0x55
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0xb
	.byte	0x8
	.byte	0xa
	.4byte	0x55
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0xb
	.byte	0x9
	.byte	0xa
	.4byte	0x55
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0xb
	.byte	0xa
	.byte	0xa
	.4byte	0x55
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0xb
	.byte	0xb
	.byte	0xa
	.4byte	0x55
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0xb
	.byte	0xc
	.byte	0xa
	.4byte	0x55
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0xb
	.byte	0xd
	.byte	0xa
	.4byte	0x55
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0xb
	.byte	0x10
	.4byte	0x385
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0xb
	.byte	0x11
	.byte	0x9
	.4byte	0x82
	.byte	0
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0xb
	.byte	0x12
	.byte	0xd
	.4byte	0x15c
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0xb
	.byte	0x13
	.byte	0xa
	.4byte	0x385
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.4byte	0x127
	.4byte	0x394
	.uleb128 0x1b
	.4byte	0x32
	.byte	0
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0xb
	.byte	0x14
	.byte	0x3
	.4byte	0x355
	.uleb128 0xd
	.byte	0x8
	.byte	0xb
	.byte	0x16
	.4byte	0x3c3
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0xb
	.byte	0x17
	.byte	0x9
	.4byte	0x82
	.byte	0
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0xb
	.byte	0x18
	.byte	0x9
	.4byte	0x82
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0xb
	.byte	0x19
	.byte	0x3
	.4byte	0x3a0
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0xc
	.byte	0x2c
	.byte	0x1f
	.4byte	0x443
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x1c
	.byte	0xc
	.byte	0x46
	.4byte	0x443
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0xc
	.byte	0x47
	.byte	0xb
	.4byte	0x6ac
	.byte	0
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xc
	.byte	0x48
	.byte	0xb
	.4byte	0x6c0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xc
	.byte	0x49
	.byte	0xf
	.4byte	0x6de
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xc
	.byte	0x4a
	.byte	0xf
	.4byte	0x702
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xc
	.byte	0x4b
	.byte	0xb
	.4byte	0x720
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xc
	.byte	0x4d
	.byte	0xb
	.4byte	0x74f
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0xc
	.byte	0x4f
	.byte	0xb
	.4byte	0x6c0
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.4byte	0x3db
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0xc
	.byte	0x2d
	.byte	0x1d
	.4byte	0x565
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x50
	.byte	0xc
	.byte	0x52
	.4byte	0x565
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0xc
	.byte	0x53
	.byte	0xb
	.4byte	0x76d
	.byte	0
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xc
	.byte	0x54
	.byte	0xb
	.4byte	0x6c0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xc
	.byte	0x55
	.byte	0xf
	.4byte	0x78b
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xc
	.byte	0x56
	.byte	0xf
	.4byte	0x7a9
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0xc
	.byte	0x57
	.byte	0xd
	.4byte	0x7c7
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0xc
	.byte	0x58
	.byte	0xb
	.4byte	0x6c0
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0xc
	.byte	0x59
	.byte	0xb
	.4byte	0x7ea
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0xc
	.byte	0x5a
	.byte	0xb
	.4byte	0x803
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0xc
	.byte	0x5b
	.byte	0xb
	.4byte	0x821
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xc
	.byte	0x5c
	.byte	0x12
	.4byte	0x83f
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0xc
	.byte	0x5d
	.byte	0x15
	.4byte	0x85d
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0xc
	.byte	0x5e
	.byte	0xb
	.4byte	0x876
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0xc
	.byte	0x5f
	.byte	0xb
	.4byte	0x803
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0xc
	.byte	0x60
	.byte	0xb
	.4byte	0x803
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0xc
	.byte	0x61
	.byte	0xc
	.4byte	0x88b
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0xc
	.byte	0x62
	.byte	0xc
	.4byte	0x8a4
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0xc
	.byte	0x63
	.byte	0xc
	.4byte	0x8be
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xc
	.byte	0x64
	.byte	0xb
	.4byte	0x720
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0xc
	.byte	0x65
	.byte	0xb
	.4byte	0x8e1
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0xc
	.byte	0x66
	.byte	0xb
	.4byte	0x76d
	.byte	0x4c
	.byte	0
	.uleb128 0xf
	.4byte	0x454
	.uleb128 0x1c
	.4byte	.LASF145
	.byte	0x4
	.byte	0xc
	.byte	0x2f
	.byte	0x7
	.4byte	0x58e
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x30
	.byte	0x17
	.4byte	0x58e
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x31
	.byte	0x15
	.4byte	0x593
	.byte	0
	.uleb128 0x4
	.4byte	0x3cf
	.uleb128 0x4
	.4byte	0x448
	.uleb128 0xd
	.byte	0x14
	.byte	0xc
	.byte	0x35
	.4byte	0x5ee
	.uleb128 0x15
	.string	"ops"
	.byte	0xc
	.byte	0x36
	.byte	0x17
	.4byte	0x56a
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0xc
	.byte	0x37
	.byte	0xb
	.4byte	0x114
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0xc
	.byte	0x38
	.byte	0xb
	.4byte	0x122
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0xc
	.byte	0x39
	.byte	0x9
	.4byte	0x82
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0xc
	.byte	0x3a
	.byte	0xd
	.4byte	0x15c
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0xc
	.byte	0x3b
	.byte	0xd
	.4byte	0x15c
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0xc
	.byte	0x3c
	.byte	0x3
	.4byte	0x598
	.uleb128 0xd
	.byte	0xc
	.byte	0xc
	.byte	0x3e
	.4byte	0x62a
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0xc
	.byte	0x3f
	.byte	0xe
	.4byte	0x62a
	.byte	0
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0xc
	.byte	0x40
	.byte	0xb
	.4byte	0x114
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0xc
	.byte	0x41
	.byte	0xc
	.4byte	0x89
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	0x5ee
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0xc
	.byte	0x42
	.byte	0x3
	.4byte	0x5fa
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0xc
	.byte	0x45
	.byte	0x10
	.4byte	0x647
	.uleb128 0x4
	.4byte	0x64c
	.uleb128 0x10
	.4byte	0x65c
	.uleb128 0x2
	.4byte	0x65c
	.uleb128 0x2
	.4byte	0x114
	.byte	0
	.uleb128 0x4
	.4byte	0x661
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x8
	.byte	0xd
	.byte	0x7
	.4byte	0x693
	.uleb128 0x15
	.string	"fd"
	.byte	0xd
	.byte	0x8
	.byte	0x9
	.4byte	0x82
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0xd
	.byte	0x9
	.byte	0xb
	.4byte	0x47
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0xd
	.byte	0xa
	.byte	0xb
	.4byte	0x47
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	0x82
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x62a
	.uleb128 0x2
	.4byte	0x6a7
	.byte	0
	.uleb128 0x4
	.4byte	0x62f
	.uleb128 0x4
	.4byte	0x693
	.uleb128 0x5
	.4byte	0x82
	.4byte	0x6c0
	.uleb128 0x2
	.4byte	0x6a7
	.byte	0
	.uleb128 0x4
	.4byte	0x6b1
	.uleb128 0x5
	.4byte	0x144
	.4byte	0x6de
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x114
	.uleb128 0x2
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	0x6c5
	.uleb128 0x5
	.4byte	0x144
	.4byte	0x6fc
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x6fc
	.uleb128 0x2
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	0x701
	.uleb128 0x1d
	.uleb128 0x4
	.4byte	0x6e3
	.uleb128 0x5
	.4byte	0x82
	.4byte	0x720
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x82
	.uleb128 0x2
	.4byte	0x68
	.byte	0
	.uleb128 0x4
	.4byte	0x707
	.uleb128 0x5
	.4byte	0x82
	.4byte	0x748
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x748
	.uleb128 0x2
	.4byte	0x63b
	.uleb128 0x2
	.4byte	0x65c
	.uleb128 0x2
	.4byte	0x114
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF114
	.uleb128 0x4
	.4byte	0x725
	.uleb128 0x5
	.4byte	0x82
	.4byte	0x76d
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x82
	.byte	0
	.uleb128 0x4
	.4byte	0x754
	.uleb128 0x5
	.4byte	0x144
	.4byte	0x78b
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x122
	.uleb128 0x2
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	0x772
	.uleb128 0x5
	.4byte	0x144
	.4byte	0x7a9
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	0x790
	.uleb128 0x5
	.4byte	0x138
	.4byte	0x7c7
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x138
	.uleb128 0x2
	.4byte	0x82
	.byte	0
	.uleb128 0x4
	.4byte	0x7ae
	.uleb128 0x5
	.4byte	0x82
	.4byte	0x7e5
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x7e5
	.byte	0
	.uleb128 0x4
	.4byte	0x200
	.uleb128 0x4
	.4byte	0x7cc
	.uleb128 0x5
	.4byte	0x82
	.4byte	0x803
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x133
	.byte	0
	.uleb128 0x4
	.4byte	0x7ef
	.uleb128 0x5
	.4byte	0x82
	.4byte	0x821
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x133
	.byte	0
	.uleb128 0x4
	.4byte	0x808
	.uleb128 0x5
	.4byte	0x83a
	.4byte	0x83a
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x133
	.byte	0
	.uleb128 0x4
	.4byte	0x3c3
	.uleb128 0x4
	.4byte	0x826
	.uleb128 0x5
	.4byte	0x858
	.4byte	0x858
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x83a
	.byte	0
	.uleb128 0x4
	.4byte	0x394
	.uleb128 0x4
	.4byte	0x844
	.uleb128 0x5
	.4byte	0x82
	.4byte	0x876
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x83a
	.byte	0
	.uleb128 0x4
	.4byte	0x862
	.uleb128 0x10
	.4byte	0x88b
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x83a
	.byte	0
	.uleb128 0x4
	.4byte	0x87b
	.uleb128 0x5
	.4byte	0x55
	.4byte	0x8a4
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x83a
	.byte	0
	.uleb128 0x4
	.4byte	0x890
	.uleb128 0x10
	.4byte	0x8be
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x83a
	.uleb128 0x2
	.4byte	0x55
	.byte	0
	.uleb128 0x4
	.4byte	0x8a9
	.uleb128 0x5
	.4byte	0x82
	.4byte	0x8dc
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x8dc
	.byte	0
	.uleb128 0x4
	.4byte	0x2d3
	.uleb128 0x4
	.4byte	0x8c3
	.uleb128 0x1e
	.4byte	.LASF135
	.byte	0xf
	.byte	0xf
	.byte	0x1e
	.4byte	0x443
	.uleb128 0x1f
	.byte	0x7
	.byte	0x1
	.4byte	0x40
	.byte	0xe
	.byte	0xb
	.byte	0xe
	.4byte	0x925
	.uleb128 0xa
	.4byte	.LASF115
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF116
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF117
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF118
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF119
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF120
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0xe
	.byte	0x15
	.byte	0x3
	.4byte	0x8f2
	.uleb128 0xd
	.byte	0xc
	.byte	0xe
	.byte	0x1a
	.4byte	0x96e
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0xe
	.byte	0x1b
	.byte	0xd
	.4byte	0x15c
	.byte	0
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0xe
	.byte	0x1c
	.byte	0x13
	.4byte	0x925
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0xe
	.byte	0x1d
	.byte	0xb
	.4byte	0x114
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0xe
	.byte	0x1e
	.byte	0xd
	.4byte	0x15c
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0xe
	.byte	0x1f
	.byte	0x3
	.4byte	0x931
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.4byte	.LASF127
	.uleb128 0x20
	.4byte	0x8e6
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.uleb128 0x5
	.byte	0x3
	.4byte	gpio_ops
	.uleb128 0x8
	.4byte	.LASF128
	.byte	0x6d
	.byte	0x5
	.4byte	0x82
	.4byte	0x9a9
	.uleb128 0x2
	.4byte	0x9a9
	.uleb128 0x2
	.4byte	0x925
	.byte	0
	.uleb128 0x4
	.4byte	0x96e
	.uleb128 0x8
	.4byte	.LASF129
	.byte	0x64
	.byte	0x9
	.4byte	0x150
	.4byte	0x9c8
	.uleb128 0x2
	.4byte	0x9a9
	.uleb128 0x2
	.4byte	0x168
	.byte	0
	.uleb128 0x8
	.4byte	.LASF130
	.byte	0x59
	.byte	0x9
	.4byte	0x150
	.4byte	0x9dd
	.uleb128 0x2
	.4byte	0x9a9
	.byte	0
	.uleb128 0x8
	.4byte	.LASF131
	.byte	0x44
	.byte	0x9
	.4byte	0x150
	.4byte	0x9f2
	.uleb128 0x2
	.4byte	0x9a9
	.byte	0
	.uleb128 0x8
	.4byte	.LASF132
	.byte	0x4f
	.byte	0x9
	.4byte	0x150
	.4byte	0xa07
	.uleb128 0x2
	.4byte	0x9a9
	.byte	0
	.uleb128 0x8
	.4byte	.LASF133
	.byte	0x9b
	.byte	0x9
	.4byte	0x150
	.4byte	0xa1c
	.uleb128 0x2
	.4byte	0x9a9
	.byte	0
	.uleb128 0x8
	.4byte	.LASF134
	.byte	0x39
	.byte	0x9
	.4byte	0x150
	.4byte	0xa31
	.uleb128 0x2
	.4byte	0x9a9
	.byte	0
	.uleb128 0xe
	.4byte	.LASF137
	.byte	0x9e
	.byte	0x5
	.4byte	0x82
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa9
	.uleb128 0x7
	.string	"fp"
	.byte	0x9e
	.byte	0x1c
	.4byte	0x6a7
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x7
	.string	"cmd"
	.byte	0x9e
	.byte	0x24
	.4byte	0x82
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x7
	.string	"arg"
	.byte	0x9e
	.byte	0x47
	.4byte	0x68
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x16
	.string	"ret"
	.byte	0xa0
	.4byte	0x82
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0xa1
	.byte	0x11
	.4byte	0x9a9
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0xc
	.4byte	.LVL36
	.4byte	0x98f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF138
	.byte	0x79
	.byte	0x9
	.4byte	0x144
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb29
	.uleb128 0x7
	.string	"fp"
	.byte	0x79
	.byte	0x1f
	.4byte	0x6a7
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x7
	.string	"buf"
	.byte	0x79
	.byte	0x29
	.4byte	0x114
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0x79
	.byte	0x45
	.4byte	0x89
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x12
	.string	"ret"
	.byte	0x7b
	.4byte	0x82
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x7c
	.byte	0x11
	.4byte	0x9a9
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x21
	.4byte	.LVL24
	.4byte	0x9ae
	.byte	0
	.uleb128 0xe
	.4byte	.LASF140
	.byte	0x52
	.byte	0x9
	.4byte	0x144
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbce
	.uleb128 0x7
	.string	"fp"
	.byte	0x52
	.byte	0x20
	.4byte	0x6a7
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x7
	.string	"buf"
	.byte	0x52
	.byte	0x30
	.4byte	0x6fc
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0x52
	.byte	0x4c
	.4byte	0x89
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x12
	.string	"ret"
	.byte	0x54
	.4byte	0x82
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0x55
	.byte	0xd
	.4byte	0x15c
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x56
	.byte	0x11
	.4byte	0x9a9
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0xc
	.4byte	.LVL13
	.4byte	0x9f2
	.uleb128 0xc
	.4byte	.LVL14
	.4byte	0x9dd
	.uleb128 0xc
	.4byte	.LVL15
	.4byte	0x9c8
	.byte	0
	.uleb128 0xe
	.4byte	.LASF142
	.byte	0x33
	.byte	0x5
	.4byte	0x82
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc28
	.uleb128 0x7
	.string	"fp"
	.byte	0x33
	.byte	0x1c
	.4byte	0x6a7
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x12
	.string	"ret"
	.byte	0x35
	.4byte	0x82
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x36
	.byte	0x11
	.4byte	0x9a9
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0xc
	.4byte	.LVL8
	.4byte	0xa07
	.byte	0
	.uleb128 0x22
	.4byte	.LASF146
	.byte	0x1
	.byte	0x19
	.byte	0x5
	.4byte	0x82
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF143
	.byte	0x19
	.byte	0x2c
	.4byte	0x62a
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x7
	.string	"fp"
	.byte	0x19
	.byte	0x3b
	.4byte	0x6a7
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x16
	.string	"ret"
	.byte	0x1b
	.4byte	0x82
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x1c
	.byte	0x11
	.4byte	0x9a9
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xc
	.4byte	.LVL3
	.4byte	0xa1c
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
	.uleb128 0x5
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
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
	.sleb128 1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x1c
	.uleb128 0x21
	.sleb128 -1
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x17
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
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
.LVUS17:
	.uleb128 0
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0
.LLST17:
	.byte	0x6
	.4byte	.LVL33
	.byte	0x4
	.uleb128 .LVL33-.LVL33
	.uleb128 .LVL34-.LVL33
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL34-.LVL33
	.uleb128 .LFE9-.LVL33
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
.LVUS18:
	.uleb128 0
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0xf
	.uleb128 0xf
	.uleb128 0x11
	.uleb128 0x11
	.uleb128 0x12
	.uleb128 0x12
	.uleb128 0x14
	.uleb128 0x14
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0
.LLST18:
	.byte	0x6
	.4byte	.LVL33
	.byte	0x4
	.uleb128 .LVL33-.LVL33
	.uleb128 .LVL35-.LVL33
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL35-.LVL33
	.uleb128 .LVL36-.LVL33
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
	.uleb128 .LVL36-.LVL33
	.uleb128 .LVL37-.LVL33
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL37-.LVL33
	.uleb128 .LVL38-.LVL33
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
	.uleb128 .LVL38-.LVL33
	.uleb128 .LVL39-.LVL33
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL39-.LVL33
	.uleb128 .LVL40-.LVL33
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
	.uleb128 .LVL40-.LVL33
	.uleb128 .LFE9-.LVL33
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS19:
	.uleb128 0
	.uleb128 0xf
	.uleb128 0xf
	.uleb128 0xf
	.uleb128 0xf
	.uleb128 0
.LLST19:
	.byte	0x6
	.4byte	.LVL33
	.byte	0x4
	.uleb128 .LVL33-.LVL33
	.uleb128 .LVL36-1-.LVL33
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL36-1-.LVL33
	.uleb128 .LVL36-.LVL33
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
	.uleb128 .LVL36-.LVL33
	.uleb128 .LFE9-.LVL33
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS20:
	.uleb128 0x3
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0xf
	.uleb128 0xf
	.uleb128 0x15
.LLST20:
	.byte	0x6
	.4byte	.LVL33
	.byte	0x4
	.uleb128 .LVL33-.LVL33
	.uleb128 .LVL34-.LVL33
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL34-.LVL33
	.uleb128 .LVL36-1-.LVL33
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL36-.LVL33
	.uleb128 .LVL40-.LVL33
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS12:
	.uleb128 0
	.uleb128 0x7
	.uleb128 0x7
	.uleb128 0x1f
	.uleb128 0x1f
	.uleb128 0x20
	.uleb128 0x20
	.uleb128 0
.LLST12:
	.byte	0x6
	.4byte	.LVL19
	.byte	0x4
	.uleb128 .LVL19-.LVL19
	.uleb128 .LVL20-.LVL19
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL20-.LVL19
	.uleb128 .LVL26-.LVL19
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
	.uleb128 .LVL26-.LVL19
	.uleb128 .LVL27-.LVL19
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL27-.LVL19
	.uleb128 .LFE8-.LVL19
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
.LVUS13:
	.uleb128 0
	.uleb128 0x1c
	.uleb128 0x1c
	.uleb128 0x1f
	.uleb128 0x1f
	.uleb128 0x21
	.uleb128 0x21
	.uleb128 0x24
	.uleb128 0x24
	.uleb128 0
.LLST13:
	.byte	0x6
	.4byte	.LVL19
	.byte	0x4
	.uleb128 .LVL19-.LVL19
	.uleb128 .LVL24-1-.LVL19
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL24-1-.LVL19
	.uleb128 .LVL26-.LVL19
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
	.uleb128 .LVL26-.LVL19
	.uleb128 .LVL28-.LVL19
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL28-.LVL19
	.uleb128 .LVL30-.LVL19
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
	.uleb128 .LVL30-.LVL19
	.uleb128 .LFE8-.LVL19
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS14:
	.uleb128 0
	.uleb128 0x1c
	.uleb128 0x1c
	.uleb128 0x1f
	.uleb128 0x1f
	.uleb128 0x21
	.uleb128 0x21
	.uleb128 0x24
	.uleb128 0x24
	.uleb128 0
.LLST14:
	.byte	0x6
	.4byte	.LVL19
	.byte	0x4
	.uleb128 .LVL19-.LVL19
	.uleb128 .LVL24-1-.LVL19
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL24-1-.LVL19
	.uleb128 .LVL26-.LVL19
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
	.uleb128 .LVL26-.LVL19
	.uleb128 .LVL28-.LVL19
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL28-.LVL19
	.uleb128 .LVL30-.LVL19
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
	.uleb128 .LVL30-.LVL19
	.uleb128 .LFE8-.LVL19
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS15:
	.uleb128 0x2
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x1a
	.uleb128 0x1c
	.uleb128 0x1e
	.uleb128 0x1f
	.uleb128 0x21
	.uleb128 0x21
	.uleb128 0x22
	.uleb128 0x22
	.uleb128 0x24
	.uleb128 0x24
	.uleb128 0x27
	.uleb128 0x27
	.uleb128 0x28
.LLST15:
	.byte	0x6
	.4byte	.LVL19
	.byte	0x4
	.uleb128 .LVL19-.LVL19
	.uleb128 .LVL22-.LVL19
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL22-.LVL19
	.uleb128 .LVL23-.LVL19
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL24-.LVL19
	.uleb128 .LVL25-.LVL19
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL26-.LVL19
	.uleb128 .LVL28-.LVL19
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL28-.LVL19
	.uleb128 .LVL29-.LVL19
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL29-.LVL19
	.uleb128 .LVL30-.LVL19
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL30-.LVL19
	.uleb128 .LVL31-.LVL19
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL31-.LVL19
	.uleb128 .LVL32-.LVL19
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS16:
	.uleb128 0x3
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0x1c
	.uleb128 0x1f
	.uleb128 0x21
	.uleb128 0x24
	.uleb128 0x28
.LLST16:
	.byte	0x6
	.4byte	.LVL19
	.byte	0x4
	.uleb128 .LVL19-.LVL19
	.uleb128 .LVL21-.LVL19
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL21-.LVL19
	.uleb128 .LVL24-1-.LVL19
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL26-.LVL19
	.uleb128 .LVL28-.LVL19
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL30-.LVL19
	.uleb128 .LVL32-.LVL19
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS6:
	.uleb128 0
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0x17
	.uleb128 0x17
	.uleb128 0x18
	.uleb128 0x18
	.uleb128 0
.LLST6:
	.byte	0x6
	.4byte	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL11-.LVL10
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL11-.LVL10
	.uleb128 .LVL15-.LVL10
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
	.uleb128 .LVL15-.LVL10
	.uleb128 .LVL16-.LVL10
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL16-.LVL10
	.uleb128 .LFE7-.LVL10
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
.LVUS7:
	.uleb128 0
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x17
	.uleb128 0x17
	.uleb128 0x17
	.uleb128 0x17
	.uleb128 0
.LLST7:
	.byte	0x6
	.4byte	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL13-1-.LVL10
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL13-1-.LVL10
	.uleb128 .LVL13-.LVL10
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
	.uleb128 .LVL13-.LVL10
	.uleb128 .LVL14-1-.LVL10
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL14-1-.LVL10
	.uleb128 .LVL14-.LVL10
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
	.uleb128 .LVL14-.LVL10
	.uleb128 .LVL15-1-.LVL10
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL15-1-.LVL10
	.uleb128 .LVL15-.LVL10
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
	.uleb128 .LVL15-.LVL10
	.uleb128 .LFE7-.LVL10
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x17
	.uleb128 0x17
	.uleb128 0x17
	.uleb128 0x17
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL13-1-.LVL10
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL13-1-.LVL10
	.uleb128 .LVL13-.LVL10
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
	.uleb128 .LVL13-.LVL10
	.uleb128 .LVL14-1-.LVL10
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL14-1-.LVL10
	.uleb128 .LVL14-.LVL10
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
	.uleb128 .LVL14-.LVL10
	.uleb128 .LVL15-1-.LVL10
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL15-1-.LVL10
	.uleb128 .LVL15-.LVL10
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
	.uleb128 .LVL15-.LVL10
	.uleb128 .LFE7-.LVL10
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS9:
	.uleb128 0x2
	.uleb128 0x1a
	.uleb128 0x1a
	.uleb128 0
.LLST9:
	.byte	0x6
	.4byte	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL18-.LVL10
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL18-.LVL10
	.uleb128 .LFE7-.LVL10
	.uleb128 0x3
	.byte	0x9
	.byte	0xea
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 0x10
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x17
.LLST10:
	.byte	0x6
	.4byte	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL13-1-.LVL12
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL13-.LVL12
	.uleb128 .LVL14-1-.LVL12
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL14-.LVL12
	.uleb128 .LVL15-1-.LVL12
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS11:
	.uleb128 0x4
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x17
	.uleb128 0x17
	.uleb128 0x19
	.uleb128 0x19
	.uleb128 0x1a
	.uleb128 0x1a
	.uleb128 0
.LLST11:
	.byte	0x6
	.4byte	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL11-.LVL10
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.LVL10
	.uleb128 .LVL13-1-.LVL10
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL13-.LVL10
	.uleb128 .LVL14-1-.LVL10
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL14-.LVL10
	.uleb128 .LVL15-1-.LVL10
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL15-.LVL10
	.uleb128 .LVL17-.LVL10
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL17-.LVL10
	.uleb128 .LVL18-.LVL10
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL18-.LVL10
	.uleb128 .LFE7-.LVL10
	.uleb128 0xc
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL6-.LVL5
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL6-.LVL5
	.uleb128 .LFE6-.LVL5
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
	.uleb128 0x2
	.uleb128 0x12
	.uleb128 0x12
	.uleb128 0x13
.LLST4:
	.byte	0x8
	.4byte	.LVL5
	.uleb128 .LVL9-.LVL5
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x8
	.4byte	.LVL9
	.uleb128 .LVL9-.LVL9
	.uleb128 0x3
	.byte	0x9
	.byte	0xea
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 0x3
	.uleb128 0xd
	.uleb128 0xd
	.uleb128 0x11
.LLST5:
	.byte	0x6
	.4byte	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL7-.LVL5
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL5
	.uleb128 .LVL8-1-.LVL5
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0xf
	.uleb128 0xf
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
	.uleb128 .LVL3-.LVL0
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
	.uleb128 .LVL3-.LVL0
	.uleb128 .LVL4-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL4-.LVL0
	.uleb128 .LFE5-.LVL0
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
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL3-1-.LVL0
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL3-1-.LVL0
	.uleb128 .LVL3-.LVL0
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
	.uleb128 .LVL3-.LVL0
	.uleb128 .LFE5-.LVL0
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS2:
	.uleb128 0x3
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LVL3-1-.LVL0
	.uleb128 0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x4
	.uleb128 .LVL3-.LVL0
	.uleb128 .LFE5-.LVL0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
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
.LLRL21:
	.byte	0x7
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
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
	.uleb128 0xa
	.4byte	.LASF1
	.4byte	.LASF147
	.4byte	.LASF148
	.4byte	.LASF149
	.4byte	.LASF150
	.4byte	.LASF151
	.4byte	.LASF152
	.4byte	.LASF153
	.4byte	.LASF154
	.4byte	.LASF155
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x10
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF156
	.byte	0x1
	.4byte	.LASF157
	.byte	0x7
	.4byte	.LASF158
	.byte	0x6
	.4byte	.LASF159
	.byte	0x8
	.4byte	.LASF160
	.byte	0x9
	.4byte	.LASF161
	.byte	0x6
	.4byte	.LASF162
	.byte	0x8
	.4byte	.LASF163
	.byte	0x8
	.4byte	.LASF164
	.byte	0x8
	.4byte	.LASF165
	.byte	0x8
	.4byte	.LASF166
	.byte	0x4
	.4byte	.LASF167
	.byte	0x4
	.4byte	.LASF168
	.byte	0x5
	.4byte	.LASF169
	.byte	0x3
	.4byte	.LASF170
	.byte	0x2
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x30
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
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x1f
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0xf
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x1a
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x1c
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE5
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM17
	.byte	0x4a
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x24
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x3
	.sleb128 -13
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x1f
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE6
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM37
	.byte	0x69
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0x19
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM55-.LM54
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM57-.LM56
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM58-.LM57
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM59-.LM58
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM60-.LM59
	.byte	0x3
	.sleb128 -21
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM61-.LM60
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM62-.LM61
	.byte	0x24
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM63-.LM62
	.byte	0x6
	.byte	0x2c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM64-.LM63
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE7
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM65
	.byte	0x90
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM66-.LM65
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM67-.LM66
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM68-.LM67
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM69-.LM68
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM70-.LM69
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM71-.LM70
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x2d
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM72-.LM71
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -22
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM73-.LM72
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM74-.LM73
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM75-.LM74
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM76-.LM75
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM77-.LM76
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM78-.LM77
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM79-.LM78
	.byte	0xd
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM80-.LM79
	.byte	0x21
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM81-.LM80
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM82-.LM81
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x2d
	.byte	0x9
	.2byte	.LM83-.LM82
	.byte	0x18
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM84-.LM83
	.byte	0x16
	.byte	0x5
	.uleb128 0x23
	.byte	0x9
	.2byte	.LM85-.LM84
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM86-.LM85
	.byte	0x1b
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM87-.LM86
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM88-.LM87
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM89-.LM88
	.byte	0x6
	.byte	0x3
	.sleb128 -19
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM90-.LM89
	.byte	0x2a
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM91-.LM90
	.byte	0x3
	.sleb128 -19
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM92-.LM91
	.byte	0x2a
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM93-.LM92
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM94-.LM93
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM95-.LM94
	.byte	0x22
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM96-.LM95
	.byte	0x10
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM97-.LM96
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM98-.LM97
	.byte	0x14
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM99-.LM98
	.byte	0x6
	.byte	0x20
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM100-.LM99
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM101-.LM100
	.byte	0x6
	.byte	0xd
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM102-.LM101
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM103-.LM102
	.byte	0x18
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM104-.LM103
	.byte	0x6
	.byte	0x20
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM105-.LM104
	.byte	0x6
	.byte	0x18
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
	.4byte	.LM106
	.byte	0xb5
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM107-.LM106
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM108-.LM107
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM109-.LM108
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM110-.LM109
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM111-.LM110
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM112-.LM111
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM113-.LM112
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM114-.LM113
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM115-.LM114
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM116-.LM115
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM117-.LM116
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM118-.LM117
	.byte	0x19
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM119-.LM118
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM120-.LM119
	.byte	0x1d
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM121-.LM120
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM122-.LM121
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM123-.LM122
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM124-.LM123
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM125-.LM124
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM126-.LM125
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM127-.LM126
	.byte	0x1e
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
.LASF71:
	.string	"aos_dirent_t"
.LASF105:
	.string	"inode_t"
.LASF132:
	.string	"hal_gpio_output_low"
.LASF74:
	.string	"aos_dir_t"
.LASF137:
	.string	"vfs_gpio_ioctl"
.LASF3:
	.string	"unsigned int"
.LASF55:
	.string	"st_blksize"
.LASF104:
	.string	"refs"
.LASF112:
	.string	"events"
.LASF89:
	.string	"opendir"
.LASF83:
	.string	"sync"
.LASF125:
	.string	"level"
.LASF25:
	.string	"__nlink_t"
.LASF65:
	.string	"f_ffree"
.LASF144:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF101:
	.string	"i_name"
.LASF146:
	.string	"vfs_gpio_open"
.LASF70:
	.string	"d_name"
.LASF21:
	.string	"__ino_t"
.LASF36:
	.string	"ino_t"
.LASF95:
	.string	"telldir"
.LASF142:
	.string	"vfs_gpio_close"
.LASF100:
	.string	"i_arg"
.LASF138:
	.string	"vfs_gpio_read"
.LASF87:
	.string	"unlink"
.LASF2:
	.string	"long long unsigned int"
.LASF56:
	.string	"st_blocks"
.LASF108:
	.string	"offset"
.LASF116:
	.string	"GPIO_CONFIG_MODE_OUTPUT"
.LASF107:
	.string	"f_arg"
.LASF99:
	.string	"i_fops"
.LASF140:
	.string	"vfs_gpio_write"
.LASF43:
	.string	"stat"
.LASF44:
	.string	"st_dev"
.LASF33:
	.string	"tv_nsec"
.LASF13:
	.string	"size_t"
.LASF22:
	.string	"__mode_t"
.LASF69:
	.string	"d_type"
.LASF114:
	.string	"_Bool"
.LASF49:
	.string	"st_gid"
.LASF94:
	.string	"rewinddir"
.LASF46:
	.string	"st_mode"
.LASF92:
	.string	"mkdir"
.LASF109:
	.string	"file_t"
.LASF47:
	.string	"st_nlink"
.LASF136:
	.string	"gpio_dev"
.LASF145:
	.string	"inode_ops_t"
.LASF127:
	.string	"float"
.LASF81:
	.string	"ioctl"
.LASF82:
	.string	"poll"
.LASF124:
	.string	"priv"
.LASF42:
	.string	"timespec"
.LASF26:
	.string	"char"
.LASF34:
	.string	"blkcnt_t"
.LASF110:
	.string	"poll_notify_t"
.LASF78:
	.string	"close"
.LASF113:
	.string	"revents"
.LASF28:
	.string	"ssize_t"
.LASF86:
	.string	"lseek"
.LASF30:
	.string	"uint8_t"
.LASF135:
	.string	"gpio_ops"
.LASF103:
	.string	"type"
.LASF31:
	.string	"time_t"
.LASF85:
	.string	"fs_ops"
.LASF58:
	.string	"statfs"
.LASF45:
	.string	"st_ino"
.LASF64:
	.string	"f_files"
.LASF10:
	.string	"long long int"
.LASF80:
	.string	"write"
.LASF59:
	.string	"f_type"
.LASF18:
	.string	"__dev_t"
.LASF37:
	.string	"dev_t"
.LASF62:
	.string	"f_bfree"
.LASF76:
	.string	"file_ops"
.LASF75:
	.string	"file_ops_t"
.LASF139:
	.string	"nbytes"
.LASF130:
	.string	"hal_gpio_output_toggle"
.LASF111:
	.string	"pollfd"
.LASF63:
	.string	"f_bavail"
.LASF66:
	.string	"f_fsid"
.LASF57:
	.string	"st_spare4"
.LASF141:
	.string	"write_buf"
.LASF97:
	.string	"access"
.LASF131:
	.string	"hal_gpio_output_high"
.LASF121:
	.string	"gpio_config_t"
.LASF88:
	.string	"rename"
.LASF14:
	.string	"long double"
.LASF20:
	.string	"__gid_t"
.LASF61:
	.string	"f_blocks"
.LASF39:
	.string	"gid_t"
.LASF12:
	.string	"__int_least64_t"
.LASF98:
	.string	"i_ops"
.LASF38:
	.string	"uid_t"
.LASF123:
	.string	"config"
.LASF93:
	.string	"rmdir"
.LASF91:
	.string	"closedir"
.LASF120:
	.string	"GPIO_CONFIG_PULL_DOWN"
.LASF6:
	.string	"short int"
.LASF53:
	.string	"st_mtim"
.LASF119:
	.string	"GPIO_CONFIG_PULL_UP"
.LASF102:
	.string	"i_flags"
.LASF8:
	.string	"long int"
.LASF117:
	.string	"GPIO_CONFIG_MODE_INPUT"
.LASF134:
	.string	"hal_gpio_init"
.LASF106:
	.string	"node"
.LASF90:
	.string	"readdir"
.LASF67:
	.string	"f_namelen"
.LASF16:
	.string	"__blksize_t"
.LASF19:
	.string	"__uid_t"
.LASF52:
	.string	"st_atim"
.LASF79:
	.string	"read"
.LASF72:
	.string	"dd_vfs_fd"
.LASF77:
	.string	"open"
.LASF133:
	.string	"hal_gpio_finalize"
.LASF32:
	.string	"tv_sec"
.LASF9:
	.string	"long unsigned int"
.LASF115:
	.string	"GPIO_CONFIG_MODE_AF"
.LASF29:
	.string	"int32_t"
.LASF122:
	.string	"port"
.LASF41:
	.string	"nlink_t"
.LASF128:
	.string	"hal_gpio_pulltype_set"
.LASF60:
	.string	"f_bsize"
.LASF5:
	.string	"unsigned char"
.LASF11:
	.string	"__uint32_t"
.LASF118:
	.string	"GPIO_CONFIG_PULL_NONE"
.LASF35:
	.string	"blksize_t"
.LASF126:
	.string	"gpio_dev_t"
.LASF51:
	.string	"st_size"
.LASF68:
	.string	"d_ino"
.LASF129:
	.string	"hal_gpio_input_get"
.LASF48:
	.string	"st_uid"
.LASF23:
	.string	"__off_t"
.LASF54:
	.string	"st_ctim"
.LASF24:
	.string	"_ssize_t"
.LASF73:
	.string	"dd_rsv"
.LASF4:
	.string	"signed char"
.LASF40:
	.string	"mode_t"
.LASF27:
	.string	"off_t"
.LASF7:
	.string	"short unsigned int"
.LASF96:
	.string	"seekdir"
.LASF15:
	.string	"__blkcnt_t"
.LASF17:
	.string	"_off_t"
.LASF50:
	.string	"st_rdev"
.LASF84:
	.string	"fs_ops_t"
.LASF143:
	.string	"inode"
	.section	.debug_line_str,"MS",@progbits,1
.LASF157:
	.string	"_default_types.h"
.LASF162:
	.string	"_timeval.h"
.LASF149:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/hal/soc"
.LASF154:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys"
.LASF148:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/device"
.LASF155:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include"
.LASF168:
	.string	"yloop_types.h"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/vfs"
.LASF147:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/device"
.LASF153:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine"
.LASF165:
	.string	"stat.h"
.LASF161:
	.string	"stdint-gcc.h"
.LASF164:
	.string	"types.h"
.LASF156:
	.string	"vfs_gpio.c"
.LASF163:
	.string	"_timespec.h"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/device/vfs_gpio.c"
.LASF160:
	.string	"stdio.h"
.LASF166:
	.string	"vfs_dir.h"
.LASF158:
	.string	"stddef.h"
.LASF167:
	.string	"vfs_inode.h"
.LASF152:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF159:
	.string	"_types.h"
.LASF150:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include"
.LASF151:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include"
.LASF169:
	.string	"gpio.h"
.LASF170:
	.string	"vfs_gpio.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
