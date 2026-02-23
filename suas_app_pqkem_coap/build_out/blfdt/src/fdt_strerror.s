	.file	"fdt_strerror.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.fdt_strerror.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"<valid offset/length>"
	.align	2
.LC1:
	.string	"<no error>"
	.align	2
.LC2:
	.string	"<unknown error>"
	.section	.text.fdt_strerror,"ax",@progbits
	.align	1
	.globl	fdt_strerror
	.type	fdt_strerror, @function
fdt_strerror:
.LVL0:
.LFB40:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
	bgt	a0,zero,.L3
.LM4:
.LM5:
	beq	a0,zero,.L4
.LM6:
.LM7:
	li	a5,-18
	bleu	a0,a5,.L5
.LBB2:
.LM8:
.LM9:
	lui	a5,%hi(fdt_errtable)
	slli	a0,a0,2
.LVL1:
.LM10:
	addi	a5,a5,%lo(fdt_errtable)
	sub	a5,a5,a0
	lw	a0,0(a5)
.LVL2:
.LM11:
.LM12:
	bne	a0,zero,.L1
.LVL3:
.L5:
.LM13:
.LBE2:
.LM14:
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
.L1:
.LM15:
	ret
.LVL4:
.L3:
.LM16:
	lui	a0,%hi(.LC0)
.LVL5:
.LM17:
	addi	a0,a0,%lo(.LC0)
	ret
.LVL6:
.L4:
.LM18:
	lui	a0,%hi(.LC1)
.LVL7:
.LM19:
	addi	a0,a0,%lo(.LC1)
	ret
	.cfi_endproc
.LFE40:
	.size	fdt_strerror, .-fdt_strerror
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"FDT_ERR_NOTFOUND"
	.align	2
.LC4:
	.string	"FDT_ERR_EXISTS"
	.align	2
.LC5:
	.string	"FDT_ERR_NOSPACE"
	.align	2
.LC6:
	.string	"FDT_ERR_BADOFFSET"
	.align	2
.LC7:
	.string	"FDT_ERR_BADPATH"
	.align	2
.LC8:
	.string	"FDT_ERR_BADPHANDLE"
	.align	2
.LC9:
	.string	"FDT_ERR_BADSTATE"
	.align	2
.LC10:
	.string	"FDT_ERR_TRUNCATED"
	.align	2
.LC11:
	.string	"FDT_ERR_BADMAGIC"
	.align	2
.LC12:
	.string	"FDT_ERR_BADVERSION"
	.align	2
.LC13:
	.string	"FDT_ERR_BADSTRUCTURE"
	.align	2
.LC14:
	.string	"FDT_ERR_BADLAYOUT"
	.align	2
.LC15:
	.string	"FDT_ERR_INTERNAL"
	.align	2
.LC16:
	.string	"FDT_ERR_BADNCELLS"
	.align	2
.LC17:
	.string	"FDT_ERR_BADVALUE"
	.align	2
.LC18:
	.string	"FDT_ERR_BADOVERLAY"
	.align	2
.LC19:
	.string	"FDT_ERR_NOPHANDLES"
	.section	.rodata.fdt_errtable,"a"
	.align	2
	.type	fdt_errtable, @object
	.size	fdt_errtable, 72
fdt_errtable:
	.zero	4
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x10b
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL2
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	0x78
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7f
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x4
	.byte	0x1
	.byte	0x25
	.byte	0x8
	.4byte	0xa5
	.uleb128 0x7
	.string	"str"
	.byte	0x1
	.byte	0x26
	.byte	0x11
	.4byte	0x84
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x8a
	.4byte	0xb5
	.uleb128 0x9
	.4byte	0x32
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0x2c
	.byte	0x1d
	.4byte	0xa5
	.uleb128 0x5
	.byte	0x3
	.4byte	fdt_errtable
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x43
	.byte	0xd
	.4byte	0x84
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0x43
	.byte	0x1e
	.4byte	0x39
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xd
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0xe
	.string	"s"
	.byte	0x1
	.byte	0x4a
	.byte	0x15
	.4byte	0x84
	.4byte	.LLST1
	.4byte	.LVUS1
	.byte	0
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0xb
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0xf
	.uleb128 0xf
	.uleb128 0x10
	.uleb128 0x10
	.uleb128 0x11
	.uleb128 0x11
	.uleb128 0x12
	.uleb128 0x12
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LVL4-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL4-.LVL0
	.uleb128 .LVL5-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL5-.LVL0
	.uleb128 .LVL6-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.LVL0
	.uleb128 .LVL7-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL7-.LVL0
	.uleb128 .LFE40-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0xa
	.uleb128 0xc
.LLST1:
	.byte	0x8
	.4byte	.LVL2
	.uleb128 .LVL3-.LVL2
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.Ldebug_loc3:
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
.LLRL2:
	.byte	0x7
	.4byte	.LFB40
	.uleb128 .LFE40-.LFB40
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.4byte	.LELT0-.LSLT0
.LSLT0:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf2
	.byte	0xd
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.4byte	.LASF1
	.4byte	.LASF18
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF19
	.byte	0x1
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x5a
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x1b
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x3
	.sleb128 -11
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x19
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE40
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"long long int"
.LASF3:
	.string	"unsigned int"
.LASF14:
	.string	"fdt_errtabent"
.LASF17:
	.string	"errval"
.LASF11:
	.string	"long unsigned int"
.LASF13:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF2:
	.string	"long long unsigned int"
.LASF15:
	.string	"fdt_errtable"
.LASF16:
	.string	"fdt_strerror"
.LASF9:
	.string	"unsigned char"
.LASF8:
	.string	"long int"
.LASF10:
	.string	"short unsigned int"
.LASF6:
	.string	"signed char"
.LASF5:
	.string	"long double"
.LASF7:
	.string	"short int"
.LASF12:
	.string	"char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF18:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/blfdt"
.LASF19:
	.string	"fdt_strerror.c"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_strerror.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
