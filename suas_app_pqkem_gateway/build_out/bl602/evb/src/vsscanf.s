	.file	"vsscanf.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602/evb/src/vsscanf.c"
	.section	.text.skipspace,"ax",@progbits
	.align	1
	.type	skipspace, @function
skipspace:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602/evb/src/vsscanf.c"
	.loc 1 86 1
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
	.loc 1 87 11
	j	.L2
.L3:
	.loc 1 88 10
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	.loc 1 87 26
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 87 14
	addi	a4,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 87 14
	andi	a5,a5,8
	.loc 1 87 11
	bne	a5,zero,.L3
	.loc 1 89 12
	lw	a5,-20(s0)
	.loc 1 90 1
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
	.size	skipspace, .-skipspace
	.section	.text.set_bit,"ax",@progbits
	.align	1
	.type	set_bit, @function
set_bit:
.LFB6:
	.loc 1 94 1
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
	.loc 1 95 16
	lw	a5,-24(s0)
	srli	a5,a5,5
	.loc 1 95 11
	slli	a4,a5,2
	lw	a3,-20(s0)
	add	a4,a3,a4
	lw	a3,0(a4)
	.loc 1 95 48
	lw	a4,-24(s0)
	andi	a4,a4,31
	.loc 1 95 40
	li	a2,1
	sll	a4,a2,a4
	.loc 1 95 11
	slli	a5,a5,2
	lw	a2,-20(s0)
	add	a5,a2,a5
	.loc 1 95 33
	or	a4,a3,a4
	sw	a4,0(a5)
	.loc 1 96 1
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
.LFE6:
	.size	set_bit, .-set_bit
	.section	.text.test_bit,"ax",@progbits
	.align	1
	.type	test_bit, @function
test_bit:
.LFB7:
	.loc 1 100 1
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
	.loc 1 101 29
	lw	a5,-24(s0)
	srli	a5,a5,5
	.loc 1 101 24
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 101 54
	lw	a5,-24(s0)
	andi	a5,a5,31
	.loc 1 101 46
	srl	a5,a4,a5
	.loc 1 101 67
	andi	a5,a5,1
	.loc 1 102 1
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
	.size	test_bit, .-test_bit
	.section	.text.vsscanf,"ax",@progbits
	.align	1
	.globl	vsscanf
	.type	vsscanf, @function
vsscanf:
.LFB8:
	.loc 1 105 1
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
	.loc 1 106 17
	lw	a5,-152(s0)
	sw	a5,-20(s0)
	.loc 1 109 17
	lw	a5,-148(s0)
	sw	a5,-28(s0)
	.loc 1 111 15
	li	a5,0
	li	a6,0
	sw	a5,-40(s0)
	sw	a6,-36(s0)
	.loc 1 112 9
	sw	zero,-44(s0)
	.loc 1 113 18
	li	a5,-1
	sw	a5,-48(s0)
	.loc 1 115 18
	sw	zero,-56(s0)
	.loc 1 124 7
	sb	zero,-57(s0)
	.loc 1 125 11
	sw	zero,-64(s0)
	.loc 1 126 15
	sb	zero,-65(s0)
	.loc 1 128 9
	sw	zero,-72(s0)
	.loc 1 130 9
	sw	zero,-76(s0)
	.loc 1 131 19
	sb	zero,-77(s0)
	.loc 1 133 11
	j	.L9
.L100:
	.loc 1 134 9
	lbu	a5,-57(s0)
	li	a4,6
	beq	a5,a4,.L10
	li	a4,6
	bgt	a5,a4,.L9
	li	a4,5
	beq	a5,a4,.L12
	li	a4,5
	bgt	a5,a4,.L9
	li	a4,4
	beq	a5,a4,.L13
	li	a4,4
	bgt	a5,a4,.L9
	li	a4,3
	beq	a5,a4,.L14
	li	a4,3
	bgt	a5,a4,.L9
	li	a4,2
	beq	a5,a4,.L15
	li	a4,2
	bgt	a5,a4,.L9
	beq	a5,zero,.L16
	li	a4,1
	beq	a5,a4,.L17
	j	.L9
.L16:
	.loc 1 136 16
	lbu	a4,-89(s0)
	li	a5,37
	bne	a4,a5,.L18
	.loc 1 137 23
	li	a5,1
	sb	a5,-57(s0)
	.loc 1 138 23
	sw	zero,-56(s0)
	.loc 1 139 22
	sw	zero,-44(s0)
	.loc 1 140 23
	li	a5,-1
	sw	a5,-48(s0)
	.loc 1 149 13
	j	.L9
