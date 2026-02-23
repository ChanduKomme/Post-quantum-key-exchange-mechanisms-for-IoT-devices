	.file	"hal_hbn.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_hbn.c"
	.section	.sbss.hbn_list,"aw",@nobits
	.align	2
	.type	hbn_list, @object
	.size	hbn_list, 4
hbn_list:
	.zero	4
	.section	.rodata
	.align	2
.LC0:
	.string	"hal_hbn.c"
	.align	2
.LC1:
	.string	"\033[31mERROR \033[0m"
	.align	2
.LC2:
	.string	"[%10u][%s: %s:%4d] malloc error.\r\n"
	.section	.text.ntf_init,"ax",@progbits
	.align	1
	.type	ntf_init, @function
ntf_init:
.LFB23:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_hbn.c"
	.loc 1 45 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 46 16
	li	a0,8
	call	pvPortMalloc
	mv	a4,a0
	.loc 1 46 14 discriminator 1
	lui	a5,%hi(hbn_list)
	sw	a4,%lo(hbn_list)(a5)
	.loc 1 47 9
	lui	a5,%hi(hbn_list)
	lw	a5,%lo(hbn_list)(a5)
	.loc 1 47 8
	bne	a5,zero,.L2
.LBB12:
.LBB13:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE13:
.LBE12:
	.loc 1 48 16 discriminator 1
	beq	a5,zero,.L4
	.loc 1 48 97 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L5
.L4:
	.loc 1 48 126 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L5:
	.loc 1 48 16 discriminator 7
	li	a4,48
	lui	a5,%hi(.LC0)
	addi	a3,a5,%lo(.LC0)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	bl_printk
	.loc 1 49 16
	li	a5,-1
	j	.L6
.L2:
	.loc 1 51 5
	lui	a5,%hi(hbn_list)
	lw	a5,%lo(hbn_list)(a5)
	mv	a0,a5
	call	utils_notifier_chain_init
	.loc 1 52 12
	li	a5,0
.L6:
	.loc 1 53 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	ntf_init, .-ntf_init
	.section	.rodata
	.align	2
.LC3:
	.string	"[%10u][%s: %s:%4d] ntfgpio not init.\r\n"
	.section	.text.ntf_reg,"ax",@progbits
	.align	1
	.type	ntf_reg, @function
ntf_reg:
.LFB24:
	.loc 1 56 1
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
	.loc 1 57 23
	sw	zero,-20(s0)
	.loc 1 59 9
	lui	a5,%hi(hbn_list)
	lw	a5,%lo(hbn_list)(a5)
	.loc 1 59 8
	bne	a5,zero,.L8
.LBB14:
.LBB15:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE15:
.LBE14:
	.loc 1 60 16 discriminator 1
	beq	a5,zero,.L10
	.loc 1 60 101 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L11
.L10:
	.loc 1 60 130 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L11:
	.loc 1 60 16 discriminator 7
	li	a4,60
	lui	a5,%hi(.LC0)
	addi	a3,a5,%lo(.LC0)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	bl_printk
	.loc 1 61 16
	li	a5,-1
	j	.L12
.L8:
	.loc 1 63 16
	li	a0,16
	call	pvPortMalloc
	sw	a0,-20(s0)
	.loc 1 64 8
	lw	a5,-20(s0)
	bne	a5,zero,.L13
.LBB16:
.LBB17:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE17:
.LBE16:
	.loc 1 65 16 discriminator 1
	beq	a5,zero,.L15
	.loc 1 65 97 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L16
.L15:
	.loc 1 65 126 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L16:
	.loc 1 65 16 discriminator 7
	li	a4,65
	lui	a5,%hi(.LC0)
	addi	a3,a5,%lo(.LC0)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	bl_printk
	.loc 1 66 16
	li	a5,-1
	j	.L12
.L13:
	.loc 1 68 18
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	sw	a4,4(a5)
	.loc 1 69 22
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	.loc 1 71 5
	lui	a5,%hi(hbn_list)
	lw	a5,%lo(hbn_list)(a5)
	lw	a1,-20(s0)
	mv	a0,a5
	call	utils_notifier_chain_register
	.loc 1 73 12
	li	a5,0
