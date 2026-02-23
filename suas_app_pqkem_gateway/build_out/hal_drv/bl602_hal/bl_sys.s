	.file	"bl_sys.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_sys.c"
	.globl	sys_log_all_enable
	.section	.sdata.sys_log_all_enable,"aw"
	.type	sys_log_all_enable, @object
	.size	sys_log_all_enable, 1
sys_log_all_enable:
	.byte	1
	.section	.text.bl_sys_logall_enable,"ax",@progbits
	.align	1
	.globl	bl_sys_logall_enable
	.type	bl_sys_logall_enable, @function
bl_sys_logall_enable:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_sys.c"
	.loc 1 43 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 44 24
	lui	a5,%hi(sys_log_all_enable)
	li	a4,1
	sb	a4,%lo(sys_log_all_enable)(a5)
	.loc 1 45 12
	li	a5,0
	.loc 1 46 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	bl_sys_logall_enable, .-bl_sys_logall_enable
	.section	.text.bl_sys_logall_disable,"ax",@progbits
	.align	1
	.globl	bl_sys_logall_disable
	.type	bl_sys_logall_disable, @function
bl_sys_logall_disable:
.LFB9:
	.loc 1 49 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 50 24
	lui	a5,%hi(sys_log_all_enable)
	sb	zero,%lo(sys_log_all_enable)(a5)
	.loc 1 51 12
	li	a5,0
	.loc 1 52 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	bl_sys_logall_disable, .-bl_sys_logall_disable
	.section	.text.bl_sys_mfg_config,"ax",@progbits
	.align	1
	.globl	bl_sys_mfg_config
	.type	bl_sys_mfg_config, @function
bl_sys_mfg_config:
.LFB10:
	.loc 1 55 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 59 7
	li	a5,48
	sb	a5,-20(s0)
	li	a5,109
	sb	a5,-19(s0)
	li	a5,102
	sb	a5,-18(s0)
	li	a5,103
	sb	a5,-17(s0)
	.loc 1 63 5
	li	a5,1073803264
	addi	a5,a5,256
	.loc 1 63 46
	lw	a4,-20(s0)
	.loc 1 63 41
	sw	a4,0(a5)
	.loc 1 64 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	bl_sys_mfg_config, .-bl_sys_mfg_config
	.section	.text.bl_sys_reset_por,"ax",@progbits
	.align	1
	.globl	bl_sys_reset_por
	.type	bl_sys_reset_por, @function
bl_sys_reset_por:
.LFB11:
	.loc 1 67 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
.LBB6:
.LBB7:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h"
	.loc 2 94 3
 #APP
# 94 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
	csrci mstatus, 8
# 0 "" 2
	.loc 2 95 1
 #NO_APP
	nop
.LBE7:
.LBE6:
	.loc 1 69 5
	call	GLB_SW_POR_Reset
.L7:
	.loc 1 70 11
	nop
	j	.L7
	.cfi_endproc
.LFE11:
	.size	bl_sys_reset_por, .-bl_sys_reset_por
	.section	.text.bl_sys_reset_system,"ax",@progbits
	.align	1
	.globl	bl_sys_reset_system
	.type	bl_sys_reset_system, @function
bl_sys_reset_system:
.LFB12:
	.loc 1 78 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
.LBB8:
.LBB9:
	.loc 2 94 3
 #APP
# 94 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
	csrci mstatus, 8
# 0 "" 2
	.loc 2 95 1
 #NO_APP
	nop
.LBE9:
.LBE8:
	.loc 1 80 5
	call	GLB_SW_System_Reset
.L9:
	.loc 1 81 11
	nop
	j	.L9
	.cfi_endproc
.LFE12:
	.size	bl_sys_reset_system, .-bl_sys_reset_system
	.section	.text.bl_sys_isxipaddr,"ax",@progbits
	.align	1
	.globl	bl_sys_isxipaddr
	.type	bl_sys_isxipaddr, @function
