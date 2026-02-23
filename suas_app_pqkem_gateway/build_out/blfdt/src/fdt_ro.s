	.file	"fdt_ro.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blfdt" "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_ro.c"
	.section	.text.fdt32_ld,"ax",@progbits
	.align	1
	.type	fdt32_ld, @function
fdt32_ld:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/libfdt.h"
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
	.loc 1 195 20
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 197 25
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 197 29
	slli	a4,a5,24
	.loc 1 198 24
	lw	a5,-20(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 198 28
	slli	a5,a5,16
	.loc 1 198 9
	or	a4,a4,a5
	.loc 1 199 24
	lw	a5,-20(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 199 28
	slli	a5,a5,8
	.loc 1 199 9
	or	a5,a4,a5
	.loc 1 200 13
	lw	a4,-20(s0)
	addi	a4,a4,3
	lbu	a4,0(a4)
	.loc 1 200 9
	or	a5,a5,a4
	.loc 1 201 1
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
	.size	fdt32_ld, .-fdt32_ld
	.section	.text.fdt64_ld,"ax",@progbits
	.align	1
	.type	fdt64_ld, @function
fdt64_ld:
.LFB9:
	.loc 1 204 1
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sw	ra,172(sp)
	sw	s0,168(sp)
	sw	s2,164(sp)
	sw	s3,160(sp)
	sw	s4,156(sp)
	sw	s5,152(sp)
	sw	s6,148(sp)
	sw	s7,144(sp)
	sw	s8,140(sp)
	sw	s9,136(sp)
	sw	s10,132(sp)
	sw	s11,128(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	.cfi_offset 22, -28
	.cfi_offset 23, -32
	.cfi_offset 24, -36
	.cfi_offset 25, -40
	.cfi_offset 26, -44
	.cfi_offset 27, -48
	addi	s0,sp,176
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	.loc 1 205 20
	lw	a5,-68(s0)
	sw	a5,-52(s0)
	.loc 1 207 25
	lw	a5,-52(s0)
	lbu	a5,0(a5)
	.loc 1 207 13
	sw	a5,-80(s0)
	sw	zero,-76(s0)
	.loc 1 207 29
	lw	a5,-80(s0)
	slli	t4,a5,24
	li	t3,0
	.loc 1 208 24
	lw	a5,-52(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 208 12
	sw	a5,-88(s0)
	sw	zero,-84(s0)
	.loc 1 208 28
	lw	a5,-88(s0)
	slli	t2,a5,16
	li	t1,0
	.loc 1 208 9
	or	s10,t3,t1
	or	s11,t4,t2
	.loc 1 209 24
	lw	a5,-52(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 209 12
	sw	a5,-96(s0)
	sw	zero,-92(s0)
	.loc 1 209 28
	lw	a5,-96(s0)
	slli	a5,a5,8
	sw	a5,-100(s0)
	sw	zero,-104(s0)
	.loc 1 209 9
	lw	a4,-104(s0)
	lw	a5,-100(s0)
	mv	a1,a4
	or	a1,s10,a1
	sw	a1,-112(s0)
	or	a5,s11,a5
	sw	a5,-108(s0)
	.loc 1 210 24
	lw	a5,-52(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 210 12
	sw	a5,-120(s0)
	sw	zero,-116(s0)
	.loc 1 210 28
	lw	a5,-120(s0)
	slli	a5,a5,0
	sw	a5,-124(s0)
	sw	zero,-128(s0)
	.loc 1 210 9
	lw	a0,-112(s0)
	lw	a1,-108(s0)
	mv	t1,a0
	lw	a4,-128(s0)
	lw	a5,-124(s0)
	mv	t3,a4
	or	s8,t1,t3
	or	s9,a1,a5
	.loc 1 211 24
	lw	a5,-52(s0)
	addi	a5,a5,4
	lbu	a5,0(a5)
	.loc 1 211 12
	sw	a5,-136(s0)
	sw	zero,-132(s0)
	.loc 1 211 28
	lw	a4,-136(s0)
	lw	a5,-132(s0)
	mv	a1,a4
	srli	s7,a1,8
	mv	a5,a4
	slli	s6,a5,24
	.loc 1 211 9
	or	s4,s8,s6
	or	s5,s9,s7
	.loc 1 212 24
	lw	a5,-52(s0)
	addi	a5,a5,5
	lbu	a5,0(a5)
	.loc 1 212 12
	sw	a5,-144(s0)
	sw	zero,-140(s0)
	.loc 1 212 28
	lw	a0,-144(s0)
	lw	a1,-140(s0)
	mv	a5,a0
	srli	a5,a5,16
	mv	a4,a1
	slli	a7,a4,16
	add	a7,a5,a7
	mv	a5,a0
	slli	a6,a5,16
	.loc 1 212 9
	or	s2,s4,a6
	or	s3,s5,a7
	.loc 1 213 24
	lw	a5,-52(s0)
	addi	a5,a5,6
	lbu	a5,0(a5)
	.loc 1 213 12
	sw	a5,-152(s0)
	sw	zero,-148(s0)
	.loc 1 213 28
	lw	a0,-152(s0)
	lw	a1,-148(s0)
	mv	a5,a0
	srli	a5,a5,24
	mv	a4,a1
	slli	a3,a4,8
	add	a3,a5,a3
	mv	a5,a0
	slli	a2,a5,8
	.loc 1 213 9
	or	t5,s2,a2
	or	t6,s3,a3
	.loc 1 214 13
	lw	a5,-52(s0)
	addi	a5,a5,7
	lbu	a5,0(a5)
	sw	a5,-160(s0)
	sw	zero,-156(s0)
	.loc 1 214 9
	lw	a5,-160(s0)
	lw	a6,-156(s0)
	mv	a4,a5
	or	a4,t5,a4
	sw	a4,-168(s0)
	mv	a5,a6
	or	a5,t6,a5
	sw	a5,-164(s0)
	.loc 1 214 9 is_stmt 0 discriminator 1
	lw	a4,-168(s0)
	lw	a5,-164(s0)
	.loc 1 215 1 is_stmt 1
	mv	a0,a4
	mv	a1,a5
	lw	ra,172(sp)
	.cfi_restore 1
	lw	s0,168(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	lw	s2,164(sp)
	.cfi_restore 18
	lw	s3,160(sp)
	.cfi_restore 19
	lw	s4,156(sp)
	.cfi_restore 20
	lw	s5,152(sp)
	.cfi_restore 21
	lw	s6,148(sp)
	.cfi_restore 22
	lw	s7,144(sp)
	.cfi_restore 23
	lw	s8,140(sp)
	.cfi_restore 24
	lw	s9,136(sp)
	.cfi_restore 25
	lw	s10,132(sp)
	.cfi_restore 26
	lw	s11,128(sp)
	.cfi_restore 27
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	fdt64_ld, .-fdt64_ld
	.section	.text.fdt_offset_ptr_,"ax",@progbits
	.align	1
	.type	fdt_offset_ptr_, @function
fdt_offset_ptr_:
.LFB36:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/libfdt_internal.h"
	.loc 2 101 1
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
	.loc 2 102 34
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 2 102 97 discriminator 1
	lw	a5,-24(s0)
	add	a5,a4,a5
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 2 103 1
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
	.size	fdt_offset_ptr_, .-fdt_offset_ptr_
	.section	.text.fdt_mem_rsv_,"ax",@progbits
	.align	1
	.type	fdt_mem_rsv_, @function
fdt_mem_rsv_:
.LFB38:
	.loc 2 111 1
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
	.loc 2 114 32
	lw	a5,-36(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 2 112 37
	lw	a5,-36(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 2 116 22
	lw	a5,-40(s0)
	slli	a5,a5,4
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 2 117 1
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
.LFE38:
	.size	fdt_mem_rsv_, .-fdt_mem_rsv_
	.section	.text.fdt_nodename_eq_,"ax",@progbits
	.align	1
	.type	fdt_nodename_eq_, @function
fdt_nodename_eq_:
.LFB40:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_ro.c"
	.loc 3 39 1
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
	.loc 3 41 21
	addi	a5,s0,-24
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_get_name
	sw	a0,-20(s0)
	.loc 3 43 8
	lw	a5,-20(s0)
	beq	a5,zero,.L10
	.loc 3 43 20 discriminator 1
	lw	a5,-24(s0)
	.loc 3 43 12 discriminator 1
	lw	a4,-48(s0)
	ble	a4,a5,.L11
.L10:
	.loc 3 45 16
	li	a5,0
	j	.L16
.L11:
	.loc 3 47 9
	lw	a5,-48(s0)
	mv	a2,a5
	lw	a1,-44(s0)
	lw	a0,-20(s0)
	call	memcmp
	mv	a5,a0
	.loc 3 47 8 discriminator 1
	beq	a5,zero,.L13
	.loc 3 48 16
	li	a5,0
	j	.L16
.L13:
	.loc 3 50 10
	lw	a5,-48(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 3 50 8
	bne	a5,zero,.L14
	.loc 3 51 16
	li	a5,1
	j	.L16
.L14:
	.loc 3 52 15
	lw	a5,-48(s0)
	mv	a2,a5
	li	a1,64
	lw	a0,-44(s0)
	call	memchr
	mv	a5,a0
	.loc 3 52 13 discriminator 1
	bne	a5,zero,.L15
	.loc 3 52 40 discriminator 2
	lw	a5,-48(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 3 52 35 discriminator 2
	li	a5,64
	bne	a4,a5,.L15
	.loc 3 53 16
	li	a5,1
	j	.L16
.L15:
	.loc 3 55 16
	li	a5,0
.L16:
	.loc 3 56 1
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
	.size	fdt_nodename_eq_, .-fdt_nodename_eq_
	.section	.text.fdt_get_string,"ax",@progbits
	.align	1
	.globl	fdt_get_string
	.type	fdt_get_string, @function
fdt_get_string:
.LFB41:
	.loc 3 59 1
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
	.loc 3 60 40
	lw	a5,-52(s0)
	addi	a5,a5,12
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 60 36 discriminator 1
	lw	a5,-56(s0)
	.loc 3 60 14 discriminator 1
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 3 65 11
	lw	a0,-52(s0)
	call	fdt_ro_probe_
	sw	a0,-24(s0)
	.loc 3 66 8
	lw	a5,-24(s0)
	bne	a5,zero,.L32
	.loc 3 69 9
	li	a5,-4
	sw	a5,-24(s0)
	.loc 3 70 24
	lw	a5,-52(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 70 8 discriminator 1
	lw	a5,-28(s0)
	bgeu	a5,a4,.L33
	.loc 3 72 13
	lw	a5,-52(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 72 9 discriminator 1
	lw	a5,-28(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 3 74 11
	lw	a5,-52(s0)
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 74 8 discriminator 1
	li	a5,-804388864
	addi	a5,a5,-275
	bne	a4,a5,.L21
	.loc 3 75 12
	lw	a5,-56(s0)
	blt	a5,zero,.L34
	.loc 3 77 15
	lw	a5,-52(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 77 12 discriminator 1
	li	a5,16
	bleu	a4,a5,.L23
	.loc 3 78 32
	lw	a5,-52(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 78 27 discriminator 1
	lw	a5,-56(s0)
	.loc 3 78 16 discriminator 1
	bleu	a4,a5,.L35
	.loc 3 80 20
	lw	a5,-52(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 80 85 discriminator 1
	lw	a5,-56(s0)
	sub	a5,a4,a5
	.loc 3 80 16 discriminator 1
	lw	a4,-20(s0)
	bleu	a4,a5,.L23
	.loc 3 81 25
	lw	a5,-52(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 81 90 discriminator 1
	lw	a5,-56(s0)
	.loc 3 81 21 discriminator 1
	sub	a5,a4,a5
	sw	a5,-20(s0)
	j	.L23
.L21:
	.loc 3 83 18
	lw	a5,-52(s0)
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 83 15 discriminator 1
	li	a5,804388864
	addi	a5,a5,274
	bne	a4,a5,.L25
	.loc 3 84 12
	lw	a5,-56(s0)
	bge	a5,zero,.L36
	.loc 3 85 32
	lw	a5,-52(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 3 85 29 discriminator 1
	neg	a4,a5
	.loc 3 85 27 discriminator 1
	lw	a5,-56(s0)
	.loc 3 85 13 discriminator 1
	bgtu	a4,a5,.L36
	.loc 3 87 14
	lw	a5,-56(s0)
	neg	a5,a5
	mv	a4,a5
	.loc 3 87 12
	lw	a5,-20(s0)
	bleu	a5,a4,.L23
	.loc 3 88 19
	lw	a5,-56(s0)
	neg	a5,a5
	.loc 3 88 17
	sw	a5,-20(s0)
	j	.L23
.L25:
	.loc 3 90 13
	li	a5,-13
	sw	a5,-24(s0)
	.loc 3 91 9
	j	.L19
.L23:
	.loc 3 94 7
	lw	a4,-52(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 3 95 9
	lw	a2,-20(s0)
	li	a1,0
	lw	a0,-32(s0)
	call	memchr
	sw	a0,-36(s0)
	.loc 3 96 8
	lw	a5,-36(s0)
	bne	a5,zero,.L28
	.loc 3 98 13
	li	a5,-8
	sw	a5,-24(s0)
	.loc 3 99 9
	j	.L19
.L28:
	.loc 3 102 8
	lw	a5,-60(s0)
	beq	a5,zero,.L29
	.loc 3 103 19
	lw	a4,-36(s0)
	lw	a5,-32(s0)
	sub	a4,a4,a5
	.loc 3 103 15
	lw	a5,-60(s0)
	sw	a4,0(a5)
.L29:
	.loc 3 104 12
	lw	a5,-32(s0)
	j	.L30
.L32:
	.loc 3 67 9
	nop
	j	.L19
.L33:
	.loc 3 71 9
	nop
	j	.L19
.L34:
	.loc 3 76 13
	nop
	j	.L19
.L35:
	.loc 3 79 17
	nop
	j	.L19
.L36:
	.loc 3 86 13
	nop
.L19:
	.loc 3 107 8
	lw	a5,-60(s0)
	beq	a5,zero,.L31
	.loc 3 108 15
	lw	a5,-60(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
.L31:
	.loc 3 109 11
	li	a5,0
.L30:
	.loc 3 110 1
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
	.size	fdt_get_string, .-fdt_get_string
	.section	.text.fdt_string,"ax",@progbits
	.align	1
	.globl	fdt_string
	.type	fdt_string, @function
fdt_string:
.LFB42:
	.loc 3 113 1
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
	.loc 3 114 12
	li	a2,0
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	fdt_get_string
	mv	a5,a0
	.loc 3 115 1
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
.LFE42:
	.size	fdt_string, .-fdt_string
	.section	.text.fdt_string_eq_,"ax",@progbits
	.align	1
	.type	fdt_string_eq_, @function
fdt_string_eq_:
.LFB43:
	.loc 3 119 1
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
	.loc 3 121 21
	addi	a5,s0,-24
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_get_string
	sw	a0,-20(s0)
	.loc 3 123 31
	lw	a5,-20(s0)
	beq	a5,zero,.L40
	.loc 3 123 23 discriminator 1
	lw	a5,-24(s0)
	.loc 3 123 14 discriminator 1
	lw	a4,-48(s0)
	bne	a4,a5,.L40
	.loc 3 123 35 discriminator 3
	lw	a5,-48(s0)
	mv	a2,a5
	lw	a1,-44(s0)
	lw	a0,-20(s0)
	call	memcmp
	mv	a5,a0
	.loc 3 123 31 discriminator 5
	bne	a5,zero,.L40
	.loc 3 123 31 is_stmt 0 discriminator 6
	li	a5,1
	.loc 3 123 31
	j	.L42
.L40:
	.loc 3 123 31 discriminator 7
	li	a5,0
.L42:
	.loc 3 124 1 is_stmt 1
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
.LFE43:
	.size	fdt_string_eq_, .-fdt_string_eq_
	.section	.text.fdt_get_max_phandle,"ax",@progbits
	.align	1
	.globl	fdt_get_max_phandle
	.type	fdt_get_max_phandle, @function
fdt_get_max_phandle:
.LFB44:
	.loc 3 127 1
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
	.loc 3 128 14
	sw	zero,-20(s0)
	.loc 3 131 19
	li	a2,0
	li	a1,-1
	lw	a0,-36(s0)
	call	fdt_next_node
	sw	a0,-24(s0)
.L49:
.LBB2:
	.loc 3 135 12
	lw	a4,-24(s0)
	li	a5,-1
	bne	a4,a5,.L44
	.loc 3 136 20
	lw	a5,-20(s0)
	j	.L45
.L44:
	.loc 3 138 12
	lw	a5,-24(s0)
	bge	a5,zero,.L46
	.loc 3 139 20
	li	a5,-1
	j	.L45
.L46:
	.loc 3 141 19
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	fdt_get_phandle
	sw	a0,-28(s0)
	.loc 3 142 12
	lw	a4,-28(s0)
	li	a5,-1
	beq	a4,a5,.L50
	.loc 3 145 12
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	bleu	a4,a5,.L48
	.loc 3 146 25
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	j	.L48
.L50:
	.loc 3 143 13
	nop
.L48:
.LBE2:
	.loc 3 132 19
	li	a2,0
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	fdt_next_node
	sw	a0,-24(s0)
	.loc 3 132 52
	j	.L49
.L45:
	.loc 3 150 1
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
.LFE44:
	.size	fdt_get_max_phandle, .-fdt_get_max_phandle
	.section	.text.fdt_mem_rsv,"ax",@progbits
	.align	1
	.type	fdt_mem_rsv, @function
fdt_mem_rsv:
.LFB45:
	.loc 3 153 1
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
	.loc 3 154 20
	lw	a5,-40(s0)
	slli	a5,a5,4
	.loc 3 154 9
	sw	a5,-20(s0)
	.loc 3 155 23
	lw	a5,-36(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 155 87 discriminator 1
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 3 155 9 discriminator 1
	sw	a5,-24(s0)
	.loc 3 157 23
	lw	a5,-36(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 157 19 discriminator 1
	lw	a5,-24(s0)
	.loc 3 157 8 discriminator 1
	bleu	a4,a5,.L52
	.loc 3 158 15
	li	a5,0
	j	.L53
.L52:
	.loc 3 159 23
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 3 159 82 discriminator 1
	addi	a4,a5,-16
	.loc 3 159 19 discriminator 1
	lw	a5,-24(s0)
	.loc 3 159 8 discriminator 1
	bgeu	a4,a5,.L54
	.loc 3 160 15
	li	a5,0
	j	.L53
.L54:
	.loc 3 161 12
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_mem_rsv_
	mv	a5,a0
.L53:
	.loc 3 162 1
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
	.size	fdt_mem_rsv, .-fdt_mem_rsv
	.section	.text.fdt_get_mem_rsv,"ax",@progbits
	.align	1
	.globl	fdt_get_mem_rsv
	.type	fdt_get_mem_rsv, @function
fdt_get_mem_rsv:
.LFB46:
	.loc 3 165 1
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
.LBB3:
	.loc 3 168 29
	lw	a0,-36(s0)
	call	fdt_ro_probe_
	sw	a0,-20(s0)
	.loc 3 168 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L56
	.loc 3 168 62 discriminator 2
	lw	a5,-20(s0)
	.loc 3 168 62 is_stmt 0
	j	.L57
.L56:
.LBE3:
	.loc 3 169 10 is_stmt 1
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_mem_rsv
	sw	a0,-24(s0)
	.loc 3 170 8
	lw	a5,-24(s0)
	bne	a5,zero,.L58
	.loc 3 171 16
	li	a5,-4
	j	.L57
.L58:
	.loc 3 173 16
	lw	a5,-24(s0)
	mv	a0,a5
	call	fdt64_ld
	mv	a4,a0
	mv	a5,a1
	.loc 3 173 14 discriminator 1
	lw	a3,-44(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 174 13
	lw	a5,-24(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	fdt64_ld
	mv	a4,a0
	mv	a5,a1
	.loc 3 174 11 discriminator 1
	lw	a3,-48(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 3 175 12
	li	a5,0
.L57:
	.loc 3 176 1
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
.LFE46:
	.size	fdt_get_mem_rsv, .-fdt_get_mem_rsv
	.section	.text.fdt_num_mem_rsv,"ax",@progbits
	.align	1
	.globl	fdt_num_mem_rsv
	.type	fdt_num_mem_rsv, @function
fdt_num_mem_rsv:
.LFB47:
	.loc 3 179 1
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
	.loc 3 183 12
	sw	zero,-20(s0)
	.loc 3 183 5
	j	.L60
.L63:
	.loc 3 184 13
	lw	a5,-24(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	fdt64_ld
	mv	a2,a0
	mv	a3,a1
	.loc 3 184 12 discriminator 1
	mv	a5,a2
	or	a5,a5,a3
	bne	a5,zero,.L61
	.loc 3 185 20
	lw	a5,-20(s0)
	j	.L62
.L61:
	.loc 3 183 53 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L60:
	.loc 3 183 23 discriminator 1
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	fdt_mem_rsv
	sw	a0,-24(s0)
	.loc 3 183 44 discriminator 3
	lw	a5,-24(s0)
	bne	a5,zero,.L63
	.loc 3 187 12
	li	a5,-8
.L62:
	.loc 3 188 1
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
	.size	fdt_num_mem_rsv, .-fdt_num_mem_rsv
	.section	.text.nextprop_,"ax",@progbits
	.align	1
	.type	nextprop_, @function
nextprop_:
.LFB48:
	.loc 3 191 1
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
.L69:
	.loc 3 196 15
	addi	a5,s0,-24
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_next_tag
	sw	a0,-20(s0)
	.loc 3 198 9
	lw	a4,-20(s0)
	li	a5,3
	beq	a4,a5,.L65
	lw	a4,-20(s0)
	li	a5,9
	bne	a4,a5,.L66
	.loc 3 200 28
	lw	a5,-24(s0)
	.loc 3 200 16
	blt	a5,zero,.L67
	.loc 3 201 24
	li	a5,-11
	j	.L70
.L67:
	.loc 3 203 24
	lw	a5,-24(s0)
	j	.L70
.L65:
	.loc 3 206 20
	lw	a5,-40(s0)
	j	.L70
.L66:
	.loc 3 208 16
	lw	a5,-24(s0)
	sw	a5,-40(s0)
	.loc 3 209 18
	lw	a4,-20(s0)
	li	a5,4
	beq	a4,a5,.L69
	.loc 3 211 12
	li	a5,-1
.L70:
	.loc 3 212 1
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
	.size	nextprop_, .-nextprop_
	.section	.text.fdt_subnode_offset_namelen,"ax",@progbits
	.align	1
	.globl	fdt_subnode_offset_namelen
	.type	fdt_subnode_offset_namelen, @function
fdt_subnode_offset_namelen:
.LFB49:
	.loc 3 216 1
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
.LBB4:
	.loc 3 219 29
	lw	a0,-36(s0)
	call	fdt_ro_probe_
	sw	a0,-20(s0)
	.loc 3 219 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L72
	.loc 3 219 62 discriminator 2
	lw	a5,-20(s0)
	.loc 3 219 62 is_stmt 0
	j	.L79
.L72:
.LBE4:
	.loc 3 221 16 is_stmt 1
	sw	zero,-24(s0)
	.loc 3 221 5
	j	.L74
.L77:
	.loc 3 224 20
	lw	a4,-24(s0)
	.loc 3 224 12
	li	a5,1
	bne	a4,a5,.L75
	.loc 3 225 16
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_nodename_eq_
	mv	a5,a0
	.loc 3 225 13 discriminator 1
	beq	a5,zero,.L75
	.loc 3 226 20
	lw	a5,-40(s0)
	j	.L79
.L75:
	.loc 3 223 19
	addi	a5,s0,-24
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_next_node
	sw	a0,-40(s0)
.L74:
	.loc 3 222 24
	lw	a5,-40(s0)
	blt	a5,zero,.L76
	.loc 3 222 34 discriminator 1
	lw	a5,-24(s0)
	.loc 3 222 24 discriminator 1
	bge	a5,zero,.L77
.L76:
	.loc 3 228 15
	lw	a5,-24(s0)
	.loc 3 228 8
	bge	a5,zero,.L78
	.loc 3 229 16
	li	a5,-1
	j	.L79
.L78:
	.loc 3 230 12
	lw	a5,-40(s0)
.L79:
	.loc 3 231 1
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
.LFE49:
	.size	fdt_subnode_offset_namelen, .-fdt_subnode_offset_namelen
	.section	.text.fdt_subnode_offset,"ax",@progbits
	.align	1
	.globl	fdt_subnode_offset
	.type	fdt_subnode_offset, @function
fdt_subnode_offset:
.LFB50:
	.loc 3 235 1
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
	.loc 3 236 64
	lw	a0,-28(s0)
	call	strlen
	mv	a5,a0
	.loc 3 236 12 discriminator 1
	mv	a3,a5
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	fdt_subnode_offset_namelen
	mv	a5,a0
	.loc 3 237 1
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
.LFE50:
	.size	fdt_subnode_offset, .-fdt_subnode_offset
	.section	.text.fdt_path_offset_namelen,"ax",@progbits
	.align	1
	.globl	fdt_path_offset_namelen
	.type	fdt_path_offset_namelen, @function
fdt_path_offset_namelen:
.LFB51:
	.loc 3 240 1
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
	.loc 3 241 28
	lw	a5,-60(s0)
	.loc 3 241 17
	lw	a4,-56(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 3 242 17
	lw	a5,-56(s0)
	sw	a5,-20(s0)
	.loc 3 243 9
	sw	zero,-24(s0)
.LBB5:
	.loc 3 245 29
	lw	a0,-52(s0)
	call	fdt_ro_probe_
	sw	a0,-40(s0)
	.loc 3 245 20 discriminator 1
	lw	a5,-40(s0)
	beq	a5,zero,.L83
	.loc 3 245 62 discriminator 2
	lw	a5,-40(s0)
	.loc 3 245 62 is_stmt 0
	j	.L84
.L83:
.LBE5:
	.loc 3 248 9 is_stmt 1
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	.loc 3 248 8
	li	a5,47
	beq	a4,a5,.L88
.LBB6:
	.loc 3 249 47
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 3 249 25
	mv	a2,a5
	li	a1,47
	lw	a0,-56(s0)
	call	memchr
	sw	a0,-28(s0)
	.loc 3 251 12
	lw	a5,-28(s0)
	bne	a5,zero,.L86
	.loc 3 252 15
	lw	a5,-36(s0)
	sw	a5,-28(s0)
.L86:
	.loc 3 254 13
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	mv	a2,a5
	lw	a1,-20(s0)
	lw	a0,-52(s0)
	call	fdt_get_alias_namelen
	sw	a0,-20(s0)
	.loc 3 255 12
	lw	a5,-20(s0)
	bne	a5,zero,.L87
	.loc 3 256 20
	li	a5,-5
	j	.L84
.L87:
	.loc 3 257 18
	lw	a1,-20(s0)
	lw	a0,-52(s0)
	call	fdt_path_offset
	sw	a0,-24(s0)
	.loc 3 259 11
	lw	a5,-28(s0)
	sw	a5,-20(s0)
.LBE6:
	.loc 3 262 11
	j	.L88
.L90:
.LBB7:
	.loc 3 266 14
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 3 267 16
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	bne	a4,a5,.L89
	.loc 3 268 24
	lw	a5,-24(s0)
	j	.L84
.L89:
	.loc 3 265 16
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 3 265 19
	li	a5,47
	beq	a4,a5,.L90
	.loc 3 270 32
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 3 270 13
	mv	a2,a5
	li	a1,47
	lw	a0,-20(s0)
	call	memchr
	sw	a0,-32(s0)
	.loc 3 271 12
	lw	a5,-32(s0)
	bne	a5,zero,.L91
	.loc 3 272 15
	lw	a5,-36(s0)
	sw	a5,-32(s0)
.L91:
	.loc 3 274 18
	lw	a4,-32(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	mv	a3,a5
	lw	a2,-20(s0)
	lw	a1,-24(s0)
	lw	a0,-52(s0)
	call	fdt_subnode_offset_namelen
	sw	a0,-24(s0)
	.loc 3 275 12
	lw	a5,-24(s0)
	bge	a5,zero,.L92
	.loc 3 276 20
	lw	a5,-24(s0)
	j	.L84
.L92:
	.loc 3 278 11
	lw	a5,-32(s0)
	sw	a5,-20(s0)
.L88:
.LBE7:
	.loc 3 262 14
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	bltu	a4,a5,.L89
	.loc 3 281 12
	lw	a5,-24(s0)
.L84:
	.loc 3 282 1
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
	.size	fdt_path_offset_namelen, .-fdt_path_offset_namelen
	.section	.text.fdt_path_offset,"ax",@progbits
	.align	1
	.globl	fdt_path_offset
	.type	fdt_path_offset, @function
fdt_path_offset:
.LFB52:
	.loc 3 285 1
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
	.loc 3 286 47
	lw	a0,-24(s0)
	call	strlen
	mv	a5,a0
	.loc 3 286 12 discriminator 1
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	fdt_path_offset_namelen
	mv	a5,a0
	.loc 3 287 1
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
.LFE52:
	.size	fdt_path_offset, .-fdt_path_offset
	.section	.text.fdt_get_name,"ax",@progbits
	.align	1
	.globl	fdt_get_name
	.type	fdt_get_name, @function
fdt_get_name:
.LFB53:
	.loc 3 290 1
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
	.loc 3 291 40
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_offset_ptr_
	sw	a0,-28(s0)
	.loc 3 295 17
	lw	a0,-36(s0)
	call	fdt_ro_probe_
	sw	a0,-24(s0)
	.loc 3 295 8 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L105
	.loc 3 296 20
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_check_node_offset_
	sw	a0,-24(s0)
	.loc 3 296 9 discriminator 1
	lw	a5,-24(s0)
	blt	a5,zero,.L105
	.loc 3 299 13
	lw	a5,-28(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 3 301 11
	lw	a5,-36(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 301 8 discriminator 1
	li	a5,15
	bgtu	a4,a5,.L100
.LBB8:
	.loc 3 308 16
	li	a1,47
	lw	a0,-20(s0)
	call	strrchr
	sw	a0,-32(s0)
	.loc 3 309 12
	lw	a5,-32(s0)
	bne	a5,zero,.L101
	.loc 3 310 17
	li	a5,-11
	sw	a5,-24(s0)
	.loc 3 311 13
	j	.L99
.L101:
	.loc 3 313 17
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L100:
.LBE8:
	.loc 3 316 8
	lw	a5,-44(s0)
	beq	a5,zero,.L102
	.loc 3 317 16
	lw	a0,-20(s0)
	call	strlen
	mv	a5,a0
	.loc 3 317 16 is_stmt 0 discriminator 1
	mv	a4,a5
	.loc 3 317 14 is_stmt 1 discriminator 1
	lw	a5,-44(s0)
	sw	a4,0(a5)
.L102:
	.loc 3 319 12
	lw	a5,-20(s0)
	j	.L103
.L105:
	.loc 3 297 13
	nop
.L99:
	.loc 3 322 8
	lw	a5,-44(s0)
	beq	a5,zero,.L104
	.loc 3 323 14
	lw	a5,-44(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
.L104:
	.loc 3 324 11
	li	a5,0
.L103:
	.loc 3 325 1
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
	.size	fdt_get_name, .-fdt_get_name
	.section	.text.fdt_first_property_offset,"ax",@progbits
	.align	1
	.globl	fdt_first_property_offset
	.type	fdt_first_property_offset, @function
fdt_first_property_offset:
.LFB54:
	.loc 3 328 1
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
	.loc 3 331 19
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_check_node_offset_
	sw	a0,-20(s0)
	.loc 3 331 8 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L107
	.loc 3 332 16
	lw	a5,-20(s0)
	j	.L108
.L107:
	.loc 3 334 12
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	nextprop_
	mv	a5,a0
.L108:
	.loc 3 335 1
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
	.size	fdt_first_property_offset, .-fdt_first_property_offset
	.section	.text.fdt_next_property_offset,"ax",@progbits
	.align	1
	.globl	fdt_next_property_offset
	.type	fdt_next_property_offset, @function
fdt_next_property_offset:
.LFB55:
	.loc 3 338 1
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
	.loc 3 339 19
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	fdt_check_prop_offset_
	sw	a0,-24(s0)
	.loc 3 339 8 discriminator 1
	lw	a5,-24(s0)
	bge	a5,zero,.L110
	.loc 3 340 16
	lw	a5,-24(s0)
	j	.L111
.L110:
	.loc 3 342 12
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	nextprop_
	mv	a5,a0
.L111:
	.loc 3 343 1
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
.LFE55:
	.size	fdt_next_property_offset, .-fdt_next_property_offset
	.section	.text.fdt_get_property_by_offset_,"ax",@progbits
	.align	1
	.type	fdt_get_property_by_offset_, @function
fdt_get_property_by_offset_:
.LFB56:
	.loc 3 348 1
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
	.loc 3 352 16
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_check_prop_offset_
	sw	a0,-20(s0)
	.loc 3 352 8 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L113
	.loc 3 353 12
	lw	a5,-44(s0)
	beq	a5,zero,.L114
	.loc 3 354 19
	lw	a5,-44(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L114:
	.loc 3 355 15
	li	a5,0
	j	.L115
.L113:
	.loc 3 358 12
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_offset_ptr_
	sw	a0,-24(s0)
	.loc 3 360 8
	lw	a5,-44(s0)
	beq	a5,zero,.L116
	.loc 3 361 17
	lw	a5,-24(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 3 361 17 is_stmt 0 discriminator 1
	mv	a4,a5
	.loc 3 361 15 is_stmt 1 discriminator 1
	lw	a5,-44(s0)
	sw	a4,0(a5)
.L116:
	.loc 3 363 12
	lw	a5,-24(s0)
.L115:
	.loc 3 364 1
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
	.size	fdt_get_property_by_offset_, .-fdt_get_property_by_offset_
	.section	.text.fdt_get_property_by_offset,"ax",@progbits
	.align	1
	.globl	fdt_get_property_by_offset
	.type	fdt_get_property_by_offset, @function
fdt_get_property_by_offset:
.LFB57:
	.loc 3 369 1
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
	.loc 3 373 11
	lw	a5,-20(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 373 8 discriminator 1
	li	a5,15
	bgtu	a4,a5,.L118
	.loc 3 374 12
	lw	a5,-28(s0)
	beq	a5,zero,.L119
	.loc 3 375 19
	lw	a5,-28(s0)
	li	a4,-10
	sw	a4,0(a5)
.L119:
	.loc 3 376 15
	li	a5,0
	j	.L120
.L118:
	.loc 3 379 12
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	fdt_get_property_by_offset_
	mv	a5,a0
.L120:
	.loc 3 380 1
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
.LFE57:
	.size	fdt_get_property_by_offset, .-fdt_get_property_by_offset
	.section	.text.fdt_get_property_namelen_,"ax",@progbits
	.align	1
	.type	fdt_get_property_namelen_, @function
fdt_get_property_namelen_:
.LFB58:
	.loc 3 388 1
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
	.loc 3 389 19
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_first_property_offset
	sw	a0,-40(s0)
	.loc 3 389 5
	j	.L122
.L128:
.LBB9:
	.loc 3 394 22
	lw	a2,-52(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_get_property_by_offset_
	sw	a0,-20(s0)
	.loc 3 394 12 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L123
	.loc 3 395 20
	li	a5,-13
	sw	a5,-40(s0)
	.loc 3 396 13
	j	.L124
.L123:
	.loc 3 398 33
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 3 398 13 discriminator 1
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	fdt_string_eq_
	mv	a5,a0
	.loc 3 398 12 discriminator 2
	beq	a5,zero,.L125
	.loc 3 400 16
	lw	a5,-56(s0)
	beq	a5,zero,.L126
	.loc 3 401 26
	lw	a5,-56(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
.L126:
	.loc 3 402 20
	lw	a5,-20(s0)
	j	.L127
.L125:
.LBE9:
	.loc 3 391 20
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_next_property_offset
	sw	a0,-40(s0)
.L122:
	.loc 3 390 18
	lw	a5,-40(s0)
	bge	a5,zero,.L128
.L124:
	.loc 3 406 8
	lw	a5,-52(s0)
	beq	a5,zero,.L129
	.loc 3 407 15
	lw	a5,-52(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
.L129:
	.loc 3 408 11
	li	a5,0
.L127:
	.loc 3 409 1
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
.LFE58:
	.size	fdt_get_property_namelen_, .-fdt_get_property_namelen_
	.section	.text.fdt_get_property_namelen,"ax",@progbits
	.align	1
	.globl	fdt_get_property_namelen
	.type	fdt_get_property_namelen, @function
fdt_get_property_namelen:
.LFB59:
	.loc 3 416 1
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
	.loc 3 419 11
	lw	a5,-20(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 419 8 discriminator 1
	li	a5,15
	bgtu	a4,a5,.L131
	.loc 3 420 12
	lw	a5,-36(s0)
	beq	a5,zero,.L132
	.loc 3 421 19
	lw	a5,-36(s0)
	li	a4,-10
	sw	a4,0(a5)
.L132:
	.loc 3 422 15
	li	a5,0
	j	.L133
.L131:
	.loc 3 425 12
	li	a5,0
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	fdt_get_property_namelen_
	mv	a5,a0
.L133:
	.loc 3 427 1
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
	.size	fdt_get_property_namelen, .-fdt_get_property_namelen
	.section	.text.fdt_get_property,"ax",@progbits
	.align	1
	.globl	fdt_get_property
	.type	fdt_get_property, @function
fdt_get_property:
.LFB60:
	.loc 3 433 1
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
	.loc 3 435 21
	lw	a0,-28(s0)
	call	strlen
	mv	a5,a0
	.loc 3 434 12
	lw	a4,-32(s0)
	mv	a3,a5
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	fdt_get_property_namelen
	mv	a5,a0
	.loc 3 436 1
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
.LFE60:
	.size	fdt_get_property, .-fdt_get_property
	.section	.text.fdt_getprop_namelen,"ax",@progbits
	.align	1
	.globl	fdt_getprop_namelen
	.type	fdt_getprop_namelen, @function
fdt_getprop_namelen:
.LFB61:
	.loc 3 440 1
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
	.loc 3 444 12
	addi	a5,s0,-24
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_get_property_namelen_
	sw	a0,-20(s0)
	.loc 3 446 8
	lw	a5,-20(s0)
	bne	a5,zero,.L137
	.loc 3 447 15
	li	a5,0
	j	.L140
.L137:
	.loc 3 450 11
	lw	a5,-36(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 450 8 discriminator 1
	li	a5,15
	bgtu	a4,a5,.L139
	.loc 3 450 87 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,12
	.loc 3 450 104 discriminator 2
	andi	a5,a5,7
	.loc 3 450 75 discriminator 2
	beq	a5,zero,.L139
	.loc 3 451 9
	lw	a5,-20(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 450 108 discriminator 3
	li	a5,7
	bleu	a4,a5,.L139
	.loc 3 452 16
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 3 452 27
	addi	a5,a5,4
	j	.L140
.L139:
	.loc 3 453 12
	lw	a5,-20(s0)
	addi	a5,a5,12
.L140:
	.loc 3 454 1
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
.LFE61:
	.size	fdt_getprop_namelen, .-fdt_getprop_namelen
	.section	.text.fdt_getprop_by_offset,"ax",@progbits
	.align	1
	.globl	fdt_getprop_by_offset
	.type	fdt_getprop_by_offset, @function
fdt_getprop_by_offset:
.LFB62:
	.loc 3 458 1
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
	.loc 3 461 12
	lw	a2,-48(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_get_property_by_offset_
	sw	a0,-20(s0)
	.loc 3 462 8
	lw	a5,-20(s0)
	bne	a5,zero,.L142
	.loc 3 463 15
	li	a5,0
	j	.L143
.L142:
	.loc 3 464 8
	lw	a5,-44(s0)
	beq	a5,zero,.L144
.LBB10:
	.loc 3 467 36
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 3 467 16 discriminator 1
	mv	a4,a5
	addi	a5,s0,-28
	mv	a2,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	fdt_get_string
	sw	a0,-24(s0)
	.loc 3 469 12
	lw	a5,-24(s0)
	bne	a5,zero,.L145
	.loc 3 470 16
	lw	a5,-48(s0)
	beq	a5,zero,.L146
	.loc 3 471 23
	lw	a4,-28(s0)
	lw	a5,-48(s0)
	sw	a4,0(a5)
.L146:
	.loc 3 472 19
	li	a5,0
	j	.L143
.L145:
	.loc 3 474 16
	lw	a5,-44(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
.L144:
.LBE10:
	.loc 3 478 11
	lw	a5,-36(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 478 8 discriminator 1
	li	a5,15
	bgtu	a4,a5,.L147
	.loc 3 478 86 discriminator 2
	lw	a5,-40(s0)
	addi	a5,a5,12
	.loc 3 478 103 discriminator 2
	andi	a5,a5,7
	.loc 3 478 75 discriminator 2
	beq	a5,zero,.L147
	.loc 3 479 9
	lw	a5,-20(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 478 107 discriminator 3
	li	a5,7
	bleu	a4,a5,.L147
	.loc 3 480 16
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 3 480 27
	addi	a5,a5,4
	j	.L143
.L147:
	.loc 3 481 12
	lw	a5,-20(s0)
	addi	a5,a5,12
.L143:
	.loc 3 482 1
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
	.size	fdt_getprop_by_offset, .-fdt_getprop_by_offset
	.section	.text.fdt_getprop,"ax",@progbits
	.align	1
	.globl	fdt_getprop
	.type	fdt_getprop, @function
fdt_getprop:
.LFB63:
	.loc 3 486 1
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
	.loc 3 487 55
	lw	a0,-28(s0)
	call	strlen
	mv	a5,a0
	.loc 3 487 12 discriminator 1
	lw	a4,-32(s0)
	mv	a3,a5
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	fdt_getprop_namelen
	mv	a5,a0
	.loc 3 488 1
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
.LFE63:
	.size	fdt_getprop, .-fdt_getprop
	.section	.rodata
	.align	2
.LC0:
	.string	"phandle"
	.align	2
.LC1:
	.string	"linux,phandle"
	.section	.text.fdt_get_phandle,"ax",@progbits
	.align	1
	.globl	fdt_get_phandle
	.type	fdt_get_phandle, @function
fdt_get_phandle:
.LFB64:
	.loc 3 491 1
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
	.loc 3 497 11
	addi	a5,s0,-24
	mv	a3,a5
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_getprop
	sw	a0,-20(s0)
	.loc 3 498 8
	lw	a5,-20(s0)
	beq	a5,zero,.L151
	.loc 3 498 22 discriminator 1
	lw	a4,-24(s0)
	.loc 3 498 14 discriminator 1
	li	a5,4
	beq	a4,a5,.L152
.L151:
	.loc 3 499 15
	addi	a5,s0,-24
	mv	a3,a5
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_getprop
	sw	a0,-20(s0)
	.loc 3 500 12
	lw	a5,-20(s0)
	beq	a5,zero,.L153
	.loc 3 500 26 discriminator 1
	lw	a4,-24(s0)
	.loc 3 500 18 discriminator 1
	li	a5,4
	beq	a4,a5,.L152
.L153:
	.loc 3 501 20
	li	a5,0
	j	.L155
.L152:
	.loc 3 504 12
	lw	a0,-20(s0)
	call	fdt32_ld
	mv	a5,a0
.L155:
	.loc 3 505 1
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
	.size	fdt_get_phandle, .-fdt_get_phandle
	.section	.rodata
	.align	2
.LC2:
	.string	"/aliases"
	.section	.text.fdt_get_alias_namelen,"ax",@progbits
	.align	1
	.globl	fdt_get_alias_namelen
	.type	fdt_get_alias_namelen, @function
fdt_get_alias_namelen:
.LFB65:
	.loc 3 509 1
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
	.loc 3 512 19
	lui	a5,%hi(.LC2)
	addi	a1,a5,%lo(.LC2)
	lw	a0,-36(s0)
	call	fdt_path_offset
	sw	a0,-20(s0)
	.loc 3 513 8
	lw	a5,-20(s0)
	bge	a5,zero,.L157
	.loc 3 514 15
	li	a5,0
	j	.L158
.L157:
	.loc 3 516 12
	li	a4,0
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	fdt_getprop_namelen
	mv	a5,a0
.L158:
	.loc 3 517 1
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
	.size	fdt_get_alias_namelen, .-fdt_get_alias_namelen
	.section	.text.fdt_get_alias,"ax",@progbits
	.align	1
	.globl	fdt_get_alias
	.type	fdt_get_alias, @function
fdt_get_alias:
.LFB66:
	.loc 3 520 1
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
	.loc 3 521 45
	lw	a0,-24(s0)
	call	strlen
	mv	a5,a0
	.loc 3 521 12 discriminator 1
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	fdt_get_alias_namelen
	mv	a5,a0
	.loc 3 522 1
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
.LFE66:
	.size	fdt_get_alias, .-fdt_get_alias
	.section	.text.fdt_get_path,"ax",@progbits
	.align	1
	.globl	fdt_get_path
	.type	fdt_get_path, @function
fdt_get_path:
.LFB67:
	.loc 3 525 1
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
	.loc 3 526 9
	sw	zero,-20(s0)
	.loc 3 526 21
	sw	zero,-24(s0)
.LBB11:
	.loc 3 530 29
	lw	a0,-52(s0)
	call	fdt_ro_probe_
	sw	a0,-32(s0)
	.loc 3 530 20 discriminator 1
	lw	a5,-32(s0)
	beq	a5,zero,.L162
	.loc 3 530 62 discriminator 2
	lw	a5,-32(s0)
	.loc 3 530 62 is_stmt 0
	j	.L178
.L162:
.LBE11:
	.loc 3 532 8 is_stmt 1
	lw	a4,-64(s0)
	li	a5,1
	bgt	a4,a5,.L164
	.loc 3 533 16
	li	a5,-3
	j	.L178
.L164:
	.loc 3 535 17
	sw	zero,-28(s0)
	.loc 3 535 28
	sw	zero,-40(s0)
	.loc 3 535 5
	j	.L165
.L167:
	.loc 3 540 18
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 3 541 25 discriminator 1
	lw	a5,-24(s0)
	addi	a5,a5,-1
	lw	a4,-60(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 3 541 31 discriminator 1
	li	a5,47
	bne	a4,a5,.L167
	.loc 3 542 19
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L166:
	.loc 3 538 23
	lw	a5,-40(s0)
	lw	a4,-20(s0)
	bgt	a4,a5,.L167
	.loc 3 545 20
	lw	a5,-40(s0)
	.loc 3 545 12
	lw	a4,-20(s0)
	blt	a4,a5,.L168
	.loc 3 546 20
	addi	a5,s0,-44
	mv	a2,a5
	lw	a1,-28(s0)
	lw	a0,-52(s0)
	call	fdt_get_name
	sw	a0,-36(s0)
	.loc 3 547 16
	lw	a5,-36(s0)
	bne	a5,zero,.L169
	.loc 3 548 24
	lw	a5,-44(s0)
	j	.L178
.L169:
	.loc 3 549 20
	lw	a4,-44(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 3 549 16
	lw	a4,-64(s0)
	ble	a4,a5,.L168
	.loc 3 550 17
	lw	a5,-24(s0)
	.loc 3 550 28
	lw	a4,-60(s0)
	add	a5,a4,a5
	.loc 3 550 17
	lw	a4,-44(s0)
	mv	a2,a4
	lw	a1,-36(s0)
	mv	a0,a5
	call	memcpy
	.loc 3 551 19
	lw	a5,-44(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 552 22
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	mv	a4,a5
	.loc 3 552 20
	lw	a5,-60(s0)
	add	a5,a5,a4
	.loc 3 552 26
	li	a4,47
	sb	a4,0(a5)
	.loc 3 553 23
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L168:
	.loc 3 557 12
	lw	a4,-28(s0)
	lw	a5,-56(s0)
	bne	a4,a5,.L170
	.loc 3 558 24
	lw	a5,-40(s0)
	.loc 3 558 16
	lw	a4,-20(s0)
	bgt	a4,a5,.L171
	.loc 3 559 24
	li	a5,-3
	j	.L178
.L171:
	.loc 3 561 16
	lw	a4,-24(s0)
	li	a5,1
	ble	a4,a5,.L172
	.loc 3 562 18
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L172:
	.loc 3 563 16
	lw	a5,-24(s0)
	lw	a4,-60(s0)
	add	a5,a4,a5
	.loc 3 563 20
	sb	zero,0(a5)
	.loc 3 564 20
	li	a5,0
	j	.L178
.L170:
	.loc 3 537 19
	addi	a5,s0,-40
	mv	a2,a5
	lw	a1,-28(s0)
	lw	a0,-52(s0)
	call	fdt_next_node
	sw	a0,-28(s0)
.L165:
	.loc 3 536 24
	lw	a5,-28(s0)
	blt	a5,zero,.L173
	.loc 3 536 24 is_stmt 0 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-56(s0)
	ble	a4,a5,.L166
.L173:
	.loc 3 568 8 is_stmt 1
	lw	a4,-28(s0)
	li	a5,-1
	beq	a4,a5,.L175
	.loc 3 568 24 discriminator 1
	lw	a5,-28(s0)
	blt	a5,zero,.L176
.L175:
	.loc 3 569 16
	li	a5,-4
	j	.L178
.L176:
	.loc 3 570 13
	lw	a4,-28(s0)
	li	a5,-4
	bne	a4,a5,.L177
	.loc 3 571 16
	li	a5,-11
	j	.L178
.L177:
	.loc 3 573 12
	lw	a5,-28(s0)
.L178:
	.loc 3 574 1
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
.LFE67:
	.size	fdt_get_path, .-fdt_get_path
	.section	.text.fdt_supernode_atdepth_offset,"ax",@progbits
	.align	1
	.globl	fdt_supernode_atdepth_offset
	.type	fdt_supernode_atdepth_offset, @function
fdt_supernode_atdepth_offset:
.LFB68:
	.loc 3 578 1
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
	.loc 3 580 9
	li	a5,-13
	sw	a5,-24(s0)
.LBB12:
	.loc 3 582 29
	lw	a0,-36(s0)
	call	fdt_ro_probe_
	sw	a0,-28(s0)
	.loc 3 582 20 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L180
	.loc 3 582 62 discriminator 2
	lw	a5,-28(s0)
	.loc 3 582 62 is_stmt 0
	j	.L193
.L180:
.LBE12:
	.loc 3 584 8 is_stmt 1
	lw	a5,-44(s0)
	bge	a5,zero,.L182
	.loc 3 585 16
	li	a5,-1
	j	.L193
.L182:
	.loc 3 587 17
	sw	zero,-20(s0)
	.loc 3 587 28
	sw	zero,-32(s0)
	.loc 3 587 5
	j	.L183
.L189:
	.loc 3 590 19
	lw	a5,-32(s0)
	.loc 3 590 12
	lw	a4,-44(s0)
	bne	a4,a5,.L184
	.loc 3 591 29
	lw	a5,-20(s0)
	sw	a5,-24(s0)
.L184:
	.loc 3 593 12
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bne	a4,a5,.L185
	.loc 3 594 16
	lw	a5,-48(s0)
	beq	a5,zero,.L186
	.loc 3 595 28
	lw	a4,-32(s0)
	lw	a5,-48(s0)
	sw	a4,0(a5)
.L186:
	.loc 3 597 32
	lw	a5,-32(s0)
	.loc 3 597 16
	lw	a4,-44(s0)
	ble	a4,a5,.L187
	.loc 3 598 24
	li	a5,-1
	j	.L193
.L187:
	.loc 3 600 24
	lw	a5,-24(s0)
	j	.L193
.L185:
	.loc 3 589 19
	addi	a5,s0,-32
	mv	a2,a5
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	fdt_next_node
	sw	a0,-20(s0)
.L183:
	.loc 3 588 24
	lw	a5,-20(s0)
	blt	a5,zero,.L188
	.loc 3 588 24 is_stmt 0 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	ble	a4,a5,.L189
.L188:
	.loc 3 604 8 is_stmt 1
	lw	a4,-20(s0)
	li	a5,-1
	beq	a4,a5,.L190
	.loc 3 604 24 discriminator 1
	lw	a5,-20(s0)
	blt	a5,zero,.L191
.L190:
	.loc 3 605 16
	li	a5,-4
	j	.L193
.L191:
	.loc 3 606 13
	lw	a4,-20(s0)
	li	a5,-4
	bne	a4,a5,.L192
	.loc 3 607 16
	li	a5,-11
	j	.L193
.L192:
	.loc 3 609 12
	lw	a5,-20(s0)
.L193:
	.loc 3 610 1
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
.LFE68:
	.size	fdt_supernode_atdepth_offset, .-fdt_supernode_atdepth_offset
	.section	.text.fdt_node_depth,"ax",@progbits
	.align	1
	.globl	fdt_node_depth
	.type	fdt_node_depth, @function
fdt_node_depth:
.LFB69:
	.loc 3 613 1
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
	.loc 3 617 11
	addi	a5,s0,-24
	mv	a3,a5
	li	a2,0
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_supernode_atdepth_offset
	sw	a0,-20(s0)
	.loc 3 618 8
	lw	a5,-20(s0)
	beq	a5,zero,.L195
	.loc 3 619 32
	lw	a5,-20(s0)
	bge	a5,zero,.L196
	.loc 3 619 32 is_stmt 0 discriminator 1
	lw	a5,-20(s0)
	.loc 3 619 32
	j	.L199
.L196:
	.loc 3 619 32 discriminator 2
	li	a5,-13
	.loc 3 619 32
	j	.L199
.L195:
	.loc 3 620 12 is_stmt 1
	lw	a5,-24(s0)
.L199:
	.loc 3 621 1
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
.LFE69:
	.size	fdt_node_depth, .-fdt_node_depth
	.section	.text.fdt_parent_offset,"ax",@progbits
	.align	1
	.globl	fdt_parent_offset
	.type	fdt_parent_offset, @function
fdt_parent_offset:
.LFB70:
	.loc 3 624 1
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
	.loc 3 625 21
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_node_depth
	sw	a0,-20(s0)
	.loc 3 627 8
	lw	a5,-20(s0)
	bge	a5,zero,.L201
	.loc 3 628 16
	lw	a5,-20(s0)
	j	.L202
.L201:
	.loc 3 629 12
	lw	a5,-20(s0)
	addi	a5,a5,-1
	li	a3,0
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_supernode_atdepth_offset
	mv	a5,a0
.L202:
	.loc 3 631 1
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
	.size	fdt_parent_offset, .-fdt_parent_offset
	.section	.text.fdt_node_offset_by_prop_value,"ax",@progbits
	.align	1
	.globl	fdt_node_offset_by_prop_value
	.type	fdt_node_offset_by_prop_value, @function
fdt_node_offset_by_prop_value:
.LFB71:
	.loc 3 636 1
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
.LBB13:
	.loc 3 641 29
	lw	a0,-36(s0)
	call	fdt_ro_probe_
	sw	a0,-24(s0)
	.loc 3 641 20 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L204
	.loc 3 641 62 discriminator 2
	lw	a5,-24(s0)
	.loc 3 641 62 is_stmt 0
	j	.L209
.L204:
.LBE13:
	.loc 3 648 19 is_stmt 1
	li	a2,0
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_next_node
	sw	a0,-20(s0)
	.loc 3 648 5
	j	.L206
.L208:
	.loc 3 651 15
	addi	a5,s0,-32
	mv	a3,a5
	lw	a2,-44(s0)
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	fdt_getprop
	sw	a0,-28(s0)
	.loc 3 652 12
	lw	a5,-28(s0)
	beq	a5,zero,.L207
	.loc 3 652 25 discriminator 1
	lw	a5,-32(s0)
	.loc 3 652 17 discriminator 1
	lw	a4,-52(s0)
	bne	a4,a5,.L207
	.loc 3 653 17
	lw	a5,-32(s0)
	mv	a2,a5
	lw	a1,-48(s0)
	lw	a0,-28(s0)
	call	memcmp
	mv	a5,a0
	.loc 3 653 13 discriminator 1
	bne	a5,zero,.L207
	.loc 3 654 20
	lw	a5,-20(s0)
	j	.L209
.L207:
	.loc 3 650 19
	li	a2,0
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	fdt_next_node
	sw	a0,-20(s0)
.L206:
	.loc 3 649 17
	lw	a5,-20(s0)
	bge	a5,zero,.L208
	.loc 3 657 12
	lw	a5,-20(s0)
.L209:
	.loc 3 658 1
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
.LFE71:
	.size	fdt_node_offset_by_prop_value, .-fdt_node_offset_by_prop_value
	.section	.text.fdt_node_offset_by_phandle,"ax",@progbits
	.align	1
	.globl	fdt_node_offset_by_phandle
	.type	fdt_node_offset_by_phandle, @function
fdt_node_offset_by_phandle:
.LFB72:
	.loc 3 661 1
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
	.loc 3 664 8
	lw	a5,-40(s0)
	beq	a5,zero,.L211
	.loc 3 664 24 discriminator 1
	lw	a4,-40(s0)
	li	a5,-1
	bne	a4,a5,.L212
.L211:
	.loc 3 665 16
	li	a5,-6
	j	.L213
.L212:
.LBB14:
	.loc 3 667 29
	lw	a0,-36(s0)
	call	fdt_ro_probe_
	sw	a0,-24(s0)
	.loc 3 667 20 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L214
	.loc 3 667 62 discriminator 2
	lw	a5,-24(s0)
	.loc 3 667 62 is_stmt 0
	j	.L213
.L214:
.LBE14:
	.loc 3 675 19 is_stmt 1
	li	a2,0
	li	a1,-1
	lw	a0,-36(s0)
	call	fdt_next_node
	sw	a0,-20(s0)
	.loc 3 675 5
	j	.L215
.L217:
	.loc 3 678 13
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	fdt_get_phandle
	mv	a4,a0
	.loc 3 678 12 discriminator 1
	lw	a5,-40(s0)
	bne	a5,a4,.L216
	.loc 3 679 20
	lw	a5,-20(s0)
	j	.L213
.L216:
	.loc 3 677 19
	li	a2,0
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	fdt_next_node
	sw	a0,-20(s0)
.L215:
	.loc 3 676 17
	lw	a5,-20(s0)
	bge	a5,zero,.L217
	.loc 3 682 12
	lw	a5,-20(s0)
.L213:
	.loc 3 683 1
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
.LFE72:
	.size	fdt_node_offset_by_phandle, .-fdt_node_offset_by_phandle
	.section	.text.fdt_stringlist_contains,"ax",@progbits
	.align	1
	.globl	fdt_stringlist_contains
	.type	fdt_stringlist_contains, @function
fdt_stringlist_contains:
.LFB73:
	.loc 3 686 1
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
	.loc 3 687 15
	lw	a0,-44(s0)
	call	strlen
	mv	a5,a0
	.loc 3 687 9 discriminator 1
	sw	a5,-20(s0)
	.loc 3 690 11
	j	.L219
.L223:
	.loc 3 691 37
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 3 691 13
	mv	a2,a5
	lw	a1,-36(s0)
	lw	a0,-44(s0)
	call	memcmp
	mv	a5,a0
	.loc 3 691 12 discriminator 1
	bne	a5,zero,.L220
	.loc 3 692 20
	li	a5,1
	j	.L221
.L220:
	.loc 3 693 13
	lw	a5,-40(s0)
	mv	a2,a5
	li	a1,0
	lw	a0,-36(s0)
	call	memchr
	sw	a0,-24(s0)
	.loc 3 694 12
	lw	a5,-24(s0)
	bne	a5,zero,.L222
	.loc 3 695 20
	li	a5,0
	j	.L221
.L222:
	.loc 3 696 22
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	.loc 3 696 32
	addi	a5,a5,1
	.loc 3 696 17
	lw	a4,-40(s0)
	sub	a5,a4,a5
	sw	a5,-40(s0)
	.loc 3 697 17
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L219:
	.loc 3 690 20
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	bge	a4,a5,.L223
	.loc 3 699 12
	li	a5,0
.L221:
	.loc 3 700 1
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
.LFE73:
	.size	fdt_stringlist_contains, .-fdt_stringlist_contains
	.section	.text.fdt_stringlist_count,"ax",@progbits
	.align	1
	.globl	fdt_stringlist_count
	.type	fdt_stringlist_count, @function
fdt_stringlist_count:
.LFB74:
	.loc 3 703 1
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
	.loc 3 705 17
	sw	zero,-24(s0)
	.loc 3 707 12
	addi	a5,s0,-32
	mv	a3,a5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_getprop
	sw	a0,-20(s0)
	.loc 3 708 8
	lw	a5,-20(s0)
	bne	a5,zero,.L225
	.loc 3 709 16
	lw	a5,-32(s0)
	j	.L230
.L225:
	.loc 3 711 16
	lw	a5,-32(s0)
	mv	a4,a5
	.loc 3 711 9
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-28(s0)
	.loc 3 713 11
	j	.L227
.L229:
	.loc 3 714 36
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 3 714 18
	mv	a1,a5
	lw	a0,-20(s0)
	call	strnlen
	mv	a5,a0
	.loc 3 714 44 discriminator 1
	addi	a5,a5,1
	.loc 3 714 16 discriminator 1
	sw	a5,-32(s0)
	.loc 3 717 18
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	add	a5,a5,a4
	.loc 3 717 12
	lw	a4,-28(s0)
	bgeu	a4,a5,.L228
	.loc 3 718 20
	li	a5,-15
	j	.L230
.L228:
	.loc 3 720 14
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 3 721 14
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L227:
	.loc 3 713 17
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	bltu	a4,a5,.L229
	.loc 3 724 12
	lw	a5,-24(s0)
.L230:
	.loc 3 725 1
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
	.size	fdt_stringlist_count, .-fdt_stringlist_count
	.section	.text.fdt_stringlist_search,"ax",@progbits
	.align	1
	.globl	fdt_stringlist_search
	.type	fdt_stringlist_search, @function
fdt_stringlist_search:
.LFB75:
	.loc 3 729 1
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
	.loc 3 730 22
	sw	zero,-20(s0)
	.loc 3 733 12
	addi	a5,s0,-36
	mv	a3,a5
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	fdt_getprop
	sw	a0,-24(s0)
	.loc 3 734 8
	lw	a5,-24(s0)
	bne	a5,zero,.L232
	.loc 3 735 16
	lw	a5,-36(s0)
	j	.L238
.L232:
	.loc 3 737 11
	lw	a0,-64(s0)
	call	strlen
	mv	a5,a0
	.loc 3 737 26 discriminator 1
	addi	a5,a5,1
	.loc 3 737 9 discriminator 1
	sw	a5,-28(s0)
	.loc 3 738 16
	lw	a5,-36(s0)
	mv	a4,a5
	.loc 3 738 9
	lw	a5,-24(s0)
	add	a5,a5,a4
	sw	a5,-32(s0)
	.loc 3 740 11
	j	.L234
.L237:
	.loc 3 741 36
	lw	a4,-32(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 3 741 18
	mv	a1,a5
	lw	a0,-24(s0)
	call	strnlen
	mv	a5,a0
	.loc 3 741 44 discriminator 1
	addi	a5,a5,1
	.loc 3 741 16 discriminator 1
	sw	a5,-36(s0)
	.loc 3 744 18
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	add	a5,a5,a4
	.loc 3 744 12
	lw	a4,-32(s0)
	bgeu	a4,a5,.L235
	.loc 3 745 20
	li	a5,-15
	j	.L238
.L235:
	.loc 3 747 20
	lw	a5,-36(s0)
	.loc 3 747 12
	lw	a4,-28(s0)
	bne	a4,a5,.L236
	.loc 3 747 30 discriminator 1
	lw	a5,-36(s0)
	mv	a2,a5
	lw	a1,-64(s0)
	lw	a0,-24(s0)
	call	memcmp
	mv	a5,a0
	.loc 3 747 27 discriminator 2
	bne	a5,zero,.L236
	.loc 3 748 20
	lw	a5,-20(s0)
	j	.L238
.L236:
	.loc 3 750 14
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 3 751 12
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L234:
	.loc 3 740 17
	lw	a4,-24(s0)
	lw	a5,-32(s0)
	bltu	a4,a5,.L237
	.loc 3 754 12
	li	a5,-1
.L238:
	.loc 3 755 1
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
.LFE75:
	.size	fdt_stringlist_search, .-fdt_stringlist_search
	.section	.text.fdt_stringlist_get,"ax",@progbits
	.align	1
	.globl	fdt_stringlist_get
	.type	fdt_stringlist_get, @function
fdt_stringlist_get:
.LFB76:
	.loc 3 760 1
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
	.loc 3 764 12
	addi	a5,s0,-28
	mv	a3,a5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_getprop
	sw	a0,-20(s0)
	.loc 3 765 8
	lw	a5,-20(s0)
	bne	a5,zero,.L240
	.loc 3 766 12
	lw	a5,-52(s0)
	beq	a5,zero,.L241
	.loc 3 767 19
	lw	a4,-28(s0)
	lw	a5,-52(s0)
	sw	a4,0(a5)
.L241:
	.loc 3 769 15
	li	a5,0
	j	.L250
.L240:
	.loc 3 772 16
	lw	a5,-28(s0)
	mv	a4,a5
	.loc 3 772 9
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 3 774 11
	j	.L243
.L248:
	.loc 3 775 36
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 3 775 18
	mv	a1,a5
	lw	a0,-20(s0)
	call	strnlen
	mv	a5,a0
	.loc 3 775 44 discriminator 1
	addi	a5,a5,1
	.loc 3 775 16 discriminator 1
	sw	a5,-28(s0)
	.loc 3 778 18
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	add	a5,a5,a4
	.loc 3 778 12
	lw	a4,-24(s0)
	bgeu	a4,a5,.L244
	.loc 3 779 16
	lw	a5,-52(s0)
	beq	a5,zero,.L245
	.loc 3 780 23
	lw	a5,-52(s0)
	li	a4,-15
	sw	a4,0(a5)
.L245:
	.loc 3 782 19
	li	a5,0
	j	.L250
.L244:
	.loc 3 785 12
	lw	a5,-48(s0)
	bne	a5,zero,.L246
	.loc 3 786 16
	lw	a5,-52(s0)
	beq	a5,zero,.L247
	.loc 3 787 32
	lw	a5,-28(s0)
	addi	a4,a5,-1
	.loc 3 787 23
	lw	a5,-52(s0)
	sw	a4,0(a5)
.L247:
	.loc 3 789 20
	lw	a5,-20(s0)
	j	.L250
.L246:
	.loc 3 792 14
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 3 793 12
	lw	a5,-48(s0)
	addi	a5,a5,-1
	sw	a5,-48(s0)
.L243:
	.loc 3 774 17
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L248
	.loc 3 796 8
	lw	a5,-52(s0)
	beq	a5,zero,.L249
	.loc 3 797 15
	lw	a5,-52(s0)
	li	a4,-1
	sw	a4,0(a5)
.L249:
	.loc 3 799 11
	li	a5,0
.L250:
	.loc 3 800 1
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
.LFE76:
	.size	fdt_stringlist_get, .-fdt_stringlist_get
	.section	.rodata
	.align	2
.LC3:
	.string	"compatible"
	.section	.text.fdt_node_check_compatible,"ax",@progbits
	.align	1
	.globl	fdt_node_check_compatible
	.type	fdt_node_check_compatible, @function
fdt_node_check_compatible:
.LFB77:
	.loc 3 804 1
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
	.loc 3 808 12
	addi	a5,s0,-24
	mv	a3,a5
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_getprop
	sw	a0,-20(s0)
	.loc 3 809 8
	lw	a5,-20(s0)
	bne	a5,zero,.L252
	.loc 3 810 16
	lw	a5,-24(s0)
	j	.L254
.L252:
	.loc 3 812 13
	lw	a5,-24(s0)
	lw	a2,-44(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	fdt_stringlist_contains
	mv	a5,a0
	.loc 3 812 12 discriminator 1
	seqz	a5,a5
	andi	a5,a5,0xff
.L254:
	.loc 3 813 1
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
	.size	fdt_node_check_compatible, .-fdt_node_check_compatible
	.section	.text.fdt_node_offset_by_compatible,"ax",@progbits
	.align	1
	.globl	fdt_node_offset_by_compatible
	.type	fdt_node_offset_by_compatible, @function
fdt_node_offset_by_compatible:
.LFB78:
	.loc 3 817 1
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
	.loc 3 820 29
	lw	a0,-36(s0)
	call	fdt_ro_probe_
	sw	a0,-24(s0)
	.loc 3 820 20 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L256
	.loc 3 820 62 discriminator 2
	lw	a5,-24(s0)
	.loc 3 820 62 is_stmt 0
	j	.L257
.L256:
.LBE15:
	.loc 3 827 19 is_stmt 1
	li	a2,0
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_next_node
	sw	a0,-20(s0)
	.loc 3 827 5
	j	.L258
.L261:
	.loc 3 830 15
	lw	a2,-44(s0)
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	fdt_node_check_compatible
	sw	a0,-28(s0)
	.loc 3 831 12
	lw	a5,-28(s0)
	bge	a5,zero,.L259
	.loc 3 831 23 discriminator 1
	lw	a4,-28(s0)
	li	a5,-1
	beq	a4,a5,.L259
	.loc 3 832 20
	lw	a5,-28(s0)
	j	.L257
.L259:
	.loc 3 833 17
	lw	a5,-28(s0)
	bne	a5,zero,.L260
	.loc 3 834 20
	lw	a5,-20(s0)
	j	.L257
.L260:
	.loc 3 829 19
	li	a2,0
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	fdt_next_node
	sw	a0,-20(s0)
.L258:
	.loc 3 828 17
	lw	a5,-20(s0)
	bge	a5,zero,.L261
	.loc 3 837 12
	lw	a5,-20(s0)
.L257:
	.loc 3 838 1
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
.LFE78:
	.size	fdt_node_offset_by_compatible, .-fdt_node_offset_by_compatible
	.section	.text.fdt_check_full,"ax",@progbits
	.align	1
	.globl	fdt_check_full
	.type	fdt_check_full, @function
fdt_check_full:
.LFB79:
	.loc 3 841 1
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
	.loc 3 844 17
	sw	zero,-44(s0)
	.loc 3 846 14
	sw	zero,-20(s0)
	.loc 3 850 8
	lw	a4,-56(s0)
	li	a5,27
	bgtu	a4,a5,.L263
	.loc 3 851 16
	li	a5,-8
	j	.L280
.L263:
	.loc 3 852 11
	lw	a0,-52(s0)
	call	fdt_check_header
	mv	a5,a0
	.loc 3 852 9 discriminator 1
	sw	a5,-40(s0)
	.loc 3 853 13
	lw	a5,-40(s0)
	.loc 3 853 8
	beq	a5,zero,.L265
	.loc 3 854 16
	lw	a5,-40(s0)
	j	.L280
.L265:
	.loc 3 855 21
	lw	a5,-52(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 855 8 discriminator 1
	lw	a5,-56(s0)
	bgeu	a5,a4,.L266
	.loc 3 856 16
	li	a5,-8
	j	.L280
.L266:
	.loc 3 858 18
	lw	a0,-52(s0)
	call	fdt_num_mem_rsv
	sw	a0,-24(s0)
	.loc 3 859 8
	lw	a5,-24(s0)
	bge	a5,zero,.L267
	.loc 3 860 16
	lw	a5,-24(s0)
	j	.L280
.L267:
	.loc 3 863 16
	lw	a5,-44(s0)
	sw	a5,-28(s0)
	.loc 3 864 15
	addi	a5,s0,-44
	mv	a2,a5
	lw	a1,-28(s0)
	lw	a0,-52(s0)
	call	fdt_next_tag
	sw	a0,-32(s0)
	.loc 3 866 24
	lw	a5,-44(s0)
	.loc 3 866 12
	bge	a5,zero,.L268
	.loc 3 867 20
	lw	a5,-44(s0)
	j	.L280
.L268:
	.loc 3 869 9
	lw	a4,-32(s0)
	li	a5,9
	beq	a4,a5,.L269
	lw	a4,-32(s0)
	li	a5,9
	bgtu	a4,a5,.L270
	lw	a4,-32(s0)
	li	a5,4
	beq	a4,a5,.L281
	lw	a4,-32(s0)
	li	a5,4
	bgtu	a4,a5,.L270
	lw	a4,-32(s0)
	li	a5,3
	beq	a4,a5,.L272
	lw	a4,-32(s0)
	li	a5,3
	bgtu	a4,a5,.L270
	lw	a4,-32(s0)
	li	a5,1
	beq	a4,a5,.L273
	lw	a4,-32(s0)
	li	a5,2
	beq	a4,a5,.L274
	j	.L270
.L269:
	.loc 3 874 16
	lw	a5,-20(s0)
	beq	a5,zero,.L276
	.loc 3 875 24
	li	a5,-11
	j	.L280
.L276:
	.loc 3 876 20
	li	a5,0
	j	.L280
.L273:
	.loc 3 879 18
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 3 880 23
	lw	a5,-20(s0)
	.loc 3 880 16
	bge	a5,zero,.L282
	.loc 3 881 24
	li	a5,-11
	j	.L280
.L274:
	.loc 3 885 16
	lw	a5,-20(s0)
	bne	a5,zero,.L278
	.loc 3 886 24
	li	a5,-11
	j	.L280
.L278:
	.loc 3 887 18
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 3 888 13
	j	.L275
.L272:
	.loc 3 891 20
	addi	a4,s0,-40
	addi	a5,s0,-48
	mv	a3,a4
	mv	a2,a5
	lw	a1,-28(s0)
	lw	a0,-52(s0)
	call	fdt_getprop_by_offset
	sw	a0,-36(s0)
	.loc 3 893 16
	lw	a5,-36(s0)
	bne	a5,zero,.L283
	.loc 3 894 24
	lw	a5,-40(s0)
	j	.L280
.L270:
	.loc 3 898 20
	li	a5,-13
	j	.L280
.L281:
	.loc 3 871 13
	nop
	j	.L267
.L282:
	.loc 3 882 13
	nop
	j	.L267
.L283:
	.loc 3 895 13
	nop
.L275:
	.loc 3 863 16
	j	.L267
.L280:
	.loc 3 901 1
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
.LFE79:
	.size	fdt_check_full, .-fdt_check_full
	.text
.Letext0:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/libfdt_env.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/fdt.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x15ee
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1b
	.4byte	.LASF135
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
	.uleb128 0x12
	.4byte	.LASF8
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0xe
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x12
	.4byte	.LASF9
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x79
	.uleb128 0x11
	.4byte	0x68
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0xe
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x12
	.4byte	.LASF12
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x93
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x12
	.4byte	.LASF14
	.byte	0x5
	.byte	0x37
	.byte	0x20
	.4byte	0xa6
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x1d
	.byte	0x4
	.uleb128 0x16
	.4byte	0xad
	.uleb128 0xc
	.4byte	0xb9
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x11
	.4byte	0xb9
	.uleb128 0xc
	.4byte	0xc0
	.uleb128 0xc
	.4byte	0xd4
	.uleb128 0x16
	.4byte	0xca
	.uleb128 0x1e
	.uleb128 0x12
	.4byte	.LASF17
	.byte	0x6
	.byte	0x63
	.byte	0x12
	.4byte	0x87
	.uleb128 0x11
	.4byte	0xd5
	.uleb128 0x12
	.4byte	.LASF18
	.byte	0x6
	.byte	0x64
	.byte	0x12
	.4byte	0x9a
	.uleb128 0x11
	.4byte	0xe6
	.uleb128 0x14
	.4byte	.LASF29
	.byte	0x28
	.byte	0x57
	.4byte	0x17b
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x58
	.byte	0xd
	.4byte	0xd5
	.byte	0
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x59
	.byte	0xd
	.4byte	0xd5
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5a
	.byte	0xd
	.4byte	0xd5
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x5b
	.byte	0xd
	.4byte	0xd5
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x5c
	.byte	0xd
	.4byte	0xd5
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x5d
	.byte	0xd
	.4byte	0xd5
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x5e
	.byte	0xd
	.4byte	0xd5
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x61
	.byte	0xd
	.4byte	0xd5
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x64
	.byte	0xd
	.4byte	0xd5
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x67
	.byte	0xd
	.4byte	0xd5
	.byte	0x24
	.byte	0
	.uleb128 0x14
	.4byte	.LASF30
	.byte	0x10
	.byte	0x6a
	.4byte	0x19f
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x6b
	.byte	0xd
	.4byte	0xe6
	.byte	0
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x6c
	.byte	0xd
	.4byte	0xe6
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.4byte	0x17b
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x4
	.byte	0x6f
	.4byte	0x1c7
	.uleb128 0x15
	.string	"tag"
	.byte	0x70
	.4byte	0xd5
	.byte	0
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x71
	.byte	0xa
	.4byte	0x1cc
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	0x1a4
	.uleb128 0x17
	.4byte	0xb9
	.4byte	0x1db
	.uleb128 0x18
	.4byte	0x3e
	.byte	0
	.uleb128 0x14
	.4byte	.LASF35
	.byte	0xc
	.byte	0x74
	.4byte	0x215
	.uleb128 0x15
	.string	"tag"
	.byte	0x75
	.4byte	0xd5
	.byte	0
	.uleb128 0x15
	.string	"len"
	.byte	0x76
	.4byte	0xd5
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x77
	.byte	0xd
	.4byte	0xd5
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x78
	.byte	0xa
	.4byte	0x21a
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.4byte	0x1db
	.uleb128 0x17
	.4byte	0xb9
	.4byte	0x229
	.uleb128 0x18
	.4byte	0x3e
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x14e
	.byte	0x5
	.4byte	0x2b
	.4byte	0x240
	.uleb128 0x4
	.4byte	0xca
	.byte	0
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x8
	.byte	0x77
	.byte	0x8
	.4byte	0x32
	.4byte	0x25b
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0x32
	.byte	0
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x8
	.byte	0x1f
	.byte	0x8
	.4byte	0xad
	.4byte	0x27b
	.uleb128 0x4
	.4byte	0xaf
	.uleb128 0x4
	.4byte	0xcf
	.uleb128 0x4
	.4byte	0x32
	.byte	0
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x2
	.byte	0x60
	.byte	0x5
	.4byte	0x2b
	.4byte	0x296
	.uleb128 0x4
	.4byte	0xca
	.uleb128 0x4
	.4byte	0x2b
	.byte	0
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x8
	.byte	0x2e
	.byte	0x7
	.4byte	0xb4
	.4byte	0x2b1
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0x2b
	.byte	0
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x2
	.byte	0x5f
	.byte	0x5
	.4byte	0x2b
	.4byte	0x2cc
	.uleb128 0x4
	.4byte	0xca
	.uleb128 0x4
	.4byte	0x2b
	.byte	0
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x8
	.byte	0x29
	.byte	0x8
	.4byte	0x32
	.4byte	0x2e2
	.uleb128 0x4
	.4byte	0xc5
	.byte	0
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x1
	.byte	0xb8
	.byte	0xa
	.4byte	0x87
	.4byte	0x302
	.uleb128 0x4
	.4byte	0xca
	.uleb128 0x4
	.4byte	0x2b
	.uleb128 0x4
	.4byte	0x302
	.byte	0
	.uleb128 0xc
	.4byte	0x2b
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x1
	.byte	0xdd
	.byte	0x5
	.4byte	0x2b
	.4byte	0x327
	.uleb128 0x4
	.4byte	0xca
	.uleb128 0x4
	.4byte	0x2b
	.uleb128 0x4
	.4byte	0x302
	.byte	0
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x2
	.byte	0x57
	.byte	0x5
	.4byte	0x2b
	.4byte	0x33d
	.uleb128 0x4
	.4byte	0xca
	.byte	0
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x8
	.byte	0x1d
	.byte	0x8
	.4byte	0xad
	.4byte	0x35d
	.uleb128 0x4
	.4byte	0xca
	.uleb128 0x4
	.4byte	0x2b
	.uleb128 0x4
	.4byte	0x32
	.byte	0
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x8
	.byte	0x1e
	.byte	0x5
	.4byte	0x2b
	.4byte	0x37d
	.uleb128 0x4
	.4byte	0xca
	.uleb128 0x4
	.4byte	0xca
	.uleb128 0x4
	.4byte	0x32
	.byte	0
	.uleb128 0x5
	.4byte	.LASF57
	.2byte	0x348
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42e
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x348
	.byte	0x20
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF50
	.2byte	0x348
	.byte	0x2c
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.string	"err"
	.2byte	0x34a
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF51
	.2byte	0x34b
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF52
	.2byte	0x34c
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF53
	.2byte	0x34c
	.byte	0x11
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"tag"
	.2byte	0x34d
	.byte	0xe
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF54
	.2byte	0x34e
	.byte	0xe
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF55
	.2byte	0x34f
	.byte	0x11
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF56
	.2byte	0x350
	.byte	0x11
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x5
	.4byte	.LASF58
	.2byte	0x32f
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ad
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x32f
	.byte	0x2f
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF59
	.2byte	0x32f
	.byte	0x38
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF60
	.2byte	0x330
	.byte	0x1f
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF52
	.2byte	0x332
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"err"
	.2byte	0x332
	.byte	0x11
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x2
	.4byte	.LASF61
	.2byte	0x334
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF62
	.2byte	0x322
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x513
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x322
	.byte	0x2b
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF63
	.2byte	0x322
	.byte	0x34
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF60
	.2byte	0x323
	.byte	0x1f
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF55
	.2byte	0x325
	.byte	0x11
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"len"
	.2byte	0x326
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	.LASF64
	.2byte	0x2f5
	.byte	0xd
	.4byte	0xc5
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a6
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x2f5
	.byte	0x2c
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF63
	.2byte	0x2f5
	.byte	0x35
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF65
	.2byte	0x2f6
	.byte	0x20
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"idx"
	.2byte	0x2f6
	.byte	0x2e
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF66
	.2byte	0x2f7
	.byte	0x19
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF67
	.2byte	0x2f9
	.byte	0x11
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"end"
	.2byte	0x2f9
	.byte	0x18
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF68
	.2byte	0x2fa
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x5
	.4byte	.LASF69
	.2byte	0x2d7
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x648
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x2d7
	.byte	0x27
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF63
	.2byte	0x2d7
	.byte	0x30
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF65
	.2byte	0x2d7
	.byte	0x48
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF70
	.2byte	0x2d8
	.byte	0x1b
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	.LASF68
	.2byte	0x2da
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"len"
	.2byte	0x2da
	.byte	0x11
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.string	"idx"
	.2byte	0x2da
	.byte	0x16
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF67
	.2byte	0x2db
	.byte	0x11
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"end"
	.2byte	0x2db
	.byte	0x18
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5
	.4byte	.LASF71
	.2byte	0x2be
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6cc
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x2be
	.byte	0x26
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF63
	.2byte	0x2be
	.byte	0x2f
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF65
	.2byte	0x2be
	.byte	0x47
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF67
	.2byte	0x2c0
	.byte	0x11
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"end"
	.2byte	0x2c0
	.byte	0x18
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF68
	.2byte	0x2c1
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF72
	.2byte	0x2c1
	.byte	0x11
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	.LASF73
	.2byte	0x2ad
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x730
	.uleb128 0x1
	.4byte	.LASF74
	.2byte	0x2ad
	.byte	0x29
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF75
	.2byte	0x2ad
	.byte	0x36
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"str"
	.2byte	0x2ad
	.byte	0x4b
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"len"
	.2byte	0x2af
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"p"
	.2byte	0x2b0
	.byte	0x11
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	.LASF76
	.2byte	0x294
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x791
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x294
	.byte	0x2c
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF77
	.2byte	0x294
	.byte	0x3a
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF52
	.2byte	0x296
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x2
	.4byte	.LASF61
	.2byte	0x29b
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF78
	.2byte	0x279
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x83d
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x279
	.byte	0x2f
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF59
	.2byte	0x279
	.byte	0x38
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF56
	.2byte	0x27a
	.byte	0x1f
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF79
	.2byte	0x27b
	.byte	0x1f
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF80
	.2byte	0x27b
	.byte	0x2c
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF52
	.2byte	0x27d
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"val"
	.2byte	0x27e
	.byte	0x11
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.string	"len"
	.2byte	0x27f
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x2
	.4byte	.LASF61
	.2byte	0x281
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF81
	.2byte	0x26f
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x885
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x26f
	.byte	0x23
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF63
	.2byte	0x26f
	.byte	0x2c
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF82
	.2byte	0x271
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF83
	.2byte	0x264
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8dc
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x264
	.byte	0x20
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF63
	.2byte	0x264
	.byte	0x29
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF82
	.2byte	0x266
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"err"
	.2byte	0x267
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF84
	.2byte	0x240
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x979
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x240
	.byte	0x2e
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF63
	.2byte	0x240
	.byte	0x37
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF85
	.2byte	0x241
	.byte	0x16
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF82
	.2byte	0x241
	.byte	0x2b
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF52
	.2byte	0x243
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF54
	.2byte	0x243
	.byte	0x11
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF86
	.2byte	0x244
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x2
	.4byte	.LASF61
	.2byte	0x246
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF87
	.2byte	0x20c
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa41
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x20c
	.byte	0x1e
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF63
	.2byte	0x20c
	.byte	0x27
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.string	"buf"
	.2byte	0x20c
	.byte	0x39
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF88
	.2byte	0x20c
	.byte	0x42
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	.LASF89
	.2byte	0x20e
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"p"
	.2byte	0x20e
	.byte	0x15
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF52
	.2byte	0x20f
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF54
	.2byte	0x20f
	.byte	0x11
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF90
	.2byte	0x20f
	.byte	0x18
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF34
	.2byte	0x210
	.byte	0x11
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x2
	.4byte	.LASF61
	.2byte	0x212
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF91
	.2byte	0x207
	.byte	0xd
	.4byte	0xc5
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa7a
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x207
	.byte	0x27
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF34
	.2byte	0x207
	.byte	0x38
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	.LASF92
	.2byte	0x1fb
	.byte	0xd
	.4byte	0xc5
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad1
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x1fb
	.byte	0x2f
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF34
	.2byte	0x1fc
	.byte	0x1f
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF90
	.2byte	0x1fc
	.byte	0x29
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF93
	.2byte	0x1fe
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF94
	.2byte	0x1ea
	.byte	0xa
	.4byte	0x87
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb28
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x1ea
	.byte	0x26
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF63
	.2byte	0x1ea
	.byte	0x2f
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"php"
	.2byte	0x1ec
	.byte	0x14
	.4byte	0xb28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"len"
	.2byte	0x1ed
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	0xe1
	.uleb128 0x5
	.4byte	.LASF95
	.2byte	0x1e4
	.byte	0xd
	.4byte	0xca
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb84
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x1e4
	.byte	0x25
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF63
	.2byte	0x1e4
	.byte	0x2e
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF34
	.2byte	0x1e5
	.byte	0x19
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF66
	.2byte	0x1e5
	.byte	0x24
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5
	.4byte	.LASF96
	.2byte	0x1c8
	.byte	0xd
	.4byte	0xca
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc12
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x1c8
	.byte	0x2f
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF52
	.2byte	0x1c8
	.byte	0x38
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF97
	.2byte	0x1c9
	.byte	0x20
	.4byte	0xc12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF66
	.2byte	0x1c9
	.byte	0x2c
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF55
	.2byte	0x1cb
	.byte	0x20
	.4byte	0xc17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x2
	.4byte	.LASF34
	.2byte	0x1d1
	.byte	0x15
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF90
	.2byte	0x1d2
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xc5
	.uleb128 0xc
	.4byte	0x215
	.uleb128 0x5
	.4byte	.LASF98
	.2byte	0x1b6
	.byte	0xd
	.4byte	0xca
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xca0
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x1b6
	.byte	0x2d
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF63
	.2byte	0x1b6
	.byte	0x36
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF34
	.2byte	0x1b7
	.byte	0x1d
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF90
	.2byte	0x1b7
	.byte	0x27
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF66
	.2byte	0x1b7
	.byte	0x35
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF99
	.2byte	0x1b9
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF55
	.2byte	0x1ba
	.byte	0x20
	.4byte	0xc17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF100
	.2byte	0x1ae
	.byte	0x1c
	.4byte	0xc17
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcf7
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x1ae
	.byte	0x39
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF63
	.2byte	0x1af
	.byte	0x1d
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF34
	.2byte	0x1b0
	.byte	0x25
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF66
	.2byte	0x1b0
	.byte	0x30
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5
	.4byte	.LASF101
	.2byte	0x19c
	.byte	0x1c
	.4byte	0xc17
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd5d
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x19c
	.byte	0x41
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF52
	.2byte	0x19d
	.byte	0x21
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF34
	.2byte	0x19e
	.byte	0x29
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF90
	.2byte	0x19f
	.byte	0x21
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF66
	.2byte	0x19f
	.byte	0x2f
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x19
	.4byte	.LASF103
	.2byte	0x17e
	.4byte	0xc17
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdea
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x17e
	.byte	0x49
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF52
	.2byte	0x17f
	.byte	0x29
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF34
	.2byte	0x180
	.byte	0x31
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF90
	.2byte	0x181
	.byte	0x29
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF66
	.2byte	0x182
	.byte	0x26
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF99
	.2byte	0x183
	.byte	0x26
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x2
	.4byte	.LASF55
	.2byte	0x188
	.byte	0x24
	.4byte	0xc17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF102
	.2byte	0x16e
	.byte	0x1c
	.4byte	0xc17
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe32
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x16e
	.byte	0x43
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF52
	.2byte	0x16f
	.byte	0x23
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF66
	.2byte	0x170
	.byte	0x24
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x19
	.4byte	.LASF104
	.2byte	0x159
	.4byte	0xc17
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe97
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x159
	.byte	0x4b
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF52
	.2byte	0x15a
	.byte	0x2b
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF66
	.2byte	0x15b
	.byte	0x2c
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"err"
	.2byte	0x15d
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF55
	.2byte	0x15e
	.byte	0x20
	.4byte	0xc17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	.LASF105
	.2byte	0x151
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xed0
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x151
	.byte	0x2a
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF52
	.2byte	0x151
	.byte	0x33
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	.LASF106
	.2byte	0x147
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf18
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x147
	.byte	0x2b
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF63
	.2byte	0x147
	.byte	0x34
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF52
	.2byte	0x149
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF107
	.2byte	0x121
	.byte	0xd
	.4byte	0xc5
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfb2
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x121
	.byte	0x26
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF63
	.2byte	0x121
	.byte	0x2f
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"len"
	.2byte	0x121
	.byte	0x40
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"nh"
	.2byte	0x123
	.byte	0x23
	.4byte	0xfb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF108
	.2byte	0x124
	.byte	0x11
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"err"
	.2byte	0x125
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.4byte	.LASF128
	.byte	0x3
	.2byte	0x141
	.byte	0x2
	.4byte	.L99
	.uleb128 0xd
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x2
	.4byte	.LASF109
	.2byte	0x133
	.byte	0x15
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x1c7
	.uleb128 0x5
	.4byte	.LASF110
	.2byte	0x11c
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xff0
	.uleb128 0x3
	.string	"fdt"
	.2byte	0x11c
	.byte	0x21
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF111
	.2byte	0x11c
	.byte	0x32
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0xef
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10b1
	.uleb128 0x6
	.string	"fdt"
	.byte	0x3
	.byte	0xef
	.byte	0x29
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.4byte	.LASF111
	.byte	0x3
	.byte	0xef
	.byte	0x3a
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.4byte	.LASF90
	.byte	0x3
	.byte	0xef
	.byte	0x44
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xa
	.string	"end"
	.byte	0x3
	.byte	0xf1
	.byte	0x11
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"p"
	.byte	0x3
	.byte	0xf2
	.byte	0x11
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x3
	.byte	0xf3
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x107e
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x3
	.byte	0xf5
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1a
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x1099
	.uleb128 0xa
	.string	"q"
	.byte	0x3
	.byte	0xf9
	.byte	0x15
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xd
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x7
	.string	"q"
	.2byte	0x107
	.byte	0x15
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0xe9
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10f8
	.uleb128 0x6
	.string	"fdt"
	.byte	0x3
	.byte	0xe9
	.byte	0x24
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF114
	.byte	0x3
	.byte	0xe9
	.byte	0x2d
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x3
	.byte	0xea
	.byte	0x1c
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LASF115
	.byte	0xd6
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1176
	.uleb128 0x6
	.string	"fdt"
	.byte	0x3
	.byte	0xd6
	.byte	0x2c
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x3
	.byte	0xd6
	.byte	0x35
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x3
	.byte	0xd7
	.byte	0x20
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF90
	.byte	0x3
	.byte	0xd7
	.byte	0x2a
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x3
	.byte	0xd9
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x3
	.byte	0xdb
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF116
	.byte	0x3
	.byte	0xbe
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11cd
	.uleb128 0x6
	.string	"fdt"
	.byte	0x3
	.byte	0xbe
	.byte	0x22
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x3
	.byte	0xbe
	.byte	0x2b
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"tag"
	.byte	0x3
	.byte	0xc0
	.byte	0xe
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x3
	.byte	0xc1
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.4byte	.LASF117
	.byte	0xb2
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1211
	.uleb128 0x6
	.string	"fdt"
	.byte	0x3
	.byte	0xb2
	.byte	0x21
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"i"
	.byte	0x3
	.byte	0xb4
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"re"
	.byte	0x3
	.byte	0xb5
	.byte	0x25
	.4byte	0x1211
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	0x19f
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0xa4
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1291
	.uleb128 0x6
	.string	"fdt"
	.byte	0x3
	.byte	0xa4
	.byte	0x21
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"n"
	.byte	0x3
	.byte	0xa4
	.byte	0x2a
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x3
	.byte	0xa4
	.byte	0x37
	.4byte	0x1291
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x3
	.byte	0xa4
	.byte	0x4a
	.4byte	0x1291
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.string	"re"
	.byte	0x3
	.byte	0xa6
	.byte	0x25
	.4byte	0x1211
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x3
	.byte	0xa8
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x9a
	.uleb128 0x13
	.4byte	.LASF119
	.byte	0x3
	.byte	0x98
	.byte	0x28
	.4byte	0x1211
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12eb
	.uleb128 0x6
	.string	"fdt"
	.byte	0x3
	.byte	0x98
	.byte	0x40
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"n"
	.byte	0x3
	.byte	0x98
	.byte	0x49
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x3
	.byte	0x9a
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0x3
	.byte	0x9b
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.4byte	.LASF121
	.byte	0x7e
	.byte	0xa
	.4byte	0x87
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x134b
	.uleb128 0x6
	.string	"fdt"
	.byte	0x3
	.byte	0x7e
	.byte	0x2a
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0x3
	.byte	0x80
	.byte	0xe
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x3
	.byte	0x81
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x3
	.byte	0x85
	.byte	0x12
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF123
	.byte	0x3
	.byte	0x75
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13bc
	.uleb128 0x6
	.string	"fdt"
	.byte	0x3
	.byte	0x75
	.byte	0x27
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF124
	.byte	0x3
	.byte	0x75
	.byte	0x30
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"s"
	.byte	0x3
	.byte	0x76
	.byte	0x1b
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"len"
	.byte	0x3
	.byte	0x76
	.byte	0x22
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x3
	.byte	0x78
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"p"
	.byte	0x3
	.byte	0x79
	.byte	0x11
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF126
	.byte	0x70
	.byte	0xd
	.4byte	0xc5
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13f4
	.uleb128 0x6
	.string	"fdt"
	.byte	0x3
	.byte	0x70
	.byte	0x24
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF124
	.byte	0x3
	.byte	0x70
	.byte	0x2d
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.4byte	.LASF127
	.byte	0x3a
	.byte	0xd
	.4byte	0xc5
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x148e
	.uleb128 0x6
	.string	"fdt"
	.byte	0x3
	.byte	0x3a
	.byte	0x28
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.4byte	.LASF124
	.byte	0x3
	.byte	0x3a
	.byte	0x31
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.4byte	.LASF66
	.byte	0x3
	.byte	0x3a
	.byte	0x41
	.4byte	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0x3
	.byte	0x3c
	.byte	0xe
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.string	"len"
	.byte	0x3
	.byte	0x3d
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"err"
	.byte	0x3
	.byte	0x3e
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"s"
	.byte	0x3
	.byte	0x3f
	.byte	0x11
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.string	"n"
	.byte	0x3
	.byte	0x3f
	.byte	0x15
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.4byte	.LASF128
	.byte	0x3
	.byte	0x6a
	.byte	0x1
	.4byte	.L19
	.byte	0
	.uleb128 0x13
	.4byte	.LASF129
	.byte	0x3
	.byte	0x25
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14ff
	.uleb128 0x6
	.string	"fdt"
	.byte	0x3
	.byte	0x25
	.byte	0x29
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x3
	.byte	0x25
	.byte	0x32
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"s"
	.byte	0x3
	.byte	0x26
	.byte	0x1d
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"len"
	.byte	0x3
	.byte	0x26
	.byte	0x24
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x3
	.byte	0x28
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"p"
	.byte	0x3
	.byte	0x29
	.byte	0x11
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF131
	.byte	0x2
	.byte	0x6e
	.byte	0x2f
	.4byte	0x1211
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1545
	.uleb128 0x6
	.string	"fdt"
	.byte	0x2
	.byte	0x6e
	.byte	0x48
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"n"
	.byte	0x2
	.byte	0x6e
	.byte	0x51
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x2
	.byte	0x70
	.byte	0x25
	.4byte	0x1211
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF133
	.byte	0x2
	.byte	0x64
	.byte	0x1b
	.4byte	0xca
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x157e
	.uleb128 0x6
	.string	"fdt"
	.byte	0x2
	.byte	0x64
	.byte	0x37
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x2
	.byte	0x64
	.byte	0x40
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.4byte	.LASF134
	.byte	0x1
	.byte	0xcb
	.byte	0x18
	.4byte	0x9a
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15b5
	.uleb128 0x6
	.string	"p"
	.byte	0x1
	.byte	0xcb
	.byte	0x30
	.4byte	0x15b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xa
	.string	"bp"
	.byte	0x1
	.byte	0xcd
	.byte	0x14
	.4byte	0x15ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0xc
	.4byte	0xf2
	.uleb128 0xc
	.4byte	0x74
	.uleb128 0x23
	.4byte	.LASF136
	.byte	0x1
	.byte	0xc1
	.byte	0x18
	.4byte	0x87
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.string	"p"
	.byte	0x1
	.byte	0xc1
	.byte	0x30
	.4byte	0xb28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"bp"
	.byte	0x1
	.byte	0xc3
	.byte	0x14
	.4byte	0x15ba
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.sleb128 3
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x37
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 35
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x174
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
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
	.4byte	.LFB8
	.uleb128 .LFE8-.LFB8
	.byte	0x7
	.4byte	.LFB9
	.uleb128 .LFE9-.LFB9
	.byte	0x7
	.4byte	.LFB36
	.uleb128 .LFE36-.LFB36
	.byte	0x7
	.4byte	.LFB38
	.uleb128 .LFE38-.LFB38
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF72:
	.string	"count"
.LASF66:
	.string	"lenp"
.LASF8:
	.string	"size_t"
.LASF14:
	.string	"uint64_t"
.LASF70:
	.string	"string"
.LASF36:
	.string	"nameoff"
.LASF73:
	.string	"fdt_stringlist_contains"
.LASF35:
	.string	"fdt_property"
.LASF108:
	.string	"nameptr"
.LASF20:
	.string	"totalsize"
.LASF15:
	.string	"long long unsigned int"
.LASF125:
	.string	"slen"
.LASF105:
	.string	"fdt_next_property_offset"
.LASF25:
	.string	"last_comp_version"
.LASF30:
	.string	"fdt_reserve_entry"
.LASF51:
	.string	"num_memrsv"
.LASF95:
	.string	"fdt_getprop"
.LASF112:
	.string	"fdt_path_offset_namelen"
.LASF3:
	.string	"long long int"
.LASF5:
	.string	"signed char"
.LASF122:
	.string	"max_phandle"
.LASF48:
	.string	"memchr"
.LASF102:
	.string	"fdt_get_property_by_offset"
.LASF100:
	.string	"fdt_get_property"
.LASF65:
	.string	"property"
.LASF7:
	.string	"long int"
.LASF82:
	.string	"nodedepth"
.LASF62:
	.string	"fdt_node_check_compatible"
.LASF40:
	.string	"memcpy"
.LASF43:
	.string	"fdt_check_node_offset_"
.LASF121:
	.string	"fdt_get_max_phandle"
.LASF119:
	.string	"fdt_mem_rsv"
.LASF93:
	.string	"aliasoffset"
.LASF58:
	.string	"fdt_node_offset_by_compatible"
.LASF50:
	.string	"bufsize"
.LASF38:
	.string	"fdt_check_header"
.LASF120:
	.string	"absoffset"
.LASF98:
	.string	"fdt_getprop_namelen"
.LASF104:
	.string	"fdt_get_property_by_offset_"
.LASF118:
	.string	"fdt_get_mem_rsv"
.LASF18:
	.string	"fdt64_t"
.LASF109:
	.string	"leaf"
.LASF99:
	.string	"poffset"
.LASF116:
	.string	"nextprop_"
.LASF91:
	.string	"fdt_get_alias"
.LASF56:
	.string	"propname"
.LASF83:
	.string	"fdt_node_depth"
.LASF115:
	.string	"fdt_subnode_offset_namelen"
.LASF2:
	.string	"unsigned int"
.LASF44:
	.string	"strlen"
.LASF131:
	.string	"fdt_mem_rsv_"
.LASF13:
	.string	"long unsigned int"
.LASF85:
	.string	"supernodedepth"
.LASF22:
	.string	"off_dt_strings"
.LASF55:
	.string	"prop"
.LASF34:
	.string	"name"
.LASF113:
	.string	"fdt_subnode_offset"
.LASF106:
	.string	"fdt_first_property_offset"
.LASF37:
	.string	"data"
.LASF127:
	.string	"fdt_get_string"
.LASF32:
	.string	"size"
.LASF11:
	.string	"short unsigned int"
.LASF54:
	.string	"depth"
.LASF77:
	.string	"phandle"
.LASF114:
	.string	"parentoffset"
.LASF79:
	.string	"propval"
.LASF33:
	.string	"fdt_node_header"
.LASF86:
	.string	"supernodeoffset"
.LASF111:
	.string	"path"
.LASF28:
	.string	"size_dt_struct"
.LASF117:
	.string	"fdt_num_mem_rsv"
.LASF24:
	.string	"version"
.LASF110:
	.string	"fdt_path_offset"
.LASF4:
	.string	"long double"
.LASF31:
	.string	"address"
.LASF64:
	.string	"fdt_stringlist_get"
.LASF21:
	.string	"off_dt_struct"
.LASF87:
	.string	"fdt_get_path"
.LASF42:
	.string	"strrchr"
.LASF27:
	.string	"size_dt_strings"
.LASF134:
	.string	"fdt64_ld"
.LASF74:
	.string	"strlist"
.LASF71:
	.string	"fdt_stringlist_count"
.LASF10:
	.string	"unsigned char"
.LASF63:
	.string	"nodeoffset"
.LASF23:
	.string	"off_mem_rsvmap"
.LASF6:
	.string	"short int"
.LASF57:
	.string	"fdt_check_full"
.LASF19:
	.string	"magic"
.LASF126:
	.string	"fdt_string"
.LASF60:
	.string	"compatible"
.LASF89:
	.string	"pdepth"
.LASF80:
	.string	"proplen"
.LASF88:
	.string	"buflen"
.LASF97:
	.string	"namep"
.LASF124:
	.string	"stroffset"
.LASF12:
	.string	"uint32_t"
.LASF128:
	.string	"fail"
.LASF53:
	.string	"nextoffset"
.LASF103:
	.string	"fdt_get_property_namelen_"
.LASF68:
	.string	"length"
.LASF81:
	.string	"fdt_parent_offset"
.LASF16:
	.string	"char"
.LASF92:
	.string	"fdt_get_alias_namelen"
.LASF69:
	.string	"fdt_stringlist_search"
.LASF132:
	.string	"rsv_table"
.LASF75:
	.string	"listlen"
.LASF78:
	.string	"fdt_node_offset_by_prop_value"
.LASF49:
	.string	"memcmp"
.LASF47:
	.string	"fdt_ro_probe_"
.LASF52:
	.string	"offset"
.LASF90:
	.string	"namelen"
.LASF130:
	.string	"olen"
.LASF135:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF29:
	.string	"fdt_header"
.LASF107:
	.string	"fdt_get_name"
.LASF129:
	.string	"fdt_nodename_eq_"
.LASF94:
	.string	"fdt_get_phandle"
.LASF59:
	.string	"startoffset"
.LASF84:
	.string	"fdt_supernode_atdepth_offset"
.LASF76:
	.string	"fdt_node_offset_by_phandle"
.LASF46:
	.string	"fdt_next_node"
.LASF101:
	.string	"fdt_get_property_namelen"
.LASF9:
	.string	"uint8_t"
.LASF26:
	.string	"boot_cpuid_phys"
.LASF123:
	.string	"fdt_string_eq_"
.LASF136:
	.string	"fdt32_ld"
.LASF61:
	.string	"err_"
.LASF133:
	.string	"fdt_offset_ptr_"
.LASF45:
	.string	"fdt_next_tag"
.LASF67:
	.string	"list"
.LASF17:
	.string	"fdt32_t"
.LASF39:
	.string	"strnlen"
.LASF41:
	.string	"fdt_check_prop_offset_"
.LASF96:
	.string	"fdt_getprop_by_offset"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blfdt"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_ro.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
