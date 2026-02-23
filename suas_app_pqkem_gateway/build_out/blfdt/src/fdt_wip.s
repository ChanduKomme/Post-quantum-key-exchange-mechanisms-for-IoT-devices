	.file	"fdt_wip.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blfdt" "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_wip.c"
	.section	.text.cpu_to_fdt32,"ax",@progbits
	.align	1
	.type	cpu_to_fdt32, @function
cpu_to_fdt32:
.LFB4:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/libfdt_env.h"
	.loc 1 125 1
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
	.loc 1 126 57
	addi	a5,s0,-20
	.loc 1 126 60
	lbu	a5,0(a5)
	.loc 1 126 65
	slli	a4,a5,24
	.loc 1 126 111
	addi	a5,s0,-20
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 126 116
	slli	a5,a5,16
	.loc 1 126 72
	or	a4,a4,a5
	.loc 1 126 162
	addi	a5,s0,-20
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 126 167
	slli	a5,a5,8
	.loc 1 126 123
	or	a4,a4,a5
	.loc 1 126 211
	addi	a5,s0,-20
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 126 12
	or	a5,a4,a5
	.loc 1 127 1
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
.LFE4:
	.size	cpu_to_fdt32, .-cpu_to_fdt32
	.section	.text.fdt_offset_ptr_w,"ax",@progbits
	.align	1
	.type	fdt_offset_ptr_w, @function
fdt_offset_ptr_w:
.LFB7:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/libfdt.h"
	.loc 2 180 1
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
	.loc 2 181 31
	lw	a5,-28(s0)
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	fdt_offset_ptr
	mv	a5,a0
	.loc 2 182 1
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
.LFE7:
	.size	fdt_offset_ptr_w, .-fdt_offset_ptr_w
	.section	.text.fdt_get_property_w,"ax",@progbits
	.align	1
	.type	fdt_get_property_w, @function
fdt_get_property_w:
.LFB21:
	.loc 2 693 1
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
	sw	a3,-32(s0)
	.loc 2 695 9
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	fdt_get_property
	mv	a5,a0
	.loc 2 696 1
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
.LFE21:
	.size	fdt_get_property_w, .-fdt_get_property_w
	.section	.text.fdt_getprop_namelen_w,"ax",@progbits
	.align	1
	.type	fdt_getprop_namelen_w, @function
fdt_getprop_namelen_w:
.LFB22:
	.loc 2 751 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	.loc 2 752 31
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	fdt_getprop_namelen
	mv	a5,a0
	.loc 2 754 1
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
.LFE22:
	.size	fdt_getprop_namelen_w, .-fdt_getprop_namelen_w
	.section	.text.fdt_setprop_inplace_namelen_partial,"ax",@progbits
	.align	1
	.globl	fdt_setprop_inplace_namelen_partial
	.type	fdt_setprop_inplace_namelen_partial, @function
fdt_setprop_inplace_namelen_partial:
.LFB40:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_wip.c"
	.loc 3 41 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	.loc 3 45 15
	addi	a5,s0,-24
	mv	a4,a5
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_getprop_namelen_w
	sw	a0,-20(s0)
	.loc 3 47 8
	lw	a5,-20(s0)
	bne	a5,zero,.L10
	.loc 3 48 16
	lw	a5,-24(s0)
	j	.L13
.L10:
	.loc 3 50 24
	lw	a4,-60(s0)
	lw	a5,-52(s0)
	add	a5,a4,a5
	.loc 3 50 17
	lw	a4,-24(s0)
	.loc 3 50 8
	bleu	a5,a4,.L12
	.loc 3 51 16
	li	a5,-3
	j	.L13
.L12:
	.loc 3 53 5
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	add	a5,a4,a5
	lw	a4,-60(s0)
	mv	a2,a4
	lw	a1,-56(s0)
	mv	a0,a5
	call	memcpy
	.loc 3 54 12
	li	a5,0
.L13:
	.loc 3 55 1
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
.LFE40:
	.size	fdt_setprop_inplace_namelen_partial, .-fdt_setprop_inplace_namelen_partial
	.section	.text.fdt_setprop_inplace,"ax",@progbits
	.align	1
	.globl	fdt_setprop_inplace
	.type	fdt_setprop_inplace, @function
fdt_setprop_inplace:
.LFB41:
	.loc 3 59 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	.loc 3 63 15
	addi	a5,s0,-24
	mv	a3,a5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_getprop
	sw	a0,-20(s0)
	.loc 3 64 8
	lw	a5,-20(s0)
	bne	a5,zero,.L15
	.loc 3 65 16
	lw	a5,-24(s0)
	j	.L18
.L15:
	.loc 3 67 17
	lw	a5,-24(s0)
	.loc 3 67 8
	lw	a4,-52(s0)
	beq	a4,a5,.L17
	.loc 3 68 16
	li	a5,-3
	j	.L18
