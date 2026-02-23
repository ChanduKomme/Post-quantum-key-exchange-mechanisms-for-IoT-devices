	.file	"bl_sys.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bl_sys_logall_enable,"ax",@progbits
	.align	1
	.globl	bl_sys_logall_enable
	.type	bl_sys_logall_enable, @function
bl_sys_logall_enable:
.LFB8:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
	lui	a5,%hi(sys_log_all_enable)
	li	a4,1
	sb	a4,%lo(sys_log_all_enable)(a5)
.LM4:
.LM5:
	li	a0,0
	ret
	.cfi_endproc
.LFE8:
	.size	bl_sys_logall_enable, .-bl_sys_logall_enable
	.section	.text.bl_sys_logall_disable,"ax",@progbits
	.align	1
	.globl	bl_sys_logall_disable
	.type	bl_sys_logall_disable, @function
bl_sys_logall_disable:
.LFB9:
.LM6:
	.cfi_startproc
.LM7:
.LM8:
	lui	a5,%hi(sys_log_all_enable)
	sb	zero,%lo(sys_log_all_enable)(a5)
.LM9:
.LM10:
	li	a0,0
	ret
	.cfi_endproc
.LFE9:
	.size	bl_sys_logall_disable, .-bl_sys_logall_disable
	.section	.text.bl_sys_mfg_config,"ax",@progbits
	.align	1
	.globl	bl_sys_mfg_config
	.type	bl_sys_mfg_config, @function
bl_sys_mfg_config:
.LFB10:
.LM11:
	.cfi_startproc
.LM12:
.LM13:
.LM14:
	li	a5,1734766592
	li	a4,1073803264
	addi	a5,a5,-720
	sw	a5,256(a4)
.LM15:
	ret
	.cfi_endproc
.LFE10:
	.size	bl_sys_mfg_config, .-bl_sys_mfg_config
	.section	.text.bl_sys_reset_por,"ax",@progbits
	.align	1
	.globl	bl_sys_reset_por
	.type	bl_sys_reset_por, @function
bl_sys_reset_por:
.LFB11:
.LM16:
	.cfi_startproc
.LM17:
.LBB6:
.LBI6:
.LM18:
.LBB7:
.LM19:
.LBE7:
.LBE6:
.LM20:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LBB9:
.LBB8:
.LM21:
 #APP
# 94 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
	csrci mstatus, 8
# 0 "" 2
 #NO_APP
.LBE8:
.LBE9:
.LM22:
	call	GLB_SW_POR_Reset
.LVL0:
.L5:
.LM23:
.LM24:
.LM25:
	j	.L5
	.cfi_endproc
.LFE11:
	.size	bl_sys_reset_por, .-bl_sys_reset_por
	.section	.text.bl_sys_reset_system,"ax",@progbits
	.align	1
	.globl	bl_sys_reset_system
	.type	bl_sys_reset_system, @function
bl_sys_reset_system:
.LFB12:
.LM26:
	.cfi_startproc
.LM27:
.LBB10:
.LBI10:
.LM28:
.LBB11:
.LM29:
.LBE11:
.LBE10:
.LM30:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LBB13:
.LBB12:
.LM31:
 #APP
# 94 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
	csrci mstatus, 8
# 0 "" 2
 #NO_APP
.LBE12:
.LBE13:
.LM32:
	call	GLB_SW_System_Reset
.LVL1:
.L8:
.LM33:
.LM34:
.LM35:
	j	.L8
	.cfi_endproc
.LFE12:
	.size	bl_sys_reset_system, .-bl_sys_reset_system
	.section	.text.bl_sys_isxipaddr,"ax",@progbits
	.align	1
	.globl	bl_sys_isxipaddr
	.type	bl_sys_isxipaddr, @function
bl_sys_isxipaddr:
.LVL2:
.LFB13:
.LM36:
	.cfi_startproc
.LM37:
.LM38:
	li	a5,-16777216
	and	a0,a0,a5
.LVL3:
.LM39:
	li	a5,-587202560
	add	a0,a0,a5
	li	a5,-536870912
	addi	a5,a5,-1
	and	a0,a0,a5
