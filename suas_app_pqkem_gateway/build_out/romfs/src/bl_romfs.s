	.file	"bl_romfs.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/romfs" "/home/chandu/sdk/bl602_iot_sdk/components/fs/romfs/src/bl_romfs.c"
	.globl	romfh_t
	.section	.bss.romfh_t,"aw",@nobits
	.align	2
	.type	romfh_t, @object
	.size	romfh_t, 16
romfh_t:
	.zero	16
	.section	.sbss.romfs_root,"aw",@nobits
	.align	2
	.type	romfs_root, @object
	.size	romfs_root, 4
romfs_root:
	.zero	4
	.section	.sbss.handle_romfs,"aw",@nobits
	.align	2
	.type	handle_romfs, @object
	.size	handle_romfs, 4
handle_romfs:
	.zero	4
	.section	.text.is_path_ch,"ax",@progbits
	.align	1
	.type	is_path_ch, @function
is_path_ch:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/fs/romfs/src/bl_romfs.c"
	.loc 1 74 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 75 8
	lbu	a4,-17(s0)
	li	a5,96
	bleu	a4,a5,.L2
	.loc 1 75 22 discriminator 1
	lbu	a4,-17(s0)
	li	a5,122
	bleu	a4,a5,.L3
.L2:
	.loc 1 75 38 discriminator 3
	lbu	a4,-17(s0)
	li	a5,64
	bleu	a4,a5,.L4
	.loc 1 76 26
	lbu	a4,-17(s0)
	li	a5,90
	bleu	a4,a5,.L3
.L4:
	.loc 1 76 42 discriminator 1
	lbu	a4,-17(s0)
	li	a5,47
	bleu	a4,a5,.L5
	.loc 1 77 26
	lbu	a4,-17(s0)
	li	a5,57
	bleu	a4,a5,.L3
.L5:
	.loc 1 77 42 discriminator 1
	lbu	a4,-17(s0)
	li	a5,47
	beq	a4,a5,.L3
	.loc 1 78 25
	lbu	a4,-17(s0)
	li	a5,46
	beq	a4,a5,.L3
	.loc 1 79 25
	lbu	a4,-17(s0)
	li	a5,95
	beq	a4,a5,.L3
	.loc 1 80 25
	lbu	a4,-17(s0)
	li	a5,45
	bne	a4,a5,.L6
.L3:
	.loc 1 83 16
	li	a5,1
	j	.L7
.L6:
	.loc 1 85 12
	li	a5,0
.L7:
	.loc 1 86 1
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
	.size	is_path_ch, .-is_path_ch
	.section	.rodata
	.align	2
.LC8:
	.string	"/romfs"
	.align	2
.LC9:
	.string	"bl_romfs.c"
	.align	2
.LC10:
	.string	"\033[31mERROR \033[0m"
	.align	2
.LC11:
	.string	"[%10u][%s: %s:%4d] format is error.\r\n"
	.align	2
.LC12:
	.string	"[%10u][%s: %s:%4d] is_path_ch. i = %d\r\n"
	.align	2
.LC13:
	.string	"[%10u][%s: %s:%4d] format error.\r\n"
	.section	.text.filter_format,"ax",@progbits
	.align	1
	.type	filter_format, @function
filter_format:
.LFB6:
	.loc 1 89 1
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
	.loc 1 95 11
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	strlen
	mv	a5,a0
	.loc 1 95 11 is_stmt 0 discriminator 1
	mv	a2,a5
	lui	a5,%hi(.LC8)
	addi	a1,a5,%lo(.LC8)
	lw	a0,-36(s0)
	call	strncmp
	sw	a0,-28(s0)
	.loc 1 96 8 is_stmt 1
	lw	a5,-28(s0)
	beq	a5,zero,.L9
.LBB142:
.LBB143:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE143:
.LBE142:
	.loc 1 97 16 discriminator 1
	beq	a5,zero,.L11
	.loc 1 97 100 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L12
.L11:
	.loc 1 97 129 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L12:
	.loc 1 97 16 discriminator 7
	li	a4,97
	lui	a5,%hi(.LC9)
	addi	a3,a5,%lo(.LC9)
	lui	a5,%hi(.LC10)
	addi	a2,a5,%lo(.LC10)
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	bl_printk
	.loc 1 98 16
	li	a5,-1
	j	.L13
.L9:
	.loc 1 102 12
	sw	zero,-20(s0)
	.loc 1 102 5
	j	.L14
.L26:
	.loc 1 104 33
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 1 104 18
	lbu	a5,0(a5)
	mv	a0,a5
	call	is_path_ch
	mv	a5,a0
	.loc 1 104 12 discriminator 1
	bne	a5,zero,.L15
.LBB144:
.LBB145:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE145:
.LBE144:
	.loc 1 105 20 discriminator 1
	beq	a5,zero,.L17
	.loc 1 105 106 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L18
.L17:
	.loc 1 105 135 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L18:
	.loc 1 105 20 discriminator 7
	lw	a5,-20(s0)
	li	a4,105
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC10)
	addi	a2,a2,%lo(.LC10)
	lui	a0,%hi(.LC12)
	addi	a0,a0,%lo(.LC12)
	call	bl_printk
	.loc 1 106 20
	li	a5,-2
	j	.L13
.L15:
	.loc 1 110 24
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 1 110 12
	li	a5,47
	bne	a4,a5,.L27
	.loc 1 113 12
	lw	a5,-20(s0)
	beq	a5,zero,.L21
	.loc 1 114 15
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bne	a4,a5,.L22
.LBB146:
.LBB147:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE147:
.LBE146:
	.loc 1 115 24 discriminator 1
	beq	a5,zero,.L24
	.loc 1 115 105 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L25
.L24:
	.loc 1 115 134 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L25:
	.loc 1 115 24 discriminator 7
	li	a4,115
	lui	a5,%hi(.LC9)
	addi	a3,a5,%lo(.LC9)
	lui	a5,%hi(.LC10)
	addi	a2,a5,%lo(.LC10)
	lui	a5,%hi(.LC13)
	addi	a0,a5,%lo(.LC13)
	call	bl_printk
	.loc 1 116 24
	li	a5,-3
	j	.L13
.L22:
	.loc 1 118 23
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	j	.L20
.L21:
	.loc 1 121 19
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	j	.L20
.L27:
	.loc 1 111 13
	nop
.L20:
	.loc 1 102 28 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L14:
	.loc 1 102 19 discriminator 1
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	bgtu	a4,a5,.L26
	.loc 1 125 12
	li	a5,0
.L13:
	.loc 1 126 1
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
	.size	filter_format, .-filter_format
	.section	.rodata
	.align	2
.LC14:
	.string	"media"
	.align	2
.LC15:
	.string	"[%10u][%s: %s:%4d] [EF] [PART] [XIP] error when get romfs partition %d\r\n"
	.align	2
.LC16:
	.string	"[%10u][%s: %s:%4d] romfs has no XIP-Addr\r\n"
	.align	2
.LC17:
	.string	"-rom1fs-"
	.align	2
.LC18:
	.string	"[%10u][%s: %s:%4d] romfs magic is NOT correct\r\n"
	.section	.text.romfs_mount,"ax",@progbits
	.align	1
	.type	romfs_mount, @function
romfs_mount:
.LFB7:
	.loc 1 129 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 133 16
	li	a2,2
	lui	a5,%hi(handle_romfs)
	addi	a1,a5,%lo(handle_romfs)
	lui	a5,%hi(.LC14)
	addi	a0,a5,%lo(.LC14)
	call	bl_mtd_open
	sw	a0,-20(s0)
	.loc 1 133 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L29
.LBB148:
.LBB149:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE149:
.LBE148:
	.loc 1 134 16 discriminator 1
	beq	a5,zero,.L31
	.loc 1 134 135 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L32
.L31:
	.loc 1 134 164 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L32:
	.loc 1 134 16 discriminator 7
	lw	a5,-20(s0)
	li	a4,134
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC10)
	addi	a2,a2,%lo(.LC10)
	lui	a0,%hi(.LC15)
	addi	a0,a0,%lo(.LC15)
	call	bl_printk
	.loc 1 135 16
	li	a5,-1
	j	.L42
.L29:
	.loc 1 137 5
	addi	a5,s0,-48
	li	a2,28
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 138 5
	lui	a5,%hi(handle_romfs)
	lw	a5,%lo(handle_romfs)(a5)
	addi	a4,s0,-48
	mv	a1,a4
	mv	a0,a5
	call	bl_mtd_info
	.loc 1 140 18
	lw	a5,-24(s0)
	.loc 1 140 8
	bne	a5,zero,.L34
.LBB150:
.LBB151:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE151:
.LBE150:
	.loc 1 141 16 discriminator 1
	beq	a5,zero,.L36
	.loc 1 141 105 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L37
.L36:
	.loc 1 141 134 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L37:
	.loc 1 141 16 discriminator 7
	li	a4,141
	lui	a5,%hi(.LC9)
	addi	a3,a5,%lo(.LC9)
	lui	a5,%hi(.LC10)
	addi	a2,a5,%lo(.LC10)
	lui	a5,%hi(.LC16)
	addi	a0,a5,%lo(.LC16)
	call	bl_printk
	.loc 1 142 16
	li	a5,-1
	j	.L42
.L34:
	.loc 1 145 33
	lw	s1,-24(s0)
	.loc 1 145 14
	lui	a5,%hi(.LC17)
	addi	a0,a5,%lo(.LC17)
	call	strlen
	mv	a5,a0
	.loc 1 145 14 is_stmt 0 discriminator 1
	mv	a2,a5
	lui	a5,%hi(.LC17)
	addi	a1,a5,%lo(.LC17)
	mv	a0,s1
	call	memcmp
	mv	a5,a0
	.loc 1 145 8 is_stmt 1 discriminator 2
	beq	a5,zero,.L38
.LBB152:
.LBB153:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE153:
.LBE152:
	.loc 1 146 16 discriminator 1
	beq	a5,zero,.L40
	.loc 1 146 110 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L41
.L40:
	.loc 1 146 139 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L41:
	.loc 1 146 16 discriminator 7
	li	a4,146
	lui	a5,%hi(.LC9)
	addi	a3,a5,%lo(.LC9)
	lui	a5,%hi(.LC10)
	addi	a2,a5,%lo(.LC10)
	lui	a5,%hi(.LC18)
	addi	a0,a5,%lo(.LC18)
	call	bl_printk
	.loc 1 147 16
	li	a5,-1
	j	.L42
.L38:
	.loc 1 150 30
	lw	a4,-24(s0)
	.loc 1 150 16
	lui	a5,%hi(romfs_root)
	sw	a4,%lo(romfs_root)(a5)
	.loc 1 152 5
	lui	a5,%hi(romfs_root)
	lw	a5,%lo(romfs_root)(a5)
	li	a4,0
	li	a3,64
	mv	a2,a5
	li	a1,152
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	log_buf_out
	.loc 1 154 12
	li	a5,0
.L42:
	.loc 1 155 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	romfs_mount, .-romfs_mount
	.section	.text.dirent_type,"ax",@progbits
	.align	1
	.type	dirent_type, @function
dirent_type:
.LFB8:
	.loc 1 158 1
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
	.loc 1 159 20
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 159 67
	slli	a4,a5,24
	.loc 1 159 79
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 159 126
	slli	a3,a5,8
	li	a5,16711680
	and	a5,a3,a5
	.loc 1 159 74
	or	a4,a4,a5
	.loc 1 159 137
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 159 184
	srli	a3,a5,8
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a3,a5
	.loc 1 159 132
	or	a4,a4,a5
	.loc 1 159 195
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 159 242
	srli	a5,a5,24
	.loc 1 159 190
	or	a5,a4,a5
	.loc 1 159 251
	andi	a5,a5,7
	.loc 1 159 8
	bne	a5,zero,.L44
	.loc 1 160 16
	li	a5,0
	j	.L45
.L44:
	.loc 1 161 27
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 161 74
	slli	a4,a5,24
	.loc 1 161 86
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 161 133
	slli	a3,a5,8
	li	a5,16711680
	and	a5,a3,a5
	.loc 1 161 81
	or	a4,a4,a5
	.loc 1 161 144
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 161 191
	srli	a3,a5,8
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a3,a5
	.loc 1 161 139
	or	a4,a4,a5
	.loc 1 161 202
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 161 249
	srli	a5,a5,24
	.loc 1 161 197
	or	a5,a4,a5
	.loc 1 161 258
	andi	a4,a5,7
	.loc 1 161 15
	li	a5,2
	bne	a4,a5,.L46
	.loc 1 162 16
	li	a5,2
	j	.L45
.L46:
	.loc 1 163 27
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 163 74
	slli	a4,a5,24
	.loc 1 163 86
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 163 133
	slli	a3,a5,8
	li	a5,16711680
	and	a5,a3,a5
	.loc 1 163 81
	or	a4,a4,a5
	.loc 1 163 144
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 163 191
	srli	a3,a5,8
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a3,a5
	.loc 1 163 139
	or	a4,a4,a5
	.loc 1 163 202
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 163 249
	srli	a5,a5,24
	.loc 1 163 197
	or	a5,a4,a5
	.loc 1 163 258
	andi	a4,a5,7
	.loc 1 163 15
	li	a5,1
	bne	a4,a5,.L47
	.loc 1 164 16
	li	a5,1
	j	.L45
.L47:
	.loc 1 167 12
	li	a5,3
.L45:
	.loc 1 168 1
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
.LFE8:
	.size	dirent_type, .-dirent_type
	.section	.text.romfs_endaddr,"ax",@progbits
	.align	1
	.type	romfs_endaddr, @function
romfs_endaddr:
.LFB9:
	.loc 1 171 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 172 42
	lui	a5,%hi(romfs_root)
	lw	a5,%lo(romfs_root)(a5)
	.loc 1 172 65
	addi	a5,a5,8
	.loc 1 172 40
	lw	a5,0(a5)
	.loc 1 172 97
	slli	a4,a5,24
	.loc 1 172 111
	lui	a5,%hi(romfs_root)
	lw	a5,%lo(romfs_root)(a5)
	.loc 1 172 134
	addi	a5,a5,8
	.loc 1 172 109
	lw	a5,0(a5)
	.loc 1 172 166
	slli	a3,a5,8
	li	a5,16711680
	and	a5,a3,a5
	.loc 1 172 104
	or	a4,a4,a5
	.loc 1 172 179
	lui	a5,%hi(romfs_root)
	lw	a5,%lo(romfs_root)(a5)
	.loc 1 172 202
	addi	a5,a5,8
	.loc 1 172 177
	lw	a5,0(a5)
	.loc 1 172 234
	srli	a3,a5,8
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a3,a5
	.loc 1 172 172
	or	a4,a4,a5
	.loc 1 172 247
	lui	a5,%hi(romfs_root)
	lw	a5,%lo(romfs_root)(a5)
	.loc 1 172 270
	addi	a5,a5,8
	.loc 1 172 245
	lw	a5,0(a5)
	.loc 1 172 302
	srli	a5,a5,24
	.loc 1 172 240
	or	a5,a4,a5
	.loc 1 172 13
	lui	a4,%hi(romfs_root)
	lw	a4,%lo(romfs_root)(a4)
	.loc 1 172 34
	add	a5,a5,a4
	.loc 1 173 1
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
.LFE9:
	.size	romfs_endaddr, .-romfs_endaddr
	.section	.text.dirent_hardfh,"ax",@progbits
	.align	1
	.type	dirent_hardfh, @function
dirent_hardfh:
.LFB10:
	.loc 1 176 1
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
	.loc 1 177 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 177 63
	slli	a4,a5,24
	.loc 1 177 75
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 177 122
	slli	a3,a5,8
	li	a5,16711680
	and	a5,a3,a5
	.loc 1 177 70
	or	a4,a4,a5
	.loc 1 177 133
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 177 180
	srli	a3,a5,8
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a3,a5
	.loc 1 177 128
	or	a4,a4,a5
	.loc 1 177 191
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 177 238
	srli	a5,a5,24
	.loc 1 177 186
	or	a5,a4,a5
	.loc 1 177 246
	andi	a5,a5,-16
	.loc 1 178 1
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
.LFE10:
	.size	dirent_hardfh, .-dirent_hardfh
	.section	.text.dirent_childaddr,"ax",@progbits
	.align	1
	.type	dirent_childaddr, @function
dirent_childaddr:
.LFB11:
	.loc 1 181 1
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
	.loc 1 182 35
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 182 16
	lw	a5,0(a5)
	.loc 1 182 67
	slli	a4,a5,24
	.loc 1 182 98
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 182 79
	lw	a5,0(a5)
	.loc 1 182 130
	slli	a3,a5,8
	li	a5,16711680
	and	a5,a3,a5
	.loc 1 182 74
	or	a4,a4,a5
	.loc 1 182 160
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 182 141
	lw	a5,0(a5)
	.loc 1 182 192
	srli	a3,a5,8
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a3,a5
	.loc 1 182 136
	or	a4,a4,a5
	.loc 1 182 222
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 182 203
	lw	a5,0(a5)
	.loc 1 182 254
	srli	a5,a5,24
	.loc 1 182 198
	or	a5,a4,a5
	.loc 1 182 262
	andi	a5,a5,-16
	.loc 1 183 1
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
.LFE11:
	.size	dirent_childaddr, .-dirent_childaddr
	.section	.text.dirent_size,"ax",@progbits
	.align	1
	.type	dirent_size, @function
dirent_size:
.LFB12:
	.loc 1 186 1
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
	.loc 1 187 35
	lw	a5,-20(s0)
	addi	a5,a5,8
	.loc 1 187 16
	lw	a5,0(a5)
	.loc 1 187 67
	slli	a4,a5,24
	.loc 1 187 98
	lw	a5,-20(s0)
	addi	a5,a5,8
	.loc 1 187 79
	lw	a5,0(a5)
	.loc 1 187 130
	slli	a3,a5,8
	li	a5,16711680
	and	a5,a3,a5
	.loc 1 187 74
	or	a4,a4,a5
	.loc 1 187 160
	lw	a5,-20(s0)
	addi	a5,a5,8
	.loc 1 187 141
	lw	a5,0(a5)
	.loc 1 187 192
	srli	a3,a5,8
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a3,a5
	.loc 1 187 136
	or	a4,a4,a5
	.loc 1 187 222
	lw	a5,-20(s0)
	addi	a5,a5,8
	.loc 1 187 203
	lw	a5,0(a5)
	.loc 1 187 254
	srli	a5,a5,24
	.loc 1 187 198
	or	a5,a4,a5
	.loc 1 188 1
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
.LFE12:
	.size	dirent_size, .-dirent_size
	.section	.rodata
	.align	2
.LC19:
	.string	"[%10u][%s: %s:%4d] addr_start = %p, dirent_type(addr_start) = %d\r\n"
	.align	2
.LC20:
	.string	"[%10u][%s: %s:%4d] unknow the dirent_type.\r\n"
	.align	2
.LC21:
	.string	"\033[33mWARN  \033[0m"
	.align	2
.LC22:
	.string	"[%10u][%s: %s:%4d] start >= end, not found path = %s, addr_start = %p, addr_end = %p\r\n"
	.section	.text.file_info,"ax",@progbits
	.align	1
	.type	file_info, @function
