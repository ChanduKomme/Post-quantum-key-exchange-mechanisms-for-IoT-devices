	.file	"vfs_adc.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/vfs" "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/device/vfs_adc.c"
	.section	.text.vfs_adc_open,"ax",@progbits
	.align	1
	.type	vfs_adc_open, @function
vfs_adc_open:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/device/vfs_adc.c"
	.loc 1 17 1
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
	.loc 1 18 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 19 16
	sw	zero,-24(s0)
	.loc 1 22 8
	lw	a5,-40(s0)
	beq	a5,zero,.L2
	.loc 1 22 27 discriminator 1
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 22 21 discriminator 1
	beq	a5,zero,.L2
	.loc 1 25 15
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 25 21
	lbu	a4,17(a5)
	.loc 1 25 12
	li	a5,1
	bne	a4,a5,.L3
	.loc 1 28 39
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 28 21
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 31 19
	lw	a0,-24(s0)
	call	hal_adc_init
	sw	a0,-20(s0)
	.loc 1 34 16
	lw	a5,-20(s0)
	bne	a5,zero,.L7
	.loc 1 35 45
	lw	a5,-24(s0)
	addi	a5,a5,12
	.loc 1 35 17
	mv	a0,a5
	call	aos_mutex_new
	.loc 1 25 12
	j	.L7
.L3:
	.loc 1 38 17
	sw	zero,-20(s0)
	.loc 1 25 12
	j	.L7
.L2:
	.loc 1 41 13
	li	a5,-22
	sw	a5,-20(s0)
	j	.L5
.L7:
	.loc 1 25 12
	nop
.L5:
	.loc 1 44 12
	lw	a5,-20(s0)
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
.LFE5:
	.size	vfs_adc_open, .-vfs_adc_open
	.section	.text.vfs_adc_close,"ax",@progbits
	.align	1
	.globl	vfs_adc_close
	.type	vfs_adc_close, @function
vfs_adc_close:
.LFB6:
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
	.loc 1 49 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 50 16
	sw	zero,-24(s0)
	.loc 1 53 8
	lw	a5,-36(s0)
	beq	a5,zero,.L9
	.loc 1 53 27 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 53 21 discriminator 1
	beq	a5,zero,.L9
	.loc 1 56 15
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 56 21
	lbu	a4,17(a5)
	.loc 1 56 12
	li	a5,1
	bne	a4,a5,.L10
	.loc 1 59 39
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 59 21
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 61 16
	lw	a5,-24(s0)
	beq	a5,zero,.L11
	.loc 1 63 46
	lw	a5,-24(s0)
	addi	a5,a5,12
	.loc 1 63 17
	mv	a0,a5
	call	aos_mutex_free
	.loc 1 66 23
	lw	a0,-24(s0)
	call	hal_adc_finalize
	sw	a0,-20(s0)
	.loc 1 56 12
	j	.L13
.L11:
	.loc 1 68 21
	li	a5,-22
	sw	a5,-20(s0)
	.loc 1 56 12
	j	.L13
.L10:
	.loc 1 71 17
	sw	zero,-20(s0)
	.loc 1 56 12
	j	.L13
.L9:
	.loc 1 74 13
	li	a5,-22
	sw	a5,-20(s0)
.L13:
	.loc 1 77 12
	lw	a5,-20(s0)
	.loc 1 78 1
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
	.size	vfs_adc_close, .-vfs_adc_close
	.section	.text.vfs_adc_read,"ax",@progbits
	.align	1
	.type	vfs_adc_read, @function
vfs_adc_read:
.LFB7:
	.loc 1 81 1
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
	.loc 1 82 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 84 16
	sw	zero,-24(s0)
	.loc 1 86 8
	lw	a4,-44(s0)
	li	a5,4
	beq	a4,a5,.L16
	.loc 1 87 13
	li	a5,-22
	sw	a5,-20(s0)
	.loc 1 88 16
	lw	a5,-20(s0)
	j	.L23
.L16:
	.loc 1 92 8
	lw	a5,-36(s0)
	beq	a5,zero,.L18
	.loc 1 92 27 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 92 21 discriminator 1
	beq	a5,zero,.L18
	.loc 1 95 35
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 95 17
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 97 12
	lw	a5,-24(s0)
	beq	a5,zero,.L19
	.loc 1 100 19
	addi	a5,s0,-28
	li	a2,-1
	mv	a1,a5
	lw	a0,-24(s0)
	call	hal_adc_value_get
	sw	a0,-20(s0)
	.loc 1 102 16
	lw	a5,-20(s0)
	bne	a5,zero,.L20
	.loc 1 103 21
	lw	a5,-44(s0)
	sw	a5,-20(s0)
	.loc 1 104 17
	addi	a5,s0,-28
	li	a2,4
	mv	a1,a5
	lw	a0,-40(s0)
	call	memcpy
	.loc 1 97 12
	j	.L22
.L20:
	.loc 1 107 21
	li	a5,-5
	sw	a5,-20(s0)
	.loc 1 97 12
	j	.L22
.L19:
	.loc 1 110 17
	li	a5,-22
	sw	a5,-20(s0)
	.loc 1 97 12
	j	.L22
.L18:
	.loc 1 113 13
	li	a5,-22
	sw	a5,-20(s0)
.L22:
	.loc 1 116 12
	lw	a5,-20(s0)
.L23:
	.loc 1 117 1
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
	.size	vfs_adc_read, .-vfs_adc_read
	.section	.text.vfs_adc_notify,"ax",@progbits
	.align	1
	.type	vfs_adc_notify, @function
