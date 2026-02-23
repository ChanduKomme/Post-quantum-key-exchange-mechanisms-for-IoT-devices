	.file	"hal_adc.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.check_adc_gpio_valid,"ax",@progbits
	.align	1
	.type	check_adc_gpio_valid, @function
check_adc_gpio_valid:
.LVL0:
.LFB23:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
.LM4:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
.LM5:
	li	a5,4
	sw	a5,0(sp)
	li	a5,5
	sw	a5,4(sp)
	li	a5,6
	sw	a5,8(sp)
	li	a5,9
	sw	a5,12(sp)
	li	a5,10
	sw	a5,16(sp)
	li	a5,11
	sw	a5,20(sp)
	li	a5,12
	sw	a5,24(sp)
	li	a5,13
	sw	a5,28(sp)
	li	a5,14
	sw	a5,32(sp)
	li	a5,15
	sw	a5,36(sp)
.LM6:
.LVL1:
.LM7:
	addi	a4,sp,40
	mv	a5,sp
.LVL2:
.L3:
.LM8:
.LM9:
	lw	a3,0(a5)
	beq	a3,a0,.L4
.LM10:
.LM11:
	addi	a5,a5,4
	bne	a5,a4,.L3
.LM12:
	li	a0,-1
.LVL3:
.L1:
.LM13:
	addi	sp,sp,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.LVL4:
.L4:
	.cfi_restore_state
.LM14:
	li	a0,0
.LVL5:
.LM15:
	j	.L1
	.cfi_endproc
.LFE23:
	.size	check_adc_gpio_valid, .-check_adc_gpio_valid
	.section	.text.hal_adc_callback_register,"ax",@progbits
	.align	1
	.globl	hal_adc_callback_register
	.type	hal_adc_callback_register, @function
hal_adc_callback_register:
.LVL6:
.LFB25:
.LM16:
	.cfi_startproc
.LM17:
.LM18:
.LM19:
	beq	a0,zero,.L9
.LM20:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
.LM21:
.LM22:
	li	a0,1
.LVL7:
.LM23:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM24:
	call	bl_dma_find_ctx_by_channel
.LVL8:
.LM25:
.LM26:
	sw	s0,24(a0)
.LM27:
.LM28:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL9:
.LM29:
	li	a0,0
.LVL10:
.LM30:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL11:
.L9:
.LM31:
	li	a0,-1
.LVL12:
.LM32:
	ret
	.cfi_endproc
.LFE25:
	.size	hal_adc_callback_register, .-hal_adc_callback_register
	.section	.text.hal_adc_add_channel,"ax",@progbits
	.align	1
	.globl	hal_adc_add_channel
	.type	hal_adc_add_channel, @function
hal_adc_add_channel:
.LVL13:
.LFB26:
.LM33:
	.cfi_startproc
.LM34:
.LM35:
.LM36:
.LM37:
.LM38:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
.LM39:
	mv	s0,a0
.LM40:
	call	check_adc_gpio_valid
.LVL14:
.LM41:
.LM42:
	li	a5,-1
	beq	a0,a5,.L14
.LM43:
	mv	a0,s0
.LVL15:
.LM44:
	call	bl_adc_gpio_init
.LVL16:
.LM45:
.LM46:
	mv	a0,s0
	call	bl_adc_get_channel_by_gpio
.LVL17:
	mv	s0,a0
.LVL18:
.LM47:
.LM48:
	li	a0,1
	call	bl_dma_find_ctx_by_channel
.LVL19:
.LM49:
.LM50:
	lw	a5,16(a0)
.LM51:
	li	a4,1
	sll	a4,a4,s0
.LM52:
	or	a5,a5,a4
.LM53:
	sw	a5,16(a0)
.LM54:
.LM55:
	li	a0,0
.LVL20:
.L14:
.LM56:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE26:
	.size	hal_adc_add_channel, .-hal_adc_add_channel
	.section	.text.hal_adc_init,"ax",@progbits
	.align	1
	.globl	hal_adc_init
	.type	hal_adc_init, @function
hal_adc_init:
.LVL21:
.LFB24:
.LM57:
	.cfi_startproc
