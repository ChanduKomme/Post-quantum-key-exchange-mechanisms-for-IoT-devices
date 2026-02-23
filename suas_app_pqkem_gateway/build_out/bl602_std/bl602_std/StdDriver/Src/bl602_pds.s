	.file	"bl602_pds.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_pds.c"
	.section	.bss.pdsIntCbfArra,"aw",@nobits
	.align	2
	.type	pdsIntCbfArra, @object
	.size	pdsIntCbfArra, 16
pdsIntCbfArra:
	.zero	16
	.section	.tcm_code,"ax",@progbits
	.align	1
	.weak	PDS_Reset
	.type	PDS_Reset, @function
PDS_Reset:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_pds.c"
	.loc 1 101 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 102 14
	sw	zero,-20(s0)
	.loc 1 104 14
	li	a5,1073741824
	addi	a5,a5,20
	.loc 1 104 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 105 12
	lw	a4,-20(s0)
	li	a5,16384
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 106 5
	li	a5,1073741824
	addi	a5,a5,20
	.loc 1 106 29
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 108 14
	li	a5,1073741824
	addi	a5,a5,20
	.loc 1 108 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 109 12
	lw	a4,-20(s0)
	li	a5,-16384
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 110 5
	li	a5,1073741824
	addi	a5,a5,20
	.loc 1 110 29
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 112 12
	li	a5,0
	.loc 1 113 1
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
	.size	PDS_Reset, .-PDS_Reset
	.align	1
	.weak	PDS_Enable
	.type	PDS_Enable, @function
PDS_Enable:
.LFB9:
	.loc 1 129 1
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
	.loc 1 134 7
	lw	a5,-28(s0)
	bne	a5,zero,.L4
	.loc 1 135 27
	lw	a5,-20(s0)
	lw	a4,0(a5)
	ori	a4,a4,2
	sw	a4,0(a5)
	j	.L5
.L4:
	.loc 1 136 13
	lw	a5,-28(s0)
	beq	a5,zero,.L6
	.loc 1 136 27 discriminator 1
	lw	a4,-28(s0)
	li	a5,38
	bgtu	a4,a5,.L6
	.loc 1 137 16
	li	a5,1
	j	.L7
.L6:
	.loc 1 139 11
	li	a5,1073799168
	addi	a5,a5,4
	.loc 1 139 76
	lw	a4,-28(s0)
	addi	a4,a4,-38
	.loc 1 139 63
	sw	a4,0(a5)
.L5:
	.loc 1 143 7
	li	a5,1073799168
	addi	a5,a5,24
	.loc 1 143 62
	lw	a4,-24(s0)
	lw	a4,0(a4)
	.loc 1 143 60
	sw	a4,0(a5)
	.loc 1 146 8
	lw	a5,-20(s0)
	lw	a5,0(a5)
	andi	a5,a5,1
	.loc 1 146 7
	beq	a5,zero,.L8
	.loc 1 147 66
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 147 11
	li	a5,1073799168
	.loc 1 147 82
	andi	a4,a4,-2
	.loc 1 147 63
	sw	a4,0(a5)
	.loc 1 148 66
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 148 11
	li	a5,1073799168
	.loc 1 148 82
	ori	a4,a4,1
	.loc 1 148 63
	sw	a4,0(a5)
	j	.L9
.L8:
	.loc 1 150 11
	li	a5,1073799168
	.loc 1 150 65
	lw	a4,-20(s0)
	lw	a4,0(a4)
	.loc 1 150 63
	sw	a4,0(a5)
.L9:
	.loc 1 153 12
	li	a5,0
.L7:
	.loc 1 154 1
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
	.size	PDS_Enable, .-PDS_Enable
	.align	1
	.weak	PDS_Force_Config
	.type	PDS_Force_Config, @function
PDS_Force_Config:
.LFB10:
	.loc 1 169 1
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
	.loc 1 171 7
	li	a5,1073799168
	addi	a5,a5,16
	.loc 1 171 62
	lw	a4,-20(s0)
	lw	a4,0(a4)
	.loc 1 171 60
	sw	a4,0(a5)
	.loc 1 174 7
	li	a5,1073799168
	addi	a5,a5,20
	.loc 1 174 62
	lw	a4,-24(s0)
	lw	a4,0(a4)
	.loc 1 174 60
	sw	a4,0(a5)
	.loc 1 176 12
	li	a5,0
	.loc 1 177 1
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
	.size	PDS_Force_Config, .-PDS_Force_Config
	.align	1
	.weak	PDS_RAM_Config
	.type	PDS_RAM_Config, @function
PDS_RAM_Config:
.LFB11:
	.loc 1 191 1
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
	.loc 1 192 14
	sw	zero,-20(s0)
	.loc 1 194 7
	lw	a5,-36(s0)
	bne	a5,zero,.L13
	.loc 1 195 16
	li	a5,0
	j	.L14
.L13:
	.loc 1 197 15
	li	a5,1073741824
	addi	a5,a5,48
	.loc 1 197 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 202 12
	lw	a5,-20(s0)
	ori	a5,a5,8
	sw	a5,-20(s0)
	.loc 1 203 7
	li	a5,1073741824
	addi	a5,a5,48
	.loc 1 203 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 206 7
	li	a5,1073799168
	addi	a5,a5,32
	.loc 1 206 62
	lw	a4,-36(s0)
	lw	a4,0(a4)
	.loc 1 206 60
	sw	a4,0(a5)
	.loc 1 208 15
	li	a5,1073741824
	addi	a5,a5,48
	.loc 1 208 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 212 12
	lw	a5,-20(s0)
	andi	a5,a5,-9
	sw	a5,-20(s0)
	.loc 1 213 7
	li	a5,1073741824
	addi	a5,a5,48
	.loc 1 213 60
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 215 12
	li	a5,0
.L14:
	.loc 1 216 1
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
.LFE11:
	.size	PDS_RAM_Config, .-PDS_RAM_Config
	.align	1
	.weak	PDS_Default_Level_Config
	.type	PDS_Default_Level_Config, @function
PDS_Default_Level_Config:
.LFB12:
	.loc 1 232 1
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
	.loc 1 234 5
	lw	a0,-24(s0)
	call	PDS_RAM_Config
	.loc 1 235 5
	lw	a5,-20(s0)
	addi	a4,a5,4
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a1,a5
	mv	a0,a4
	call	PDS_Force_Config
	.loc 1 236 5
	lw	a4,-20(s0)
	lw	a5,-20(s0)
	addi	a5,a5,12
	lw	a2,-28(s0)
	mv	a1,a5
	mv	a0,a4
	call	PDS_Enable
	.loc 1 238 12
	li	a5,0
	.loc 1 239 1
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
	.size	PDS_Default_Level_Config, .-PDS_Default_Level_Config
	.section	.text.PDS_IntMask,"ax",@progbits
	.align	1
	.globl	PDS_IntMask
	.type	PDS_IntMask, @function
PDS_IntMask:
.LFB13:
	.loc 1 252 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 253 14
	sw	zero,-20(s0)
	.loc 1 255 15
	li	a5,1073799168
	addi	a5,a5,12
	.loc 1 255 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 256 7
	lbu	a5,-34(s0)
	beq	a5,zero,.L18
	.loc 1 257 37
	lbu	a5,-33(s0)
	addi	a5,a5,8
	.loc 1 257 27
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 257 16
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	j	.L19
.L18:
	.loc 1 259 38
	lbu	a5,-33(s0)
	addi	a5,a5,8
	.loc 1 259 28
	li	a4,1
	sll	a5,a4,a5
	.loc 1 259 25
	not	a5,a5
	mv	a4,a5
	.loc 1 259 16
	lw	a5,-20(s0)
	and	a5,a5,a4
	sw	a5,-20(s0)
