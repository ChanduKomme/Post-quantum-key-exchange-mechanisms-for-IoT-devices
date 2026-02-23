	.file	"bl_hbn.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_hbn.c"
	.section	.rodata
	.align	2
.LC1:
	.string	"hbn.buflen = %d\r\n"
	.align	2
.LC2:
	.string	"hbn.active = %d\r\n"
	.align	2
.LC3:
	.string	"bl_hbn.c"
	.align	2
.LC4:
	.string	"not support arg.\r\n"
	.align	2
.LC5:
	.string	"hbn gpio7.\r\n"
	.align	2
.LC6:
	.string	"hbn gpio8.\r\n"
	.align	2
.LC7:
	.string	"hbn gpio_all.\r\n"
	.align	2
.LC8:
	.string	"invalid arg.\r\n"
	.align	2
.LC0:
	.byte	0
	.zero	3
	.word	0
	.byte	0
	.byte	4
	.zero	2
	.word	0
	.byte	0
	.byte	10
	.zero	2
	.section	.text.bl_hbn_enter,"ax",@progbits
	.align	1
	.globl	bl_hbn_enter
	.type	bl_hbn_enter, @function
bl_hbn_enter:
.LFB9:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_hbn.c"
	.loc 1 43 1
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
	sw	a1,-56(s0)
	.loc 1 143 22
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	lw	a1,0(a5)
	lw	a2,4(a5)
	lw	a3,8(a5)
	lw	a4,12(a5)
	sw	a1,-36(s0)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	sw	a4,-24(s0)
	lw	a5,16(a5)
	sw	a5,-20(s0)
	.loc 1 153 8
	lw	a5,-52(s0)
	beq	a5,zero,.L2
	.loc 1 154 42
	lw	a5,-52(s0)
	lbu	a5,0(a5)
	.loc 1 154 9
	mv	a1,a5
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	.loc 1 155 42
	lw	a5,-52(s0)
	lbu	a5,1(a5)
	.loc 1 155 9
	mv	a1,a5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	.loc 1 156 41
	lw	a5,-52(s0)
	addi	a2,a5,2
	.loc 1 156 51
	lw	a5,-52(s0)
	lbu	a5,0(a5)
	.loc 1 156 9
	li	a4,0
	mv	a3,a5
	li	a1,156
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	log_buf_out
.L2:
	.loc 1 159 22
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 1 159 28
	addi	a4,a5,999
	.loc 1 159 35
	li	a5,274878464
	addi	a5,a5,-557
	mulhu	a5,a4,a5
	srli	a5,a5,6
	.loc 1 159 19
	sw	a5,-32(s0)
	.loc 1 160 14
	lw	a5,-52(s0)
	lbu	a4,0(a5)
	.loc 1 160 8
	li	a5,1
	beq	a4,a5,.L3
	.loc 1 160 36 discriminator 1
	lw	a5,-52(s0)
	lbu	a4,0(a5)
	.loc 1 160 29 discriminator 1
	li	a5,2
	beq	a4,a5,.L3
	.loc 1 161 9
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
	.loc 1 162 16
	li	a5,-1
	j	.L13
.L3:
	.loc 1 165 13
	lw	a5,-52(s0)
	lbu	a4,0(a5)
	.loc 1 165 8
	li	a5,1
	bne	a4,a5,.L5
	.loc 1 165 41 discriminator 1
	lw	a5,-52(s0)
	lbu	a4,2(a5)
	.loc 1 165 28 discriminator 1
	li	a5,7
	beq	a4,a5,.L6
	.loc 1 165 63 discriminator 2
	lw	a5,-52(s0)
	lbu	a4,2(a5)
	.loc 1 165 51 discriminator 2
	li	a5,8
	bne	a4,a5,.L5
.L6:
	.loc 1 166 21
	lw	a5,-52(s0)
	lbu	a4,2(a5)
	.loc 1 166 12
	li	a5,7
	bne	a4,a5,.L7
	.loc 1 167 13
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	printf
	.loc 1 168 30
	li	a5,1
	sb	a5,-28(s0)
	.loc 1 166 12
	j	.L9
