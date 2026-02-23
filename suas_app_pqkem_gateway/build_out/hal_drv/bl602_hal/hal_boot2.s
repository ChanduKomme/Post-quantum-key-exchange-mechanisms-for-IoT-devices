	.file	"hal_boot2.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_boot2.c"
	.section	.bss.boot2_partition_table,"aw",@nobits
	.align	2
	.type	boot2_partition_table, @object
	.size	boot2_partition_table, 600
boot2_partition_table:
	.zero	600
	.section	.text.hal_boot2_set_ptable_opt,"ax",@progbits
	.align	1
	.globl	hal_boot2_set_ptable_opt
	.type	hal_boot2_set_ptable_opt, @function
hal_boot2_set_ptable_opt:
.LFB9:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_boot2.c"
	.loc 1 58 1
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
	.loc 1 59 5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	PtTable_Set_Flash_Operation
	.loc 1 60 1
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
	.size	hal_boot2_set_ptable_opt, .-hal_boot2_set_ptable_opt
	.section	.text.hal_boot2_update_ptable,"ax",@progbits
	.align	1
	.globl	hal_boot2_update_ptable
	.type	hal_boot2_update_ptable, @function
hal_boot2_update_ptable:
.LFB10:
	.loc 1 63 1
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
	.loc 1 66 27
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 68 36
	lw	a5,-20(s0)
	lbu	a5,2(a5)
	.loc 1 68 28
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 1 68 26
	lw	a5,-20(s0)
	sb	a4,2(a5)
	.loc 1 69 13
	lw	a5,-20(s0)
	lw	a5,32(a5)
	.loc 1 69 19
	addi	a4,a5,1
	lw	a5,-20(s0)
	sw	a4,32(a5)
	.loc 1 70 58
	lui	a5,%hi(boot2_partition_table)
	addi	a5,a5,%lo(boot2_partition_table)
	lbu	a5,0(a5)
	.loc 1 70 11
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a4,a5
	lw	a3,-20(s0)
	lui	a5,%hi(boot2_partition_table+4)
	addi	a2,a5,%lo(boot2_partition_table+4)
	mv	a1,a4
	li	a0,0
	call	PtTable_Update_Entry
	mv	a5,a0
	.loc 1 70 9 discriminator 1
	sw	a5,-24(s0)
	.loc 1 71 12
	lw	a5,-24(s0)
	.loc 1 72 1
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
	.size	hal_boot2_update_ptable, .-hal_boot2_update_ptable
	.section	.text._dump_partition,"ax",@progbits
	.align	1
	.type	_dump_partition, @function
_dump_partition:
.LFB11:
	.loc 1 75 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 77 27
	lui	a5,%hi(boot2_partition_table+4)
	addi	a5,a5,%lo(boot2_partition_table+4)
	sw	a5,-24(s0)
	.loc 1 90 12
	sw	zero,-20(s0)
	.loc 1 90 5
	j	.L5
