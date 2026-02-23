	.file	"bl_sec_aes.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_sec_aes.c"
	.section	.text.bl_sec_aes_enc,"ax",@progbits
	.align	1
	.globl	bl_sec_aes_enc
	.type	bl_sec_aes_enc, @function
bl_sec_aes_enc:
.LFB9:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_sec_aes.c"
	.loc 1 43 1
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
	.loc 1 44 12
	li	a5,0
	.loc 1 45 1
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
.LFE9:
	.size	bl_sec_aes_enc, .-bl_sec_aes_enc
	.section	.text.Aes_Compare_Data,"ax",@progbits
	.align	1
	.type	Aes_Compare_Data, @function
Aes_Compare_Data:
.LFB10:
	.loc 1 48 1
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
	.loc 1 49 9
	sw	zero,-20(s0)
	.loc 1 49 16
	sw	zero,-24(s0)
	.loc 1 51 12
	sw	zero,-20(s0)
	.loc 1 51 5
	j	.L4
.L6:
	.loc 1 52 18
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 1 52 33
	lw	a5,-20(s0)
	lw	a3,-36(s0)
	add	a5,a3,a5
	.loc 1 52 22
	lbu	a5,0(a5)
	.loc 1 52 12
	beq	a4,a5,.L5
	.loc 1 53 23
	li	a5,1
	sw	a5,-24(s0)
.L5:
	.loc 1 51 27 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L4:
	.loc 1 51 19 discriminator 1
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	bgtu	a4,a5,.L6
	.loc 1 67 1
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
.LFE10:
	.size	Aes_Compare_Data, .-Aes_Compare_Data
	.section	.text._dump_iv_status,"ax",@progbits
	.align	1
	.type	_dump_iv_status, @function
_dump_iv_status:
.LFB11:
	.loc 1 70 1
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
	.loc 1 77 12
	sw	zero,-20(s0)
	.loc 1 77 20
	lw	a5,-36(s0)
	addi	a5,a5,12
	sw	a5,-24(s0)
	.loc 1 77 5
	j	.L8
.L9:
	.loc 1 77 61 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L8:
	.loc 1 77 54 discriminator 1
	lw	a4,-20(s0)
	li	a5,15
	ble	a4,a5,.L9
	.loc 1 81 1
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
.LFE11:
	.size	_dump_iv_status, .-_dump_iv_status
	.section	.rodata.aesSrcBuf_data,"a"
	.align	2
	.type	aesSrcBuf_data, @object
	.size	aesSrcBuf_data, 64
aesSrcBuf_data:
	.base64	"a8G+4i5An5bpPX4Rc5MXKmvBvuIuQJ+W6T1+EXOTFyprwb7iLkCfluk9fhFzkxcqa8G+4i5An5bpPX4Rc5MXKg=="
	.section	.rodata
	.align	2
.LC0:
	.string	"[CBC] AES-128-CBC case...\r\n"
	.section	.text.Sec_Eng_AES_Link_Case_CBC_128,"ax",@progbits
	.align	1
	.globl	Sec_Eng_AES_Link_Case_CBC_128
	.type	Sec_Eng_AES_Link_Case_CBC_128, @function