.L7:
	.loc 1 170 13
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	printf
	.loc 1 171 30
	li	a5,2
	sb	a5,-28(s0)
	.loc 1 166 12
	j	.L9
.L5:
	.loc 1 173 21
	lw	a5,-52(s0)
	lbu	a4,0(a5)
	.loc 1 173 15
	li	a5,2
	bne	a4,a5,.L10
	.loc 1 173 48 discriminator 1
	lw	a5,-52(s0)
	lbu	a4,2(a5)
	.loc 1 173 36 discriminator 1
	li	a5,7
	bne	a4,a5,.L10
	.loc 1 173 70 discriminator 3
	lw	a5,-52(s0)
	lbu	a4,3(a5)
	.loc 1 173 58 discriminator 3
	li	a5,8
	beq	a4,a5,.L11
.L10:
	.loc 1 174 21
	lw	a5,-52(s0)
	lbu	a4,0(a5)
	.loc 1 173 81 discriminator 5
	li	a5,2
	bne	a4,a5,.L12
	.loc 1 174 48
	lw	a5,-52(s0)
	lbu	a4,2(a5)
	.loc 1 174 36
	li	a5,8
	bne	a4,a5,.L12
	.loc 1 174 70 discriminator 1
	lw	a5,-52(s0)
	lbu	a4,3(a5)
	.loc 1 174 58 discriminator 1
	li	a5,7
	bne	a4,a5,.L12
.L11:
	.loc 1 176 9
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
	.loc 1 177 26
	li	a5,3
	sb	a5,-28(s0)
	j	.L9
.L12:
	.loc 1 179 9
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	printf
	.loc 1 180 16
	li	a5,-1
	j	.L13
.L9:
	.loc 1 182 20
	call	bl_flash_get_flashCfg
	mv	a5,a0
	.loc 1 182 18 discriminator 1
	sw	a5,-24(s0)
	.loc 1 184 5
	li	a0,0
	call	HBN_Clear_IRQ
	.loc 1 185 5
	li	a0,1
	call	HBN_Clear_IRQ
	.loc 1 187 5
	addi	a5,s0,-36
	mv	a0,a5
	call	HBN_Mode_Enter
	.loc 1 188 12
	li	a5,-1