vfs_adc_notify:
.LFB8:
	.loc 1 120 1
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
	.loc 1 122 16
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 124 16
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 124 8
	beq	a5,zero,.L27
	.loc 1 125 33
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 125 38
	lh	a4,6(a5)
	.loc 1 125 33
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 125 48
	ori	a4,a4,1
	slli	a4,a4,16
	srai	a4,a4,16
	sh	a4,6(a5)
	.loc 1 126 32
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 126 10
	mv	a3,a5
	.loc 1 126 50
	lw	a5,-20(s0)
	lw	a4,16(a5)
	.loc 1 126 10
	lw	a5,-20(s0)
	lw	a5,24(a5)
	mv	a1,a5
	mv	a0,a4
	jalr	a3
.LVL0:
	.loc 1 129 5
	nop
.L27:
	nop
	.loc 1 130 1
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
	.size	vfs_adc_notify, .-vfs_adc_notify
	.section	.text.vfs_adc_poll,"ax",@progbits
	.align	1
	.type	vfs_adc_poll, @function
vfs_adc_poll:
.LFB9:
	.loc 1 133 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	mv	a5,a1
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sb	a5,-37(s0)
	.loc 1 134 42
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 134 16
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 136 34
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 136 5
	li	a1,-1
	mv	a0,a5
	call	aos_mutex_lock
	.loc 1 137 9
	lbu	a5,-37(s0)
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 137 8
	beq	a5,zero,.L29
	.loc 1 139 9
	call	vTaskEnterCritical
	.loc 1 140 26
	lw	a5,-20(s0)
	sw	zero,20(a5)
	.loc 1 141 28
	lw	a5,-20(s0)
	sw	zero,24(a5)
	.loc 1 142 9
	lui	a5,%hi(vfs_adc_notify)
	addi	a1,a5,%lo(vfs_adc_notify)
	lw	a0,-20(s0)
	call	hal_adc_notify_unregister
	.loc 1 143 9
	call	vTaskExitCritical
	.loc 1 144 9
	j	.L30
.L29:
	.loc 1 147 5
	call	vTaskEnterCritical
	.loc 1 148 22
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	sw	a4,20(a5)
	.loc 1 149 17
	lw	a5,-20(s0)
	lw	a4,-48(s0)
	sw	a4,16(a5)
	.loc 1 150 24
	lw	a5,-20(s0)
	lw	a4,-52(s0)
	sw	a4,24(a5)
	.loc 1 151 5
	lui	a5,%hi(vfs_adc_notify)
	addi	a1,a5,%lo(vfs_adc_notify)
	lw	a0,-20(s0)
	call	hal_adc_notify_register
	.loc 1 152 5
	call	vTaskExitCritical
.L30:
	.loc 1 155 36
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 155 5
	mv	a0,a5
	call	aos_mutex_unlock
	.loc 1 157 12
	li	a5,0
	.loc 1 158 1
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
.LFE9:
	.size	vfs_adc_poll, .-vfs_adc_poll
	.section	.text.vfs_adc_ioctl,"ax",@progbits
	.align	1
	.type	vfs_adc_ioctl, @function
vfs_adc_ioctl:
.LFB10:
	.loc 1 161 1
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
	.loc 1 162 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 163 16
	sw	zero,-24(s0)
	.loc 1 170 11
	lw	a5,-44(s0)
	sw	a5,-28(s0)
	.loc 1 173 8
	lw	a5,-36(s0)
	beq	a5,zero,.L33
	.loc 1 173 27 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 173 21 discriminator 1
	bne	a5,zero,.L34
.L33:
	.loc 1 174 16
	li	a5,-22
	j	.L35
.L34:
	.loc 1 178 31
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 178 13
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 180 8
	lw	a5,-24(s0)
	bne	a5,zero,.L36
	.loc 1 181 16
	li	a5,-22
	j	.L35
.L36:
	.loc 1 184 5
	lw	a4,-40(s0)
	li	a5,4
	beq	a4,a5,.L37
	lw	a4,-40(s0)
	li	a5,4
	bgt	a4,a5,.L38
	lw	a4,-40(s0)
	li	a5,3
	beq	a4,a5,.L39
	lw	a4,-40(s0)
	li	a5,3
	bgt	a4,a5,.L38
	lw	a4,-40(s0)
	li	a5,2
	beq	a4,a5,.L40
	lw	a4,-40(s0)
	li	a5,2
	bgt	a4,a5,.L38
	lw	a5,-40(s0)
	beq	a5,zero,.L41
	lw	a4,-40(s0)
	li	a5,1
	beq	a4,a5,.L42
	j	.L38
.L41:
	.loc 1 188 19
	lw	a0,-24(s0)
	call	hal_adc_notify_register_config_disable
	sw	a0,-20(s0)
	.loc 1 189 16
	lw	a5,-20(s0)
	beq	a5,zero,.L51
	.loc 1 190 21
	li	a5,-5
	sw	a5,-20(s0)
	.loc 1 193 9
	j	.L51
.L42:
	.loc 1 197 19
	lw	a0,-24(s0)
	call	hal_adc_notify_register_config_high
	sw	a0,-20(s0)
	.loc 1 198 16
	lw	a5,-20(s0)
	beq	a5,zero,.L52
	.loc 1 199 21
	li	a5,-5
	sw	a5,-20(s0)
	.loc 1 202 9
	j	.L52
.L40:
	.loc 1 206 19
	lw	a0,-24(s0)
	call	hal_adc_notify_register_config_low
	sw	a0,-20(s0)
	.loc 1 207 16
	lw	a5,-20(s0)
	beq	a5,zero,.L53
	.loc 1 208 21
	li	a5,-5
	sw	a5,-20(s0)
	.loc 1 211 9
	j	.L53
