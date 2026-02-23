	.file	"vfs_file.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/vfs" "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/src/vfs_file.c"
	.section	.bss.files,"aw",@nobits
	.align	2
	.type	files, @object
	.size	files, 720
files:
	.zero	720
	.section	.text.new_file,"ax",@progbits
	.align	1
	.globl	new_file
	.type	new_file, @function
new_file:
.LFB3:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/src/vfs_file.c"
	.loc 1 13 1
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
	.loc 1 17 14
	sw	zero,-20(s0)
	.loc 1 17 5
	j	.L2
.L5:
	.loc 1 18 11
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(files)
	addi	a4,a4,%lo(files)
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 20 14
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 20 12
	beq	a5,zero,.L8
	.loc 1 17 38 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	.loc 1 17 23 discriminator 1
	lw	a4,-20(s0)
	li	a5,59
	ble	a4,a5,.L5
	.loc 1 25 11
	li	a5,0
	j	.L6
.L8:
	.loc 1 21 13
	nop
.L4:
	.loc 1 28 13
	lw	a5,-24(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 29 14
	lw	a5,-24(s0)
	sw	zero,4(a5)
	.loc 1 30 15
	lw	a5,-24(s0)
	sw	zero,8(a5)
	.loc 1 31 5
	lw	a0,-36(s0)
	call	inode_ref
	.loc 1 32 12
	lw	a5,-24(s0)
.L6:
	.loc 1 33 1
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
.LFE3:
	.size	new_file, .-new_file
	.section	.text.del_file,"ax",@progbits
	.align	1
	.globl	del_file
	.type	del_file, @function
del_file:
.LFB4:
	.loc 1 36 1
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
	.loc 1 37 5
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	inode_unref
	.loc 1 38 16
	lw	a5,-20(s0)
	sw	zero,0(a5)
	.loc 1 39 1
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
.LFE4:
	.size	del_file, .-del_file
	.section	.text.get_fd,"ax",@progbits
	.align	1
	.globl	get_fd
	.type	get_fd, @function
get_fd:
.LFB5:
	.loc 1 42 1
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
	.loc 1 43 18
	lw	a4,-20(s0)
	lui	a5,%hi(files)
	addi	a5,a5,%lo(files)
	sub	a5,a4,a5
	srai	a4,a5,2
	li	a5,-1431654400
	addi	a5,a5,-1365
	mul	a5,a4,a5
	.loc 1 43 27
	addi	a5,a5,2
	.loc 1 44 1
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
.LFE5:
	.size	get_fd, .-get_fd
	.section	.text.get_file,"ax",@progbits
	.align	1
	.globl	get_file
	.type	get_file, @function
get_file:
.LFB6:
	.loc 1 47 1
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
	.loc 1 50 8
	lw	a5,-36(s0)
	addi	a5,a5,-2
	sw	a5,-36(s0)
	.loc 1 52 8
	lw	a5,-36(s0)
	bge	a5,zero,.L13
	.loc 1 53 15
	li	a5,0
	j	.L14
.L13:
	.loc 1 56 8
	lw	a4,-36(s0)
	li	a5,59
	ble	a4,a5,.L15
	.loc 1 57 15
	li	a5,0
	j	.L14
.L15:
	.loc 1 60 7
	lw	a4,-36(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(files)
	addi	a4,a4,%lo(files)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 61 13
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 61 24
	beq	a5,zero,.L16
	.loc 1 61 24 is_stmt 0 discriminator 1
	lw	a5,-20(s0)
	.loc 1 61 24
	j	.L14
.L16:
	.loc 1 61 24 discriminator 2
	li	a5,0
.L14:
	.loc 1 62 1 is_stmt 1
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
	.size	get_file, .-get_file
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timeval.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timespec.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/types.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/stat.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_dir.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_inode.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9b4
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x12
	.4byte	.LASF119
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0xc8
	.byte	0x17
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x1e
	.byte	0xe
	.4byte	0x6f
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x22
	.byte	0xe
	.4byte	0x6f
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.4byte	0x6f
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x38
	.byte	0xf
	.4byte	0x61
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3c
	.byte	0x18
	.4byte	0x68
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x3f
	.byte	0x18
	.4byte	0x68
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x4b
	.byte	0x18
	.4byte	0x68
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x5a
	.byte	0x14
	.4byte	0x76
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
	.4byte	0x2b
	.uleb128 0x14
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0xd5
	.byte	0x18
	.4byte	0x68
	.uleb128 0x4
	.4byte	0x127
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF26
	.uleb128 0x9
	.4byte	0x127
	.uleb128 0x4
	.4byte	0x12e
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x2a
	.byte	0x19
	.4byte	0x90
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x10
	.byte	0x7
	.byte	0x2f
	.4byte	0x177
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x7
	.byte	0x30
	.byte	0x9
	.4byte	0x144
	.byte	0
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x7
	.byte	0x31
	.byte	0x7
	.4byte	0x6f
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x8
	.byte	0x61
	.byte	0x14
	.4byte	0x9c
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x8
	.byte	0x66
	.byte	0x15
	.4byte	0xa8
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x8
	.byte	0x89
	.byte	0x11
	.4byte	0xe4
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x8
	.byte	0x9b
	.byte	0x11
	.4byte	0xfc
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x8
	.byte	0x9f
	.byte	0x11
	.4byte	0xc0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x8
	.byte	0xa3
	.byte	0x11
	.4byte	0xcc
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x8
	.byte	0xa7
	.byte	0x11
	.4byte	0xd8
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x8
	.byte	0xb6
	.byte	0x12
	.4byte	0x108
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x8
	.byte	0xbb
	.byte	0x12
	.4byte	0xf0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x8
	.byte	0xc0
	.byte	0x13
	.4byte	0x116
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x58
	.byte	0x9
	.byte	0x1b
	.4byte	0x2b2
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x9
	.byte	0x1d
	.byte	0x9
	.4byte	0x1a7
	.byte	0
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x9
	.byte	0x1e
	.byte	0x9
	.4byte	0x18f
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x9
	.byte	0x1f
	.byte	0xa
	.4byte	0x1d7
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x9
	.byte	0x20
	.byte	0xb
	.4byte	0x1e3
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x9
	.byte	0x21
	.byte	0x9
	.4byte	0x1b3
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x9
	.byte	0x22
	.byte	0x9
	.4byte	0x1bf
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x9
	.byte	0x23
	.byte	0x9
	.4byte	0x1a7
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x9
	.byte	0x24
	.byte	0x9
	.4byte	0x19b
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x9
	.byte	0x2a
	.byte	0x13
	.4byte	0x150
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x9
	.byte	0x2b
	.byte	0x13
	.4byte	0x150
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x9
	.byte	0x2c
	.byte	0x13
	.4byte	0x150
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x9
	.byte	0x2d
	.byte	0xd
	.4byte	0x183
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x9
	.byte	0x2e
	.byte	0xc
	.4byte	0x177
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x9
	.byte	0x30
	.byte	0x8
	.4byte	0x2b2
	.byte	0x50
	.byte	0
	.uleb128 0xa
	.4byte	0x6f
	.4byte	0x2c2
	.uleb128 0xe
	.4byte	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x24
	.byte	0xa
	.byte	0x4
	.4byte	0x344
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0xa
	.byte	0x5
	.byte	0xa
	.4byte	0x6f
	.byte	0
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0xa
	.byte	0x6
	.byte	0xa
	.4byte	0x6f
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0xa
	.byte	0x7
	.byte	0xa
	.4byte	0x6f
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0xa
	.byte	0x8
	.byte	0xa
	.4byte	0x6f
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0xa
	.byte	0x9
	.byte	0xa
	.4byte	0x6f
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0xa
	.byte	0xa
	.byte	0xa
	.4byte	0x6f
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0xa
	.byte	0xb
	.byte	0xa
	.4byte	0x6f
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.4byte	0x6f
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0xa
	.byte	0xd
	.byte	0xa
	.4byte	0x6f
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0xa
	.byte	0x10
	.4byte	0x374
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0xa
	.byte	0x11
	.byte	0x9
	.4byte	0x2b
	.byte	0
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0xa
	.byte	0x12
	.byte	0xd
	.4byte	0x138
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0xa
	.byte	0x13
	.byte	0xa
	.4byte	0x374
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	0x127
	.4byte	0x383
	.uleb128 0x15
	.4byte	0x3e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0xa
	.byte	0x14
	.byte	0x3
	.4byte	0x344
	.uleb128 0x8
	.byte	0x8
	.byte	0xa
	.byte	0x16
	.4byte	0x3b2
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0xa
	.byte	0x17
	.byte	0x9
	.4byte	0x2b
	.byte	0
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0xa
	.byte	0x18
	.byte	0x9
	.4byte	0x2b
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xa
	.byte	0x19
	.byte	0x3
	.4byte	0x38f
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0xb
	.byte	0x2c
	.byte	0x1f
	.4byte	0x432
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x1c
	.byte	0xb
	.byte	0x46
	.4byte	0x432
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0xb
	.byte	0x47
	.byte	0xb
	.4byte	0x66f
	.byte	0
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0xb
	.byte	0x48
	.byte	0xb
	.4byte	0x683
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xb
	.byte	0x49
	.byte	0xf
	.4byte	0x6a1
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xb
	.byte	0x4a
	.byte	0xf
	.4byte	0x6c5
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xb
	.byte	0x4b
	.byte	0xb
	.4byte	0x6e3
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xb
	.byte	0x4d
	.byte	0xb
	.4byte	0x712
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xb
	.byte	0x4f
	.byte	0xb
	.4byte	0x683
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.4byte	0x3ca
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0xb
	.byte	0x2d
	.byte	0x1d
	.4byte	0x554
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0x50
	.byte	0xb
	.byte	0x52
	.4byte	0x554
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0xb
	.byte	0x53
	.byte	0xb
	.4byte	0x730
	.byte	0
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0xb
	.byte	0x54
	.byte	0xb
	.4byte	0x683
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xb
	.byte	0x55
	.byte	0xf
	.4byte	0x74e
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xb
	.byte	0x56
	.byte	0xf
	.4byte	0x76c
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0xb
	.byte	0x57
	.byte	0xd
	.4byte	0x78a
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xb
	.byte	0x58
	.byte	0xb
	.4byte	0x683
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.4byte	0x7ad
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0xb
	.byte	0x5a
	.byte	0xb
	.4byte	0x7c6
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0xb
	.byte	0x5b
	.byte	0xb
	.4byte	0x7e4
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0xb
	.byte	0x5c
	.byte	0x12
	.4byte	0x802
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xb
	.byte	0x5d
	.byte	0x15
	.4byte	0x820
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0xb
	.byte	0x5e
	.byte	0xb
	.4byte	0x839
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0xb
	.byte	0x5f
	.byte	0xb
	.4byte	0x7c6
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0xb
	.byte	0x60
	.byte	0xb
	.4byte	0x7c6
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0xb
	.byte	0x61
	.byte	0xc
	.4byte	0x84e
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0xb
	.byte	0x62
	.byte	0xc
	.4byte	0x867
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0xb
	.byte	0x63
	.byte	0xc
	.4byte	0x881
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xb
	.byte	0x64
	.byte	0xb
	.4byte	0x6e3
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0xb
	.byte	0x65
	.byte	0xb
	.4byte	0x8a4
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0xb
	.byte	0x66
	.byte	0xb
	.4byte	0x730
	.byte	0x4c
	.byte	0
	.uleb128 0x9
	.4byte	0x443
	.uleb128 0x16
	.4byte	.LASF120
	.byte	0x4
	.byte	0xb
	.byte	0x2f
	.byte	0x7
	.4byte	0x57d
	.uleb128 0xf
	.4byte	.LASF97
	.byte	0x30
	.byte	0x17
	.4byte	0x57d
	.uleb128 0xf
	.4byte	.LASF98
	.byte	0x31
	.byte	0x15
	.4byte	0x582
	.byte	0
	.uleb128 0x4
	.4byte	0x3be
	.uleb128 0x4
	.4byte	0x437
	.uleb128 0x8
	.byte	0x14
	.byte	0xb
	.byte	0x35
	.4byte	0x5de
	.uleb128 0x17
	.string	"ops"
	.byte	0xb
	.byte	0x36
	.byte	0x17
	.4byte	0x559
	.byte	0
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0xb
	.byte	0x37
	.byte	0xb
	.4byte	0x114
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.4byte	0x122
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0xb
	.byte	0x39
	.byte	0x9
	.4byte	0x2b
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0xb
	.byte	0x3a
	.byte	0xd
	.4byte	0x138
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0xb
	.byte	0x3b
	.byte	0xd
	.4byte	0x138
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0xb
	.byte	0x3c
	.byte	0x3
	.4byte	0x587
	.uleb128 0x8
	.byte	0xc
	.byte	0xb
	.byte	0x3e
	.4byte	0x61a
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0xb
	.byte	0x3f
	.byte	0xe
	.4byte	0x61a
	.byte	0
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0xb
	.byte	0x40
	.byte	0xb
	.4byte	0x114
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0xb
	.byte	0x41
	.byte	0xc
	.4byte	0x32
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	0x5de
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0xb
	.byte	0x42
	.byte	0x3
	.4byte	0x5ea
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0xb
	.byte	0x45
	.byte	0x10
	.4byte	0x637
	.uleb128 0x4
	.4byte	0x63c
	.uleb128 0xb
	.4byte	0x64c
	.uleb128 0x2
	.4byte	0x64c
	.uleb128 0x2
	.4byte	0x114
	.byte	0
	.uleb128 0x4
	.4byte	0x651
	.uleb128 0x18
	.4byte	.LASF121
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x61a
	.uleb128 0x2
	.4byte	0x66a
	.byte	0
	.uleb128 0x4
	.4byte	0x61f
	.uleb128 0x4
	.4byte	0x656
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x683
	.uleb128 0x2
	.4byte	0x66a
	.byte	0
	.uleb128 0x4
	.4byte	0x674
	.uleb128 0x5
	.4byte	0x1cb
	.4byte	0x6a1
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x114
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	0x688
	.uleb128 0x5
	.4byte	0x1cb
	.4byte	0x6bf
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x6bf
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	0x6c4
	.uleb128 0x19
	.uleb128 0x4
	.4byte	0x6a6
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x6e3
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x82
	.byte	0
	.uleb128 0x4
	.4byte	0x6ca
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x70b
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x70b
	.uleb128 0x2
	.4byte	0x62b
	.uleb128 0x2
	.4byte	0x64c
	.uleb128 0x2
	.4byte	0x114
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF110
	.uleb128 0x4
	.4byte	0x6e8
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x730
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x4
	.4byte	0x717
	.uleb128 0x5
	.4byte	0x1cb
	.4byte	0x74e
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x122
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	0x735
	.uleb128 0x5
	.4byte	0x1cb
	.4byte	0x76c
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	0x753
	.uleb128 0x5
	.4byte	0x19b
	.4byte	0x78a
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x19b
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x4
	.4byte	0x771
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x7a8
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x7a8
	.byte	0
	.uleb128 0x4
	.4byte	0x1ef
	.uleb128 0x4
	.4byte	0x78f
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x7c6
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x133
	.byte	0
	.uleb128 0x4
	.4byte	0x7b2
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x7e4
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x133
	.byte	0
	.uleb128 0x4
	.4byte	0x7cb
	.uleb128 0x5
	.4byte	0x7fd
	.4byte	0x7fd
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x133
	.byte	0
	.uleb128 0x4
	.4byte	0x3b2
	.uleb128 0x4
	.4byte	0x7e9
	.uleb128 0x5
	.4byte	0x81b
	.4byte	0x81b
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x7fd
	.byte	0
	.uleb128 0x4
	.4byte	0x383
	.uleb128 0x4
	.4byte	0x807
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x839
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x7fd
	.byte	0
	.uleb128 0x4
	.4byte	0x825
	.uleb128 0xb
	.4byte	0x84e
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x7fd
	.byte	0
	.uleb128 0x4
	.4byte	0x83e
	.uleb128 0x5
	.4byte	0x6f
	.4byte	0x867
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x7fd
	.byte	0
	.uleb128 0x4
	.4byte	0x853
	.uleb128 0xb
	.4byte	0x881
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x7fd
	.uleb128 0x2
	.4byte	0x6f
	.byte	0
	.uleb128 0x4
	.4byte	0x86c
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x89f
	.uleb128 0x2
	.4byte	0x66a
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x89f
	.byte	0
	.uleb128 0x4
	.4byte	0x2c2
	.uleb128 0x4
	.4byte	0x886
	.uleb128 0xa
	.4byte	0x61f
	.4byte	0x8b9
	.uleb128 0xe
	.4byte	0x3e
	.byte	0x3b
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF113
	.byte	0x1
	.byte	0xa
	.byte	0xf
	.4byte	0x8a9
	.uleb128 0x5
	.byte	0x3
	.4byte	files
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0x70
	.4byte	0x8db
	.uleb128 0x2
	.4byte	0x61a
	.byte	0
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0x6f
	.4byte	0x8eb
	.uleb128 0x2
	.4byte	0x61a
	.byte	0
	.uleb128 0x11
	.4byte	.LASF114
	.byte	0x2e
	.byte	0x9
	.4byte	0x66a
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x91f
	.uleb128 0x1b
	.string	"fd"
	.byte	0x1
	.byte	0x2e
	.byte	0x16
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"f"
	.byte	0x30
	.byte	0xd
	.4byte	0x66a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF115
	.byte	0x29
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x947
	.uleb128 0xd
	.4byte	.LASF116
	.byte	0x29
	.byte	0x14
	.4byte	0x66a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF117
	.byte	0x1
	.byte	0x23
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x96c
	.uleb128 0xd
	.4byte	.LASF116
	.byte	0x23
	.byte	0x17
	.4byte	0x66a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF118
	.byte	0x1
	.byte	0xc
	.byte	0x9
	.4byte	0x66a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF105
	.byte	0xc
	.byte	0x1b
	.4byte	0x61a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"f"
	.byte	0xe
	.byte	0xd
	.4byte	0x66a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"idx"
	.byte	0xf
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.4byte	.LASF122
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.4byte	.L4
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
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
	.sleb128 11
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1e
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
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
	.4byte	.LFB3
	.uleb128 .LFE3-.LFB3
	.byte	0x7
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
	.byte	0x7
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
	.byte	0x7
	.4byte	.LFB6
	.uleb128 .LFE6-.LFB6
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"__off_t"
.LASF20:
	.string	"__gid_t"
.LASF66:
	.string	"f_namelen"
.LASF53:
	.string	"st_ctim"
.LASF61:
	.string	"f_bfree"
.LASF10:
	.string	"size_t"
.LASF62:
	.string	"f_bavail"
.LASF77:
	.string	"close"
.LASF5:
	.string	"signed char"
.LASF38:
	.string	"ssize_t"
.LASF75:
	.string	"file_ops"
.LASF65:
	.string	"f_fsid"
.LASF102:
	.string	"type"
.LASF13:
	.string	"long long unsigned int"
.LASF118:
	.string	"new_file"
.LASF14:
	.string	"__int_least64_t"
.LASF42:
	.string	"stat"
.LASF91:
	.string	"mkdir"
.LASF3:
	.string	"long long int"
.LASF45:
	.string	"st_mode"
.LASF44:
	.string	"st_ino"
.LASF22:
	.string	"__mode_t"
.LASF83:
	.string	"fs_ops_t"
.LASF15:
	.string	"__blkcnt_t"
.LASF9:
	.string	"long int"
.LASF52:
	.string	"st_mtim"
.LASF58:
	.string	"f_type"
.LASF51:
	.string	"st_atim"
.LASF112:
	.string	"inode_ref"
.LASF98:
	.string	"i_fops"
.LASF87:
	.string	"rename"
.LASF69:
	.string	"d_name"
.LASF40:
	.string	"nlink_t"
.LASF114:
	.string	"get_file"
.LASF34:
	.string	"off_t"
.LASF37:
	.string	"gid_t"
.LASF11:
	.string	"__uint32_t"
.LASF121:
	.string	"pollfd"
.LASF35:
	.string	"dev_t"
.LASF55:
	.string	"st_blocks"
.LASF47:
	.string	"st_uid"
.LASF56:
	.string	"st_spare4"
.LASF63:
	.string	"f_files"
.LASF2:
	.string	"unsigned int"
.LASF31:
	.string	"blkcnt_t"
.LASF12:
	.string	"long unsigned int"
.LASF92:
	.string	"rmdir"
.LASF71:
	.string	"dd_vfs_fd"
.LASF36:
	.string	"uid_t"
.LASF109:
	.string	"poll_notify_t"
.LASF8:
	.string	"short unsigned int"
.LASF85:
	.string	"lseek"
.LASF70:
	.string	"aos_dirent_t"
.LASF73:
	.string	"aos_dir_t"
.LASF111:
	.string	"inode_unref"
.LASF96:
	.string	"access"
.LASF25:
	.string	"__nlink_t"
.LASF50:
	.string	"st_size"
.LASF120:
	.string	"inode_ops_t"
.LASF100:
	.string	"i_name"
.LASF115:
	.string	"get_fd"
.LASF79:
	.string	"write"
.LASF86:
	.string	"unlink"
.LASF30:
	.string	"tv_nsec"
.LASF72:
	.string	"dd_rsv"
.LASF89:
	.string	"readdir"
.LASF18:
	.string	"__dev_t"
.LASF76:
	.string	"open"
.LASF93:
	.string	"rewinddir"
.LASF64:
	.string	"f_ffree"
.LASF67:
	.string	"d_ino"
.LASF16:
	.string	"__blksize_t"
.LASF17:
	.string	"_off_t"
.LASF94:
	.string	"telldir"
.LASF28:
	.string	"time_t"
.LASF117:
	.string	"del_file"
.LASF32:
	.string	"blksize_t"
.LASF29:
	.string	"tv_sec"
.LASF103:
	.string	"refs"
.LASF88:
	.string	"opendir"
.LASF46:
	.string	"st_nlink"
.LASF60:
	.string	"f_blocks"
.LASF110:
	.string	"_Bool"
.LASF6:
	.string	"unsigned char"
.LASF99:
	.string	"i_arg"
.LASF105:
	.string	"node"
.LASF68:
	.string	"d_type"
.LASF7:
	.string	"short int"
.LASF116:
	.string	"file"
.LASF54:
	.string	"st_blksize"
.LASF41:
	.string	"timespec"
.LASF90:
	.string	"closedir"
.LASF122:
	.string	"got_file"
.LASF21:
	.string	"__ino_t"
.LASF49:
	.string	"st_rdev"
.LASF4:
	.string	"long double"
.LASF26:
	.string	"char"
.LASF106:
	.string	"f_arg"
.LASF95:
	.string	"seekdir"
.LASF108:
	.string	"file_t"
.LASF101:
	.string	"i_flags"
.LASF81:
	.string	"poll"
.LASF80:
	.string	"ioctl"
.LASF19:
	.string	"__uid_t"
.LASF107:
	.string	"offset"
.LASF119:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF48:
	.string	"st_gid"
.LASF24:
	.string	"_ssize_t"
.LASF97:
	.string	"i_ops"
.LASF39:
	.string	"mode_t"
.LASF104:
	.string	"inode_t"
.LASF27:
	.string	"uint8_t"
.LASF57:
	.string	"statfs"
.LASF82:
	.string	"sync"
.LASF74:
	.string	"file_ops_t"
.LASF84:
	.string	"fs_ops"
.LASF78:
	.string	"read"
.LASF43:
	.string	"st_dev"
.LASF59:
	.string	"f_bsize"
.LASF113:
	.string	"files"
.LASF33:
	.string	"ino_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/src/vfs_file.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/vfs"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