file_info:
.LFB13:
	.loc 1 191 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	.loc 1 192 11
	lw	a5,-40(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 193 11
	lw	a5,-44(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 199 16
	lw	a0,-36(s0)
	call	strlen
	mv	a4,a0
	.loc 1 199 8 discriminator 1
	li	a5,64
	bleu	a4,a5,.L57
	.loc 1 200 16
	li	a5,-1
	j	.L58
.L57:
	.loc 1 205 20
	lui	a5,%hi(romfs_root)
	lw	a5,%lo(romfs_root)(a5)
	.loc 1 205 8
	lw	a4,-20(s0)
	bne	a4,a5,.L75
	.loc 1 206 22
	lui	a5,%hi(romfs_root)
	lw	s1,%lo(romfs_root)(a5)
	.loc 1 206 47
	lui	a5,%hi(romfs_root)
	lw	a5,%lo(romfs_root)(a5)
	.loc 1 206 65
	addi	a5,a5,16
	.loc 1 206 47
	mv	a0,a5
	call	strlen
	mv	a5,a0
	.loc 1 206 75 discriminator 1
	addi	a5,a5,16
	.loc 1 206 79 discriminator 1
	andi	a5,a5,-16
	.loc 1 206 90 discriminator 1
	addi	a5,a5,80
	.loc 1 206 20 discriminator 1
	add	a5,s1,a5
	sw	a5,-20(s0)
.L75:
	.loc 1 211 18
	lw	a0,-20(s0)
	call	dirent_type
	mv	a4,a0
	.loc 1 211 12 discriminator 1
	li	a5,1
	bne	a4,a5,.L60
	.loc 1 212 46
	lw	a5,-20(s0)
	addi	s1,a5,16
	.loc 1 212 22
	lw	a0,-36(s0)
	call	strlen
	mv	a5,a0
	.loc 1 212 22 is_stmt 0 discriminator 1
	mv	a2,a5
	mv	a1,s1
	lw	a0,-36(s0)
	call	memcmp
	mv	a5,a0
	.loc 1 212 16 is_stmt 1 discriminator 2
	bne	a5,zero,.L61
	.loc 1 213 37
	lw	a0,-36(s0)
	call	strlen
	mv	a5,a0
	.loc 1 213 35 discriminator 1
	addi	a5,a5,16
	.loc 1 213 31 discriminator 1
	lw	a4,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 213 20 discriminator 1
	bne	a5,zero,.L61
	.loc 1 214 30
	lw	a0,-20(s0)
	call	dirent_hardfh
	mv	a5,a0
	.loc 1 214 24 discriminator 1
	beq	a5,zero,.L76
	.loc 1 217 43
	lui	a5,%hi(romfs_root)
	lw	s1,%lo(romfs_root)(a5)
	.loc 1 217 45
	lw	a0,-20(s0)
	call	dirent_hardfh
	mv	a5,a0
	.loc 1 217 30 discriminator 1
	add	a5,s1,a5
	sw	a5,-24(s0)
	.loc 1 219 21
	j	.L63
.L60:
	.loc 1 222 25
	lw	a0,-20(s0)
	call	dirent_type
	mv	a4,a0
	.loc 1 222 19 discriminator 1
	li	a5,2
	bne	a4,a5,.L64
	.loc 1 223 46
	lw	a5,-20(s0)
	addi	s1,a5,16
	.loc 1 223 22
	lw	a0,-36(s0)
	call	strlen
	mv	a5,a0
	.loc 1 223 22 is_stmt 0 discriminator 1
	mv	a2,a5
	mv	a1,s1
	lw	a0,-36(s0)
	call	memcmp
	mv	a5,a0
	.loc 1 223 16 is_stmt 1 discriminator 2
	bne	a5,zero,.L61
	.loc 1 224 37
	lw	a0,-36(s0)
	call	strlen
	mv	a5,a0
	.loc 1 224 35 discriminator 1
	addi	a5,a5,16
	.loc 1 224 31 discriminator 1
	lw	a4,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 224 20 discriminator 1
	bne	a5,zero,.L61
	.loc 1 225 43
	lui	a5,%hi(romfs_root)
	lw	s1,%lo(romfs_root)(a5)
	.loc 1 225 45
	lw	a0,-20(s0)
	call	dirent_hardfh
	mv	a5,a0
	.loc 1 225 30 discriminator 1
	add	a5,s1,a5
	sw	a5,-24(s0)
	.loc 1 226 21
	j	.L63
.L64:
	.loc 1 229 25
	lw	a0,-20(s0)
	call	dirent_type
	mv	a5,a0
	.loc 1 229 19 discriminator 1
	beq	a5,zero,.L61
.LBB154:
.LBB155:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE155:
.LBE154:
	.loc 1 230 20 discriminator 1
	beq	a5,zero,.L66
	.loc 1 230 133 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	s1,a0
	j	.L67
.L66:
	.loc 1 230 162 discriminator 3
	call	xTaskGetTickCount
	mv	s1,a0
.L67:
	.loc 1 230 20 discriminator 7
	lw	a0,-20(s0)
	call	dirent_type
	mv	a5,a0
	.loc 1 230 20 is_stmt 0 discriminator 8
	mv	a6,a5
	lw	a5,-20(s0)
	li	a4,230
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC10)
	addi	a2,a2,%lo(.LC10)
	mv	a1,s1
	lui	a0,%hi(.LC19)
	addi	a0,a0,%lo(.LC19)
	call	bl_printk
	.loc 1 231 13 is_stmt 1
	li	a4,0
	li	a3,8
	lw	a2,-20(s0)
	li	a1,231
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	log_buf_out
.LBB156:
.LBB157:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE157:
.LBE156:
	.loc 1 232 20 discriminator 1
	beq	a5,zero,.L69
	.loc 1 232 111 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L70
.L69:
	.loc 1 232 140 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L70:
	.loc 1 232 20 discriminator 7
	li	a4,232
	lui	a5,%hi(.LC9)
	addi	a3,a5,%lo(.LC9)
	lui	a5,%hi(.LC10)
	addi	a2,a5,%lo(.LC10)
	lui	a5,%hi(.LC20)
	addi	a0,a5,%lo(.LC20)
	call	bl_printk
	.loc 1 233 20
	li	a5,-1
	j	.L58
.L61:
	.loc 1 237 33
	lui	a5,%hi(romfs_root)
	lw	s1,%lo(romfs_root)(a5)
	.loc 1 237 35
	lw	a0,-20(s0)
	call	dirent_hardfh
	mv	a5,a0
	.loc 1 237 20 discriminator 1
	add	a5,s1,a5
	sw	a5,-20(s0)
	.loc 1 238 12
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L75
.LBB158:
.LBB159:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE159:
.LBE158:
	.loc 1 239 20 discriminator 1
	beq	a5,zero,.L73
	.loc 1 239 153 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L74
.L73:
	.loc 1 239 182 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L74:
	.loc 1 239 20 discriminator 7
	lw	a7,-24(s0)
	lw	a6,-20(s0)
	lw	a5,-36(s0)
	li	a4,239
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC21)
	addi	a2,a2,%lo(.LC21)
	lui	a0,%hi(.LC22)
	addi	a0,a0,%lo(.LC22)
	call	bl_printk
	.loc 1 240 20
	li	a5,-1
	j	.L58
.L76:
	.loc 1 215 25
	nop
