	.file	"select.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/yloop" "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/src/select.c"
	.section	.text.setup_fd,"ax",@progbits
	.align	1
	.type	setup_fd, @function
setup_fd:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/src/select.c"
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
	.loc 1 37 1
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
	.size	setup_fd, .-setup_fd
	.section	.text.teardown_fd,"ax",@progbits
	.align	1
	.type	teardown_fd, @function
teardown_fd:
.LFB6:
	.loc 1 40 1
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
	.loc 1 41 1
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
.LFE6:
	.size	teardown_fd, .-teardown_fd
	.section	.text.vfs_poll_notify,"ax",@progbits
	.align	1
	.type	vfs_poll_notify, @function
vfs_poll_notify:
.LFB7:
	.loc 1 44 1
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
	.loc 1 45 22
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 1 46 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	aos_sem_signal
	.loc 1 47 1
	nop
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
	.size	vfs_poll_notify, .-vfs_poll_notify
	.section	.text.wait_io,"ax",@progbits
	.align	1
	.type	wait_io, @function
wait_io:
.LFB8:
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
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	.loc 1 51 8
	lw	a5,-32(s0)
	bge	a5,zero,.L5
	.loc 1 52 17
	li	a5,-1
	sw	a5,-32(s0)
.L5:
	.loc 1 54 5
	lw	a5,-28(s0)
	lw	a4,-32(s0)
	mv	a1,a4
	mv	a0,a5
	call	aos_sem_wait
	.loc 1 55 12
	li	a5,0
	.loc 1 56 1
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
	.size	wait_io, .-wait_io
	.section	.text.init_parg,"ax",@progbits
	.align	1
	.type	init_parg, @function
init_parg:
.LFB9:
	.loc 1 59 1
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
	.loc 1 60 5
	lw	a5,-20(s0)
	li	a1,0
	mv	a0,a5
	call	aos_sem_new
	.loc 1 61 12
	li	a5,0
	.loc 1 62 1
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
	.size	init_parg, .-init_parg
	.section	.text.deinit_parg,"ax",@progbits
	.align	1
	.type	deinit_parg, @function
deinit_parg:
.LFB10:
	.loc 1 65 1
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
	.loc 1 66 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	aos_sem_free
	.loc 1 67 1
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
.LFE10:
	.size	deinit_parg, .-deinit_parg
	.section	.text.pre_poll,"ax",@progbits
	.align	1
	.type	pre_poll, @function
pre_poll:
.LFB11:
	.loc 1 70 1
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
	sw	a3,-64(s0)
	.loc 1 72 9
	sw	zero,-24(s0)
	.loc 1 74 12
	sw	zero,-20(s0)
	.loc 1 74 5
	j	.L11