bl_sys_isxipaddr:
.LFB13:
	.loc 1 87 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 88 16
	lw	a4,-20(s0)
	li	a5,-16777216
	and	a4,a4,a5
	.loc 1 88 8
	li	a5,587202560
	beq	a4,a5,.L11
	.loc 1 88 55 discriminator 1
	lw	a4,-20(s0)
	li	a5,-16777216
	and	a4,a4,a5
	.loc 1 88 45 discriminator 1
	li	a5,1124073472
	bne	a4,a5,.L12
.L11:
	.loc 1 89 16
	li	a5,1
	j	.L13
.L12:
	.loc 1 91 12
	li	a5,0
.L13:
	.loc 1 92 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	bl_sys_isxipaddr, .-bl_sys_isxipaddr
	.section	.text.bl_sys_em_config,"ax",@progbits
	.align	1
	.globl	bl_sys_em_config
	.type	bl_sys_em_config, @function
bl_sys_em_config:
.LFB14:
	.loc 1 95 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 99 13
	lui	a5,%hi(__LD_CONFIG_EM_SEL)
	addi	a5,a5,%lo(__LD_CONFIG_EM_SEL)
	sw	a5,-20(s0)
	.loc 1 101 5
	lw	a4,-20(s0)
	li	a5,16384
	beq	a4,a5,.L15
	lw	a4,-20(s0)
	li	a5,16384
	bgtu	a4,a5,.L16
	lw	a5,-20(s0)
	beq	a5,zero,.L17
	lw	a4,-20(s0)
	li	a5,8192
	beq	a4,a5,.L18
	j	.L16
.L17:
	.loc 1 104 13
	li	a0,0
	call	GLB_Set_EM_Sel
	.loc 1 106 9
	j	.L16
.L18:
	.loc 1 109 13
	li	a0,3
	call	GLB_Set_EM_Sel
	.loc 1 111 9
	j	.L16
.L15:
	.loc 1 114 13
	li	a0,15
	call	GLB_Set_EM_Sel
	.loc 1 116 9
	nop
.L16:
	.loc 1 123 12
	li	a5,0
	.loc 1 124 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	bl_sys_em_config, .-bl_sys_em_config
	.section	.text.bl_sys_early_init,"ax",@progbits
	.align	1
	.globl	bl_sys_early_init
	.type	bl_sys_early_init, @function
bl_sys_early_init:
.LFB15:
	.loc 1 127 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 129 5
	li	a0,1
	call	HBN_Aon_Pad_IeSmt_Cfg
	.loc 1 132 204 discriminator 2
	lui	a5,%hi(freertos_risc_v_trap_handler)
	addi	a5,a5,%lo(freertos_risc_v_trap_handler)
 #APP
# 132 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_sys.c" 1
	csrw mtvec, a5
