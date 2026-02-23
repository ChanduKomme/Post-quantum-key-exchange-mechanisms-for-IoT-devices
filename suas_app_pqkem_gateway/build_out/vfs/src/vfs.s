	.file	"vfs.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/vfs" "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/src/vfs.c"
	.section	.sbss.g_vfs_init,"aw",@nobits
	.type	g_vfs_init, @object
	.size	g_vfs_init, 1
g_vfs_init:
	.zero	1
	.section	.bss.xMutexBuffer,"aw",@nobits
	.align	2
	.type	xMutexBuffer, @object
	.size	xMutexBuffer, 80
xMutexBuffer:
	.zero	80
	.globl	g_vfs_mutex
	.section	.sbss.g_vfs_mutex,"aw",@nobits
	.align	2
	.type	g_vfs_mutex, @object
	.size	g_vfs_mutex, 4
g_vfs_mutex:
	.zero	4
	.section	.text.vfs_init,"ax",@progbits
	.align	1
	.globl	vfs_init
	.type	vfs_init, @function
vfs_init:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/src/vfs.c"
	.loc 1 29 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 30 9
	sw	zero,-20(s0)
	.loc 1 32 20
	lui	a5,%hi(g_vfs_init)
	lbu	a4,%lo(g_vfs_init)(a5)
	.loc 1 32 8
	li	a5,1
	bne	a4,a5,.L2
	.loc 1 33 16
	lw	a5,-20(s0)
	j	.L3
.L2:
	.loc 1 36 31
	lui	a5,%hi(xMutexBuffer)
	addi	a1,a5,%lo(xMutexBuffer)
	li	a0,1
	call	xQueueCreateMutexStatic
	mv	a4,a0
	.loc 1 36 29 discriminator 1
	lui	a5,%hi(g_vfs_mutex)
	sw	a4,%lo(g_vfs_mutex)(a5)
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	.loc 1 36 8 discriminator 1
	bne	a5,zero,.L4
	.loc 1 37 16
	li	a5,-1
	j	.L3
.L4:
	.loc 1 40 5
	call	inode_init
	.loc 1 42 16
	lui	a5,%hi(g_vfs_init)
	li	a4,1
	sb	a4,%lo(g_vfs_init)(a5)
	.loc 1 44 12
	lw	a5,-20(s0)
.L3:
	.loc 1 45 1
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
	.size	vfs_init, .-vfs_init
	.section	.text.aos_open,"ax",@progbits
	.align	1
	.globl	aos_open
	.type	aos_open, @function
aos_open:
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
	sw	a1,-40(s0)
	.loc 1 51 12
	sw	zero,-24(s0)
	.loc 1 52 9
	sw	zero,-20(s0)
	.loc 1 54 8
	lw	a5,-36(s0)
	bne	a5,zero,.L6
	.loc 1 55 16
	li	a5,-22
	j	.L7
.L6:
	.loc 1 58 11
	lw	a0,-36(s0)
	call	strlen
	sw	a0,-24(s0)
	.loc 1 59 8
	lw	a4,-24(s0)
	li	a5,1024
	bleu	a4,a5,.L8
	.loc 1 60 16
	li	a5,-91
	j	.L7
.L8:
	.loc 1 63 33
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 1 63 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L9
	.loc 1 64 13
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 65 16
	lw	a5,-20(s0)
	j	.L7
.L9:
	.loc 1 68 12
	lw	a0,-36(s0)
	call	inode_open
	sw	a0,-28(s0)
	.loc 1 70 8
	lw	a5,-28(s0)
	bne	a5,zero,.L10
	.loc 1 71 9
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 76 16
	li	a5,-2
	j	.L7
.L10:
	.loc 1 80 19
	lw	a5,-28(s0)
	lw	a4,-40(s0)
	sw	a4,12(a5)
	.loc 1 81 12
	lw	a0,-28(s0)
	call	new_file
	sw	a0,-32(s0)
	.loc 1 83 5
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 85 8
	lw	a5,-32(s0)
	bne	a5,zero,.L11
	.loc 1 86 16
	li	a5,-23
	j	.L7
.L11:
	.loc 1 89 16
	lw	a5,-28(s0)
	lbu	a4,16(a5)
	.loc 1 89 8
	li	a5,3
	bne	a4,a5,.L12
	.loc 1 90 23
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 90 30
	lw	a5,0(a5)
	.loc 1 90 12
	beq	a5,zero,.L13
	.loc 1 91 29
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 91 36
	lw	a5,0(a5)
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lw	a0,-32(s0)
	jalr	a5
.LVL0:
	sw	a0,-20(s0)
	j	.L13
.L12:
	.loc 1 95 23
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 95 29
	lw	a5,0(a5)
	.loc 1 95 12
	beq	a5,zero,.L13
	.loc 1 96 29
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 96 35
	lw	a5,0(a5)
	lw	a1,-32(s0)
	lw	a0,-28(s0)
	jalr	a5
.LVL1:
	sw	a0,-20(s0)
.L13:
	.loc 1 100 8
	lw	a5,-20(s0)
	beq	a5,zero,.L14
	.loc 1 101 9
	lw	a0,-32(s0)
	call	del_file
	.loc 1 102 16
	lw	a5,-20(s0)
	j	.L7
.L14:
	.loc 1 105 12
	lw	a0,-32(s0)
	call	get_fd
	mv	a5,a0
.L7:
	.loc 1 106 1
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
	.size	aos_open, .-aos_open
	.section	.text.aos_close,"ax",@progbits
	.align	1
	.globl	aos_close
	.type	aos_close, @function
aos_close:
.LFB7:
	.loc 1 109 1
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
	.loc 1 110 9
	sw	zero,-20(s0)
	.loc 1 114 9
	lw	a0,-36(s0)
	call	get_file
	sw	a0,-24(s0)
	.loc 1 116 8
	lw	a5,-24(s0)
	bne	a5,zero,.L16
	.loc 1 120 16
	li	a5,-2
	j	.L17
.L16:
	.loc 1 124 10
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 126 16
	lw	a5,-28(s0)
	lbu	a4,16(a5)
	.loc 1 126 8
	li	a5,3
	bne	a4,a5,.L18
	.loc 1 127 23
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 127 30
	lw	a5,4(a5)
	.loc 1 127 12
	beq	a5,zero,.L19
	.loc 1 128 29
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 128 36
	lw	a5,4(a5)
	lw	a0,-24(s0)
	jalr	a5
.LVL2:
	sw	a0,-20(s0)
	j	.L19
.L18:
	.loc 1 133 23
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 133 29
	lw	a5,4(a5)
	.loc 1 133 12
	beq	a5,zero,.L19
	.loc 1 134 29
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 134 35
	lw	a5,4(a5)
	lw	a0,-24(s0)
	jalr	a5
.LVL3:
	sw	a0,-20(s0)
.L19:
	.loc 1 138 34
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 1 138 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L20
	.loc 1 139 13
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 140 16
	lw	a5,-20(s0)
	j	.L17
.L20:
	.loc 1 143 5
	lw	a0,-24(s0)
	call	del_file
	.loc 1 145 5
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 147 12
	lw	a5,-20(s0)
.L17:
	.loc 1 148 1
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
	.size	aos_close, .-aos_close
	.section	.text.aos_read,"ax",@progbits
	.align	1
	.globl	aos_read
	.type	aos_read, @function
aos_read:
.LFB8:
	.loc 1 151 1
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
	.loc 1 152 13
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 156 9
	lw	a0,-36(s0)
	call	get_file
	sw	a0,-24(s0)
	.loc 1 158 8
	lw	a5,-24(s0)
	bne	a5,zero,.L22
	.loc 1 162 16
	li	a5,-2
	j	.L23
.L22:
	.loc 1 166 10
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 168 16
	lw	a5,-28(s0)
	lbu	a4,16(a5)
	.loc 1 168 8
	li	a5,3
	bne	a4,a5,.L24
	.loc 1 169 23
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 169 30
	lw	a5,8(a5)
	.loc 1 169 12
	beq	a5,zero,.L25
	.loc 1 170 31
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 170 38
	lw	a5,8(a5)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	jalr	a5
.LVL4:
	sw	a0,-20(s0)
	j	.L25
.L24:
	.loc 1 173 23
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 173 29
	lw	a5,8(a5)
	.loc 1 173 12
	beq	a5,zero,.L25
	.loc 1 174 31
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 174 37
	lw	a5,8(a5)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	jalr	a5
.LVL5:
	sw	a0,-20(s0)
.L25:
	.loc 1 178 12
	lw	a5,-20(s0)
.L23:
	.loc 1 179 1
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
	.size	aos_read, .-aos_read
	.section	.text.aos_write,"ax",@progbits
	.align	1
	.globl	aos_write
	.type	aos_write, @function
aos_write:
.LFB9:
	.loc 1 182 1
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
	.loc 1 183 13
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 187 9
	lw	a0,-36(s0)
	call	get_file
	sw	a0,-24(s0)
	.loc 1 189 8
	lw	a5,-24(s0)
	bne	a5,zero,.L27
	.loc 1 193 16
	li	a5,-2
	j	.L28
.L27:
	.loc 1 197 10
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 199 16
	lw	a5,-28(s0)
	lbu	a4,16(a5)
	.loc 1 199 8
	li	a5,3
	bne	a4,a5,.L29
	.loc 1 200 23
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 200 30
	lw	a5,12(a5)
	.loc 1 200 12
	beq	a5,zero,.L30
	.loc 1 201 32
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 201 39
	lw	a5,12(a5)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	jalr	a5
.LVL6:
	sw	a0,-20(s0)
	j	.L30
.L29:
	.loc 1 204 23
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 204 29
	lw	a5,12(a5)
	.loc 1 204 12
	beq	a5,zero,.L30
	.loc 1 205 32
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 205 38
	lw	a5,12(a5)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	jalr	a5
.LVL7:
	sw	a0,-20(s0)
.L30:
	.loc 1 209 12
	lw	a5,-20(s0)
.L28:
	.loc 1 210 1
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
	.size	aos_write, .-aos_write
	.section	.text.aos_ioctl,"ax",@progbits
	.align	1
	.globl	aos_ioctl
	.type	aos_ioctl, @function
