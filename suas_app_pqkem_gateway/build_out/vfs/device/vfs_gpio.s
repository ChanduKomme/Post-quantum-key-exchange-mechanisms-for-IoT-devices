	.file	"vfs_gpio.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/vfs" "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/device/vfs_gpio.c"
	.globl	gpio_ops
	.section	.rodata.gpio_ops,"a"
	.align	2
	.type	gpio_ops, @object
	.size	gpio_ops, 28
gpio_ops:
	.word	vfs_gpio_open
	.word	vfs_gpio_close
	.word	vfs_gpio_read
	.word	vfs_gpio_write
	.word	vfs_gpio_ioctl
	.zero	8
	.section	.text.vfs_gpio_open,"ax",@progbits
	.align	1
	.globl	vfs_gpio_open
	.type	vfs_gpio_open, @function
vfs_gpio_open:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/device/vfs_gpio.c"
	.loc 1 26 1
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
	.loc 1 27 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 28 17
	sw	zero,-24(s0)
	.loc 1 31 8
	lw	a5,-40(s0)
	beq	a5,zero,.L2
	.loc 1 31 27 discriminator 1
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 31 21 discriminator 1
	beq	a5,zero,.L2
	.loc 1 34 15
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 34 21
	lbu	a4,17(a5)
	.loc 1 34 12
	li	a5,1
	bne	a4,a5,.L3
	.loc 1 37 41
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 37 22
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 40 19
	lw	a0,-24(s0)
	call	hal_gpio_init
	sw	a0,-20(s0)
	.loc 1 34 12
	j	.L5
.L3:
	.loc 1 42 17
	sw	zero,-20(s0)
	.loc 1 34 12
	j	.L5
.L2:
	.loc 1 45 13
	li	a5,-22
	sw	a5,-20(s0)
.L5:
	.loc 1 48 12
	lw	a5,-20(s0)
	.loc 1 49 1
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
	.size	vfs_gpio_open, .-vfs_gpio_open
	.section	.text.vfs_gpio_close,"ax",@progbits
	.align	1
	.globl	vfs_gpio_close
	.type	vfs_gpio_close, @function
vfs_gpio_close:
.LFB6:
	.loc 1 52 1
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
	.loc 1 53 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 54 17
	sw	zero,-24(s0)
	.loc 1 57 8
	lw	a5,-36(s0)
	beq	a5,zero,.L8
	.loc 1 57 27 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 57 21 discriminator 1
	beq	a5,zero,.L8
	.loc 1 60 15
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 60 21
	lbu	a4,17(a5)
	.loc 1 60 12
	li	a5,1
	bne	a4,a5,.L9
	.loc 1 63 41
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 63 22
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 65 16
	lw	a5,-24(s0)
	beq	a5,zero,.L10
	.loc 1 68 23
	lw	a0,-24(s0)
	call	hal_gpio_finalize
	sw	a0,-20(s0)
	.loc 1 60 12
	j	.L12
.L10:
	.loc 1 70 21
	li	a5,-22
	sw	a5,-20(s0)
	.loc 1 60 12
	j	.L12
.L9:
	.loc 1 73 17
	sw	zero,-20(s0)
	.loc 1 60 12
	j	.L12
.L8:
	.loc 1 76 13
	li	a5,-22
	sw	a5,-20(s0)
.L12:
	.loc 1 79 12
	lw	a5,-20(s0)
	.loc 1 80 1
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
	.size	vfs_gpio_close, .-vfs_gpio_close
	.section	.text.vfs_gpio_write,"ax",@progbits
	.align	1
	.globl	vfs_gpio_write
	.type	vfs_gpio_write, @function
vfs_gpio_write:
.LFB7:
	.loc 1 83 1
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
	.loc 1 84 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 86 17
	sw	zero,-24(s0)
	.loc 1 89 8
	lw	a5,-36(s0)
	beq	a5,zero,.L15
	.loc 1 89 27 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 89 21 discriminator 1
	beq	a5,zero,.L15
	.loc 1 92 37
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 92 18
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 94 12
	lw	a5,-24(s0)
	beq	a5,zero,.L16
	.loc 1 95 52
	lw	a5,-24(s0)
	lbu	a4,1(a5)
	.loc 1 95 16
	li	a5,2
	bne	a4,a5,.L17
	.loc 1 96 27
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	sb	a5,-25(s0)
	.loc 1 97 17
	lbu	a5,-25(s0)
	li	a4,2
	beq	a5,a4,.L18
	li	a4,2
	bgt	a5,a4,.L19
	beq	a5,zero,.L20
	li	a4,1
	beq	a5,a4,.L21
	j	.L19