.L17:
	.loc 3 71 28
	lw	a0,-44(s0)
	call	strlen
	mv	a5,a0
	.loc 3 70 12
	mv	a3,a5
	lw	a6,-52(s0)
	lw	a5,-48(s0)
	li	a4,0
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_setprop_inplace_namelen_partial
	mv	a5,a0
.L18:
	.loc 3 73 1
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
.LFE41:
	.size	fdt_setprop_inplace, .-fdt_setprop_inplace
	.section	.text.fdt_nop_region_,"ax",@progbits
	.align	1
	.type	fdt_nop_region_, @function
fdt_nop_region_:
.LFB42:
	.loc 3 76 1
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
	.loc 3 79 12
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 3 79 5
	j	.L20
.L21:
	.loc 3 80 14
	li	a0,4
	call	cpu_to_fdt32
	mv	a4,a0
	.loc 3 80 12 discriminator 1
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 3 79 57 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
.L20:
	.loc 3 79 48 discriminator 1
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 3 79 31 discriminator 1
	lw	a4,-20(s0)
	bltu	a4,a5,.L21
	.loc 3 81 1
	nop
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
.LFE42:
	.size	fdt_nop_region_, .-fdt_nop_region_
	.section	.text.fdt_nop_property,"ax",@progbits
	.align	1
	.globl	fdt_nop_property
	.type	fdt_nop_property, @function
fdt_nop_property:
.LFB43:
	.loc 3 84 1
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
	.loc 3 88 12
	addi	a5,s0,-24
	mv	a3,a5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_get_property_w
	sw	a0,-20(s0)
	.loc 3 89 8
	lw	a5,-20(s0)
	bne	a5,zero,.L23
	.loc 3 90 16
	lw	a5,-24(s0)
	j	.L25
.L23:
	.loc 3 92 31
	lw	a5,-24(s0)
	addi	a5,a5,12
	.loc 3 92 5
	mv	a1,a5
	lw	a0,-20(s0)
	call	fdt_nop_region_
	.loc 3 94 12
	li	a5,0
.L25:
	.loc 3 95 1
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
.LFE43:
	.size	fdt_nop_property, .-fdt_nop_property
	.section	.text.fdt_node_end_offset_,"ax",@progbits
	.align	1
	.globl	fdt_node_end_offset_
	.type	fdt_node_end_offset_, @function
fdt_node_end_offset_:
.LFB44:
	.loc 3 98 1
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
	.loc 3 99 9
	sw	zero,-20(s0)
	.loc 3 101 11
	j	.L27
.L29:
	.loc 3 102 18
	addi	a5,s0,-20
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_next_node
	sw	a0,-40(s0)
.L27:
	.loc 3 101 26
	lw	a5,-40(s0)
	blt	a5,zero,.L28
	.loc 3 101 36 discriminator 1
	lw	a5,-20(s0)
	.loc 3 101 26 discriminator 1
	bge	a5,zero,.L29
.L28:
	.loc 3 104 12
	lw	a5,-40(s0)
	.loc 3 105 1
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
.LFE44:
	.size	fdt_node_end_offset_, .-fdt_node_end_offset_
	.section	.text.fdt_nop_node,"ax",@progbits
	.align	1
	.globl	fdt_nop_node
	.type	fdt_nop_node, @function
fdt_nop_node:
.LFB45:
	.loc 3 108 1
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
	.loc 3 111 17
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_node_end_offset_
	sw	a0,-20(s0)
	.loc 3 112 8
	lw	a5,-20(s0)
	bge	a5,zero,.L32
	.loc 3 113 16
	lw	a5,-20(s0)
	j	.L33
.L32:
	.loc 3 115 5
	li	a2,0
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_offset_ptr_w
	mv	a3,a0
	.loc 3 115 5 is_stmt 0 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	sub	a5,a4,a5
	mv	a1,a5
	mv	a0,a3
	call	fdt_nop_region_
	.loc 3 117 12 is_stmt 1
	li	a5,0
.L33:
	.loc 3 118 1
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
.LFE45:
	.size	fdt_nop_node, .-fdt_nop_node
	.text