aos_ioctl:
.LFB10:
	.loc 1 213 1
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
	.loc 1 214 9
	li	a5,-88
	sw	a5,-20(s0)
	.loc 1 218 8
	lw	a5,-36(s0)
	bge	a5,zero,.L32
	.loc 1 219 16
	li	a5,-22
	j	.L33
.L32:
	.loc 1 222 9
	lw	a0,-36(s0)
	call	get_file
	sw	a0,-24(s0)
	.loc 1 224 8
	lw	a5,-24(s0)
	bne	a5,zero,.L34
	.loc 1 225 16
	li	a5,-2
	j	.L33
.L34:
	.loc 1 228 10
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 230 16
	lw	a5,-28(s0)
	lbu	a4,16(a5)
	.loc 1 230 8
	li	a5,3
	bne	a4,a5,.L35
	.loc 1 231 23
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 231 30
	lw	a5,68(a5)
	.loc 1 231 12
	beq	a5,zero,.L36
	.loc 1 232 29
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 232 36
	lw	a5,68(a5)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	jalr	a5
.LVL8:
	sw	a0,-20(s0)
	j	.L36
.L35:
	.loc 1 235 23
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 235 29
	lw	a5,16(a5)
	.loc 1 235 12
	beq	a5,zero,.L36
	.loc 1 236 29
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 236 35
	lw	a5,16(a5)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	jalr	a5
.LVL9:
	sw	a0,-20(s0)
.L36:
	.loc 1 240 12
	lw	a5,-20(s0)
.L33:
	.loc 1 241 1
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
	.size	aos_ioctl, .-aos_ioctl
	.section	.text.aos_lseek,"ax",@progbits
	.align	1
	.globl	aos_lseek
	.type	aos_lseek, @function
aos_lseek:
.LFB11:
	.loc 1 244 1
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
	.loc 1 247 9
	li	a5,-88
	sw	a5,-20(s0)
	.loc 1 249 9
	lw	a0,-36(s0)
	call	get_file
	sw	a0,-24(s0)
	.loc 1 251 8
	lw	a5,-24(s0)
	bne	a5,zero,.L38
	.loc 1 252 16
	li	a5,-2
	j	.L39
.L38:
	.loc 1 255 10
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 257 16
	lw	a5,-28(s0)
	lbu	a4,16(a5)
	.loc 1 257 8
	li	a5,3
	bne	a4,a5,.L40
	.loc 1 258 23
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 258 30
	lw	a5,16(a5)
	.loc 1 258 12
	beq	a5,zero,.L40
	.loc 1 259 29
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 259 36
	lw	a5,16(a5)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	jalr	a5
.LVL10:
	sw	a0,-20(s0)
.L40:
	.loc 1 263 12
	lw	a5,-20(s0)
.L39:
	.loc 1 264 1
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
	.size	aos_lseek, .-aos_lseek
	.section	.text.aos_sync,"ax",@progbits
	.align	1
	.globl	aos_sync
	.type	aos_sync, @function
aos_sync:
.LFB12:
	.loc 1 267 1
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
	.loc 1 270 9
	li	a5,-88
	sw	a5,-20(s0)
	.loc 1 272 9
	lw	a0,-36(s0)
	call	get_file
	sw	a0,-24(s0)
	.loc 1 274 8
	lw	a5,-24(s0)
	bne	a5,zero,.L42
	.loc 1 275 16
	li	a5,-2
	j	.L43
.L42:
	.loc 1 278 10
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 280 16
	lw	a5,-28(s0)
	lbu	a4,16(a5)
	.loc 1 280 8
	li	a5,3
	bne	a4,a5,.L44
	.loc 1 281 23
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 281 30
	lw	a5,20(a5)
	.loc 1 281 12
	beq	a5,zero,.L45
	.loc 1 282 29
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 282 36
	lw	a5,20(a5)
	lw	a0,-24(s0)
	jalr	a5
.LVL11:
	sw	a0,-20(s0)
	j	.L45
.L44:
	.loc 1 285 23
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 285 29
	lw	a5,24(a5)
	.loc 1 285 12
	beq	a5,zero,.L45
	.loc 1 286 29
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 286 35
	lw	a5,24(a5)
	lw	a0,-24(s0)
	jalr	a5
.LVL12:
	sw	a0,-20(s0)
.L45:
	.loc 1 290 12
	lw	a5,-20(s0)
.L43:
	.loc 1 291 1
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
	.size	aos_sync, .-aos_sync
	.section	.text.aos_stat,"ax",@progbits
	.align	1
	.globl	aos_stat
	.type	aos_stat, @function
aos_stat:
.LFB13:
	.loc 1 294 1
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
	.loc 1 297 9
	sw	zero,-24(s0)
	.loc 1 297 18
	li	a5,-88
	sw	a5,-20(s0)
	.loc 1 299 8
	lw	a5,-36(s0)
	bne	a5,zero,.L47
	.loc 1 300 16
	li	a5,-22
	j	.L48
.L47:
	.loc 1 303 34
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 1 303 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L49
	.loc 1 304 13
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 305 16
	lw	a5,-24(s0)
	j	.L48
.L49:
	.loc 1 308 12
	lw	a0,-36(s0)
	call	inode_open
	sw	a0,-28(s0)
	.loc 1 310 8
	lw	a5,-28(s0)
	bne	a5,zero,.L50
	.loc 1 311 9
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 312 16
	li	a5,-19
	j	.L48
.L50:
	.loc 1 315 12
	lw	a0,-28(s0)
	call	new_file
	sw	a0,-32(s0)
	.loc 1 317 5
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 319 8
	lw	a5,-32(s0)
	bne	a5,zero,.L51
	.loc 1 320 16
	li	a5,-2
	j	.L48
.L51:
	.loc 1 323 16
	lw	a5,-28(s0)
	lbu	a4,16(a5)
	.loc 1 323 8
	li	a5,3
	bne	a4,a5,.L52
	.loc 1 324 23
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 324 30
	lw	a5,24(a5)
	.loc 1 324 12
	beq	a5,zero,.L52
	.loc 1 325 29
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 325 36
	lw	a5,24(a5)
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lw	a0,-32(s0)
	jalr	a5
.LVL13:
	sw	a0,-20(s0)
.L52:
	.loc 1 329 34
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 1 329 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L53
	.loc 1 330 13
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 331 16
	lw	a5,-24(s0)
	j	.L48
.L53:
	.loc 1 334 5
	lw	a0,-32(s0)
	call	del_file
	.loc 1 336 5
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 337 12
	lw	a5,-20(s0)
.L48:
	.loc 1 338 1
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
	.size	aos_stat, .-aos_stat
	.section	.text.aos_unlink,"ax",@progbits
	.align	1
	.globl	aos_unlink
	.type	aos_unlink, @function
aos_unlink:
.LFB14:
	.loc 1 341 1
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
	.loc 1 344 14
	li	a5,-88
	sw	a5,-20(s0)
	.loc 1 346 8
	lw	a5,-36(s0)
	bne	a5,zero,.L55
	.loc 1 347 16
	li	a5,-22
	j	.L56
.L55:
	.loc 1 350 34
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 1 350 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L57
	.loc 1 351 13
	li	a5,-1
	sw	a5,-32(s0)
	.loc 1 352 16
	lw	a5,-32(s0)
	j	.L56
.L57:
	.loc 1 355 12
	lw	a0,-36(s0)
	call	inode_open
	sw	a0,-24(s0)
	.loc 1 357 8
	lw	a5,-24(s0)
	bne	a5,zero,.L58
	.loc 1 358 9
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 359 16
	li	a5,-19
	j	.L56
.L58:
	.loc 1 362 9
	lw	a0,-24(s0)
	call	new_file
	sw	a0,-28(s0)
	.loc 1 364 5
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 366 8
	lw	a5,-28(s0)
	bne	a5,zero,.L59
	.loc 1 367 16
	li	a5,-2
	j	.L56
.L59:
	.loc 1 370 16
	lw	a5,-24(s0)
	lbu	a4,16(a5)
	.loc 1 370 8
	li	a5,3
	bne	a4,a5,.L60
	.loc 1 371 23
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 371 30
	lw	a5,28(a5)
	.loc 1 371 12
	beq	a5,zero,.L60
	.loc 1 372 29
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 372 36
	lw	a5,28(a5)
	lw	a1,-36(s0)
	lw	a0,-28(s0)
	jalr	a5
.LVL14:
	sw	a0,-20(s0)
.L60:
	.loc 1 376 34
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 1 376 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L61
	.loc 1 377 13
	li	a5,-1
	sw	a5,-32(s0)
	.loc 1 378 16
	lw	a5,-32(s0)
	j	.L56
.L61:
	.loc 1 381 5
	lw	a0,-28(s0)
	call	del_file
	.loc 1 383 5
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 384 12
	lw	a5,-20(s0)
.L56:
	.loc 1 385 1
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
	.size	aos_unlink, .-aos_unlink
	.section	.text.aos_rename,"ax",@progbits
	.align	1
	.globl	aos_rename
	.type	aos_rename, @function
aos_rename:
.LFB15:
	.loc 1 388 1
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
	.loc 1 391 14
	li	a5,-88
	sw	a5,-20(s0)
	.loc 1 393 8
	lw	a5,-36(s0)
	beq	a5,zero,.L63
	.loc 1 393 24 discriminator 1
	lw	a5,-40(s0)
	bne	a5,zero,.L64
.L63:
	.loc 1 394 16
	li	a5,-22
	j	.L65
.L64:
	.loc 1 397 34
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 1 397 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L66
	.loc 1 398 13
	li	a5,-1
	sw	a5,-32(s0)
	.loc 1 399 16
	lw	a5,-32(s0)
	j	.L65
.L66:
	.loc 1 402 12
	lw	a0,-36(s0)
	call	inode_open
	sw	a0,-24(s0)
	.loc 1 404 8
	lw	a5,-24(s0)
	bne	a5,zero,.L67
	.loc 1 405 9
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 406 16
	li	a5,-19
	j	.L65
.L67:
	.loc 1 409 9
	lw	a0,-24(s0)
	call	new_file
	sw	a0,-28(s0)
	.loc 1 411 5
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 413 8
	lw	a5,-28(s0)
	bne	a5,zero,.L68
	.loc 1 414 16
	li	a5,-2
	j	.L65
