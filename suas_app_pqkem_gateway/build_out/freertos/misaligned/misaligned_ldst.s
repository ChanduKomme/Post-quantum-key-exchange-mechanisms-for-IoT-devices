	.file	"misaligned_ldst.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/freertos" "/home/chandu/sdk/bl602_iot_sdk/components/freertos/misaligned/misaligned_ldst.c"
	.section	.text.load_uint8_t,"ax",@progbits
	.align	1
	.type	load_uint8_t, @function
load_uint8_t:
.LFB0:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/misaligned/unprivileged_memory.h"
	.loc 1 39 73
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
	.loc 1 39 94
	li	a1,131072
	.loc 1 39 155
	lw	a2,-40(s0)
	.loc 1 39 235
	lw	a5,-36(s0)
 #APP
# 39 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/misaligned/unprivileged_memory.h" 1
	csrrs a3, mstatus, a1
lbu a4, 0(a5)
csrw mstatus, a3
# 0 "" 2
 #NO_APP
	mv	a5,a4
	sb	a5,-17(s0)
	.loc 1 39 397
	lbu	a5,-17(s0)
	.loc 1 39 402
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
.LFE0:
	.size	load_uint8_t, .-load_uint8_t
	.section	.text.store_uint8_t,"ax",@progbits
	.align	1
	.type	store_uint8_t, @function
store_uint8_t:
.LFB5:
	.loc 1 44 78
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
	sw	a2,-28(s0)
	sb	a5,-21(s0)
	.loc 1 44 99
	li	a1,131072
	.loc 1 44 160
	lw	a2,-28(s0)
	.loc 1 44 227
	lbu	a5,-21(s0)
	mv	a4,a5
	lw	a5,-20(s0)
 #APP
# 44 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/misaligned/unprivileged_memory.h" 1
	csrrs a3, mstatus, a1
sb a4, 0(a5)
csrw mstatus, a3
# 0 "" 2
	.loc 1 44 388
 #NO_APP
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
	.size	store_uint8_t, .-store_uint8_t
	.section	.text.insn_len,"ax",@progbits
	.align	1
	.type	insn_len, @function
insn_len:
.LFB13:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/misaligned/misaligned_ldst.c"
	.loc 2 24 1
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
	.loc 2 25 16
	lw	a5,-20(s0)
	andi	a4,a5,3
	.loc 2 25 33
	li	a5,2
	bgt	a4,a5,.L5
	.loc 2 25 33 is_stmt 0 discriminator 1
	li	a5,2
	.loc 2 25 33
	j	.L7
.L5:
	.loc 2 25 33 discriminator 2
	li	a5,4
.L7:
	.loc 2 26 1 is_stmt 1
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
.LFE13:
	.size	insn_len, .-insn_len
	.section	.text.truly_illegal_insn,"ax",@progbits
	.align	1
	.globl	truly_illegal_insn
	.type	truly_illegal_insn, @function
truly_illegal_insn:
.LFB14:
	.loc 2 29 1
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
	.loc 2 30 5
 #APP
# 30 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/misaligned/misaligned_ldst.c" 1
	ebreak
# 0 "" 2
 #NO_APP
.L9:
	.loc 2 31 10
	nop
	j	.L9
	.cfi_endproc
.LFE14:
	.size	truly_illegal_insn, .-truly_illegal_insn
	.section	.text.misaligned_load_trap,"ax",@progbits
	.align	1
	.globl	misaligned_load_trap
	.type	misaligned_load_trap, @function
misaligned_load_trap:
.LFB15:
	.loc 2 35 1
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
	sw	a2,-108(s0)
	lw	a5,-108(s0)
	sw	a5,-56(s0)
	addi	a5,s0,-84
	sw	a5,-60(s0)
.LBB17:
.LBB18:
	.loc 1 71 22
	li	a1,655360
	.loc 1 72 22
	lw	a2,-56(s0)
	.loc 1 82 13
	li	a5,3
	sw	a5,-64(s0)
	.loc 1 83 3
	lw	a5,-64(s0)
 #APP
# 83 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/misaligned/unprivileged_memory.h" 1
	csrrs a3, mstatus, a1
