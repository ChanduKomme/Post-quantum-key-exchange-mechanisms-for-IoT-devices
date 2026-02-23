	.file	"ecjpake.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ecjpake.c"
	.section	.text.mbedtls_md_get_size_from_type,"ax",@progbits
	.align	1
	.type	mbedtls_md_get_size_from_type, @function
mbedtls_md_get_size_from_type:
.LFB12:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
	.loc 1 247 1
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
	.loc 1 248 12
	lbu	a5,-17(s0)
	mv	a0,a5
	call	mbedtls_md_info_from_type
	mv	a5,a0
	.loc 1 248 12 is_stmt 0 discriminator 1
	mv	a0,a5
	call	mbedtls_md_get_size
	mv	a5,a0
	.loc 1 249 1 is_stmt 1
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
	.size	mbedtls_md_get_size_from_type, .-mbedtls_md_get_size_from_type
	.section	.rodata
	.align	2
.LC0:
	.string	"client"
	.align	2
.LC1:
	.string	"server"
	.section	.srodata.ecjpake_id,"a"
	.align	2
	.type	ecjpake_id, @object
	.size	ecjpake_id, 8
ecjpake_id:
	.word	.LC0
	.word	.LC1
	.section	.text.mbedtls_ecjpake_compute_hash,"ax",@progbits
	.align	1
	.type	mbedtls_ecjpake_compute_hash, @function
mbedtls_ecjpake_compute_hash:
.LFB14:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ecjpake.c"
	.loc 2 42 1
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
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sb	a5,-17(s0)
	.loc 2 43 12
	lbu	a5,-17(s0)
	mv	a0,a5
	call	mbedtls_md_info_from_type
	mv	a5,a0
	.loc 2 43 12 is_stmt 0 discriminator 1
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_md
	mv	a5,a0
	.loc 2 45 1 is_stmt 1
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
	.size	mbedtls_ecjpake_compute_hash, .-mbedtls_ecjpake_compute_hash
	.section	.text.mbedtls_ecjpake_init,"ax",@progbits
	.align	1
	.globl	mbedtls_ecjpake_init
	.type	mbedtls_ecjpake_init, @function