.L18:
	.loc 1 141 27
	lbu	a5,-89(s0)
	.loc 1 141 26
	addi	a4,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 141 26
	andi	a5,a5,8
	.loc 1 141 23
	beq	a5,zero,.L20
	.loc 1 142 21
	lw	a0,-28(s0)
	call	skipspace
	sw	a0,-28(s0)
	.loc 1 149 13
	j	.L9
.L20:
	.loc 1 144 21
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	.loc 1 144 20
	lbu	a4,-89(s0)
	bne	a4,a5,.L21
	.loc 1 145 22
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
	.loc 1 149 13
	j	.L9
.L21:
	.loc 1 147 26
	li	a5,2
	sb	a5,-65(s0)
	.loc 1 149 13
	j	.L9
.L17:
	.loc 1 152 13
	lbu	a5,-89(s0)
	li	a4,42
	beq	a5,a4,.L22
	li	a4,42
	blt	a5,a4,.L23
	addi	a4,a5,-48
	li	a5,9
	bgtu	a4,a5,.L23
	j	.L103
.L22:
	.loc 1 154 23
	lw	a5,-56(s0)
	ori	a5,a5,1
	sw	a5,-56(s0)
	.loc 1 155 17
	j	.L25
.L103:
	.loc 1 166 29
	lbu	a5,-89(s0)
	addi	a5,a5,-48
	.loc 1 166 23
	sw	a5,-48(s0)
	.loc 1 167 23
	li	a5,2
	sb	a5,-57(s0)
	.loc 1 168 23
	lw	a5,-56(s0)
	ori	a5,a5,4
	sw	a5,-56(s0)
	.loc 1 169 17
	j	.L25
.L23:
	.loc 1 171 23
	li	a5,3
	sb	a5,-57(s0)
	.loc 1 172 18
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 173 17
	nop
.L25:
	.loc 1 175 13
	j	.L9
