	.file	"hal_sys.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.user_clz,"ax",@progbits
	.align	1
	.type	user_clz, @function
user_clz:
.LVL0:
.LFB11:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM4:
	call	__clzsi2
.LVL1:
.LM5:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	user_clz, .-user_clz
	.section	.text.hal_reboot,"ax",@progbits
	.align	1
	.globl	hal_reboot
	.type	hal_reboot, @function
hal_reboot:
.LFB8:
.LM6:
	.cfi_startproc
.LM7:
	tail	bl_sys_reset_por
.LVL2:
	.cfi_endproc
.LFE8:
	.size	hal_reboot, .-hal_reboot
	.section	.text.hal_sys_reset,"ax",@progbits
	.align	1
	.globl	hal_sys_reset
	.type	hal_sys_reset, @function
hal_sys_reset:
.LFB9:
.LM8:
	.cfi_startproc
.LM9:
	tail	bl_sys_reset_system
.LVL3:
	.cfi_endproc
.LFE9:
	.size	hal_sys_reset, .-hal_sys_reset
	.section	.text.hal_poweroff,"ax",@progbits
	.align	1
	.globl	hal_poweroff
	.type	hal_poweroff, @function
hal_poweroff:
.LFB10:
.LM10:
	.cfi_startproc
.LM11:
	ret
	.cfi_endproc
.LFE10:
	.size	hal_poweroff, .-hal_poweroff
	.section	.rodata.hal_sys_romapi_get.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"  Configuring Version 1.0 ROM API...\r\n"
	.section	.text.hal_sys_romapi_get,"ax",@progbits
	.align	1
	.globl	hal_sys_romapi_get
	.type	hal_sys_romapi_get, @function
hal_sys_romapi_get:
.LFB12:
.LM12:
	.cfi_startproc
.LM13:
.LM14:
.LVL4:
.LM15:
.LM16:
	lui	a0,%hi(.LC0)
.LM17:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM18:
	addi	a0,a0,%lo(.LC0)
.LM19:
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
.LM20:
	call	puts
.LVL5:
.LM21:
	lui	s0,%hi(__global_pointer_head$)
	addi	a0,s0,%lo(__global_pointer_head$)
	li	a2,1176
	li	a1,0
	call	memset
.LVL6:
.LM22:
.LM23:
.LM24:
	lui	a5,%hi(__global_pointer_head$+88)
	addi	a5,a5,%lo(__global_pointer_head$+88)
	srli	a4,a5,8
	sb	a4,%lo(__global_pointer_head$+1)(s0)
	srli	a4,a5,16
	sb	a4,%lo(__global_pointer_head$+2)(s0)
.LM25:
	lui	a4,%hi(__global_pointer_head$+96)
.LM26:
	sb	a5,%lo(__global_pointer_head$)(s0)
.LM27:
	addi	a4,a4,%lo(__global_pointer_head$+96)
.LM28:
	srli	a5,a5,24
	sb	a5,%lo(__global_pointer_head$+3)(s0)
.LM29:
.LM30:
	srli	a3,a4,8
	addi	a5,s0,%lo(__global_pointer_head$)
	sb	a4,4(a5)
	sb	a3,5(a5)
	srli	a3,a4,16
	srli	a4,a4,24
	sb	a4,7(a5)
.LM31:
.LM32:
	li	a4,32
.LM33:
	sb	a3,6(a5)
.LM34:
	sb	a4,8(a5)
	sb	zero,9(a5)
	sb	zero,10(a5)
	sb	zero,11(a5)
.LM35:
.LM36:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lui	a0,%hi(__global_pointer_head$+1116)
	addi	a0,a0,%lo(__global_pointer_head$+1116)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	hal_sys_romapi_get, .-hal_sys_romapi_get
	.section	.text.hal_sys_romapi_update,"ax",@progbits
	.align	1
	.globl	hal_sys_romapi_update
	.type	hal_sys_romapi_update, @function
hal_sys_romapi_update:
.LVL7:
.LFB13:
.LM37:
	.cfi_startproc
.LM38:
.LM39:
.LM40:
.LM41:
.LM42:
	lui	a5,%hi(interrupt_entry)
	addi	a5,a5,%lo(interrupt_entry)
	sw	a5,4(a0)
.LM43:
.LM44:
	lui	a5,%hi(sprintf)
	addi	a5,a5,%lo(sprintf)
	sw	a5,20(a0)
.LM45:
.LM46:
	lui	a5,%hi(memcpy)
	addi	a5,a5,%lo(memcpy)
	sw	a5,28(a0)
.LM47:
.LM48:
	lui	a5,%hi(strlen)
	addi	a5,a5,%lo(strlen)
	sw	a5,36(a0)
.LM49:
.LM50:
	lui	a5,%hi(memset)
	addi	a5,a5,%lo(memset)
	sw	a5,40(a0)
.LM51:
.LM52:
	lui	a5,%hi(exception_entry)
	addi	a5,a5,%lo(exception_entry)
	sw	a5,48(a0)
.LM53:
.LM54:
	lui	a5,%hi(strcpy)
	addi	a5,a5,%lo(strcpy)
	sw	a5,52(a0)
.LM55:
.LM56:
	lui	a5,%hi(__freertos_irq_stack_top)
	addi	a5,a5,%lo(__freertos_irq_stack_top)
	sw	a5,56(a0)
.LM57:
.LM58:
	lui	a5,%hi(user_clz)
	addi	a5,a5,%lo(user_clz)
	sw	a5,44(a0)
.LM59:
	ret
	.cfi_endproc
.LFE13:
	.size	hal_sys_romapi_update, .-hal_sys_romapi_update
	.section	.text.hal_sys_capcode_update,"ax",@progbits
	.align	1
	.globl	hal_sys_capcode_update
	.type	hal_sys_capcode_update, @function
hal_sys_capcode_update:
.LVL8:
.LFB14:
.LM60:
	.cfi_startproc