.L68:
	.loc 1 417 16
	lw	a5,-24(s0)
	lbu	a4,16(a5)
	.loc 1 417 8
	li	a5,3
	bne	a4,a5,.L69
	.loc 1 418 23
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 418 30
	lw	a5,32(a5)
	.loc 1 418 12
	beq	a5,zero,.L69
	.loc 1 419 29
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 419 36
	lw	a5,32(a5)
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lw	a0,-28(s0)
	jalr	a5
.LVL15:
	sw	a0,-20(s0)
.L69:
	.loc 1 423 34
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 1 423 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L70
	.loc 1 424 13
	li	a5,-1
	sw	a5,-32(s0)
	.loc 1 425 16
	lw	a5,-32(s0)
	j	.L65
.L70:
	.loc 1 428 5
	lw	a0,-28(s0)
	call	del_file
	.loc 1 430 5
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 431 12
	lw	a5,-20(s0)
.L65:
	.loc 1 432 1
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
	.size	aos_rename, .-aos_rename
	.section	.text.aos_opendir,"ax",@progbits
	.align	1
	.globl	aos_opendir
	.type	aos_opendir, @function
aos_opendir:
.LFB16:
	.loc 1 435 1
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
	.loc 1 438 16
	sw	zero,-20(s0)
	.loc 1 440 8
	lw	a5,-36(s0)
	bne	a5,zero,.L72
	.loc 1 441 15
	li	a5,0
	j	.L73
.L72:
	.loc 1 444 33
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 1 444 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L74
	.loc 1 445 15
	li	a5,0
	j	.L73
.L74:
	.loc 1 448 12
	lw	a0,-36(s0)
	call	inode_open
	sw	a0,-24(s0)
	.loc 1 450 8
	lw	a5,-24(s0)
	bne	a5,zero,.L75
	.loc 1 451 9
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 452 15
	li	a5,0
	j	.L73
.L75:
	.loc 1 455 12
	lw	a0,-24(s0)
	call	new_file
	sw	a0,-28(s0)
	.loc 1 457 5
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 459 8
	lw	a5,-28(s0)
	bne	a5,zero,.L76
	.loc 1 460 15
	li	a5,0
	j	.L73
.L76:
	.loc 1 463 16
	lw	a5,-24(s0)
	lbu	a4,16(a5)
	.loc 1 463 8
	li	a5,3
	bne	a4,a5,.L77
	.loc 1 464 23
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 464 30
	lw	a5,36(a5)
	.loc 1 464 12
	beq	a5,zero,.L77
	.loc 1 465 28
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 465 35
	lw	a5,36(a5)
	lw	a1,-36(s0)
	lw	a0,-28(s0)
	jalr	a5
.LVL16:
	sw	a0,-20(s0)
.L77:
	.loc 1 469 8
	lw	a5,-20(s0)
	bne	a5,zero,.L78
	.loc 1 470 37
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 1 470 12 discriminator 1
	li	a5,1
	beq	a4,a5,.L79
	.loc 1 471 19
	li	a5,0
	j	.L73
.L79:
	.loc 1 474 9
	lw	a0,-28(s0)
	call	del_file
	.loc 1 476 9
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 477 15
	li	a5,0
	j	.L73
.L78:
	.loc 1 480 21
	lw	a0,-28(s0)
	call	get_fd
	mv	a4,a0
	.loc 1 480 19 discriminator 1
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 481 12
	lw	a5,-20(s0)
.L73:
	.loc 1 482 1
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
	.size	aos_opendir, .-aos_opendir
	.section	.text.aos_closedir,"ax",@progbits
	.align	1
	.globl	aos_closedir
	.type	aos_closedir, @function
aos_closedir:
.LFB17:
	.loc 1 485 1
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
	.loc 1 488 14
	li	a5,-88
	sw	a5,-20(s0)
	.loc 1 490 8
	lw	a5,-36(s0)
	bne	a5,zero,.L81
	.loc 1 491 16
	li	a5,-22
	j	.L82
.L81:
	.loc 1 494 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	get_file
	sw	a0,-24(s0)
	.loc 1 496 8
	lw	a5,-24(s0)
	bne	a5,zero,.L83
	.loc 1 497 16
	li	a5,-2
	j	.L82
.L83:
	.loc 1 500 10
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 502 16
	lw	a5,-28(s0)
	lbu	a4,16(a5)
	.loc 1 502 8
	li	a5,3
	bne	a4,a5,.L84
	.loc 1 503 23
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 503 30
	lw	a5,44(a5)
	.loc 1 503 12
	beq	a5,zero,.L84
	.loc 1 504 29
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 504 36
	lw	a5,44(a5)
	lw	a1,-36(s0)
	lw	a0,-24(s0)
	jalr	a5
.LVL17:
	sw	a0,-20(s0)
.L84:
	.loc 1 508 34
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 1 508 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L85
	.loc 1 509 13
	li	a5,-1
	sw	a5,-32(s0)
	.loc 1 510 16
	lw	a5,-32(s0)
	j	.L82
.L85:
	.loc 1 513 5
	lw	a0,-24(s0)
	call	del_file
	.loc 1 515 5
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 517 12
	lw	a5,-20(s0)
.L82:
	.loc 1 518 1
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
	.size	aos_closedir, .-aos_closedir
	.section	.text.aos_readdir,"ax",@progbits
	.align	1
	.globl	aos_readdir
	.type	aos_readdir, @function
aos_readdir:
.LFB18:
	.loc 1 521 1
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
	.loc 1 524 19
	sw	zero,-20(s0)
	.loc 1 526 8
	lw	a5,-36(s0)
	bne	a5,zero,.L87
	.loc 1 527 15
	li	a5,0
	j	.L88
.L87:
	.loc 1 530 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	get_file
	sw	a0,-24(s0)
	.loc 1 531 8
	lw	a5,-24(s0)
	bne	a5,zero,.L89
	.loc 1 532 15
	li	a5,0
	j	.L88
.L89:
	.loc 1 535 10
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 537 16
	lw	a5,-28(s0)
	lbu	a4,16(a5)
	.loc 1 537 8
	li	a5,3
	bne	a4,a5,.L90
	.loc 1 538 23
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 538 30
	lw	a5,40(a5)
	.loc 1 538 12
	beq	a5,zero,.L90
	.loc 1 539 29
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 539 36
	lw	a5,40(a5)
	lw	a1,-36(s0)
	lw	a0,-24(s0)
	jalr	a5
.LVL18:
	sw	a0,-20(s0)
.L90:
	.loc 1 543 8
	lw	a5,-20(s0)
	beq	a5,zero,.L91
	.loc 1 544 16
	lw	a5,-20(s0)
	j	.L88
.L91:
	.loc 1 547 11
	li	a5,0
.L88:
	.loc 1 548 1
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
.LFE18:
	.size	aos_readdir, .-aos_readdir
	.section	.text.aos_mkdir,"ax",@progbits
	.align	1
	.globl	aos_mkdir
	.type	aos_mkdir, @function
aos_mkdir:
.LFB19:
	.loc 1 551 1
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
	.loc 1 554 14
	li	a5,-88
	sw	a5,-20(s0)
	.loc 1 556 8
	lw	a5,-36(s0)
	bne	a5,zero,.L93
	.loc 1 557 16
	li	a5,-22
	j	.L94
.L93:
	.loc 1 560 34
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 1 560 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L95
	.loc 1 561 13
	li	a5,-1
	sw	a5,-32(s0)
	.loc 1 562 16
	lw	a5,-32(s0)
	j	.L94
.L95:
	.loc 1 565 12
	lw	a0,-36(s0)
	call	inode_open
	sw	a0,-24(s0)
	.loc 1 567 8
	lw	a5,-24(s0)
	bne	a5,zero,.L96
	.loc 1 568 9
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 569 16
	li	a5,-19
	j	.L94
.L96:
	.loc 1 572 12
	lw	a0,-24(s0)
	call	new_file
	sw	a0,-28(s0)
	.loc 1 574 5
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 576 8
	lw	a5,-28(s0)
	bne	a5,zero,.L97
	.loc 1 577 16
	li	a5,-2
	j	.L94
.L97:
	.loc 1 580 16
	lw	a5,-24(s0)
	lbu	a4,16(a5)
	.loc 1 580 8
	li	a5,3
	bne	a4,a5,.L98
	.loc 1 581 23
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 581 30
	lw	a5,48(a5)
	.loc 1 581 12
	beq	a5,zero,.L98
	.loc 1 582 29
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 582 36
	lw	a5,48(a5)
	lw	a1,-36(s0)
	lw	a0,-28(s0)
	jalr	a5
.LVL19:
	sw	a0,-20(s0)
.L98:
	.loc 1 586 34
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 1 586 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L99
	.loc 1 587 13
	li	a5,-1
	sw	a5,-32(s0)
	.loc 1 588 16
	lw	a5,-32(s0)
	j	.L94
.L99:
	.loc 1 591 5
	lw	a0,-28(s0)
	call	del_file
	.loc 1 593 5
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 594 12
	lw	a5,-20(s0)
.L94:
	.loc 1 595 1
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
	.size	aos_mkdir, .-aos_mkdir
	.section	.text.aos_rmdir,"ax",@progbits
	.align	1
	.globl	aos_rmdir
	.type	aos_rmdir, @function
aos_rmdir:
.LFB20:
	.loc 1 598 1
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
	.loc 1 601 9
	li	a5,-88
	sw	a5,-24(s0)
	.loc 1 602 9
	li	a5,-88
	sw	a5,-20(s0)
	.loc 1 604 8
	lw	a5,-36(s0)
	bne	a5,zero,.L101
	.loc 1 605 16
	li	a5,-22
	j	.L102
.L101:
	.loc 1 608 34
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 1 608 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L103
	.loc 1 609 13
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 610 16
	lw	a5,-24(s0)
	j	.L102
.L103:
	.loc 1 613 12
	lw	a0,-36(s0)
	call	inode_open
	sw	a0,-28(s0)
	.loc 1 615 8
	lw	a5,-28(s0)
	bne	a5,zero,.L104
	.loc 1 616 9
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 617 16
	li	a5,-19
	j	.L102
.L104:
	.loc 1 620 12
	lw	a0,-28(s0)
	call	new_file
	sw	a0,-32(s0)
	.loc 1 622 5
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 624 8
	lw	a5,-32(s0)
	bne	a5,zero,.L105
	.loc 1 625 16
	li	a5,-2
	j	.L102
