	.file	"fdt.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blfdt" "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt.c"
	.section	.text.fdt32_to_cpu,"ax",@progbits
	.align	1
	.type	fdt32_to_cpu, @function
fdt32_to_cpu:
.LFB3:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/libfdt_env.h"
	.loc 1 121 1
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
	.loc 1 122 58
	addi	a5,s0,-20
	.loc 1 122 61
	lbu	a5,0(a5)
	.loc 1 122 66
	slli	a4,a5,24
	.loc 1 122 112
	addi	a5,s0,-20
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 122 117
	slli	a5,a5,16
	.loc 1 122 73
	or	a4,a4,a5
	.loc 1 122 163
	addi	a5,s0,-20
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 122 168
	slli	a5,a5,8
	.loc 1 122 124
	or	a4,a4,a5
	.loc 1 122 212
	addi	a5,s0,-20
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 122 12
	or	a5,a4,a5
	.loc 1 123 1
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
.LFE3:
	.size	fdt32_to_cpu, .-fdt32_to_cpu
	.section	.text.fdt32_ld,"ax",@progbits
	.align	1
	.type	fdt32_ld, @function
fdt32_ld:
.LFB8:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/libfdt.h"
	.loc 2 194 1
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
	.loc 2 195 20
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 2 197 25
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 2 197 29
	slli	a4,a5,24
	.loc 2 198 24
	lw	a5,-20(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 2 198 28
	slli	a5,a5,16
	.loc 2 198 9
	or	a4,a4,a5
	.loc 2 199 24
	lw	a5,-20(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 2 199 28
	slli	a5,a5,8
	.loc 2 199 9
	or	a5,a4,a5
	.loc 2 200 13
	lw	a4,-20(s0)
	addi	a4,a4,3
	lbu	a4,0(a4)
	.loc 2 200 9
	or	a5,a5,a4
	.loc 2 201 1
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
	.section	.text.fdt_header_size,"ax",@progbits
	.align	1
	.type	fdt_header_size, @function
fdt_header_size:
.LFB20:
	.loc 2 313 1
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
	.loc 2 314 12
	lw	a5,-20(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 2 314 12 is_stmt 0 discriminator 1
	mv	a0,a5
	call	fdt_header_size_
	mv	a5,a0
	.loc 2 315 1 is_stmt 1
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
	.size	fdt_header_size, .-fdt_header_size
	.section	.text.fdt_offset_ptr_,"ax",@progbits
	.align	1
	.type	fdt_offset_ptr_, @function
fdt_offset_ptr_:
.LFB36:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/libfdt_internal.h"
	.loc 3 101 1
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
	.loc 3 102 34
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 102 97 discriminator 1
	lw	a5,-24(s0)
	add	a5,a4,a5
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 3 103 1
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
	.section	.text.fdt_ro_probe_,"ax",@progbits
	.align	1
	.globl	fdt_ro_probe_
	.type	fdt_ro_probe_, @function
fdt_ro_probe_:
.LFB40:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt.c"
	.loc 4 43 1
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
	.loc 4 44 11
	lw	a5,-20(s0)
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 44 8 discriminator 1
	li	a5,-804388864
	addi	a5,a5,-275
	bne	a4,a5,.L10
	.loc 4 46 15
	lw	a5,-20(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 46 12 discriminator 1
	li	a5,1
	bgtu	a4,a5,.L11
	.loc 4 47 20
	li	a5,-10
	j	.L12
.L11:
	.loc 4 48 15
	lw	a5,-20(s0)
	addi	a5,a5,24
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 48 12 discriminator 1
	li	a5,17
	bleu	a4,a5,.L13
	.loc 4 49 20
	li	a5,-10
	j	.L12
.L10:
	.loc 4 50 18
	lw	a5,-20(s0)
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 50 15 discriminator 1
	li	a5,804388864
	addi	a5,a5,274
	bne	a4,a5,.L14
	.loc 4 52 15
	lw	a5,-20(s0)
	addi	a5,a5,36
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 52 12 discriminator 1
	bne	a5,zero,.L13
	.loc 4 53 20
	li	a5,-7
	j	.L12
.L14:
	.loc 4 55 16
	li	a5,-9
	j	.L12
.L13:
	.loc 4 58 12
	li	a5,0
.L12:
	.loc 4 59 1
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
.LFE40:
	.size	fdt_ro_probe_, .-fdt_ro_probe_
	.section	.text.check_off_,"ax",@progbits
	.align	1
	.type	check_off_, @function
check_off_:
.LFB41:
	.loc 4 62 1
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
	.loc 4 63 29
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	bltu	a4,a5,.L16
	.loc 4 63 29 is_stmt 0 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	bgtu	a4,a5,.L16
	.loc 4 63 29 discriminator 3
	li	a5,1
	.loc 4 63 29
	j	.L18
.L16:
	.loc 4 63 29 discriminator 4
	li	a5,0
.L18:
	.loc 4 64 1 is_stmt 1
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
	.size	check_off_, .-check_off_
	.section	.text.check_block_,"ax",@progbits
	.align	1
	.type	check_block_, @function
check_block_:
.LFB42:
	.loc 4 68 1
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
	.loc 4 69 10
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	check_off_
	mv	a5,a0
	.loc 4 69 8 discriminator 1
	bne	a5,zero,.L20
	.loc 4 70 16
	li	a5,0
	j	.L21
.L20:
	.loc 4 71 15
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	.loc 4 71 8
	lw	a4,-28(s0)
	bleu	a4,a5,.L22
	.loc 4 72 16
	li	a5,0
	j	.L21
.L22:
	.loc 4 73 10
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	check_off_
	mv	a5,a0
	.loc 4 73 8 discriminator 1
	bne	a5,zero,.L23
	.loc 4 74 16
	li	a5,0
	j	.L21
.L23:
	.loc 4 75 12
	li	a5,1
.L21:
	.loc 4 76 1
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
	.size	check_block_, .-check_block_
	.section	.text.fdt_header_size_,"ax",@progbits
	.align	1
	.globl	fdt_header_size_
	.type	fdt_header_size_, @function
fdt_header_size_:
.LFB43:
	.loc 4 79 1
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
	.loc 4 80 8
	lw	a4,-20(s0)
	li	a5,1
	bgtu	a4,a5,.L25
	.loc 4 81 16
	li	a5,28
	j	.L26
.L25:
	.loc 4 82 13
	lw	a4,-20(s0)
	li	a5,2
	bgtu	a4,a5,.L27
	.loc 4 83 16
	li	a5,32
	j	.L26
.L27:
	.loc 4 84 13
	lw	a4,-20(s0)
	li	a5,3
	bgtu	a4,a5,.L28
	.loc 4 85 16
	li	a5,36
	j	.L26
.L28:
	.loc 4 86 13
	lw	a4,-20(s0)
	li	a5,16
	bgtu	a4,a5,.L29
	.loc 4 87 16
	li	a5,36
	j	.L26
.L29:
	.loc 4 89 16
	li	a5,40
.L26:
	.loc 4 90 1
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
	.size	fdt_header_size_, .-fdt_header_size_
	.section	.text.fdt_check_header,"ax",@progbits
	.align	1
	.globl	fdt_check_header
	.type	fdt_check_header, @function
fdt_check_header:
.LFB44:
	.loc 4 93 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 4 96 11
	lw	a5,-36(s0)
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 96 8 discriminator 1
	li	a5,-804388864
	addi	a5,a5,-275
	beq	a4,a5,.L31
	.loc 4 97 16
	li	a5,-9
	j	.L32
.L31:
	.loc 4 98 15
	lw	a0,-36(s0)
	call	fdt_header_size
	sw	a0,-20(s0)
	.loc 4 99 12
	lw	a5,-36(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 99 8 discriminator 1
	li	a5,1
	bleu	a4,a5,.L33
	.loc 4 100 15
	lw	a5,-36(s0)
	addi	a5,a5,24
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 100 9 discriminator 1
	li	a5,17
	bleu	a4,a5,.L34
.L33:
	.loc 4 101 16
	li	a5,-10
	j	.L32
.L34:
	.loc 4 102 11
	lw	a5,-36(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	fdt32_ld
	mv	s1,a0
	.loc 4 102 72 discriminator 1
	lw	a5,-36(s0)
	addi	a5,a5,24
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 102 8 discriminator 2
	bgeu	s1,a5,.L35
	.loc 4 103 16
	li	a5,-10
	j	.L32
.L35:
	.loc 4 105 12
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 105 8 discriminator 1
	lw	a5,-20(s0)
	bgtu	a5,a4,.L36
	.loc 4 106 15
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 106 9 discriminator 1
	bge	a5,zero,.L37
.L36:
	.loc 4 107 16
	li	a5,-8
	j	.L32
.L37:
	.loc 4 110 10
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	s1,a0
	.loc 4 110 10 is_stmt 0 discriminator 1
	lw	a5,-36(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 110 10 discriminator 2
	mv	a2,a5
	mv	a1,s1
	lw	a0,-20(s0)
	call	check_off_
	mv	a5,a0
	.loc 4 110 8 is_stmt 1 discriminator 3
	bne	a5,zero,.L38
	.loc 4 111 16
	li	a5,-8
	j	.L32
.L38:
	.loc 4 114 11
	lw	a5,-36(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 114 8 discriminator 1
	li	a5,16
	bgtu	a4,a5,.L39
	.loc 4 115 14
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	s1,a0
	.loc 4 115 14 is_stmt 0 discriminator 1
	lw	a5,-36(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 115 14 discriminator 2
	mv	a2,a5
	mv	a1,s1
	lw	a0,-20(s0)
	call	check_off_
	mv	a5,a0
	.loc 4 115 12 is_stmt 1 discriminator 3
	bne	a5,zero,.L40
	.loc 4 117 20
	li	a5,-8
	j	.L32
.L39:
	.loc 4 119 14
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	s1,a0
	.loc 4 119 14 is_stmt 0 discriminator 1
	lw	a5,-36(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	fdt32_ld
	mv	s2,a0
	.loc 4 119 14 discriminator 2
	lw	a5,-36(s0)
	addi	a5,a5,36
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 119 14 discriminator 3
	mv	a3,a5
	mv	a2,s2
	mv	a1,s1
	lw	a0,-20(s0)
	call	check_block_
	mv	a5,a0
	.loc 4 119 12 is_stmt 1 discriminator 4
	bne	a5,zero,.L40
	.loc 4 122 20
	li	a5,-8
	j	.L32
.L40:
	.loc 4 126 10
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	s1,a0
	.loc 4 126 10 is_stmt 0 discriminator 1
	lw	a5,-36(s0)
	addi	a5,a5,12
	mv	a0,a5
	call	fdt32_ld
	mv	s2,a0
	.loc 4 126 10 discriminator 2
	lw	a5,-36(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 126 10 discriminator 3
	mv	a3,a5
	mv	a2,s2
	mv	a1,s1
	lw	a0,-20(s0)
	call	check_block_
	mv	a5,a0
	.loc 4 126 8 is_stmt 1 discriminator 4
	bne	a5,zero,.L41
	.loc 4 128 16
	li	a5,-8
	j	.L32
.L41:
	.loc 4 130 12
	li	a5,0
.L32:
	.loc 4 131 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE44:
	.size	fdt_check_header, .-fdt_check_header
	.section	.text.fdt_offset_ptr,"ax",@progbits
	.align	1
	.globl	fdt_offset_ptr
	.type	fdt_offset_ptr, @function
fdt_offset_ptr:
.LFB45:
	.loc 4 134 1
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
	.loc 4 135 37
	lw	a5,-36(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 135 33 discriminator 1
	lw	a5,-40(s0)
	.loc 4 135 14 discriminator 1
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 4 137 20
	lw	a5,-40(s0)
	.loc 4 137 8
	lw	a4,-20(s0)
	bltu	a4,a5,.L43
	.loc 4 138 24
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	.loc 4 138 9
	lw	a4,-20(s0)
	bgtu	a4,a5,.L43
	.loc 4 139 23
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	add	s1,a4,a5
	.loc 4 139 34
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 139 9 discriminator 1
	bleu	s1,a5,.L44
.L43:
	.loc 4 140 15
	li	a5,0
	j	.L45
.L44:
	.loc 4 142 11
	lw	a5,-36(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 142 8 discriminator 1
	li	a5,16
	bleu	a4,a5,.L46
	.loc 4 143 22
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	add	a4,a4,a5
	.loc 4 143 29
	lw	a5,-40(s0)
	.loc 4 143 12
	bltu	a4,a5,.L47
	.loc 4 144 25
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	add	s1,a4,a5
	.loc 4 144 36
	lw	a5,-36(s0)
	addi	a5,a5,36
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 144 13 discriminator 1
	bleu	s1,a5,.L46
.L47:
	.loc 4 145 19
	li	a5,0
	j	.L45
.L46:
	.loc 4 147 12
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_offset_ptr_
	mv	a5,a0
.L45:
	.loc 4 148 1
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
.LFE45:
	.size	fdt_offset_ptr, .-fdt_offset_ptr
	.section	.text.fdt_next_tag,"ax",@progbits
	.align	1
	.globl	fdt_next_tag
	.type	fdt_next_tag, @function
fdt_next_tag:
.LFB46:
	.loc 4 151 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	.loc 4 154 9
	lw	a5,-56(s0)
	sw	a5,-20(s0)
	.loc 4 157 17
	lw	a5,-60(s0)
	li	a4,-8
	sw	a4,0(a5)
	.loc 4 158 12
	li	a2,4
	lw	a1,-20(s0)
	lw	a0,-52(s0)
	call	fdt_offset_ptr
	sw	a0,-24(s0)
	.loc 4 159 8
	lw	a5,-24(s0)
	bne	a5,zero,.L49
	.loc 4 160 16
	li	a5,9
	j	.L50
.L49:
	.loc 4 161 11
	lw	a5,-24(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	sw	a0,-28(s0)
	.loc 4 162 12
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 4 164 17
	lw	a5,-60(s0)
	li	a4,-11
	sw	a4,0(a5)
	.loc 4 165 5
	lw	a4,-28(s0)
	li	a5,9
	beq	a4,a5,.L61
	lw	a4,-28(s0)
	li	a5,9
	bgtu	a4,a5,.L52
	lw	a4,-28(s0)
	li	a5,4
	beq	a4,a5,.L61
	lw	a4,-28(s0)
	li	a5,4
	bgtu	a4,a5,.L52
	lw	a4,-28(s0)
	li	a5,3
	beq	a4,a5,.L53
	lw	a4,-28(s0)
	li	a5,3
	bgtu	a4,a5,.L52
	lw	a4,-28(s0)
	li	a5,1
	beq	a4,a5,.L54
	lw	a4,-28(s0)
	li	a5,2
	beq	a4,a5,.L61
	j	.L52
.L54:
	.loc 4 169 17
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	li	a2,1
	mv	a1,a5
	lw	a0,-52(s0)
	call	fdt_offset_ptr
	sw	a0,-36(s0)
	.loc 4 170 20 discriminator 2
	lw	a5,-36(s0)
	beq	a5,zero,.L55
	.loc 4 170 24 discriminator 1
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 4 170 20 discriminator 1
	beq	a5,zero,.L55
	.loc 4 166 5
	nop
	j	.L54
.L55:
	.loc 4 171 12
	lw	a5,-36(s0)
	bne	a5,zero,.L62
	.loc 4 172 20
	li	a5,9
	j	.L50
.L53:
	.loc 4 176 16
	li	a2,4
	lw	a1,-20(s0)
	lw	a0,-52(s0)
	call	fdt_offset_ptr
	sw	a0,-32(s0)
	.loc 4 177 12
	lw	a5,-32(s0)
	bne	a5,zero,.L58
	.loc 4 178 20
	li	a5,9
	j	.L50
.L58:
	.loc 4 181 15
	lw	a5,-32(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 4 181 13 discriminator 1
	addi	a4,a5,8
	.loc 4 180 16
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 4 182 15
	lw	a5,-52(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 182 12 discriminator 1
	li	a5,15
	bgtu	a4,a5,.L63
	.loc 4 182 82 discriminator 2
	lw	a5,-32(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a4,a0
	.loc 4 182 79 discriminator 3
	li	a5,7
	bleu	a4,a5,.L63
	.loc 4 183 22
	lw	s1,-20(s0)
	.loc 4 183 24
	lw	a5,-32(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 4 183 22 discriminator 1
	sub	a5,s1,a5
	.loc 4 183 45 discriminator 1
	andi	a5,a5,7
	.loc 4 182 107 discriminator 4
	beq	a5,zero,.L63
	.loc 4 184 20
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 4 185 9
	j	.L63
.L52:
	.loc 4 193 16
	li	a5,9
	j	.L50
.L61:
	.loc 4 190 9
	nop
	j	.L57
.L62:
	.loc 4 173 9
	nop
	j	.L57
.L63:
	.loc 4 185 9
	nop
.L57:
	.loc 4 196 50
	lw	a4,-20(s0)
	lw	a5,-56(s0)
	sub	a5,a4,a5
	.loc 4 196 10
	mv	a2,a5
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	fdt_offset_ptr
	mv	a5,a0
	.loc 4 196 8 discriminator 1
	bne	a5,zero,.L60
	.loc 4 197 16
	li	a5,9
	j	.L50
.L60:
	.loc 4 199 53
	lw	a5,-20(s0)
	addi	a5,a5,3
	.loc 4 199 58
	andi	a4,a5,-4
	.loc 4 199 17
	lw	a5,-60(s0)
	sw	a4,0(a5)
	.loc 4 200 12
	lw	a5,-28(s0)
.L50:
	.loc 4 201 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE46:
	.size	fdt_next_tag, .-fdt_next_tag
	.section	.text.fdt_check_node_offset_,"ax",@progbits
	.align	1
	.globl	fdt_check_node_offset_
	.type	fdt_check_node_offset_, @function
fdt_check_node_offset_:
.LFB47:
	.loc 4 204 1
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
	.loc 4 205 17
	lw	a5,-24(s0)
	.loc 4 205 8
	blt	a5,zero,.L65
	.loc 4 205 33 discriminator 1
	lw	a5,-24(s0)
	andi	a5,a5,3
	.loc 4 205 22 discriminator 1
	bne	a5,zero,.L65
	.loc 4 206 13
	lw	a5,-24(s0)
	addi	a4,s0,-24
	mv	a2,a4
	mv	a1,a5
	lw	a0,-20(s0)
	call	fdt_next_tag
	mv	a4,a0
	.loc 4 206 9 discriminator 1
	li	a5,1
	beq	a4,a5,.L66
.L65:
	.loc 4 207 16
	li	a5,-4
	j	.L67
.L66:
	.loc 4 209 12
	lw	a5,-24(s0)
.L67:
	.loc 4 210 1
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
.LFE47:
	.size	fdt_check_node_offset_, .-fdt_check_node_offset_
	.section	.text.fdt_check_prop_offset_,"ax",@progbits
	.align	1
	.globl	fdt_check_prop_offset_
	.type	fdt_check_prop_offset_, @function
fdt_check_prop_offset_:
.LFB48:
	.loc 4 213 1
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
	.loc 4 214 17
	lw	a5,-24(s0)
	.loc 4 214 8
	blt	a5,zero,.L69
	.loc 4 214 33 discriminator 1
	lw	a5,-24(s0)
	andi	a5,a5,3
	.loc 4 214 22 discriminator 1
	bne	a5,zero,.L69
	.loc 4 215 13
	lw	a5,-24(s0)
	addi	a4,s0,-24
	mv	a2,a4
	mv	a1,a5
	lw	a0,-20(s0)
	call	fdt_next_tag
	mv	a4,a0
	.loc 4 215 9 discriminator 1
	li	a5,3
	beq	a4,a5,.L70
.L69:
	.loc 4 216 16
	li	a5,-4
	j	.L71
.L70:
	.loc 4 218 12
	lw	a5,-24(s0)
.L71:
	.loc 4 219 1
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
.LFE48:
	.size	fdt_check_prop_offset_, .-fdt_check_prop_offset_
	.section	.text.fdt_next_node,"ax",@progbits
	.align	1
	.globl	fdt_next_node
	.type	fdt_next_node, @function
fdt_next_node:
.LFB49:
	.loc 4 222 1
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
	.loc 4 223 9
	sw	zero,-24(s0)
	.loc 4 226 8
	lw	a5,-40(s0)
	blt	a5,zero,.L84
	.loc 4 227 27
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_check_node_offset_
	mv	a5,a0
	.loc 4 227 25 discriminator 1
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	.loc 4 227 12 discriminator 1
	bge	a5,zero,.L84
	.loc 4 228 20
	lw	a5,-24(s0)
	j	.L85
.L84:
	.loc 4 231 16
	lw	a5,-24(s0)
	sw	a5,-40(s0)
	.loc 4 232 15
	addi	a5,s0,-24
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_next_tag
	sw	a0,-20(s0)
	.loc 4 234 9
	lw	a4,-20(s0)
	li	a5,9
	beq	a4,a5,.L75
	lw	a4,-20(s0)
	li	a5,9
	bgtu	a4,a5,.L76
	lw	a4,-20(s0)
	li	a5,4
	bgtu	a4,a5,.L76
	lw	a4,-20(s0)
	li	a5,3
	bgeu	a4,a5,.L86
	lw	a4,-20(s0)
	li	a5,1
	beq	a4,a5,.L78
	lw	a4,-20(s0)
	li	a5,2
	beq	a4,a5,.L79
	j	.L76
.L78:
	.loc 4 240 16
	lw	a5,-44(s0)
	beq	a5,zero,.L87
	.loc 4 241 18
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 4 241 25
	addi	a4,a5,1
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 4 242 13
	j	.L87
.L79:
	.loc 4 245 16
	lw	a5,-44(s0)
	beq	a5,zero,.L88
	.loc 4 245 31 discriminator 1
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 4 245 28 discriminator 1
	addi	a4,a5,-1
	.loc 4 245 23 discriminator 1
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 4 245 31 discriminator 1
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 4 245 23 discriminator 1
	bge	a5,zero,.L88
	.loc 4 246 24
	lw	a5,-24(s0)
	j	.L85
.L75:
	.loc 4 250 29
	lw	a5,-24(s0)
	.loc 4 250 16
	bge	a5,zero,.L82
	.loc 4 251 33
	lw	a4,-24(s0)
	.loc 4 251 17
	li	a5,-8
	bne	a4,a5,.L83
	.loc 4 251 40 discriminator 1
	lw	a5,-44(s0)
	bne	a5,zero,.L83
.L82:
	.loc 4 252 24
	li	a5,-1
	j	.L85
.L83:
	.loc 4 254 24
	lw	a5,-24(s0)
	j	.L85
.L86:
	.loc 4 237 13
	nop
	j	.L76
.L87:
	.loc 4 242 13
	nop
	j	.L76
.L88:
	.loc 4 247 13
	nop
.L76:
	.loc 4 256 18
	lw	a4,-20(s0)
	li	a5,1
	bne	a4,a5,.L84
	.loc 4 258 12
	lw	a5,-40(s0)
.L85:
	.loc 4 259 1
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
	.size	fdt_next_node, .-fdt_next_node
	.section	.text.fdt_first_subnode,"ax",@progbits
	.align	1
	.globl	fdt_first_subnode
	.type	fdt_first_subnode, @function
fdt_first_subnode:
.LFB50:
	.loc 4 262 1
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
	.loc 4 263 9
	sw	zero,-20(s0)
	.loc 4 265 14
	addi	a5,s0,-20
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_next_node
	sw	a0,-40(s0)
	.loc 4 266 8
	lw	a5,-40(s0)
	blt	a5,zero,.L90
	.loc 4 266 29 discriminator 1
	lw	a4,-20(s0)
	.loc 4 266 20 discriminator 1
	li	a5,1
	beq	a4,a5,.L91
.L90:
	.loc 4 267 16
	li	a5,-1
	j	.L93
.L91:
	.loc 4 269 12
	lw	a5,-40(s0)
.L93:
	.loc 4 270 1
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
	.size	fdt_first_subnode, .-fdt_first_subnode
	.section	.text.fdt_next_subnode,"ax",@progbits
	.align	1
	.globl	fdt_next_subnode
	.type	fdt_next_subnode, @function
fdt_next_subnode:
.LFB51:
	.loc 4 273 1
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
	.loc 4 274 9
	li	a5,1
	sw	a5,-20(s0)
.L98:
	.loc 4 281 18
	addi	a5,s0,-20
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_next_node
	sw	a0,-40(s0)
	.loc 4 282 12
	lw	a5,-40(s0)
	blt	a5,zero,.L95
	.loc 4 282 33 discriminator 1
	lw	a5,-20(s0)
	.loc 4 282 24 discriminator 1
	bgt	a5,zero,.L96
.L95:
	.loc 4 283 20
	li	a5,-1
	j	.L99
.L96:
	.loc 4 284 20
	lw	a4,-20(s0)
	li	a5,1
	bgt	a4,a5,.L98
	.loc 4 286 12
	lw	a5,-40(s0)
.L99:
	.loc 4 287 1
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
.LFE51:
	.size	fdt_next_subnode, .-fdt_next_subnode
	.section	.text.fdt_find_string_,"ax",@progbits
	.align	1
	.globl	fdt_find_string_
	.type	fdt_find_string_, @function
fdt_find_string_:
.LFB52:
	.loc 4 290 1
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
	.loc 4 291 15
	lw	a0,-44(s0)
	call	strlen
	mv	a5,a0
	.loc 4 291 25 discriminator 1
	addi	a5,a5,1
	.loc 4 291 9 discriminator 1
	sw	a5,-24(s0)
	.loc 4 292 41
	lw	a4,-40(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 4 292 17
	lw	a4,-36(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 4 295 12
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 4 295 5
	j	.L101
.L104:
	.loc 4 296 13
	lw	a5,-24(s0)
	mv	a2,a5
	lw	a1,-44(s0)
	lw	a0,-20(s0)
	call	memcmp
	mv	a5,a0
	.loc 4 296 12 discriminator 1
	bne	a5,zero,.L102
	.loc 4 297 20
	lw	a5,-20(s0)
	j	.L103
.L102:
	.loc 4 295 34 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L101:
	.loc 4 295 24 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	bleu	a4,a5,.L104
	.loc 4 298 11
	li	a5,0
.L103:
	.loc 4 299 1
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
	.size	fdt_find_string_, .-fdt_find_string_
	.section	.text.fdt_move,"ax",@progbits
	.align	1
	.globl	fdt_move
	.type	fdt_move, @function
fdt_move:
.LFB53:
	.loc 4 302 1
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
.LBB2:
	.loc 4 303 29
	lw	a0,-36(s0)
	call	fdt_ro_probe_
	sw	a0,-20(s0)
	.loc 4 303 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L106
	.loc 4 303 62 discriminator 2
	lw	a5,-20(s0)
	.loc 4 303 62 is_stmt 0
	j	.L107
.L106:
.LBE2:
	.loc 4 305 11 is_stmt 1
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 305 70 discriminator 1
	lw	a5,-44(s0)
	.loc 4 305 8 discriminator 1
	bleu	a4,a5,.L108
	.loc 4 306 16
	li	a5,-3
	j	.L107
.L108:
	.loc 4 308 25
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 308 5 discriminator 1
	mv	a2,a5
	lw	a1,-36(s0)
	lw	a0,-40(s0)
	call	memmove
	.loc 4 309 12
	li	a5,0
.L107:
	.loc 4 310 1
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
	.size	fdt_move, .-fdt_move
	.text
.Letext0:
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/fdt.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6ab
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.4byte	.LASF8
	.byte	0x5
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0xb
	.4byte	.LASF9
	.byte	0x6
	.byte	0x2e
	.byte	0x17
	.4byte	0x79
	.uleb128 0xf
	.4byte	0x68
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0xb
	.4byte	.LASF12
	.byte	0x6
	.byte	0x34
	.byte	0x1b
	.4byte	0x93
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x16
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0xf
	.4byte	0xa3
	.uleb128 0x9
	.4byte	0xaa
	.uleb128 0x9
	.4byte	0xb9
	.uleb128 0x17
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x63
	.byte	0x12
	.4byte	0x87
	.uleb128 0xf
	.4byte	0xba
	.uleb128 0x18
	.4byte	.LASF63
	.byte	0x28
	.byte	0x7
	.byte	0x57
	.byte	0x8
	.4byte	0x147
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x58
	.4byte	0xba
	.byte	0
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x59
	.4byte	0xba
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x5a
	.4byte	0xba
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5b
	.4byte	0xba
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5c
	.4byte	0xba
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5d
	.4byte	0xba
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5e
	.4byte	0xba
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x61
	.4byte	0xba
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x64
	.4byte	0xba
	.byte	0x20
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x67
	.4byte	0xba
	.byte	0x24
	.byte	0
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x20
	.byte	0x8
	.4byte	0xa1
	.4byte	0x166
	.uleb128 0x5
	.4byte	0xa1
	.uleb128 0x5
	.4byte	0xb4
	.uleb128 0x5
	.4byte	0x32
	.byte	0
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x1e
	.byte	0x5
	.4byte	0x2b
	.4byte	0x185
	.uleb128 0x5
	.4byte	0xb4
	.uleb128 0x5
	.4byte	0xb4
	.uleb128 0x5
	.4byte	0x32
	.byte	0
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x29
	.byte	0x8
	.4byte	0x32
	.4byte	0x19a
	.uleb128 0x5
	.4byte	0xaf
	.byte	0
	.uleb128 0xc
	.4byte	.LASF31
	.2byte	0x12d
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fd
	.uleb128 0x7
	.string	"fdt"
	.byte	0x4
	.2byte	0x12d
	.byte	0x1a
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"buf"
	.byte	0x4
	.2byte	0x12d
	.byte	0x25
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.4byte	.LASF30
	.2byte	0x12d
	.byte	0x2e
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0xd
	.4byte	.LASF35
	.2byte	0x12f
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF32
	.2byte	0x121
	.byte	0xd
	.4byte	0xaf
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26f
	.uleb128 0xa
	.4byte	.LASF33
	.2byte	0x121
	.byte	0x2a
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF34
	.2byte	0x121
	.byte	0x36
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"s"
	.byte	0x4
	.2byte	0x121
	.byte	0x4b
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.string	"len"
	.2byte	0x123
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LASF36
	.2byte	0x124
	.byte	0x11
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.string	"p"
	.2byte	0x125
	.byte	0x11
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF37
	.2byte	0x110
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b8
	.uleb128 0x7
	.string	"fdt"
	.byte	0x4
	.2byte	0x110
	.byte	0x22
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF38
	.2byte	0x110
	.byte	0x2b
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.4byte	.LASF39
	.2byte	0x112
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF40
	.2byte	0x105
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x301
	.uleb128 0x7
	.string	"fdt"
	.byte	0x4
	.2byte	0x105
	.byte	0x23
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF38
	.2byte	0x105
	.byte	0x2c
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.4byte	.LASF39
	.2byte	0x107
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0xdd
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x365
	.uleb128 0x2
	.string	"fdt"
	.byte	0x4
	.byte	0xdd
	.byte	0x1f
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x4
	.byte	0xdd
	.byte	0x28
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x4
	.byte	0xdd
	.byte	0x35
	.4byte	0x365
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0xdf
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"tag"
	.byte	0x4
	.byte	0xe0
	.byte	0xe
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x2b
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0xd4
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a2
	.uleb128 0x2
	.string	"fdt"
	.byte	0x4
	.byte	0xd4
	.byte	0x28
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x4
	.byte	0xd4
	.byte	0x31
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0xcb
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3da
	.uleb128 0x2
	.string	"fdt"
	.byte	0x4
	.byte	0xcb
	.byte	0x28
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x4
	.byte	0xcb
	.byte	0x31
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x96
	.byte	0xa
	.4byte	0x87
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x467
	.uleb128 0x2
	.string	"fdt"
	.byte	0x4
	.byte	0x96
	.byte	0x23
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x4
	.byte	0x96
	.byte	0x2c
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x4
	.byte	0x96
	.byte	0x3e
	.4byte	0x365
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x98
	.byte	0x14
	.4byte	0x467
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x98
	.byte	0x1b
	.4byte	0x467
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.string	"tag"
	.byte	0x4
	.byte	0x99
	.byte	0xe
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x9a
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"p"
	.byte	0x4
	.byte	0x9b
	.byte	0x11
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x9
	.4byte	0xc6
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x85
	.byte	0xd
	.4byte	0xb4
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c1
	.uleb128 0x2
	.string	"fdt"
	.byte	0x4
	.byte	0x85
	.byte	0x28
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x4
	.byte	0x85
	.byte	0x31
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"len"
	.byte	0x4
	.byte	0x85
	.byte	0x46
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x87
	.byte	0xe
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x5c
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f8
	.uleb128 0x2
	.string	"fdt"
	.byte	0x4
	.byte	0x5c
	.byte	0x22
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x5e
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF53
	.byte	0x4
	.byte	0x4e
	.byte	0x8
	.4byte	0x32
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x522
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x4
	.byte	0x4e
	.byte	0x22
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x4
	.byte	0x42
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x579
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x4
	.byte	0x42
	.byte	0x22
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x4
	.byte	0x42
	.byte	0x34
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x4
	.byte	0x43
	.byte	0x16
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x4
	.byte	0x43
	.byte	0x25
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x13
	.4byte	.LASF57
	.byte	0x4
	.byte	0x3d
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c1
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x4
	.byte	0x3d
	.byte	0x20
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x4
	.byte	0x3d
	.byte	0x32
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"off"
	.byte	0x4
	.byte	0x3d
	.byte	0x46
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0x2a
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ea
	.uleb128 0x2
	.string	"fdt"
	.byte	0x4
	.byte	0x2a
	.byte	0x1f
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x3
	.byte	0x64
	.byte	0x1b
	.4byte	0xb4
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x623
	.uleb128 0x2
	.string	"fdt"
	.byte	0x3
	.byte	0x64
	.byte	0x37
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x3
	.byte	0x64
	.byte	0x40
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF60
	.byte	0x2
	.2byte	0x138
	.byte	0x16
	.4byte	0x32
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x64f
	.uleb128 0x7
	.string	"fdt"
	.byte	0x2
	.2byte	0x138
	.byte	0x32
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x2
	.byte	0xc1
	.byte	0x18
	.4byte	0x87
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x685
	.uleb128 0x2
	.string	"p"
	.byte	0x2
	.byte	0xc1
	.byte	0x30
	.4byte	0x467
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.string	"bp"
	.byte	0x2
	.byte	0xc3
	.byte	0x14
	.4byte	0x685
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x74
	.uleb128 0x1c
	.4byte	.LASF64
	.byte	0x1
	.byte	0x78
	.byte	0x18
	.4byte	0x87
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.string	"x"
	.byte	0x1
	.byte	0x78
	.byte	0x2d
	.4byte	0xba
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.sleb128 8
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
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x12
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x1b
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
	.4byte	0xa4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
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
	.4byte	.LFB3
	.uleb128 .LFE3-.LFB3
	.byte	0x7
	.4byte	.LFB8
	.uleb128 .LFE8-.LFB8
	.byte	0x7
	.4byte	.LFB20
	.uleb128 .LFE20-.LFB20
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF48:
	.string	"lenp"
.LASF8:
	.string	"size_t"
.LASF34:
	.string	"tabsize"
.LASF53:
	.string	"fdt_header_size_"
.LASF18:
	.string	"totalsize"
.LASF14:
	.string	"long long unsigned int"
.LASF23:
	.string	"last_comp_version"
.LASF3:
	.string	"long long int"
.LASF5:
	.string	"signed char"
.LASF55:
	.string	"size"
.LASF64:
	.string	"fdt32_to_cpu"
.LASF40:
	.string	"fdt_first_subnode"
.LASF7:
	.string	"long int"
.LASF44:
	.string	"fdt_check_node_offset_"
.LASF30:
	.string	"bufsize"
.LASF51:
	.string	"fdt_check_header"
.LASF47:
	.string	"tagp"
.LASF37:
	.string	"fdt_next_subnode"
.LASF52:
	.string	"hdrsize"
.LASF2:
	.string	"unsigned int"
.LASF29:
	.string	"strlen"
.LASF33:
	.string	"strtab"
.LASF13:
	.string	"long unsigned int"
.LASF20:
	.string	"off_dt_strings"
.LASF50:
	.string	"absoffset"
.LASF11:
	.string	"short unsigned int"
.LASF39:
	.string	"depth"
.LASF56:
	.string	"check_block_"
.LASF36:
	.string	"last"
.LASF54:
	.string	"base"
.LASF26:
	.string	"size_dt_struct"
.LASF22:
	.string	"version"
.LASF57:
	.string	"check_off_"
.LASF4:
	.string	"long double"
.LASF31:
	.string	"fdt_move"
.LASF19:
	.string	"off_dt_struct"
.LASF25:
	.string	"size_dt_strings"
.LASF10:
	.string	"unsigned char"
.LASF21:
	.string	"off_mem_rsvmap"
.LASF6:
	.string	"short int"
.LASF17:
	.string	"magic"
.LASF32:
	.string	"fdt_find_string_"
.LASF12:
	.string	"uint32_t"
.LASF42:
	.string	"nextoffset"
.LASF15:
	.string	"char"
.LASF28:
	.string	"memcmp"
.LASF58:
	.string	"fdt_ro_probe_"
.LASF38:
	.string	"offset"
.LASF62:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF63:
	.string	"fdt_header"
.LASF60:
	.string	"fdt_header_size"
.LASF46:
	.string	"startoffset"
.LASF27:
	.string	"memmove"
.LASF41:
	.string	"fdt_next_node"
.LASF9:
	.string	"uint8_t"
.LASF24:
	.string	"boot_cpuid_phys"
.LASF61:
	.string	"fdt32_ld"
.LASF35:
	.string	"err_"
.LASF59:
	.string	"fdt_offset_ptr_"
.LASF49:
	.string	"fdt_offset_ptr"
.LASF45:
	.string	"fdt_next_tag"
.LASF16:
	.string	"fdt32_t"
.LASF43:
	.string	"fdt_check_prop_offset_"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blfdt"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