.L6:
	.loc 1 90 46 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L5:
	.loc 1 90 34 discriminator 1
	lw	a5,-24(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 1 90 19 discriminator 1
	lw	a5,-20(s0)
	blt	a5,a4,.L6
	.loc 1 102 1
	nop
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
.LFE11:
	.size	_dump_partition, .-_dump_partition
	.section	.text.hal_boot2_get_flash_addr,"ax",@progbits
	.align	1
	.globl	hal_boot2_get_flash_addr
	.type	hal_boot2_get_flash_addr, @function
hal_boot2_get_flash_addr:
.LFB12:
	.loc 1 105 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 109 100
	lui	a5,%hi(boot2_partition_table)
	addi	a5,a5,%lo(boot2_partition_table)
	lhu	a5,10(a5)
	mv	a4,a5
	.loc 1 109 63
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 108 45
	lui	a5,%hi(__boot2_flashCfg_src)
	addi	a5,a5,%lo(__boot2_flashCfg_src)
	add	a5,a4,a5
	.loc 1 110 1
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
.LFE12:
	.size	hal_boot2_get_flash_addr, .-hal_boot2_get_flash_addr
	.section	.rodata
	.align	2
.LC0:
	.string	"FW"
	.section	.text.hal_boot2_partition_bus_addr,"ax",@progbits
	.align	1
	.globl	hal_boot2_partition_bus_addr
	.type	hal_boot2_partition_bus_addr, @function
hal_boot2_partition_bus_addr:
.LFB13:
	.loc 1 114 1
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
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	.loc 1 118 60
	lui	a5,%hi(boot2_partition_table)
	addi	a5,a5,%lo(boot2_partition_table)
	lw	a4,4(a5)
	.loc 1 118 8
	li	a5,1414545408
	addi	a5,a5,1602
	beq	a4,a5,.L10
	.loc 1 119 16
	li	a5,-5
	j	.L11
.L10:
	.loc 1 123 12
	sw	zero,-20(s0)
	.loc 1 123 5
	j	.L12
.L15:
	.loc 1 124 33
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	addi	a4,a5,16
	lui	a5,%hi(boot2_partition_table)
	addi	a5,a5,%lo(boot2_partition_table)
	add	a5,a4,a5
	addi	a5,a5,7
	.loc 1 124 18
	lw	a1,-36(s0)
	mv	a0,a5
	call	strcmp
	mv	a5,a0
	.loc 1 124 12 discriminator 1
	beq	a5,zero,.L28
	.loc 1 123 68 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L12:
	.loc 1 123 56 discriminator 1
	lui	a5,%hi(boot2_partition_table)
	addi	a5,a5,%lo(boot2_partition_table)
	lhu	a5,10(a5)
	mv	a4,a5
	.loc 1 123 19 discriminator 1
	lw	a5,-20(s0)
	blt	a5,a4,.L15
	j	.L14
.L28:
	.loc 1 125 13
	nop
.L14:
	.loc 1 128 44
	lui	a5,%hi(boot2_partition_table)
	addi	a5,a5,%lo(boot2_partition_table)
	lhu	a5,10(a5)
	mv	a4,a5
	.loc 1 128 8
	lw	a5,-20(s0)
	bne	a5,a4,.L16
	.loc 1 129 16
	li	a5,-2
	j	.L11
.L16:
	.loc 1 131 13
	lui	a5,%hi(boot2_partition_table)
	addi	a3,a5,%lo(boot2_partition_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,32(a5)
	sw	a5,-24(s0)
	.loc 1 132 13
	lui	a5,%hi(boot2_partition_table)
	addi	a3,a5,%lo(boot2_partition_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,36(a5)
	sw	a5,-28(s0)
	.loc 1 133 55
	lui	a5,%hi(boot2_partition_table)
	addi	a3,a5,%lo(boot2_partition_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a5,22(a5)
	mv	a4,a5
	.loc 1 133 13
	lw	a5,-56(s0)
	sw	a4,0(a5)
	.loc 1 134 61
	lui	a5,%hi(boot2_partition_table)
	addi	a3,a5,%lo(boot2_partition_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,40(a5)
	.loc 1 134 12
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 1 135 61
	lui	a5,%hi(boot2_partition_table)
	addi	a3,a5,%lo(boot2_partition_table)
	lw	a5,-20(s0)
	addi	a4,a5,1
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,8(a5)
	.loc 1 135 12
	lw	a5,-52(s0)
	sw	a4,0(a5)
	.loc 1 138 12
	sw	zero,-20(s0)
	.loc 1 138 5
	j	.L17
.L20:
	.loc 1 139 33
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	addi	a4,a5,16
	lui	a5,%hi(boot2_partition_table)
	addi	a5,a5,%lo(boot2_partition_table)
	add	a5,a4,a5
	addi	a4,a5,7
	.loc 1 139 18
	lui	a5,%hi(.LC0)
	addi	a1,a5,%lo(.LC0)
	mv	a0,a4
	call	strcmp
	mv	a5,a0
	.loc 1 139 12 discriminator 1
	beq	a5,zero,.L29
	.loc 1 138 68 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L17:
	.loc 1 138 56 discriminator 1
	lui	a5,%hi(boot2_partition_table)
	addi	a5,a5,%lo(boot2_partition_table)
	lhu	a5,10(a5)
	mv	a4,a5
	.loc 1 138 19 discriminator 1
	lw	a5,-20(s0)
	blt	a5,a4,.L20
	j	.L19
.L29:
	.loc 1 140 13
	nop
.L19:
	.loc 1 143 44
	lui	a5,%hi(boot2_partition_table)
	addi	a5,a5,%lo(boot2_partition_table)
	lhu	a5,10(a5)
	mv	a4,a5
	.loc 1 143 8
	lw	a5,-20(s0)
	bne	a5,a4,.L21
	.loc 1 144 16
	li	a5,-140
	j	.L11
.L21:
	.loc 1 147 8
	lw	a5,-24(s0)
	beq	a5,zero,.L22
	.loc 1 147 81 discriminator 1
	lui	a5,%hi(boot2_partition_table)
	addi	a3,a5,%lo(boot2_partition_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,32(a5)
	.loc 1 147 19 discriminator 1
	lw	a4,-24(s0)
	bltu	a4,a5,.L23
.L22:
	.loc 1 147 87 discriminator 3
	lw	a5,-24(s0)
	beq	a5,zero,.L24
	.loc 1 148 81
	lui	a5,%hi(boot2_partition_table)
	addi	a3,a5,%lo(boot2_partition_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,36(a5)
	.loc 1 148 19
	lw	a4,-24(s0)
	bltu	a4,a5,.L23
.L24:
	.loc 1 148 87 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L25
	.loc 1 149 81
	lui	a5,%hi(boot2_partition_table)
	addi	a3,a5,%lo(boot2_partition_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,32(a5)
	.loc 1 149 19
	lw	a4,-28(s0)
	bltu	a4,a5,.L23
.L25:
	.loc 1 149 87 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L26
	.loc 1 150 81
	lui	a5,%hi(boot2_partition_table)
	addi	a3,a5,%lo(boot2_partition_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,36(a5)
	.loc 1 150 19
	lw	a4,-28(s0)
	bgeu	a4,a5,.L26
.L23:
	.loc 1 151 16
	li	a5,-22
	j	.L11
.L26:
	.loc 1 153 55
	lui	a5,%hi(boot2_partition_table)
	addi	a3,a5,%lo(boot2_partition_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a5,22(a5)
	.loc 1 153 8
	beq	a5,zero,.L27
	.loc 1 154 55
	lui	a5,%hi(boot2_partition_table)
	addi	a3,a5,%lo(boot2_partition_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a4,22(a5)
	.loc 1 153 69 discriminator 1
	li	a5,1
	beq	a4,a5,.L27
	.loc 1 155 16
	li	a5,-14
	j	.L11
.L27:
	.loc 1 157 113
	lui	a5,%hi(boot2_partition_table)
	addi	a3,a5,%lo(boot2_partition_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a5,22(a5)
	mv	a2,a5
	.loc 1 157 72
	lui	a5,%hi(boot2_partition_table)
	addi	a3,a5,%lo(boot2_partition_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	add	a5,a5,a2
	addi	a5,a5,4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,16(a5)
	.loc 1 157 22
	lw	a4,-24(s0)
	sub	a4,a4,a5
	.loc 1 157 138
	li	a5,587198464
	add	a4,a4,a5
	.loc 1 157 12
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 158 113
	lui	a5,%hi(boot2_partition_table)
	addi	a3,a5,%lo(boot2_partition_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a5,22(a5)
	mv	a2,a5
	.loc 1 158 72
	lui	a5,%hi(boot2_partition_table)
	addi	a3,a5,%lo(boot2_partition_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	add	a5,a5,a2
	addi	a5,a5,4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,16(a5)
	.loc 1 158 22
	lw	a4,-28(s0)
	sub	a4,a4,a5
	.loc 1 158 138
	li	a5,587198464
	add	a4,a4,a5
	.loc 1 158 12
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 1 160 12
	li	a5,0
.L11:
	.loc 1 161 1
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
.LFE13:
	.size	hal_boot2_partition_bus_addr, .-hal_boot2_partition_bus_addr
	.section	.text.hal_boot2_partition_bus_addr_active,"ax",@progbits
	.align	1
	.globl	hal_boot2_partition_bus_addr_active
	.type	hal_boot2_partition_bus_addr_active, @function
hal_boot2_partition_bus_addr_active:
.LFB14:
	.loc 1 164 1
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
	sw	a2,-60(s0)
	.loc 1 169 16
	addi	a5,s0,-40
	addi	a4,s0,-36
	addi	a3,s0,-32
	addi	a2,s0,-28
	addi	a1,s0,-24
	lw	a0,-52(s0)
	call	hal_boot2_partition_bus_addr
	sw	a0,-20(s0)
	.loc 1 169 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L31
	.loc 1 170 16
	lw	a5,-20(s0)
	j	.L37
.L31:
	.loc 1 172 20
	lw	a5,-40(s0)
	.loc 1 172 28
	beq	a5,zero,.L33
	.loc 1 172 28 is_stmt 0 discriminator 1
	lw	a5,-28(s0)
	j	.L34
.L33:
	.loc 1 172 28 discriminator 2
	lw	a5,-24(s0)
.L34:
	.loc 1 172 11 is_stmt 1 discriminator 4
	lw	a4,-56(s0)
	sw	a5,0(a4)
	.loc 1 173 20
	lw	a5,-40(s0)
	.loc 1 173 28
	beq	a5,zero,.L35
	.loc 1 173 28 is_stmt 0 discriminator 1
	lw	a5,-36(s0)
	j	.L36
.L35:
	.loc 1 173 28 discriminator 2
	lw	a5,-32(s0)
.L36:
	.loc 1 173 11 is_stmt 1 discriminator 4
	lw	a4,-60(s0)
	sw	a5,0(a4)
	.loc 1 175 12
	li	a5,0
.L37:
	.loc 1 176 1
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
.LFE14:
	.size	hal_boot2_partition_bus_addr_active, .-hal_boot2_partition_bus_addr_active
	.section	.text.hal_boot2_partition_bus_addr_inactive,"ax",@progbits
	.align	1
	.globl	hal_boot2_partition_bus_addr_inactive
	.type	hal_boot2_partition_bus_addr_inactive, @function
hal_boot2_partition_bus_addr_inactive:
.LFB15:
	.loc 1 179 1
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
	sw	a2,-60(s0)
	.loc 1 184 16
	addi	a5,s0,-40
	addi	a4,s0,-36
	addi	a3,s0,-32
	addi	a2,s0,-28
	addi	a1,s0,-24
	lw	a0,-52(s0)
	call	hal_boot2_partition_bus_addr
	sw	a0,-20(s0)
	.loc 1 184 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L39
	.loc 1 185 16
	lw	a5,-20(s0)
	j	.L45
.L39:
	.loc 1 187 20
	lw	a5,-40(s0)
	.loc 1 187 28
	beq	a5,zero,.L41
	.loc 1 187 28 is_stmt 0 discriminator 1
	lw	a5,-24(s0)
	j	.L42
.L41:
	.loc 1 187 28 discriminator 2
	lw	a5,-28(s0)
.L42:
	.loc 1 187 11 is_stmt 1 discriminator 4
	lw	a4,-56(s0)
	sw	a5,0(a4)
	.loc 1 188 20
	lw	a5,-40(s0)
	.loc 1 188 28
	beq	a5,zero,.L43
	.loc 1 188 28 is_stmt 0 discriminator 1
	lw	a5,-32(s0)
	j	.L44
.L43:
	.loc 1 188 28 discriminator 2
	lw	a5,-36(s0)
.L44:
	.loc 1 188 11 is_stmt 1 discriminator 4
	lw	a4,-60(s0)
	sw	a5,0(a4)
	.loc 1 190 12
	li	a5,0
.L45:
	.loc 1 191 1
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
.LFE15:
	.size	hal_boot2_partition_bus_addr_inactive, .-hal_boot2_partition_bus_addr_inactive
	.section	.text.hal_boot2_partition_addr,"ax",@progbits
	.align	1
	.globl	hal_boot2_partition_addr
	.type	hal_boot2_partition_addr, @function
hal_boot2_partition_addr:
.LFB16:
	.loc 1 194 1
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
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	.loc 1 197 60
	lui	a5,%hi(boot2_partition_table)
	addi	a5,a5,%lo(boot2_partition_table)
	lw	a4,4(a5)
	.loc 1 197 8
	li	a5,1414545408
	addi	a5,a5,1602
	beq	a4,a5,.L47
	.loc 1 198 16
	li	a5,-5
	j	.L48
.L47:
	.loc 1 202 12
	sw	zero,-20(s0)
	.loc 1 202 5
	j	.L49
.L52:
	.loc 1 203 33
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	addi	a4,a5,16
	lui	a5,%hi(boot2_partition_table)
	addi	a5,a5,%lo(boot2_partition_table)
	add	a5,a4,a5
	addi	a5,a5,7
	.loc 1 203 18
	lw	a1,-36(s0)
	mv	a0,a5
	call	strcmp
	mv	a5,a0
	.loc 1 203 12 discriminator 1
	beq	a5,zero,.L54
	.loc 1 202 68 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L49:
	.loc 1 202 56 discriminator 1
	lui	a5,%hi(boot2_partition_table)
	addi	a5,a5,%lo(boot2_partition_table)
	lhu	a5,10(a5)
	mv	a4,a5
	.loc 1 202 19 discriminator 1
	lw	a5,-20(s0)
	blt	a5,a4,.L52
	j	.L51
.L54:
	.loc 1 204 13
	nop
.L51:
	.loc 1 207 44
	lui	a5,%hi(boot2_partition_table)
	addi	a5,a5,%lo(boot2_partition_table)
	lhu	a5,10(a5)
	mv	a4,a5
	.loc 1 207 8
	lw	a5,-20(s0)
	bne	a5,a4,.L53
	.loc 1 208 16
	li	a5,-2
	j	.L48
.L53:
	.loc 1 210 62
	lui	a5,%hi(boot2_partition_table)
	addi	a3,a5,%lo(boot2_partition_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,32(a5)
	.loc 1 210 12
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 211 62
	lui	a5,%hi(boot2_partition_table)
	addi	a3,a5,%lo(boot2_partition_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,36(a5)
	.loc 1 211 12
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 1 212 61
	lui	a5,%hi(boot2_partition_table)
	addi	a3,a5,%lo(boot2_partition_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,40(a5)
	.loc 1 212 12
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 1 213 61
	lui	a5,%hi(boot2_partition_table)
	addi	a3,a5,%lo(boot2_partition_table)
	lw	a5,-20(s0)
	addi	a4,a5,1
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,8(a5)
	.loc 1 213 12
	lw	a5,-52(s0)
	sw	a4,0(a5)
	.loc 1 214 55
	lui	a5,%hi(boot2_partition_table)
	addi	a3,a5,%lo(boot2_partition_table)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,3
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a5,22(a5)
	mv	a4,a5
	.loc 1 214 13
	lw	a5,-56(s0)
	sw	a4,0(a5)
	.loc 1 216 12
	li	a5,0
.L48:
	.loc 1 217 1
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
.LFE16:
	.size	hal_boot2_partition_addr, .-hal_boot2_partition_addr
	.section	.text.hal_boot2_partition_addr_active,"ax",@progbits
	.align	1
	.globl	hal_boot2_partition_addr_active
	.type	hal_boot2_partition_addr_active, @function
hal_boot2_partition_addr_active:
.LFB17:
	.loc 1 220 1
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
	sw	a2,-60(s0)
	.loc 1 225 16
	addi	a5,s0,-40
	addi	a4,s0,-36
	addi	a3,s0,-32
	addi	a2,s0,-28
	addi	a1,s0,-24
	lw	a0,-52(s0)
	call	hal_boot2_partition_addr
	sw	a0,-20(s0)
	.loc 1 225 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L56
	.loc 1 226 16
	lw	a5,-20(s0)
	j	.L62
.L56:
	.loc 1 228 20
	lw	a5,-40(s0)
	.loc 1 228 28
	beq	a5,zero,.L58
	.loc 1 228 28 is_stmt 0 discriminator 1
	lw	a5,-28(s0)
	j	.L59
.L58:
	.loc 1 228 28 discriminator 2
	lw	a5,-24(s0)
.L59:
	.loc 1 228 11 is_stmt 1 discriminator 4
	lw	a4,-56(s0)
	sw	a5,0(a4)
	.loc 1 229 20
	lw	a5,-40(s0)
	.loc 1 229 28
	beq	a5,zero,.L60
	.loc 1 229 28 is_stmt 0 discriminator 1
	lw	a5,-36(s0)
	j	.L61
.L60:
	.loc 1 229 28 discriminator 2
	lw	a5,-32(s0)
.L61:
	.loc 1 229 11 is_stmt 1 discriminator 4
	lw	a4,-60(s0)
	sw	a5,0(a4)
	.loc 1 231 12
	li	a5,0
.L62:
	.loc 1 232 1
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
.LFE17:
	.size	hal_boot2_partition_addr_active, .-hal_boot2_partition_addr_active
	.section	.text.hal_boot2_partition_addr_inactive,"ax",@progbits
	.align	1
	.globl	hal_boot2_partition_addr_inactive
	.type	hal_boot2_partition_addr_inactive, @function
hal_boot2_partition_addr_inactive:
.LFB18:
	.loc 1 235 1
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
	sw	a2,-60(s0)
	.loc 1 240 16
	addi	a5,s0,-40
	addi	a4,s0,-36
	addi	a3,s0,-32
	addi	a2,s0,-28
	addi	a1,s0,-24
	lw	a0,-52(s0)
	call	hal_boot2_partition_addr
	sw	a0,-20(s0)
	.loc 1 240 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L64
	.loc 1 241 16
	lw	a5,-20(s0)
	j	.L70
.L64:
	.loc 1 243 20
	lw	a5,-40(s0)
	.loc 1 243 28
	beq	a5,zero,.L66
	.loc 1 243 28 is_stmt 0 discriminator 1
	lw	a5,-24(s0)
	j	.L67
.L66:
	.loc 1 243 28 discriminator 2
	lw	a5,-28(s0)
.L67:
	.loc 1 243 11 is_stmt 1 discriminator 4
	lw	a4,-56(s0)
	sw	a5,0(a4)
	.loc 1 244 20
	lw	a5,-40(s0)
	.loc 1 244 28
	beq	a5,zero,.L68
	.loc 1 244 28 is_stmt 0 discriminator 1
	lw	a5,-32(s0)
	j	.L69
.L68:
	.loc 1 244 28 discriminator 2
	lw	a5,-36(s0)
.L69:
	.loc 1 244 11 is_stmt 1 discriminator 4
	lw	a4,-60(s0)
	sw	a5,0(a4)
	.loc 1 246 12
	li	a5,0
.L70:
	.loc 1 247 1
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
.LFE18:
	.size	hal_boot2_partition_addr_inactive, .-hal_boot2_partition_addr_inactive
	.section	.text.hal_boot2_get_active_partition,"ax",@progbits
	.align	1
	.globl	hal_boot2_get_active_partition
	.type	hal_boot2_get_active_partition, @function
hal_boot2_get_active_partition:
.LFB19:
	.loc 1 250 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 251 33
	lui	a5,%hi(boot2_partition_table)
	addi	a5,a5,%lo(boot2_partition_table)
	lbu	a5,0(a5)
	.loc 1 252 1
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
.LFE19:
	.size	hal_boot2_get_active_partition, .-hal_boot2_get_active_partition
	.section	.text.hal_boot2_get_active_entries,"ax",@progbits
	.align	1
	.globl	hal_boot2_get_active_entries
	.type	hal_boot2_get_active_entries, @function
hal_boot2_get_active_entries:
.LFB20:
	.loc 1 255 1
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
	.loc 1 256 27
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 1 257 9
	lw	a5,-36(s0)
	andi	a5,a5,0xff
	lw	a2,-20(s0)
	mv	a1,a5
	lui	a5,%hi(boot2_partition_table+4)
	addi	a0,a5,%lo(boot2_partition_table+4)
	call	PtTable_Get_Active_Entries
	mv	a5,a0
	.loc 1 257 8 discriminator 1
	beq	a5,zero,.L74
	.loc 1 258 16
	li	a5,-1
	j	.L75
.L74:
	.loc 1 260 12
	li	a5,0
.L75:
	.loc 1 261 1
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
.LFE20:
	.size	hal_boot2_get_active_entries, .-hal_boot2_get_active_entries
	.section	.text.hal_boot2_dump,"ax",@progbits
	.align	1
	.globl	hal_boot2_dump
	.type	hal_boot2_dump, @function
hal_boot2_dump:
.LFB21:
	.loc 1 264 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 265 5
	call	_dump_partition
	.loc 1 266 12
	li	a5,0
	.loc 1 267 1
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
.LFE21:
	.size	hal_boot2_dump, .-hal_boot2_dump
	.section	.text.hal_boot2_init,"ax",@progbits
	.align	1
	.globl	hal_boot2_init
	.type	hal_boot2_init, @function
hal_boot2_init:
.LFB22:
	.loc 1 270 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 271 50
	li	a5,1107599360
	addi	a5,a5,-1024
	lbu	a4,0(a5)
	.loc 1 271 48
	lui	a5,%hi(boot2_partition_table)
	addi	a5,a5,%lo(boot2_partition_table)
	sb	a4,0(a5)
	.loc 1 277 5
	call	_dump_partition
	.loc 1 278 5
	call	bl_flash_config_update
	.loc 1 280 12
	li	a5,0
	.loc 1 281 1
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
.LFE22:
	.size	hal_boot2_init, .-hal_boot2_init
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sflash.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_boot2.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_boot2.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_flash.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd80
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x15
	.4byte	.LASF165
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x16
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x12
	.4byte	0x78
	.uleb128 0x7
	.4byte	0x7f
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x40
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0xc
	.4byte	0x32
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xcc
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0xad
	.uleb128 0xd
	.4byte	0xa1
	.4byte	0xe8
	.uleb128 0xe
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.byte	0x54
	.byte	0x4
	.byte	0x39
	.4byte	0x499
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x4
	.byte	0x3a
	.byte	0xd
	.4byte	0x89
	.byte	0
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x4
	.byte	0x3b
	.byte	0xd
	.4byte	0x89
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x4
	.byte	0x3c
	.byte	0xd
	.4byte	0x89
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x4
	.byte	0x3d
	.byte	0xd
	.4byte	0x89
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x4
	.byte	0x3e
	.byte	0xd
	.4byte	0x89
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x4
	.byte	0x3f
	.byte	0xd
	.4byte	0x89
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x4
	.byte	0x40
	.byte	0xd
	.4byte	0x89
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x4
	.byte	0x41
	.byte	0xd
	.4byte	0x89
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x4
	.byte	0x42
	.byte	0xd
	.4byte	0x89
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x4
	.byte	0x43
	.byte	0xd
	.4byte	0x89
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x4
	.byte	0x44
	.byte	0xd
	.4byte	0x89
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x4
	.byte	0x45
	.byte	0xd
	.4byte	0x89
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x4
	.byte	0x46
	.byte	0xd
	.4byte	0x89
	.byte	0xc
	.uleb128 0xb
	.string	"mid"
	.byte	0x4
	.byte	0x47
	.byte	0xd
	.4byte	0x89
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x4
	.byte	0x48
	.byte	0xe
	.4byte	0x95
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x4
	.byte	0x49
	.byte	0xd
	.4byte	0x89
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x4
	.byte	0x4a
	.byte	0xd
	.4byte	0x89
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x4
	.byte	0x4b
	.byte	0xd
	.4byte	0x89
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x4
	.byte	0x4c
	.byte	0xd
	.4byte	0x89
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x4
	.byte	0x4d
	.byte	0xd
	.4byte	0x89
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x4
	.byte	0x4e
	.byte	0xd
	.4byte	0x89
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x4
	.byte	0x4f
	.byte	0xd
	.4byte	0x89
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x4
	.byte	0x50
	.byte	0xd
	.4byte	0x89
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x4
	.byte	0x51
	.byte	0xd
	.4byte	0x89
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x4
	.byte	0x52
	.byte	0xd
	.4byte	0x89
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x4
	.byte	0x53
	.byte	0xd
	.4byte	0x89
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x4
	.byte	0x54
	.byte	0xd
	.4byte	0x89
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x4
	.byte	0x55
	.byte	0xd
	.4byte	0x89
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x4
	.byte	0x56
	.byte	0xd
	.4byte	0x89
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x4
	.byte	0x57
	.byte	0xd
	.4byte	0x89
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x4
	.byte	0x58
	.byte	0xd
	.4byte	0x89
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.4byte	0x89
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x4
	.byte	0x5a
	.byte	0xd
	.4byte	0x89
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x4
	.byte	0x5b
	.byte	0xd
	.4byte	0x89
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x4
	.byte	0x5c
	.byte	0xd
	.4byte	0x89
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x4
	.byte	0x5d
	.byte	0xd
	.4byte	0x89
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x4
	.byte	0x5e
	.byte	0xd
	.4byte	0x89
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x4
	.byte	0x5f
	.byte	0xd
	.4byte	0x89
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x4
	.byte	0x60
	.byte	0xd
	.4byte	0x89
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x4
	.byte	0x61
	.byte	0xd
	.4byte	0x89
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x4
	.byte	0x62
	.byte	0xd
	.4byte	0x89
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x4
	.byte	0x63
	.byte	0xd
	.4byte	0x89
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x4
	.byte	0x64
	.byte	0xd
	.4byte	0x89
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x4
	.byte	0x65
	.byte	0xd
	.4byte	0x89
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x4
	.byte	0x66
	.byte	0xd
	.4byte	0x89
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x4
	.byte	0x67
	.byte	0xd
	.4byte	0x89
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x4
	.byte	0x68
	.byte	0xd
	.4byte	0x89
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x4
	.byte	0x69
	.byte	0xd
	.4byte	0x89
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x4
	.byte	0x6a
	.byte	0xd
	.4byte	0x89
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x4
	.byte	0x6b
	.byte	0xd
	.4byte	0x89
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x4
	.byte	0x6c
	.byte	0xd
	.4byte	0x89
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x4
	.byte	0x6d
	.byte	0xd
	.4byte	0x499
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x4
	.byte	0x6e
	.byte	0xd
	.4byte	0x499
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x4
	.byte	0x6f
	.byte	0xd
	.4byte	0x89
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x4
	.byte	0x70
	.byte	0xd
	.4byte	0x89
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x4
	.byte	0x71
	.byte	0xd
	.4byte	0x89
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x4
	.byte	0x72
	.byte	0xd
	.4byte	0x89
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x4
	.byte	0x73
	.byte	0xd
	.4byte	0x89
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x4
	.byte	0x74
	.byte	0xd
	.4byte	0x89
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x4
	.byte	0x75
	.byte	0xd
	.4byte	0x89
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x4
	.byte	0x76
	.byte	0xd
	.4byte	0x89
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x4
	.byte	0x77
	.byte	0xd
	.4byte	0x89
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x4
	.byte	0x78
	.byte	0xd
	.4byte	0x89
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x4
	.byte	0x79
	.byte	0xd
	.4byte	0x89
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x4
	.byte	0x7a
	.byte	0xd
	.4byte	0x89
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x4
	.byte	0x7b
	.byte	0xe
	.4byte	0x95
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x4
	.byte	0x7c
	.byte	0xe
	.4byte	0x95
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x4
	.byte	0x7d
	.byte	0xe
	.4byte	0x95
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x4
	.byte	0x7e
	.byte	0xe
	.4byte	0x95
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x4
	.byte	0x7f
	.byte	0xe
	.4byte	0x95
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x4
	.byte	0x80
	.byte	0xd
	.4byte	0x89
	.byte	0x52
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x4
	.byte	0x81
	.byte	0xd
	.4byte	0x89
	.byte	0x53
	.byte	0
	.uleb128 0xd
	.4byte	0x89
	.4byte	0x4a9
	.uleb128 0xe
	.4byte	0x6a
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x4
	.byte	0x82
	.byte	0x1b
	.4byte	0xe8
	.uleb128 0x12
	.4byte	0x4a9
	.uleb128 0xc
	.4byte	0x32
	.byte	0x5
	.byte	0x34
	.byte	0xe
	.4byte	0x4fd
	.uleb128 0x5
	.4byte	.LASF92
	.byte	0
	.uleb128 0x5
	.4byte	.LASF93
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF94
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF95
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF96
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF97
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF98
	.byte	0x6
	.uleb128 0x5
	.4byte	.LASF99
	.byte	0x7
	.uleb128 0x5
	.4byte	.LASF100
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF101
	.byte	0x5
	.byte	0x3e
	.byte	0x2
	.4byte	0x4ba
	.uleb128 0xc
	.4byte	0x32
	.byte	0x5
	.byte	0x43
	.byte	0xe
	.4byte	0x528
	.uleb128 0x5
	.4byte	.LASF102
	.byte	0
	.uleb128 0x5
	.4byte	.LASF103
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF104
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF105
	.byte	0x5
	.byte	0x47
	.byte	0x2
	.4byte	0x509
	.uleb128 0xc
	.4byte	0x32
	.byte	0x5
	.byte	0x4c
	.byte	0xe
	.4byte	0x553
	.uleb128 0x5
	.4byte	.LASF106
	.byte	0
	.uleb128 0x5
	.4byte	.LASF107
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF108
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF109
	.byte	0x5
	.byte	0x50
	.byte	0x2
	.4byte	0x534
	.uleb128 0xf
	.byte	0x10
	.byte	0x5
	.byte	0x55
	.4byte	0x5a9
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0x5
	.byte	0x56
	.byte	0xe
	.4byte	0xa1
	.byte	0
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0x5
	.byte	0x57
	.byte	0xe
	.4byte	0x95
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0x5
	.byte	0x58
	.byte	0xe
	.4byte	0x95
	.byte	0x6
	.uleb128 0xb
	.string	"age"
	.byte	0x5
	.byte	0x59
	.byte	0xe
	.4byte	0xa1
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0x5
	.byte	0x5a
	.byte	0xe
	.4byte	0xa1
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF114
	.byte	0x5
	.byte	0x5b
	.byte	0x2
	.4byte	0x55f
	.uleb128 0xf
	.byte	0x24
	.byte	0x5
	.byte	0x60
	.4byte	0x626
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x5
	.byte	0x61
	.byte	0xd
	.4byte	0x89
	.byte	0
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x5
	.byte	0x62
	.byte	0xd
	.4byte	0x89
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x5
	.byte	0x63
	.byte	0xd
	.4byte	0x89
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0x5
	.byte	0x64
	.byte	0xd
	.4byte	0x626
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0x5
	.byte	0x65
	.byte	0xe
	.4byte	0xd8
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0x5
	.byte	0x66
	.byte	0xe
	.4byte	0xd8
	.byte	0x14
	.uleb128 0xb
	.string	"len"
	.byte	0x5
	.byte	0x67
	.byte	0xe
	.4byte	0xa1
	.byte	0x1c
	.uleb128 0xb
	.string	"age"
	.byte	0x5
	.byte	0x68
	.byte	0xe
	.4byte	0xa1
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.4byte	0x89
	.4byte	0x636
	.uleb128 0xe
	.4byte	0x6a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF121
	.byte	0x5
	.byte	0x69
	.byte	0x2
	.4byte	0x5b5
	.uleb128 0x13
	.2byte	0x254
	.byte	0x5
	.byte	0x6e
	.byte	0x9
	.4byte	0x675
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0x5
	.byte	0x6f
	.byte	0x14
	.4byte	0x5a9
	.byte	0
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0x5
	.byte	0x70
	.byte	0x1a
	.4byte	0x675
	.byte	0x10
	.uleb128 0x17
	.4byte	.LASF113
	.byte	0x5
	.byte	0x71
	.byte	0xe
	.4byte	0xa1
	.2byte	0x250
	.byte	0
	.uleb128 0xd
	.4byte	0x636
	.4byte	0x685
	.uleb128 0xe
	.4byte	0x6a
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	.LASF124
	.byte	0x5
	.byte	0x72
	.byte	0x2
	.4byte	0x642
	.uleb128 0x6
	.4byte	.LASF125
	.byte	0x5
	.byte	0x9d
	.byte	0x17
	.4byte	0x69d
	.uleb128 0x7
	.4byte	0x6a2
	.uleb128 0x10
	.4byte	0xcc
	.4byte	0x6b6
	.uleb128 0x4
	.4byte	0xa1
	.uleb128 0x4
	.4byte	0xa1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF126
	.byte	0x5
	.byte	0x9e
	.byte	0x17
	.4byte	0x6c2
	.uleb128 0x7
	.4byte	0x6c7
	.uleb128 0x10
	.4byte	0xcc
	.4byte	0x6e0
	.uleb128 0x4
	.4byte	0xa1
	.uleb128 0x4
	.4byte	0x6e0
	.uleb128 0x4
	.4byte	0xa1
	.byte	0
	.uleb128 0x7
	.4byte	0x89
	.uleb128 0xf
	.byte	0x24
	.byte	0x6
	.byte	0x26
	.4byte	0x756
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x6
	.byte	0x27
	.byte	0xd
	.4byte	0x89
	.byte	0
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x6
	.byte	0x28
	.byte	0xd
	.4byte	0x89
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x6
	.byte	0x29
	.byte	0xd
	.4byte	0x89
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0x6
	.byte	0x2a
	.byte	0xd
	.4byte	0x626
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.4byte	0xd8
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0x6
	.byte	0x2c
	.byte	0xe
	.4byte	0xd8
	.byte	0x14
	.uleb128 0xb
	.string	"len"
	.byte	0x6
	.byte	0x2d
	.byte	0xe
	.4byte	0xa1
	.byte	0x1c
	.uleb128 0xb
	.string	"age"
	.byte	0x6
	.byte	0x2e
	.byte	0xe
	.4byte	0xa1
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF127
	.byte	0x6
	.byte	0x2f
	.byte	0x3
	.4byte	0x6e5
	.uleb128 0xc
	.4byte	0x32
	.byte	0x6
	.byte	0x40
	.byte	0x1
	.4byte	0x77b
	.uleb128 0x5
	.4byte	.LASF128
	.byte	0
	.uleb128 0x5
	.4byte	.LASF129
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF130
	.byte	0x6
	.byte	0x43
	.byte	0x3
	.4byte	0x762
	.uleb128 0x6
	.4byte	.LASF131
	.byte	0x6
	.byte	0x45
	.byte	0x18
	.4byte	0x793
	.uleb128 0x7
	.4byte	0x798
	.uleb128 0x10
	.4byte	0x77b
	.4byte	0x7ac
	.uleb128 0x4
	.4byte	0xa1
	.uleb128 0x4
	.4byte	0xa1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF132
	.byte	0x6
	.byte	0x46
	.byte	0x18
	.4byte	0x7b8
	.uleb128 0x7
	.4byte	0x7bd
	.uleb128 0x10
	.4byte	0x77b
	.4byte	0x7d6
	.uleb128 0x4
	.4byte	0xa1
	.uleb128 0x4
	.4byte	0x6e0
	.uleb128 0x4
	.4byte	0xa1
	.byte	0
	.uleb128 0x13
	.2byte	0x258
	.byte	0x1
	.byte	0x33
	.byte	0x8
	.4byte	0x808
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x1
	.byte	0x34
	.byte	0xd
	.4byte	0x89
	.byte	0
	.uleb128 0xb
	.string	"pad"
	.byte	0x1
	.byte	0x35
	.byte	0xd
	.4byte	0x808
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x1
	.byte	0x36
	.byte	0x1a
	.4byte	0x685
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	0x89
	.4byte	0x818
	.uleb128 0xe
	.4byte	0x6a
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF141
	.byte	0x37
	.byte	0x3
	.4byte	0x7d6
	.uleb128 0x5
	.byte	0x3
	.4byte	boot2_partition_table
	.uleb128 0x18
	.4byte	.LASF166
	.byte	0x8
	.byte	0x23
	.byte	0x5
	.4byte	0x63
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0x5
	.byte	0xa9
	.byte	0x14
	.4byte	0x4fd
	.4byte	0x855
	.uleb128 0x4
	.4byte	0x855
	.uleb128 0x4
	.4byte	0x553
	.uleb128 0x4
	.4byte	0x85a
	.byte	0
	.uleb128 0x7
	.4byte	0x685
	.uleb128 0x7
	.4byte	0x636
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0x7
	.byte	0x24
	.byte	0x5
	.4byte	0x63
	.4byte	0x87a
	.uleb128 0x4
	.4byte	0x84
	.uleb128 0x4
	.4byte	0x84
	.byte	0
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0x5
	.byte	0xac
	.byte	0x14
	.4byte	0x4fd
	.4byte	0x89f
	.uleb128 0x4
	.4byte	0x89f
	.uleb128 0x4
	.4byte	0x528
	.uleb128 0x4
	.4byte	0x855
	.uleb128 0x4
	.4byte	0x85a
	.byte	0
	.uleb128 0x7
	.4byte	0x4b5
	.uleb128 0x19
	.4byte	.LASF167
	.byte	0x5
	.byte	0xa6
	.byte	0x6
	.4byte	0x8bb
	.uleb128 0x4
	.4byte	0x691
	.uleb128 0x4
	.4byte	0x6b6
	.byte	0
	.uleb128 0x14
	.4byte	.LASF138
	.2byte	0x10d
	.4byte	0x63
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF139
	.2byte	0x107
	.4byte	0x63
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF144
	.byte	0xfe
	.4byte	0x63
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x92a
	.uleb128 0x2
	.4byte	.LASF115
	.byte	0xfe
	.byte	0x26
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF140
	.byte	0xfe
	.byte	0x47
	.4byte	0x92a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x100
	.byte	0x1b
	.4byte	0x85a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	0x756
	.uleb128 0x1b
	.4byte	.LASF143
	.byte	0x1
	.byte	0xf9
	.byte	0x9
	.4byte	0x89
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF145
	.byte	0xea
	.4byte	0x63
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9dc
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0xea
	.byte	0x33
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF146
	.byte	0xea
	.byte	0x43
	.4byte	0x9dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF147
	.byte	0xea
	.byte	0x53
	.4byte	0x9dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0xec
	.byte	0xe
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF149
	.byte	0xec
	.byte	0x15
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF150
	.byte	0xed
	.byte	0xe
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF151
	.byte	0xed
	.byte	0x15
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF152
	.byte	0xee
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"ret"
	.byte	0xee
	.byte	0x11
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	0xa1
	.uleb128 0x9
	.4byte	.LASF153
	.byte	0xdb
	.4byte	0x63
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa78
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0xdb
	.byte	0x31
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF146
	.byte	0xdb
	.byte	0x41
	.4byte	0x9dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF147
	.byte	0xdb
	.byte	0x51
	.4byte	0x9dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0xdd
	.byte	0xe
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF149
	.byte	0xdd
	.byte	0x15
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF150
	.byte	0xde
	.byte	0xe
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF151
	.byte	0xde
	.byte	0x15
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF152
	.byte	0xdf
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"ret"
	.byte	0xdf
	.byte	0x11
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF154
	.byte	0xc1
	.4byte	0x63
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf1
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0xc1
	.byte	0x2a
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF148
	.byte	0xc1
	.byte	0x3a
	.4byte	0x9dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF149
	.byte	0xc1
	.byte	0x4b
	.4byte	0x9dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF150
	.byte	0xc1
	.byte	0x5c
	.4byte	0x9dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF151
	.byte	0xc1
	.byte	0x6d
	.4byte	0x9dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF152
	.byte	0xc1
	.byte	0x79
	.4byte	0xaf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.string	"i"
	.byte	0xc3
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	0x63
	.uleb128 0x9
	.4byte	.LASF155
	.byte	0xb2
	.4byte	0x63
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb8d
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0xb2
	.byte	0x37
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF146
	.byte	0xb2
	.byte	0x47
	.4byte	0x9dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF147
	.byte	0xb2
	.byte	0x57
	.4byte	0x9dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0xb4
	.byte	0xe
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF149
	.byte	0xb4
	.byte	0x15
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF150
	.byte	0xb5
	.byte	0xe
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF151
	.byte	0xb5
	.byte	0x15
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF152
	.byte	0xb6
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"ret"
	.byte	0xb6
	.byte	0x11
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF156
	.byte	0xa3
	.4byte	0x63
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc24
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0xa3
	.byte	0x35
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF146
	.byte	0xa3
	.byte	0x45
	.4byte	0x9dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF147
	.byte	0xa3
	.byte	0x55
	.4byte	0x9dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0xa5
	.byte	0xe
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF149
	.byte	0xa5
	.byte	0x15
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF150
	.byte	0xa6
	.byte	0xe
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF151
	.byte	0xa6
	.byte	0x15
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF152
	.byte	0xa7
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"ret"
	.byte	0xa7
	.byte	0x11
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF157
	.byte	0x71
	.4byte	0x63
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb9
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0x71
	.byte	0x2e
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF148
	.byte	0x71
	.byte	0x3e
	.4byte	0x9dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF149
	.byte	0x71
	.byte	0x4f
	.4byte	0x9dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF150
	.byte	0x71
	.byte	0x60
	.4byte	0x9dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF151
	.byte	0x71
	.byte	0x71
	.4byte	0x9dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF152
	.byte	0x71
	.byte	0x7d
	.4byte	0xaf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.string	"i"
	.byte	0x73
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF158
	.byte	0x74
	.byte	0xe
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF159
	.byte	0x74
	.byte	0x17
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF160
	.byte	0x1
	.byte	0x68
	.byte	0xa
	.4byte	0xa1
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce0
	.uleb128 0x1d
	.4byte	.LASF168
	.byte	0x1
	.byte	0x6a
	.byte	0x14
	.4byte	0x89
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF169
	.byte	0x1
	.byte	0x4a
	.byte	0xd
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd11
	.uleb128 0xa
	.string	"i"
	.byte	0x4c
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF161
	.byte	0x4d
	.byte	0x1b
	.4byte	0x855
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF162
	.byte	0x3e
	.4byte	0x63
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd54
	.uleb128 0x2
	.4byte	.LASF140
	.byte	0x3e
	.byte	0x38
	.4byte	0x92a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"ret"
	.byte	0x40
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0x42
	.byte	0x1b
	.4byte	0x85a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF170
	.byte	0x1
	.byte	0x39
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.4byte	.LASF163
	.byte	0x39
	.byte	0x37
	.4byte	0x787
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF164
	.byte	0x39
	.byte	0x56
	.4byte	0x7ac
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
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x14
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
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
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
	.byte	0x7
	.4byte	.LFB16
	.uleb128 .LFE16-.LFB16
	.byte	0x7
	.4byte	.LFB17
	.uleb128 .LFE17-.LFB17
	.byte	0x7
	.4byte	.LFB18
	.uleb128 .LFE18-.LFB18
	.byte	0x7
	.4byte	.LFB19
	.uleb128 .LFE19-.LFB19
	.byte	0x7
	.4byte	.LFB20
	.uleb128 .LFE20-.LFB20
	.byte	0x7
	.4byte	.LFB21
	.uleb128 .LFE21-.LFB21
	.byte	0x7
	.4byte	.LFB22
	.uleb128 .LFE22-.LFB22
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF117:
	.string	"activeIndex"
.LASF80:
	.string	"deBurstWrapCmd"
.LASF37:
	.string	"blk64EraseCmd"
.LASF136:
	.string	"strcmp"
.LASF113:
	.string	"crc32"
.LASF139:
	.string	"hal_boot2_dump"
.LASF45:
	.string	"qpiFrDmyClk"
.LASF102:
	.string	"PT_TABLE_ID_0"
.LASF103:
	.string	"PT_TABLE_ID_1"
.LASF122:
	.string	"ptTable"
.LASF65:
	.string	"wrEnableReadRegLen"
.LASF156:
	.string	"hal_boot2_partition_bus_addr_active"
.LASF48:
	.string	"fastReadDioCmd"
.LASF115:
	.string	"type"
.LASF89:
	.string	"pdDelay"
.LASF61:
	.string	"wrEnableBit"
.LASF51:
	.string	"frQoDmyClk"
.LASF108:
	.string	"PT_ENTRY_MAX"
.LASF9:
	.string	"long long unsigned int"
.LASF46:
	.string	"fastReadDoCmd"
.LASF23:
	.string	"clkInvert"
.LASF146:
	.string	"addr"
.LASF21:
	.string	"cReadSupport"
.LASF166:
	.string	"bl_flash_config_update"
.LASF30:
	.string	"qpiJedecIdCmd"
.LASF57:
	.string	"writeVregEnableCmd"
.LASF60:
	.string	"busyIndex"
.LASF155:
	.string	"hal_boot2_partition_bus_addr_inactive"
.LASF72:
	.string	"enterQpi"
.LASF29:
	.string	"jedecIdCmdDmyClk"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF168:
	.string	"__boot2_flashCfg_src"
.LASF28:
	.string	"jedecIdCmd"
.LASF31:
	.string	"qpiJedecIdCmdDmyClk"
.LASF76:
	.string	"burstWrapCmd"
.LASF163:
	.string	"erase"
.LASF120:
	.string	"maxLen"
.LASF130:
	.string	"HAL_Err_Type"
.LASF152:
	.string	"active"
.LASF19:
	.string	"BL_Err_Type"
.LASF6:
	.string	"long int"
.LASF95:
	.string	"PT_ERROR_ENTRY_UPDATE_FAIL"
.LASF143:
	.string	"hal_boot2_get_active_partition"
.LASF68:
	.string	"releasePowerDown"
.LASF54:
	.string	"qpiFastReadQioCmd"
.LASF24:
	.string	"resetEnCmd"
.LASF71:
	.string	"writeRegCmd"
.LASF138:
	.string	"hal_boot2_init"
.LASF92:
	.string	"PT_ERROR_SUCCESS"
.LASF44:
	.string	"qpiFastReadCmd"
.LASF73:
	.string	"exitQpi"
.LASF22:
	.string	"clkDelay"
.LASF124:
	.string	"PtTable_Stuff_Config"
.LASF50:
	.string	"fastReadQoCmd"
.LASF18:
	.string	"TIMEOUT"
.LASF162:
	.string	"hal_boot2_update_ptable"
.LASF159:
	.string	"addr1_t"
.LASF78:
	.string	"burstWrapDataMode"
.LASF170:
	.string	"hal_boot2_set_ptable_opt"
.LASF98:
	.string	"PT_ERROR_FALSH_READ"
.LASF91:
	.string	"SPI_Flash_Cfg_Type"
.LASF10:
	.string	"unsigned int"
.LASF14:
	.string	"uint16_t"
.LASF83:
	.string	"deBurstWrapData"
.LASF93:
	.string	"PT_ERROR_TABLE_NOT_VALID"
.LASF25:
	.string	"resetCmd"
.LASF7:
	.string	"long unsigned int"
.LASF167:
	.string	"PtTable_Set_Flash_Operation"
.LASF90:
	.string	"qeData"
.LASF123:
	.string	"ptEntries"
.LASF118:
	.string	"name"
.LASF114:
	.string	"PtTable_Config"
.LASF127:
	.string	"HALPartition_Entry_Config"
.LASF32:
	.string	"sectorSize"
.LASF147:
	.string	"size"
.LASF116:
	.string	"device"
.LASF40:
	.string	"qpageProgramCmd"
.LASF39:
	.string	"pageProgramCmd"
.LASF133:
	.string	"partition_active_idx"
.LASF121:
	.string	"PtTable_Entry_Config"
.LASF110:
	.string	"magicCode"
.LASF64:
	.string	"wrEnableWriteRegLen"
.LASF36:
	.string	"blk32EraseCmd"
.LASF148:
	.string	"addr0"
.LASF149:
	.string	"addr1"
.LASF141:
	.string	"boot2_partition_table"
.LASF119:
	.string	"Address"
.LASF20:
	.string	"ioMode"
.LASF56:
	.string	"qpiPageProgramCmd"
.LASF62:
	.string	"qeBit"
.LASF158:
	.string	"addr0_t"
.LASF164:
	.string	"write"
.LASF55:
	.string	"qpiFrQioDmyClk"
.LASF111:
	.string	"version"
.LASF101:
	.string	"PtTable_Error_Type"
.LASF160:
	.string	"hal_boot2_get_flash_addr"
.LASF67:
	.string	"qeReadRegLen"
.LASF69:
	.string	"busyReadRegLen"
.LASF17:
	.string	"ERROR"
.LASF84:
	.string	"timeEsector"
.LASF169:
	.string	"_dump_partition"
.LASF96:
	.string	"PT_ERROR_CRC32"
.LASF153:
	.string	"hal_boot2_partition_addr_active"
.LASF74:
	.string	"cReadMode"
.LASF81:
	.string	"deBurstWrapCmdDmyClk"
.LASF97:
	.string	"PT_ERROR_PARAMETER"
.LASF79:
	.string	"burstWrapData"
.LASF63:
	.string	"busyBit"
.LASF109:
	.string	"PtTable_Entry_Type"
.LASF104:
	.string	"PT_TABLE_ID_INVALID"
.LASF105:
	.string	"PtTable_ID_Type"
.LASF3:
	.string	"unsigned char"
.LASF59:
	.string	"qeIndex"
.LASF4:
	.string	"short int"
.LASF134:
	.string	"table"
.LASF42:
	.string	"fastReadCmd"
.LASF33:
	.string	"pageSize"
.LASF38:
	.string	"writeEnableCmd"
.LASF53:
	.string	"frQioDmyClk"
.LASF47:
	.string	"frDoDmyClk"
.LASF106:
	.string	"PT_ENTRY_FW_CPU0"
.LASF107:
	.string	"PT_ENTRY_FW_CPU1"
.LASF125:
	.string	"pPtTable_Flash_Erase"
.LASF126:
	.string	"pPtTable_Flash_Write"
.LASF66:
	.string	"qeWriteRegLen"
.LASF129:
	.string	"HAL_ERROR"
.LASF26:
	.string	"resetCreadCmd"
.LASF11:
	.string	"long double"
.LASF85:
	.string	"timeE32k"
.LASF12:
	.string	"char"
.LASF58:
	.string	"wrEnableIndex"
.LASF49:
	.string	"frDioDmyClk"
.LASF43:
	.string	"frDmyClk"
.LASF100:
	.string	"PT_ERROR_FALSH_ERASE"
.LASF99:
	.string	"PT_ERROR_FALSH_WRITE"
.LASF140:
	.string	"ptEntry_hal"
.LASF135:
	.string	"PtTable_Get_Active_Entries"
.LASF86:
	.string	"timeE64k"
.LASF150:
	.string	"size0"
.LASF151:
	.string	"size1"
.LASF75:
	.string	"cRExit"
.LASF112:
	.string	"entryCnt"
.LASF5:
	.string	"short unsigned int"
.LASF142:
	.string	"ptEntry"
.LASF161:
	.string	"part"
.LASF145:
	.string	"hal_boot2_partition_addr_inactive"
.LASF94:
	.string	"PT_ERROR_ENTRY_NOT_FOUND"
.LASF27:
	.string	"resetCreadCmdSize"
.LASF35:
	.string	"sectorEraseCmd"
.LASF52:
	.string	"fastReadQioCmd"
.LASF15:
	.string	"uint32_t"
.LASF34:
	.string	"chipEraseCmd"
.LASF88:
	.string	"timeCe"
.LASF82:
	.string	"deBurstWrapDataMode"
.LASF77:
	.string	"burstWrapCmdDmyClk"
.LASF144:
	.string	"hal_boot2_get_active_entries"
.LASF13:
	.string	"uint8_t"
.LASF157:
	.string	"hal_boot2_partition_bus_addr"
.LASF16:
	.string	"SUCCESS"
.LASF131:
	.string	"HALpPtTable_Flash_Erase"
.LASF132:
	.string	"HALpPtTable_Flash_Write"
.LASF128:
	.string	"HAL_SUCCESS"
.LASF154:
	.string	"hal_boot2_partition_addr"
.LASF165:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF137:
	.string	"PtTable_Update_Entry"
.LASF87:
	.string	"timePagePgm"
.LASF70:
	.string	"readRegCmd"
.LASF41:
	.string	"qppAddrMode"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_boot2.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
