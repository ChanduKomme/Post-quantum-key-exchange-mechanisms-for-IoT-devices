	.file	"bflb_hash.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/cipher_suite/src/bflb_hash.c"
	.section	.bss.shaCtx,"aw",@nobits
	.align	2
	.type	shaCtx, @object
	.size	shaCtx, 20
shaCtx:
	.zero	20
	.section	.rodata
	.align	2
.LC0:
	.string	"unsupported type\r\n"
	.section	.text.bflb_hash_init,"ax",@progbits
	.align	1
	.globl	bflb_hash_init
	.type	bflb_hash_init, @function
bflb_hash_init:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/cipher_suite/src/bflb_hash.c"
	.loc 1 28 1
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
	.loc 1 29 13
	sw	zero,-20(s0)
	.loc 1 32 5
	lbu	a5,-37(s0)
	li	a4,4
	bgt	a5,a4,.L2
	li	a4,3
	bge	a5,a4,.L3
	li	a4,2
	beq	a5,a4,.L4
	li	a4,2
	bgt	a5,a4,.L2
	beq	a5,zero,.L5
	li	a4,1
	beq	a5,a4,.L6
	j	.L2
.L5:
	.loc 1 35 16
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 36 13
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	bflb_platform_printf
	.loc 1 37 13
	j	.L7
.L6:
	.loc 1 39 84
	lw	a3,-36(s0)
	.loc 1 40 77
	lw	a5,-36(s0)
	addi	a5,a5,64
	.loc 1 39 13
	mv	a4,a5
	li	a2,1
	li	a1,0
	lui	a5,%hi(shaCtx)
	addi	a0,a5,%lo(shaCtx)
	call	Sec_Eng_SHA256_Init
	.loc 1 41 13
	j	.L7
.L4:
	.loc 1 43 84
	lw	a3,-36(s0)
	.loc 1 44 77
	lw	a5,-36(s0)
	addi	a5,a5,64
	.loc 1 43 13
	mv	a4,a5
	li	a2,0
	li	a1,0
	lui	a5,%hi(shaCtx)
	addi	a0,a5,%lo(shaCtx)
	call	Sec_Eng_SHA256_Init
	.loc 1 45 13
	j	.L7
.L3:
	.loc 1 48 16
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 49 13
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	bflb_platform_printf
	.loc 1 50 13
	j	.L7
.L2:
	.loc 1 52 13
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	bflb_platform_printf
	.loc 1 53 16
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 54 13
	nop
.L7:
	.loc 1 57 7
	lw	a5,-20(s0)
	bne	a5,zero,.L8
	.loc 1 58 26
	lw	a5,-36(s0)
	lbu	a4,-37(s0)
	sb	a4,128(a5)
.L8:
	.loc 1 60 12
	lw	a5,-20(s0)
	.loc 1 61 1
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
	.size	bflb_hash_init, .-bflb_hash_init
	.section	.rodata
	.align	2
.LC1:
	.string	"hash start fail\r\n"
	.section	.text.bflb_hash_start,"ax",@progbits
	.align	1
	.globl	bflb_hash_start
	.type	bflb_hash_start, @function
bflb_hash_start:
.LFB9:
	.loc 1 64 1
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
	.loc 1 65 13
	sw	zero,-20(s0)
	.loc 1 69 23
	lw	a5,-36(s0)
	lbu	a5,128(a5)
	.loc 1 69 5
	li	a4,4
	beq	a5,a4,.L20
	li	a4,4
	bgt	a5,a4,.L12
	li	a4,3
	beq	a5,a4,.L21
	li	a4,3
	bgt	a5,a4,.L12
	li	a4,2
	beq	a5,a4,.L14
	li	a4,2
	bgt	a5,a4,.L12
	beq	a5,zero,.L22
	li	a4,1
	bne	a5,a4,.L12
	.loc 1 74 14
	li	a0,0
	call	Sec_Eng_SHA_Start
	.loc 1 75 13
	j	.L17