.L39:
	.loc 1 215 16
	lw	a5,-28(s0)
	bne	a5,zero,.L47
	.loc 1 216 21
	li	a5,-22
	sw	a5,-20(s0)
	.loc 1 224 9
	j	.L54
.L47:
	.loc 1 218 23
	lw	a5,-28(s0)
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-24(s0)
	call	hal_adc_notify_register_config_higher
	sw	a0,-20(s0)
	.loc 1 219 20
	lw	a5,-20(s0)
	beq	a5,zero,.L54
	.loc 1 220 25
	li	a5,-5
	sw	a5,-20(s0)
	.loc 1 224 9
	j	.L54
.L37:
	.loc 1 227 16
	lw	a5,-28(s0)
	bne	a5,zero,.L49
	.loc 1 228 21
	li	a5,-22
	sw	a5,-20(s0)
	.loc 1 236 9
	j	.L55
.L49:
	.loc 1 230 23
	lw	a5,-28(s0)
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-24(s0)
	call	hal_adc_notify_register_config_lower
	sw	a0,-20(s0)
	.loc 1 231 20
	lw	a5,-20(s0)
	beq	a5,zero,.L55
	.loc 1 232 25
	li	a5,-5
	sw	a5,-20(s0)
	.loc 1 236 9
	j	.L55
.L38:
	.loc 1 239 17
	li	a5,-22
	sw	a5,-20(s0)
	j	.L44
.L51:
	.loc 1 193 9
	nop
	j	.L44
.L52:
	.loc 1 202 9
	nop
	j	.L44
.L53:
	.loc 1 211 9
	nop
	j	.L44
.L54:
	.loc 1 224 9
	nop
	j	.L44
.L55:
	.loc 1 236 9
	nop
.L44:
	.loc 1 243 12
	lw	a5,-20(s0)
.L35:
	.loc 1 244 1
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
.LFE10:
	.size	vfs_adc_ioctl, .-vfs_adc_ioctl
	.globl	adc_ops
	.section	.rodata.adc_ops,"a"
	.align	2
	.type	adc_ops, @object
	.size	adc_ops, 28
