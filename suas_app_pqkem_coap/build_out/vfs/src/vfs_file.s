	.file	"vfs_file.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.new_file,"ax",@progbits
	.align	1
	.globl	new_file
	.type	new_file, @function
new_file:
.LVL0:
.LFB3:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
.LM4:
.LM5:
	lui	a4,%hi(files)
.LM6:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	addi	a4,a4,%lo(files)
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
.LM7:
	li	a5,0
	mv	s0,a4
.LM8:
	li	a3,60
.LVL1:
.L4:
.LM9:
.LM10:
.LM11:
	lw	a2,0(a4)
	bne	a2,zero,.L2
.LM12:
	li	a4,12
	mul	a5,a5,a4
.LVL2:
.LM13:
	add	s0,s0,a5
.LM14:
.LDL1:
.LM15:
.LM16:
	sw	a0,0(s0)
.LM17:
.LM18:
	sw	zero,4(s0)
.LM19:
.LM20:
	sw	zero,8(s0)
.LM21:
	call	inode_ref
.LVL3:
.LM22:
.L1:
.LM23:
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL4:
.L2:
	.cfi_restore_state
.LM24:
	addi	a5,a5,1
.LVL5:
.LM25:
	addi	a4,a4,12
	bne	a5,a3,.L4
.LM26:
	li	s0,0
	j	.L1
	.cfi_endproc
.LFE3:
	.size	new_file, .-new_file
	.section	.text.del_file,"ax",@progbits
	.align	1
	.globl	del_file
	.type	del_file, @function
del_file:
.LVL6:
.LFB4:
.LM27:
	.cfi_startproc
.LM28:
.LM29:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
.LM30:
	mv	s0,a0
.LM31:
	lw	a0,0(a0)
.LVL7:
.LM32:
	call	inode_unref
.LVL8:
.LM33:
.LM34:
	sw	zero,0(s0)
.LM35:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL9:
.LM36:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	del_file, .-del_file
	.section	.text.get_fd,"ax",@progbits
	.align	1
	.globl	get_fd
	.type	get_fd, @function
get_fd:
.LVL10:
.LFB5:
.LM37:
	.cfi_startproc
.LM38:
.LM39:
	lui	a5,%hi(files)
	addi	a5,a5,%lo(files)
	sub	a0,a0,a5
.LVL11:
.LM40:
	li	a5,-1431654400
	addi	a5,a5,-1365
	srai	a0,a0,2
.LVL12:
.LM41:
	mul	a0,a0,a5
.LM42:
	addi	a0,a0,2
	ret
	.cfi_endproc
.LFE5:
	.size	get_fd, .-get_fd
	.section	.text.get_file,"ax",@progbits
	.align	1
	.globl	get_file
	.type	get_file, @function
get_file:
.LVL13:
.LFB6:
.LM43:
	.cfi_startproc
.LM44:
.LM45:
.LM46:
	addi	a0,a0,-2
.LVL14:
.LM47:
.LM48:
.LM49:
	li	a5,59
	bgtu	a0,a5,.L12
.LM50:
.LVL15:
.LM51:
.LM52:
	li	a4,12
	mul	a0,a0,a4
.LVL16:
.LM53:
	lui	a5,%hi(files)
	addi	a5,a5,%lo(files)
	add	a5,a5,a0
	lw	a0,0(a5)
.LVL17:
.LM54:
	beq	a0,zero,.L10
.LM55:
	mv	a0,a5
	ret
.LVL18:
.L12:
.LM56:
	li	a0,0
.LVL19:
.L10:
.LM57:
	ret
	.cfi_endproc
.LFE6:
	.size	get_file, .-get_file
	.section	.bss.files,"aw",@nobits
	.align	2
	.type	files, @object
	.size	files, 720
