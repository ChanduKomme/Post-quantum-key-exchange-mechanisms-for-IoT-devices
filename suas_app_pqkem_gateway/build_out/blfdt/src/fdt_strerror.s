	.file	"fdt_strerror.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blfdt" "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_strerror.c"
	.section	.rodata
	.align	2
.LC0:
	.string	"FDT_ERR_NOTFOUND"
	.align	2
.LC1:
	.string	"FDT_ERR_EXISTS"
	.align	2
.LC2:
	.string	"FDT_ERR_NOSPACE"
	.align	2
.LC3:
	.string	"FDT_ERR_BADOFFSET"
	.align	2
.LC4:
	.string	"FDT_ERR_BADPATH"
	.align	2
.LC5:
	.string	"FDT_ERR_BADPHANDLE"
	.align	2
.LC6:
	.string	"FDT_ERR_BADSTATE"
	.align	2
.LC7:
	.string	"FDT_ERR_TRUNCATED"
	.align	2
.LC8:
	.string	"FDT_ERR_BADMAGIC"
	.align	2
.LC9:
	.string	"FDT_ERR_BADVERSION"
	.align	2
.LC10:
	.string	"FDT_ERR_BADSTRUCTURE"
	.align	2
.LC11:
	.string	"FDT_ERR_BADLAYOUT"
	.align	2
.LC12:
	.string	"FDT_ERR_INTERNAL"
	.align	2
.LC13:
	.string	"FDT_ERR_BADNCELLS"
	.align	2
.LC14:
	.string	"FDT_ERR_BADVALUE"
	.align	2
.LC15:
	.string	"FDT_ERR_BADOVERLAY"
	.align	2
.LC16:
	.string	"FDT_ERR_NOPHANDLES"
	.section	.data.fdt_errtable,"aw"
	.align	2
	.type	fdt_errtable, @object
	.size	fdt_errtable, 72
fdt_errtable:
	.zero	4
	.word	.LC0
	.word	.LC1
	.word	.LC2
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
	.section	.rodata
	.align	2
.LC17:
	.string	"<valid offset/length>"
	.align	2
.LC18:
	.string	"<no error>"
	.align	2
.LC19:
	.string	"<unknown error>"
	.section	.text.fdt_strerror,"ax",@progbits
	.align	1
	.globl	fdt_strerror
	.type	fdt_strerror, @function
fdt_strerror:
.LFB40:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_strerror.c"
	.loc 1 68 1
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
	.loc 1 69 8
	lw	a5,-36(s0)
	ble	a5,zero,.L2
	.loc 1 70 16
	lui	a5,%hi(.LC17)
	addi	a5,a5,%lo(.LC17)
	j	.L3
.L2:
	.loc 1 71 13
	lw	a5,-36(s0)
	bne	a5,zero,.L4
	.loc 1 72 16
	lui	a5,%hi(.LC18)
	addi	a5,a5,%lo(.LC18)
	j	.L3
.L4:
	.loc 1 73 21
	lw	a4,-36(s0)
	.loc 1 73 13
	li	a5,-18
	bleu	a4,a5,.L5
.LBB2:
	.loc 1 74 38
	lw	a5,-36(s0)
	neg	a5,a5
	.loc 1 74 21
	lui	a4,%hi(fdt_errtable)
	addi	a4,a4,%lo(fdt_errtable)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 76 12
	lw	a5,-20(s0)
	beq	a5,zero,.L5
	.loc 1 77 20
	lw	a5,-20(s0)
	j	.L3
.L5:
.LBE2:
	.loc 1 80 12
	lui	a5,%hi(.LC19)
	addi	a5,a5,%lo(.LC19)
.L3:
	.loc 1 81 1
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
	.size	fdt_strerror, .-fdt_strerror
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x101
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x3
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
	.4byte	.LASF15
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
	.4byte	.LASF13
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
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0xe
	.string	"s"
	.byte	0x1
	.byte	0x4a
	.byte	0x15
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0x18
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
.LASF15:
	.string	"fdt_errtabent"
.LASF17:
	.string	"errval"
.LASF10:
	.string	"long unsigned int"
.LASF14:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF11:
	.string	"long long unsigned int"
.LASF13:
	.string	"fdt_errtable"
.LASF16:
	.string	"fdt_strerror"
.LASF8:
	.string	"unsigned char"
.LASF7:
	.string	"long int"
.LASF9:
	.string	"short unsigned int"
.LASF5:
	.string	"signed char"
.LASF4:
	.string	"long double"
.LASF6:
	.string	"short int"
.LASF12:
	.string	"char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blfdt"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_strerror.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
