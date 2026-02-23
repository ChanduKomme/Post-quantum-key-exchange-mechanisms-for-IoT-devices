	.file	"vfs_pwm.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/vfs" "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/device/vfs_pwm.c"
	.globl	pwm_ops
	.section	.rodata.pwm_ops,"a"
	.align	2
	.type	pwm_ops, @object
	.size	pwm_ops, 28
pwm_ops:
	.word	vfs_pwm_open
	.word	vfs_pwm_close
	.zero	8
	.word	vfs_pwm_ioctl
	.zero	8
	.section	.text.vfs_pwm_open,"ax",@progbits
	.align	1
	.globl	vfs_pwm_open
	.type	vfs_pwm_open, @function
vfs_pwm_open:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/device/vfs_pwm.c"
	.loc 1 20 1
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
	.loc 1 21 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 22 16
	sw	zero,-24(s0)
	.loc 1 25 8
	lw	a5,-40(s0)
	beq	a5,zero,.L2
	.loc 1 25 27 discriminator 1
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 25 21 discriminator 1
	beq	a5,zero,.L2
	.loc 1 28 15
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 28 21
	lbu	a4,17(a5)
	.loc 1 28 12
	li	a5,1
	bne	a4,a5,.L3
	.loc 1 31 39
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 31 21
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 34 19
	lw	a0,-24(s0)
	call	hal_pwm_init_bydev
	sw	a0,-20(s0)
	.loc 1 28 12
	j	.L5
.L3:
	.loc 1 36 17
	sw	zero,-20(s0)
	.loc 1 28 12
	j	.L5
.L2:
	.loc 1 39 13
	li	a5,-22
	sw	a5,-20(s0)
.L5:
	.loc 1 42 12
	lw	a5,-20(s0)
	.loc 1 43 1
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
	.size	vfs_pwm_open, .-vfs_pwm_open
	.section	.text.vfs_pwm_close,"ax",@progbits
	.align	1
	.globl	vfs_pwm_close
	.type	vfs_pwm_close, @function
vfs_pwm_close:
.LFB6:
	.loc 1 46 1
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
	.loc 1 47 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 48 16
	sw	zero,-24(s0)
	.loc 1 51 8
	lw	a5,-36(s0)
	beq	a5,zero,.L8
	.loc 1 51 27 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 51 21 discriminator 1
	beq	a5,zero,.L8
	.loc 1 54 15
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 54 21
	lbu	a4,17(a5)
	.loc 1 54 12
	li	a5,1
	bne	a4,a5,.L9
	.loc 1 57 39
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 57 21
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 59 16
	lw	a5,-24(s0)
	beq	a5,zero,.L10
	.loc 1 62 23
	lw	a0,-24(s0)
	call	hal_pwm_finalize_bydev
	sw	a0,-20(s0)
	.loc 1 54 12
	j	.L12
.L10:
	.loc 1 64 21
	li	a5,-22
	sw	a5,-20(s0)
	.loc 1 54 12
	j	.L12
.L9:
	.loc 1 67 17
	sw	zero,-20(s0)
	.loc 1 54 12
	j	.L12
.L8:
	.loc 1 70 13
	li	a5,-22
	sw	a5,-20(s0)
.L12:
	.loc 1 73 12
	lw	a5,-20(s0)
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
.LFE6:
	.size	vfs_pwm_close, .-vfs_pwm_close
	.section	.rodata
	.align	2
.LC0:
	.string	"vfs_pwm.c"
	.align	2
.LC1:
	.string	"\033[32mINFO  \033[0m"
	.align	2
.LC2:
	.string	"[%10u][%s: %s:%4d] ioctl start.\r\n"
	.align	2
.LC3:
	.string	"[%10u][%s: %s:%4d] ioctl stop.\r\n"
	.align	2
.LC4:
	.string	"[%10u][%s: %s:%4d] ioctl set duty.\r\n"
	.align	2
.LC5:
	.string	"[%10u][%s: %s:%4d] ioctl set freq.\r\n"
	.section	.text.vfs_pwm_ioctl,"ax",@progbits
	.align	1
	.globl	vfs_pwm_ioctl
	.type	vfs_pwm_ioctl, @function
vfs_pwm_ioctl:
.LFB7:
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
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	.loc 1 78 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 79 16
	sw	zero,-24(s0)
	.loc 1 80 11
	sw	zero,-28(s0)
	.loc 1 81 13
	sw	zero,-32(s0)
	.loc 1 84 8
	lw	a5,-36(s0)
	beq	a5,zero,.L15
	.loc 1 84 27 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 84 21 discriminator 1
	bne	a5,zero,.L16
.L15:
	.loc 1 85 16
	li	a5,-22
	j	.L17
