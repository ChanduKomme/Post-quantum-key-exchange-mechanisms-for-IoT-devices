	.file	"bl_sys_time.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bl_sys_time_update,"ax",@progbits
	.align	1
	.globl	bl_sys_time_update
	.type	bl_sys_time_update, @function
bl_sys_time_update:
.LVL0:
.LFB9:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
.LM4:
	mv	s0,a0
	mv	s1,a1
.LM5:
	call	xTaskGetTickCount
.LVL1:
.LM6:
	lui	a5,%hi(time_synced)
.LM7:
	sw	a0,%lo(time_synced)(a5)
	sw	zero,%lo(time_synced+4)(a5)
.LM8:
.LM9:
	lui	a5,%hi(epoch_time)
.LM10:
	lw	ra,12(sp)
	.cfi_restore 1
.LM11:
	sw	s0,%lo(epoch_time)(a5)
.LM12:
	lw	s0,8(sp)
	.cfi_restore 8
.LM13:
	sw	s1,%lo(epoch_time+4)(a5)
.LM14:
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	bl_sys_time_update, .-bl_sys_time_update
	.section	.text.bl_sys_time_get,"ax",@progbits
	.align	1
	.globl	bl_sys_time_get
	.type	bl_sys_time_get, @function
bl_sys_time_get:
.LVL2:
.LFB10:
.LM15:
	.cfi_startproc
.LM16:
.LM17:
.LM18:
	beq	a0,zero,.L6
.LM19:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
.LM20:
	lui	s1,%hi(epoch_time)
.LM21:
	lw	a5,%lo(epoch_time)(s1)
	lw	a4,%lo(epoch_time+4)(s1)
.LM22:
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
.LM23:
	or	a5,a5,a4
	mv	s0,a0
.LM24:
.LM25:
	li	a0,-1
.LVL3:
.LM26:
	beq	a5,zero,.L3
.LM27:
.LM28:
	call	xTaskGetTickCount
.LVL4:
.LM29:
.LM30:
	lui	a5,%hi(time_synced)
.LM31:
	lw	a5,%lo(time_synced)(a5)
.LM32:
	lw	a4,%lo(epoch_time)(s1)
	lw	a2,%lo(epoch_time+4)(s1)
.LM33:
	sub	a5,a0,a5
.LM34:
	srai	a3,a5,31
	add	a4,a5,a4
	sltu	a5,a4,a5
	add	a3,a3,a2
	add	a5,a5,a3
.LM35:
	sw	a4,0(s0)
	sw	a5,4(s0)
.LM36:
.LM37:
	li	a0,0
.LVL5:
.L3:
.LM38:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL6:
.LM39:
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL7:
.L6:
.LM40:
	li	a0,-1
.LVL8:
.LM41:
	ret
	.cfi_endproc
.LFE10:
	.size	bl_sys_time_get, .-bl_sys_time_get
	.section	.text.bl_sys_time_sync_init,"ax",@progbits
	.align	1
	.globl	bl_sys_time_sync_init
	.type	bl_sys_time_sync_init, @function
bl_sys_time_sync_init:
.LFB11:
.LM42:
	.cfi_startproc
.LM43:
.LM44:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM45:
	call	vTaskEnterCritical
.LVL9:
.LM46:
.LM47:
	call	xTaskGetTickCount
.LVL10:
.LM48:
	lui	a5,%hi(init_tick_rtos)
	sw	a0,%lo(init_tick_rtos)(a5)
.LM49:
.LM50:
	call	bl_rtc_get_timestamp_ms
.LVL11:
.LM51:
	lui	a5,%hi(init_tick_rtc)
	sw	a0,%lo(init_tick_rtc)(a5)
.LM52:
	call	vTaskExitCritical
.LVL12:
.LM53:
.LM54:
	lw	ra,12(sp)
	.cfi_restore 1
.LM55:
	lui	a5,%hi(sync_init)
	li	a4,1
	sw	a4,%lo(sync_init)(a5)
.LM56:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	bl_sys_time_sync_init, .-bl_sys_time_sync_init
	.section	.text.bl_sys_time_sync_state,"ax",@progbits
	.align	1
	.globl	bl_sys_time_sync_state
	.type	bl_sys_time_sync_state, @function
bl_sys_time_sync_state:
.LVL13:
.LFB12:
.LM57:
	.cfi_startproc