.L14:
	.loc 1 77 14
	li	a0,0
	call	Sec_Eng_SHA_Start
	.loc 1 78 13
	j	.L17
.L12:
	.loc 1 84 13
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	bflb_platform_printf
	.loc 1 85 20
	li	a5,-1
	j	.L18
.L20:
	.loc 1 82 13
	nop
	j	.L17
.L21:
	.loc 1 80 13
	nop
	j	.L17
.L22:
	.loc 1 72 13
	nop
.L17:
	.loc 1 88 7
	lw	a5,-20(s0)
	beq	a5,zero,.L19
	.loc 1 89 9
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	bflb_platform_printf
	.loc 1 90 12
	li	a5,-1
	sw	a5,-20(s0)
.L19:
	.loc 1 92 12
	lw	a5,-20(s0)
.L18:
	.loc 1 93 1
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
	.size	bflb_hash_start, .-bflb_hash_start
	.section	.rodata
	.align	2
.LC2:
	.string	"hash update fail\r\n"
	.section	.text.bflb_hash_update,"ax",@progbits
	.align	1
	.globl	bflb_hash_update
	.type	bflb_hash_update, @function
bflb_hash_update:
.LFB10:
	.loc 1 96 1
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
	sw	a2,-44(s0)
	.loc 1 97 13
	sw	zero,-20(s0)
	.loc 1 99 23
	lw	a5,-36(s0)
	lbu	a5,128(a5)
	.loc 1 99 5
	li	a4,4
	beq	a5,a4,.L33
	li	a4,4
	bgt	a5,a4,.L25
	li	a4,3
	beq	a5,a4,.L34
	li	a4,3
	bgt	a5,a4,.L25
	li	a4,2
	beq	a5,a4,.L27
	li	a4,2
	bgt	a5,a4,.L25
	beq	a5,zero,.L35
	li	a4,1
	bne	a5,a4,.L25
	.loc 1 104 13
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	li	a1,0
	lui	a5,%hi(shaCtx)
	addi	a0,a5,%lo(shaCtx)
	call	Sec_Eng_SHA256_Update
	.loc 1 105 13
	j	.L30
.L27:
	.loc 1 107 13
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	li	a1,0
	lui	a5,%hi(shaCtx)
	addi	a0,a5,%lo(shaCtx)
	call	Sec_Eng_SHA256_Update
	.loc 1 108 13
	j	.L30
.L25:
	.loc 1 114 13
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	bflb_platform_printf
	.loc 1 115 20
	li	a5,-1
	j	.L31
.L33:
	.loc 1 112 13
	nop
	j	.L30
.L34:
	.loc 1 110 13
	nop
	j	.L30
.L35:
	.loc 1 102 13
	nop
.L30:
	.loc 1 118 7
	lw	a5,-20(s0)
	beq	a5,zero,.L32
	.loc 1 119 9
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	bflb_platform_printf
	.loc 1 120 12
	li	a5,-1
	sw	a5,-20(s0)
.L32:
	.loc 1 123 12
	lw	a5,-20(s0)
.L31:
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
.LFE10:
	.size	bflb_hash_update, .-bflb_hash_update
	.section	.rodata
	.align	2
.LC3:
	.string	"hash finish fail\r\n"
	.section	.text.bflb_hash_finish,"ax",@progbits
	.align	1
	.globl	bflb_hash_finish
	.type	bflb_hash_finish, @function