adc_ops:
	.word	vfs_adc_open
	.word	vfs_adc_close
	.word	vfs_adc_read
	.zero	4
	.word	vfs_adc_ioctl
	.word	vfs_adc_poll
	.zero	4
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
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/aos/kernel.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/stat.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_dir.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_inode.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/yloop_types.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/hal/soc/adc.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/device/vfs_adc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd93
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x16
	.4byte	.LASF156
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x5a
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0xc8
	.byte	0x17
	.4byte	0x61
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x82
	.uleb128 0x7
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
	.uleb128 0x18
	.byte	0x4
	.uleb128 0x12
	.4byte	0x114
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0xd5
	.byte	0x18
	.4byte	0x40
	.uleb128 0x4
	.4byte	0x12c
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF26
	.uleb128 0x10
	.4byte	0x12c
	.uleb128 0x4
	.4byte	0x133
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
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x6
	.byte	0x34
	.byte	0x1b
	.4byte	0x5a
	.uleb128 0x4
	.4byte	0x17e
	.uleb128 0xc
	.4byte	0x189
	.uleb128 0x1
	.4byte	0x114
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x7
	.byte	0x2a
	.byte	0x19
	.4byte	0x6f
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x10
	.byte	0x8
	.byte	0x2f
	.4byte	0x1bc
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x8
	.byte	0x30
	.byte	0x9
	.4byte	0x189
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x8
	.byte	0x31
	.byte	0x7
	.4byte	0x47
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x9
	.byte	0x61
	.byte	0x14
	.4byte	0x9c
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x9
	.byte	0x66
	.byte	0x15
	.4byte	0xa8
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x9
	.byte	0x89
	.byte	0x11
	.4byte	0xe4
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x9
	.byte	0x9f
	.byte	0x11
	.4byte	0xc0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x9
	.byte	0xa3
	.byte	0x11
	.4byte	0xcc
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x9
	.byte	0xa7
	.byte	0x11
	.4byte	0xd8
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x9
	.byte	0xbb
	.byte	0x12
	.4byte	0xf0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x9
	.byte	0xc0
	.byte	0x13
	.4byte	0x11b
	.uleb128 0xa
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0xc
	.4byte	0x233
	.uleb128 0xd
	.string	"hdl"
	.byte	0xa
	.byte	0x18
	.byte	0xf
	.4byte	0x114
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0xa
	.byte	0x19
	.byte	0x7
	.4byte	0x21c
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0xa
	.byte	0x1c
	.byte	0x17
	.4byte	0x233
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x58
	.byte	0xb
	.byte	0x1b
	.4byte	0x30e
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0xb
	.byte	0x1d
	.byte	0x9
	.4byte	0x1e0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0xb
	.byte	0x1e
	.byte	0x9
	.4byte	0x1d4
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0xb
	.byte	0x1f
	.byte	0xa
	.4byte	0x204
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0xb
	.byte	0x20
	.byte	0xb
	.4byte	0x210
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0xb
	.byte	0x21
	.byte	0x9
	.4byte	0x1ec
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0xb
	.byte	0x22
	.byte	0x9
	.4byte	0x1f8
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0xb
	.byte	0x23
	.byte	0x9
	.4byte	0x1e0
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0xb
	.byte	0x24
	.byte	0x9
	.4byte	0x13d
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0xb
	.byte	0x2a
	.byte	0x13
	.4byte	0x195
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0xb
	.byte	0x2b
	.byte	0x13
	.4byte	0x195
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0xb
	.byte	0x2c
	.byte	0x13
	.4byte	0x195
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0xb
	.byte	0x2d
	.byte	0xd
	.4byte	0x1c8
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0xb
	.byte	0x2e
	.byte	0xc
	.4byte	0x1bc
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0xb
	.byte	0x30
	.byte	0x8
	.4byte	0x30e
	.byte	0x50
	.byte	0
	.uleb128 0x13
	.4byte	0x47
	.4byte	0x31e
	.uleb128 0x19
	.4byte	0x82
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x24
	.byte	0xc
	.byte	0x4
	.4byte	0x3a0
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0xc
	.byte	0x5
	.byte	0xa
	.4byte	0x47
	.byte	0
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0xc
	.byte	0x6
	.byte	0xa
	.4byte	0x47
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0xc
	.byte	0x7
	.byte	0xa
	.4byte	0x47
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0xc
	.byte	0x8
	.byte	0xa
	.4byte	0x47
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0xc
	.byte	0x9
	.byte	0xa
	.4byte	0x47
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0xc
	.byte	0xa
	.byte	0xa
	.4byte	0x47
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0xc
	.byte	0xb
	.byte	0xa
	.4byte	0x47
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0xc
	.byte	0xc
	.byte	0xa
	.4byte	0x47
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0xc
	.byte	0xd
	.byte	0xa
	.4byte	0x47
	.byte	0x20
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0xc
	.byte	0x10
	.byte	0x9
	.4byte	0x3d1
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0xc
	.byte	0x11
	.byte	0x9
	.4byte	0x7b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0xc
	.byte	0x12
	.byte	0xd
	.4byte	0x161
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0xc
	.byte	0x13
	.byte	0xa
	.4byte	0x3d1
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.4byte	0x12c
	.4byte	0x3e0
	.uleb128 0x1a
	.4byte	0x82
	.byte	0
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0xc
	.byte	0x14
	.byte	0x3
	.4byte	0x3a0
	.uleb128 0xa
	.byte	0x8
	.byte	0xc
	.byte	0x16
	.byte	0x9
	.4byte	0x410
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0xc
	.byte	0x17
	.byte	0x9
	.4byte	0x7b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0xc
	.byte	0x18
	.byte	0x9
	.4byte	0x7b
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0xc
	.byte	0x19
	.byte	0x3
	.4byte	0x3ec
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0xd
	.byte	0x2c
	.byte	0x1f
	.4byte	0x490
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x1c
	.byte	0xd
	.byte	0x46
	.4byte	0x490
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0xd
	.byte	0x47
	.byte	0xb
	.4byte	0x6fd
	.byte	0
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0xd
	.byte	0x48
	.byte	0xb
	.4byte	0x711
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0xd
	.byte	0x49
	.byte	0xf
	.4byte	0x72f
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0xd
	.byte	0x4a
	.byte	0xf
	.4byte	0x758
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0xd
	.byte	0x4b
	.byte	0xb
	.4byte	0x776
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0xd
	.byte	0x4d
	.byte	0xb
	.4byte	0x7a5
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0xd
	.byte	0x4f
	.byte	0xb
	.4byte	0x711
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.4byte	0x428
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0xd
	.byte	0x2d
	.byte	0x1d
	.4byte	0x5b2
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x50
	.byte	0xd
	.byte	0x52
	.4byte	0x5b2
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0xd
	.byte	0x53
	.byte	0xb
	.4byte	0x7c3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0xd
	.byte	0x54
	.byte	0xb
	.4byte	0x711
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0xd
	.byte	0x55
	.byte	0xf
	.4byte	0x7e1
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0xd
	.byte	0x56
	.byte	0xf
	.4byte	0x7ff
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0xd
	.byte	0x57
	.byte	0xd
	.4byte	0x81d
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0xd
	.byte	0x58
	.byte	0xb
	.4byte	0x711
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0xd
	.byte	0x59
	.byte	0xb
	.4byte	0x840
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0xd
	.byte	0x5a
	.byte	0xb
	.4byte	0x859
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0xd
	.byte	0x5b
	.byte	0xb
	.4byte	0x877
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0xd
	.byte	0x5c
	.byte	0x12
	.4byte	0x895
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0xd
	.byte	0x5d
	.byte	0x15
	.4byte	0x8b3
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0xd
	.byte	0x5e
	.byte	0xb
	.4byte	0x8cc
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0xd
	.byte	0x5f
	.byte	0xb
	.4byte	0x859
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0xd
	.byte	0x60
	.byte	0xb
	.4byte	0x859
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0xd
	.byte	0x61
	.byte	0xc
	.4byte	0x8e1
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0xd
	.byte	0x62
	.byte	0xc
	.4byte	0x8fa
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0xd
	.byte	0x63
	.byte	0xc
	.4byte	0x914
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0xd
	.byte	0x64
	.byte	0xb
	.4byte	0x776
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0xd
	.byte	0x65
	.byte	0xb
	.4byte	0x937
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0xd
	.byte	0x66
	.byte	0xb
	.4byte	0x7c3
	.byte	0x4c
	.byte	0
	.uleb128 0x10
	.4byte	0x4a1
	.uleb128 0x1b
	.4byte	.LASF157
	.byte	0x4
	.byte	0xd
	.byte	0x2f
	.byte	0x7
	.4byte	0x5db
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x30
	.byte	0x17
	.4byte	0x5db
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x31
	.byte	0x15
	.4byte	0x5e0
	.byte	0
	.uleb128 0x4
	.4byte	0x41c
	.uleb128 0x4
	.4byte	0x495
	.uleb128 0xa
	.byte	0x14
	.byte	0xd
	.byte	0x35
	.byte	0x9
	.4byte	0x63d
	.uleb128 0xd
	.string	"ops"
	.byte	0xd
	.byte	0x36
	.byte	0x17
	.4byte	0x5b7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0xd
	.byte	0x37
	.byte	0xb
	.4byte	0x114
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0xd
	.byte	0x38
	.byte	0xb
	.4byte	0x127
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0xd
	.byte	0x39
	.byte	0x9
	.4byte	0x7b
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0xd
	.byte	0x3a
	.byte	0xd
	.4byte	0x161
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0xd
	.byte	0x3b
	.byte	0xd
	.4byte	0x161
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0xd
	.byte	0x3c
	.byte	0x3
	.4byte	0x5e5
	.uleb128 0xa
	.byte	0xc
	.byte	0xd
	.byte	0x3e
	.byte	0x9
	.4byte	0x67a
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xd
	.byte	0x3f
	.byte	0xe
	.4byte	0x67a
	.byte	0
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0xd
	.byte	0x40
	.byte	0xb
	.4byte	0x114
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0xd
	.byte	0x41
	.byte	0xc
	.4byte	0x89
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	0x63d
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0xd
	.byte	0x42
	.byte	0x3
	.4byte	0x649
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0xd
	.byte	0x45
	.byte	0x10
	.4byte	0x697
	.uleb128 0x4
	.4byte	0x69c
	.uleb128 0xc
	.4byte	0x6ac
	.uleb128 0x1
	.4byte	0x6ac
	.uleb128 0x1
	.4byte	0x114
	.byte	0
	.uleb128 0x4
	.4byte	0x6b1
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0x8
	.byte	0xe
	.byte	0x7
	.4byte	0x6e4
	.uleb128 0xd
	.string	"fd"
	.byte	0xe
	.byte	0x8
	.byte	0x9
	.4byte	0x7b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF115
	.byte	0xe
	.byte	0x9
	.byte	0xb
	.4byte	0x39
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0xe
	.byte	0xa
	.byte	0xb
	.4byte	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	0x7b
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x67a
	.uleb128 0x1
	.4byte	0x6f8
	.byte	0
	.uleb128 0x4
	.4byte	0x67f
	.uleb128 0x4
	.4byte	0x6e4
	.uleb128 0x5
	.4byte	0x7b
	.4byte	0x711
	.uleb128 0x1
	.4byte	0x6f8
	.byte	0
	.uleb128 0x4
	.4byte	0x702
	.uleb128 0x5
	.4byte	0x149
	.4byte	0x72f
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x114
	.uleb128 0x1
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	0x716
	.uleb128 0x5
	.4byte	0x149
	.4byte	0x74d
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x74d
	.uleb128 0x1
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	0x757
	.uleb128 0x12
	.4byte	0x74d
	.uleb128 0x1c
	.uleb128 0x4
	.4byte	0x734
	.uleb128 0x5
	.4byte	0x7b
	.4byte	0x776
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x5a
	.byte	0
	.uleb128 0x4
	.4byte	0x75d
	.uleb128 0x5
	.4byte	0x7b
	.4byte	0x79e
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x79e
	.uleb128 0x1
	.4byte	0x68b
	.uleb128 0x1
	.4byte	0x6ac
	.uleb128 0x1
	.4byte	0x114
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.4byte	.LASF117
	.uleb128 0x4
	.4byte	0x77b
	.uleb128 0x5
	.4byte	0x7b
	.4byte	0x7c3
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x138
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x4
	.4byte	0x7aa
	.uleb128 0x5
	.4byte	0x149
	.4byte	0x7e1
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x127
	.uleb128 0x1
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	0x7c8
	.uleb128 0x5
	.4byte	0x149
	.4byte	0x7ff
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x138
	.uleb128 0x1
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	0x7e6
	.uleb128 0x5
	.4byte	0x13d
	.4byte	0x81d
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x13d
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x4
	.4byte	0x804
	.uleb128 0x5
	.4byte	0x7b
	.4byte	0x83b
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x138
	.uleb128 0x1
	.4byte	0x83b
	.byte	0
	.uleb128 0x4
	.4byte	0x24b
	.uleb128 0x4
	.4byte	0x822
	.uleb128 0x5
	.4byte	0x7b
	.4byte	0x859
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x138
	.byte	0
	.uleb128 0x4
	.4byte	0x845
	.uleb128 0x5
	.4byte	0x7b
	.4byte	0x877
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x138
	.uleb128 0x1
	.4byte	0x138
	.byte	0
	.uleb128 0x4
	.4byte	0x85e
	.uleb128 0x5
	.4byte	0x890
	.4byte	0x890
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x138
	.byte	0
	.uleb128 0x4
	.4byte	0x410
	.uleb128 0x4
	.4byte	0x87c
	.uleb128 0x5
	.4byte	0x8ae
	.4byte	0x8ae
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x890
	.byte	0
	.uleb128 0x4
	.4byte	0x3e0
	.uleb128 0x4
	.4byte	0x89a
	.uleb128 0x5
	.4byte	0x7b
	.4byte	0x8cc
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x890
	.byte	0
	.uleb128 0x4
	.4byte	0x8b8
	.uleb128 0xc
	.4byte	0x8e1
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x890
	.byte	0
	.uleb128 0x4
	.4byte	0x8d1
	.uleb128 0x5
	.4byte	0x47
	.4byte	0x8fa
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x890
	.byte	0
	.uleb128 0x4
	.4byte	0x8e6
	.uleb128 0xc
	.4byte	0x914
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x890
	.uleb128 0x1
	.4byte	0x47
	.byte	0
	.uleb128 0x4
	.4byte	0x8ff
	.uleb128 0x5
	.4byte	0x7b
	.4byte	0x932
	.uleb128 0x1
	.4byte	0x6f8
	.uleb128 0x1
	.4byte	0x138
	.uleb128 0x1
	.4byte	0x932
	.byte	0
	.uleb128 0x4
	.4byte	0x31e
	.uleb128 0x4
	.4byte	0x919
	.uleb128 0x1d
	.4byte	.LASF158
	.byte	0x12
	.byte	0xf
	.byte	0x1e
	.4byte	0x490
	.uleb128 0xa
	.byte	0x4
	.byte	0xf
	.byte	0x8
	.byte	0x9
	.4byte	0x95f
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0xf
	.byte	0x9
	.byte	0xe
	.4byte	0x16d
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0xf
	.byte	0xa
	.byte	0x3
	.4byte	0x948
	.uleb128 0xa
	.byte	0x1c
	.byte	0xf
	.byte	0xc
	.byte	0x9
	.4byte	0x9cf
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0xf
	.byte	0xd
	.byte	0xd
	.4byte	0x161
	.byte	0
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0xf
	.byte	0xe
	.byte	0x12
	.4byte	0x95f
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0xf
	.byte	0xf
	.byte	0xb
	.4byte	0x114
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0xf
	.byte	0x10
	.byte	0xb
	.4byte	0x114
	.byte	0xc
	.uleb128 0xd
	.string	"fd"
	.byte	0xf
	.byte	0x11
	.byte	0xb
	.4byte	0x114
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0xf
	.byte	0x12
	.byte	0xb
	.4byte	0x114
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0xf
	.byte	0x13
	.byte	0xb
	.4byte	0x114
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0xf
	.byte	0x14
	.byte	0x3
	.4byte	0x96b
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.4byte	.LASF127
	.uleb128 0x1e
	.4byte	0x93c
	.byte	0x1
	.byte	0xf7
	.byte	0x17
	.uleb128 0x5
	.byte	0x3
	.4byte	adc_ops
	.uleb128 0x6
	.4byte	.LASF128
	.byte	0xf
	.byte	0x68
	.byte	0x5
	.4byte	0x7b
	.4byte	0xa0b
	.uleb128 0x1
	.4byte	0xa0b
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x4
	.4byte	0x9cf
	.uleb128 0x6
	.4byte	.LASF129
	.byte	0xf
	.byte	0x5f
	.byte	0x5
	.4byte	0x7b
	.4byte	0xa2b
	.uleb128 0x1
	.4byte	0xa0b
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x6
	.4byte	.LASF130
	.byte	0xf
	.byte	0x56
	.byte	0x5
	.4byte	0x7b
	.4byte	0xa41
	.uleb128 0x1
	.4byte	0xa0b
	.byte	0
	.uleb128 0x6
	.4byte	.LASF131
	.byte	0xf
	.byte	0x4d
	.byte	0x5
	.4byte	0x7b
	.4byte	0xa57
	.uleb128 0x1
	.4byte	0xa0b
	.byte	0
	.uleb128 0x6
	.4byte	.LASF132
	.byte	0xf
	.byte	0x44
	.byte	0x5
	.4byte	0x7b
	.4byte	0xa6d
	.uleb128 0x1
	.4byte	0xa0b
	.byte	0
	.uleb128 0x6
	.4byte	.LASF133
	.byte	0xa
	.byte	0xb1
	.byte	0x9
	.4byte	0x7b
	.4byte	0xa83
	.uleb128 0x1
	.4byte	0xa83
	.byte	0
	.uleb128 0x4
	.4byte	0x23f
	.uleb128 0x6
	.4byte	.LASF134
	.byte	0xf
	.byte	0x3b
	.byte	0x5
	.4byte	0x7b
	.4byte	0xaa3
	.uleb128 0x1
	.4byte	0xa0b
	.uleb128 0x1
	.4byte	0x179
	.byte	0
	.uleb128 0x15
	.4byte	.LASF136
	.byte	0x67
	.uleb128 0x6
	.4byte	.LASF135
	.byte	0xf
	.byte	0x71
	.byte	0x5
	.4byte	0x7b
	.4byte	0xac4
	.uleb128 0x1
	.4byte	0xa0b
	.uleb128 0x1
	.4byte	0x179
	.byte	0
	.uleb128 0x15
	.4byte	.LASF137
	.byte	0x66
	.uleb128 0x6
	.4byte	.LASF138
	.byte	0xa
	.byte	0xa7
	.byte	0x9
	.4byte	0x7b
	.4byte	0xae5
	.uleb128 0x1
	.4byte	0xa83
	.uleb128 0x1
	.4byte	0x82
	.byte	0
	.uleb128 0x6
	.4byte	.LASF139
	.byte	0x11
	.byte	0x1f
	.byte	0x8
	.4byte	0x114
	.4byte	0xb05
	.uleb128 0x1
	.4byte	0x116
	.uleb128 0x1
	.4byte	0x752
	.uleb128 0x1
	.4byte	0x89
	.byte	0
	.uleb128 0x6
	.4byte	.LASF140
	.byte	0xf
	.byte	0x28
	.byte	0x9
	.4byte	0x155
	.4byte	0xb25
	.uleb128 0x1
	.4byte	0xa0b
	.uleb128 0x1
	.4byte	0xb25
	.uleb128 0x1
	.4byte	0x16d
	.byte	0
	.uleb128 0x4
	.4byte	0x16d
	.uleb128 0x6
	.4byte	.LASF141
	.byte	0xf
	.byte	0x31
	.byte	0x9
	.4byte	0x155
	.4byte	0xb40
	.uleb128 0x1
	.4byte	0xa0b
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF159
	.byte	0xa
	.byte	0x9c
	.byte	0xa
	.4byte	0xb52
	.uleb128 0x1
	.4byte	0xa83
	.byte	0
	.uleb128 0x6
	.4byte	.LASF142
	.byte	0xa
	.byte	0x94
	.byte	0x9
	.4byte	0x7b
	.4byte	0xb68
	.uleb128 0x1
	.4byte	0xa83
	.byte	0
	.uleb128 0x6
	.4byte	.LASF143
	.byte	0xf
	.byte	0x1d
	.byte	0x9
	.4byte	0x155
	.4byte	0xb7e
	.uleb128 0x1
	.4byte	0xa0b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF146
	.byte	0xa0
	.byte	0xc
	.4byte	0x7b
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbea
	.uleb128 0x8
	.string	"fp"
	.byte	0xa0
	.byte	0x22
	.4byte	0x6f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"cmd"
	.byte	0xa0
	.byte	0x2a
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"arg"
	.byte	0xa0
	.byte	0x3d
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.string	"ret"
	.byte	0xa2
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF144
	.byte	0xa3
	.byte	0x10
	.4byte	0xa0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF145
	.byte	0xa4
	.byte	0xa
	.4byte	0xbea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.4byte	0x7b
	.uleb128 0x11
	.4byte	.LASF147
	.byte	0x84
	.byte	0xc
	.4byte	0x7b
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc67
	.uleb128 0x8
	.string	"fp"
	.byte	0x84
	.byte	0x21
	.4byte	0x6f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.4byte	.LASF148
	.byte	0x84
	.byte	0x2a
	.4byte	0x79e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0xf
	.4byte	.LASF149
	.byte	0x84
	.byte	0x3f
	.4byte	0x68b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"fd"
	.byte	0x84
	.byte	0x56
	.4byte	0x6ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.string	"opa"
	.byte	0x84
	.byte	0x60
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.4byte	.LASF144
	.byte	0x86
	.byte	0x10
	.4byte	0xa0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.string	"out"
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.4byte	.L30
	.byte	0
	.uleb128 0x21
	.4byte	.LASF153
	.byte	0x1
	.byte	0x77
	.byte	0xd
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc9a
	.uleb128 0x8
	.string	"arg"
	.byte	0x77
	.byte	0x22
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF144
	.byte	0x7a
	.byte	0x10
	.4byte	0xa0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0x50
	.byte	0x10
	.4byte	0x149
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd06
	.uleb128 0x8
	.string	"fp"
	.byte	0x50
	.byte	0x25
	.4byte	0x6f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"buf"
	.byte	0x50
	.byte	0x2f
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.4byte	.LASF151
	.byte	0x50
	.byte	0x3b
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.string	"ret"
	.byte	0x52
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF152
	.byte	0x53
	.byte	0xe
	.4byte	0x16d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF144
	.byte	0x54
	.byte	0x10
	.4byte	0xa0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.4byte	.LASF160
	.byte	0x1
	.byte	0x2f
	.byte	0x5
	.4byte	0x7b
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd49
	.uleb128 0x8
	.string	"fp"
	.byte	0x2f
	.byte	0x1b
	.4byte	0x6f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.string	"ret"
	.byte	0x31
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF144
	.byte	0x32
	.byte	0x10
	.4byte	0xa0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.4byte	.LASF154
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.4byte	0x7b
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	.LASF155
	.byte	0x10
	.byte	0x32
	.4byte	0x67a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"fp"
	.byte	0x10
	.byte	0x41
	.4byte	0x6f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"ret"
	.byte	0x12
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF144
	.byte	0x13
	.byte	0x10
	.4byte	0xa0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x21
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.4byte	0x44
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF141:
	.string	"hal_adc_finalize"