.Letext0:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/fdt.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x597
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.4byte	.LASF8
	.byte	0x4
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
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x8
	.4byte	.LASF9
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x74
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x8e
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x5
	.byte	0x56
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x15
	.byte	0x4
	.uleb128 0xc
	.4byte	0xa8
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0xd
	.4byte	0xaf
	.uleb128 0x7
	.4byte	0xb6
	.uleb128 0x7
	.4byte	0xca
	.uleb128 0xc
	.4byte	0xc0
	.uleb128 0x16
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x63
	.byte	0x12
	.4byte	0x82
	.uleb128 0x17
	.4byte	.LASF50
	.byte	0xc
	.byte	0x6
	.byte	0x74
	.byte	0x8
	.4byte	0x113
	.uleb128 0xe
	.string	"tag"
	.byte	0x75
	.4byte	0xcb
	.byte	0
	.uleb128 0xe
	.string	"len"
	.byte	0x76
	.4byte	0xcb
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF18
	.byte	0x77
	.byte	0xd
	.4byte	0xcb
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x78
	.byte	0xa
	.4byte	0x118
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.4byte	0xd7
	.uleb128 0x18
	.4byte	0xaf
	.4byte	0x128
	.uleb128 0x19
	.4byte	0x3e
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x2
	.byte	0xb1
	.byte	0xd
	.4byte	0xc0
	.4byte	0x148
	.uleb128 0x1
	.4byte	0xc0
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x3e
	.byte	0
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x2
	.byte	0xdd
	.byte	0x5
	.4byte	0x2b
	.4byte	0x168
	.uleb128 0x1
	.4byte	0xc0
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x168
	.byte	0
	.uleb128 0x7
	.4byte	0x2b
	.uleb128 0xb
	.4byte	.LASF22
	.2byte	0x2b0
	.byte	0x1c
	.4byte	0x192
	.4byte	0x192
	.uleb128 0x1
	.4byte	0xc0
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0xbb
	.uleb128 0x1
	.4byte	0x168
	.byte	0
	.uleb128 0x7
	.4byte	0x113
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x7
	.byte	0x29
	.byte	0x8
	.4byte	0x32
	.4byte	0x1ad
	.uleb128 0x1
	.4byte	0xbb
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.2byte	0x311
	.byte	0xd
	.4byte	0xc0
	.4byte	0x1d2
	.uleb128 0x1
	.4byte	0xc0
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0xbb
	.uleb128 0x1
	.4byte	0x168
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.2byte	0x2ea
	.byte	0xd
	.4byte	0xc0
	.4byte	0x1fc
	.uleb128 0x1
	.4byte	0xc0
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0xbb
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x168
	.byte	0
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x7
	.byte	0x1f
	.byte	0x8
	.4byte	0xa8
	.4byte	0x21c
	.uleb128 0x1
	.4byte	0xaa
	.uleb128 0x1
	.4byte	0xc5
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x6b
	.4byte	0x2b
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x261
	.uleb128 0x2
	.string	"fdt"
	.byte	0x3
	.byte	0x6b
	.byte	0x18
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x3
	.byte	0x6b
	.byte	0x21
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF31
	.byte	0x6d
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x61
	.4byte	0x2b
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a6
	.uleb128 0x2
	.string	"fdt"
	.byte	0x3
	.byte	0x61
	.byte	0x20
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x3
	.byte	0x61
	.byte	0x29
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF32
	.byte	0x63
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x53
	.4byte	0x2b
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x308
	.uleb128 0x2
	.string	"fdt"
	.byte	0x3
	.byte	0x53
	.byte	0x1c
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x3
	.byte	0x53
	.byte	0x25
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x3
	.byte	0x53
	.byte	0x3d
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x55
	.byte	0x1a
	.4byte	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.string	"len"
	.byte	0x56
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.4byte	0xd7
	.uleb128 0x1a
	.4byte	.LASF47
	.byte	0x3
	.byte	0x4b
	.byte	0xd
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x34e
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x3
	.byte	0x4b
	.byte	0x23
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"len"
	.byte	0x3
	.byte	0x4b
	.byte	0x2e
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"p"
	.byte	0x4d
	.byte	0xe
	.4byte	0x34e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	0xcb
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x39
	.4byte	0x2b
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d3
	.uleb128 0x2
	.string	"fdt"
	.byte	0x3
	.byte	0x39
	.byte	0x1f
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x3
	.byte	0x39
	.byte	0x28
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x3
	.byte	0x39
	.byte	0x40
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"val"
	.byte	0x3
	.byte	0x3a
	.byte	0x19
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"len"
	.byte	0x3
	.byte	0x3a
	.byte	0x22
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.4byte	.LASF38
	.byte	0x3c
	.byte	0x11
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF39
	.byte	0x3d
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x25
	.4byte	0x2b
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x471
	.uleb128 0x2
	.string	"fdt"
	.byte	0x3
	.byte	0x25
	.byte	0x2f
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x3
	.byte	0x25
	.byte	0x38
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x3
	.byte	0x26
	.byte	0x21
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x3
	.byte	0x26
	.byte	0x2b
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"idx"
	.byte	0x3
	.byte	0x27
	.byte	0x1e
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"val"
	.byte	0x3
	.byte	0x27
	.byte	0x2f
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"len"
	.byte	0x3
	.byte	0x28
	.byte	0x19
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.4byte	.LASF38
	.byte	0x2a
	.byte	0xb
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF39
	.byte	0x2b
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF43
	.2byte	0x2ec
	.byte	0x15
	.4byte	0xa8
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d7
	.uleb128 0x12
	.string	"fdt"
	.2byte	0x2ec
	.byte	0x31
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF27
	.2byte	0x2ec
	.byte	0x3a
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF34
	.2byte	0x2ed
	.byte	0x23
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF41
	.2byte	0x2ed
	.byte	0x2d
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF42
	.2byte	0x2ee
	.byte	0x1c
	.4byte	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x11
	.4byte	.LASF44
	.2byte	0x2b2
	.byte	0x24
	.4byte	0x308
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52e
	.uleb128 0x12
	.string	"fdt"
	.2byte	0x2b2
	.byte	0x3d
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF27
	.2byte	0x2b2
	.byte	0x46
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF34
	.2byte	0x2b3
	.byte	0x2b
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF42
	.2byte	0x2b4
	.byte	0x24
	.4byte	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF45
	.byte	0x2
	.byte	0xb3
	.byte	0x15
	.4byte	0xa8
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x576
	.uleb128 0x2
	.string	"fdt"
	.byte	0x2
	.byte	0xb3
	.byte	0x2c
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x2
	.byte	0xb3
	.byte	0x35
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x2
	.byte	0xb3
	.byte	0x41
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF48
	.byte	0x1
	.byte	0x7c
	.byte	0x17
	.4byte	0xcb
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.string	"x"
	.byte	0x1
	.byte	0x7c
	.byte	0x2d
	.4byte	0x82
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
	.uleb128 0x3
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x3c
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
	.sleb128 2
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
	.uleb128 0xc
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x37
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
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
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
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
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
	.byte	0x7
	.4byte	.LFB7
	.uleb128 .LFE7-.LFB7
	.byte	0x7
	.4byte	.LFB21
	.uleb128 .LFE21-.LFB21
	.byte	0x7
	.4byte	.LFB22
	.uleb128 .LFE22-.LFB22
	.byte	0x7
	.4byte	.LFB40
	.uleb128 .LFE40-.LFB40
	.byte	0x7
	.4byte	.LFB41
	.uleb128 .LFE41-.LFB41
	.byte	0x7
	.4byte	.LFB42
	.uleb128 .LFE42-.LFB42
	.byte	0x7
	.4byte	.LFB43
	.uleb128 .LFE43-.LFB43
	.byte	0x7
	.4byte	.LFB44
	.uleb128 .LFE44-.LFB44
	.byte	0x7
	.4byte	.LFB45
	.uleb128 .LFE45-.LFB45
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF37:
	.string	"fdt_setprop_inplace"
