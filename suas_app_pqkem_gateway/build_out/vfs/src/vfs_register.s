	.file	"vfs_register.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/vfs" "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/src/vfs_register.c"
	.section	.text.aos_register_driver,"ax",@progbits
	.align	1
	.globl	aos_register_driver
	.type	aos_register_driver, @function
aos_register_driver:
.LFB2:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/src/vfs_register.c"
	.loc 1 15 1
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
	.loc 1 16 14
	sw	zero,-28(s0)
	.loc 1 19 33
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 1 19 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L2
	.loc 1 20 13
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 21 16
	lw	a5,-24(s0)
	j	.L7
.L2:
	.loc 1 24 11
	addi	a5,s0,-28
	mv	a1,a5
	lw	a0,-36(s0)
	call	inode_reserve
	sw	a0,-20(s0)
	.loc 1 25 8
	lw	a5,-20(s0)
	bne	a5,zero,.L4
	.loc 1 27 20
	lw	a5,-28(s0)
	.loc 1 27 27
	li	a4,1
	sb	a4,16(a5)
	.loc 1 29 13
	lw	a5,-28(s0)
	.loc 1 29 25
	lw	a4,-40(s0)
	sw	a4,0(a5)
	.loc 1 30 13
	lw	a5,-28(s0)
	.loc 1 30 21
	lw	a4,-44(s0)
	sw	a4,4(a5)
.L4:
	.loc 1 34 33
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	mv	a4,a0
	.loc 1 34 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L5
	.loc 1 35 13
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 36 17
	lw	a5,-28(s0)
	lw	a5,8(a5)
	.loc 1 36 12
	beq	a5,zero,.L6
	.loc 1 37 27
	lw	a5,-28(s0)
	lw	a5,8(a5)
	.loc 1 37 13
	mv	a0,a5
	call	vPortFree
.L6:
	.loc 1 40 9
	lw	a5,-28(s0)
	li	a2,20
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 41 16
	lw	a5,-24(s0)
	j	.L7
.L5:
	.loc 1 44 12
	lw	a5,-20(s0)
.L7:
	.loc 1 45 1
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
.LFE2:
	.size	aos_register_driver, .-aos_register_driver
	.section	.text.aos_unregister_driver,"ax",@progbits
	.align	1
	.globl	aos_unregister_driver
	.type	aos_unregister_driver, @function
aos_unregister_driver:
.LFB3:
	.loc 1 48 1
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
	.loc 1 51 33
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 1 51 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L9
	.loc 1 52 13
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 53 16
	lw	a5,-24(s0)
	j	.L10
.L9:
	.loc 1 56 11
	lw	a0,-36(s0)
	call	inode_release
	sw	a0,-20(s0)
	.loc 1 58 33
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	mv	a4,a0
	.loc 1 58 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L11
	.loc 1 59 13
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 60 16
	lw	a5,-24(s0)
	j	.L10
.L11:
	.loc 1 63 12
	lw	a5,-20(s0)
.L10:
	.loc 1 64 1
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
	.size	aos_unregister_driver, .-aos_unregister_driver
	.section	.text.aos_register_fs,"ax",@progbits
	.align	1
	.globl	aos_register_fs
	.type	aos_register_fs, @function
aos_register_fs:
.LFB4:
	.loc 1 67 1
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
	.loc 1 68 14
	sw	zero,-28(s0)
	.loc 1 71 33
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 1 71 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L13
	.loc 1 72 13
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 73 16
	lw	a5,-24(s0)
	j	.L18
.L13:
	.loc 1 76 11
	addi	a5,s0,-28
	mv	a1,a5
	lw	a0,-36(s0)
	call	inode_reserve
	sw	a0,-20(s0)
	.loc 1 77 8
	lw	a5,-20(s0)
	bne	a5,zero,.L15
	.loc 1 78 20
	lw	a5,-28(s0)
	.loc 1 78 27
	li	a4,3
	sb	a4,16(a5)
	.loc 1 80 13
	lw	a5,-28(s0)
	.loc 1 80 26
	lw	a4,-40(s0)
	sw	a4,0(a5)
	.loc 1 81 13
	lw	a5,-28(s0)
	.loc 1 81 21
	lw	a4,-44(s0)
	sw	a4,4(a5)
