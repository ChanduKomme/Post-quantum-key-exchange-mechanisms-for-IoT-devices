	.file	"bflb_dsa.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/cipher_suite/src/bflb_dsa.c"
	.section	.text.bflb_dsa_get_reg_size,"ax",@progbits
	.align	1
	.type	bflb_dsa_get_reg_size, @function
bflb_dsa_get_reg_size:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/cipher_suite/src/bflb_dsa.c"
	.loc 1 27 1
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
	.loc 1 28 5
	lw	a4,-20(s0)
	li	a5,4096
	beq	a4,a5,.L2
	lw	a4,-20(s0)
	li	a5,4096
	bgtu	a4,a5,.L3
	lw	a4,-20(s0)
	li	a5,4096
	addi	a5,a5,-1024
	beq	a4,a5,.L4
	lw	a4,-20(s0)
	li	a5,4096
	addi	a5,a5,-1024
	bgtu	a4,a5,.L3
	lw	a5,-20(s0)
	addi	a5,a5,-2048
	beq	a5,zero,.L5
	lw	a4,-20(s0)
	li	a5,4096
	addi	a5,a5,-2048
	bgtu	a4,a5,.L3
	lw	a4,-20(s0)
	li	a5,1536
	beq	a4,a5,.L6
	lw	a4,-20(s0)
	li	a5,1536
	bgtu	a4,a5,.L3
	lw	a4,-20(s0)
	li	a5,1024
	beq	a4,a5,.L7
	lw	a4,-20(s0)
	li	a5,1024
	bgtu	a4,a5,.L3
	lw	a4,-20(s0)
	li	a5,768
	beq	a4,a5,.L8
	lw	a4,-20(s0)
	li	a5,768
	bgtu	a4,a5,.L3
	lw	a4,-20(s0)
	li	a5,512
	beq	a4,a5,.L9
	lw	a4,-20(s0)
	li	a5,512
	bgtu	a4,a5,.L3
	lw	a4,-20(s0)
	li	a5,256
	beq	a4,a5,.L10
	lw	a4,-20(s0)
	li	a5,256
	bgtu	a4,a5,.L3
	lw	a4,-20(s0)
	li	a5,64
	beq	a4,a5,.L11
	lw	a4,-20(s0)
	li	a5,128
	beq	a4,a5,.L12
	j	.L3
.L11:
	.loc 1 30 16
	li	a5,1
	j	.L13
.L12:
	.loc 1 32 16
	li	a5,2
	j	.L13
.L10:
	.loc 1 34 16
	li	a5,3
	j	.L13
.L9:
	.loc 1 36 16
	li	a5,4
	j	.L13
.L8:
	.loc 1 38 16
	li	a5,5
	j	.L13
.L7:
	.loc 1 40 16
	li	a5,6
	j	.L13
.L6:
	.loc 1 42 16
	li	a5,7
	j	.L13
.L5:
	.loc 1 44 16
	li	a5,8
	j	.L13
.L4:
	.loc 1 46 16
	li	a5,9
	j	.L13
.L2:
	.loc 1 48 16
	li	a5,10
	j	.L13
.L3:
	.loc 1 50 15
	li	a5,3
.L13:
	.loc 1 53 1
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
	.size	bflb_dsa_get_reg_size, .-bflb_dsa_get_reg_size
	.section	.rodata
	.align	2
.LC0:
	.zero	127
	.ascii	"\001"
	.section	.text.bflb_dsa_mexp_binary,"ax",@progbits
	.align	1
	.globl	bflb_dsa_mexp_binary
	.type	bflb_dsa_mexp_binary, @function