.LM40:
	seqz	a0,a0
	ret
	.cfi_endproc
.LFE13:
	.size	bl_sys_isxipaddr, .-bl_sys_isxipaddr
	.section	.text.bl_sys_em_config,"ax",@progbits
	.align	1
	.globl	bl_sys_em_config
	.type	bl_sys_em_config, @function
bl_sys_em_config:
.LFB14:
.LM41:
	.cfi_startproc
.LM42:
.LM43:
.LM44:
.LVL4:
.LM45:
.LM46:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM47:
	lui	a5,%hi(__LD_CONFIG_EM_SEL)
.LM48:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM49:
	addi	a5,a5,%lo(__LD_CONFIG_EM_SEL)
	li	a4,8192
	beq	a5,a4,.L12
	li	a4,16384
	beq	a5,a4,.L13
.L14:
.LM50:
.LM51:
.LM52:
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L12:
	.cfi_restore_state
.LM53:
	li	a0,3
.L16:
.LM54:
	call	GLB_Set_EM_Sel
.LVL5:
.LM55:
	j	.L14
.L13:
.LM56:
	li	a0,15
	j	.L16
	.cfi_endproc
.LFE14:
	.size	bl_sys_em_config, .-bl_sys_em_config
	.section	.text.bl_sys_early_init,"ax",@progbits
	.align	1
	.globl	bl_sys_early_init
	.type	bl_sys_early_init, @function
bl_sys_early_init:
.LFB15:
.LM57:
	.cfi_startproc
.LM58:
.LM59:
.LM60:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM61:
	li	a0,1
.LM62:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM63:
	call	HBN_Aon_Pad_IeSmt_Cfg
.LVL6:
.LM64:
.LM65:
.LM66:
	lui	a5,%hi(freertos_risc_v_trap_handler)
	addi	a5,a5,%lo(freertos_risc_v_trap_handler)
 #APP
# 132 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_sys.c" 1
	csrw mtvec, a5
# 0 "" 2
.LM67:
.LM68:
 #NO_APP
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	bl_sys_early_init, .-bl_sys_early_init
	.section	.text.bl_sys_init,"ax",@progbits
	.align	1
	.globl	bl_sys_init
	.type	bl_sys_init, @function
bl_sys_init:
.LFB16:
.LM69:
	.cfi_startproc
.LM70:
	tail	bl_sys_em_config
.LVL7:
	.cfi_endproc
.LFE16:
	.size	bl_sys_init, .-bl_sys_init
	.globl	sys_log_all_enable
	.section	.sdata.sys_log_all_enable,"aw"
	.type	sys_log_all_enable, @object
	.size	sys_log_all_enable, 1