.LM61:
.LM62:
.LM63:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
.LM64:
	li	a3,553717760
.LM65:
	addi	a2,a1,-255
.LM66:
	lw	a3,-2020(a3)
	lui	s0,%hi(capin_static.1)
	lui	s1,%hi(capout_static.0)
.LM67:
	beq	a2,zero,.L10
.LM68:
	addi	a2,a0,-255
.LM69:
	beq	a2,zero,.L10
	sw	a1,12(sp)
	sw	a0,8(sp)
.LM70:
.LM71:
	jalr	a3
.LVL9:
.LM72:
.LM73:
	lw	a4,8(sp)
.LM74:
	lw	a5,12(sp)
.LM75:
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
.LM76:
	sb	a4,%lo(capin_static.1)(s0)
.LM77:
.LM78:
	lw	s0,24(sp)
	.cfi_restore 8
.LM79:
	sb	a5,%lo(capout_static.0)(s1)
.LM80:
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL10:
.LM81:
	jr	ra
.LVL11:
.L10:
	.cfi_restore_state
.LM82:
.LM83:
	lbu	a0,%lo(capin_static.1)(s0)
.LVL12:
.LM84:
	lw	s0,24(sp)
	.cfi_restore 8
.LM85:
	lbu	a1,%lo(capout_static.0)(s1)
.LVL13:
.LM86:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LM87:
	jr	a3
.LVL14:
	.cfi_endproc
.LFE14:
	.size	hal_sys_capcode_update, .-hal_sys_capcode_update
	.section	.text.hal_sys_capcode_get,"ax",@progbits
	.align	1
	.globl	hal_sys_capcode_get
	.type	hal_sys_capcode_get, @function
hal_sys_capcode_get:
.LFB15:
.LM88:
	.cfi_startproc
.LM89:
.LM90:
	tail	AON_Get_Xtal_CapCode
.LVL15:
	.cfi_endproc
.LFE15:
	.size	hal_sys_capcode_get, .-hal_sys_capcode_get
	.section	.sbss.capout_static.0,"aw",@nobits
	.type	capout_static.0, @object
	.size	capout_static.0, 1
capout_static.0:
	.zero	1
	.section	.sbss.capin_static.1,"aw",@nobits
	.type	capin_static.1, @object
	.size	capin_static.1, 1
