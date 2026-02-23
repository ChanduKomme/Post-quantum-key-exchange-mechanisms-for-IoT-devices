	.file	"list.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/freertos" "/home/chandu/sdk/bl602_iot_sdk/components/freertos/list.c"
	.section	.text.vListInitialise,"ax",@progbits
	.align	1
	.globl	vListInitialise
	.type	vListInitialise, @function
vListInitialise:
.LFB1:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/list.c"
	.loc 1 38 1
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
	.loc 1 42 37
	lw	a5,-20(s0)
	addi	a4,a5,8
	.loc 1 42 18
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 46 30
	lw	a5,-20(s0)
	li	a4,-1
	sw	a4,8(a5)
	.loc 1 50 45
	lw	a5,-20(s0)
	addi	a4,a5,8
	.loc 1 50 26
	lw	a5,-20(s0)
	sw	a4,12(a5)
	.loc 1 51 49
	lw	a5,-20(s0)
	addi	a4,a5,8
	.loc 1 51 30
	lw	a5,-20(s0)
	sw	a4,16(a5)
	.loc 1 53 26
	lw	a5,-20(s0)
	sw	zero,0(a5)
	.loc 1 59 1
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
.LFE1:
	.size	vListInitialise, .-vListInitialise
	.section	.text.vListInitialiseItem,"ax",@progbits
	.align	1
	.globl	vListInitialiseItem
	.type	vListInitialiseItem, @function
vListInitialiseItem:
.LFB2:
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
	.loc 1 65 22
	lw	a5,-20(s0)
	sw	zero,16(a5)
	.loc 1 71 1
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
.LFE2:
	.size	vListInitialiseItem, .-vListInitialiseItem
	.section	.text.vListInsertEnd,"ax",@progbits
	.align	1
	.globl	vListInsertEnd
	.type	vListInsertEnd, @function
vListInsertEnd:
.LFB3:
	.loc 1 75 1
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
	.loc 1 76 20
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 87 24
	lw	a5,-40(s0)
	lw	a4,-20(s0)
	sw	a4,4(a5)
	.loc 1 88 37
	lw	a5,-20(s0)
	lw	a4,8(a5)
	.loc 1 88 28
	lw	a5,-40(s0)
	sw	a4,8(a5)
	.loc 1 93 9
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 93 30
	lw	a4,-40(s0)
	sw	a4,4(a5)
	.loc 1 94 22
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	.loc 1 97 29
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	sw	a4,16(a5)
	.loc 1 99 10
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 99 29
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 100 1
	nop
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
	.size	vListInsertEnd, .-vListInsertEnd
	.section	.text.vListInsert,"ax",@progbits
	.align	1
	.globl	vListInsert
	.type	vListInsert, @function
