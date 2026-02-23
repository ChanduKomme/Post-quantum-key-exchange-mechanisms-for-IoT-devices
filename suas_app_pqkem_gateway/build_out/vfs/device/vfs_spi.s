	.file	"vfs_spi.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/vfs" "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/device/vfs_spi.c"
	.section	.text.vfs_spi_open,"ax",@progbits
	.align	1
	.globl	vfs_spi_open
	.type	vfs_spi_open, @function
vfs_spi_open:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/device/vfs_spi.c"
	.loc 1 12 1
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
	.loc 1 13 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 14 16
	sw	zero,-24(s0)
	.loc 1 17 8
	lw	a5,-40(s0)
	beq	a5,zero,.L2
	.loc 1 17 27 discriminator 1
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 17 21 discriminator 1
	beq	a5,zero,.L2
	.loc 1 20 15
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 20 21
	lbu	a4,17(a5)
	.loc 1 20 12
	li	a5,1
	bne	a4,a5,.L3
	.loc 1 23 39
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 23 21
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 26 19
	lw	a0,-24(s0)
	call	hal_spi_init
	sw	a0,-20(s0)
	.loc 1 20 12
	j	.L5
.L3:
	.loc 1 28 17
	sw	zero,-20(s0)
	.loc 1 20 12
	j	.L5
.L2:
	.loc 1 31 13
	li	a5,-22
	sw	a5,-20(s0)
.L5:
	.loc 1 34 12
	lw	a5,-20(s0)
	.loc 1 35 1
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
	.size	vfs_spi_open, .-vfs_spi_open
	.section	.text.vfs_spi_close,"ax",@progbits
	.align	1
	.globl	vfs_spi_close
	.type	vfs_spi_close, @function
vfs_spi_close:
.LFB6:
	.loc 1 38 1
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
	.loc 1 39 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 40 16
	sw	zero,-24(s0)
	.loc 1 43 8
	lw	a5,-36(s0)
	beq	a5,zero,.L8
	.loc 1 43 27 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 43 21 discriminator 1
	beq	a5,zero,.L8
	.loc 1 46 15
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 46 21
	lbu	a4,17(a5)
	.loc 1 46 12
	li	a5,1
	bne	a4,a5,.L9
	.loc 1 49 39
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 49 21
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 51 16
	lw	a5,-24(s0)
	beq	a5,zero,.L10
	.loc 1 54 23
	lw	a0,-24(s0)
	call	hal_spi_finalize
	sw	a0,-20(s0)
	.loc 1 46 12
	j	.L12
.L10:
	.loc 1 56 21
	li	a5,-22
	sw	a5,-20(s0)
	.loc 1 46 12
	j	.L12
.L9:
	.loc 1 59 17
	sw	zero,-20(s0)
	.loc 1 46 12
	j	.L12
.L8:
	.loc 1 62 13
	li	a5,-22
	sw	a5,-20(s0)
.L12:
	.loc 1 65 12
	lw	a5,-20(s0)
	.loc 1 66 1
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
	.size	vfs_spi_close, .-vfs_spi_close
	.section	.text.vfs_spi_read,"ax",@progbits
	.align	1
	.globl	vfs_spi_read
	.type	vfs_spi_read, @function
