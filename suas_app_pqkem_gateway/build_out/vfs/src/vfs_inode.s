	.file	"vfs_inode.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/vfs" "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/src/vfs_inode.c"
	.section	.bss.g_vfs_dev_nodes,"aw",@nobits
	.align	2
	.type	g_vfs_dev_nodes, @object
	.size	g_vfs_dev_nodes, 600
g_vfs_dev_nodes:
	.zero	600
	.section	.text.inode_init,"ax",@progbits
	.align	1
	.globl	inode_init
	.type	inode_init, @function
inode_init:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/src/vfs_inode.c"
	.loc 1 17 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 18 5
	li	a2,600
	li	a1,0
	lui	a5,%hi(g_vfs_dev_nodes)
	addi	a0,a5,%lo(g_vfs_dev_nodes)
	call	memset
	.loc 1 19 12
	li	a5,0
	.loc 1 20 1
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
.LFE5:
	.size	inode_init, .-inode_init
	.section	.text.inode_alloc,"ax",@progbits
	.align	1
	.globl	inode_alloc
	.type	inode_alloc, @function
inode_alloc:
.LFB6:
	.loc 1 23 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 24 9
	sw	zero,-20(s0)
	.loc 1 26 5
	j	.L4
.L7:
	.loc 1 27 31
	lui	a5,%hi(g_vfs_dev_nodes)
	addi	a3,a5,%lo(g_vfs_dev_nodes)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a5,16(a5)
	.loc 1 27 12
	bne	a5,zero,.L5
	.loc 1 28 20
	lw	a5,-20(s0)
	j	.L6
.L5:
	.loc 1 26 21
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L4:
	.loc 1 26 14 discriminator 1
	lw	a4,-20(s0)
	li	a5,29
	ble	a4,a5,.L7
	.loc 1 32 12
	li	a5,-12
.L6:
	.loc 1 33 1
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
.LFE6:
	.size	inode_alloc, .-inode_alloc
	.section	.text.inode_del,"ax",@progbits
	.align	1
	.globl	inode_del
	.type	inode_del, @function
inode_del:
.LFB7:
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
	.loc 1 37 13
	lw	a5,-20(s0)
	lbu	a5,17(a5)
	.loc 1 37 8
	beq	a5,zero,.L9
	.loc 1 38 16
	li	a5,-16
	j	.L10
.L9:
	.loc 1 41 13
	lw	a5,-20(s0)
	lbu	a5,17(a5)
	.loc 1 41 8
	bne	a5,zero,.L11
	.loc 1 42 17
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 42 12
	beq	a5,zero,.L12
	.loc 1 43 27
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 43 13
	mv	a0,a5
	call	vPortFree
.L12:
	.loc 1 46 22
	lw	a5,-20(s0)
	sw	zero,8(a5)
	.loc 1 47 21
	lw	a5,-20(s0)
	sw	zero,4(a5)
	.loc 1 48 23
	lw	a5,-20(s0)
	sw	zero,12(a5)
	.loc 1 49 20
	lw	a5,-20(s0)
	sb	zero,16(a5)
.L11:
	.loc 1 52 12
	li	a5,0
.L10:
	.loc 1 53 1
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
	.size	inode_del, .-inode_del
	.section	.text.inode_open,"ax",@progbits
	.align	1
	.globl	inode_open
	.type	inode_open, @function
inode_open:
.LFB8:
	.loc 1 56 1
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
	.loc 1 57 9
	sw	zero,-20(s0)
	.loc 1 60 12
	sw	zero,-20(s0)
	.loc 1 60 5
	j	.L14
.L19:
	.loc 1 61 14
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(g_vfs_dev_nodes)
	addi	a4,a4,%lo(g_vfs_dev_nodes)
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 63 17
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 63 12
	beq	a5,zero,.L20
	.loc 1 66 20
	lw	a5,-24(s0)
	lbu	a4,16(a5)
	.loc 1 66 12
	li	a5,3
	bne	a4,a5,.L17
	.loc 1 67 30
	lw	a5,-24(s0)
	lw	s1,8(a5)
	.loc 1 67 57
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 67 18
	mv	a0,a5
	call	strlen
	mv	a5,a0
	.loc 1 67 18 is_stmt 0 discriminator 1
	mv	a2,a5
	lw	a1,-36(s0)
	mv	a0,s1
	call	strncmp
	mv	a5,a0
	.loc 1 67 16 is_stmt 1 discriminator 2
	bne	a5,zero,.L17
	.loc 1 68 38
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 68 27
	mv	a0,a5
	call	strlen
	mv	a4,a0
	.loc 1 68 25 discriminator 1
	lw	a5,-36(s0)
	add	a5,a5,a4
	.loc 1 68 18 discriminator 1
	lbu	a4,0(a5)
	.loc 1 67 74 discriminator 3
	li	a5,47
	bne	a4,a5,.L17
	.loc 1 69 24
	lw	a5,-24(s0)
	j	.L18
.L17:
	.loc 1 72 24
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 72 13
	lw	a1,-36(s0)
	mv	a0,a5
	call	strcmp
	mv	a5,a0
	.loc 1 72 12 discriminator 1
	bne	a5,zero,.L16
	.loc 1 73 20
	lw	a5,-24(s0)
	j	.L18
.L20:
	.loc 1 64 13
	nop