.LASF134:
	.string	"hal_adc_notify_register"
.LASF74:
	.string	"aos_dirent_t"
.LASF108:
	.string	"inode_t"
.LASF124:
	.string	"poll_cb"
.LASF147:
	.string	"vfs_adc_poll"
.LASF77:
	.string	"aos_dir_t"
.LASF12:
	.string	"unsigned int"
.LASF58:
	.string	"st_blksize"
.LASF107:
	.string	"refs"
.LASF115:
	.string	"events"
.LASF92:
	.string	"opendir"
.LASF86:
	.string	"sync"
.LASF145:
	.string	"level"
.LASF25:
	.string	"__nlink_t"
.LASF68:
	.string	"f_ffree"
.LASF104:
	.string	"i_name"
.LASF73:
	.string	"d_name"
.LASF21:
	.string	"__ino_t"
.LASF44:
	.string	"aos_mutex_t"
.LASF37:
	.string	"ino_t"
.LASF31:
	.string	"uint32_t"
.LASF98:
	.string	"telldir"
.LASF123:
	.string	"mutex"
.LASF103:
	.string	"i_arg"
.LASF90:
	.string	"unlink"
.LASF9:
	.string	"long long unsigned int"
.LASF59:
	.string	"st_blocks"
.LASF111:
	.string	"offset"
