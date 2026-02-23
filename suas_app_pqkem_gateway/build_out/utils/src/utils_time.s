	.file	"utils_time.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils" "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_time.c"
	.section	.text.utils_time_date_from_epoch,"ax",@progbits
	.align	1
	.globl	utils_time_date_from_epoch
	.type	utils_time_date_from_epoch, @function
utils_time_date_from_epoch:
.LFB0:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_time.c"
	.loc 1 35 1
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
	.loc 1 38 19
	li	a5,505356288
	addi	a5,a5,-993
	sw	a5,-36(s0)
	li	a5,522133504
	addi	a5,a5,-481
	sw	a5,-32(s0)
	li	a5,522067968
	addi	a5,a5,-226
	sw	a5,-28(s0)
	.loc 1 39 19
	li	a5,393216
	addi	a5,a5,1284
	sw	a5,-44(s0)
	li	a5,513
	sh	a5,-40(s0)
	li	a5,3
	sb	a5,-38(s0)
	.loc 1 41 21
	lw	a5,-56(s0)
	sb	zero,6(a5)
	.loc 1 42 25
	lw	a5,-56(s0)
	sb	zero,7(a5)
	.loc 1 47 29
	lw	a3,-52(s0)
	li	a5,-2004316160
	addi	a5,a5,-1911
	mulhu	a5,a3,a5
	srli	a4,a5,5
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	sub	a4,a3,a5
	.loc 1 47 22
	andi	a4,a4,0xff
	lw	a5,-56(s0)
	sb	a4,2(a5)
	.loc 1 48 11
	lw	a4,-52(s0)
	li	a5,-2004316160
	addi	a5,a5,-1911
	mulhu	a5,a4,a5
	srli	a5,a5,5
	sw	a5,-52(s0)
	.loc 1 49 29
	lw	a3,-52(s0)
	li	a5,-2004316160
	addi	a5,a5,-1911
	mulhu	a5,a3,a5
	srli	a4,a5,5
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	sub	a4,a3,a5
	.loc 1 49 22
	andi	a4,a4,0xff
	lw	a5,-56(s0)
	sb	a4,1(a5)
	.loc 1 50 11
	lw	a4,-52(s0)
	li	a5,-2004316160
	addi	a5,a5,-1911
	mulhu	a5,a4,a5
	srli	a5,a5,5
	sw	a5,-52(s0)
	.loc 1 51 27
	lw	a3,-52(s0)
	li	a5,-1431654400
	addi	a5,a5,-1365
	mulhu	a5,a3,a5
	srli	a4,a5,4
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	sub	a4,a3,a5
	.loc 1 51 20
	andi	a4,a4,0xff
	lw	a5,-56(s0)
	sb	a4,0(a5)
	.loc 1 52 11
	lw	a4,-52(s0)
	li	a5,-1431654400
	addi	a5,a5,-1365
	mulhu	a5,a4,a5
	srli	a5,a5,4
	sw	a5,-52(s0)
	.loc 1 54 28
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	sw	a4,12(a5)
	.loc 1 55 40
	lw	a5,-56(s0)
	lw	a3,12(a5)
	.loc 1 55 58
	li	a5,613568512
	addi	a5,a5,-1755
	mulhu	a5,a3,a5
	sub	a4,a3,a5
	srli	a4,a4,1
	add	a5,a5,a4
	srli	a4,a5,2
	mv	a5,a4
	slli	a5,a5,3
	sub	a5,a5,a4
	sub	a4,a3,a5
	.loc 1 55 35
	addi	a5,a4,-16
	add	a5,a5,s0
	lbu	a4,-28(a5)
	.loc 1 55 24
	lw	a5,-56(s0)
	sb	a4,3(a5)
	.loc 1 57 34
	lw	a5,-56(s0)
	lw	a4,12(a5)
	.loc 1 57 52
	li	a5,1729753088
	addi	a5,a5,865
	mulhu	a5,a4,a5
	sub	a4,a4,a5
	srli	a4,a4,1
	add	a5,a5,a4
	srli	a5,a5,8
	.loc 1 57 27
	addi	a4,a5,1970
	.loc 1 57 20
	lw	a5,-56(s0)
	sw	a4,8(a5)
	.loc 1 59 12
	li	a5,1972
	sw	a5,-20(s0)
	.loc 1 59 5
	j	.L2