.L16:
	.loc 1 60 26 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L14:
	.loc 1 60 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,29
	ble	a4,a5,.L19
	.loc 1 77 11
	li	a5,0
.L18:
	.loc 1 78 1
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
.LFE8:
	.size	inode_open, .-inode_open
	.section	.text.inode_forearch_name,"ax",@progbits
	.align	1
	.globl	inode_forearch_name
	.type	inode_forearch_name, @function
inode_forearch_name:
.LFB9:
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
	.loc 1 82 9
	sw	zero,-20(s0)
	.loc 1 85 12
	sw	zero,-24(s0)
	.loc 1 85 5
	j	.L22
.L26:
	.loc 1 86 14
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(g_vfs_dev_nodes)
	addi	a4,a4,%lo(g_vfs_dev_nodes)
	add	a5,a5,a4
	sw	a5,-28(s0)
	.loc 1 87 17
	lw	a5,-28(s0)
	lw	a5,8(a5)
	.loc 1 87 12
	beq	a5,zero,.L28
	.loc 1 90 18
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 91 17
	lw	a5,-36(s0)
	lw	a1,-28(s0)
	lw	a0,-40(s0)
	jalr	a5
.LVL0:
	mv	a5,a0
	.loc 1 91 16 discriminator 1
	bne	a5,zero,.L29
	j	.L24
.L28:
	.loc 1 88 13
	nop
.L24:
	.loc 1 85 26 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L22:
	.loc 1 85 19 discriminator 1
	lw	a4,-24(s0)
	li	a5,29
	ble	a4,a5,.L26
	j	.L25
.L29:
	.loc 1 92 17
	nop
.L25:
	.loc 1 97 12
	lw	a5,-20(s0)
	.loc 1 98 1
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
	.size	inode_forearch_name, .-inode_forearch_name
	.section	.text.inode_ptr_get,"ax",@progbits
	.align	1
	.globl	inode_ptr_get
	.type	inode_ptr_get, @function
inode_ptr_get:
.LFB10:
	.loc 1 101 1
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
	.loc 1 102 8
	lw	a5,-20(s0)
	blt	a5,zero,.L31
	.loc 1 102 16 discriminator 1
	lw	a4,-20(s0)
	li	a5,29
	ble	a4,a5,.L32
.L31:
	.loc 1 103 16
	li	a5,-22
	j	.L33
.L32:
	.loc 1 106 13
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(g_vfs_dev_nodes)
	addi	a4,a4,%lo(g_vfs_dev_nodes)
	add	a4,a5,a4
	.loc 1 106 11
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 1 108 12
	li	a5,0
.L33:
	.loc 1 109 1
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
	.size	inode_ptr_get, .-inode_ptr_get
	.section	.text.inode_ref,"ax",@progbits
	.align	1
	.globl	inode_ref
	.type	inode_ref, @function
inode_ref:
.LFB11:
	.loc 1 112 1
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
	.loc 1 113 9
	lw	a5,-20(s0)
	lbu	a5,17(a5)
	.loc 1 113 15
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,17(a5)
	.loc 1 114 1
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
	.size	inode_ref, .-inode_ref
	.section	.text.inode_unref,"ax",@progbits
	.align	1
	.globl	inode_unref
	.type	inode_unref, @function
inode_unref:
.LFB12:
	.loc 1 117 1
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
	.loc 1 118 13
	lw	a5,-20(s0)
	lbu	a5,17(a5)
	.loc 1 118 8
	beq	a5,zero,.L37
	.loc 1 119 13
	lw	a5,-20(s0)
	lbu	a5,17(a5)
	.loc 1 119 19
	addi	a5,a5,-1
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,17(a5)
.L37:
	.loc 1 121 1
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
.LFE12:
	.size	inode_unref, .-inode_unref
	.section	.text.inode_busy,"ax",@progbits
	.align	1
	.globl	inode_busy
	.type	inode_busy, @function
inode_busy:
.LFB13:
	.loc 1 124 1
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
	.loc 1 125 16
	lw	a5,-20(s0)
	lbu	a5,17(a5)
	.loc 1 125 23
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 1 126 1
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
.LFE13:
	.size	inode_busy, .-inode_busy
	.section	.text.inode_avail_count,"ax",@progbits
	.align	1
	.globl	inode_avail_count
	.type	inode_avail_count, @function
inode_avail_count:
.LFB14:
	.loc 1 129 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 130 9
	sw	zero,-20(s0)
	.loc 1 131 9
	sw	zero,-24(s0)
	.loc 1 133 5
	j	.L41
.L43:
	.loc 1 134 31
	lui	a5,%hi(g_vfs_dev_nodes)
	addi	a3,a5,%lo(g_vfs_dev_nodes)
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a5,16(a5)
	.loc 1 134 12
	bne	a5,zero,.L42
	.loc 1 135 18
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L42:
	.loc 1 133 21
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L41:
	.loc 1 133 14 discriminator 1
	lw	a4,-24(s0)
	li	a5,29
	ble	a4,a5,.L43
	.loc 1 139 12
	lw	a5,-20(s0)
	.loc 1 140 1
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
.LFE14:
	.size	inode_avail_count, .-inode_avail_count
	.section	.text.inode_set_name,"ax",@progbits
	.align	1
	.type	inode_set_name, @function