.L15:
	.loc 1 84 33
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	mv	a4,a0
	.loc 1 84 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L16
	.loc 1 85 13
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 86 17
	lw	a5,-28(s0)
	lw	a5,8(a5)
	.loc 1 86 12
	beq	a5,zero,.L17
	.loc 1 87 27
	lw	a5,-28(s0)
	lw	a5,8(a5)
	.loc 1 87 13
	mv	a0,a5
	call	vPortFree
.L17:
	.loc 1 90 9
	lw	a5,-28(s0)
	li	a2,20
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 91 16
	lw	a5,-24(s0)
	j	.L18
.L16:
	.loc 1 94 12
	lw	a5,-20(s0)
.L18:
	.loc 1 95 1
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
.LFE4:
	.size	aos_register_fs, .-aos_register_fs
	.section	.text.aos_unregister_fs,"ax",@progbits
	.align	1
	.globl	aos_unregister_fs
	.type	aos_unregister_fs, @function
aos_unregister_fs:
.LFB5:
	.loc 1 98 1
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
	.loc 1 101 33
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 1 101 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L20
	.loc 1 102 13
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 103 16
	lw	a5,-24(s0)
	j	.L21
.L20:
	.loc 1 106 11
	lw	a0,-36(s0)
	call	inode_release
	sw	a0,-20(s0)
	.loc 1 108 33
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	mv	a4,a0
	.loc 1 108 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L22
	.loc 1 109 13
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 110 16
	lw	a5,-24(s0)
	j	.L21
.L22:
	.loc 1 113 12
	lw	a5,-20(s0)
