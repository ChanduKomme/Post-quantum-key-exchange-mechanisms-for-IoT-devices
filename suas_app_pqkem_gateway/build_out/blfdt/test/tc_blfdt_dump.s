	.file	"tc_blfdt_dump.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blfdt" "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/test/tc_blfdt_dump.c"
	.section	.text.fdt32_to_cpu,"ax",@progbits
	.align	1
	.type	fdt32_to_cpu, @function
fdt32_to_cpu:
.LFB7:
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
.LFE7:
	.size	fdt32_to_cpu, .-fdt32_to_cpu
	.section	.text.cpu_to_fdt32,"ax",@progbits
	.align	1
	.type	cpu_to_fdt32, @function
cpu_to_fdt32:
.LFB8:
	.loc 1 125 1
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
	.loc 1 126 57
	addi	a5,s0,-20
	.loc 1 126 60
	lbu	a5,0(a5)
	.loc 1 126 65
	slli	a4,a5,24
	.loc 1 126 111
	addi	a5,s0,-20
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 126 116
	slli	a5,a5,16
	.loc 1 126 72
	or	a4,a4,a5
	.loc 1 126 162
	addi	a5,s0,-20
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 126 167
	slli	a5,a5,8
	.loc 1 126 123
	or	a4,a4,a5
	.loc 1 126 211
	addi	a5,s0,-20
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 126 12
	or	a5,a4,a5
	.loc 1 127 1
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
	.size	cpu_to_fdt32, .-cpu_to_fdt32
	.section	.text.fdt64_to_cpu,"ax",@progbits
	.align	1
	.type	fdt64_to_cpu, @function
