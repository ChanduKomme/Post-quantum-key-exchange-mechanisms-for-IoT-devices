	.file	"utils_list.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils" "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_list.c"
	.section	.text.utils_list_is_empty,"ax",@progbits
	.align	1
	.type	utils_list_is_empty, @function
utils_list_is_empty:
.LFB1:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_list.h"
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
	sw	a0,-20(s0)
	.loc 1 222 24
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 222 17
	seqz	a5,a5
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
.LFE1:
	.size	utils_list_is_empty, .-utils_list_is_empty
	.section	.text.utils_list_pick,"ax",@progbits
	.align	1
	.type	utils_list_pick, @function
utils_list_pick:
.LFB2:
	.loc 1 246 1
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
	.loc 1 247 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 248 1
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
.LFE2:
	.size	utils_list_pick, .-utils_list_pick
	.section	.text.utils_list_next,"ax",@progbits
	.align	1
	.type	utils_list_next, @function
utils_list_next:
.LFB4:
	.loc 1 256 1
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
	.loc 1 257 20
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 258 1
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
	.size	utils_list_next, .-utils_list_next
	.section	.text.utils_list_init,"ax",@progbits
	.align	1
	.globl	utils_list_init
	.type	utils_list_init, @function
utils_list_init:
.LFB19:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_list.c"
	.loc 2 38 1
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
	.loc 2 39 17
	lw	a5,-20(s0)
	sw	zero,0(a5)
	.loc 2 40 16
	lw	a5,-20(s0)
	sw	zero,4(a5)
	.loc 2 41 1
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
.LFE19:
	.size	utils_list_init, .-utils_list_init
	.section	.text.utils_list_pool_init,"ax",@progbits
	.align	1
	.globl	utils_list_pool_init
	.type	utils_list_pool_init, @function
utils_list_pool_init:
.LFB20:
	.loc 2 44 1
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
	.loc 2 48 5
	lw	a0,-36(s0)
	call	utils_list_init
	.loc 2 51 12
	sw	zero,-20(s0)
	.loc 2 51 5
	j	.L9
.L11:
	.loc 2 52 12
	lw	a5,-52(s0)
	beq	a5,zero,.L10
	.loc 2 54 13
	lw	a2,-44(s0)
	lw	a1,-52(s0)
	lw	a0,-40(s0)
	call	memcpy
.L10:
	.loc 2 56 9
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	utils_list_push_back
	.loc 2 59 14
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 2 51 32 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L9:
	.loc 2 51 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-48(s0)
	bltu	a4,a5,.L11
	.loc 2 61 1
	nop
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
.LFE20:
	.size	utils_list_pool_init, .-utils_list_pool_init
	.section	.text.utils_list_push_back,"ax",@progbits
	.align	1
	.globl	utils_list_push_back
	.type	utils_list_push_back, @function
utils_list_push_back:
.LFB21:
	.loc 2 64 1
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
	.loc 2 70 9
	lw	a0,-20(s0)
	call	utils_list_is_empty
	mv	a5,a0
	.loc 2 70 8 discriminator 1
	beq	a5,zero,.L13
	.loc 2 73 21
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	j	.L14
.L13:
	.loc 2 78 13
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 2 78 26
	lw	a4,-24(s0)
	sw	a4,0(a5)
.L14:
	.loc 2 82 16
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	.loc 2 83 20
	lw	a5,-24(s0)
	sw	zero,0(a5)
	.loc 2 84 1
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
.LFE21:
	.size	utils_list_push_back, .-utils_list_push_back
	.section	.text.utils_list_push_front,"ax",@progbits
	.align	1
	.globl	utils_list_push_front
	.type	utils_list_push_front, @function
utils_list_push_front:
.LFB22:
	.loc 2 87 1
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
	.loc 2 93 9
	lw	a0,-20(s0)
	call	utils_list_is_empty
	mv	a5,a0
	.loc 2 93 8 discriminator 1
	beq	a5,zero,.L16
	.loc 2 96 20
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,4(a5)
.L16:
	.loc 2 100 26
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 100 20
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 2 101 17
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 2 102 1
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
	.size	utils_list_push_front, .-utils_list_push_front
	.section	.text.utils_list_pop_front,"ax",@progbits
	.align	1
	.globl	utils_list_pop_front
	.type	utils_list_pop_front, @function