capin_static.1:
	.zero	1
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8cb
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x14
	.4byte	.LASF237
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL3
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x39
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x16
	.byte	0x4
	.uleb128 0x9
	.4byte	0x84
	.uleb128 0x6
	.4byte	0x95
	.uleb128 0x9
	.4byte	0x8b
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x17
	.4byte	0x95
	.uleb128 0x6
	.4byte	0x9c
	.uleb128 0x9
	.4byte	0xa1
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x7d
	.uleb128 0xe
	.byte	0x1
	.4byte	0x32
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.4byte	0xe3
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0x1b
	.byte	0x2
	.4byte	0xc3
	.uleb128 0x6
	.4byte	0xb7
	.uleb128 0xe
	.byte	0x2
	.4byte	0x6f
	.byte	0x5
	.byte	0x40
	.byte	0xe
	.4byte	0x52f
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x35
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x36
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x37
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x39
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x3a
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x3b
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x49
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x4b
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x4d
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x4f
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x51
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x52
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x53
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x54
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0x55
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0x56
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0x57
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0x58
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0x59
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0x5a
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0x5b
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0x5c
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0x5d
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0x5e
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x5f
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x60
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x61
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0x62
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0x63
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0x64
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0x65
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0x66
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0x67
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0x68
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0x69
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0x6a
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0x6b
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0x6c
	.uleb128 0x1
	.4byte	.LASF129
	.byte	0x6d
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0x6e
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0x6f
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0x70
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x71
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x72
	.uleb128 0x1
	.4byte	.LASF135
	.byte	0x73
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0x74
	.uleb128 0x1
	.4byte	.LASF137
	.byte	0x75
	.uleb128 0x1
	.4byte	.LASF138
	.byte	0x76
	.uleb128 0x1
	.4byte	.LASF139
	.byte	0x77
	.uleb128 0x1
	.4byte	.LASF140
	.byte	0x78
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0x79
	.uleb128 0x1
	.4byte	.LASF142
	.byte	0x7a
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0x7b
	.uleb128 0x1
	.4byte	.LASF144
	.byte	0x7c
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0x7d
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0x7e
	.uleb128 0x1
	.4byte	.LASF147
	.byte	0x7f
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0x80
	.uleb128 0x1
	.4byte	.LASF149
	.byte	0x81
	.uleb128 0x1
	.4byte	.LASF150
	.byte	0x82
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0x83
	.uleb128 0x1
	.4byte	.LASF152
	.byte	0x84
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0x85
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0x86
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0x87
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0x88
	.uleb128 0x1
	.4byte	.LASF157
	.byte	0x89
	.uleb128 0x1
	.4byte	.LASF158
	.byte	0x8a
	.uleb128 0x1
	.4byte	.LASF159
	.byte	0x8b
	.uleb128 0x1
	.4byte	.LASF160
	.byte	0x8c
	.uleb128 0x1
	.4byte	.LASF161
	.byte	0x8d
	.uleb128 0x1
	.4byte	.LASF162
	.byte	0x8e
	.uleb128 0x1
	.4byte	.LASF163
	.byte	0x8f
	.uleb128 0x1
	.4byte	.LASF164
	.byte	0x90
	.uleb128 0x1
	.4byte	.LASF165
	.byte	0x91
	.uleb128 0x1
	.4byte	.LASF166
	.byte	0x92
	.uleb128 0x1
	.4byte	.LASF167
	.byte	0x93
	.uleb128 0x1
	.4byte	.LASF168
	.byte	0x94
	.uleb128 0x1
	.4byte	.LASF169
	.byte	0x95
	.uleb128 0x1
	.4byte	.LASF170
	.byte	0x96
	.uleb128 0x1
	.4byte	.LASF171
	.byte	0x97
	.uleb128 0x1
	.4byte	.LASF172
	.byte	0x98
	.uleb128 0x1
	.4byte	.LASF173
	.byte	0x99
	.uleb128 0x1
	.4byte	.LASF174
	.byte	0x9a
	.uleb128 0x1
	.4byte	.LASF175
	.byte	0x9b
	.uleb128 0x1
	.4byte	.LASF176
	.byte	0x9c
	.uleb128 0x1
	.4byte	.LASF177
	.byte	0x9d
	.uleb128 0x1
	.4byte	.LASF178
	.byte	0x9e
	.uleb128 0x1
	.4byte	.LASF179
	.byte	0x9f
	.uleb128 0x1
	.4byte	.LASF180
	.byte	0xa0
	.uleb128 0x1
	.4byte	.LASF181
	.byte	0xa1
	.uleb128 0x1
	.4byte	.LASF182
	.byte	0xa2
	.uleb128 0x1
	.4byte	.LASF183
	.byte	0xa3
	.uleb128 0x1
	.4byte	.LASF184
	.byte	0xa4
	.uleb128 0x1
	.4byte	.LASF185
	.byte	0xa5
	.uleb128 0x1
	.4byte	.LASF186
	.byte	0xa6
	.uleb128 0x1
	.4byte	.LASF187
	.byte	0xa7
	.uleb128 0x1
	.4byte	.LASF188
	.byte	0xa8
	.uleb128 0x1
	.4byte	.LASF189
	.byte	0xa9
	.uleb128 0x1
	.4byte	.LASF190
	.byte	0xaa
	.uleb128 0x1
	.4byte	.LASF191
	.byte	0xab
	.uleb128 0x1
	.4byte	.LASF192
	.byte	0xac
	.uleb128 0x1
	.4byte	.LASF193
	.byte	0xad
	.uleb128 0x1
	.4byte	.LASF194
	.byte	0xae
	.uleb128 0x1
	.4byte	.LASF195
	.byte	0xaf
	.uleb128 0x1
	.4byte	.LASF196
	.byte	0xb0
	.uleb128 0x18
	.4byte	.LASF197
	.2byte	0x1ff
	.byte	0
	.uleb128 0x19
	.4byte	.LASF238
	.byte	0x3c
	.byte	0x6
	.byte	0x27
	.byte	0x8
	.4byte	0x5e2
	.uleb128 0x3
	.4byte	.LASF198
	.byte	0x29
	.4byte	0x84
	.byte	0
	.uleb128 0x3
	.4byte	.LASF199
	.byte	0x2a
	.4byte	0x84
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF200
	.byte	0x2b
	.4byte	0x84
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF201
	.byte	0x2c
	.4byte	0x84
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF202
	.byte	0x2d
	.4byte	0x84
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF203
	.byte	0x2e
	.4byte	0x84
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF204
	.byte	0x2f
	.4byte	0x84
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF205
	.byte	0x30
	.4byte	0x84
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF206
	.byte	0x31
	.4byte	0x84
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF207
	.byte	0x32
	.4byte	0x84
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF208
	.byte	0x33
	.4byte	0x84
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF209
	.byte	0x34
	.4byte	0x84
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF210
	.byte	0x35
	.4byte	0x84
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF211
	.byte	0x36
	.4byte	0x84
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF212
	.byte	0x37
	.4byte	0x84
	.byte	0x38
	.byte	0
	.uleb128 0xf
	.4byte	.LASF221
	.byte	0x9
	.byte	0x51
	.byte	0x9
	.4byte	0xab
	.uleb128 0x5
	.4byte	.LASF213
	.byte	0x7
	.byte	0x26
	.byte	0x7
	.4byte	0x8b
	.4byte	0x609
	.uleb128 0x2
	.4byte	0x90
	.uleb128 0x2
	.4byte	0xa6
	.byte	0
	.uleb128 0xa
	.4byte	.LASF217
	.byte	0x51
	.4byte	0x623
	.uleb128 0x2
	.4byte	0xb7
	.uleb128 0x2
	.4byte	0xb7
	.uleb128 0x2
	.4byte	0xb7
	.byte	0
	.uleb128 0x5
	.4byte	.LASF214
	.byte	0x7
	.byte	0x29
	.byte	0x8
	.4byte	0x47
	.4byte	0x639
	.uleb128 0x2
	.4byte	0xa1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF215
	.byte	0x7
	.byte	0x1f
	.byte	0x8
	.4byte	0x84
	.4byte	0x659
	.uleb128 0x2
	.4byte	0x86
	.uleb128 0x2
	.4byte	0x65e
	.uleb128 0x2
	.4byte	0x47
	.byte	0
	.uleb128 0x6
	.4byte	0x663
	.uleb128 0x9
	.4byte	0x659
	.uleb128 0x1a
	.uleb128 0x5
	.4byte	.LASF216
	.byte	0x8
	.byte	0xfa
	.byte	0x5
	.4byte	0x40
	.4byte	0x680
	.uleb128 0x2
	.4byte	0x90
	.uleb128 0x2
	.4byte	0xa6
	.uleb128 0x1b
	.byte	0
	.uleb128 0xa
	.4byte	.LASF218
	.byte	0x50
	.4byte	0x690
	.uleb128 0x2
	.4byte	0xb7
	.byte	0
	.uleb128 0x5
	.4byte	.LASF219
	.byte	0x7
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0x6b0
	.uleb128 0x2
	.4byte	0x84
	.uleb128 0x2
	.4byte	0x40
	.uleb128 0x2
	.4byte	0x47
	.byte	0
	.uleb128 0x5
	.4byte	.LASF220
	.byte	0x8
	.byte	0xe3
	.byte	0x5
	.4byte	0x40
	.4byte	0x6c6
	.uleb128 0x2
	.4byte	0xa1
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF239
	.byte	0xa
	.byte	0x27
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF222
	.byte	0xa
	.byte	0x26
	.byte	0x5
	.4byte	0x40
	.uleb128 0x10
	.4byte	.LASF227
	.byte	0x6c
	.byte	0x9
	.4byte	0xab
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6fd
	.uleb128 0xb
	.4byte	.LVL15
	.4byte	0x5e2
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF240
	.byte	0x1
	.byte	0x5f
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x772
	.uleb128 0xc
	.4byte	.LASF223
	.byte	0x5f
	.byte	0x25
	.4byte	0xab
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xc
	.4byte	.LASF224
	.byte	0x5f
	.byte	0x34
	.4byte	0xab
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x11
	.4byte	.LASF225
	.byte	0x61
	.byte	0x14
	.4byte	0xab
	.uleb128 0x5
	.byte	0x3
	.4byte	capin_static.1
	.uleb128 0x11
	.4byte	.LASF226
	.byte	0x61
	.byte	0x22
	.4byte	0xab
	.uleb128 0x5
	.byte	0x3
	.4byte	capout_static.0
	.uleb128 0x1e
	.4byte	.LVL9
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24
	.byte	0x94
	.byte	0x1
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF234
	.byte	0x4e
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c9
	.uleb128 0x1f
	.4byte	.LASF232
	.byte	0x1
	.byte	0x4e
	.byte	0x38
	.4byte	0x7c9
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xa
	.4byte	.LASF218
	.byte	0x50
	.4byte	0x7a4
	.uleb128 0x2
	.4byte	0xb7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF217
	.byte	0x51
	.4byte	0x7be
	.uleb128 0x2
	.4byte	0xb7
	.uleb128 0x2
	.4byte	0xb7
	.uleb128 0x2
	.4byte	0xb7
	.byte	0
	.uleb128 0x12
	.4byte	.LASF229
	.byte	0x52
	.4byte	0xab
	.byte	0
	.uleb128 0x6
	.4byte	0x52f
	.uleb128 0x10
	.4byte	.LASF228
	.byte	0x38
	.byte	0x1d
	.4byte	0x7c9
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x835
	.uleb128 0x12
	.4byte	.LASF230
	.byte	0x3a
	.4byte	0x835
	.uleb128 0x13
	.4byte	.LASF231
	.byte	0x3b
	.byte	0xf
	.4byte	0xef
	.uleb128 0x13
	.4byte	.LASF232
	.byte	0x3c
	.byte	0x21
	.4byte	0x7c9
	.uleb128 0x20
	.4byte	.LVL5
	.4byte	0x6b0
	.4byte	0x81e
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL6
	.4byte	0x690
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x498
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0xab
	.4byte	0x840
	.uleb128 0x23
	.byte	0
	.uleb128 0x24
	.4byte	.LASF241
	.byte	0x1
	.byte	0x33
	.byte	0x11
	.4byte	0xb7
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x877
	.uleb128 0xc
	.4byte	.LASF233
	.byte	0x33
	.byte	0x23
	.4byte	0xb7
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x25
	.4byte	.LVL1
	.4byte	0x8c5
	.byte	0
	.uleb128 0x26
	.4byte	.LASF242
	.byte	0x1
	.byte	0x2e
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF235
	.byte	0x29
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a7
	.uleb128 0xb
	.4byte	.LVL3
	.4byte	0x6c6
	.byte	0
	.uleb128 0xd
	.4byte	.LASF236
	.byte	0x24
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8c5
	.uleb128 0xb
	.4byte	.LVL2
	.4byte	0x6ce
	.byte	0
	.uleb128 0x27
	.4byte	.LASF243
	.4byte	.LASF243
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
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
	.sleb128 17
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.sleb128 6
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
	.uleb128 0xe
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x25
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
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
.LVUS1:
	.uleb128 0
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x16
	.uleb128 0x16
	.uleb128 0x18
	.uleb128 0x18
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL8
	.byte	0x4
	.uleb128 .LVL8-.LVL8
	.uleb128 .LVL9-1-.LVL8
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL9-1-.LVL8
	.uleb128 .LVL10-.LVL8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x4
	.uleb128 .LVL10-.LVL8
	.uleb128 .LVL11-.LVL8
	.uleb128 0x2
	.byte	0x72
	.sleb128 -24
	.byte	0x4
	.uleb128 .LVL11-.LVL8
	.uleb128 .LVL12-.LVL8
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL12-.LVL8
	.uleb128 .LFE14-.LVL8
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
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x16
	.uleb128 0x16
	.uleb128 0x1a
	.uleb128 0x1a
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL8
	.byte	0x4
	.uleb128 .LVL8-.LVL8
	.uleb128 .LVL9-1-.LVL8
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL9-1-.LVL8
	.uleb128 .LVL10-.LVL8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x4
	.uleb128 .LVL10-.LVL8
	.uleb128 .LVL11-.LVL8
	.uleb128 0x2
	.byte	0x72
	.sleb128 -20
	.byte	0x4
	.uleb128 .LVL11-.LVL8
	.uleb128 .LVL13-.LVL8
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL13-.LVL8
	.uleb128 .LFE14-.LVL8
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
	.uleb128 .LFE11-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x39
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
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
	.byte	0x7
	.4byte	.LFB11
	.uleb128 .LFE11-.LFB11
	.byte	0x7
	.4byte	.LFB8
	.uleb128 .LFE8-.LFB8
	.byte	0x7
	.4byte	.LFB9
	.uleb128 .LFE9-.LFB9
	.byte	0x7
	.4byte	.LFB10
	.uleb128 .LFE10-.LFB10
	.byte	0x7
	.4byte	.LFB12
	.uleb128 .LFE12-.LFB12
	.byte	0x7
	.4byte	.LFB13
	.uleb128 .LFE13-.LFB13
	.byte	0x7
	.4byte	.LFB14
	.uleb128 .LFE14-.LFB14
	.byte	0x7
	.4byte	.LFB15
	.uleb128 .LFE15-.LFB15
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
	.uleb128 0x5
	.4byte	.LASF1
	.4byte	.LASF244
	.4byte	.LASF245
	.4byte	.LASF246
	.4byte	.LASF247
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0xb
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF248
	.byte	0x2
	.4byte	.LASF249
	.byte	0x3
	.4byte	.LASF250
	.byte	0x3
	.4byte	.LASF251
	.byte	0x1
	.4byte	.LASF252
	.byte	0x1
	.4byte	.LASF253
	.byte	0x2
	.4byte	.LASF254
	.byte	0x4
	.4byte	.LASF255
	.byte	0x4
	.4byte	.LASF256
	.byte	0x1
	.4byte	.LASF257
	.byte	0x2
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x4a
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
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE11
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM6
	.byte	0x3b
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
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
	.4byte	.LM8
	.byte	0x40
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE9
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM10
	.byte	0x45
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x19
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE10
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM12
	.byte	0x4f
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x6
	.byte	0x12
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x12
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x19
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x15
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x19
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x15
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x15
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x19
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x6
	.byte	0x19
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
	.4byte	.LFE12
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM37
	.byte	0x65
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
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x2a
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x23
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x26
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x26
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x26
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x2a
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x26
	.byte	0x9
	.2byte	.LM55-.LM54
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x23
	.byte	0x9
	.2byte	.LM57-.LM56
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM58-.LM57
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM59-.LM58
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE13
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM60
	.byte	0x76
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM61-.LM60
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM62-.LM61
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM63-.LM62
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM64-.LM63
	.byte	0x1b
	.byte	0x5
	.uleb128 0x52
	.byte	0x9
	.2byte	.LM65-.LM64
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x16
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM66-.LM65
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM67-.LM66
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x16
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM68-.LM67
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM69-.LM68
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM70-.LM69
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM71-.LM70
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM72-.LM71
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM73-.LM72
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM74-.LM73
	.byte	0x18
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM75-.LM74
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM76-.LM75
	.byte	0x12
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM77-.LM76
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM78-.LM77
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM79-.LM78
	.byte	0x13
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM80-.LM79
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM81-.LM80
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM82-.LM81
	.byte	0x6
	.byte	0x15
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM83-.LM82
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM84-.LM83
	.byte	0x19
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM85-.LM84
	.byte	0x15
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM86-.LM85
	.byte	0x19
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM87-.LM86
	.byte	0x15
	.byte	0x5
	.uleb128 0xa
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE14
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM88
	.byte	0x83
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM89-.LM88
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM90-.LM89
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE15
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF137:
	.string	"ROM_API_INDEX_SFlash_Software_Reset"