.L6:
	.loc 1 61 15
	lw	a5,-20(s0)
	andi	a5,a5,3
	.loc 1 61 11
	bne	a5,zero,.L3
	.loc 1 61 27 discriminator 1
	lw	a4,-20(s0)
	li	a5,1374388224
	addi	a5,a5,1311
	mulhu	a5,a4,a5
	srli	a5,a5,5
	li	a3,100
	mul	a5,a5,a3
	sub	a5,a4,a5
	.loc 1 61 22 discriminator 1
	bne	a5,zero,.L4
.L3:
	.loc 1 61 42 discriminator 3
	lw	a4,-20(s0)
	li	a5,1374388224
	addi	a5,a5,1311
	mulhu	a5,a4,a5
	srli	a5,a5,7
	li	a3,400
	mul	a5,a5,a3
	sub	a5,a4,a5
	.loc 1 61 37 discriminator 3
	bne	a5,zero,.L5
.L4:
	.loc 1 62 17
	lw	a5,-56(s0)
	lbu	a5,6(a5)
	.loc 1 62 28
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-56(s0)
	sb	a4,6(a5)
.L5:
	.loc 1 59 41 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
.L2:
	.loc 1 59 28 discriminator 1
	lw	a5,-56(s0)
	lw	a5,8(a5)
	.loc 1 59 22 discriminator 1
	lw	a4,-20(s0)
	bltu	a4,a5,.L6
	.loc 1 66 35
	lw	a5,-56(s0)
	lw	a5,12(a5)
	.loc 1 66 60
	lw	a4,-56(s0)
	lbu	a4,6(a4)
	.loc 1 66 54
	sub	a4,a5,a4
	.loc 1 66 72
	li	a5,1729753088
	addi	a5,a5,865
	mulhu	a5,a4,a5
	sub	a4,a4,a5
	srli	a4,a4,1
	add	a5,a5,a4
	srli	a5,a5,8
	.loc 1 66 27
	addi	a4,a5,1970
	.loc 1 66 20
	lw	a5,-56(s0)
	sw	a4,8(a5)
	.loc 1 67 31
	lw	a5,-56(s0)
	lw	a5,12(a5)
	.loc 1 67 56
	lw	a4,-56(s0)
	lbu	a4,6(a4)
	.loc 1 67 50
	sub	a4,a5,a4
	.loc 1 67 68
	li	a5,1729753088
	addi	a5,a5,865
	mulhu	a5,a4,a5
	sub	a3,a4,a5
	srli	a3,a3,1
	add	a5,a5,a3
	srli	a5,a5,8
	li	a3,365
	mul	a5,a5,a3
	sub	a5,a4,a5
	.loc 1 67 73
	addi	a4,a5,1
	.loc 1 67 23
	lw	a5,-56(s0)
	sw	a4,16(a5)
	.loc 1 70 15
	lw	a5,-56(s0)
	lw	a5,8(a5)
	.loc 1 70 25
	andi	a5,a5,3
	.loc 1 70 8
	bne	a5,zero,.L7
	.loc 1 70 40 discriminator 1
	lw	a5,-56(s0)
	lw	a4,8(a5)
	.loc 1 70 50 discriminator 1
	li	a5,1374388224
	addi	a5,a5,1311
	mulhu	a5,a4,a5
	srli	a5,a5,5
	li	a3,100
	mul	a5,a5,a3
	sub	a5,a4,a5
	.loc 1 70 32 discriminator 1
	bne	a5,zero,.L8
.L7:
	.loc 1 70 68 discriminator 3
	lw	a5,-56(s0)
	lw	a4,8(a5)
	.loc 1 70 78 discriminator 3
	li	a5,1374388224
	addi	a5,a5,1311
	mulhu	a5,a4,a5
	srli	a5,a5,7
	li	a3,400
	mul	a5,a5,a3
	sub	a5,a4,a5
	.loc 1 70 60 discriminator 3
	bne	a5,zero,.L9
.L8:
	.loc 1 71 22
	li	a5,29
	sb	a5,-35(s0)
	.loc 1 72 29
	lw	a5,-56(s0)
	li	a4,1
	sb	a4,7(a5)
	j	.L10
.L9:
	.loc 1 74 22
	li	a5,28
	sb	a5,-35(s0)
.L10:
	.loc 1 77 15
	sh	zero,-22(s0)
	.loc 1 79 26
	lw	a5,-56(s0)
	sb	zero,5(a5)
	.loc 1 79 5
	j	.L11
