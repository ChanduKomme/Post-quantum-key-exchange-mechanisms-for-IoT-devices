	.file	"bl_boot2.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_boot2.c"
	.section	.text.PtTable_Update_Entry,"ax",@progbits
	.align	1
	.globl	PtTable_Update_Entry
	.type	PtTable_Update_Entry, @function
PtTable_Update_Entry:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_boot2.c"
	.loc 1 40 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	mv	a5,a1
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sb	a5,-53(s0)
	.loc 1 41 14
	sw	zero,-20(s0)
	.loc 1 49 7
	lw	a5,-64(s0)
	beq	a5,zero,.L2
	.loc 1 49 20 discriminator 1
	lw	a5,-60(s0)
	bne	a5,zero,.L3
.L2:
	.loc 1 50 16
	li	a5,5
	j	.L4
.L3:
	.loc 1 53 12
	lw	a5,-60(s0)
	sw	a5,-28(s0)
	.loc 1 54 14
	lw	a5,-60(s0)
	addi	a5,a5,16
	sw	a5,-32(s0)
	.loc 1 56 7
	lbu	a4,-53(s0)
	li	a5,2
	bne	a4,a5,.L5
	.loc 1 57 16
	li	a5,1
	j	.L4
.L5:
	.loc 1 60 7
	lbu	a5,-53(s0)
	bne	a5,zero,.L6
	.loc 1 61 18
	li	a5,57344
	sw	a5,-24(s0)
	j	.L7
.L6:
	.loc 1 63 18
	li	a5,61440
	sw	a5,-24(s0)
.L7:
	.loc 1 65 11
	sw	zero,-20(s0)
	.loc 1 65 5
	j	.L8