inode_set_name:
.LFB15:
	.loc 1 143 1
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
	.loc 1 147 11
	lw	a0,-36(s0)
	call	strlen
	sw	a0,-20(s0)
	.loc 1 148 11
	lw	a5,-20(s0)
	addi	a5,a5,1
	mv	a0,a5
	call	pvPortMalloc
	sw	a0,-24(s0)
	.loc 1 149 8
	lw	a5,-24(s0)
	bne	a5,zero,.L46
	.loc 1 150 16
	li	a5,-12
	j	.L47
.L46:
	.loc 1 153 5
	lw	a2,-20(s0)
	lw	a1,-36(s0)
	lw	a0,-24(s0)
	call	memcpy
	.loc 1 154 6
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 154 22
	lw	a4,-24(s0)
	sw	a4,8(a5)
	.loc 1 155 6
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 155 13
	lw	a4,8(a5)
	.loc 1 155 21
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 155 27
	sb	zero,0(a5)
	.loc 1 157 12
	li	a5,0
.L47:
	.loc 1 158 1
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
	.size	inode_set_name, .-inode_set_name
	.section	.text.inode_reserve,"ax",@progbits
	.align	1
	.globl	inode_reserve
	.type	inode_reserve, @function
inode_reserve:
.LFB16:
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
	.loc 1 163 14
	sw	zero,-24(s0)
	.loc 1 165 13
	lw	a5,-36(s0)
	beq	a5,zero,.L49
	.loc 1 165 14 discriminator 2
	lw	a5,-40(s0)
	bne	a5,zero,.L50
.L49:
	.loc 1 165 14 discriminator 3
	li	a5,-22
	.loc 1 165 14 is_stmt 0
	j	.L56
.L50:
	.loc 1 166 12 is_stmt 1
	lw	a5,-40(s0)
	sw	zero,0(a5)
	.loc 1 172 13
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 172 8
	beq	a5,zero,.L52
	.loc 1 172 32 discriminator 1
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	.loc 1 172 25 discriminator 1
	li	a5,47
	beq	a4,a5,.L53
.L52:
	.loc 1 174 16
	li	a5,-22
	j	.L56
.L53:
	.loc 1 177 11
	call	inode_alloc
	sw	a0,-20(s0)
	.loc 1 178 8
	lw	a5,-20(s0)
	bge	a5,zero,.L54
	.loc 1 179 16
	lw	a5,-20(s0)
	j	.L56
.L54:
	.loc 1 182 5
	addi	a5,s0,-24
	mv	a1,a5
	lw	a0,-20(s0)
	call	inode_ptr_get
	.loc 1 184 11
	addi	a5,s0,-24
	mv	a1,a5
	lw	a0,-36(s0)
	call	inode_set_name
	sw	a0,-20(s0)
	.loc 1 185 8
	lw	a5,-20(s0)
	bge	a5,zero,.L55
	.loc 1 186 16
	lw	a5,-20(s0)
	j	.L56
.L55:
	.loc 1 189 12
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 190 12
	li	a5,0
.L56:
	.loc 1 191 1
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
.LFE16:
	.size	inode_reserve, .-inode_reserve
	.section	.text.inode_release,"ax",@progbits
	.align	1
	.globl	inode_release
	.type	inode_release, @function
inode_release:
.LFB17:
	.loc 1 194 1
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
	.loc 1 198 13
	lw	a5,-36(s0)
	bne	a5,zero,.L58
	.loc 1 198 14 discriminator 1
	li	a5,-22
	.loc 1 198 14 is_stmt 0
	j	.L59
.L58:
	.loc 1 200 12 is_stmt 1
	lw	a0,-36(s0)
	call	inode_open
	sw	a0,-20(s0)
	.loc 1 201 8
	lw	a5,-20(s0)
	bne	a5,zero,.L60
	.loc 1 202 16
	li	a5,-19
	j	.L59
.L60:
	.loc 1 205 11
	lw	a0,-20(s0)
	call	inode_del
	sw	a0,-24(s0)
	.loc 1 206 8
	lw	a5,-24(s0)
	bge	a5,zero,.L61
	.loc 1 207 16
	lw	a5,-24(s0)
	j	.L59
.L61:
	.loc 1 210 12
	li	a5,0