files:
	.zero	720
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9f7
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x12
	.4byte	.LASF118
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL7
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
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x32
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.4byte	.LASF5
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF6
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x89
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0xc8
	.byte	0x17
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x1e
	.byte	0xe
	.4byte	0x76
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x22
	.byte	0xe
	.4byte	0x76
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.4byte	0x76
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x38
	.byte	0xf
	.4byte	0x68
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3c
	.byte	0x18
	.4byte	0x6f
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x3f
	.byte	0x18
	.4byte	0x6f
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x4b
	.byte	0x18
	.4byte	0x6f
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x5a
	.byte	0x14
	.4byte	0x7d
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
	.4byte	0x39
	.uleb128 0x14
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0xd5
	.byte	0x18
	.4byte	0x6f
	.uleb128 0x4
	.4byte	0x127
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF26
	.uleb128 0x9
	.4byte	0x127
	.uleb128 0x4
	.4byte	0x12e
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x61
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x2a
	.byte	0x19
	.4byte	0x90
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x10
	.byte	0x7
	.byte	0x2f
	.4byte	0x177
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x7
	.byte	0x30
	.byte	0x9
	.4byte	0x144
	.byte	0
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x7
	.byte	0x31
	.byte	0x7
	.4byte	0x76
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x8
	.byte	0x61
	.byte	0x14
	.4byte	0x9c
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x8
	.byte	0x66
	.byte	0x15
	.4byte	0xa8
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x8
	.byte	0x89
	.byte	0x11
	.4byte	0xe4
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x8
	.byte	0x9b
	.byte	0x11
	.4byte	0xfc
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x8
	.byte	0x9f
	.byte	0x11
	.4byte	0xc0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x8
	.byte	0xa3
	.byte	0x11
	.4byte	0xcc
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x8
	.byte	0xa7
	.byte	0x11
	.4byte	0xd8
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x8
	.byte	0xb6
	.byte	0x12
	.4byte	0x108
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x8
	.byte	0xbb
	.byte	0x12
	.4byte	0xf0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x8
	.byte	0xc0
	.byte	0x13
	.4byte	0x116
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x58
	.byte	0x9
	.byte	0x1b
	.4byte	0x2b2
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x9
	.byte	0x1d
	.byte	0x9
	.4byte	0x1a7
	.byte	0
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x9
	.byte	0x1e
	.byte	0x9
	.4byte	0x18f
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x9
	.byte	0x1f
	.byte	0xa
	.4byte	0x1d7
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x9
	.byte	0x20
	.byte	0xb
	.4byte	0x1e3
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x9
	.byte	0x21
	.byte	0x9
	.4byte	0x1b3
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x9
	.byte	0x22
	.byte	0x9
	.4byte	0x1bf
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x9
	.byte	0x23
	.byte	0x9
	.4byte	0x1a7
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x9
	.byte	0x24
	.byte	0x9
	.4byte	0x19b
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x9
	.byte	0x2a
	.byte	0x13
	.4byte	0x150
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x9
	.byte	0x2b
	.byte	0x13
	.4byte	0x150
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x9
	.byte	0x2c
	.byte	0x13
	.4byte	0x150
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x9
	.byte	0x2d
	.byte	0xd
	.4byte	0x183
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x9
	.byte	0x2e
	.byte	0xc
	.4byte	0x177
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x9
	.byte	0x30
	.byte	0x8
	.4byte	0x2b2
	.byte	0x50
	.byte	0
	.uleb128 0xa
	.4byte	0x76
	.4byte	0x2c2
	.uleb128 0xe
	.4byte	0x32
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x24
	.byte	0xa
	.byte	0x4
	.4byte	0x344
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0xa
	.byte	0x5
	.byte	0xa
	.4byte	0x76
	.byte	0
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0xa
	.byte	0x6
	.byte	0xa
	.4byte	0x76
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0xa
	.byte	0x7
	.byte	0xa
	.4byte	0x76
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0xa
	.byte	0x8
	.byte	0xa
	.4byte	0x76
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0xa
	.byte	0x9
	.byte	0xa
	.4byte	0x76
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0xa
	.byte	0xa
	.byte	0xa
	.4byte	0x76
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0xa
	.byte	0xb
	.byte	0xa
	.4byte	0x76
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.4byte	0x76
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0xa
	.byte	0xd
	.byte	0xa
	.4byte	0x76
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0xa
	.byte	0x10
	.4byte	0x374
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0xa
	.byte	0x11
	.byte	0x9
	.4byte	0x39
	.byte	0
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0xa
	.byte	0x12
	.byte	0xd
	.4byte	0x138
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0xa
	.byte	0x13
	.byte	0xa
	.4byte	0x374
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	0x127
	.4byte	0x383
	.uleb128 0x15
	.4byte	0x32
	.byte	0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0xa
	.byte	0x14
	.byte	0x3
	.4byte	0x344
	.uleb128 0x8
	.byte	0x8
	.byte	0xa
	.byte	0x16
	.4byte	0x3b2
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0xa
	.byte	0x17
	.byte	0x9
	.4byte	0x39
	.byte	0
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0xa
	.byte	0x18
	.byte	0x9
	.4byte	0x39
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xa
	.byte	0x19
	.byte	0x3
	.4byte	0x38f
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0xb
	.byte	0x2c
	.byte	0x1f
	.4byte	0x432
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x1c
	.byte	0xb
	.byte	0x46
	.4byte	0x432
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0xb
	.byte	0x47
	.byte	0xb
	.4byte	0x66f
	.byte	0
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0xb
	.byte	0x48
	.byte	0xb
	.4byte	0x683
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xb
	.byte	0x49
	.byte	0xf
	.4byte	0x6a1
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xb
	.byte	0x4a
	.byte	0xf
	.4byte	0x6c5
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xb
	.byte	0x4b
	.byte	0xb
	.4byte	0x6e3
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xb
	.byte	0x4d
	.byte	0xb
	.4byte	0x712
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xb
	.byte	0x4f
	.byte	0xb
	.4byte	0x683
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.4byte	0x3ca
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0xb
	.byte	0x2d
	.byte	0x1d
	.4byte	0x554
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0x50
	.byte	0xb
	.byte	0x52
	.4byte	0x554
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0xb
	.byte	0x53
	.byte	0xb
	.4byte	0x730
	.byte	0
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0xb
	.byte	0x54
	.byte	0xb
	.4byte	0x683
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xb
	.byte	0x55
	.byte	0xf
	.4byte	0x74e
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xb
	.byte	0x56
	.byte	0xf
	.4byte	0x76c
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0xb
	.byte	0x57
	.byte	0xd
	.4byte	0x78a
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xb
	.byte	0x58
	.byte	0xb
	.4byte	0x683
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.4byte	0x7ad
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0xb
	.byte	0x5a
	.byte	0xb
	.4byte	0x7c6
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0xb
	.byte	0x5b
	.byte	0xb
	.4byte	0x7e4
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0xb
	.byte	0x5c
	.byte	0x12
	.4byte	0x802
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xb
	.byte	0x5d
	.byte	0x15
	.4byte	0x820
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0xb
	.byte	0x5e
	.byte	0xb
	.4byte	0x839
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0xb
	.byte	0x5f
	.byte	0xb
	.4byte	0x7c6
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0xb
	.byte	0x60
	.byte	0xb
	.4byte	0x7c6
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0xb
	.byte	0x61
	.byte	0xc
	.4byte	0x84e
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0xb
	.byte	0x62
	.byte	0xc
	.4byte	0x867
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0xb
	.byte	0x63
	.byte	0xc
	.4byte	0x881
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xb
	.byte	0x64
	.byte	0xb
	.4byte	0x6e3
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0xb
	.byte	0x65
	.byte	0xb
	.4byte	0x8a4
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0xb
	.byte	0x66
	.byte	0xb
	.4byte	0x730
	.byte	0x4c
	.byte	0
	.uleb128 0x9
	.4byte	0x443
	.uleb128 0x16
	.4byte	.LASF119
	.byte	0x4
	.byte	0xb
	.byte	0x2f
	.byte	0x7
	.4byte	0x57d
	.uleb128 0xf
	.4byte	.LASF97
	.byte	0x30
	.byte	0x17
	.4byte	0x57d
	.uleb128 0xf
	.4byte	.LASF98
	.byte	0x31
	.byte	0x15
	.4byte	0x582
	.byte	0
	.uleb128 0x4
	.4byte	0x3be
	.uleb128 0x4
	.4byte	0x437
	.uleb128 0x8
	.byte	0x14
	.byte	0xb
	.byte	0x35
	.4byte	0x5de
	.uleb128 0x17
	.string	"ops"
	.byte	0xb
	.byte	0x36
	.byte	0x17
	.4byte	0x559
	.byte	0
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0xb
	.byte	0x37
	.byte	0xb
	.4byte	0x114
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.4byte	0x122
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0xb
	.byte	0x39
	.byte	0x9
	.4byte	0x39
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0xb
	.byte	0x3a
	.byte	0xd
	.4byte	0x138
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0xb
	.byte	0x3b
	.byte	0xd
	.4byte	0x138
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0xb
	.byte	0x3c
	.byte	0x3
	.4byte	0x587
	.uleb128 0x8
	.byte	0xc
	.byte	0xb
	.byte	0x3e
	.4byte	0x61a
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0xb
	.byte	0x3f
	.byte	0xe
	.4byte	0x61a
	.byte	0
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0xb
	.byte	0x40
	.byte	0xb
	.4byte	0x114
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0xb
	.byte	0x41
	.byte	0xc
	.4byte	0x40
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	0x5de
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0xb
	.byte	0x42
	.byte	0x3
	.4byte	0x5ea
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0xb
	.byte	0x45
	.byte	0x10
	.4byte	0x637
	.uleb128 0x4
	.4byte	0x63c
	.uleb128 0xb
	.4byte	0x64c
	.uleb128 0x2
	.4byte	0x64c
	.uleb128 0x2
	.4byte	0x114
	.byte	0
	.uleb128 0x4
	.4byte	0x651
	.uleb128 0x18
	.4byte	.LASF120
	.uleb128 0x5
	.4byte	0x39
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x61a
	.uleb128 0x2
	.4byte	0x66a
	.byte	0
	.uleb128 0x4
	.4byte	0x61f
	.uleb128 0x4
	.4byte	0x656
	.uleb128 0x5
	.4byte	0x39
	.4byte	0x683
	.uleb128 0x2
	.4byte	0x66a
	.byte	0
	.uleb128 0x4
	.4byte	0x674
	.uleb128 0x5
	.4byte	0x1cb
	.4byte	0x6a1
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x114
	.uleb128 0x2
	.4byte	0x40
	.byte	0
	.uleb128 0x4
	.4byte	0x688
	.uleb128 0x5
	.4byte	0x1cb
	.4byte	0x6bf
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x6bf
	.uleb128 0x2
	.4byte	0x40
	.byte	0
	.uleb128 0x4
	.4byte	0x6c4
	.uleb128 0x19
	.uleb128 0x4
	.4byte	0x6a6
	.uleb128 0x5
	.4byte	0x39
	.4byte	0x6e3
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x39
	.uleb128 0x2
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	0x6ca
	.uleb128 0x5
	.4byte	0x39
	.4byte	0x70b
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x70b
	.uleb128 0x2
	.4byte	0x62b
	.uleb128 0x2
	.4byte	0x64c
	.uleb128 0x2
	.4byte	0x114
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF110
	.uleb128 0x4
	.4byte	0x6e8
	.uleb128 0x5
	.4byte	0x39
	.4byte	0x730
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x39
	.byte	0
	.uleb128 0x4
	.4byte	0x717
	.uleb128 0x5
	.4byte	0x1cb
	.4byte	0x74e
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x122
	.uleb128 0x2
	.4byte	0x40
	.byte	0
	.uleb128 0x4
	.4byte	0x735
	.uleb128 0x5
	.4byte	0x1cb
	.4byte	0x76c
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x40
	.byte	0
	.uleb128 0x4
	.4byte	0x753
	.uleb128 0x5
	.4byte	0x19b
	.4byte	0x78a
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x19b
	.uleb128 0x2
	.4byte	0x39
	.byte	0
	.uleb128 0x4
	.4byte	0x771
	.uleb128 0x5
	.4byte	0x39
	.4byte	0x7a8
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x7a8
	.byte	0
	.uleb128 0x4
	.4byte	0x1ef
	.uleb128 0x4
	.4byte	0x78f
	.uleb128 0x5
	.4byte	0x39
	.4byte	0x7c6
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x133
	.byte	0
	.uleb128 0x4
	.4byte	0x7b2
	.uleb128 0x5
	.4byte	0x39
	.4byte	0x7e4
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x133
	.byte	0
	.uleb128 0x4
	.4byte	0x7cb
	.uleb128 0x5
	.4byte	0x7fd
	.4byte	0x7fd
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x133
	.byte	0
	.uleb128 0x4
	.4byte	0x3b2
	.uleb128 0x4
	.4byte	0x7e9
	.uleb128 0x5
	.4byte	0x81b
	.4byte	0x81b
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x7fd
	.byte	0
	.uleb128 0x4
	.4byte	0x383
	.uleb128 0x4
	.4byte	0x807
	.uleb128 0x5
	.4byte	0x39
	.4byte	0x839
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x7fd
	.byte	0
	.uleb128 0x4
	.4byte	0x825
	.uleb128 0xb
	.4byte	0x84e
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x7fd
	.byte	0
	.uleb128 0x4
	.4byte	0x83e
	.uleb128 0x5
	.4byte	0x76
	.4byte	0x867
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x7fd
	.byte	0
	.uleb128 0x4
	.4byte	0x853
	.uleb128 0xb
	.4byte	0x881
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x7fd
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0x4
	.4byte	0x86c
	.uleb128 0x5
	.4byte	0x39
	.4byte	0x89f
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x89f
	.byte	0
	.uleb128 0x4
	.4byte	0x2c2
	.uleb128 0x4
	.4byte	0x886
	.uleb128 0xa
	.4byte	0x61f
	.4byte	0x8b9
	.uleb128 0xe
	.4byte	0x32
	.byte	0x3b
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF121
	.byte	0x1
	.byte	0xa
	.byte	0xf
	.4byte	0x8a9
	.uleb128 0x5
	.byte	0x3
	.4byte	files
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0x70
	.4byte	0x8db
	.uleb128 0x2
	.4byte	0x61a
	.byte	0
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0x6f
	.4byte	0x8eb
	.uleb128 0x2
	.4byte	0x61a
	.byte	0
	.uleb128 0x11
	.4byte	.LASF113
	.byte	0x2e
	.byte	0x9
	.4byte	0x66a
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x929
	.uleb128 0x1b
	.string	"fd"
	.byte	0x1
	.byte	0x2e
	.byte	0x16
	.4byte	0x39
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0xc
	.string	"f"
	.byte	0x30
	.byte	0xd
	.4byte	0x66a
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.uleb128 0x11
	.4byte	.LASF114
	.byte	0x29
	.byte	0x5
	.4byte	0x39
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x956
	.uleb128 0xd
	.4byte	.LASF115
	.byte	0x29
	.byte	0x14
	.4byte	0x66a
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF116
	.byte	0x1
	.byte	0x23
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x989
	.uleb128 0xd
	.4byte	.LASF115
	.byte	0x23
	.byte	0x17
	.4byte	0x66a
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1d
	.4byte	.LVL8
	.4byte	0x8cb
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF117
	.byte	0x1
	.byte	0xc
	.byte	0x9
	.4byte	0x66a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF105
	.byte	0xc
	.byte	0x1b
	.4byte	0x61a
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xc
	.string	"f"
	.byte	0xe
	.byte	0xd
	.4byte	0x66a
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xc
	.string	"idx"
	.byte	0xf
	.byte	0x9
	.4byte	0x39
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1f
	.4byte	.LASF122
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.4byte	.LDL1
	.uleb128 0x20
	.4byte	.LVL3
	.4byte	0x8db
	.uleb128 0x21
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
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
	.uleb128 0x21
	.sleb128 11
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
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
.LVUS5:
	.uleb128 0
	.uleb128 0x4
	.uleb128 0x4
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0xd
	.uleb128 0xd
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0
.LLST5:
	.byte	0x6
	.4byte	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL14-.LVL13
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL14-.LVL13
	.uleb128 .LVL16-.LVL13
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL16-.LVL13
	.uleb128 .LVL18-.LVL13
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
	.byte	0x32
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL18-.LVL13
	.uleb128 .LVL19-.LVL13
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL19-.LVL13
	.uleb128 .LFE6-.LVL13
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
	.byte	0x32
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 0x8
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
.LLST6:
	.byte	0x6
	.4byte	.LVL15
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL16-.LVL15
	.uleb128 0xb
	.byte	0x7a
	.sleb128 0
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.4byte	files
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL15
	.uleb128 .LVL17-.LVL15
	.uleb128 0x9
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.4byte	files
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL17-.LVL15
	.uleb128 .LVL18-.LVL15
	.uleb128 0x14
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x32
	.byte	0x1c
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.4byte	files
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x3
	.uleb128 0x4
	.uleb128 0x4
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL11-.LVL10
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL11-.LVL10
	.uleb128 .LVL12-.LVL10
	.uleb128 0x9
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.4byte	files
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL12-.LVL10
	.uleb128 .LFE5-.LVL10
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
.LVUS3:
	.uleb128 0
	.uleb128 0x5
	.uleb128 0x5
	.uleb128 0x9
	.uleb128 0x9
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
	.uleb128 .LVL9-.LVL6
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL9-.LVL6
	.uleb128 .LFE4-.LVL6
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
.LVUS0:
	.uleb128 0
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x17
	.uleb128 0x17
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL3-1-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL3-1-.LVL0
	.uleb128 .LVL4-.LVL0
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
	.uleb128 .LVL4-.LVL0
	.uleb128 .LFE3-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS1:
	.uleb128 0x9
	.uleb128 0xc
	.uleb128 0x17
	.uleb128 0x18
	.uleb128 0x18
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL2-.LVL1
	.uleb128 0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.4byte	files
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL4-.LVL1
	.uleb128 .LVL5-.LVL1
	.uleb128 0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.4byte	files
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.LVL1
	.uleb128 .LFE3-.LVL1
	.uleb128 0xb
	.byte	0x7f
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.4byte	files
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0x4
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0xc
	.uleb128 0x17
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL4-.LVL0
	.uleb128 .LFE3-.LVL0
	.uleb128 0x1
	.byte	0x5f
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
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
.LLRL7:
	.byte	0x7
	.4byte	.LFB3
	.uleb128 .LFE3-.LFB3
	.byte	0x7
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
	.byte	0x7
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
	.byte	0x7
	.4byte	.LFB6
	.uleb128 .LFE6-.LFB6
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
	.4byte	.LASF123
	.4byte	.LASF124
	.4byte	.LASF125
	.4byte	.LASF126
	.4byte	.LASF127
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0xc
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF128
	.byte	0x2
	.4byte	.LASF129
	.byte	0x3
	.4byte	.LASF130
	.byte	0x4
	.4byte	.LASF131
	.byte	0x5
	.4byte	.LASF132
	.byte	0x3
	.4byte	.LASF133
	.byte	0x5
	.4byte	.LASF134
	.byte	0x5
	.4byte	.LASF135
	.byte	0x5
	.4byte	.LASF136
	.byte	0x5
	.4byte	.LASF137
	.byte	0x1
	.4byte	.LASF138
	.byte	0x1
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x23
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
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x13
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x1b
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x15
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x1
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x1e
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0x3
	.sleb128 -16
	.byte	0x1
	.byte	0x5
	.uleb128 0x26
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1f
	.byte	0x5
	.uleb128 0xb
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE3
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM27
	.byte	0x3a
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM32-.LM31
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
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE4
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM37
	.byte	0x40
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x18
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
	.4byte	.LM43
	.byte	0x45
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0x1
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM55-.LM54
	.byte	0x16
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0x10
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM57-.LM56
	.byte	0x20
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE6
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"__off_t"
.LASF20:
	.string	"__gid_t"