.L63:
	.loc 1 246 25
	lw	a5,-40(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 247 23
	lw	a5,-44(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 248 12
	li	a5,0
.L58:
	.loc 1 249 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	file_info, .-file_info
	.section	.rodata
	.align	2
.LC23:
	.string	"[%10u][%s: %s:%4d] not support path.\r\n"
	.align	2
.LC24:
	.string	"[%10u][%s: %s:%4d] name too long!\r\n"
	.align	2
.LC25:
	.string	"[%10u][%s: %s:%4d] file info error, p_name = %s, addr_start = %p, addr_end = %p\r\n"
	.align	2
.LC26:
	.string	"[%10u][%s: %s:%4d] file info error.\r\n"
	.section	.text.dirent_file,"ax",@progbits
	.align	1
	.globl	dirent_file
	.type	dirent_file, @function
dirent_file:
.LFB14:
	.loc 1 257 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	sw	s1,116(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	a0,-116(s0)
	sw	a1,-120(s0)
	sw	a2,-124(s0)
	.loc 1 261 11
	sw	zero,-20(s0)
	.loc 1 263 11
	sw	zero,-28(s0)
	.loc 1 264 10
	sb	zero,-21(s0)
	.loc 1 269 9
	lw	a0,-116(s0)
	call	strlen
	mv	s1,a0
	.loc 1 269 24 discriminator 1
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	strlen
	mv	a5,a0
	.loc 1 269 8 discriminator 2
	bgeu	s1,a5,.L78
	.loc 1 270 15
	li	a5,-1
	j	.L107
.L78:
	.loc 1 276 14
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	strlen
	mv	a5,a0
	.loc 1 276 14 is_stmt 0 discriminator 1
	mv	a2,a5
	lui	a5,%hi(.LC8)
	addi	a1,a5,%lo(.LC8)
	lw	a0,-116(s0)
	call	memcmp
	mv	a5,a0
	.loc 1 276 8 is_stmt 1 discriminator 2
	beq	a5,zero,.L80
.LBB160:
.LBB161:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE161:
.LBE160:
	.loc 1 277 16 discriminator 1
	beq	a5,zero,.L82
	.loc 1 277 101 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L83
.L82:
	.loc 1 277 130 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L83:
	.loc 1 277 16 discriminator 7
	li	a4,277
	lui	a5,%hi(.LC9)
	addi	a3,a5,%lo(.LC9)
	lui	a5,%hi(.LC10)
	addi	a2,a5,%lo(.LC10)
	lui	a5,%hi(.LC23)
	addi	a0,a5,%lo(.LC23)
	call	bl_printk
	.loc 1 278 16
	li	a5,-1
	j	.L107
.L80:
	.loc 1 280 21
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	strlen
	mv	a4,a0
	.loc 1 280 12 discriminator 1
	lw	a5,-116(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 281 10
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 1 281 8
	li	a5,47
	beq	a4,a5,.L84
	.loc 1 281 30 discriminator 1
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 281 26 discriminator 1
	beq	a5,zero,.L84
.LBB162:
.LBB163:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE163:
.LBE162:
	.loc 1 282 16 discriminator 1
	beq	a5,zero,.L86
	.loc 1 282 101 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L87
.L86:
	.loc 1 282 130 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L87:
	.loc 1 282 16 discriminator 7
	li	a4,282
	lui	a5,%hi(.LC9)
	addi	a3,a5,%lo(.LC9)
	lui	a5,%hi(.LC10)
	addi	a2,a5,%lo(.LC10)
	lui	a5,%hi(.LC23)
	addi	a0,a5,%lo(.LC23)
	call	bl_printk
	.loc 1 283 16
	li	a5,-1
	j	.L107
.L84:
	.loc 1 285 9
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 1 285 8
	li	a5,47
	bne	a4,a5,.L88
	.loc 1 286 16
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L88:
	.loc 1 290 16
	lui	a5,%hi(romfs_root)
	lw	a5,%lo(romfs_root)(a5)
	sw	a5,-32(s0)
	.loc 1 291 24
	call	romfs_endaddr
	mv	a5,a0
	.loc 1 291 14 discriminator 1
	sw	a5,-36(s0)
.L106:
	.loc 1 295 18
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 295 12
	beq	a5,zero,.L108
	.loc 1 298 17
	li	a1,47
	lw	a0,-20(s0)
	call	strchr
	sw	a0,-28(s0)
	.loc 1 300 12
	lbu	a4,-21(s0)
	li	a5,1
	bne	a4,a5,.L91
	.loc 1 301 43
	lui	a5,%hi(romfs_root)
	lw	s1,%lo(romfs_root)(a5)
	.loc 1 301 45
	lw	a5,-32(s0)
	mv	a0,a5
	call	dirent_childaddr
	mv	a5,a0
	.loc 1 301 43 discriminator 1
	add	a4,s1,a5
	.loc 1 301 28 discriminator 1
	lw	a5,-32(s0)
	.loc 1 301 16 discriminator 1
	bne	a4,a5,.L92
	.loc 1 302 24
	li	a5,-2
	j	.L107
.L92:
	.loc 1 304 37
	lui	a5,%hi(romfs_root)
	lw	s1,%lo(romfs_root)(a5)
	.loc 1 304 39
	lw	a5,-32(s0)
	mv	a0,a5
	call	dirent_childaddr
	mv	a5,a0
	.loc 1 304 37 discriminator 1
	add	a5,s1,a5
	.loc 1 304 24 discriminator 1
	sw	a5,-32(s0)
	.loc 1 305 30
	sb	zero,-21(s0)
.L91:
	.loc 1 308 12
	lw	a5,-28(s0)
	bne	a5,zero,.L93
	.loc 1 311 17
	lw	a0,-20(s0)
	call	strlen
	mv	a4,a0
	.loc 1 311 16 discriminator 1
	li	a5,64
	bleu	a4,a5,.L94
.LBB164:
.LBB165:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE165:
.LBE164:
	.loc 1 312 24 discriminator 1
	beq	a5,zero,.L96
	.loc 1 312 106 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L97
.L96:
	.loc 1 312 135 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L97:
	.loc 1 312 24 discriminator 7
	li	a4,312
	lui	a5,%hi(.LC9)
	addi	a3,a5,%lo(.LC9)
	lui	a5,%hi(.LC10)
	addi	a2,a5,%lo(.LC10)
	lui	a5,%hi(.LC24)
	addi	a0,a5,%lo(.LC24)
	call	bl_printk
	.loc 1 313 24
	li	a5,-1
	j	.L107
.L94:
	.loc 1 315 22
	addi	a4,s0,-36
	addi	a5,s0,-32
	mv	a2,a4
	mv	a1,a5
	lw	a0,-20(s0)
	call	file_info
	mv	a5,a0
	.loc 1 315 16 discriminator 1
	beq	a5,zero,.L109
.LBB166:
.LBB167:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE167:
.LBE166:
	.loc 1 316 24 discriminator 1
	beq	a5,zero,.L100
	.loc 1 316 152 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L101
.L100:
	.loc 1 316 181 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L101:
	.loc 1 316 24 discriminator 7
	lw	a5,-32(s0)
	lw	a4,-36(s0)
	mv	a7,a4
	mv	a6,a5
	lw	a5,-20(s0)
	li	a4,316
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC21)
	addi	a2,a2,%lo(.LC21)
	lui	a0,%hi(.LC25)
	addi	a0,a0,%lo(.LC25)
	call	bl_printk
	.loc 1 317 24
	li	a5,-1
	j	.L107
.L93:
	.loc 1 322 13
	addi	a5,s0,-104
	li	a2,65
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 323 41
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 1 323 13
	mv	a4,a5
	addi	a5,s0,-104
	mv	a2,a4
	lw	a1,-20(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 326 22
	addi	a3,s0,-36
	addi	a4,s0,-32
	addi	a5,s0,-104
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	file_info
	mv	a5,a0
	.loc 1 326 16 discriminator 1
	beq	a5,zero,.L102
.LBB168:
.LBB169:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE169:
.LBE168:
	.loc 1 327 24 discriminator 1
	beq	a5,zero,.L104
	.loc 1 327 108 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L105
.L104:
	.loc 1 327 137 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L105:
	.loc 1 327 24 discriminator 7
	li	a4,327
	lui	a5,%hi(.LC9)
	addi	a3,a5,%lo(.LC9)
	lui	a5,%hi(.LC10)
	addi	a2,a5,%lo(.LC10)
	lui	a5,%hi(.LC26)
	addi	a0,a5,%lo(.LC26)
	call	bl_printk
	.loc 1 328 24
	li	a5,-1
	j	.L107
.L102:
	.loc 1 331 30
	li	a5,1
	sb	a5,-21(s0)
	.loc 1 332 20
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 333 13
	nop
	.loc 1 295 12
	j	.L106
.L108:
	.loc 1 296 13
	nop
	j	.L90
.L109:
	.loc 1 320 13
	nop
.L90:
	.loc 1 339 25
	lw	a4,-32(s0)
	lw	a5,-120(s0)
	sw	a4,0(a5)
	.loc 1 340 23
	lw	a4,-36(s0)
	lw	a5,-124(s0)
	sw	a4,0(a5)
	.loc 1 342 12
	li	a5,0
.L107:
	.loc 1 343 1
	mv	a0,a5
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	lw	s1,116(sp)
	.cfi_restore 9
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	dirent_file, .-dirent_file
	.section	.rodata
	.align	2
.LC27:
	.string	"[%10u][%s: %s:%4d] romfs_root is null.\r\n"
	.align	2
.LC28:
	.string	"[%10u][%s: %s:%4d] path format is error.\r\n"
	.section	.text.romfs_open,"ax",@progbits
	.align	1
	.type	romfs_open, @function
romfs_open:
.LFB15:
	.loc 1 346 1
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
	.loc 1 353 20
	lui	a5,%hi(romfs_root)
	lw	a5,%lo(romfs_root)(a5)
	.loc 1 353 8
	bne	a5,zero,.L111
.LBB170:
.LBB171:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE171:
.LBE170:
	.loc 1 354 16 discriminator 1
	beq	a5,zero,.L113
	.loc 1 354 103 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L114
.L113:
	.loc 1 354 132 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L114:
	.loc 1 354 16 discriminator 7
	li	a4,354
	lui	a5,%hi(.LC9)
	addi	a3,a5,%lo(.LC9)
	lui	a5,%hi(.LC10)
	addi	a2,a5,%lo(.LC10)
	lui	a5,%hi(.LC27)
	addi	a0,a5,%lo(.LC27)
	call	bl_printk
	.loc 1 355 16
	li	a5,-1
	j	.L121
.L111:
	.loc 1 359 34
	lw	a0,-40(s0)
	call	strlen
	mv	a5,a0
	.loc 1 359 14 discriminator 1
	mv	a1,a5
	lw	a0,-40(s0)
	call	filter_format
	mv	a5,a0
	.loc 1 359 8 discriminator 2
	beq	a5,zero,.L116
.LBB172:
.LBB173:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE173:
.LBE172:
	.loc 1 360 16 discriminator 1
	beq	a5,zero,.L118
	.loc 1 360 105 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L119
.L118:
	.loc 1 360 134 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L119:
	.loc 1 360 16 discriminator 7
	li	a4,360
	lui	a5,%hi(.LC9)
	addi	a3,a5,%lo(.LC9)
	lui	a5,%hi(.LC10)
	addi	a2,a5,%lo(.LC10)
	lui	a5,%hi(.LC28)
	addi	a0,a5,%lo(.LC28)
	call	bl_printk
	.loc 1 361 16
	li	a5,-1
	j	.L121
.L116:
	.loc 1 365 14
	addi	a4,s0,-24
	addi	a5,s0,-20
	mv	a2,a4
	mv	a1,a5
	lw	a0,-40(s0)
	call	dirent_file
	mv	a5,a0
	.loc 1 365 8 discriminator 1
	beq	a5,zero,.L120
	.loc 1 366 16
	li	a5,-2
	j	.L121
.L120:
	.loc 1 369 15
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	sw	a4,4(a5)
	.loc 1 370 16
	lw	a5,-36(s0)
	sw	zero,8(a5)
	.loc 1 372 12
	li	a5,0
.L121:
	.loc 1 373 1
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
	.size	romfs_open, .-romfs_open
	.section	.text.romfs_close,"ax",@progbits
	.align	1
	.type	romfs_close, @function
romfs_close:
.LFB16:
	.loc 1 376 1
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
	.loc 1 379 15
	lw	a5,-20(s0)
	sw	zero,4(a5)
	.loc 1 380 16
	lw	a5,-20(s0)
	sw	zero,8(a5)
	.loc 1 381 12
	li	a5,-1
	.loc 1 382 1
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
.LFE16:
	.size	romfs_close, .-romfs_close
	.section	.text.romfs_read,"ax",@progbits
	.align	1
	.type	romfs_read, @function
romfs_read:
.LFB17:
	.loc 1 385 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	.loc 1 391 30
	lw	a5,-36(s0)
	lw	s1,4(a5)
	.loc 1 391 62
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 391 44
	addi	a5,a5,16
	mv	a0,a5
	call	strlen
	mv	a5,a0
	.loc 1 391 81 discriminator 1
	addi	a5,a5,16
	.loc 1 391 85 discriminator 1
	andi	a5,a5,-16
	.loc 1 391 91 discriminator 1
	addi	a5,a5,16
	.loc 1 391 17 discriminator 1
	add	a5,s1,a5
	sw	a5,-24(s0)
	.loc 1 392 20
	lw	a5,-36(s0)
	lw	a5,4(a5)
	mv	a0,a5
	call	dirent_size
	sw	a0,-28(s0)
	.loc 1 395 11
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 395 8
	lw	a4,-28(s0)
	bgtu	a4,a5,.L125
	.loc 1 397 16
	li	a5,0
	j	.L126
.L125:
	.loc 1 401 12
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 1 401 21
	lw	a5,-44(s0)
	add	a5,a4,a5
	.loc 1 401 8
	lw	a4,-28(s0)
	bleu	a4,a5,.L127
	.loc 1 402 13
	lw	a5,-44(s0)
	sw	a5,-20(s0)
	.loc 1 403 37
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 403 33
	lw	a4,-24(s0)
	add	a5,a4,a5
	.loc 1 403 9
	lw	a4,-20(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-40(s0)
	call	memcpy
	.loc 1 404 11
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 1 404 20
	lw	a5,-20(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,8(a5)
	j	.L128
.L127:
	.loc 1 406 32
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 406 28
	lw	a4,-28(s0)
	sub	a5,a4,a5
	.loc 1 406 13
	sw	a5,-20(s0)
	.loc 1 407 37
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 407 33
	lw	a4,-24(s0)
	add	a5,a4,a5
	.loc 1 407 9
	lw	a4,-20(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-40(s0)
	call	memcpy
	.loc 1 408 20
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	sw	a4,8(a5)
.L128:
	.loc 1 411 12
	lw	a5,-20(s0)
.L126:
	.loc 1 412 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	romfs_read, .-romfs_read
	.section	.text.romfs_ioctl,"ax",@progbits
	.align	1
	.globl	romfs_ioctl
	.type	romfs_ioctl, @function
romfs_ioctl:
.LFB18:
	.loc 1 415 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	.loc 1 416 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 417 22
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	.loc 1 419 8
	lw	a5,-36(s0)
	beq	a5,zero,.L130
	.loc 1 419 21 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L131
.L130:
	.loc 1 420 16
	li	a5,-2
	j	.L132
.L131:
	.loc 1 422 5
	lw	a4,-40(s0)
	li	a5,1
	bne	a4,a5,.L133
	.loc 1 426 39
	lw	a5,-36(s0)
	lw	s1,4(a5)
	.loc 1 426 71
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 426 53
	addi	a5,a5,16
	mv	a0,a5
	call	strlen
	mv	a5,a0
	.loc 1 426 90 discriminator 1
	addi	a5,a5,16
	.loc 1 426 94 discriminator 1
	andi	a5,a5,-16
	.loc 1 426 100 discriminator 1
	addi	a5,a5,16
	add	a4,s1,a5
	.loc 1 426 26 discriminator 1
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 1 427 33
	lw	a5,-36(s0)
	lw	a5,4(a5)
	mv	a0,a5
	call	dirent_size
	mv	a4,a0
	.loc 1 427 31 discriminator 1
	lw	a5,-24(s0)
	sw	a4,4(a5)
	.loc 1 428 20
	li	a5,0
	j	.L132
.L133:
	.loc 1 433 17
	li	a5,-3
	sw	a5,-20(s0)
	.loc 1 437 12
	lw	a5,-20(s0)
.L132:
	.loc 1 438 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	romfs_ioctl, .-romfs_ioctl
	.section	.rodata
	.align	2
.LC29:
	.string	"not support whence.\r\n"
	.section	.text.romfs_lseek,"ax",@progbits
	.align	1
	.type	romfs_lseek, @function
romfs_lseek:
.LFB19:
	.loc 1 441 1
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
	.loc 1 445 8
	lw	a5,-36(s0)
	bne	a5,zero,.L135
	.loc 1 446 16
	li	a5,-1
	j	.L136
.L135:
	.loc 1 449 20
	lw	a5,-36(s0)
	lw	a5,4(a5)
	mv	a0,a5
	call	dirent_size
	sw	a0,-24(s0)
	.loc 1 451 8
	lw	a5,-44(s0)
	bne	a5,zero,.L137
	.loc 1 452 12
	lw	a5,-40(s0)
	bge	a5,zero,.L138
	.loc 1 453 13
	lui	a5,%hi(.LC29)
	addi	a0,a5,%lo(.LC29)
	call	printf
	.loc 1 454 20
	li	a5,-2
	j	.L136
.L138:
	.loc 1 456 13
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	j	.L139
.L137:
	.loc 1 457 15
	lw	a4,-44(s0)
	li	a5,2
	bne	a4,a5,.L140
	.loc 1 458 12
	lw	a5,-40(s0)
	ble	a5,zero,.L141
	.loc 1 459 13
	lui	a5,%hi(.LC29)
	addi	a0,a5,%lo(.LC29)
	call	printf
	.loc 1 460 20
	li	a5,-3
	j	.L136
.L141:
	.loc 1 462 19
	lw	a4,-40(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 1 462 13
	sw	a5,-20(s0)
	j	.L139
.L140:
	.loc 1 463 15
	lw	a4,-44(s0)
	li	a5,1
	bne	a4,a5,.L142
	.loc 1 464 23
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 1 464 19
	lw	a5,-40(s0)
	add	a5,a4,a5
	.loc 1 464 13
	sw	a5,-20(s0)
	j	.L139
.L142:
	.loc 1 466 9
	lui	a5,%hi(.LC29)
	addi	a0,a5,%lo(.LC29)
	call	printf
	.loc 1 467 16
	li	a5,-4
	j	.L136
.L139:
	.loc 1 470 8
	lw	a5,-20(s0)
	blt	a5,zero,.L143
	.loc 1 470 27 discriminator 1
	lw	a5,-20(s0)
	.loc 1 470 19 discriminator 1
	lw	a4,-24(s0)
	bgeu	a4,a5,.L144
.L143:
	.loc 1 471 9
	lui	a5,%hi(.LC29)
	addi	a0,a5,%lo(.LC29)
	call	printf
	.loc 1 472 16
	li	a5,-5
	j	.L136
.L144:
	.loc 1 475 16
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	sw	a4,8(a5)
	.loc 1 477 14
	lw	a5,-36(s0)
	lw	a5,8(a5)
.L136:
	.loc 1 478 1
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
.LFE19:
	.size	romfs_lseek, .-romfs_lseek
	.section	.rodata
	.align	2
.LC30:
	.string	"[%10u][%s: %s:%4d] dirent_file res = %d\r\n"
	.align	2
.LC31:
	.string	"[%10u][%s: %s:%4d] dirent_type err.\r\n"
	.section	.text.romfs_stat,"ax",@progbits
	.align	1
	.type	romfs_stat, @function
romfs_stat:
.LFB20:
	.loc 1 481 1
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
	.loc 1 482 11
	sw	zero,-24(s0)
	.loc 1 483 11
	sw	zero,-28(s0)
	.loc 1 487 11
	addi	a4,s0,-28
	addi	a5,s0,-24
	mv	a2,a4
	mv	a1,a5
	lw	a0,-40(s0)
	call	dirent_file
	mv	a5,a0
	.loc 1 487 9 discriminator 1
	sw	a5,-20(s0)
	.loc 1 489 8
	lw	a5,-20(s0)
	beq	a5,zero,.L146
.LBB174:
.LBB175:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE175:
.LBE174:
	.loc 1 490 16 discriminator 1
	beq	a5,zero,.L148
	.loc 1 490 104 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L149
.L148:
	.loc 1 490 133 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L149:
	.loc 1 490 16 discriminator 7
	lw	a5,-20(s0)
	li	a4,490
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC21)
	addi	a2,a2,%lo(.LC21)
	lui	a0,%hi(.LC30)
	addi	a0,a0,%lo(.LC30)
	call	bl_printk
	.loc 1 491 16
	li	a5,-1
	j	.L158
.L146:
	.loc 1 494 20
	lw	a4,-24(s0)
	lui	a5,%hi(romfs_root)
	lw	a5,%lo(romfs_root)(a5)
	.loc 1 494 8
	bne	a4,a5,.L151
	.loc 1 495 21
	lw	a5,-44(s0)
	sw	zero,16(a5)
	j	.L152
.L151:
	.loc 1 497 18
	lw	a5,-24(s0)
	mv	a0,a5
	call	dirent_type
	mv	a4,a0
	.loc 1 497 12 discriminator 1
	li	a5,1
	bne	a4,a5,.L153
	.loc 1 498 25
	lw	a5,-44(s0)
	sw	zero,16(a5)
	.loc 1 499 25
	lw	a5,-44(s0)
	li	a4,16384
	sw	a4,4(a5)
	j	.L152
.L153:
	.loc 1 501 25
	lw	a5,-24(s0)
	mv	a0,a5
	call	dirent_type
	mv	a4,a0
	.loc 1 501 19 discriminator 1
	li	a5,2
	bne	a4,a5,.L154
	.loc 1 502 27
	lw	a5,-24(s0)
	mv	a0,a5
	call	dirent_size
	mv	a5,a0
	.loc 1 502 27 is_stmt 0 discriminator 1
	mv	a4,a5
	.loc 1 502 25 is_stmt 1 discriminator 1
	lw	a5,-44(s0)
	sw	a4,16(a5)
	.loc 1 504 25
	lw	a5,-44(s0)
	li	a4,32768
	sw	a4,4(a5)
	j	.L152
.L154:
.LBB176:
.LBB177:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE177:
.LBE176:
	.loc 1 506 20 discriminator 1
	beq	a5,zero,.L156
	.loc 1 506 104 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L157
.L156:
	.loc 1 506 133 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L157:
	.loc 1 506 20 discriminator 7
	li	a4,506
	lui	a5,%hi(.LC9)
	addi	a3,a5,%lo(.LC9)
	lui	a5,%hi(.LC21)
	addi	a2,a5,%lo(.LC21)
	lui	a5,%hi(.LC31)
	addi	a0,a5,%lo(.LC31)
	call	bl_printk
	.loc 1 507 20
	li	a5,-2
	j	.L158
.L152:
	.loc 1 511 12
	li	a5,0
.L158:
	.loc 1 512 1
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
	.size	romfs_stat, .-romfs_stat
	.section	.text.romfs_opendir,"ax",@progbits
	.align	1
	.type	romfs_opendir, @function
romfs_opendir:
.LFB21:
	.loc 1 515 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 516 18
	sw	zero,-20(s0)
	.loc 1 524 20
	lui	a5,%hi(romfs_root)
	lw	a5,%lo(romfs_root)(a5)
	.loc 1 524 8
	bne	a5,zero,.L160
.LBB178:
.LBB179:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE179:
.LBE178:
	.loc 1 525 16 discriminator 1
	beq	a5,zero,.L162
	.loc 1 525 103 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L163
.L162:
	.loc 1 525 132 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L163:
	.loc 1 525 16 discriminator 7
	li	a4,525
	lui	a5,%hi(.LC9)
	addi	a3,a5,%lo(.LC9)
	lui	a5,%hi(.LC10)
	addi	a2,a5,%lo(.LC10)
	lui	a5,%hi(.LC27)
	addi	a0,a5,%lo(.LC27)
	call	bl_printk
	.loc 1 526 15
	li	a5,0
	j	.L170
.L160:
	.loc 1 529 25
	li	a0,93
	call	aos_malloc
	sw	a0,-20(s0)
	.loc 1 530 8
	lw	a5,-20(s0)
	bne	a5,zero,.L165
	.loc 1 531 15
	li	a5,0
	j	.L170
.L165:
	.loc 1 533 5
	li	a2,93
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 1 535 11
	addi	a4,s0,-32
	addi	a5,s0,-28
	mv	a2,a4
	mv	a1,a5
	lw	a0,-40(s0)
	call	dirent_file
	mv	a5,a0
	.loc 1 535 9 discriminator 1
	sw	a5,-24(s0)
	.loc 1 537 8
	lw	a5,-24(s0)
	bne	a5,zero,.L166
	.loc 1 539 24
	lw	a4,-28(s0)
	lui	a5,%hi(romfs_root)
	lw	a5,%lo(romfs_root)(a5)
	.loc 1 539 12
	bne	a4,a5,.L167
	.loc 1 540 34
	lui	a5,%hi(romfs_root)
	lw	s1,%lo(romfs_root)(a5)
	.loc 1 540 59
	lui	a5,%hi(romfs_root)
	lw	a5,%lo(romfs_root)(a5)
	.loc 1 540 77
	addi	a5,a5,16
	.loc 1 540 59
	mv	a0,a5
	call	strlen
	mv	a5,a0
	.loc 1 540 87 discriminator 1
	addi	a5,a5,16
	.loc 1 540 91 discriminator 1
	andi	a5,a5,-16
	.loc 1 540 102 discriminator 1
	addi	a5,a5,80
	.loc 1 540 34 discriminator 1
	add	a4,s1,a5
	.loc 1 540 32 discriminator 1
	lw	a5,-20(s0)
	sw	a4,8(a5)
	j	.L168
.L167:
	.loc 1 542 22
	lw	a5,-28(s0)
	mv	a0,a5
	call	dirent_childaddr
	mv	a5,a0
	.loc 1 542 16 discriminator 1
	bne	a5,zero,.L169
	.loc 1 543 23
	li	a5,0
	j	.L170
.L169:
	.loc 1 545 38
	lui	a5,%hi(romfs_root)
	lw	s1,%lo(romfs_root)(a5)
	.loc 1 545 60
	lw	a5,-28(s0)
	mv	a0,a5
	call	dirent_childaddr
	mv	a5,a0
	.loc 1 545 38 discriminator 1
	add	a4,s1,a5
	.loc 1 545 36 discriminator 1
	lw	a5,-20(s0)
	sw	a4,8(a5)
.L168:
	.loc 1 548 26
	lw	a4,-32(s0)
	lw	a5,-20(s0)
	sw	a4,12(a5)
	.loc 1 549 26
	lw	a5,-20(s0)
	sw	zero,16(a5)
	.loc 1 550 16
	lw	a5,-20(s0)
	j	.L170
.L166:
	.loc 1 554 5
	lw	a0,-20(s0)
	call	aos_free
	.loc 1 555 11
	li	a5,0
.L170:
	.loc 1 556 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	romfs_opendir, .-romfs_opendir
	.section	.text.romfs_readdir,"ax",@progbits
	.align	1
	.type	romfs_readdir, @function
romfs_readdir:
.LFB22:
	.loc 1 559 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 560 18
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 1 562 8
	lw	a5,-20(s0)
	bne	a5,zero,.L172
	.loc 1 563 15
	li	a5,0
	j	.L173
.L172:
	.loc 1 568 22
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 568 12
	bne	a5,zero,.L174
	.loc 1 569 34
	lw	a5,-20(s0)
	lw	a4,8(a5)
	.loc 1 569 30
	lw	a5,-20(s0)
	sw	a4,16(a5)
	j	.L175
.L174:
	.loc 1 571 19
	lw	a5,-20(s0)
	lw	a4,16(a5)
	.loc 1 571 39
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 571 16
	bltu	a4,a5,.L176
	.loc 1 572 23
	li	a5,0
	j	.L173
.L176:
	.loc 1 575 28
	lw	a5,-20(s0)
	lw	a4,16(a5)
	.loc 1 575 48
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 575 24
	bgeu	a4,a5,.L177
	.loc 1 575 70 discriminator 1
	lw	a5,-20(s0)
	lw	a4,16(a5)
	.loc 1 575 89 discriminator 1
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 575 64 discriminator 1
	bgeu	a4,a5,.L178
.L177:
	.loc 1 577 31
	li	a5,0
	j	.L173
.L178:
	.loc 1 580 46
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 580 30
	mv	a0,a5
	call	dirent_hardfh
	mv	a5,a0
	.loc 1 580 24 discriminator 1
	beq	a5,zero,.L187
	.loc 1 585 34
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 585 24
	bne	a5,zero,.L180
	.loc 1 586 31
	li	a5,0
	j	.L173
.L180:
	.loc 1 588 45
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 588 31
	mv	a0,a5
	call	dirent_type
	mv	a4,a0
	.loc 1 588 24 discriminator 1
	li	a5,1
	beq	a4,a5,.L175
	.loc 1 589 45
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 589 31
	mv	a0,a5
	call	dirent_type
	mv	a4,a0
	.loc 1 588 62 discriminator 2
	li	a5,2
	beq	a4,a5,.L175
	.loc 1 593 51
	lui	a5,%hi(romfs_root)
	lw	s1,%lo(romfs_root)(a5)
	.loc 1 593 69
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 593 53
	mv	a0,a5
	call	dirent_hardfh
	mv	a5,a0
	.loc 1 593 51 discriminator 1
	add	a4,s1,a5
	.loc 1 593 38 discriminator 1
	lw	a5,-20(s0)
	sw	a4,16(a5)
	.loc 1 575 24
	j	.L176
.L187:
	.loc 1 582 25
	nop
.L175:
	.loc 1 599 31
	lw	a5,-20(s0)
	addi	a4,a5,25
	.loc 1 599 42
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 599 57
	addi	a5,a5,16
	.loc 1 599 9
	li	a2,64
	mv	a1,a5
	mv	a0,a4
	call	strncpy
	.loc 1 600 37
	lw	a5,-20(s0)
	sb	zero,89(a5)
	.loc 1 603 34
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 603 18
	mv	a0,a5
	call	dirent_hardfh
	mv	a5,a0
	.loc 1 603 12 discriminator 1
	bne	a5,zero,.L181
	.loc 1 604 34
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 1 604 30
	lw	a5,-20(s0)
	sw	a4,16(a5)
	j	.L182
.L181:
	.loc 1 606 43
	lui	a5,%hi(romfs_root)
	lw	s1,%lo(romfs_root)(a5)
	.loc 1 606 61
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 606 45
	mv	a0,a5
	call	dirent_hardfh
	mv	a5,a0
	.loc 1 606 43 discriminator 1
	add	a4,s1,a5
	.loc 1 606 30 discriminator 1
	lw	a5,-20(s0)
	sw	a4,16(a5)
.L182:
	.loc 1 610 37
	lw	a5,-20(s0)
	lbu	a4,25(a5)
	.loc 1 610 12
	li	a5,46
	bne	a4,a5,.L183
	.loc 1 610 74 discriminator 1
	lw	a5,-20(s0)
	lbu	a4,26(a5)
	.loc 1 610 49 discriminator 1
	li	a5,46
	bne	a4,a5,.L183
	.loc 1 610 111 discriminator 3
	lw	a5,-20(s0)
	lbu	a5,27(a5)
	.loc 1 610 86 discriminator 3
	beq	a5,zero,.L188
.L183:
	.loc 1 611 37
	lw	a5,-20(s0)
	lbu	a4,25(a5)
	.loc 1 610 125 discriminator 6
	li	a5,46
	bne	a4,a5,.L185
	.loc 1 611 74
	lw	a5,-20(s0)
	lbu	a5,26(a5)
	.loc 1 611 49
	bne	a5,zero,.L185
.L188:
	.loc 1 613 13
	nop
	.loc 1 568 12
	j	.L172
.L185:
	.loc 1 619 12
	lw	a5,-20(s0)
	addi	a5,a5,20
.L173:
	.loc 1 620 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	romfs_readdir, .-romfs_readdir
	.section	.text.romfs_closedir,"ax",@progbits
	.align	1
	.type	romfs_closedir, @function
romfs_closedir:
.LFB23:
	.loc 1 623 1
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
	.loc 1 624 18
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 1 626 8
	lw	a5,-20(s0)
	bne	a5,zero,.L190
	.loc 1 627 16
	li	a5,-1
	j	.L191
.L190:
	.loc 1 630 5
	lw	a0,-20(s0)
	call	aos_free
	.loc 1 631 12
	li	a5,0
.L191:
	.loc 1 632 1
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
.LFE23:
	.size	romfs_closedir, .-romfs_closedir
	.section	.rodata.romfs_ops,"a"
	.align	2
	.type	romfs_ops, @object
	.size	romfs_ops, 80
romfs_ops:
	.word	romfs_open
	.word	romfs_close
	.word	romfs_read
	.word	0
	.word	romfs_lseek
	.zero	4
	.word	romfs_stat
	.word	0
	.zero	4
	.word	romfs_opendir
	.word	romfs_readdir
	.word	romfs_closedir
	.zero	12
	.word	0
	.word	0
	.word	romfs_ioctl
	.zero	4
	.word	0
	.section	.text.romfs_register,"ax",@progbits
	.align	1
	.globl	romfs_register
	.type	romfs_register, @function
romfs_register:
.LFB24:
	.loc 1 652 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 653 14
	call	romfs_mount
	mv	a5,a0
	.loc 1 653 8 discriminator 1
	beq	a5,zero,.L193
	.loc 1 654 16
	li	a5,-1
	j	.L194
.L193:
	.loc 1 656 12
	li	a2,0
	lui	a5,%hi(romfs_ops)
	addi	a1,a5,%lo(romfs_ops)
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	aos_register_fs
	mv	a5,a0
.L194:
	.loc 1 657 1
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
.LFE24:
	.size	romfs_register, .-romfs_register
	.section	.rodata
	.align	2
.LC32:
	.string	"/romfs/child/aa.bin"
	.align	2
.LC33:
	.string	"\033[32mINFO  \033[0m"
	.align	2
.LC34:
	.string	"[%10u][%s: %s:%4d] fd = %d\r\n"
	.align	2
.LC35:
	.string	"[%10u][%s: %s:%4d] open error.\r\n"
	.align	2
.LC36:
	.string	"[%10u][%s: %s:%4d] case1:len = %d\r\n"
	.align	2
.LC37:
	.string	"[%10u][%s: %s:%4d] case2:len = %d\r\n"
	.align	2
.LC38:
	.string	"[%10u][%s: %s:%4d] case3:len = %d\r\n"
	.align	2
.LC39:
	.string	"[%10u][%s: %s:%4d] case4:len = %d\r\n"
	.align	2
.LC40:
	.string	"[%10u][%s: %s:%4d] buf:\r\n"
	.align	2
.LC41:
	.string	"[%10u][%s: %s:%4d] filebuf.buf = %p\r\n"
	.align	2
.LC42:
	.string	"[%10u][%s: %s:%4d] filebuf.bufsize = %lu\r\n"
	.align	2
.LC43:
	.string	"[%10u][%s: %s:%4d] aos_lseek(end) = 0x%08lx\r\n"
	.align	2
.LC44:
	.string	"[%10u][%s: %s:%4d] case5:len = %d\r\n"
	.section	.text.test1_romfs,"ax",@progbits
	.align	1
	.globl	test1_romfs
	.type	test1_romfs, @function
test1_romfs:
.LFB25:
	.loc 1 660 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	.loc 1 661 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 667 5
	addi	a5,s0,-80
	li	a2,50
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 669 10
	li	a1,0
	lui	a5,%hi(.LC32)
	addi	a0,a5,%lo(.LC32)
	call	aos_open
	sw	a0,-20(s0)
.LBB180:
.LBB181:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE181:
.LBE180:
	.loc 1 670 12 discriminator 1
	beq	a5,zero,.L197
	.loc 1 670 87 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L198
.L197:
	.loc 1 670 116 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L198:
	.loc 1 670 12 discriminator 7
	lw	a5,-20(s0)
	li	a4,670
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC34)
	addi	a0,a0,%lo(.LC34)
	call	bl_printk
	.loc 1 671 8
	lw	a5,-20(s0)
	bge	a5,zero,.L199
.LBB182:
.LBB183:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE183:
.LBE182:
	.loc 1 672 16 discriminator 1
	beq	a5,zero,.L201
	.loc 1 672 95 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L202
.L201:
	.loc 1 672 124 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L202:
	.loc 1 672 16 discriminator 7
	li	a4,672
	lui	a5,%hi(.LC9)
	addi	a3,a5,%lo(.LC9)
	lui	a5,%hi(.LC10)
	addi	a2,a5,%lo(.LC10)
	lui	a5,%hi(.LC35)
	addi	a0,a5,%lo(.LC35)
	call	bl_printk
	j	.L195
.L199:
	.loc 1 676 11
	addi	a5,s0,-80
	li	a2,1
	mv	a1,a5
	lw	a0,-20(s0)
	call	aos_read
	sw	a0,-24(s0)
.LBB184:
.LBB185:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE185:
.LBE184:
	.loc 1 677 12 discriminator 1
	beq	a5,zero,.L205
	.loc 1 677 94 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L206
.L205:
	.loc 1 677 123 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L206:
	.loc 1 677 12 discriminator 7
	lw	a5,-24(s0)
	li	a4,677
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC36)
	addi	a0,a0,%lo(.LC36)
	call	bl_printk
	.loc 1 678 5
	addi	a5,s0,-80
	li	a4,0
	li	a3,1
	mv	a2,a5
	li	a1,678
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	log_buf_out
	.loc 1 680 5
	li	a2,1
	li	a1,1
	lw	a0,-20(s0)
	call	aos_lseek
	.loc 1 681 5
	addi	a5,s0,-80
	li	a2,50
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 682 11
	addi	a5,s0,-80
	li	a2,1
	mv	a1,a5
	lw	a0,-20(s0)
	call	aos_read
	sw	a0,-24(s0)
.LBB186:
.LBB187:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE187:
.LBE186:
	.loc 1 683 12 discriminator 1
	beq	a5,zero,.L208
	.loc 1 683 94 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L209
.L208:
	.loc 1 683 123 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L209:
	.loc 1 683 12 discriminator 7
	lw	a5,-24(s0)
	li	a4,683
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC37)
	addi	a0,a0,%lo(.LC37)
	call	bl_printk
	.loc 1 684 5
	addi	a5,s0,-80
	li	a4,0
	li	a3,1
	mv	a2,a5
	li	a1,684
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	log_buf_out
	.loc 1 686 11
	addi	a5,s0,-80
	li	a2,50
	mv	a1,a5
	lw	a0,-20(s0)
	call	aos_read
	sw	a0,-24(s0)
.LBB188:
.LBB189:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE189:
.LBE188:
	.loc 1 687 12 discriminator 1
	beq	a5,zero,.L211
	.loc 1 687 94 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L212
.L211:
	.loc 1 687 123 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L212:
	.loc 1 687 12 discriminator 7
	lw	a5,-24(s0)
	li	a4,687
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC38)
	addi	a0,a0,%lo(.LC38)
	call	bl_printk
	.loc 1 688 5
	addi	a5,s0,-80
	li	a4,0
	li	a3,50
	mv	a2,a5
	li	a1,688
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	log_buf_out
	.loc 1 690 5
	li	a2,0
	li	a1,0
	lw	a0,-20(s0)
	call	aos_lseek
	.loc 1 691 5
	addi	a5,s0,-80
	li	a2,50
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 692 11
	addi	a5,s0,-80
	li	a2,50
	mv	a1,a5
	lw	a0,-20(s0)
	call	aos_read
	sw	a0,-24(s0)
.LBB190:
.LBB191:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE191:
.LBE190:
	.loc 1 693 12 discriminator 1
	beq	a5,zero,.L214
	.loc 1 693 94 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L215
.L214:
	.loc 1 693 123 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L215:
	.loc 1 693 12 discriminator 7
	lw	a5,-24(s0)
	li	a4,693
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC39)
	addi	a0,a0,%lo(.LC39)
	call	bl_printk
.LBB192:
.LBB193:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE193:
.LBE192:
	.loc 1 694 12 discriminator 1
	beq	a5,zero,.L217
	.loc 1 694 84 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L218
.L217:
	.loc 1 694 113 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L218:
	.loc 1 694 12 discriminator 7
	li	a4,694
	lui	a5,%hi(.LC9)
	addi	a3,a5,%lo(.LC9)
	lui	a5,%hi(.LC33)
	addi	a2,a5,%lo(.LC33)
	lui	a5,%hi(.LC40)
	addi	a0,a5,%lo(.LC40)
	call	bl_printk
	.loc 1 695 5
	addi	a5,s0,-80
	li	a4,0
	li	a3,50
	mv	a2,a5
	li	a1,695
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	log_buf_out
	.loc 1 697 5
	addi	a5,s0,-88
	mv	a2,a5
	li	a1,1
	lw	a0,-20(s0)
	call	aos_ioctl
.LBB194:
.LBB195:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE195:
.LBE194:
	.loc 1 698 12 discriminator 1
	beq	a5,zero,.L220
	.loc 1 698 96 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L221
.L220:
	.loc 1 698 125 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L221:
	.loc 1 698 12 discriminator 7
	lw	a5,-88(s0)
	li	a4,698
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC41)
	addi	a0,a0,%lo(.LC41)
	call	bl_printk
.LBB196:
.LBB197:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE197:
.LBE196:
	.loc 1 699 12 discriminator 1
	beq	a5,zero,.L223
	.loc 1 699 101 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L224
.L223:
	.loc 1 699 130 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L224:
	.loc 1 699 12 discriminator 7
	lw	a5,-84(s0)
	li	a4,699
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC42)
	addi	a0,a0,%lo(.LC42)
	call	bl_printk
	.loc 1 701 14
	li	a2,2
	li	a1,0
	lw	a0,-20(s0)
	call	aos_lseek
	sw	a0,-28(s0)