.L105:
	.loc 1 628 16
	lw	a5,-28(s0)
	lbu	a4,16(a5)
	.loc 1 628 8
	li	a5,3
	bne	a4,a5,.L106
	.loc 1 629 23
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 629 30
	lw	a5,52(a5)
	.loc 1 629 12
	beq	a5,zero,.L106
	.loc 1 630 29
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 630 36
	lw	a5,52(a5)
	lw	a1,-36(s0)
	lw	a0,-32(s0)
	jalr	a5
.LVL20:
	sw	a0,-20(s0)
.L106:
	.loc 1 634 34
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 1 634 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L107
	.loc 1 635 13
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 636 16
	lw	a5,-24(s0)
	j	.L102
.L107:
	.loc 1 639 5
	lw	a0,-32(s0)
	call	del_file
	.loc 1 641 5
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 642 12
	lw	a5,-20(s0)
.L102:
	.loc 1 643 1
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
	.size	aos_rmdir, .-aos_rmdir
	.section	.text.aos_rewinddir,"ax",@progbits
	.align	1
	.globl	aos_rewinddir
	.type	aos_rewinddir, @function
aos_rewinddir:
.LFB21:
	.loc 1 646 1
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
	.loc 1 650 8
	lw	a5,-36(s0)
	beq	a5,zero,.L113
	.loc 1 654 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	get_file
	sw	a0,-20(s0)
	.loc 1 656 8
	lw	a5,-20(s0)
	beq	a5,zero,.L114
	.loc 1 660 10
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 662 16
	lw	a5,-24(s0)
	lbu	a4,16(a5)
	.loc 1 662 8
	li	a5,3
	bne	a4,a5,.L115
	.loc 1 663 23
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 663 30
	lw	a5,56(a5)
	.loc 1 663 12
	beq	a5,zero,.L115
	.loc 1 664 23
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 664 30
	lw	a5,56(a5)
	lw	a1,-36(s0)
	lw	a0,-20(s0)
	jalr	a5
.LVL21:
	.loc 1 668 5
	j	.L115
.L113:
	.loc 1 651 9
	nop
	j	.L108
.L114:
	.loc 1 657 9
	nop
	j	.L108
.L115:
	.loc 1 668 5
	nop
.L108:
	.loc 1 669 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	aos_rewinddir, .-aos_rewinddir
	.section	.text.aos_telldir,"ax",@progbits
	.align	1
	.globl	aos_telldir
	.type	aos_telldir, @function
aos_telldir:
.LFB22:
	.loc 1 672 1
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
	.loc 1 675 10
	sw	zero,-20(s0)
	.loc 1 677 8
	lw	a5,-36(s0)
	bne	a5,zero,.L117
	.loc 1 678 16
	li	a5,-22
	j	.L118
.L117:
	.loc 1 681 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	get_file
	sw	a0,-24(s0)
	.loc 1 683 8
	lw	a5,-24(s0)
	bne	a5,zero,.L119
	.loc 1 684 16
	li	a5,-2
	j	.L118
.L119:
	.loc 1 687 10
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 689 16
	lw	a5,-28(s0)
	lbu	a4,16(a5)
	.loc 1 689 8
	li	a5,3
	bne	a4,a5,.L120
	.loc 1 690 23
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 690 30
	lw	a5,60(a5)
	.loc 1 690 12
	beq	a5,zero,.L120
	.loc 1 691 29
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 691 36
	lw	a5,60(a5)
	lw	a1,-36(s0)
	lw	a0,-24(s0)
	jalr	a5
.LVL22:
	sw	a0,-20(s0)
.L120:
	.loc 1 694 12
	lw	a5,-20(s0)
.L118:
	.loc 1 695 1
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
.LFE22:
	.size	aos_telldir, .-aos_telldir
	.section	.text.aos_seekdir,"ax",@progbits
	.align	1
	.globl	aos_seekdir
	.type	aos_seekdir, @function
aos_seekdir:
.LFB23:
	.loc 1 698 1
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
	.loc 1 702 8
	lw	a5,-36(s0)
	beq	a5,zero,.L125
	.loc 1 706 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	get_file
	sw	a0,-20(s0)
	.loc 1 708 8
	lw	a5,-20(s0)
	beq	a5,zero,.L126
	.loc 1 712 10
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 714 16
	lw	a5,-24(s0)
	lbu	a4,16(a5)
	.loc 1 714 8
	li	a5,3
	bne	a4,a5,.L121
	.loc 1 715 23
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 715 30
	lw	a5,64(a5)
	.loc 1 715 12
	beq	a5,zero,.L121
	.loc 1 716 23
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 716 30
	lw	a5,64(a5)
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lw	a0,-20(s0)
	jalr	a5
.LVL23:
	j	.L121
.L125:
	.loc 1 703 9
	nop
	j	.L121
.L126:
	.loc 1 709 9
	nop
.L121:
	.loc 1 719 1
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
	.size	aos_seekdir, .-aos_seekdir
	.section	.text.aos_statfs,"ax",@progbits
	.align	1
	.globl	aos_statfs
	.type	aos_statfs, @function
aos_statfs:
.LFB24:
	.loc 1 722 1
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
	.loc 1 725 9
	li	a5,-88
	sw	a5,-24(s0)
	.loc 1 726 9
	li	a5,-88
	sw	a5,-20(s0)
	.loc 1 728 8
	lw	a5,-36(s0)
	bne	a5,zero,.L128
	.loc 1 729 16
	li	a5,-22
	j	.L129
.L128:
	.loc 1 732 16
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	sw	a0,-24(s0)
	.loc 1 732 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L130
	.loc 1 733 16
	lw	a5,-24(s0)
	j	.L129
.L130:
	.loc 1 736 12
	lw	a0,-36(s0)
	call	inode_open
	sw	a0,-28(s0)
	.loc 1 738 8
	lw	a5,-28(s0)
	bne	a5,zero,.L131
	.loc 1 739 9
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 740 16
	li	a5,-19
	j	.L129
.L131:
	.loc 1 743 12
	lw	a0,-28(s0)
	call	new_file
	sw	a0,-32(s0)
	.loc 1 745 5
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 747 8
	lw	a5,-32(s0)
	bne	a5,zero,.L132
	.loc 1 748 16
	li	a5,-2
	j	.L129
.L132:
	.loc 1 751 16
	lw	a5,-28(s0)
	lbu	a4,16(a5)
	.loc 1 751 8
	li	a5,3
	bne	a4,a5,.L133
	.loc 1 752 23
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 752 30
	lw	a5,72(a5)
	.loc 1 752 12
	beq	a5,zero,.L133
	.loc 1 753 29
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 753 36
	lw	a5,72(a5)
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lw	a0,-32(s0)
	jalr	a5
.LVL24:
	sw	a0,-20(s0)
.L133:
	.loc 1 757 16
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	sw	a0,-24(s0)
	.loc 1 757 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L134
	.loc 1 758 16
	lw	a5,-24(s0)
	j	.L129
.L134:
	.loc 1 761 5
	lw	a0,-32(s0)
	call	del_file
	.loc 1 763 5
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 765 12
	lw	a5,-20(s0)
.L129:
	.loc 1 766 1
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
.LFE24:
	.size	aos_statfs, .-aos_statfs
	.section	.text.aos_access,"ax",@progbits
	.align	1
	.globl	aos_access
	.type	aos_access, @function
aos_access:
.LFB25:
	.loc 1 769 1
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
	.loc 1 772 9
	li	a5,-88
	sw	a5,-24(s0)
	.loc 1 773 9
	li	a5,-88
	sw	a5,-20(s0)
	.loc 1 775 8
	lw	a5,-36(s0)
	bne	a5,zero,.L136
	.loc 1 776 16
	li	a5,-22
	j	.L137
.L136:
	.loc 1 779 34
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 1 779 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L138
	.loc 1 780 16
	lw	a5,-24(s0)
	j	.L137
.L138:
	.loc 1 783 12
	lw	a0,-36(s0)
	call	inode_open
	sw	a0,-28(s0)
	.loc 1 785 8
	lw	a5,-28(s0)
	bne	a5,zero,.L139
	.loc 1 786 9
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 787 16
	li	a5,-19
	j	.L137
.L139:
	.loc 1 790 12
	lw	a0,-28(s0)
	call	new_file
	sw	a0,-32(s0)
	.loc 1 792 5
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 794 8
	lw	a5,-32(s0)
	bne	a5,zero,.L140
	.loc 1 795 16
	li	a5,-2
	j	.L137
.L140:
	.loc 1 798 16
	lw	a5,-28(s0)
	lbu	a4,16(a5)
	.loc 1 798 8
	li	a5,3
	bne	a4,a5,.L141
	.loc 1 799 23
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 799 30
	lw	a5,76(a5)
	.loc 1 799 12
	beq	a5,zero,.L141
	.loc 1 800 29
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 800 36
	lw	a5,76(a5)
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lw	a0,-32(s0)
	jalr	a5
.LVL25:
	sw	a0,-20(s0)
.L141:
	.loc 1 804 34
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 1 804 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L142
	.loc 1 805 16
	lw	a5,-24(s0)
	j	.L137
.L142:
	.loc 1 808 5
	lw	a0,-32(s0)
	call	del_file
	.loc 1 810 5
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 811 12
	lw	a5,-20(s0)