.L20:
	.loc 1 99 31
	lw	a0,-24(s0)
	call	hal_gpio_output_low
	sw	a0,-20(s0)
	.loc 1 100 25
	j	.L15
.L21:
	.loc 1 102 31
	lw	a0,-24(s0)
	call	hal_gpio_output_high
	sw	a0,-20(s0)
	.loc 1 103 25
	j	.L15
.L18:
	.loc 1 105 31
	lw	a0,-24(s0)
	call	hal_gpio_output_toggle
	sw	a0,-20(s0)
	.loc 1 106 25
	j	.L15
.L19:
	.loc 1 108 29
	li	a5,-22
	sw	a5,-20(s0)
	.loc 1 109 25
	j	.L15
.L17:
	.loc 1 112 21
	li	a5,-22
	sw	a5,-20(s0)
	j	.L15
.L16:
	.loc 1 115 17
	li	a5,-22
	sw	a5,-20(s0)
.L15:
	.loc 1 118 12
	lw	a5,-20(s0)
	.loc 1 119 1
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
	.size	vfs_gpio_write, .-vfs_gpio_write
	.section	.text.vfs_gpio_read,"ax",@progbits
	.align	1
	.globl	vfs_gpio_read
	.type	vfs_gpio_read, @function
vfs_gpio_read:
.LFB8:
	.loc 1 122 1
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
	.loc 1 123 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 124 17
	sw	zero,-24(s0)
	.loc 1 127 8
	lw	a5,-36(s0)
	beq	a5,zero,.L25
	.loc 1 127 27 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 127 21 discriminator 1
	beq	a5,zero,.L25
	.loc 1 130 37
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 130 18
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 132 12
	lw	a5,-24(s0)
	beq	a5,zero,.L26
	.loc 1 133 52
	lw	a5,-24(s0)
	lbu	a4,1(a5)
	.loc 1 133 16
	li	a5,2
	bne	a4,a5,.L27
	.loc 1 134 45
	lw	a5,-24(s0)
	lbu	a4,8(a5)
	.loc 1 134 35
	lw	a5,-40(s0)
	sb	a4,0(a5)
	.loc 1 135 21
	sw	zero,-20(s0)
.L27:
	.loc 1 139 51
	lw	a5,-24(s0)
	lbu	a4,1(a5)
	.loc 1 139 16
	li	a5,3
	bne	a4,a5,.L28
	.loc 1 141 23
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	call	hal_gpio_input_get
	sw	a0,-20(s0)
.L28:
	.loc 1 145 16
	lw	a5,-20(s0)
	bne	a5,zero,.L32
	.loc 1 146 21
	li	a5,1
	sw	a5,-20(s0)
	.loc 1 132 12
	j	.L32
.L26:
	.loc 1 149 17
	li	a5,-22
	sw	a5,-20(s0)
	.loc 1 132 12
	j	.L32
.L25:
	.loc 1 152 13
	li	a5,-22
	sw	a5,-20(s0)
	j	.L30
.L32:
	.loc 1 132 12
	nop
.L30:
	.loc 1 155 12
	lw	a5,-20(s0)
	.loc 1 156 1
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
	.size	vfs_gpio_read, .-vfs_gpio_read
	.section	.text.vfs_gpio_ioctl,"ax",@progbits
	.align	1
	.globl	vfs_gpio_ioctl
	.type	vfs_gpio_ioctl, @function
vfs_gpio_ioctl:
.LFB9:
	.loc 1 159 1
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
	.loc 1 160 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 161 17
	sw	zero,-24(s0)
	.loc 1 164 8
	lw	a5,-36(s0)
	beq	a5,zero,.L34
	.loc 1 164 27 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 164 21 discriminator 1
	bne	a5,zero,.L35
.L34:
	.loc 1 165 16
	li	a5,-22
	j	.L36
.L35:
	.loc 1 169 33
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 169 14
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 171 8
	lw	a5,-24(s0)
	bne	a5,zero,.L37
	.loc 1 172 16
	li	a5,-22
	j	.L36
.L37:
	.loc 1 175 9
	lw	a4,-40(s0)
	li	a5,2
	beq	a4,a5,.L38
	lw	a4,-40(s0)
	li	a5,2
	bgt	a4,a5,.L39
	lw	a5,-40(s0)
	beq	a5,zero,.L40
	lw	a4,-40(s0)
	li	a5,1
	beq	a4,a5,.L41
	j	.L39
.L40:
	.loc 1 177 23
	li	a1,32
	lw	a0,-24(s0)
	call	hal_gpio_pulltype_set
	sw	a0,-20(s0)
	.loc 1 178 17
	j	.L42
