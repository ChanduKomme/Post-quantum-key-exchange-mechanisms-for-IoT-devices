	.file	"fdt_rw.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blfdt" "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_rw.c"
	.section	.text.cpu_to_fdt32,"ax",@progbits
	.align	1
	.type	cpu_to_fdt32, @function
cpu_to_fdt32:
.LFB4:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/libfdt_env.h"
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
	.section	.text.fdt_set_boot_cpuid_phys,"ax",@progbits
	.align	1
	.type	fdt_set_boot_cpuid_phys, @function
fdt_set_boot_cpuid_phys:
.LFB17:
	.loc 2 302 69
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
	.loc 2 302 90
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 2 302 147
	lw	a0,-40(s0)
	call	cpu_to_fdt32
	mv	a4,a0
	.loc 2 302 145 discriminator 1
	lw	a5,-20(s0)
	sw	a4,28(a5)
	.loc 2 302 166
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
.LFE17:
	.size	fdt_set_boot_cpuid_phys, .-fdt_set_boot_cpuid_phys
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
	.section	.text.fdt_get_property_w,"ax",@progbits
	.align	1
	.type	fdt_get_property_w, @function
fdt_get_property_w:
.LFB21:
	.loc 2 693 1
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
	.loc 2 695 9
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	fdt_get_property
	mv	a5,a0
	.loc 2 696 1
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
.LFE21:
	.size	fdt_get_property_w, .-fdt_get_property_w
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
	.section	.text.fdt_mem_rsv_,"ax",@progbits
	.align	1
	.type	fdt_mem_rsv_, @function