bflb_hash_finish:
.LFB11:
	.loc 1 127 1
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
	.loc 1 128 13
	sw	zero,-20(s0)
	.loc 1 130 23
	lw	a5,-36(s0)
	lbu	a5,128(a5)
	.loc 1 130 5
	li	a4,4
	beq	a5,a4,.L46
	li	a4,4
	bgt	a5,a4,.L38
	li	a4,3
	beq	a5,a4,.L47
	li	a4,3
	bgt	a5,a4,.L38
	li	a4,2
	beq	a5,a4,.L40
	li	a4,2
	bgt	a5,a4,.L38
	beq	a5,zero,.L48
	li	a4,1
	bne	a5,a4,.L38
	.loc 1 135 13
	lw	a2,-40(s0)
	li	a1,0
	lui	a5,%hi(shaCtx)
	addi	a0,a5,%lo(shaCtx)
	call	Sec_Eng_SHA256_Finish
	.loc 1 136 13
	j	.L43
.L40:
	.loc 1 138 13
	lw	a2,-40(s0)
	li	a1,0
	lui	a5,%hi(shaCtx)
	addi	a0,a5,%lo(shaCtx)
	call	Sec_Eng_SHA256_Finish
	.loc 1 139 13
	j	.L43
.L38:
	.loc 1 145 13
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	bflb_platform_printf
	.loc 1 146 20
	li	a5,-1
	j	.L44
.L46:
	.loc 1 143 13
	nop
	j	.L43
.L47:
	.loc 1 141 13
	nop
	j	.L43
.L48:
	.loc 1 133 13
	nop
.L43:
	.loc 1 149 7
	lw	a5,-20(s0)
	beq	a5,zero,.L45
	.loc 1 150 9
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	bflb_platform_printf
	.loc 1 151 12
	li	a5,-1
	sw	a5,-20(s0)
.L45:
	.loc 1 154 12
	lw	a5,-20(s0)
.L44:
	.loc 1 155 1
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
.LFE11:
	.size	bflb_hash_finish, .-bflb_hash_finish
	.section	.text.bflb_hash_deinit,"ax",@progbits
	.align	1
	.globl	bflb_hash_deinit
	.type	bflb_hash_deinit, @function
bflb_hash_deinit:
.LFB12:
	.loc 1 158 1
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
	.loc 1 159 23
	lw	a5,-20(s0)
	lbu	a5,128(a5)
	.loc 1 159 5
	li	a4,4
	beq	a5,a4,.L58
	li	a4,4
	bgt	a5,a4,.L51
	li	a4,3
	beq	a5,a4,.L59
	li	a4,3
	bgt	a5,a4,.L51
	li	a4,2
	beq	a5,a4,.L60
	li	a4,2
	bgt	a5,a4,.L51
	beq	a5,zero,.L61
	li	a4,1
	beq	a5,a4,.L62
.L51:
	.loc 1 172 13
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	bflb_platform_printf
	.loc 1 173 20
	li	a5,-1
	j	.L57
.L58:
	.loc 1 170 13
	nop
	j	.L56
.L59:
	.loc 1 168 13
	nop
	j	.L56
.L60:
	.loc 1 166 13
	nop
	j	.L56
.L61:
	.loc 1 162 13
	nop
	j	.L56
.L62:
	.loc 1 164 13
	nop
.L56:
	.loc 1 176 5
	li	a2,132
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 1 178 12
	li	a5,0
