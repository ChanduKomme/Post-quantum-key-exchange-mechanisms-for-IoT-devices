	.file	"bl602_common.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_common.c"
	.section	.rodata
	.align	2
.LC0:
	.string	"Default_Handler\r\n"
	.section	.text.Default_Handler,"ax",@progbits
	.align	1
	.globl	Default_Handler
	.type	Default_Handler, @function
Default_Handler:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_common.c"
	.loc 1 56 27
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 57 5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	bflb_platform_printf
	.loc 1 58 1
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
.LFE8:
	.size	Default_Handler, .-Default_Handler
	.section	.rodata
	.align	2
.LC1:
	.string	"Trap_Handler\r\n"
	.align	2
.LC2:
	.string	"mcause=%08x\r\n"
	.align	2
.LC3:
	.string	"Instruction access fault\r\n"
	.align	2
.LC4:
	.string	"Illegal instruction\r\n"
	.align	2
.LC5:
	.string	"Breakpoint\r\n"
	.align	2
.LC6:
	.string	"Load address misaligned\r\n"
	.align	2
.LC7:
	.string	"Load access fault\r\n"
	.align	2
.LC8:
	.string	"Store/AMO address misaligned\r\n"
	.align	2
.LC9:
	.string	"Store/AMO access fault\r\n"
	.align	2
.LC10:
	.string	"Environment call from U-mode\r\n"
	.align	2
.LC11:
	.string	"mepc:%08x\r\n"
	.align	2
.LC12:
	.string	"Environment call from M-mode\r\n"
	.align	2
.LC13:
	.string	"Cause num=%d\r\n"
	.section	.text.Trap_Handler,"ax",@progbits
	.align	1
	.globl	Trap_Handler
	.type	Trap_Handler, @function
Trap_Handler:
.LFB9:
	.loc 1 59 24
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
.LBB2:
	.loc 1 60 51
 #APP
# 60 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_common.c" 1
	csrr a5, mcause
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	.loc 1 60 104
	lw	a5,-20(s0)
.LBE2:
	.loc 1 60 19
	sw	a5,-24(s0)
	.loc 1 63 5
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	bflb_platform_printf
	.loc 1 64 5
	lw	a1,-24(s0)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	bflb_platform_printf
	.loc 1 66 10
	lw	a5,-24(s0)
	andi	a5,a5,1023
	sw	a5,-24(s0)
	.loc 1 67 5
	lw	a4,-24(s0)
	li	a5,9
	beq	a4,a5,.L3
	lw	a4,-24(s0)
	li	a5,9
	bgtu	a4,a5,.L4
	lw	a4,-24(s0)
	li	a5,8
	beq	a4,a5,.L5
	lw	a4,-24(s0)
	li	a5,8
	bgtu	a4,a5,.L4
	lw	a4,-24(s0)
	li	a5,7
	beq	a4,a5,.L6
	lw	a4,-24(s0)
	li	a5,7
	bgtu	a4,a5,.L4
	lw	a4,-24(s0)
	li	a5,6
	beq	a4,a5,.L7
	lw	a4,-24(s0)
	li	a5,6
	bgtu	a4,a5,.L4
	lw	a4,-24(s0)
	li	a5,5
	beq	a4,a5,.L8
	lw	a4,-24(s0)
	li	a5,5
	bgtu	a4,a5,.L4
	lw	a4,-24(s0)
	li	a5,4
	beq	a4,a5,.L9
	lw	a4,-24(s0)
	li	a5,4
	bgtu	a4,a5,.L4
	lw	a4,-24(s0)
	li	a5,3
	beq	a4,a5,.L10
	lw	a4,-24(s0)
	li	a5,3
	bgtu	a4,a5,.L4
	lw	a4,-24(s0)
	li	a5,1
	beq	a4,a5,.L11
	lw	a4,-24(s0)
	li	a5,2
	beq	a4,a5,.L12
	j	.L4
.L11:
	.loc 1 69 13
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	bflb_platform_printf
	.loc 1 70 13
	j	.L13
.L12:
	.loc 1 72 13
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	bflb_platform_printf
	.loc 1 73 13
	j	.L13
.L10:
	.loc 1 75 13
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	bflb_platform_printf
	.loc 1 76 13
	j	.L13
.L9:
	.loc 1 78 13
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	bflb_platform_printf
	.loc 1 79 13
	j	.L13
.L8:
	.loc 1 81 13
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	bflb_platform_printf
	.loc 1 82 13
	j	.L13