.L19:
	.loc 1 261 7
	li	a5,1073799168
	addi	a5,a5,12
	.loc 1 261 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 263 12
	li	a5,0
	.loc 1 264 1
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
	.size	PDS_IntMask, .-PDS_IntMask
	.section	.text.PDS_Get_IntStatus,"ax",@progbits
	.align	1
	.globl	PDS_Get_IntStatus
	.type	PDS_Get_IntStatus, @function
PDS_Get_IntStatus:
.LFB14:
	.loc 1 275 1
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
	.loc 1 276 14
	li	a5,1073799168
	addi	a5,a5,12
	lw	a5,0(a5)
	.loc 1 276 71
	lbu	a4,-17(s0)
	li	a3,1
	sll	a4,a3,a4
	.loc 1 276 68
	and	a5,a5,a4
	.loc 1 276 86
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 1 277 1
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
	.size	PDS_Get_IntStatus, .-PDS_Get_IntStatus
	.section	.text.PDS_IntClear,"ax",@progbits
	.align	1
	.globl	PDS_IntClear
	.type	PDS_IntClear, @function
PDS_IntClear:
.LFB15:
	.loc 1 288 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 289 14
	sw	zero,-20(s0)
	.loc 1 291 15
	li	a5,1073799168
	addi	a5,a5,12
	.loc 1 291 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 292 12
	lw	a4,-20(s0)
	li	a5,-65536
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 293 7
	li	a5,1073799168
	addi	a5,a5,12
	.loc 1 293 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 295 15
	li	a5,1073799168
	addi	a5,a5,12
	.loc 1 295 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 296 12
	lw	a4,-20(s0)
	li	a5,65536
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 297 7
	li	a5,1073799168
	addi	a5,a5,12
	.loc 1 297 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 299 15
	li	a5,1073799168
	addi	a5,a5,12
	.loc 1 299 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 300 12
	lw	a4,-20(s0)
	li	a5,-65536
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 301 7
	li	a5,1073799168
	addi	a5,a5,12
	.loc 1 301 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 303 12
	li	a5,0
	.loc 1 304 1
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
	.size	PDS_IntClear, .-PDS_IntClear
	.section	.text.PDS_Get_PdsPllStstus,"ax",@progbits
	.align	1
	.globl	PDS_Get_PdsPllStstus
	.type	PDS_Get_PdsPllStstus, @function
PDS_Get_PdsPllStstus:
.LFB16:
	.loc 1 315 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 316 35
	li	a5,1073799168
	addi	a5,a5,28
	lw	a5,0(a5)
	.loc 1 316 119
	srli	a5,a5,16
	andi	a5,a5,3
	.loc 1 316 12
	andi	a5,a5,0xff
	.loc 1 317 1
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
	.size	PDS_Get_PdsPllStstus, .-PDS_Get_PdsPllStstus
	.section	.text.PDS_Get_PdsRfStstus,"ax",@progbits
	.align	1
	.globl	PDS_Get_PdsRfStstus
	.type	PDS_Get_PdsRfStstus, @function
PDS_Get_PdsRfStstus:
.LFB17:
	.loc 1 328 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 329 34
	li	a5,1073799168
	addi	a5,a5,28
	lw	a5,0(a5)
	.loc 1 329 117
	srli	a5,a5,8
	andi	a5,a5,15
	.loc 1 329 12
	andi	a5,a5,0xff
	.loc 1 330 1
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
.LFE17:
	.size	PDS_Get_PdsRfStstus, .-PDS_Get_PdsRfStstus
	.section	.text.PDS_Get_PdsStstus,"ax",@progbits
	.align	1
	.globl	PDS_Get_PdsStstus
	.type	PDS_Get_PdsStstus, @function
PDS_Get_PdsStstus:
.LFB18:
	.loc 1 341 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 342 31
	li	a5,1073799168
	addi	a5,a5,28
	lw	a5,0(a5)
	.loc 1 342 12
	andi	a5,a5,0xff
	andi	a5,a5,15
	andi	a5,a5,0xff
	.loc 1 343 1
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
.LFE18:
	.size	PDS_Get_PdsStstus, .-PDS_Get_PdsStstus
	.section	.text.PDS_Int_Callback_Install,"ax",@progbits
	.align	1
	.globl	PDS_Int_Callback_Install
	.type	PDS_Int_Callback_Install, @function
PDS_Int_Callback_Install:
.LFB19:
	.loc 1 355 1
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
	sw	a1,-24(s0)
	sb	a5,-17(s0)
	.loc 1 356 27
	lbu	a5,-17(s0)
	.loc 1 356 31
	lui	a4,%hi(pdsIntCbfArra)
	addi	a4,a4,%lo(pdsIntCbfArra)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 358 12
	li	a5,0
	.loc 1 359 1
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
	.size	PDS_Int_Callback_Install, .-PDS_Int_Callback_Install
	.section	.sclock_rlt_code,"ax",@progbits
	.align	1
	.weak	PDS_Trim_RC32M
	.type	PDS_Trim_RC32M, @function
PDS_Trim_RC32M:
.LFB20:
	.loc 1 372 1
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
	.loc 1 374 13
	sw	zero,-20(s0)
	.loc 1 376 5
	addi	a5,s0,-24
	mv	a0,a5
	call	EF_Ctrl_Read_RC32M_Trim
	.loc 1 377 8
	lw	a5,-24(s0)
	andi	a5,a5,512
	.loc 1 377 7
	beq	a5,zero,.L34
	.loc 1 378 16
	lw	a5,-24(s0)
	srli	a5,a5,8
	andi	a5,a5,1
	andi	a5,a5,0xff
	mv	s1,a5
	.loc 1 378 71
	lbu	a5,-24(s0)
	.loc 1 378 43
	li	a1,8
	mv	a0,a5
	call	EF_Ctrl_Get_Trim_Parity
	mv	a5,a0
	.loc 1 378 11 discriminator 1
	bne	s1,a5,.L34
	.loc 1 379 21
	li	a5,1073799168
	addi	a5,a5,768
	lw	a5,0(a5)
	.loc 1 379 19
	sw	a5,-20(s0)
	.loc 1 380 31
	lw	a4,-20(s0)
	li	a5,-1069547520
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 380 78
	lbu	a5,-24(s0)
	.loc 1 380 98
	slli	a5,a5,22
	.loc 1 380 60
	or	a5,a4,a5
	.loc 1 380 19
	sw	a5,-20(s0)
	.loc 1 381 31
	lw	a4,-20(s0)
	li	a5,524288
	or	a5,a4,a5
	.loc 1 381 19
	sw	a5,-20(s0)
	.loc 1 382 15
	li	a5,1073799168
	addi	a5,a5,768
	.loc 1 382 69
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 383 13
	li	a0,2
	call	BL602_Delay_US
	.loc 1 384 20
	li	a5,0
	j	.L36
.L34:
	.loc 1 388 12
	li	a5,1
.L36:
	.loc 1 389 1
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
.LFE20:
	.size	PDS_Trim_RC32M, .-PDS_Trim_RC32M
	.align	1
	.weak	PDS_Select_RC32M_As_PLL_Ref
	.type	PDS_Select_RC32M_As_PLL_Ref, @function
PDS_Select_RC32M_As_PLL_Ref:
.LFB21:
	.loc 1 403 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 404 14
	sw	zero,-20(s0)
	.loc 1 406 15
	li	a5,1073799168
	addi	a5,a5,1028
	.loc 1 406 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 407 12
	lw	a4,-20(s0)
	li	a5,-65536
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 408 12
	lw	a4,-20(s0)
	li	a5,4096
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 409 7
	li	a5,1073799168
	addi	a5,a5,1028
	.loc 1 409 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 411 12
	li	a5,0
	.loc 1 412 1
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
	.size	PDS_Select_RC32M_As_PLL_Ref, .-PDS_Select_RC32M_As_PLL_Ref
	.align	1
	.weak	PDS_Select_XTAL_As_PLL_Ref
	.type	PDS_Select_XTAL_As_PLL_Ref, @function