.L57:
	.loc 1 179 1
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
.LFE12:
	.size	bflb_hash_deinit, .-bflb_hash_deinit
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sec_eng.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/cipher_suite/inc/bflb_hash_port.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/cipher_suite/inc/bflb_hash.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x407
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x6
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x13
	.4byte	0x9e
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0xa
	.4byte	0x32
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.4byte	0xda
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x1b
	.byte	0x2
	.4byte	0xbb
	.uleb128 0xa
	.4byte	0x32
	.byte	0x5
	.byte	0x40
	.byte	0xe
	.4byte	0xf9
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x42
	.byte	0x2
	.4byte	0xe6
	.uleb128 0xa
	.4byte	0x32
	.byte	0x5
	.byte	0x47
	.byte	0xe
	.4byte	0x12a
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
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x4c
	.byte	0x2
	.4byte	0x105
	.uleb128 0x14
	.byte	0x14
	.byte	0x5
	.byte	0xc4
	.byte	0x9
	.4byte	0x174
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x5
	.byte	0xc5
	.byte	0xe
	.4byte	0x174
	.byte	0
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x5
	.byte	0xc6
	.byte	0xf
	.4byte	0x184
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0x5
	.byte	0xc7
	.byte	0xf
	.4byte	0x184
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF31
	.byte	0x5
	.byte	0xc8
	.byte	0xd
	.4byte	0x9e
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	0xaf
	.4byte	0x184
	.uleb128 0xd
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0xaf
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x5
	.byte	0xc9
	.byte	0x2
	.4byte	0x136
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0x40
	.byte	0x6
	.byte	0x11
	.byte	0xf
	.4byte	0x1af
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x6
	.byte	0x18
	.byte	0xe
	.4byte	0x1af
	.byte	0
	.uleb128 0xc
	.4byte	0xaf
	.4byte	0x1bf
	.uleb128 0xd
	.4byte	0x6a
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.4byte	0x195
	.uleb128 0x17
	.4byte	.LASF53
	.byte	0x84
	.byte	0x7
	.byte	0x19
	.byte	0x10
	.4byte	0x200
	.uleb128 0x5
	.4byte	.LASF34
	.byte	0x7
	.byte	0x1b
	.byte	0x15
	.4byte	0x1bf
	.byte	0
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x7
	.byte	0x1d
	.byte	0xe
	.4byte	0x1af
	.byte	0x40
	.uleb128 0x5
	.4byte	.LASF36
	.byte	0x7
	.byte	0x1f
	.byte	0xd
	.4byte	0x9e
	.byte	0x80
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x7
	.byte	0x20
	.byte	0x2
	.4byte	0x1cb
	.uleb128 0x18
	.4byte	.LASF47
	.byte	0x1
	.byte	0x1a
	.byte	0x1b
	.4byte	0x189
	.uleb128 0x5
	.byte	0x3
	.4byte	shaCtx
	.uleb128 0x19
	.4byte	.LASF38
	.byte	0x8
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0x23e
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0xe
	.4byte	.LASF39
	.2byte	0x1b4
	.4byte	0xda
	.4byte	0x25d
	.uleb128 0x1
	.4byte	0x25d
	.uleb128 0x1
	.4byte	0xf9
	.uleb128 0x1
	.4byte	0x262
	.byte	0
	.uleb128 0x6
	.4byte	0x189
	.uleb128 0x6
	.4byte	0x9e
	.uleb128 0xe
	.4byte	.LASF40
	.2byte	0x1b2
	.4byte	0xda
	.4byte	0x28b
	.uleb128 0x1
	.4byte	0x25d
	.uleb128 0x1
	.4byte	0xf9
	.uleb128 0x1
	.4byte	0x28b
	.uleb128 0x1
	.4byte	0xaf
	.byte	0
	.uleb128 0x6
	.4byte	0xaa
	.uleb128 0xf
	.4byte	.LASF41
	.2byte	0x1b1
	.4byte	0x2a1
	.uleb128 0x1
	.4byte	0xf9
	.byte	0
	.uleb128 0xf
	.4byte	.LASF42
	.2byte	0x1ae
	.4byte	0x2c6
	.uleb128 0x1
	.4byte	0x25d
	.uleb128 0x1
	.4byte	0xf9
	.uleb128 0x1
	.4byte	0x12a
	.uleb128 0x1
	.4byte	0x184
	.uleb128 0x1
	.4byte	0x184
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF43
	.byte	0x9
	.byte	0x18
	.byte	0x6
	.4byte	0x2d9
	.uleb128 0x1
	.4byte	0x86
	.uleb128 0x1b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x9d
	.4byte	0x92
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x300
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x9d
	.byte	0x2e
	.4byte	0x300
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0x200
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x7e
	.4byte	0x92
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x347
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x7e
	.byte	0x2e
	.4byte	0x300
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.string	"out"
	.byte	0x7e
	.byte	0x43
	.4byte	0x262
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"ret"
	.byte	0x80
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x5f
	.4byte	0x92
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x396
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x5f
	.byte	0x2e
	.4byte	0x300
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.string	"in"
	.byte	0x5f
	.byte	0x49
	.4byte	0x28b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"len"
	.byte	0x5f
	.byte	0x55
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.string	"ret"
	.byte	0x61
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x3f
	.4byte	0x92
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ca
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x3f
	.byte	0x2d
	.4byte	0x300
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"ret"
	.byte	0x41
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF54
	.byte	0x1
	.byte	0x1b
	.byte	0x9
	.4byte	0x92
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x1b
	.byte	0x2c
	.4byte	0x300
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x1b
	.byte	0x40
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x9
	.string	"ret"
	.byte	0x1d
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.sleb128 9
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
	.uleb128 0x9
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
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
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
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x3c
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF33:
	.string	"bflb_hash_ctx_t"
