	.file	"wifi_mgmr_api.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_wifidrv" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/wifi_mgmr_api.c"
	.section	.rodata
	.align	2
.LC0:
	.string	"wifi mgmr band:%d freq: %d\r\n"
	.section	.text.wifi_mgmr_api_connect,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_connect
	.type	wifi_mgmr_api_connect, @function
wifi_mgmr_api_connect:
.LFB35:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/wifi_mgmr_api.c"
	.loc 1 41 1
	.cfi_startproc
	addi	sp,sp,-256
	.cfi_def_cfa_offset 256
	sw	ra,252(sp)
	sw	s0,248(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,256
	.cfi_def_cfa 8, 0
	sw	a0,-228(s0)
	sw	a1,-232(s0)
	sw	a2,-236(s0)
	sw	a3,-240(s0)
	mv	a3,a4
	mv	a4,a5
	mv	a5,a3
	sb	a5,-241(s0)
	mv	a5,a4
	sh	a5,-244(s0)
	.loc 1 46 5
	addi	a5,s0,-224
	li	a2,198
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 47 9
	addi	a5,s0,-224
	sw	a5,-20(s0)
	.loc 1 48 13
	lw	a5,-20(s0)
	li	a4,1
	sb	a4,0(a5)
	.loc 1 49 16
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	andi	a4,a4,0
	ori	a4,a4,68
	sb	a4,1(a5)
	lbu	a4,2(a5)
	andi	a4,a4,0
	ori	a4,a4,51
	sb	a4,2(a5)
	lbu	a4,3(a5)
	andi	a4,a4,0
	ori	a4,a4,34
	sb	a4,3(a5)
	lbu	a4,4(a5)
	andi	a4,a4,0
	ori	a4,a4,17
	sb	a4,4(a5)
	.loc 1 50 16
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	andi	a4,a4,0
	ori	a4,a4,-120
	sb	a4,5(a5)
	lbu	a4,6(a5)
	andi	a4,a4,0
	ori	a4,a4,119
	sb	a4,6(a5)
	lbu	a4,7(a5)
	andi	a4,a4,0
	ori	a4,a4,102
	sb	a4,7(a5)
	lbu	a4,8(a5)
	andi	a4,a4,0
	ori	a4,a4,85
	sb	a4,8(a5)
	.loc 1 51 14
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	andi	a4,a4,0
	ori	a4,a4,-58
	sb	a4,9(a5)
	lbu	a4,10(a5)
	andi	a4,a4,0
	sb	a4,10(a5)
	lbu	a4,11(a5)
	andi	a4,a4,0
	sb	a4,11(a5)
	lbu	a4,12(a5)
	andi	a4,a4,0
	sb	a4,12(a5)
	.loc 1 52 13
	lw	a5,-20(s0)
	addi	a5,a5,13
	sw	a5,-24(s0)
	.loc 1 53 25
	lw	a0,-228(s0)
	call	strlen
	mv	a4,a0
	.loc 1 53 23 discriminator 1
	lw	a5,-24(s0)
	andi	a3,a4,255
	lbu	a2,33(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,33(a5)
	srli	a3,a4,8
	andi	a3,a3,255
	lbu	a2,34(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,34(a5)
	srli	a3,a4,16
	andi	a3,a3,255
	lbu	a2,35(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,35(a5)
	srli	a4,a4,24
	lbu	a3,36(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,36(a5)
	.loc 1 54 19
	lw	a0,-24(s0)
	.loc 1 54 40
	lw	a5,-24(s0)
	lbu	a4,33(a5)
	lbu	a3,34(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,35(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,36(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 54 5
	mv	a2,a5
	lw	a1,-228(s0)
	call	memcpy
	.loc 1 55 27
	lw	a5,-24(s0)
	sb	zero,32(a5)
	.loc 1 56 42
	lw	a5,-232(s0)
	beq	a5,zero,.L2
	.loc 1 56 30 discriminator 1
	lw	a0,-232(s0)
	call	strlen
	mv	a4,a0
	j	.L3
.L2:
	.loc 1 56 42 discriminator 2
	li	a4,0
.L3:
	.loc 1 56 22 discriminator 5
	lw	a5,-24(s0)
	andi	a3,a4,255
	lbu	a2,167(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,167(a5)
	srli	a3,a4,8
	andi	a3,a3,255
	lbu	a2,168(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,168(a5)
	srli	a3,a4,16
	andi	a3,a3,255
	lbu	a2,169(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,169(a5)
	srli	a4,a4,24
	lbu	a3,170(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,170(a5)
	.loc 1 57 16
	lw	a5,-24(s0)
	lbu	a4,167(a5)
	lbu	a3,168(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,169(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,170(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a4,a5
	.loc 1 57 8
	li	a5,64
	bleu	a4,a5,.L4
	.loc 1 58 16
	li	a5,-1
	j	.L13
.L4:
	.loc 1 59 23
	lw	a5,-24(s0)
	lbu	a4,167(a5)
	lbu	a3,168(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,169(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,170(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 59 15
	beq	a5,zero,.L6
	.loc 1 60 23
	lw	a5,-24(s0)
	addi	a0,a5,37
	.loc 1 60 42
	lw	a5,-24(s0)
	lbu	a4,167(a5)
	lbu	a3,168(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,169(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,170(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 60 9
	mv	a2,a5
	lw	a1,-232(s0)
	call	memcpy
.L6:
	.loc 1 62 26
	lw	a5,-24(s0)
	sb	zero,101(a5)
	.loc 1 63 42
	lw	a5,-236(s0)
	beq	a5,zero,.L7
	.loc 1 63 30 discriminator 1
	lw	a0,-236(s0)
	call	strlen
	mv	a4,a0
	j	.L8
.L7:
	.loc 1 63 42 discriminator 2
	li	a4,0
.L8:
	.loc 1 63 22 discriminator 5
	lw	a5,-24(s0)
	andi	a3,a4,255
	lbu	a2,171(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,171(a5)
	srli	a3,a4,8
	andi	a3,a3,255
	lbu	a2,172(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,172(a5)
	srli	a3,a4,16
	andi	a3,a3,255
	lbu	a2,173(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,173(a5)
	srli	a4,a4,24
	lbu	a3,174(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,174(a5)
	.loc 1 64 21
	lw	a5,-24(s0)
	lbu	a4,171(a5)
	lbu	a3,172(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,173(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,174(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 64 8
	beq	a5,zero,.L9
	.loc 1 64 65 discriminator 1
	lw	a5,-24(s0)
	lbu	a4,171(a5)
	lbu	a3,172(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,173(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,174(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a4,a5
	.loc 1 64 31 discriminator 1
	li	a5,64
	beq	a4,a5,.L9
	.loc 1 65 16
	li	a5,-1
	j	.L13
.L9:
	.loc 1 66 47
	lw	a5,-24(s0)
	lbu	a4,171(a5)
	lbu	a3,172(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,173(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,174(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a4,a5
	.loc 1 66 15
	li	a5,64
	bne	a4,a5,.L10
	.loc 1 67 23
	lw	a5,-24(s0)
	addi	a0,a5,102
	.loc 1 67 42
	lw	a5,-24(s0)
	lbu	a4,171(a5)
	lbu	a3,172(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,173(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,174(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 67 9
	mv	a2,a5
	lw	a1,-236(s0)
	call	memcpy
.L10:
	.loc 1 69 26
	lw	a5,-24(s0)
	sb	zero,166(a5)
	.loc 1 70 8
	lw	a5,-240(s0)
	beq	a5,zero,.L11
	.loc 1 71 23
	lw	a5,-24(s0)
	addi	a5,a5,175
	.loc 1 71 9
	li	a2,6
	lw	a1,-240(s0)
	mv	a0,a5
	call	memcpy
.L11:
	.loc 1 73 8
	lhu	a5,-244(s0)
	beq	a5,zero,.L12
	.loc 1 75 23
	lw	a5,-24(s0)
	lbu	a4,-241(s0)
	sb	a4,181(a5)
	.loc 1 76 23
	lw	a5,-24(s0)
	lhu	a4,-244(s0)
	andi	a4,a4,255
	lbu	a3,182(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,182(a5)
	lhu	a4,-244(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,183(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,183(a5)
	.loc 1 77 57
	lw	a5,-24(s0)
	lbu	a5,181(a5)
	.loc 1 77 9
	mv	a3,a5
	.loc 1 77 72
	lw	a5,-24(s0)
	lbu	a4,182(a5)
	lbu	a5,183(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 77 9
	mv	a2,a5
	mv	a1,a3
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
.L12:
	.loc 1 79 23
	lw	a5,-24(s0)
	li	a4,1
	sb	a4,184(a5)
	.loc 1 81 5
	lw	a0,-20(s0)
	call	wifi_mgmr_event_notify
	.loc 1 83 12
	li	a5,0
.L13:
	.loc 1 84 1
	mv	a0,a5
	lw	ra,252(sp)
	.cfi_restore 1
	lw	s0,248(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 256
	addi	sp,sp,256
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE35:
	.size	wifi_mgmr_api_connect, .-wifi_mgmr_api_connect
	.section	.text.wifi_mgmr_api_cfg_req,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_cfg_req
	.type	wifi_mgmr_api_cfg_req, @function
wifi_mgmr_api_cfg_req:
.LFB36:
	.loc 1 87 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	a0,-100(s0)
	sw	a1,-104(s0)
	sw	a2,-108(s0)
	sw	a3,-112(s0)
	sw	a4,-116(s0)
	sw	a5,-120(s0)
	.loc 1 93 8
	lw	a4,-116(s0)
	li	a5,32
	bleu	a4,a5,.L15
	.loc 1 94 16
	li	a5,-1
	j	.L18
.L15:
	.loc 1 97 5
	addi	a5,s0,-92
	li	a2,65
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 98 9
	addi	a5,s0,-92
	sw	a5,-20(s0)
	.loc 1 99 13
	lw	a5,-20(s0)
	li	a4,22
	sb	a4,0(a5)
	.loc 1 100 16
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	andi	a4,a4,0
	ori	a4,a4,68
	sb	a4,1(a5)
	lbu	a4,2(a5)
	andi	a4,a4,0
	ori	a4,a4,51
	sb	a4,2(a5)
	lbu	a4,3(a5)
	andi	a4,a4,0
	ori	a4,a4,34
	sb	a4,3(a5)
	lbu	a4,4(a5)
	andi	a4,a4,0
	ori	a4,a4,17
	sb	a4,4(a5)
	.loc 1 101 16
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	andi	a4,a4,0
	ori	a4,a4,-120
	sb	a4,5(a5)
	lbu	a4,6(a5)
	andi	a4,a4,0
	ori	a4,a4,119
	sb	a4,6(a5)
	lbu	a4,7(a5)
	andi	a4,a4,0
	ori	a4,a4,102
	sb	a4,7(a5)
	lbu	a4,8(a5)
	andi	a4,a4,0
	ori	a4,a4,85
	sb	a4,8(a5)
	.loc 1 102 75
	lw	a5,-116(s0)
	addi	a4,a5,198
	.loc 1 102 14
	lw	a5,-20(s0)
	andi	a3,a4,255
	lbu	a2,9(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,9(a5)
	srli	a3,a4,8
	andi	a3,a3,255
	lbu	a2,10(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,10(a5)
	srli	a3,a4,16
	andi	a3,a3,255
	lbu	a2,11(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,11(a5)
	srli	a4,a4,24
	lbu	a3,12(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,12(a5)
	.loc 1 104 13
	lw	a5,-20(s0)
	addi	a5,a5,13
	sw	a5,-24(s0)
	.loc 1 105 18
	lw	a5,-24(s0)
	lw	a4,-100(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-100(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-100(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-100(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 1 106 19
	lw	a5,-24(s0)
	lw	a4,-104(s0)
	andi	a4,a4,255
	lbu	a3,4(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,4(a5)
	lw	a4,-104(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,5(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,5(a5)
	lw	a4,-104(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,6(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,6(a5)
	lw	a4,-104(s0)
	srli	a4,a4,24
	lbu	a3,7(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,7(a5)
	.loc 1 107 22
	lw	a5,-24(s0)
	lw	a4,-108(s0)
	andi	a4,a4,255
	lbu	a3,8(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,8(a5)
	lw	a4,-108(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,9(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,9(a5)
	lw	a4,-108(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,10(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,10(a5)
	lw	a4,-108(s0)
	srli	a4,a4,24
	lbu	a3,11(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,11(a5)
	.loc 1 108 19
	lw	a5,-24(s0)
	lw	a4,-112(s0)
	andi	a4,a4,255
	lbu	a3,12(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,12(a5)
	lw	a4,-112(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,13(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,13(a5)
	lw	a4,-112(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,14(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,14(a5)
	lw	a4,-112(s0)
	srli	a4,a4,24
	lbu	a3,15(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,15(a5)
	.loc 1 109 21
	lw	a5,-24(s0)
	lw	a4,-116(s0)
	andi	a4,a4,255
	lbu	a3,16(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,16(a5)
	lw	a4,-116(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,17(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,17(a5)
	lw	a4,-116(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,18(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,18(a5)
	lw	a4,-116(s0)
	srli	a4,a4,24
	lbu	a3,19(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,19(a5)
	.loc 1 110 8
	lw	a5,-116(s0)
	beq	a5,zero,.L17
	.loc 1 111 23
	lw	a5,-24(s0)
	addi	a5,a5,20
	.loc 1 111 9
	lw	a2,-116(s0)
	lw	a1,-120(s0)
	mv	a0,a5
	call	memcpy
.L17:
	.loc 1 114 5
	lw	a0,-20(s0)
	call	wifi_mgmr_event_notify
	.loc 1 116 12
	li	a5,0
.L18:
	.loc 1 117 1
	mv	a0,a5
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE36:
	.size	wifi_mgmr_api_cfg_req, .-wifi_mgmr_api_cfg_req
	.section	.text.wifi_mgmr_api_ip_got,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_ip_got
	.type	wifi_mgmr_api_ip_got, @function
wifi_mgmr_api_ip_got:
.LFB37:
	.loc 1 120 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	sw	a4,-84(s0)
	.loc 1 125 5
	addi	a5,s0,-60
	li	a2,33
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 126 9
	addi	a5,s0,-60
	sw	a5,-20(s0)
	.loc 1 127 13
	lw	a5,-20(s0)
	li	a4,4
	sb	a4,0(a5)
	.loc 1 128 16
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	andi	a4,a4,0
	ori	a4,a4,68
	sb	a4,1(a5)
	lbu	a4,2(a5)
	andi	a4,a4,0
	ori	a4,a4,51
	sb	a4,2(a5)
	lbu	a4,3(a5)
	andi	a4,a4,0
	ori	a4,a4,34
	sb	a4,3(a5)
	lbu	a4,4(a5)
	andi	a4,a4,0
	ori	a4,a4,17
	sb	a4,4(a5)
	.loc 1 129 16
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	andi	a4,a4,0
	ori	a4,a4,-120
	sb	a4,5(a5)
	lbu	a4,6(a5)
	andi	a4,a4,0
	ori	a4,a4,119
	sb	a4,6(a5)
	lbu	a4,7(a5)
	andi	a4,a4,0
	ori	a4,a4,102
	sb	a4,7(a5)
	lbu	a4,8(a5)
	andi	a4,a4,0
	ori	a4,a4,85
	sb	a4,8(a5)
	.loc 1 130 14
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	andi	a4,a4,0
	ori	a4,a4,33
	sb	a4,9(a5)
	lbu	a4,10(a5)
	andi	a4,a4,0
	sb	a4,10(a5)
	lbu	a4,11(a5)
	andi	a4,a4,0
	sb	a4,11(a5)
	lbu	a4,12(a5)
	andi	a4,a4,0
	sb	a4,12(a5)
	.loc 1 132 11
	lw	a5,-20(s0)
	addi	a5,a5,13
	sw	a5,-24(s0)
	.loc 1 133 15
	lw	a5,-24(s0)
	lw	a4,-68(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-68(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-68(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-68(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 1 134 17
	lw	a5,-24(s0)
	lw	a4,-72(s0)
	andi	a4,a4,255
	lbu	a3,4(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,4(a5)
	lw	a4,-72(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,5(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,5(a5)
	lw	a4,-72(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,6(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,6(a5)
	lw	a4,-72(s0)
	srli	a4,a4,24
	lbu	a3,7(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,7(a5)
	.loc 1 135 15
	lw	a5,-24(s0)
	lw	a4,-76(s0)
	andi	a4,a4,255
	lbu	a3,8(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,8(a5)
	lw	a4,-76(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,9(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,9(a5)
	lw	a4,-76(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,10(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,10(a5)
	lw	a4,-76(s0)
	srli	a4,a4,24
	lbu	a3,11(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,11(a5)
	.loc 1 136 17
	lw	a5,-24(s0)
	lw	a4,-80(s0)
	andi	a4,a4,255
	lbu	a3,12(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,12(a5)
	lw	a4,-80(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,13(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,13(a5)
	lw	a4,-80(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,14(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,14(a5)
	lw	a4,-80(s0)
	srli	a4,a4,24
	lbu	a3,15(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,15(a5)
	.loc 1 137 17
	lw	a5,-24(s0)
	lw	a4,-84(s0)
	andi	a4,a4,255
	lbu	a3,16(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,16(a5)
	lw	a4,-84(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,17(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,17(a5)
	lw	a4,-84(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,18(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,18(a5)
	lw	a4,-84(s0)
	srli	a4,a4,24
	lbu	a3,19(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,19(a5)
	.loc 1 138 5
	lw	a0,-20(s0)
	call	wifi_mgmr_event_notify
	.loc 1 140 12
	li	a5,0
	.loc 1 141 1
	mv	a0,a5
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE37:
	.size	wifi_mgmr_api_ip_got, .-wifi_mgmr_api_ip_got
	.section	.text.wifi_mgmr_api_ip_update,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_ip_update
	.type	wifi_mgmr_api_ip_update, @function
wifi_mgmr_api_ip_update:
.LFB38:
	.loc 1 144 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 148 5
	addi	a5,s0,-36
	li	a2,13
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 149 9
	addi	a5,s0,-36
	sw	a5,-20(s0)
	.loc 1 150 13
	lw	a5,-20(s0)
	li	a4,30
	sb	a4,0(a5)
	.loc 1 151 16
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	andi	a4,a4,0
	ori	a4,a4,68
	sb	a4,1(a5)
	lbu	a4,2(a5)
	andi	a4,a4,0
	ori	a4,a4,51
	sb	a4,2(a5)
	lbu	a4,3(a5)
	andi	a4,a4,0
	ori	a4,a4,34
	sb	a4,3(a5)
	lbu	a4,4(a5)
	andi	a4,a4,0
	ori	a4,a4,17
	sb	a4,4(a5)
	.loc 1 152 16
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	andi	a4,a4,0
	ori	a4,a4,-120
	sb	a4,5(a5)
	lbu	a4,6(a5)
	andi	a4,a4,0
	ori	a4,a4,119
	sb	a4,6(a5)
	lbu	a4,7(a5)
	andi	a4,a4,0
	ori	a4,a4,102
	sb	a4,7(a5)
	lbu	a4,8(a5)
	andi	a4,a4,0
	ori	a4,a4,85
	sb	a4,8(a5)
	.loc 1 153 14
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	andi	a4,a4,0
	ori	a4,a4,13
	sb	a4,9(a5)
	lbu	a4,10(a5)
	andi	a4,a4,0
	sb	a4,10(a5)
	lbu	a4,11(a5)
	andi	a4,a4,0
	sb	a4,11(a5)
	lbu	a4,12(a5)
	andi	a4,a4,0
	sb	a4,12(a5)
	.loc 1 155 5
	lw	a0,-20(s0)
	call	wifi_mgmr_event_notify
	.loc 1 157 12
	li	a5,0
	.loc 1 158 1
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
.LFE38:
	.size	wifi_mgmr_api_ip_update, .-wifi_mgmr_api_ip_update
	.section	.text.wifi_mgmr_api_reconnect,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_reconnect
	.type	wifi_mgmr_api_reconnect, @function
wifi_mgmr_api_reconnect:
.LFB39:
	.loc 1 161 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 165 5
	addi	a5,s0,-36
	li	a2,13
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 166 9
	addi	a5,s0,-36
	sw	a5,-20(s0)
	.loc 1 167 13
	lw	a5,-20(s0)
	li	a4,6
	sb	a4,0(a5)
	.loc 1 168 16
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	andi	a4,a4,0
	ori	a4,a4,68
	sb	a4,1(a5)
	lbu	a4,2(a5)
	andi	a4,a4,0
	ori	a4,a4,51
	sb	a4,2(a5)
	lbu	a4,3(a5)
	andi	a4,a4,0
	ori	a4,a4,34
	sb	a4,3(a5)
	lbu	a4,4(a5)
	andi	a4,a4,0
	ori	a4,a4,17
	sb	a4,4(a5)
	.loc 1 169 16
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	andi	a4,a4,0
	ori	a4,a4,-120
	sb	a4,5(a5)
	lbu	a4,6(a5)
	andi	a4,a4,0
	ori	a4,a4,119
	sb	a4,6(a5)
	lbu	a4,7(a5)
	andi	a4,a4,0
	ori	a4,a4,102
	sb	a4,7(a5)
	lbu	a4,8(a5)
	andi	a4,a4,0
	ori	a4,a4,85
	sb	a4,8(a5)
	.loc 1 170 14
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	andi	a4,a4,0
	ori	a4,a4,13
	sb	a4,9(a5)
	lbu	a4,10(a5)
	andi	a4,a4,0
	sb	a4,10(a5)
	lbu	a4,11(a5)
	andi	a4,a4,0
	sb	a4,11(a5)
	lbu	a4,12(a5)
	andi	a4,a4,0
	sb	a4,12(a5)
	.loc 1 172 5
	lw	a0,-20(s0)
	call	wifi_mgmr_event_notify
	.loc 1 174 12
	li	a5,0
	.loc 1 175 1
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
.LFE39:
	.size	wifi_mgmr_api_reconnect, .-wifi_mgmr_api_reconnect
	.section	.text.wifi_mgmr_api_disable_autoreconnect,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_disable_autoreconnect
	.type	wifi_mgmr_api_disable_autoreconnect, @function
wifi_mgmr_api_disable_autoreconnect:
.LFB40:
	.loc 1 178 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 182 5
	addi	a5,s0,-36
	li	a2,13
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 183 9
	addi	a5,s0,-36
	sw	a5,-20(s0)
	.loc 1 184 13
	lw	a5,-20(s0)
	li	a4,28
	sb	a4,0(a5)
	.loc 1 185 16
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	andi	a4,a4,0
	ori	a4,a4,68
	sb	a4,1(a5)
	lbu	a4,2(a5)
	andi	a4,a4,0
	ori	a4,a4,51
	sb	a4,2(a5)
	lbu	a4,3(a5)
	andi	a4,a4,0
	ori	a4,a4,34
	sb	a4,3(a5)
	lbu	a4,4(a5)
	andi	a4,a4,0
	ori	a4,a4,17
	sb	a4,4(a5)
	.loc 1 186 16
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	andi	a4,a4,0
	ori	a4,a4,-120
	sb	a4,5(a5)
	lbu	a4,6(a5)
	andi	a4,a4,0
	ori	a4,a4,119
	sb	a4,6(a5)
	lbu	a4,7(a5)
	andi	a4,a4,0
	ori	a4,a4,102
	sb	a4,7(a5)
	lbu	a4,8(a5)
	andi	a4,a4,0
	ori	a4,a4,85
	sb	a4,8(a5)
	.loc 1 187 14
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	andi	a4,a4,0
	ori	a4,a4,13
	sb	a4,9(a5)
	lbu	a4,10(a5)
	andi	a4,a4,0
	sb	a4,10(a5)
	lbu	a4,11(a5)
	andi	a4,a4,0
	sb	a4,11(a5)
	lbu	a4,12(a5)
	andi	a4,a4,0
	sb	a4,12(a5)
	.loc 1 189 5
	lw	a0,-20(s0)
	call	wifi_mgmr_event_notify
	.loc 1 191 12
	li	a5,0
	.loc 1 192 1
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
.LFE40:
	.size	wifi_mgmr_api_disable_autoreconnect, .-wifi_mgmr_api_disable_autoreconnect
	.section	.text.wifi_mgmr_api_enable_autoreconnect,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_enable_autoreconnect
	.type	wifi_mgmr_api_enable_autoreconnect, @function
wifi_mgmr_api_enable_autoreconnect:
.LFB41:
	.loc 1 195 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 199 5
	addi	a5,s0,-36
	li	a2,13
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 200 9
	addi	a5,s0,-36
	sw	a5,-20(s0)
	.loc 1 201 13
	lw	a5,-20(s0)
	li	a4,29
	sb	a4,0(a5)
	.loc 1 202 16
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	andi	a4,a4,0
	ori	a4,a4,68
	sb	a4,1(a5)
	lbu	a4,2(a5)
	andi	a4,a4,0
	ori	a4,a4,51
	sb	a4,2(a5)
	lbu	a4,3(a5)
	andi	a4,a4,0
	ori	a4,a4,34
	sb	a4,3(a5)
	lbu	a4,4(a5)
	andi	a4,a4,0
	ori	a4,a4,17
	sb	a4,4(a5)
	.loc 1 203 16
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	andi	a4,a4,0
	ori	a4,a4,-120
	sb	a4,5(a5)
	lbu	a4,6(a5)
	andi	a4,a4,0
	ori	a4,a4,119
	sb	a4,6(a5)
	lbu	a4,7(a5)
	andi	a4,a4,0
	ori	a4,a4,102
	sb	a4,7(a5)
	lbu	a4,8(a5)
	andi	a4,a4,0
	ori	a4,a4,85
	sb	a4,8(a5)
	.loc 1 204 14
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	andi	a4,a4,0
	ori	a4,a4,13
	sb	a4,9(a5)
	lbu	a4,10(a5)
	andi	a4,a4,0
	sb	a4,10(a5)
	lbu	a4,11(a5)
	andi	a4,a4,0
	sb	a4,11(a5)
	lbu	a4,12(a5)
	andi	a4,a4,0
	sb	a4,12(a5)
	.loc 1 206 5
	lw	a0,-20(s0)
	call	wifi_mgmr_event_notify
	.loc 1 208 12
	li	a5,0
	.loc 1 209 1
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
.LFE41:
	.size	wifi_mgmr_api_enable_autoreconnect, .-wifi_mgmr_api_enable_autoreconnect
	.section	.text.wifi_mgmr_api_disconnect,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_disconnect
	.type	wifi_mgmr_api_disconnect, @function
wifi_mgmr_api_disconnect:
.LFB42:
	.loc 1 212 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 216 5
	addi	a5,s0,-36
	li	a2,13
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 217 9
	addi	a5,s0,-36
	sw	a5,-20(s0)
	.loc 1 218 13
	lw	a5,-20(s0)
	li	a4,5
	sb	a4,0(a5)
	.loc 1 219 16
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	andi	a4,a4,0
	ori	a4,a4,68
	sb	a4,1(a5)
	lbu	a4,2(a5)
	andi	a4,a4,0
	ori	a4,a4,51
	sb	a4,2(a5)
	lbu	a4,3(a5)
	andi	a4,a4,0
	ori	a4,a4,34
	sb	a4,3(a5)
	lbu	a4,4(a5)
	andi	a4,a4,0
	ori	a4,a4,17
	sb	a4,4(a5)
	.loc 1 220 16
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	andi	a4,a4,0
	ori	a4,a4,-120
	sb	a4,5(a5)
	lbu	a4,6(a5)
	andi	a4,a4,0
	ori	a4,a4,119
	sb	a4,6(a5)
	lbu	a4,7(a5)
	andi	a4,a4,0
	ori	a4,a4,102
	sb	a4,7(a5)
	lbu	a4,8(a5)
	andi	a4,a4,0
	ori	a4,a4,85
	sb	a4,8(a5)
	.loc 1 221 14
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	andi	a4,a4,0
	ori	a4,a4,13
	sb	a4,9(a5)
	lbu	a4,10(a5)
	andi	a4,a4,0
	sb	a4,10(a5)
	lbu	a4,11(a5)
	andi	a4,a4,0
	sb	a4,11(a5)
	lbu	a4,12(a5)
	andi	a4,a4,0
	sb	a4,12(a5)
	.loc 1 223 5
	lw	a0,-20(s0)
	call	wifi_mgmr_event_notify
	.loc 1 225 12
	li	a5,0
	.loc 1 226 1
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
.LFE42:
	.size	wifi_mgmr_api_disconnect, .-wifi_mgmr_api_disconnect
	.section	.text.wifi_mgmr_api_rate_config,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_rate_config
	.type	wifi_mgmr_api_rate_config, @function
wifi_mgmr_api_rate_config:
.LFB43:
	.loc 1 229 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sh	a5,-50(s0)
	.loc 1 233 5
	addi	a5,s0,-36
	li	a2,13
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 234 9
	addi	a5,s0,-36
	sw	a5,-20(s0)
	.loc 1 235 13
	lw	a5,-20(s0)
	li	a4,11
	sb	a4,0(a5)
	.loc 1 236 25
	lhu	a5,-50(s0)
	.loc 1 236 18
	mv	a4,a5
	.loc 1 236 16
	lw	a5,-20(s0)
	andi	a3,a4,255
	lbu	a2,1(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,1(a5)
	srli	a3,a4,8
	andi	a3,a3,255
	lbu	a2,2(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,2(a5)
	srli	a3,a4,16
	andi	a3,a3,255
	lbu	a2,3(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,3(a5)
	srli	a4,a4,24
	lbu	a3,4(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,4(a5)
	.loc 1 237 16
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	andi	a4,a4,0
	ori	a4,a4,-120
	sb	a4,5(a5)
	lbu	a4,6(a5)
	andi	a4,a4,0
	ori	a4,a4,119
	sb	a4,6(a5)
	lbu	a4,7(a5)
	andi	a4,a4,0
	ori	a4,a4,102
	sb	a4,7(a5)
	lbu	a4,8(a5)
	andi	a4,a4,0
	ori	a4,a4,85
	sb	a4,8(a5)
	.loc 1 238 14
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	andi	a4,a4,0
	ori	a4,a4,13
	sb	a4,9(a5)
	lbu	a4,10(a5)
	andi	a4,a4,0
	sb	a4,10(a5)
	lbu	a4,11(a5)
	andi	a4,a4,0
	sb	a4,11(a5)
	lbu	a4,12(a5)
	andi	a4,a4,0
	sb	a4,12(a5)
	.loc 1 240 5
	lw	a0,-20(s0)
	call	wifi_mgmr_event_notify
	.loc 1 242 12
	li	a5,0
	.loc 1 243 1
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
.LFE43:
	.size	wifi_mgmr_api_rate_config, .-wifi_mgmr_api_rate_config
	.section	.text.wifi_mgmr_api_conf_max_sta,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_conf_max_sta
	.type	wifi_mgmr_api_conf_max_sta, @function
wifi_mgmr_api_conf_max_sta:
.LFB44:
	.loc 1 246 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-49(s0)
	.loc 1 250 5
	addi	a5,s0,-36
	li	a2,13
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 251 9
	addi	a5,s0,-36
	sw	a5,-20(s0)
	.loc 1 252 13
	lw	a5,-20(s0)
	li	a4,10
	sb	a4,0(a5)
	.loc 1 253 25
	lbu	a5,-49(s0)
	.loc 1 253 18
	mv	a4,a5
	.loc 1 253 16
	lw	a5,-20(s0)
	andi	a3,a4,255
	lbu	a2,1(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,1(a5)
	srli	a3,a4,8
	andi	a3,a3,255
	lbu	a2,2(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,2(a5)
	srli	a3,a4,16
	andi	a3,a3,255
	lbu	a2,3(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,3(a5)
	srli	a4,a4,24
	lbu	a3,4(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,4(a5)
	.loc 1 254 16
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	andi	a4,a4,0
	ori	a4,a4,-120
	sb	a4,5(a5)
	lbu	a4,6(a5)
	andi	a4,a4,0
	ori	a4,a4,119
	sb	a4,6(a5)
	lbu	a4,7(a5)
	andi	a4,a4,0
	ori	a4,a4,102
	sb	a4,7(a5)
	lbu	a4,8(a5)
	andi	a4,a4,0
	ori	a4,a4,85
	sb	a4,8(a5)
	.loc 1 255 14
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	andi	a4,a4,0
	ori	a4,a4,13
	sb	a4,9(a5)
	lbu	a4,10(a5)
	andi	a4,a4,0
	sb	a4,10(a5)
	lbu	a4,11(a5)
	andi	a4,a4,0
	sb	a4,11(a5)
	lbu	a4,12(a5)
	andi	a4,a4,0
	sb	a4,12(a5)
	.loc 1 257 5
	lw	a0,-20(s0)
	call	wifi_mgmr_event_notify
	.loc 1 259 12
	li	a5,0
	.loc 1 260 1
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
.LFE44:
	.size	wifi_mgmr_api_conf_max_sta, .-wifi_mgmr_api_conf_max_sta
	.section	.text.wifi_mgmr_api_ifaceup,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_ifaceup
	.type	wifi_mgmr_api_ifaceup, @function
wifi_mgmr_api_ifaceup:
.LFB45:
	.loc 1 263 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 267 5
	addi	a5,s0,-36
	li	a2,13
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 268 9
	addi	a5,s0,-36
	sw	a5,-20(s0)
	.loc 1 269 13
	lw	a5,-20(s0)
	li	a4,7
	sb	a4,0(a5)
	.loc 1 270 16
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	andi	a4,a4,0
	ori	a4,a4,68
	sb	a4,1(a5)
	lbu	a4,2(a5)
	andi	a4,a4,0
	ori	a4,a4,51
	sb	a4,2(a5)
	lbu	a4,3(a5)
	andi	a4,a4,0
	ori	a4,a4,34
	sb	a4,3(a5)
	lbu	a4,4(a5)
	andi	a4,a4,0
	ori	a4,a4,17
	sb	a4,4(a5)
	.loc 1 271 16
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	andi	a4,a4,0
	ori	a4,a4,-120
	sb	a4,5(a5)
	lbu	a4,6(a5)
	andi	a4,a4,0
	ori	a4,a4,119
	sb	a4,6(a5)
	lbu	a4,7(a5)
	andi	a4,a4,0
	ori	a4,a4,102
	sb	a4,7(a5)
	lbu	a4,8(a5)
	andi	a4,a4,0
	ori	a4,a4,85
	sb	a4,8(a5)
	.loc 1 272 14
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	andi	a4,a4,0
	ori	a4,a4,13
	sb	a4,9(a5)
	lbu	a4,10(a5)
	andi	a4,a4,0
	sb	a4,10(a5)
	lbu	a4,11(a5)
	andi	a4,a4,0
	sb	a4,11(a5)
	lbu	a4,12(a5)
	andi	a4,a4,0
	sb	a4,12(a5)
	.loc 1 274 5
	lw	a0,-20(s0)
	call	wifi_mgmr_event_notify
	.loc 1 276 12
	li	a5,0
	.loc 1 277 1
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
.LFE45:
	.size	wifi_mgmr_api_ifaceup, .-wifi_mgmr_api_ifaceup
	.section	.text.wifi_mgmr_api_sniffer_enable,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_sniffer_enable
	.type	wifi_mgmr_api_sniffer_enable, @function
wifi_mgmr_api_sniffer_enable:
.LFB46:
	.loc 1 280 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 284 5
	addi	a5,s0,-36
	li	a2,13
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 285 9
	addi	a5,s0,-36
	sw	a5,-20(s0)
	.loc 1 286 13
	lw	a5,-20(s0)
	li	a4,2
	sb	a4,0(a5)
	.loc 1 287 16
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	andi	a4,a4,0
	ori	a4,a4,68
	sb	a4,1(a5)
	lbu	a4,2(a5)
	andi	a4,a4,0
	ori	a4,a4,51
	sb	a4,2(a5)
	lbu	a4,3(a5)
	andi	a4,a4,0
	ori	a4,a4,34
	sb	a4,3(a5)
	lbu	a4,4(a5)
	andi	a4,a4,0
	ori	a4,a4,17
	sb	a4,4(a5)
	.loc 1 288 16
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	andi	a4,a4,0
	ori	a4,a4,-120
	sb	a4,5(a5)
	lbu	a4,6(a5)
	andi	a4,a4,0
	ori	a4,a4,119
	sb	a4,6(a5)
	lbu	a4,7(a5)
	andi	a4,a4,0
	ori	a4,a4,102
	sb	a4,7(a5)
	lbu	a4,8(a5)
	andi	a4,a4,0
	ori	a4,a4,85
	sb	a4,8(a5)
	.loc 1 289 14
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	andi	a4,a4,0
	ori	a4,a4,13
	sb	a4,9(a5)
	lbu	a4,10(a5)
	andi	a4,a4,0
	sb	a4,10(a5)
	lbu	a4,11(a5)
	andi	a4,a4,0
	sb	a4,11(a5)
	lbu	a4,12(a5)
	andi	a4,a4,0
	sb	a4,12(a5)
	.loc 1 291 5
	lw	a0,-20(s0)
	call	wifi_mgmr_event_notify
	.loc 1 293 12
	li	a5,0
	.loc 1 294 1
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
.LFE46:
	.size	wifi_mgmr_api_sniffer_enable, .-wifi_mgmr_api_sniffer_enable
	.section	.text.wifi_mgmr_api_scan_item_beacon,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_scan_item_beacon
	.type	wifi_mgmr_api_scan_item_beacon, @function
wifi_mgmr_api_scan_item_beacon:
.LFB47:
	.loc 1 297 1
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	ra,140(sp)
	sw	s0,136(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	sw	a3,-120(s0)
	sw	a4,-124(s0)
	sw	a5,-128(s0)
	mv	a3,a6
	mv	a4,a7
	mv	a5,a0
	sb	a5,-113(s0)
	mv	a5,a1
	sb	a5,-114(s0)
	mv	a5,a2
	sb	a5,-115(s0)
	mv	a5,a3
	sb	a5,-116(s0)
	mv	a5,a4
	sb	a5,-129(s0)
	.loc 1 302 5
	addi	a5,s0,-100
	li	a2,73
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 303 9
	addi	a5,s0,-100
	sw	a5,-20(s0)
	.loc 1 304 13
	lw	a5,-20(s0)
	li	a4,24
	sb	a4,0(a5)
	.loc 1 305 16
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	andi	a4,a4,0
	ori	a4,a4,68
	sb	a4,1(a5)
	lbu	a4,2(a5)
	andi	a4,a4,0
	ori	a4,a4,51
	sb	a4,2(a5)
	lbu	a4,3(a5)
	andi	a4,a4,0
	ori	a4,a4,34
	sb	a4,3(a5)
	lbu	a4,4(a5)
	andi	a4,a4,0
	ori	a4,a4,17
	sb	a4,4(a5)
	.loc 1 306 16
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	andi	a4,a4,0
	ori	a4,a4,-120
	sb	a4,5(a5)
	lbu	a4,6(a5)
	andi	a4,a4,0
	ori	a4,a4,119
	sb	a4,6(a5)
	lbu	a4,7(a5)
	andi	a4,a4,0
	ori	a4,a4,102
	sb	a4,7(a5)
	lbu	a4,8(a5)
	andi	a4,a4,0
	ori	a4,a4,85
	sb	a4,8(a5)
	.loc 1 307 14
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	andi	a4,a4,0
	ori	a4,a4,73
	sb	a4,9(a5)
	lbu	a4,10(a5)
	andi	a4,a4,0
	sb	a4,10(a5)
	lbu	a4,11(a5)
	andi	a4,a4,0
	sb	a4,11(a5)
	lbu	a4,12(a5)
	andi	a4,a4,0
	sb	a4,12(a5)
	.loc 1 308 10
	lw	a5,-20(s0)
	addi	a5,a5,13
	sw	a5,-24(s0)
	.loc 1 309 16
	lw	a5,-24(s0)
	.loc 1 309 5
	lw	a4,-128(s0)
	mv	a2,a4
	lw	a1,-124(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 310 24
	lw	a5,-24(s0)
	sb	zero,32(a5)
	.loc 1 311 20
	lw	a4,-128(s0)
	lw	a5,-24(s0)
	sw	a4,36(a5)
	.loc 1 312 16
	lw	a5,-24(s0)
	addi	a5,a5,40
	.loc 1 312 5
	li	a2,6
	lw	a1,-120(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 313 19
	lw	a5,-24(s0)
	lbu	a4,-113(s0)
	sb	a4,46(a5)
	.loc 1 314 16
	lw	a5,-24(s0)
	lbu	a4,-114(s0)
	sb	a4,47(a5)
	.loc 1 315 16
	lw	a5,-24(s0)
	lbu	a4,-115(s0)
	sb	a4,50(a5)
	.loc 1 316 18
	lw	a5,-24(s0)
	lbu	a4,0(s0)
	sb	a4,51(a5)
	.loc 1 317 19
	lw	a5,-24(s0)
	lbu	a4,-116(s0)
	sb	a4,48(a5)
	.loc 1 318 19
	lw	a5,-24(s0)
	lbu	a4,-129(s0)
	sb	a4,49(a5)
	.loc 1 320 5
	lw	a0,-20(s0)
	call	wifi_mgmr_event_notify
	.loc 1 322 12
	li	a5,0
	.loc 1 323 1
	mv	a0,a5
	lw	ra,140(sp)
	.cfi_restore 1
	lw	s0,136(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE47:
	.size	wifi_mgmr_api_scan_item_beacon, .-wifi_mgmr_api_scan_item_beacon
	.section	.text.wifi_mgmr_api_fw_disconnect,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_fw_disconnect
	.type	wifi_mgmr_api_fw_disconnect, @function
wifi_mgmr_api_fw_disconnect:
.LFB48:
	.loc 1 326 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 330 5
	addi	a5,s0,-36
	li	a2,13
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 331 9
	addi	a5,s0,-36
	sw	a5,-20(s0)
	.loc 1 332 13
	lw	a5,-20(s0)
	li	a4,15
	sb	a4,0(a5)
	.loc 1 333 16
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	andi	a4,a4,0
	ori	a4,a4,68
	sb	a4,1(a5)
	lbu	a4,2(a5)
	andi	a4,a4,0
	ori	a4,a4,51
	sb	a4,2(a5)
	lbu	a4,3(a5)
	andi	a4,a4,0
	ori	a4,a4,34
	sb	a4,3(a5)
	lbu	a4,4(a5)
	andi	a4,a4,0
	ori	a4,a4,17
	sb	a4,4(a5)
	.loc 1 334 16
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	andi	a4,a4,0
	ori	a4,a4,-120
	sb	a4,5(a5)
	lbu	a4,6(a5)
	andi	a4,a4,0
	ori	a4,a4,119
	sb	a4,6(a5)
	lbu	a4,7(a5)
	andi	a4,a4,0
	ori	a4,a4,102
	sb	a4,7(a5)
	lbu	a4,8(a5)
	andi	a4,a4,0
	ori	a4,a4,85
	sb	a4,8(a5)
	.loc 1 335 14
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	andi	a4,a4,0
	ori	a4,a4,13
	sb	a4,9(a5)
	lbu	a4,10(a5)
	andi	a4,a4,0
	sb	a4,10(a5)
	lbu	a4,11(a5)
	andi	a4,a4,0
	sb	a4,11(a5)
	lbu	a4,12(a5)
	andi	a4,a4,0
	sb	a4,12(a5)
	.loc 1 337 5
	lw	a0,-20(s0)
	call	wifi_mgmr_event_notify
	.loc 1 339 12
	li	a5,0
	.loc 1 340 1
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
.LFE48:
	.size	wifi_mgmr_api_fw_disconnect, .-wifi_mgmr_api_fw_disconnect
	.section	.text.wifi_mgmr_api_fw_tsen_reload,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_fw_tsen_reload
	.type	wifi_mgmr_api_fw_tsen_reload, @function
wifi_mgmr_api_fw_tsen_reload:
.LFB49:
	.loc 1 343 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 347 5
	addi	a5,s0,-36
	li	a2,13
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 348 9
	addi	a5,s0,-36
	sw	a5,-20(s0)
	.loc 1 349 13
	lw	a5,-20(s0)
	li	a4,13
	sb	a4,0(a5)
	.loc 1 350 16
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	andi	a4,a4,0
	ori	a4,a4,68
	sb	a4,1(a5)
	lbu	a4,2(a5)
	andi	a4,a4,0
	ori	a4,a4,51
	sb	a4,2(a5)
	lbu	a4,3(a5)
	andi	a4,a4,0
	ori	a4,a4,34
	sb	a4,3(a5)
	lbu	a4,4(a5)
	andi	a4,a4,0
	ori	a4,a4,17
	sb	a4,4(a5)
	.loc 1 351 16
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	andi	a4,a4,0
	ori	a4,a4,-120
	sb	a4,5(a5)
	lbu	a4,6(a5)
	andi	a4,a4,0
	ori	a4,a4,119
	sb	a4,6(a5)
	lbu	a4,7(a5)
	andi	a4,a4,0
	ori	a4,a4,102
	sb	a4,7(a5)
	lbu	a4,8(a5)
	andi	a4,a4,0
	ori	a4,a4,85
	sb	a4,8(a5)
	.loc 1 352 14
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	andi	a4,a4,0
	ori	a4,a4,13
	sb	a4,9(a5)
	lbu	a4,10(a5)
	andi	a4,a4,0
	sb	a4,10(a5)
	lbu	a4,11(a5)
	andi	a4,a4,0
	sb	a4,11(a5)
	lbu	a4,12(a5)
	andi	a4,a4,0
	sb	a4,12(a5)
	.loc 1 354 5
	lw	a0,-20(s0)
	call	wifi_mgmr_event_notify
	.loc 1 356 12
	li	a5,0
	.loc 1 357 1
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
.LFE49:
	.size	wifi_mgmr_api_fw_tsen_reload, .-wifi_mgmr_api_fw_tsen_reload
	.section	.text.wifi_mgmr_api_fw_scan,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_fw_scan
	.type	wifi_mgmr_api_fw_scan, @function
wifi_mgmr_api_fw_scan:
.LFB50:
	.loc 1 360 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 364 5
	addi	a5,s0,-36
	li	a2,13
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 365 9
	addi	a5,s0,-36
	sw	a5,-20(s0)
	.loc 1 366 13
	lw	a5,-20(s0)
	li	a4,18
	sb	a4,0(a5)
	.loc 1 367 16
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	andi	a4,a4,0
	ori	a4,a4,68
	sb	a4,1(a5)
	lbu	a4,2(a5)
	andi	a4,a4,0
	ori	a4,a4,51
	sb	a4,2(a5)
	lbu	a4,3(a5)
	andi	a4,a4,0
	ori	a4,a4,34
	sb	a4,3(a5)
	lbu	a4,4(a5)
	andi	a4,a4,0
	ori	a4,a4,17
	sb	a4,4(a5)
	.loc 1 368 16
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	andi	a4,a4,0
	ori	a4,a4,-120
	sb	a4,5(a5)
	lbu	a4,6(a5)
	andi	a4,a4,0
	ori	a4,a4,119
	sb	a4,6(a5)
	lbu	a4,7(a5)
	andi	a4,a4,0
	ori	a4,a4,102
	sb	a4,7(a5)
	lbu	a4,8(a5)
	andi	a4,a4,0
	ori	a4,a4,85
	sb	a4,8(a5)
	.loc 1 369 14
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	andi	a4,a4,0
	ori	a4,a4,13
	sb	a4,9(a5)
	lbu	a4,10(a5)
	andi	a4,a4,0
	sb	a4,10(a5)
	lbu	a4,11(a5)
	andi	a4,a4,0
	sb	a4,11(a5)
	lbu	a4,12(a5)
	andi	a4,a4,0
	sb	a4,12(a5)
	.loc 1 371 5
	lw	a0,-20(s0)
	call	wifi_mgmr_event_notify
	.loc 1 373 12
	li	a5,0
	.loc 1 374 1
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
.LFE50:
	.size	wifi_mgmr_api_fw_scan, .-wifi_mgmr_api_fw_scan
	.section	.text.wifi_mgmr_api_fw_powersaving,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_fw_powersaving
	.type	wifi_mgmr_api_fw_powersaving, @function
wifi_mgmr_api_fw_powersaving:
.LFB51:
	.loc 1 377 1
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
	.loc 1 381 5
	addi	a5,s0,-36
	li	a2,13
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 382 9
	addi	a5,s0,-36
	sw	a5,-20(s0)
	.loc 1 383 13
	lw	a5,-20(s0)
	li	a4,16
	sb	a4,0(a5)
	.loc 1 384 18
	lw	a4,-52(s0)
	.loc 1 384 16
	lw	a5,-20(s0)
	andi	a3,a4,255
	lbu	a2,1(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,1(a5)
	srli	a3,a4,8
	andi	a3,a3,255
	lbu	a2,2(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,2(a5)
	srli	a3,a4,16
	andi	a3,a3,255
	lbu	a2,3(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,3(a5)
	srli	a4,a4,24
	lbu	a3,4(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,4(a5)
	.loc 1 385 16
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	andi	a4,a4,0
	ori	a4,a4,-120
	sb	a4,5(a5)
	lbu	a4,6(a5)
	andi	a4,a4,0
	ori	a4,a4,119
	sb	a4,6(a5)
	lbu	a4,7(a5)
	andi	a4,a4,0
	ori	a4,a4,102
	sb	a4,7(a5)
	lbu	a4,8(a5)
	andi	a4,a4,0
	ori	a4,a4,85
	sb	a4,8(a5)
	.loc 1 386 14
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	andi	a4,a4,0
	ori	a4,a4,13
	sb	a4,9(a5)
	lbu	a4,10(a5)
	andi	a4,a4,0
	sb	a4,10(a5)
	lbu	a4,11(a5)
	andi	a4,a4,0
	sb	a4,11(a5)
	lbu	a4,12(a5)
	andi	a4,a4,0
	sb	a4,12(a5)
	.loc 1 388 5
	lw	a0,-20(s0)
	call	wifi_mgmr_event_notify
	.loc 1 390 12
	li	a5,0
	.loc 1 391 1
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
.LFE51:
	.size	wifi_mgmr_api_fw_powersaving, .-wifi_mgmr_api_fw_powersaving
	.section	.text.wifi_mgmr_api_ap_start,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_ap_start
	.type	wifi_mgmr_api_ap_start, @function
wifi_mgmr_api_ap_start:
.LFB52:
	.loc 1 394 1
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sw	ra,172(sp)
	sw	s0,168(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,176
	.cfi_def_cfa 8, 0
	sw	a0,-164(s0)
	sw	a1,-168(s0)
	sw	a2,-172(s0)
	mv	a5,a3
	sb	a5,-173(s0)
	.loc 1 399 8
	lw	a5,-164(s0)
	bne	a5,zero,.L50
	.loc 1 401 16
	li	a5,-1
	j	.L56
.L50:
	.loc 1 403 5
	addi	a5,s0,-148
	li	a2,124
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 404 9
	addi	a5,s0,-148
	sw	a5,-20(s0)
	.loc 1 405 8
	lw	a5,-20(s0)
	addi	a5,a5,13
	sw	a5,-24(s0)
	.loc 1 406 25
	lw	a0,-164(s0)
	call	strlen
	mv	a4,a0
	.loc 1 406 23 discriminator 1
	lw	a5,-24(s0)
	andi	a3,a4,255
	lbu	a2,38(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,38(a5)
	srli	a3,a4,8
	andi	a3,a3,255
	lbu	a2,39(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,39(a5)
	srli	a3,a4,16
	andi	a3,a3,255
	lbu	a2,40(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,40(a5)
	srli	a4,a4,24
	lbu	a3,41(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,41(a5)
	.loc 1 406 12 discriminator 1
	lw	a5,-24(s0)
	lbu	a4,38(a5)
	lbu	a3,39(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,40(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,41(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a4,a5
	.loc 1 406 8 discriminator 1
	li	a5,32
	bleu	a4,a5,.L52
	.loc 1 407 16
	li	a5,-1
	j	.L56
.L52:
	.loc 1 409 8
	lw	a5,-168(s0)
	beq	a5,zero,.L53
	.loc 1 409 34 discriminator 1
	lw	a0,-168(s0)
	call	strlen
	mv	a4,a0
	.loc 1 409 32 discriminator 2
	lw	a5,-24(s0)
	andi	a3,a4,255
	lbu	a2,107(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,107(a5)
	srli	a3,a4,8
	andi	a3,a3,255
	lbu	a2,108(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,108(a5)
	srli	a3,a4,16
	andi	a3,a3,255
	lbu	a2,109(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,109(a5)
	srli	a4,a4,24
	lbu	a3,110(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,110(a5)
	.loc 1 409 22 discriminator 2
	lw	a5,-24(s0)
	lbu	a4,107(a5)
	lbu	a3,108(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,109(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,110(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a4,a5
	.loc 1 409 16 discriminator 2
	li	a5,32
	bleu	a4,a5,.L53
	.loc 1 410 16
	li	a5,-1
	j	.L56
.L53:
	.loc 1 413 13
	lw	a5,-20(s0)
	li	a4,8
	sb	a4,0(a5)
	.loc 1 414 16
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	andi	a4,a4,0
	ori	a4,a4,68
	sb	a4,1(a5)
	lbu	a4,2(a5)
	andi	a4,a4,0
	ori	a4,a4,51
	sb	a4,2(a5)
	lbu	a4,3(a5)
	andi	a4,a4,0
	ori	a4,a4,34
	sb	a4,3(a5)
	lbu	a4,4(a5)
	andi	a4,a4,0
	ori	a4,a4,17
	sb	a4,4(a5)
	.loc 1 415 16
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	andi	a4,a4,0
	ori	a4,a4,-120
	sb	a4,5(a5)
	lbu	a4,6(a5)
	andi	a4,a4,0
	ori	a4,a4,119
	sb	a4,6(a5)
	lbu	a4,7(a5)
	andi	a4,a4,0
	ori	a4,a4,102
	sb	a4,7(a5)
	lbu	a4,8(a5)
	andi	a4,a4,0
	ori	a4,a4,85
	sb	a4,8(a5)
	.loc 1 416 14
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	andi	a4,a4,0
	ori	a4,a4,124
	sb	a4,9(a5)
	lbu	a4,10(a5)
	andi	a4,a4,0
	sb	a4,10(a5)
	lbu	a4,11(a5)
	andi	a4,a4,0
	sb	a4,11(a5)
	lbu	a4,12(a5)
	andi	a4,a4,0
	sb	a4,12(a5)
	.loc 1 417 14
	lw	a5,-24(s0)
	addi	a0,a5,4
	.loc 1 417 30
	lw	a5,-24(s0)
	lbu	a4,38(a5)
	lbu	a3,39(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,40(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,41(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 417 5
	mv	a2,a5
	lw	a1,-164(s0)
	call	memcpy
	.loc 1 418 8
	lw	a5,-168(s0)
	beq	a5,zero,.L54
	.loc 1 419 18
	lw	a5,-24(s0)
	addi	a0,a5,42
	.loc 1 419 35
	lw	a5,-24(s0)
	lbu	a4,107(a5)
	lbu	a3,108(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,109(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,110(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 419 9
	mv	a2,a5
	lw	a1,-168(s0)
	call	memcpy
	j	.L55
.L54:
	.loc 1 421 21
	lw	a5,-24(s0)
	lbu	a4,107(a5)
	andi	a4,a4,0
	sb	a4,107(a5)
	lbu	a4,108(a5)
	andi	a4,a4,0
	sb	a4,108(a5)
	lbu	a4,109(a5)
	andi	a4,a4,0
	sb	a4,109(a5)
	lbu	a4,110(a5)
	andi	a4,a4,0
	sb	a4,110(a5)
.L55:
	.loc 1 423 17
	lw	a5,-24(s0)
	lw	a4,-172(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-172(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-172(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-172(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 1 424 39
	lbu	a5,-173(s0)
	snez	a5,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 1 424 21
	lw	a5,-24(s0)
	sb	a4,37(a5)
	.loc 1 426 5
	lw	a0,-20(s0)
	call	wifi_mgmr_event_notify
	.loc 1 428 12
	li	a5,0
.L56:
	.loc 1 429 1
	mv	a0,a5
	lw	ra,172(sp)
	.cfi_restore 1
	lw	s0,168(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE52:
	.size	wifi_mgmr_api_ap_start, .-wifi_mgmr_api_ap_start
	.section	.text.wifi_mgmr_api_ap_stop,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_ap_stop
	.type	wifi_mgmr_api_ap_stop, @function
wifi_mgmr_api_ap_stop:
.LFB53:
	.loc 1 432 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 436 5
	addi	a5,s0,-36
	li	a2,13
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 437 9
	addi	a5,s0,-36
	sw	a5,-20(s0)
	.loc 1 438 13
	lw	a5,-20(s0)
	li	a4,9
	sb	a4,0(a5)
	.loc 1 439 16
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	andi	a4,a4,0
	ori	a4,a4,68
	sb	a4,1(a5)
	lbu	a4,2(a5)
	andi	a4,a4,0
	ori	a4,a4,51
	sb	a4,2(a5)
	lbu	a4,3(a5)
	andi	a4,a4,0
	ori	a4,a4,34
	sb	a4,3(a5)
	lbu	a4,4(a5)
	andi	a4,a4,0
	ori	a4,a4,17
	sb	a4,4(a5)
	.loc 1 440 16
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	andi	a4,a4,0
	ori	a4,a4,-120
	sb	a4,5(a5)
	lbu	a4,6(a5)
	andi	a4,a4,0
	ori	a4,a4,119
	sb	a4,6(a5)
	lbu	a4,7(a5)
	andi	a4,a4,0
	ori	a4,a4,102
	sb	a4,7(a5)
	lbu	a4,8(a5)
	andi	a4,a4,0
	ori	a4,a4,85
	sb	a4,8(a5)
	.loc 1 441 14
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	andi	a4,a4,0
	ori	a4,a4,13
	sb	a4,9(a5)
	lbu	a4,10(a5)
	andi	a4,a4,0
	sb	a4,10(a5)
	lbu	a4,11(a5)
	andi	a4,a4,0
	sb	a4,11(a5)
	lbu	a4,12(a5)
	andi	a4,a4,0
	sb	a4,12(a5)
	.loc 1 443 5
	lw	a0,-20(s0)
	call	wifi_mgmr_event_notify
	.loc 1 445 12
	li	a5,0
	.loc 1 446 1
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
.LFE53:
	.size	wifi_mgmr_api_ap_stop, .-wifi_mgmr_api_ap_stop
	.section	.text.wifi_mgmr_api_idle,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_idle
	.type	wifi_mgmr_api_idle, @function
wifi_mgmr_api_idle:
.LFB54:
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
	.loc 1 453 5
	addi	a5,s0,-36
	li	a2,13
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 454 9
	addi	a5,s0,-36
	sw	a5,-20(s0)
	.loc 1 455 13
	lw	a5,-20(s0)
	sb	zero,0(a5)
	.loc 1 456 16
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	andi	a4,a4,0
	ori	a4,a4,68
	sb	a4,1(a5)
	lbu	a4,2(a5)
	andi	a4,a4,0
	ori	a4,a4,51
	sb	a4,2(a5)
	lbu	a4,3(a5)
	andi	a4,a4,0
	ori	a4,a4,34
	sb	a4,3(a5)
	lbu	a4,4(a5)
	andi	a4,a4,0
	ori	a4,a4,17
	sb	a4,4(a5)
	.loc 1 457 16
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	andi	a4,a4,0
	ori	a4,a4,-120
	sb	a4,5(a5)
	lbu	a4,6(a5)
	andi	a4,a4,0
	ori	a4,a4,119
	sb	a4,6(a5)
	lbu	a4,7(a5)
	andi	a4,a4,0
	ori	a4,a4,102
	sb	a4,7(a5)
	lbu	a4,8(a5)
	andi	a4,a4,0
	ori	a4,a4,85
	sb	a4,8(a5)
	.loc 1 458 14
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	andi	a4,a4,0
	ori	a4,a4,13
	sb	a4,9(a5)
	lbu	a4,10(a5)
	andi	a4,a4,0
	sb	a4,10(a5)
	lbu	a4,11(a5)
	andi	a4,a4,0
	sb	a4,11(a5)
	lbu	a4,12(a5)
	andi	a4,a4,0
	sb	a4,12(a5)
	.loc 1 460 5
	lw	a0,-20(s0)
	call	wifi_mgmr_event_notify
	.loc 1 462 12
	li	a5,0
	.loc 1 463 1
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
.LFE54:
	.size	wifi_mgmr_api_idle, .-wifi_mgmr_api_idle
	.section	.text.wifi_mgmr_api_denoise_enable,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_denoise_enable
	.type	wifi_mgmr_api_denoise_enable, @function
wifi_mgmr_api_denoise_enable:
.LFB55:
	.loc 1 466 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 470 5
	addi	a5,s0,-36
	li	a2,13
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 471 9
	addi	a5,s0,-36
	sw	a5,-20(s0)
	.loc 1 472 13
	lw	a5,-20(s0)
	li	a4,12
	sb	a4,0(a5)
	.loc 1 473 16
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	andi	a4,a4,0
	ori	a4,a4,1
	sb	a4,1(a5)
	lbu	a4,2(a5)
	andi	a4,a4,0
	sb	a4,2(a5)
	lbu	a4,3(a5)
	andi	a4,a4,0
	sb	a4,3(a5)
	lbu	a4,4(a5)
	andi	a4,a4,0
	sb	a4,4(a5)
	.loc 1 474 16
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	andi	a4,a4,0
	ori	a4,a4,-120
	sb	a4,5(a5)
	lbu	a4,6(a5)
	andi	a4,a4,0
	ori	a4,a4,119
	sb	a4,6(a5)
	lbu	a4,7(a5)
	andi	a4,a4,0
	ori	a4,a4,102
	sb	a4,7(a5)
	lbu	a4,8(a5)
	andi	a4,a4,0
	ori	a4,a4,85
	sb	a4,8(a5)
	.loc 1 475 14
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	andi	a4,a4,0
	ori	a4,a4,13
	sb	a4,9(a5)
	lbu	a4,10(a5)
	andi	a4,a4,0
	sb	a4,10(a5)
	lbu	a4,11(a5)
	andi	a4,a4,0
	sb	a4,11(a5)
	lbu	a4,12(a5)
	andi	a4,a4,0
	sb	a4,12(a5)
	.loc 1 477 5
	lw	a0,-20(s0)
	call	wifi_mgmr_event_notify
	.loc 1 479 12
	li	a5,0
	.loc 1 480 1
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
.LFE55:
	.size	wifi_mgmr_api_denoise_enable, .-wifi_mgmr_api_denoise_enable
	.section	.text.wifi_mgmr_api_denoise_disable,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_denoise_disable
	.type	wifi_mgmr_api_denoise_disable, @function
wifi_mgmr_api_denoise_disable:
.LFB56:
	.loc 1 483 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 487 5
	addi	a5,s0,-36
	li	a2,13
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 488 9
	addi	a5,s0,-36
	sw	a5,-20(s0)
	.loc 1 489 13
	lw	a5,-20(s0)
	li	a4,12
	sb	a4,0(a5)
	.loc 1 490 16
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	andi	a4,a4,0
	sb	a4,1(a5)
	lbu	a4,2(a5)
	andi	a4,a4,0
	sb	a4,2(a5)
	lbu	a4,3(a5)
	andi	a4,a4,0
	sb	a4,3(a5)
	lbu	a4,4(a5)
	andi	a4,a4,0
	sb	a4,4(a5)
	.loc 1 491 16
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	andi	a4,a4,0
	ori	a4,a4,-120
	sb	a4,5(a5)
	lbu	a4,6(a5)
	andi	a4,a4,0
	ori	a4,a4,119
	sb	a4,6(a5)
	lbu	a4,7(a5)
	andi	a4,a4,0
	ori	a4,a4,102
	sb	a4,7(a5)
	lbu	a4,8(a5)
	andi	a4,a4,0
	ori	a4,a4,85
	sb	a4,8(a5)
	.loc 1 492 14
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	andi	a4,a4,0
	ori	a4,a4,13
	sb	a4,9(a5)
	lbu	a4,10(a5)
	andi	a4,a4,0
	sb	a4,10(a5)
	lbu	a4,11(a5)
	andi	a4,a4,0
	sb	a4,11(a5)
	lbu	a4,12(a5)
	andi	a4,a4,0
	sb	a4,12(a5)
	.loc 1 494 5
	lw	a0,-20(s0)
	call	wifi_mgmr_event_notify
	.loc 1 496 12
	li	a5,0
	.loc 1 497 1
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
.LFE56:
	.size	wifi_mgmr_api_denoise_disable, .-wifi_mgmr_api_denoise_disable
	.section	.text.wifi_mgmr_api_channel_set,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_channel_set
	.type	wifi_mgmr_api_channel_set, @function
wifi_mgmr_api_channel_set:
.LFB57:
	.loc 1 500 1
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
	.loc 1 504 5
	addi	a5,s0,-36
	li	a2,13
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 505 9
	addi	a5,s0,-36
	sw	a5,-20(s0)
	.loc 1 506 13
	lw	a5,-20(s0)
	li	a4,17
	sb	a4,0(a5)
	.loc 1 507 18
	lw	a4,-52(s0)
	.loc 1 507 16
	lw	a5,-20(s0)
	andi	a3,a4,255
	lbu	a2,1(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,1(a5)
	srli	a3,a4,8
	andi	a3,a3,255
	lbu	a2,2(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,2(a5)
	srli	a3,a4,16
	andi	a3,a3,255
	lbu	a2,3(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,3(a5)
	srli	a4,a4,24
	lbu	a3,4(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,4(a5)
	.loc 1 508 18
	lw	a4,-56(s0)
	.loc 1 508 16
	lw	a5,-20(s0)
	andi	a3,a4,255
	lbu	a2,5(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,5(a5)
	srli	a3,a4,8
	andi	a3,a3,255
	lbu	a2,6(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,6(a5)
	srli	a3,a4,16
	andi	a3,a3,255
	lbu	a2,7(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,7(a5)
	srli	a4,a4,24
	lbu	a3,8(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,8(a5)
	.loc 1 509 14
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	andi	a4,a4,0
	ori	a4,a4,13
	sb	a4,9(a5)
	lbu	a4,10(a5)
	andi	a4,a4,0
	sb	a4,10(a5)
	lbu	a4,11(a5)
	andi	a4,a4,0
	sb	a4,11(a5)
	lbu	a4,12(a5)
	andi	a4,a4,0
	sb	a4,12(a5)
	.loc 1 511 5
	lw	a0,-20(s0)
	call	wifi_mgmr_event_notify
	.loc 1 513 12
	li	a5,0
	.loc 1 514 1
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
.LFE57:
	.size	wifi_mgmr_api_channel_set, .-wifi_mgmr_api_channel_set
	.section	.text.wifi_mgmr_api_raw_send,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_raw_send
	.type	wifi_mgmr_api_raw_send, @function
wifi_mgmr_api_raw_send:
.LFB58:
	.loc 1 518 1
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
	.loc 1 522 5
	addi	a5,s0,-36
	li	a2,13
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 523 9
	addi	a5,s0,-36
	sw	a5,-20(s0)
	.loc 1 524 13
	lw	a5,-20(s0)
	li	a4,21
	sb	a4,0(a5)
	.loc 1 525 16
	lw	a5,-20(s0)
	lw	a4,-52(s0)
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-52(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-52(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	lw	a4,-52(s0)
	srli	a4,a4,24
	lbu	a3,4(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,4(a5)
	.loc 1 526 18
	lw	a4,-56(s0)
	.loc 1 526 16
	lw	a5,-20(s0)
	andi	a3,a4,255
	lbu	a2,5(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,5(a5)
	srli	a3,a4,8
	andi	a3,a3,255
	lbu	a2,6(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,6(a5)
	srli	a3,a4,16
	andi	a3,a3,255
	lbu	a2,7(a5)
	andi	a2,a2,0
	or	a3,a2,a3
	sb	a3,7(a5)
	srli	a4,a4,24
	lbu	a3,8(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,8(a5)
	.loc 1 527 14
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	andi	a4,a4,0
	ori	a4,a4,13
	sb	a4,9(a5)
	lbu	a4,10(a5)
	andi	a4,a4,0
	sb	a4,10(a5)
	lbu	a4,11(a5)
	andi	a4,a4,0
	sb	a4,11(a5)
	lbu	a4,12(a5)
	andi	a4,a4,0
	sb	a4,12(a5)
	.loc 1 529 5
	lw	a0,-20(s0)
	call	wifi_mgmr_event_notify
	.loc 1 531 12
	li	a5,0
	.loc 1 532 1
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
.LFE58:
	.size	wifi_mgmr_api_raw_send, .-wifi_mgmr_api_raw_send
	.section	.text.wifi_mgmr_api_set_country_code,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_api_set_country_code
	.type	wifi_mgmr_api_set_country_code, @function
wifi_mgmr_api_set_country_code:
.LFB59:
	.loc 1 535 1
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
	.loc 1 536 5
	lw	a0,-20(s0)
	call	wifi_mgmr_set_country_code_internal
	.loc 1 538 12
	li	a5,0
	.loc 1 539 1
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
.LFE59:
	.size	wifi_mgmr_api_set_country_code, .-wifi_mgmr_api_set_country_code
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/wifi_mgmr.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xde8
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x18
	.4byte	.LASF137
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x19
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x9
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x1a
	.byte	0x4
	.uleb128 0x16
	.4byte	0x84
	.uleb128 0xb
	.4byte	0x90
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x1b
	.4byte	0x90
	.uleb128 0xb
	.4byte	0x97
	.uleb128 0x16
	.4byte	0x9c
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0x22
	.byte	0x15
	.4byte	0x53
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x6f
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x5a
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x3
	.byte	0x53
	.byte	0xd
	.4byte	0x2b
	.uleb128 0xb
	.4byte	0xf8
	.uleb128 0x16
	.4byte	0xee
	.uleb128 0x1c
	.uleb128 0xc
	.4byte	0x90
	.4byte	0x109
	.uleb128 0xd
	.4byte	0x3e
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.4byte	0x90
	.4byte	0x119
	.uleb128 0xd
	.4byte	0x3e
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xbe
	.4byte	0x129
	.uleb128 0xd
	.4byte	0x3e
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.4byte	0x90
	.4byte	0x139
	.uleb128 0xd
	.4byte	0x3e
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.4byte	0xbe
	.uleb128 0xb
	.4byte	0xd6
	.uleb128 0x9
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0x1d
	.4byte	.LASF138
	.byte	0x7
	.byte	0x1
	.4byte	0x5a
	.byte	0x4
	.byte	0x3a
	.byte	0xe
	.4byte	0x217
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0xd
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0xf
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x11
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x12
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x13
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x15
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x16
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x17
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0x19
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0x1a
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0x1b
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x1d
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x4
	.byte	0x64
	.byte	0x3
	.4byte	0x14a
	.uleb128 0x13
	.4byte	.LASF57
	.byte	0xd
	.byte	0x6f
	.4byte	0x26a
	.uleb128 0xe
	.string	"ev"
	.byte	0x70
	.byte	0x17
	.4byte	0x217
	.byte	0
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x71
	.byte	0xb
	.4byte	0x84
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x72
	.byte	0xb
	.4byte	0x84
	.byte	0x5
	.uleb128 0xe
	.string	"len"
	.byte	0x73
	.byte	0xe
	.4byte	0xd6
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x74
	.byte	0xd
	.4byte	0x26a
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.4byte	0xbe
	.4byte	0x27a
	.uleb128 0x1e
	.4byte	0x3e
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x4
	.byte	0x75
	.byte	0x3
	.4byte	0x223
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0x14
	.byte	0x77
	.4byte	0x2da
	.uleb128 0xe
	.string	"ops"
	.byte	0x78
	.byte	0xe
	.4byte	0xd6
	.byte	0
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x79
	.byte	0xe
	.4byte	0xd6
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x7a
	.byte	0xe
	.4byte	0xd6
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x7b
	.byte	0xe
	.4byte	0xd6
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x7c
	.byte	0xe
	.4byte	0xd6
	.byte	0x10
	.uleb128 0xe
	.string	"buf"
	.byte	0x7d
	.byte	0xe
	.4byte	0x2da
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.4byte	0xd6
	.4byte	0x2e9
	.uleb128 0x1f
	.4byte	0x3e
	.byte	0
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x4
	.byte	0x7e
	.byte	0x3
	.4byte	0x286
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0xb9
	.byte	0x80
	.4byte	0x39d
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x81
	.byte	0xa
	.4byte	0xf9
	.byte	0
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x82
	.byte	0xa
	.4byte	0x109
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x83
	.byte	0xe
	.4byte	0xd6
	.byte	0x21
	.uleb128 0xe
	.string	"psk"
	.byte	0x84
	.byte	0xa
	.4byte	0x129
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x85
	.byte	0xa
	.4byte	0x109
	.byte	0x65
	.uleb128 0xe
	.string	"pmk"
	.byte	0x86
	.byte	0xa
	.4byte	0x129
	.byte	0x66
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x87
	.byte	0xa
	.4byte	0x109
	.byte	0xa6
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x88
	.byte	0xe
	.4byte	0xd6
	.byte	0xa7
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x89
	.byte	0xe
	.4byte	0xd6
	.byte	0xab
	.uleb128 0xe
	.string	"mac"
	.byte	0x8a
	.byte	0xd
	.4byte	0x119
	.byte	0xaf
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x8b
	.byte	0xd
	.4byte	0xbe
	.byte	0xb5
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x8c
	.byte	0xe
	.4byte	0xca
	.byte	0xb6
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x8d
	.byte	0xd
	.4byte	0xbe
	.byte	0xb8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x4
	.byte	0x8e
	.byte	0x3
	.4byte	0x2f5
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0x14
	.byte	0x90
	.4byte	0x3ef
	.uleb128 0xe
	.string	"ip"
	.byte	0x91
	.byte	0xe
	.4byte	0xd6
	.byte	0
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x92
	.byte	0xe
	.4byte	0xd6
	.byte	0x4
	.uleb128 0xe
	.string	"gw"
	.byte	0x93
	.byte	0xe
	.4byte	0xd6
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x94
	.byte	0xe
	.4byte	0xd6
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x95
	.byte	0xe
	.4byte	0xd6
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0x4
	.byte	0x96
	.byte	0x3
	.4byte	0x3a9
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x6f
	.byte	0x98
	.4byte	0x467
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x99
	.byte	0xd
	.4byte	0xb2
	.byte	0
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x9a
	.byte	0xa
	.4byte	0xf9
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x9b
	.byte	0xa
	.4byte	0x109
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x9c
	.byte	0xd
	.4byte	0xbe
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x9d
	.byte	0xe
	.4byte	0xd6
	.byte	0x26
	.uleb128 0xe
	.string	"psk"
	.byte	0x9e
	.byte	0xa
	.4byte	0x129
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x9f
	.byte	0xa
	.4byte	0x109
	.byte	0x6a
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0xa0
	.byte	0xe
	.4byte	0xd6
	.byte	0x6b
	.byte	0
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0x4
	.byte	0xa1
	.byte	0x3
	.4byte	0x3fb
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0x3c
	.byte	0xc0
	.4byte	0x50f
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0xc1
	.byte	0xa
	.4byte	0xf9
	.byte	0
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0xc2
	.byte	0xa
	.4byte	0x109
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0xc3
	.byte	0xe
	.4byte	0xd6
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0xc4
	.byte	0xd
	.4byte	0x119
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xc5
	.byte	0xd
	.4byte	0xbe
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0xc6
	.byte	0xc
	.4byte	0xa6
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0xc7
	.byte	0xc
	.4byte	0xa6
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xc8
	.byte	0xc
	.4byte	0xa6
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0xc9
	.byte	0xd
	.4byte	0xbe
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0xca
	.byte	0xd
	.4byte	0xbe
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0xcb
	.byte	0xd
	.4byte	0xbe
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0xcc
	.byte	0xe
	.4byte	0xd6
	.byte	0x38
	.byte	0
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0x4
	.byte	0xcd
	.byte	0x3
	.4byte	0x473
	.uleb128 0x17
	.4byte	.LASF95
	.2byte	0x120
	.4byte	0x2b
	.4byte	0x530
	.uleb128 0xf
	.4byte	0x8b
	.byte	0
	.uleb128 0x17
	.4byte	.LASF96
	.2byte	0x11c
	.4byte	0x2b
	.4byte	0x545
	.uleb128 0xf
	.4byte	0x545
	.byte	0
	.uleb128 0xb
	.4byte	0x27a
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x5
	.byte	0xce
	.byte	0x5
	.4byte	0x2b
	.4byte	0x561
	.uleb128 0xf
	.4byte	0xa1
	.uleb128 0x20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x6
	.byte	0x1f
	.byte	0x8
	.4byte	0x84
	.4byte	0x581
	.uleb128 0xf
	.4byte	0x86
	.uleb128 0xf
	.4byte	0xf3
	.uleb128 0xf
	.4byte	0x32
	.byte	0
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x6
	.byte	0x29
	.byte	0x8
	.4byte	0x32
	.4byte	0x597
	.uleb128 0xf
	.4byte	0x9c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x6
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0x5b7
	.uleb128 0xf
	.4byte	0x84
	.uleb128 0xf
	.4byte	0x2b
	.uleb128 0xf
	.4byte	0x32
	.byte	0
	.uleb128 0x3
	.4byte	.LASF101
	.2byte	0x216
	.4byte	0x2b
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e0
	.uleb128 0x4
	.4byte	.LASF103
	.2byte	0x216
	.byte	0x2a
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF102
	.2byte	0x205
	.4byte	0x2b
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x636
	.uleb128 0x15
	.string	"pkt"
	.2byte	0x205
	.byte	0x25
	.4byte	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x15
	.string	"len"
	.2byte	0x205
	.byte	0x2e
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.string	"msg"
	.2byte	0x207
	.byte	0x16
	.4byte	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF104
	.2byte	0x208
	.byte	0xd
	.4byte	0x636
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xc
	.4byte	0xbe
	.4byte	0x646
	.uleb128 0xd
	.4byte	0x3e
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF105
	.2byte	0x1f3
	.4byte	0x2b
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69c
	.uleb128 0x4
	.4byte	.LASF82
	.2byte	0x1f3
	.byte	0x23
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF106
	.2byte	0x1f3
	.byte	0x30
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.string	"msg"
	.2byte	0x1f5
	.byte	0x16
	.4byte	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF104
	.2byte	0x1f6
	.byte	0xd
	.4byte	0x636
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x3
	.4byte	.LASF107
	.2byte	0x1e2
	.4byte	0x2b
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d4
	.uleb128 0x5
	.string	"msg"
	.2byte	0x1e4
	.byte	0x16
	.4byte	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF104
	.2byte	0x1e5
	.byte	0xd
	.4byte	0x636
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x3
	.4byte	.LASF108
	.2byte	0x1d1
	.4byte	0x2b
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x70c
	.uleb128 0x5
	.string	"msg"
	.2byte	0x1d3
	.byte	0x16
	.4byte	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF104
	.2byte	0x1d4
	.byte	0xd
	.4byte	0x636
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x3
	.4byte	.LASF109
	.2byte	0x1c0
	.4byte	0x2b
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x744
	.uleb128 0x5
	.string	"msg"
	.2byte	0x1c2
	.byte	0x16
	.4byte	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF104
	.2byte	0x1c3
	.byte	0xd
	.4byte	0x636
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x3
	.4byte	.LASF110
	.2byte	0x1af
	.4byte	0x2b
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x77c
	.uleb128 0x5
	.string	"msg"
	.2byte	0x1b1
	.byte	0x16
	.4byte	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF104
	.2byte	0x1b2
	.byte	0xd
	.4byte	0x636
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x3
	.4byte	.LASF111
	.2byte	0x189
	.4byte	0x2b
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x803
	.uleb128 0x4
	.4byte	.LASF65
	.2byte	0x189
	.byte	0x22
	.4byte	0x8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x4
	.4byte	.LASF112
	.2byte	0x189
	.byte	0x2e
	.4byte	0x8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x4
	.4byte	.LASF82
	.2byte	0x189
	.byte	0x3a
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x4
	.4byte	.LASF83
	.2byte	0x189
	.byte	0x4b
	.4byte	0xbe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -173
	.uleb128 0x5
	.string	"msg"
	.2byte	0x18b
	.byte	0x16
	.4byte	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"ap"
	.2byte	0x18c
	.byte	0x19
	.4byte	0x803
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF104
	.2byte	0x18d
	.byte	0xd
	.4byte	0x808
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.byte	0
	.uleb128 0xb
	.4byte	0x467
	.uleb128 0xc
	.4byte	0xbe
	.4byte	0x818
	.uleb128 0xd
	.4byte	0x3e
	.byte	0x7b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF113
	.2byte	0x178
	.4byte	0x2b
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x85f
	.uleb128 0x4
	.4byte	.LASF114
	.2byte	0x178
	.byte	0x26
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.string	"msg"
	.2byte	0x17a
	.byte	0x16
	.4byte	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF104
	.2byte	0x17b
	.byte	0xd
	.4byte	0x636
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x3
	.4byte	.LASF115
	.2byte	0x167
	.4byte	0x2b
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x897
	.uleb128 0x5
	.string	"msg"
	.2byte	0x169
	.byte	0x16
	.4byte	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF104
	.2byte	0x16a
	.byte	0xd
	.4byte	0x636
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x3
	.4byte	.LASF116
	.2byte	0x156
	.4byte	0x2b
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8cf
	.uleb128 0x5
	.string	"msg"
	.2byte	0x158
	.byte	0x16
	.4byte	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF104
	.2byte	0x159
	.byte	0xd
	.4byte	0x636
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x3
	.4byte	.LASF117
	.2byte	0x145
	.4byte	0x2b
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x907
	.uleb128 0x5
	.string	"msg"
	.2byte	0x147
	.byte	0x16
	.4byte	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF104
	.2byte	0x148
	.byte	0xd
	.4byte	0x636
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x3
	.4byte	.LASF118
	.2byte	0x128
	.4byte	0x2b
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9de
	.uleb128 0x4
	.4byte	.LASF82
	.2byte	0x128
	.byte	0x2c
	.4byte	0xbe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -113
	.uleb128 0x4
	.4byte	.LASF87
	.2byte	0x128
	.byte	0x3c
	.4byte	0xa6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -114
	.uleb128 0x4
	.4byte	.LASF90
	.2byte	0x128
	.byte	0x4a
	.4byte	0xbe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -115
	.uleb128 0x15
	.string	"mac"
	.2byte	0x128
	.byte	0x58
	.4byte	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x4
	.4byte	.LASF65
	.2byte	0x128
	.byte	0x67
	.4byte	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x15
	.string	"len"
	.2byte	0x128
	.byte	0x73
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x4
	.4byte	.LASF88
	.2byte	0x128
	.byte	0x7f
	.4byte	0xa6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x4
	.4byte	.LASF89
	.2byte	0x128
	.byte	0x8f
	.4byte	0xa6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -129
	.uleb128 0x4
	.4byte	.LASF91
	.2byte	0x128
	.byte	0xa0
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.string	"msg"
	.2byte	0x12a
	.byte	0x16
	.4byte	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF119
	.2byte	0x12b
	.byte	0x1c
	.4byte	0x9de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF104
	.2byte	0x12c
	.byte	0xd
	.4byte	0x9e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0xb
	.4byte	0x50f
	.uleb128 0xc
	.4byte	0xbe
	.4byte	0x9f3
	.uleb128 0xd
	.4byte	0x3e
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.4byte	.LASF120
	.2byte	0x117
	.4byte	0x2b
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa2b
	.uleb128 0x5
	.string	"msg"
	.2byte	0x119
	.byte	0x16
	.4byte	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF104
	.2byte	0x11a
	.byte	0xd
	.4byte	0x636
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x3
	.4byte	.LASF121
	.2byte	0x106
	.4byte	0x2b
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa63
	.uleb128 0x5
	.string	"msg"
	.2byte	0x108
	.byte	0x16
	.4byte	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF104
	.2byte	0x109
	.byte	0xd
	.4byte	0x636
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x10
	.4byte	.LASF122
	.byte	0xf5
	.4byte	0x2b
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa5
	.uleb128 0xa
	.4byte	.LASF123
	.byte	0xf5
	.byte	0x28
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x11
	.string	"msg"
	.byte	0xf7
	.4byte	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0xf8
	.byte	0xd
	.4byte	0x636
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x10
	.4byte	.LASF124
	.byte	0xe4
	.4byte	0x2b
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae7
	.uleb128 0xa
	.4byte	.LASF125
	.byte	0xe4
	.byte	0x28
	.4byte	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x11
	.string	"msg"
	.byte	0xe6
	.4byte	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0xe7
	.byte	0xd
	.4byte	0x636
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x10
	.4byte	.LASF126
	.byte	0xd3
	.4byte	0x2b
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb1b
	.uleb128 0x11
	.string	"msg"
	.byte	0xd5
	.4byte	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0xd6
	.byte	0xd
	.4byte	0x636
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x10
	.4byte	.LASF127
	.byte	0xc2
	.4byte	0x2b
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb4f
	.uleb128 0x11
	.string	"msg"
	.byte	0xc4
	.4byte	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0xc5
	.byte	0xd
	.4byte	0x636
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x10
	.4byte	.LASF128
	.byte	0xb1
	.4byte	0x2b
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb83
	.uleb128 0x11
	.string	"msg"
	.byte	0xb3
	.4byte	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0xb4
	.byte	0xd
	.4byte	0x636
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0xa0
	.4byte	0x2b
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbb7
	.uleb128 0x11
	.string	"msg"
	.byte	0xa2
	.4byte	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0xa3
	.byte	0xd
	.4byte	0x636
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x10
	.4byte	.LASF130
	.byte	0x8f
	.4byte	0x2b
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbeb
	.uleb128 0x11
	.string	"msg"
	.byte	0x91
	.4byte	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0x92
	.byte	0xd
	.4byte	0x636
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x10
	.4byte	.LASF131
	.byte	0x77
	.4byte	0x2b
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc76
	.uleb128 0x12
	.string	"ip"
	.byte	0x77
	.byte	0x23
	.4byte	0xd6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x77
	.byte	0x30
	.4byte	0xd6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x12
	.string	"gw"
	.byte	0x77
	.byte	0x3f
	.4byte	0xd6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x77
	.byte	0x4c
	.4byte	0xd6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x77
	.byte	0x5b
	.4byte	0xd6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x11
	.string	"msg"
	.byte	0x79
	.4byte	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF132
	.byte	0x7a
	.byte	0x1c
	.4byte	0xc76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0x7b
	.byte	0xd
	.4byte	0xc7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0xb
	.4byte	0x3ef
	.uleb128 0xc
	.4byte	0xbe
	.4byte	0xc8b
	.uleb128 0xd
	.4byte	0x3e
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF133
	.byte	0x56
	.4byte	0x2b
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd28
	.uleb128 0x12
	.string	"ops"
	.byte	0x56
	.byte	0x24
	.4byte	0xd6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x56
	.byte	0x32
	.4byte	0xd6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x56
	.byte	0x41
	.4byte	0xd6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x56
	.byte	0x53
	.4byte	0xd6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x56
	.byte	0x62
	.4byte	0xd6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x12
	.string	"buf"
	.byte	0x56
	.byte	0x74
	.4byte	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x11
	.string	"msg"
	.byte	0x59
	.4byte	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF134
	.byte	0x5a
	.byte	0x22
	.4byte	0xd28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0x5b
	.byte	0xd
	.4byte	0xd2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0xb
	.4byte	0x2e9
	.uleb128 0xc
	.4byte	0xbe
	.4byte	0xd3d
	.uleb128 0xd
	.4byte	0x3e
	.byte	0x40
	.byte	0
	.uleb128 0x10
	.4byte	.LASF135
	.byte	0x28
	.4byte	0x2b
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdda
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x28
	.byte	0x21
	.4byte	0x8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x12
	.string	"psk"
	.byte	0x28
	.byte	0x2d
	.4byte	0x8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x12
	.string	"pmk"
	.byte	0x28
	.byte	0x38
	.4byte	0x8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x12
	.string	"mac"
	.byte	0x28
	.byte	0x46
	.4byte	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x28
	.byte	0x53
	.4byte	0xbe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -241
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0x28
	.byte	0x62
	.4byte	0xca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x11
	.string	"msg"
	.byte	0x2a
	.4byte	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF136
	.byte	0x2b
	.byte	0x1e
	.4byte	0xdda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0x2c
	.byte	0xd
	.4byte	0xddf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0xb
	.4byte	0x39d
	.uleb128 0x21
	.4byte	0xbe
	.uleb128 0xd
	.4byte	0x3e
	.byte	0xc5
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
	.sleb128 4
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x21
	.sleb128 22
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
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
	.uleb128 0x16
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x37
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xdc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
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
	.4byte	.LFB35
	.uleb128 .LFE35-.LFB35
	.byte	0x7
	.4byte	.LFB36
	.uleb128 .LFE36-.LFB36
	.byte	0x7
	.4byte	.LFB37
	.uleb128 .LFE37-.LFB37
	.byte	0x7
	.4byte	.LFB38
	.uleb128 .LFE38-.LFB38
	.byte	0x7
	.4byte	.LFB39
	.uleb128 .LFE39-.LFB39
	.byte	0x7
	.4byte	.LFB40
	.uleb128 .LFE40-.LFB40
	.byte	0x7
	.4byte	.LFB41
	.uleb128 .LFE41-.LFB41
	.byte	0x7
	.4byte	.LFB42
	.uleb128 .LFE42-.LFB42
	.byte	0x7
	.4byte	.LFB43
	.uleb128 .LFE43-.LFB43
	.byte	0x7
	.4byte	.LFB44
	.uleb128 .LFE44-.LFB44
	.byte	0x7
	.4byte	.LFB45
	.uleb128 .LFE45-.LFB45
	.byte	0x7
	.4byte	.LFB46
	.uleb128 .LFE46-.LFB46
	.byte	0x7
	.4byte	.LFB47
	.uleb128 .LFE47-.LFB47
	.byte	0x7
	.4byte	.LFB48
	.uleb128 .LFE48-.LFB48
	.byte	0x7
	.4byte	.LFB49
	.uleb128 .LFE49-.LFB49
	.byte	0x7
	.4byte	.LFB50
	.uleb128 .LFE50-.LFB50
	.byte	0x7
	.4byte	.LFB51
	.uleb128 .LFE51-.LFB51
	.byte	0x7
	.4byte	.LFB52
	.uleb128 .LFE52-.LFB52
	.byte	0x7
	.4byte	.LFB53
	.uleb128 .LFE53-.LFB53
	.byte	0x7
	.4byte	.LFB54
	.uleb128 .LFE54-.LFB54
	.byte	0x7
	.4byte	.LFB55
	.uleb128 .LFE55-.LFB55
	.byte	0x7
	.4byte	.LFB56
	.uleb128 .LFE56-.LFB56
	.byte	0x7
	.4byte	.LFB57
	.uleb128 .LFE57-.LFB57
	.byte	0x7
	.4byte	.LFB58
	.uleb128 .LFE58-.LFB58
	.byte	0x7
	.4byte	.LFB59
	.uleb128 .LFE59-.LFB59
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF97:
	.string	"printf"
.LASF89:
	.string	"ppm_rel"
.LASF13:
	.string	"size_t"
.LASF128:
	.string	"wifi_mgmr_api_disable_autoreconnect"
.LASF109:
	.string	"wifi_mgmr_api_idle"
.LASF5:
	.string	"signed char"
.LASF105:
	.string	"wifi_mgmr_api_channel_set"
.LASF42:
	.string	"WIFI_MGMR_EVENT_FW_DATA_RAW_SEND"
.LASF28:
	.string	"WIFI_MGMR_EVENT_APP_PHY_UP"
.LASF61:
	.string	"type"
.LASF39:
	.string	"WIFI_MGMR_EVENT_FW_SCAN"
.LASF64:
	.string	"wifi_mgmr_profile_msg"
.LASF11:
	.string	"long long unsigned int"
.LASF117:
	.string	"wifi_mgmr_api_fw_disconnect"
.LASF101:
	.string	"wifi_mgmr_api_set_country_code"
.LASF90:
	.string	"auth"
.LASF123:
	.string	"max_sta_supported"
.LASF19:
	.string	"intptr_t"
.LASF81:
	.string	"wifi_mgmr_ap_msg"
.LASF29:
	.string	"WIFI_MGMR_EVENT_APP_AP_START"
.LASF73:
	.string	"freq"
.LASF68:
	.string	"psk_tail"
.LASF9:
	.string	"long int"
.LASF80:
	.string	"wifi_mgmr_ipgot_msg_t"
.LASF103:
	.string	"country_code"
.LASF49:
	.string	"WIFI_MGMR_EVENT_GLB_DISABLE_AUTORECONNECT"
.LASF2:
	.string	"unsigned int"
.LASF98:
	.string	"memcpy"
.LASF3:
	.string	"long long int"
.LASF17:
	.string	"uint16_t"
.LASF138:
	.string	"WIFI_MGMR_EVENT"
.LASF115:
	.string	"wifi_mgmr_api_fw_scan"
.LASF70:
	.string	"psk_len"
.LASF41:
	.string	"WIFI_MGMR_EVENT_FW_IND_CONNECTED"
.LASF113:
	.string	"wifi_mgmr_api_fw_powersaving"
.LASF77:
	.string	"mask"
.LASF108:
	.string	"wifi_mgmr_api_denoise_enable"
.LASF33:
	.string	"WIFI_MGMR_EVENT_APP_DENOISE"
.LASF63:
	.string	"wifi_mgmr_cfg_element_msg_t"
.LASF36:
	.string	"WIFI_MGMR_EVENT_FW_DISCONNECT"
.LASF136:
	.string	"profile"
.LASF45:
	.string	"WIFI_MGMR_EVENT_GLB_SCAN_IND_BEACON"
.LASF132:
	.string	"ipgot"
.LASF85:
	.string	"wifi_mgmr_scan_item"
.LASF35:
	.string	"WIFI_MGMR_EVENT_MAXAPP_MINIFW"
.LASF120:
	.string	"wifi_mgmr_api_sniffer_enable"
.LASF124:
	.string	"wifi_mgmr_api_rate_config"
.LASF65:
	.string	"ssid"
.LASF125:
	.string	"config"
.LASF74:
	.string	"dhcp_use"
.LASF10:
	.string	"long unsigned int"
.LASF58:
	.string	"wifi_mgmr_cfg_element_msg"
.LASF131:
	.string	"wifi_mgmr_api_ip_got"
.LASF55:
	.string	"data"
.LASF8:
	.string	"short unsigned int"
.LASF84:
	.string	"wifi_mgmr_ap_msg_t"
.LASF92:
	.string	"is_used"
.LASF99:
	.string	"strlen"
.LASF93:
	.string	"timestamp_lastseen"
.LASF88:
	.string	"ppm_abs"
.LASF57:
	.string	"wifi_mgmr_msg"
.LASF133:
	.string	"wifi_mgmr_api_cfg_req"
.LASF51:
	.string	"WIFI_MGMR_EVENT_GLB_IP_UPDATE"
.LASF121:
	.string	"wifi_mgmr_api_ifaceup"
.LASF76:
	.string	"wifi_mgmr_ipgot_msg"
.LASF54:
	.string	"data2"
.LASF118:
	.string	"wifi_mgmr_api_scan_item_beacon"
.LASF56:
	.string	"wifi_mgmr_msg_t"
.LASF25:
	.string	"WIFI_MGMR_EVENT_APP_IP_GOT"
.LASF102:
	.string	"wifi_mgmr_api_raw_send"
.LASF95:
	.string	"wifi_mgmr_set_country_code_internal"
.LASF34:
	.string	"WIFI_MGMR_EVENT_APP_RELOAD_TSEN"
.LASF37:
	.string	"WIFI_MGMR_EVENT_FW_POWERSAVING"
.LASF119:
	.string	"scan"
.LASF52:
	.string	"WIFI_MGMR_EVENT_T"
.LASF94:
	.string	"wifi_mgmr_scan_item_t"
.LASF129:
	.string	"wifi_mgmr_api_reconnect"
.LASF83:
	.string	"hidden_ssid"
.LASF126:
	.string	"wifi_mgmr_api_disconnect"
.LASF86:
	.string	"bssid"
.LASF31:
	.string	"WIFI_MGMR_EVENT_APP_CONF_MAX_STA"
.LASF48:
	.string	"WIFI_MGMR_EVENT_GLB_AP_IND_STA_DEL"
.LASF20:
	.string	"_Bool"
.LASF15:
	.string	"int32_t"
.LASF6:
	.string	"unsigned char"
.LASF106:
	.string	"use_40Mhz"
.LASF66:
	.string	"ssid_tail"
.LASF7:
	.string	"short int"
.LASF67:
	.string	"ssid_len"
.LASF22:
	.string	"WIFI_MGMR_EVENT_APP_CONNECT"
.LASF110:
	.string	"wifi_mgmr_api_ap_stop"
.LASF112:
	.string	"passwd"
.LASF43:
	.string	"WIFI_MGMR_EVENT_FW_CFG_REQ"
.LASF82:
	.string	"channel"
.LASF135:
	.string	"wifi_mgmr_api_connect"
.LASF24:
	.string	"WIFI_MGMR_EVENT_APP_CONNECTED"
.LASF26:
	.string	"WIFI_MGMR_EVENT_APP_DISCONNECT"
.LASF18:
	.string	"uint32_t"
.LASF46:
	.string	"WIFI_MGMR_EVENT_GLB_SCAN_IND_PROBE_RESP"
.LASF122:
	.string	"wifi_mgmr_api_conf_max_sta"
.LASF4:
	.string	"long double"
.LASF62:
	.string	"length"
.LASF12:
	.string	"char"
.LASF114:
	.string	"mode"
.LASF27:
	.string	"WIFI_MGMR_EVENT_APP_RECONNECT"
.LASF87:
	.string	"rssi"
.LASF53:
	.string	"data1"
.LASF38:
	.string	"WIFI_MGMR_EVENT_FW_CHANNEL_SET"
.LASF130:
	.string	"wifi_mgmr_api_ip_update"
.LASF69:
	.string	"pmk_tail"
.LASF30:
	.string	"WIFI_MGMR_EVENT_APP_AP_STOP"
.LASF104:
	.string	"buffer"
.LASF96:
	.string	"wifi_mgmr_event_notify"
.LASF111:
	.string	"wifi_mgmr_api_ap_start"
.LASF78:
	.string	"dns1"
.LASF79:
	.string	"dns2"
.LASF59:
	.string	"task"
.LASF50:
	.string	"WIFI_MGMR_EVENT_GLB_ENABLE_AUTORECONNECT"
.LASF72:
	.string	"band"
.LASF137:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF47:
	.string	"WIFI_MGMR_EVENT_GLB_AP_IND_STA_NEW"
.LASF14:
	.string	"int8_t"
.LASF44:
	.string	"WIFI_MGMR_EVENT_MAXFW_MINI_GLOBAL"
.LASF100:
	.string	"memset"
.LASF40:
	.string	"WIFI_MGMR_EVENT_FW_IND_DISCONNECT"
.LASF134:
	.string	"cfg_req"
.LASF116:
	.string	"wifi_mgmr_api_fw_tsen_reload"
.LASF16:
	.string	"uint8_t"
.LASF75:
	.string	"wifi_mgmr_profile_msg_t"
.LASF23:
	.string	"WIFI_MGMR_EVENT_APP_SNIFFER"
.LASF91:
	.string	"cipher"
.LASF71:
	.string	"pmk_len"
.LASF32:
	.string	"WIFI_MGMR_EVENT_APP_RC_CONFIG"
.LASF127:
	.string	"wifi_mgmr_api_enable_autoreconnect"
.LASF107:
	.string	"wifi_mgmr_api_denoise_disable"
.LASF21:
	.string	"WIFI_MGMR_EVENT_APP_IDLE"
.LASF60:
	.string	"element"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_wifidrv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/wifi_mgmr_api.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
