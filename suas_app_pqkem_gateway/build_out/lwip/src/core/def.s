	.file	"def.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/def.c"
	.section	.text.lwip_htons,"ax",@progbits
	.align	1
	.globl	lwip_htons
	.type	lwip_htons, @function
lwip_htons:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/def.c"
	.loc 1 77 1
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
	sh	a5,-18(s0)
	.loc 1 78 49
	lh	a5,-18(s0)
	slli	a5,a5,8
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 1 78 75
	lhu	a5,-18(s0)
	srli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 78 49
	slli	a5,a5,16
	srai	a5,a5,16
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 78 11
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 79 1
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
.LFE5:
	.size	lwip_htons, .-lwip_htons
	.section	.text.lwip_htonl,"ax",@progbits
	.align	1
	.globl	lwip_htonl
	.type	lwip_htonl, @function
lwip_htonl:
.LFB6:
	.loc 1 91 1
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
	.loc 1 92 40
	lw	a5,-20(s0)
	slli	a4,a5,24
	.loc 1 92 78
	lw	a5,-20(s0)
	slli	a3,a5,8
	li	a5,16711680
	and	a5,a3,a5
	.loc 1 92 47
	or	a4,a4,a5
	.loc 1 92 115
	lw	a5,-20(s0)
	srli	a3,a5,8
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a3,a5
	.loc 1 92 84
	or	a4,a4,a5
	.loc 1 92 152
	lw	a5,-20(s0)
	srli	a5,a5,24
	.loc 1 92 121
	or	a5,a4,a5
	.loc 1 93 1
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
	.size	lwip_htonl, .-lwip_htonl
	.section	.text.lwip_strnstr,"ax",@progbits
	.align	1
	.globl	lwip_strnstr
	.type	lwip_strnstr, @function
lwip_strnstr:
.LFB7:
	.loc 1 106 1
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
	.loc 1 108 21
	lw	a0,-40(s0)
	call	strlen
	sw	a0,-24(s0)
	.loc 1 109 6
	lw	a5,-24(s0)
	bne	a5,zero,.L6
	.loc 1 110 13
	lw	a5,-36(s0)
	j	.L7
.L6:
	.loc 1 112 10
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 112 3
	j	.L8
.L11:
	.loc 1 113 10
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 1 113 16
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 1 113 8
	bne	a4,a5,.L9
	.loc 1 113 28 discriminator 1
	lw	a2,-24(s0)
	lw	a1,-40(s0)
	lw	a0,-20(s0)
	call	strncmp
	mv	a5,a0
	.loc 1 113 24 discriminator 2
	bne	a5,zero,.L9
	.loc 1 114 15
	lw	a5,-20(s0)
	j	.L7
.L9:
	.loc 1 112 57 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L8:
	.loc 1 112 20 discriminator 1
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 112 23 discriminator 1
	beq	a5,zero,.L10
	.loc 1 112 29 discriminator 3
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a4,a4,a5
	.loc 1 112 50 discriminator 3
	lw	a3,-36(s0)
	lw	a5,-44(s0)
	add	a5,a3,a5
	.loc 1 112 23 discriminator 3
	bleu	a4,a5,.L11
.L10:
	.loc 1 117 9
	li	a5,0
.L7:
	.loc 1 118 1
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
.LFE7:
	.size	lwip_strnstr, .-lwip_strnstr
	.section	.text.lwip_strnistr,"ax",@progbits
	.align	1
	.globl	lwip_strnistr
	.type	lwip_strnistr, @function
lwip_strnistr:
.LFB8:
	.loc 1 129 1
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
	.loc 1 131 21
	lw	a0,-40(s0)
	call	strlen
	sw	a0,-24(s0)
	.loc 1 132 6
	lw	a5,-24(s0)
	bne	a5,zero,.L13
	.loc 1 133 13
	lw	a5,-36(s0)
	j	.L14
.L13:
	.loc 1 135 10
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 135 3
	j	.L15
.L18:
	.loc 1 136 9
	lw	a2,-24(s0)
	lw	a1,-40(s0)
	lw	a0,-20(s0)
	call	lwip_strnicmp
	mv	a5,a0
	.loc 1 136 8 discriminator 1
	bne	a5,zero,.L16
	.loc 1 137 15
	lw	a5,-20(s0)
	j	.L14
.L16:
	.loc 1 135 57 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L15:
	.loc 1 135 20 discriminator 1
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 135 23 discriminator 1
	beq	a5,zero,.L17
	.loc 1 135 29 discriminator 3
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a4,a4,a5
	.loc 1 135 50 discriminator 3
	lw	a3,-36(s0)
	lw	a5,-44(s0)
	add	a5,a3,a5
	.loc 1 135 23 discriminator 3
	bleu	a4,a5,.L18