.L13:
	.loc 1 189 1
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
.LFE9:
	.size	bl_hbn_enter, .-bl_hbn_enter
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sflash.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_hbn.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_log.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_flash.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7a6
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xd
	.4byte	.LASF150
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xf
	.byte	0x4
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x10
	.4byte	0x7a
	.uleb128 0x6
	.4byte	0x81
	.uleb128 0x11
	.4byte	0x86
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x40
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0x8
	.4byte	0x90
	.4byte	0xc4
	.uleb128 0x9
	.4byte	0x6a
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	0x32
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xe3
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0xc4
	.uleb128 0x8
	.4byte	0x90
	.4byte	0xff
	.uleb128 0x9
	.4byte	0x6a
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x54
	.byte	0x4
	.byte	0x39
	.4byte	0x4af
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x4
	.byte	0x3a
	.byte	0xd
	.4byte	0x90
	.byte	0
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x4
	.byte	0x3b
	.byte	0xd
	.4byte	0x90
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x4
	.byte	0x3c
	.byte	0xd
	.4byte	0x90
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x4
	.byte	0x3d
	.byte	0xd
	.4byte	0x90
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x4
	.byte	0x3e
	.byte	0xd
	.4byte	0x90
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x4
	.byte	0x3f
	.byte	0xd
	.4byte	0x90
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x4
	.byte	0x40
	.byte	0xd
	.4byte	0x90
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x4
	.byte	0x41
	.byte	0xd
	.4byte	0x90
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x4
	.byte	0x42
	.byte	0xd
	.4byte	0x90
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x4
	.byte	0x43
	.byte	0xd
	.4byte	0x90
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x4
	.byte	0x44
	.byte	0xd
	.4byte	0x90
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x4
	.byte	0x45
	.byte	0xd
	.4byte	0x90
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x4
	.byte	0x46
	.byte	0xd
	.4byte	0x90
	.byte	0xc
	.uleb128 0xb
	.string	"mid"
	.byte	0x4
	.byte	0x47
	.4byte	0x90
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x4
	.byte	0x48
	.byte	0xe
	.4byte	0x9c
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x4
	.byte	0x49
	.byte	0xd
	.4byte	0x90
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x4
	.byte	0x4a
	.byte	0xd
	.4byte	0x90
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x4
	.byte	0x4b
	.byte	0xd
	.4byte	0x90
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x4
	.byte	0x4c
	.byte	0xd
	.4byte	0x90
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x4
	.byte	0x4d
	.byte	0xd
	.4byte	0x90
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x4
	.byte	0x4e
	.byte	0xd
	.4byte	0x90
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x4
	.byte	0x4f
	.byte	0xd
	.4byte	0x90
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x4
	.byte	0x50
	.byte	0xd
	.4byte	0x90
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x4
	.byte	0x51
	.byte	0xd
	.4byte	0x90
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x4
	.byte	0x52
	.byte	0xd
	.4byte	0x90
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x4
	.byte	0x53
	.byte	0xd
	.4byte	0x90
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x4
	.byte	0x54
	.byte	0xd
	.4byte	0x90
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x4
	.byte	0x55
	.byte	0xd
	.4byte	0x90
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x4
	.byte	0x56
	.byte	0xd
	.4byte	0x90
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x4
	.byte	0x57
	.byte	0xd
	.4byte	0x90
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x4
	.byte	0x58
	.byte	0xd
	.4byte	0x90
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.4byte	0x90
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x4
	.byte	0x5a
	.byte	0xd
	.4byte	0x90
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x4
	.byte	0x5b
	.byte	0xd
	.4byte	0x90
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x4
	.byte	0x5c
	.byte	0xd
	.4byte	0x90
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x4
	.byte	0x5d
	.byte	0xd
	.4byte	0x90
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x4
	.byte	0x5e
	.byte	0xd
	.4byte	0x90
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x4
	.byte	0x5f
	.byte	0xd
	.4byte	0x90
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x4
	.byte	0x60
	.byte	0xd
	.4byte	0x90
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x4
	.byte	0x61
	.byte	0xd
	.4byte	0x90
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x4
	.byte	0x62
	.byte	0xd
	.4byte	0x90
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x4
	.byte	0x63
	.byte	0xd
	.4byte	0x90
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x4
	.byte	0x64
	.byte	0xd
	.4byte	0x90
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x4
	.byte	0x65
	.byte	0xd
	.4byte	0x90
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x4
	.byte	0x66
	.byte	0xd
	.4byte	0x90
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x4
	.byte	0x67
	.byte	0xd
	.4byte	0x90
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x4
	.byte	0x68
	.byte	0xd
	.4byte	0x90
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x4
	.byte	0x69
	.byte	0xd
	.4byte	0x90
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x4
	.byte	0x6a
	.byte	0xd
	.4byte	0x90
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x4
	.byte	0x6b
	.byte	0xd
	.4byte	0x90
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x4
	.byte	0x6c
	.byte	0xd
	.4byte	0x90
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x4
	.byte	0x6d
	.byte	0xd
	.4byte	0xb4
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x4
	.byte	0x6e
	.byte	0xd
	.4byte	0xb4
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x4
	.byte	0x6f
	.byte	0xd
	.4byte	0x90
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x4
	.byte	0x70
	.byte	0xd
	.4byte	0x90
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x4
	.byte	0x71
	.byte	0xd
	.4byte	0x90
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x4
	.byte	0x72
	.byte	0xd
	.4byte	0x90
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x4
	.byte	0x73
	.byte	0xd
	.4byte	0x90
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x4
	.byte	0x74
	.byte	0xd
	.4byte	0x90
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x4
	.byte	0x75
	.byte	0xd
	.4byte	0x90
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x4
	.byte	0x76
	.byte	0xd
	.4byte	0x90
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x4
	.byte	0x77
	.byte	0xd
	.4byte	0x90
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x4
	.byte	0x78
	.byte	0xd
	.4byte	0x90
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x4
	.byte	0x79
	.byte	0xd
	.4byte	0x90
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x4
	.byte	0x7a
	.byte	0xd
	.4byte	0x90
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x4
	.byte	0x7b
	.byte	0xe
	.4byte	0x9c
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x4
	.byte	0x7c
	.byte	0xe
	.4byte	0x9c
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x4
	.byte	0x7d
	.byte	0xe
	.4byte	0x9c
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x4
	.byte	0x7e
	.byte	0xe
	.4byte	0x9c
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x4
	.byte	0x7f
	.byte	0xe
	.4byte	0x9c
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x4
	.byte	0x80
	.byte	0xd
	.4byte	0x90
	.byte	0x52
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x4
	.byte	0x81
	.byte	0xd
	.4byte	0x90
	.byte	0x53
	.byte	0
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0x4
	.byte	0x82
	.byte	0x1b
	.4byte	0xff
	.uleb128 0x7
	.4byte	0x32
	.byte	0x5
	.byte	0x8e
	.byte	0xe
	.4byte	0x4f2
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0x11
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0x12
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0x16
	.byte	0
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0x5
	.byte	0x96
	.byte	0x2
	.4byte	0x4bb
	.uleb128 0x7
	.4byte	0x32
	.byte	0x5
	.byte	0x9b
	.byte	0xe
	.4byte	0x53b
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF102
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0x5
	.byte	0xa4
	.byte	0x2
	.4byte	0x4fe
	.uleb128 0x7
	.4byte	0x32
	.byte	0x5
	.byte	0xbc
	.byte	0xe
	.4byte	0x5b4
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF112
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF115
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0xd
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0x5
	.byte	0xcd
	.byte	0x2
	.4byte	0x547
	.uleb128 0x7
	.4byte	0x32
	.byte	0x5
	.byte	0xd2
	.byte	0xe
	.4byte	0x5e5
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF130
	.byte	0x5
	.byte	0xd7
	.byte	0x2
	.4byte	0x5c0
	.uleb128 0xa
	.byte	0x14
	.byte	0x5
	.byte	0xe6
	.4byte	0x655
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0x5
	.byte	0xe7
	.byte	0xd
	.4byte	0x90
	.byte	0
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0x5
	.byte	0xe8
	.byte	0xe
	.4byte	0xa8
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x5
	.byte	0xe9
	.byte	0xd
	.4byte	0x90
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x5
	.byte	0xea
	.byte	0x1f
	.4byte	0x53b
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF135
	.byte	0x5
	.byte	0xeb
	.byte	0x19
	.4byte	0x655
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0x5
	.byte	0xec
	.byte	0x14
	.4byte	0x5e5
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF137
	.byte	0x5
	.byte	0xed
	.byte	0x18
	.4byte	0x5b4
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.4byte	0x4af
	.uleb128 0x3
	.4byte	.LASF138
	.byte	0x5
	.byte	0xee
	.byte	0x2
	.4byte	0x5f1
	.uleb128 0x12
	.4byte	.LASF151
	.byte	0x3
	.byte	0x6
	.byte	0x22
	.byte	0x10
	.4byte	0x69a
	.uleb128 0x1
	.4byte	.LASF139
	.byte	0x6
	.byte	0x23
	.byte	0xd
	.4byte	0x90
	.byte	0
	.uleb128 0x1
	.4byte	.LASF140
	.byte	0x6
	.byte	0x24
	.byte	0xd
	.4byte	0x90
	.byte	0x1
	.uleb128 0xb
	.string	"buf"
	.byte	0x6
	.byte	0x25
	.4byte	0xef
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF141
	.byte	0x6
	.byte	0x26
	.byte	0x3
	.4byte	0x666
	.uleb128 0x13
	.4byte	.LASF152
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x7
	.byte	0x55
	.byte	0xe
	.4byte	0x6cb
	.uleb128 0x2
	.4byte	.LASF142
	.byte	0
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF144
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF145
	.byte	0x7
	.byte	0x59
	.byte	0x3
	.4byte	0x6a6
	.uleb128 0x14
	.4byte	.LASF153
	.byte	0x5
	.2byte	0x18c
	.byte	0x6
	.4byte	0x6ea
	.uleb128 0x5
	.4byte	0x6ea
	.byte	0
	.uleb128 0x6
	.4byte	0x65a
	.uleb128 0x15
	.4byte	.LASF146
	.byte	0x5
	.2byte	0x1bc
	.byte	0xd
	.4byte	0xe3
	.4byte	0x706
	.uleb128 0x5
	.4byte	0x4f2
	.byte	0
	.uleb128 0x16
	.4byte	.LASF154
	.byte	0x9
	.byte	0x24
	.byte	0x7
	.4byte	0x78
	.uleb128 0xc
	.4byte	.LASF147
	.byte	0x7
	.byte	0x9c
	.4byte	0x63
	.4byte	0x73b
	.uleb128 0x5
	.4byte	0x86
	.uleb128 0x5
	.4byte	0x63
	.uleb128 0x5
	.4byte	0x73b
	.uleb128 0x5
	.4byte	0x63
	.uleb128 0x5
	.4byte	0x6cb
	.byte	0
	.uleb128 0x6
	.4byte	0x740
	.uleb128 0x17
	.uleb128 0xc
	.4byte	.LASF148
	.byte	0x8
	.byte	0xce
	.4byte	0x63
	.4byte	0x757
	.uleb128 0x5
	.4byte	0x8b
	.uleb128 0x18
	.byte	0
	.uleb128 0x19
	.4byte	.LASF155
	.byte	0x1
	.byte	0x2a
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x79f
	.uleb128 0x1a
	.string	"hbn"
	.byte	0x1
	.byte	0x2a
	.byte	0x1e
	.4byte	0x79f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.4byte	.LASF149
	.byte	0x1
	.byte	0x2a
	.byte	0x2d
	.4byte	0x7a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"cfg"
	.byte	0x1
	.byte	0x8f
	.byte	0x16
	.4byte	0x65a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.4byte	0x69a
	.uleb128 0x6
	.4byte	0xa8
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x14
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
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x1a
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
	.uleb128 0x18
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
	.uleb128 0x18
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB9
	.uleb128 .LFE9-.LFB9
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF148:
	.string	"printf"
