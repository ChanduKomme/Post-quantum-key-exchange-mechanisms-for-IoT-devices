	.file	"utils_tlv_bl.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils" "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_tlv_bl.c"
	.section	.text.utils_tlv_bl_pack_bool,"ax",@progbits
	.align	1
	.globl	utils_tlv_bl_pack_bool
	.type	utils_tlv_bl_pack_bool, @function
utils_tlv_bl_pack_bool:
.LFB0:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_tlv_bl.c"
	.loc 1 33 1
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
	sw	a1,-24(s0)
	mv	a5,a2
	sb	a5,-25(s0)
	.loc 1 34 8
	lw	a4,-24(s0)
	li	a5,3
	bgt	a4,a5,.L2
	.loc 1 35 16
	li	a5,-1
	j	.L3
.L2:
	.loc 1 37 10
	lbu	a4,-25(s0)
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 39 12
	li	a5,4
.L3:
	.loc 1 40 1
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
.LFE0:
	.size	utils_tlv_bl_pack_bool, .-utils_tlv_bl_pack_bool
	.section	.text.utils_tlv_bl_pack_uint32,"ax",@progbits
	.align	1
	.globl	utils_tlv_bl_pack_uint32
	.type	utils_tlv_bl_pack_uint32, @function
utils_tlv_bl_pack_uint32:
.LFB1:
	.loc 1 43 1
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
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	.loc 1 44 8
	lw	a4,-24(s0)
	li	a5,3
	bgt	a4,a5,.L5
	.loc 1 45 16
	li	a5,-1
	j	.L6
.L5:
	.loc 1 47 10
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	.loc 1 49 12
	li	a5,4
.L6:
	.loc 1 50 1
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
.LFE1:
	.size	utils_tlv_bl_pack_uint32, .-utils_tlv_bl_pack_uint32
	.section	.text.utils_tlv_bl_unpack_bool,"ax",@progbits
	.align	1
	.globl	utils_tlv_bl_unpack_bool
	.type	utils_tlv_bl_unpack_bool, @function
utils_tlv_bl_unpack_bool:
.LFB2:
	.loc 1 53 1
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
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	.loc 1 54 8
	lw	a4,-24(s0)
	li	a5,3
	bgt	a4,a5,.L8
	.loc 1 55 16
	li	a5,-1
	j	.L9
.L8:
	.loc 1 57 13
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 57 5
	snez	a5,a5
	andi	a4,a5,0xff
	.loc 1 57 10
	lw	a5,-28(s0)
	sb	a4,0(a5)
	.loc 1 59 12
	li	a5,4
.L9:
	.loc 1 60 1
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
	.size	utils_tlv_bl_unpack_bool, .-utils_tlv_bl_unpack_bool
	.section	.text.utils_tlv_bl_unpack_uint32,"ax",@progbits
	.align	1
	.globl	utils_tlv_bl_unpack_uint32
	.type	utils_tlv_bl_unpack_uint32, @function
utils_tlv_bl_unpack_uint32:
.LFB3:
	.loc 1 63 1
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
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	.loc 1 64 8
	lw	a4,-24(s0)
	li	a5,3
	bgt	a4,a5,.L11
	.loc 1 65 16
	li	a5,-1
	j	.L12
.L11:
	.loc 1 67 13
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 67 10
	lw	a5,-28(s0)
	sw	a4,0(a5)
	.loc 1 69 12
	li	a5,4
.L12:
	.loc 1 70 1
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
.LFE3:
	.size	utils_tlv_bl_unpack_uint32, .-utils_tlv_bl_unpack_uint32
	.section	.text.utils_tlv_bl_pack_auto,"ax",@progbits
	.align	1
	.globl	utils_tlv_bl_pack_auto
	.type	utils_tlv_bl_pack_auto, @function
