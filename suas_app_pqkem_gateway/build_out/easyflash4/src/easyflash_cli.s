	.file	"easyflash_cli.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/easyflash4" "/home/chandu/sdk/bl602_iot_sdk/components/stage/easyflash4/src/easyflash_cli.c"
	.section	.rodata
	.align	2
.LC1:
	.string	"usage: psm_set [key] [value]\r\n"
	.section	.text.psm_set_cmd,"ax",@progbits
	.align	1
	.type	psm_set_cmd, @function
psm_set_cmd:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/stage/easyflash4/src/easyflash_cli.c"
	.loc 1 8 1
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
	.loc 1 9 8
	lw	a4,-28(s0)
	li	a5,3
	beq	a4,a5,.L2
	.loc 1 10 9
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	.loc 1 11 9
	j	.L1
.L2:
	.loc 1 13 20
	lw	a5,-32(s0)
	addi	a5,a5,4
	.loc 1 13 5
	lw	a4,0(a5)
	.loc 1 13 29
	lw	a5,-32(s0)
	addi	a5,a5,8
	.loc 1 13 5
	lw	a5,0(a5)
	mv	a1,a5
	mv	a0,a4
	call	ef_set_env
	.loc 1 14 5
	call	ef_save_env
.L1:
	.loc 1 15 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	psm_set_cmd, .-psm_set_cmd
	.section	.rodata
	.align	2
.LC2:
	.string	"usage: psm_unset [key]\r\n"
	.section	.text.psm_unset_cmd,"ax",@progbits
	.align	1
	.type	psm_unset_cmd, @function
psm_unset_cmd:
.LFB6:
	.loc 1 18 1
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
	.loc 1 19 8
	lw	a4,-28(s0)
	li	a5,2
	beq	a4,a5,.L5
	.loc 1 20 9
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	.loc 1 21 9
	j	.L4
.L5:
	.loc 1 23 20
	lw	a5,-32(s0)
	addi	a5,a5,4
	.loc 1 23 5
	lw	a5,0(a5)
	mv	a0,a5
	call	ef_del_env
	.loc 1 24 5
	call	ef_save_env
.L4:
	.loc 1 25 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	psm_unset_cmd, .-psm_unset_cmd
	.section	.text.psm_get_cmd,"ax",@progbits
	.align	1
	.type	psm_get_cmd, @function
psm_get_cmd:
.LFB7:
	.loc 1 28 1
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
	.loc 1 30 1
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
.LFE7:
	.size	psm_get_cmd, .-psm_get_cmd
	.section	.text.psm_dump_cmd,"ax",@progbits
	.align	1
	.type	psm_dump_cmd, @function
psm_dump_cmd:
.LFB8:
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
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	.loc 1 34 5
	call	ef_print_env
	.loc 1 35 1
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
.LFE8:
	.size	psm_dump_cmd, .-psm_dump_cmd
	.section	.text.psm_erase_cmd,"ax",@progbits
	.align	1
	.type	psm_erase_cmd, @function
psm_erase_cmd:
.LFB9:
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
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	.loc 1 39 5
	call	ef_env_set_default
	.loc 1 40 1
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
.LFE9:
	.size	psm_erase_cmd, .-psm_erase_cmd
	.section	.rodata
	.align	2
.LC3:
	.string	"1234567890123456789012345678901234567890123456789012345678901234"
	.align	2
.LC4:
	.string	"easyflash_cli.c"
	.align	2
.LC5:
	.string	"\033[32mINFO  \033[0m"
	.align	2
.LC6:
	.string	"[%10u][%s: %s:%4d] kvbin malloc %d byte error\r\n"
	.align	2
.LC7:
	.string	"\033[33mWARN  \033[0m"
	.align	2
.LC8:
	.string	"[%10u][%s: %s:%4d] kvbin set/get %ld byte error, res1 = %ld, res2 = %d.\r\n"
	.align	2
.LC9:
	.string	"\033[31mERROR \033[0m"
	.align	2