.LBB198:
.LBB199:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE199:
.LBE198:
	.loc 1 702 12 discriminator 1
	beq	a5,zero,.L226
	.loc 1 702 104 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L227
.L226:
	.loc 1 702 133 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L227:
	.loc 1 702 12 discriminator 7
	lw	a5,-28(s0)
	li	a4,702
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC43)
	addi	a0,a0,%lo(.LC43)
	call	bl_printk
	.loc 1 704 5
	addi	a5,s0,-80
	li	a2,50
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 705 11
	addi	a5,s0,-80
	li	a2,50
	mv	a1,a5
	lw	a0,-20(s0)
	call	aos_read
	sw	a0,-24(s0)
.LBB200:
.LBB201:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE201:
.LBE200:
	.loc 1 706 12 discriminator 1
	beq	a5,zero,.L229
	.loc 1 706 94 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L230
.L229:
	.loc 1 706 123 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L230:
	.loc 1 706 12 discriminator 7
	lw	a5,-24(s0)
	li	a4,706
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC44)
	addi	a0,a0,%lo(.LC44)
	call	bl_printk
	.loc 1 707 5
	addi	a5,s0,-80
	li	a4,0
	li	a3,50
	mv	a2,a5
	li	a1,707
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	log_buf_out
	.loc 1 709 5
	lw	a0,-20(s0)
	call	aos_close
.L195:
	.loc 1 710 1
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE25:
	.size	test1_romfs, .-test1_romfs
	.section	.rodata
	.align	2
.LC46:
	.string	"[%10u][%s: %s:%4d] test[%d] %s \r\n"
	.align	2
.LC47:
	.string	"[%10u][%s: %s:%4d] test[%d] open %s error, fd = %d\r\n"
	.align	2
.LC48:
	.string	"[%10u][%s: %s:%4d] test[%d] open fd = %d\r\n"
	.align	2
.LC49:
	.string	"[%10u][%s: %s:%4d] test[%d] buf:\r\n"
	.align	2
.LC0:
	.string	"/romfs/child_dir1/aa.bin"
	.align	2
.LC1:
	.string	"/romfs/child_dir2/son_dir/EE.bin"
	.align	2
.LC2:
	.string	"/romfs/child_dir2/bb.bin"
	.align	2
.LC3:
	.string	"/romfs/child_dir3/cc.bin"
	.align	2
.LC4:
	.string	"/romfs/11.bin"
	.align	2
.LC5:
	.string	"/romfs/22.bin"
	.align	2
.LC6:
	.string	"/romfs/33.bin"
	.align	2
.LC45:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.section	.text.test2_romfs,"ax",@progbits
	.align	1
	.globl	test2_romfs
	.type	test2_romfs, @function
test2_romfs:
.LFB26:
	.loc 1 713 1
	.cfi_startproc
	addi	sp,sp,-192
	.cfi_def_cfa_offset 192
	sw	ra,188(sp)
	sw	s0,184(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,192
	.cfi_def_cfa 8, 0
	.loc 1 715 9
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 717 9
	sw	zero,-28(s0)
	.loc 1 719 11
	lui	a5,%hi(.LC45)
	addi	a5,a5,%lo(.LC45)
	lw	a6,0(a5)
	lw	a0,4(a5)
	lw	a1,8(a5)
	lw	a2,12(a5)
	lw	a3,16(a5)
	lw	a4,20(a5)
	sw	a6,-184(s0)
	sw	a0,-180(s0)
	sw	a1,-176(s0)
	sw	a2,-172(s0)
	sw	a3,-168(s0)
	sw	a4,-164(s0)
	lw	a5,24(a5)
	sw	a5,-160(s0)
	.loc 1 729 12
	sw	zero,-20(s0)
	.loc 1 729 5
	j	.L232
.L249:
.LBB202:
.LBB203:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE203:
.LBE202:
	.loc 1 730 16 discriminator 1
	beq	a5,zero,.L234
	.loc 1 730 96 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L235
.L234:
	.loc 1 730 125 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L235:
	.loc 1 730 16 discriminator 7
	lw	a4,-20(s0)
	addi	a5,s0,-184
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a6,a5
	lw	a5,-20(s0)
	li	a4,730
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC21)
	addi	a2,a2,%lo(.LC21)
	lui	a0,%hi(.LC46)
	addi	a0,a0,%lo(.LC46)
	call	bl_printk
	.loc 1 733 27
	lw	a4,-20(s0)
	addi	a5,s0,-184
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 733 14
	li	a1,0
	mv	a0,a5
	call	aos_open
	sw	a0,-24(s0)
	.loc 1 734 12
	lw	a5,-24(s0)
	bge	a5,zero,.L236
.LBB204:
.LBB205:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE205:
.LBE204:
	.loc 1 735 20 discriminator 1
	beq	a5,zero,.L238
	.loc 1 735 119 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L239
.L238:
	.loc 1 735 148 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L239:
	.loc 1 735 20 discriminator 7
	lw	a4,-20(s0)
	addi	a5,s0,-184
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a7,-24(s0)
	mv	a6,a5
	lw	a5,-20(s0)
	li	a4,735
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC10)
	addi	a2,a2,%lo(.LC10)
	lui	a0,%hi(.LC47)
	addi	a0,a0,%lo(.LC47)
	call	bl_printk
	.loc 1 736 13
	j	.L240
.L236:
.LBB206:
.LBB207:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE207:
.LBE206:
	.loc 1 738 16 discriminator 1
	beq	a5,zero,.L242
	.loc 1 738 105 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L243
.L242:
	.loc 1 738 134 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L243:
	.loc 1 738 16 discriminator 7
	lw	a6,-24(s0)
	lw	a5,-20(s0)
	li	a4,738
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC48)
	addi	a0,a0,%lo(.LC48)
	call	bl_printk
	.loc 1 741 15
	j	.L244
.L248:
.LBB208:
.LBB209:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE209:
.LBE208:
	.loc 1 742 20 discriminator 1
	beq	a5,zero,.L246
	.loc 1 742 101 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L247
.L246:
	.loc 1 742 130 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L247:
	.loc 1 742 20 discriminator 7
	lw	a5,-20(s0)
	li	a4,742
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC49)
	addi	a0,a0,%lo(.LC49)
	call	bl_printk
	.loc 1 743 13
	addi	a5,s0,-156
	li	a4,0
	lw	a3,-28(s0)
	mv	a2,a5
	li	a1,743
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	log_buf_out
.L244:
	.loc 1 741 28
	addi	a5,s0,-156
	li	a2,128
	mv	a1,a5
	lw	a0,-24(s0)
	call	aos_read
	sw	a0,-28(s0)
	.loc 1 741 66 discriminator 1
	lw	a5,-28(s0)
	bgt	a5,zero,.L248
	.loc 1 746 9
	lw	a0,-24(s0)
	call	aos_close
.L240:
	.loc 1 729 25 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L232:
	.loc 1 729 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,6
	ble	a4,a5,.L249
	.loc 1 748 1
	nop
	nop
	lw	ra,188(sp)
	.cfi_restore 1
	lw	s0,184(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 192
	addi	sp,sp,192
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE26:
	.size	test2_romfs, .-test2_romfs
	.section	.rodata
	.align	2
.LC50:
	.string	"[%10u][%s: %s:%4d] test /romfs .\r\n"
	.align	2
.LC51:
	.string	"[%10u][%s: %s:%4d] addr = %ld\r\n"
	.align	2
.LC52:
	.string	"[%10u][%s: %s:%4d] test start_addr:%p, end_addr:%p\r\n"
	.align	2
.LC53:
	.string	"[%10u][%s: %s:%4d] st.st_size = %ld\r\n"
	.align	2
.LC54:
	.string	"[%10u][%s: %s:%4d] test /romfs/ .\r\n"
	.align	2
.LC55:
	.string	"/romfs/"
	.align	2
.LC56:
	.string	"[%10u][%s: %s:%4d] test /romf .\r\n"
	.align	2
.LC57:
	.string	"/romf"
	.align	2
.LC58:
	.string	"[%10u][%s: %s:%4d] test /romfs/child_dir1/\r\n"
	.align	2
.LC59:
	.string	"/romfs/child_dir1/"
	.align	2
.LC60:
	.string	"[%10u][%s: %s:%4d] test /romfs/child_dir1/aa.bin\r\n"
	.align	2
.LC61:
	.string	"[%10u][%s: %s:%4d] test /romfs/child_dir2\r\n"
	.align	2
.LC62:
	.string	"/romfs/child_dir2"
	.align	2
.LC63:
	.string	"[%10u][%s: %s:%4d] test /romfs/child_dir2/bb.bin\r\n"
	.align	2
.LC64:
	.string	"[%10u][%s: %s:%4d] test /romfs/child_dir2/son_dir\r\n"
	.align	2
.LC65:
	.string	"/romfs/child_dir2/son_dir"
	.align	2
.LC66:
	.string	"[%10u][%s: %s:%4d] test /romfs/child_dir2/son_dir/EE.bin\r\n"
	.section	.text.test3_romfs,"ax",@progbits
	.align	1
	.globl	test3_romfs
	.type	test3_romfs, @function
test3_romfs:
.LFB27:
	.loc 1 751 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	sw	s1,116(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	.loc 1 752 11
	sw	zero,-24(s0)
	.loc 1 753 11
	sw	zero,-28(s0)
.LBB210:
.LBB211:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE211:
.LBE210:
	.loc 1 757 12 discriminator 1
	beq	a5,zero,.L252
	.loc 1 757 93 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L253
.L252:
	.loc 1 757 122 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L253:
	.loc 1 757 12 discriminator 7
	li	a4,757
	lui	a5,%hi(.LC9)
	addi	a3,a5,%lo(.LC9)
	lui	a5,%hi(.LC21)
	addi	a2,a5,%lo(.LC21)
	lui	a5,%hi(.LC50)
	addi	a0,a5,%lo(.LC50)
	call	bl_printk
.LBB212:
.LBB213:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE213:
.LBE212:
	.loc 1 758 12 discriminator 1
	beq	a5,zero,.L255
	.loc 1 758 90 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	s1,a0
	j	.L256
.L255:
	.loc 1 758 119 discriminator 3
	call	xTaskGetTickCount
	mv	s1,a0
.L256:
	.loc 1 758 12 discriminator 7
	addi	a4,s0,-28
	addi	a5,s0,-24
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	dirent_file
	mv	a5,a0
	.loc 1 758 12 is_stmt 0 discriminator 8
	li	a4,758
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	mv	a1,s1
	lui	a0,%hi(.LC51)
	addi	a0,a0,%lo(.LC51)
	call	bl_printk
.LBB214:
.LBB215:
	.loc 2 181 31 is_stmt 1
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE215:
.LBE214:
	.loc 1 759 12 discriminator 1
	beq	a5,zero,.L258
	.loc 1 759 111 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L259
.L258:
	.loc 1 759 140 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L259:
	.loc 1 759 12 discriminator 7
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	mv	a6,a4
	li	a4,759
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC52)
	addi	a0,a0,%lo(.LC52)
	call	bl_printk
	.loc 1 760 11
	addi	a5,s0,-120
	mv	a2,a5
	lui	a5,%hi(.LC8)
	addi	a1,a5,%lo(.LC8)
	li	a0,0
	call	romfs_stat
	sw	a0,-20(s0)
	.loc 1 761 8
	lw	a5,-20(s0)
	bne	a5,zero,.L260
.LBB216:
.LBB217:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE217:
.LBE216:
	.loc 1 762 16 discriminator 1
	beq	a5,zero,.L262
	.loc 1 762 100 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L263
.L262:
	.loc 1 762 129 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L263:
	.loc 1 762 16 discriminator 7
	lw	a5,-104(s0)
	li	a4,762
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC53)
	addi	a0,a0,%lo(.LC53)
	call	bl_printk