.LASF80:
	.string	"deBurstWrapCmd"
.LASF143:
	.string	"LOG_BUF_OUT_DATA_TYPE_INT8"
.LASF37:
	.string	"blk64EraseCmd"
.LASF142:
	.string	"LOG_BUF_OUT_DATA_TYPE_HEX"
.LASF101:
	.string	"HBN_GPIO_INT_TRIGGER_SYNC_RISING_EDGE"
.LASF45:
	.string	"qpiFrDmyClk"
.LASF57:
	.string	"writeVregEnableCmd"
.LASF65:
	.string	"wrEnableReadRegLen"
.LASF48:
	.string	"fastReadDioCmd"
.LASF89:
	.string	"pdDelay"
.LASF61:
	.string	"wrEnableBit"
.LASF85:
	.string	"timeE32k"
.LASF9:
	.string	"long long unsigned int"
.LASF46:
	.string	"fastReadDoCmd"
.LASF23:
	.string	"clkInvert"
.LASF21:
	.string	"cReadSupport"
.LASF92:
	.string	"HBN_INT_GPIO7"
.LASF93:
	.string	"HBN_INT_GPIO8"
.LASF60:
	.string	"busyIndex"
.LASF72:
	.string	"enterQpi"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF104:
	.string	"HBN_GPIO_INT_TRIGGER_ASYNC_FALLING_EDGE"