.LASF92:
	.string	"ROM_API_INDEX_HBN_Trim_RC32K"
.LASF144:
	.string	"ROM_API_INDEX_SFlash_Cache_Hit_Count_Get"
.LASF55:
	.string	"ROM_API_INDEX_EF_Ctrl_Read_RC32M_Trim"
.LASF187:
	.string	"ROM_API_INDEX_XIP_SFlash_GetDeviceId_Need_Lock"
.LASF151:
	.string	"ROM_API_INDEX_SF_Cfg_Init_Ext_Flash_Gpio"
.LASF13:
	.string	"size_t"
.LASF50:
	.string	"ROM_API_INDEX_EF_Ctrl_Program_Efuse_0"
.LASF27:
	.string	"ROM_API_INDEX_AON_Set_Xtal_CapCode"
.LASF176:
	.string	"ROM_API_INDEX_SF_Ctrl_Icache2_Set"
.LASF191:
	.string	"ROM_API_INDEX_XIP_SFlash_Write_With_Lock"
.LASF7:
	.string	"signed char"
.LASF139:
	.string	"ROM_API_INDEX_SFlash_Set_IDbus_Cfg"
.LASF51:
	.string	"ROM_API_INDEX_EF_Ctrl_Load_Efuse_R0"
.LASF30:
	.string	"ROM_API_INDEX_AON_Power_On_BG"