.L21:
	.loc 1 114 1
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
	.size	aos_unregister_fs, .-aos_unregister_fs
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/queue.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/semphr.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timeval.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timespec.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/types.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/stat.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_dir.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_inode.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb37
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x16
	.4byte	.LASF132
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x8
	.4byte	0x127
	.uleb128 0x4
	.4byte	0x12e
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x28
	.byte	0x12
	.4byte	0x6f
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3f
	.byte	0x11
	.4byte	0x138
	.uleb128 0x8
	.4byte	0x15c
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x6
	.byte	0x41
	.byte	0x12
	.4byte	0x150
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x7
	.byte	0x30
	.byte	0x22
	.4byte	0x185
	.uleb128 0x4
	.4byte	0x18a
	.uleb128 0x11
	.4byte	.LASF120
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x8
	.byte	0x25
	.byte	0x17
	.4byte	0x179
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x9
	.byte	0x2a
	.byte	0x19
	.4byte	0x90
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x10
	.byte	0xa
	.byte	0x2f
	.4byte	0x1ce
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0xa
	.byte	0x30
	.byte	0x9
	.4byte	0x19b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0xa
	.byte	0x31
	.byte	0x7
	.4byte	0x6f
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0xb
	.byte	0x61
	.byte	0x14
	.4byte	0x9c
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0xb
	.byte	0x66
	.byte	0x15
	.4byte	0xa8
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0xb
	.byte	0x89
	.byte	0x11
	.4byte	0xe4
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0xb
	.byte	0x9b
	.byte	0x11
	.4byte	0xfc
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0xb
	.byte	0x9f
	.byte	0x11
	.4byte	0xc0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0xb
	.byte	0xa3
	.byte	0x11
	.4byte	0xcc
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0xb
	.byte	0xa7
	.byte	0x11
	.4byte	0xd8
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0xb
	.byte	0xb6
	.byte	0x12
	.4byte	0x108
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0xb
	.byte	0xbb
	.byte	0x12
	.4byte	0xf0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0xb
	.byte	0xc0
	.byte	0x13
	.4byte	0x116
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x58
	.byte	0xc
	.byte	0x1b
	.4byte	0x309
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0xc
	.byte	0x1d
	.byte	0x9
	.4byte	0x1fe
	.byte	0
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0xc
	.byte	0x1e
	.byte	0x9
	.4byte	0x1e6
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0xc
	.byte	0x1f
	.byte	0xa
	.4byte	0x22e
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0xc
	.byte	0x20
	.byte	0xb
	.4byte	0x23a
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0xc
	.byte	0x21
	.byte	0x9
	.4byte	0x20a
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0xc
	.byte	0x22
	.byte	0x9
	.4byte	0x216
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0xc
	.byte	0x23
	.byte	0x9
	.4byte	0x1fe
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0xc
	.byte	0x24
	.byte	0x9
	.4byte	0x1f2
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0xc
	.byte	0x2a
	.byte	0x13
	.4byte	0x1a7
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0xc
	.byte	0x2b
	.byte	0x13
	.4byte	0x1a7
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0xc
	.byte	0x2c
	.byte	0x13
	.4byte	0x1a7
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0xc
	.byte	0x2d
	.byte	0xd
	.4byte	0x1da
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0xc
	.byte	0x2e
	.byte	0xc
	.4byte	0x1ce
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0xc
	.byte	0x30
	.byte	0x8
	.4byte	0x309
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.4byte	0x6f
	.4byte	0x319
	.uleb128 0x19
	.4byte	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x24
	.byte	0xd
	.byte	0x4
	.4byte	0x39b
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0xd
	.byte	0x5
	.byte	0xa
	.4byte	0x6f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0xd
	.byte	0x6
	.byte	0xa
	.4byte	0x6f
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0xd
	.byte	0x7
	.byte	0xa
	.4byte	0x6f
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0xd
	.byte	0x8
	.byte	0xa
	.4byte	0x6f
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0xd
	.byte	0x9
	.byte	0xa
	.4byte	0x6f
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0xd
	.byte	0xa
	.byte	0xa
	.4byte	0x6f
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0xd
	.byte	0xb
	.byte	0xa
	.4byte	0x6f
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0xd
	.byte	0xc
	.byte	0xa
	.4byte	0x6f
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0xd
	.byte	0xd
	.byte	0xa
	.4byte	0x6f
	.byte	0x20
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0xd
	.byte	0x10
	.4byte	0x3cb
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0xd
	.byte	0x11
	.byte	0x9
	.4byte	0x2b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0xd
	.byte	0x12
	.byte	0xd
	.4byte	0x144
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0xd
	.byte	0x13
	.byte	0xa
	.4byte	0x3cb
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.4byte	0x127
	.4byte	0x3da
	.uleb128 0x1a
	.4byte	0x3e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0xd
	.byte	0x14
	.byte	0x3
	.4byte	0x39b
	.uleb128 0xa
	.byte	0x8
	.byte	0xd
	.byte	0x16
	.4byte	0x409
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0xd
	.byte	0x17
	.byte	0x9
	.4byte	0x2b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF78
	.byte	0xd
	.byte	0x18
	.byte	0x9
	.4byte	0x2b
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0xd
	.byte	0x19
	.byte	0x3
	.4byte	0x3e6
	.uleb128 0x1b
	.byte	0x7
	.byte	0x1
	.4byte	0x5a
	.byte	0xe
	.byte	0x12
	.byte	0x6
	.4byte	0x43c
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0xe
	.byte	0x2c
	.byte	0x1f
	.4byte	0x4b0
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x1c
	.byte	0xe
	.byte	0x46
	.4byte	0x4b0
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0xe
	.byte	0x47
	.byte	0xb
	.4byte	0x6ed
	.byte	0
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0xe
	.byte	0x48
	.byte	0xb
	.4byte	0x701
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0xe
	.byte	0x49
	.byte	0xf
	.4byte	0x71f
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0xe
	.byte	0x4a
	.byte	0xf
	.4byte	0x748
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0xe
	.byte	0x4b
	.byte	0xb
	.4byte	0x766
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0xe
	.byte	0x4d
	.byte	0xb
	.4byte	0x795
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0xe
	.byte	0x4f
	.byte	0xb
	.4byte	0x701
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.4byte	0x448
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0xe
	.byte	0x2d
	.byte	0x1d
	.4byte	0x5d2
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x50
	.byte	0xe
	.byte	0x52
	.4byte	0x5d2
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0xe
	.byte	0x53
	.byte	0xb
	.4byte	0x7b3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0xe
	.byte	0x54
	.byte	0xb
	.4byte	0x701
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0xe
	.byte	0x55
	.byte	0xf
	.4byte	0x7d1
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0xe
	.byte	0x56
	.byte	0xf
	.4byte	0x7ef
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0xe
	.byte	0x57
	.byte	0xd
	.4byte	0x80d
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0xe
	.byte	0x58
	.byte	0xb
	.4byte	0x701
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0xe
	.byte	0x59
	.byte	0xb
	.4byte	0x830
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0xe
	.byte	0x5a
	.byte	0xb
	.4byte	0x849
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0xe
	.byte	0x5b
	.byte	0xb
	.4byte	0x867
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0xe
	.byte	0x5c
	.byte	0x12
	.4byte	0x885
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0xe
	.byte	0x5d
	.byte	0x15
	.4byte	0x8a3
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0xe
	.byte	0x5e
	.byte	0xb
	.4byte	0x8bc
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0xe
	.byte	0x5f
	.byte	0xb
	.4byte	0x849
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF102
	.byte	0xe
	.byte	0x60
	.byte	0xb
	.4byte	0x849
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0xe
	.byte	0x61
	.byte	0xc
	.4byte	0x8d1
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0xe
	.byte	0x62
	.byte	0xc
	.4byte	0x8ea
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0xe
	.byte	0x63
	.byte	0xc
	.4byte	0x904
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0xe
	.byte	0x64
	.byte	0xb
	.4byte	0x766
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0xe
	.byte	0x65
	.byte	0xb
	.4byte	0x927
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0xe
	.byte	0x66
	.byte	0xb
	.4byte	0x7b3
	.byte	0x4c
	.byte	0
	.uleb128 0x8
	.4byte	0x4c1
	.uleb128 0x1c
	.4byte	.LASF133
	.byte	0x4
	.byte	0xe
	.byte	0x2f
	.byte	0x7
	.4byte	0x5fb
	.uleb128 0x13
	.4byte	.LASF107
	.byte	0x30
	.byte	0x17
	.4byte	0x5fb
	.uleb128 0x13
	.4byte	.LASF108
	.byte	0x31
	.byte	0x15
	.4byte	0x600
	.byte	0
	.uleb128 0x4
	.4byte	0x43c
	.uleb128 0x4
	.4byte	0x4b5
	.uleb128 0xa
	.byte	0x14
	.byte	0xe
	.byte	0x35
	.4byte	0x65c
	.uleb128 0x1d
	.string	"ops"
	.byte	0xe
	.byte	0x36
	.byte	0x17
	.4byte	0x5d7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xe
	.byte	0x37
	.byte	0xb
	.4byte	0x114
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0xe
	.byte	0x38
	.byte	0xb
	.4byte	0x122
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0xe
	.byte	0x39
	.byte	0x9
	.4byte	0x2b
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF112
	.byte	0xe
	.byte	0x3a
	.byte	0xd
	.4byte	0x144
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0xe
	.byte	0x3b
	.byte	0xd
	.4byte	0x144
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0xe
	.byte	0x3c
	.byte	0x3
	.4byte	0x605
	.uleb128 0xa
	.byte	0xc
	.byte	0xe
	.byte	0x3e
	.4byte	0x698
	.uleb128 0x2
	.4byte	.LASF115
	.byte	0xe
	.byte	0x3f
	.byte	0xe
	.4byte	0x698
	.byte	0
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0xe
	.byte	0x40
	.byte	0xb
	.4byte	0x114
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0xe
	.byte	0x41
	.byte	0xc
	.4byte	0x32
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	0x65c
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0xe
	.byte	0x42
	.byte	0x3
	.4byte	0x668
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0xe
	.byte	0x45
	.byte	0x10
	.4byte	0x6b5
	.uleb128 0x4
	.4byte	0x6ba
	.uleb128 0xe
	.4byte	0x6ca
	.uleb128 0x1
	.4byte	0x6ca
	.uleb128 0x1
	.4byte	0x114
	.byte	0
	.uleb128 0x4
	.4byte	0x6cf
	.uleb128 0x11
	.4byte	.LASF121
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x6e8
	.uleb128 0x1
	.4byte	0x698
	.uleb128 0x1
	.4byte	0x6e8
	.byte	0
	.uleb128 0x4
	.4byte	0x69d
	.uleb128 0x4
	.4byte	0x6d4
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x701
	.uleb128 0x1
	.4byte	0x6e8
	.byte	0
	.uleb128 0x4
	.4byte	0x6f2
	.uleb128 0x5
	.4byte	0x222
	.4byte	0x71f
	.uleb128 0x1
	.4byte	0x6e8
	.uleb128 0x1
	.4byte	0x114
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	0x706
	.uleb128 0x5
	.4byte	0x222
	.4byte	0x73d
	.uleb128 0x1
	.4byte	0x6e8
	.uleb128 0x1
	.4byte	0x73d
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	0x747
	.uleb128 0x8
	.4byte	0x73d
	.uleb128 0x1e
	.uleb128 0x4
	.4byte	0x724
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x766
	.uleb128 0x1
	.4byte	0x6e8
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x82
	.byte	0
	.uleb128 0x4
	.4byte	0x74d
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x78e
	.uleb128 0x1
	.4byte	0x6e8
	.uleb128 0x1
	.4byte	0x78e
	.uleb128 0x1
	.4byte	0x6a9
	.uleb128 0x1
	.4byte	0x6ca
	.uleb128 0x1
	.4byte	0x114
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF122
	.uleb128 0x4
	.4byte	0x76b
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x7b3
	.uleb128 0x1
	.4byte	0x6e8
	.uleb128 0x1
	.4byte	0x133
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x4
	.4byte	0x79a
	.uleb128 0x5
	.4byte	0x222
	.4byte	0x7d1
	.uleb128 0x1
	.4byte	0x6e8
	.uleb128 0x1
	.4byte	0x122
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	0x7b8
	.uleb128 0x5
	.4byte	0x222
	.4byte	0x7ef
	.uleb128 0x1
	.4byte	0x6e8
	.uleb128 0x1
	.4byte	0x133
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	0x7d6
	.uleb128 0x5
	.4byte	0x1f2
	.4byte	0x80d
	.uleb128 0x1
	.4byte	0x6e8
	.uleb128 0x1
	.4byte	0x1f2
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x4
	.4byte	0x7f4
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x82b
	.uleb128 0x1
	.4byte	0x6e8
	.uleb128 0x1
	.4byte	0x133
	.uleb128 0x1
	.4byte	0x82b
	.byte	0
	.uleb128 0x4
	.4byte	0x246
	.uleb128 0x4
	.4byte	0x812
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x849
	.uleb128 0x1
	.4byte	0x6e8
	.uleb128 0x1
	.4byte	0x133
	.byte	0
	.uleb128 0x4
	.4byte	0x835
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x867
	.uleb128 0x1
	.4byte	0x6e8
	.uleb128 0x1
	.4byte	0x133
	.uleb128 0x1
	.4byte	0x133
	.byte	0
	.uleb128 0x4
	.4byte	0x84e
	.uleb128 0x5
	.4byte	0x880
	.4byte	0x880
	.uleb128 0x1
	.4byte	0x6e8
	.uleb128 0x1
	.4byte	0x133
	.byte	0
	.uleb128 0x4
	.4byte	0x409
	.uleb128 0x4
	.4byte	0x86c
	.uleb128 0x5
	.4byte	0x89e
	.4byte	0x89e
	.uleb128 0x1
	.4byte	0x6e8
	.uleb128 0x1
	.4byte	0x880
	.byte	0
	.uleb128 0x4
	.4byte	0x3da
	.uleb128 0x4
	.4byte	0x88a
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x8bc
	.uleb128 0x1
	.4byte	0x6e8
	.uleb128 0x1
	.4byte	0x880
	.byte	0
	.uleb128 0x4
	.4byte	0x8a8
	.uleb128 0xe
	.4byte	0x8d1
	.uleb128 0x1
	.4byte	0x6e8
	.uleb128 0x1
	.4byte	0x880
	.byte	0
	.uleb128 0x4
	.4byte	0x8c1
	.uleb128 0x5
	.4byte	0x6f
	.4byte	0x8ea
	.uleb128 0x1
	.4byte	0x6e8
	.uleb128 0x1
	.4byte	0x880
	.byte	0
	.uleb128 0x4
	.4byte	0x8d6
	.uleb128 0xe
	.4byte	0x904
	.uleb128 0x1
	.4byte	0x6e8
	.uleb128 0x1
	.4byte	0x880
	.uleb128 0x1
	.4byte	0x6f
	.byte	0
	.uleb128 0x4
	.4byte	0x8ef
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x922
	.uleb128 0x1
	.4byte	0x6e8
	.uleb128 0x1
	.4byte	0x133
	.uleb128 0x1
	.4byte	0x922
	.byte	0
	.uleb128 0x4
	.4byte	0x319
	.uleb128 0x4
	.4byte	0x909
	.uleb128 0x1f
	.4byte	.LASF134
	.byte	0x1
	.byte	0xc
	.byte	0x1a
	.4byte	0x18f
	.uleb128 0xf
	.4byte	.LASF123
	.byte	0xe
	.byte	0x73
	.byte	0x5
	.4byte	0x2b
	.4byte	0x94e
	.uleb128 0x1
	.4byte	0x133
	.byte	0
	.uleb128 0xf
	.4byte	.LASF124
	.byte	0xf
	.byte	0x21
	.byte	0x8
	.4byte	0x114
	.4byte	0x96e
	.uleb128 0x1
	.4byte	0x114
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x20
	.4byte	.LASF135
	.byte	0x10
	.byte	0xa4
	.byte	0x6
	.4byte	0x980
	.uleb128 0x1
	.4byte	0x114
	.byte	0
	.uleb128 0x14
	.4byte	.LASF125
	.2byte	0x28a
	.4byte	0x15c
	.4byte	0x9a4
	.uleb128 0x1
	.4byte	0x179
	.uleb128 0x1
	.4byte	0x742
	.uleb128 0x1
	.4byte	0x16d
	.uleb128 0x1
	.4byte	0x168
	.byte	0
	.uleb128 0xf
	.4byte	.LASF126
	.byte	0xe
	.byte	0x72
	.byte	0x5
	.4byte	0x2b
	.4byte	0x9bf
	.uleb128 0x1
	.4byte	0x133
	.uleb128 0x1
	.4byte	0x9bf
	.byte	0
	.uleb128 0x4
	.4byte	0x698
	.uleb128 0x14
	.4byte	.LASF127
	.2byte	0x58a
	.4byte	0x15c
	.4byte	0x9de
	.uleb128 0x1
	.4byte	0x179
	.uleb128 0x1
	.4byte	0x16d
	.byte	0
	.uleb128 0x10
	.4byte	.LASF128
	.byte	0x61
	.4byte	0x2b
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa21
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0x61
	.byte	0x23
	.4byte	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"err"
	.byte	0x63
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"ret"
	.byte	0x63
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0x42
	.4byte	0x2b
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa8d
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0x42
	.byte	0x21
	.4byte	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"ops"
	.byte	0x42
	.byte	0x31
	.4byte	0x600
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"arg"
	.byte	0x42
	.byte	0x3c
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x44
	.4byte	0x698
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.string	"err"
	.byte	0x45
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"ret"
	.byte	0x45
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF131
	.byte	0x2f
	.4byte	0x2b
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad0
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0x2f
	.byte	0x27
	.4byte	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"err"
	.byte	0x31
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"ret"
	.byte	0x31
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF136
	.byte	0x1
	.byte	0xe
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0xe
	.byte	0x25
	.4byte	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"ops"
	.byte	0xe
	.byte	0x37
	.4byte	0x5fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"arg"
	.byte	0xe
	.byte	0x42
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x10
	.4byte	0x698
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.string	"err"
	.byte	0x11
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"ret"
	.byte	0x11
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
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
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.sleb128 14
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x15
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x1d
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
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
	.4byte	.LFB2
	.uleb128 .LFE2-.LFB2
	.byte	0x7
	.4byte	.LFB3
	.uleb128 .LFE3-.LFB3
	.byte	0x7
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
	.byte	0x7
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF127:
	.string	"xQueueSemaphoreTake"