PDS_Select_XTAL_As_PLL_Ref:
.LFB22:
	.loc 1 426 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 427 14
	sw	zero,-20(s0)
	.loc 1 429 15
	li	a5,1073799168
	addi	a5,a5,1028
	.loc 1 429 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 430 12
	lw	a4,-20(s0)
	li	a5,65536
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 431 12
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 432 7
	li	a5,1073799168
	addi	a5,a5,1028
	.loc 1 432 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 434 12
	li	a5,0
	.loc 1 435 1
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
.LFE22:
	.size	PDS_Select_XTAL_As_PLL_Ref, .-PDS_Select_XTAL_As_PLL_Ref
	.align	1
	.weak	PDS_Power_On_PLL
	.type	PDS_Power_On_PLL, @function
PDS_Power_On_PLL:
.LFB23:
	.loc 1 449 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 1 450 14
	sw	zero,-20(s0)
	.loc 1 459 7
	lbu	a4,-33(s0)
	li	a5,6
	beq	a4,a5,.L42
	.loc 1 459 38 discriminator 1
	lbu	a5,-33(s0)
	bne	a5,zero,.L43
.L42:
	.loc 1 460 9
	call	PDS_Trim_RC32M
	.loc 1 461 9
	call	PDS_Select_RC32M_As_PLL_Ref
	j	.L44
.L43:
	.loc 1 463 9
	call	PDS_Select_XTAL_As_PLL_Ref
.L44:
	.loc 1 470 5
	call	PDS_Power_Off_PLL
	.loc 1 479 13
	li	a5,1073799168
	addi	a5,a5,1032
	.loc 1 479 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 480 7
	lbu	a4,-33(s0)
	li	a5,5
	bne	a4,a5,.L45
	.loc 1 481 27
	lw	a5,-20(s0)
	andi	a5,a5,-193
	.loc 1 481 15
	ori	a5,a5,64
	sw	a5,-20(s0)
	.loc 1 482 15
	lw	a5,-20(s0)
	andi	a5,a5,-49
	sw	a5,-20(s0)
	.loc 1 483 15
	lw	a5,-20(s0)
	ori	a5,a5,256
	sw	a5,-20(s0)
	j	.L46
.L45:
	.loc 1 485 15
	lw	a5,-20(s0)
	andi	a5,a5,-193
	sw	a5,-20(s0)
	.loc 1 486 27
	lw	a5,-20(s0)
	andi	a5,a5,-49
	.loc 1 486 15
	ori	a5,a5,32
	sw	a5,-20(s0)
	.loc 1 487 15
	lw	a5,-20(s0)
	andi	a5,a5,-257
	sw	a5,-20(s0)
.L46:
	.loc 1 489 7
	li	a5,1073799168
	addi	a5,a5,1032
	.loc 1 489 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 496 13
	li	a5,1073799168
	addi	a5,a5,1036
	.loc 1 496 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 497 7
	lbu	a4,-33(s0)
	li	a5,5
	bne	a4,a5,.L47
	.loc 1 498 27
	lw	a4,-20(s0)
	li	a5,-12288
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 498 15
	li	a5,8192
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 499 27
	lw	a4,-20(s0)
	li	a5,-49152
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 499 15
	li	a5,32768
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 500 27
	lw	a4,-20(s0)
	li	a5,-458752
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 500 15
	li	a5,327680
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 501 15
	lw	a5,-20(s0)
	andi	a5,a5,-257
	sw	a5,-20(s0)
	j	.L48
.L47:
	.loc 1 503 15
	lw	a4,-20(s0)
	li	a5,12288
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 504 27
	lw	a4,-20(s0)
	li	a5,-49152
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 504 15
	li	a5,16384
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 505 27
	lw	a4,-20(s0)
	li	a5,-458752
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 505 15
	li	a5,65536
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 506 15
	lw	a5,-20(s0)
	ori	a5,a5,256
	sw	a5,-20(s0)
.L48:
	.loc 1 508 23
	lw	a5,-20(s0)
	andi	a5,a5,-49
	.loc 1 508 11
	ori	a5,a5,32
	sw	a5,-20(s0)
	.loc 1 509 7
	li	a5,1073799168
	addi	a5,a5,1036
	.loc 1 509 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 513 13
	li	a5,1073799168
	addi	a5,a5,1028
	.loc 1 513 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 514 23
	lw	a5,-20(s0)
	andi	a5,a5,-128
	.loc 1 514 11
	ori	a5,a5,20
	sw	a5,-20(s0)
	.loc 1 515 23
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,255
	and	a5,a4,a5
	.loc 1 515 11
	ori	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 516 7
	li	a5,1073799168
	addi	a5,a5,1028
	.loc 1 516 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 519 13
	li	a5,1073799168
	addi	a5,a5,1048
	.loc 1 519 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 520 5
	lbu	a5,-33(s0)
	li	a4,6
	beq	a5,a4,.L49
	li	a4,6
	bgt	a5,a4,.L50
	li	a4,5
	beq	a5,a4,.L51
	li	a4,5
	bgt	a5,a4,.L50
	li	a4,4
	beq	a5,a4,.L52
	li	a4,4
	bgt	a5,a4,.L50
	li	a4,3
	beq	a5,a4,.L53
	li	a4,3
	bgt	a5,a4,.L50
	li	a4,2
	beq	a5,a4,.L54
	li	a4,2
	bgt	a5,a4,.L50
	beq	a5,zero,.L55
	li	a4,1
	beq	a5,a4,.L56
	j	.L50
.L55:
	.loc 1 522 31
	lw	a4,-20(s0)
	li	a5,-16777216
	and	a4,a4,a5
	.loc 1 522 19
	li	a5,3932160
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 523 13
	j	.L57
.L56:
	.loc 1 525 31
	lw	a4,-20(s0)
	li	a5,-16777216
	and	a4,a4,a5
	.loc 1 525 19
	li	a5,5242880
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 526 13
	j	.L57
.L54:
	.loc 1 528 31
	lw	a4,-20(s0)
	li	a5,-16777216
	and	a4,a4,a5
	.loc 1 528 19
	li	a5,3932160
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 529 13
	j	.L57
.L53:
	.loc 1 531 31
	lw	a4,-20(s0)
	li	a5,-16777216
	and	a4,a4,a5
	.loc 1 531 19
	li	a5,3276800
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 532 13
	j	.L57
.L52:
	.loc 1 534 31
	lw	a4,-20(s0)
	li	a5,-16777216
	and	a4,a4,a5
	.loc 1 534 19
	li	a5,3145728
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 535 13
	j	.L57
.L51:
	.loc 1 537 31
	lw	a4,-20(s0)
	li	a5,-16777216
	and	a4,a4,a5
	.loc 1 537 19
	li	a5,4837376
	addi	a5,a5,925
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 538 13
	j	.L57
.L49:
	.loc 1 540 31
	lw	a4,-20(s0)
	li	a5,-16777216
	and	a4,a4,a5
	.loc 1 540 19
	li	a5,3932160
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 541 13
	j	.L57
.L50:
	.loc 1 543 31
	lw	a4,-20(s0)
	li	a5,-16777216
	and	a4,a4,a5
	.loc 1 543 19
	li	a5,3932160
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 544 13
	nop