.LASF110:
	.string	"f_arg"
.LASF102:
	.string	"i_fops"
.LASF136:
	.string	"vTaskExitCritical"
.LASF46:
	.string	"stat"
.LASF47:
	.string	"st_dev"
.LASF135:
	.string	"hal_adc_notify_unregister"
.LASF34:
	.string	"tv_nsec"
.LASF119:
	.string	"adc_config_t"
.LASF13:
	.string	"size_t"
.LASF138:
	.string	"aos_mutex_lock"
.LASF22:
	.string	"__mode_t"
.LASF72:
	.string	"d_type"
.LASF160:
	.string	"vfs_adc_close"
.LASF117:
	.string	"_Bool"
.LASF52:
	.string	"st_gid"
.LASF97:
	.string	"rewinddir"
.LASF49:
	.string	"st_mode"
.LASF95:
	.string	"mkdir"
.LASF112:
	.string	"file_t"
.LASF50:
	.string	"st_nlink"
.LASF157:
	.string	"inode_ops_t"
.LASF84:
	.string	"ioctl"
.LASF152:
	.string	"adc_value"
.LASF85:
	.string	"poll"
.LASF43:
	.string	"aos_hdl_t"
.LASF122:
	.string	"priv"
.LASF45:
	.string	"timespec"