.L260:
.LBB218:
.LBB219:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE219:
.LBE218:
	.loc 1 765 12 discriminator 1
	beq	a5,zero,.L265
	.loc 1 765 94 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L266
.L265:
	.loc 1 765 123 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L266:
	.loc 1 765 12 discriminator 7
	li	a4,765
	lui	a5,%hi(.LC9)
	addi	a3,a5,%lo(.LC9)
	lui	a5,%hi(.LC21)
	addi	a2,a5,%lo(.LC21)
	lui	a5,%hi(.LC54)
	addi	a0,a5,%lo(.LC54)
	call	bl_printk
.LBB220:
.LBB221:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE221:
.LBE220:
	.loc 1 766 12 discriminator 1
	beq	a5,zero,.L268
	.loc 1 766 90 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	s1,a0
	j	.L269
.L268:
	.loc 1 766 119 discriminator 3
	call	xTaskGetTickCount
	mv	s1,a0
.L269:
	.loc 1 766 12 discriminator 7
	addi	a4,s0,-28
	addi	a5,s0,-24
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC55)
	addi	a0,a5,%lo(.LC55)
	call	dirent_file
	mv	a5,a0
	.loc 1 766 12 is_stmt 0 discriminator 8
	li	a4,766
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	mv	a1,s1
	lui	a0,%hi(.LC51)
	addi	a0,a0,%lo(.LC51)
	call	bl_printk
.LBB222:
.LBB223:
	.loc 2 181 31 is_stmt 1
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE223:
.LBE222:
	.loc 1 767 12 discriminator 1
	beq	a5,zero,.L271
	.loc 1 767 111 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L272
.L271:
	.loc 1 767 140 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L272:
	.loc 1 767 12 discriminator 7
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	mv	a6,a4
	li	a4,767
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC52)
	addi	a0,a0,%lo(.LC52)
	call	bl_printk
	.loc 1 768 11
	addi	a5,s0,-120
	mv	a2,a5
	lui	a5,%hi(.LC8)
	addi	a1,a5,%lo(.LC8)
	li	a0,0
	call	romfs_stat
	sw	a0,-20(s0)
	.loc 1 769 8
	lw	a5,-20(s0)
	bne	a5,zero,.L273
.LBB224:
.LBB225:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE225:
.LBE224:
	.loc 1 770 16 discriminator 1
	beq	a5,zero,.L275
	.loc 1 770 100 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L276
.L275:
	.loc 1 770 129 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L276:
	.loc 1 770 16 discriminator 7
	lw	a5,-104(s0)
	li	a4,770
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC53)
	addi	a0,a0,%lo(.LC53)
	call	bl_printk
.L273:
.LBB226:
.LBB227:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE227:
.LBE226:
	.loc 1 773 12 discriminator 1
	beq	a5,zero,.L278
	.loc 1 773 92 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L279
.L278:
	.loc 1 773 121 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L279:
	.loc 1 773 12 discriminator 7
	li	a4,773
	lui	a5,%hi(.LC9)
	addi	a3,a5,%lo(.LC9)
	lui	a5,%hi(.LC21)
	addi	a2,a5,%lo(.LC21)
	lui	a5,%hi(.LC56)
	addi	a0,a5,%lo(.LC56)
	call	bl_printk
.LBB228:
.LBB229:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE229:
.LBE228:
	.loc 1 774 12 discriminator 1
	beq	a5,zero,.L281
	.loc 1 774 90 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	s1,a0
	j	.L282
.L281:
	.loc 1 774 119 discriminator 3
	call	xTaskGetTickCount
	mv	s1,a0
.L282:
	.loc 1 774 12 discriminator 7
	addi	a4,s0,-28
	addi	a5,s0,-24
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC57)
	addi	a0,a5,%lo(.LC57)
	call	dirent_file
	mv	a5,a0
	.loc 1 774 12 is_stmt 0 discriminator 8
	li	a4,774
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	mv	a1,s1
	lui	a0,%hi(.LC51)
	addi	a0,a0,%lo(.LC51)
	call	bl_printk
.LBB230:
.LBB231:
	.loc 2 181 31 is_stmt 1
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE231:
.LBE230:
	.loc 1 775 12 discriminator 1
	beq	a5,zero,.L284
	.loc 1 775 111 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L285
.L284:
	.loc 1 775 140 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L285:
	.loc 1 775 12 discriminator 7
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	mv	a6,a4
	li	a4,775
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC52)
	addi	a0,a0,%lo(.LC52)
	call	bl_printk
	.loc 1 776 11
	addi	a5,s0,-120
	mv	a2,a5
	lui	a5,%hi(.LC57)
	addi	a1,a5,%lo(.LC57)
	li	a0,0
	call	romfs_stat
	sw	a0,-20(s0)
	.loc 1 777 8
	lw	a5,-20(s0)
	bne	a5,zero,.L286
.LBB232:
.LBB233:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE233:
.LBE232:
	.loc 1 778 16 discriminator 1
	beq	a5,zero,.L288
	.loc 1 778 100 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L289
.L288:
	.loc 1 778 129 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L289:
	.loc 1 778 16 discriminator 7
	lw	a5,-104(s0)
	li	a4,778
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC53)
	addi	a0,a0,%lo(.LC53)
	call	bl_printk
.L286:
.LBB234:
.LBB235:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE235:
.LBE234:
	.loc 1 782 12 discriminator 1
	beq	a5,zero,.L291
	.loc 1 782 103 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L292
.L291:
	.loc 1 782 132 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L292:
	.loc 1 782 12 discriminator 7
	li	a4,782
	lui	a5,%hi(.LC9)
	addi	a3,a5,%lo(.LC9)
	lui	a5,%hi(.LC21)
	addi	a2,a5,%lo(.LC21)
	lui	a5,%hi(.LC58)
	addi	a0,a5,%lo(.LC58)
	call	bl_printk
.LBB236:
.LBB237:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE237:
.LBE236:
	.loc 1 783 12 discriminator 1
	beq	a5,zero,.L294
	.loc 1 783 90 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	s1,a0
	j	.L295
.L294:
	.loc 1 783 119 discriminator 3
	call	xTaskGetTickCount
	mv	s1,a0
.L295:
	.loc 1 783 12 discriminator 7
	addi	a4,s0,-28
	addi	a5,s0,-24
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC59)
	addi	a0,a5,%lo(.LC59)
	call	dirent_file
	mv	a5,a0
	.loc 1 783 12 is_stmt 0 discriminator 8
	li	a4,783
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	mv	a1,s1
	lui	a0,%hi(.LC51)
	addi	a0,a0,%lo(.LC51)
	call	bl_printk
.LBB238:
.LBB239:
	.loc 2 181 31 is_stmt 1
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE239:
.LBE238:
	.loc 1 784 12 discriminator 1
	beq	a5,zero,.L297
	.loc 1 784 111 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L298
.L297:
	.loc 1 784 140 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L298:
	.loc 1 784 12 discriminator 7
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	mv	a6,a4
	li	a4,784
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC52)
	addi	a0,a0,%lo(.LC52)
	call	bl_printk
	.loc 1 785 11
	addi	a5,s0,-120
	mv	a2,a5
	lui	a5,%hi(.LC59)
	addi	a1,a5,%lo(.LC59)
	li	a0,0
	call	romfs_stat
	sw	a0,-20(s0)
	.loc 1 786 8
	lw	a5,-20(s0)
	bne	a5,zero,.L299
.LBB240:
.LBB241:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE241:
.LBE240:
	.loc 1 787 16 discriminator 1
	beq	a5,zero,.L301
	.loc 1 787 100 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L302
.L301:
	.loc 1 787 129 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L302:
	.loc 1 787 16 discriminator 7
	lw	a5,-104(s0)
	li	a4,787
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC53)
	addi	a0,a0,%lo(.LC53)
	call	bl_printk
.L299:
.LBB242:
.LBB243:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE243:
.LBE242:
	.loc 1 790 12 discriminator 1
	beq	a5,zero,.L304
	.loc 1 790 109 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L305
.L304:
	.loc 1 790 138 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L305:
	.loc 1 790 12 discriminator 7
	li	a4,790
	lui	a5,%hi(.LC9)
	addi	a3,a5,%lo(.LC9)
	lui	a5,%hi(.LC21)
	addi	a2,a5,%lo(.LC21)
	lui	a5,%hi(.LC60)
	addi	a0,a5,%lo(.LC60)
	call	bl_printk
.LBB244:
.LBB245:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE245:
.LBE244:
	.loc 1 791 12 discriminator 1
	beq	a5,zero,.L307
	.loc 1 791 90 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	s1,a0
	j	.L308
.L307:
	.loc 1 791 119 discriminator 3
	call	xTaskGetTickCount
	mv	s1,a0
.L308:
	.loc 1 791 12 discriminator 7
	addi	a4,s0,-28
	addi	a5,s0,-24
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	dirent_file
	mv	a5,a0
	.loc 1 791 12 is_stmt 0 discriminator 8
	li	a4,791
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	mv	a1,s1
	lui	a0,%hi(.LC51)
	addi	a0,a0,%lo(.LC51)
	call	bl_printk
.LBB246:
.LBB247:
	.loc 2 181 31 is_stmt 1
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE247:
.LBE246:
	.loc 1 792 12 discriminator 1
	beq	a5,zero,.L310
	.loc 1 792 111 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L311
.L310:
	.loc 1 792 140 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L311:
	.loc 1 792 12 discriminator 7
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	mv	a6,a4
	li	a4,792
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC52)
	addi	a0,a0,%lo(.LC52)
	call	bl_printk
	.loc 1 793 11
	addi	a5,s0,-120
	mv	a2,a5
	lui	a5,%hi(.LC0)
	addi	a1,a5,%lo(.LC0)
	li	a0,0
	call	romfs_stat
	sw	a0,-20(s0)
	.loc 1 794 8
	lw	a5,-20(s0)
	bne	a5,zero,.L312
.LBB248:
.LBB249:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE249:
.LBE248:
	.loc 1 795 16 discriminator 1
	beq	a5,zero,.L314
	.loc 1 795 100 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L315
.L314:
	.loc 1 795 129 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L315:
	.loc 1 795 16 discriminator 7
	lw	a5,-104(s0)
	li	a4,795
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC53)
	addi	a0,a0,%lo(.LC53)
	call	bl_printk
.L312:
.LBB250:
.LBB251:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE251:
.LBE250:
	.loc 1 799 12 discriminator 1
	beq	a5,zero,.L317
	.loc 1 799 102 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L318
.L317:
	.loc 1 799 131 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L318:
	.loc 1 799 12 discriminator 7
	li	a4,799
	lui	a5,%hi(.LC9)
	addi	a3,a5,%lo(.LC9)
	lui	a5,%hi(.LC21)
	addi	a2,a5,%lo(.LC21)
	lui	a5,%hi(.LC61)
	addi	a0,a5,%lo(.LC61)
	call	bl_printk
.LBB252:
.LBB253:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE253:
.LBE252:
	.loc 1 800 12 discriminator 1
	beq	a5,zero,.L320
	.loc 1 800 90 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	s1,a0
	j	.L321
.L320:
	.loc 1 800 119 discriminator 3
	call	xTaskGetTickCount
	mv	s1,a0
.L321:
	.loc 1 800 12 discriminator 7
	addi	a4,s0,-28
	addi	a5,s0,-24
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC62)
	addi	a0,a5,%lo(.LC62)
	call	dirent_file
	mv	a5,a0
	.loc 1 800 12 is_stmt 0 discriminator 8
	li	a4,800
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	mv	a1,s1
	lui	a0,%hi(.LC51)
	addi	a0,a0,%lo(.LC51)
	call	bl_printk
.LBB254:
.LBB255:
	.loc 2 181 31 is_stmt 1
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE255:
.LBE254:
	.loc 1 801 12 discriminator 1
	beq	a5,zero,.L323
	.loc 1 801 111 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L324
.L323:
	.loc 1 801 140 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L324:
	.loc 1 801 12 discriminator 7
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	mv	a6,a4
	li	a4,801
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC52)
	addi	a0,a0,%lo(.LC52)
	call	bl_printk
	.loc 1 802 11
	addi	a5,s0,-120
	mv	a2,a5
	lui	a5,%hi(.LC62)
	addi	a1,a5,%lo(.LC62)
	li	a0,0
	call	romfs_stat
	sw	a0,-20(s0)
	.loc 1 803 8
	lw	a5,-20(s0)
	bne	a5,zero,.L325
.LBB256:
.LBB257:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE257:
.LBE256:
	.loc 1 804 16 discriminator 1
	beq	a5,zero,.L327
	.loc 1 804 100 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L328
.L327:
	.loc 1 804 129 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L328:
	.loc 1 804 16 discriminator 7
	lw	a5,-104(s0)
	li	a4,804
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC53)
	addi	a0,a0,%lo(.LC53)
	call	bl_printk
.L325:
.LBB258:
.LBB259:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE259:
.LBE258:
	.loc 1 807 12 discriminator 1
	beq	a5,zero,.L330
	.loc 1 807 109 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L331
.L330:
	.loc 1 807 138 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L331:
	.loc 1 807 12 discriminator 7
	li	a4,807
	lui	a5,%hi(.LC9)
	addi	a3,a5,%lo(.LC9)
	lui	a5,%hi(.LC21)
	addi	a2,a5,%lo(.LC21)
	lui	a5,%hi(.LC63)
	addi	a0,a5,%lo(.LC63)
	call	bl_printk
.LBB260:
.LBB261:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE261:
.LBE260:
	.loc 1 808 12 discriminator 1
	beq	a5,zero,.L333
	.loc 1 808 90 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	s1,a0
	j	.L334
.L333:
	.loc 1 808 119 discriminator 3
	call	xTaskGetTickCount
	mv	s1,a0
.L334:
	.loc 1 808 12 discriminator 7
	addi	a4,s0,-28
	addi	a5,s0,-24
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	dirent_file
	mv	a5,a0
	.loc 1 808 12 is_stmt 0 discriminator 8
	li	a4,808
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	mv	a1,s1
	lui	a0,%hi(.LC51)
	addi	a0,a0,%lo(.LC51)
	call	bl_printk
.LBB262:
.LBB263:
	.loc 2 181 31 is_stmt 1
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE263:
.LBE262:
	.loc 1 809 12 discriminator 1
	beq	a5,zero,.L336
	.loc 1 809 111 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L337
.L336:
	.loc 1 809 140 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L337:
	.loc 1 809 12 discriminator 7
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	mv	a6,a4
	li	a4,809
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC52)
	addi	a0,a0,%lo(.LC52)
	call	bl_printk
	.loc 1 810 11
	addi	a5,s0,-120
	mv	a2,a5
	lui	a5,%hi(.LC2)
	addi	a1,a5,%lo(.LC2)
	li	a0,0
	call	romfs_stat
	sw	a0,-20(s0)
	.loc 1 811 8
	lw	a5,-20(s0)
	bne	a5,zero,.L338
.LBB264:
.LBB265:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE265:
.LBE264:
	.loc 1 812 16 discriminator 1
	beq	a5,zero,.L340
	.loc 1 812 100 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L341
.L340:
	.loc 1 812 129 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L341:
	.loc 1 812 16 discriminator 7
	lw	a5,-104(s0)
	li	a4,812
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC53)
	addi	a0,a0,%lo(.LC53)
	call	bl_printk
.L338:
.LBB266:
.LBB267:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE267:
.LBE266:
	.loc 1 815 12 discriminator 1
	beq	a5,zero,.L343
	.loc 1 815 110 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L344
.L343:
	.loc 1 815 139 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L344:
	.loc 1 815 12 discriminator 7
	li	a4,815
	lui	a5,%hi(.LC9)
	addi	a3,a5,%lo(.LC9)
	lui	a5,%hi(.LC21)
	addi	a2,a5,%lo(.LC21)
	lui	a5,%hi(.LC64)
	addi	a0,a5,%lo(.LC64)
	call	bl_printk
.LBB268:
.LBB269:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE269:
.LBE268:
	.loc 1 816 12 discriminator 1
	beq	a5,zero,.L346
	.loc 1 816 90 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	s1,a0
	j	.L347
.L346:
	.loc 1 816 119 discriminator 3
	call	xTaskGetTickCount
	mv	s1,a0
.L347:
	.loc 1 816 12 discriminator 7
	addi	a4,s0,-28
	addi	a5,s0,-24
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC65)
	addi	a0,a5,%lo(.LC65)
	call	dirent_file
	mv	a5,a0
	.loc 1 816 12 is_stmt 0 discriminator 8
	li	a4,816
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	mv	a1,s1
	lui	a0,%hi(.LC51)
	addi	a0,a0,%lo(.LC51)
	call	bl_printk
.LBB270:
.LBB271:
	.loc 2 181 31 is_stmt 1
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE271:
.LBE270:
	.loc 1 817 12 discriminator 1
	beq	a5,zero,.L349
	.loc 1 817 111 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L350
.L349:
	.loc 1 817 140 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L350:
	.loc 1 817 12 discriminator 7
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	mv	a6,a4
	li	a4,817
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC52)
	addi	a0,a0,%lo(.LC52)
	call	bl_printk
	.loc 1 818 11
	addi	a5,s0,-120
	mv	a2,a5
	lui	a5,%hi(.LC65)
	addi	a1,a5,%lo(.LC65)
	li	a0,0
	call	romfs_stat
	sw	a0,-20(s0)
	.loc 1 819 8
	lw	a5,-20(s0)
	bne	a5,zero,.L351
.LBB272:
.LBB273:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE273:
.LBE272:
	.loc 1 820 16 discriminator 1
	beq	a5,zero,.L353
	.loc 1 820 100 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L354
.L353:
	.loc 1 820 129 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L354:
	.loc 1 820 16 discriminator 7
	lw	a5,-104(s0)
	li	a4,820
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC53)
	addi	a0,a0,%lo(.LC53)
	call	bl_printk
.L351:
.LBB274:
.LBB275:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE275:
.LBE274:
	.loc 1 823 12 discriminator 1
	beq	a5,zero,.L356
	.loc 1 823 117 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L357