.L16:
	.loc 1 89 31
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 89 13
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 91 8
	lw	a5,-24(s0)
	bne	a5,zero,.L18
	.loc 1 92 16
	li	a5,-22
	j	.L17
.L18:
	.loc 1 95 5
	lw	a4,-40(s0)
	li	a5,4
	beq	a4,a5,.L19
	lw	a4,-40(s0)
	li	a5,4
	bgt	a4,a5,.L20
	lw	a4,-40(s0)
	li	a5,3
	beq	a4,a5,.L21
	lw	a4,-40(s0)
	li	a5,3
	bgt	a4,a5,.L20
	lw	a4,-40(s0)
	li	a5,1
	beq	a4,a5,.L22
	lw	a4,-40(s0)
	li	a5,2
	beq	a4,a5,.L23
	j	.L20
.L22:
	.loc 1 98 19
	lw	a0,-24(s0)
	call	hal_pwm_start_bydev
	sw	a0,-20(s0)
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
	.loc 1 99 20 discriminator 1
	beq	a5,zero,.L25
	.loc 1 99 100 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L26
.L25:
	.loc 1 99 129 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L26:
	.loc 1 99 20 discriminator 7
	li	a4,99
	lui	a5,%hi(.LC0)
	addi	a3,a5,%lo(.LC0)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	bl_printk
	.loc 1 101 9
	j	.L27
.L23:
.LBB12:
.LBB13:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE13:
.LBE12:
	.loc 1 104 20 discriminator 1
	beq	a5,zero,.L29
	.loc 1 104 99 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L30
.L29:
	.loc 1 104 128 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L30:
	.loc 1 104 20 discriminator 7
	li	a4,104
	lui	a5,%hi(.LC0)
	addi	a3,a5,%lo(.LC0)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	bl_printk
	.loc 1 105 19
	lw	a0,-24(s0)
	call	hal_pwm_stop_bydev
	sw	a0,-20(s0)
	.loc 1 107 9
	j	.L27
.L21:
.LBB14:
.LBB15:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE15:
.LBE14:
	.loc 1 110 20 discriminator 1
	beq	a5,zero,.L32
	.loc 1 110 103 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L33
.L32:
	.loc 1 110 132 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L33:
	.loc 1 110 20 discriminator 7
	li	a4,110
	lui	a5,%hi(.LC0)
	addi	a3,a5,%lo(.LC0)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	bl_printk
	.loc 1 111 16
	lw	a5,-44(s0)
	bne	a5,zero,.L34
	.loc 1 112 24
	li	a5,-22
	j	.L17
.L34:
	.loc 1 114 21
	lw	a5,-44(s0)
	.loc 1 114 18
	flw	fa5,0(a5)
	fsw	fa5,-28(s0)
	.loc 1 115 19
	flw	fa0,-28(s0)
	lw	a0,-24(s0)
	call	hal_pwm_set_duty_bydev
	sw	a0,-20(s0)
	.loc 1 117 9
	j	.L27
.L19:
.LBB16:
.LBB17:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE17:
.LBE16:
	.loc 1 120 20 discriminator 1
	beq	a5,zero,.L36
	.loc 1 120 103 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L37
.L36:
	.loc 1 120 132 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L37:
	.loc 1 120 20 discriminator 7
	li	a4,120
	lui	a5,%hi(.LC0)
	addi	a3,a5,%lo(.LC0)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	bl_printk
	.loc 1 121 16
	lw	a5,-44(s0)
	bne	a5,zero,.L38
	.loc 1 122 24
	li	a5,-22
	j	.L17
.L38:
	.loc 1 124 21
	lw	a5,-44(s0)
	.loc 1 124 18
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 125 19
	lw	a5,-32(s0)
	mv	a1,a5
	lw	a0,-24(s0)
	call	hal_pwm_set_freq_bydev
	sw	a0,-20(s0)
	.loc 1 127 9
	j	.L27
.L20:
	.loc 1 129 17
	li	a5,-22
	sw	a5,-20(s0)
	.loc 1 130 13
	nop
.L27:
	.loc 1 133 12
	lw	a5,-20(s0)
