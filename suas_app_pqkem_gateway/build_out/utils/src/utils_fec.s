	.file	"utils_fec.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils" "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_fec.c"
	.globl	code_exp
	.section	.rodata.code_exp,"a"
	.align	2
	.type	code_exp, @object
	.size	code_exp, 512
code_exp:
	.base64	"AQIECBAgQIAdOnTozYcTJkyYLVq0derJjwMGDBgwYMCdJ06cJUqUNWrUtXfuwZ8jRowFChQoUKBdumnSuW/eoV++YcKZL168ZcqJDx48ePD959O7a9axf/7h36NbtnHi2a9DhhEiRIgNGjRo0L1nzoEfPnz47ceTO3bsxZczZsyFFy5cuG3aqU+eIUKEFSpUqE2aKVKkVapJkjly5NW3c+bRv2PGkT9+/OXXs3v28f/j26tLljFixJU3btylV65BghkyZMiNBw4cOHDg3adTplGiWbJ58vnvw5srVqxFigkSJEiQPXr09ffz++vLiwsWLFiwffrpz4MbNmzYrUeO"
	.base64	"AQIECBAgQIAdOnTozYcTJkyYLVq0derJjwMGDBgwYMCdJ06cJUqUNWrUtXfuwZ8jRowFChQoUKBdumnSuW/eoV++YcKZL168ZcqJDx48ePD959O7a9axf/7h36NbtnHi2a9DhhEiRIgNGjRo0L1nzoEfPnz47ceTO3bsxZczZsyFFy5cuG3aqU+eIUKEFSpUqE2aKVKkVapJkjly5NW3c+bRv2PGkT9+/OXXs3v28f/j26tLljFixJU3btylV65BghkyZMiNBw4cOHDg3adTplGiWbJ58vnvw5srVqxFigkSJEiQPXr09ffz++vLiwsWLFiwffrpz4MbNmzYrUeO"
	.ascii	"\001\002"
	.globl	code_log
	.section	.rodata.code_log,"a"
	.align	2
	.type	code_log, @object
	.size	code_log, 256
code_log:
	.base64	"AAABGQIyGsYD3zPuG2jHSwRk4A40je+BHMFp+MgITHEFimUv4SQPITWTjtrwEoJFHbXCfWon+bnJmgl4TeRypga/i2Jm3TD94pglsxCRIog20JTOj5bbvfHSE1yDOEZAHkK2o8NIfm5rOihU+oW6Pcpem58KFXkrTtTlrHPzp1cHcMD3jIBjDWdK3u0xxf4Y46WZdya4tHwRRJLZIyCJLjc/0VuVvM/NkIeXstz8vmHyVtOrFCpdnoQ8OVNHbUGiHy1D2Ld7pHbEF0nsfwxv9myhO1IpnVWq+2CGsbvMPlrLWV+wnKmgUQv1Fut6dSzXT67V6ebnreh01vTqqFBY"
	.ascii	"\257"
	.section	.text.poly_init,"ax",@progbits
	.align	1
	.globl	poly_init
	.type	poly_init, @function
poly_init:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_fec.c"
	.loc 1 142 1
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
	sw	a4,-28(s0)
	sb	a5,-21(s0)
	mv	a5,a2
	sh	a5,-24(s0)
	mv	a5,a3
	sb	a5,-22(s0)
	.loc 1 145 14
	lw	a5,-20(s0)
	lbu	a4,-21(s0)
	sb	a4,0(a5)
	.loc 1 146 16
	lw	a5,-20(s0)
	lbu	a4,-22(s0)
	sb	a4,1(a5)
	.loc 1 147 18
	lw	a5,-20(s0)
	lhu	a4,-24(s0)
	sh	a4,2(a5)
	.loc 1 148 18
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,4(a5)
	.loc 1 149 17
	lw	a5,-20(s0)
	sb	zero,8(a5)
	.loc 1 150 1
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
	.size	poly_init, .-poly_init
	.section	.text.poly_ptr,"ax",@progbits
	.align	1
	.globl	poly_ptr
	.type	poly_ptr, @function
poly_ptr:
.LFB6:
	.loc 1 153 1
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
	.loc 1 156 16
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 156 31
	lw	a4,-20(s0)
	lhu	a4,2(a4)
	.loc 1 156 26
	add	a5,a5,a4
	.loc 1 157 1
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
.LFE6:
	.size	poly_ptr, .-poly_ptr
	.section	.text.poly_reset,"ax",@progbits
	.align	1
	.globl	poly_reset
	.type	poly_reset, @function
poly_reset:
.LFB7:
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
	.loc 1 163 12
	lw	a0,-20(s0)
	call	poly_ptr
	mv	a4,a0
	.loc 1 163 33 discriminator 1
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	.loc 1 163 5 discriminator 1
	mv	a2,a5
	li	a1,0
	mv	a0,a4
	call	memset
	.loc 1 164 1
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
.LFE7:
	.size	poly_reset, .-poly_reset
	.section	.text.poly_set,"ax",@progbits
	.align	1
	.globl	poly_set
	.type	poly_set, @function
poly_set:
.LFB8:
	.loc 1 167 1
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
	mv	a5,a2
	mv	a4,a3
	sb	a5,-25(s0)
	mv	a5,a4
	sb	a5,-26(s0)
	.loc 1 170 12
	lw	a0,-20(s0)
	call	poly_ptr
	mv	a4,a0
	.loc 1 170 5 discriminator 1
	lbu	a5,-26(s0)
	.loc 1 170 25 discriminator 1
	add	a5,a4,a5
	.loc 1 170 5 discriminator 1
	lbu	a4,-25(s0)
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 172 23
	lbu	a5,-25(s0)
	mv	a4,a5
	lbu	a5,-26(s0)
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 172 17
	lw	a5,-20(s0)
	sb	a4,8(a5)
	.loc 1 173 1
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
.LFE8:
	.size	poly_set, .-poly_set
	.section	.text.poly_at,"ax",@progbits
	.align	1
	.globl	poly_at
	.type	poly_at, @function
