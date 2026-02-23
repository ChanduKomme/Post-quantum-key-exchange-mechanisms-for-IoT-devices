	.file	"stateMachine.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_wifidrv" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c"
	.section	.text.stateM_init,"ax",@progbits
	.align	1
	.globl	stateM_init
	.type	stateM_init, @function
stateM_init:
.LFB0:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c"
	.loc 1 66 1
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
	.loc 1 67 7
	lw	a5,-20(s0)
	beq	a5,zero,.L4
	.loc 1 70 22
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 71 23
	lw	a5,-20(s0)
	sw	zero,4(a5)
	.loc 1 72 20
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,8(a5)
	j	.L1
.L4:
	.loc 1 68 7
	nop
.L1:
	.loc 1 73 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	stateM_init, .-stateM_init
	.section	.text.stateM_handleEvent,"ax",@progbits
	.align	1
	.globl	stateM_handleEvent
	.type	stateM_handleEvent, @function
stateM_handleEvent:
.LFB1:
	.loc 1 77 1
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
	.loc 1 78 7
	lw	a5,-36(s0)
	beq	a5,zero,.L6
	.loc 1 78 14 discriminator 1
	lw	a5,-40(s0)
	bne	a5,zero,.L7
.L6:
	.loc 1 79 14
	li	a5,-2
	j	.L8
.L7:
	.loc 1 81 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 81 7
	bne	a5,zero,.L9
	.loc 1 83 7
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	goToErrorState
	.loc 1 84 14
	li	a5,-1
	j	.L8
.L9:
	.loc 1 87 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 87 27
	lw	a5,12(a5)
	.loc 1 87 7
	bne	a5,zero,.L10
	.loc 1 88 14
	li	a5,2
	j	.L8
.L10:
	.loc 1 90 24
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L22:
.LBB2:
	.loc 1 92 39
	lw	a2,-40(s0)
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	getTransition
	sw	a0,-24(s0)
	.loc 1 97 10
	lw	a5,-24(s0)
	bne	a5,zero,.L11
	.loc 1 99 20
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 100 10
	j	.L23
.L11:
	.loc 1 105 23
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 105 10
	bne	a5,zero,.L13
	.loc 1 107 10
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	goToErrorState
	.loc 1 108 17
	li	a5,-1
	j	.L8
.L13:
	.loc 1 111 17
	lw	a5,-24(s0)
	lw	a5,16(a5)
	sw	a5,-20(s0)
	.loc 1 116 13
	j	.L14
.L15:
	.loc 1 117 20
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
.L14:
	.loc 1 116 24
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 116 15
	bne	a5,zero,.L15
	.loc 1 121 28
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 121 10
	lw	a4,-20(s0)
	beq	a4,a5,.L16
	.loc 1 121 49 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 121 63 discriminator 1
	lw	a5,24(a5)
	.loc 1 121 43 discriminator 1
	beq	a5,zero,.L16
	.loc 1 122 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 122 27
	lw	a5,24(a5)
	.loc 1 122 44
	lw	a4,-36(s0)
	lw	a4,0(a4)
	.loc 1 122 58
	lw	a4,16(a4)
	.loc 1 122 10
	lw	a1,-40(s0)
	mv	a0,a4
	jalr	a5
.LVL0:
.L16:
	.loc 1 125 22
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 1 125 10
	beq	a5,zero,.L17
	.loc 1 126 20
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 1 126 33
	lw	a4,-36(s0)
	lw	a4,0(a4)
	.loc 1 126 47
	lw	a3,16(a4)
	.loc 1 126 71
	lw	a4,-20(s0)
	lw	a4,16(a4)
	.loc 1 126 10
	mv	a2,a4
	lw	a1,-40(s0)
	mv	a0,a3
	jalr	a5
.LVL1:
.L17:
	.loc 1 131 28
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 131 10
	lw	a4,-20(s0)
	beq	a4,a5,.L18
	.loc 1 131 55 discriminator 1
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 131 43 discriminator 1
	beq	a5,zero,.L18
	.loc 1 132 19
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 132 43
	lw	a4,-20(s0)
	lw	a4,16(a4)
	.loc 1 132 10
	lw	a1,-40(s0)
	mv	a0,a4
	jalr	a5
.LVL2:
.L18:
	.loc 1 134 31
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 134 26
	lw	a5,-36(s0)
	sw	a4,4(a5)
	.loc 1 135 25
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 138 15
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 138 36
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 138 10
	bne	a4,a5,.L19
	.loc 1 139 17
	li	a5,1
	j	.L8