utils_list_pop_front:
.LFB23:
	.loc 2 105 1
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
	.loc 2 109 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 2 110 8
	lw	a5,-20(s0)
	beq	a5,zero,.L18
	.loc 2 113 27
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 113 34
	lw	a4,0(a5)
	.loc 2 113 21
	lw	a5,-36(s0)
	sw	a4,0(a5)
.L18:
	.loc 2 116 12
	lw	a5,-20(s0)
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
.LFE23:
	.size	utils_list_pop_front, .-utils_list_pop_front
	.section	.text.utils_list_extract,"ax",@progbits
	.align	1
	.globl	utils_list_extract
	.type	utils_list_extract, @function
utils_list_extract:
.LFB24:
	.loc 2 120 1
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
	.loc 2 127 15
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 2 130 8
	lw	a5,-20(s0)
	beq	a5,zero,.L28
	.loc 2 134 8
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bne	a4,a5,.L24
	.loc 2 137 32
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 137 21
	lw	a5,-36(s0)
	sw	a4,0(a5)
	j	.L20
.L26:
	.loc 2 144 23
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L24:
	.loc 2 142 26
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 2 142 41
	beq	a5,zero,.L25
	.loc 2 142 54 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 2 142 41 discriminator 1
	lw	a4,-40(s0)
	bne	a4,a5,.L26
.L25:
	.loc 2 148 22
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 2 148 12
	beq	a5,zero,.L20
	.loc 2 151 21
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 2 151 16
	lw	a4,-40(s0)
	bne	a4,a5,.L27
	.loc 2 154 28
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,4(a5)
.L27:
	.loc 2 157 39
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 157 29
	lw	a5,-20(s0)
	sw	a4,0(a5)
	j	.L20
.L28:
	.loc 2 131 9
	nop
.L20:
	.loc 2 160 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE24:
	.size	utils_list_extract, .-utils_list_extract
	.section	.text.utils_list_find,"ax",@progbits
	.align	1
	.globl	utils_list_find
	.type	utils_list_find, @function
utils_list_find:
.LFB25:
	.loc 2 163 1
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
	.loc 2 167 18
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 2 168 10
	j	.L30
.L32:
	.loc 2 170 22
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L30:
	.loc 2 168 38
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	beq	a4,a5,.L31
	.loc 2 168 38 is_stmt 0 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L32
.L31:
	.loc 2 173 26 is_stmt 1
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	sub	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 2 174 1
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
.LFE25:
	.size	utils_list_find, .-utils_list_find
	.section	.text.utils_list_cnt,"ax",@progbits
	.align	1
	.globl	utils_list_cnt
	.type	utils_list_cnt, @function
utils_list_cnt:
.LFB26:
	.loc 2 177 1
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
	.loc 2 178 18
	sw	zero,-20(s0)
	.loc 2 179 34
	lw	a0,-36(s0)
	call	utils_list_pick
	sw	a0,-24(s0)
	.loc 2 182 11
	j	.L35
.L36:
	.loc 2 184 12
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 2 185 15
	lw	a0,-24(s0)
	call	utils_list_next
	sw	a0,-24(s0)
.L35:
	.loc 2 182 16
	lw	a5,-24(s0)
	bne	a5,zero,.L36
	.loc 2 188 11
	lw	a5,-20(s0)
	.loc 2 189 1
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
.LFE26:
	.size	utils_list_cnt, .-utils_list_cnt
	.section	.text.utils_list_insert,"ax",@progbits
	.align	1
	.globl	utils_list_insert
	.type	utils_list_insert, @function
utils_list_insert:
.LFB27:
	.loc 2 208 1
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
	.loc 2 209 28
	sw	zero,-20(s0)
	.loc 2 210 28
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
.L43:
	.loc 2 215 12
	lw	a5,-24(s0)
	beq	a5,zero,.L39
	.loc 2 217 17
	lw	a5,-44(s0)
	lw	a1,-24(s0)
	lw	a0,-40(s0)
	jalr	a5
.LVL0:
	mv	a5,a0
	.loc 2 217 16 discriminator 1
	bne	a5,zero,.L47
	.loc 2 222 18
	lw	a5,-24(s0)
	sw	a5,-20(s0)
	.loc 2 223 18
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	j	.L43
.L39:
	.loc 2 228 24
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,4(a5)
	.loc 2 229 13
	j	.L41
.L47:
	.loc 2 220 17
	nop