.L41:
	.loc 1 180 23
	li	a1,48
	lw	a0,-24(s0)
	call	hal_gpio_pulltype_set
	sw	a0,-20(s0)
	.loc 1 181 17
	j	.L42
.L38:
	.loc 1 183 23
	li	a1,16
	lw	a0,-24(s0)
	call	hal_gpio_pulltype_set
	sw	a0,-20(s0)
	.loc 1 184 17
	j	.L42
.L39:
	.loc 1 186 21
	li	a5,-22
	sw	a5,-20(s0)
	.loc 1 187 17
	nop
.L42:
	.loc 1 189 12
	lw	a5,-20(s0)
.L36:
	.loc 1 190 1
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
.LFE9:
	.size	vfs_gpio_ioctl, .-vfs_gpio_ioctl
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timeval.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timespec.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/types.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/stat.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_dir.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_inode.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/yloop_types.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/hal/soc/gpio.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/device/vfs_gpio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbe5
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x15
	.4byte	.LASF143
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
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x5a
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0xc8
	.byte	0x17
	.4byte	0x61
	.uleb128 0x16
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x82
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x1e
	.byte	0xe
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x22
	.byte	0xe
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x38
	.byte	0xf
	.4byte	0x39
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3c
	.byte	0x18
	.4byte	0x40
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x3f
	.byte	0x18
	.4byte	0x40
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x4b
	.byte	0x18
	.4byte	0x40
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x5a
	.byte	0x14
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x66
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x93
	.byte	0x14
	.4byte	0x7b
	.uleb128 0x17
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0xd5
	.byte	0x18
	.4byte	0x40
	.uleb128 0x4
	.4byte	0x127
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF26
	.uleb128 0xf
	.4byte	0x127
	.uleb128 0x4
	.4byte	0x12e
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x4c
	.byte	0x11
	.4byte	0xfc
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x5
	.byte	0x51
	.byte	0x12
	.4byte	0x108
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x6
	.byte	0x28
	.byte	0x12
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x6
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x4
	.4byte	0x15c
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x7
	.byte	0x2a
	.byte	0x19
	.4byte	0x6f
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x10
	.byte	0x8
	.byte	0x2f
	.4byte	0x1a0
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x8
	.byte	0x30
	.byte	0x9
	.4byte	0x16d
	.byte	0
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x8
	.byte	0x31
	.byte	0x7
	.4byte	0x47
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x9
	.byte	0x61
	.byte	0x14
	.4byte	0x9c
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x9
	.byte	0x66
	.byte	0x15
	.4byte	0xa8
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x9
	.byte	0x89
	.byte	0x11
	.4byte	0xe4
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x9
	.byte	0x9f
	.byte	0x11
	.4byte	0xc0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x9
	.byte	0xa3
	.byte	0x11
	.4byte	0xcc
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x9
	.byte	0xa7
	.byte	0x11
	.4byte	0xd8
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x9
	.byte	0xbb
	.byte	0x12
	.4byte	0xf0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x9
	.byte	0xc0
	.byte	0x13
	.4byte	0x116
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x58
	.byte	0xa
	.byte	0x1b
	.4byte	0x2c3
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xa
	.byte	0x1d
	.byte	0x9
	.4byte	0x1c4
	.byte	0
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xa
	.byte	0x1e
	.byte	0x9
	.4byte	0x1b8
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0xa
	.byte	0x1f
	.byte	0xa
	.4byte	0x1e8
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0xa
	.byte	0x20
	.byte	0xb
	.4byte	0x1f4
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0xa
	.byte	0x21
	.byte	0x9
	.4byte	0x1d0
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0xa
	.byte	0x22
	.byte	0x9
	.4byte	0x1dc
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0xa
	.byte	0x23
	.byte	0x9
	.4byte	0x1c4
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0xa
	.byte	0x24
	.byte	0x9
	.4byte	0x138
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0xa
	.byte	0x2a
	.byte	0x13
	.4byte	0x179
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0xa
	.byte	0x2b
	.byte	0x13
	.4byte	0x179
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0xa
	.byte	0x2c
	.byte	0x13
	.4byte	0x179
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xa
	.byte	0x2d
	.byte	0xd
	.4byte	0x1ac
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0xa
	.byte	0x2e
	.byte	0xc
	.4byte	0x1a0
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0xa
	.byte	0x30
	.byte	0x8
	.4byte	0x2c3
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.4byte	0x47
	.4byte	0x2d3
	.uleb128 0x18
	.4byte	0x82
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x24
	.byte	0xb
	.byte	0x4
	.4byte	0x355
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0xb
	.byte	0x5
	.byte	0xa
	.4byte	0x47
	.byte	0
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0xb
	.byte	0x6
	.byte	0xa
	.4byte	0x47
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0xb
	.byte	0x7
	.byte	0xa
	.4byte	0x47
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0xb
	.byte	0x8
	.byte	0xa
	.4byte	0x47
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0xb
	.byte	0x9
	.byte	0xa
	.4byte	0x47
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0xb
	.byte	0xa
	.byte	0xa
	.4byte	0x47
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0xb
	.byte	0xb
	.byte	0xa
	.4byte	0x47
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0xb
	.byte	0xc
	.byte	0xa
	.4byte	0x47
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0xb
	.byte	0xd
	.byte	0xa
	.4byte	0x47
	.byte	0x20
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0xb
	.byte	0x10
	.4byte	0x385
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0xb
	.byte	0x11
	.byte	0x9
	.4byte	0x7b
	.byte	0
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0xb
	.byte	0x12
	.byte	0xd
	.4byte	0x15c
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0xb
	.byte	0x13
	.byte	0xa
	.4byte	0x385
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.4byte	0x127
	.4byte	0x394
	.uleb128 0x19
	.4byte	0x82
	.byte	0
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0xb
	.byte	0x14
	.byte	0x3
	.4byte	0x355
	.uleb128 0xc
	.byte	0x8
	.byte	0xb
	.byte	0x16
	.4byte	0x3c3
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0xb
	.byte	0x17
	.byte	0x9
	.4byte	0x7b
	.byte	0
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0xb
	.byte	0x18
	.byte	0x9
	.4byte	0x7b
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0xb
	.byte	0x19
	.byte	0x3
	.4byte	0x3a0
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0xc
	.byte	0x2c
	.byte	0x1f
	.4byte	0x443
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x1c
	.byte	0xc
	.byte	0x46
	.4byte	0x443
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0xc
	.byte	0x47
	.byte	0xb
	.4byte	0x6ac
	.byte	0
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xc
	.byte	0x48
	.byte	0xb
	.4byte	0x6c0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xc
	.byte	0x49
	.byte	0xf
	.4byte	0x6de
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xc
	.byte	0x4a
	.byte	0xf
	.4byte	0x702
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xc
	.byte	0x4b
	.byte	0xb
	.4byte	0x720
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xc
	.byte	0x4d
	.byte	0xb
	.4byte	0x74f
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0xc
	.byte	0x4f
	.byte	0xb
	.4byte	0x6c0
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.4byte	0x3db
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0xc
	.byte	0x2d
	.byte	0x1d
	.4byte	0x565
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x50
	.byte	0xc
	.byte	0x52
	.4byte	0x565
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0xc
	.byte	0x53
	.byte	0xb
	.4byte	0x76d
	.byte	0
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xc
	.byte	0x54
	.byte	0xb
	.4byte	0x6c0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xc
	.byte	0x55
	.byte	0xf
	.4byte	0x78b
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xc
	.byte	0x56
	.byte	0xf
	.4byte	0x7a9
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0xc
	.byte	0x57
	.byte	0xd
	.4byte	0x7c7
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0xc
	.byte	0x58
	.byte	0xb
	.4byte	0x6c0
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0xc
	.byte	0x59
	.byte	0xb
	.4byte	0x7ea
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0xc
	.byte	0x5a
	.byte	0xb
	.4byte	0x803
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0xc
	.byte	0x5b
	.byte	0xb
	.4byte	0x821
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xc
	.byte	0x5c
	.byte	0x12
	.4byte	0x83f
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0xc
	.byte	0x5d
	.byte	0x15
	.4byte	0x85d
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0xc
	.byte	0x5e
	.byte	0xb
	.4byte	0x876
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0xc
	.byte	0x5f
	.byte	0xb
	.4byte	0x803
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0xc
	.byte	0x60
	.byte	0xb
	.4byte	0x803
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0xc
	.byte	0x61
	.byte	0xc
	.4byte	0x88b
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0xc
	.byte	0x62
	.byte	0xc
	.4byte	0x8a4
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0xc
	.byte	0x63
	.byte	0xc
	.4byte	0x8be
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xc
	.byte	0x64
	.byte	0xb
	.4byte	0x720
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0xc
	.byte	0x65
	.byte	0xb
	.4byte	0x8e1
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0xc
	.byte	0x66
	.byte	0xb
	.4byte	0x76d
	.byte	0x4c
	.byte	0
	.uleb128 0xf
	.4byte	0x454
	.uleb128 0x1a
	.4byte	.LASF144
	.byte	0x4
	.byte	0xc
	.byte	0x2f
	.byte	0x7
	.4byte	0x58e
	.uleb128 0x13
	.4byte	.LASF98
	.byte	0x30
	.byte	0x17
	.4byte	0x58e
	.uleb128 0x13
	.4byte	.LASF99
	.byte	0x31
	.byte	0x15
	.4byte	0x593
	.byte	0
	.uleb128 0x4
	.4byte	0x3cf
	.uleb128 0x4
	.4byte	0x448
	.uleb128 0xc
	.byte	0x14
	.byte	0xc
	.byte	0x35
	.4byte	0x5ee
	.uleb128 0x14
	.string	"ops"
	.byte	0xc
	.byte	0x36
	.byte	0x17
	.4byte	0x56a
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0xc
	.byte	0x37
	.byte	0xb
	.4byte	0x114
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0xc
	.byte	0x38
	.byte	0xb
	.4byte	0x122
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0xc
	.byte	0x39
	.byte	0x9
	.4byte	0x7b
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0xc
	.byte	0x3a
	.byte	0xd
	.4byte	0x15c
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0xc
	.byte	0x3b
	.byte	0xd
	.4byte	0x15c
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0xc
	.byte	0x3c
	.byte	0x3
	.4byte	0x598
	.uleb128 0xc
	.byte	0xc
	.byte	0xc
	.byte	0x3e
	.4byte	0x62a
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0xc
	.byte	0x3f
	.byte	0xe
	.4byte	0x62a
	.byte	0
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0xc
	.byte	0x40
	.byte	0xb
	.4byte	0x114
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0xc
	.byte	0x41
	.byte	0xc
	.4byte	0x89
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	0x5ee
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0xc
	.byte	0x42
	.byte	0x3
	.4byte	0x5fa
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0xc
	.byte	0x45
	.byte	0x10
	.4byte	0x647
	.uleb128 0x4
	.4byte	0x64c
	.uleb128 0x10
	.4byte	0x65c
	.uleb128 0x2
	.4byte	0x65c
	.uleb128 0x2
	.4byte	0x114
	.byte	0
	.uleb128 0x4
	.4byte	0x661
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x8
	.byte	0xd
	.byte	0x7
	.4byte	0x693
	.uleb128 0x14
	.string	"fd"
	.byte	0xd
	.byte	0x8
	.byte	0x9
	.4byte	0x7b
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0xd
	.byte	0x9
	.byte	0xb
	.4byte	0x39
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0xd
	.byte	0xa
	.byte	0xb
	.4byte	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	0x7b
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x62a
	.uleb128 0x2
	.4byte	0x6a7
	.byte	0
	.uleb128 0x4
	.4byte	0x62f
	.uleb128 0x4
	.4byte	0x693
	.uleb128 0x5
	.4byte	0x7b
	.4byte	0x6c0
	.uleb128 0x2
	.4byte	0x6a7
	.byte	0
	.uleb128 0x4
	.4byte	0x6b1
	.uleb128 0x5
	.4byte	0x144
	.4byte	0x6de
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x114
	.uleb128 0x2
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	0x6c5
	.uleb128 0x5
	.4byte	0x144
	.4byte	0x6fc
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x6fc
	.uleb128 0x2
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	0x701
	.uleb128 0x1b
	.uleb128 0x4
	.4byte	0x6e3
	.uleb128 0x5
	.4byte	0x7b
	.4byte	0x720
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x7b
	.uleb128 0x2
	.4byte	0x5a
	.byte	0
	.uleb128 0x4
	.4byte	0x707
	.uleb128 0x5
	.4byte	0x7b
	.4byte	0x748
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x748
	.uleb128 0x2
	.4byte	0x63b
	.uleb128 0x2
	.4byte	0x65c
	.uleb128 0x2
	.4byte	0x114
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF114
	.uleb128 0x4
	.4byte	0x725
	.uleb128 0x5
	.4byte	0x7b
	.4byte	0x76d
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x7b
	.byte	0
	.uleb128 0x4
	.4byte	0x754
	.uleb128 0x5
	.4byte	0x144
	.4byte	0x78b
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x122
	.uleb128 0x2
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	0x772
	.uleb128 0x5
	.4byte	0x144
	.4byte	0x7a9
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	0x790
	.uleb128 0x5
	.4byte	0x138
	.4byte	0x7c7
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x138
	.uleb128 0x2
	.4byte	0x7b
	.byte	0
	.uleb128 0x4
	.4byte	0x7ae
	.uleb128 0x5
	.4byte	0x7b
	.4byte	0x7e5
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x7e5
	.byte	0
	.uleb128 0x4
	.4byte	0x200
	.uleb128 0x4
	.4byte	0x7cc
	.uleb128 0x5
	.4byte	0x7b
	.4byte	0x803
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x133
	.byte	0
	.uleb128 0x4
	.4byte	0x7ef
	.uleb128 0x5
	.4byte	0x7b
	.4byte	0x821
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x133
	.byte	0
	.uleb128 0x4
	.4byte	0x808
	.uleb128 0x5
	.4byte	0x83a
	.4byte	0x83a
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x133
	.byte	0
	.uleb128 0x4
	.4byte	0x3c3
	.uleb128 0x4
	.4byte	0x826
	.uleb128 0x5
	.4byte	0x858
	.4byte	0x858
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x83a
	.byte	0
	.uleb128 0x4
	.4byte	0x394
	.uleb128 0x4
	.4byte	0x844
	.uleb128 0x5
	.4byte	0x7b
	.4byte	0x876
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x83a
	.byte	0
	.uleb128 0x4
	.4byte	0x862
	.uleb128 0x10
	.4byte	0x88b
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x83a
	.byte	0
	.uleb128 0x4
	.4byte	0x87b
	.uleb128 0x5
	.4byte	0x47
	.4byte	0x8a4
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x83a
	.byte	0
	.uleb128 0x4
	.4byte	0x890
	.uleb128 0x10
	.4byte	0x8be
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x83a
	.uleb128 0x2
	.4byte	0x47
	.byte	0
	.uleb128 0x4
	.4byte	0x8a9
	.uleb128 0x5
	.4byte	0x7b
	.4byte	0x8dc
	.uleb128 0x2
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x8dc
	.byte	0
	.uleb128 0x4
	.4byte	0x2d3
	.uleb128 0x4
	.4byte	0x8c3
	.uleb128 0x1c
	.4byte	.LASF145
	.byte	0xf
	.byte	0xf
	.byte	0x1e
	.4byte	0x443
	.uleb128 0x1d
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0xe
	.byte	0xb
	.byte	0xe
	.4byte	0x925
	.uleb128 0xa
	.4byte	.LASF115
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF116
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF117
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF118
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF119
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF120
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0xe
	.byte	0x15
	.byte	0x3
	.4byte	0x8f2
	.uleb128 0xc
	.byte	0xc
	.byte	0xe
	.byte	0x1a
	.4byte	0x96e
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0xe
	.byte	0x1b
	.byte	0xd
	.4byte	0x15c
	.byte	0
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0xe
	.byte	0x1c
	.byte	0x13
	.4byte	0x925
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0xe
	.byte	0x1d
	.byte	0xb
	.4byte	0x114
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0xe
	.byte	0x1e
	.byte	0xd
	.4byte	0x15c
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0xe
	.byte	0x1f
	.byte	0x3
	.4byte	0x931
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.4byte	.LASF127
	.uleb128 0x1e
	.4byte	0x8e6
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.uleb128 0x5
	.byte	0x3
	.4byte	gpio_ops
	.uleb128 0x8
	.4byte	.LASF128
	.byte	0x6d
	.byte	0x5
	.4byte	0x7b
	.4byte	0x9a9
	.uleb128 0x2
	.4byte	0x9a9
	.uleb128 0x2
	.4byte	0x925
	.byte	0
	.uleb128 0x4
	.4byte	0x96e
	.uleb128 0x8
	.4byte	.LASF129
	.byte	0x64
	.byte	0x9
	.4byte	0x150
	.4byte	0x9c8
	.uleb128 0x2
	.4byte	0x9a9
	.uleb128 0x2
	.4byte	0x168
	.byte	0
	.uleb128 0x8
	.4byte	.LASF130
	.byte	0x59
	.byte	0x9
	.4byte	0x150
	.4byte	0x9dd
	.uleb128 0x2
	.4byte	0x9a9
	.byte	0
	.uleb128 0x8
	.4byte	.LASF131
	.byte	0x44
	.byte	0x9
	.4byte	0x150
	.4byte	0x9f2
	.uleb128 0x2
	.4byte	0x9a9
	.byte	0
	.uleb128 0x8
	.4byte	.LASF132
	.byte	0x4f
	.byte	0x9
	.4byte	0x150
	.4byte	0xa07
	.uleb128 0x2
	.4byte	0x9a9
	.byte	0
	.uleb128 0x8
	.4byte	.LASF133
	.byte	0x9b
	.byte	0x9
	.4byte	0x150
	.4byte	0xa1c
	.uleb128 0x2
	.4byte	0x9a9
	.byte	0
	.uleb128 0x8
	.4byte	.LASF134
	.byte	0x39
	.byte	0x9
	.4byte	0x150
	.4byte	0xa31
	.uleb128 0x2
	.4byte	0x9a9
	.byte	0
	.uleb128 0xe
	.4byte	.LASF136
	.byte	0x9e
	.byte	0x5
	.4byte	0x7b
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa8f
	.uleb128 0x7
	.string	"fp"
	.byte	0x9e
	.byte	0x1c
	.4byte	0x6a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"cmd"
	.byte	0x9e
	.byte	0x24
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"arg"
	.byte	0x9e
	.byte	0x47
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.string	"ret"
	.byte	0xa0
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0xa1
	.byte	0x11
	.4byte	0x9a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF137
	.byte	0x79
	.byte	0x9
	.4byte	0x144
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaed
	.uleb128 0x7
	.string	"fp"
	.byte	0x79
	.byte	0x1f
	.4byte	0x6a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"buf"
	.byte	0x79
	.byte	0x29
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0x79
	.byte	0x45
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.string	"ret"
	.byte	0x7b
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x7c
	.byte	0x11
	.4byte	0x9a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF139
	.byte	0x52
	.byte	0x9
	.4byte	0x144
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb59
	.uleb128 0x7
	.string	"fp"
	.byte	0x52
	.byte	0x20
	.4byte	0x6a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"buf"
	.byte	0x52
	.byte	0x30
	.4byte	0x6fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0x52
	.byte	0x4c
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.string	"ret"
	.byte	0x54
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0x55
	.byte	0xd
	.4byte	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x56
	.byte	0x11
	.4byte	0x9a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF141
	.byte	0x33
	.byte	0x5
	.4byte	0x7b
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb9b
	.uleb128 0x7
	.string	"fp"
	.byte	0x33
	.byte	0x1c
	.4byte	0x6a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"ret"
	.byte	0x35
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x36
	.byte	0x11
	.4byte	0x9a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF146
	.byte	0x1
	.byte	0x19
	.byte	0x5
	.4byte	0x7b
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF142
	.byte	0x19
	.byte	0x2c
	.4byte	0x62a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"fp"
	.byte	0x19
	.byte	0x3b
	.4byte	0x6a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"ret"
	.byte	0x1b
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x1c
	.byte	0x11
	.4byte	0x9a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xd
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x21
	.sleb128 0
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
	.uleb128 0x26
	.byte	0
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
	.4byte	0x3c
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF71:
	.string	"aos_dirent_t"