sys_log_all_enable:
	.byte	1
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2fc
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL3
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
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x39
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x7b
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x7
	.4byte	0x39
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.4byte	0xb6
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x1b
	.byte	0x2
	.4byte	0x97
	.uleb128 0x11
	.4byte	0x5c
	.4byte	0xd2
	.uleb128 0x12
	.4byte	0x32
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	0x39
	.byte	0x5
	.byte	0xae
	.byte	0xe
	.4byte	0xf1
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0xb2
	.byte	0x2
	.4byte	0xd2
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0x28
	.byte	0xf
	.4byte	0x116
	.uleb128 0x5
	.byte	0x3
	.4byte	sys_log_all_enable
	.uleb128 0x1
	.byte	0x1
	.byte	0x2
	.4byte	.LASF23
	.uleb128 0x14
	.4byte	0x10f
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x83
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x80
	.4byte	0xb6
	.4byte	0x135
	.uleb128 0x5
	.4byte	0x5c
	.byte	0
	.uleb128 0x15
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x255
	.byte	0xd
	.4byte	0xb6
	.4byte	0x14c
	.uleb128 0x5
	.4byte	0xf1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF26
	.2byte	0x23d
	.4byte	0xb6
	.uleb128 0xa
	.4byte	.LASF27
	.2byte	0x23f
	.4byte	0xb6
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x8a
	.4byte	0x82
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x184
	.uleb128 0x16
	.4byte	.LVL7
	.4byte	0x1c6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7e
	.4byte	0x82
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c6
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x80
	.4byte	0xb6
	.4byte	0x1b0
	.uleb128 0x5
	.4byte	0x5c
	.byte	0
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x83
	.uleb128 0x17
	.4byte	.LVL6
	.4byte	0x121
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x5e
	.4byte	0x82
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x200
	.uleb128 0x19
	.4byte	.LASF33
	.byte	0x1
	.byte	0x60
	.byte	0x14
	.4byte	0x5c
	.uleb128 0x1a
	.4byte	.LASF40
	.byte	0x1
	.byte	0x61
	.byte	0xe
	.4byte	0x6f
	.uleb128 0x6
	.4byte	.LVL5
	.4byte	0x135
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x56
	.4byte	0x82
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22d
	.uleb128 0x1b
	.4byte	.LASF44
	.byte	0x1
	.byte	0x56
	.byte	0x1f
	.4byte	0x6f
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x4d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x259
	.uleb128 0xc
	.4byte	0x2f6
	.4byte	.LBI10
	.4byte	.LLRL1
	.byte	0x4f
	.uleb128 0x6
	.4byte	.LVL1
	.4byte	0x14c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x42
	.4byte	0x82
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x289
	.uleb128 0xc
	.4byte	0x2f6
	.4byte	.LBI6
	.4byte	.LLRL0
	.byte	0x44
	.uleb128 0x6
	.4byte	.LVL0
	.4byte	0x157
	.byte	0
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x36
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ce
	.uleb128 0x1c
	.4byte	.LASF45
	.byte	0x4
	.byte	0x1
	.byte	0x38
	.byte	0xb
	.4byte	0x2c1
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x39
	.byte	0x11
	.4byte	0xc2
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x3a
	.byte	0x12
	.4byte	0x6f
	.byte	0
	.uleb128 0x1d
	.string	"mfg"
	.byte	0x1
	.byte	0x3b
	.byte	0x7
	.4byte	0x29d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x30
	.4byte	0x82
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x2a
	.4byte	0x82
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF46
	.byte	0x2
	.byte	0x5c
	.byte	0x37
	.byte	0x3
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
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
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x21
	.sleb128 24
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
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0xc
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 5
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0
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
.LVUS2:
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x3
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL3-.LVL2
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL3-.LVL2
	.uleb128 .LFE13-.LVL2
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
	.4byte	0x5c
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
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
	.byte	0x5
	.4byte	.LBB6
	.byte	0x4
	.uleb128 .LBB6-.LBB6
	.uleb128 .LBE6-.LBB6
	.byte	0x4
	.uleb128 .LBB9-.LBB6
	.uleb128 .LBE9-.LBB6
	.byte	0
.LLRL1:
	.byte	0x5
	.4byte	.LBB10
	.byte	0x4
	.uleb128 .LBB10-.LBB10
	.uleb128 .LBE10-.LBB10
	.byte	0x4
	.uleb128 .LBB13-.LBB10
	.uleb128 .LBE13-.LBB10
	.byte	0