Sec_Eng_AES_Link_Case_CBC_128:
.LFB12:
	.loc 1 92 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-113(s0)
	.loc 1 103 34
	sw	zero,-108(s0)
	sw	zero,-104(s0)
	sw	zero,-100(s0)
	sw	zero,-96(s0)
	sw	zero,-92(s0)
	sw	zero,-88(s0)
	sw	zero,-84(s0)
	sw	zero,-80(s0)
	sw	zero,-76(s0)
	sw	zero,-72(s0)
	sw	zero,-68(s0)
	sw	zero,-64(s0)
	sw	zero,-60(s0)
	sw	zero,-56(s0)
	sw	zero,-52(s0)
	lw	a5,-108(s0)
	ori	a5,a5,1024
	sw	a5,-108(s0)
	lw	a4,-108(s0)
	li	a5,-12288
	addi	a5,a5,-1
	and	a4,a4,a5
	li	a5,8192
	or	a5,a4,a5
	sw	a5,-108(s0)
	li	a5,1
	sh	a5,-106(s0)
	li	a5,50462720
	addi	a5,a5,256
	sw	a5,-96(s0)
	li	a5,117833728
	addi	a5,a5,1284
	sw	a5,-92(s0)
	li	a5,185208832
	addi	a5,a5,-1784
	sw	a5,-88(s0)
	li	a5,252579840
	addi	a5,a5,-756
	sw	a5,-84(s0)
	li	a5,370507776
	addi	a5,a5,-469
	sw	a5,-80(s0)
	li	a5,-1496141824
	addi	a5,a5,-472
	sw	a5,-76(s0)
	li	a5,-2011828224
	addi	a5,a5,1963
	sw	a5,-72(s0)
	li	a5,1011863552
	addi	a5,a5,-247
	sw	a5,-68(s0)
	.loc 1 128 5
	lbu	a5,-113(s0)
	mv	a0,a5
	call	Sec_Eng_AES_Enable_Link
	.loc 1 130 5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	puts
	.loc 1 133 5
	addi	a5,s0,-108
	mv	a0,a5
	call	_dump_iv_status
	.loc 1 134 5
	addi	a1,s0,-108
	addi	a5,s0,-48
	lbu	a0,-113(s0)
	mv	a4,a5
	li	a3,32
	lui	a5,%hi(aesSrcBuf_data)
	addi	a2,a5,%lo(aesSrcBuf_data)
	call	Sec_Eng_AES_Link_Work
	.loc 1 135 68
	lw	a5,-100(s0)
	.loc 1 135 5
	li	a2,32
	mv	a1,a5
	lui	a5,%hi(aesResult_entrypted_cbc_128.2)
	addi	a0,a5,%lo(aesResult_entrypted_cbc_128.2)
	call	Aes_Compare_Data
	.loc 1 137 5
	addi	a5,s0,-108
	mv	a0,a5
	call	_dump_iv_status
	.loc 1 139 5
	addi	a1,s0,-108
	lui	a5,%hi(aesSrcBuf_data+32)
	addi	a2,a5,%lo(aesSrcBuf_data+32)
	addi	a4,s0,-48
	lbu	a5,-113(s0)
	li	a3,16
	mv	a0,a5
	call	Sec_Eng_AES_Link_Work
	.loc 1 140 5
	lui	a5,%hi(aesResult_entrypted_cbc_128.2+32)
	addi	a5,a5,%lo(aesResult_entrypted_cbc_128.2+32)
	.loc 1 140 79
	lw	a4,-100(s0)
	.loc 1 140 5
	li	a2,16
	mv	a1,a4
	mv	a0,a5
	call	Aes_Compare_Data
	.loc 1 142 5
	addi	a5,s0,-108
	mv	a0,a5
	call	_dump_iv_status
	.loc 1 144 5
	addi	a1,s0,-108
	lui	a5,%hi(aesSrcBuf_data+48)
	addi	a2,a5,%lo(aesSrcBuf_data+48)
	addi	a4,s0,-48
	lbu	a5,-113(s0)
	li	a3,16
	mv	a0,a5
	call	Sec_Eng_AES_Link_Work
	.loc 1 145 5
	lui	a5,%hi(aesResult_entrypted_cbc_128.2+48)
	addi	a5,a5,%lo(aesResult_entrypted_cbc_128.2+48)
	.loc 1 145 79
	lw	a4,-100(s0)
	.loc 1 145 5
	li	a2,16
	mv	a1,a4
	mv	a0,a5
	call	Aes_Compare_Data
	.loc 1 147 5
	addi	a5,s0,-108
	mv	a0,a5
	call	_dump_iv_status
	.loc 1 149 5
	lbu	a5,-113(s0)
	mv	a0,a5
	call	Sec_Eng_AES_Disable_Link
	.loc 1 150 1
	nop
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	Sec_Eng_AES_Link_Case_CBC_128, .-Sec_Eng_AES_Link_Case_CBC_128
	.section	.rodata
	.align	2
.LC1:
	.string	"[CTR] AES-128-CTR case...\r\n"
	.section	.text.Sec_Eng_AES_Link_Case_CTR_128,"ax",@progbits
	.align	1
	.globl	Sec_Eng_AES_Link_Case_CTR_128
	.type	Sec_Eng_AES_Link_Case_CTR_128, @function