.LASF105:
	.string	"inode_t"
.LASF132:
	.string	"hal_gpio_output_low"
.LASF74:
	.string	"aos_dir_t"
.LASF136:
	.string	"vfs_gpio_ioctl"
.LASF12:
	.string	"unsigned int"
.LASF55:
	.string	"st_blksize"
.LASF104:
	.string	"refs"
.LASF112:
	.string	"events"
.LASF89:
	.string	"opendir"
.LASF83:
	.string	"sync"
.LASF125:
	.string	"level"
.LASF25:
	.string	"__nlink_t"
.LASF65:
	.string	"f_ffree"
.LASF101:
	.string	"i_name"
.LASF146:
	.string	"vfs_gpio_open"
.LASF70:
	.string	"d_name"
.LASF21:
	.string	"__ino_t"
.LASF36:
	.string	"ino_t"
.LASF95:
	.string	"telldir"
.LASF141:
	.string	"vfs_gpio_close"
.LASF100:
	.string	"i_arg"
.LASF137:
	.string	"vfs_gpio_read"
.LASF87:
	.string	"unlink"
.LASF9:
	.string	"long long unsigned int"
.LASF56:
	.string	"st_blocks"
.LASF108:
	.string	"offset"
.LASF116:
	.string	"GPIO_CONFIG_MODE_OUTPUT"