utils_tlv_bl_pack_auto:
.LFB4:
	.loc 1 73 1
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
	mv	a5,a2
	sw	a3,-48(s0)
	sh	a5,-42(s0)
	.loc 1 74 9
	li	a5,-2
	sw	a5,-20(s0)
	.loc 1 76 5
	lhu	a5,-42(s0)
	li	a4,8
	beq	a5,a4,.L24
	li	a4,8
	bgt	a5,a4,.L15
	li	a4,7
	beq	a5,a4,.L16
	li	a4,7
	bgt	a5,a4,.L15
	li	a4,6
	beq	a5,a4,.L25
	li	a4,6
	bgt	a5,a4,.L15
	li	a4,5
	beq	a5,a4,.L26
	li	a4,5
	bgt	a5,a4,.L15
	li	a4,4
	beq	a5,a4,.L27
	li	a4,4
	bgt	a5,a4,.L15
	li	a4,3
	beq	a5,a4,.L28
	li	a4,3
	bgt	a5,a4,.L15
	li	a4,1
	bne	a5,a4,.L29
	.loc 1 79 19
	lw	a5,-48(s0)
	lbu	a5,0(a5)
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	utils_tlv_bl_pack_bool
	sw	a0,-20(s0)
	.loc 1 81 9
	j	.L15
.L16:
	.loc 1 109 19
	lw	a5,-48(s0)
	lw	a5,0(a5)
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	utils_tlv_bl_pack_uint32
	sw	a0,-20(s0)
	.loc 1 111 9
	j	.L15
.L24:
	.loc 1 116 9
	nop
	j	.L15
.L25:
	.loc 1 106 9
	nop
	j	.L15
.L26:
	.loc 1 101 9
	nop
	j	.L15
.L27:
	.loc 1 96 9
	nop
	j	.L15
.L28:
	.loc 1 91 9
	nop
	j	.L15
.L29:
	.loc 1 86 9
	nop
.L15:
	.loc 1 123 12
	lw	a5,-20(s0)
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
.LFE4:
	.size	utils_tlv_bl_pack_auto, .-utils_tlv_bl_pack_auto
	.section	.text.utils_tlv_bl_unpack_auto,"ax",@progbits
	.align	1
	.globl	utils_tlv_bl_unpack_auto
	.type	utils_tlv_bl_unpack_auto, @function
utils_tlv_bl_unpack_auto:
.LFB5:
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
	mv	a5,a2
	sw	a3,-48(s0)
	sh	a5,-42(s0)
	.loc 1 128 9
	li	a5,-2
	sw	a5,-20(s0)
	.loc 1 130 5
	lhu	a5,-42(s0)
	li	a4,8
	beq	a5,a4,.L41
	li	a4,8
	bgt	a5,a4,.L32
	li	a4,7
	beq	a5,a4,.L33
	li	a4,7
	bgt	a5,a4,.L32
	li	a4,6
	beq	a5,a4,.L42
	li	a4,6
	bgt	a5,a4,.L32
	li	a4,5
	beq	a5,a4,.L43
	li	a4,5
	bgt	a5,a4,.L32
	li	a4,4
	beq	a5,a4,.L44
	li	a4,4
	bgt	a5,a4,.L32
	li	a4,3
	beq	a5,a4,.L45
	li	a4,3
	bgt	a5,a4,.L32
	li	a4,1
	bne	a5,a4,.L46
.LBB2:
	.loc 1 133 18
	li	a5,1
	sb	a5,-21(s0)
	.loc 1 135 19
	addi	a5,s0,-21
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	utils_tlv_bl_unpack_bool
	sw	a0,-20(s0)
	.loc 1 136 26
	lbu	a4,-21(s0)
	lw	a5,-48(s0)
	sb	a4,0(a5)
.LBE2:
	.loc 1 138 9
	j	.L32
.L33:
.LBB3:
	.loc 1 166 22
	sw	zero,-28(s0)
	.loc 1 168 19
	addi	a5,s0,-28
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	utils_tlv_bl_unpack_uint32
	sw	a0,-20(s0)
	.loc 1 169 30
	lw	a4,-28(s0)
	lw	a5,-48(s0)
	sw	a4,0(a5)
.LBE3:
	.loc 1 171 9
	j	.L32
.L41:
	.loc 1 176 9
	nop
	j	.L32
.L42:
	.loc 1 163 9
	nop
	j	.L32
.L43:
	.loc 1 158 9
	nop
	j	.L32
.L44:
	.loc 1 153 9
	nop
	j	.L32
.L45:
	.loc 1 148 9
	nop
	j	.L32
.L46:
	.loc 1 143 9
	nop