.LASF63:
	.string	"ROM_API_INDEX_GLB_Set_System_CLK"
.LASF79:
	.string	"ROM_API_INDEX_HBN_Mode_Enter"
.LASF118:
	.string	"ROM_API_INDEX_SFlash_Read_Reg"
.LASF76:
	.string	"ROM_API_INDEX_GLB_GPIO_OUTPUT_Disable"
.LASF131:
	.string	"ROM_API_INDEX_SFlash_GetJedecId"
.LASF117:
	.string	"ROM_API_INDEX_SFlash_SetSPIMode"
.LASF108:
	.string	"ROM_API_INDEX_PDS_Power_On_PLL"
.LASF194:
	.string	"ROM_API_INDEX_XIP_SFlash_Opt_Exit"
.LASF143:
	.string	"ROM_API_INDEX_SFlash_Cache_Read_Enable"
.LASF180:
	.string	"ROM_API_INDEX_SF_Ctrl_Set_Clock_Delay"
.LASF109:
	.string	"ROM_API_INDEX_PDS_Enable_PLL_All_Clks"
.LASF26:
	.string	"ROM_API_INDEX_AON_Power_On_XTAL"
.LASF58:
	.string	"ROM_API_INDEX_GLB_Get_Root_CLK_Sel"
.LASF39:
	.string	"ROM_API_INDEX_AON_LowPower_Exit_PDS0"
.LASF38:
	.string	"ROM_API_INDEX_AON_LowPower_Enter_PDS0"
.LASF48:
	.string	"ROM_API_INDEX_BL602_MemCmp"
.LASF217:
	.string	"exception_entry"
.LASF65:
	.string	"ROM_API_INDEX_GLB_Set_SF_CLK"
.LASF45:
	.string	"ROM_API_INDEX_BL602_MemCpy_Fast"
.LASF91:
	.string	"ROM_API_INDEX_HBN_Power_Off_RC32K"
.LASF5:
	.string	"long long int"
