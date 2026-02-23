	.file	"fdt_sw.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blfdt" "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_sw.c"
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
	.section	.text.cpu_to_fdt32,"ax",@progbits
	.align	1
	.type	cpu_to_fdt32, @function
cpu_to_fdt32:
.LFB4:
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
.LFE4:
	.size	cpu_to_fdt32, .-cpu_to_fdt32
	.section	.text.cpu_to_fdt64,"ax",@progbits
	.align	1
	.type	cpu_to_fdt64, @function
cpu_to_fdt64:
.LFB6:
	.loc 1 134 1
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
	.loc 1 135 57
	addi	a5,s0,-56
	.loc 1 135 60
	lbu	a5,0(a5)
	.loc 1 135 25
	mv	t3,a5
	li	t4,0
	.loc 1 135 65
	slli	t6,t3,24
	li	t5,0
	.loc 1 135 111
	addi	a5,s0,-56
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 135 76
	sw	a5,-64(s0)
	sw	zero,-60(s0)
	.loc 1 135 116
	lw	a5,-64(s0)
	slli	a3,a5,16
	li	a2,0
	.loc 1 135 72
	or	a5,t5,a2
	sw	a5,-72(s0)
	or	a5,t6,a3
	sw	a5,-68(s0)
	.loc 1 135 162
	addi	a5,s0,-56
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 135 127
	sw	a5,-80(s0)
	sw	zero,-76(s0)
	.loc 1 135 167
	lw	a5,-80(s0)
	slli	a5,a5,8
	sw	a5,-84(s0)
	sw	zero,-88(s0)
	.loc 1 135 123
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
	.loc 1 135 213
	addi	a5,s0,-56
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 135 178
	sw	a5,-104(s0)
	sw	zero,-100(s0)
	.loc 1 135 218
	lw	a5,-104(s0)
	slli	a5,a5,0
	sw	a5,-108(s0)
	sw	zero,-112(s0)
	.loc 1 135 174
	lw	a2,-96(s0)
	lw	a3,-92(s0)
	mv	a1,a2
	lw	a4,-112(s0)
	lw	a5,-108(s0)
	mv	a0,a4
	or	s10,a1,a0
	or	s11,a3,a5
	.loc 1 135 264
	addi	a5,s0,-56
	addi	a5,a5,4
	lbu	a5,0(a5)
	.loc 1 135 229
	sw	a5,-120(s0)
	sw	zero,-116(s0)
	.loc 1 135 269
	lw	a4,-120(s0)
	lw	a5,-116(s0)
	mv	a3,a4
	srli	s9,a3,8
	mv	a5,a4
	slli	s8,a5,24
	.loc 1 135 225
	or	s6,s10,s8
	or	s7,s11,s9
	.loc 1 135 315
	addi	a5,s0,-56
	addi	a5,a5,5
	lbu	a5,0(a5)
	.loc 1 135 280
	sw	a5,-128(s0)
	sw	zero,-124(s0)
	.loc 1 135 320
	lw	a3,-128(s0)
	lw	a4,-124(s0)
	mv	a5,a3
	srli	a5,a5,16
	mv	a2,a4
	slli	t2,a2,16
	add	t2,a5,t2
	mv	a5,a3
	slli	t1,a5,16
	.loc 1 135 276
	or	s4,s6,t1
	or	s5,s7,t2
	.loc 1 135 366
	addi	a5,s0,-56
	addi	a5,a5,6
	lbu	a5,0(a5)
	.loc 1 135 331
	sw	a5,-136(s0)
	sw	zero,-132(s0)
	.loc 1 135 371
	lw	a3,-136(s0)
	lw	a4,-132(s0)
	mv	a5,a3
	srli	a5,a5,24
	mv	a2,a4
	slli	a7,a2,8
	add	a7,a5,a7
	mv	a5,a3
	slli	a6,a5,8
	.loc 1 135 327
	or	s2,s4,a6
	or	s3,s5,a7
	.loc 1 135 415
	addi	a5,s0,-56
	addi	a5,a5,7
	lbu	a5,0(a5)
	.loc 1 135 380
	sw	a5,-144(s0)
	sw	zero,-140(s0)
	.loc 1 135 12
	lw	a5,-144(s0)
	lw	a6,-140(s0)
	mv	a4,a5
	or	a4,s2,a4
	sw	a4,-152(s0)
	mv	a5,a6
	or	a5,s3,a5
	sw	a5,-148(s0)
	.loc 1 135 12 is_stmt 0 discriminator 1
	lw	a4,-152(s0)
	lw	a5,-148(s0)
	.loc 1 136 1 is_stmt 1
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
.LFE6:
	.size	cpu_to_fdt64, .-cpu_to_fdt64
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
	.section	.text.fdt_set_magic,"ax",@progbits
	.align	1
	.type	fdt_set_magic, @function
fdt_set_magic:
.LFB10:
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
.LFE10:
	.size	fdt_set_magic, .-fdt_set_magic
	.section	.text.fdt_set_totalsize,"ax",@progbits
	.align	1
	.type	fdt_set_totalsize, @function
fdt_set_totalsize:
.LFB11:
	.loc 2 296 63
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
	.loc 2 296 84
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 2 296 135
	lw	a0,-40(s0)
	call	cpu_to_fdt32
	mv	a4,a0
	.loc 2 296 133 discriminator 1
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 2 296 154
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
.LFE11:
	.size	fdt_set_totalsize, .-fdt_set_totalsize
	.section	.text.fdt_set_off_dt_struct,"ax",@progbits
	.align	1
	.type	fdt_set_off_dt_struct, @function
fdt_set_off_dt_struct:
.LFB12:
	.loc 2 297 67
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
	.loc 2 297 88
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 2 297 143
	lw	a0,-40(s0)
	call	cpu_to_fdt32
	mv	a4,a0
	.loc 2 297 141 discriminator 1
	lw	a5,-20(s0)
	sw	a4,8(a5)
	.loc 2 297 162
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
.LFE12:
	.size	fdt_set_off_dt_struct, .-fdt_set_off_dt_struct
	.section	.text.fdt_set_off_dt_strings,"ax",@progbits
	.align	1
	.type	fdt_set_off_dt_strings, @function
fdt_set_off_dt_strings:
.LFB13:
	.loc 2 298 68
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
	.loc 2 298 89
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 2 298 145
	lw	a0,-40(s0)
	call	cpu_to_fdt32
	mv	a4,a0
	.loc 2 298 143 discriminator 1
	lw	a5,-20(s0)
	sw	a4,12(a5)
	.loc 2 298 164
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
.LFE13:
	.size	fdt_set_off_dt_strings, .-fdt_set_off_dt_strings
	.section	.text.fdt_set_off_mem_rsvmap,"ax",@progbits
	.align	1
	.type	fdt_set_off_mem_rsvmap, @function
fdt_set_off_mem_rsvmap:
.LFB14:
	.loc 2 299 68
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
	.loc 2 299 89
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 2 299 145
	lw	a0,-40(s0)
	call	cpu_to_fdt32
	mv	a4,a0
	.loc 2 299 143 discriminator 1
	lw	a5,-20(s0)
	sw	a4,16(a5)
	.loc 2 299 164
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
	.size	fdt_set_off_mem_rsvmap, .-fdt_set_off_mem_rsvmap
	.section	.text.fdt_set_version,"ax",@progbits
	.align	1
	.type	fdt_set_version, @function