.L11:
	.loc 1 66 22
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	lw	a5,-32(s0)
	add	a5,a5,a4
	.loc 1 66 25
	lbu	a4,0(a5)
	.loc 1 66 41
	lw	a5,-64(s0)
	lbu	a5,0(a5)
	.loc 1 66 12
	bne	a4,a5,.L9
	.loc 1 67 30
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 67 20
	lw	a5,-32(s0)
	add	a5,a5,a4
	.loc 1 67 13
	li	a2,36
	lw	a1,-64(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 68 13
	j	.L10
.L9:
	.loc 1 65 39 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L8:
	.loc 1 65 26 discriminator 1
	lw	a5,-28(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 1 65 17 discriminator 1
	lw	a5,-20(s0)
	bltu	a5,a4,.L11
.L10:
	.loc 1 71 18
	lw	a5,-28(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 1 71 7
	lw	a5,-20(s0)
	bne	a5,a4,.L12
	.loc 1 73 19
	lw	a5,-28(s0)
	lhu	a4,6(a5)
	.loc 1 73 11
	li	a5,15
	bgtu	a4,a5,.L13
	.loc 1 74 38
	lw	a5,-28(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 1 74 30
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 74 20
	lw	a5,-32(s0)
	add	a5,a5,a4
	.loc 1 74 13
	li	a2,36
	lw	a1,-64(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 75 20
	lw	a5,-28(s0)
	lhu	a5,6(a5)
	.loc 1 75 30
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-28(s0)
	sh	a4,6(a5)
	j	.L12
.L13:
	.loc 1 77 20
	li	a5,3
	j	.L4
.L12:
	.loc 1 83 12
	lw	a5,-28(s0)
	lw	a5,8(a5)
	.loc 1 83 17
	addi	a4,a5,1
	lw	a5,-28(s0)
	sw	a4,8(a5)
	.loc 1 84 20
	li	a1,12
	lw	a0,-28(s0)
	call	BFLB_Soft_CRC32
	mv	a4,a0
	.loc 1 84 19 discriminator 1
	lw	a5,-28(s0)
	sw	a4,12(a5)
	.loc 1 87 23
	lw	a5,-28(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 1 87 15
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	sw	a5,-36(s0)
	.loc 1 88 25
	lw	a4,-32(s0)
	.loc 1 88 44
	lw	a5,-36(s0)
	add	a5,a4,a5
	.loc 1 88 11
	sw	a5,-40(s0)
	.loc 1 89 13
	lw	a1,-36(s0)
	lw	a0,-32(s0)
	call	BFLB_Soft_CRC32
	mv	a4,a0
	.loc 1 89 12 discriminator 1
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 93 67
	lw	a5,-36(s0)
	addi	a5,a5,20
	.loc 1 93 9
	mv	a1,a5
	lw	a0,-24(s0)
	call	bl_flash_erase
	mv	a5,a0
	.loc 1 93 8 discriminator 1
	sb	a5,-41(s0)
	.loc 1 94 7
	lbu	a5,-41(s0)
	beq	a5,zero,.L14
	.loc 1 96 16
	li	a5,7
	j	.L4
.L14:
	.loc 1 99 9
	li	a2,596
	lw	a1,-60(s0)
	lw	a0,-24(s0)
	call	bl_flash_write
	mv	a5,a0
	.loc 1 99 8 discriminator 1
	sb	a5,-41(s0)
	.loc 1 100 7
	lbu	a5,-41(s0)
	beq	a5,zero,.L15
	.loc 1 102 16
	li	a5,7
	j	.L4
.L15:
	.loc 1 105 12
	li	a5,0
.L4:
	.loc 1 106 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	PtTable_Update_Entry, .-PtTable_Update_Entry
	.section	.text.PtTable_Get_Active_Entries,"ax",@progbits
	.align	1
	.globl	PtTable_Get_Active_Entries
	.type	PtTable_Get_Active_Entries, @function
PtTable_Get_Active_Entries:
.LFB9:
	.loc 1 111 1
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
	sw	a2,-44(s0)
	sb	a5,-37(s0)
	.loc 1 112 14
	sw	zero,-20(s0)
	.loc 1 114 7
	lw	a5,-36(s0)
	beq	a5,zero,.L17
	.loc 1 114 20 discriminator 1
	lw	a5,-44(s0)
	bne	a5,zero,.L18
.L17:
	.loc 1 115 16
	li	a5,5
	j	.L19
.L18:
	.loc 1 117 11
	sw	zero,-20(s0)
	.loc 1 117 5
	j	.L20
.L22:
	.loc 1 118 34
	lw	a3,-36(s0)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a5,16(a5)
	.loc 1 118 12
	lbu	a4,-37(s0)
	bne	a4,a5,.L21
	.loc 1 119 28
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	addi	a5,a5,16
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 1 119 13
	li	a2,36
	mv	a1,a5
	lw	a0,-44(s0)
	call	memcpy
	.loc 1 120 20
	li	a5,0
	j	.L19
.L21:
	.loc 1 117 47 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L20:
	.loc 1 117 35 discriminator 1
	lw	a5,-36(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 1 117 17 discriminator 1
	lw	a5,-20(s0)
	bltu	a5,a4,.L22
	.loc 1 123 12
	li	a5,2
.L19:
	.loc 1 124 1
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
.LFE9:
	.size	PtTable_Get_Active_Entries, .-PtTable_Get_Active_Entries
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sflash.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_boot2.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_flash.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/soft_crc/softcrc.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x836
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x12
	.4byte	.LASF139
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x14
	.byte	0x4
	.uleb128 0x10
	.4byte	0x84
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x9
	.4byte	0x5a
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.4byte	0xd5
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x1b
	.byte	0x2
	.4byte	0xb6
	.uleb128 0xa
	.4byte	0xaa
	.4byte	0xf1
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x54
	.byte	0x5
	.byte	0x39
	.4byte	0x4a2
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x5
	.byte	0x3a
	.byte	0xd
	.4byte	0x92
	.byte	0
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x5
	.byte	0x3b
	.byte	0xd
	.4byte	0x92
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x5
	.byte	0x3c
	.byte	0xd
	.4byte	0x92
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x5
	.byte	0x3d
	.byte	0xd
	.4byte	0x92
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x5
	.byte	0x3e
	.byte	0xd
	.4byte	0x92
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x5
	.byte	0x3f
	.byte	0xd
	.4byte	0x92
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x5
	.byte	0x40
	.byte	0xd
	.4byte	0x92
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x5
	.byte	0x41
	.byte	0xd
	.4byte	0x92
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x5
	.byte	0x42
	.byte	0xd
	.4byte	0x92
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x5
	.byte	0x43
	.byte	0xd
	.4byte	0x92
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x5
	.byte	0x44
	.byte	0xd
	.4byte	0x92
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x5
	.byte	0x45
	.byte	0xd
	.4byte	0x92
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x5
	.byte	0x46
	.byte	0xd
	.4byte	0x92
	.byte	0xc
	.uleb128 0xc
	.string	"mid"
	.byte	0x5
	.byte	0x47
	.byte	0xd
	.4byte	0x92
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x5
	.byte	0x48
	.byte	0xe
	.4byte	0x9e
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x5
	.byte	0x49
	.byte	0xd
	.4byte	0x92
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x5
	.byte	0x4a
	.byte	0xd
	.4byte	0x92
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x5
	.byte	0x4b
	.byte	0xd
	.4byte	0x92
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x5
	.byte	0x4c
	.byte	0xd
	.4byte	0x92
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x5
	.byte	0x4d
	.byte	0xd
	.4byte	0x92
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x5
	.byte	0x4e
	.byte	0xd
	.4byte	0x92
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x5
	.byte	0x4f
	.byte	0xd
	.4byte	0x92
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x5
	.byte	0x50
	.byte	0xd
	.4byte	0x92
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x5
	.byte	0x51
	.byte	0xd
	.4byte	0x92
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x5
	.byte	0x52
	.byte	0xd
	.4byte	0x92
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x5
	.byte	0x53
	.byte	0xd
	.4byte	0x92
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x5
	.byte	0x54
	.byte	0xd
	.4byte	0x92
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x5
	.byte	0x55
	.byte	0xd
	.4byte	0x92
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x5
	.byte	0x56
	.byte	0xd
	.4byte	0x92
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x5
	.byte	0x57
	.byte	0xd
	.4byte	0x92
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x5
	.byte	0x58
	.byte	0xd
	.4byte	0x92
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.4byte	0x92
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x5
	.byte	0x5a
	.byte	0xd
	.4byte	0x92
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x5
	.byte	0x5b
	.byte	0xd
	.4byte	0x92
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x5
	.byte	0x5c
	.byte	0xd
	.4byte	0x92
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x5
	.byte	0x5d
	.byte	0xd
	.4byte	0x92
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x5
	.byte	0x5e
	.byte	0xd
	.4byte	0x92
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x5
	.byte	0x5f
	.byte	0xd
	.4byte	0x92
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x5
	.byte	0x60
	.byte	0xd
	.4byte	0x92
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x5
	.byte	0x61
	.byte	0xd
	.4byte	0x92
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x5
	.byte	0x62
	.byte	0xd
	.4byte	0x92
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x5
	.byte	0x63
	.byte	0xd
	.4byte	0x92
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x5
	.byte	0x64
	.byte	0xd
	.4byte	0x92
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x5
	.byte	0x65
	.byte	0xd
	.4byte	0x92
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x5
	.byte	0x66
	.byte	0xd
	.4byte	0x92
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x5
	.byte	0x67
	.byte	0xd
	.4byte	0x92
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x5
	.byte	0x68
	.byte	0xd
	.4byte	0x92
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x5
	.byte	0x69
	.byte	0xd
	.4byte	0x92
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x5
	.byte	0x6a
	.byte	0xd
	.4byte	0x92
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x5
	.byte	0x6b
	.byte	0xd
	.4byte	0x92
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x5
	.byte	0x6c
	.byte	0xd
	.4byte	0x92
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x5
	.byte	0x6d
	.byte	0xd
	.4byte	0x4a2
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x5
	.byte	0x6e
	.byte	0xd
	.4byte	0x4a2
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x5
	.byte	0x6f
	.byte	0xd
	.4byte	0x92
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x5
	.byte	0x70
	.byte	0xd
	.4byte	0x92
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x5
	.byte	0x71
	.byte	0xd
	.4byte	0x92
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x5
	.byte	0x72
	.byte	0xd
	.4byte	0x92
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x5
	.byte	0x73
	.byte	0xd
	.4byte	0x92
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x5
	.byte	0x74
	.byte	0xd
	.4byte	0x92
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x5
	.byte	0x75
	.byte	0xd
	.4byte	0x92
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x5
	.byte	0x76
	.byte	0xd
	.4byte	0x92
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x5
	.byte	0x77
	.byte	0xd
	.4byte	0x92
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x5
	.byte	0x78
	.byte	0xd
	.4byte	0x92
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x5
	.byte	0x79
	.byte	0xd
	.4byte	0x92
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x5
	.byte	0x7a
	.byte	0xd
	.4byte	0x92
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x5
	.byte	0x7b
	.byte	0xe
	.4byte	0x9e
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x5
	.byte	0x7c
	.byte	0xe
	.4byte	0x9e
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x5
	.byte	0x7d
	.byte	0xe
	.4byte	0x9e
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x5
	.byte	0x7e
	.byte	0xe
	.4byte	0x9e
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x5
	.byte	0x7f
	.byte	0xe
	.4byte	0x9e
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x5
	.byte	0x80
	.byte	0xd
	.4byte	0x92
	.byte	0x52
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x5
	.byte	0x81
	.byte	0xd
	.4byte	0x92
	.byte	0x53
	.byte	0
	.uleb128 0xa
	.4byte	0x92
	.4byte	0x4b2
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0x5
	.byte	0x82
	.byte	0x1b
	.4byte	0xf1
	.uleb128 0x15
	.4byte	0x4b2
	.uleb128 0x9
	.4byte	0x5a
	.byte	0x6
	.byte	0x34
	.byte	0xe
	.4byte	0x506
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0x6
	.byte	0x3e
	.byte	0x2
	.4byte	0x4c3
	.uleb128 0x9
	.4byte	0x5a
	.byte	0x6
	.byte	0x43
	.byte	0xe
	.4byte	0x531
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0x6
	.byte	0x47
	.byte	0x2
	.4byte	0x512
	.uleb128 0x9
	.4byte	0x5a
	.byte	0x6
	.byte	0x4c
	.byte	0xe
	.4byte	0x55c
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0x6
	.byte	0x50
	.byte	0x2
	.4byte	0x53d
	.uleb128 0xe
	.byte	0x10
	.byte	0x6
	.byte	0x55
	.4byte	0x5b2
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0x6
	.byte	0x56
	.byte	0xe
	.4byte	0xaa
	.byte	0
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0x6
	.byte	0x57
	.byte	0xe
	.4byte	0x9e
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0x6
	.byte	0x58
	.byte	0xe
	.4byte	0x9e
	.byte	0x6
	.uleb128 0xc
	.string	"age"
	.byte	0x6
	.byte	0x59
	.byte	0xe
	.4byte	0xaa
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0x6
	.byte	0x5a
	.byte	0xe
	.4byte	0xaa
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0x6
	.byte	0x5b
	.byte	0x2
	.4byte	0x568
	.uleb128 0xe
	.byte	0x24
	.byte	0x6
	.byte	0x60
	.4byte	0x62f
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x6
	.byte	0x61
	.byte	0xd
	.4byte	0x92
	.byte	0
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x6
	.byte	0x62
	.byte	0xd
	.4byte	0x92
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0x6
	.byte	0x63
	.byte	0xd
	.4byte	0x92
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0x6
	.byte	0x64
	.byte	0xd
	.4byte	0x62f
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0x6
	.byte	0x65
	.byte	0xe
	.4byte	0xe1
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0x6
	.byte	0x66
	.byte	0xe
	.4byte	0xe1
	.byte	0x14
	.uleb128 0xc
	.string	"len"
	.byte	0x6
	.byte	0x67
	.byte	0xe
	.4byte	0xaa
	.byte	0x1c
	.uleb128 0xc
	.string	"age"
	.byte	0x6
	.byte	0x68
	.byte	0xe
	.4byte	0xaa
	.byte	0x20
	.byte	0
	.uleb128 0xa
	.4byte	0x92
	.4byte	0x63f
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0x6
	.byte	0x69
	.byte	0x2
	.4byte	0x5be
	.uleb128 0x16
	.2byte	0x254
	.byte	0x6
	.byte	0x6e
	.byte	0x9
	.4byte	0x67e
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0x6
	.byte	0x6f
	.byte	0x14
	.4byte	0x5b2
	.byte	0
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0x6
	.byte	0x70
	.byte	0x1a
	.4byte	0x67e
	.byte	0x10
	.uleb128 0x17
	.4byte	.LASF114
	.byte	0x6
	.byte	0x71
	.byte	0xe
	.4byte	0xaa
	.2byte	0x250
	.byte	0
	.uleb128 0xa
	.4byte	0x63f
	.4byte	0x68e
	.uleb128 0xb
	.4byte	0x3e
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0x6
	.byte	0x72
	.byte	0x2
	.4byte	0x64b
	.uleb128 0x6
	.4byte	0x92
	.uleb128 0xd
	.4byte	.LASF126
	.byte	0x7
	.byte	0x21
	.byte	0x5
	.4byte	0x2b
	.4byte	0x6bf
	.uleb128 0x5
	.4byte	0xaa
	.uleb128 0x5
	.4byte	0x69a
	.uleb128 0x5
	.4byte	0x2b
	.byte	0
	.uleb128 0xd
	.4byte	.LASF127
	.byte	0x7
	.byte	0x20
	.byte	0x5
	.4byte	0x2b
	.4byte	0x6da
	.uleb128 0x5
	.4byte	0xaa
	.uleb128 0x5
	.4byte	0x2b
	.byte	0
	.uleb128 0xd
	.4byte	.LASF128
	.byte	0x8
	.byte	0x7
	.byte	0xa
	.4byte	0xaa
	.4byte	0x6f5
	.uleb128 0x5
	.4byte	0x84
	.uleb128 0x5
	.4byte	0xaa
	.byte	0
	.uleb128 0xd
	.4byte	.LASF129
	.byte	0x9
	.byte	0x1f
	.byte	0x8
	.4byte	0x84
	.4byte	0x715
	.uleb128 0x5
	.4byte	0x86
	.uleb128 0x5
	.4byte	0x71a
	.uleb128 0x5
	.4byte	0x32
	.byte	0
	.uleb128 0x6
	.4byte	0x71f
	.uleb128 0x10
	.4byte	0x715
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF132
	.byte	0x6c
	.4byte	0x506
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x76f
	.uleb128 0x7
	.4byte	.LASF130
	.byte	0x6c
	.byte	0x45
	.4byte	0x76f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF116
	.byte	0x6d
	.byte	0x40
	.4byte	0x55c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x7
	.4byte	.LASF131
	.byte	0x6e
	.byte	0x43
	.4byte	0x774
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.string	"i"
	.byte	0x70
	.byte	0xe
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0x68e
	.uleb128 0x6
	.4byte	0x63f
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0x24
	.4byte	0x506
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x82a
	.uleb128 0x7
	.4byte	.LASF134
	.byte	0x24
	.byte	0x53
	.4byte	0x82a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.4byte	.LASF135
	.byte	0x25
	.byte	0x41
	.4byte	0x531
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x7
	.4byte	.LASF130
	.byte	0x26
	.byte	0x47
	.4byte	0x76f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.4byte	.LASF131
	.byte	0x27
	.byte	0x47
	.4byte	0x774
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.string	"i"
	.byte	0x29
	.byte	0xe
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"ret"
	.byte	0x2a
	.byte	0x11
	.4byte	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x8
	.4byte	.LASF136
	.byte	0x2b
	.byte	0xe
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF137
	.byte	0x2c
	.byte	0xe
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF123
	.byte	0x2d
	.byte	0x15
	.4byte	0x82f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	.LASF124
	.byte	0x2e
	.byte	0x1b
	.4byte	0x774
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.4byte	.LASF138
	.byte	0x2f
	.byte	0xf
	.4byte	0x834
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.4byte	0x4be
	.uleb128 0x6
	.4byte	0x5b2
	.uleb128 0x6
	.4byte	0xaa
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
	.uleb128 0x49
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x21
	.sleb128 20
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
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
	.section	.debug_str,"MS",@progbits,1
.LASF118:
	.string	"activeIndex"
.LASF81:
	.string	"deBurstWrapCmd"
.LASF38:
	.string	"blk64EraseCmd"
.LASF13:
	.string	"size_t"
.LASF114:
	.string	"crc32"
.LASF46:
	.string	"qpiFrDmyClk"
.LASF103:
	.string	"PT_TABLE_ID_0"
.LASF104:
	.string	"PT_TABLE_ID_1"
.LASF128:
	.string	"BFLB_Soft_CRC32"
.LASF123:
	.string	"ptTable"
.LASF66:
	.string	"wrEnableReadRegLen"
.LASF135:
	.string	"targetTableID"
.LASF49:
	.string	"fastReadDioCmd"
.LASF116:
	.string	"type"
.LASF90:
	.string	"pdDelay"
.LASF62:
	.string	"wrEnableBit"
.LASF52:
	.string	"frQoDmyClk"
.LASF109:
	.string	"PT_ENTRY_MAX"
.LASF11:
	.string	"long long unsigned int"
.LASF47:
	.string	"fastReadDoCmd"
.LASF24:
	.string	"clkInvert"
.LASF22:
	.string	"cReadSupport"
.LASF134:
	.string	"pFlashCfg"
.LASF58:
	.string	"writeVregEnableCmd"
.LASF61:
	.string	"busyIndex"
.LASF73:
	.string	"enterQpi"
.LASF3:
	.string	"long long int"
.LASF5:
	.string	"signed char"
.LASF29:
	.string	"jedecIdCmd"
.LASF32:
	.string	"qpiJedecIdCmdDmyClk"
.LASF77:
	.string	"burstWrapCmd"
.LASF121:
	.string	"maxLen"
.LASF20:
	.string	"BL_Err_Type"
.LASF9:
	.string	"long int"
.LASF96:
	.string	"PT_ERROR_ENTRY_UPDATE_FAIL"
.LASF92:
	.string	"SPI_Flash_Cfg_Type"
.LASF69:
	.string	"releasePowerDown"
.LASF55:
	.string	"qpiFastReadQioCmd"
.LASF25:
	.string	"resetEnCmd"
.LASF72:
	.string	"writeRegCmd"
.LASF93:
	.string	"PT_ERROR_SUCCESS"
.LASF74:
	.string	"exitQpi"
.LASF23:
	.string	"clkDelay"
.LASF125:
	.string	"PtTable_Stuff_Config"
.LASF51:
	.string	"fastReadQoCmd"
.LASF19:
	.string	"TIMEOUT"
.LASF79:
	.string	"burstWrapDataMode"
.LASF99:
	.string	"PT_ERROR_FALSH_READ"
.LASF2:
	.string	"unsigned int"
.LASF15:
	.string	"uint16_t"
.LASF84:
	.string	"deBurstWrapData"
.LASF94:
	.string	"PT_ERROR_TABLE_NOT_VALID"
.LASF26:
	.string	"resetCmd"
.LASF10:
	.string	"long unsigned int"
.LASF91:
	.string	"qeData"
.LASF124:
	.string	"ptEntries"
.LASF119:
	.string	"name"
.LASF115:
	.string	"PtTable_Config"
.LASF33:
	.string	"sectorSize"
.LASF31:
	.string	"qpiJedecIdCmd"
.LASF117:
	.string	"device"
.LASF41:
	.string	"qpageProgramCmd"
.LASF122:
	.string	"PtTable_Entry_Config"
.LASF111:
	.string	"magicCode"
.LASF65:
	.string	"wrEnableWriteRegLen"
.LASF37:
	.string	"blk32EraseCmd"
.LASF120:
	.string	"Address"
.LASF21:
	.string	"ioMode"
.LASF57:
	.string	"qpiPageProgramCmd"
.LASF63:
	.string	"qeBit"
.LASF45:
	.string	"qpiFastReadCmd"
.LASF56:
	.string	"qpiFrQioDmyClk"
.LASF112:
	.string	"version"
.LASF102:
	.string	"PtTable_Error_Type"
.LASF28:
	.string	"resetCreadCmdSize"
.LASF68:
	.string	"qeReadRegLen"
.LASF70:
	.string	"busyReadRegLen"
.LASF18:
	.string	"ERROR"
.LASF85:
	.string	"timeEsector"
.LASF97:
	.string	"PT_ERROR_CRC32"
.LASF75:
	.string	"cReadMode"
.LASF82:
	.string	"deBurstWrapCmdDmyClk"
.LASF98:
	.string	"PT_ERROR_PARAMETER"
.LASF80:
	.string	"burstWrapData"
.LASF64:
	.string	"busyBit"
.LASF110:
	.string	"PtTable_Entry_Type"
.LASF105:
	.string	"PT_TABLE_ID_INVALID"
.LASF106:
	.string	"PtTable_ID_Type"
.LASF6:
	.string	"unsigned char"
.LASF60:
	.string	"qeIndex"
.LASF7:
	.string	"short int"
.LASF127:
	.string	"bl_flash_erase"
.LASF43:
	.string	"fastReadCmd"
.LASF34:
	.string	"pageSize"
.LASF39:
	.string	"writeEnableCmd"
.LASF54:
	.string	"frQioDmyClk"
.LASF48:
	.string	"frDoDmyClk"
.LASF107:
	.string	"PT_ENTRY_FW_CPU0"
.LASF108:
	.string	"PT_ENTRY_FW_CPU1"
.LASF40:
	.string	"pageProgramCmd"
.LASF67:
	.string	"qeWriteRegLen"
.LASF27:
	.string	"resetCreadCmd"
.LASF4:
	.string	"long double"
.LASF86:
	.string	"timeE32k"
.LASF12:
	.string	"char"
.LASF59:
	.string	"wrEnableIndex"
.LASF50:
	.string	"frDioDmyClk"
.LASF44:
	.string	"frDmyClk"
.LASF101:
	.string	"PT_ERROR_FALSH_ERASE"
.LASF100:
	.string	"PT_ERROR_FALSH_WRITE"
.LASF138:
	.string	"pCrc32"
.LASF132:
	.string	"PtTable_Get_Active_Entries"
.LASF87:
	.string	"timeE64k"
.LASF30:
	.string	"jedecIdCmdDmyClk"
.LASF129:
	.string	"memcpy"
.LASF76:
	.string	"cRExit"
.LASF113:
	.string	"entryCnt"
.LASF8:
	.string	"short unsigned int"
.LASF131:
	.string	"ptEntry"
.LASF95:
	.string	"PT_ERROR_ENTRY_NOT_FOUND"
.LASF36:
	.string	"sectorEraseCmd"
.LASF53:
	.string	"fastReadQioCmd"
.LASF16:
	.string	"uint32_t"
.LASF35:
	.string	"chipEraseCmd"
.LASF89:
	.string	"timeCe"
.LASF137:
	.string	"entriesLen"
.LASF83:
	.string	"deBurstWrapDataMode"
.LASF78:
	.string	"burstWrapCmdDmyClk"
.LASF14:
	.string	"uint8_t"
.LASF17:
	.string	"SUCCESS"
.LASF130:
	.string	"ptStuff"
.LASF136:
	.string	"writeAddr"
.LASF139:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF133:
	.string	"PtTable_Update_Entry"
.LASF88:
	.string	"timePagePgm"
.LASF71:
	.string	"readRegCmd"
.LASF42:
	.string	"qppAddrMode"
.LASF126:
	.string	"bl_flash_write"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_boot2.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