.LASF13:
	.string	"size_t"
.LASF19:
	.string	"TIMEOUT"
.LASF30:
	.string	"shaPadding"
.LASF10:
	.string	"unsigned int"
.LASF40:
	.string	"Sec_Eng_SHA256_Update"
.LASF22:
	.string	"SEC_ENG_SHA_ID_Type"
.LASF41:
	.string	"Sec_Eng_SHA_Start"
.LASF43:
	.string	"bflb_platform_printf"
.LASF3:
	.string	"unsigned char"
.LASF17:
	.string	"SUCCESS"
.LASF32:
	.string	"SEC_Eng_SHA256_Ctx"
.LASF46:
	.string	"hash_handle"
.LASF7:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF35:
	.string	"sha_padding"
.LASF42:
	.string	"Sec_Eng_SHA256_Init"
.LASF38:
	.string	"memset"
.LASF21:
	.string	"SEC_ENG_SHA_ID0"
.LASF52:
	.string	"sha_buf"
.LASF18:
	.string	"ERROR"
.LASF23:
	.string	"SEC_ENG_SHA256"
.LASF39:
	.string	"Sec_Eng_SHA256_Finish"
.LASF37:
	.string	"bflb_hash_handle_t"
.LASF44:
	.string	"bflb_hash_deinit"
.LASF48:
	.string	"bflb_hash_update"
.LASF12:
	.string	"char"
.LASF15:
	.string	"uint8_t"
.LASF27:
	.string	"SEC_ENG_SHA_Type"
.LASF14:
	.string	"int32_t"
.LASF51:
	.string	"tag_bflb_hash_ctx_t"
.LASF8:
	.string	"long long int"
.LASF20:
	.string	"BL_Err_Type"
.LASF31:
	.string	"shaFeed"
.LASF45:
	.string	"bflb_hash_finish"
.LASF34:
	.string	"hash_ctx"
.LASF36:
	.string	"type"
.LASF4:
	.string	"short int"
.LASF47:
	.string	"shaCtx"
.LASF50:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF26:
	.string	"SEC_ENG_SHA1_RSVD"
.LASF29:
	.string	"shaBuf"
.LASF28:
	.string	"total"
.LASF6:
	.string	"long int"
.LASF11:
	.string	"long double"
.LASF49:
	.string	"bflb_hash_start"
.LASF2:
	.string	"signed char"
.LASF16:
	.string	"uint32_t"
.LASF24:
	.string	"SEC_ENG_SHA224"
.LASF54:
	.string	"bflb_hash_init"
.LASF9:
	.string	"long long unsigned int"
.LASF25:
	.string	"SEC_ENG_SHA1"
.LASF53:
	.string	"tag_bflb_hash_handle_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/cipher_suite/src/bflb_hash.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