Sec_Eng_AES_Link_Case_CTR_128:
.LFB13:
	.loc 1 153 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-113(s0)
	.loc 1 162 34
	sw	zero,-108(s0)
	sw	zero,-104(s0)
	sw	zero,-100(s0)
	sw	zero,-96(s0)
	sw	zero,-92(s0)
	sw	zero,-88(s0)
	sw	zero,-84(s0)
	sw	zero,-80(s0)
	sw	zero,-76(s0)
	sw	zero,-72(s0)
	sw	zero,-68(s0)
	sw	zero,-64(s0)
	sw	zero,-60(s0)
	sw	zero,-56(s0)
	sw	zero,-52(s0)
	lw	a5,-108(s0)
	ori	a5,a5,1024
	sw	a5,-108(s0)
	lw	a4,-108(s0)
	li	a5,-12288
	addi	a5,a5,-1
	and	a4,a4,a5
	li	a5,4096
	or	a5,a4,a5
	sw	a5,-108(s0)
	li	a5,1
	sh	a5,-106(s0)
	li	a5,-202182656
	addi	a5,a5,496
	sw	a5,-96(s0)
	li	a5,-134811648
	addi	a5,a5,1524
	sw	a5,-92(s0)
	li	a5,-67436544
	addi	a5,a5,-1544
	sw	a5,-88(s0)
	li	a5,-65536
	addi	a5,a5,-516
	sw	a5,-84(s0)
	li	a5,370507776
	addi	a5,a5,-469
	sw	a5,-80(s0)
	li	a5,-1496141824
	addi	a5,a5,-472
	sw	a5,-76(s0)
	li	a5,-2011828224
	addi	a5,a5,1963
	sw	a5,-72(s0)
	li	a5,1011863552
	addi	a5,a5,-247
	sw	a5,-68(s0)
	.loc 1 187 5
	lbu	a5,-113(s0)
	mv	a0,a5
	call	Sec_Eng_AES_Enable_Link
	.loc 1 189 5
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	puts
	.loc 1 191 5
	addi	a5,s0,-108
	mv	a0,a5
	call	_dump_iv_status
	.loc 1 193 5
	addi	a1,s0,-108
	addi	a5,s0,-48
	lbu	a0,-113(s0)
	mv	a4,a5
	li	a3,32
	lui	a5,%hi(aesSrcBuf_data)
	addi	a2,a5,%lo(aesSrcBuf_data)
	call	Sec_Eng_AES_Link_Work
	.loc 1 194 68
	lw	a5,-100(s0)
	.loc 1 194 5
	li	a2,32
	mv	a1,a5
	lui	a5,%hi(aesResult_entrypted_ctr_128.1)
	addi	a0,a5,%lo(aesResult_entrypted_ctr_128.1)
	call	Aes_Compare_Data
	.loc 1 197 5
	addi	a5,s0,-108
	mv	a0,a5
	call	_dump_iv_status
	.loc 1 199 5
	addi	a1,s0,-108
	lui	a5,%hi(aesSrcBuf_data+32)
	addi	a2,a5,%lo(aesSrcBuf_data+32)
	addi	a4,s0,-48
	lbu	a5,-113(s0)
	li	a3,16
	mv	a0,a5
	call	Sec_Eng_AES_Link_Work
	.loc 1 200 5
	lui	a5,%hi(aesResult_entrypted_ctr_128.1+32)
	addi	a5,a5,%lo(aesResult_entrypted_ctr_128.1+32)
	.loc 1 200 79
	lw	a4,-100(s0)
	.loc 1 200 5
	li	a2,16
	mv	a1,a4
	mv	a0,a5
	call	Aes_Compare_Data
	.loc 1 202 5
	addi	a5,s0,-108
	mv	a0,a5
	call	_dump_iv_status
	.loc 1 204 5
	addi	a1,s0,-108
	lui	a5,%hi(aesSrcBuf_data+48)
	addi	a2,a5,%lo(aesSrcBuf_data+48)
	addi	a4,s0,-48
	lbu	a5,-113(s0)
	li	a3,16
	mv	a0,a5
	call	Sec_Eng_AES_Link_Work
	.loc 1 205 5
	lui	a5,%hi(aesResult_entrypted_ctr_128.1+48)
	addi	a5,a5,%lo(aesResult_entrypted_ctr_128.1+48)
	.loc 1 205 79
	lw	a4,-100(s0)
	.loc 1 205 5
	li	a2,16
	mv	a1,a4
	mv	a0,a5
	call	Aes_Compare_Data
	.loc 1 207 5
	addi	a5,s0,-108
	mv	a0,a5
	call	_dump_iv_status
	.loc 1 209 5
	lbu	a5,-113(s0)
	mv	a0,a5
	call	Sec_Eng_AES_Disable_Link
	.loc 1 210 1
	nop
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	Sec_Eng_AES_Link_Case_CTR_128, .-Sec_Eng_AES_Link_Case_CTR_128
	.section	.rodata
	.align	2
.LC2:
	.string	"[ECB] AES-128-ECB case...\r\n"
	.section	.text.Sec_Eng_AES_Link_Case_ECB_128,"ax",@progbits
	.align	1
	.globl	Sec_Eng_AES_Link_Case_ECB_128
	.type	Sec_Eng_AES_Link_Case_ECB_128, @function