bflb_dsa_mexp_binary:
.LFB9:
	.loc 1 66 1
	.cfi_startproc
	addi	sp,sp,-208
	.cfi_def_cfa_offset 208
	sw	ra,204(sp)
	sw	s0,200(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,208
	.cfi_def_cfa 8, 0
	sw	a0,-180(s0)
	sw	a1,-184(s0)
	sw	a2,-188(s0)
	sw	a3,-192(s0)
	sw	a4,-196(s0)
	.loc 1 69 14
	sw	zero,-32(s0)
	.loc 1 70 14
	lw	a5,-188(s0)
	sw	a5,-36(s0)
	.loc 1 71 40
	lw	a0,-180(s0)
	call	bflb_dsa_get_reg_size
	mv	a5,a0
	sb	a5,-37(s0)
	.loc 1 72 66
	lw	a5,-180(s0)
	slli	a5,a5,1
	.loc 1 72 40
	mv	a0,a5
	call	bflb_dsa_get_reg_size
	mv	a5,a0
	sb	a5,-38(s0)
	.loc 1 73 14
	lw	a5,-180(s0)
	srli	a5,a5,5
	sw	a5,-44(s0)
	.loc 1 75 13
	lui	a5,%hi(.LC0)
	addi	a4,a5,%lo(.LC0)
	addi	a5,s0,-176
	mv	a3,a4
	li	a4,128
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcpy
	.loc 1 99 5
	lw	a5,-44(s0)
	slli	a3,a5,16
	srli	a3,a3,16
	lbu	a5,-37(s0)
	li	a4,0
	lw	a2,-184(s0)
	li	a1,4
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Data
	.loc 1 102 5
	addi	a2,s0,-176
	lbu	a5,-37(s0)
	li	a4,0
	li	a3,32
	li	a1,5
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Data
	.loc 1 110 5
	lw	a5,-44(s0)
	slli	a3,a5,16
	srli	a3,a3,16
	lbu	a5,-37(s0)
	li	a4,0
	lw	a2,-192(s0)
	li	a1,0
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Data
	.loc 1 112 5
	lw	a5,-44(s0)
	andi	a4,a5,0xff
	lbu	a5,-37(s0)
	li	a3,0
	mv	a2,a4
	li	a1,6
	mv	a0,a5
	call	Sec_Eng_PKA_CREG
	.loc 1 113 5
	lw	a5,-44(s0)
	andi	a4,a5,0xff
	lbu	a5,-37(s0)
	li	a3,1
	mv	a2,a4
	li	a1,7
	mv	a0,a5
	call	Sec_Eng_PKA_CREG
	.loc 1 120 6
	sw	zero,-28(s0)
	.loc 1 121 10
	j	.L15
.L17:
	.loc 1 122 9
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L15:
	.loc 1 121 12
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 121 18
	bne	a5,zero,.L16
	.loc 1 121 27 discriminator 1
	lw	a5,-180(s0)
	srli	a5,a5,3
	.loc 1 121 18 discriminator 1
	lw	a4,-28(s0)
	bltu	a4,a5,.L17
.L16:
	.loc 1 124 12
	lw	a5,-180(s0)
	srli	a5,a5,3
	.loc 1 124 6
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 125 5
	j	.L18
.L22:
	.loc 1 126 13
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 126 11
	sw	a5,-48(s0)
	.loc 1 127 9
	sw	zero,-24(s0)
	.loc 1 128 13
	sw	zero,-24(s0)
	.loc 1 128 8
	j	.L19
.L21:
	.loc 1 129 25
	lw	a5,-24(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 129 18
	lw	a5,-48(s0)
	and	a5,a5,a4
	sw	a5,-32(s0)
	.loc 1 130 15
	lw	a5,-32(s0)
	beq	a5,zero,.L20
	.loc 1 132 17
	lbu	a4,-37(s0)
	lbu	a2,-37(s0)
	lbu	a0,-38(s0)
	li	a6,0
	li	a5,4
	li	a3,5
	li	a1,3
	call	Sec_Eng_PKA_LMUL
	.loc 1 133 17
	lbu	a4,-37(s0)
	lbu	a2,-38(s0)
	lbu	a0,-37(s0)
	li	a6,1
	li	a5,0
	li	a3,3
	li	a1,5
	call	Sec_Eng_PKA_MREM
.L20:
	.loc 1 141 13
	lbu	a2,-37(s0)
	lbu	a5,-38(s0)
	li	a4,0
	li	a3,4
	li	a1,3
	mv	a0,a5
	call	Sec_Eng_PKA_LSQR
	.loc 1 142 13
	lbu	a4,-37(s0)
	lbu	a2,-38(s0)
	lbu	a0,-37(s0)
	li	a6,1
	li	a5,0
	li	a3,3
	li	a1,4
	call	Sec_Eng_PKA_MREM
	.loc 1 128 21 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L19:
	.loc 1 128 17 discriminator 1
	lw	a4,-24(s0)
	li	a5,7
	bleu	a4,a5,.L21
	.loc 1 125 16
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L18:
	.loc 1 125 11 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	bgeu	a4,a5,.L22
	.loc 1 150 5
	lw	a5,-44(s0)
	andi	a4,a5,0xff
	lbu	a5,-37(s0)
	mv	a3,a4
	lw	a2,-196(s0)
	li	a1,5
	mv	a0,a5
	call	Sec_Eng_PKA_Read_Data
	.loc 1 155 12
	li	a5,0
	.loc 1 156 1
	mv	a0,a5
	lw	ra,204(sp)
	.cfi_restore 1
	lw	s0,200(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 208
	addi	sp,sp,208
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	bflb_dsa_mexp_binary, .-bflb_dsa_mexp_binary
	.section	.text.bflb_dsa_mexp_mont,"ax",@progbits
	.align	1
	.globl	bflb_dsa_mexp_mont
	.type	bflb_dsa_mexp_mont, @function
bflb_dsa_mexp_mont:
.LFB10:
	.loc 1 160 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	.loc 1 161 40
	lw	a0,-36(s0)
	call	bflb_dsa_get_reg_size
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 162 66
	lw	a5,-36(s0)
	slli	a5,a5,1
	.loc 1 162 40
	mv	a0,a5
	call	bflb_dsa_get_reg_size
	mv	a5,a0
	sb	a5,-18(s0)
	.loc 1 163 14
	lw	a5,-36(s0)
	srli	a5,a5,5
	sw	a5,-24(s0)
	.loc 1 173 5
	lw	a5,-24(s0)
	slli	a3,a5,16
	srli	a3,a3,16
	lbu	a5,-17(s0)
	li	a4,0
	lw	a2,-48(s0)
	li	a1,0
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Data
	.loc 1 174 5
	lw	a5,-24(s0)
	slli	a3,a5,16
	srli	a3,a3,16
	lbu	a5,-17(s0)
	li	a4,1
	lw	a2,-56(s0)
	li	a1,1
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Data
	.loc 1 175 5
	lw	a5,-24(s0)
	slli	a3,a5,16
	srli	a3,a3,16
	lbu	a5,-17(s0)
	li	a4,1
	lw	a2,-52(s0)
	li	a1,2
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Data
	.loc 1 178 5
	lw	a5,-24(s0)
	slli	a3,a5,16
	srli	a3,a3,16
	lbu	a5,-17(s0)
	li	a4,0
	lw	a2,-40(s0)
	li	a1,4
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Data
	.loc 1 179 5
	lw	a5,-24(s0)
	andi	a4,a5,0xff
	lbu	a5,-17(s0)
	li	a3,0
	mv	a2,a4
	li	a1,10
	mv	a0,a5
	call	Sec_Eng_PKA_CREG
	.loc 1 180 5
	lw	a5,-24(s0)
	andi	a4,a5,0xff
	lbu	a5,-17(s0)
	li	a3,0
	mv	a2,a4
	li	a1,11
	mv	a0,a5
	call	Sec_Eng_PKA_CREG
	.loc 1 181 5
	lbu	a4,-17(s0)
	lbu	a5,-18(s0)
	lbu	a2,-17(s0)
	lbu	a0,-17(s0)
	sw	zero,0(sp)
	mv	a7,a4
	li	a6,5
	lw	a4,-36(s0)
	li	a3,4
	li	a1,4
	call	Sec_Eng_PKA_GF2Mont
	.loc 1 188 5
	lw	a5,-24(s0)
	slli	a3,a5,16
	srli	a3,a3,16
	lbu	a5,-17(s0)
	li	a4,0
	lw	a2,-44(s0)
	li	a1,5
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Data
	.loc 1 190 5
	lbu	a3,-17(s0)
	lbu	a4,-17(s0)
	lbu	a2,-17(s0)
	lbu	a0,-17(s0)
	li	a5,1
	sw	a5,0(sp)
	li	a7,0
	mv	a6,a3
	li	a5,5
	li	a3,4
	li	a1,6
	call	Sec_Eng_PKA_MEXP
	.loc 1 193 5
	lw	a5,-24(s0)
	andi	a4,a5,0xff
	lbu	a5,-17(s0)
	li	a3,0
	mv	a2,a4
	li	a1,10
	mv	a0,a5
	call	Sec_Eng_PKA_CREG
	.loc 1 194 5
	lw	a5,-24(s0)
	andi	a4,a5,0xff
	lbu	a5,-17(s0)
	li	a3,0
	mv	a2,a4
	li	a1,11
	mv	a0,a5
	call	Sec_Eng_PKA_CREG
	.loc 1 196 5
	lbu	a3,-18(s0)
	lbu	a4,-17(s0)
	lbu	a2,-17(s0)
	lbu	a0,-17(s0)
	sw	zero,4(sp)
	lbu	a5,-17(s0)
	sw	a5,0(sp)
	li	a7,5
	mv	a6,a3
	li	a5,2
	li	a3,6
	li	a1,7
	call	Sec_Eng_PKA_Mont2GF
	.loc 1 197 5
	lw	a5,-24(s0)
	andi	a4,a5,0xff
	lbu	a5,-17(s0)
	mv	a3,a4
	lw	a2,-60(s0)
	li	a1,7
	mv	a0,a5
	call	Sec_Eng_PKA_Read_Data
	.loc 1 202 12
	li	a5,0
	.loc 1 203 1
	mv	a0,a5
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	bflb_dsa_mexp_mont, .-bflb_dsa_mexp_mont
	.section	.text.bflb_dsa_decrypt_crt,"ax",@progbits
	.align	1
	.globl	bflb_dsa_decrypt_crt
	.type	bflb_dsa_decrypt_crt, @function
bflb_dsa_decrypt_crt:
.LFB11:
	.loc 1 214 1
	.cfi_startproc
	addi	sp,sp,-336
	.cfi_def_cfa_offset 336
	sw	ra,332(sp)
	sw	s0,328(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,336
	.cfi_def_cfa 8, 0
	sw	a0,-292(s0)
	sw	a1,-296(s0)
	sw	a2,-300(s0)
	sw	a3,-304(s0)
	sw	a4,-308(s0)
	.loc 1 221 40
	lw	a0,-292(s0)
	call	bflb_dsa_get_reg_size
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 222 66
	lw	a5,-292(s0)
	slli	a5,a5,1
	.loc 1 222 40
	mv	a0,a5
	call	bflb_dsa_get_reg_size
	mv	a5,a0
	sb	a5,-18(s0)
	.loc 1 223 14
	lw	a5,-292(s0)
	srli	a5,a5,5
	sw	a5,-24(s0)
	.loc 1 246 5
	lw	a5,-300(s0)
	lw	a2,0(a5)
	lw	a5,-300(s0)
	lw	a3,12(a5)
	lw	a5,-300(s0)
	lw	a4,16(a5)
	lw	a5,-300(s0)
	lw	a5,20(a5)
	addi	a1,s0,-152
	mv	a6,a1
	lw	a1,-296(s0)
	lw	a0,-292(s0)
	call	bflb_dsa_mexp_mont
	.loc 1 247 5
	lw	a5,-300(s0)
	lw	a2,4(a5)
	lw	a5,-300(s0)
	lw	a3,24(a5)
	lw	a5,-300(s0)
	lw	a4,28(a5)
	lw	a5,-300(s0)
	lw	a5,32(a5)
	addi	a1,s0,-280
	mv	a6,a1
	lw	a1,-296(s0)
	lw	a0,-292(s0)
	call	bflb_dsa_mexp_mont
	.loc 1 249 5
	lw	a5,-24(s0)
	slli	a3,a5,16
	srli	a3,a3,16
	addi	a2,s0,-152
	lbu	a5,-17(s0)
	li	a4,0
	li	a1,4
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Data
	.loc 1 250 5
	lw	a5,-24(s0)
	slli	a3,a5,16
	srli	a3,a3,16
	addi	a2,s0,-280
	lbu	a5,-17(s0)
	li	a4,0
	li	a1,5
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Data
	.loc 1 251 39
	lw	a5,-300(s0)
	lw	a2,8(a5)
	.loc 1 251 5
	lw	a5,-24(s0)
	slli	a3,a5,16
	srli	a3,a3,16
	lbu	a5,-17(s0)
	li	a4,0
	li	a1,6
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Data
	.loc 1 252 39
	lw	a5,-300(s0)
	lw	a2,12(a5)
	.loc 1 252 5
	lw	a5,-24(s0)
	slli	a3,a5,16
	srli	a3,a3,16
	lbu	a5,-17(s0)
	li	a4,0
	li	a1,7
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Data
	.loc 1 253 39
	lw	a5,-300(s0)
	lw	a2,24(a5)
	.loc 1 253 5
	lw	a5,-24(s0)
	slli	a3,a5,16
	srli	a3,a3,16
	lbu	a5,-17(s0)
	li	a4,0
	li	a1,8
	mv	a0,a5
	call	Sec_Eng_PKA_Write_Data
	.loc 1 256 4
	lbu	a3,-17(s0)
	lbu	a4,-17(s0)
	lbu	a2,-17(s0)
	lbu	a0,-17(s0)
	li	a5,1
	sw	a5,0(sp)
	li	a7,7
	mv	a6,a3
	li	a5,5
	li	a3,4
	li	a1,4
	call	Sec_Eng_PKA_MSUB
	.loc 1 263 5
	lw	a5,-24(s0)
	andi	a4,a5,0xff
	lbu	a5,-17(s0)
	li	a3,0
	mv	a2,a4
	li	a1,10
	mv	a0,a5
	call	Sec_Eng_PKA_CREG
	.loc 1 264 5
	lw	a5,-24(s0)
	andi	a4,a5,0xff
	lbu	a5,-17(s0)
	li	a3,0
	mv	a2,a4
	li	a1,11
	mv	a0,a5
	call	Sec_Eng_PKA_CREG
	.loc 1 265 5
	lbu	a4,-17(s0)
	lbu	a2,-17(s0)
	lbu	a0,-18(s0)
	li	a6,1
	li	a5,4
	li	a3,6
	li	a1,5
	call	Sec_Eng_PKA_LMUL
	.loc 1 271 5
	lbu	a4,-17(s0)
	lbu	a2,-18(s0)
	lbu	a0,-17(s0)
	li	a6,1
	li	a5,7
	li	a3,5
	li	a1,9
	call	Sec_Eng_PKA_MREM
	.loc 1 279 5
	lw	a5,-24(s0)
	andi	a4,a5,0xff
	lbu	a5,-17(s0)
	li	a3,0
	mv	a2,a4
	li	a1,10
	mv	a0,a5
	call	Sec_Eng_PKA_CREG
	.loc 1 280 5
	lw	a5,-24(s0)
	andi	a4,a5,0xff
	lbu	a5,-17(s0)
	li	a3,0
	mv	a2,a4
	li	a1,11
	mv	a0,a5
	call	Sec_Eng_PKA_CREG
	.loc 1 281 5
	lbu	a4,-17(s0)
	lbu	a2,-17(s0)
	lbu	a0,-18(s0)
	li	a6,1
	li	a5,8
	li	a3,9
	li	a1,5
	call	Sec_Eng_PKA_LMUL
	.loc 1 288 5
	lbu	a4,-17(s0)
	lbu	a2,-18(s0)
	lbu	a0,-18(s0)
	li	a6,1
	li	a5,5
	li	a3,5
	li	a1,5
	call	Sec_Eng_PKA_LADD
	.loc 1 290 5
	lw	a5,-24(s0)
	andi	a5,a5,0xff
	slli	a5,a5,1
	andi	a4,a5,0xff
	lbu	a5,-18(s0)
	mv	a3,a4
	lw	a2,-308(s0)
	li	a1,5
	mv	a0,a5
	call	Sec_Eng_PKA_Read_Data
	.loc 1 295 12
	li	a5,0
	.loc 1 296 1
	mv	a0,a5
	lw	ra,332(sp)
	.cfi_restore 1
	lw	s0,328(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 336
	addi	sp,sp,336
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	bflb_dsa_decrypt_crt, .-bflb_dsa_decrypt_crt
	.section	.text.bflb_dsa_init,"ax",@progbits
	.align	1
	.globl	bflb_dsa_init
	.type	bflb_dsa_init, @function
bflb_dsa_init:
.LFB12:
	.loc 1 299 1
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
	.loc 1 300 12
	li	a5,0
	.loc 1 301 1
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
.LFE12:
	.size	bflb_dsa_init, .-bflb_dsa_init
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/cipher_suite/inc/bflb_dsa.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sec_eng.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x628
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x47
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x40
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0x12
	.4byte	0xa3
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0x24
	.byte	0x3
	.byte	0x9
	.byte	0x10
	.4byte	0x11f
	.uleb128 0xb
	.string	"dP"
	.byte	0xb
	.4byte	0x11f
	.byte	0
	.uleb128 0xb
	.string	"dQ"
	.byte	0xc
	.4byte	0x11f
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0xd
	.4byte	0x11f
	.byte	0x8
	.uleb128 0xb
	.string	"p"
	.byte	0xe
	.4byte	0x11f
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0xf
	.4byte	0x11f
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x10
	.4byte	0x11f
	.byte	0x14
	.uleb128 0xb
	.string	"q"
	.byte	0x11
	.4byte	0x11f
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x12
	.4byte	0x11f
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x13
	.4byte	0x11f
	.byte	0x20
	.byte	0
	.uleb128 0xc
	.4byte	0xa3
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x3
	.byte	0x14
	.byte	0x2
	.4byte	0xb4
	.uleb128 0x14
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x4
	.byte	0x86
	.byte	0xe
	.4byte	0x17b
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x6
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x7
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF31
	.byte	0x9
	.uleb128 0x5
	.4byte	.LASF32
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x4
	.byte	0x91
	.byte	0x2
	.4byte	0x130
	.uleb128 0x3
	.4byte	.LASF34
	.2byte	0x1f9
	.4byte	0x1b6
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.2byte	0x1e3
	.4byte	0x1ef
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.2byte	0x211
	.4byte	0x22d
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.2byte	0x1ef
	.4byte	0x266
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.2byte	0x20f
	.4byte	0x29f
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0xa3
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.2byte	0x1da
	.4byte	0x2bf
	.uleb128 0x1
	.4byte	0x17b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x11f
	.uleb128 0x1
	.4byte	0x8b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.2byte	0x202
	.4byte	0x2e4
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.2byte	0x1e6
	.4byte	0x313
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.2byte	0x1ff
	.4byte	0x342
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.2byte	0x1db
	.4byte	0x362
	.uleb128 0x1
	.4byte	0x17b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.2byte	0x1d8
	.4byte	0x387
	.uleb128 0x1
	.4byte	0x17b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x387
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x8b
	.byte	0
	.uleb128 0xc
	.4byte	0xaf
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x12a
	.byte	0x9
	.4byte	0x7f
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b8
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x12a
	.byte	0x30
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0xd4
	.4byte	0x7f
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x45c
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0xd4
	.byte	0x27
	.4byte	0xa3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x4
	.string	"c"
	.byte	0xd4
	.byte	0x37
	.4byte	0x11f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0xd5
	.byte	0x15
	.4byte	0x45c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x4
	.string	"d"
	.byte	0xd5
	.byte	0x37
	.4byte	0x11f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x4
	.string	"r"
	.byte	0xd5
	.byte	0x44
	.4byte	0x11f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0xdd
	.byte	0x1f
	.4byte	0x17b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0xde
	.byte	0x1f
	.4byte	0x17b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0xdf
	.byte	0xe
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"m1"
	.byte	0xea
	.byte	0xe
	.4byte	0x461
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x8
	.string	"m2"
	.byte	0xeb
	.byte	0xe
	.4byte	0x461
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.byte	0
	.uleb128 0xc
	.4byte	0x124
	.uleb128 0xe
	.4byte	0xa3
	.4byte	0x471
	.uleb128 0xf
	.4byte	0x6a
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x9f
	.4byte	0x7f
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50e
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x9f
	.byte	0x25
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"a"
	.byte	0x9f
	.byte	0x34
	.4byte	0x11f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.string	"b"
	.byte	0x9f
	.byte	0x40
	.4byte	0x11f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.string	"c"
	.byte	0x9f
	.byte	0x4c
	.4byte	0x11f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x9f
	.byte	0x58
	.4byte	0x11f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x9f
	.byte	0x69
	.4byte	0x11f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.string	"r"
	.byte	0x9f
	.byte	0x7c
	.4byte	0x11f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0xa1
	.byte	0x1f
	.4byte	0x17b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0xa2
	.byte	0x1f
	.4byte	0x17b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0xa3
	.byte	0xe
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f1
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x41
	.byte	0x27
	.4byte	0xa3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x4
	.string	"a"
	.byte	0x41
	.byte	0x36
	.4byte	0x11f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x4
	.string	"b"
	.byte	0x41
	.byte	0x42
	.4byte	0x11f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x4
	.string	"c"
	.byte	0x41
	.byte	0x4e
	.4byte	0x11f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x4
	.string	"r"
	.byte	0x41
	.byte	0x5a
	.4byte	0x11f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x8
	.string	"i"
	.byte	0x43
	.byte	0xe
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"j"
	.byte	0x43
	.byte	0x10
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"k"
	.byte	0x43
	.byte	0x12
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.string	"tmp"
	.byte	0x44
	.byte	0xe
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x45
	.byte	0xe
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.string	"p"
	.byte	0x46
	.byte	0xe
	.4byte	0x5f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x47
	.byte	0x1f
	.4byte	0x17b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x48
	.byte	0x1f
	.4byte	0x17b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x49
	.byte	0xe
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.4byte	.LASF59
	.byte	0x1
	.byte	0x4b
	.byte	0xd
	.4byte	0x5f6
	.byte	0x4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0xc
	.4byte	0x8b
	.uleb128 0xe
	.4byte	0x8b
	.4byte	0x606
	.uleb128 0xf
	.4byte	0x6a
	.byte	0x7f
	.byte	0
	.uleb128 0x18
	.4byte	.LASF60
	.byte	0x1
	.byte	0x1a
	.byte	0x22
	.4byte	0x17b
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x1a
	.byte	0x41
	.4byte	0xa3
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
	.uleb128 0x49
	.uleb128 0x13
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
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.sleb128 9
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
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
	.4byte	0x3c
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
.LASF45:
	.string	"bflb_dsa_init"
.LASF38:
	.string	"Sec_Eng_PKA_GF2Mont"
.LASF52:
	.string	"bflb_dsa_mexp_mont"
.LASF48:
	.string	"crtCfg"
.LASF17:
	.string	"qInv"
.LASF30:
	.string	"SEC_ENG_PKA_REG_SIZE_256"
.LASF4:
	.string	"short int"
.LASF42:
	.string	"Sec_Eng_PKA_LMUL"
.LASF27:
	.string	"SEC_ENG_PKA_REG_SIZE_96"
.LASF60:
	.string	"bflb_dsa_get_reg_size"
.LASF22:
	.string	"bflb_dsa_crt_cfg"
.LASF50:
	.string	"lregType"
.LASF51:
	.string	"dataSize"
.LASF29:
	.string	"SEC_ENG_PKA_REG_SIZE_192"
.LASF14:
	.string	"uint8_t"
.LASF16:
	.string	"uint32_t"
.LASF56:
	.string	"isOne"
.LASF24:
	.string	"SEC_ENG_PKA_REG_SIZE_16"
.LASF8:
	.string	"long long int"
.LASF26:
	.string	"SEC_ENG_PKA_REG_SIZE_64"
.LASF6:
	.string	"long int"
.LASF28:
	.string	"SEC_ENG_PKA_REG_SIZE_128"
.LASF58:
	.string	"tag_bflb_dsa_crt_cfg"
.LASF54:
	.string	"primeN_c"
.LASF11:
	.string	"long double"
.LASF19:
	.string	"primeN_p"
.LASF21:
	.string	"primeN_q"
.LASF3:
	.string	"unsigned char"
.LASF53:
	.string	"invR_c"
.LASF2:
	.string	"signed char"
.LASF25:
	.string	"SEC_ENG_PKA_REG_SIZE_32"
.LASF9:
	.string	"long long unsigned int"
.LASF39:
	.string	"Sec_Eng_PKA_Read_Data"
.LASF41:
	.string	"Sec_Eng_PKA_MREM"
.LASF10:
	.string	"unsigned int"
.LASF15:
	.string	"uint16_t"
.LASF18:
	.string	"invR_p"
.LASF20:
	.string	"invR_q"
.LASF36:
	.string	"Sec_Eng_PKA_Mont2GF"
.LASF5:
	.string	"short unsigned int"
.LASF46:
	.string	"bflb_dsa_decrypt_crt"
.LASF32:
	.string	"SEC_ENG_PKA_REG_SIZE_512"
.LASF12:
	.string	"char"
.LASF35:
	.string	"Sec_Eng_PKA_MSUB"
.LASF13:
	.string	"int32_t"
.LASF37:
	.string	"Sec_Eng_PKA_MEXP"
.LASF57:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF31:
	.string	"SEC_ENG_PKA_REG_SIZE_384"
.LASF7:
	.string	"long unsigned int"
.LASF55:
	.string	"bflb_dsa_mexp_binary"
.LASF40:
	.string	"Sec_Eng_PKA_LSQR"
.LASF47:
	.string	"size"
.LASF59:
	.string	"oneBuf"
.LASF23:
	.string	"SEC_ENG_PKA_REG_SIZE_8"
.LASF49:
	.string	"nregType"
.LASF33:
	.string	"SEC_ENG_PKA_REG_SIZE_Type"
.LASF43:
	.string	"Sec_Eng_PKA_CREG"
.LASF34:
	.string	"Sec_Eng_PKA_LADD"
.LASF44:
	.string	"Sec_Eng_PKA_Write_Data"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/cipher_suite/src/bflb_dsa.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