.LASF169:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Enable"
.LASF205:
	.string	"rtos_memcpy_ptr"
.LASF230:
	.string	"__global_pointer_head$"
.LASF200:
	.string	"vApplicationGetIdleTaskMemory"
.LASF22:
	.string	"ROM_API_INDEX_RSVD_1"
.LASF106:
	.string	"ROM_API_INDEX_PDS_Select_RC32M_As_PLL_Ref"
.LASF2:
	.string	"long long unsigned int"
.LASF199:
	.string	"interrupt_entry_ptr"
.LASF85:
	.string	"ROM_API_INDEX_HBN_Set_Ldo11_Soc_Vout"
.LASF203:
	.string	"rtos_sprintf"
.LASF75:
	.string	"ROM_API_INDEX_GLB_GPIO_OUTPUT_Enable"
.LASF46:
	.string	"ROM_API_INDEX_BL602_MemSet"
.LASF19:
	.string	"BL_Err_Type"
.LASF10:
	.string	"long int"
.LASF121:
	.string	"ROM_API_INDEX_SFlash_Write_Enable"
.LASF174:
	.string	"ROM_API_INDEX_SF_Ctrl_SendCmd"
.LASF21:
	.string	"ROM_API_INDEX_RSVD_0"
.LASF172:
	.string	"ROM_API_INDEX_SF_Ctrl_Get_Flash_Image_Offset"
.LASF77:
	.string	"ROM_API_INDEX_GLB_GPIO_Set_HZ"
.LASF73:
	.string	"ROM_API_INDEX_GLB_Swap_Flash_Pin"
.LASF204:
	.string	"vApplicationMallocFailedHook"
.LASF158:
	.string	"ROM_API_INDEX_SF_Ctrl_Enable"
.LASF82:
	.string	"ROM_API_INDEX_HBN_Reset"
.LASF23:
	.string	"ROM_API_INDEX_RSVD_LAST"
.LASF167:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Set_IV"
.LASF128:
	.string	"ROM_API_INDEX_SFlash_Erase"
.LASF216:
	.string	"sprintf"
.LASF83:
	.string	"ROM_API_INDEX_HBN_Set_Ldo11_Aon_Vout"
.LASF221:
	.string	"AON_Get_Xtal_CapCode"
.LASF160:
	.string	"ROM_API_INDEX_SF_Ctrl_Set_Owner"
.LASF18:
	.string	"TIMEOUT"
.LASF123:
	.string	"ROM_API_INDEX_SFlash_Volatile_Reg_Write_Enable"
.LASF140:
	.string	"ROM_API_INDEX_SFlash_IDbus_Read_Enable"
.LASF17:
	.string	"ERROR"
.LASF157:
	.string	"ROM_API_INDEX_SF_Cfg_Flash_Identify"
.LASF227:
	.string	"hal_sys_capcode_get"
.LASF208:
	.string	"rtos_memset_ptr"
.LASF163:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Enable_LE"
.LASF40:
	.string	"ROM_API_INDEX_ASM_Delay_Us"
.LASF95:
	.string	"ROM_API_INDEX_HBN_GPIO7_Dbg_Pull_Cfg"
.LASF31:
	.string	"ROM_API_INDEX_AON_Power_Off_BG"
.LASF47:
	.string	"ROM_API_INDEX_BL602_MemSet4"
.LASF153:
	.string	"ROM_API_INDEX_SF_Cfg_Deinit_Ext_Flash_Gpio"
.LASF4:
	.string	"unsigned int"
.LASF206:
	.string	"vAssertCalled"
.LASF214:
	.string	"strlen"
.LASF37:
	.string	"ROM_API_INDEX_AON_Power_Off_SFReg"
.LASF127:
	.string	"ROM_API_INDEX_SFlash_Blk64_Erase"
.LASF212:
	.string	"xISRStackTop"
.LASF11:
	.string	"long unsigned int"
.LASF89:
	.string	"ROM_API_INDEX_HBN_Power_Off_Xtal_32K"
.LASF142:
	.string	"ROM_API_INDEX_SFlash_Cache_Flush"
.LASF57:
	.string	"ROM_API_INDEX_EF_Ctrl_Clear"
.LASF24:
	.string	"ROM_API_INDEX_AON_Power_On_MBG"
.LASF56:
	.string	"ROM_API_INDEX_EF_Ctrl_Read_RC32K_Trim"
.LASF207:
	.string	"rtos_strlen_ptr"
.LASF61:
	.string	"ROM_API_INDEX_GLB_Get_HCLK_Div"
.LASF100:
	.string	"ROM_API_INDEX_PDS_Reset"
.LASF159:
	.string	"ROM_API_INDEX_SF_Ctrl_Select_Pad"
.LASF201:
	.string	"vApplicationStackOverflowHook"
.LASF243:
	.string	"__clzsi2"
.LASF9:
	.string	"short unsigned int"
.LASF33:
	.string	"ROM_API_INDEX_AON_Power_Off_LDO11_SOC"
.LASF171:
	.string	"ROM_API_INDEX_SF_Ctrl_Set_Flash_Image_Offset"
.LASF197:
	.string	"ROM_API_INDEX_FUNC_EMPTY_END"
.LASF218:
	.string	"interrupt_entry"
.LASF193:
	.string	"ROM_API_INDEX_XIP_SFlash_Opt_Enter"
.LASF213:
	.string	"strcpy"
.LASF173:
	.string	"ROM_API_INDEX_SF_Ctrl_Select_Clock"
.LASF210:
	.string	"exception_entry_ptr"
.LASF88:
	.string	"ROM_API_INDEX_HBN_Power_On_Xtal_32K"
.LASF138:
	.string	"ROM_API_INDEX_SFlash_Reset_Continue_Read"
.LASF240:
	.string	"hal_sys_capcode_update"
.LASF54:
	.string	"ROM_API_INDEX_EF_Ctrl_Get_Trim_Parity"