.LASF66:
	.string	"f_namelen"
.LASF53:
	.string	"st_ctim"
.LASF61:
	.string	"f_bfree"
.LASF11:
	.string	"size_t"
.LASF62:
	.string	"f_bavail"
.LASF77:
	.string	"close"
.LASF6:
	.string	"signed char"
.LASF38:
	.string	"ssize_t"
.LASF75:
	.string	"file_ops"
.LASF65:
	.string	"f_fsid"
.LASF102:
	.string	"type"
.LASF2:
	.string	"long long unsigned int"
.LASF117:
	.string	"new_file"
.LASF14:
	.string	"__int_least64_t"
.LASF42:
	.string	"stat"
.LASF91:
	.string	"mkdir"
.LASF4:
	.string	"long long int"
.LASF45:
	.string	"st_mode"
.LASF44:
	.string	"st_ino"
.LASF22:
	.string	"__mode_t"
.LASF83:
	.string	"fs_ops_t"
.LASF15:
	.string	"__blkcnt_t"
.LASF10:
	.string	"long int"
.LASF52:
	.string	"st_mtim"
.LASF58:
	.string	"f_type"
.LASF51:
	.string	"st_atim"
.LASF112:
	.string	"inode_ref"
.LASF98:
	.string	"i_fops"
.LASF87:
	.string	"rename"