.L41:
	.loc 2 233 19
	lw	a5,-40(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 2 235 8
	lw	a5,-20(s0)
	beq	a5,zero,.L44
	.loc 2 238 20
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	.loc 2 245 1
	j	.L48
.L44:
	.loc 2 243 21
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
.L48:
	.loc 2 245 1
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
.LFE27:
	.size	utils_list_insert, .-utils_list_insert
	.section	.text.utils_list_insert_after,"ax",@progbits
	.align	1
	.globl	utils_list_insert_after
	.type	utils_list_insert_after, @function
utils_list_insert_after:
.LFB28:
	.loc 2 248 1
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
	.loc 2 249 28
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 2 251 8
	lw	a5,-40(s0)
	bne	a5,zero,.L52
	.loc 2 254 9
	lw	a1,-44(s0)
	lw	a0,-36(s0)
	call	utils_list_push_front
	.loc 2 282 1
	j	.L57
.L55:
	.loc 2 261 16
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	beq	a4,a5,.L56
	.loc 2 267 18
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L52:
	.loc 2 259 16
	lw	a5,-20(s0)
	bne	a5,zero,.L55
	j	.L54
.L56:
	.loc 2 263 17
	nop
.L54:
	.loc 2 271 12
	lw	a5,-20(s0)
	beq	a5,zero,.L57
	.loc 2 273 41
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 273 27
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 2 274 32
	lw	a5,-40(s0)
	lw	a4,-44(s0)
	sw	a4,0(a5)
	.loc 2 276 24
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 2 276 16
	bne	a5,zero,.L57
	.loc 2 278 28
	lw	a5,-36(s0)
	lw	a4,-44(s0)
	sw	a4,4(a5)
.L57:
	.loc 2 282 1
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
.LFE28:
	.size	utils_list_insert_after, .-utils_list_insert_after
	.section	.text.utils_list_insert_before,"ax",@progbits
	.align	1
	.globl	utils_list_insert_before
	.type	utils_list_insert_before, @function
utils_list_insert_before:
.LFB29:
	.loc 2 285 1
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
	.loc 2 286 8
	lw	a5,-40(s0)
	bne	a5,zero,.L59
	.loc 2 289 9
	lw	a1,-44(s0)
	lw	a0,-36(s0)
	call	utils_list_push_back
	.loc 2 319 1
	j	.L67
.L59:
	.loc 2 291 34
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 291 13
	lw	a4,-40(s0)
	bne	a4,a5,.L61
	.loc 2 294 9
	lw	a1,-44(s0)
	lw	a0,-36(s0)
	call	utils_list_push_front
	.loc 2 319 1
	j	.L67
.L61:
.LBB2:
	.loc 2 298 32
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 2 301 15
	j	.L62
.L65:
	.loc 2 303 21
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 2 303 16
	lw	a4,-40(s0)
	beq	a4,a5,.L66
	.loc 2 309 18
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L62:
	.loc 2 301 16
	lw	a5,-20(s0)
	bne	a5,zero,.L65
	j	.L64
.L66:
	.loc 2 305 17
	nop
.L64:
	.loc 2 313 12
	lw	a5,-20(s0)
	beq	a5,zero,.L67
	.loc 2 315 27
	lw	a5,-44(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	.loc 2 316 24
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	sw	a4,0(a5)
.L67:
.LBE2:
	.loc 2 319 1
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
.LFE29:
	.size	utils_list_insert_before, .-utils_list_insert_before
	.section	.text.utils_list_concat,"ax",@progbits
	.align	1
	.globl	utils_list_concat
	.type	utils_list_concat, @function
utils_list_concat:
.LFB30:
	.loc 2 322 1
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
	.loc 2 324 14
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 2 324 8
	beq	a5,zero,.L72
	.loc 2 327 18
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 2 327 12
	bne	a5,zero,.L70
	.loc 2 330 20
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	lw	a3,0(a4)
	sw	a3,0(a5)
	lw	a4,4(a4)
	sw	a4,4(a5)
	j	.L71
.L70:
	.loc 2 335 18
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 2 335 38
	lw	a4,-24(s0)
	lw	a4,0(a4)
	.loc 2 335 31
	sw	a4,0(a5)
	.loc 2 336 32
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 2 336 25
	lw	a5,-20(s0)
	sw	a4,4(a5)
.L71:
	.loc 2 339 22
	lw	a5,-24(s0)
	sw	zero,0(a5)
.L72:
	.loc 2 341 1
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
.LFE30:
	.size	utils_list_concat, .-utils_list_concat
	.section	.text.utils_list_remove,"ax",@progbits
	.align	1
	.globl	utils_list_remove
	.type	utils_list_remove, @function
utils_list_remove:
.LFB31:
	.loc 2 345 1
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
	.loc 2 353 8
	lw	a5,-24(s0)
	bne	a5,zero,.L74
	.loc 2 355 30
	lw	a5,-28(s0)
	lw	a4,0(a5)
	.loc 2 355 21
	lw	a5,-20(s0)
	sw	a4,0(a5)
	j	.L75
.L74:
	.loc 2 359 37
	lw	a5,-28(s0)
	lw	a4,0(a5)
	.loc 2 359 28
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 2 360 17
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 2 360 12
	lw	a4,-28(s0)
	bne	a4,a5,.L75
	.loc 2 361 24
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,4(a5)
.L75:
	.loc 2 364 19
	lw	a5,-28(s0)
	sw	zero,0(a5)
	.loc 2 365 1
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
.LFE31:
	.size	utils_list_remove, .-utils_list_remove
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x538
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x14
	.byte	0x4
	.uleb128 0xc
	.4byte	0x84
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x5a
	.uleb128 0xd
	.4byte	.LASF15
	.byte	0x4
	.byte	0x26
	.4byte	0xb5
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x28
	.4byte	0xba
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0x9e
	.uleb128 0x5
	.4byte	0x9e
	.uleb128 0x4
	.4byte	0xba
	.uleb128 0xd
	.4byte	.LASF16
	.byte	0x8
	.byte	0x2b
	.4byte	0xe6
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x2e
	.4byte	0xba
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x30
	.4byte	0xba
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	0xc4
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0x5
	.byte	0x1f
	.byte	0x8
	.4byte	0x84
	.4byte	0x10b
	.uleb128 0x7
	.4byte	0x86
	.uleb128 0x7
	.4byte	0x110
	.uleb128 0x7
	.4byte	0x32
	.byte	0
	.uleb128 0x5
	.4byte	0x115
	.uleb128 0xc
	.4byte	0x10b
	.uleb128 0x16
	.uleb128 0xe
	.4byte	.LASF23
	.2byte	0x158
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x159
	.uleb128 0x3
	.4byte	.LASF20
	.2byte	0x158
	.byte	0x2b
	.4byte	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF21
	.2byte	0x158
	.byte	0x48
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF22
	.2byte	0x158
	.byte	0x6d
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x5
	.4byte	0xc4
	.uleb128 0x4
	.4byte	0x159
	.uleb128 0xe
	.4byte	.LASF24
	.2byte	0x141
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x197
	.uleb128 0x3
	.4byte	.LASF25
	.2byte	0x141
	.byte	0x2b
	.4byte	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF26
	.2byte	0x141
	.byte	0x45
	.4byte	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.4byte	.LASF27
	.byte	0x2
	.2byte	0x11c
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f6
	.uleb128 0x3
	.4byte	.LASF20
	.2byte	0x11c
	.byte	0x39
	.4byte	0x15e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF28
	.2byte	0x11c
	.byte	0x5d
	.4byte	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF22
	.2byte	0x11c
	.byte	0x89
	.4byte	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x19
	.4byte	.LASF30
	.byte	0x2
	.2byte	0x12a
	.byte	0x20
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0xf7
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x245
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x2
	.byte	0xf7
	.byte	0x38
	.4byte	0x15e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x2
	.byte	0xf7
	.byte	0x5c
	.4byte	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x2
	.byte	0xf7
	.byte	0x88
	.4byte	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0xf9
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0xce
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a1
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x2
	.byte	0xce
	.byte	0x32
	.4byte	0x15e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x2
	.byte	0xce
	.byte	0x56
	.4byte	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.string	"cmp"
	.byte	0x2
	.byte	0xcf
	.byte	0x1b
	.4byte	0x2bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0xd1
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0xd2
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.4byte	0x2b
	.4byte	0x2b5
	.uleb128 0x7
	.4byte	0x2b5
	.uleb128 0x7
	.4byte	0x2b5
	.byte	0
	.uleb128 0x5
	.4byte	0xb5
	.uleb128 0x4
	.4byte	0x2b5
	.uleb128 0x5
	.4byte	0x2a1
	.uleb128 0x1c
	.4byte	.LASF33
	.byte	0x2
	.byte	0xb0
	.byte	0xe
	.4byte	0x3e
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30a
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x2
	.byte	0xb0
	.byte	0x3c
	.4byte	0x30f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"cnt"
	.byte	0xb2
	.byte	0x12
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"elt"
	.byte	0xb3
	.byte	0x1c
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	0xe6
	.uleb128 0x4
	.4byte	0x30a
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0xa2
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x359
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x2
	.byte	0xa2
	.byte	0x28
	.4byte	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x2
	.byte	0xa2
	.byte	0x45
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0xa4
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x77
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x399
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x2
	.byte	0x77
	.byte	0x2c
	.4byte	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x2
	.byte	0x77
	.byte	0x49
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x79
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x68
	.byte	0x18
	.4byte	0xba
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3cf
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x2
	.byte	0x68
	.byte	0x40
	.4byte	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x6a
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x56
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x402
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x2
	.byte	0x56
	.byte	0x2f
	.4byte	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x2
	.byte	0x56
	.byte	0x4c
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x3f
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x435
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x2
	.byte	0x3f
	.byte	0x2e
	.4byte	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x2
	.byte	0x3f
	.byte	0x4b
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x2b
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a1
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x2
	.byte	0x2b
	.byte	0x2e
	.4byte	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x2
	.byte	0x2b
	.byte	0x3a
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x2
	.byte	0x2b
	.byte	0x47
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x2
	.byte	0x2b
	.byte	0x5f
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x2
	.byte	0x2b
	.byte	0x6f
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xa
	.string	"i"
	.byte	0x2d
	.byte	0x12
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x25
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c5
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x2
	.byte	0x25
	.byte	0x29
	.4byte	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0xff
	.4byte	0xba
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ed
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x1
	.byte	0xff
	.byte	0x59
	.4byte	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0xf5
	.4byte	0xba
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x515
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x1
	.byte	0xf5
	.byte	0x55
	.4byte	0x30f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF52
	.byte	0x1
	.byte	0xdc
	.byte	0x13
	.4byte	0x2b
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x1
	.byte	0xdc
	.byte	0x46
	.4byte	0x30f
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
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
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 28
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.sleb128 28
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x7a
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
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 38
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x94
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
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
	.4byte	.LFB1
	.uleb128 .LFE1-.LFB1
	.byte	0x7
	.4byte	.LFB2
	.uleb128 .LFE2-.LFB2
	.byte	0x7
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF39:
	.string	"utils_list_pop_front"
.LASF20:
	.string	"list"
.LASF12:
	.string	"char"
.LASF13:
	.string	"size_t"
.LASF17:
	.string	"next"
.LASF45:
	.string	"elmt_cnt"
.LASF41:
	.string	"utils_list_push_back"
.LASF37:
	.string	"utils_list_extract"
.LASF30:
	.string	"scan"
.LASF43:
	.string	"pool"
.LASF21:
	.string	"prev_element"
.LASF48:
	.string	"utils_list_next"
.LASF18:
	.string	"first"
.LASF27:
	.string	"utils_list_insert_before"
.LASF38:
	.string	"scan_list"
.LASF16:
	.string	"utils_list"
.LASF6:
	.string	"unsigned char"
.LASF46:
	.string	"default_value"
.LASF8:
	.string	"short unsigned int"
.LASF42:
	.string	"utils_list_pool_init"
.LASF33:
	.string	"utils_list_cnt"
.LASF34:
	.string	"utils_list_find"
.LASF10:
	.string	"long unsigned int"
.LASF7:
	.string	"short int"
.LASF2:
	.string	"unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF26:
	.string	"list2"
.LASF47:
	.string	"utils_list_init"
.LASF24:
	.string	"utils_list_concat"
.LASF29:
	.string	"utils_list_insert_after"
.LASF36:
	.string	"tmp_list_hdr"
.LASF40:
	.string	"utils_list_push_front"
.LASF14:
	.string	"uint8_t"
.LASF3:
	.string	"long long int"
.LASF51:
	.string	"memcpy"
.LASF22:
	.string	"element"
.LASF23:
	.string	"utils_list_remove"
.LASF49:
	.string	"utils_list_pick"
.LASF50:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF44:
	.string	"elmt_size"
.LASF15:
	.string	"utils_list_hdr"
.LASF9:
	.string	"long int"
.LASF35:
	.string	"list_hdr"
.LASF4:
	.string	"long double"
.LASF5:
	.string	"signed char"
.LASF28:
	.string	"next_element"
.LASF52:
	.string	"utils_list_is_empty"
.LASF19:
	.string	"last"
.LASF32:
	.string	"prev"
.LASF25:
	.string	"list1"
.LASF31:
	.string	"utils_list_insert"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_list.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