.LASF107:
	.string	"f_arg"
.LASF99:
	.string	"i_fops"
.LASF139:
	.string	"vfs_gpio_write"
.LASF43:
	.string	"stat"
.LASF44:
	.string	"st_dev"
.LASF33:
	.string	"tv_nsec"
.LASF13:
	.string	"size_t"
.LASF22:
	.string	"__mode_t"
.LASF69:
	.string	"d_type"
.LASF114:
	.string	"_Bool"
.LASF49:
	.string	"st_gid"
.LASF94:
	.string	"rewinddir"
.LASF46:
	.string	"st_mode"
.LASF92:
	.string	"mkdir"
.LASF109:
	.string	"file_t"
.LASF47:
	.string	"st_nlink"
.LASF135:
	.string	"gpio_dev"
.LASF144:
	.string	"inode_ops_t"
.LASF127:
	.string	"float"
.LASF81:
	.string	"ioctl"
.LASF82:
	.string	"poll"
.LASF124:
	.string	"priv"
.LASF42:
	.string	"timespec"
.LASF26:
	.string	"char"
.LASF34:
	.string	"blkcnt_t"
.LASF110:
	.string	"poll_notify_t"
.LASF78:
	.string	"close"
.LASF113:
	.string	"revents"
.LASF28:
	.string	"ssize_t"