mbedtls_ecjpake_init:
.LFB15:
	.loc 2 51 1
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
	.loc 2 52 18
	lw	a5,-20(s0)
	sb	zero,0(a5)
	.loc 2 53 5
	lw	a5,-20(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	mbedtls_ecp_group_init
	.loc 2 54 23
	lw	a5,-20(s0)
	sw	zero,104(a5)
	.loc 2 56 5
	lw	a5,-20(s0)
	addi	a5,a5,108
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 57 5
	lw	a5,-20(s0)
	addi	a5,a5,132
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 58 5
	lw	a5,-20(s0)
	addi	a5,a5,156
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 59 5
	lw	a5,-20(s0)
	addi	a5,a5,180
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 60 5
	lw	a5,-20(s0)
	addi	a5,a5,204
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 62 5
	lw	a5,-20(s0)
	addi	a5,a5,228
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 63 5
	lw	a5,-20(s0)
	addi	a5,a5,236
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 64 5
	lw	a5,-20(s0)
	addi	a5,a5,244
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 65 1
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
.LFE15:
	.size	mbedtls_ecjpake_init, .-mbedtls_ecjpake_init
	.section	.text.mbedtls_ecjpake_free,"ax",@progbits
	.align	1
	.globl	mbedtls_ecjpake_free
	.type	mbedtls_ecjpake_free, @function
mbedtls_ecjpake_free:
.LFB16:
	.loc 2 71 1
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
	.loc 2 72 8
	lw	a5,-20(s0)
	beq	a5,zero,.L9
	.loc 2 76 18
	lw	a5,-20(s0)
	sb	zero,0(a5)
	.loc 2 77 5
	lw	a5,-20(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	mbedtls_ecp_group_free
	.loc 2 79 5
	lw	a5,-20(s0)
	addi	a5,a5,108
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 80 5
	lw	a5,-20(s0)
	addi	a5,a5,132
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 81 5
	lw	a5,-20(s0)
	addi	a5,a5,156
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 82 5
	lw	a5,-20(s0)
	addi	a5,a5,180
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 83 5
	lw	a5,-20(s0)
	addi	a5,a5,204
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 85 5
	lw	a5,-20(s0)
	addi	a5,a5,228
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 86 5
	lw	a5,-20(s0)
	addi	a5,a5,236
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 87 5
	lw	a5,-20(s0)
	addi	a5,a5,244
	mv	a0,a5
	call	mbedtls_mpi_free
	j	.L6
.L9:
	.loc 2 73 9
	nop
.L6:
	.loc 2 88 1
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
	.size	mbedtls_ecjpake_free, .-mbedtls_ecjpake_free
	.section	.text.mbedtls_ecjpake_setup,"ax",@progbits
	.align	1
	.globl	mbedtls_ecjpake_setup
	.type	mbedtls_ecjpake_setup, @function
mbedtls_ecjpake_setup:
.LFB17:
	.loc 2 99 1
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
	sw	a4,-44(s0)
	sw	a5,-48(s0)
	mv	a5,a1
	sb	a5,-37(s0)
	mv	a5,a2
	sb	a5,-38(s0)
	mv	a5,a3
	sb	a5,-39(s0)
	.loc 2 100 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 102 8
	lbu	a5,-37(s0)
	beq	a5,zero,.L11
	.loc 2 102 40 discriminator 1
	lbu	a4,-37(s0)
	li	a5,1
	beq	a4,a5,.L11
	.loc 2 103 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L12
.L11:
	.loc 2 106 15
	lw	a5,-36(s0)
	lbu	a4,-37(s0)
	sb	a4,100(a5)
	.loc 2 108 10
	lbu	a5,-38(s0)
	mv	a0,a5
	call	mbedtls_md_info_from_type
	mv	a5,a0
	.loc 2 108 8 discriminator 1
	bne	a5,zero,.L13
	.loc 2 109 16
	li	a5,-20480
	addi	a5,a5,-128
	j	.L12
.L13:
	.loc 2 112 18
	lw	a5,-36(s0)
	lbu	a4,-38(s0)
	sb	a4,0(a5)
	.loc 2 114 22
	lw	a5,-36(s0)
	addi	a5,a5,4
	lbu	a4,-39(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecp_group_load
	sw	a0,-20(s0)
	.loc 2 114 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L17
	.loc 2 116 22
	lw	a5,-36(s0)
	addi	a5,a5,244
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	mv	a0,a5
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 2 118 1
	j	.L15
.L17:
	.loc 2 114 71
	nop
.L15:
	.loc 2 119 8
	lw	a5,-20(s0)
	beq	a5,zero,.L16
	.loc 2 120 9
	lw	a0,-36(s0)
	call	mbedtls_ecjpake_free
.L16:
	.loc 2 123 12
	lw	a5,-20(s0)
.L12:
	.loc 2 124 1
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
	.size	mbedtls_ecjpake_setup, .-mbedtls_ecjpake_setup
	.section	.text.mbedtls_ecjpake_set_point_format,"ax",@progbits
	.align	1
	.globl	mbedtls_ecjpake_set_point_format
	.type	mbedtls_ecjpake_set_point_format, @function
mbedtls_ecjpake_set_point_format:
.LFB18:
	.loc 2 128 1
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
	lw	a4,-24(s0)
	.loc 2 129 5
	li	a5,1
	bgtu	a4,a5,.L19
	.loc 2 132 31
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,104(a5)
	.loc 2 133 20
	li	a5,0
	j	.L20
.L19:
	.loc 2 135 20
	li	a5,-20480
	addi	a5,a5,128
.L20:
	.loc 2 137 1
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
.LFE18:
	.size	mbedtls_ecjpake_set_point_format, .-mbedtls_ecjpake_set_point_format
	.section	.text.mbedtls_ecjpake_check,"ax",@progbits
	.align	1
	.globl	mbedtls_ecjpake_check
	.type	mbedtls_ecjpake_check, @function
mbedtls_ecjpake_check:
.LFB19:
	.loc 2 143 1
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
	.loc 2 144 12
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 2 144 8
	beq	a5,zero,.L22
	.loc 2 145 17
	lw	a5,-20(s0)
	lbu	a5,4(a5)
	.loc 2 144 41 discriminator 1
	beq	a5,zero,.L22
	.loc 2 146 15
	lw	a5,-20(s0)
	lw	a5,244(a5)
	.loc 2 145 44
	bne	a5,zero,.L23
.L22:
	.loc 2 147 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L24
.L23:
	.loc 2 150 12
	li	a5,0
.L24:
	.loc 2 151 1
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
.LFE19:
	.size	mbedtls_ecjpake_check, .-mbedtls_ecjpake_check
	.section	.text.ecjpake_write_len_point,"ax",@progbits
	.align	1
	.type	ecjpake_write_len_point, @function
ecjpake_write_len_point:
.LFB20:
	.loc 2 161 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	.loc 2 162 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 166 15
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 2 166 8
	lw	a4,-56(s0)
	bltu	a4,a5,.L26
	.loc 2 166 27 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 2 166 25 discriminator 1
	lw	a4,-56(s0)
	sub	a4,a4,a5
	.loc 2 166 18 discriminator 1
	li	a5,4
	bgt	a4,a5,.L27
.L26:
	.loc 2 167 16
	li	a5,-20480
	addi	a5,a5,256
	j	.L30
.L27:
	.loc 2 171 48
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 2 170 11
	addi	a2,a5,4
	.loc 2 171 73
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 2 171 76
	addi	a5,a5,4
	.loc 2 171 70
	lw	a4,-56(s0)
	sub	a5,a4,a5
	.loc 2 170 11
	addi	a3,s0,-36
	mv	a4,a2
	lw	a2,-64(s0)
	lw	a1,-68(s0)
	lw	a0,-60(s0)
	call	mbedtls_ecp_point_write_binary
	sw	a0,-20(s0)
	.loc 2 172 8
	lw	a5,-20(s0)
	beq	a5,zero,.L29
	.loc 2 173 16
	lw	a5,-20(s0)
	j	.L30
.L29:
	.loc 2 176 85 discriminator 2
	lw	a5,-52(s0)
	lw	s1,0(a5)
	.loc 2 176 126 discriminator 2
	lw	a5,-36(s0)
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	sw	s1,-24(s0)
	sw	a5,-28(s0)
.LBB6:
.LBB7:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/alignment.h"
	.loc 3 200 33
	lw	a5,-24(s0)
	sw	a5,-32(s0)
	.loc 3 201 12
	lw	a5,-32(s0)
	lw	a4,-28(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-28(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-28(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-28(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 3 205 1
	nop
.LBE7:
.LBE6:
	.loc 2 178 5
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 2 178 13
	lw	a5,-36(s0)
	addi	a5,a5,4
	.loc 2 178 8
	add	a4,a4,a5
	lw	a5,-52(s0)
	sw	a4,0(a5)
	.loc 2 180 12
	li	a5,0
.L30:
	.loc 2 181 1
	mv	a0,a5
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s1,68(sp)
	.cfi_restore 9
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	ecjpake_write_len_point, .-ecjpake_write_len_point
	.section	.text.ecjpake_hash,"ax",@progbits
	.align	1
	.type	ecjpake_hash, @function
ecjpake_hash:
.LFB21:
	.loc 2 200 1
	.cfi_startproc
	addi	sp,sp,-576
	.cfi_def_cfa_offset 576
	sw	ra,572(sp)
	sw	s0,568(sp)
	sw	s1,564(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,576
	.cfi_def_cfa 8, 0
	sw	a1,-552(s0)
	sw	a2,-556(s0)
	sw	a3,-560(s0)
	sw	a4,-564(s0)
	sw	a5,-568(s0)
	sw	a6,-572(s0)
	sw	a7,-576(s0)
	mv	a5,a0
	sb	a5,-545(s0)
	.loc 2 201 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 203 20
	addi	a5,s0,-464
	sw	a5,-468(s0)
	.loc 2 204 26
	addi	a5,s0,-464
	addi	a5,a5,421
	sw	a5,-24(s0)
	.loc 2 205 27
	lw	a0,-572(s0)
	call	strlen
	sw	a0,-28(s0)
	.loc 2 209 22
	addi	a5,s0,-468
	lw	a4,-560(s0)
	lw	a3,-556(s0)
	lw	a2,-552(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	ecjpake_write_len_point
	sw	a0,-20(s0)
	.loc 2 209 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L43
	.loc 2 210 22
	addi	a5,s0,-468
	lw	a4,-564(s0)
	lw	a3,-556(s0)
	lw	a2,-552(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	ecjpake_write_len_point
	sw	a0,-20(s0)
	.loc 2 210 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L44
	.loc 2 211 22
	addi	a5,s0,-468
	lw	a4,-568(s0)
	lw	a3,-556(s0)
	lw	a2,-552(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	ecjpake_write_len_point
	sw	a0,-20(s0)
	.loc 2 211 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L45
	.loc 2 213 13
	lw	a5,-468(s0)
	lw	a4,-24(s0)
	sub	a4,a4,a5
	.loc 2 213 8
	li	a5,3
	bgt	a4,a5,.L36
	.loc 2 214 16
	li	a5,-20480
	addi	a5,a5,256
	j	.L42
.L36:
	.loc 2 217 87 discriminator 2
	lw	s1,-468(s0)
	.loc 2 217 127 discriminator 2
	lw	a0,-28(s0)
	call	__bswapsi2
	mv	a5,a0
	sw	s1,-32(s0)
	sw	a5,-36(s0)
.LBB8:
.LBB9:
	.loc 3 200 33
	lw	a5,-32(s0)
	sw	a5,-40(s0)
	.loc 3 201 12
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-36(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-36(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-36(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 3 205 1
	nop
.LBE9:
.LBE8:
	.loc 2 218 7
	lw	a5,-468(s0)
	addi	a5,a5,4
	sw	a5,-468(s0)
	.loc 2 220 13
	lw	a5,-468(s0)
	.loc 2 220 8
	lw	a4,-24(s0)
	bltu	a4,a5,.L38
	.loc 2 220 34 discriminator 1
	lw	a5,-468(s0)
	lw	a4,-24(s0)
	sub	a5,a4,a5
	.loc 2 220 20 discriminator 1
	mv	a4,a5
	.loc 2 220 17 discriminator 1
	lw	a5,-28(s0)
	bleu	a5,a4,.L39
.L38:
	.loc 2 221 16
	li	a5,-20480
	addi	a5,a5,256
	j	.L42
.L39:
	.loc 2 224 5
	lw	a5,-468(s0)
	lw	a2,-28(s0)
	lw	a1,-572(s0)
	mv	a0,a5
	call	memcpy
	.loc 2 225 7
	lw	a4,-468(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-468(s0)
	.loc 2 228 77
	lw	a4,-468(s0)
	addi	a5,s0,-464
	sub	a5,a4,a5
	.loc 2 228 22
	mv	a2,a5
	addi	a3,s0,-532
	addi	a4,s0,-464
	lbu	a5,-545(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecjpake_compute_hash
	sw	a0,-20(s0)
	.loc 2 228 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L46
	.loc 2 232 55
	lbu	a5,-545(s0)
	mv	a0,a5
	call	mbedtls_md_get_size_from_type
	mv	a5,a0
	.loc 2 232 22 discriminator 1
	mv	a4,a5
	addi	a5,s0,-532
	mv	a2,a4
	mv	a1,a5
	lw	a0,-576(s0)
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 2 232 13 discriminator 2
	lw	a5,-20(s0)
	bne	a5,zero,.L47
	.loc 2 234 22
	lw	a5,-552(s0)
	addi	a5,a5,52
	mv	a2,a5
	lw	a1,-576(s0)
	lw	a0,-576(s0)
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 2 236 1
	j	.L33
.L43:
	.loc 2 209 75
	nop
	j	.L33
.L44:
	.loc 2 210 75
	nop
	j	.L33
.L45:
	.loc 2 211 75
	nop
	j	.L33
.L46:
	.loc 2 228 99
	nop
	j	.L33
.L47:
	.loc 2 232 103
	nop
.L33:
	.loc 2 237 12
	lw	a5,-20(s0)
.L42:
	.loc 2 238 1
	mv	a0,a5
	lw	ra,572(sp)
	.cfi_restore 1
	lw	s0,568(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 576
	lw	s1,564(sp)
	.cfi_restore 9
	addi	sp,sp,576
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	ecjpake_hash, .-ecjpake_hash
	.section	.text.ecjpake_zkp_read,"ax",@progbits
	.align	1
	.type	ecjpake_zkp_read, @function
ecjpake_zkp_read:
.LFB22:
	.loc 2 251 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	a1,-104(s0)
	sw	a2,-108(s0)
	sw	a3,-112(s0)
	sw	a4,-116(s0)
	sw	a5,-120(s0)
	sw	a6,-124(s0)
	sw	a7,-128(s0)
	mv	a5,a0
	sb	a5,-97(s0)
	.loc 2 252 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 257 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 258 5
	addi	a5,s0,-72
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 259 5
	addi	a5,s0,-80
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 260 5
	addi	a5,s0,-88
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 268 15
	lw	a5,-124(s0)
	lw	a5,0(a5)
	.loc 2 268 8
	lw	a4,-128(s0)
	bgeu	a4,a5,.L49
	.loc 2 269 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L60
.L49:
	.loc 2 272 77
	lw	a5,-124(s0)
	lw	a5,0(a5)
	.loc 2 272 75
	lw	a4,-128(s0)
	sub	a5,a4,a5
	.loc 2 272 22
	mv	a4,a5
	addi	a5,s0,-48
	mv	a3,a4
	lw	a2,-124(s0)
	mv	a1,a5
	lw	a0,-104(s0)
	call	mbedtls_ecp_tls_read_point
	sw	a0,-20(s0)
	.loc 2 272 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L61
	.loc 2 274 15
	lw	a5,-124(s0)
	lw	a5,0(a5)
	.loc 2 274 8
	lw	a4,-128(s0)
	bltu	a4,a5,.L53
	.loc 2 274 37 discriminator 1
	lw	a5,-124(s0)
	lw	a5,0(a5)
	.loc 2 274 18 discriminator 1
	lw	a4,-128(s0)
	bne	a4,a5,.L54
.L53:
	.loc 2 275 13
	li	a5,-20480
	addi	a5,a5,128
	sw	a5,-20(s0)
	.loc 2 276 9
	j	.L52
.L54:
	.loc 2 279 15
	lw	a5,-124(s0)
	lw	a5,0(a5)
	.loc 2 279 18
	addi	a3,a5,1
	lw	a4,-124(s0)
	sw	a3,0(a4)
	.loc 2 279 13
	lbu	a5,0(a5)
	.loc 2 279 11
	sw	a5,-24(s0)
	.loc 2 281 15
	lw	a5,-124(s0)
	lw	a5,0(a5)
	.loc 2 281 8
	lw	a4,-128(s0)
	bltu	a4,a5,.L55
	.loc 2 281 37 discriminator 1
	lw	a5,-124(s0)
	lw	a5,0(a5)
	.loc 2 281 35 discriminator 1
	lw	a4,-128(s0)
	sub	a5,a4,a5
	.loc 2 281 21 discriminator 1
	mv	a4,a5
	.loc 2 281 18 discriminator 1
	lw	a5,-24(s0)
	bgtu	a5,a4,.L55
	.loc 2 281 49 discriminator 2
	lw	a5,-24(s0)
	bne	a5,zero,.L56
.L55:
	.loc 2 282 13
	li	a5,-20480
	addi	a5,a5,128
	sw	a5,-20(s0)
	.loc 2 283 9
	j	.L52
.L56:
	.loc 2 286 22
	lw	a5,-124(s0)
	lw	a4,0(a5)
	addi	a5,s0,-80
	lw	a2,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 2 286 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L62
	.loc 2 287 5
	lw	a5,-124(s0)
	lw	a4,0(a5)
	.loc 2 287 8
	lw	a5,-24(s0)
	add	a4,a4,a5
	lw	a5,-124(s0)
	sw	a4,0(a5)
	.loc 2 292 22
	addi	a5,s0,-88
	addi	a4,s0,-48
	lbu	a0,-97(s0)
	mv	a7,a5
	lw	a6,-120(s0)
	lw	a5,-116(s0)
	lw	a3,-112(s0)
	lw	a2,-108(s0)
	lw	a1,-104(s0)
	call	ecjpake_hash
	sw	a0,-20(s0)
	.loc 2 292 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L63
	.loc 2 293 22
	addi	a4,s0,-80
	addi	a2,s0,-88
	addi	a1,s0,-72
	lw	a5,-112(s0)
	lw	a3,-116(s0)
	lw	a0,-104(s0)
	call	mbedtls_ecp_muladd
	sw	a0,-20(s0)
	.loc 2 293 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L64
	.loc 2 296 9
	addi	a4,s0,-48
	addi	a5,s0,-72
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecp_point_cmp
	mv	a5,a0
	.loc 2 296 8 discriminator 1
	beq	a5,zero,.L65
	.loc 2 297 13
	li	a5,-20480
	addi	a5,a5,512
	sw	a5,-20(s0)
	.loc 2 298 9
	j	.L52
.L61:
	.loc 2 272 90
	nop
	j	.L52
.L62:
	.loc 2 286 69
	nop
	j	.L52
.L63:
	.loc 2 292 79
	nop
	j	.L52
.L64:
	.loc 2 293 95
	nop
	j	.L52
.L65:
	.loc 2 301 1
	nop
.L52:
	.loc 2 302 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 303 5
	addi	a5,s0,-72
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 304 5
	addi	a5,s0,-80
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 305 5
	addi	a5,s0,-88
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 307 12
	lw	a5,-20(s0)
.L60:
	.loc 2 308 1
	mv	a0,a5
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	ecjpake_zkp_read, .-ecjpake_zkp_read
	.section	.text.ecjpake_zkp_write,"ax",@progbits
	.align	1
	.type	ecjpake_zkp_write, @function
ecjpake_zkp_write:
.LFB23:
	.loc 2 324 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	sw	a4,-84(s0)
	sw	a5,-88(s0)
	sw	a6,-92(s0)
	sw	a7,-96(s0)
	mv	a5,a0
	sb	a5,-65(s0)
	.loc 2 325 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 331 15
	lw	a5,-96(s0)
	lw	a5,0(a5)
	.loc 2 331 8
	lw	a4,0(s0)
	bgeu	a4,a5,.L67
	.loc 2 332 16
	li	a5,-20480
	addi	a5,a5,256
	j	.L79
.L67:
	.loc 2 335 5
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 336 5
	addi	a5,s0,-52
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 337 5
	addi	a5,s0,-60
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 340 22
	addi	a3,s0,-44
	addi	a2,s0,-52
	lw	a5,8(s0)
	lw	a4,4(s0)
	lw	a1,-80(s0)
	lw	a0,-72(s0)
	call	mbedtls_ecp_gen_keypair_base
	sw	a0,-20(s0)
	.loc 2 340 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L80
	.loc 2 342 22
	addi	a5,s0,-60
	addi	a4,s0,-44
	lbu	a0,-65(s0)
	mv	a7,a5
	lw	a6,-92(s0)
	lw	a5,-88(s0)
	lw	a3,-80(s0)
	lw	a2,-76(s0)
	lw	a1,-72(s0)
	call	ecjpake_hash
	sw	a0,-20(s0)
	.loc 2 342 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L81
	.loc 2 343 22
	addi	a4,s0,-60
	addi	a5,s0,-60
	lw	a2,-84(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 2 343 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L82
	.loc 2 344 22
	addi	a3,s0,-60
	addi	a4,s0,-52
	addi	a5,s0,-60
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_sub_mpi
	sw	a0,-20(s0)
	.loc 2 344 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L83
	.loc 2 345 22
	lw	a5,-72(s0)
	addi	a3,a5,52
	addi	a4,s0,-60
	addi	a5,s0,-60
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 2 345 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L84
	.loc 2 348 22
	lw	a5,-96(s0)
	lw	a2,0(a5)
	.loc 2 348 89
	lw	a5,-96(s0)
	lw	a5,0(a5)
	.loc 2 348 87
	lw	a4,0(s0)
	sub	a5,a4,a5
	.loc 2 348 22
	addi	a3,s0,-64
	addi	a1,s0,-44
	mv	a4,a2
	lw	a2,-76(s0)
	lw	a0,-72(s0)
	call	mbedtls_ecp_tls_write_point
	sw	a0,-20(s0)
	.loc 2 348 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L85
	.loc 2 350 5
	lw	a5,-96(s0)
	lw	a4,0(a5)
	.loc 2 350 8
	lw	a5,-64(s0)
	add	a4,a4,a5
	lw	a5,-96(s0)
	sw	a4,0(a5)
	.loc 2 352 11
	addi	a5,s0,-60
	mv	a0,a5
	call	mbedtls_mpi_size
	mv	a5,a0
	.loc 2 352 9 discriminator 1
	sw	a5,-64(s0)
	.loc 2 353 15
	lw	a5,-96(s0)
	lw	a5,0(a5)
	.loc 2 353 8
	lw	a4,0(s0)
	bltu	a4,a5,.L76
	.loc 2 353 37 discriminator 1
	lw	a5,-96(s0)
	lw	a5,0(a5)
	.loc 2 353 35 discriminator 1
	lw	a4,0(s0)
	sub	a5,a4,a5
	.loc 2 353 21 discriminator 1
	mv	a4,a5
	.loc 2 353 45 discriminator 1
	lw	a5,-64(s0)
	addi	a5,a5,1
	.loc 2 353 18 discriminator 1
	bltu	a4,a5,.L76
	.loc 2 353 58 discriminator 2
	lw	a4,-64(s0)
	.loc 2 353 51 discriminator 2
	li	a5,255
	bleu	a4,a5,.L77
.L76:
	.loc 2 354 13
	li	a5,-20480
	addi	a5,a5,256
	sw	a5,-20(s0)
	.loc 2 355 9
	j	.L70
.L77:
	.loc 2 358 16
	lw	a2,-64(s0)
	.loc 2 358 7
	lw	a5,-96(s0)
	lw	a5,0(a5)
	.loc 2 358 10
	addi	a3,a5,1
	lw	a4,-96(s0)
	sw	a3,0(a4)
	.loc 2 358 16
	andi	a4,a2,0xff
	.loc 2 358 13
	sb	a4,0(a5)
	.loc 2 359 22
	lw	a5,-96(s0)
	lw	a4,0(a5)
	lw	a3,-64(s0)
	addi	a5,s0,-60
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	.loc 2 359 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L86
	.loc 2 360 5
	lw	a5,-96(s0)
	lw	a4,0(a5)
	.loc 2 360 8
	lw	a5,-64(s0)
	add	a4,a4,a5
	lw	a5,-96(s0)
	sw	a4,0(a5)
	j	.L70
.L80:
	.loc 2 340 111
	nop
	j	.L70
.L81:
	.loc 2 342 79
	nop
	j	.L70
.L82:
	.loc 2 343 61
	nop
	j	.L70
.L83:
	.loc 2 344 62
	nop
	j	.L70
.L84:
	.loc 2 345 67
	nop
	j	.L70
.L85:
	.loc 2 348 102
	nop
	j	.L70
.L86:
	.loc 2 359 68
	nop
.L70:
	.loc 2 363 5
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 364 5
	addi	a5,s0,-52
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 365 5
	addi	a5,s0,-60
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 367 12
	lw	a5,-20(s0)
.L79:
	.loc 2 368 1
	mv	a0,a5
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	ecjpake_zkp_write, .-ecjpake_zkp_write
	.section	.text.ecjpake_kkp_read,"ax",@progbits
	.align	1
	.type	ecjpake_kkp_read, @function
ecjpake_kkp_read:
.LFB24:
	.loc 2 382 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	sw	a7,-64(s0)
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 2 383 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 385 15
	lw	a5,-60(s0)
	lw	a5,0(a5)
	.loc 2 385 8
	lw	a4,-64(s0)
	bgeu	a4,a5,.L88
	.loc 2 386 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L89
.L88:
	.loc 2 395 76
	lw	a5,-60(s0)
	lw	a5,0(a5)
	.loc 2 395 74
	lw	a4,-64(s0)
	sub	a5,a4,a5
	.loc 2 395 22
	mv	a3,a5
	lw	a2,-60(s0)
	lw	a1,-52(s0)
	lw	a0,-40(s0)
	call	mbedtls_ecp_tls_read_point
	sw	a0,-20(s0)
	.loc 2 395 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L93
	.loc 2 396 9
	lw	a0,-52(s0)
	call	mbedtls_ecp_is_zero
	mv	a5,a0
	.loc 2 396 8 discriminator 1
	beq	a5,zero,.L92
	.loc 2 397 13
	li	a5,-20480
	addi	a5,a5,896
	sw	a5,-20(s0)
	.loc 2 398 9
	j	.L91
.L92:
	.loc 2 401 22
	lbu	a0,-33(s0)
	lw	a7,-64(s0)
	lw	a6,-60(s0)
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	call	ecjpake_zkp_read
	sw	a0,-20(s0)
	.loc 2 403 1
	j	.L91
.L93:
	.loc 2 395 89
	nop
.L91:
	.loc 2 404 12
	lw	a5,-20(s0)
.L89:
	.loc 2 405 1
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
.LFE24:
	.size	ecjpake_kkp_read, .-ecjpake_kkp_read
	.section	.text.ecjpake_kkp_write,"ax",@progbits
	.align	1
	.type	ecjpake_kkp_write, @function
ecjpake_kkp_write:
.LFB25:
	.loc 2 422 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	sw	a7,-64(s0)
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 2 423 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 426 15
	lw	a5,-64(s0)
	lw	a5,0(a5)
	.loc 2 426 8
	lw	a4,0(s0)
	bgeu	a4,a5,.L95
	.loc 2 427 16
	li	a5,-20480
	addi	a5,a5,256
	j	.L100
.L95:
	.loc 2 431 22
	lw	a5,8(s0)
	lw	a4,4(s0)
	lw	a3,-56(s0)
	lw	a2,-52(s0)
	lw	a1,-48(s0)
	lw	a0,-40(s0)
	call	mbedtls_ecp_gen_keypair_base
	sw	a0,-20(s0)
	.loc 2 431 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L101
	.loc 2 433 22
	lw	a5,-64(s0)
	lw	a2,0(a5)
	.loc 2 433 88
	lw	a5,-64(s0)
	lw	a5,0(a5)
	.loc 2 433 86
	lw	a4,0(s0)
	sub	a5,a4,a5
	.loc 2 433 22
	addi	a3,s0,-24
	mv	a4,a2
	lw	a2,-44(s0)
	lw	a1,-56(s0)
	lw	a0,-40(s0)
	call	mbedtls_ecp_tls_write_point
	sw	a0,-20(s0)
	.loc 2 433 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L102
	.loc 2 435 5
	lw	a5,-64(s0)
	lw	a4,0(a5)
	.loc 2 435 8
	lw	a5,-24(s0)
	add	a4,a4,a5
	lw	a5,-64(s0)
	sw	a4,0(a5)
	.loc 2 438 22
	lbu	a0,-33(s0)
	lw	a5,8(s0)
	sw	a5,8(sp)
	lw	a5,4(s0)
	sw	a5,4(sp)
	lw	a5,0(s0)
	sw	a5,0(sp)
	lw	a7,-64(s0)
	lw	a6,-60(s0)
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	call	ecjpake_zkp_write
	sw	a0,-20(s0)
	.loc 2 441 1
	j	.L98
.L101:
	.loc 2 431 109
	nop
	j	.L98
.L102:
	.loc 2 433 101
	nop
.L98:
	.loc 2 442 12
	lw	a5,-20(s0)
.L100:
	.loc 2 443 1
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
.LFE25:
	.size	ecjpake_kkp_write, .-ecjpake_kkp_write
	.section	.text.ecjpake_kkpp_read,"ax",@progbits
	.align	1
	.type	ecjpake_kkpp_read, @function
ecjpake_kkpp_read:
.LFB26:
	.loc 2 458 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	sw	a7,-64(s0)
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 2 459 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 460 26
	lw	a5,-64(s0)
	sw	a5,-28(s0)
	.loc 2 461 26
	lw	a4,-64(s0)
	lw	a5,0(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 468 22
	addi	a5,s0,-28
	lbu	a0,-33(s0)
	lw	a7,-24(s0)
	mv	a6,a5
	lw	a5,-60(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	call	ecjpake_kkp_read
	sw	a0,-20(s0)
	.loc 2 468 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L108
	.loc 2 469 22
	addi	a5,s0,-28
	lbu	a0,-33(s0)
	lw	a7,-24(s0)
	mv	a6,a5
	lw	a5,-60(s0)
	lw	a4,-56(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	call	ecjpake_kkp_read
	sw	a0,-20(s0)
	.loc 2 469 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L109
	.loc 2 471 11
	lw	a5,-28(s0)
	.loc 2 471 8
	lw	a4,-24(s0)
	beq	a4,a5,.L110
	.loc 2 472 13
	li	a5,-20480
	addi	a5,a5,128
	sw	a5,-20(s0)
	j	.L105
.L108:
	.loc 2 468 85
	nop
	j	.L105
.L109:
	.loc 2 469 85
	nop
	j	.L105
.L110:
	.loc 2 475 1
	nop
.L105:
	.loc 2 476 12
	lw	a5,-20(s0)
	.loc 2 477 1
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
.LFE26:
	.size	ecjpake_kkpp_read, .-ecjpake_kkpp_read
	.section	.text.ecjpake_kkpp_write,"ax",@progbits
	.align	1
	.type	ecjpake_kkpp_write, @function
ecjpake_kkpp_write:
.LFB27:
	.loc 2 497 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	sw	a7,-64(s0)
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 2 498 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 499 20
	lw	a5,4(s0)
	sw	a5,-28(s0)
	.loc 2 500 26
	lw	a4,4(s0)
	lw	a5,8(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 502 22
	addi	a4,s0,-28
	lbu	a0,-33(s0)
	lw	a5,20(s0)
	sw	a5,8(sp)
	lw	a5,16(s0)
	sw	a5,4(sp)
	lw	a5,-24(s0)
	sw	a5,0(sp)
	mv	a7,a4
	lw	a6,0(s0)
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	call	ecjpake_kkp_write
	sw	a0,-20(s0)
	.loc 2 502 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L116
	.loc 2 504 22
	addi	a4,s0,-28
	lbu	a0,-33(s0)
	lw	a5,20(s0)
	sw	a5,8(sp)
	lw	a5,16(s0)
	sw	a5,4(sp)
	lw	a5,-24(s0)
	sw	a5,0(sp)
	mv	a7,a4
	lw	a6,0(s0)
	lw	a5,-64(s0)
	lw	a4,-60(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	call	ecjpake_kkp_write
	sw	a0,-20(s0)
	.loc 2 504 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L117
	.loc 2 507 25
	lw	a4,-28(s0)
	lw	a5,4(s0)
	sub	a5,a4,a5
	.loc 2 507 13
	mv	a4,a5
	.loc 2 507 11
	lw	a5,12(s0)
	sw	a4,0(a5)
	j	.L113
.L116:
	.loc 2 502 105
	nop
	j	.L113
.L117:
	.loc 2 504 105
	nop
.L113:
	.loc 2 510 12
	lw	a5,-20(s0)
	.loc 2 511 1
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
.LFE27:
	.size	ecjpake_kkpp_write, .-ecjpake_kkpp_write
	.section	.text.mbedtls_ecjpake_read_round_one,"ax",@progbits
	.align	1
	.globl	mbedtls_ecjpake_read_round_one
	.type	mbedtls_ecjpake_read_round_one, @function
mbedtls_ecjpake_read_round_one:
.LFB28:
	.loc 2 519 1
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
	.loc 2 520 33
	lw	a5,-20(s0)
	lbu	a0,0(a5)
	.loc 2 520 44
	lw	a5,-20(s0)
	addi	a1,a5,4
	.loc 2 520 58
	lw	a5,-20(s0)
	lw	a2,104(a5)
	.loc 2 521 30
	lw	a5,-20(s0)
	addi	a3,a5,32
	.loc 2 520 12
	lw	a5,-20(s0)
	addi	t1,a5,156
	lw	a5,-20(s0)
	addi	t3,a5,180
	.loc 2 522 71
	lw	a5,-20(s0)
	lbu	a5,100(a5)
	mv	a4,a5
	.loc 2 522 66
	li	a5,1
	sub	a5,a5,a4
	.loc 2 522 63
	lui	a4,%hi(ecjpake_id)
	addi	a4,a4,%lo(ecjpake_id)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 520 12
	lw	a5,-28(s0)
	sw	a5,0(sp)
	lw	a7,-24(s0)
	mv	a6,a4
	mv	a5,t3
	mv	a4,t1
	call	ecjpake_kkpp_read
	mv	a5,a0
	.loc 2 524 1
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
.LFE28:
	.size	mbedtls_ecjpake_read_round_one, .-mbedtls_ecjpake_read_round_one
	.section	.text.mbedtls_ecjpake_write_round_one,"ax",@progbits
	.align	1
	.globl	mbedtls_ecjpake_write_round_one
	.type	mbedtls_ecjpake_write_round_one, @function
mbedtls_ecjpake_write_round_one:
.LFB29:
	.loc 2 533 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	.loc 2 534 34
	lw	a5,-20(s0)
	lbu	a0,0(a5)
	.loc 2 534 45
	lw	a5,-20(s0)
	addi	a1,a5,4
	.loc 2 534 59
	lw	a5,-20(s0)
	lw	a2,104(a5)
	.loc 2 535 31
	lw	a5,-20(s0)
	addi	a3,a5,32
	.loc 2 534 12
	lw	a5,-20(s0)
	addi	t1,a5,228
	lw	a5,-20(s0)
	addi	t3,a5,108
	lw	a5,-20(s0)
	addi	a6,a5,236
	lw	a5,-20(s0)
	addi	a7,a5,132
	.loc 2 537 46
	lw	a5,-20(s0)
	lbu	a5,100(a5)
	mv	t4,a5
	.loc 2 537 42
	lui	a5,%hi(ecjpake_id)
	addi	a4,a5,%lo(ecjpake_id)
	slli	a5,t4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 534 12
	lw	a4,-40(s0)
	sw	a4,20(sp)
	lw	a4,-36(s0)
	sw	a4,16(sp)
	lw	a4,-32(s0)
	sw	a4,12(sp)
	lw	a4,-28(s0)
	sw	a4,8(sp)
	lw	a4,-24(s0)
	sw	a4,4(sp)
	sw	a5,0(sp)
	mv	a5,t3
	mv	a4,t1
	call	ecjpake_kkpp_write
	mv	a5,a0
	.loc 2 538 1
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
.LFE29:
	.size	mbedtls_ecjpake_write_round_one, .-mbedtls_ecjpake_write_round_one
	.section	.text.ecjpake_ecp_add3,"ax",@progbits
	.align	1
	.type	ecjpake_ecp_add3, @function
ecjpake_ecp_add3:
.LFB30:
	.loc 2 547 1
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
	.loc 2 548 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 551 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 553 22
	addi	a5,s0,-28
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 553 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L127
	.loc 2 554 22
	addi	a4,s0,-28
	addi	a2,s0,-28
	lw	a5,-48(s0)
	lw	a3,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_ecp_muladd
	sw	a0,-20(s0)
	.loc 2 554 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L128
	.loc 2 555 22
	addi	a4,s0,-28
	addi	a2,s0,-28
	lw	a5,-52(s0)
	lw	a3,-40(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_ecp_muladd
	sw	a0,-20(s0)
	.loc 2 557 1
	j	.L124
.L127:
	.loc 2 553 56
	nop
	j	.L124
.L128:
	.loc 2 554 75
	nop
.L124:
	.loc 2 558 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 560 12
	lw	a5,-20(s0)
	.loc 2 561 1
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
.LFE30:
	.size	ecjpake_ecp_add3, .-ecjpake_ecp_add3
	.section	.text.mbedtls_ecjpake_read_round_two,"ax",@progbits
	.align	1
	.globl	mbedtls_ecjpake_read_round_two
	.type	mbedtls_ecjpake_read_round_two, @function
mbedtls_ecjpake_read_round_two:
.LFB31:
	.loc 2 569 1
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sw	ra,172(sp)
	sw	s0,168(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,176
	.cfi_def_cfa 8, 0
	sw	a0,-164(s0)
	sw	a1,-168(s0)
	sw	a2,-172(s0)
	.loc 2 570 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 571 26
	lw	a5,-168(s0)
	sw	a5,-28(s0)
	.loc 2 572 26
	lw	a4,-168(s0)
	lw	a5,-172(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 576 5
	addi	a5,s0,-124
	mv	a0,a5
	call	mbedtls_ecp_group_init
	.loc 2 577 5
	addi	a5,s0,-148
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 585 22
	lw	a5,-164(s0)
	addi	a0,a5,4
	.loc 2 585 54
	lw	a5,-164(s0)
	addi	a2,a5,108
	.loc 2 585 65
	lw	a5,-164(s0)
	addi	a3,a5,132
	.loc 2 585 76
	lw	a5,-164(s0)
	addi	a4,a5,156
	.loc 2 585 22
	addi	a5,s0,-148
	mv	a1,a5
	call	ecjpake_ecp_add3
	sw	a0,-20(s0)
	.loc 2 585 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L136
	.loc 2 594 12
	lw	a5,-164(s0)
	lbu	a5,100(a5)
	.loc 2 594 8
	bne	a5,zero,.L132
	.loc 2 595 26
	addi	a4,s0,-28
	addi	a5,s0,-124
	lw	a2,-172(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecp_tls_read_group
	sw	a0,-20(s0)
	.loc 2 595 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L137
	.loc 2 596 16
	lbu	a4,-124(s0)
	.loc 2 596 31
	lw	a5,-164(s0)
	lbu	a5,4(a5)
	.loc 2 596 12
	beq	a4,a5,.L132
	.loc 2 597 17
	li	a5,-20480
	addi	a5,a5,384
	sw	a5,-20(s0)
	.loc 2 598 13
	j	.L131
.L132:
	.loc 2 602 42
	lw	a5,-164(s0)
	lbu	a0,0(a5)
	.loc 2 602 53
	lw	a5,-164(s0)
	addi	a1,a5,4
	.loc 2 602 67
	lw	a5,-164(s0)
	lw	a2,104(a5)
	.loc 2 602 22
	lw	a5,-164(s0)
	addi	t1,a5,204
	.loc 2 602 116
	lw	a5,-164(s0)
	lbu	a5,100(a5)
	mv	a4,a5
	.loc 2 602 111
	li	a5,1
	sub	a5,a5,a4
	.loc 2 602 108
	lui	a4,%hi(ecjpake_id)
	addi	a4,a4,%lo(ecjpake_id)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 602 22
	addi	a4,s0,-28
	addi	a3,s0,-148
	lw	a7,-24(s0)
	mv	a6,a4
	mv	a4,t1
	call	ecjpake_kkp_read
	sw	a0,-20(s0)
	.loc 2 602 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L138
	.loc 2 606 11
	lw	a5,-28(s0)
	.loc 2 606 8
	lw	a4,-24(s0)
	beq	a4,a5,.L139
	.loc 2 607 13
	li	a5,-20480
	addi	a5,a5,128
	sw	a5,-20(s0)
	.loc 2 608 9
	j	.L131
.L136:
	.loc 2 585 95
	nop
	j	.L131
.L137:
	.loc 2 595 76
	nop
	j	.L131
.L138:
	.loc 2 602 143
	nop
	j	.L131
.L139:
	.loc 2 611 1
	nop
.L131:
	.loc 2 612 5
	addi	a5,s0,-124
	mv	a0,a5
	call	mbedtls_ecp_group_free
	.loc 2 613 5
	addi	a5,s0,-148
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 615 12
	lw	a5,-20(s0)
	.loc 2 616 1
	mv	a0,a5
	lw	ra,172(sp)
	.cfi_restore 1
	lw	s0,168(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE31:
	.size	mbedtls_ecjpake_read_round_two, .-mbedtls_ecjpake_read_round_two
	.section	.text.ecjpake_mul_secret,"ax",@progbits
	.align	1
	.type	ecjpake_mul_secret, @function
ecjpake_mul_secret:
.LFB32:
	.loc 2 627 1
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
	.loc 2 628 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 631 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 634 22
	addi	a5,s0,-28
	lw	a3,-60(s0)
	lw	a2,-56(s0)
	li	a1,16
	mv	a0,a5
	call	mbedtls_mpi_fill_random
	sw	a0,-20(s0)
	.loc 2 634 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L147
	.loc 2 635 22
	addi	a4,s0,-28
	addi	a5,s0,-28
	lw	a2,-52(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 2 635 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L148
	.loc 2 636 22
	addi	a4,s0,-28
	addi	a5,s0,-28
	lw	a2,-48(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_add_mpi
	sw	a0,-20(s0)
	.loc 2 636 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L149
	.loc 2 639 22
	addi	a5,s0,-28
	mv	a2,a5
	lw	a1,-44(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 2 639 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L150
	.loc 2 640 6
	lw	a5,-36(s0)
	lh	a5,4(a5)
	.loc 2 640 10
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-40(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	mul	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,16
	srai	a4,a4,16
	lw	a5,-36(s0)
	sh	a4,4(a5)
	.loc 2 641 22
	lw	a2,-52(s0)
	lw	a1,-36(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_mod_mpi
	sw	a0,-20(s0)
	.loc 2 643 1
	j	.L142
.L147:
	.loc 2 634 76
	nop
	j	.L142
.L148:
	.loc 2 635 61
	nop
	j	.L142
.L149:
	.loc 2 636 61
	nop
	j	.L142
.L150:
	.loc 2 639 60
	nop
.L142:
	.loc 2 644 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 646 12
	lw	a5,-20(s0)
	.loc 2 647 1
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
.LFE32:
	.size	ecjpake_mul_secret, .-ecjpake_mul_secret
	.section	.text.mbedtls_ecjpake_write_round_two,"ax",@progbits
	.align	1
	.globl	mbedtls_ecjpake_write_round_two
	.type	mbedtls_ecjpake_write_round_two, @function
mbedtls_ecjpake_write_round_two:
.LFB33:
	.loc 2 656 1
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	ra,140(sp)
	sw	s0,136(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	sw	a0,-100(s0)
	sw	a1,-104(s0)
	sw	a2,-108(s0)
	sw	a3,-112(s0)
	sw	a4,-116(s0)
	sw	a5,-120(s0)
	.loc 2 657 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 661 20
	lw	a5,-104(s0)
	sw	a5,-84(s0)
	.loc 2 662 26
	lw	a4,-104(s0)
	lw	a5,-108(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 665 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 666 5
	addi	a5,s0,-72
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 667 5
	addi	a5,s0,-80
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 676 22
	lw	a5,-100(s0)
	addi	a0,a5,4
	.loc 2 676 54
	lw	a5,-100(s0)
	addi	a2,a5,156
	.loc 2 676 65
	lw	a5,-100(s0)
	addi	a3,a5,180
	.loc 2 676 76
	lw	a5,-100(s0)
	addi	a4,a5,108
	.loc 2 676 22
	addi	a5,s0,-48
	mv	a1,a5
	call	ecjpake_ecp_add3
	sw	a0,-20(s0)
	.loc 2 676 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L163
	.loc 2 678 49
	lw	a5,-100(s0)
	addi	a2,a5,236
	.loc 2 678 60
	lw	a5,-100(s0)
	addi	a3,a5,244
	.loc 2 678 69
	lw	a5,-100(s0)
	addi	a4,a5,56
	.loc 2 678 22
	addi	a0,s0,-80
	lw	a6,-120(s0)
	lw	a5,-116(s0)
	li	a1,1
	call	ecjpake_mul_secret
	sw	a0,-20(s0)
	.loc 2 678 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L164
	.loc 2 680 22
	lw	a5,-100(s0)
	addi	a0,a5,4
	addi	a3,s0,-48
	addi	a2,s0,-80
	addi	a1,s0,-72
	lw	a5,-120(s0)
	lw	a4,-116(s0)
	call	mbedtls_ecp_mul
	sw	a0,-20(s0)
	.loc 2 680 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L165
	.loc 2 690 12
	lw	a5,-100(s0)
	lbu	a4,100(a5)
	.loc 2 690 8
	li	a5,1
	bne	a4,a5,.L156
	.loc 2 691 17
	lw	a5,-84(s0)
	.loc 2 691 12
	lw	a4,-24(s0)
	bgeu	a4,a5,.L157
	.loc 2 692 17
	li	a5,-20480
	addi	a5,a5,256
	sw	a5,-20(s0)
	.loc 2 693 13
	j	.L153
.L157:
	.loc 2 695 54
	lw	a5,-100(s0)
	addi	a0,a5,4
	.loc 2 695 26
	lw	a2,-84(s0)
	.loc 2 695 91
	lw	a5,-84(s0)
	lw	a4,-24(s0)
	sub	a5,a4,a5
	.loc 2 695 26
	mv	a4,a5
	addi	a5,s0,-88
	mv	a3,a4
	mv	a1,a5
	call	mbedtls_ecp_tls_write_group
	sw	a0,-20(s0)
	.loc 2 695 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L166
	.loc 2 697 11
	lw	a4,-84(s0)
	lw	a5,-88(s0)
	add	a5,a4,a5
	sw	a5,-84(s0)
.L156:
	.loc 2 700 13
	lw	a5,-84(s0)
	.loc 2 700 8
	lw	a4,-24(s0)
	bgeu	a4,a5,.L159
	.loc 2 701 13
	li	a5,-20480
	addi	a5,a5,256
	sw	a5,-20(s0)
	.loc 2 702 9
	j	.L153
.L159:
	.loc 2 704 50
	lw	a5,-100(s0)
	addi	a0,a5,4
	.loc 2 704 22
	lw	a5,-100(s0)
	lw	a2,104(a5)
	lw	a6,-84(s0)
	.loc 2 704 111
	lw	a5,-84(s0)
	lw	a4,-24(s0)
	sub	a5,a4,a5
	.loc 2 704 22
	addi	a3,s0,-88
	addi	a1,s0,-72
	mv	a4,a6
	call	mbedtls_ecp_tls_write_point
	sw	a0,-20(s0)
	.loc 2 704 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L167
	.loc 2 706 7
	lw	a4,-84(s0)
	lw	a5,-88(s0)
	add	a5,a4,a5
	sw	a5,-84(s0)
	.loc 2 708 43
	lw	a5,-100(s0)
	lbu	a0,0(a5)
	.loc 2 708 54
	lw	a5,-100(s0)
	addi	a1,a5,4
	.loc 2 708 68
	lw	a5,-100(s0)
	lw	a2,104(a5)
	.loc 2 708 113
	lw	a5,-100(s0)
	lbu	a5,100(a5)
	mv	a3,a5
	.loc 2 708 109
	lui	a5,%hi(ecjpake_id)
	addi	a4,a5,%lo(ecjpake_id)
	slli	a5,a3,2
	add	a5,a4,a5
	lw	a6,0(a5)
	.loc 2 708 22
	addi	a7,s0,-84
	addi	t1,s0,-72
	addi	a4,s0,-80
	addi	a3,s0,-48
	lw	a5,-120(s0)
	sw	a5,8(sp)
	lw	a5,-116(s0)
	sw	a5,4(sp)
	lw	a5,-24(s0)
	sw	a5,0(sp)
	mv	a5,t1
	call	ecjpake_zkp_write
	sw	a0,-20(s0)
	.loc 2 708 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L168
	.loc 2 713 25
	lw	a4,-84(s0)
	lw	a5,-104(s0)
	sub	a5,a4,a5
	.loc 2 713 13
	mv	a4,a5
	.loc 2 713 11
	lw	a5,-112(s0)
	sw	a4,0(a5)
	j	.L153
.L163:
	.loc 2 676 95
	nop
	j	.L153
.L164:
	.loc 2 678 104
	nop
	j	.L153
.L165:
	.loc 2 680 85
	nop
	j	.L153
.L166:
	.loc 2 695 105
	nop
	j	.L153
.L167:
	.loc 2 704 125
	nop
	j	.L153
.L168:
	.loc 2 708 154
	nop
.L153:
	.loc 2 716 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 717 5
	addi	a5,s0,-72
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 718 5
	addi	a5,s0,-80
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 720 12
	lw	a5,-20(s0)
	.loc 2 721 1
	mv	a0,a5
	lw	ra,140(sp)
	.cfi_restore 1
	lw	s0,136(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	mbedtls_ecjpake_write_round_two, .-mbedtls_ecjpake_write_round_two
	.section	.text.mbedtls_ecjpake_derive_k,"ax",@progbits
	.align	1
	.type	mbedtls_ecjpake_derive_k, @function
mbedtls_ecjpake_derive_k:
.LFB34:
	.loc 2 730 1
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
	.loc 2 731 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 734 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 735 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 737 22
	addi	a5,s0,-36
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 737 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L175
	.loc 2 744 55
	lw	a5,-52(s0)
	addi	a2,a5,236
	.loc 2 744 66
	lw	a5,-52(s0)
	addi	a3,a5,244
	.loc 2 744 75
	lw	a5,-52(s0)
	addi	a4,a5,56
	.loc 2 744 22
	addi	a0,s0,-28
	lw	a6,-64(s0)
	lw	a5,-60(s0)
	li	a1,-1
	call	ecjpake_mul_secret
	sw	a0,-20(s0)
	.loc 2 744 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L176
	.loc 2 746 22
	lw	a5,-52(s0)
	addi	a0,a5,4
	.loc 2 746 61
	lw	a5,-52(s0)
	addi	a3,a5,204
	.loc 2 746 81
	lw	a5,-52(s0)
	addi	a5,a5,180
	.loc 2 746 22
	addi	a4,s0,-28
	addi	a2,s0,-36
	lw	a1,-56(s0)
	call	mbedtls_ecp_muladd
	sw	a0,-20(s0)
	.loc 2 746 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L177
	.loc 2 749 22
	lw	a5,-52(s0)
	addi	a0,a5,4
	.loc 2 749 52
	lw	a5,-52(s0)
	addi	a2,a5,236
	.loc 2 749 22
	lw	a5,-64(s0)
	lw	a4,-60(s0)
	lw	a3,-56(s0)
	lw	a1,-56(s0)
	call	mbedtls_ecp_mul
	sw	a0,-20(s0)
	.loc 2 752 1
	j	.L171
.L175:
	.loc 2 737 56
	nop
	j	.L171
.L176:
	.loc 2 744 110
	nop
	j	.L171
.L177:
	.loc 2 746 100
	nop
.L171:
	.loc 2 753 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 754 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 756 12
	lw	a5,-20(s0)
	.loc 2 757 1
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
	.size	mbedtls_ecjpake_derive_k, .-mbedtls_ecjpake_derive_k
	.section	.text.mbedtls_ecjpake_derive_secret,"ax",@progbits
	.align	1
	.globl	mbedtls_ecjpake_derive_secret
	.type	mbedtls_ecjpake_derive_secret, @function
mbedtls_ecjpake_derive_secret:
.LFB35:
	.loc 2 763 1
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	ra,156(sp)
	sw	s0,152(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sw	a0,-132(s0)
	sw	a1,-136(s0)
	sw	a2,-140(s0)
	sw	a3,-144(s0)
	sw	a4,-148(s0)
	sw	a5,-152(s0)
	.loc 2 764 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 769 13
	lw	a5,-132(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	mbedtls_md_get_size_from_type
	mv	a5,a0
	.loc 2 769 13 is_stmt 0 discriminator 1
	mv	a4,a5
	.loc 2 769 11 is_stmt 1 discriminator 1
	lw	a5,-144(s0)
	sw	a4,0(a5)
	.loc 2 770 15
	lw	a5,-144(s0)
	lw	a5,0(a5)
	.loc 2 770 8
	lw	a4,-140(s0)
	bgeu	a4,a5,.L179
	.loc 2 771 16
	li	a5,-20480
	addi	a5,a5,256
	j	.L184
.L179:
	.loc 2 774 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 776 11
	addi	a5,s0,-48
	lw	a3,-152(s0)
	lw	a2,-148(s0)
	mv	a1,a5
	lw	a0,-132(s0)
	call	mbedtls_ecjpake_derive_k
	sw	a0,-20(s0)
	.loc 2 777 8
	lw	a5,-20(s0)
	bne	a5,zero,.L185
	.loc 2 782 24
	lw	a5,-132(s0)
	lw	a5,64(a5)
	.loc 2 782 31
	addi	a5,a5,7
	.loc 2 782 13
	srli	a5,a5,3
	sw	a5,-24(s0)
	.loc 2 783 22
	addi	a4,s0,-116
	addi	a5,s0,-48
	lw	a2,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	.loc 2 783 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L186
	.loc 2 784 22
	lw	a5,-132(s0)
	lbu	a5,0(a5)
	addi	a4,s0,-116
	lw	a3,-136(s0)
	lw	a2,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecjpake_compute_hash
	sw	a0,-20(s0)
	.loc 2 787 1
	j	.L182
.L185:
	.loc 2 778 9
	nop
	j	.L182
.L186:
	.loc 2 783 74
	nop
.L182:
	.loc 2 788 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 790 12
	lw	a5,-20(s0)
.L184:
	.loc 2 791 1
	mv	a0,a5
	lw	ra,156(sp)
	.cfi_restore 1
	lw	s0,152(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE35:
	.size	mbedtls_ecjpake_derive_secret, .-mbedtls_ecjpake_derive_secret
	.section	.text.mbedtls_ecjpake_write_shared_key,"ax",@progbits
	.align	1
	.globl	mbedtls_ecjpake_write_shared_key
	.type	mbedtls_ecjpake_write_shared_key, @function
mbedtls_ecjpake_write_shared_key:
.LFB36:
	.loc 2 797 1
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
	.loc 2 798 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 801 5
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 803 11
	addi	a5,s0,-44
	lw	a3,-72(s0)
	lw	a2,-68(s0)
	mv	a1,a5
	lw	a0,-52(s0)
	call	mbedtls_ecjpake_derive_k
	sw	a0,-20(s0)
	.loc 2 804 8
	lw	a5,-20(s0)
	bne	a5,zero,.L191
	.loc 2 808 42
	lw	a5,-52(s0)
	addi	a0,a5,4
	.loc 2 808 11
	lw	a5,-52(s0)
	lw	a2,104(a5)
	addi	a1,s0,-44
	lw	a5,-60(s0)
	lw	a4,-56(s0)
	lw	a3,-64(s0)
	call	mbedtls_ecp_point_write_binary
	sw	a0,-20(s0)
	.loc 2 814 1
	j	.L189
.L191:
	.loc 2 805 9
	nop
.L189:
	.loc 2 815 5
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 817 12
	lw	a5,-20(s0)
	.loc 2 818 1
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
.LFE36:
	.size	mbedtls_ecjpake_write_shared_key, .-mbedtls_ecjpake_write_shared_key
	.section	.rodata.ecjpake_test_password,"a"
	.align	2
	.type	ecjpake_test_password, @object
	.size	ecjpake_test_password, 15
ecjpake_test_password:
	.ascii	"threadjpaketest"
	.section	.rodata.ecjpake_test_x1,"a"
	.align	2
	.type	ecjpake_test_x1, @object
	.size	ecjpake_test_x1, 32
ecjpake_test_x1:
	.base64	"AQIDBAUGBwgJCgsMDQ4PEBESExQVFhcYGRobHB0eHyE="
	.section	.rodata.ecjpake_test_x2,"a"
	.align	2
	.type	ecjpake_test_x2, @object
	.size	ecjpake_test_x2, 32
ecjpake_test_x2:
	.ascii	"abcdefghijklmnopqrstuvwxyz{|}~\177\201"
	.section	.rodata.ecjpake_test_x3,"a"
	.align	2
	.type	ecjpake_test_x3, @object
	.size	ecjpake_test_x3, 32
ecjpake_test_x3:
	.ascii	"abcdefghijklmnopqrstuvwxyz{|}~\177\201"
	.section	.rodata.ecjpake_test_x4,"a"
	.align	2
	.type	ecjpake_test_x4, @object
	.size	ecjpake_test_x4, 32
ecjpake_test_x4:
	.base64	"wcLDxMXGx8jJysvMzc7P0NHS09TV1tfY2drb3N3e3+E="
	.section	.rodata.ecjpake_test_cli_one,"a"
	.align	2
	.type	ecjpake_test_cli_one, @object
	.size	ecjpake_test_cli_one, 330
ecjpake_test_cli_one:
	.base64	"QQSszwEG74WPotkZMxNGgFp4tYu60LhE5ceJKHkUYYfdJmatp4G7fxETciUaiRBiH2NN8SisSOOB/W75Bgcx9pSkQQQd0L1dRWbJvtnOfecBteguCOhLcwRmAYq5A8eeuYIXIjbAwXKK5L9zYQ003kQkbvPZwFoiNvtmplg9dEkwi6vOIHL+FmYpkukjXCUALxGxUIe4JzjgPJRb96KZXdoemDRYQQR+puOkSHA3qeDb15JisswnPneZMPwYQJrFNhxf5mnXAuFHeQrrTOf9ZXWrD2x/0cM1k5qoY7o37JG34yuwE7srQQSklVjTLtHr/BgWr0/wm1X8tMpHsqAt"
	.base64	"HnyvEXnqP+E5WyK4YZZAFvq69yyXVpXZPU3w5Rl/6fBAY07Vl2STd4e+ILxN7rv5uNYKM18EbKOqlB5Fhkx8re+c91s9iwEORD7w"
	.section	.rodata.ecjpake_test_srv_one,"a"
	.align	2
	.type	ecjpake_test_srv_one, @object
	.size	ecjpake_test_srv_one, 330
ecjpake_test_srv_one:
	.base64	"QQR+puOkSHA3qeDb15JisswnPneZMPwYQJrFNhxf5mnXAuFHeQrrTOf9ZXWrD2x/0cM1k5qoY7o37JG34yuwE7srQQQJ+Fs9IOvXiFzkZMCNBW1kKP5N2Sh6o2XxMfQ2D/OG2EaJi8S0FYPCpRl/ZdeHQnRsEqXsCk/+LycKdQodj7UWIJNNdOtD5U30JP2WMGwBF78TGvq/kKnTPRGY2QUZNzUUQQQZCgdwD/pL5q4dee4PBq61RM1a3aq+33D4YjMhMyxU81Xw+/7Hg+01nl0L9zd6D8Tqes5HPJwRK0HM1BrFalYSQQQ2ChzqM/zmQRVkWOCk6sIZ6Wgx5q68"
	.base64	"iLPzdS+ToCgdG/H7EGBR25aUqNboYqXvEySj2eJ4lPHuT3xZGZllqN1KIJGEfS0i3z7lX6oqP7M/0tHgVaB6fGHs+42A7ADCyesS"
	.section	.rodata.ecjpake_test_srv_two,"a"
	.align	2
	.type	ecjpake_test_srv_two, @object
	.size	ecjpake_test_srv_two, 168
ecjpake_test_srv_two:
	.base64	"AwAXQQQPsisdXREj4O+f652KLlkKH0187SwrBlhujyoW1Osv2kMoogsH2P1mdlTKGMVOMqMzoIRUUekm7ogE/XrwqqemQQRVFuo+VKDV2LLOeGs404M3ACml2+RFnJ3WAbQIokrmRlyKyQW56wO102kcE574PxzUIA9snNTsOSIYpZ7SQ9PIIP9ySppwuIy4byC0NMaGWqHNeQbdfJvONSX1CCdvJoNs"
	.section	.rodata.ecjpake_test_cli_two,"a"
	.align	2
	.type	ecjpake_test_cli_two, @object
	.size	ecjpake_test_cli_two, 165
ecjpake_test_cli_two:
	.base64	"QQRp1U7oXpDOPxJGdC3lB+k56B0dwcXLmItYwxDJ/dlSTZNyC0VUHIPuiEEZHafO2G4zEtQ2I8HWPnSYmrpK/9HuQQQHfowx4g5r7bdgwTWT5p8VvoXCfWjNCcy4xBg2CJF8XD1An6w5/v7oL3KS028NI+BVkT9FpSuF3YogUunhKbtNIA8BHxlINTWm6JpYDJsAA7ryFGLs6RqCzDjb3K5g2cVM"
	.section	.rodata.ecjpake_test_shared_key,"a"
	.align	2
	.type	ecjpake_test_shared_key, @object
	.size	ecjpake_test_shared_key, 65
ecjpake_test_shared_key:
	.base64	"BAGr6fLHOpkUyx+A+53bfgASqJwvOSd5+WRAFHXqwTEoQ4/hEkHWweVfe4CIlMnAJ6M0QfXLof5sx+YSF8PeJ7Q="
	.section	.rodata.ecjpake_test_pms,"a"
	.align	2
	.type	ecjpake_test_pms, @object
	.size	ecjpake_test_pms, 32
ecjpake_test_pms:
	.base64	"89R/WZhE25KlabvnmB452TH9dDvyLpj5tDj3GdPE81E="
	.section	.text.self_test_rng,"ax",@progbits
	.align	1
	.type	self_test_rng, @function
self_test_rng:
.LFB40:
	.loc 2 988 1
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
.LBB10:
	.loc 2 993 17
	sw	zero,-20(s0)
	.loc 2 993 5
	j	.L193
.L194:
	.loc 2 994 23
	lui	a5,%hi(state.1)
	lw	a4,%lo(state.1)(a5)
	li	a5,1662976
	addi	a5,a5,1549
	mul	a4,a4,a5
	.loc 2 994 34
	li	a5,1013903360
	addi	a5,a5,863
	add	a4,a4,a5
	.loc 2 994 15
	lui	a5,%hi(state.1)
	sw	a4,%lo(state.1)(a5)
	.loc 2 995 18
	lui	a5,%hi(state.1)
	lw	a3,%lo(state.1)(a5)
	.loc 2 995 12
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 2 995 18
	andi	a4,a3,0xff
	.loc 2 995 16
	sb	a4,0(a5)
	.loc 2 993 34 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L193:
	.loc 2 993 26 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L194
.LBE10:
	.loc 2 998 12
	li	a5,0
	.loc 2 999 1
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
.LFE40:
	.size	self_test_rng, .-self_test_rng
	.section	.text.ecjpake_test_load,"ax",@progbits
	.align	1
	.type	ecjpake_test_load, @function
ecjpake_test_load:
.LFB41:
	.loc 2 1005 1
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
	.loc 2 1006 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1008 22
	lw	a5,-36(s0)
	addi	a5,a5,228
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 2 1008 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L202
	.loc 2 1009 22
	lw	a5,-36(s0)
	addi	a5,a5,236
	lw	a2,-52(s0)
	lw	a1,-48(s0)
	mv	a0,a5
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 2 1009 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L203
	.loc 2 1010 22
	lw	a5,-36(s0)
	addi	a0,a5,4
	lw	a5,-36(s0)
	addi	a1,a5,108
	.loc 2 1010 60
	lw	a5,-36(s0)
	addi	a2,a5,228
	.loc 2 1010 71
	lw	a5,-36(s0)
	addi	a3,a5,32
	.loc 2 1010 22
	li	a5,0
	lui	a4,%hi(self_test_rng)
	addi	a4,a4,%lo(self_test_rng)
	call	mbedtls_ecp_mul
	sw	a0,-20(s0)
	.loc 2 1010 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L204
	.loc 2 1012 22
	lw	a5,-36(s0)
	addi	a0,a5,4
	lw	a5,-36(s0)
	addi	a1,a5,132
	.loc 2 1012 60
	lw	a5,-36(s0)
	addi	a2,a5,236
	.loc 2 1012 71
	lw	a5,-36(s0)
	addi	a3,a5,32
	.loc 2 1012 22
	li	a5,0
	lui	a4,%hi(self_test_rng)
	addi	a4,a4,%lo(self_test_rng)
	call	mbedtls_ecp_mul
	sw	a0,-20(s0)
	.loc 2 1015 1
	j	.L198
.L202:
	.loc 2 1008 76
	nop
	j	.L198
.L203:
	.loc 2 1009 76
	nop
	j	.L198
.L204:
	.loc 2 1010 14
	nop
.L198:
	.loc 2 1016 12
	lw	a5,-20(s0)
	.loc 2 1017 1
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
.LFE41:
	.size	ecjpake_test_load, .-ecjpake_test_load
	.section	.text.ecjpake_lgc,"ax",@progbits
	.align	1
	.type	ecjpake_lgc, @function
ecjpake_lgc:
.LFB42:
	.loc 2 1024 1
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
	.loc 2 1028 11
	j	.L206
.L208:
.LBB11:
	.loc 2 1029 16
	lw	a5,-44(s0)
	li	a4,4
	bleu	a5,a4,.L207
	li	a5,4
.L207:
	sw	a5,-20(s0)
	.loc 2 1030 21
	lui	a5,%hi(x.0)
	lw	a4,%lo(x.0)(a5)
	li	a5,1662976
	addi	a5,a5,1549
	mul	a4,a4,a5
	.loc 2 1030 25
	li	a5,1013903360
	addi	a5,a5,863
	add	a4,a4,a5
	.loc 2 1030 11
	lui	a5,%hi(x.0)
	sw	a4,%lo(x.0)(a5)
	.loc 2 1031 9
	lw	a2,-20(s0)
	lui	a5,%hi(x.0)
	addi	a1,a5,%lo(x.0)
	lw	a0,-40(s0)
	call	memcpy
	.loc 2 1032 13
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 2 1033 13
	lw	a4,-44(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-44(s0)
.L206:
.LBE11:
	.loc 2 1028 16
	lw	a5,-44(s0)
	bne	a5,zero,.L208
	.loc 2 1036 12
	li	a5,0
	.loc 2 1037 1
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
.LFE42:
	.size	ecjpake_lgc, .-ecjpake_lgc
	.section	.rodata
	.align	2
.LC2:
	.string	"  ECJPAKE test #0 (setup): "
	.align	2
.LC3:
	.string	"passed\n"
	.align	2
.LC4:
	.string	"  ECJPAKE test #1 (random handshake): "
	.align	2
.LC5:
	.string	"  ECJPAKE test #2 (reference handshake): "
	.align	2
.LC6:
	.string	"failed\n"
	.align	2
.LC7:
	.string	"\n"
	.section	.text.mbedtls_ecjpake_self_test,"ax",@progbits
	.align	1
	.globl	mbedtls_ecjpake_self_test
	.type	mbedtls_ecjpake_self_test, @function
mbedtls_ecjpake_self_test:
.LFB43:
	.loc 2 1054 1
	.cfi_startproc
	addi	sp,sp,-1104
	.cfi_def_cfa_offset 1104
	sw	ra,1100(sp)
	sw	s0,1096(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,1104
	.cfi_def_cfa 8, 0
	sw	a0,-1092(s0)
	.loc 2 1055 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1061 5
	addi	a5,s0,-272
	mv	a0,a5
	call	mbedtls_ecjpake_init
	.loc 2 1062 5
	addi	a5,s0,-524
	mv	a0,a5
	call	mbedtls_ecjpake_init
	.loc 2 1064 8
	lw	a5,-1092(s0)
	beq	a5,zero,.L211
	.loc 2 1065 9
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L211:
	.loc 2 1068 14
	addi	a0,s0,-272
	li	a5,15
	lui	a4,%hi(ecjpake_test_password)
	addi	a4,a4,%lo(ecjpake_test_password)
	li	a3,3
	li	a2,9
	li	a1,0
	call	mbedtls_ecjpake_setup
	mv	a5,a0
	.loc 2 1068 13 discriminator 1
	bne	a5,zero,.L212
	.loc 2 1068 175 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1073 14
	addi	a0,s0,-524
	li	a5,15
	lui	a4,%hi(ecjpake_test_password)
	addi	a4,a4,%lo(ecjpake_test_password)
	li	a3,3
	li	a2,9
	li	a1,1
	call	mbedtls_ecjpake_setup
	mv	a5,a0
	.loc 2 1073 13 discriminator 1
	bne	a5,zero,.L215
	j	.L283
.L212:
	.loc 2 1068 191 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1068 196
	j	.L214
.L283:
	.loc 2 1073 175 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1078 8
	lw	a5,-1092(s0)
	beq	a5,zero,.L217
	j	.L284
.L215:
	.loc 2 1073 191 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1073 196
	j	.L214
.L284:
	.loc 2 1079 9
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
.L217:
	.loc 2 1082 8
	lw	a5,-1092(s0)
	beq	a5,zero,.L218
	.loc 2 1083 9
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
.L218:
	.loc 2 1086 14
	addi	a3,s0,-1072
	addi	a1,s0,-1036
	addi	a0,s0,-272
	li	a5,0
	lui	a4,%hi(ecjpake_lgc)
	addi	a4,a4,%lo(ecjpake_lgc)
	li	a2,512
	call	mbedtls_ecjpake_write_round_one
	mv	a5,a0
	.loc 2 1086 13 discriminator 1
	bne	a5,zero,.L219
	.loc 2 1086 16 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1089 14
	lw	a3,-1072(s0)
	addi	a4,s0,-1036
	addi	a5,s0,-524
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecjpake_read_round_one
	mv	a5,a0
	.loc 2 1089 13 discriminator 1
	bne	a5,zero,.L221
	j	.L285
.L219:
	.loc 2 1086 32 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1086 37
	j	.L214
.L285:
	.loc 2 1089 71 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1091 14
	addi	a3,s0,-1072
	addi	a1,s0,-1036
	addi	a0,s0,-524
	li	a5,0
	lui	a4,%hi(ecjpake_lgc)
	addi	a4,a4,%lo(ecjpake_lgc)
	li	a2,512
	call	mbedtls_ecjpake_write_round_one
	mv	a5,a0
	.loc 2 1091 13 discriminator 1
	bne	a5,zero,.L223
	j	.L286
.L221:
	.loc 2 1089 87 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1089 92
	j	.L214
.L286:
	.loc 2 1091 16 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1094 14
	lw	a3,-1072(s0)
	addi	a4,s0,-1036
	addi	a5,s0,-272
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecjpake_read_round_one
	mv	a5,a0
	.loc 2 1094 13 discriminator 1
	bne	a5,zero,.L225
	j	.L287
.L223:
	.loc 2 1091 32 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1091 37
	j	.L214
.L287:
	.loc 2 1094 71 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1096 14
	addi	a3,s0,-1072
	addi	a1,s0,-1036
	addi	a0,s0,-524
	li	a5,0
	lui	a4,%hi(ecjpake_lgc)
	addi	a4,a4,%lo(ecjpake_lgc)
	li	a2,512
	call	mbedtls_ecjpake_write_round_two
	mv	a5,a0
	.loc 2 1096 13 discriminator 1
	bne	a5,zero,.L227
	j	.L288
.L225:
	.loc 2 1094 87 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1094 92
	j	.L214
.L288:
	.loc 2 1096 16 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1099 14
	lw	a3,-1072(s0)
	addi	a4,s0,-1036
	addi	a5,s0,-272
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecjpake_read_round_two
	mv	a5,a0
	.loc 2 1099 13 discriminator 1
	bne	a5,zero,.L229
	j	.L289
.L227:
	.loc 2 1096 32 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1096 37
	j	.L214
.L289:
	.loc 2 1099 71 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1101 14
	addi	a3,s0,-1076
	addi	a1,s0,-1068
	addi	a0,s0,-272
	li	a5,0
	lui	a4,%hi(ecjpake_lgc)
	addi	a4,a4,%lo(ecjpake_lgc)
	li	a2,32
	call	mbedtls_ecjpake_derive_secret
	mv	a5,a0
	.loc 2 1101 13 discriminator 1
	bne	a5,zero,.L231
	j	.L290
.L229:
	.loc 2 1099 87 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1099 92
	j	.L214
.L290:
	.loc 2 1101 16 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1104 14
	addi	a3,s0,-1072
	addi	a1,s0,-1036
	addi	a0,s0,-272
	li	a5,0
	lui	a4,%hi(ecjpake_lgc)
	addi	a4,a4,%lo(ecjpake_lgc)
	li	a2,512
	call	mbedtls_ecjpake_write_round_two
	mv	a5,a0
	.loc 2 1104 13 discriminator 1
	bne	a5,zero,.L233
	j	.L291
.L231:
	.loc 2 1101 32 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1101 37
	j	.L214
.L291:
	.loc 2 1104 16 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1107 14
	lw	a3,-1072(s0)
	addi	a4,s0,-1036
	addi	a5,s0,-524
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecjpake_read_round_two
	mv	a5,a0
	.loc 2 1107 13 discriminator 1
	bne	a5,zero,.L235
	j	.L292
.L233:
	.loc 2 1104 32 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1104 37
	j	.L214
.L292:
	.loc 2 1107 71 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1109 14
	addi	a3,s0,-1072
	addi	a1,s0,-1036
	addi	a0,s0,-524
	li	a5,0
	lui	a4,%hi(ecjpake_lgc)
	addi	a4,a4,%lo(ecjpake_lgc)
	li	a2,512
	call	mbedtls_ecjpake_derive_secret
	mv	a5,a0
	.loc 2 1109 13 discriminator 1
	bne	a5,zero,.L237
	j	.L293
.L235:
	.loc 2 1107 87 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1107 92
	j	.L214
.L293:
	.loc 2 1109 16 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1112 18
	lw	a4,-1072(s0)
	lw	a5,-1076(s0)
	.loc 2 1112 13
	bne	a4,a5,.L239
	j	.L294
.L237:
	.loc 2 1109 32 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1109 37
	j	.L214
.L294:
	.loc 2 1112 33 discriminator 1
	sw	zero,-20(s0)
	.loc 2 1113 14
	lw	a3,-1072(s0)
	addi	a4,s0,-1068
	addi	a5,s0,-1036
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 2 1113 13 discriminator 1
	bne	a5,zero,.L241
	j	.L295
.L239:
	.loc 2 1112 49 discriminator 2
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1112 54
	j	.L214
.L295:
	.loc 2 1113 46 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1115 8
	lw	a5,-1092(s0)
	beq	a5,zero,.L243
	j	.L296
.L241:
	.loc 2 1113 62 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1113 67
	j	.L214
.L296:
	.loc 2 1116 9
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
.L243:
	.loc 2 1125 8
	lw	a5,-1092(s0)
	beq	a5,zero,.L244
	.loc 2 1126 9
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	printf
.L244:
	.loc 2 1130 22
	addi	a0,s0,-272
	li	a4,32
	lui	a5,%hi(ecjpake_test_x2)
	addi	a3,a5,%lo(ecjpake_test_x2)
	li	a2,32
	lui	a5,%hi(ecjpake_test_x1)
	addi	a1,a5,%lo(ecjpake_test_x1)
	call	ecjpake_test_load
	sw	a0,-20(s0)
	.loc 2 1130 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L313
	.loc 2 1134 22
	addi	a0,s0,-524
	li	a4,32
	lui	a5,%hi(ecjpake_test_x4)
	addi	a3,a5,%lo(ecjpake_test_x4)
	li	a2,32
	lui	a5,%hi(ecjpake_test_x3)
	addi	a1,a5,%lo(ecjpake_test_x3)
	call	ecjpake_test_load
	sw	a0,-20(s0)
	.loc 2 1134 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L314
	.loc 2 1139 14
	addi	a4,s0,-524
	li	a2,330
	lui	a5,%hi(ecjpake_test_cli_one)
	addi	a1,a5,%lo(ecjpake_test_cli_one)
	mv	a0,a4
	call	mbedtls_ecjpake_read_round_one
	mv	a5,a0
	.loc 2 1139 13 discriminator 1
	bne	a5,zero,.L247
	.loc 2 1139 113 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1143 14
	addi	a4,s0,-272
	li	a2,330
	lui	a5,%hi(ecjpake_test_srv_one)
	addi	a1,a5,%lo(ecjpake_test_srv_one)
	mv	a0,a4
	call	mbedtls_ecjpake_read_round_one
	mv	a5,a0
	.loc 2 1143 13 discriminator 1
	bne	a5,zero,.L249
	j	.L297
.L247:
	.loc 2 1139 129 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1139 134
	j	.L214
.L297:
	.loc 2 1143 113 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1148 14
	addi	a4,s0,-272
	li	a2,168
	lui	a5,%hi(ecjpake_test_srv_two)
	addi	a1,a5,%lo(ecjpake_test_srv_two)
	mv	a0,a4
	call	mbedtls_ecjpake_read_round_two
	mv	a5,a0
	.loc 2 1148 13 discriminator 1
	bne	a5,zero,.L251
	j	.L298
.L249:
	.loc 2 1143 129 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1143 134
	j	.L214
.L298:
	.loc 2 1148 113 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1152 14
	addi	a4,s0,-524
	li	a2,165
	lui	a5,%hi(ecjpake_test_cli_two)
	addi	a1,a5,%lo(ecjpake_test_cli_two)
	mv	a0,a4
	call	mbedtls_ecjpake_read_round_two
	mv	a5,a0
	.loc 2 1152 13 discriminator 1
	bne	a5,zero,.L253
	j	.L299
.L251:
	.loc 2 1148 129 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1148 134
	j	.L214
.L299:
	.loc 2 1152 113 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1157 14
	addi	a3,s0,-1072
	addi	a1,s0,-1036
	addi	a0,s0,-524
	li	a5,0
	lui	a4,%hi(ecjpake_lgc)
	addi	a4,a4,%lo(ecjpake_lgc)
	li	a2,512
	call	mbedtls_ecjpake_derive_secret
	mv	a5,a0
	.loc 2 1157 13 discriminator 1
	bne	a5,zero,.L255
	j	.L300
.L253:
	.loc 2 1152 129 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1152 134
	j	.L214
.L300:
	.loc 2 1157 16 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1160 18
	lw	a4,-1072(s0)
	.loc 2 1160 13
	li	a5,32
	bne	a4,a5,.L257
	j	.L301
.L255:
	.loc 2 1157 32 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1157 37
	j	.L214
.L301:
	.loc 2 1160 51 discriminator 1
	sw	zero,-20(s0)
	.loc 2 1161 14
	lw	a5,-1072(s0)
	addi	a4,s0,-1036
	mv	a2,a5
	lui	a5,%hi(ecjpake_test_pms)
	addi	a1,a5,%lo(ecjpake_test_pms)
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 2 1161 13 discriminator 1
	bne	a5,zero,.L259
	j	.L302
.L257:
	.loc 2 1160 67 discriminator 2
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1160 72
	j	.L214
.L302:
	.loc 2 1161 59 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1164 14
	addi	a3,s0,-1072
	addi	a1,s0,-1036
	addi	a0,s0,-524
	li	a5,0
	lui	a4,%hi(ecjpake_lgc)
	addi	a4,a4,%lo(ecjpake_lgc)
	li	a2,512
	call	mbedtls_ecjpake_write_shared_key
	mv	a5,a0
	.loc 2 1164 13 discriminator 1
	bne	a5,zero,.L261
	j	.L303
.L259:
	.loc 2 1161 75 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1161 80
	j	.L214
.L303:
	.loc 2 1164 16 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1167 18
	lw	a4,-1072(s0)
	.loc 2 1167 13
	li	a5,65
	bne	a4,a5,.L263
	j	.L304
.L261:
	.loc 2 1164 32 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1164 37
	j	.L214
.L304:
	.loc 2 1167 58 discriminator 1
	sw	zero,-20(s0)
	.loc 2 1168 14
	lw	a5,-1072(s0)
	addi	a4,s0,-1036
	mv	a2,a5
	lui	a5,%hi(ecjpake_test_shared_key)
	addi	a1,a5,%lo(ecjpake_test_shared_key)
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 2 1168 13 discriminator 1
	bne	a5,zero,.L265
	j	.L305
.L263:
	.loc 2 1167 74 discriminator 2
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1167 79
	j	.L214
.L305:
	.loc 2 1168 66 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1170 5
	lw	a4,-1072(s0)
	addi	a5,s0,-1036
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 1173 14
	addi	a3,s0,-1072
	addi	a1,s0,-1036
	addi	a0,s0,-272
	li	a5,0
	lui	a4,%hi(ecjpake_lgc)
	addi	a4,a4,%lo(ecjpake_lgc)
	li	a2,512
	call	mbedtls_ecjpake_derive_secret
	mv	a5,a0
	.loc 2 1173 13 discriminator 1
	bne	a5,zero,.L267
	j	.L306
.L265:
	.loc 2 1168 82 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1168 87
	j	.L214
.L306:
	.loc 2 1173 16 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1176 18
	lw	a4,-1072(s0)
	.loc 2 1176 13
	li	a5,32
	bne	a4,a5,.L269
	j	.L307
.L267:
	.loc 2 1173 32 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1173 37
	j	.L214
.L307:
	.loc 2 1176 51 discriminator 1
	sw	zero,-20(s0)
	.loc 2 1177 14
	lw	a5,-1072(s0)
	addi	a4,s0,-1036
	mv	a2,a5
	lui	a5,%hi(ecjpake_test_pms)
	addi	a1,a5,%lo(ecjpake_test_pms)
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 2 1177 13 discriminator 1
	bne	a5,zero,.L271
	j	.L308
.L269:
	.loc 2 1176 67 discriminator 2
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1176 72
	j	.L214
.L308:
	.loc 2 1177 59 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1180 14
	addi	a3,s0,-1072
	addi	a1,s0,-1036
	addi	a0,s0,-272
	li	a5,0
	lui	a4,%hi(ecjpake_lgc)
	addi	a4,a4,%lo(ecjpake_lgc)
	li	a2,512
	call	mbedtls_ecjpake_write_shared_key
	mv	a5,a0
	.loc 2 1180 13 discriminator 1
	bne	a5,zero,.L273
	j	.L309
.L271:
	.loc 2 1177 75 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1177 80
	j	.L214
.L309:
	.loc 2 1180 16 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1183 18
	lw	a4,-1072(s0)
	.loc 2 1183 13
	li	a5,65
	bne	a4,a5,.L275
	j	.L310
.L273:
	.loc 2 1180 32 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1180 37
	j	.L214
.L310:
	.loc 2 1183 58 discriminator 1
	sw	zero,-20(s0)
	.loc 2 1184 14
	lw	a5,-1072(s0)
	addi	a4,s0,-1036
	mv	a2,a5
	lui	a5,%hi(ecjpake_test_shared_key)
	addi	a1,a5,%lo(ecjpake_test_shared_key)
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 2 1184 13 discriminator 1
	bne	a5,zero,.L277
	j	.L311
.L275:
	.loc 2 1183 74 discriminator 2
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1183 79
	j	.L214
.L311:
	.loc 2 1184 66 discriminator 2
	sw	zero,-20(s0)
	.loc 2 1186 8
	lw	a5,-1092(s0)
	beq	a5,zero,.L315
	j	.L312
.L277:
	.loc 2 1184 82 discriminator 3
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1184 87
	j	.L214
.L312:
	.loc 2 1187 9
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	j	.L214
.L313:
	.loc 2 1130 138
	nop
	j	.L214
.L314:
	.loc 2 1134 138
	nop
	j	.L214
.L315:
	.loc 2 1191 1
	nop
.L214:
	.loc 2 1192 5
	addi	a5,s0,-272
	mv	a0,a5
	call	mbedtls_ecjpake_free
	.loc 2 1193 5
	addi	a5,s0,-524
	mv	a0,a5
	call	mbedtls_ecjpake_free
	.loc 2 1195 8
	lw	a5,-20(s0)
	beq	a5,zero,.L279
	.loc 2 1196 12
	lw	a5,-1092(s0)
	beq	a5,zero,.L280
	.loc 2 1197 13
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	printf
.L280:
	.loc 2 1200 13
	li	a5,1
	sw	a5,-20(s0)
.L279:
	.loc 2 1203 8
	lw	a5,-1092(s0)
	beq	a5,zero,.L281
	.loc 2 1204 9
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
.L281:
	.loc 2 1207 12
	lw	a5,-20(s0)
	.loc 2 1208 1
	mv	a0,a5
	lw	ra,1100(sp)
	.cfi_restore 1
	lw	s0,1096(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 1104
	addi	sp,sp,1104
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE43:
	.size	mbedtls_ecjpake_self_test, .-mbedtls_ecjpake_self_test
	.section	.sdata.state.1,"aw"
	.align	2
	.type	state.1, @object
	.size	state.1, 4
state.1:
	.word	42
	.section	.sdata.x.0,"aw"
	.align	2
	.type	x.0, @object
	.size	x.0, 4
x.0:
	.word	42
	.text
.Letext0:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecp.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecjpake.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1afb
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x28
	.4byte	.LASF164
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x11
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x11
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xa
	.4byte	0x32
	.uleb128 0x11
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x11
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x11
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x11
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x11
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x29
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.4byte	0x68
	.uleb128 0x11
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xc
	.4byte	.LASF12
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0x74
	.uleb128 0xa
	.4byte	0x7b
	.uleb128 0x11
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xc
	.4byte	.LASF13
	.byte	0x5
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0xc
	.4byte	.LASF14
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0xc
	.4byte	.LASF15
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x2a
	.byte	0x4
	.uleb128 0x1c
	.4byte	0xb7
	.uleb128 0x8
	.4byte	0x32
	.uleb128 0x11
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0xa
	.4byte	0xc3
	.uleb128 0x8
	.4byte	0xca
	.uleb128 0xa
	.4byte	0xcf
	.uleb128 0x1c
	.4byte	0xcf
	.uleb128 0x8
	.4byte	0xe8
	.uleb128 0x1c
	.4byte	0xde
	.uleb128 0x2b
	.uleb128 0x2c
	.byte	0x4
	.byte	0x3
	.byte	0x59
	.byte	0x9
	.4byte	0xfe
	.uleb128 0x7
	.string	"x"
	.byte	0x3
	.byte	0x5a
	.byte	0xe
	.4byte	0xab
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x3
	.byte	0x5b
	.byte	0x1b
	.4byte	0xe9
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x6
	.byte	0xd1
	.byte	0xd
	.4byte	0x116
	.uleb128 0x1d
	.4byte	0x68
	.4byte	0x12f
	.uleb128 0x1
	.4byte	0xb7
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x7
	.byte	0xa9
	.byte	0x11
	.4byte	0x93
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x7
	.byte	0xaa
	.byte	0x12
	.4byte	0xab
	.uleb128 0x19
	.4byte	.LASF21
	.byte	0x8
	.byte	0x7
	.byte	0xd0
	.4byte	0x175
	.uleb128 0x7
	.string	"p"
	.byte	0x7
	.byte	0xd5
	.byte	0x17
	.4byte	0x175
	.byte	0
	.uleb128 0x7
	.string	"s"
	.byte	0x7
	.byte	0xe2
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x7
	.string	"n"
	.byte	0x7
	.byte	0xe5
	.byte	0x14
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.4byte	0x13b
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x7
	.byte	0xf0
	.byte	0x1
	.4byte	0x147
	.uleb128 0xa
	.4byte	0x17a
	.uleb128 0x1e
	.4byte	0x32
	.byte	0x8
	.byte	0x66
	.4byte	0x1eb
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x6
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x7
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF31
	.byte	0x9
	.uleb128 0x5
	.4byte	.LASF32
	.byte	0xa
	.uleb128 0x5
	.4byte	.LASF33
	.byte	0xb
	.uleb128 0x5
	.4byte	.LASF34
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x8
	.byte	0x75
	.byte	0x3
	.4byte	0x18b
	.uleb128 0x19
	.4byte	.LASF37
	.byte	0x18
	.byte	0x8
	.byte	0x9e
	.4byte	0x225
	.uleb128 0x7
	.string	"X"
	.byte	0x8
	.byte	0x9f
	.byte	0x11
	.4byte	0x17a
	.byte	0
	.uleb128 0x7
	.string	"Y"
	.byte	0x8
	.byte	0xa0
	.byte	0x11
	.4byte	0x17a
	.byte	0x8
	.uleb128 0x7
	.string	"Z"
	.byte	0x8
	.byte	0xa1
	.byte	0x11
	.4byte	0x17a
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x8
	.byte	0xa3
	.byte	0x1
	.4byte	0x1f7
	.uleb128 0xa
	.4byte	0x225
	.uleb128 0x19
	.4byte	.LASF38
	.byte	0x60
	.byte	0x8
	.byte	0xe9
	.4byte	0x2f8
	.uleb128 0x7
	.string	"id"
	.byte	0x8
	.byte	0xea
	.byte	0x1a
	.4byte	0x1eb
	.byte	0
	.uleb128 0x7
	.string	"P"
	.byte	0x8
	.byte	0xeb
	.byte	0x11
	.4byte	0x17a
	.byte	0x4
	.uleb128 0x7
	.string	"A"
	.byte	0x8
	.byte	0xec
	.byte	0x11
	.4byte	0x17a
	.byte	0xc
	.uleb128 0x7
	.string	"B"
	.byte	0x8
	.byte	0xf1
	.byte	0x11
	.4byte	0x17a
	.byte	0x14
	.uleb128 0x7
	.string	"G"
	.byte	0x8
	.byte	0xf3
	.byte	0x17
	.4byte	0x225
	.byte	0x1c
	.uleb128 0x7
	.string	"N"
	.byte	0x8
	.byte	0xf4
	.byte	0x11
	.4byte	0x17a
	.byte	0x34
	.uleb128 0x14
	.4byte	.LASF39
	.byte	0x8
	.byte	0xf5
	.byte	0xc
	.4byte	0x7b
	.byte	0x3c
	.uleb128 0x14
	.4byte	.LASF40
	.byte	0x8
	.byte	0xf6
	.byte	0xc
	.4byte	0x7b
	.byte	0x40
	.uleb128 0x7
	.string	"h"
	.byte	0x8
	.byte	0xfb
	.byte	0x12
	.4byte	0x74
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x8
	.byte	0xfc
	.byte	0xa
	.4byte	0x30c
	.byte	0x48
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0x8
	.byte	0xfe
	.byte	0xa
	.4byte	0x32a
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF43
	.byte	0x8
	.byte	0xff
	.byte	0xa
	.4byte	0x32a
	.byte	0x50
	.uleb128 0x20
	.4byte	.LASF44
	.2byte	0x100
	.byte	0xb
	.4byte	0xb7
	.byte	0x54
	.uleb128 0x2d
	.string	"T"
	.byte	0x8
	.2byte	0x101
	.byte	0x18
	.4byte	0x325
	.byte	0x58
	.uleb128 0x20
	.4byte	.LASF45
	.2byte	0x102
	.byte	0xc
	.4byte	0x7b
	.byte	0x5c
	.byte	0
	.uleb128 0x1d
	.4byte	0x68
	.4byte	0x307
	.uleb128 0x1
	.4byte	0x307
	.byte	0
	.uleb128 0x8
	.4byte	0x17a
	.uleb128 0x8
	.4byte	0x2f8
	.uleb128 0x1d
	.4byte	0x68
	.4byte	0x325
	.uleb128 0x1
	.4byte	0x325
	.uleb128 0x1
	.4byte	0xb7
	.byte	0
	.uleb128 0x8
	.4byte	0x225
	.uleb128 0x8
	.4byte	0x311
	.uleb128 0x2e
	.4byte	.LASF38
	.byte	0x8
	.2byte	0x104
	.byte	0x1
	.4byte	0x236
	.uleb128 0xa
	.4byte	0x32f
	.uleb128 0x1e
	.4byte	0x32
	.byte	0x1
	.byte	0x2f
	.4byte	0x395
	.uleb128 0x5
	.4byte	.LASF46
	.byte	0
	.uleb128 0x5
	.4byte	.LASF47
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF48
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF50
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF51
	.byte	0x9
	.uleb128 0x5
	.4byte	.LASF52
	.byte	0xa
	.uleb128 0x5
	.4byte	.LASF53
	.byte	0xb
	.uleb128 0x5
	.4byte	.LASF54
	.byte	0x10
	.uleb128 0x5
	.4byte	.LASF55
	.byte	0x11
	.uleb128 0x5
	.4byte	.LASF56
	.byte	0x12
	.uleb128 0x5
	.4byte	.LASF57
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x1
	.byte	0x3c
	.byte	0x3
	.4byte	0x341
	.uleb128 0xa
	.4byte	0x395
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x1
	.byte	0x6b
	.byte	0x22
	.4byte	0x3b7
	.uleb128 0xa
	.4byte	0x3a6
	.uleb128 0x2f
	.4byte	.LASF59
	.uleb128 0x8
	.4byte	0x3b2
	.uleb128 0x1e
	.4byte	0x32
	.byte	0x9
	.byte	0x2a
	.4byte	0x3df
	.uleb128 0x5
	.4byte	.LASF60
	.byte	0
	.uleb128 0x5
	.4byte	.LASF61
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF62
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x9
	.byte	0x2e
	.byte	0x3
	.4byte	0x3c1
	.uleb128 0x19
	.4byte	.LASF64
	.byte	0xfc
	.byte	0x9
	.byte	0x3c
	.4byte	0x491
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x9
	.byte	0x3d
	.byte	0x17
	.4byte	0x395
	.byte	0
	.uleb128 0x7
	.string	"grp"
	.byte	0x9
	.byte	0x3e
	.byte	0x17
	.4byte	0x32f
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x9
	.byte	0x3f
	.byte	0x1a
	.4byte	0x3df
	.byte	0x64
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x9
	.byte	0x40
	.byte	0x9
	.4byte	0x68
	.byte	0x68
	.uleb128 0x7
	.string	"Xm1"
	.byte	0x9
	.byte	0x42
	.byte	0x17
	.4byte	0x225
	.byte	0x6c
	.uleb128 0x7
	.string	"Xm2"
	.byte	0x9
	.byte	0x43
	.byte	0x17
	.4byte	0x225
	.byte	0x84
	.uleb128 0x7
	.string	"Xp1"
	.byte	0x9
	.byte	0x44
	.byte	0x17
	.4byte	0x225
	.byte	0x9c
	.uleb128 0x7
	.string	"Xp2"
	.byte	0x9
	.byte	0x45
	.byte	0x17
	.4byte	0x225
	.byte	0xb4
	.uleb128 0x7
	.string	"Xp"
	.byte	0x9
	.byte	0x46
	.byte	0x17
	.4byte	0x225
	.byte	0xcc
	.uleb128 0x7
	.string	"xm1"
	.byte	0x9
	.byte	0x48
	.byte	0x11
	.4byte	0x17a
	.byte	0xe4
	.uleb128 0x7
	.string	"xm2"
	.byte	0x9
	.byte	0x49
	.byte	0x11
	.4byte	0x17a
	.byte	0xec
	.uleb128 0x7
	.string	"s"
	.byte	0x9
	.byte	0x4b
	.byte	0x11
	.4byte	0x17a
	.byte	0xf4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x9
	.byte	0x4c
	.byte	0x3
	.4byte	0x3eb
	.uleb128 0xa
	.4byte	0x491
	.uleb128 0xe
	.4byte	0xd4
	.4byte	0x4b2
	.uleb128 0x13
	.4byte	0x74
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x4a2
	.uleb128 0x1a
	.4byte	.LASF68
	.byte	0x1c
	.byte	0x1b
	.4byte	0x4b2
	.uleb128 0x5
	.byte	0x3
	.4byte	ecjpake_id
	.uleb128 0xe
	.4byte	0x39
	.4byte	0x4d8
	.uleb128 0x13
	.4byte	0x74
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.4byte	0x4c8
	.uleb128 0xb
	.4byte	.LASF69
	.2byte	0x346
	.byte	0x1c
	.4byte	0x4d8
	.uleb128 0x5
	.byte	0x3
	.4byte	ecjpake_test_password
	.uleb128 0xe
	.4byte	0x39
	.4byte	0x4ff
	.uleb128 0x13
	.4byte	0x74
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.4byte	0x4ef
	.uleb128 0xb
	.4byte	.LASF70
	.2byte	0x34d
	.byte	0x1c
	.4byte	0x4ff
	.uleb128 0x5
	.byte	0x3
	.4byte	ecjpake_test_x1
	.uleb128 0xb
	.4byte	.LASF71
	.2byte	0x353
	.byte	0x1c
	.4byte	0x4ff
	.uleb128 0x5
	.byte	0x3
	.4byte	ecjpake_test_x2
	.uleb128 0xb
	.4byte	.LASF72
	.2byte	0x359
	.byte	0x1c
	.4byte	0x4ff
	.uleb128 0x5
	.byte	0x3
	.4byte	ecjpake_test_x3
	.uleb128 0xb
	.4byte	.LASF73
	.2byte	0x35f
	.byte	0x1c
	.4byte	0x4ff
	.uleb128 0x5
	.byte	0x3
	.4byte	ecjpake_test_x4
	.uleb128 0xe
	.4byte	0x39
	.4byte	0x55d
	.uleb128 0x1f
	.4byte	0x74
	.2byte	0x149
	.byte	0
	.uleb128 0xa
	.4byte	0x54c
	.uleb128 0xb
	.4byte	.LASF74
	.2byte	0x365
	.byte	0x1c
	.4byte	0x55d
	.uleb128 0x5
	.byte	0x3
	.4byte	ecjpake_test_cli_one
	.uleb128 0xb
	.4byte	.LASF75
	.2byte	0x384
	.byte	0x1c
	.4byte	0x55d
	.uleb128 0x5
	.byte	0x3
	.4byte	ecjpake_test_srv_one
	.uleb128 0xe
	.4byte	0x39
	.4byte	0x596
	.uleb128 0x13
	.4byte	0x74
	.byte	0xa7
	.byte	0
	.uleb128 0xa
	.4byte	0x586
	.uleb128 0xb
	.4byte	.LASF76
	.2byte	0x3a3
	.byte	0x1c
	.4byte	0x596
	.uleb128 0x5
	.byte	0x3
	.4byte	ecjpake_test_srv_two
	.uleb128 0xe
	.4byte	0x39
	.4byte	0x5bd
	.uleb128 0x13
	.4byte	0x74
	.byte	0xa4
	.byte	0
	.uleb128 0xa
	.4byte	0x5ad
	.uleb128 0xb
	.4byte	.LASF77
	.2byte	0x3b4
	.byte	0x1c
	.4byte	0x5bd
	.uleb128 0x5
	.byte	0x3
	.4byte	ecjpake_test_cli_two
	.uleb128 0xe
	.4byte	0x39
	.4byte	0x5e4
	.uleb128 0x13
	.4byte	0x74
	.byte	0x40
	.byte	0
	.uleb128 0xa
	.4byte	0x5d4
	.uleb128 0xb
	.4byte	.LASF78
	.2byte	0x3c5
	.byte	0x1c
	.4byte	0x5e4
	.uleb128 0x5
	.byte	0x3
	.4byte	ecjpake_test_shared_key
	.uleb128 0xb
	.4byte	.LASF79
	.2byte	0x3ce
	.byte	0x1c
	.4byte	0x4ff
	.uleb128 0x5
	.byte	0x3
	.4byte	ecjpake_test_pms
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0xa
	.byte	0x21
	.byte	0x8
	.4byte	0xb7
	.4byte	0x62d
	.uleb128 0x1
	.4byte	0xb7
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0xa
	.byte	0x1e
	.byte	0x5
	.4byte	0x68
	.4byte	0x64d
	.uleb128 0x1
	.4byte	0xde
	.uleb128 0x1
	.4byte	0xde
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0xb
	.byte	0xce
	.byte	0x5
	.4byte	0x68
	.4byte	0x664
	.uleb128 0x1
	.4byte	0xd9
	.uleb128 0x30
	.byte	0
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x8
	.2byte	0x3a6
	.byte	0x5
	.4byte	0x68
	.4byte	0x68a
	.uleb128 0x1
	.4byte	0x68a
	.uleb128 0x1
	.4byte	0x68f
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x8
	.4byte	0x33c
	.uleb128 0x8
	.4byte	0x7b
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x8
	.2byte	0x3c7
	.byte	0x5
	.4byte	0x68
	.4byte	0x6c4
	.uleb128 0x1
	.4byte	0x6c4
	.uleb128 0x1
	.4byte	0x325
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x6ce
	.uleb128 0x1
	.4byte	0x6d3
	.uleb128 0x1
	.4byte	0xb7
	.byte	0
	.uleb128 0x8
	.4byte	0x32f
	.uleb128 0x8
	.4byte	0x186
	.uleb128 0x8
	.4byte	0x231
	.uleb128 0x8
	.4byte	0x10a
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x2d5
	.byte	0x5
	.4byte	0x68
	.4byte	0x6f9
	.uleb128 0x1
	.4byte	0x307
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x6c9
	.byte	0
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x3a3
	.byte	0x5
	.4byte	0x68
	.4byte	0x71f
	.uleb128 0x1
	.4byte	0x307
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x6d3
	.uleb128 0x1
	.4byte	0xb7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x8
	.2byte	0x37c
	.byte	0x5
	.4byte	0x68
	.4byte	0x740
	.uleb128 0x1
	.4byte	0x6c4
	.uleb128 0x1
	.4byte	0x740
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x8
	.4byte	0x745
	.uleb128 0x8
	.4byte	0x39
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x181
	.byte	0x5
	.4byte	0x68
	.4byte	0x766
	.uleb128 0x1
	.4byte	0x307
	.uleb128 0x1
	.4byte	0x12f
	.byte	0
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x8
	.2byte	0x2cc
	.byte	0x5
	.4byte	0x68
	.4byte	0x77d
	.uleb128 0x1
	.4byte	0x325
	.byte	0
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x248
	.byte	0x5
	.4byte	0x68
	.4byte	0x79e
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x1c9
	.byte	0x8
	.4byte	0x7b
	.4byte	0x7b5
	.uleb128 0x1
	.4byte	0x6c9
	.byte	0
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x8
	.2byte	0x353
	.byte	0x5
	.4byte	0x68
	.4byte	0x7e5
	.uleb128 0x1
	.4byte	0x68a
	.uleb128 0x1
	.4byte	0x6ce
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x68f
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x2e3
	.byte	0x5
	.4byte	0x68
	.4byte	0x806
	.uleb128 0x1
	.4byte	0x307
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x6c9
	.byte	0
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x30f
	.byte	0x5
	.4byte	0x68
	.4byte	0x827
	.uleb128 0x1
	.4byte	0x307
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x6c9
	.byte	0
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x8
	.2byte	0x4bc
	.byte	0x5
	.4byte	0x68
	.4byte	0x857
	.uleb128 0x1
	.4byte	0x6c4
	.uleb128 0x1
	.4byte	0x6ce
	.uleb128 0x1
	.4byte	0x307
	.uleb128 0x1
	.4byte	0x325
	.uleb128 0x1
	.4byte	0x6d3
	.uleb128 0x1
	.4byte	0xb7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x2da
	.byte	0x5
	.4byte	0x68
	.4byte	0x873
	.uleb128 0x1
	.4byte	0x6ce
	.uleb128 0x1
	.4byte	0x6ce
	.byte	0
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x426
	.byte	0x5
	.4byte	0x68
	.4byte	0x8a3
	.uleb128 0x1
	.4byte	0x6c4
	.uleb128 0x1
	.4byte	0x325
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x6ce
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x6ce
	.byte	0
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x339
	.byte	0x5
	.4byte	0x68
	.4byte	0x8c9
	.uleb128 0x1
	.4byte	0x68a
	.uleb128 0x1
	.4byte	0x325
	.uleb128 0x1
	.4byte	0x740
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x1
	.byte	0xeb
	.byte	0xf
	.4byte	0x32
	.4byte	0x8df
	.uleb128 0x1
	.4byte	0x3bc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x35d
	.byte	0x5
	.4byte	0x68
	.4byte	0x900
	.uleb128 0x1
	.4byte	0x307
	.uleb128 0x1
	.4byte	0x6c9
	.uleb128 0x1
	.4byte	0x6c9
	.byte	0
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0xa
	.byte	0x1f
	.byte	0x8
	.4byte	0xb7
	.4byte	0x920
	.uleb128 0x1
	.4byte	0xb9
	.uleb128 0x1
	.4byte	0xe3
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0xa
	.byte	0x29
	.byte	0x8
	.4byte	0x7b
	.4byte	0x936
	.uleb128 0x1
	.4byte	0xcf
	.byte	0
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x305
	.byte	0x5
	.4byte	0x68
	.4byte	0x966
	.uleb128 0x1
	.4byte	0x68a
	.uleb128 0x1
	.4byte	0x6ce
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x68f
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x227
	.byte	0x5
	.4byte	0x68
	.4byte	0x987
	.uleb128 0x1
	.4byte	0x307
	.uleb128 0x1
	.4byte	0x745
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x369
	.byte	0x5
	.4byte	0x68
	.4byte	0x9a3
	.uleb128 0x1
	.4byte	0x6c4
	.uleb128 0x1
	.4byte	0x1eb
	.byte	0
	.uleb128 0x17
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x103
	.4byte	0x9b5
	.uleb128 0x1
	.4byte	0x307
	.byte	0
	.uleb128 0x17
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x276
	.4byte	0x9c7
	.uleb128 0x1
	.4byte	0x325
	.byte	0
	.uleb128 0x17
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x27f
	.4byte	0x9d9
	.uleb128 0x1
	.4byte	0x6c4
	.byte	0
	.uleb128 0x31
	.4byte	.LASF109
	.byte	0x7
	.byte	0xfa
	.byte	0x6
	.4byte	0x9eb
	.uleb128 0x1
	.4byte	0x307
	.byte	0
	.uleb128 0x17
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x25d
	.4byte	0x9fd
	.uleb128 0x1
	.4byte	0x325
	.byte	0
	.uleb128 0x17
	.4byte	.LASF111
	.byte	0x8
	.2byte	0x268
	.4byte	0xa0f
	.uleb128 0x1
	.4byte	0x6c4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x151
	.byte	0x5
	.4byte	0x68
	.4byte	0xa35
	.uleb128 0x1
	.4byte	0x3bc
	.uleb128 0x1
	.4byte	0x745
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xbe
	.byte	0
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x1
	.byte	0x95
	.byte	0x1a
	.4byte	0x3bc
	.4byte	0xa4b
	.uleb128 0x1
	.4byte	0x395
	.byte	0
	.uleb128 0x16
	.4byte	.LASF124
	.2byte	0x41d
	.4byte	0x68
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaef
	.uleb128 0x4
	.4byte	.LASF115
	.2byte	0x41d
	.byte	0x23
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1092
	.uleb128 0x3
	.string	"ret"
	.2byte	0x41f
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"cli"
	.2byte	0x420
	.byte	0x1d
	.4byte	0x491
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x3
	.string	"srv"
	.2byte	0x421
	.byte	0x1d
	.4byte	0x491
	.uleb128 0x3
	.byte	0x91
	.sleb128 -524
	.uleb128 0x3
	.string	"buf"
	.2byte	0x422
	.byte	0x13
	.4byte	0xaef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1036
	.uleb128 0x3
	.string	"pms"
	.2byte	0x422
	.byte	0x1d
	.4byte	0xb00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1068
	.uleb128 0x3
	.string	"len"
	.2byte	0x423
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0xb
	.4byte	.LASF114
	.2byte	0x423
	.byte	0x11
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1076
	.uleb128 0xd
	.4byte	.LASF121
	.2byte	0x4a7
	.4byte	.L214
	.byte	0
	.uleb128 0xe
	.4byte	0x32
	.4byte	0xb00
	.uleb128 0x1f
	.4byte	0x74
	.2byte	0x1ff
	.byte	0
	.uleb128 0xe
	.4byte	0x32
	.4byte	0xb10
	.uleb128 0x13
	.4byte	0x74
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF117
	.2byte	0x3ff
	.4byte	0x68
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb7e
	.uleb128 0x2
	.string	"p"
	.2byte	0x3ff
	.byte	0x1e
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"out"
	.2byte	0x3ff
	.byte	0x30
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"len"
	.2byte	0x3ff
	.byte	0x3c
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"x"
	.2byte	0x401
	.byte	0x15
	.4byte	0xab
	.uleb128 0x5
	.byte	0x3
	.4byte	x.0
	.uleb128 0x21
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0xb
	.4byte	.LASF116
	.2byte	0x405
	.byte	0x10
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF118
	.2byte	0x3ea
	.4byte	0x68
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbfd
	.uleb128 0x2
	.string	"ctx"
	.2byte	0x3ea
	.byte	0x37
	.4byte	0xbfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"xm1"
	.2byte	0x3eb
	.byte	0x33
	.4byte	0x745
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF119
	.2byte	0x3eb
	.byte	0x3f
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"xm2"
	.2byte	0x3ec
	.byte	0x33
	.4byte	0x745
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF120
	.2byte	0x3ec
	.byte	0x3f
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.string	"ret"
	.2byte	0x3ee
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LASF121
	.2byte	0x3f7
	.4byte	.L198
	.byte	0
	.uleb128 0x8
	.4byte	0x491
	.uleb128 0x32
	.4byte	.LASF122
	.byte	0x2
	.2byte	0x3db
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc74
	.uleb128 0x2
	.string	"ctx"
	.2byte	0x3db
	.byte	0x20
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"out"
	.2byte	0x3db
	.byte	0x34
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"len"
	.2byte	0x3db
	.byte	0x40
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.4byte	.LASF123
	.2byte	0x3dd
	.byte	0x15
	.4byte	0xab
	.uleb128 0x5
	.byte	0x3
	.4byte	state.1
	.uleb128 0x21
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x3
	.string	"i"
	.2byte	0x3e1
	.byte	0x11
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF125
	.2byte	0x319
	.4byte	0x68
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd11
	.uleb128 0x2
	.string	"ctx"
	.2byte	0x319
	.byte	0x3f
	.4byte	0xbfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"buf"
	.2byte	0x31a
	.byte	0x35
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"len"
	.2byte	0x31a
	.byte	0x41
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF126
	.2byte	0x31a
	.byte	0x4e
	.4byte	0x68f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.4byte	.LASF127
	.2byte	0x31b
	.byte	0x2c
	.4byte	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.4byte	.LASF128
	.2byte	0x31c
	.byte	0x2c
	.4byte	0xb7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.string	"ret"
	.2byte	0x31e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"K"
	.2byte	0x31f
	.byte	0x17
	.4byte	0x225
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.4byte	.LASF121
	.2byte	0x32e
	.4byte	.L189
	.byte	0
	.uleb128 0x8
	.4byte	0x116
	.uleb128 0x16
	.4byte	.LASF129
	.2byte	0x2f7
	.4byte	0x68
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdd5
	.uleb128 0x2
	.string	"ctx"
	.2byte	0x2f7
	.byte	0x3c
	.4byte	0xbfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2
	.string	"buf"
	.2byte	0x2f8
	.byte	0x32
	.4byte	0xbe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2
	.string	"len"
	.2byte	0x2f8
	.byte	0x3e
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x4
	.4byte	.LASF126
	.2byte	0x2f8
	.byte	0x4b
	.4byte	0x68f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x4
	.4byte	.LASF127
	.2byte	0x2f9
	.byte	0x29
	.4byte	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x4
	.4byte	.LASF128
	.2byte	0x2fa
	.byte	0x29
	.4byte	0xb7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x3
	.string	"ret"
	.2byte	0x2fc
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"K"
	.2byte	0x2fd
	.byte	0x17
	.4byte	0x225
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.string	"kx"
	.2byte	0x2fe
	.byte	0x13
	.4byte	0xdd5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0xb
	.4byte	.LASF130
	.2byte	0x2ff
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LASF121
	.2byte	0x313
	.4byte	.L182
	.byte	0
	.uleb128 0xe
	.4byte	0x32
	.4byte	0xde5
	.uleb128 0x13
	.4byte	0x74
	.byte	0x41
	.byte	0
	.uleb128 0x12
	.4byte	.LASF131
	.2byte	0x2d6
	.4byte	0x68
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe71
	.uleb128 0x2
	.string	"ctx"
	.2byte	0x2d6
	.byte	0x3e
	.4byte	0xbfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"K"
	.2byte	0x2d7
	.byte	0x38
	.4byte	0x325
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF127
	.2byte	0x2d8
	.byte	0x2b
	.4byte	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF128
	.2byte	0x2d9
	.byte	0x2b
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.string	"ret"
	.2byte	0x2db
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF132
	.2byte	0x2dc
	.byte	0x11
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.string	"one"
	.2byte	0x2dc
	.byte	0x1a
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.4byte	.LASF121
	.2byte	0x2f0
	.4byte	.L171
	.byte	0
	.uleb128 0x16
	.4byte	.LASF133
	.2byte	0x28c
	.4byte	0x68
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf5d
	.uleb128 0x2
	.string	"ctx"
	.2byte	0x28c
	.byte	0x3e
	.4byte	0xbfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2
	.string	"buf"
	.2byte	0x28d
	.byte	0x34
	.4byte	0xbe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2
	.string	"len"
	.2byte	0x28d
	.byte	0x40
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x4
	.4byte	.LASF126
	.2byte	0x28d
	.byte	0x4d
	.4byte	0x68f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x4
	.4byte	.LASF127
	.2byte	0x28e
	.byte	0x2b
	.4byte	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x4
	.4byte	.LASF128
	.2byte	0x28f
	.byte	0x2b
	.4byte	0xb7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x3
	.string	"ret"
	.2byte	0x291
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"G"
	.2byte	0x292
	.byte	0x17
	.4byte	0x225
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.string	"Xm"
	.2byte	0x293
	.byte	0x17
	.4byte	0x225
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.string	"xm"
	.2byte	0x294
	.byte	0x11
	.4byte	0x17a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3
	.string	"p"
	.2byte	0x295
	.byte	0x14
	.4byte	0xbe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x3
	.string	"end"
	.2byte	0x296
	.byte	0x1a
	.4byte	0x745
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF134
	.2byte	0x297
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xd
	.4byte	.LASF121
	.2byte	0x2cb
	.4byte	.L153
	.byte	0
	.uleb128 0x12
	.4byte	.LASF135
	.2byte	0x26d
	.4byte	0x68
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfff
	.uleb128 0x2
	.string	"R"
	.2byte	0x26d
	.byte	0x2c
	.4byte	0x307
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF136
	.2byte	0x26d
	.byte	0x33
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"X"
	.2byte	0x26e
	.byte	0x32
	.4byte	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"S"
	.2byte	0x26f
	.byte	0x32
	.4byte	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"N"
	.2byte	0x270
	.byte	0x32
	.4byte	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF127
	.2byte	0x271
	.byte	0x25
	.4byte	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF128
	.2byte	0x272
	.byte	0x25
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.string	"ret"
	.2byte	0x274
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"b"
	.2byte	0x275
	.byte	0x11
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.4byte	.LASF121
	.2byte	0x283
	.4byte	.L142
	.byte	0
	.uleb128 0x16
	.4byte	.LASF137
	.2byte	0x236
	.4byte	0x68
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x109d
	.uleb128 0x2
	.string	"ctx"
	.2byte	0x236
	.byte	0x3d
	.4byte	0xbfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2
	.string	"buf"
	.2byte	0x237
	.byte	0x39
	.4byte	0x745
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2
	.string	"len"
	.2byte	0x238
	.byte	0x2b
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x3
	.string	"ret"
	.2byte	0x23a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"p"
	.2byte	0x23b
	.byte	0x1a
	.4byte	0x745
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.string	"end"
	.2byte	0x23c
	.byte	0x1a
	.4byte	0x745
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"grp"
	.2byte	0x23d
	.byte	0x17
	.4byte	0x32f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x3
	.string	"G"
	.2byte	0x23e
	.byte	0x17
	.4byte	0x225
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0xd
	.4byte	.LASF121
	.2byte	0x263
	.4byte	.L131
	.byte	0
	.uleb128 0x12
	.4byte	.LASF138
	.2byte	0x21f
	.4byte	0x68
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1123
	.uleb128 0x2
	.string	"grp"
	.2byte	0x21f
	.byte	0x30
	.4byte	0x6c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"R"
	.2byte	0x21f
	.byte	0x48
	.4byte	0x325
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"A"
	.2byte	0x220
	.byte	0x36
	.4byte	0x6ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"B"
	.2byte	0x221
	.byte	0x36
	.4byte	0x6ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"C"
	.2byte	0x222
	.byte	0x36
	.4byte	0x6ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.string	"ret"
	.2byte	0x224
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"one"
	.2byte	0x225
	.byte	0x11
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.4byte	.LASF121
	.2byte	0x22d
	.4byte	.L124
	.byte	0
	.uleb128 0x16
	.4byte	.LASF139
	.2byte	0x211
	.4byte	0x68
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1197
	.uleb128 0x2
	.string	"ctx"
	.2byte	0x211
	.byte	0x3e
	.4byte	0xbfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"buf"
	.2byte	0x212
	.byte	0x34
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"len"
	.2byte	0x212
	.byte	0x40
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF126
	.2byte	0x212
	.byte	0x4d
	.4byte	0x68f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF127
	.2byte	0x213
	.byte	0x2b
	.4byte	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF128
	.2byte	0x214
	.byte	0x2b
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x16
	.4byte	.LASF140
	.2byte	0x204
	.4byte	0x68
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11de
	.uleb128 0x2
	.string	"ctx"
	.2byte	0x204
	.byte	0x3d
	.4byte	0xbfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"buf"
	.2byte	0x205
	.byte	0x39
	.4byte	0x745
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"len"
	.2byte	0x206
	.byte	0x2b
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.4byte	.LASF141
	.2byte	0x1e3
	.4byte	0x68
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12fa
	.uleb128 0x4
	.4byte	.LASF65
	.2byte	0x1e3
	.byte	0x37
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.string	"grp"
	.2byte	0x1e4
	.byte	0x38
	.4byte	0x68a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"pf"
	.2byte	0x1e5
	.byte	0x29
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"G"
	.2byte	0x1e6
	.byte	0x38
	.4byte	0x6ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"xm1"
	.2byte	0x1e7
	.byte	0x2c
	.4byte	0x307
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"Xa"
	.2byte	0x1e8
	.byte	0x32
	.4byte	0x325
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"xm2"
	.2byte	0x1e9
	.byte	0x2c
	.4byte	0x307
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.string	"Xb"
	.2byte	0x1ea
	.byte	0x32
	.4byte	0x325
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.string	"id"
	.2byte	0x1eb
	.byte	0x2b
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2
	.string	"buf"
	.2byte	0x1ec
	.byte	0x2e
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2
	.string	"len"
	.2byte	0x1ed
	.byte	0x26
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x4
	.4byte	.LASF126
	.2byte	0x1ee
	.byte	0x27
	.4byte	0x68f
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x4
	.4byte	.LASF127
	.2byte	0x1ef
	.byte	0x25
	.4byte	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x4
	.4byte	.LASF128
	.2byte	0x1f0
	.byte	0x25
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x3
	.string	"ret"
	.2byte	0x1f2
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"p"
	.2byte	0x1f3
	.byte	0x14
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.string	"end"
	.2byte	0x1f4
	.byte	0x1a
	.4byte	0x745
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LASF121
	.2byte	0x1fd
	.4byte	.L113
	.byte	0
	.uleb128 0x12
	.4byte	.LASF142
	.2byte	0x1c1
	.4byte	0x68
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13cb
	.uleb128 0x4
	.4byte	.LASF65
	.2byte	0x1c1
	.byte	0x36
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.string	"grp"
	.2byte	0x1c2
	.byte	0x37
	.4byte	0x68a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"pf"
	.2byte	0x1c3
	.byte	0x28
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"G"
	.2byte	0x1c4
	.byte	0x37
	.4byte	0x6ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"Xa"
	.2byte	0x1c5
	.byte	0x31
	.4byte	0x325
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"Xb"
	.2byte	0x1c6
	.byte	0x31
	.4byte	0x325
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"id"
	.2byte	0x1c7
	.byte	0x2a
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.string	"buf"
	.2byte	0x1c8
	.byte	0x33
	.4byte	0x745
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.string	"len"
	.2byte	0x1c9
	.byte	0x25
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.string	"ret"
	.2byte	0x1cb
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"p"
	.2byte	0x1cc
	.byte	0x1a
	.4byte	0x745
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.string	"end"
	.2byte	0x1cd
	.byte	0x1a
	.4byte	0x745
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LASF121
	.2byte	0x1db
	.4byte	.L105
	.byte	0
	.uleb128 0x12
	.4byte	.LASF143
	.2byte	0x19b
	.4byte	0x68
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14a9
	.uleb128 0x4
	.4byte	.LASF65
	.2byte	0x19b
	.byte	0x36
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.string	"grp"
	.2byte	0x19c
	.byte	0x37
	.4byte	0x68a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"pf"
	.2byte	0x19d
	.byte	0x28
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"G"
	.2byte	0x19e
	.byte	0x37
	.4byte	0x6ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"x"
	.2byte	0x19f
	.byte	0x2b
	.4byte	0x307
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"X"
	.2byte	0x1a0
	.byte	0x31
	.4byte	0x325
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"id"
	.2byte	0x1a1
	.byte	0x2a
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.string	"p"
	.2byte	0x1a2
	.byte	0x2e
	.4byte	0x14a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.string	"end"
	.2byte	0x1a3
	.byte	0x33
	.4byte	0x745
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF127
	.2byte	0x1a4
	.byte	0x24
	.4byte	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x4
	.4byte	.LASF128
	.2byte	0x1a5
	.byte	0x24
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3
	.string	"ret"
	.2byte	0x1a7
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"len"
	.2byte	0x1a8
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LASF121
	.2byte	0x1b9
	.4byte	.L98
	.byte	0
	.uleb128 0x8
	.4byte	0xbe
	.uleb128 0x12
	.4byte	.LASF144
	.2byte	0x176
	.4byte	0x68
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1552
	.uleb128 0x4
	.4byte	.LASF65
	.2byte	0x176
	.byte	0x35
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.string	"grp"
	.2byte	0x177
	.byte	0x36
	.4byte	0x68a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"pf"
	.2byte	0x178
	.byte	0x27
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"G"
	.2byte	0x179
	.byte	0x36
	.4byte	0x6ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"X"
	.2byte	0x17a
	.byte	0x30
	.4byte	0x325
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"id"
	.2byte	0x17b
	.byte	0x29
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"p"
	.2byte	0x17c
	.byte	0x33
	.4byte	0x740
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.string	"end"
	.2byte	0x17d
	.byte	0x32
	.4byte	0x745
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.string	"ret"
	.2byte	0x17f
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LASF121
	.2byte	0x193
	.4byte	.L91
	.byte	0
	.uleb128 0x12
	.4byte	.LASF145
	.2byte	0x139
	.4byte	0x68
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x165f
	.uleb128 0x4
	.4byte	.LASF65
	.2byte	0x139
	.byte	0x36
	.4byte	0x3a1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x2
	.string	"grp"
	.2byte	0x13a
	.byte	0x37
	.4byte	0x68a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.string	"pf"
	.2byte	0x13b
	.byte	0x28
	.4byte	0x6f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.string	"G"
	.2byte	0x13c
	.byte	0x37
	.4byte	0x6ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2
	.string	"x"
	.2byte	0x13d
	.byte	0x31
	.4byte	0x6c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2
	.string	"X"
	.2byte	0x13e
	.byte	0x37
	.4byte	0x6ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2
	.string	"id"
	.2byte	0x13f
	.byte	0x2a
	.4byte	0xcf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2
	.string	"p"
	.2byte	0x140
	.byte	0x2e
	.4byte	0x14a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2
	.string	"end"
	.2byte	0x141
	.byte	0x33
	.4byte	0x745
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF127
	.2byte	0x142
	.byte	0x24
	.4byte	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x4
	.4byte	.LASF128
	.2byte	0x143
	.byte	0x24
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3
	.string	"ret"
	.2byte	0x145
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"V"
	.2byte	0x146
	.byte	0x17
	.4byte	0x225
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"v"
	.2byte	0x147
	.byte	0x11
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.string	"h"
	.2byte	0x148
	.byte	0x11
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.string	"len"
	.2byte	0x149
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xd
	.4byte	.LASF121
	.2byte	0x16a
	.4byte	.L70
	.byte	0
	.uleb128 0x18
	.4byte	.LASF146
	.byte	0x2
	.byte	0xf3
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1746
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x2
	.byte	0xf3
	.byte	0x35
	.4byte	0x3a1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -97
	.uleb128 0x6
	.string	"grp"
	.byte	0xf4
	.byte	0x36
	.4byte	0x68a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x6
	.string	"pf"
	.byte	0xf5
	.byte	0x27
	.4byte	0x6f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x6
	.string	"G"
	.byte	0xf6
	.byte	0x36
	.4byte	0x6ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x6
	.string	"X"
	.byte	0xf7
	.byte	0x36
	.4byte	0x6ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x6
	.string	"id"
	.byte	0xf8
	.byte	0x29
	.4byte	0xcf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x6
	.string	"p"
	.byte	0xf9
	.byte	0x33
	.4byte	0x740
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x6
	.string	"end"
	.byte	0xfa
	.byte	0x32
	.4byte	0x745
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x10
	.string	"ret"
	.byte	0xfc
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.string	"V"
	.byte	0xfd
	.byte	0x17
	.4byte	0x225
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"VV"
	.byte	0xfd
	.byte	0x1a
	.4byte	0x225
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x10
	.string	"r"
	.byte	0xfe
	.byte	0x11
	.4byte	0x17a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.string	"h"
	.byte	0xfe
	.byte	0x14
	.4byte	0x17a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1a
	.4byte	.LASF147
	.byte	0xff
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LASF121
	.2byte	0x12d
	.4byte	.L52
	.byte	0
	.uleb128 0x18
	.4byte	.LASF148
	.byte	0x2
	.byte	0xc0
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1857
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x2
	.byte	0xc0
	.byte	0x31
	.4byte	0x3a1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -545
	.uleb128 0x6
	.string	"grp"
	.byte	0xc1
	.byte	0x32
	.4byte	0x68a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.uleb128 0x6
	.string	"pf"
	.byte	0xc2
	.byte	0x23
	.4byte	0x6f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -556
	.uleb128 0x6
	.string	"G"
	.byte	0xc3
	.byte	0x32
	.4byte	0x6ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x6
	.string	"V"
	.byte	0xc4
	.byte	0x32
	.4byte	0x6ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -564
	.uleb128 0x6
	.string	"X"
	.byte	0xc5
	.byte	0x32
	.4byte	0x6ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x6
	.string	"id"
	.byte	0xc6
	.byte	0x25
	.4byte	0xcf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -572
	.uleb128 0x6
	.string	"h"
	.byte	0xc7
	.byte	0x26
	.4byte	0x307
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x10
	.string	"ret"
	.byte	0xc9
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.string	"buf"
	.byte	0xca
	.byte	0x13
	.4byte	0x1857
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x10
	.string	"p"
	.byte	0xcb
	.byte	0x14
	.4byte	0xbe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -468
	.uleb128 0x10
	.string	"end"
	.byte	0xcc
	.byte	0x1a
	.4byte	0x745
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.4byte	.LASF149
	.byte	0xcd
	.byte	0x12
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.4byte	.LASF150
	.byte	0xce
	.byte	0x13
	.4byte	0x1868
	.uleb128 0x3
	.byte	0x91
	.sleb128 -532
	.uleb128 0x22
	.4byte	.LASF121
	.byte	0xec
	.4byte	.L33
	.uleb128 0x23
	.4byte	0x1acd
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0xd9
	.byte	0x57
	.uleb128 0x1b
	.4byte	0x1ada
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.4byte	0x1ae3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.4byte	0x1aec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x32
	.4byte	0x1868
	.uleb128 0x1f
	.4byte	0x74
	.2byte	0x1a4
	.byte	0
	.uleb128 0xe
	.4byte	0x32
	.4byte	0x1878
	.uleb128 0x13
	.4byte	0x74
	.byte	0x3f
	.byte	0
	.uleb128 0x18
	.4byte	.LASF151
	.byte	0x2
	.byte	0x9c
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1919
	.uleb128 0x6
	.string	"p"
	.byte	0x9c
	.byte	0x34
	.4byte	0x14a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"end"
	.byte	0x9d
	.byte	0x39
	.4byte	0x745
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"grp"
	.byte	0x9e
	.byte	0x3d
	.4byte	0x68a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.string	"pf"
	.byte	0x9f
	.byte	0x2e
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.string	"P"
	.byte	0xa0
	.byte	0x3d
	.4byte	0x6ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x10
	.string	"ret"
	.byte	0xa2
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.string	"len"
	.byte	0xa3
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.4byte	0x1acd
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0xb0
	.byte	0x55
	.uleb128 0x1b
	.4byte	0x1ada
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.4byte	0x1ae3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.4byte	0x1aec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF152
	.byte	0x8e
	.4byte	0x68
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1940
	.uleb128 0x6
	.string	"ctx"
	.byte	0x8e
	.byte	0x3a
	.4byte	0x1940
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	0x49d
	.uleb128 0x25
	.4byte	.LASF153
	.byte	0x7e
	.4byte	0x68
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x197b
	.uleb128 0x6
	.string	"ctx"
	.byte	0x7e
	.byte	0x3f
	.4byte	0xbfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x2
	.byte	0x7f
	.byte	0x2a
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.4byte	.LASF154
	.byte	0x2
	.byte	0x5d
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a06
	.uleb128 0x6
	.string	"ctx"
	.byte	0x5d
	.byte	0x34
	.4byte	0xbfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x2
	.byte	0x5e
	.byte	0x30
	.4byte	0x3df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0xf
	.4byte	.LASF150
	.byte	0x2
	.byte	0x5f
	.byte	0x2d
	.4byte	0x395
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0xf
	.4byte	.LASF155
	.byte	0x2
	.byte	0x60
	.byte	0x30
	.4byte	0x1eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -39
	.uleb128 0xf
	.4byte	.LASF156
	.byte	0x2
	.byte	0x61
	.byte	0x30
	.4byte	0x745
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"len"
	.byte	0x62
	.byte	0x22
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"ret"
	.byte	0x64
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.4byte	.LASF121
	.byte	0x76
	.4byte	.L15
	.byte	0
	.uleb128 0x26
	.4byte	.LASF157
	.byte	0x46
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a29
	.uleb128 0x6
	.string	"ctx"
	.byte	0x46
	.byte	0x34
	.4byte	0xbfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.4byte	.LASF158
	.byte	0x32
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a4c
	.uleb128 0x6
	.string	"ctx"
	.byte	0x32
	.byte	0x34
	.4byte	0xbfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF159
	.byte	0x2
	.byte	0x27
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1aa3
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x2
	.byte	0x27
	.byte	0x3b
	.4byte	0x395
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xf
	.4byte	.LASF160
	.byte	0x2
	.byte	0x28
	.byte	0x3e
	.4byte	0x745
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.4byte	.LASF161
	.byte	0x2
	.byte	0x28
	.byte	0x4c
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.4byte	.LASF162
	.byte	0x2
	.byte	0x29
	.byte	0x38
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x18
	.4byte	.LASF163
	.byte	0x1
	.byte	0xf6
	.byte	0x1d
	.4byte	0x32
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1acd
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x1
	.byte	0xf6
	.byte	0x4d
	.4byte	0x395
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x34
	.4byte	.LASF165
	.byte	0x3
	.byte	0xc2
	.byte	0x14
	.byte	0x3
	.4byte	0x1af9
	.uleb128 0x27
	.string	"p"
	.byte	0xc2
	.byte	0x37
	.4byte	0xb7
	.uleb128 0x27
	.string	"x"
	.byte	0xc2
	.byte	0x43
	.4byte	0xab
	.uleb128 0x35
	.string	"p32"
	.byte	0x3
	.byte	0xc8
	.byte	0x21
	.4byte	0x1af9
	.byte	0
	.uleb128 0x8
	.4byte	0xfe
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
	.uleb128 0x26
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
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
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
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xf4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
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
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
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
	.4byte	.LFB12
	.uleb128 .LFE12-.LFB12
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
	.4byte	.LFB40
	.uleb128 .LFE40-.LFB40
	.byte	0x7
	.4byte	.LFB41
	.uleb128 .LFE41-.LFB41
	.byte	0x7
	.4byte	.LFB42
	.uleb128 .LFE42-.LFB42
	.byte	0x7
	.4byte	.LFB43
	.uleb128 .LFE43-.LFB43
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF155:
	.string	"curve"
.LASF90:
	.string	"mbedtls_mpi_write_binary"
.LASF62:
	.string	"MBEDTLS_ECJPAKE_NONE"
.LASF160:
	.string	"input"
.LASF102:
	.string	"strlen"
.LASF109:
	.string	"mbedtls_mpi_init"
.LASF143:
	.string	"ecjpake_kkp_write"
.LASF117:
	.string	"ecjpake_lgc"
.LASF60:
	.string	"MBEDTLS_ECJPAKE_CLIENT"
.LASF58:
	.string	"mbedtls_md_type_t"
.LASF10:
	.string	"unsigned int"
.LASF108:
	.string	"mbedtls_ecp_group_free"
.LASF105:
	.string	"mbedtls_ecp_group_load"
.LASF50:
	.string	"MBEDTLS_MD_SHA224"
.LASF56:
	.string	"MBEDTLS_MD_SHA3_384"
.LASF19:
	.string	"mbedtls_mpi_sint"
.LASF41:
	.string	"modp"
.LASF24:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF18:
	.string	"mbedtls_f_rng_t"
.LASF110:
	.string	"mbedtls_ecp_point_init"
.LASF31:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF126:
	.string	"olen"
.LASF154:
	.string	"mbedtls_ecjpake_setup"
.LASF139:
	.string	"mbedtls_ecjpake_write_round_one"
.LASF15:
	.string	"uint32_t"
.LASF119:
	.string	"len1"
.LASF120:
	.string	"len2"
.LASF92:
	.string	"mbedtls_ecp_tls_write_point"
.LASF34:
	.string	"MBEDTLS_ECP_DP_SECP256K1"
.LASF42:
	.string	"t_pre"
.LASF70:
	.string	"ecjpake_test_x1"
.LASF37:
	.string	"mbedtls_ecp_point"
.LASF72:
	.string	"ecjpake_test_x3"
.LASF73:
	.string	"ecjpake_test_x4"
.LASF9:
	.string	"long long unsigned int"
.LASF74:
	.string	"ecjpake_test_cli_one"
.LASF87:
	.string	"mbedtls_ecp_tls_read_group"
.LASF53:
	.string	"MBEDTLS_MD_SHA512"
.LASF75:
	.string	"ecjpake_test_srv_one"
.LASF78:
	.string	"ecjpake_test_shared_key"
.LASF26:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF147:
	.string	"r_len"
.LASF29:
	.string	"MBEDTLS_ECP_DP_BP384R1"
.LASF131:
	.string	"mbedtls_ecjpake_derive_k"
.LASF67:
	.string	"point_format"
.LASF32:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
.LASF165:
	.string	"mbedtls_put_unaligned_uint32"
.LASF20:
	.string	"mbedtls_mpi_uint"
.LASF85:
	.string	"mbedtls_mpi_add_mpi"
.LASF12:
	.string	"size_t"
.LASF136:
	.string	"sign"
.LASF162:
	.string	"output"
.LASF51:
	.string	"MBEDTLS_MD_SHA256"
.LASF35:
	.string	"MBEDTLS_ECP_DP_CURVE448"
.LASF146:
	.string	"ecjpake_zkp_read"
.LASF124:
	.string	"mbedtls_ecjpake_self_test"
.LASF130:
	.string	"x_bytes"
.LASF17:
	.string	"mbedtls_uint32_unaligned_t"
.LASF54:
	.string	"MBEDTLS_MD_SHA3_224"
.LASF103:
	.string	"mbedtls_ecp_point_write_binary"
.LASF145:
	.string	"ecjpake_zkp_write"
.LASF64:
	.string	"mbedtls_ecjpake_context"
.LASF45:
	.string	"T_size"
.LASF86:
	.string	"mbedtls_mpi_fill_random"
.LASF93:
	.string	"mbedtls_mpi_sub_mpi"
.LASF59:
	.string	"mbedtls_md_info_t"
.LASF16:
	.string	"char"
.LASF69:
	.string	"ecjpake_test_password"
.LASF66:
	.string	"role"
.LASF157:
	.string	"mbedtls_ecjpake_free"
.LASF89:
	.string	"mbedtls_ecp_is_zero"
.LASF14:
	.string	"uint8_t"
.LASF112:
	.string	"mbedtls_md"
.LASF138:
	.string	"ecjpake_ecp_add3"
.LASF57:
	.string	"MBEDTLS_MD_SHA3_512"
.LASF137:
	.string	"mbedtls_ecjpake_read_round_two"
.LASF27:
	.string	"MBEDTLS_ECP_DP_SECP521R1"
.LASF134:
	.string	"ec_len"
.LASF88:
	.string	"mbedtls_mpi_lset"
.LASF8:
	.string	"long long int"
.LASF159:
	.string	"mbedtls_ecjpake_compute_hash"
.LASF79:
	.string	"ecjpake_test_pms"
.LASF82:
	.string	"printf"
.LASF122:
	.string	"self_test_rng"
.LASF94:
	.string	"mbedtls_mpi_mul_mpi"
.LASF111:
	.string	"mbedtls_ecp_group_init"
.LASF40:
	.string	"nbits"
.LASF71:
	.string	"ecjpake_test_x2"
.LASF44:
	.string	"t_data"
.LASF46:
	.string	"MBEDTLS_MD_NONE"
.LASF61:
	.string	"MBEDTLS_ECJPAKE_SERVER"
.LASF80:
	.string	"memset"
.LASF55:
	.string	"MBEDTLS_MD_SHA3_256"
.LASF98:
	.string	"mbedtls_ecp_tls_read_point"
.LASF101:
	.string	"memcpy"
.LASF116:
	.string	"use_len"
.LASF161:
	.string	"ilen"
.LASF149:
	.string	"id_len"
.LASF95:
	.string	"mbedtls_ecp_gen_keypair_base"
.LASF129:
	.string	"mbedtls_ecjpake_derive_secret"
.LASF106:
	.string	"mbedtls_mpi_free"
.LASF11:
	.string	"long double"
.LASF114:
	.string	"pmslen"
.LASF63:
	.string	"mbedtls_ecjpake_role"
.LASF30:
	.string	"MBEDTLS_ECP_DP_BP512R1"
.LASF22:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF4:
	.string	"short int"
.LASF25:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF100:
	.string	"mbedtls_mpi_mod_mpi"
.LASF6:
	.string	"long int"
.LASF96:
	.string	"mbedtls_ecp_point_cmp"
.LASF150:
	.string	"hash"
.LASF28:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF81:
	.string	"memcmp"
.LASF121:
	.string	"cleanup"
.LASF107:
	.string	"mbedtls_ecp_point_free"
.LASF23:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF127:
	.string	"f_rng"
.LASF151:
	.string	"ecjpake_write_len_point"
.LASF49:
	.string	"MBEDTLS_MD_SHA1"
.LASF128:
	.string	"p_rng"
.LASF133:
	.string	"mbedtls_ecjpake_write_round_two"
.LASF125:
	.string	"mbedtls_ecjpake_write_shared_key"
.LASF47:
	.string	"MBEDTLS_MD_MD5"
.LASF7:
	.string	"long unsigned int"
.LASF99:
	.string	"mbedtls_md_get_size"
.LASF13:
	.string	"int32_t"
.LASF148:
	.string	"ecjpake_hash"
.LASF39:
	.string	"pbits"
.LASF3:
	.string	"unsigned char"
.LASF77:
	.string	"ecjpake_test_cli_two"
.LASF113:
	.string	"mbedtls_md_info_from_type"
.LASF76:
	.string	"ecjpake_test_srv_two"
.LASF104:
	.string	"mbedtls_mpi_read_binary"
.LASF33:
	.string	"MBEDTLS_ECP_DP_SECP224K1"
.LASF158:
	.string	"mbedtls_ecjpake_init"
.LASF68:
	.string	"ecjpake_id"
.LASF123:
	.string	"state"
.LASF118:
	.string	"ecjpake_test_load"
.LASF140:
	.string	"mbedtls_ecjpake_read_round_one"
.LASF65:
	.string	"md_type"
.LASF84:
	.string	"mbedtls_ecp_mul"
.LASF115:
	.string	"verbose"
.LASF142:
	.string	"ecjpake_kkpp_read"
.LASF2:
	.string	"signed char"
.LASF21:
	.string	"mbedtls_mpi"
.LASF83:
	.string	"mbedtls_ecp_tls_write_group"
.LASF48:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF36:
	.string	"mbedtls_ecp_group_id"
.LASF5:
	.string	"short unsigned int"
.LASF153:
	.string	"mbedtls_ecjpake_set_point_format"
.LASF144:
	.string	"ecjpake_kkp_read"
.LASF91:
	.string	"mbedtls_mpi_size"
.LASF52:
	.string	"MBEDTLS_MD_SHA384"
.LASF135:
	.string	"ecjpake_mul_secret"
.LASF38:
	.string	"mbedtls_ecp_group"
.LASF163:
	.string	"mbedtls_md_get_size_from_type"
.LASF43:
	.string	"t_post"
.LASF152:
	.string	"mbedtls_ecjpake_check"
.LASF132:
	.string	"m_xm2_s"
.LASF164:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF141:
	.string	"ecjpake_kkpp_write"
.LASF97:
	.string	"mbedtls_ecp_muladd"
.LASF156:
	.string	"secret"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ecjpake.c"
	.globl	__bswapsi2
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