fdt_set_version:
.LFB15:
	.loc 2 300 61
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
	.loc 2 300 82
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 2 300 131
	lw	a0,-40(s0)
	call	cpu_to_fdt32
	mv	a4,a0
	.loc 2 300 129 discriminator 1
	lw	a5,-20(s0)
	sw	a4,20(a5)
	.loc 2 300 150
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
.LFE15:
	.size	fdt_set_version, .-fdt_set_version
	.section	.text.fdt_set_last_comp_version,"ax",@progbits
	.align	1
	.type	fdt_set_last_comp_version, @function
fdt_set_last_comp_version:
.LFB16:
	.loc 2 301 71
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
	.loc 2 301 92
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 2 301 151
	lw	a0,-40(s0)
	call	cpu_to_fdt32
	mv	a4,a0
	.loc 2 301 149 discriminator 1
	lw	a5,-20(s0)
	sw	a4,24(a5)
	.loc 2 301 170
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
.LFE16:
	.size	fdt_set_last_comp_version, .-fdt_set_last_comp_version
	.section	.text.fdt_set_size_dt_strings,"ax",@progbits
	.align	1
	.type	fdt_set_size_dt_strings, @function
fdt_set_size_dt_strings:
.LFB18:
	.loc 2 303 69
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
	.loc 2 303 90
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 2 303 147
	lw	a0,-40(s0)
	call	cpu_to_fdt32
	mv	a4,a0
	.loc 2 303 145 discriminator 1
	lw	a5,-20(s0)
	sw	a4,32(a5)
	.loc 2 303 166
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
.LFE18:
	.size	fdt_set_size_dt_strings, .-fdt_set_size_dt_strings
	.section	.text.fdt_set_size_dt_struct,"ax",@progbits
	.align	1
	.type	fdt_set_size_dt_struct, @function
fdt_set_size_dt_struct:
.LFB19:
	.loc 2 304 68
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
	.loc 2 304 89
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 2 304 145
	lw	a0,-40(s0)
	call	cpu_to_fdt32
	mv	a4,a0
	.loc 2 304 143 discriminator 1
	lw	a5,-20(s0)
	sw	a4,36(a5)
	.loc 2 304 164
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
.LFE19:
	.size	fdt_set_size_dt_struct, .-fdt_set_size_dt_struct
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
	.section	.text.fdt_offset_ptr_w_,"ax",@progbits
	.align	1
	.type	fdt_offset_ptr_w_, @function
fdt_offset_ptr_w_:
.LFB37:
	.loc 3 106 1
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
	.loc 3 107 31
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	fdt_offset_ptr_
	mv	a5,a0
	.loc 3 108 1
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
	.size	fdt_offset_ptr_w_, .-fdt_offset_ptr_w_
	.section	.text.fdt_sw_probe_,"ax",@progbits
	.align	1
	.type	fdt_sw_probe_, @function
fdt_sw_probe_:
.LFB40:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_sw.c"
	.loc 4 38 1
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
	.loc 4 39 11
	lw	a5,-20(s0)
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 39 8 discriminator 1
	li	a5,-804388864
	addi	a5,a5,-275
	bne	a4,a5,.L23
	.loc 4 40 16
	li	a5,-7
	j	.L24
.L23:
	.loc 4 41 16
	lw	a5,-20(s0)
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 41 13 discriminator 1
	li	a5,804388864
	addi	a5,a5,274
	beq	a4,a5,.L25
	.loc 4 42 16
	li	a5,-9
	j	.L24
.L25:
	.loc 4 43 12
	li	a5,0
.L24:
	.loc 4 44 1
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
	.size	fdt_sw_probe_, .-fdt_sw_probe_
	.section	.text.fdt_sw_probe_memrsv_,"ax",@progbits
	.align	1
	.type	fdt_sw_probe_memrsv_, @function
fdt_sw_probe_memrsv_:
.LFB41:
	.loc 4 60 1
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
	.loc 4 61 15
	lw	a0,-36(s0)
	call	fdt_sw_probe_
	sw	a0,-20(s0)
	.loc 4 62 8
	lw	a5,-20(s0)
	beq	a5,zero,.L27
	.loc 4 63 16
	lw	a5,-20(s0)
	j	.L28
.L27:
	.loc 4 65 11
	lw	a5,-36(s0)
	addi	a5,a5,12
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 65 8 discriminator 1
	beq	a5,zero,.L29
	.loc 4 66 16
	li	a5,-7
	j	.L28
.L29:
	.loc 4 67 12
	li	a5,0
.L28:
	.loc 4 68 1
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
.LFE41:
	.size	fdt_sw_probe_memrsv_, .-fdt_sw_probe_memrsv_
	.section	.text.fdt_sw_probe_struct_,"ax",@progbits
	.align	1
	.type	fdt_sw_probe_struct_, @function
fdt_sw_probe_struct_:
.LFB42:
	.loc 4 86 1
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
	.loc 4 87 15
	lw	a0,-36(s0)
	call	fdt_sw_probe_
	sw	a0,-20(s0)
	.loc 4 88 8
	lw	a5,-20(s0)
	beq	a5,zero,.L31
	.loc 4 89 16
	lw	a5,-20(s0)
	j	.L32
.L31:
	.loc 4 91 11
	lw	a5,-36(s0)
	addi	a5,a5,12
	mv	a0,a5
	call	fdt32_ld
	mv	s1,a0
	.loc 4 91 80 discriminator 1
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 91 8 discriminator 2
	beq	s1,a5,.L33
	.loc 4 92 16
	li	a5,-7
	j	.L32
.L33:
	.loc 4 93 12
	li	a5,0
.L32:
	.loc 4 94 1
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
.LFE42:
	.size	fdt_sw_probe_struct_, .-fdt_sw_probe_struct_
	.section	.text.fdt_grab_space_,"ax",@progbits
	.align	1
	.type	fdt_grab_space_, @function