.LASF69:
	.string	"d_name"
.LASF40:
	.string	"nlink_t"
.LASF113:
	.string	"get_file"
.LASF34:
	.string	"off_t"
.LASF37:
	.string	"gid_t"
.LASF12:
	.string	"__uint32_t"
.LASF120:
	.string	"pollfd"
.LASF35:
	.string	"dev_t"
.LASF55:
	.string	"st_blocks"
.LASF47:
	.string	"st_uid"
.LASF56:
	.string	"st_spare4"
.LASF63:
	.string	"f_files"
.LASF3:
	.string	"unsigned int"
.LASF31:
	.string	"blkcnt_t"
.LASF13:
	.string	"long unsigned int"
.LASF92:
	.string	"rmdir"
.LASF71:
	.string	"dd_vfs_fd"
.LASF36:
	.string	"uid_t"
.LASF109:
	.string	"poll_notify_t"
.LASF9:
	.string	"short unsigned int"
.LASF85:
	.string	"lseek"
.LASF70:
	.string	"aos_dirent_t"
.LASF73:
	.string	"aos_dir_t"
.LASF111:
	.string	"inode_unref"
.LASF96:
	.string	"access"
.LASF25:
	.string	"__nlink_t"
.LASF50:
	.string	"st_size"
.LASF119:
	.string	"inode_ops_t"