.LASF76:
	.string	"aos_dirent_t"
.LASF114:
	.string	"inode_t"
.LASF79:
	.string	"aos_dir_t"
.LASF2:
	.string	"unsigned int"
.LASF60:
	.string	"st_blksize"
.LASF113:
	.string	"refs"
.LASF98:
	.string	"opendir"
.LASF92:
	.string	"sync"
.LASF25:
	.string	"__nlink_t"
.LASF70:
	.string	"f_ffree"
.LASF82:
	.string	"VFS_TYPE_BLOCK_DEV"
.LASF110:
	.string	"i_name"
.LASF75:
	.string	"d_name"
.LASF21:
	.string	"__ino_t"
.LASF39:
	.string	"ino_t"
.LASF29:
	.string	"uint32_t"
.LASF104:
	.string	"telldir"
.LASF109:
	.string	"i_arg"
.LASF120:
	.string	"QueueDefinition"
.LASF96:
	.string	"unlink"
.LASF13:
	.string	"long long unsigned int"
.LASF61:
	.string	"st_blocks"
.LASF123:
	.string	"inode_release"
.LASF117:
	.string	"offset"
.LASF116:
	.string	"f_arg"
.LASF108:
	.string	"i_fops"
.LASF48:
	.string	"stat"
.LASF49:
	.string	"st_dev"