.L7:
	.loc 1 84 13
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	bflb_platform_printf
	.loc 1 85 13
	j	.L13
.L6:
	.loc 1 87 13
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	bflb_platform_printf
	.loc 1 88 13
	j	.L13
.L5:
	.loc 1 90 13
	lui	a5,%hi(.LC10)
	addi	a0,a5,%lo(.LC10)
	call	bflb_platform_printf
.LBB3:
	.loc 1 91 41
 #APP
# 91 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_common.c" 1
	csrr a5, mepc
# 0 "" 2
 #NO_APP
	sw	a5,-36(s0)
	.loc 1 91 92
	lw	a5,-36(s0)
.LBE3:
	.loc 1 91 16
	sw	a5,-32(s0)
	.loc 1 92 13
	lw	a1,-32(s0)
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	bflb_platform_printf
	.loc 1 93 16
	lw	a5,-32(s0)
	addi	a5,a5,4
	sw	a5,-32(s0)
	.loc 1 94 133 discriminator 2
	lw	a5,-32(s0)
 #APP
# 94 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_common.c" 1
	csrw mepc, a5
# 0 "" 2
	.loc 1 95 13
 #NO_APP
	j	.L13
.L3:
	.loc 1 97 13
	lui	a5,%hi(.LC12)
	addi	a0,a5,%lo(.LC12)
	call	bflb_platform_printf
.LBB4:
	.loc 1 98 41
 #APP
# 98 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_common.c" 1
	csrr a5, mepc
# 0 "" 2
 #NO_APP
	sw	a5,-28(s0)
	.loc 1 98 92
	lw	a5,-28(s0)
.LBE4:
	.loc 1 98 16
	sw	a5,-32(s0)
	.loc 1 99 13
	lw	a1,-32(s0)
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	bflb_platform_printf
	.loc 1 100 16
	lw	a5,-32(s0)
	addi	a5,a5,4
	sw	a5,-32(s0)
	.loc 1 101 133 discriminator 2
	lw	a5,-32(s0)
 #APP
# 101 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_common.c" 1
	csrw mepc, a5
# 0 "" 2
	.loc 1 102 13
 #NO_APP
	j	.L13
.L4:
	.loc 1 104 13
	lw	a1,-24(s0)
	lui	a5,%hi(.LC13)
	addi	a0,a5,%lo(.LC13)
	call	bflb_platform_printf
.LBB5:
	.loc 1 105 41
 #APP
# 105 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_common.c" 1
	csrr a5, mepc
# 0 "" 2
 #NO_APP
	sw	a5,-40(s0)
	.loc 1 105 92
	lw	a5,-40(s0)
.LBE5:
	.loc 1 105 16
	sw	a5,-32(s0)
	.loc 1 106 13
	lw	a1,-32(s0)
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	bflb_platform_printf
	.loc 1 107 16
	lw	a5,-32(s0)
	addi	a5,a5,4
	sw	a5,-32(s0)
	.loc 1 108 133 discriminator 2
	lw	a5,-32(s0)
 #APP
# 108 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_common.c" 1
	csrw mepc, a5
# 0 "" 2
	.loc 1 109 13
 #NO_APP
	nop
.L13:
	.loc 1 111 1
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
.LFE9:
	.size	Trap_Handler, .-Trap_Handler
	.section	.tcm_code,"ax",@progbits
	.align	1
	.weak	ASM_Delay_Us
	.type	ASM_Delay_Us, @function
ASM_Delay_Us:
.LFB10:
	.loc 1 182 1
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
	.loc 1 183 14
	sw	zero,-20(s0)
	.loc 1 184 14
	li	a5,40
	sw	a5,-24(s0)
	.loc 1 186 17
	lui	a5,%hi(ASM_Delay_Us)
	addi	a5,a5,%lo(ASM_Delay_Us)
	sw	a5,-20(s0)
	.loc 1 192 37
	lw	a4,-20(s0)
	li	a5,251658240
	and	a4,a4,a5
	.loc 1 192 7
	li	a5,16777216
	bne	a4,a5,.L15
	.loc 1 194 17
	li	a5,1073778688
	lw	a4,0(a5)
	.loc 1 194 12
	li	a5,4096
	and	a5,a4,a5
	.loc 1 194 11
	beq	a5,zero,.L15
	.loc 1 196 20
	li	a5,80
	sw	a5,-24(s0)
.L15:
	.loc 1 200 5
 #APP