.L17:
	.loc 1 140 9
	li	a5,0
.L14:
	.loc 1 141 1
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
	.size	lwip_strnistr, .-lwip_strnistr
	.section	.text.lwip_stricmp,"ax",@progbits
	.align	1
	.globl	lwip_stricmp
	.type	lwip_stricmp, @function
lwip_stricmp:
.LFB9:
	.loc 1 152 1
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
.L24:
	.loc 1 156 15
	lw	a5,-36(s0)
	addi	a4,a5,1
	sw	a4,-36(s0)
	.loc 1 156 8
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	.loc 1 157 15
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 157 8
	lbu	a5,0(a5)
	sb	a5,-18(s0)
	.loc 1 158 8
	lbu	a4,-17(s0)
	lbu	a5,-18(s0)
	beq	a4,a5,.L20
.LBB2:
	.loc 1 159 12
	lbu	a5,-17(s0)
	ori	a5,a5,32
	sb	a5,-19(s0)
	.loc 1 160 10
	lbu	a4,-19(s0)
	li	a5,96
	bleu	a4,a5,.L21
	.loc 1 160 27 discriminator 1
	lbu	a4,-19(s0)
	li	a5,122
	bgtu	a4,a5,.L21
.LBB3:
	.loc 1 163 14
	lbu	a5,-18(s0)
	ori	a5,a5,32
	sb	a5,-20(s0)
	.loc 1 164 12
	lbu	a4,-19(s0)
	lbu	a5,-20(s0)
	beq	a4,a5,.L25
	.loc 1 167 18
	li	a5,1
	j	.L23
.L21:
.LBE3:
	.loc 1 171 16
	li	a5,1
	j	.L23
.L25:
	.loc 1 160 47
	nop
.L20:
.LBE2:
	.loc 1 174 15
	lbu	a5,-17(s0)
	bne	a5,zero,.L24
	.loc 1 175 10
	li	a5,0
.L23:
	.loc 1 176 1
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
	.size	lwip_stricmp, .-lwip_stricmp
	.section	.text.lwip_strnicmp,"ax",@progbits
	.align	1
	.globl	lwip_strnicmp
	.type	lwip_strnicmp, @function
lwip_strnicmp:
.LFB10:
	.loc 1 187 1
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
.L32:
	.loc 1 191 15
	lw	a5,-36(s0)
	addi	a4,a5,1
	sw	a4,-36(s0)
	.loc 1 191 8
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	.loc 1 192 15
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 192 8
	lbu	a5,0(a5)
	sb	a5,-18(s0)
	.loc 1 193 8
	lbu	a4,-17(s0)
	lbu	a5,-18(s0)
	beq	a4,a5,.L27
.LBB4:
	.loc 1 194 12
	lbu	a5,-17(s0)
	ori	a5,a5,32
	sb	a5,-19(s0)
	.loc 1 195 10
	lbu	a4,-19(s0)
	li	a5,96
	bleu	a4,a5,.L28
	.loc 1 195 27 discriminator 1
	lbu	a4,-19(s0)
	li	a5,122
	bgtu	a4,a5,.L28
.LBB5:
	.loc 1 198 14
	lbu	a5,-18(s0)
	ori	a5,a5,32
	sb	a5,-20(s0)
	.loc 1 199 12
	lbu	a4,-19(s0)
	lbu	a5,-20(s0)
	beq	a4,a5,.L33
	.loc 1 202 18
	li	a5,1
	j	.L30
.L28:
.LBE5:
	.loc 1 206 16
	li	a5,1
	j	.L30
.L33:
	.loc 1 195 47
	nop
.L27:
.LBE4:
	.loc 1 209 8
	lw	a5,-44(s0)
	addi	a5,a5,-1
	sw	a5,-44(s0)
	.loc 1 210 23
	lw	a5,-44(s0)
	beq	a5,zero,.L31
	.loc 1 210 23 is_stmt 0 discriminator 1
	lbu	a5,-17(s0)
	bne	a5,zero,.L32
.L31:
	.loc 1 211 10 is_stmt 1
	li	a5,0
.L30:
	.loc 1 212 1
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
.LFE10:
	.size	lwip_strnicmp, .-lwip_strnicmp
	.section	.text.lwip_itoa,"ax",@progbits
	.align	1
	.globl	lwip_itoa
	.type	lwip_itoa, @function