vListInsert:
.LFB4:
	.loc 1 104 1
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
	.loc 1 106 18
	lw	a5,-40(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 122 4
	lw	a4,-24(s0)
	li	a5,-1
	bne	a4,a5,.L5
	.loc 1 124 14
	lw	a5,-36(s0)
	lw	a5,16(a5)
	sw	a5,-20(s0)
	j	.L6
.L5:
	.loc 1 150 19
	lw	a5,-36(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
	.loc 1 150 3
	j	.L7
.L8:
	.loc 1 150 125 discriminator 3
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
.L7:
	.loc 1 150 71 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 150 79 discriminator 1
	lw	a5,0(a5)
	.loc 1 150 92 discriminator 1
	lw	a4,-24(s0)
	bgeu	a4,a5,.L8
.L6:
	.loc 1 157 36
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 157 24
	lw	a5,-40(s0)
	sw	a4,4(a5)
	.loc 1 158 15
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 1 158 36
	lw	a4,-40(s0)
	sw	a4,8(a5)
	.loc 1 159 28
	lw	a5,-40(s0)
	lw	a4,-20(s0)
	sw	a4,8(a5)
	.loc 1 160 21
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,4(a5)
	.loc 1 164 29
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	sw	a4,16(a5)
	.loc 1 166 10
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 166 29
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 167 1
	nop
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
	.size	vListInsert, .-vListInsert
	.section	.text.uxListRemove,"ax",@progbits
	.align	1
	.globl	uxListRemove
	.type	uxListRemove, @function
uxListRemove:
.LFB5:
	.loc 1 171 1
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
	.loc 1 174 16
	lw	a5,-36(s0)
	lw	a5,16(a5)
	sw	a5,-20(s0)
	.loc 1 176 16
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 176 53
	lw	a4,-36(s0)
	lw	a4,8(a4)
	.loc 1 176 37
	sw	a4,8(a5)
	.loc 1 177 16
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 177 53
	lw	a4,-36(s0)
	lw	a4,4(a4)
	.loc 1 177 37
	sw	a4,4(a5)
	.loc 1 183 12
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 183 4
	lw	a4,-36(s0)
	bne	a4,a5,.L10
	.loc 1 185 35
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 1 185 19
	lw	a5,-20(s0)
	sw	a4,4(a5)
.L10:
	.loc 1 192 30
	lw	a5,-36(s0)
	sw	zero,16(a5)
	.loc 1 193 10
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 193 29
	addi	a4,a5,-1
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 195 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 196 1
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
	.size	uxListRemove, .-uxListRemove
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/list.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2a0
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xa
	.4byte	.LASF39
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
	.uleb128 0xb
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
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x40
	.byte	0x12
	.4byte	0x81
	.uleb128 0xd
	.4byte	0x8d
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x81
	.uleb128 0x7
	.4byte	0x9e
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x14
	.byte	0x8c
	.byte	0x8
	.4byte	0xf8
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x8f
	.byte	0xd
	.4byte	0x9e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x90
	.byte	0x16
	.4byte	0xf8
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x91
	.byte	0x16
	.4byte	0xf8
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x92
	.byte	0x9
	.4byte	0x78
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x93
	.byte	0x11
	.4byte	0x12e
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.4byte	0xaf
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x14
	.byte	0xa4
	.byte	0x10
	.4byte	0x12e
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0xa7
	.byte	0x17
	.4byte	0x99
	.byte	0
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0xa8
	.byte	0xf
	.4byte	0x17c
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0xa9
	.byte	0x11
	.4byte	0x170
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	0xfd
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x4
	.byte	0x96
	.byte	0x1b
	.4byte	0xaf
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0xc
	.byte	0x98
	.byte	0x8
	.4byte	0x170
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x9b
	.byte	0xd
	.4byte	0x9e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x9c
	.byte	0x16
	.4byte	0xf8
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x9d
	.byte	0x16
	.4byte	0xf8
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x4
	.byte	0x9f
	.byte	0x20
	.4byte	0x13f
	.uleb128 0x5
	.4byte	0x133
	.uleb128 0x7
	.4byte	0x17c
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x4
	.byte	0xab
	.byte	0x3
	.4byte	0xfd
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x1
	.byte	0xaa
	.byte	0xd
	.4byte	0x8d
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c9
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0xaa
	.byte	0x2e
	.4byte	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0xae
	.byte	0x10
	.4byte	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x186
	.uleb128 0x7
	.4byte	0x1c9
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x67
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x220
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x67
	.byte	0x22
	.4byte	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x67
	.byte	0x3d
	.4byte	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x69
	.byte	0xd
	.4byte	0x17c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x6a
	.byte	0x12
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x4a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25f
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x4a
	.byte	0x25
	.4byte	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x4a
	.byte	0x40
	.4byte	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x4c
	.byte	0x14
	.4byte	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x3e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x282
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x3e
	.byte	0x2e
	.4byte	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x1
	.byte	0x25
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x25
	.byte	0x26
	.4byte	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
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
.LASF20:
	.string	"pvContainer"
.LASF15:
	.string	"TickType_t"
.LASF28:
	.string	"MiniListItem_t"
.LASF16:
	.string	"xItemValue"
.LASF25:
	.string	"xListEnd"
.LASF19:
	.string	"pvOwner"
.LASF21:
	.string	"xLIST_ITEM"
.LASF6:
	.string	"unsigned char"
.LASF10:
	.string	"long unsigned int"
.LASF30:
	.string	"pxItemToRemove"
.LASF8:
	.string	"short unsigned int"
.LASF37:
	.string	"vListInitialiseItem"
.LASF29:
	.string	"List_t"
.LASF23:
	.string	"uxNumberOfItems"
.LASF36:
	.string	"vListInsertEnd"
.LASF17:
	.string	"pxNext"
.LASF2:
	.string	"unsigned int"
.LASF41:
	.string	"vListInitialise"
.LASF34:
	.string	"xValueOfInsertion"
.LASF11:
	.string	"long long unsigned int"
.LASF38:
	.string	"pxItem"
.LASF14:
	.string	"UBaseType_t"
.LASF26:
	.string	"ListItem_t"
.LASF3:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF33:
	.string	"pxIterator"
.LASF7:
	.string	"short int"
.LASF24:
	.string	"pxIndex"
.LASF39:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF18:
	.string	"pxPrevious"
.LASF13:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF4:
	.string	"long double"
.LASF27:
	.string	"xMINI_LIST_ITEM"
.LASF5:
	.string	"signed char"
.LASF31:
	.string	"pxList"
.LASF22:
	.string	"xLIST"
.LASF40:
	.string	"uxListRemove"
.LASF32:
	.string	"pxNewListItem"
.LASF35:
	.string	"vListInsert"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/list.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/freertos"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