# 200 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_common.c" 1
	.align 4
	lw       a4,-36(s0)
	lui   a5,0x18
	addi  a5,a5,1696
	divu  a5,a4,a5
	sw       a5,-36(s0)
	lw       a4,-36(s0)
	lw       a5,-40(s0)
	mul   a5,a4,a5
	sw       a5,-36(s0)
	lw       a4,-36(s0)
	lw       a5,-24(s0)
	divu  a5,a4,a5
	sw    a5,-36(s0)
	lw    a5,-36(s0)
	li    a4,0x1
	beq   a5,zero,end
	beq   a5,a4,end
	nop
	nop
	.align 4
	loop  :
addi  a4,a5,-1
	mv    a5,a4
	bnez  a5,loop
	nop
	end   :
	nop

# 0 "" 2
	.loc 1 233 1
 #NO_APP
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
	.size	ASM_Delay_Us, .-ASM_Delay_Us
	.align	1
	.weak	BL602_Delay_US
	.type	BL602_Delay_US, @function
BL602_Delay_US:
.LFB11:
	.loc 1 247 1
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
	.loc 1 248 5
	li	a5,1073803264
	addi	a5,a5,264
	lw	a5,0(a5)
	lw	a1,-20(s0)
	mv	a0,a5
	call	ASM_Delay_Us
	.loc 1 249 1
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
.LFE11:
	.size	BL602_Delay_US, .-BL602_Delay_US
	.align	1
	.weak	BL602_Delay_MS
	.type	BL602_Delay_MS, @function
BL602_Delay_MS:
.LFB12:
	.loc 1 261 1
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
	.loc 1 262 14
	sw	zero,-20(s0)
	.loc 1 263 14
	sw	zero,-24(s0)
	.loc 1 265 7
	lw	a4,-36(s0)
	li	a5,1023
	bleu	a4,a5,.L18
	.loc 1 267 15
	li	a5,1024
	sw	a5,-24(s0)
	.loc 1 268 14
	sw	zero,-20(s0)
	.loc 1 268 9
	j	.L19
.L20:
	.loc 1 269 13
	li	a0,1024000
	call	BL602_Delay_US
	.loc 1 268 31 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L19:
	.loc 1 268 23 discriminator 1
	lw	a5,-36(s0)
	srli	a5,a5,10
	.loc 1 268 18 discriminator 1
	lw	a4,-20(s0)
	bltu	a4,a5,.L20
.L18:
	.loc 1 272 11
	lw	a5,-36(s0)
	andi	a5,a5,1023
	.loc 1 272 7
	beq	a5,zero,.L22
	.loc 1 274 15
	lw	a5,-36(s0)
	andi	a5,a5,1023
	sw	a5,-24(s0)
	.loc 1 275 29
	lw	a4,-24(s0)
	li	a5,1000
	mul	a5,a4,a5
	.loc 1 275 9
	mv	a0,a5
	call	BL602_Delay_US
.L22:
	.loc 1 278 1
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
	.size	BL602_Delay_MS, .-BL602_Delay_MS
	.align	1
	.weak	BL602_MemCpy
	.type	BL602_MemCpy, @function
BL602_MemCpy:
.LFB13:
	.loc 1 292 1
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
	.loc 1 293 20
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 1 294 14
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 296 11
	j	.L24
.L25:
	.loc 1 297 18
	lw	a4,-20(s0)
	addi	a5,a4,1
	sw	a5,-20(s0)
	.loc 1 297 11
	lw	a5,-24(s0)
	addi	a3,a5,1
	sw	a3,-24(s0)
	.loc 1 297 16
	lbu	a4,0(a4)
	.loc 1 297 14
	sb	a4,0(a5)
.L24:
	.loc 1 296 13
	lw	a5,-44(s0)
	addi	a4,a5,-1
	sw	a4,-44(s0)
	.loc 1 296 12
	bne	a5,zero,.L25
	.loc 1 299 12
	lw	a5,-36(s0)
	.loc 1 300 1
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
	.size	BL602_MemCpy, .-BL602_MemCpy
	.align	1
	.weak	BL602_MemCpy4
	.type	BL602_MemCpy4, @function
BL602_MemCpy4:
.LFB14:
	.loc 1 314 1
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
	.loc 1 315 21
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 1 316 15
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 318 11
	j	.L28