.L356:
	.loc 1 823 146 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L357:
	.loc 1 823 12 discriminator 7
	li	a4,823
	lui	a5,%hi(.LC9)
	addi	a3,a5,%lo(.LC9)
	lui	a5,%hi(.LC21)
	addi	a2,a5,%lo(.LC21)
	lui	a5,%hi(.LC66)
	addi	a0,a5,%lo(.LC66)
	call	bl_printk
.LBB276:
.LBB277:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE277:
.LBE276:
	.loc 1 824 12 discriminator 1
	beq	a5,zero,.L359
	.loc 1 824 90 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	s1,a0
	j	.L360
.L359:
	.loc 1 824 119 discriminator 3
	call	xTaskGetTickCount
	mv	s1,a0
.L360:
	.loc 1 824 12 discriminator 7
	addi	a4,s0,-28
	addi	a5,s0,-24
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	dirent_file
	mv	a5,a0
	.loc 1 824 12 is_stmt 0 discriminator 8
	li	a4,824
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	mv	a1,s1
	lui	a0,%hi(.LC51)
	addi	a0,a0,%lo(.LC51)
	call	bl_printk
.LBB278:
.LBB279:
	.loc 2 181 31 is_stmt 1
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE279:
.LBE278:
	.loc 1 825 12 discriminator 1
	beq	a5,zero,.L362
	.loc 1 825 111 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L363
.L362:
	.loc 1 825 140 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L363:
	.loc 1 825 12 discriminator 7
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	mv	a6,a4
	li	a4,825
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC52)
	addi	a0,a0,%lo(.LC52)
	call	bl_printk
	.loc 1 826 11
	addi	a5,s0,-120
	mv	a2,a5
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	li	a0,0
	call	romfs_stat
	sw	a0,-20(s0)
	.loc 1 827 8
	lw	a5,-20(s0)
	bne	a5,zero,.L368
.LBB280:
.LBB281:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE281:
.LBE280:
	.loc 1 828 16 discriminator 1
	beq	a5,zero,.L366
	.loc 1 828 100 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L367
.L366:
	.loc 1 828 129 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L367:
	.loc 1 828 16 discriminator 7
	lw	a5,-104(s0)
	li	a4,828
	lui	a3,%hi(.LC9)
	addi	a3,a3,%lo(.LC9)
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	lui	a0,%hi(.LC53)
	addi	a0,a0,%lo(.LC53)
	call	bl_printk