.LM58:
.LM59:
.LM60:
.LM61:
.LM62:
.LM63:
	beq	a0,zero,.L16
.LM64:
.LM65:
	lui	a5,%hi(sync_init)
.LM66:
	lw	a5,%lo(sync_init)(a5)
.LM67:
	li	a4,-1
.LM68:
	beq	a5,zero,.L21
.LM69:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
.LVL14:
.LBB4:
.LBI4:
.LM70:
.LBB5:
.LM71:
	call	vTaskEnterCritical
.LVL15:
.LM72:
.LM73:
	call	xTaskGetTickCount
.LVL16:
	mv	s1,a0
.LVL17:
.LM74:
.LM75:
	call	bl_rtc_get_timestamp_ms
.LVL18:
	sw	a0,12(sp)
.LVL19:
.LM76:
	call	vTaskExitCritical
.LVL20:
.LM77:
.LM78:
	lui	a5,%hi(init_tick_rtos)
.LM79:
	lui	a4,%hi(init_tick_rtc)
.LM80:
	lw	a4,%lo(init_tick_rtc)(a4)
.LM81:
	lw	a5,%lo(init_tick_rtos)(a5)
.LVL21:
.LM82:
.LM83:
	lw	a0,12(sp)
.LM84:
	sub	a3,s1,a5
.LVL22:
.LM85:
	sub	a0,a0,a4
.LVL23:
.LM86:
.LM87:
	li	a4,0
.LM88:
	bgeu	a3,a0,.L14
.LM89:
.LM90:
	sub	a5,a5,s1
	add	a5,a5,a0
.LM91:
	sw	a5,0(s0)
.LM92:
.LM93:
	li	a4,1
.L14:
.LBE5:
.LBE4:
.LM94:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL24:
.LM95:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL25:
.LM96:
	mv	a0,a4
.LVL26:
.LM97:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL27:
.LM98:
	jr	ra
.LVL28:
.L16:
.LM99:
	li	a4,-1
.L21:
.LM100:
	mv	a0,a4
.LVL29:
.LM101:
	ret
	.cfi_endproc
.LFE12:
	.size	bl_sys_time_sync_state, .-bl_sys_time_sync_state
	.section	.text.bl_sys_time_sync,"ax",@progbits
	.align	1
	.globl	bl_sys_time_sync
	.type	bl_sys_time_sync, @function
bl_sys_time_sync:
.LFB13:
.LM102:
	.cfi_startproc
.LM103:
.LM104:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
.LM105:
	addi	a0,sp,28
.LM106:
	sw	ra,44(sp)
	.cfi_offset 1, -4
.LM107:
	sw	zero,28(sp)
.LM108:
.LM109:
	call	bl_sys_time_sync_state
.LVL30:
	mv	a4,a0
.LM110:
	li	a5,1
.LM111:
	lw	a0,28(sp)
.LM112:
	bne	a4,a5,.L24
.LM113:
	sw	a0,12(sp)
	call	vTaskStepTickSafe
.LVL31:
	lw	a0,12(sp)