vfs_spi_read:
.LFB7:
	.loc 1 69 1
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
	.loc 1 70 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 71 16
	sw	zero,-24(s0)
	.loc 1 74 8
	lw	a5,-36(s0)
	beq	a5,zero,.L15
	.loc 1 74 27 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 74 21 discriminator 1
	beq	a5,zero,.L15
	.loc 1 77 35
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 77 17
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 79 12
	lw	a5,-24(s0)
	beq	a5,zero,.L16
	.loc 1 82 19
	lw	a5,-44(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	li	a3,-1
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	call	hal_spi_recv
	sw	a0,-20(s0)
	.loc 1 86 16
	lw	a5,-20(s0)
	bne	a5,zero,.L20
	.loc 1 87 21
	lw	a5,-44(s0)
	sw	a5,-20(s0)
	.loc 1 79 12
	j	.L20
.L16:
	.loc 1 90 17
	li	a5,-22
	sw	a5,-20(s0)
	.loc 1 79 12
	j	.L20
.L15:
	.loc 1 93 13
	li	a5,-22
	sw	a5,-20(s0)
	j	.L18
.L20:
	.loc 1 79 12
	nop
.L18:
	.loc 1 96 12
	lw	a5,-20(s0)
	.loc 1 97 1
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
	.size	vfs_spi_read, .-vfs_spi_read
	.section	.text.vfs_spi_write,"ax",@progbits
	.align	1
	.globl	vfs_spi_write
	.type	vfs_spi_write, @function
vfs_spi_write:
.LFB8:
	.loc 1 100 1
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
	.loc 1 101 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 102 16
	sw	zero,-24(s0)
	.loc 1 105 8
	lw	a5,-36(s0)
	beq	a5,zero,.L22
	.loc 1 105 27 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 105 21 discriminator 1
	beq	a5,zero,.L22
	.loc 1 108 35
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 108 17
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 110 12
	lw	a5,-24(s0)
	beq	a5,zero,.L23
	.loc 1 113 19
	lw	a5,-44(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	li	a3,-1
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	call	hal_spi_send
	sw	a0,-20(s0)
	.loc 1 117 16
	lw	a5,-20(s0)
	bne	a5,zero,.L27
	.loc 1 118 21
	lw	a5,-44(s0)
	sw	a5,-20(s0)
	.loc 1 110 12
	j	.L27
.L23:
	.loc 1 121 17
	li	a5,-22
	sw	a5,-20(s0)
	.loc 1 110 12
	j	.L27
.L22:
	.loc 1 124 13
	li	a5,-22
	sw	a5,-20(s0)
	j	.L25
.L27:
	.loc 1 110 12
	nop
.L25:
	.loc 1 127 12
	lw	a5,-20(s0)
	.loc 1 128 1
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
	.size	vfs_spi_write, .-vfs_spi_write
	.section	.rodata
	.align	2
.LC0:
	.string	"vfs_spi.c"
	.align	2
.LC1:
	.string	"\033[32mINFO  \033[0m"
	.align	2
.LC2:
	.string	"[%10u][%s: %s:%4d] IOCTL_SPI_IOC_WR_MODE.\r\n"
	.align	2
.LC3:
	.string	"[%10u][%s: %s:%4d] IOCTL_SPI_IOC_WR_MAX_SPEED_HZ.\r\n"
	.align	2
.LC4:
	.string	"\033[31mERROR \033[0m"
	.align	2
.LC5:
	.string	"[%10u][%s: %s:%4d] NOT SUPPORT, IOCTL_SPI_IOC_WR_MODE32.\r\n"
	.align	2
.LC6:
	.string	"[%10u][%s: %s:%4d] IOCTL_SPI_IOC_MESSAGE_1.\r\n"
	.align	2
.LC7:
	.string	"[%10u][%s: %s:%4d] IOCTL_SPI_IOC_MESSAGE_2.\r\n"
	.section	.text.vfs_spi_ioctl,"ax",@progbits
	.align	1
	.globl	vfs_spi_ioctl
	.type	vfs_spi_ioctl, @function
vfs_spi_ioctl:
.LFB9:
	.loc 1 131 1
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
	.loc 1 132 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 133 16
	sw	zero,-24(s0)
	.loc 1 134 25
	lw	a5,-44(s0)
	sw	a5,-28(s0)
	.loc 1 137 8
	lw	a5,-36(s0)
	beq	a5,zero,.L29
	.loc 1 137 27 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 137 21 discriminator 1
	bne	a5,zero,.L30
.L29:
	.loc 1 138 16
	li	a5,-22
	j	.L31
.L30:
	.loc 1 142 31
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 142 13
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 144 8
	lw	a5,-24(s0)
	bne	a5,zero,.L32
	.loc 1 145 16
	li	a5,-22
	j	.L31
.L32:
	.loc 1 148 5
	lw	a4,-40(s0)
	li	a5,11
	beq	a4,a5,.L33
	lw	a4,-40(s0)
	li	a5,11
	bgt	a4,a5,.L34
	lw	a4,-40(s0)
	li	a5,10
	beq	a4,a5,.L35
	lw	a4,-40(s0)
	li	a5,10
	bgt	a4,a5,.L34
	lw	a4,-40(s0)
	li	a5,9
	bgt	a4,a5,.L34
	lw	a4,-40(s0)
	li	a5,8
	bge	a4,a5,.L36
	lw	a4,-40(s0)
	li	a5,7
	bgt	a4,a5,.L34
	lw	a4,-40(s0)
	li	a5,6
	bge	a4,a5,.L37
	lw	a4,-40(s0)
	li	a5,1
	bgt	a4,a5,.L38
	lw	a5,-40(s0)
	bge	a5,zero,.L39
	j	.L34
.L38:
	lw	a5,-40(s0)
	addi	a4,a5,-2
	li	a5,3
	bgtu	a4,a5,.L34
	j	.L36
.L39:
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
	.loc 1 152 20 discriminator 1
	beq	a5,zero,.L41
	.loc 1 152 110 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L42
.L41:
	.loc 1 152 139 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L42:
	.loc 1 152 20 discriminator 7
	li	a4,152
	lui	a5,%hi(.LC0)
	addi	a3,a5,%lo(.LC0)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	bl_printk
	.loc 1 153 49
	lw	a5,-44(s0)
	.loc 1 153 19
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-24(s0)
	call	hal_spi_set_rwmode
	sw	a0,-20(s0)
	.loc 1 155 9
	j	.L43
.L37:
.LBB14:
.LBB15:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE15:
.LBE14:
	.loc 1 159 20 discriminator 1
	beq	a5,zero,.L45
	.loc 1 159 118 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L46
.L45:
	.loc 1 159 147 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L46:
	.loc 1 159 20 discriminator 7
	li	a4,159
	lui	a5,%hi(.LC0)
	addi	a3,a5,%lo(.LC0)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	bl_printk
	.loc 1 160 51
	lw	a5,-44(s0)
	.loc 1 160 19
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-24(s0)
	call	hal_spi_set_rwspeed
	sw	a0,-20(s0)
	.loc 1 162 9
	j	.L43
.L36:
.LBB16:
.LBB17:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE17:
.LBE16:
	.loc 1 170 20 discriminator 1
	beq	a5,zero,.L48
	.loc 1 170 125 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L49
.L48:
	.loc 1 170 154 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L49:
	.loc 1 170 20 discriminator 7
	li	a4,170
	lui	a5,%hi(.LC0)
	addi	a3,a5,%lo(.LC0)
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	bl_printk
	.loc 1 172 9
	j	.L43
.L35:
.LBB18:
.LBB19:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE19:
.LBE18:
	.loc 1 175 20 discriminator 1
	beq	a5,zero,.L51
	.loc 1 175 112 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L52
.L51:
	.loc 1 175 141 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L52:
	.loc 1 175 20 discriminator 7
	li	a4,175
	lui	a5,%hi(.LC0)
	addi	a3,a5,%lo(.LC0)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	bl_printk
	.loc 1 176 19
	li	a2,1
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	hal_spi_transfer
	sw	a0,-20(s0)
	.loc 1 178 9
	j	.L43
.L33:
.LBB20:
.LBB21:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE21:
.LBE20:
	.loc 1 181 20 discriminator 1
	beq	a5,zero,.L54
	.loc 1 181 112 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L55
.L54:
	.loc 1 181 141 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L55:
	.loc 1 181 20 discriminator 7
	li	a4,181
	lui	a5,%hi(.LC0)
	addi	a3,a5,%lo(.LC0)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	bl_printk
	.loc 1 182 19
	li	a2,2
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	hal_spi_transfer
	sw	a0,-20(s0)
	.loc 1 184 9
	j	.L43
.L34:
	.loc 1 187 17
	li	a5,-22
	sw	a5,-20(s0)
.L43:
	.loc 1 191 12
	lw	a5,-20(s0)
.L31:
	.loc 1 192 1
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
	.size	vfs_spi_ioctl, .-vfs_spi_ioctl
	.globl	spi_ops
	.section	.rodata.spi_ops,"a"
	.align	2
	.type	spi_ops, @object
	.size	spi_ops, 28
spi_ops:
	.word	vfs_spi_open
	.word	vfs_spi_close
	.word	vfs_spi_read
	.word	vfs_spi_write
	.word	vfs_spi_ioctl
	.zero	8
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
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/device/vfs_spi.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/hal/soc/spi.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd4e
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x17
	.4byte	.LASF156
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
	.4byte	0x64
	.uleb128 0xf
	.4byte	0x53
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x77
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x8a
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x4f
	.byte	0x1b
	.4byte	0x8a
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0xc8
	.byte	0x17
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0xe5
	.byte	0x16
	.4byte	0x9f
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.4byte	.LASF18
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x1e
	.byte	0xe
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x22
	.byte	0xe
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x2e
	.byte	0xe
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x38
	.byte	0xf
	.4byte	0x32
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x3c
	.byte	0x18
	.4byte	0x77
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x3f
	.byte	0x18
	.4byte	0x77
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x6
	.byte	0x4b
	.byte	0x18
	.4byte	0x77
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x6
	.byte	0x5a
	.byte	0x14
	.4byte	0xa6
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x66
	.byte	0x10
	.4byte	0xe9
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x93
	.byte	0x14
	.4byte	0x98
	.uleb128 0x19
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x6
	.byte	0xd5
	.byte	0x18
	.4byte	0x77
	.uleb128 0x4
	.4byte	0x15c
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF30
	.uleb128 0xf
	.4byte	0x15c
	.uleb128 0x4
	.4byte	0x163
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x7
	.byte	0x2a
	.byte	0x19
	.4byte	0xb2
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x10
	.byte	0x8
	.byte	0x2f
	.byte	0x8
	.4byte	0x1a1
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
	.4byte	0x45
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x9
	.byte	0x61
	.byte	0x14
	.4byte	0xd1
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x9
	.byte	0x66
	.byte	0x15
	.4byte	0xdd
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x9
	.byte	0x89
	.byte	0x11
	.4byte	0x119
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x9
	.byte	0x9b
	.byte	0x11
	.4byte	0x131
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x9
	.byte	0x9f
	.byte	0x11
	.4byte	0xf5
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x9
	.byte	0xa3
	.byte	0x11
	.4byte	0x101
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x9
	.byte	0xa7
	.byte	0x11
	.4byte	0x10d
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x9
	.byte	0xb6
	.byte	0x12
	.4byte	0x13d
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x9
	.byte	0xbb
	.byte	0x12
	.4byte	0x125
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x9
	.byte	0xc0
	.byte	0x13
	.4byte	0x14b
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x58
	.byte	0xa
	.byte	0x1b
	.byte	0x8
	.4byte	0x2dd
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0xa
	.byte	0x1d
	.byte	0x9
	.4byte	0x1d1
	.byte	0
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0xa
	.byte	0x1e
	.byte	0x9
	.4byte	0x1b9
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0xa
	.byte	0x1f
	.byte	0xa
	.4byte	0x201
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0xa
	.byte	0x20
	.byte	0xb
	.4byte	0x20d
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0xa
	.byte	0x21
	.byte	0x9
	.4byte	0x1dd
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0xa
	.byte	0x22
	.byte	0x9
	.4byte	0x1e9
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0xa
	.byte	0x23
	.byte	0x9
	.4byte	0x1d1
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0xa
	.byte	0x24
	.byte	0x9
	.4byte	0x1c5
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0xa
	.byte	0x2a
	.byte	0x13
	.4byte	0x179
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xa
	.byte	0x2b
	.byte	0x13
	.4byte	0x179
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0xa
	.byte	0x2c
	.byte	0x13
	.4byte	0x179
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0xa
	.byte	0x2d
	.byte	0xd
	.4byte	0x1ad
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0xa
	.byte	0x2e
	.byte	0xc
	.4byte	0x1a1
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0xa
	.byte	0x30
	.byte	0x8
	.4byte	0x2dd
	.byte	0x50
	.byte	0
	.uleb128 0x13
	.4byte	0x45
	.4byte	0x2ed
	.uleb128 0x1a
	.4byte	0x9f
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x24
	.byte	0xb
	.byte	0x4
	.byte	0x8
	.4byte	0x370
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0xb
	.byte	0x5
	.byte	0xa
	.4byte	0x45
	.byte	0
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0xb
	.byte	0x6
	.byte	0xa
	.4byte	0x45
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0xb
	.byte	0x7
	.byte	0xa
	.4byte	0x45
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0xb
	.byte	0x8
	.byte	0xa
	.4byte	0x45
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0xb
	.byte	0x9
	.byte	0xa
	.4byte	0x45
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0xb
	.byte	0xa
	.byte	0xa
	.4byte	0x45
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0xb
	.byte	0xb
	.byte	0xa
	.4byte	0x45
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0xb
	.byte	0xc
	.byte	0xa
	.4byte	0x45
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0xb
	.byte	0xd
	.byte	0xa
	.4byte	0x45
	.byte	0x20
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0xb
	.byte	0x10
	.4byte	0x3a0
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0xb
	.byte	0x11
	.byte	0x9
	.4byte	0x98
	.byte	0
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0xb
	.byte	0x12
	.byte	0xd
	.4byte	0x53
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0xb
	.byte	0x13
	.byte	0xa
	.4byte	0x3a0
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.4byte	0x15c
	.4byte	0x3af
	.uleb128 0x1b
	.4byte	0x9f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xb
	.byte	0x14
	.byte	0x3
	.4byte	0x370
	.uleb128 0xa
	.byte	0x8
	.byte	0xb
	.byte	0x16
	.4byte	0x3de
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0xb
	.byte	0x17
	.byte	0x9
	.4byte	0x98
	.byte	0
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0xb
	.byte	0x18
	.byte	0x9
	.4byte	0x98
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0xb
	.byte	0x19
	.byte	0x3
	.4byte	0x3bb
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0xc
	.byte	0x2c
	.byte	0x1f
	.4byte	0x45f
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x1c
	.byte	0xc
	.byte	0x46
	.byte	0x8
	.4byte	0x45f
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xc
	.byte	0x47
	.byte	0xb
	.4byte	0x69d
	.byte	0
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xc
	.byte	0x48
	.byte	0xb
	.4byte	0x6b1
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xc
	.byte	0x49
	.byte	0xf
	.4byte	0x6cf
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xc
	.byte	0x4a
	.byte	0xf
	.4byte	0x6f3
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0xc
	.byte	0x4b
	.byte	0xb
	.4byte	0x711
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0xc
	.byte	0x4d
	.byte	0xb
	.4byte	0x740
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0xc
	.byte	0x4f
	.byte	0xb
	.4byte	0x6b1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.4byte	0x3f6
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0xc
	.byte	0x2d
	.byte	0x1d
	.4byte	0x582
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x50
	.byte	0xc
	.byte	0x52
	.byte	0x8
	.4byte	0x582
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xc
	.byte	0x53
	.byte	0xb
	.4byte	0x75e
	.byte	0
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xc
	.byte	0x54
	.byte	0xb
	.4byte	0x6b1
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xc
	.byte	0x55
	.byte	0xf
	.4byte	0x77c
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xc
	.byte	0x56
	.byte	0xf
	.4byte	0x79a
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0xc
	.byte	0x57
	.byte	0xd
	.4byte	0x7b8
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0xc
	.byte	0x58
	.byte	0xb
	.4byte	0x6b1
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xc
	.byte	0x59
	.byte	0xb
	.4byte	0x7db
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xc
	.byte	0x5a
	.byte	0xb
	.4byte	0x7f4
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0xc
	.byte	0x5b
	.byte	0xb
	.4byte	0x812
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0xc
	.byte	0x5c
	.byte	0x12
	.4byte	0x830
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0xc
	.byte	0x5d
	.byte	0x15
	.4byte	0x84e
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0xc
	.byte	0x5e
	.byte	0xb
	.4byte	0x867
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0xc
	.byte	0x5f
	.byte	0xb
	.4byte	0x7f4
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0xc
	.byte	0x60
	.byte	0xb
	.4byte	0x7f4
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0xc
	.byte	0x61
	.byte	0xc
	.4byte	0x87c
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0xc
	.byte	0x62
	.byte	0xc
	.4byte	0x895
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0xc
	.byte	0x63
	.byte	0xc
	.4byte	0x8af
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0xc
	.byte	0x64
	.byte	0xb
	.4byte	0x711
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0xc
	.byte	0x65
	.byte	0xb
	.4byte	0x8d2
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0xc
	.byte	0x66
	.byte	0xb
	.4byte	0x75e
	.byte	0x4c
	.byte	0
	.uleb128 0xf
	.4byte	0x470
	.uleb128 0x1c
	.4byte	.LASF157
	.byte	0x4
	.byte	0xc
	.byte	0x2f
	.byte	0x7
	.4byte	0x5ab
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x30
	.byte	0x17
	.4byte	0x5ab
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x31
	.byte	0x15
	.4byte	0x5b0
	.byte	0
	.uleb128 0x4
	.4byte	0x3ea
	.uleb128 0x4
	.4byte	0x464
	.uleb128 0xa
	.byte	0x14
	.byte	0xc
	.byte	0x35
	.4byte	0x60c
	.uleb128 0x10
	.string	"ops"
	.byte	0xc
	.byte	0x36
	.byte	0x17
	.4byte	0x587
	.byte	0
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0xc
	.byte	0x37
	.byte	0xb
	.4byte	0x149
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0xc
	.byte	0x38
	.byte	0xb
	.4byte	0x157
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0xc
	.byte	0x39
	.byte	0x9
	.4byte	0x98
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0xc
	.byte	0x3a
	.byte	0xd
	.4byte	0x53
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0xc
	.byte	0x3b
	.byte	0xd
	.4byte	0x53
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0xc
	.byte	0x3c
	.byte	0x3
	.4byte	0x5b5
	.uleb128 0xa
	.byte	0xc
	.byte	0xc
	.byte	0x3e
	.4byte	0x648
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0xc
	.byte	0x3f
	.byte	0xe
	.4byte	0x648
	.byte	0
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0xc
	.byte	0x40
	.byte	0xb
	.4byte	0x149
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0xc
	.byte	0x41
	.byte	0xc
	.4byte	0xbe
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	0x60c
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0xc
	.byte	0x42
	.byte	0x3
	.4byte	0x618
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0xc
	.byte	0x45
	.byte	0x10
	.4byte	0x665
	.uleb128 0x4
	.4byte	0x66a
	.uleb128 0x11
	.4byte	0x67a
	.uleb128 0x2
	.4byte	0x67a
	.uleb128 0x2
	.4byte	0x149
	.byte	0
	.uleb128 0x4
	.4byte	0x67f
	.uleb128 0x1d
	.4byte	.LASF158
	.uleb128 0x5
	.4byte	0x98
	.4byte	0x698
	.uleb128 0x2
	.4byte	0x648
	.uleb128 0x2
	.4byte	0x698
	.byte	0
	.uleb128 0x4
	.4byte	0x64d
	.uleb128 0x4
	.4byte	0x684
	.uleb128 0x5
	.4byte	0x98
	.4byte	0x6b1
	.uleb128 0x2
	.4byte	0x698
	.byte	0
	.uleb128 0x4
	.4byte	0x6a2
	.uleb128 0x5
	.4byte	0x1f5
	.4byte	0x6cf
	.uleb128 0x2
	.4byte	0x698
	.uleb128 0x2
	.4byte	0x149
	.uleb128 0x2
	.4byte	0xbe
	.byte	0
	.uleb128 0x4
	.4byte	0x6b6
	.uleb128 0x5
	.4byte	0x1f5
	.4byte	0x6ed
	.uleb128 0x2
	.4byte	0x698
	.uleb128 0x2
	.4byte	0x6ed
	.uleb128 0x2
	.4byte	0xbe
	.byte	0
	.uleb128 0x4
	.4byte	0x6f2
	.uleb128 0x1e
	.uleb128 0x4
	.4byte	0x6d4
	.uleb128 0x5
	.4byte	0x98
	.4byte	0x711
	.uleb128 0x2
	.4byte	0x698
	.uleb128 0x2
	.4byte	0x98
	.uleb128 0x2
	.4byte	0x8a
	.byte	0
	.uleb128 0x4
	.4byte	0x6f8
	.uleb128 0x5
	.4byte	0x98
	.4byte	0x739
	.uleb128 0x2
	.4byte	0x698
	.uleb128 0x2
	.4byte	0x739
	.uleb128 0x2
	.4byte	0x659
	.uleb128 0x2
	.4byte	0x67a
	.uleb128 0x2
	.4byte	0x149
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF113
	.uleb128 0x4
	.4byte	0x716
	.uleb128 0x5
	.4byte	0x98
	.4byte	0x75e
	.uleb128 0x2
	.4byte	0x698
	.uleb128 0x2
	.4byte	0x168
	.uleb128 0x2
	.4byte	0x98
	.byte	0
	.uleb128 0x4
	.4byte	0x745
	.uleb128 0x5
	.4byte	0x1f5
	.4byte	0x77c
	.uleb128 0x2
	.4byte	0x698
	.uleb128 0x2
	.4byte	0x157
	.uleb128 0x2
	.4byte	0xbe
	.byte	0
	.uleb128 0x4
	.4byte	0x763
	.uleb128 0x5
	.4byte	0x1f5
	.4byte	0x79a
	.uleb128 0x2
	.4byte	0x698
	.uleb128 0x2
	.4byte	0x168
	.uleb128 0x2
	.4byte	0xbe
	.byte	0
	.uleb128 0x4
	.4byte	0x781
	.uleb128 0x5
	.4byte	0x1c5
	.4byte	0x7b8
	.uleb128 0x2
	.4byte	0x698
	.uleb128 0x2
	.4byte	0x1c5
	.uleb128 0x2
	.4byte	0x98
	.byte	0
	.uleb128 0x4
	.4byte	0x79f
	.uleb128 0x5
	.4byte	0x98
	.4byte	0x7d6
	.uleb128 0x2
	.4byte	0x698
	.uleb128 0x2
	.4byte	0x168
	.uleb128 0x2
	.4byte	0x7d6
	.byte	0
	.uleb128 0x4
	.4byte	0x219
	.uleb128 0x4
	.4byte	0x7bd
	.uleb128 0x5
	.4byte	0x98
	.4byte	0x7f4
	.uleb128 0x2
	.4byte	0x698
	.uleb128 0x2
	.4byte	0x168
	.byte	0
	.uleb128 0x4
	.4byte	0x7e0
	.uleb128 0x5
	.4byte	0x98
	.4byte	0x812
	.uleb128 0x2
	.4byte	0x698
	.uleb128 0x2
	.4byte	0x168
	.uleb128 0x2
	.4byte	0x168
	.byte	0
	.uleb128 0x4
	.4byte	0x7f9
	.uleb128 0x5
	.4byte	0x82b
	.4byte	0x82b
	.uleb128 0x2
	.4byte	0x698
	.uleb128 0x2
	.4byte	0x168
	.byte	0
	.uleb128 0x4
	.4byte	0x3de
	.uleb128 0x4
	.4byte	0x817
	.uleb128 0x5
	.4byte	0x849
	.4byte	0x849
	.uleb128 0x2
	.4byte	0x698
	.uleb128 0x2
	.4byte	0x82b
	.byte	0
	.uleb128 0x4
	.4byte	0x3af
	.uleb128 0x4
	.4byte	0x835
	.uleb128 0x5
	.4byte	0x98
	.4byte	0x867
	.uleb128 0x2
	.4byte	0x698
	.uleb128 0x2
	.4byte	0x82b
	.byte	0
	.uleb128 0x4
	.4byte	0x853
	.uleb128 0x11
	.4byte	0x87c
	.uleb128 0x2
	.4byte	0x698
	.uleb128 0x2
	.4byte	0x82b
	.byte	0
	.uleb128 0x4
	.4byte	0x86c
	.uleb128 0x5
	.4byte	0x45
	.4byte	0x895
	.uleb128 0x2
	.4byte	0x698
	.uleb128 0x2
	.4byte	0x82b
	.byte	0
	.uleb128 0x4
	.4byte	0x881
	.uleb128 0x11
	.4byte	0x8af
	.uleb128 0x2
	.4byte	0x698
	.uleb128 0x2
	.4byte	0x82b
	.uleb128 0x2
	.4byte	0x45
	.byte	0
	.uleb128 0x4
	.4byte	0x89a
	.uleb128 0x5
	.4byte	0x98
	.4byte	0x8cd
	.uleb128 0x2
	.4byte	0x698
	.uleb128 0x2
	.4byte	0x168
	.uleb128 0x2
	.4byte	0x8cd
	.byte	0
	.uleb128 0x4
	.4byte	0x2ed
	.uleb128 0x4
	.4byte	0x8b4
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x1c
	.byte	0xd
	.byte	0x29
	.byte	0x10
	.4byte	0x981
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0xd
	.byte	0x2a
	.byte	0xe
	.4byte	0x7e
	.byte	0
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0xd
	.byte	0x2b
	.byte	0xe
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x10
	.string	"len"
	.byte	0xd
	.byte	0x2c
	.byte	0xe
	.4byte	0x7e
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0xd
	.byte	0x2d
	.byte	0xe
	.4byte	0x7e
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0xd
	.byte	0x2e
	.byte	0xe
	.4byte	0x6b
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0xd
	.byte	0x2f
	.byte	0xe
	.4byte	0x6b
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0xd
	.byte	0x30
	.byte	0xd
	.4byte	0x53
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0xd
	.byte	0x31
	.byte	0xd
	.4byte	0x53
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0xd
	.byte	0x32
	.byte	0xd
	.4byte	0x53
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0xd
	.byte	0x33
	.byte	0xd
	.4byte	0x53
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0xd
	.byte	0x34
	.byte	0xd
	.4byte	0x53
	.byte	0x18
	.uleb128 0x10
	.string	"pad"
	.byte	0xd
	.byte	0x35
	.byte	0xd
	.4byte	0x53
	.byte	0x19
	.byte	0
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0xd
	.byte	0x36
	.byte	0x3
	.4byte	0x8d7
	.uleb128 0x15
	.4byte	.LASF136
	.byte	0xd
	.byte	0x39
	.byte	0x1e
	.4byte	0x45f
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.4byte	.LASF126
	.uleb128 0xa
	.byte	0x8
	.byte	0xe
	.byte	0xb
	.4byte	0x9c3
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0xe
	.byte	0xc
	.byte	0xd
	.4byte	0x53
	.byte	0
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0xe
	.byte	0xd
	.byte	0xe
	.4byte	0x7e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0xe
	.byte	0xe
	.byte	0x3
	.4byte	0x9a0
	.uleb128 0xa
	.byte	0x10
	.byte	0xe
	.byte	0x10
	.4byte	0x9ff
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0xe
	.byte	0x11
	.byte	0xd
	.4byte	0x53
	.byte	0
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0xe
	.byte	0x12
	.byte	0x12
	.4byte	0x9c3
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.4byte	0x149
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF133
	.byte	0xe
	.byte	0x14
	.byte	0x3
	.4byte	0x9cf
	.uleb128 0x3
	.4byte	.LASF134
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0x39
	.uleb128 0x3
	.4byte	.LASF135
	.byte	0x2
	.byte	0x41
	.byte	0x12
	.4byte	0x7e
	.uleb128 0x15
	.4byte	.LASF137
	.byte	0x2
	.byte	0x5c
	.byte	0x13
	.4byte	0xa0b
	.uleb128 0x4
	.4byte	0x53
	.uleb128 0x1f
	.4byte	0x98d
	.byte	0x1
	.byte	0xc3
	.byte	0x17
	.uleb128 0x5
	.byte	0x3
	.4byte	spi_ops
	.uleb128 0x8
	.4byte	.LASF138
	.byte	0x54
	.byte	0x5
	.4byte	0x98
	.4byte	0xa61
	.uleb128 0x2
	.4byte	0xa61
	.uleb128 0x2
	.4byte	0x149
	.uleb128 0x2
	.4byte	0x53
	.byte	0
	.uleb128 0x4
	.4byte	0x9ff
	.uleb128 0x8
	.4byte	.LASF139
	.byte	0x53
	.byte	0x5
	.4byte	0x98
	.4byte	0xa80
	.uleb128 0x2
	.4byte	0xa61
	.uleb128 0x2
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF140
	.byte	0x52
	.byte	0x5
	.4byte	0x98
	.4byte	0xa9a
	.uleb128 0x2
	.4byte	0xa61
	.uleb128 0x2
	.4byte	0x98
	.byte	0
	.uleb128 0x20
	.4byte	.LASF159
	.byte	0x10
	.byte	0x9e
	.byte	0x6
	.4byte	0xaad
	.uleb128 0x2
	.4byte	0x168
	.uleb128 0x21
	.byte	0
	.uleb128 0x16
	.4byte	.LASF141
	.2byte	0x54c
	.4byte	0xa17
	.uleb128 0x16
	.4byte	.LASF142
	.2byte	0x55d
	.4byte	0xa17
	.uleb128 0x8
	.4byte	.LASF143
	.byte	0x2a
	.byte	0x9
	.4byte	0x39
	.4byte	0xae7
	.uleb128 0x2
	.4byte	0xa61
	.uleb128 0x2
	.4byte	0xae7
	.uleb128 0x2
	.4byte	0x6b
	.uleb128 0x2
	.4byte	0x7e
	.byte	0
	.uleb128 0x4
	.4byte	0x5f
	.uleb128 0x8
	.4byte	.LASF144
	.byte	0x37
	.byte	0x9
	.4byte	0x39
	.4byte	0xb10
	.uleb128 0x2
	.4byte	0xa61
	.uleb128 0x2
	.4byte	0xa2f
	.uleb128 0x2
	.4byte	0x6b
	.uleb128 0x2
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF145
	.byte	0x50
	.byte	0x9
	.4byte	0x39
	.4byte	0xb25
	.uleb128 0x2
	.4byte	0xa61
	.byte	0
	.uleb128 0x8
	.4byte	.LASF146
	.byte	0x1d
	.byte	0x9
	.4byte	0x39
	.4byte	0xb3a
	.uleb128 0x2
	.4byte	0xa61
	.byte	0
	.uleb128 0xc
	.4byte	.LASF149
	.byte	0x82
	.byte	0x5
	.4byte	0x98
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf1
	.uleb128 0x7
	.string	"fp"
	.byte	0x82
	.byte	0x1b
	.4byte	0x698
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"cmd"
	.byte	0x82
	.byte	0x23
	.4byte	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"arg"
	.byte	0x82
	.byte	0x36
	.4byte	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.string	"ret"
	.byte	0x84
	.4byte	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0x85
	.byte	0x10
	.4byte	0xa61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0x86
	.byte	0x19
	.4byte	0xbf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xe
	.4byte	0xd44
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x98
	.byte	0x53
	.uleb128 0xe
	.4byte	0xd44
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x9f
	.byte	0x5b
	.uleb128 0xe
	.4byte	0xd44
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0xaa
	.byte	0x62
	.uleb128 0xe
	.4byte	0xd44
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0xaf
	.byte	0x55
	.uleb128 0xe
	.4byte	0xd44
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0xb5
	.byte	0x55
	.byte	0
	.uleb128 0x4
	.4byte	0x981
	.uleb128 0xc
	.4byte	.LASF150
	.byte	0x63
	.byte	0x9
	.4byte	0x1f5
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc54
	.uleb128 0x7
	.string	"fp"
	.byte	0x63
	.byte	0x1f
	.4byte	0x698
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"buf"
	.byte	0x63
	.byte	0x2f
	.4byte	0x6ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.4byte	.LASF151
	.byte	0x63
	.byte	0x3b
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.string	"ret"
	.byte	0x65
	.4byte	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0x66
	.byte	0x10
	.4byte	0xa61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF152
	.byte	0x44
	.byte	0x9
	.4byte	0x1f5
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb2
	.uleb128 0x7
	.string	"fp"
	.byte	0x44
	.byte	0x1e
	.4byte	0x698
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"buf"
	.byte	0x44
	.byte	0x28
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.4byte	.LASF151
	.byte	0x44
	.byte	0x34
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.string	"ret"
	.byte	0x46
	.4byte	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0x47
	.byte	0x10
	.4byte	0xa61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF153
	.byte	0x25
	.byte	0x5
	.4byte	0x98
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcf4
	.uleb128 0x7
	.string	"fp"
	.byte	0x25
	.byte	0x1b
	.4byte	0x698
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"ret"
	.byte	0x27
	.4byte	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0x28
	.byte	0x10
	.4byte	0xa61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF154
	.byte	0xb
	.byte	0x5
	.4byte	0x98
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd44
	.uleb128 0x12
	.4byte	.LASF155
	.byte	0xb
	.byte	0x2b
	.4byte	0x648
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"fp"
	.byte	0xb
	.byte	0x3a
	.4byte	0x698
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"ret"
	.byte	0xd
	.4byte	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0xe
	.byte	0x10
	.4byte	0xa61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.4byte	.LASF160
	.byte	0x2
	.byte	0xb3
	.byte	0x3a
	.4byte	0xa0b
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
	.uleb128 0xb
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.sleb128 12
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x18
	.byte	0
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
.LASF139:
	.string	"hal_spi_set_rwspeed"
.LASF73:
	.string	"aos_dirent_t"
.LASF123:
	.string	"rx_nbits"
.LASF107:
	.string	"inode_t"
.LASF147:
	.string	"spi_dev"
.LASF76:
	.string	"aos_dir_t"
.LASF14:
	.string	"unsigned int"
.LASF57:
	.string	"st_blksize"
.LASF106:
	.string	"refs"
.LASF91:
	.string	"opendir"
.LASF116:
	.string	"rx_buf"
.LASF85:
	.string	"sync"
.LASF153:
	.string	"vfs_spi_close"
.LASF29:
	.string	"__nlink_t"
.LASF67:
	.string	"f_ffree"
.LASF103:
	.string	"i_name"
.LASF127:
	.string	"mode"
.LASF136:
	.string	"spi_ops"
.LASF72:
	.string	"d_name"
.LASF143:
	.string	"hal_spi_send"
.LASF25:
	.string	"__ino_t"
.LASF36:
	.string	"ino_t"
.LASF11:
	.string	"uint32_t"
.LASF120:
	.string	"bits_per_word"
.LASF97:
	.string	"telldir"
.LASF102:
	.string	"i_arg"
.LASF149:
	.string	"vfs_spi_ioctl"
.LASF89:
	.string	"unlink"
.LASF13:
	.string	"long long unsigned int"
.LASF58:
	.string	"st_blocks"
.LASF142:
	.string	"xTaskGetTickCountFromISR"
.LASF110:
	.string	"offset"
.LASF109:
	.string	"f_arg"
.LASF159:
	.string	"bl_printk"
.LASF101:
	.string	"i_fops"
.LASF45:
	.string	"stat"
.LASF46:
	.string	"st_dev"
.LASF137:
	.string	"TrapNetCounter"
.LASF33:
	.string	"tv_nsec"
.LASF17:
	.string	"size_t"
.LASF121:
	.string	"cs_change"
.LASF26:
	.string	"__mode_t"
.LASF71:
	.string	"d_type"
.LASF113:
	.string	"_Bool"
.LASF51:
	.string	"st_gid"
.LASF154:
	.string	"vfs_spi_open"
.LASF133:
	.string	"spi_dev_t"
.LASF96:
	.string	"rewinddir"
.LASF48:
	.string	"st_mode"
.LASF94:
	.string	"mkdir"
.LASF111:
	.string	"file_t"
.LASF49:
	.string	"st_nlink"
.LASF128:
	.string	"freq"
.LASF157:
	.string	"inode_ops_t"
.LASF83:
	.string	"ioctl"
.LASF115:
	.string	"tx_buf"
.LASF84:
	.string	"poll"
.LASF132:
	.string	"priv"
.LASF44:
	.string	"timespec"
.LASF30:
	.string	"char"
.LASF34:
	.string	"blkcnt_t"
.LASF112:
	.string	"poll_notify_t"
.LASF80:
	.string	"close"
.LASF152:
	.string	"vfs_spi_read"
.LASF41:
	.string	"ssize_t"
.LASF88:
	.string	"lseek"
.LASF150:
	.string	"vfs_spi_write"
.LASF7:
	.string	"uint8_t"
.LASF105:
	.string	"type"
.LASF31:
	.string	"time_t"
.LASF87:
	.string	"fs_ops"
.LASF60:
	.string	"statfs"
.LASF47:
	.string	"st_ino"
.LASF141:
	.string	"xTaskGetTickCount"
.LASF66:
	.string	"f_files"
.LASF5:
	.string	"long long int"
.LASF82:
	.string	"write"
.LASF61:
	.string	"f_type"
.LASF22:
	.string	"__dev_t"
.LASF134:
	.string	"BaseType_t"
.LASF38:
	.string	"dev_t"
.LASF64:
	.string	"f_bfree"
.LASF122:
	.string	"tx_nbits"
.LASF78:
	.string	"file_ops"
.LASF77:
	.string	"file_ops_t"
.LASF151:
	.string	"nbytes"
.LASF158:
	.string	"pollfd"
.LASF65:
	.string	"f_bavail"
.LASF160:
	.string	"xPortIsInsideInterrupt"
.LASF68:
	.string	"f_fsid"
.LASF59:
	.string	"st_spare4"
.LASF99:
	.string	"access"
.LASF145:
	.string	"hal_spi_finalize"
.LASF135:
	.string	"TickType_t"
.LASF90:
	.string	"rename"
.LASF18:
	.string	"long double"
.LASF24:
	.string	"__gid_t"
.LASF9:
	.string	"uint16_t"
.LASF63:
	.string	"f_blocks"
.LASF146:
	.string	"hal_spi_init"
.LASF40:
	.string	"gid_t"
.LASF16:
	.string	"__int_least64_t"
.LASF100:
	.string	"i_ops"
.LASF39:
	.string	"uid_t"
.LASF131:
	.string	"config"
.LASF95:
	.string	"rmdir"
.LASF93:
	.string	"closedir"
.LASF3:
	.string	"short int"
.LASF55:
	.string	"st_mtim"
.LASF140:
	.string	"hal_spi_set_rwmode"
.LASF104:
	.string	"i_flags"
.LASF4:
	.string	"long int"
.LASF108:
	.string	"node"
.LASF92:
	.string	"readdir"
.LASF119:
	.string	"delay_msecs"
.LASF69:
	.string	"f_namelen"
.LASF20:
	.string	"__blksize_t"
.LASF125:
	.string	"spi_ioc_transfer_t"
.LASF23:
	.string	"__uid_t"
.LASF124:
	.string	"word_delay_usecs"
.LASF54:
	.string	"st_atim"
.LASF81:
	.string	"read"
.LASF74:
	.string	"dd_vfs_fd"
.LASF79:
	.string	"open"
.LASF32:
	.string	"tv_sec"
.LASF117:
	.string	"speed_hz"
.LASF12:
	.string	"long unsigned int"
.LASF138:
	.string	"hal_spi_transfer"
.LASF126:
	.string	"float"
.LASF6:
	.string	"int32_t"
.LASF130:
	.string	"port"
.LASF43:
	.string	"nlink_t"
.LASF62:
	.string	"f_bsize"
.LASF8:
	.string	"unsigned char"
.LASF15:
	.string	"__uint32_t"
.LASF35:
	.string	"blksize_t"
.LASF53:
	.string	"st_size"
.LASF70:
	.string	"d_ino"
.LASF144:
	.string	"hal_spi_recv"
.LASF148:
	.string	"xfer"
.LASF50:
	.string	"st_uid"
.LASF27:
	.string	"__off_t"
.LASF56:
	.string	"st_ctim"
.LASF28:
	.string	"_ssize_t"
.LASF75:
	.string	"dd_rsv"
.LASF2:
	.string	"signed char"
.LASF42:
	.string	"mode_t"
.LASF129:
	.string	"spi_config_t"
.LASF37:
	.string	"off_t"
.LASF10:
	.string	"short unsigned int"
.LASF114:
	.string	"spi_ioc_transfer"
.LASF98:
	.string	"seekdir"
.LASF118:
	.string	"delay_usecs"
.LASF19:
	.string	"__blkcnt_t"
.LASF21:
	.string	"_off_t"
.LASF52:
	.string	"st_rdev"
.LASF156:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF86:
	.string	"fs_ops_t"
.LASF155:
	.string	"inode"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/device/vfs_spi.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/vfs"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