.L59:
	.loc 1 211 1
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
.LFE17:
	.size	inode_release, .-inode_release
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timeval.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timespec.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/types.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/stat.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_dir.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_inode.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc8e
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x18
	.4byte	.LASF136
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x19
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
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
	.uleb128 0x4
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
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0xc8
	.byte	0x17
	.4byte	0x45
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x1e
	.byte	0xe
	.4byte	0x6f
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x22
	.byte	0xe
	.4byte	0x6f
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.4byte	0x6f
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x38
	.byte	0xf
	.4byte	0x61
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3c
	.byte	0x18
	.4byte	0x68
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x3f
	.byte	0x18
	.4byte	0x68
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x4b
	.byte	0x18
	.4byte	0x68
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0x5a
	.byte	0x14
	.4byte	0x76
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0x66
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x4
	.byte	0x93
	.byte	0x14
	.4byte	0x2b
	.uleb128 0x1a
	.byte	0x4
	.uleb128 0x14
	.4byte	0x114
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x4
	.byte	0xd5
	.byte	0x18
	.4byte	0x68
	.uleb128 0x3
	.4byte	0x12c
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF26
	.uleb128 0x10
	.4byte	0x12c
	.uleb128 0x3
	.4byte	0x133
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x5
	.byte	0x4c
	.byte	0x11
	.4byte	0xfc
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x5
	.byte	0x51
	.byte	0x12
	.4byte	0x108
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x6
	.byte	0x2e
	.byte	0x17
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x7
	.byte	0x2a
	.byte	0x19
	.4byte	0x90
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x10
	.byte	0x8
	.byte	0x2f
	.4byte	0x194
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x8
	.byte	0x30
	.byte	0x9
	.4byte	0x161
	.byte	0
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x8
	.byte	0x31
	.byte	0x7
	.4byte	0x6f
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x9
	.byte	0x61
	.byte	0x14
	.4byte	0x9c
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x9
	.byte	0x66
	.byte	0x15
	.4byte	0xa8
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x9
	.byte	0x89
	.byte	0x11
	.4byte	0xe4
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x9
	.byte	0x9f
	.byte	0x11
	.4byte	0xc0
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x9
	.byte	0xa3
	.byte	0x11
	.4byte	0xcc
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x9
	.byte	0xa7
	.byte	0x11
	.4byte	0xd8
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x9
	.byte	0xbb
	.byte	0x12
	.4byte	0xf0
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x9
	.byte	0xc0
	.byte	0x13
	.4byte	0x11b
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x58
	.byte	0xa
	.byte	0x1b
	.4byte	0x2b7
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0xa
	.byte	0x1d
	.byte	0x9
	.4byte	0x1b8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0xa
	.byte	0x1e
	.byte	0x9
	.4byte	0x1ac
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0xa
	.byte	0x1f
	.byte	0xa
	.4byte	0x1dc
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0xa
	.byte	0x20
	.byte	0xb
	.4byte	0x1e8
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0xa
	.byte	0x21
	.byte	0x9
	.4byte	0x1c4
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0xa
	.byte	0x22
	.byte	0x9
	.4byte	0x1d0
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0xa
	.byte	0x23
	.byte	0x9
	.4byte	0x1b8
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0xa
	.byte	0x24
	.byte	0x9
	.4byte	0x13d
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0xa
	.byte	0x2a
	.byte	0x13
	.4byte	0x16d
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0xa
	.byte	0x2b
	.byte	0x13
	.4byte	0x16d
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0xa
	.byte	0x2c
	.byte	0x13
	.4byte	0x16d
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0xa
	.byte	0x2d
	.byte	0xd
	.4byte	0x1a0
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0xa
	.byte	0x2e
	.byte	0xc
	.4byte	0x194
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0xa
	.byte	0x30
	.byte	0x8
	.4byte	0x2b7
	.byte	0x50
	.byte	0
	.uleb128 0x11
	.4byte	0x6f
	.4byte	0x2c7
	.uleb128 0x15
	.4byte	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x24
	.byte	0xb
	.byte	0x4
	.4byte	0x349
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0xb
	.byte	0x5
	.byte	0xa
	.4byte	0x6f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0xb
	.byte	0x6
	.byte	0xa
	.4byte	0x6f
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0xb
	.byte	0x7
	.byte	0xa
	.4byte	0x6f
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0xb
	.byte	0x8
	.byte	0xa
	.4byte	0x6f
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0xb
	.byte	0x9
	.byte	0xa
	.4byte	0x6f
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0xb
	.byte	0xa
	.byte	0xa
	.4byte	0x6f
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0xb
	.byte	0xb
	.byte	0xa
	.4byte	0x6f
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0xb
	.byte	0xc
	.byte	0xa
	.4byte	0x6f
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0xb
	.byte	0xd
	.byte	0xa
	.4byte	0x6f
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0xb
	.byte	0x10
	.4byte	0x379
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0xb
	.byte	0x11
	.byte	0x9
	.4byte	0x2b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0xb
	.byte	0x12
	.byte	0xd
	.4byte	0x155
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0xb
	.byte	0x13
	.byte	0xa
	.4byte	0x379
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.4byte	0x12c
	.4byte	0x388
	.uleb128 0x1b
	.4byte	0x3e
	.byte	0
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0xb
	.byte	0x14
	.byte	0x3
	.4byte	0x349
	.uleb128 0xd
	.byte	0x8
	.byte	0xb
	.byte	0x16
	.4byte	0x3b7
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0xb
	.byte	0x17
	.byte	0x9
	.4byte	0x2b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0xb
	.byte	0x18
	.byte	0x9
	.4byte	0x2b
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0xb
	.byte	0x19
	.byte	0x3
	.4byte	0x394
	.uleb128 0x1c
	.byte	0x7
	.byte	0x1
	.4byte	0x5a
	.byte	0xc
	.byte	0x12
	.byte	0x6
	.4byte	0x3ea
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0xc
	.byte	0x2c
	.byte	0x1f
	.4byte	0x45e
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x1c
	.byte	0xc
	.byte	0x46
	.4byte	0x45e
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0xc
	.byte	0x47
	.byte	0xb
	.4byte	0x69b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0xc
	.byte	0x48
	.byte	0xb
	.4byte	0x6af
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0xc
	.byte	0x49
	.byte	0xf
	.4byte	0x6cd
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0xc
	.byte	0x4a
	.byte	0xf
	.4byte	0x6f6
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0xc
	.byte	0x4b
	.byte	0xb
	.4byte	0x714
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0xc
	.byte	0x4d
	.byte	0xb
	.4byte	0x743
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0xc
	.byte	0x4f
	.byte	0xb
	.4byte	0x6af
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.4byte	0x3f6
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0xc
	.byte	0x2d
	.byte	0x1d
	.4byte	0x580
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x50
	.byte	0xc
	.byte	0x52
	.4byte	0x580
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0xc
	.byte	0x53
	.byte	0xb
	.4byte	0x761
	.byte	0
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0xc
	.byte	0x54
	.byte	0xb
	.4byte	0x6af
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0xc
	.byte	0x55
	.byte	0xf
	.4byte	0x77f
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0xc
	.byte	0x56
	.byte	0xf
	.4byte	0x79d
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0xc
	.byte	0x57
	.byte	0xd
	.4byte	0x7bb
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0xc
	.byte	0x58
	.byte	0xb
	.4byte	0x6af
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0xc
	.byte	0x59
	.byte	0xb
	.4byte	0x7de
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0xc
	.byte	0x5a
	.byte	0xb
	.4byte	0x7f7
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0xc
	.byte	0x5b
	.byte	0xb
	.4byte	0x815
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0xc
	.byte	0x5c
	.byte	0x12
	.4byte	0x833
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0xc
	.byte	0x5d
	.byte	0x15
	.4byte	0x851
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0xc
	.byte	0x5e
	.byte	0xb
	.4byte	0x86a
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0xc
	.byte	0x5f
	.byte	0xb
	.4byte	0x7f7
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0xc
	.byte	0x60
	.byte	0xb
	.4byte	0x7f7
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0xc
	.byte	0x61
	.byte	0xc
	.4byte	0x87f
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0xc
	.byte	0x62
	.byte	0xc
	.4byte	0x898
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0xc
	.byte	0x63
	.byte	0xc
	.4byte	0x8b2
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0xc
	.byte	0x64
	.byte	0xb
	.4byte	0x714
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0xc
	.byte	0x65
	.byte	0xb
	.4byte	0x8d5
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0xc
	.byte	0x66
	.byte	0xb
	.4byte	0x761
	.byte	0x4c
	.byte	0
	.uleb128 0x10
	.4byte	0x46f
	.uleb128 0x1d
	.4byte	.LASF137
	.byte	0x4
	.byte	0xc
	.byte	0x2f
	.byte	0x7
	.4byte	0x5a9
	.uleb128 0x16
	.4byte	.LASF101
	.byte	0x30
	.byte	0x17
	.4byte	0x5a9
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x31
	.byte	0x15
	.4byte	0x5ae
	.byte	0
	.uleb128 0x3
	.4byte	0x3ea
	.uleb128 0x3
	.4byte	0x463
	.uleb128 0xd
	.byte	0x14
	.byte	0xc
	.byte	0x35
	.4byte	0x60a
	.uleb128 0x1e
	.string	"ops"
	.byte	0xc
	.byte	0x36
	.byte	0x17
	.4byte	0x585
	.byte	0
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0xc
	.byte	0x37
	.byte	0xb
	.4byte	0x114
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0xc
	.byte	0x38
	.byte	0xb
	.4byte	0x127
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0xc
	.byte	0x39
	.byte	0x9
	.4byte	0x2b
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0xc
	.byte	0x3a
	.byte	0xd
	.4byte	0x155
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0xc
	.byte	0x3b
	.byte	0xd
	.4byte	0x155
	.byte	0x11
	.byte	0
	.uleb128 0x4
	.4byte	.LASF108
	.byte	0xc
	.byte	0x3c
	.byte	0x3
	.4byte	0x5b3
	.uleb128 0xd
	.byte	0xc
	.byte	0xc
	.byte	0x3e
	.4byte	0x646
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xc
	.byte	0x3f
	.byte	0xe
	.4byte	0x646
	.byte	0
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0xc
	.byte	0x40
	.byte	0xb
	.4byte	0x114
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0xc
	.byte	0x41
	.byte	0xc
	.4byte	0x32
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	0x60a
	.uleb128 0x4
	.4byte	.LASF112
	.byte	0xc
	.byte	0x42
	.byte	0x3
	.4byte	0x616
	.uleb128 0x4
	.4byte	.LASF113
	.byte	0xc
	.byte	0x45
	.byte	0x10
	.4byte	0x663
	.uleb128 0x3
	.4byte	0x668
	.uleb128 0x12
	.4byte	0x678
	.uleb128 0x1
	.4byte	0x678
	.uleb128 0x1
	.4byte	0x114
	.byte	0
	.uleb128 0x3
	.4byte	0x67d
	.uleb128 0x1f
	.4byte	.LASF138
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x696
	.uleb128 0x1
	.4byte	0x646
	.uleb128 0x1
	.4byte	0x696
	.byte	0
	.uleb128 0x3
	.4byte	0x64b
	.uleb128 0x3
	.4byte	0x682
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x6af
	.uleb128 0x1
	.4byte	0x696
	.byte	0
	.uleb128 0x3
	.4byte	0x6a0
	.uleb128 0x5
	.4byte	0x149
	.4byte	0x6cd
	.uleb128 0x1
	.4byte	0x696
	.uleb128 0x1
	.4byte	0x114
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x3
	.4byte	0x6b4
	.uleb128 0x5
	.4byte	0x149
	.4byte	0x6eb
	.uleb128 0x1
	.4byte	0x696
	.uleb128 0x1
	.4byte	0x6eb
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x3
	.4byte	0x6f5
	.uleb128 0x14
	.4byte	0x6eb
	.uleb128 0x20
	.uleb128 0x3
	.4byte	0x6d2
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x714
	.uleb128 0x1
	.4byte	0x696
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x82
	.byte	0
	.uleb128 0x3
	.4byte	0x6fb
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x73c
	.uleb128 0x1
	.4byte	0x696
	.uleb128 0x1
	.4byte	0x73c
	.uleb128 0x1
	.4byte	0x657
	.uleb128 0x1
	.4byte	0x678
	.uleb128 0x1
	.4byte	0x114
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF114
	.uleb128 0x3
	.4byte	0x719
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x761
	.uleb128 0x1
	.4byte	0x696
	.uleb128 0x1
	.4byte	0x138
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x3
	.4byte	0x748
	.uleb128 0x5
	.4byte	0x149
	.4byte	0x77f
	.uleb128 0x1
	.4byte	0x696
	.uleb128 0x1
	.4byte	0x127
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x3
	.4byte	0x766
	.uleb128 0x5
	.4byte	0x149
	.4byte	0x79d
	.uleb128 0x1
	.4byte	0x696
	.uleb128 0x1
	.4byte	0x138
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x3
	.4byte	0x784
	.uleb128 0x5
	.4byte	0x13d
	.4byte	0x7bb
	.uleb128 0x1
	.4byte	0x696
	.uleb128 0x1
	.4byte	0x13d
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x3
	.4byte	0x7a2
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x7d9
	.uleb128 0x1
	.4byte	0x696
	.uleb128 0x1
	.4byte	0x138
	.uleb128 0x1
	.4byte	0x7d9
	.byte	0
	.uleb128 0x3
	.4byte	0x1f4
	.uleb128 0x3
	.4byte	0x7c0
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x7f7
	.uleb128 0x1
	.4byte	0x696
	.uleb128 0x1
	.4byte	0x138
	.byte	0
	.uleb128 0x3
	.4byte	0x7e3
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x815
	.uleb128 0x1
	.4byte	0x696
	.uleb128 0x1
	.4byte	0x138
	.uleb128 0x1
	.4byte	0x138
	.byte	0
	.uleb128 0x3
	.4byte	0x7fc
	.uleb128 0x5
	.4byte	0x82e
	.4byte	0x82e
	.uleb128 0x1
	.4byte	0x696
	.uleb128 0x1
	.4byte	0x138
	.byte	0
	.uleb128 0x3
	.4byte	0x3b7
	.uleb128 0x3
	.4byte	0x81a
	.uleb128 0x5
	.4byte	0x84c
	.4byte	0x84c
	.uleb128 0x1
	.4byte	0x696
	.uleb128 0x1
	.4byte	0x82e
	.byte	0
	.uleb128 0x3
	.4byte	0x388
	.uleb128 0x3
	.4byte	0x838
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x86a
	.uleb128 0x1
	.4byte	0x696
	.uleb128 0x1
	.4byte	0x82e
	.byte	0
	.uleb128 0x3
	.4byte	0x856
	.uleb128 0x12
	.4byte	0x87f
	.uleb128 0x1
	.4byte	0x696
	.uleb128 0x1
	.4byte	0x82e
	.byte	0
	.uleb128 0x3
	.4byte	0x86f
	.uleb128 0x5
	.4byte	0x6f
	.4byte	0x898
	.uleb128 0x1
	.4byte	0x696
	.uleb128 0x1
	.4byte	0x82e
	.byte	0
	.uleb128 0x3
	.4byte	0x884
	.uleb128 0x12
	.4byte	0x8b2
	.uleb128 0x1
	.4byte	0x696
	.uleb128 0x1
	.4byte	0x82e
	.uleb128 0x1
	.4byte	0x6f
	.byte	0
	.uleb128 0x3
	.4byte	0x89d
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x8d0
	.uleb128 0x1
	.4byte	0x696
	.uleb128 0x1
	.4byte	0x138
	.uleb128 0x1
	.4byte	0x8d0
	.byte	0
	.uleb128 0x3
	.4byte	0x2c7
	.uleb128 0x3
	.4byte	0x8b7
	.uleb128 0x11
	.4byte	0x60a
	.4byte	0x8ea
	.uleb128 0x15
	.4byte	0x3e
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0xe
	.byte	0x10
	.4byte	0x8da
	.uleb128 0x5
	.byte	0x3
	.4byte	g_vfs_dev_nodes
	.uleb128 0xa
	.4byte	.LASF115
	.byte	0xd
	.byte	0x1f
	.byte	0x8
	.4byte	0x114
	.4byte	0x91b
	.uleb128 0x1
	.4byte	0x116
	.uleb128 0x1
	.4byte	0x6f0
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF116
	.byte	0xe
	.byte	0xa3
	.byte	0x7
	.4byte	0x114
	.4byte	0x931
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF117
	.byte	0xd
	.byte	0x24
	.byte	0x5
	.4byte	0x2b
	.4byte	0x94c
	.uleb128 0x1
	.4byte	0x138
	.uleb128 0x1
	.4byte	0x138
	.byte	0
	.uleb128 0xa
	.4byte	.LASF118
	.byte	0xd
	.byte	0x2b
	.byte	0x5
	.4byte	0x2b
	.4byte	0x96c
	.uleb128 0x1
	.4byte	0x138
	.uleb128 0x1
	.4byte	0x138
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF119
	.byte	0xd
	.byte	0x29
	.byte	0x8
	.4byte	0x32
	.4byte	0x982
	.uleb128 0x1
	.4byte	0x138
	.byte	0
	.uleb128 0x21
	.4byte	.LASF139
	.byte	0xe
	.byte	0xa4
	.byte	0x6
	.4byte	0x994
	.uleb128 0x1
	.4byte	0x114
	.byte	0
	.uleb128 0xa
	.4byte	.LASF120
	.byte	0xd
	.byte	0x21
	.byte	0x8
	.4byte	0x114
	.4byte	0x9b4
	.uleb128 0x1
	.4byte	0x114
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0xc
	.4byte	.LASF122
	.byte	0xc1
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f8
	.uleb128 0x7
	.4byte	.LASF124
	.byte	0xc1
	.byte	0x1f
	.4byte	0x138
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"ret"
	.byte	0xc3
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0xc4
	.byte	0xe
	.4byte	0x646
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF123
	.byte	0xa0
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa4a
	.uleb128 0x7
	.4byte	.LASF124
	.byte	0xa0
	.byte	0x1f
	.4byte	0x138
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF125
	.byte	0xa0
	.byte	0x2f
	.4byte	0xa4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"ret"
	.byte	0xa2
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0xa3
	.byte	0xe
	.4byte	0x646
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.4byte	0x646
	.uleb128 0x22
	.4byte	.LASF140
	.byte	0x1
	.byte	0x8e
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa2
	.uleb128 0x7
	.4byte	.LASF124
	.byte	0x8e
	.byte	0x27
	.4byte	0x138
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF125
	.byte	0x8e
	.byte	0x37
	.4byte	0xa4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"len"
	.byte	0x90
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"mem"
	.byte	0x91
	.byte	0xb
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.4byte	.LASF126
	.byte	0x80
	.4byte	0x2b
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad5
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x82
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"e"
	.byte	0x83
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.4byte	.LASF128
	.byte	0x7b
	.4byte	0x2b
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xafc
	.uleb128 0x7
	.4byte	.LASF109
	.byte	0x7b
	.byte	0x19
	.4byte	0x646
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF129
	.byte	0x74
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb1f
	.uleb128 0x7
	.4byte	.LASF109
	.byte	0x74
	.byte	0x1b
	.4byte	0x646
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF130
	.byte	0x6f
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb42
	.uleb128 0x7
	.4byte	.LASF109
	.byte	0x6f
	.byte	0x19
	.4byte	0x646
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF131
	.byte	0x64
	.4byte	0x2b
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb76
	.uleb128 0x13
	.string	"fd"
	.byte	0x64
	.byte	0x17
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF109
	.byte	0x64
	.byte	0x25
	.4byte	0xa4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0x50
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbd3
	.uleb128 0x13
	.string	"cb"
	.byte	0x50
	.byte	0x1f
	.4byte	0xbe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.string	"arg"
	.byte	0x50
	.byte	0x44
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x52
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"e"
	.byte	0x52
	.byte	0x14
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x53
	.byte	0xe
	.4byte	0x646
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0xbe7
	.uleb128 0x1
	.4byte	0x114
	.uleb128 0x1
	.4byte	0x646
	.byte	0
	.uleb128 0x3
	.4byte	0xbd3
	.uleb128 0xc
	.4byte	.LASF133
	.byte	0x37
	.byte	0xa
	.4byte	0x646
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc2e
	.uleb128 0x7
	.4byte	.LASF124
	.byte	0x37
	.byte	0x21
	.4byte	0x138
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"e"
	.byte	0x39
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x3a
	.byte	0xe
	.4byte	0x646
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF134
	.byte	0x23
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc56
	.uleb128 0x7
	.4byte	.LASF109
	.byte	0x23
	.byte	0x18
	.4byte	0x646
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF135
	.byte	0x16
	.4byte	0x2b
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc7b
	.uleb128 0x8
	.string	"e"
	.byte	0x18
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.4byte	.LASF141
	.byte	0x1
	.byte	0x10
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x8
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.sleb128 6
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF70:
	.string	"aos_dirent_t"