.LASF36:
	.string	"tv_nsec"
.LASF10:
	.string	"size_t"
.LASF134:
	.string	"g_vfs_mutex"
.LASF22:
	.string	"__mode_t"
.LASF74:
	.string	"d_type"
.LASF122:
	.string	"_Bool"
.LASF54:
	.string	"st_gid"
.LASF103:
	.string	"rewinddir"
.LASF51:
	.string	"st_mode"
.LASF101:
	.string	"mkdir"
.LASF118:
	.string	"file_t"
.LASF52:
	.string	"st_nlink"
.LASF130:
	.string	"path"
.LASF133:
	.string	"inode_ops_t"
.LASF125:
	.string	"xQueueGenericSend"
.LASF90:
	.string	"ioctl"
.LASF83:
	.string	"VFS_TYPE_FS_DEV"
.LASF91:
	.string	"poll"
.LASF47:
	.string	"timespec"
.LASF26:
	.string	"char"
.LASF37:
	.string	"blkcnt_t"
.LASF81:
	.string	"VFS_TYPE_CHAR_DEV"
.LASF119:
	.string	"poll_notify_t"
.LASF87:
	.string	"close"
.LASF32:
	.string	"QueueHandle_t"
.LASF44:
	.string	"ssize_t"
.LASF95:
	.string	"lseek"
