	.file	"utils_notifier.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils" "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_notifier.c"
	.section	.text.utils_notifier_chain_init,"ax",@progbits
	.align	1
	.globl	utils_notifier_chain_init
	.type	utils_notifier_chain_init, @function
utils_notifier_chain_init:
.LFB18:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_notifier.c"
	.loc 1 34 1
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
	.loc 1 35 5
	lw	a0,-20(s0)
	call	utils_list_init
	.loc 1 37 12
	li	a5,0
	.loc 1 38 1
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
.LFE18:
	.size	utils_notifier_chain_init, .-utils_notifier_chain_init
	.section	.text.utils_notifier_chain_register,"ax",@progbits
	.align	1
	.globl	utils_notifier_chain_register
	.type	utils_notifier_chain_register, @function
utils_notifier_chain_register:
.LFB19:
	.loc 1 41 1
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
	.loc 1 42 8
	lw	a5,-20(s0)
	beq	a5,zero,.L4
	.loc 1 42 13 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L5
.L4:
	.loc 1 43 16
	li	a5,-1
	j	.L6
.L5:
	.loc 1 45 5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	utils_list_push_back
	.loc 1 47 12
	li	a5,0
.L6:
	.loc 1 48 1
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
.LFE19:
	.size	utils_notifier_chain_register, .-utils_notifier_chain_register
	.section	.text.utils_notifier_chain_call,"ax",@progbits
	.align	1
	.globl	utils_notifier_chain_call
	.type	utils_notifier_chain_call, @function
utils_notifier_chain_call:
.LFB20:
	.loc 1 51 1
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
	.loc 1 54 8
	lw	a5,-36(s0)
	bne	a5,zero,.L8
	.loc 1 55 16
	li	a5,0
	j	.L9
.L8:
	.loc 1 58 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 60 11
	j	.L10
.L12:
	.loc 1 61 16
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 61 12
	beq	a5,zero,.L11
	.loc 1 62 16
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 62 13
	lw	a4,-20(s0)
	lw	a4,8(a4)
	lw	a1,-40(s0)
	mv	a0,a4
	jalr	a5
.LVL0:
.L11:
	.loc 1 64 13
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L10:
	.loc 1 60 12
	lw	a5,-20(s0)
	bne	a5,zero,.L12
	.loc 1 67 12
	li	a5,0
.L9:
	.loc 1 68 1
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
.LFE20:
	.size	utils_notifier_chain_call, .-utils_notifier_chain_call
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_list.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_notifier.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1d9
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x6
	.4byte	.LASF5
	.byte	0x4
	.byte	0x2
	.byte	0x26
	.byte	0x8
	.4byte	0x62
	.uleb128 0x1
	.4byte	.LASF7
	.byte	0x2
	.byte	0x28
	.byte	0x1c
	.4byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	0x47
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0x8
	.byte	0x2
	.byte	0x2b
	.byte	0x8
	.4byte	0x8f
	.uleb128 0x1
	.4byte	.LASF8
	.byte	0x2
	.byte	0x2e
	.byte	0x1c
	.4byte	0x62
	.byte	0
	.uleb128 0x1
	.4byte	.LASF9
	.byte	0x2
	.byte	0x30
	.byte	0x1c
	.4byte	0x62
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x24
	.byte	0x1b
	.4byte	0x67
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x25
	.byte	0xf
	.4byte	0xa5
	.uleb128 0x2
	.4byte	0xaa
	.uleb128 0xc
	.4byte	0x2b
	.4byte	0xbe
	.uleb128 0x3
	.4byte	0xbe
	.uleb128 0x3
	.4byte	0xbe
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x10
	.byte	0x3
	.byte	0x27
	.byte	0x10
	.4byte	0x101
	.uleb128 0x1
	.4byte	.LASF13
	.byte	0x3
	.byte	0x28
	.byte	0x1b
	.4byte	0x47
	.byte	0
	.uleb128 0xe
	.string	"cb"
	.byte	0x3
	.byte	0x29
	.byte	0x19
	.4byte	0x9a
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2a
	.byte	0xb
	.4byte	0xbe
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2b
	.byte	0x9
	.4byte	0x2b
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x2c
	.byte	0x3
	.4byte	0xc0
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x55
	.4byte	0x121
	.uleb128 0x3
	.4byte	0x121
	.uleb128 0x3
	.4byte	0x62
	.byte	0
	.uleb128 0x2
	.4byte	0x67
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x3e
	.4byte	0x136
	.uleb128 0x3
	.4byte	0x121
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x32
	.4byte	0x2b
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x179
	.uleb128 0x4
	.string	"nl"
	.byte	0x32
	.byte	0x2b
	.4byte	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"env"
	.byte	0x32
	.byte	0x35
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"raw"
	.byte	0x1
	.byte	0x34
	.byte	0x17
	.4byte	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2
	.4byte	0x8f
	.uleb128 0x2
	.4byte	0x101
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x28
	.4byte	0x2b
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b8
	.uleb128 0x4
	.string	"nl"
	.byte	0x28
	.byte	0x2f
	.4byte	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	.LASF13
	.byte	0x1
	.byte	0x28
	.byte	0x45
	.4byte	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x1
	.byte	0x21
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.string	"nl"
	.byte	0x21
	.byte	0x2b
	.4byte	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x16
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
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
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
	.4byte	.LFB18
	.uleb128 .LFE18-.LFB18
	.byte	0x7
	.4byte	.LFB19
	.uleb128 .LFE19-.LFB19
	.byte	0x7
	.4byte	.LFB20
	.uleb128 .LFE20-.LFB20
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"long long int"
.LASF12:
	.string	"utils_notifier"
.LASF9:
	.string	"last"
.LASF2:
	.string	"unsigned int"
.LASF14:
	.string	"cb_arg"
.LASF18:
	.string	"utils_list_init"
.LASF17:
	.string	"utils_list_push_back"
.LASF11:
	.string	"utils_notifier_fn_t"
.LASF5:
	.string	"utils_list_hdr"
.LASF21:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF16:
	.string	"utils_notifier_t"
.LASF15:
	.string	"priority"
.LASF13:
	.string	"node"
.LASF6:
	.string	"utils_list"
.LASF8:
	.string	"first"
.LASF22:
	.string	"utils_notifier_chain_init"
.LASF7:
	.string	"next"
.LASF20:
	.string	"utils_notifier_chain_register"
.LASF4:
	.string	"long double"
.LASF19:
	.string	"utils_notifier_chain_call"
.LASF10:
	.string	"ntf_list_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_notifier.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