.LASF140:
	.string	"inode_set_name"
.LASF119:
	.string	"strlen"
.LASF118:
	.string	"strncmp"
.LASF133:
	.string	"inode_open"
.LASF108:
	.string	"inode_t"
.LASF141:
	.string	"inode_init"
.LASF73:
	.string	"aos_dir_t"
.LASF2:
	.string	"unsigned int"
.LASF130:
	.string	"inode_ref"
.LASF54:
	.string	"st_blksize"
.LASF131:
	.string	"inode_ptr_get"
.LASF107:
	.string	"refs"
.LASF129:
	.string	"inode_unref"
.LASF92:
	.string	"opendir"
.LASF86:
	.string	"sync"
.LASF25:
	.string	"__nlink_t"
.LASF64:
	.string	"f_ffree"
.LASF76:
	.string	"VFS_TYPE_BLOCK_DEV"
.LASF104:
	.string	"i_name"
.LASF69:
	.string	"d_name"
.LASF21:
	.string	"__ino_t"
.LASF35:
	.string	"ino_t"
.LASF98:
	.string	"telldir"
.LASF103:
	.string	"i_arg"
.LASF127:
	.string	"count"
.LASF90:
	.string	"unlink"
.LASF13:
	.string	"long long unsigned int"
.LASF55:
	.string	"st_blocks"
