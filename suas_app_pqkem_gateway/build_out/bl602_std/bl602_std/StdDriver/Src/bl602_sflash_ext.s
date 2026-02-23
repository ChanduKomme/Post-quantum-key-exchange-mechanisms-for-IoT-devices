	.file	"bl602_sflash_ext.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sflash_ext.c"
	.section	.tcm_code,"ax",@progbits
	.align	1
	.globl	SFlash_Restore_From_Powerdown
	.type	SFlash_Restore_From_Powerdown, @function
SFlash_Restore_From_Powerdown:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sflash_ext.c"
	.loc 1 100 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 1 101 17
	sb	zero,-17(s0)
	.loc 1 102 14
	sw	zero,-24(s0)
	.loc 1 104 29
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 104 13
	andi	a5,a5,15
	sb	a5,-18(s0)
	.loc 1 107 5
	lw	a0,-36(s0)
	call	SFlash_Releae_Powerdown
	.loc 1 108 5
	li	a0,120
	call	BL602_Delay_US
	.loc 1 110 5
	addi	a5,s0,-24
	mv	a1,a5
	lw	a0,-36(s0)
	call	SFlash_GetJedecId
	.loc 1 112 7
	lbu	a4,-18(s0)
	li	a5,2
	beq	a4,a5,.L2
	.loc 1 112 31 discriminator 1
	lbu	a4,-18(s0)
	li	a5,4
	bne	a4,a5,.L3
.L2:
	.loc 1 113 9
	lw	a0,-36(s0)
	call	SFlash_Qspi_Enable
.L3:
	.loc 1 116 19
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 116 31
	srli	a5,a5,4
	andi	a5,a5,0xff
	andi	a5,a5,1
	.loc 1 116 7
	beq	a5,zero,.L4
	.loc 1 118 9
	li	a0,0
	call	L1C_Set_Wrap
	j	.L5
.L4:
	.loc 1 121 9
	li	a0,1
	call	L1C_Set_Wrap
	.loc 1 123 9
	lw	a0,-36(s0)
	call	SFlash_Write_Enable
	.loc 1 124 9
	lw	a0,-36(s0)
	call	SFlash_SetBurstWrap
.L5:
	.loc 1 127 7
	lbu	a5,-37(s0)
	beq	a5,zero,.L6
	.loc 1 128 14
	addi	a4,s0,-32
	lbu	a1,-18(s0)
	li	a5,8
	li	a3,0
	li	a2,1
	lw	a0,-36(s0)
	call	SFlash_Read
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 129 14
	lbu	a5,-18(s0)
	li	a4,32
	li	a3,0
	li	a2,1
	mv	a1,a5
	lw	a0,-36(s0)
	call	SFlash_Set_IDbus_Cfg
	mv	a5,a0
	sb	a5,-17(s0)
	j	.L7
.L6:
	.loc 1 131 14
	lbu	a5,-18(s0)
	li	a4,32
	li	a3,0
	li	a2,0
	mv	a1,a5
	lw	a0,-36(s0)
	call	SFlash_Set_IDbus_Cfg
	mv	a5,a0
	sb	a5,-17(s0)