.LC10:
	.string	"[%10u][%s: %s:%4d] kvbin set/get %ld byte , res1 = %ld, res2 = %d. memcmp error\r\n"
	.align	2
.LC11:
	.string	"[%10u][%s: %s:%4d] kvbin set %ld byte bin -> read %ld byte -> memcmp success.\r\n"
	.align	2
.LC0:
	.word	1
	.word	1024
	.word	2048
	.word	3979
	.word	3980
	.word	3981
	.section	.text.psm_test_cmd,"ax",@progbits
	.align	1
	.globl	psm_test_cmd
	.type	psm_test_cmd, @function
psm_test_cmd:
.LFB10:
	.loc 1 43 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	sw	a2,-92(s0)
	sw	a3,-96(s0)
	.loc 1 44 17
	lui	a5,%hi(.LC3)
	addi	a5,a5,%lo(.LC3)
	sw	a5,-28(s0)
	.loc 1 45 14
	sw	zero,-32(s0)
	.loc 1 46 14
	sw	zero,-36(s0)
	.loc 1 47 14
	sw	zero,-40(s0)
	.loc 1 48 14
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	lw	a2,8(a5)
	lw	a3,12(a5)
	lw	a4,16(a5)
	sw	a0,-72(s0)
	sw	a1,-68(s0)
	sw	a2,-64(s0)
	sw	a3,-60(s0)
	sw	a4,-56(s0)
	lw	a5,20(a5)
	sw	a5,-52(s0)
	.loc 1 54 12
	sw	zero,-24(s0)
	.loc 1 54 5
	j	.L11
.L34:
	.loc 1 55 18
	lw	a4,-24(s0)
	addi	a5,s0,-72
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-40(s0)
	.loc 1 56 18
	sw	zero,-76(s0)
	.loc 1 58 42
	lw	a5,-40(s0)
	addi	a5,a5,1
	.loc 1 58 20
	mv	a0,a5
	call	pvPortMalloc
	sw	a0,-32(s0)
	.loc 1 59 42
	lw	a5,-40(s0)
	addi	a5,a5,1
	.loc 1 59 20
	mv	a0,a5
	call	pvPortMalloc
	sw	a0,-36(s0)
	.loc 1 60 12
	lw	a5,-32(s0)
	beq	a5,zero,.L12
	.loc 1 60 31 discriminator 1
	lw	a5,-36(s0)
	bne	a5,zero,.L13
.L12:
.LBB10:
.LBB11:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE11:
.LBE10:
	.loc 1 61 20 discriminator 1
	beq	a5,zero,.L15
	.loc 1 61 114 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L16
.L15:
	.loc 1 61 143 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L16:
	.loc 1 61 20 discriminator 7
	li	a4,61
	lui	a5,%hi(.LC4)
	addi	a3,a5,%lo(.LC4)
	lui	a5,%hi(.LC5)
	addi	a2,a5,%lo(.LC5)
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	bl_printk
	.loc 1 62 13
	j	.L17
.L13:
	.loc 1 65 38
	lw	a5,-40(s0)
	addi	a5,a5,1
	.loc 1 65 9
	mv	a2,a5
	li	a1,0
	lw	a0,-32(s0)
	call	memset
	.loc 1 66 38
	lw	a5,-40(s0)
	addi	a5,a5,1
	.loc 1 66 9
	mv	a2,a5
	li	a1,0
	lw	a0,-36(s0)
	call	memset
	.loc 1 67 16
	sw	zero,-20(s0)
	.loc 1 67 9
	j	.L18