.L137:
	.loc 1 812 1
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
.LFE25:
	.size	aos_access, .-aos_access
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/queue.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/semphr.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timeval.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timespec.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/types.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/stat.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_dir.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_inode.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_file.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x13a7
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x21
	.4byte	.LASF184
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x22
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x6d
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x85
	.uleb128 0x11
	.4byte	0x74
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x9f
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x23
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x3f
	.byte	0x11
	.4byte	0x61
	.uleb128 0x11
	.4byte	0xaf
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x40
	.byte	0x12
	.4byte	0x93
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x41
	.byte	0x12
	.4byte	0x93
	.uleb128 0x1a
	.4byte	.LASF22
	.byte	0xc
	.2byte	0x433
	.byte	0x8
	.4byte	0x100
	.uleb128 0x9
	.4byte	.LASF19
	.2byte	0x438
	.byte	0xd
	.4byte	0xcc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF20
	.2byte	0x439
	.byte	0x8
	.4byte	0x100
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.4byte	0xad
	.4byte	0x110
	.uleb128 0x12
	.4byte	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.4byte	.LASF21
	.2byte	0x43b
	.byte	0x27
	.4byte	0xd8
	.uleb128 0x1a
	.4byte	.LASF23
	.byte	0x14
	.2byte	0x43e
	.byte	0x10
	.4byte	0x151
	.uleb128 0x9
	.4byte	.LASF24
	.2byte	0x443
	.byte	0xe
	.4byte	0xc0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF20
	.2byte	0x444
	.byte	0x8
	.4byte	0xad
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF25
	.2byte	0x445
	.byte	0x17
	.4byte	0x110
	.byte	0x8
	.byte	0
	.uleb128 0x17
	.4byte	.LASF26
	.2byte	0x449
	.byte	0x3
	.4byte	0x11c
	.uleb128 0x24
	.byte	0x4
	.byte	0x5
	.2byte	0x49c
	.byte	0x2
	.4byte	0x180
	.uleb128 0x1d
	.4byte	.LASF27
	.2byte	0x49e
	.byte	0x9
	.4byte	0xad
	.uleb128 0x1d
	.4byte	.LASF24
	.2byte	0x49f
	.byte	0xf
	.4byte	0xc0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF28
	.byte	0x50
	.2byte	0x498
	.byte	0x10
	.4byte	0x1f5
	.uleb128 0x9
	.4byte	.LASF29
	.2byte	0x49a
	.byte	0x8
	.4byte	0x1f5
	.byte	0
	.uleb128 0x25
	.string	"u"
	.byte	0x5
	.2byte	0x4a0
	.byte	0x4
	.4byte	0x15d
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF30
	.2byte	0x4a2
	.byte	0xf
	.4byte	0x205
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF31
	.2byte	0x4a3
	.byte	0xe
	.4byte	0x215
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF32
	.2byte	0x4a4
	.byte	0xa
	.4byte	0x225
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF33
	.2byte	0x4a7
	.byte	0xb
	.4byte	0x74
	.byte	0x46
	.uleb128 0x9
	.4byte	.LASF34
	.2byte	0x4af
	.byte	0xf
	.4byte	0xc0
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF35
	.2byte	0x4b0
	.byte	0xb
	.4byte	0x74
	.byte	0x4c
	.byte	0
	.uleb128 0x10
	.4byte	0xad
	.4byte	0x205
	.uleb128 0x12
	.4byte	0x3e
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	0x151
	.4byte	0x215
	.uleb128 0x12
	.4byte	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.4byte	0xc0
	.4byte	0x225
	.uleb128 0x12
	.4byte	0x3e
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	0x74
	.4byte	0x235
	.uleb128 0x12
	.4byte	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.4byte	.LASF36
	.2byte	0x4b3
	.byte	0x3
	.4byte	0x180
	.uleb128 0x17
	.4byte	.LASF37
	.2byte	0x4b4
	.byte	0x17
	.4byte	0x235
	.uleb128 0x4
	.4byte	0x259
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF38
	.uleb128 0x11
	.4byte	0x252
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x6
	.byte	0x30
	.byte	0x22
	.4byte	0x26a
	.uleb128 0x4
	.4byte	0x26f
	.uleb128 0x1e
	.4byte	.LASF140
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x7
	.byte	0x25
	.byte	0x17
	.4byte	0x25e
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x8
	.byte	0x4f
	.byte	0x1b
	.4byte	0x9f
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x8
	.byte	0xc8
	.byte	0x17
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x9
	.byte	0x1e
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x9
	.byte	0x22
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x9
	.byte	0x2e
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x9
	.byte	0x38
	.byte	0xf
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x9
	.byte	0x3c
	.byte	0x18
	.4byte	0x8c
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x9
	.byte	0x3f
	.byte	0x18
	.4byte	0x8c
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x9
	.byte	0x4b
	.byte	0x18
	.4byte	0x8c
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x9
	.byte	0x5a
	.byte	0x14
	.4byte	0x280
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x9
	.byte	0x66
	.byte	0x10
	.4byte	0x2b0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x9
	.byte	0x93
	.byte	0x14
	.4byte	0x2b
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x9
	.byte	0xd5
	.byte	0x18
	.4byte	0x8c
	.uleb128 0x4
	.4byte	0x252
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0xa
	.byte	0x2a
	.byte	0x19
	.4byte	0x28c
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x10
	.byte	0xb
	.byte	0x2f
	.4byte	0x354
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0xb
	.byte	0x30
	.byte	0x9
	.4byte	0x321
	.byte	0
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0xb
	.byte	0x31
	.byte	0x7
	.4byte	0x6d
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0xc
	.byte	0x61
	.byte	0x14
	.4byte	0x298
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0xc
	.byte	0x66
	.byte	0x15
	.4byte	0x2a4
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0xc
	.byte	0x89
	.byte	0x11
	.4byte	0x2e0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0xc
	.byte	0x9b
	.byte	0x11
	.4byte	0x2f8
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0xc
	.byte	0x9f
	.byte	0x11
	.4byte	0x2bc
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xc
	.byte	0xa3
	.byte	0x11
	.4byte	0x2c8
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0xc
	.byte	0xa7
	.byte	0x11
	.4byte	0x2d4
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xc
	.byte	0xb6
	.byte	0x12
	.4byte	0x304
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xc
	.byte	0xbb
	.byte	0x12
	.4byte	0x2ec
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0xc
	.byte	0xc0
	.byte	0x13
	.4byte	0x310
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x58
	.byte	0xd
	.byte	0x1b
	.4byte	0x48f
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0xd
	.byte	0x1d
	.byte	0x9
	.4byte	0x384
	.byte	0
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0xd
	.byte	0x1e
	.byte	0x9
	.4byte	0x36c
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0xd
	.byte	0x1f
	.byte	0xa
	.4byte	0x3b4
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0xd
	.byte	0x20
	.byte	0xb
	.4byte	0x3c0
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0xd
	.byte	0x21
	.byte	0x9
	.4byte	0x390
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0xd
	.byte	0x22
	.byte	0x9
	.4byte	0x39c
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0xd
	.byte	0x23
	.byte	0x9
	.4byte	0x384
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0xd
	.byte	0x24
	.byte	0x9
	.4byte	0x378
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0xd
	.byte	0x2a
	.byte	0x13
	.4byte	0x32d
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF78
	.byte	0xd
	.byte	0x2b
	.byte	0x13
	.4byte	0x32d
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0xd
	.byte	0x2c
	.byte	0x13
	.4byte	0x32d
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0xd
	.byte	0x2d
	.byte	0xd
	.4byte	0x360
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0xd
	.byte	0x2e
	.byte	0xc
	.4byte	0x354
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0xd
	.byte	0x30
	.byte	0x8
	.4byte	0x48f
	.byte	0x50
	.byte	0
	.uleb128 0x10
	.4byte	0x6d
	.4byte	0x49f
	.uleb128 0x12
	.4byte	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x24
	.byte	0xe
	.byte	0x4
	.4byte	0x521
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0xe
	.byte	0x5
	.byte	0xa
	.4byte	0x6d
	.byte	0
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0xe
	.byte	0x6
	.byte	0xa
	.4byte	0x6d
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0xe
	.byte	0x7
	.byte	0xa
	.4byte	0x6d
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0xe
	.byte	0x8
	.byte	0xa
	.4byte	0x6d
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0xe
	.byte	0x9
	.byte	0xa
	.4byte	0x6d
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0xe
	.byte	0xa
	.byte	0xa
	.4byte	0x6d
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0xe
	.byte	0xb
	.byte	0xa
	.4byte	0x6d
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0xe
	.byte	0xc
	.byte	0xa
	.4byte	0x6d
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0xe
	.byte	0xd
	.byte	0xa
	.4byte	0x6d
	.byte	0x20
	.byte	0
	.uleb128 0x18
	.byte	0x8
	.byte	0xe
	.byte	0x10
	.4byte	0x551
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0xe
	.byte	0x11
	.byte	0x9
	.4byte	0x2b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0xe
	.byte	0x12
	.byte	0xd
	.4byte	0x74
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0xe
	.byte	0x13
	.byte	0xa
	.4byte	0x551
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.4byte	0x252
	.4byte	0x560
	.uleb128 0x26
	.4byte	0x3e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0xe
	.byte	0x14
	.byte	0x3
	.4byte	0x521
	.uleb128 0x18
	.byte	0x8
	.byte	0xe
	.byte	0x16
	.4byte	0x58f
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0xe
	.byte	0x17
	.byte	0x9
	.4byte	0x2b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0xe
	.byte	0x18
	.byte	0x9
	.4byte	0x2b
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0xe
	.byte	0x19
	.byte	0x3
	.4byte	0x56c
	.uleb128 0x27
	.byte	0x7
	.byte	0x1
	.4byte	0x85
	.byte	0xf
	.byte	0x12
	.byte	0x6
	.4byte	0x5c2
	.uleb128 0x19
	.4byte	.LASF100
	.byte	0
	.uleb128 0x19
	.4byte	.LASF101
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF103
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0xf
	.byte	0x2c
	.byte	0x1f
	.4byte	0x636
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x1c
	.byte	0xf
	.byte	0x46
	.4byte	0x636
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0xf
	.byte	0x47
	.byte	0xb
	.4byte	0x873
	.byte	0
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0xf
	.byte	0x48
	.byte	0xb
	.4byte	0x887
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0xf
	.byte	0x49
	.byte	0xf
	.4byte	0x8a5
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xf
	.byte	0x4a
	.byte	0xf
	.4byte	0x8ce
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0xf
	.byte	0x4b
	.byte	0xb
	.4byte	0x8ec
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0xf
	.byte	0x4d
	.byte	0xb
	.4byte	0x91b
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF112
	.byte	0xf
	.byte	0x4f
	.byte	0xb
	.4byte	0x887
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.4byte	0x5ce
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0xf
	.byte	0x2d
	.byte	0x1d
	.4byte	0x758
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x50
	.byte	0xf
	.byte	0x52
	.4byte	0x758
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0xf
	.byte	0x53
	.byte	0xb
	.4byte	0x939
	.byte	0
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0xf
	.byte	0x54
	.byte	0xb
	.4byte	0x887
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0xf
	.byte	0x55
	.byte	0xf
	.4byte	0x957
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xf
	.byte	0x56
	.byte	0xf
	.4byte	0x975
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF115
	.byte	0xf
	.byte	0x57
	.byte	0xd
	.4byte	0x993
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF112
	.byte	0xf
	.byte	0x58
	.byte	0xb
	.4byte	0x887
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0xf
	.byte	0x59
	.byte	0xb
	.4byte	0x9b6
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0xf
	.byte	0x5a
	.byte	0xb
	.4byte	0x9cf
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0xf
	.byte	0x5b
	.byte	0xb
	.4byte	0x9ed
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0xf
	.byte	0x5c
	.byte	0x12
	.4byte	0xa0b
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0xf
	.byte	0x5d
	.byte	0x15
	.4byte	0xa29
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0xf
	.byte	0x5e
	.byte	0xb
	.4byte	0xa42
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0xf
	.byte	0x5f
	.byte	0xb
	.4byte	0x9cf
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0xf
	.byte	0x60
	.byte	0xb
	.4byte	0x9cf
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0xf
	.byte	0x61
	.byte	0xc
	.4byte	0xa57
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0xf
	.byte	0x62
	.byte	0xc
	.4byte	0xa70
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0xf
	.byte	0x63
	.byte	0xc
	.4byte	0xa8a
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0xf
	.byte	0x64
	.byte	0xb
	.4byte	0x8ec
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0xf
	.byte	0x65
	.byte	0xb
	.4byte	0xaad
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0xf
	.byte	0x66
	.byte	0xb
	.4byte	0x939
	.byte	0x4c
	.byte	0
	.uleb128 0x11
	.4byte	0x647
	.uleb128 0x28
	.4byte	.LASF185
	.byte	0x4
	.byte	0xf
	.byte	0x2f
	.byte	0x7
	.4byte	0x781
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0x30
	.byte	0x17
	.4byte	0x781
	.uleb128 0x1f
	.4byte	.LASF128
	.byte	0x31
	.byte	0x15
	.4byte	0x786
	.byte	0
	.uleb128 0x4
	.4byte	0x5c2
	.uleb128 0x4
	.4byte	0x63b
	.uleb128 0x18
	.byte	0x14
	.byte	0xf
	.byte	0x35
	.4byte	0x7e2
	.uleb128 0x29
	.string	"ops"
	.byte	0xf
	.byte	0x36
	.byte	0x17
	.4byte	0x75d
	.byte	0
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0xf
	.byte	0x37
	.byte	0xb
	.4byte	0xad
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0xf
	.byte	0x38
	.byte	0xb
	.4byte	0x31c
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF131
	.byte	0xf
	.byte	0x39
	.byte	0x9
	.4byte	0x2b
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF132
	.byte	0xf
	.byte	0x3a
	.byte	0xd
	.4byte	0x74
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF133
	.byte	0xf
	.byte	0x3b
	.byte	0xd
	.4byte	0x74
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF134
	.byte	0xf
	.byte	0x3c
	.byte	0x3
	.4byte	0x78b
	.uleb128 0x18
	.byte	0xc
	.byte	0xf
	.byte	0x3e
	.4byte	0x81e
	.uleb128 0x2
	.4byte	.LASF135
	.byte	0xf
	.byte	0x3f
	.byte	0xe
	.4byte	0x81e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0xf
	.byte	0x40
	.byte	0xb
	.4byte	0xad
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0xf
	.byte	0x41
	.byte	0xc
	.4byte	0x32
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	0x7e2
	.uleb128 0x3
	.4byte	.LASF138
	.byte	0xf
	.byte	0x42
	.byte	0x3
	.4byte	0x7ee
	.uleb128 0x3
	.4byte	.LASF139
	.byte	0xf
	.byte	0x45
	.byte	0x10
	.4byte	0x83b
	.uleb128 0x4
	.4byte	0x840
	.uleb128 0x1b
	.4byte	0x850
	.uleb128 0x1
	.4byte	0x850
	.uleb128 0x1
	.4byte	0xad
	.byte	0
	.uleb128 0x4
	.4byte	0x855
	.uleb128 0x1e
	.4byte	.LASF141
	.uleb128 0x7
	.4byte	0x2b
	.4byte	0x86e
	.uleb128 0x1
	.4byte	0x81e
	.uleb128 0x1
	.4byte	0x86e
	.byte	0
	.uleb128 0x4
	.4byte	0x823
	.uleb128 0x4
	.4byte	0x85a
	.uleb128 0x7
	.4byte	0x2b
	.4byte	0x887
	.uleb128 0x1
	.4byte	0x86e
	.byte	0
	.uleb128 0x4
	.4byte	0x878
	.uleb128 0x7
	.4byte	0x3a8
	.4byte	0x8a5
	.uleb128 0x1
	.4byte	0x86e
	.uleb128 0x1
	.4byte	0xad
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	0x88c
	.uleb128 0x7
	.4byte	0x3a8
	.4byte	0x8c3
	.uleb128 0x1
	.4byte	0x86e
	.uleb128 0x1
	.4byte	0x8c3
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	0x8cd
	.uleb128 0x11
	.4byte	0x8c3
	.uleb128 0x2a
	.uleb128 0x4
	.4byte	0x8aa
	.uleb128 0x7
	.4byte	0x2b
	.4byte	0x8ec
	.uleb128 0x1
	.4byte	0x86e
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x9f
	.byte	0
	.uleb128 0x4
	.4byte	0x8d3
	.uleb128 0x7
	.4byte	0x2b
	.4byte	0x914
	.uleb128 0x1
	.4byte	0x86e
	.uleb128 0x1
	.4byte	0x914
	.uleb128 0x1
	.4byte	0x82f
	.uleb128 0x1
	.4byte	0x850
	.uleb128 0x1
	.4byte	0xad
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.4byte	.LASF142
	.uleb128 0x4
	.4byte	0x8f1
	.uleb128 0x7
	.4byte	0x2b
	.4byte	0x939
	.uleb128 0x1
	.4byte	0x86e
	.uleb128 0x1
	.4byte	0x24d
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x4
	.4byte	0x920
	.uleb128 0x7
	.4byte	0x3a8
	.4byte	0x957
	.uleb128 0x1
	.4byte	0x86e
	.uleb128 0x1
	.4byte	0x31c
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	0x93e
	.uleb128 0x7
	.4byte	0x3a8
	.4byte	0x975
	.uleb128 0x1
	.4byte	0x86e
	.uleb128 0x1
	.4byte	0x24d
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	0x95c
	.uleb128 0x7
	.4byte	0x378
	.4byte	0x993
	.uleb128 0x1
	.4byte	0x86e
	.uleb128 0x1
	.4byte	0x378
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x4
	.4byte	0x97a
	.uleb128 0x7
	.4byte	0x2b
	.4byte	0x9b1
	.uleb128 0x1
	.4byte	0x86e
	.uleb128 0x1
	.4byte	0x24d
	.uleb128 0x1
	.4byte	0x9b1
	.byte	0
	.uleb128 0x4
	.4byte	0x3cc
	.uleb128 0x4
	.4byte	0x998
	.uleb128 0x7
	.4byte	0x2b
	.4byte	0x9cf
	.uleb128 0x1
	.4byte	0x86e
	.uleb128 0x1
	.4byte	0x24d
	.byte	0
	.uleb128 0x4
	.4byte	0x9bb
	.uleb128 0x7
	.4byte	0x2b
	.4byte	0x9ed
	.uleb128 0x1
	.4byte	0x86e
	.uleb128 0x1
	.4byte	0x24d
	.uleb128 0x1
	.4byte	0x24d
	.byte	0
	.uleb128 0x4
	.4byte	0x9d4
	.uleb128 0x7
	.4byte	0xa06
	.4byte	0xa06
	.uleb128 0x1
	.4byte	0x86e
	.uleb128 0x1
	.4byte	0x24d
	.byte	0
	.uleb128 0x4
	.4byte	0x58f
	.uleb128 0x4
	.4byte	0x9f2
	.uleb128 0x7
	.4byte	0xa24
	.4byte	0xa24
	.uleb128 0x1
	.4byte	0x86e
	.uleb128 0x1
	.4byte	0xa06
	.byte	0
	.uleb128 0x4
	.4byte	0x560
	.uleb128 0x4
	.4byte	0xa10
	.uleb128 0x7
	.4byte	0x2b
	.4byte	0xa42
	.uleb128 0x1
	.4byte	0x86e
	.uleb128 0x1
	.4byte	0xa06
	.byte	0
	.uleb128 0x4
	.4byte	0xa2e
	.uleb128 0x1b
	.4byte	0xa57
	.uleb128 0x1
	.4byte	0x86e
	.uleb128 0x1
	.4byte	0xa06
	.byte	0
	.uleb128 0x4
	.4byte	0xa47
	.uleb128 0x7
	.4byte	0x6d
	.4byte	0xa70
	.uleb128 0x1
	.4byte	0x86e
	.uleb128 0x1
	.4byte	0xa06
	.byte	0
	.uleb128 0x4
	.4byte	0xa5c
	.uleb128 0x1b
	.4byte	0xa8a
	.uleb128 0x1
	.4byte	0x86e
	.uleb128 0x1
	.4byte	0xa06
	.uleb128 0x1
	.4byte	0x6d
	.byte	0
	.uleb128 0x4
	.4byte	0xa75
	.uleb128 0x7
	.4byte	0x2b
	.4byte	0xaa8
	.uleb128 0x1
	.4byte	0x86e
	.uleb128 0x1
	.4byte	0x24d
	.uleb128 0x1
	.4byte	0xaa8
	.byte	0
	.uleb128 0x4
	.4byte	0x49f
	.uleb128 0x4
	.4byte	0xa8f
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0x18
	.byte	0x10
	.4byte	0x74
	.uleb128 0x5
	.byte	0x3
	.4byte	g_vfs_init
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0x19
	.byte	0x1a
	.4byte	0x241
	.uleb128 0x5
	.byte	0x3
	.4byte	xMutexBuffer
	.uleb128 0x2b
	.4byte	.LASF186
	.byte	0x1
	.byte	0x1a
	.byte	0x13
	.4byte	0x274
	.uleb128 0x5
	.byte	0x3
	.4byte	g_vfs_mutex
	.uleb128 0x16
	.4byte	.LASF145
	.byte	0x10
	.byte	0xe
	.byte	0x9
	.4byte	0x86e
	.4byte	0xafc
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x16
	.4byte	.LASF146
	.byte	0x10
	.byte	0xc
	.byte	0x5
	.4byte	0x2b
	.4byte	0xb12
	.uleb128 0x1
	.4byte	0x86e
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF187
	.byte	0x10
	.byte	0x12
	.byte	0x6
	.4byte	0xb24
	.uleb128 0x1
	.4byte	0x86e
	.byte	0
	.uleb128 0x16
	.4byte	.LASF147
	.byte	0x10
	.byte	0x10
	.byte	0x9
	.4byte	0x86e
	.4byte	0xb3a
	.uleb128 0x1
	.4byte	0x81e
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF148
	.2byte	0x28a
	.byte	0xc
	.4byte	0xaf
	.4byte	0xb5f
	.uleb128 0x1
	.4byte	0x25e
	.uleb128 0x1
	.4byte	0x8c8
	.uleb128 0x1
	.4byte	0xcc
	.uleb128 0x1
	.4byte	0xbb
	.byte	0
	.uleb128 0x16
	.4byte	.LASF149
	.byte	0xf
	.byte	0x6c
	.byte	0xa
	.4byte	0x81e
	.4byte	0xb75
	.uleb128 0x1
	.4byte	0x24d
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF150
	.2byte	0x58a
	.byte	0xc
	.4byte	0xaf
	.4byte	0xb90
	.uleb128 0x1
	.4byte	0x25e
	.uleb128 0x1
	.4byte	0xcc
	.byte	0
	.uleb128 0x16
	.4byte	.LASF151
	.byte	0x11
	.byte	0x29
	.byte	0x8
	.4byte	0x32
	.4byte	0xba6
	.uleb128 0x1
	.4byte	0x24d
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF188
	.byte	0xf
	.byte	0x69
	.byte	0x5
	.4byte	0x2b
	.uleb128 0x1c
	.4byte	.LASF152
	.2byte	0x587
	.byte	0xf
	.4byte	0x25e
	.4byte	0xbcd
	.uleb128 0x1
	.4byte	0x80
	.uleb128 0x1
	.4byte	0xbcd
	.byte	0
	.uleb128 0x4
	.4byte	0x235
	.uleb128 0xa
	.4byte	.LASF156
	.2byte	0x300
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc47
	.uleb128 0xd
	.4byte	.LASF153
	.2byte	0x300
	.byte	0x1c
	.4byte	0x24d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.4byte	.LASF154
	.2byte	0x300
	.byte	0x26
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF155
	.2byte	0x302
	.byte	0xd
	.4byte	0x86e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF135
	.2byte	0x303
	.byte	0xe
	.4byte	0x81e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.string	"err"
	.2byte	0x304
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"ret"
	.2byte	0x305
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF157
	.2byte	0x2d1
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcbc
	.uleb128 0xd
	.4byte	.LASF153
	.2byte	0x2d1
	.byte	0x1c
	.4byte	0x24d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.string	"buf"
	.2byte	0x2d1
	.byte	0x31
	.4byte	0xaa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF155
	.2byte	0x2d3
	.byte	0xd
	.4byte	0x86e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF135
	.2byte	0x2d4
	.byte	0xe
	.4byte	0x81e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.string	"err"
	.2byte	0x2d5
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"ret"
	.2byte	0x2d6
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.4byte	.LASF159
	.2byte	0x2b9
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd0c
	.uleb128 0xe
	.string	"dir"
	.2byte	0x2b9
	.byte	0x1d
	.4byte	0xa06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.string	"loc"
	.2byte	0x2b9
	.byte	0x27
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"f"
	.2byte	0x2bb
	.byte	0xd
	.4byte	0x86e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF135
	.2byte	0x2bc
	.byte	0xe
	.4byte	0x81e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF158
	.2byte	0x29f
	.byte	0x6
	.4byte	0x6d
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd61
	.uleb128 0xe
	.string	"dir"
	.2byte	0x29f
	.byte	0x1d
	.4byte	0xa06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"f"
	.2byte	0x2a1
	.byte	0xd
	.4byte	0x86e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF135
	.2byte	0x2a2
	.byte	0xe
	.4byte	0x81e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.string	"ret"
	.2byte	0x2a3
	.byte	0xa
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.4byte	.LASF160
	.2byte	0x285
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xda2
	.uleb128 0xe
	.string	"dir"
	.2byte	0x285
	.byte	0x1f
	.4byte	0xa06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"f"
	.2byte	0x287
	.byte	0xd
	.4byte	0x86e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF135
	.2byte	0x288
	.byte	0xe
	.4byte	0x81e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF161
	.2byte	0x255
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe08
	.uleb128 0xd
	.4byte	.LASF153
	.2byte	0x255
	.byte	0x1b
	.4byte	0x24d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF155
	.2byte	0x257
	.byte	0xd
	.4byte	0x86e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF135
	.2byte	0x258
	.byte	0xe
	.4byte	0x81e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.string	"err"
	.2byte	0x259
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"ret"
	.2byte	0x25a
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF162
	.2byte	0x226
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe6e
	.uleb128 0xd
	.4byte	.LASF153
	.2byte	0x226
	.byte	0x1b
	.4byte	0x24d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF155
	.2byte	0x228
	.byte	0xd
	.4byte	0x86e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF135
	.2byte	0x229
	.byte	0xe
	.4byte	0x81e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"err"
	.2byte	0x22a
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.string	"ret"
	.2byte	0x22a
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF163
	.2byte	0x208
	.byte	0xf
	.4byte	0xa24
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xec3
	.uleb128 0xe
	.string	"dir"
	.2byte	0x208
	.byte	0x26
	.4byte	0xa06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"f"
	.2byte	0x20a
	.byte	0xd
	.4byte	0x86e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF135
	.2byte	0x20b
	.byte	0xe
	.4byte	0x81e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.string	"ret"
	.2byte	0x20c
	.byte	0x13
	.4byte	0xa24
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF164
	.2byte	0x1e4
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf27
	.uleb128 0xe
	.string	"dir"
	.2byte	0x1e4
	.byte	0x1d
	.4byte	0xa06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"f"
	.2byte	0x1e6
	.byte	0xd
	.4byte	0x86e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF135
	.2byte	0x1e7
	.byte	0xe
	.4byte	0x81e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.string	"err"
	.2byte	0x1e8
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.string	"ret"
	.2byte	0x1e8
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF165
	.2byte	0x1b2
	.byte	0xc
	.4byte	0xa06
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf7d
	.uleb128 0xd
	.4byte	.LASF153
	.2byte	0x1b2
	.byte	0x24
	.4byte	0x24d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF155
	.2byte	0x1b4
	.byte	0xd
	.4byte	0x86e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF135
	.2byte	0x1b5
	.byte	0xe
	.4byte	0x81e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"dp"
	.2byte	0x1b6
	.byte	0x10
	.4byte	0xa06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF166
	.2byte	0x183
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xff0
	.uleb128 0xd
	.4byte	.LASF167
	.2byte	0x183
	.byte	0x1c
	.4byte	0x24d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.4byte	.LASF168
	.2byte	0x183
	.byte	0x31
	.4byte	0x24d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"f"
	.2byte	0x185
	.byte	0xd
	.4byte	0x86e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF135
	.2byte	0x186
	.byte	0xe
	.4byte	0x81e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"err"
	.2byte	0x187
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.string	"ret"
	.2byte	0x187
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF169
	.2byte	0x154
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1054
	.uleb128 0xd
	.4byte	.LASF153
	.2byte	0x154
	.byte	0x1c
	.4byte	0x24d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"f"
	.2byte	0x156
	.byte	0xd
	.4byte	0x86e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF135
	.2byte	0x157
	.byte	0xe
	.4byte	0x81e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"err"
	.2byte	0x158
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.string	"ret"
	.2byte	0x158
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF170
	.2byte	0x125
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10c8
	.uleb128 0xd
	.4byte	.LASF153
	.2byte	0x125
	.byte	0x1a
	.4byte	0x24d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.string	"st"
	.2byte	0x125
	.byte	0x2d
	.4byte	0x9b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF155
	.2byte	0x127
	.byte	0xd
	.4byte	0x86e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF135
	.2byte	0x128
	.byte	0xe
	.4byte	0x81e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.string	"err"
	.2byte	0x129
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"ret"
	.2byte	0x129
	.byte	0x12
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF171
	.2byte	0x10a
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x111c
	.uleb128 0xe
	.string	"fd"
	.2byte	0x10a
	.byte	0x12
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"f"
	.2byte	0x10c
	.byte	0xd
	.4byte	0x86e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF135
	.2byte	0x10d
	.byte	0xe
	.4byte	0x81e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.string	"ret"
	.2byte	0x10e
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF172
	.byte	0xf3
	.byte	0x7
	.4byte	0x378
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1187
	.uleb128 0xf
	.string	"fd"
	.byte	0xf3
	.byte	0x15
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.4byte	.LASF137
	.byte	0xf3
	.byte	0x1f
	.4byte	0x378
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.4byte	.LASF173
	.byte	0xf3
	.byte	0x2b
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"f"
	.byte	0xf5
	.byte	0xd
	.4byte	0x86e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0xf6
	.byte	0xe
	.4byte	0x81e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.string	"ret"
	.byte	0xf7
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF174
	.byte	0xd4
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11f2
	.uleb128 0xf
	.string	"fd"
	.byte	0xd4
	.byte	0x13
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.string	"cmd"
	.byte	0xd4
	.byte	0x1b
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"arg"
	.byte	0xd4
	.byte	0x2e
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"ret"
	.byte	0xd6
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"f"
	.byte	0xd7
	.byte	0xd
	.4byte	0x86e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0xd8
	.byte	0xe
	.4byte	0x81e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x13
	.4byte	.LASF175
	.byte	0xb5
	.byte	0x9
	.4byte	0x3a8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x125d
	.uleb128 0xf
	.string	"fd"
	.byte	0xb5
	.byte	0x17
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.string	"buf"
	.byte	0xb5
	.byte	0x27
	.4byte	0x8c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.4byte	.LASF176
	.byte	0xb5
	.byte	0x33
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.4byte	.LASF177
	.byte	0xb7
	.byte	0xd
	.4byte	0x3a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"f"
	.byte	0xb8
	.byte	0xd
	.4byte	0x86e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0xb9
	.byte	0xe
	.4byte	0x81e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x13
	.4byte	.LASF178
	.byte	0x96
	.byte	0x9
	.4byte	0x3a8
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12c8
	.uleb128 0xf
	.string	"fd"
	.byte	0x96
	.byte	0x16
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.string	"buf"
	.byte	0x96
	.byte	0x20
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.4byte	.LASF176
	.byte	0x96
	.byte	0x2c
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.4byte	.LASF179
	.byte	0x98
	.byte	0xd
	.4byte	0x3a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"f"
	.byte	0x99
	.byte	0xd
	.4byte	0x86e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x9a
	.byte	0xe
	.4byte	0x81e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x13
	.4byte	.LASF180
	.byte	0x6c
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1317
	.uleb128 0xf
	.string	"fd"
	.byte	0x6c
	.byte	0x13
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"ret"
	.byte	0x6e
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"f"
	.byte	0x6f
	.byte	0xd
	.4byte	0x86e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x70
	.byte	0xe
	.4byte	0x81e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x13
	.4byte	.LASF181
	.byte	0x2f
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1385
	.uleb128 0x14
	.4byte	.LASF153
	.byte	0x2f
	.byte	0x1a
	.4byte	0x24d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.4byte	.LASF182
	.byte	0x2f
	.byte	0x24
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0x31
	.byte	0xd
	.4byte	0x86e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x32
	.byte	0xe
	.4byte	0x81e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.string	"len"
	.byte	0x33
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"ret"
	.byte	0x34
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF183
	.byte	0x1
	.byte	0x1c
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.string	"ret"
	.byte	0x1e
	.byte	0x9
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x2d
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
	.4byte	0xbc
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF187:
	.string	"del_file"