.L19:
	.loc 1 141 15
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 141 36
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 141 10
	bne	a4,a5,.L20
	.loc 1 142 17
	li	a5,-1
	j	.L8
.L20:
	.loc 1 146 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 146 30
	lw	a5,12(a5)
	.loc 1 146 10
	bne	a5,zero,.L21
	.loc 1 147 17
	li	a5,3
	j	.L8
.L21:
	.loc 1 149 14
	li	a5,0
	j	.L8
.L23:
.LBE2:
	.loc 1 150 14
	lw	a5,-20(s0)
	bne	a5,zero,.L22
	.loc 1 152 11
	li	a5,2
.L8:
	.loc 1 153 1
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
.LFE1:
	.size	stateM_handleEvent, .-stateM_handleEvent
	.section	.text.stateM_currentState,"ax",@progbits
	.align	1
	.globl	stateM_currentState
	.type	stateM_currentState, @function
stateM_currentState:
.LFB2:
	.loc 1 156 1
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
	.loc 1 157 7
	lw	a5,-20(s0)
	bne	a5,zero,.L25
	.loc 1 158 13
	li	a5,0
	j	.L26
.L25:
	.loc 1 160 14
	lw	a5,-20(s0)
	lw	a5,0(a5)
.L26:
	.loc 1 161 1
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
	.size	stateM_currentState, .-stateM_currentState
	.section	.text.stateM_previousState,"ax",@progbits
	.align	1
	.globl	stateM_previousState
	.type	stateM_previousState, @function
stateM_previousState:
.LFB3:
	.loc 1 164 1
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
	.loc 1 165 7
	lw	a5,-20(s0)
	bne	a5,zero,.L28
	.loc 1 166 13
	li	a5,0
	j	.L29
.L28:
	.loc 1 168 14
	lw	a5,-20(s0)
	lw	a5,4(a5)
.L29:
	.loc 1 169 1
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
.LFE3:
	.size	stateM_previousState, .-stateM_previousState
	.section	.text.goToErrorState,"ax",@progbits
	.align	1
	.type	goToErrorState, @function
goToErrorState:
.LFB4:
	.loc 1 174 1
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
	.loc 1 175 28
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 175 23
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 1 176 27
	lw	a5,-20(s0)
	lw	a4,8(a5)
	.loc 1 176 22
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 178 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 178 7
	beq	a5,zero,.L32
	.loc 1 178 33 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 178 47 discriminator 1
	lw	a5,20(a5)
	.loc 1 178 27 discriminator 1
	beq	a5,zero,.L32
	.loc 1 179 10
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 179 24
	lw	a5,20(a5)
	.loc 1 179 42
	lw	a4,-20(s0)
	lw	a4,0(a4)
	.loc 1 179 56
	lw	a4,16(a4)
	.loc 1 179 7
	lw	a1,-24(s0)
	mv	a0,a4
	jalr	a5
.LVL3:
.L32:
	.loc 1 180 1
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
.LFE4:
	.size	goToErrorState, .-goToErrorState
	.section	.text.getTransition,"ax",@progbits
	.align	1
	.type	getTransition, @function
getTransition:
.LFB5:
	.loc 1 184 1
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
	.loc 1 187 12
	sw	zero,-20(s0)
	.loc 1 187 4
	j	.L34
.L38:
.LBB3:
	.loc 1 189 36
	lw	a5,-40(s0)
	lw	a3,8(a5)
	.loc 1 189 49
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	.loc 1 189 26
	add	a5,a3,a5
	sw	a5,-24(s0)
	.loc 1 192 13
	lw	a5,-24(s0)
	lw	a4,0(a5)
	.loc 1 192 33
	lw	a5,-44(s0)
	lw	a5,0(a5)
	.loc 1 192 10
	bne	a4,a5,.L35
	.loc 1 194 17
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 194 13
	bne	a5,zero,.L36
	.loc 1 195 20
	lw	a5,-24(s0)
	j	.L37
.L36:
	.loc 1 197 21
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 197 20
	lw	a4,-24(s0)
	lw	a4,4(a4)
	lw	a1,-44(s0)
	mv	a0,a4
	jalr	a5
.LVL4:
	mv	a5,a0
	.loc 1 197 18 discriminator 1
	beq	a5,zero,.L35
	.loc 1 198 20
	lw	a5,-24(s0)
	j	.L37
