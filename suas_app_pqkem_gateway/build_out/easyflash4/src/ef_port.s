	.file	"ef_port.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/easyflash4" "/home/chandu/sdk/bl602_iot_sdk/components/stage/easyflash4/src/ef_port.c"
	.section	.sbss.handle,"aw",@nobits
	.align	2
	.type	handle, @object
	.size	handle, 4
handle:
	.zero	4
	.section	.rodata
	.align	2
.LC0:
	.string	"boot_times"
	.align	2
.LC1:
	.string	"3"
	.section	.rodata.default_env_set,"a"
	.align	2
	.type	default_env_set, @object
	.size	default_env_set, 12
default_env_set:
	.word	.LC0
	.word	.LC1
	.word	1
	.section	.sbss.env_cache_lock,"aw",@nobits
	.align	2
	.type	env_cache_lock, @object
	.size	env_cache_lock, 4
env_cache_lock:
	.zero	4
	.section	.rodata
	.align	2
.LC2:
	.string	"PSM"
	.align	2
.LC3:
	.string	"[EF] [PART] [XIP] error when get PSM partition %d\r\n"
	.align	2
.LC4:
	.string	"[EF] [PART] [XIP] Dead Loop. Reason: no Valid PSM partition found\r\n"
	.align	2
.LC5:
	.string	"[EF] Found Valid PSM partition, XIP Addr %08x, flash addr %08x\r\n"
	.align	2
.LC6:
	.string	"*default_env_size = 0x%08x\r\n"
	.section	.text.ef_port_init,"ax",@progbits
	.align	1
	.globl	ef_port_init
	.type	ef_port_init, @function
ef_port_init:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/stage/easyflash4/src/ef_port.c"
	.loc 1 54 78
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	.loc 1 58 11
	li	a2,2
	lui	a5,%hi(handle)
	addi	a1,a5,%lo(handle)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	bl_mtd_open
	sw	a0,-20(s0)
	.loc 1 59 8
	lw	a5,-20(s0)
	bge	a5,zero,.L2
	.loc 1 60 9
	lw	a1,-20(s0)
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	ef_log_info
	.loc 1 61 9
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	puts
.L3:
	.loc 1 62 15
	nop
	j	.L3
.L2:
	.loc 1 65 5
	addi	a5,s0,-48
	li	a2,28
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 66 5
	lui	a5,%hi(handle)
	lw	a5,%lo(handle)(a5)
	addi	a4,s0,-48
	mv	a1,a4
	mv	a0,a5
	call	bl_mtd_info
	.loc 1 67 5
	lw	a5,-24(s0)
	lw	a4,-32(s0)
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	ef_log_info
	.loc 1 72 18
	lw	a5,-52(s0)
	lui	a4,%hi(default_env_set)
	addi	a4,a4,%lo(default_env_set)
	sw	a4,0(a5)
	.loc 1 73 23
	lw	a5,-56(s0)
	li	a4,1
	sw	a4,0(a5)
	.loc 1 75 5
	lw	a5,-56(s0)
	lw	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	printf
	.loc 1 77 22
	li	a0,1
	call	xQueueCreateMutex
	mv	a4,a0
	.loc 1 77 20 discriminator 1
	lui	a5,%hi(env_cache_lock)
	sw	a4,%lo(env_cache_lock)(a5)
	.loc 1 79 12
	li	a5,0
	.loc 1 80 1
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
.LFE5:
	.size	ef_port_init, .-ef_port_init
	.section	.text.ef_port_read,"ax",@progbits
	.align	1
	.globl	ef_port_read
	.type	ef_port_read, @function
ef_port_read:
.LFB6:
	.loc 1 92 67
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
	.loc 1 93 15
	sb	zero,-17(s0)
	.loc 1 98 9
	lui	a5,%hi(handle)
	lw	a5,%lo(handle)(a5)
	lw	a3,-40(s0)
	lw	a2,-44(s0)
	lw	a1,-36(s0)
	mv	a0,a5
	call	bl_mtd_read
	mv	a5,a0
	.loc 1 98 8 discriminator 1
	bge	a5,zero,.L6
	.loc 1 99 16
	li	a5,2
	sb	a5,-17(s0)