.LM58:
.LM59:
.LM60:
.LM61:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s2,32(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s3,28(sp)
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
.LM62:
	mv	s2,a2
.LM63:
	bne	a0,zero,.L18
.LM64:
.LM65:
	addi	a5,a1,-40
.LM66:
	li	a4,1260
	bleu	a5,a4,.L19
.LVL22:
.L21:
.LM67:
	li	s1,-1
.L17:
.LM68:
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	mv	a0,s1
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL23:
.L18:
	.cfi_restore_state
.LM69:
.LM70:
	li	a5,1
	bne	a0,a5,.L21
.LM71:
.LM72:
	li	a5,16384
.LM73:
	addi	a4,a1,-500
.LM74:
	addi	a5,a5,-884
	bgtu	a4,a5,.L21
.L19:
.LM75:
	mv	s0,a0
.LM76:
.LM77:
	mv	a0,a3
.LVL24:
.LM78:
	mv	s3,a3
	sw	a1,12(sp)
	call	check_adc_gpio_valid
.LVL25:
.LM79:
	mv	s1,a0
.LVL26:
.LM80:
.LM81:
	bne	a0,zero,.L21
.LM82:
	lw	a1,12(sp)
	mv	a0,s0
	call	bl_adc_freq_init
.LVL27:
.LM83:
	mv	a1,s3
	mv	a0,s0
	call	bl_adc_init
.LVL28:
.LM84:
.LM85:
	bne	s0,zero,.L22
.LM86:
	li	s2,12
.LVL29:
.L22:
.LM87:
.LM88:
	mv	a1,s2
	mv	a0,s0
	call	bl_adc_dma_init
.LVL30:
.LM89:
.LM90:
	blt	a0,zero,.L21
.LM91:
	mv	a0,s3
.LVL31:
.LM92:
	call	hal_adc_add_channel
.LVL32:
.LM93:
	call	bl_adc_start
.LVL33:
.LM94:
.LM95:
	j	.L17
	.cfi_endproc
.LFE24:
	.size	hal_adc_init, .-hal_adc_init
	.section	.text.hal_adc_get_data,"ax",@progbits
	.align	1
	.globl	hal_adc_get_data
	.type	hal_adc_get_data, @function
hal_adc_get_data:
.LVL34:
.LFB27:
.LM96:
	.cfi_startproc
.LM97:
.LM98:
.LM99:
.LM100:
.LM101:
.LM102:
.LM103:
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
.LM104:
	mv	s1,a0
	mv	s2,a1
.LM105:
	call	check_adc_gpio_valid
.LVL35:
.LM106:
.LM107:
	li	a5,-1
	bne	a0,a5,.L25
.LVL36:
.L27:
.LM108:
	li	a0,-1
.L24:
.LM109:
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
.LVL37:
.LM110:
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL38:
.L25:
	.cfi_restore_state
.LM111:
.LM112:
	li	a0,1
.LVL39:
.LM113:
	call	bl_dma_find_ctx_by_channel
.LVL40:
	mv	s0,a0
.LVL41:
.LM114:
.LM115:
	beq	a0,zero,.L27
.LM116:
.LM117:
	mv	a0,s1
	call	bl_adc_get_channel_by_gpio
.LVL42:
.LM118:
	lw	a4,16(s0)
.LM119:
	li	a5,1
	sll	a5,a5,a0
.LM120:
	and	a5,a5,a4
.LM121:
	mv	s1,a0
.LVL43:
.LM122:
.LM123:
	beq	a5,zero,.L27
.LM124:
.LM125:
	lw	a1,4(s0)
.LM126:
	beq	a1,zero,.L27
.LM127:
	li	a2,48
	mv	a0,sp
	call	memcpy
.LVL44:
.LM128:
.LM129:
	mv	a3,s2
	mv	a2,s1
	li	a1,12
	mv	a0,sp
	call	bl_adc_parse_data
.LVL45:
.LM130:
.LM131:
	j	.L24
	.cfi_endproc
.LFE27:
	.size	hal_adc_get_data, .-hal_adc_get_data
	.section	.text.hal_prase_adc_data,"ax",@progbits
	.align	1
	.globl	hal_prase_adc_data
	.type	hal_prase_adc_data, @function
hal_prase_adc_data:
.LVL46:
.LFB28:
.LM132:
	.cfi_startproc
.LM133:
.LM134:
.LM135:
.LM136:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	mv	s0,a0
.LM137:
	mv	a0,a1
.LVL47:
.LM138:
	sw	ra,28(sp)
	.cfi_offset 1, -4
.LM139:
	sw	a2,12(sp)
.LM140:
	call	bl_adc_get_channel_by_gpio
.LVL48:
.LM141:
.LM142:
	li	a5,-1
	beq	a0,a5,.L38
	mv	a2,a0
.LM143:
.LM144:
	mv	a0,s0
.LVL49:
.LM145:
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL50:
.LM146:
	lw	a3,12(sp)
.LM147:
	lw	ra,28(sp)
	.cfi_restore 1
.LM148:
	li	a1,12
.LM149:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL51:
.LM150:
	tail	bl_adc_parse_data
.LVL52:
.L38:
	.cfi_restore_state
.LM151:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL53:
.LM152:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL54:
.LM153:
	jr	ra
	.cfi_endproc
.LFE28:
	.size	hal_prase_adc_data, .-hal_prase_adc_data
	.section	.text.hal_parse_data_arr,"ax",@progbits
	.align	1
	.globl	hal_parse_data_arr
	.type	hal_parse_data_arr, @function
hal_parse_data_arr:
.LVL55:
.LFB29:
.LM154:
	.cfi_startproc
.LM155:
.LM156:
.LM157:
	slli	a2,a2,2
.LVL56:
.LM158:
	li	a5,0
.LVL57:
.L42:
.LM159:
	bne	a5,a2,.L43
.LM160:
.LM161:
	li	a0,0
.LVL58:
.LM162:
	ret
.LVL59:
.L43:
.LM163:
.LM164:
	add	a3,a0,a5
.LM165:
	lhu	a3,0(a3)
.LM166:
	add	a4,a1,a5
	addi	a5,a5,4
	sw	a3,0(a4)
.LM167:
	j	.L42
	.cfi_endproc
.LFE29:
	.size	hal_parse_data_arr, .-hal_parse_data_arr
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6d1
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL27
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x8
	.4byte	.LASF8
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x53
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x8
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x6d
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x87
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x32
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x14
	.byte	0x4
	.uleb128 0xf
	.4byte	0xa8
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x4
	.byte	0x24
	.byte	0x10
	.4byte	0xc2
	.uleb128 0xc
	.4byte	0xc7
	.uleb128 0x15
	.4byte	0xdc
	.uleb128 0x2
	.4byte	0x8e
	.uleb128 0x2
	.4byte	0xdc
	.uleb128 0x2
	.4byte	0x7b
	.byte	0
	.uleb128 0xc
	.4byte	0x7b
	.uleb128 0x16
	.4byte	.LASF50
	.byte	0x1c
	.byte	0x4
	.byte	0x25
	.byte	0x10
	.4byte	0x143
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x26
	.byte	0x9
	.4byte	0x8e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x27
	.byte	0xf
	.4byte	0xdc
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x28
	.byte	0xb
	.4byte	0xa8
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x29
	.byte	0x9
	.4byte	0x8e
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x2a
	.byte	0xe
	.4byte	0x7b
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x2b
	.byte	0xe
	.4byte	0x7b
	.byte	0x14
	.uleb128 0x17
	.string	"cb"
	.byte	0x4
	.byte	0x2c
	.byte	0x11
	.4byte	0xb6
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.byte	0x2d
	.byte	0x2
	.4byte	0xe1
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.4byte	0x47
	.4byte	0x174
	.uleb128 0x2
	.4byte	0xdc
	.uleb128 0x2
	.4byte	0x8e
	.uleb128 0x2
	.4byte	0x8e
	.uleb128 0x2
	.4byte	0x8e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x5
	.byte	0x1f
	.byte	0x8
	.4byte	0xa8
	.4byte	0x194
	.uleb128 0x2
	.4byte	0xaa
	.uleb128 0x2
	.4byte	0x199
	.uleb128 0x2
	.4byte	0x95
	.byte	0
	.uleb128 0xc
	.4byte	0x19e
	.uleb128 0xf
	.4byte	0x194
	.uleb128 0x18
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x4
	.byte	0x39
	.byte	0x5
	.4byte	0x8e
	.4byte	0x1b5
	.uleb128 0x2
	.4byte	0x8e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x4
	.byte	0x38
	.byte	0x5
	.4byte	0x8e
	.4byte	0x1cb
	.uleb128 0x2
	.4byte	0x8e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x6
	.byte	0x4e
	.byte	0x7
	.4byte	0xa8
	.4byte	0x1e1
	.uleb128 0x2
	.4byte	0x8e
	.byte	0
	.uleb128 0x19
	.4byte	.LASF51
	.byte	0x4
	.byte	0x37
	.byte	0x5
	.4byte	0x8e
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x4
	.byte	0x36
	.byte	0x5
	.4byte	0x8e
	.4byte	0x208
	.uleb128 0x2
	.4byte	0x8e
	.uleb128 0x2
	.4byte	0x7b
	.byte	0
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x4
	.byte	0x35
	.byte	0x5
	.4byte	0x8e
	.4byte	0x223
	.uleb128 0x2
	.4byte	0x8e
	.uleb128 0x2
	.4byte	0x8e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x4
	.byte	0x3a
	.byte	0x5
	.4byte	0x8e
	.4byte	0x23e
	.uleb128 0x2
	.4byte	0x8e
	.uleb128 0x2
	.4byte	0x7b
	.byte	0
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0xc7
	.byte	0x5
	.4byte	0x8e
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29d
	.uleb128 0xd
	.string	"ptr"
	.byte	0xc7
	.byte	0x22
	.4byte	0xdc
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x1a
	.4byte	.LASF52
	.byte	0x1
	.byte	0xc7
	.byte	0x31
	.4byte	0xdc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0xc7
	.byte	0x42
	.4byte	0x7b
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0xb
	.string	"i"
	.byte	0xc9
	.byte	0x9
	.4byte	0x8e
	.4byte	.LLST26
	.4byte	.LVUS26
	.byte	0
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0xb5
	.byte	0x9
	.4byte	0x47
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x34d
	.uleb128 0xd
	.string	"ptr"
	.byte	0xb5
	.byte	0x26
	.4byte	0xdc
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0xb5
	.byte	0x2f
	.4byte	0x8e
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x5
	.4byte	.LASF36
	.byte	0xb5
	.byte	0x3d
	.4byte	0x8e
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x1b
	.4byte	.LASF40
	.byte	0x1
	.byte	0xb7
	.byte	0xd
	.4byte	0x47
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0xb8
	.byte	0x9
	.4byte	0x8e
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x3
	.4byte	.LVL48
	.4byte	0x19f
	.4byte	0x329
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
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
	.uleb128 0x1c
	.4byte	.LVL52
	.4byte	0x14f
	.uleb128 0x1
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
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x72
	.sleb128 -20
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x8e
	.byte	0x9
	.4byte	0x47
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x45d
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x8e
	.byte	0x1e
	.4byte	0x8e
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x5
	.4byte	.LASF36
	.byte	0x8e
	.byte	0x2c
	.4byte	0x8e
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0xb
	.string	"ret"
	.byte	0x90
	.byte	0x9
	.4byte	0x8e
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x91
	.byte	0x10
	.4byte	0x45d
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x92
	.byte	0xe
	.4byte	0x462
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x93
	.byte	0xd
	.4byte	0x47
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x94
	.byte	0x9
	.4byte	0x8e
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x3
	.4byte	.LVL35
	.4byte	0x67c
	.4byte	0x3fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.4byte	.LVL40
	.4byte	0x1cb
	.4byte	0x40d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3
	.4byte	.LVL42
	.4byte	0x19f
	.4byte	0x421
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.4byte	.LVL44
	.4byte	0x174
	.4byte	0x43b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.4byte	.LVL45
	.4byte	0x14f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x82
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x143
	.uleb128 0x1d
	.4byte	0x7b
	.4byte	0x471
	.uleb128 0x11
	.4byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x79
	.byte	0x5
	.4byte	0x8e
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x522
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x79
	.byte	0x1d
	.4byte	0x8e
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0xb
	.string	"ret"
	.byte	0x7b
	.byte	0x9
	.4byte	0x8e
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x7c
	.byte	0x10
	.4byte	0x45d
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x7d
	.byte	0x9
	.4byte	0x8e
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x3
	.4byte	.LVL14
	.4byte	0x67c
	.4byte	0x4ea
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.4byte	.LVL16
	.4byte	0x1b5
	.4byte	0x4fe
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.4byte	.LVL17
	.4byte	0x19f
	.4byte	0x512
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL19
	.4byte	0x1cb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x68
	.byte	0x5
	.4byte	0x8e
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x570
	.uleb128 0xd
	.string	"cb"
	.byte	0x68
	.byte	0x2b
	.4byte	0xb6
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xb
	.string	"ctx"
	.byte	0x6a
	.byte	0x10
	.4byte	0x45d
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0xe
	.4byte	.LVL8
	.4byte	0x1cb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x34
	.byte	0x5
	.4byte	0x8e
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x67c
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x34
	.byte	0x16
	.4byte	0x8e
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x5
	.4byte	.LASF44
	.byte	0x34
	.byte	0x20
	.4byte	0x8e
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x5
	.4byte	.LASF45
	.byte	0x34
	.byte	0x2a
	.4byte	0x8e
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x34
	.byte	0x38
	.4byte	0x8e
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0xb
	.string	"ret"
	.byte	0x36
	.byte	0x9
	.4byte	0x8e
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x37
	.byte	0x9
	.4byte	0x8e
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x3
	.4byte	.LVL25
	.4byte	0x67c
	.4byte	0x60f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x83
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.4byte	.LVL27
	.4byte	0x223
	.4byte	0x62a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LVL28
	.4byte	0x208
	.4byte	0x644
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x83
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.4byte	.LVL30
	.4byte	0x1ed
	.4byte	0x65e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x82
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.4byte	.LVL32
	.4byte	0x471
	.4byte	0x672
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x83
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL33
	.4byte	0x1e1
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF53
	.byte	0x1
	.byte	0x24
	.byte	0xc
	.4byte	0x8e
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c9
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x24
	.byte	0x25
	.4byte	0x8e
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xb
	.string	"i"
	.byte	0x26
	.byte	0x9
	.4byte	0x8e
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x27
	.byte	0x9
	.4byte	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x20
	.4byte	0x8e
	.uleb128 0x11
	.4byte	0x32
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x21
	.sleb128 11
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x1
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
.LVUS24:
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0
.LLST24:
	.byte	0x6
	.4byte	.LVL55
	.byte	0x4
	.uleb128 .LVL55-.LVL55
	.uleb128 .LVL58-.LVL55
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL58-.LVL55
	.uleb128 .LVL59-.LVL55
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
	.uleb128 .LVL59-.LVL55
	.uleb128 .LFE29-.LVL55
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS25:
	.uleb128 0
	.uleb128 0x4
	.uleb128 0x4
	.uleb128 0
.LLST25:
	.byte	0x6
	.4byte	.LVL55
	.byte	0x4
	.uleb128 .LVL55-.LVL55
	.uleb128 .LVL56-.LVL55
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL56-.LVL55
	.uleb128 .LFE29-.LVL55
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
.LVUS26:
	.uleb128 0x3
	.uleb128 0x5
.LLST26:
	.byte	0x8
	.4byte	.LVL55
	.uleb128 .LVL57-.LVL55
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS20:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0x14
	.uleb128 0x14
	.uleb128 0
.LLST20:
	.byte	0x6
	.4byte	.LVL46
	.byte	0x4
	.uleb128 .LVL46-.LVL46
	.uleb128 .LVL47-.LVL46
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL47-.LVL46
	.uleb128 .LVL50-.LVL46
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL50-.LVL46
	.uleb128 .LVL52-1-.LVL46
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL52-1-.LVL46
	.uleb128 .LVL52-.LVL46
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
	.uleb128 .LVL52-.LVL46
	.uleb128 .LVL53-.LVL46
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL53-.LVL46
	.uleb128 .LFE28-.LVL46
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
.LVUS21:
	.uleb128 0
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0
.LLST21:
	.byte	0x6
	.4byte	.LVL46
	.byte	0x4
	.uleb128 .LVL46-.LVL46
	.uleb128 .LVL48-1-.LVL46
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL48-1-.LVL46
	.uleb128 .LFE28-.LVL46
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
.LVUS22:
	.uleb128 0
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0x12
	.uleb128 0x12
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0
.LLST22:
	.byte	0x6
	.4byte	.LVL46
	.byte	0x4
	.uleb128 .LVL46-.LVL46
	.uleb128 .LVL48-1-.LVL46
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL48-1-.LVL46
	.uleb128 .LVL51-.LVL46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x4
	.uleb128 .LVL51-.LVL46
	.uleb128 .LVL52-.LVL46
	.uleb128 0x2
	.byte	0x72
	.sleb128 -20
	.byte	0x4
	.uleb128 .LVL52-.LVL46
	.uleb128 .LVL54-.LVL46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x4
	.uleb128 .LVL54-.LVL46
	.uleb128 .LFE28-.LVL46
	.uleb128 0x2
	.byte	0x72
	.sleb128 -20
	.byte	0
.LVUS23:
	.uleb128 0x9
	.uleb128 0xd
	.uleb128 0xd
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0
.LLST23:
	.byte	0x6
	.4byte	.LVL48
	.byte	0x4
	.uleb128 .LVL48-.LVL48
	.uleb128 .LVL49-.LVL48
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL49-.LVL48
	.uleb128 .LVL52-1-.LVL48
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL52-.LVL48
	.uleb128 .LFE28-.LVL48
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS14:
	.uleb128 0
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0xf
	.uleb128 0xf
	.uleb128 0x1a
	.uleb128 0x1a
	.uleb128 0
.LLST14:
	.byte	0x6
	.4byte	.LVL34
	.byte	0x4
	.uleb128 .LVL34-.LVL34
	.uleb128 .LVL35-1-.LVL34
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL35-1-.LVL34
	.uleb128 .LVL36-.LVL34
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL36-.LVL34
	.uleb128 .LVL38-.LVL34
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
	.uleb128 .LVL38-.LVL34
	.uleb128 .LVL43-.LVL34
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL43-.LVL34
	.uleb128 .LFE27-.LVL34
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
.LVUS15:
	.uleb128 0
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0xf
	.uleb128 0xf
	.uleb128 0
.LLST15:
	.byte	0x6
	.4byte	.LVL34
	.byte	0x4
	.uleb128 .LVL34-.LVL34
	.uleb128 .LVL35-1-.LVL34
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL35-1-.LVL34
	.uleb128 .LVL37-.LVL34
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL37-.LVL34
	.uleb128 .LVL38-.LVL34
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
	.uleb128 .LVL38-.LVL34
	.uleb128 .LFE27-.LVL34
	.uleb128 0x1
	.byte	0x62
	.byte	0
.LVUS16:
	.uleb128 0xa
	.uleb128 0xc
	.uleb128 0xf
	.uleb128 0x11
.LLST16:
	.byte	0x6
	.4byte	.LVL35
	.byte	0x4
	.uleb128 .LVL35-.LVL35
	.uleb128 .LVL36-.LVL35
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL38-.LVL35
	.uleb128 .LVL39-.LVL35
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS17:
	.uleb128 0x12
	.uleb128 0
.LLST17:
	.byte	0x8
	.4byte	.LVL41
	.uleb128 .LFE27-.LVL41
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS18:
	.uleb128 0x22
	.uleb128 0
.LLST18:
	.byte	0x8
	.4byte	.LVL45
	.uleb128 .LFE27-.LVL45
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS19:
	.uleb128 0x1a
	.uleb128 0
.LLST19:
	.byte	0x8
	.4byte	.LVL43
	.uleb128 .LFE27-.LVL43
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL14-1-.LVL13
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL14-1-.LVL13
	.uleb128 .LVL18-.LVL13
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL18-.LVL13
	.uleb128 .LFE26-.LVL13
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
	.uleb128 0x8
	.uleb128 0xb
.LLST5:
	.byte	0x8
	.4byte	.LVL14
	.uleb128 .LVL15-.LVL14
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS6:
	.uleb128 0x10
	.uleb128 0x17
.LLST6:
	.byte	0x8
	.4byte	.LVL19
	.uleb128 .LVL20-.LVL19
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS7:
	.uleb128 0xe
	.uleb128 0x17
.LLST7:
	.byte	0x8
	.4byte	.LVL18
	.uleb128 .LVL20-.LVL18
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 0x7
	.uleb128 0x7
	.uleb128 0xd
	.uleb128 0xd
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0xf
	.uleb128 0xf
	.uleb128 0x10
	.uleb128 0x10
	.uleb128 0
.LLST2:
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
	.uleb128 .LVL10-.LVL6
	.uleb128 0x2
	.byte	0x7a
	.sleb128 24
	.byte	0x4
	.uleb128 .LVL10-.LVL6
	.uleb128 .LVL11-.LVL6
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
	.uleb128 .LVL11-.LVL6
	.uleb128 .LVL12-.LVL6
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL12-.LVL6
	.uleb128 .LFE25-.LVL6
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
	.uleb128 0x9
	.uleb128 0xe
.LLST3:
	.byte	0x8
	.4byte	.LVL8
	.uleb128 .LVL10-.LVL8
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL21
	.byte	0x4
	.uleb128 .LVL21-.LVL21
	.uleb128 .LVL22-.LVL21
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL22-.LVL21
	.uleb128 .LVL23-.LVL21
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
	.uleb128 .LVL23-.LVL21
	.uleb128 .LVL24-.LVL21
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL24-.LVL21
	.uleb128 .LFE24-.LVL21
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS9:
	.uleb128 0
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0x16
	.uleb128 0x16
	.uleb128 0
.LLST9:
	.byte	0x6
	.4byte	.LVL21
	.byte	0x4
	.uleb128 .LVL21-.LVL21
	.uleb128 .LVL22-.LVL21
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL22-.LVL21
	.uleb128 .LVL23-.LVL21
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
	.uleb128 .LVL23-.LVL21
	.uleb128 .LVL25-1-.LVL21
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL25-1-.LVL21
	.uleb128 .LFE24-.LVL21
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
.LVUS10:
	.uleb128 0
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0x16
	.uleb128 0x16
	.uleb128 0x1e
	.uleb128 0x1e
	.uleb128 0
.LLST10:
	.byte	0x6
	.4byte	.LVL21
	.byte	0x4
	.uleb128 .LVL21-.LVL21
	.uleb128 .LVL22-.LVL21
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL22-.LVL21
	.uleb128 .LVL23-.LVL21
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
	.uleb128 .LVL23-.LVL21
	.uleb128 .LVL25-1-.LVL21
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL25-1-.LVL21
	.uleb128 .LVL29-.LVL21
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL29-.LVL21
	.uleb128 .LFE24-.LVL21
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
.LVUS11:
	.uleb128 0
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0x16
	.uleb128 0x16
	.uleb128 0
.LLST11:
	.byte	0x6
	.4byte	.LVL21
	.byte	0x4
	.uleb128 .LVL21-.LVL21
	.uleb128 .LVL22-.LVL21
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL22-.LVL21
	.uleb128 .LVL23-.LVL21
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
	.uleb128 .LVL23-.LVL21
	.uleb128 .LVL25-1-.LVL21
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL25-1-.LVL21
	.uleb128 .LFE24-.LVL21
	.uleb128 0x1
	.byte	0x63
	.byte	0
.LVUS12:
	.uleb128 0x17
	.uleb128 0x20
	.uleb128 0x20
	.uleb128 0x23
.LLST12:
	.byte	0x6
	.4byte	.LVL26
	.byte	0x4
	.uleb128 .LVL26-.LVL26
	.uleb128 .LVL30-.LVL26
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL30-.LVL26
	.uleb128 .LVL31-.LVL26
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS13:
	.uleb128 0x1e
	.uleb128 0
.LLST13:
	.byte	0x8
	.4byte	.LVL29
	.uleb128 .LFE24-.LVL29
	.uleb128 0x1
	.byte	0x62
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0xd
	.uleb128 0xd
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL3-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL3-.LVL0
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
	.uleb128 .LVL5-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL5-.LVL0
	.uleb128 .LFE23-.LVL0
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
	.uleb128 0x6
	.uleb128 0x7
.LLST1:
	.byte	0x8
	.4byte	.LVL1
	.uleb128 .LVL2-.LVL1
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
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
.LLRL27:
	.byte	0x7
	.4byte	.LFB23
	.uleb128 .LFE23-.LFB23
	.byte	0x7
	.4byte	.LFB25
	.uleb128 .LFE25-.LFB25
	.byte	0x7
	.4byte	.LFB26
	.uleb128 .LFE26-.LFB26
	.byte	0x7
	.4byte	.LFB24
	.uleb128 .LFE24-.LFB24
	.byte	0x7
	.4byte	.LFB27
	.uleb128 .LFE27-.LFB27
	.byte	0x7
	.4byte	.LFB28
	.uleb128 .LFE28-.LFB28
	.byte	0x7
	.4byte	.LFB29
	.uleb128 .LFE29-.LFB29
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
	.4byte	.LASF54
	.4byte	.LASF55
	.4byte	.LASF56
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x7
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF57
	.byte	0x1
	.4byte	.LASF58
	.byte	0x2
	.4byte	.LASF59
	.byte	0x2
	.4byte	.LASF60
	.byte	0x1
	.4byte	.LASF61
	.byte	0x3
	.4byte	.LASF62
	.byte	0x1
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x3b
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
	.byte	0x6
	.byte	0x15
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
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
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1d
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x12
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE23
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM16
	.byte	0x7f
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x19
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
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x6
	.byte	0x20
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0xe
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x20
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x16
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x10
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x1e
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE25
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM33
	.byte	0x90
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x6
	.byte	0x12
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x1c
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x6
	.byte	0x18
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
	.byte	0x6
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
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
	.uleb128 0xf
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
	.uleb128 0xe
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
	.uleb128 0x37
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0x1
	.byte	0x5
	.uleb128 0x3c
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0x1
	.byte	0x5
	.uleb128 0x37
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0x1
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM55-.LM54
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE26
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM57
	.byte	0x4b
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM58-.LM57
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM59-.LM58
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM60-.LM59
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM61-.LM60
	.byte	0x6
	.byte	0x13
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM62-.LM61
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM63-.LM62
	.byte	0x1b
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM64-.LM63
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM65-.LM64
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM66-.LM65
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM67-.LM66
	.byte	0x1a
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM68-.LM67
	.byte	0x40
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM69-.LM68
	.byte	0x6
	.byte	0x3
	.sleb128 -39
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM70-.LM69
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM71-.LM70
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM72-.LM71
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM73-.LM72
	.byte	0x1
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM74-.LM73
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM75-.LM74
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM76-.LM75
	.byte	0x6
	.byte	0x22
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM77-.LM76
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM78-.LM77
	.byte	0x1
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM79-.LM78
	.byte	0x1
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM80-.LM79
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM81-.LM80
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM82-.LM81
	.byte	0x6
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM83-.LM82
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM84-.LM83
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM85-.LM84
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM86-.LM85
	.byte	0x18
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM87-.LM86
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM88-.LM87
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM89-.LM88
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM90-.LM89
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM91-.LM90
	.byte	0x6
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM92-.LM91
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM93-.LM92
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM94-.LM93
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM95-.LM94
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE24
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM96
	.byte	0xa5
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM97-.LM96
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM98-.LM97
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM99-.LM98
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM100-.LM99
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM101-.LM100
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM102-.LM101
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM103-.LM102
	.byte	0x6
	.byte	0x10
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM104-.LM103
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM105-.LM104
	.byte	0x1e
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM106-.LM105
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM107-.LM106
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM108-.LM107
	.byte	0x1a
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM109-.LM108
	.byte	0x30
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM110-.LM109
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM111-.LM110
	.byte	0x6
	.byte	0x3
	.sleb128 -22
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM112-.LM111
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM113-.LM112
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM114-.LM113
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM115-.LM114
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM116-.LM115
	.byte	0x6
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM117-.LM116
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM118-.LM117
	.byte	0x18
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM119-.LM118
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM120-.LM119
	.byte	0x1
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM121-.LM120
	.byte	0x16
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM122-.LM121
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM123-.LM122
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM124-.LM123
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM125-.LM124
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM126-.LM125
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM127-.LM126
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM128-.LM127
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM129-.LM128
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM130-.LM129
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM131-.LM130
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE27
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM132
	.byte	0xcc
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM133-.LM132
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM134-.LM133
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM135-.LM134
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM136-.LM135
	.byte	0x6
	.byte	0x13
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM137-.LM136
	.byte	0x1b
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM138-.LM137
	.byte	0x13
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM139-.LM138
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM140-.LM139
	.byte	0x1b
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM141-.LM140
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM142-.LM141
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM143-.LM142
	.byte	0x6
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM144-.LM143
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM145-.LM144
	.byte	0x1a
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM146-.LM145
	.byte	0x14
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM147-.LM146
	.byte	0x1a
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM148-.LM147
	.byte	0x14
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM149-.LM148
	.byte	0x1a
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM150-.LM149
	.byte	0x14
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM151-.LM150
	.byte	0x1a
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM152-.LM151
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM153-.LM152
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE28
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM154
	.byte	0xde
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM155-.LM154
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM156-.LM155
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM157-.LM156
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM158-.LM157
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM159-.LM158
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM160-.LM159
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM161-.LM160
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM162-.LM161
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM163-.LM162
	.byte	0x6
	.byte	0x13
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM164-.LM163
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM165-.LM164
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM166-.LM165
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM167-.LM166
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE29
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"long long int"
.LASF34:
	.string	"hal_prase_adc_data"
.LASF51:
	.string	"bl_adc_start"
.LASF14:
	.string	"size_t"
.LASF37:
	.string	"channel"
.LASF21:
	.string	"lli_flag"
.LASF11:
	.string	"short unsigned int"
.LASF23:
	.string	"data_size"
.LASF50:
	.string	"adc_ctx"
.LASF32:
	.string	"bl_adc_freq_init"
.LASF8:
	.string	"int32_t"
.LASF35:
	.string	"gpio_num"
.LASF40:
	.string	"data"
.LASF10:
	.string	"unsigned char"
.LASF47:
	.string	"adc_data"
.LASF13:
	.string	"long unsigned int"
.LASF45:
	.string	"data_num"
.LASF42:
	.string	"hal_adc_callback_register"
.LASF49:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF33:
	.string	"hal_parse_data_arr"
.LASF38:
	.string	"hal_adc_get_data"
.LASF19:
	.string	"channel_data"
.LASF36:
	.string	"raw_flag"
.LASF5:
	.string	"short int"
.LASF41:
	.string	"hal_adc_add_channel"
.LASF3:
	.string	"unsigned int"
.LASF31:
	.string	"bl_adc_init"
.LASF2:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF18:
	.string	"mode"
.LASF4:
	.string	"signed char"
.LASF39:
	.string	"pstctx"
.LASF29:
	.string	"bl_dma_find_ctx_by_channel"
.LASF25:
	.string	"bl_adc_parse_data"
.LASF17:
	.string	"bl_adc_cb_t"
.LASF27:
	.string	"bl_adc_get_channel_by_gpio"
.LASF16:
	.string	"char"
.LASF46:
	.string	"buf_size"
.LASF26:
	.string	"memcpy"
.LASF30:
	.string	"bl_adc_dma_init"
.LASF44:
	.string	"freq"
.LASF52:
	.string	"output"
.LASF43:
	.string	"hal_adc_init"
.LASF12:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF53:
	.string	"check_adc_gpio_valid"
.LASF15:
	.string	"long double"
.LASF24:
	.string	"adc_ctx_t"
.LASF28:
	.string	"bl_adc_gpio_init"
.LASF20:
	.string	"adc_lli"
.LASF22:
	.string	"chan_init_table"
.LASF48:
	.string	"gpio_arr"
	.section	.debug_line_str,"MS",@progbits,1
.LASF60:
	.string	"bl_adc.h"
.LASF56:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/hal_drv"
.LASF62:
	.string	"bl_dma.h"
.LASF61:
	.string	"string.h"
.LASF58:
	.string	"stdint-gcc.h"
.LASF57:
	.string	"hal_adc.c"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_adc.c"
.LASF54:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal"
.LASF55:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF59:
	.string	"stddef.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