.L29:
	.loc 1 319 18
	lw	a4,-20(s0)
	addi	a5,a4,4
	sw	a5,-20(s0)
	.loc 1 319 11
	lw	a5,-24(s0)
	addi	a3,a5,4
	sw	a3,-24(s0)
	.loc 1 319 16
	lw	a4,0(a4)
	.loc 1 319 14
	sw	a4,0(a5)
.L28:
	.loc 1 318 13
	lw	a5,-44(s0)
	addi	a4,a5,-1
	sw	a4,-44(s0)
	.loc 1 318 12
	bne	a5,zero,.L29
	.loc 1 321 12
	lw	a5,-36(s0)
	.loc 1 322 1
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
.LFE14:
	.size	BL602_MemCpy4, .-BL602_MemCpy4
	.align	1
	.weak	BL602_MemCpy_Fast
	.type	BL602_MemCpy_Fast, @function
BL602_MemCpy_Fast:
.LFB15:
	.loc 1 336 1
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
	.loc 1 337 24
	sw	zero,-20(s0)
	.loc 1 338 14
	lw	a5,-52(s0)
	sw	a5,-24(s0)
	.loc 1 339 14
	lw	a5,-56(s0)
	sw	a5,-28(s0)
	.loc 1 341 9
	lw	a5,-24(s0)
	.loc 1 341 22
	andi	a5,a5,3
	.loc 1 341 7
	bne	a5,zero,.L32
	.loc 1 341 33 discriminator 1
	lw	a5,-28(s0)
	.loc 1 341 46 discriminator 1
	andi	a5,a5,3
	.loc 1 341 30 discriminator 1
	bne	a5,zero,.L32
	.loc 1 342 9
	lw	a5,-60(s0)
	srli	a5,a5,2
	mv	a2,a5
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	BL602_MemCpy4
	.loc 1 343 13
	lw	a5,-60(s0)
	andi	a5,a5,3
	sw	a5,-32(s0)
	.loc 1 344 13
	lw	a4,-60(s0)
	lw	a5,-32(s0)
	sub	a5,a4,a5
	sw	a5,-36(s0)
	.loc 1 345 14
	j	.L33
.L34:
	.loc 1 346 33
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 346 28
	lw	a4,-28(s0)
	add	a4,a4,a5
	.loc 1 346 21
	lw	a3,-36(s0)
	lw	a5,-20(s0)
	add	a5,a3,a5
	.loc 1 346 16
	lw	a3,-24(s0)
	add	a5,a3,a5
	.loc 1 346 28
	lbu	a4,0(a4)
	.loc 1 346 24
	sb	a4,0(a5)
	.loc 1 347 14
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L33:
	.loc 1 345 16
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	bltu	a4,a5,.L34
	.loc 1 341 7
	j	.L35
.L32:
	.loc 1 350 9
	lw	a2,-60(s0)
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	BL602_MemCpy
.L35:
	.loc 1 352 12
	lw	a5,-24(s0)
	.loc 1 353 1
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
.LFE15:
	.size	BL602_MemCpy_Fast, .-BL602_MemCpy_Fast
	.align	1
	.weak	BL602_MemSet
	.type	BL602_MemSet, @function
BL602_MemSet:
.LFB16:
	.loc 1 367 1
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
	sw	a2,-44(s0)
	sb	a5,-37(s0)
	.loc 1 368 14
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 370 11
	j	.L38
.L39:
	.loc 1 371 11
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 371 14
	lbu	a4,-37(s0)
	sb	a4,0(a5)
	.loc 1 372 9
	lw	a5,-44(s0)
	addi	a5,a5,-1
	sw	a5,-44(s0)
.L38:
	.loc 1 370 14
	lw	a5,-44(s0)
	bne	a5,zero,.L39
	.loc 1 374 12
	lw	a5,-36(s0)
	.loc 1 375 1
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
.LFE16:
	.size	BL602_MemSet, .-BL602_MemSet
	.align	1
	.weak	BL602_MemSet4
	.type	BL602_MemSet4, @function
BL602_MemSet4:
.LFB17:
	.loc 1 388 1
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
	.loc 1 389 15
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 391 11
	j	.L42
.L43:
	.loc 1 392 11
	lw	a5,-20(s0)
	addi	a4,a5,4
	sw	a4,-20(s0)
	.loc 1 392 14
	lw	a4,-40(s0)
	sw	a4,0(a5)