.LASF86:
	.string	"lseek"
.LASF30:
	.string	"uint8_t"
.LASF145:
	.string	"gpio_ops"
.LASF103:
	.string	"type"
.LASF31:
	.string	"time_t"
.LASF85:
	.string	"fs_ops"
.LASF58:
	.string	"statfs"
.LASF45:
	.string	"st_ino"
.LASF64:
	.string	"f_files"
.LASF8:
	.string	"long long int"
.LASF80:
	.string	"write"
.LASF59:
	.string	"f_type"
.LASF18:
	.string	"__dev_t"
.LASF37:
	.string	"dev_t"
.LASF62:
	.string	"f_bfree"
.LASF76:
	.string	"file_ops"
.LASF75:
	.string	"file_ops_t"
.LASF138:
	.string	"nbytes"
.LASF130:
	.string	"hal_gpio_output_toggle"
.LASF111:
	.string	"pollfd"
.LASF63:
	.string	"f_bavail"
.LASF66:
	.string	"f_fsid"
.LASF57:
	.string	"st_spare4"
.LASF140:
	.string	"write_buf"
.LASF97:
	.string	"access"
.LASF131:
	.string	"hal_gpio_output_high"
.LASF121:
	.string	"gpio_config_t"
.LASF88:
	.string	"rename"