.L35:
.LBE3:
	.loc 1 187 44 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L34:
	.loc 1 187 26 discriminator 1
	lw	a5,-40(s0)
	lw	a5,12(a5)
	.loc 1 187 19 discriminator 1
	lw	a4,-20(s0)
	bltu	a4,a5,.L38
	.loc 1 203 10
	li	a5,0
.L37:
	.loc 1 204 1
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
.LFE5:
	.size	getTransition, .-getTransition
	.section	.text.stateM_stopped,"ax",@progbits
	.align	1
	.globl	stateM_stopped
	.type	stateM_stopped, @function
stateM_stopped:
.LFB6:
	.loc 1 207 1
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
	.loc 1 208 7
	lw	a5,-20(s0)
	bne	a5,zero,.L40
	.loc 1 209 14
	li	a5,1
	j	.L41
.L40:
	.loc 1 211 23
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 211 37
	lw	a5,12(a5)
	.loc 1 211 54
	seqz	a5,a5
	andi	a5,a5,0xff
.L41:
	.loc 1 212 1
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
	.size	stateM_stopped, .-stateM_stopped
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3b2
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x12
	.4byte	.LASF38
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
	.uleb128 0x14
	.4byte	.LASF39
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x7
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0xa
	.4byte	.LASF7
	.byte	0x8
	.byte	0x74
	.4byte	0x77
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x77
	.byte	0x8
	.4byte	0x2b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x7f
	.byte	0xa
	.4byte	0x77
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF8
	.byte	0x14
	.byte	0xbb
	.4byte	0xc1
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0xbe
	.byte	0x8
	.4byte	0x2b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0xc7
	.byte	0xa
	.4byte	0x77
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0xd6
	.byte	0xc
	.4byte	0xe6
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0xe3
	.byte	0xc
	.4byte	0x100
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0xec
	.byte	0x18
	.4byte	0x172
	.byte	0x10
	.byte	0
	.uleb128 0x16
	.4byte	0xd5
	.4byte	0xd5
	.uleb128 0x3
	.4byte	0x77
	.uleb128 0x3
	.4byte	0xdc
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.4byte	.LASF14
	.uleb128 0x4
	.4byte	0x53
	.uleb128 0xb
	.4byte	0xdc
	.uleb128 0x4
	.4byte	0xc1
	.uleb128 0xc
	.4byte	0x100
	.uleb128 0x3
	.4byte	0x77
	.uleb128 0x3
	.4byte	0xdc
	.uleb128 0x3
	.4byte	0x77
	.byte	0
	.uleb128 0x4
	.4byte	0xeb
	.uleb128 0xd
	.4byte	.LASF15
	.byte	0x1c
	.2byte	0x140
	.4byte	0x16d
	.uleb128 0x1
	.4byte	.LASF16
	.2byte	0x145
	.byte	0x18
	.4byte	0x172
	.byte	0
	.uleb128 0x1
	.4byte	.LASF17
	.2byte	0x14a
	.byte	0x18
	.4byte	0x172
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF18
	.2byte	0x14e
	.byte	0x17
	.4byte	0x177
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF19
	.2byte	0x152
	.byte	0xb
	.4byte	0x32
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF6
	.2byte	0x157
	.byte	0xa
	.4byte	0x77
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF20
	.2byte	0x165
	.byte	0xc
	.4byte	0x18c
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF21
	.2byte	0x170
	.byte	0xc
	.4byte	0x18c
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.4byte	0x105
	.uleb128 0x4
	.4byte	0x16d
	.uleb128 0x4
	.4byte	0x79
	.uleb128 0xc
	.4byte	0x18c
	.uleb128 0x3
	.4byte	0x77
	.uleb128 0x3
	.4byte	0xdc
	.byte	0
	.uleb128 0x4
	.4byte	0x17c
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0xc
	.2byte	0x178
	.4byte	0x1c5
	.uleb128 0x1
	.4byte	.LASF23
	.2byte	0x17b
	.byte	0x18
	.4byte	0x172
	.byte	0
	.uleb128 0x1
	.4byte	.LASF24
	.2byte	0x182
	.byte	0x18
	.4byte	0x172
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.2byte	0x18a
	.byte	0x18
	.4byte	0x172
	.byte	0x8
	.byte	0
	.uleb128 0x17
	.4byte	.LASF40
	.byte	0x5
	.byte	0x1
	.4byte	0x1fd
	.byte	0x2
	.2byte	0x1a8
	.byte	0x6
	.4byte	0x1fd
	.uleb128 0xe
	.4byte	.LASF26
	.sleb128 -2
	.uleb128 0xe
	.4byte	.LASF27
	.sleb128 -1
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.4byte	.LASF32
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0xce
	.byte	0x6
	.4byte	0xd5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22c
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0xce
	.byte	0x2b
	.4byte	0x22c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	0x191
	.uleb128 0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0xb6
	.byte	0x1b
	.4byte	0x177
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x298
	.uleb128 0x6
	.string	"fsm"
	.byte	0xb6
	.byte	0x3f
	.4byte	0x22c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0xb7
	.byte	0x1b
	.4byte	0x172
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0xb7
	.byte	0x36
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.string	"i"
	.byte	0xb9
	.byte	0xb
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0xf
	.string	"t"
	.byte	0xbd
	.byte	0x1a
	.4byte	0x177
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF42
	.byte	0x1
	.byte	0xac
	.byte	0xd
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2cb
	.uleb128 0x6
	.string	"fsm"
	.byte	0xac
	.byte	0x32
	.4byte	0x22c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0xad
	.byte	0x1b
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0xa3
	.byte	0x15
	.4byte	0x172
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f3
	.uleb128 0x6
	.string	"fsm"
	.byte	0xa3
	.byte	0x40
	.4byte	0x22c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x9b
	.byte	0x15
	.4byte	0x172
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31b
	.uleb128 0x6
	.string	"fsm"
	.byte	0x9b
	.byte	0x3f
	.4byte	0x22c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF36
	.byte	0x1
	.byte	0x4b
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x378
	.uleb128 0x6
	.string	"fsm"
	.byte	0x4b
	.byte	0x2e
	.4byte	0x22c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x4c
	.byte	0x15
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.4byte	.LASF13
	.byte	0x5a
	.byte	0x18
	.4byte	0x172
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x11
	.4byte	.LASF8
	.byte	0x5c
	.byte	0x1a
	.4byte	0x177
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF43
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.string	"fsm"
	.byte	0x40
	.byte	0x28
	.4byte	0x22c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF37
	.byte	0x41
	.byte	0x1b
	.4byte	0x172
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x41
	.byte	0x3d
	.4byte	0x172
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
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
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
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
	.sleb128 2
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
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
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
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
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
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
	.4byte	.LFB1
	.uleb128 .LFE1-.LFB1
	.byte	0x7
	.4byte	.LFB2
	.uleb128 .LFE2-.LFB2
	.byte	0x7
	.4byte	.LFB3
	.uleb128 .LFE3-.LFB3
	.byte	0x7
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
	.byte	0x7
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
	.byte	0x7
	.4byte	.LFB6
	.uleb128 .LFE6-.LFB6
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF33:
	.string	"stateM_stopped"