.LM114:
.L24:
.LM115:
	lw	ra,44(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	bl_sys_time_sync, .-bl_sys_time_sync
	.section	.sbss.sync_init,"aw",@nobits
	.align	2
	.type	sync_init, @object
	.size	sync_init, 4
sync_init:
	.zero	4
	.section	.sbss.init_tick_rtc,"aw",@nobits
	.align	2
	.type	init_tick_rtc, @object
	.size	init_tick_rtc, 4
init_tick_rtc:
	.zero	4
	.section	.sbss.init_tick_rtos,"aw",@nobits
	.align	2
	.type	init_tick_rtos, @object
	.size	init_tick_rtos, 4
init_tick_rtos:
	.zero	4
	.section	.sbss.time_synced,"aw",@nobits
	.align	3
	.type	time_synced, @object
	.size	time_synced, 8
time_synced:
	.zero	8
	.section	.sbss.epoch_time,"aw",@nobits
	.align	3
	.type	epoch_time, @object
	.size	epoch_time, 8
epoch_time:
	.zero	8
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x33b
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL9
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
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x68
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x89
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x2
	.byte	0x37
	.byte	0x20
	.4byte	0x2b
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x7d
	.uleb128 0x11
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x23
	.byte	0x11
	.4byte	0x90
	.uleb128 0x5
	.byte	0x3
	.4byte	epoch_time
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x24
	.byte	0x11
	.4byte	0x90
	.uleb128 0x5
	.byte	0x3
	.4byte	time_synced
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x26
	.byte	0x11
	.4byte	0x7d
	.uleb128 0x5
	.byte	0x3
	.4byte	init_tick_rtos
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x27
	.byte	0x11
	.4byte	0x7d
	.uleb128 0x5
	.byte	0x3
	.4byte	init_tick_rtc
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x28
	.byte	0xc
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	sync_init
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x5
	.2byte	0x9bf
	.byte	0x6
	.4byte	0x11c
	.uleb128 0x13
	.4byte	0xa8
	.byte	0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x67
	.uleb128 0x14
	.4byte	.LASF24
	.byte	0x4
	.byte	0x27
	.byte	0xa
	.4byte	0x90
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x66
	.uleb128 0x15
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x54c
	.byte	0xc
	.4byte	0x9c
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x6c
	.byte	0xa
	.4byte	0x7d
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18e
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x6e
	.byte	0xe
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.4byte	.LVL30
	.4byte	0x18e
	.4byte	0x17c
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LVL31
	.4byte	0x109
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF38
	.byte	0x1
	.byte	0x4d
	.byte	0x5
	.4byte	0x39
	.byte	0x1
	.4byte	0x1d4
	.uleb128 0x19
	.4byte	.LASF26
	.byte	0x1
	.byte	0x4d
	.byte	0x26
	.4byte	0x1d4
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x4f
	.4byte	0x7d
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x50
	.4byte	0x7d
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x51
	.4byte	0x7d
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0x52
	.4byte	0x7d
	.byte	0
	.uleb128 0xb
	.4byte	0x7d
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x43
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x212
	.uleb128 0x2
	.4byte	.LVL9
	.4byte	0x12e
	.uleb128 0x2
	.4byte	.LVL10
	.4byte	0x134
	.uleb128 0x2
	.4byte	.LVL11
	.4byte	0x122
	.uleb128 0x2
	.4byte	.LVL12
	.4byte	0x11c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x30
	.byte	0x5
	.4byte	0x39
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25c
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x30
	.byte	0x1f
	.4byte	0x25c
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1a
	.4byte	.LASF39
	.byte	0x1
	.byte	0x32
	.byte	0x9
	.4byte	0x39
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x2
	.4byte	.LVL4
	.4byte	0x134
	.byte	0
	.uleb128 0xb
	.4byte	0x90
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x2a
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x292
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x2a
	.byte	0x22
	.4byte	0x90
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x2
	.4byte	.LVL1
	.4byte	0x134
	.byte	0
	.uleb128 0x1b
	.4byte	0x18e
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	0x19f
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x6
	.4byte	0x1ab
	.uleb128 0x6
	.4byte	0x1b5
	.uleb128 0x6
	.4byte	0x1bf
	.uleb128 0x6
	.4byte	0x1c9
	.uleb128 0x1c
	.4byte	0x18e
	.4byte	.LBI4
	.byte	0xd
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x4d
	.byte	0x5
	.uleb128 0xe
	.4byte	0x19f
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x7
	.4byte	0x1ab
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x7
	.4byte	0x1b5
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x7
	.4byte	0x1bf
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x7
	.4byte	0x1c9
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x2
	.4byte	.LVL15
	.4byte	0x12e
	.uleb128 0x2
	.4byte	.LVL16
	.4byte	0x134
	.uleb128 0x2
	.4byte	.LVL18
	.4byte	0x122
	.uleb128 0x2
	.4byte	.LVL20
	.4byte	0x11c
	.byte	0
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
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x18
	.uleb128 0x19
	.uleb128 0x19
	.uleb128 0x1a
	.uleb128 0x1a
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL3-.LVL2
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL3-.LVL2
	.uleb128 .LVL6-.LVL2
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL6-.LVL2
	.uleb128 .LVL7-.LVL2
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
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL8-.LVL2
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL8-.LVL2
	.uleb128 .LFE10-.LVL2
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
	.uleb128 0xe
	.uleb128 0x17
.LLST2:
	.byte	0x8
	.4byte	.LVL4
	.uleb128 .LVL5-.LVL4
	.uleb128 0x10
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.4byte	time_synced
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 0x5
	.uleb128 0x5
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-1-.LVL0
	.uleb128 0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL1-1-.LVL0
	.uleb128 .LFE9-.LVL0
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 0xf
	.uleb128 0xf
	.uleb128 0x26
	.uleb128 0x26
	.uleb128 0x2a
	.uleb128 0x2a
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL15-1-.LVL13
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL15-1-.LVL13
	.uleb128 .LVL24-.LVL13
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL24-.LVL13
	.uleb128 .LVL28-.LVL13
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
	.uleb128 .LVL28-.LVL13
	.uleb128 .LVL29-.LVL13
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL29-.LVL13
	.uleb128 .LFE12-.LVL13
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
	.uleb128 0xd
	.uleb128 0xf
	.uleb128 0xf
	.uleb128 0x26
	.uleb128 0x26
	.uleb128 0x2a
.LLST4:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL15-1-.LVL14
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL15-1-.LVL14
	.uleb128 .LVL24-.LVL14
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL24-.LVL14
	.uleb128 .LVL28-.LVL14
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
	.uleb128 0x11
	.uleb128 0x27
.LLST5:
	.byte	0x8
	.4byte	.LVL17
	.uleb128 .LVL25-.LVL17
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS6:
	.uleb128 0x13
	.uleb128 0x14
	.uleb128 0x14
	.uleb128 0x29
	.uleb128 0x29
	.uleb128 0x2a
.LLST6:
	.byte	0x6
	.4byte	.LVL19
	.byte	0x4
	.uleb128 .LVL19-.LVL19
	.uleb128 .LVL20-1-.LVL19
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL20-1-.LVL19
	.uleb128 .LVL27-.LVL19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x4
	.uleb128 .LVL27-.LVL19
	.uleb128 .LVL28-.LVL19
	.uleb128 0x2
	.byte	0x72
	.sleb128 -20
	.byte	0
.LVUS7:
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0x1c
	.uleb128 0x2a
.LLST7:
	.byte	0x6
	.4byte	.LVL21
	.byte	0x4
	.uleb128 .LVL21-.LVL21
	.uleb128 .LVL22-.LVL21
	.uleb128 0x6
	.byte	0x79
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL22-.LVL21
	.uleb128 .LVL28-.LVL21
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS8:
	.uleb128 0x1d
	.uleb128 0x28
	.uleb128 0x28
	.uleb128 0x29
	.uleb128 0x29
	.uleb128 0x2a
.LLST8:
	.byte	0x6
	.4byte	.LVL23
	.byte	0x4
	.uleb128 .LVL23-.LVL23
	.uleb128 .LVL26-.LVL23
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL26-.LVL23
	.uleb128 .LVL27-.LVL23
	.uleb128 0xb
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.byte	0x3
	.4byte	init_tick_rtc
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL27-.LVL23
	.uleb128 .LVL28-.LVL23
	.uleb128 0xb
	.byte	0x72
	.sleb128 -20
	.byte	0x6
	.byte	0x3
	.4byte	init_tick_rtc
	.byte	0x6
	.byte	0x1c
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
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
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
.LLRL9:
	.byte	0x7
	.4byte	.LFB9
	.uleb128 .LFE9-.LFB9
	.byte	0x7
	.4byte	.LFB10
	.uleb128 .LFE10-.LFB10
	.byte	0x7
	.4byte	.LFB11
	.uleb128 .LFE11-.LFB11
	.byte	0x7
	.4byte	.LFB12
	.uleb128 .LFE12-.LFB12
	.byte	0x7
	.4byte	.LFB13
	.uleb128 .LFE13-.LFB13
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
	.4byte	.LASF40
	.4byte	.LASF41
	.4byte	.LASF42
	.4byte	.LASF43
	.4byte	.LASF44
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF45
	.byte	0x4
	.4byte	.LASF46
	.byte	0x5
	.4byte	.LASF47
	.byte	0x2
	.4byte	.LASF48
	.byte	0x3
	.4byte	.LASF49
	.byte	0x1
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x41
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
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x18
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x16
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x16
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
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
	.4byte	.LM15
	.byte	0x47
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x1e
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x10
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x1e
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x1a
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x31
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x16
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x3
	.sleb128 -12
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x23
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
	.4byte	.LM42
	.byte	0x5a
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM55-.LM54
	.byte	0x16
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM56-.LM55
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
	.4byte	.LM57
	.byte	0x64
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
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
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
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM64-.LM63
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM65-.LM64
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM66-.LM65
	.byte	0x1
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM67-.LM66
	.byte	0x14
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM68-.LM67
	.byte	0x1a
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM69-.LM68
	.byte	0xd
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM70-.LM69
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM71-.LM70
	.byte	0x26
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM72-.LM71
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM73-.LM72
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM74-.LM73
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM75-.LM74
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM76-.LM75
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM77-.LM76
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM78-.LM77
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x22
	.byte	0x9
	.2byte	.LM79-.LM78
	.byte	0x18
	.byte	0x5
	.uleb128 0x20
	.byte	0x9
	.2byte	.LM80-.LM79
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM81-.LM80
	.byte	0x16
	.byte	0x5
	.uleb128 0x22
	.byte	0x9
	.2byte	.LM82-.LM81
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM83-.LM82
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM84-.LM83
	.byte	0x16
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM85-.LM84
	.byte	0x18
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM86-.LM85
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM87-.LM86
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM88-.LM87
	.byte	0x13
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM89-.LM88
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM90-.LM89
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x26
	.byte	0x9
	.2byte	.LM91-.LM90
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM92-.LM91
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM93-.LM92
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM94-.LM93
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM95-.LM94
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM96-.LM95
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM97-.LM96
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM98-.LM97
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM99-.LM98
	.byte	0x3
	.sleb128 -21
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM100-.LM99
	.byte	0x2c
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM101-.LM100
	.byte	0x1
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
	.4byte	.LM102
	.byte	0x83
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM103-.LM102
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM104-.LM103
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM105-.LM104
	.byte	0x1a
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM106-.LM105
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM107-.LM106
	.byte	0x18
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM108-.LM107
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM109-.LM108
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM110-.LM109
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM111-.LM110
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM112-.LM111
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x16
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM113-.LM112
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM114-.LM113
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM115-.LM114
	.byte	0x6
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
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"TickType_t"
.LASF18:
	.string	"time_synced"
.LASF23:
	.string	"vTaskEnterCritical"
.LASF22:
	.string	"vTaskExitCritical"
.LASF10:
	.string	"short unsigned int"
.LASF38:
	.string	"bl_sys_time_sync_state"
.LASF29:
	.string	"deltaTickRtos"
.LASF19:
	.string	"init_tick_rtos"
.LASF27:
	.string	"currTickRtos"
.LASF20:
	.string	"init_tick_rtc"
.LASF2:
	.string	"long long unsigned int"
.LASF9:
	.string	"unsigned char"
.LASF21:
	.string	"sync_init"
.LASF13:
	.string	"long unsigned int"
.LASF31:
	.string	"bl_sys_time_sync"
.LASF36:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF34:
	.string	"bl_sys_time_update"
.LASF26:
	.string	"xTicksToJump"
.LASF39:
	.string	"ms_diff"
.LASF3:
	.string	"unsigned int"
.LASF24:
	.string	"bl_rtc_get_timestamp_ms"
.LASF16:
	.string	"char"
.LASF37:
	.string	"vTaskStepTickSafe"
.LASF11:
	.string	"int32_t"
.LASF32:
	.string	"bl_sys_time_get"
.LASF4:
	.string	"long long int"
.LASF7:
	.string	"short int"
.LASF30:
	.string	"deltaTickRtc"
.LASF35:
	.string	"epoch"
.LASF14:
	.string	"uint64_t"
.LASF12:
	.string	"uint32_t"
.LASF8:
	.string	"long int"
.LASF33:
	.string	"bl_sys_time_sync_init"
.LASF17:
	.string	"epoch_time"
.LASF5:
	.string	"long double"
.LASF6:
	.string	"signed char"
.LASF25:
	.string	"xTaskGetTickCount"
.LASF28:
	.string	"currTickRtc"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bltime/bl_sys_time.c"
.LASF43:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/bltime"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/bltime"
.LASF48:
	.string	"bl_rtc.h"
.LASF46:
	.string	"stdint-gcc.h"
.LASF45:
	.string	"bl_sys_time.c"
.LASF42:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal"
.LASF44:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF47:
	.string	"portmacro.h"
.LASF41:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V"
.LASF40:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/include"
.LASF49:
	.string	"task.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
