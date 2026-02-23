	.file	"fdt_empty_tree.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blfdt" "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_empty_tree.c"
	.section	.rodata
	.align	2
.LC0:
	.string	""
	.section	.text.fdt_create_empty_tree,"ax",@progbits
	.align	1
	.globl	fdt_create_empty_tree
	.type	fdt_create_empty_tree, @function
fdt_create_empty_tree:
.LFB40:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_empty_tree.c"
	.loc 1 38 1
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
	.loc 1 41 11
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_create
	sw	a0,-20(s0)
	.loc 1 42 8
	lw	a5,-20(s0)
	beq	a5,zero,.L2
	.loc 1 43 16
	lw	a5,-20(s0)
	j	.L3
.L2:
	.loc 1 45 11
	lw	a0,-36(s0)
	call	fdt_finish_reservemap
	sw	a0,-20(s0)
	.loc 1 46 8
	lw	a5,-20(s0)
	beq	a5,zero,.L4
	.loc 1 47 16
	lw	a5,-20(s0)
	j	.L3
.L4:
	.loc 1 49 11
	lui	a5,%hi(.LC0)
	addi	a1,a5,%lo(.LC0)
	lw	a0,-36(s0)
	call	fdt_begin_node
	sw	a0,-20(s0)
	.loc 1 50 8
	lw	a5,-20(s0)
	beq	a5,zero,.L5
	.loc 1 51 16
	lw	a5,-20(s0)
	j	.L3
.L5:
	.loc 1 53 11
	lw	a0,-36(s0)
	call	fdt_end_node
	sw	a0,-20(s0)
	.loc 1 54 8
	lw	a5,-20(s0)
	beq	a5,zero,.L6
	.loc 1 55 16
	lw	a5,-20(s0)
	j	.L3
.L6:
	.loc 1 57 11
	lw	a0,-36(s0)
	call	fdt_finish
	sw	a0,-20(s0)
	.loc 1 58 8
	lw	a5,-20(s0)
	beq	a5,zero,.L7
	.loc 1 59 16
	lw	a5,-20(s0)
	j	.L3
.L7:
	.loc 1 61 12
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lw	a0,-36(s0)
	call	fdt_open_into
	mv	a5,a0
.L3:
	.loc 1 62 1
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
.LFE40:
	.size	fdt_create_empty_tree, .-fdt_create_empty_tree
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/libfdt.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x164
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
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
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x8
	.4byte	0x7a
	.uleb128 0x4
	.4byte	0x81
	.uleb128 0x4
	.4byte	0x90
	.uleb128 0x9
	.uleb128 0x3
	.4byte	.LASF13
	.2byte	0x5a1
	.4byte	0x2b
	.4byte	0xb0
	.uleb128 0x2
	.4byte	0x8b
	.uleb128 0x2
	.4byte	0x78
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF14
	.2byte	0x59a
	.4byte	0x2b
	.4byte	0xc5
	.uleb128 0x2
	.4byte	0x78
	.byte	0
	.uleb128 0x3
	.4byte	.LASF15
	.2byte	0x599
	.4byte	0x2b
	.4byte	0xda
	.uleb128 0x2
	.4byte	0x78
	.byte	0
	.uleb128 0x3
	.4byte	.LASF16
	.2byte	0x574
	.4byte	0x2b
	.4byte	0xf4
	.uleb128 0x2
	.4byte	0x78
	.uleb128 0x2
	.4byte	0x86
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.2byte	0x573
	.4byte	0x2b
	.4byte	0x109
	.uleb128 0x2
	.4byte	0x78
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.2byte	0x570
	.4byte	0x2b
	.4byte	0x123
	.uleb128 0x2
	.4byte	0x78
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x25
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.string	"buf"
	.byte	0x1
	.byte	0x25
	.byte	0x21
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x25
	.byte	0x2a
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"err"
	.byte	0x1
	.byte	0x27
	.byte	0x9
	.4byte	0x2b
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
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
	.4byte	.LFB40
	.uleb128 .LFE40-.LFB40
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"long long int"
.LASF2:
	.string	"unsigned int"
.LASF8:
	.string	"unsigned char"
.LASF18:
	.string	"fdt_create"
.LASF10:
	.string	"long unsigned int"
.LASF20:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF11:
	.string	"long long unsigned int"
.LASF16:
	.string	"fdt_begin_node"
.LASF21:
	.string	"fdt_create_empty_tree"
.LASF14:
	.string	"fdt_finish"
.LASF17:
	.string	"fdt_finish_reservemap"
.LASF15:
	.string	"fdt_end_node"
.LASF12:
	.string	"char"
.LASF13:
	.string	"fdt_open_into"
.LASF7:
	.string	"long int"
.LASF9:
	.string	"short unsigned int"
.LASF5:
	.string	"signed char"
.LASF19:
	.string	"bufsize"
.LASF4:
	.string	"long double"
.LASF6:
	.string	"short int"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_empty_tree.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blfdt"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