.LASF28:
	.string	"uint8_t"
.LASF112:
	.string	"type"
.LASF34:
	.string	"time_t"
.LASF94:
	.string	"fs_ops"
.LASF63:
	.string	"statfs"
.LASF50:
	.string	"st_ino"
.LASF69:
	.string	"f_files"
.LASF3:
	.string	"long long int"
.LASF89:
	.string	"write"
.LASF64:
	.string	"f_type"
.LASF18:
	.string	"__dev_t"
.LASF30:
	.string	"BaseType_t"
.LASF41:
	.string	"dev_t"
.LASF67:
	.string	"f_bfree"
.LASF131:
	.string	"aos_unregister_driver"
.LASF85:
	.string	"file_ops"
.LASF84:
	.string	"file_ops_t"
.LASF124:
	.string	"memset"
.LASF121:
	.string	"pollfd"
.LASF68:
	.string	"f_bavail"
.LASF71:
	.string	"f_fsid"
.LASF62:
	.string	"st_spare4"
.LASF106:
	.string	"access"
.LASF31:
	.string	"TickType_t"
.LASF97:
	.string	"rename"
.LASF4:
	.string	"long double"
.LASF20:
	.string	"__gid_t"
.LASF66:
	.string	"f_blocks"
.LASF43:
	.string	"gid_t"