Sec_Eng_AES_Link_Case_ECB_128:
.LFB14:
	.loc 1 213 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-113(s0)
	.loc 1 222 34
	sw	zero,-108(s0)
	sw	zero,-104(s0)
	sw	zero,-100(s0)
	sw	zero,-96(s0)
	sw	zero,-92(s0)
	sw	zero,-88(s0)
	sw	zero,-84(s0)
	sw	zero,-80(s0)
	sw	zero,-76(s0)
	sw	zero,-72(s0)
	sw	zero,-68(s0)
	sw	zero,-64(s0)
	sw	zero,-60(s0)
	sw	zero,-56(s0)
	sw	zero,-52(s0)
	lw	a5,-108(s0)
	ori	a5,a5,1024
	sw	a5,-108(s0)
	li	a5,1
	sh	a5,-106(s0)
	li	a5,-202182656
	addi	a5,a5,496
	sw	a5,-96(s0)
	li	a5,-134811648
	addi	a5,a5,1524
	sw	a5,-92(s0)
	li	a5,-67436544
	addi	a5,a5,-1544
	sw	a5,-88(s0)
	li	a5,-65536
	addi	a5,a5,-516
	sw	a5,-84(s0)
	li	a5,370507776
	addi	a5,a5,-469
	sw	a5,-80(s0)
	li	a5,-1496141824
	addi	a5,a5,-472
	sw	a5,-76(s0)
	li	a5,-2011828224
	addi	a5,a5,1963
	sw	a5,-72(s0)
	li	a5,1011863552
	addi	a5,a5,-247
	sw	a5,-68(s0)
	.loc 1 247 5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	puts
	.loc 1 249 5
	lbu	a5,-113(s0)
	mv	a0,a5
	call	Sec_Eng_AES_Enable_Link
	.loc 1 251 5
	addi	a1,s0,-108
	addi	a5,s0,-48
	lbu	a0,-113(s0)
	mv	a4,a5
	li	a3,32
	lui	a5,%hi(aesSrcBuf_data)
	addi	a2,a5,%lo(aesSrcBuf_data)
	call	Sec_Eng_AES_Link_Work
	.loc 1 252 68
	lw	a5,-100(s0)
	.loc 1 252 5
	li	a2,32
	mv	a1,a5
	lui	a5,%hi(aesResult_entrypted_ecb_128.0)
	addi	a0,a5,%lo(aesResult_entrypted_ecb_128.0)
	call	Aes_Compare_Data
	.loc 1 254 5
	addi	a1,s0,-108
	lui	a5,%hi(aesSrcBuf_data+32)
	addi	a2,a5,%lo(aesSrcBuf_data+32)
	addi	a4,s0,-48
	lbu	a5,-113(s0)
	li	a3,16
	mv	a0,a5
	call	Sec_Eng_AES_Link_Work
	.loc 1 255 5
	lui	a5,%hi(aesResult_entrypted_ecb_128.0+32)
	addi	a5,a5,%lo(aesResult_entrypted_ecb_128.0+32)
	.loc 1 255 79
	lw	a4,-100(s0)
	.loc 1 255 5
	li	a2,16
	mv	a1,a4
	mv	a0,a5
	call	Aes_Compare_Data
	.loc 1 257 5
	addi	a1,s0,-108
	lui	a5,%hi(aesSrcBuf_data+48)
	addi	a2,a5,%lo(aesSrcBuf_data+48)
	addi	a4,s0,-48
	lbu	a5,-113(s0)
	li	a3,16
	mv	a0,a5
	call	Sec_Eng_AES_Link_Work
	.loc 1 258 5
	lui	a5,%hi(aesResult_entrypted_ecb_128.0+48)
	addi	a5,a5,%lo(aesResult_entrypted_ecb_128.0+48)
	.loc 1 258 79
	lw	a4,-100(s0)
	.loc 1 258 5
	li	a2,16
	mv	a1,a4
	mv	a0,a5
	call	Aes_Compare_Data
	.loc 1 260 5
	lbu	a5,-113(s0)
	mv	a0,a5
	call	Sec_Eng_AES_Disable_Link
	.loc 1 261 1
	nop
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	Sec_Eng_AES_Link_Case_ECB_128, .-Sec_Eng_AES_Link_Case_ECB_128
	.section	.text.bl_sec_aes_init,"ax",@progbits
	.align	1
	.globl	bl_sec_aes_init
	.type	bl_sec_aes_init, @function
bl_sec_aes_init:
.LFB15:
	.loc 1 264 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 265 5
	li	a0,0
	call	Sec_Eng_AES_Enable_BE
	.loc 1 266 12
	li	a5,0
	.loc 1 267 1
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
.LFE15:
	.size	bl_sec_aes_init, .-bl_sec_aes_init
	.section	.text.bl_sec_aes_test,"ax",@progbits
	.align	1
	.globl	bl_sec_aes_test
	.type	bl_sec_aes_test, @function
bl_sec_aes_test:
.LFB16:
	.loc 1 270 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 271 5
	lui	a5,%hi(bl_sec_aes_IRQHandler)
	addi	a1,a5,%lo(bl_sec_aes_IRQHandler)
	li	a0,29
	call	bl_irq_register
	.loc 1 272 5
	li	a0,29
	call	bl_irq_enable
	.loc 1 274 5
	li	a0,0
	call	Sec_Eng_AES_Link_Case_CBC_128
	.loc 1 276 5
	li	a0,0
	call	Sec_Eng_AES_Link_Case_CTR_128
	.loc 1 278 5
	li	a0,0
	call	Sec_Eng_AES_Link_Case_ECB_128
	.loc 1 280 12
	li	a5,0
	.loc 1 281 1
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
.LFE16:
	.size	bl_sec_aes_test, .-bl_sec_aes_test
	.section	.text._clear_aes_int,"ax",@progbits
	.align	1
	.type	_clear_aes_int, @function
_clear_aes_int:
.LFB17:
	.loc 1 284 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 285 14
	li	a5,1073758208
	sw	a5,-20(s0)
	.loc 1 288 39
	lw	a5,-20(s0)
	addi	a5,a5,256
	.loc 1 288 9
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 289 9
	lw	a5,-24(s0)
	ori	a5,a5,512
	sw	a5,-24(s0)
	.loc 1 290 33
	lw	a5,-20(s0)
	addi	a5,a5,256
	.loc 1 290 8
	mv	a4,a5
	.loc 1 290 43
	lw	a5,-24(s0)
	sw	a5,0(a4)
	.loc 1 291 1
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
.LFE17:
	.size	_clear_aes_int, .-_clear_aes_int
	.section	.text.bl_sec_aes_IRQHandler,"ax",@progbits
	.align	1
	.globl	bl_sec_aes_IRQHandler
	.type	bl_sec_aes_IRQHandler, @function