.L17:
	.loc 1 134 1
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
	.size	vfs_pwm_ioctl, .-vfs_pwm_ioctl
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timeval.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timespec.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/types.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/stat.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_dir.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_inode.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/hal/soc/pwm.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/device/vfs_pwm.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb71
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x15
	.4byte	.LASF139
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x45
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x5f
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x79
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x16
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x4f
	.byte	0x1b
	.4byte	0x79
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0xc8
	.byte	0x17
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0xe5
	.byte	0x16
	.4byte	0x8e
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.4byte	.LASF17
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x1e
	.byte	0xe
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x22
	.byte	0xe
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x2e
	.byte	0xe
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x38
	.byte	0xf
	.4byte	0x32
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x3c
	.byte	0x18
	.4byte	0x66
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x3f
	.byte	0x18
	.4byte	0x66
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x4b
	.byte	0x18
	.4byte	0x66
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x6
	.byte	0x5a
	.byte	0x14
	.4byte	0x95
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x6
	.byte	0x66
	.byte	0x10
	.4byte	0xd8
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x93
	.byte	0x14
	.4byte	0x87
	.uleb128 0x17
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0xd5
	.byte	0x18
	.4byte	0x66
	.uleb128 0x4
	.4byte	0x14b
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF29
	.uleb128 0xd
	.4byte	0x14b
	.uleb128 0x4
	.4byte	0x152
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x7
	.byte	0x2a
	.byte	0x19
	.4byte	0xa1
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x10
	.byte	0x8
	.byte	0x2f
	.4byte	0x18f
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x8
	.byte	0x30
	.byte	0x9
	.4byte	0x15c
	.byte	0
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x8
	.byte	0x31
	.byte	0x7
	.4byte	0x45
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x9
	.byte	0x61
	.byte	0x14
	.4byte	0xc0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x9
	.byte	0x66
	.byte	0x15
	.4byte	0xcc
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x9
	.byte	0x89
	.byte	0x11
	.4byte	0x108
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x9
	.byte	0x9b
	.byte	0x11
	.4byte	0x120
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x9
	.byte	0x9f
	.byte	0x11
	.4byte	0xe4
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x9
	.byte	0xa3
	.byte	0x11
	.4byte	0xf0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x9
	.byte	0xa7
	.byte	0x11
	.4byte	0xfc
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x9
	.byte	0xb6
	.byte	0x12
	.4byte	0x12c
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x9
	.byte	0xbb
	.byte	0x12
	.4byte	0x114
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x9
	.byte	0xc0
	.byte	0x13
	.4byte	0x13a
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x58
	.byte	0xa
	.byte	0x1b
	.4byte	0x2ca
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xa
	.byte	0x1d
	.byte	0x9
	.4byte	0x1bf
	.byte	0
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0xa
	.byte	0x1e
	.byte	0x9
	.4byte	0x1a7
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0xa
	.byte	0x1f
	.byte	0xa
	.4byte	0x1ef
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0xa
	.byte	0x20
	.byte	0xb
	.4byte	0x1fb
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0xa
	.byte	0x21
	.byte	0x9
	.4byte	0x1cb
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0xa
	.byte	0x22
	.byte	0x9
	.4byte	0x1d7
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0xa
	.byte	0x23
	.byte	0x9
	.4byte	0x1bf
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0xa
	.byte	0x24
	.byte	0x9
	.4byte	0x1b3
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0xa
	.byte	0x2a
	.byte	0x13
	.4byte	0x168
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0xa
	.byte	0x2b
	.byte	0x13
	.4byte	0x168
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xa
	.byte	0x2c
	.byte	0x13
	.4byte	0x168
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0xa
	.byte	0x2d
	.byte	0xd
	.4byte	0x19b
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0xa
	.byte	0x2e
	.byte	0xc
	.4byte	0x18f
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0xa
	.byte	0x30
	.byte	0x8
	.4byte	0x2ca
	.byte	0x50
	.byte	0
	.uleb128 0x11
	.4byte	0x45
	.4byte	0x2da
	.uleb128 0x18
	.4byte	0x8e
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x24
	.byte	0xb
	.byte	0x4
	.4byte	0x35c
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0xb
	.byte	0x5
	.byte	0xa
	.4byte	0x45
	.byte	0
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0xb
	.byte	0x6
	.byte	0xa
	.4byte	0x45
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0xb
	.byte	0x7
	.byte	0xa
	.4byte	0x45
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0xb
	.byte	0x8
	.byte	0xa
	.4byte	0x45
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0xb
	.byte	0x9
	.byte	0xa
	.4byte	0x45
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0xb
	.byte	0xa
	.byte	0xa
	.4byte	0x45
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0xb
	.byte	0xb
	.byte	0xa
	.4byte	0x45
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0xb
	.byte	0xc
	.byte	0xa
	.4byte	0x45
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0xb
	.byte	0xd
	.byte	0xa
	.4byte	0x45
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0xb
	.byte	0x10
	.4byte	0x38c
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0xb
	.byte	0x11
	.byte	0x9
	.4byte	0x87
	.byte	0
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0xb
	.byte	0x12
	.byte	0xd
	.4byte	0x53
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0xb
	.byte	0x13
	.byte	0xa
	.4byte	0x38c
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.4byte	0x14b
	.4byte	0x39b
	.uleb128 0x19
	.4byte	0x8e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xb
	.byte	0x14
	.byte	0x3
	.4byte	0x35c
	.uleb128 0x7
	.byte	0x8
	.byte	0xb
	.byte	0x16
	.4byte	0x3ca
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0xb
	.byte	0x17
	.byte	0x9
	.4byte	0x87
	.byte	0
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0xb
	.byte	0x18
	.byte	0x9
	.4byte	0x87
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0xb
	.byte	0x19
	.byte	0x3
	.4byte	0x3a7
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0xc
	.byte	0x2c
	.byte	0x1f
	.4byte	0x44a
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x1c
	.byte	0xc
	.byte	0x46
	.4byte	0x44a
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xc
	.byte	0x47
	.byte	0xb
	.4byte	0x687
	.byte	0
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xc
	.byte	0x48
	.byte	0xb
	.4byte	0x69b
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xc
	.byte	0x49
	.byte	0xf
	.4byte	0x6b9
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xc
	.byte	0x4a
	.byte	0xf
	.4byte	0x6dd
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xc
	.byte	0x4b
	.byte	0xb
	.4byte	0x6fb
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0xc
	.byte	0x4d
	.byte	0xb
	.4byte	0x72a
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0xc
	.byte	0x4f
	.byte	0xb
	.4byte	0x69b
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	0x3e2
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0xc
	.byte	0x2d
	.byte	0x1d
	.4byte	0x56c
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x50
	.byte	0xc
	.byte	0x52
	.4byte	0x56c
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xc
	.byte	0x53
	.byte	0xb
	.4byte	0x748
	.byte	0
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xc
	.byte	0x54
	.byte	0xb
	.4byte	0x69b
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xc
	.byte	0x55
	.byte	0xf
	.4byte	0x766
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xc
	.byte	0x56
	.byte	0xf
	.4byte	0x784
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0xc
	.byte	0x57
	.byte	0xd
	.4byte	0x7a2
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0xc
	.byte	0x58
	.byte	0xb
	.4byte	0x69b
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xc
	.byte	0x59
	.byte	0xb
	.4byte	0x7c5
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0xc
	.byte	0x5a
	.byte	0xb
	.4byte	0x7de
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xc
	.byte	0x5b
	.byte	0xb
	.4byte	0x7fc
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0xc
	.byte	0x5c
	.byte	0x12
	.4byte	0x81a
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0xc
	.byte	0x5d
	.byte	0x15
	.4byte	0x838
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0xc
	.byte	0x5e
	.byte	0xb
	.4byte	0x851
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0xc
	.byte	0x5f
	.byte	0xb
	.4byte	0x7de
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0xc
	.byte	0x60
	.byte	0xb
	.4byte	0x7de
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0xc
	.byte	0x61
	.byte	0xc
	.4byte	0x866
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0xc
	.byte	0x62
	.byte	0xc
	.4byte	0x87f
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0xc
	.byte	0x63
	.byte	0xc
	.4byte	0x899
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xc
	.byte	0x64
	.byte	0xb
	.4byte	0x6fb
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0xc
	.byte	0x65
	.byte	0xb
	.4byte	0x8bc
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0xc
	.byte	0x66
	.byte	0xb
	.4byte	0x748
	.byte	0x4c
	.byte	0
	.uleb128 0xd
	.4byte	0x45b
	.uleb128 0x1a
	.4byte	.LASF140
	.byte	0x4
	.byte	0xc
	.byte	0x2f
	.byte	0x7
	.4byte	0x595
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0x30
	.byte	0x17
	.4byte	0x595
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x31
	.byte	0x15
	.4byte	0x59a
	.byte	0
	.uleb128 0x4
	.4byte	0x3d6
	.uleb128 0x4
	.4byte	0x44f
	.uleb128 0x7
	.byte	0x14
	.byte	0xc
	.byte	0x35
	.4byte	0x5f6
	.uleb128 0x1b
	.string	"ops"
	.byte	0xc
	.byte	0x36
	.byte	0x17
	.4byte	0x571
	.byte	0
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0xc
	.byte	0x37
	.byte	0xb
	.4byte	0x138
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0xc
	.byte	0x38
	.byte	0xb
	.4byte	0x146
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0xc
	.byte	0x39
	.byte	0x9
	.4byte	0x87
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0xc
	.byte	0x3a
	.byte	0xd
	.4byte	0x53
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0xc
	.byte	0x3b
	.byte	0xd
	.4byte	0x53
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0xc
	.byte	0x3c
	.byte	0x3
	.4byte	0x59f
	.uleb128 0x7
	.byte	0xc
	.byte	0xc
	.byte	0x3e
	.4byte	0x632
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0xc
	.byte	0x3f
	.byte	0xe
	.4byte	0x632
	.byte	0
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0xc
	.byte	0x40
	.byte	0xb
	.4byte	0x138
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0xc
	.byte	0x41
	.byte	0xc
	.4byte	0xad
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	0x5f6
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0xc
	.byte	0x42
	.byte	0x3
	.4byte	0x602
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0xc
	.byte	0x45
	.byte	0x10
	.4byte	0x64f
	.uleb128 0x4
	.4byte	0x654
	.uleb128 0xe
	.4byte	0x664
	.uleb128 0x2
	.4byte	0x664
	.uleb128 0x2
	.4byte	0x138
	.byte	0
	.uleb128 0x4
	.4byte	0x669
	.uleb128 0x1c
	.4byte	.LASF141
	.uleb128 0x5
	.4byte	0x87
	.4byte	0x682
	.uleb128 0x2
	.4byte	0x632
	.uleb128 0x2
	.4byte	0x682
	.byte	0
	.uleb128 0x4
	.4byte	0x637
	.uleb128 0x4
	.4byte	0x66e
	.uleb128 0x5
	.4byte	0x87
	.4byte	0x69b
	.uleb128 0x2
	.4byte	0x682
	.byte	0
	.uleb128 0x4
	.4byte	0x68c
	.uleb128 0x5
	.4byte	0x1e3
	.4byte	0x6b9
	.uleb128 0x2
	.4byte	0x682
	.uleb128 0x2
	.4byte	0x138
	.uleb128 0x2
	.4byte	0xad
	.byte	0
	.uleb128 0x4
	.4byte	0x6a0
	.uleb128 0x5
	.4byte	0x1e3
	.4byte	0x6d7
	.uleb128 0x2
	.4byte	0x682
	.uleb128 0x2
	.4byte	0x6d7
	.uleb128 0x2
	.4byte	0xad
	.byte	0
	.uleb128 0x4
	.4byte	0x6dc
	.uleb128 0x1d
	.uleb128 0x4
	.4byte	0x6be
	.uleb128 0x5
	.4byte	0x87
	.4byte	0x6fb
	.uleb128 0x2
	.4byte	0x682
	.uleb128 0x2
	.4byte	0x87
	.uleb128 0x2
	.4byte	0x79
	.byte	0
	.uleb128 0x4
	.4byte	0x6e2
	.uleb128 0x5
	.4byte	0x87
	.4byte	0x723
	.uleb128 0x2
	.4byte	0x682
	.uleb128 0x2
	.4byte	0x723
	.uleb128 0x2
	.4byte	0x643
	.uleb128 0x2
	.4byte	0x664
	.uleb128 0x2
	.4byte	0x138
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF112
	.uleb128 0x4
	.4byte	0x700
	.uleb128 0x5
	.4byte	0x87
	.4byte	0x748
	.uleb128 0x2
	.4byte	0x682
	.uleb128 0x2
	.4byte	0x157
	.uleb128 0x2
	.4byte	0x87
	.byte	0
	.uleb128 0x4
	.4byte	0x72f
	.uleb128 0x5
	.4byte	0x1e3
	.4byte	0x766
	.uleb128 0x2
	.4byte	0x682
	.uleb128 0x2
	.4byte	0x146
	.uleb128 0x2
	.4byte	0xad
	.byte	0
	.uleb128 0x4
	.4byte	0x74d
	.uleb128 0x5
	.4byte	0x1e3
	.4byte	0x784
	.uleb128 0x2
	.4byte	0x682
	.uleb128 0x2
	.4byte	0x157
	.uleb128 0x2
	.4byte	0xad
	.byte	0
	.uleb128 0x4
	.4byte	0x76b
	.uleb128 0x5
	.4byte	0x1b3
	.4byte	0x7a2
	.uleb128 0x2
	.4byte	0x682
	.uleb128 0x2
	.4byte	0x1b3
	.uleb128 0x2
	.4byte	0x87
	.byte	0
	.uleb128 0x4
	.4byte	0x789
	.uleb128 0x5
	.4byte	0x87
	.4byte	0x7c0
	.uleb128 0x2
	.4byte	0x682
	.uleb128 0x2
	.4byte	0x157
	.uleb128 0x2
	.4byte	0x7c0
	.byte	0
	.uleb128 0x4
	.4byte	0x207
	.uleb128 0x4
	.4byte	0x7a7
	.uleb128 0x5
	.4byte	0x87
	.4byte	0x7de
	.uleb128 0x2
	.4byte	0x682
	.uleb128 0x2
	.4byte	0x157
	.byte	0
	.uleb128 0x4
	.4byte	0x7ca
	.uleb128 0x5
	.4byte	0x87
	.4byte	0x7fc
	.uleb128 0x2
	.4byte	0x682
	.uleb128 0x2
	.4byte	0x157
	.uleb128 0x2
	.4byte	0x157
	.byte	0
	.uleb128 0x4
	.4byte	0x7e3
	.uleb128 0x5
	.4byte	0x815
	.4byte	0x815
	.uleb128 0x2
	.4byte	0x682
	.uleb128 0x2
	.4byte	0x157
	.byte	0
	.uleb128 0x4
	.4byte	0x3ca
	.uleb128 0x4
	.4byte	0x801
	.uleb128 0x5
	.4byte	0x833
	.4byte	0x833
	.uleb128 0x2
	.4byte	0x682
	.uleb128 0x2
	.4byte	0x815
	.byte	0
	.uleb128 0x4
	.4byte	0x39b
	.uleb128 0x4
	.4byte	0x81f
	.uleb128 0x5
	.4byte	0x87
	.4byte	0x851
	.uleb128 0x2
	.4byte	0x682
	.uleb128 0x2
	.4byte	0x815
	.byte	0
	.uleb128 0x4
	.4byte	0x83d
	.uleb128 0xe
	.4byte	0x866
	.uleb128 0x2
	.4byte	0x682
	.uleb128 0x2
	.4byte	0x815
	.byte	0
	.uleb128 0x4
	.4byte	0x856
	.uleb128 0x5
	.4byte	0x45
	.4byte	0x87f
	.uleb128 0x2
	.4byte	0x682
	.uleb128 0x2
	.4byte	0x815
	.byte	0
	.uleb128 0x4
	.4byte	0x86b
	.uleb128 0xe
	.4byte	0x899
	.uleb128 0x2
	.4byte	0x682
	.uleb128 0x2
	.4byte	0x815
	.uleb128 0x2
	.4byte	0x45
	.byte	0
	.uleb128 0x4
	.4byte	0x884
	.uleb128 0x5
	.4byte	0x87
	.4byte	0x8b7
	.uleb128 0x2
	.4byte	0x682
	.uleb128 0x2
	.4byte	0x157
	.uleb128 0x2
	.4byte	0x8b7
	.byte	0
	.uleb128 0x4
	.4byte	0x2da
	.uleb128 0x4
	.4byte	0x89e
	.uleb128 0x13
	.4byte	.LASF123
	.byte	0xe
	.byte	0x15
	.byte	0x1e
	.4byte	0x44a
	.uleb128 0x7
	.byte	0x8
	.byte	0xd
	.byte	0x8
	.4byte	0x8f0
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0xd
	.byte	0x9
	.byte	0xb
	.4byte	0x8f0
	.byte	0
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0xd
	.byte	0xa
	.byte	0xe
	.4byte	0x6d
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.4byte	.LASF115
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0xd
	.byte	0xb
	.byte	0x3
	.4byte	0x8cd
	.uleb128 0x7
	.byte	0x10
	.byte	0xd
	.byte	0xd
	.4byte	0x933
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0xd
	.byte	0xe
	.byte	0xd
	.4byte	0x53
	.byte	0
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0xd
	.byte	0xf
	.byte	0x12
	.4byte	0x8f7
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0xd
	.byte	0x10
	.byte	0xb
	.4byte	0x138
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF120
	.byte	0xd
	.byte	0x11
	.byte	0x3
	.4byte	0x903
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0x39
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0x2
	.byte	0x41
	.byte	0x12
	.4byte	0x6d
	.uleb128 0x13
	.4byte	.LASF124
	.byte	0x2
	.byte	0x5c
	.byte	0x13
	.4byte	0x93f
	.uleb128 0x1e
	.4byte	0x8c1
	.byte	0x1
	.byte	0xc
	.byte	0x17
	.uleb128 0x5
	.byte	0x3
	.4byte	pwm_ops
	.uleb128 0x8
	.4byte	.LASF125
	.byte	0x3a
	.4byte	0x39
	.4byte	0x98a
	.uleb128 0x2
	.4byte	0x98a
	.uleb128 0x2
	.4byte	0x6d
	.byte	0
	.uleb128 0x4
	.4byte	0x933
	.uleb128 0x8
	.4byte	.LASF126
	.byte	0x39
	.4byte	0x39
	.4byte	0x9a8
	.uleb128 0x2
	.4byte	0x98a
	.uleb128 0x2
	.4byte	0x8f0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF127
	.byte	0x2d
	.4byte	0x39
	.4byte	0x9bc
	.uleb128 0x2
	.4byte	0x98a
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF142
	.byte	0x10
	.byte	0x9e
	.byte	0x6
	.4byte	0x9cf
	.uleb128 0x2
	.4byte	0x157
	.uleb128 0x20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF128
	.2byte	0x54c
	.4byte	0x94b
	.uleb128 0x14
	.4byte	.LASF129
	.2byte	0x55d
	.4byte	0x94b
	.uleb128 0x8
	.4byte	.LASF130
	.byte	0x24
	.4byte	0x39
	.4byte	0x9f9
	.uleb128 0x2
	.4byte	0x98a
	.byte	0
	.uleb128 0x8
	.4byte	.LASF131
	.byte	0x42
	.4byte	0x39
	.4byte	0xa0d
	.uleb128 0x2
	.4byte	0x98a
	.byte	0
	.uleb128 0x8
	.4byte	.LASF132
	.byte	0x1b
	.4byte	0x39
	.4byte	0xa21
	.uleb128 0x2
	.4byte	0x98a
	.byte	0
	.uleb128 0xf
	.4byte	.LASF135
	.byte	0x4c
	.4byte	0x87
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad6
	.uleb128 0xa
	.string	"fp"
	.byte	0x4c
	.byte	0x1b
	.4byte	0x682
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"cmd"
	.byte	0x4c
	.byte	0x23
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"arg"
	.byte	0x4c
	.byte	0x36
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.string	"ret"
	.byte	0x4e
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x4f
	.byte	0x10
	.4byte	0x98a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x50
	.byte	0xb
	.4byte	0x8f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0x51
	.byte	0xd
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.4byte	0xb67
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x63
	.byte	0x49
	.uleb128 0xc
	.4byte	0xb67
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x68
	.byte	0x48
	.uleb128 0xc
	.4byte	0xb67
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x6e
	.byte	0x4c
	.uleb128 0xc
	.4byte	0xb67
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x78
	.byte	0x4c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF136
	.byte	0x2d
	.4byte	0x87
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb17
	.uleb128 0xa
	.string	"fp"
	.byte	0x2d
	.byte	0x1b
	.4byte	0x682
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.string	"ret"
	.byte	0x2f
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x30
	.byte	0x10
	.4byte	0x98a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.4byte	.LASF137
	.byte	0x13
	.4byte	0x87
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb67
	.uleb128 0x21
	.4byte	.LASF138
	.byte	0x1
	.byte	0x13
	.byte	0x2b
	.4byte	0x632
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"fp"
	.byte	0x13
	.byte	0x3a
	.4byte	0x682
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"ret"
	.byte	0x15
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x16
	.byte	0x10
	.4byte	0x98a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.4byte	.LASF143
	.byte	0x2
	.byte	0xb3
	.byte	0x3a
	.4byte	0x93f
	.byte	0x3
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
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
	.sleb128 13
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0x9
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
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
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
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 15
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x17
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.4byte	0x2c
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF72:
	.string	"aos_dirent_t"