poly_at:
.LFB9:
	.loc 1 176 1
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
	.loc 1 181 10
	lw	a0,-36(s0)
	call	poly_ptr
	sw	a0,-20(s0)
	.loc 1 183 16
	lbu	a5,-37(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 1 184 1
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
	.size	poly_at, .-poly_at
	.section	.text.poly_get_size,"ax",@progbits
	.align	1
	.globl	poly_get_size
	.type	poly_get_size, @function
poly_get_size:
.LFB10:
	.loc 1 187 1
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
	.loc 1 190 15
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	.loc 1 191 1
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
.LFE10:
	.size	poly_get_size, .-poly_get_size
	.section	.text.poly_get_id,"ax",@progbits
	.align	1
	.globl	poly_get_id
	.type	poly_get_id, @function
poly_get_id:
.LFB11:
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
	.loc 1 197 15
	lw	a5,-20(s0)
	lbu	a5,0(a5)
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
.LFE11:
	.size	poly_get_id, .-poly_get_id
	.section	.text.poly_copy,"ax",@progbits
	.align	1
	.globl	poly_copy
	.type	poly_copy, @function
poly_copy:
.LFB12:
	.loc 1 201 1
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
	.loc 1 204 40
	lw	a5,-24(s0)
	lbu	a4,8(a5)
	.loc 1 204 24
	lw	a5,-20(s0)
	lbu	a5,8(a5)
	.loc 1 204 66
	mv	a2,a5
	mv	a3,a4
	andi	a4,a3,0xff
	andi	a5,a2,0xff
	bgeu	a4,a5,.L13
	mv	a3,a2
.L13:
	andi	a4,a3,0xff
	.loc 1 204 17
	lw	a5,-20(s0)
	sb	a4,8(a5)
	.loc 1 205 5
	lw	a0,-24(s0)
	call	poly_ptr
	mv	a4,a0
	.loc 1 205 5 is_stmt 0 discriminator 1
	lw	a5,-20(s0)
	lbu	a5,8(a5)
	li	a3,0
	mv	a2,a5
	mv	a1,a4
	lw	a0,-20(s0)
	call	poly_set
	.loc 1 206 1 is_stmt 1
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
.LFE12:
	.size	poly_copy, .-poly_copy
	.section	.text.poly_append,"ax",@progbits
	.align	1
	.globl	poly_append
	.type	poly_append, @function
poly_append:
.LFB13:
	.loc 1 209 1
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
	.loc 1 213 10
	lw	a0,-36(s0)
	call	poly_ptr
	sw	a0,-20(s0)
	.loc 1 214 11
	lw	a5,-36(s0)
	lbu	a5,8(a5)
	.loc 1 214 19
	addi	a4,a5,1
	andi	a3,a4,0xff
	lw	a4,-36(s0)
	sb	a3,8(a4)
	mv	a4,a5
	.loc 1 214 7
	lw	a5,-20(s0)
	add	a5,a5,a4
	.loc 1 214 23
	lbu	a4,-37(s0)
	sb	a4,0(a5)
	.loc 1 216 12
	li	a5,1
	.loc 1 217 1
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
	.size	poly_append, .-poly_append
	.section	.text.gf_add,"ax",@progbits
	.align	1
	.globl	gf_add
	.type	gf_add, @function
gf_add:
.LFB14:
	.loc 1 221 1
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
	mv	a4,a1
	sb	a5,-17(s0)
	mv	a5,a4
	sb	a5,-18(s0)
	.loc 1 222 14
	lbu	a5,-17(s0)
	mv	a4,a5
	lbu	a5,-18(s0)
	add	a5,a4,a5
	andi	a5,a5,0xff
	.loc 1 223 1
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
	.size	gf_add, .-gf_add
	.section	.text.gf_sub,"ax",@progbits
	.align	1
	.globl	gf_sub
	.type	gf_sub, @function
gf_sub:
.LFB15:
	.loc 1 226 1
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
	mv	a4,a1
	sb	a5,-17(s0)
	mv	a5,a4
	sb	a5,-18(s0)
	.loc 1 227 13
	lbu	a5,-17(s0)
	mv	a4,a5
	lbu	a5,-18(s0)
	xor	a5,a4,a5
	andi	a5,a5,0xff
	.loc 1 228 1
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
.LFE15:
	.size	gf_sub, .-gf_sub
	.section	.text.gf_mul,"ax",@progbits
	.align	1
	.globl	gf_mul
	.type	gf_mul, @function
gf_mul:
.LFB16:
	.loc 1 231 1
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
	mv	a4,a1
	sh	a5,-18(s0)
	mv	a5,a4
	sh	a5,-20(s0)
	.loc 1 232 8
	lhu	a5,-18(s0)
	beq	a5,zero,.L21
	.loc 1 232 16 discriminator 1
	lhu	a5,-20(s0)
	bne	a5,zero,.L22
.L21:
	.loc 1 233 16
	li	a5,0
	j	.L23
.L22:
	.loc 1 236 29
	lhu	a5,-18(s0)
	lui	a4,%hi(code_log)
	addi	a4,a4,%lo(code_log)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a3,a5
	.loc 1 236 43
	lhu	a5,-20(s0)
	lui	a4,%hi(code_log)
	addi	a4,a4,%lo(code_log)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 236 33
	add	a5,a3,a5
	.loc 1 236 20
	lui	a4,%hi(code_exp)
	addi	a4,a4,%lo(code_exp)
	add	a5,a4,a5
	lbu	a5,0(a5)
.L23:
	.loc 1 237 1
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
.LFE16:
	.size	gf_mul, .-gf_mul
	.section	.text.gf_div,"ax",@progbits
	.align	1
	.globl	gf_div
	.type	gf_div, @function
gf_div:
.LFB17:
	.loc 1 240 1
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
	mv	a4,a1
	sb	a5,-17(s0)
	mv	a5,a4
	sb	a5,-18(s0)
	.loc 1 243 8
	lbu	a5,-17(s0)
	bne	a5,zero,.L25
	.loc 1 244 16
	li	a5,0
	j	.L26
.L25:
	.loc 1 246 30
	lbu	a5,-17(s0)
	lui	a4,%hi(code_log)
	addi	a4,a4,%lo(code_log)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 246 34
	addi	a5,a5,255
	.loc 1 246 50
	lbu	a4,-18(s0)
	lui	a3,%hi(code_log)
	addi	a3,a3,%lo(code_log)
	add	a4,a3,a4
	lbu	a4,0(a4)
	.loc 1 246 40
	sub	a5,a5,a4
	.loc 1 246 55
	li	a4,-2139062272
	addi	a4,a4,129
	mulh	a4,a5,a4
	add	a4,a4,a5
	srai	a3,a4,7
	srai	a4,a5,31
	sub	a3,a3,a4
	mv	a4,a3
	slli	a4,a4,8
	sub	a4,a4,a3
	sub	a3,a5,a4
	.loc 1 246 20
	lui	a5,%hi(code_exp)
	addi	a5,a5,%lo(code_exp)
	add	a5,a5,a3
	lbu	a5,0(a5)
.L26:
	.loc 1 247 1
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
.LFE17:
	.size	gf_div, .-gf_div
	.section	.text.gf_pow,"ax",@progbits
	.align	1
	.globl	gf_pow
	.type	gf_pow, @function
gf_pow:
.LFB18:
	.loc 1 250 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a3,a0
	sw	a1,-48(s0)
	sw	a2,-44(s0)
	sb	a3,-33(s0)
	.loc 1 251 26
	lbu	a3,-33(s0)
	lui	a2,%hi(code_log)
	addi	a2,a2,%lo(code_log)
	add	a3,a2,a3
	lbu	a3,0(a3)
	.loc 1 251 14
	sw	a3,-24(s0)
	sw	zero,-20(s0)
	.loc 1 253 7
	lw	a2,-20(s0)
	lw	a3,-48(s0)
	mul	a2,a2,a3
	lw	a1,-44(s0)
	lw	a3,-24(s0)
	mul	a3,a1,a3
	add	a1,a2,a3
	lw	a2,-24(s0)
	lw	a3,-48(s0)
	mul	a0,a2,a3
	mulhu	a5,a2,a3
	mv	a4,a0
	add	a3,a1,a5
	mv	a5,a3
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	.loc 1 254 7
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	li	a2,255
	li	a3,0
	mv	a0,a4
	mv	a1,a5
	call	__moddi3
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	.loc 1 256 8
	lw	a5,-20(s0)
	bge	a5,zero,.L28
	.loc 1 257 11
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	li	a0,255
	li	a1,0
	add	a4,a2,a0
	mv	a6,a4
	sltu	a6,a6,a2
	add	a5,a3,a1
	add	a3,a6,a5
	mv	a5,a3
	sw	a4,-24(s0)
	sw	a5,-20(s0)
.L28:
	.loc 1 260 20
	lui	a5,%hi(code_exp)
	addi	a4,a5,%lo(code_exp)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 261 1
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
	.size	gf_pow, .-gf_pow
	.section	.text.gf_inverse,"ax",@progbits
	.align	1
	.globl	gf_inverse
	.type	gf_inverse, @function
gf_inverse:
.LFB19:
	.loc 1 264 1
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
	.loc 1 265 35
	lbu	a5,-17(s0)
	lui	a4,%hi(code_log)
	addi	a4,a4,%lo(code_log)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 265 25
	li	a5,255
	sub	a5,a5,a4
	.loc 1 265 20
	lui	a4,%hi(code_exp)
	addi	a4,a4,%lo(code_exp)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 266 1
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
	.size	gf_inverse, .-gf_inverse
	.section	.text.poly_scale,"ax",@progbits
	.align	1
	.globl	poly_scale
	.type	poly_scale, @function
poly_scale:
.LFB20:
	.loc 1 270 1
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
	mv	a5,a2
	sh	a5,-42(s0)
	.loc 1 273 21
	lw	a5,-36(s0)
	lbu	a4,8(a5)
	.loc 1 273 18
	lw	a5,-40(s0)
	sb	a4,8(a5)
	.loc 1 274 12
	sh	zero,-18(s0)
	.loc 1 274 5
	j	.L34
.L35:
	.loc 1 276 37
	lhu	a5,-18(s0)
	andi	a5,a5,0xff
	mv	a1,a5
	lw	a0,-36(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 276 36 discriminator 1
	lbu	a5,0(a5)
	.loc 1 276 29 discriminator 1
	mv	s2,a5
	.loc 1 276 10 discriminator 1
	lhu	a5,-18(s0)
	andi	a5,a5,0xff
	mv	a1,a5
	lw	a0,-40(s0)
	call	poly_at
	mv	s1,a0
	.loc 1 276 29 discriminator 2
	lhu	a5,-42(s0)
	mv	a1,a5
	mv	a0,s2
	call	gf_mul
	mv	a5,a0
	.loc 1 276 27 discriminator 3
	sb	a5,0(s1)
	.loc 1 274 33 discriminator 3
	lhu	a5,-18(s0)
	addi	a5,a5,1
	sh	a5,-18(s0)
.L34:
	.loc 1 274 22 discriminator 1
	lw	a5,-36(s0)
	lbu	a5,8(a5)
	mv	a4,a5
	.loc 1 274 19 discriminator 1
	lhu	a5,-18(s0)
	bltu	a5,a4,.L35
	.loc 1 278 1
	nop
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
.LFE20:
	.size	poly_scale, .-poly_scale
	.section	.text.poly_add,"ax",@progbits
	.align	1
	.globl	poly_add
	.type	poly_add, @function
poly_add:
.LFB21:
	.loc 1 281 1
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
	.loc 1 284 37
	lw	a5,-40(s0)
	lbu	a4,8(a5)
	.loc 1 284 23
	lw	a5,-36(s0)
	lbu	a5,8(a5)
	.loc 1 284 61
	mv	a2,a5
	mv	a3,a4
	andi	a4,a3,0xff
	andi	a5,a2,0xff
	bgeu	a4,a5,.L37
	mv	a3,a2
.L37:
	andi	a4,a3,0xff
	.loc 1 284 18
	lw	a5,-44(s0)
	sb	a4,8(a5)
	.loc 1 285 12
	lw	a0,-44(s0)
	call	poly_ptr
	mv	a4,a0
	.loc 1 285 35 discriminator 1
	lw	a5,-44(s0)
	lbu	a5,8(a5)
	.loc 1 285 5 discriminator 1
	mv	a2,a5
	li	a1,0
	mv	a0,a4
	call	memset
	.loc 1 287 12
	sb	zero,-17(s0)
	.loc 1 287 5
	j	.L38
.L39:
	.loc 1 289 57
	lbu	a5,-17(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	poly_at
	mv	s1,a0
	.loc 1 289 32 discriminator 1
	lw	a5,-44(s0)
	lbu	a5,8(a5)
	.loc 1 289 26 discriminator 1
	lbu	a4,-17(s0)
	add	a5,a5,a4
	andi	a4,a5,0xff
	.loc 1 289 44 discriminator 1
	lw	a5,-36(s0)
	lbu	a5,8(a5)
	.loc 1 289 10 discriminator 1
	sub	a5,a4,a5
	andi	a5,a5,0xff
	mv	a1,a5
	lw	a0,-44(s0)
	call	poly_at
	mv	a4,a0
	.loc 1 289 56 discriminator 2
	lbu	a5,0(s1)
	.loc 1 289 54 discriminator 2
	sb	a5,0(a4)
	.loc 1 287 33 discriminator 3
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L38:
	.loc 1 287 22 discriminator 1
	lw	a5,-36(s0)
	lbu	a5,8(a5)
	.loc 1 287 19 discriminator 1
	lbu	a4,-17(s0)
	bltu	a4,a5,.L39
	.loc 1 292 12
	sb	zero,-17(s0)
	.loc 1 292 5
	j	.L40
.L41:
	.loc 1 294 58
	lbu	a5,-17(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 294 57 discriminator 1
	lbu	s1,0(a5)
	.loc 1 294 32 discriminator 1
	lw	a5,-44(s0)
	lbu	a5,8(a5)
	.loc 1 294 26 discriminator 1
	lbu	a4,-17(s0)
	add	a5,a5,a4
	andi	a4,a5,0xff
	.loc 1 294 44 discriminator 1
	lw	a5,-40(s0)
	lbu	a5,8(a5)
	.loc 1 294 10 discriminator 1
	sub	a5,a4,a5
	andi	a5,a5,0xff
	mv	a1,a5
	lw	a0,-44(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 294 9 discriminator 2
	lbu	a4,0(a5)
	.loc 1 294 54 discriminator 2
	xor	a4,s1,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 292 33 discriminator 3
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L40:
	.loc 1 292 22 discriminator 1
	lw	a5,-40(s0)
	lbu	a5,8(a5)
	.loc 1 292 19 discriminator 1
	lbu	a4,-17(s0)
	bltu	a4,a5,.L41
	.loc 1 296 1
	nop
	nop
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
.LFE21:
	.size	poly_add, .-poly_add
	.section	.text.poly_mul,"ax",@progbits
	.align	1
	.globl	poly_mul
	.type	poly_mul, @function
poly_mul:
.LFB22:
	.loc 1 299 1
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
	.loc 1 302 21
	lw	a5,-36(s0)
	lbu	a4,8(a5)
	.loc 1 302 33
	lw	a5,-40(s0)
	lbu	a5,8(a5)
	.loc 1 302 30
	add	a5,a4,a5
	andi	a5,a5,0xff
	.loc 1 302 42
	addi	a5,a5,-1
	andi	a4,a5,0xff
	.loc 1 302 18
	lw	a5,-44(s0)
	sb	a4,8(a5)
	.loc 1 303 12
	lw	a0,-44(s0)
	call	poly_ptr
	mv	a4,a0
	.loc 1 303 35 discriminator 1
	lw	a5,-44(s0)
	lbu	a5,8(a5)
	.loc 1 303 5 discriminator 1
	mv	a2,a5
	li	a1,0
	mv	a0,a4
	call	memset
	.loc 1 306 12
	sb	zero,-18(s0)
	.loc 1 306 5
	j	.L43
.L46:
	.loc 1 307 16
	sb	zero,-17(s0)
	.loc 1 307 9
	j	.L44
.L45:
	.loc 1 308 44
	lbu	a5,-17(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 308 43 discriminator 1
	lbu	a5,0(a5)
	.loc 1 308 36 discriminator 1
	mv	s1,a5
	.loc 1 308 60 discriminator 1
	lbu	a5,-18(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 308 59 discriminator 2
	lbu	a5,0(a5)
	.loc 1 308 36 discriminator 2
	mv	a1,a5
	mv	a0,s1
	call	gf_mul
	mv	a5,a0
	mv	s1,a5
	.loc 1 308 14 discriminator 3
	lbu	a5,-17(s0)
	mv	a4,a5
	lbu	a5,-18(s0)
	add	a5,a4,a5
	andi	a5,a5,0xff
	mv	a1,a5
	lw	a0,-44(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 308 13 discriminator 4
	lbu	a4,0(a5)
	.loc 1 308 33 discriminator 4
	xor	a4,s1,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 307 37 discriminator 3
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L44:
	.loc 1 307 26 discriminator 1
	lw	a5,-36(s0)
	lbu	a5,8(a5)
	.loc 1 307 23 discriminator 1
	lbu	a4,-17(s0)
	bltu	a4,a5,.L45
	.loc 1 306 33 discriminator 2
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L43:
	.loc 1 306 22 discriminator 1
	lw	a5,-40(s0)
	lbu	a5,8(a5)
	.loc 1 306 19 discriminator 1
	lbu	a4,-18(s0)
	bltu	a4,a5,.L46
	.loc 1 311 1
	nop
	nop
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
.LFE22:
	.size	poly_mul, .-poly_mul
	.section	.text.poly_div,"ax",@progbits
	.align	1
	.globl	poly_div
	.type	poly_div, @function
poly_div:
.LFB23:
	.loc 1 314 1
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
	.loc 1 319 9
	lw	a0,-36(s0)
	call	poly_ptr
	mv	s1,a0
	.loc 1 319 24 discriminator 1
	lw	a0,-44(s0)
	call	poly_ptr
	mv	a5,a0
	.loc 1 319 8 discriminator 2
	beq	s1,a5,.L48
	.loc 1 320 16
	lw	a0,-44(s0)
	call	poly_ptr
	mv	s1,a0
	.loc 1 320 32 discriminator 1
	lw	a0,-36(s0)
	call	poly_ptr
	mv	a4,a0
	.loc 1 320 46 discriminator 2
	lw	a5,-36(s0)
	lbu	a5,8(a5)
	.loc 1 320 9 discriminator 2
	mv	a2,a5
	mv	a1,a4
	mv	a0,s1
	call	memcpy
.L48:
	.loc 1 323 21
	lw	a5,-36(s0)
	lbu	a4,8(a5)
	.loc 1 323 18
	lw	a5,-44(s0)
	sb	a4,8(a5)
	.loc 1 325 12
	sw	zero,-20(s0)
	.loc 1 325 5
	j	.L49
.L54:
	.loc 1 326 17
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	mv	a1,a5
	lw	a0,-44(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 326 14 discriminator 1
	lbu	a5,0(a5)
	sb	a5,-29(s0)
	.loc 1 327 12
	lbu	a5,-29(s0)
	beq	a5,zero,.L50
.LBB6:
	.loc 1 328 26
	li	a5,1
	sb	a5,-21(s0)
	.loc 1 328 13
	j	.L51
.L53:
	.loc 1 329 22
	lbu	a5,-21(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 329 21 discriminator 1
	lbu	a5,0(a5)
	.loc 1 329 20 discriminator 1
	beq	a5,zero,.L52
	.loc 1 330 52
	lbu	a5,-21(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 330 51 discriminator 1
	lbu	a5,0(a5)
	.loc 1 330 44 discriminator 1
	mv	a4,a5
	lbu	a5,-29(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a1,a5
	mv	a0,a4
	call	gf_mul
	mv	a5,a0
	mv	s1,a5
	.loc 1 330 22 discriminator 2
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	lbu	a4,-21(s0)
	add	a5,a5,a4
	andi	a5,a5,0xff
	mv	a1,a5
	lw	a0,-44(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 330 21 discriminator 3
	lbu	a4,0(a5)
	.loc 1 330 41 discriminator 3
	xor	a4,s1,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
.L52:
	.loc 1 328 49 discriminator 2
	lbu	a5,-21(s0)
	addi	a5,a5,1
	sb	a5,-21(s0)
.L51:
	.loc 1 328 38 discriminator 1
	lw	a5,-40(s0)
	lbu	a5,8(a5)
	.loc 1 328 35 discriminator 1
	lbu	a4,-21(s0)
	bltu	a4,a5,.L53
.L50:
.LBE6:
	.loc 1 325 49 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L49:
	.loc 1 325 23 discriminator 1
	lw	a5,-36(s0)
	lbu	a5,8(a5)
	mv	a4,a5
	.loc 1 325 34 discriminator 1
	lw	a5,-40(s0)
	lbu	a5,8(a5)
	.loc 1 325 42 discriminator 1
	addi	a5,a5,-1
	.loc 1 325 31 discriminator 1
	sub	a5,a4,a5
	.loc 1 325 19 discriminator 1
	lw	a4,-20(s0)
	blt	a4,a5,.L54
	.loc 1 336 12
	lw	a5,-36(s0)
	lbu	a5,8(a5)
	mv	a4,a5
	.loc 1 336 23
	lw	a5,-40(s0)
	lbu	a5,8(a5)
	.loc 1 336 31
	addi	a5,a5,-1
	.loc 1 336 20
	sub	a5,a4,a5
	.loc 1 336 9
	sw	a5,-28(s0)
	.loc 1 337 13
	lw	a0,-44(s0)
	call	poly_ptr
	mv	s1,a0
	.loc 1 337 29 discriminator 1
	lw	a0,-44(s0)
	call	poly_ptr
	mv	a4,a0
	.loc 1 337 43 discriminator 2
	lw	a5,-28(s0)
	add	a4,a4,a5
	.loc 1 337 54 discriminator 2
	lw	a5,-44(s0)
	lbu	a5,8(a5)
	mv	a3,a5
	.loc 1 337 68 discriminator 2
	lw	a5,-28(s0)
	sub	a5,a3,a5
	.loc 1 337 5 discriminator 2
	mv	a2,a5
	mv	a1,a4
	mv	a0,s1
	call	memmove
	.loc 1 338 24
	lw	a5,-44(s0)
	lbu	a4,8(a5)
	.loc 1 338 32
	lw	a5,-28(s0)
	andi	a5,a5,0xff
	sub	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 338 18
	lw	a5,-44(s0)
	sb	a4,8(a5)
	.loc 1 339 1
	nop
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
.LFE23:
	.size	poly_div, .-poly_div
	.section	.text.poly_eval,"ax",@progbits
	.align	1
	.globl	poly_eval
	.type	poly_eval, @function
poly_eval:
.LFB24:
	.loc 1 342 1
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
	mv	a5,a1
	sh	a5,-38(s0)
	.loc 1 343 18
	li	a1,0
	lw	a0,-36(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 343 13 discriminator 1
	lbu	a5,0(a5)
	sb	a5,-17(s0)
.LBB7:
	.loc 1 345 18
	li	a5,1
	sb	a5,-18(s0)
	.loc 1 345 5
	j	.L56
.L57:
	.loc 1 347 13
	lbu	a5,-17(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-38(s0)
	mv	a1,a4
	mv	a0,a5
	call	gf_mul
	mv	a5,a0
	mv	s1,a5
	.loc 1 347 30 discriminator 1
	lbu	a5,-18(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 347 29 discriminator 2
	lbu	a5,0(a5)
	.loc 1 347 11 discriminator 2
	xor	a5,s1,a5
	sb	a5,-17(s0)
	.loc 1 345 41 discriminator 3
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L56:
	.loc 1 345 30 discriminator 1
	lw	a5,-36(s0)
	lbu	a5,8(a5)
	.loc 1 345 27 discriminator 1
	lbu	a4,-18(s0)
	bltu	a4,a5,.L57
.LBE7:
	.loc 1 349 12
	lb	a5,-17(s0)
	.loc 1 350 1
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
.LFE24:
	.size	poly_eval, .-poly_eval
	.section	.text.generator_poly,"ax",@progbits
	.align	1
	.globl	generator_poly
	.type	generator_poly, @function
generator_poly:
.LFB25:
	.loc 1 354 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	.loc 1 356 21
	lw	a5,-52(s0)
	.loc 1 356 15
	addi	a5,a5,24
	sw	a5,-40(s0)
	.loc 1 357 22
	lw	a5,-52(s0)
	.loc 1 357 15
	addi	a5,a5,36
	sw	a5,-44(s0)
	.loc 1 358 22
	lw	a5,-52(s0)
	.loc 1 358 15
	addi	a5,a5,48
	sw	a5,-48(s0)
	.loc 1 360 6
	li	a1,0
	lw	a0,-40(s0)
	call	poly_at
	mv	a4,a0
	.loc 1 360 22 discriminator 1
	li	a5,1
	sb	a5,0(a4)
	.loc 1 361 17
	lw	a5,-40(s0)
	li	a4,1
	sb	a4,8(a5)
	.loc 1 363 18
	lw	a5,-44(s0)
	li	a4,2
	sb	a4,8(a5)
	.loc 1 365 12
	sb	zero,-33(s0)
	.loc 1 365 5
	j	.L60
.L61:
	.loc 1 367 10
	li	a1,0
	lw	a0,-44(s0)
	call	poly_at
	mv	a4,a0
	.loc 1 367 27 discriminator 1
	li	a5,1
	sb	a5,0(a4)
	.loc 1 368 29
	lbu	a5,-33(s0)
	andi	a5,a5,0xff
	mv	s2,a5
	li	s3,0
	.loc 1 368 10
	li	a1,1
	lw	a0,-44(s0)
	call	poly_at
	mv	s1,a0
	.loc 1 368 29 discriminator 1
	mv	a1,s2
	mv	a2,s3
	li	a0,2
	call	gf_pow
	mv	a5,a0
	.loc 1 368 27 discriminator 2
	sb	a5,0(s1)
	.loc 1 370 9
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	poly_mul
	.loc 1 371 9
	lw	a1,-48(s0)
	lw	a0,-40(s0)
	call	poly_copy
	.loc 1 365 27 discriminator 3
	lbu	a5,-33(s0)
	addi	a5,a5,1
	sb	a5,-33(s0)
.L60:
	.loc 1 365 19 discriminator 1
	lbu	a4,-33(s0)
	li	a5,125
	bleu	a4,a5,.L61
	.loc 1 373 1
	nop
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE25:
	.size	generator_poly, .-generator_poly
	.section	.text.calc_syndromes,"ax",@progbits
	.align	1
	.globl	calc_syndromes
	.type	calc_syndromes, @function
calc_syndromes:
.LFB26:
	.loc 1 376 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	.loc 1 378 15
	lw	a5,-52(s0)
	addi	a5,a5,96
	sw	a5,-40(s0)
	.loc 1 380 18
	lw	a5,-40(s0)
	li	a4,127
	sb	a4,8(a5)
	.loc 1 381 6
	li	a1,0
	lw	a0,-40(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 381 23 discriminator 1
	sb	zero,0(a5)
	.loc 1 383 12
	li	a5,1
	sb	a5,-33(s0)
	.loc 1 383 5
	j	.L63
.L64:
	.loc 1 385 56
	lbu	a5,-33(s0)
	addi	a5,a5,-1
	.loc 1 385 44
	mv	s2,a5
	srai	a5,a5,31
	mv	s3,a5
	mv	a1,s2
	mv	a2,s3
	li	a0,2
	call	gf_pow
	mv	a5,a0
	.loc 1 385 29 discriminator 1
	mv	a1,a5
	lw	a0,-56(s0)
	call	poly_eval
	mv	a5,a0
	mv	s1,a5
	.loc 1 385 10 discriminator 2
	lbu	a5,-33(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	poly_at
	mv	a4,a0
	.loc 1 385 29 discriminator 3
	andi	a5,s1,0xff
	.loc 1 385 27 discriminator 3
	sb	a5,0(a4)
	.loc 1 383 31 discriminator 3
	lbu	a5,-33(s0)
	addi	a5,a5,1
	sb	a5,-33(s0)
.L63:
	.loc 1 383 19 discriminator 1
	lbu	a4,-33(s0)
	li	a5,126
	bleu	a4,a5,.L64
	.loc 1 387 1
	nop
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE26:
	.size	calc_syndromes, .-calc_syndromes
	.section	.text.find_errata_locator,"ax",@progbits
	.align	1
	.globl	find_errata_locator
	.type	find_errata_locator, @function
find_errata_locator:
.LFB27:
	.loc 1 390 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	.loc 1 391 15
	lw	a5,-68(s0)
	addi	a5,a5,120
	sw	a5,-40(s0)
	.loc 1 392 15
	lw	a5,-68(s0)
	addi	a5,a5,36
	sw	a5,-44(s0)
	.loc 1 393 15
	lw	a5,-68(s0)
	addi	a5,a5,48
	sw	a5,-48(s0)
	.loc 1 394 15
	lw	a5,-68(s0)
	addi	a5,a5,72
	sw	a5,-52(s0)
	.loc 1 395 15
	lw	a5,-68(s0)
	addi	a5,a5,84
	sw	a5,-56(s0)
	.loc 1 397 24
	lw	a5,-40(s0)
	li	a4,1
	sb	a4,8(a5)
	.loc 1 398 6
	li	a1,0
	lw	a0,-40(s0)
	call	poly_at
	mv	a4,a0
	.loc 1 398 29 discriminator 1
	li	a5,1
	sb	a5,0(a4)
	.loc 1 400 18
	lw	a5,-44(s0)
	li	a4,1
	sb	a4,8(a5)
	.loc 1 401 18
	lw	a5,-48(s0)
	li	a4,2
	sb	a4,8(a5)
.LBB8:
	.loc 1 403 18
	sb	zero,-33(s0)
	.loc 1 403 5
	j	.L66
.L67:
	.loc 1 405 10
	li	a1,0
	lw	a0,-44(s0)
	call	poly_at
	mv	a4,a0
	.loc 1 405 27 discriminator 1
	li	a5,1
	sb	a5,0(a4)
	.loc 1 406 40
	lbu	a5,-33(s0)
	mv	a1,a5
	lw	a0,-72(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 406 39 discriminator 1
	lbu	a5,0(a5)
	.loc 1 406 29 discriminator 1
	mv	s2,a5
	li	s3,0
	.loc 1 406 10 discriminator 1
	li	a1,0
	lw	a0,-48(s0)
	call	poly_at
	mv	s1,a0
	.loc 1 406 29 discriminator 2
	mv	a1,s2
	mv	a2,s3
	li	a0,2
	call	gf_pow
	mv	a5,a0
	.loc 1 406 27 discriminator 3
	sb	a5,0(s1)
	.loc 1 407 10
	li	a1,1
	lw	a0,-48(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 407 27 discriminator 1
	sb	zero,0(a5)
	.loc 1 409 9
	lw	a2,-52(s0)
	lw	a1,-48(s0)
	lw	a0,-44(s0)
	call	poly_add
	.loc 1 410 9
	lw	a2,-56(s0)
	lw	a1,-52(s0)
	lw	a0,-40(s0)
	call	poly_mul
	.loc 1 412 9
	lw	a1,-56(s0)
	lw	a0,-40(s0)
	call	poly_copy
	.loc 1 403 44 discriminator 3
	lbu	a5,-33(s0)
	addi	a5,a5,1
	sb	a5,-33(s0)
.L66:
	.loc 1 403 33 discriminator 1
	lw	a5,-72(s0)
	lbu	a5,8(a5)
	.loc 1 403 27 discriminator 1
	lbu	a4,-33(s0)
	bltu	a4,a5,.L67
.LBE8:
	.loc 1 414 1
	nop
	nop
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	find_errata_locator, .-find_errata_locator
	.section	.text.find_error_evaluator,"ax",@progbits
	.align	1
	.globl	find_error_evaluator
	.type	find_error_evaluator, @function
find_error_evaluator:
.LFB28:
	.loc 1 417 1
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
	mv	a5,a4
	sb	a5,-49(s0)
	.loc 1 418 15
	lw	a5,-36(s0)
	addi	a5,a5,36
	sw	a5,-20(s0)
	.loc 1 419 5
	lw	a2,-20(s0)
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	poly_mul
	.loc 1 421 15
	lw	a5,-36(s0)
	addi	a5,a5,48
	sw	a5,-24(s0)
	.loc 1 422 30
	lbu	a5,-49(s0)
	addi	a5,a5,2
	andi	a4,a5,0xff
	.loc 1 422 21
	lw	a5,-24(s0)
	sb	a4,8(a5)
	.loc 1 424 5
	lw	a0,-24(s0)
	call	poly_reset
	.loc 1 425 6
	li	a1,0
	lw	a0,-24(s0)
	call	poly_at
	mv	a4,a0
	.loc 1 425 26 discriminator 1
	li	a5,1
	sb	a5,0(a4)
	.loc 1 427 5
	lw	a2,-48(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	poly_div
	.loc 1 428 1
	nop
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
	.size	find_error_evaluator, .-find_error_evaluator
	.section	.text.correct_errata,"ax",@progbits
	.align	1
	.globl	correct_errata
	.type	correct_errata, @function
correct_errata:
.LFB29:
	.loc 1 431 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	sw	s2,80(sp)
	sw	s3,76(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	sw	a2,-92(s0)
	sw	a3,-96(s0)
	.loc 1 440 15
	lw	a5,-84(s0)
	addi	a5,a5,168
	sw	a5,-40(s0)
	.loc 1 441 15
	lw	a5,-84(s0)
	addi	a5,a5,12
	sw	a5,-44(s0)
	.loc 1 442 15
	lw	a5,-84(s0)
	addi	a5,a5,120
	sw	a5,-48(s0)
	.loc 1 443 15
	lw	a5,-84(s0)
	addi	a5,a5,72
	sw	a5,-52(s0)
	.loc 1 444 15
	lw	a5,-84(s0)
	addi	a5,a5,84
	sw	a5,-56(s0)
	.loc 1 445 15
	lw	a5,-84(s0)
	addi	a5,a5,180
	sw	a5,-60(s0)
	.loc 1 446 15
	lw	a5,-84(s0)
	addi	a5,a5,36
	sw	a5,-64(s0)
	.loc 1 447 15
	lw	a5,-84(s0)
	addi	a5,a5,60
	sw	a5,-68(s0)
	.loc 1 448 15
	lw	a5,-84(s0)
	addi	a5,a5,48
	sw	a5,-72(s0)
	.loc 1 450 28
	lw	a5,-92(s0)
	lbu	a4,8(a5)
	.loc 1 450 19
	lw	a5,-40(s0)
	sb	a4,8(a5)
	.loc 1 452 12
	sb	zero,-33(s0)
	.loc 1 452 5
	j	.L70
.L71:
	.loc 1 453 36
	lw	a5,-96(s0)
	lbu	s1,8(a5)
	.loc 1 453 52
	lbu	a5,-33(s0)
	mv	a1,a5
	lw	a0,-92(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 453 51 discriminator 1
	lbu	a5,0(a5)
	.loc 1 453 49 discriminator 1
	sub	a5,s1,a5
	andi	s1,a5,0xff
	.loc 1 453 10 discriminator 1
	lbu	a5,-33(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	poly_at
	mv	a4,a0
	.loc 1 453 49 discriminator 2
	addi	a5,s1,-1
	andi	a5,a5,0xff
	.loc 1 453 28 discriminator 2
	sb	a5,0(a4)
	.loc 1 452 39 discriminator 3
	lbu	a5,-33(s0)
	addi	a5,a5,1
	sb	a5,-33(s0)
.L70:
	.loc 1 452 28 discriminator 1
	lw	a5,-92(s0)
	lbu	a5,8(a5)
	.loc 1 452 19 discriminator 1
	lbu	a4,-33(s0)
	bltu	a4,a5,.L71
	.loc 1 456 5
	lw	a1,-40(s0)
	lw	a0,-84(s0)
	call	find_errata_locator
	.loc 1 460 25
	lw	a5,-88(s0)
	lbu	a4,8(a5)
	.loc 1 460 19
	lw	a5,-52(s0)
	sb	a4,8(a5)
	.loc 1 462 20
	lw	a5,-88(s0)
	lbu	a5,8(a5)
	.loc 1 462 28
	addi	a5,a5,-1
	andi	a5,a5,0xff
	.loc 1 462 14
	sb	a5,-34(s0)
	.loc 1 462 34
	sb	zero,-36(s0)
	.loc 1 462 5
	j	.L72
.L73:
	.loc 1 464 31
	lbu	a5,-34(s0)
	mv	a1,a5
	lw	a0,-88(s0)
	call	poly_at
	mv	s1,a0
	.loc 1 464 10 discriminator 1
	lbu	a5,-36(s0)
	mv	a1,a5
	lw	a0,-52(s0)
	call	poly_at
	mv	a4,a0
	.loc 1 464 30 discriminator 2
	lbu	a5,0(s1)
	.loc 1 464 28 discriminator 2
	sb	a5,0(a4)
	.loc 1 462 52 discriminator 3
	lb	a5,-34(s0)
	andi	a5,a5,0xff
	addi	a5,a5,-1
	andi	a5,a5,0xff
	sb	a5,-34(s0)
	.loc 1 462 57 discriminator 3
	lbu	a5,-36(s0)
	addi	a5,a5,1
	sb	a5,-36(s0)
.L72:
	.loc 1 462 43 discriminator 1
	lb	a5,-34(s0)
	bge	a5,zero,.L73
	.loc 1 470 73
	lw	a5,-48(s0)
	lbu	a5,8(a5)
	.loc 1 470 5
	addi	a5,a5,-1
	andi	a5,a5,0xff
	mv	a4,a5
	lw	a3,-56(s0)
	lw	a2,-48(s0)
	lw	a1,-52(s0)
	lw	a0,-84(s0)
	call	find_error_evaluator
	.loc 1 473 29
	lw	a5,-56(s0)
	lbu	a4,8(a5)
	.loc 1 473 20
	lw	a5,-60(s0)
	sb	a4,8(a5)
	.loc 1 474 23
	lw	a5,-56(s0)
	lbu	a5,8(a5)
	.loc 1 474 31
	addi	a5,a5,-1
	andi	a5,a5,0xff
	.loc 1 474 14
	sb	a5,-34(s0)
	.loc 1 474 37
	sb	zero,-36(s0)
	.loc 1 474 5
	j	.L74
.L75:
	.loc 1 476 32
	lbu	a5,-34(s0)
	mv	a1,a5
	lw	a0,-56(s0)
	call	poly_at
	mv	s1,a0
	.loc 1 476 10 discriminator 1
	lbu	a5,-36(s0)
	mv	a1,a5
	lw	a0,-60(s0)
	call	poly_at
	mv	a4,a0
	.loc 1 476 31 discriminator 2
	lbu	a5,0(s1)
	.loc 1 476 29 discriminator 2
	sb	a5,0(a4)
	.loc 1 474 55 discriminator 3
	lb	a5,-34(s0)
	andi	a5,a5,0xff
	addi	a5,a5,-1
	andi	a5,a5,0xff
	sb	a5,-34(s0)
	.loc 1 474 60 discriminator 3
	lbu	a5,-36(s0)
	addi	a5,a5,1
	sb	a5,-36(s0)
.L74:
	.loc 1 474 46 discriminator 1
	lb	a5,-34(s0)
	bge	a5,zero,.L75
	.loc 1 480 15
	lw	a5,-64(s0)
	sb	zero,8(a5)
	.loc 1 482 12
	sb	zero,-33(s0)
	.loc 1 482 5
	j	.L76
.L77:
	.loc 1 484 20
	lbu	a5,-33(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 484 19 discriminator 1
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 484 17 discriminator 1
	li	a5,255
	sub	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 484 11 discriminator 1
	sh	a5,-76(s0)
	.loc 1 485 34
	lh	a5,-76(s0)
	neg	a5,a5
	.loc 1 485 9
	mv	s2,a5
	srai	a5,a5,31
	mv	s3,a5
	mv	a1,s2
	mv	a2,s3
	li	a0,2
	call	gf_pow
	mv	a5,a0
	.loc 1 485 9 is_stmt 0 discriminator 1
	mv	a1,a5
	lw	a0,-64(s0)
	call	poly_append
	.loc 1 482 37 is_stmt 1 discriminator 3
	lbu	a5,-33(s0)
	addi	a5,a5,1
	sb	a5,-33(s0)
.L76:
	.loc 1 482 26 discriminator 1
	lw	a5,-40(s0)
	lbu	a5,8(a5)
	.loc 1 482 19 discriminator 1
	lbu	a4,-33(s0)
	bltu	a4,a5,.L77
	.loc 1 490 5
	lw	a0,-68(s0)
	call	poly_reset
	.loc 1 491 23
	lw	a5,-96(s0)
	lbu	a4,8(a5)
	.loc 1 491 15
	lw	a5,-68(s0)
	sb	a4,8(a5)
	.loc 1 494 12
	sb	zero,-33(s0)
	.loc 1 494 5
	j	.L78
.L84:
	.loc 1 495 30
	lbu	a5,-33(s0)
	mv	a1,a5
	lw	a0,-64(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 495 18 discriminator 1
	lbu	a5,0(a5)
	mv	a0,a5
	call	gf_inverse
	mv	a5,a0
	sb	a5,-73(s0)
	.loc 1 497 36
	lw	a5,-72(s0)
	sb	zero,8(a5)
	.loc 1 498 16
	sb	zero,-36(s0)
	.loc 1 498 9
	j	.L79
.L81:
	.loc 1 499 16
	lbu	a4,-36(s0)
	lbu	a5,-33(s0)
	beq	a4,a5,.L80
	.loc 1 500 17
	lbu	a5,-73(s0)
	slli	s1,a5,16
	srli	s1,s1,16
	.loc 1 500 75
	lbu	a5,-36(s0)
	mv	a1,a5
	lw	a0,-64(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 500 74 discriminator 1
	lbu	a5,0(a5)
	.loc 1 500 17 discriminator 1
	mv	a1,a5
	mv	a0,s1
	call	gf_mul
	mv	a5,a0
	.loc 1 500 17 is_stmt 0 discriminator 2
	mv	a1,a5
	li	a0,1
	call	gf_sub
	mv	a5,a0
	.loc 1 500 17 discriminator 3
	mv	a1,a5
	lw	a0,-72(s0)
	call	poly_append
.L80:
	.loc 1 498 37 is_stmt 1 discriminator 2
	lbu	a5,-36(s0)
	addi	a5,a5,1
	sb	a5,-36(s0)
.L79:
	.loc 1 498 26 discriminator 1
	lw	a5,-64(s0)
	lbu	a5,8(a5)
	.loc 1 498 23 discriminator 1
	lbu	a4,-36(s0)
	bltu	a4,a5,.L81
	.loc 1 504 23
	li	a5,1
	sb	a5,-35(s0)
	.loc 1 505 16
	sb	zero,-36(s0)
	.loc 1 505 9
	j	.L82
.L83:
	.loc 1 506 29
	lbu	a5,-35(s0)
	slli	s1,a5,16
	srli	s1,s1,16
	.loc 1 506 52
	lbu	a5,-36(s0)
	mv	a1,a5
	lw	a0,-72(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 506 51 discriminator 1
	lbu	a5,0(a5)
	.loc 1 506 29 discriminator 1
	mv	a1,a5
	mv	a0,s1
	call	gf_mul
	mv	a5,a0
	sb	a5,-35(s0)
	.loc 1 505 54 discriminator 3
	lbu	a5,-36(s0)
	addi	a5,a5,1
	sb	a5,-36(s0)
.L82:
	.loc 1 505 43 discriminator 1
	lw	a5,-72(s0)
	lbu	a5,8(a5)
	.loc 1 505 23 discriminator 1
	lbu	a4,-36(s0)
	bltu	a4,a5,.L83
	.loc 1 509 13
	lbu	a5,-73(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a1,a5
	lw	a0,-56(s0)
	call	poly_eval
	mv	a5,a0
	.loc 1 509 11 discriminator 1
	sb	a5,-74(s0)
	.loc 1 510 28
	lbu	a5,-33(s0)
	mv	a1,a5
	lw	a0,-64(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 510 20 discriminator 1
	lbu	a5,0(a5)
	li	a1,1
	li	a2,0
	mv	a0,a5
	call	gf_pow
	mv	a5,a0
	.loc 1 510 13 discriminator 2
	mv	a4,a5
	lbu	a5,-74(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a1,a5
	mv	a0,a4
	call	gf_mul
	mv	a5,a0
	sb	a5,-74(s0)
	.loc 1 512 22
	lbu	a5,-33(s0)
	mv	a1,a5
	lw	a0,-92(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 512 10 discriminator 1
	lbu	a5,0(a5)
	mv	a1,a5
	lw	a0,-68(s0)
	call	poly_at
	mv	s1,a0
	.loc 1 512 45 discriminator 2
	lbu	a4,-35(s0)
	lbu	a5,-74(s0)
	mv	a1,a4
	mv	a0,a5
	call	gf_div
	mv	a5,a0
	.loc 1 512 43 discriminator 3
	sb	a5,0(s1)
	.loc 1 494 33 discriminator 2
	lbu	a5,-33(s0)
	addi	a5,a5,1
	sb	a5,-33(s0)
.L78:
	.loc 1 494 22 discriminator 1
	lw	a5,-64(s0)
	lbu	a5,8(a5)
	.loc 1 494 19 discriminator 1
	lbu	a4,-33(s0)
	bltu	a4,a5,.L84
	.loc 1 515 5
	lw	a2,-44(s0)
	lw	a1,-68(s0)
	lw	a0,-96(s0)
	call	poly_add
	.loc 1 516 1
	nop
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	lw	s1,84(sp)
	.cfi_restore 9
	lw	s2,80(sp)
	.cfi_restore 18
	lw	s3,76(sp)
	.cfi_restore 19
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	correct_errata, .-correct_errata
	.section	.text.find_error_locator,"ax",@progbits
	.align	1
	.globl	find_error_locator
	.type	find_error_locator, @function
find_error_locator:
.LFB30:
	.loc 1 519 1
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
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	.loc 1 521 13
	sb	zero,-18(s0)
	.loc 1 522 13
	sb	zero,-19(s0)
	.loc 1 523 13
	sb	zero,-20(s0)
	.loc 1 526 14
	sw	zero,-28(s0)
	.loc 1 529 15
	lw	a5,-68(s0)
	addi	a5,a5,132
	sw	a5,-32(s0)
	.loc 1 530 15
	lw	a5,-68(s0)
	addi	a5,a5,36
	sw	a5,-36(s0)
	.loc 1 531 15
	lw	a5,-68(s0)
	addi	a5,a5,48
	sw	a5,-40(s0)
	.loc 1 532 15
	lw	a5,-68(s0)
	addi	a5,a5,72
	sw	a5,-44(s0)
	.loc 1 533 15
	lw	a5,-68(s0)
	addi	a5,a5,84
	sw	a5,-48(s0)
	.loc 1 535 8
	lw	a5,-76(s0)
	beq	a5,zero,.L86
	.loc 1 536 9
	lw	a1,-76(s0)
	lw	a0,-36(s0)
	call	poly_copy
	.loc 1 537 9
	lw	a1,-76(s0)
	lw	a0,-40(s0)
	call	poly_copy
	j	.L87
.L86:
	.loc 1 539 25
	lw	a5,-36(s0)
	li	a4,1
	sb	a4,8(a5)
	.loc 1 540 25
	lw	a5,-40(s0)
	li	a4,1
	sb	a4,8(a5)
	.loc 1 541 10
	li	a1,0
	lw	a0,-36(s0)
	call	poly_at
	mv	a4,a0
	.loc 1 541 30 discriminator 1
	li	a5,1
	sb	a5,0(a4)
	.loc 1 542 10
	li	a1,0
	lw	a0,-40(s0)
	call	poly_at
	mv	a4,a0
	.loc 1 542 30 discriminator 1
	li	a5,1
	sb	a5,0(a4)
.L87:
	.loc 1 546 13
	lw	a5,-72(s0)
	lbu	a4,8(a5)
	.loc 1 546 8
	li	a5,126
	bleu	a4,a5,.L88
	.loc 1 547 26
	lw	a5,-72(s0)
	lbu	a5,8(a5)
	.loc 1 547 20
	addi	a5,a5,-126
	sb	a5,-18(s0)
.L88:
	.loc 1 550 12
	sb	zero,-17(s0)
	.loc 1 550 5
	j	.L89
.L96:
	.loc 1 552 12
	lw	a5,-76(s0)
	beq	a5,zero,.L90
	.loc 1 553 29
	lw	a5,-80(s0)
	andi	a5,a5,0xff
	lbu	a4,-17(s0)
	add	a5,a5,a4
	andi	a5,a5,0xff
	.loc 1 553 15
	lbu	a4,-18(s0)
	add	a5,a5,a4
	sb	a5,-19(s0)
	j	.L91
.L90:
	.loc 1 555 15
	lbu	a5,-17(s0)
	mv	a4,a5
	lbu	a5,-18(s0)
	add	a5,a4,a5
	sb	a5,-19(s0)
.L91:
	.loc 1 558 18
	lbu	a5,-19(s0)
	mv	a1,a5
	lw	a0,-72(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 558 15 discriminator 1
	lbu	a5,0(a5)
	sb	a5,-20(s0)
	.loc 1 559 16
	li	a5,1
	sb	a5,-21(s0)
	.loc 1 559 9
	j	.L92
.L93:
	.loc 1 560 28
	lw	a5,-36(s0)
	lbu	a5,8(a5)
	.loc 1 560 37
	lbu	a4,-21(s0)
	sub	a5,a5,a4
	andi	a5,a5,0xff
	.loc 1 560 19
	addi	a5,a5,-1
	sb	a5,-53(s0)
	.loc 1 561 30
	lbu	a5,-53(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 561 29 discriminator 1
	lbu	a5,0(a5)
	.loc 1 561 22 discriminator 1
	mv	s1,a5
	.loc 1 561 56 discriminator 1
	lbu	a5,-19(s0)
	mv	a4,a5
	lbu	a5,-21(s0)
	sub	a5,a4,a5
	andi	a5,a5,0xff
	mv	a1,a5
	lw	a0,-72(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 561 55 discriminator 2
	lbu	a5,0(a5)
	.loc 1 561 22 discriminator 2
	mv	a1,a5
	mv	a0,s1
	call	gf_mul
	mv	a5,a0
	mv	a4,a5
	.loc 1 561 19 discriminator 3
	lbu	a5,-20(s0)
	xor	a5,a4,a5
	sb	a5,-20(s0)
	.loc 1 559 43 discriminator 3
	lbu	a5,-21(s0)
	addi	a5,a5,1
	sb	a5,-21(s0)
.L92:
	.loc 1 559 32 discriminator 1
	lw	a5,-36(s0)
	lbu	a5,8(a5)
	.loc 1 559 23 discriminator 1
	lbu	a4,-21(s0)
	bltu	a4,a5,.L93
	.loc 1 564 9
	li	a1,0
	lw	a0,-40(s0)
	call	poly_append
	.loc 1 566 12
	lbu	a5,-20(s0)
	beq	a5,zero,.L94
	.loc 1 567 24
	lw	a5,-40(s0)
	lbu	a4,8(a5)
	.loc 1 567 42
	lw	a5,-36(s0)
	lbu	a5,8(a5)
	.loc 1 567 16
	bleu	a4,a5,.L95
	.loc 1 568 17
	lbu	a5,-20(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a2,a5
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	poly_scale
	.loc 1 569 46
	lbu	a5,-20(s0)
	mv	a0,a5
	call	gf_inverse
	mv	a5,a0
	.loc 1 569 17 discriminator 1
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	poly_scale
	.loc 1 570 17
	lw	a1,-44(s0)
	lw	a0,-36(s0)
	call	poly_copy
.L95:
	.loc 1 572 13
	lbu	a5,-20(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a2,a5
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	poly_scale
	.loc 1 573 13
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	lw	a0,-36(s0)
	call	poly_add
	.loc 1 574 13
	lw	a1,-48(s0)
	lw	a0,-36(s0)
	call	poly_copy
.L94:
	.loc 1 550 41 discriminator 2
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L89:
	.loc 1 550 19 discriminator 1
	lbu	a4,-17(s0)
	.loc 1 550 25 discriminator 1
	li	a3,126
	lw	a5,-80(s0)
	sub	a5,a3,a5
	.loc 1 550 19 discriminator 1
	bltu	a4,a5,.L96
	.loc 1 578 10
	j	.L97
.L99:
	.loc 1 578 66 discriminator 4
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L97:
	.loc 1 578 18 discriminator 1
	lw	a5,-36(s0)
	lbu	a5,8(a5)
	.loc 1 578 27 discriminator 1
	beq	a5,zero,.L98
	.loc 1 578 31 discriminator 2
	lw	a5,-28(s0)
	andi	a5,a5,0xff
	mv	a1,a5
	lw	a0,-36(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 578 30 discriminator 3
	lbu	a5,0(a5)
	.loc 1 578 27 discriminator 3
	beq	a5,zero,.L99
.L98:
	.loc 1 580 19
	lw	a5,-36(s0)
	lbu	a5,8(a5)
	mv	a4,a5
	.loc 1 580 28
	lw	a5,-28(s0)
	sub	a5,a4,a5
	.loc 1 580 10
	addi	a5,a5,-1
	sw	a5,-52(s0)
	.loc 1 581 16
	lw	a4,-52(s0)
	lw	a5,-80(s0)
	sub	a5,a4,a5
	.loc 1 581 31
	slli	a4,a5,1
	.loc 1 581 35
	lw	a5,-80(s0)
	add	a4,a4,a5
	.loc 1 581 8
	li	a5,126
	bleu	a4,a5,.L100
	.loc 1 582 16
	li	a5,0
	j	.L101
.L100:
	.loc 1 585 12
	lw	a0,-32(s0)
	call	poly_ptr
	mv	s1,a0
	.loc 1 585 33 discriminator 1
	lw	a0,-36(s0)
	call	poly_ptr
	mv	a4,a0
	.loc 1 585 51 discriminator 2
	lw	a5,-28(s0)
	add	a4,a4,a5
	.loc 1 585 68 discriminator 2
	lw	a5,-36(s0)
	lbu	a5,8(a5)
	mv	a3,a5
	.loc 1 585 86 discriminator 2
	lw	a5,-28(s0)
	sub	a5,a3,a5
	.loc 1 585 5 discriminator 2
	mv	a2,a5
	mv	a1,a4
	mv	a0,s1
	call	memcpy
	.loc 1 586 33
	lw	a5,-36(s0)
	lbu	a4,8(a5)
	.loc 1 586 42
	lw	a5,-28(s0)
	andi	a5,a5,0xff
	sub	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 586 23
	lw	a5,-32(s0)
	sb	a4,8(a5)
	.loc 1 587 12
	li	a5,1
.L101:
	.loc 1 588 1
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
.LFE30:
	.size	find_error_locator, .-find_error_locator
	.section	.text.find_errors,"ax",@progbits
	.align	1
	.globl	find_errors
	.type	find_errors, @function
find_errors:
.LFB31:
	.loc 1 591 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	.loc 1 594 15
	lw	a5,-36(s0)
	addi	a5,a5,156
	sw	a5,-24(s0)
	.loc 1 595 29
	lw	a5,-40(s0)
	lbu	a5,8(a5)
	.loc 1 595 13
	addi	a5,a5,-1
	sb	a5,-25(s0)
	.loc 1 597 17
	lw	a5,-24(s0)
	sb	zero,8(a5)
	.loc 1 599 12
	sb	zero,-17(s0)
	.loc 1 599 5
	j	.L103
.L105:
	.loc 1 601 34
	lbu	a5,-17(s0)
	andi	a5,a5,0xff
	mv	s2,a5
	li	s3,0
	mv	a1,s2
	mv	a2,s3
	li	a0,2
	call	gf_pow
	mv	a5,a0
	.loc 1 601 13 discriminator 1
	mv	a1,a5
	lw	a0,-40(s0)
	call	poly_eval
	mv	a5,a0
	.loc 1 601 12 discriminator 2
	bne	a5,zero,.L104
	.loc 1 603 46
	lw	a5,-44(s0)
	andi	a5,a5,0xff
	lbu	a4,-17(s0)
	sub	a5,a5,a4
	andi	a5,a5,0xff
	.loc 1 603 13
	addi	a5,a5,-1
	andi	a5,a5,0xff
	mv	a1,a5
	lw	a0,-24(s0)
	call	poly_append
.L104:
	.loc 1 599 35 discriminator 2
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L103:
	.loc 1 599 19 discriminator 1
	lbu	a5,-17(s0)
	lw	a4,-44(s0)
	bgtu	a4,a5,.L105
	.loc 1 610 12
	lw	a5,-24(s0)
	lbu	a5,8(a5)
	.loc 1 610 8
	lbu	a4,-25(s0)
	beq	a4,a5,.L106
	.loc 1 612 16
	li	a5,0
	j	.L107
.L106:
	.loc 1 615 12
	li	a5,1
.L107:
	.loc 1 616 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s2,36(sp)
	.cfi_restore 18
	lw	s3,32(sp)
	.cfi_restore 19
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE31:
	.size	find_errors, .-find_errors
	.section	.text.calc_forney_syndromes,"ax",@progbits
	.align	1
	.globl	calc_forney_syndromes
	.type	calc_forney_syndromes, @function
calc_forney_syndromes:
.LFB32:
	.loc 1 619 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	.loc 1 624 15
	lw	a5,-52(s0)
	addi	a5,a5,36
	sw	a5,-40(s0)
	.loc 1 625 15
	lw	a5,-52(s0)
	addi	a5,a5,108
	sw	a5,-44(s0)
	.loc 1 627 32
	lw	a5,-40(s0)
	sb	zero,8(a5)
	.loc 1 629 12
	sb	zero,-33(s0)
	.loc 1 629 5
	j	.L109
.L110:
	.loc 1 631 57
	lw	a5,-64(s0)
	andi	s1,a5,0xff
	.loc 1 631 60
	lbu	a5,-33(s0)
	mv	a1,a5
	lw	a0,-60(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 631 59 discriminator 1
	lbu	a5,0(a5)
	.loc 1 631 57 discriminator 1
	sub	a5,s1,a5
	andi	a5,a5,0xff
	.loc 1 631 9 discriminator 1
	addi	a5,a5,-1
	andi	a5,a5,0xff
	mv	a1,a5
	lw	a0,-40(s0)
	call	poly_append
	.loc 1 629 44 discriminator 3
	lbu	a5,-33(s0)
	addi	a5,a5,1
	sb	a5,-33(s0)
.L109:
	.loc 1 629 33 discriminator 1
	lw	a5,-60(s0)
	lbu	a5,8(a5)
	.loc 1 629 19 discriminator 1
	lbu	a4,-33(s0)
	bltu	a4,a5,.L110
	.loc 1 634 5
	lw	a0,-44(s0)
	call	poly_reset
	.loc 1 635 27
	lw	a0,-56(s0)
	call	poly_ptr
	mv	a5,a0
	.loc 1 635 5 discriminator 1
	addi	a4,a5,1
	.loc 1 635 49 discriminator 1
	lw	a5,-56(s0)
	lbu	a5,8(a5)
	.loc 1 635 5 discriminator 1
	addi	a5,a5,-1
	andi	a5,a5,0xff
	li	a3,0
	mv	a2,a5
	mv	a1,a4
	lw	a0,-44(s0)
	call	poly_set
	.loc 1 637 12
	sb	zero,-33(s0)
	.loc 1 637 5
	j	.L111
.L114:
	.loc 1 639 24
	lbu	a5,-33(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 639 23 discriminator 1
	lbu	a5,0(a5)
	.loc 1 639 13 discriminator 1
	mv	s2,a5
	li	s3,0
	mv	a1,s2
	mv	a2,s3
	li	a0,2
	call	gf_pow
	mv	a5,a0
	sb	a5,-45(s0)
	.loc 1 640 16
	sb	zero,-34(s0)
	.loc 1 640 9
	j	.L112
.L113:
	.loc 1 642 48
	lbu	a5,-34(s0)
	mv	a1,a5
	lw	a0,-44(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 642 47 discriminator 1
	lbu	a5,0(a5)
	.loc 1 642 40 discriminator 1
	mv	a4,a5
	lbu	a5,-45(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a1,a5
	mv	a0,a4
	call	gf_mul
	mv	a5,a0
	mv	s4,a5
	.loc 1 642 79 discriminator 2
	lbu	a5,-34(s0)
	addi	a5,a5,1
	andi	a5,a5,0xff
	mv	a1,a5
	lw	a0,-44(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 642 78 discriminator 3
	lbu	s1,0(a5)
	.loc 1 642 14 discriminator 3
	lbu	a5,-34(s0)
	mv	a1,a5
	lw	a0,-44(s0)
	call	poly_at
	mv	a4,a0
	.loc 1 642 38 discriminator 4
	xor	a5,s4,s1
	andi	a5,a5,0xff
	sb	a5,0(a4)
	.loc 1 640 51 discriminator 3
	lbu	a5,-34(s0)
	addi	a5,a5,1
	sb	a5,-34(s0)
.L112:
	.loc 1 640 23 discriminator 1
	lbu	a4,-34(s0)
	.loc 1 640 36 discriminator 1
	lw	a5,-44(s0)
	lbu	a5,8(a5)
	.loc 1 640 45 discriminator 1
	addi	a5,a5,-1
	.loc 1 640 23 discriminator 1
	blt	a4,a5,.L113
	.loc 1 637 44 discriminator 2
	lbu	a5,-33(s0)
	addi	a5,a5,1
	sb	a5,-33(s0)
.L111:
	.loc 1 637 33 discriminator 1
	lw	a5,-60(s0)
	lbu	a5,8(a5)
	.loc 1 637 19 discriminator 1
	lbu	a4,-33(s0)
	bltu	a4,a5,.L114
	.loc 1 645 1
	nop
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
	lw	s4,40(sp)
	.cfi_restore 20
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	calc_forney_syndromes, .-calc_forney_syndromes
	.section	.rodata
	.align	2
.LC0:
	.string	"utils_fec.c"
	.align	2
.LC1:
	.string	"\033[32mINFO  \033[0m"
	.align	2
.LC2:
	.string	"[%10u][%s: %s:%4d] reedsolomon_init.\r\n"
	.section	.text.reedsolomon_init,"ax",@progbits
	.align	1
	.globl	reedsolomon_init
	.type	reedsolomon_init, @function
reedsolomon_init:
.LFB33:
	.loc 1 648 1
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
	.loc 1 649 20
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 650 14
	sh	zero,-18(s0)
	.loc 1 652 13
	li	a5,-2
	sb	a5,-25(s0)
	.loc 1 653 13
	li	a5,-4
	sb	a5,-26(s0)
.LBB9:
.LBB10:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE10:
.LBE9:
	.loc 1 657 12 discriminator 1
	beq	a5,zero,.L117
	.loc 1 657 97 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L118
.L117:
	.loc 1 657 126 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L118:
	.loc 1 657 12 discriminator 7
	li	a4,657
	lui	a5,%hi(.LC0)
	addi	a3,a5,%lo(.LC0)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	bl_printk
	.loc 1 659 5
	lw	a0,-24(s0)
	.loc 1 659 63
	lw	a5,-24(s0)
	addi	a4,a5,204
	.loc 1 659 5
	lbu	a3,-25(s0)
	lhu	a5,-18(s0)
	mv	a2,a5
	li	a1,0
	call	poly_init
	.loc 1 660 12
	lbu	a5,-25(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-18(s0)
	add	a5,a5,a4
	sh	a5,-18(s0)
	.loc 1 662 5
	lw	a5,-24(s0)
	addi	a0,a5,12
	.loc 1 662 64
	lw	a5,-24(s0)
	addi	a4,a5,204
	.loc 1 662 5
	lbu	a3,-25(s0)
	lhu	a5,-18(s0)
	mv	a2,a5
	li	a1,1
	call	poly_init
	.loc 1 663 12
	lbu	a5,-25(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-18(s0)
	add	a5,a5,a4
	sh	a5,-18(s0)
	.loc 1 665 12
	li	a5,2
	sb	a5,-19(s0)
	.loc 1 665 5
	j	.L119
.L120:
	.loc 1 667 33
	lbu	a4,-19(s0)
	.loc 1 667 9
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	lw	a4,-24(s0)
	add	a0,a4,a5
	.loc 1 667 60
	lw	a5,-24(s0)
	addi	a4,a5,204
	.loc 1 667 9
	lbu	a3,-26(s0)
	lhu	a2,-18(s0)
	lbu	a5,-19(s0)
	mv	a1,a5
	call	poly_init
	.loc 1 668 16
	lbu	a5,-26(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-18(s0)
	add	a5,a5,a4
	sh	a5,-18(s0)
	.loc 1 665 43 discriminator 3
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
.L119:
	.loc 1 665 30 discriminator 1
	lbu	a4,-19(s0)
	li	a5,4
	bleu	a4,a5,.L120
	.loc 1 671 5
	lw	a5,-24(s0)
	addi	a0,a5,60
	.loc 1 671 62
	lw	a5,-24(s0)
	addi	a4,a5,204
	.loc 1 671 5
	lbu	a3,-25(s0)
	lhu	a5,-18(s0)
	mv	a2,a5
	li	a1,5
	call	poly_init
	.loc 1 672 12
	lbu	a5,-25(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-18(s0)
	add	a5,a5,a4
	sh	a5,-18(s0)
	.loc 1 674 12
	li	a5,6
	sb	a5,-19(s0)
	.loc 1 674 5
	j	.L121
.L122:
	.loc 1 676 33
	lbu	a4,-19(s0)
	.loc 1 676 9
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	lw	a4,-24(s0)
	add	a0,a4,a5
	.loc 1 676 60
	lw	a5,-24(s0)
	addi	a4,a5,204
	.loc 1 676 9
	lbu	a3,-26(s0)
	lhu	a2,-18(s0)
	lbu	a5,-19(s0)
	mv	a1,a5
	call	poly_init
	.loc 1 677 16
	lbu	a5,-26(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-18(s0)
	add	a5,a5,a4
	sh	a5,-18(s0)
	.loc 1 674 45 discriminator 3
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
.L121:
	.loc 1 674 27 discriminator 1
	lbu	a4,-19(s0)
	li	a5,16
	bleu	a4,a5,.L122
	.loc 1 679 1
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
.LFE33:
	.size	reedsolomon_init, .-reedsolomon_init
	.section	.text.encode_block,"ax",@progbits
	.align	1
	.globl	encode_block
	.type	encode_block, @function
encode_block:
.LFB34:
	.loc 1 682 1
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
	.loc 1 685 13
	sb	zero,-25(s0)
	.loc 1 689 14
	lw	a5,-56(s0)
	sw	a5,-32(s0)
	.loc 1 690 14
	lw	a5,-60(s0)
	sw	a5,-36(s0)
	.loc 1 692 15
	lw	a5,-52(s0)
	sw	a5,-40(s0)
	.loc 1 693 15
	lw	a5,-52(s0)
	addi	a5,a5,12
	sw	a5,-44(s0)
	.loc 1 694 15
	lw	a5,-52(s0)
	addi	a5,a5,24
	sw	a5,-48(s0)
	.loc 1 698 5
	lw	a0,-40(s0)
	call	poly_reset
	.loc 1 699 5
	lw	a0,-44(s0)
	call	poly_reset
	.loc 1 701 16
	lw	a4,-52(s0)
	li	a5,4096
	add	a5,a4,a5
	lbu	a5,147(a5)
	.loc 1 701 8
	beq	a5,zero,.L124
	.loc 1 702 30
	lw	a4,-52(s0)
	li	a5,4096
	addi	a5,a5,20
	add	a5,a4,a5
	.loc 1 702 9
	li	a3,0
	li	a2,127
	mv	a1,a5
	lw	a0,-48(s0)
	call	poly_set
	j	.L125
.L124:
	.loc 1 704 9
	lw	a0,-52(s0)
	call	generator_poly
	.loc 1 705 23
	lw	a4,-52(s0)
	li	a5,4096
	addi	a5,a5,20
	add	s1,a4,a5
	.loc 1 705 44
	lw	a0,-48(s0)
	call	poly_ptr
	mv	a4,a0
	.loc 1 705 62 discriminator 1
	lw	a5,-48(s0)
	lbu	a5,8(a5)
	.loc 1 705 9 discriminator 1
	mv	a2,a5
	mv	a1,a4
	mv	a0,s1
	call	memcpy
	.loc 1 706 42
	lw	a4,-52(s0)
	li	a5,4096
	add	a5,a4,a5
	li	a4,1
	sb	a4,147(a5)
.L125:
	.loc 1 710 5
	li	a3,0
	li	a2,128
	lw	a1,-32(s0)
	lw	a0,-40(s0)
	call	poly_set
	.loc 1 711 5
	li	a3,0
	li	a2,128
	lw	a1,-32(s0)
	lw	a0,-44(s0)
	call	poly_set
	.loc 1 712 29
	lw	a5,-40(s0)
	lbu	a5,8(a5)
	.loc 1 712 38
	addi	a5,a5,126
	andi	a4,a5,0xff
	.loc 1 712 21
	lw	a5,-44(s0)
	sb	a4,8(a5)
	.loc 1 716 12
	sb	zero,-17(s0)
	.loc 1 716 5
	j	.L126
.L130:
	.loc 1 717 17
	lbu	a5,-17(s0)
	mv	a1,a5
	lw	a0,-44(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 717 14 discriminator 1
	lbu	a5,0(a5)
	sb	a5,-25(s0)
	.loc 1 718 12
	lbu	a5,-25(s0)
	beq	a5,zero,.L127
	.loc 1 719 20
	li	a5,1
	sw	a5,-24(s0)
	.loc 1 719 13
	j	.L128
.L129:
	.loc 1 720 51
	lw	a5,-24(s0)
	andi	a5,a5,0xff
	mv	a1,a5
	lw	a0,-48(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 720 50 discriminator 1
	lbu	a5,0(a5)
	.loc 1 720 43 discriminator 1
	mv	a4,a5
	lbu	a5,-25(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a1,a5
	mv	a0,a4
	call	gf_mul
	mv	a5,a0
	mv	s1,a5
	.loc 1 720 18 discriminator 2
	lw	a5,-24(s0)
	andi	a5,a5,0xff
	lbu	a4,-17(s0)
	add	a5,a5,a4
	andi	a5,a5,0xff
	mv	a1,a5
	lw	a0,-44(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 720 17 discriminator 3
	lbu	a4,0(a5)
	.loc 1 720 40 discriminator 3
	xor	a4,s1,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 719 43 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L128:
	.loc 1 719 32 discriminator 1
	lw	a5,-48(s0)
	lbu	a5,8(a5)
	mv	a4,a5
	.loc 1 719 27 discriminator 1
	lw	a5,-24(s0)
	bltu	a5,a4,.L129
.L127:
	.loc 1 716 27 discriminator 2
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L126:
	.loc 1 716 19 discriminator 1
	lb	a5,-17(s0)
	bge	a5,zero,.L130
	.loc 1 726 21
	lw	a0,-44(s0)
	call	poly_ptr
	mv	a5,a0
	.loc 1 726 38 discriminator 1
	addi	a5,a5,128
	.loc 1 726 5 discriminator 1
	li	a2,126
	mv	a1,a5
	lw	a0,-36(s0)
	call	memcpy
	.loc 1 728 1
	nop
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
.LFE34:
	.size	encode_block, .-encode_block
	.section	.text.reedsolomon_encode,"ax",@progbits
	.align	1
	.globl	reedsolomon_encode
	.type	reedsolomon_encode, @function
reedsolomon_encode:
.LFB35:
	.loc 1 731 1
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
	.loc 1 732 20
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 733 14
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	.loc 1 736 5
	li	a2,128
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	call	memcpy
	.loc 1 739 33
	lw	a5,-24(s0)
	addi	a5,a5,128
	.loc 1 739 5
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-20(s0)
	call	encode_block
	.loc 1 740 1
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
.LFE35:
	.size	reedsolomon_encode, .-reedsolomon_encode
	.section	.text.decode_block,"ax",@progbits
	.align	1
	.globl	decode_block
	.type	decode_block, @function
decode_block:
.LFB36:
	.loc 1 743 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s1,100(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	sw	a2,-92(s0)
	sw	a3,-96(s0)
	sw	a4,-100(s0)
	sw	a5,-104(s0)
	.loc 1 748 14
	lw	a5,-88(s0)
	sw	a5,-28(s0)
	.loc 1 749 14
	lw	a5,-92(s0)
	sw	a5,-32(s0)
	.loc 1 750 14
	lw	a5,-96(s0)
	sw	a5,-36(s0)
	.loc 1 752 13
	li	a5,-2
	sb	a5,-37(s0)
	.loc 1 753 13
	li	a5,-128
	sb	a5,-38(s0)
	.loc 1 757 15
	lw	a5,-84(s0)
	sw	a5,-44(s0)
	.loc 1 758 15
	lw	a5,-84(s0)
	addi	a5,a5,12
	sw	a5,-48(s0)
	.loc 1 759 15
	lw	a5,-84(s0)
	addi	a5,a5,144
	sw	a5,-52(s0)
	.loc 1 760 15
	lw	a5,-84(s0)
	addi	a5,a5,96
	sw	a5,-56(s0)
	.loc 1 761 15
	lw	a5,-84(s0)
	addi	a5,a5,132
	sw	a5,-60(s0)
	.loc 1 762 15
	lw	a5,-84(s0)
	addi	a5,a5,36
	sw	a5,-64(s0)
	.loc 1 763 15
	lw	a5,-84(s0)
	addi	a5,a5,156
	sw	a5,-68(s0)
	.loc 1 764 15
	lw	a5,-84(s0)
	addi	a5,a5,108
	sw	a5,-72(s0)
	.loc 1 769 5
	li	a3,0
	li	a2,128
	lw	a1,-28(s0)
	lw	a0,-44(s0)
	call	poly_set
	.loc 1 770 5
	li	a3,128
	li	a2,126
	lw	a1,-32(s0)
	lw	a0,-44(s0)
	call	poly_set
	.loc 1 771 5
	lw	a1,-44(s0)
	lw	a0,-48(s0)
	call	poly_copy
	.loc 1 774 8
	lw	a5,-100(s0)
	bne	a5,zero,.L133
	.loc 1 775 22
	lw	a5,-52(s0)
	sb	zero,8(a5)
	j	.L134
.L133:
	.loc 1 777 9
	lw	a5,-104(s0)
	andi	a5,a5,0xff
	li	a3,0
	mv	a2,a5
	lw	a1,-100(s0)
	lw	a0,-52(s0)
	call	poly_set
	.loc 1 778 16
	sb	zero,-17(s0)
	.loc 1 778 9
	j	.L135
.L136:
	.loc 1 779 31
	lbu	a5,-17(s0)
	mv	a1,a5
	lw	a0,-52(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 779 14 discriminator 1
	lbu	a5,0(a5)
	mv	a1,a5
	lw	a0,-44(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 779 49 discriminator 2
	sb	zero,0(a5)
	.loc 1 778 40 discriminator 3
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L135:
	.loc 1 778 29 discriminator 1
	lw	a5,-52(s0)
	lbu	a5,8(a5)
	.loc 1 778 23 discriminator 1
	lbu	a4,-17(s0)
	bltu	a4,a5,.L136
.L134:
	.loc 1 784 13
	lw	a5,-52(s0)
	lbu	a4,8(a5)
	.loc 1 784 8
	li	a5,126
	bleu	a4,a5,.L137
	.loc 1 784 36 discriminator 1
	li	a5,1
	.loc 1 784 36 is_stmt 0
	j	.L138
.L137:
	.loc 1 788 5 is_stmt 1
	lw	a1,-44(s0)
	lw	a0,-84(s0)
	call	calc_syndromes
	.loc 1 791 16
	sb	zero,-20(s0)
	.loc 1 792 12
	sb	zero,-17(s0)
	.loc 1 792 5
	j	.L139
.L142:
	.loc 1 793 14
	lbu	a5,-17(s0)
	mv	a1,a5
	lw	a0,-56(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 793 13 discriminator 1
	lbu	a5,0(a5)
	.loc 1 793 12 discriminator 1
	beq	a5,zero,.L140
	.loc 1 794 24
	li	a5,1
	sb	a5,-20(s0)
	.loc 1 795 13
	j	.L141
.L140:
	.loc 1 792 36 discriminator 2
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L139:
	.loc 1 792 25 discriminator 1
	lw	a5,-56(s0)
	lbu	a5,8(a5)
	.loc 1 792 19 discriminator 1
	lbu	a4,-17(s0)
	bltu	a4,a5,.L142
.L141:
	.loc 1 800 8
	lbu	a5,-20(s0)
	beq	a5,zero,.L151
	.loc 1 804 5
	lbu	a5,-37(s0)
	mv	a3,a5
	lw	a2,-52(s0)
	lw	a1,-56(s0)
	lw	a0,-84(s0)
	call	calc_forney_syndromes
	.loc 1 805 50
	lw	a5,-52(s0)
	lbu	a5,8(a5)
	.loc 1 805 5
	mv	a3,a5
	li	a2,0
	lw	a1,-72(s0)
	lw	a0,-84(s0)
	call	find_error_locator
	.loc 1 811 25
	lw	a5,-60(s0)
	lbu	a4,8(a5)
	.loc 1 811 19
	lw	a5,-64(s0)
	sb	a4,8(a5)
	.loc 1 813 20
	lw	a5,-60(s0)
	lbu	a5,8(a5)
	.loc 1 813 28
	addi	a5,a5,-1
	andi	a5,a5,0xff
	.loc 1 813 14
	sb	a5,-19(s0)
	.loc 1 813 34
	sb	zero,-18(s0)
	.loc 1 813 5
	j	.L145
.L146:
	.loc 1 814 31
	lbu	a5,-19(s0)
	mv	a1,a5
	lw	a0,-60(s0)
	call	poly_at
	mv	s1,a0
	.loc 1 814 10 discriminator 1
	lbu	a5,-18(s0)
	mv	a1,a5
	lw	a0,-64(s0)
	call	poly_at
	mv	a4,a0
	.loc 1 814 30 discriminator 2
	lbu	a5,0(s1)
	.loc 1 814 28 discriminator 2
	sb	a5,0(a4)
	.loc 1 813 52 discriminator 3
	lb	a5,-19(s0)
	andi	a5,a5,0xff
	addi	a5,a5,-1
	andi	a5,a5,0xff
	sb	a5,-19(s0)
	.loc 1 813 57 discriminator 3
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L145:
	.loc 1 813 43 discriminator 1
	lb	a5,-19(s0)
	bge	a5,zero,.L146
	.loc 1 818 10
	lbu	a5,-37(s0)
	mv	a2,a5
	lw	a1,-64(s0)
	lw	a0,-84(s0)
	call	find_errors
	mv	a5,a0
	sb	a5,-73(s0)
	.loc 1 819 8
	lbu	a5,-73(s0)
	bne	a5,zero,.L147
	.loc 1 820 16
	li	a5,1
	j	.L138
.L147:
	.loc 1 824 12
	lw	a5,-68(s0)
	lbu	a5,8(a5)
	.loc 1 824 8
	bne	a5,zero,.L148
	.loc 1 825 16
	li	a5,1
	j	.L138
.L148:
.LBB11:
	.loc 1 829 18
	sb	zero,-21(s0)
	.loc 1 829 5
	j	.L149
.L150:
	.loc 1 830 28
	lbu	a5,-21(s0)
	mv	a1,a5
	lw	a0,-68(s0)
	call	poly_at
	mv	a5,a0
	.loc 1 830 9 discriminator 1
	lbu	a5,0(a5)
	mv	a1,a5
	lw	a0,-52(s0)
	call	poly_append
	.loc 1 829 43 discriminator 3
	lbu	a5,-21(s0)
	addi	a5,a5,1
	sb	a5,-21(s0)
.L149:
	.loc 1 829 32 discriminator 1
	lw	a5,-68(s0)
	lbu	a5,8(a5)
	.loc 1 829 27 discriminator 1
	lbu	a4,-21(s0)
	bltu	a4,a5,.L150
.LBE11:
	.loc 1 834 5
	lw	a3,-44(s0)
	lw	a2,-52(s0)
	lw	a1,-56(s0)
	lw	a0,-84(s0)
	call	correct_errata
	j	.L144
.L151:
	.loc 1 801 9
	nop
.L144:
	.loc 1 838 21
	lw	a5,-48(s0)
	lbu	a4,-38(s0)
	sb	a4,8(a5)
	.loc 1 839 21
	lw	a0,-48(s0)
	call	poly_ptr
	mv	a4,a0
	.loc 1 839 47 discriminator 1
	lw	a5,-48(s0)
	lbu	a5,8(a5)
	.loc 1 839 5 discriminator 1
	mv	a2,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	memcpy
	.loc 1 840 12
	li	a5,0
.L138:
	.loc 1 841 1
	mv	a0,a5
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	lw	s1,100(sp)
	.cfi_restore 9
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE36:
	.size	decode_block, .-decode_block
	.section	.text.reedsolomon_decode,"ax",@progbits
	.align	1
	.globl	reedsolomon_decode
	.type	reedsolomon_decode, @function
reedsolomon_decode:
.LFB37:
	.loc 1 849 1
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
	.loc 1 850 20
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 851 14
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	.loc 1 852 14
	lw	a5,-24(s0)
	addi	a5,a5,128
	sw	a5,-28(s0)
	.loc 1 854 12
	li	a5,0
	li	a4,0
	lw	a3,-44(s0)
	lw	a2,-28(s0)
	lw	a1,-40(s0)
	lw	a0,-20(s0)
	call	decode_block
	mv	a5,a0
	.loc 1 855 1
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
.LFE37:
	.size	reedsolomon_decode, .-reedsolomon_decode
	.section	.rodata
	.align	2
.LC3:
	.string	"[%10u][%s: %s:%4d] sizeof(fec_t) = %d   sizeof(fec_context_t) = %d\r\n"
	.section	.text.reedsolomon_getmemsize,"ax",@progbits
	.align	1
	.globl	reedsolomon_getmemsize
	.type	reedsolomon_getmemsize, @function
reedsolomon_getmemsize:
.LFB38:
	.loc 1 860 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
.LBB12:
.LBB13:
	.loc 2 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE13:
.LBE12:
	.loc 1 868 12 discriminator 1
	beq	a5,zero,.L156
	.loc 1 868 127 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L157
.L156:
	.loc 1 868 156 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L157:
	.loc 1 868 12 discriminator 7
	li	a5,4096
	addi	a6,a5,148
	li	a5,4096
	addi	a5,a5,384
	li	a4,868
	lui	a3,%hi(.LC0)
	addi	a3,a3,%lo(.LC0)
	lui	a2,%hi(.LC1)
	addi	a2,a2,%lo(.LC1)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	bl_printk
	.loc 1 869 12
	li	a5,4096
	addi	a5,a5,148
	.loc 1 870 1
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
.LFE38:
	.size	reedsolomon_getmemsize, .-reedsolomon_getmemsize
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x113d
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1e
	.4byte	.LASF145
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1f
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.4byte	.LASF5
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
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
	.uleb128 0x8
	.4byte	.LASF6
	.byte	0x4
	.byte	0x22
	.byte	0x15
	.4byte	0x5f
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.4byte	.LASF7
	.uleb128 0x8
	.4byte	.LASF8
	.byte	0x4
	.byte	0x25
	.byte	0x13
	.4byte	0x72
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x8
	.4byte	.LASF10
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x85
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x9d
	.uleb128 0x11
	.4byte	0x8c
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0xb0
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0xc3
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.4byte	0x45
	.uleb128 0x20
	.byte	0x4
	.uleb128 0x18
	.4byte	0xdd
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0x79
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x2
	.byte	0x41
	.byte	0x12
	.4byte	0xb7
	.uleb128 0x21
	.4byte	.LASF49
	.byte	0x2
	.byte	0x5c
	.byte	0x13
	.4byte	0xe4
	.uleb128 0xe
	.4byte	0x8c
	.uleb128 0xe
	.4byte	0x119
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0x11
	.4byte	0x112
	.uleb128 0x22
	.byte	0xc
	.byte	0x1
	.byte	0x2e
	.byte	0x9
	.4byte	0x165
	.uleb128 0x23
	.string	"_id"
	.byte	0x1
	.byte	0x2f
	.byte	0xd
	.4byte	0x8c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x30
	.byte	0xd
	.4byte	0x8c
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x31
	.byte	0xe
	.4byte	0xa4
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x32
	.byte	0xe
	.4byte	0x108
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x33
	.byte	0xd
	.4byte	0x8c
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x1
	.byte	0x34
	.byte	0x3
	.4byte	0x11e
	.uleb128 0x24
	.2byte	0x1094
	.byte	0x1
	.byte	0x36
	.byte	0x9
	.4byte	0x1ac
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x37
	.byte	0xe
	.4byte	0x1ac
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x38
	.byte	0xd
	.4byte	0x1bc
	.byte	0xcc
	.uleb128 0x19
	.4byte	.LASF30
	.byte	0x39
	.4byte	0x1cd
	.2byte	0x1014
	.uleb128 0x19
	.4byte	.LASF31
	.byte	0x3a
	.4byte	0x8c
	.2byte	0x1093
	.byte	0
	.uleb128 0xf
	.4byte	0x165
	.4byte	0x1bc
	.uleb128 0x13
	.4byte	0x3e
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.4byte	0x8c
	.4byte	0x1cd
	.uleb128 0x1a
	.4byte	0x3e
	.2byte	0xf47
	.byte	0
	.uleb128 0xf
	.4byte	0x8c
	.4byte	0x1dd
	.uleb128 0x13
	.4byte	0x3e
	.byte	0x7e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x1
	.byte	0x3b
	.byte	0x3
	.4byte	0x171
	.uleb128 0x25
	.4byte	.LASF146
	.byte	0x7
	.byte	0x1
	.4byte	0x9d
	.byte	0x1
	.byte	0x3d
	.byte	0x6
	.4byte	0x25c
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.4byte	0x98
	.4byte	0x26d
	.uleb128 0x1a
	.4byte	0x3e
	.2byte	0x1ff
	.byte	0
	.uleb128 0x11
	.4byte	0x25c
	.uleb128 0x1b
	.4byte	.LASF50
	.byte	0x57
	.4byte	0x26d
	.uleb128 0x5
	.byte	0x3
	.4byte	code_exp
	.uleb128 0xf
	.4byte	0x98
	.4byte	0x292
	.uleb128 0x13
	.4byte	0x3e
	.byte	0xff
	.byte	0
	.uleb128 0x11
	.4byte	0x282
	.uleb128 0x1b
	.4byte	.LASF51
	.byte	0x7a
	.4byte	0x292
	.uleb128 0x5
	.byte	0x3
	.4byte	code_log
	.uleb128 0x26
	.4byte	.LASF147
	.byte	0x7
	.byte	0x9e
	.byte	0x6
	.4byte	0x2ba
	.uleb128 0xa
	.4byte	0x10d
	.uleb128 0x27
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF52
	.2byte	0x54c
	.4byte	0xf0
	.uleb128 0x1c
	.4byte	.LASF53
	.2byte	0x55d
	.4byte	0xf0
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0x20
	.4byte	0xdd
	.4byte	0x2ee
	.uleb128 0xa
	.4byte	0xdd
	.uleb128 0xa
	.4byte	0x2ee
	.uleb128 0xa
	.4byte	0x32
	.byte	0
	.uleb128 0xe
	.4byte	0x2f8
	.uleb128 0x18
	.4byte	0x2ee
	.uleb128 0x28
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x1f
	.4byte	0xdd
	.4byte	0x317
	.uleb128 0xa
	.4byte	0xdf
	.uleb128 0xa
	.4byte	0x2f3
	.uleb128 0xa
	.4byte	0x32
	.byte	0
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x21
	.4byte	0xdd
	.4byte	0x335
	.uleb128 0xa
	.4byte	0xdd
	.uleb128 0xa
	.4byte	0x2b
	.uleb128 0xa
	.4byte	0x32
	.byte	0
	.uleb128 0xd
	.4byte	.LASF57
	.2byte	0x35b
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x360
	.uleb128 0x1d
	.4byte	0x1133
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.2byte	0x364
	.byte	0x64
	.byte	0
	.uleb128 0xd
	.4byte	.LASF58
	.2byte	0x350
	.byte	0x6
	.4byte	0x112
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d3
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x350
	.byte	0x1f
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"src"
	.2byte	0x350
	.byte	0x2e
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"dst"
	.2byte	0x350
	.byte	0x39
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"p"
	.2byte	0x352
	.byte	0x14
	.4byte	0x3d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF60
	.2byte	0x353
	.byte	0xe
	.4byte	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF61
	.2byte	0x354
	.byte	0xe
	.4byte	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xe
	.4byte	0x1dd
	.uleb128 0xd
	.4byte	.LASF62
	.2byte	0x2e6
	.byte	0x6
	.4byte	0x112
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x583
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x2e6
	.byte	0x22
	.4byte	0x3d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x5
	.string	"src"
	.2byte	0x2e6
	.byte	0x31
	.4byte	0xdd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x5
	.string	"ecc"
	.2byte	0x2e6
	.byte	0x42
	.4byte	0x2ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x5
	.string	"dst"
	.2byte	0x2e6
	.byte	0x4d
	.4byte	0xdd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3
	.4byte	.LASF63
	.2byte	0x2e6
	.byte	0x5b
	.4byte	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x3
	.4byte	.LASF64
	.2byte	0x2e6
	.byte	0x74
	.4byte	0xc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2
	.string	"i"
	.2byte	0x2e8
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.string	"j"
	.2byte	0x2e8
	.byte	0x10
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2
	.string	"s_i"
	.2byte	0x2e9
	.byte	0xc
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x1
	.4byte	.LASF60
	.2byte	0x2ec
	.byte	0xe
	.4byte	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF61
	.2byte	0x2ed
	.byte	0xe
	.4byte	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF65
	.2byte	0x2ee
	.byte	0xe
	.4byte	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF66
	.2byte	0x2f0
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1
	.4byte	.LASF67
	.2byte	0x2f1
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x2
	.string	"ok"
	.2byte	0x2f3
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0x1
	.4byte	.LASF68
	.2byte	0x2f5
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF69
	.2byte	0x2f6
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF70
	.2byte	0x2f7
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF71
	.2byte	0x2f8
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF72
	.2byte	0x2f9
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF73
	.2byte	0x2fa
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.string	"err"
	.2byte	0x2fb
	.byte	0xf
	.4byte	0x583
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.4byte	.LASF74
	.2byte	0x2fc
	.byte	0xf
	.4byte	0x583
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.4byte	.LASF75
	.2byte	0x2fe
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x344
	.byte	0x1
	.4byte	.L144
	.uleb128 0x12
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x2
	.string	"i"
	.2byte	0x33d
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x165
	.uleb128 0x7
	.4byte	.LASF76
	.2byte	0x2da
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e7
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x2da
	.byte	0x1f
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"src"
	.2byte	0x2da
	.byte	0x2e
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"dst"
	.2byte	0x2da
	.byte	0x39
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"p"
	.2byte	0x2dc
	.byte	0x14
	.4byte	0x3d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF65
	.2byte	0x2dd
	.byte	0xe
	.4byte	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.4byte	.LASF77
	.2byte	0x2a9
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69e
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x2a9
	.byte	0x22
	.4byte	0x3d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.string	"src"
	.2byte	0x2a9
	.byte	0x31
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.string	"dst"
	.2byte	0x2a9
	.byte	0x3c
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF78
	.2byte	0x2ad
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2
	.string	"i"
	.2byte	0x2ae
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.string	"j"
	.2byte	0x2af
	.byte	0xe
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF60
	.2byte	0x2b1
	.byte	0xe
	.4byte	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF65
	.2byte	0x2b2
	.byte	0xe
	.4byte	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF68
	.2byte	0x2b4
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF69
	.2byte	0x2b5
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"gen"
	.2byte	0x2b6
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x7
	.4byte	.LASF79
	.2byte	0x287
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x71a
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x287
	.byte	0x1d
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"p"
	.2byte	0x289
	.byte	0x14
	.4byte	0x3d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF80
	.2byte	0x28a
	.byte	0xe
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2
	.string	"i"
	.2byte	0x28b
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x1
	.4byte	.LASF81
	.2byte	0x28c
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1
	.4byte	.LASF82
	.2byte	0x28d
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x1d
	.4byte	0x1133
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.2byte	0x291
	.byte	0x46
	.byte	0
	.uleb128 0x7
	.4byte	.LASF83
	.2byte	0x26a
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7b1
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x26a
	.byte	0x2b
	.4byte	0x3d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF71
	.2byte	0x26a
	.byte	0x3e
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF84
	.2byte	0x26a
	.byte	0x4e
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF85
	.2byte	0x26a
	.byte	0x6a
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.string	"i"
	.2byte	0x26c
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.string	"x"
	.2byte	0x26d
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x2
	.string	"j"
	.2byte	0x26e
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1
	.4byte	.LASF86
	.2byte	0x270
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF87
	.2byte	0x271
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0xd
	.4byte	.LASF88
	.2byte	0x24e
	.byte	0x9
	.4byte	0x8c
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x824
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x24e
	.byte	0x24
	.4byte	0x3d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF89
	.2byte	0x24e
	.byte	0x37
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF85
	.2byte	0x24e
	.byte	0x50
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"i"
	.2byte	0x250
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.string	"err"
	.2byte	0x252
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF90
	.2byte	0x253
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0xd
	.4byte	.LASF91
	.2byte	0x206
	.byte	0x9
	.4byte	0x8c
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x93c
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x206
	.byte	0x2b
	.4byte	0x3d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.4byte	.LASF71
	.2byte	0x206
	.byte	0x3e
	.4byte	0x583
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.4byte	.LASF92
	.2byte	0x206
	.byte	0x4e
	.4byte	0x583
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3
	.4byte	.LASF64
	.2byte	0x206
	.byte	0x67
	.4byte	0xc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2
	.string	"i"
	.2byte	0x208
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1
	.4byte	.LASF93
	.2byte	0x209
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2
	.string	"K"
	.2byte	0x20a
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x1
	.4byte	.LASF94
	.2byte	0x20b
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF95
	.2byte	0x20c
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x2
	.string	"j"
	.2byte	0x20d
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1
	.4byte	.LASF96
	.2byte	0x20e
	.byte	0xe
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF90
	.2byte	0x20f
	.byte	0xe
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF89
	.2byte	0x211
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF97
	.2byte	0x212
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF98
	.2byte	0x213
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF99
	.2byte	0x214
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF100
	.2byte	0x215
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x7
	.4byte	.LASF101
	.2byte	0x1ae
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa7b
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x1ae
	.byte	0x24
	.4byte	0x3d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x3
	.4byte	.LASF71
	.2byte	0x1ae
	.byte	0x37
	.4byte	0x583
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3
	.4byte	.LASF102
	.2byte	0x1ae
	.byte	0x47
	.4byte	0x583
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x3
	.4byte	.LASF68
	.2byte	0x1ae
	.byte	0x5a
	.4byte	0x583
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2
	.string	"i"
	.2byte	0x1b0
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.string	"s_i"
	.2byte	0x1b1
	.byte	0xc
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.string	"l"
	.2byte	0x1b2
	.byte	0xd
	.4byte	0x66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1
	.4byte	.LASF103
	.2byte	0x1b3
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0x1
	.4byte	.LASF104
	.2byte	0x1b4
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x2
	.string	"y"
	.2byte	0x1b5
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -74
	.uleb128 0x2
	.string	"j"
	.2byte	0x1b6
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF105
	.2byte	0x1b8
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF106
	.2byte	0x1b9
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF107
	.2byte	0x1ba
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF108
	.2byte	0x1bb
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF109
	.2byte	0x1bc
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF110
	.2byte	0x1bd
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.string	"X"
	.2byte	0x1be
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.string	"E"
	.2byte	0x1bf
	.byte	0xf
	.4byte	0x583
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.4byte	.LASF111
	.2byte	0x1c0
	.byte	0xf
	.4byte	0x583
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x7
	.4byte	.LASF112
	.2byte	0x1a0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xafa
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x1a0
	.byte	0x2a
	.4byte	0x3d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF71
	.2byte	0x1a0
	.byte	0x3d
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF107
	.2byte	0x1a0
	.byte	0x4d
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.string	"dst"
	.2byte	0x1a0
	.byte	0x63
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF113
	.2byte	0x1a0
	.byte	0x70
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x1a2
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF115
	.2byte	0x1a5
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.4byte	.LASF116
	.2byte	0x185
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb92
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x185
	.byte	0x29
	.4byte	0x3d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.4byte	.LASF70
	.2byte	0x185
	.byte	0x3c
	.4byte	0x583
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.4byte	.LASF107
	.2byte	0x187
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x188
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF117
	.2byte	0x189
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF118
	.2byte	0x18a
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF99
	.2byte	0x18b
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x2
	.string	"i"
	.2byte	0x193
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF119
	.2byte	0x177
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbe2
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x177
	.byte	0x24
	.4byte	0x3d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.string	"msg"
	.2byte	0x177
	.byte	0x37
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"i"
	.2byte	0x179
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF71
	.2byte	0x17a
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x7
	.4byte	.LASF120
	.2byte	0x161
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc41
	.uleb128 0x3
	.4byte	.LASF59
	.2byte	0x161
	.byte	0x24
	.4byte	0x3d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"i"
	.2byte	0x163
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.string	"gen"
	.2byte	0x164
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF114
	.2byte	0x165
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF99
	.2byte	0x166
	.byte	0xf
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xd
	.4byte	.LASF121
	.2byte	0x155
	.byte	0x8
	.4byte	0x53
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc9a
	.uleb128 0x5
	.string	"p"
	.2byte	0x155
	.byte	0x1c
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"x"
	.2byte	0x155
	.byte	0x28
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x2
	.string	"y"
	.2byte	0x157
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x2
	.string	"i"
	.2byte	0x159
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF122
	.2byte	0x139
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd1b
	.uleb128 0x5
	.string	"p"
	.2byte	0x139
	.byte	0x19
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"q"
	.2byte	0x139
	.byte	0x26
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF123
	.2byte	0x139
	.byte	0x33
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF78
	.2byte	0x13b
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x2
	.string	"sep"
	.2byte	0x13c
	.byte	0x13
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.string	"i"
	.2byte	0x13d
	.byte	0xa
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x2
	.string	"j"
	.2byte	0x148
	.byte	0x1a
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF124
	.2byte	0x12a
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd74
	.uleb128 0x5
	.string	"p"
	.2byte	0x12a
	.byte	0x19
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"q"
	.2byte	0x12a
	.byte	0x26
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF123
	.2byte	0x12a
	.byte	0x33
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"i"
	.2byte	0x12c
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.string	"j"
	.2byte	0x12c
	.byte	0xf
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x7
	.4byte	.LASF125
	.2byte	0x118
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdc0
	.uleb128 0x5
	.string	"p"
	.2byte	0x118
	.byte	0x19
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"q"
	.2byte	0x118
	.byte	0x26
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF123
	.2byte	0x118
	.byte	0x33
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"i"
	.2byte	0x11a
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x7
	.4byte	.LASF126
	.2byte	0x10d
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe0c
	.uleb128 0x5
	.string	"p"
	.2byte	0x10d
	.byte	0x1b
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF123
	.2byte	0x10d
	.byte	0x28
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"x"
	.2byte	0x10d
	.byte	0x37
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x2
	.string	"i"
	.2byte	0x10f
	.byte	0xe
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x107
	.byte	0x9
	.4byte	0x8c
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe35
	.uleb128 0x5
	.string	"x"
	.2byte	0x107
	.byte	0x1c
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x15
	.4byte	.LASF128
	.byte	0xf9
	.byte	0x9
	.4byte	0x8c
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe74
	.uleb128 0x4
	.string	"x"
	.byte	0xf9
	.byte	0x18
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0xf9
	.byte	0x24
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.string	"i"
	.byte	0xfb
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0xef
	.byte	0x9
	.4byte	0x8c
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xea6
	.uleb128 0x4
	.string	"x"
	.byte	0xef
	.byte	0x18
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x4
	.string	"y"
	.byte	0xef
	.byte	0x23
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0xe6
	.byte	0x9
	.4byte	0x8c
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xed8
	.uleb128 0x4
	.string	"x"
	.byte	0xe6
	.byte	0x19
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x4
	.string	"y"
	.byte	0xe6
	.byte	0x25
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0xe1
	.byte	0x9
	.4byte	0x8c
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf0a
	.uleb128 0x4
	.string	"x"
	.byte	0xe1
	.byte	0x18
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x4
	.string	"y"
	.byte	0xe1
	.byte	0x23
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0xdc
	.byte	0x9
	.4byte	0x8c
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf3c
	.uleb128 0x4
	.string	"x"
	.byte	0xdc
	.byte	0x18
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x4
	.string	"y"
	.byte	0xdc
	.byte	0x23
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x15
	.4byte	.LASF134
	.byte	0xd0
	.byte	0x9
	.4byte	0x8c
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf7e
	.uleb128 0x4
	.string	"dev"
	.byte	0xd0
	.byte	0x1f
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"num"
	.byte	0xd0
	.byte	0x2c
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x16
	.string	"pt"
	.byte	0xd2
	.4byte	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF135
	.byte	0xc8
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfaf
	.uleb128 0x4
	.string	"dev"
	.byte	0xc8
	.byte	0x1a
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"src"
	.byte	0xc8
	.byte	0x29
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0xc1
	.byte	0x9
	.4byte	0x8c
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfd7
	.uleb128 0x4
	.string	"dev"
	.byte	0xc1
	.byte	0x1f
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0xba
	.byte	0x9
	.4byte	0x8c
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfff
	.uleb128 0x4
	.string	"dev"
	.byte	0xba
	.byte	0x21
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF138
	.byte	0xaf
	.byte	0xa
	.4byte	0x108
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x103f
	.uleb128 0x4
	.string	"dev"
	.byte	0xaf
	.byte	0x1c
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"i"
	.byte	0xaf
	.byte	0x29
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x16
	.string	"pt"
	.byte	0xb1
	.4byte	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF139
	.byte	0xa6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x108c
	.uleb128 0x4
	.string	"dev"
	.byte	0xa6
	.byte	0x19
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"src"
	.byte	0xa6
	.byte	0x27
	.4byte	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.string	"len"
	.byte	0xa6
	.byte	0x34
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x10
	.4byte	.LASF80
	.byte	0xa6
	.byte	0x41
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x17
	.4byte	.LASF140
	.byte	0x9f
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10af
	.uleb128 0x4
	.string	"dev"
	.byte	0x9f
	.byte	0x1b
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0x98
	.byte	0xa
	.4byte	0x108
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10d7
	.uleb128 0x4
	.string	"dev"
	.byte	0x98
	.byte	0x1d
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF142
	.byte	0x1
	.byte	0x8d
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1133
	.uleb128 0x4
	.string	"dev"
	.byte	0x8d
	.byte	0x1a
	.4byte	0x583
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"id"
	.byte	0x8d
	.byte	0x27
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x10
	.4byte	.LASF80
	.byte	0x8d
	.byte	0x34
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.4byte	.LASF143
	.byte	0x8d
	.byte	0x44
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x10
	.4byte	.LASF144
	.byte	0x8d
	.byte	0x53
	.4byte	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF149
	.byte	0x2
	.byte	0xb3
	.byte	0x3a
	.4byte	0xe4
	.byte	0x3
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x8
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x16
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x18
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
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
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.sleb128 1
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x25
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2c
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x124
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
.LASF124:
	.string	"poly_mul"
.LASF27:
	.string	"blpoly_t"
.LASF110:
	.string	"e_eval"
.LASF72:
	.string	"eloc"
.LASF114:
	.string	"mulp"
.LASF60:
	.string	"src_ptr"
.LASF2:
	.string	"unsigned int"
.LASF105:
	.string	"c_pos"
.LASF88:
	.string	"find_errors"
.LASF19:
	.string	"intmax_t"
.LASF142:
	.string	"poly_init"
.LASF64:
	.string	"erase_count"
.LASF134:
	.string	"poly_append"
.LASF97:
	.string	"err_loc"
.LASF71:
	.string	"synd"
.LASF125:
	.string	"poly_add"
.LASF141:
	.string	"poly_ptr"
.LASF131:
	.string	"gf_mul"
.LASF58:
	.string	"reedsolomon_decode"
.LASF112:
	.string	"find_error_evaluator"
.LASF16:
	.string	"uint32_t"
.LASF6:
	.string	"int8_t"
.LASF87:
	.string	"forney_synd"
.LASF48:
	.string	"ID_ERR_EVAL"
.LASF96:
	.string	"shift"
.LASF32:
	.string	"fec_context_t"
.LASF75:
	.string	"has_errors"
.LASF61:
	.string	"ecc_ptr"
.LASF95:
	.string	"index"
.LASF43:
	.string	"ID_ERASURES_LOC"
.LASF8:
	.string	"int16_t"
.LASF36:
	.string	"ID_TPOLY1"
.LASF37:
	.string	"ID_TPOLY2"
.LASF39:
	.string	"ID_TPOLY3"
.LASF40:
	.string	"ID_TPOLY4"
.LASF18:
	.string	"long long unsigned int"
.LASF53:
	.string	"xTaskGetTickCountFromISR"
.LASF29:
	.string	"g_stack_memory"
.LASF81:
	.string	"enc_len"
.LASF47:
	.string	"ID_COEF_POS"
.LASF148:
	.string	"return_corrected_msg"
.LASF147:
	.string	"bl_printk"
.LASF133:
	.string	"gf_add"
.LASF24:
	.string	"_offset"
.LASF115:
	.string	"divisor"
.LASF146:
	.string	"POLY_ID"
.LASF51:
	.string	"code_log"
.LASF49:
	.string	"TrapNetCounter"
.LASF100:
	.string	"temp2"
.LASF5:
	.string	"size_t"
.LASF80:
	.string	"offset"
.LASF57:
	.string	"reedsolomon_getmemsize"
.LASF120:
	.string	"generator_poly"
.LASF118:
	.string	"apol"
.LASF139:
	.string	"poly_set"
.LASF135:
	.string	"poly_copy"
.LASF136:
	.string	"poly_get_id"
.LASF83:
	.string	"calc_forney_syndromes"
.LASF28:
	.string	"g_polynoms"
.LASF22:
	.string	"char"
.LASF65:
	.string	"dst_ptr"
.LASF42:
	.string	"ID_FORNEY"
.LASF121:
	.string	"poly_eval"
.LASF109:
	.string	"re_eval"
.LASF138:
	.string	"poly_at"
.LASF78:
	.string	"coef"
.LASF67:
	.string	"dst_len"
.LASF50:
	.string	"code_exp"
.LASF12:
	.string	"uint8_t"
.LASF116:
	.string	"find_errata_locator"
.LASF89:
	.string	"error_loc"
.LASF52:
	.string	"xTaskGetTickCount"
.LASF101:
	.string	"correct_errata"
.LASF66:
	.string	"src_len"
.LASF3:
	.string	"long long int"
.LASF59:
	.string	"context"
.LASF126:
	.string	"poly_scale"
.LASF20:
	.string	"BaseType_t"
.LASF68:
	.string	"msg_in"
.LASF132:
	.string	"gf_sub"
.LASF41:
	.string	"ID_SYNDROMES"
.LASF56:
	.string	"memset"
.LASF30:
	.string	"g_generator_cache"
.LASF144:
	.string	"memory_ptr"
.LASF31:
	.string	"g_generator_cached_flag"
.LASF143:
	.string	"size"
.LASF63:
	.string	"erase_pos"
.LASF123:
	.string	"newp"
.LASF82:
	.string	"poly_len"
.LASF149:
	.string	"xPortIsInsideInterrupt"
.LASF79:
	.string	"reedsolomon_init"
.LASF44:
	.string	"ID_ERRORS_LOC"
.LASF69:
	.string	"msg_out"
.LASF73:
	.string	"reloc"
.LASF21:
	.string	"TickType_t"
.LASF4:
	.string	"long double"
.LASF14:
	.string	"uint16_t"
.LASF84:
	.string	"erasures_pos"
.LASF90:
	.string	"errs"
.LASF70:
	.string	"epos"
.LASF76:
	.string	"reedsolomon_encode"
.LASF122:
	.string	"poly_div"
.LASF9:
	.string	"short int"
.LASF11:
	.string	"long int"
.LASF26:
	.string	"length"
.LASF104:
	.string	"err_loc_prime"
.LASF74:
	.string	"forney"
.LASF99:
	.string	"temp"
.LASF140:
	.string	"poly_reset"
.LASF102:
	.string	"err_pos"
.LASF86:
	.string	"erase_pos_reversed"
.LASF91:
	.string	"find_error_locator"
.LASF93:
	.string	"synd_shift"
.LASF25:
	.string	"_memory"
.LASF108:
	.string	"rsynd"
.LASF54:
	.string	"memmove"
.LASF107:
	.string	"errata_loc"
.LASF17:
	.string	"long unsigned int"
.LASF113:
	.string	"ecclen"
.LASF35:
	.string	"ID_GENERATOR"
.LASF10:
	.string	"int32_t"
.LASF130:
	.string	"gf_div"
.LASF137:
	.string	"poly_get_size"
.LASF111:
	.string	"err_loc_prime_temp"
.LASF13:
	.string	"unsigned char"
.LASF33:
	.string	"ID_MSG_IN"
.LASF119:
	.string	"calc_syndromes"
.LASF77:
	.string	"encode_block"
.LASF34:
	.string	"ID_MSG_OUT"
.LASF117:
	.string	"addp"
.LASF129:
	.string	"power"
.LASF7:
	.string	"signed char"
.LASF98:
	.string	"old_loc"
.LASF94:
	.string	"delta"
.LASF15:
	.string	"short unsigned int"
.LASF103:
	.string	"Xi_inv"
.LASF55:
	.string	"memcpy"
.LASF127:
	.string	"gf_inverse"
.LASF106:
	.string	"corrected"
.LASF23:
	.string	"_size"
.LASF38:
	.string	"ID_MSG_E"
.LASF92:
	.string	"erase_loc"
.LASF128:
	.string	"gf_pow"
.LASF145:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF45:
	.string	"ID_ERASURES"
.LASF46:
	.string	"ID_ERRORS"
.LASF62:
	.string	"decode_block"
.LASF85:
	.string	"msg_in_size"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_fec.c"
	.globl	__moddi3
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