.LLRL3:
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
	.4byte	.LFB11
	.uleb128 .LFE11-.LFB11
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
	.byte	0x7
	.4byte	.LFB16
	.uleb128 .LFE16-.LFB16
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
	.4byte	.LASF47
	.4byte	.LASF48
	.4byte	.LASF49
	.4byte	.LASF50
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF51
	.byte	0x3
	.4byte	.LASF52
	.byte	0x1
	.4byte	.LASF53
	.byte	0x4
	.4byte	.LASF54
	.byte	0x2
	.4byte	.LASF55
	.byte	0x2
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
	.byte	0x1
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM5-.LM4
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
	.4byte	.LM6
	.byte	0x47
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x6
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
	.4byte	.LM11
	.byte	0x4d
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x1e
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x29
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x18
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
	.4byte	.LM16
	.byte	0x59
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x4
	.uleb128 0x2
	.byte	0x2f
	.byte	0x5
	.uleb128 0x37
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x19
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x3
	.sleb128 -27
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x4
	.uleb128 0x2
	.byte	0x32
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x3
	.sleb128 -25
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x15
	.byte	0x5
	.uleb128 0xb
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
	.4byte	.LM26
	.byte	0x64
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x4
	.uleb128 0x2
	.byte	0x24
	.byte	0x5
	.uleb128 0x37
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x19
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x3
	.sleb128 -16
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x4
	.uleb128 0x2
	.byte	0x27
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x3
	.sleb128 -14
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x15
	.byte	0x5
	.uleb128 0xb
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
	.4byte	.LM36
	.byte	0x6d
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x1b
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
	.4byte	.LM41
	.byte	0x75
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x19
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
	.byte	0x11
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x11
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x6
	.byte	0x2a
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0x6
	.byte	0x3
	.sleb128 -15
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM55-.LM54
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0x15
	.byte	0x5
	.uleb128 0xd
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
	.4byte	.LM57
	.byte	0x95
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
	.byte	0x6
	.byte	0x15
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM61-.LM60
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM62-.LM61
	.byte	0x15
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM63-.LM62
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM64-.LM63
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM65-.LM64
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM66-.LM65
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x5
	.uleb128 0xcc
	.byte	0x9
	.2byte	.LM67-.LM66
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM68-.LM67
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE15
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM69
	.byte	0xa1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM70-.LM69
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE16
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF39:
	.string	"word"
.LASF17:
	.string	"TIMEOUT"
.LASF33:
	.string	"__LD_CONFIG_EM_SEL"
.LASF45:
	.string	"_reg_t"
.LASF36:
	.string	"bl_sys_reset_system"
.LASF9:
	.string	"short unsigned int"
.LASF26:
	.string	"GLB_SW_System_Reset"
.LASF38:
	.string	"byte"
.LASF25:
	.string	"GLB_Set_EM_Sel"
.LASF34:
	.string	"bl_sys_isxipaddr"
.LASF35:
	.string	"bl_sys_reset_por"
.LASF4:
	.string	"unsigned char"
.LASF15:
	.string	"SUCCESS"
.LASF32:
	.string	"sys_log_all_enable"
.LASF20:
	.string	"GLB_EM_8KB"
.LASF12:
	.string	"long unsigned int"
.LASF44:
	.string	"addr"
.LASF43:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF21:
	.string	"GLB_EM_16KB"
.LASF27:
	.string	"GLB_SW_POR_Reset"
.LASF30:
	.string	"freertos_risc_v_trap_handler"
.LASF46:
	.string	"__disable_irq"
.LASF3:
	.string	"unsigned int"
.LASF19:
	.string	"GLB_EM_0KB"
.LASF24:
	.string	"HBN_Aon_Pad_IeSmt_Cfg"
.LASF2:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF31:
	.string	"bl_sys_em_config"
.LASF7:
	.string	"long int"
.LASF8:
	.string	"long long int"
.LASF40:
	.string	"em_size"
.LASF42:
	.string	"bl_sys_logall_enable"
.LASF37:
	.string	"bl_sys_mfg_config"
.LASF6:
	.string	"short int"
.LASF41:
	.string	"bl_sys_logall_disable"
.LASF22:
	.string	"GLB_EM_Type"
.LASF11:
	.string	"uint32_t"
.LASF16:
	.string	"ERROR"
.LASF14:
	.string	"char"
.LASF13:
	.string	"long double"
.LASF5:
	.string	"signed char"
.LASF29:
	.string	"bl_sys_early_init"
.LASF23:
	.string	"_Bool"
.LASF18:
	.string	"BL_Err_Type"
.LASF28:
	.string	"bl_sys_init"
	.section	.debug_line_str,"MS",@progbits,1
.LASF48:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc"
.LASF47:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/hal_drv"
.LASF54:
	.string	"bl602_common.h"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_sys.c"
.LASF51:
	.string	"bl_sys.c"
.LASF53:
	.string	"stdint-gcc.h"
.LASF52:
	.string	"cmsis_compatible_gcc.h"
.LASF49:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal"
.LASF50:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF55:
	.string	"bl602_glb.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