.LASF100:
	.string	"i_name"
.LASF114:
	.string	"get_fd"
.LASF79:
	.string	"write"
.LASF86:
	.string	"unlink"
.LASF30:
	.string	"tv_nsec"
.LASF72:
	.string	"dd_rsv"
.LASF89:
	.string	"readdir"
.LASF18:
	.string	"__dev_t"
.LASF76:
	.string	"open"
.LASF93:
	.string	"rewinddir"
.LASF64:
	.string	"f_ffree"
.LASF67:
	.string	"d_ino"
.LASF16:
	.string	"__blksize_t"
.LASF17:
	.string	"_off_t"
.LASF94:
	.string	"telldir"
.LASF28:
	.string	"time_t"
.LASF116:
	.string	"del_file"
.LASF32:
	.string	"blksize_t"
.LASF29:
	.string	"tv_sec"
.LASF103:
	.string	"refs"
.LASF88:
	.string	"opendir"
.LASF46:
	.string	"st_nlink"
.LASF60:
	.string	"f_blocks"
.LASF110:
	.string	"_Bool"
.LASF7:
	.string	"unsigned char"
.LASF99:
	.string	"i_arg"
.LASF105:
	.string	"node"
.LASF68:
	.string	"d_type"
.LASF8:
	.string	"short int"