.LASF106:
	.string	"inode_t"
.LASF75:
	.string	"aos_dir_t"
.LASF13:
	.string	"unsigned int"
.LASF56:
	.string	"st_blksize"
.LASF105:
	.string	"refs"
.LASF90:
	.string	"opendir"
.LASF84:
	.string	"sync"
.LASF28:
	.string	"__nlink_t"
.LASF66:
	.string	"f_ffree"
.LASF102:
	.string	"i_name"
.LASF135:
	.string	"vfs_pwm_ioctl"
.LASF71:
	.string	"d_name"
.LASF24:
	.string	"__ino_t"
.LASF35:
	.string	"ino_t"
.LASF10:
	.string	"uint32_t"
.LASF96:
	.string	"telldir"
.LASF101:
	.string	"i_arg"
.LASF133:
	.string	"pwm_dev"
.LASF88:
	.string	"unlink"
.LASF12:
	.string	"long long unsigned int"
.LASF57:
	.string	"st_blocks"
.LASF129:
	.string	"xTaskGetTickCountFromISR"
.LASF109:
	.string	"offset"
.LASF120:
	.string	"pwm_dev_t"
.LASF108:
	.string	"f_arg"
.LASF142:
	.string	"bl_printk"
.LASF100:
	.string	"i_fops"