.LASF13:
	.string	"nextState"
.LASF39:
	.string	"size_t"
.LASF23:
	.string	"currentState"
.LASF15:
	.string	"state"
.LASF20:
	.string	"entryAction"
.LASF16:
	.string	"parentState"
.LASF31:
	.string	"stateM_finalStateReached"
.LASF8:
	.string	"transition"
.LASF42:
	.string	"goToErrorState"
.LASF6:
	.string	"data"
.LASF32:
	.string	"signed char"
.LASF25:
	.string	"errorState"
.LASF28:
	.string	"stateM_stateChanged"
.LASF26:
	.string	"stateM_errArg"
.LASF9:
	.string	"eventType"
.LASF30:
	.string	"stateM_noStateChange"
.LASF24:
	.string	"previousState"
.LASF34:
	.string	"stateM_previousState"
.LASF11:
	.string	"guard"
.LASF27:
	.string	"stateM_errorStateReached"
.LASF12:
	.string	"action"
.LASF43:
	.string	"stateM_init"
.LASF10:
	.string	"condition"
.LASF7:
	.string	"event"
.LASF37:
	.string	"initialState"
.LASF2:
	.string	"unsigned int"
.LASF35:
	.string	"stateM_currentState"
.LASF22:
	.string	"stateMachine"
.LASF41:
	.string	"getTransition"
.LASF21:
	.string	"exitAction"
.LASF3:
	.string	"long long int"
.LASF18:
	.string	"transitions"
.LASF5:
	.string	"type"
.LASF38:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF36:
	.string	"stateM_handleEvent"
.LASF4:
	.string	"long double"
.LASF19:
	.string	"numTransitions"
.LASF17:
	.string	"entryState"
.LASF40:
	.string	"stateM_handleEventRetVals"
.LASF14:
	.string	"_Bool"
.LASF29:
	.string	"stateM_stateLoopSelf"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_wifidrv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