.L368:
	.loc 1 830 1
	nop
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	lw	s1,116(sp)
	.cfi_restore 9
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	test3_romfs, .-test3_romfs
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_stdint.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timeval.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timespec.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/types.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/stat.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_dir.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_inode.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/fs/vfs_romfs.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/sys/blmtd/include/bl_mtd.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_log.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_register.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/aos/kernel.h"
	.file 21 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x18ac
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x22
	.4byte	.LASF210
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x3e
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4d
	.byte	0x12
	.4byte	0x5f
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x72
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0xc8
	.byte	0x17
	.4byte	0x79
	.uleb128 0x23
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0x9a
	.uleb128 0xb
	.byte	0x10
	.byte	0x4
	.4byte	.LASF16
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x1e
	.byte	0xe
	.4byte	0x5f
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x5
	.byte	0x22
	.byte	0xe
	.4byte	0x5f
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2e
	.byte	0xe
	.4byte	0x5f
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x38
	.byte	0xf
	.4byte	0x45
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x3c
	.byte	0x18
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x3f
	.byte	0x18
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0x4b
	.byte	0x18
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0x5a
	.byte	0x14
	.4byte	0x66
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x5
	.byte	0x66
	.byte	0x10
	.4byte	0xcc
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x5
	.byte	0x93
	.byte	0x14
	.4byte	0x93
	.uleb128 0x24
	.byte	0x4
	.uleb128 0x16
	.4byte	0x12c
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x5
	.byte	0xd5
	.byte	0x18
	.4byte	0x4c
	.uleb128 0x5
	.4byte	0x149
	.uleb128 0x16
	.4byte	0x13f
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF28
	.uleb128 0x17
	.4byte	0x149
	.uleb128 0x5
	.4byte	0x150
	.uleb128 0x16
	.4byte	0x155
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x6
	.byte	0x4c
	.byte	0x11
	.4byte	0x114
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x6
	.byte	0x51
	.byte	0x12
	.4byte	0x120
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x7
	.byte	0x18
	.byte	0x13
	.4byte	0x32
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x7
	.byte	0x2c
	.byte	0x13
	.4byte	0x53
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x7
	.byte	0x30
	.byte	0x14
	.4byte	0x66
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x8
	.byte	0x2a
	.byte	0x19
	.4byte	0x87
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x10
	.byte	0x9
	.byte	0x2f
	.byte	0x8
	.4byte	0x1cf
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x9
	.byte	0x30
	.byte	0x9
	.4byte	0x19b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x9
	.byte	0x31
	.byte	0x7
	.4byte	0x5f
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0xa
	.byte	0x61
	.byte	0x14
	.4byte	0xb4
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0xa
	.byte	0x66
	.byte	0x15
	.4byte	0xc0
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0xa
	.byte	0x89
	.byte	0x11
	.4byte	0xfc
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0xa
	.byte	0x9f
	.byte	0x11
	.4byte	0xd8
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0xa
	.byte	0xa3
	.byte	0x11
	.4byte	0xe4
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0xa
	.byte	0xa7
	.byte	0x11
	.4byte	0xf0
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0xa
	.byte	0xbb
	.byte	0x12
	.4byte	0x108
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0xa
	.byte	0xc0
	.byte	0x13
	.4byte	0x133
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x58
	.byte	0xb
	.byte	0x1b
	.byte	0x8
	.4byte	0x2f3
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0xb
	.byte	0x1d
	.byte	0x9
	.4byte	0x1f3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0xb
	.byte	0x1e
	.byte	0x9
	.4byte	0x1e7
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0xb
	.byte	0x1f
	.byte	0xa
	.4byte	0x217
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0xb
	.byte	0x20
	.byte	0xb
	.4byte	0x223
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0xb
	.byte	0x21
	.byte	0x9
	.4byte	0x1ff
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0xb
	.byte	0x22
	.byte	0x9
	.4byte	0x20b
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0xb
	.byte	0x23
	.byte	0x9
	.4byte	0x1f3
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0xb
	.byte	0x24
	.byte	0x9
	.4byte	0x15f
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0xb
	.byte	0x2a
	.byte	0x13
	.4byte	0x1a7
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0xb
	.byte	0x2b
	.byte	0x13
	.4byte	0x1a7
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0xb
	.byte	0x2c
	.byte	0x13
	.4byte	0x1a7
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0xb
	.byte	0x2d
	.byte	0xd
	.4byte	0x1db
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0xb
	.byte	0x2e
	.byte	0xc
	.4byte	0x1cf
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0xb
	.byte	0x30
	.byte	0x8
	.4byte	0x2f3
	.byte	0x50
	.byte	0
	.uleb128 0x10
	.4byte	0x5f
	.4byte	0x303
	.uleb128 0x12
	.4byte	0x9a
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x24
	.byte	0xc
	.byte	0x4
	.byte	0x8
	.4byte	0x386
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0xc
	.byte	0x5
	.byte	0xa
	.4byte	0x5f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0xc
	.byte	0x6
	.byte	0xa
	.4byte	0x5f
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0xc
	.byte	0x7
	.byte	0xa
	.4byte	0x5f
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0xc
	.byte	0x8
	.byte	0xa
	.4byte	0x5f
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0xc
	.byte	0x9
	.byte	0xa
	.4byte	0x5f
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0xc
	.byte	0xa
	.byte	0xa
	.4byte	0x5f
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0xc
	.byte	0xb
	.byte	0xa
	.4byte	0x5f
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0xc
	.byte	0xc
	.byte	0xa
	.4byte	0x5f
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0xc
	.byte	0xd
	.byte	0xa
	.4byte	0x5f
	.byte	0x20
	.byte	0
	.uleb128 0x14
	.byte	0x8
	.byte	0xc
	.byte	0x10
	.4byte	0x3b6
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0xc
	.byte	0x11
	.byte	0x9
	.4byte	0x93
	.byte	0
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0xc
	.byte	0x12
	.byte	0xd
	.4byte	0x177
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0xc
	.byte	0x13
	.byte	0xa
	.4byte	0x3b6
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.4byte	0x149
	.4byte	0x3c5
	.uleb128 0x25
	.4byte	0x9a
	.byte	0
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0xc
	.byte	0x14
	.byte	0x3
	.4byte	0x386
	.uleb128 0x14
	.byte	0x8
	.byte	0xc
	.byte	0x16
	.4byte	0x3f4
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0xc
	.byte	0x17
	.byte	0x9
	.4byte	0x93
	.byte	0
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0xc
	.byte	0x18
	.byte	0x9
	.4byte	0x93
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0xc
	.byte	0x19
	.byte	0x3
	.4byte	0x3d1
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0xd
	.byte	0x2c
	.byte	0x1f
	.4byte	0x475
	.uleb128 0xf
	.4byte	.LASF79
	.byte	0x1c
	.byte	0xd
	.byte	0x46
	.byte	0x8
	.4byte	0x475
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0xd
	.byte	0x47
	.byte	0xb
	.4byte	0x6b2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0xd
	.byte	0x48
	.byte	0xb
	.4byte	0x6c6
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0xd
	.byte	0x49
	.byte	0xf
	.4byte	0x6e4
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0xd
	.byte	0x4a
	.byte	0xf
	.4byte	0x70d
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0xd
	.byte	0x4b
	.byte	0xb
	.4byte	0x72b
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0xd
	.byte	0x4d
	.byte	0xb
	.4byte	0x75a
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0xd
	.byte	0x4f
	.byte	0xb
	.4byte	0x6c6
	.byte	0x18
	.byte	0
	.uleb128 0x17
	.4byte	0x40c
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0xd
	.byte	0x2d
	.byte	0x1d
	.4byte	0x598
	.uleb128 0xf
	.4byte	.LASF88
	.byte	0x50
	.byte	0xd
	.byte	0x52
	.byte	0x8
	.4byte	0x598
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0xd
	.byte	0x53
	.byte	0xb
	.4byte	0x778
	.byte	0
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0xd
	.byte	0x54
	.byte	0xb
	.4byte	0x6c6
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0xd
	.byte	0x55
	.byte	0xf
	.4byte	0x796
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0xd
	.byte	0x56
	.byte	0xf
	.4byte	0x7b4
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0xd
	.byte	0x57
	.byte	0xd
	.4byte	0x7d2
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0xd
	.byte	0x58
	.byte	0xb
	.4byte	0x6c6
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0xd
	.byte	0x59
	.byte	0xb
	.4byte	0x7f5
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0xd
	.byte	0x5a
	.byte	0xb
	.4byte	0x80e
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0xd
	.byte	0x5b
	.byte	0xb
	.4byte	0x82c
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0xd
	.byte	0x5c
	.byte	0x12
	.4byte	0x84a
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0xd
	.byte	0x5d
	.byte	0x15
	.4byte	0x868
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0xd
	.byte	0x5e
	.byte	0xb
	.4byte	0x881
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0xd
	.byte	0x5f
	.byte	0xb
	.4byte	0x80e
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0xd
	.byte	0x60
	.byte	0xb
	.4byte	0x80e
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0xd
	.byte	0x61
	.byte	0xc
	.4byte	0x896
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0xd
	.byte	0x62
	.byte	0xc
	.4byte	0x8af
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0xd
	.byte	0x63
	.byte	0xc
	.4byte	0x8c9
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0xd
	.byte	0x64
	.byte	0xb
	.4byte	0x72b
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0xd
	.byte	0x65
	.byte	0xb
	.4byte	0x8ec
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0xd
	.byte	0x66
	.byte	0xb
	.4byte	0x778
	.byte	0x4c
	.byte	0
	.uleb128 0x17
	.4byte	0x486
	.uleb128 0x26
	.4byte	.LASF211
	.byte	0x4
	.byte	0xd
	.byte	0x2f
	.byte	0x7
	.4byte	0x5c1
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x30
	.byte	0x17
	.4byte	0x5c1
	.uleb128 0x1e
	.4byte	.LASF102
	.byte	0x31
	.byte	0x15
	.4byte	0x5c6
	.byte	0
	.uleb128 0x5
	.4byte	0x400
	.uleb128 0x5
	.4byte	0x47a
	.uleb128 0x14
	.byte	0x14
	.byte	0xd
	.byte	0x35
	.4byte	0x621
	.uleb128 0x18
	.string	"ops"
	.byte	0xd
	.byte	0x36
	.byte	0x17
	.4byte	0x59d
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0xd
	.byte	0x37
	.byte	0xb
	.4byte	0x12c
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0xd
	.byte	0x38
	.byte	0xb
	.4byte	0x13f
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0xd
	.byte	0x39
	.byte	0x9
	.4byte	0x93
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0xd
	.byte	0x3a
	.byte	0xd
	.4byte	0x177
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0xd
	.byte	0x3b
	.byte	0xd
	.4byte	0x177
	.byte	0x11
	.byte	0
	.uleb128 0x4
	.4byte	.LASF108
	.byte	0xd
	.byte	0x3c
	.byte	0x3
	.4byte	0x5cb
	.uleb128 0x14
	.byte	0xc
	.byte	0xd
	.byte	0x3e
	.4byte	0x65d
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xd
	.byte	0x3f
	.byte	0xe
	.4byte	0x65d
	.byte	0
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0xd
	.byte	0x40
	.byte	0xb
	.4byte	0x12c
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0xd
	.byte	0x41
	.byte	0xc
	.4byte	0xa1
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	0x621
	.uleb128 0x4
	.4byte	.LASF112
	.byte	0xd
	.byte	0x42
	.byte	0x3
	.4byte	0x62d
	.uleb128 0x4
	.4byte	.LASF113
	.byte	0xd
	.byte	0x45
	.byte	0x10
	.4byte	0x67a
	.uleb128 0x5
	.4byte	0x67f
	.uleb128 0x19
	.4byte	0x68f
	.uleb128 0x1
	.4byte	0x68f
	.uleb128 0x1
	.4byte	0x12c
	.byte	0
	.uleb128 0x5
	.4byte	0x694
	.uleb128 0x27
	.4byte	.LASF212
	.uleb128 0x7
	.4byte	0x93
	.4byte	0x6ad
	.uleb128 0x1
	.4byte	0x65d
	.uleb128 0x1
	.4byte	0x6ad
	.byte	0
	.uleb128 0x5
	.4byte	0x662
	.uleb128 0x5
	.4byte	0x699
	.uleb128 0x7
	.4byte	0x93
	.4byte	0x6c6
	.uleb128 0x1
	.4byte	0x6ad
	.byte	0
	.uleb128 0x5
	.4byte	0x6b7
	.uleb128 0x7
	.4byte	0x16b
	.4byte	0x6e4
	.uleb128 0x1
	.4byte	0x6ad
	.uleb128 0x1
	.4byte	0x12c
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x5
	.4byte	0x6cb
	.uleb128 0x7
	.4byte	0x16b
	.4byte	0x702
	.uleb128 0x1
	.4byte	0x6ad
	.uleb128 0x1
	.4byte	0x702
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x5
	.4byte	0x70c
	.uleb128 0x16
	.4byte	0x702
	.uleb128 0x28
	.uleb128 0x5
	.4byte	0x6e9
	.uleb128 0x7
	.4byte	0x93
	.4byte	0x72b
	.uleb128 0x1
	.4byte	0x6ad
	.uleb128 0x1
	.4byte	0x93
	.uleb128 0x1
	.4byte	0x72
	.byte	0
	.uleb128 0x5
	.4byte	0x712
	.uleb128 0x7
	.4byte	0x93
	.4byte	0x753
	.uleb128 0x1
	.4byte	0x6ad
	.uleb128 0x1
	.4byte	0x753
	.uleb128 0x1
	.4byte	0x66e
	.uleb128 0x1
	.4byte	0x68f
	.uleb128 0x1
	.4byte	0x12c
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.4byte	.LASF114
	.uleb128 0x5
	.4byte	0x730
	.uleb128 0x7
	.4byte	0x93
	.4byte	0x778
	.uleb128 0x1
	.4byte	0x6ad
	.uleb128 0x1
	.4byte	0x155
	.uleb128 0x1
	.4byte	0x93
	.byte	0
	.uleb128 0x5
	.4byte	0x75f
	.uleb128 0x7
	.4byte	0x16b
	.4byte	0x796
	.uleb128 0x1
	.4byte	0x6ad
	.uleb128 0x1
	.4byte	0x13f
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x5
	.4byte	0x77d
	.uleb128 0x7
	.4byte	0x16b
	.4byte	0x7b4
	.uleb128 0x1
	.4byte	0x6ad
	.uleb128 0x1
	.4byte	0x155
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x5
	.4byte	0x79b
	.uleb128 0x7
	.4byte	0x15f
	.4byte	0x7d2
	.uleb128 0x1
	.4byte	0x6ad
	.uleb128 0x1
	.4byte	0x15f
	.uleb128 0x1
	.4byte	0x93
	.byte	0
	.uleb128 0x5
	.4byte	0x7b9
	.uleb128 0x7
	.4byte	0x93
	.4byte	0x7f0
	.uleb128 0x1
	.4byte	0x6ad
	.uleb128 0x1
	.4byte	0x155
	.uleb128 0x1
	.4byte	0x7f0
	.byte	0
	.uleb128 0x5
	.4byte	0x22f
	.uleb128 0x5
	.4byte	0x7d7
	.uleb128 0x7
	.4byte	0x93
	.4byte	0x80e
	.uleb128 0x1
	.4byte	0x6ad
	.uleb128 0x1
	.4byte	0x155
	.byte	0
	.uleb128 0x5
	.4byte	0x7fa
	.uleb128 0x7
	.4byte	0x93
	.4byte	0x82c
	.uleb128 0x1
	.4byte	0x6ad
	.uleb128 0x1
	.4byte	0x155
	.uleb128 0x1
	.4byte	0x155
	.byte	0
	.uleb128 0x5
	.4byte	0x813
	.uleb128 0x7
	.4byte	0x845
	.4byte	0x845
	.uleb128 0x1
	.4byte	0x6ad
	.uleb128 0x1
	.4byte	0x155
	.byte	0
	.uleb128 0x5
	.4byte	0x3f4
	.uleb128 0x5
	.4byte	0x831
	.uleb128 0x7
	.4byte	0x863
	.4byte	0x863
	.uleb128 0x1
	.4byte	0x6ad
	.uleb128 0x1
	.4byte	0x845
	.byte	0
	.uleb128 0x5
	.4byte	0x3c5
	.uleb128 0x5
	.4byte	0x84f
	.uleb128 0x7
	.4byte	0x93
	.4byte	0x881
	.uleb128 0x1
	.4byte	0x6ad
	.uleb128 0x1
	.4byte	0x845
	.byte	0
	.uleb128 0x5
	.4byte	0x86d
	.uleb128 0x19
	.4byte	0x896
	.uleb128 0x1
	.4byte	0x6ad
	.uleb128 0x1
	.4byte	0x845
	.byte	0
	.uleb128 0x5
	.4byte	0x886
	.uleb128 0x7
	.4byte	0x5f
	.4byte	0x8af
	.uleb128 0x1
	.4byte	0x6ad
	.uleb128 0x1
	.4byte	0x845
	.byte	0
	.uleb128 0x5
	.4byte	0x89b
	.uleb128 0x19
	.4byte	0x8c9
	.uleb128 0x1
	.4byte	0x6ad
	.uleb128 0x1
	.4byte	0x845
	.uleb128 0x1
	.4byte	0x5f
	.byte	0
	.uleb128 0x5
	.4byte	0x8b4
	.uleb128 0x7
	.4byte	0x93
	.4byte	0x8e7
	.uleb128 0x1
	.4byte	0x6ad
	.uleb128 0x1
	.4byte	0x155
	.uleb128 0x1
	.4byte	0x8e7
	.byte	0
	.uleb128 0x5
	.4byte	0x303
	.uleb128 0x5
	.4byte	0x8ce
	.uleb128 0xf
	.4byte	.LASF115
	.byte	0x8
	.byte	0xe
	.byte	0xb
	.byte	0x10
	.4byte	0x918
	.uleb128 0x18
	.string	"buf"
	.byte	0xe
	.byte	0xc
	.byte	0xb
	.4byte	0x13f
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0xe
	.byte	0xd
	.byte	0xe
	.4byte	0x18f
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF117
	.byte	0xe
	.byte	0xe
	.byte	0x3
	.4byte	0x8f1
	.uleb128 0x4
	.4byte	.LASF118
	.byte	0xf
	.byte	0x22
	.byte	0xf
	.4byte	0x12c
	.uleb128 0x14
	.byte	0x1c
	.byte	0xf
	.byte	0x23
	.4byte	0x96d
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0xf
	.byte	0x24
	.byte	0xa
	.4byte	0x96d
	.byte	0
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0xf
	.byte	0x25
	.byte	0x12
	.4byte	0x9a
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0xf
	.byte	0x26
	.byte	0x12
	.4byte	0x9a
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0xf
	.byte	0x27
	.byte	0xb
	.4byte	0x12c
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.4byte	0x149
	.4byte	0x97d
	.uleb128 0x12
	.4byte	0x9a
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF122
	.byte	0xf
	.byte	0x28
	.byte	0x3
	.4byte	0x930
	.uleb128 0x4
	.4byte	.LASF123
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0x183
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0x2
	.byte	0x41
	.byte	0x12
	.4byte	0x18f
	.uleb128 0x29
	.4byte	.LASF133
	.byte	0x2
	.byte	0x5c
	.byte	0x13
	.4byte	0x989
	.uleb128 0x2a
	.4byte	.LASF213
	.byte	0x7
	.byte	0x1
	.4byte	0x3e
	.byte	0x10
	.byte	0x55
	.byte	0xe
	.4byte	0x9d2
	.uleb128 0x1a
	.4byte	.LASF125
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF126
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF127
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF128
	.byte	0x10
	.byte	0x59
	.byte	0x3
	.4byte	0x9ad
	.uleb128 0xf
	.4byte	.LASF129
	.byte	0x10
	.byte	0x1
	.byte	0x36
	.byte	0x8
	.4byte	0xa20
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0x1
	.byte	0x37
	.byte	0xd
	.4byte	0x183
	.byte	0
	.uleb128 0x2
	.4byte	.LASF131
	.byte	0x1
	.byte	0x38
	.byte	0xd
	.4byte	0x183
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0x1
	.byte	0x39
	.byte	0xd
	.4byte	0x183
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF132
	.byte	0x1
	.byte	0x3a
	.byte	0xd
	.4byte	0x183
	.byte	0xc
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF134
	.byte	0x1
	.byte	0x3b
	.byte	0x3
	.4byte	0x9de
	.uleb128 0x5
	.byte	0x3
	.4byte	romfh_t
	.uleb128 0xf
	.4byte	.LASF135
	.byte	0x1c
	.byte	0x1
	.byte	0x3d
	.byte	0x10
	.4byte	0xa80
	.uleb128 0x18
	.string	"dir"
	.byte	0x1
	.byte	0x3f
	.byte	0xf
	.4byte	0x3f4
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0x1
	.byte	0x40
	.byte	0xb
	.4byte	0x13f
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x1
	.byte	0x41
	.byte	0xb
	.4byte	0x13f
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x1
	.byte	0x42
	.byte	0xb
	.4byte	0x13f
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF139
	.byte	0x1
	.byte	0x43
	.byte	0x12
	.4byte	0x3c5
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.4byte	.LASF140
	.byte	0x1
	.byte	0x44
	.byte	0x3
	.4byte	0xa32
	.uleb128 0x13
	.4byte	.LASF141
	.byte	0x46
	.byte	0xe
	.4byte	0x13f
	.uleb128 0x5
	.byte	0x3
	.4byte	romfs_root
	.uleb128 0x13
	.4byte	.LASF142
	.byte	0x47
	.byte	0x18
	.4byte	0x924
	.uleb128 0x5
	.byte	0x3
	.4byte	handle_romfs
	.uleb128 0x6
	.4byte	.LASF143
	.2byte	0x27a
	.byte	0x17
	.4byte	0x47a
	.uleb128 0x5
	.byte	0x3
	.4byte	romfs_ops
	.uleb128 0x8
	.4byte	.LASF144
	.byte	0x11
	.byte	0x3f
	.byte	0x5
	.4byte	0x93
	.4byte	0xad6
	.uleb128 0x1
	.4byte	0x93
	.byte	0
	.uleb128 0x8
	.4byte	.LASF145
	.byte	0x11
	.byte	0x60
	.byte	0x5
	.4byte	0x93
	.4byte	0xaf6
	.uleb128 0x1
	.4byte	0x93
	.uleb128 0x1
	.4byte	0x93
	.uleb128 0x1
	.4byte	0x72
	.byte	0
	.uleb128 0x8
	.4byte	.LASF146
	.byte	0x11
	.byte	0x85
	.byte	0x7
	.4byte	0x15f
	.4byte	0xb16
	.uleb128 0x1
	.4byte	0x93
	.uleb128 0x1
	.4byte	0x15f
	.uleb128 0x1
	.4byte	0x93
	.byte	0
	.uleb128 0x8
	.4byte	.LASF147
	.byte	0x11
	.byte	0x4a
	.byte	0x9
	.4byte	0x16b
	.4byte	0xb36
	.uleb128 0x1
	.4byte	0x93
	.uleb128 0x1
	.4byte	0x12c
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF148
	.byte	0x11
	.byte	0x36
	.byte	0x5
	.4byte	0x93
	.4byte	0xb51
	.uleb128 0x1
	.4byte	0x155
	.uleb128 0x1
	.4byte	0x93
	.byte	0
	.uleb128 0x8
	.4byte	.LASF149
	.byte	0x12
	.byte	0x11
	.byte	0x5
	.4byte	0x93
	.4byte	0xb71
	.uleb128 0x1
	.4byte	0x155
	.uleb128 0x1
	.4byte	0x5c6
	.uleb128 0x1
	.4byte	0x12c
	.byte	0
	.uleb128 0x8
	.4byte	.LASF150
	.byte	0x13
	.byte	0x2c
	.byte	0x7
	.4byte	0x13f
	.4byte	0xb91
	.uleb128 0x1
	.4byte	0x144
	.uleb128 0x1
	.4byte	0x15a
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF160
	.byte	0x14
	.2byte	0x1e1
	.byte	0xa
	.4byte	0xba4
	.uleb128 0x1
	.4byte	0x12c
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF151
	.byte	0x14
	.2byte	0x1bf
	.byte	0xb
	.4byte	0x12c
	.4byte	0xbbb
	.uleb128 0x1
	.4byte	0x9a
	.byte	0
	.uleb128 0x8
	.4byte	.LASF152
	.byte	0x6
	.byte	0xce
	.byte	0x5
	.4byte	0x93
	.4byte	0xbd2
	.uleb128 0x1
	.4byte	0x15a
	.uleb128 0x1f
	.byte	0
	.uleb128 0x8
	.4byte	.LASF153
	.byte	0x13
	.byte	0x1f
	.byte	0x8
	.4byte	0x12c
	.4byte	0xbf2
	.uleb128 0x1
	.4byte	0x12e
	.uleb128 0x1
	.4byte	0x707
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF154
	.byte	0x13
	.byte	0x23
	.byte	0x7
	.4byte	0x13f
	.4byte	0xc0d
	.uleb128 0x1
	.4byte	0x155
	.uleb128 0x1
	.4byte	0x93
	.byte	0
	.uleb128 0x8
	.4byte	.LASF155
	.byte	0x10
	.byte	0x9c
	.byte	0x5
	.4byte	0x93
	.4byte	0xc37
	.uleb128 0x1
	.4byte	0x155
	.uleb128 0x1
	.4byte	0x93
	.uleb128 0x1
	.4byte	0x702
	.uleb128 0x1
	.4byte	0x93
	.uleb128 0x1
	.4byte	0x9d2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF156
	.byte	0x13
	.byte	0x1e
	.byte	0x5
	.4byte	0x93
	.4byte	0xc57
	.uleb128 0x1
	.4byte	0x702
	.uleb128 0x1
	.4byte	0x702
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF157
	.byte	0xf
	.byte	0x30
	.byte	0x5
	.4byte	0x93
	.4byte	0xc72
	.uleb128 0x1
	.4byte	0x924
	.uleb128 0x1
	.4byte	0xc72
	.byte	0
	.uleb128 0x5
	.4byte	0x97d
	.uleb128 0x8
	.4byte	.LASF158
	.byte	0x13
	.byte	0x21
	.byte	0x8
	.4byte	0x12c
	.4byte	0xc97
	.uleb128 0x1
	.4byte	0x12c
	.uleb128 0x1
	.4byte	0x93
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF159
	.byte	0xf
	.byte	0x2e
	.byte	0x5
	.4byte	0x93
	.4byte	0xcb7
	.uleb128 0x1
	.4byte	0x155
	.uleb128 0x1
	.4byte	0xcb7
	.uleb128 0x1
	.4byte	0x9a
	.byte	0
	.uleb128 0x5
	.4byte	0x924
	.uleb128 0x2e
	.4byte	.LASF161
	.byte	0x10
	.byte	0x9e
	.byte	0x6
	.4byte	0xccf
	.uleb128 0x1
	.4byte	0x155
	.uleb128 0x1f
	.byte	0
	.uleb128 0x20
	.4byte	.LASF162
	.2byte	0x54c
	.4byte	0x995
	.uleb128 0x20
	.4byte	.LASF163
	.2byte	0x55d
	.4byte	0x995
	.uleb128 0x8
	.4byte	.LASF164
	.byte	0x13
	.byte	0x2b
	.byte	0x5
	.4byte	0x93
	.4byte	0xd05
	.uleb128 0x1
	.4byte	0x155
	.uleb128 0x1
	.4byte	0x155
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF165
	.byte	0x13
	.byte	0x29
	.byte	0x8
	.4byte	0xa1
	.4byte	0xd1b
	.uleb128 0x1
	.4byte	0x155
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF168
	.2byte	0x2ee
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfad
	.uleb128 0x6
	.4byte	.LASF166
	.2byte	0x2f0
	.byte	0xb
	.4byte	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF167
	.2byte	0x2f1
	.byte	0xb
	.4byte	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.string	"res"
	.2byte	0x2f2
	.byte	0x9
	.4byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"st"
	.2byte	0x2f3
	.byte	0x11
	.4byte	0x22f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB210
	.4byte	.LBE210-.LBB210
	.2byte	0x2f5
	.byte	0x42
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB212
	.4byte	.LBE212-.LBB212
	.2byte	0x2f6
	.byte	0x3f
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB214
	.4byte	.LBE214-.LBB214
	.2byte	0x2f7
	.byte	0x54
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB216
	.4byte	.LBE216-.LBB216
	.2byte	0x2fa
	.byte	0x49
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB218
	.4byte	.LBE218-.LBB218
	.2byte	0x2fd
	.byte	0x43
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB220
	.4byte	.LBE220-.LBB220
	.2byte	0x2fe
	.byte	0x3f
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB222
	.4byte	.LBE222-.LBB222
	.2byte	0x2ff
	.byte	0x54
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB224
	.4byte	.LBE224-.LBB224
	.2byte	0x302
	.byte	0x49
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB226
	.4byte	.LBE226-.LBB226
	.2byte	0x305
	.byte	0x41
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB228
	.4byte	.LBE228-.LBB228
	.2byte	0x306
	.byte	0x3f
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB230
	.4byte	.LBE230-.LBB230
	.2byte	0x307
	.byte	0x54
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB232
	.4byte	.LBE232-.LBB232
	.2byte	0x30a
	.byte	0x49
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB234
	.4byte	.LBE234-.LBB234
	.2byte	0x30e
	.byte	0x4c
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB236
	.4byte	.LBE236-.LBB236
	.2byte	0x30f
	.byte	0x3f
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB238
	.4byte	.LBE238-.LBB238
	.2byte	0x310
	.byte	0x54
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB240
	.4byte	.LBE240-.LBB240
	.2byte	0x313
	.byte	0x49
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB242
	.4byte	.LBE242-.LBB242
	.2byte	0x316
	.byte	0x52
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB244
	.4byte	.LBE244-.LBB244
	.2byte	0x317
	.byte	0x3f
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB246
	.4byte	.LBE246-.LBB246
	.2byte	0x318
	.byte	0x54
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB248
	.4byte	.LBE248-.LBB248
	.2byte	0x31b
	.byte	0x49
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB250
	.4byte	.LBE250-.LBB250
	.2byte	0x31f
	.byte	0x4b
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB252
	.4byte	.LBE252-.LBB252
	.2byte	0x320
	.byte	0x3f
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB254
	.4byte	.LBE254-.LBB254
	.2byte	0x321
	.byte	0x54
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB256
	.4byte	.LBE256-.LBB256
	.2byte	0x324
	.byte	0x49
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB258
	.4byte	.LBE258-.LBB258
	.2byte	0x327
	.byte	0x52
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB260
	.4byte	.LBE260-.LBB260
	.2byte	0x328
	.byte	0x3f
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB262
	.4byte	.LBE262-.LBB262
	.2byte	0x329
	.byte	0x54
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB264
	.4byte	.LBE264-.LBB264
	.2byte	0x32c
	.byte	0x49
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB266
	.4byte	.LBE266-.LBB266
	.2byte	0x32f
	.byte	0x53
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB268
	.4byte	.LBE268-.LBB268
	.2byte	0x330
	.byte	0x3f
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB270
	.4byte	.LBE270-.LBB270
	.2byte	0x331
	.byte	0x54
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB272
	.4byte	.LBE272-.LBB272
	.2byte	0x334
	.byte	0x49
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB274
	.4byte	.LBE274-.LBB274
	.2byte	0x337
	.byte	0x5a
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB276
	.4byte	.LBE276-.LBB276
	.2byte	0x338
	.byte	0x3f
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB278
	.4byte	.LBE278-.LBB278
	.2byte	0x339
	.byte	0x54
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB280
	.4byte	.LBE280-.LBB280
	.2byte	0x33c
	.byte	0x49
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF169
	.2byte	0x2c8
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x104d
	.uleb128 0xa
	.string	"i"
	.2byte	0x2ca
	.byte	0x9
	.4byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"fd"
	.2byte	0x2cb
	.byte	0x9
	.4byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF170
	.2byte	0x2cc
	.byte	0xa
	.4byte	0x104d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x6
	.4byte	.LASF171
	.2byte	0x2cd
	.byte	0x9
	.4byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF172
	.2byte	0x2cf
	.byte	0xb
	.4byte	0x105d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB202
	.4byte	.LBE202-.LBB202
	.2byte	0x2da
	.byte	0x45
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB204
	.4byte	.LBE204-.LBB204
	.2byte	0x2df
	.byte	0x5c
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB206
	.4byte	.LBE206-.LBB206
	.2byte	0x2e2
	.byte	0x4e
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB208
	.4byte	.LBE208-.LBB208
	.2byte	0x2e6
	.byte	0x4a
	.byte	0
	.uleb128 0x10
	.4byte	0x149
	.4byte	0x105d
	.uleb128 0x12
	.4byte	0x9a
	.byte	0x7f
	.byte	0
	.uleb128 0x10
	.4byte	0x13f
	.4byte	0x106d
	.uleb128 0x12
	.4byte	0x9a
	.byte	0x6
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF173
	.2byte	0x293
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x117f
	.uleb128 0xa
	.string	"fd"
	.2byte	0x295
	.byte	0x9
	.4byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"len"
	.2byte	0x296
	.byte	0x9
	.4byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"buf"
	.2byte	0x297
	.byte	0xa
	.4byte	0x117f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x6
	.4byte	.LASF174
	.2byte	0x298
	.byte	0x15
	.4byte	0x918
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x6
	.4byte	.LASF175
	.2byte	0x299
	.byte	0xb
	.4byte	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB180
	.4byte	.LBE180-.LBB180
	.2byte	0x29e
	.byte	0x3c
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB182
	.4byte	.LBE182-.LBB182
	.2byte	0x2a0
	.byte	0x44
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB184
	.4byte	.LBE184-.LBB184
	.2byte	0x2a5
	.byte	0x43
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB186
	.4byte	.LBE186-.LBB186
	.2byte	0x2ab
	.byte	0x43
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB188
	.4byte	.LBE188-.LBB188
	.2byte	0x2af
	.byte	0x43
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB190
	.4byte	.LBE190-.LBB190
	.2byte	0x2b5
	.byte	0x43
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB192
	.4byte	.LBE192-.LBB192
	.2byte	0x2b6
	.byte	0x39
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB194
	.4byte	.LBE194-.LBB194
	.2byte	0x2ba
	.byte	0x45
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB196
	.4byte	.LBE196-.LBB196
	.2byte	0x2bb
	.byte	0x4a
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB198
	.4byte	.LBE198-.LBB198
	.2byte	0x2be
	.byte	0x4d
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB200
	.4byte	.LBE200-.LBB200
	.2byte	0x2c2
	.byte	0x43
	.byte	0
	.uleb128 0x10
	.4byte	0x149
	.4byte	0x118f
	.uleb128 0x12
	.4byte	0x9a
	.byte	0x31
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x28b
	.byte	0x5
	.4byte	0x93
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF176
	.2byte	0x26e
	.byte	0xc
	.4byte	0x93
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11ec
	.uleb128 0x9
	.string	"fp"
	.2byte	0x26e
	.byte	0x33
	.4byte	0x6ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"dir"
	.2byte	0x26e
	.byte	0x42
	.4byte	0x845
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"dp"
	.2byte	0x270
	.byte	0x12
	.4byte	0x11ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0xa80
	.uleb128 0x11
	.4byte	.LASF177
	.2byte	0x22e
	.byte	0x16
	.4byte	0x863
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1237
	.uleb128 0x9
	.string	"fp"
	.2byte	0x22e
	.byte	0x3c
	.4byte	0x6ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"dir"
	.2byte	0x22e
	.byte	0x4b
	.4byte	0x845
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"dp"
	.2byte	0x230
	.byte	0x12
	.4byte	0x11ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF178
	.2byte	0x202
	.byte	0x13
	.4byte	0x845
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12ba
	.uleb128 0x9
	.string	"fp"
	.2byte	0x202
	.byte	0x39
	.4byte	0x6ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF179
	.2byte	0x202
	.byte	0x49
	.4byte	0x155
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"dp"
	.2byte	0x204
	.byte	0x12
	.4byte	0x11ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF166
	.2byte	0x205
	.byte	0xb
	.4byte	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF167
	.2byte	0x206
	.byte	0xb
	.4byte	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.string	"res"
	.2byte	0x207
	.byte	0x9
	.4byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB178
	.4byte	.LBE178-.LBB178
	.2byte	0x20d
	.byte	0x4c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF180
	.2byte	0x1e0
	.byte	0xc
	.4byte	0x93
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x134d
	.uleb128 0x9
	.string	"fp"
	.2byte	0x1e0
	.byte	0x2f
	.4byte	0x6ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF179
	.2byte	0x1e0
	.byte	0x3f
	.4byte	0x155
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"st"
	.2byte	0x1e0
	.byte	0x52
	.4byte	0x7f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF166
	.2byte	0x1e2
	.byte	0xb
	.4byte	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF167
	.2byte	0x1e3
	.byte	0xb
	.4byte	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.string	"res"
	.2byte	0x1e4
	.byte	0x9
	.4byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB174
	.4byte	.LBE174-.LBB174
	.2byte	0x1ea
	.byte	0x4d
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB176
	.4byte	.LBE176-.LBB176
	.2byte	0x1fa
	.byte	0x4d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF181
	.2byte	0x1b8
	.byte	0xe
	.4byte	0x15f
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13b2
	.uleb128 0x9
	.string	"fp"
	.2byte	0x1b8
	.byte	0x22
	.4byte	0x6ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"off"
	.2byte	0x1b8
	.byte	0x2c
	.4byte	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.4byte	.LASF182
	.2byte	0x1b8
	.byte	0x35
	.4byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF183
	.2byte	0x1ba
	.byte	0xe
	.4byte	0x18f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"tmp"
	.2byte	0x1bb
	.byte	0xb
	.4byte	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF190
	.2byte	0x19e
	.byte	0x5
	.4byte	0x93
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1417
	.uleb128 0x9
	.string	"fp"
	.2byte	0x19e
	.byte	0x19
	.4byte	0x6ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"cmd"
	.2byte	0x19e
	.byte	0x21
	.4byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"arg"
	.2byte	0x19e
	.byte	0x34
	.4byte	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.string	"ret"
	.2byte	0x1a0
	.byte	0x9
	.4byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF184
	.2byte	0x1a1
	.byte	0x16
	.4byte	0x1417
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	0x918
	.uleb128 0x11
	.4byte	.LASF185
	.2byte	0x180
	.byte	0x10
	.4byte	0x16b
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1490
	.uleb128 0x9
	.string	"fp"
	.2byte	0x180
	.byte	0x23
	.4byte	0x6ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"buf"
	.2byte	0x180
	.byte	0x2d
	.4byte	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.4byte	.LASF175
	.2byte	0x180
	.byte	0x39
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF186
	.2byte	0x182
	.byte	0xb
	.4byte	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF183
	.2byte	0x183
	.byte	0xe
	.4byte	0x18f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.string	"len"
	.2byte	0x184
	.byte	0x9
	.4byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x30
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x177
	.byte	0xc
	.4byte	0x93
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14ba
	.uleb128 0x9
	.string	"fp"
	.2byte	0x177
	.byte	0x20
	.4byte	0x6ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF188
	.2byte	0x159
	.byte	0xc
	.4byte	0x93
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x153f
	.uleb128 0x9
	.string	"fp"
	.2byte	0x159
	.byte	0x1f
	.4byte	0x6ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF179
	.2byte	0x159
	.byte	0x2f
	.4byte	0x155
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.4byte	.LASF189
	.2byte	0x159
	.byte	0x49
	.4byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF166
	.2byte	0x15b
	.byte	0xb
	.4byte	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF167
	.2byte	0x15c
	.byte	0xb
	.4byte	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB170
	.4byte	.LBE170-.LBB170
	.2byte	0x162
	.byte	0x4c
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB172
	.4byte	.LBE172-.LBB172
	.2byte	0x168
	.byte	0x4e
	.byte	0
	.uleb128 0x21
	.4byte	.LASF191
	.2byte	0x100
	.byte	0xa
	.4byte	0x18f
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1635
	.uleb128 0xc
	.4byte	.LASF179
	.2byte	0x100
	.byte	0x1c
	.4byte	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0xc
	.4byte	.LASF192
	.2byte	0x100
	.byte	0x29
	.4byte	0x1635
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0xc
	.4byte	.LASF193
	.2byte	0x100
	.byte	0x44
	.4byte	0x1635
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x6
	.4byte	.LASF194
	.2byte	0x102
	.byte	0xb
	.4byte	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF195
	.2byte	0x103
	.byte	0xb
	.4byte	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF196
	.2byte	0x105
	.byte	0xb
	.4byte	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF119
	.2byte	0x106
	.byte	0xa
	.4byte	0x163a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x6
	.4byte	.LASF197
	.2byte	0x107
	.byte	0xb
	.4byte	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF198
	.2byte	0x108
	.byte	0xa
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB160
	.4byte	.LBE160-.LBB160
	.2byte	0x115
	.byte	0x4a
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB162
	.4byte	.LBE162-.LBB162
	.2byte	0x11a
	.byte	0x4a
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB164
	.4byte	.LBE164-.LBB164
	.2byte	0x138
	.byte	0x4f
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB166
	.4byte	.LBE166-.LBB166
	.2byte	0x13c
	.byte	0x7d
	.uleb128 0x3
	.4byte	0x18a2
	.4byte	.LBB168
	.4byte	.LBE168-.LBB168
	.2byte	0x147
	.byte	0x51
	.byte	0
	.uleb128 0x5
	.4byte	0x12c
	.uleb128 0x10
	.4byte	0x149
	.4byte	0x164a
	.uleb128 0x12
	.4byte	0x9a
	.byte	0x40
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF199
	.byte	0xbe
	.4byte	0x93
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16d6
	.uleb128 0xd
	.4byte	.LASF179
	.byte	0xbe
	.byte	0x1c
	.4byte	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.4byte	.LASF192
	.byte	0xbe
	.byte	0x29
	.4byte	0x16d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.4byte	.LASF193
	.byte	0xbe
	.byte	0x44
	.4byte	0x16d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.4byte	.LASF194
	.byte	0xc0
	.byte	0xb
	.4byte	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF195
	.byte	0xc1
	.byte	0xb
	.4byte	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.4byte	0x18a2
	.4byte	.LBB154
	.4byte	.LBE154-.LBB154
	.byte	0xe6
	.byte	0x6a
	.uleb128 0xe
	.4byte	0x18a2
	.4byte	.LBB156
	.4byte	.LBE156-.LBB156
	.byte	0xe8
	.byte	0x54
	.uleb128 0xe
	.4byte	0x18a2
	.4byte	.LBB158
	.4byte	.LBE158-.LBB158
	.byte	0xef
	.byte	0x7e
	.byte	0
	.uleb128 0x5
	.4byte	0x13f
	.uleb128 0x15
	.4byte	.LASF200
	.byte	0xb9
	.byte	0x11
	.4byte	0x18f
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1703
	.uleb128 0xd
	.4byte	.LASF201
	.byte	0xb9
	.byte	0x23
	.4byte	0x12c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF202
	.byte	0xb4
	.byte	0x11
	.4byte	0x18f
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x172b
	.uleb128 0xd
	.4byte	.LASF201
	.byte	0xb4
	.byte	0x28
	.4byte	0x12c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF203
	.byte	0xaf
	.byte	0x11
	.4byte	0x18f
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1753
	.uleb128 0xd
	.4byte	.LASF201
	.byte	0xaf
	.byte	0x25
	.4byte	0x12c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.4byte	.LASF215
	.byte	0x1
	.byte	0xaa
	.byte	0x11
	.4byte	0x18f
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF204
	.byte	0x9d
	.byte	0xc
	.4byte	0x93
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1791
	.uleb128 0xd
	.4byte	.LASF201
	.byte	0x9d
	.byte	0x1e
	.4byte	0x12c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF205
	.byte	0x80
	.4byte	0x93
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17f2
	.uleb128 0x1d
	.string	"ret"
	.byte	0x82
	.4byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF206
	.byte	0x83
	.byte	0x13
	.4byte	0x97d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.4byte	0x18a2
	.4byte	.LBB148
	.4byte	.LBE148-.LBB148
	.byte	0x86
	.byte	0x6c
	.uleb128 0xe
	.4byte	0x18a2
	.4byte	.LBB150
	.4byte	.LBE150-.LBB150
	.byte	0x8d
	.byte	0x4e
	.uleb128 0xe
	.4byte	0x18a2
	.4byte	.LBB152
	.4byte	.LBE152-.LBB152
	.byte	0x92
	.byte	0x53
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF207
	.byte	0x58
	.4byte	0x93
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x187a
	.uleb128 0xd
	.4byte	.LASF179
	.byte	0x58
	.byte	0x26
	.4byte	0x155
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.4byte	.LASF120
	.byte	0x58
	.byte	0x35
	.4byte	0x18f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"res"
	.byte	0x5a
	.4byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.string	"i"
	.byte	0x5b
	.4byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF208
	.byte	0x5c
	.byte	0x9
	.4byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.4byte	0x18a2
	.4byte	.LBB142
	.4byte	.LBE142-.LBB142
	.byte	0x61
	.byte	0x49
	.uleb128 0xe
	.4byte	0x18a2
	.4byte	.LBB144
	.4byte	.LBE144-.LBB144
	.byte	0x69
	.byte	0x4f
	.uleb128 0xe
	.4byte	0x18a2
	.4byte	.LBB146
	.4byte	.LBE146-.LBB146
	.byte	0x73
	.byte	0x4e
	.byte	0
	.uleb128 0x15
	.4byte	.LASF209
	.byte	0x49
	.byte	0xc
	.4byte	0x93
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18a2
	.uleb128 0x32
	.string	"ch"
	.byte	0x1
	.byte	0x49
	.byte	0x1c
	.4byte	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x33
	.4byte	.LASF216
	.byte	0x2
	.byte	0xb3
	.byte	0x3a
	.4byte	0x989
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
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
	.uleb128 0x5
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 21
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
	.uleb128 0x21
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
	.uleb128 0x5
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.4byte	0xcc
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
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
	.byte	0x7
	.4byte	.LFB23
	.uleb128 .LFE23-.LFB23
	.byte	0x7
	.4byte	.LFB24
	.uleb128 .LFE24-.LFB24
	.byte	0x7
	.4byte	.LFB25
	.uleb128 .LFE25-.LFB25
	.byte	0x7
	.4byte	.LFB26
	.uleb128 .LFE26-.LFB26
	.byte	0x7
	.4byte	.LFB27
	.uleb128 .LFE27-.LFB27
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF183:
	.string	"payload_size"