.LASF26:
	.string	"char"
.LASF35:
	.string	"blkcnt_t"
.LASF154:
	.string	"vfs_adc_open"
.LASF113:
	.string	"poll_notify_t"
.LASF81:
	.string	"close"
.LASF116:
	.string	"revents"
.LASF28:
	.string	"ssize_t"
.LASF89:
	.string	"lseek"
.LASF118:
	.string	"sampling_cycle"
.LASF30:
	.string	"uint8_t"
.LASF106:
	.string	"type"
.LASF32:
	.string	"time_t"
.LASF88:
	.string	"fs_ops"
.LASF61:
	.string	"statfs"
.LASF48:
	.string	"st_ino"
.LASF67:
	.string	"f_files"
.LASF8:
	.string	"long long int"
.LASF83:
	.string	"write"
.LASF62:
	.string	"f_type"
.LASF18:
	.string	"__dev_t"
.LASF132:
	.string	"hal_adc_notify_register_config_disable"
.LASF150:
	.string	"vfs_adc_read"
.LASF153:
	.string	"vfs_adc_notify"
.LASF38:
	.string	"dev_t"
.LASF65:
	.string	"f_bfree"
.LASF79:
	.string	"file_ops"
.LASF159:
	.string	"aos_mutex_free"
.LASF78:
	.string	"file_ops_t"
