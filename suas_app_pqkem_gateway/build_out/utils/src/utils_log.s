	.file	"utils_log.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils" "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_log.c"
	.section	.bss.log_buf,"aw",@nobits
	.align	2
	.type	log_buf, @object
	.size	log_buf, 512
log_buf:
	.zero	512
	.section	.rodata
	.align	2
.LC0:
	.string	"%3d "
	.align	2
.LC1:
	.string	"%3u "
	.align	2
.LC2:
	.string	"%02x "
	.align	2
.LC3:
	.string	"\033[36mBUF\033[0m"
	.align	2
.LC4:
	.string	"[%10u][%s: %s:%4d] %.*s\r\n"
	.section	.text.log_buf_out,"ax",@progbits
	.align	1
	.globl	log_buf_out
	.type	log_buf_out, @function
log_buf_out:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_log.c"
	.loc 1 45 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	mv	a5,a4
	sb	a5,-65(s0)
	.loc 1 46 11
	lw	a5,-60(s0)
	sw	a5,-36(s0)
	.loc 1 47 11
	sw	zero,-40(s0)
	.loc 1 49 13
	lui	a5,%hi(log_buf)
	addi	a5,a5,%lo(log_buf)
	sw	a5,-40(s0)
	.loc 1 50 9
	sw	zero,-20(s0)
	.loc 1 50 16
	sw	zero,-44(s0)
	.loc 1 51 9
	sw	zero,-24(s0)
	.loc 1 51 16
	sw	zero,-28(s0)
	.loc 1 51 23
	sw	zero,-32(s0)
	.loc 1 55 9
	li	a5,170
	sw	a5,-32(s0)
	.loc 1 56 8
	lw	a4,-32(s0)
	li	a5,49
	ble	a4,a5,.L2
	.loc 1 56 22 discriminator 1
	lw	a5,-64(s0)
	bgt	a5,zero,.L3
.L2:
	.loc 1 59 16
	li	a5,-1
	j	.L4
.L3:
	.loc 1 62 7
	lw	a5,-64(s0)
	li	a4,1374388224
	addi	a4,a4,1311
	mulh	a4,a5,a4
	srai	a4,a4,4
	srai	a5,a5,31
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 63 7
	lw	a5,-64(s0)
	li	a4,1374388224
	addi	a4,a4,1311
	mulh	a4,a5,a4
	srai	a3,a4,4
	srai	a4,a5,31
	sub	a3,a3,a4
	li	a4,50
	mul	a4,a3,a4
	sub	a5,a5,a4
	sw	a5,-44(s0)
	.loc 1 64 8
	lw	a5,-44(s0)
	ble	a5,zero,.L5
	.loc 1 65 10
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L5:
	.loc 1 69 8
	lw	a5,-44(s0)
	ble	a5,zero,.L6
	.loc 1 71 16
	sw	zero,-28(s0)
	.loc 1 71 9
	j	.L7
.L28:
	.loc 1 72 19
	lw	a5,-28(s0)
	addi	a5,a5,1
	.loc 1 72 16
	lw	a4,-20(s0)
	bne	a4,a5,.L8
	.loc 1 74 21
	sw	zero,-32(s0)
	.loc 1 75 24
	sw	zero,-24(s0)
	.loc 1 75 17
	j	.L9
.L14:
	.loc 1 76 21
	lbu	a5,-65(s0)
	li	a4,1
	beq	a5,a4,.L10
	li	a4,2
	beq	a5,a4,.L11
	j	.L41
