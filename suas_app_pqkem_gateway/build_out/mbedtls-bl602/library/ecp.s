	.file	"ecp.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ecp.c"
	.section	.text.mbedtls_ecp_group_a_is_minus_3,"ax",@progbits
	.align	1
	.type	mbedtls_ecp_group_a_is_minus_3, @function
mbedtls_ecp_group_a_is_minus_3:
.LFB11:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecp.h"
	.loc 1 1023 1
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
	.loc 1 1024 18
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 1024 21
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 1025 1
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
	.size	mbedtls_ecp_group_a_is_minus_3, .-mbedtls_ecp_group_a_is_minus_3
	.section	.sbss.add_count,"aw",@nobits
	.align	2
	.type	add_count, @object
	.size	add_count, 4
add_count:
	.zero	4
	.section	.sbss.dbl_count,"aw",@nobits
	.align	2
	.type	dbl_count, @object
	.size	dbl_count, 4
dbl_count:
	.zero	4
	.section	.sbss.mul_count,"aw",@nobits
	.align	2
	.type	mul_count, @object
	.size	mul_count, 4
mul_count:
	.zero	4
	.section	.sbss.ecp_max_ops,"aw",@nobits
	.align	2
	.type	ecp_max_ops, @object
	.size	ecp_max_ops, 4
ecp_max_ops:
	.zero	4
	.section	.text.mbedtls_ecp_set_max_ops,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_set_max_ops
	.type	mbedtls_ecp_set_max_ops, @function
mbedtls_ecp_set_max_ops:
.LFB16:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ecp.c"
	.loc 2 110 1
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
	.loc 2 111 17
	lui	a5,%hi(ecp_max_ops)
	lw	a4,-20(s0)
	sw	a4,%lo(ecp_max_ops)(a5)
	.loc 2 112 1
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
.LFE16:
	.size	mbedtls_ecp_set_max_ops, .-mbedtls_ecp_set_max_ops
	.section	.text.mbedtls_ecp_restart_is_enabled,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_restart_is_enabled
	.type	mbedtls_ecp_restart_is_enabled, @function
mbedtls_ecp_restart_is_enabled:
.LFB17:
	.loc 2 118 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 119 24
	lui	a5,%hi(ecp_max_ops)
	lw	a5,%lo(ecp_max_ops)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 2 120 1
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
.LFE17:
	.size	mbedtls_ecp_restart_is_enabled, .-mbedtls_ecp_restart_is_enabled
	.section	.text.ecp_restart_rsm_init,"ax",@progbits
	.align	1
	.type	ecp_restart_rsm_init, @function
ecp_restart_rsm_init:
.LFB18:
	.loc 2 145 1
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
	.loc 2 146 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 147 12
	lw	a5,-20(s0)
	sw	zero,24(a5)
	.loc 2 148 12
	lw	a5,-20(s0)
	sw	zero,28(a5)
	.loc 2 149 17
	lw	a5,-20(s0)
	sb	zero,32(a5)
	.loc 2 150 16
	lw	a5,-20(s0)
	sb	zero,33(a5)
	.loc 2 151 1
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
.LFE18:
	.size	ecp_restart_rsm_init, .-ecp_restart_rsm_init
	.section	.text.ecp_restart_rsm_free,"ax",@progbits
	.align	1
	.type	ecp_restart_rsm_free, @function
ecp_restart_rsm_free:
.LFB19:
	.loc 2 157 1
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
	.loc 2 160 8
	lw	a5,-36(s0)
	beq	a5,zero,.L13
	.loc 2 164 5
	lw	a5,-36(s0)
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 166 12
	lw	a5,-36(s0)
	lw	a5,28(a5)
	.loc 2 166 8
	beq	a5,zero,.L10
	.loc 2 167 16
	sb	zero,-17(s0)
	.loc 2 167 9
	j	.L11
.L12:
	.loc 2 168 39
	lw	a5,-36(s0)
	lw	a3,28(a5)
	.loc 2 168 43
	lbu	a4,-17(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	.loc 2 168 13
	add	a5,a3,a5
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 167 39 discriminator 3
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L11:
	.loc 2 167 28 discriminator 1
	lw	a5,-36(s0)
	lbu	a5,32(a5)
	.loc 2 167 23 discriminator 1
	lbu	a4,-17(s0)
	bltu	a4,a5,.L12
	.loc 2 170 17
	lw	a5,-36(s0)
	lw	a5,28(a5)
	.loc 2 170 9
	mv	a0,a5
	call	free
.L10:
	.loc 2 173 5
	lw	a0,-36(s0)
	call	ecp_restart_rsm_init
	j	.L7
.L13:
	.loc 2 161 9
	nop
.L7:
	.loc 2 174 1
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
	.size	ecp_restart_rsm_free, .-ecp_restart_rsm_free
	.section	.text.ecp_restart_ma_init,"ax",@progbits
	.align	1
	.type	ecp_restart_ma_init, @function
ecp_restart_ma_init:
.LFB20:
	.loc 2 194 1
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
	.loc 2 195 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 196 5
	lw	a5,-20(s0)
	addi	a5,a5,24
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 197 16
	lw	a5,-20(s0)
	sb	zero,48(a5)
	.loc 2 198 1
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
.LFE20:
	.size	ecp_restart_ma_init, .-ecp_restart_ma_init
	.section	.text.ecp_restart_ma_free,"ax",@progbits
	.align	1
	.type	ecp_restart_ma_free, @function
ecp_restart_ma_free:
.LFB21:
	.loc 2 204 1
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
	.loc 2 205 8
	lw	a5,-20(s0)
	beq	a5,zero,.L18
	.loc 2 209 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 210 5
	lw	a5,-20(s0)
	addi	a5,a5,24
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 212 5
	lw	a0,-20(s0)
	call	ecp_restart_ma_init
	j	.L15
.L18:
	.loc 2 206 9
	nop
.L15:
	.loc 2 213 1
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
	.size	ecp_restart_ma_free, .-ecp_restart_ma_free
	.section	.text.mbedtls_ecp_restart_init,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_restart_init
	.type	mbedtls_ecp_restart_init, @function
mbedtls_ecp_restart_init:
.LFB22:
	.loc 2 219 1
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
	.loc 2 220 19
	lw	a5,-20(s0)
	sw	zero,0(a5)
	.loc 2 221 16
	lw	a5,-20(s0)
	sw	zero,4(a5)
	.loc 2 222 14
	lw	a5,-20(s0)
	sw	zero,8(a5)
	.loc 2 223 13
	lw	a5,-20(s0)
	sw	zero,12(a5)
	.loc 2 224 1
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
.LFE22:
	.size	mbedtls_ecp_restart_init, .-mbedtls_ecp_restart_init
	.section	.text.mbedtls_ecp_restart_free,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_restart_free
	.type	mbedtls_ecp_restart_free, @function
mbedtls_ecp_restart_free:
.LFB23:
	.loc 2 230 1
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
	.loc 2 231 8
	lw	a5,-20(s0)
	beq	a5,zero,.L23
	.loc 2 235 5
	lw	a5,-20(s0)
	lw	a5,8(a5)
	mv	a0,a5
	call	ecp_restart_rsm_free
	.loc 2 236 13
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 2 236 5
	mv	a0,a5
	call	free
	.loc 2 238 5
	lw	a5,-20(s0)
	lw	a5,12(a5)
	mv	a0,a5
	call	ecp_restart_ma_free
	.loc 2 239 13
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 2 239 5
	mv	a0,a5
	call	free
	.loc 2 241 5
	lw	a0,-20(s0)
	call	mbedtls_ecp_restart_init
	j	.L20
.L23:
	.loc 2 232 9
	nop
.L20:
	.loc 2 242 1
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
	.size	mbedtls_ecp_restart_free, .-mbedtls_ecp_restart_free
	.section	.text.mbedtls_ecp_check_budget,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_check_budget
	.type	mbedtls_ecp_check_budget, @function
mbedtls_ecp_check_budget:
.LFB24:
	.loc 2 250 1
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
	.loc 2 251 8
	lw	a5,-24(s0)
	beq	a5,zero,.L25
	.loc 2 251 38 discriminator 1
	lui	a5,%hi(ecp_max_ops)
	lw	a5,%lo(ecp_max_ops)(a5)
	.loc 2 251 23 discriminator 1
	beq	a5,zero,.L25
	.loc 2 254 16
	lw	a5,-20(s0)
	lw	a4,60(a5)
	.loc 2 254 12
	li	a5,511
	bleu	a4,a5,.L26
	.loc 2 255 17
	lw	a5,-28(s0)
	slli	a5,a5,2
	sw	a5,-28(s0)
	j	.L27
.L26:
	.loc 2 256 23
	lw	a5,-20(s0)
	lw	a4,60(a5)
	.loc 2 256 19
	li	a5,383
	bleu	a4,a5,.L27
	.loc 2 257 17
	lw	a5,-28(s0)
	slli	a5,a5,1
	sw	a5,-28(s0)
.L27:
	.loc 2 264 20
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 2 264 12
	beq	a5,zero,.L28
	.loc 2 265 20
	lw	a5,-24(s0)
	lw	a4,0(a5)
	.loc 2 265 31
	lui	a5,%hi(ecp_max_ops)
	lw	a5,%lo(ecp_max_ops)(a5)
	.loc 2 264 37 discriminator 1
	bgtu	a4,a5,.L29
	.loc 2 266 32
	lui	a5,%hi(ecp_max_ops)
	lw	a4,%lo(ecp_max_ops)(a5)
	.loc 2 266 40
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 2 266 32
	sub	a5,a4,a5
	.loc 2 265 45
	lw	a4,-28(s0)
	bleu	a4,a5,.L28
.L29:
	.loc 2 267 20
	li	a5,-20480
	addi	a5,a5,1280
	j	.L30
.L28:
	.loc 2 271 15
	lw	a5,-24(s0)
	lw	a4,0(a5)
	.loc 2 271 26
	lw	a5,-28(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	sw	a4,0(a5)
.L25:
	.loc 2 274 12
	li	a5,0
.L30:
	.loc 2 275 1
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
.LFE24:
	.size	mbedtls_ecp_check_budget, .-mbedtls_ecp_check_budget
	.section	.text.mpi_init_many,"ax",@progbits
	.align	1
	.type	mpi_init_many, @function
mpi_init_many:
.LFB25:
	.loc 2 319 1
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
	.loc 2 320 11
	j	.L32
.L33:
	.loc 2 321 9
	lw	a5,-20(s0)
	addi	a4,a5,8
	sw	a4,-20(s0)
	mv	a0,a5
	call	mbedtls_mpi_init
.L32:
	.loc 2 320 16
	lw	a5,-24(s0)
	addi	a4,a5,-1
	sw	a4,-24(s0)
	.loc 2 320 12
	bne	a5,zero,.L33
	.loc 2 323 1
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
.LFE25:
	.size	mpi_init_many, .-mpi_init_many
	.section	.text.mpi_free_many,"ax",@progbits
	.align	1
	.type	mpi_free_many, @function
mpi_free_many:
.LFB26:
	.loc 2 326 1
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
	.loc 2 327 11
	j	.L35
.L36:
	.loc 2 328 9
	lw	a5,-20(s0)
	addi	a4,a5,8
	sw	a4,-20(s0)
	mv	a0,a5
	call	mbedtls_mpi_free
.L35:
	.loc 2 327 16
	lw	a5,-24(s0)
	addi	a4,a5,-1
	sw	a4,-24(s0)
	.loc 2 327 12
	bne	a5,zero,.L36
	.loc 2 330 1
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
.LFE26:
	.size	mpi_free_many, .-mpi_free_many
	.section	.rodata
	.align	2
.LC14:
	.string	"secp521r1"
	.align	2
.LC15:
	.string	"brainpoolP512r1"
	.align	2
.LC16:
	.string	"secp384r1"
	.align	2
.LC17:
	.string	"brainpoolP384r1"
	.align	2
.LC18:
	.string	"secp256r1"
	.align	2
.LC19:
	.string	"secp256k1"
	.align	2
.LC20:
	.string	"brainpoolP256r1"
	.align	2
.LC21:
	.string	"secp224r1"
	.align	2
.LC22:
	.string	"secp224k1"
	.align	2
.LC23:
	.string	"secp192r1"
	.align	2
.LC24:
	.string	"secp192k1"
	.align	2
.LC25:
	.string	"x25519"
	.align	2
.LC26:
	.string	"x448"
	.section	.rodata.ecp_supported_curves,"a"
	.align	2
	.type	ecp_supported_curves, @object
	.size	ecp_supported_curves, 168
ecp_supported_curves:
	.byte	5
	.zero	1
	.half	25
	.half	521
	.zero	2
	.word	.LC14
	.byte	8
	.zero	1
	.half	28
	.half	512
	.zero	2
	.word	.LC15
	.byte	4
	.zero	1
	.half	24
	.half	384
	.zero	2
	.word	.LC16
	.byte	7
	.zero	1
	.half	27
	.half	384
	.zero	2
	.word	.LC17
	.byte	3
	.zero	1
	.half	23
	.half	256
	.zero	2
	.word	.LC18
	.byte	12
	.zero	1
	.half	22
	.half	256
	.zero	2
	.word	.LC19
	.byte	6
	.zero	1
	.half	26
	.half	256
	.zero	2
	.word	.LC20
	.byte	2
	.zero	1
	.half	21
	.half	224
	.zero	2
	.word	.LC21
	.byte	11
	.zero	1
	.half	20
	.half	224
	.zero	2
	.word	.LC22
	.byte	1
	.zero	1
	.half	19
	.half	192
	.zero	2
	.word	.LC23
	.byte	10
	.zero	1
	.half	18
	.half	192
	.zero	2
	.word	.LC24
	.byte	9
	.zero	1
	.half	29
	.half	256
	.zero	2
	.word	.LC25
	.byte	13
	.zero	1
	.half	30
	.half	448
	.zero	2
	.word	.LC26
	.byte	0
	.zero	1
	.half	0
	.half	0
	.zero	2
	.word	0
	.section	.bss.ecp_supported_grp_id,"aw",@nobits
	.align	2
	.type	ecp_supported_grp_id, @object
	.size	ecp_supported_grp_id, 14
ecp_supported_grp_id:
	.zero	14
	.section	.text.mbedtls_ecp_curve_list,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_curve_list
	.type	mbedtls_ecp_curve_list, @function
mbedtls_ecp_curve_list:
.LFB27:
	.loc 2 398 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 399 12
	lui	a5,%hi(ecp_supported_curves)
	addi	a5,a5,%lo(ecp_supported_curves)
	.loc 2 400 1
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
.LFE27:
	.size	mbedtls_ecp_curve_list, .-mbedtls_ecp_curve_list
	.section	.text.mbedtls_ecp_grp_id_list,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_grp_id_list
	.type	mbedtls_ecp_grp_id_list, @function
mbedtls_ecp_grp_id_list:
.LFB28:
	.loc 2 406 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 409 9
	lui	a5,%hi(init_done.1)
	lw	a5,%lo(init_done.1)(a5)
	.loc 2 409 8
	bne	a5,zero,.L40
.LBB6:
	.loc 2 410 16
	sw	zero,-20(s0)
	.loc 2 413 27
	call	mbedtls_ecp_curve_list
	sw	a0,-24(s0)
	.loc 2 413 9
	j	.L41
.L42:
	.loc 2 416 35
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 2 416 51
	lw	a4,-24(s0)
	lbu	a4,0(a4)
	.loc 2 416 39
	lui	a3,%hi(ecp_supported_grp_id)
	addi	a3,a3,%lo(ecp_supported_grp_id)
	add	a5,a3,a5
	sb	a4,0(a5)
	.loc 2 415 24
	lw	a5,-24(s0)
	addi	a5,a5,12
	sw	a5,-24(s0)
.L41:
	.loc 2 414 24
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 2 414 33
	bne	a5,zero,.L42
	.loc 2 418 33
	lui	a5,%hi(ecp_supported_grp_id)
	addi	a4,a5,%lo(ecp_supported_grp_id)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	.loc 2 420 19
	lui	a5,%hi(init_done.1)
	li	a4,1
	sw	a4,%lo(init_done.1)(a5)
.L40:
.LBE6:
	.loc 2 423 12
	lui	a5,%hi(ecp_supported_grp_id)
	addi	a5,a5,%lo(ecp_supported_grp_id)
	.loc 2 424 1
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
.LFE28:
	.size	mbedtls_ecp_grp_id_list, .-mbedtls_ecp_grp_id_list
	.section	.text.mbedtls_ecp_curve_info_from_grp_id,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_curve_info_from_grp_id
	.type	mbedtls_ecp_curve_info_from_grp_id, @function
mbedtls_ecp_curve_info_from_grp_id:
.LFB29:
	.loc 2 430 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 2 433 23
	call	mbedtls_ecp_curve_list
	sw	a0,-20(s0)
	.loc 2 433 5
	j	.L45
.L48:
	.loc 2 436 23
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 2 436 12
	lbu	a4,-33(s0)
	bne	a4,a5,.L46
	.loc 2 437 20
	lw	a5,-20(s0)
	j	.L47
.L46:
	.loc 2 435 20
	lw	a5,-20(s0)
	addi	a5,a5,12
	sw	a5,-20(s0)
.L45:
	.loc 2 434 20
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 2 434 29
	bne	a5,zero,.L48
	.loc 2 441 11
	li	a5,0
.L47:
	.loc 2 442 1
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
.LFE29:
	.size	mbedtls_ecp_curve_info_from_grp_id, .-mbedtls_ecp_curve_info_from_grp_id
	.section	.text.mbedtls_ecp_curve_info_from_tls_id,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_curve_info_from_tls_id
	.type	mbedtls_ecp_curve_info_from_tls_id, @function
mbedtls_ecp_curve_info_from_tls_id:
.LFB30:
	.loc 2 448 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sh	a5,-34(s0)
	.loc 2 451 23
	call	mbedtls_ecp_curve_list
	sw	a0,-20(s0)
	.loc 2 451 5
	j	.L50
.L53:
	.loc 2 454 23
	lw	a5,-20(s0)
	lhu	a5,2(a5)
	.loc 2 454 12
	lhu	a4,-34(s0)
	bne	a4,a5,.L51
	.loc 2 455 20
	lw	a5,-20(s0)
	j	.L52
.L51:
	.loc 2 453 20
	lw	a5,-20(s0)
	addi	a5,a5,12
	sw	a5,-20(s0)
.L50:
	.loc 2 452 20
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 2 452 29
	bne	a5,zero,.L53
	.loc 2 459 11
	li	a5,0
.L52:
	.loc 2 460 1
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
	.size	mbedtls_ecp_curve_info_from_tls_id, .-mbedtls_ecp_curve_info_from_tls_id
	.section	.text.mbedtls_ecp_curve_info_from_name,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_curve_info_from_name
	.type	mbedtls_ecp_curve_info_from_name, @function
mbedtls_ecp_curve_info_from_name:
.LFB31:
	.loc 2 466 1
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
	.loc 2 469 8
	lw	a5,-36(s0)
	bne	a5,zero,.L55
	.loc 2 470 15
	li	a5,0
	j	.L56
.L55:
	.loc 2 473 23
	call	mbedtls_ecp_curve_list
	sw	a0,-20(s0)
	.loc 2 473 5
	j	.L57
.L59:
	.loc 2 476 30
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 2 476 13
	lw	a1,-36(s0)
	mv	a0,a5
	call	strcmp
	mv	a5,a0
	.loc 2 476 12 discriminator 1
	bne	a5,zero,.L58
	.loc 2 477 20
	lw	a5,-20(s0)
	j	.L56
.L58:
	.loc 2 475 20
	lw	a5,-20(s0)
	addi	a5,a5,12
	sw	a5,-20(s0)
.L57:
	.loc 2 474 20
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 2 474 29
	bne	a5,zero,.L59
	.loc 2 481 11
	li	a5,0
.L56:
	.loc 2 482 1
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
	.size	mbedtls_ecp_curve_info_from_name, .-mbedtls_ecp_curve_info_from_name
	.section	.text.mbedtls_ecp_get_type,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_get_type
	.type	mbedtls_ecp_get_type, @function
mbedtls_ecp_get_type:
.LFB32:
	.loc 2 488 1
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
	.loc 2 489 17
	lw	a5,-20(s0)
	lw	a5,28(a5)
	.loc 2 489 8
	bne	a5,zero,.L61
	.loc 2 490 16
	li	a5,0
	j	.L62
.L61:
	.loc 2 493 17
	lw	a5,-20(s0)
	lw	a5,36(a5)
	.loc 2 493 8
	bne	a5,zero,.L63
	.loc 2 494 16
	li	a5,2
	j	.L62
.L63:
	.loc 2 496 16
	li	a5,1
.L62:
	.loc 2 498 1
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
.LFE32:
	.size	mbedtls_ecp_get_type, .-mbedtls_ecp_get_type
	.section	.text.mbedtls_ecp_point_init,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_point_init
	.type	mbedtls_ecp_point_init, @function
mbedtls_ecp_point_init:
.LFB33:
	.loc 2 504 1
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
	.loc 2 505 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 506 5
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 507 5
	lw	a5,-20(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 508 1
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
.LFE33:
	.size	mbedtls_ecp_point_init, .-mbedtls_ecp_point_init
	.section	.text.mbedtls_ecp_group_init,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_group_init
	.type	mbedtls_ecp_group_init, @function
mbedtls_ecp_group_init:
.LFB34:
	.loc 2 514 1
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
	.loc 2 515 13
	lw	a5,-20(s0)
	sb	zero,0(a5)
	.loc 2 516 5
	lw	a5,-20(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 517 5
	lw	a5,-20(s0)
	addi	a5,a5,12
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 518 5
	lw	a5,-20(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 519 5
	lw	a5,-20(s0)
	addi	a5,a5,28
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 520 5
	lw	a5,-20(s0)
	addi	a5,a5,52
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 521 16
	lw	a5,-20(s0)
	sw	zero,60(a5)
	.loc 2 522 16
	lw	a5,-20(s0)
	sw	zero,64(a5)
	.loc 2 523 12
	lw	a5,-20(s0)
	sw	zero,68(a5)
	.loc 2 524 15
	lw	a5,-20(s0)
	sw	zero,72(a5)
	.loc 2 525 16
	lw	a5,-20(s0)
	sw	zero,76(a5)
	.loc 2 526 17
	lw	a5,-20(s0)
	sw	zero,80(a5)
	.loc 2 527 17
	lw	a5,-20(s0)
	sw	zero,84(a5)
	.loc 2 528 12
	lw	a5,-20(s0)
	sw	zero,88(a5)
	.loc 2 529 17
	lw	a5,-20(s0)
	sw	zero,92(a5)
	.loc 2 530 1
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
.LFE34:
	.size	mbedtls_ecp_group_init, .-mbedtls_ecp_group_init
	.section	.text.mbedtls_ecp_keypair_init,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_keypair_init
	.type	mbedtls_ecp_keypair_init, @function
mbedtls_ecp_keypair_init:
.LFB35:
	.loc 2 536 1
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
	.loc 2 537 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_ecp_group_init
	.loc 2 538 5
	lw	a5,-20(s0)
	addi	a5,a5,96
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 539 5
	lw	a5,-20(s0)
	addi	a5,a5,104
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 540 1
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
.LFE35:
	.size	mbedtls_ecp_keypair_init, .-mbedtls_ecp_keypair_init
	.section	.text.mbedtls_ecp_point_free,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_point_free
	.type	mbedtls_ecp_point_free, @function
mbedtls_ecp_point_free:
.LFB36:
	.loc 2 546 1
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
	.loc 2 547 8
	lw	a5,-20(s0)
	beq	a5,zero,.L70
	.loc 2 551 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 552 5
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 553 5
	lw	a5,-20(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	mbedtls_mpi_free
	j	.L67
.L70:
	.loc 2 548 9
	nop
.L67:
	.loc 2 554 1
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
	.size	mbedtls_ecp_point_free, .-mbedtls_ecp_point_free
	.section	.text.ecp_group_is_static_comb_table,"ax",@progbits
	.align	1
	.type	ecp_group_is_static_comb_table, @function
ecp_group_is_static_comb_table:
.LFB37:
	.loc 2 560 1
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
	.loc 2 562 15
	lw	a5,-20(s0)
	lw	a5,88(a5)
	.loc 2 562 26
	beq	a5,zero,.L72
	.loc 2 562 32 discriminator 1
	lw	a5,-20(s0)
	lw	a5,92(a5)
	.loc 2 562 26 discriminator 1
	bne	a5,zero,.L72
	.loc 2 562 26 is_stmt 0 discriminator 3
	li	a5,1
	.loc 2 562 26
	j	.L74
.L72:
	.loc 2 562 26 discriminator 4
	li	a5,0
.L74:
	.loc 2 567 1 is_stmt 1
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
.LFE37:
	.size	ecp_group_is_static_comb_table, .-ecp_group_is_static_comb_table
	.section	.text.mbedtls_ecp_group_free,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_group_free
	.type	mbedtls_ecp_group_free, @function
mbedtls_ecp_group_free:
.LFB38:
	.loc 2 573 1
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
	.loc 2 576 8
	lw	a5,-36(s0)
	beq	a5,zero,.L82
	.loc 2 580 12
	lw	a5,-36(s0)
	lw	a4,68(a5)
	.loc 2 580 8
	li	a5,1
	beq	a4,a5,.L78
	.loc 2 581 9
	lw	a5,-36(s0)
	addi	a5,a5,12
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 582 9
	lw	a5,-36(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 583 9
	lw	a5,-36(s0)
	addi	a5,a5,28
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 586 9
	lw	a5,-36(s0)
	addi	a5,a5,52
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 587 9
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	mbedtls_mpi_free
.L78:
	.loc 2 591 10
	lw	a0,-36(s0)
	call	ecp_group_is_static_comb_table
	mv	a5,a0
	.loc 2 591 8 discriminator 1
	bne	a5,zero,.L79
	.loc 2 591 52 discriminator 2
	lw	a5,-36(s0)
	lw	a5,88(a5)
	.loc 2 591 46 discriminator 2
	beq	a5,zero,.L79
	.loc 2 592 16
	sw	zero,-20(s0)
	.loc 2 592 9
	j	.L80
.L81:
	.loc 2 593 40
	lw	a5,-36(s0)
	lw	a3,88(a5)
	.loc 2 593 43
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	.loc 2 593 13
	add	a5,a3,a5
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 592 39 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L80:
	.loc 2 592 28 discriminator 1
	lw	a5,-36(s0)
	lw	a5,92(a5)
	.loc 2 592 23 discriminator 1
	lw	a4,-20(s0)
	bltu	a4,a5,.L81
	.loc 2 595 17
	lw	a5,-36(s0)
	lw	a5,88(a5)
	.loc 2 595 9
	mv	a0,a5
	call	free
.L79:
	.loc 2 598 5
	li	a1,96
	lw	a0,-36(s0)
	call	mbedtls_platform_zeroize
	j	.L75
.L82:
	.loc 2 577 9
	nop
.L75:
	.loc 2 599 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE38:
	.size	mbedtls_ecp_group_free, .-mbedtls_ecp_group_free
	.section	.text.mbedtls_ecp_keypair_free,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_keypair_free
	.type	mbedtls_ecp_keypair_free, @function
mbedtls_ecp_keypair_free:
.LFB39:
	.loc 2 605 1
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
	.loc 2 606 8
	lw	a5,-20(s0)
	beq	a5,zero,.L86
	.loc 2 610 5
	lw	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_ecp_group_free
	.loc 2 611 5
	lw	a5,-20(s0)
	addi	a5,a5,96
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 612 5
	lw	a5,-20(s0)
	addi	a5,a5,104
	mv	a0,a5
	call	mbedtls_ecp_point_free
	j	.L83
.L86:
	.loc 2 607 9
	nop
.L83:
	.loc 2 613 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE39:
	.size	mbedtls_ecp_keypair_free, .-mbedtls_ecp_keypair_free
	.section	.text.mbedtls_ecp_copy,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_copy
	.type	mbedtls_ecp_copy, @function
mbedtls_ecp_copy:
.LFB40:
	.loc 2 619 1
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
	.loc 2 620 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 621 22
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 621 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L92
	.loc 2 622 22
	lw	a5,-36(s0)
	addi	a4,a5,8
	lw	a5,-40(s0)
	addi	a5,a5,8
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 622 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L93
	.loc 2 623 22
	lw	a5,-36(s0)
	addi	a4,a5,16
	lw	a5,-40(s0)
	addi	a5,a5,16
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 625 1
	j	.L89
.L92:
	.loc 2 621 61
	nop
	j	.L89
.L93:
	.loc 2 622 61
	nop
.L89:
	.loc 2 626 12
	lw	a5,-20(s0)
	.loc 2 627 1
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
	.size	mbedtls_ecp_copy, .-mbedtls_ecp_copy
	.section	.text.mbedtls_ecp_group_copy,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_group_copy
	.type	mbedtls_ecp_group_copy, @function
mbedtls_ecp_group_copy:
.LFB41:
	.loc 2 633 1
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
	.loc 2 634 43
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 2 634 12
	mv	a1,a5
	lw	a0,-20(s0)
	call	mbedtls_ecp_group_load
	mv	a5,a0
	.loc 2 635 1
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
.LFE41:
	.size	mbedtls_ecp_group_copy, .-mbedtls_ecp_group_copy
	.section	.text.mbedtls_ecp_set_zero,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_set_zero
	.type	mbedtls_ecp_set_zero, @function
mbedtls_ecp_set_zero:
.LFB42:
	.loc 2 641 1
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
	.loc 2 642 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 643 22
	lw	a5,-36(s0)
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 643 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L101
	.loc 2 644 22
	lw	a5,-36(s0)
	addi	a5,a5,8
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 644 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L102
	.loc 2 645 22
	lw	a5,-36(s0)
	addi	a5,a5,16
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 647 1
	j	.L98
.L101:
	.loc 2 643 58
	nop
	j	.L98
.L102:
	.loc 2 644 58
	nop
.L98:
	.loc 2 648 12
	lw	a5,-20(s0)
	.loc 2 649 1
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
	.size	mbedtls_ecp_set_zero, .-mbedtls_ecp_set_zero
	.section	.text.mbedtls_ecp_is_zero,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_is_zero
	.type	mbedtls_ecp_is_zero, @function
mbedtls_ecp_is_zero:
.LFB43:
	.loc 2 655 1
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
	.loc 2 656 32
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 2 656 12
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 656 43 discriminator 1
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 2 657 1
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
.LFE43:
	.size	mbedtls_ecp_is_zero, .-mbedtls_ecp_is_zero
	.section	.text.mbedtls_ecp_point_cmp,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_point_cmp
	.type	mbedtls_ecp_point_cmp, @function
mbedtls_ecp_point_cmp:
.LFB44:
	.loc 2 664 1
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
	.loc 2 665 9
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 665 8 discriminator 1
	bne	a5,zero,.L106
	.loc 2 666 9
	lw	a5,-20(s0)
	addi	a4,a5,8
	lw	a5,-24(s0)
	addi	a5,a5,8
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 665 48 discriminator 2
	bne	a5,zero,.L106
	.loc 2 667 9
	lw	a5,-20(s0)
	addi	a4,a5,16
	lw	a5,-24(s0)
	addi	a5,a5,16
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 666 48
	bne	a5,zero,.L106
	.loc 2 668 16
	li	a5,0
	j	.L107
.L106:
	.loc 2 671 12
	li	a5,-20480
	addi	a5,a5,128
.L107:
	.loc 2 672 1
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
.LFE44:
	.size	mbedtls_ecp_point_cmp, .-mbedtls_ecp_point_cmp
	.section	.text.mbedtls_ecp_point_read_string,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_point_read_string
	.type	mbedtls_ecp_point_read_string, @function
mbedtls_ecp_point_read_string:
.LFB45:
	.loc 2 679 1
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
	.loc 2 680 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 681 22
	lw	a5,-36(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_mpi_read_string
	sw	a0,-20(s0)
	.loc 2 681 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L113
	.loc 2 682 22
	lw	a5,-36(s0)
	addi	a5,a5,8
	lw	a2,-48(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_mpi_read_string
	sw	a0,-20(s0)
	.loc 2 682 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L114
	.loc 2 683 22
	lw	a5,-36(s0)
	addi	a5,a5,16
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 685 1
	j	.L110
.L113:
	.loc 2 681 71
	nop
	j	.L110
.L114:
	.loc 2 682 71
	nop
.L110:
	.loc 2 686 12
	lw	a5,-20(s0)
	.loc 2 687 1
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
.LFE45:
	.size	mbedtls_ecp_point_read_string, .-mbedtls_ecp_point_read_string
	.section	.text.mbedtls_ecp_point_write_binary,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_point_write_binary
	.type	mbedtls_ecp_point_write_binary, @function
mbedtls_ecp_point_write_binary:
.LFB46:
	.loc 2 696 1
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
	.loc 2 697 9
	li	a5,-20480
	addi	a5,a5,384
	sw	a5,-20(s0)
	.loc 2 699 8
	lw	a5,-44(s0)
	beq	a5,zero,.L116
	.loc 2 699 21 discriminator 1
	lw	a4,-44(s0)
	li	a5,1
	beq	a4,a5,.L116
	.loc 2 701 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L117
.L116:
	.loc 2 704 12
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	mbedtls_mpi_size
	sw	a0,-24(s0)
	.loc 2 708 9
	lw	a0,-36(s0)
	call	mbedtls_ecp_get_type
	mv	a5,a0
	mv	a4,a5
	.loc 2 708 8 discriminator 1
	li	a5,2
	bne	a4,a5,.L118
	.loc 2 709 15
	lw	a5,-48(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 2 710 22
	lw	a5,-48(s0)
	lw	a5,0(a5)
	.loc 2 710 12
	lw	a4,-56(s0)
	bgeu	a4,a5,.L119
	.loc 2 711 20
	li	a5,-20480
	addi	a5,a5,256
	j	.L117
.L119:
	.loc 2 714 26
	lw	a5,-40(s0)
	lw	a2,-24(s0)
	lw	a1,-52(s0)
	mv	a0,a5
	call	mbedtls_mpi_write_binary_le
	sw	a0,-20(s0)
	.loc 2 714 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L127
.L118:
	.loc 2 718 9
	lw	a0,-36(s0)
	call	mbedtls_ecp_get_type
	mv	a5,a0
	mv	a4,a5
	.loc 2 718 8 discriminator 1
	li	a5,1
	bne	a4,a5,.L128
	.loc 2 722 13
	lw	a5,-40(s0)
	addi	a5,a5,16
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 722 12 discriminator 1
	bne	a5,zero,.L121
	.loc 2 723 16
	lw	a5,-56(s0)
	bne	a5,zero,.L122
	.loc 2 724 24
	li	a5,-20480
	addi	a5,a5,256
	j	.L117
.L122:
	.loc 2 727 20
	lw	a5,-52(s0)
	sb	zero,0(a5)
	.loc 2 728 19
	lw	a5,-48(s0)
	li	a4,1
	sw	a4,0(a5)
	.loc 2 730 20
	li	a5,0
	j	.L117
.L121:
	.loc 2 733 12
	lw	a5,-44(s0)
	bne	a5,zero,.L123
	.loc 2 734 23
	lw	a5,-24(s0)
	slli	a5,a5,1
	.loc 2 734 30
	addi	a4,a5,1
	.loc 2 734 19
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 2 736 26
	lw	a5,-48(s0)
	lw	a5,0(a5)
	.loc 2 736 16
	lw	a4,-56(s0)
	bgeu	a4,a5,.L124
	.loc 2 737 24
	li	a5,-20480
	addi	a5,a5,256
	j	.L117
.L124:
	.loc 2 740 20
	lw	a5,-52(s0)
	li	a4,4
	sb	a4,0(a5)
	.loc 2 741 30
	lw	a4,-40(s0)
	lw	a5,-52(s0)
	addi	a5,a5,1
	lw	a2,-24(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	.loc 2 741 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L129
	.loc 2 742 30
	lw	a5,-40(s0)
	addi	a3,a5,8
	.loc 2 742 70
	lw	a5,-24(s0)
	addi	a5,a5,1
	.loc 2 742 30
	lw	a4,-52(s0)
	add	a5,a4,a5
	lw	a2,-24(s0)
	mv	a1,a5
	mv	a0,a3
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	j	.L120
.L123:
	.loc 2 743 19
	lw	a4,-44(s0)
	li	a5,1
	bne	a4,a5,.L128
	.loc 2 744 26
	lw	a5,-24(s0)
	addi	a4,a5,1
	.loc 2 744 19
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 2 746 26
	lw	a5,-48(s0)
	lw	a5,0(a5)
	.loc 2 746 16
	lw	a4,-56(s0)
	bgeu	a4,a5,.L126
	.loc 2 747 24
	li	a5,-20480
	addi	a5,a5,256
	j	.L117
.L126:
	.loc 2 750 29
	lw	a5,-40(s0)
	addi	a5,a5,8
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_get_bit
	mv	a5,a0
	.loc 2 750 27 discriminator 1
	andi	a5,a5,0xff
	addi	a5,a5,2
	andi	a4,a5,0xff
	.loc 2 750 20 discriminator 1
	lw	a5,-52(s0)
	sb	a4,0(a5)
	.loc 2 751 30
	lw	a4,-40(s0)
	lw	a5,-52(s0)
	addi	a5,a5,1
	lw	a2,-24(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_write_binary
	sw	a0,-20(s0)
	.loc 2 756 1
	j	.L128
.L127:
	.loc 2 714 80
	nop
	j	.L120
.L128:
	.loc 2 756 1
	nop
	j	.L120
.L129:
	.loc 2 741 85
	nop
.L120:
	.loc 2 757 12
	lw	a5,-20(s0)
.L117:
	.loc 2 758 1
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
.LFE46:
	.size	mbedtls_ecp_point_write_binary, .-mbedtls_ecp_point_write_binary
	.section	.text.mbedtls_ecp_point_read_binary,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_point_read_binary
	.type	mbedtls_ecp_point_read_binary, @function
mbedtls_ecp_point_read_binary:
.LFB47:
	.loc 2 773 1
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
	.loc 2 774 9
	li	a5,-20480
	addi	a5,a5,384
	sw	a5,-20(s0)
	.loc 2 776 8
	lw	a5,-48(s0)
	bne	a5,zero,.L131
	.loc 2 777 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L132
.L131:
	.loc 2 780 12
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	mbedtls_mpi_size
	sw	a0,-24(s0)
	.loc 2 783 9
	lw	a0,-36(s0)
	call	mbedtls_ecp_get_type
	mv	a5,a0
	mv	a4,a5
	.loc 2 783 8 discriminator 1
	li	a5,2
	bne	a4,a5,.L133
	.loc 2 784 12
	lw	a4,-24(s0)
	lw	a5,-48(s0)
	beq	a4,a5,.L134
	.loc 2 785 20
	li	a5,-20480
	addi	a5,a5,128
	j	.L132
.L134:
	.loc 2 788 26
	lw	a5,-40(s0)
	lw	a2,-24(s0)
	lw	a1,-44(s0)
	mv	a0,a5
	call	mbedtls_mpi_read_binary_le
	sw	a0,-20(s0)
	.loc 2 788 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L148
	.loc 2 789 9
	lw	a5,-40(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 791 16
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	.loc 2 791 12
	li	a5,9
	bne	a4,a5,.L137
	.loc 2 793 30
	lw	a4,-40(s0)
	.loc 2 793 63
	lw	a5,-24(s0)
	slli	a5,a5,3
	.loc 2 793 30
	addi	a5,a5,-1
	li	a2,0
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_set_bit
	sw	a0,-20(s0)
	.loc 2 793 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L149
.L137:
	.loc 2 796 26
	lw	a5,-40(s0)
	addi	a5,a5,16
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 796 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L150
.L133:
	.loc 2 800 9
	lw	a0,-36(s0)
	call	mbedtls_ecp_get_type
	mv	a5,a0
	mv	a4,a5
	.loc 2 800 8 discriminator 1
	li	a5,1
	bne	a4,a5,.L151
	.loc 2 801 16
	lw	a5,-44(s0)
	lbu	a5,0(a5)
	.loc 2 801 12
	bne	a5,zero,.L138
	.loc 2 802 16
	lw	a4,-48(s0)
	li	a5,1
	bne	a4,a5,.L139
	.loc 2 803 24
	lw	a0,-40(s0)
	call	mbedtls_ecp_set_zero
	mv	a5,a0
	j	.L132
.L139:
	.loc 2 805 24
	li	a5,-20480
	addi	a5,a5,128
	j	.L132
.L138:
	.loc 2 809 22
	lw	a5,-24(s0)
	addi	a5,a5,1
	.loc 2 809 12
	lw	a4,-48(s0)
	bgeu	a4,a5,.L140
	.loc 2 810 20
	li	a5,-20480
	addi	a5,a5,128
	j	.L132
.L140:
	.loc 2 813 26
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	addi	a5,a5,1
	lw	a2,-24(s0)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 2 813 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L152
	.loc 2 814 26
	lw	a5,-40(s0)
	addi	a5,a5,16
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 814 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L153
	.loc 2 816 16
	lw	a5,-44(s0)
	lbu	a4,0(a5)
	.loc 2 816 12
	li	a5,4
	bne	a4,a5,.L143
	.loc 2 818 34
	lw	a5,-24(s0)
	slli	a5,a5,1
	.loc 2 818 27
	addi	a5,a5,1
	.loc 2 818 16
	lw	a4,-48(s0)
	beq	a4,a5,.L144
	.loc 2 819 24
	li	a5,-20480
	addi	a5,a5,128
	j	.L132
.L144:
	.loc 2 821 20
	lw	a5,-40(s0)
	addi	a3,a5,8
	.loc 2 821 60
	lw	a5,-24(s0)
	addi	a5,a5,1
	.loc 2 821 20
	lw	a4,-44(s0)
	add	a5,a4,a5
	lw	a2,-24(s0)
	mv	a1,a5
	mv	a0,a3
	call	mbedtls_mpi_read_binary
	mv	a5,a0
	j	.L132
.L143:
	.loc 2 822 23
	lw	a5,-44(s0)
	lbu	a4,0(a5)
	.loc 2 822 19
	li	a5,2
	beq	a4,a5,.L145
	.loc 2 822 41 discriminator 1
	lw	a5,-44(s0)
	lbu	a4,0(a5)
	.loc 2 822 35 discriminator 1
	li	a5,3
	bne	a4,a5,.L146
.L145:
	.loc 2 824 27
	lw	a5,-24(s0)
	addi	a5,a5,1
	.loc 2 824 16
	lw	a4,-48(s0)
	beq	a4,a5,.L147
	.loc 2 825 24
	li	a5,-20480
	addi	a5,a5,128
	j	.L132
.L147:
	.loc 2 827 49
	lw	a4,-40(s0)
	.loc 2 827 20
	lw	a5,-40(s0)
	addi	a2,a5,8
	.loc 2 828 48
	lw	a5,-44(s0)
	lbu	a5,0(a5)
	.loc 2 827 20
	andi	a5,a5,1
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_ecp_sw_derive_y
	mv	a5,a0
	j	.L132
.L146:
	.loc 2 830 20
	li	a5,-20480
	addi	a5,a5,128
	j	.L132
.L148:
	.loc 2 788 80
	nop
	j	.L136
.L149:
	.loc 2 793 83
	nop
	j	.L136
.L150:
	.loc 2 796 62
	nop
	j	.L136
.L151:
	.loc 2 835 1
	nop
	j	.L136
.L152:
	.loc 2 813 81
	nop
	j	.L136
.L153:
	.loc 2 814 62
	nop
.L136:
	.loc 2 836 12
	lw	a5,-20(s0)
.L132:
	.loc 2 837 1
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
.LFE47:
	.size	mbedtls_ecp_point_read_binary, .-mbedtls_ecp_point_read_binary
	.section	.text.mbedtls_ecp_tls_read_point,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_tls_read_point
	.type	mbedtls_ecp_tls_read_point, @function
mbedtls_ecp_tls_read_point:
.LFB48:
	.loc 2 848 1
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
	.loc 2 854 8
	lw	a4,-48(s0)
	li	a5,1
	bgtu	a4,a5,.L155
	.loc 2 855 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L156
.L155:
	.loc 2 858 18
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 2 858 23
	addi	a3,a5,1
	lw	a4,-44(s0)
	sw	a3,0(a4)
	.loc 2 858 14
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	.loc 2 859 8
	lbu	a5,-17(s0)
	beq	a5,zero,.L157
	.loc 2 859 34 discriminator 1
	lbu	a4,-17(s0)
	.loc 2 859 44 discriminator 1
	lw	a5,-48(s0)
	addi	a5,a5,-1
	.loc 2 859 22 discriminator 1
	bleu	a4,a5,.L158
.L157:
	.loc 2 860 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L156
.L158:
	.loc 2 866 15
	lw	a5,-44(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 2 867 5
	lw	a5,-44(s0)
	lw	a4,0(a5)
	.loc 2 867 10
	lbu	a5,-17(s0)
	add	a4,a4,a5
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 2 869 12
	lbu	a5,-17(s0)
	mv	a3,a5
	lw	a2,-24(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_ecp_point_read_binary
	mv	a5,a0
.L156:
	.loc 2 870 1
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
.LFE48:
	.size	mbedtls_ecp_tls_read_point, .-mbedtls_ecp_tls_read_point
	.section	.text.mbedtls_ecp_tls_write_point,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_tls_write_point
	.type	mbedtls_ecp_tls_write_point, @function
mbedtls_ecp_tls_write_point:
.LFB49:
	.loc 2 881 1
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
	.loc 2 882 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 883 8
	lw	a5,-44(s0)
	beq	a5,zero,.L160
	.loc 2 883 21 discriminator 1
	lw	a4,-44(s0)
	li	a5,1
	beq	a4,a5,.L160
	.loc 2 885 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L161
.L160:
	.loc 2 891 8
	lw	a5,-56(s0)
	bne	a5,zero,.L162
	.loc 2 892 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L161
.L162:
	.loc 2 895 16
	lw	a5,-52(s0)
	addi	a4,a5,1
	lw	a5,-56(s0)
	addi	a5,a5,-1
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_ecp_point_write_binary
	sw	a0,-20(s0)
	.loc 2 895 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L163
	.loc 2 897 16
	lw	a5,-20(s0)
	j	.L161
.L163:
	.loc 2 903 30
	lw	a5,-48(s0)
	lw	a5,0(a5)
	.loc 2 903 14
	andi	a4,a5,0xff
	.loc 2 903 12
	lw	a5,-52(s0)
	sb	a4,0(a5)
	.loc 2 904 7
	lw	a5,-48(s0)
	lw	a5,0(a5)
	.loc 2 904 5
	addi	a4,a5,1
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 2 906 12
	li	a5,0
.L161:
	.loc 2 907 1
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
.LFE49:
	.size	mbedtls_ecp_tls_write_point, .-mbedtls_ecp_tls_write_point
	.section	.text.mbedtls_ecp_tls_read_group,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_tls_read_group
	.type	mbedtls_ecp_tls_read_group, @function
mbedtls_ecp_tls_read_group:
.LFB50:
	.loc 2 914 1
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
	.loc 2 915 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 917 16
	addi	a5,s0,-21
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_ecp_tls_read_group_id
	sw	a0,-20(s0)
	.loc 2 917 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L165
	.loc 2 918 16
	lw	a5,-20(s0)
	j	.L167
.L165:
	.loc 2 921 12
	lbu	a5,-21(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_ecp_group_load
	mv	a5,a0
.L167:
	.loc 2 922 1
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
.LFE50:
	.size	mbedtls_ecp_tls_read_group, .-mbedtls_ecp_tls_read_group
	.section	.text.mbedtls_ecp_tls_read_group_id,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_tls_read_group_id
	.type	mbedtls_ecp_tls_read_group_id, @function
mbedtls_ecp_tls_read_group_id:
.LFB51:
	.loc 2 930 1
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
	.loc 2 936 8
	lw	a4,-60(s0)
	li	a5,2
	bgtu	a4,a5,.L169
	.loc 2 937 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L170
.L169:
	.loc 2 943 11
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 2 943 16
	addi	a3,a5,1
	lw	a4,-56(s0)
	sw	a3,0(a4)
	.loc 2 943 9
	lbu	a4,0(a5)
	.loc 2 943 8
	li	a5,3
	beq	a4,a5,.L171
	.loc 2 944 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L170
.L171:
	.loc 2 950 84
	lw	a5,-56(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
.LBB7:
.LBB8:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/alignment.h"
	.loc 3 122 33
	lw	a5,-28(s0)
	sw	a5,-32(s0)
	.loc 3 123 7
	lw	a5,-32(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-34(s0)
	.loc 3 127 12
	lhu	a5,-34(s0)
.LBE8:
.LBE7:
	.loc 2 950 66 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	sh	a5,-18(s0)
	.loc 2 951 5
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 2 951 10
	addi	a4,a5,2
	lw	a5,-56(s0)
	sw	a4,0(a5)
	.loc 2 953 23
	lhu	a5,-18(s0)
	mv	a0,a5
	call	mbedtls_ecp_curve_info_from_tls_id
	sw	a0,-24(s0)
	.loc 2 953 8 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L173
	.loc 2 954 16
	li	a5,-20480
	addi	a5,a5,384
	j	.L170
.L173:
	.loc 2 957 22
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	.loc 2 957 10
	lw	a5,-52(s0)
	sb	a4,0(a5)
	.loc 2 959 12
	li	a5,0
.L170:
	.loc 2 960 1
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
.LFE51:
	.size	mbedtls_ecp_tls_read_group_id, .-mbedtls_ecp_tls_read_group_id
	.section	.text.mbedtls_ecp_tls_write_group,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_tls_write_group
	.type	mbedtls_ecp_tls_write_group, @function
mbedtls_ecp_tls_write_group:
.LFB52:
	.loc 2 967 1
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
	.loc 2 969 61
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 2 969 23
	mv	a0,a5
	call	mbedtls_ecp_curve_info_from_grp_id
	sw	a0,-20(s0)
	.loc 2 969 8 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L175
	.loc 2 970 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L176
.L175:
	.loc 2 976 11
	lw	a5,-40(s0)
	li	a4,3
	sw	a4,0(a5)
	.loc 2 977 16
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 2 977 8
	lw	a4,-48(s0)
	bgeu	a4,a5,.L177
	.loc 2 978 16
	li	a5,-20480
	addi	a5,a5,256
	j	.L176
.L177:
	.loc 2 984 9
	lw	a5,-44(s0)
	addi	a4,a5,1
	sw	a4,-44(s0)
	.loc 2 984 12
	li	a4,3
	sb	a4,0(a5)
	.loc 2 989 183 discriminator 2
	lw	a5,-20(s0)
	lhu	a5,2(a5)
	.loc 2 989 143 discriminator 2
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	lw	a4,-44(s0)
	sw	a4,-24(s0)
	sh	a5,-26(s0)
.LBB9:
.LBB10:
	.loc 3 148 33
	lw	a5,-24(s0)
	sw	a5,-32(s0)
	.loc 3 149 12
	lw	a5,-32(s0)
	lhu	a4,-26(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-26(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 3 153 1
	nop
.LBE10:
.LBE9:
	.loc 2 991 12
	li	a5,0
.L176:
	.loc 2 992 1
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
.LFE52:
	.size	mbedtls_ecp_tls_write_group, .-mbedtls_ecp_tls_write_group
	.section	.text.ecp_modp,"ax",@progbits
	.align	1
	.type	ecp_modp, @function
ecp_modp:
.LFB53:
	.loc 2 1001 1
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
	.loc 2 1002 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1004 12
	lw	a5,-40(s0)
	lw	a5,72(a5)
	.loc 2 1004 8
	bne	a5,zero,.L179
	.loc 2 1005 16
	lw	a5,-40(s0)
	addi	a5,a5,4
	mv	a2,a5
	lw	a1,-36(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_mod_mpi
	mv	a5,a0
	j	.L180
.L179:
	.loc 2 1009 11
	lw	a5,-36(s0)
	lh	a5,4(a5)
	.loc 2 1009 8
	bge	a5,zero,.L181
	.loc 2 1009 22 discriminator 1
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 1009 19 discriminator 3
	bne	a5,zero,.L182
.L181:
	.loc 2 1010 9
	lw	a0,-36(s0)
	call	mbedtls_mpi_bitlen
	mv	a4,a0
	.loc 2 1010 40 discriminator 1
	lw	a5,-40(s0)
	lw	a5,60(a5)
	.loc 2 1010 35 discriminator 1
	slli	a5,a5,1
	.loc 2 1009 54 discriminator 4
	bleu	a4,a5,.L183
.L182:
	.loc 2 1011 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L180
.L183:
	.loc 2 1014 25
	lw	a5,-40(s0)
	lw	a5,72(a5)
	.loc 2 1014 22
	lw	a0,-36(s0)
	jalr	a5
.LVL0:
	sw	a0,-20(s0)
	.loc 2 1014 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L191
	.loc 2 1017 11
	j	.L186
.L188:
	.loc 2 1018 26
	lw	a5,-40(s0)
	addi	a5,a5,4
	mv	a2,a5
	lw	a1,-36(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_add_mpi
	sw	a0,-20(s0)
	.loc 2 1018 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L192
.L186:
	.loc 2 1017 13
	lw	a5,-36(s0)
	lh	a5,4(a5)
	.loc 2 1017 21
	bge	a5,zero,.L189
	.loc 2 1017 24 discriminator 1
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 1017 21 discriminator 2
	bne	a5,zero,.L188
	.loc 2 1021 11
	j	.L189
.L190:
	.loc 2 1023 26
	lw	a5,-40(s0)
	addi	a5,a5,4
	mv	a2,a5
	lw	a1,-36(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_sub_abs
	sw	a0,-20(s0)
	.loc 2 1023 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L193
.L189:
	.loc 2 1021 12
	lw	a5,-40(s0)
	addi	a5,a5,4
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 1021 44 discriminator 1
	bge	a5,zero,.L190
	.loc 2 1026 1
	j	.L185
.L191:
	.loc 2 1014 43
	nop
	j	.L185
.L192:
	.loc 2 1018 69
	nop
	j	.L185
.L193:
	.loc 2 1023 69
	nop
.L185:
	.loc 2 1027 12
	lw	a5,-20(s0)
.L180:
	.loc 2 1028 1
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
.LFE53:
	.size	ecp_modp, .-ecp_modp
	.section	.text.mbedtls_mpi_mul_mod,"ax",@progbits
	.align	1
	.type	mbedtls_mpi_mul_mod, @function
mbedtls_mpi_mul_mod:
.LFB54:
	.loc 2 1060 1
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
	.loc 2 1061 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1062 22
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	mbedtls_mpi_mul_mpi
	sw	a0,-20(s0)
	.loc 2 1062 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L199
	.loc 2 1063 27
	lw	a1,-36(s0)
	lw	a0,-40(s0)
	call	ecp_modp
	sw	a0,-20(s0)
	.loc 2 1063 18 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L200
	.loc 2 1063 92 discriminator 3
	lui	a5,%hi(mul_count)
	lw	a5,%lo(mul_count)(a5)
	addi	a4,a5,1
	lui	a5,%hi(mul_count)
	sw	a4,%lo(mul_count)(a5)
	j	.L196
.L199:
	.loc 2 1062 59
	nop
	j	.L196
.L200:
	.loc 2 1063 56
	nop
.L196:
	.loc 2 1065 12
	lw	a5,-20(s0)
	.loc 2 1066 1
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
.LFE54:
	.size	mbedtls_mpi_mul_mod, .-mbedtls_mpi_mul_mod
	.section	.text.mbedtls_mpi_sub_mod,"ax",@progbits
	.align	1
	.type	mbedtls_mpi_sub_mod, @function
mbedtls_mpi_sub_mod:
.LFB55:
	.loc 2 1083 1
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
	.loc 2 1084 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1085 22
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	mbedtls_mpi_sub_mpi
	sw	a0,-20(s0)
	.loc 2 1085 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L207
	.loc 2 1086 16
	j	.L204
.L205:
	.loc 2 1086 82 discriminator 6
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-40(s0)
	call	mbedtls_mpi_add_mpi
	sw	a0,-20(s0)
	.loc 2 1086 73 discriminator 6
	lw	a5,-20(s0)
	bne	a5,zero,.L208
.L204:
	.loc 2 1086 20 discriminator 3
	lw	a5,-40(s0)
	lh	a5,4(a5)
	.loc 2 1086 28 discriminator 3
	bge	a5,zero,.L209
	.loc 2 1086 31 discriminator 4
	li	a1,0
	lw	a0,-40(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 1086 28 discriminator 5
	bne	a5,zero,.L205
	.loc 2 1087 1
	j	.L209
.L207:
	.loc 2 1085 59
	nop
	j	.L203
.L208:
	.loc 2 1086 129
	nop
	j	.L203
.L209:
	.loc 2 1087 1
	nop
.L203:
	.loc 2 1088 12
	lw	a5,-20(s0)
	.loc 2 1089 1
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
.LFE55:
	.size	mbedtls_mpi_sub_mod, .-mbedtls_mpi_sub_mod
	.section	.text.mbedtls_mpi_add_mod,"ax",@progbits
	.align	1
	.type	mbedtls_mpi_add_mod, @function
mbedtls_mpi_add_mod:
.LFB56:
	.loc 2 1104 1
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
	.loc 2 1105 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1106 22
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	mbedtls_mpi_add_mpi
	sw	a0,-20(s0)
	.loc 2 1106 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L216
	.loc 2 1107 11
	j	.L213
.L214:
	.loc 2 1107 69 discriminator 5
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-40(s0)
	call	mbedtls_mpi_sub_abs
	sw	a0,-20(s0)
	.loc 2 1107 60 discriminator 5
	lw	a5,-20(s0)
	bne	a5,zero,.L217
.L213:
	.loc 2 1107 12 discriminator 3
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a1,a5
	lw	a0,-40(s0)
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 1107 46 discriminator 4
	bge	a5,zero,.L214
	.loc 2 1108 1
	j	.L212
.L216:
	.loc 2 1106 59
	nop
	j	.L212
.L217:
	.loc 2 1107 116
	nop
.L212:
	.loc 2 1109 12
	lw	a5,-20(s0)
	.loc 2 1110 1
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
.LFE56:
	.size	mbedtls_mpi_add_mod, .-mbedtls_mpi_add_mod
	.section	.text.mbedtls_mpi_mul_int_mod,"ax",@progbits
	.align	1
	.type	mbedtls_mpi_mul_int_mod, @function
mbedtls_mpi_mul_int_mod:
.LFB57:
	.loc 2 1117 1
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
	.loc 2 1118 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1120 22
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	mbedtls_mpi_mul_int
	sw	a0,-20(s0)
	.loc 2 1120 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L224
	.loc 2 1121 11
	j	.L221
.L222:
	.loc 2 1121 69 discriminator 5
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-40(s0)
	call	mbedtls_mpi_sub_abs
	sw	a0,-20(s0)
	.loc 2 1121 60 discriminator 5
	lw	a5,-20(s0)
	bne	a5,zero,.L225
.L221:
	.loc 2 1121 12 discriminator 3
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a1,a5
	lw	a0,-40(s0)
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 1121 46 discriminator 4
	bge	a5,zero,.L222
	.loc 2 1122 1
	j	.L220
.L224:
	.loc 2 1120 59
	nop
	j	.L220
.L225:
	.loc 2 1121 116
	nop
.L220:
	.loc 2 1123 12
	lw	a5,-20(s0)
	.loc 2 1124 1
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
.LFE57:
	.size	mbedtls_mpi_mul_int_mod, .-mbedtls_mpi_mul_int_mod
	.section	.text.mbedtls_mpi_sub_int_mod,"ax",@progbits
	.align	1
	.type	mbedtls_mpi_sub_int_mod, @function
mbedtls_mpi_sub_int_mod:
.LFB58:
	.loc 2 1131 1
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
	.loc 2 1132 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1134 22
	lw	a5,-48(s0)
	mv	a2,a5
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	mbedtls_mpi_sub_int
	sw	a0,-20(s0)
	.loc 2 1134 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L232
	.loc 2 1135 16
	j	.L229
.L230:
	.loc 2 1135 82 discriminator 6
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-40(s0)
	call	mbedtls_mpi_add_mpi
	sw	a0,-20(s0)
	.loc 2 1135 73 discriminator 6
	lw	a5,-20(s0)
	bne	a5,zero,.L233
.L229:
	.loc 2 1135 20 discriminator 3
	lw	a5,-40(s0)
	lh	a5,4(a5)
	.loc 2 1135 28 discriminator 3
	bge	a5,zero,.L234
	.loc 2 1135 31 discriminator 4
	li	a1,0
	lw	a0,-40(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 1135 28 discriminator 5
	bne	a5,zero,.L230
	.loc 2 1136 1
	j	.L234
.L232:
	.loc 2 1134 59
	nop
	j	.L228
.L233:
	.loc 2 1135 129
	nop
	j	.L228
.L234:
	.loc 2 1136 1
	nop
.L228:
	.loc 2 1137 12
	lw	a5,-20(s0)
	.loc 2 1138 1
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
.LFE58:
	.size	mbedtls_mpi_sub_int_mod, .-mbedtls_mpi_sub_int_mod
	.section	.text.mbedtls_mpi_shift_l_mod,"ax",@progbits
	.align	1
	.type	mbedtls_mpi_shift_l_mod, @function
mbedtls_mpi_shift_l_mod:
.LFB59:
	.loc 2 1147 1
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
	.loc 2 1148 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1149 22
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	mbedtls_mpi_shift_l
	sw	a0,-20(s0)
	.loc 2 1149 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L241
	.loc 2 1150 11
	j	.L238
.L239:
	.loc 2 1150 69 discriminator 5
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-40(s0)
	call	mbedtls_mpi_sub_abs
	sw	a0,-20(s0)
	.loc 2 1150 60 discriminator 5
	lw	a5,-20(s0)
	bne	a5,zero,.L242
.L238:
	.loc 2 1150 12 discriminator 3
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a1,a5
	lw	a0,-40(s0)
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 1150 46 discriminator 4
	bge	a5,zero,.L239
	.loc 2 1151 1
	j	.L237
.L241:
	.loc 2 1149 60
	nop
	j	.L237
.L242:
	.loc 2 1150 116
	nop
.L237:
	.loc 2 1152 12
	lw	a5,-20(s0)
	.loc 2 1153 1
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
.LFE59:
	.size	mbedtls_mpi_shift_l_mod, .-mbedtls_mpi_shift_l_mod
	.section	.text.ecp_sw_rhs,"ax",@progbits
	.align	1
	.type	ecp_sw_rhs, @function
ecp_sw_rhs:
.LFB60:
	.loc 2 1229 1
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
	.loc 2 1233 22
	lw	a3,-44(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1233 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L250
	.loc 2 1236 9
	lw	a0,-36(s0)
	call	mbedtls_ecp_group_a_is_minus_3
	mv	a5,a0
	.loc 2 1236 8 discriminator 1
	beq	a5,zero,.L246
	.loc 2 1237 26
	li	a3,3
	lw	a2,-40(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_sub_int_mod
	sw	a0,-20(s0)
	.loc 2 1237 17 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L247
	.loc 2 1237 76
	j	.L245
.L246:
	.loc 2 1239 26
	lw	a5,-36(s0)
	addi	a5,a5,12
	mv	a3,a5
	lw	a2,-40(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_add_mod
	sw	a0,-20(s0)
	.loc 2 1239 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L251
.L247:
	.loc 2 1242 22
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1242 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L252
	.loc 2 1243 22
	lw	a5,-36(s0)
	addi	a5,a5,20
	mv	a3,a5
	lw	a2,-40(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_add_mod
	sw	a0,-20(s0)
	.loc 2 1245 1
	j	.L245
.L250:
	.loc 2 1233 66
	nop
	j	.L245
.L251:
	.loc 2 1239 78
	nop
	j	.L245
.L252:
	.loc 2 1242 68
	nop
.L245:
	.loc 2 1246 12
	lw	a5,-20(s0)
	.loc 2 1247 1
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
.LFE60:
	.size	ecp_sw_rhs, .-ecp_sw_rhs
	.section	.text.mbedtls_ecp_sw_derive_y,"ax",@progbits
	.align	1
	.type	mbedtls_ecp_sw_derive_y, @function
mbedtls_ecp_sw_derive_y:
.LFB61:
	.loc 2 1256 1
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
	.loc 2 1266 9
	lw	a5,-36(s0)
	addi	a5,a5,4
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_get_bit
	mv	a4,a0
	.loc 2 1266 8 discriminator 1
	li	a5,1
	bne	a4,a5,.L254
	.loc 2 1267 9
	lw	a5,-36(s0)
	addi	a5,a5,4
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_get_bit
	mv	a4,a0
	.loc 2 1266 46 discriminator 2
	li	a5,1
	beq	a4,a5,.L255
.L254:
	.loc 2 1268 16
	li	a5,-20480
	addi	a5,a5,384
	j	.L262
.L255:
	.loc 2 1273 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 1276 22
	lw	a2,-40(s0)
	lw	a1,-44(s0)
	lw	a0,-36(s0)
	call	ecp_sw_rhs
	sw	a0,-20(s0)
	.loc 2 1276 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L263
	.loc 2 1280 22
	lw	a5,-36(s0)
	addi	a4,a5,4
	addi	a5,s0,-28
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_add_int
	sw	a0,-20(s0)
	.loc 2 1280 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L264
	.loc 2 1281 22
	addi	a5,s0,-28
	li	a1,2
	mv	a0,a5
	call	mbedtls_mpi_shift_r
	sw	a0,-20(s0)
	.loc 2 1281 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L265
	.loc 2 1283 22
	lw	a5,-36(s0)
	addi	a3,a5,4
	addi	a5,s0,-28
	li	a4,0
	mv	a2,a5
	lw	a1,-44(s0)
	lw	a0,-44(s0)
	call	mbedtls_mpi_exp_mod
	sw	a0,-20(s0)
	.loc 2 1283 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L266
	.loc 2 1290 9
	li	a1,0
	lw	a0,-44(s0)
	call	mbedtls_mpi_get_bit
	mv	a4,a0
	.loc 2 1290 8 discriminator 1
	lw	a5,-48(s0)
	beq	a5,a4,.L267
	.loc 2 1291 26
	lw	a5,-36(s0)
	addi	a5,a5,4
	lw	a2,-44(s0)
	mv	a1,a5
	lw	a0,-44(s0)
	call	mbedtls_mpi_sub_mpi
	sw	a0,-20(s0)
	.loc 2 1294 1
	j	.L267
.L263:
	.loc 2 1276 52
	nop
	j	.L258
.L264:
	.loc 2 1280 68
	nop
	j	.L258
.L265:
	.loc 2 1281 59
	nop
	j	.L258
.L266:
	.loc 2 1283 14
	nop
	j	.L258
.L267:
	.loc 2 1294 1
	nop
.L258:
	.loc 2 1296 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 1297 12
	lw	a5,-20(s0)
.L262:
	.loc 2 1298 1
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
.LFE61:
	.size	mbedtls_ecp_sw_derive_y, .-mbedtls_ecp_sw_derive_y
	.section	.text.ecp_normalize_jac,"ax",@progbits
	.align	1
	.type	ecp_normalize_jac, @function
ecp_normalize_jac:
.LFB62:
	.loc 2 1316 1
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
	.loc 2 1317 29
	lw	a5,-40(s0)
	addi	a5,a5,16
	.loc 2 1317 9
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 1317 8 discriminator 1
	bne	a5,zero,.L269
	.loc 2 1318 16
	li	a5,0
	j	.L277
.L269:
	.loc 2 1330 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1332 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 1334 13
	lw	a5,-40(s0)
	addi	a4,a5,16
	.loc 2 1334 22
	lw	a5,-36(s0)
	addi	a3,a5,4
	addi	a5,s0,-28
	mv	a2,a4
	mv	a1,a5
	li	a0,0
	call	mbedtls_mpi_gcd_modinv_odd
	sw	a0,-20(s0)
	.loc 2 1334 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L278
	.loc 2 1335 22
	lw	a5,-40(s0)
	addi	a4,a5,8
	.loc 2 1335 55
	lw	a5,-40(s0)
	addi	a5,a5,8
	.loc 2 1335 22
	addi	a3,s0,-28
	mv	a2,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1335 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L279
	.loc 2 1336 22
	addi	a3,s0,-28
	addi	a4,s0,-28
	addi	a5,s0,-28
	mv	a2,a4
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1336 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L280
	.loc 2 1337 22
	lw	a5,-40(s0)
	.loc 2 1337 55
	lw	a4,-40(s0)
	.loc 2 1337 22
	addi	a3,s0,-28
	mv	a2,a4
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1337 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L281
	.loc 2 1338 22
	lw	a5,-40(s0)
	addi	a4,a5,8
	.loc 2 1338 55
	lw	a5,-40(s0)
	addi	a5,a5,8
	.loc 2 1338 22
	addi	a3,s0,-28
	mv	a2,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1338 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L282
	.loc 2 1340 22
	lw	a5,-40(s0)
	addi	a5,a5,16
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 1342 1
	j	.L272
.L278:
	.loc 2 1334 39
	nop
	j	.L272
.L279:
	.loc 2 1335 75
	nop
	j	.L272
.L280:
	.loc 2 1336 67
	nop
	j	.L272
.L281:
	.loc 2 1337 75
	nop
	j	.L272
.L282:
	.loc 2 1338 75
	nop
.L272:
	.loc 2 1344 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 1346 12
	lw	a5,-20(s0)
.L277:
	.loc 2 1348 1
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
.LFE62:
	.size	ecp_normalize_jac, .-ecp_normalize_jac
	.section	.text.ecp_normalize_jac_many,"ax",@progbits
	.align	1
	.type	ecp_normalize_jac_many, @function
ecp_normalize_jac_many:
.LFB63:
	.loc 2 1363 1
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
	.loc 2 1364 8
	lw	a4,-60(s0)
	li	a5,1
	bgtu	a4,a5,.L284
	.loc 2 1365 16
	lw	a5,-56(s0)
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-52(s0)
	call	ecp_normalize_jac
	mv	a5,a0
	j	.L305
.L284:
	.loc 2 1377 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1381 14
	li	a1,8
	lw	a0,-60(s0)
	call	calloc
	mv	a5,a0
	sw	a5,-28(s0)
	.loc 2 1381 8 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L286
	.loc 2 1382 16
	li	a5,-20480
	addi	a5,a5,640
	j	.L305
.L286:
	.loc 2 1385 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 1387 5
	lw	a1,-60(s0)
	lw	a0,-28(s0)
	call	mpi_init_many
	.loc 2 1391 48
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 2 1391 46
	addi	a5,a5,16
	.loc 2 1391 22
	mv	a1,a5
	lw	a0,-28(s0)
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 1391 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L306
	.loc 2 1392 12
	li	a5,1
	sw	a5,-24(s0)
	.loc 2 1392 5
	j	.L289
.L291:
	.loc 2 1393 53
	lw	a5,-24(s0)
	slli	a5,a5,3
	.loc 2 1393 26
	lw	a4,-28(s0)
	add	a1,a4,a5
	.loc 2 1393 60
	lw	a4,-24(s0)
	li	a5,536870912
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,3
	.loc 2 1393 58
	lw	a4,-28(s0)
	add	a2,a4,a5
	.loc 2 1393 69
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1393 67
	addi	a5,a5,16
	.loc 2 1393 26
	mv	a3,a5
	lw	a0,-52(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1393 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L307
	.loc 2 1392 30 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L289:
	.loc 2 1392 19 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-60(s0)
	bltu	a4,a5,.L291
	.loc 2 1399 9
	lw	a4,-60(s0)
	li	a5,536870912
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,3
	.loc 2 1399 22
	lw	a4,-28(s0)
	add	a1,a4,a5
	.loc 2 1399 25
	lw	a4,-60(s0)
	li	a5,536870912
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,3
	.loc 2 1399 23
	lw	a4,-28(s0)
	add	a4,a4,a5
	.loc 2 1399 22
	lw	a5,-52(s0)
	addi	a5,a5,4
	mv	a3,a5
	mv	a2,a4
	li	a0,0
	call	mbedtls_mpi_gcd_modinv_odd
	sw	a0,-20(s0)
	.loc 2 1399 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L308
	.loc 2 1401 12
	lw	a5,-60(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L304:
	.loc 2 1414 12
	lw	a5,-24(s0)
	beq	a5,zero,.L293
	.loc 2 1416 61
	lw	a5,-24(s0)
	slli	a5,a5,3
	.loc 2 1416 59
	lw	a4,-28(s0)
	add	a2,a4,a5
	.loc 2 1416 68
	lw	a4,-24(s0)
	li	a5,536870912
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,3
	.loc 2 1416 66
	lw	a4,-28(s0)
	add	a4,a4,a5
	.loc 2 1416 30
	addi	a5,s0,-36
	mv	a3,a4
	mv	a1,a5
	lw	a0,-52(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1416 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L309
	.loc 2 1417 57
	lw	a4,-24(s0)
	li	a5,536870912
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,3
	.loc 2 1417 30
	lw	a4,-28(s0)
	add	a1,a4,a5
	.loc 2 1417 66
	lw	a5,-24(s0)
	slli	a5,a5,3
	.loc 2 1417 64
	lw	a4,-28(s0)
	add	a2,a4,a5
	.loc 2 1417 73
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1417 71
	addi	a5,a5,16
	.loc 2 1417 30
	mv	a3,a5
	lw	a0,-52(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1417 21 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L295
	.loc 2 1417 89
	j	.L288
.L293:
	.loc 2 1419 30
	addi	a5,s0,-36
	lw	a1,-28(s0)
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 1419 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L310
.L295:
	.loc 2 1423 53
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1423 26
	addi	a1,a5,8
	.loc 2 1423 63
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1423 61
	addi	a5,a5,8
	.loc 2 1423 26
	addi	a4,s0,-36
	mv	a3,a4
	mv	a2,a5
	lw	a0,-52(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1423 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L311
	.loc 2 1424 26
	addi	a3,s0,-36
	addi	a4,s0,-36
	addi	a5,s0,-36
	mv	a2,a4
	mv	a1,a5
	lw	a0,-52(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1424 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L312
	.loc 2 1425 53
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1425 26
	mv	a1,a5
	.loc 2 1425 63
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1425 61
	mv	a4,a5
	.loc 2 1425 26
	addi	a5,s0,-36
	mv	a3,a5
	mv	a2,a4
	lw	a0,-52(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1425 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L313
	.loc 2 1426 53
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1426 26
	addi	a1,a5,8
	.loc 2 1426 63
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1426 61
	addi	a5,a5,8
	.loc 2 1426 26
	addi	a4,s0,-36
	mv	a3,a4
	mv	a2,a5
	lw	a0,-52(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1426 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L314
	.loc 2 1434 47
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1434 26
	mv	a4,a5
	.loc 2 1434 61
	lw	a5,-52(s0)
	lhu	a5,10(a5)
	.loc 2 1434 26
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_shrink
	sw	a0,-20(s0)
	.loc 2 1434 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L315
	.loc 2 1435 47
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1435 26
	addi	a4,a5,8
	.loc 2 1435 61
	lw	a5,-52(s0)
	lhu	a5,10(a5)
	.loc 2 1435 26
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_shrink
	sw	a0,-20(s0)
	.loc 2 1435 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L316
	.loc 2 1437 45
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 1437 26
	addi	a5,a5,16
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 1437 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L317
	.loc 2 1439 12
	lw	a5,-24(s0)
	beq	a5,zero,.L318
	.loc 2 1401 28
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 2 1414 12
	j	.L304
.L306:
	.loc 2 1391 64
	nop
	j	.L288
.L307:
	.loc 2 1393 85
	nop
	j	.L288
.L308:
	.loc 2 1399 55
	nop
	j	.L288
.L309:
	.loc 2 1416 83
	nop
	j	.L288
.L310:
	.loc 2 1419 66
	nop
	j	.L288
.L311:
	.loc 2 1423 83
	nop
	j	.L288
.L312:
	.loc 2 1424 71
	nop
	j	.L288
.L313:
	.loc 2 1425 83
	nop
	j	.L288
.L314:
	.loc 2 1426 83
	nop
	j	.L288
.L315:
	.loc 2 1434 73
	nop
	j	.L288
.L316:
	.loc 2 1435 73
	nop
	j	.L288
.L317:
	.loc 2 1437 64
	nop
	j	.L288
.L318:
	.loc 2 1440 13
	nop
.L288:
	.loc 2 1446 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 1447 5
	lw	a1,-60(s0)
	lw	a0,-28(s0)
	call	mpi_free_many
	.loc 2 1448 5
	lw	a0,-28(s0)
	call	free
	.loc 2 1450 12
	lw	a5,-20(s0)
.L305:
	.loc 2 1452 1
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
.LFE63:
	.size	ecp_normalize_jac_many, .-ecp_normalize_jac_many
	.section	.text.ecp_safe_invert_jac,"ax",@progbits
	.align	1
	.type	ecp_safe_invert_jac, @function
ecp_safe_invert_jac:
.LFB64:
	.loc 2 1461 1
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
	.loc 2 1462 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1464 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_mpi_init
.LBB11:
	.loc 2 1466 55
	lw	a5,-40(s0)
	addi	a5,a5,8
	.loc 2 1466 34
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 1466 66 discriminator 1
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 2 1466 24 discriminator 1
	sb	a5,-21(s0)
	.loc 2 1466 89 discriminator 1
	lw	a5,-36(s0)
	addi	a4,a5,4
	.loc 2 1466 125 discriminator 1
	lw	a5,-40(s0)
	addi	a3,a5,8
	.loc 2 1466 89 discriminator 1
	addi	a5,s0,-32
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_sub_mpi
	sw	a0,-20(s0)
	.loc 2 1466 80 discriminator 2
	lw	a5,-20(s0)
	bne	a5,zero,.L323
	.loc 2 1466 185 discriminator 4
	lw	a5,-40(s0)
	addi	a5,a5,8
	lbu	a4,-21(s0)
	mv	a3,a4
	lbu	a4,-41(s0)
	and	a4,a3,a4
	andi	a3,a4,0xff
	addi	a4,s0,-32
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_safe_cond_assign
	sw	a0,-20(s0)
.LBE11:
	.loc 2 1468 1
	j	.L321
.L323:
.LBB12:
	.loc 2 1466 141
	nop
.L321:
.LBE12:
	.loc 2 1469 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 1470 12
	lw	a5,-20(s0)
	.loc 2 1471 1
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
.LFE64:
	.size	ecp_safe_invert_jac, .-ecp_safe_invert_jac
	.section	.text.ecp_double_jac,"ax",@progbits
	.align	1
	.type	ecp_double_jac, @function
ecp_double_jac:
.LFB65:
	.loc 2 1490 1
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
	.loc 2 1492 14
	lui	a5,%hi(dbl_count)
	lw	a5,%lo(dbl_count)(a5)
	addi	a4,a5,1
	lui	a5,%hi(dbl_count)
	sw	a4,%lo(dbl_count)(a5)
	.loc 2 1504 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1507 9
	lw	a0,-36(s0)
	call	mbedtls_ecp_group_a_is_minus_3
	mv	a5,a0
	.loc 2 1507 8 discriminator 1
	beq	a5,zero,.L325
	.loc 2 1509 26
	lw	a5,-48(s0)
	addi	a4,a5,8
	lw	a5,-44(s0)
	addi	a2,a5,16
	lw	a5,-44(s0)
	addi	a5,a5,16
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1509 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L354
	.loc 2 1510 26
	lw	a5,-48(s0)
	addi	a4,a5,16
	lw	a2,-44(s0)
	.loc 2 1510 67
	lw	a5,-48(s0)
	addi	a5,a5,8
	.loc 2 1510 26
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_add_mod
	sw	a0,-20(s0)
	.loc 2 1510 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L355
	.loc 2 1511 26
	lw	a5,-48(s0)
	addi	a4,a5,24
	lw	a2,-44(s0)
	.loc 2 1511 67
	lw	a5,-48(s0)
	addi	a5,a5,8
	.loc 2 1511 26
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_sub_mod
	sw	a0,-20(s0)
	.loc 2 1511 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L356
	.loc 2 1512 26
	lw	a5,-48(s0)
	addi	a4,a5,8
	.loc 2 1512 60
	lw	a5,-48(s0)
	addi	a2,a5,16
	.loc 2 1512 69
	lw	a5,-48(s0)
	addi	a5,a5,24
	.loc 2 1512 26
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1512 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L357
	.loc 2 1513 64
	lw	a5,-48(s0)
	addi	a5,a5,8
	.loc 2 1513 26
	li	a3,3
	mv	a2,a5
	lw	a1,-48(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_int_mod
	sw	a0,-20(s0)
	.loc 2 1513 17 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L331
	.loc 2 1513 84
	j	.L327
.L325:
	.loc 2 1516 26
	lw	a5,-48(s0)
	addi	a5,a5,8
	lw	a4,-44(s0)
	lw	a3,-44(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1516 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L358
	.loc 2 1517 64
	lw	a5,-48(s0)
	addi	a5,a5,8
	.loc 2 1517 26
	li	a3,3
	mv	a2,a5
	lw	a1,-48(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_int_mod
	sw	a0,-20(s0)
	.loc 2 1517 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L359
	.loc 2 1520 13
	lw	a5,-36(s0)
	addi	a5,a5,12
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 1520 12 discriminator 1
	beq	a5,zero,.L331
	.loc 2 1522 30
	lw	a5,-48(s0)
	addi	a4,a5,8
	lw	a5,-44(s0)
	addi	a2,a5,16
	lw	a5,-44(s0)
	addi	a5,a5,16
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1522 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L360
	.loc 2 1523 30
	lw	a5,-48(s0)
	addi	a4,a5,16
	.loc 2 1523 64
	lw	a5,-48(s0)
	addi	a2,a5,8
	.loc 2 1523 73
	lw	a5,-48(s0)
	addi	a5,a5,8
	.loc 2 1523 30
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1523 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L361
	.loc 2 1524 30
	lw	a5,-48(s0)
	addi	a4,a5,8
	.loc 2 1524 64
	lw	a5,-48(s0)
	addi	a2,a5,16
	.loc 2 1524 30
	lw	a5,-36(s0)
	addi	a5,a5,12
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1524 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L362
	.loc 2 1525 73
	lw	a5,-48(s0)
	addi	a5,a5,8
	.loc 2 1525 30
	mv	a3,a5
	lw	a2,-48(s0)
	lw	a1,-48(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_add_mod
	sw	a0,-20(s0)
	.loc 2 1525 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L363
.L331:
	.loc 2 1530 22
	lw	a5,-48(s0)
	addi	a4,a5,16
	lw	a5,-44(s0)
	addi	a2,a5,8
	lw	a5,-44(s0)
	addi	a5,a5,8
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1530 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L364
	.loc 2 1531 22
	lw	a5,-48(s0)
	addi	a5,a5,16
	li	a2,1
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_shift_l_mod
	sw	a0,-20(s0)
	.loc 2 1531 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L365
	.loc 2 1532 22
	lw	a5,-48(s0)
	addi	a4,a5,8
	lw	a2,-44(s0)
	.loc 2 1532 63
	lw	a5,-48(s0)
	addi	a5,a5,16
	.loc 2 1532 22
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1532 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L366
	.loc 2 1533 22
	lw	a5,-48(s0)
	addi	a5,a5,8
	li	a2,1
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_shift_l_mod
	sw	a0,-20(s0)
	.loc 2 1533 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L367
	.loc 2 1536 22
	lw	a5,-48(s0)
	addi	a4,a5,24
	.loc 2 1536 56
	lw	a5,-48(s0)
	addi	a2,a5,16
	.loc 2 1536 65
	lw	a5,-48(s0)
	addi	a5,a5,16
	.loc 2 1536 22
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1536 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L368
	.loc 2 1537 22
	lw	a5,-48(s0)
	addi	a5,a5,24
	li	a2,1
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_shift_l_mod
	sw	a0,-20(s0)
	.loc 2 1537 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L369
	.loc 2 1540 22
	lw	a5,-48(s0)
	addi	a5,a5,16
	lw	a3,-48(s0)
	lw	a2,-48(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1540 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L370
	.loc 2 1541 22
	lw	a5,-48(s0)
	addi	a4,a5,16
	.loc 2 1541 56
	lw	a5,-48(s0)
	addi	a2,a5,16
	.loc 2 1541 65
	lw	a5,-48(s0)
	addi	a5,a5,8
	.loc 2 1541 22
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_sub_mod
	sw	a0,-20(s0)
	.loc 2 1541 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L371
	.loc 2 1542 22
	lw	a5,-48(s0)
	addi	a4,a5,16
	.loc 2 1542 56
	lw	a5,-48(s0)
	addi	a2,a5,16
	.loc 2 1542 65
	lw	a5,-48(s0)
	addi	a5,a5,8
	.loc 2 1542 22
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_sub_mod
	sw	a0,-20(s0)
	.loc 2 1542 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L372
	.loc 2 1545 22
	lw	a5,-48(s0)
	addi	a4,a5,8
	.loc 2 1545 56
	lw	a5,-48(s0)
	addi	a2,a5,8
	.loc 2 1545 65
	lw	a5,-48(s0)
	addi	a5,a5,16
	.loc 2 1545 22
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_sub_mod
	sw	a0,-20(s0)
	.loc 2 1545 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L373
	.loc 2 1546 22
	lw	a5,-48(s0)
	addi	a4,a5,8
	.loc 2 1546 56
	lw	a5,-48(s0)
	addi	a5,a5,8
	.loc 2 1546 22
	lw	a3,-48(s0)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1546 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L374
	.loc 2 1547 22
	lw	a5,-48(s0)
	addi	a4,a5,8
	.loc 2 1547 56
	lw	a5,-48(s0)
	addi	a2,a5,8
	.loc 2 1547 65
	lw	a5,-48(s0)
	addi	a5,a5,24
	.loc 2 1547 22
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_sub_mod
	sw	a0,-20(s0)
	.loc 2 1547 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L375
	.loc 2 1550 22
	lw	a5,-48(s0)
	addi	a4,a5,24
	lw	a5,-44(s0)
	addi	a2,a5,8
	lw	a5,-44(s0)
	addi	a5,a5,16
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1550 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L376
	.loc 2 1551 22
	lw	a5,-48(s0)
	addi	a5,a5,24
	li	a2,1
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_shift_l_mod
	sw	a0,-20(s0)
	.loc 2 1551 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L377
	.loc 2 1554 22
	lw	a4,-40(s0)
	.loc 2 1554 46
	lw	a5,-48(s0)
	addi	a5,a5,16
	.loc 2 1554 22
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 1554 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L378
	.loc 2 1555 22
	lw	a5,-40(s0)
	addi	a4,a5,8
	.loc 2 1555 46
	lw	a5,-48(s0)
	addi	a5,a5,8
	.loc 2 1555 22
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 1555 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L379
	.loc 2 1556 22
	lw	a5,-40(s0)
	addi	a4,a5,16
	.loc 2 1556 46
	lw	a5,-48(s0)
	addi	a5,a5,24
	.loc 2 1556 22
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 1558 1
	j	.L327
.L354:
	.loc 2 1509 82
	nop
	j	.L327
.L355:
	.loc 2 1510 84
	nop
	j	.L327
.L356:
	.loc 2 1511 84
	nop
	j	.L327
.L357:
	.loc 2 1512 86
	nop
	j	.L327
.L358:
	.loc 2 1516 82
	nop
	j	.L327
.L359:
	.loc 2 1517 84
	nop
	j	.L327
.L360:
	.loc 2 1522 86
	nop
	j	.L327
.L361:
	.loc 2 1523 90
	nop
	j	.L327
.L362:
	.loc 2 1524 90
	nop
	j	.L327
.L363:
	.loc 2 1525 90
	nop
	j	.L327
.L364:
	.loc 2 1530 78
	nop
	j	.L327
.L365:
	.loc 2 1531 71
	nop
	j	.L327
.L366:
	.loc 2 1532 80
	nop
	j	.L327
.L367:
	.loc 2 1533 71
	nop
	j	.L327
.L368:
	.loc 2 1536 82
	nop
	j	.L327
.L369:
	.loc 2 1537 71
	nop
	j	.L327
.L370:
	.loc 2 1540 82
	nop
	j	.L327
.L371:
	.loc 2 1541 82
	nop
	j	.L327
.L372:
	.loc 2 1542 82
	nop
	j	.L327
.L373:
	.loc 2 1545 82
	nop
	j	.L327
.L374:
	.loc 2 1546 82
	nop
	j	.L327
.L375:
	.loc 2 1547 82
	nop
	j	.L327
.L376:
	.loc 2 1550 78
	nop
	j	.L327
.L377:
	.loc 2 1551 71
	nop
	j	.L327
.L378:
	.loc 2 1554 63
	nop
	j	.L327
.L379:
	.loc 2 1555 63
	nop
.L327:
	.loc 2 1560 12
	lw	a5,-20(s0)
	.loc 2 1562 1
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
.LFE65:
	.size	ecp_double_jac, .-ecp_double_jac
	.section	.text.ecp_add_mixed,"ax",@progbits
	.align	1
	.type	ecp_add_mixed, @function
ecp_add_mixed:
.LFB66:
	.loc 2 1587 1
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
	.loc 2 1589 14
	lui	a5,%hi(add_count)
	lw	a5,%lo(add_count)(a5)
	addi	a4,a5,1
	lui	a5,%hi(add_count)
	sw	a4,%lo(add_count)(a5)
	.loc 2 1601 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1606 25
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	.loc 2 1607 25
	lw	a5,-40(s0)
	addi	a5,a5,8
	sw	a5,-28(s0)
	.loc 2 1608 25
	lw	a5,-40(s0)
	addi	a5,a5,16
	sw	a5,-32(s0)
	.loc 2 1610 18
	lw	a5,-48(s0)
	lw	a5,16(a5)
	.loc 2 1610 8
	bne	a5,zero,.L381
	.loc 2 1611 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L382
.L381:
	.loc 2 1617 9
	lw	a5,-44(s0)
	addi	a5,a5,16
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 1617 8 discriminator 1
	bne	a5,zero,.L383
	.loc 2 1618 16
	lw	a1,-48(s0)
	lw	a0,-40(s0)
	call	mbedtls_ecp_copy
	mv	a5,a0
	j	.L382
.L383:
	.loc 2 1621 9
	lw	a5,-48(s0)
	addi	a5,a5,16
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 1621 8 discriminator 1
	bne	a5,zero,.L384
	.loc 2 1622 16
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	mbedtls_ecp_copy
	mv	a5,a0
	j	.L382
.L384:
	.loc 2 1628 9
	lw	a5,-48(s0)
	addi	a5,a5,16
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 1628 8 discriminator 1
	beq	a5,zero,.L385
	.loc 2 1629 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L382
.L385:
	.loc 2 1632 22
	lw	a5,-44(s0)
	addi	a4,a5,16
	lw	a5,-44(s0)
	addi	a5,a5,16
	mv	a3,a5
	mv	a2,a4
	lw	a1,-52(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1632 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L407
	.loc 2 1633 22
	lw	a5,-52(s0)
	addi	a4,a5,8
	lw	a5,-44(s0)
	addi	a5,a5,16
	mv	a3,a5
	lw	a2,-52(s0)
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1633 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L408
	.loc 2 1634 22
	lw	a5,-48(s0)
	mv	a3,a5
	lw	a2,-52(s0)
	lw	a1,-52(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1634 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L409
	.loc 2 1635 22
	lw	a5,-52(s0)
	addi	a4,a5,8
	.loc 2 1635 56
	lw	a5,-52(s0)
	addi	a2,a5,8
	.loc 2 1635 22
	lw	a5,-48(s0)
	addi	a5,a5,8
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1635 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L410
	.loc 2 1636 22
	lw	a5,-44(s0)
	mv	a3,a5
	lw	a2,-52(s0)
	lw	a1,-52(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_sub_mod
	sw	a0,-20(s0)
	.loc 2 1636 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L411
	.loc 2 1637 22
	lw	a5,-52(s0)
	addi	a4,a5,8
	.loc 2 1637 56
	lw	a5,-52(s0)
	addi	a2,a5,8
	.loc 2 1637 22
	lw	a5,-44(s0)
	addi	a5,a5,8
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_sub_mod
	sw	a0,-20(s0)
	.loc 2 1637 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L412
	.loc 2 1640 9
	li	a1,0
	lw	a0,-52(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 1640 8 discriminator 1
	bne	a5,zero,.L393
	.loc 2 1641 33
	lw	a5,-52(s0)
	addi	a5,a5,8
	.loc 2 1641 13
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 1641 12 discriminator 1
	bne	a5,zero,.L394
	.loc 2 1642 19
	lw	a3,-52(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	ecp_double_jac
	sw	a0,-20(s0)
	.loc 2 1643 13
	j	.L387
.L394:
	.loc 2 1645 19
	lw	a0,-40(s0)
	call	mbedtls_ecp_set_zero
	sw	a0,-20(s0)
	.loc 2 1646 13
	j	.L387
.L393:
	.loc 2 1651 22
	lw	a5,-44(s0)
	addi	a5,a5,16
	lw	a3,-52(s0)
	mv	a2,a5
	lw	a1,-32(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1651 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L413
	.loc 2 1652 22
	lw	a5,-52(s0)
	addi	a5,a5,16
	lw	a3,-52(s0)
	lw	a2,-52(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1652 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L414
	.loc 2 1653 22
	lw	a5,-52(s0)
	addi	a4,a5,24
	.loc 2 1653 56
	lw	a5,-52(s0)
	addi	a5,a5,16
	.loc 2 1653 22
	lw	a3,-52(s0)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1653 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L415
	.loc 2 1654 22
	lw	a5,-52(s0)
	addi	a4,a5,16
	.loc 2 1654 56
	lw	a5,-52(s0)
	addi	a5,a5,16
	.loc 2 1654 22
	lw	a3,-44(s0)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1654 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L416
	.loc 2 1656 48
	lw	a5,-52(s0)
	addi	a5,a5,16
	.loc 2 1656 22
	mv	a1,a5
	lw	a0,-52(s0)
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 1656 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L417
	.loc 2 1657 22
	li	a2,1
	lw	a1,-52(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_shift_l_mod
	sw	a0,-20(s0)
	.loc 2 1657 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L418
	.loc 2 1660 50
	lw	a5,-52(s0)
	addi	a4,a5,8
	.loc 2 1660 59
	lw	a5,-52(s0)
	addi	a5,a5,8
	.loc 2 1660 22
	mv	a3,a5
	mv	a2,a4
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1660 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L419
	.loc 2 1661 22
	lw	a3,-52(s0)
	lw	a2,-24(s0)
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_sub_mod
	sw	a0,-20(s0)
	.loc 2 1661 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L420
	.loc 2 1662 53
	lw	a5,-52(s0)
	addi	a5,a5,24
	.loc 2 1662 22
	mv	a3,a5
	lw	a2,-24(s0)
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_sub_mod
	sw	a0,-20(s0)
	.loc 2 1662 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L421
	.loc 2 1663 22
	lw	a5,-52(s0)
	addi	a4,a5,16
	.loc 2 1663 56
	lw	a5,-52(s0)
	addi	a5,a5,16
	.loc 2 1663 22
	lw	a3,-24(s0)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_sub_mod
	sw	a0,-20(s0)
	.loc 2 1663 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L422
	.loc 2 1664 22
	lw	a5,-52(s0)
	addi	a4,a5,16
	.loc 2 1664 56
	lw	a5,-52(s0)
	addi	a2,a5,16
	.loc 2 1664 65
	lw	a5,-52(s0)
	addi	a5,a5,8
	.loc 2 1664 22
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1664 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L423
	.loc 2 1665 22
	lw	a5,-52(s0)
	addi	a4,a5,24
	.loc 2 1665 56
	lw	a5,-52(s0)
	addi	a2,a5,24
	.loc 2 1665 22
	lw	a5,-44(s0)
	addi	a5,a5,8
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1665 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L424
	.loc 2 1667 50
	lw	a5,-52(s0)
	addi	a4,a5,16
	.loc 2 1667 59
	lw	a5,-52(s0)
	addi	a5,a5,24
	.loc 2 1667 22
	mv	a3,a5
	mv	a2,a4
	lw	a1,-28(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_sub_mod
	sw	a0,-20(s0)
	.loc 2 1669 1
	j	.L387
.L407:
	.loc 2 1632 78
	nop
	j	.L387
.L408:
	.loc 2 1633 80
	nop
	j	.L387
.L409:
	.loc 2 1634 80
	nop
	j	.L387
.L410:
	.loc 2 1635 80
	nop
	j	.L387
.L411:
	.loc 2 1636 80
	nop
	j	.L387
.L412:
	.loc 2 1637 80
	nop
	j	.L387
.L413:
	.loc 2 1651 74
	nop
	j	.L387
.L414:
	.loc 2 1652 82
	nop
	j	.L387
.L415:
	.loc 2 1653 82
	nop
	j	.L387
.L416:
	.loc 2 1654 80
	nop
	j	.L387
.L417:
	.loc 2 1656 65
	nop
	j	.L387
.L418:
	.loc 2 1657 71
	nop
	j	.L387
.L419:
	.loc 2 1660 76
	nop
	j	.L387
.L420:
	.loc 2 1661 70
	nop
	j	.L387
.L421:
	.loc 2 1662 70
	nop
	j	.L387
.L422:
	.loc 2 1663 76
	nop
	j	.L387
.L423:
	.loc 2 1664 82
	nop
	j	.L387
.L424:
	.loc 2 1665 80
	nop
.L387:
	.loc 2 1671 12
	lw	a5,-20(s0)
.L382:
	.loc 2 1673 1
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
.LFE66:
	.size	ecp_add_mixed, .-ecp_add_mixed
	.section	.text.ecp_randomize_jac,"ax",@progbits
	.align	1
	.type	ecp_randomize_jac, @function
ecp_randomize_jac:
.LFB67:
	.loc 2 1684 1
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
	.loc 2 1694 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1697 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 1700 22
	lw	a5,-36(s0)
	addi	a2,a5,4
	addi	a5,s0,-28
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	li	a1,2
	mv	a0,a5
	call	mbedtls_mpi_random
	sw	a0,-20(s0)
	.loc 2 1700 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L434
	.loc 2 1703 22
	lw	a5,-40(s0)
	addi	a4,a5,16
	.loc 2 1703 55
	lw	a5,-40(s0)
	addi	a5,a5,16
	.loc 2 1703 22
	addi	a3,s0,-28
	mv	a2,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1703 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L435
	.loc 2 1706 22
	lw	a5,-40(s0)
	addi	a4,a5,8
	.loc 2 1706 55
	lw	a5,-40(s0)
	addi	a5,a5,8
	.loc 2 1706 22
	addi	a3,s0,-28
	mv	a2,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1706 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L436
	.loc 2 1709 22
	addi	a3,s0,-28
	addi	a4,s0,-28
	addi	a5,s0,-28
	mv	a2,a4
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1709 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L437
	.loc 2 1710 22
	lw	a5,-40(s0)
	.loc 2 1710 55
	lw	a4,-40(s0)
	.loc 2 1710 22
	addi	a3,s0,-28
	mv	a2,a4
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1710 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L438
	.loc 2 1713 22
	lw	a5,-40(s0)
	addi	a4,a5,8
	.loc 2 1713 55
	lw	a5,-40(s0)
	addi	a5,a5,8
	.loc 2 1713 22
	addi	a3,s0,-28
	mv	a2,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 1715 1
	j	.L427
.L434:
	.loc 2 1700 81
	nop
	j	.L427
.L435:
	.loc 2 1703 75
	nop
	j	.L427
.L436:
	.loc 2 1706 75
	nop
	j	.L427
.L437:
	.loc 2 1709 67
	nop
	j	.L427
.L438:
	.loc 2 1710 75
	nop
.L427:
	.loc 2 1716 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 1718 8
	lw	a4,-20(s0)
	li	a5,-14
	bne	a4,a5,.L432
	.loc 2 1719 13
	li	a5,-20480
	addi	a5,a5,768
	sw	a5,-20(s0)
.L432:
	.loc 2 1721 12
	lw	a5,-20(s0)
	.loc 2 1723 1
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
.LFE67:
	.size	ecp_randomize_jac, .-ecp_randomize_jac
	.section	.text.ecp_comb_recode_core,"ax",@progbits
	.align	1
	.type	ecp_comb_recode_core, @function
ecp_comb_recode_core:
.LFB68:
	.loc 2 1787 1
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
	sw	a3,-48(s0)
	sb	a5,-41(s0)
	.loc 2 1791 5
	lw	a5,-40(s0)
	addi	a5,a5,1
	mv	a2,a5
	li	a1,0
	lw	a0,-36(s0)
	call	memset
	.loc 2 1794 12
	sw	zero,-20(s0)
	.loc 2 1794 5
	j	.L440
.L443:
	.loc 2 1795 16
	sw	zero,-24(s0)
	.loc 2 1795 9
	j	.L441
.L442:
	.loc 2 1796 50
	lw	a4,-40(s0)
	lw	a5,-24(s0)
	mul	a4,a4,a5
	.loc 2 1796 21
	lw	a5,-20(s0)
	add	a5,a4,a5
	mv	a1,a5
	lw	a0,-48(s0)
	call	mbedtls_mpi_get_bit
	mv	a4,a0
	.loc 2 1796 55 discriminator 1
	lw	a5,-24(s0)
	sll	a3,a4,a5
	.loc 2 1796 14 discriminator 1
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 2 1796 18 discriminator 1
	slli	a5,a3,24
	srai	a5,a5,24
	or	a5,a4,a5
	slli	a3,a5,24
	srai	a3,a3,24
	.loc 2 1796 14 discriminator 1
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 2 1796 18 discriminator 1
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 2 1795 29 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L441:
	.loc 2 1795 23 discriminator 1
	lbu	a5,-41(s0)
	lw	a4,-24(s0)
	bltu	a4,a5,.L442
	.loc 2 1794 25 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L440:
	.loc 2 1794 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bltu	a4,a5,.L443
	.loc 2 1801 7
	sb	zero,-25(s0)
	.loc 2 1802 12
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 1802 5
	j	.L444
.L445:
	.loc 2 1804 15
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 2 1804 12
	lbu	a4,-25(s0)
	and	a5,a5,a4
	sb	a5,-26(s0)
	.loc 2 1805 17
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 2 1805 10
	lw	a3,-36(s0)
	lw	a5,-20(s0)
	add	a5,a3,a5
	.loc 2 1805 14
	lbu	a3,-25(s0)
	xor	a4,a4,a3
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 2 1806 11
	lbu	a5,-26(s0)
	sb	a5,-25(s0)
	.loc 2 1809 24
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 2 1809 20
	not	a5,a5
	andi	a5,a5,0xff
	.loc 2 1809 16
	andi	a5,a5,1
	sb	a5,-27(s0)
	.loc 2 1810 15
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 2 1810 23
	lw	a5,-20(s0)
	addi	a5,a5,-1
	lw	a3,-36(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 2 1810 29
	lbu	a3,-27(s0)
	neg	a3,a3
	and	a5,a3,a5
	andi	a5,a5,0xff
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 2 1810 19
	and	a5,a4,a5
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 2 1810 11
	lb	a5,-25(s0)
	or	a5,a4,a5
	slli	a5,a5,24
	srai	a5,a5,24
	sb	a5,-25(s0)
	.loc 2 1811 17
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 2 1811 25
	lw	a5,-20(s0)
	addi	a5,a5,-1
	lw	a3,-36(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 2 1811 31
	lbu	a3,-27(s0)
	neg	a3,a3
	and	a5,a3,a5
	andi	a5,a5,0xff
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 2 1811 21
	xor	a5,a4,a5
	slli	a3,a5,24
	srai	a3,a3,24
	.loc 2 1811 10
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 2 1811 21
	andi	a4,a3,0xff
	.loc 2 1811 14
	sb	a4,0(a5)
	.loc 2 1812 10
	lw	a5,-20(s0)
	addi	a5,a5,-1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 2 1812 16
	lb	a5,-27(s0)
	slli	a5,a5,7
	slli	a5,a5,24
	srai	a5,a5,24
	or	a5,a4,a5
	slli	a3,a5,24
	srai	a3,a3,24
	.loc 2 1812 10
	lw	a5,-20(s0)
	addi	a5,a5,-1
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 2 1812 16
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 2 1802 26 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L444:
	.loc 2 1802 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bleu	a4,a5,.L445
	.loc 2 1814 1
	nop
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
.LFE68:
	.size	ecp_comb_recode_core, .-ecp_comb_recode_core
	.section	.text.ecp_precompute_comb,"ax",@progbits
	.align	1
	.type	ecp_precompute_comb, @function
ecp_precompute_comb:
.LFB69:
	.loc 2 1854 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	a0,-100(s0)
	sw	a1,-104(s0)
	sw	a2,-108(s0)
	sw	a4,-116(s0)
	sw	a5,-120(s0)
	mv	a5,a3
	sb	a5,-109(s0)
	.loc 2 1855 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 1857 12
	sw	zero,-28(s0)
	.loc 2 1858 43
	lbu	a5,-109(s0)
	addi	a5,a5,-1
	.loc 2 1858 37
	li	a4,1
	sll	a5,a4,a5
	.loc 2 1858 25
	sb	a5,-29(s0)
	.loc 2 1859 30
	sw	zero,-64(s0)
	sw	zero,-60(s0)
	sw	zero,-56(s0)
	sw	zero,-52(s0)
	sw	zero,-48(s0)
	sw	zero,-44(s0)
	sw	zero,-40(s0)
	.loc 2 1863 5
	addi	a5,s0,-96
	li	a1,4
	mv	a0,a5
	call	mpi_init_many
	.loc 2 1866 8
	lw	a5,-120(s0)
	beq	a5,zero,.L447
	.loc 2 1866 32 discriminator 1
	lw	a5,-120(s0)
	lw	a5,8(a5)
	.loc 2 1866 23 discriminator 1
	beq	a5,zero,.L447
	.loc 2 1867 19
	lw	a5,-120(s0)
	lw	a5,8(a5)
	.loc 2 1867 24
	lbu	a4,33(a5)
	.loc 2 1867 12
	li	a5,1
	beq	a4,a5,.L481
	.loc 2 1870 19
	lw	a5,-120(s0)
	lw	a5,8(a5)
	.loc 2 1870 24
	lbu	a4,33(a5)
	.loc 2 1870 12
	li	a5,2
	beq	a4,a5,.L482
	.loc 2 1873 19
	lw	a5,-120(s0)
	lw	a5,8(a5)
	.loc 2 1873 24
	lbu	a4,33(a5)
	.loc 2 1873 12
	li	a5,3
	beq	a4,a5,.L483
	.loc 2 1876 19
	lw	a5,-120(s0)
	lw	a5,8(a5)
	.loc 2 1876 24
	lbu	a4,33(a5)
	.loc 2 1876 12
	li	a5,4
	beq	a4,a5,.L484
.L447:
	.loc 2 1885 8
	lw	a5,-120(s0)
	beq	a5,zero,.L485
	.loc 2 1885 32 discriminator 1
	lw	a5,-120(s0)
	lw	a5,8(a5)
	.loc 2 1885 23 discriminator 1
	beq	a5,zero,.L485
	.loc 2 1886 15
	lw	a5,-120(s0)
	lw	a5,8(a5)
	.loc 2 1886 28
	li	a4,1
	sb	a4,33(a5)
	.loc 2 1889 15
	lw	a5,-120(s0)
	lw	a5,8(a5)
	.loc 2 1889 24
	sw	zero,24(a5)
	j	.L449
.L481:
	.loc 2 1868 13
	nop
	j	.L449
.L485:
	.loc 2 1892 1
	nop
.L449:
	.loc 2 1898 22
	lw	a1,-108(s0)
	lw	a0,-104(s0)
	call	mbedtls_ecp_copy
	sw	a0,-20(s0)
	.loc 2 1898 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L486
	.loc 2 1901 8
	lw	a5,-120(s0)
	beq	a5,zero,.L457
	.loc 2 1901 32 discriminator 1
	lw	a5,-120(s0)
	lw	a5,8(a5)
	.loc 2 1901 23 discriminator 1
	beq	a5,zero,.L457
	.loc 2 1901 55 discriminator 2
	lw	a5,-120(s0)
	lw	a5,8(a5)
	.loc 2 1901 60 discriminator 2
	lw	a5,24(a5)
	.loc 2 1901 46 discriminator 2
	beq	a5,zero,.L457
	.loc 2 1902 19
	lw	a5,-120(s0)
	lw	a5,8(a5)
	.loc 2 1902 11
	lw	a5,24(a5)
	sw	a5,-28(s0)
	j	.L458
.L457:
	.loc 2 1905 7
	sw	zero,-28(s0)
.L458:
	.loc 2 1907 5
	j	.L459
.L463:
	.loc 2 1908 26
	li	a2,8
	lw	a1,-120(s0)
	lw	a0,-100(s0)
	call	mbedtls_ecp_check_budget
	sw	a0,-20(s0)
	.loc 2 1908 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L487
	.loc 2 1910 22
	lw	a4,-28(s0)
	lw	a5,-116(s0)
	divu	a5,a4,a5
	.loc 2 1910 16
	li	a4,1
	sll	a5,a4,a5
	.loc 2 1910 11
	sb	a5,-21(s0)
	.loc 2 1911 17
	lbu	a4,-21(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	mv	a4,a5
	.loc 2 1911 13
	lw	a5,-104(s0)
	add	a5,a5,a4
	sw	a5,-36(s0)
	.loc 2 1913 15
	lw	a4,-28(s0)
	lw	a5,-116(s0)
	remu	a5,a4,a5
	.loc 2 1913 12
	bne	a5,zero,.L461
	.loc 2 1914 59
	lbu	a5,-21(s0)
	srli	a5,a5,1
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 1914 54
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	mv	a4,a5
	lw	a5,-104(s0)
	add	a5,a5,a4
	.loc 2 1914 30
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_ecp_copy
	sw	a0,-20(s0)
	.loc 2 1914 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L488
.L461:
	.loc 2 1917 26
	addi	a5,s0,-96
	mv	a3,a5
	lw	a2,-36(s0)
	lw	a1,-36(s0)
	lw	a0,-100(s0)
	call	ecp_double_jac
	sw	a0,-20(s0)
	.loc 2 1917 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L489
	.loc 2 1907 30
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L459:
	.loc 2 1907 23 discriminator 1
	lbu	a5,-109(s0)
	addi	a5,a5,-1
	mv	a4,a5
	.loc 2 1907 18 discriminator 1
	lw	a5,-116(s0)
	mul	a5,a4,a5
	.loc 2 1907 14 discriminator 1
	lw	a4,-28(s0)
	bltu	a4,a5,.L463
	.loc 2 1921 8
	lw	a5,-120(s0)
	beq	a5,zero,.L490
	.loc 2 1921 32 discriminator 1
	lw	a5,-120(s0)
	lw	a5,8(a5)
	.loc 2 1921 23 discriminator 1
	beq	a5,zero,.L490
	.loc 2 1922 15
	lw	a5,-120(s0)
	lw	a5,8(a5)
	.loc 2 1922 28
	li	a4,2
	sb	a4,33(a5)
	j	.L451
.L482:
	.loc 2 1871 13
	nop
	j	.L451
.L490:
	.loc 2 1925 1
	nop
.L451:
	.loc 2 1934 7
	sw	zero,-28(s0)
	.loc 2 1935 12
	li	a5,1
	sb	a5,-21(s0)
	.loc 2 1935 5
	j	.L464
.L465:
	.loc 2 1936 21
	lbu	a4,-21(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	mv	a3,a5
	.loc 2 1936 13
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 2 1936 21
	lw	a4,-104(s0)
	add	a4,a4,a3
	.loc 2 1936 17
	addi	a3,s0,-64
	slli	a5,a5,2
	add	a5,a5,a3
	sw	a4,0(a5)
	.loc 2 1935 31 discriminator 3
	lbu	a5,-21(s0)
	slli	a5,a5,1
	sb	a5,-21(s0)
.L464:
	.loc 2 1935 19 discriminator 1
	lbu	a4,-21(s0)
	lbu	a5,-29(s0)
	bltu	a4,a5,.L465
	.loc 2 1939 80
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	.loc 2 1939 84
	addi	a5,a5,118
	.loc 2 1939 22
	mv	a2,a5
	lw	a1,-120(s0)
	lw	a0,-100(s0)
	call	mbedtls_ecp_check_budget
	sw	a0,-20(s0)
	.loc 2 1939 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L491
	.loc 2 1941 22
	addi	a5,s0,-64
	lw	a2,-28(s0)
	mv	a1,a5
	lw	a0,-100(s0)
	call	ecp_normalize_jac_many
	sw	a0,-20(s0)
	.loc 2 1941 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L492
	.loc 2 1944 8
	lw	a5,-120(s0)
	beq	a5,zero,.L493
	.loc 2 1944 32 discriminator 1
	lw	a5,-120(s0)
	lw	a5,8(a5)
	.loc 2 1944 23 discriminator 1
	beq	a5,zero,.L493
	.loc 2 1945 15
	lw	a5,-120(s0)
	lw	a5,8(a5)
	.loc 2 1945 28
	li	a4,3
	sb	a4,33(a5)
	j	.L453
.L483:
	.loc 2 1874 13
	nop
	j	.L453
.L493:
	.loc 2 1948 1
	nop
.L453:
	.loc 2 1954 80
	lbu	a5,-29(s0)
	addi	a4,a5,-1
	.loc 2 1954 85
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	sub	a5,a5,a4
	.loc 2 1954 22
	mv	a2,a5
	lw	a1,-120(s0)
	lw	a0,-100(s0)
	call	mbedtls_ecp_check_budget
	sw	a0,-20(s0)
	.loc 2 1954 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L494
	.loc 2 1956 12
	li	a5,1
	sb	a5,-21(s0)
	.loc 2 1956 5
	j	.L469
.L472:
	.loc 2 1957 11
	lbu	a5,-21(s0)
	sw	a5,-28(s0)
	.loc 2 1958 15
	j	.L470
.L471:
	.loc 2 1959 54
	lbu	a4,-21(s0)
	lw	a5,-28(s0)
	add	a4,a4,a5
	.loc 2 1959 51
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	mv	a4,a5
	.loc 2 1959 30
	lw	a5,-104(s0)
	add	a1,a5,a4
	.loc 2 1959 62
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	mv	a4,a5
	.loc 2 1959 60
	lw	a5,-104(s0)
	add	a2,a5,a4
	.loc 2 1959 69
	lbu	a4,-21(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	mv	a4,a5
	.loc 2 1959 67
	lw	a5,-104(s0)
	add	a5,a5,a4
	.loc 2 1959 30
	addi	a4,s0,-96
	mv	a3,a5
	lw	a0,-100(s0)
	call	ecp_add_mixed
	sw	a0,-20(s0)
	.loc 2 1959 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L495
.L470:
	.loc 2 1958 17
	lw	a5,-28(s0)
	addi	a4,a5,-1
	sw	a4,-28(s0)
	.loc 2 1958 16
	bne	a5,zero,.L471
	.loc 2 1956 31 discriminator 2
	lbu	a5,-21(s0)
	slli	a5,a5,1
	sb	a5,-21(s0)
.L469:
	.loc 2 1956 19 discriminator 1
	lbu	a4,-21(s0)
	lbu	a5,-29(s0)
	bltu	a4,a5,.L472
	.loc 2 1964 8
	lw	a5,-120(s0)
	beq	a5,zero,.L496
	.loc 2 1964 32 discriminator 1
	lw	a5,-120(s0)
	lw	a5,8(a5)
	.loc 2 1964 23 discriminator 1
	beq	a5,zero,.L496
	.loc 2 1965 15
	lw	a5,-120(s0)
	lw	a5,8(a5)
	.loc 2 1965 28
	li	a4,4
	sb	a4,33(a5)
	j	.L454
.L484:
	.loc 2 1877 13
	nop
	j	.L454
.L496:
	.loc 2 1968 1
	nop
.L454:
	.loc 2 1975 12
	sw	zero,-28(s0)
	.loc 2 1975 5
	j	.L473
.L474:
	.loc 2 1976 23
	lw	a5,-28(s0)
	addi	a4,a5,1
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	mv	a4,a5
	lw	a5,-104(s0)
	add	a4,a5,a4
	.loc 2 1976 15
	lw	a3,-28(s0)
	addi	a5,s0,-64
	slli	a3,a3,2
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 2 1975 34 discriminator 3
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L473:
	.loc 2 1975 19 discriminator 1
	lw	a5,-28(s0)
	addi	a4,a5,1
	.loc 2 1975 23 discriminator 1
	lbu	a5,-29(s0)
	bltu	a4,a5,.L474
	.loc 2 1979 80
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	.loc 2 1979 84
	addi	a5,a5,118
	.loc 2 1979 22
	mv	a2,a5
	lw	a1,-120(s0)
	lw	a0,-100(s0)
	call	mbedtls_ecp_check_budget
	sw	a0,-20(s0)
	.loc 2 1979 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L497
	.loc 2 1981 22
	addi	a5,s0,-64
	lw	a2,-28(s0)
	mv	a1,a5
	lw	a0,-100(s0)
	call	ecp_normalize_jac_many
	sw	a0,-20(s0)
	.loc 2 1981 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L498
	.loc 2 1988 12
	sb	zero,-21(s0)
	.loc 2 1988 5
	j	.L477
.L478:
	.loc 2 1989 28
	lbu	a4,-21(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	mv	a4,a5
	lw	a5,-104(s0)
	add	a5,a5,a4
	.loc 2 1989 9
	addi	a5,a5,16
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 1988 30 discriminator 3
	lbu	a5,-21(s0)
	addi	a5,a5,1
	sb	a5,-21(s0)
.L477:
	.loc 2 1988 19 discriminator 1
	lbu	a4,-21(s0)
	lbu	a5,-29(s0)
	bltu	a4,a5,.L478
	.loc 2 1992 1
	j	.L456
.L486:
	.loc 2 1898 57
	nop
	j	.L456
.L487:
	.loc 2 1908 88
	nop
	j	.L456
.L488:
	.loc 2 1914 74
	nop
	j	.L456
.L489:
	.loc 2 1917 69
	nop
	j	.L456
.L491:
	.loc 2 1939 98
	nop
	j	.L456
.L492:
	.loc 2 1941 65
	nop
	j	.L456
.L494:
	.loc 2 1954 100
	nop
	j	.L456
.L495:
	.loc 2 1959 87
	nop
	j	.L456
.L497:
	.loc 2 1979 98
	nop
	j	.L456
.L498:
	.loc 2 1981 65
	nop
.L456:
	.loc 2 1994 5
	addi	a5,s0,-96
	li	a1,4
	mv	a0,a5
	call	mpi_free_many
	.loc 2 1997 8
	lw	a5,-120(s0)
	beq	a5,zero,.L479
	.loc 2 1997 32 discriminator 1
	lw	a5,-120(s0)
	lw	a5,8(a5)
	.loc 2 1997 23 discriminator 1
	beq	a5,zero,.L479
	.loc 2 1997 46 discriminator 2
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,1280
	bne	a4,a5,.L479
	.loc 2 1999 19
	lw	a5,-120(s0)
	lw	a5,8(a5)
	.loc 2 1999 24
	lbu	a4,33(a5)
	.loc 2 1999 12
	li	a5,1
	bne	a4,a5,.L479
	.loc 2 2000 19
	lw	a5,-120(s0)
	lw	a5,8(a5)
	.loc 2 2000 28
	lw	a4,-28(s0)
	sw	a4,24(a5)
.L479:
	.loc 2 2005 12
	lw	a5,-20(s0)
	.loc 2 2006 1
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
.LFE69:
	.size	ecp_precompute_comb, .-ecp_precompute_comb
	.section	.text.ecp_select_comb,"ax",@progbits
	.align	1
	.type	ecp_select_comb, @function
ecp_select_comb:
.LFB70:
	.loc 2 2016 1
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
	mv	a5,a3
	sb	a5,-45(s0)
	mv	a5,a4
	sb	a5,-46(s0)
	.loc 2 2017 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 2021 22
	lbu	a5,-46(s0)
	srli	a5,a5,1
	andi	a5,a5,0xff
	.loc 2 2021 8
	andi	a5,a5,63
	sb	a5,-22(s0)
	.loc 2 2024 12
	sb	zero,-21(s0)
	.loc 2 2024 5
	j	.L500
.L504:
	.loc 2 2025 26
	lw	a3,-40(s0)
	.loc 2 2025 67
	lbu	a4,-21(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	mv	a4,a5
	lw	a5,-44(s0)
	add	a5,a5,a4
	.loc 2 2025 26
	mv	a1,a5
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	sub	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a2,a5
	mv	a0,a3
	call	mbedtls_mpi_safe_cond_assign
	sw	a0,-20(s0)
	.loc 2 2025 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L507
	.loc 2 2026 26
	lw	a5,-40(s0)
	addi	a3,a5,8
	.loc 2 2026 67
	lbu	a4,-21(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	mv	a4,a5
	lw	a5,-44(s0)
	add	a5,a5,a4
	.loc 2 2026 26
	addi	a1,a5,8
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	sub	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a2,a5
	mv	a0,a3
	call	mbedtls_mpi_safe_cond_assign
	sw	a0,-20(s0)
	.loc 2 2026 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L508
	.loc 2 2024 30 discriminator 2
	lbu	a5,-21(s0)
	addi	a5,a5,1
	sb	a5,-21(s0)
.L500:
	.loc 2 2024 19 discriminator 1
	lbu	a4,-21(s0)
	lbu	a5,-45(s0)
	bltu	a4,a5,.L504
	.loc 2 2030 22
	lbu	a5,-46(s0)
	srli	a5,a5,7
	andi	a5,a5,0xff
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	ecp_safe_invert_jac
	sw	a0,-20(s0)
	.loc 2 2030 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L509
	.loc 2 2032 22
	lw	a5,-40(s0)
	addi	a5,a5,16
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 2034 1
	j	.L502
.L507:
	.loc 2 2025 94
	nop
	j	.L502
.L508:
	.loc 2 2026 94
	nop
	j	.L502
.L509:
	.loc 2 2030 66
	nop
.L502:
	.loc 2 2035 12
	lw	a5,-20(s0)
	.loc 2 2036 1
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
.LFE70:
	.size	ecp_select_comb, .-ecp_select_comb
	.section	.text.ecp_mul_comb_core,"ax",@progbits
	.align	1
	.type	ecp_mul_comb_core, @function
ecp_mul_comb_core:
.LFB71:
	.loc 2 2050 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	sw	a2,-92(s0)
	sw	a4,-100(s0)
	sw	a5,-104(s0)
	sw	a6,-108(s0)
	sw	a7,-112(s0)
	mv	a5,a3
	sb	a5,-93(s0)
	.loc 2 2051 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 2056 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 2057 5
	addi	a5,s0,-80
	li	a1,4
	mv	a0,a5
	call	mpi_init_many
	.loc 2 2064 8
	lw	a5,0(s0)
	beq	a5,zero,.L511
	.loc 2 2064 32 discriminator 1
	lw	a5,0(s0)
	lw	a5,8(a5)
	.loc 2 2064 23 discriminator 1
	beq	a5,zero,.L511
	.loc 2 2065 15
	lw	a5,0(s0)
	lw	a5,8(a5)
	.loc 2 2065 20
	lbu	a4,33(a5)
	.loc 2 2064 46 discriminator 2
	li	a5,5
	beq	a4,a5,.L511
	.loc 2 2066 15
	lw	a5,0(s0)
	lw	a5,8(a5)
	.loc 2 2066 24
	sw	zero,24(a5)
	.loc 2 2067 15
	lw	a5,0(s0)
	lw	a5,8(a5)
	.loc 2 2067 28
	li	a4,5
	sb	a4,33(a5)
.L511:
	.loc 2 2071 8
	lw	a5,0(s0)
	beq	a5,zero,.L512
	.loc 2 2071 32 discriminator 1
	lw	a5,0(s0)
	lw	a5,8(a5)
	.loc 2 2071 23 discriminator 1
	beq	a5,zero,.L512
	.loc 2 2071 55 discriminator 2
	lw	a5,0(s0)
	lw	a5,8(a5)
	.loc 2 2071 60 discriminator 2
	lw	a5,24(a5)
	.loc 2 2071 46 discriminator 2
	beq	a5,zero,.L512
	.loc 2 2073 19
	lw	a5,0(s0)
	lw	a5,8(a5)
	.loc 2 2073 11
	lw	a5,24(a5)
	sw	a5,-24(s0)
	j	.L513
.L512:
	.loc 2 2078 11
	lw	a5,-104(s0)
	sw	a5,-24(s0)
	.loc 2 2079 62
	lw	a4,-100(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 2 2079 26
	lbu	a4,0(a5)
	lbu	a5,-93(s0)
	mv	a3,a5
	lw	a2,-92(s0)
	lw	a1,-88(s0)
	lw	a0,-84(s0)
	call	ecp_select_comb
	sw	a0,-20(s0)
	.loc 2 2079 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L523
	.loc 2 2080 12
	lw	a5,-108(s0)
	beq	a5,zero,.L516
	.loc 2 2081 30
	lw	a3,-112(s0)
	lw	a2,-108(s0)
	lw	a1,-88(s0)
	lw	a0,-84(s0)
	call	ecp_randomize_jac
	sw	a0,-20(s0)
	.loc 2 2081 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L524
.L513:
	.loc 2 2085 11
	j	.L516
.L520:
	.loc 2 2086 26
	li	a2,19
	lw	a1,0(s0)
	lw	a0,-84(s0)
	call	mbedtls_ecp_check_budget
	sw	a0,-20(s0)
	.loc 2 2086 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L525
	.loc 2 2087 9
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 2 2089 26
	addi	a5,s0,-80
	mv	a3,a5
	lw	a2,-88(s0)
	lw	a1,-88(s0)
	lw	a0,-84(s0)
	call	ecp_double_jac
	sw	a0,-20(s0)
	.loc 2 2089 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L526
	.loc 2 2090 65
	lw	a4,-100(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 2 2090 26
	lbu	a4,0(a5)
	lbu	a3,-93(s0)
	addi	a5,s0,-48
	lw	a2,-92(s0)
	mv	a1,a5
	lw	a0,-84(s0)
	call	ecp_select_comb
	sw	a0,-20(s0)
	.loc 2 2090 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L527
	.loc 2 2091 26
	addi	a4,s0,-80
	addi	a5,s0,-48
	mv	a3,a5
	lw	a2,-88(s0)
	lw	a1,-88(s0)
	lw	a0,-84(s0)
	call	ecp_add_mixed
	sw	a0,-20(s0)
	.loc 2 2091 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L528
.L516:
	.loc 2 2085 14
	lw	a5,-24(s0)
	bne	a5,zero,.L520
	.loc 2 2094 1
	j	.L515
.L523:
	.loc 2 2079 75
	nop
	j	.L515
.L524:
	.loc 2 2081 78
	nop
	j	.L515
.L525:
	.loc 2 2086 93
	nop
	j	.L515
.L526:
	.loc 2 2089 65
	nop
	j	.L515
.L527:
	.loc 2 2090 78
	nop
	j	.L515
.L528:
	.loc 2 2091 70
	nop
.L515:
	.loc 2 2096 5
	addi	a5,s0,-48
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 2097 5
	addi	a5,s0,-80
	li	a1,4
	mv	a0,a5
	call	mpi_free_many
	.loc 2 2100 8
	lw	a5,0(s0)
	beq	a5,zero,.L521
	.loc 2 2100 32 discriminator 1
	lw	a5,0(s0)
	lw	a5,8(a5)
	.loc 2 2100 23 discriminator 1
	beq	a5,zero,.L521
	.loc 2 2100 46 discriminator 2
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,1280
	bne	a4,a5,.L521
	.loc 2 2102 15
	lw	a5,0(s0)
	lw	a5,8(a5)
	.loc 2 2102 24
	lw	a4,-24(s0)
	sw	a4,24(a5)
.L521:
	.loc 2 2107 12
	lw	a5,-20(s0)
	.loc 2 2108 1
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
.LFE71:
	.size	ecp_mul_comb_core, .-ecp_mul_comb_core
	.section	.text.ecp_comb_recode_scalar,"ax",@progbits
	.align	1
	.type	ecp_comb_recode_scalar, @function
ecp_comb_recode_scalar:
.LFB72:
	.loc 2 2128 1
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
	sw	a5,-72(s0)
	mv	a5,a4
	sb	a5,-65(s0)
	.loc 2 2129 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 2132 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 2133 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 2136 9
	lw	a5,-52(s0)
	addi	a5,a5,52
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_get_bit
	mv	a4,a0
	.loc 2 2136 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L530
	.loc 2 2137 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L536
.L530:
	.loc 2 2141 22
	li	a1,0
	lw	a0,-56(s0)
	call	mbedtls_mpi_get_bit
	mv	a5,a0
	.loc 2 2141 48 discriminator 1
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 2 2141 19 discriminator 1
	lw	a5,-72(s0)
	sb	a4,0(a5)
	.loc 2 2144 22
	addi	a5,s0,-28
	lw	a1,-56(s0)
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 2144 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L537
	.loc 2 2145 22
	lw	a5,-52(s0)
	addi	a4,a5,52
	addi	a5,s0,-36
	lw	a2,-56(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_sub_mpi
	sw	a0,-20(s0)
	.loc 2 2145 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L538
	.loc 2 2146 22
	lw	a5,-72(s0)
	lbu	a3,0(a5)
	addi	a4,s0,-36
	addi	a5,s0,-28
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_safe_cond_assign
	sw	a0,-20(s0)
	.loc 2 2146 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L539
	.loc 2 2149 5
	addi	a4,s0,-28
	lbu	a5,-65(s0)
	mv	a3,a4
	mv	a2,a5
	lw	a1,-64(s0)
	lw	a0,-60(s0)
	call	ecp_comb_recode_core
	j	.L533
.L537:
	.loc 2 2144 54
	nop
	j	.L533
.L538:
	.loc 2 2145 67
	nop
	j	.L533
.L539:
	.loc 2 2146 83
	nop
.L533:
	.loc 2 2152 5
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 2153 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 2155 12
	lw	a5,-20(s0)
.L536:
	.loc 2 2156 1
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
.LFE72:
	.size	ecp_comb_recode_scalar, .-ecp_comb_recode_scalar
	.section	.text.ecp_mul_comb_after_precomp,"ax",@progbits
	.align	1
	.type	ecp_mul_comb_after_precomp, @function
ecp_mul_comb_after_precomp:
.LFB73:
	.loc 2 2175 1
	.cfi_startproc
	addi	sp,sp,-336
	.cfi_def_cfa_offset 336
	sw	ra,332(sp)
	sw	s0,328(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,336
	.cfi_def_cfa 8, 0
	sw	a0,-292(s0)
	sw	a1,-296(s0)
	sw	a2,-300(s0)
	sw	a3,-304(s0)
	mv	a3,a4
	mv	a4,a5
	sw	a6,-312(s0)
	sw	a7,-316(s0)
	mv	a5,a3
	sb	a5,-305(s0)
	mv	a5,a4
	sb	a5,-306(s0)
	.loc 2 2176 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 2179 24
	lw	a5,-296(s0)
	sw	a5,-24(s0)
	.loc 2 2182 8
	lw	a5,4(s0)
	beq	a5,zero,.L541
	.loc 2 2182 32 discriminator 1
	lw	a5,4(s0)
	lw	a5,8(a5)
	.loc 2 2182 23 discriminator 1
	beq	a5,zero,.L541
	.loc 2 2183 21
	lw	a5,4(s0)
	lw	a5,8(a5)
	.loc 2 2183 12
	sw	a5,-24(s0)
	.loc 2 2185 19
	lw	a5,4(s0)
	lw	a5,8(a5)
	.loc 2 2185 24
	lbu	a4,33(a5)
	.loc 2 2185 12
	li	a5,6
	beq	a4,a5,.L550
.L541:
	.loc 2 2191 22
	addi	a5,s0,-25
	lbu	a4,-306(s0)
	addi	a2,s0,-288
	lw	a3,-312(s0)
	lw	a1,-300(s0)
	lw	a0,-292(s0)
	call	ecp_comb_recode_scalar
	sw	a0,-20(s0)
	.loc 2 2191 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L551
	.loc 2 2193 22
	addi	a4,s0,-288
	lbu	a3,-305(s0)
	lw	a5,4(s0)
	sw	a5,0(sp)
	lw	a7,0(s0)
	lw	a6,-316(s0)
	lw	a5,-312(s0)
	lw	a2,-304(s0)
	lw	a1,-24(s0)
	lw	a0,-292(s0)
	call	ecp_mul_comb_core
	sw	a0,-20(s0)
	.loc 2 2193 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L552
	.loc 2 2195 22
	lbu	a5,-25(s0)
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-292(s0)
	call	ecp_safe_invert_jac
	sw	a0,-20(s0)
	.loc 2 2195 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L553
	.loc 2 2198 8
	lw	a5,4(s0)
	beq	a5,zero,.L554
	.loc 2 2198 32 discriminator 1
	lw	a5,4(s0)
	lw	a5,8(a5)
	.loc 2 2198 23 discriminator 1
	beq	a5,zero,.L554
	.loc 2 2199 15
	lw	a5,4(s0)
	lw	a5,8(a5)
	.loc 2 2199 28
	li	a4,6
	sb	a4,33(a5)
	j	.L542
.L550:
	.loc 2 2186 13
	nop
	j	.L542
.L554:
	.loc 2 2202 1
	nop
.L542:
	.loc 2 2203 22
	li	a2,120
	lw	a1,4(s0)
	lw	a0,-292(s0)
	call	mbedtls_ecp_check_budget
	sw	a0,-20(s0)
	.loc 2 2203 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L555
	.loc 2 2205 22
	lw	a1,-24(s0)
	lw	a0,-292(s0)
	call	ecp_normalize_jac
	sw	a0,-20(s0)
	.loc 2 2205 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L556
	.loc 2 2208 8
	lw	a5,4(s0)
	beq	a5,zero,.L557
	.loc 2 2208 32 discriminator 1
	lw	a5,4(s0)
	lw	a5,8(a5)
	.loc 2 2208 23 discriminator 1
	beq	a5,zero,.L557
	.loc 2 2209 26
	lw	a1,-24(s0)
	lw	a0,-296(s0)
	call	mbedtls_ecp_copy
	sw	a0,-20(s0)
	.loc 2 2213 1
	j	.L557
.L551:
	.loc 2 2191 85
	nop
	j	.L544
.L552:
	.loc 2 2193 96
	nop
	j	.L544
.L553:
	.loc 2 2195 73
	nop
	j	.L544
.L555:
	.loc 2 2203 86
	nop
	j	.L544
.L556:
	.loc 2 2205 57
	nop
	j	.L544
.L557:
	.loc 2 2213 1
	nop
.L544:
	.loc 2 2214 12
	lw	a5,-20(s0)
	.loc 2 2215 1
	mv	a0,a5
	lw	ra,332(sp)
	.cfi_restore 1
	lw	s0,328(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 336
	addi	sp,sp,336
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE73:
	.size	ecp_mul_comb_after_precomp, .-ecp_mul_comb_after_precomp
	.section	.text.ecp_pick_window_size,"ax",@progbits
	.align	1
	.type	ecp_pick_window_size, @function
ecp_pick_window_size:
.LFB74:
	.loc 2 2222 1
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
	.loc 2 2230 12
	lw	a5,-36(s0)
	lw	a4,64(a5)
	.loc 2 2230 7
	li	a5,383
	bleu	a4,a5,.L559
	.loc 2 2230 7 is_stmt 0 discriminator 1
	li	a5,5
	sb	a5,-17(s0)
	j	.L560
.L559:
	.loc 2 2230 7 discriminator 2
	li	a5,4
	sb	a5,-17(s0)
.L560:
	.loc 2 2237 8 is_stmt 1
	lbu	a5,-37(s0)
	beq	a5,zero,.L561
	.loc 2 2238 10
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L561:
	.loc 2 2251 8
	lbu	a5,-37(s0)
	beq	a5,zero,.L562
	.loc 2 2251 22 discriminator 2
	lw	a0,-36(s0)
	call	ecp_group_is_static_comb_table
	mv	a5,a0
	.loc 2 2251 18 discriminator 3
	bne	a5,zero,.L563
.L562:
	.loc 2 2251 59 discriminator 4
	lbu	a4,-17(s0)
	li	a5,4
	bleu	a4,a5,.L563
	.loc 2 2252 11
	li	a5,4
	sb	a5,-17(s0)
.L563:
	.loc 2 2255 11
	lbu	a4,-17(s0)
	.loc 2 2255 17
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 2 2255 8
	bltu	a4,a5,.L564
	.loc 2 2256 11
	li	a5,2
	sb	a5,-17(s0)
.L564:
	.loc 2 2259 12
	lbu	a5,-17(s0)
	.loc 2 2260 1
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
.LFE74:
	.size	ecp_pick_window_size, .-ecp_pick_window_size
	.section	.text.ecp_mul_comb,"ax",@progbits
	.align	1
	.type	ecp_mul_comb, @function
ecp_mul_comb:
.LFB75:
	.loc 2 2280 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	sw	a5,-72(s0)
	sw	a6,-76(s0)
	.loc 2 2281 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 2284 19
	sb	zero,-33(s0)
	.loc 2 2284 31
	sb	zero,-22(s0)
	.loc 2 2285 24
	sw	zero,-28(s0)
	.loc 2 2287 13
	lw	a5,-76(s0)
	beq	a5,zero,.L567
	.loc 2 2287 13 discriminator 1
	lw	a5,-76(s0)
	lw	a5,4(a5)
	.loc 2 2287 20 discriminator 1
	addi	a3,a5,1
	lw	a4,-76(s0)
	sw	a3,4(a4)
	.loc 2 2287 4 discriminator 1
	bne	a5,zero,.L567
	.loc 2 2287 46 discriminator 3
	lw	a5,-76(s0)
	sw	zero,0(a5)
.L567:
	.loc 2 2287 55 discriminator 5
	call	mbedtls_ecp_restart_is_enabled
	mv	a5,a0
	.loc 2 2287 54 discriminator 6
	beq	a5,zero,.L568
	.loc 2 2287 88 discriminator 7
	lw	a5,-76(s0)
	beq	a5,zero,.L568
	.loc 2 2287 13 discriminator 8
	lw	a5,-76(s0)
	lw	a5,8(a5)
	.loc 2 2287 4 discriminator 8
	bne	a5,zero,.L568
	.loc 2 2287 22 discriminator 9
	li	a1,36
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 2 2287 20 discriminator 10
	lw	a5,-76(s0)
	sw	a4,8(a5)
	.loc 2 2287 65 discriminator 10
	lw	a5,-76(s0)
	lw	a5,8(a5)
	.loc 2 2287 58 discriminator 10
	bne	a5,zero,.L569
	.loc 2 2287 13 discriminator 11
	li	a5,-20480
	addi	a5,a5,640
	.loc 2 2287 13 is_stmt 0
	j	.L570
.L569:
	.loc 2 2287 22 is_stmt 1 discriminator 12
	lw	a5,-76(s0)
	lw	a5,8(a5)
	mv	a0,a5
	call	ecp_restart_rsm_init
.L568:
	.loc 2 2291 15
	lw	a5,-64(s0)
	addi	a4,a5,8
	.loc 2 2291 42
	lw	a5,-52(s0)
	addi	a5,a5,36
	.loc 2 2291 15
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 2291 58 discriminator 1
	bne	a5,zero,.L571
	.loc 2 2292 15
	lw	a4,-64(s0)
	.loc 2 2292 42
	lw	a5,-52(s0)
	addi	a5,a5,28
	.loc 2 2292 15
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 2291 58 discriminator 2
	bne	a5,zero,.L571
	.loc 2 2291 58 is_stmt 0 discriminator 4
	li	a5,1
	.loc 2 2291 58
	j	.L572
.L571:
	.loc 2 2291 58 discriminator 5
	li	a5,0
.L572:
	.loc 2 2291 12 is_stmt 1 discriminator 7
	sb	a5,-34(s0)
	.loc 2 2298 9
	lbu	a5,-34(s0)
	mv	a1,a5
	lw	a0,-52(s0)
	call	ecp_pick_window_size
	mv	a5,a0
	sb	a5,-35(s0)
	.loc 2 2299 23
	lbu	a5,-35(s0)
	addi	a5,a5,-1
	.loc 2 2299 17
	li	a4,1
	sll	a5,a4,a5
	.loc 2 2299 12
	sb	a5,-33(s0)
	.loc 2 2300 13
	lw	a5,-52(s0)
	lw	a4,64(a5)
	.loc 2 2300 21
	lbu	a5,-35(s0)
	add	a5,a4,a5
	.loc 2 2300 25
	addi	a4,a5,-1
	.loc 2 2300 30
	lbu	a5,-35(s0)
	.loc 2 2300 7
	divu	a5,a4,a5
	sw	a5,-40(s0)
	.loc 2 2303 8
	lbu	a5,-34(s0)
	beq	a5,zero,.L573
	.loc 2 2303 22 discriminator 1
	lw	a5,-52(s0)
	lw	a5,88(a5)
	.loc 2 2303 16 discriminator 1
	beq	a5,zero,.L573
	.loc 2 2305 11
	lw	a5,-52(s0)
	lw	a5,88(a5)
	sw	a5,-28(s0)
	.loc 2 2306 14
	li	a5,1
	sb	a5,-22(s0)
	j	.L574
.L573:
	.loc 2 2310 8
	lw	a5,-76(s0)
	beq	a5,zero,.L575
	.loc 2 2310 32 discriminator 1
	lw	a5,-76(s0)
	lw	a5,8(a5)
	.loc 2 2310 23 discriminator 1
	beq	a5,zero,.L575
	.loc 2 2310 55 discriminator 2
	lw	a5,-76(s0)
	lw	a5,8(a5)
	.loc 2 2310 60 discriminator 2
	lw	a5,28(a5)
	.loc 2 2310 46 discriminator 2
	beq	a5,zero,.L575
	.loc 2 2312 19
	lw	a5,-76(s0)
	lw	a5,8(a5)
	.loc 2 2312 11
	lw	a5,28(a5)
	sw	a5,-28(s0)
	.loc 2 2313 15
	lw	a5,-76(s0)
	lw	a5,8(a5)
	.loc 2 2313 24
	sw	zero,28(a5)
	.loc 2 2314 15
	lw	a5,-76(s0)
	lw	a5,8(a5)
	.loc 2 2314 29
	sb	zero,32(a5)
	.loc 2 2317 22
	lw	a5,-76(s0)
	lw	a5,8(a5)
	.loc 2 2317 27
	lbu	a5,33(a5)
	.loc 2 2317 35
	sltiu	a5,a5,5
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 2 2317 14
	sb	a5,-22(s0)
	j	.L574
.L575:
	.loc 2 2322 13
	lbu	a5,-33(s0)
	li	a1,24
	mv	a0,a5
	call	calloc
	mv	a5,a0
	sw	a5,-28(s0)
	.loc 2 2323 12
	lw	a5,-28(s0)
	bne	a5,zero,.L576
	.loc 2 2324 17
	li	a5,-20480
	addi	a5,a5,640
	sw	a5,-20(s0)
	.loc 2 2325 13
	j	.L577
.L576:
	.loc 2 2328 16
	sb	zero,-21(s0)
	.loc 2 2328 9
	j	.L578
.L579:
	.loc 2 2329 38
	lbu	a4,-21(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	mv	a4,a5
	.loc 2 2329 13
	lw	a5,-28(s0)
	add	a5,a5,a4
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 2328 34 discriminator 3
	lbu	a5,-21(s0)
	addi	a5,a5,1
	sb	a5,-21(s0)
.L578:
	.loc 2 2328 23 discriminator 1
	lbu	a4,-21(s0)
	lbu	a5,-33(s0)
	bltu	a4,a5,.L579
	.loc 2 2332 14
	sb	zero,-22(s0)
.L574:
	.loc 2 2336 8
	lbu	a5,-22(s0)
	bne	a5,zero,.L580
	.loc 2 2337 26
	lbu	a3,-35(s0)
	lw	a5,-76(s0)
	lw	a4,-40(s0)
	lw	a2,-64(s0)
	lw	a1,-28(s0)
	lw	a0,-52(s0)
	call	ecp_precompute_comb
	sw	a0,-20(s0)
	.loc 2 2337 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L591
	.loc 2 2339 12
	lbu	a5,-34(s0)
	beq	a5,zero,.L580
	.loc 2 2342 20
	lw	a5,-52(s0)
	lw	a4,-28(s0)
	sw	a4,88(a5)
	.loc 2 2343 25
	lbu	a4,-33(s0)
	lw	a5,-52(s0)
	sw	a4,92(a5)
.L580:
	.loc 2 2348 22
	lbu	a3,-35(s0)
	lbu	a4,-33(s0)
	lw	a5,-76(s0)
	sw	a5,4(sp)
	lw	a5,-72(s0)
	sw	a5,0(sp)
	lw	a7,-68(s0)
	lw	a6,-40(s0)
	mv	a5,a3
	lw	a3,-28(s0)
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	ecp_mul_comb_after_precomp
	sw	a0,-20(s0)
	.loc 2 2352 1
	j	.L577
.L591:
	.loc 2 2337 79
	nop
.L577:
	.loc 2 2355 17
	lw	a5,-52(s0)
	lw	a5,88(a5)
	.loc 2 2355 8
	lw	a4,-28(s0)
	bne	a4,a5,.L582
	.loc 2 2356 11
	sw	zero,-28(s0)
.L582:
	.loc 2 2361 8
	lw	a5,-76(s0)
	beq	a5,zero,.L583
	.loc 2 2361 32 discriminator 1
	lw	a5,-76(s0)
	lw	a5,8(a5)
	.loc 2 2361 23 discriminator 1
	beq	a5,zero,.L583
	.loc 2 2361 46 discriminator 2
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,1280
	bne	a4,a5,.L583
	.loc 2 2361 64 discriminator 3
	lw	a5,-28(s0)
	beq	a5,zero,.L583
	.loc 2 2363 15
	lw	a5,-76(s0)
	lw	a5,8(a5)
	.loc 2 2363 29
	lbu	a4,-33(s0)
	sb	a4,32(a5)
	.loc 2 2364 15
	lw	a5,-76(s0)
	lw	a5,8(a5)
	.loc 2 2364 24
	lw	a4,-28(s0)
	sw	a4,28(a5)
	.loc 2 2365 11
	sw	zero,-28(s0)
.L583:
	.loc 2 2370 8
	lw	a5,-28(s0)
	beq	a5,zero,.L584
	.loc 2 2371 16
	sb	zero,-21(s0)
	.loc 2 2371 9
	j	.L585
.L586:
	.loc 2 2372 38
	lbu	a4,-21(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,3
	mv	a4,a5
	.loc 2 2372 13
	lw	a5,-28(s0)
	add	a5,a5,a4
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 2371 34 discriminator 3
	lbu	a5,-21(s0)
	addi	a5,a5,1
	sb	a5,-21(s0)
.L585:
	.loc 2 2371 23 discriminator 1
	lbu	a4,-21(s0)
	lbu	a5,-33(s0)
	bltu	a4,a5,.L586
	.loc 2 2374 9
	lw	a0,-28(s0)
	call	free
.L584:
	.loc 2 2378 30
	lw	a5,-20(s0)
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 2 2378 9
	sw	a5,-32(s0)
	.loc 2 2381 8
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,1280
	bne	a4,a5,.L587
	.loc 2 2382 23
	sw	zero,-32(s0)
.L587:
	.loc 2 2385 8
	lw	a5,-32(s0)
	beq	a5,zero,.L588
	.loc 2 2386 9
	lw	a0,-56(s0)
	call	mbedtls_ecp_point_free
.L588:
	.loc 2 2389 13
	lw	a5,-76(s0)
	beq	a5,zero,.L589
	.loc 2 2389 13 discriminator 1
	lw	a5,-76(s0)
	lw	a5,8(a5)
	.loc 2 2389 4 discriminator 1
	beq	a5,zero,.L589
	.loc 2 2389 4 discriminator 3
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,1280
	beq	a4,a5,.L589
	.loc 2 2389 25 discriminator 5
	lw	a5,-76(s0)
	lw	a5,8(a5)
	mv	a0,a5
	call	ecp_restart_rsm_free
	.loc 2 2389 71 discriminator 7
	lw	a5,-76(s0)
	lw	a5,8(a5)
	.loc 2 2389 60 discriminator 7
	mv	a0,a5
	call	free
	.loc 2 2389 91 discriminator 8
	lw	a5,-76(s0)
	sw	zero,8(a5)
.L589:
	.loc 2 2389 11 discriminator 9
	lw	a5,-76(s0)
	beq	a5,zero,.L590
	.loc 2 2389 12 discriminator 10
	lw	a5,-76(s0)
	lw	a5,4(a5)
	.loc 2 2389 19 discriminator 10
	addi	a4,a5,-1
	lw	a5,-76(s0)
	sw	a4,4(a5)
.L590:
	.loc 2 2391 12
	lw	a5,-20(s0)
.L570:
	.loc 2 2392 1
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
.LFE75:
	.size	ecp_mul_comb, .-ecp_mul_comb
	.section	.text.ecp_normalize_mxz,"ax",@progbits
	.align	1
	.type	ecp_normalize_mxz, @function
ecp_normalize_mxz:
.LFB76:
	.loc 2 2410 1
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
	.loc 2 2420 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 2421 22
	lw	a5,-40(s0)
	addi	a4,a5,16
	.loc 2 2421 16
	lw	a5,-40(s0)
	addi	a2,a5,16
	.loc 2 2421 22
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a3,a5
	mv	a1,a4
	li	a0,0
	call	mbedtls_mpi_gcd_modinv_odd
	sw	a0,-20(s0)
	.loc 2 2421 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L597
	.loc 2 2422 22
	lw	a4,-40(s0)
	.loc 2 2422 54
	lw	a2,-40(s0)
	.loc 2 2422 61
	lw	a5,-40(s0)
	addi	a5,a5,16
	.loc 2 2422 22
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 2422 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L598
	.loc 2 2423 22
	lw	a5,-40(s0)
	addi	a5,a5,16
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 2425 1
	j	.L594
.L597:
	.loc 2 2421 41
	nop
	j	.L594
.L598:
	.loc 2 2422 76
	nop
.L594:
	.loc 2 2426 12
	lw	a5,-20(s0)
	.loc 2 2428 1
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
.LFE76:
	.size	ecp_normalize_mxz, .-ecp_normalize_mxz
	.section	.text.ecp_randomize_mxz,"ax",@progbits
	.align	1
	.type	ecp_randomize_mxz, @function
ecp_randomize_mxz:
.LFB77:
	.loc 2 2440 1
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
	.loc 2 2450 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 2452 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 2455 22
	lw	a5,-36(s0)
	addi	a2,a5,4
	addi	a5,s0,-28
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	li	a1,2
	mv	a0,a5
	call	mbedtls_mpi_random
	sw	a0,-20(s0)
	.loc 2 2455 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L605
	.loc 2 2457 22
	lw	a5,-40(s0)
	.loc 2 2457 54
	lw	a4,-40(s0)
	.loc 2 2457 22
	addi	a3,s0,-28
	mv	a2,a4
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 2457 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L606
	.loc 2 2458 22
	lw	a5,-40(s0)
	addi	a4,a5,16
	.loc 2 2458 54
	lw	a5,-40(s0)
	addi	a5,a5,16
	.loc 2 2458 22
	addi	a3,s0,-28
	mv	a2,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 2460 1
	j	.L601
.L605:
	.loc 2 2455 81
	nop
	j	.L601
.L606:
	.loc 2 2457 73
	nop
.L601:
	.loc 2 2461 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 2463 8
	lw	a4,-20(s0)
	li	a5,-14
	bne	a4,a5,.L603
	.loc 2 2464 13
	li	a5,-20480
	addi	a5,a5,768
	sw	a5,-20(s0)
.L603:
	.loc 2 2466 12
	lw	a5,-20(s0)
	.loc 2 2468 1
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
.LFE77:
	.size	ecp_randomize_mxz, .-ecp_randomize_mxz
	.section	.text.ecp_double_add_mxz,"ax",@progbits
	.align	1
	.type	ecp_double_add_mxz, @function
ecp_double_add_mxz:
.LFB78:
	.loc 2 2490 1
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
	.loc 2 2500 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 2502 22
	lw	a4,-48(s0)
	lw	a5,-48(s0)
	addi	a5,a5,16
	mv	a3,a5
	mv	a2,a4
	lw	a1,-60(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_add_mod
	sw	a0,-20(s0)
	.loc 2 2502 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L627
	.loc 2 2503 22
	lw	a5,-60(s0)
	addi	a4,a5,8
	lw	a2,-48(s0)
	lw	a5,-48(s0)
	addi	a5,a5,16
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_sub_mod
	sw	a0,-20(s0)
	.loc 2 2503 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L628
	.loc 2 2504 22
	lw	a5,-60(s0)
	addi	a4,a5,16
	lw	a2,-52(s0)
	lw	a5,-52(s0)
	addi	a5,a5,16
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_add_mod
	sw	a0,-20(s0)
	.loc 2 2504 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L629
	.loc 2 2505 22
	lw	a5,-60(s0)
	addi	a4,a5,24
	lw	a2,-52(s0)
	lw	a5,-52(s0)
	addi	a5,a5,16
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_sub_mod
	sw	a0,-20(s0)
	.loc 2 2505 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L630
	.loc 2 2506 22
	lw	a5,-60(s0)
	addi	a4,a5,24
	.loc 2 2506 54
	lw	a5,-60(s0)
	addi	a5,a5,24
	.loc 2 2506 22
	lw	a3,-60(s0)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 2506 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L631
	.loc 2 2507 22
	lw	a5,-60(s0)
	addi	a4,a5,16
	.loc 2 2507 54
	lw	a5,-60(s0)
	addi	a2,a5,16
	.loc 2 2507 61
	lw	a5,-60(s0)
	addi	a5,a5,8
	.loc 2 2507 22
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 2507 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L632
	.loc 2 2508 22
	lw	a3,-60(s0)
	lw	a2,-60(s0)
	lw	a1,-60(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 2508 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L633
	.loc 2 2509 22
	lw	a5,-60(s0)
	addi	a4,a5,8
	.loc 2 2509 54
	lw	a5,-60(s0)
	addi	a2,a5,8
	.loc 2 2509 61
	lw	a5,-60(s0)
	addi	a5,a5,8
	.loc 2 2509 22
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 2509 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L634
	.loc 2 2510 22
	lw	a4,-40(s0)
	.loc 2 2510 61
	lw	a5,-60(s0)
	addi	a5,a5,8
	.loc 2 2510 22
	mv	a3,a5
	lw	a2,-60(s0)
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 2510 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L635
	.loc 2 2511 61
	lw	a5,-60(s0)
	addi	a5,a5,8
	.loc 2 2511 22
	mv	a3,a5
	lw	a2,-60(s0)
	lw	a1,-60(s0)
	lw	a0,-36(s0)
	call	mbedtls_mpi_sub_mod
	sw	a0,-20(s0)
	.loc 2 2511 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L636
	.loc 2 2512 22
	lw	a5,-40(s0)
	addi	a4,a5,16
	lw	a5,-36(s0)
	addi	a5,a5,12
	lw	a3,-60(s0)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 2512 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L637
	.loc 2 2513 22
	lw	a5,-40(s0)
	addi	a4,a5,16
	.loc 2 2513 54
	lw	a5,-60(s0)
	addi	a2,a5,8
	.loc 2 2513 61
	lw	a5,-40(s0)
	addi	a5,a5,16
	.loc 2 2513 22
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_add_mod
	sw	a0,-20(s0)
	.loc 2 2513 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L638
	.loc 2 2514 22
	lw	a4,-44(s0)
	.loc 2 2514 54
	lw	a5,-60(s0)
	addi	a2,a5,24
	.loc 2 2514 61
	lw	a5,-60(s0)
	addi	a5,a5,16
	.loc 2 2514 22
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_add_mod
	sw	a0,-20(s0)
	.loc 2 2514 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L639
	.loc 2 2515 22
	lw	a5,-44(s0)
	.loc 2 2515 54
	lw	a4,-44(s0)
	.loc 2 2515 61
	lw	a3,-44(s0)
	.loc 2 2515 22
	mv	a2,a4
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 2515 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L640
	.loc 2 2516 22
	lw	a5,-44(s0)
	addi	a4,a5,16
	.loc 2 2516 54
	lw	a5,-60(s0)
	addi	a2,a5,24
	.loc 2 2516 61
	lw	a5,-60(s0)
	addi	a5,a5,16
	.loc 2 2516 22
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_sub_mod
	sw	a0,-20(s0)
	.loc 2 2516 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L641
	.loc 2 2517 22
	lw	a5,-44(s0)
	addi	a4,a5,16
	.loc 2 2517 54
	lw	a5,-44(s0)
	addi	a2,a5,16
	.loc 2 2517 61
	lw	a5,-44(s0)
	addi	a5,a5,16
	.loc 2 2517 22
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 2517 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L642
	.loc 2 2518 22
	lw	a5,-44(s0)
	addi	a4,a5,16
	.loc 2 2518 57
	lw	a5,-44(s0)
	addi	a5,a5,16
	.loc 2 2518 22
	mv	a3,a5
	lw	a2,-56(s0)
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 2518 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L643
	.loc 2 2519 22
	lw	a5,-40(s0)
	addi	a4,a5,16
	.loc 2 2519 61
	lw	a5,-40(s0)
	addi	a5,a5,16
	.loc 2 2519 22
	mv	a3,a5
	lw	a2,-60(s0)
	mv	a1,a4
	lw	a0,-36(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 2521 1
	j	.L609
.L627:
	.loc 2 2502 76
	nop
	j	.L609
.L628:
	.loc 2 2503 76
	nop
	j	.L609
.L629:
	.loc 2 2504 76
	nop
	j	.L609
.L630:
	.loc 2 2505 76
	nop
	j	.L609
.L631:
	.loc 2 2506 76
	nop
	j	.L609
.L632:
	.loc 2 2507 76
	nop
	j	.L609
.L633:
	.loc 2 2508 76
	nop
	j	.L609
.L634:
	.loc 2 2509 76
	nop
	j	.L609
.L635:
	.loc 2 2510 76
	nop
	j	.L609
.L636:
	.loc 2 2511 76
	nop
	j	.L609
.L637:
	.loc 2 2512 78
	nop
	j	.L609
.L638:
	.loc 2 2513 76
	nop
	j	.L609
.L639:
	.loc 2 2514 76
	nop
	j	.L609
.L640:
	.loc 2 2515 76
	nop
	j	.L609
.L641:
	.loc 2 2516 76
	nop
	j	.L609
.L642:
	.loc 2 2517 76
	nop
	j	.L609
.L643:
	.loc 2 2518 72
	nop
.L609:
	.loc 2 2523 12
	lw	a5,-20(s0)
	.loc 2 2525 1
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
.LFE78:
	.size	ecp_double_add_mxz, .-ecp_double_add_mxz
	.section	.text.ecp_mul_mxz,"ax",@progbits
	.align	1
	.type	ecp_mul_mxz, @function
ecp_mul_mxz:
.LFB79:
	.loc 2 2535 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	a0,-100(s0)
	sw	a1,-104(s0)
	sw	a2,-108(s0)
	sw	a3,-112(s0)
	sw	a4,-116(s0)
	sw	a5,-120(s0)
	.loc 2 2536 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 2542 5
	addi	a5,s0,-52
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 2542 34 discriminator 1
	addi	a5,s0,-60
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 2544 5
	addi	a5,s0,-92
	li	a1,4
	mv	a0,a5
	call	mpi_init_many
	.loc 2 2546 8
	lw	a5,-116(s0)
	bne	a5,zero,.L645
	.loc 2 2547 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L661
.L645:
	.loc 2 2551 22
	lw	a4,-112(s0)
	addi	a5,s0,-60
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 2551 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L662
	.loc 2 2552 22
	addi	a5,s0,-52
	lw	a1,-112(s0)
	mv	a0,a5
	call	mbedtls_ecp_copy
	sw	a0,-20(s0)
	.loc 2 2552 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L663
	.loc 2 2555 22
	lw	a5,-104(s0)
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 2555 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L664
	.loc 2 2556 22
	lw	a5,-104(s0)
	addi	a5,a5,16
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 2556 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L665
	.loc 2 2557 5
	lw	a5,-104(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 2560 11
	j	.L652
.L653:
	.loc 2 2560 111 discriminator 5
	lw	a5,-100(s0)
	addi	a3,a5,4
	.loc 2 2560 73 discriminator 5
	addi	a4,s0,-52
	addi	a5,s0,-52
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_sub_abs
	sw	a0,-20(s0)
	.loc 2 2560 64 discriminator 5
	lw	a5,-20(s0)
	bne	a5,zero,.L666
.L652:
	.loc 2 2560 41 discriminator 3
	lw	a5,-100(s0)
	addi	a4,a5,4
	.loc 2 2560 12 discriminator 3
	addi	a5,s0,-52
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 2560 50 discriminator 4
	bge	a5,zero,.L653
	.loc 2 2563 22
	addi	a5,s0,-52
	lw	a3,-120(s0)
	lw	a2,-116(s0)
	mv	a1,a5
	lw	a0,-100(s0)
	call	ecp_randomize_mxz
	sw	a0,-20(s0)
	.loc 2 2563 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L667
	.loc 2 2566 12
	lw	a5,-100(s0)
	lw	a5,64(a5)
	.loc 2 2566 7
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 2 2567 11
	j	.L655
.L660:
	.loc 2 2568 13
	lw	a1,-24(s0)
	lw	a0,-108(s0)
	call	mbedtls_mpi_get_bit
	mv	a5,a0
	.loc 2 2568 11 discriminator 1
	sb	a5,-25(s0)
	.loc 2 2576 26
	lw	a5,-104(s0)
	lbu	a3,-25(s0)
	addi	a4,s0,-52
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_safe_cond_swap
	sw	a0,-20(s0)
	.loc 2 2576 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L668
	.loc 2 2577 26
	lw	a5,-104(s0)
	addi	a4,a5,16
	lbu	a3,-25(s0)
	addi	a5,s0,-52
	addi	a5,a5,16
	mv	a2,a3
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_safe_cond_swap
	sw	a0,-20(s0)
	.loc 2 2577 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L669
	.loc 2 2578 26
	addi	a3,s0,-92
	addi	a5,s0,-60
	addi	a4,s0,-52
	addi	a2,s0,-52
	mv	a6,a3
	lw	a3,-104(s0)
	lw	a1,-104(s0)
	lw	a0,-100(s0)
	call	ecp_double_add_mxz
	sw	a0,-20(s0)
	.loc 2 2578 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L670
	.loc 2 2579 26
	lw	a5,-104(s0)
	lbu	a3,-25(s0)
	addi	a4,s0,-52
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_safe_cond_swap
	sw	a0,-20(s0)
	.loc 2 2579 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L671
	.loc 2 2580 26
	lw	a5,-104(s0)
	addi	a4,a5,16
	lbu	a3,-25(s0)
	addi	a5,s0,-52
	addi	a5,a5,16
	mv	a2,a3
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_safe_cond_swap
	sw	a0,-20(s0)
	.loc 2 2580 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L672
.L655:
	.loc 2 2567 13
	lw	a5,-24(s0)
	addi	a4,a5,-1
	sw	a4,-24(s0)
	.loc 2 2567 16
	bne	a5,zero,.L660
	.loc 2 2583 22
	lw	a1,-104(s0)
	lw	a0,-100(s0)
	call	ecp_normalize_mxz
	sw	a0,-20(s0)
	.loc 2 2585 1
	j	.L648
.L662:
	.loc 2 2551 59
	nop
	j	.L648
.L663:
	.loc 2 2552 55
	nop
	j	.L648
.L664:
	.loc 2 2555 57
	nop
	j	.L648
.L665:
	.loc 2 2556 57
	nop
	j	.L648
.L666:
	.loc 2 2560 128
	nop
	j	.L648
.L667:
	.loc 2 2563 72
	nop
	j	.L648
.L668:
	.loc 2 2576 84
	nop
	j	.L648
.L669:
	.loc 2 2577 84
	nop
	j	.L648
.L670:
	.loc 2 2578 84
	nop
	j	.L648
.L671:
	.loc 2 2579 84
	nop
	j	.L648
.L672:
	.loc 2 2580 84
	nop
.L648:
	.loc 2 2586 5
	addi	a5,s0,-52
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 2586 34 discriminator 1
	addi	a5,s0,-60
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 2588 5
	addi	a5,s0,-92
	li	a1,4
	mv	a0,a5
	call	mpi_free_many
	.loc 2 2589 12
	lw	a5,-20(s0)
.L661:
	.loc 2 2590 1
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
.LFE79:
	.size	ecp_mul_mxz, .-ecp_mul_mxz
	.section	.text.ecp_mul_restartable_internal,"ax",@progbits
	.align	1
	.type	ecp_mul_restartable_internal, @function
ecp_mul_restartable_internal:
.LFB80:
	.loc 2 2604 1
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
	.loc 2 2605 9
	li	a5,-20480
	addi	a5,a5,128
	sw	a5,-20(s0)
	.loc 2 2612 8
	lw	a5,-60(s0)
	beq	a5,zero,.L674
	.loc 2 2612 32 discriminator 1
	lw	a5,-60(s0)
	lw	a5,4(a5)
	.loc 2 2612 39 discriminator 1
	addi	a3,a5,1
	lw	a4,-60(s0)
	sw	a3,4(a4)
	.loc 2 2612 23 discriminator 1
	bne	a5,zero,.L674
	.loc 2 2613 26
	lw	a5,-60(s0)
	sw	zero,0(a5)
.L674:
	.loc 2 2625 9
	sw	zero,-24(s0)
	.loc 2 2627 33
	lw	a5,-60(s0)
	beq	a5,zero,.L675
	.loc 2 2627 42 discriminator 1
	lw	a5,-60(s0)
	lw	a5,8(a5)
	.loc 2 2627 33 discriminator 1
	beq	a5,zero,.L675
	.loc 2 2627 33 is_stmt 0 discriminator 3
	li	a5,1
	.loc 2 2627 33
	j	.L676
.L675:
	.loc 2 2627 33 discriminator 4
	li	a5,0
.L676:
	.loc 2 2627 16 is_stmt 1 discriminator 6
	sw	a5,-24(s0)
	.loc 2 2630 8
	lw	a5,-24(s0)
	bne	a5,zero,.L677
	.loc 2 2632 26
	li	a2,3
	lw	a1,-60(s0)
	lw	a0,-36(s0)
	call	mbedtls_ecp_check_budget
	sw	a0,-20(s0)
	.loc 2 2632 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L684
	.loc 2 2635 26
	lw	a1,-44(s0)
	lw	a0,-36(s0)
	call	mbedtls_ecp_check_privkey
	sw	a0,-20(s0)
	.loc 2 2635 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L685
	.loc 2 2636 26
	lw	a1,-48(s0)
	lw	a0,-36(s0)
	call	mbedtls_ecp_check_pubkey
	sw	a0,-20(s0)
	.loc 2 2636 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L686
.L677:
	.loc 2 2639 9
	li	a5,-20480
	addi	a5,a5,128
	sw	a5,-20(s0)
	.loc 2 2641 9
	lw	a0,-36(s0)
	call	mbedtls_ecp_get_type
	mv	a5,a0
	mv	a4,a5
	.loc 2 2641 8 discriminator 1
	li	a5,2
	bne	a4,a5,.L681
	.loc 2 2642 26
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	ecp_mul_mxz
	sw	a0,-20(s0)
	.loc 2 2642 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L687
.L681:
	.loc 2 2646 9
	lw	a0,-36(s0)
	call	mbedtls_ecp_get_type
	mv	a5,a0
	mv	a4,a5
	.loc 2 2646 8 discriminator 1
	li	a5,1
	bne	a4,a5,.L688
	.loc 2 2647 26
	lw	a6,-60(s0)
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	ecp_mul_comb
	sw	a0,-20(s0)
	.loc 2 2651 1
	j	.L688
.L684:
	.loc 2 2632 88
	nop
	j	.L679
.L685:
	.loc 2 2635 68
	nop
	j	.L679
.L686:
	.loc 2 2636 67
	nop
	j	.L679
.L687:
	.loc 2 2642 74
	nop
	j	.L679
.L688:
	.loc 2 2651 1
	nop
.L679:
	.loc 2 2660 8
	lw	a5,-60(s0)
	beq	a5,zero,.L682
	.loc 2 2661 15
	lw	a5,-60(s0)
	lw	a5,4(a5)
	.loc 2 2661 22
	addi	a4,a5,-1
	lw	a5,-60(s0)
	sw	a4,4(a5)
.L682:
	.loc 2 2665 12
	lw	a5,-20(s0)
	.loc 2 2666 1
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
.LFE80:
	.size	ecp_mul_restartable_internal, .-ecp_mul_restartable_internal
	.section	.text.mbedtls_ecp_mul_restartable,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_mul_restartable
	.type	mbedtls_ecp_mul_restartable, @function
mbedtls_ecp_mul_restartable:
.LFB81:
	.loc 2 2675 1
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
	sw	a6,-44(s0)
	.loc 2 2676 8
	lw	a5,-36(s0)
	bne	a5,zero,.L690
	.loc 2 2677 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L691
.L690:
	.loc 2 2680 12
	lw	a6,-44(s0)
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	ecp_mul_restartable_internal
	mv	a5,a0
.L691:
	.loc 2 2681 1
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
.LFE81:
	.size	mbedtls_ecp_mul_restartable, .-mbedtls_ecp_mul_restartable
	.section	.text.mbedtls_ecp_mul,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_mul
	.type	mbedtls_ecp_mul, @function
mbedtls_ecp_mul:
.LFB82:
	.loc 2 2689 1
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
	.loc 2 2690 12
	li	a6,0
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_ecp_mul_restartable
	mv	a5,a0
	.loc 2 2691 1
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
.LFE82:
	.size	mbedtls_ecp_mul, .-mbedtls_ecp_mul
	.section	.text.ecp_check_pubkey_sw,"ax",@progbits
	.align	1
	.type	ecp_check_pubkey_sw, @function
ecp_check_pubkey_sw:
.LFB83:
	.loc 2 2700 1
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
	.loc 2 2701 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 2705 9
	lw	a5,-56(s0)
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 2705 8 discriminator 1
	blt	a5,zero,.L695
	.loc 2 2706 9
	lw	a5,-56(s0)
	addi	a5,a5,8
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 2705 44 discriminator 2
	blt	a5,zero,.L695
	.loc 2 2707 9
	lw	a4,-56(s0)
	lw	a5,-52(s0)
	addi	a5,a5,4
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 2706 44
	bge	a5,zero,.L695
	.loc 2 2708 9
	lw	a5,-56(s0)
	addi	a4,a5,8
	lw	a5,-52(s0)
	addi	a5,a5,4
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 2707 51
	blt	a5,zero,.L696
.L695:
	.loc 2 2709 16
	li	a5,-20480
	addi	a5,a5,896
	j	.L701
.L696:
	.loc 2 2712 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 2712 28 discriminator 1
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 2718 22
	lw	a5,-56(s0)
	addi	a4,a5,8
	lw	a5,-56(s0)
	addi	a3,a5,8
	addi	a5,s0,-28
	mv	a2,a4
	mv	a1,a5
	lw	a0,-52(s0)
	call	mbedtls_mpi_mul_mod
	sw	a0,-20(s0)
	.loc 2 2718 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L702
	.loc 2 2719 22
	lw	a4,-56(s0)
	addi	a5,s0,-36
	mv	a2,a4
	mv	a1,a5
	lw	a0,-52(s0)
	call	ecp_sw_rhs
	sw	a0,-20(s0)
	.loc 2 2719 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L703
	.loc 2 2721 9
	addi	a4,s0,-36
	addi	a5,s0,-28
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 2721 8 discriminator 1
	beq	a5,zero,.L704
	.loc 2 2722 13
	li	a5,-20480
	addi	a5,a5,896
	sw	a5,-20(s0)
	j	.L699
.L702:
	.loc 2 2718 76
	nop
	j	.L699
.L703:
	.loc 2 2719 60
	nop
	j	.L699
.L704:
	.loc 2 2725 1
	nop
.L699:
	.loc 2 2727 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 2727 28 discriminator 1
	addi	a5,s0,-36
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 2729 12
	lw	a5,-20(s0)
.L701:
	.loc 2 2730 1
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
.LFE83:
	.size	ecp_check_pubkey_sw, .-ecp_check_pubkey_sw
	.section	.text.mbedtls_ecp_mul_shortcuts,"ax",@progbits
	.align	1
	.type	mbedtls_ecp_mul_shortcuts, @function
mbedtls_ecp_mul_shortcuts:
.LFB84:
	.loc 2 2744 1
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
	.loc 2 2745 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 2747 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 2749 9
	li	a1,0
	lw	a0,-44(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 2749 8 discriminator 1
	bne	a5,zero,.L706
	.loc 2 2750 26
	lw	a1,-48(s0)
	lw	a0,-36(s0)
	call	mbedtls_ecp_check_pubkey
	sw	a0,-20(s0)
	.loc 2 2750 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L716
	.loc 2 2751 26
	lw	a0,-40(s0)
	call	mbedtls_ecp_set_zero
	sw	a0,-20(s0)
	j	.L708
.L706:
	.loc 2 2752 16
	li	a1,1
	lw	a0,-44(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 2752 15 discriminator 1
	bne	a5,zero,.L709
	.loc 2 2753 26
	lw	a1,-48(s0)
	lw	a0,-36(s0)
	call	mbedtls_ecp_check_pubkey
	sw	a0,-20(s0)
	.loc 2 2753 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L717
	.loc 2 2754 26
	lw	a1,-48(s0)
	lw	a0,-40(s0)
	call	mbedtls_ecp_copy
	sw	a0,-20(s0)
	j	.L708
.L709:
	.loc 2 2755 16
	li	a1,-1
	lw	a0,-44(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 2755 15 discriminator 1
	bne	a5,zero,.L711
	.loc 2 2756 26
	lw	a1,-48(s0)
	lw	a0,-36(s0)
	call	mbedtls_ecp_check_pubkey
	sw	a0,-20(s0)
	.loc 2 2756 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L718
	.loc 2 2757 26
	lw	a1,-48(s0)
	lw	a0,-40(s0)
	call	mbedtls_ecp_copy
	sw	a0,-20(s0)
	.loc 2 2757 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L719
.LBB13:
	.loc 2 2758 60
	lw	a5,-40(s0)
	addi	a5,a5,8
	.loc 2 2758 38
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 2758 72 discriminator 1
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 2 2758 28 discriminator 1
	sb	a5,-21(s0)
	.loc 2 2758 121 discriminator 1
	lw	a5,-36(s0)
	addi	a4,a5,4
	.loc 2 2758 132 discriminator 1
	lw	a5,-40(s0)
	addi	a3,a5,8
	.loc 2 2758 95 discriminator 1
	addi	a5,s0,-32
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_sub_mpi
	sw	a0,-20(s0)
	.loc 2 2758 86 discriminator 2
	lw	a5,-20(s0)
	bne	a5,zero,.L720
	.loc 2 2758 193 discriminator 4
	lw	a5,-40(s0)
	addi	a5,a5,8
	lbu	a4,-21(s0)
	andi	a4,a4,1
	andi	a3,a4,0xff
	addi	a4,s0,-32
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_safe_cond_assign
	sw	a0,-20(s0)
	j	.L708
.L711:
.LBE13:
	.loc 2 2760 26
	lw	a6,-52(s0)
	li	a5,0
	li	a4,0
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	ecp_mul_restartable_internal
	sw	a0,-20(s0)
	.loc 2 2764 1
	j	.L708
.L716:
	.loc 2 2750 67
	nop
	j	.L708
.L717:
	.loc 2 2753 67
	nop
	j	.L708
.L718:
	.loc 2 2756 67
	nop
	j	.L708
.L719:
	.loc 2 2757 57
	nop
	j	.L708
.L720:
.LBB14:
	.loc 2 2758 149
	nop
.L708:
.LBE14:
	.loc 2 2765 5
	addi	a5,s0,-32
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 2767 12
	lw	a5,-20(s0)
	.loc 2 2768 1
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
.LFE84:
	.size	mbedtls_ecp_mul_shortcuts, .-mbedtls_ecp_mul_shortcuts
	.section	.text.mbedtls_ecp_muladd_restartable,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_muladd_restartable
	.type	mbedtls_ecp_muladd_restartable, @function
mbedtls_ecp_muladd_restartable:
.LFB85:
	.loc 2 2779 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	a0,-100(s0)
	sw	a1,-104(s0)
	sw	a2,-108(s0)
	sw	a3,-112(s0)
	sw	a4,-116(s0)
	sw	a5,-120(s0)
	sw	a6,-124(s0)
	.loc 2 2780 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 2782 24
	addi	a5,s0,-52
	sw	a5,-24(s0)
	.loc 2 2783 24
	lw	a5,-104(s0)
	sw	a5,-28(s0)
	.loc 2 2788 9
	lw	a0,-100(s0)
	call	mbedtls_ecp_get_type
	mv	a5,a0
	mv	a4,a5
	.loc 2 2788 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L722
	.loc 2 2789 16
	li	a5,-20480
	addi	a5,a5,384
	j	.L742
.L722:
	.loc 2 2792 5
	addi	a5,s0,-52
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 2793 5
	addi	a5,s0,-84
	li	a1,4
	mv	a0,a5
	call	mpi_init_many
	.loc 2 2795 13
	lw	a5,-124(s0)
	beq	a5,zero,.L724
	.loc 2 2795 13 discriminator 1
	lw	a5,-124(s0)
	lw	a5,4(a5)
	.loc 2 2795 20 discriminator 1
	addi	a3,a5,1
	lw	a4,-124(s0)
	sw	a3,4(a4)
	.loc 2 2795 4 discriminator 1
	bne	a5,zero,.L724
	.loc 2 2795 46 discriminator 3
	lw	a5,-124(s0)
	sw	zero,0(a5)
.L724:
	.loc 2 2795 55 discriminator 5
	call	mbedtls_ecp_restart_is_enabled
	mv	a5,a0
	.loc 2 2795 54 discriminator 6
	beq	a5,zero,.L725
	.loc 2 2795 88 discriminator 7
	lw	a5,-124(s0)
	beq	a5,zero,.L725
	.loc 2 2795 13 discriminator 8
	lw	a5,-124(s0)
	lw	a5,12(a5)
	.loc 2 2795 4 discriminator 8
	bne	a5,zero,.L725
	.loc 2 2795 21 discriminator 9
	li	a1,52
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 2 2795 19 discriminator 10
	lw	a5,-124(s0)
	sw	a4,12(a5)
	.loc 2 2795 63 discriminator 10
	lw	a5,-124(s0)
	lw	a5,12(a5)
	.loc 2 2795 56 discriminator 10
	bne	a5,zero,.L726
	.loc 2 2795 13 discriminator 11
	li	a5,-20480
	addi	a5,a5,640
	.loc 2 2795 13 is_stmt 0
	j	.L742
.L726:
	.loc 2 2795 22 is_stmt 1 discriminator 12
	lw	a5,-124(s0)
	lw	a5,12(a5)
	mv	a0,a5
	call	ecp_restart_ma_init
.L725:
	.loc 2 2798 8
	lw	a5,-124(s0)
	beq	a5,zero,.L727
	.loc 2 2798 32 discriminator 1
	lw	a5,-124(s0)
	lw	a5,12(a5)
	.loc 2 2798 23 discriminator 1
	beq	a5,zero,.L727
	.loc 2 2800 22
	lw	a5,-124(s0)
	lw	a5,12(a5)
	.loc 2 2800 13
	sw	a5,-24(s0)
	.loc 2 2801 21
	lw	a5,-124(s0)
	lw	a5,12(a5)
	.loc 2 2801 12
	addi	a5,a5,24
	sw	a5,-28(s0)
	.loc 2 2804 19
	lw	a5,-124(s0)
	lw	a5,12(a5)
	.loc 2 2804 23
	lbu	a4,48(a5)
	.loc 2 2804 12
	li	a5,1
	beq	a4,a5,.L743
	.loc 2 2807 19
	lw	a5,-124(s0)
	lw	a5,12(a5)
	.loc 2 2807 23
	lbu	a4,48(a5)
	.loc 2 2807 12
	li	a5,2
	beq	a4,a5,.L744
	.loc 2 2810 19
	lw	a5,-124(s0)
	lw	a5,12(a5)
	.loc 2 2810 23
	lbu	a4,48(a5)
	.loc 2 2810 12
	li	a5,3
	beq	a4,a5,.L745
.L727:
	.loc 2 2816 22
	lw	a4,-124(s0)
	lw	a3,-112(s0)
	lw	a2,-108(s0)
	lw	a1,-24(s0)
	lw	a0,-100(s0)
	call	mbedtls_ecp_mul_shortcuts
	sw	a0,-20(s0)
	.loc 2 2816 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L746
	.loc 2 2818 8
	lw	a5,-124(s0)
	beq	a5,zero,.L747
	.loc 2 2818 32 discriminator 1
	lw	a5,-124(s0)
	lw	a5,12(a5)
	.loc 2 2818 23 discriminator 1
	beq	a5,zero,.L747
	.loc 2 2819 15
	lw	a5,-124(s0)
	lw	a5,12(a5)
	.loc 2 2819 27
	li	a4,1
	sb	a4,48(a5)
	j	.L729
.L743:
	.loc 2 2805 13
	nop
	j	.L729
.L747:
	.loc 2 2822 1
	nop
.L729:
	.loc 2 2824 22
	lw	a4,-124(s0)
	lw	a3,-120(s0)
	lw	a2,-116(s0)
	lw	a1,-28(s0)
	lw	a0,-100(s0)
	call	mbedtls_ecp_mul_shortcuts
	sw	a0,-20(s0)
	.loc 2 2824 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L748
	.loc 2 2833 8
	lw	a5,-124(s0)
	beq	a5,zero,.L749
	.loc 2 2833 32 discriminator 1
	lw	a5,-124(s0)
	lw	a5,12(a5)
	.loc 2 2833 23 discriminator 1
	beq	a5,zero,.L749
	.loc 2 2834 15
	lw	a5,-124(s0)
	lw	a5,12(a5)
	.loc 2 2834 27
	li	a4,2
	sb	a4,48(a5)
	j	.L731
.L744:
	.loc 2 2808 13
	nop
	j	.L731
.L749:
	.loc 2 2837 1
	nop
.L731:
	.loc 2 2839 22
	li	a2,11
	lw	a1,-124(s0)
	lw	a0,-100(s0)
	call	mbedtls_ecp_check_budget
	sw	a0,-20(s0)
	.loc 2 2839 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L750
	.loc 2 2840 22
	addi	a5,s0,-84
	mv	a4,a5
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	lw	a1,-28(s0)
	lw	a0,-100(s0)
	call	ecp_add_mixed
	sw	a0,-20(s0)
	.loc 2 2840 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L751
	.loc 2 2842 8
	lw	a5,-124(s0)
	beq	a5,zero,.L752
	.loc 2 2842 32 discriminator 1
	lw	a5,-124(s0)
	lw	a5,12(a5)
	.loc 2 2842 23 discriminator 1
	beq	a5,zero,.L752
	.loc 2 2843 15
	lw	a5,-124(s0)
	lw	a5,12(a5)
	.loc 2 2843 27
	li	a4,3
	sb	a4,48(a5)
	j	.L732
.L745:
	.loc 2 2811 13
	nop
	j	.L732
.L752:
	.loc 2 2846 1
	nop
.L732:
	.loc 2 2848 22
	li	a2,120
	lw	a1,-124(s0)
	lw	a0,-100(s0)
	call	mbedtls_ecp_check_budget
	sw	a0,-20(s0)
	.loc 2 2848 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L753
	.loc 2 2849 22
	lw	a1,-28(s0)
	lw	a0,-100(s0)
	call	ecp_normalize_jac
	sw	a0,-20(s0)
	.loc 2 2849 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L754
	.loc 2 2852 8
	lw	a5,-124(s0)
	beq	a5,zero,.L755
	.loc 2 2852 32 discriminator 1
	lw	a5,-124(s0)
	lw	a5,12(a5)
	.loc 2 2852 23 discriminator 1
	beq	a5,zero,.L755
	.loc 2 2853 26
	lw	a1,-28(s0)
	lw	a0,-104(s0)
	call	mbedtls_ecp_copy
	sw	a0,-20(s0)
	.loc 2 2857 1
	j	.L755
.L746:
	.loc 2 2816 80
	nop
	j	.L734
.L748:
	.loc 2 2824 79
	nop
	j	.L734
.L750:
	.loc 2 2839 85
	nop
	j	.L734
.L751:
	.loc 2 2840 67
	nop
	j	.L734
.L753:
	.loc 2 2848 86
	nop
	j	.L734
.L754:
	.loc 2 2849 57
	nop
	j	.L734
.L755:
	.loc 2 2857 1
	nop
.L734:
	.loc 2 2859 5
	addi	a5,s0,-84
	li	a1,4
	mv	a0,a5
	call	mpi_free_many
	.loc 2 2867 5
	addi	a5,s0,-52
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 2869 13
	lw	a5,-124(s0)
	beq	a5,zero,.L740
	.loc 2 2869 13 discriminator 1
	lw	a5,-124(s0)
	lw	a5,12(a5)
	.loc 2 2869 4 discriminator 1
	beq	a5,zero,.L740
	.loc 2 2869 4 discriminator 3
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,1280
	beq	a4,a5,.L740
	.loc 2 2869 25 discriminator 5
	lw	a5,-124(s0)
	lw	a5,12(a5)
	mv	a0,a5
	call	ecp_restart_ma_free
	.loc 2 2869 69 discriminator 7
	lw	a5,-124(s0)
	lw	a5,12(a5)
	.loc 2 2869 58 discriminator 7
	mv	a0,a5
	call	free
	.loc 2 2869 87 discriminator 8
	lw	a5,-124(s0)
	sw	zero,12(a5)
.L740:
	.loc 2 2869 11 discriminator 9
	lw	a5,-124(s0)
	beq	a5,zero,.L741
	.loc 2 2869 12 discriminator 10
	lw	a5,-124(s0)
	lw	a5,4(a5)
	.loc 2 2869 19 discriminator 10
	addi	a4,a5,-1
	lw	a5,-124(s0)
	sw	a4,4(a5)
.L741:
	.loc 2 2871 12
	lw	a5,-20(s0)
.L742:
	.loc 2 2872 1
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
.LFE85:
	.size	mbedtls_ecp_muladd_restartable, .-mbedtls_ecp_muladd_restartable
	.section	.text.mbedtls_ecp_muladd,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_muladd
	.type	mbedtls_ecp_muladd, @function
mbedtls_ecp_muladd:
.LFB86:
	.loc 2 2881 1
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
	.loc 2 2882 12
	li	a6,0
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_ecp_muladd_restartable
	mv	a5,a0
	.loc 2 2883 1
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
.LFE86:
	.size	mbedtls_ecp_muladd, .-mbedtls_ecp_muladd
	.section	.rodata.x25519_bad_point_1,"a"
	.align	2
	.type	x25519_bad_point_1, @object
	.size	x25519_bad_point_1, 32
x25519_bad_point_1:
	.word	2088430560
	.word	-1363656389
	.word	-85764586
	.word	1791270897
	.word	-343078438
	.word	-38718820
	.word	369451654
	.word	12077407
	.section	.rodata.x25519_bad_point_2,"a"
	.align	2
	.type	x25519_bad_point_2, @object
	.size	x25519_bad_point_2, 32
x25519_bad_point_2:
	.word	-1131045793
	.word	613175459
	.word	1437716657
	.word	1542423452
	.word	-1000586236
	.word	-2037506984
	.word	-582081832
	.word	1460772816
	.section	.srodata.ecp_x25519_bad_point_1,"a"
	.align	2
	.type	ecp_x25519_bad_point_1, @object
	.size	ecp_x25519_bad_point_1, 8
ecp_x25519_bad_point_1:
	.word	x25519_bad_point_1
	.half	1
	.half	8
	.section	.srodata.ecp_x25519_bad_point_2,"a"
	.align	2
	.type	ecp_x25519_bad_point_2, @object
	.size	ecp_x25519_bad_point_2, 8
ecp_x25519_bad_point_2:
	.word	x25519_bad_point_2
	.half	1
	.half	8
	.section	.text.ecp_check_bad_points_mx,"ax",@progbits
	.align	1
	.type	ecp_check_bad_points_mx, @function
ecp_check_bad_points_mx:
.LFB87:
	.loc 2 2923 1
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
	.loc 2 2927 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 2931 22
	addi	a5,s0,-28
	lw	a1,-36(s0)
	mv	a0,a5
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 2931 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L769
	.loc 2 2932 11
	j	.L761
.L762:
	.loc 2 2933 26
	addi	a4,s0,-28
	addi	a5,s0,-28
	lw	a2,-40(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_sub_mpi
	sw	a0,-20(s0)
	.loc 2 2933 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L770
.L761:
	.loc 2 2932 12
	addi	a5,s0,-28
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 2932 41 discriminator 1
	bge	a5,zero,.L762
	.loc 2 2939 9
	addi	a5,s0,-28
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 2939 8 discriminator 1
	bgt	a5,zero,.L763
	.loc 2 2940 13
	li	a5,-20480
	addi	a5,a5,896
	sw	a5,-20(s0)
	.loc 2 2941 9
	j	.L760
.L763:
	.loc 2 2945 8
	lbu	a4,-41(s0)
	li	a5,9
	bne	a4,a5,.L764
	.loc 2 2946 13
	addi	a4,s0,-28
	lui	a5,%hi(ecp_x25519_bad_point_1)
	addi	a1,a5,%lo(ecp_x25519_bad_point_1)
	mv	a0,a4
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 2946 12 discriminator 1
	bne	a5,zero,.L765
	.loc 2 2947 17
	li	a5,-20480
	addi	a5,a5,896
	sw	a5,-20(s0)
	.loc 2 2948 13
	j	.L760
.L765:
	.loc 2 2951 13
	addi	a4,s0,-28
	lui	a5,%hi(ecp_x25519_bad_point_2)
	addi	a1,a5,%lo(ecp_x25519_bad_point_2)
	mv	a0,a4
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 2951 12 discriminator 1
	bne	a5,zero,.L764
	.loc 2 2952 17
	li	a5,-20480
	addi	a5,a5,896
	sw	a5,-20(s0)
	.loc 2 2953 13
	j	.L760
.L764:
	.loc 2 2961 22
	addi	a4,s0,-28
	addi	a5,s0,-28
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_add_int
	sw	a0,-20(s0)
	.loc 2 2961 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L771
	.loc 2 2962 9
	addi	a5,s0,-28
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 2962 8 discriminator 1
	bne	a5,zero,.L767
	.loc 2 2963 13
	li	a5,-20480
	addi	a5,a5,896
	sw	a5,-20(s0)
	.loc 2 2964 9
	j	.L760
.L767:
	.loc 2 2967 9
	sw	zero,-20(s0)
	j	.L760
.L769:
	.loc 2 2931 56
	nop
	j	.L760
.L770:
	.loc 2 2933 69
	nop
	j	.L760
.L771:
	.loc 2 2961 65
	nop
.L760:
	.loc 2 2970 5
	addi	a5,s0,-28
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 2972 12
	lw	a5,-20(s0)
	.loc 2 2973 1
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
.LFE87:
	.size	ecp_check_bad_points_mx, .-ecp_check_bad_points_mx
	.section	.text.ecp_check_pubkey_mx,"ax",@progbits
	.align	1
	.type	ecp_check_pubkey_mx, @function
ecp_check_pubkey_mx:
.LFB88:
	.loc 2 2979 1
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
	.loc 2 2983 9
	lw	a5,-24(s0)
	mv	a0,a5
	call	mbedtls_mpi_size
	mv	a4,a0
	.loc 2 2983 40 discriminator 1
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 2 2983 48 discriminator 1
	addi	a5,a5,7
	.loc 2 2983 53 discriminator 1
	srli	a5,a5,3
	.loc 2 2983 8 discriminator 1
	bleu	a4,a5,.L773
	.loc 2 2984 16
	li	a5,-20480
	addi	a5,a5,896
	j	.L774
.L773:
	.loc 2 2990 9
	lw	a5,-24(s0)
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 2990 8 discriminator 1
	bge	a5,zero,.L775
	.loc 2 2991 16
	li	a5,-20480
	addi	a5,a5,896
	j	.L774
.L775:
	.loc 2 2994 12
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	addi	a3,a5,4
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	ecp_check_bad_points_mx
	mv	a5,a0
.L774:
	.loc 2 2995 1
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
.LFE88:
	.size	ecp_check_pubkey_mx, .-ecp_check_pubkey_mx
	.section	.text.mbedtls_ecp_check_pubkey,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_check_pubkey
	.type	mbedtls_ecp_check_pubkey, @function
mbedtls_ecp_check_pubkey:
.LFB89:
	.loc 2 3003 1
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
	.loc 2 3005 9
	lw	a5,-24(s0)
	addi	a5,a5,16
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 3005 8 discriminator 1
	beq	a5,zero,.L777
	.loc 2 3006 16
	li	a5,-20480
	addi	a5,a5,896
	j	.L778
.L777:
	.loc 2 3010 9
	lw	a0,-20(s0)
	call	mbedtls_ecp_get_type
	mv	a5,a0
	mv	a4,a5
	.loc 2 3010 8 discriminator 1
	li	a5,2
	bne	a4,a5,.L779
	.loc 2 3011 16
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	ecp_check_pubkey_mx
	mv	a5,a0
	j	.L778
.L779:
	.loc 2 3015 9
	lw	a0,-20(s0)
	call	mbedtls_ecp_get_type
	mv	a5,a0
	mv	a4,a5
	.loc 2 3015 8 discriminator 1
	li	a5,1
	bne	a4,a5,.L780
	.loc 2 3016 16
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	ecp_check_pubkey_sw
	mv	a5,a0
	j	.L778
.L780:
	.loc 2 3019 12
	li	a5,-20480
	addi	a5,a5,128
.L778:
	.loc 2 3020 1
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
.LFE89:
	.size	mbedtls_ecp_check_pubkey, .-mbedtls_ecp_check_pubkey
	.section	.text.mbedtls_ecp_check_privkey,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_check_privkey
	.type	mbedtls_ecp_check_privkey, @function
mbedtls_ecp_check_privkey:
.LFB90:
	.loc 2 3027 1
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
	.loc 2 3029 9
	lw	a0,-20(s0)
	call	mbedtls_ecp_get_type
	mv	a5,a0
	mv	a4,a5
	.loc 2 3029 8 discriminator 1
	li	a5,2
	bne	a4,a5,.L782
	.loc 2 3031 13
	li	a1,0
	lw	a0,-24(s0)
	call	mbedtls_mpi_get_bit
	mv	a5,a0
	.loc 2 3031 12 discriminator 1
	bne	a5,zero,.L783
	.loc 2 3032 13
	li	a1,1
	lw	a0,-24(s0)
	call	mbedtls_mpi_get_bit
	mv	a5,a0
	.loc 2 3031 44 discriminator 2
	bne	a5,zero,.L783
	.loc 2 3033 13
	lw	a0,-24(s0)
	call	mbedtls_mpi_bitlen
	mv	a4,a0
	.loc 2 3033 41 discriminator 1
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 2 3033 49 discriminator 1
	addi	a5,a5,1
	.loc 2 3032 44
	beq	a4,a5,.L784
.L783:
	.loc 2 3034 20
	li	a5,-20480
	addi	a5,a5,896
	j	.L785
.L784:
	.loc 2 3038 16
	lw	a5,-20(s0)
	lw	a4,64(a5)
	.loc 2 3038 12
	li	a5,254
	bne	a4,a5,.L786
	.loc 2 3038 34 discriminator 1
	li	a1,2
	lw	a0,-24(s0)
	call	mbedtls_mpi_get_bit
	mv	a5,a0
	.loc 2 3038 31 discriminator 2
	beq	a5,zero,.L786
	.loc 2 3039 20
	li	a5,-20480
	addi	a5,a5,896
	j	.L785
.L786:
	.loc 2 3042 16
	li	a5,0
	j	.L785
.L782:
	.loc 2 3046 9
	lw	a0,-20(s0)
	call	mbedtls_ecp_get_type
	mv	a5,a0
	mv	a4,a5
	.loc 2 3046 8 discriminator 1
	li	a5,1
	bne	a4,a5,.L787
	.loc 2 3048 13
	li	a1,1
	lw	a0,-24(s0)
	call	mbedtls_mpi_cmp_int
	mv	a5,a0
	.loc 2 3048 12 discriminator 1
	blt	a5,zero,.L788
	.loc 2 3049 13
	lw	a5,-20(s0)
	addi	a5,a5,52
	mv	a1,a5
	lw	a0,-24(s0)
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 3048 43 discriminator 2
	blt	a5,zero,.L789
.L788:
	.loc 2 3050 20
	li	a5,-20480
	addi	a5,a5,896
	j	.L785
.L789:
	.loc 2 3052 20
	li	a5,0
	j	.L785
.L787:
	.loc 2 3057 12
	li	a5,-20480
	addi	a5,a5,128
.L785:
	.loc 2 3058 1
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
.LFE90:
	.size	mbedtls_ecp_check_privkey, .-mbedtls_ecp_check_privkey
	.section	.text.mbedtls_ecp_gen_privkey_mx,"ax",@progbits
	.align	1
	.type	mbedtls_ecp_gen_privkey_mx, @function
mbedtls_ecp_gen_privkey_mx:
.LFB91:
	.loc 2 3066 1
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
	.loc 2 3067 9
	li	a5,-20480
	addi	a5,a5,128
	sw	a5,-20(s0)
	.loc 2 3068 38
	lw	a5,-36(s0)
	srli	a5,a5,3
	.loc 2 3068 12
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 2 3074 22
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-24(s0)
	lw	a0,-40(s0)
	call	mbedtls_mpi_fill_random
	sw	a0,-20(s0)
	.loc 2 3074 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L798
	.loc 2 3076 47
	lw	a5,-24(s0)
	slli	a4,a5,3
	.loc 2 3076 64
	lw	a5,-36(s0)
	sub	a5,a4,a5
	.loc 2 3076 22
	addi	a5,a5,-1
	mv	a1,a5
	lw	a0,-40(s0)
	call	mbedtls_mpi_shift_r
	sw	a0,-20(s0)
	.loc 2 3076 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L799
	.loc 2 3078 22
	li	a2,1
	lw	a1,-36(s0)
	lw	a0,-40(s0)
	call	mbedtls_mpi_set_bit
	sw	a0,-20(s0)
	.loc 2 3078 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L800
	.loc 2 3082 22
	li	a2,0
	li	a1,0
	lw	a0,-40(s0)
	call	mbedtls_mpi_set_bit
	sw	a0,-20(s0)
	.loc 2 3082 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L801
	.loc 2 3083 22
	li	a2,0
	li	a1,1
	lw	a0,-40(s0)
	call	mbedtls_mpi_set_bit
	sw	a0,-20(s0)
	.loc 2 3083 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L802
	.loc 2 3084 8
	lw	a4,-36(s0)
	li	a5,254
	bne	a4,a5,.L803
	.loc 2 3085 26
	li	a2,0
	li	a1,2
	lw	a0,-40(s0)
	call	mbedtls_mpi_set_bit
	sw	a0,-20(s0)
	.loc 2 3088 1
	j	.L803
.L798:
	.loc 2 3074 87
	nop
	j	.L792
.L799:
	.loc 2 3076 88
	nop
	j	.L792
.L800:
	.loc 2 3078 66
	nop
	j	.L792
.L801:
	.loc 2 3082 59
	nop
	j	.L792
.L802:
	.loc 2 3083 59
	nop
	j	.L792
.L803:
	.loc 2 3088 1
	nop
.L792:
	.loc 2 3089 12
	lw	a5,-20(s0)
	.loc 2 3090 1
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
.LFE91:
	.size	mbedtls_ecp_gen_privkey_mx, .-mbedtls_ecp_gen_privkey_mx
	.section	.text.mbedtls_ecp_gen_privkey_sw,"ax",@progbits
	.align	1
	.type	mbedtls_ecp_gen_privkey_sw, @function
mbedtls_ecp_gen_privkey_sw:
.LFB92:
	.loc 2 3097 1
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
	.loc 2 3098 15
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	lw	a2,-36(s0)
	li	a1,1
	lw	a0,-40(s0)
	call	mbedtls_mpi_random
	sw	a0,-20(s0)
	.loc 2 3099 5
	lw	a4,-20(s0)
	li	a5,-14
	bne	a4,a5,.L805
	.loc 2 3101 20
	li	a5,-20480
	addi	a5,a5,768
	j	.L806
.L805:
	.loc 2 3103 20
	lw	a5,-20(s0)
.L806:
	.loc 2 3105 1
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
.LFE92:
	.size	mbedtls_ecp_gen_privkey_sw, .-mbedtls_ecp_gen_privkey_sw
	.section	.text.mbedtls_ecp_gen_privkey,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_gen_privkey
	.type	mbedtls_ecp_gen_privkey, @function
mbedtls_ecp_gen_privkey:
.LFB93:
	.loc 2 3115 1
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
	.loc 2 3117 9
	lw	a0,-20(s0)
	call	mbedtls_ecp_get_type
	mv	a5,a0
	mv	a4,a5
	.loc 2 3117 8 discriminator 1
	li	a5,2
	bne	a4,a5,.L808
	.loc 2 3118 46
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 2 3118 16
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_ecp_gen_privkey_mx
	mv	a5,a0
	j	.L809
.L808:
	.loc 2 3123 9
	lw	a0,-20(s0)
	call	mbedtls_ecp_get_type
	mv	a5,a0
	mv	a4,a5
	.loc 2 3123 8 discriminator 1
	li	a5,1
	bne	a4,a5,.L810
	.loc 2 3124 16
	lw	a5,-20(s0)
	addi	a5,a5,52
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_ecp_gen_privkey_sw
	mv	a5,a0
	j	.L809
.L810:
	.loc 2 3128 12
	li	a5,-20480
	addi	a5,a5,128
.L809:
	.loc 2 3129 1
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
.LFE93:
	.size	mbedtls_ecp_gen_privkey, .-mbedtls_ecp_gen_privkey
	.section	.text.mbedtls_ecp_gen_keypair_base,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_gen_keypair_base
	.type	mbedtls_ecp_gen_keypair_base, @function
mbedtls_ecp_gen_keypair_base:
.LFB94:
	.loc 2 3140 1
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
	.loc 2 3141 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 3142 22
	lw	a3,-56(s0)
	lw	a2,-52(s0)
	lw	a1,-44(s0)
	lw	a0,-36(s0)
	call	mbedtls_ecp_gen_privkey
	sw	a0,-20(s0)
	.loc 2 3142 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L815
	.loc 2 3143 22
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-40(s0)
	lw	a2,-44(s0)
	lw	a1,-48(s0)
	lw	a0,-36(s0)
	call	mbedtls_ecp_mul
	sw	a0,-20(s0)
	.loc 2 3145 1
	j	.L813
.L815:
	.loc 2 3142 76
	nop
.L813:
	.loc 2 3146 12
	lw	a5,-20(s0)
	.loc 2 3147 1
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
.LFE94:
	.size	mbedtls_ecp_gen_keypair_base, .-mbedtls_ecp_gen_keypair_base
	.section	.text.mbedtls_ecp_gen_keypair,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_gen_keypair
	.type	mbedtls_ecp_gen_keypair, @function
mbedtls_ecp_gen_keypair:
.LFB95:
	.loc 2 3156 1
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
	.loc 2 3157 46
	lw	a5,-20(s0)
	addi	a1,a5,28
	.loc 2 3157 12
	lw	a5,-36(s0)
	lw	a4,-32(s0)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_ecp_gen_keypair_base
	mv	a5,a0
	.loc 2 3158 1
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
.LFE95:
	.size	mbedtls_ecp_gen_keypair, .-mbedtls_ecp_gen_keypair
	.section	.text.mbedtls_ecp_gen_key,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_gen_key
	.type	mbedtls_ecp_gen_key, @function
mbedtls_ecp_gen_key:
.LFB96:
	.loc 2 3165 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sb	a5,-33(s0)
	.loc 2 3166 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 3167 16
	lw	a5,-40(s0)
	lbu	a4,-33(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecp_group_load
	sw	a0,-20(s0)
	.loc 2 3167 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L819
	.loc 2 3168 16
	lw	a5,-20(s0)
	j	.L820
.L819:
	.loc 2 3171 12
	lw	a0,-40(s0)
	lw	a5,-40(s0)
	addi	a1,a5,96
	lw	a5,-40(s0)
	addi	a5,a5,104
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	mv	a2,a5
	call	mbedtls_ecp_gen_keypair
	mv	a5,a0
.L820:
	.loc 2 3172 1
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
.LFE96:
	.size	mbedtls_ecp_gen_key, .-mbedtls_ecp_gen_key
	.section	.text.mbedtls_ecp_set_public_key,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_set_public_key
	.type	mbedtls_ecp_set_public_key, @function
mbedtls_ecp_set_public_key:
.LFB97:
	.loc 2 3178 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sb	a5,-33(s0)
	.loc 2 3179 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 3181 17
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 2 3181 8
	bne	a5,zero,.L822
	.loc 2 3183 20
	lw	a5,-40(s0)
	lbu	a4,-33(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecp_group_load
	sw	a0,-20(s0)
	.loc 2 3183 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L823
	.loc 2 3184 20
	lw	a5,-20(s0)
	j	.L824
.L822:
	.loc 2 3186 24
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 2 3186 15
	lbu	a4,-33(s0)
	beq	a4,a5,.L823
	.loc 2 3188 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L824
.L823:
	.loc 2 3190 12
	lw	a5,-40(s0)
	addi	a5,a5,104
	lw	a1,-44(s0)
	mv	a0,a5
	call	mbedtls_ecp_copy
	mv	a5,a0
.L824:
	.loc 2 3191 1
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
.LFE97:
	.size	mbedtls_ecp_set_public_key, .-mbedtls_ecp_set_public_key
	.section	.text.mbedtls_ecp_read_key,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_read_key
	.type	mbedtls_ecp_read_key, @function
mbedtls_ecp_read_key:
.LFB98:
	.loc 2 3201 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sb	a5,-33(s0)
	.loc 2 3202 9
	sw	zero,-20(s0)
	.loc 2 3204 16
	lw	a5,-40(s0)
	lbu	a4,-33(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecp_group_load
	sw	a0,-20(s0)
	.loc 2 3204 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L826
	.loc 2 3205 16
	lw	a5,-20(s0)
	j	.L827
.L826:
	.loc 2 3208 9
	li	a5,-20480
	addi	a5,a5,384
	sw	a5,-20(s0)
	.loc 2 3211 30
	lw	a5,-40(s0)
	.loc 2 3211 9
	mv	a0,a5
	call	mbedtls_ecp_get_type
	mv	a5,a0
	mv	a4,a5
	.loc 2 3211 8 discriminator 1
	li	a5,2
	bne	a4,a5,.L828
	.loc 2 3215 12
	lbu	a4,-33(s0)
	li	a5,9
	bne	a4,a5,.L829
	.loc 2 3216 16
	lw	a4,-48(s0)
	li	a5,32
	beq	a4,a5,.L830
	.loc 2 3217 24
	li	a5,-20480
	addi	a5,a5,896
	j	.L827
.L830:
	.loc 2 3220 30
	lw	a5,-40(s0)
	addi	a5,a5,96
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	mv	a0,a5
	call	mbedtls_mpi_read_binary_le
	sw	a0,-20(s0)
	.loc 2 3220 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L843
	.loc 2 3223 30
	lw	a5,-40(s0)
	addi	a5,a5,96
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_set_bit
	sw	a0,-20(s0)
	.loc 2 3223 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L844
	.loc 2 3224 30
	lw	a5,-40(s0)
	addi	a5,a5,96
	li	a2,0
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_set_bit
	sw	a0,-20(s0)
	.loc 2 3224 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L845
	.loc 2 3225 30
	lw	a5,-40(s0)
	addi	a5,a5,96
	li	a2,0
	li	a1,2
	mv	a0,a5
	call	mbedtls_mpi_set_bit
	sw	a0,-20(s0)
	.loc 2 3225 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L846
	.loc 2 3228 30
	lw	a5,-40(s0)
	addi	a5,a5,96
	li	a2,0
	li	a1,255
	mv	a0,a5
	call	mbedtls_mpi_set_bit
	sw	a0,-20(s0)
	.loc 2 3228 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L847
	.loc 2 3234 30
	lw	a5,-40(s0)
	addi	a5,a5,96
	li	a2,1
	li	a1,254
	mv	a0,a5
	call	mbedtls_mpi_set_bit
	sw	a0,-20(s0)
	.loc 2 3234 21 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L828
	.loc 2 3234 82
	j	.L832
.L829:
	.loc 2 3238 19
	lbu	a4,-33(s0)
	li	a5,13
	bne	a4,a5,.L828
	.loc 2 3239 16
	lw	a4,-48(s0)
	li	a5,56
	beq	a4,a5,.L837
	.loc 2 3240 24
	li	a5,-20480
	addi	a5,a5,896
	j	.L827
.L837:
	.loc 2 3243 30
	lw	a5,-40(s0)
	addi	a5,a5,96
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	mv	a0,a5
	call	mbedtls_mpi_read_binary_le
	sw	a0,-20(s0)
	.loc 2 3243 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L848
	.loc 2 3246 30
	lw	a5,-40(s0)
	addi	a5,a5,96
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	mbedtls_mpi_set_bit
	sw	a0,-20(s0)
	.loc 2 3246 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L849
	.loc 2 3247 30
	lw	a5,-40(s0)
	addi	a5,a5,96
	li	a2,0
	li	a1,1
	mv	a0,a5
	call	mbedtls_mpi_set_bit
	sw	a0,-20(s0)
	.loc 2 3247 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L850
	.loc 2 3250 30
	lw	a5,-40(s0)
	addi	a5,a5,96
	li	a2,1
	li	a1,447
	mv	a0,a5
	call	mbedtls_mpi_set_bit
	sw	a0,-20(s0)
	.loc 2 3250 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L851
.L828:
	.loc 2 3258 30
	lw	a5,-40(s0)
	.loc 2 3258 9
	mv	a0,a5
	call	mbedtls_ecp_get_type
	mv	a5,a0
	mv	a4,a5
	.loc 2 3258 8 discriminator 1
	li	a5,1
	bne	a4,a5,.L841
	.loc 2 3259 26
	lw	a5,-40(s0)
	addi	a5,a5,96
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	mv	a0,a5
	call	mbedtls_mpi_read_binary
	sw	a0,-20(s0)
	.loc 2 3259 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L852
.L841:
	.loc 2 3263 8
	lw	a5,-20(s0)
	bne	a5,zero,.L853
	.loc 2 3264 52
	lw	a4,-40(s0)
	.loc 2 3264 63
	lw	a5,-40(s0)
	addi	a5,a5,96
	.loc 2 3264 26
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_ecp_check_privkey
	sw	a0,-20(s0)
	.loc 2 3267 1
	j	.L853
.L843:
	.loc 2 3220 87
	nop
	j	.L832
.L844:
	.loc 2 3223 73
	nop
	j	.L832
.L845:
	.loc 2 3224 73
	nop
	j	.L832
.L846:
	.loc 2 3225 73
	nop
	j	.L832
.L847:
	.loc 2 3228 82
	nop
	j	.L832
.L848:
	.loc 2 3243 87
	nop
	j	.L832
.L849:
	.loc 2 3246 73
	nop
	j	.L832
.L850:
	.loc 2 3247 73
	nop
	j	.L832
.L851:
	.loc 2 3250 82
	nop
	j	.L832
.L852:
	.loc 2 3259 80
	nop
	j	.L832
.L853:
	.loc 2 3267 1
	nop
.L832:
	.loc 2 3269 8
	lw	a5,-20(s0)
	beq	a5,zero,.L842
	.loc 2 3270 9
	lw	a5,-40(s0)
	addi	a5,a5,96
	mv	a0,a5
	call	mbedtls_mpi_free
.L842:
	.loc 2 3273 12
	lw	a5,-20(s0)
.L827:
	.loc 2 3274 1
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
.LFE98:
	.size	mbedtls_ecp_read_key, .-mbedtls_ecp_read_key
	.section	.text.mbedtls_ecp_write_key_ext,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_write_key_ext
	.type	mbedtls_ecp_write_key_ext, @function
mbedtls_ecp_write_key_ext:
.LFB99:
	.loc 2 3314 1
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
	.loc 2 3315 27
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 2 3315 34
	addi	a5,a5,7
	.loc 2 3315 12
	srli	a5,a5,3
	sw	a5,-20(s0)
	.loc 2 3316 8
	lw	a4,-20(s0)
	lw	a5,-48(s0)
	bleu	a4,a5,.L855
	.loc 2 3318 15
	lw	a5,-40(s0)
	sw	zero,0(a5)
	.loc 2 3319 16
	li	a5,-20480
	addi	a5,a5,256
	j	.L856
.L855:
	.loc 2 3321 11
	lw	a5,-40(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 2 3324 15
	lw	a5,-36(s0)
	lhu	a5,102(a5)
	.loc 2 3324 8
	bne	a5,zero,.L857
	.loc 2 3325 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L856
.L857:
	.loc 2 3329 9
	lw	a5,-36(s0)
	mv	a0,a5
	call	mbedtls_ecp_get_type
	mv	a5,a0
	mv	a4,a5
	.loc 2 3329 8 discriminator 1
	li	a5,2
	bne	a4,a5,.L858
	.loc 2 3330 16
	lw	a5,-36(s0)
	addi	a5,a5,96
	lw	a2,-20(s0)
	lw	a1,-44(s0)
	mv	a0,a5
	call	mbedtls_mpi_write_binary_le
	mv	a5,a0
	j	.L856
.L858:
	.loc 2 3335 9
	lw	a5,-36(s0)
	mv	a0,a5
	call	mbedtls_ecp_get_type
	mv	a5,a0
	mv	a4,a5
	.loc 2 3335 8 discriminator 1
	li	a5,1
	bne	a4,a5,.L859
	.loc 2 3336 16
	lw	a5,-36(s0)
	addi	a5,a5,96
	lw	a2,-20(s0)
	lw	a1,-44(s0)
	mv	a0,a5
	call	mbedtls_mpi_write_binary
	mv	a5,a0
	j	.L856
.L859:
	.loc 2 3341 12
	li	a5,-110
.L856:
	.loc 2 3342 1
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
.LFE99:
	.size	mbedtls_ecp_write_key_ext, .-mbedtls_ecp_write_key_ext
	.section	.text.mbedtls_ecp_write_public_key,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_write_public_key
	.type	mbedtls_ecp_write_public_key, @function
mbedtls_ecp_write_public_key:
.LFB100:
	.loc 2 3350 1
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
	.loc 2 3351 12
	lw	a0,-20(s0)
	lw	a5,-20(s0)
	addi	a1,a5,104
	lw	a5,-36(s0)
	lw	a4,-32(s0)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	call	mbedtls_ecp_point_write_binary
	mv	a5,a0
	.loc 2 3353 1
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
.LFE100:
	.size	mbedtls_ecp_write_public_key, .-mbedtls_ecp_write_public_key
	.section	.text.mbedtls_ecp_check_pub_priv,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_check_pub_priv
	.type	mbedtls_ecp_check_pub_priv, @function
mbedtls_ecp_check_pub_priv:
.LFB101:
	.loc 2 3363 1
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	ra,156(sp)
	sw	s0,152(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sw	a0,-148(s0)
	sw	a1,-152(s0)
	sw	a2,-156(s0)
	sw	a3,-160(s0)
	.loc 2 3364 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 3367 17
	lw	a5,-148(s0)
	lbu	a5,0(a5)
	.loc 2 3367 8
	beq	a5,zero,.L863
	.loc 2 3368 17
	lw	a5,-148(s0)
	lbu	a4,0(a5)
	.loc 2 3368 32
	lw	a5,-152(s0)
	lbu	a5,0(a5)
	.loc 2 3367 44 discriminator 1
	bne	a4,a5,.L863
	.loc 2 3369 9
	lw	a5,-148(s0)
	addi	a4,a5,104
	lw	a5,-152(s0)
	addi	a5,a5,104
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 3368 36
	bne	a5,zero,.L863
	.loc 2 3370 9
	lw	a5,-148(s0)
	addi	a4,a5,112
	lw	a5,-152(s0)
	addi	a5,a5,112
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 3369 51
	bne	a5,zero,.L863
	.loc 2 3371 9
	lw	a5,-148(s0)
	addi	a4,a5,120
	lw	a5,-152(s0)
	addi	a5,a5,120
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 3370 51
	beq	a5,zero,.L864
.L863:
	.loc 2 3372 16
	li	a5,-20480
	addi	a5,a5,128
	j	.L869
.L864:
	.loc 2 3375 5
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 3376 5
	addi	a5,s0,-140
	mv	a0,a5
	call	mbedtls_ecp_group_init
	.loc 2 3379 5
	lw	a4,-152(s0)
	addi	a5,s0,-140
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecp_group_copy
	.loc 2 3382 22
	lw	a5,-152(s0)
	addi	a2,a5,96
	lw	a5,-152(s0)
	addi	a3,a5,28
	addi	a1,s0,-44
	addi	a0,s0,-140
	lw	a5,-160(s0)
	lw	a4,-156(s0)
	call	mbedtls_ecp_mul
	sw	a0,-20(s0)
	.loc 2 3382 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L870
	.loc 2 3384 9
	lw	a5,-152(s0)
	addi	a4,a5,104
	addi	a5,s0,-44
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 3384 8 discriminator 1
	bne	a5,zero,.L868
	.loc 2 3385 9
	lw	a5,-152(s0)
	addi	a4,a5,112
	addi	a5,s0,-44
	addi	a5,a5,8
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 3384 46 discriminator 2
	bne	a5,zero,.L868
	.loc 2 3386 9
	lw	a5,-152(s0)
	addi	a4,a5,120
	addi	a5,s0,-44
	addi	a5,a5,16
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_mpi_cmp_mpi
	mv	a5,a0
	.loc 2 3385 46
	beq	a5,zero,.L871
.L868:
	.loc 2 3387 13
	li	a5,-20480
	addi	a5,a5,128
	sw	a5,-20(s0)
	.loc 2 3388 9
	j	.L867
.L870:
	.loc 2 3382 92
	nop
	j	.L867
.L871:
	.loc 2 3391 1
	nop
.L867:
	.loc 2 3392 5
	addi	a5,s0,-44
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 3393 5
	addi	a5,s0,-140
	mv	a0,a5
	call	mbedtls_ecp_group_free
	.loc 2 3395 12
	lw	a5,-20(s0)
.L869:
	.loc 2 3396 1
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
.LFE101:
	.size	mbedtls_ecp_check_pub_priv, .-mbedtls_ecp_check_pub_priv
	.section	.text.mbedtls_ecp_keypair_calc_public,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_keypair_calc_public
	.type	mbedtls_ecp_keypair_calc_public, @function
mbedtls_ecp_keypair_calc_public:
.LFB102:
	.loc 2 3401 1
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
	.loc 2 3402 12
	lw	a0,-20(s0)
	lw	a5,-20(s0)
	addi	a1,a5,104
	.loc 2 3402 48
	lw	a5,-20(s0)
	addi	a2,a5,96
	.loc 2 3402 57
	lw	a5,-20(s0)
	addi	a3,a5,28
	.loc 2 3402 12
	lw	a5,-28(s0)
	lw	a4,-24(s0)
	call	mbedtls_ecp_mul
	mv	a5,a0
	.loc 2 3404 1
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
.LFE102:
	.size	mbedtls_ecp_keypair_calc_public, .-mbedtls_ecp_keypair_calc_public
	.section	.text.mbedtls_ecp_keypair_get_group_id,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_keypair_get_group_id
	.type	mbedtls_ecp_keypair_get_group_id, @function
mbedtls_ecp_keypair_get_group_id:
.LFB103:
	.loc 2 3409 1
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
	.loc 2 3410 20
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 2 3411 1
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
.LFE103:
	.size	mbedtls_ecp_keypair_get_group_id, .-mbedtls_ecp_keypair_get_group_id
	.section	.text.mbedtls_ecp_export,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_export
	.type	mbedtls_ecp_export, @function
mbedtls_ecp_export:
.LFB104:
	.loc 2 3418 1
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
	.loc 2 3419 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 3421 8
	lw	a5,-40(s0)
	beq	a5,zero,.L877
	.loc 2 3421 30 discriminator 1
	lw	a5,-36(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	mbedtls_ecp_group_copy
	sw	a0,-20(s0)
	.loc 2 3421 20 discriminator 2
	lw	a5,-20(s0)
	beq	a5,zero,.L877
	.loc 2 3422 16
	lw	a5,-20(s0)
	j	.L878
.L877:
	.loc 2 3425 8
	lw	a5,-44(s0)
	beq	a5,zero,.L879
	.loc 2 3425 28 discriminator 1
	lw	a5,-36(s0)
	addi	a5,a5,96
	mv	a1,a5
	lw	a0,-44(s0)
	call	mbedtls_mpi_copy
	sw	a0,-20(s0)
	.loc 2 3425 18 discriminator 2
	lw	a5,-20(s0)
	beq	a5,zero,.L879
	.loc 2 3426 16
	lw	a5,-20(s0)
	j	.L878
.L879:
	.loc 2 3429 8
	lw	a5,-48(s0)
	beq	a5,zero,.L880
	.loc 2 3429 28 discriminator 1
	lw	a5,-36(s0)
	addi	a5,a5,104
	mv	a1,a5
	lw	a0,-48(s0)
	call	mbedtls_ecp_copy
	sw	a0,-20(s0)
	.loc 2 3429 18 discriminator 2
	lw	a5,-20(s0)
	beq	a5,zero,.L880
	.loc 2 3430 16
	lw	a5,-20(s0)
	j	.L878
.L880:
	.loc 2 3433 12
	li	a5,0
.L878:
	.loc 2 3434 1
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
.LFE104:
	.size	mbedtls_ecp_export, .-mbedtls_ecp_export
	.section	.text.self_test_rng,"ax",@progbits
	.align	1
	.type	self_test_rng, @function
self_test_rng:
.LFB105:
	.loc 2 3447 1
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
.LBB15:
	.loc 2 3452 17
	sw	zero,-20(s0)
	.loc 2 3452 5
	j	.L882
.L883:
	.loc 2 3453 23
	lui	a5,%hi(state.0)
	lw	a4,%lo(state.0)(a5)
	li	a5,1662976
	addi	a5,a5,1549
	mul	a4,a4,a5
	.loc 2 3453 34
	li	a5,1013903360
	addi	a5,a5,863
	add	a4,a4,a5
	.loc 2 3453 15
	lui	a5,%hi(state.0)
	sw	a4,%lo(state.0)(a5)
	.loc 2 3454 18
	lui	a5,%hi(state.0)
	lw	a3,%lo(state.0)(a5)
	.loc 2 3454 12
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 2 3454 18
	andi	a4,a3,0xff
	.loc 2 3454 16
	sb	a4,0(a5)
	.loc 2 3452 34 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L882:
	.loc 2 3452 26 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L883
.LBE15:
	.loc 2 3457 12
	li	a5,0
	.loc 2 3458 1
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
.LFE105:
	.size	self_test_rng, .-self_test_rng
	.section	.text.self_test_adjust_exponent,"ax",@progbits
	.align	1
	.type	self_test_adjust_exponent, @function
self_test_adjust_exponent:
.LFB106:
	.loc 2 3465 1
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
	.loc 2 3466 9
	sw	zero,-20(s0)
	.loc 2 3489 13
	nop
.L886:
	.loc 2 3492 12
	lw	a5,-20(s0)
	.loc 2 3493 1
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
.LFE106:
	.size	self_test_adjust_exponent, .-self_test_adjust_exponent
	.section	.rodata
	.align	2
.LC27:
	.string	"failed (%u)\n"
	.align	2
.LC28:
	.string	"passed\n"
	.section	.text.self_test_point,"ax",@progbits
	.align	1
	.type	self_test_point, @function
self_test_point:
.LFB107:
	.loc 2 3504 1
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
	.loc 2 3505 9
	sw	zero,-20(s0)
	.loc 2 3506 12
	sw	zero,-24(s0)
	.loc 2 3508 15
	lui	a5,%hi(add_count)
	sw	zero,%lo(add_count)(a5)
	.loc 2 3509 15
	lui	a5,%hi(dbl_count)
	sw	zero,%lo(dbl_count)(a5)
	.loc 2 3510 15
	lui	a5,%hi(mul_count)
	sw	zero,%lo(mul_count)(a5)
	.loc 2 3512 22
	lw	a5,-72(s0)
	lw	a5,0(a5)
	mv	a2,a5
	li	a1,16
	lw	a0,-64(s0)
	call	mbedtls_mpi_read_string
	sw	a0,-20(s0)
	.loc 2 3512 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L903
	.loc 2 3513 22
	lw	a1,-64(s0)
	lw	a0,-56(s0)
	call	self_test_adjust_exponent
	sw	a0,-20(s0)
	.loc 2 3513 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L904
	.loc 2 3514 22
	li	a5,0
	lui	a4,%hi(self_test_rng)
	addi	a4,a4,%lo(self_test_rng)
	lw	a3,-68(s0)
	lw	a2,-64(s0)
	lw	a1,-60(s0)
	lw	a0,-56(s0)
	call	mbedtls_ecp_mul
	sw	a0,-20(s0)
	.loc 2 3514 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L905
	.loc 2 3516 12
	li	a5,1
	sw	a5,-24(s0)
	.loc 2 3516 5
	j	.L893
.L899:
	.loc 2 3517 20
	lui	a5,%hi(add_count)
	lw	a5,%lo(add_count)(a5)
	sw	a5,-28(s0)
	.loc 2 3518 20
	lui	a5,%hi(dbl_count)
	lw	a5,%lo(dbl_count)(a5)
	sw	a5,-32(s0)
	.loc 2 3519 20
	lui	a5,%hi(mul_count)
	lw	a5,%lo(mul_count)(a5)
	sw	a5,-36(s0)
	.loc 2 3520 19
	lui	a5,%hi(add_count)
	sw	zero,%lo(add_count)(a5)
	.loc 2 3521 19
	lui	a5,%hi(dbl_count)
	sw	zero,%lo(dbl_count)(a5)
	.loc 2 3522 19
	lui	a5,%hi(mul_count)
	sw	zero,%lo(mul_count)(a5)
	.loc 2 3524 66
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-72(s0)
	add	a5,a4,a5
	.loc 2 3524 26
	lw	a5,0(a5)
	mv	a2,a5
	li	a1,16
	lw	a0,-64(s0)
	call	mbedtls_mpi_read_string
	sw	a0,-20(s0)
	.loc 2 3524 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L906
	.loc 2 3525 26
	lw	a1,-64(s0)
	lw	a0,-56(s0)
	call	self_test_adjust_exponent
	sw	a0,-20(s0)
	.loc 2 3525 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L907
	.loc 2 3526 26
	li	a5,0
	lui	a4,%hi(self_test_rng)
	addi	a4,a4,%lo(self_test_rng)
	lw	a3,-68(s0)
	lw	a2,-64(s0)
	lw	a1,-60(s0)
	lw	a0,-56(s0)
	call	mbedtls_ecp_mul
	sw	a0,-20(s0)
	.loc 2 3526 17 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L908
	.loc 2 3528 23
	lui	a5,%hi(add_count)
	lw	a5,%lo(add_count)(a5)
	.loc 2 3528 12
	lw	a4,-28(s0)
	bne	a4,a5,.L897
	.loc 2 3529 23
	lui	a5,%hi(dbl_count)
	lw	a5,%lo(dbl_count)(a5)
	.loc 2 3528 37 discriminator 1
	lw	a4,-32(s0)
	bne	a4,a5,.L897
	.loc 2 3530 23
	lui	a5,%hi(mul_count)
	lw	a5,%lo(mul_count)(a5)
	.loc 2 3529 37
	lw	a4,-36(s0)
	beq	a4,a5,.L898
.L897:
	.loc 2 3531 17
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 3532 13
	j	.L890
.L898:
	.loc 2 3516 35 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L893:
	.loc 2 3516 19 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-76(s0)
	bltu	a4,a5,.L899
	.loc 2 3536 1
	j	.L890
.L903:
	.loc 2 3512 75
	nop
	j	.L890
.L904:
	.loc 2 3513 64
	nop
	j	.L890
.L905:
	.loc 2 3514 14
	nop
	j	.L890
.L906:
	.loc 2 3524 79
	nop
	j	.L890
.L907:
	.loc 2 3525 68
	nop
	j	.L890
.L908:
	.loc 2 3526 18
	nop
.L890:
	.loc 2 3537 8
	lw	a5,-52(s0)
	beq	a5,zero,.L900
	.loc 2 3538 12
	lw	a5,-20(s0)
	beq	a5,zero,.L901
	.loc 2 3539 13
	lw	a1,-24(s0)
	lui	a5,%hi(.LC27)
	addi	a0,a5,%lo(.LC27)
	call	printf
	j	.L900
.L901:
	.loc 2 3541 13
	lui	a5,%hi(.LC28)
	addi	a0,a5,%lo(.LC28)
	call	printf
.L900:
	.loc 2 3544 12
	lw	a5,-20(s0)
	.loc 2 3545 1
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
.LFE107:
	.size	self_test_point, .-self_test_point
	.section	.rodata
	.align	2
.LC31:
	.string	"  ECP SW test #1 (constant op_count, base point G): "
	.align	2
.LC32:
	.string	"  ECP SW test #2 (constant op_count, other point): "
	.align	2
.LC33:
	.string	"  ECP Montgomery test (constant op_count): "
	.align	2
.LC34:
	.string	"Unexpected error, return code = %08X\n"
	.align	2
.LC35:
	.string	"\n"
	.align	2
.LC0:
	.string	"000000000000000000000000000000000000000000000001"
	.align	2
.LC1:
	.string	"FFFFFFFFFFFFFFFFFFFFFFFE26F2FC170F69466A74DEFD8C"
	.align	2
.LC2:
	.string	"5EA6F389A38B8BC81E767753B15AA5569E1782E30ABE7D25"
	.align	2
.LC3:
	.string	"400000000000000000000000000000000000000000000000"
	.align	2
.LC4:
	.string	"7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
	.align	2
.LC5:
	.string	"555555555555555555555555555555555555555555555555"
	.align	2
.LC29:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.align	2
.LC7:
	.string	"4000000000000000000000000000000000000000000000000000000000000000"
	.align	2
.LC8:
	.string	"5C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C30"
	.align	2
.LC9:
	.string	"5715ECCE24583F7A7023C24164390586842E816D7280A49EF6DF4EAE6B280BF8"
	.align	2
.LC10:
	.string	"41A2B017516F6D254E1F002BCCBADD54BE30F8CEC737A0E912B4963B6BA74460"
	.align	2
.LC11:
	.string	"5555555555555555555555555555555555555555555555555555555555555550"
	.align	2
.LC12:
	.string	"7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8"
	.align	2
.LC30:
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.section	.text.mbedtls_ecp_self_test,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_self_test
	.type	mbedtls_ecp_self_test, @function
mbedtls_ecp_self_test:
.LFB108:
	.loc 2 3552 1
	.cfi_startproc
	addi	sp,sp,-240
	.cfi_def_cfa_offset 240
	sw	ra,236(sp)
	sw	s0,232(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,240
	.cfi_def_cfa 8, 0
	sw	a0,-228(s0)
	.loc 2 3554 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 2 3563 17
	lui	a5,%hi(.LC29)
	addi	a5,a5,%lo(.LC29)
	lw	a0,0(a5)
	lw	a1,4(a5)
	lw	a2,8(a5)
	lw	a3,12(a5)
	lw	a4,16(a5)
	sw	a0,-196(s0)
	sw	a1,-192(s0)
	sw	a2,-188(s0)
	sw	a3,-184(s0)
	sw	a4,-180(s0)
	lw	a5,20(a5)
	sw	a5,-176(s0)
	.loc 2 3574 17
	lui	a5,%hi(.LC30)
	addi	a5,a5,%lo(.LC30)
	lw	a0,0(a5)
	lw	a1,4(a5)
	lw	a2,8(a5)
	lw	a3,12(a5)
	lw	a4,16(a5)
	sw	a0,-220(s0)
	sw	a1,-216(s0)
	sw	a2,-212(s0)
	sw	a3,-208(s0)
	sw	a4,-204(s0)
	lw	a5,20(a5)
	sw	a5,-200(s0)
	.loc 2 3588 5
	addi	a5,s0,-116
	mv	a0,a5
	call	mbedtls_ecp_group_init
	.loc 2 3589 5
	addi	a5,s0,-140
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 3590 5
	addi	a5,s0,-164
	mv	a0,a5
	call	mbedtls_ecp_point_init
	.loc 2 3591 5
	addi	a5,s0,-172
	mv	a0,a5
	call	mbedtls_mpi_init
	.loc 2 3596 22
	addi	a5,s0,-116
	li	a1,1
	mv	a0,a5
	call	mbedtls_ecp_group_load
	sw	a0,-20(s0)
	.loc 2 3596 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L923
	.loc 2 3601 8
	lw	a5,-228(s0)
	beq	a5,zero,.L912
	.loc 2 3602 9
	lui	a5,%hi(.LC31)
	addi	a0,a5,%lo(.LC31)
	call	printf
.L912:
	.loc 2 3605 22
	addi	a5,s0,-172
	li	a1,2
	mv	a0,a5
	call	mbedtls_mpi_lset
	sw	a0,-20(s0)
	.loc 2 3605 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L924
	.loc 2 3606 22
	addi	a5,s0,-116
	addi	a3,a5,28
	addi	a2,s0,-172
	addi	a1,s0,-164
	addi	a0,s0,-116
	li	a5,0
	lui	a4,%hi(self_test_rng)
	addi	a4,a4,%lo(self_test_rng)
	call	mbedtls_ecp_mul
	sw	a0,-20(s0)
	.loc 2 3606 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L925
	.loc 2 3607 11
	addi	a0,s0,-196
	addi	a5,s0,-116
	addi	a4,a5,28
	addi	a3,s0,-172
	addi	a2,s0,-140
	addi	a1,s0,-116
	li	a6,6
	mv	a5,a0
	lw	a0,-228(s0)
	call	self_test_point
	sw	a0,-20(s0)
	.loc 2 3611 8
	lw	a5,-20(s0)
	bne	a5,zero,.L926
	.loc 2 3615 8
	lw	a5,-228(s0)
	beq	a5,zero,.L916
	.loc 2 3616 9
	lui	a5,%hi(.LC32)
	addi	a0,a5,%lo(.LC32)
	call	printf
.L916:
	.loc 2 3619 11
	addi	a5,s0,-196
	addi	a4,s0,-164
	addi	a3,s0,-172
	addi	a2,s0,-140
	addi	a1,s0,-116
	li	a6,6
	lw	a0,-228(s0)
	call	self_test_point
	sw	a0,-20(s0)
	.loc 2 3623 8
	lw	a5,-20(s0)
	bne	a5,zero,.L927
	.loc 2 3627 5
	addi	a5,s0,-116
	mv	a0,a5
	call	mbedtls_ecp_group_free
	.loc 2 3628 5
	addi	a5,s0,-140
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 3632 8
	lw	a5,-228(s0)
	beq	a5,zero,.L918
	.loc 2 3633 9
	lui	a5,%hi(.LC33)
	addi	a0,a5,%lo(.LC33)
	call	printf
.L918:
	.loc 2 3636 22
	addi	a5,s0,-116
	li	a1,9
	mv	a0,a5
	call	mbedtls_ecp_group_load
	sw	a0,-20(s0)
	.loc 2 3636 13 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L928
	.loc 2 3642 11
	addi	a0,s0,-220
	addi	a5,s0,-116
	addi	a4,a5,28
	addi	a3,s0,-172
	addi	a2,s0,-140
	addi	a1,s0,-116
	li	a6,6
	mv	a5,a0
	lw	a0,-228(s0)
	call	self_test_point
	sw	a0,-20(s0)
	.loc 2 3651 1
	j	.L911
.L923:
	.loc 2 3596 85
	nop
	j	.L911
.L924:
	.loc 2 3605 54
	nop
	j	.L911
.L925:
	.loc 2 3606 14
	nop
	j	.L911
.L926:
	.loc 2 3612 9
	nop
	j	.L911
.L927:
	.loc 2 3624 9
	nop
	j	.L911
.L928:
	.loc 2 3636 86
	nop
.L911:
	.loc 2 3653 8
	lw	a5,-20(s0)
	bge	a5,zero,.L920
	.loc 2 3653 17 discriminator 1
	lw	a5,-228(s0)
	beq	a5,zero,.L920
	.loc 2 3654 9
	lw	a5,-20(s0)
	mv	a1,a5
	lui	a5,%hi(.LC34)
	addi	a0,a5,%lo(.LC34)
	call	printf
.L920:
	.loc 2 3657 5
	addi	a5,s0,-116
	mv	a0,a5
	call	mbedtls_ecp_group_free
	.loc 2 3658 5
	addi	a5,s0,-140
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 3659 5
	addi	a5,s0,-164
	mv	a0,a5
	call	mbedtls_ecp_point_free
	.loc 2 3660 5
	addi	a5,s0,-172
	mv	a0,a5
	call	mbedtls_mpi_free
	.loc 2 3662 8
	lw	a5,-228(s0)
	beq	a5,zero,.L921
	.loc 2 3663 9
	lui	a5,%hi(.LC35)
	addi	a0,a5,%lo(.LC35)
	call	printf
.L921:
	.loc 2 3666 12
	lw	a5,-20(s0)
	.loc 2 3671 1
	mv	a0,a5
	lw	ra,236(sp)
	.cfi_restore 1
	lw	s0,232(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 240
	addi	sp,sp,240
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE108:
	.size	mbedtls_ecp_self_test, .-mbedtls_ecp_self_test
	.section	.sbss.init_done.1,"aw",@nobits
	.align	2
	.type	init_done.1, @object
	.size	init_done.1, 4
init_done.1:
	.zero	4
	.section	.sdata.state.0,"aw"
	.align	2
	.type	state.0, @object
	.size	state.0, 4
state.0:
	.word	42
	.text
.Letext0:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/bignum_internal.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x319b
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x2c
	.4byte	.LASF262
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL2
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x10
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x10
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xd
	.4byte	0x32
	.uleb128 0x10
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x10
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x10
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x10
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2d
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xe
	.4byte	.LASF12
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x10
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xe
	.4byte	.LASF13
	.byte	0x5
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0xe
	.4byte	.LASF14
	.byte	0x5
	.byte	0x31
	.byte	0x1c
	.4byte	0x45
	.uleb128 0xe
	.4byte	.LASF15
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0x2e
	.byte	0x4
	.uleb128 0xa
	.4byte	0x32
	.uleb128 0x10
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0xd
	.4byte	0xb4
	.uleb128 0xa
	.4byte	0xbb
	.uleb128 0x2f
	.4byte	0xc0
	.uleb128 0xd
	.4byte	0xc0
	.uleb128 0xa
	.4byte	0xd4
	.uleb128 0x30
	.uleb128 0x31
	.byte	0x2
	.byte	0x3
	.byte	0x56
	.byte	0x9
	.4byte	0xea
	.uleb128 0xc
	.string	"x"
	.byte	0x3
	.byte	0x57
	.byte	0xe
	.4byte	0x95
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0x3
	.byte	0x58
	.byte	0x1b
	.4byte	0xd5
	.uleb128 0xe
	.4byte	.LASF18
	.byte	0x6
	.byte	0xd1
	.byte	0xd
	.4byte	0x102
	.uleb128 0x1e
	.4byte	0x68
	.4byte	0x11b
	.uleb128 0x3
	.4byte	0xad
	.uleb128 0x3
	.4byte	0xaf
	.uleb128 0x3
	.4byte	0x76
	.byte	0
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x7
	.byte	0xa9
	.byte	0x11
	.4byte	0x89
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x7
	.byte	0xaa
	.byte	0x12
	.4byte	0xa1
	.uleb128 0xd
	.4byte	0x127
	.uleb128 0x13
	.4byte	.LASF21
	.byte	0x8
	.byte	0x7
	.byte	0xd0
	.byte	0x10
	.4byte	0x167
	.uleb128 0xc
	.string	"p"
	.byte	0x7
	.byte	0xd5
	.byte	0x17
	.4byte	0x167
	.byte	0
	.uleb128 0xc
	.string	"s"
	.byte	0x7
	.byte	0xe2
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xc
	.string	"n"
	.byte	0x7
	.byte	0xe5
	.byte	0x14
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.4byte	0x127
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x7
	.byte	0xf0
	.byte	0x1
	.4byte	0x138
	.uleb128 0xd
	.4byte	0x16c
	.uleb128 0x19
	.4byte	0x32
	.byte	0x1
	.byte	0x66
	.byte	0xe
	.4byte	0x1de
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x7
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x9
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0xb
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x1
	.byte	0x75
	.byte	0x3
	.4byte	0x17d
	.uleb128 0xd
	.4byte	0x1de
	.uleb128 0x19
	.4byte	0x32
	.byte	0x1
	.byte	0x7f
	.byte	0xe
	.4byte	0x20e
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x1
	.byte	0x83
	.byte	0x3
	.4byte	0x1ef
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0xc
	.byte	0x1
	.byte	0x8c
	.byte	0x10
	.4byte	0x25c
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x1
	.byte	0x8d
	.byte	0x1a
	.4byte	0x1de
	.byte	0
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0x8e
	.byte	0xe
	.4byte	0x95
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x1
	.byte	0x8f
	.byte	0xe
	.4byte	0x95
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x1
	.byte	0x90
	.byte	0x11
	.4byte	0xc0
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x1
	.byte	0x91
	.byte	0x3
	.4byte	0x21a
	.uleb128 0xd
	.4byte	0x25c
	.uleb128 0x13
	.4byte	.LASF46
	.byte	0x18
	.byte	0x1
	.byte	0x9e
	.byte	0x10
	.4byte	0x29c
	.uleb128 0xc
	.string	"X"
	.byte	0x1
	.byte	0x9f
	.byte	0x11
	.4byte	0x16c
	.byte	0
	.uleb128 0xc
	.string	"Y"
	.byte	0x1
	.byte	0xa0
	.byte	0x11
	.4byte	0x16c
	.byte	0x8
	.uleb128 0xc
	.string	"Z"
	.byte	0x1
	.byte	0xa1
	.byte	0x11
	.4byte	0x16c
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x1
	.byte	0xa3
	.byte	0x1
	.4byte	0x26d
	.uleb128 0xd
	.4byte	0x29c
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x60
	.byte	0x1
	.byte	0xe9
	.byte	0x10
	.4byte	0x36f
	.uleb128 0xc
	.string	"id"
	.byte	0x1
	.byte	0xea
	.byte	0x1a
	.4byte	0x1de
	.byte	0
	.uleb128 0xc
	.string	"P"
	.byte	0x1
	.byte	0xeb
	.byte	0x11
	.4byte	0x16c
	.byte	0x4
	.uleb128 0xc
	.string	"A"
	.byte	0x1
	.byte	0xec
	.byte	0x11
	.4byte	0x16c
	.byte	0xc
	.uleb128 0xc
	.string	"B"
	.byte	0x1
	.byte	0xf1
	.byte	0x11
	.4byte	0x16c
	.byte	0x14
	.uleb128 0xc
	.string	"G"
	.byte	0x1
	.byte	0xf3
	.byte	0x17
	.4byte	0x29c
	.byte	0x1c
	.uleb128 0xc
	.string	"N"
	.byte	0x1
	.byte	0xf4
	.byte	0x11
	.4byte	0x16c
	.byte	0x34
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x1
	.byte	0xf5
	.byte	0xc
	.4byte	0x76
	.byte	0x3c
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x1
	.byte	0xf6
	.byte	0xc
	.4byte	0x76
	.byte	0x40
	.uleb128 0xc
	.string	"h"
	.byte	0x1
	.byte	0xfb
	.byte	0x12
	.4byte	0x6f
	.byte	0x44
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x1
	.byte	0xfc
	.byte	0xa
	.4byte	0x388
	.byte	0x48
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x1
	.byte	0xfe
	.byte	0xa
	.4byte	0x3a6
	.byte	0x4c
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x1
	.byte	0xff
	.byte	0xa
	.4byte	0x3a6
	.byte	0x50
	.uleb128 0x1a
	.4byte	.LASF53
	.2byte	0x100
	.byte	0xb
	.4byte	0xad
	.byte	0x54
	.uleb128 0x14
	.string	"T"
	.2byte	0x101
	.byte	0x18
	.4byte	0x3a1
	.byte	0x58
	.uleb128 0x1a
	.4byte	.LASF54
	.2byte	0x102
	.byte	0xc
	.4byte	0x76
	.byte	0x5c
	.byte	0
	.uleb128 0x1e
	.4byte	0x68
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x37e
	.byte	0
	.uleb128 0xa
	.4byte	0x16c
	.uleb128 0xd
	.4byte	0x37e
	.uleb128 0xa
	.4byte	0x36f
	.uleb128 0x1e
	.4byte	0x68
	.4byte	0x3a1
	.uleb128 0x3
	.4byte	0x3a1
	.uleb128 0x3
	.4byte	0xad
	.byte	0
	.uleb128 0xa
	.4byte	0x29c
	.uleb128 0xa
	.4byte	0x38d
	.uleb128 0x17
	.4byte	.LASF47
	.2byte	0x104
	.byte	0x1
	.4byte	0x2ad
	.uleb128 0xd
	.4byte	0x3ab
	.uleb128 0x17
	.4byte	.LASF55
	.2byte	0x16c
	.byte	0x28
	.4byte	0x3c8
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0x24
	.byte	0x2
	.byte	0x7d
	.byte	0x8
	.4byte	0x411
	.uleb128 0xc
	.string	"R"
	.byte	0x2
	.byte	0x7e
	.byte	0x17
	.4byte	0x29c
	.byte	0
	.uleb128 0xc
	.string	"i"
	.byte	0x2
	.byte	0x7f
	.byte	0xc
	.4byte	0x76
	.byte	0x18
	.uleb128 0xc
	.string	"T"
	.byte	0x2
	.byte	0x80
	.byte	0x18
	.4byte	0x3a1
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x2
	.byte	0x81
	.byte	0x13
	.4byte	0x32
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x2
	.byte	0x8a
	.byte	0x7
	.4byte	0x52a
	.byte	0x21
	.byte	0
	.uleb128 0x17
	.4byte	.LASF58
	.2byte	0x173
	.byte	0x2b
	.4byte	0x41d
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0x34
	.byte	0x2
	.byte	0xb3
	.byte	0x8
	.4byte	0x44f
	.uleb128 0xc
	.string	"mP"
	.byte	0x2
	.byte	0xb4
	.byte	0x17
	.4byte	0x29c
	.byte	0
	.uleb128 0xc
	.string	"R"
	.byte	0x2
	.byte	0xb5
	.byte	0x17
	.4byte	0x29c
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x2
	.byte	0xbb
	.byte	0x7
	.4byte	0x561
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.byte	0x10
	.byte	0x1
	.2byte	0x178
	.byte	0x9
	.4byte	0x48d
	.uleb128 0x1a
	.4byte	.LASF60
	.2byte	0x179
	.byte	0xe
	.4byte	0x6f
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF61
	.2byte	0x17a
	.byte	0xe
	.4byte	0x6f
	.byte	0x4
	.uleb128 0x14
	.string	"rsm"
	.2byte	0x17b
	.byte	0x22
	.4byte	0x48d
	.byte	0x8
	.uleb128 0x14
	.string	"ma"
	.2byte	0x17c
	.byte	0x25
	.4byte	0x492
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	0x3bc
	.uleb128 0xa
	.4byte	0x411
	.uleb128 0x17
	.4byte	.LASF62
	.2byte	0x17d
	.byte	0x3
	.4byte	0x44f
	.uleb128 0x33
	.4byte	.LASF63
	.byte	0x80
	.byte	0x1
	.2byte	0x1ac
	.byte	0x10
	.4byte	0x4d5
	.uleb128 0x14
	.string	"grp"
	.2byte	0x1ad
	.byte	0x17
	.4byte	0x3ab
	.byte	0
	.uleb128 0x14
	.string	"d"
	.2byte	0x1ae
	.byte	0x11
	.4byte	0x16c
	.byte	0x60
	.uleb128 0x14
	.string	"Q"
	.2byte	0x1af
	.byte	0x17
	.4byte	0x29c
	.byte	0x68
	.byte	0
	.uleb128 0x17
	.4byte	.LASF63
	.2byte	0x1b1
	.byte	0x1
	.4byte	0x4a3
	.uleb128 0xd
	.4byte	0x4d5
	.uleb128 0x1b
	.4byte	.LASF64
	.byte	0x58
	.byte	0x16
	.4byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	add_count
	.uleb128 0x1b
	.4byte	.LASF65
	.byte	0x58
	.byte	0x21
	.4byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	dbl_count
	.uleb128 0x1b
	.4byte	.LASF66
	.byte	0x5a
	.byte	0x16
	.4byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	mul_count
	.uleb128 0x1b
	.4byte	.LASF67
	.byte	0x68
	.byte	0x11
	.4byte	0x6f
	.uleb128 0x5
	.byte	0x3
	.4byte	ecp_max_ops
	.uleb128 0x19
	.4byte	0x32
	.byte	0x2
	.byte	0x82
	.byte	0xa
	.4byte	0x561
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.4byte	0x32
	.byte	0x2
	.byte	0xb6
	.byte	0xa
	.4byte	0x586
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.4byte	0x268
	.4byte	0x596
	.uleb128 0x15
	.4byte	0x6f
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.4byte	0x586
	.uleb128 0x6
	.4byte	.LASF79
	.2byte	0x159
	.byte	0x25
	.4byte	0x596
	.uleb128 0x5
	.byte	0x3
	.4byte	ecp_supported_curves
	.uleb128 0x12
	.4byte	0x1de
	.4byte	0x5bd
	.uleb128 0x15
	.4byte	0x6f
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.4byte	.LASF80
	.2byte	0x188
	.byte	0x1d
	.4byte	0x5ad
	.uleb128 0x5
	.byte	0x3
	.4byte	ecp_supported_grp_id
	.uleb128 0x12
	.4byte	0x133
	.4byte	0x5df
	.uleb128 0x15
	.4byte	0x6f
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.4byte	0x5cf
	.uleb128 0x6
	.4byte	.LASF81
	.2byte	0xb51
	.byte	0x1f
	.4byte	0x5df
	.uleb128 0x5
	.byte	0x3
	.4byte	x25519_bad_point_1
	.uleb128 0x6
	.4byte	.LASF82
	.2byte	0xb57
	.byte	0x1f
	.4byte	0x5df
	.uleb128 0x5
	.byte	0x3
	.4byte	x25519_bad_point_2
	.uleb128 0x6
	.4byte	.LASF83
	.2byte	0xb5d
	.byte	0x1a
	.4byte	0x178
	.uleb128 0x5
	.byte	0x3
	.4byte	ecp_x25519_bad_point_1
	.uleb128 0x6
	.4byte	.LASF84
	.2byte	0xb5f
	.byte	0x1a
	.4byte	0x178
	.uleb128 0x5
	.byte	0x3
	.4byte	ecp_x25519_bad_point_2
	.uleb128 0x18
	.4byte	.LASF85
	.byte	0x8
	.byte	0xce
	.byte	0x5
	.4byte	0x68
	.4byte	0x643
	.uleb128 0x3
	.4byte	0xc5
	.uleb128 0x34
	.byte	0
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x3a3
	.byte	0x5
	.4byte	0x68
	.4byte	0x669
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x76
	.uleb128 0x3
	.4byte	0x669
	.uleb128 0x3
	.4byte	0xad
	.byte	0
	.uleb128 0xa
	.4byte	0xf6
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x175
	.byte	0x5
	.4byte	0x68
	.4byte	0x68f
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x32
	.byte	0
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x9
	.byte	0x21
	.byte	0x8
	.4byte	0xad
	.4byte	0x6af
	.uleb128 0x3
	.4byte	0xad
	.uleb128 0x3
	.4byte	0x68
	.uleb128 0x3
	.4byte	0x76
	.byte	0
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x3c7
	.byte	0x5
	.4byte	0x68
	.4byte	0x6da
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x11b
	.uleb128 0x3
	.4byte	0x6da
	.uleb128 0x3
	.4byte	0x669
	.uleb128 0x3
	.4byte	0xad
	.byte	0
	.uleb128 0xa
	.4byte	0x178
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x269
	.byte	0x5
	.4byte	0x68
	.4byte	0x6fb
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x76
	.byte	0
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x31f
	.byte	0x5
	.4byte	0x68
	.4byte	0x71c
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x6da
	.uleb128 0x3
	.4byte	0x127
	.byte	0
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x158
	.byte	0x5
	.4byte	0x68
	.4byte	0x73d
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x6da
	.uleb128 0x3
	.4byte	0x32
	.byte	0
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x123
	.byte	0x5
	.4byte	0x68
	.4byte	0x759
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x76
	.byte	0
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0xa
	.byte	0x5a
	.byte	0x7
	.4byte	0xad
	.4byte	0x774
	.uleb128 0x3
	.4byte	0x76
	.uleb128 0x3
	.4byte	0x76
	.byte	0
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0xb
	.byte	0x4f
	.byte	0x5
	.4byte	0x68
	.4byte	0x799
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x6da
	.uleb128 0x3
	.4byte	0x6da
	.byte	0
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x2e3
	.byte	0x5
	.4byte	0x68
	.4byte	0x7ba
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x6da
	.uleb128 0x3
	.4byte	0x6da
	.byte	0
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x38e
	.byte	0x5
	.4byte	0x68
	.4byte	0x7e5
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x6da
	.uleb128 0x3
	.4byte	0x6da
	.uleb128 0x3
	.4byte	0x6da
	.uleb128 0x3
	.4byte	0x37e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x275
	.byte	0x5
	.4byte	0x68
	.4byte	0x801
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x76
	.byte	0
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x2f1
	.byte	0x5
	.4byte	0x68
	.4byte	0x822
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x6da
	.uleb128 0x3
	.4byte	0x11b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x30f
	.byte	0x5
	.4byte	0x68
	.4byte	0x843
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x6da
	.uleb128 0x3
	.4byte	0x6da
	.byte	0
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x300
	.byte	0x5
	.4byte	0x68
	.4byte	0x864
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x6da
	.uleb128 0x3
	.4byte	0x11b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x2c7
	.byte	0x5
	.4byte	0x68
	.4byte	0x885
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x6da
	.uleb128 0x3
	.4byte	0x6da
	.byte	0
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x2d5
	.byte	0x5
	.4byte	0x68
	.4byte	0x8a6
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x6da
	.uleb128 0x3
	.4byte	0x6da
	.byte	0
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x1ba
	.byte	0x8
	.4byte	0x76
	.4byte	0x8bd
	.uleb128 0x3
	.4byte	0x6da
	.byte	0
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x35d
	.byte	0x5
	.4byte	0x68
	.4byte	0x8de
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x6da
	.uleb128 0x3
	.4byte	0x6da
	.byte	0
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x227
	.byte	0x5
	.4byte	0x68
	.4byte	0x8ff
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x8ff
	.uleb128 0x3
	.4byte	0x76
	.byte	0
	.uleb128 0xa
	.4byte	0x39
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x19e
	.byte	0x5
	.4byte	0x68
	.4byte	0x925
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x76
	.uleb128 0x3
	.4byte	0x32
	.byte	0
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x236
	.byte	0x5
	.4byte	0x68
	.4byte	0x946
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x8ff
	.uleb128 0x3
	.4byte	0x76
	.byte	0
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x18d
	.byte	0x5
	.4byte	0x68
	.4byte	0x962
	.uleb128 0x3
	.4byte	0x6da
	.uleb128 0x3
	.4byte	0x76
	.byte	0
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x248
	.byte	0x5
	.4byte	0x68
	.4byte	0x983
	.uleb128 0x3
	.4byte	0x6da
	.uleb128 0x3
	.4byte	0xaf
	.uleb128 0x3
	.4byte	0x76
	.byte	0
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x25a
	.byte	0x5
	.4byte	0x68
	.4byte	0x9a4
	.uleb128 0x3
	.4byte	0x6da
	.uleb128 0x3
	.4byte	0xaf
	.uleb128 0x3
	.4byte	0x76
	.byte	0
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x1c9
	.byte	0x8
	.4byte	0x76
	.4byte	0x9bb
	.uleb128 0x3
	.4byte	0x6da
	.byte	0
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x1d5
	.byte	0x5
	.4byte	0x68
	.4byte	0x9dc
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x68
	.uleb128 0x3
	.4byte	0xc0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x28d
	.byte	0x5
	.4byte	0x68
	.4byte	0x9f8
	.uleb128 0x3
	.4byte	0x6da
	.uleb128 0x3
	.4byte	0x6da
	.byte	0
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x2ab
	.byte	0x5
	.4byte	0x68
	.4byte	0xa14
	.uleb128 0x3
	.4byte	0x6da
	.uleb128 0x3
	.4byte	0x11b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x181
	.byte	0x5
	.4byte	0x68
	.4byte	0xa30
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x11b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x369
	.byte	0x5
	.4byte	0x68
	.4byte	0xa4c
	.uleb128 0x3
	.4byte	0xa4c
	.uleb128 0x3
	.4byte	0x1de
	.byte	0
	.uleb128 0xa
	.4byte	0x3ab
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x132
	.byte	0x5
	.4byte	0x68
	.4byte	0xa6d
	.uleb128 0x3
	.4byte	0x37e
	.uleb128 0x3
	.4byte	0x6da
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF120
	.byte	0x6
	.byte	0x9f
	.4byte	0xa83
	.uleb128 0x3
	.4byte	0xad
	.uleb128 0x3
	.4byte	0x76
	.byte	0
	.uleb128 0x18
	.4byte	.LASF119
	.byte	0x9
	.byte	0x24
	.byte	0x5
	.4byte	0x68
	.4byte	0xa9e
	.uleb128 0x3
	.4byte	0xc0
	.uleb128 0x3
	.4byte	0xc0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x103
	.byte	0x6
	.4byte	0xab1
	.uleb128 0x3
	.4byte	0x37e
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF122
	.byte	0x7
	.byte	0xfa
	.4byte	0xac2
	.uleb128 0x3
	.4byte	0x37e
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF123
	.byte	0xa
	.byte	0x5e
	.4byte	0xad3
	.uleb128 0x3
	.4byte	0xad
	.byte	0
	.uleb128 0x7
	.4byte	.LASF136
	.2byte	0xddf
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb72
	.uleb128 0x4
	.4byte	.LASF126
	.2byte	0xddf
	.byte	0x1f
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2
	.string	"ret"
	.2byte	0xde2
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"grp"
	.2byte	0xde3
	.byte	0x17
	.4byte	0x3ab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2
	.string	"R"
	.2byte	0xde4
	.byte	0x17
	.4byte	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2
	.string	"P"
	.2byte	0xde4
	.byte	0x1a
	.4byte	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2
	.string	"m"
	.2byte	0xde5
	.byte	0x11
	.4byte	0x16c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x6
	.4byte	.LASF124
	.2byte	0xdeb
	.byte	0x11
	.4byte	0xb72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x6
	.4byte	.LASF125
	.2byte	0xdf6
	.byte	0x11
	.4byte	0xb72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0xe43
	.4byte	.L911
	.byte	0
	.uleb128 0x12
	.4byte	0xc0
	.4byte	0xb82
	.uleb128 0x15
	.4byte	0x6f
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	.LASF133
	.2byte	0xda9
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc5b
	.uleb128 0x4
	.4byte	.LASF126
	.2byte	0xda9
	.byte	0x20
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0xdaa
	.byte	0x2f
	.4byte	0xa4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"R"
	.byte	0x2
	.2byte	0xdab
	.byte	0x2f
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"m"
	.byte	0x2
	.2byte	0xdac
	.byte	0x29
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"P"
	.byte	0x2
	.2byte	0xdad
	.byte	0x35
	.4byte	0xc5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.4byte	.LASF127
	.2byte	0xdae
	.byte	0x2f
	.4byte	0xc60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x4
	.4byte	.LASF128
	.2byte	0xdaf
	.byte	0x23
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.string	"ret"
	.2byte	0xdb1
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"i"
	.2byte	0xdb2
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF129
	.2byte	0xdb3
	.byte	0x13
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF130
	.2byte	0xdb3
	.byte	0x1f
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF131
	.2byte	0xdb3
	.byte	0x2b
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0xdd0
	.4byte	.L890
	.byte	0
	.uleb128 0xa
	.4byte	0x2a8
	.uleb128 0xa
	.4byte	0xca
	.uleb128 0x1c
	.4byte	.LASF134
	.byte	0x2
	.2byte	0xd87
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb9
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0xd87
	.byte	0x3f
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"m"
	.byte	0x2
	.2byte	0xd88
	.byte	0x33
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"ret"
	.2byte	0xd8a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0xda3
	.4byte	.L886
	.byte	0
	.uleb128 0xa
	.4byte	0x3b7
	.uleb128 0x1c
	.4byte	.LASF135
	.byte	0x2
	.2byte	0xd76
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd33
	.uleb128 0x1
	.string	"ctx"
	.byte	0x2
	.2byte	0xd76
	.byte	0x20
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"out"
	.byte	0x2
	.2byte	0xd76
	.byte	0x34
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"len"
	.byte	0x2
	.2byte	0xd76
	.byte	0x40
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF57
	.2byte	0xd78
	.byte	0x15
	.4byte	0xa1
	.uleb128 0x5
	.byte	0x3
	.4byte	state.0
	.uleb128 0x26
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x2
	.string	"i"
	.2byte	0xd7c
	.byte	0x11
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF137
	.2byte	0xd58
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd99
	.uleb128 0x1
	.string	"key"
	.byte	0x2
	.2byte	0xd58
	.byte	0x33
	.4byte	0xd99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0xd58
	.byte	0x4b
	.4byte	0xa4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"d"
	.byte	0x2
	.2byte	0xd59
	.byte	0x25
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"Q"
	.byte	0x2
	.2byte	0xd59
	.byte	0x3b
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"ret"
	.2byte	0xd5b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	0x4e1
	.uleb128 0x27
	.4byte	.LASF138
	.2byte	0xd4f
	.byte	0x16
	.4byte	0x1de
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdc9
	.uleb128 0x1
	.string	"key"
	.byte	0x2
	.2byte	0xd50
	.byte	0x20
	.4byte	0xd99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	.LASF139
	.2byte	0xd46
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe12
	.uleb128 0x1
	.string	"key"
	.byte	0x2
	.2byte	0xd46
	.byte	0x3a
	.4byte	0xe12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF140
	.2byte	0xd47
	.byte	0x2b
	.4byte	0xe17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF141
	.2byte	0xd48
	.byte	0x2b
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xa
	.4byte	0x4d5
	.uleb128 0xa
	.4byte	0x102
	.uleb128 0x7
	.4byte	.LASF142
	.2byte	0xd20
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb0
	.uleb128 0x1
	.string	"pub"
	.byte	0x2
	.2byte	0xd21
	.byte	0x20
	.4byte	0xd99
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x1
	.string	"prv"
	.byte	0x2
	.2byte	0xd21
	.byte	0x40
	.4byte	0xd99
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x4
	.4byte	.LASF140
	.2byte	0xd22
	.byte	0xb
	.4byte	0xe17
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x4
	.4byte	.LASF141
	.2byte	0xd22
	.byte	0x3a
	.4byte	0xad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2
	.string	"ret"
	.2byte	0xd24
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"Q"
	.2byte	0xd25
	.byte	0x17
	.4byte	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"grp"
	.2byte	0xd26
	.byte	0x17
	.4byte	0x3ab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0xd3f
	.4byte	.L867
	.byte	0
	.uleb128 0x7
	.4byte	.LASF143
	.2byte	0xd13
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf18
	.uleb128 0x1
	.string	"key"
	.byte	0x2
	.2byte	0xd13
	.byte	0x3d
	.4byte	0xd99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF144
	.2byte	0xd14
	.byte	0x26
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF145
	.2byte	0xd14
	.byte	0x36
	.4byte	0xf18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"buf"
	.byte	0x2
	.2byte	0xd15
	.byte	0x31
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF146
	.2byte	0xd15
	.byte	0x3d
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xa
	.4byte	0x76
	.uleb128 0x7
	.4byte	.LASF147
	.2byte	0xcf0
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf85
	.uleb128 0x1
	.string	"key"
	.byte	0x2
	.2byte	0xcf0
	.byte	0x3a
	.4byte	0xd99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF145
	.2byte	0xcf1
	.byte	0x27
	.4byte	0xf18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"buf"
	.byte	0x2
	.2byte	0xcf1
	.byte	0x3c
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF146
	.2byte	0xcf1
	.byte	0x48
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"len"
	.2byte	0xcf3
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	.LASF148
	.2byte	0xc7f
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xff8
	.uleb128 0x4
	.4byte	.LASF42
	.2byte	0xc7f
	.byte	0x2f
	.4byte	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.string	"key"
	.byte	0x2
	.2byte	0xc7f
	.byte	0x4c
	.4byte	0xe12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"buf"
	.byte	0x2
	.2byte	0xc80
	.byte	0x2f
	.4byte	0x8ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF146
	.2byte	0xc80
	.byte	0x3b
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"ret"
	.2byte	0xc82
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0xcc3
	.4byte	.L832
	.byte	0
	.uleb128 0x7
	.4byte	.LASF149
	.2byte	0xc67
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x104f
	.uleb128 0x4
	.4byte	.LASF42
	.2byte	0xc67
	.byte	0x35
	.4byte	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.string	"key"
	.byte	0x2
	.2byte	0xc68
	.byte	0x35
	.4byte	0xe12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"Q"
	.byte	0x2
	.2byte	0xc69
	.byte	0x39
	.4byte	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"ret"
	.2byte	0xc6b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	.LASF150
	.2byte	0xc5b
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10b6
	.uleb128 0x4
	.4byte	.LASF42
	.2byte	0xc5b
	.byte	0x2e
	.4byte	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.string	"key"
	.byte	0x2
	.2byte	0xc5b
	.byte	0x4b
	.4byte	0xe12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF140
	.2byte	0xc5c
	.byte	0x1f
	.4byte	0xe17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF141
	.2byte	0xc5c
	.byte	0x4e
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"ret"
	.2byte	0xc5e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	.LASF151
	.2byte	0xc50
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x111b
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0xc50
	.byte	0x30
	.4byte	0xa4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"d"
	.byte	0x2
	.2byte	0xc51
	.byte	0x2a
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"Q"
	.byte	0x2
	.2byte	0xc51
	.byte	0x40
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF140
	.2byte	0xc52
	.byte	0x23
	.4byte	0xe17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF141
	.2byte	0xc53
	.byte	0x23
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x7
	.4byte	.LASF152
	.2byte	0xc3f
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11a8
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0xc3f
	.byte	0x35
	.4byte	0xa4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"G"
	.byte	0x2
	.2byte	0xc40
	.byte	0x3b
	.4byte	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"d"
	.byte	0x2
	.2byte	0xc41
	.byte	0x2f
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"Q"
	.byte	0x2
	.2byte	0xc41
	.byte	0x45
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF140
	.2byte	0xc42
	.byte	0x28
	.4byte	0xe17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF141
	.2byte	0xc43
	.byte	0x28
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"ret"
	.2byte	0xc45
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0xc49
	.4byte	.L813
	.byte	0
	.uleb128 0x7
	.4byte	.LASF153
	.2byte	0xc27
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11ff
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0xc27
	.byte	0x36
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"d"
	.byte	0x2
	.2byte	0xc28
	.byte	0x2a
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF140
	.2byte	0xc29
	.byte	0x23
	.4byte	0xe17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF141
	.2byte	0xc2a
	.byte	0x23
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.4byte	.LASF154
	.2byte	0xc16
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1263
	.uleb128 0x1
	.string	"N"
	.byte	0x2
	.2byte	0xc17
	.byte	0x18
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"d"
	.byte	0x2
	.2byte	0xc17
	.byte	0x28
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF140
	.2byte	0xc18
	.byte	0xb
	.4byte	0xe17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF141
	.2byte	0xc18
	.byte	0x3a
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"ret"
	.2byte	0xc1a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF155
	.2byte	0xbf6
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12e2
	.uleb128 0x4
	.4byte	.LASF156
	.2byte	0xbf6
	.byte	0x27
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"d"
	.byte	0x2
	.2byte	0xbf7
	.byte	0x2d
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF140
	.2byte	0xbf8
	.byte	0x26
	.4byte	0xe17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF141
	.2byte	0xbf9
	.byte	0x26
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"ret"
	.2byte	0xbfb
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF157
	.2byte	0xbfc
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0xc10
	.4byte	.L792
	.byte	0
	.uleb128 0x7
	.4byte	.LASF158
	.2byte	0xbd1
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x131b
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0xbd1
	.byte	0x38
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"d"
	.byte	0x2
	.2byte	0xbd2
	.byte	0x32
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.4byte	.LASF159
	.2byte	0xbb9
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1355
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0xbb9
	.byte	0x37
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"pt"
	.byte	0x2
	.2byte	0xbba
	.byte	0x37
	.4byte	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF160
	.2byte	0xba2
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x138f
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0xba2
	.byte	0x39
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"pt"
	.byte	0x2
	.2byte	0xba2
	.byte	0x57
	.4byte	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF161
	.2byte	0xb69
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13fe
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0xb69
	.byte	0x37
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"P"
	.byte	0x2
	.2byte	0xb69
	.byte	0x4d
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF42
	.2byte	0xb6a
	.byte	0x3f
	.4byte	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x2
	.string	"ret"
	.2byte	0xb6c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"XmP"
	.2byte	0xb6d
	.byte	0x11
	.4byte	0x16c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0xb99
	.4byte	.L760
	.byte	0
	.uleb128 0x7
	.4byte	.LASF162
	.2byte	0xb3e
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x146f
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0xb3e
	.byte	0x2b
	.4byte	0xa4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"R"
	.byte	0x2
	.2byte	0xb3e
	.byte	0x43
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"m"
	.byte	0x2
	.2byte	0xb3f
	.byte	0x2b
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"P"
	.byte	0x2
	.2byte	0xb3f
	.byte	0x47
	.4byte	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"n"
	.byte	0x2
	.2byte	0xb40
	.byte	0x2b
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"Q"
	.byte	0x2
	.2byte	0xb40
	.byte	0x47
	.4byte	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x7
	.4byte	.LASF163
	.2byte	0xad6
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x156c
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0xad7
	.byte	0x18
	.4byte	0xa4c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1
	.string	"R"
	.byte	0x2
	.2byte	0xad7
	.byte	0x30
	.4byte	0x3a1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1
	.string	"m"
	.byte	0x2
	.2byte	0xad8
	.byte	0x18
	.4byte	0x6da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1
	.string	"P"
	.byte	0x2
	.2byte	0xad8
	.byte	0x34
	.4byte	0xc5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1
	.string	"n"
	.byte	0x2
	.2byte	0xad9
	.byte	0x18
	.4byte	0x6da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1
	.string	"Q"
	.byte	0x2
	.2byte	0xad9
	.byte	0x34
	.4byte	0xc5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x4
	.4byte	.LASF164
	.2byte	0xada
	.byte	0x1e
	.4byte	0x156c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2
	.string	"ret"
	.2byte	0xadc
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"mP"
	.2byte	0xadd
	.byte	0x17
	.4byte	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"pmP"
	.2byte	0xade
	.byte	0x18
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"pR"
	.2byte	0xadf
	.byte	0x18
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.string	"tmp"
	.2byte	0xae0
	.byte	0x11
	.4byte	0x1571
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x5
	.4byte	.LASF165
	.2byte	0xb06
	.4byte	.L729
	.uleb128 0x20
	.string	"add"
	.2byte	0xb15
	.4byte	.L731
	.uleb128 0x5
	.4byte	.LASF166
	.2byte	0xb1e
	.4byte	.L732
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0xb29
	.4byte	.L734
	.byte	0
	.uleb128 0xa
	.4byte	0x497
	.uleb128 0x12
	.4byte	0x16c
	.4byte	0x1581
	.uleb128 0x15
	.4byte	0x6f
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF167
	.2byte	0xab3
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1623
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0xab3
	.byte	0x39
	.4byte	0xa4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"R"
	.byte	0x2
	.2byte	0xab4
	.byte	0x39
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"m"
	.byte	0x2
	.2byte	0xab5
	.byte	0x39
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"P"
	.byte	0x2
	.2byte	0xab6
	.byte	0x3f
	.4byte	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF164
	.2byte	0xab7
	.byte	0x3f
	.4byte	0x156c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"ret"
	.2byte	0xab9
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"tmp"
	.2byte	0xaba
	.byte	0x11
	.4byte	0x16c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0xacc
	.4byte	.L708
	.uleb128 0x28
	.4byte	.LLRL1
	.uleb128 0x6
	.4byte	.LASF168
	.2byte	0xac6
	.byte	0x1c
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF169
	.2byte	0xa8b
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1694
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0xa8b
	.byte	0x39
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.string	"pt"
	.byte	0x2
	.2byte	0xa8b
	.byte	0x57
	.4byte	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"ret"
	.2byte	0xa8d
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"YY"
	.2byte	0xa8e
	.byte	0x11
	.4byte	0x16c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.string	"RHS"
	.2byte	0xa8e
	.byte	0x15
	.4byte	0x16c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0xaa5
	.4byte	.L699
	.byte	0
	.uleb128 0x7
	.4byte	.LASF170
	.2byte	0xa7e
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1707
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0xa7e
	.byte	0x28
	.4byte	0xa4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"R"
	.byte	0x2
	.2byte	0xa7e
	.byte	0x40
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"m"
	.byte	0x2
	.2byte	0xa7f
	.byte	0x28
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"P"
	.byte	0x2
	.2byte	0xa7f
	.byte	0x44
	.4byte	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF140
	.2byte	0xa80
	.byte	0x1b
	.4byte	0xe17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF141
	.2byte	0xa80
	.byte	0x4a
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x7
	.4byte	.LASF171
	.2byte	0xa6f
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1789
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0xa6f
	.byte	0x34
	.4byte	0xa4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"R"
	.byte	0x2
	.2byte	0xa6f
	.byte	0x4c
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"m"
	.byte	0x2
	.2byte	0xa70
	.byte	0x34
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"P"
	.byte	0x2
	.2byte	0xa70
	.byte	0x50
	.4byte	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF140
	.2byte	0xa71
	.byte	0x27
	.4byte	0xe17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF141
	.2byte	0xa71
	.byte	0x56
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF164
	.2byte	0xa72
	.byte	0x3a
	.4byte	0x156c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x8
	.4byte	.LASF172
	.2byte	0xa28
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1834
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0xa28
	.byte	0x3c
	.4byte	0xa4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"R"
	.byte	0x2
	.2byte	0xa28
	.byte	0x54
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"m"
	.byte	0x2
	.2byte	0xa29
	.byte	0x3c
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"P"
	.byte	0x2
	.2byte	0xa29
	.byte	0x58
	.4byte	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF140
	.2byte	0xa2a
	.byte	0x2f
	.4byte	0xe17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF141
	.2byte	0xa2a
	.byte	0x5e
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF164
	.2byte	0xa2b
	.byte	0x42
	.4byte	0x156c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.string	"ret"
	.2byte	0xa2d
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF173
	.2byte	0xa41
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0xa5b
	.4byte	.L679
	.byte	0
	.uleb128 0x8
	.4byte	.LASF174
	.2byte	0x9e3
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x190d
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x9e3
	.byte	0x2b
	.4byte	0xa4c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1
	.string	"R"
	.byte	0x2
	.2byte	0x9e3
	.byte	0x43
	.4byte	0x3a1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1
	.string	"m"
	.byte	0x2
	.2byte	0x9e4
	.byte	0x2b
	.4byte	0x6da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1
	.string	"P"
	.byte	0x2
	.2byte	0x9e4
	.byte	0x47
	.4byte	0xc5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x4
	.4byte	.LASF140
	.2byte	0x9e5
	.byte	0x1e
	.4byte	0xe17
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x4
	.4byte	.LASF141
	.2byte	0x9e6
	.byte	0x1e
	.4byte	0xad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2
	.string	"ret"
	.2byte	0x9e8
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"i"
	.2byte	0x9e9
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"b"
	.2byte	0x9ea
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2
	.string	"RP"
	.2byte	0x9eb
	.byte	0x17
	.4byte	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"PX"
	.2byte	0x9ec
	.byte	0x11
	.4byte	0x16c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.string	"tmp"
	.2byte	0x9ed
	.byte	0x11
	.4byte	0x1571
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0xa19
	.4byte	.L648
	.byte	0
	.uleb128 0x8
	.4byte	.LASF175
	.2byte	0x9b5
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19a6
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x9b5
	.byte	0x38
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"R"
	.byte	0x2
	.2byte	0x9b6
	.byte	0x32
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"S"
	.byte	0x2
	.2byte	0x9b6
	.byte	0x48
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"P"
	.byte	0x2
	.2byte	0x9b7
	.byte	0x38
	.4byte	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"Q"
	.byte	0x2
	.2byte	0x9b7
	.byte	0x54
	.4byte	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.string	"d"
	.byte	0x2
	.2byte	0x9b8
	.byte	0x32
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"T"
	.byte	0x2
	.2byte	0x9b9
	.byte	0x2b
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.string	"ret"
	.2byte	0x9c4
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x9d9
	.4byte	.L609
	.byte	0
	.uleb128 0x8
	.4byte	.LASF176
	.2byte	0x986
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a24
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x986
	.byte	0x37
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"P"
	.byte	0x2
	.2byte	0x986
	.byte	0x4f
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF140
	.2byte	0x987
	.byte	0x24
	.4byte	0xe17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF141
	.2byte	0x987
	.byte	0x53
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"ret"
	.2byte	0x992
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"l"
	.2byte	0x993
	.byte	0x11
	.4byte	0x16c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x99c
	.4byte	.L601
	.byte	0
	.uleb128 0x8
	.4byte	.LASF177
	.2byte	0x969
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a77
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x969
	.byte	0x37
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"P"
	.byte	0x2
	.2byte	0x969
	.byte	0x4f
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"ret"
	.2byte	0x974
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x979
	.4byte	.L594
	.byte	0
	.uleb128 0x8
	.4byte	.LASF178
	.2byte	0x8e3
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b86
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x8e3
	.byte	0x2c
	.4byte	0xa4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.string	"R"
	.byte	0x2
	.2byte	0x8e3
	.byte	0x44
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"m"
	.byte	0x2
	.2byte	0x8e4
	.byte	0x2c
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"P"
	.byte	0x2
	.2byte	0x8e4
	.byte	0x48
	.4byte	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.4byte	.LASF140
	.2byte	0x8e5
	.byte	0x1f
	.4byte	0xe17
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.4byte	.LASF141
	.2byte	0x8e6
	.byte	0x1f
	.4byte	0xad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x4
	.4byte	.LASF164
	.2byte	0x8e7
	.byte	0x32
	.4byte	0x156c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.string	"ret"
	.2byte	0x8e9
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"w"
	.2byte	0x8ea
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x6
	.4byte	.LASF179
	.2byte	0x8ea
	.byte	0x16
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.string	"i"
	.2byte	0x8ea
	.byte	0x1e
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x2
	.string	"d"
	.2byte	0x8eb
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF54
	.2byte	0x8ec
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x6
	.4byte	.LASF180
	.2byte	0x8ec
	.byte	0x1f
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x2
	.string	"T"
	.2byte	0x8ed
	.byte	0x18
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x930
	.4byte	.L577
	.uleb128 0x6
	.4byte	.LASF181
	.2byte	0x94a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.4byte	.LASF182
	.2byte	0x8ac
	.byte	0x16
	.4byte	0x32
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bcd
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x8ac
	.byte	0x44
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF179
	.2byte	0x8ad
	.byte	0x39
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2
	.string	"w"
	.2byte	0x8af
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x8
	.4byte	.LASF183
	.2byte	0x875
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cd2
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x875
	.byte	0x40
	.4byte	0xcb9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x1
	.string	"R"
	.byte	0x2
	.2byte	0x876
	.byte	0x3a
	.4byte	0x3a1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x1
	.string	"m"
	.byte	0x2
	.2byte	0x877
	.byte	0x3a
	.4byte	0x6da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x1
	.string	"T"
	.byte	0x2
	.2byte	0x878
	.byte	0x40
	.4byte	0xc5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x4
	.4byte	.LASF54
	.2byte	0x879
	.byte	0x35
	.4byte	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -305
	.uleb128 0x1
	.string	"w"
	.byte	0x2
	.2byte	0x87a
	.byte	0x35
	.4byte	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -306
	.uleb128 0x1
	.string	"d"
	.byte	0x2
	.2byte	0x87b
	.byte	0x2e
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x4
	.4byte	.LASF140
	.2byte	0x87c
	.byte	0x2d
	.4byte	0xe17
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x4
	.4byte	.LASF141
	.2byte	0x87d
	.byte	0x2d
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF164
	.2byte	0x87e
	.byte	0x40
	.4byte	0x156c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2
	.string	"ret"
	.2byte	0x880
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF184
	.2byte	0x881
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2
	.string	"k"
	.2byte	0x882
	.byte	0x13
	.4byte	0x1cd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2
	.string	"RR"
	.2byte	0x883
	.byte	0x18
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF185
	.2byte	0x89a
	.4byte	.L542
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x8a5
	.4byte	.L544
	.byte	0
	.uleb128 0x12
	.4byte	0x32
	.4byte	0x1ce3
	.uleb128 0x36
	.4byte	0x6f
	.2byte	0x105
	.byte	0
	.uleb128 0x8
	.4byte	.LASF186
	.2byte	0x84a
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d8c
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x84a
	.byte	0x3c
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.string	"m"
	.byte	0x2
	.2byte	0x84b
	.byte	0x36
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"k"
	.byte	0x2
	.2byte	0x84c
	.byte	0x31
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"d"
	.byte	0x2
	.2byte	0x84d
	.byte	0x2a
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"w"
	.byte	0x2
	.2byte	0x84e
	.byte	0x31
	.4byte	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x4
	.4byte	.LASF184
	.2byte	0x84f
	.byte	0x32
	.4byte	0xaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.string	"ret"
	.2byte	0x851
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"M"
	.2byte	0x852
	.byte	0x11
	.4byte	0x16c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.string	"mm"
	.2byte	0x852
	.byte	0x14
	.4byte	0x16c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x867
	.4byte	.L533
	.byte	0
	.uleb128 0x8
	.4byte	.LASF187
	.2byte	0x7fc
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e79
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x7fc
	.byte	0x37
	.4byte	0xcb9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1
	.string	"R"
	.byte	0x2
	.2byte	0x7fc
	.byte	0x4f
	.4byte	0x3a1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.string	"T"
	.byte	0x2
	.2byte	0x7fd
	.byte	0x36
	.4byte	0xc5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x4
	.4byte	.LASF54
	.2byte	0x7fd
	.byte	0x49
	.4byte	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -93
	.uleb128 0x1
	.string	"x"
	.byte	0x2
	.2byte	0x7fe
	.byte	0x32
	.4byte	0x8ff
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1
	.string	"d"
	.byte	0x2
	.2byte	0x7fe
	.byte	0x3e
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x4
	.4byte	.LASF140
	.2byte	0x7ff
	.byte	0x24
	.4byte	0xe17
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x4
	.4byte	.LASF141
	.2byte	0x800
	.byte	0x24
	.4byte	0xad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x4
	.4byte	.LASF164
	.2byte	0x801
	.byte	0x37
	.4byte	0x156c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2
	.string	"ret"
	.2byte	0x803
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"Txi"
	.2byte	0x804
	.byte	0x17
	.4byte	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"tmp"
	.2byte	0x805
	.byte	0x11
	.4byte	0x1571
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2
	.string	"i"
	.2byte	0x806
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x82e
	.4byte	.L515
	.byte	0
	.uleb128 0x8
	.4byte	.LASF188
	.2byte	0x7dd
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f12
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x7dd
	.byte	0x35
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"R"
	.byte	0x2
	.2byte	0x7dd
	.byte	0x4d
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"T"
	.byte	0x2
	.2byte	0x7de
	.byte	0x34
	.4byte	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF54
	.2byte	0x7de
	.byte	0x47
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x1
	.string	"i"
	.byte	0x2
	.2byte	0x7df
	.byte	0x2a
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x2
	.string	"ret"
	.2byte	0x7e1
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"ii"
	.2byte	0x7e2
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x2
	.string	"j"
	.2byte	0x7e2
	.byte	0x17
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x7f2
	.4byte	.L502
	.byte	0
	.uleb128 0x8
	.4byte	.LASF189
	.2byte	0x73a
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2026
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x73a
	.byte	0x39
	.4byte	0xcb9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1
	.string	"T"
	.byte	0x2
	.2byte	0x73b
	.byte	0x32
	.4byte	0x3a1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1
	.string	"P"
	.byte	0x2
	.2byte	0x73b
	.byte	0x50
	.4byte	0xc5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1
	.string	"w"
	.byte	0x2
	.2byte	0x73c
	.byte	0x2e
	.4byte	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -109
	.uleb128 0x1
	.string	"d"
	.byte	0x2
	.2byte	0x73c
	.byte	0x38
	.4byte	0x76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x4
	.4byte	.LASF164
	.2byte	0x73d
	.byte	0x39
	.4byte	0x156c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2
	.string	"ret"
	.2byte	0x73f
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"i"
	.2byte	0x740
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x2
	.string	"j"
	.2byte	0x741
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF54
	.2byte	0x742
	.byte	0x19
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x2
	.string	"cur"
	.2byte	0x743
	.byte	0x18
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"TT"
	.2byte	0x743
	.byte	0x1e
	.4byte	0x2026
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.string	"tmp"
	.2byte	0x745
	.byte	0x11
	.4byte	0x1571
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.string	"dbl"
	.2byte	0x764
	.4byte	.L449
	.uleb128 0x5
	.4byte	.LASF190
	.2byte	0x785
	.4byte	.L451
	.uleb128 0x20
	.string	"add"
	.2byte	0x79c
	.4byte	.L453
	.uleb128 0x5
	.4byte	.LASF191
	.2byte	0x7b0
	.4byte	.L454
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x7c8
	.4byte	.L456
	.byte	0
	.uleb128 0x12
	.4byte	0x3a1
	.4byte	0x2036
	.uleb128 0x15
	.4byte	0x6f
	.byte	0x6
	.byte	0
	.uleb128 0x21
	.4byte	.LASF244
	.2byte	0x6f9
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20c8
	.uleb128 0x1
	.string	"x"
	.byte	0x2
	.2byte	0x6f9
	.byte	0x30
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"d"
	.byte	0x2
	.2byte	0x6f9
	.byte	0x3c
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"w"
	.byte	0x2
	.2byte	0x6fa
	.byte	0x30
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1
	.string	"m"
	.byte	0x2
	.2byte	0x6fa
	.byte	0x46
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"i"
	.2byte	0x6fc
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"j"
	.2byte	0x6fc
	.byte	0xf
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"c"
	.2byte	0x6fd
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2
	.string	"cc"
	.2byte	0x6fd
	.byte	0x16
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x6
	.4byte	.LASF192
	.2byte	0x6fd
	.byte	0x1a
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.byte	0
	.uleb128 0x8
	.4byte	.LASF193
	.2byte	0x692
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2147
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x692
	.byte	0x37
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"pt"
	.byte	0x2
	.2byte	0x692
	.byte	0x4f
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF140
	.2byte	0x693
	.byte	0x24
	.4byte	0xe17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF141
	.2byte	0x693
	.byte	0x53
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"ret"
	.2byte	0x69e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"l"
	.2byte	0x69f
	.byte	0x11
	.4byte	0x16c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x6b3
	.4byte	.L427
	.byte	0
	.uleb128 0x8
	.4byte	.LASF194
	.2byte	0x630
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21ed
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x630
	.byte	0x33
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"R"
	.byte	0x2
	.2byte	0x630
	.byte	0x4b
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"P"
	.byte	0x2
	.2byte	0x631
	.byte	0x33
	.4byte	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"Q"
	.byte	0x2
	.2byte	0x631
	.byte	0x4f
	.4byte	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"tmp"
	.byte	0x2
	.2byte	0x632
	.byte	0x26
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"ret"
	.2byte	0x641
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"X"
	.2byte	0x646
	.byte	0x19
	.4byte	0x383
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"Y"
	.2byte	0x647
	.byte	0x19
	.4byte	0x383
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.string	"Z"
	.2byte	0x648
	.byte	0x19
	.4byte	0x383
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x685
	.4byte	.L387
	.byte	0
	.uleb128 0x8
	.4byte	.LASF195
	.2byte	0x5cf
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x225e
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x5cf
	.byte	0x34
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"R"
	.byte	0x2
	.2byte	0x5cf
	.byte	0x4c
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"P"
	.byte	0x2
	.2byte	0x5d0
	.byte	0x34
	.4byte	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"tmp"
	.byte	0x2
	.2byte	0x5d1
	.byte	0x27
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"ret"
	.2byte	0x5e0
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x616
	.4byte	.L327
	.byte	0
	.uleb128 0x8
	.4byte	.LASF196
	.2byte	0x5b2
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22e5
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x5b2
	.byte	0x39
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"Q"
	.byte	0x2
	.2byte	0x5b3
	.byte	0x33
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"inv"
	.byte	0x2
	.2byte	0x5b4
	.byte	0x2e
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x2
	.string	"ret"
	.2byte	0x5b6
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"tmp"
	.2byte	0x5b7
	.byte	0x11
	.4byte	0x16c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x5bc
	.4byte	.L321
	.uleb128 0x28
	.4byte	.LLRL0
	.uleb128 0x6
	.4byte	.LASF168
	.2byte	0x5ba
	.byte	0x18
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF197
	.2byte	0x551
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x236e
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x551
	.byte	0x3c
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.string	"T"
	.byte	0x2
	.2byte	0x552
	.byte	0x36
	.4byte	0x236e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF54
	.2byte	0x552
	.byte	0x42
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.string	"ret"
	.2byte	0x561
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"i"
	.2byte	0x562
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"c"
	.2byte	0x563
	.byte	0x12
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.string	"t"
	.2byte	0x563
	.byte	0x15
	.4byte	0x16c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x5a4
	.4byte	.L288
	.byte	0
	.uleb128 0xa
	.4byte	0x3a1
	.uleb128 0x8
	.4byte	.LASF198
	.2byte	0x523
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23d4
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x523
	.byte	0x37
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"pt"
	.byte	0x2
	.2byte	0x523
	.byte	0x4f
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"ret"
	.2byte	0x532
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"T"
	.2byte	0x533
	.byte	0x11
	.4byte	0x16c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x53e
	.4byte	.L272
	.byte	0
	.uleb128 0x8
	.4byte	.LASF199
	.2byte	0x4e4
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2453
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x4e4
	.byte	0x3d
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x4e5
	.byte	0x37
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"Y"
	.byte	0x2
	.2byte	0x4e6
	.byte	0x31
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF200
	.2byte	0x4e7
	.byte	0x28
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"ret"
	.2byte	0x4f7
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"exp"
	.2byte	0x4f8
	.byte	0x11
	.4byte	0x16c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x50e
	.4byte	.L258
	.byte	0
	.uleb128 0x8
	.4byte	.LASF201
	.2byte	0x4ca
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24b6
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x4ca
	.byte	0x30
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"rhs"
	.byte	0x2
	.2byte	0x4cb
	.byte	0x24
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x4cc
	.byte	0x2a
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"ret"
	.2byte	0x4ce
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x4dd
	.4byte	.L245
	.byte	0
	.uleb128 0x8
	.4byte	.LASF202
	.2byte	0x478
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2518
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x478
	.byte	0x44
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x479
	.byte	0x38
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF203
	.2byte	0x47a
	.byte	0x32
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"ret"
	.2byte	0x47c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x47f
	.4byte	.L237
	.byte	0
	.uleb128 0x8
	.4byte	.LASF204
	.2byte	0x467
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2587
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x467
	.byte	0x44
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x468
	.byte	0x38
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"A"
	.byte	0x2
	.2byte	0x469
	.byte	0x3e
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"c"
	.byte	0x2
	.2byte	0x46a
	.byte	0x3c
	.4byte	0x127
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"ret"
	.2byte	0x46c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x470
	.4byte	.L228
	.byte	0
	.uleb128 0x8
	.4byte	.LASF205
	.2byte	0x459
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25f6
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x459
	.byte	0x44
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x45a
	.byte	0x38
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"A"
	.byte	0x2
	.2byte	0x45b
	.byte	0x3e
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"c"
	.byte	0x2
	.2byte	0x45c
	.byte	0x3c
	.4byte	0x127
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"ret"
	.2byte	0x45e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x462
	.4byte	.L220
	.byte	0
	.uleb128 0x8
	.4byte	.LASF206
	.2byte	0x44c
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2665
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x44c
	.byte	0x40
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x44d
	.byte	0x34
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"A"
	.byte	0x2
	.2byte	0x44e
	.byte	0x3a
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"B"
	.byte	0x2
	.2byte	0x44f
	.byte	0x3a
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"ret"
	.2byte	0x451
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x454
	.4byte	.L212
	.byte	0
	.uleb128 0x8
	.4byte	.LASF207
	.2byte	0x437
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26d4
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x437
	.byte	0x40
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x438
	.byte	0x34
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"A"
	.byte	0x2
	.2byte	0x439
	.byte	0x3a
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"B"
	.byte	0x2
	.2byte	0x43a
	.byte	0x3a
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"ret"
	.2byte	0x43c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x43f
	.4byte	.L203
	.byte	0
	.uleb128 0x8
	.4byte	.LASF208
	.2byte	0x420
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2743
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x420
	.byte	0x40
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"X"
	.byte	0x2
	.2byte	0x421
	.byte	0x34
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"A"
	.byte	0x2
	.2byte	0x422
	.byte	0x3a
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"B"
	.byte	0x2
	.2byte	0x423
	.byte	0x3a
	.4byte	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"ret"
	.2byte	0x425
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x428
	.4byte	.L196
	.byte	0
	.uleb128 0x8
	.4byte	.LASF209
	.2byte	0x3e8
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2796
	.uleb128 0x1
	.string	"N"
	.byte	0x2
	.2byte	0x3e8
	.byte	0x22
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x3e8
	.byte	0x3e
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"ret"
	.2byte	0x3ea
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x402
	.4byte	.L185
	.byte	0
	.uleb128 0x7
	.4byte	.LASF210
	.2byte	0x3c5
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2827
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x3c5
	.byte	0x3a
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF145
	.2byte	0x3c5
	.byte	0x47
	.4byte	0xf18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"buf"
	.byte	0x2
	.2byte	0x3c6
	.byte	0x30
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF211
	.2byte	0x3c6
	.byte	0x3c
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.4byte	.LASF212
	.2byte	0x3c8
	.byte	0x23
	.4byte	0x2827
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.4byte	0x3143
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.2byte	0x3dd
	.byte	0x65
	.uleb128 0x22
	.4byte	0x3150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.4byte	0x3159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x23
	.4byte	0x3162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x268
	.uleb128 0x7
	.4byte	.LASF213
	.2byte	0x3a0
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x28be
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x3a0
	.byte	0x39
	.4byte	0x28be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.string	"buf"
	.byte	0x2
	.2byte	0x3a1
	.byte	0x39
	.4byte	0x28c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"len"
	.byte	0x2
	.2byte	0x3a1
	.byte	0x45
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.4byte	.LASF43
	.2byte	0x3a3
	.byte	0xe
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x6
	.4byte	.LASF212
	.2byte	0x3a4
	.byte	0x23
	.4byte	0x2827
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.4byte	0x3173
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.2byte	0x3b6
	.byte	0x54
	.uleb128 0x22
	.4byte	0x3180
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.4byte	0x3189
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x23
	.4byte	0x3192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x1de
	.uleb128 0xa
	.4byte	0x8ff
	.uleb128 0x7
	.4byte	.LASF214
	.2byte	0x390
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2931
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x390
	.byte	0x33
	.4byte	0xa4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"buf"
	.byte	0x2
	.2byte	0x391
	.byte	0x36
	.4byte	0x28c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"len"
	.byte	0x2
	.2byte	0x391
	.byte	0x42
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"ret"
	.2byte	0x393
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF42
	.2byte	0x394
	.byte	0x1a
	.4byte	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x7
	.4byte	.LASF215
	.2byte	0x36e
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29b7
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x36e
	.byte	0x3a
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"pt"
	.byte	0x2
	.2byte	0x36e
	.byte	0x58
	.4byte	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF144
	.2byte	0x36f
	.byte	0x25
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF145
	.2byte	0x36f
	.byte	0x35
	.4byte	0xf18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"buf"
	.byte	0x2
	.2byte	0x370
	.byte	0x30
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF211
	.2byte	0x370
	.byte	0x3c
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"ret"
	.2byte	0x372
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	.LASF216
	.2byte	0x34d
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a2e
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x34d
	.byte	0x39
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"pt"
	.byte	0x2
	.2byte	0x34e
	.byte	0x33
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"buf"
	.byte	0x2
	.2byte	0x34f
	.byte	0x36
	.4byte	0x28c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF217
	.2byte	0x34f
	.byte	0x42
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.4byte	.LASF218
	.2byte	0x351
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x6
	.4byte	.LASF219
	.2byte	0x352
	.byte	0x1a
	.4byte	0x8ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.4byte	.LASF220
	.2byte	0x302
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ab0
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x302
	.byte	0x3c
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"pt"
	.byte	0x2
	.2byte	0x303
	.byte	0x36
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"buf"
	.byte	0x2
	.2byte	0x304
	.byte	0x38
	.4byte	0x8ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF221
	.2byte	0x304
	.byte	0x44
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"ret"
	.2byte	0x306
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF222
	.2byte	0x307
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x343
	.4byte	.L136
	.byte	0
	.uleb128 0x7
	.4byte	.LASF223
	.2byte	0x2b4
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b4f
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x2b4
	.byte	0x3d
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"P"
	.byte	0x2
	.2byte	0x2b5
	.byte	0x3d
	.4byte	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF144
	.2byte	0x2b6
	.byte	0x28
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF145
	.2byte	0x2b6
	.byte	0x38
	.4byte	0xf18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"buf"
	.byte	0x2
	.2byte	0x2b7
	.byte	0x33
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF146
	.2byte	0x2b7
	.byte	0x3f
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"ret"
	.2byte	0x2b9
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF222
	.2byte	0x2ba
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x2f4
	.4byte	.L120
	.byte	0
	.uleb128 0x7
	.4byte	.LASF224
	.2byte	0x2a5
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2bbd
	.uleb128 0x1
	.string	"P"
	.byte	0x2
	.2byte	0x2a5
	.byte	0x36
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF225
	.2byte	0x2a5
	.byte	0x3d
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"x"
	.byte	0x2
	.2byte	0x2a6
	.byte	0x2f
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"y"
	.byte	0x2
	.2byte	0x2a6
	.byte	0x3e
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"ret"
	.2byte	0x2a8
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x2ad
	.4byte	.L110
	.byte	0
	.uleb128 0x7
	.4byte	.LASF226
	.2byte	0x296
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2bf4
	.uleb128 0x1
	.string	"P"
	.byte	0x2
	.2byte	0x296
	.byte	0x34
	.4byte	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"Q"
	.byte	0x2
	.2byte	0x297
	.byte	0x34
	.4byte	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.4byte	.LASF227
	.2byte	0x28e
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c1e
	.uleb128 0x1
	.string	"pt"
	.byte	0x2
	.2byte	0x28e
	.byte	0x2c
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	.LASF228
	.2byte	0x280
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c62
	.uleb128 0x1
	.string	"pt"
	.byte	0x2
	.2byte	0x280
	.byte	0x2d
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"ret"
	.2byte	0x282
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x287
	.4byte	.L98
	.byte	0
	.uleb128 0x7
	.4byte	.LASF229
	.2byte	0x278
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c9d
	.uleb128 0x1
	.string	"dst"
	.byte	0x2
	.2byte	0x278
	.byte	0x2f
	.4byte	0xa4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"src"
	.byte	0x2
	.2byte	0x278
	.byte	0x4d
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.4byte	.LASF230
	.2byte	0x26a
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2cee
	.uleb128 0x1
	.string	"P"
	.byte	0x2
	.2byte	0x26a
	.byte	0x29
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"Q"
	.byte	0x2
	.2byte	0x26a
	.byte	0x45
	.4byte	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"ret"
	.2byte	0x26c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF132
	.2byte	0x271
	.4byte	.L89
	.byte	0
	.uleb128 0x16
	.4byte	.LASF231
	.2byte	0x25c
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d14
	.uleb128 0x1
	.string	"key"
	.byte	0x2
	.2byte	0x25c
	.byte	0x34
	.4byte	0xe12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF232
	.2byte	0x23c
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d47
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x23c
	.byte	0x30
	.4byte	0xa4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"i"
	.2byte	0x23e
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF233
	.byte	0x2
	.2byte	0x22f
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d73
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x22f
	.byte	0x44
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF234
	.2byte	0x221
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d98
	.uleb128 0x1
	.string	"pt"
	.byte	0x2
	.2byte	0x221
	.byte	0x30
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF235
	.2byte	0x217
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2dbe
	.uleb128 0x1
	.string	"key"
	.byte	0x2
	.2byte	0x217
	.byte	0x34
	.4byte	0xe12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF236
	.2byte	0x201
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2de4
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x201
	.byte	0x30
	.4byte	0xa4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF237
	.2byte	0x1f7
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e09
	.uleb128 0x1
	.string	"pt"
	.byte	0x2
	.2byte	0x1f7
	.byte	0x30
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.4byte	.LASF238
	.2byte	0x1e7
	.byte	0x18
	.4byte	0x20e
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e34
	.uleb128 0x1
	.string	"grp"
	.byte	0x2
	.2byte	0x1e7
	.byte	0x46
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	.LASF239
	.2byte	0x1d1
	.byte	0x1f
	.4byte	0x2827
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e6d
	.uleb128 0x4
	.4byte	.LASF45
	.2byte	0x1d1
	.byte	0x4c
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF212
	.2byte	0x1d3
	.byte	0x23
	.4byte	0x2827
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	.LASF240
	.2byte	0x1bf
	.byte	0x1f
	.4byte	0x2827
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ea6
	.uleb128 0x4
	.4byte	.LASF43
	.2byte	0x1bf
	.byte	0x4b
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x6
	.4byte	.LASF212
	.2byte	0x1c1
	.byte	0x23
	.4byte	0x2827
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	.LASF241
	.2byte	0x1ad
	.byte	0x1f
	.4byte	0x2827
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2edf
	.uleb128 0x4
	.4byte	.LASF42
	.2byte	0x1ad
	.byte	0x57
	.4byte	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x6
	.4byte	.LASF212
	.2byte	0x1af
	.byte	0x23
	.4byte	0x2827
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	.LASF242
	.2byte	0x195
	.byte	0x1d
	.4byte	0x2f32
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f32
	.uleb128 0x6
	.4byte	.LASF243
	.2byte	0x197
	.byte	0x10
	.4byte	0x68
	.uleb128 0x5
	.byte	0x3
	.4byte	init_done.1
	.uleb128 0x26
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x2
	.string	"i"
	.2byte	0x19a
	.byte	0x10
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF212
	.2byte	0x19b
	.byte	0x27
	.4byte	0x2827
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x1ea
	.uleb128 0x37
	.4byte	.LASF255
	.byte	0x2
	.2byte	0x18d
	.byte	0x1f
	.4byte	0x2827
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.4byte	.LASF245
	.2byte	0x145
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f83
	.uleb128 0x1
	.string	"arr"
	.byte	0x2
	.2byte	0x145
	.byte	0x28
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF246
	.2byte	0x145
	.byte	0x34
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.4byte	.LASF247
	.2byte	0x13e
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2fb8
	.uleb128 0x1
	.string	"arr"
	.byte	0x2
	.2byte	0x13e
	.byte	0x28
	.4byte	0x37e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF246
	.2byte	0x13e
	.byte	0x34
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.4byte	.LASF248
	.byte	0x2
	.byte	0xf7
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ffd
	.uleb128 0x11
	.string	"grp"
	.byte	0xf7
	.byte	0x37
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.4byte	.LASF164
	.byte	0xf8
	.byte	0x37
	.4byte	0x156c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"ops"
	.byte	0xf9
	.byte	0x27
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x39
	.4byte	.LASF249
	.byte	0x2
	.byte	0xe5
	.byte	0x6
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3022
	.uleb128 0x11
	.string	"ctx"
	.byte	0xe5
	.byte	0x38
	.4byte	0x156c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF250
	.byte	0xda
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3045
	.uleb128 0x11
	.string	"ctx"
	.byte	0xda
	.byte	0x38
	.4byte	0x156c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF251
	.byte	0xcb
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3068
	.uleb128 0x11
	.string	"ctx"
	.byte	0xcb
	.byte	0x41
	.4byte	0x492
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF252
	.byte	0xc1
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x308b
	.uleb128 0x11
	.string	"ctx"
	.byte	0xc1
	.byte	0x41
	.4byte	0x492
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF253
	.byte	0x9c
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30bb
	.uleb128 0x11
	.string	"ctx"
	.byte	0x9c
	.byte	0x3f
	.4byte	0x48d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3a
	.string	"i"
	.byte	0x2
	.byte	0x9e
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF254
	.byte	0x90
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30de
	.uleb128 0x11
	.string	"ctx"
	.byte	0x90
	.byte	0x3f
	.4byte	0x48d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF256
	.byte	0x2
	.byte	0x75
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.4byte	.LASF257
	.byte	0x6d
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3117
	.uleb128 0x2a
	.4byte	.LASF258
	.byte	0x6d
	.byte	0x27
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x3fe
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3143
	.uleb128 0x1
	.string	"grp"
	.byte	0x1
	.2byte	0x3fe
	.byte	0x4b
	.4byte	0xcb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF260
	.byte	0x3
	.byte	0x8e
	.byte	0x14
	.byte	0x3
	.4byte	0x316e
	.uleb128 0x24
	.string	"p"
	.byte	0x8e
	.byte	0x37
	.4byte	0xad
	.uleb128 0x24
	.string	"x"
	.byte	0x8e
	.byte	0x43
	.4byte	0x95
	.uleb128 0x25
	.string	"p16"
	.byte	0x94
	.byte	0x21
	.4byte	0x316e
	.byte	0
	.uleb128 0xa
	.4byte	0xea
	.uleb128 0x3d
	.4byte	.LASF261
	.byte	0x3
	.byte	0x73
	.byte	0x18
	.4byte	0x95
	.byte	0x3
	.uleb128 0x24
	.string	"p"
	.byte	0x73
	.byte	0x41
	.4byte	0xcf
	.uleb128 0x25
	.string	"r"
	.byte	0x75
	.byte	0xe
	.4byte	0x95
	.uleb128 0x25
	.string	"p16"
	.byte	0x7a
	.byte	0x21
	.4byte	0x316e
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x17
	.uleb128 0x16
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x1e
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
	.uleb128 0x20
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x34
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
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
	.uleb128 0x2b
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x304
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
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
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
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
	.byte	0x5
	.4byte	.LBB11
	.byte	0x4
	.uleb128 .LBB11-.LBB11
	.uleb128 .LBE11-.LBB11
	.byte	0x4
	.uleb128 .LBB12-.LBB11
	.uleb128 .LBE12-.LBB11
	.byte	0
.LLRL1:
	.byte	0x5
	.4byte	.LBB13
	.byte	0x4
	.uleb128 .LBB13-.LBB13
	.uleb128 .LBE13-.LBB13
	.byte	0x4
	.uleb128 .LBB14-.LBB13
	.uleb128 .LBE14-.LBB13
	.byte	0
.LLRL2:
	.byte	0x7
	.4byte	.LFB11
	.uleb128 .LFE11-.LFB11
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
	.byte	0x7
	.4byte	.LFB39
	.uleb128 .LFE39-.LFB39
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
	.byte	0x7
	.4byte	.LFB44
	.uleb128 .LFE44-.LFB44
	.byte	0x7
	.4byte	.LFB45
	.uleb128 .LFE45-.LFB45
	.byte	0x7
	.4byte	.LFB46
	.uleb128 .LFE46-.LFB46
	.byte	0x7
	.4byte	.LFB47
	.uleb128 .LFE47-.LFB47
	.byte	0x7
	.4byte	.LFB48
	.uleb128 .LFE48-.LFB48
	.byte	0x7
	.4byte	.LFB49
	.uleb128 .LFE49-.LFB49
	.byte	0x7
	.4byte	.LFB50
	.uleb128 .LFE50-.LFB50
	.byte	0x7
	.4byte	.LFB51
	.uleb128 .LFE51-.LFB51
	.byte	0x7
	.4byte	.LFB52
	.uleb128 .LFE52-.LFB52
	.byte	0x7
	.4byte	.LFB53
	.uleb128 .LFE53-.LFB53
	.byte	0x7
	.4byte	.LFB54
	.uleb128 .LFE54-.LFB54
	.byte	0x7
	.4byte	.LFB55
	.uleb128 .LFE55-.LFB55
	.byte	0x7
	.4byte	.LFB56
	.uleb128 .LFE56-.LFB56
	.byte	0x7
	.4byte	.LFB57
	.uleb128 .LFE57-.LFB57
	.byte	0x7
	.4byte	.LFB58
	.uleb128 .LFE58-.LFB58
	.byte	0x7
	.4byte	.LFB59
	.uleb128 .LFE59-.LFB59
	.byte	0x7
	.4byte	.LFB60
	.uleb128 .LFE60-.LFB60
	.byte	0x7
	.4byte	.LFB61
	.uleb128 .LFE61-.LFB61
	.byte	0x7
	.4byte	.LFB62
	.uleb128 .LFE62-.LFB62
	.byte	0x7
	.4byte	.LFB63
	.uleb128 .LFE63-.LFB63
	.byte	0x7
	.4byte	.LFB64
	.uleb128 .LFE64-.LFB64
	.byte	0x7
	.4byte	.LFB65
	.uleb128 .LFE65-.LFB65
	.byte	0x7
	.4byte	.LFB66
	.uleb128 .LFE66-.LFB66
	.byte	0x7
	.4byte	.LFB67
	.uleb128 .LFE67-.LFB67
	.byte	0x7
	.4byte	.LFB68
	.uleb128 .LFE68-.LFB68
	.byte	0x7
	.4byte	.LFB69
	.uleb128 .LFE69-.LFB69
	.byte	0x7
	.4byte	.LFB70
	.uleb128 .LFE70-.LFB70
	.byte	0x7
	.4byte	.LFB71
	.uleb128 .LFE71-.LFB71
	.byte	0x7
	.4byte	.LFB72
	.uleb128 .LFE72-.LFB72
	.byte	0x7
	.4byte	.LFB73
	.uleb128 .LFE73-.LFB73
	.byte	0x7
	.4byte	.LFB74
	.uleb128 .LFE74-.LFB74
	.byte	0x7
	.4byte	.LFB75
	.uleb128 .LFE75-.LFB75
	.byte	0x7
	.4byte	.LFB76
	.uleb128 .LFE76-.LFB76
	.byte	0x7
	.4byte	.LFB77
	.uleb128 .LFE77-.LFB77
	.byte	0x7
	.4byte	.LFB78
	.uleb128 .LFE78-.LFB78
	.byte	0x7
	.4byte	.LFB79
	.uleb128 .LFE79-.LFB79
	.byte	0x7
	.4byte	.LFB80
	.uleb128 .LFE80-.LFB80
	.byte	0x7
	.4byte	.LFB81
	.uleb128 .LFE81-.LFB81
	.byte	0x7
	.4byte	.LFB82
	.uleb128 .LFE82-.LFB82
	.byte	0x7
	.4byte	.LFB83
	.uleb128 .LFE83-.LFB83
	.byte	0x7
	.4byte	.LFB84
	.uleb128 .LFE84-.LFB84
	.byte	0x7
	.4byte	.LFB85
	.uleb128 .LFE85-.LFB85
	.byte	0x7
	.4byte	.LFB86
	.uleb128 .LFE86-.LFB86
	.byte	0x7
	.4byte	.LFB87
	.uleb128 .LFE87-.LFB87
	.byte	0x7
	.4byte	.LFB88
	.uleb128 .LFE88-.LFB88
	.byte	0x7
	.4byte	.LFB89
	.uleb128 .LFE89-.LFB89
	.byte	0x7
	.4byte	.LFB90
	.uleb128 .LFE90-.LFB90
	.byte	0x7
	.4byte	.LFB91
	.uleb128 .LFE91-.LFB91
	.byte	0x7
	.4byte	.LFB92
	.uleb128 .LFE92-.LFB92
	.byte	0x7
	.4byte	.LFB93
	.uleb128 .LFE93-.LFB93
	.byte	0x7
	.4byte	.LFB94
	.uleb128 .LFE94-.LFB94
	.byte	0x7
	.4byte	.LFB95
	.uleb128 .LFE95-.LFB95
	.byte	0x7
	.4byte	.LFB96
	.uleb128 .LFE96-.LFB96
	.byte	0x7
	.4byte	.LFB97
	.uleb128 .LFE97-.LFB97
	.byte	0x7
	.4byte	.LFB98
	.uleb128 .LFE98-.LFB98
	.byte	0x7
	.4byte	.LFB99
	.uleb128 .LFE99-.LFB99
	.byte	0x7
	.4byte	.LFB100
	.uleb128 .LFE100-.LFB100
	.byte	0x7
	.4byte	.LFB101
	.uleb128 .LFE101-.LFB101
	.byte	0x7
	.4byte	.LFB102
	.uleb128 .LFE102-.LFB102
	.byte	0x7
	.4byte	.LFB103
	.uleb128 .LFE103-.LFB103
	.byte	0x7
	.4byte	.LFB104
	.uleb128 .LFE104-.LFB104
	.byte	0x7
	.4byte	.LFB105
	.uleb128 .LFE105-.LFB105
	.byte	0x7
	.4byte	.LFB106
	.uleb128 .LFE106-.LFB106
	.byte	0x7
	.4byte	.LFB107
	.uleb128 .LFE107-.LFB107
	.byte	0x7
	.4byte	.LFB108
	.uleb128 .LFE108-.LFB108
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF154:
	.string	"mbedtls_ecp_gen_privkey_sw"
.LASF256:
	.string	"mbedtls_ecp_restart_is_enabled"
.LASF87:
	.string	"mbedtls_mpi_safe_cond_swap"
.LASF95:
	.string	"mbedtls_mpi_gcd_modinv_odd"
.LASF251:
	.string	"ecp_restart_ma_free"
.LASF110:
	.string	"mbedtls_mpi_write_binary"
.LASF176:
	.string	"ecp_randomize_mxz"
.LASF175:
	.string	"ecp_double_add_mxz"
.LASF73:
	.string	"ecp_rsm_comb_core"
.LASF152:
	.string	"mbedtls_ecp_gen_keypair_base"
.LASF122:
	.string	"mbedtls_mpi_init"
.LASF144:
	.string	"format"
.LASF257:
	.string	"mbedtls_ecp_set_max_ops"
.LASF39:
	.string	"MBEDTLS_ECP_TYPE_MONTGOMERY"
.LASF10:
	.string	"unsigned int"
.LASF181:
	.string	"should_free_R"
.LASF177:
	.string	"ecp_normalize_mxz"
.LASF180:
	.string	"T_ok"
.LASF117:
	.string	"mbedtls_ecp_group_load"
.LASF215:
	.string	"mbedtls_ecp_tls_write_point"
.LASF78:
	.string	"ecp_rsma_norm"
.LASF185:
	.string	"final_norm"
.LASF240:
	.string	"mbedtls_ecp_curve_info_from_tls_id"
.LASF62:
	.string	"mbedtls_ecp_restart_ctx"
.LASF43:
	.string	"tls_id"
.LASF19:
	.string	"mbedtls_mpi_sint"
.LASF50:
	.string	"modp"
.LASF24:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF56:
	.string	"mbedtls_ecp_restart_mul"
.LASF63:
	.string	"mbedtls_ecp_keypair"
.LASF18:
	.string	"mbedtls_f_rng_t"
.LASF237:
	.string	"mbedtls_ecp_point_init"
.LASF55:
	.string	"mbedtls_ecp_restart_mul_ctx"
.LASF31:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF145:
	.string	"olen"
.LASF226:
	.string	"mbedtls_ecp_point_cmp"
.LASF171:
	.string	"mbedtls_ecp_mul_restartable"
.LASF163:
	.string	"mbedtls_ecp_muladd_restartable"
.LASF198:
	.string	"ecp_normalize_jac"
.LASF15:
	.string	"uint32_t"
.LASF253:
	.string	"ecp_restart_rsm_free"
.LASF232:
	.string	"mbedtls_ecp_group_free"
.LASF151:
	.string	"mbedtls_ecp_gen_keypair"
.LASF164:
	.string	"rs_ctx"
.LASF131:
	.string	"mul_c_prev"
.LASF34:
	.string	"MBEDTLS_ECP_DP_SECP256K1"
.LASF189:
	.string	"ecp_precompute_comb"
.LASF203:
	.string	"count"
.LASF51:
	.string	"t_pre"
.LASF233:
	.string	"ecp_group_is_static_comb_table"
.LASF46:
	.string	"mbedtls_ecp_point"
.LASF206:
	.string	"mbedtls_mpi_add_mod"
.LASF9:
	.string	"long long unsigned int"
.LASF41:
	.string	"mbedtls_ecp_curve_info"
.LASF132:
	.string	"cleanup"
.LASF141:
	.string	"p_rng"
.LASF159:
	.string	"mbedtls_ecp_check_pubkey"
.LASF89:
	.string	"mbedtls_mpi_random"
.LASF26:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF92:
	.string	"mbedtls_mpi_safe_cond_assign"
.LASF196:
	.string	"ecp_safe_invert_jac"
.LASF261:
	.string	"mbedtls_get_unaligned_uint16"
.LASF29:
	.string	"MBEDTLS_ECP_DP_BP384R1"
.LASF32:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
.LASF174:
	.string	"ecp_mul_mxz"
.LASF191:
	.string	"norm_add"
.LASF65:
	.string	"dbl_count"
.LASF142:
	.string	"mbedtls_ecp_check_pub_priv"
.LASF193:
	.string	"ecp_randomize_jac"
.LASF20:
	.string	"mbedtls_mpi_uint"
.LASF103:
	.string	"mbedtls_mpi_add_mpi"
.LASF200:
	.string	"parity_bit"
.LASF207:
	.string	"mbedtls_mpi_sub_mod"
.LASF243:
	.string	"init_done"
.LASF188:
	.string	"ecp_select_comb"
.LASF12:
	.string	"size_t"
.LASF247:
	.string	"mpi_init_many"
.LASF17:
	.string	"mbedtls_uint16_unaligned_t"
.LASF158:
	.string	"mbedtls_ecp_check_privkey"
.LASF80:
	.string	"ecp_supported_grp_id"
.LASF135:
	.string	"self_test_rng"
.LASF35:
	.string	"MBEDTLS_ECP_DP_CURVE448"
.LASF201:
	.string	"ecp_sw_rhs"
.LASF259:
	.string	"mbedtls_ecp_group_a_is_minus_3"
.LASF235:
	.string	"mbedtls_ecp_keypair_init"
.LASF223:
	.string	"mbedtls_ecp_point_write_binary"
.LASF190:
	.string	"norm_dbl"
.LASF123:
	.string	"free"
.LASF209:
	.string	"ecp_modp"
.LASF249:
	.string	"mbedtls_ecp_restart_free"
.LASF59:
	.string	"mbedtls_ecp_restart_muladd"
.LASF54:
	.string	"T_size"
.LASF86:
	.string	"mbedtls_mpi_fill_random"
.LASF96:
	.string	"mbedtls_mpi_sub_mpi"
.LASF139:
	.string	"mbedtls_ecp_keypair_calc_public"
.LASF71:
	.string	"ecp_rsm_pre_add"
.LASF160:
	.string	"ecp_check_pubkey_mx"
.LASF16:
	.string	"char"
.LASF248:
	.string	"mbedtls_ecp_check_budget"
.LASF238:
	.string	"mbedtls_ecp_get_type"
.LASF74:
	.string	"ecp_rsm_final_norm"
.LASF113:
	.string	"mbedtls_mpi_read_string"
.LASF136:
	.string	"mbedtls_ecp_self_test"
.LASF42:
	.string	"grp_id"
.LASF118:
	.string	"mbedtls_mpi_copy"
.LASF146:
	.string	"buflen"
.LASF252:
	.string	"ecp_restart_ma_init"
.LASF208:
	.string	"mbedtls_mpi_mul_mod"
.LASF227:
	.string	"mbedtls_ecp_is_zero"
.LASF75:
	.string	"ecp_rsma_mul1"
.LASF76:
	.string	"ecp_rsma_mul2"
.LASF97:
	.string	"mbedtls_mpi_exp_mod"
.LASF143:
	.string	"mbedtls_ecp_write_public_key"
.LASF195:
	.string	"ecp_double_jac"
.LASF69:
	.string	"ecp_rsm_pre_dbl"
.LASF127:
	.string	"exponents"
.LASF128:
	.string	"n_exponents"
.LASF258:
	.string	"max_ops"
.LASF27:
	.string	"MBEDTLS_ECP_DP_SECP521R1"
.LASF228:
	.string	"mbedtls_ecp_set_zero"
.LASF116:
	.string	"mbedtls_mpi_lset"
.LASF187:
	.string	"ecp_mul_comb_core"
.LASF8:
	.string	"long long int"
.LASF182:
	.string	"ecp_pick_window_size"
.LASF194:
	.string	"ecp_add_mixed"
.LASF85:
	.string	"printf"
.LASF83:
	.string	"ecp_x25519_bad_point_1"
.LASF61:
	.string	"depth"
.LASF100:
	.string	"mbedtls_mpi_mul_mpi"
.LASF236:
	.string	"mbedtls_ecp_group_init"
.LASF49:
	.string	"nbits"
.LASF53:
	.string	"t_data"
.LASF173:
	.string	"restarting"
.LASF88:
	.string	"memset"
.LASF216:
	.string	"mbedtls_ecp_tls_read_point"
.LASF245:
	.string	"mpi_free_many"
.LASF133:
	.string	"self_test_point"
.LASF246:
	.string	"size"
.LASF220:
	.string	"mbedtls_ecp_point_read_binary"
.LASF192:
	.string	"adjust"
.LASF212:
	.string	"curve_info"
.LASF72:
	.string	"ecp_rsm_pre_norm_add"
.LASF230:
	.string	"mbedtls_ecp_copy"
.LASF147:
	.string	"mbedtls_ecp_write_key_ext"
.LASF93:
	.string	"mbedtls_mpi_shrink"
.LASF221:
	.string	"ilen"
.LASF149:
	.string	"mbedtls_ecp_set_public_key"
.LASF58:
	.string	"mbedtls_ecp_restart_muladd_ctx"
.LASF81:
	.string	"x25519_bad_point_1"
.LASF82:
	.string	"x25519_bad_point_2"
.LASF40:
	.string	"mbedtls_ecp_curve_type"
.LASF99:
	.string	"mbedtls_mpi_add_int"
.LASF155:
	.string	"mbedtls_ecp_gen_privkey_mx"
.LASF107:
	.string	"mbedtls_mpi_set_bit"
.LASF129:
	.string	"add_c_prev"
.LASF121:
	.string	"mbedtls_mpi_free"
.LASF213:
	.string	"mbedtls_ecp_tls_read_group_id"
.LASF254:
	.string	"ecp_restart_rsm_init"
.LASF11:
	.string	"long double"
.LASF14:
	.string	"uint16_t"
.LASF179:
	.string	"p_eq_g"
.LASF70:
	.string	"ecp_rsm_pre_norm_dbl"
.LASF150:
	.string	"mbedtls_ecp_gen_key"
.LASF166:
	.string	"norm"
.LASF218:
	.string	"data_len"
.LASF30:
	.string	"MBEDTLS_ECP_DP_BP512R1"
.LASF153:
	.string	"mbedtls_ecp_gen_privkey"
.LASF22:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF156:
	.string	"high_bit"
.LASF4:
	.string	"short int"
.LASF25:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF101:
	.string	"mbedtls_mpi_sub_int"
.LASF211:
	.string	"blen"
.LASF202:
	.string	"mbedtls_mpi_shift_l_mod"
.LASF105:
	.string	"mbedtls_mpi_mod_mpi"
.LASF6:
	.string	"long int"
.LASF114:
	.string	"mbedtls_mpi_cmp_mpi"
.LASF199:
	.string	"mbedtls_ecp_sw_derive_y"
.LASF28:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF234:
	.string	"mbedtls_ecp_point_free"
.LASF108:
	.string	"mbedtls_mpi_read_binary_le"
.LASF186:
	.string	"ecp_comb_recode_scalar"
.LASF102:
	.string	"mbedtls_mpi_sub_abs"
.LASF205:
	.string	"mbedtls_mpi_mul_int_mod"
.LASF130:
	.string	"dbl_c_prev"
.LASF183:
	.string	"ecp_mul_comb_after_precomp"
.LASF67:
	.string	"ecp_max_ops"
.LASF167:
	.string	"mbedtls_ecp_mul_shortcuts"
.LASF60:
	.string	"ops_done"
.LASF23:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF140:
	.string	"f_rng"
.LASF178:
	.string	"ecp_mul_comb"
.LASF239:
	.string	"mbedtls_ecp_curve_info_from_name"
.LASF111:
	.string	"mbedtls_mpi_write_binary_le"
.LASF45:
	.string	"name"
.LASF222:
	.string	"plen"
.LASF104:
	.string	"mbedtls_mpi_bitlen"
.LASF90:
	.string	"mbedtls_mpi_shift_l"
.LASF134:
	.string	"self_test_adjust_exponent"
.LASF217:
	.string	"buf_len"
.LASF241:
	.string	"mbedtls_ecp_curve_info_from_grp_id"
.LASF244:
	.string	"ecp_comb_recode_core"
.LASF98:
	.string	"mbedtls_mpi_shift_r"
.LASF64:
	.string	"add_count"
.LASF250:
	.string	"mbedtls_ecp_restart_init"
.LASF7:
	.string	"long unsigned int"
.LASF204:
	.string	"mbedtls_mpi_sub_int_mod"
.LASF66:
	.string	"mul_count"
.LASF13:
	.string	"int32_t"
.LASF169:
	.string	"ecp_check_pubkey_sw"
.LASF91:
	.string	"mbedtls_mpi_mul_int"
.LASF197:
	.string	"ecp_normalize_jac_many"
.LASF44:
	.string	"bit_size"
.LASF172:
	.string	"ecp_mul_restartable_internal"
.LASF48:
	.string	"pbits"
.LASF148:
	.string	"mbedtls_ecp_read_key"
.LASF3:
	.string	"unsigned char"
.LASF109:
	.string	"mbedtls_mpi_get_bit"
.LASF106:
	.string	"mbedtls_mpi_read_binary"
.LASF68:
	.string	"ecp_rsm_init"
.LASF33:
	.string	"MBEDTLS_ECP_DP_SECP224K1"
.LASF255:
	.string	"mbedtls_ecp_curve_list"
.LASF79:
	.string	"ecp_supported_curves"
.LASF84:
	.string	"ecp_x25519_bad_point_2"
.LASF225:
	.string	"radix"
.LASF37:
	.string	"MBEDTLS_ECP_TYPE_NONE"
.LASF57:
	.string	"state"
.LASF124:
	.string	"sw_exponents"
.LASF77:
	.string	"ecp_rsma_add"
.LASF184:
	.string	"parity_trick"
.LASF242:
	.string	"mbedtls_ecp_grp_id_list"
.LASF219:
	.string	"buf_start"
.LASF157:
	.string	"n_random_bytes"
.LASF224:
	.string	"mbedtls_ecp_point_read_string"
.LASF170:
	.string	"mbedtls_ecp_mul"
.LASF126:
	.string	"verbose"
.LASF2:
	.string	"signed char"
.LASF21:
	.string	"mbedtls_mpi"
.LASF210:
	.string	"mbedtls_ecp_tls_write_group"
.LASF229:
	.string	"mbedtls_ecp_group_copy"
.LASF36:
	.string	"mbedtls_ecp_group_id"
.LASF5:
	.string	"short unsigned int"
.LASF231:
	.string	"mbedtls_ecp_keypair_free"
.LASF94:
	.string	"calloc"
.LASF112:
	.string	"mbedtls_mpi_size"
.LASF161:
	.string	"ecp_check_bad_points_mx"
.LASF168:
	.string	"nonzero"
.LASF47:
	.string	"mbedtls_ecp_group"
.LASF125:
	.string	"m_exponents"
.LASF137:
	.string	"mbedtls_ecp_export"
.LASF260:
	.string	"mbedtls_put_unaligned_uint16"
.LASF138:
	.string	"mbedtls_ecp_keypair_get_group_id"
.LASF52:
	.string	"t_post"
.LASF262:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF214:
	.string	"mbedtls_ecp_tls_read_group"
.LASF115:
	.string	"mbedtls_mpi_cmp_int"
.LASF120:
	.string	"mbedtls_platform_zeroize"
.LASF119:
	.string	"strcmp"
.LASF162:
	.string	"mbedtls_ecp_muladd"
.LASF165:
	.string	"mul2"
.LASF38:
	.string	"MBEDTLS_ECP_TYPE_SHORT_WEIERSTRASS"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ecp.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