.L42:
	.loc 1 391 13
	lw	a5,-44(s0)
	addi	a4,a5,-1
	sw	a4,-44(s0)
	.loc 1 391 12
	bne	a5,zero,.L43
	.loc 1 394 12
	lw	a5,-36(s0)
	.loc 1 395 1
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
.LFE17:
	.size	BL602_MemSet4, .-BL602_MemSet4
	.align	1
	.weak	BL602_MemCmp
	.type	BL602_MemCmp, @function
BL602_MemCmp:
.LFB18:
	.loc 1 409 1
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
	.loc 1 410 26
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 410 36
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	.loc 1 411 9
	sw	zero,-28(s0)
	.loc 1 413 11
	j	.L46
.L48:
	.loc 1 414 21
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 414 18
	lbu	a5,0(a5)
	.loc 1 414 13
	mv	a3,a5
	.loc 1 414 34
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 1 414 31
	lbu	a5,0(a5)
	.loc 1 414 11
	sub	a5,a3,a5
	sw	a5,-28(s0)
	.loc 1 415 12
	lw	a5,-28(s0)
	bne	a5,zero,.L50
.L46:
	.loc 1 413 13
	lw	a5,-44(s0)
	addi	a4,a5,-1
	sw	a4,-44(s0)
	.loc 1 413 12
	bne	a5,zero,.L48
	j	.L47
.L50:
	.loc 1 416 13
	nop
.L47:
	.loc 1 419 12
	lw	a5,-28(s0)
	.loc 1 420 1
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
	.size	BL602_MemCmp, .-BL602_MemCmp
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x49d
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xe
	.4byte	.LASF35
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
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x7
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xa
	.4byte	.LASF8
	.byte	0x2e
	.byte	0x17
	.4byte	0x2b
	.uleb128 0x7
	.4byte	0x53
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xa
	.4byte	.LASF9
	.byte	0x34
	.byte	0x1b
	.4byte	0x7a
	.uleb128 0x7
	.4byte	0x6a
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x10
	.byte	0x4
	.uleb128 0x4
	.4byte	0xa4
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x3
	.byte	0x18
	.byte	0x6
	.4byte	0xbe
	.uleb128 0x12
	.4byte	0x9f
	.uleb128 0x13
	.byte	0
	.uleb128 0x6
	.4byte	.LASF15
	.2byte	0x198
	.byte	0x2b
	.4byte	0x88
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12b
	.uleb128 0x1
	.string	"s1"
	.2byte	0x198
	.byte	0x44
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"s2"
	.2byte	0x198
	.byte	0x54
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"n"
	.2byte	0x198
	.byte	0x61
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"c1"
	.2byte	0x19a
	.byte	0x1a
	.4byte	0x131
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"c2"
	.2byte	0x19a
	.byte	0x24
	.4byte	0x131
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"d"
	.2byte	0x19b
	.byte	0x9
	.4byte	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.4byte	0x130
	.uleb128 0x14
	.uleb128 0x4
	.4byte	0x32
	.uleb128 0x6
	.4byte	.LASF16
	.2byte	0x183
	.byte	0x31
	.4byte	0x189
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x189
	.uleb128 0x1
	.string	"dst"
	.2byte	0x183
	.byte	0x49
	.4byte	0x189
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"val"
	.2byte	0x183
	.byte	0x5d
	.4byte	0x75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"n"
	.2byte	0x183
	.byte	0x6b
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"q"
	.2byte	0x185
	.byte	0xf
	.4byte	0x189
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	0x6a
	.uleb128 0x6
	.4byte	.LASF17
	.2byte	0x16e
	.byte	0x2d
	.4byte	0x9d
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dd
	.uleb128 0x1
	.string	"s"
	.2byte	0x16e
	.byte	0x40
	.4byte	0x9d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"c"
	.2byte	0x16e
	.byte	0x4b
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1
	.string	"n"
	.2byte	0x16e
	.byte	0x57
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"p"
	.2byte	0x170
	.byte	0xe
	.4byte	0x1dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	0x53
	.uleb128 0x15
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x14f
	.byte	0x2d
	.4byte	0x9d
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26e
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x45
	.4byte	0x9d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x57
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"n"
	.2byte	0x14f
	.byte	0x66
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x8
	.4byte	.LASF21
	.2byte	0x151
	.byte	0xe
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.4byte	.LASF22
	.2byte	0x151
	.byte	0x13
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"i"
	.2byte	0x151
	.byte	0x18
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"dst"
	.2byte	0x152
	.byte	0xe
	.4byte	0x1dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"src"
	.2byte	0x153
	.byte	0xe
	.4byte	0x1dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.4byte	.LASF23
	.2byte	0x139
	.byte	0x31
	.4byte	0x189
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ce
	.uleb128 0x1
	.string	"dst"
	.2byte	0x139
	.byte	0x49
	.4byte	0x189
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"src"
	.2byte	0x139
	.byte	0x5e
	.4byte	0x2ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"n"
	.2byte	0x139
	.byte	0x6c
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"p"
	.2byte	0x13b
	.byte	0x15
	.4byte	0x2ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"q"
	.2byte	0x13c
	.byte	0xf
	.4byte	0x189
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	0x75
	.uleb128 0x6
	.4byte	.LASF24
	.2byte	0x123
	.byte	0x2d
	.4byte	0x9d
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x333
	.uleb128 0x1
	.string	"dst"
	.2byte	0x123
	.byte	0x40
	.4byte	0x9d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"src"
	.2byte	0x123
	.byte	0x51
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"n"
	.2byte	0x123
	.byte	0x5f
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"p"
	.2byte	0x125
	.byte	0x14
	.4byte	0x333
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"q"
	.2byte	0x126
	.byte	0xe
	.4byte	0x1dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	0x5e
	.uleb128 0x16
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x104
	.byte	0x2c
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x37b
	.uleb128 0x1
	.string	"cnt"
	.2byte	0x104
	.byte	0x44
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"i"
	.2byte	0x106
	.byte	0xe
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF25
	.2byte	0x107
	.byte	0xe
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0xf6
	.byte	0x2c
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x39f
	.uleb128 0xd
	.string	"cnt"
	.byte	0xf6
	.byte	0x44
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF28
	.byte	0x1
	.byte	0xb5
	.byte	0x2c
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ef
	.uleb128 0x18
	.4byte	.LASF29
	.byte	0x1
	.byte	0xb5
	.byte	0x42
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"cnt"
	.byte	0xb5
	.byte	0x50
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0xb7
	.byte	0xe
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF31
	.byte	0xb8
	.byte	0xe
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x3b
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48e
	.uleb128 0x5
	.4byte	.LASF33
	.byte	0x3c
	.byte	0x13
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.string	"epc"
	.byte	0x1
	.byte	0x3d
	.byte	0x13
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x43d
	.uleb128 0x5
	.4byte	.LASF34
	.byte	0x3c
	.byte	0x2c
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x459
	.uleb128 0x5
	.4byte	.LASF34
	.byte	0x5b
	.byte	0x22
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x9
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x475
	.uleb128 0x5
	.4byte	.LASF34
	.byte	0x62
	.byte	0x22
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1a
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x5
	.4byte	.LASF34
	.byte	0x69
	.byte	0x22
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF37
	.byte	0x1
	.byte	0x38
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x16
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 335
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.sleb128 1
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
	.uleb128 0xd
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"Trap_Handler"
.LASF25:
	.string	"count"