.LASF154:
	.string	"bl_flash_get_flashCfg"
.LASF28:
	.string	"jedecIdCmd"
.LASF31:
	.string	"qpiJedecIdCmdDmyClk"
.LASF76:
	.string	"burstWrapCmd"
.LASF111:
	.string	"HBN_LDO_LEVEL_0P70V"
.LASF124:
	.string	"HBN_LDO_LEVEL_1P35V"
.LASF140:
	.string	"active"
.LASF19:
	.string	"BL_Err_Type"
.LASF6:
	.string	"long int"
.LASF33:
	.string	"pageSize"
.LASF125:
	.string	"HBN_LDO_LEVEL_Type"
.LASF81:
	.string	"deBurstWrapCmdDmyClk"
.LASF91:
	.string	"SPI_Flash_Cfg_Type"
.LASF68:
	.string	"releasePowerDown"
.LASF54:
	.string	"qpiFastReadQioCmd"
.LASF147:
	.string	"log_buf_out"
.LASF24:
	.string	"resetEnCmd"
.LASF14:
	.string	"uint16_t"
.LASF137:
	.string	"ldoLevel"
.LASF110:
	.string	"HBN_LDO_LEVEL_0P65V"
.LASF73:
	.string	"exitQpi"
.LASF22:
	.string	"clkDelay"