lwip_itoa:
.LFB11:
	.loc 1 223 1
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
	.loc 1 224 9
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 225 32
	lw	a5,-40(s0)
	addi	a5,a5,-1
	.loc 1 225 9
	lw	a4,-36(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 226 7
	lw	a5,-44(s0)
	srai	a5,a5,31
	lw	a4,-44(s0)
	xor	a4,a5,a4
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 229 6
	lw	a4,-40(s0)
	li	a5,1
	bgtu	a4,a5,.L35
	.loc 1 230 8
	lw	a4,-40(s0)
	li	a5,1
	bne	a4,a5,.L44
	.loc 1 231 15
	lw	a5,-36(s0)
	sb	zero,0(a5)
	.loc 1 233 5
	j	.L44
.L35:
	.loc 1 237 6
	lw	a5,-44(s0)
	bge	a5,zero,.L38
	.loc 1 238 9
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 238 12
	li	a4,45
	sb	a4,0(a5)
.L38:
	.loc 1 242 8
	lw	a5,-24(s0)
	sb	zero,0(a5)
	.loc 1 243 9
	j	.L39
.L41:
.LBB6:
	.loc 1 244 32
	lw	a4,-28(s0)
	li	a5,1717985280
	addi	a5,a5,1639
	mulh	a5,a4,a5
	srai	a3,a5,2
	srai	a5,a4,31
	sub	a3,a3,a5
	mv	a5,a3
	slli	a5,a5,2
	add	a5,a5,a3
	slli	a5,a5,1
	sub	a3,a4,a5
	.loc 1 244 16
	andi	a5,a3,0xff
	.loc 1 244 10
	addi	a5,a5,48
	sb	a5,-29(s0)
	.loc 1 245 8
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 246 10
	lw	a5,-24(s0)
	lbu	a4,-29(s0)
	sb	a4,0(a5)
	.loc 1 247 7
	lw	a5,-28(s0)
	li	a4,1717985280
	addi	a4,a4,1639
	mulh	a4,a5,a4
	srai	a4,a4,2
	srai	a5,a5,31
	sub	a5,a4,a5
	sw	a5,-28(s0)
.L39:
.LBE6:
	.loc 1 243 19
	lw	a5,-28(s0)
	beq	a5,zero,.L40
	.loc 1 243 19 is_stmt 0 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bgtu	a4,a5,.L41
.L40:
	.loc 1 249 6 is_stmt 1
	lw	a5,-28(s0)
	beq	a5,zero,.L42
	.loc 1 251 13
	lw	a5,-36(s0)
	sb	zero,0(a5)
	.loc 1 252 5
	j	.L34
.L42:
	.loc 1 254 7
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 1 254 6
	bne	a5,zero,.L43
	.loc 1 256 9
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 256 12
	li	a4,48
	sb	a4,0(a5)
	.loc 1 257 9
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 257 12
	sb	zero,0(a5)
	.loc 1 258 5
	j	.L34
.L43:
	.loc 1 261 38
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	add	a4,a4,a5
	.loc 1 261 49
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 1 261 3
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	memmove
	j	.L34
.L44:
	.loc 1 233 5
	nop
.L34:
	.loc 1 262 1
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
	.size	lwip_itoa, .-lwip_itoa
	.section	.text.lwip_memcmp_consttime,"ax",@progbits
	.align	1
	.globl	lwip_memcmp_consttime
	.type	lwip_memcmp_consttime, @function
lwip_memcmp_consttime:
.LFB12:
	.loc 1 275 1
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
	.loc 1 277 24
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	.loc 1 278 24
	lw	a5,-40(s0)
	sw	a5,-32(s0)
	.loc 1 279 17
	sb	zero,-21(s0)
	.loc 1 281 10
	sw	zero,-20(s0)
	.loc 1 281 3
	j	.L46
.L47:
	.loc 1 282 14
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 1 282 22
	lw	a3,-32(s0)
	lw	a5,-20(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 1 282 9
	xor	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-21(s0)
	or	a5,a5,a4
	sb	a5,-21(s0)
	.loc 1 281 25 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L46:
	.loc 1 281 17 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L47
	.loc 1 284 10
	lbu	a5,-21(s0)
	.loc 1 285 1
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
	.size	lwip_memcmp_consttime, .-lwip_memcmp_consttime
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x43c
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xe
	.4byte	0x39
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6f
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x2
	.byte	0xa0
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x9
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0xe
	.4byte	0x9c
	.uleb128 0x9
	.4byte	0xa3
	.uleb128 0x9
	.4byte	0xb2
	.uleb128 0x13
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x4c
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x5a
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0xb3
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xbf
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x20
	.byte	0x8
	.4byte	0x95
	.4byte	0x102
	.uleb128 0x4
	.4byte	0x95
	.uleb128 0x4
	.4byte	0xad
	.uleb128 0x4
	.4byte	0x76
	.byte	0
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x2b
	.byte	0x5
	.4byte	0x2b
	.4byte	0x121
	.uleb128 0x4
	.4byte	0xa8
	.uleb128 0x4
	.4byte	0xa8
	.uleb128 0x4
	.4byte	0x76
	.byte	0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x29
	.byte	0x8
	.4byte	0x76
	.4byte	0x136
	.uleb128 0x4
	.4byte	0xa8
	.byte	0
	.uleb128 0x14
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x112
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1af
	.uleb128 0xc
	.string	"s1"
	.byte	0x27
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"s2"
	.byte	0x37
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"len"
	.byte	0x42
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.string	"i"
	.2byte	0x114
	.byte	0xa
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"a1"
	.2byte	0x115
	.byte	0x18
	.4byte	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.string	"a2"
	.2byte	0x116
	.byte	0x18
	.4byte	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.string	"ret"
	.2byte	0x117
	.byte	0x11
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x9
	.4byte	0x40
	.uleb128 0x15
	.4byte	.LASF38
	.byte	0x1
	.byte	0xde
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x235
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0xde
	.byte	0x11
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0xde
	.byte	0x20
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0xde
	.byte	0x2d
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"res"
	.byte	0xe0
	.byte	0x9
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"tmp"
	.byte	0xe1
	.byte	0x9
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"n"
	.byte	0xe2
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x3
	.string	"val"
	.byte	0xf4
	.byte	0xa
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0xba
	.4byte	0x2b
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c2
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0xba
	.byte	0x1b
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0xba
	.byte	0x2d
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"len"
	.byte	0xba
	.byte	0x3a
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"c1"
	.byte	0xbc
	.byte	0x8
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x3
	.string	"c2"
	.byte	0xbc
	.byte	0xc
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x7
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0xc2
	.byte	0xc
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x7
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0xc6
	.byte	0xe
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x97
	.4byte	0x2b
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x341
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x97
	.byte	0x1a
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x97
	.byte	0x2c
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"c1"
	.byte	0x99
	.byte	0x8
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x3
	.string	"c2"
	.byte	0x99
	.byte	0xc
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x7
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x9f
	.byte	0xc
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x7
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0xa3
	.byte	0xe
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x80
	.4byte	0x97
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x39c
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x80
	.byte	0x1b
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x80
	.byte	0x2f
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"n"
	.byte	0x80
	.byte	0x3d
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"p"
	.byte	0x82
	.byte	0xf
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x83
	.byte	0xa
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x69
	.4byte	0x97
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f7
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x69
	.byte	0x1a
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x69
	.byte	0x2e
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"n"
	.byte	0x69
	.byte	0x3c
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"p"
	.byte	0x6b
	.byte	0xf
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x6c
	.byte	0xa
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x5a
	.4byte	0xd7
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41c
	.uleb128 0x8
	.string	"n"
	.byte	0x5a
	.byte	0x12
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF39
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	0xcb
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.string	"n"
	.byte	0x4c
	.byte	0x12
	.4byte	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x7
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 274
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
	.sleb128 1
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
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"lwip_strnistr"
.LASF35:
	.string	"tokenlen"
.LASF19:
	.string	"memmove"
.LASF36:
	.string	"lwip_strnstr"
.LASF30:
	.string	"c2_upc"
.LASF21:
	.string	"strlen"
.LASF3:
	.string	"unsigned char"
.LASF7:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF11:
	.string	"size_t"
.LASF39:
	.string	"lwip_htons"
.LASF17:
	.string	"u16_t"
.LASF27:
	.string	"str1"
.LASF28:
	.string	"str2"
.LASF25:
	.string	"lwip_memcmp_consttime"
.LASF12:
	.string	"ptrdiff_t"
.LASF10:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF23:
	.string	"bufsize"
.LASF34:
	.string	"token"
.LASF24:
	.string	"number"
.LASF8:
	.string	"long long int"
.LASF40:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF14:
	.string	"char"
.LASF26:
	.string	"lwip_strnicmp"
.LASF20:
	.string	"strncmp"
.LASF4:
	.string	"short int"
.LASF38:
	.string	"lwip_itoa"
.LASF33:
	.string	"buffer"
.LASF15:
	.string	"uint16_t"
.LASF18:
	.string	"u32_t"
.LASF31:
	.string	"lwip_stricmp"
.LASF16:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF13:
	.string	"long double"
.LASF2:
	.string	"signed char"
.LASF22:
	.string	"result"
.LASF29:
	.string	"c1_upc"
.LASF37:
	.string	"lwip_htonl"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/def.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