.L12:
	.loc 1 74 1
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
.LFE24:
	.size	ntf_reg, .-ntf_reg
	.section	.rodata
	.align	2
.LC4:
	.string	"[%10u][%s: %s:%4d] arg error.\r\n"
	.align	2
.LC5:
	.string	"[%10u][%s: %s:%4d] mem error"
	.section	.text.hal_hbn_init,"ax",@progbits
	.align	1
	.globl	hal_hbn_init
	.type	hal_hbn_init, @function
hal_hbn_init:
.LFB25:
	.loc 1 77 1
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
	.loc 1 78 17
	sw	zero,-20(s0)
	.loc 1 80 8
	lbu	a5,-37(s0)
	beq	a5,zero,.L18
	.loc 1 80 28 discriminator 1
	lbu	a4,-37(s0)
	li	a5,128
	bleu	a4,a5,.L19
.L18:
.LBB18:
.LBB19:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE19:
.LBE18:
	.loc 1 81 16 discriminator 1
	beq	a5,zero,.L21
	.loc 1 81 94 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L22
.L21:
	.loc 1 81 123 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L22:
	.loc 1 81 16 discriminator 7
	li	a4,81
	lui	a5,%hi(.LC0)
	addi	a3,a5,%lo(.LC0)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	bl_printk
	.loc 1 82 16
	li	a5,-1
	j	.L23
.L19:
	.loc 1 84 11
	lbu	a5,-37(s0)
	.loc 1 84 36
	addi	a5,a5,3
	.loc 1 84 11
	mv	a0,a5
	call	pvPortMalloc
	sw	a0,-20(s0)
	.loc 1 85 8
	lw	a5,-20(s0)
	bne	a5,zero,.L24
.LBB20:
.LBB21:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE21:
.LBE20:
	.loc 1 86 16 discriminator 1
	beq	a5,zero,.L26
	.loc 1 86 89 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L27
.L26:
	.loc 1 86 118 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L27:
	.loc 1 86 16 discriminator 7
	li	a4,86
	lui	a5,%hi(.LC0)
	addi	a3,a5,%lo(.LC0)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	bl_printk
	.loc 1 87 16
	li	a5,-1
	j	.L23