.L6:
	.loc 1 102 12
	lbu	a5,-17(s0)
	.loc 1 103 1
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
.LFE6:
	.size	ef_port_read, .-ef_port_read
	.section	.rodata
	.align	2
.LC7:
	.string	"addr % EF_ERASE_MIN_SIZE == 0"
	.align	2
.LC8:
	.string	"(%s) has assert failed at %s.\r\n"
	.align	2
.LC9:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/easyflash4/src/ef_port.c"
	.section	.text.ef_port_erase,"ax",@progbits
	.align	1
	.globl	ef_port_erase
	.type	ef_port_erase, @function
ef_port_erase:
.LFB7:
	.loc 1 115 53
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
	.loc 1 116 15
	sb	zero,-17(s0)
	.loc 1 119 16
	lw	a4,-36(s0)
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
	.loc 1 119 8
	beq	a5,zero,.L9
	.loc 1 119 34 discriminator 1
	lui	a5,%hi(__FUNCTION__.0)
	addi	a4,a5,%lo(__FUNCTION__.0)
	lui	a5,%hi(.LC7)
	addi	a3,a5,%lo(.LC7)
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,119
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	ef_log_debug
.L10:
	.loc 1 119 219
	nop
	j	.L10
.L9:
	.loc 1 122 9
	lui	a5,%hi(handle)
	lw	a5,%lo(handle)(a5)
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	mv	a0,a5
	call	bl_mtd_erase
	mv	a5,a0
	.loc 1 122 8 discriminator 1
	bge	a5,zero,.L11
	.loc 1 123 16
	li	a5,1
	sb	a5,-17(s0)
.L11:
	.loc 1 126 12
	lbu	a5,-17(s0)
	.loc 1 127 1
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
.LFE7:
	.size	ef_port_erase, .-ef_port_erase
	.section	.text.ef_port_write,"ax",@progbits
	.align	1
	.globl	ef_port_write
	.type	ef_port_write, @function
ef_port_write:
.LFB8:
	.loc 1 139 74
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
	.loc 1 140 15
	sb	zero,-17(s0)
	.loc 1 145 9
	lui	a5,%hi(handle)
	lw	a5,%lo(handle)(a5)
	lw	a3,-40(s0)
	lw	a2,-44(s0)
	lw	a1,-36(s0)
	mv	a0,a5
	call	bl_mtd_write
	mv	a5,a0
	.loc 1 145 8 discriminator 1
	bge	a5,zero,.L14
	.loc 1 146 16
	li	a5,3
	sb	a5,-17(s0)
.L14:
	.loc 1 149 12
	lbu	a5,-17(s0)
	.loc 1 150 1
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
.LFE8:
	.size	ef_port_write, .-ef_port_write
	.section	.text.ef_port_env_lock,"ax",@progbits
	.align	1
	.globl	ef_port_env_lock
	.type	ef_port_env_lock, @function
ef_port_env_lock:
.LFB9:
	.loc 1 155 29
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 158 5
	lui	a5,%hi(env_cache_lock)
	lw	a5,%lo(env_cache_lock)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	.loc 1 160 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	ef_port_env_lock, .-ef_port_env_lock
	.section	.text.ef_port_env_unlock,"ax",@progbits
	.align	1
	.globl	ef_port_env_unlock
	.type	ef_port_env_unlock, @function
ef_port_env_unlock:
.LFB10:
	.loc 1 165 31
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 168 5
	lui	a5,%hi(env_cache_lock)
	lw	a5,%lo(env_cache_lock)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 169 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	ef_port_env_unlock, .-ef_port_env_unlock
	.section	.text.ef_log_debug,"ax",@progbits
	.align	1
	.globl	ef_log_debug
	.type	ef_log_debug, @function