.LASF44:
	.string	"stat"
.LASF136:
	.string	"vfs_pwm_close"
.LASF45:
	.string	"st_dev"
.LASF124:
	.string	"TrapNetCounter"
.LASF123:
	.string	"pwm_ops"
.LASF32:
	.string	"tv_nsec"
.LASF16:
	.string	"size_t"
.LASF127:
	.string	"hal_pwm_stop_bydev"
.LASF25:
	.string	"__mode_t"
.LASF70:
	.string	"d_type"
.LASF132:
	.string	"hal_pwm_init_bydev"
.LASF112:
	.string	"_Bool"
.LASF50:
	.string	"st_gid"
.LASF95:
	.string	"rewinddir"
.LASF47:
	.string	"st_mode"
.LASF93:
	.string	"mkdir"
.LASF113:
	.string	"duty_cycle"
.LASF110:
	.string	"file_t"
.LASF48:
	.string	"st_nlink"
.LASF114:
	.string	"freq"
.LASF140:
	.string	"inode_ops_t"
.LASF130:
	.string	"hal_pwm_start_bydev"
.LASF82:
	.string	"ioctl"
.LASF134:
	.string	"duty"
.LASF83:
	.string	"poll"
.LASF119:
	.string	"priv"
.LASF43:
	.string	"timespec"