.L7:
	.loc 1 133 12
	lbu	a5,-17(s0)
	.loc 1 134 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	SFlash_Restore_From_Powerdown, .-SFlash_Restore_From_Powerdown
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sf_ctrl.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sflash.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_l1c.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x613
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xd
	.4byte	.LASF114
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
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x2b
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x66
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x79
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x8
	.4byte	0x2b
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xc2
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0xa3
	.uleb128 0x8
	.4byte	0x2b
	.byte	0x3
	.byte	0x21
	.byte	0x1
	.4byte	0xe7
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x3
	.byte	0x24
	.byte	0x2
	.4byte	0xce
	.uleb128 0x8
	.4byte	0x2b
	.byte	0x4
	.byte	0x62
	.byte	0xe
	.4byte	0x11e
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x4
	.byte	0x68
	.byte	0x2
	.4byte	0xf3
	.uleb128 0xf
	.byte	0x54
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.4byte	0x495
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x3a
	.byte	0xd
	.4byte	0x4e
	.byte	0
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x3b
	.byte	0xd
	.4byte	0x4e
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x3c
	.byte	0xd
	.4byte	0x4e
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x3d
	.byte	0xd
	.4byte	0x4e
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x3e
	.byte	0xd
	.4byte	0x4e
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x3f
	.byte	0xd
	.4byte	0x4e
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x40
	.byte	0xd
	.4byte	0x4e
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x41
	.byte	0xd
	.4byte	0x4e
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x42
	.byte	0xd
	.4byte	0x4e
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x43
	.byte	0xd
	.4byte	0x4e
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x44
	.byte	0xd
	.4byte	0x4e
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x45
	.byte	0xd
	.4byte	0x4e
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x46
	.byte	0xd
	.4byte	0x4e
	.byte	0xc
	.uleb128 0x10
	.string	"mid"
	.byte	0x5
	.byte	0x47
	.byte	0xd
	.4byte	0x4e
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x48
	.byte	0xe
	.4byte	0x5a
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x49
	.byte	0xd
	.4byte	0x4e
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x4a
	.byte	0xd
	.4byte	0x4e
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x4b
	.byte	0xd
	.4byte	0x4e
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x4c
	.byte	0xd
	.4byte	0x4e
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x4d
	.byte	0xd
	.4byte	0x4e
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x4e
	.byte	0xd
	.4byte	0x4e
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x4f
	.byte	0xd
	.4byte	0x4e
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x50
	.byte	0xd
	.4byte	0x4e
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x51
	.byte	0xd
	.4byte	0x4e
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x52
	.byte	0xd
	.4byte	0x4e
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x53
	.byte	0xd
	.4byte	0x4e
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x54
	.byte	0xd
	.4byte	0x4e
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x55
	.byte	0xd
	.4byte	0x4e
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x56
	.byte	0xd
	.4byte	0x4e
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x57
	.byte	0xd
	.4byte	0x4e
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x58
	.byte	0xd
	.4byte	0x4e
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x59
	.byte	0xd
	.4byte	0x4e
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x5a
	.byte	0xd
	.4byte	0x4e
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x5b
	.byte	0xd
	.4byte	0x4e
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x5c
	.byte	0xd
	.4byte	0x4e
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x5d
	.byte	0xd
	.4byte	0x4e
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x5e
	.byte	0xd
	.4byte	0x4e
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x5f
	.byte	0xd
	.4byte	0x4e
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x60
	.byte	0xd
	.4byte	0x4e
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x61
	.byte	0xd
	.4byte	0x4e
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x62
	.byte	0xd
	.4byte	0x4e
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x63
	.byte	0xd
	.4byte	0x4e
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x64
	.byte	0xd
	.4byte	0x4e
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x65
	.byte	0xd
	.4byte	0x4e
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x66
	.byte	0xd
	.4byte	0x4e
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x67
	.byte	0xd
	.4byte	0x4e
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x68
	.byte	0xd
	.4byte	0x4e
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x69
	.byte	0xd
	.4byte	0x4e
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x6a
	.byte	0xd
	.4byte	0x4e
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x6b
	.byte	0xd
	.4byte	0x4e
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x6c
	.byte	0xd
	.4byte	0x4e
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x6d
	.byte	0xd
	.4byte	0x495
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x6e
	.byte	0xd
	.4byte	0x495
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x6f
	.byte	0xd
	.4byte	0x4e
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x70
	.byte	0xd
	.4byte	0x4e
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x71
	.byte	0xd
	.4byte	0x4e
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x72
	.byte	0xd
	.4byte	0x4e
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x73
	.byte	0xd
	.4byte	0x4e
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x74
	.byte	0xd
	.4byte	0x4e
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x75
	.byte	0xd
	.4byte	0x4e
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x76
	.byte	0xd
	.4byte	0x4e
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x77
	.byte	0xd
	.4byte	0x4e
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x78
	.byte	0xd
	.4byte	0x4e
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x79
	.byte	0xd
	.4byte	0x4e
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x7a
	.byte	0xd
	.4byte	0x4e
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x7b
	.byte	0xe
	.4byte	0x5a
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x7c
	.byte	0xe
	.4byte	0x5a
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x7d
	.byte	0xe
	.4byte	0x5a
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x7e
	.byte	0xe
	.4byte	0x5a
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x7f
	.byte	0xe
	.4byte	0x5a
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x80
	.byte	0xd
	.4byte	0x4e
	.byte	0x52
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x81
	.byte	0xd
	.4byte	0x4e
	.byte	0x53
	.byte	0
	.uleb128 0x11
	.4byte	0x4e
	.4byte	0x4a5
	.uleb128 0xa
	.4byte	0x8e
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF100
	.byte	0x5
	.byte	0x82
	.byte	0x1b
	.4byte	0x12a
	.uleb128 0x6
	.4byte	.LASF101
	.byte	0x5
	.byte	0xaf
	.4byte	0xc2
	.4byte	0x4da
	.uleb128 0x2
	.4byte	0x4da
	.uleb128 0x2
	.4byte	0x11e
	.uleb128 0x2
	.4byte	0x4e
	.uleb128 0x2
	.4byte	0x6d
	.uleb128 0x2
	.4byte	0x6d
	.byte	0
	.uleb128 0xb
	.4byte	0x4a5
	.uleb128 0x6
	.4byte	.LASF102
	.byte	0x5
	.byte	0xb9
	.4byte	0xc2
	.4byte	0x50d
	.uleb128 0x2
	.4byte	0x4da
	.uleb128 0x2
	.4byte	0x11e
	.uleb128 0x2
	.4byte	0x4e
	.uleb128 0x2
	.4byte	0x6d
	.uleb128 0x2
	.4byte	0x50d
	.uleb128 0x2
	.4byte	0x6d
	.byte	0
	.uleb128 0xb
	.4byte	0x4e
	.uleb128 0x7
	.4byte	.LASF106
	.byte	0x5
	.byte	0xab
	.4byte	0x523
	.uleb128 0x2
	.4byte	0x4da
	.byte	0
	.uleb128 0x6
	.4byte	.LASF103
	.byte	0x5
	.byte	0x9d
	.4byte	0xc2
	.4byte	0x538
	.uleb128 0x2
	.4byte	0x4da
	.byte	0
	.uleb128 0x6
	.4byte	.LASF104
	.byte	0x6
	.byte	0xa0
	.4byte	0xc2
	.4byte	0x54d
	.uleb128 0x2
	.4byte	0xe7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF105
	.byte	0x5
	.byte	0x9e
	.4byte	0xc2
	.4byte	0x562
	.uleb128 0x2
	.4byte	0x4da
	.byte	0
	.uleb128 0x7
	.4byte	.LASF107
	.byte	0x5
	.byte	0xa7
	.4byte	0x578
	.uleb128 0x2
	.4byte	0x4da
	.uleb128 0x2
	.4byte	0x50d
	.byte	0
	.uleb128 0x7
	.4byte	.LASF108
	.byte	0x3
	.byte	0x88
	.4byte	0x589
	.uleb128 0x2
	.4byte	0x6d
	.byte	0
	.uleb128 0x7
	.4byte	.LASF109
	.byte	0x5
	.byte	0xaa
	.4byte	0x59a
	.uleb128 0x2
	.4byte	0x4da
	.byte	0
	.uleb128 0x12
	.4byte	.LASF115
	.byte	0x1
	.byte	0x63
	.byte	0x33
	.4byte	0xc2
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x60a
	.uleb128 0xc
	.4byte	.LASF110
	.byte	0x63
	.byte	0x65
	.4byte	0x4da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF111
	.byte	0x63
	.byte	0x77
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x65
	.byte	0x11
	.4byte	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x66
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"tmp"
	.byte	0x1
	.byte	0x67
	.byte	0xd
	.4byte	0x60a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x68
	.byte	0xd
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x14
	.4byte	0x4e
	.uleb128 0xa
	.4byte	0x8e
	.byte	0x7
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
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x18
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.string	"jedecIdCmdDmyClk"
.LASF79:
	.string	"readRegCmd"
