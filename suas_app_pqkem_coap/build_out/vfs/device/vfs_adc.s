	.file	"vfs_adc.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.vfs_adc_notify,"ax",@progbits
	.align	1
	.type	vfs_adc_notify, @function
vfs_adc_notify:
.LVL0:
.LFB8:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
.LM4:
	lw	a5,20(a0)
	beq	a5,zero,.L1
.LM5:
.LM6:
	lw	a4,16(a0)
.LM7:
	lhu	a5,6(a4)
	ori	a5,a5,1
	sh	a5,6(a4)
.LM8:
.LM9:
	lw	a5,20(a0)
	lw	a1,24(a0)
	lw	a0,16(a0)
.LVL1:
.LM10:
	jr	a5
.LVL2:
.L1:
.LM11:
	ret
	.cfi_endproc
.LFE8:
	.size	vfs_adc_notify, .-vfs_adc_notify
	.section	.text.vfs_adc_close,"ax",@progbits
	.align	1
	.globl	vfs_adc_close
	.type	vfs_adc_close, @function
vfs_adc_close:
.LVL3:
.LFB6:
.LM12:
	.cfi_startproc
.LM13:
.LM14:
.LM15:
.LM16:
	beq	a0,zero,.L6
.LM17:
	lw	a5,0(a0)
.LM18:
	beq	a5,zero,.L6
.LM19:
.LM20:
	lbu	a3,17(a5)
	li	a4,1
.LM21:
	li	a0,0
.LVL4:
.LM22:
	bne	a3,a4,.L10
.LM23:
.LM24:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
.LM25:
	lw	s0,4(a5)
.LVL5:
.LM26:
.LM27:
	beq	s0,zero,.L8
.LM28:
	addi	a0,s0,12
	call	aos_mutex_free
.LVL6:
.LM29:
.LM30:
	mv	a0,s0
.LM31:
	lw	s0,8(sp)
	.cfi_restore 8
.LVL7:
.LM32:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LM33:
	tail	hal_adc_finalize
.LVL8:
.L6:
.LM34:
	li	a0,-22
.LVL9:
.LM35:
	ret
.LVL10:
.L8:
	.cfi_def_cfa_offset 16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
.LM36:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL11:
.LM37:
	li	a0,-22
.LVL12:
.LM38:
.LM39:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL13:
.L10:
.LM40:
	ret
	.cfi_endproc
.LFE6:
	.size	vfs_adc_close, .-vfs_adc_close
	.section	.text.vfs_adc_poll,"ax",@progbits
	.align	1
	.type	vfs_adc_poll, @function
vfs_adc_poll:
.LVL14:
.LFB9:
.LM41:
	.cfi_startproc