and a4, a2, 2
bnez a4, 1f
lw a0, (a2)
and a4, a0, a5
beq a4, a5, 2f
sll a0, a0, 16
srl a0, a0, 16
j 2f
1:
lhu a0, (a2)
and a4, a0, a5
bne a4, a5, 2f
lhu a4, 2(a2)
sll a4, a4, 16
add a0, a0, a4
2: csrw mstatus, a3
# 0 "" 2
 #NO_APP
	mv	a2,a0
	sw	a2,-68(s0)
	sw	a4,-72(s0)
	.loc 1 104 12
	mv	a4,a3
	lw	a5,-60(s0)
	sw	a4,0(a5)
	.loc 1 105 10
	lw	a5,-68(s0)
.LBE18:
.LBE17:
	.loc 2 38 17
	sw	a5,-20(s0)
	.loc 2 39 26
	lw	a5,-20(s0)
	mv	a0,a5
	call	insn_len
	mv	a5,a0
	.loc 2 39 26 is_stmt 0 discriminator 1
	mv	a4,a5
	.loc 2 39 13 is_stmt 1 discriminator 1
	lw	a5,-108(s0)
	add	a5,a5,a4
	sw	a5,-40(s0)
.LBB19:
	.loc 2 40 44
 #APP
# 40 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/misaligned/misaligned_ldst.c" 1
	csrr a5, mtval
# 0 "" 2
 #NO_APP
	sw	a5,-44(s0)
	.loc 2 40 94
	lw	a5,-44(s0)
.LBE19:
	.loc 2 40 13
	sw	a5,-48(s0)
	.loc 2 42 7
	sw	zero,-24(s0)
	.loc 2 42 18
	sw	zero,-28(s0)
	.loc 2 43 13
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,127
	and	a4,a4,a5
	.loc 2 43 6
	li	a5,8192
	addi	a5,a5,3
	bne	a4,a5,.L12
	.loc 2 44 9
	li	a5,4
	sw	a5,-32(s0)
	.loc 2 44 43
	lw	a5,-32(s0)
	li	a4,4
	sub	a5,a4,a5
	.loc 2 44 23
	slli	a5,a5,3
	.loc 2 44 20
	sw	a5,-24(s0)
	j	.L13
.L12:
	.loc 2 56 18
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,127
	and	a4,a4,a5
	.loc 2 56 11
	li	a5,8192
	addi	a5,a5,7
	bne	a4,a5,.L14
	.loc 2 57 8
	li	a5,1
	sw	a5,-28(s0)
	.loc 2 57 17
	li	a5,4
	sw	a5,-32(s0)
	j	.L13
.L14:
	.loc 2 59 18
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,127
	and	a4,a4,a5
	.loc 2 59 11
	li	a5,4096
	addi	a5,a5,3
	bne	a4,a5,.L15
	.loc 2 60 9
	li	a5,2
	sw	a5,-32(s0)
	.loc 2 60 43
	lw	a5,-32(s0)
	li	a4,4
	sub	a5,a4,a5
	.loc 2 60 23
	slli	a5,a5,3
	.loc 2 60 20
	sw	a5,-24(s0)
	j	.L13
.L15:
	.loc 2 61 18
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,127
	and	a4,a4,a5
	.loc 2 61 11
	li	a5,20480
	addi	a5,a5,3
	bne	a4,a5,.L16
	.loc 2 62 9
	li	a5,2
	sw	a5,-32(s0)
	j	.L13
.L16:
	.loc 2 70 18
	lw	a4,-20(s0)
	li	a5,57344
	addi	a5,a5,3
	and	a4,a4,a5
	.loc 2 70 11
	li	a5,16384
	bne	a4,a5,.L17
	.loc 2 71 9
	li	a5,4
	sw	a5,-32(s0)
	.loc 2 71 43
	lw	a5,-32(s0)
	li	a4,4
	sub	a5,a4,a5
	.loc 2 71 23
	slli	a5,a5,3
	.loc 2 71 20
	sw	a5,-24(s0)
	.loc 2 71 72
	lw	a5,-20(s0)
	srli	a5,a5,2
	.loc 2 71 80
	andi	a5,a5,7
	.loc 2 71 61
	addi	a5,a5,8
	.loc 2 71 56
	slli	a5,a5,7
	sw	a5,-20(s0)
	j	.L13