.LASF115:
	.string	"file"
.LASF54:
	.string	"st_blksize"
.LASF41:
	.string	"timespec"
.LASF90:
	.string	"closedir"
.LASF122:
	.string	"got_file"
.LASF21:
	.string	"__ino_t"
.LASF49:
	.string	"st_rdev"
.LASF5:
	.string	"long double"
.LASF26:
	.string	"char"
.LASF106:
	.string	"f_arg"
.LASF95:
	.string	"seekdir"
.LASF108:
	.string	"file_t"
.LASF101:
	.string	"i_flags"
.LASF118:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF81:
	.string	"poll"
.LASF80:
	.string	"ioctl"
.LASF19:
	.string	"__uid_t"
.LASF107:
	.string	"offset"
.LASF48:
	.string	"st_gid"
.LASF24:
	.string	"_ssize_t"
.LASF97:
	.string	"i_ops"
.LASF39:
	.string	"mode_t"
.LASF104:
	.string	"inode_t"
.LASF27:
	.string	"uint8_t"
.LASF57:
	.string	"statfs"
.LASF82:
	.string	"sync"
.LASF74:
	.string	"file_ops_t"
.LASF84:
	.string	"fs_ops"
.LASF78:
	.string	"read"
.LASF43:
	.string	"st_dev"
.LASF59:
	.string	"f_bsize"
.LASF121:
	.string	"files"
.LASF33:
	.string	"ino_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF128:
	.string	"vfs_file.c"
.LASF123:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include"
.LASF132:
	.string	"stdint-gcc.h"
.LASF133:
	.string	"_timeval.h"
.LASF134:
	.string	"_timespec.h"
.LASF138:
	.string	"vfs_inode.h"
.LASF127:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys"
.LASF124:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/src"
.LASF130:
	.string	"_default_types.h"
.LASF137:
	.string	"vfs_dir.h"
.LASF135:
	.string	"types.h"
.LASF131:
	.string	"_types.h"
.LASF126:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine"
.LASF125:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/src/vfs_file.c"
.LASF136:
	.string	"stat.h"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/vfs"
.LASF129:
	.string	"stddef.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