bl_sec_aes_IRQHandler:
.LFB18:
	.loc 1 294 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 296 5
	call	_clear_aes_int
	.loc 1 297 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	bl_sec_aes_IRQHandler, .-bl_sec_aes_IRQHandler
	.section	.rodata.aesResult_entrypted_cbc_128.2,"a"
	.align	2
	.type	aesResult_entrypted_cbc_128.2, @object
	.size	aesResult_entrypted_cbc_128.2, 64
aesResult_entrypted_cbc_128.2:
	.base64	"dkmrrIEZskbO6Y6bEukZfUy7yFh1azWBJVKelpijj0SfbweW7j5HsNh8dhsgUn94BwE0CF8CdRdV78o7TNx9Yg=="
	.section	.rodata.aesResult_entrypted_ctr_128.1,"a"
	.align	2
	.type	aesResult_entrypted_ctr_128.1, @object
	.size	aesResult_entrypted_ctr_128.1, 64
aesResult_entrypted_ctr_128.1:
	.base64	"h01hkbYg4yYb72hkmQ22zl3qwt5JM8718Z0Jxo/DZIQB7X2aVsmo2VeJtgpkKXtug12Hfd6xB1A9N0/KZv+81A=="
	.section	.rodata.aesResult_entrypted_ecb_128.0,"a"
	.align	2
	.type	aesResult_entrypted_ecb_128.0, @object
	.size	aesResult_entrypted_ecb_128.0, 64