.LASF21:
	.string	"left"
.LASF17:
	.string	"BL602_MemSet"
.LASF4:
	.string	"short int"
.LASF23:
	.string	"BL602_MemCpy4"
.LASF6:
	.string	"long long int"
.LASF31:
	.string	"divVal"
.LASF2:
	.string	"unsigned char"
.LASF10:
	.string	"long unsigned int"
.LASF7:
	.string	"short unsigned int"
.LASF24:
	.string	"BL602_MemCpy"
.LASF19:
	.string	"pdst"
.LASF26:
	.string	"BL602_Delay_MS"
.LASF20:
	.string	"psrc"
.LASF12:
	.string	"unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint8_t"
.LASF33:
	.string	"cause"
.LASF16:
	.string	"BL602_MemSet4"
.LASF35:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF27:
	.string	"BL602_Delay_US"
.LASF37:
	.string	"Default_Handler"
.LASF28:
	.string	"ASM_Delay_Us"
.LASF15:
	.string	"BL602_MemCmp"
.LASF34:
	.string	"__tmp"
.LASF9:
	.string	"uint32_t"
.LASF5:
	.string	"long int"
.LASF14:
	.string	"char"
.LASF29:
	.string	"core"
.LASF13:
	.string	"long double"
.LASF3:
	.string	"signed char"
.LASF18:
	.string	"BL602_MemCpy_Fast"
.LASF30:
	.string	"codeAddress"
.LASF36:
	.string	"bflb_platform_printf"
.LASF22:
	.string	"done"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_common.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