.LM42:
.LM43:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	s6,0(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s2,16(sp)
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
.LM44:
	lw	a5,0(a0)
.LM45:
	mv	s3,a1
.LM46:
	li	a1,-1
.LVL15:
.LM47:
	lw	s0,4(a5)
.LVL16:
.LM48:
.LM49:
	mv	s4,a2
	mv	s5,a3
.LM50:
	addi	a0,s0,12
.LVL17:
.LM51:
	mv	s6,a4
	lui	s1,%hi(vfs_adc_notify)
.LM52:
	call	aos_mutex_lock
.LVL18:
.LM53:
.LM54:
	bne	s3,zero,.L14
.LM55:
	call	vTaskEnterCritical
.LVL19:
.LM56:
.LM57:
	addi	a1,s1,%lo(vfs_adc_notify)
.LM58:
	sw	zero,20(s0)
.LM59:
.LM60:
	sw	zero,24(s0)
.LM61:
	mv	a0,s0
	call	hal_adc_notify_unregister
.LVL20:
.LM62:
.L17:
.L15:
.LM63:
	call	vTaskExitCritical
.LVL21:
.LM64:
	addi	a0,s0,12
	call	aos_mutex_unlock
.LVL22:
.LM65:
.LM66:
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL23:
.LM67:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
.LVL24:
.LM68:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL25:
.LM69:
	lw	s5,4(sp)
	.cfi_restore 21
.LVL26:
.LM70:
	lw	s6,0(sp)
	.cfi_restore 22
.LVL27:
.LM71:
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL28:
.L14:
	.cfi_restore_state
.LM72:
	call	vTaskEnterCritical
.LVL29:
.LM73:
.LM74:
	addi	a1,s1,%lo(vfs_adc_notify)
.LM75:
	sw	s4,20(s0)
.LM76:
.LM77:
	sw	s5,16(s0)
.LM78:
.LM79:
	sw	s6,24(s0)
.LM80:
	mv	a0,s0
	call	hal_adc_notify_register
.LVL30:
	j	.L17
	.cfi_endproc
.LFE9:
	.size	vfs_adc_poll, .-vfs_adc_poll
	.section	.text.vfs_adc_ioctl,"ax",@progbits
	.align	1
	.type	vfs_adc_ioctl, @function
vfs_adc_ioctl:
.LVL31:
.LFB10:
.LM81:
	.cfi_startproc
.LM82:
.LM83:
.LM84:
.LM85:
.LM86:
.LM87:
.LM88:
	beq	a0,zero,.L28
.LM89:
	lw	a4,0(a0)
	li	a5,-22
.LM90:
	beq	a4,zero,.L38
.LM91:
.LM92:
	lw	a0,4(a4)
.LVL32:
.LM93:
.LM94:
	beq	a0,zero,.L38
.LM95:
	li	a4,4
	bgtu	a1,a4,.L38
	lui	a5,%hi(.L21)
	addi	a5,a5,%lo(.L21)
	slli	a1,a1,2
.LVL33:
.LM96:
	add	a1,a1,a5
	lw	a5,0(a1)
.LM97:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM98:
	jr	a5
	.section	.rodata.vfs_adc_ioctl,"a",@progbits
	.align	2
	.align	2
.L21:
	.word	.L25
	.word	.L24
	.word	.L23
	.word	.L22
	.word	.L20
	.section	.text.vfs_adc_ioctl
.L25:
.LM99:
.LM100:
	call	hal_adc_notify_register_config_disable
.LVL34:
.L41:
.LM101:
.LM102:
	li	a5,0
.LM103:
	beq	a0,zero,.L18
.LM104:
	li	a5,-5
.LVL35:
.L18:
.LM105:
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL36:
.L24:
	.cfi_restore_state
.LM106:
.LM107:
	call	hal_adc_notify_register_config_high
.LVL37:
.LM108:
	j	.L41
.LVL38:
.L23:
.LM109:
.LM110:
	call	hal_adc_notify_register_config_low
.LVL39:
.LM111:
	j	.L41
.LVL40:
.L22:
.LM112:
	li	a5,-22
.LM113:
	beq	a2,zero,.L18
.LM114:
.LM115:
	lw	a1,0(a2)
	call	hal_adc_notify_register_config_higher
.LVL41:
.LM116:
	j	.L41
.LVL42:
.L20:
.LM117:
	li	a5,-22
.LM118:
	beq	a2,zero,.L18
.LM119:
.LM120:
	lw	a1,0(a2)
	call	hal_adc_notify_register_config_lower
.LVL43:
.LM121:
	j	.L41
.LVL44:
.L28:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
.LM122:
	li	a5,-22
.LVL45:
.L38:
.LM123:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE10:
	.size	vfs_adc_ioctl, .-vfs_adc_ioctl
	.section	.text.vfs_adc_read,"ax",@progbits
	.align	1
	.type	vfs_adc_read, @function
vfs_adc_read:
.LVL46:
.LFB7:
.LM124:
	.cfi_startproc
.LM125:
.LM126:
.LM127:
.LM128:
.LM129:
.LM130:
	beq	a0,zero,.L44
.LM131:
	addi	a2,a2,-4
.LVL47:
.LM132:
	bne	a2,zero,.L44
.LM133:
	lw	a4,0(a0)
.LM134:
	li	a5,-22
.LM135:
	beq	a4,zero,.L55
.LM136:
.LM137:
	lw	a0,4(a4)
.LVL48:
.LM138:
.LM139:
	beq	a0,zero,.L55
.LM140:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
.LM141:
	li	a2,-1
.LVL49:
	.cfi_offset 8, -8
.LM142:
	mv	s0,a1
.LM143:
.LM144:
	addi	a1,sp,12
.LVL50:
.LM145:
	sw	ra,28(sp)
	.cfi_offset 1, -4
.LM146:
	call	hal_adc_value_get
.LVL51:
.LM147:
.LM148:
	li	a5,-5
.LM149:
	bne	a0,zero,.L42
.LM150:
.LVL52:
.LM151:
	li	a2,4
	addi	a1,sp,12
	mv	a0,s0
	call	memcpy
.LVL53:
.LM152:
	li	a5,4
.LVL54:
.L42:
.LM153:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL55:
.LM154:
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL56:
.L44:
.LM155:
	li	a5,-22
.LVL57:
.L55:
.LM156:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE7:
	.size	vfs_adc_read, .-vfs_adc_read
	.section	.text.vfs_adc_open,"ax",@progbits
	.align	1
	.type	vfs_adc_open, @function
vfs_adc_open:
.LVL58:
.LFB5:
.LM157:
	.cfi_startproc
.LM158:
.LM159:
.LM160:
.LM161:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
.LM162:
	li	s0,-22
.LM163:
	beq	a1,zero,.L58
.LM164:
	lw	a5,0(a1)
.LM165:
	beq	a5,zero,.L58
.LM166:
.LM167:
	lbu	a3,17(a5)
	li	a4,1
.LM168:
	li	s0,0
.LM169:
	bne	a3,a4,.L58
.LM170:
.LM171:
	lw	s1,4(a5)
.LVL59:
.LM172:
.LM173:
	mv	a0,s1
.LVL60:
.LM174:
	call	hal_adc_init
.LVL61:
.LM175:
	mv	s0,a0
.LVL62:
.LM176:
.LM177:
	bne	a0,zero,.L58
.LM178:
	addi	a0,s1,12
	call	aos_mutex_new
.LVL63:
.L58:
.LM179:
	lw	ra,12(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	vfs_adc_open, .-vfs_adc_open
	.globl	adc_ops
	.section	.rodata.adc_ops,"a"
	.align	2
	.type	adc_ops, @object
	.size	adc_ops, 28
adc_ops:
	.word	vfs_adc_open
	.word	vfs_adc_close
	.word	vfs_adc_read
	.zero	4
	.word	vfs_adc_ioctl
	.word	vfs_adc_poll
	.zero	4
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf38
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1a
	.4byte	.LASF154
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL26
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
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x68
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x2
	.byte	0xc8
	.byte	0x17
	.4byte	0x6f
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x32
	.uleb128 0x8
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
	.uleb128 0x1c
	.byte	0x4
	.uleb128 0x16
	.4byte	0x114
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0xd5
	.byte	0x18
	.4byte	0x4e
	.uleb128 0x4
	.4byte	0x12c
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF26
	.uleb128 0x13
	.4byte	0x12c
	.uleb128 0x4
	.4byte	0x133
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
	.4byte	0x39
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x6
	.byte	0x34
	.byte	0x1b
	.4byte	0x68
	.uleb128 0x4
	.4byte	0x17e
	.uleb128 0xf
	.4byte	0x189
	.uleb128 0x1
	.4byte	0x114
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x7
	.byte	0x2a
	.byte	0x19
	.4byte	0x76
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x10
	.byte	0x8
	.byte	0x2f
	.4byte	0x1bc
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x8
	.byte	0x30
	.byte	0x9
	.4byte	0x189
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x8
	.byte	0x31
	.byte	0x7
	.4byte	0x55
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x9
	.byte	0x61
	.byte	0x14
	.4byte	0x9c
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x9
	.byte	0x66
	.byte	0x15
	.4byte	0xa8
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x9
	.byte	0x89
	.byte	0x11
	.4byte	0xe4
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x9
	.byte	0x9f
	.byte	0x11
	.4byte	0xc0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x9
	.byte	0xa3
	.byte	0x11
	.4byte	0xcc
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x9
	.byte	0xa7
	.byte	0x11
	.4byte	0xd8
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x9
	.byte	0xbb
	.byte	0x12
	.4byte	0xf0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x9
	.byte	0xc0
	.byte	0x13
	.4byte	0x11b
	.uleb128 0xb
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0xc
	.4byte	0x233
	.uleb128 0x10
	.string	"hdl"
	.byte	0xa
	.byte	0x18
	.byte	0xf
	.4byte	0x114
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0xa
	.byte	0x19
	.byte	0x7
	.4byte	0x21c
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0xa
	.byte	0x1c
	.byte	0x17
	.4byte	0x233
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x58
	.byte	0xb
	.byte	0x1b
	.4byte	0x30e
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0xb
	.byte	0x1d
	.byte	0x9
	.4byte	0x1e0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0xb
	.byte	0x1e
	.byte	0x9
	.4byte	0x1d4
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0xb
	.byte	0x1f
	.byte	0xa
	.4byte	0x204
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0xb
	.byte	0x20
	.byte	0xb
	.4byte	0x210
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0xb
	.byte	0x21
	.byte	0x9
	.4byte	0x1ec
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0xb
	.byte	0x22
	.byte	0x9
	.4byte	0x1f8
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0xb
	.byte	0x23
	.byte	0x9
	.4byte	0x1e0
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0xb
	.byte	0x24
	.byte	0x9
	.4byte	0x13d
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0xb
	.byte	0x2a
	.byte	0x13
	.4byte	0x195
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0xb
	.byte	0x2b
	.byte	0x13
	.4byte	0x195
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0xb
	.byte	0x2c
	.byte	0x13
	.4byte	0x195
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0xb
	.byte	0x2d
	.byte	0xd
	.4byte	0x1c8
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0xb
	.byte	0x2e
	.byte	0xc
	.4byte	0x1bc
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0xb
	.byte	0x30
	.byte	0x8
	.4byte	0x30e
	.byte	0x50
	.byte	0
	.uleb128 0x17
	.4byte	0x55
	.4byte	0x31e
	.uleb128 0x1d
	.4byte	0x32
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x24
	.byte	0xc
	.byte	0x4
	.4byte	0x3a0
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0xc
	.byte	0x5
	.byte	0xa
	.4byte	0x55
	.byte	0
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0xc
	.byte	0x6
	.byte	0xa
	.4byte	0x55
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0xc
	.byte	0x7
	.byte	0xa
	.4byte	0x55
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0xc
	.byte	0x8
	.byte	0xa
	.4byte	0x55
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0xc
	.byte	0x9
	.byte	0xa
	.4byte	0x55
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0xc
	.byte	0xa
	.byte	0xa
	.4byte	0x55
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0xc
	.byte	0xb
	.byte	0xa
	.4byte	0x55
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0xc
	.byte	0xc
	.byte	0xa
	.4byte	0x55
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0xc
	.byte	0xd
	.byte	0xa
	.4byte	0x55
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0xc
	.byte	0x10
	.byte	0x9
	.4byte	0x3d1
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0xc
	.byte	0x11
	.byte	0x9
	.4byte	0x82
	.byte	0
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0xc
	.byte	0x12
	.byte	0xd
	.4byte	0x161
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0xc
	.byte	0x13
	.byte	0xa
	.4byte	0x3d1
	.byte	0x5
	.byte	0
	.uleb128 0x17
	.4byte	0x12c
	.4byte	0x3e0
	.uleb128 0x1e
	.4byte	0x32
	.byte	0
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0xc
	.byte	0x14
	.byte	0x3
	.4byte	0x3a0
	.uleb128 0xb
	.byte	0x8
	.byte	0xc
	.byte	0x16
	.byte	0x9
	.4byte	0x410
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0xc
	.byte	0x17
	.byte	0x9
	.4byte	0x82
	.byte	0
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0xc
	.byte	0x18
	.byte	0x9
	.4byte	0x82
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0xc
	.byte	0x19
	.byte	0x3
	.4byte	0x3ec
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0xd
	.byte	0x2c
	.byte	0x1f
	.4byte	0x490
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0x1c
	.byte	0xd
	.byte	0x46
	.4byte	0x490
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0xd
	.byte	0x47
	.byte	0xb
	.4byte	0x6fd
	.byte	0
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0xd
	.byte	0x48
	.byte	0xb
	.4byte	0x711
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0xd
	.byte	0x49
	.byte	0xf
	.4byte	0x72f
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0xd
	.byte	0x4a
	.byte	0xf
	.4byte	0x758
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0xd
	.byte	0x4b
	.byte	0xb
	.4byte	0x776
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0xd
	.byte	0x4d
	.byte	0xb
	.4byte	0x7a5
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0xd
	.byte	0x4f
	.byte	0xb
	.4byte	0x711
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.4byte	0x428
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0xd
	.byte	0x2d
	.byte	0x1d
	.4byte	0x5b2
	.uleb128 0xd
	.4byte	.LASF88
	.byte	0x50
	.byte	0xd
	.byte	0x52
	.4byte	0x5b2
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0xd
	.byte	0x53
	.byte	0xb
	.4byte	0x7c3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0xd
	.byte	0x54
	.byte	0xb
	.4byte	0x711
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0xd
	.byte	0x55
	.byte	0xf
	.4byte	0x7e1
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0xd
	.byte	0x56
	.byte	0xf
	.4byte	0x7ff
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0xd
	.byte	0x57
	.byte	0xd
	.4byte	0x81d
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0xd
	.byte	0x58
	.byte	0xb
	.4byte	0x711
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0xd
	.byte	0x59
	.byte	0xb
	.4byte	0x840
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0xd
	.byte	0x5a
	.byte	0xb
	.4byte	0x859
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0xd
	.byte	0x5b
	.byte	0xb
	.4byte	0x877
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0xd
	.byte	0x5c
	.byte	0x12
	.4byte	0x895
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0xd
	.byte	0x5d
	.byte	0x15
	.4byte	0x8b3
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0xd
	.byte	0x5e
	.byte	0xb
	.4byte	0x8cc
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0xd
	.byte	0x5f
	.byte	0xb
	.4byte	0x859
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0xd
	.byte	0x60
	.byte	0xb
	.4byte	0x859
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0xd
	.byte	0x61
	.byte	0xc
	.4byte	0x8e1
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0xd
	.byte	0x62
	.byte	0xc
	.4byte	0x8fa
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0xd
	.byte	0x63
	.byte	0xc
	.4byte	0x914
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0xd
	.byte	0x64
	.byte	0xb
	.4byte	0x776
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0xd
	.byte	0x65
	.byte	0xb
	.4byte	0x937
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0xd
	.byte	0x66
	.byte	0xb
	.4byte	0x7c3
	.byte	0x4c
	.byte	0
	.uleb128 0x13
	.4byte	0x4a1
	.uleb128 0x1f
	.4byte	.LASF155
	.byte	0x4
	.byte	0xd
	.byte	0x2f
	.byte	0x7
	.4byte	0x5db
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x30
	.byte	0x17
	.4byte	0x5db
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x31
	.byte	0x15
	.4byte	0x5e0
	.byte	0
	.uleb128 0x4
	.4byte	0x41c
	.uleb128 0x4
	.4byte	0x495
	.uleb128 0xb
	.byte	0x14
	.byte	0xd
	.byte	0x35
	.byte	0x9
	.4byte	0x63d
	.uleb128 0x10
	.string	"ops"
	.byte	0xd
	.byte	0x36
	.byte	0x17
	.4byte	0x5b7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0xd
	.byte	0x37
	.byte	0xb
	.4byte	0x114
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0xd
	.byte	0x38
	.byte	0xb
	.4byte	0x127
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0xd
	.byte	0x39
	.byte	0x9
	.4byte	0x82
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0xd
	.byte	0x3a
	.byte	0xd
	.4byte	0x161
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0xd
	.byte	0x3b
	.byte	0xd
	.4byte	0x161
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0xd
	.byte	0x3c
	.byte	0x3
	.4byte	0x5e5
	.uleb128 0xb
	.byte	0xc
	.byte	0xd
	.byte	0x3e
	.byte	0x9
	.4byte	0x67a
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xd
	.byte	0x3f
	.byte	0xe
	.4byte	0x67a
	.byte	0
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0xd
	.byte	0x40
	.byte	0xb
	.4byte	0x114
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0xd
	.byte	0x41
	.byte	0xc
	.4byte	0x89
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	0x63d
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0xd
	.byte	0x42
	.byte	0x3
	.4byte	0x649
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0xd
	.byte	0x45
	.byte	0x10
	.4byte	0x697
	.uleb128 0x4
	.4byte	0x69c
	.uleb128 0xf
	.4byte	0x6ac
	.uleb128 0x1
	.4byte	0x6ac
	.uleb128 0x1
	.4byte	0x114
	.byte	0
	.uleb128 0x4
	.4byte	0x6b1
	.uleb128 0xd
	.4byte	.LASF114
	.byte	0x8
	.byte	0xe
	.byte	0x7
	.4byte	0x6e4
	.uleb128 0x10
	.string	"fd"
	.byte	0xe
	.byte	0x8
	.byte	0x9
	.4byte	0x82
	.byte	0
	.uleb128 0x2
	.4byte	.LASF115
	.byte	0xe
	.byte	0x9
	.byte	0xb
	.4byte	0x47
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0xe
	.byte	0xa
	.byte	0xb
	.4byte	0x47
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	0x82
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x67a
	.uleb128 0x1
	.4byte	0x6f8
	.byte	0
	.uleb128 0x4
	.4byte	0x67f
	.uleb128 0x4
	.4byte	0x6e4
	.uleb128 0x5
	.4byte	0x82
	.4byte	0x711
	.uleb128 0x1
	.4byte	0x6f8
	.byte	0
	.uleb128 0x4
	.4byte	0x702
	.uleb128 0x5
	.4byte	0x149
	.4byte	0x72f
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x114
	.uleb128 0x1
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	0x716
	.uleb128 0x5
	.4byte	0x149
	.4byte	0x74d
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x74d
	.uleb128 0x1
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	0x757
	.uleb128 0x16
	.4byte	0x74d
	.uleb128 0x20
	.uleb128 0x4
	.4byte	0x734
	.uleb128 0x5
	.4byte	0x82
	.4byte	0x776
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x4
	.4byte	0x75d
	.uleb128 0x5
	.4byte	0x82
	.4byte	0x79e
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x79e
	.uleb128 0x1
	.4byte	0x68b
	.uleb128 0x1
	.4byte	0x6ac
	.uleb128 0x1
	.4byte	0x114
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.4byte	.LASF117
	.uleb128 0x4
	.4byte	0x77b
	.uleb128 0x5
	.4byte	0x82
	.4byte	0x7c3
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x138
	.uleb128 0x1
	.4byte	0x82
	.byte	0
	.uleb128 0x4
	.4byte	0x7aa
	.uleb128 0x5
	.4byte	0x149
	.4byte	0x7e1
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x127
	.uleb128 0x1
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	0x7c8
	.uleb128 0x5
	.4byte	0x149
	.4byte	0x7ff
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x138
	.uleb128 0x1
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	0x7e6
	.uleb128 0x5
	.4byte	0x13d
	.4byte	0x81d
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x13d
	.uleb128 0x1
	.4byte	0x82
	.byte	0
	.uleb128 0x4
	.4byte	0x804
	.uleb128 0x5
	.4byte	0x82
	.4byte	0x83b
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x138
	.uleb128 0x1
	.4byte	0x83b
	.byte	0
	.uleb128 0x4
	.4byte	0x24b
	.uleb128 0x4
	.4byte	0x822
	.uleb128 0x5
	.4byte	0x82
	.4byte	0x859
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x138
	.byte	0
	.uleb128 0x4
	.4byte	0x845
	.uleb128 0x5
	.4byte	0x82
	.4byte	0x877
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x138
	.uleb128 0x1
	.4byte	0x138
	.byte	0
	.uleb128 0x4
	.4byte	0x85e
	.uleb128 0x5
	.4byte	0x890
	.4byte	0x890
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x138
	.byte	0
	.uleb128 0x4
	.4byte	0x410
	.uleb128 0x4
	.4byte	0x87c
	.uleb128 0x5
	.4byte	0x8ae
	.4byte	0x8ae
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x890
	.byte	0
	.uleb128 0x4
	.4byte	0x3e0
	.uleb128 0x4
	.4byte	0x89a
	.uleb128 0x5
	.4byte	0x82
	.4byte	0x8cc
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x890
	.byte	0
	.uleb128 0x4
	.4byte	0x8b8
	.uleb128 0xf
	.4byte	0x8e1
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x890
	.byte	0
	.uleb128 0x4
	.4byte	0x8d1
	.uleb128 0x5
	.4byte	0x55
	.4byte	0x8fa
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x890
	.byte	0
	.uleb128 0x4
	.4byte	0x8e6
	.uleb128 0xf
	.4byte	0x914
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x890
	.uleb128 0x1
	.4byte	0x55
	.byte	0
	.uleb128 0x4
	.4byte	0x8ff
	.uleb128 0x5
	.4byte	0x82
	.4byte	0x932
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x138
	.uleb128 0x1
	.4byte	0x932
	.byte	0
	.uleb128 0x4
	.4byte	0x31e
	.uleb128 0x4
	.4byte	0x919
	.uleb128 0x21
	.4byte	.LASF144
	.byte	0x12
	.byte	0xf
	.byte	0x1e
	.4byte	0x490
	.uleb128 0xb
	.byte	0x4
	.byte	0xf
	.byte	0x8
	.byte	0x9
	.4byte	0x95f
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0xf
	.byte	0x9
	.byte	0xe
	.4byte	0x16d
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0xf
	.byte	0xa
	.byte	0x3
	.4byte	0x948
	.uleb128 0xb
	.byte	0x1c
	.byte	0xf
	.byte	0xc
	.byte	0x9
	.4byte	0x9cf
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0xf
	.byte	0xd
	.byte	0xd
	.4byte	0x161
	.byte	0
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0xf
	.byte	0xe
	.byte	0x12
	.4byte	0x95f
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0xf
	.byte	0xf
	.byte	0xb
	.4byte	0x114
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0xf
	.byte	0x10
	.byte	0xb
	.4byte	0x114
	.byte	0xc
	.uleb128 0x10
	.string	"fd"
	.byte	0xf
	.byte	0x11
	.byte	0xb
	.4byte	0x114
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0xf
	.byte	0x12
	.byte	0xb
	.4byte	0x114
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0xf
	.byte	0x13
	.byte	0xb
	.4byte	0x114
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0xf
	.byte	0x14
	.byte	0x3
	.4byte	0x96b
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.4byte	.LASF127
	.uleb128 0x22
	.4byte	0x93c
	.byte	0x1
	.byte	0xf7
	.byte	0x17
	.uleb128 0x5
	.byte	0x3
	.4byte	adc_ops
	.uleb128 0x7
	.4byte	.LASF128
	.byte	0xa
	.byte	0x94
	.byte	0x9
	.4byte	0x82
	.4byte	0xa06
	.uleb128 0x1
	.4byte	0xa06
	.byte	0
	.uleb128 0x4
	.4byte	0x23f
	.uleb128 0x7
	.4byte	.LASF129
	.byte	0xf
	.byte	0x1d
	.byte	0x9
	.4byte	0x155
	.4byte	0xa21
	.uleb128 0x1
	.4byte	0xa21
	.byte	0
	.uleb128 0x4
	.4byte	0x9cf
	.uleb128 0x7
	.4byte	.LASF130
	.byte	0x10
	.byte	0x1f
	.byte	0x8
	.4byte	0x114
	.4byte	0xa46
	.uleb128 0x1
	.4byte	0x116
	.uleb128 0x1
	.4byte	0x752
	.uleb128 0x1
	.4byte	0x89
	.byte	0
	.uleb128 0x7
	.4byte	.LASF131
	.byte	0xf
	.byte	0x28
	.byte	0x9
	.4byte	0x155
	.4byte	0xa66
	.uleb128 0x1
	.4byte	0xa21
	.uleb128 0x1
	.4byte	0xa66
	.uleb128 0x1
	.4byte	0x16d
	.byte	0
	.uleb128 0x4
	.4byte	0x16d
	.uleb128 0x7
	.4byte	.LASF132
	.byte	0xf
	.byte	0x68
	.byte	0x5
	.4byte	0x82
	.4byte	0xa86
	.uleb128 0x1
	.4byte	0xa21
	.uleb128 0x1
	.4byte	0x82
	.byte	0
	.uleb128 0x7
	.4byte	.LASF133
	.byte	0xf
	.byte	0x5f
	.byte	0x5
	.4byte	0x82
	.4byte	0xaa1
	.uleb128 0x1
	.4byte	0xa21
	.uleb128 0x1
	.4byte	0x82
	.byte	0
	.uleb128 0x7
	.4byte	.LASF134
	.byte	0xf
	.byte	0x56
	.byte	0x5
	.4byte	0x82
	.4byte	0xab7
	.uleb128 0x1
	.4byte	0xa21
	.byte	0
	.uleb128 0x7
	.4byte	.LASF135
	.byte	0xf
	.byte	0x4d
	.byte	0x5
	.4byte	0x82
	.4byte	0xacd
	.uleb128 0x1
	.4byte	0xa21
	.byte	0
	.uleb128 0x7
	.4byte	.LASF136
	.byte	0xf
	.byte	0x44
	.byte	0x5
	.4byte	0x82
	.4byte	0xae3
	.uleb128 0x1
	.4byte	0xa21
	.byte	0
	.uleb128 0x7
	.4byte	.LASF137
	.byte	0xa
	.byte	0xb1
	.byte	0x9
	.4byte	0x82
	.4byte	0xaf9
	.uleb128 0x1
	.4byte	0xa06
	.byte	0
	.uleb128 0x7
	.4byte	.LASF138
	.byte	0xf
	.byte	0x3b
	.byte	0x5
	.4byte	0x82
	.4byte	0xb14
	.uleb128 0x1
	.4byte	0xa21
	.uleb128 0x1
	.4byte	0x179
	.byte	0
	.uleb128 0x19
	.4byte	.LASF140
	.byte	0x67
	.uleb128 0x7
	.4byte	.LASF139
	.byte	0xf
	.byte	0x71
	.byte	0x5
	.4byte	0x82
	.4byte	0xb35
	.uleb128 0x1
	.4byte	0xa21
	.uleb128 0x1
	.4byte	0x179
	.byte	0
	.uleb128 0x19
	.4byte	.LASF141
	.byte	0x66
	.uleb128 0x7
	.4byte	.LASF142
	.byte	0xa
	.byte	0xa7
	.byte	0x9
	.4byte	0x82
	.4byte	0xb56
	.uleb128 0x1
	.4byte	0xa06
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF143
	.byte	0xf
	.byte	0x31
	.byte	0x9
	.4byte	0x155
	.4byte	0xb6c
	.uleb128 0x1
	.4byte	0xa21
	.byte	0
	.uleb128 0x23
	.4byte	.LASF156
	.byte	0xa
	.byte	0x9c
	.byte	0xa
	.4byte	0xb7e
	.uleb128 0x1
	.4byte	0xa06
	.byte	0
	.uleb128 0x14
	.4byte	.LASF147
	.byte	0xa0
	.byte	0xc
	.4byte	0x82
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc35
	.uleb128 0x9
	.string	"fp"
	.byte	0xa0
	.byte	0x22
	.4byte	0x6f8
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x9
	.string	"cmd"
	.byte	0xa0
	.byte	0x2a
	.4byte	0x82
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x9
	.string	"arg"
	.byte	0xa0
	.byte	0x3d
	.4byte	0x68
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x11
	.string	"ret"
	.byte	0xa2
	.4byte	0x82
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0xa3
	.byte	0x10
	.4byte	0xa21
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0xc
	.4byte	.LASF146
	.byte	0xa4
	.byte	0xa
	.4byte	0xc35
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0xa
	.4byte	.LVL34
	.4byte	0xacd
	.uleb128 0xa
	.4byte	.LVL37
	.4byte	0xab7
	.uleb128 0xa
	.4byte	.LVL39
	.4byte	0xaa1
	.uleb128 0xa
	.4byte	.LVL41
	.4byte	0xa86
	.uleb128 0xa
	.4byte	.LVL43
	.4byte	0xa6b
	.byte	0
	.uleb128 0x4
	.4byte	0x82
	.uleb128 0x14
	.4byte	.LASF148
	.byte	0x84
	.byte	0xc
	.4byte	0x82
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd4f
	.uleb128 0x9
	.string	"fp"
	.byte	0x84
	.byte	0x21
	.4byte	0x6f8
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x12
	.4byte	.LASF149
	.byte	0x84
	.byte	0x2a
	.4byte	0x79e
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x12
	.4byte	.LASF150
	.byte	0x84
	.byte	0x3f
	.4byte	0x68b
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x9
	.string	"fd"
	.byte	0x84
	.byte	0x56
	.4byte	0x6ac
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x9
	.string	"opa"
	.byte	0x84
	.byte	0x60
	.4byte	0x114
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0x86
	.byte	0x10
	.4byte	0xa21
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x24
	.string	"out"
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.4byte	.L15
	.uleb128 0xe
	.4byte	.LVL18
	.4byte	0xb3b
	.4byte	0xce9
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 12
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0xa
	.4byte	.LVL19
	.4byte	0xb35
	.uleb128 0xe
	.4byte	.LVL20
	.4byte	0xb1a
	.4byte	0xd0f
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	vfs_adc_notify
	.byte	0
	.uleb128 0xa
	.4byte	.LVL21
	.4byte	0xb14
	.uleb128 0xe
	.4byte	.LVL22
	.4byte	0xae3
	.4byte	0xd2c
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 12
	.byte	0
	.uleb128 0xa
	.4byte	.LVL29
	.4byte	0xb35
	.uleb128 0x15
	.4byte	.LVL30
	.4byte	0xaf9
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	vfs_adc_notify
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF157
	.byte	0x1
	.byte	0x77
	.byte	0xd
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd8c
	.uleb128 0x9
	.string	"arg"
	.byte	0x77
	.byte	0x22
	.4byte	0x114
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0x7a
	.byte	0x10
	.4byte	0xa21
	.4byte	.LLST1
	.4byte	.LVUS1
	.byte	0
	.uleb128 0x14
	.4byte	.LASF151
	.byte	0x50
	.byte	0x10
	.4byte	0x149
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe47
	.uleb128 0x9
	.string	"fp"
	.byte	0x50
	.byte	0x25
	.4byte	0x6f8
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x9
	.string	"buf"
	.byte	0x50
	.byte	0x2f
	.4byte	0x114
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x12
	.4byte	.LASF152
	.byte	0x50
	.byte	0x3b
	.4byte	0x89
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x11
	.string	"ret"
	.byte	0x52
	.4byte	0x82
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x26
	.4byte	.LASF158
	.byte	0x1
	.byte	0x53
	.byte	0xe
	.4byte	0x16d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0x54
	.byte	0x10
	.4byte	0xa21
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0xe
	.4byte	.LVL51
	.4byte	0xa46
	.4byte	0xe2b
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x15
	.4byte	.LVL53
	.4byte	0xa26
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF159
	.byte	0x1
	.byte	0x2f
	.byte	0x5
	.4byte	0x82
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb6
	.uleb128 0x9
	.string	"fp"
	.byte	0x2f
	.byte	0x1b
	.4byte	0x6f8
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x11
	.string	"ret"
	.byte	0x31
	.4byte	0x82
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0x32
	.byte	0x10
	.4byte	0xa21
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0xe
	.4byte	.LVL6
	.4byte	0xb6c
	.4byte	0xeac
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 12
	.byte	0
	.uleb128 0x28
	.4byte	.LVL8
	.4byte	0xb56
	.byte	0
	.uleb128 0x29
	.4byte	.LASF160
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.4byte	0x82
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.4byte	.LASF153
	.byte	0x10
	.byte	0x32
	.4byte	0x67a
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x9
	.string	"fp"
	.byte	0x10
	.byte	0x41
	.4byte	0x6f8
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x11
	.string	"ret"
	.byte	0x12
	.4byte	0x82
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0x13
	.byte	0x10
	.4byte	0xa21
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0xe
	.4byte	.LVL61
	.4byte	0xa0b
	.4byte	0xf2a
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL63
	.4byte	0x9f0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x79
	.sleb128 12
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0xa
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x15
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 17
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x25
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
.LVUS11:
	.uleb128 0
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0x29
	.uleb128 0x29
	.uleb128 0x2a
	.uleb128 0x2a
	.uleb128 0
.LLST11:
	.byte	0x6
	.4byte	.LVL31
	.byte	0x4
	.uleb128 .LVL31-.LVL31
	.uleb128 .LVL32-.LVL31
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL32-.LVL31
	.uleb128 .LVL44-.LVL31
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
	.uleb128 .LVL44-.LVL31
	.uleb128 .LVL45-.LVL31
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL45-.LVL31
	.uleb128 .LFE10-.LVL31
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
.LVUS12:
	.uleb128 0
	.uleb128 0xf
	.uleb128 0xf
	.uleb128 0x29
	.uleb128 0x29
	.uleb128 0
.LLST12:
	.byte	0x6
	.4byte	.LVL31
	.byte	0x4
	.uleb128 .LVL31-.LVL31
	.uleb128 .LVL33-.LVL31
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL33-.LVL31
	.uleb128 .LVL44-.LVL31
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
	.uleb128 .LVL44-.LVL31
	.uleb128 .LFE10-.LVL31
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS13:
	.uleb128 0
	.uleb128 0x14
	.uleb128 0x14
	.uleb128 0x19
	.uleb128 0x19
	.uleb128 0x1b
	.uleb128 0x1b
	.uleb128 0x1c
	.uleb128 0x1c
	.uleb128 0x1e
	.uleb128 0x1e
	.uleb128 0x1f
	.uleb128 0x1f
	.uleb128 0x23
	.uleb128 0x23
	.uleb128 0x24
	.uleb128 0x24
	.uleb128 0x28
	.uleb128 0x28
	.uleb128 0x29
	.uleb128 0x29
	.uleb128 0
.LLST13:
	.byte	0x6
	.4byte	.LVL31
	.byte	0x4
	.uleb128 .LVL31-.LVL31
	.uleb128 .LVL34-1-.LVL31
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL34-1-.LVL31
	.uleb128 .LVL36-.LVL31
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
	.uleb128 .LVL36-.LVL31
	.uleb128 .LVL37-1-.LVL31
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL37-1-.LVL31
	.uleb128 .LVL38-.LVL31
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
	.uleb128 .LVL38-.LVL31
	.uleb128 .LVL39-1-.LVL31
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL39-1-.LVL31
	.uleb128 .LVL40-.LVL31
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
	.uleb128 .LVL40-.LVL31
	.uleb128 .LVL41-1-.LVL31
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL41-1-.LVL31
	.uleb128 .LVL42-.LVL31
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
	.uleb128 .LVL42-.LVL31
	.uleb128 .LVL43-1-.LVL31
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL43-1-.LVL31
	.uleb128 .LVL44-.LVL31
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
	.uleb128 .LVL44-.LVL31
	.uleb128 .LFE10-.LVL31
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS14:
	.uleb128 0x2
	.uleb128 0x14
	.uleb128 0x14
	.uleb128 0x18
	.uleb128 0x19
	.uleb128 0
.LLST14:
	.byte	0x6
	.4byte	.LVL31
	.byte	0x4
	.uleb128 .LVL31-.LVL31
	.uleb128 .LVL34-.LVL31
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL34-.LVL31
	.uleb128 .LVL35-.LVL31
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL36-.LVL31
	.uleb128 .LFE10-.LVL31
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0
.LVUS15:
	.uleb128 0x3
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0x14
	.uleb128 0x19
	.uleb128 0x1b
	.uleb128 0x1c
	.uleb128 0x1e
	.uleb128 0x1f
	.uleb128 0x23
	.uleb128 0x24
	.uleb128 0x28
	.uleb128 0x29
	.uleb128 0x2a
.LLST15:
	.byte	0x6
	.4byte	.LVL31
	.byte	0x4
	.uleb128 .LVL31-.LVL31
	.uleb128 .LVL32-.LVL31
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL32-.LVL31
	.uleb128 .LVL34-1-.LVL31
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL36-.LVL31
	.uleb128 .LVL37-1-.LVL31
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL38-.LVL31
	.uleb128 .LVL39-1-.LVL31
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL40-.LVL31
	.uleb128 .LVL41-1-.LVL31
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL42-.LVL31
	.uleb128 .LVL43-1-.LVL31
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL44-.LVL31
	.uleb128 .LVL45-.LVL31
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS16:
	.uleb128 0x6
	.uleb128 0x14
	.uleb128 0x14
	.uleb128 0x19
	.uleb128 0x19
	.uleb128 0x1b
	.uleb128 0x1b
	.uleb128 0x1c
	.uleb128 0x1c
	.uleb128 0x1e
	.uleb128 0x1e
	.uleb128 0x1f
	.uleb128 0x1f
	.uleb128 0x23
	.uleb128 0x23
	.uleb128 0x24
	.uleb128 0x24
	.uleb128 0x28
	.uleb128 0x28
	.uleb128 0x29
	.uleb128 0x29
	.uleb128 0
.LLST16:
	.byte	0x6
	.4byte	.LVL31
	.byte	0x4
	.uleb128 .LVL31-.LVL31
	.uleb128 .LVL34-1-.LVL31
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL34-1-.LVL31
	.uleb128 .LVL36-.LVL31
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
	.uleb128 .LVL36-.LVL31
	.uleb128 .LVL37-1-.LVL31
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL37-1-.LVL31
	.uleb128 .LVL38-.LVL31
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
	.uleb128 .LVL38-.LVL31
	.uleb128 .LVL39-1-.LVL31
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL39-1-.LVL31
	.uleb128 .LVL40-.LVL31
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
	.uleb128 .LVL40-.LVL31
	.uleb128 .LVL41-1-.LVL31
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL41-1-.LVL31
	.uleb128 .LVL42-.LVL31
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
	.uleb128 .LVL42-.LVL31
	.uleb128 .LVL43-1-.LVL31
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL43-1-.LVL31
	.uleb128 .LVL44-.LVL31
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
	.uleb128 .LVL44-.LVL31
	.uleb128 .LFE10-.LVL31
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS5:
	.uleb128 0
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0
.LLST5:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL17-.LVL14
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL17-.LVL14
	.uleb128 .LFE9-.LVL14
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
.LVUS6:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0x1b
	.uleb128 0x1b
	.uleb128 0
.LLST6:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL15-.LVL14
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL15-.LVL14
	.uleb128 .LVL24-.LVL14
	.uleb128 0x1
	.byte	0x63
	.byte	0x4
	.uleb128 .LVL24-.LVL14
	.uleb128 .LFE9-.LVL14
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x39
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS7:
	.uleb128 0
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0x1c
	.uleb128 0x1c
	.uleb128 0x1f
	.uleb128 0x1f
	.uleb128 0
.LLST7:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL18-1-.LVL14
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL18-1-.LVL14
	.uleb128 .LVL25-.LVL14
	.uleb128 0x1
	.byte	0x64
	.byte	0x4
	.uleb128 .LVL25-.LVL14
	.uleb128 .LVL28-.LVL14
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
	.uleb128 .LVL28-.LVL14
	.uleb128 .LFE9-.LVL14
	.uleb128 0x1
	.byte	0x64
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0x1d
	.uleb128 0x1d
	.uleb128 0x1f
	.uleb128 0x1f
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL18-1-.LVL14
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL18-1-.LVL14
	.uleb128 .LVL26-.LVL14
	.uleb128 0x1
	.byte	0x65
	.byte	0x4
	.uleb128 .LVL26-.LVL14
	.uleb128 .LVL28-.LVL14
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
	.uleb128 .LVL28-.LVL14
	.uleb128 .LFE9-.LVL14
	.uleb128 0x1
	.byte	0x65
	.byte	0
.LVUS9:
	.uleb128 0
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0x1e
	.uleb128 0x1e
	.uleb128 0x1f
	.uleb128 0x1f
	.uleb128 0
.LLST9:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL18-1-.LVL14
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL18-1-.LVL14
	.uleb128 .LVL27-.LVL14
	.uleb128 0x1
	.byte	0x66
	.byte	0x4
	.uleb128 .LVL27-.LVL14
	.uleb128 .LVL28-.LVL14
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
	.uleb128 .LVL28-.LVL14
	.uleb128 .LFE9-.LVL14
	.uleb128 0x1
	.byte	0x66
	.byte	0
.LVUS10:
	.uleb128 0x7
	.uleb128 0x1a
	.uleb128 0x1f
	.uleb128 0
.LLST10:
	.byte	0x6
	.4byte	.LVL16
	.byte	0x4
	.uleb128 .LVL16-.LVL16
	.uleb128 .LVL23-.LVL16
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL28-.LVL16
	.uleb128 .LFE9-.LVL16
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0xa
	.uleb128 0xa
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
	.uleb128 .LVL2-.LVL0
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
	.uleb128 .LVL2-.LVL0
	.uleb128 .LFE8-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS1:
	.uleb128 0x2
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LVL2-.LVL0
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
	.uleb128 .LVL2-.LVL0
	.uleb128 .LFE8-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS17:
	.uleb128 0
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0x1f
	.uleb128 0x1f
	.uleb128 0x20
	.uleb128 0x20
	.uleb128 0
.LLST17:
	.byte	0x6
	.4byte	.LVL46
	.byte	0x4
	.uleb128 .LVL46-.LVL46
	.uleb128 .LVL48-.LVL46
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL48-.LVL46
	.uleb128 .LVL56-.LVL46
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
	.uleb128 .LVL56-.LVL46
	.uleb128 .LVL57-.LVL46
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL57-.LVL46
	.uleb128 .LFE7-.LVL46
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
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x1e
	.uleb128 0x1e
	.uleb128 0x1f
	.uleb128 0x1f
	.uleb128 0
.LLST18:
	.byte	0x6
	.4byte	.LVL46
	.byte	0x4
	.uleb128 .LVL46-.LVL46
	.uleb128 .LVL50-.LVL46
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL50-.LVL46
	.uleb128 .LVL55-.LVL46
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL55-.LVL46
	.uleb128 .LVL56-.LVL46
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
	.uleb128 .LVL56-.LVL46
	.uleb128 .LFE7-.LVL46
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS19:
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0x12
	.uleb128 0x12
	.uleb128 0
.LLST19:
	.byte	0x6
	.4byte	.LVL46
	.byte	0x4
	.uleb128 .LVL46-.LVL46
	.uleb128 .LVL47-.LVL46
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL47-.LVL46
	.uleb128 .LVL49-.LVL46
	.uleb128 0x3
	.byte	0x7c
	.sleb128 4
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL49-.LVL46
	.uleb128 .LFE7-.LVL46
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
	.byte	0
.LVUS20:
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x17
	.uleb128 0x1b
	.uleb128 0x1b
	.uleb128 0x1d
	.uleb128 0x1f
	.uleb128 0
.LLST20:
	.byte	0x6
	.4byte	.LVL46
	.byte	0x4
	.uleb128 .LVL46-.LVL46
	.uleb128 .LVL51-.LVL46
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL51-.LVL46
	.uleb128 .LVL52-.LVL46
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL52-.LVL46
	.uleb128 .LVL54-.LVL46
	.uleb128 0x2
	.byte	0x34
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL56-.LVL46
	.uleb128 .LFE7-.LVL46
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0
.LVUS21:
	.uleb128 0x4
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0x17
	.uleb128 0x1f
	.uleb128 0x20
.LLST21:
	.byte	0x6
	.4byte	.LVL46
	.byte	0x4
	.uleb128 .LVL46-.LVL46
	.uleb128 .LVL48-.LVL46
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL48-.LVL46
	.uleb128 .LVL51-1-.LVL46
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL56-.LVL46
	.uleb128 .LVL57-.LVL46
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0x16
	.uleb128 0x16
	.uleb128 0x17
	.uleb128 0x17
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL4-.LVL3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL4-.LVL3
	.uleb128 .LVL8-.LVL3
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
	.uleb128 .LVL8-.LVL3
	.uleb128 .LVL9-.LVL3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL9-.LVL3
	.uleb128 .LFE6-.LVL3
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
	.uleb128 0x2
	.uleb128 0x1a
	.uleb128 0x1a
	.uleb128 0x1c
	.uleb128 0x1c
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL12-.LVL3
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL12-.LVL3
	.uleb128 .LVL13-.LVL3
	.uleb128 0x3
	.byte	0x9
	.byte	0xea
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.LVL3
	.uleb128 .LFE6-.LVL3
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0x14
	.uleb128 0x14
	.uleb128 0x16
	.uleb128 0x16
	.uleb128 0x18
	.uleb128 0x18
	.uleb128 0x19
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0x1c
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL5-.LVL3
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.LVL3
	.uleb128 .LVL7-.LVL3
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL7-.LVL3
	.uleb128 .LVL8-1-.LVL3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL8-.LVL3
	.uleb128 .LVL10-.LVL3
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.LVL3
	.uleb128 .LVL11-.LVL3
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL11-.LVL3
	.uleb128 .LVL13-.LVL3
	.uleb128 0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x4
	.uleb128 .LVL13-.LVL3
	.uleb128 .LFE6-.LVL3
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 0
	.uleb128 0x11
	.uleb128 0x11
	.uleb128 0
.LLST22:
	.byte	0x6
	.4byte	.LVL58
	.byte	0x4
	.uleb128 .LVL58-.LVL58
	.uleb128 .LVL60-.LVL58
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL60-.LVL58
	.uleb128 .LFE5-.LVL58
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
.LVUS23:
	.uleb128 0
	.uleb128 0x12
	.uleb128 0x12
	.uleb128 0
.LLST23:
	.byte	0x6
	.4byte	.LVL58
	.byte	0x4
	.uleb128 .LVL58-.LVL58
	.uleb128 .LVL61-1-.LVL58
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL61-1-.LVL58
	.uleb128 .LFE5-.LVL58
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
.LVUS24:
	.uleb128 0x2
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0x16
.LLST24:
	.byte	0x6
	.4byte	.LVL58
	.byte	0x4
	.uleb128 .LVL58-.LVL58
	.uleb128 .LVL62-.LVL58
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL62-.LVL58
	.uleb128 .LVL63-.LVL58
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS25:
	.uleb128 0x3
	.uleb128 0xf
	.uleb128 0xf
	.uleb128 0x16
.LLST25:
	.byte	0x6
	.4byte	.LVL58
	.byte	0x4
	.uleb128 .LVL58-.LVL58
	.uleb128 .LVL59-.LVL58
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL59-.LVL58
	.uleb128 .LVL63-.LVL58
	.uleb128 0x1
	.byte	0x59
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
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
.LLRL26:
	.byte	0x7
	.4byte	.LFB8
	.uleb128 .LFE8-.LFB8
	.byte	0x7
	.4byte	.LFB6
	.uleb128 .LFE6-.LFB6
	.byte	0x7
	.4byte	.LFB9
	.uleb128 .LFE9-.LFB9
	.byte	0x7
	.4byte	.LFB10
	.uleb128 .LFE10-.LFB10
	.byte	0x7
	.4byte	.LFB7
	.uleb128 .LFE7-.LFB7
	.byte	0x7
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
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
	.uleb128 0xc
	.4byte	.LASF1
	.4byte	.LASF161
	.4byte	.LASF162
	.4byte	.LASF163
	.4byte	.LASF164
	.4byte	.LASF165
	.4byte	.LASF166
	.4byte	.LASF167
	.4byte	.LASF168
	.4byte	.LASF169
	.4byte	.LASF170
	.4byte	.LASF171
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x13
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF172
	.byte	0x2
	.4byte	.LASF173
	.byte	0x9
	.4byte	.LASF174
	.byte	0x8
	.4byte	.LASF175
	.byte	0xa
	.4byte	.LASF176
	.byte	0xb
	.4byte	.LASF177
	.byte	0x8
	.4byte	.LASF178
	.byte	0xa
	.4byte	.LASF179
	.byte	0xa
	.4byte	.LASF180
	.byte	0xa
	.4byte	.LASF181
	.byte	0x6
	.4byte	.LASF182
	.byte	0xa
	.4byte	.LASF183
	.byte	0x5
	.4byte	.LASF184
	.byte	0x5
	.4byte	.LASF185
	.byte	0x7
	.4byte	.LASF186
	.byte	0x4
	.4byte	.LASF187
	.byte	0xb
	.4byte	.LASF188
	.byte	0x1
	.4byte	.LASF189
	.byte	0x3
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x8e
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x21
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x1
	.byte	0x5
	.uleb128 0x30
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x1
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x1b
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
	.4byte	.LM12
	.byte	0x46
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
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x26
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x3
	.sleb128 -15
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x6
	.byte	0x3
	.sleb128 -11
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x22
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x1a
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x23
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x3
	.sleb128 -12
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
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x13
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x1
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
	.4byte	.LM41
	.byte	0x9b
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x18
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x15
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
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
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM55-.LM54
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM57-.LM56
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM58-.LM57
	.byte	0x15
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM59-.LM58
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM60-.LM59
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM61-.LM60
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM62-.LM61
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM63-.LM62
	.byte	0x20
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM64-.LM63
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM65-.LM64
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM66-.LM65
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM67-.LM66
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM68-.LM67
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM69-.LM68
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM70-.LM69
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM71-.LM70
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM72-.LM71
	.byte	0x6
	.byte	0x3
	.sleb128 -11
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM73-.LM72
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM74-.LM73
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM75-.LM74
	.byte	0x14
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM76-.LM75
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM77-.LM76
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM78-.LM77
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM79-.LM78
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM80-.LM79
	.byte	0x6
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
	.4byte	.LM81
	.byte	0xb7
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM82-.LM81
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM83-.LM82
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM84-.LM83
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM85-.LM84
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM86-.LM85
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM87-.LM86
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM88-.LM87
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM89-.LM88
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM90-.LM89
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM91-.LM90
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM92-.LM91
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM93-.LM92
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM94-.LM93
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM95-.LM94
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM96-.LM95
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM97-.LM96
	.byte	0x3
	.sleb128 -23
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM98-.LM97
	.byte	0x2e
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM99-.LM98
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM100-.LM99
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM101-.LM100
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM102-.LM101
	.byte	0x6
	.byte	0x28
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM103-.LM102
	.byte	0x3
	.sleb128 -17
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM104-.LM103
	.byte	0x21
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM105-.LM104
	.byte	0x44
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM106-.LM105
	.byte	0x6
	.byte	0x3
	.sleb128 -47
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM107-.LM106
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM108-.LM107
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM109-.LM108
	.byte	0x6
	.byte	0x20
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM110-.LM109
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM111-.LM110
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM112-.LM111
	.byte	0x6
	.byte	0x20
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM113-.LM112
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM114-.LM113
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM115-.LM114
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM116-.LM115
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM117-.LM116
	.byte	0x6
	.byte	0x20
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM118-.LM117
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM119-.LM118
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM120-.LM119
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM121-.LM120
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM122-.LM121
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM123-.LM122
	.byte	0x25
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
	.4byte	.LM124
	.byte	0x67
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM125-.LM124
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM126-.LM125
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM127-.LM126
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM128-.LM127
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM129-.LM128
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM130-.LM129
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM131-.LM130
	.byte	0x11
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM132-.LM131
	.byte	0x1d
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM133-.LM132
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM134-.LM133
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x13
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM135-.LM134
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1b
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM136-.LM135
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM137-.LM136
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM138-.LM137
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM139-.LM138
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM140-.LM139
	.byte	0x3
	.sleb128 -16
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM141-.LM140
	.byte	0x2a
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM142-.LM141
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM143-.LM142
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM144-.LM143
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM145-.LM144
	.byte	0x3
	.sleb128 -19
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM146-.LM145
	.byte	0x2a
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM147-.LM146
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM148-.LM147
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM149-.LM148
	.byte	0x12
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM150-.LM149
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM151-.LM150
	.byte	0x18
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM152-.LM151
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM153-.LM152
	.byte	0x25
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM154-.LM153
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM155-.LM154
	.byte	0x3
	.sleb128 -29
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM156-.LM155
	.byte	0x34
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
	.4byte	.LM157
	.byte	0x27
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM158-.LM157
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM159-.LM158
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM160-.LM159
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM161-.LM160
	.byte	0x6
	.byte	0x12
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM162-.LM161
	.byte	0x2f
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM163-.LM162
	.byte	0x3
	.sleb128 -19
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM164-.LM163
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM165-.LM164
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM166-.LM165
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM167-.LM166
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM168-.LM167
	.byte	0x24
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM169-.LM168
	.byte	0x3
	.sleb128 -13
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM170-.LM169
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM171-.LM170
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM172-.LM171
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM173-.LM172
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM174-.LM173
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM175-.LM174
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM176-.LM175
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM177-.LM176
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM178-.LM177
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM179-.LM178
	.byte	0x6
	.byte	0x21
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE5
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF143:
	.string	"hal_adc_finalize"
.LASF138:
	.string	"hal_adc_notify_register"
.LASF74:
	.string	"aos_dirent_t"
.LASF108:
	.string	"inode_t"
.LASF124:
	.string	"poll_cb"
.LASF148:
	.string	"vfs_adc_poll"
.LASF77:
	.string	"aos_dir_t"
.LASF3:
	.string	"unsigned int"
.LASF58:
	.string	"st_blksize"
.LASF107:
	.string	"refs"
.LASF115:
	.string	"events"
.LASF92:
	.string	"opendir"
.LASF86:
	.string	"sync"
.LASF146:
	.string	"level"
.LASF25:
	.string	"__nlink_t"
.LASF68:
	.string	"f_ffree"
.LASF154:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF104:
	.string	"i_name"
.LASF73:
	.string	"d_name"
.LASF21:
	.string	"__ino_t"
.LASF44:
	.string	"aos_mutex_t"
.LASF37:
	.string	"ino_t"
.LASF31:
	.string	"uint32_t"
.LASF98:
	.string	"telldir"
.LASF123:
	.string	"mutex"
.LASF103:
	.string	"i_arg"
.LASF90:
	.string	"unlink"
.LASF2:
	.string	"long long unsigned int"
.LASF59:
	.string	"st_blocks"
.LASF111:
	.string	"offset"
.LASF110:
	.string	"f_arg"
.LASF102:
	.string	"i_fops"
.LASF140:
	.string	"vTaskExitCritical"
.LASF46:
	.string	"stat"
.LASF47:
	.string	"st_dev"
.LASF139:
	.string	"hal_adc_notify_unregister"
.LASF34:
	.string	"tv_nsec"
.LASF119:
	.string	"adc_config_t"
.LASF13:
	.string	"size_t"
.LASF142:
	.string	"aos_mutex_lock"
.LASF22:
	.string	"__mode_t"
.LASF72:
	.string	"d_type"
.LASF159:
	.string	"vfs_adc_close"
.LASF117:
	.string	"_Bool"
.LASF52:
	.string	"st_gid"
.LASF97:
	.string	"rewinddir"
.LASF49:
	.string	"st_mode"
.LASF95:
	.string	"mkdir"
.LASF112:
	.string	"file_t"
.LASF50:
	.string	"st_nlink"
.LASF155:
	.string	"inode_ops_t"
.LASF84:
	.string	"ioctl"
.LASF158:
	.string	"adc_value"
.LASF85:
	.string	"poll"
.LASF43:
	.string	"aos_hdl_t"
.LASF122:
	.string	"priv"
.LASF45:
	.string	"timespec"
.LASF26:
	.string	"char"
.LASF35:
	.string	"blkcnt_t"
.LASF160:
	.string	"vfs_adc_open"
.LASF113:
	.string	"poll_notify_t"
.LASF81:
	.string	"close"
.LASF116:
	.string	"revents"
.LASF28:
	.string	"ssize_t"
.LASF89:
	.string	"lseek"
.LASF118:
	.string	"sampling_cycle"
.LASF30:
	.string	"uint8_t"
.LASF106:
	.string	"type"
.LASF32:
	.string	"time_t"
.LASF88:
	.string	"fs_ops"
.LASF61:
	.string	"statfs"
.LASF48:
	.string	"st_ino"
.LASF67:
	.string	"f_files"
.LASF10:
	.string	"long long int"
.LASF83:
	.string	"write"
.LASF62:
	.string	"f_type"
.LASF18:
	.string	"__dev_t"
.LASF136:
	.string	"hal_adc_notify_register_config_disable"
.LASF151:
	.string	"vfs_adc_read"
.LASF157:
	.string	"vfs_adc_notify"
.LASF38:
	.string	"dev_t"
.LASF65:
	.string	"f_bfree"
.LASF79:
	.string	"file_ops"
.LASF156:
	.string	"aos_mutex_free"
.LASF78:
	.string	"file_ops_t"
.LASF152:
	.string	"nbytes"
.LASF132:
	.string	"hal_adc_notify_register_config_lower"
.LASF114:
	.string	"pollfd"
.LASF134:
	.string	"hal_adc_notify_register_config_low"
.LASF66:
	.string	"f_bavail"
.LASF126:
	.string	"adc_dev_t"
.LASF69:
	.string	"f_fsid"
.LASF131:
	.string	"hal_adc_value_get"
.LASF60:
	.string	"st_spare4"
.LASF100:
	.string	"access"
.LASF91:
	.string	"rename"
.LASF14:
	.string	"long double"
.LASF20:
	.string	"__gid_t"
.LASF64:
	.string	"f_blocks"
.LASF40:
	.string	"gid_t"
.LASF12:
	.string	"__int_least64_t"
.LASF101:
	.string	"i_ops"
.LASF39:
	.string	"uid_t"
.LASF121:
	.string	"config"
.LASF96:
	.string	"rmdir"
.LASF94:
	.string	"closedir"
.LASF6:
	.string	"short int"
.LASF56:
	.string	"st_mtim"
.LASF105:
	.string	"i_flags"
.LASF8:
	.string	"long int"
.LASF109:
	.string	"node"
.LASF93:
	.string	"readdir"
.LASF129:
	.string	"hal_adc_init"
.LASF70:
	.string	"f_namelen"
.LASF150:
	.string	"notify"
.LASF16:
	.string	"__blksize_t"
.LASF19:
	.string	"__uid_t"
.LASF55:
	.string	"st_atim"
.LASF82:
	.string	"read"
.LASF75:
	.string	"dd_vfs_fd"
.LASF80:
	.string	"open"
.LASF33:
	.string	"tv_sec"
.LASF9:
	.string	"long unsigned int"
.LASF127:
	.string	"float"
.LASF29:
	.string	"int32_t"
.LASF120:
	.string	"port"
.LASF128:
	.string	"aos_mutex_new"
.LASF42:
	.string	"nlink_t"
.LASF63:
	.string	"f_bsize"
.LASF4:
	.string	"unsigned char"
.LASF149:
	.string	"setup"
.LASF11:
	.string	"__uint32_t"
.LASF36:
	.string	"blksize_t"
.LASF145:
	.string	"adc_dev"
.LASF141:
	.string	"vTaskEnterCritical"
.LASF125:
	.string	"poll_data"
.LASF54:
	.string	"st_size"
.LASF135:
	.string	"hal_adc_notify_register_config_high"
.LASF71:
	.string	"d_ino"
.LASF51:
	.string	"st_uid"
.LASF23:
	.string	"__off_t"
.LASF57:
	.string	"st_ctim"
.LASF133:
	.string	"hal_adc_notify_register_config_higher"
.LASF24:
	.string	"_ssize_t"
.LASF76:
	.string	"dd_rsv"
.LASF5:
	.string	"signed char"
.LASF41:
	.string	"mode_t"
.LASF27:
	.string	"off_t"
.LASF7:
	.string	"short unsigned int"
.LASF130:
	.string	"memcpy"
.LASF99:
	.string	"seekdir"
.LASF15:
	.string	"__blkcnt_t"
.LASF144:
	.string	"adc_ops"
.LASF17:
	.string	"_off_t"
.LASF53:
	.string	"st_rdev"
.LASF137:
	.string	"aos_mutex_unlock"
.LASF147:
	.string	"vfs_adc_ioctl"
.LASF87:
	.string	"fs_ops_t"
.LASF153:
	.string	"inode"
	.section	.debug_line_str,"MS",@progbits,1
.LASF173:
	.string	"_default_types.h"
.LASF178:
	.string	"_timeval.h"
.LASF164:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/hal/soc"
.LASF170:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys"
.LASF163:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/device"
.LASF171:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include"
.LASF162:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/device"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/device/vfs_adc.c"
.LASF187:
	.string	"string.h"
.LASF189:
	.string	"vfs_adc.h"
.LASF169:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine"
.LASF182:
	.string	"stat.h"
.LASF177:
	.string	"stdint-gcc.h"
.LASF180:
	.string	"types.h"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/vfs"
.LASF179:
	.string	"_timespec.h"
.LASF172:
	.string	"vfs_adc.c"
.LASF176:
	.string	"stdio.h"
.LASF183:
	.string	"vfs_dir.h"
.LASF188:
	.string	"portmacro.h"
.LASF174:
	.string	"stddef.h"
.LASF184:
	.string	"vfs_inode.h"
.LASF185:
	.string	"yloop_types.h"
.LASF168:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF166:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/aos"
.LASF175:
	.string	"_types.h"
.LASF165:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include"
.LASF167:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include"
.LASF161:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V"
.LASF181:
	.string	"kernel.h"
.LASF186:
	.string	"adc.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