.LASF104:
	.string	"L1C_Set_Wrap"
.LASF83:
	.string	"cReadMode"
.LASF25:
	.string	"SF_CTRL_QO_MODE"
.LASF70:
	.string	"wrEnableBit"
.LASF78:
	.string	"busyReadRegLen"
.LASF4:
	.string	"short int"
.LASF111:
	.string	"flashContRead"
.LASF87:
	.string	"burstWrapDataMode"
.LASF76:
	.string	"qeReadRegLen"
.LASF66:
	.string	"writeVregEnableCmd"
.LASF59:
	.string	"fastReadQoCmd"
.LASF37:
	.string	"jedecIdCmd"
.LASF52:
	.string	"frDmyClk"
.LASF48:
	.string	"pageProgramCmd"
.LASF99:
	.string	"qeData"
.LASF51:
	.string	"fastReadCmd"
.LASF7:
	.string	"uint8_t"
.LASF29:
	.string	"ioMode"
.LASF28:
	.string	"SF_Ctrl_IO_Type"
.LASF30:
	.string	"cReadSupport"
.LASF113:
	.string	"jdecId"
.LASF53:
	.string	"qpiFastReadCmd"
.LASF20:
	.string	"DISABLE"
.LASF63:
	.string	"qpiFastReadQioCmd"
.LASF108:
	.string	"BL602_Delay_US"
.LASF6:
	.string	"long long int"
.LASF57:
	.string	"fastReadDioCmd"
