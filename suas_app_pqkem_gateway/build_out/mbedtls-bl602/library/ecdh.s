	.file	"ecdh.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ecdh.c"
	.section	.text.mbedtls_ecdh_grp_id,"ax",@progbits
	.align	1
	.type	mbedtls_ecdh_grp_id, @function
mbedtls_ecdh_grp_id:
.LFB13:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ecdh.c"
	.loc 1 31 1
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
	.loc 1 33 20
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 37 1
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
	.size	mbedtls_ecdh_grp_id, .-mbedtls_ecdh_grp_id
	.section	.text.mbedtls_ecdh_can_do,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdh_can_do
	.type	mbedtls_ecdh_can_do, @function
mbedtls_ecdh_can_do:
.LFB14:
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
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 43 12
	li	a5,1
	.loc 1 44 1
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
	.size	mbedtls_ecdh_can_do, .-mbedtls_ecdh_can_do
	.section	.text.ecdh_gen_public_restartable,"ax",@progbits
	.align	1
	.type	ecdh_gen_public_restartable, @function
ecdh_gen_public_restartable:
.LFB15:
	.loc 1 59 1
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
	.loc 1 60 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 62 9
	sw	zero,-24(s0)
	.loc 1 64 33
	lw	a5,-56(s0)
	beq	a5,zero,.L6
	.loc 1 64 42 discriminator 1
	lw	a5,-56(s0)
	lw	a5,8(a5)
	.loc 1 64 33 discriminator 1
	beq	a5,zero,.L6
	.loc 1 64 33 is_stmt 0 discriminator 3
	li	a5,1
	.loc 1 64 33
	j	.L7
.L6:
	.loc 1 64 33 discriminator 4
	li	a5,0