.LASF14:
	.string	"__int_least64_t"
.LASF107:
	.string	"i_ops"
.LASF42:
	.string	"uid_t"
.LASF128:
	.string	"aos_unregister_fs"
.LASF102:
	.string	"rmdir"
.LASF100:
	.string	"closedir"
.LASF7:
	.string	"short int"
.LASF58:
	.string	"st_mtim"
.LASF111:
	.string	"i_flags"
.LASF9:
	.string	"long int"
.LASF33:
	.string	"SemaphoreHandle_t"
.LASF126:
	.string	"inode_reserve"
.LASF115:
	.string	"node"
.LASF99:
	.string	"readdir"
.LASF72:
	.string	"f_namelen"
.LASF129:
	.string	"aos_register_fs"
.LASF16:
	.string	"__blksize_t"
.LASF135:
	.string	"vPortFree"
.LASF19:
	.string	"__uid_t"
.LASF57:
	.string	"st_atim"
.LASF88:
	.string	"read"
.LASF77:
	.string	"dd_vfs_fd"
.LASF86:
	.string	"open"
.LASF35:
	.string	"tv_sec"
.LASF80:
	.string	"VFS_TYPE_NOT_INIT"
.LASF12:
	.string	"long unsigned int"
.LASF27:
	.string	"int32_t"
.LASF46:
	.string	"nlink_t"
.LASF65:
	.string	"f_bsize"
.LASF6:
	.string	"unsigned char"
.LASF11:
	.string	"__uint32_t"
.LASF38:
	.string	"blksize_t"
.LASF56:
	.string	"st_size"
.LASF136:
	.string	"aos_register_driver"
.LASF73:
	.string	"d_ino"
.LASF53:
	.string	"st_uid"
.LASF23:
	.string	"__off_t"
.LASF59:
	.string	"st_ctim"
.LASF24:
	.string	"_ssize_t"
.LASF78:
	.string	"dd_rsv"
.LASF5:
	.string	"signed char"
.LASF45:
	.string	"mode_t"
.LASF40:
	.string	"off_t"
.LASF8:
	.string	"short unsigned int"
.LASF105:
	.string	"seekdir"
.LASF15:
	.string	"__blkcnt_t"
.LASF17:
	.string	"_off_t"
.LASF55:
	.string	"st_rdev"
.LASF132:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF93:
	.string	"fs_ops_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/src/vfs_register.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/vfs"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