.L32:
	.loc 1 183 12
	lw	a5,-20(s0)
	.loc 1 184 1
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
.LFE5:
	.size	utils_tlv_bl_unpack_auto, .-utils_tlv_bl_unpack_auto
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_tlv_bl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2dc
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xa
	.4byte	.LASF31
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
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x7
	.4byte	.LASF8
	.byte	0x31
	.byte	0x1c
	.4byte	0x59
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x34
	.byte	0x1b
	.4byte	0x6b
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x7
	.byte	0x1
	.4byte	0x47
	.byte	0x3
	.byte	0x28
	.byte	0x6
	.4byte	0xd0
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x7
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x7e
	.4byte	0x79
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x163
	.uleb128 0x2
	.string	"buf"
	.byte	0x7e
	.byte	0x28
	.4byte	0x163
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x7e
	.byte	0x31
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x7e
	.byte	0x42
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x7e
	.byte	0x4e
	.4byte	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.string	"ret"
	.byte	0x80
	.byte	0x9
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x14a
	.uleb128 0x5
	.string	"val"
	.byte	0x85
	.byte	0x12
	.4byte	0x16a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0xe
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x5
	.string	"val"
	.byte	0xa6
	.byte	0x16
	.4byte	0x60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x60
	.uleb128 0xf
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x2
	.4byte	.LASF25
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x48
	.4byte	0x79
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d0
	.uleb128 0x2
	.string	"buf"
	.byte	0x48
	.byte	0x26
	.4byte	0x163
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x48
	.byte	0x2f
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x48
	.byte	0x40
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x48
	.byte	0x4c
	.4byte	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.string	"ret"
	.byte	0x4a
	.byte	0x9
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x3e
	.4byte	0x79
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x213
	.uleb128 0x2
	.string	"buf"
	.byte	0x3e
	.byte	0x2a
	.4byte	0x163
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x3e
	.byte	0x33
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"val"
	.byte	0x3e
	.byte	0x45
	.4byte	0x163
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x34
	.4byte	0x79
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x256
	.uleb128 0x2
	.string	"buf"
	.byte	0x34
	.byte	0x28
	.4byte	0x163
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x34
	.byte	0x31
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"val"
	.byte	0x34
	.byte	0x3f
	.4byte	0x256
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x9
	.4byte	0x16a
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x2a
	.4byte	0x79
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29e
	.uleb128 0x2
	.string	"buf"
	.byte	0x2a
	.byte	0x28
	.4byte	0x163
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x2a
	.byte	0x31
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"val"
	.byte	0x2a
	.byte	0x42
	.4byte	0x60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x20
	.byte	0x5
	.4byte	0x79
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.string	"buf"
	.byte	0x20
	.byte	0x26
	.4byte	0x163
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x20
	.byte	0x2f
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"val"
	.byte	0x20
	.byte	0x3c
	.4byte	0x16a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x16
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
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
	.byte	0x7
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"utils_tlv_bl_pack_auto"
.LASF28:
	.string	"utils_tlv_bl_unpack_uint32"
.LASF25:
	.string	"_Bool"
.LASF18:
	.string	"CFG_ELEMENT_TYPE_UINT16"
.LASF20:
	.string	"CFG_ELEMENT_TYPE_UINT32"
.LASF16:
	.string	"CFG_ELEMENT_TYPE_UINT8"
.LASF24:
	.string	"arg1"
.LASF6:
	.string	"unsigned char"
.LASF10:
	.string	"long unsigned int"
.LASF7:
	.string	"short unsigned int"
.LASF15:
	.string	"CFG_ELEMENT_TYPE_SINT8"
.LASF33:
	.string	"utils_tlv_bl_pack_bool"
.LASF13:
	.string	"CFG_ELEMENT_TYPE_UNKNOWN"
.LASF12:
	.string	"unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF19:
	.string	"CFG_ELEMENT_TYPE_SINT32"
.LASF17:
	.string	"CFG_ELEMENT_TYPE_SINT16"
.LASF26:
	.string	"utils_tlv_bl_unpack_auto"
.LASF30:
	.string	"utils_tlv_bl_pack_uint32"
.LASF14:
	.string	"CFG_ELEMENT_TYPE_BOOLEAN"
.LASF5:
	.string	"long long int"
.LASF23:
	.string	"type"
.LASF21:
	.string	"CFG_ELEMENT_TYPE_STRING"
.LASF8:
	.string	"uint16_t"
.LASF3:
	.string	"short int"
.LASF31:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF22:
	.string	"buf_sz"
.LASF9:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF32:
	.string	"CFG_ELEMENT_TYPE"
.LASF2:
	.string	"signed char"
.LASF29:
	.string	"utils_tlv_bl_unpack_bool"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_tlv_bl.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