.LASF29:
	.string	"char"
.LASF33:
	.string	"blkcnt_t"
.LASF125:
	.string	"hal_pwm_set_freq_bydev"
.LASF111:
	.string	"poll_notify_t"
.LASF79:
	.string	"close"
.LASF40:
	.string	"ssize_t"
.LASF87:
	.string	"lseek"
.LASF7:
	.string	"uint8_t"
.LASF104:
	.string	"type"
.LASF30:
	.string	"time_t"
.LASF86:
	.string	"fs_ops"
.LASF59:
	.string	"statfs"
.LASF46:
	.string	"st_ino"
.LASF128:
	.string	"xTaskGetTickCount"
.LASF65:
	.string	"f_files"
.LASF5:
	.string	"long long int"
.LASF81:
	.string	"write"
.LASF60:
	.string	"f_type"
.LASF21:
	.string	"__dev_t"
.LASF137:
	.string	"vfs_pwm_open"
.LASF121:
	.string	"BaseType_t"
.LASF37:
	.string	"dev_t"
.LASF63:
	.string	"f_bfree"
.LASF77:
	.string	"file_ops"
.LASF76:
	.string	"file_ops_t"
.LASF141:
	.string	"pollfd"
.LASF64:
	.string	"f_bavail"
.LASF143:
	.string	"xPortIsInsideInterrupt"