aesResult_entrypted_ecb_128.0:
	.base64	"Otd7tA16NmConsrzJGbvlzrXe7QNejZgqJ7K8yRm75c613u0DXo2YKieyvMkZu+XOtd7tA16NmConsrzJGbvlw=="
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sec_eng.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_irq.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x76b
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x15
	.4byte	.LASF153
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x16
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x17
	.byte	0x4
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xb
	.4byte	0x7a
	.uleb128 0x9
	.4byte	0x81
	.uleb128 0x8
	.4byte	0x32
	.byte	0x3
	.byte	0x41
	.byte	0x1
	.4byte	0x236
	.uleb128 0x1
	.4byte	.LASF13
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF14
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x35
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x36
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x37
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x39
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x3a
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x3b
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x49
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x4b
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x4d
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x4f
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x50
	.byte	0
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0xb
	.4byte	0x236
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0x8
	.4byte	0x32
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.4byte	0x272
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x4
	.byte	0x1b
	.byte	0x2
	.4byte	0x253
	.uleb128 0x8
	.4byte	0x32
	.byte	0x5
	.byte	0x39
	.byte	0xe
	.4byte	0x291
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x5
	.byte	0x3b
	.byte	0x2
	.4byte	0x27e
	.uleb128 0x8
	.4byte	0x32
	.byte	0x5
	.byte	0x51
	.byte	0xe
	.4byte	0x2bc
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x32
	.byte	0x5
	.byte	0x5a
	.byte	0xe
	.4byte	0x2e1
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x32
	.byte	0x5
	.byte	0x6e
	.byte	0xe
	.4byte	0x2fa
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x32
	.byte	0x5
	.byte	0x7e
	.byte	0xe
	.4byte	0x313
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x3c
	.byte	0x4
	.byte	0x5
	.byte	0xf1
	.byte	0x9
	.4byte	0x433
	.uleb128 0x6
	.4byte	.LASF101
	.byte	0xf3
	.4byte	0x247
	.byte	0x2
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF102
	.byte	0xf4
	.4byte	0x247
	.byte	0x1
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF103
	.byte	0xf5
	.4byte	0x247
	.byte	0x1
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF104
	.byte	0xf6
	.4byte	0x247
	.byte	0x1
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF105
	.byte	0xf8
	.4byte	0x247
	.byte	0x1
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF106
	.byte	0xf9
	.4byte	0x247
	.byte	0x1
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF107
	.byte	0xfb
	.4byte	0x247
	.byte	0x2
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF108
	.byte	0xfc
	.4byte	0x247
	.byte	0x1
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF109
	.byte	0xfe
	.4byte	0x247
	.byte	0x10
	.byte	0x10
	.uleb128 0x19
	.4byte	.LASF110
	.byte	0x5
	.byte	0xff
	.byte	0xe
	.4byte	0x247
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF111
	.2byte	0x100
	.4byte	0x247
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF112
	.2byte	0x101
	.4byte	0x247
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF113
	.2byte	0x102
	.4byte	0x247
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF114
	.2byte	0x103
	.4byte	0x247
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF115
	.2byte	0x104
	.4byte	0x247
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x105
	.4byte	0x247
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x106
	.4byte	0x247
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF118
	.2byte	0x107
	.4byte	0x247
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF119
	.2byte	0x108
	.4byte	0x247
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF120
	.2byte	0x109
	.4byte	0x247
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF121
	.2byte	0x10a
	.4byte	0x247
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF122
	.2byte	0x10b
	.4byte	0x247
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x10c
	.4byte	0x247
	.byte	0x38
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF154
	.byte	0x5
	.2byte	0x10d
	.byte	0x1e
	.4byte	0x313
	.byte	0x4
	.uleb128 0x9
	.4byte	0x236
	.uleb128 0xf
	.4byte	0x242
	.4byte	0x456
	.uleb128 0x10
	.4byte	0x6a
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.4byte	0x446
	.uleb128 0x5
	.4byte	.LASF131
	.byte	0x53
	.byte	0x16
	.4byte	0x456
	.uleb128 0x5
	.byte	0x3
	.4byte	aesSrcBuf_data
	.uleb128 0x11
	.4byte	.LASF124
	.byte	0x20
	.4byte	0x47c
	.uleb128 0x3
	.4byte	0x6a
	.byte	0
	.uleb128 0x11
	.4byte	.LASF125
	.byte	0x32
	.4byte	0x491
	.uleb128 0x3
	.4byte	0x63
	.uleb128 0x3
	.4byte	0x78
	.byte	0
	.uleb128 0xc
	.4byte	.LASF126
	.2byte	0x1c0
	.4byte	0x4a2
	.uleb128 0x3
	.4byte	0x291
	.byte	0
	.uleb128 0xc
	.4byte	.LASF127
	.2byte	0x1c2
	.4byte	0x4b3
	.uleb128 0x3
	.4byte	0x291
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF128
	.byte	0x5
	.2byte	0x1c3
	.byte	0xd
	.4byte	0x272
	.4byte	0x4de
	.uleb128 0x3
	.4byte	0x291
	.uleb128 0x3
	.4byte	0x247
	.uleb128 0x3
	.4byte	0x4de
	.uleb128 0x3
	.4byte	0x247
	.uleb128 0x3
	.4byte	0x441
	.byte	0
	.uleb128 0x9
	.4byte	0x242
	.uleb128 0x1c
	.4byte	.LASF129
	.byte	0x7
	.byte	0xe3
	.byte	0x5
	.4byte	0x63
	.4byte	0x4f9
	.uleb128 0x3
	.4byte	0x86
	.byte	0
	.uleb128 0xc
	.4byte	.LASF130
	.2byte	0x1c1
	.4byte	0x50a
	.uleb128 0x3
	.4byte	0x291
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x125
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x11b
	.byte	0xd
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x555
	.uleb128 0x1f
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x11d
	.byte	0xe
	.4byte	0x247
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.string	"val"
	.byte	0x1
	.2byte	0x11e
	.byte	0xe
	.4byte	0x247
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.4byte	.LASF133
	.2byte	0x10d
	.4byte	0x63
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.4byte	.LASF134
	.2byte	0x107
	.4byte	0x63
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF138
	.byte	0xd4
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d1
	.uleb128 0x7
	.4byte	.LASF140
	.byte	0xd4
	.byte	0x38
	.4byte	0x291
	.uleb128 0x3
	.byte	0x91
	.sleb128 -113
	.uleb128 0x5
	.4byte	.LASF135
	.byte	0xd6
	.byte	0xd
	.4byte	0x5d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	.LASF136
	.byte	0xd7
	.byte	0x1a
	.4byte	0x456
	.uleb128 0x5
	.byte	0x3
	.4byte	aesResult_entrypted_ecb_128.0
	.uleb128 0x5
	.4byte	.LASF137
	.byte	0xde
	.byte	0x22
	.4byte	0x433
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0xf
	.4byte	0x236
	.4byte	0x5e1
	.uleb128 0x10
	.4byte	0x6a
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF139
	.byte	0x98
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x633
	.uleb128 0x7
	.4byte	.LASF140
	.byte	0x98
	.byte	0x38
	.4byte	0x291
	.uleb128 0x3
	.byte	0x91
	.sleb128 -113
	.uleb128 0x5
	.4byte	.LASF135
	.byte	0x9a
	.byte	0xd
	.4byte	0x5d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	.LASF141
	.byte	0x9b
	.byte	0x1a
	.4byte	0x456
	.uleb128 0x5
	.byte	0x3
	.4byte	aesResult_entrypted_ctr_128.1
	.uleb128 0x5
	.4byte	.LASF137
	.byte	0xa2
	.byte	0x22
	.4byte	0x433
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0xd
	.4byte	.LASF142
	.byte	0x5b
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x685
	.uleb128 0x7
	.4byte	.LASF140
	.byte	0x5b
	.byte	0x38
	.4byte	0x291
	.uleb128 0x3
	.byte	0x91
	.sleb128 -113
	.uleb128 0x5
	.4byte	.LASF135
	.byte	0x5d
	.byte	0xd
	.4byte	0x5d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	.LASF143
	.byte	0x5e
	.byte	0x1a
	.4byte	0x456
	.uleb128 0x5
	.byte	0x3
	.4byte	aesResult_entrypted_cbc_128.2
	.uleb128 0x5
	.4byte	.LASF137
	.byte	0x67
	.byte	0x22
	.4byte	0x433
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0x13
	.4byte	.LASF145
	.byte	0x45
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c1
	.uleb128 0x7
	.4byte	.LASF137
	.byte	0x45
	.byte	0x3b
	.4byte	0x6c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.string	"i"
	.byte	0x47
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"iv"
	.byte	0x48
	.byte	0xe
	.4byte	0x441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	0x433
	.uleb128 0x13
	.4byte	.LASF146
	.byte	0x2f
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x71f
	.uleb128 0x7
	.4byte	.LASF147
	.byte	0x2f
	.byte	0x2d
	.4byte	0x4de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF148
	.byte	0x2f
	.byte	0x40
	.4byte	0x441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"len"
	.byte	0x2f
	.byte	0x50
	.4byte	0x247
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.string	"i"
	.byte	0x31
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF149
	.byte	0x31
	.byte	0x10
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.4byte	.LASF150
	.byte	0x1
	.byte	0x2a
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.string	"key"
	.byte	0x2a
	.byte	0x2d
	.4byte	0x441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF151
	.byte	0x2a
	.byte	0x46
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF148
	.byte	0x2a
	.byte	0x68
	.4byte	0x441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF152
	.byte	0x2a
	.byte	0x88
	.4byte	0x441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
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
	.sleb128 5
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
	.uleb128 0xe
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.sleb128 13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x88
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
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x16
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
	.uleb128 0x88
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x34
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
	.uleb128 0x21
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
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF97:
	.string	"SEC_ENG_AES_USE_NEW"