.LASF96:
	.string	"aos_dirent_t"
.LASF145:
	.string	"get_file"
.LASF37:
	.string	"StaticSemaphore_t"
.LASF151:
	.string	"strlen"
.LASF149:
	.string	"inode_open"
.LASF134:
	.string	"inode_t"
.LASF188:
	.string	"inode_init"
.LASF182:
	.string	"flags"
.LASF99:
	.string	"aos_dir_t"
.LASF2:
	.string	"unsigned int"
.LASF146:
	.string	"get_fd"
.LASF163:
	.string	"aos_readdir"
.LASF80:
	.string	"st_blksize"
.LASF133:
	.string	"refs"
.LASF118:
	.string	"opendir"
.LASF112:
	.string	"sync"
.LASF185:
	.string	"inode_ops_t"
.LASF21:
	.string	"StaticMiniListItem_t"
.LASF53:
	.string	"__nlink_t"
.LASF90:
	.string	"f_ffree"
.LASF102:
	.string	"VFS_TYPE_BLOCK_DEV"
.LASF130:
	.string	"i_name"
.LASF183:
	.string	"vfs_init"
.LASF95:
	.string	"d_name"
.LASF160:
	.string	"aos_rewinddir"
.LASF49:
	.string	"__ino_t"
.LASF162:
	.string	"aos_mkdir"