.L24:
	.loc 1 90 17
	lw	a5,-20(s0)
	li	a4,1
	sb	a4,1(a5)
	.loc 1 91 17
	lw	a5,-20(s0)
	lbu	a4,-37(s0)
	sb	a4,0(a5)
	.loc 1 92 15
	lw	a5,-20(s0)
	addi	a5,a5,2
	.loc 1 92 5
	lbu	a4,-37(s0)
	mv	a2,a4
	lw	a1,-36(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 94 9
	lui	a5,%hi(hbn_list)
	lw	a5,%lo(hbn_list)(a5)
	.loc 1 94 8
	bne	a5,zero,.L28
	.loc 1 95 9
	call	ntf_init
.L28:
	.loc 1 98 5
	lw	a1,-20(s0)
	lui	a5,%hi(bl_hbn_enter)
	addi	a0,a5,%lo(bl_hbn_enter)
	call	ntf_reg
	.loc 1 100 12
	li	a5,0
.L23:
	.loc 1 101 1
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
.LFE25:
	.size	hal_hbn_init, .-hal_hbn_init
	.section	.text.hal_hbn_enter,"ax",@progbits
	.align	1
	.globl	hal_hbn_enter
	.type	hal_hbn_enter, @function
hal_hbn_enter:
.LFB26:
	.loc 1 104 1
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
	.loc 1 105 5
	lui	a5,%hi(hbn_list)
	lw	a5,%lo(hbn_list)(a5)
	addi	a4,s0,-20
	mv	a1,a4
	mv	a0,a5
	call	utils_notifier_chain_call
	.loc 1 107 12
	li	a5,-1
	.loc 1 108 1
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
.LFE26:
	.size	hal_hbn_enter, .-hal_hbn_enter
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_hbn.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_list.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_notifier.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x40f
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x11
	.4byte	.LASF52
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
	.uleb128 0x12
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x13
	.byte	0x4
	.uleb128 0xa
	.4byte	0x84
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x14
	.4byte	0x8b
	.uleb128 0x4
	.4byte	0x92
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x3
	.byte	0x5
	.byte	0x22
	.byte	0x10
	.4byte	0xf5
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x5
	.byte	0x23
	.byte	0xd
	.4byte	0xa8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x5
	.byte	0x24
	.byte	0xd
	.4byte	0xa8
	.byte	0x1
	.uleb128 0xb
	.string	"buf"
	.byte	0x5
	.byte	0x25
	.byte	0xd
	.4byte	0xf5
	.byte	0x2
	.byte	0
	.uleb128 0x15
	.4byte	0xa8
	.4byte	0x105
	.uleb128 0x16
	.4byte	0x6a
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x26
	.byte	0x3
	.4byte	0xc0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0x9c
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x2
	.byte	0x41
	.byte	0x12
	.4byte	0xb4
	.uleb128 0x17
	.4byte	.LASF53
	.byte	0x2
	.byte	0x5c
	.byte	0x13
	.4byte	0x111
	.uleb128 0x4
	.4byte	0xa8
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.byte	0x6
	.byte	0x26
	.byte	0x8
	.4byte	0x155
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x6
	.byte	0x28
	.byte	0x1c
	.4byte	0x155
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0x13a
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x8
	.byte	0x6
	.byte	0x2b
	.byte	0x8
	.4byte	0x182
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x6
	.byte	0x2e
	.byte	0x1c
	.4byte	0x155
	.byte	0
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x6
	.byte	0x30
	.byte	0x1c
	.4byte	0x155
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0x24
	.byte	0x1b
	.4byte	0x15a
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x25
	.byte	0xf
	.4byte	0x19a
	.uleb128 0x4
	.4byte	0x19f
	.uleb128 0x18
	.4byte	0x63
	.4byte	0x1b3
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x10
	.byte	0x7
	.byte	0x27
	.byte	0x10
	.4byte	0x1f4
	.uleb128 0x5
	.4byte	.LASF31
	.byte	0x7
	.byte	0x28
	.byte	0x1b
	.4byte	0x13a
	.byte	0
	.uleb128 0xb
	.string	"cb"
	.byte	0x7
	.byte	0x29
	.byte	0x19
	.4byte	0x18e
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF32
	.byte	0x7
	.byte	0x2a
	.byte	0xb
	.4byte	0x84
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF33
	.byte	0x7
	.byte	0x2b
	.byte	0x9
	.4byte	0x63
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x7
	.byte	0x2c
	.byte	0x3
	.4byte	0x1b3
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x2a
	.byte	0x14
	.4byte	0x211
	.uleb128 0x5
	.byte	0x3
	.4byte	hbn_list
	.uleb128 0x4
	.4byte	0x182
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x7
	.byte	0x30
	.byte	0x5
	.4byte	0x63
	.4byte	0x231
	.uleb128 0x1
	.4byte	0x211
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x5
	.byte	0x28
	.byte	0x5
	.4byte	0x63
	.4byte	0x24c
	.uleb128 0x1
	.4byte	0x24c
	.uleb128 0x1
	.4byte	0x251
	.byte	0
	.uleb128 0x4
	.4byte	0x105
	.uleb128 0x4
	.4byte	0xb4
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x8
	.byte	0x1f
	.byte	0x8
	.4byte	0x84
	.4byte	0x276
	.uleb128 0x1
	.4byte	0x86
	.uleb128 0x1
	.4byte	0x27b
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0x4
	.4byte	0x280
	.uleb128 0xa
	.4byte	0x276
	.uleb128 0x19
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x7
	.byte	0x2f
	.byte	0x5
	.4byte	0x63
	.4byte	0x29c
	.uleb128 0x1
	.4byte	0x211
	.uleb128 0x1
	.4byte	0x29c
	.byte	0
	.uleb128 0x4
	.4byte	0x1f4
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x7
	.byte	0x2e
	.byte	0x5
	.4byte	0x63
	.4byte	0x2b7
	.uleb128 0x1
	.4byte	0x211
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF54
	.byte	0xb
	.byte	0x9e
	.byte	0x6
	.4byte	0x2ca
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1b
	.byte	0
	.uleb128 0xd
	.4byte	.LASF40
	.2byte	0x54c
	.4byte	0x11d
	.uleb128 0xd
	.4byte	.LASF41
	.2byte	0x55d
	.4byte	0x11d
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0xa
	.byte	0xa3
	.byte	0x7
	.4byte	0x84
	.4byte	0x2f6
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x67
	.4byte	0x63
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31d
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x67
	.byte	0x1c
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x4c
	.4byte	0x63
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x37f
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x4c
	.byte	0x1b
	.4byte	0x135
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x4c
	.byte	0x2b
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1c
	.string	"hbn"
	.byte	0x1
	.byte	0x4e
	.byte	0x11
	.4byte	0x24c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	0x405
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x51
	.byte	0x43
	.uleb128 0x7
	.4byte	0x405
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x56
	.byte	0x3e
	.byte	0
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x37
	.4byte	0x63
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3dd
	.uleb128 0x10
	.string	"cb"
	.byte	0x28
	.4byte	0x18e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.string	"arg"
	.byte	0x32
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x39
	.byte	0x17
	.4byte	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	0x405
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x3c
	.byte	0x4a
	.uleb128 0x7
	.4byte	0x405
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x41
	.byte	0x46
	.byte	0
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x2c
	.4byte	0x63
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x405
	.uleb128 0x7
	.4byte	0x405
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x30
	.byte	0x46
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF55
	.byte	0x2
	.byte	0xb3
	.byte	0x3a
	.4byte	0x111
	.byte	0x3
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
	.uleb128 0x7
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
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
	.uleb128 0xa
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 55
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
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
	.4byte	.LFB23
	.uleb128 .LFE23-.LFB23
	.byte	0x7
	.4byte	.LFB24
	.uleb128 .LFE24-.LFB24
	.byte	0x7
	.4byte	.LFB25
	.uleb128 .LFE25-.LFB25
	.byte	0x7
	.4byte	.LFB26
	.uleb128 .LFE26-.LFB26
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF46:
	.string	"pinbuf"
.LASF21:
	.string	"TickType_t"
.LASF34:
	.string	"utils_notifier_t"
.LASF22:
	.string	"_hbn_type"
.LASF13:
	.string	"size_t"
.LASF24:
	.string	"next"
.LASF18:
	.string	"active"
.LASF32:
	.string	"cb_arg"
.LASF36:
	.string	"bl_hbn_enter"
.LASF26:
	.string	"first"
.LASF50:
	.string	"ntf_reg"
.LASF9:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned char"
.LASF54:
	.string	"bl_printk"
.LASF7:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF51:
	.string	"ntf_init"
.LASF33:
	.string	"priority"
.LASF53:
	.string	"TrapNetCounter"
.LASF48:
	.string	"hbn_list"
.LASF43:
	.string	"hal_hbn_enter"
.LASF38:
	.string	"utils_notifier_chain_register"
.LASF19:
	.string	"hbn_type_t"
.LASF10:
	.string	"unsigned int"
.LASF17:
	.string	"buflen"
.LASF28:
	.string	"ntf_list_t"
.LASF27:
	.string	"last"
.LASF15:
	.string	"uint8_t"
.LASF55:
	.string	"xPortIsInsideInterrupt"
.LASF45:
	.string	"time"
.LASF14:
	.string	"int32_t"
.LASF25:
	.string	"utils_list"
.LASF8:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF41:
	.string	"xTaskGetTickCountFromISR"
.LASF40:
	.string	"xTaskGetTickCount"
.LASF42:
	.string	"pvPortMalloc"
.LASF37:
	.string	"memcpy"
.LASF4:
	.string	"short int"
.LASF35:
	.string	"utils_notifier_chain_call"
.LASF52:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF44:
	.string	"hal_hbn_init"
.LASF31:
	.string	"node"
.LASF23:
	.string	"utils_list_hdr"
.LASF16:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF11:
	.string	"long double"
.LASF49:
	.string	"hbn_node"
.LASF2:
	.string	"signed char"
.LASF47:
	.string	"pinbuf_size"
.LASF20:
	.string	"BaseType_t"
.LASF39:
	.string	"utils_notifier_chain_init"
.LASF30:
	.string	"utils_notifier"
.LASF29:
	.string	"utils_notifier_fn_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_hbn.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