.LASF67:
	.string	"f_fsid"
.LASF58:
	.string	"st_spare4"
.LASF98:
	.string	"access"
.LASF122:
	.string	"TickType_t"
.LASF89:
	.string	"rename"
.LASF17:
	.string	"long double"
.LASF23:
	.string	"__gid_t"
.LASF62:
	.string	"f_blocks"
.LASF116:
	.string	"pwm_config_t"
.LASF39:
	.string	"gid_t"
.LASF15:
	.string	"__int_least64_t"
.LASF99:
	.string	"i_ops"
.LASF38:
	.string	"uid_t"
.LASF118:
	.string	"config"
.LASF94:
	.string	"rmdir"
.LASF92:
	.string	"closedir"
.LASF3:
	.string	"short int"
.LASF54:
	.string	"st_mtim"
.LASF103:
	.string	"i_flags"
.LASF4:
	.string	"long int"
.LASF107:
	.string	"node"
.LASF91:
	.string	"readdir"
.LASF68:
	.string	"f_namelen"
.LASF19:
	.string	"__blksize_t"
.LASF22:
	.string	"__uid_t"
.LASF53:
	.string	"st_atim"
.LASF80:
	.string	"read"
.LASF126:
	.string	"hal_pwm_set_duty_bydev"
.LASF73:
	.string	"dd_vfs_fd"