.LASF184:
	.string	"file_buf"
.LASF74:
	.string	"aos_dirent_t"
.LASF119:
	.string	"name"
.LASF192:
	.string	"p_addr_start_input"
.LASF165:
	.string	"strlen"
.LASF164:
	.string	"strncmp"
.LASF108:
	.string	"inode_t"
.LASF189:
	.string	"flags"
.LASF170:
	.string	"buffer"
.LASF77:
	.string	"aos_dir_t"
.LASF155:
	.string	"log_buf_out"
.LASF122:
	.string	"bl_mtd_info_t"
.LASF14:
	.string	"unsigned int"
.LASF178:
	.string	"romfs_opendir"
.LASF58:
	.string	"st_blksize"
.LASF7:
	.string	"__int32_t"
.LASF107:
	.string	"refs"
.LASF202:
	.string	"dirent_childaddr"
.LASF172:
	.string	"test"
.LASF92:
	.string	"opendir"
.LASF168:
	.string	"test3_romfs"
.LASF86:
	.string	"sync"
.LASF27:
	.string	"__nlink_t"
.LASF68:
	.string	"f_ffree"
.LASF104:
	.string	"i_name"
.LASF205:
	.string	"romfs_mount"
.LASF185:
	.string	"romfs_read"
.LASF215:
	.string	"romfs_endaddr"
.LASF73:
	.string	"d_name"
.LASF200:
	.string	"dirent_size"
.LASF167:
	.string	"end_addr"
.LASF23:
	.string	"__ino_t"
.LASF129:
	.string	"romfh"
.LASF39:
	.string	"ino_t"
.LASF33:
	.string	"uint32_t"
.LASF145:
	.string	"aos_ioctl"
.LASF98:
	.string	"telldir"
.LASF103:
	.string	"i_arg"
.LASF198:
	.string	"need_enter_child"
.LASF174:
	.string	"filebuf"
.LASF90:
	.string	"unlink"
.LASF12:
	.string	"long long unsigned int"
.LASF59:
	.string	"st_blocks"
.LASF163:
	.string	"xTaskGetTickCountFromISR"
.LASF111:
	.string	"offset"
.LASF144:
	.string	"aos_close"
.LASF141:
	.string	"romfs_root"
.LASF188:
	.string	"romfs_open"
.LASF110:
	.string	"f_arg"
.LASF146:
	.string	"aos_lseek"
.LASF161:
	.string	"bl_printk"
.LASF102:
	.string	"i_fops"
.LASF213:
	.string	"LOG_BUF_OUT_DATA_TYPE"
.LASF148:
	.string	"aos_open"
.LASF46:
	.string	"stat"
.LASF47:
	.string	"st_dev"
.LASF133:
	.string	"TrapNetCounter"
.LASF125:
	.string	"LOG_BUF_OUT_DATA_TYPE_HEX"
.LASF36:
	.string	"tv_nsec"
.LASF15:
	.string	"size_t"
.LASF24:
	.string	"__mode_t"
.LASF72:
	.string	"d_type"
.LASF114:
	.string	"_Bool"
.LASF52:
	.string	"st_gid"
.LASF97:
	.string	"rewinddir"
.LASF49:
	.string	"st_mode"
.LASF95:
	.string	"mkdir"
.LASF135:
	.string	"_rom_dir_t"
.LASF112:
	.string	"file_t"
.LASF50:
	.string	"st_nlink"
.LASF179:
	.string	"path"
.LASF211:
	.string	"inode_ops_t"
.LASF132:
	.string	"checksum"
.LASF208:
	.string	"i_old"
.LASF84:
	.string	"ioctl"
.LASF147:
	.string	"aos_read"
.LASF196:
	.string	"p_name"
.LASF171:
	.string	"read_len"
.LASF195:
	.string	"addr_end"
.LASF85:
	.string	"poll"
.LASF157:
	.string	"bl_mtd_info"
.LASF45:
	.string	"timespec"
.LASF28:
	.string	"char"
.LASF37:
	.string	"blkcnt_t"
.LASF113:
	.string	"poll_notify_t"
.LASF81:
	.string	"close"
.LASF127:
	.string	"LOG_BUF_OUT_DATA_TYPE_UNT8"
.LASF30:
	.string	"ssize_t"
.LASF89:
	.string	"lseek"
.LASF31:
	.string	"uint8_t"
.LASF106:
	.string	"type"
.LASF34:
	.string	"time_t"
.LASF88:
	.string	"fs_ops"
.LASF61:
	.string	"statfs"
.LASF48:
	.string	"st_ino"
.LASF162:
	.string	"xTaskGetTickCount"
.LASF186:
	.string	"payload_buf"
.LASF116:
	.string	"bufsize"
.LASF67:
	.string	"f_files"
.LASF11:
	.string	"long long int"
.LASF175:
	.string	"length"
.LASF83:
	.string	"write"
.LASF152:
	.string	"printf"
.LASF62:
	.string	"f_type"
.LASF151:
	.string	"aos_malloc"
.LASF20:
	.string	"__dev_t"
.LASF126:
	.string	"LOG_BUF_OUT_DATA_TYPE_INT8"
.LASF115:
	.string	"_romfs_file_buf"
.LASF117:
	.string	"romfs_filebuf_t"
.LASF176:
	.string	"romfs_closedir"
.LASF123:
	.string	"BaseType_t"
.LASF40:
	.string	"dev_t"
.LASF65:
	.string	"f_bfree"
.LASF79:
	.string	"file_ops"
.LASF78:
	.string	"file_ops_t"
.LASF197:
	.string	"p_ret"
.LASF158:
	.string	"memset"
.LASF169:
	.string	"test2_romfs"
.LASF120:
	.string	"size"
.LASF212:
	.string	"pollfd"
.LASF137:
	.string	"dir_end_addr"
.LASF66:
	.string	"f_bavail"
.LASF206:
	.string	"info"
.LASF216:
	.string	"xPortIsInsideInterrupt"
.LASF69:
	.string	"f_fsid"
.LASF159:
	.string	"bl_mtd_open"
.LASF199:
	.string	"file_info"
.LASF60:
	.string	"st_spare4"
.LASF100:
	.string	"access"
.LASF124:
	.string	"TickType_t"
.LASF128:
	.string	"LOG_BUF_OUT_DATA_TYPE_T"
.LASF121:
	.string	"xip_addr"
.LASF91:
	.string	"rename"
.LASF16:
	.string	"long double"
.LASF22:
	.string	"__gid_t"
.LASF64:
	.string	"f_blocks"
.LASF140:
	.string	"romfs_dir_t"
.LASF118:
	.string	"bl_mtd_handle_t"
.LASF42:
	.string	"gid_t"
.LASF13:
	.string	"__int_least64_t"
.LASF101:
	.string	"i_ops"
.LASF41:
	.string	"uid_t"
.LASF204:
	.string	"dirent_type"
.LASF209:
	.string	"is_path_ch"
.LASF96:
	.string	"rmdir"
.LASF154:
	.string	"strchr"
.LASF94:
	.string	"closedir"
.LASF4:
	.string	"short int"
.LASF56:
	.string	"st_mtim"
.LASF105:
	.string	"i_flags"
.LASF8:
	.string	"long int"
.LASF177:
	.string	"romfs_readdir"
.LASF134:
	.string	"romfh_t"
.LASF207:
	.string	"filter_format"
.LASF109:
	.string	"node"
.LASF139:
	.string	"cur_dirent"
.LASF93:
	.string	"readdir"
.LASF70:
	.string	"f_namelen"
.LASF149:
	.string	"aos_register_fs"
.LASF18:
	.string	"__blksize_t"
.LASF143:
	.string	"romfs_ops"
.LASF21:
	.string	"__uid_t"
.LASF6:
	.string	"__uint8_t"
.LASF55:
	.string	"st_atim"
.LASF82:
	.string	"read"
.LASF75:
	.string	"dd_vfs_fd"
.LASF80:
	.string	"open"
.LASF190:
	.string	"romfs_ioctl"
.LASF35:
	.string	"tv_sec"
.LASF10:
	.string	"long unsigned int"
.LASF136:
	.string	"dir_start_addr"
.LASF194:
	.string	"addr_start"
.LASF32:
	.string	"int32_t"
.LASF138:
	.string	"dir_cur_addr"
.LASF182:
	.string	"whence"
.LASF44:
	.string	"nlink_t"
.LASF187:
	.string	"romfs_close"
.LASF63:
	.string	"f_bsize"
.LASF3:
	.string	"unsigned char"
.LASF9:
	.string	"__uint32_t"
.LASF214:
	.string	"romfs_register"
.LASF181:
	.string	"romfs_lseek"
.LASF150:
	.string	"strncpy"
.LASF38:
	.string	"blksize_t"
.LASF201:
	.string	"addr"
.LASF130:
	.string	"nextfh"
.LASF203:
	.string	"dirent_hardfh"
.LASF54:
	.string	"st_size"
.LASF71:
	.string	"d_ino"
.LASF160:
	.string	"aos_free"
.LASF51:
	.string	"st_uid"
.LASF25:
	.string	"__off_t"
.LASF180:
	.string	"romfs_stat"
.LASF57:
	.string	"st_ctim"
.LASF26:
	.string	"_ssize_t"
.LASF76:
	.string	"dd_rsv"
.LASF2:
	.string	"signed char"
.LASF43:
	.string	"mode_t"
.LASF29:
	.string	"off_t"
.LASF5:
	.string	"short unsigned int"
.LASF153:
	.string	"memcpy"
.LASF99:
	.string	"seekdir"
.LASF193:
	.string	"p_addr_end_input"
.LASF156:
	.string	"memcmp"
.LASF17:
	.string	"__blkcnt_t"
.LASF19:
	.string	"_off_t"
.LASF131:
	.string	"spec"
.LASF53:
	.string	"st_rdev"
.LASF166:
	.string	"start_addr"
.LASF210:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF191:
	.string	"dirent_file"
.LASF87:
	.string	"fs_ops_t"
.LASF173:
	.string	"test1_romfs"
.LASF142:
	.string	"handle_romfs"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/romfs"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/fs/romfs/src/bl_romfs.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
