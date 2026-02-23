	.file	"sys.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/sys.c"
	.section	.text.sys_msleep,"ax",@progbits
	.align	1
	.globl	sys_msleep
	.type	sys_msleep, @function
sys_msleep:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/sys.c"
	.loc 1 136 1
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
	.loc 1 137 6
	lw	a5,-36(s0)
	beq	a5,zero,.L4
.LBB2:
	.loc 1 139 17
	addi	a5,s0,-24
	li	a1,0
	mv	a0,a5
	call	sys_sem_new
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 140 8
	lb	a5,-17(s0)
	bne	a5,zero,.L4
	.loc 1 141 7
	addi	a5,s0,-24
	lw	a1,-36(s0)
	mv	a0,a5
	call	sys_arch_sem_wait
	.loc 1 142 7
	addi	a5,s0,-24
	mv	a0,a5
	call	sys_sem_free
.L4:
.LBE2:
	.loc 1 145 1
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
.LFE5:
	.size	sys_msleep, .-sys_msleep
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/queue.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/semphr.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/lwip-port/arch/sys_arch.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x205
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x32
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x39
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x55
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x7d
	.byte	0x11
	.4byte	0x8b
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x7e
	.byte	0x10
	.4byte	0x7f
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x81
	.byte	0x12
	.4byte	0x97
	.uleb128 0x9
	.byte	0x5
	.byte	0x1
	.4byte	0x32
	.byte	0x4
	.byte	0x35
	.byte	0xe
	.4byte	0x13c
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0
	.uleb128 0x1
	.4byte	.LASF20
	.sleb128 -1
	.uleb128 0x1
	.4byte	.LASF21
	.sleb128 -2
	.uleb128 0x1
	.4byte	.LASF22
	.sleb128 -3
	.uleb128 0x1
	.4byte	.LASF23
	.sleb128 -4
	.uleb128 0x1
	.4byte	.LASF24
	.sleb128 -5
	.uleb128 0x1
	.4byte	.LASF25
	.sleb128 -6
	.uleb128 0x1
	.4byte	.LASF26
	.sleb128 -7
	.uleb128 0x1
	.4byte	.LASF27
	.sleb128 -8
	.uleb128 0x1
	.4byte	.LASF28
	.sleb128 -9
	.uleb128 0x1
	.4byte	.LASF29
	.sleb128 -10
	.uleb128 0x1
	.4byte	.LASF30
	.sleb128 -11
	.uleb128 0x1
	.4byte	.LASF31
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF32
	.sleb128 -13
	.uleb128 0x1
	.4byte	.LASF33
	.sleb128 -14
	.uleb128 0x1
	.4byte	.LASF34
	.sleb128 -15
	.uleb128 0x1
	.4byte	.LASF35
	.sleb128 -16
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x4
	.byte	0x60
	.byte	0xe
	.4byte	0xaf
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x5
	.byte	0x30
	.byte	0x22
	.4byte	0x154
	.uleb128 0x5
	.4byte	0x159
	.uleb128 0xb
	.4byte	.LASF44
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x6
	.byte	0x25
	.byte	0x17
	.4byte	0x148
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x7
	.byte	0x2c
	.byte	0x1b
	.4byte	0x15e
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x8
	.byte	0xe1
	.byte	0x6
	.4byte	0x188
	.uleb128 0x4
	.4byte	0x188
	.byte	0
	.uleb128 0x5
	.4byte	0x16a
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0xdb
	.4byte	0xbb
	.4byte	0x1a6
	.uleb128 0x4
	.4byte	0x188
	.uleb128 0x4
	.4byte	0xbb
	.byte	0
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0xc3
	.4byte	0x13c
	.4byte	0x1bf
	.uleb128 0x4
	.4byte	0x188
	.uleb128 0x4
	.4byte	0xa3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.string	"ms"
	.byte	0x1
	.byte	0x87
	.byte	0x12
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x1
	.byte	0x8a
	.byte	0xf
	.4byte	0x16a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"err"
	.byte	0x1
	.byte	0x8b
	.byte	0xb
	.4byte	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF42:
	.string	"delaysem"
.LASF45:
	.string	"sys_sem_free"
.LASF25:
	.string	"ERR_VAL"
.LASF37:
	.string	"QueueHandle_t"
.LASF40:
	.string	"sys_arch_sem_wait"
.LASF17:
	.string	"s8_t"
.LASF27:
	.string	"ERR_USE"
.LASF29:
	.string	"ERR_ISCONN"
.LASF44:
	.string	"QueueDefinition"
.LASF36:
	.string	"err_t"
.LASF13:
	.string	"int8_t"
.LASF33:
	.string	"ERR_RST"
.LASF31:
	.string	"ERR_IF"
.LASF20:
	.string	"ERR_MEM"
.LASF7:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF32:
	.string	"ERR_ABRT"
.LASF16:
	.string	"u8_t"
.LASF23:
	.string	"ERR_RTE"
.LASF38:
	.string	"SemaphoreHandle_t"
.LASF18:
	.string	"u32_t"
.LASF24:
	.string	"ERR_INPROGRESS"
.LASF19:
	.string	"ERR_OK"
.LASF3:
	.string	"unsigned char"
.LASF10:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint8_t"
.LASF46:
	.string	"sys_msleep"
.LASF34:
	.string	"ERR_CLSD"
.LASF21:
	.string	"ERR_BUF"
.LASF8:
	.string	"long long int"
.LASF41:
	.string	"sys_sem_new"
.LASF12:
	.string	"char"
.LASF35:
	.string	"ERR_ARG"
.LASF4:
	.string	"short int"
.LASF43:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF30:
	.string	"ERR_CONN"
.LASF15:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF11:
	.string	"long double"
.LASF39:
	.string	"sys_sem_t"
.LASF2:
	.string	"signed char"
.LASF26:
	.string	"ERR_WOULDBLOCK"
.LASF22:
	.string	"ERR_TIMEOUT"
.LASF28:
	.string	"ERR_ALREADY"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/sys.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