.LASF14:
	.string	"long double"
.LASF20:
	.string	"__gid_t"
.LASF61:
	.string	"f_blocks"
.LASF39:
	.string	"gid_t"
.LASF11:
	.string	"__int_least64_t"
.LASF98:
	.string	"i_ops"
.LASF38:
	.string	"uid_t"
.LASF123:
	.string	"config"
.LASF93:
	.string	"rmdir"
.LASF91:
	.string	"closedir"
.LASF120:
	.string	"GPIO_CONFIG_PULL_DOWN"
.LASF4:
	.string	"short int"
.LASF53:
	.string	"st_mtim"
.LASF119:
	.string	"GPIO_CONFIG_PULL_UP"
.LASF102:
	.string	"i_flags"
.LASF6:
	.string	"long int"
.LASF117:
	.string	"GPIO_CONFIG_MODE_INPUT"
.LASF134:
	.string	"hal_gpio_init"
.LASF106:
	.string	"node"
.LASF90:
	.string	"readdir"
.LASF67:
	.string	"f_namelen"
.LASF16:
	.string	"__blksize_t"
.LASF19:
	.string	"__uid_t"
.LASF52:
	.string	"st_atim"
.LASF79:
	.string	"read"
.LASF72:
	.string	"dd_vfs_fd"