# 0 "" 2
	.loc 1 135 12
 #NO_APP
	li	a5,0
	.loc 1 136 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
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
	.loc 1 139 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 140 5
	call	bl_sys_em_config
	.loc 1 142 12
	li	a5,0
	.loc 1 143 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	bl_sys_init, .-bl_sys_init
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2cd
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x2b
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x6d
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.4byte	0x2b
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
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x1b
	.byte	0x2
	.4byte	0x97
	.uleb128 0xf
	.4byte	0x4e
	.4byte	0xd2
	.uleb128 0x10
	.4byte	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	0x2b
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
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0xb2
	.byte	0x2
	.4byte	0xd2
	.uleb128 0x11
	.4byte	.LASF31
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
	.uleb128 0x12
	.4byte	0x10f
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x83
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x80
	.4byte	0xb6
	.4byte	0x135
	.uleb128 0x4
	.4byte	0x4e
	.byte	0
	.uleb128 0x13
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x255
	.byte	0xd
	.4byte	0xb6
	.4byte	0x14c
	.uleb128 0x4
	.4byte	0xf1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF26
	.2byte	0x23d
	.4byte	0xb6
	.uleb128 0x9
	.4byte	.LASF27
	.2byte	0x23f
	.4byte	0xb6
	.uleb128 0x14
	.4byte	.LASF40
	.byte	0x1
	.byte	0x8a
	.byte	0x5
	.4byte	0x7b
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x7e
	.4byte	0x7b
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ab
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x80
	.4byte	0xb6
	.4byte	0x1a4
	.uleb128 0x4
	.4byte	0x4e
	.byte	0
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x83
	.byte	0
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0x5e
	.4byte	0x7b
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1df
	.uleb128 0x15
	.4byte	.LASF32
	.byte	0x1
	.byte	0x60
	.byte	0x14
	.4byte	0x4e
	.uleb128 0x16
	.4byte	.LASF39
	.byte	0x1
	.byte	0x61
	.byte	0xe
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF33
	.byte	0x1
	.byte	0x56
	.byte	0x5
	.4byte	0x7b
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x209
	.uleb128 0x18
	.4byte	.LASF44
	.byte	0x1
	.byte	0x56
	.byte	0x1f
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF35
	.byte	0x1
	.byte	0x4d
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22e
	.uleb128 0xa
	.4byte	0x2c7
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x4f
	.byte	0
	.uleb128 0x5
	.4byte	.LASF34
	.byte	0x42
	.4byte	0x7b
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x255
	.uleb128 0xa
	.4byte	0x2c7
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x44
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF36
	.byte	0x1
	.byte	0x36
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29f
	.uleb128 0x1b
	.4byte	.LASF45
	.byte	0x4
	.byte	0x1
	.byte	0x38
	.byte	0xb
	.4byte	0x28f
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x39
	.byte	0x11
	.4byte	0xc2
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x3a
	.byte	0x12
	.4byte	0x61
	.byte	0
	.uleb128 0x1c
	.string	"mfg"
	.byte	0x1
	.byte	0x3b
	.byte	0x7
	.4byte	0x26b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x30
	.4byte	0x7b
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x2a
	.4byte	0x7b
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.string	"word"
.LASF17:
	.string	"TIMEOUT"
.LASF32:
	.string	"__LD_CONFIG_EM_SEL"
.LASF45:
	.string	"_reg_t"
.LASF35:
	.string	"bl_sys_reset_system"
.LASF7:
	.string	"short unsigned int"
.LASF26:
	.string	"GLB_SW_System_Reset"
.LASF37:
	.string	"byte"
.LASF25:
	.string	"GLB_Set_EM_Sel"
.LASF33:
	.string	"bl_sys_isxipaddr"
.LASF34:
	.string	"bl_sys_reset_por"
.LASF2:
	.string	"unsigned char"
.LASF15:
	.string	"SUCCESS"
.LASF31:
	.string	"sys_log_all_enable"
.LASF20:
	.string	"GLB_EM_8KB"
.LASF10:
	.string	"long unsigned int"
.LASF44:
	.string	"addr"
.LASF21:
	.string	"GLB_EM_16KB"
.LASF27:
	.string	"GLB_SW_POR_Reset"
.LASF28:
	.string	"freertos_risc_v_trap_handler"
.LASF46:
	.string	"__disable_irq"
.LASF12:
	.string	"unsigned int"
.LASF19:
	.string	"GLB_EM_0KB"
.LASF24:
	.string	"HBN_Aon_Pad_IeSmt_Cfg"
.LASF11:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint8_t"
.LASF30:
	.string	"bl_sys_em_config"
.LASF5:
	.string	"long int"
.LASF6:
	.string	"long long int"
.LASF39:
	.string	"em_size"
.LASF42:
	.string	"bl_sys_logall_enable"
.LASF36:
	.string	"bl_sys_mfg_config"
.LASF4:
	.string	"short int"
.LASF41:
	.string	"bl_sys_logall_disable"
.LASF43:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF22:
	.string	"GLB_EM_Type"
.LASF9:
	.string	"uint32_t"
.LASF16:
	.string	"ERROR"
.LASF14:
	.string	"char"
.LASF13:
	.string	"long double"
.LASF3:
	.string	"signed char"
.LASF29:
	.string	"bl_sys_early_init"
.LASF23:
	.string	"_Bool"
.LASF18:
	.string	"BL_Err_Type"
.LASF40:
	.string	"bl_sys_init"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_sys.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