.LASF122:
	.string	"inode_release"
.LASF111:
	.string	"offset"
.LASF110:
	.string	"f_arg"
.LASF116:
	.string	"pvPortMalloc"
.LASF102:
	.string	"i_fops"
.LASF42:
	.string	"stat"
.LASF43:
	.string	"st_dev"
.LASF32:
	.string	"tv_nsec"
.LASF10:
	.string	"size_t"
.LASF22:
	.string	"__mode_t"
.LASF68:
	.string	"d_type"
.LASF126:
	.string	"inode_avail_count"
.LASF114:
	.string	"_Bool"
.LASF48:
	.string	"st_gid"
.LASF97:
	.string	"rewinddir"
.LASF45:
	.string	"st_mode"
.LASF95:
	.string	"mkdir"
.LASF112:
	.string	"file_t"
.LASF46:
	.string	"st_nlink"
.LASF124:
	.string	"path"
.LASF137:
	.string	"inode_ops_t"
.LASF84:
	.string	"ioctl"
.LASF77:
	.string	"VFS_TYPE_FS_DEV"
.LASF85:
	.string	"poll"
.LASF41:
	.string	"timespec"
.LASF26:
	.string	"char"
.LASF33:
	.string	"blkcnt_t"
.LASF75:
	.string	"VFS_TYPE_CHAR_DEV"
