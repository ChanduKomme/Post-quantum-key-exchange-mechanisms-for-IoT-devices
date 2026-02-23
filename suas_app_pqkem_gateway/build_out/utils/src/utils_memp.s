	.file	"utils_memp.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils" "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_memp.c"
	.section	.text.utils_memp_init,"ax",@progbits
	.align	1
	.globl	utils_memp_init
	.type	utils_memp_init, @function
utils_memp_init:
.LFB1:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_memp.c"
	.loc 1 39 1
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
	mv	a4,a3
	sh	a5,-54(s0)
	mv	a5,a2
	sh	a5,-56(s0)
	mv	a5,a4
	sb	a5,-57(s0)
	.loc 1 47 50
	lbu	a5,-57(s0)
	addi	a5,a5,3
	andi	a5,a5,0xff
	.loc 1 47 15
	andi	a5,a5,-4
	sb	a5,-57(s0)
	.loc 1 48 71
	lbu	a5,-57(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-54(s0)
	add	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 48 85
	addi	a5,a5,3
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 48 89
	lbu	a5,-57(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	neg	a5,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 48 22
	and	a5,a4,a5
	sh	a5,-28(s0)
	.loc 1 50 10
	li	a5,32
	sw	a5,-32(s0)
	.loc 1 51 21
	lbu	a4,-57(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	.loc 1 51 35
	addi	a4,a5,-1
	.loc 1 51 41
	lbu	a5,-57(s0)
	neg	a5,a5
	.loc 1 51 10
	and	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 52 30
	lhu	a4,-28(s0)
	lhu	a5,-56(s0)
	mul	a5,a4,a5
	mv	a4,a5
	.loc 1 52 10
	lw	a5,-32(s0)
	add	a5,a5,a4
	sw	a5,-32(s0)
	.loc 1 54 13
	lw	a0,-32(s0)
	call	pvPortMalloc
	sw	a0,-36(s0)
	.loc 1 56 8
	lw	a5,-36(s0)
	bne	a5,zero,.L2
	.loc 1 57 16
	li	a5,-1
	j	.L3
.L2:
	.loc 1 60 83
	lhu	a4,-28(s0)
	lhu	a5,-56(s0)
	mul	a5,a4,a5
	mv	a4,a5
	.loc 1 60 64
	lw	a5,-32(s0)
	sub	a5,a5,a4
	.loc 1 60 10
	lw	a4,-36(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 61 23
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,20(a5)
	.loc 1 62 22
	lhu	a4,-54(s0)
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 63 21
	lhu	a4,-56(s0)
	lw	a5,-36(s0)
	sw	a4,4(a5)
	.loc 1 64 22
	lw	a5,-36(s0)
	sw	zero,8(a5)
	.loc 1 65 22
	lw	a5,-36(s0)
	lbu	a4,-57(s0)
	sb	a4,12(a5)
	.loc 1 66 29
	lhu	a4,-28(s0)
	lw	a5,-36(s0)
	sw	a4,16(a5)
	.loc 1 67 16
	lw	a5,-36(s0)
	sw	zero,28(a5)
	.loc 1 68 14
	lw	a5,-36(s0)
	lw	a5,28(a5)
	sw	a5,-24(s0)
	.loc 1 70 11
	sh	zero,-26(s0)
	.loc 1 70 5
	j	.L4
.L5:
	.loc 1 71 20
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 72 18
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 1 73 16
	lhu	a5,-28(s0)
	.loc 1 73 14
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 70 30 discriminator 3
	lhu	a5,-26(s0)
	addi	a5,a5,1
	sh	a5,-26(s0)
.L4:
	.loc 1 70 18 discriminator 1
	lhu	a4,-26(s0)
	lhu	a5,-56(s0)
	bltu	a4,a5,.L5
	.loc 1 75 16
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,28(a5)
	.loc 1 76 29
	lw	a5,-36(s0)
	lw	a4,28(a5)
	.loc 1 76 22
	lw	a5,-36(s0)
	sw	a4,24(a5)
	.loc 1 77 11
	lw	a5,-52(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 79 12
	li	a5,0
.L3:
	.loc 1 80 1
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
.LFE1:
	.size	utils_memp_init, .-utils_memp_init
	.section	.text.utils_memp_deinit,"ax",@progbits
	.align	1
	.globl	utils_memp_deinit
	.type	utils_memp_deinit, @function
utils_memp_deinit:
.LFB2:
	.loc 1 83 1
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
	.loc 1 84 8
	lw	a5,-20(s0)
	bne	a5,zero,.L7
	.loc 1 85 16
	li	a5,-1
	j	.L8
.L7:
	.loc 1 87 5
	lw	a0,-20(s0)
	call	vPortFree
	.loc 1 89 12
	li	a5,0
.L8:
	.loc 1 90 1
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
.LFE2:
	.size	utils_memp_deinit, .-utils_memp_deinit
	.section	.text.utils_memp_malloc,"ax",@progbits
	.align	1
	.globl	utils_memp_malloc
	.type	utils_memp_malloc, @function
utils_memp_malloc:
.LFB3:
	.loc 1 93 1
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
	.loc 1 96 8
	lw	a5,-36(s0)
	bne	a5,zero,.L10
	.loc 1 97 15
	li	a5,0
	j	.L11
.L10:
	.loc 1 99 13
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 1 99 32
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 99 8
	bne	a4,a5,.L12
	.loc 1 100 15
	li	a5,0
	j	.L11
.L12:
	.loc 1 102 10
	lw	a5,-36(s0)
	lw	a5,28(a5)
	sw	a5,-20(s0)
	.loc 1 103 8
	lw	a5,-20(s0)
	beq	a5,zero,.L13
	.loc 1 104 25
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 104 19
	lw	a5,-36(s0)
	sw	a4,28(a5)
	.loc 1 105 13
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 105 24
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,8(a5)
	.loc 1 106 13
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 1 107 14
	lw	a5,-24(s0)
	li	a4,165
	sw	a4,0(a5)
	.loc 1 108 29
	lw	a5,-20(s0)
	addi	a5,a5,4
	j	.L11
.L13:
	.loc 1 110 15
	li	a5,0
.L11:
	.loc 1 112 1
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
.LFE3:
	.size	utils_memp_malloc, .-utils_memp_malloc
	.section	.text.utils_memp_free,"ax",@progbits
	.align	1
	.globl	utils_memp_free
	.type	utils_memp_free, @function
utils_memp_free:
.LFB4:
	.loc 1 115 1
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
	sw	a1,-40(s0)
	.loc 1 117 10
	lw	a5,-40(s0)
	addi	a5,a5,-4
	sw	a5,-40(s0)
	.loc 1 121 8
	lw	a5,-36(s0)
	beq	a5,zero,.L15
	.loc 1 121 15 discriminator 1
	lw	a5,-40(s0)
	bne	a5,zero,.L16
.L15:
	.loc 1 122 16
	li	a5,-1
	j	.L17
.L16:
	.loc 1 124 13
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 124 8
	bne	a5,zero,.L18
	.loc 1 125 16
	li	a5,-1
	j	.L17
.L18:
	.loc 1 127 23
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 1 127 8
	lw	a4,-40(s0)
	bltu	a4,a5,.L19
	.loc 1 127 51 discriminator 1
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 127 9 discriminator 1
	lw	a4,-40(s0)
	bleu	a4,a5,.L20
.L19:
	.loc 1 128 16
	li	a5,-1
	j	.L17
.L20:
	.loc 1 130 23
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 1 130 10
	lw	a4,-40(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 131 14
	lw	a4,-20(s0)
	.loc 1 131 20
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 131 14
	remu	a5,a4,a5
	.loc 1 131 8
	beq	a5,zero,.L21
	.loc 1 132 16
	li	a5,-1
	j	.L17
.L21:
	.loc 1 135 9
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	.loc 1 136 9
	lw	a5,-24(s0)
	lw	a4,0(a5)
	.loc 1 136 8
	li	a5,165
	beq	a4,a5,.L22
	.loc 1 137 16
	li	a5,-1
	j	.L17
.L22:
	.loc 1 139 21
	lw	a5,-40(s0)
	sw	a5,-28(s0)
	.loc 1 140 33
	lw	a5,-36(s0)
	lw	a4,28(a5)
	.loc 1 140 27
	lw	a5,-28(s0)
	sw	a4,0(a5)
	.loc 1 141 15
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	sw	a4,28(a5)
	.loc 1 142 9
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 142 20
	addi	a4,a5,-1
	lw	a5,-36(s0)
	sw	a4,8(a5)
	.loc 1 143 12
	li	a5,0
.L17:
	.loc 1 144 1
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
.LFE4:
	.size	utils_memp_free, .-utils_memp_free
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_memp.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2e4
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xc
	.4byte	.LASF36
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
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x53
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x66
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x79
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x8e
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0x22
	.byte	0x8
	.4byte	0xc3
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x23
	.byte	0x1d
	.4byte	0xc3
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0xaa
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x20
	.byte	0x26
	.byte	0x10
	.4byte	0x136
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x27
	.byte	0xe
	.4byte	0x6d
	.byte	0
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x28
	.byte	0xe
	.4byte	0x6d
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x29
	.byte	0xe
	.4byte	0x6d
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x2a
	.byte	0xd
	.4byte	0x47
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x2b
	.byte	0xe
	.4byte	0x6d
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x2c
	.byte	0xb
	.4byte	0xa8
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x2d
	.byte	0xb
	.4byte	0xa8
	.byte	0x18
	.uleb128 0xf
	.string	"mem"
	.byte	0x4
	.byte	0x2e
	.byte	0x1d
	.4byte	0xc3
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x4
	.byte	0x2f
	.byte	0x2
	.4byte	0xc8
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x5
	.byte	0xa4
	.byte	0x6
	.4byte	0x154
	.uleb128 0x9
	.4byte	0xa8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x5
	.byte	0xa3
	.byte	0x7
	.4byte	0xa8
	.4byte	0x16a
	.uleb128 0x9
	.4byte	0x95
	.byte	0
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x72
	.byte	0x5
	.4byte	0x87
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ca
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x72
	.byte	0x28
	.4byte	0x1ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x72
	.byte	0x34
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x74
	.byte	0x1d
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.string	"pat"
	.byte	0x76
	.byte	0xf
	.4byte	0x1cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x77
	.byte	0x9
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0x136
	.uleb128 0x6
	.4byte	0x6d
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x5c
	.byte	0x7
	.4byte	0xa8
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x218
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5c
	.byte	0x2c
	.4byte	0x1ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x5e
	.byte	0x1d
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"pat"
	.byte	0x5f
	.byte	0xf
	.4byte	0x1cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x52
	.4byte	0x87
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23f
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x52
	.byte	0x2a
	.4byte	0x1ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x26
	.4byte	0x87
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e2
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x26
	.byte	0x29
	.4byte	0x2e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x26
	.byte	0x38
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x26
	.byte	0x4c
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x26
	.byte	0x5e
	.4byte	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x28
	.byte	0x18
	.4byte	0x1ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x29
	.byte	0x1d
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x2a
	.byte	0x1d
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x2b
	.byte	0xc
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x2c
	.byte	0xe
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.string	"i"
	.byte	0x2d
	.byte	0xe
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x6
	.4byte	0x1ca
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
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
	.4byte	.LFB1
	.uleb128 .LFE1-.LFB1
	.byte	0x7
	.4byte	.LFB2
	.uleb128 .LFE2-.LFB2
	.byte	0x7
	.4byte	.LFB3
	.uleb128 .LFE3-.LFB3
	.byte	0x7
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.string	"last_node"
.LASF20:
	.string	"pool_cap"
.LASF16:
	.string	"utils_memp_node"
.LASF28:
	.string	"diff"
.LASF3:
	.string	"short int"
.LASF14:
	.string	"size_t"
.LASF19:
	.string	"node_size"
.LASF7:
	.string	"uint8_t"
.LASF23:
	.string	"padded_node_size"
.LASF32:
	.string	"utils_memp_init"
.LASF5:
	.string	"long long int"
.LASF4:
	.string	"long int"
.LASF31:
	.string	"utils_memp_deinit"
.LASF27:
	.string	"node"
.LASF15:
	.string	"long double"
.LASF30:
	.string	"utils_memp_malloc"
.LASF6:
	.string	"unsigned char"
.LASF2:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF13:
	.string	"unsigned int"
.LASF8:
	.string	"uint16_t"
.LASF9:
	.string	"short unsigned int"
.LASF36:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF21:
	.string	"pool_size"
.LASF11:
	.string	"long unsigned int"
.LASF37:
	.string	"vPortFree"
.LASF35:
	.string	"size"
.LASF24:
	.string	"first_node"
.LASF33:
	.string	"npool"
.LASF22:
	.string	"align_req"
.LASF29:
	.string	"utils_memp_free"
.LASF17:
	.string	"pool"
.LASF34:
	.string	"pool_mem"
.LASF26:
	.string	"utils_memp_pool_t"
.LASF38:
	.string	"pvPortMalloc"
.LASF18:
	.string	"next"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_memp.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