.L17:
	.loc 2 72 18
	lw	a4,-20(s0)
	li	a5,57344
	addi	a5,a5,3
	and	a4,a4,a5
	.loc 2 72 11
	li	a5,16384
	addi	a5,a5,2
	bne	a4,a5,.L18
	.loc 2 72 38 discriminator 1
	lw	a4,-20(s0)
	li	a5,4096
	addi	a5,a5,-128
	and	a5,a4,a5
	beq	a5,zero,.L18
	.loc 2 73 9
	li	a5,4
	sw	a5,-32(s0)
	.loc 2 73 43
	lw	a5,-32(s0)
	li	a4,4
	sub	a5,a4,a5
	.loc 2 73 23
	slli	a5,a5,3
	.loc 2 73 20
	sw	a5,-24(s0)
	.loc 2 73 12
	j	.L13
.L18:
	.loc 2 82 18
	lw	a4,-20(s0)
	li	a5,57344
	addi	a5,a5,3
	and	a4,a4,a5
	.loc 2 82 11
	li	a5,24576
	bne	a4,a5,.L19
	.loc 2 83 8
	li	a5,1
	sw	a5,-28(s0)
	.loc 2 83 17
	li	a5,4
	sw	a5,-32(s0)
	.loc 2 83 43
	lw	a5,-20(s0)
	srli	a5,a5,2
	.loc 2 83 51
	andi	a5,a5,7
	.loc 2 83 32
	addi	a5,a5,8
	.loc 2 83 27
	slli	a5,a5,7
	sw	a5,-20(s0)
	j	.L13
.L19:
	.loc 2 84 18
	lw	a4,-20(s0)
	li	a5,57344
	addi	a5,a5,3
	and	a4,a4,a5
	.loc 2 84 11
	li	a5,24576
	addi	a5,a5,2
	bne	a4,a5,.L20
	.loc 2 85 8
	li	a5,1
	sw	a5,-28(s0)
	.loc 2 85 17
	li	a5,4
	sw	a5,-32(s0)
	j	.L13
.L20:
	.loc 2 90 12
	li	a5,5
	sw	a5,-104(s0)
	.loc 2 91 8
	lw	a5,-104(s0)
 #APP
# 91 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/misaligned/misaligned_ldst.c" 1
	csrw mcause, a5
# 0 "" 2
	.loc 2 92 12
 #NO_APP
	lw	a5,-84(s0)
	lw	a4,-20(s0)
	mv	a3,a5
	lw	a2,-108(s0)
	lw	a1,-104(s0)
	lw	a0,-100(s0)
	call	truly_illegal_insn
	j	.L10
.L13:
	.loc 2 95 13
	li	a5,0
	li	a6,0
	sw	a5,-80(s0)
	sw	a6,-76(s0)
.LBB20:
	.loc 2 96 17
	sw	zero,-36(s0)
	.loc 2 96 3
	j	.L22