.LASF47:
	.string	"fdt_nop_region_"
.LASF30:
	.string	"offset"
.LASF33:
	.string	"fdt_nop_property"
.LASF15:
	.string	"uintptr_t"
.LASF36:
	.string	"start"
.LASF28:
	.string	"fdt_nop_node"
.LASF41:
	.string	"namelen"
.LASF35:
	.string	"prop"
.LASF40:
	.string	"fdt_setprop_inplace_namelen_partial"
.LASF29:
	.string	"fdt_node_end_offset_"
.LASF17:
	.string	"fdt32_t"
.LASF23:
	.string	"strlen"
.LASF19:
	.string	"data"
.LASF20:
	.string	"fdt_offset_ptr"
.LASF10:
	.string	"unsigned char"
.LASF42:
	.string	"lenp"
.LASF44:
	.string	"fdt_get_property_w"
.LASF21:
	.string	"fdt_next_node"
.LASF13:
	.string	"long unsigned int"
.LASF25:
	.string	"fdt_getprop_namelen"
.LASF11:
	.string	"short unsigned int"
.LASF8:
	.string	"size_t"
.LASF46:
	.string	"checklen"
.LASF39:
	.string	"proplen"
.LASF22:
	.string	"fdt_get_property"
.LASF2:
	.string	"unsigned int"
.LASF14:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF50:
	.string	"fdt_property"
.LASF48:
	.string	"cpu_to_fdt32"
.LASF18:
	.string	"nameoff"
.LASF3:
	.string	"long long int"
.LASF49:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF32:
	.string	"depth"
.LASF26:
	.string	"memcpy"
.LASF45:
	.string	"fdt_offset_ptr_w"
.LASF6:
	.string	"short int"
.LASF38:
	.string	"propval"
.LASF27:
	.string	"nodeoffset"
.LASF43:
	.string	"fdt_getprop_namelen_w"
.LASF12:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF16:
	.string	"char"
.LASF4:
	.string	"long double"
.LASF24:
	.string	"fdt_getprop"
.LASF5:
	.string	"signed char"
.LASF34:
	.string	"name"
.LASF31:
	.string	"endoffset"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blfdt"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_wip.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