.L10:
	.loc 1 79 36
	lw	a5,-32(s0)
	.loc 1 79 52
	lw	a4,-40(s0)
	add	a3,a4,a5
	.loc 1 79 80
	lw	a4,-28(s0)
	li	a5,50
	mul	a4,a4,a5
	.loc 1 79 85
	lw	a5,-24(s0)
	add	a5,a4,a5
	mv	a4,a5
	.loc 1 79 78
	lw	a5,-36(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	.loc 1 79 67
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 1 79 36
	mv	a2,a5
	lui	a5,%hi(.LC0)
	addi	a1,a5,%lo(.LC0)
	mv	a0,a3
	call	sprintf
	mv	a4,a0
	.loc 1 79 33 discriminator 1
	lw	a5,-32(s0)
	add	a5,a5,a4
	sw	a5,-32(s0)
	.loc 1 81 25
	j	.L13
.L11:
	.loc 1 84 36
	lw	a5,-32(s0)
	.loc 1 84 52
	lw	a4,-40(s0)
	add	a3,a4,a5
	.loc 1 84 81
	lw	a4,-28(s0)
	li	a5,50
	mul	a4,a4,a5
	.loc 1 84 86
	lw	a5,-24(s0)
	add	a5,a4,a5
	mv	a4,a5
	.loc 1 84 79
	lw	a5,-36(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	.loc 1 84 36
	mv	a2,a5
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	mv	a0,a3
	call	sprintf
	mv	a4,a0
	.loc 1 84 33 discriminator 1
	lw	a5,-32(s0)
	add	a5,a5,a4
	sw	a5,-32(s0)
	.loc 1 86 25
	j	.L13
.L41:
	.loc 1 90 36
	lw	a5,-32(s0)
	.loc 1 90 52
	lw	a4,-40(s0)
	add	a3,a4,a5
	.loc 1 90 82
	lw	a4,-28(s0)
	li	a5,50
	mul	a4,a4,a5
	.loc 1 90 87
	lw	a5,-24(s0)
	add	a5,a4,a5
	mv	a4,a5
	.loc 1 90 80
	lw	a5,-36(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	.loc 1 90 36
	mv	a2,a5
	lui	a5,%hi(.LC2)
	addi	a1,a5,%lo(.LC2)
	mv	a0,a3
	call	sprintf
	mv	a4,a0
	.loc 1 90 33 discriminator 1
	lw	a5,-32(s0)
	add	a5,a5,a4
	sw	a5,-32(s0)
.L13:
	.loc 1 75 37 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L9:
	.loc 1 75 31 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-44(s0)
	blt	a4,a5,.L14
.LBB8:
.LBB9:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE9:
.LBE8:
	.loc 1 94 24 discriminator 1
	beq	a5,zero,.L16
	.loc 1 94 96 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L17
.L16:
	.loc 1 94 125 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L17:
	.loc 1 94 24 discriminator 7
	lw	a6,-40(s0)
	lw	a5,-32(s0)
	lw	a4,-56(s0)
	lw	a3,-52(s0)
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	bl_printk
	j	.L18
.L8:
	.loc 1 96 21
	sw	zero,-32(s0)
	.loc 1 97 24
	sw	zero,-24(s0)
	.loc 1 97 17
	j	.L19
.L24:
	.loc 1 98 21
	lbu	a5,-65(s0)
	li	a4,1
	beq	a5,a4,.L20
	li	a4,2
	beq	a5,a4,.L21
	j	.L42
.L20:
	.loc 1 101 36
	lw	a5,-32(s0)
	.loc 1 101 52
	lw	a4,-40(s0)
	add	a3,a4,a5
	.loc 1 101 80
	lw	a4,-28(s0)
	li	a5,50
	mul	a4,a4,a5
	.loc 1 101 85
	lw	a5,-24(s0)
	add	a5,a4,a5
	mv	a4,a5
	.loc 1 101 78
	lw	a5,-36(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	.loc 1 101 67
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 1 101 36
	mv	a2,a5
	lui	a5,%hi(.LC0)
	addi	a1,a5,%lo(.LC0)
	mv	a0,a3
	call	sprintf
	mv	a4,a0
	.loc 1 101 33 discriminator 1
	lw	a5,-32(s0)
	add	a5,a5,a4
	sw	a5,-32(s0)
	.loc 1 103 25
	j	.L23
.L21:
	.loc 1 106 36
	lw	a5,-32(s0)
	.loc 1 106 52
	lw	a4,-40(s0)
	add	a3,a4,a5
	.loc 1 106 81
	lw	a4,-28(s0)
	li	a5,50
	mul	a4,a4,a5
	.loc 1 106 86
	lw	a5,-24(s0)
	add	a5,a4,a5
	mv	a4,a5
	.loc 1 106 79
	lw	a5,-36(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	.loc 1 106 36
	mv	a2,a5
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	mv	a0,a3
	call	sprintf
	mv	a4,a0
	.loc 1 106 33 discriminator 1
	lw	a5,-32(s0)
	add	a5,a5,a4
	sw	a5,-32(s0)
	.loc 1 108 25
	j	.L23
.L42:
	.loc 1 112 36
	lw	a5,-32(s0)
	.loc 1 112 52
	lw	a4,-40(s0)
	add	a3,a4,a5
	.loc 1 112 82
	lw	a4,-28(s0)
	li	a5,50
	mul	a4,a4,a5
	.loc 1 112 87
	lw	a5,-24(s0)
	add	a5,a4,a5
	mv	a4,a5
	.loc 1 112 80
	lw	a5,-36(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	.loc 1 112 36
	mv	a2,a5
	lui	a5,%hi(.LC2)
	addi	a1,a5,%lo(.LC2)
	mv	a0,a3
	call	sprintf
	mv	a4,a0
	.loc 1 112 33 discriminator 1
	lw	a5,-32(s0)
	add	a5,a5,a4
	sw	a5,-32(s0)
.L23:
	.loc 1 97 40 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L19:
	.loc 1 97 31 discriminator 1
	lw	a4,-24(s0)
	li	a5,49
	ble	a4,a5,.L24
.LBB10:
.LBB11:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE11:
.LBE10:
	.loc 1 116 24 discriminator 1
	beq	a5,zero,.L26
	.loc 1 116 96 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L27
.L26:
	.loc 1 116 125 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L27:
	.loc 1 116 24 discriminator 7
	lw	a6,-40(s0)
	lw	a5,-32(s0)
	lw	a4,-56(s0)
	lw	a3,-52(s0)
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	bl_printk
.L18:
	.loc 1 71 29 discriminator 2
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L7:
	.loc 1 71 23 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	blt	a4,a5,.L28
	j	.L29
.L6:
	.loc 1 121 16
	sw	zero,-28(s0)
	.loc 1 121 9
	j	.L30
.L40:
	.loc 1 122 17
	sw	zero,-32(s0)
	.loc 1 123 20
	sw	zero,-24(s0)
	.loc 1 123 13
	j	.L31
.L36:
	.loc 1 124 17
	lbu	a5,-65(s0)
	li	a4,1
	beq	a5,a4,.L32
	li	a4,2
	beq	a5,a4,.L33
	j	.L43
.L32:
	.loc 1 127 32
	lw	a5,-32(s0)
	.loc 1 127 48
	lw	a4,-40(s0)
	add	a3,a4,a5
	.loc 1 127 76
	lw	a4,-28(s0)
	li	a5,50
	mul	a4,a4,a5
	.loc 1 127 81
	lw	a5,-24(s0)
	add	a5,a4,a5
	mv	a4,a5
	.loc 1 127 74
	lw	a5,-36(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	.loc 1 127 63
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 1 127 32
	mv	a2,a5
	lui	a5,%hi(.LC0)
	addi	a1,a5,%lo(.LC0)
	mv	a0,a3
	call	sprintf
	mv	a4,a0
	.loc 1 127 29 discriminator 1
	lw	a5,-32(s0)
	add	a5,a5,a4
	sw	a5,-32(s0)
	.loc 1 129 21
	j	.L35
.L33:
	.loc 1 132 32
	lw	a5,-32(s0)
	.loc 1 132 48
	lw	a4,-40(s0)
	add	a3,a4,a5
	.loc 1 132 77
	lw	a4,-28(s0)
	li	a5,50
	mul	a4,a4,a5
	.loc 1 132 82
	lw	a5,-24(s0)
	add	a5,a4,a5
	mv	a4,a5
	.loc 1 132 75
	lw	a5,-36(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	.loc 1 132 32
	mv	a2,a5
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	mv	a0,a3
	call	sprintf
	mv	a4,a0
	.loc 1 132 29 discriminator 1
	lw	a5,-32(s0)
	add	a5,a5,a4
	sw	a5,-32(s0)
	.loc 1 134 21
	j	.L35
.L43:
	.loc 1 138 32
	lw	a5,-32(s0)
	.loc 1 138 48
	lw	a4,-40(s0)
	add	a3,a4,a5
	.loc 1 138 78
	lw	a4,-28(s0)
	li	a5,50
	mul	a4,a4,a5
	.loc 1 138 83
	lw	a5,-24(s0)
	add	a5,a4,a5
	mv	a4,a5
	.loc 1 138 76
	lw	a5,-36(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	.loc 1 138 32
	mv	a2,a5
	lui	a5,%hi(.LC2)
	addi	a1,a5,%lo(.LC2)
	mv	a0,a3
	call	sprintf
	mv	a4,a0
	.loc 1 138 29 discriminator 1
	lw	a5,-32(s0)
	add	a5,a5,a4
	sw	a5,-32(s0)
.L35:
	.loc 1 123 36 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L31:
	.loc 1 123 27 discriminator 1
	lw	a4,-24(s0)
	li	a5,49
	ble	a4,a5,.L36
.LBB12:
.LBB13:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE13:
.LBE12:
	.loc 1 142 20 discriminator 1
	beq	a5,zero,.L38
	.loc 1 142 92 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L39
.L38:
	.loc 1 142 121 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L39:
	.loc 1 142 20 discriminator 7
	lw	a6,-40(s0)
	lw	a5,-32(s0)
	lw	a4,-56(s0)
	lw	a3,-52(s0)
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	bl_printk
	.loc 1 121 29 discriminator 2
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L30:
	.loc 1 121 23 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	blt	a4,a5,.L40
.L29:
	.loc 1 148 12
	li	a5,0
.L4:
	.loc 1 149 1
	mv	a0,a5
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	log_buf_out, .-log_buf_out
	.section	.text.bl_printk,"ax",@progbits
	.align	1
	.globl	bl_printk
	.type	bl_printk, @function
bl_printk:
.LFB6:
	.loc 1 156 1
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
	.loc 1 159 9
	lui	a5,%hi(sys_log_all_enable)
	lbu	a5,%lo(sys_log_all_enable)(a5)
	andi	a5,a5,0xff
	.loc 1 159 8
	beq	a5,zero,.L46
	.loc 1 161 8
	addi	a5,s0,32
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	addi	a5,a5,-28
	sw	a5,-20(s0)
	.loc 1 164 9
	lw	a5,-20(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	vprint
.L46:
	.loc 1 168 1
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
.LFE6:
	.size	bl_printk, .-bl_printk
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdarg.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_log.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2ed
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x28
	.byte	0x1b
	.4byte	0x84
	.uleb128 0x10
	.byte	0x4
	.4byte	.LASF39
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2e
	.byte	0x18
	.4byte	0x78
	.uleb128 0x6
	.4byte	0xa0
	.uleb128 0xa
	.4byte	0x96
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x11
	.4byte	0xa0
	.uleb128 0x6
	.4byte	0xa7
	.uleb128 0xa
	.4byte	0xac
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x5
	.byte	0x22
	.byte	0x15
	.4byte	0x2b
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x5
	.byte	0x28
	.byte	0x12
	.4byte	0x47
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0xc2
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x2
	.byte	0x41
	.byte	0x12
	.4byte	0xda
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x2
	.byte	0x5c
	.byte	0x13
	.4byte	0xe6
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x6
	.byte	0x55
	.byte	0xe
	.4byte	0x12f
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x6
	.byte	0x59
	.byte	0x3
	.4byte	0x10a
	.uleb128 0x13
	.4byte	0xa0
	.4byte	0x14c
	.uleb128 0x14
	.4byte	0x6a
	.2byte	0x1ff
	.byte	0
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x2b
	.byte	0xd
	.4byte	0x13b
	.uleb128 0x5
	.byte	0x3
	.4byte	log_buf
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0x99
	.byte	0x16
	.4byte	0x170
	.uleb128 0x1
	.byte	0x1
	.byte	0x2
	.4byte	.LASF27
	.uleb128 0x15
	.4byte	0x169
	.uleb128 0x16
	.4byte	.LASF41
	.byte	0x1
	.byte	0x97
	.byte	0xd
	.4byte	0x18c
	.uleb128 0x5
	.4byte	0xac
	.uleb128 0x5
	.4byte	0x8a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF28
	.2byte	0x54c
	.4byte	0xf2
	.uleb128 0xc
	.4byte	.LASF29
	.2byte	0x55d
	.4byte	0xf2
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x4
	.byte	0xfa
	.byte	0x5
	.4byte	0x63
	.4byte	0x1be
	.uleb128 0x5
	.4byte	0x9b
	.uleb128 0x5
	.4byte	0xb1
	.uleb128 0xd
	.byte	0
	.uleb128 0x18
	.4byte	.LASF43
	.byte	0x1
	.byte	0x9b
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f3
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x9b
	.byte	0x1c
	.4byte	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xd
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x9d
	.byte	0xd
	.4byte	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x19
	.4byte	.LASF44
	.byte	0x1
	.byte	0x2c
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2dd
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x2c
	.byte	0x1d
	.4byte	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x2c
	.byte	0x27
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x2c
	.byte	0x39
	.4byte	0x2dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.byte	0x2c
	.byte	0x44
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x2c
	.byte	0x61
	.4byte	0x12f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x3
	.string	"buf"
	.byte	0x2e
	.byte	0xb
	.4byte	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x2f
	.byte	0xb
	.4byte	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"m"
	.byte	0x32
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"n"
	.byte	0x32
	.byte	0x10
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"j"
	.byte	0x33
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"k"
	.byte	0x33
	.byte	0x10
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.string	"tmp"
	.byte	0x33
	.byte	0x17
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.4byte	0x2e3
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x5e
	.byte	0x45
	.uleb128 0x9
	.4byte	0x2e3
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x74
	.byte	0x45
	.uleb128 0x9
	.4byte	0x2e3
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x8e
	.byte	0x41
	.byte	0
	.uleb128 0x6
	.4byte	0x2e2
	.uleb128 0x1b
	.uleb128 0x1c
	.4byte	.LASF45
	.byte	0x2
	.byte	0xb3
	.byte	0x3a
	.4byte	0xe6
	.byte	0x3
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.4byte	0x24
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"TickType_t"
.LASF39:
	.string	"__builtin_va_list"
.LASF5:
	.string	"short unsigned int"
.LASF24:
	.string	"LOG_BUF_OUT_DATA_TYPE_T"
.LASF15:
	.string	"int8_t"
.LASF22:
	.string	"LOG_BUF_OUT_DATA_TYPE_INT8"
.LASF33:
	.string	"file"
.LASF3:
	.string	"unsigned char"
.LASF43:
	.string	"bl_printk"
.LASF26:
	.string	"sys_log_all_enable"
.LASF44:
	.string	"log_buf_out"
.LASF7:
	.string	"long unsigned int"
.LASF35:
	.string	"inbuf"
.LASF37:
	.string	"pbuffer"
.LASF13:
	.string	"va_list"
.LASF25:
	.string	"TrapNetCounter"
.LASF41:
	.string	"vprint"
.LASF12:
	.string	"__gnuc_va_list"
.LASF30:
	.string	"log_buf"
.LASF38:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF32:
	.string	"format"
.LASF10:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF17:
	.string	"uint8_t"
.LASF34:
	.string	"line"
.LASF45:
	.string	"xPortIsInsideInterrupt"
.LASF16:
	.string	"int32_t"
.LASF8:
	.string	"long long int"
.LASF21:
	.string	"LOG_BUF_OUT_DATA_TYPE_HEX"
.LASF14:
	.string	"char"
.LASF29:
	.string	"xTaskGetTickCountFromISR"
.LASF40:
	.string	"LOG_BUF_OUT_DATA_TYPE"
.LASF28:
	.string	"xTaskGetTickCount"
.LASF36:
	.string	"type"
.LASF4:
	.string	"short int"
.LASF31:
	.string	"args"
.LASF23:
	.string	"LOG_BUF_OUT_DATA_TYPE_UNT8"
.LASF18:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF11:
	.string	"long double"
.LASF2:
	.string	"signed char"
.LASF27:
	.string	"_Bool"
.LASF42:
	.string	"sprintf"
.LASF19:
	.string	"BaseType_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_log.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