.LASF78:
	.string	"open"
.LASF31:
	.string	"tv_sec"
.LASF11:
	.string	"long unsigned int"
.LASF115:
	.string	"float"
.LASF6:
	.string	"int32_t"
.LASF117:
	.string	"port"
.LASF42:
	.string	"nlink_t"
.LASF61:
	.string	"f_bsize"
.LASF8:
	.string	"unsigned char"
.LASF14:
	.string	"__uint32_t"
.LASF34:
	.string	"blksize_t"
.LASF52:
	.string	"st_size"
.LASF69:
	.string	"d_ino"
.LASF49:
	.string	"st_uid"
.LASF26:
	.string	"__off_t"
.LASF55:
	.string	"st_ctim"
.LASF27:
	.string	"_ssize_t"
.LASF74:
	.string	"dd_rsv"
.LASF2:
	.string	"signed char"
.LASF41:
	.string	"mode_t"
.LASF131:
	.string	"hal_pwm_finalize_bydev"
.LASF36:
	.string	"off_t"
.LASF9:
	.string	"short unsigned int"
.LASF97:
	.string	"seekdir"
.LASF18:
	.string	"__blkcnt_t"
.LASF20:
	.string	"_off_t"
.LASF51:
	.string	"st_rdev"
.LASF139:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF85:
	.string	"fs_ops_t"
.LASF138:
	.string	"inode"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/device/vfs_pwm.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/vfs"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
