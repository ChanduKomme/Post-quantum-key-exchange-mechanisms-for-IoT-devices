	.file	"bl_cks.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_cks.c"
	.section	.text._bl_cks_test_case1,"ax",@progbits
	.align	1
	.type	_bl_cks_test_case1, @function
_bl_cks_test_case1:
.LFB23:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_cks.c"
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
	.loc 1 59 5
	li	a5,1073782784
	addi	a5,a5,1792
	.loc 1 59 36
	li	a4,1
	sb	a4,0(a5)
	.loc 1 60 12
	sw	zero,-20(s0)
	.loc 1 60 5
	j	.L2
.L3:
	.loc 1 61 9
	li	a5,1073782784
	addi	a5,a5,1796
	.loc 1 61 51
	lui	a4,%hi(data_src1.1)
	addi	a3,a4,%lo(data_src1.1)
	lw	a4,-20(s0)
	add	a4,a3,a4
	lbu	a4,0(a4)
	.loc 1 61 40
	sb	a4,0(a5)
	.loc 1 60 41 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	.loc 1 60 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,19
	bleu	a4,a5,.L3
	.loc 1 63 11
	li	a5,1073782784
	addi	a5,a5,1800
	.loc 1 63 9
	lhu	a5,0(a5)
	sh	a5,-22(s0)
	.loc 1 66 5
	li	a5,1073782784
	addi	a5,a5,1792
	.loc 1 66 36
	li	a4,1
	sb	a4,0(a5)
	.loc 1 67 5
	li	a5,1073782784
	addi	a5,a5,1792
	.loc 1 67 36
	li	a4,2
	sb	a4,0(a5)
	.loc 1 68 12
	sw	zero,-20(s0)
	.loc 1 68 5
	j	.L4
.L5:
	.loc 1 69 9
	li	a5,1073782784
	addi	a5,a5,1796
	.loc 1 69 51
	lui	a4,%hi(data_src1.1)
	addi	a3,a4,%lo(data_src1.1)
	lw	a4,-20(s0)
	add	a4,a3,a4
	lbu	a4,0(a4)
	.loc 1 69 40
	sb	a4,0(a5)
	.loc 1 68 41 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L4:
	.loc 1 68 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,19
	bleu	a4,a5,.L5
	.loc 1 71 11
	li	a5,1073782784
	addi	a5,a5,1800
	.loc 1 71 9
	lhu	a5,0(a5)
	sh	a5,-22(s0)
	.loc 1 73 1
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
.LFE23:
	.size	_bl_cks_test_case1, .-_bl_cks_test_case1
	.section	.text._bl_cks_test_case2,"ax",@progbits
	.align	1
	.type	_bl_cks_test_case2, @function
_bl_cks_test_case2:
.LFB24:
	.loc 1 76 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 77 14
	li	a5,16384
	addi	a5,a5,-225
	sh	a5,-26(s0)
	.loc 1 82 5
	li	a5,1073782784
	addi	a5,a5,1792
	.loc 1 82 36
	li	a4,1
	sb	a4,0(a5)
	.loc 1 83 14
	sw	zero,-24(s0)
	.loc 1 84 12
	sw	zero,-20(s0)
	.loc 1 84 5
	j	.L7