.LASF186:
	.string	"ROM_API_INDEX_XIP_SFlash_GetJedecId_Need_Lock"
.LASF113:
	.string	"ROM_API_INDEX_PDS_Power_Off_PLL"
.LASF164:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Set_Region"
.LASF69:
	.string	"ROM_API_INDEX_GLB_SW_POR_Reset"
.LASF196:
	.string	"ROM_API_INDEX_FUNC_EMPTY_START"
.LASF239:
	.string	"bl_sys_reset_system"
.LASF242:
	.string	"hal_poweroff"
.LASF96:
	.string	"ROM_API_INDEX_HBN_Set_Embedded_Flash_Pullup"
.LASF183:
	.string	"ROM_API_INDEX_XIP_SFlash_Erase_Need_Lock"
.LASF220:
	.string	"puts"
.LASF177:
	.string	"ROM_API_INDEX_SF_Ctrl_GetBusyState"
.LASF238:
	.string	"romapi_freertos_map"
.LASF190:
	.string	"ROM_API_INDEX_XIP_SFlash_Read_With_Lock"
.LASF115:
	.string	"ROM_API_INDEX_SEC_Eng_Turn_Off_Sec_Ring"
.LASF105:
	.string	"ROM_API_INDEX_PDS_Trim_RC32M"
.LASF202:
	.string	"vApplicationGetTimerTaskMemory"
.LASF133:
	.string	"ROM_API_INDEX_SFlash_Powerdown"
.LASF225:
	.string	"capin_static"
.LASF41:
	.string	"ROM_API_INDEX_BL602_Delay_US"
.LASF145:
	.string	"ROM_API_INDEX_SFlash_Cache_Miss_Count_Get"
.LASF43:
	.string	"ROM_API_INDEX_BL602_MemCpy"
.LASF94:
	.string	"ROM_API_INDEX_HBN_Pin_WakeUp_Mask"
.LASF25:
	.string	"ROM_API_INDEX_AON_Power_Off_MBG"
.LASF78:
	.string	"ROM_API_INDEX_GLB_GPIO_Get_Fun"
.LASF86:
	.string	"ROM_API_INDEX_HBN_32K_Sel"
.LASF53:
	.string	"ROM_API_INDEX_EF_Ctrl_AutoLoad_Done"
.LASF188:
	.string	"ROM_API_INDEX_XIP_SFlash_GetUniqueId_Need_Lock"
.LASF222:
	.string	"bl_sys_reset_por"
.LASF168:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Set_IV_BE"
.LASF134:
	.string	"ROM_API_INDEX_SFlash_Releae_Powerdown"
.LASF141:
	.string	"ROM_API_INDEX_SFlash_Cache_Enable_Set"
.LASF229:
	.string	"__freertos_irq_stack_top"
.LASF181:
	.string	"ROM_API_INDEX_XIP_SFlash_State_Save"
.LASF110:
	.string	"ROM_API_INDEX_PDS_Disable_PLL_All_Clks"
.LASF20:
	.string	"ROM_API_INDEX_VERSION"
.LASF124:
	.string	"ROM_API_INDEX_SFlash_Chip_Erase"
.LASF29:
	.string	"ROM_API_INDEX_AON_Power_Off_XTAL"
.LASF90:
	.string	"ROM_API_INDEX_HBN_Power_On_RC32K"
.LASF101:
	.string	"ROM_API_INDEX_PDS_Enable"
.LASF71:
	.string	"ROM_API_INDEX_GLB_Select_External_Flash"
.LASF130:
	.string	"ROM_API_INDEX_SFlash_GetUniqueId"
.LASF179:
	.string	"ROM_API_INDEX_SF_Ctrl_Get_Clock_Delay"
.LASF66:
	.string	"ROM_API_INDEX_GLB_Set_PKA_CLK_Sel"
.LASF166:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Set_Key_BE"
.LASF60:
	.string	"ROM_API_INDEX_GLB_Get_BCLK_Div"
.LASF3:
	.string	"unsigned char"
.LASF241:
	.string	"user_clz"
.LASF28:
	.string	"ROM_API_INDEX_AON_Get_Xtal_CapCode"
.LASF80:
	.string	"ROM_API_INDEX_HBN_Power_Down_Flash"
.LASF147:
	.string	"ROM_API_INDEX_SFlash_Read"
.LASF178:
	.string	"ROM_API_INDEX_SF_Ctrl_Is_AES_Enable"
.LASF8:
	.string	"short int"
.LASF35:
	.string	"ROM_API_INDEX_AON_Power_Off_LDO15_RF"
.LASF93:
	.string	"ROM_API_INDEX_HBN_Hw_Pu_Pd_Cfg"
.LASF150:
	.string	"ROM_API_INDEX_SFlash_Restore_From_Powerdown"
.LASF125:
	.string	"ROM_API_INDEX_SFlash_Sector_Erase"
.LASF34:
	.string	"ROM_API_INDEX_AON_Power_On_LDO15_RF"
.LASF97:
	.string	"ROM_API_INDEX_L1C_Set_Wrap"
.LASF112:
	.string	"ROM_API_INDEX_PDS_Disable_PLL_Clk"
.LASF72:
	.string	"ROM_API_INDEX_GLB_Deswap_Flash_Pin"
.LASF198:
	.string	"vApplicationIdleHook"
.LASF129:
	.string	"ROM_API_INDEX_SFlash_Program"
.LASF62:
	.string	"ROM_API_INDEX_Update_SystemCoreClockWith_XTAL"
.LASF119:
	.string	"ROM_API_INDEX_SFlash_Write_Reg"
.LASF64:
	.string	"ROM_API_INDEX_System_Core_Clock_Update_From_RC32M"
.LASF226:
	.string	"capout_static"
.LASF224:
	.string	"capout"
.LASF185:
	.string	"ROM_API_INDEX_XIP_SFlash_Read_Need_Lock"
.LASF15:
	.string	"uint32_t"