.LASF18:
	.string	"TIMEOUT"
.LASF5:
	.string	"long int"
.LASF19:
	.string	"BL_Err_Type"
.LASF69:
	.string	"busyIndex"
.LASF73:
	.string	"wrEnableWriteRegLen"
.LASF26:
	.string	"SF_CTRL_DIO_MODE"
.LASF84:
	.string	"cRExit"
.LASF72:
	.string	"busyBit"
.LASF103:
	.string	"SFlash_Write_Enable"
.LASF62:
	.string	"frQioDmyClk"
.LASF17:
	.string	"ERROR"
.LASF101:
	.string	"SFlash_Set_IDbus_Cfg"
.LASF94:
	.string	"timeE32k"
.LASF96:
	.string	"timePagePgm"
.LASF43:
	.string	"chipEraseCmd"
.LASF64:
	.string	"qpiFrQioDmyClk"
.LASF86:
	.string	"burstWrapCmdDmyClk"
.LASF14:
	.string	"long double"
.LASF35:
	.string	"resetCreadCmd"
.LASF2:
	.string	"unsigned char"
.LASF54:
	.string	"qpiFrDmyClk"
.LASF31:
	.string	"clkDelay"
.LASF24:
	.string	"SF_CTRL_DO_MODE"
.LASF100:
	.string	"SPI_Flash_Cfg_Type"
.LASF40:
	.string	"qpiJedecIdCmdDmyClk"
.LASF3:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF13:
	.string	"unsigned int"
.LASF41:
	.string	"sectorSize"
.LASF8:
	.string	"uint16_t"
.LASF45:
	.string	"blk32EraseCmd"
.LASF39:
	.string	"qpiJedecIdCmd"
.LASF105:
	.string	"SFlash_Qspi_Enable"
.LASF67:
	.string	"wrEnableIndex"
.LASF16:
	.string	"SUCCESS"
.LASF68:
	.string	"qeIndex"
.LASF55:
	.string	"fastReadDoCmd"
.LASF33:
	.string	"resetEnCmd"
.LASF95:
	.string	"timeE64k"
.LASF15:
	.string	"char"
.LASF92:
	.string	"deBurstWrapData"
.LASF47:
	.string	"writeEnableCmd"
.LASF80:
	.string	"writeRegCmd"
.LASF9:
	.string	"short unsigned int"
.LASF81:
	.string	"enterQpi"
.LASF114:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF97:
	.string	"timeCe"
.LASF107:
	.string	"SFlash_GetJedecId"
.LASF32:
	.string	"clkInvert"
.LASF106:
	.string	"SFlash_SetBurstWrap"
.LASF75:
	.string	"qeWriteRegLen"
.LASF56:
	.string	"frDoDmyClk"
.LASF88:
	.string	"burstWrapData"
.LASF46:
	.string	"blk64EraseCmd"
.LASF93:
	.string	"timeEsector"
.LASF11:
	.string	"long unsigned int"
.LASF115:
	.string	"SFlash_Restore_From_Powerdown"
.LASF61:
	.string	"fastReadQioCmd"
.LASF36:
	.string	"resetCreadCmdSize"
.LASF110:
	.string	"pFlashCfg"
.LASF44:
	.string	"sectorEraseCmd"
.LASF23:
	.string	"SF_CTRL_NIO_MODE"
.LASF82:
	.string	"exitQpi"
.LASF102:
	.string	"SFlash_Read"
.LASF85:
	.string	"burstWrapCmd"
.LASF27:
	.string	"SF_CTRL_QIO_MODE"
.LASF50:
	.string	"qppAddrMode"
.LASF42:
	.string	"pageSize"
.LASF71:
	.string	"qeBit"
.LASF109:
	.string	"SFlash_Releae_Powerdown"
.LASF74:
	.string	"wrEnableReadRegLen"
.LASF22:
	.string	"BL_Fun_Type"
.LASF34:
	.string	"resetCmd"
.LASF91:
	.string	"deBurstWrapDataMode"
.LASF112:
	.string	"stat"
.LASF49:
	.string	"qpageProgramCmd"
.LASF65:
	.string	"qpiPageProgramCmd"
.LASF89:
	.string	"deBurstWrapCmd"
.LASF58:
	.string	"frDioDmyClk"
.LASF60:
	.string	"frQoDmyClk"
.LASF90:
	.string	"deBurstWrapCmdDmyClk"
.LASF21:
	.string	"ENABLE"
.LASF77:
	.string	"releasePowerDown"
.LASF98:
	.string	"pdDelay"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sflash_ext.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