.L57:
	.loc 1 546 7
	li	a5,1073799168
	addi	a5,a5,1048
	.loc 1 546 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 550 13
	li	a5,1073799168
	addi	a5,a5,1040
	.loc 1 550 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 551 23
	lw	a5,-20(s0)
	andi	a5,a5,-13
	.loc 1 551 11
	ori	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 552 23
	lw	a5,-20(s0)
	andi	a5,a5,-4
	.loc 1 552 11
	ori	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 553 7
	li	a5,1073799168
	addi	a5,a5,1040
	.loc 1 553 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 561 13
	li	a5,1073799168
	addi	a5,a5,1024
	.loc 1 561 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 562 11
	lw	a5,-20(s0)
	ori	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 563 7
	li	a5,1073799168
	addi	a5,a5,1024
	.loc 1 563 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 565 5
	li	a0,5
	call	BL602_Delay_US
	.loc 1 568 13
	li	a5,1073799168
	addi	a5,a5,1024
	.loc 1 568 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 569 11
	lw	a5,-20(s0)
	ori	a5,a5,1024
	sw	a5,-20(s0)
	.loc 1 570 7
	li	a5,1073799168
	addi	a5,a5,1024
	.loc 1 570 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 576 13
	li	a5,1073799168
	addi	a5,a5,1024
	.loc 1 576 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 577 11
	lw	a5,-20(s0)
	ori	a5,a5,256
	sw	a5,-20(s0)
	.loc 1 578 11
	lw	a5,-20(s0)
	ori	a5,a5,128
	sw	a5,-20(s0)
	.loc 1 579 11
	lw	a5,-20(s0)
	ori	a5,a5,32
	sw	a5,-20(s0)
	.loc 1 580 11
	lw	a5,-20(s0)
	ori	a5,a5,16
	sw	a5,-20(s0)
	.loc 1 581 7
	li	a5,1073799168
	addi	a5,a5,1024
	.loc 1 581 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 583 5
	li	a0,5
	call	BL602_Delay_US
	.loc 1 586 13
	li	a5,1073799168
	addi	a5,a5,1024
	.loc 1 586 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 587 11
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 588 7
	li	a5,1073799168
	addi	a5,a5,1024
	.loc 1 588 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 589 5
	li	a0,1
	call	BL602_Delay_US
	.loc 1 591 13
	li	a5,1073799168
	addi	a5,a5,1024
	.loc 1 591 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 592 11
	lw	a5,-20(s0)
	ori	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 593 7
	li	a5,1073799168
	addi	a5,a5,1024
	.loc 1 593 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 594 5
	li	a0,2
	call	BL602_Delay_US
	.loc 1 596 13
	li	a5,1073799168
	addi	a5,a5,1024
	.loc 1 596 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 597 11
	lw	a5,-20(s0)
	andi	a5,a5,-5
	sw	a5,-20(s0)
	.loc 1 598 7
	li	a5,1073799168
	addi	a5,a5,1024
	.loc 1 598 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 599 5
	li	a0,1
	call	BL602_Delay_US
	.loc 1 601 13
	li	a5,1073799168
	addi	a5,a5,1024
	.loc 1 601 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 602 11
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
	.loc 1 603 7
	li	a5,1073799168
	addi	a5,a5,1024
	.loc 1 603 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 605 12
	li	a5,0
	.loc 1 606 1
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
	.size	PDS_Power_On_PLL, .-PDS_Power_On_PLL
	.align	1
	.weak	PDS_Enable_PLL_All_Clks
	.type	PDS_Enable_PLL_All_Clks, @function
PDS_Enable_PLL_All_Clks:
.LFB24:
	.loc 1 632 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 633 14
	sw	zero,-20(s0)
	.loc 1 635 13
	li	a5,1073799168
	addi	a5,a5,1052
	.loc 1 635 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 636 12
	lw	a5,-20(s0)
	ori	a5,a5,511
	sw	a5,-20(s0)
	.loc 1 637 7
	li	a5,1073799168
	addi	a5,a5,1052
	.loc 1 637 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 639 12
	li	a5,0
	.loc 1 640 1
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
.LFE24:
	.size	PDS_Enable_PLL_All_Clks, .-PDS_Enable_PLL_All_Clks
	.align	1
	.weak	PDS_Disable_PLL_All_Clks
	.type	PDS_Disable_PLL_All_Clks, @function
PDS_Disable_PLL_All_Clks:
.LFB25:
	.loc 1 654 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 655 14
	sw	zero,-20(s0)
	.loc 1 657 13
	li	a5,1073799168
	addi	a5,a5,1052
	.loc 1 657 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 658 12
	lw	a5,-20(s0)
	andi	a5,a5,-512
	sw	a5,-20(s0)
	.loc 1 659 7
	li	a5,1073799168
	addi	a5,a5,1052
	.loc 1 659 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 661 12
	li	a5,0
	.loc 1 662 1
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
.LFE25:
	.size	PDS_Disable_PLL_All_Clks, .-PDS_Disable_PLL_All_Clks
	.align	1
	.weak	PDS_Enable_PLL_Clk
	.type	PDS_Enable_PLL_Clk, @function