.LASF113:
	.string	"poll_notify_t"
.LASF81:
	.string	"close"
.LASF132:
	.string	"inode_forearch_name"
.LASF28:
	.string	"ssize_t"
.LASF89:
	.string	"lseek"
.LASF128:
	.string	"inode_busy"
.LASF29:
	.string	"uint8_t"
.LASF106:
	.string	"type"
.LASF30:
	.string	"time_t"
.LASF88:
	.string	"fs_ops"
.LASF135:
	.string	"inode_alloc"
.LASF57:
	.string	"statfs"
.LASF44:
	.string	"st_ino"
.LASF63:
	.string	"f_files"
.LASF3:
	.string	"long long int"
.LASF83:
	.string	"write"
.LASF58:
	.string	"f_type"
.LASF18:
	.string	"__dev_t"
.LASF36:
	.string	"dev_t"
.LASF61:
	.string	"f_bfree"
.LASF134:
	.string	"inode_del"
.LASF79:
	.string	"file_ops"
.LASF78:
	.string	"file_ops_t"
.LASF120:
	.string	"memset"
.LASF138:
	.string	"pollfd"
.LASF62:
	.string	"f_bavail"
.LASF65:
	.string	"f_fsid"
.LASF56:
	.string	"st_spare4"
.LASF100:
	.string	"access"