.L8:
	.loc 1 85 18
	lhu	a5,-26(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 86 9
	li	a5,1073782784
	addi	a5,a5,1796
	.loc 1 86 40
	lhu	a4,-26(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 87 40
	lhu	a5,-26(s0)
	srli	a5,a5,8
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 87 9
	li	a5,1073782784
	addi	a5,a5,1796
	.loc 1 87 40
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 84 25 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L7:
	.loc 1 84 19 discriminator 1
	lw	a5,-20(s0)
	ble	a5,zero,.L8
	.loc 1 89 11
	j	.L9
.L10:
	.loc 1 90 30
	lw	a5,-24(s0)
	srli	a4,a5,16
	.loc 1 90 49
	lw	a5,-24(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 90 18
	add	a5,a4,a5
	sw	a5,-24(s0)
.L9:
	.loc 1 89 21
	lw	a5,-24(s0)
	srli	a5,a5,16
	.loc 1 89 12
	bne	a5,zero,.L10
	.loc 1 93 11
	li	a5,1073782784
	addi	a5,a5,1800
	.loc 1 93 9
	lhu	a5,0(a5)
	sh	a5,-28(s0)
	.loc 1 99 5
	li	a5,1073782784
	addi	a5,a5,1792
	.loc 1 99 36
	li	a4,1
	sb	a4,0(a5)
	.loc 1 100 5
	li	a5,1073782784
	addi	a5,a5,1792
	.loc 1 100 36
	li	a4,2
	sb	a4,0(a5)
	.loc 1 101 14
	sw	zero,-24(s0)
	.loc 1 102 12
	sw	zero,-20(s0)
	.loc 1 102 5
	j	.L11
.L12:
	.loc 1 103 18
	lhu	a5,-26(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 104 9
	li	a5,1073782784
	addi	a5,a5,1796
	.loc 1 104 40
	lhu	a4,-26(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 105 40
	lhu	a5,-26(s0)
	srli	a5,a5,8
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 105 9
	li	a5,1073782784
	addi	a5,a5,1796
	.loc 1 105 40
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 102 25 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L11:
	.loc 1 102 19 discriminator 1
	lw	a5,-20(s0)
	ble	a5,zero,.L12
	.loc 1 107 11
	j	.L13
.L14:
	.loc 1 108 30
	lw	a5,-24(s0)
	srli	a4,a5,16
	.loc 1 108 49
	lw	a5,-24(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 108 18
	add	a5,a4,a5
	sw	a5,-24(s0)
.L13:
	.loc 1 107 21
	lw	a5,-24(s0)
	srli	a5,a5,16
	.loc 1 107 12
	bne	a5,zero,.L14
	.loc 1 111 11
	li	a5,1073782784
	addi	a5,a5,1800
	.loc 1 111 9
	lhu	a5,0(a5)
	sh	a5,-28(s0)
	.loc 1 121 1
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
.LFE24:
	.size	_bl_cks_test_case2, .-_bl_cks_test_case2
	.section	.text._bl_cks_test_case3,"ax",@progbits
	.align	1
	.type	_bl_cks_test_case3, @function
_bl_cks_test_case3:
.LFB25:
	.loc 1 124 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 125 14
	li	a5,16384
	addi	a5,a5,-225
	sh	a5,-26(s0)
	.loc 1 130 5
	li	a5,1073782784
	addi	a5,a5,1792
	.loc 1 130 36
	li	a4,1
	sb	a4,0(a5)
	.loc 1 131 14
	sw	zero,-24(s0)
	.loc 1 132 12
	sw	zero,-20(s0)
	.loc 1 132 5
	j	.L16
.L17:
	.loc 1 133 18
	lhu	a5,-26(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 134 9
	li	a5,1073782784
	addi	a5,a5,1796
	.loc 1 134 40
	lhu	a4,-26(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 135 40
	lhu	a5,-26(s0)
	srli	a5,a5,8
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 135 9
	li	a5,1073782784
	addi	a5,a5,1796
	.loc 1 135 40
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 132 28 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L16:
	.loc 1 132 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,999
	ble	a4,a5,.L17
	.loc 1 137 11
	j	.L18
.L19:
	.loc 1 138 30
	lw	a5,-24(s0)
	srli	a4,a5,16
	.loc 1 138 49
	lw	a5,-24(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 138 18
	add	a5,a4,a5
	sw	a5,-24(s0)
.L18:
	.loc 1 137 21
	lw	a5,-24(s0)
	srli	a5,a5,16
	.loc 1 137 12
	bne	a5,zero,.L19
	.loc 1 141 11
	li	a5,1073782784
	addi	a5,a5,1800
	.loc 1 141 9
	lhu	a5,0(a5)
	sh	a5,-28(s0)
	.loc 1 147 5
	li	a5,1073782784
	addi	a5,a5,1792
	.loc 1 147 36
	li	a4,1
	sb	a4,0(a5)
	.loc 1 148 5
	li	a5,1073782784
	addi	a5,a5,1792
	.loc 1 148 36
	li	a4,2
	sb	a4,0(a5)
	.loc 1 149 14
	sw	zero,-24(s0)
	.loc 1 150 12
	sw	zero,-20(s0)
	.loc 1 150 5
	j	.L20
.L21:
	.loc 1 151 18
	lhu	a5,-26(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 152 9
	li	a5,1073782784
	addi	a5,a5,1796
	.loc 1 152 40
	lhu	a4,-26(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 153 40
	lhu	a5,-26(s0)
	srli	a5,a5,8
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 153 9
	li	a5,1073782784
	addi	a5,a5,1796
	.loc 1 153 40
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 150 28 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L20:
	.loc 1 150 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,999
	ble	a4,a5,.L21
	.loc 1 155 11
	j	.L22
.L23:
	.loc 1 156 30
	lw	a5,-24(s0)
	srli	a4,a5,16
	.loc 1 156 49
	lw	a5,-24(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 156 18
	add	a5,a4,a5
	sw	a5,-24(s0)
.L22:
	.loc 1 155 21
	lw	a5,-24(s0)
	srli	a5,a5,16
	.loc 1 155 12
	bne	a5,zero,.L23
	.loc 1 159 11
	li	a5,1073782784
	addi	a5,a5,1800
	.loc 1 159 9
	lhu	a5,0(a5)
	sh	a5,-28(s0)
	.loc 1 169 1
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
.LFE25:
	.size	_bl_cks_test_case3, .-_bl_cks_test_case3
	.section	.text._bl_cks_test_case4,"ax",@progbits
	.align	1
	.type	_bl_cks_test_case4, @function
_bl_cks_test_case4:
.LFB26:
	.loc 1 172 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 173 14
	li	a5,16384
	addi	a5,a5,-225
	sh	a5,-26(s0)
	.loc 1 174 13
	li	a5,-95
	sb	a5,-27(s0)
	.loc 1 179 5
	li	a5,1073782784
	addi	a5,a5,1792
	.loc 1 179 36
	li	a4,1
	sb	a4,0(a5)
	.loc 1 180 14
	sw	zero,-24(s0)
	.loc 1 181 12
	sw	zero,-20(s0)
	.loc 1 181 5
	j	.L25
.L26:
	.loc 1 182 18
	lhu	a5,-26(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 183 9
	li	a5,1073782784
	addi	a5,a5,1796
	.loc 1 183 40
	lhu	a4,-26(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 184 40
	lhu	a5,-26(s0)
	srli	a5,a5,8
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 184 9
	li	a5,1073782784
	addi	a5,a5,1796
	.loc 1 184 40
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 181 25 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L25:
	.loc 1 181 19 discriminator 1
	lw	a5,-20(s0)
	ble	a5,zero,.L26
	.loc 1 186 14
	lbu	a5,-27(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 187 11
	j	.L27
.L28:
	.loc 1 188 30
	lw	a5,-24(s0)
	srli	a4,a5,16
	.loc 1 188 49
	lw	a5,-24(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 188 18
	add	a5,a4,a5
	sw	a5,-24(s0)
.L27:
	.loc 1 187 21
	lw	a5,-24(s0)
	srli	a5,a5,16
	.loc 1 187 12
	bne	a5,zero,.L28
	.loc 1 190 5
	li	a5,1073782784
	addi	a5,a5,1796
	.loc 1 190 36
	lbu	a4,-27(s0)
	sb	a4,0(a5)
	.loc 1 192 11
	li	a5,1073782784
	addi	a5,a5,1800
	.loc 1 192 9
	lhu	a5,0(a5)
	sh	a5,-30(s0)
	.loc 1 198 5
	li	a5,1073782784
	addi	a5,a5,1792
	.loc 1 198 36
	li	a4,1
	sb	a4,0(a5)
	.loc 1 199 5
	li	a5,1073782784
	addi	a5,a5,1792
	.loc 1 199 36
	li	a4,2
	sb	a4,0(a5)
	.loc 1 200 14
	sw	zero,-24(s0)
	.loc 1 201 12
	sw	zero,-20(s0)
	.loc 1 201 5
	j	.L29
.L30:
	.loc 1 202 18
	lhu	a5,-26(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 203 9
	li	a5,1073782784
	addi	a5,a5,1796
	.loc 1 203 40
	lhu	a4,-26(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 204 40
	lhu	a5,-26(s0)
	srli	a5,a5,8
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 204 9
	li	a5,1073782784
	addi	a5,a5,1796
	.loc 1 204 40
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 201 25 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L29:
	.loc 1 201 19 discriminator 1
	lw	a5,-20(s0)
	ble	a5,zero,.L30
	.loc 1 206 14
	lbu	a5,-27(s0)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 207 11
	j	.L31
.L32:
	.loc 1 208 30
	lw	a5,-24(s0)
	srli	a4,a5,16
	.loc 1 208 49
	lw	a5,-24(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 208 18
	add	a5,a4,a5
	sw	a5,-24(s0)
.L31:
	.loc 1 207 21
	lw	a5,-24(s0)
	srli	a5,a5,16
	.loc 1 207 12
	bne	a5,zero,.L32
	.loc 1 210 5
	li	a5,1073782784
	addi	a5,a5,1796
	.loc 1 210 36
	lbu	a4,-27(s0)
	sb	a4,0(a5)
	.loc 1 212 11
	li	a5,1073782784
	addi	a5,a5,1800
	.loc 1 212 9
	lhu	a5,0(a5)
	sh	a5,-30(s0)
	.loc 1 222 1
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
.LFE26:
	.size	_bl_cks_test_case4, .-_bl_cks_test_case4
	.section	.text._cb_cmd,"ax",@progbits
	.align	1
	.type	_cb_cmd, @function
_cb_cmd:
.LFB27:
	.loc 1 225 1
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
	.loc 1 228 11
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 230 16
	lw	a5,-20(s0)
	sw	zero,8(a5)
	.loc 1 231 1
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
	.size	_cb_cmd, .-_cb_cmd
	.section	.text._bl_cks_test_case5,"ax",@progbits
	.align	1
	.type	_bl_cks_test_case5, @function
_bl_cks_test_case5:
.LFB28:
	.loc 1 234 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	.loc 1 238 14
	li	a5,16384
	addi	a5,a5,-225
	sh	a5,-102(s0)
	.loc 1 239 14
	sh	zero,-104(s0)
	.loc 1 240 14
	li	a5,1
	sw	a5,-112(s0)
	li	a5,2
	sw	a5,-108(s0)
	.loc 1 245 5
	addi	a5,s0,-44
	li	a2,28
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 246 5
	addi	a5,s0,-72
	li	a2,28
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 247 5
	addi	a5,s0,-100
	li	a2,28
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 250 17
	addi	a5,s0,-112
	.loc 1 250 15
	sw	a5,-32(s0)
	.loc 1 251 15
	li	a5,1073782784
	addi	a5,a5,1792
	sw	a5,-28(s0)
	.loc 1 252 18
	addi	a5,s0,-72
	addi	a5,a5,12
	.loc 1 252 16
	sw	a5,-24(s0)
	.loc 1 253 16
	li	a5,71827456
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 1 262 14
	lui	a5,%hi(_cb_cmd)
	addi	a5,a5,%lo(_cb_cmd)
	sw	a5,-40(s0)
	.loc 1 263 15
	addi	a5,s0,-44
	sw	a5,-36(s0)
	.loc 1 266 18
	addi	a5,s0,-102
	.loc 1 266 16
	sw	a5,-60(s0)
	.loc 1 267 16
	li	a5,1073782784
	addi	a5,a5,1796
	sw	a5,-56(s0)
	.loc 1 268 19
	addi	a5,s0,-100
	addi	a5,a5,12
	.loc 1 268 17
	sw	a5,-52(s0)
	.loc 1 269 17
	li	a5,262144
	addi	a5,a5,1000
	sw	a5,-48(s0)
	.loc 1 277 15
	sw	zero,-68(s0)
	.loc 1 278 16
	sw	zero,-64(s0)
	.loc 1 281 14
	li	a5,1073782784
	addi	a5,a5,1800
	sw	a5,-88(s0)
	.loc 1 282 16
	addi	a5,s0,-104
	.loc 1 282 14
	sw	a5,-84(s0)
	.loc 1 283 15
	sw	zero,-80(s0)
	.loc 1 284 15
	li	a5,-2145124352
	addi	a5,a5,1
	sw	a5,-76(s0)
	.loc 1 292 13
	sw	zero,-96(s0)
	.loc 1 293 14
	sw	zero,-92(s0)
	.loc 1 295 5
	addi	a5,s0,-44
	mv	a0,a5
	call	bl_dma_copy
	.loc 1 299 11
	j	.L35
.L36:
	.loc 1 300 9
	li	a0,2
	call	vTaskDelay
.L35:
	.loc 1 299 17
	lw	a5,-36(s0)
	.loc 1 299 12
	bne	a5,zero,.L36
	.loc 1 307 1
	nop
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	_bl_cks_test_case5, .-_bl_cks_test_case5
	.section	.text.bl_cks_test,"ax",@progbits
	.align	1
	.globl	bl_cks_test
	.type	bl_cks_test, @function
bl_cks_test:
.LFB29:
	.loc 1 310 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 312 5
	call	_bl_cks_test_case1
	.loc 1 314 5
	call	_bl_cks_test_case2
	.loc 1 316 5
	call	_bl_cks_test_case3
	.loc 1 318 5
	call	_bl_cks_test_case4
	.loc 1 320 5
	call	_bl_cks_test_case5
	.loc 1 321 12
	li	a5,0
	.loc 1 322 1
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
.LFE29:
	.size	bl_cks_test, .-bl_cks_test
	.section	.rodata.data_src1.1,"a"
	.align	2
	.type	data_src1.1, @object
	.size	data_src1.1, 20
data_src1.1:
	.string	"E"
	.base64	"AHMAAEAAQBEAAMCoAAHAqADH"
	.section	.srodata.data_src1_cks.0,"a"
	.align	2
	.type	data_src1_cks.0, @object
	.size	data_src1_cks.0, 2
data_src1_cks.0:
	.ascii	"\270a"
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_list.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_dma.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3d3
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xe
	.4byte	.LASF41
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
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x58
	.uleb128 0x7
	.4byte	0x47
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x93
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x10
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0xa
	.4byte	0xbb
	.uleb128 0x11
	.4byte	0xc6
	.uleb128 0x4
	.4byte	0xad
	.byte	0
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x4
	.byte	0x41
	.byte	0x12
	.4byte	0x72
	.uleb128 0x7
	.4byte	0xc6
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x4
	.byte	0x5
	.byte	0x26
	.4byte	0xf1
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x5
	.byte	0x28
	.byte	0x1c
	.4byte	0xf1
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xd7
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x1c
	.byte	0x6
	.byte	0x39
	.4byte	0x159
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x6
	.byte	0x3a
	.byte	0x1b
	.4byte	0xd7
	.byte	0
	.uleb128 0x9
	.string	"cb"
	.byte	0x3b
	.byte	0xc
	.4byte	0xb6
	.byte	0x4
	.uleb128 0x9
	.string	"arg"
	.byte	0x3c
	.byte	0xb
	.4byte	0xad
	.byte	0x8
	.uleb128 0x9
	.string	"src"
	.byte	0x3e
	.byte	0xe
	.4byte	0x72
	.byte	0xc
	.uleb128 0x9
	.string	"dst"
	.byte	0x3f
	.byte	0xe
	.4byte	0x72
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x6
	.byte	0x40
	.byte	0xe
	.4byte	0x72
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x6
	.byte	0x41
	.byte	0xe
	.4byte	0x72
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0x7
	.2byte	0x2f6
	.byte	0x6
	.4byte	0x16c
	.uleb128 0x4
	.4byte	0xd2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF24
	.byte	0x6
	.byte	0x45
	.byte	0x6
	.4byte	0x17e
	.uleb128 0x4
	.4byte	0x17e
	.byte	0
	.uleb128 0xa
	.4byte	0xf6
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0x8
	.byte	0x21
	.byte	0x8
	.4byte	0xad
	.4byte	0x1a3
	.uleb128 0x4
	.4byte	0xad
	.uleb128 0x4
	.4byte	0x8c
	.uleb128 0x4
	.4byte	0x9a
	.byte	0
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x135
	.byte	0x5
	.4byte	0x8c
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.4byte	.LASF31
	.byte	0x1
	.byte	0xe9
	.byte	0xd
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22a
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0xeb
	.byte	0x18
	.4byte	0xf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0xec
	.byte	0x18
	.4byte	0xf6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0xed
	.byte	0x18
	.4byte	0xf6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0xee
	.byte	0xe
	.4byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -102
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0xef
	.byte	0xe
	.4byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0xf0
	.byte	0xe
	.4byte	0x22a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0xb
	.4byte	0x72
	.4byte	0x23a
	.uleb128 0xc
	.4byte	0x93
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0xe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26c
	.uleb128 0x17
	.string	"arg"
	.byte	0x1
	.byte	0xe0
	.byte	0x1b
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0xe2
	.byte	0x19
	.4byte	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0xab
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c5
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0xad
	.byte	0xe
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0xae
	.byte	0xd
	.4byte	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x3
	.string	"i"
	.byte	0xaf
	.byte	0x9
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0xb0
	.byte	0xe
	.4byte	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"cks"
	.byte	0xb1
	.byte	0xe
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.byte	0
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x7b
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x310
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x7d
	.byte	0xe
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x3
	.string	"i"
	.byte	0x7e
	.byte	0x9
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x7f
	.byte	0xe
	.4byte	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"cks"
	.byte	0x80
	.byte	0xe
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x4b
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x35b
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x4d
	.byte	0xe
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x3
	.string	"i"
	.byte	0x4e
	.byte	0x9
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x4f
	.byte	0xe
	.4byte	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"cks"
	.byte	0x50
	.byte	0xe
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x2a
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ac
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x2d
	.byte	0x1a
	.4byte	0x3bc
	.uleb128 0x5
	.byte	0x3
	.4byte	data_src1.1
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x32
	.byte	0x1a
	.4byte	0x3d1
	.uleb128 0x5
	.byte	0x3
	.4byte	data_src1_cks.0
	.uleb128 0x3
	.string	"i"
	.byte	0x36
	.byte	0x9
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"cks"
	.byte	0x37
	.byte	0xe
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0xb
	.4byte	0x53
	.4byte	0x3bc
	.uleb128 0xc
	.4byte	0x93
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0x3ac
	.uleb128 0xb
	.4byte	0x53
	.4byte	0x3d1
	.uleb128 0xc
	.4byte	0x93
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	0x3c1
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
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"bl_dma_copy"
.LASF16:
	.string	"char"
.LASF14:
	.string	"size_t"
.LASF20:
	.string	"next"
.LASF17:
	.string	"TickType_t"
.LASF21:
	.string	"item"
.LASF19:
	.string	"bl_dma_item"
.LASF30:
	.string	"cks_cmd_list"
.LASF25:
	.string	"first"
.LASF28:
	.string	"data_segment_one"
.LASF35:
	.string	"checksum"
.LASF43:
	.string	"bl_cks_test"
.LASF11:
	.string	"long unsigned int"
.LASF9:
	.string	"short unsigned int"
.LASF40:
	.string	"data_src1_cks"
.LASF41:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF26:
	.string	"second"
.LASF6:
	.string	"unsigned char"
.LASF42:
	.string	"memset"
.LASF38:
	.string	"_bl_cks_test_case1"
.LASF37:
	.string	"_bl_cks_test_case2"
.LASF36:
	.string	"_bl_cks_test_case3"
.LASF33:
	.string	"_bl_cks_test_case4"
.LASF31:
	.string	"_bl_cks_test_case5"
.LASF32:
	.string	"_cb_cmd"
.LASF13:
	.string	"unsigned int"
.LASF27:
	.string	"last"
.LASF7:
	.string	"uint8_t"
.LASF22:
	.string	"ctrl"
.LASF5:
	.string	"long long int"
.LASF29:
	.string	"cks_result"
.LASF39:
	.string	"data_src1"
.LASF34:
	.string	"data_segment_two"
.LASF3:
	.string	"short int"
.LASF8:
	.string	"uint16_t"
.LASF18:
	.string	"utils_list_hdr"
.LASF10:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF23:
	.string	"vTaskDelay"
.LASF15:
	.string	"long double"
.LASF2:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_cks.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