.LASF50:
	.string	"fastReadQoCmd"
.LASF18:
	.string	"TIMEOUT"
.LASF78:
	.string	"burstWrapDataMode"
.LASF117:
	.string	"HBN_LDO_LEVEL_1P00V"
.LASF105:
	.string	"HBN_GPIO_INT_TRIGGER_ASYNC_RISING_EDGE"
.LASF10:
	.string	"unsigned int"
.LASF83:
	.string	"deBurstWrapData"
.LASF109:
	.string	"HBN_LDO_LEVEL_0P60V"
.LASF25:
	.string	"resetCmd"
.LASF7:
	.string	"long unsigned int"
.LASF122:
	.string	"HBN_LDO_LEVEL_1P25V"
.LASF90:
	.string	"qeData"
.LASF43:
	.string	"frDmyClk"
.LASF108:
	.string	"HBN_GPIO_INT_Trigger_Type"
.LASF32:
	.string	"sectorSize"
.LASF30:
	.string	"qpiJedecIdCmd"
.LASF5:
	.string	"short unsigned int"
.LASF39:
	.string	"pageProgramCmd"
.LASF64:
	.string	"wrEnableWriteRegLen"
.LASF71:
	.string	"writeRegCmd"
.LASF4:
	.string	"short int"
.LASF20:
	.string	"ioMode"
.LASF56:
	.string	"qpiPageProgramCmd"
.LASF41:
	.string	"qppAddrMode"
.LASF116:
	.string	"HBN_LDO_LEVEL_0P95V"
.LASF62:
	.string	"qeBit"
.LASF44:
	.string	"qpiFastReadCmd"
.LASF55:
	.string	"qpiFrQioDmyClk"
.LASF151:
	.string	"_hbn_type"
.LASF133:
	.string	"gpioWakeupSrc"
.LASF27:
	.string	"resetCreadCmdSize"
.LASF67:
	.string	"qeReadRegLen"
.LASF69:
	.string	"busyReadRegLen"
.LASF17:
	.string	"ERROR"
.LASF123:
	.string	"HBN_LDO_LEVEL_1P30V"
.LASF145:
	.string	"LOG_BUF_OUT_DATA_TYPE_T"
.LASF84:
	.string	"timeEsector"
.LASF120:
	.string	"HBN_LDO_LEVEL_1P15V"
.LASF74:
	.string	"cReadMode"
.LASF149:
	.string	"time"
.LASF79:
	.string	"burstWrapData"
.LASF114:
	.string	"HBN_LDO_LEVEL_0P85V"
.LASF144:
	.string	"LOG_BUF_OUT_DATA_TYPE_UNT8"
.LASF152:
	.string	"LOG_BUF_OUT_DATA_TYPE"