.LASF189:
	.string	"ROM_API_INDEX_XIP_SFlash_Read_Via_Cache_Need_Lock"
.LASF231:
	.string	"gp_data_start"
.LASF156:
	.string	"ROM_API_INDEX_SF_Cfg_Init_Flash_Gpio"
.LASF182:
	.string	"ROM_API_INDEX_XIP_SFlash_State_Restore"
.LASF49:
	.string	"ROM_API_INDEX_EF_Ctrl_Sw_AHB_Clk_0"
.LASF102:
	.string	"ROM_API_INDEX_PDS_Force_Config"
.LASF6:
	.string	"long double"
.LASF165:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Set_Key"
.LASF12:
	.string	"char"
.LASF68:
	.string	"ROM_API_INDEX_GLB_SW_CPU_Reset"
.LASF155:
	.string	"ROM_API_INDEX_SF_Cfg_Get_Flash_Cfg_Need_Lock"
.LASF87:
	.string	"ROM_API_INDEX_HBN_Set_ROOT_CLK_Sel"
.LASF44:
	.string	"ROM_API_INDEX_BL602_MemCpy4"
.LASF52:
	.string	"ROM_API_INDEX_EF_Ctrl_Busy"
.LASF223:
	.string	"capin"
.LASF103:
	.string	"ROM_API_INDEX_PDS_RAM_Config"
.LASF81:
	.string	"ROM_API_INDEX_HBN_Enable"
.LASF237:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF14:
	.string	"uint8_t"
.LASF98:
	.string	"ROM_API_INDEX_L1C_Set_Way_Disable"
.LASF195:
	.string	"ROM_API_INDEX_BFLB_Soft_CRC32"
.LASF175:
	.string	"ROM_API_INDEX_SF_Ctrl_Icache_Set"
.LASF232:
	.string	"romapi_freertos"
.LASF215:
	.string	"memcpy"
.LASF135:
	.string	"ROM_API_INDEX_SFlash_SetBurstWrap"
.LASF209:
	.string	"rtos_clz"
.LASF228:
	.string	"hal_sys_romapi_get"
.LASF136:
	.string	"ROM_API_INDEX_SFlash_DisableBurstWrap"
.LASF235:
	.string	"hal_sys_reset"
.LASF234:
	.string	"hal_sys_romapi_update"
.LASF42:
	.string	"ROM_API_INDEX_BL602_Delay_MS"
.LASF36:
	.string	"ROM_API_INDEX_AON_Power_On_SFReg"
.LASF32:
	.string	"ROM_API_INDEX_AON_Power_On_LDO11_SOC"
.LASF236:
	.string	"hal_reboot"
.LASF70:
	.string	"ROM_API_INDEX_GLB_Select_Internal_Flash"
.LASF99:
	.string	"ROM_API_INDEX_L1C_IROM_2T_Access_Set"
.LASF233:
	.string	"priorities"
.LASF219:
	.string	"memset"
.LASF104:
	.string	"ROM_API_INDEX_PDS_Default_Level_Config"
.LASF114:
	.string	"ROM_API_INDEX_SEC_Eng_Turn_On_Sec_Ring"
.LASF59:
	.string	"ROM_API_INDEX_GLB_Set_System_CLK_Div"
.LASF211:
	.string	"rtos_strcpy_ptr"
.LASF161:
	.string	"ROM_API_INDEX_SF_Ctrl_Disable"
.LASF162:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Enable_BE"
.LASF16:
	.string	"SUCCESS"
.LASF152:
	.string	"ROM_API_INDEX_SF_Cfg_Init_Internal_Flash_Gpio"
.LASF116:
	.string	"ROM_API_INDEX_SFlash_Init"
.LASF67:
	.string	"ROM_API_INDEX_GLB_SW_System_Reset"
.LASF126:
	.string	"ROM_API_INDEX_SFlash_Blk32_Erase"
.LASF111:
	.string	"ROM_API_INDEX_PDS_Enable_PLL_Clk"
.LASF120:
	.string	"ROM_API_INDEX_SFlash_Busy"
.LASF170:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Disable"
.LASF132:
	.string	"ROM_API_INDEX_SFlash_GetDeviceId"
.LASF107:
	.string	"ROM_API_INDEX_PDS_Select_XTAL_As_PLL_Ref"
.LASF148:
	.string	"ROM_API_INDEX_SFlash_Read_Reg_With_Cmd"
.LASF122:
	.string	"ROM_API_INDEX_SFlash_Qspi_Enable"
.LASF192:
	.string	"ROM_API_INDEX_XIP_SFlash_Erase_With_Lock"
.LASF184:
	.string	"ROM_API_INDEX_XIP_SFlash_Write_Need_Lock"
.LASF146:
	.string	"ROM_API_INDEX_SFlash_Cache_Read_Disable"
.LASF74:
	.string	"ROM_API_INDEX_GLB_GPIO_Init"
.LASF149:
	.string	"ROM_API_INDEX_SFlash_Write_Reg_With_Cmd"
.LASF84:
	.string	"ROM_API_INDEX_HBN_Set_Ldo11_Rt_Vout"
.LASF154:
	.string	"ROM_API_INDEX_SF_Cfg_Restore_GPIO17_Fun"
	.section	.debug_line_str,"MS",@progbits,1
.LASF247:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_sys.c"
.LASF244:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/hal_drv"
.LASF248:
	.string	"hal_sys.c"
.LASF252:
	.string	"bl602_romdriver.h"
.LASF254:
	.string	"string.h"
.LASF251:
	.string	"bl602_common.h"
.LASF250:
	.string	"stdint-gcc.h"
.LASF257:
	.string	"bl_sys.h"
.LASF256:
	.string	"bl602_aon.h"
.LASF245:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal"
.LASF246:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF253:
	.string	"hal_sys.h"
.LASF255:
	.string	"stdio.h"
.LASF249:
	.string	"stddef.h"
	.globl	__clzsi2
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