PDS_Enable_PLL_Clk:
.LFB26:
	.loc 1 676 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 1 677 14
	sw	zero,-20(s0)
	.loc 1 682 13
	li	a5,1073799168
	addi	a5,a5,1052
	.loc 1 682 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 683 17
	lbu	a5,-33(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 683 12
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 684 7
	li	a5,1073799168
	addi	a5,a5,1052
	.loc 1 684 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 686 12
	li	a5,0
	.loc 1 687 1
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
	.size	PDS_Enable_PLL_Clk, .-PDS_Enable_PLL_Clk
	.align	1
	.weak	PDS_Disable_PLL_Clk
	.type	PDS_Disable_PLL_Clk, @function
PDS_Disable_PLL_Clk:
.LFB27:
	.loc 1 701 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 1 702 14
	sw	zero,-20(s0)
	.loc 1 707 13
	li	a5,1073799168
	addi	a5,a5,1052
	.loc 1 707 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 708 19
	lbu	a5,-33(s0)
	li	a4,1
	sll	a5,a4,a5
	.loc 1 708 16
	not	a5,a5
	mv	a4,a5
	.loc 1 708 12
	lw	a5,-20(s0)
	and	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 709 7
	li	a5,1073799168
	addi	a5,a5,1052
	.loc 1 709 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 711 12
	li	a5,0
	.loc 1 712 1
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
.LFE27:
	.size	PDS_Disable_PLL_Clk, .-PDS_Disable_PLL_Clk
	.align	1
	.weak	PDS_Power_Off_PLL
	.type	PDS_Power_Off_PLL, @function
PDS_Power_Off_PLL:
.LFB28:
	.loc 1 726 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 727 14
	sw	zero,-20(s0)
	.loc 1 731 13
	li	a5,1073799168
	addi	a5,a5,1024
	.loc 1 731 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 732 11
	lw	a5,-20(s0)
	andi	a5,a5,-513
	sw	a5,-20(s0)
	.loc 1 733 11
	lw	a5,-20(s0)
	andi	a5,a5,-1025
	sw	a5,-20(s0)
	.loc 1 734 7
	li	a5,1073799168
	addi	a5,a5,1024
	.loc 1 734 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 740 13
	li	a5,1073799168
	addi	a5,a5,1024
	.loc 1 740 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 741 11
	lw	a5,-20(s0)
	andi	a5,a5,-257
	sw	a5,-20(s0)
	.loc 1 742 11
	lw	a5,-20(s0)
	andi	a5,a5,-129
	sw	a5,-20(s0)
	.loc 1 743 11
	lw	a5,-20(s0)
	andi	a5,a5,-33
	sw	a5,-20(s0)
	.loc 1 744 11
	lw	a5,-20(s0)
	andi	a5,a5,-17
	sw	a5,-20(s0)
	.loc 1 745 7
	li	a5,1073799168
	addi	a5,a5,1024
	.loc 1 745 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 747 12
	li	a5,0
	.loc 1 748 1
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
.LFE28:
	.size	PDS_Power_Off_PLL, .-PDS_Power_Off_PLL
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_ef_ctrl.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_pds.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc94
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x14
	.4byte	.LASF215
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
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x2b
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x79
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x16
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x8
	.4byte	0x2b
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xc3
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0xa4
	.uleb128 0x8
	.4byte	0x2b
	.byte	0x3
	.byte	0x2a
	.byte	0x1
	.4byte	0xe8
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0
	.uleb128 0x17
	.string	"SET"
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x3
	.byte	0x2d
	.byte	0x2
	.4byte	0xcf
	.uleb128 0x8
	.4byte	0x2b
	.byte	0x3
	.byte	0x33
	.byte	0x1
	.4byte	0x10d
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x3
	.byte	0x36
	.byte	0x2
	.4byte	0xf4
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x3
	.byte	0x7c
	.byte	0xf
	.4byte	0x9c
	.uleb128 0x9
	.4byte	0x119
	.uleb128 0xa
	.byte	0x4
	.byte	0x4
	.byte	0x84
	.4byte	0x167
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x4
	.byte	0x85
	.4byte	0x6d
	.byte	0x8
	.byte	0
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x4
	.byte	0x86
	.4byte	0x6d
	.byte	0x1
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x4
	.byte	0x87
	.4byte	0x6d
	.byte	0x1
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x4
	.byte	0x88
	.4byte	0x6d
	.byte	0x16
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x4
	.byte	0x89
	.byte	0x2
	.4byte	0x12a
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.byte	0x4b
	.4byte	0x2c1
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x5
	.byte	0x4c
	.4byte	0x6d
	.byte	0x1
	.byte	0
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x5
	.byte	0x4d
	.4byte	0x6d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x5
	.byte	0x4e
	.4byte	0x6d
	.byte	0x1
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x5
	.byte	0x4f
	.4byte	0x6d
	.byte	0x1
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x5
	.byte	0x50
	.4byte	0x6d
	.byte	0x1
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x5
	.byte	0x51
	.4byte	0x6d
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x5
	.byte	0x52
	.4byte	0x6d
	.byte	0x2
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x5
	.byte	0x53
	.4byte	0x6d
	.byte	0x1
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x5
	.byte	0x54
	.4byte	0x6d
	.byte	0x1
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x5
	.byte	0x55
	.4byte	0x6d
	.byte	0x1
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x5
	.byte	0x56
	.4byte	0x6d
	.byte	0x1
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x5
	.byte	0x57
	.4byte	0x6d
	.byte	0x1
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x5
	.byte	0x58
	.4byte	0x6d
	.byte	0x1
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x5
	.byte	0x59
	.4byte	0x6d
	.byte	0x1
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x5
	.byte	0x5a
	.4byte	0x6d
	.byte	0x1
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x5
	.byte	0x5b
	.4byte	0x6d
	.byte	0x1
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x5
	.byte	0x5c
	.4byte	0x6d
	.byte	0x1
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x5
	.byte	0x5d
	.4byte	0x6d
	.byte	0x1
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x5
	.byte	0x5e
	.4byte	0x6d
	.byte	0x2
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x5
	.byte	0x5f
	.4byte	0x6d
	.byte	0x1
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x5
	.byte	0x60
	.4byte	0x6d
	.byte	0x1
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x5
	.byte	0x61
	.4byte	0x6d
	.byte	0x1
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x5
	.byte	0x62
	.4byte	0x6d
	.byte	0x4
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x5
	.byte	0x63
	.4byte	0x6d
	.byte	0x2
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x5
	.byte	0x64
	.4byte	0x6d
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x5
	.byte	0x65
	.byte	0x2
	.4byte	0x173
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.byte	0x6a
	.4byte	0x399
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x5
	.byte	0x6b
	.4byte	0x6d
	.byte	0x1
	.byte	0
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x5
	.byte	0x6c
	.4byte	0x6d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x5
	.byte	0x6d
	.4byte	0x6d
	.byte	0x1
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x5
	.byte	0x6e
	.4byte	0x6d
	.byte	0x1
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x5
	.byte	0x6f
	.4byte	0x6d
	.byte	0x8
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x5
	.byte	0x70
	.4byte	0x6d
	.byte	0x1
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x5
	.byte	0x71
	.4byte	0x6d
	.byte	0x1
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x5
	.byte	0x72
	.4byte	0x6d
	.byte	0x1
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x5
	.byte	0x73
	.4byte	0x6d
	.byte	0x1
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x5
	.byte	0x74
	.4byte	0x6d
	.byte	0x8
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x5
	.byte	0x75
	.4byte	0x6d
	.byte	0x1
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x5
	.byte	0x76
	.4byte	0x6d
	.byte	0x1
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x5
	.byte	0x77
	.4byte	0x6d
	.byte	0x1
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x5
	.byte	0x78
	.4byte	0x6d
	.byte	0x1
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x5
	.byte	0x79
	.4byte	0x6d
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x5
	.byte	0x7a
	.byte	0x2
	.4byte	0x2cd
	.uleb128 0x8
	.4byte	0x2b
	.byte	0x5
	.byte	0x7f
	.byte	0xe
	.4byte	0x3d0
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x5
	.byte	0x85
	.byte	0x2
	.4byte	0x3a5
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.byte	0x8a
	.4byte	0x4e9
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x5
	.byte	0x8b
	.4byte	0x6d
	.byte	0x1
	.byte	0
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x5
	.byte	0x8c
	.4byte	0x6d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x5
	.byte	0x8d
	.4byte	0x6d
	.byte	0x1
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x5
	.byte	0x8e
	.4byte	0x6d
	.byte	0x1
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x5
	.byte	0x8f
	.4byte	0x6d
	.byte	0x1
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x5
	.byte	0x90
	.4byte	0x6d
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x5
	.byte	0x91
	.4byte	0x6d
	.byte	0x1
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x5
	.byte	0x92
	.4byte	0x6d
	.byte	0x1
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x5
	.byte	0x93
	.4byte	0x6d
	.byte	0x1
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x5
	.byte	0x94
	.4byte	0x6d
	.byte	0x1
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x5
	.byte	0x95
	.4byte	0x6d
	.byte	0x1
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x5
	.byte	0x96
	.4byte	0x6d
	.byte	0x1
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x5
	.byte	0x97
	.4byte	0x6d
	.byte	0x1
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x5
	.byte	0x98
	.4byte	0x6d
	.byte	0x1
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x5
	.byte	0x99
	.4byte	0x6d
	.byte	0x1
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x5
	.byte	0x9a
	.4byte	0x6d
	.byte	0x1
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x5
	.byte	0x9b
	.4byte	0x6d
	.byte	0x1
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x5
	.byte	0x9c
	.4byte	0x6d
	.byte	0x1
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x5
	.byte	0x9d
	.4byte	0x6d
	.byte	0x1
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x5
	.byte	0x9e
	.4byte	0x6d
	.byte	0xc
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0x5
	.byte	0x9f
	.byte	0x2
	.4byte	0x3dc
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.byte	0xa4
	.4byte	0x5db
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0x5
	.byte	0xa5
	.4byte	0x6d
	.byte	0x1
	.byte	0
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x5
	.byte	0xa6
	.4byte	0x6d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x5
	.byte	0xa7
	.4byte	0x6d
	.byte	0x2
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x5
	.byte	0xa8
	.4byte	0x6d
	.byte	0x1
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x5
	.byte	0xa9
	.4byte	0x6d
	.byte	0x2
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0x5
	.byte	0xaa
	.4byte	0x6d
	.byte	0x1
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0x5
	.byte	0xab
	.4byte	0x6d
	.byte	0x2
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0x5
	.byte	0xac
	.4byte	0x6d
	.byte	0x1
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0x5
	.byte	0xad
	.4byte	0x6d
	.byte	0x2
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0x5
	.byte	0xae
	.4byte	0x6d
	.byte	0x1
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0x5
	.byte	0xaf
	.4byte	0x6d
	.byte	0xa
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0x5
	.byte	0xb0
	.4byte	0x6d
	.byte	0x1
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0x5
	.byte	0xb1
	.4byte	0x6d
	.byte	0x2
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0x5
	.byte	0xb2
	.4byte	0x6d
	.byte	0x1
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0x5
	.byte	0xb3
	.4byte	0x6d
	.byte	0x2
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x5
	.byte	0xb4
	.4byte	0x6d
	.byte	0x1
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x5
	.byte	0xb5
	.4byte	0x6d
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF117
	.byte	0x5
	.byte	0xb6
	.byte	0x2
	.4byte	0x4f5
	.uleb128 0xa
	.byte	0x10
	.byte	0x5
	.byte	0xbb
	.4byte	0x620
	.uleb128 0xc
	.4byte	.LASF118
	.byte	0xbc
	.byte	0x12
	.4byte	0x2c1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF119
	.byte	0xbd
	.byte	0x13
	.4byte	0x4e9
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF120
	.byte	0xbe
	.byte	0x13
	.4byte	0x5db
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF121
	.byte	0xbf
	.byte	0x13
	.4byte	0x399
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0x5
	.byte	0xc0
	.byte	0x2
	.4byte	0x5e7
	.uleb128 0x8
	.4byte	0x2b
	.byte	0x5
	.byte	0xc5
	.byte	0xe
	.4byte	0x651
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0x5
	.byte	0xca
	.byte	0x2
	.4byte	0x62c
	.uleb128 0x8
	.4byte	0x2b
	.byte	0x5
	.byte	0xcf
	.byte	0xe
	.4byte	0x688
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF131
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF132
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF133
	.byte	0x5
	.byte	0xd5
	.byte	0x2
	.4byte	0x65d
	.uleb128 0x8
	.4byte	0x2b
	.byte	0x5
	.byte	0xda
	.byte	0xe
	.4byte	0x701
	.uleb128 0x2
	.4byte	.LASF134
	.byte	0
	.uleb128 0x2
	.4byte	.LASF135
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0xf
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF139
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF140
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF141
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF142
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF144
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF145
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF146
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF147
	.byte	0xd
	.uleb128 0x2
	.4byte	.LASF148
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF149
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.4byte	.LASF150
	.byte	0x5
	.byte	0xeb
	.byte	0x2
	.4byte	0x694
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.byte	0xf0
	.4byte	0x78b
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0x5
	.byte	0xf1
	.4byte	0x6d
	.byte	0x1
	.byte	0
	.uleb128 0x1
	.4byte	.LASF152
	.byte	0x5
	.byte	0xf2
	.4byte	0x6d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0x5
	.byte	0xf3
	.4byte	0x6d
	.byte	0x1
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0x5
	.byte	0xf4
	.4byte	0x6d
	.byte	0x1
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0x5
	.byte	0xf5
	.4byte	0x6d
	.byte	0x1
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0x5
	.byte	0xf6
	.4byte	0x6d
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF157
	.byte	0x5
	.byte	0xf7
	.4byte	0x6d
	.byte	0x1
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF158
	.byte	0x5
	.byte	0xf8
	.4byte	0x6d
	.byte	0x1
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF159
	.byte	0x5
	.byte	0xf9
	.4byte	0x6d
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF160
	.byte	0x5
	.byte	0xfa
	.byte	0x2
	.4byte	0x70d
	.uleb128 0x8
	.4byte	0x2b
	.byte	0x5
	.byte	0xff
	.byte	0xe
	.4byte	0x7ce
	.uleb128 0x2
	.4byte	.LASF161
	.byte	0
	.uleb128 0x2
	.4byte	.LASF162
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF163
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF164
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF165
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF166
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF167
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.4byte	.LASF168
	.2byte	0x107
	.4byte	0x797
	.uleb128 0x18
	.byte	0x7
	.byte	0x1
	.4byte	0x2b
	.byte	0x5
	.2byte	0x10c
	.byte	0xe
	.4byte	0x81f
	.uleb128 0x2
	.4byte	.LASF169
	.byte	0
	.uleb128 0x2
	.4byte	.LASF170
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF171
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF172
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF173
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF174
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF175
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF176
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF177
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF178
	.2byte	0x116
	.4byte	0x7d9
	.uleb128 0x19
	.4byte	0x125
	.4byte	0x840
	.uleb128 0x12
	.4byte	0x8e
	.byte	0x3
	.uleb128 0x12
	.4byte	0x8e
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF181
	.byte	0x3f
	.byte	0x1b
	.4byte	0x82a
	.uleb128 0x5
	.byte	0x3
	.4byte	pdsIntCbfArra
	.uleb128 0x1a
	.4byte	.LASF179
	.byte	0x3
	.byte	0x88
	.byte	0x6
	.4byte	0x863
	.uleb128 0xe
	.4byte	0x6d
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF216
	.byte	0x4
	.2byte	0x114
	.byte	0x9
	.4byte	0x5a
	.4byte	0x87f
	.uleb128 0xe
	.4byte	0x6d
	.uleb128 0xe
	.4byte	0x5a
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF180
	.byte	0x4
	.2byte	0x117
	.byte	0x6
	.4byte	0x892
	.uleb128 0xe
	.4byte	0x892
	.byte	0
	.uleb128 0x9
	.4byte	0x167
	.uleb128 0x6
	.4byte	.LASF183
	.2byte	0x2d5
	.byte	0x3a
	.4byte	0xc3
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8c1
	.uleb128 0x5
	.4byte	.LASF182
	.2byte	0x2d7
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF184
	.2byte	0x2bc
	.byte	0x3a
	.4byte	0xc3
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8fa
	.uleb128 0xb
	.4byte	.LASF186
	.2byte	0x2bc
	.byte	0x5f
	.4byte	0x81f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x5
	.4byte	.LASF182
	.2byte	0x2be
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF185
	.2byte	0x2a3
	.byte	0x3a
	.4byte	0xc3
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x933
	.uleb128 0xb
	.4byte	.LASF186
	.2byte	0x2a3
	.byte	0x5e
	.4byte	0x81f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x5
	.4byte	.LASF182
	.2byte	0x2a5
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF187
	.2byte	0x28d
	.byte	0x3a
	.4byte	0xc3
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x95d
	.uleb128 0x5
	.4byte	.LASF182
	.2byte	0x28f
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF188
	.2byte	0x277
	.byte	0x3a
	.4byte	0xc3
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x987
	.uleb128 0x5
	.4byte	.LASF182
	.2byte	0x279
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF189
	.2byte	0x1c0
	.4byte	0xc3
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9bf
	.uleb128 0xb
	.4byte	.LASF190
	.2byte	0x1c0
	.byte	0x5d
	.4byte	0x7ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x5
	.4byte	.LASF182
	.2byte	0x1c2
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF191
	.2byte	0x1a9
	.byte	0x3a
	.4byte	0xc3
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e9
	.uleb128 0x5
	.4byte	.LASF182
	.2byte	0x1ab
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF192
	.2byte	0x192
	.byte	0x3a
	.4byte	0xc3
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa13
	.uleb128 0x5
	.4byte	.LASF182
	.2byte	0x194
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF193
	.2byte	0x173
	.4byte	0xc3
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa4b
	.uleb128 0x5
	.4byte	.LASF194
	.2byte	0x175
	.byte	0x1f
	.4byte	0x167
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF182
	.2byte	0x176
	.byte	0xd
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF195
	.2byte	0x162
	.byte	0xd
	.4byte	0xc3
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa84
	.uleb128 0xb
	.4byte	.LASF196
	.2byte	0x162
	.byte	0x33
	.4byte	0x3d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xb
	.4byte	.LASF197
	.2byte	0x162
	.byte	0x4d
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.4byte	.LASF198
	.2byte	0x154
	.byte	0xe
	.4byte	0x701
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF199
	.2byte	0x147
	.byte	0x11
	.4byte	0x688
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF200
	.2byte	0x13a
	.byte	0x12
	.4byte	0x651
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF201
	.2byte	0x11f
	.byte	0xd
	.4byte	0xc3
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf0
	.uleb128 0x5
	.4byte	.LASF182
	.2byte	0x121
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF202
	.2byte	0x112
	.byte	0xd
	.4byte	0xe8
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb1a
	.uleb128 0xb
	.4byte	.LASF196
	.2byte	0x112
	.byte	0x2c
	.4byte	0x3d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xf
	.4byte	.LASF203
	.byte	0xfb
	.byte	0xd
	.4byte	0xc3
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5e
	.uleb128 0x7
	.4byte	.LASF196
	.byte	0xfb
	.byte	0x26
	.4byte	0x3d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x7
	.4byte	.LASF204
	.byte	0xfb
	.byte	0x3b
	.4byte	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0xd
	.4byte	.LASF182
	.byte	0xfd
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF205
	.byte	0x1
	.byte	0xe7
	.byte	0x33
	.4byte	0xc3
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba3
	.uleb128 0x7
	.4byte	.LASF206
	.byte	0xe7
	.byte	0x65
	.4byte	0xba3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF207
	.byte	0xe7
	.byte	0x84
	.4byte	0xba8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF208
	.byte	0xe7
	.byte	0x94
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x9
	.4byte	0x620
	.uleb128 0x9
	.4byte	0x78b
	.uleb128 0xf
	.4byte	.LASF209
	.byte	0xbe
	.byte	0x33
	.4byte	0xc3
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbe3
	.uleb128 0x7
	.4byte	.LASF207
	.byte	0xbe
	.byte	0x54
	.4byte	0xba8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.4byte	.LASF182
	.byte	0xc0
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF210
	.byte	0xa8
	.byte	0x33
	.4byte	0xc3
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc19
	.uleb128 0x7
	.4byte	.LASF211
	.byte	0xa8
	.byte	0x53
	.4byte	0xc19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF212
	.byte	0xa8
	.byte	0x67
	.4byte	0xc1e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	0x4e9
	.uleb128 0x9
	.4byte	0x5db
	.uleb128 0xf
	.4byte	.LASF213
	.byte	0x80
	.byte	0x33
	.4byte	0xc3
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc68
	.uleb128 0x1e
	.string	"cfg"
	.byte	0x1
	.byte	0x80
	.byte	0x4c
	.4byte	0xc68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF214
	.byte	0x80
	.byte	0x5f
	.4byte	0xc6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF208
	.byte	0x80
	.byte	0x6d
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x9
	.4byte	0x2c1
	.uleb128 0x9
	.4byte	0x399
	.uleb128 0x1f
	.4byte	.LASF217
	.byte	0x1
	.byte	0x64
	.byte	0x33
	.4byte	0xc3
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF182
	.byte	0x66
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
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
	.uleb128 0x11
	.uleb128 0x16
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
	.sleb128 2
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 58
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.4byte	0xbc
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF53:
	.string	"pdsLdoVol"
.LASF37:
	.string	"rsv6_7"
.LASF128:
	.string	"PDS_RF_STS_OFF"
.LASF217:
	.string	"PDS_Reset"
.LASF42:
	.string	"waitXtalRdy"
.LASF30:
	.string	"Efuse_Ana_RC32M_Trim_Type"
.LASF205:
	.string	"PDS_Default_Level_Config"
.LASF168:
	.string	"PDS_PLL_XTAL_Type"
.LASF160:
	.string	"PDS_RAM_CFG_Type"
.LASF122:
	.string	"PDS_DEFAULT_LV_CFG_Type"
.LASF60:
	.string	"cpuGateClk"
.LASF48:
	.string	"pdsLdoVselEn"
.LASF100:
	.string	"rsv0"
.LASF46:
	.string	"pdsRstSocEn"
.LASF170:
	.string	"PDS_PLL_CLK_240M"
.LASF82:
	.string	"rsv3"
.LASF89:
	.string	"forceWbPdsRst"
.LASF84:
	.string	"rsv5"
.LASF167:
	.string	"PDS_PLL_XTAL_RC32M"
.LASF86:
	.string	"rsv7"
.LASF88:
	.string	"rsv9"
.LASF77:
	.string	"PDS_INT_MAX"
.LASF127:
	.string	"PDS_PLL_STS_Type"
.LASF54:
	.string	"pdsCtlRfSel"
.LASF52:
	.string	"rsv23"
.LASF147:
	.string	"PDS_STS_DCG"
.LASF158:
	.string	"PDS_RAM_CFG_48KB_64KB_CPU_RAM_SLP"
.LASF137:
	.string	"PDS_STS_EISO"
.LASF79:
	.string	"forceCpuPwrOff"
.LASF169:
	.string	"PDS_PLL_CLK_480M"
.LASF188:
	.string	"PDS_Enable_PLL_All_Clks"
.LASF155:
	.string	"PDS_RAM_CFG_0KB_16KB_CPU_RAM_SLP"
.LASF6:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF108:
	.string	"rsv11_12"
.LASF51:
	.string	"ldo11Off"
.LASF114:
	.string	"rsv28_29"
.LASF163:
	.string	"PDS_PLL_XTAL_32M"
.LASF93:
	.string	"forceWbMemStby"
.LASF12:
	.string	"long long unsigned int"
.LASF156:
	.string	"PDS_RAM_CFG_16KB_32KB_CPU_RAM_SLP"
.LASF175:
	.string	"PDS_PLL_CLK_80M"
.LASF35:
	.string	"dcdc18Off"
.LASF61:
	.string	"rsv4_11"
.LASF19:
	.string	"BL_Err_Type"
.LASF5:
	.string	"long int"
.LASF183:
	.string	"PDS_Power_Off_PLL"
.LASF192:
	.string	"PDS_Select_RC32M_As_PLL_Ref"
.LASF129:
	.string	"PDS_RF_STS_PU_MBG"
.LASF116:
	.string	"rsv31"
.LASF4:
	.string	"short int"
.LASF91:
	.string	"forceCpuMemStby"
.LASF32:
	.string	"sleepForever"
.LASF39:
	.string	"memStby"
.LASF27:
	.string	"trimRc32mCodeFrExtParity"
.LASF161:
	.string	"PDS_PLL_XTAL_NONE"
.LASF87:
	.string	"forceCpuPdsRst"
.LASF210:
	.string	"PDS_Force_Config"
.LASF57:
	.string	"cpuPwrOff"
.LASF71:
	.string	"rsv28_31"
.LASF146:
	.string	"PDS_STS_DISO"
.LASF18:
	.string	"TIMEOUT"
.LASF193:
	.string	"PDS_Trim_RC32M"
.LASF181:
	.string	"pdsIntCbfArra"
.LASF149:
	.string	"PDS_STS_WAIT_EFUSE"
.LASF179:
	.string	"BL602_Delay_US"
.LASF29:
	.string	"reserved"
.LASF103:
	.string	"forceMiscIsoEn"
.LASF180:
	.string	"EF_Ctrl_Read_RC32M_Trim"
.LASF73:
	.string	"PDS_INT_WAKEUP"
.LASF23:
	.string	"MASK"
.LASF107:
	.string	"forceMiscMemStby"
.LASF198:
	.string	"PDS_Get_PdsStstus"
.LASF178:
	.string	"PDS_PLL_CLK_Type"
.LASF141:
	.string	"PDS_STS_BGON"
.LASF13:
	.string	"unsigned int"
.LASF132:
	.string	"PDS_RF_STS_WB_EN_AON"
.LASF177:
	.string	"PDS_PLL_CLK_32M"
.LASF34:
	.string	"saveWiFiState"
.LASF123:
	.string	"PDS_PLL_STS_OFF"
.LASF207:
	.string	"ramCfg"
.LASF11:
	.string	"long unsigned int"
.LASF202:
	.string	"PDS_Get_IntStatus"
.LASF59:
	.string	"cpuMemStby"
.LASF154:
	.string	"PDS_RAM_CFG_48KB_64KB_CPU_RAM_RET"
.LASF45:
	.string	"socEnbForceOn"
.LASF119:
	.string	"pdsCtl2"
.LASF120:
	.string	"pdsCtl3"
.LASF196:
	.string	"intType"
.LASF9:
	.string	"short unsigned int"
.LASF31:
	.string	"pdsStart"
.LASF49:
	.string	"rsv19_20"
.LASF75:
	.string	"PDS_INT_RF_DONE"
.LASF151:
	.string	"PDS_RAM_CFG_0KB_16KB_CPU_RAM_RET"
.LASF190:
	.string	"xtalType"
.LASF203:
	.string	"PDS_IntMask"
.LASF194:
	.string	"trim"
.LASF104:
	.string	"rsv5_6"
.LASF152:
	.string	"PDS_RAM_CFG_16KB_32KB_CPU_RAM_RET"
.LASF44:
	.string	"xtalOff"
.LASF99:
	.string	"PDS_CTL2_Type"
.LASF78:
	.string	"PDS_INT_Type"
.LASF140:
	.string	"PDS_STS_PRE_BGON1"
.LASF81:
	.string	"forceWbPwrOff"
.LASF56:
	.string	"PDS_CTL_Type"
.LASF22:
	.string	"UNMASK"
.LASF112:
	.string	"rsv25_26"
.LASF213:
	.string	"PDS_Enable"
.LASF125:
	.string	"PDS_PLL_STS_PU"
.LASF43:
	.string	"pdsPwrOff"
.LASF121:
	.string	"pdsCtl4"
.LASF17:
	.string	"ERROR"
.LASF67:
	.string	"MiscPwrOff"
.LASF145:
	.string	"PDS_STS_PON"
.LASF80:
	.string	"rsv1"
.LASF64:
	.string	"WbMemStby"
.LASF133:
	.string	"PDS_RF_STS_Type"
.LASF171:
	.string	"PDS_PLL_CLK_192M"
.LASF173:
	.string	"PDS_PLL_CLK_120M"
.LASF185:
	.string	"PDS_Enable_PLL_Clk"
.LASF136:
	.string	"PDS_STS_ERST"
.LASF97:
	.string	"forceWbGateClk"
.LASF117:
	.string	"PDS_CTL3_Type"
.LASF111:
	.string	"CpuIsoEn"
.LASF142:
	.string	"PDS_STS_CLK_SW_32M"
.LASF126:
	.string	"PDS_PLL_STS_RDY"
.LASF58:
	.string	"cpuRst"
.LASF36:
	.string	"bgSysOff"
.LASF162:
	.string	"PDS_PLL_XTAL_24M"
.LASF144:
	.string	"PDS_STS_PON_LDO11_MISC"
.LASF70:
	.string	"MiscGateClk"
.LASF50:
	.string	"wfiMask"
.LASF20:
	.string	"RESET"
.LASF195:
	.string	"PDS_Int_Callback_Install"
.LASF55:
	.string	"pdsCtlPllSel"
.LASF7:
	.string	"int32_t"
.LASF2:
	.string	"unsigned char"
.LASF68:
	.string	"MiscRst"
.LASF148:
	.string	"PDS_STS_DRST"
.LASF138:
	.string	"PDS_STS_POFF"
.LASF208:
	.string	"pdsSleepCnt"
.LASF130:
	.string	"PDS_RF_STS_PU_LDO15RF"
.LASF134:
	.string	"PDS_STS_IDLE"
.LASF139:
	.string	"PDS_STS_PRE_BGON"
.LASF72:
	.string	"PDS_CTL4_Type"
.LASF150:
	.string	"PDS_STS_Type"
.LASF109:
	.string	"forceMiscGateClk"
.LASF24:
	.string	"BL_Mask_Type"
.LASF214:
	.string	"cfg4"
.LASF21:
	.string	"BL_Sts_Type"
.LASF157:
	.string	"PDS_RAM_CFG_32KB_48KB_CPU_RAM_SLP"
.LASF206:
	.string	"defaultLvCfg"
.LASF182:
	.string	"tmpVal"
.LASF66:
	.string	"rsv16_23"
.LASF10:
	.string	"uint32_t"
.LASF216:
	.string	"EF_Ctrl_Get_Trim_Parity"
.LASF83:
	.string	"forceCpuIsoPwrOff"
.LASF41:
	.string	"isolation"
.LASF209:
	.string	"PDS_RAM_Config"
.LASF115:
	.string	"MiscIsoEn"
.LASF14:
	.string	"long double"
.LASF15:
	.string	"char"
.LASF74:
	.string	"PDS_INT_HBN_GPIO_IRRX_BLE_WIFI"
.LASF131:
	.string	"PDS_RF_STS_PU_SFREG"
.LASF174:
	.string	"PDS_PLL_CLK_96M"
.LASF211:
	.string	"cfg2"
.LASF212:
	.string	"cfg3"
.LASF105:
	.string	"forceMiscPdsRst"
.LASF189:
	.string	"PDS_Power_On_PLL"
.LASF186:
	.string	"pllClk"
.LASF184:
	.string	"PDS_Disable_PLL_Clk"
.LASF40:
	.string	"rsv10"
.LASF187:
	.string	"PDS_Disable_PLL_All_Clks"
.LASF201:
	.string	"PDS_IntClear"
.LASF90:
	.string	"rsv11"
.LASF172:
	.string	"PDS_PLL_CLK_160M"
.LASF164:
	.string	"PDS_PLL_XTAL_38P4M"
.LASF199:
	.string	"PDS_Get_PdsRfStstus"
.LASF124:
	.string	"PDS_PLL_STS_SFREG"
.LASF215:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF25:
	.string	"intCallback_Type"
.LASF101:
	.string	"forceMiscPwrOff"
.LASF102:
	.string	"rsv2_3"
.LASF197:
	.string	"cbFun"
.LASF106:
	.string	"rsv8_9"
.LASF159:
	.string	"PDS_RAM_CFG_RSV"
.LASF26:
	.string	"trimRc32mCodeFrExt"
.LASF166:
	.string	"PDS_PLL_XTAL_26M"
.LASF113:
	.string	"WbIsoEn"
.LASF63:
	.string	"WbRst"
.LASF33:
	.string	"xtalForceOff"
.LASF143:
	.string	"PDS_STS_PON_DCDC"
.LASF118:
	.string	"pdsCtl"
.LASF200:
	.string	"PDS_Get_PdsPllStstus"
.LASF8:
	.string	"uint8_t"
.LASF204:
	.string	"intMask"
.LASF76:
	.string	"PDS_INT_PLL_DONE"
.LASF16:
	.string	"SUCCESS"
.LASF65:
	.string	"WbGateClk"
.LASF191:
	.string	"PDS_Select_XTAL_As_PLL_Ref"
.LASF135:
	.string	"PDS_STS_ECG"
.LASF28:
	.string	"trimRc32mExtCodeEn"
.LASF69:
	.string	"MiscMemStby"
.LASF62:
	.string	"WbPwrOff"
.LASF47:
	.string	"pdsRC32mOn"
.LASF176:
	.string	"PDS_PLL_CLK_48M"
.LASF110:
	.string	"rsv14_23"
.LASF85:
	.string	"forceWbIsoPwrOff"
.LASF165:
	.string	"PDS_PLL_XTAL_40M"
.LASF92:
	.string	"rsv13"
.LASF94:
	.string	"rsv15"
.LASF95:
	.string	"forceCpuGateClk"
.LASF96:
	.string	"rsv17"
.LASF98:
	.string	"rsv19_31"
.LASF38:
	.string	"clkOff"
.LASF153:
	.string	"PDS_RAM_CFG_32KB_48KB_CPU_RAM_RET"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_pds.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