fdt64_to_cpu:
.LFB9:
	.loc 1 130 1
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	ra,156(sp)
	sw	s0,152(sp)
	sw	s2,148(sp)
	sw	s3,144(sp)
	sw	s4,140(sp)
	sw	s5,136(sp)
	sw	s6,132(sp)
	sw	s7,128(sp)
	sw	s8,124(sp)
	sw	s9,120(sp)
	sw	s10,116(sp)
	sw	s11,112(sp)
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
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	.loc 1 131 58
	addi	a5,s0,-56
	.loc 1 131 61
	lbu	a5,0(a5)
	.loc 1 131 26
	mv	t3,a5
	li	t4,0
	.loc 1 131 66
	slli	t6,t3,24
	li	t5,0
	.loc 1 131 112
	addi	a5,s0,-56
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 131 77
	sw	a5,-64(s0)
	sw	zero,-60(s0)
	.loc 1 131 117
	lw	a5,-64(s0)
	slli	a3,a5,16
	li	a2,0
	.loc 1 131 73
	or	a5,t5,a2
	sw	a5,-72(s0)
	or	a5,t6,a3
	sw	a5,-68(s0)
	.loc 1 131 163
	addi	a5,s0,-56
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 131 128
	sw	a5,-80(s0)
	sw	zero,-76(s0)
	.loc 1 131 168
	lw	a5,-80(s0)
	slli	a5,a5,8
	sw	a5,-84(s0)
	sw	zero,-88(s0)
	.loc 1 131 124
	lw	a2,-72(s0)
	lw	a3,-68(s0)
	mv	a1,a2
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	mv	a0,a4
	or	a1,a1,a0
	sw	a1,-96(s0)
	or	a5,a3,a5
	sw	a5,-92(s0)
	.loc 1 131 214
	addi	a5,s0,-56
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 131 179
	sw	a5,-104(s0)
	sw	zero,-100(s0)
	.loc 1 131 219
	lw	a5,-104(s0)
	slli	a5,a5,0
	sw	a5,-108(s0)
	sw	zero,-112(s0)
	.loc 1 131 175
	lw	a2,-96(s0)
	lw	a3,-92(s0)
	mv	a1,a2
	lw	a4,-112(s0)
	lw	a5,-108(s0)
	mv	a0,a4
	or	s10,a1,a0
	or	s11,a3,a5
	.loc 1 131 265
	addi	a5,s0,-56
	addi	a5,a5,4
	lbu	a5,0(a5)
	.loc 1 131 230
	sw	a5,-120(s0)
	sw	zero,-116(s0)
	.loc 1 131 270
	lw	a4,-120(s0)
	lw	a5,-116(s0)
	mv	a3,a4
	srli	s9,a3,8
	mv	a5,a4
	slli	s8,a5,24
	.loc 1 131 226
	or	s6,s10,s8
	or	s7,s11,s9
	.loc 1 131 316
	addi	a5,s0,-56
	addi	a5,a5,5
	lbu	a5,0(a5)
	.loc 1 131 281
	sw	a5,-128(s0)
	sw	zero,-124(s0)
	.loc 1 131 321
	lw	a3,-128(s0)
	lw	a4,-124(s0)
	mv	a5,a3
	srli	a5,a5,16
	mv	a2,a4
	slli	t2,a2,16
	add	t2,a5,t2
	mv	a5,a3
	slli	t1,a5,16
	.loc 1 131 277
	or	s4,s6,t1
	or	s5,s7,t2
	.loc 1 131 367
	addi	a5,s0,-56
	addi	a5,a5,6
	lbu	a5,0(a5)
	.loc 1 131 332
	sw	a5,-136(s0)
	sw	zero,-132(s0)
	.loc 1 131 372
	lw	a3,-136(s0)
	lw	a4,-132(s0)
	mv	a5,a3
	srli	a5,a5,24
	mv	a2,a4
	slli	a7,a2,8
	add	a7,a5,a7
	mv	a5,a3
	slli	a6,a5,8
	.loc 1 131 328
	or	s2,s4,a6
	or	s3,s5,a7
	.loc 1 131 416
	addi	a5,s0,-56
	addi	a5,a5,7
	lbu	a5,0(a5)
	.loc 1 131 381
	sw	a5,-144(s0)
	sw	zero,-140(s0)
	.loc 1 131 12
	lw	a5,-144(s0)
	lw	a6,-140(s0)
	mv	a4,a5
	or	a4,s2,a4
	sw	a4,-152(s0)
	mv	a5,a6
	or	a5,s3,a5
	sw	a5,-148(s0)
	.loc 1 131 12 is_stmt 0 discriminator 1
	lw	a4,-152(s0)
	lw	a5,-148(s0)
	.loc 1 132 1 is_stmt 1
	mv	a0,a4
	mv	a1,a5
	lw	ra,156(sp)
	.cfi_restore 1
	lw	s0,152(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	lw	s2,148(sp)
	.cfi_restore 18
	lw	s3,144(sp)
	.cfi_restore 19
	lw	s4,140(sp)
	.cfi_restore 20
	lw	s5,136(sp)
	.cfi_restore 21
	lw	s6,132(sp)
	.cfi_restore 22
	lw	s7,128(sp)
	.cfi_restore 23
	lw	s8,124(sp)
	.cfi_restore 24
	lw	s9,120(sp)
	.cfi_restore 25
	lw	s10,116(sp)
	.cfi_restore 26
	lw	s11,112(sp)
	.cfi_restore 27
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	fdt64_to_cpu, .-fdt64_to_cpu
	.section	.text.fdt32_ld,"ax",@progbits
	.align	1
	.type	fdt32_ld, @function
fdt32_ld:
.LFB12:
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
.LFE12:
	.size	fdt32_ld, .-fdt32_ld
	.section	.text.fdt_set_magic,"ax",@progbits
	.align	1
	.type	fdt_set_magic, @function
fdt_set_magic:
.LFB14:
	.loc 2 295 59
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
	.loc 2 295 80
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 2 295 127
	lw	a0,-40(s0)
	call	cpu_to_fdt32
	mv	a4,a0
	.loc 2 295 125 discriminator 1
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 2 295 146
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
.LFE14:
	.size	fdt_set_magic, .-fdt_set_magic
	.section	.rodata
	.align	2
.LC0:
	.string	"FDT_???"
	.section	.text.tagname,"ax",@progbits
	.align	1
	.type	tagname, @function
tagname:
.LFB41:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/test/tc_blfdt_dump.c"
	.loc 3 57 1
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
	.loc 3 67 8
	lw	a4,-20(s0)
	li	a5,9
	bgtu	a4,a5,.L11
	.loc 3 68 18
	lui	a5,%hi(names.0)
	addi	a4,a5,%lo(names.0)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 3 68 12
	beq	a5,zero,.L11
	.loc 3 69 25
	lui	a5,%hi(names.0)
	addi	a4,a5,%lo(names.0)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	j	.L12
.L11:
	.loc 3 73 12
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
.L12:
	.loc 3 74 1
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
	.size	tagname, .-tagname
	.section	.text.util_is_printable_string,"ax",@progbits
	.align	1
	.globl	util_is_printable_string
	.type	util_is_printable_string, @function
util_is_printable_string:
.LFB42:
	.loc 3 80 1
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
	.loc 3 81 17
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 3 85 8
	lw	a5,-40(s0)
	bne	a5,zero,.L14
	.loc 3 86 16
	li	a5,0
	j	.L15
.L14:
	.loc 3 90 10
	lw	a5,-40(s0)
	addi	a5,a5,-1
	lw	a4,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 3 90 8
	beq	a5,zero,.L16
	.loc 3 91 16
	li	a5,0
	j	.L15
.L16:
	.loc 3 94 12
	lw	a5,-40(s0)
	.loc 3 94 8
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 96 11
	j	.L17
.L23:
	.loc 3 97 12
	lw	a5,-20(s0)
	sw	a5,-28(s0)
	.loc 3 98 15
	j	.L18
.L20:
	.loc 3 99 14
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L18:
	.loc 3 98 29
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bgeu	a4,a5,.L19
	.loc 3 98 26 discriminator 1
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 3 98 23 discriminator 1
	beq	a5,zero,.L19
	.loc 3 98 46 discriminator 2
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 3 98 34 discriminator 2
	addi	a4,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 3 98 34 discriminator 2
	andi	a5,a5,151
	.loc 3 98 29 discriminator 2
	bne	a5,zero,.L20
.L19:
	.loc 3 103 13
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 3 103 12
	bne	a5,zero,.L21
	.loc 3 103 24 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	bne	a4,a5,.L22
.L21:
	.loc 3 104 20
	li	a5,0
	j	.L15
.L22:
	.loc 3 107 10
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L17:
	.loc 3 96 14
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L23
	.loc 3 110 12
	li	a5,1
.L15:
	.loc 3 111 1
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
	.size	util_is_printable_string, .-util_is_printable_string
	.section	.rodata
	.align	2
.LC1:
	.string	" = "
	.align	2
.LC2:
	.string	"\"%s\""
	.align	2
.LC3:
	.string	", "
	.align	2
.LC4:
	.string	" = <"
	.align	2
.LC5:
	.string	" "
	.align	2
.LC6:
	.string	""
	.align	2
.LC7:
	.string	"0x%08x%s"
	.align	2
.LC8:
	.string	">"
	.align	2
.LC9:
	.string	" = ["
	.align	2
.LC10:
	.string	"%02x%s"
	.align	2
.LC11:
	.string	"]"
	.section	.text.utilfdt_print_data,"ax",@progbits
	.align	1
	.globl	utilfdt_print_data
	.type	utilfdt_print_data, @function
utilfdt_print_data:
.LFB43:
	.loc 3 114 1
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
	.loc 3 119 8
	lw	a5,-40(s0)
	beq	a5,zero,.L39
	.loc 3 123 9
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	util_is_printable_string
	mv	a5,a0
	.loc 3 123 8 discriminator 1
	beq	a5,zero,.L27
	.loc 3 124 9
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	.loc 3 126 11
	lw	a5,-36(s0)
	sw	a5,-24(s0)
.L29:
	.loc 3 128 13
	lw	a1,-24(s0)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	.loc 3 129 18
	lw	a0,-24(s0)
	call	strlen
	mv	a5,a0
	.loc 3 129 28 discriminator 1
	addi	a5,a5,1
	.loc 3 129 15 discriminator 1
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 130 26
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 3 130 16
	lw	a4,-24(s0)
	bgeu	a4,a5,.L28
	.loc 3 131 17
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
.L28:
	.loc 3 132 27
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 3 132 20
	lw	a4,-24(s0)
	bltu	a4,a5,.L29
	j	.L24
.L27:
	.loc 3 134 26
	lw	a5,-40(s0)
	andi	a5,a5,3
	.loc 3 134 15
	bne	a5,zero,.L30
.LBB11:
	.loc 3 135 24
	lw	a5,-36(s0)
	sw	a5,-32(s0)
	.loc 3 137 9
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
	.loc 3 138 16
	sw	zero,-20(s0)
	.loc 3 138 25
	lw	a5,-40(s0)
	srai	a4,a5,31
	andi	a4,a4,3
	add	a5,a4,a5
	srai	a5,a5,2
	sw	a5,-40(s0)
	.loc 3 138 9
	j	.L31
.L34:
	.loc 3 139 63
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-32(s0)
	add	a5,a4,a5
	.loc 3 139 46
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a3,a0
	.loc 3 140 29
	lw	a5,-40(s0)
	addi	a5,a5,-1
	.loc 3 139 13
	lw	a4,-20(s0)
	bge	a4,a5,.L32
	.loc 3 139 13 is_stmt 0 discriminator 2
	lui	a5,%hi(.LC5)
	addi	a5,a5,%lo(.LC5)
	j	.L33
.L32:
	.loc 3 139 13 discriminator 3
	lui	a5,%hi(.LC6)
	addi	a5,a5,%lo(.LC6)
.L33:
	.loc 3 139 13 discriminator 5
	mv	a2,a5
	mv	a1,a3
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
	.loc 3 138 41 is_stmt 1 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L31:
	.loc 3 138 33 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	blt	a4,a5,.L34
	.loc 3 142 9
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	printf
.LBE11:
	j	.L24
.L30:
.LBB12:
	.loc 3 144 30
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	.loc 3 145 9
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	printf
	.loc 3 146 16
	sw	zero,-20(s0)
	.loc 3 146 9
	j	.L35
.L38:
	.loc 3 147 32
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 3 147 30
	lbu	a5,0(a5)
	.loc 3 147 13
	mv	a3,a5
	.loc 3 147 44
	lw	a5,-40(s0)
	addi	a5,a5,-1
	.loc 3 147 13
	lw	a4,-20(s0)
	bge	a4,a5,.L36
	.loc 3 147 13 is_stmt 0 discriminator 1
	lui	a5,%hi(.LC5)
	addi	a5,a5,%lo(.LC5)
	j	.L37
.L36:
	.loc 3 147 13 discriminator 2
	lui	a5,%hi(.LC6)
	addi	a5,a5,%lo(.LC6)
.L37:
	.loc 3 147 13 discriminator 4
	mv	a2,a5
	mv	a1,a3
	lui	a5,%hi(.LC10)
	addi	a0,a5,%lo(.LC10)
	call	printf
	.loc 3 146 31 is_stmt 1 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L35:
	.loc 3 146 23 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	blt	a4,a5,.L38
	.loc 3 149 9
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	printf
	j	.L24
.L39:
.LBE12:
	.loc 3 120 9
	nop
.L24:
	.loc 3 151 1
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
	.size	utilfdt_print_data, .-utilfdt_print_data
	.section	.rodata
	.align	2
.LC12:
	.string	"/dts-v1/;\r\n"
	.align	2
.LC13:
	.string	"// magic:\t\t0x%lx\r\n"
	.align	2
.LC14:
	.string	"// totalsize:\t\t0x%lx (%lu)\r\n"
	.align	2
.LC15:
	.string	"// off_dt_struct:\t0x%lx\r\n"
	.align	2
.LC16:
	.string	"// off_dt_strings:\t0x%lx\r\n"
	.align	2
.LC17:
	.string	"// off_mem_rsvmap:\t0x%lx\r\n"
	.align	2
.LC18:
	.string	"// version:\t\t%lu\r\n"
	.align	2
.LC19:
	.string	"// last_comp_version:\t%lu\r\n"
	.align	2
.LC20:
	.string	"// boot_cpuid_phys:\t0x%lx\r\n"
	.align	2
.LC21:
	.string	"// size_dt_strings:\t0x%lx\r\n"
	.align	2
.LC22:
	.string	"// size_dt_struct:\t0x%lx\r\n"
	.align	2
.LC23:
	.string	"\r\n"
	.align	2
.LC24:
	.string	"// %04x: tag: 0x%08lx (%s)\r\n"
	.align	2
.LC25:
	.string	"/"
	.align	2
.LC26:
	.string	"%*s%s {\r\n"
	.align	2
.LC27:
	.string	"%*s};\r\n"
	.align	2
.LC28:
	.string	"%*s// [NOP]\r\n"
	.align	2
.LC29:
	.string	"tc_blfdt_dump.c"
	.align	2
.LC30:
	.string	"\033[31mERROR \033[0m"
	.align	2
.LC31:
	.string	"[%10u][%s: %s:%4d] %*s ** Unknown tag 0x%08lx\r\n"
	.align	2
.LC32:
	.string	"// %04x: string: %s\r\n"
	.align	2
.LC33:
	.string	"// %04x: value\r\n"
	.align	2
.LC34:
	.string	"%*s%s"
	.align	2
.LC35:
	.string	";\r\n"
	.section	.text.dump_blob,"ax",@progbits
	.align	1
	.type	dump_blob, @function
dump_blob:
.LFB44:
	.loc 3 154 1
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
	mv	a5,a1
	sb	a5,-117(s0)
	.loc 3 155 15
	lw	a5,-116(s0)
	sw	a5,-36(s0)
	.loc 3 156 24
	lw	a5,-116(s0)
	sw	a5,-40(s0)
	.loc 3 157 31
	lw	a5,-40(s0)
	lw	a5,16(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	sw	a0,-44(s0)
	.loc 3 158 23
	lw	a5,-40(s0)
	lw	a5,8(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	sw	a0,-48(s0)
	.loc 3 159 24
	lw	a5,-40(s0)
	lw	a5,12(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	sw	a0,-52(s0)
	.loc 3 160 31
	lw	a4,-116(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	sw	a5,-56(s0)
	.loc 3 162 17
	lw	a4,-116(s0)
	lw	a5,-48(s0)
	add	a5,a4,a5
	sw	a5,-60(s0)
	.loc 3 163 17
	lw	a4,-116(s0)
	lw	a5,-52(s0)
	add	a5,a4,a5
	sw	a5,-64(s0)
	.loc 3 164 24
	lw	a5,-40(s0)
	lw	a5,20(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	sw	a0,-68(s0)
	.loc 3 165 26
	lw	a5,-40(s0)
	lw	a5,4(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	sw	a0,-72(s0)
	.loc 3 172 11
	sw	zero,-28(s0)
	.loc 3 173 11
	li	a5,4
	sw	a5,-76(s0)
	.loc 3 175 5
	lui	a5,%hi(.LC12)
	addi	a0,a5,%lo(.LC12)
	call	printf
	.loc 3 176 5
	lw	a5,-40(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 3 176 5 is_stmt 0 discriminator 1
	mv	a1,a5
	lui	a5,%hi(.LC13)
	addi	a0,a5,%lo(.LC13)
	call	printf
	.loc 3 177 5 is_stmt 1
	lw	a2,-72(s0)
	lw	a1,-72(s0)
	lui	a5,%hi(.LC14)
	addi	a0,a5,%lo(.LC14)
	call	printf
	.loc 3 179 5
	lw	a1,-48(s0)
	lui	a5,%hi(.LC15)
	addi	a0,a5,%lo(.LC15)
	call	printf
	.loc 3 180 5
	lw	a1,-52(s0)
	lui	a5,%hi(.LC16)
	addi	a0,a5,%lo(.LC16)
	call	printf
	.loc 3 181 5
	lw	a1,-44(s0)
	lui	a5,%hi(.LC17)
	addi	a0,a5,%lo(.LC17)
	call	printf
	.loc 3 182 5
	lw	a1,-68(s0)
	lui	a5,%hi(.LC18)
	addi	a0,a5,%lo(.LC18)
	call	printf
	.loc 3 183 5
	lw	a5,-40(s0)
	lw	a5,24(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 3 183 5 is_stmt 0 discriminator 1
	mv	a1,a5
	lui	a5,%hi(.LC19)
	addi	a0,a5,%lo(.LC19)
	call	printf
	.loc 3 185 8 is_stmt 1
	lw	a4,-68(s0)
	li	a5,1
	bleu	a4,a5,.L41
	.loc 3 186 9
	lw	a5,-40(s0)
	lw	a5,28(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 3 186 9 is_stmt 0 discriminator 1
	mv	a1,a5
	lui	a5,%hi(.LC20)
	addi	a0,a5,%lo(.LC20)
	call	printf
.L41:
	.loc 3 190 8 is_stmt 1
	lw	a4,-68(s0)
	li	a5,2
	bleu	a4,a5,.L42
	.loc 3 191 9
	lw	a5,-40(s0)
	lw	a5,32(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 3 191 9 is_stmt 0 discriminator 1
	mv	a1,a5
	lui	a5,%hi(.LC21)
	addi	a0,a5,%lo(.LC21)
	call	printf
.L42:
	.loc 3 195 8 is_stmt 1
	lw	a4,-68(s0)
	li	a5,16
	bleu	a4,a5,.L43
	.loc 3 196 9
	lw	a5,-40(s0)
	lw	a5,36(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 3 196 9 is_stmt 0 discriminator 1
	mv	a1,a5
	lui	a5,%hi(.LC22)
	addi	a0,a5,%lo(.LC22)
	call	printf
.L43:
	.loc 3 200 5 is_stmt 1
	lui	a5,%hi(.LC23)
	addi	a0,a5,%lo(.LC23)
	call	printf
	.loc 3 202 12
	sw	zero,-32(s0)
.L46:
	.loc 3 203 37
	lw	a5,-32(s0)
	slli	a5,a5,4
	lw	a4,-56(s0)
	add	a5,a4,a5
	.loc 3 203 16
	lw	a4,0(a5)
	lw	a5,4(a5)
	mv	a0,a4
	mv	a1,a5
	call	fdt64_to_cpu
	sw	a0,-88(s0)
	sw	a1,-84(s0)
	.loc 3 204 37
	lw	a5,-32(s0)
	slli	a5,a5,4
	lw	a4,-56(s0)
	add	a5,a4,a5
	.loc 3 204 16
	lw	a4,8(a5)
	lw	a5,12(a5)
	mv	a0,a4
	mv	a1,a5
	call	fdt64_to_cpu
	sw	a0,-96(s0)
	sw	a1,-92(s0)
	.loc 3 205 12
	lw	a5,-88(s0)
	lw	a4,-84(s0)
	or	a5,a5,a4
	bne	a5,zero,.L44
	.loc 3 205 23 discriminator 1
	lw	a5,-96(s0)
	lw	a4,-92(s0)
	or	a5,a5,a4
	beq	a5,zero,.L64
.L44:
	.loc 3 202 20
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
	.loc 3 203 14
	j	.L46
.L64:
	.loc 3 206 13
	nop
	.loc 3 212 7
	lw	a5,-60(s0)
	sw	a5,-20(s0)
	.loc 3 215 11
	j	.L47
.L62:
	.loc 3 218 17
	lbu	a5,-117(s0)
	beq	a5,zero,.L48
	.loc 3 218 24 discriminator 1
	lw	a4,-20(s0)
	.loc 3 218 37 discriminator 1
	lw	a5,-36(s0)
	sub	a5,a4,a5
	.loc 3 218 25 discriminator 1
	addi	s1,a5,-4
	lw	a0,-100(s0)
	call	tagname
	mv	a5,a0
	.loc 3 218 25 is_stmt 0 discriminator 2
	mv	a3,a5
	lw	a2,-100(s0)
	mv	a1,s1
	lui	a5,%hi(.LC24)
	addi	a0,a5,%lo(.LC24)
	call	printf
.L48:
	.loc 3 221 12 is_stmt 1
	lw	a4,-100(s0)
	li	a5,1
	bne	a4,a5,.L49
	.loc 3 222 15
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 3 223 50
	lw	a0,-24(s0)
	call	strlen
	mv	a5,a0
	.loc 3 223 60 discriminator 1
	addi	a5,a5,1
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 3 223 66 discriminator 1
	addi	a5,a5,3
	.loc 3 223 81 discriminator 1
	andi	a5,a5,-4
	.loc 3 223 15 discriminator 1
	sw	a5,-20(s0)
	.loc 3 225 17
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 3 225 16
	bne	a5,zero,.L50
	.loc 3 226 19
	lui	a5,%hi(.LC25)
	addi	a5,a5,%lo(.LC25)
	sw	a5,-24(s0)
.L50:
	.loc 3 228 13
	lw	a4,-28(s0)
	lw	a5,-76(s0)
	mul	a4,a4,a5
	lw	a3,-24(s0)
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	mv	a1,a4
	lui	a5,%hi(.LC26)
	addi	a0,a5,%lo(.LC26)
	call	printf
	.loc 3 230 18
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
	.loc 3 231 13
	j	.L47
.L49:
	.loc 3 234 12
	lw	a4,-100(s0)
	li	a5,2
	bne	a4,a5,.L52
	.loc 3 235 18
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
	.loc 3 237 13
	lw	a4,-28(s0)
	lw	a5,-76(s0)
	mul	a4,a4,a5
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	mv	a1,a4
	lui	a5,%hi(.LC27)
	addi	a0,a5,%lo(.LC27)
	call	printf
	.loc 3 238 13
	j	.L47
.L52:
	.loc 3 241 12
	lw	a4,-100(s0)
	li	a5,4
	bne	a4,a5,.L53
	.loc 3 242 13
	lw	a4,-28(s0)
	lw	a5,-76(s0)
	mul	a4,a4,a5
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	mv	a1,a4
	lui	a5,%hi(.LC28)
	addi	a0,a5,%lo(.LC28)
	call	printf
	.loc 3 243 13
	j	.L47
.L53:
	.loc 3 246 12
	lw	a4,-100(s0)
	li	a5,3
	beq	a4,a5,.L54
.LBB13:
.LBB14:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.loc 4 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE14:
.LBE13:
	.loc 3 247 20 discriminator 1
	beq	a5,zero,.L56
	.loc 3 247 51 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L57
.L56:
	.loc 3 247 80 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L57:
	.loc 3 247 20 discriminator 7
	lw	a4,-28(s0)
	lw	a5,-76(s0)
	mul	a4,a4,a5
	lw	a7,-100(s0)
	lui	a5,%hi(.LC6)
	addi	a6,a5,%lo(.LC6)
	mv	a5,a4
	li	a4,247
	lui	a3,%hi(.LC29)
	addi	a3,a3,%lo(.LC29)
	lui	a2,%hi(.LC30)
	addi	a2,a2,%lo(.LC30)
	lui	a0,%hi(.LC31)
	addi	a0,a0,%lo(.LC31)
	call	bl_printk
	.loc 3 248 13
	j	.L58
.L54:
	.loc 3 250 30
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 3 250 57
	lw	a5,-20(s0)
	addi	a5,a5,-4
	.loc 3 250 14
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 3 250 12 discriminator 1
	sw	a5,-104(s0)
	.loc 3 251 41
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 3 251 68
	lw	a5,-20(s0)
	addi	a5,a5,-4
	.loc 3 251 25
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a4,a0
	.loc 3 251 11 discriminator 1
	lw	a5,-64(s0)
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 3 252 12
	lw	a4,-68(s0)
	li	a5,15
	bgtu	a4,a5,.L59
	.loc 3 252 26 discriminator 1
	lw	a4,-104(s0)
	li	a5,7
	ble	a4,a5,.L59
	.loc 3 253 30
	lw	a5,-20(s0)
	.loc 3 253 50
	addi	a5,a5,7
	.loc 3 253 65
	andi	a5,a5,-8
	.loc 3 253 15
	sw	a5,-20(s0)
.L59:
	.loc 3 254 11
	lw	a5,-20(s0)
	sw	a5,-108(s0)
	.loc 3 256 44
	lw	a5,-104(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 3 256 51
	addi	a5,a5,3
	.loc 3 256 66
	andi	a5,a5,-4
	.loc 3 256 11
	sw	a5,-20(s0)
	.loc 3 258 17
	lbu	a5,-117(s0)
	beq	a5,zero,.L60
	.loc 3 258 66 discriminator 1
	lw	a4,-24(s0)
	.loc 3 258 25 discriminator 1
	lw	a5,-36(s0)
	sub	a5,a4,a5
	lw	a2,-24(s0)
	mv	a1,a5
	lui	a5,%hi(.LC32)
	addi	a0,a5,%lo(.LC32)
	call	printf
.L60:
	.loc 3 259 17
	lbu	a5,-117(s0)
	beq	a5,zero,.L61
	.loc 3 259 61 discriminator 1
	lw	a4,-108(s0)
	.loc 3 259 25 discriminator 1
	lw	a5,-36(s0)
	sub	a5,a4,a5
	mv	a1,a5
	lui	a5,%hi(.LC33)
	addi	a0,a5,%lo(.LC33)
	call	printf
.L61:
	.loc 3 260 9
	lw	a4,-28(s0)
	lw	a5,-76(s0)
	mul	a4,a4,a5
	lw	a3,-24(s0)
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	mv	a1,a4
	lui	a5,%hi(.LC34)
	addi	a0,a5,%lo(.LC34)
	call	printf
	.loc 3 261 9
	lw	a1,-104(s0)
	lw	a0,-108(s0)
	call	utilfdt_print_data
	.loc 3 262 9
	lui	a5,%hi(.LC35)
	addi	a0,a5,%lo(.LC35)
	call	printf
.L47:
	.loc 3 215 35
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 3 215 62
	lw	a5,-20(s0)
	addi	a5,a5,-4
	.loc 3 215 19
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	sw	a0,-100(s0)
	.loc 3 215 70 discriminator 1
	lw	a4,-100(s0)
	li	a5,9
	bne	a4,a5,.L62
	.loc 3 264 1
	nop
.L58:
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
.LFE44:
	.size	dump_blob, .-dump_blob
	.section	.text.valid_header,"ax",@progbits
	.align	1
	.type	valid_header, @function
valid_header:
.LFB45:
	.loc 3 268 1
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
	.loc 3 269 8
	lw	a4,-24(s0)
	li	a5,39
	bleu	a4,a5,.L66
	.loc 3 270 11
	lw	a5,-20(s0)
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 269 41 discriminator 1
	li	a5,-804388864
	addi	a5,a5,-275
	bne	a4,a5,.L66
	.loc 3 271 11
	lw	a5,-20(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 270 78
	li	a5,17
	bgtu	a4,a5,.L66
	.loc 3 272 11
	lw	a5,-20(s0)
	addi	a5,a5,24
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 271 71
	li	a5,17
	bgtu	a4,a5,.L66
	.loc 3 273 11
	lw	a5,-20(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 272 81
	lw	a5,-24(s0)
	bleu	a5,a4,.L66
	.loc 3 274 11
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 273 75
	lw	a5,-24(s0)
	bleu	a5,a4,.L66
	.loc 3 275 11
	lw	a5,-20(s0)
	addi	a5,a5,12
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 274 79
	lw	a5,-24(s0)
	bgtu	a5,a4,.L67
.L66:
	.loc 3 276 20
	li	a5,0
	j	.L68
.L67:
	.loc 3 278 16
	li	a5,1
.L68:
	.loc 3 279 1
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
.LFE45:
	.size	valid_header, .-valid_header
	.section	.rodata
	.align	2
.LC36:
	.string	"fdtbuff"
	.align	2
.LC37:
	.string	"%s: skipping fdt magic at offset %#tx\r\n"
	.align	2
.LC38:
	.string	"[%10u][%s: %s:%4d] %s: could not locate fdt magic\r\n"
	.align	2
.LC39:
	.string	"%s: found fdt at offset %#tx\r\n"
	.align	2
.LC40:
	.string	"[%10u][%s: %s:%4d] %s: header is not valid\r\n"
	.align	2
.LC41:
	.string	"\033[32mINFO  \033[0m"
	.align	2
.LC42:
	.string	"[%10u][%s: %s:%4d] dump_blob."
	.section	.text.blfdtdump,"ax",@progbits
	.align	1
	.type	blfdtdump, @function
blfdtdump:
.LFB46:
	.loc 3 288 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	a0,-100(s0)
	sw	a1,-104(s0)
	mv	a5,a2
	mv	a4,a3
	sb	a5,-105(s0)
	mv	a5,a4
	sb	a5,-106(s0)
	.loc 3 289 17
	lui	a5,%hi(.LC36)
	addi	a5,a5,%lo(.LC36)
	sw	a5,-28(s0)
	.loc 3 290 11
	lw	a5,-100(s0)
	sw	a5,-20(s0)
	.loc 3 291 13
	lbu	a5,-105(s0)
	sb	a5,-29(s0)
	.loc 3 292 13
	lbu	a5,-106(s0)
	sb	a5,-30(s0)
	.loc 3 293 14
	lw	a5,-104(s0)
	sw	a5,-36(s0)
	.loc 3 294 14
	sw	zero,-40(s0)
	.loc 3 302 8
	lbu	a5,-30(s0)
	beq	a5,zero,.L70
.LBB15:
	.loc 3 304 15
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 3 305 15
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 3 307 9
	addi	a4,s0,-84
	li	a5,-804388864
	addi	a1,a5,-275
	mv	a0,a4
	call	fdt_set_magic
	.loc 3 310 15
	j	.L71
.L76:
	.loc 3 311 33
	lbu	a5,-84(s0)
	.loc 3 311 17
	mv	a3,a5
	.loc 3 311 43
	lw	a4,-44(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 3 311 47
	addi	a5,a5,-40
	.loc 3 311 17
	mv	a2,a5
	mv	a1,a3
	lw	a0,-24(s0)
	call	memchr
	sw	a0,-24(s0)
	.loc 3 312 16
	lw	a5,-24(s0)
	beq	a5,zero,.L90
	.loc 3 315 19
	lw	a5,-24(s0)
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 315 16 discriminator 1
	li	a5,-804388864
	addi	a5,a5,-275
	bne	a4,a5,.L74
	.loc 3 317 33
	lw	a4,-44(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 3 317 26
	sw	a5,-40(s0)
	.loc 3 318 21
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	call	valid_header
	mv	a5,a0
	.loc 3 318 20 discriminator 1
	bne	a5,zero,.L91
	.loc 3 321 20
	lbu	a5,-29(s0)
	beq	a5,zero,.L74
	.loc 3 322 21
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	mv	a2,a5
	lw	a1,-28(s0)
	lui	a5,%hi(.LC37)
	addi	a0,a5,%lo(.LC37)
	call	printf
.L74:
	.loc 3 326 13
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L71:
	.loc 3 310 22
	lw	a4,-44(s0)
	lw	a5,-24(s0)
	sub	a4,a4,a5
	.loc 3 310 27
	li	a5,39
	bgt	a4,a5,.L76
	j	.L73
.L90:
	.loc 3 313 17
	nop
	j	.L73
.L91:
	.loc 3 319 21
	nop
.L73:
	.loc 3 328 12
	lw	a5,-24(s0)
	beq	a5,zero,.L77
	.loc 3 328 24 discriminator 1
	lw	a4,-44(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	mv	a4,a5
	.loc 3 328 16 discriminator 1
	li	a5,39
	bgtu	a4,a5,.L78
.L77:
.LBB16:
.LBB17:
	.loc 4 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE17:
.LBE16:
	.loc 3 329 20 discriminator 1
	beq	a5,zero,.L80
	.loc 3 329 118 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L81
.L80:
	.loc 3 329 147 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L81:
	.loc 3 329 20 discriminator 7
	lw	a5,-28(s0)
	li	a4,329
	lui	a3,%hi(.LC29)
	addi	a3,a3,%lo(.LC29)
	lui	a2,%hi(.LC30)
	addi	a2,a2,%lo(.LC30)
	lui	a0,%hi(.LC38)
	addi	a0,a0,%lo(.LC38)
	call	bl_printk
	.loc 3 330 20
	li	a5,-1
	j	.L82
.L78:
	.loc 3 332 9
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	mv	a2,a5
	lw	a1,-28(s0)
	lui	a5,%hi(.LC39)
	addi	a0,a5,%lo(.LC39)
	call	printf
	.loc 3 333 13
	lw	a5,-24(s0)
	sw	a5,-20(s0)
.LBE15:
	j	.L83
.L70:
	.loc 3 334 17
	lw	a1,-36(s0)
	lw	a0,-20(s0)
	call	valid_header
	mv	a5,a0
	.loc 3 334 16 discriminator 1
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 3 334 15 discriminator 1
	beq	a5,zero,.L83
.LBB18:
.LBB19:
	.loc 4 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE19:
.LBE18:
	.loc 3 335 16 discriminator 1
	beq	a5,zero,.L85
	.loc 3 335 107 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L86
.L85:
	.loc 3 335 136 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L86:
	.loc 3 335 16 discriminator 7
	lw	a5,-28(s0)
	li	a4,335
	lui	a3,%hi(.LC29)
	addi	a3,a3,%lo(.LC29)
	lui	a2,%hi(.LC30)
	addi	a2,a2,%lo(.LC30)
	lui	a0,%hi(.LC40)
	addi	a0,a0,%lo(.LC40)
	call	bl_printk
	.loc 3 336 16
	li	a5,-1
	j	.L82
.L83:
.LBB20:
.LBB21:
	.loc 4 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE21:
.LBE20:
	.loc 3 339 12 discriminator 1
	beq	a5,zero,.L88
	.loc 3 339 86 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L89
.L88:
	.loc 3 339 115 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L89:
	.loc 3 339 12 discriminator 7
	li	a4,339
	lui	a5,%hi(.LC29)
	addi	a3,a5,%lo(.LC29)
	lui	a5,%hi(.LC41)
	addi	a2,a5,%lo(.LC41)
	lui	a5,%hi(.LC42)
	addi	a0,a5,%lo(.LC42)
	call	bl_printk
	.loc 3 341 5
	lbu	a5,-29(s0)
	snez	a5,a5
	andi	a5,a5,0xff
	mv	a1,a5
	lw	a0,-20(s0)
	call	dump_blob
	.loc 3 343 12
	li	a5,0
.L82:
	.loc 3 344 1
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
.LFE46:
	.size	blfdtdump, .-blfdtdump
	.globl	tc_wifi_dtb
	.section	.rodata.tc_wifi_dtb,"a"
	.align	2
	.type	tc_wifi_dtb, @object
	.size	tc_wifi_dtb, 4783
tc_wifi_dtb:
	.base64	"0A3+7QAAEqsAAAA4AAAQwAAAACgAAAARAAAAEAAAAAAAAAHrAAAQiAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAMAAAATAAAAAGJsIGJsNjB4IEFWQiBib2FyZAAAAAAAAwAAACAAAAAGYmwsYmw2MHgtc2FtcGxlAGJsLGJsNjB4LWNvbW1vbgAAAAADAAAABAAAABEAAAABAAAAAwAAAAQAAAAgAAAAAQAAAAFpcGMAAAAAAwAAAAQAAAARAAAAAQAAAAMAAAAEAAAAIAAAAAEAAAABaXBjQDQwMDFDMDAwAAAAAAAAAAMAAAAIAAAALGRpc2FibGUAAAAA"
	.base64	"AwAAAAgAAAAzQAHAAAAAAQAAAAACAAAAAgAAAAFpMnMAAAAAAwAAAAQAAAARAAAAAQAAAAMAAAAEAAAAIAAAAAEAAAABaTJzQDQwMDE3MDAwAAAAAAAAAAMAAAAFAAAALG9rYXkAAAAAAAAAAwAAAAoAAAAGYmw2MHhfaTJzAAAAAAAAAwAAAAgAAAAzQAFwAAAAAQAAAAADAAAABQAAADdva2F5AAAAAAAAAAFwaW4AAAAAAwAAAAQAAABBAAAACwAAAAIAAAACAAAAAWkyc0A0MDAxNzEwMAAAAAAAAAADAAAABQAAACxva2F5AAAAAAAAAAMAAAAKAAAABmJs"
	.base64	"NjB4X2kycwAAAAAAAAMAAAAIAAAAM0ABcQAAAAEAAAAAAwAAAAgAAAA3ZGlzYWJsZQAAAAABcGluAAAAAAMAAAAEAAAARgAAAAwAAAADAAAABAAAAEsAAAAdAAAAAwAAAAQAAABOAAAAHgAAAAMAAAAEAAAAUQAAAB8AAAACAAAAAgAAAAIAAAABaTJjAAAAAAMAAAAEAAAAEQAAAAEAAAADAAAABAAAACAAAAABAAAAAWkyY0A0MDAxMTAwMAAAAAAAAAADAAAABQAAACxva2F5AAAAAAAAAAMAAAAKAAAABmJsNjB4X2kyYwAAAAAAAAMAAAAIAAAAM0ABEAAA"
	.base64	"AAEAAAAAAXBpbgAAAAADAAAABAAAAFQAAAAgAAAAAwAAAAQAAABYAAAADQAAAAIAAAABZGV2aWNlcwAAAAADAAAACAAAAFwAAAAYAAAAIQAAAAMAAAAXAAAAZmkyY19lczgzMTEAaTJjX2djMDMwOD4AAAAAAAIAAAACAAAAAWkyY0A0MDAxMTEwMAAAAAAAAAADAAAACAAAACxkaXNhYmxlAAAAAAMAAAAKAAAABmJsNjB4X2kyYwAAAAAAAAMAAAAIAAAAM0ABEQAAAAEAAAAAAXBpbgAAAAACAAAAAgAAAAIAAAABbWpwZWcAAAAAAAADAAAABAAAABEAAAAB"
	.base64	"AAAAAwAAAAQAAAAgAAAAAQAAAAFtanBlZ0A0MDAxNjAwMAAAAAAAAwAAAAUAAAAsb2theQAAAAAAAAADAAAADAAAAAZibDYweF9tanBlZwAAAAADAAAACAAAADNAAWAAAAABAAAAAAIAAAACAAAAAXRpbWVyAAAAAAAAAwAAAAQAAAARAAAAAQAAAAMAAAAEAAAAIAAAAAEAAAABdGltZXJANDAwMTQwMDAAAAAAAAMAAAAIAAAALGRpc2FibGUAAAAAAwAAAAwAAAAGYmw2MHhfdGltZXIAAAAAAwAAAAgAAAAzQAFAAAAAAQAAAAACAAAAAXRpbWVyQDQwMDE0"
	.base64	"MTAwAAAAAAADAAAACAAAACxkaXNhYmxlAAAAAAMAAAAMAAAABmJsNjB4X3RpbWVyAAAAAAMAAAAIAAAAM0ABQQAAAAEAAAAAAgAAAAIAAAABcHdtAAAAAAMAAAAEAAAAEQAAAAEAAAADAAAABAAAACAAAAABAAAAAXB3bUA0MDAxMjAwMAAAAAAAAAADAAAACAAAACxkaXNhYmxlAAAAAAMAAAAKAAAABmJsNjB4X3B3bQAAAAAAAAMAAAAIAAAAM0ABIAAAAAEAAAAAAXBpbgAAAAACAAAAAgAAAAIAAAABdWFydAAAAAAAAAADAAAABAAAABEAAAABAAAAAwAA"
	.base64	"AAQAAAAgAAAAAQAAAAF1YXJ0QDQwMDEwMDAwAAAAAAAAAwAAAAgAAAAsZGlzYWJsZQAAAAADAAAABAAAAHIAAAAAAAAAAwAAAAsAAAAGYmw2MHhfdWFydAAAAAAAAwAAAAsAAAB1L2Rldi90dHlTMAAAAAAAAwAAAAgAAAAzQAEAAAAAAQAAAAADAAAABAAAAHoAAcIAAAAAAXBpbgAAAAACAAAAAWZlYXR1cmUAAAAAAwAAAAgAAAB+ZGlzYWJsZQAAAAADAAAACAAAAIJkaXNhYmxlAAAAAAMAAAAIAAAAhmRpc2FibGUAAAAAAwAAAAgAAACJZGlzYWJsZQAA"
	.base64	"AAACAAAAAgAAAAF1YXJ0QDQwMDEwMTAwAAAAAAAAAwAAAAgAAAAsZGlzYWJsZQAAAAADAAAABAAAAHIAAAABAAAAAwAAAAsAAAAGYmw2MHhfdWFydAAAAAAAAwAAAAsAAAB1L2Rldi90dHlTMQAAAAAAAwAAAAgAAAAzQAEBAAAAAQAAAAADAAAABAAAAIwAAcIAAAAAAXBpbgAAAAACAAAAAWZlYXR1cmUAAAAAAwAAAAgAAAB+ZGlzYWJsZQAAAAADAAAACAAAAIJkaXNhYmxlAAAAAAMAAAAIAAAAhmRpc2FibGUAAAAAAwAAAAgAAACJZGlzYWJsZQAAAAAC"
	.base64	"AAAAAgAAAAF1YXJ0QDQwMDEwMjAwAAAAAAAAAwAAAAUAAAAsb2theQAAAAAAAAADAAAABAAAAHIAAAACAAAAAwAAAAsAAAAGYmw2MHhfdWFydAAAAAAAAwAAAAsAAAB1L2Rldi90dHlTMgAAAAAAAwAAAAgAAAAzQAECAAAAAQAAAAADAAAABAAAAIwATEtAAAAAAXBpbgAAAAADAAAABAAAAIkAAAAOAAAAAwAAAAQAAACGAAAABwAAAAIAAAABZmVhdHVyZQAAAAADAAAABQAAAIlva2F5AAAAAAAAAAMAAAAFAAAAhm9rYXkAAAAAAAAAAwAAAAgAAACCZGlz"
	.base64	"YWJsZQAAAAADAAAACAAAAH5kaXNhYmxlAAAAAAIAAAACAAAAAgAAAAFzcGkAAAAAAwAAAAQAAAARAAAAAQAAAAMAAAAEAAAAIAAAAAEAAAABc3BpQDQwMDBGMDAwAAAAAAAAAAMAAAAIAAAALGRpc2FibGUAAAAAAwAAAAgAAAAzQADwAAAAAQAAAAACAAAAAgAAAAFncGlwAAAAAAAAAAMAAAAEAAAAEQAAAAEAAAADAAAABAAAACAAAAABAAAAAWFkY19rZXkAAAAAAwAAAAUAAAAsb2theQAAAAAAAAADAAAABAAAAJUAAAAJAAAAAwAAAAQAAACZAAAAAwAA"
	.base64	"AAMAAAAUAAAAowAAAAAAAABkAAABkAAAASwAAAH0AAAAAwAAABQAAACrU1cxAFNXMgBTVzMAU1c0AFNXNQAAAAADAAAAGAAAALNVc3IxAFVzcjIAU3RhcnQAVXAARG93bgAAAAADAAAAFAAAAL0AAAABAAAAAgAAAAMAAAAEAAAABQAAAAIAAAACAAAAAXBkbQAAAAADAAAABAAAABEAAAABAAAAAwAAAAQAAAAgAAAAAQAAAAFwZG1ANDAwMEMwMDAAAAAAAAAAAwAAAAgAAAAsZGlzYWJsZQAAAAADAAAACAAAADNAAMAAAAABAAAAAAIAAAACAAAAAWNhbQAA"
	.base64	"AAADAAAABAAAABEAAAABAAAAAwAAAAQAAAAgAAAAAQAAAAFjYW1ANDAwMEIwMDAAAAAAAAAAAwAAAAUAAAAsb2theQAAAAAAAAADAAAACgAAAAZibDYweF9jYW0AAAAAAAADAAAACAAAADNAALAAAAAQAAAAAAFwaW4AAAAAAwAAAAQAAADFAAAAAAAAAAMAAAAEAAAAzQAAAAEAAAADAAAABAAAANcAAAACAAAAAwAAAAQAAADgAAAAAwAAAAMAAAAEAAAA6QAAAAQAAAADAAAABAAAAPIAAAAFAAAAAwAAAAQAAAD7AAAABgAAAAMAAAAEAAABBAAAABkAAAAD"
	.base64	"AAAABAAAAQ0AAAAaAAAAAwAAAAQAAAEWAAAAGwAAAAMAAAAEAAABHwAAABwAAAADAAAABAAAASgAAAAPAAAAAwAAAAQAAAExAAAAGAAAAAIAAAABZmVhdHVyZQAAAAADAAAACQAAAT1IQVJEV0FSRQAAAAAAAAACAAAAAWNvbmYAAAAAAAAAAwAAAAUAAAFCYXV0bwAAAAAAAAACAAAAAgAAAAIAAAABcXNwaQAAAAAAAAADAAAABAAAABEAAAABAAAAAwAAAAQAAAAgAAAAAQAAAAFxc3BpQDQwMDBBMDAwAAAAAAAAAwAAAAgAAAAsZGlzYWJsZQAAAAADAAAA"
	.base64	"CAAAADNAAKAAAAAQAAAAAAIAAAACAAAAAXNkaAAAAAADAAAABAAAABEAAAABAAAAAwAAAAQAAAAgAAAAAQAAAAFzZGhANDAwMDMwMDAAAAAAAAAAAwAAAAUAAAAsb2theQAAAAAAAAADAAAACgAAAAZibDYweF9zZGgAAAAAAAADAAAACAAAADNAADAAAAAQAAAAAAFwaW4AAAAAAwAAAAQAAABCAAAAEAAAAAMAAAAEAAABSQAAABEAAAADAAAABAAAAU0AAAASAAAAAwAAAAQAAAFSAAAAEwAAAAMAAAAEAAABVwAAABQAAAADAAAABAAAAVwAAAAVAAAAAgAA"
	.base64	"AAIAAAACAAAAAXdpZmkAAAAAAAAAAwAAAAQAAAARAAAAAQAAAAMAAAAEAAAAIAAAAAEAAAABcmVnaW9uAAAAAAADAAAABAAAAWEAAABWAAAAAgAAAAFtYWMAAAAAAwAAAAYAAAFuyENXgnNAAAAAAAADAAAABgAAAXvIQ1eCcwIAAAAAAAIAAAABYXAAAAAAAAMAAAAPAAABh0JMNjB4X0NhbWVyYTAzAAAAAAADAAAADAAAAYwxMjM0NTY3ODkwYQAAAAADAAAABAAAAZAAAAALAAAAAwAAAAgAAAGbZGlzYWJsZQAAAAACAAAAAWJyZF9yZgAAAAAAAwAAABQA"
	.base64	"AAGsAAAAKQAAACkAAAAAAAAAPwAAAD8AAAADAAABAAAAAbEAAAAEAAAAAwAAAAMAAAC6AAAABAAAAAMAAAAEAAAAsAAAAAQAAAADAAAABQAAAKcAAAADAAAAAwAAAAAAAACfAAAAAwAAAAMAAAABAAAAlQAAAAMAAAADAAAAAgAAAIwAAAADAAAAAwAAAAMAAACBAAAAAwAAAAMAAAAEAAAAdwAAAAMAAAADAAAABQAAAG4AAAACAAAAAwAAAAAAAABlAAAAAgAAAAMAAAABAAAAWwAAAAIAAAADAAAAAgAAAFIAAAACAAAAAwAAAAMAAABIAAAAAgAAAAMAAAAE"
	.base64	"AAAAPgAAAAIAAAADAAAABQAAADQAAAABAAAAAwAAAAMAAAAKAAAAAwAAADwAAAG7FPAAABT7HHEVBjjjFRFVVRUccccVJ444FTKqqhU9xxwVSOOOFVQAABVfHHEVajjjFXVVVRWQAAAVwAAAAAAAAwAAADgAAAHNAACngAAAp9gAAKgxAACoigAAqOMAAKk8AACplQAAqe4AAKpHAACqoAAAqvgAAKtRAACrqgAArIAAAAADAAAABAAAAd8AAAgAAAAAAgAAAAIAAAACAAAACW1vZGVsAGNvbXBhdGlibGUAI2FkZHJlc3MtY2VsbHMAI3NpemUtY2VsbHMAc3Rh"
	.base64	"dHVzAHJlZwBtY2xrX29ubHkAbWNsawBiY2xrAGZzAGRvAGRpAHNjbABzZGEAbGlzdF9hZGRyAGxpc3RfZHJpdmVyAGlkAHBhdGgAY2ZnAHJ0cwBjdHMAcngAdHgAYmF1ZHJhdGUAcGluAGludGVycnVwdABrZXlfdm9sAGtleV9wY2IAa2V5X2V2ZW50AGtleV9yYXcAUElYX0NMSwBGUkFNRV9WTEQATElORV9WTEQAUElYX0RBVDAAUElYX0RBVDEAUElYX0RBVDIAUElYX0RBVDMAUElYX0RBVDQAUElYX0RBVDUAUElYX0RBVDYAUElYX0RBVDcAQ0FNX1BX"
	.base64	"RE4AQ0FNX1JFRl9DTEsAbW9kZQBzZW5zb3IAY21kAGRhdDAAZGF0MQBkYXQyAGRhdDMAY291bnRyeV9jb2RlAHN0YV9tYWNfYWRkcgBhcF9tYWNfYWRkcgBzc2lkAHB3ZABhcF9jaGFubmVsAGF1dG9fY2hhbl9kZXRlY3QAeHRhbABwd3JfdGFibGUAY2hhbm5lbF9kaXZfdGFibGUAY2hhbm5lbF9jbnRfdGFibGUAbG9fZmNhbF9kaXYA"
	.zero	4
	.section	.rodata
	.align	2
.LC43:
	.string	"dump failed\r\n"
	.align	2
.LC44:
	.string	"dump successed\r\n"
	.section	.text.tc_blfdtdump,"ax",@progbits
	.align	1
	.globl	tc_blfdtdump
	.type	tc_blfdtdump, @function
tc_blfdtdump:
.LFB47:
	.loc 3 750 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 3 753 14
	li	a3,1
	li	a2,1
	li	a5,4096
	addi	a1,a5,687
	lui	a5,%hi(tc_wifi_dtb)
	addi	a0,a5,%lo(tc_wifi_dtb)
	call	blfdtdump
	sw	a0,-20(s0)
	.loc 3 755 8
	lw	a5,-20(s0)
	beq	a5,zero,.L93
	.loc 3 756 9
	lui	a5,%hi(.LC43)
	addi	a0,a5,%lo(.LC43)
	call	printf
	j	.L94
.L93:
	.loc 3 758 9
	lui	a5,%hi(.LC44)
	addi	a0,a5,%lo(.LC44)
	call	printf
.L94:
	.loc 3 761 12
	lw	a5,-20(s0)
	.loc 3 765 1
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
	.size	tc_blfdtdump, .-tc_blfdtdump
	.section	.rodata
	.align	2
.LC45:
	.string	"FDT_BEGIN_NODE"
	.align	2
.LC46:
	.string	"FDT_END_NODE"
	.align	2
.LC47:
	.string	"FDT_PROP"
	.align	2
.LC48:
	.string	"FDT_NOP"
	.align	2
.LC49:
	.string	"FDT_END"
	.section	.rodata.names.0,"a"
	.align	2
	.type	names.0, @object
	.size	names.0, 40
names.0:
	.zero	4
	.word	.LC45
	.word	.LC46
	.word	.LC47
	.word	.LC48
	.zero	16
	.word	.LC49
	.text
.Letext0:
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/fdt.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/ctype.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7d0
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1a
	.4byte	.LASF82
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x5
	.4byte	.LASF6
	.byte	0x5
	.byte	0x28
	.byte	0x12
	.4byte	0x45
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x64
	.uleb128 0x6
	.4byte	0x53
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x6
	.4byte	0x64
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x88
	.uleb128 0x6
	.4byte	0x77
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x5
	.byte	0x37
	.byte	0x20
	.4byte	0x9b
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x5
	.byte	0x56
	.byte	0x16
	.4byte	0xa9
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x6
	.byte	0xe5
	.byte	0x16
	.4byte	0xa9
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.4byte	.LASF17
	.uleb128 0x1c
	.byte	0x4
	.uleb128 0x7
	.4byte	0xd6
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x6
	.4byte	0xd6
	.uleb128 0x7
	.4byte	0xdd
	.uleb128 0x6
	.4byte	0xe2
	.uleb128 0x1d
	.4byte	0xe2
	.uleb128 0x7
	.4byte	0xf6
	.uleb128 0x1e
	.uleb128 0xb
	.4byte	0xdd
	.4byte	0x102
	.uleb128 0x1f
	.byte	0
	.uleb128 0x6
	.4byte	0xf7
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0x8
	.byte	0x46
	.4byte	0x102
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x1
	.byte	0x63
	.byte	0x12
	.4byte	0x77
	.uleb128 0x6
	.4byte	0x112
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x1
	.byte	0x64
	.byte	0x12
	.4byte	0x8f
	.uleb128 0x14
	.4byte	.LASF31
	.byte	0x28
	.byte	0x57
	.4byte	0x1a9
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x58
	.4byte	0x112
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x59
	.4byte	0x112
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5a
	.4byte	0x112
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5b
	.4byte	0x112
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x5c
	.4byte	0x112
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x5d
	.4byte	0x112
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x5e
	.4byte	0x112
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x61
	.4byte	0x112
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x64
	.4byte	0x112
	.byte	0x20
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x67
	.4byte	0x112
	.byte	0x24
	.byte	0
	.uleb128 0x14
	.4byte	.LASF32
	.byte	0x10
	.byte	0x6a
	.4byte	0x1cb
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x6b
	.4byte	0x123
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x6c
	.4byte	0x123
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x4
	.byte	0x3f
	.byte	0x11
	.4byte	0x39
	.uleb128 0x5
	.4byte	.LASF36
	.byte	0x4
	.byte	0x41
	.byte	0x12
	.4byte	0x77
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0x4
	.byte	0x5c
	.4byte	0x1cb
	.uleb128 0xb
	.4byte	0x5f
	.4byte	0x1ff
	.uleb128 0x20
	.4byte	0xa9
	.2byte	0x12ae
	.byte	0
	.uleb128 0x6
	.4byte	0x1ee
	.uleb128 0x21
	.4byte	.LASF39
	.byte	0x3
	.2byte	0x15b
	.byte	0xf
	.4byte	0x1ff
	.uleb128 0x5
	.byte	0x3
	.4byte	tc_wifi_dtb
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0xa
	.byte	0x1d
	.byte	0x8
	.4byte	0xcf
	.4byte	0x237
	.uleb128 0xa
	.4byte	0xf1
	.uleb128 0xa
	.4byte	0xa2
	.uleb128 0xa
	.4byte	0xbc
	.byte	0
	.uleb128 0x22
	.4byte	.LASF83
	.byte	0xc
	.byte	0x9e
	.byte	0x6
	.4byte	0x24a
	.uleb128 0xa
	.4byte	0xe2
	.uleb128 0x15
	.byte	0
	.uleb128 0x16
	.4byte	.LASF40
	.2byte	0x54c
	.4byte	0x1d7
	.uleb128 0x16
	.4byte	.LASF41
	.2byte	0x55d
	.4byte	0x1d7
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0xa
	.byte	0x29
	.byte	0x8
	.4byte	0xbc
	.4byte	0x276
	.uleb128 0xa
	.4byte	0xe2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0xb
	.byte	0xce
	.byte	0x5
	.4byte	0xa2
	.4byte	0x28d
	.uleb128 0xa
	.4byte	0xec
	.uleb128 0x15
	.byte	0
	.uleb128 0x23
	.4byte	.LASF71
	.byte	0x3
	.2byte	0x2ed
	.byte	0x5
	.4byte	0xa2
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b9
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x3
	.2byte	0x2ef
	.byte	0x9
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF56
	.2byte	0x11f
	.byte	0xc
	.4byte	0xa2
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d6
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x2b
	.4byte	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x45
	.4byte	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x58
	.4byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -105
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x6b
	.4byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -106
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x3
	.2byte	0x121
	.byte	0x11
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.string	"buf"
	.2byte	0x122
	.byte	0xb
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x3
	.2byte	0x123
	.byte	0xd
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x3
	.2byte	0x124
	.byte	0xd
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x11
	.string	"len"
	.2byte	0x125
	.byte	0xe
	.4byte	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x3
	.2byte	0x126
	.byte	0xe
	.4byte	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x3b5
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x3
	.2byte	0x12f
	.byte	0x17
	.4byte	0x3db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x11
	.string	"p"
	.2byte	0x130
	.byte	0xf
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x3
	.2byte	0x131
	.byte	0xf
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.4byte	0x6cf
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.2byte	0x149
	.byte	0x5b
	.byte	0
	.uleb128 0x12
	.4byte	0x6cf
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.2byte	0x14f
	.byte	0x50
	.uleb128 0x12
	.4byte	0x6cf
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.2byte	0x153
	.byte	0x3b
	.byte	0
	.uleb128 0x7
	.4byte	0x6b
	.uleb128 0xb
	.4byte	0x64
	.4byte	0x3eb
	.uleb128 0x19
	.4byte	0xa9
	.byte	0x27
	.byte	0
	.uleb128 0x17
	.4byte	.LASF57
	.2byte	0x10b
	.byte	0xd
	.4byte	0x424
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x424
	.uleb128 0xd
	.string	"p"
	.byte	0x3
	.2byte	0x10b
	.byte	0x20
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"len"
	.byte	0x3
	.2byte	0x10b
	.byte	0x2c
	.4byte	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF58
	.uleb128 0x24
	.4byte	.LASF75
	.byte	0x3
	.byte	0x99
	.byte	0xd
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58e
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x99
	.byte	0x1d
	.4byte	0xcf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x99
	.byte	0x28
	.4byte	0x424
	.uleb128 0x3
	.byte	0x91
	.sleb128 -117
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x9b
	.byte	0xf
	.4byte	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"bph"
	.byte	0x3
	.byte	0x9c
	.byte	0x18
	.4byte	0x58e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x9d
	.byte	0xe
	.4byte	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x9e
	.byte	0xe
	.4byte	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x9f
	.byte	0xe
	.4byte	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0xa0
	.byte	0x1f
	.4byte	0x593
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0xa2
	.byte	0x11
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0xa3
	.byte	0x11
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0xa4
	.byte	0xe
	.4byte	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0xa5
	.byte	0xe
	.4byte	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.string	"tag"
	.byte	0x3
	.byte	0xa6
	.byte	0xe
	.4byte	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2
	.string	"p"
	.byte	0x3
	.byte	0xa7
	.byte	0x11
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"s"
	.byte	0x3
	.byte	0xa7
	.byte	0x15
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"t"
	.byte	0x3
	.byte	0xa7
	.byte	0x19
	.4byte	0xe2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0xa8
	.byte	0x9
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.string	"sz"
	.byte	0x3
	.byte	0xa8
	.byte	0x10
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0xa8
	.byte	0x14
	.4byte	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.string	"i"
	.byte	0x3
	.byte	0xa9
	.byte	0x9
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0xaa
	.byte	0xe
	.4byte	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0xaa
	.byte	0x14
	.4byte	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.4byte	0x6cf
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.byte	0x3
	.byte	0xf7
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	0x12f
	.uleb128 0x7
	.4byte	0x1a9
	.uleb128 0x26
	.4byte	.LASF84
	.byte	0x3
	.byte	0x71
	.byte	0x6
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x619
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x71
	.byte	0x25
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"len"
	.byte	0x3
	.byte	0x71
	.byte	0x2f
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"i"
	.byte	0x3
	.byte	0x73
	.byte	0x9
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"s"
	.byte	0x3
	.byte	0x74
	.byte	0x11
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x601
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x87
	.byte	0x18
	.4byte	0x619
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x27
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x2
	.string	"p"
	.byte	0x3
	.byte	0x90
	.byte	0x1e
	.4byte	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x11e
	.uleb128 0x28
	.4byte	.LASF72
	.byte	0x3
	.byte	0x4f
	.byte	0x6
	.4byte	0x424
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x67f
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x4f
	.byte	0x2b
	.4byte	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"len"
	.byte	0x3
	.byte	0x4f
	.byte	0x35
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"s"
	.byte	0x3
	.byte	0x51
	.byte	0x11
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"ss"
	.byte	0x3
	.byte	0x52
	.byte	0x11
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.string	"se"
	.byte	0x3
	.byte	0x52
	.byte	0x16
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0x3
	.byte	0x38
	.byte	0x14
	.4byte	0xe2
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ba
	.uleb128 0x9
	.string	"tag"
	.byte	0x3
	.byte	0x38
	.byte	0x25
	.4byte	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x3a
	.byte	0x1f
	.4byte	0x6ca
	.uleb128 0x5
	.byte	0x3
	.4byte	names.0
	.byte	0
	.uleb128 0xb
	.4byte	0xe7
	.4byte	0x6ca
	.uleb128 0x19
	.4byte	0xa9
	.byte	0x9
	.byte	0
	.uleb128 0x6
	.4byte	0x6ba
	.uleb128 0x29
	.4byte	.LASF85
	.byte	0x4
	.byte	0xb3
	.byte	0x3a
	.4byte	0x1cb
	.byte	0x3
	.uleb128 0x2a
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x127
	.byte	0x14
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x724
	.uleb128 0xd
	.string	"fdt"
	.byte	0x2
	.2byte	0x127
	.byte	0x28
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"val"
	.byte	0x2
	.2byte	0x127
	.byte	0x36
	.4byte	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF77
	.byte	0x2
	.2byte	0x127
	.byte	0x50
	.4byte	0x58e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF78
	.byte	0x2
	.byte	0xc1
	.byte	0x18
	.4byte	0x77
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x75a
	.uleb128 0x9
	.string	"p"
	.byte	0x2
	.byte	0xc1
	.byte	0x30
	.4byte	0x619
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"bp"
	.byte	0x2
	.byte	0xc3
	.byte	0x14
	.4byte	0x75a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	0x5f
	.uleb128 0xf
	.4byte	.LASF79
	.byte	0x1
	.byte	0x81
	.byte	0x18
	.4byte	0x8f
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x787
	.uleb128 0x9
	.string	"x"
	.byte	0x1
	.byte	0x81
	.byte	0x2d
	.4byte	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0xf
	.4byte	.LASF80
	.byte	0x1
	.byte	0x7c
	.byte	0x17
	.4byte	0x112
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7af
	.uleb128 0x9
	.string	"x"
	.byte	0x1
	.byte	0x7c
	.byte	0x2d
	.4byte	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF81
	.byte	0x1
	.byte	0x78
	.byte	0x18
	.4byte	0x77
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.string	"x"
	.byte	0x1
	.byte	0x78
	.byte	0x2d
	.4byte	0x112
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 287
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.sleb128 3
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x24
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
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
	.4byte	.LFB7
	.uleb128 .LFE7-.LFB7
	.byte	0x7
	.4byte	.LFB8
	.uleb128 .LFE8-.LFB8
	.byte	0x7
	.4byte	.LFB9
	.uleb128 .LFE9-.LFB9
	.byte	0x7
	.4byte	.LFB12
	.uleb128 .LFE12-.LFB12
	.byte	0x7
	.4byte	.LFB14
	.uleb128 .LFE14-.LFB14
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF49:
	.string	"result"
.LASF81:
	.string	"fdt32_to_cpu"
.LASF26:
	.string	"version"
.LASF27:
	.string	"last_comp_version"
.LASF47:
	.string	"arg_debug"
.LASF63:
	.string	"p_rsvmap"
.LASF12:
	.string	"uint64_t"
.LASF76:
	.string	"fdt_set_magic"
.LASF3:
	.string	"short int"
.LASF16:
	.string	"size_t"
.LASF53:
	.string	"this_len"
.LASF62:
	.string	"off_str"
.LASF20:
	.string	"fdt64_t"
.LASF50:
	.string	"file"
.LASF22:
	.string	"totalsize"
.LASF25:
	.string	"off_mem_rsvmap"
.LASF38:
	.string	"TrapNetCounter"
.LASF7:
	.string	"uint8_t"
.LASF77:
	.string	"fdth"
.LASF45:
	.string	"input_buf"
.LASF55:
	.string	"endp"
.LASF85:
	.string	"xPortIsInsideInterrupt"
.LASF80:
	.string	"cpu_to_fdt32"
.LASF78:
	.string	"fdt32_ld"
.LASF37:
	.string	"_ctype_"
.LASF65:
	.string	"p_strings"
.LASF5:
	.string	"long long int"
.LASF36:
	.string	"TickType_t"
.LASF28:
	.string	"boot_cpuid_phys"
.LASF54:
	.string	"smagic"
.LASF4:
	.string	"long int"
.LASF67:
	.string	"shift"
.LASF33:
	.string	"address"
.LASF44:
	.string	"printf"
.LASF31:
	.string	"fdt_header"
.LASF73:
	.string	"tagname"
.LASF40:
	.string	"xTaskGetTickCount"
.LASF61:
	.string	"off_dt"
.LASF8:
	.string	"unsigned char"
.LASF24:
	.string	"off_dt_strings"
.LASF29:
	.string	"size_dt_strings"
.LASF17:
	.string	"long double"
.LASF72:
	.string	"util_is_printable_string"
.LASF64:
	.string	"p_struct"
.LASF39:
	.string	"tc_wifi_dtb"
.LASF2:
	.string	"signed char"
.LASF75:
	.string	"dump_blob"
.LASF13:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF84:
	.string	"utilfdt_print_data"
.LASF14:
	.string	"unsigned int"
.LASF71:
	.string	"tc_blfdtdump"
.LASF74:
	.string	"names"
.LASF35:
	.string	"BaseType_t"
.LASF51:
	.string	"debug"
.LASF59:
	.string	"blob"
.LASF19:
	.string	"fdt32_t"
.LASF9:
	.string	"short unsigned int"
.LASF18:
	.string	"char"
.LASF48:
	.string	"arg_scan"
.LASF43:
	.string	"strlen"
.LASF6:
	.string	"int32_t"
.LASF68:
	.string	"addr"
.LASF82:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF58:
	.string	"_Bool"
.LASF57:
	.string	"valid_header"
.LASF66:
	.string	"depth"
.LASF69:
	.string	"data"
.LASF79:
	.string	"fdt64_to_cpu"
.LASF30:
	.string	"size_dt_struct"
.LASF56:
	.string	"blfdtdump"
.LASF11:
	.string	"long unsigned int"
.LASF15:
	.string	"uintptr_t"
.LASF34:
	.string	"size"
.LASF41:
	.string	"xTaskGetTickCountFromISR"
.LASF46:
	.string	"input_len"
.LASF83:
	.string	"bl_printk"
.LASF70:
	.string	"cell"
.LASF32:
	.string	"fdt_reserve_entry"
.LASF21:
	.string	"magic"
.LASF52:
	.string	"scan"
.LASF23:
	.string	"off_dt_struct"
.LASF60:
	.string	"blob_off"
.LASF42:
	.string	"memchr"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blfdt"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/test/tc_blfdt_dump.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