.LASF151:
	.string	"nbytes"
.LASF128:
	.string	"hal_adc_notify_register_config_lower"
.LASF114:
	.string	"pollfd"
.LASF130:
	.string	"hal_adc_notify_register_config_low"
.LASF66:
	.string	"f_bavail"
.LASF126:
	.string	"adc_dev_t"
.LASF69:
	.string	"f_fsid"
.LASF140:
	.string	"hal_adc_value_get"
.LASF60:
	.string	"st_spare4"
.LASF100:
	.string	"access"
.LASF91:
	.string	"rename"
.LASF14:
	.string	"long double"
.LASF20:
	.string	"__gid_t"
.LASF64:
	.string	"f_blocks"
.LASF40:
	.string	"gid_t"
.LASF11:
	.string	"__int_least64_t"
.LASF101:
	.string	"i_ops"
.LASF39:
	.string	"uid_t"
.LASF121:
	.string	"config"
.LASF96:
	.string	"rmdir"
.LASF94:
	.string	"closedir"
.LASF4:
	.string	"short int"
.LASF56:
	.string	"st_mtim"
.LASF105:
	.string	"i_flags"
.LASF6:
	.string	"long int"
.LASF109:
	.string	"node"
.LASF93:
	.string	"readdir"
.LASF143:
	.string	"hal_adc_init"
.LASF70:
	.string	"f_namelen"
.LASF149:
	.string	"notify"
.LASF16:
	.string	"__blksize_t"
.LASF19:
	.string	"__uid_t"
.LASF55:
	.string	"st_atim"
.LASF82:
	.string	"read"
.LASF75:
	.string	"dd_vfs_fd"
.LASF80:
	.string	"open"
.LASF33:
	.string	"tv_sec"
.LASF7:
	.string	"long unsigned int"
.LASF127:
	.string	"float"
.LASF29:
	.string	"int32_t"
.LASF120:
	.string	"port"
.LASF142:
	.string	"aos_mutex_new"
.LASF42:
	.string	"nlink_t"
.LASF63:
	.string	"f_bsize"
.LASF3:
	.string	"unsigned char"
.LASF148:
	.string	"setup"
.LASF10:
	.string	"__uint32_t"
.LASF36:
	.string	"blksize_t"
.LASF144:
	.string	"adc_dev"
.LASF137:
	.string	"vTaskEnterCritical"
.LASF125:
	.string	"poll_data"
.LASF54:
	.string	"st_size"
.LASF131:
	.string	"hal_adc_notify_register_config_high"
.LASF71:
	.string	"d_ino"
.LASF51:
	.string	"st_uid"
.LASF23:
	.string	"__off_t"
.LASF57:
	.string	"st_ctim"
.LASF129:
	.string	"hal_adc_notify_register_config_higher"
.LASF24:
	.string	"_ssize_t"
.LASF76:
	.string	"dd_rsv"
.LASF2:
	.string	"signed char"
.LASF41:
	.string	"mode_t"
.LASF27:
	.string	"off_t"
.LASF5:
	.string	"short unsigned int"
.LASF139:
	.string	"memcpy"
.LASF99:
	.string	"seekdir"
.LASF15:
	.string	"__blkcnt_t"
.LASF158:
	.string	"adc_ops"
.LASF17:
	.string	"_off_t"
.LASF53:
	.string	"st_rdev"
.LASF133:
	.string	"aos_mutex_unlock"
.LASF156:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF146:
	.string	"vfs_adc_ioctl"
.LASF87:
	.string	"fs_ops_t"
.LASF155:
	.string	"inode"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/device/vfs_adc.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/vfs"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