.LASF77:
	.string	"open"
.LASF133:
	.string	"hal_gpio_finalize"
.LASF32:
	.string	"tv_sec"
.LASF7:
	.string	"long unsigned int"
.LASF115:
	.string	"GPIO_CONFIG_MODE_AF"
.LASF29:
	.string	"int32_t"
.LASF122:
	.string	"port"
.LASF41:
	.string	"nlink_t"
.LASF128:
	.string	"hal_gpio_pulltype_set"
.LASF60:
	.string	"f_bsize"
.LASF3:
	.string	"unsigned char"
.LASF10:
	.string	"__uint32_t"
.LASF118:
	.string	"GPIO_CONFIG_PULL_NONE"
.LASF35:
	.string	"blksize_t"
.LASF126:
	.string	"gpio_dev_t"
.LASF51:
	.string	"st_size"
.LASF68:
	.string	"d_ino"
.LASF129:
	.string	"hal_gpio_input_get"
.LASF48:
	.string	"st_uid"
.LASF23:
	.string	"__off_t"
.LASF54:
	.string	"st_ctim"
.LASF24:
	.string	"_ssize_t"
.LASF73:
	.string	"dd_rsv"
.LASF2:
	.string	"signed char"
.LASF40:
	.string	"mode_t"
.LASF27:
	.string	"off_t"
.LASF5:
	.string	"short unsigned int"
.LASF96:
	.string	"seekdir"
.LASF15:
	.string	"__blkcnt_t"
.LASF17:
	.string	"_off_t"
.LASF50:
	.string	"st_rdev"
.LASF143:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF84:
	.string	"fs_ops_t"
.LASF142:
	.string	"inode"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/device/vfs_gpio.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/vfs"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