ef_log_debug:
.LFB11:
	.loc 1 181 111
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -36
	.cfi_offset 8, -40
	addi	s0,sp,48
	.cfi_def_cfa 8, 32
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,12(s0)
	sw	a4,16(s0)
	sw	a5,20(s0)
	sw	a6,24(s0)
	sw	a7,28(s0)
	.loc 1 188 4
	addi	a5,s0,32
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	addi	a5,a5,-20
	sw	a5,-20(s0)
	.loc 1 191 5
	lw	a5,-20(s0)
	mv	a1,a5
	lw	a0,-44(s0)
	call	vprint
	.loc 1 197 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	ef_log_debug, .-ef_log_debug
	.section	.text.ef_log_info,"ax",@progbits
	.align	1
	.globl	ef_log_info
	.type	ef_log_info, @function
ef_log_info:
.LFB12:
	.loc 1 205 43
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -36
	.cfi_offset 8, -40
	addi	s0,sp,48
	.cfi_def_cfa 8, 32
	sw	a0,-36(s0)
	sw	a1,4(s0)
	sw	a2,8(s0)
	sw	a3,12(s0)
	sw	a4,16(s0)
	sw	a5,20(s0)
	sw	a6,24(s0)
	sw	a7,28(s0)
	.loc 1 209 4
	addi	a5,s0,32
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	addi	a5,a5,-28
	sw	a5,-20(s0)
	.loc 1 212 5
	lw	a5,-20(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	vprint
	.loc 1 215 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	ef_log_info, .-ef_log_info
	.section	.text.ef_print,"ax",@progbits
	.align	1
	.globl	ef_print
	.type	ef_print, @function
ef_print:
.LFB13:
	.loc 1 222 40
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -36
	.cfi_offset 8, -40
	addi	s0,sp,48
	.cfi_def_cfa 8, 32
	sw	a0,-36(s0)
	sw	a1,4(s0)
	sw	a2,8(s0)
	sw	a3,12(s0)
	sw	a4,16(s0)
	sw	a5,20(s0)
	sw	a6,24(s0)
	sw	a7,28(s0)
	.loc 1 226 4
	addi	a5,s0,32
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	addi	a5,a5,-28
	sw	a5,-20(s0)
	.loc 1 229 5
	lw	a5,-20(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	vprint
	.loc 1 232 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	ef_print, .-ef_print
	.section	.rodata.__FUNCTION__.0,"a"
	.align	2
	.type	__FUNCTION__.0, @object
	.size	__FUNCTION__.0, 14
__FUNCTION__.0:
	.string	"ef_port_erase"
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/stage/easyflash4/inc/ef_def.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdarg.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/queue.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/semphr.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/sys/blmtd/include/bl_mtd.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x643
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x45
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x7
	.4byte	0x45
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x69
	.uleb128 0x7
	.4byte	0x58
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x88
	.uleb128 0x7
	.4byte	0x77
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x9d
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0xc
	.byte	0x4
	.byte	0x49
	.byte	0x10
	.4byte	0xec
	.uleb128 0x16
	.string	"key"
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.4byte	0xec
	.byte	0
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x4
	.byte	0x4b
	.byte	0xb
	.4byte	0xfd
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x4
	.byte	0x4c
	.byte	0xc
	.4byte	0xa4
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	0xf1
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x7
	.4byte	0xf1
	.uleb128 0x17
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0x4d
	.byte	0x3
	.4byte	0xb7
	.uleb128 0x7
	.4byte	0xff
	.uleb128 0x18
	.byte	0x7
	.byte	0x1
	.4byte	0x69
	.byte	0x4
	.byte	0x50
	.byte	0xe
	.4byte	0x155
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x4
	.byte	0x5a
	.byte	0x3
	.4byte	0x110
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.4byte	.LASF30
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x5
	.byte	0x28
	.byte	0x1b
	.4byte	0x174
	.uleb128 0x19
	.byte	0x4
	.4byte	.LASF77
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x5
	.byte	0x67
	.byte	0x18
	.4byte	0x168
	.uleb128 0x3
	.4byte	0xf8
	.uleb128 0x1a
	.4byte	0x186
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3f
	.byte	0x11
	.4byte	0x39
	.uleb128 0x7
	.4byte	0x190
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x6
	.byte	0x41
	.byte	0x12
	.4byte	0x77
	.uleb128 0x3
	.4byte	0x58
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x7
	.byte	0x30
	.byte	0x22
	.4byte	0x1be
	.uleb128 0x3
	.4byte	0x1c3
	.uleb128 0x1b
	.4byte	.LASF78
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x8
	.byte	0x25
	.byte	0x17
	.4byte	0x1b2
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x9
	.byte	0x22
	.byte	0xf
	.4byte	0xfd
	.uleb128 0x1c
	.byte	0x1c
	.byte	0x9
	.byte	0x23
	.byte	0x9
	.4byte	0x21e
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x9
	.byte	0x24
	.byte	0xa
	.4byte	0x21e
	.byte	0
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x9
	.byte	0x25
	.byte	0x12
	.4byte	0x9d
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x9
	.byte	0x26
	.byte	0x12
	.4byte	0x9d
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x9
	.byte	0x27
	.byte	0xb
	.4byte	0xfd
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	0xf1
	.4byte	0x22e
	.uleb128 0xe
	.4byte	0x9d
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x9
	.byte	0x28
	.byte	0x3
	.4byte	0x1e0
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x25
	.byte	0x18
	.4byte	0x1d4
	.uleb128 0x5
	.byte	0x3
	.4byte	handle
	.uleb128 0xd
	.4byte	0x10b
	.4byte	0x25b
	.uleb128 0xe
	.4byte	0x9d
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x24b
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x28
	.byte	0x15
	.4byte	0x25b
	.uleb128 0x5
	.byte	0x3
	.4byte	default_env_set
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x2c
	.byte	0x1a
	.4byte	0x1c8
	.uleb128 0x5
	.byte	0x3
	.4byte	env_cache_lock
	.uleb128 0x1d
	.4byte	.LASF79
	.byte	0x1
	.byte	0xab
	.byte	0xd
	.4byte	0x299
	.uleb128 0x1
	.4byte	0x186
	.uleb128 0x1
	.4byte	0x17a
	.byte	0
	.uleb128 0xf
	.4byte	.LASF46
	.2byte	0x28a
	.byte	0xc
	.4byte	0x190
	.4byte	0x2be
	.uleb128 0x1
	.4byte	0x1b2
	.uleb128 0x1
	.4byte	0x2c3
	.uleb128 0x1
	.4byte	0x1a1
	.uleb128 0x1
	.4byte	0x19c
	.byte	0
	.uleb128 0x3
	.4byte	0x2c8
	.uleb128 0x7
	.4byte	0x2be
	.uleb128 0x1e
	.uleb128 0xf
	.4byte	.LASF47
	.2byte	0x58a
	.byte	0xc
	.4byte	0x190
	.4byte	0x2e4
	.uleb128 0x1
	.4byte	0x1b2
	.uleb128 0x1
	.4byte	0x1a1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x9
	.byte	0x33
	.byte	0x5
	.4byte	0x96
	.4byte	0x309
	.uleb128 0x1
	.4byte	0x1d4
	.uleb128 0x1
	.4byte	0x9d
	.uleb128 0x1
	.4byte	0x9d
	.uleb128 0x1
	.4byte	0x309
	.byte	0
	.uleb128 0x3
	.4byte	0x64
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x9
	.byte	0x31
	.byte	0x5
	.4byte	0x96
	.4byte	0x32e
	.uleb128 0x1
	.4byte	0x1d4
	.uleb128 0x1
	.4byte	0x9d
	.uleb128 0x1
	.4byte	0x9d
	.byte	0
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x9
	.byte	0x34
	.byte	0x5
	.4byte	0x96
	.4byte	0x353
	.uleb128 0x1
	.4byte	0x1d4
	.uleb128 0x1
	.4byte	0x9d
	.uleb128 0x1
	.4byte	0x9d
	.uleb128 0x1
	.4byte	0x1ad
	.byte	0
	.uleb128 0xf
	.4byte	.LASF51
	.2byte	0x586
	.byte	0xf
	.4byte	0x1b2
	.4byte	0x369
	.uleb128 0x1
	.4byte	0x64
	.byte	0
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0xa
	.byte	0xce
	.byte	0x5
	.4byte	0x96
	.4byte	0x380
	.uleb128 0x1
	.4byte	0x18b
	.uleb128 0xb
	.byte	0
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x9
	.byte	0x30
	.byte	0x5
	.4byte	0x96
	.4byte	0x39b
	.uleb128 0x1
	.4byte	0x1d4
	.uleb128 0x1
	.4byte	0x39b
	.byte	0
	.uleb128 0x3
	.4byte	0x22e
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0xb
	.byte	0x21
	.byte	0x8
	.4byte	0xfd
	.4byte	0x3c0
	.uleb128 0x1
	.4byte	0xfd
	.uleb128 0x1
	.4byte	0x96
	.uleb128 0x1
	.4byte	0xa4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0xa
	.byte	0xe3
	.byte	0x5
	.4byte	0x96
	.4byte	0x3d6
	.uleb128 0x1
	.4byte	0x186
	.byte	0
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x9
	.byte	0x2e
	.byte	0x5
	.4byte	0x96
	.4byte	0x3f6
	.uleb128 0x1
	.4byte	0x186
	.uleb128 0x1
	.4byte	0x3f6
	.uleb128 0x1
	.4byte	0x9d
	.byte	0
	.uleb128 0x3
	.4byte	0x1d4
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0xde
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42e
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0xde
	.byte	0x1b
	.4byte	0x186
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xb
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0xdf
	.byte	0xd
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0xcd
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x461
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0xcd
	.byte	0x1e
	.4byte	0x186
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xb
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0xce
	.byte	0xd
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0xb5
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b2
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0xb5
	.byte	0x2f
	.4byte	0x186
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0xb5
	.byte	0x50
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0xb5
	.byte	0x62
	.4byte	0x186
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xb
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0xb9
	.byte	0xd
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0xa5
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x9b
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x8b
	.4byte	0x155
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x523
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0x8b
	.byte	0x22
	.4byte	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"buf"
	.byte	0x8b
	.byte	0x38
	.4byte	0x523
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x8b
	.byte	0x44
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0x8c
	.byte	0xf
	.4byte	0x155
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x3
	.4byte	0x83
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x73
	.4byte	0x155
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57a
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0x73
	.byte	0x22
	.4byte	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x73
	.byte	0x2f
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0x74
	.byte	0xf
	.4byte	0x155
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1f
	.4byte	.LASF80
	.4byte	0x58a
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.0
	.byte	0
	.uleb128 0xd
	.4byte	0xf8
	.4byte	0x58a
	.uleb128 0xe
	.4byte	0x9d
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.4byte	0x57a
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x5c
	.4byte	0x155
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e0
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0x5c
	.byte	0x21
	.4byte	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"buf"
	.byte	0x5c
	.byte	0x31
	.4byte	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x5c
	.byte	0x3d
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0x5d
	.byte	0xf
	.4byte	0x155
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x3
	.4byte	0x77
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x36
	.4byte	0x155
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x637
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0x36
	.byte	0x27
	.4byte	0x637
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0x36
	.byte	0x3c
	.4byte	0x641
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.string	"ret"
	.byte	0x1
	.byte	0x37
	.byte	0x9
	.4byte	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF74
	.byte	0x38
	.byte	0x13
	.4byte	0x22e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x3
	.4byte	0x63c
	.uleb128 0x3
	.4byte	0x10b
	.uleb128 0x3
	.4byte	0xa4
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
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x10
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.4byte	0x5c
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
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
	.byte	0x7
	.4byte	.LFB12
	.uleb128 .LFE12-.LFB12
	.byte	0x7
	.4byte	.LFB13
	.uleb128 .LFE13-.LFB13
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF79:
	.string	"vprint"
.LASF67:
	.string	"result"
.LASF66:
	.string	"addr"
.LASF71:
	.string	"ef_port_init"
.LASF58:
	.string	"ef_print"
.LASF49:
	.string	"bl_mtd_erase"
.LASF3:
	.string	"short int"
.LASF14:
	.string	"size_t"
.LASF50:
	.string	"bl_mtd_read"
.LASF53:
	.string	"bl_mtd_info"
.LASF5:
	.string	"long long int"
.LASF44:
	.string	"default_env_set"
.LASF19:
	.string	"ef_env"
.LASF65:
	.string	"ef_port_env_lock"
.LASF62:
	.string	"file"
.LASF33:
	.string	"BaseType_t"
.LASF56:
	.string	"bl_mtd_open"
.LASF16:
	.string	"value"
.LASF32:
	.string	"va_list"
.LASF7:
	.string	"uint8_t"
.LASF64:
	.string	"ef_port_env_unlock"
.LASF63:
	.string	"line"
.LASF46:
	.string	"xQueueGenericSend"
.LASF37:
	.string	"bl_mtd_handle_t"
.LASF70:
	.string	"ef_port_read"
.LASF68:
	.string	"ef_port_write"
.LASF60:
	.string	"format"
.LASF34:
	.string	"TickType_t"
.LASF51:
	.string	"xQueueCreateMutex"
.LASF54:
	.string	"memset"
.LASF27:
	.string	"EF_ENV_INIT_FAILED"
.LASF4:
	.string	"long int"
.LASF22:
	.string	"EF_READ_ERR"
.LASF39:
	.string	"offset"
.LASF45:
	.string	"env_cache_lock"
.LASF80:
	.string	"__FUNCTION__"
.LASF24:
	.string	"EF_ENV_NAME_ERR"
.LASF29:
	.string	"EfErrCode"
.LASF35:
	.string	"QueueHandle_t"
.LASF17:
	.string	"value_len"
.LASF38:
	.string	"name"
.LASF15:
	.string	"long double"
.LASF36:
	.string	"SemaphoreHandle_t"
.LASF8:
	.string	"unsigned char"
.LASF2:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF13:
	.string	"unsigned int"
.LASF47:
	.string	"xQueueSemaphoreTake"
.LASF57:
	.string	"args"
.LASF55:
	.string	"puts"
.LASF78:
	.string	"QueueDefinition"
.LASF9:
	.string	"short unsigned int"
.LASF18:
	.string	"char"
.LASF30:
	.string	"_Bool"
.LASF41:
	.string	"xip_addr"
.LASF52:
	.string	"printf"
.LASF6:
	.string	"int32_t"
.LASF26:
	.string	"EF_ENV_FULL"
.LASF69:
	.string	"ef_port_erase"
.LASF75:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF25:
	.string	"EF_ENV_NAME_EXIST"
.LASF20:
	.string	"EF_NO_ERR"
.LASF72:
	.string	"default_env"
.LASF48:
	.string	"bl_mtd_write"
.LASF11:
	.string	"long unsigned int"
.LASF77:
	.string	"__builtin_va_list"
.LASF43:
	.string	"handle"
.LASF40:
	.string	"size"
.LASF74:
	.string	"info"
.LASF28:
	.string	"EF_ENV_ARG_ERR"
.LASF61:
	.string	"ef_log_debug"
.LASF31:
	.string	"__gnuc_va_list"
.LASF59:
	.string	"ef_log_info"
.LASF76:
	.string	"_ef_env"
.LASF42:
	.string	"bl_mtd_info_t"
.LASF23:
	.string	"EF_WRITE_ERR"
.LASF21:
	.string	"EF_ERASE_ERR"
.LASF73:
	.string	"default_env_size"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/easyflash4"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/easyflash4/src/ef_port.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