.L7:
	.loc 1 64 16 is_stmt 1 discriminator 6
	sw	a5,-24(s0)
	.loc 1 67 8
	lw	a5,-24(s0)
	bne	a5,zero,.L8
	.loc 1 68 26
	lw	a3,-52(s0)
	lw	a2,-48(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_ecp_gen_privkey
	sw	a0,-20(s0)
	.loc 1 68 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L11
.L8:
	.loc 1 71 61
	lw	a5,-36(s0)
	addi	a3,a5,28
	.loc 1 71 22
	lw	a6,-56(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	lw	a2,-40(s0)
	lw	a1,-44(s0)
	lw	a0,-36(s0)
	call	mbedtls_ecp_mul_restartable
	sw	a0,-20(s0)
	.loc 1 74 1
	j	.L9
.L11:
	.loc 1 68 80
	nop
.L9:
	.loc 1 75 12
	lw	a5,-20(s0)
	.loc 1 76 1
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
	.size	ecdh_gen_public_restartable, .-ecdh_gen_public_restartable
	.section	.text.mbedtls_ecdh_gen_public,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdh_gen_public
	.type	mbedtls_ecdh_gen_public, @function
mbedtls_ecdh_gen_public:
.LFB16:
	.loc 1 84 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	.loc 1 85 12
	li	a5,0
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	ecdh_gen_public_restartable
	mv	a5,a0
	.loc 1 86 1
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
	.size	mbedtls_ecdh_gen_public, .-mbedtls_ecdh_gen_public
	.section	.text.ecdh_compute_shared_restartable,"ax",@progbits
	.align	1
	.type	ecdh_compute_shared_restartable, @function
ecdh_compute_shared_restartable:
.LFB17:
	.loc 1 99 1
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
	sw	a4,-68(s0)
	sw	a5,-72(s0)
	sw	a6,-76(s0)
	.loc 1 100 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 103 5
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 1 105 22
	addi	a1,s0,-44
	lw	a6,-76(s0)
	lw	a5,-72(s0)
	lw	a4,-68(s0)
	lw	a3,-60(s0)
	lw	a2,-64(s0)
	lw	a0,-52(s0)
	call	mbedtls_ecp_mul_restartable
	sw	a0,-20(s0)
	.loc 1 105 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L19
	.loc 1 108 9
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_ecp_is_zero
	mv	a5,a0
	.loc 1 108 8 discriminator 1
	beq	a5,zero,.L17
	.loc 1 109 13
	li	a5,-20480
	addi	a5,a5,128
	sw	a5,-20(s0)
	.loc 1 110 9
	j	.L16
.L17:
	.loc 1 113 22
	addi	a5,s0,-44
	mv	a1,a5
	lw	a0,-56(s0)
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 1 115 1
	j	.L16
.L19:
	.loc 1 105 95
	nop
.L16:
	.loc 1 116 5
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 1 118 12
	lw	a5,-20(s0)
	.loc 1 119 1
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
.LFE17:
	.size	ecdh_compute_shared_restartable, .-ecdh_compute_shared_restartable
	.section	.text.mbedtls_ecdh_compute_shared,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdh_compute_shared
	.type	mbedtls_ecdh_compute_shared, @function
mbedtls_ecdh_compute_shared:
.LFB18:
	.loc 1 128 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	.loc 1 129 12
	li	a6,0
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	ecdh_compute_shared_restartable
	mv	a5,a0
	.loc 1 131 1
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
	.size	mbedtls_ecdh_compute_shared, .-mbedtls_ecdh_compute_shared
	.section	.text.ecdh_init_internal,"ax",@progbits
	.align	1
	.type	ecdh_init_internal, @function
ecdh_init_internal:
.LFB19:
	.loc 1 135 1
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
	.loc 1 136 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_ecp_group_init
	.loc 1 137 5
	lw	a5,-20(s0)
	addi	a5,a5,96
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 1 138 5
	lw	a5,-20(s0)
	addi	a5,a5,104
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 1 139 5
	lw	a5,-20(s0)
	addi	a5,a5,128
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 1 140 5
	lw	a5,-20(s0)
	addi	a5,a5,152
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 1 143 5
	lw	a5,-20(s0)
	addi	a5,a5,224
	mv	a0,a5
	call	mbedtls_ecp_restart_init
	.loc 1 145 1
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
.LFE19:
	.size	ecdh_init_internal, .-ecdh_init_internal
	.section	.text.mbedtls_ecdh_get_grp_id,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdh_get_grp_id
	.type	mbedtls_ecdh_get_grp_id, @function
mbedtls_ecdh_get_grp_id:
.LFB20:
	.loc 1 148 1
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
	.loc 1 150 20
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 154 1
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
.LFE20:
	.size	mbedtls_ecdh_get_grp_id, .-mbedtls_ecdh_get_grp_id
	.section	.text.mbedtls_ecdh_init,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdh_init
	.type	mbedtls_ecdh_init, @function
mbedtls_ecdh_init:
.LFB21:
	.loc 1 160 1
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
	.loc 1 162 5
	lw	a0,-20(s0)
	call	ecdh_init_internal
	.loc 1 163 5
	lw	a5,-20(s0)
	addi	a5,a5,164
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 1 164 5
	lw	a5,-20(s0)
	addi	a5,a5,188
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 1 165 5
	lw	a5,-20(s0)
	addi	a5,a5,212
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 1 171 23
	lw	a5,-20(s0)
	sw	zero,160(a5)
	.loc 1 173 26
	lw	a5,-20(s0)
	sw	zero,220(a5)
	.loc 1 175 1
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
.LFE21:
	.size	mbedtls_ecdh_init, .-mbedtls_ecdh_init
	.section	.text.ecdh_setup_internal,"ax",@progbits
	.align	1
	.type	ecdh_setup_internal, @function
ecdh_setup_internal:
.LFB22:
	.loc 1 179 1
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
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 1 180 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 182 11
	lw	a5,-36(s0)
	lbu	a4,-37(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecp_group_load
	sw	a0,-20(s0)
	.loc 1 183 8
	lw	a5,-20(s0)
	beq	a5,zero,.L27
	.loc 1 184 16
	li	a5,-20480
	addi	a5,a5,384
	j	.L28
.L27:
	.loc 1 187 12
	li	a5,0
.L28:
	.loc 1 188 1
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
	.size	ecdh_setup_internal, .-ecdh_setup_internal
	.section	.text.mbedtls_ecdh_setup,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdh_setup
	.type	mbedtls_ecdh_setup, @function
mbedtls_ecdh_setup:
.LFB23:
	.loc 1 194 1
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
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 1 196 12
	lbu	a5,-21(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	ecdh_setup_internal
	mv	a5,a0
	.loc 1 214 1
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
.LFE23:
	.size	mbedtls_ecdh_setup, .-mbedtls_ecdh_setup
	.section	.text.ecdh_free_internal,"ax",@progbits
	.align	1
	.type	ecdh_free_internal, @function
ecdh_free_internal:
.LFB24:
	.loc 1 217 1
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
	.loc 1 218 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_ecp_group_free
	.loc 1 219 5
	lw	a5,-20(s0)
	addi	a5,a5,96
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 1 220 5
	lw	a5,-20(s0)
	addi	a5,a5,104
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 1 221 5
	lw	a5,-20(s0)
	addi	a5,a5,128
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 1 222 5
	lw	a5,-20(s0)
	addi	a5,a5,152
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 1 225 5
	lw	a5,-20(s0)
	addi	a5,a5,224
	mv	a0,a5
	call	mbedtls_ecp_restart_free
	.loc 1 227 1
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
.LFE24:
	.size	ecdh_free_internal, .-ecdh_free_internal
	.section	.text.mbedtls_ecdh_enable_restart,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdh_enable_restart
	.type	mbedtls_ecdh_enable_restart, @function
mbedtls_ecdh_enable_restart:
.LFB25:
	.loc 1 234 1
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
	.loc 1 235 26
	lw	a5,-20(s0)
	li	a4,1
	sw	a4,220(a5)
	.loc 1 236 1
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
.LFE25:
	.size	mbedtls_ecdh_enable_restart, .-mbedtls_ecdh_enable_restart
	.section	.text.mbedtls_ecdh_free,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdh_free
	.type	mbedtls_ecdh_free, @function
mbedtls_ecdh_free:
.LFB26:
	.loc 1 243 1
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
	.loc 1 244 8
	lw	a5,-20(s0)
	beq	a5,zero,.L36
	.loc 1 249 5
	lw	a5,-20(s0)
	addi	a5,a5,164
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 1 250 5
	lw	a5,-20(s0)
	addi	a5,a5,188
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 1 251 5
	lw	a5,-20(s0)
	addi	a5,a5,212
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 1 252 5
	lw	a0,-20(s0)
	call	ecdh_free_internal
	j	.L33
.L36:
	.loc 1 245 9
	nop
.L33:
	.loc 1 271 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE26:
	.size	mbedtls_ecdh_free, .-mbedtls_ecdh_free
	.section	.text.ecdh_make_params_internal,"ax",@progbits
	.align	1
	.type	ecdh_make_params_internal, @function
ecdh_make_params_internal:
.LFB27:
	.loc 1 281 1
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
	sw	a6,-60(s0)
	sw	a7,-64(s0)
	.loc 1 282 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 1 285 30
	sw	zero,-20(s0)
	.loc 1 288 17
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 1 288 8
	bne	a5,zero,.L38
	.loc 1 289 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L44
.L38:
	.loc 1 293 8
	lw	a5,-64(s0)
	beq	a5,zero,.L40
	.loc 1 294 16
	lw	a5,-36(s0)
	addi	a5,a5,224
	sw	a5,-20(s0)
.L40:
	.loc 1 302 16
	lw	a0,-36(s0)
	lw	a5,-36(s0)
	addi	a1,a5,96
	lw	a5,-36(s0)
	addi	a2,a5,104
	lw	a5,-20(s0)
	lw	a4,-60(s0)
	lw	a3,-56(s0)
	call	ecdh_gen_public_restartable
	sw	a0,-24(s0)
	.loc 1 302 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L41
	.loc 1 304 16
	lw	a5,-24(s0)
	j	.L44
.L41:
	.loc 1 313 44
	lw	a5,-36(s0)
	.loc 1 313 16
	addi	a4,s0,-28
	lw	a3,-52(s0)
	lw	a2,-48(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecp_tls_write_group
	sw	a0,-24(s0)
	.loc 1 313 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L42
	.loc 1 315 16
	lw	a5,-24(s0)
	j	.L44
.L42:
	.loc 1 318 9
	lw	a5,-28(s0)
	lw	a4,-48(s0)
	add	a5,a4,a5
	sw	a5,-48(s0)
	.loc 1 319 10
	lw	a5,-28(s0)
	lw	a4,-52(s0)
	sub	a5,a4,a5
	sw	a5,-52(s0)
	.loc 1 321 44
	lw	a0,-36(s0)
	.loc 1 321 55
	lw	a5,-36(s0)
	addi	a1,a5,104
	.loc 1 321 16
	addi	a3,s0,-32
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	lw	a2,-44(s0)
	call	mbedtls_ecp_tls_write_point
	sw	a0,-24(s0)
	.loc 1 321 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L43
	.loc 1 323 16
	lw	a5,-24(s0)
	j	.L44
.L43:
	.loc 1 326 21
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	add	a4,a4,a5
	.loc 1 326 11
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 327 12
	li	a5,0
.L44:
	.loc 1 328 1
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
.LFE27:
	.size	ecdh_make_params_internal, .-ecdh_make_params_internal
	.section	.text.mbedtls_ecdh_make_params,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdh_make_params
	.type	mbedtls_ecdh_make_params, @function
mbedtls_ecdh_make_params:
.LFB28:
	.loc 1 341 1
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
	.loc 1 342 9
	sw	zero,-20(s0)
	.loc 1 344 21
	lw	a5,-36(s0)
	lw	a5,220(a5)
	sw	a5,-20(s0)
	.loc 1 350 12
	lw	a5,-36(s0)
	lw	a2,160(a5)
	lw	a7,-20(s0)
	lw	a6,-56(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	ecdh_make_params_internal
	mv	a5,a0
	.loc 1 368 1
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
.LFE28:
	.size	mbedtls_ecdh_make_params, .-mbedtls_ecdh_make_params
	.section	.text.ecdh_read_params_internal,"ax",@progbits
	.align	1
	.type	ecdh_read_params_internal, @function
ecdh_read_params_internal:
.LFB29:
	.loc 1 373 1
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
	.loc 1 374 39
	lw	a0,-20(s0)
	.loc 1 374 12
	lw	a5,-20(s0)
	addi	a1,a5,128
	.loc 1 375 55
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 375 53
	lw	a4,-28(s0)
	sub	a5,a4,a5
	.loc 1 374 12
	mv	a3,a5
	lw	a2,-24(s0)
	call	mbedtls_ecp_tls_read_point
	mv	a5,a0
	.loc 1 376 1
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
.LFE29:
	.size	ecdh_read_params_internal, .-ecdh_read_params_internal
	.section	.text.mbedtls_ecdh_read_params,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdh_read_params
	.type	mbedtls_ecdh_read_params, @function
mbedtls_ecdh_read_params:
.LFB30:
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
	sw	a2,-44(s0)
	.loc 1 389 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 391 76
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 391 74
	lw	a4,-44(s0)
	sub	a5,a4,a5
	.loc 1 391 16
	mv	a4,a5
	addi	a5,s0,-21
	mv	a2,a4
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_ecp_tls_read_group_id
	sw	a0,-20(s0)
	.loc 1 391 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L50
	.loc 1 393 16
	lw	a5,-20(s0)
	j	.L53
.L50:
	.loc 1 396 16
	lbu	a5,-21(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_ecdh_setup
	sw	a0,-20(s0)
	.loc 1 396 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L52
	.loc 1 397 16
	lw	a5,-20(s0)
	j	.L53
.L52:
	.loc 1 401 12
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	ecdh_read_params_internal
	mv	a5,a0
.L53:
	.loc 1 416 1
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
.LFE30:
	.size	mbedtls_ecdh_read_params, .-mbedtls_ecdh_read_params
	.section	.text.ecdh_get_params_internal,"ax",@progbits
	.align	1
	.type	ecdh_get_params_internal, @function
ecdh_get_params_internal:
.LFB31:
	.loc 1 421 1
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
	mv	a5,a2
	sb	a5,-41(s0)
	.loc 1 422 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 425 8
	lbu	a4,-41(s0)
	li	a5,1
	bne	a4,a5,.L55
	.loc 1 426 16
	lw	a5,-36(s0)
	addi	a4,a5,128
	lw	a5,-40(s0)
	addi	a5,a5,104
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_ecp_copy
	mv	a5,a0
	j	.L56
.L55:
	.loc 1 430 8
	lbu	a5,-41(s0)
	beq	a5,zero,.L57
	.loc 1 431 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L56
.L57:
	.loc 1 434 16
	lw	a5,-36(s0)
	addi	a4,a5,104
	lw	a5,-40(s0)
	addi	a5,a5,104
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_ecp_copy
	sw	a0,-20(s0)
	.loc 1 434 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L58
	.loc 1 435 16
	lw	a5,-36(s0)
	addi	a4,a5,96
	lw	a5,-40(s0)
	addi	a5,a5,96
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 1 434 57 discriminator 2
	lw	a5,-20(s0)
	beq	a5,zero,.L59
.L58:
	.loc 1 436 16
	lw	a5,-20(s0)
	j	.L56
.L59:
	.loc 1 439 12
	li	a5,0
.L56:
	.loc 1 440 1
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
.LFE31:
	.size	ecdh_get_params_internal, .-ecdh_get_params_internal
	.section	.text.mbedtls_ecdh_get_params,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdh_get_params
	.type	mbedtls_ecdh_get_params, @function
mbedtls_ecdh_get_params:
.LFB32:
	.loc 1 448 1
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
	mv	a5,a2
	sb	a5,-41(s0)
	.loc 1 449 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 450 8
	lbu	a5,-41(s0)
	beq	a5,zero,.L61
	.loc 1 450 35 discriminator 1
	lbu	a4,-41(s0)
	li	a5,1
	beq	a4,a5,.L61
	.loc 1 451 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L62
.L61:
	.loc 1 454 9
	lw	a0,-36(s0)
	call	mbedtls_ecdh_grp_id
	mv	a5,a0
	.loc 1 454 8 discriminator 1
	bne	a5,zero,.L63
	.loc 1 457 52
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 1 457 20
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_ecdh_setup
	sw	a0,-20(s0)
	.loc 1 457 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L64
	.loc 1 458 20
	lw	a5,-20(s0)
	j	.L62
.L63:
	.loc 1 464 13
	lw	a0,-36(s0)
	call	mbedtls_ecdh_grp_id
	mv	a5,a0
	mv	a4,a5
	.loc 1 464 49 discriminator 1
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 1 464 12 discriminator 1
	beq	a4,a5,.L64
	.loc 1 465 20
	li	a5,-20480
	addi	a5,a5,128
	j	.L62
.L64:
	.loc 1 470 12
	lbu	a5,-41(s0)
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	ecdh_get_params_internal
	mv	a5,a0
.L62:
	.loc 1 490 1
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
.LFE32:
	.size	mbedtls_ecdh_get_params, .-mbedtls_ecdh_get_params
	.section	.text.ecdh_make_public_internal,"ax",@progbits
	.align	1
	.type	ecdh_make_public_internal, @function
ecdh_make_public_internal:
.LFB33:
	.loc 1 500 1
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
	sw	a6,-60(s0)
	sw	a7,-64(s0)
	.loc 1 501 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 1 503 30
	sw	zero,-20(s0)
	.loc 1 506 17
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 1 506 8
	bne	a5,zero,.L66
	.loc 1 507 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L67
.L66:
	.loc 1 511 8
	lw	a5,-64(s0)
	beq	a5,zero,.L68
	.loc 1 512 16
	lw	a5,-36(s0)
	addi	a5,a5,224
	sw	a5,-20(s0)
.L68:
	.loc 1 519 16
	lw	a0,-36(s0)
	lw	a5,-36(s0)
	addi	a1,a5,96
	lw	a5,-36(s0)
	addi	a2,a5,104
	lw	a5,-20(s0)
	lw	a4,-60(s0)
	lw	a3,-56(s0)
	call	ecdh_gen_public_restartable
	sw	a0,-24(s0)
	.loc 1 519 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L69
	.loc 1 521 16
	lw	a5,-24(s0)
	j	.L67
.L69:
	.loc 1 530 40
	lw	a0,-36(s0)
	.loc 1 530 51
	lw	a5,-36(s0)
	addi	a1,a5,104
	.loc 1 530 12
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	lw	a3,-40(s0)
	lw	a2,-44(s0)
	call	mbedtls_ecp_tls_write_point
	mv	a5,a0
.L67:
	.loc 1 532 1
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
.LFE33:
	.size	ecdh_make_public_internal, .-ecdh_make_public_internal
	.section	.text.mbedtls_ecdh_make_public,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdh_make_public
	.type	mbedtls_ecdh_make_public, @function
mbedtls_ecdh_make_public:
.LFB34:
	.loc 1 541 1
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
	.loc 1 542 9
	sw	zero,-20(s0)
	.loc 1 544 21
	lw	a5,-36(s0)
	lw	a5,220(a5)
	sw	a5,-20(s0)
	.loc 1 548 12
	lw	a5,-36(s0)
	lw	a2,160(a5)
	lw	a7,-20(s0)
	lw	a6,-56(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	ecdh_make_public_internal
	mv	a5,a0
	.loc 1 566 1
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
.LFE34:
	.size	mbedtls_ecdh_make_public, .-mbedtls_ecdh_make_public
	.section	.text.ecdh_read_public_internal,"ax",@progbits
	.align	1
	.type	ecdh_read_public_internal, @function
ecdh_read_public_internal:
.LFB35:
	.loc 1 570 1
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
	.loc 1 571 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 572 26
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	.loc 1 574 43
	lw	a4,-36(s0)
	.loc 1 574 16
	lw	a5,-36(s0)
	addi	a5,a5,128
	addi	a2,s0,-24
	lw	a3,-44(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_ecp_tls_read_point
	sw	a0,-20(s0)
	.loc 1 574 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L73
	.loc 1 576 16
	lw	a5,-20(s0)
	j	.L76
.L73:
	.loc 1 579 21
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	sub	a4,a4,a5
	.loc 1 579 28
	lw	a5,-44(s0)
	.loc 1 579 8
	beq	a4,a5,.L75
	.loc 1 580 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L76
.L75:
	.loc 1 583 12
	li	a5,0
.L76:
	.loc 1 584 1
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
.LFE35:
	.size	ecdh_read_public_internal, .-ecdh_read_public_internal
	.section	.text.mbedtls_ecdh_read_public,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdh_read_public
	.type	mbedtls_ecdh_read_public, @function
mbedtls_ecdh_read_public:
.LFB36:
	.loc 1 591 1
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
	.loc 1 593 12
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	ecdh_read_public_internal
	mv	a5,a0
	.loc 1 608 1
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
.LFE36:
	.size	mbedtls_ecdh_read_public, .-mbedtls_ecdh_read_public
	.section	.text.ecdh_calc_secret_internal,"ax",@progbits
	.align	1
	.type	ecdh_calc_secret_internal, @function
ecdh_calc_secret_internal:
.LFB37:
	.loc 1 618 1
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
	sw	a6,-60(s0)
	.loc 1 619 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 1 621 30
	sw	zero,-20(s0)
	.loc 1 624 8
	lw	a5,-36(s0)
	beq	a5,zero,.L80
	.loc 1 624 31 discriminator 1
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 1 624 20 discriminator 1
	bne	a5,zero,.L81
.L80:
	.loc 1 625 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L82
.L81:
	.loc 1 629 8
	lw	a5,-60(s0)
	beq	a5,zero,.L83
	.loc 1 630 16
	lw	a5,-36(s0)
	addi	a5,a5,224
	sw	a5,-20(s0)
.L83:
	.loc 1 637 16
	lw	a0,-36(s0)
	lw	a5,-36(s0)
	addi	a1,a5,152
	.loc 1 637 68
	lw	a5,-36(s0)
	addi	a2,a5,128
	.loc 1 638 48
	lw	a5,-36(s0)
	addi	a3,a5,96
	.loc 1 637 16
	lw	a6,-20(s0)
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	call	ecdh_compute_shared_restartable
	sw	a0,-24(s0)
	.loc 1 637 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L84
	.loc 1 640 16
	lw	a5,-24(s0)
	j	.L82
.L84:
	.loc 1 649 26
	lw	a5,-36(s0)
	addi	a5,a5,152
	.loc 1 649 9
	mv	a0,a5
	call	mbedtls_mpi_size
	mv	a4,a0
	.loc 1 649 8 discriminator 1
	lw	a5,-48(s0)
	bgeu	a5,a4,.L85
	.loc 1 650 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L82
.L85:
	.loc 1 653 21
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 1 653 28
	srli	a5,a5,3
	.loc 1 653 44
	lw	a4,-36(s0)
	lw	a4,60(a4)
	.loc 1 653 51
	andi	a4,a4,7
	.loc 1 653 56
	snez	a4,a4
	andi	a4,a4,0xff
	.loc 1 653 32
	add	a4,a5,a4
	.loc 1 653 11
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 655 30
	lw	a5,-36(s0)
	.loc 1 655 9
	mv	a0,a5
	call	mbedtls_ecp_get_type
	mv	a5,a0
	mv	a4,a5
	.loc 1 655 8 discriminator 1
	li	a5,2
	bne	a4,a5,.L86
	.loc 1 656 44
	lw	a5,-36(s0)
	addi	a4,a5,152
	.loc 1 656 16
	lw	a5,-40(s0)
	lw	a5,0(a5)
	mv	a2,a5
	lw	a1,-44(s0)
	mv	a0,a4
	call	mbedtls_mpi_write_binary_le
	mv	a5,a0
	j	.L82
.L86:
	.loc 1 659 37
	lw	a5,-36(s0)
	addi	a4,a5,152
	.loc 1 659 12
	lw	a5,-40(s0)
	lw	a5,0(a5)
	mv	a2,a5
	lw	a1,-44(s0)
	mv	a0,a4
	call	mbedtls_mpi_write_binary
	mv	a5,a0
.L82:
	.loc 1 660 1
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
.LFE37:
	.size	ecdh_calc_secret_internal, .-ecdh_calc_secret_internal
	.section	.text.mbedtls_ecdh_calc_secret,"ax",@progbits
	.align	1
	.globl	mbedtls_ecdh_calc_secret
	.type	mbedtls_ecdh_calc_secret, @function
mbedtls_ecdh_calc_secret:
.LFB38:
	.loc 1 669 1
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
	.loc 1 670 9
	sw	zero,-20(s0)
	.loc 1 672 21
	lw	a5,-36(s0)
	lw	a5,220(a5)
	sw	a5,-20(s0)
	.loc 1 676 12
	lw	a6,-20(s0)
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	ecdh_calc_secret_internal
	mv	a5,a0
	.loc 1 693 1
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
.LFE38:
	.size	mbedtls_ecdh_calc_secret, .-mbedtls_ecdh_calc_secret
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecp.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecdh.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1066
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x21
	.4byte	.LASF120
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x10
	.4byte	0x32
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x22
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xb
	.4byte	.LASF12
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0xa
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x23
	.byte	0x4
	.uleb128 0x5
	.4byte	0x32
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x4
	.byte	0xd1
	.byte	0xd
	.4byte	0xaf
	.uleb128 0x18
	.4byte	0x68
	.4byte	0xc8
	.uleb128 0x1
	.4byte	0x95
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x5
	.byte	0xaa
	.byte	0x12
	.4byte	0x89
	.uleb128 0x15
	.4byte	.LASF17
	.byte	0x8
	.byte	0x5
	.byte	0xd0
	.4byte	0x102
	.uleb128 0x6
	.string	"p"
	.byte	0x5
	.byte	0xd5
	.byte	0x17
	.4byte	0x102
	.byte	0
	.uleb128 0x6
	.string	"s"
	.byte	0x5
	.byte	0xe2
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x6
	.string	"n"
	.byte	0x5
	.byte	0xe5
	.byte	0x14
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	0xc8
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x5
	.byte	0xf0
	.byte	0x1
	.4byte	0xd4
	.uleb128 0x10
	.4byte	0x107
	.uleb128 0x19
	.4byte	0x32
	.byte	0x6
	.byte	0x66
	.4byte	0x178
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x75
	.byte	0x3
	.4byte	0x118
	.uleb128 0x19
	.4byte	0x32
	.byte	0x6
	.byte	0x7f
	.4byte	0x1a2
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x83
	.byte	0x3
	.4byte	0x184
	.uleb128 0x15
	.4byte	.LASF37
	.byte	0x18
	.byte	0x6
	.byte	0x9e
	.4byte	0x1dc
	.uleb128 0x6
	.string	"X"
	.byte	0x6
	.byte	0x9f
	.byte	0x11
	.4byte	0x107
	.byte	0
	.uleb128 0x6
	.string	"Y"
	.byte	0x6
	.byte	0xa0
	.byte	0x11
	.4byte	0x107
	.byte	0x8
	.uleb128 0x6
	.string	"Z"
	.byte	0x6
	.byte	0xa1
	.byte	0x11
	.4byte	0x107
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0xa3
	.byte	0x1
	.4byte	0x1ae
	.uleb128 0x10
	.4byte	0x1dc
	.uleb128 0x15
	.4byte	.LASF38
	.byte	0x60
	.byte	0x6
	.byte	0xe9
	.4byte	0x2ae
	.uleb128 0x6
	.string	"id"
	.byte	0x6
	.byte	0xea
	.byte	0x1a
	.4byte	0x178
	.byte	0
	.uleb128 0x6
	.string	"P"
	.byte	0x6
	.byte	0xeb
	.byte	0x11
	.4byte	0x107
	.byte	0x4
	.uleb128 0x6
	.string	"A"
	.byte	0x6
	.byte	0xec
	.byte	0x11
	.4byte	0x107
	.byte	0xc
	.uleb128 0x6
	.string	"B"
	.byte	0x6
	.byte	0xf1
	.byte	0x11
	.4byte	0x107
	.byte	0x14
	.uleb128 0x6
	.string	"G"
	.byte	0x6
	.byte	0xf3
	.byte	0x17
	.4byte	0x1dc
	.byte	0x1c
	.uleb128 0x6
	.string	"N"
	.byte	0x6
	.byte	0xf4
	.byte	0x11
	.4byte	0x107
	.byte	0x34
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x6
	.byte	0xf5
	.byte	0xc
	.4byte	0x76
	.byte	0x3c
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x6
	.byte	0xf6
	.byte	0xc
	.4byte	0x76
	.byte	0x40
	.uleb128 0x6
	.string	"h"
	.byte	0x6
	.byte	0xfb
	.byte	0x12
	.4byte	0x6f
	.byte	0x44
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x6
	.byte	0xfc
	.byte	0xa
	.4byte	0x2c2
	.byte	0x48
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x6
	.byte	0xfe
	.byte	0xa
	.4byte	0x2e0
	.byte	0x4c
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x6
	.byte	0xff
	.byte	0xa
	.4byte	0x2e0
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF44
	.2byte	0x100
	.byte	0xb
	.4byte	0x95
	.byte	0x54
	.uleb128 0x11
	.string	"T"
	.2byte	0x101
	.byte	0x18
	.4byte	0x2db
	.byte	0x58
	.uleb128 0x16
	.4byte	.LASF45
	.2byte	0x102
	.byte	0xc
	.4byte	0x76
	.byte	0x5c
	.byte	0
	.uleb128 0x18
	.4byte	0x68
	.4byte	0x2bd
	.uleb128 0x1
	.4byte	0x2bd
	.byte	0
	.uleb128 0x5
	.4byte	0x107
	.uleb128 0x5
	.4byte	0x2ae
	.uleb128 0x18
	.4byte	0x68
	.4byte	0x2db
	.uleb128 0x1
	.4byte	0x2db
	.uleb128 0x1
	.4byte	0x95
	.byte	0
	.uleb128 0x5
	.4byte	0x1dc
	.uleb128 0x5
	.4byte	0x2c7
	.uleb128 0x14
	.4byte	.LASF38
	.2byte	0x104
	.byte	0x1
	.4byte	0x1ed
	.uleb128 0x10
	.4byte	0x2e5
	.uleb128 0x14
	.4byte	.LASF46
	.2byte	0x16c
	.byte	0x28
	.4byte	0x302
	.uleb128 0x1c
	.4byte	.LASF48
	.uleb128 0x14
	.4byte	.LASF47
	.2byte	0x173
	.byte	0x2b
	.4byte	0x313
	.uleb128 0x1c
	.4byte	.LASF49
	.uleb128 0x24
	.byte	0x10
	.byte	0x6
	.2byte	0x178
	.byte	0x9
	.4byte	0x356
	.uleb128 0x16
	.4byte	.LASF50
	.2byte	0x179
	.byte	0xe
	.4byte	0x6f
	.byte	0
	.uleb128 0x16
	.4byte	.LASF51
	.2byte	0x17a
	.byte	0xe
	.4byte	0x6f
	.byte	0x4
	.uleb128 0x11
	.string	"rsm"
	.2byte	0x17b
	.byte	0x22
	.4byte	0x356
	.byte	0x8
	.uleb128 0x11
	.string	"ma"
	.2byte	0x17c
	.byte	0x25
	.4byte	0x35b
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	0x2f6
	.uleb128 0x5
	.4byte	0x307
	.uleb128 0x14
	.4byte	.LASF52
	.2byte	0x17d
	.byte	0x3
	.4byte	0x318
	.uleb128 0x25
	.4byte	.LASF53
	.byte	0x80
	.byte	0x6
	.2byte	0x1ac
	.byte	0x10
	.4byte	0x39e
	.uleb128 0x11
	.string	"grp"
	.2byte	0x1ad
	.byte	0x17
	.4byte	0x2e5
	.byte	0
	.uleb128 0x11
	.string	"d"
	.2byte	0x1ae
	.byte	0x11
	.4byte	0x107
	.byte	0x60
	.uleb128 0x11
	.string	"Q"
	.2byte	0x1af
	.byte	0x17
	.4byte	0x1dc
	.byte	0x68
	.byte	0
	.uleb128 0x14
	.4byte	.LASF53
	.2byte	0x1b1
	.byte	0x1
	.4byte	0x36c
	.uleb128 0x10
	.4byte	0x39e
	.uleb128 0x19
	.4byte	0x32
	.byte	0x7
	.byte	0x3b
	.4byte	0x3c7
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x7
	.byte	0x3e
	.byte	0x3
	.4byte	0x3af
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0xf0
	.byte	0x7
	.byte	0x69
	.4byte	0x464
	.uleb128 0x6
	.string	"grp"
	.byte	0x7
	.byte	0x6b
	.byte	0x17
	.4byte	0x2e5
	.byte	0
	.uleb128 0x6
	.string	"d"
	.byte	0x7
	.byte	0x6c
	.byte	0x11
	.4byte	0x107
	.byte	0x60
	.uleb128 0x6
	.string	"Q"
	.byte	0x7
	.byte	0x6d
	.byte	0x17
	.4byte	0x1dc
	.byte	0x68
	.uleb128 0x6
	.string	"Qp"
	.byte	0x7
	.byte	0x6e
	.byte	0x17
	.4byte	0x1dc
	.byte	0x80
	.uleb128 0x6
	.string	"z"
	.byte	0x7
	.byte	0x6f
	.byte	0x11
	.4byte	0x107
	.byte	0x98
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x7
	.byte	0x70
	.byte	0x9
	.4byte	0x68
	.byte	0xa0
	.uleb128 0x6
	.string	"Vi"
	.byte	0x7
	.byte	0x71
	.byte	0x17
	.4byte	0x1dc
	.byte	0xa4
	.uleb128 0x6
	.string	"Vf"
	.byte	0x7
	.byte	0x72
	.byte	0x17
	.4byte	0x1dc
	.byte	0xbc
	.uleb128 0x6
	.string	"_d"
	.byte	0x7
	.byte	0x73
	.byte	0x11
	.4byte	0x107
	.byte	0xd4
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x7
	.byte	0x75
	.byte	0x9
	.4byte	0x68
	.byte	0xdc
	.uleb128 0x6
	.string	"rs"
	.byte	0x7
	.byte	0x76
	.byte	0x1d
	.4byte	0x360
	.byte	0xe0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x7
	.byte	0x8e
	.byte	0x1
	.4byte	0x3d3
	.uleb128 0x10
	.4byte	0x464
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x1
	.byte	0x1a
	.byte	0x1e
	.4byte	0x464
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x248
	.byte	0x5
	.4byte	0x68
	.4byte	0x4a2
	.uleb128 0x1
	.4byte	0x4a2
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x5
	.4byte	0x113
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x25a
	.byte	0x5
	.4byte	0x68
	.4byte	0x4c8
	.uleb128 0x1
	.4byte	0x4a2
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x217
	.byte	0x18
	.4byte	0x1a2
	.4byte	0x4df
	.uleb128 0x1
	.4byte	0x4df
	.byte	0
	.uleb128 0x5
	.4byte	0x2f1
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x1c9
	.byte	0x8
	.4byte	0x76
	.4byte	0x4fb
	.uleb128 0x1
	.4byte	0x4a2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x2a8
	.byte	0x5
	.4byte	0x68
	.4byte	0x517
	.uleb128 0x1
	.4byte	0x2db
	.uleb128 0x1
	.4byte	0x517
	.byte	0
	.uleb128 0x5
	.4byte	0x1e8
	.uleb128 0x8
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x391
	.byte	0x5
	.4byte	0x68
	.4byte	0x53d
	.uleb128 0x1
	.4byte	0x53d
	.uleb128 0x1
	.4byte	0x542
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x5
	.4byte	0x178
	.uleb128 0x5
	.4byte	0x547
	.uleb128 0x5
	.4byte	0x39
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x339
	.byte	0x5
	.4byte	0x68
	.4byte	0x572
	.uleb128 0x1
	.4byte	0x4df
	.uleb128 0x1
	.4byte	0x2db
	.uleb128 0x1
	.4byte	0x542
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x353
	.byte	0x5
	.4byte	0x68
	.4byte	0x5a2
	.uleb128 0x1
	.4byte	0x4df
	.uleb128 0x1
	.4byte	0x517
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x5a2
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0x5
	.4byte	0x76
	.uleb128 0x8
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x3a6
	.byte	0x5
	.4byte	0x68
	.4byte	0x5cd
	.uleb128 0x1
	.4byte	0x4df
	.uleb128 0x1
	.4byte	0x5a2
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x76
	.byte	0
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x29a
	.4byte	0x5df
	.uleb128 0x1
	.4byte	0x5df
	.byte	0
	.uleb128 0x5
	.4byte	0x360
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x103
	.4byte	0x5f6
	.uleb128 0x1
	.4byte	0x2bd
	.byte	0
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x27f
	.4byte	0x608
	.uleb128 0x1
	.4byte	0x608
	.byte	0
	.uleb128 0x5
	.4byte	0x2e5
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x369
	.byte	0x5
	.4byte	0x68
	.4byte	0x629
	.uleb128 0x1
	.4byte	0x608
	.uleb128 0x1
	.4byte	0x178
	.byte	0
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x291
	.4byte	0x63b
	.uleb128 0x1
	.4byte	0x5df
	.byte	0
	.uleb128 0x26
	.4byte	.LASF75
	.byte	0x5
	.byte	0xfa
	.byte	0x6
	.4byte	0x64d
	.uleb128 0x1
	.4byte	0x2bd
	.byte	0
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x268
	.4byte	0x65f
	.uleb128 0x1
	.4byte	0x608
	.byte	0
	.uleb128 0xf
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x276
	.4byte	0x671
	.uleb128 0x1
	.4byte	0x2db
	.byte	0
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x132
	.byte	0x5
	.4byte	0x68
	.4byte	0x68d
	.uleb128 0x1
	.4byte	0x2bd
	.uleb128 0x1
	.4byte	0x4a2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x2cc
	.byte	0x5
	.4byte	0x68
	.4byte	0x6a4
	.uleb128 0x1
	.4byte	0x2db
	.byte	0
	.uleb128 0xf
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x25d
	.4byte	0x6b6
	.uleb128 0x1
	.4byte	0x2db
	.byte	0
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x3e9
	.byte	0x5
	.4byte	0x68
	.4byte	0x6eb
	.uleb128 0x1
	.4byte	0x608
	.uleb128 0x1
	.4byte	0x2db
	.uleb128 0x1
	.4byte	0x4a2
	.uleb128 0x1
	.4byte	0x517
	.uleb128 0x1
	.4byte	0x6eb
	.uleb128 0x1
	.4byte	0x95
	.uleb128 0x1
	.4byte	0x5df
	.byte	0
	.uleb128 0x5
	.4byte	0xa3
	.uleb128 0x8
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x49c
	.byte	0x5
	.4byte	0x68
	.4byte	0x716
	.uleb128 0x1
	.4byte	0x4df
	.uleb128 0x1
	.4byte	0x2bd
	.uleb128 0x1
	.4byte	0x6eb
	.uleb128 0x1
	.4byte	0x95
	.byte	0
	.uleb128 0x12
	.4byte	.LASF88
	.2byte	0x299
	.4byte	0x68
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x799
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x299
	.byte	0x34
	.4byte	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF83
	.2byte	0x299
	.byte	0x41
	.4byte	0x5a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"buf"
	.2byte	0x29a
	.byte	0x2d
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF84
	.2byte	0x29a
	.byte	0x39
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF85
	.2byte	0x29b
	.byte	0x24
	.4byte	0x79e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF86
	.2byte	0x29c
	.byte	0x24
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.4byte	.LASF59
	.2byte	0x29e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x464
	.uleb128 0x5
	.4byte	0xaf
	.uleb128 0x13
	.4byte	.LASF90
	.2byte	0x262
	.4byte	0x68
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x844
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x262
	.byte	0x41
	.4byte	0x844
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF83
	.2byte	0x263
	.byte	0x2e
	.4byte	0x5a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"buf"
	.2byte	0x263
	.byte	0x43
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF84
	.2byte	0x264
	.byte	0x2d
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF85
	.2byte	0x265
	.byte	0x2c
	.4byte	0x79e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF86
	.2byte	0x268
	.byte	0x2c
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF59
	.2byte	0x269
	.byte	0x2a
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xd
	.string	"ret"
	.2byte	0x26b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.4byte	.LASF87
	.2byte	0x26d
	.byte	0x1e
	.4byte	0x5df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x475
	.uleb128 0x12
	.4byte	.LASF89
	.2byte	0x24d
	.4byte	0x68
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x890
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x24d
	.byte	0x34
	.4byte	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"buf"
	.2byte	0x24e
	.byte	0x33
	.4byte	0x547
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF84
	.2byte	0x24e
	.byte	0x3f
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x13
	.4byte	.LASF91
	.2byte	0x238
	.4byte	0x68
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f3
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x238
	.byte	0x41
	.4byte	0x844
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"buf"
	.2byte	0x239
	.byte	0x3b
	.4byte	0x547
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF84
	.2byte	0x239
	.byte	0x47
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.string	"ret"
	.2byte	0x23b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"p"
	.2byte	0x23c
	.byte	0x1a
	.4byte	0x547
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.4byte	.LASF92
	.2byte	0x219
	.4byte	0x68
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x976
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x219
	.byte	0x34
	.4byte	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF83
	.2byte	0x219
	.byte	0x41
	.4byte	0x5a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"buf"
	.2byte	0x21a
	.byte	0x2d
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF84
	.2byte	0x21a
	.byte	0x39
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF85
	.2byte	0x21b
	.byte	0x24
	.4byte	0x79e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF86
	.2byte	0x21c
	.byte	0x24
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.4byte	.LASF59
	.2byte	0x21e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF93
	.2byte	0x1ec
	.4byte	0x68
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa26
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x1ec
	.byte	0x41
	.4byte	0x844
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF83
	.2byte	0x1ed
	.byte	0x2e
	.4byte	0x5a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF58
	.2byte	0x1ed
	.byte	0x38
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"buf"
	.2byte	0x1ee
	.byte	0x35
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF84
	.2byte	0x1ee
	.byte	0x41
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF85
	.2byte	0x1ef
	.byte	0x2c
	.4byte	0x79e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF86
	.2byte	0x1f2
	.byte	0x2c
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF59
	.2byte	0x1f3
	.byte	0x2a
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xd
	.string	"ret"
	.2byte	0x1f5
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.4byte	.LASF87
	.2byte	0x1f7
	.byte	0x1e
	.4byte	0x5df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF94
	.2byte	0x1bd
	.4byte	0x68
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa7c
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x1bd
	.byte	0x33
	.4byte	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"key"
	.2byte	0x1be
	.byte	0x38
	.4byte	0xa7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF95
	.2byte	0x1bf
	.byte	0x2f
	.4byte	0x3c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0xd
	.string	"ret"
	.2byte	0x1c1
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x3aa
	.uleb128 0x13
	.4byte	.LASF96
	.2byte	0x1a2
	.4byte	0x68
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad7
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x1a2
	.byte	0x40
	.4byte	0x844
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"key"
	.2byte	0x1a3
	.byte	0x40
	.4byte	0xa7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF95
	.2byte	0x1a4
	.byte	0x37
	.4byte	0x3c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0xd
	.string	"ret"
	.2byte	0x1a6
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF97
	.2byte	0x181
	.4byte	0x68
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb3c
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x181
	.byte	0x34
	.4byte	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"buf"
	.2byte	0x182
	.byte	0x34
	.4byte	0x542
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"end"
	.2byte	0x183
	.byte	0x33
	.4byte	0x547
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.string	"ret"
	.2byte	0x185
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF98
	.2byte	0x186
	.byte	0x1a
	.4byte	0x178
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x13
	.4byte	.LASF99
	.2byte	0x172
	.4byte	0x68
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb83
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x172
	.byte	0x41
	.4byte	0x844
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"buf"
	.2byte	0x173
	.byte	0x3c
	.4byte	0x542
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"end"
	.2byte	0x174
	.byte	0x3b
	.4byte	0x547
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.4byte	.LASF100
	.2byte	0x151
	.4byte	0x68
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc06
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x151
	.byte	0x34
	.4byte	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF83
	.2byte	0x151
	.byte	0x41
	.4byte	0x5a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"buf"
	.2byte	0x152
	.byte	0x2d
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF84
	.2byte	0x152
	.byte	0x39
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF85
	.2byte	0x153
	.byte	0x24
	.4byte	0x79e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF86
	.2byte	0x154
	.byte	0x24
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.4byte	.LASF59
	.2byte	0x156
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF101
	.2byte	0x111
	.4byte	0x68
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcd4
	.uleb128 0x3
	.string	"ctx"
	.2byte	0x111
	.byte	0x41
	.4byte	0x844
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF83
	.2byte	0x112
	.byte	0x2e
	.4byte	0x5a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF58
	.2byte	0x112
	.byte	0x38
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"buf"
	.2byte	0x113
	.byte	0x35
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF84
	.2byte	0x113
	.byte	0x41
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF85
	.2byte	0x114
	.byte	0x2c
	.4byte	0x79e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF86
	.2byte	0x117
	.byte	0x2c
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF59
	.2byte	0x118
	.byte	0x2a
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xd
	.string	"ret"
	.2byte	0x11a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.4byte	.LASF102
	.2byte	0x11b
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.4byte	.LASF103
	.2byte	0x11b
	.byte	0x15
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.4byte	.LASF87
	.2byte	0x11d
	.byte	0x1e
	.4byte	0x5df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF104
	.byte	0xf2
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcf7
	.uleb128 0x4
	.string	"ctx"
	.byte	0xf2
	.byte	0x2e
	.4byte	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.4byte	.LASF105
	.byte	0x1
	.byte	0xe9
	.byte	0x6
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd1c
	.uleb128 0x4
	.string	"ctx"
	.byte	0xe9
	.byte	0x38
	.4byte	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF110
	.byte	0xd8
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd3f
	.uleb128 0x4
	.string	"ctx"
	.byte	0xd8
	.byte	0x3b
	.4byte	0x844
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF106
	.byte	0xc1
	.4byte	0x68
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd74
	.uleb128 0x4
	.string	"ctx"
	.byte	0xc1
	.byte	0x2e
	.4byte	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0xc1
	.byte	0x48
	.4byte	0x178
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF107
	.byte	0xb1
	.4byte	0x68
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdb7
	.uleb128 0x4
	.string	"ctx"
	.byte	0xb1
	.byte	0x3b
	.4byte	0x844
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0xb2
	.byte	0x35
	.4byte	0x178
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x17
	.string	"ret"
	.byte	0xb4
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF108
	.byte	0x9f
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdda
	.uleb128 0x4
	.string	"ctx"
	.byte	0x9f
	.byte	0x2e
	.4byte	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF109
	.byte	0x93
	.byte	0x16
	.4byte	0x178
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe02
	.uleb128 0x4
	.string	"ctx"
	.byte	0x93
	.byte	0x44
	.4byte	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF111
	.byte	0x86
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe25
	.uleb128 0x4
	.string	"ctx"
	.byte	0x86
	.byte	0x3b
	.4byte	0x844
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF112
	.byte	0x7c
	.4byte	0x68
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe8c
	.uleb128 0x4
	.string	"grp"
	.byte	0x7c
	.byte	0x34
	.4byte	0x608
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"z"
	.byte	0x7c
	.byte	0x46
	.4byte	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.string	"Q"
	.byte	0x7d
	.byte	0x3a
	.4byte	0x517
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.string	"d"
	.byte	0x7d
	.byte	0x50
	.4byte	0x4a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x7e
	.byte	0x27
	.4byte	0x79e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x7f
	.byte	0x27
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF113
	.byte	0x5d
	.4byte	0x68
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf28
	.uleb128 0x4
	.string	"grp"
	.byte	0x5d
	.byte	0x3f
	.4byte	0x608
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.string	"z"
	.byte	0x5e
	.byte	0x39
	.4byte	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.string	"Q"
	.byte	0x5f
	.byte	0x45
	.4byte	0x517
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.string	"d"
	.byte	0x5f
	.byte	0x5b
	.4byte	0x4a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x60
	.byte	0x32
	.4byte	0x79e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x61
	.byte	0x32
	.4byte	0x95
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x62
	.byte	0x45
	.4byte	0x5df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x17
	.string	"ret"
	.byte	0x64
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.string	"P"
	.byte	0x65
	.byte	0x17
	.4byte	0x1dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.4byte	.LASF117
	.byte	0x73
	.4byte	.L16
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF114
	.byte	0x51
	.4byte	0x68
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf83
	.uleb128 0x4
	.string	"grp"
	.byte	0x51
	.byte	0x30
	.4byte	0x608
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"d"
	.byte	0x51
	.byte	0x42
	.4byte	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.string	"Q"
	.byte	0x51
	.byte	0x58
	.4byte	0x2db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x52
	.byte	0x23
	.4byte	0x79e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x53
	.byte	0x23
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF115
	.byte	0x36
	.4byte	0x68
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1013
	.uleb128 0x4
	.string	"grp"
	.byte	0x36
	.byte	0x3b
	.4byte	0x608
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"d"
	.byte	0x37
	.byte	0x35
	.4byte	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.string	"Q"
	.byte	0x37
	.byte	0x4b
	.4byte	0x2db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x38
	.byte	0x2e
	.4byte	0x79e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x39
	.byte	0x2e
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x3a
	.byte	0x41
	.4byte	0x5df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"ret"
	.byte	0x3c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.4byte	.LASF116
	.byte	0x1
	.byte	0x3e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.4byte	.LASF117
	.byte	0x4a
	.4byte	.L9
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF118
	.byte	0x27
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x103b
	.uleb128 0x4
	.string	"gid"
	.byte	0x27
	.byte	0x2e
	.4byte	0x178
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x29
	.4byte	.LASF119
	.byte	0x1
	.byte	0x1d
	.byte	0x1d
	.4byte	0x178
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1064
	.uleb128 0x4
	.string	"ctx"
	.byte	0x1e
	.byte	0x21
	.4byte	0x1064
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x470
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x5
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xa
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
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x13
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xe4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
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
	.byte	0x7
	.4byte	.LFB28
	.uleb128 .LFE28-.LFB28
	.byte	0x7
	.4byte	.LFB29
	.uleb128 .LFE29-.LFB29
	.byte	0x7
	.4byte	.LFB30
	.uleb128 .LFE30-.LFB30
	.byte	0x7
	.4byte	.LFB31
	.uleb128 .LFE31-.LFB31
	.byte	0x7
	.4byte	.LFB32
	.uleb128 .LFE32-.LFB32
	.byte	0x7
	.4byte	.LFB33
	.uleb128 .LFE33-.LFB33
	.byte	0x7
	.4byte	.LFB34
	.uleb128 .LFE34-.LFB34
	.byte	0x7
	.4byte	.LFB35
	.uleb128 .LFE35-.LFB35
	.byte	0x7
	.4byte	.LFB36
	.uleb128 .LFE36-.LFB36
	.byte	0x7
	.4byte	.LFB37
	.uleb128 .LFE37-.LFB37
	.byte	0x7
	.4byte	.LFB38
	.uleb128 .LFE38-.LFB38
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF116:
	.string	"restarting"
.LASF12:
	.string	"size_t"
.LASF82:
	.string	"mbedtls_ecp_gen_privkey"
.LASF36:
	.string	"mbedtls_ecp_curve_type"
.LASF94:
	.string	"mbedtls_ecdh_get_params"
.LASF109:
	.string	"mbedtls_ecdh_get_grp_id"
.LASF9:
	.string	"long long unsigned int"
.LASF59:
	.string	"restart_enabled"
.LASF105:
	.string	"mbedtls_ecdh_enable_restart"
.LASF44:
	.string	"t_data"
.LASF31:
	.string	"MBEDTLS_ECP_DP_CURVE448"
.LASF17:
	.string	"mbedtls_mpi"
.LASF25:
	.string	"MBEDTLS_ECP_DP_BP384R1"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF42:
	.string	"t_pre"
.LASF52:
	.string	"mbedtls_ecp_restart_ctx"
.LASF85:
	.string	"f_rng"
.LASF18:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF96:
	.string	"ecdh_get_params_internal"
.LASF72:
	.string	"mbedtls_ecp_group_free"
.LASF60:
	.string	"mbedtls_ecdh_context_mbed"
.LASF6:
	.string	"long int"
.LASF67:
	.string	"mbedtls_ecp_tls_read_point"
.LASF106:
	.string	"mbedtls_ecdh_setup"
.LASF20:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF83:
	.string	"olen"
.LASF101:
	.string	"ecdh_make_params_internal"
.LASF113:
	.string	"ecdh_compute_shared_restartable"
.LASF69:
	.string	"mbedtls_ecp_tls_write_group"
.LASF62:
	.string	"mbedtls_mpi_write_binary_le"
.LASF70:
	.string	"mbedtls_ecp_restart_free"
.LASF19:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF22:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF87:
	.string	"rs_ctx"
.LASF92:
	.string	"mbedtls_ecdh_make_public"
.LASF40:
	.string	"nbits"
.LASF10:
	.string	"unsigned int"
.LASF102:
	.string	"grp_len"
.LASF7:
	.string	"long unsigned int"
.LASF41:
	.string	"modp"
.LASF28:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
.LASF84:
	.string	"blen"
.LASF65:
	.string	"mbedtls_ecp_copy"
.LASF5:
	.string	"short unsigned int"
.LASF50:
	.string	"ops_done"
.LASF75:
	.string	"mbedtls_mpi_init"
.LASF66:
	.string	"mbedtls_ecp_tls_read_group_id"
.LASF51:
	.string	"depth"
.LASF29:
	.string	"MBEDTLS_ECP_DP_SECP224K1"
.LASF64:
	.string	"mbedtls_mpi_size"
.LASF57:
	.string	"mbedtls_ecdh_context"
.LASF74:
	.string	"mbedtls_ecp_restart_init"
.LASF54:
	.string	"MBEDTLS_ECDH_OURS"
.LASF107:
	.string	"ecdh_setup_internal"
.LASF68:
	.string	"mbedtls_ecp_tls_write_point"
.LASF108:
	.string	"mbedtls_ecdh_init"
.LASF46:
	.string	"mbedtls_ecp_restart_mul_ctx"
.LASF115:
	.string	"ecdh_gen_public_restartable"
.LASF71:
	.string	"mbedtls_mpi_free"
.LASF86:
	.string	"p_rng"
.LASF48:
	.string	"mbedtls_ecp_restart_mul"
.LASF24:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF111:
	.string	"ecdh_init_internal"
.LASF98:
	.string	"grp_id"
.LASF95:
	.string	"side"
.LASF79:
	.string	"mbedtls_ecp_is_zero"
.LASF23:
	.string	"MBEDTLS_ECP_DP_SECP521R1"
.LASF11:
	.string	"long double"
.LASF100:
	.string	"mbedtls_ecdh_make_params"
.LASF34:
	.string	"MBEDTLS_ECP_TYPE_SHORT_WEIERSTRASS"
.LASF103:
	.string	"pt_len"
.LASF80:
	.string	"mbedtls_ecp_point_init"
.LASF39:
	.string	"pbits"
.LASF118:
	.string	"mbedtls_ecdh_can_do"
.LASF76:
	.string	"mbedtls_ecp_group_init"
.LASF88:
	.string	"mbedtls_ecdh_calc_secret"
.LASF77:
	.string	"mbedtls_ecp_point_free"
.LASF21:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF16:
	.string	"mbedtls_mpi_uint"
.LASF32:
	.string	"mbedtls_ecp_group_id"
.LASF3:
	.string	"unsigned char"
.LASF35:
	.string	"MBEDTLS_ECP_TYPE_MONTGOMERY"
.LASF4:
	.string	"short int"
.LASF61:
	.string	"mbedtls_mpi_write_binary"
.LASF91:
	.string	"ecdh_read_public_internal"
.LASF53:
	.string	"mbedtls_ecp_keypair"
.LASF47:
	.string	"mbedtls_ecp_restart_muladd_ctx"
.LASF38:
	.string	"mbedtls_ecp_group"
.LASF30:
	.string	"MBEDTLS_ECP_DP_SECP256K1"
.LASF81:
	.string	"mbedtls_ecp_mul_restartable"
.LASF13:
	.string	"uint32_t"
.LASF93:
	.string	"ecdh_make_public_internal"
.LASF14:
	.string	"char"
.LASF114:
	.string	"mbedtls_ecdh_gen_public"
.LASF15:
	.string	"mbedtls_f_rng_t"
.LASF43:
	.string	"t_post"
.LASF58:
	.string	"point_format"
.LASF78:
	.string	"mbedtls_mpi_copy"
.LASF63:
	.string	"mbedtls_ecp_get_type"
.LASF120:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF26:
	.string	"MBEDTLS_ECP_DP_BP512R1"
.LASF45:
	.string	"T_size"
.LASF104:
	.string	"mbedtls_ecdh_free"
.LASF99:
	.string	"ecdh_read_params_internal"
.LASF37:
	.string	"mbedtls_ecp_point"
.LASF90:
	.string	"ecdh_calc_secret_internal"
.LASF97:
	.string	"mbedtls_ecdh_read_params"
.LASF27:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF55:
	.string	"MBEDTLS_ECDH_THEIRS"
.LASF112:
	.string	"mbedtls_ecdh_compute_shared"
.LASF119:
	.string	"mbedtls_ecdh_grp_id"
.LASF56:
	.string	"mbedtls_ecdh_side"
.LASF117:
	.string	"cleanup"
.LASF49:
	.string	"mbedtls_ecp_restart_muladd"
.LASF110:
	.string	"ecdh_free_internal"
.LASF89:
	.string	"mbedtls_ecdh_read_public"
.LASF33:
	.string	"MBEDTLS_ECP_TYPE_NONE"
.LASF73:
	.string	"mbedtls_ecp_group_load"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ecdh.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