.LASF112:
	.string	"aesIV0"
.LASF113:
	.string	"aesIV1"
.LASF114:
	.string	"aesIV2"
.LASF115:
	.string	"aesIV3"
.LASF143:
	.string	"aesResult_entrypted_cbc_128"
.LASF55:
	.string	"TIMER_WDT_IRQn"
.LASF147:
	.string	"expected"
.LASF19:
	.string	"L1C_BMX_ERR_IRQn"
.LASF126:
	.string	"Sec_Eng_AES_Enable_BE"
.LASF144:
	.string	"_clear_aes_int"
.LASF111:
	.string	"aesDstAddr"
.LASF90:
	.string	"SEC_ENG_AES_ECB"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF100:
	.string	"SEC_ENG_AES_DECRYPTION"
.LASF124:
	.string	"bl_irq_enable"
.LASF9:
	.string	"long long unsigned int"
.LASF15:
	.string	"MEXT_IRQn"
.LASF27:
	.string	"SEC_CDET_IRQn"
.LASF146:
	.string	"Aes_Compare_Data"
.LASF58:
	.string	"RESERVED12"
.LASF59:
	.string	"RESERVED13"
.LASF60:
	.string	"RESERVED14"
.LASF62:
	.string	"RESERVED16"
.LASF63:
	.string	"RESERVED17"
.LASF64:
	.string	"RESERVED18"
.LASF65:
	.string	"RESERVED19"
.LASF87:
	.string	"BL_Err_Type"
.LASF6:
	.string	"long int"
.LASF149:
	.string	"is_failed"
.LASF61:
	.string	"GPIO_INT0_IRQn"
.LASF128:
	.string	"Sec_Eng_AES_Link_Work"
.LASF42:
	.string	"GPADC_DMA_IRQn"
.LASF11:
	.string	"long double"
.LASF86:
	.string	"TIMEOUT"
.LASF139:
	.string	"Sec_Eng_AES_Link_Case_CTR_128"
.LASF49:
	.string	"I2C_IRQn"
.LASF22:
	.string	"RF_TOP_INT0_IRQn"
.LASF134:
	.string	"bl_sec_aes_init"
.LASF66:
	.string	"RESERVED20"
.LASF140:
	.string	"aesId"
.LASF116:
	.string	"aesKey0"
.LASF117:
	.string	"aesKey1"
.LASF118:
	.string	"aesKey2"
.LASF119:
	.string	"aesKey3"
.LASF120:
	.string	"aesKey4"
.LASF121:
	.string	"aesKey5"
.LASF122:
	.string	"aesKey6"
.LASF123:
	.string	"aesKey7"
.LASF110:
	.string	"aesSrcAddr"
.LASF67:
	.string	"PDS_WAKEUP_IRQn"
.LASF152:
	.string	"output"
.LASF151:
	.string	"keysize"
.LASF145:
	.string	"_dump_iv_status"
.LASF138:
	.string	"Sec_Eng_AES_Link_Case_ECB_128"
.LASF92:
	.string	"SEC_ENG_AES_CBC"
.LASF24:
	.string	"SDIO_IRQn"
.LASF99:
	.string	"SEC_ENG_AES_ENCRYPTION"
.LASF125:
	.string	"bl_irq_register"
.LASF70:
	.string	"BOR_IRQn"
.LASF26:
	.string	"SEC_GMAC_IRQn"
.LASF109:
	.string	"aesMsgLen"
.LASF21:
	.string	"SEC_BMX_ERR_IRQn"
.LASF72:
	.string	"BZ_PHY_IRQn"
.LASF154:
	.string	"SEC_Eng_AES_Link_Config_Type"
.LASF46:
	.string	"UART0_IRQn"
.LASF141:
	.string	"aesResult_entrypted_ctr_128"
.LASF95:
	.string	"SEC_ENG_AES_KEY_192BITS"
