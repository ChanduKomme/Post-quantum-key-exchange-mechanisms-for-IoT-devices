	.file	"bl_mtd.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blmtd" "/home/chandu/sdk/bl602_iot_sdk/components/sys/blmtd/bl_mtd.c"
	.section	.rodata
	.align	2
.LC0:
	.string	"[MTD] >>>>>> Hanlde info Dump >>>>>>\r\n"
	.align	2
.LC1:
	.string	"      name %s\r\n"
	.align	2
.LC2:
	.string	"      id %d\r\n"
	.align	2
.LC3:
	.string	"      offset %p(%u)\r\n"
	.align	2
.LC4:
	.string	"      size %p(%uKbytes)\r\n"
	.align	2
.LC5:
	.string	"      xip_addr %p\r\n"
	.align	2
.LC6:
	.string	"[MTD] <<<<<< Hanlde info End <<<<<<\r\n"
	.section	.text.__dump_mtd_handle,"ax",@progbits
	.align	1
	.type	__dump_mtd_handle, @function
__dump_mtd_handle:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/sys/blmtd/bl_mtd.c"
	.loc 1 50 1
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
	.loc 1 51 5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	puts
	.loc 1 52 43
	lw	a5,-20(s0)
	.loc 1 52 5
	mv	a1,a5
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	.loc 1 53 5
	lw	a5,-20(s0)
	lw	a5,16(a5)
	mv	a1,a5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	.loc 1 54 56
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 54 5
	mv	a4,a5
	lw	a5,-20(s0)
	lw	a5,20(a5)
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	.loc 1 55 60
	lw	a5,-20(s0)
	lw	a5,24(a5)
	.loc 1 55 5
	mv	a4,a5
	.loc 1 55 78
	lw	a5,-20(s0)
	lw	a5,24(a5)
	.loc 1 55 5
	srli	a5,a5,10
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
	.loc 1 56 5
	lw	a5,-20(s0)
	lw	a5,28(a5)
	mv	a1,a5
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	printf
	.loc 1 57 5
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	puts
	.loc 1 58 1
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
.LFE5:
	.size	__dump_mtd_handle, .-__dump_mtd_handle
	.section	.text._mtd_write_copy2ram,"ax",@progbits
	.align	1
	.type	_mtd_write_copy2ram, @function
_mtd_write_copy2ram:
.LFB6:
	.loc 1 61 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	a0,-100(s0)
	sw	a1,-104(s0)
	sw	a2,-108(s0)
	.loc 1 65 11
	j	.L3
.L6:
	.loc 1 66 12
	lw	a4,-108(s0)
	li	a5,63
	bleu	a4,a5,.L4
	.loc 1 67 21
	li	a5,64
	sw	a5,-20(s0)
	j	.L5
.L4:
	.loc 1 69 21
	lw	a5,-108(s0)
	sw	a5,-20(s0)