.L12:
.LBB2:
	.loc 1 75 34
	lw	a5,-20(s0)
	slli	a5,a5,3
	.loc 1 75 24
	lw	a4,-52(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 1 77 22
	lw	a5,-36(s0)
	sh	zero,6(a5)
.LBE2:
	.loc 1 74 28 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L11:
	.loc 1 74 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-56(s0)
	blt	a4,a5,.L12
	.loc 1 80 12
	sw	zero,-20(s0)
	.loc 1 80 5
	j	.L13
.L19:
.LBB3:
	.loc 1 82 34
	lw	a5,-20(s0)
	slli	a5,a5,3
	.loc 1 82 24
	lw	a4,-52(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 84 16
	lw	a5,-28(s0)
	lw	a4,0(a5)
	.loc 1 84 12
	li	a5,1
	bgt	a4,a5,.L14
	.loc 1 85 13
	lw	a5,-28(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	setup_fd
	.loc 1 86 15
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 86 13
	srai	a4,a5,31
	andi	a4,a4,31
	add	a5,a4,a5
	srai	a5,a5,5
	.loc 1 86 25
	lw	a3,-60(s0)
	slli	a4,a5,2
	add	a4,a3,a4
	lw	a3,0(a4)
	.loc 1 86 15
	lw	a4,-28(s0)
	lw	a4,0(a4)
	.loc 1 86 61
	andi	a4,a4,31
	li	a2,1
	sll	a4,a2,a4
	.loc 1 86 44
	or	a4,a3,a4
	lw	a3,-60(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 1 87 24
	lw	a5,-28(s0)
	lw	a4,0(a5)
	.loc 1 87 19
	lw	a5,-24(s0)
	bge	a5,a4,.L15
	mv	a5,a4
.L15:
	sw	a5,-24(s0)
	.loc 1 88 13
	j	.L16
.L14:
	.loc 1 91 13
	lw	a5,-28(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	get_file
	sw	a0,-32(s0)
	.loc 1 93 12
	lw	a5,-32(s0)
	bne	a5,zero,.L17
	.loc 1 94 20
	li	a5,-1
	j	.L18
.L17:
	.loc 1 97 19
	lw	a5,-20(s0)
	slli	a5,a5,3
	.loc 1 97 13
	lw	a4,-52(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 98 11
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 98 22
	lw	a5,0(a5)
	.loc 1 98 28
	lw	a5,20(a5)
	lw	a4,-64(s0)
	lw	a3,-28(s0)
	lui	a2,%hi(vfs_poll_notify)
	addi	a2,a2,%lo(vfs_poll_notify)
	li	a1,1
	lw	a0,-32(s0)
	jalr	a5
.LVL0:
.L16:
.LBE3:
	.loc 1 80 28 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L13:
	.loc 1 80 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-56(s0)
	blt	a4,a5,.L19
	.loc 1 101 12
	lw	a5,-24(s0)
.L18:
	.loc 1 102 1
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
.LFE11:
	.size	pre_poll, .-pre_poll
	.section	.text.post_poll,"ax",@progbits
	.align	1
	.type	post_poll, @function
post_poll:
.LFB12:
	.loc 1 105 1
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
	.loc 1 107 9
	sw	zero,-24(s0)
	.loc 1 109 12
	sw	zero,-20(s0)
	.loc 1 109 5
	j	.L21
.L25:
.LBB4:
	.loc 1 111 34
	lw	a5,-20(s0)
	slli	a5,a5,3
	.loc 1 111 24
	lw	a4,-36(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 113 16
	lw	a5,-28(s0)
	lw	a4,0(a5)
	.loc 1 113 12
	li	a5,1
	bgt	a4,a5,.L22
	.loc 1 114 13
	lw	a5,-28(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	teardown_fd
	.loc 1 115 13
	j	.L23
.L22:
	.loc 1 119 13
	lw	a5,-28(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	get_file
	sw	a0,-32(s0)
	.loc 1 121 12
	lw	a5,-32(s0)
	beq	a5,zero,.L27
	.loc 1 125 11
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 125 22
	lw	a5,0(a5)
	.loc 1 125 28
	lw	a5,20(a5)
	li	a4,0
	li	a3,0
	li	a2,0
	li	a1,0
	lw	a0,-32(s0)
	jalr	a5
.LVL1:
	.loc 1 127 16
	lw	a5,-28(s0)
	lh	a5,6(a5)
	.loc 1 127 12
	beq	a5,zero,.L23
	.loc 1 128 17
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	j	.L23
.L27:
	.loc 1 122 13
	nop
.L23:
.LBE4:
	.loc 1 109 28 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L21:
	.loc 1 109 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	blt	a4,a5,.L25
	.loc 1 132 12
	lw	a5,-24(s0)
	.loc 1 133 1
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
	.size	post_poll, .-post_poll
	.section	.text.aos_poll,"ax",@progbits
	.align	1
	.globl	aos_poll
	.type	aos_poll, @function
aos_poll:
.LFB13:
	.loc 1 136 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	.loc 1 139 9
	sw	zero,-20(s0)
	.loc 1 140 9
	sw	zero,-24(s0)
	.loc 1 143 9
	addi	a5,s0,-52
	mv	a0,a5
	call	init_parg
	mv	a5,a0
	.loc 1 143 8 discriminator 1
	bge	a5,zero,.L29
	.loc 1 144 16
	li	a5,-1
	j	.L40
.L29:
.LBB5:
	.loc 1 147 37
	addi	a5,s0,-48
	sw	a5,-36(s0)
	.loc 1 147 10
	li	a5,2
	sw	a5,-28(s0)
	.loc 1 147 100
	j	.L31
.L32:
	.loc 1 147 130 discriminator 3
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,0(a5)
.L31:
	.loc 1 147 104 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L32
.LBE5:
	.loc 1 148 11
	addi	a4,s0,-52
	addi	a5,s0,-48
	mv	a3,a4
	mv	a2,a5
	lw	a1,-72(s0)
	lw	a0,-68(s0)
	call	pre_poll
	sw	a0,-20(s0)
	.loc 1 150 8
	lw	a5,-20(s0)
	blt	a5,zero,.L41
	.loc 1 154 11
	addi	a4,s0,-52
	addi	a5,s0,-48
	lw	a3,-76(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-20(s0)
	call	wait_io
	sw	a0,-20(s0)
	.loc 1 156 8
	lw	a5,-20(s0)
	blt	a5,zero,.L42
.LBB6:
	.loc 1 159 16
	sw	zero,-32(s0)
	.loc 1 159 9
	j	.L35
.L37:
.LBB7:
	.loc 1 160 38
	lw	a5,-32(s0)
	slli	a5,a5,3
	.loc 1 160 28
	lw	a4,-68(s0)
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 1 162 19
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 162 17
	srai	a4,a5,31
	andi	a4,a4,31
	add	a5,a4,a5
	srai	a5,a5,5
	mv	a4,a5
	.loc 1 162 29
	addi	a5,s0,-48
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 162 19
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 162 64
	andi	a5,a5,31
	.loc 1 162 52
	srl	a5,a4,a5
	andi	a5,a5,1
	.loc 1 162 16
	beq	a5,zero,.L36
	.loc 1 163 20
	lw	a5,-40(s0)
	lh	a5,6(a5)
	.loc 1 163 30
	ori	a5,a5,1
	slli	a4,a5,16
	srai	a4,a4,16
	lw	a5,-40(s0)
	sh	a4,6(a5)
.L36:
.LBE7:
	.loc 1 159 32 discriminator 2
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L35:
	.loc 1 159 23 discriminator 1
	lw	a4,-32(s0)
	lw	a5,-72(s0)
	blt	a4,a5,.L37
	.loc 1 167 14
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	j	.L34
.L41:
.LBE6:
	.loc 1 151 9
	nop
	j	.L34
.L42:
	.loc 1 170 1
	nop
.L34:
	.loc 1 171 13
	lw	a1,-72(s0)
	lw	a0,-68(s0)
	call	post_poll
	mv	a4,a0
	.loc 1 171 10 discriminator 1
	lw	a5,-24(s0)
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 173 5
	addi	a5,s0,-52
	mv	a0,a5
	call	deinit_parg
	.loc 1 175 24
	lw	a5,-20(s0)
	blt	a5,zero,.L38
	.loc 1 175 24 is_stmt 0 discriminator 1
	lw	a5,-24(s0)
	.loc 1 175 24
	j	.L40
.L38:
	.loc 1 175 24 discriminator 2
	li	a5,0
.L40:
	.loc 1 176 1 is_stmt 1
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
.LFE13:
	.size	aos_poll, .-aos_poll
	.section	.text.aos_fcntl,"ax",@progbits
	.align	1
	.globl	aos_fcntl
	.type	aos_fcntl, @function
aos_fcntl:
.LFB14:
	.loc 1 184 1
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
	.loc 1 185 8
	lw	a5,-20(s0)
	bge	a5,zero,.L44
	.loc 1 186 16
	li	a5,-22
	j	.L45
.L44:
	.loc 1 189 8
	lw	a4,-20(s0)
	li	a5,1
	bgt	a4,a5,.L46
	.loc 1 193 16
	li	a5,-2
	j	.L45
.L46:
	.loc 1 197 12
	li	a5,0
.L45:
	.loc 1 198 1
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
	.size	aos_fcntl, .-aos_fcntl
	.section	.text.aos_ioctl_in_loop,"ax",@progbits
	.align	1
	.globl	aos_ioctl_in_loop
	.type	aos_ioctl_in_loop, @function
aos_ioctl_in_loop:
.LFB15:
	.loc 1 201 1
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
	.loc 1 202 9
	sw	zero,-24(s0)
	.loc 1 205 13
	li	a5,2
	sw	a5,-20(s0)
	.loc 1 205 5
	j	.L48
.L54:
.LBB8:
	.loc 1 210 38
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 1 210 12 discriminator 1
	li	a5,1
	beq	a4,a5,.L49
	.loc 1 211 17
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 212 20
	lw	a5,-24(s0)
	j	.L50
.L49:
	.loc 1 215 13
	lw	a0,-20(s0)
	call	get_file
	sw	a0,-28(s0)
	.loc 1 217 12
	lw	a5,-28(s0)
	bne	a5,zero,.L51
	.loc 1 218 13
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	.loc 1 219 20
	li	a5,-2
	j	.L50
.L51:
	.loc 1 222 38
	lui	a5,%hi(g_vfs_mutex)
	lw	a5,%lo(g_vfs_mutex)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
	mv	a4,a0
	.loc 1 222 12 discriminator 1
	li	a5,1
	beq	a4,a5,.L52
	.loc 1 223 17
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 224 20
	lw	a5,-24(s0)
	j	.L50
.L52:
	.loc 1 227 14
	lw	a5,-28(s0)
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 229 23
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 229 29
	lw	a5,16(a5)
	.loc 1 229 12
	beq	a5,zero,.L53
	.loc 1 230 29
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 230 35
	lw	a5,16(a5)
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lw	a0,-28(s0)
	jalr	a5
.LVL2:
	sw	a0,-24(s0)
	.loc 1 232 16
	lw	a5,-24(s0)
	beq	a5,zero,.L53
	.loc 1 233 24
	lw	a5,-24(s0)
	j	.L50
.L53:
.LBE8:
	.loc 1 206 25
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L48:
	.loc 1 206 13 discriminator 1
	lw	a4,-20(s0)
	li	a5,31
	ble	a4,a5,.L54
	.loc 1 238 12
	li	a5,0
.L50:
	.loc 1 239 1
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
	.size	aos_ioctl_in_loop, .-aos_ioctl_in_loop
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/queue.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/semphr.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timeval.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timespec.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/select.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/types.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/stat.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_dir.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_inode.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/yloop_types.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/aos/kernel.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_file.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe62
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1b
	.4byte	.LASF150
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1c
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x7
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x6d
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x80
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x9a
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x1d
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x3f
	.byte	0x11
	.4byte	0x61
	.uleb128 0xc
	.4byte	0xaa
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x41
	.byte	0x12
	.4byte	0x8e
	.uleb128 0x4
	.4byte	0xd3
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0xc
	.4byte	0xcc
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x30
	.byte	0x22
	.4byte	0xe4
	.uleb128 0x4
	.4byte	0xe9
	.uleb128 0x1e
	.4byte	.LASF151
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x25
	.byte	0x17
	.4byte	0xd8
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x7
	.byte	0x4f
	.byte	0x1b
	.4byte	0x9a
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0xc8
	.byte	0x17
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x8
	.byte	0x1e
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x8
	.byte	0x22
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x8
	.byte	0x2e
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x8
	.byte	0x38
	.byte	0xf
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x8
	.byte	0x3c
	.byte	0x18
	.4byte	0x87
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x8
	.byte	0x3f
	.byte	0x18
	.4byte	0x87
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x8
	.byte	0x4b
	.byte	0x18
	.4byte	0x87
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0x5a
	.byte	0x14
	.4byte	0xfa
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x8
	.byte	0x66
	.byte	0x10
	.4byte	0x12a
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x8
	.byte	0x83
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x8
	.byte	0x93
	.byte	0x14
	.4byte	0x2b
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x8
	.byte	0xd5
	.byte	0x18
	.4byte	0x87
	.uleb128 0x4
	.4byte	0xcc
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x9
	.byte	0x2a
	.byte	0x19
	.4byte	0x106
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x10
	.byte	0xa
	.byte	0x2f
	.byte	0x8
	.4byte	0x1db
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0xa
	.byte	0x30
	.byte	0x9
	.4byte	0x1a7
	.byte	0
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0xa
	.byte	0x31
	.byte	0x7
	.4byte	0x6d
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0xb
	.byte	0x26
	.byte	0x17
	.4byte	0x9a
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x8
	.byte	0xb
	.byte	0x34
	.byte	0x10
	.4byte	0x202
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xb
	.byte	0x35
	.byte	0xc
	.4byte	0x202
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x1db
	.4byte	0x211
	.uleb128 0x14
	.4byte	0x3e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0xb
	.byte	0x36
	.byte	0x3
	.4byte	0x1e7
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0xc
	.byte	0x61
	.byte	0x14
	.4byte	0x112
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0xc
	.byte	0x66
	.byte	0x15
	.4byte	0x11e
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0xc
	.byte	0x89
	.byte	0x11
	.4byte	0x15a
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0xc
	.byte	0x9b
	.byte	0x11
	.4byte	0x172
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0xc
	.byte	0x9f
	.byte	0x11
	.4byte	0x136
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0xc
	.byte	0xa3
	.byte	0x11
	.4byte	0x142
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0xc
	.byte	0xa7
	.byte	0x11
	.4byte	0x14e
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0xc
	.byte	0xb6
	.byte	0x12
	.4byte	0x18a
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0xc
	.byte	0xbb
	.byte	0x12
	.4byte	0x166
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0xc
	.byte	0xc0
	.byte	0x13
	.4byte	0x196
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x58
	.byte	0xd
	.byte	0x1b
	.byte	0x8
	.4byte	0x359
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0xd
	.byte	0x1d
	.byte	0x9
	.4byte	0x24d
	.byte	0
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0xd
	.byte	0x1e
	.byte	0x9
	.4byte	0x235
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xd
	.byte	0x1f
	.byte	0xa
	.4byte	0x27d
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0xd
	.byte	0x20
	.byte	0xb
	.4byte	0x289
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0xd
	.byte	0x21
	.byte	0x9
	.4byte	0x259
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0xd
	.byte	0x22
	.byte	0x9
	.4byte	0x265
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0xd
	.byte	0x23
	.byte	0x9
	.4byte	0x24d
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0xd
	.byte	0x24
	.byte	0x9
	.4byte	0x241
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0xd
	.byte	0x2a
	.byte	0x13
	.4byte	0x1b3
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0xd
	.byte	0x2b
	.byte	0x13
	.4byte	0x1b3
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0xd
	.byte	0x2c
	.byte	0x13
	.4byte	0x1b3
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0xd
	.byte	0x2d
	.byte	0xd
	.4byte	0x229
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0xd
	.byte	0x2e
	.byte	0xc
	.4byte	0x21d
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0xd
	.byte	0x30
	.byte	0x8
	.4byte	0x359
	.byte	0x50
	.byte	0
	.uleb128 0x11
	.4byte	0x6d
	.4byte	0x368
	.uleb128 0x14
	.4byte	0x3e
	.byte	0
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x24
	.byte	0xe
	.byte	0x4
	.byte	0x8
	.4byte	0x3eb
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0xe
	.byte	0x5
	.byte	0xa
	.4byte	0x6d
	.byte	0
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0xe
	.byte	0x6
	.byte	0xa
	.4byte	0x6d
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0xe
	.byte	0x7
	.byte	0xa
	.4byte	0x6d
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0xe
	.byte	0x8
	.byte	0xa
	.4byte	0x6d
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0xe
	.byte	0x9
	.byte	0xa
	.4byte	0x6d
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0xe
	.byte	0xa
	.byte	0xa
	.4byte	0x6d
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0xe
	.byte	0xb
	.byte	0xa
	.4byte	0x6d
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0xe
	.byte	0xc
	.byte	0xa
	.4byte	0x6d
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0xe
	.byte	0xd
	.byte	0xa
	.4byte	0x6d
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0xe
	.byte	0x10
	.byte	0x9
	.4byte	0x41c
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0xe
	.byte	0x11
	.byte	0x9
	.4byte	0x2b
	.byte	0
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xe
	.byte	0x12
	.byte	0xd
	.4byte	0x74
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xe
	.byte	0x13
	.byte	0xa
	.4byte	0x41c
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.4byte	0xcc
	.4byte	0x42b
	.uleb128 0x1f
	.4byte	0x3e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0xe
	.byte	0x14
	.byte	0x3
	.4byte	0x3eb
	.uleb128 0xd
	.byte	0x8
	.byte	0xe
	.byte	0x16
	.byte	0x9
	.4byte	0x45b
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xe
	.byte	0x17
	.byte	0x9
	.4byte	0x2b
	.byte	0
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xe
	.byte	0x18
	.byte	0x9
	.4byte	0x2b
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0xe
	.byte	0x19
	.byte	0x3
	.4byte	0x437
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0xf
	.byte	0x2c
	.byte	0x1f
	.4byte	0x4dc
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x1c
	.byte	0xf
	.byte	0x46
	.byte	0x8
	.4byte	0x4dc
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0xf
	.byte	0x47
	.byte	0xb
	.4byte	0x749
	.byte	0
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0xf
	.byte	0x48
	.byte	0xb
	.4byte	0x75d
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0xf
	.byte	0x49
	.byte	0xf
	.4byte	0x77b
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xf
	.byte	0x4a
	.byte	0xf
	.4byte	0x7a4
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0xf
	.byte	0x4b
	.byte	0xb
	.4byte	0x7c2
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0xf
	.byte	0x4d
	.byte	0xb
	.4byte	0x7f1
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0xf
	.byte	0x4f
	.byte	0xb
	.4byte	0x75d
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.4byte	0x473
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0xf
	.byte	0x2d
	.byte	0x1d
	.4byte	0x5ff
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0x50
	.byte	0xf
	.byte	0x52
	.byte	0x8
	.4byte	0x5ff
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0xf
	.byte	0x53
	.byte	0xb
	.4byte	0x80f
	.byte	0
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0xf
	.byte	0x54
	.byte	0xb
	.4byte	0x75d
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0xf
	.byte	0x55
	.byte	0xf
	.4byte	0x82d
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xf
	.byte	0x56
	.byte	0xf
	.4byte	0x84b
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0xf
	.byte	0x57
	.byte	0xd
	.4byte	0x869
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0xf
	.byte	0x58
	.byte	0xb
	.4byte	0x75d
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0xf
	.byte	0x59
	.byte	0xb
	.4byte	0x88c
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0xf
	.byte	0x5a
	.byte	0xb
	.4byte	0x8a5
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0xf
	.byte	0x5b
	.byte	0xb
	.4byte	0x8c3
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0xf
	.byte	0x5c
	.byte	0x12
	.4byte	0x8e1
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0xf
	.byte	0x5d
	.byte	0x15
	.4byte	0x8ff
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0xf
	.byte	0x5e
	.byte	0xb
	.4byte	0x918
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0xf
	.byte	0x5f
	.byte	0xb
	.4byte	0x8a5
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0xf
	.byte	0x60
	.byte	0xb
	.4byte	0x8a5
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0xf
	.byte	0x61
	.byte	0xc
	.4byte	0x92d
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0xf
	.byte	0x62
	.byte	0xc
	.4byte	0x946
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0xf
	.byte	0x63
	.byte	0xc
	.4byte	0x960
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0xf
	.byte	0x64
	.byte	0xb
	.4byte	0x7c2
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0xf
	.byte	0x65
	.byte	0xb
	.4byte	0x983
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0xf
	.byte	0x66
	.byte	0xb
	.4byte	0x80f
	.byte	0x4c
	.byte	0
	.uleb128 0xc
	.4byte	0x4ed
	.uleb128 0x20
	.4byte	.LASF152
	.byte	0x4
	.byte	0xf
	.byte	0x2f
	.byte	0x7
	.4byte	0x628
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x30
	.byte	0x17
	.4byte	0x628
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x31
	.byte	0x15
	.4byte	0x62d
	.byte	0
	.uleb128 0x4
	.4byte	0x467
	.uleb128 0x4
	.4byte	0x4e1
	.uleb128 0xd
	.byte	0x14
	.byte	0xf
	.byte	0x35
	.byte	0x9
	.4byte	0x689
	.uleb128 0xf
	.string	"ops"
	.byte	0xf
	.byte	0x36
	.byte	0x17
	.4byte	0x604
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0xf
	.byte	0x37
	.byte	0xb
	.4byte	0xa8
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0xf
	.byte	0x38
	.byte	0xb
	.4byte	0x1a2
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0xf
	.byte	0x39
	.byte	0x9
	.4byte	0x2b
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0xf
	.byte	0x3a
	.byte	0xd
	.4byte	0x74
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0xf
	.byte	0x3b
	.byte	0xd
	.4byte	0x74
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0xf
	.byte	0x3c
	.byte	0x3
	.4byte	0x632
	.uleb128 0xd
	.byte	0xc
	.byte	0xf
	.byte	0x3e
	.byte	0x9
	.4byte	0x6c6
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0xf
	.byte	0x3f
	.byte	0xe
	.4byte	0x6c6
	.byte	0
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0xf
	.byte	0x40
	.byte	0xb
	.4byte	0xa8
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0xf
	.byte	0x41
	.byte	0xc
	.4byte	0x32
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	0x689
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0xf
	.byte	0x42
	.byte	0x3
	.4byte	0x695
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0xf
	.byte	0x45
	.byte	0x10
	.4byte	0x6e3
	.uleb128 0x4
	.4byte	0x6e8
	.uleb128 0x12
	.4byte	0x6f8
	.uleb128 0x2
	.4byte	0x6f8
	.uleb128 0x2
	.4byte	0xa8
	.byte	0
	.uleb128 0x4
	.4byte	0x6fd
	.uleb128 0xa
	.4byte	.LASF120
	.byte	0x8
	.byte	0x10
	.byte	0x7
	.byte	0x8
	.4byte	0x730
	.uleb128 0xf
	.string	"fd"
	.byte	0x10
	.byte	0x8
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0x10
	.byte	0x9
	.byte	0xb
	.4byte	0x5a
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0x10
	.byte	0xa
	.byte	0xb
	.4byte	0x5a
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x744
	.uleb128 0x2
	.4byte	0x6c6
	.uleb128 0x2
	.4byte	0x744
	.byte	0
	.uleb128 0x4
	.4byte	0x6cb
	.uleb128 0x4
	.4byte	0x730
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x75d
	.uleb128 0x2
	.4byte	0x744
	.byte	0
	.uleb128 0x4
	.4byte	0x74e
	.uleb128 0x5
	.4byte	0x271
	.4byte	0x77b
	.uleb128 0x2
	.4byte	0x744
	.uleb128 0x2
	.4byte	0xa8
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	0x762
	.uleb128 0x5
	.4byte	0x271
	.4byte	0x799
	.uleb128 0x2
	.4byte	0x744
	.uleb128 0x2
	.4byte	0x799
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	0x7a3
	.uleb128 0xc
	.4byte	0x799
	.uleb128 0x21
	.uleb128 0x4
	.4byte	0x780
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x7c2
	.uleb128 0x2
	.4byte	0x744
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x9a
	.byte	0
	.uleb128 0x4
	.4byte	0x7a9
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x7ea
	.uleb128 0x2
	.4byte	0x744
	.uleb128 0x2
	.4byte	0x7ea
	.uleb128 0x2
	.4byte	0x6d7
	.uleb128 0x2
	.4byte	0x6f8
	.uleb128 0x2
	.4byte	0xa8
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.4byte	.LASF123
	.uleb128 0x4
	.4byte	0x7c7
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x80f
	.uleb128 0x2
	.4byte	0x744
	.uleb128 0x2
	.4byte	0xc7
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x4
	.4byte	0x7f6
	.uleb128 0x5
	.4byte	0x271
	.4byte	0x82d
	.uleb128 0x2
	.4byte	0x744
	.uleb128 0x2
	.4byte	0x1a2
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	0x814
	.uleb128 0x5
	.4byte	0x271
	.4byte	0x84b
	.uleb128 0x2
	.4byte	0x744
	.uleb128 0x2
	.4byte	0xc7
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	0x832
	.uleb128 0x5
	.4byte	0x241
	.4byte	0x869
	.uleb128 0x2
	.4byte	0x744
	.uleb128 0x2
	.4byte	0x241
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x4
	.4byte	0x850
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x887
	.uleb128 0x2
	.4byte	0x744
	.uleb128 0x2
	.4byte	0xc7
	.uleb128 0x2
	.4byte	0x887
	.byte	0
	.uleb128 0x4
	.4byte	0x295
	.uleb128 0x4
	.4byte	0x86e
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x8a5
	.uleb128 0x2
	.4byte	0x744
	.uleb128 0x2
	.4byte	0xc7
	.byte	0
	.uleb128 0x4
	.4byte	0x891
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x8c3
	.uleb128 0x2
	.4byte	0x744
	.uleb128 0x2
	.4byte	0xc7
	.uleb128 0x2
	.4byte	0xc7
	.byte	0
	.uleb128 0x4
	.4byte	0x8aa
	.uleb128 0x5
	.4byte	0x8dc
	.4byte	0x8dc
	.uleb128 0x2
	.4byte	0x744
	.uleb128 0x2
	.4byte	0xc7
	.byte	0
	.uleb128 0x4
	.4byte	0x45b
	.uleb128 0x4
	.4byte	0x8c8
	.uleb128 0x5
	.4byte	0x8fa
	.4byte	0x8fa
	.uleb128 0x2
	.4byte	0x744
	.uleb128 0x2
	.4byte	0x8dc
	.byte	0
	.uleb128 0x4
	.4byte	0x42b
	.uleb128 0x4
	.4byte	0x8e6
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x918
	.uleb128 0x2
	.4byte	0x744
	.uleb128 0x2
	.4byte	0x8dc
	.byte	0
	.uleb128 0x4
	.4byte	0x904
	.uleb128 0x12
	.4byte	0x92d
	.uleb128 0x2
	.4byte	0x744
	.uleb128 0x2
	.4byte	0x8dc
	.byte	0
	.uleb128 0x4
	.4byte	0x91d
	.uleb128 0x5
	.4byte	0x6d
	.4byte	0x946
	.uleb128 0x2
	.4byte	0x744
	.uleb128 0x2
	.4byte	0x8dc
	.byte	0
	.uleb128 0x4
	.4byte	0x932
	.uleb128 0x12
	.4byte	0x960
	.uleb128 0x2
	.4byte	0x744
	.uleb128 0x2
	.4byte	0x8dc
	.uleb128 0x2
	.4byte	0x6d
	.byte	0
	.uleb128 0x4
	.4byte	0x94b
	.uleb128 0x5
	.4byte	0x2b
	.4byte	0x97e
	.uleb128 0x2
	.4byte	0x744
	.uleb128 0x2
	.4byte	0xc7
	.uleb128 0x2
	.4byte	0x97e
	.byte	0
	.uleb128 0x4
	.4byte	0x368
	.uleb128 0x4
	.4byte	0x965
	.uleb128 0xd
	.byte	0x4
	.byte	0x11
	.byte	0x16
	.byte	0xd
	.4byte	0x99e
	.uleb128 0xf
	.string	"hdl"
	.byte	0x11
	.byte	0x18
	.byte	0xf
	.4byte	0xa8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0x11
	.byte	0x19
	.byte	0x7
	.4byte	0x988
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0x11
	.byte	0x1d
	.byte	0x17
	.4byte	0x99e
	.uleb128 0x22
	.4byte	.LASF153
	.byte	0x1
	.byte	0x1b
	.byte	0x1a
	.4byte	0xee
	.uleb128 0xa
	.4byte	.LASF126
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x8
	.4byte	0x9dc
	.uleb128 0xf
	.string	"sem"
	.byte	0x1
	.byte	0x20
	.byte	0xf
	.4byte	0x9aa
	.byte	0
	.uleb128 0x16
	.4byte	.LASF127
	.2byte	0x28a
	.4byte	0xaa
	.4byte	0xa00
	.uleb128 0x2
	.4byte	0xd8
	.uleb128 0x2
	.4byte	0x79e
	.uleb128 0x2
	.4byte	0xbb
	.uleb128 0x2
	.4byte	0xb6
	.byte	0
	.uleb128 0x16
	.4byte	.LASF128
	.2byte	0x58a
	.4byte	0xaa
	.4byte	0xa1a
	.uleb128 0x2
	.4byte	0xd8
	.uleb128 0x2
	.4byte	0xbb
	.byte	0
	.uleb128 0x13
	.4byte	.LASF129
	.byte	0x12
	.byte	0xe
	.4byte	0x744
	.4byte	0xa2f
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x17
	.4byte	.LASF132
	.byte	0xcd
	.4byte	0xa3f
	.uleb128 0x2
	.4byte	0xa3f
	.byte	0
	.uleb128 0x4
	.4byte	0x9aa
	.uleb128 0x13
	.4byte	.LASF130
	.byte	0x11
	.byte	0xc5
	.4byte	0x2b
	.4byte	0xa5e
	.uleb128 0x2
	.4byte	0xa3f
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x13
	.4byte	.LASF131
	.byte	0x11
	.byte	0xd8
	.4byte	0x2b
	.4byte	0xa78
	.uleb128 0x2
	.4byte	0xa3f
	.uleb128 0x2
	.4byte	0x3e
	.byte	0
	.uleb128 0x17
	.4byte	.LASF133
	.byte	0xe0
	.4byte	0xa88
	.uleb128 0x2
	.4byte	0xa3f
	.byte	0
	.uleb128 0x18
	.4byte	.LASF134
	.byte	0xc8
	.4byte	0x2b
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xafc
	.uleb128 0x8
	.string	"cmd"
	.byte	0xc8
	.byte	0x1b
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"arg"
	.byte	0xc8
	.byte	0x2e
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"err"
	.byte	0xca
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"fd"
	.byte	0xcb
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x6
	.string	"f"
	.byte	0xcf
	.byte	0x11
	.4byte	0x744
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0xd0
	.byte	0x12
	.4byte	0x6c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF135
	.byte	0x1
	.byte	0xb6
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb40
	.uleb128 0x8
	.string	"fd"
	.byte	0xb6
	.byte	0x13
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"cmd"
	.byte	0xb6
	.byte	0x2b
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"val"
	.byte	0xb6
	.byte	0x44
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x18
	.4byte	.LASF136
	.byte	0x87
	.4byte	0x2b
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc20
	.uleb128 0x8
	.string	"fds"
	.byte	0x87
	.byte	0x1d
	.4byte	0x6f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x9
	.4byte	.LASF137
	.byte	0x87
	.byte	0x26
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x9
	.4byte	.LASF138
	.byte	0x87
	.byte	0x30
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0x89
	.byte	0xc
	.4byte	0x211
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ret"
	.byte	0x8b
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0x8c
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0x8d
	.byte	0x15
	.4byte	0x9c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.4byte	.LASF154
	.byte	0x1
	.byte	0xaa
	.byte	0x1
	.4byte	.L34
	.uleb128 0x19
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0xbf1
	.uleb128 0x6
	.string	"_p"
	.byte	0x93
	.byte	0x11
	.4byte	0xc20
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"_n"
	.byte	0x93
	.byte	0x1e
	.4byte	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xe
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x6
	.string	"i"
	.byte	0x9d
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x6
	.string	"pfd"
	.byte	0xa0
	.byte	0x1c
	.4byte	0x6f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0x211
	.uleb128 0x10
	.4byte	.LASF142
	.byte	0x68
	.4byte	0x2b
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc98
	.uleb128 0x8
	.string	"fds"
	.byte	0x68
	.byte	0x25
	.4byte	0x6f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF137
	.byte	0x68
	.byte	0x2e
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"j"
	.byte	0x6a
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"ret"
	.byte	0x6b
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x6
	.string	"f"
	.byte	0x6e
	.byte	0x11
	.4byte	0x744
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"pfd"
	.byte	0x6f
	.byte	0x18
	.4byte	0x6f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF143
	.byte	0x45
	.4byte	0x2b
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd43
	.uleb128 0x8
	.string	"fds"
	.byte	0x45
	.byte	0x24
	.4byte	0x6f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.4byte	.LASF137
	.byte	0x45
	.byte	0x2d
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.4byte	.LASF139
	.byte	0x45
	.byte	0x3b
	.4byte	0xc20
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x9
	.4byte	.LASF141
	.byte	0x45
	.byte	0x47
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.string	"i"
	.byte	0x47
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0x48
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xd1e
	.uleb128 0x6
	.string	"pfd"
	.byte	0x4b
	.byte	0x18
	.4byte	0x6f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xe
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x6
	.string	"f"
	.byte	0x51
	.byte	0x11
	.4byte	0x744
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"pfd"
	.byte	0x52
	.byte	0x18
	.4byte	0x6f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF147
	.byte	0x40
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd66
	.uleb128 0x9
	.4byte	.LASF141
	.byte	0x40
	.byte	0x2a
	.4byte	0xd66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	0x9c2
	.uleb128 0x10
	.4byte	.LASF145
	.byte	0x3a
	.4byte	0x2b
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd92
	.uleb128 0x9
	.4byte	.LASF141
	.byte	0x3a
	.byte	0x27
	.4byte	0xd66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF146
	.byte	0x31
	.4byte	0x2b
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xde3
	.uleb128 0x9
	.4byte	.LASF144
	.byte	0x31
	.byte	0x28
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF139
	.byte	0x31
	.byte	0x47
	.4byte	0xc20
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF141
	.byte	0x31
	.byte	0x5e
	.4byte	0xd66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF138
	.byte	0x31
	.byte	0x68
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF148
	.byte	0x2b
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe21
	.uleb128 0x8
	.string	"fd"
	.byte	0x2b
	.byte	0x3c
	.4byte	0x6f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"arg"
	.byte	0x2b
	.byte	0x46
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0x2d
	.byte	0x16
	.4byte	0xd66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.4byte	.LASF149
	.byte	0x1
	.byte	0x27
	.byte	0xd
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe45
	.uleb128 0x8
	.string	"fd"
	.byte	0x27
	.byte	0x2d
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.4byte	.LASF155
	.byte	0x1
	.byte	0x23
	.byte	0xd
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.string	"fd"
	.byte	0x23
	.byte	0x2a
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0xa
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.sleb128 9
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
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x21
	.sleb128 1
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 17
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.sleb128 13
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
.LASF154:
	.string	"check_poll"
.LASF128:
	.string	"xQueueSemaphoreTake"
.LASF80:
	.string	"aos_dirent_t"
.LASF129:
	.string	"get_file"
.LASF114:
	.string	"inode_t"
.LASF155:
	.string	"setup_fd"
.LASF38:
	.string	"__fd_mask"
.LASF2:
	.string	"unsigned int"
.LASF64:
	.string	"st_blksize"
.LASF113:
	.string	"refs"
.LASF121:
	.string	"events"
.LASF98:
	.string	"opendir"
.LASF92:
	.string	"sync"
.LASF34:
	.string	"__nlink_t"
.LASF74:
	.string	"f_ffree"
.LASF110:
	.string	"i_name"
.LASF79:
	.string	"d_name"
.LASF137:
	.string	"nfds"
.LASF29:
	.string	"__ino_t"
.LASF44:
	.string	"ino_t"
.LASF13:
	.string	"uint32_t"
.LASF104:
	.string	"telldir"
.LASF109:
	.string	"i_arg"
.LASF151:
	.string	"QueueDefinition"
.LASF96:
	.string	"unlink"
.LASF141:
	.string	"parg"
.LASF15:
	.string	"long long unsigned int"
.LASF65:
	.string	"st_blocks"
.LASF117:
	.string	"offset"
.LASF132:
	.string	"aos_sem_free"
.LASF116:
	.string	"f_arg"
.LASF108:
	.string	"i_fops"
.LASF130:
	.string	"aos_sem_new"
.LASF52:
	.string	"stat"
.LASF53:
	.string	"st_dev"
.LASF144:
	.string	"maxfd"
.LASF41:
	.string	"__fds_bits"
.LASF37:
	.string	"tv_nsec"
.LASF7:
	.string	"size_t"
.LASF149:
	.string	"teardown_fd"
.LASF153:
	.string	"g_vfs_mutex"
.LASF30:
	.string	"__mode_t"
.LASF78:
	.string	"d_type"
.LASF123:
	.string	"_Bool"
.LASF58:
	.string	"st_gid"
.LASF103:
	.string	"rewinddir"
.LASF55:
	.string	"st_mode"
.LASF101:
	.string	"mkdir"
.LASF139:
	.string	"rfds"
.LASF118:
	.string	"file_t"
.LASF56:
	.string	"st_nlink"
.LASF152:
	.string	"inode_ops_t"
.LASF127:
	.string	"xQueueGenericSend"
.LASF90:
	.string	"ioctl"
.LASF140:
	.string	"nset"
.LASF83:
	.string	"aos_dir_t"
.LASF145:
	.string	"init_parg"
.LASF91:
	.string	"poll"
.LASF124:
	.string	"aos_hdl_t"
.LASF39:
	.string	"timespec"
.LASF18:
	.string	"char"
.LASF42:
	.string	"blkcnt_t"
.LASF119:
	.string	"poll_notify_t"
.LASF87:
	.string	"close"
.LASF122:
	.string	"revents"
.LASF19:
	.string	"QueueHandle_t"
.LASF49:
	.string	"ssize_t"
.LASF95:
	.string	"lseek"
.LASF10:
	.string	"uint8_t"
.LASF112:
	.string	"type"
.LASF35:
	.string	"time_t"
.LASF94:
	.string	"fs_ops"
.LASF67:
	.string	"statfs"
.LASF54:
	.string	"st_ino"
.LASF73:
	.string	"f_files"
.LASF3:
	.string	"long long int"
.LASF89:
	.string	"write"
.LASF68:
	.string	"f_type"
.LASF26:
	.string	"__dev_t"
.LASF134:
	.string	"aos_ioctl_in_loop"
.LASF16:
	.string	"BaseType_t"
.LASF46:
	.string	"dev_t"
.LASF71:
	.string	"f_bfree"
.LASF85:
	.string	"file_ops"
.LASF84:
	.string	"file_ops_t"
.LASF125:
	.string	"aos_sem_t"
.LASF146:
	.string	"wait_io"
.LASF40:
	.string	"fd_set"
.LASF120:
	.string	"pollfd"
.LASF72:
	.string	"f_bavail"
.LASF142:
	.string	"post_poll"
.LASF126:
	.string	"poll_arg"
.LASF75:
	.string	"f_fsid"
.LASF66:
	.string	"st_spare4"
.LASF131:
	.string	"aos_sem_wait"
.LASF106:
	.string	"access"
.LASF17:
	.string	"TickType_t"
.LASF97:
	.string	"rename"
.LASF4:
	.string	"long double"
.LASF28:
	.string	"__gid_t"
.LASF70:
	.string	"f_blocks"
.LASF48:
	.string	"gid_t"
.LASF22:
	.string	"__int_least64_t"
.LASF107:
	.string	"i_ops"
.LASF47:
	.string	"uid_t"
.LASF102:
	.string	"rmdir"
.LASF100:
	.string	"closedir"
.LASF133:
	.string	"aos_sem_signal"
.LASF6:
	.string	"short int"
.LASF62:
	.string	"st_mtim"
.LASF111:
	.string	"i_flags"
.LASF9:
	.string	"long int"
.LASF135:
	.string	"aos_fcntl"
.LASF20:
	.string	"SemaphoreHandle_t"
.LASF115:
	.string	"node"
.LASF99:
	.string	"readdir"
.LASF76:
	.string	"f_namelen"
.LASF32:
	.string	"__size_t"
.LASF24:
	.string	"__blksize_t"
.LASF27:
	.string	"__uid_t"
.LASF61:
	.string	"st_atim"
.LASF88:
	.string	"read"
.LASF81:
	.string	"dd_vfs_fd"
.LASF86:
	.string	"open"
.LASF36:
	.string	"tv_sec"
.LASF14:
	.string	"long unsigned int"
.LASF148:
	.string	"vfs_poll_notify"
.LASF8:
	.string	"int32_t"
.LASF147:
	.string	"deinit_parg"
.LASF51:
	.string	"nlink_t"
.LASF69:
	.string	"f_bsize"
.LASF11:
	.string	"unsigned char"
.LASF21:
	.string	"__uint32_t"
.LASF138:
	.string	"timeout"
.LASF43:
	.string	"blksize_t"
.LASF60:
	.string	"st_size"
.LASF143:
	.string	"pre_poll"
.LASF77:
	.string	"d_ino"
.LASF57:
	.string	"st_uid"
.LASF31:
	.string	"__off_t"
.LASF63:
	.string	"st_ctim"
.LASF33:
	.string	"_ssize_t"
.LASF82:
	.string	"dd_rsv"
.LASF5:
	.string	"signed char"
.LASF50:
	.string	"mode_t"
.LASF45:
	.string	"off_t"
.LASF12:
	.string	"short unsigned int"
.LASF105:
	.string	"seekdir"
.LASF136:
	.string	"aos_poll"
.LASF23:
	.string	"__blkcnt_t"
.LASF25:
	.string	"_off_t"
.LASF59:
	.string	"st_rdev"
.LASF150:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF93:
	.string	"fs_ops_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/src/select.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/yloop"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