.LASF91:
	.string	"rename"
.LASF4:
	.string	"long double"
.LASF20:
	.string	"__gid_t"
.LASF60:
	.string	"f_blocks"
.LASF38:
	.string	"gid_t"
.LASF14:
	.string	"__int_least64_t"
.LASF101:
	.string	"i_ops"
.LASF37:
	.string	"uid_t"
.LASF96:
	.string	"rmdir"
.LASF94:
	.string	"closedir"
.LASF7:
	.string	"short int"
.LASF52:
	.string	"st_mtim"
.LASF105:
	.string	"i_flags"
.LASF9:
	.string	"long int"
.LASF121:
	.string	"g_vfs_dev_nodes"
.LASF123:
	.string	"inode_reserve"
.LASF109:
	.string	"node"
.LASF93:
	.string	"readdir"
.LASF66:
	.string	"f_namelen"
.LASF16:
	.string	"__blksize_t"
.LASF139:
	.string	"vPortFree"
.LASF19:
	.string	"__uid_t"
.LASF51:
	.string	"st_atim"
.LASF82:
	.string	"read"
.LASF71:
	.string	"dd_vfs_fd"
.LASF80:
	.string	"open"
.LASF31:
	.string	"tv_sec"
.LASF74:
	.string	"VFS_TYPE_NOT_INIT"
.LASF12:
	.string	"long unsigned int"
.LASF40:
	.string	"nlink_t"
.LASF59:
	.string	"f_bsize"
.LASF6:
	.string	"unsigned char"
.LASF11:
	.string	"__uint32_t"
.LASF34:
	.string	"blksize_t"
.LASF50:
	.string	"st_size"
.LASF67:
	.string	"d_ino"
.LASF47:
	.string	"st_uid"
.LASF23:
	.string	"__off_t"
.LASF53:
	.string	"st_ctim"
.LASF24:
	.string	"_ssize_t"
.LASF72:
	.string	"dd_rsv"
.LASF5:
	.string	"signed char"
.LASF39:
	.string	"mode_t"
.LASF27:
	.string	"off_t"
.LASF8:
	.string	"short unsigned int"
.LASF115:
	.string	"memcpy"
.LASF99:
	.string	"seekdir"
.LASF15:
	.string	"__blkcnt_t"
.LASF17:
	.string	"_off_t"
.LASF49:
	.string	"st_rdev"
.LASF136:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF87:
	.string	"fs_ops_t"
.LASF125:
	.string	"inode"
.LASF117:
	.string	"strcmp"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/vfs"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/src/vfs_inode.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