.LASF60:
	.string	"ino_t"
.LASF13:
	.string	"uint32_t"
.LASF174:
	.string	"aos_ioctl"
.LASF124:
	.string	"telldir"
.LASF129:
	.string	"i_arg"
.LASF140:
	.string	"QueueDefinition"
.LASF116:
	.string	"unlink"
.LASF168:
	.string	"newpath"
.LASF15:
	.string	"long long unsigned int"
.LASF81:
	.string	"st_blocks"
.LASF155:
	.string	"file"
.LASF137:
	.string	"offset"
.LASF180:
	.string	"aos_close"
.LASF136:
	.string	"f_arg"
.LASF172:
	.string	"aos_lseek"
.LASF128:
	.string	"i_fops"
.LASF181:
	.string	"aos_open"
.LASF159:
	.string	"aos_seekdir"
.LASF68:
	.string	"stat"
.LASF69:
	.string	"st_dev"
.LASF57:
	.string	"tv_nsec"
.LASF7:
	.string	"size_t"
.LASF186:
	.string	"g_vfs_mutex"
.LASF50:
	.string	"__mode_t"
.LASF94:
	.string	"d_type"
.LASF142:
	.string	"_Bool"
.LASF74:
	.string	"st_gid"
.LASF123:
	.string	"rewinddir"