.L23:
	.loc 2 97 47
	lw	a4,-36(s0)
	lw	a5,-48(s0)
	add	a5,a4,a5
	.loc 2 97 20
	lw	a1,-108(s0)
	mv	a0,a5
	call	load_uint8_t
	mv	a5,a0
	mv	a4,a5
	.loc 2 97 18 discriminator 1
	lw	a5,-36(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-64(a5)
	.loc 2 96 34 discriminator 3
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L22:
	.loc 2 96 26 discriminator 1
	lw	a4,-36(s0)
	lw	a5,-32(s0)
	blt	a4,a5,.L23
.LBE20:
	.loc 2 99 6
	lw	a5,-28(s0)
	bne	a5,zero,.L24
	.loc 2 100 183
	lw	a5,-80(s0)
	.loc 2 100 170
	mv	a4,a5
	.loc 2 100 189
	lw	a5,-24(s0)
	sll	a4,a4,a5
	.loc 2 100 198
	lw	a5,-24(s0)
	sra	a3,a4,a5
.LBB21:
	.loc 2 100 14
	li	a5,124
	sw	a5,-52(s0)
	.loc 2 100 127
	lw	a5,-20(s0)
	srli	a4,a5,5
	.loc 2 100 84
	lw	a5,-52(s0)
	.loc 2 100 152
	and	a4,a4,a5
	.loc 2 100 59
	lw	a5,-100(s0)
	.loc 2 100 84
	add	a5,a4,a5
	addi	a5,a5,124
.LBE21:
	.loc 2 100 198
	mv	a4,a3
	.loc 2 100 167
	sw	a4,0(a5)
	j	.L25
.L24:
	.loc 2 107 39
	lw	a5,-20(s0)
	srli	a5,a5,7
	.loc 2 107 9
	andi	a5,a5,31
	sw	a5,-32(s0)
	.loc 2 108 14
	lw	a5,-32(s0)
	addi	a5,a5,1
	.loc 2 108 9
	slli	a5,a5,2
	lw	a4,-100(s0)
	add	a5,a4,a5
	.loc 2 108 26
	lw	a4,-80(s0)
	.loc 2 108 21
	sw	a4,0(a5)
.L25:
	.loc 2 111 13
	lw	a5,-100(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
.L10:
	.loc 2 112 1
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	misaligned_load_trap, .-misaligned_load_trap
	.section	.text.misaligned_store_trap,"ax",@progbits
	.align	1
	.globl	misaligned_store_trap
	.type	misaligned_store_trap, @function
misaligned_store_trap:
.LFB16:
	.loc 2 115 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	a0,-116(s0)
	sw	a1,-120(s0)
	sw	a2,-124(s0)
	lw	a5,-124(s0)
	sw	a5,-68(s0)
	addi	a5,s0,-100
	sw	a5,-72(s0)
.LBB22:
.LBB23:
	.loc 1 71 22
	li	a1,655360
	.loc 1 72 22
	lw	a2,-68(s0)
	.loc 1 82 13
	li	a5,3
	sw	a5,-76(s0)
	.loc 1 83 3
	lw	a5,-76(s0)
 #APP
# 83 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/misaligned/unprivileged_memory.h" 1
	csrrs a3, mstatus, a1
and a4, a2, 2
bnez a4, 1f
lw a0, (a2)
and a4, a0, a5
beq a4, a5, 2f
sll a0, a0, 16
srl a0, a0, 16
j 2f
1:
lhu a0, (a2)
and a4, a0, a5
bne a4, a5, 2f
lhu a4, 2(a2)
sll a4, a4, 16
add a0, a0, a4
2: csrw mstatus, a3
# 0 "" 2
 #NO_APP
	mv	a2,a0
	sw	a2,-80(s0)
	sw	a4,-84(s0)
	.loc 1 104 12
	mv	a4,a3
	lw	a5,-72(s0)
	sw	a4,0(a5)
	.loc 1 105 10
	lw	a5,-80(s0)
.LBE23:
.LBE22:
	.loc 2 118 17
	sw	a5,-28(s0)
	.loc 2 119 26
	lw	a5,-28(s0)
	mv	a0,a5
	call	insn_len
	mv	a5,a0
	.loc 2 119 26 is_stmt 0 discriminator 1
	mv	a4,a5
	.loc 2 119 13 is_stmt 1 discriminator 1
	lw	a5,-124(s0)
	add	a5,a5,a4
	sw	a5,-32(s0)
.LBB24:
	.loc 2 122 23
	li	a5,124
	sw	a5,-36(s0)
	.loc 2 122 138
	lw	a5,-28(s0)
	srli	a4,a5,18
	.loc 2 122 93
	lw	a5,-36(s0)
	.loc 2 122 164
	and	a4,a4,a5
	.loc 2 122 68
	lw	a5,-116(s0)
	.loc 2 122 93
	add	a5,a4,a5
	addi	a5,a5,124
.LBE24:
	.loc 2 122 15
	lw	a5,0(a5)
	.loc 2 122 12
	sw	a5,-96(s0)
	.loc 2 123 13
	lw	a4,-28(s0)
	li	a5,28672
	addi	a5,a5,127
	and	a4,a4,a5
	.loc 2 123 6
	li	a5,8192
	addi	a5,a5,35
	bne	a4,a5,.L29
	.loc 2 124 9
	li	a5,4
	sw	a5,-20(s0)
	j	.L30
.L29:
	.loc 2 134 18
	lw	a4,-28(s0)
	li	a5,28672
	addi	a5,a5,127
	and	a4,a4,a5
	.loc 2 134 11
	li	a5,8192
	addi	a5,a5,39
	bne	a4,a5,.L31
	.loc 2 135 9
	li	a5,4
	sw	a5,-20(s0)
.LBB25:
	.loc 2 135 102
	lw	a5,-28(s0)
	srli	a5,a5,17
	.loc 2 135 126
	andi	a5,a5,248
	.loc 2 135 46
	mv	a0,a5
	.loc 2 135 149
 #APP
# 135 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/misaligned/misaligned_ldst.c" 1
	1: auipc a5, %pcrel_hi(get_f32_reg); add a5, a5, a0; jalr t0, a5, %pcrel_lo(1b)
# 0 "" 2
 #NO_APP
	sw	a5,-56(s0)
	.loc 2 135 275
	mv	a5,a0
.LBE25:
	.loc 2 135 23
	sw	a5,-96(s0)
	j	.L30
.L31:
	.loc 2 137 18
	lw	a4,-28(s0)
	li	a5,28672
	addi	a5,a5,127
	and	a4,a4,a5
	.loc 2 137 11
	li	a5,4096
	addi	a5,a5,35
	bne	a4,a5,.L32
	.loc 2 138 9
	li	a5,2
	sw	a5,-20(s0)
	j	.L30
.L32:
	.loc 2 146 18
	lw	a4,-28(s0)
	li	a5,57344
	addi	a5,a5,3
	and	a4,a4,a5
	.loc 2 146 11
	li	a5,49152
	bne	a4,a5,.L33
	.loc 2 147 9
	li	a5,4
	sw	a5,-20(s0)
.LBB26:
	.loc 2 147 34
	li	a5,124
	sw	a5,-52(s0)
	.loc 2 147 140
	lw	a5,-28(s0)
	srli	a5,a5,2
	.loc 2 147 148
	andi	a5,a5,7
	.loc 2 147 129
	addi	a5,a5,8
	.loc 2 147 185
	slli	a4,a5,2
	.loc 2 147 104
	lw	a5,-52(s0)
	.loc 2 147 248
	and	a4,a4,a5
	.loc 2 147 79
	lw	a5,-116(s0)
	.loc 2 147 104
	add	a5,a4,a5
	addi	a5,a5,124
.LBE26:
	.loc 2 147 26
	lw	a5,0(a5)
	.loc 2 147 23
	sw	a5,-96(s0)
	j	.L30
.L33:
	.loc 2 148 18
	lw	a4,-28(s0)
	li	a5,57344
	addi	a5,a5,3
	and	a4,a4,a5
	.loc 2 148 11
	li	a5,49152
	addi	a5,a5,2
	bne	a4,a5,.L34
	.loc 2 148 38 discriminator 1
	lw	a4,-28(s0)
	li	a5,4096
	addi	a5,a5,-128
	and	a5,a4,a5
	beq	a5,zero,.L34
	.loc 2 149 9
	li	a5,4
	sw	a5,-20(s0)
.LBB27:
	.loc 2 149 34
	li	a5,124
	sw	a5,-40(s0)
	.loc 2 149 104
	lw	a4,-40(s0)
	.loc 2 149 172
	lw	a5,-28(s0)
	and	a4,a4,a5
	.loc 2 149 79
	lw	a5,-116(s0)
	.loc 2 149 104
	add	a5,a4,a5
	addi	a5,a5,124
.LBE27:
	.loc 2 149 26
	lw	a5,0(a5)
	.loc 2 149 23
	sw	a5,-96(s0)
	.loc 2 149 12
	j	.L30
.L34:
	.loc 2 158 18
	lw	a4,-28(s0)
	li	a5,57344
	addi	a5,a5,3
	and	a4,a4,a5
	.loc 2 158 11
	li	a5,57344
	bne	a4,a5,.L35
	.loc 2 159 9
	li	a5,4
	sw	a5,-20(s0)
.LBB28:
	.loc 2 159 95
	lw	a5,-28(s0)
	srli	a5,a5,2
	.loc 2 159 103
	andi	a5,a5,7
	.loc 2 159 84
	addi	a5,a5,8
	.loc 2 159 199
	slli	a5,a5,3
	andi	a5,a5,255
	.loc 2 159 46
	mv	a0,a5
	.loc 2 159 222
 #APP
# 159 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/misaligned/misaligned_ldst.c" 1
	1: auipc a5, %pcrel_hi(get_f32_reg); add a5, a5, a0; jalr t0, a5, %pcrel_lo(1b)
# 0 "" 2
 #NO_APP
	sw	a5,-48(s0)
	.loc 2 159 348
	mv	a5,a0
.LBE28:
	.loc 2 159 23
	sw	a5,-96(s0)
	j	.L30
.L35:
	.loc 2 160 18
	lw	a4,-28(s0)
	li	a5,57344
	addi	a5,a5,3
	and	a4,a4,a5
	.loc 2 160 11
	li	a5,57344
	addi	a5,a5,2
	bne	a4,a5,.L36
	.loc 2 161 9
	li	a5,4
	sw	a5,-20(s0)
.LBB29:
	.loc 2 161 123
	lw	a5,-28(s0)
	slli	a5,a5,1
	andi	a5,a5,248
	.loc 2 161 46
	mv	a0,a5
	.loc 2 161 146
 #APP
# 161 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/misaligned/misaligned_ldst.c" 1
	1: auipc a5, %pcrel_hi(get_f32_reg); add a5, a5, a0; jalr t0, a5, %pcrel_lo(1b)
# 0 "" 2
 #NO_APP
	sw	a5,-44(s0)
	.loc 2 161 272
	mv	a5,a0
.LBE29:
	.loc 2 161 23
	sw	a5,-96(s0)
	j	.L30
.L36:
	.loc 2 166 12
	li	a5,7
	sw	a5,-120(s0)
	.loc 2 167 8
	lw	a5,-120(s0)
 #APP
# 167 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/misaligned/misaligned_ldst.c" 1
	csrw mcause, a5
# 0 "" 2
	.loc 2 168 12
 #NO_APP
	lw	a5,-100(s0)
	lw	a4,-28(s0)
	mv	a3,a5
	lw	a2,-124(s0)
	lw	a1,-120(s0)
	lw	a0,-116(s0)
	call	truly_illegal_insn
	j	.L27
.L30:
.LBB30:
	.loc 2 171 44
 #APP
# 171 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/misaligned/misaligned_ldst.c" 1
	csrr a5, mtval
# 0 "" 2
 #NO_APP
	sw	a5,-60(s0)
	.loc 2 171 94
	lw	a5,-60(s0)
.LBE30:
	.loc 2 171 13
	sw	a5,-64(s0)
.LBB31:
	.loc 2 172 12
	sw	zero,-24(s0)
	.loc 2 172 3
	j	.L38
.L39:
	.loc 2 173 33
	lw	a4,-24(s0)
	lw	a5,-64(s0)
	add	a5,a4,a5
	.loc 2 173 5
	mv	a4,a5
	lw	a5,-24(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-80(a5)
	lw	a2,-124(s0)
	mv	a1,a5
	mv	a0,a4
	call	store_uint8_t
	.loc 2 172 29 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L38:
	.loc 2 172 21 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	blt	a4,a5,.L39
.LBE31:
	.loc 2 175 13
	lw	a5,-116(s0)
	lw	a4,-32(s0)
	sw	a4,0(a5)
.L27:
	.loc 2 176 1
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	misaligned_store_trap, .-misaligned_store_trap
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/misaligned/emulation.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x642
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x45
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x64
	.uleb128 0x12
	.4byte	0x53
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x3
	.byte	0x37
	.byte	0x20
	.4byte	0x85
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0x53
	.byte	0xd
	.4byte	0x8c
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0x56
	.byte	0x16
	.4byte	0x93
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa
	.byte	0x13
	.4byte	0xa6
	.uleb128 0xa
	.4byte	0xa6
	.uleb128 0x14
	.4byte	.LASF40
	.byte	0x8
	.byte	0x2
	.byte	0x11
	.byte	0x7
	.4byte	0xf2
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x12
	.byte	0xb
	.4byte	0xf2
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x13
	.byte	0xd
	.4byte	0xa6
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x14
	.byte	0xc
	.4byte	0x79
	.byte	0
	.uleb128 0x15
	.4byte	0x53
	.4byte	0x102
	.uleb128 0x16
	.4byte	0x93
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x72
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x304
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x2
	.byte	0x72
	.byte	0x27
	.4byte	0xbe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x2
	.byte	0x72
	.byte	0x37
	.4byte	0xa6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x2
	.byte	0x72
	.byte	0x49
	.4byte	0xa6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x3
	.string	"val"
	.byte	0x2
	.byte	0x74
	.byte	0x14
	.4byte	0xc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x2
	.byte	0x75
	.byte	0xd
	.4byte	0xa6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x2
	.byte	0x76
	.byte	0xa
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.string	"npc"
	.byte	0x2
	.byte	0x77
	.byte	0xd
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.string	"len"
	.byte	0x2
	.byte	0x78
	.byte	0x7
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x2
	.byte	0xab
	.byte	0xd
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x1bf
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x2
	.byte	0x7a
	.byte	0x17
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x5
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0x1ea
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x2
	.byte	0x87
	.byte	0x2e
	.4byte	0x39
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.string	"tmp"
	.byte	0x2
	.byte	0x87
	.byte	0x90
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x5
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.4byte	0x207
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x2
	.byte	0x93
	.byte	0x22
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x5
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0x224
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x2
	.byte	0x95
	.byte	0x22
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x5
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.4byte	0x24f
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x2
	.byte	0x9f
	.byte	0x2e
	.4byte	0x39
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.string	"tmp"
	.byte	0x2
	.byte	0x9f
	.byte	0xd9
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x5
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.4byte	0x27a
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x2
	.byte	0xa1
	.byte	0x2e
	.4byte	0x39
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.string	"tmp"
	.byte	0x2
	.byte	0xa1
	.byte	0x8d
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x5
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0x297
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x2
	.byte	0xab
	.byte	0x25
	.4byte	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x5
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.4byte	0x2b2
	.uleb128 0x3
	.string	"i"
	.byte	0x2
	.byte	0xac
	.byte	0xc
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.4byte	0x4f1
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x76
	.uleb128 0x8
	.4byte	0x502
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x8
	.4byte	0x50d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x4
	.4byte	0x518
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.4byte	0x523
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.4byte	0x52e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.4byte	0x539
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x4
	.4byte	0x544
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x4
	.4byte	0x54f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x22
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x465
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x2
	.byte	0x22
	.byte	0x26
	.4byte	0xbe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x2
	.byte	0x22
	.byte	0x36
	.4byte	0xa6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x2
	.byte	0x22
	.byte	0x48
	.4byte	0xa6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x3
	.string	"val"
	.byte	0x2
	.byte	0x24
	.byte	0x14
	.4byte	0xc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x2
	.byte	0x25
	.byte	0xd
	.4byte	0xa6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x2
	.byte	0x26
	.byte	0xa
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"npc"
	.byte	0x2
	.byte	0x27
	.byte	0xd
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x2
	.byte	0x28
	.byte	0xd
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x2
	.byte	0x2a
	.byte	0x7
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"fp"
	.byte	0x2
	.byte	0x2a
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.string	"len"
	.byte	0x2
	.byte	0x2a
	.byte	0x1a
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x3de
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x2
	.byte	0x28
	.byte	0x25
	.4byte	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x5
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x3f9
	.uleb128 0x3
	.string	"i"
	.byte	0x2
	.byte	0x60
	.byte	0x11
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x5
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x416
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x2
	.byte	0x64
	.byte	0xe
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0xd
	.4byte	0x4f1
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.byte	0x26
	.uleb128 0x8
	.4byte	0x502
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.4byte	0x50d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	0x518
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.4byte	0x523
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.4byte	0x52e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.4byte	0x539
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.4byte	0x544
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.4byte	0x54f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF32
	.byte	0x2
	.byte	0x1c
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c7
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x2
	.byte	0x1c
	.byte	0x24
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x2
	.byte	0x1c
	.byte	0x34
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x2
	.byte	0x1c
	.byte	0x46
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x2
	.byte	0x1c
	.byte	0x56
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x2
	.byte	0x1c
	.byte	0x66
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x2
	.byte	0x17
	.byte	0x13
	.4byte	0x8c
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f1
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x2
	.byte	0x17
	.byte	0x21
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0x45
	.byte	0x38
	.4byte	0xa6
	.byte	0x3
	.4byte	0x55b
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x45
	.byte	0x4b
	.4byte	0xa6
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x45
	.byte	0x5c
	.4byte	0xbe
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x47
	.byte	0x16
	.4byte	0xa6
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x48
	.byte	0x16
	.4byte	0xa6
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x49
	.byte	0x16
	.4byte	0xa6
	.uleb128 0x10
	.string	"val"
	.byte	0x4a
	.byte	0xd
	.4byte	0xa6
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x52
	.byte	0xd
	.4byte	0xa6
	.uleb128 0x10
	.string	"tmp"
	.byte	0x52
	.byte	0x1b
	.4byte	0xa6
	.byte	0
	.uleb128 0x19
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2c
	.byte	0x14
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c9
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x1
	.byte	0x2c
	.byte	0x2b
	.4byte	0x5c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.string	"val"
	.byte	0x1
	.byte	0x2c
	.byte	0x39
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2c
	.byte	0x48
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x1
	.byte	0x2c
	.byte	0x63
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x1
	.byte	0x2c
	.byte	0xa0
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x1
	.byte	0x2c
	.byte	0xcd
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0xa
	.4byte	0x53
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x1
	.byte	0x27
	.byte	0x17
	.4byte	0x53
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x640
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x1
	.byte	0x27
	.byte	0x33
	.4byte	0x640
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x1
	.byte	0x27
	.byte	0x43
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x1
	.byte	0x27
	.byte	0x5e
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x1
	.byte	0x27
	.byte	0x9b
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x1
	.byte	0x27
	.byte	0xc8
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.string	"val"
	.byte	0x1
	.byte	0x27
	.byte	0xe6
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xa
	.4byte	0x5f
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xd
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
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 17
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
	.uleb128 0xf
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x17
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
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x18
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
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
	.4byte	.LFB0
	.uleb128 .LFE0-.LFB0
	.byte	0x7
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"truly_illegal_insn"
.LASF18:
	.string	"intx"
.LASF15:
	.string	"uintptr_t"
.LASF35:
	.string	"__mstatus"
.LASF25:
	.string	"addr"
.LASF33:
	.string	"__mstatus_adjust"
.LASF23:
	.string	"mstatus"
.LASF36:
	.string	"rvc_mask"
.LASF11:
	.string	"uint64_t"
.LASF40:
	.string	"byte_array"
.LASF30:
	.string	"misaligned_load_trap"
.LASF24:
	.string	"insn"
.LASF37:
	.string	"insn_len"
.LASF8:
	.string	"unsigned char"
.LASF34:
	.string	"__mepc"
.LASF10:
	.string	"long unsigned int"
.LASF21:
	.string	"mcause"
.LASF9:
	.string	"short unsigned int"
.LASF20:
	.string	"regs"
.LASF22:
	.string	"mepc"
.LASF29:
	.string	"misaligned_store_trap"
.LASF38:
	.string	"load_uint8_t"
.LASF14:
	.string	"intptr_t"
.LASF13:
	.string	"unsigned int"
.LASF12:
	.string	"long long unsigned int"
.LASF7:
	.string	"uint8_t"
.LASF6:
	.string	"int32_t"
.LASF5:
	.string	"long long int"
.LASF16:
	.string	"insn_t"
.LASF26:
	.string	"mask"
.LASF27:
	.string	"value"
.LASF28:
	.string	"__tmp"
.LASF3:
	.string	"short int"
.LASF41:
	.string	"get_insn"
.LASF39:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF31:
	.string	"shift"
.LASF4:
	.string	"long int"
.LASF17:
	.string	"bytes"
.LASF42:
	.string	"store_uint8_t"
.LASF2:
	.string	"signed char"
.LASF19:
	.string	"int64"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/misaligned/misaligned_ldst.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/freertos"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