fdt_grab_space_:
.LFB43:
	.loc 4 109 1
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
	.loc 4 110 20
	lw	a5,-36(s0)
	addi	a5,a5,36
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 110 9 discriminator 1
	sw	a5,-20(s0)
	.loc 4 113 19
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	s1,a0
	.loc 4 113 82 discriminator 1
	lw	a5,-36(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 113 78 discriminator 2
	sub	s1,s1,a5
	.loc 4 114 13
	lw	a5,-36(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 114 9 discriminator 1
	sub	a5,s1,a5
	.loc 4 113 15
	sw	a5,-24(s0)
	.loc 4 116 17
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	add	a4,a4,a5
	.loc 4 116 23
	lw	a5,-20(s0)
	.loc 4 116 8
	bltu	a4,a5,.L35
	.loc 4 116 44 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	add	a4,a4,a5
	.loc 4 116 50 discriminator 1
	lw	a5,-24(s0)
	.loc 4 116 33 discriminator 1
	bleu	a4,a5,.L36
.L35:
	.loc 4 117 15
	li	a5,0
	j	.L37
.L36:
	.loc 4 119 5
	lw	a4,-20(s0)
	.loc 4 119 40
	lw	a5,-40(s0)
	add	a5,a4,a5
	.loc 4 119 5
	mv	a1,a5
	lw	a0,-36(s0)
	call	fdt_set_size_dt_struct
	.loc 4 120 12
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	fdt_offset_ptr_w_
	mv	a5,a0
.L37:
	.loc 4 121 1
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
.LFE43:
	.size	fdt_grab_space_, .-fdt_grab_space_
	.section	.text.fdt_create,"ax",@progbits
	.align	1
	.globl	fdt_create
	.type	fdt_create, @function
fdt_create:
.LFB44:
	.loc 4 124 1
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
	.loc 4 125 18
	li	a5,48
	sw	a5,-20(s0)
	.loc 4 127 11
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 4 129 17
	lw	a5,-40(s0)
	.loc 4 129 8
	lw	a4,-20(s0)
	bleu	a4,a5,.L39
	.loc 4 130 16
	li	a5,-3
	j	.L40
.L39:
	.loc 4 132 5
	lw	a5,-40(s0)
	mv	a2,a5
	li	a1,0
	lw	a0,-36(s0)
	call	memset
	.loc 4 134 5
	li	a5,804388864
	addi	a1,a5,274
	lw	a0,-24(s0)
	call	fdt_set_magic
	.loc 4 135 5
	li	a1,17
	lw	a0,-24(s0)
	call	fdt_set_version
	.loc 4 136 5
	li	a1,2
	lw	a0,-24(s0)
	call	fdt_set_last_comp_version
	.loc 4 137 5
	lw	a5,-40(s0)
	mv	a1,a5
	lw	a0,-24(s0)
	call	fdt_set_totalsize
	.loc 4 139 5
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	fdt_set_off_mem_rsvmap
	.loc 4 140 5
	lw	a5,-24(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 140 5 is_stmt 0 discriminator 1
	mv	a1,a5
	lw	a0,-24(s0)
	call	fdt_set_off_dt_struct
	.loc 4 141 5 is_stmt 1
	li	a1,0
	lw	a0,-24(s0)
	call	fdt_set_off_dt_strings
	.loc 4 143 12
	li	a5,0
.L40:
	.loc 4 144 1
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
	.size	fdt_create, .-fdt_create
	.section	.text.fdt_resize,"ax",@progbits
	.align	1
	.globl	fdt_resize
	.type	fdt_resize, @function
fdt_resize:
.LFB45:
	.loc 4 147 1
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
.LBB2:
	.loc 4 151 27
	lw	a0,-52(s0)
	call	fdt_sw_probe_
	sw	a0,-20(s0)
	.loc 4 151 19 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L42
	.loc 4 151 60 discriminator 2
	lw	a5,-20(s0)
	.loc 4 151 60 is_stmt 0
	j	.L43
.L42:
.LBE2:
	.loc 4 153 18 is_stmt 1
	lw	a5,-52(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	fdt32_ld
	mv	s1,a0
	.loc 4 153 85 discriminator 1
	lw	a5,-52(s0)
	addi	a5,a5,36
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 153 14 discriminator 2
	add	a5,s1,a5
	sw	a5,-24(s0)
	.loc 4 154 18
	lw	a5,-52(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	fdt32_ld
	sw	a0,-28(s0)
	.loc 4 156 19
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	s1,a4,a5
	.loc 4 156 35
	lw	a5,-52(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 156 8 discriminator 1
	bleu	s1,a5,.L44
	.loc 4 157 16
	li	a5,-13
	j	.L43
.L44:
	.loc 4 159 19
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a4,a4,a5
	.loc 4 159 31
	lw	a5,-60(s0)
	.loc 4 159 8
	bleu	a4,a5,.L45
	.loc 4 160 16
	li	a5,-3
	j	.L43
.L45:
	.loc 4 162 31
	lw	a5,-52(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 162 90 discriminator 1
	lw	a5,-28(s0)
	sub	a5,a4,a5
	.loc 4 162 13 discriminator 1
	lw	a4,-52(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 4 163 37
	lw	a4,-60(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	.loc 4 163 13
	lw	a4,-56(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 4 167 8
	lw	a4,-56(s0)
	lw	a5,-52(s0)
	bgtu	a4,a5,.L46
	.loc 4 168 9
	lw	a2,-24(s0)
	lw	a1,-52(s0)
	lw	a0,-56(s0)
	call	memmove
	.loc 4 169 9
	lw	a2,-28(s0)
	lw	a1,-32(s0)
	lw	a0,-36(s0)
	call	memmove
	j	.L47
.L46:
	.loc 4 171 9
	lw	a2,-28(s0)
	lw	a1,-32(s0)
	lw	a0,-36(s0)
	call	memmove
	.loc 4 172 9
	lw	a2,-24(s0)
	lw	a1,-52(s0)
	lw	a0,-56(s0)
	call	memmove
.L47:
	.loc 4 175 5
	lw	a5,-60(s0)
	mv	a1,a5
	lw	a0,-56(s0)
	call	fdt_set_totalsize
	.loc 4 176 11
	lw	a5,-56(s0)
	addi	a5,a5,12
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 176 8 discriminator 1
	beq	a5,zero,.L48
	.loc 4 177 9
	lw	a5,-60(s0)
	mv	a1,a5
	lw	a0,-56(s0)
	call	fdt_set_off_dt_strings
.L48:
	.loc 4 179 12
	li	a5,0
.L43:
	.loc 4 180 1
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
.LFE45:
	.size	fdt_resize, .-fdt_resize
	.section	.text.fdt_add_reservemap_entry,"ax",@progbits
	.align	1
	.globl	fdt_add_reservemap_entry
	.type	fdt_add_reservemap_entry, @function
fdt_add_reservemap_entry:
.LFB46:
	.loc 4 183 1
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
	sw	a0,-36(s0)
	sw	a1,-48(s0)
	sw	a2,-44(s0)
	sw	a3,-56(s0)
	sw	a4,-52(s0)
.LBB3:
	.loc 4 187 27
	lw	a0,-36(s0)
	call	fdt_sw_probe_memrsv_
	sw	a0,-20(s0)
	.loc 4 187 19 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L50
	.loc 4 187 67 discriminator 2
	lw	a5,-20(s0)
	.loc 4 187 67 is_stmt 0
	j	.L51
.L50:
.LBE3:
	.loc 4 189 16 is_stmt 1
	lw	a5,-36(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 189 12 discriminator 1
	sw	a5,-24(s0)
	.loc 4 190 17
	lw	a5,-24(s0)
	addi	s1,a5,16
	.loc 4 190 36
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 190 8 discriminator 1
	bleu	s1,a5,.L52
	.loc 4 191 16
	li	a5,-3
	j	.L51
.L52:
	.loc 4 193 10
	lw	a5,-24(s0)
	.loc 4 193 8
	lw	a4,-36(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 4 194 19
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cpu_to_fdt64
	mv	a4,a0
	mv	a5,a1
	.loc 4 194 17 discriminator 1
	lw	a3,-28(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 4 195 16
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cpu_to_fdt64
	mv	a4,a0
	mv	a5,a1
	.loc 4 195 14 discriminator 1
	lw	a3,-28(s0)
	sw	a4,8(a3)
	sw	a5,12(a3)
	.loc 4 197 5
	lw	a5,-24(s0)
	.loc 4 197 39
	addi	a5,a5,16
	.loc 4 197 5
	mv	a1,a5
	lw	a0,-36(s0)
	call	fdt_set_off_dt_struct
	.loc 4 199 12
	li	a5,0
.L51:
	.loc 4 200 1
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
	.size	fdt_add_reservemap_entry, .-fdt_add_reservemap_entry
	.section	.text.fdt_finish_reservemap,"ax",@progbits
	.align	1
	.globl	fdt_finish_reservemap
	.type	fdt_finish_reservemap, @function
fdt_finish_reservemap:
.LFB47:
	.loc 4 203 1
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
	.loc 4 204 15
	li	a3,0
	li	a4,0
	li	a1,0
	li	a2,0
	lw	a0,-36(s0)
	call	fdt_add_reservemap_entry
	sw	a0,-20(s0)
	.loc 4 206 8
	lw	a5,-20(s0)
	beq	a5,zero,.L54
	.loc 4 207 16
	lw	a5,-20(s0)
	j	.L55
.L54:
	.loc 4 209 5
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 209 5 is_stmt 0 discriminator 1
	mv	a1,a5
	lw	a0,-36(s0)
	call	fdt_set_off_dt_strings
	.loc 4 210 12 is_stmt 1
	li	a5,0
.L55:
	.loc 4 211 1
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
	.size	fdt_finish_reservemap, .-fdt_finish_reservemap
	.section	.text.fdt_begin_node,"ax",@progbits
	.align	1
	.globl	fdt_begin_node
	.type	fdt_begin_node, @function
fdt_begin_node:
.LFB48:
	.loc 4 214 1
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
.LBB4:
	.loc 4 218 27
	lw	a0,-36(s0)
	call	fdt_sw_probe_struct_
	sw	a0,-20(s0)
	.loc 4 218 19 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L57
	.loc 4 218 67 discriminator 2
	lw	a5,-20(s0)
	.loc 4 218 67 is_stmt 0
	j	.L58
.L57:
.LBE4:
	.loc 4 220 15 is_stmt 1
	lw	a0,-40(s0)
	call	strlen
	mv	a5,a0
	.loc 4 220 28 discriminator 1
	addi	a5,a5,1
	.loc 4 220 13 discriminator 1
	sw	a5,-24(s0)
	.loc 4 221 80
	lw	a5,-24(s0)
	addi	a5,a5,3
	.loc 4 221 85
	andi	a5,a5,-4
	.loc 4 221 43
	addi	a5,a5,4
	.loc 4 221 10
	mv	a1,a5
	lw	a0,-36(s0)
	call	fdt_grab_space_
	sw	a0,-28(s0)
	.loc 4 222 8
	lw	a5,-28(s0)
	bne	a5,zero,.L59
	.loc 4 223 16
	li	a5,-3
	j	.L58
.L59:
	.loc 4 225 15
	li	a0,1
	call	cpu_to_fdt32
	mv	a4,a0
	.loc 4 225 13 discriminator 1
	lw	a5,-28(s0)
	sw	a4,0(a5)
	.loc 4 226 14
	lw	a5,-28(s0)
	addi	a5,a5,4
	.loc 4 226 5
	lw	a4,-24(s0)
	mv	a2,a4
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcpy
	.loc 4 227 12
	li	a5,0
.L58:
	.loc 4 228 1
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
	.size	fdt_begin_node, .-fdt_begin_node
	.section	.text.fdt_end_node,"ax",@progbits
	.align	1
	.globl	fdt_end_node
	.type	fdt_end_node, @function
fdt_end_node:
.LFB49:
	.loc 4 231 1
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
.LBB5:
	.loc 4 234 27
	lw	a0,-36(s0)
	call	fdt_sw_probe_struct_
	sw	a0,-20(s0)
	.loc 4 234 19 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L61
	.loc 4 234 67 discriminator 2
	lw	a5,-20(s0)
	.loc 4 234 67 is_stmt 0
	j	.L62
.L61:
.LBE5:
	.loc 4 236 10 is_stmt 1
	li	a1,4
	lw	a0,-36(s0)
	call	fdt_grab_space_
	sw	a0,-24(s0)
	.loc 4 237 8
	lw	a5,-24(s0)
	bne	a5,zero,.L63
	.loc 4 238 16
	li	a5,-3
	j	.L62
.L63:
	.loc 4 240 11
	li	a0,2
	call	cpu_to_fdt32
	mv	a4,a0
	.loc 4 240 9 discriminator 1
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 4 241 12
	li	a5,0
.L62:
	.loc 4 242 1
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
	.size	fdt_end_node, .-fdt_end_node
	.section	.text.fdt_find_add_string_,"ax",@progbits
	.align	1
	.type	fdt_find_add_string_, @function
fdt_find_add_string_:
.LFB50:
	.loc 4 245 1
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
	.loc 4 246 36
	lw	a5,-52(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 246 11 discriminator 1
	lw	a5,-52(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 4 248 24
	lw	a5,-52(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 248 9 discriminator 1
	sw	a5,-24(s0)
	.loc 4 249 15
	lw	a0,-56(s0)
	call	strlen
	mv	a5,a0
	.loc 4 249 25 discriminator 1
	addi	a5,a5,1
	.loc 4 249 9 discriminator 1
	sw	a5,-28(s0)
	.loc 4 252 33
	lw	a5,-24(s0)
	neg	a5,a5
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 4 252 9
	lw	a2,-56(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	fdt_find_string_
	sw	a0,-32(s0)
	.loc 4 253 8
	lw	a5,-32(s0)
	beq	a5,zero,.L65
	.loc 4 254 18
	lw	a4,-32(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	j	.L66
.L65:
	.loc 4 257 14
	lw	a5,-24(s0)
	neg	a4,a5
	.loc 4 257 12
	lw	a5,-28(s0)
	sub	a5,a4,a5
	sw	a5,-36(s0)
	.loc 4 258 20
	lw	a5,-52(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	fdt32_ld
	mv	s1,a0
	.loc 4 258 87 discriminator 1
	lw	a5,-52(s0)
	addi	a5,a5,36
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 258 83 discriminator 2
	add	a5,s1,a5
	.loc 4 258 16 discriminator 2
	sw	a5,-40(s0)
	.loc 4 259 11
	lw	a5,-52(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 259 70 discriminator 1
	lw	a5,-36(s0)
	add	a4,a4,a5
	.loc 4 259 79 discriminator 1
	lw	a5,-40(s0)
	.loc 4 259 8 discriminator 1
	bgeu	a4,a5,.L67
	.loc 4 260 16
	li	a5,0
	j	.L66
.L67:
	.loc 4 262 5
	lw	a5,-36(s0)
	.loc 4 262 19
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 4 262 5
	lw	a4,-28(s0)
	mv	a2,a4
	lw	a1,-56(s0)
	mv	a0,a5
	call	memcpy
	.loc 4 263 45
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 4 263 5
	mv	a1,a5
	lw	a0,-52(s0)
	call	fdt_set_size_dt_strings
	.loc 4 264 12
	lw	a5,-36(s0)
.L66:
	.loc 4 265 1
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
.LFE50:
	.size	fdt_find_add_string_, .-fdt_find_add_string_
	.section	.text.fdt_property_placeholder,"ax",@progbits
	.align	1
	.globl	fdt_property_placeholder
	.type	fdt_property_placeholder, @function
fdt_property_placeholder:
.LFB51:
	.loc 4 268 1
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
.LBB6:
	.loc 4 272 27
	lw	a0,-36(s0)
	call	fdt_sw_probe_struct_
	sw	a0,-20(s0)
	.loc 4 272 19 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L69
	.loc 4 272 67 discriminator 2
	lw	a5,-20(s0)
	.loc 4 272 67 is_stmt 0
	j	.L70
.L69:
.LBE6:
	.loc 4 274 15 is_stmt 1
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_find_add_string_
	sw	a0,-24(s0)
	.loc 4 275 8
	lw	a5,-24(s0)
	bne	a5,zero,.L71
	.loc 4 276 16
	li	a5,-3
	j	.L70
.L71:
	.loc 4 278 80
	lw	a5,-44(s0)
	addi	a5,a5,3
	.loc 4 278 85
	andi	a5,a5,-4
	.loc 4 278 47
	addi	a5,a5,12
	.loc 4 278 12
	mv	a1,a5
	lw	a0,-36(s0)
	call	fdt_grab_space_
	sw	a0,-28(s0)
	.loc 4 279 8
	lw	a5,-28(s0)
	bne	a5,zero,.L72
	.loc 4 280 16
	li	a5,-3
	j	.L70
.L72:
	.loc 4 282 17
	li	a0,3
	call	cpu_to_fdt32
	mv	a4,a0
	.loc 4 282 15 discriminator 1
	lw	a5,-28(s0)
	sw	a4,0(a5)
	.loc 4 283 21
	lw	a5,-24(s0)
	mv	a0,a5
	call	cpu_to_fdt32
	mv	a4,a0
	.loc 4 283 19 discriminator 1
	lw	a5,-28(s0)
	sw	a4,8(a5)
	.loc 4 284 17
	lw	a5,-44(s0)
	mv	a0,a5
	call	cpu_to_fdt32
	mv	a4,a0
	.loc 4 284 15 discriminator 1
	lw	a5,-28(s0)
	sw	a4,4(a5)
	.loc 4 285 13
	lw	a5,-28(s0)
	addi	a4,a5,12
	.loc 4 285 11
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 4 286 12
	li	a5,0
.L70:
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
	.size	fdt_property_placeholder, .-fdt_property_placeholder
	.section	.text.fdt_property,"ax",@progbits
	.align	1
	.globl	fdt_property
	.type	fdt_property, @function
fdt_property:
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
	sw	a3,-48(s0)
	.loc 4 294 11
	addi	a5,s0,-24
	mv	a3,a5
	lw	a2,-48(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_property_placeholder
	sw	a0,-20(s0)
	.loc 4 295 8
	lw	a5,-20(s0)
	beq	a5,zero,.L74
	.loc 4 296 16
	lw	a5,-20(s0)
	j	.L76
.L74:
	.loc 4 297 5
	lw	a5,-24(s0)
	lw	a4,-48(s0)
	mv	a2,a4
	lw	a1,-44(s0)
	mv	a0,a5
	call	memcpy
	.loc 4 298 12
	li	a5,0
.L76:
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
	.size	fdt_property, .-fdt_property
	.section	.text.fdt_finish,"ax",@progbits
	.align	1
	.globl	fdt_finish
	.type	fdt_finish, @function
fdt_finish:
.LFB53:
	.loc 4 302 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	.loc 4 303 11
	lw	a5,-68(s0)
	sw	a5,-24(s0)
.LBB7:
	.loc 4 309 27
	lw	a0,-68(s0)
	call	fdt_sw_probe_struct_
	sw	a0,-28(s0)
	.loc 4 309 19 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L78
	.loc 4 309 67 discriminator 2
	lw	a5,-28(s0)
	.loc 4 309 67 is_stmt 0
	j	.L85
.L78:
.LBE7:
	.loc 4 312 11 is_stmt 1
	li	a1,4
	lw	a0,-68(s0)
	call	fdt_grab_space_
	sw	a0,-32(s0)
	.loc 4 313 8
	lw	a5,-32(s0)
	bne	a5,zero,.L80
	.loc 4 314 16
	li	a5,-3
	j	.L85
.L80:
	.loc 4 315 12
	li	a0,9
	call	cpu_to_fdt32
	mv	a4,a0
	.loc 4 315 10 discriminator 1
	lw	a5,-32(s0)
	sw	a4,0(a5)
	.loc 4 318 22
	lw	a5,-68(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	s1,a0
	.loc 4 318 85 discriminator 1
	lw	a5,-68(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 318 81 discriminator 2
	sub	a5,s1,a5
	.loc 4 318 18 discriminator 2
	sw	a5,-36(s0)
	.loc 4 319 22
	lw	a5,-68(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	fdt32_ld
	mv	s1,a0
	.loc 4 319 89 discriminator 1
	lw	a5,-68(s0)
	addi	a5,a5,36
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 319 85 discriminator 2
	add	a5,s1,a5
	.loc 4 319 18 discriminator 2
	sw	a5,-40(s0)
	.loc 4 320 5
	lw	a5,-40(s0)
	.loc 4 320 15
	lw	a4,-24(s0)
	add	s1,a4,a5
	.loc 4 320 5
	lw	a5,-36(s0)
	.loc 4 320 33
	lw	a4,-24(s0)
	add	s2,a4,a5
	.loc 4 320 51
	lw	a5,-68(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 320 5 discriminator 1
	mv	a2,a5
	mv	a1,s2
	mv	a0,s1
	call	memmove
	.loc 4 321 5
	lw	a5,-40(s0)
	mv	a1,a5
	lw	a0,-68(s0)
	call	fdt_set_off_dt_strings
	.loc 4 324 12
	sw	zero,-20(s0)
	.loc 4 325 11
	j	.L81
.L83:
	.loc 4 326 12
	lw	a4,-44(s0)
	li	a5,3
	bne	a4,a5,.L82
.LBB8:
	.loc 4 328 17
	lw	a1,-20(s0)
	lw	a0,-68(s0)
	call	fdt_offset_ptr_w_
	sw	a0,-48(s0)
	.loc 4 331 23
	lw	a5,-48(s0)
	lw	a5,8(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 4 331 21 discriminator 1
	sw	a5,-52(s0)
	.loc 4 332 26
	lw	a5,-68(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 332 21 discriminator 1
	lw	a5,-52(s0)
	add	a5,a4,a5
	sw	a5,-52(s0)
	.loc 4 333 29
	lw	a5,-52(s0)
	mv	a0,a5
	call	cpu_to_fdt32
	mv	a4,a0
	.loc 4 333 27 discriminator 1
	lw	a5,-48(s0)
	sw	a4,8(a5)
.L82:
.LBE8:
	.loc 4 335 16
	lw	a5,-56(s0)
	sw	a5,-20(s0)
.L81:
	.loc 4 325 19
	addi	a5,s0,-56
	mv	a2,a5
	lw	a1,-20(s0)
	lw	a0,-68(s0)
	call	fdt_next_tag
	sw	a0,-44(s0)
	.loc 4 325 59 discriminator 1
	lw	a4,-44(s0)
	li	a5,9
	bne	a4,a5,.L83
	.loc 4 337 20
	lw	a5,-56(s0)
	.loc 4 337 8
	bge	a5,zero,.L84
	.loc 4 338 16
	lw	a5,-56(s0)
	j	.L85
.L84:
	.loc 4 341 45
	lw	a5,-68(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 341 5 discriminator 1
	lw	a5,-40(s0)
	.loc 4 341 41 discriminator 1
	add	a5,a4,a5
	.loc 4 341 5 discriminator 1
	mv	a1,a5
	lw	a0,-68(s0)
	call	fdt_set_totalsize
	.loc 4 342 5
	li	a5,-804388864
	addi	a1,a5,-275
	lw	a0,-68(s0)
	call	fdt_set_magic
	.loc 4 343 12
	li	a5,0
.L85:
	.loc 4 344 1
	mv	a0,a5
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE53:
	.size	fdt_finish, .-fdt_finish
	.text
.Letext0:
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/fdt.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc51
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1b
	.4byte	.LASF92
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
	.uleb128 0xb
	.4byte	.LASF8
	.byte	0x5
	.byte	0xe5
	.byte	0x16
	.4byte	0x43
	.uleb128 0x12
	.4byte	0x32
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x9
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0xb
	.4byte	.LASF9
	.byte	0x6
	.byte	0x2e
	.byte	0x17
	.4byte	0x7e
	.uleb128 0x12
	.4byte	0x6d
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0xb
	.4byte	.LASF12
	.byte	0x6
	.byte	0x34
	.byte	0x1b
	.4byte	0x98
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x6
	.byte	0x37
	.byte	0x20
	.4byte	0xab
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x6
	.byte	0x56
	.byte	0x16
	.4byte	0x43
	.uleb128 0x1d
	.byte	0x4
	.uleb128 0x18
	.4byte	0xbe
	.uleb128 0x8
	.4byte	0xca
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x12
	.4byte	0xca
	.uleb128 0x8
	.4byte	0xd1
	.uleb128 0x8
	.4byte	0xe5
	.uleb128 0x18
	.4byte	0xdb
	.uleb128 0x1e
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x63
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x12
	.4byte	0xe6
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x64
	.byte	0x12
	.4byte	0x9f
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x28
	.byte	0x57
	.4byte	0x187
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x58
	.byte	0xd
	.4byte	0xe6
	.byte	0
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x59
	.byte	0xd
	.4byte	0xe6
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x5a
	.byte	0xd
	.4byte	0xe6
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x5b
	.byte	0xd
	.4byte	0xe6
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x5c
	.byte	0xd
	.4byte	0xe6
	.byte	0x10
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x5d
	.byte	0xd
	.4byte	0xe6
	.byte	0x14
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x5e
	.byte	0xd
	.4byte	0xe6
	.byte	0x18
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x61
	.byte	0xd
	.4byte	0xe6
	.byte	0x1c
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x64
	.byte	0xd
	.4byte	0xe6
	.byte	0x20
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x67
	.byte	0xd
	.4byte	0xe6
	.byte	0x24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF31
	.byte	0x10
	.byte	0x6a
	.4byte	0x1ab
	.uleb128 0x5
	.4byte	.LASF32
	.byte	0x6b
	.byte	0xd
	.4byte	0xf7
	.byte	0
	.uleb128 0x5
	.4byte	.LASF33
	.byte	0x6c
	.byte	0xd
	.4byte	0xf7
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x4
	.byte	0x6f
	.4byte	0x1ce
	.uleb128 0x14
	.string	"tag"
	.byte	0x70
	.4byte	0xe6
	.byte	0
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x71
	.byte	0xa
	.4byte	0x1ce
	.byte	0x4
	.byte	0
	.uleb128 0x19
	.4byte	0xca
	.4byte	0x1dd
	.uleb128 0x1a
	.4byte	0x43
	.byte	0
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0xc
	.byte	0x74
	.4byte	0x217
	.uleb128 0x14
	.string	"tag"
	.byte	0x75
	.4byte	0xe6
	.byte	0
	.uleb128 0x14
	.string	"len"
	.byte	0x76
	.4byte	0xe6
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF37
	.byte	0x77
	.byte	0xd
	.4byte	0xe6
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF38
	.byte	0x78
	.byte	0xa
	.4byte	0x217
	.byte	0xc
	.byte	0
	.uleb128 0x19
	.4byte	0xca
	.4byte	0x226
	.uleb128 0x1a
	.4byte	0x43
	.byte	0
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x2
	.byte	0xb8
	.byte	0xa
	.4byte	0x8c
	.4byte	0x246
	.uleb128 0x4
	.4byte	0xdb
	.uleb128 0x4
	.4byte	0x2b
	.uleb128 0x4
	.4byte	0x246
	.byte	0
	.uleb128 0x8
	.4byte	0x2b
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x3
	.byte	0x61
	.byte	0xd
	.4byte	0xd6
	.4byte	0x26b
	.uleb128 0x4
	.4byte	0xd6
	.uleb128 0x4
	.4byte	0x2b
	.uleb128 0x4
	.4byte	0xd6
	.byte	0
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x8
	.byte	0x1f
	.byte	0x8
	.4byte	0xbe
	.4byte	0x28b
	.uleb128 0x4
	.4byte	0xc0
	.uleb128 0x4
	.4byte	0xe0
	.uleb128 0x4
	.4byte	0x32
	.byte	0
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x8
	.byte	0x29
	.byte	0x8
	.4byte	0x32
	.4byte	0x2a1
	.uleb128 0x4
	.4byte	0xd6
	.byte	0
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x8
	.byte	0x20
	.byte	0x8
	.4byte	0xbe
	.4byte	0x2c1
	.uleb128 0x4
	.4byte	0xbe
	.uleb128 0x4
	.4byte	0xdb
	.uleb128 0x4
	.4byte	0x32
	.byte	0
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x8
	.byte	0x21
	.byte	0x8
	.4byte	0xbe
	.4byte	0x2e1
	.uleb128 0x4
	.4byte	0xbe
	.uleb128 0x4
	.4byte	0x2b
	.uleb128 0x4
	.4byte	0x32
	.byte	0
	.uleb128 0x15
	.4byte	.LASF50
	.2byte	0x12d
	.4byte	0x2b
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3be
	.uleb128 0x1
	.string	"fdt"
	.byte	0x4
	.2byte	0x12d
	.byte	0x16
	.4byte	0xbe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xc
	.string	"p"
	.2byte	0x12f
	.byte	0xb
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"end"
	.2byte	0x130
	.byte	0xe
	.4byte	0x3be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x131
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x131
	.byte	0x17
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"tag"
	.2byte	0x132
	.byte	0xe
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x133
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x133
	.byte	0x11
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x393
	.uleb128 0xc
	.string	"err"
	.2byte	0x135
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x147
	.byte	0x22
	.4byte	0x3c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x149
	.byte	0x11
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xe6
	.uleb128 0x8
	.4byte	0x1dd
	.uleb128 0x15
	.4byte	.LASF36
	.2byte	0x121
	.4byte	0x2b
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43f
	.uleb128 0x1
	.string	"fdt"
	.byte	0x4
	.2byte	0x121
	.byte	0x18
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.4byte	.LASF35
	.2byte	0x121
	.byte	0x29
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"val"
	.byte	0x4
	.2byte	0x121
	.byte	0x3b
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"len"
	.byte	0x4
	.2byte	0x121
	.byte	0x44
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"ptr"
	.2byte	0x123
	.byte	0xb
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"ret"
	.2byte	0x124
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF51
	.2byte	0x10b
	.4byte	0x2b
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d0
	.uleb128 0x1
	.string	"fdt"
	.byte	0x4
	.2byte	0x10b
	.byte	0x24
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.4byte	.LASF35
	.2byte	0x10b
	.byte	0x35
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"len"
	.byte	0x4
	.2byte	0x10b
	.byte	0x3f
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.4byte	.LASF52
	.2byte	0x10b
	.byte	0x4b
	.4byte	0x4d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x10d
	.byte	0x1a
	.4byte	0x3c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x10e
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0xc
	.string	"err"
	.2byte	0x110
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xbe
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x4
	.byte	0xf4
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x560
	.uleb128 0x2
	.string	"fdt"
	.byte	0x4
	.byte	0xf4
	.byte	0x27
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"s"
	.byte	0x4
	.byte	0xf4
	.byte	0x38
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0xf6
	.byte	0xb
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"p"
	.byte	0x4
	.byte	0xf7
	.byte	0x11
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0xf8
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"len"
	.byte	0x4
	.byte	0xf9
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0xfa
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0xfa
	.byte	0x15
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0xe6
	.4byte	0x2b
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5af
	.uleb128 0x2
	.string	"fdt"
	.byte	0x4
	.byte	0xe6
	.byte	0x18
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"en"
	.byte	0x4
	.byte	0xe8
	.byte	0xe
	.4byte	0x3be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x6
	.string	"err"
	.byte	0x4
	.byte	0xea
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0xd5
	.4byte	0x2b
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x61b
	.uleb128 0x2
	.string	"fdt"
	.byte	0x4
	.byte	0xd5
	.byte	0x1a
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x4
	.byte	0xd5
	.byte	0x2b
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"nh"
	.byte	0x4
	.byte	0xd7
	.byte	0x1d
	.4byte	0x61b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0xd8
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x6
	.string	"err"
	.byte	0x4
	.byte	0xda
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x1ab
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0xca
	.4byte	0x2b
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x657
	.uleb128 0x2
	.string	"fdt"
	.byte	0x4
	.byte	0xca
	.byte	0x21
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"err"
	.byte	0x4
	.byte	0xcc
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0xb6
	.4byte	0x2b
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d2
	.uleb128 0x2
	.string	"fdt"
	.byte	0x4
	.byte	0xb6
	.byte	0x24
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x4
	.byte	0xb6
	.byte	0x32
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x4
	.byte	0xb6
	.byte	0x41
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"re"
	.byte	0x4
	.byte	0xb8
	.byte	0x1f
	.4byte	0x6d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0xb9
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x6
	.string	"err"
	.byte	0x4
	.byte	0xbb
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x187
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x92
	.4byte	0x2b
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x76e
	.uleb128 0x2
	.string	"fdt"
	.byte	0x4
	.byte	0x92
	.byte	0x16
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"buf"
	.byte	0x4
	.byte	0x92
	.byte	0x21
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x4
	.byte	0x92
	.byte	0x2a
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0x94
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x94
	.byte	0x16
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x95
	.byte	0xb
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.4byte	.LASF67
	.byte	0x95
	.byte	0x15
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x6
	.string	"err"
	.byte	0x4
	.byte	0x97
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x7b
	.4byte	0x2b
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c2
	.uleb128 0x2
	.string	"buf"
	.byte	0x4
	.byte	0x7b
	.byte	0x16
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x4
	.byte	0x7b
	.byte	0x1f
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x7d
	.byte	0x12
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"fdt"
	.byte	0x4
	.byte	0x7f
	.byte	0xb
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x4
	.byte	0x6c
	.byte	0xe
	.4byte	0xbe
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x817
	.uleb128 0x2
	.string	"fdt"
	.byte	0x4
	.byte	0x6c
	.byte	0x24
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"len"
	.byte	0x4
	.byte	0x6c
	.byte	0x30
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x6e
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0x6f
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x4
	.byte	0x55
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x850
	.uleb128 0x2
	.string	"fdt"
	.byte	0x4
	.byte	0x55
	.byte	0x27
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"err"
	.byte	0x4
	.byte	0x57
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x4
	.byte	0x3b
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x889
	.uleb128 0x2
	.string	"fdt"
	.byte	0x4
	.byte	0x3b
	.byte	0x27
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"err"
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x4
	.byte	0x25
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b3
	.uleb128 0x2
	.string	"fdt"
	.byte	0x4
	.byte	0x25
	.byte	0x20
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x3
	.byte	0x69
	.byte	0x15
	.4byte	0xbe
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ec
	.uleb128 0x2
	.string	"fdt"
	.byte	0x3
	.byte	0x69
	.byte	0x2d
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x3
	.byte	0x69
	.byte	0x36
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x3
	.byte	0x64
	.byte	0x1b
	.4byte	0xdb
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x925
	.uleb128 0x2
	.string	"fdt"
	.byte	0x3
	.byte	0x64
	.byte	0x37
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x3
	.byte	0x64
	.byte	0x40
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF79
	.2byte	0x130
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x96b
	.uleb128 0x1
	.string	"fdt"
	.byte	0x2
	.2byte	0x130
	.byte	0x31
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"val"
	.byte	0x2
	.2byte	0x130
	.byte	0x3f
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x130
	.byte	0x59
	.4byte	0x96b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	0x103
	.uleb128 0xa
	.4byte	.LASF80
	.2byte	0x12f
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b6
	.uleb128 0x1
	.string	"fdt"
	.byte	0x2
	.2byte	0x12f
	.byte	0x32
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"val"
	.byte	0x2
	.2byte	0x12f
	.byte	0x40
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x12f
	.byte	0x5a
	.4byte	0x96b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF81
	.2byte	0x12d
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9fc
	.uleb128 0x1
	.string	"fdt"
	.byte	0x2
	.2byte	0x12d
	.byte	0x34
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"val"
	.byte	0x2
	.2byte	0x12d
	.byte	0x42
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x12d
	.byte	0x5c
	.4byte	0x96b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF82
	.2byte	0x12c
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa42
	.uleb128 0x1
	.string	"fdt"
	.byte	0x2
	.2byte	0x12c
	.byte	0x2a
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"val"
	.byte	0x2
	.2byte	0x12c
	.byte	0x38
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x12c
	.byte	0x52
	.4byte	0x96b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF83
	.2byte	0x12b
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa88
	.uleb128 0x1
	.string	"fdt"
	.byte	0x2
	.2byte	0x12b
	.byte	0x31
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"val"
	.byte	0x2
	.2byte	0x12b
	.byte	0x3f
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x12b
	.byte	0x59
	.4byte	0x96b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF84
	.2byte	0x12a
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xace
	.uleb128 0x1
	.string	"fdt"
	.byte	0x2
	.2byte	0x12a
	.byte	0x31
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"val"
	.byte	0x2
	.2byte	0x12a
	.byte	0x3f
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x12a
	.byte	0x59
	.4byte	0x96b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF85
	.2byte	0x129
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb14
	.uleb128 0x1
	.string	"fdt"
	.byte	0x2
	.2byte	0x129
	.byte	0x30
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"val"
	.byte	0x2
	.2byte	0x129
	.byte	0x3e
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x129
	.byte	0x58
	.4byte	0x96b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF86
	.2byte	0x128
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5a
	.uleb128 0x1
	.string	"fdt"
	.byte	0x2
	.2byte	0x128
	.byte	0x2c
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"val"
	.byte	0x2
	.2byte	0x128
	.byte	0x3a
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x128
	.byte	0x54
	.4byte	0x96b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF87
	.2byte	0x127
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba0
	.uleb128 0x1
	.string	"fdt"
	.byte	0x2
	.2byte	0x127
	.byte	0x28
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"val"
	.byte	0x2
	.2byte	0x127
	.byte	0x36
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x127
	.byte	0x50
	.4byte	0x96b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF88
	.byte	0x2
	.byte	0xc1
	.byte	0x18
	.4byte	0x8c
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbd6
	.uleb128 0x2
	.string	"p"
	.byte	0x2
	.byte	0xc1
	.byte	0x30
	.4byte	0xbd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"bp"
	.byte	0x2
	.byte	0xc3
	.byte	0x14
	.4byte	0xbdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	0xf2
	.uleb128 0x8
	.4byte	0x79
	.uleb128 0x17
	.4byte	.LASF89
	.byte	0x1
	.byte	0x85
	.byte	0x17
	.4byte	0xf7
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc08
	.uleb128 0x2
	.string	"x"
	.byte	0x1
	.byte	0x85
	.byte	0x2d
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0x1
	.byte	0x7c
	.byte	0x17
	.4byte	0xe6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc30
	.uleb128 0x2
	.string	"x"
	.byte	0x1
	.byte	0x7c
	.byte	0x2d
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.4byte	.LASF91
	.byte	0x1
	.byte	0x78
	.byte	0x18
	.4byte	0x8c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.string	"x"
	.byte	0x1
	.byte	0x78
	.byte	0x2d
	.4byte	0xe6
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
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0xa
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
	.sleb128 20
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x37
	.uleb128 0x21
	.sleb128 0
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
	.uleb128 0x20
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
	.4byte	0xfc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
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
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
	.byte	0x7
	.4byte	.LFB6
	.uleb128 .LFE6-.LFB6
	.byte	0x7
	.4byte	.LFB8
	.uleb128 .LFE8-.LFB8
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
	.4byte	.LFB18
	.uleb128 .LFE18-.LFB18
	.byte	0x7
	.4byte	.LFB19
	.uleb128 .LFE19-.LFB19
	.byte	0x7
	.4byte	.LFB36
	.uleb128 .LFE36-.LFB36
	.byte	0x7
	.4byte	.LFB37
	.uleb128 .LFE37-.LFB37
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
.LASF8:
	.string	"size_t"
.LASF16:
	.string	"uintptr_t"
.LASF14:
	.string	"uint64_t"
.LASF55:
	.string	"struct_top"
.LASF67:
	.string	"newtail"
.LASF37:
	.string	"nameoff"
.LASF36:
	.string	"fdt_property"
.LASF21:
	.string	"totalsize"
.LASF66:
	.string	"oldtail"
.LASF15:
	.string	"long long unsigned int"
.LASF61:
	.string	"addr"
.LASF26:
	.string	"last_comp_version"
.LASF31:
	.string	"fdt_reserve_entry"
.LASF3:
	.string	"long long int"
.LASF5:
	.string	"signed char"
.LASF87:
	.string	"fdt_set_magic"
.LASF91:
	.string	"fdt32_to_cpu"
.LASF79:
	.string	"fdt_set_size_dt_struct"
.LASF54:
	.string	"strtabsize"
.LASF7:
	.string	"long int"
.LASF56:
	.string	"fdt_end_node"
.LASF41:
	.string	"memcpy"
.LASF63:
	.string	"bufsize"
.LASF73:
	.string	"fdt_sw_probe_struct_"
.LASF19:
	.string	"fdt64_t"
.LASF50:
	.string	"fdt_finish"
.LASF69:
	.string	"hdrsize"
.LASF2:
	.string	"unsigned int"
.LASF42:
	.string	"strlen"
.LASF53:
	.string	"strtab"
.LASF13:
	.string	"long unsigned int"
.LASF74:
	.string	"fdt_sw_probe_memrsv_"
.LASF23:
	.string	"off_dt_strings"
.LASF49:
	.string	"prop"
.LASF46:
	.string	"newstroffset"
.LASF81:
	.string	"fdt_set_last_comp_version"
.LASF35:
	.string	"name"
.LASF59:
	.string	"fdt_finish_reservemap"
.LASF38:
	.string	"data"
.LASF33:
	.string	"size"
.LASF11:
	.string	"short unsigned int"
.LASF70:
	.string	"fdt_find_add_string_"
.LASF34:
	.string	"fdt_node_header"
.LASF83:
	.string	"fdt_set_off_mem_rsvmap"
.LASF29:
	.string	"size_dt_struct"
.LASF25:
	.string	"version"
.LASF57:
	.string	"fdt_begin_node"
.LASF80:
	.string	"fdt_set_size_dt_strings"
.LASF4:
	.string	"long double"
.LASF32:
	.string	"address"
.LASF82:
	.string	"fdt_set_version"
.LASF22:
	.string	"off_dt_struct"
.LASF72:
	.string	"spaceleft"
.LASF28:
	.string	"size_dt_strings"
.LASF86:
	.string	"fdt_set_totalsize"
.LASF78:
	.string	"fdth"
.LASF10:
	.string	"unsigned char"
.LASF24:
	.string	"off_mem_rsvmap"
.LASF6:
	.string	"short int"
.LASF20:
	.string	"magic"
.LASF40:
	.string	"fdt_find_string_"
.LASF52:
	.string	"valp"
.LASF51:
	.string	"fdt_property_placeholder"
.LASF64:
	.string	"headsize"
.LASF45:
	.string	"oldstroffset"
.LASF76:
	.string	"fdt_offset_ptr_w_"
.LASF71:
	.string	"fdt_grab_space_"
.LASF12:
	.string	"uint32_t"
.LASF48:
	.string	"nextoffset"
.LASF17:
	.string	"char"
.LASF84:
	.string	"fdt_set_off_dt_strings"
.LASF62:
	.string	"fdt_resize"
.LASF47:
	.string	"offset"
.LASF58:
	.string	"namelen"
.LASF92:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF30:
	.string	"fdt_header"
.LASF89:
	.string	"cpu_to_fdt64"
.LASF68:
	.string	"fdt_create"
.LASF75:
	.string	"fdt_sw_probe_"
.LASF44:
	.string	"memset"
.LASF90:
	.string	"cpu_to_fdt32"
.LASF43:
	.string	"memmove"
.LASF9:
	.string	"uint8_t"
.LASF27:
	.string	"boot_cpuid_phys"
.LASF65:
	.string	"tailsize"
.LASF88:
	.string	"fdt32_ld"
.LASF60:
	.string	"fdt_add_reservemap_entry"
.LASF77:
	.string	"fdt_offset_ptr_"
.LASF39:
	.string	"fdt_next_tag"
.LASF18:
	.string	"fdt32_t"
.LASF85:
	.string	"fdt_set_off_dt_struct"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blfdt"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_sw.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