.L15:
	.loc 1 178 16
	lbu	a4,-89(s0)
	li	a5,47
	bleu	a4,a5,.L26
	.loc 1 178 27 discriminator 1
	lbu	a4,-89(s0)
	li	a5,57
	bgtu	a4,a5,.L26
	.loc 1 179 31
	lw	a4,-48(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a4,a5
	.loc 1 179 36
	lbu	a5,-89(s0)
	add	a5,a4,a5
	.loc 1 179 23
	addi	a5,a5,-48
	sw	a5,-48(s0)
	.loc 1 184 13
	j	.L9
.L26:
	.loc 1 181 23
	li	a5,3
	sb	a5,-57(s0)
	.loc 1 182 18
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 184 13
	j	.L9
.L14:
	.loc 1 187 13
	lbu	a5,-89(s0)
	li	a4,122
	beq	a5,a4,.L28
	li	a4,122
	bgt	a5,a4,.L29
	li	a4,116
	beq	a5,a4,.L30
	li	a4,116
	bgt	a5,a4,.L29
	li	a4,113
	beq	a5,a4,.L31
	li	a4,113
	bgt	a5,a4,.L29
	li	a4,108
	beq	a5,a4,.L32
	li	a4,108
	bgt	a5,a4,.L29
	li	a4,106
	beq	a5,a4,.L33
	li	a4,106
	bgt	a5,a4,.L29
	li	a4,76
	beq	a5,a4,.L31
	li	a4,104
	bne	a5,a4,.L29
	.loc 1 190 21
	lw	a5,-44(s0)
	addi	a5,a5,-1
	sw	a5,-44(s0)
	.loc 1 191 17
	j	.L34
.L32:
	.loc 1 193 21
	lw	a5,-44(s0)
	addi	a5,a5,1
	sw	a5,-44(s0)
	.loc 1 194 17
	j	.L34
.L33:
	.loc 1 196 22
	li	a5,2
	sw	a5,-44(s0)
	.loc 1 197 17
	j	.L34
.L28:
	.loc 1 199 22
	li	a5,1
	sw	a5,-44(s0)
	.loc 1 200 17
	j	.L34
.L30:
	.loc 1 202 22
	li	a5,1
	sw	a5,-44(s0)
	.loc 1 203 17
	j	.L34
.L31:
	.loc 1 206 22
	li	a5,2
	sw	a5,-44(s0)
	.loc 1 207 17
	j	.L34
.L29:
	.loc 1 212 23
	sb	zero,-57(s0)
	.loc 1 215 20
	lw	a4,-44(s0)
	li	a5,-2
	bge	a4,a5,.L35
	.loc 1 216 26
	li	a5,-2
	sw	a5,-44(s0)
	j	.L36
.L35:
	.loc 1 217 25
	lw	a4,-44(s0)
	li	a5,2
	ble	a4,a5,.L36
	.loc 1 218 26
	li	a5,2
	sw	a5,-44(s0)
.L36:
	.loc 1 220 17
	lbu	a5,-89(s0)
	li	a4,120
	beq	a5,a4,.L37
	li	a4,120
	bgt	a5,a4,.L38
	li	a4,117
	beq	a5,a4,.L39
	li	a4,117
	bgt	a5,a4,.L38
	li	a4,115
	beq	a5,a4,.L40
	li	a4,115
	bgt	a5,a4,.L38
	li	a4,112
	beq	a5,a4,.L41
	li	a4,112
	bgt	a5,a4,.L38
	li	a4,111
	beq	a5,a4,.L42
	li	a4,111
	bgt	a5,a4,.L38
	li	a4,110
	beq	a5,a4,.L43
	li	a4,110
	bgt	a5,a4,.L38
	li	a4,105
	beq	a5,a4,.L44
	li	a4,105
	bgt	a5,a4,.L38
	li	a4,100
	beq	a5,a4,.L45
	li	a4,100
	bgt	a5,a4,.L38
	li	a4,99
	beq	a5,a4,.L46
	li	a4,99
	bgt	a5,a4,.L38
	li	a4,91
	beq	a5,a4,.L47
	li	a4,91
	bgt	a5,a4,.L38
	li	a4,88
	beq	a5,a4,.L37
	li	a4,88
	bgt	a5,a4,.L38
	li	a4,37
	beq	a5,a4,.L48
	li	a4,80
	bne	a5,a4,.L38
.L41:
	.loc 1 223 26
	li	a5,-2147483648
	addi	a5,a5,-1
	sw	a5,-44(s0)
	.loc 1 224 26
	sw	zero,-52(s0)
	.loc 1 225 26
	sw	zero,-96(s0)
	.loc 1 226 21
	j	.L49
.L44:
	.loc 1 229 26
	sw	zero,-52(s0)
	.loc 1 230 26
	li	a5,1
	sw	a5,-96(s0)
	.loc 1 231 21
	j	.L49
.L45:
	.loc 1 234 26
	li	a5,10
	sw	a5,-52(s0)
	.loc 1 235 26
	li	a5,1
	sw	a5,-96(s0)
	.loc 1 236 21
	j	.L49
.L42:
	.loc 1 239 26
	li	a5,8
	sw	a5,-52(s0)
	.loc 1 240 26
	sw	zero,-96(s0)
	.loc 1 241 21
	j	.L49
.L39:
	.loc 1 244 26
	li	a5,10
	sw	a5,-52(s0)
	.loc 1 245 26
	sw	zero,-96(s0)
	.loc 1 246 21
	j	.L49
.L37:
	.loc 1 250 26
	li	a5,16
	sw	a5,-52(s0)
	.loc 1 251 26
	sw	zero,-96(s0)
	.loc 1 252 21
	j	.L49
.L43:
	.loc 1 255 30
	lw	a4,-28(s0)
	lw	a5,-148(s0)
	sub	a5,a4,a5
	.loc 1 255 25
	sw	a5,-40(s0)
	srai	a5,a5,31
	sw	a5,-36(s0)
	.loc 1 256 21
	j	.L50
.L49:
	.loc 1 259 25
	lw	a0,-28(s0)
	call	skipspace
	sw	a0,-28(s0)
	.loc 1 260 26
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	.loc 1 260 24
	bne	a5,zero,.L51
	.loc 1 261 30
	li	a5,1
	sb	a5,-65(s0)
	.loc 1 262 25
	j	.L34
.L51:
	.loc 1 265 25
	addi	a5,s0,-100
	lw	a3,-48(s0)
	lw	a2,-52(s0)
	mv	a1,a5
	lw	a0,-28(s0)
	call	strntoumax
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	.loc 1 267 28
	lw	a5,-100(s0)
	.loc 1 267 24
	lw	a4,-28(s0)
	bne	a4,a5,.L52
	.loc 1 268 30
	li	a5,2
	sb	a5,-65(s0)
	.loc 1 269 25
	j	.L34
.L52:
	.loc 1 271 23
	lw	a5,-100(s0)
	sw	a5,-28(s0)
	.loc 1 272 33
	lw	a5,-56(s0)
	andi	a5,a5,1
	.loc 1 272 24
	bne	a5,zero,.L104
	.loc 1 273 34
	lw	a5,-72(s0)
	addi	a5,a5,1
	sw	a5,-72(s0)
	j	.L50
.L104:
	.loc 1 276 23
	nop
.L50:
	.loc 1 277 33
	lw	a5,-56(s0)
	andi	a5,a5,1
	.loc 1 277 24
	bne	a5,zero,.L105
	.loc 1 278 25
	lw	a4,-44(s0)
	li	a5,-2147483648
	addi	a5,a5,-1
	beq	a4,a5,.L54
	lw	a4,-44(s0)
	li	a5,2
	beq	a4,a5,.L55
	lw	a4,-44(s0)
	li	a5,2
	bgt	a4,a5,.L105
	lw	a4,-44(s0)
	li	a5,1
	beq	a4,a5,.L56
	lw	a4,-44(s0)
	li	a5,1
	bgt	a4,a5,.L105
	lw	a5,-44(s0)
	beq	a5,zero,.L57
	lw	a5,-44(s0)
	bgt	a5,zero,.L105
	lw	a4,-44(s0)
	li	a5,-2
	beq	a4,a5,.L58
	lw	a4,-44(s0)
	li	a5,-1
	beq	a4,a5,.L59
	.loc 1 311 21
	j	.L105
.L58:
	.loc 1 280 29
	lw	a5,-156(s0)
	addi	a4,a5,4
	sw	a4,-156(s0)
	lw	a5,0(a5)
	.loc 1 282 32
	lbu	a4,-40(s0)
	sb	a4,0(a5)
	.loc 1 283 29
	j	.L53
.L59:
	.loc 1 285 29
	lw	a5,-156(s0)
	addi	a4,a5,4
	sw	a4,-156(s0)
	lw	a5,0(a5)
	.loc 1 287 35
	lhu	a4,-40(s0)
	sh	a4,0(a5)
	.loc 1 288 29
	j	.L53
.L57:
	.loc 1 290 29
	lw	a5,-156(s0)
	addi	a4,a5,4
	sw	a4,-156(s0)
	lw	a5,0(a5)
	.loc 1 292 32
	lw	a4,-40(s0)
	sw	a4,0(a5)
	.loc 1 293 29
	j	.L53
.L56:
	.loc 1 295 29
	lw	a5,-156(s0)
	addi	a4,a5,4
	sw	a4,-156(s0)
	lw	a5,0(a5)
	.loc 1 297 32
	lw	a4,-40(s0)
	sw	a4,0(a5)
	.loc 1 298 29
	j	.L53
.L55:
	.loc 1 300 29
	lw	a5,-156(s0)
	addi	a4,a5,4
	sw	a4,-156(s0)
	lw	a3,0(a5)
	.loc 1 302 40
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 303 29
	j	.L53
.L54:
	.loc 1 307 33
	lw	a3,-40(s0)
	.loc 1 305 29
	lw	a5,-156(s0)
	addi	a4,a5,4
	sw	a4,-156(s0)
	lw	a5,0(a5)
	.loc 1 306 33
	mv	a4,a3
	.loc 1 305 49
	sw	a4,0(a5)
	.loc 1 308 29
	nop
.L53:
	.loc 1 311 21
	j	.L105
.L46:
	.loc 1 315 36
	lw	a5,-56(s0)
	andi	a5,a5,4
	.loc 1 315 56
	bne	a5,zero,.L61
	.loc 1 315 27 discriminator 2
	li	a5,1
	sw	a5,-48(s0)
.L61:
	.loc 1 316 31
	lw	a5,-56(s0)
	andi	a5,a5,1
	.loc 1 316 24
	beq	a5,zero,.L62
	.loc 1 317 31
	j	.L63
.L65:
	.loc 1 318 34
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	.loc 1 318 32
	bne	a5,zero,.L63
	.loc 1 319 38
	li	a5,1
	sb	a5,-65(s0)
	.loc 1 320 33
	nop
	.loc 1 335 21
	j	.L106
.L63:
	.loc 1 317 37
	lw	a5,-48(s0)
	addi	a4,a5,-1
	sw	a4,-48(s0)
	.loc 1 317 32
	bne	a5,zero,.L65
	.loc 1 335 21
	j	.L106
.L62:
	.loc 1 324 30
	lw	a5,-156(s0)
	addi	a4,a5,4
	sw	a4,-156(s0)
	lw	a5,0(a5)
	sw	a5,-64(s0)
	.loc 1 325 31
	j	.L67
.L70:
	.loc 1 326 34
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	.loc 1 326 32
	bne	a5,zero,.L68
	.loc 1 327 38
	li	a5,1
	sb	a5,-65(s0)
	.loc 1 328 33
	j	.L69
.L68:
	.loc 1 330 41
	lw	a4,-28(s0)
	addi	a5,a4,1
	sw	a5,-28(s0)
	.loc 1 330 34
	lw	a5,-64(s0)
	addi	a3,a5,1
	sw	a3,-64(s0)
	.loc 1 330 39
	lbu	a4,0(a4)
	.loc 1 330 37
	sb	a4,0(a5)
.L67:
	.loc 1 325 37
	lw	a5,-48(s0)
	addi	a4,a5,-1
	sw	a4,-48(s0)
	.loc 1 325 32
	bne	a5,zero,.L70
.L69:
	.loc 1 332 28
	lbu	a5,-65(s0)
	bne	a5,zero,.L106
	.loc 1 333 38
	lw	a5,-72(s0)
	addi	a5,a5,1
	sw	a5,-72(s0)
	.loc 1 335 21
	j	.L106
.L40:
	.loc 1 338 24
	li	a5,1
	sb	a5,-21(s0)
	.loc 1 339 31
	lw	a5,-56(s0)
	andi	a5,a5,1
	.loc 1 339 24
	beq	a5,zero,.L71
	.loc 1 340 31
	j	.L72
.L74:
	.loc 1 342 30
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L72:
	.loc 1 340 37
	lw	a5,-48(s0)
	addi	a4,a5,-1
	sw	a4,-48(s0)
	.loc 1 340 53
	beq	a5,zero,.L73
	.loc 1 340 47 discriminator 1
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	sb	a5,-21(s0)
	.loc 1 340 40 discriminator 1
	lbu	a5,-21(s0)
	beq	a5,zero,.L73
	.loc 1 341 36
	lbu	a5,-21(s0)
	.loc 1 341 35
	addi	a4,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 341 35
	andi	a5,a5,8
	.loc 1 340 53 discriminator 2
	beq	a5,zero,.L74
	j	.L73
.L71:
.LBB2:
	.loc 1 346 35
	lw	a5,-156(s0)
	addi	a4,a5,4
	sw	a4,-156(s0)
	lw	a5,0(a5)
	sw	a5,-64(s0)
	.loc 1 346 28 discriminator 1
	lw	a5,-64(s0)
	sw	a5,-84(s0)
	.loc 1 347 31
	j	.L75
.L77:
	.loc 1 349 32
	lw	a5,-84(s0)
	addi	a4,a5,1
	sw	a4,-84(s0)
	.loc 1 349 35
	lbu	a4,-21(s0)
	sb	a4,0(a5)
	.loc 1 350 30
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L75:
	.loc 1 347 37
	lw	a5,-48(s0)
	addi	a4,a5,-1
	sw	a4,-48(s0)
	.loc 1 347 53
	beq	a5,zero,.L76
	.loc 1 347 47 discriminator 1
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	sb	a5,-21(s0)
	.loc 1 347 40 discriminator 1
	lbu	a5,-21(s0)
	beq	a5,zero,.L76
	.loc 1 348 36
	lbu	a5,-21(s0)
	.loc 1 348 35
	addi	a4,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 348 35
	andi	a5,a5,8
	.loc 1 347 53 discriminator 2
	beq	a5,zero,.L77
.L76:
	.loc 1 352 28
	lw	a4,-64(s0)
	lw	a5,-84(s0)
	beq	a4,a5,.L73
	.loc 1 354 33
	lw	a5,-84(s0)
	sb	zero,0(a5)
	.loc 1 355 38
	lw	a5,-72(s0)
	addi	a5,a5,1
	sw	a5,-72(s0)
.L73:
.LBE2:
	.loc 1 358 24
	lbu	a5,-21(s0)
	bne	a5,zero,.L107
	.loc 1 359 30
	li	a5,1
	sb	a5,-65(s0)
	.loc 1 360 21
	j	.L107
.L47:
	.loc 1 363 35
	lw	a5,-56(s0)
	andi	a5,a5,1
	.loc 1 364 24
	bne	a5,zero,.L79
	.loc 1 363 26
	lw	a5,-156(s0)
	addi	a4,a5,4
	sw	a4,-156(s0)
	lw	a5,0(a5)
	sw	a5,-64(s0)
	j	.L80
.L79:
	sw	zero,-64(s0)
.L80:
	.loc 1 365 27
	li	a5,4
	sb	a5,-57(s0)
	.loc 1 366 30
	sw	zero,-76(s0)
	.loc 1 367 21
	addi	a5,s0,-132
	li	a2,32
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 368 21
	j	.L34
.L48:
	.loc 1 371 25
	lw	a5,-28(s0)
	lbu	a4,0(a5)
	.loc 1 371 24
	li	a5,37
	bne	a4,a5,.L81
	.loc 1 372 26
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
	.loc 1 375 21
	j	.L34
.L81:
	.loc 1 374 30
	li	a5,2
	sb	a5,-65(s0)
	.loc 1 375 21
	j	.L34
.L38:
	.loc 1 379 26
	li	a5,2
	sb	a5,-65(s0)
	.loc 1 380 21
	j	.L34
.L105:
	.loc 1 311 21
	nop
	j	.L9
.L106:
	.loc 1 335 21
	nop
	j	.L9
.L107:
	.loc 1 360 21
	nop
.L34:
	.loc 1 383 13
	j	.L9
.L13:
	.loc 1 386 16
	lbu	a4,-89(s0)
	li	a5,94
	bne	a4,a5,.L83
	.loc 1 386 38 discriminator 1
	lw	a5,-56(s0)
	andi	a5,a5,2
	.loc 1 386 27 discriminator 1
	bne	a5,zero,.L83
	.loc 1 387 26
	li	a5,1
	sw	a5,-76(s0)
	.loc 1 392 13
	j	.L9
.L83:
	.loc 1 389 17
	lbu	a4,-89(s0)
	addi	a5,s0,-132
	mv	a1,a4
	mv	a0,a5
	call	set_bit
	.loc 1 390 23
	li	a5,5
	sb	a5,-57(s0)
	.loc 1 392 13
	j	.L9
.L12:
	.loc 1 395 16
	lbu	a4,-89(s0)
	li	a5,93
	beq	a4,a5,.L108
	.loc 1 397 23
	lbu	a4,-89(s0)
	li	a5,45
	bne	a4,a5,.L87
	.loc 1 398 29
	lbu	a5,-89(s0)
	sb	a5,-77(s0)
	.loc 1 399 23
	li	a5,6
	sb	a5,-57(s0)
	.loc 1 403 13
	j	.L9
.L87:
	.loc 1 401 17
	lbu	a4,-89(s0)
	addi	a5,s0,-132
	mv	a1,a4
	mv	a0,a5
	call	set_bit
	.loc 1 403 13
	j	.L9
.L10:
	.loc 1 406 16
	lbu	a4,-89(s0)
	li	a5,93
	bne	a4,a5,.L89
	.loc 1 408 17
	addi	a5,s0,-132
	li	a1,45
	mv	a0,a5
	call	set_bit
	.loc 1 409 17
	j	.L86
.L89:
.LBB3:
	.loc 1 412 24
	lbu	a5,-77(s0)
	sw	a5,-88(s0)
	.loc 1 412 17
	j	.L90
.L91:
	.loc 1 414 21
	lw	a4,-88(s0)
	addi	a5,s0,-132
	mv	a1,a4
	mv	a0,a5
	call	set_bit
	.loc 1 413 23
	lw	a5,-88(s0)
	addi	a5,a5,1
	sw	a5,-88(s0)
.L90:
	.loc 1 412 43 discriminator 1
	lbu	a5,-89(s0)
	.loc 1 412 41 discriminator 1
	lw	a4,-88(s0)
	blt	a4,a5,.L91
	.loc 1 415 23
	li	a5,5
	sb	a5,-57(s0)
.LBE3:
	.loc 1 417 13
	j	.L9
.L108:
	.loc 1 396 17
	nop
.L86:
	.loc 1 420 16
	lw	a5,-28(s0)
	sw	a5,-100(s0)
	.loc 1 421 16
	li	a5,1
	sb	a5,-21(s0)
	.loc 1 422 19
	j	.L92
.L95:
	.loc 1 424 20
	lw	a5,-64(s0)
	beq	a5,zero,.L93
	.loc 1 425 26
	lw	a5,-64(s0)
	addi	a4,a5,1
	sw	a4,-64(s0)
	.loc 1 425 29
	lbu	a4,-21(s0)
	sb	a4,0(a5)
.L93:
	.loc 1 426 18
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L92:
	.loc 1 423 20
	lw	a5,-48(s0)
	beq	a5,zero,.L94
	.loc 1 422 33
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	sb	a5,-21(s0)
	.loc 1 422 26
	lbu	a5,-21(s0)
	beq	a5,zero,.L94
	.loc 1 423 23
	lbu	a4,-21(s0)
	addi	a5,s0,-132
	mv	a1,a4
	mv	a0,a5
	call	test_bit
	mv	a4,a0
	.loc 1 423 20 discriminator 1
	lw	a5,-76(s0)
	bne	a5,a4,.L95
.L94:
	.loc 1 428 19
	lw	a5,-100(s0)
	.loc 1 428 16
	lw	a4,-28(s0)
	beq	a4,a5,.L96
	.loc 1 428 25 discriminator 1
	lw	a5,-64(s0)
	beq	a5,zero,.L96
	.loc 1 429 23
	lw	a5,-64(s0)
	sb	zero,0(a5)
	.loc 1 430 26
	lw	a5,-72(s0)
	addi	a5,a5,1
	sw	a5,-72(s0)
	j	.L97
.L96:
	.loc 1 432 22
	li	a5,2
	sb	a5,-65(s0)
.L97:
	.loc 1 434 16
	lbu	a5,-21(s0)
	bne	a5,zero,.L109
	.loc 1 435 22
	li	a5,1
	sb	a5,-65(s0)
.L109:
	.loc 1 436 13
	nop
.L9:
	.loc 1 133 20
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 133 16
	lbu	a5,0(a5)
	sb	a5,-89(s0)
	.loc 1 133 24
	lbu	a5,-89(s0)
	beq	a5,zero,.L99
	.loc 1 133 24 is_stmt 0 discriminator 1
	lbu	a5,-65(s0)
	beq	a5,zero,.L100
.L99:
	.loc 1 440 8 is_stmt 1
	lbu	a4,-65(s0)
	li	a5,1
	bne	a4,a5,.L101
	.loc 1 440 26 discriminator 1
	lw	a5,-72(s0)
	bne	a5,zero,.L101
	.loc 1 441 19
	li	a5,-1
	sw	a5,-72(s0)
.L101:
	.loc 1 443 12
	lw	a5,-72(s0)
	.loc 1 444 1
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
.LFE8:
	.size	vsscanf, .-vsscanf
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdarg.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/ctype.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x432
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x11
	.4byte	.LASF62
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
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x12
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xc
	.4byte	0x9b
	.4byte	0x8f
	.uleb128 0x13
	.byte	0
	.uleb128 0xd
	.4byte	0x84
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xd
	.4byte	0x94
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x6
	.byte	0x46
	.byte	0x13
	.4byte	0x8f
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x3
	.byte	0x28
	.byte	0x1b
	.4byte	0xb8
	.uleb128 0x15
	.byte	0x4
	.4byte	.LASF64
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x3
	.byte	0x67
	.byte	0x18
	.4byte	0xac
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x4
	.byte	0x56
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.byte	0x5c
	.byte	0x20
	.4byte	0x5c
	.uleb128 0x16
	.byte	0x4
	.uleb128 0x7
	.4byte	0x94
	.uleb128 0x7
	.4byte	0x9b
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x38
	.4byte	0x117
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x5
	.byte	0x4
	.4byte	0x63
	.byte	0x3f
	.4byte	0x14f
	.uleb128 0xe
	.4byte	.LASF24
	.sleb128 -2
	.uleb128 0xe
	.4byte	.LASF25
	.sleb128 -1
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x2
	.uleb128 0x17
	.4byte	.LASF29
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x4f
	.4byte	0x172
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x5
	.byte	0x21
	.byte	0x8
	.4byte	0xe2
	.4byte	0x192
	.uleb128 0x4
	.4byte	0xe2
	.uleb128 0x4
	.4byte	0x63
	.uleb128 0x4
	.4byte	0x71
	.byte	0
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x1
	.byte	0x36
	.byte	0xb
	.4byte	0xd6
	.4byte	0x1b7
	.uleb128 0x4
	.4byte	0xe9
	.uleb128 0x4
	.4byte	0x1b7
	.uleb128 0x4
	.4byte	0x63
	.uleb128 0x4
	.4byte	0x71
	.byte	0
	.uleb128 0x7
	.4byte	0xe4
	.uleb128 0x18
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x118
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x393
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x68
	.byte	0x19
	.4byte	0xe9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x68
	.byte	0x2d
	.4byte	0xe9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x9
	.string	"ap"
	.byte	0x68
	.byte	0x3d
	.4byte	0xbe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x5
	.string	"p"
	.byte	0x6a
	.byte	0x11
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"ch"
	.byte	0x6b
	.byte	0xa
	.4byte	0x94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -89
	.uleb128 0x5
	.string	"uc"
	.byte	0x6c
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x5
	.string	"q"
	.byte	0x6d
	.byte	0x11
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.string	"qq"
	.byte	0x6e
	.byte	0x11
	.4byte	0xe9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x5
	.string	"val"
	.byte	0x6f
	.byte	0xf
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x70
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x71
	.byte	0x12
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x72
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0x73
	.byte	0x12
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x1
	.byte	0x74
	.byte	0xa
	.4byte	0x2c3
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x7c
	.byte	0x7
	.4byte	0x28a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x7d
	.byte	0xb
	.4byte	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x7e
	.byte	0xf
	.4byte	0x14f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0x7f
	.byte	0x21
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x80
	.byte	0x9
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0x81
	.byte	0x13
	.4byte	0x393
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0x82
	.byte	0x9
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0x83
	.byte	0x13
	.4byte	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.uleb128 0xb
	.4byte	.LASF56
	.2byte	0x102
	.byte	0x17
	.4byte	.L49
	.uleb128 0xb
	.4byte	.LASF57
	.2byte	0x114
	.byte	0x17
	.4byte	.L50
	.uleb128 0xb
	.4byte	.LASF58
	.2byte	0x1a3
	.byte	0xf
	.4byte	.L86
	.uleb128 0x1a
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x37a
	.uleb128 0x10
	.string	"sp"
	.2byte	0x159
	.byte	0x1f
	.4byte	0xe4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x10
	.string	"i"
	.2byte	0x19b
	.byte	0x15
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x4e
	.4byte	0x3a3
	.uleb128 0x1c
	.4byte	0x6a
	.byte	0x7
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF66
	.byte	0x1
	.byte	0x63
	.byte	0x15
	.4byte	0x63
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3da
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x63
	.byte	0x2d
	.4byte	0x3da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"bit"
	.byte	0x63
	.byte	0x42
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.4byte	0x4e
	.uleb128 0x1e
	.4byte	.LASF60
	.byte	0x1
	.byte	0x5d
	.byte	0x16
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x412
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x5d
	.byte	0x2d
	.4byte	0x3da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"bit"
	.byte	0x5d
	.byte	0x42
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF61
	.byte	0x1
	.byte	0x55
	.byte	0x1d
	.4byte	0xe9
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.string	"p"
	.byte	0x55
	.byte	0x33
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xa
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x19
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.4byte	0x34
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF45:
	.string	"st_modifiers"
.LASF13:
	.string	"size_t"
.LASF16:
	.string	"uintptr_t"
.LASF23:
	.string	"ranks"
.LASF15:
	.string	"va_list"
.LASF52:
	.string	"converted"
.LASF9:
	.string	"long long unsigned int"
.LASF43:
	.string	"st_flags"
.LASF65:
	.string	"vsscanf"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF17:
	.string	"uintmax_t"
.LASF30:
	.string	"bail"
.LASF49:
	.string	"state"
.LASF6:
	.string	"long int"
.LASF64:
	.string	"__builtin_va_list"
.LASF32:
	.string	"bail_eof"
.LASF48:
	.string	"st_match_range"
.LASF46:
	.string	"st_match_init"
.LASF29:
	.string	"rank_ptr"
.LASF54:
	.string	"matchinv"
.LASF44:
	.string	"st_width"
.LASF31:
	.string	"bail_none"
.LASF10:
	.string	"unsigned int"
.LASF7:
	.string	"long unsigned int"
.LASF38:
	.string	"rank"
.LASF39:
	.string	"width"
.LASF27:
	.string	"rank_long"
.LASF5:
	.string	"short unsigned int"
.LASF42:
	.string	"st_normal"
.LASF57:
	.string	"set_integer"
.LASF40:
	.string	"base"
.LASF11:
	.string	"long double"
.LASF14:
	.string	"__gnuc_va_list"
.LASF56:
	.string	"scan_int"
.LASF18:
	.string	"FL_SPLAT"
.LASF58:
	.string	"match_run"
.LASF3:
	.string	"unsigned char"
.LASF33:
	.string	"bail_err"
.LASF61:
	.string	"skipspace"
.LASF4:
	.string	"short int"
.LASF22:
	.string	"flag"
.LASF66:
	.string	"test_bit"
.LASF37:
	.string	"format"
.LASF55:
	.string	"range_start"
.LASF26:
	.string	"rank_int"
.LASF12:
	.string	"char"
.LASF47:
	.string	"st_match"
.LASF50:
	.string	"sarg"
.LASF63:
	.string	"_ctype_"
.LASF36:
	.string	"buffer"
.LASF19:
	.string	"FL_INV"
.LASF62:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF20:
	.string	"FL_WIDTH"
.LASF53:
	.string	"matchmap"
.LASF34:
	.string	"memset"
.LASF25:
	.string	"rank_short"
.LASF21:
	.string	"FL_MINUS"
.LASF60:
	.string	"set_bit"
.LASF51:
	.string	"sign"
.LASF35:
	.string	"strntoumax"
.LASF41:
	.string	"flags"
.LASF59:
	.string	"bitmap"
.LASF24:
	.string	"rank_char"
.LASF28:
	.string	"rank_longlong"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602/evb/src/vsscanf.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