fdt_mem_rsv_:
.LFB38:
	.loc 3 111 1
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
	.loc 3 114 32
	lw	a5,-36(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 3 112 37
	lw	a5,-36(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 3 116 22
	lw	a5,-40(s0)
	slli	a5,a5,4
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 3 117 1
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
	.section	.text.fdt_mem_rsv_w_,"ax",@progbits
	.align	1
	.type	fdt_mem_rsv_w_, @function
fdt_mem_rsv_w_:
.LFB39:
	.loc 3 119 1
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
	.loc 3 120 31
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	fdt_mem_rsv_
	mv	a5,a0
	.loc 3 121 1
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
.LFE39:
	.size	fdt_mem_rsv_w_, .-fdt_mem_rsv_w_
	.section	.text.fdt_blocks_misordered_,"ax",@progbits
	.align	1
	.type	fdt_blocks_misordered_, @function
fdt_blocks_misordered_:
.LFB40:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_rw.c"
	.loc 4 39 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	.loc 4 40 15
	lw	a5,-20(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 45 9
	li	a5,39
	bleu	a4,a5,.L28
	.loc 4 41 15
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	fdt32_ld
	mv	s1,a0
	.loc 4 42 16
	lw	a5,-20(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 42 80 discriminator 1
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 4 41 9
	bltu	s1,a5,.L28
	.loc 4 43 15
	lw	a5,-20(s0)
	addi	a5,a5,12
	mv	a0,a5
	call	fdt32_ld
	mv	s1,a0
	.loc 4 44 16
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 44 79 discriminator 1
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 4 43 9
	bltu	s1,a5,.L28
	.loc 4 45 15 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	s1,a0
	.loc 4 46 16
	lw	a5,-20(s0)
	addi	a5,a5,12
	mv	a0,a5
	call	fdt32_ld
	mv	s2,a0
	.loc 4 46 84 discriminator 1
	lw	a5,-20(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 46 80 discriminator 2
	add	a5,s2,a5
	.loc 4 45 9 discriminator 3
	bgeu	s1,a5,.L29
.L28:
	.loc 4 45 9 is_stmt 0 discriminator 1
	li	a5,1
	.loc 4 45 9
	j	.L31
.L29:
	.loc 4 45 9 discriminator 4
	li	a5,0
.L31:
	.loc 4 47 1 is_stmt 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE40:
	.size	fdt_blocks_misordered_, .-fdt_blocks_misordered_
	.section	.text.fdt_rw_probe_,"ax",@progbits
	.align	1
	.type	fdt_rw_probe_, @function
fdt_rw_probe_:
.LFB41:
	.loc 4 50 1
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
.LBB2:
	.loc 4 51 29
	lw	a0,-36(s0)
	call	fdt_ro_probe_
	sw	a0,-20(s0)
	.loc 4 51 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L33
	.loc 4 51 62 discriminator 2
	lw	a5,-20(s0)
	.loc 4 51 62 is_stmt 0
	j	.L34
.L33:
.LBE2:
	.loc 4 53 11 is_stmt 1
	lw	a5,-36(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 53 8 discriminator 1
	li	a5,16
	bgtu	a4,a5,.L35
	.loc 4 54 16
	li	a5,-10
	j	.L34
.L35:
	.loc 4 56 22
	lw	a5,-36(s0)
	addi	a5,a5,36
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 55 9
	mv	a2,a5
	li	a1,16
	lw	a0,-36(s0)
	call	fdt_blocks_misordered_
	mv	a5,a0
	.loc 4 55 8 discriminator 1
	beq	a5,zero,.L36
	.loc 4 57 16
	li	a5,-12
	j	.L34
.L36:
	.loc 4 58 11
	lw	a5,-36(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 58 8 discriminator 1
	li	a5,17
	bleu	a4,a5,.L37
	.loc 4 59 9
	li	a1,17
	lw	a0,-36(s0)
	call	fdt_set_version
.L37:
	.loc 4 61 12
	li	a5,0
.L34:
	.loc 4 62 1
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
	.size	fdt_rw_probe_, .-fdt_rw_probe_
	.section	.text.fdt_data_size_,"ax",@progbits
	.align	1
	.type	fdt_data_size_, @function
fdt_data_size_:
.LFB42:
	.loc 4 72 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 4 73 14
	lw	a5,-20(s0)
	addi	a5,a5,12
	mv	a0,a5
	call	fdt32_ld
	mv	s1,a0
	.loc 4 73 82 discriminator 1
	lw	a5,-20(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 73 78 discriminator 2
	add	a5,s1,a5
	.loc 4 74 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE42:
	.size	fdt_data_size_, .-fdt_data_size_
	.section	.text.fdt_splice_,"ax",@progbits
	.align	1
	.type	fdt_splice_, @function
fdt_splice_:
.LFB43:
	.loc 4 77 1
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
	sw	a3,-48(s0)
	.loc 4 78 11
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 4 79 11
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 4 80 23
	lw	a0,-36(s0)
	call	fdt_data_size_
	mv	a5,a0
	.loc 4 80 23 is_stmt 0 discriminator 1
	mv	a4,a5
	.loc 4 80 11 is_stmt 1 discriminator 1
	lw	a5,-24(s0)
	add	a5,a5,a4
	sw	a5,-28(s0)
	.loc 4 82 8
	lw	a5,-44(s0)
	blt	a5,zero,.L41
	.loc 4 82 59 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 4 82 46 discriminator 1
	mv	a4,a5
	.loc 4 82 26 discriminator 1
	lw	a5,-44(s0)
	.loc 4 82 22 discriminator 1
	bgeu	a4,a5,.L42
.L41:
	.loc 4 83 16
	li	a5,-4
	j	.L43
.L42:
	.loc 4 84 8
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L44
	.loc 4 84 37 discriminator 1
	lw	a4,-48(s0)
	lw	a5,-44(s0)
	sub	a5,a4,a5
	lw	a4,-28(s0)
	add	a5,a4,a5
	.loc 4 84 19 discriminator 1
	lw	a4,-24(s0)
	bleu	a4,a5,.L45
.L44:
	.loc 4 85 16
	li	a5,-4
	j	.L43
.L45:
	.loc 4 86 23
	lw	a4,-48(s0)
	lw	a5,-44(s0)
	sub	a5,a4,a5
	lw	a4,-28(s0)
	add	s1,a4,a5
	.loc 4 86 44
	lw	a5,-36(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 86 40 discriminator 1
	lw	a5,-24(s0)
	add	a5,a5,a4
	.loc 4 86 8 discriminator 1
	bleu	s1,a5,.L46
	.loc 4 87 16
	li	a5,-3
	j	.L43
.L46:
	.loc 4 88 5
	lw	a5,-48(s0)
	.loc 4 88 15
	lw	a4,-20(s0)
	add	a3,a4,a5
	.loc 4 88 5
	lw	a5,-44(s0)
	.loc 4 88 27
	lw	a4,-20(s0)
	add	a1,a4,a5
	.loc 4 88 41
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	sub	a4,a4,a5
	.loc 4 88 45
	lw	a5,-44(s0)
	sub	a5,a4,a5
	.loc 4 88 5
	mv	a2,a5
	mv	a0,a3
	call	memmove
	.loc 4 89 12
	li	a5,0
.L43:
	.loc 4 90 1
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
	.size	fdt_splice_, .-fdt_splice_
	.section	.text.fdt_splice_mem_rsv_,"ax",@progbits
	.align	1
	.type	fdt_splice_mem_rsv_, @function
fdt_splice_mem_rsv_:
.LFB44:
	.loc 4 94 1
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
	.loc 4 95 23
	lw	a4,-48(s0)
	lw	a5,-44(s0)
	sub	a5,a4,a5
	.loc 4 95 31
	slli	a5,a5,4
	.loc 4 95 9
	sw	a5,-20(s0)
	.loc 4 97 36
	lw	a5,-44(s0)
	slli	a5,a5,4
	.loc 4 97 11
	mv	a4,a5
	.loc 4 97 55
	lw	a5,-48(s0)
	slli	a5,a5,4
	.loc 4 97 11
	mv	a3,a5
	mv	a2,a4
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_splice_
	sw	a0,-24(s0)
	.loc 4 98 8
	lw	a5,-24(s0)
	beq	a5,zero,.L48
	.loc 4 99 16
	lw	a5,-24(s0)
	j	.L49
.L48:
	.loc 4 100 34
	lw	a5,-36(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 100 5 discriminator 1
	lw	a5,-20(s0)
	.loc 4 100 97 discriminator 1
	add	a5,a4,a5
	.loc 4 100 5 discriminator 1
	mv	a1,a5
	lw	a0,-36(s0)
	call	fdt_set_off_dt_struct
	.loc 4 101 35
	lw	a5,-36(s0)
	addi	a5,a5,12
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 101 5 discriminator 1
	lw	a5,-20(s0)
	.loc 4 101 99 discriminator 1
	add	a5,a4,a5
	.loc 4 101 5 discriminator 1
	mv	a1,a5
	lw	a0,-36(s0)
	call	fdt_set_off_dt_strings
	.loc 4 102 12
	li	a5,0
.L49:
	.loc 4 103 1
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
	.size	fdt_splice_mem_rsv_, .-fdt_splice_mem_rsv_
	.section	.text.fdt_splice_struct_,"ax",@progbits
	.align	1
	.type	fdt_splice_struct_, @function
fdt_splice_struct_:
.LFB45:
	.loc 4 107 1
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
	.loc 4 108 9
	lw	a4,-48(s0)
	lw	a5,-44(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 4 111 16
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_splice_
	sw	a0,-24(s0)
	.loc 4 111 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L51
	.loc 4 112 16
	lw	a5,-24(s0)
	j	.L52
.L51:
	.loc 4 114 35
	lw	a5,-36(s0)
	addi	a5,a5,36
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 114 5 discriminator 1
	lw	a5,-20(s0)
	.loc 4 114 99 discriminator 1
	add	a5,a4,a5
	.loc 4 114 5 discriminator 1
	mv	a1,a5
	lw	a0,-36(s0)
	call	fdt_set_size_dt_struct
	.loc 4 115 35
	lw	a5,-36(s0)
	addi	a5,a5,12
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 115 5 discriminator 1
	lw	a5,-20(s0)
	.loc 4 115 99 discriminator 1
	add	a5,a4,a5
	.loc 4 115 5 discriminator 1
	mv	a1,a5
	lw	a0,-36(s0)
	call	fdt_set_off_dt_strings
	.loc 4 116 12
	li	a5,0
.L52:
	.loc 4 117 1
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
	.size	fdt_splice_struct_, .-fdt_splice_struct_
	.section	.text.fdt_splice_string_,"ax",@progbits
	.align	1
	.type	fdt_splice_string_, @function
fdt_splice_string_:
.LFB46:
	.loc 4 120 1
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
	.loc 4 122 13
	lw	a5,-36(s0)
	addi	a5,a5,12
	mv	a0,a5
	call	fdt32_ld
	mv	s1,a0
	.loc 4 122 81 discriminator 1
	lw	a5,-36(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 122 77 discriminator 2
	add	a5,s1,a5
	.loc 4 121 11
	lw	a4,-36(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 4 125 16
	lw	a3,-40(s0)
	li	a2,0
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	fdt_splice_
	sw	a0,-24(s0)
	.loc 4 125 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L54
	.loc 4 126 16
	lw	a5,-24(s0)
	j	.L55
.L54:
	.loc 4 128 36
	lw	a5,-36(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 128 5 discriminator 1
	lw	a5,-40(s0)
	.loc 4 128 101 discriminator 1
	add	a5,a4,a5
	.loc 4 128 5 discriminator 1
	mv	a1,a5
	lw	a0,-36(s0)
	call	fdt_set_size_dt_strings
	.loc 4 129 12
	li	a5,0
.L55:
	.loc 4 130 1
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
.LFE46:
	.size	fdt_splice_string_, .-fdt_splice_string_
	.section	.text.fdt_find_add_string_,"ax",@progbits
	.align	1
	.type	fdt_find_add_string_, @function
fdt_find_add_string_:
.LFB47:
	.loc 4 133 1
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
	.loc 4 134 36
	lw	a5,-52(s0)
	addi	a5,a5,12
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 134 11 discriminator 1
	lw	a5,-52(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 4 137 15
	lw	a0,-56(s0)
	call	strlen
	mv	a5,a0
	.loc 4 137 25 discriminator 1
	addi	a5,a5,1
	.loc 4 137 9 discriminator 1
	sw	a5,-24(s0)
	.loc 4 140 36
	lw	a5,-52(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 140 9 discriminator 1
	lw	a2,-56(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	fdt_find_string_
	sw	a0,-28(s0)
	.loc 4 141 8
	lw	a5,-28(s0)
	beq	a5,zero,.L57
	.loc 4 143 19
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	j	.L58
.L57:
	.loc 4 145 22
	lw	a5,-52(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 145 9 discriminator 1
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-32(s0)
	.loc 4 146 11
	lw	a1,-24(s0)
	lw	a0,-52(s0)
	call	fdt_splice_string_
	sw	a0,-36(s0)
	.loc 4 147 8
	lw	a5,-36(s0)
	beq	a5,zero,.L59
	.loc 4 148 16
	lw	a5,-36(s0)
	j	.L58
.L59:
	.loc 4 150 5
	lw	a5,-24(s0)
	mv	a2,a5
	lw	a1,-56(s0)
	lw	a0,-32(s0)
	call	memcpy
	.loc 4 151 17
	lw	a4,-32(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
.L58:
	.loc 4 152 1
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
.LFE47:
	.size	fdt_find_add_string_, .-fdt_find_add_string_
	.section	.text.fdt_add_mem_rsv,"ax",@progbits
	.align	1
	.globl	fdt_add_mem_rsv
	.type	fdt_add_mem_rsv, @function
fdt_add_mem_rsv:
.LFB48:
	.loc 4 155 1
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
	sw	a1,-48(s0)
	sw	a2,-44(s0)
	sw	a3,-56(s0)
	sw	a4,-52(s0)
.LBB3:
	.loc 4 159 29
	lw	a0,-36(s0)
	call	fdt_rw_probe_
	sw	a0,-20(s0)
	.loc 4 159 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L61
	.loc 4 159 62 discriminator 2
	lw	a5,-20(s0)
	.loc 4 159 62 is_stmt 0
	j	.L62
.L61:
.LBE3:
	.loc 4 161 10 is_stmt 1
	lw	a0,-36(s0)
	call	fdt_num_mem_rsv
	mv	a5,a0
	.loc 4 161 10 is_stmt 0 discriminator 1
	mv	a1,a5
	lw	a0,-36(s0)
	call	fdt_mem_rsv_w_
	sw	a0,-24(s0)
	.loc 4 162 11 is_stmt 1
	li	a3,1
	li	a2,0
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	fdt_splice_mem_rsv_
	sw	a0,-28(s0)
	.loc 4 163 8
	lw	a5,-28(s0)
	beq	a5,zero,.L63
	.loc 4 164 16
	lw	a5,-28(s0)
	j	.L62
.L63:
	.loc 4 166 19
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cpu_to_fdt64
	mv	a4,a0
	mv	a5,a1
	.loc 4 166 17 discriminator 1
	lw	a3,-24(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 4 167 16
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cpu_to_fdt64
	mv	a4,a0
	mv	a5,a1
	.loc 4 167 14 discriminator 1
	lw	a3,-24(s0)
	sw	a4,8(a3)
	sw	a5,12(a3)
	.loc 4 168 12
	li	a5,0
.L62:
	.loc 4 169 1
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
.LFE48:
	.size	fdt_add_mem_rsv, .-fdt_add_mem_rsv
	.section	.text.fdt_del_mem_rsv,"ax",@progbits
	.align	1
	.globl	fdt_del_mem_rsv
	.type	fdt_del_mem_rsv, @function
fdt_del_mem_rsv:
.LFB49:
	.loc 4 172 1
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
	.loc 4 173 36
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_mem_rsv_w_
	sw	a0,-20(s0)
.LBB4:
	.loc 4 175 29
	lw	a0,-36(s0)
	call	fdt_rw_probe_
	sw	a0,-24(s0)
	.loc 4 175 20 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L65
	.loc 4 175 62 discriminator 2
	lw	a5,-24(s0)
	.loc 4 175 62 is_stmt 0
	j	.L66
.L65:
.LBE4:
	.loc 4 177 14 is_stmt 1
	lw	a0,-36(s0)
	call	fdt_num_mem_rsv
	mv	a4,a0
	.loc 4 177 8 discriminator 1
	lw	a5,-40(s0)
	blt	a5,a4,.L67
	.loc 4 178 16
	li	a5,-1
	j	.L66
.L67:
	.loc 4 180 12
	li	a3,0
	li	a2,1
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	fdt_splice_mem_rsv_
	mv	a5,a0
.L66:
	.loc 4 181 1
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
	.size	fdt_del_mem_rsv, .-fdt_del_mem_rsv
	.section	.text.fdt_resize_property_,"ax",@progbits
	.align	1
	.type	fdt_resize_property_, @function
fdt_resize_property_:
.LFB50:
	.loc 4 185 1
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
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	.loc 4 189 13
	addi	a5,s0,-24
	mv	a3,a5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_get_property_w
	mv	a4,a0
	.loc 4 189 11 discriminator 1
	lw	a5,-52(s0)
	sw	a4,0(a5)
	.loc 4 190 10
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 4 190 8
	bne	a5,zero,.L69
	.loc 4 191 16
	lw	a5,-24(s0)
	j	.L72
.L69:
	.loc 4 193 41
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 4 193 47
	addi	a4,a5,12
	.loc 4 193 89
	lw	a5,-24(s0)
	addi	a5,a5,3
	.loc 4 193 16
	andi	a2,a5,-4
	.loc 4 194 54
	lw	a5,-48(s0)
	addi	a5,a5,3
	.loc 4 193 16
	andi	a5,a5,-4
	mv	a3,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	fdt_splice_struct_
	sw	a0,-20(s0)
	.loc 4 193 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L71
	.loc 4 195 16
	lw	a5,-20(s0)
	j	.L72
.L71:
	.loc 4 197 20
	lw	a4,-48(s0)
	.loc 4 197 6
	lw	a5,-52(s0)
	lw	s1,0(a5)
	.loc 4 197 20
	mv	a0,a4
	call	cpu_to_fdt32
	mv	a5,a0
	.loc 4 197 18 discriminator 1
	sw	a5,4(s1)
	.loc 4 198 12
	li	a5,0
.L72:
	.loc 4 199 1
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
	.size	fdt_resize_property_, .-fdt_resize_property_
	.section	.text.fdt_add_property_,"ax",@progbits
	.align	1
	.type	fdt_add_property_, @function
fdt_add_property_:
.LFB51:
	.loc 4 203 1
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
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	.loc 4 209 23
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_check_node_offset_
	sw	a0,-20(s0)
	.loc 4 209 8 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L74
	.loc 4 210 16
	lw	a5,-20(s0)
	j	.L75
.L74:
	.loc 4 212 18
	lw	a1,-44(s0)
	lw	a0,-36(s0)
	call	fdt_find_add_string_
	sw	a0,-24(s0)
	.loc 4 213 8
	lw	a5,-24(s0)
	bge	a5,zero,.L76
	.loc 4 214 16
	lw	a5,-24(s0)
	j	.L75
.L76:
	.loc 4 216 13
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	fdt_offset_ptr_w_
	mv	a4,a0
	.loc 4 216 11 discriminator 1
	lw	a5,-52(s0)
	sw	a4,0(a5)
	.loc 4 217 63
	lw	a5,-48(s0)
	addi	a5,a5,3
	.loc 4 217 68
	andi	a5,a5,-4
	.loc 4 217 30
	addi	a5,a5,12
	.loc 4 217 13
	sw	a5,-28(s0)
	.loc 4 219 11
	lw	a5,-52(s0)
	lw	a5,0(a5)
	lw	a3,-28(s0)
	li	a2,0
	mv	a1,a5
	lw	a0,-36(s0)
	call	fdt_splice_struct_
	sw	a0,-32(s0)
	.loc 4 220 8
	lw	a5,-32(s0)
	beq	a5,zero,.L77
	.loc 4 221 16
	lw	a5,-32(s0)
	j	.L75
.L77:
	.loc 4 223 6
	lw	a5,-52(s0)
	lw	s1,0(a5)
	.loc 4 223 20
	li	a0,3
	call	cpu_to_fdt32
	mv	a5,a0
	.loc 4 223 18 discriminator 1
	sw	a5,0(s1)
	.loc 4 224 24
	lw	a4,-24(s0)
	.loc 4 224 6
	lw	a5,-52(s0)
	lw	s1,0(a5)
	.loc 4 224 24
	mv	a0,a4
	call	cpu_to_fdt32
	mv	a5,a0
	.loc 4 224 22 discriminator 1
	sw	a5,8(s1)
	.loc 4 225 20
	lw	a4,-48(s0)
	.loc 4 225 6
	lw	a5,-52(s0)
	lw	s1,0(a5)
	.loc 4 225 20
	mv	a0,a4
	call	cpu_to_fdt32
	mv	a5,a0
	.loc 4 225 18 discriminator 1
	sw	a5,4(s1)
	.loc 4 226 12
	li	a5,0
.L75:
	.loc 4 227 1
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
.LFE51:
	.size	fdt_add_property_, .-fdt_add_property_
	.section	.text.fdt_set_name,"ax",@progbits
	.align	1
	.globl	fdt_set_name
	.type	fdt_set_name, @function
fdt_set_name:
.LFB52:
	.loc 4 230 1
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
.LBB5:
	.loc 4 235 29
	lw	a0,-52(s0)
	call	fdt_rw_probe_
	sw	a0,-20(s0)
	.loc 4 235 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L79
	.loc 4 235 62 discriminator 2
	lw	a5,-20(s0)
	.loc 4 235 62 is_stmt 0
	j	.L83
.L79:
.LBE5:
	.loc 4 237 32 is_stmt 1
	addi	a5,s0,-36
	mv	a2,a5
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	fdt_get_name
	sw	a0,-24(s0)
	.loc 4 238 8
	lw	a5,-24(s0)
	bne	a5,zero,.L81
	.loc 4 239 16
	lw	a5,-36(s0)
	j	.L83
.L81:
	.loc 4 241 14
	lw	a0,-60(s0)
	call	strlen
	mv	a5,a0
	.loc 4 241 12 discriminator 1
	sw	a5,-28(s0)
	.loc 4 243 58
	lw	a5,-36(s0)
	.loc 4 243 78
	addi	a5,a5,4
	.loc 4 243 11
	andi	a4,a5,-4
	.loc 4 244 34
	lw	a5,-28(s0)
	.loc 4 244 54
	addi	a5,a5,4
	.loc 4 243 11
	andi	a5,a5,-4
	mv	a3,a5
	mv	a2,a4
	lw	a1,-24(s0)
	lw	a0,-52(s0)
	call	fdt_splice_struct_
	sw	a0,-32(s0)
	.loc 4 245 8
	lw	a5,-32(s0)
	beq	a5,zero,.L82
	.loc 4 246 16
	lw	a5,-32(s0)
	j	.L83
.L82:
	.loc 4 248 31
	lw	a5,-28(s0)
	addi	a5,a5,1
	.loc 4 248 5
	mv	a2,a5
	lw	a1,-60(s0)
	lw	a0,-24(s0)
	call	memcpy
	.loc 4 249 12
	li	a5,0
.L83:
	.loc 4 250 1
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
.LFE52:
	.size	fdt_set_name, .-fdt_set_name
	.section	.text.fdt_setprop_placeholder,"ax",@progbits
	.align	1
	.globl	fdt_setprop_placeholder
	.type	fdt_setprop_placeholder, @function
fdt_setprop_placeholder:
.LFB53:
	.loc 4 254 1
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
.LBB6:
	.loc 4 258 29
	lw	a0,-36(s0)
	call	fdt_rw_probe_
	sw	a0,-24(s0)
	.loc 4 258 20 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L85
	.loc 4 258 62 discriminator 2
	lw	a5,-24(s0)
	.loc 4 258 62 is_stmt 0
	j	.L89
.L85:
.LBE6:
	.loc 4 260 11 is_stmt 1
	addi	a5,s0,-28
	mv	a4,a5
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_resize_property_
	sw	a0,-20(s0)
	.loc 4 261 8
	lw	a4,-20(s0)
	li	a5,-1
	bne	a4,a5,.L87
	.loc 4 262 15
	addi	a5,s0,-28
	mv	a4,a5
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_add_property_
	sw	a0,-20(s0)
.L87:
	.loc 4 263 8
	lw	a5,-20(s0)
	beq	a5,zero,.L88
	.loc 4 264 16
	lw	a5,-20(s0)
	j	.L89
.L88:
	.loc 4 266 22
	lw	a5,-28(s0)
	.loc 4 266 18
	addi	a4,a5,12
	.loc 4 266 16
	lw	a5,-52(s0)
	sw	a4,0(a5)
	.loc 4 267 12
	li	a5,0
.L89:
	.loc 4 268 1
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
.LFE53:
	.size	fdt_setprop_placeholder, .-fdt_setprop_placeholder
	.section	.text.fdt_setprop,"ax",@progbits
	.align	1
	.globl	fdt_setprop
	.type	fdt_setprop, @function
fdt_setprop:
.LFB54:
	.loc 4 272 1
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
	.loc 4 276 11
	addi	a5,s0,-24
	mv	a4,a5
	lw	a3,-52(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_setprop_placeholder
	sw	a0,-20(s0)
	.loc 4 277 8
	lw	a5,-20(s0)
	beq	a5,zero,.L91
	.loc 4 278 16
	lw	a5,-20(s0)
	j	.L94
.L91:
	.loc 4 280 8
	lw	a5,-52(s0)
	beq	a5,zero,.L93
	.loc 4 281 9
	lw	a5,-24(s0)
	lw	a4,-52(s0)
	mv	a2,a4
	lw	a1,-48(s0)
	mv	a0,a5
	call	memcpy
.L93:
	.loc 4 282 12
	li	a5,0
.L94:
	.loc 4 283 1
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
.LFE54:
	.size	fdt_setprop, .-fdt_setprop
	.section	.text.fdt_appendprop,"ax",@progbits
	.align	1
	.globl	fdt_appendprop
	.type	fdt_appendprop, @function
fdt_appendprop:
.LFB55:
	.loc 4 287 1
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
.LBB7:
	.loc 4 291 29
	lw	a0,-52(s0)
	call	fdt_rw_probe_
	sw	a0,-20(s0)
	.loc 4 291 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L96
	.loc 4 291 62 discriminator 2
	lw	a5,-20(s0)
	.loc 4 291 62 is_stmt 0
	j	.L102
.L96:
.LBE7:
	.loc 4 293 12 is_stmt 1
	addi	a5,s0,-36
	mv	a3,a5
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	fdt_get_property_w
	mv	a5,a0
	.loc 4 293 10 discriminator 1
	sw	a5,-32(s0)
	.loc 4 294 9
	lw	a5,-32(s0)
	.loc 4 294 8
	beq	a5,zero,.L98
	.loc 4 295 22
	lw	a5,-36(s0)
	.loc 4 295 16
	lw	a4,-68(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 4 296 43
	lw	a5,-32(s0)
	addi	a4,a5,12
	.loc 4 297 56
	lw	a5,-36(s0)
	addi	a5,a5,3
	.loc 4 296 15
	andi	a2,a5,-4
	.loc 4 298 56
	lw	a5,-28(s0)
	addi	a5,a5,3
	.loc 4 296 15
	andi	a5,a5,-4
	mv	a3,a5
	mv	a1,a4
	lw	a0,-52(s0)
	call	fdt_splice_struct_
	sw	a0,-24(s0)
	.loc 4 299 12
	lw	a5,-24(s0)
	beq	a5,zero,.L99
	.loc 4 300 20
	lw	a5,-24(s0)
	j	.L102
.L99:
	.loc 4 301 21
	lw	a5,-28(s0)
	.loc 4 301 13
	lw	s1,-32(s0)
	.loc 4 301 21
	mv	a0,a5
	call	cpu_to_fdt32
	mv	a5,a0
	.loc 4 301 19 discriminator 1
	sw	a5,4(s1)
	.loc 4 302 20
	lw	a5,-32(s0)
	.loc 4 302 16
	addi	a5,a5,12
	.loc 4 302 9
	lw	a4,-36(s0)
	add	a5,a5,a4
	lw	a4,-68(s0)
	mv	a2,a4
	lw	a1,-64(s0)
	mv	a0,a5
	call	memcpy
	j	.L100
.L98:
	.loc 4 304 15
	addi	a5,s0,-32
	mv	a4,a5
	lw	a3,-68(s0)
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	fdt_add_property_
	sw	a0,-24(s0)
	.loc 4 305 12
	lw	a5,-24(s0)
	beq	a5,zero,.L101
	.loc 4 306 20
	lw	a5,-24(s0)
	j	.L102
.L101:
	.loc 4 307 20
	lw	a5,-32(s0)
	addi	a5,a5,12
	.loc 4 307 9
	lw	a4,-68(s0)
	mv	a2,a4
	lw	a1,-64(s0)
	mv	a0,a5
	call	memcpy
.L100:
	.loc 4 309 12
	li	a5,0
.L102:
	.loc 4 310 1
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
.LFE55:
	.size	fdt_appendprop, .-fdt_appendprop
	.section	.text.fdt_delprop,"ax",@progbits
	.align	1
	.globl	fdt_delprop
	.type	fdt_delprop, @function
fdt_delprop:
.LFB56:
	.loc 4 313 1
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
.LBB8:
	.loc 4 317 29
	lw	a0,-36(s0)
	call	fdt_rw_probe_
	sw	a0,-20(s0)
	.loc 4 317 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L104
	.loc 4 317 62 discriminator 2
	lw	a5,-20(s0)
	.loc 4 317 62 is_stmt 0
	j	.L107
.L104:
.LBE8:
	.loc 4 319 12 is_stmt 1
	addi	a5,s0,-32
	mv	a3,a5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_get_property_w
	sw	a0,-24(s0)
	.loc 4 320 8
	lw	a5,-24(s0)
	bne	a5,zero,.L106
	.loc 4 321 16
	lw	a5,-32(s0)
	j	.L107
.L106:
	.loc 4 323 62
	lw	a5,-32(s0)
	addi	a5,a5,3
	.loc 4 323 67
	andi	a5,a5,-4
	.loc 4 323 29
	addi	a5,a5,12
	.loc 4 323 13
	sw	a5,-28(s0)
	.loc 4 324 12
	li	a3,0
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	fdt_splice_struct_
	mv	a5,a0
.L107:
	.loc 4 325 1
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
	.size	fdt_delprop, .-fdt_delprop
	.section	.text.fdt_add_subnode_namelen,"ax",@progbits
	.align	1
	.globl	fdt_add_subnode_namelen
	.type	fdt_add_subnode_namelen, @function
fdt_add_subnode_namelen:
.LFB57:
	.loc 4 329 1
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
.LBB9:
	.loc 4 337 29
	lw	a0,-52(s0)
	call	fdt_rw_probe_
	sw	a0,-20(s0)
	.loc 4 337 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L109
	.loc 4 337 62 discriminator 2
	lw	a5,-20(s0)
	.loc 4 337 62 is_stmt 0
	j	.L116
.L109:
.LBE9:
	.loc 4 339 14 is_stmt 1
	lw	a3,-64(s0)
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	fdt_subnode_offset_namelen
	sw	a0,-24(s0)
	.loc 4 340 8
	lw	a5,-24(s0)
	blt	a5,zero,.L111
	.loc 4 341 16
	li	a5,-2
	j	.L116
.L111:
	.loc 4 342 13
	lw	a4,-24(s0)
	li	a5,-1
	beq	a4,a5,.L112
	.loc 4 343 16
	lw	a5,-24(s0)
	j	.L116
.L112:
	.loc 4 346 5
	addi	a5,s0,-48
	mv	a2,a5
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	fdt_next_tag
.L113:
	.loc 4 348 16
	lw	a5,-48(s0)
	sw	a5,-24(s0)
	.loc 4 349 15
	addi	a5,s0,-48
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-52(s0)
	call	fdt_next_tag
	sw	a0,-28(s0)
	.loc 4 350 27 discriminator 3
	lw	a4,-28(s0)
	li	a5,3
	beq	a4,a5,.L113
	.loc 4 350 27 is_stmt 0 discriminator 2
	lw	a4,-28(s0)
	li	a5,4
	beq	a4,a5,.L113
	.loc 4 352 10 is_stmt 1
	lw	a1,-24(s0)
	lw	a0,-52(s0)
	call	fdt_offset_ptr_w_
	sw	a0,-32(s0)
	.loc 4 353 46
	lw	a5,-64(s0)
	.loc 4 353 66
	addi	a5,a5,4
	.loc 4 353 71
	andi	a5,a5,-4
	.loc 4 353 100
	addi	a5,a5,8
	.loc 4 353 13
	sw	a5,-36(s0)
	.loc 4 355 11
	lw	a3,-36(s0)
	li	a2,0
	lw	a1,-32(s0)
	lw	a0,-52(s0)
	call	fdt_splice_struct_
	sw	a0,-40(s0)
	.loc 4 356 8
	lw	a5,-40(s0)
	beq	a5,zero,.L115
	.loc 4 357 16
	lw	a5,-40(s0)
	j	.L116
.L115:
	.loc 4 359 15
	li	a0,1
	call	cpu_to_fdt32
	mv	a4,a0
	.loc 4 359 13 discriminator 1
	lw	a5,-32(s0)
	sw	a4,0(a5)
	.loc 4 360 14
	lw	a5,-32(s0)
	addi	a4,a5,4
	.loc 4 360 42
	lw	a5,-64(s0)
	.loc 4 360 62
	addi	a5,a5,4
	.loc 4 360 5
	andi	a5,a5,-4
	mv	a2,a5
	li	a1,0
	mv	a0,a4
	call	memset
	.loc 4 361 14
	lw	a5,-32(s0)
	addi	a5,a5,4
	.loc 4 361 5
	lw	a4,-64(s0)
	mv	a2,a4
	lw	a1,-60(s0)
	mv	a0,a5
	call	memcpy
	.loc 4 362 47
	lw	a5,-36(s0)
	addi	a5,a5,-4
	.loc 4 362 12
	lw	a4,-32(s0)
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 4 363 15
	li	a0,2
	call	cpu_to_fdt32
	mv	a4,a0
	.loc 4 363 13 discriminator 1
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 4 365 12
	lw	a5,-24(s0)
.L116:
	.loc 4 366 1
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
.LFE57:
	.size	fdt_add_subnode_namelen, .-fdt_add_subnode_namelen
	.section	.text.fdt_add_subnode,"ax",@progbits
	.align	1
	.globl	fdt_add_subnode
	.type	fdt_add_subnode, @function
fdt_add_subnode:
.LFB58:
	.loc 4 369 1
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
	.loc 4 370 61
	lw	a0,-28(s0)
	call	strlen
	mv	a5,a0
	.loc 4 370 12 discriminator 1
	mv	a3,a5
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	fdt_add_subnode_namelen
	mv	a5,a0
	.loc 4 371 1
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
.LFE58:
	.size	fdt_add_subnode, .-fdt_add_subnode
	.section	.text.fdt_del_node,"ax",@progbits
	.align	1
	.globl	fdt_del_node
	.type	fdt_del_node, @function
fdt_del_node:
.LFB59:
	.loc 4 374 1
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
.LBB10:
	.loc 4 377 29
	lw	a0,-36(s0)
	call	fdt_rw_probe_
	sw	a0,-20(s0)
	.loc 4 377 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L120
	.loc 4 377 62 discriminator 2
	lw	a5,-20(s0)
	.loc 4 377 62 is_stmt 0
	j	.L121
.L120:
.LBE10:
	.loc 4 379 17 is_stmt 1
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_node_end_offset_
	sw	a0,-24(s0)
	.loc 4 380 8
	lw	a5,-24(s0)
	bge	a5,zero,.L122
	.loc 4 381 16
	lw	a5,-24(s0)
	j	.L121
.L122:
	.loc 4 383 12
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_offset_ptr_w_
	mv	a1,a0
	.loc 4 383 12 is_stmt 0 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	sub	a5,a4,a5
	li	a3,0
	mv	a2,a5
	lw	a0,-36(s0)
	call	fdt_splice_struct_
	mv	a5,a0
.L121:
	.loc 4 385 1 is_stmt 1
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
	.size	fdt_del_node, .-fdt_del_node
	.section	.text.fdt_packblocks_,"ax",@progbits
	.align	1
	.type	fdt_packblocks_, @function
fdt_packblocks_:
.LFB60:
	.loc 4 389 1
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
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	.loc 4 392 17
	li	a5,40
	sw	a5,-20(s0)
	.loc 4 393 16
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 4 394 17
	lw	a4,-24(s0)
	lw	a5,-48(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 4 396 5
	lw	a5,-20(s0)
	.loc 4 396 17
	lw	a4,-40(s0)
	add	s1,a4,a5
	.loc 4 396 40
	lw	a5,-36(s0)
	addi	a5,a5,16
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 396 36 discriminator 1
	lw	a5,-36(s0)
	add	a5,a5,a4
	.loc 4 396 5 discriminator 1
	lw	a4,-44(s0)
	mv	a2,a4
	mv	a1,a5
	mv	a0,s1
	call	memmove
	.loc 4 397 5
	lw	a5,-20(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	fdt_set_off_mem_rsvmap
	.loc 4 399 5
	lw	a5,-24(s0)
	.loc 4 399 17
	lw	a4,-40(s0)
	add	s1,a4,a5
	.loc 4 399 39
	lw	a5,-36(s0)
	addi	a5,a5,8
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 399 35 discriminator 1
	lw	a5,-36(s0)
	add	a5,a5,a4
	.loc 4 399 5 discriminator 1
	lw	a4,-48(s0)
	mv	a2,a4
	mv	a1,a5
	mv	a0,s1
	call	memmove
	.loc 4 400 5
	lw	a5,-24(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	fdt_set_off_dt_struct
	.loc 4 401 5
	lw	a5,-48(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	fdt_set_size_dt_struct
	.loc 4 403 5
	lw	a5,-28(s0)
	.loc 4 403 17
	lw	a4,-40(s0)
	add	s1,a4,a5
	.loc 4 403 40
	lw	a5,-36(s0)
	addi	a5,a5,12
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 403 36 discriminator 1
	lw	a5,-36(s0)
	add	s2,a5,a4
	.loc 4 404 11
	lw	a5,-36(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 403 5
	mv	a2,a5
	mv	a1,s2
	mv	a0,s1
	call	memmove
	.loc 4 405 5
	lw	a5,-28(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	fdt_set_off_dt_strings
	.loc 4 406 5
	lw	a5,-36(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 406 5 is_stmt 0 discriminator 1
	mv	a1,a5
	lw	a0,-40(s0)
	call	fdt_set_size_dt_strings
	.loc 4 407 1 is_stmt 1
	nop
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
.LFE60:
	.size	fdt_packblocks_, .-fdt_packblocks_
	.section	.text.fdt_open_into,"ax",@progbits
	.align	1
	.globl	fdt_open_into
	.type	fdt_open_into, @function
fdt_open_into:
.LFB61:
	.loc 4 410 1
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
	.loc 4 414 17
	lw	a5,-52(s0)
	sw	a5,-24(s0)
	.loc 4 415 39
	lw	a5,-52(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 415 17 discriminator 1
	lw	a5,-24(s0)
	add	a5,a5,a4
	sw	a5,-28(s0)
.LBB11:
	.loc 4 418 29
	lw	a0,-52(s0)
	call	fdt_ro_probe_
	sw	a0,-32(s0)
	.loc 4 418 20 discriminator 1
	lw	a5,-32(s0)
	beq	a5,zero,.L125
	.loc 4 418 62 discriminator 2
	lw	a5,-32(s0)
	.loc 4 418 62 is_stmt 0
	j	.L134
.L125:
.LBE11:
	.loc 4 420 21 is_stmt 1
	lw	a0,-52(s0)
	call	fdt_num_mem_rsv
	mv	a5,a0
	.loc 4 420 41 discriminator 1
	addi	a5,a5,1
	.loc 4 421 9
	slli	a5,a5,4
	.loc 4 420 18
	sw	a5,-36(s0)
	.loc 4 423 11
	lw	a5,-52(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	fdt32_ld
	mv	a4,a0
	.loc 4 423 8 discriminator 1
	li	a5,16
	bleu	a4,a5,.L127
	.loc 4 424 25
	lw	a5,-52(s0)
	addi	a5,a5,36
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 424 21 discriminator 1
	sw	a5,-48(s0)
	j	.L128
.L127:
	.loc 4 426 21
	sw	zero,-48(s0)
	.loc 4 427 15
	nop
.L129:
	.loc 4 427 16 discriminator 2
	lw	a5,-48(s0)
	addi	a4,s0,-48
	mv	a2,a4
	mv	a1,a5
	lw	a0,-52(s0)
	call	fdt_next_tag
	mv	a4,a0
	.loc 4 427 61 discriminator 2
	li	a5,9
	bne	a4,a5,.L129
	.loc 4 429 25
	lw	a5,-48(s0)
	.loc 4 429 12
	bge	a5,zero,.L128
	.loc 4 430 20
	lw	a5,-48(s0)
	j	.L134
.L128:
	.loc 4 433 10
	lw	a5,-48(s0)
	mv	a2,a5
	lw	a1,-36(s0)
	lw	a0,-52(s0)
	call	fdt_blocks_misordered_
	mv	a5,a0
	.loc 4 433 8 discriminator 1
	bne	a5,zero,.L130
	.loc 4 435 15
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	fdt_move
	sw	a0,-44(s0)
	.loc 4 436 12
	lw	a5,-44(s0)
	beq	a5,zero,.L131
	.loc 4 437 20
	lw	a5,-44(s0)
	j	.L134
.L131:
	.loc 4 438 9
	li	a1,17
	lw	a0,-56(s0)
	call	fdt_set_version
	.loc 4 439 9
	lw	a5,-48(s0)
	mv	a1,a5
	lw	a0,-56(s0)
	call	fdt_set_size_dt_struct
	.loc 4 440 9
	lw	a5,-60(s0)
	mv	a1,a5
	lw	a0,-56(s0)
	call	fdt_set_totalsize
	.loc 4 441 16
	li	a5,0
	j	.L134
.L130:
	.loc 4 446 23
	lw	a5,-36(s0)
	.loc 4 446 9
	lw	a4,-48(s0)
	add	s1,a5,a4
	.loc 4 446 27
	lw	a5,-52(s0)
	addi	a5,a5,32
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 446 23 discriminator 1
	add	a5,s1,a5
	addi	a5,a5,40
	.loc 4 445 13
	sw	a5,-40(s0)
	.loc 4 448 8
	lw	a4,-60(s0)
	lw	a5,-40(s0)
	bge	a4,a5,.L132
	.loc 4 449 16
	li	a5,-3
	j	.L134
.L132:
	.loc 4 452 9
	lw	a5,-56(s0)
	sw	a5,-20(s0)
	.loc 4 454 15
	lw	a5,-40(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 4 454 8
	lw	a4,-24(s0)
	bgeu	a4,a5,.L133
	.loc 4 454 38 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	bgeu	a4,a5,.L133
	.loc 4 456 13
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	.loc 4 457 18
	lw	a5,-40(s0)
	lw	a4,-20(s0)
	add	a4,a4,a5
	.loc 4 457 44
	lw	a5,-60(s0)
	lw	a3,-56(s0)
	add	a5,a3,a5
	.loc 4 457 12
	bleu	a4,a5,.L133
	.loc 4 458 20
	li	a5,-3
	j	.L134
.L133:
	.loc 4 461 5
	lw	a5,-48(s0)
	mv	a3,a5
	lw	a2,-36(s0)
	lw	a1,-20(s0)
	lw	a0,-52(s0)
	call	fdt_packblocks_
	.loc 4 462 5
	lw	a5,-40(s0)
	mv	a2,a5
	lw	a1,-20(s0)
	lw	a0,-56(s0)
	call	memmove
	.loc 4 464 5
	li	a5,-804388864
	addi	a1,a5,-275
	lw	a0,-56(s0)
	call	fdt_set_magic
	.loc 4 465 5
	lw	a5,-60(s0)
	mv	a1,a5
	lw	a0,-56(s0)
	call	fdt_set_totalsize
	.loc 4 466 5
	li	a1,17
	lw	a0,-56(s0)
	call	fdt_set_version
	.loc 4 467 5
	li	a1,16
	lw	a0,-56(s0)
	call	fdt_set_last_comp_version
	.loc 4 468 5
	lw	a5,-52(s0)
	addi	a5,a5,28
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 468 5 is_stmt 0 discriminator 1
	mv	a1,a5
	lw	a0,-56(s0)
	call	fdt_set_boot_cpuid_phys
	.loc 4 470 12 is_stmt 1
	li	a5,0
.L134:
	.loc 4 471 1
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
.LFE61:
	.size	fdt_open_into, .-fdt_open_into
	.section	.text.fdt_pack,"ax",@progbits
	.align	1
	.globl	fdt_pack
	.type	fdt_pack, @function
fdt_pack:
.LFB62:
	.loc 4 474 1
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
.LBB12:
	.loc 4 477 29
	lw	a0,-36(s0)
	call	fdt_rw_probe_
	sw	a0,-20(s0)
	.loc 4 477 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L136
	.loc 4 477 62 discriminator 2
	lw	a5,-20(s0)
	.loc 4 477 62 is_stmt 0
	j	.L137
.L136:
.LBE12:
	.loc 4 479 21 is_stmt 1
	lw	a0,-36(s0)
	call	fdt_num_mem_rsv
	mv	a5,a0
	.loc 4 479 41 discriminator 1
	addi	a5,a5,1
	.loc 4 480 9
	slli	a5,a5,4
	.loc 4 479 18
	sw	a5,-24(s0)
	.loc 4 481 47
	lw	a5,-36(s0)
	addi	a5,a5,36
	mv	a0,a5
	call	fdt32_ld
	mv	a5,a0
	.loc 4 481 5 discriminator 1
	mv	a3,a5
	lw	a2,-24(s0)
	lw	a1,-36(s0)
	lw	a0,-36(s0)
	call	fdt_packblocks_
	.loc 4 482 28
	lw	a0,-36(s0)
	call	fdt_data_size_
	mv	a5,a0
	.loc 4 482 5 discriminator 1
	mv	a1,a5
	lw	a0,-36(s0)
	call	fdt_set_totalsize
	.loc 4 484 12
	li	a5,0
.L137:
	.loc 4 485 1
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
	.size	fdt_pack, .-fdt_pack
	.text
.Letext0:
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/fdt.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x13e6
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1c
	.4byte	.LASF128
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1d
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x12
	.4byte	.LASF8
	.byte	0x5
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0xc
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0xc
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x12
	.4byte	.LASF9
	.byte	0x6
	.byte	0x2e
	.byte	0x17
	.4byte	0x79
	.uleb128 0x13
	.4byte	0x68
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0xc
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x12
	.4byte	.LASF12
	.byte	0x6
	.byte	0x34
	.byte	0x1b
	.4byte	0x93
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x12
	.4byte	.LASF14
	.byte	0x6
	.byte	0x37
	.byte	0x20
	.4byte	0xa6
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x12
	.4byte	.LASF16
	.byte	0x6
	.byte	0x56
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x1e
	.byte	0x4
	.uleb128 0x18
	.4byte	0xb9
	.uleb128 0x9
	.4byte	0xc5
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x13
	.4byte	0xc5
	.uleb128 0x9
	.4byte	0xcc
	.uleb128 0x9
	.4byte	0xe0
	.uleb128 0x18
	.4byte	0xd6
	.uleb128 0x1f
	.uleb128 0x12
	.4byte	.LASF18
	.byte	0x1
	.byte	0x63
	.byte	0x12
	.4byte	0x87
	.uleb128 0x13
	.4byte	0xe1
	.uleb128 0x12
	.4byte	.LASF19
	.byte	0x1
	.byte	0x64
	.byte	0x12
	.4byte	0x9a
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x28
	.byte	0x57
	.4byte	0x182
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x58
	.byte	0xd
	.4byte	0xe1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x59
	.byte	0xd
	.4byte	0xe1
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x5a
	.byte	0xd
	.4byte	0xe1
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x5b
	.byte	0xd
	.4byte	0xe1
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x5c
	.byte	0xd
	.4byte	0xe1
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x5d
	.byte	0xd
	.4byte	0xe1
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x5e
	.byte	0xd
	.4byte	0xe1
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x61
	.byte	0xd
	.4byte	0xe1
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x64
	.byte	0xd
	.4byte	0xe1
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x67
	.byte	0xd
	.4byte	0xe1
	.byte	0x24
	.byte	0
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x10
	.byte	0x6a
	.4byte	0x1a6
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x6b
	.byte	0xd
	.4byte	0xf2
	.byte	0
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x6c
	.byte	0xd
	.4byte	0xf2
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.4byte	0x182
	.uleb128 0x15
	.4byte	.LASF34
	.byte	0x4
	.byte	0x6f
	.4byte	0x1ce
	.uleb128 0x17
	.string	"tag"
	.byte	0x70
	.4byte	0xe1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x71
	.byte	0xa
	.4byte	0x1ce
	.byte	0x4
	.byte	0
	.uleb128 0x19
	.4byte	0xc5
	.4byte	0x1dd
	.uleb128 0x1a
	.4byte	0x3e
	.byte	0
	.uleb128 0x15
	.4byte	.LASF36
	.byte	0xc
	.byte	0x74
	.4byte	0x217
	.uleb128 0x17
	.string	"tag"
	.byte	0x75
	.4byte	0xe1
	.byte	0
	.uleb128 0x17
	.string	"len"
	.byte	0x76
	.4byte	0xe1
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x77
	.byte	0xd
	.4byte	0xe1
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x78
	.byte	0xa
	.4byte	0x21c
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.4byte	0x1dd
	.uleb128 0x19
	.4byte	0xc5
	.4byte	0x22b
	.uleb128 0x1a
	.4byte	0x3e
	.byte	0
	.uleb128 0x14
	.4byte	.LASF39
	.2byte	0x163
	.byte	0x5
	.4byte	0x2b
	.4byte	0x24b
	.uleb128 0x2
	.4byte	0xd6
	.uleb128 0x2
	.4byte	0xb9
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x3
	.byte	0x62
	.byte	0x5
	.4byte	0x2b
	.4byte	0x266
	.uleb128 0x2
	.4byte	0xb9
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x8
	.byte	0x21
	.byte	0x8
	.4byte	0xb9
	.4byte	0x286
	.uleb128 0x2
	.4byte	0xb9
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x2
	.byte	0xb8
	.byte	0xa
	.4byte	0x87
	.4byte	0x2a6
	.uleb128 0x2
	.4byte	0xd6
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x2a6
	.byte	0
	.uleb128 0x9
	.4byte	0x2b
	.uleb128 0x14
	.4byte	.LASF43
	.2byte	0x1c3
	.byte	0x5
	.4byte	0x2b
	.4byte	0x2d0
	.uleb128 0x2
	.4byte	0xd6
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0xd1
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x14
	.4byte	.LASF44
	.2byte	0x21d
	.byte	0xd
	.4byte	0xd1
	.4byte	0x2f0
	.uleb128 0x2
	.4byte	0xd6
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x2a6
	.byte	0
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x3
	.byte	0x5f
	.byte	0x5
	.4byte	0x2b
	.4byte	0x30b
	.uleb128 0x2
	.4byte	0xd6
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x14
	.4byte	.LASF46
	.2byte	0x2b0
	.byte	0x1c
	.4byte	0x330
	.4byte	0x330
	.uleb128 0x2
	.4byte	0xd6
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0xd1
	.uleb128 0x2
	.4byte	0x2a6
	.byte	0
	.uleb128 0x9
	.4byte	0x217
	.uleb128 0x14
	.4byte	.LASF47
	.2byte	0x1a3
	.byte	0x5
	.4byte	0x2b
	.4byte	0x34b
	.uleb128 0x2
	.4byte	0xd6
	.byte	0
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x8
	.byte	0x1f
	.byte	0x8
	.4byte	0xb9
	.4byte	0x36b
	.uleb128 0x2
	.4byte	0xbb
	.uleb128 0x2
	.4byte	0xdb
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x3
	.byte	0x61
	.byte	0xd
	.4byte	0xd1
	.4byte	0x38b
	.uleb128 0x2
	.4byte	0xd1
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0xd1
	.byte	0
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x8
	.byte	0x29
	.byte	0x8
	.4byte	0x32
	.4byte	0x3a1
	.uleb128 0x2
	.4byte	0xd1
	.byte	0
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x8
	.byte	0x20
	.byte	0x8
	.4byte	0xb9
	.4byte	0x3c1
	.uleb128 0x2
	.4byte	0xb9
	.uleb128 0x2
	.4byte	0xd6
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x3
	.byte	0x57
	.byte	0x5
	.4byte	0x2b
	.4byte	0x3d7
	.uleb128 0x2
	.4byte	0xd6
	.byte	0
	.uleb128 0x11
	.4byte	.LASF55
	.2byte	0x1d9
	.4byte	0x2b
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42b
	.uleb128 0x3
	.string	"fdt"
	.byte	0x4
	.2byte	0x1d9
	.byte	0x14
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x1db
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x1dd
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF56
	.2byte	0x199
	.4byte	0x2b
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4fd
	.uleb128 0x3
	.string	"fdt"
	.byte	0x4
	.2byte	0x199
	.byte	0x1f
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.string	"buf"
	.byte	0x4
	.2byte	0x199
	.byte	0x2a
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x199
	.byte	0x33
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x10
	.string	"err"
	.2byte	0x19b
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x19c
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x4
	.2byte	0x19c
	.byte	0x17
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x4
	.2byte	0x19d
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x4
	.2byte	0x19e
	.byte	0x11
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x4
	.2byte	0x19f
	.byte	0x11
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.string	"tmp"
	.2byte	0x1a0
	.byte	0xb
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x1a2
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF113
	.byte	0x4
	.2byte	0x183
	.byte	0xd
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x585
	.uleb128 0x3
	.string	"old"
	.byte	0x4
	.2byte	0x183
	.byte	0x29
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"new"
	.byte	0x4
	.2byte	0x183
	.byte	0x34
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x184
	.byte	0x15
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0x4
	.2byte	0x184
	.byte	0x27
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x4
	.2byte	0x186
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x4
	.2byte	0x186
	.byte	0x16
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x4
	.2byte	0x186
	.byte	0x22
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x11
	.4byte	.LASF65
	.2byte	0x175
	.4byte	0x2b
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e9
	.uleb128 0x3
	.string	"fdt"
	.byte	0x4
	.2byte	0x175
	.byte	0x18
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x175
	.byte	0x21
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x4
	.2byte	0x177
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x179
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF68
	.2byte	0x170
	.4byte	0x2b
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x633
	.uleb128 0x3
	.string	"fdt"
	.byte	0x4
	.2byte	0x170
	.byte	0x1b
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF69
	.byte	0x4
	.2byte	0x170
	.byte	0x24
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x170
	.byte	0x3e
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x11
	.4byte	.LASF70
	.2byte	0x147
	.4byte	0x2b
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x713
	.uleb128 0x3
	.string	"fdt"
	.byte	0x4
	.2byte	0x147
	.byte	0x23
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.4byte	.LASF69
	.byte	0x4
	.2byte	0x147
	.byte	0x2c
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x148
	.byte	0x1d
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x148
	.byte	0x27
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.string	"nh"
	.2byte	0x14a
	.byte	0x1d
	.4byte	0x713
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x14b
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x14b
	.byte	0x11
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x14c
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.string	"err"
	.2byte	0x14d
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"tag"
	.2byte	0x14e
	.byte	0xe
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x14f
	.byte	0xe
	.4byte	0x718
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x151
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x1ab
	.uleb128 0x9
	.4byte	0xe1
	.uleb128 0x11
	.4byte	.LASF76
	.2byte	0x138
	.4byte	0x2b
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7b0
	.uleb128 0x3
	.string	"fdt"
	.byte	0x4
	.2byte	0x138
	.byte	0x17
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x138
	.byte	0x20
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x138
	.byte	0x38
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x13a
	.byte	0x1a
	.4byte	0x7b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"len"
	.2byte	0x13b
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x13b
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x13d
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x1dd
	.uleb128 0x11
	.4byte	.LASF79
	.2byte	0x11d
	.4byte	0x2b
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x879
	.uleb128 0x3
	.string	"fdt"
	.byte	0x4
	.2byte	0x11d
	.byte	0x1a
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x11d
	.byte	0x23
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x11d
	.byte	0x3b
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.string	"val"
	.byte	0x4
	.2byte	0x11e
	.byte	0x18
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.string	"len"
	.byte	0x4
	.2byte	0x11e
	.byte	0x21
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x120
	.byte	0x1a
	.4byte	0x7b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.string	"err"
	.2byte	0x121
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x121
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x121
	.byte	0x16
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x123
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF82
	.2byte	0x10e
	.4byte	0x2b
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x902
	.uleb128 0x3
	.string	"fdt"
	.byte	0x4
	.2byte	0x10e
	.byte	0x17
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x10e
	.byte	0x20
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x10e
	.byte	0x38
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"val"
	.byte	0x4
	.2byte	0x10f
	.byte	0x15
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.string	"len"
	.byte	0x4
	.2byte	0x10f
	.byte	0x1e
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x111
	.byte	0xb
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"err"
	.2byte	0x112
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0xfc
	.4byte	0x2b
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x99e
	.uleb128 0x4
	.string	"fdt"
	.byte	0x4
	.byte	0xfc
	.byte	0x23
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF66
	.byte	0x4
	.byte	0xfc
	.byte	0x2c
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x4
	.byte	0xfc
	.byte	0x44
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.string	"len"
	.byte	0x4
	.byte	0xfd
	.byte	0x15
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	.LASF83
	.byte	0x4
	.byte	0xfd
	.byte	0x21
	.4byte	0x99e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.4byte	.LASF77
	.byte	0x4
	.byte	0xff
	.byte	0x1a
	.4byte	0x7b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.string	"err"
	.2byte	0x100
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x102
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xb9
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0xe5
	.4byte	0x2b
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa3e
	.uleb128 0x4
	.string	"fdt"
	.byte	0x4
	.byte	0xe5
	.byte	0x18
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.4byte	.LASF66
	.byte	0x4
	.byte	0xe5
	.byte	0x21
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x4
	.byte	0xe5
	.byte	0x39
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x8
	.4byte	.LASF86
	.byte	0x4
	.byte	0xe7
	.byte	0xb
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF80
	.byte	0x4
	.byte	0xe8
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0x4
	.byte	0xe8
	.byte	0x11
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.string	"err"
	.byte	0x4
	.byte	0xe9
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x4
	.byte	0xeb
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x4
	.byte	0xc9
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae0
	.uleb128 0x4
	.string	"fdt"
	.byte	0x4
	.byte	0xc9
	.byte	0x24
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF66
	.byte	0x4
	.byte	0xc9
	.byte	0x2d
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x4
	.byte	0xc9
	.byte	0x45
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.string	"len"
	.byte	0x4
	.byte	0xca
	.byte	0x16
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	.LASF77
	.byte	0x4
	.byte	0xca
	.byte	0x31
	.4byte	0xae0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0x4
	.byte	0xcc
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x4
	.byte	0xcd
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF87
	.byte	0x4
	.byte	0xce
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"err"
	.byte	0x4
	.byte	0xcf
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x9
	.4byte	0x7b0
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x4
	.byte	0xb7
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb69
	.uleb128 0x4
	.string	"fdt"
	.byte	0x4
	.byte	0xb7
	.byte	0x27
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF66
	.byte	0x4
	.byte	0xb7
	.byte	0x30
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x4
	.byte	0xb7
	.byte	0x48
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.string	"len"
	.byte	0x4
	.byte	0xb8
	.byte	0x15
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	.LASF77
	.byte	0x4
	.byte	0xb8
	.byte	0x30
	.4byte	0xae0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.4byte	.LASF80
	.byte	0x4
	.byte	0xba
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"err"
	.byte	0x4
	.byte	0xbb
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0xab
	.4byte	0x2b
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc5
	.uleb128 0x4
	.string	"fdt"
	.byte	0x4
	.byte	0xab
	.byte	0x1b
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"n"
	.byte	0x4
	.byte	0xab
	.byte	0x24
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"re"
	.byte	0x4
	.byte	0xad
	.byte	0x1f
	.4byte	0xbc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x4
	.byte	0xaf
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x182
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0x9a
	.4byte	0x2b
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc46
	.uleb128 0x4
	.string	"fdt"
	.byte	0x4
	.byte	0x9a
	.byte	0x1b
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF32
	.byte	0x4
	.byte	0x9a
	.byte	0x29
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	.LASF33
	.byte	0x4
	.byte	0x9a
	.byte	0x3b
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.string	"re"
	.byte	0x4
	.byte	0x9c
	.byte	0x1f
	.4byte	0xbc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"err"
	.byte	0x4
	.byte	0x9d
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x4
	.byte	0x9f
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x4
	.byte	0x84
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcc6
	.uleb128 0x4
	.string	"fdt"
	.byte	0x4
	.byte	0x84
	.byte	0x27
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.string	"s"
	.byte	0x4
	.byte	0x84
	.byte	0x38
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.4byte	.LASF93
	.byte	0x4
	.byte	0x86
	.byte	0xb
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"p"
	.byte	0x4
	.byte	0x87
	.byte	0x11
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.string	"new"
	.byte	0x4
	.byte	0x88
	.byte	0xb
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.string	"len"
	.byte	0x4
	.byte	0x89
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"err"
	.byte	0x4
	.byte	0x8a
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0x4
	.byte	0x77
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd1b
	.uleb128 0x4
	.string	"fdt"
	.byte	0x4
	.byte	0x77
	.byte	0x25
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF81
	.byte	0x4
	.byte	0x77
	.byte	0x2e
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"p"
	.byte	0x4
	.byte	0x79
	.byte	0xb
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"err"
	.byte	0x4
	.byte	0x7b
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF95
	.byte	0x4
	.byte	0x69
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd8e
	.uleb128 0x4
	.string	"fdt"
	.byte	0x4
	.byte	0x69
	.byte	0x25
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"p"
	.byte	0x4
	.byte	0x69
	.byte	0x30
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF80
	.byte	0x4
	.byte	0x6a
	.byte	0x17
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF81
	.byte	0x4
	.byte	0x6a
	.byte	0x23
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.4byte	.LASF96
	.byte	0x4
	.byte	0x6c
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"err"
	.byte	0x4
	.byte	0x6d
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF97
	.byte	0x4
	.byte	0x5c
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe01
	.uleb128 0x4
	.string	"fdt"
	.byte	0x4
	.byte	0x5c
	.byte	0x26
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"p"
	.byte	0x4
	.byte	0x5c
	.byte	0x45
	.4byte	0xbc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF98
	.byte	0x4
	.byte	0x5d
	.byte	0x18
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF99
	.byte	0x4
	.byte	0x5d
	.byte	0x22
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.4byte	.LASF96
	.byte	0x4
	.byte	0x5f
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"err"
	.byte	0x4
	.byte	0x60
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF100
	.byte	0x4
	.byte	0x4c
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe83
	.uleb128 0x5
	.4byte	.LASF101
	.byte	0x4
	.byte	0x4c
	.byte	0x1e
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF102
	.byte	0x4
	.byte	0x4c
	.byte	0x2d
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF80
	.byte	0x4
	.byte	0x4c
	.byte	0x3e
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF81
	.byte	0x4
	.byte	0x4c
	.byte	0x4a
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.string	"p"
	.byte	0x4
	.byte	0x4e
	.byte	0xb
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"fdt"
	.byte	0x4
	.byte	0x4f
	.byte	0xb
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"end"
	.byte	0x4
	.byte	0x50
	.byte	0xb
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF103
	.byte	0x4
	.byte	0x47
	.byte	0x13
	.4byte	0x2b
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xead
	.uleb128 0x4
	.string	"fdt"
	.byte	0x4
	.byte	0x47
	.byte	0x28
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF104
	.byte	0x4
	.byte	0x31
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xef0
	.uleb128 0x4
	.string	"fdt"
	.byte	0x4
	.byte	0x31
	.byte	0x20
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x4
	.byte	0x33
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF105
	.byte	0x4
	.byte	0x25
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf38
	.uleb128 0x4
	.string	"fdt"
	.byte	0x4
	.byte	0x25
	.byte	0x2f
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF53
	.byte	0x4
	.byte	0x26
	.byte	0x17
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF58
	.byte	0x4
	.byte	0x26
	.byte	0x29
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF106
	.byte	0x3
	.byte	0x76
	.byte	0x29
	.4byte	0xbc5
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf6f
	.uleb128 0x4
	.string	"fdt"
	.byte	0x3
	.byte	0x76
	.byte	0x3e
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"n"
	.byte	0x3
	.byte	0x76
	.byte	0x47
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF107
	.byte	0x3
	.byte	0x6e
	.byte	0x2f
	.4byte	0xfb5
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfb5
	.uleb128 0x4
	.string	"fdt"
	.byte	0x3
	.byte	0x6e
	.byte	0x48
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"n"
	.byte	0x3
	.byte	0x6e
	.byte	0x51
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF108
	.byte	0x3
	.byte	0x70
	.byte	0x25
	.4byte	0xfb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0x1a6
	.uleb128 0xb
	.4byte	.LASF109
	.byte	0x3
	.byte	0x69
	.byte	0x15
	.4byte	0xb9
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xff3
	.uleb128 0x4
	.string	"fdt"
	.byte	0x3
	.byte	0x69
	.byte	0x2d
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF72
	.byte	0x3
	.byte	0x69
	.byte	0x36
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF110
	.byte	0x3
	.byte	0x64
	.byte	0x1b
	.4byte	0xd6
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x102c
	.uleb128 0x4
	.string	"fdt"
	.byte	0x3
	.byte	0x64
	.byte	0x37
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF72
	.byte	0x3
	.byte	0x64
	.byte	0x40
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.4byte	.LASF111
	.byte	0x2
	.2byte	0x2b2
	.byte	0x24
	.4byte	0x7b0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1088
	.uleb128 0x3
	.string	"fdt"
	.byte	0x2
	.2byte	0x2b2
	.byte	0x3d
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0x2
	.2byte	0x2b2
	.byte	0x46
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x2
	.2byte	0x2b3
	.byte	0x2b
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF112
	.byte	0x2
	.2byte	0x2b4
	.byte	0x24
	.4byte	0x2a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xe
	.4byte	.LASF114
	.byte	0x2
	.2byte	0x130
	.byte	0x14
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10d0
	.uleb128 0x3
	.string	"fdt"
	.byte	0x2
	.2byte	0x130
	.byte	0x31
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"val"
	.byte	0x2
	.2byte	0x130
	.byte	0x3f
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x130
	.byte	0x59
	.4byte	0x10d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0xfe
	.uleb128 0xe
	.4byte	.LASF116
	.byte	0x2
	.2byte	0x12f
	.byte	0x14
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x111d
	.uleb128 0x3
	.string	"fdt"
	.byte	0x2
	.2byte	0x12f
	.byte	0x32
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"val"
	.byte	0x2
	.2byte	0x12f
	.byte	0x40
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x12f
	.byte	0x5a
	.4byte	0x10d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF117
	.byte	0x2
	.2byte	0x12e
	.byte	0x14
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1165
	.uleb128 0x3
	.string	"fdt"
	.byte	0x2
	.2byte	0x12e
	.byte	0x32
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"val"
	.byte	0x2
	.2byte	0x12e
	.byte	0x40
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x12e
	.byte	0x5a
	.4byte	0x10d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF118
	.byte	0x2
	.2byte	0x12d
	.byte	0x14
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11ad
	.uleb128 0x3
	.string	"fdt"
	.byte	0x2
	.2byte	0x12d
	.byte	0x34
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"val"
	.byte	0x2
	.2byte	0x12d
	.byte	0x42
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x12d
	.byte	0x5c
	.4byte	0x10d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF119
	.byte	0x2
	.2byte	0x12c
	.byte	0x14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11f5
	.uleb128 0x3
	.string	"fdt"
	.byte	0x2
	.2byte	0x12c
	.byte	0x2a
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"val"
	.byte	0x2
	.2byte	0x12c
	.byte	0x38
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x12c
	.byte	0x52
	.4byte	0x10d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF120
	.byte	0x2
	.2byte	0x12b
	.byte	0x14
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x123d
	.uleb128 0x3
	.string	"fdt"
	.byte	0x2
	.2byte	0x12b
	.byte	0x31
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"val"
	.byte	0x2
	.2byte	0x12b
	.byte	0x3f
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x12b
	.byte	0x59
	.4byte	0x10d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF121
	.byte	0x2
	.2byte	0x12a
	.byte	0x14
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1285
	.uleb128 0x3
	.string	"fdt"
	.byte	0x2
	.2byte	0x12a
	.byte	0x31
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"val"
	.byte	0x2
	.2byte	0x12a
	.byte	0x3f
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x12a
	.byte	0x59
	.4byte	0x10d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF122
	.byte	0x2
	.2byte	0x129
	.byte	0x14
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12cd
	.uleb128 0x3
	.string	"fdt"
	.byte	0x2
	.2byte	0x129
	.byte	0x30
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"val"
	.byte	0x2
	.2byte	0x129
	.byte	0x3e
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x129
	.byte	0x58
	.4byte	0x10d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF123
	.byte	0x2
	.2byte	0x128
	.byte	0x14
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1315
	.uleb128 0x3
	.string	"fdt"
	.byte	0x2
	.2byte	0x128
	.byte	0x2c
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"val"
	.byte	0x2
	.2byte	0x128
	.byte	0x3a
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x128
	.byte	0x54
	.4byte	0x10d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF124
	.byte	0x2
	.2byte	0x127
	.byte	0x14
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x135d
	.uleb128 0x3
	.string	"fdt"
	.byte	0x2
	.2byte	0x127
	.byte	0x28
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"val"
	.byte	0x2
	.2byte	0x127
	.byte	0x36
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x127
	.byte	0x50
	.4byte	0x10d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0x2
	.byte	0xc1
	.byte	0x18
	.4byte	0x87
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1393
	.uleb128 0x4
	.string	"p"
	.byte	0x2
	.byte	0xc1
	.byte	0x30
	.4byte	0x1393
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"bp"
	.byte	0x2
	.byte	0xc3
	.byte	0x14
	.4byte	0x1398
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	0xed
	.uleb128 0x9
	.4byte	0x74
	.uleb128 0x1b
	.4byte	.LASF126
	.byte	0x1
	.byte	0x85
	.byte	0x17
	.4byte	0xf2
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13c5
	.uleb128 0x4
	.string	"x"
	.byte	0x1
	.byte	0x85
	.byte	0x2d
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x21
	.4byte	.LASF127
	.byte	0x1
	.byte	0x7c
	.byte	0x17
	.4byte	0xe1
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.string	"x"
	.byte	0x1
	.byte	0x7c
	.byte	0x2d
	.4byte	0x87
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x5
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x21
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
	.4byte	0x15c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
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
	.4byte	.LFB17
	.uleb128 .LFE17-.LFB17
	.byte	0x7
	.4byte	.LFB18
	.uleb128 .LFE18-.LFB18
	.byte	0x7
	.4byte	.LFB19
	.uleb128 .LFE19-.LFB19
	.byte	0x7
	.4byte	.LFB21
	.uleb128 .LFE21-.LFB21
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF112:
	.string	"lenp"
.LASF8:
	.string	"size_t"
.LASF16:
	.string	"uintptr_t"
.LASF14:
	.string	"uint64_t"
.LASF37:
	.string	"nameoff"
.LASF36:
	.string	"fdt_property"
.LASF21:
	.string	"totalsize"
.LASF101:
	.string	"raw_fdt"
.LASF15:
	.string	"long long unsigned int"
.LASF98:
	.string	"oldn"
.LASF94:
	.string	"fdt_splice_string_"
.LASF26:
	.string	"last_comp_version"
.LASF70:
	.string	"fdt_add_subnode_namelen"
.LASF89:
	.string	"fdt_resize_property_"
.LASF31:
	.string	"fdt_reserve_entry"
.LASF3:
	.string	"long long int"
.LASF5:
	.string	"signed char"
.LASF88:
	.string	"fdt_add_property_"
.LASF124:
	.string	"fdt_set_magic"
.LASF113:
	.string	"fdt_packblocks_"
.LASF46:
	.string	"fdt_get_property"
.LASF62:
	.string	"mem_rsv_off"
.LASF114:
	.string	"fdt_set_size_dt_struct"
.LASF7:
	.string	"long int"
.LASF75:
	.string	"endtag"
.LASF84:
	.string	"fdt_setprop_placeholder"
.LASF48:
	.string	"memcpy"
.LASF45:
	.string	"fdt_check_node_offset_"
.LASF55:
	.string	"fdt_pack"
.LASF57:
	.string	"bufsize"
.LASF58:
	.string	"struct_size"
.LASF87:
	.string	"namestroff"
.LASF76:
	.string	"fdt_delprop"
.LASF19:
	.string	"fdt64_t"
.LASF82:
	.string	"fdt_setprop"
.LASF43:
	.string	"fdt_subnode_offset_namelen"
.LASF2:
	.string	"unsigned int"
.LASF50:
	.string	"strlen"
.LASF93:
	.string	"strtab"
.LASF107:
	.string	"fdt_mem_rsv_"
.LASF13:
	.string	"long unsigned int"
.LASF60:
	.string	"fdtstart"
.LASF23:
	.string	"off_dt_strings"
.LASF77:
	.string	"prop"
.LASF118:
	.string	"fdt_set_last_comp_version"
.LASF35:
	.string	"name"
.LASF102:
	.string	"splicepoint"
.LASF38:
	.string	"data"
.LASF103:
	.string	"fdt_data_size_"
.LASF33:
	.string	"size"
.LASF11:
	.string	"short unsigned int"
.LASF92:
	.string	"fdt_find_add_string_"
.LASF68:
	.string	"fdt_add_subnode"
.LASF95:
	.string	"fdt_splice_struct_"
.LASF69:
	.string	"parentoffset"
.LASF90:
	.string	"fdt_del_mem_rsv"
.LASF34:
	.string	"fdt_node_header"
.LASF81:
	.string	"newlen"
.LASF106:
	.string	"fdt_mem_rsv_w_"
.LASF65:
	.string	"fdt_del_node"
.LASF56:
	.string	"fdt_open_into"
.LASF83:
	.string	"prop_data"
.LASF120:
	.string	"fdt_set_off_mem_rsvmap"
.LASF29:
	.string	"size_dt_struct"
.LASF47:
	.string	"fdt_num_mem_rsv"
.LASF25:
	.string	"version"
.LASF117:
	.string	"fdt_set_boot_cpuid_phys"
.LASF116:
	.string	"fdt_set_size_dt_strings"
.LASF4:
	.string	"long double"
.LASF79:
	.string	"fdt_appendprop"
.LASF39:
	.string	"fdt_move"
.LASF32:
	.string	"address"
.LASF111:
	.string	"fdt_get_property_w"
.LASF119:
	.string	"fdt_set_version"
.LASF22:
	.string	"off_dt_struct"
.LASF85:
	.string	"fdt_set_name"
.LASF53:
	.string	"mem_rsv_size"
.LASF28:
	.string	"size_dt_strings"
.LASF91:
	.string	"fdt_add_mem_rsv"
.LASF97:
	.string	"fdt_splice_mem_rsv_"
.LASF104:
	.string	"fdt_rw_probe_"
.LASF123:
	.string	"fdt_set_totalsize"
.LASF64:
	.string	"strings_off"
.LASF10:
	.string	"unsigned char"
.LASF66:
	.string	"nodeoffset"
.LASF24:
	.string	"off_mem_rsvmap"
.LASF6:
	.string	"short int"
.LASF20:
	.string	"magic"
.LASF49:
	.string	"fdt_find_string_"
.LASF61:
	.string	"fdtend"
.LASF109:
	.string	"fdt_offset_ptr_w_"
.LASF86:
	.string	"namep"
.LASF12:
	.string	"uint32_t"
.LASF73:
	.string	"nextoffset"
.LASF99:
	.string	"newn"
.LASF63:
	.string	"struct_off"
.LASF17:
	.string	"char"
.LASF121:
	.string	"fdt_set_off_dt_strings"
.LASF78:
	.string	"proplen"
.LASF108:
	.string	"rsv_table"
.LASF52:
	.string	"fdt_ro_probe_"
.LASF72:
	.string	"offset"
.LASF71:
	.string	"namelen"
.LASF128:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF30:
	.string	"fdt_header"
.LASF126:
	.string	"cpu_to_fdt64"
.LASF115:
	.string	"fdth"
.LASF44:
	.string	"fdt_get_name"
.LASF74:
	.string	"nodelen"
.LASF41:
	.string	"memset"
.LASF127:
	.string	"cpu_to_fdt32"
.LASF51:
	.string	"memmove"
.LASF9:
	.string	"uint8_t"
.LASF80:
	.string	"oldlen"
.LASF27:
	.string	"boot_cpuid_phys"
.LASF40:
	.string	"fdt_node_end_offset_"
.LASF125:
	.string	"fdt32_ld"
.LASF54:
	.string	"err_"
.LASF67:
	.string	"endoffset"
.LASF59:
	.string	"newsize"
.LASF110:
	.string	"fdt_offset_ptr_"
.LASF96:
	.string	"delta"
.LASF42:
	.string	"fdt_next_tag"
.LASF100:
	.string	"fdt_splice_"
.LASF18:
	.string	"fdt32_t"
.LASF122:
	.string	"fdt_set_off_dt_struct"
.LASF105:
	.string	"fdt_blocks_misordered_"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blfdt"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_rw.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