.L19:
	.loc 1 68 21
	lw	a4,-32(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 68 25
	li	a4,118
	sb	a4,0(a5)
	.loc 1 67 36 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L18:
	.loc 1 67 23 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bltu	a4,a5,.L19
	.loc 1 72 16
	lw	a2,-40(s0)
	lw	a1,-32(s0)
	lw	a0,-28(s0)
	call	ef_set_env_blob
	mv	a5,a0
	.loc 1 72 14 discriminator 1
	sw	a5,-44(s0)
	.loc 1 75 16
	addi	a5,s0,-76
	mv	a3,a5
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lw	a0,-28(s0)
	call	ef_get_env_blob
	sw	a0,-48(s0)
	.loc 1 76 12
	lw	a5,-44(s0)
	bne	a5,zero,.L20
	.loc 1 76 25 discriminator 1
	lw	a4,-48(s0)
	lw	a5,-40(s0)
	beq	a4,a5,.L21
.L20:
.LBB12:
.LBB13:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE13:
.LBE12:
	.loc 1 77 20 discriminator 1
	beq	a5,zero,.L23
	.loc 1 77 140 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L24
.L23:
	.loc 1 77 169 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L24:
	.loc 1 77 20 discriminator 7
	lw	a7,-48(s0)
	lw	a6,-44(s0)
	lw	a5,-40(s0)
	li	a4,77
	lui	a3,%hi(.LC4)
	addi	a3,a3,%lo(.LC4)
	lui	a2,%hi(.LC7)
	addi	a2,a2,%lo(.LC7)
	lui	a0,%hi(.LC8)
	addi	a0,a0,%lo(.LC8)
	call	bl_printk
	.loc 1 78 13
	j	.L17
.L21:
	.loc 1 81 13
	lw	a2,-40(s0)
	lw	a1,-32(s0)
	lw	a0,-36(s0)
	call	memcmp
	mv	a5,a0
	.loc 1 81 12 discriminator 1
	beq	a5,zero,.L25
.LBB14:
.LBB15:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE15:
.LBE14:
	.loc 1 82 20 discriminator 1
	beq	a5,zero,.L27
	.loc 1 82 148 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L28
.L27:
	.loc 1 82 177 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L28:
	.loc 1 82 20 discriminator 7
	lw	a7,-48(s0)
	lw	a6,-44(s0)
	lw	a5,-40(s0)
	li	a4,82
	lui	a3,%hi(.LC4)
	addi	a3,a3,%lo(.LC4)
	lui	a2,%hi(.LC9)
	addi	a2,a2,%lo(.LC9)
	lui	a0,%hi(.LC10)
	addi	a0,a0,%lo(.LC10)
	call	bl_printk
	.loc 1 83 13
	j	.L17
.L25:
.LBB16:
.LBB17:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE17:
.LBE16:
	.loc 1 86 16 discriminator 1
	beq	a5,zero,.L30
	.loc 1 86 142 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L31
.L30:
	.loc 1 86 171 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L31:
	.loc 1 86 16 discriminator 7
	lw	a6,-40(s0)
	lw	a5,-40(s0)
	li	a4,86
	lui	a3,%hi(.LC4)
	addi	a3,a3,%lo(.LC4)
	lui	a2,%hi(.LC5)
	addi	a2,a2,%lo(.LC5)
	lui	a0,%hi(.LC11)
	addi	a0,a0,%lo(.LC11)
	call	bl_printk
.L17:
	.loc 1 88 12
	lw	a5,-32(s0)
	beq	a5,zero,.L32
	.loc 1 89 13
	lw	a0,-32(s0)
	call	vPortFree
.L32:
	.loc 1 91 12
	lw	a5,-36(s0)
	beq	a5,zero,.L33
	.loc 1 92 13
	lw	a0,-36(s0)
	call	vPortFree
.L33:
	.loc 1 54 52 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L11:
	.loc 1 54 19 discriminator 1
	lw	a4,-24(s0)
	li	a5,5
	bleu	a4,a5,.L34
	.loc 1 96 5
	lw	a0,-28(s0)
	call	ef_del_env
	.loc 1 97 1
	nop
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	psm_test_cmd, .-psm_test_cmd
	.section	.rodata
	.align	2
.LC12:
	.string	"psm_set"
	.align	2
.LC13:
	.string	"psm set"
	.align	2
.LC14:
	.string	"psm_unset"
	.align	2
.LC15:
	.string	"psm unset"
	.align	2
.LC16:
	.string	"psm_get"
	.align	2
.LC17:
	.string	"psm get"
	.align	2
.LC18:
	.string	"psm_dump"
	.align	2
.LC19:
	.string	"psm dump"
	.align	2
.LC20:
	.string	"psm_erase"
	.align	2
.LC21:
	.string	"psm_test"
	.align	2
.LC22:
	.string	"psm test"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 72
cmds_user:
	.word	.LC12
	.word	.LC13
	.word	psm_set_cmd
	.word	.LC14
	.word	.LC15
	.word	psm_unset_cmd
	.word	.LC16
	.word	.LC17
	.word	psm_get_cmd
	.word	.LC18
	.word	.LC19
	.word	psm_dump_cmd
	.word	.LC20
	.word	.LC19
	.word	psm_erase_cmd
	.word	.LC21
	.word	.LC22
	.word	psm_test_cmd
	.section	.text.easyflash_cli_init,"ax",@progbits
	.align	1
	.globl	easyflash_cli_init
	.type	easyflash_cli_init, @function
easyflash_cli_init:
.LFB11:
	.loc 1 110 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 115 12
	li	a5,0
	.loc 1 116 1
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
.LFE11:
	.size	easyflash_cli_init, .-easyflash_cli_init
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/stage/cli/cli/include/cli.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/stage/easyflash4/inc/ef_def.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/stage/easyflash4/inc/easyflash.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_log.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5de
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x15
	.4byte	.LASF63
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
	.uleb128 0x16
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x17
	.byte	0x4
	.uleb128 0x9
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xc
	.4byte	0x8b
	.uleb128 0x9
	.4byte	0x92
	.uleb128 0x18
	.4byte	0x97
	.uleb128 0x19
	.4byte	.LASF64
	.byte	0xc
	.byte	0x3
	.byte	0x4c
	.byte	0x8
	.4byte	0xd3
	.uleb128 0xd
	.4byte	.LASF13
	.byte	0x4d
	.byte	0x11
	.4byte	0x97
	.byte	0
	.uleb128 0xd
	.4byte	.LASF14
	.byte	0x4e
	.byte	0x11
	.4byte	0x97
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF15
	.byte	0x50
	.byte	0xc
	.4byte	0xf7
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	0xa1
	.uleb128 0x1a
	.4byte	0xf2
	.uleb128 0x1
	.4byte	0x86
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0xf2
	.byte	0
	.uleb128 0x9
	.4byte	0x86
	.uleb128 0x9
	.4byte	0xd8
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0x28
	.byte	0x12
	.4byte	0x47
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0x1b
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x6
	.byte	0x50
	.byte	0xe
	.4byte	0x165
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x6
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x7
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x6
	.byte	0x5a
	.byte	0x3
	.4byte	0x120
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF30
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0xfc
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x2
	.byte	0x41
	.byte	0x12
	.4byte	0x114
	.uleb128 0x1c
	.4byte	.LASF65
	.byte	0x2
	.byte	0x5c
	.byte	0x13
	.4byte	0x178
	.uleb128 0x9
	.4byte	0x108
	.uleb128 0xe
	.4byte	0xd3
	.4byte	0x1b0
	.uleb128 0xf
	.4byte	0x6a
	.byte	0
	.uleb128 0xc
	.4byte	0x1a1
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x64
	.byte	0x21
	.4byte	0x1b0
	.uleb128 0x5
	.byte	0x3
	.4byte	cmds_user
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x9
	.byte	0xa4
	.4byte	0x1d7
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x7
	.byte	0x1e
	.byte	0x5
	.4byte	0x63
	.4byte	0x1f7
	.uleb128 0x1
	.4byte	0x1f7
	.uleb128 0x1
	.4byte	0x1f7
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0x9
	.4byte	0x1fc
	.uleb128 0x1d
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x8
	.byte	0x30
	.byte	0x8
	.4byte	0x71
	.4byte	0x222
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x71
	.uleb128 0x1
	.4byte	0x222
	.byte	0
	.uleb128 0x9
	.4byte	0x71
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x8
	.byte	0x33
	.byte	0xb
	.4byte	0x165
	.4byte	0x247
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x1f7
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x7
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0x267
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0xa
	.byte	0x9e
	.4byte	0x279
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x11
	.byte	0
	.uleb128 0x12
	.4byte	.LASF39
	.2byte	0x54c
	.4byte	0x184
	.uleb128 0x12
	.4byte	.LASF40
	.2byte	0x55d
	.4byte	0x184
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x9
	.byte	0xa3
	.byte	0x7
	.4byte	0x84
	.4byte	0x2a5
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x3c
	.4byte	0x165
	.uleb128 0x1e
	.4byte	.LASF66
	.byte	0x8
	.byte	0x37
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.4byte	0x165
	.4byte	0x2cd
	.uleb128 0x1
	.4byte	0x97
	.byte	0
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x3b
	.4byte	0x165
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x8
	.byte	0x39
	.byte	0xb
	.4byte	0x165
	.4byte	0x2f2
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x97
	.byte	0
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0xc
	.byte	0xce
	.byte	0x5
	.4byte	0x63
	.4byte	0x309
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x11
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF67
	.byte	0x1
	.byte	0x6d
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.4byte	.LASF68
	.byte	0x1
	.byte	0x2a
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x442
	.uleb128 0x3
	.string	"buf"
	.byte	0x2a
	.byte	0x29
	.4byte	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x3
	.string	"len"
	.byte	0x2a
	.byte	0x42
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x2a
	.byte	0x5b
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x2a
	.byte	0x78
	.4byte	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x2c
	.byte	0x11
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x2d
	.byte	0xe
	.4byte	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0x2e
	.byte	0xe
	.4byte	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x2f
	.byte	0xe
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0x30
	.byte	0xe
	.4byte	0x442
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.string	"i"
	.byte	0xe
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.string	"j"
	.byte	0x11
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0x33
	.byte	0xc
	.4byte	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x34
	.byte	0xe
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x34
	.byte	0x14
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.4byte	.LASF69
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.4byte	.L17
	.uleb128 0xa
	.4byte	0x5d4
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x3d
	.byte	0x57
	.uleb128 0xa
	.4byte	0x5d4
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x4d
	.byte	0x71
	.uleb128 0xa
	.4byte	0x5d4
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x52
	.byte	0x79
	.uleb128 0xa
	.4byte	0x5d4
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x56
	.byte	0x73
	.byte	0
	.uleb128 0xe
	.4byte	0x114
	.4byte	0x451
	.uleb128 0xf
	.4byte	0x6a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x25
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x49e
	.uleb128 0x3
	.string	"buf"
	.byte	0x25
	.byte	0x31
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"len"
	.byte	0x25
	.byte	0x4a
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x25
	.byte	0x63
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x25
	.byte	0x80
	.4byte	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x20
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4eb
	.uleb128 0x3
	.string	"buf"
	.byte	0x20
	.byte	0x30
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"len"
	.byte	0x20
	.byte	0x49
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x20
	.byte	0x62
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x20
	.byte	0x7f
	.4byte	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x22
	.4byte	.LASF60
	.byte	0x1
	.byte	0x1b
	.byte	0xd
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53a
	.uleb128 0x3
	.string	"buf"
	.byte	0x1b
	.byte	0x2f
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"len"
	.byte	0x1b
	.byte	0x48
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x1b
	.byte	0x61
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x1b
	.byte	0x7e
	.4byte	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x11
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x587
	.uleb128 0x3
	.string	"buf"
	.byte	0x11
	.byte	0x31
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"len"
	.byte	0x11
	.byte	0x4a
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x11
	.byte	0x53
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x11
	.byte	0x60
	.4byte	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x7
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d4
	.uleb128 0x3
	.string	"buf"
	.byte	0x7
	.byte	0x2f
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"len"
	.byte	0x7
	.byte	0x48
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x7
	.byte	0x51
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x7
	.byte	0x5e
	.4byte	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.4byte	.LASF70
	.byte	0x2
	.byte	0xb3
	.byte	0x3a
	.4byte	0x178
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
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
	.sleb128 13
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
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x11
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 11
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
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0
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
	.sleb128 11
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 49
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x20
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
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
	.byte	0x7
	.4byte	.LFB6
	.uleb128 .LFE6-.LFB6
	.byte	0x7
	.4byte	.LFB7
	.uleb128 .LFE7-.LFB7
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF45:
	.string	"ef_set_env"
.LASF35:
	.string	"ef_set_env_blob"
.LASF51:
	.string	"data_src"
.LASF55:
	.string	"read_len"
.LASF4:
	.string	"short int"
.LASF16:
	.string	"size_t"
.LASF62:
	.string	"psm_set_cmd"
.LASF58:
	.string	"psm_erase_cmd"
.LASF14:
	.string	"help"
.LASF65:
	.string	"TrapNetCounter"
.LASF18:
	.string	"uint8_t"
.LASF50:
	.string	"def_name"
.LASF42:
	.string	"ef_env_set_default"
.LASF70:
	.string	"xPortIsInsideInterrupt"
.LASF44:
	.string	"ef_save_env"
.LASF33:
	.string	"memcmp"
.LASF8:
	.string	"long long int"
.LASF32:
	.string	"TickType_t"
.LASF36:
	.string	"memset"
.LASF27:
	.string	"EF_ENV_INIT_FAILED"
.LASF6:
	.string	"long int"
.LASF22:
	.string	"EF_READ_ERR"
.LASF46:
	.string	"printf"
.LASF24:
	.string	"EF_ENV_NAME_ERR"
.LASF66:
	.string	"ef_print_env"
.LASF39:
	.string	"xTaskGetTickCount"
.LASF53:
	.string	"data_len"
.LASF13:
	.string	"name"
.LASF11:
	.string	"long double"
.LASF3:
	.string	"unsigned char"
.LASF68:
	.string	"psm_test_cmd"
.LASF47:
	.string	"argc"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF54:
	.string	"tbuf"
.LASF19:
	.string	"uint32_t"
.LASF10:
	.string	"unsigned int"
.LASF31:
	.string	"BaseType_t"
.LASF48:
	.string	"argv"
.LASF29:
	.string	"EfErrCode"
.LASF5:
	.string	"short unsigned int"
.LASF34:
	.string	"ef_get_env_blob"
.LASF61:
	.string	"psm_unset_cmd"
.LASF12:
	.string	"char"
.LASF30:
	.string	"_Bool"
.LASF15:
	.string	"function"
.LASF17:
	.string	"int32_t"
.LASF26:
	.string	"EF_ENV_FULL"
.LASF63:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF25:
	.string	"EF_ENV_NAME_EXIST"
.LASF20:
	.string	"EF_NO_ERR"
.LASF59:
	.string	"psm_dump_cmd"
.LASF7:
	.string	"long unsigned int"
.LASF67:
	.string	"easyflash_cli_init"
.LASF37:
	.string	"vPortFree"
.LASF52:
	.string	"data_buf"
.LASF43:
	.string	"ef_del_env"
.LASF40:
	.string	"xTaskGetTickCountFromISR"
.LASF28:
	.string	"EF_ENV_ARG_ERR"
.LASF60:
	.string	"psm_get_cmd"
.LASF49:
	.string	"cmds_user"
.LASF38:
	.string	"bl_printk"
.LASF56:
	.string	"res1"
.LASF57:
	.string	"res2"
.LASF23:
	.string	"EF_WRITE_ERR"
.LASF69:
	.string	"kvbin_exit"
.LASF21:
	.string	"EF_ERASE_ERR"
.LASF41:
	.string	"pvPortMalloc"
.LASF64:
	.string	"cli_command"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/easyflash4/src/easyflash_cli.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/easyflash4"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