.LASF143:
	.string	"g_vfs_init"
.LASF147:
	.string	"new_file"
.LASF71:
	.string	"st_mode"
.LASF121:
	.string	"mkdir"
.LASF150:
	.string	"xQueueSemaphoreTake"
.LASF29:
	.string	"pvDummy1"
.LASF27:
	.string	"pvDummy2"
.LASF20:
	.string	"pvDummy3"
.LASF24:
	.string	"uxDummy2"
.LASF31:
	.string	"uxDummy4"
.LASF34:
	.string	"uxDummy8"
.LASF148:
	.string	"xQueueGenericSend"
.LASF110:
	.string	"ioctl"
.LASF178:
	.string	"aos_read"
.LASF103:
	.string	"VFS_TYPE_FS_DEV"
.LASF111:
	.string	"poll"
.LASF55:
	.string	"timespec"
.LASF38:
	.string	"char"
.LASF58:
	.string	"blkcnt_t"
.LASF101:
	.string	"VFS_TYPE_CHAR_DEV"
.LASF17:
	.string	"UBaseType_t"
.LASF139:
	.string	"poll_notify_t"
.LASF175:
	.string	"aos_write"
.LASF107:
	.string	"close"
.LASF39:
	.string	"QueueHandle_t"
.LASF65:
	.string	"ssize_t"
.LASF115:
	.string	"lseek"
.LASF153:
	.string	"path"
.LASF10:
	.string	"uint8_t"
.LASF132:
	.string	"type"
.LASF54:
	.string	"time_t"
.LASF114:
	.string	"fs_ops"
.LASF152:
	.string	"xQueueCreateMutexStatic"
.LASF83:
	.string	"statfs"
.LASF70:
	.string	"st_ino"
.LASF165:
	.string	"aos_opendir"
.LASF23:
	.string	"xSTATIC_LIST"
.LASF89:
	.string	"f_files"
.LASF3:
	.string	"long long int"
.LASF109:
	.string	"write"
.LASF84:
	.string	"f_type"
.LASF46:
	.string	"__dev_t"
.LASF16:
	.string	"BaseType_t"
.LASF62:
	.string	"dev_t"
.LASF87:
	.string	"f_bfree"
.LASF105:
	.string	"file_ops"
.LASF104:
	.string	"file_ops_t"
.LASF176:
	.string	"nbytes"
.LASF36:
	.string	"StaticQueue_t"
.LASF141:
	.string	"pollfd"
.LASF86:
	.string	"f_blocks"
.LASF88:
	.string	"f_bavail"
.LASF91:
	.string	"f_fsid"
.LASF161:
	.string	"aos_rmdir"
.LASF82:
	.string	"st_spare4"
.LASF126:
	.string	"access"
.LASF18:
	.string	"TickType_t"
.LASF169:
	.string	"aos_unlink"
.LASF117:
	.string	"rename"
.LASF4:
	.string	"long double"
.LASF48:
	.string	"__gid_t"
.LASF32:
	.string	"ucDummy5"
.LASF33:
	.string	"ucDummy6"
.LASF35:
	.string	"ucDummy9"
.LASF64:
	.string	"gid_t"
.LASF42:
	.string	"__int_least64_t"
.LASF127:
	.string	"i_ops"
.LASF63:
	.string	"uid_t"
.LASF122:
	.string	"rmdir"
.LASF120:
	.string	"closedir"
.LASF6:
	.string	"short int"
.LASF78:
	.string	"st_mtim"
.LASF131:
	.string	"i_flags"
.LASF9:
	.string	"long int"
.LASF177:
	.string	"nwrite"
.LASF167:
	.string	"oldpath"
.LASF40:
	.string	"SemaphoreHandle_t"
.LASF135:
	.string	"node"
.LASF154:
	.string	"amode"
.LASF119:
	.string	"readdir"
.LASF92:
	.string	"f_namelen"
.LASF44:
	.string	"__blksize_t"
.LASF47:
	.string	"__uid_t"
.LASF77:
	.string	"st_atim"
.LASF108:
	.string	"read"
.LASF97:
	.string	"dd_vfs_fd"
.LASF164:
	.string	"aos_closedir"
.LASF144:
	.string	"xMutexBuffer"
.LASF106:
	.string	"open"
.LASF56:
	.string	"tv_sec"
.LASF100:
	.string	"VFS_TYPE_NOT_INIT"
.LASF14:
	.string	"long unsigned int"
.LASF8:
	.string	"int32_t"
.LASF173:
	.string	"whence"
.LASF67:
	.string	"nlink_t"
.LASF85:
	.string	"f_bsize"
.LASF11:
	.string	"unsigned char"
.LASF41:
	.string	"__uint32_t"
.LASF166:
	.string	"aos_rename"
.LASF59:
	.string	"blksize_t"
.LASF19:
	.string	"xDummy2"
.LASF30:
	.string	"xDummy3"
.LASF25:
	.string	"xDummy4"
.LASF171:
	.string	"aos_sync"
.LASF156:
	.string	"aos_access"
.LASF76:
	.string	"st_size"
.LASF93:
	.string	"d_ino"
.LASF22:
	.string	"xSTATIC_MINI_LIST_ITEM"
.LASF73:
	.string	"st_uid"
.LASF157:
	.string	"aos_statfs"
.LASF51:
	.string	"__off_t"
.LASF79:
	.string	"st_ctim"
.LASF179:
	.string	"nread"
.LASF52:
	.string	"_ssize_t"
.LASF98:
	.string	"dd_rsv"
.LASF5:
	.string	"signed char"
.LASF66:
	.string	"mode_t"
.LASF61:
	.string	"off_t"
.LASF12:
	.string	"short unsigned int"
.LASF125:
	.string	"seekdir"
.LASF170:
	.string	"aos_stat"
.LASF43:
	.string	"__blkcnt_t"
.LASF72:
	.string	"st_nlink"
.LASF45:
	.string	"_off_t"
.LASF75:
	.string	"st_rdev"
.LASF184:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF28:
	.string	"xSTATIC_QUEUE"
.LASF113:
	.string	"fs_ops_t"
.LASF138:
	.string	"file_t"
.LASF26:
	.string	"StaticList_t"
.LASF158:
	.string	"aos_telldir"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/src/vfs.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/vfs"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