.LASF63:
	.string	"busyBit"
.LASF66:
	.string	"qeWriteRegLen"
.LASF130:
	.string	"HBN_LEVEL_Type"
.LASF95:
	.string	"HBN_INT_PIR"
.LASF3:
	.string	"unsigned char"
.LASF59:
	.string	"qeIndex"
.LASF100:
	.string	"HBN_GPIO_INT_TRIGGER_SYNC_FALLING_EDGE"
.LASF97:
	.string	"HBN_INT_ACOMP0"
.LASF98:
	.string	"HBN_INT_ACOMP1"
.LASF141:
	.string	"hbn_type_t"
.LASF42:
	.string	"fastReadCmd"
.LASF94:
	.string	"HBN_INT_RTC"
.LASF121:
	.string	"HBN_LDO_LEVEL_1P20V"
.LASF139:
	.string	"buflen"
.LASF38:
	.string	"writeEnableCmd"
.LASF53:
	.string	"frQioDmyClk"
.LASF47:
	.string	"frDoDmyClk"
.LASF118:
	.string	"HBN_LDO_LEVEL_1P05V"
.LASF102:
	.string	"HBN_GPIO_INT_TRIGGER_SYNC_LOW_LEVEL"
.LASF128:
	.string	"HBN_LEVEL_2"
.LASF40:
	.string	"qpageProgramCmd"
.LASF15:
	.string	"uint32_t"
.LASF26:
	.string	"resetCreadCmd"
.LASF11:
	.string	"long double"
.LASF12:
	.string	"char"
.LASF58:
	.string	"wrEnableIndex"
.LASF49:
	.string	"frDioDmyClk"
.LASF138:
	.string	"HBN_APP_CFG_Type"
.LASF135:
	.string	"flashCfg"
.LASF146:
	.string	"HBN_Clear_IRQ"
.LASF103:
	.string	"HBN_GPIO_INT_TRIGGER_SYNC_HIGH_LEVEL"
.LASF86:
	.string	"timeE64k"
.LASF29:
	.string	"jedecIdCmdDmyClk"
.LASF115:
	.string	"HBN_LDO_LEVEL_0P90V"
.LASF107:
	.string	"HBN_GPIO_INT_TRIGGER_ASYNC_HIGH_LEVEL"
.LASF132:
	.string	"sleepTime"
.LASF155:
	.string	"bl_hbn_enter"
.LASF75:
	.string	"cRExit"
.LASF150:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF112:
	.string	"HBN_LDO_LEVEL_0P75V"
.LASF153:
	.string	"HBN_Mode_Enter"
.LASF36:
	.string	"blk32EraseCmd"
.LASF126:
	.string	"HBN_LEVEL_0"
.LASF127:
	.string	"HBN_LEVEL_1"
.LASF52:
	.string	"fastReadQioCmd"
.LASF129:
	.string	"HBN_LEVEL_3"
.LASF34:
	.string	"chipEraseCmd"
.LASF88:
	.string	"timeCe"
.LASF82:
	.string	"deBurstWrapDataMode"
.LASF106:
	.string	"HBN_GPIO_INT_TRIGGER_ASYNC_LOW_LEVEL"
.LASF77:
	.string	"burstWrapCmdDmyClk"
.LASF119:
	.string	"HBN_LDO_LEVEL_1P10V"
.LASF13:
	.string	"uint8_t"
.LASF16:
	.string	"SUCCESS"
.LASF99:
	.string	"HBN_INT_Type"
.LASF131:
	.string	"useXtal32k"
.LASF96:
	.string	"HBN_INT_BOR"
.LASF87:
	.string	"timePagePgm"
.LASF70:
	.string	"readRegCmd"
.LASF134:
	.string	"gpioTrigType"
.LASF35:
	.string	"sectorEraseCmd"
.LASF113:
	.string	"HBN_LDO_LEVEL_0P80V"
.LASF136:
	.string	"hbnLevel"
.LASF51:
	.string	"frQoDmyClk"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_hbn.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