.L5:
	.loc 1 72 9
	addi	a5,s0,-84
	lw	a2,-20(s0)
	lw	a1,-104(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 73 9
	lw	a4,-20(s0)
	addi	a5,s0,-84
	mv	a2,a4
	mv	a1,a5
	lw	a0,-100(s0)
	call	bl_flash_write
	.loc 1 75 14
	lw	a4,-100(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-100(s0)
	.loc 1 76 13
	lw	a4,-104(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-104(s0)
	.loc 1 77 13
	lw	a4,-108(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-108(s0)
.L3:
	.loc 1 65 16
	lw	a5,-108(s0)
	bne	a5,zero,.L6
	.loc 1 80 12
	li	a5,0
	.loc 1 81 1
	mv	a0,a5
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	_mtd_write_copy2ram, .-_mtd_write_copy2ram
	.section	.text._mtd_write,"ax",@progbits
	.align	1
	.type	_mtd_write, @function
_mtd_write:
.LFB7:
	.loc 1 84 1
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
	.loc 1 85 5
	lw	a5,-28(s0)
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	bl_flash_write
	.loc 1 86 12
	li	a5,0
	.loc 1 87 1
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
.LFE7:
	.size	_mtd_write, .-_mtd_write
	.section	.rodata
	.align	2
.LC7:
	.string	"[MTD] [PART] [XIP] error when get %s partition %d\r\n"
	.align	2
.LC8:
	.string	"[MTD] [PART] [XIP] Dead Loop. Reason: no Valid %s partition found\r\n"
	.section	.text.bl_mtd_open,"ax",@progbits
	.align	1
	.globl	bl_mtd_open
	.type	bl_mtd_open, @function
bl_mtd_open:
.LFB8:
	.loc 1 90 1
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
	.loc 1 91 14
	sw	zero,-28(s0)
	.loc 1 92 14
	sw	zero,-32(s0)
	.loc 1 96 40
	li	a0,32
	call	pvPortMalloc
	sw	a0,-20(s0)
	.loc 1 98 8
	lw	a5,-20(s0)
	bne	a5,zero,.L11
	.loc 1 99 16
	li	a5,-1
	j	.L31
.L11:
	.loc 1 101 5
	li	a2,32
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 1 102 23
	lw	a5,-20(s0)
	.loc 1 102 5
	li	a2,16
	lw	a1,-36(s0)
	mv	a0,a5
	call	strncpy
	.loc 1 104 15
	lw	a5,-44(s0)
	andi	a5,a5,1
	.loc 1 104 8
	beq	a5,zero,.L13
	.loc 1 106 19
	lw	a5,-44(s0)
	andi	a5,a5,2
	.loc 1 106 12
	beq	a5,zero,.L14
	.loc 1 107 24
	addi	a4,s0,-32
	addi	a5,s0,-28
	mv	a2,a4
	mv	a1,a5
	lw	a0,-36(s0)
	call	hal_boot2_partition_bus_addr_inactive
	sw	a0,-24(s0)
	.loc 1 107 16 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L15
	.loc 1 107 88 discriminator 2
	lw	a5,-28(s0)
	.loc 1 107 83 discriminator 2
	bne	a5,zero,.L16
.L15:
	.loc 1 108 17
	lw	a2,-24(s0)
	lw	a1,-36(s0)
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
	.loc 1 109 17
	lw	a1,-36(s0)
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	printf
.L17:
	.loc 1 110 23
	nop
	j	.L17
.L16:
	.loc 1 113 36
	lw	a5,-28(s0)
	mv	a4,a5
	.loc 1 113 34
	lw	a5,-20(s0)
	sw	a4,28(a5)
	j	.L18
.L14:
	.loc 1 115 34
	lw	a5,-20(s0)
	sw	zero,28(a5)
.L18:
	.loc 1 117 20
	addi	a4,s0,-32
	addi	a5,s0,-28
	mv	a2,a4
	mv	a1,a5
	lw	a0,-36(s0)
	call	hal_boot2_partition_addr_inactive
	sw	a0,-24(s0)
	.loc 1 117 12 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L19
	.loc 1 117 80 discriminator 2
	lw	a5,-28(s0)
	.loc 1 117 75 discriminator 2
	bne	a5,zero,.L20
.L19:
	.loc 1 118 13
	lw	a2,-24(s0)
	lw	a1,-36(s0)
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
	.loc 1 119 13
	lw	a1,-36(s0)
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	printf
.L21:
	.loc 1 120 19
	nop
	j	.L21
.L20:
	.loc 1 123 28
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	sw	a4,20(a5)
	.loc 1 124 26
	lw	a4,-32(s0)
	lw	a5,-20(s0)
	sw	a4,24(a5)
	j	.L22
.L13:
	.loc 1 127 19
	lw	a5,-44(s0)
	andi	a5,a5,2
	.loc 1 127 12
	beq	a5,zero,.L23
	.loc 1 128 24
	addi	a4,s0,-32
	addi	a5,s0,-28
	mv	a2,a4
	mv	a1,a5
	lw	a0,-36(s0)
	call	hal_boot2_partition_bus_addr_active
	sw	a0,-24(s0)
	.loc 1 128 16 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L24
	.loc 1 128 86 discriminator 2
	lw	a5,-28(s0)
	.loc 1 128 81 discriminator 2
	bne	a5,zero,.L25
.L24:
	.loc 1 129 17
	lw	a2,-24(s0)
	lw	a1,-36(s0)
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
	.loc 1 130 17
	lw	a1,-36(s0)
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	printf
.L26:
	.loc 1 131 23
	nop
	j	.L26
.L25:
	.loc 1 134 36
	lw	a5,-28(s0)
	mv	a4,a5
	.loc 1 134 34
	lw	a5,-20(s0)
	sw	a4,28(a5)
	j	.L27
.L23:
	.loc 1 136 34
	lw	a5,-20(s0)
	sw	zero,28(a5)
.L27:
	.loc 1 138 20
	addi	a4,s0,-32
	addi	a5,s0,-28
	mv	a2,a4
	mv	a1,a5
	lw	a0,-36(s0)
	call	hal_boot2_partition_addr_active
	sw	a0,-24(s0)
	.loc 1 138 12 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L28
	.loc 1 138 78 discriminator 2
	lw	a5,-28(s0)
	.loc 1 138 73 discriminator 2
	bne	a5,zero,.L29
.L28:
	.loc 1 139 13
	lw	a2,-24(s0)
	lw	a1,-36(s0)
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
	.loc 1 140 13
	lw	a1,-36(s0)
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	printf
.L30:
	.loc 1 141 19
	nop
	j	.L30
.L29:
	.loc 1 144 28
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	sw	a4,20(a5)
	.loc 1 145 26
	lw	a4,-32(s0)
	lw	a5,-20(s0)
	sw	a4,24(a5)
.L22:
	.loc 1 147 5
	lw	a0,-20(s0)
	call	__dump_mtd_handle
	.loc 1 148 13
	lw	a5,-40(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 150 12
	li	a5,0
.L31:
	.loc 1 151 1
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
	.size	bl_mtd_open, .-bl_mtd_open
	.section	.text.bl_mtd_close,"ax",@progbits
	.align	1
	.globl	bl_mtd_close
	.type	bl_mtd_close, @function
bl_mtd_close:
.LFB9:
	.loc 1 154 1
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
	.loc 1 155 5
	lw	a0,-20(s0)
	call	vPortFree
	.loc 1 157 12
	li	a5,0
	.loc 1 158 1
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
.LFE9:
	.size	bl_mtd_close, .-bl_mtd_close
	.section	.text.bl_mtd_info,"ax",@progbits
	.align	1
	.globl	bl_mtd_info
	.type	bl_mtd_info, @function
bl_mtd_info:
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
	.loc 1 162 26
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 164 16
	lw	a5,-40(s0)
	.loc 1 164 34
	lw	a4,-20(s0)
	.loc 1 164 5
	mv	a1,a4
	mv	a0,a5
	call	strcpy
	.loc 1 165 30
	lw	a5,-20(s0)
	lw	a4,20(a5)
	.loc 1 165 18
	lw	a5,-40(s0)
	sw	a4,16(a5)
	.loc 1 166 28
	lw	a5,-20(s0)
	lw	a4,24(a5)
	.loc 1 166 16
	lw	a5,-40(s0)
	sw	a4,20(a5)
	.loc 1 167 32
	lw	a5,-20(s0)
	lw	a4,28(a5)
	.loc 1 167 20
	lw	a5,-40(s0)
	sw	a4,24(a5)
	.loc 1 169 12
	li	a5,0
	.loc 1 170 1
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
	.size	bl_mtd_info, .-bl_mtd_info
	.section	.text.bl_mtd_erase,"ax",@progbits
	.align	1
	.globl	bl_mtd_erase
	.type	bl_mtd_erase, @function
bl_mtd_erase:
.LFB11:
	.loc 1 173 1
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
	.loc 1 174 26
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 177 23
	lw	a5,-20(s0)
	lw	a4,20(a5)
	.loc 1 177 32
	lw	a5,-40(s0)
	add	a5,a4,a5
	.loc 1 176 5
	lw	a4,-44(s0)
	mv	a1,a4
	mv	a0,a5
	call	bl_flash_erase
	.loc 1 180 12
	li	a5,0
	.loc 1 181 1
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
.LFE11:
	.size	bl_mtd_erase, .-bl_mtd_erase
	.section	.text.bl_mtd_erase_all,"ax",@progbits
	.align	1
	.globl	bl_mtd_erase_all
	.type	bl_mtd_erase_all, @function
bl_mtd_erase_all:
.LFB12:
	.loc 1 184 1
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
	.loc 1 185 26
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 188 32
	lw	a5,-20(s0)
	lw	a4,20(a5)
	.loc 1 189 23
	lw	a5,-20(s0)
	lw	a5,24(a5)
	.loc 1 187 5
	mv	a1,a5
	mv	a0,a4
	call	bl_flash_erase
	.loc 1 192 12
	li	a5,0
	.loc 1 193 1
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
.LFE12:
	.size	bl_mtd_erase_all, .-bl_mtd_erase_all
	.section	.rodata
	.align	2
.LC9:
	.string	"bl_mtd.c"
	.align	2
.LC10:
	.string	"\033[33mWARN  \033[0m"
	.align	2
.LC11:
	.string	"[%10u][%s: %s:%4d] addr@%p is xip flash, size %d\r\n"
	.section	.text.bl_mtd_write,"ax",@progbits
	.align	1
	.globl	bl_mtd_write
	.type	bl_mtd_write, @function
bl_mtd_write:
.LFB13:
	.loc 1 196 1
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
	sw	a3,-48(s0)
	.loc 1 197 26
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 198 36
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 198 14
	lw	a4,-40(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 200 9
	lw	a5,-48(s0)
	mv	a0,a5
	call	bl_sys_isxipaddr
	mv	a5,a0
	.loc 1 200 8 discriminator 1
	beq	a5,zero,.L41
.LBB4:
.LBB5:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE5:
.LBE4:
	.loc 1 201 16 discriminator 1
	beq	a5,zero,.L43
	.loc 1 201 113 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L44
.L43:
	.loc 1 201 142 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L44:
	.loc 1 201 16 discriminator 7
	lw	a6,-44(s0)
	lw	a5,-48(s0)
	li	a4,201
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC10)
	addi	a2,a2,%lo(.LC10)
	lui	a0,%hi(.LC11)
	addi	a0,a0,%lo(.LC11)
	call	bl_printk
	.loc 1 202 9
	lw	a2,-44(s0)
	lw	a1,-48(s0)
	lw	a0,-24(s0)
	call	_mtd_write_copy2ram
	j	.L45
.L41:
	.loc 1 204 9
	lw	a2,-44(s0)
	lw	a1,-48(s0)
	lw	a0,-24(s0)
	call	_mtd_write
.L45:
	.loc 1 207 12
	li	a5,0
	.loc 1 208 1
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
.LFE13:
	.size	bl_mtd_write, .-bl_mtd_write
	.section	.text.bl_mtd_read,"ax",@progbits
	.align	1
	.globl	bl_mtd_read
	.type	bl_mtd_read, @function
bl_mtd_read:
.LFB14:
	.loc 1 211 1
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
	sw	a3,-48(s0)
	.loc 1 212 26
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 215 23
	lw	a5,-20(s0)
	lw	a4,20(a5)
	.loc 1 215 32
	lw	a5,-40(s0)
	add	a5,a4,a5
	.loc 1 214 5
	lw	a4,-44(s0)
	mv	a2,a4
	lw	a1,-48(s0)
	mv	a0,a5
	call	bl_flash_read
	.loc 1 220 12
	li	a5,0
	.loc 1 221 1
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
.LFE14:
	.size	bl_mtd_read, .-bl_mtd_read
	.section	.text.bl_mtd_size,"ax",@progbits
	.align	1
	.globl	bl_mtd_size
	.type	bl_mtd_size, @function
bl_mtd_size:
.LFB15:
	.loc 1 224 1
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
	.loc 1 225 26
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 226 8
	lw	a5,-36(s0)
	bne	a5,zero,.L50
	.loc 1 227 16
	li	a5,-1
	j	.L51
.L50:
	.loc 1 229 23
	lw	a5,-20(s0)
	lw	a4,24(a5)
	.loc 1 229 11
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 231 12
	li	a5,0
.L51:
	.loc 1 232 1
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
.LFE15:
	.size	bl_mtd_size, .-bl_mtd_size
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/sys/blmtd/include/bl_mtd.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_flash.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_sys.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_log.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_boot2.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x740
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x15
	.byte	0x4
	.uleb128 0xa
	.4byte	0x84
	.uleb128 0x6
	.4byte	0x95
	.uleb128 0xa
	.4byte	0x8b
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xc
	.4byte	0x95
	.uleb128 0x6
	.4byte	0x9c
	.uleb128 0xa
	.4byte	0xa1
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x6f
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x5a
	.uleb128 0xc
	.4byte	0xb7
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0xab
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x2
	.byte	0x41
	.byte	0x12
	.4byte	0xc8
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x2
	.byte	0x5c
	.byte	0x13
	.4byte	0xd4
	.uleb128 0x6
	.4byte	0xb7
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x22
	.byte	0xf
	.4byte	0x84
	.uleb128 0x17
	.byte	0x1c
	.byte	0x5
	.byte	0x23
	.byte	0x9
	.4byte	0x147
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x5
	.byte	0x24
	.byte	0xa
	.4byte	0x147
	.byte	0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x5
	.byte	0x25
	.byte	0x12
	.4byte	0x3e
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x5
	.byte	0x26
	.byte	0x12
	.4byte	0x3e
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x5
	.byte	0x27
	.byte	0xb
	.4byte	0x84
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	0x95
	.4byte	0x157
	.uleb128 0xe
	.4byte	0x3e
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x5
	.byte	0x28
	.byte	0x3
	.4byte	0x109
	.uleb128 0x18
	.4byte	.LASF66
	.byte	0x20
	.byte	0x1
	.byte	0x28
	.byte	0x8
	.4byte	0x1b1
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x29
	.byte	0xa
	.4byte	0x147
	.byte	0
	.uleb128 0x19
	.string	"id"
	.byte	0x1
	.byte	0x2a
	.byte	0x9
	.4byte	0x2b
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2b
	.byte	0x12
	.4byte	0x3e
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2c
	.byte	0x12
	.4byte	0x3e
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x2d
	.byte	0xb
	.4byte	0x84
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x1
	.byte	0x2f
	.byte	0x24
	.4byte	0x1bd
	.uleb128 0x6
	.4byte	0x163
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0x22
	.byte	0x5
	.4byte	0x2b
	.4byte	0x1e2
	.uleb128 0x1
	.4byte	0xc8
	.uleb128 0x1
	.4byte	0xf8
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0xa
	.byte	0x9e
	.4byte	0x1f4
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.4byte	.LASF26
	.2byte	0x54c
	.4byte	0xe0
	.uleb128 0x11
	.4byte	.LASF27
	.2byte	0x55d
	.4byte	0xe0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x8
	.byte	0x28
	.byte	0x5
	.4byte	0x2b
	.4byte	0x220
	.uleb128 0x1
	.4byte	0xc8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x7
	.byte	0x20
	.byte	0x5
	.4byte	0x2b
	.4byte	0x23b
	.uleb128 0x1
	.4byte	0xc8
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x9
	.byte	0x26
	.byte	0x7
	.4byte	0x8b
	.4byte	0x256
	.uleb128 0x1
	.4byte	0x90
	.uleb128 0x1
	.4byte	0xa6
	.byte	0
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0xb
	.byte	0xa4
	.4byte	0x267
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0xc
	.byte	0x4d
	.byte	0x5
	.4byte	0x2b
	.4byte	0x287
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x1
	.4byte	0x287
	.uleb128 0x1
	.4byte	0x287
	.byte	0
	.uleb128 0x6
	.4byte	0xc8
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0xc
	.byte	0x4a
	.byte	0x5
	.4byte	0x2b
	.4byte	0x2ac
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x1
	.4byte	0x287
	.uleb128 0x1
	.4byte	0x287
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0xc
	.byte	0x4e
	.byte	0x5
	.4byte	0x2b
	.4byte	0x2cc
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x1
	.4byte	0x287
	.uleb128 0x1
	.4byte	0x287
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0xc
	.byte	0x4b
	.byte	0x5
	.4byte	0x2b
	.4byte	0x2ec
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x1
	.4byte	0x287
	.uleb128 0x1
	.4byte	0x287
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x9
	.byte	0x2c
	.byte	0x7
	.4byte	0x8b
	.4byte	0x30c
	.uleb128 0x1
	.4byte	0x90
	.uleb128 0x1
	.4byte	0xa6
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x9
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0x32c
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0xb
	.byte	0xa3
	.byte	0x7
	.4byte	0x84
	.4byte	0x342
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x7
	.byte	0x21
	.byte	0x5
	.4byte	0x2b
	.4byte	0x362
	.uleb128 0x1
	.4byte	0xc8
	.uleb128 0x1
	.4byte	0xf8
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x9
	.byte	0x1f
	.byte	0x8
	.4byte	0x84
	.4byte	0x382
	.uleb128 0x1
	.4byte	0x86
	.uleb128 0x1
	.4byte	0x387
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x6
	.4byte	0x38c
	.uleb128 0xa
	.4byte	0x382
	.uleb128 0x1a
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0xd
	.byte	0xce
	.byte	0x5
	.4byte	0x2b
	.4byte	0x3a4
	.uleb128 0x1
	.4byte	0xa6
	.uleb128 0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0xd
	.byte	0xe3
	.byte	0x5
	.4byte	0x2b
	.4byte	0x3ba
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF46
	.byte	0x1
	.byte	0xdf
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ff
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0xdf
	.byte	0x21
	.4byte	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0xdf
	.byte	0x37
	.4byte	0x3ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0xe1
	.byte	0x1a
	.4byte	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0x3e
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0xd2
	.4byte	0x2b
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x463
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0xd2
	.byte	0x21
	.4byte	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0xd2
	.byte	0x36
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0xd2
	.byte	0x49
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0xd2
	.byte	0x58
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0xd4
	.byte	0x1a
	.4byte	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0xc3
	.4byte	0x2b
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e0
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0xc3
	.byte	0x22
	.4byte	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0xc3
	.byte	0x37
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0xc3
	.byte	0x4a
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0xc3
	.byte	0x5f
	.4byte	0x4e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0xc5
	.byte	0x1a
	.4byte	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0xc6
	.byte	0xe
	.4byte	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.4byte	0x736
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0xc9
	.byte	0x56
	.byte	0
	.uleb128 0x6
	.4byte	0xc3
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0xb7
	.4byte	0x2b
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51a
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0xb7
	.byte	0x26
	.4byte	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0xb9
	.byte	0x1a
	.4byte	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0xac
	.4byte	0x2b
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x56b
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0xac
	.byte	0x22
	.4byte	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0xac
	.byte	0x37
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0xac
	.byte	0x4a
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0xae
	.byte	0x1a
	.4byte	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0xa0
	.4byte	0x2b
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ae
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0xa0
	.byte	0x21
	.4byte	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0xa0
	.byte	0x38
	.4byte	0x5ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0xa2
	.byte	0x1a
	.4byte	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0x157
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x99
	.4byte	0x2b
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5da
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x99
	.byte	0x22
	.4byte	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x59
	.4byte	0x2b
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x656
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x59
	.byte	0x1d
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x59
	.byte	0x34
	.4byte	0x656
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x59
	.byte	0x49
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x5b
	.byte	0xe
	.4byte	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5c
	.byte	0xe
	.4byte	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1
	.byte	0x5d
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x5e
	.byte	0x1a
	.4byte	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0xfd
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0x53
	.4byte	0x2b
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69e
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0x53
	.byte	0x20
	.4byte	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"src"
	.byte	0x53
	.byte	0x2f
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"len"
	.byte	0x53
	.byte	0x41
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.4byte	.LASF61
	.byte	0x3c
	.4byte	0x2b
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x701
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0x3c
	.byte	0x29
	.4byte	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0xb
	.string	"src"
	.byte	0x3c
	.byte	0x38
	.4byte	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xb
	.string	"len"
	.byte	0x3c
	.byte	0x4a
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x3e
	.byte	0xd
	.4byte	0x701
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x3f
	.byte	0x12
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	0xb7
	.4byte	0x711
	.uleb128 0xe
	.4byte	0x3e
	.byte	0x3f
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF67
	.byte	0x1
	.byte	0x31
	.byte	0xd
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x736
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x31
	.byte	0x34
	.4byte	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF68
	.byte	0x2
	.byte	0xb3
	.byte	0x3a
	.4byte	0xd4
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
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
	.sleb128 6
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
	.uleb128 0x12
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.4byte	0x6c
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
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
	.byte	0x7
	.4byte	.LFB14
	.uleb128 .LFE14-.LFB14
	.byte	0x7
	.4byte	.LFB15
	.uleb128 .LFE15-.LFB15
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.string	"strncpy"
.LASF48:
	.string	"addr"
.LASF54:
	.string	"bl_mtd_erase"
.LASF7:
	.string	"short int"
.LASF13:
	.string	"size_t"
.LASF28:
	.string	"bl_flash_read"
.LASF47:
	.string	"bl_mtd_read"
.LASF55:
	.string	"bl_mtd_info"
.LASF42:
	.string	"memcpy"
.LASF58:
	.string	"bl_mtd_open"
.LASF57:
	.string	"bl_mtd_close"
.LASF65:
	.string	"TrapNetCounter"
.LASF15:
	.string	"uint8_t"
.LASF68:
	.string	"xPortIsInsideInterrupt"
.LASF60:
	.string	"_mtd_write"
.LASF50:
	.string	"handle_prv"
.LASF19:
	.string	"bl_mtd_handle_t"
.LASF4:
	.string	"long double"
.LASF66:
	.string	"bl_mtd_handle_priv"
.LASF3:
	.string	"long long int"
.LASF18:
	.string	"TickType_t"
.LASF56:
	.string	"info"
.LASF39:
	.string	"memset"
.LASF35:
	.string	"hal_boot2_partition_bus_addr_active"
.LASF9:
	.string	"long int"
.LASF21:
	.string	"offset"
.LASF26:
	.string	"xTaskGetTickCount"
.LASF36:
	.string	"hal_boot2_partition_addr_inactive"
.LASF59:
	.string	"flags"
.LASF61:
	.string	"_mtd_write_copy2ram"
.LASF6:
	.string	"unsigned char"
.LASF5:
	.string	"signed char"
.LASF30:
	.string	"bl_flash_erase"
.LASF11:
	.string	"long long unsigned int"
.LASF16:
	.string	"uint32_t"
.LASF2:
	.string	"unsigned int"
.LASF37:
	.string	"hal_boot2_partition_bus_addr_inactive"
.LASF17:
	.string	"BaseType_t"
.LASF44:
	.string	"puts"
.LASF8:
	.string	"short unsigned int"
.LASF46:
	.string	"bl_mtd_size"
.LASF12:
	.string	"char"
.LASF23:
	.string	"xip_addr"
.LASF43:
	.string	"printf"
.LASF14:
	.string	"int32_t"
.LASF29:
	.string	"bl_sys_isxipaddr"
.LASF31:
	.string	"strcpy"
.LASF64:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF41:
	.string	"bl_flash_write"
.LASF49:
	.string	"data"
.LASF63:
	.string	"len_tmp"
.LASF51:
	.string	"bl_mtd_write"
.LASF53:
	.string	"bl_mtd_erase_all"
.LASF10:
	.string	"long unsigned int"
.LASF33:
	.string	"vPortFree"
.LASF45:
	.string	"handle"
.LASF22:
	.string	"size"
.LASF34:
	.string	"hal_boot2_partition_addr_active"
.LASF27:
	.string	"xTaskGetTickCountFromISR"
.LASF52:
	.string	"real_addr"
.LASF25:
	.string	"bl_mtd_handle_priv_t"
.LASF20:
	.string	"name"
.LASF67:
	.string	"__dump_mtd_handle"
.LASF32:
	.string	"bl_printk"
.LASF62:
	.string	"buf_tmp"
.LASF24:
	.string	"bl_mtd_info_t"
.LASF40:
	.string	"pvPortMalloc"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blmtd"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/sys/blmtd/bl_mtd.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