.LASF155:
	.string	"bl_sec_aes_IRQHandler"
.LASF129:
	.string	"puts"
.LASF31:
	.string	"SEC_SHA_IRQn"
.LASF30:
	.string	"SEC_AES_IRQn"
.LASF96:
	.string	"SEC_ENG_AES_DOUBLE_KEY_128BITS"
.LASF88:
	.string	"SEC_ENG_AES_ID0"
.LASF85:
	.string	"ERROR"
.LASF104:
	.string	"aesHwKeyEn"
.LASF13:
	.string	"MSOFT_IRQn"
.LASF51:
	.string	"PWM_IRQn"
.LASF107:
	.string	"aesBlockMode"
.LASF32:
	.string	"DMA_ALL_IRQn"
.LASF79:
	.string	"MAC_PORT_TRG_IRQn"
.LASF77:
	.string	"MAC_TX_TRG_IRQn"
.LASF130:
	.string	"Sec_Eng_AES_Enable_Link"
.LASF47:
	.string	"UART1_IRQn"
.LASF105:
	.string	"aesIntClr"
.LASF33:
	.string	"RESERVED0"
.LASF34:
	.string	"RESERVED1"
.LASF35:
	.string	"RESERVED2"
.LASF38:
	.string	"RESERVED3"
.LASF39:
	.string	"RESERVED4"
.LASF41:
	.string	"RESERVED5"
.LASF45:
	.string	"RESERVED6"
.LASF48:
	.string	"RESERVED7"
.LASF50:
	.string	"RESERVED8"
.LASF52:
	.string	"RESERVED9"
.LASF73:
	.string	"BLE_IRQn"
.LASF101:
	.string	"aesMode"
.LASF37:
	.string	"IRRX_IRQn"
.LASF28:
	.string	"SEC_PKA_IRQn"
.LASF3:
	.string	"unsigned char"
.LASF135:
	.string	"aesDstBuf"
.LASF74:
	.string	"MAC_TXRX_TIMER_IRQn"
.LASF108:
	.string	"aesIVSel"
.LASF40:
	.string	"SF_CTRL_IRQn"
.LASF20:
	.string	"L1C_BMX_TO_IRQn"
.LASF4:
	.string	"short int"
.LASF36:
	.string	"IRTX_IRQn"
.LASF150:
	.string	"bl_sec_aes_enc"
.LASF76:
	.string	"MAC_RX_TRG_IRQn"
.LASF80:
	.string	"WIFI_IPC_PUBLIC_IRQn"
.LASF133:
	.string	"bl_sec_aes_test"
.LASF43:
	.string	"EFUSE_IRQn"
.LASF148:
	.string	"input"
.LASF94:
	.string	"SEC_ENG_AES_KEY_256BITS"
.LASF127:
	.string	"Sec_Eng_AES_Disable_Link"
.LASF98:
	.string	"SEC_ENG_AES_USE_OLD"
.LASF103:
	.string	"aesDecKeySel"
.LASF83:
	.string	"uint32_t"
.LASF18:
	.string	"BMX_TO_IRQn"
.LASF7:
	.string	"long unsigned int"
.LASF12:
	.string	"char"
.LASF102:
	.string	"aesDecEn"
.LASF14:
	.string	"MTIME_IRQn"
.LASF91:
	.string	"SEC_ENG_AES_CTR"
.LASF10:
	.string	"unsigned int"
.LASF78:
	.string	"MAC_GEN_IRQn"
.LASF93:
	.string	"SEC_ENG_AES_KEY_128BITS"
.LASF71:
	.string	"WIFI_IRQn"
.LASF106:
	.string	"aesIntSet"
.LASF137:
	.string	"linkCfg"
.LASF17:
	.string	"BMX_ERR_IRQn"
.LASF75:
	.string	"MAC_TXRX_MISC_IRQn"
.LASF5:
	.string	"short unsigned int"
.LASF53:
	.string	"TIMER_CH0_IRQn"
.LASF142:
	.string	"Sec_Eng_AES_Link_Case_CBC_128"
.LASF23:
	.string	"RF_TOP_INT1_IRQn"
.LASF68:
	.string	"HBN_OUT0_IRQn"
.LASF56:
	.string	"RESERVED10"
.LASF57:
	.string	"RESERVED11"
.LASF136:
	.string	"aesResult_entrypted_ecb_128"
.LASF81:
	.string	"IRQn_LAST"
.LASF82:
	.string	"uint8_t"
.LASF84:
	.string	"SUCCESS"
.LASF16:
	.string	"CLIC_SOFT_PEND_IRQn"
.LASF29:
	.string	"SEC_TRNG_IRQn"
.LASF25:
	.string	"DMA_BMX_ERR_IRQn"
.LASF44:
	.string	"SPI_IRQn"
.LASF131:
	.string	"aesSrcBuf_data"
.LASF54:
	.string	"TIMER_CH1_IRQn"
.LASF153:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF69:
	.string	"HBN_OUT1_IRQn"
.LASF89:
	.string	"SEC_ENG_AES_ID_Type"
.LASF132:
	.string	"AESx"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_sec_aes.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