.L14:
	.loc 1 81 17
	lw	a5,-56(s0)
	lw	a4,16(a5)
	.loc 1 81 31
	lhu	a5,-22(s0)
	.loc 1 81 12
	bleu	a4,a5,.L16
	.loc 1 84 48
	lw	a5,-56(s0)
	lbu	a5,5(a5)
	.loc 1 84 43
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-20(a5)
	mv	a4,a5
	.loc 1 84 19
	lhu	a5,-22(s0)
	add	a5,a4,a5
	sh	a5,-22(s0)
	.loc 1 79 58 discriminator 2
	lw	a5,-56(s0)
	lbu	a5,5(a5)
	.loc 1 79 69 discriminator 2
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-56(s0)
	sb	a4,5(a5)
.L11:
	.loc 1 79 35 discriminator 1
	lw	a5,-56(s0)
	lbu	a4,5(a5)
	.loc 1 79 47 discriminator 1
	li	a5,11
	bleu	a4,a5,.L14
	j	.L13
.L16:
	.loc 1 82 13
	nop
.L13:
	.loc 1 87 44
	lw	a5,-56(s0)
	lbu	a5,5(a5)
	.loc 1 87 55
	addi	a5,a5,-1
	.loc 1 87 39
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-20(a5)
	.loc 1 87 15
	lhu	a4,-22(s0)
	sub	a5,a4,a5
	sh	a5,-22(s0)
	.loc 1 88 26
	lw	a5,-56(s0)
	lw	a5,16(a5)
	.loc 1 88 40
	andi	a4,a5,0xff
	lhu	a5,-22(s0)
	andi	a5,a5,0xff
	sub	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 88 20
	lw	a5,-56(s0)
	sb	a4,4(a5)
	.loc 1 90 12
	li	a5,0
	.loc 1 91 1
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
.LFE0:
	.size	utils_time_date_from_epoch, .-utils_time_date_from_epoch
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_time.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1a4
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x8
	.byte	0x14
	.byte	0x2
	.byte	0x20
	.byte	0x9
	.4byte	0x10d
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x21
	.byte	0x13
	.4byte	0x4e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x22
	.byte	0x13
	.4byte	0x4e
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x23
	.byte	0x13
	.4byte	0x4e
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x24
	.byte	0x13
	.4byte	0x4e
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x25
	.byte	0x13
	.4byte	0x4e
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x26
	.byte	0x13
	.4byte	0x4e
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x27
	.byte	0x13
	.4byte	0x4e
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x28
	.byte	0x13
	.4byte	0x4e
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x29
	.byte	0x12
	.4byte	0x2b
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x2a
	.byte	0x12
	.4byte	0x2b
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x2b
	.byte	0x12
	.4byte	0x2b
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x2
	.byte	0x2c
	.byte	0x3
	.4byte	0x7f
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x1
	.byte	0x22
	.byte	0x5
	.4byte	0x32
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x185
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x2d
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x47
	.4byte	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x24
	.byte	0x12
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x25
	.byte	0x14
	.4byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x26
	.byte	0x13
	.4byte	0x18b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x27
	.byte	0x13
	.4byte	0x19b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x10d
	.uleb128 0xd
	.4byte	0x4e
	.4byte	0x19b
	.uleb128 0x5
	.4byte	0x2b
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.4byte	0x4e
	.uleb128 0x5
	.4byte	0x2b
	.byte	0x6
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 34
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
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
	.4byte	.LFB0
	.uleb128 .LFE0-.LFB0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"ntp_second"
.LASF19:
	.string	"leap_days"
.LASF21:
	.string	"ntp_year"
.LASF28:
	.string	"week_days"
.LASF25:
	.string	"date"
.LASF14:
	.string	"ntp_minute"
.LASF27:
	.string	"month_days"
.LASF17:
	.string	"ntp_date"
.LASF8:
	.string	"short unsigned int"
.LASF26:
	.string	"temp_days"
.LASF6:
	.string	"unsigned char"
.LASF10:
	.string	"long unsigned int"
.LASF30:
	.string	"utils_time_date_t"
.LASF2:
	.string	"unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF22:
	.string	"days_since_epoch"
.LASF31:
	.string	"utils_time_date_from_epoch"
.LASF13:
	.string	"ntp_hour"
.LASF3:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF20:
	.string	"leap_year_ind"
.LASF7:
	.string	"short int"
.LASF29:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF24:
	.string	"epoch"
.LASF23:
	.string	"day_of_year"
.LASF9:
	.string	"long int"
.LASF18:
	.string	"ntp_month"
.LASF4:
	.string	"long double"
.LASF5:
	.string	"signed char"
.LASF16:
	.string	"ntp_week_day"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_time.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
