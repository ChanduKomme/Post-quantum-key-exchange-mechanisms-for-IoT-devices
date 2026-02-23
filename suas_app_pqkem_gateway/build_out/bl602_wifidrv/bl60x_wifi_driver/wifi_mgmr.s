	.file	"wifi_mgmr.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_wifidrv" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/wifi_mgmr.c"
	.globl	wifiMgmr
	.section	.bss.wifiMgmr,"aw",@nobits
	.align	2
	.type	wifiMgmr, @object
	.size	wifiMgmr, 6116
wifiMgmr:
	.zero	6116
	.section	.rodata
	.align	2
.LC0:
	.string	"group"
	.section	.rodata.stateGlobal,"a"
	.align	2
	.type	stateGlobal, @object
	.size	stateGlobal, 28
stateGlobal:
	.word	0
	.word	0
	.word	__compound_literal.0
	.word	12
	.word	.LC0
	.word	stateGlobalEnter
	.word	stateGlobalExit
	.section	.rodata
	.align	2
.LC1:
	.string	"idle"
	.section	.rodata.stateIdle,"a"
	.align	2
	.type	stateIdle, @object
	.size	stateIdle, 28
stateIdle:
	.word	stateGlobal
	.word	0
	.word	__compound_literal.3
	.word	2
	.word	.LC1
	.word	stateIdleEnter
	.word	stateIdleExit
	.section	.rodata
	.align	2
.LC2:
	.string	"connecting"
	.section	.rodata.stateConnecting,"a"
	.align	2
	.type	stateConnecting, @object
	.size	stateConnecting, 28
stateConnecting:
	.word	stateGlobal
	.word	0
	.word	__compound_literal.2
	.word	2
	.word	.LC2
	.word	stateConnectingEnter
	.word	stateConnectingExit
	.section	.rodata.stateConnectedIPNo,"a"
	.align	2
	.type	stateConnectedIPNo, @object
	.size	stateConnectedIPNo, 28
stateConnectedIPNo:
	.word	stateGlobal
	.word	0
	.word	__compound_literal.5
	.word	3
	.word	stateConnectedIPNo_data
	.word	stateConnectedIPNoEnter
	.word	stateConnectedIPNoExit
	.section	.rodata
	.align	2
.LC3:
	.string	"wifiConnected_IPOK"
	.section	.rodata.stateConnectedIPYes,"a"
	.align	2
	.type	stateConnectedIPYes, @object
	.size	stateConnectedIPYes, 28
stateConnectedIPYes:
	.word	stateGlobal
	.word	0
	.word	__compound_literal.6
	.word	4
	.word	.LC3
	.word	stateConnectedIPYes_enter
	.word	stateConnectedIPYes_exit
	.section	.rodata.stateDisconnect,"a"
	.align	2
	.type	stateDisconnect, @object
	.size	stateDisconnect, 28
stateDisconnect:
	.word	stateGlobal
	.word	0
	.word	__compound_literal.7
	.word	2
	.word	stateDisconnect_data
	.word	stateDisconnect_enter
	.word	stateDisconnect_exit
	.section	.rodata
	.align	2
.LC4:
	.string	"ifaceDown"
	.section	.rodata.stateIfaceDown,"a"
	.align	2
	.type	stateIfaceDown, @object
	.size	stateIfaceDown, 28
stateIfaceDown:
	.word	stateGlobal
	.word	0
	.word	__compound_literal.4
	.word	1
	.word	.LC4
	.word	stateIfaceDownEnter
	.word	stateIfaceDownExit
	.section	.rodata
	.align	2
.LC5:
	.string	"sniffer"
	.section	.rodata.stateSniffer,"a"
	.align	2
	.type	stateSniffer, @object
	.size	stateSniffer, 28
stateSniffer:
	.word	stateGlobal
	.word	0
	.word	__compound_literal.1
	.word	2
	.word	.LC5
	.word	stateSnifferEnter
	.word	stateSnifferExit
	.section	.rodata.stateError,"a"
	.align	2
	.type	stateError, @object
	.size	stateError, 28
stateError:
	.zero	20
	.word	printErrMsg
	.zero	4
	.section	.rodata
	.align	2
.LC6:
	.string	"ENTERED ERROR STATE!"
	.section	.text.printErrMsg,"ax",@progbits
	.align	1
	.type	printErrMsg, @function
printErrMsg:
.LFB7:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/wifi_mgmr.c"
	.loc 1 69 1
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
	.loc 1 70 4
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	printf
	.loc 1 71 1
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
.LFE7:
	.size	printErrMsg, .-printErrMsg
	.section	.text._pending_task_set,"ax",@progbits
	.align	1
	.type	_pending_task_set, @function
_pending_task_set:
.LFB8:
	.loc 1 74 1
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
	.loc 1 75 13
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,2008(a5)
	.loc 1 75 27
	lw	a5,-20(s0)
	or	a4,a4,a5
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a3,a5
	sw	a4,2008(a5)
	.loc 1 76 1
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
.LFE8:
	.size	_pending_task_set, .-_pending_task_set
	.section	.text._pending_task_clr,"ax",@progbits
	.align	1
	.type	_pending_task_clr, @function
_pending_task_clr:
.LFB9:
	.loc 1 79 1
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
	.loc 1 80 13
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,2008(a5)
	.loc 1 80 31
	lw	a5,-20(s0)
	not	a5,a5
	.loc 1 80 27
	and	a4,a4,a5
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a3,a5
	sw	a4,2008(a5)
	.loc 1 81 1
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
.LFE9:
	.size	_pending_task_clr, .-_pending_task_clr
	.section	.text._pending_task_is_set,"ax",@progbits
	.align	1
	.type	_pending_task_is_set, @function
_pending_task_is_set:
.LFB10:
	.loc 1 84 1
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
	.loc 1 85 21
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,2008(a5)
	.loc 1 85 35
	lw	a5,-20(s0)
	and	a5,a4,a5
	.loc 1 85 46
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 1 86 1
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
	.size	_pending_task_is_set, .-_pending_task_is_set
	.section	.text._features_is_set,"ax",@progbits
	.align	1
	.type	_features_is_set, @function
_features_is_set:
.LFB11:
	.loc 1 89 1
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
	.loc 1 90 21
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,2012(a5)
	.loc 1 90 31
	lw	a5,-20(s0)
	and	a5,a4,a5
	.loc 1 90 42
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 1 91 1
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
.LFE11:
	.size	_features_is_set, .-_features_is_set
	.section	.rodata
	.align	2
.LC7:
	.string	"Open"
	.align	2
.LC8:
	.string	"WEP"
	.align	2
.LC9:
	.string	"WPA-PSK"
	.align	2
.LC10:
	.string	"WPA2-PSK"
	.align	2
.LC11:
	.string	"WPA2-PSK/WPA-PSK"
	.align	2
.LC12:
	.string	"WPA/WPA2-Enterprise"
	.align	2
.LC13:
	.string	"Unknown"
	.section	.text.wifi_mgmr_auth_to_str,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_auth_to_str
	.type	wifi_mgmr_auth_to_str, @function
wifi_mgmr_auth_to_str:
.LFB12:
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
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 95 5
	lbu	a5,-17(s0)
	li	a4,255
	beq	a5,a4,.L9
	li	a4,255
	bgt	a5,a4,.L10
	li	a4,5
	beq	a5,a4,.L11
	li	a4,5
	bgt	a5,a4,.L10
	li	a4,4
	beq	a5,a4,.L12
	li	a4,4
	bgt	a5,a4,.L10
	li	a4,3
	beq	a5,a4,.L13
	li	a4,3
	bgt	a5,a4,.L10
	li	a4,2
	beq	a5,a4,.L14
	li	a4,2
	bgt	a5,a4,.L10
	beq	a5,zero,.L15
	li	a4,1
	beq	a5,a4,.L16
	j	.L10
.L15:
	.loc 1 98 20
	lui	a5,%hi(.LC7)
	addi	a5,a5,%lo(.LC7)
	j	.L17
.L16:
	.loc 1 103 20
	lui	a5,%hi(.LC8)
	addi	a5,a5,%lo(.LC8)
	j	.L17
.L14:
	.loc 1 108 20
	lui	a5,%hi(.LC9)
	addi	a5,a5,%lo(.LC9)
	j	.L17
.L13:
	.loc 1 113 20
	lui	a5,%hi(.LC10)
	addi	a5,a5,%lo(.LC10)
	j	.L17
.L12:
	.loc 1 118 20
	lui	a5,%hi(.LC11)
	addi	a5,a5,%lo(.LC11)
	j	.L17
.L11:
	.loc 1 123 20
	lui	a5,%hi(.LC12)
	addi	a5,a5,%lo(.LC12)
	j	.L17
.L9:
	.loc 1 128 20
	lui	a5,%hi(.LC13)
	addi	a5,a5,%lo(.LC13)
	j	.L17
.L10:
	.loc 1 133 20
	lui	a5,%hi(.LC13)
	addi	a5,a5,%lo(.LC13)
.L17:
	.loc 1 136 1
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
	.size	wifi_mgmr_auth_to_str, .-wifi_mgmr_auth_to_str
	.section	.rodata
	.align	2
.LC14:
	.string	"NONE"
	.align	2
.LC15:
	.string	"AES"
	.align	2
.LC16:
	.string	"TKIP"
	.align	2
.LC17:
	.string	"TKIP/AES"
	.section	.text.wifi_mgmr_cipher_to_str,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_cipher_to_str
	.type	wifi_mgmr_cipher_to_str, @function
wifi_mgmr_cipher_to_str:
.LFB13:
	.loc 1 139 1
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
	.loc 1 140 8
	lbu	a5,-17(s0)
	bne	a5,zero,.L19
	.loc 1 141 16
	lui	a5,%hi(.LC14)
	addi	a5,a5,%lo(.LC14)
	j	.L20
.L19:
	.loc 1 142 15
	lbu	a4,-17(s0)
	li	a5,1
	bne	a4,a5,.L21
	.loc 1 143 16
	lui	a5,%hi(.LC8)
	addi	a5,a5,%lo(.LC8)
	j	.L20
.L21:
	.loc 1 144 15
	lbu	a4,-17(s0)
	li	a5,2
	bne	a4,a5,.L22
	.loc 1 145 16
	lui	a5,%hi(.LC15)
	addi	a5,a5,%lo(.LC15)
	j	.L20
.L22:
	.loc 1 146 15
	lbu	a4,-17(s0)
	li	a5,3
	bne	a4,a5,.L23
	.loc 1 147 16
	lui	a5,%hi(.LC16)
	addi	a5,a5,%lo(.LC16)
	j	.L20
.L23:
	.loc 1 148 15
	lbu	a4,-17(s0)
	li	a5,4
	bne	a4,a5,.L24
	.loc 1 149 16
	lui	a5,%hi(.LC17)
	addi	a5,a5,%lo(.LC17)
	j	.L20
.L24:
	.loc 1 151 16
	lui	a5,%hi(.LC13)
	addi	a5,a5,%lo(.LC13)
.L20:
	.loc 1 153 1
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
	.size	wifi_mgmr_cipher_to_str, .-wifi_mgmr_cipher_to_str
	.section	.text.stateGlobalGuard_scan_beacon,"ax",@progbits
	.align	1
	.type	stateGlobalGuard_scan_beacon, @function
stateGlobalGuard_scan_beacon:
.LFB14:
	.loc 1 156 1
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
	.loc 1 159 12
	li	a5,-1
	sw	a5,-24(s0)
	.loc 1 159 24
	li	a5,-1
	sw	a5,-28(s0)
	.loc 1 160 14
	li	a5,-1
	sw	a5,-32(s0)
	.loc 1 161 14
	sw	zero,-40(s0)
	.loc 1 162 14
	sw	zero,-36(s0)
	.loc 1 166 9
	lw	a5,-56(s0)
	lw	a5,4(a5)
	sw	a5,-44(s0)
	.loc 1 167 10
	lw	a5,-44(s0)
	addi	a5,a5,13
	sw	a5,-48(s0)
	.loc 1 168 25
	lw	a5,-44(s0)
	lbu	a5,0(a5)
	.loc 1 168 15
	mv	a4,a5
	.loc 1 168 8
	lw	a5,-52(s0)
	beq	a5,a4,.L26
	.loc 1 169 16
	li	a5,0
	j	.L27
.L26:
	.loc 1 188 13
	lw	a5,-48(s0)
	lbu	a5,46(a5)
	mv	a3,a5
	.loc 1 188 33
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a5,2004(a5)
	.loc 1 188 8
	bgt	a3,a5,.L45
	.loc 1 188 55 discriminator 1
	lw	a5,-48(s0)
	lbu	a5,46(a5)
	.loc 1 188 47 discriminator 1
	beq	a5,zero,.L45
	.loc 1 191 24
	lw	a5,-48(s0)
	lbu	a5,0(a5)
	.loc 1 191 8
	bne	a5,zero,.L31
	.loc 1 191 33 discriminator 1
	li	a0,1
	call	_features_is_set
	mv	a5,a0
	.loc 1 191 28 discriminator 2
	beq	a5,zero,.L46
.L31:
	.loc 1 196 15
	call	xTaskGetTickCount
	sw	a0,-40(s0)
	.loc 1 197 12
	sw	zero,-20(s0)
	.loc 1 197 5
	j	.L32
.L41:
	.loc 1 198 34
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a5,698(a5)
	mv	a3,a5
	.loc 1 198 53
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a5,2004(a5)
	.loc 1 198 11
	ble	a3,a5,.L33
	.loc 1 199 20
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	addi	a4,a5,640
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	add	a5,a4,a5
	addi	a5,a5,12
	.loc 1 199 13
	li	a2,60
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 200 44
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	sb	zero,704(a5)
.L33:
	.loc 1 203 35
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a5,704(a5)
	.loc 1 203 12
	beq	a5,zero,.L34
	.loc 1 205 16
	lw	a5,-36(s0)
	beq	a5,zero,.L35
	.loc 1 206 49
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,708(a5)
	.loc 1 206 18
	mv	a4,a5
	.loc 1 206 71
	lw	a5,-32(s0)
	.loc 1 206 69
	sub	a5,a4,a5
	.loc 1 205 39 discriminator 1
	bge	a5,zero,.L36
.L35:
	.loc 1 207 32
	li	a5,1
	sw	a5,-36(s0)
	.loc 1 208 26
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,708(a5)
	sw	a5,-32(s0)
	.loc 1 209 24
	lw	a5,-20(s0)
	sw	a5,-28(s0)
.L36:
	.loc 1 213 51
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	addi	a4,a5,672
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	add	a5,a4,a5
	addi	a4,a5,20
	.loc 1 213 63
	lw	a5,-48(s0)
	addi	a5,a5,40
	.loc 1 213 22
	li	a2,6
	mv	a1,a5
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 1 213 16 discriminator 1
	bne	a5,zero,.L37
	.loc 1 214 37
	lw	a3,-48(s0)
	.loc 1 214 67
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	addi	a4,a5,640
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	add	a5,a4,a5
	addi	a5,a5,12
	.loc 1 214 26
	mv	a1,a5
	mv	a0,a3
	call	strcmp
	mv	a5,a0
	.loc 1 213 93 discriminator 2
	bne	a5,zero,.L37
	.loc 1 217 26
	lw	a5,-48(s0)
	lb	a3,47(a5)
	.loc 1 217 57
	lui	a5,%hi(wifiMgmr)
	addi	a2,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	lb	a5,699(a5)
	.loc 1 217 20
	bge	a3,a5,.L38
	.loc 1 218 31
	call	xTaskGetTickCount
	mv	a5,a0
	.loc 1 218 22 discriminator 1
	mv	a2,a5
	.loc 1 218 84 discriminator 1
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,708(a5)
	.loc 1 218 51 discriminator 1
	sub	a4,a2,a5
	.loc 1 217 64 discriminator 1
	li	a5,4096
	addi	a5,a5,-1097
	ble	a4,a5,.L44
.L38:
	.loc 1 224 58
	lw	a5,-48(s0)
	lbu	a3,46(a5)
	.loc 1 224 52
	lui	a5,%hi(wifiMgmr)
	addi	a2,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sb	a3,698(a5)
	.loc 1 225 55
	lw	a5,-48(s0)
	lb	a3,47(a5)
	.loc 1 225 49
	lui	a5,%hi(wifiMgmr)
	addi	a2,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sb	a3,699(a5)
	.loc 1 226 58
	lw	a5,-48(s0)
	lb	a3,48(a5)
	.loc 1 226 52
	lui	a5,%hi(wifiMgmr)
	addi	a2,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sb	a3,700(a5)
	.loc 1 227 58
	lw	a5,-48(s0)
	lb	a3,49(a5)
	.loc 1 227 52
	lui	a5,%hi(wifiMgmr)
	addi	a2,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sb	a3,701(a5)
	.loc 1 228 63
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,-40(s0)
	sw	a4,708(a5)
	.loc 1 229 55
	lw	a5,-48(s0)
	lbu	a3,50(a5)
	.loc 1 229 49
	lui	a5,%hi(wifiMgmr)
	addi	a2,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sb	a3,702(a5)
	.loc 1 230 57
	lw	a5,-48(s0)
	lbu	a3,51(a5)
	.loc 1 230 51
	lui	a5,%hi(wifiMgmr)
	addi	a2,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sb	a3,703(a5)
	.loc 1 232 17
	j	.L40
.L44:
	j	.L40
.L34:
	.loc 1 235 19
	lw	a5,-20(s0)
	sw	a5,-24(s0)
.L37:
	.loc 1 197 82 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L32:
	.loc 1 197 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,49
	bleu	a4,a5,.L41
.L40:
	.loc 1 238 8
	lw	a4,-20(s0)
	li	a5,50
	bne	a4,a5,.L47
	.loc 1 240 35
	lw	a4,-24(s0)
	li	a5,-1
	beq	a4,a5,.L42
	.loc 1 240 11 discriminator 1
	lw	a5,-24(s0)
	sw	a5,-20(s0)
	j	.L43
.L42:
	.loc 1 240 11 is_stmt 0 discriminator 2
	lw	a5,-28(s0)
	sw	a5,-20(s0)
.L43:
	.loc 1 241 12 is_stmt 1
	lw	a4,-20(s0)
	li	a5,-1
	beq	a4,a5,.L47
	.loc 1 242 20
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	addi	a4,a5,640
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	add	a5,a4,a5
	addi	a5,a5,12
	.loc 1 242 13
	li	a2,60
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 243 43
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	addi	a4,a5,640
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	add	a5,a4,a5
	addi	a5,a5,12
	.loc 1 243 54
	lw	a4,-48(s0)
	.loc 1 243 13
	li	a2,32
	mv	a1,a4
	mv	a0,a5
	call	strncpy
	.loc 1 244 49
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	sb	zero,684(a5)
	.loc 1 245 76
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	addi	a4,a5,640
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	add	a5,a4,a5
	addi	a5,a5,12
	.loc 1 245 47
	mv	a0,a5
	call	strlen
	mv	a2,a0
	.loc 1 245 45 discriminator 1
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a2,688(a5)
	.loc 1 246 42
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	addi	a4,a5,672
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	add	a5,a4,a5
	addi	a4,a5,20
	.loc 1 246 54
	lw	a5,-48(s0)
	addi	a5,a5,40
	.loc 1 246 13
	li	a2,6
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 1 247 50
	lw	a5,-48(s0)
	lbu	a3,46(a5)
	.loc 1 247 44
	lui	a5,%hi(wifiMgmr)
	addi	a2,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sb	a3,698(a5)
	.loc 1 248 47
	lw	a5,-48(s0)
	lb	a3,47(a5)
	.loc 1 248 41
	lui	a5,%hi(wifiMgmr)
	addi	a2,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sb	a3,699(a5)
	.loc 1 249 55
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,-40(s0)
	sw	a4,708(a5)
	.loc 1 250 47
	lw	a5,-48(s0)
	lbu	a3,50(a5)
	.loc 1 250 41
	lui	a5,%hi(wifiMgmr)
	addi	a2,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sb	a3,702(a5)
	.loc 1 251 49
	lw	a5,-48(s0)
	lbu	a3,51(a5)
	.loc 1 251 43
	lui	a5,%hi(wifiMgmr)
	addi	a2,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sb	a3,703(a5)
	.loc 1 252 44
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	li	a4,1
	sb	a4,704(a5)
	j	.L30
.L45:
	.loc 1 189 9
	nop
	j	.L30
.L46:
	.loc 1 192 9
	nop
	j	.L30
.L47:
	.loc 1 256 1
	nop
.L30:
	.loc 1 259 12
	li	a5,0
.L27:
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
.LFE14:
	.size	stateGlobalGuard_scan_beacon, .-stateGlobalGuard_scan_beacon
	.section	.rodata
	.align	2
.LC18:
	.string	"Disable Autoreconnect in Disconnec State\r\n"
	.align	2
.LC19:
	.string	"[WF][SM] Removing STA interface...\r\n"
	.align	2
.LC20:
	.string	"Disable Auto Reconnect\r\n"
	.section	.text.stateGlobalGuard_disable_autoreconnect,"ax",@progbits
	.align	1
	.type	stateGlobalGuard_disable_autoreconnect, @function
stateGlobalGuard_disable_autoreconnect:
.LFB15:
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
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 266 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 267 25
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 267 15
	mv	a4,a5
	.loc 1 267 8
	lw	a5,-36(s0)
	beq	a5,a4,.L49
	.loc 1 268 16
	li	a5,0
	j	.L50
.L49:
	.loc 1 271 39
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,1832(a5)
	.loc 1 271 8
	lui	a5,%hi(stateDisconnect)
	addi	a5,a5,%lo(stateDisconnect)
	bne	a4,a5,.L51
	.loc 1 272 9
	lui	a5,%hi(.LC18)
	addi	a0,a5,%lo(.LC18)
	call	printf
	.loc 1 273 9
	lui	a5,%hi(.LC19)
	addi	a0,a5,%lo(.LC19)
	call	printf
	.loc 1 274 9
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	lbu	a5,16(a5)
	mv	a0,a5
	call	bl_main_if_remove
	.loc 1 275 16
	li	a5,1
	j	.L50
.L51:
	.loc 1 278 5
	lui	a5,%hi(.LC20)
	addi	a0,a5,%lo(.LC20)
	call	printf
	.loc 1 279 5
	li	a1,-1
	lui	a5,%hi(wifiMgmr)
	addi	a0,a5,%lo(wifiMgmr)
	call	wifi_mgmr_profile_autoreconnect_disable
	.loc 1 282 12
	li	a5,0
.L50:
	.loc 1 283 1
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
.LFE15:
	.size	stateGlobalGuard_disable_autoreconnect, .-stateGlobalGuard_disable_autoreconnect
	.section	.rodata
	.align	2
.LC21:
	.string	"Enable Auto Reconnect\r\n"
	.section	.text.stateGlobalGuard_enable_autoreconnect,"ax",@progbits
	.align	1
	.type	stateGlobalGuard_enable_autoreconnect, @function
stateGlobalGuard_enable_autoreconnect:
.LFB16:
	.loc 1 286 1
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
	.loc 1 289 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 290 25
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 290 15
	mv	a4,a5
	.loc 1 290 8
	lw	a5,-36(s0)
	beq	a5,a4,.L53
	.loc 1 291 16
	li	a5,0
	j	.L54
.L53:
	.loc 1 295 5
	lui	a5,%hi(.LC21)
	addi	a0,a5,%lo(.LC21)
	call	printf
	.loc 1 296 5
	li	a1,-1
	lui	a5,%hi(wifiMgmr)
	addi	a0,a5,%lo(wifiMgmr)
	call	wifi_mgmr_profile_autoreconnect_enable
	.loc 1 299 12
	li	a5,0
.L54:
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
.LFE16:
	.size	stateGlobalGuard_enable_autoreconnect, .-stateGlobalGuard_enable_autoreconnect
	.section	.rodata
	.align	2
.LC22:
	.string	"Disconnect CMD\r\n"
	.section	.text.stateGlobalGuard_fw_disconnect,"ax",@progbits
	.align	1
	.type	stateGlobalGuard_fw_disconnect, @function
stateGlobalGuard_fw_disconnect:
.LFB17:
	.loc 1 303 1
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
	.loc 1 306 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 307 45
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 1 307 8
	li	a5,15
	bne	a4,a5,.L56
	.loc 1 308 9
	lui	a5,%hi(.LC22)
	addi	a0,a5,%lo(.LC22)
	call	printf
	.loc 1 309 9
	call	bl_main_disconnect
.L56:
	.loc 1 312 12
	li	a5,0
	.loc 1 313 1
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
	.size	stateGlobalGuard_fw_disconnect, .-stateGlobalGuard_fw_disconnect
	.section	.rodata
	.align	2
.LC23:
	.string	"------>>>>>> Powersaving CMD, mode: %u\r\n"
	.section	.text.stateGlobalGuard_fw_powersaving,"ax",@progbits
	.align	1
	.type	stateGlobalGuard_fw_powersaving, @function
stateGlobalGuard_fw_powersaving:
.LFB18:
	.loc 1 316 1
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
	.loc 1 319 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 320 46
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 1 320 8
	li	a5,16
	bne	a4,a5,.L59
	.loc 1 321 79
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	lbu	a3,2(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,3(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,4(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 321 9
	mv	a1,a5
	lui	a5,%hi(.LC23)
	addi	a0,a5,%lo(.LC23)
	call	printf
	.loc 1 323 37
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	lbu	a3,2(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,3(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,4(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 323 9
	mv	a0,a5
	call	bl_main_powersaving
.L59:
	.loc 1 326 12
	li	a5,0
	.loc 1 327 1
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
	.size	stateGlobalGuard_fw_powersaving, .-stateGlobalGuard_fw_powersaving
	.section	.rodata
	.align	2
.LC24:
	.string	"------>>>>>> Scan CMD Pending\r\n"
	.align	2
.LC25:
	.string	"------>>>>>> FW busy\r\n"
	.align	2
.LC26:
	.string	"------>>>>>> Scan CMD\r\n"
	.section	.text.stateGlobalGuard_fw_scan,"ax",@progbits
	.align	1
	.type	stateGlobalGuard_fw_scan, @function
stateGlobalGuard_fw_scan:
.LFB19:
	.loc 1 330 1
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
	.loc 1 333 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 335 39
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 1 335 8
	li	a5,18
	beq	a4,a5,.L62
	.loc 1 336 16
	li	a5,0
	j	.L63
.L62:
	.loc 1 340 39
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,1832(a5)
	.loc 1 340 8
	lui	a5,%hi(stateConnecting)
	addi	a5,a5,%lo(stateConnecting)
	beq	a4,a5,.L64
	.loc 1 341 46
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,1832(a5)
	.loc 1 340 53 discriminator 1
	lui	a5,%hi(stateConnectedIPNo)
	addi	a5,a5,%lo(stateConnectedIPNo)
	beq	a4,a5,.L64
	.loc 1 342 43
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,1832(a5)
	.loc 1 341 60
	lui	a5,%hi(stateDisconnect)
	addi	a5,a5,%lo(stateDisconnect)
	bne	a4,a5,.L65
.L64:
	.loc 1 343 13
	lui	a5,%hi(.LC24)
	addi	a0,a5,%lo(.LC24)
	call	printf
	.loc 1 344 13
	li	a0,1
	call	_pending_task_set
	.loc 1 345 20
	li	a5,0
	j	.L63
.L65:
	.loc 1 349 33
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,1832(a5)
	.loc 1 349 8
	lui	a5,%hi(stateIdle)
	addi	a5,a5,%lo(stateIdle)
	beq	a4,a5,.L66
	.loc 1 350 47
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,1832(a5)
	.loc 1 349 47 discriminator 1
	lui	a5,%hi(stateConnectedIPYes)
	addi	a5,a5,%lo(stateConnectedIPYes)
	beq	a4,a5,.L66
	.loc 1 351 40
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,1832(a5)
	.loc 1 350 61
	lui	a5,%hi(stateSniffer)
	addi	a5,a5,%lo(stateSniffer)
	beq	a4,a5,.L66
	.loc 1 352 13
	lui	a5,%hi(.LC25)
	addi	a0,a5,%lo(.LC25)
	call	printf
	.loc 1 353 13
	li	a2,1
	li	a1,9
	li	a0,2
	call	aos_post_event
	.loc 1 354 20
	li	a5,0
	j	.L63
.L66:
	.loc 1 358 5
	lui	a5,%hi(.LC26)
	addi	a0,a5,%lo(.LC26)
	call	printf
	.loc 1 359 5
	call	bl_main_scan
	.loc 1 361 12
	li	a5,0
.L63:
	.loc 1 362 1
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
.LFE19:
	.size	stateGlobalGuard_fw_scan, .-stateGlobalGuard_fw_scan
	.section	.rodata
	.align	2
.LC27:
	.string	"[WF][SM] Global Action\r\n"
	.section	.text.stateGlobalAction,"ax",@progbits
	.align	1
	.type	stateGlobalAction, @function
stateGlobalAction:
.LFB20:
	.loc 1 366 1
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
	.loc 1 367 5
	lui	a5,%hi(.LC27)
	addi	a0,a5,%lo(.LC27)
	call	printf
	.loc 1 368 1
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
.LFE20:
	.size	stateGlobalAction, .-stateGlobalAction
	.section	.rodata
	.align	2
.LC28:
	.string	"[WF][SM] Entering %s state\r\n"
	.section	.text.stateGlobalEnter,"ax",@progbits
	.align	1
	.type	stateGlobalEnter, @function
stateGlobalEnter:
.LFB21:
	.loc 1 371 1
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
	.loc 1 372 4
	lw	a1,-20(s0)
	lui	a5,%hi(.LC28)
	addi	a0,a5,%lo(.LC28)
	call	printf
	.loc 1 373 1
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
	.size	stateGlobalEnter, .-stateGlobalEnter
	.section	.text.stateGlobalExit,"ax",@progbits
	.align	1
	.type	stateGlobalExit, @function
stateGlobalExit:
.LFB22:
	.loc 1 376 1
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
	.loc 1 377 4
	lw	a1,-20(s0)
	lui	a5,%hi(.LC28)
	addi	a0,a5,%lo(.LC28)
	call	printf
	.loc 1 378 1
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
	.size	stateGlobalExit, .-stateGlobalExit
	.section	.text.stateSnifferGuard,"ax",@progbits
	.align	1
	.type	stateSnifferGuard, @function
stateSnifferGuard:
.LFB23:
	.loc 1 382 1
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
	.loc 1 385 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 386 25
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 386 15
	mv	a4,a5
	.loc 1 386 8
	lw	a5,-36(s0)
	bne	a5,a4,.L71
	.loc 1 387 16
	li	a5,1
	j	.L72
.L71:
	.loc 1 389 12
	li	a5,0
.L72:
	.loc 1 390 1
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
	.size	stateSnifferGuard, .-stateSnifferGuard
	.section	.rodata
	.align	2
.LC29:
	.string	"[WF][SM] State Action ###%s### --->>> ###%s###\r\n"
	.section	.text.stateSnifferAction,"ax",@progbits
	.align	1
	.type	stateSnifferAction, @function
stateSnifferAction:
.LFB24:
	.loc 1 394 1
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
	.loc 1 395 5
	lw	a2,-28(s0)
	lw	a1,-20(s0)
	lui	a5,%hi(.LC29)
	addi	a0,a5,%lo(.LC29)
	call	printf
	.loc 1 399 1
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
	.size	stateSnifferAction, .-stateSnifferAction
	.section	.text.stateSnifferGuard_ChannelSet,"ax",@progbits
	.align	1
	.type	stateSnifferGuard_ChannelSet, @function
stateSnifferGuard_ChannelSet:
.LFB25:
	.loc 1 402 1
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
	.loc 1 405 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 406 25
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 406 15
	mv	a4,a5
	.loc 1 406 8
	lw	a5,-36(s0)
	beq	a5,a4,.L75
	.loc 1 407 16
	li	a5,0
	j	.L76
.L75:
	.loc 1 410 41
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	lbu	a3,2(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,3(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,4(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 410 5
	mv	a2,a5
	.loc 1 410 58
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	lbu	a3,6(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,7(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,8(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 410 5
	mv	a1,a5
	mv	a0,a2
	call	bl_main_monitor_channel_set
	.loc 1 412 12
	li	a5,0
.L76:
	.loc 1 413 1
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
	.size	stateSnifferGuard_ChannelSet, .-stateSnifferGuard_ChannelSet
	.section	.text.stateSnifferGuard_raw_send,"ax",@progbits
	.align	1
	.type	stateSnifferGuard_raw_send, @function
stateSnifferGuard_raw_send:
.LFB26:
	.loc 1 416 1
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
	.loc 1 421 35
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,1832(a5)
	.loc 1 421 8
	lui	a5,%hi(stateIdle)
	addi	a5,a5,%lo(stateIdle)
	beq	a4,a5,.L78
	.loc 1 421 83 discriminator 1
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,1832(a5)
	.loc 1 421 49 discriminator 1
	lui	a5,%hi(stateIfaceDown)
	addi	a5,a5,%lo(stateIfaceDown)
	bne	a4,a5,.L79
.L78:
	.loc 1 423 16
	li	a5,0
	j	.L80
.L79:
	.loc 1 426 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 427 48
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 1 427 8
	li	a5,21
	bne	a4,a5,.L81
	.loc 1 428 13
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	lbu	a3,2(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,3(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,4(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 429 23
	lw	a5,-20(s0)
	lbu	a4,5(a5)
	lbu	a3,6(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,7(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,8(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 429 13
	sw	a5,-28(s0)
	.loc 1 431 9
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	bl_main_raw_send
.L81:
	.loc 1 434 12
	li	a5,0
.L80:
	.loc 1 435 1
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
	.size	stateSnifferGuard_raw_send, .-stateSnifferGuard_raw_send
	.section	.text.stateGlobal_cfg_req,"ax",@progbits
	.align	1
	.type	stateGlobal_cfg_req, @function
stateGlobal_cfg_req:
.LFB27:
	.loc 1 438 1
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
	.loc 1 442 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 443 42
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 1 443 8
	li	a5,22
	bne	a4,a5,.L83
	.loc 1 444 17
	lw	a5,-20(s0)
	addi	a5,a5,13
	sw	a5,-24(s0)
	.loc 1 445 9
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,2(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,3(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a0,a5
	lw	a5,-24(s0)
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a1,a5
	lw	a5,-24(s0)
	lbu	a4,8(a5)
	lbu	a3,9(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,10(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,11(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a2,a5
	lw	a5,-24(s0)
	lbu	a4,12(a5)
	lbu	a3,13(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,14(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,15(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a3,a5
	.loc 1 445 99
	lw	a5,-24(s0)
	addi	a4,a5,20
	.loc 1 445 9
	li	a5,0
	call	bl_main_cfg_task_req
.L83:
	.loc 1 448 12
	li	a5,0
	.loc 1 449 1
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
	.size	stateGlobal_cfg_req, .-stateGlobal_cfg_req
	.section	.text.stateSnifferEnter,"ax",@progbits
	.align	1
	.type	stateSnifferEnter, @function
stateSnifferEnter:
.LFB28:
	.loc 1 452 1
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
	.loc 1 454 5
	lw	a1,-20(s0)
	lui	a5,%hi(.LC28)
	addi	a0,a5,%lo(.LC28)
	call	printf
	.loc 1 455 1
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
.LFE28:
	.size	stateSnifferEnter, .-stateSnifferEnter
	.section	.rodata
	.align	2
.LC30:
	.string	"[WF][SM] Exiting %s state\r\n"
	.section	.text.stateSnifferExit,"ax",@progbits
	.align	1
	.type	stateSnifferExit, @function
stateSnifferExit:
.LFB29:
	.loc 1 458 1
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
	.loc 1 460 5
	lw	a1,-20(s0)
	lui	a5,%hi(.LC30)
	addi	a0,a5,%lo(.LC30)
	call	printf
	.loc 1 461 1
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
.LFE29:
	.size	stateSnifferExit, .-stateSnifferExit
	.section	.text.stateConnectingGuard,"ax",@progbits
	.align	1
	.type	stateConnectingGuard, @function
stateConnectingGuard:
.LFB30:
	.loc 1 465 1
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
	.loc 1 468 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 469 25
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 469 15
	mv	a4,a5
	.loc 1 469 8
	lw	a5,-36(s0)
	bne	a5,a4,.L88
	.loc 1 470 16
	li	a5,1
	j	.L89
.L88:
	.loc 1 472 12
	li	a5,0
.L89:
	.loc 1 473 1
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
.LFE30:
	.size	stateConnectingGuard, .-stateConnectingGuard
	.section	.text.stateConnectingAction_connected,"ax",@progbits
	.align	1
	.type	stateConnectingAction_connected, @function
stateConnectingAction_connected:
.LFB31:
	.loc 1 477 1
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
	.loc 1 478 5
	lw	a2,-28(s0)
	lw	a1,-20(s0)
	lui	a5,%hi(.LC29)
	addi	a0,a5,%lo(.LC29)
	call	printf
	.loc 1 482 1
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
	.size	stateConnectingAction_connected, .-stateConnectingAction_connected
	.section	.text.stateConnectingAction_disconnect,"ax",@progbits
	.align	1
	.type	stateConnectingAction_disconnect, @function
stateConnectingAction_disconnect:
.LFB32:
	.loc 1 486 1
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
	.loc 1 487 5
	lw	a2,-28(s0)
	lw	a1,-20(s0)
	lui	a5,%hi(.LC29)
	addi	a0,a5,%lo(.LC29)
	call	printf
	.loc 1 491 1
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
.LFE32:
	.size	stateConnectingAction_disconnect, .-stateConnectingAction_disconnect
	.section	.text.stateConnectingEnter,"ax",@progbits
	.align	1
	.type	stateConnectingEnter, @function
stateConnectingEnter:
.LFB33:
	.loc 1 494 1
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
	.loc 1 495 4
	lw	a1,-20(s0)
	lui	a5,%hi(.LC28)
	addi	a0,a5,%lo(.LC28)
	call	printf
	.loc 1 496 4
	li	a2,0
	li	a1,8
	li	a0,2
	call	aos_post_event
	.loc 1 497 1
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
.LFE33:
	.size	stateConnectingEnter, .-stateConnectingEnter
	.section	.text.stateConnectingExit,"ax",@progbits
	.align	1
	.type	stateConnectingExit, @function
stateConnectingExit:
.LFB34:
	.loc 1 500 1
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
	.loc 1 501 4
	lw	a1,-20(s0)
	lui	a5,%hi(.LC30)
	addi	a0,a5,%lo(.LC30)
	call	printf
	.loc 1 502 1
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
.LFE34:
	.size	stateConnectingExit, .-stateConnectingExit
	.section	.rodata
	.align	2
.LC31:
	.string	"[WF][SM] %s: add AP iface failed\r\n"
	.align	2
.LC32:
	.string	"[WF][SM] start AP with ssid %s;\r\n"
	.align	2
.LC33:
	.string	"[WF][SM]               pwd  %s;\r\n"
	.align	2
.LC34:
	.string	"[WF][SM]               channel  %ld;\r\n"
	.section	.text.stateGlobalGuard_AP,"ax",@progbits
	.align	1
	.type	stateGlobalGuard_AP, @function
stateGlobalGuard_AP:
.LFB35:
	.loc 1 505 1
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
	.loc 1 509 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 510 44
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 1 510 8
	li	a5,8
	beq	a4,a5,.L95
	.loc 1 511 16
	li	a5,0
	j	.L96
.L95:
	.loc 1 514 9
	lui	a5,%hi(wifiMgmr+136)
	addi	a2,a5,%lo(wifiMgmr+136)
	lui	a5,%hi(wifiMgmr+164)
	addi	a1,a5,%lo(wifiMgmr+164)
	li	a0,0
	call	bl_main_if_add
	mv	a5,a0
	.loc 1 514 8 discriminator 1
	beq	a5,zero,.L97
	.loc 1 515 9
	lui	a5,%hi(__func__.1)
	addi	a1,a5,%lo(__func__.1)
	lui	a5,%hi(.LC31)
	addi	a0,a5,%lo(.LC31)
	call	printf
	.loc 1 516 16
	li	a5,0
	j	.L96
.L97:
	.loc 1 518 5
	li	a2,0
	lui	a5,%hi(netif_set_link_up)
	addi	a1,a5,%lo(netif_set_link_up)
	lui	a5,%hi(wifiMgmr+164)
	addi	a0,a5,%lo(wifiMgmr+164)
	call	netifapi_netif_common
	.loc 1 520 5
	li	a2,0
	lui	a5,%hi(dhcpd_start)
	addi	a1,a5,%lo(dhcpd_start)
	lui	a5,%hi(wifiMgmr+164)
	addi	a0,a5,%lo(wifiMgmr+164)
	call	netifapi_netif_common
	.loc 1 522 8
	lw	a5,-20(s0)
	addi	a5,a5,13
	sw	a5,-24(s0)
	.loc 1 523 56
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 1 523 5
	mv	a1,a5
	lui	a5,%hi(.LC32)
	addi	a0,a5,%lo(.LC32)
	call	printf
	.loc 1 524 56
	lw	a5,-24(s0)
	addi	a5,a5,42
	.loc 1 524 5
	mv	a1,a5
	lui	a5,%hi(.LC33)
	addi	a0,a5,%lo(.LC33)
	call	printf
	.loc 1 525 5
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,2(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,3(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a1,a5
	lui	a5,%hi(.LC34)
	addi	a0,a5,%lo(.LC34)
	call	printf
	.loc 1 526 25
	lw	a5,-24(s0)
	addi	a0,a5,4
	.loc 1 526 35
	lw	a5,-24(s0)
	addi	a1,a5,42
	.loc 1 526 44
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,2(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,3(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a2,a5
	.loc 1 526 5
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	lbu	a3,136(a5)
	lw	a5,-24(s0)
	lbu	a5,37(a5)
	mv	a4,a5
	call	bl_main_apm_start
	.loc 1 527 29
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	li	a4,1
	sw	a4,8(a5)
	.loc 1 528 5
	call	dns_server_init
	.loc 1 529 5
	li	a2,0
	li	a1,11
	li	a0,2
	call	aos_post_event
	.loc 1 531 12
	li	a5,0
.L96:
	.loc 1 532 1
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
.LFE35:
	.size	stateGlobalGuard_AP, .-stateGlobalGuard_AP
	.section	.rodata
	.align	2
.LC35:
	.string	"[WF][SM] Stoping AP interface...\r\n"
	.align	2
.LC36:
	.string	"[WF][SM] Removing and deauth all sta client...\r\n"
	.align	2
.LC37:
	.string	"[WF][SM] Removing AP interface...\r\n"
	.align	2
.LC38:
	.string	"[WF][SM] Stopping DHCP on AP interface...\r\n"
	.align	2
.LC39:
	.string	"[WF][SM] Removing ETH interface ...\r\n"
	.section	.text.stateGlobalGuard_stop,"ax",@progbits
	.align	1
	.type	stateGlobalGuard_stop, @function
stateGlobalGuard_stop:
.LFB36:
	.loc 1 535 1
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
	.loc 1 538 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 539 43
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 1 539 8
	li	a5,9
	beq	a4,a5,.L99
	.loc 1 540 16
	li	a5,0
	j	.L100
.L99:
	.loc 1 543 5
	lui	a5,%hi(.LC35)
	addi	a0,a5,%lo(.LC35)
	call	printf
	.loc 1 544 5
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	lbu	a5,136(a5)
	mv	a0,a5
	call	bl_main_apm_stop
	.loc 1 545 5
	lui	a5,%hi(.LC36)
	addi	a0,a5,%lo(.LC36)
	call	printf
	.loc 1 546 5
	call	bl_main_apm_remove_all_sta
	.loc 1 547 5
	lui	a5,%hi(.LC37)
	addi	a0,a5,%lo(.LC37)
	call	printf
	.loc 1 548 5
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	lbu	a5,136(a5)
	mv	a0,a5
	call	bl_main_if_remove
	.loc 1 549 5
	lui	a5,%hi(.LC38)
	addi	a0,a5,%lo(.LC38)
	call	printf
	.loc 1 551 5
	lui	a5,%hi(dhcp_server_stop)
	addi	a2,a5,%lo(dhcp_server_stop)
	li	a1,0
	lui	a5,%hi(wifiMgmr+164)
	addi	a0,a5,%lo(wifiMgmr+164)
	call	netifapi_netif_common
	.loc 1 552 5
	lui	a5,%hi(.LC39)
	addi	a0,a5,%lo(.LC39)
	call	printf
	.loc 1 553 5
	li	a2,0
	lui	a5,%hi(netif_remove)
	addi	a1,a5,%lo(netif_remove)
	lui	a5,%hi(wifiMgmr+164)
	addi	a0,a5,%lo(wifiMgmr+164)
	call	netifapi_netif_common
	.loc 1 554 29
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	sw	zero,8(a5)
	.loc 1 555 5
	li	a2,0
	li	a1,12
	li	a0,2
	call	aos_post_event
	.loc 1 557 12
	li	a5,0
.L100:
	.loc 1 558 1
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
.LFE36:
	.size	stateGlobalGuard_stop, .-stateGlobalGuard_stop
	.section	.rodata
	.align	2
.LC40:
	.string	"[WF][SM] Conf max sta supported %lu...\r\n"
	.section	.text.stateGlobalGuard_conf_max_sta,"ax",@progbits
	.align	1
	.type	stateGlobalGuard_conf_max_sta, @function
stateGlobalGuard_conf_max_sta:
.LFB37:
	.loc 1 561 1
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
	.loc 1 564 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 565 48
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 1 565 8
	li	a5,10
	beq	a4,a5,.L102
	.loc 1 566 16
	li	a5,0
	j	.L103
.L102:
	.loc 1 569 74
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	lbu	a3,2(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,3(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,4(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 569 5
	mv	a1,a5
	lui	a5,%hi(.LC40)
	addi	a0,a5,%lo(.LC40)
	call	printf
	.loc 1 570 39
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	lbu	a3,2(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,3(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,4(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 570 5
	andi	a5,a5,0xff
	mv	a0,a5
	call	bl_main_conf_max_sta
	.loc 1 572 12
	li	a5,0
.L103:
	.loc 1 573 1
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
.LFE37:
	.size	stateGlobalGuard_conf_max_sta, .-stateGlobalGuard_conf_max_sta
	.section	.sbss.auto_repeat,"aw",@nobits
	.align	2
	.type	auto_repeat, @object
	.size	auto_repeat, 4
auto_repeat:
	.zero	4
	.section	.text.trigger_auto_denoise,"ax",@progbits
	.align	1
	.type	trigger_auto_denoise, @function
trigger_auto_denoise:
.LFB38:
	.loc 1 578 1
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
	.loc 1 580 9
	lui	a5,%hi(auto_repeat)
	lw	a5,%lo(auto_repeat)(a5)
	.loc 1 580 8
	beq	a5,zero,.L106
.LBB2:
	.loc 1 582 9
	call	wifi_mgmr_api_denoise_enable
	.loc 1 583 9
	li	a2,0
	lui	a5,%hi(trigger_auto_denoise)
	addi	a1,a5,%lo(trigger_auto_denoise)
	li	a0,85
	call	aos_post_delayed_action
.L106:
.LBE2:
	.loc 1 585 1
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
.LFE38:
	.size	trigger_auto_denoise, .-trigger_auto_denoise
	.section	.text.stateGlobalGuard_denoise,"ax",@progbits
	.align	1
	.type	stateGlobalGuard_denoise, @function
stateGlobalGuard_denoise:
.LFB39:
	.loc 1 588 1
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
	.loc 1 591 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 592 43
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 1 592 8
	li	a5,12
	beq	a4,a5,.L108
	.loc 1 593 16
	li	a5,0
	j	.L109
.L108:
	.loc 1 596 12
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	lbu	a3,2(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,3(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,4(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 596 8
	beq	a5,zero,.L110
	.loc 1 599 47
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,1832(a5)
	.loc 1 599 12
	lui	a5,%hi(stateConnectedIPYes)
	addi	a5,a5,%lo(stateConnectedIPYes)
	bne	a4,a5,.L111
	.loc 1 601 17
	lui	a5,%hi(auto_repeat)
	lw	a5,%lo(auto_repeat)(a5)
	.loc 1 601 16
	beq	a5,zero,.L112
	.loc 1 603 17
	li	a0,3
	call	bl_main_denoise
	j	.L111
.L112:
	.loc 1 606 29
	lui	a5,%hi(auto_repeat)
	li	a4,1
	sw	a4,%lo(auto_repeat)(a5)
	.loc 1 607 17
	li	a0,1
	call	bl_main_denoise
	.loc 1 608 17
	li	a2,0
	li	a1,20
	li	a0,2
	call	aos_post_event
	j	.L111
.L110:
	.loc 1 613 21
	lui	a5,%hi(auto_repeat)
	sw	zero,%lo(auto_repeat)(a5)
	.loc 1 614 9
	li	a0,0
	call	bl_main_denoise
.L111:
	.loc 1 617 12
	li	a5,0
.L109:
	.loc 1 618 1
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
	.size	stateGlobalGuard_denoise, .-stateGlobalGuard_denoise
	.section	.data.__compound_literal.0,"aw"
	.align	2
	.type	__compound_literal.0, @object
	.size	__compound_literal.0, 240
__compound_literal.0:
	.word	2
	.word	24
	.word	stateGlobalGuard_scan_beacon
	.word	stateGlobalAction
	.word	stateIdle
	.word	2
	.word	28
	.word	stateGlobalGuard_disable_autoreconnect
	.word	stateGlobalAction
	.word	stateIdle
	.word	2
	.word	29
	.word	stateGlobalGuard_enable_autoreconnect
	.word	stateGlobalAction
	.word	stateIdle
	.word	1
	.word	8
	.word	stateGlobalGuard_AP
	.word	stateGlobalAction
	.word	stateIdle
	.word	1
	.word	9
	.word	stateGlobalGuard_stop
	.word	stateGlobalAction
	.word	stateIdle
	.word	1
	.word	10
	.word	stateGlobalGuard_conf_max_sta
	.word	stateGlobalAction
	.word	stateIdle
	.word	1
	.word	12
	.word	stateGlobalGuard_denoise
	.word	stateGlobalAction
	.word	stateIdle
	.word	0
	.word	15
	.word	stateGlobalGuard_fw_disconnect
	.word	stateGlobalAction
	.word	stateIdle
	.word	0
	.word	16
	.word	stateGlobalGuard_fw_powersaving
	.word	stateGlobalAction
	.word	stateIdle
	.word	0
	.word	18
	.word	stateGlobalGuard_fw_scan
	.word	stateGlobalAction
	.word	stateIdle
	.word	0
	.word	21
	.word	stateSnifferGuard_raw_send
	.word	stateGlobalAction
	.word	stateIdle
	.word	0
	.word	22
	.word	stateGlobal_cfg_req
	.word	stateGlobalAction
	.word	stateIdle
	.section	.data.__compound_literal.1,"aw"
	.align	2
	.type	__compound_literal.1, @object
	.size	__compound_literal.1, 40
__compound_literal.1:
	.word	1
	.word	0
	.word	stateSnifferGuard
	.word	stateSnifferAction
	.word	stateIdle
	.word	0
	.word	17
	.word	stateSnifferGuard_ChannelSet
	.word	stateSnifferAction
	.word	stateIdle
	.section	.data.__compound_literal.2,"aw"
	.align	2
	.type	__compound_literal.2, @object
	.size	__compound_literal.2, 40
__compound_literal.2:
	.word	0
	.word	20
	.word	stateConnectingGuard
	.word	stateConnectingAction_connected
	.word	stateConnectedIPNo
	.word	0
	.word	19
	.word	stateConnectingGuard
	.word	stateConnectingAction_disconnect
	.word	stateDisconnect
	.section	.rodata
	.align	2
.LC41:
	.string	"[WF][SM] %s: add STA iface failed\r\n"
	.section	.text.stateIdleGuard_connect,"ax",@progbits
	.align	1
	.type	stateIdleGuard_connect, @function
stateIdleGuard_connect:
.LFB40:
	.loc 1 675 1
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
	.loc 1 678 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 679 25
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 679 15
	mv	a4,a5
	.loc 1 679 8
	lw	a5,-36(s0)
	beq	a5,a4,.L114
	.loc 1 680 16
	li	a5,0
	j	.L115
.L114:
	.loc 1 682 9
	lui	a5,%hi(wifiMgmr+16)
	addi	a2,a5,%lo(wifiMgmr+16)
	lui	a5,%hi(wifiMgmr+44)
	addi	a1,a5,%lo(wifiMgmr+44)
	li	a0,1
	call	bl_main_if_add
	mv	a5,a0
	.loc 1 682 8 discriminator 1
	beq	a5,zero,.L116
	.loc 1 683 9
	lui	a5,%hi(__func__.0)
	addi	a1,a5,%lo(__func__.0)
	lui	a5,%hi(.LC41)
	addi	a0,a5,%lo(.LC41)
	call	printf
	.loc 1 684 16
	li	a5,0
	j	.L115
.L116:
	.loc 1 686 12
	li	a5,1
.L115:
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
.LFE40:
	.size	stateIdleGuard_connect, .-stateIdleGuard_connect
	.section	.text.stateIdleGuard_sniffer,"ax",@progbits
	.align	1
	.type	stateIdleGuard_sniffer, @function
stateIdleGuard_sniffer:
.LFB41:
	.loc 1 690 1
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
	.loc 1 693 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 694 25
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 694 15
	mv	a4,a5
	.loc 1 694 8
	lw	a5,-36(s0)
	beq	a5,a4,.L118
	.loc 1 695 16
	li	a5,0
	j	.L119
.L118:
	.loc 1 698 5
	call	bl_main_monitor
	.loc 1 699 12
	li	a5,1
.L119:
	.loc 1 700 1
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
	.size	stateIdleGuard_sniffer, .-stateIdleGuard_sniffer
	.section	.rodata
	.align	2
.LC42:
	.string	"[WF][SM] Action Connect\r\n"
	.align	2
.LC43:
	.string	"           ssid %s\r\n"
	.align	2
.LC44:
	.string	"           ssid len %u\r\n"
	.align	2
.LC45:
	.string	"           psk %s\r\n"
	.align	2
.LC46:
	.string	"           psk len %u\r\n"
	.align	2
.LC47:
	.string	"           pmk %s\r\n"
	.align	2
.LC48:
	.string	"           pmk len %u\r\n"
	.align	2
.LC49:
	.string	"           channel band %d\r\n"
	.align	2
.LC50:
	.string	"           channel freq %d\r\n"
	.align	2
.LC51:
	.string	"           mac %02X:%02X:%02X:%02X:%02X:%02X\r\n"
	.align	2
.LC52:
	.string	"true"
	.align	2
.LC53:
	.string	"false"
	.align	2
.LC54:
	.string	"           dhcp status: %s\r\n"
	.section	.text.stateIdleAction_connect,"ax",@progbits
	.align	1
	.type	stateIdleAction_connect, @function
stateIdleAction_connect:
.LFB42:
	.loc 1 704 1
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
	.loc 1 708 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 709 17
	lw	a5,-20(s0)
	addi	a5,a5,13
	sw	a5,-24(s0)
	.loc 1 710 31
	lw	a5,-24(s0)
	sb	zero,32(a5)
	.loc 1 711 30
	lw	a5,-24(s0)
	sb	zero,101(a5)
	.loc 1 712 5
	lui	a5,%hi(.LC42)
	addi	a0,a5,%lo(.LC42)
	call	printf
	.loc 1 713 49
	lw	a5,-24(s0)
	.loc 1 713 5
	mv	a1,a5
	lui	a5,%hi(.LC43)
	addi	a0,a5,%lo(.LC43)
	call	printf
	.loc 1 714 67
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
	.loc 1 714 5
	mv	a1,a5
	lui	a5,%hi(.LC44)
	addi	a0,a5,%lo(.LC44)
	call	printf
	.loc 1 715 48
	lw	a5,-24(s0)
	addi	a5,a5,37
	.loc 1 715 5
	mv	a1,a5
	lui	a5,%hi(.LC45)
	addi	a0,a5,%lo(.LC45)
	call	printf
	.loc 1 716 66
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
	.loc 1 716 5
	mv	a1,a5
	lui	a5,%hi(.LC46)
	addi	a0,a5,%lo(.LC46)
	call	printf
	.loc 1 717 48
	lw	a5,-24(s0)
	addi	a5,a5,102
	.loc 1 717 5
	mv	a1,a5
	lui	a5,%hi(.LC47)
	addi	a0,a5,%lo(.LC47)
	call	printf
	.loc 1 718 66
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
	.loc 1 718 5
	mv	a1,a5
	lui	a5,%hi(.LC48)
	addi	a0,a5,%lo(.LC48)
	call	printf
	.loc 1 719 66
	lw	a5,-24(s0)
	lbu	a5,181(a5)
	.loc 1 719 5
	mv	a1,a5
	lui	a5,%hi(.LC49)
	addi	a0,a5,%lo(.LC49)
	call	printf
	.loc 1 720 67
	lw	a5,-24(s0)
	lbu	a4,182(a5)
	lbu	a5,183(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 720 5
	mv	a1,a5
	lui	a5,%hi(.LC50)
	addi	a0,a5,%lo(.LC50)
	call	printf
	.loc 1 721 80
	lw	a5,-24(s0)
	lbu	a5,180(a5)
	.loc 1 721 5
	mv	a1,a5
	.loc 1 721 101
	lw	a5,-24(s0)
	lbu	a5,179(a5)
	.loc 1 721 5
	mv	a2,a5
	.loc 1 721 122
	lw	a5,-24(s0)
	lbu	a5,178(a5)
	.loc 1 721 5
	mv	a3,a5
	.loc 1 721 143
	lw	a5,-24(s0)
	lbu	a5,177(a5)
	.loc 1 721 5
	mv	a4,a5
	.loc 1 721 164
	lw	a5,-24(s0)
	lbu	a5,176(a5)
	.loc 1 721 5
	mv	a0,a5
	.loc 1 721 185
	lw	a5,-24(s0)
	lbu	a5,175(a5)
	.loc 1 721 5
	mv	a6,a5
	mv	a5,a0
	lui	a0,%hi(.LC51)
	addi	a0,a0,%lo(.LC51)
	call	printf
	.loc 1 729 57
	lw	a5,-24(s0)
	lbu	a5,184(a5)
	.loc 1 729 5
	beq	a5,zero,.L121
	.loc 1 729 5 is_stmt 0 discriminator 1
	lui	a5,%hi(.LC52)
	addi	a5,a5,%lo(.LC52)
	j	.L122
.L121:
	.loc 1 729 5 discriminator 2
	lui	a5,%hi(.LC53)
	addi	a5,a5,%lo(.LC53)
.L122:
	.loc 1 729 5 discriminator 4
	mv	a1,a5
	lui	a5,%hi(.LC54)
	addi	a0,a5,%lo(.LC54)
	call	printf
	.loc 1 730 5 is_stmt 1
	li	a2,-1
	lw	a1,-24(s0)
	lui	a5,%hi(wifiMgmr)
	addi	a0,a5,%lo(wifiMgmr)
	call	wifi_mgmr_profile_add
	.loc 1 732 5
	lw	a2,-44(s0)
	lw	a1,-36(s0)
	lui	a5,%hi(.LC29)
	addi	a0,a5,%lo(.LC29)
	call	printf
	.loc 1 738 38
	lw	a0,-24(s0)
	.loc 1 738 68
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
	.loc 1 738 5
	mv	t1,a5
	.loc 1 739 30
	lw	a5,-24(s0)
	addi	a2,a5,37
	.loc 1 739 59
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
	.loc 1 738 5
	mv	t3,a5
	.loc 1 740 30
	lw	a5,-24(s0)
	addi	a1,a5,102
	.loc 1 740 59
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
	.loc 1 738 5
	mv	t4,a5
	.loc 1 741 30
	lw	a5,-24(s0)
	addi	a3,a5,175
	.loc 1 742 39
	lw	a5,-24(s0)
	lbu	a6,181(a5)
	.loc 1 743 40
	lw	a5,-24(s0)
	lbu	a4,182(a5)
	lbu	a5,183(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 738 5
	sw	a5,0(sp)
	mv	a7,a6
	mv	a6,a3
	mv	a5,t4
	mv	a4,a1
	mv	a3,t3
	mv	a1,t1
	call	bl_main_connect
	.loc 1 745 1
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
.LFE42:
	.size	stateIdleAction_connect, .-stateIdleAction_connect
	.section	.text.stateIdleAction_sniffer,"ax",@progbits
	.align	1
	.type	stateIdleAction_sniffer, @function
stateIdleAction_sniffer:
.LFB43:
	.loc 1 749 1
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
	.loc 1 750 5
	lw	a2,-28(s0)
	lw	a1,-20(s0)
	lui	a5,%hi(.LC29)
	addi	a0,a5,%lo(.LC29)
	call	printf
	.loc 1 754 1
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
.LFE43:
	.size	stateIdleAction_sniffer, .-stateIdleAction_sniffer
	.section	.text.stateIdleEnter,"ax",@progbits
	.align	1
	.type	stateIdleEnter, @function
stateIdleEnter:
.LFB44:
	.loc 1 757 1
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
	.loc 1 758 4
	lw	a1,-20(s0)
	lui	a5,%hi(.LC28)
	addi	a0,a5,%lo(.LC28)
	call	printf
	.loc 1 759 1
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
.LFE44:
	.size	stateIdleEnter, .-stateIdleEnter
	.section	.text.stateIdleExit,"ax",@progbits
	.align	1
	.type	stateIdleExit, @function
stateIdleExit:
.LFB45:
	.loc 1 762 1
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
	.loc 1 763 4
	lw	a1,-20(s0)
	lui	a5,%hi(.LC28)
	addi	a0,a5,%lo(.LC28)
	call	printf
	.loc 1 764 1
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
.LFE45:
	.size	stateIdleExit, .-stateIdleExit
	.section	.data.__compound_literal.3,"aw"
	.align	2
	.type	__compound_literal.3, @object
	.size	__compound_literal.3, 40
__compound_literal.3:
	.word	1
	.word	1
	.word	stateIdleGuard_connect
	.word	stateIdleAction_connect
	.word	stateConnecting
	.word	1
	.word	2
	.word	stateIdleGuard_sniffer
	.word	stateIdleAction_sniffer
	.word	stateSniffer
	.section	.rodata
	.align	2
.LC55:
	.string	"[WF][SM] state mismatch\r\n"
	.section	.text.stateIfaceDownGuard_phyup,"ax",@progbits
	.align	1
	.type	stateIfaceDownGuard_phyup, @function
stateIfaceDownGuard_phyup:
.LFB46:
	.loc 1 784 1
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
	.loc 1 788 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 789 25
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 789 15
	mv	a4,a5
	.loc 1 789 8
	lw	a5,-36(s0)
	beq	a5,a4,.L127
	.loc 1 790 9
	lui	a5,%hi(.LC55)
	addi	a0,a5,%lo(.LC55)
	call	printf
	.loc 1 791 16
	li	a5,0
	j	.L128
.L127:
	.loc 1 795 13
	call	bl_main_phy_up
	sw	a0,-24(s0)
	.loc 1 796 8
	lw	a5,-24(s0)
	beq	a5,zero,.L129
	.loc 1 797 16
	li	a5,0
	j	.L128
.L129:
	.loc 1 799 12
	li	a5,1
.L128:
	.loc 1 800 1
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
	.size	stateIfaceDownGuard_phyup, .-stateIfaceDownGuard_phyup
	.section	.text.stateIfaceDownAction_phyup,"ax",@progbits
	.align	1
	.type	stateIfaceDownAction_phyup, @function
stateIfaceDownAction_phyup:
.LFB47:
	.loc 1 804 1
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
	.loc 1 805 5
	lw	a2,-28(s0)
	lw	a1,-20(s0)
	lui	a5,%hi(.LC29)
	addi	a0,a5,%lo(.LC29)
	call	printf
	.loc 1 809 1
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
.LFE47:
	.size	stateIfaceDownAction_phyup, .-stateIfaceDownAction_phyup
	.section	.text.stateIfaceDownEnter,"ax",@progbits
	.align	1
	.type	stateIfaceDownEnter, @function
stateIfaceDownEnter:
.LFB48:
	.loc 1 812 1
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
	.loc 1 813 5
	lw	a1,-20(s0)
	lui	a5,%hi(.LC28)
	addi	a0,a5,%lo(.LC28)
	call	printf
	.loc 1 814 1
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
.LFE48:
	.size	stateIfaceDownEnter, .-stateIfaceDownEnter
	.section	.text.stateIfaceDownExit,"ax",@progbits
	.align	1
	.type	stateIfaceDownExit, @function
stateIfaceDownExit:
.LFB49:
	.loc 1 817 1
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
	.loc 1 818 5
	lw	a1,-20(s0)
	lui	a5,%hi(.LC30)
	addi	a0,a5,%lo(.LC30)
	call	printf
	.loc 1 819 1
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
.LFE49:
	.size	stateIfaceDownExit, .-stateIfaceDownExit
	.section	.data.__compound_literal.4,"aw"
	.align	2
	.type	__compound_literal.4, @object
	.size	__compound_literal.4, 20
__compound_literal.4:
	.word	1
	.word	7
	.word	stateIfaceDownGuard_phyup
	.word	stateIfaceDownAction_phyup
	.word	stateIdle
	.section	.data.stateConnectedIPNo_data,"aw"
	.align	2
	.type	stateConnectedIPNo_data, @object
	.size	stateConnectedIPNo_data, 76
stateConnectedIPNo_data:
	.string	"wifiConnected_ipObtaining"
	.zero	6
	.zero	44
	.section	.data.state_tsen_reload_data,"aw"
	.align	2
	.type	state_tsen_reload_data, @object
	.size	state_tsen_reload_data, 76
state_tsen_reload_data:
	.string	"wifi tsen reload"
	.zero	15
	.zero	44
	.section	.text.stateConnectedIPNoGuard,"ax",@progbits
	.align	1
	.type	stateConnectedIPNoGuard, @function
stateConnectedIPNoGuard:
.LFB50:
	.loc 1 854 1
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
	.loc 1 857 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 858 25
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 858 15
	mv	a4,a5
	.loc 1 858 8
	lw	a5,-36(s0)
	bne	a5,a4,.L134
	.loc 1 859 16
	li	a5,1
	j	.L135
.L134:
	.loc 1 861 12
	li	a5,0
.L135:
	.loc 1 862 1
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
	.size	stateConnectedIPNoGuard, .-stateConnectedIPNoGuard
	.section	.text.stateConnectedIPNoGuard_disconnect,"ax",@progbits
	.align	1
	.type	stateConnectedIPNoGuard_disconnect, @function
stateConnectedIPNoGuard_disconnect:
.LFB51:
	.loc 1 865 1
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
	.loc 1 868 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 869 25
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 869 15
	mv	a4,a5
	.loc 1 869 8
	lw	a5,-36(s0)
	beq	a5,a4,.L137
	.loc 1 870 16
	li	a5,0
	j	.L138
.L137:
	.loc 1 873 5
	call	bl_main_disconnect
	.loc 1 875 12
	li	a5,0
.L138:
	.loc 1 876 1
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
.LFE51:
	.size	stateConnectedIPNoGuard_disconnect, .-stateConnectedIPNoGuard_disconnect
	.section	.rodata
	.align	2
.LC56:
	.string	"[WF][SM] IP GOT IP:%u.%u.%u.%u, MASK: %u.%u.%u.%u, Gateway: %u.%u.%u.%u, dns1: %u.%u.%u.%u, dns2: %u.%u.%u.%u\r\n"
	.section	.text.stateConnectedIPNoAction_ipgot,"ax",@progbits
	.align	1
	.type	stateConnectedIPNoAction_ipgot, @function
stateConnectedIPNoAction_ipgot:
.LFB52:
	.loc 1 880 1
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	ra,140(sp)
	sw	s0,136(sp)
	sw	s1,132(sp)
	sw	s2,128(sp)
	sw	s3,124(sp)
	sw	s4,120(sp)
	sw	s5,116(sp)
	sw	s6,112(sp)
	sw	s7,108(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	.loc 1 885 9
	lw	a5,-72(s0)
	lw	a5,4(a5)
	sw	a5,-52(s0)
	.loc 1 886 11
	lw	a5,-52(s0)
	addi	a5,a5,13
	sw	a5,-56(s0)
	.loc 1 887 165
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,2(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,3(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 887 5
	andi	s1,a5,255
	.loc 1 887 212
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,2(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,3(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 887 231
	srli	a5,a5,8
	.loc 1 887 5
	andi	s2,a5,255
	.loc 1 887 259
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,2(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,3(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 887 278
	srli	a5,a5,16
	.loc 1 887 5
	andi	s3,a5,255
	.loc 1 887 307
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,2(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,3(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 887 326
	srli	s4,a5,24
	.loc 1 887 355
	lw	a5,-56(s0)
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 887 5
	andi	s5,a5,255
	.loc 1 887 404
	lw	a5,-56(s0)
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 887 425
	srli	a5,a5,8
	.loc 1 887 5
	andi	s6,a5,255
	.loc 1 887 453
	lw	a5,-56(s0)
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 887 474
	srli	a5,a5,16
	.loc 1 887 5
	andi	s7,a5,255
	.loc 1 887 503
	lw	a5,-56(s0)
	lbu	a4,4(a5)
	lbu	a3,5(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,6(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,7(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 887 524
	srli	a4,a5,24
	.loc 1 887 553
	lw	a5,-56(s0)
	lbu	a3,8(a5)
	lbu	a2,9(a5)
	slli	a2,a2,8
	or	a3,a2,a3
	lbu	a2,10(a5)
	slli	a2,a2,16
	or	a3,a2,a3
	lbu	a5,11(a5)
	slli	a5,a5,24
	or	a5,a5,a3
	.loc 1 887 5
	andi	a3,a5,255
	.loc 1 887 600
	lw	a5,-56(s0)
	lbu	a2,8(a5)
	lbu	a1,9(a5)
	slli	a1,a1,8
	or	a2,a1,a2
	lbu	a1,10(a5)
	slli	a1,a1,16
	or	a2,a1,a2
	lbu	a5,11(a5)
	slli	a5,a5,24
	or	a5,a5,a2
	.loc 1 887 619
	srli	a5,a5,8
	.loc 1 887 5
	andi	a2,a5,255
	.loc 1 887 647
	lw	a5,-56(s0)
	lbu	a1,8(a5)
	lbu	a0,9(a5)
	slli	a0,a0,8
	or	a1,a0,a1
	lbu	a0,10(a5)
	slli	a0,a0,16
	or	a1,a0,a1
	lbu	a5,11(a5)
	slli	a5,a5,24
	or	a5,a5,a1
	.loc 1 887 666
	srli	a5,a5,16
	.loc 1 887 5
	andi	a1,a5,255
	.loc 1 887 695
	lw	a5,-56(s0)
	lbu	a0,8(a5)
	lbu	a6,9(a5)
	slli	a6,a6,8
	or	a0,a6,a0
	lbu	a6,10(a5)
	slli	a6,a6,16
	or	a0,a6,a0
	lbu	a5,11(a5)
	slli	a5,a5,24
	or	a5,a5,a0
	.loc 1 887 714
	srli	a0,a5,24
	.loc 1 887 743
	lw	a5,-56(s0)
	lbu	a6,12(a5)
	lbu	a7,13(a5)
	slli	a7,a7,8
	or	a6,a7,a6
	lbu	a7,14(a5)
	slli	a7,a7,16
	or	a6,a7,a6
	lbu	a5,15(a5)
	slli	a5,a5,24
	or	a5,a5,a6
	.loc 1 887 5
	andi	a6,a5,255
	.loc 1 887 792
	lw	a5,-56(s0)
	lbu	a7,12(a5)
	lbu	t1,13(a5)
	slli	t1,t1,8
	or	a7,t1,a7
	lbu	t1,14(a5)
	slli	t1,t1,16
	or	a7,t1,a7
	lbu	a5,15(a5)
	slli	a5,a5,24
	or	a5,a5,a7
	.loc 1 887 813
	srli	a5,a5,8
	.loc 1 887 5
	andi	a7,a5,255
	.loc 1 887 841
	lw	a5,-56(s0)
	lbu	t1,12(a5)
	lbu	t3,13(a5)
	slli	t3,t3,8
	or	t1,t3,t1
	lbu	t3,14(a5)
	slli	t3,t3,16
	or	t1,t3,t1
	lbu	a5,15(a5)
	slli	a5,a5,24
	or	a5,a5,t1
	.loc 1 887 862
	srli	a5,a5,16
	.loc 1 887 5
	andi	t1,a5,255
	.loc 1 887 891
	lw	a5,-56(s0)
	lbu	t3,12(a5)
	lbu	t4,13(a5)
	slli	t4,t4,8
	or	t3,t4,t3
	lbu	t4,14(a5)
	slli	t4,t4,16
	or	t3,t4,t3
	lbu	a5,15(a5)
	slli	a5,a5,24
	or	a5,a5,t3
	.loc 1 887 912
	srli	t3,a5,24
	.loc 1 887 941
	lw	a5,-56(s0)
	lbu	t4,16(a5)
	lbu	t5,17(a5)
	slli	t5,t5,8
	or	t4,t5,t4
	lbu	t5,18(a5)
	slli	t5,t5,16
	or	t4,t5,t4
	lbu	a5,19(a5)
	slli	a5,a5,24
	or	a5,a5,t4
	.loc 1 887 5
	andi	t4,a5,255
	.loc 1 887 990
	lw	a5,-56(s0)
	lbu	t5,16(a5)
	lbu	t6,17(a5)
	slli	t6,t6,8
	or	t5,t6,t5
	lbu	t6,18(a5)
	slli	t6,t6,16
	or	t5,t6,t5
	lbu	a5,19(a5)
	slli	a5,a5,24
	or	a5,a5,t5
	.loc 1 887 1011
	srli	a5,a5,8
	.loc 1 887 5
	andi	t5,a5,255
	.loc 1 887 1039
	lw	a5,-56(s0)
	lbu	t6,16(a5)
	lbu	t0,17(a5)
	slli	t0,t0,8
	or	t6,t0,t6
	lbu	t0,18(a5)
	slli	t0,t0,16
	or	t6,t0,t6
	lbu	a5,19(a5)
	slli	a5,a5,24
	or	a5,a5,t6
	.loc 1 887 1060
	srli	a5,a5,16
	.loc 1 887 5
	andi	t6,a5,255
	.loc 1 887 1089
	lw	a5,-56(s0)
	lbu	t0,16(a5)
	lbu	t2,17(a5)
	slli	t2,t2,8
	or	t0,t2,t0
	lbu	t2,18(a5)
	slli	t2,t2,16
	or	t0,t2,t0
	lbu	a5,19(a5)
	slli	a5,a5,24
	or	a5,a5,t0
	.loc 1 887 1110
	srli	a5,a5,24
	.loc 1 887 5
	sw	a5,48(sp)
	sw	t6,44(sp)
	sw	t5,40(sp)
	sw	t4,36(sp)
	sw	t3,32(sp)
	sw	t1,28(sp)
	sw	a7,24(sp)
	sw	a6,20(sp)
	sw	a0,16(sp)
	sw	a1,12(sp)
	sw	a2,8(sp)
	sw	a3,4(sp)
	sw	a4,0(sp)
	mv	a7,s7
	mv	a6,s6
	mv	a5,s5
	mv	a4,s4
	mv	a3,s3
	mv	a2,s2
	mv	a1,s1
	lui	a0,%hi(.LC56)
	addi	a0,a0,%lo(.LC56)
	call	printf
	.loc 1 914 5
	lw	a2,-76(s0)
	lw	a1,-68(s0)
	lui	a5,%hi(.LC29)
	addi	a0,a5,%lo(.LC29)
	call	printf
	.loc 1 918 1
	nop
	lw	ra,140(sp)
	.cfi_restore 1
	lw	s0,136(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	lw	s1,132(sp)
	.cfi_restore 9
	lw	s2,128(sp)
	.cfi_restore 18
	lw	s3,124(sp)
	.cfi_restore 19
	lw	s4,120(sp)
	.cfi_restore 20
	lw	s5,116(sp)
	.cfi_restore 21
	lw	s6,112(sp)
	.cfi_restore 22
	lw	s7,108(sp)
	.cfi_restore 23
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE52:
	.size	stateConnectedIPNoAction_ipgot, .-stateConnectedIPNoAction_ipgot
	.section	.text.stateConnectedIPNoAction_disconnect,"ax",@progbits
	.align	1
	.type	stateConnectedIPNoAction_disconnect, @function
stateConnectedIPNoAction_disconnect:
.LFB53:
	.loc 1 922 1
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
	.loc 1 923 5
	lw	a2,-28(s0)
	lw	a1,-20(s0)
	lui	a5,%hi(.LC29)
	addi	a0,a5,%lo(.LC29)
	call	printf
	.loc 1 927 1
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
.LFE53:
	.size	stateConnectedIPNoAction_disconnect, .-stateConnectedIPNoAction_disconnect
	.section	.rodata
	.align	2
.LC57:
	.string	"[WF][SM] IP obtaining timeout\r\n"
	.section	.text.ip_obtaining_timeout,"ax",@progbits
	.align	1
	.type	ip_obtaining_timeout, @function
ip_obtaining_timeout:
.LFB54:
	.loc 1 930 1
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
	.loc 1 931 38
	lw	a0,-36(s0)
	call	pvTimerGetTimerID
	sw	a0,-20(s0)
	.loc 1 936 5
	lui	a5,%hi(.LC57)
	addi	a0,a5,%lo(.LC57)
	call	printf
	.loc 1 937 5
	call	wifi_mgmr_api_fw_disconnect
	.loc 1 938 1
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
.LFE54:
	.size	ip_obtaining_timeout, .-ip_obtaining_timeout
	.section	.text.__reload_tsen,"ax",@progbits
	.align	1
	.type	__reload_tsen, @function
__reload_tsen:
.LFB55:
	.loc 1 941 1
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
	.loc 1 942 27
	lw	a0,-36(s0)
	call	pvTimerGetTimerID
	sw	a0,-20(s0)
	.loc 1 946 5
	call	wifi_mgmr_api_fw_tsen_reload
	.loc 1 947 1
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
.LFE55:
	.size	__reload_tsen, .-__reload_tsen
	.section	.text.__run_reload_tsen,"ax",@progbits
	.align	1
	.type	__run_reload_tsen, @function
__run_reload_tsen:
.LFB56:
	.loc 1 950 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 951 13
	sh	zero,-18(s0)
	.loc 1 954 39
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,1832(a5)
	.loc 1 954 8
	lui	a5,%hi(stateConnecting)
	addi	a5,a5,%lo(stateConnecting)
	beq	a4,a5,.L144
	.loc 1 954 86 discriminator 1
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,1832(a5)
	.loc 1 954 53 discriminator 1
	lui	a5,%hi(stateDisconnect)
	addi	a5,a5,%lo(stateDisconnect)
	beq	a4,a5,.L144
	.loc 1 954 137 discriminator 2
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,1832(a5)
	.loc 1 954 100 discriminator 2
	lui	a5,%hi(stateConnectedIPYes)
	addi	a5,a5,%lo(stateConnectedIPYes)
	beq	a4,a5,.L144
	.loc 1 955 40
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,1832(a5)
	.loc 1 954 151 discriminator 3
	lui	a5,%hi(stateSniffer)
	addi	a5,a5,%lo(stateSniffer)
	beq	a4,a5,.L144
	.loc 1 955 90
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,1832(a5)
	.loc 1 955 54
	lui	a5,%hi(stateConnectedIPNo)
	addi	a5,a5,%lo(stateConnectedIPNo)
	bne	a4,a5,.L148
.L144:
	.loc 1 956 9
	addi	a5,s0,-18
	li	a1,0
	mv	a0,a5
	call	bl_tsen_adc_get
	.loc 1 957 9
	lh	a5,-18(s0)
	mv	a0,a5
	call	phy_tcal_callback
	.loc 1 959 9
	j	.L143
.L148:
	.loc 1 962 5
	nop
.L143:
	.loc 1 964 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE56:
	.size	__run_reload_tsen, .-__run_reload_tsen
	.section	.rodata
	.align	2
.LC58:
	.string	"[WF][SM] Static IP Starting...%p\r\n"
	.align	2
.LC59:
	.string	"[WF][SM] DHCP Starting...%p\r\n"
	.section	.text.__sta_setup_ip,"ax",@progbits
	.align	1
	.type	__sta_setup_ip, @function
__sta_setup_ip:
.LFB57:
	.loc 1 968 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 974 5
	call	vTaskEnterCritical
	.loc 1 975 8
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	lw	a5,24(a5)
	sw	a5,-20(s0)
	.loc 1 976 10
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	lw	a5,28(a5)
	sw	a5,-24(s0)
	.loc 1 977 8
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	lw	a5,32(a5)
	sw	a5,-28(s0)
	.loc 1 978 10
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	lw	a5,36(a5)
	sw	a5,-32(s0)
	.loc 1 979 10
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	lw	a5,40(a5)
	sw	a5,-36(s0)
	.loc 1 980 5
	call	vTaskExitCritical
	.loc 1 982 8
	lw	a5,-20(s0)
	beq	a5,zero,.L150
	.loc 1 984 9
	lui	a5,%hi(wifiMgmr+44)
	addi	a1,a5,%lo(wifiMgmr+44)
	lui	a5,%hi(.LC58)
	addi	a0,a5,%lo(.LC58)
	call	printf
	.loc 1 986 31
	lw	a5,-32(s0)
	sw	a5,-40(s0)
	.loc 1 987 9
	addi	a5,s0,-40
	mv	a1,a5
	li	a0,0
	call	dns_setserver
	.loc 1 988 31
	lw	a5,-36(s0)
	sw	a5,-40(s0)
	.loc 1 989 9
	addi	a5,s0,-40
	mv	a1,a5
	li	a0,1
	call	dns_setserver
	.loc 1 991 31
	lw	a5,-20(s0)
	sw	a5,-40(s0)
	.loc 1 992 32
	lw	a5,-24(s0)
	sw	a5,-44(s0)
	.loc 1 993 27
	lw	a5,-28(s0)
	sw	a5,-48(s0)
	.loc 1 994 9
	li	a2,0
	lui	a5,%hi(dhcp_stop)
	addi	a1,a5,%lo(dhcp_stop)
	lui	a5,%hi(wifiMgmr+44)
	addi	a0,a5,%lo(wifiMgmr+44)
	call	netifapi_netif_common
	.loc 1 995 9
	addi	a3,s0,-48
	addi	a4,s0,-44
	addi	a5,s0,-40
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(wifiMgmr+44)
	addi	a0,a5,%lo(wifiMgmr+44)
	call	netifapi_netif_set_addr
	.loc 1 1001 1
	j	.L152
.L150:
	.loc 1 998 9
	lui	a5,%hi(wifiMgmr+44)
	addi	a1,a5,%lo(wifiMgmr+44)
	lui	a5,%hi(.LC59)
	addi	a0,a5,%lo(.LC59)
	call	printf
	.loc 1 999 9
	lui	a5,%hi(wifiMgmr+44)
	addi	a0,a5,%lo(wifiMgmr+44)
	call	wifi_netif_dhcp_start
.L152:
	.loc 1 1001 1
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
.LFE57:
	.size	__sta_setup_ip, .-__sta_setup_ip
	.section	.rodata
	.align	2
.LC60:
	.string	"wifi IP obtaining"
	.section	.text.stateConnectedIPNoEnter,"ax",@progbits
	.align	1
	.type	stateConnectedIPNoEnter, @function
stateConnectedIPNoEnter:
.LFB58:
	.loc 1 1004 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 1007 29
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 1008 72
	lw	a5,-20(s0)
	.loc 1 1008 5
	mv	a1,a5
	lui	a5,%hi(.LC28)
	addi	a0,a5,%lo(.LC28)
	call	printf
	.loc 1 1009 122
	lw	a5,-20(s0)
	addi	a5,a5,32
	.loc 1 1009 5
	lui	a4,%hi(ip_obtaining_timeout)
	addi	a4,a4,%lo(ip_obtaining_timeout)
	lw	a3,-20(s0)
	li	a2,0
	li	a1,16384
	addi	a1,a1,-1384
	lui	a0,%hi(.LC60)
	addi	a0,a0,%lo(.LC60)
	call	xTimerCreateStatic
	.loc 1 1016 44
	lw	a5,-20(s0)
	addi	s1,a5,32
	.loc 1 1016 105
	call	xTaskGetTickCount
	mv	a5,a0
	.loc 1 1016 5 discriminator 1
	li	a4,-1
	li	a3,0
	mv	a2,a5
	li	a1,1
	mv	a0,s1
	call	xTimerGenericCommand
	.loc 1 1017 5
	call	__sta_setup_ip
	.loc 1 1018 5
	li	a2,0
	li	a1,4
	li	a0,2
	call	aos_post_event
	.loc 1 1019 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE58:
	.size	stateConnectedIPNoEnter, .-stateConnectedIPNoEnter
	.section	.rodata
	.align	2
.LC61:
	.string	"[WF][SM] reload tsen \r\n"
	.align	2
.LC62:
	.string	"wifi reload tsen"
	.section	.text.periodic_tsen_reload,"ax",@progbits
	.align	1
	.type	periodic_tsen_reload, @function
periodic_tsen_reload:
.LFB59:
	.loc 1 1022 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 1025 21
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 1026 5
	lui	a5,%hi(.LC61)
	addi	a0,a5,%lo(.LC61)
	call	printf
	.loc 1 1027 108
	lw	a5,-20(s0)
	addi	a5,a5,32
	.loc 1 1027 5
	lui	a4,%hi(__reload_tsen)
	addi	a4,a4,%lo(__reload_tsen)
	lw	a3,-20(s0)
	li	a2,1
	li	a1,8192
	addi	a1,a1,1808
	lui	a0,%hi(.LC62)
	addi	a0,a0,%lo(.LC62)
	call	xTimerCreateStatic
	.loc 1 1034 44
	lw	a5,-20(s0)
	addi	s1,a5,32
	.loc 1 1034 97
	call	xTaskGetTickCount
	mv	a5,a0
	.loc 1 1034 5 discriminator 1
	li	a4,-1
	li	a3,0
	mv	a2,a5
	li	a1,1
	mv	a0,s1
	call	xTimerGenericCommand
	.loc 1 1035 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE59:
	.size	periodic_tsen_reload, .-periodic_tsen_reload
	.section	.text.stateConnectedIPNoExit,"ax",@progbits
	.align	1
	.type	stateConnectedIPNoExit, @function
stateConnectedIPNoExit:
.LFB60:
	.loc 1 1039 1
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
	.loc 1 1042 29
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 1043 71
	lw	a5,-20(s0)
	.loc 1 1043 5
	mv	a1,a5
	lui	a5,%hi(.LC30)
	addi	a0,a5,%lo(.LC30)
	call	printf
	.loc 1 1044 49
	lw	a5,-20(s0)
	addi	a5,a5,32
	.loc 1 1044 10
	li	a4,0
	li	a3,0
	li	a2,0
	li	a1,3
	mv	a0,a5
	call	xTimerGenericCommand
	.loc 1 1044 54 discriminator 1
	lw	a5,-20(s0)
	addi	a5,a5,32
	.loc 1 1044 15 discriminator 1
	li	a4,0
	li	a3,0
	li	a2,0
	li	a1,5
	mv	a0,a5
	call	xTimerGenericCommand
	.loc 1 1045 1
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
.LFE60:
	.size	stateConnectedIPNoExit, .-stateConnectedIPNoExit
	.section	.data.__compound_literal.5,"aw"
	.align	2
	.type	__compound_literal.5, @object
	.size	__compound_literal.5, 60
__compound_literal.5:
	.word	1
	.word	4
	.word	stateConnectedIPNoGuard
	.word	stateConnectedIPNoAction_ipgot
	.word	stateConnectedIPYes
	.word	1
	.word	5
	.word	stateConnectedIPNoGuard_disconnect
	.word	stateConnectedIPNoAction_disconnect
	.word	stateDisconnect
	.word	0
	.word	19
	.word	stateConnectedIPNoGuard
	.word	stateConnectedIPNoAction_disconnect
	.word	stateDisconnect
	.section	.text.stateConnectedIPYesGuard,"ax",@progbits
	.align	1
	.type	stateConnectedIPYesGuard, @function
stateConnectedIPYesGuard:
.LFB61:
	.loc 1 1068 1
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
	.loc 1 1071 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 1072 25
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 1072 15
	mv	a4,a5
	.loc 1 1072 8
	lw	a5,-36(s0)
	bne	a5,a4,.L157
	.loc 1 1073 16
	li	a5,1
	j	.L158
.L157:
	.loc 1 1075 12
	li	a5,0
.L158:
	.loc 1 1076 1
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
.LFE61:
	.size	stateConnectedIPYesGuard, .-stateConnectedIPYesGuard
	.section	.text.stateConnectedIPYesGuard_ip_update,"ax",@progbits
	.align	1
	.type	stateConnectedIPYesGuard_ip_update, @function
stateConnectedIPYesGuard_ip_update:
.LFB62:
	.loc 1 1079 1
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
	.loc 1 1082 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 1083 25
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 1083 15
	mv	a4,a5
	.loc 1 1083 8
	lw	a5,-36(s0)
	beq	a5,a4,.L160
	.loc 1 1084 16
	li	a5,0
	j	.L161
.L160:
	.loc 1 1087 12
	li	a5,1
.L161:
	.loc 1 1088 1
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
.LFE62:
	.size	stateConnectedIPYesGuard_ip_update, .-stateConnectedIPYesGuard_ip_update
	.section	.text.stateConnectedIPYesGuard_disconnect,"ax",@progbits
	.align	1
	.type	stateConnectedIPYesGuard_disconnect, @function
stateConnectedIPYesGuard_disconnect:
.LFB63:
	.loc 1 1091 1
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
	.loc 1 1094 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 1095 25
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 1095 15
	mv	a4,a5
	.loc 1 1095 8
	lw	a5,-36(s0)
	beq	a5,a4,.L163
	.loc 1 1096 16
	li	a5,0
	j	.L164
.L163:
	.loc 1 1099 5
	call	bl_main_disconnect
	.loc 1 1101 12
	li	a5,0
.L164:
	.loc 1 1102 1
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
.LFE63:
	.size	stateConnectedIPYesGuard_disconnect, .-stateConnectedIPYesGuard_disconnect
	.section	.rodata
	.align	2
.LC63:
	.string	"[WF][SM] rate config, use sta_idx 0, rate_config %04X\r\n"
	.section	.text.stateConnectedIPYesGuard_rcconfig,"ax",@progbits
	.align	1
	.type	stateConnectedIPYesGuard_rcconfig, @function
stateConnectedIPYesGuard_rcconfig:
.LFB64:
	.loc 1 1105 1
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
	.loc 1 1108 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 1109 25
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 1109 15
	mv	a4,a5
	.loc 1 1109 8
	lw	a5,-36(s0)
	beq	a5,a4,.L166
	.loc 1 1110 16
	li	a5,0
	j	.L167
.L166:
	.loc 1 1113 94
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	lbu	a3,2(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,3(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,4(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 1113 5
	mv	a1,a5
	lui	a5,%hi(.LC63)
	addi	a0,a5,%lo(.LC63)
	call	printf
	.loc 1 1114 41
	lw	a5,-20(s0)
	lbu	a4,1(a5)
	lbu	a3,2(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,3(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,4(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 1114 5
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a1,a5
	li	a0,0
	call	bl_main_rate_config
	.loc 1 1116 12
	li	a5,0
.L167:
	.loc 1 1117 1
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
.LFE64:
	.size	stateConnectedIPYesGuard_rcconfig, .-stateConnectedIPYesGuard_rcconfig
	.section	.text.stateConnectedIPYes_action,"ax",@progbits
	.align	1
	.type	stateConnectedIPYes_action, @function
stateConnectedIPYes_action:
.LFB65:
	.loc 1 1121 1
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
	.loc 1 1122 5
	lw	a2,-28(s0)
	lw	a1,-20(s0)
	lui	a5,%hi(.LC29)
	addi	a0,a5,%lo(.LC29)
	call	printf
	.loc 1 1126 1
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
.LFE65:
	.size	stateConnectedIPYes_action, .-stateConnectedIPYes_action
	.section	.rodata
	.align	2
.LC64:
	.string	"[WF][SM] Pending Scan Sent\r\n"
	.section	.text.stateConnectedIPYes_enter,"ax",@progbits
	.align	1
	.type	stateConnectedIPYes_enter, @function
stateConnectedIPYes_enter:
.LFB66:
	.loc 1 1129 1
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
	.loc 1 1130 5
	lw	a1,-20(s0)
	lui	a5,%hi(.LC28)
	addi	a0,a5,%lo(.LC28)
	call	printf
	.loc 1 1131 5
	li	a2,0
	li	a1,7
	li	a0,2
	call	aos_post_event
	.loc 1 1132 9
	li	a0,1
	call	_pending_task_is_set
	mv	a5,a0
	.loc 1 1132 8 discriminator 1
	beq	a5,zero,.L171
	.loc 1 1133 9
	lui	a5,%hi(.LC64)
	addi	a0,a5,%lo(.LC64)
	call	printf
	.loc 1 1134 9
	call	bl_main_scan
	.loc 1 1135 9
	li	a0,1
	call	_pending_task_clr
.L171:
	.loc 1 1137 1
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
.LFE66:
	.size	stateConnectedIPYes_enter, .-stateConnectedIPYes_enter
	.section	.text.stateConnectedIPYes_exit,"ax",@progbits
	.align	1
	.type	stateConnectedIPYes_exit, @function
stateConnectedIPYes_exit:
.LFB67:
	.loc 1 1140 1
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
	.loc 1 1143 26
	sw	zero,-20(s0)
	.loc 1 1144 4
	lw	a1,-36(s0)
	lui	a5,%hi(.LC30)
	addi	a0,a5,%lo(.LC30)
	call	printf
	.loc 1 1146 4
	li	a2,0
	lui	a5,%hi(dhcp_stop)
	addi	a1,a5,%lo(dhcp_stop)
	lui	a5,%hi(wifiMgmr+44)
	addi	a0,a5,%lo(wifiMgmr+44)
	call	netifapi_netif_common
	.loc 1 1147 4
	addi	a3,s0,-20
	addi	a4,s0,-20
	addi	a5,s0,-20
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(wifiMgmr+44)
	addi	a0,a5,%lo(wifiMgmr+44)
	call	netifapi_netif_set_addr
	.loc 1 1150 8
	lui	a5,%hi(auto_repeat)
	lw	a5,%lo(auto_repeat)(a5)
	.loc 1 1150 7
	beq	a5,zero,.L174
	.loc 1 1151 20
	lui	a5,%hi(auto_repeat)
	sw	zero,%lo(auto_repeat)(a5)
	.loc 1 1152 8
	li	a0,0
	call	bl_main_denoise
.L174:
	.loc 1 1154 1
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
.LFE67:
	.size	stateConnectedIPYes_exit, .-stateConnectedIPYes_exit
	.section	.data.__compound_literal.6,"aw"
	.align	2
	.type	__compound_literal.6, @object
	.size	__compound_literal.6, 80
__compound_literal.6:
	.word	2
	.word	30
	.word	stateConnectedIPYesGuard_ip_update
	.word	stateConnectedIPYes_action
	.word	stateConnectedIPNo
	.word	1
	.word	5
	.word	stateConnectedIPYesGuard_disconnect
	.word	stateConnectedIPYes_action
	.word	stateDisconnect
	.word	1
	.word	11
	.word	stateConnectedIPYesGuard_rcconfig
	.word	stateConnectedIPYes_action
	.word	stateDisconnect
	.word	0
	.word	19
	.word	stateConnectedIPYesGuard
	.word	stateConnectedIPYes_action
	.word	stateDisconnect
	.section	.data.stateDisconnect_data,"aw"
	.align	2
	.type	stateDisconnect_data, @object
	.size	stateDisconnect_data, 264
stateDisconnect_data:
	.string	"disconnect"
	.zero	21
	.zero	232
	.section	.text.stateDisconnect_guard,"ax",@progbits
	.align	1
	.type	stateDisconnect_guard, @function
stateDisconnect_guard:
.LFB68:
	.loc 1 1185 1
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
	.loc 1 1188 9
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 1189 25
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 1189 15
	mv	a4,a5
	.loc 1 1189 8
	lw	a5,-36(s0)
	bne	a5,a4,.L176
	.loc 1 1190 16
	li	a5,1
	j	.L177
.L176:
	.loc 1 1192 12
	li	a5,0
.L177:
	.loc 1 1193 1
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
.LFE68:
	.size	stateDisconnect_guard, .-stateDisconnect_guard
	.section	.rodata
	.align	2
.LC65:
	.string	"[WF][SM]  Action Connect\r\n"
	.section	.text.stateDisconnect_action_reconnect,"ax",@progbits
	.align	1
	.type	stateDisconnect_action_reconnect, @function
stateDisconnect_action_reconnect:
.LFB69:
	.loc 1 1197 1
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
	.loc 1 1201 26
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 1202 17
	lw	a5,-20(s0)
	addi	a5,a5,77
	sw	a5,-24(s0)
	.loc 1 1203 5
	lw	a2,-44(s0)
	lw	a1,-36(s0)
	lui	a5,%hi(.LC29)
	addi	a0,a5,%lo(.LC29)
	call	printf
	.loc 1 1208 5
	lui	a5,%hi(.LC65)
	addi	a0,a5,%lo(.LC65)
	call	printf
	.loc 1 1209 49
	lw	a5,-24(s0)
	.loc 1 1209 5
	mv	a1,a5
	lui	a5,%hi(.LC43)
	addi	a0,a5,%lo(.LC43)
	call	printf
	.loc 1 1210 67
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
	.loc 1 1210 5
	mv	a1,a5
	lui	a5,%hi(.LC44)
	addi	a0,a5,%lo(.LC44)
	call	printf
	.loc 1 1211 48
	lw	a5,-24(s0)
	addi	a5,a5,37
	.loc 1 1211 5
	mv	a1,a5
	lui	a5,%hi(.LC45)
	addi	a0,a5,%lo(.LC45)
	call	printf
	.loc 1 1212 66
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
	.loc 1 1212 5
	mv	a1,a5
	lui	a5,%hi(.LC46)
	addi	a0,a5,%lo(.LC46)
	call	printf
	.loc 1 1213 48
	lw	a5,-24(s0)
	addi	a5,a5,102
	.loc 1 1213 5
	mv	a1,a5
	lui	a5,%hi(.LC47)
	addi	a0,a5,%lo(.LC47)
	call	printf
	.loc 1 1214 66
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
	.loc 1 1214 5
	mv	a1,a5
	lui	a5,%hi(.LC48)
	addi	a0,a5,%lo(.LC48)
	call	printf
	.loc 1 1215 80
	lw	a5,-24(s0)
	lbu	a5,180(a5)
	.loc 1 1215 5
	mv	a1,a5
	.loc 1 1215 101
	lw	a5,-24(s0)
	lbu	a5,179(a5)
	.loc 1 1215 5
	mv	a2,a5
	.loc 1 1215 122
	lw	a5,-24(s0)
	lbu	a5,178(a5)
	.loc 1 1215 5
	mv	a3,a5
	.loc 1 1215 143
	lw	a5,-24(s0)
	lbu	a5,177(a5)
	.loc 1 1215 5
	mv	a4,a5
	.loc 1 1215 164
	lw	a5,-24(s0)
	lbu	a5,176(a5)
	.loc 1 1215 5
	mv	a0,a5
	.loc 1 1215 185
	lw	a5,-24(s0)
	lbu	a5,175(a5)
	.loc 1 1215 5
	mv	a6,a5
	mv	a5,a0
	lui	a0,%hi(.LC51)
	addi	a0,a0,%lo(.LC51)
	call	printf
	.loc 1 1225 38
	lw	a0,-24(s0)
	.loc 1 1225 68
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
	.loc 1 1225 5
	mv	t1,a5
	.loc 1 1226 30
	lw	a5,-24(s0)
	addi	a2,a5,37
	.loc 1 1226 59
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
	.loc 1 1225 5
	mv	t3,a5
	.loc 1 1227 30
	lw	a5,-24(s0)
	addi	a1,a5,102
	.loc 1 1227 59
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
	.loc 1 1225 5
	mv	a4,a5
	.loc 1 1228 30
	lw	a5,-24(s0)
	addi	a5,a5,175
	.loc 1 1225 5
	sw	zero,0(sp)
	li	a7,0
	mv	a6,a5
	mv	a5,a4
	mv	a4,a1
	mv	a3,t3
	mv	a1,t1
	call	bl_main_connect
	.loc 1 1232 5
	li	a2,0
	li	a1,3
	li	a0,2
	call	aos_post_event
	.loc 1 1233 1
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
.LFE69:
	.size	stateDisconnect_action_reconnect, .-stateDisconnect_action_reconnect
	.section	.text.stateDisconnect_action_idle,"ax",@progbits
	.align	1
	.type	stateDisconnect_action_idle, @function
stateDisconnect_action_idle:
.LFB70:
	.loc 1 1237 1
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
	.loc 1 1238 5
	lw	a2,-28(s0)
	lw	a1,-20(s0)
	lui	a5,%hi(.LC29)
	addi	a0,a5,%lo(.LC29)
	call	printf
	.loc 1 1242 5
	lui	a5,%hi(.LC19)
	addi	a0,a5,%lo(.LC19)
	call	printf
	.loc 1 1243 5
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	lbu	a5,16(a5)
	mv	a0,a5
	call	bl_main_if_remove
	.loc 1 1244 1
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
.LFE70:
	.size	stateDisconnect_action_idle, .-stateDisconnect_action_idle
	.section	.rodata
	.align	2
.LC66:
	.string	"[WF][SM] Retry Again --->>> retry Abort, since profile copy failed\r\n"
	.align	2
.LC67:
	.string	"[WF][SM] Retry Again --->>> retry connect\r\n"
	.section	.text.disconnect_retry,"ax",@progbits
	.align	1
	.type	disconnect_retry, @function
disconnect_retry:
.LFB71:
	.loc 1 1247 1
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
	.loc 1 1248 35
	lw	a0,-36(s0)
	call	pvTimerGetTimerID
	sw	a0,-20(s0)
	.loc 1 1253 9
	lw	a5,-20(s0)
	addi	a5,a5,77
	mv	a1,a5
	lui	a5,%hi(wifiMgmr)
	addi	a0,a5,%lo(wifiMgmr)
	call	wifi_mgmr_profile_get
	mv	a5,a0
	.loc 1 1253 8 discriminator 1
	beq	a5,zero,.L181
	.loc 1 1254 9
	lui	a5,%hi(.LC66)
	addi	a0,a5,%lo(.LC66)
	call	printf
	.loc 1 1259 1
	j	.L183
.L181:
	.loc 1 1256 9
	lui	a5,%hi(.LC67)
	addi	a0,a5,%lo(.LC67)
	call	printf
	.loc 1 1257 9
	call	wifi_mgmr_api_reconnect
.L183:
	.loc 1 1259 1
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
.LFE71:
	.size	disconnect_retry, .-disconnect_retry
	.section	.rodata
	.align	2
.LC68:
	.string	"wifi disconnect"
	.align	2
.LC69:
	.string	"[WF][SM] Will retry in 2000 ticks\r\n"
	.align	2
.LC70:
	.string	"[WF][SM] Will NOT retry connect\r\n"
	.section	.text.stateDisconnect_enter,"ax",@progbits
	.align	1
	.type	stateDisconnect_enter, @function
stateDisconnect_enter:
.LFB72:
	.loc 1 1262 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 1263 9
	sw	zero,-24(s0)
	.loc 1 1266 26
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 1267 5
	lw	a1,-36(s0)
	lui	a5,%hi(.LC28)
	addi	a0,a5,%lo(.LC28)
	call	printf
	.loc 1 1269 9
	li	a1,-1
	lui	a5,%hi(wifiMgmr)
	addi	a0,a5,%lo(wifiMgmr)
	call	wifi_mgmr_profile_autoreconnect_is_enabled
	mv	a5,a0
	.loc 1 1269 8 discriminator 1
	beq	a5,zero,.L185
	.loc 1 1270 116
	lw	a5,-20(s0)
	addi	a5,a5,32
	.loc 1 1270 9
	lui	a4,%hi(disconnect_retry)
	addi	a4,a4,%lo(disconnect_retry)
	lw	a3,-20(s0)
	li	a2,0
	li	a1,2000
	lui	a0,%hi(.LC68)
	addi	a0,a0,%lo(.LC68)
	call	xTimerCreateStatic
	.loc 1 1277 9
	lui	a5,%hi(.LC69)
	addi	a0,a5,%lo(.LC69)
	call	printf
	.loc 1 1278 48
	lw	a5,-20(s0)
	addi	s1,a5,32
	.loc 1 1278 106
	call	xTaskGetTickCount
	mv	a5,a0
	.loc 1 1278 9 discriminator 1
	li	a4,-1
	li	a3,0
	mv	a2,a5
	li	a1,1
	mv	a0,s1
	call	xTimerGenericCommand
	.loc 1 1279 45
	lw	a5,-20(s0)
	li	a4,1
	sb	a4,76(a5)
	j	.L186
.L185:
	.loc 1 1281 9
	lui	a5,%hi(.LC70)
	addi	a0,a5,%lo(.LC70)
	call	printf
.L186:
	.loc 1 1283 59
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lhu	a5,1888(a5)
	.loc 1 1283 5
	mv	a2,a5
	li	a1,5
	li	a0,2
	call	aos_post_event
	.loc 1 1284 14
	addi	a5,s0,-24
	mv	a0,a5
	call	bl60x_check_mac_status
	mv	a5,a0
	.loc 1 1284 8 discriminator 1
	bne	a5,zero,.L187
	.loc 1 1284 50 discriminator 2
	lw	a5,-24(s0)
	.loc 1 1284 45 discriminator 2
	bne	a5,zero,.L187
.LBB3:
	.loc 1 1285 9
	li	a2,0
	li	a1,23
	li	a0,2
	call	aos_post_event
	.loc 1 1288 13
	call	helper_record_dump
.L187:
.LBE3:
	.loc 1 1291 9
	li	a0,1
	call	_pending_task_is_set
	mv	a5,a0
	.loc 1 1291 8 discriminator 1
	beq	a5,zero,.L189
	.loc 1 1292 9
	lui	a5,%hi(.LC64)
	addi	a0,a5,%lo(.LC64)
	call	printf
	.loc 1 1293 9
	call	bl_main_scan
	.loc 1 1294 9
	li	a0,1
	call	_pending_task_clr
.L189:
	.loc 1 1296 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE72:
	.size	stateDisconnect_enter, .-stateDisconnect_enter
	.section	.rodata
	.align	2
.LC71:
	.string	"Delete Timer.\r\n"
	.align	2
.LC72:
	.string	"Delete Timer Skipped\r\n"
	.section	.text.stateDisconnect_exit,"ax",@progbits
	.align	1
	.type	stateDisconnect_exit, @function
stateDisconnect_exit:
.LFB73:
	.loc 1 1299 1
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
	.loc 1 1300 23
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 1302 5
	lw	a1,-20(s0)
	lui	a5,%hi(.LC30)
	addi	a0,a5,%lo(.LC30)
	call	printf
	.loc 1 1303 29
	lw	a5,-20(s0)
	lbu	a5,76(a5)
	.loc 1 1303 8
	beq	a5,zero,.L191
	.loc 1 1304 9
	lui	a5,%hi(.LC71)
	addi	a0,a5,%lo(.LC71)
	call	printf
	.loc 1 1305 53
	lw	a5,-20(s0)
	addi	a5,a5,32
	.loc 1 1305 14
	li	a4,0
	li	a3,0
	li	a2,0
	li	a1,3
	mv	a0,a5
	call	xTimerGenericCommand
	.loc 1 1305 58 discriminator 1
	lw	a5,-20(s0)
	addi	a5,a5,32
	.loc 1 1305 19 discriminator 1
	li	a4,0
	li	a3,0
	li	a2,0
	li	a1,5
	mv	a0,a5
	call	xTimerGenericCommand
	.loc 1 1306 45
	lw	a5,-20(s0)
	sb	zero,76(a5)
	.loc 1 1310 1
	j	.L193
.L191:
	.loc 1 1308 9
	lui	a5,%hi(.LC72)
	addi	a0,a5,%lo(.LC72)
	call	printf
.L193:
	.loc 1 1310 1
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
.LFE73:
	.size	stateDisconnect_exit, .-stateDisconnect_exit
	.section	.data.__compound_literal.7,"aw"
	.align	2
	.type	__compound_literal.7, @object
	.size	__compound_literal.7, 40
__compound_literal.7:
	.word	1
	.word	6
	.word	stateDisconnect_guard
	.word	stateDisconnect_action_reconnect
	.word	stateConnecting
	.word	1
	.word	0
	.word	stateDisconnect_guard
	.word	stateDisconnect_action_idle
	.word	stateIdle
	.section	.rodata
	.align	2
.LC73:
	.string	"Wait Wi-Fi Mgmr Start up...\r\n"
	.align	2
.LC74:
	.string	"Failed when send msg 0x%p, len dec:%u\r\n"
	.section	.text.wifi_mgmr_event_notify,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_event_notify
	.type	wifi_mgmr_event_notify, @function
wifi_mgmr_event_notify:
.LFB74:
	.loc 1 1333 1
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
	.loc 1 1334 11
	j	.L195
.L196:
	.loc 1 1335 9
	lui	a5,%hi(.LC73)
	addi	a0,a5,%lo(.LC73)
	call	printf
	.loc 1 1336 9
	li	a0,20
	call	vTaskDelay
.L195:
	.loc 1 1334 25
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	lbu	a5,0(a5)
	.loc 1 1334 14
	beq	a5,zero,.L196
	.loc 1 1338 78
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	lbu	a3,10(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,11(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,12(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 1338 10
	li	a3,-1
	mv	a2,a5
	lw	a1,-20(s0)
	lui	a5,%hi(wifiMgmr+3652)
	addi	a0,a5,%lo(wifiMgmr+3652)
	call	xStreamBufferSend
	mv	a5,a0
	.loc 1 1338 8 discriminator 1
	bne	a5,zero,.L197
	.loc 1 1339 83
	lw	a5,-20(s0)
	lbu	a4,9(a5)
	lbu	a3,10(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,11(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,12(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	.loc 1 1339 9
	mv	a2,a5
	lw	a1,-20(s0)
	lui	a5,%hi(.LC74)
	addi	a0,a5,%lo(.LC74)
	call	printf
	.loc 1 1340 16
	li	a5,-1
	j	.L198
.L197:
	.loc 1 1342 12
	li	a5,0
.L198:
	.loc 1 1343 1
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
.LFE74:
	.size	wifi_mgmr_event_notify, .-wifi_mgmr_event_notify
	.section	.text.event_cb_wifi_event_mgmr,"ax",@progbits
	.align	1
	.type	event_cb_wifi_event_mgmr, @function
event_cb_wifi_event_mgmr:
.LFB75:
	.loc 1 1346 1
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
	.loc 1 1347 18
	lw	a5,-20(s0)
	lhu	a5,6(a5)
	mv	a4,a5
	.loc 1 1347 5
	li	a5,20
	bne	a4,a5,.L201
	.loc 1 1350 13
	li	a2,0
	lui	a5,%hi(trigger_auto_denoise)
	addi	a1,a5,%lo(trigger_auto_denoise)
	li	a0,85
	call	aos_post_delayed_action
	.loc 1 1352 9
	nop
.L201:
	.loc 1 1358 1
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
.LFE75:
	.size	event_cb_wifi_event_mgmr, .-event_cb_wifi_event_mgmr
	.section	.text.wifi_mgmr_start,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_start
	.type	wifi_mgmr_start, @function
wifi_mgmr_start:
.LFB76:
	.loc 1 1361 1
	.cfi_startproc
	addi	sp,sp,-272
	.cfi_def_cfa_offset 272
	sw	ra,268(sp)
	sw	s0,264(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,272
	.cfi_def_cfa 8, 0
	.loc 1 1366 9
	addi	a5,s0,-260
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 1367 13
	li	a5,1
	sw	a5,-28(s0)
	.loc 1 1368 13
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 1 1369 5
	lui	a5,%hi(stateError)
	addi	a2,a5,%lo(stateError)
	lui	a5,%hi(stateIfaceDown)
	addi	a1,a5,%lo(stateIfaceDown)
	lui	a5,%hi(wifiMgmr+5928)
	addi	a0,a5,%lo(wifiMgmr+5928)
	call	stateM_init
	.loc 1 1372 5
	call	wifi_mgmr_event_init
	.loc 1 1375 5
	li	a2,0
	lui	a5,%hi(event_cb_wifi_event_mgmr)
	addi	a1,a5,%lo(event_cb_wifi_event_mgmr)
	li	a0,2
	call	aos_register_event_filter
	.loc 1 1377 5
	li	a2,0
	li	a1,2
	li	a0,2
	call	aos_post_event
	.loc 1 1380 5
	li	a1,255
	li	a0,255
	call	hal_sys_capcode_update
	.loc 1 1383 5
	li	a1,0
	lui	a5,%hi(state_tsen_reload_data)
	addi	a0,a5,%lo(state_tsen_reload_data)
	call	periodic_tsen_reload
.L208:
	.loc 1 1387 19
	li	a3,-1
	li	a2,224
	lw	a1,-20(s0)
	lui	a5,%hi(wifiMgmr+3652)
	addi	a0,a5,%lo(wifiMgmr+3652)
	call	xStreamBufferReceive
	mv	a5,a0
	.loc 1 1387 12 discriminator 1
	beq	a5,zero,.L208
	.loc 1 1388 20
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 1 1388 16
	li	a5,13
	bne	a4,a5,.L204
	.loc 1 1389 17
	call	__run_reload_tsen
	.loc 1 1391 17
	j	.L203
.L204:
	.loc 1 1394 26
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 1 1394 80
	li	a5,13
	bleu	a4,a5,.L205
	.loc 1 1395 21
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	.loc 1 1395 78
	li	a5,22
	bgtu	a4,a5,.L206
	.loc 1 1394 80
	li	a5,0
	j	.L207
.L206:
	li	a5,2
	j	.L207
.L205:
	.loc 1 1394 80 is_stmt 0 discriminator 1
	li	a5,1
.L207:
	.loc 1 1394 21 is_stmt 1 discriminator 2
	sw	a5,-28(s0)
	.loc 1 1396 13
	addi	a5,s0,-28
	mv	a1,a5
	lui	a5,%hi(wifiMgmr+5928)
	addi	a0,a5,%lo(wifiMgmr+5928)
	call	stateM_handleEvent
.L203:
	.loc 1 1387 12
	j	.L208
	.cfi_endproc
.LFE76:
	.size	wifi_mgmr_start, .-wifi_mgmr_start
	.section	.text._wifi_mgmr_entry,"ax",@progbits
	.align	1
	.type	_wifi_mgmr_entry, @function
_wifi_mgmr_entry:
.LFB77:
	.loc 1 1402 1
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
	.loc 1 1403 5
	call	wifi_mgmr_start
	.loc 1 1404 1
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
.LFE77:
	.size	_wifi_mgmr_entry, .-_wifi_mgmr_entry
	.section	.rodata
	.align	2
.LC75:
	.string	"wifi_mgmr"
	.section	.text.wifi_mgmr_start_background,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_start_background
	.type	wifi_mgmr_start_background, @function
wifi_mgmr_start_background:
.LFB78:
	.loc 1 1407 1
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
	.loc 1 1408 5
	lw	a0,-36(s0)
	call	wifi_mgmr_drv_init
.LBB4:
	.loc 1 1409 23
	sw	zero,-20(s0)
	.loc 1 1409 6
	addi	a5,s0,-20
	li	a4,28
	li	a3,0
	li	a2,768
	lui	a1,%hi(.LC75)
	addi	a1,a1,%lo(.LC75)
	lui	a0,%hi(_wifi_mgmr_entry)
	addi	a0,a0,%lo(_wifi_mgmr_entry)
	call	xTaskCreate
.LBE4:
	.loc 1 1415 1
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
.LFE78:
	.size	wifi_mgmr_start_background, .-wifi_mgmr_start_background
	.section	.text.wifi_mgmr_init,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_init
	.type	wifi_mgmr_init, @function
wifi_mgmr_init:
.LFB79:
	.loc 1 1418 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1421 39
	lui	a5,%hi(wifiMgmr+3652)
	addi	a4,a5,%lo(wifiMgmr+3652)
	lui	a5,%hi(wifiMgmr+3688)
	addi	a3,a5,%lo(wifiMgmr+3688)
	li	a2,1
	li	a1,0
	li	a5,4096
	addi	a0,a5,-1856
	call	xStreamBufferGenericCreateStatic
	mv	a5,a0
	.loc 1 1421 163 discriminator 1
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 1421 9 discriminator 1
	sw	a5,-20(s0)
	.loc 1 1428 20
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	li	a4,1
	sb	a4,0(a5)
	.loc 1 1429 32
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	li	a4,16384
	addi	a4,a4,-1384
	sw	a4,2016(a5)
	.loc 1 1430 12
	lw	a5,-20(s0)
	.loc 1 1431 1
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
.LFE79:
	.size	wifi_mgmr_init, .-wifi_mgmr_init
	.section	.text.wifi_mgmr_status_code_get_internal,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_status_code_get_internal
	.type	wifi_mgmr_status_code_get_internal, @function
wifi_mgmr_status_code_get_internal:
.LFB80:
	.loc 1 1434 1
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
	.loc 1 1435 45
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lhu	a5,1888(a5)
	mv	a4,a5
	.loc 1 1435 15
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 1436 12
	li	a5,0
	.loc 1 1437 1
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
.LFE80:
	.size	wifi_mgmr_status_code_get_internal, .-wifi_mgmr_status_code_get_internal
	.section	.text.wifi_mgmr_status_code_clean_internal,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_status_code_clean_internal
	.type	wifi_mgmr_status_code_clean_internal, @function
wifi_mgmr_status_code_clean_internal:
.LFB81:
	.loc 1 1440 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1441 46
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	sh	zero,1888(a5)
	.loc 1 1442 12
	li	a5,0
	.loc 1 1443 1
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
.LFE81:
	.size	wifi_mgmr_status_code_clean_internal, .-wifi_mgmr_status_code_clean_internal
	.section	.text.wifi_mgmr_state_get_internal,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_state_get_internal
	.type	wifi_mgmr_state_get_internal, @function
wifi_mgmr_state_get_internal:
.LFB82:
	.loc 1 1446 1
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
	.loc 1 1448 9
	sw	zero,-24(s0)
	.loc 1 1450 13
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a5,1832(a5)
	sw	a5,-20(s0)
	.loc 1 1451 5
	addi	a5,s0,-24
	mv	a0,a5
	call	wifi_mgmr_status_code_get_internal
	.loc 1 1453 8
	lw	a4,-20(s0)
	lui	a5,%hi(stateIdle)
	addi	a5,a5,%lo(stateIdle)
	bne	a4,a5,.L218
	.loc 1 1454 21
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	lw	a5,8(a5)
	.loc 1 1454 12
	beq	a5,zero,.L219
	.loc 1 1455 20
	lw	a5,-36(s0)
	li	a4,17
	sw	a4,0(a5)
	j	.L220
.L219:
	.loc 1 1457 20
	lw	a5,-36(s0)
	li	a4,1
	sw	a4,0(a5)
	.loc 1 1458 24
	lw	a4,-24(s0)
	.loc 1 1458 16
	li	a5,8
	bne	a4,a5,.L221
	.loc 1 1459 24
	lw	a5,-36(s0)
	li	a4,8
	sw	a4,0(a5)
	j	.L220
.L221:
	.loc 1 1460 31
	lw	a4,-24(s0)
	.loc 1 1460 23
	li	a5,12
	bne	a4,a5,.L220
	.loc 1 1461 24
	lw	a5,-36(s0)
	li	a4,9
	sw	a4,0(a5)
	j	.L220
.L218:
	.loc 1 1464 15
	lw	a4,-20(s0)
	lui	a5,%hi(stateConnecting)
	addi	a5,a5,%lo(stateConnecting)
	bne	a4,a5,.L222
	.loc 1 1465 21
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	lw	a5,8(a5)
	.loc 1 1465 12
	beq	a5,zero,.L223
	.loc 1 1466 20
	lw	a5,-36(s0)
	li	a4,18
	sw	a4,0(a5)
	j	.L220
.L223:
	.loc 1 1468 20
	lw	a5,-36(s0)
	li	a4,2
	sw	a4,0(a5)
	.loc 1 1469 24
	lw	a4,-24(s0)
	.loc 1 1469 16
	li	a5,8
	bne	a4,a5,.L224
	.loc 1 1470 24
	lw	a5,-36(s0)
	li	a4,8
	sw	a4,0(a5)
	j	.L220
.L224:
	.loc 1 1471 31
	lw	a4,-24(s0)
	.loc 1 1471 23
	li	a5,12
	bne	a4,a5,.L220
	.loc 1 1472 24
	lw	a5,-36(s0)
	li	a4,9
	sw	a4,0(a5)
	j	.L220
.L222:
	.loc 1 1475 15
	lw	a4,-20(s0)
	lui	a5,%hi(stateConnectedIPNo)
	addi	a5,a5,%lo(stateConnectedIPNo)
	bne	a4,a5,.L225
	.loc 1 1476 21
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	lw	a5,8(a5)
	.loc 1 1476 12
	beq	a5,zero,.L226
	.loc 1 1477 20
	lw	a5,-36(s0)
	li	a4,19
	sw	a4,0(a5)
	j	.L220
.L226:
	.loc 1 1479 20
	lw	a5,-36(s0)
	li	a4,3
	sw	a4,0(a5)
	j	.L220
.L225:
	.loc 1 1481 15
	lw	a4,-20(s0)
	lui	a5,%hi(stateConnectedIPYes)
	addi	a5,a5,%lo(stateConnectedIPYes)
	bne	a4,a5,.L227
	.loc 1 1482 21
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	lw	a5,8(a5)
	.loc 1 1482 12
	beq	a5,zero,.L228
	.loc 1 1483 20
	lw	a5,-36(s0)
	li	a4,20
	sw	a4,0(a5)
	j	.L220
.L228:
	.loc 1 1485 20
	lw	a5,-36(s0)
	li	a4,4
	sw	a4,0(a5)
	j	.L220
.L227:
	.loc 1 1487 15
	lw	a4,-20(s0)
	lui	a5,%hi(stateDisconnect)
	addi	a5,a5,%lo(stateDisconnect)
	bne	a4,a5,.L229
	.loc 1 1488 21
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	lw	a5,8(a5)
	.loc 1 1488 12
	beq	a5,zero,.L230
	.loc 1 1489 20
	lw	a5,-36(s0)
	li	a4,21
	sw	a4,0(a5)
	j	.L220
.L230:
	.loc 1 1491 20
	lw	a5,-36(s0)
	li	a4,5
	sw	a4,0(a5)
	.loc 1 1492 24
	lw	a4,-24(s0)
	.loc 1 1492 16
	li	a5,8
	bne	a4,a5,.L231
	.loc 1 1493 24
	lw	a5,-36(s0)
	li	a4,8
	sw	a4,0(a5)
	j	.L220
.L231:
	.loc 1 1494 31
	lw	a4,-24(s0)
	.loc 1 1494 23
	li	a5,12
	bne	a4,a5,.L220
	.loc 1 1495 24
	lw	a5,-36(s0)
	li	a4,9
	sw	a4,0(a5)
	j	.L220
.L229:
	.loc 1 1498 15
	lw	a4,-20(s0)
	lui	a5,%hi(stateIfaceDown)
	addi	a5,a5,%lo(stateIfaceDown)
	bne	a4,a5,.L232
	.loc 1 1499 16
	lw	a5,-36(s0)
	li	a4,6
	sw	a4,0(a5)
	j	.L220
.L232:
	.loc 1 1500 15
	lw	a4,-20(s0)
	lui	a5,%hi(stateSniffer)
	addi	a5,a5,%lo(stateSniffer)
	bne	a4,a5,.L233
	.loc 1 1501 16
	lw	a5,-36(s0)
	li	a4,7
	sw	a4,0(a5)
	j	.L220
.L233:
	.loc 1 1503 16
	lw	a5,-36(s0)
	sw	zero,0(a5)
.L220:
	.loc 1 1506 12
	li	a5,0
	.loc 1 1507 1
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
.LFE82:
	.size	wifi_mgmr_state_get_internal, .-wifi_mgmr_state_get_internal
	.section	.text.wifi_mgmr_set_connect_stat_info,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_set_connect_stat_info
	.type	wifi_mgmr_set_connect_stat_info, @function
wifi_mgmr_set_connect_stat_info:
.LFB83:
	.loc 1 1510 1
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
	sb	a5,-37(s0)
	.loc 1 1512 51
	lw	a5,-36(s0)
	lhu	a4,0(a5)
	.loc 1 1512 46
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a3,a5
	sh	a4,1888(a5)
	.loc 1 1513 11
	sw	zero,-20(s0)
	.loc 1 1513 5
	j	.L236
.L237:
	.loc 1 1514 59
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a4,2(a5)
	.loc 1 1514 47
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a5,-20(s0)
	add	a5,a3,a5
	li	a3,4096
	add	a5,a3,a5
	sb	a4,1988(a5)
	.loc 1 1513 23 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L236:
	.loc 1 1513 17 discriminator 1
	lw	a4,-20(s0)
	li	a5,5
	ble	a4,a5,.L237
	.loc 1 1515 49
	lw	a5,-36(s0)
	lhu	a4,20(a5)
	.loc 1 1515 44
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a3,a5
	sh	a4,1994(a5)
	.loc 1 1516 49
	lw	a5,-36(s0)
	lbu	a4,18(a5)
	.loc 1 1516 44
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a3,a5
	sb	a4,1996(a5)
	.loc 1 1517 43
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lbu	a4,-37(s0)
	sb	a4,1890(a5)
	.loc 1 1532 1
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
.LFE83:
	.size	wifi_mgmr_set_connect_stat_info, .-wifi_mgmr_set_connect_stat_info
	.section	.text.wifi_mgmr_set_country_code_internal,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_set_country_code_internal
	.type	wifi_mgmr_set_country_code_internal, @function
wifi_mgmr_set_country_code_internal:
.LFB84:
	.loc 1 1535 1
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
	.loc 1 1536 5
	lw	a0,-20(s0)
	call	bl_main_set_country_code
	.loc 1 1537 5
	li	a2,3
	lw	a1,-20(s0)
	lui	a5,%hi(wifiMgmr+6094)
	addi	a0,a5,%lo(wifiMgmr+6094)
	call	strncpy
	.loc 1 1538 30
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	sb	zero,2000(a5)
	.loc 1 1539 29
	call	bl_main_get_channel_nums
	mv	a3,a0
	.loc 1 1539 27 discriminator 1
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	sw	a3,2004(a5)
	.loc 1 1542 12
	li	a5,0
	.loc 1 1543 1
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
.LFE84:
	.size	wifi_mgmr_set_country_code_internal, .-wifi_mgmr_set_country_code_internal
	.section	.text.wifi_mgmr_ap_sta_cnt_get_internal,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_ap_sta_cnt_get_internal
	.type	wifi_mgmr_ap_sta_cnt_get_internal, @function
wifi_mgmr_ap_sta_cnt_get_internal:
.LFB85:
	.loc 1 1546 1
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
	.loc 1 1547 5
	lw	a0,-20(s0)
	call	bl_main_apm_sta_cnt_get
	.loc 1 1548 12
	li	a5,0
	.loc 1 1549 1
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
.LFE85:
	.size	wifi_mgmr_ap_sta_cnt_get_internal, .-wifi_mgmr_ap_sta_cnt_get_internal
	.section	.text.wifi_mgmr_ap_sta_info_get_internal,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_ap_sta_info_get_internal
	.type	wifi_mgmr_ap_sta_info_get_internal, @function
wifi_mgmr_ap_sta_info_get_internal:
.LFB86:
	.loc 1 1552 1
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
	mv	a5,a1
	sb	a5,-53(s0)
	.loc 1 1554 5
	addi	a5,s0,-40
	li	a2,24
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 1555 5
	lbu	a4,-53(s0)
	addi	a5,s0,-40
	mv	a1,a4
	mv	a0,a5
	call	bl_main_apm_sta_info_get
	.loc 1 1556 46
	lbu	a4,-40(s0)
	.loc 1 1556 32
	lw	a5,-52(s0)
	sb	a4,0(a5)
	.loc 1 1557 46
	lbu	a4,-39(s0)
	.loc 1 1557 32
	lw	a5,-52(s0)
	sb	a4,1(a5)
	.loc 1 1558 43
	lw	a4,-24(s0)
	.loc 1 1558 29
	lw	a5,-52(s0)
	sw	a4,16(a5)
	.loc 1 1559 44
	lw	a4,-28(s0)
	.loc 1 1559 30
	lw	a5,-52(s0)
	sw	a4,12(a5)
	.loc 1 1560 44
	lw	a4,-32(s0)
	.loc 1 1560 30
	lw	a5,-52(s0)
	sw	a4,8(a5)
	.loc 1 1561 48
	lbu	a4,-20(s0)
	.loc 1 1561 34
	lw	a5,-52(s0)
	sb	a4,20(a5)
	.loc 1 1562 29
	lw	a5,-52(s0)
	addi	a4,a5,2
	.loc 1 1562 5
	addi	a5,s0,-40
	addi	a5,a5,2
	li	a2,6
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 1 1563 12
	li	a5,0
	.loc 1 1564 1
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
.LFE86:
	.size	wifi_mgmr_ap_sta_info_get_internal, .-wifi_mgmr_ap_sta_info_get_internal
	.section	.text.wifi_mgmr_ap_sta_delete_internal,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_ap_sta_delete_internal
	.type	wifi_mgmr_ap_sta_delete_internal, @function
wifi_mgmr_ap_sta_delete_internal:
.LFB87:
	.loc 1 1567 1
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
	.loc 1 1568 5
	lbu	a5,-17(s0)
	mv	a0,a5
	call	bl_main_apm_sta_delete
	.loc 1 1569 12
	li	a5,0
	.loc 1 1570 1
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
.LFE87:
	.size	wifi_mgmr_ap_sta_delete_internal, .-wifi_mgmr_ap_sta_delete_internal
	.section	.text.wifi_mgmr_scan_complete_notify,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_scan_complete_notify
	.type	wifi_mgmr_scan_complete_notify, @function
wifi_mgmr_scan_complete_notify:
.LFB88:
	.loc 1 1573 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1574 5
	call	wifi_mgmr_scan_complete_callback
	.loc 1 1575 12
	li	a5,0
	.loc 1 1576 1
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
.LFE88:
	.size	wifi_mgmr_scan_complete_notify, .-wifi_mgmr_scan_complete_notify
	.section	.rodata.__func__.1,"a"
	.align	2
	.type	__func__.1, @object
	.size	__func__.1, 20
__func__.1:
	.string	"stateGlobalGuard_AP"
	.section	.rodata.__func__.0,"a"
	.align	2
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"stateIdleGuard_connect"
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/projdefs.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/acd.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/acd.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/priv/api_msg.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/aos/yloop.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_main.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/include/wifi_mgmr_ext.h"
	.file 21 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
	.file 22 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/timers.h"
	.file 23 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/stream_buffer.h"
	.file 24 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/message_buffer.h"
	.file 25 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/os_hal.h"
	.file 26 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/wifi_mgmr.h"
	.file 27 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/wifi_mgmr_event.h"
	.file 28 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_sys.h"
	.file 29 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifi/include/bl60x_fw_api.h"
	.file 30 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/wifi_mgmr_profile.h"
	.file 31 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/wifi_mgmr_api.h"
	.file 32 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/wifi_netif.h"
	.file 33 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netifapi.h"
	.file 34 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/dhcp.h"
	.file 35 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/dns.h"
	.file 36 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_adc.h"
	.file 37 "/home/chandu/sdk/bl602_iot_sdk/components/network/dns_server/include/dns_server.h"
	.file 38 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 39 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x32cb
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x34
	.4byte	.LASF522
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.4byte	.LASF2
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x37
	.uleb128 0x14
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x6
	.4byte	.LASF3
	.byte	0x2
	.byte	0x25
	.byte	0x13
	.4byte	0x4a
	.uleb128 0x14
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x5d
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x14
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x6
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x7c
	.uleb128 0xf
	.4byte	0x6b
	.uleb128 0x14
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x94
	.uleb128 0xf
	.4byte	0x83
	.uleb128 0x14
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0xa7
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x14
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x35
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0xbc
	.uleb128 0x14
	.byte	0x10
	.byte	0x4
	.4byte	.LASF18
	.uleb128 0x36
	.byte	0x4
	.uleb128 0xf
	.4byte	0xd6
	.uleb128 0x22
	.4byte	0xd6
	.uleb128 0x5
	.4byte	0xec
	.uleb128 0x22
	.4byte	0xe2
	.uleb128 0x14
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0xf
	.4byte	0xec
	.uleb128 0x5
	.4byte	0xf3
	.uleb128 0xf
	.4byte	0xf8
	.uleb128 0x22
	.4byte	0xf8
	.uleb128 0x5
	.4byte	0x111
	.uleb128 0x22
	.4byte	0x107
	.uleb128 0x37
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0x6b
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0x2b
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0x83
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0x9b
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x5
	.byte	0x60
	.byte	0xe
	.4byte	0x11e
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x6
	.byte	0x23
	.byte	0x10
	.4byte	0x15a
	.uleb128 0x5
	.4byte	0x15f
	.uleb128 0x19
	.4byte	0x16a
	.uleb128 0x1
	.4byte	0xd6
	.byte	0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x7
	.byte	0x3f
	.byte	0x11
	.4byte	0x51
	.uleb128 0xf
	.4byte	0x16a
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x7
	.byte	0x40
	.byte	0x12
	.4byte	0x9b
	.uleb128 0xf
	.4byte	0x17b
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x7
	.byte	0x41
	.byte	0x12
	.4byte	0x9b
	.uleb128 0xf
	.4byte	0x18c
	.uleb128 0x5
	.4byte	0x6b
	.uleb128 0xf
	.4byte	0x19d
	.uleb128 0x1a
	.4byte	.LASF32
	.byte	0x14
	.byte	0x8
	.2byte	0x425
	.byte	0x8
	.4byte	0x1d2
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x8
	.2byte	0x42a
	.byte	0xd
	.4byte	0x18c
	.byte	0
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x8
	.2byte	0x42b
	.byte	0x8
	.4byte	0x1d2
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.4byte	0xd6
	.4byte	0x1e2
	.uleb128 0x11
	.4byte	0xbc
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.4byte	.LASF31
	.byte	0x8
	.2byte	0x430
	.byte	0x22
	.4byte	0x1a7
	.uleb128 0xe
	.4byte	0xd6
	.4byte	0x1ff
	.uleb128 0x11
	.4byte	0xbc
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF33
	.byte	0x2c
	.byte	0x8
	.2byte	0x4e1
	.byte	0x10
	.4byte	0x270
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x8
	.2byte	0x4e3
	.byte	0x8
	.4byte	0xd6
	.byte	0
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x8
	.2byte	0x4e4
	.byte	0x13
	.4byte	0x1e2
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x8
	.2byte	0x4e5
	.byte	0xd
	.4byte	0x18c
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x8
	.2byte	0x4e6
	.byte	0x8
	.4byte	0xd6
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x8
	.2byte	0x4e7
	.byte	0x11
	.4byte	0x14e
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x8
	.2byte	0x4e9
	.byte	0xf
	.4byte	0x17b
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x8
	.2byte	0x4eb
	.byte	0xa
	.4byte	0x6b
	.byte	0x28
	.byte	0
	.uleb128 0x17
	.4byte	.LASF40
	.byte	0x8
	.2byte	0x4ed
	.byte	0x3
	.4byte	0x1ff
	.uleb128 0x1a
	.4byte	.LASF41
	.byte	0x24
	.byte	0x8
	.2byte	0x4fd
	.byte	0x10
	.4byte	0x2c4
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x8
	.2byte	0x4ff
	.byte	0x9
	.4byte	0x2c4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x8
	.2byte	0x500
	.byte	0x9
	.4byte	0x1ef
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x8
	.2byte	0x501
	.byte	0xa
	.4byte	0x6b
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x8
	.2byte	0x503
	.byte	0xf
	.4byte	0x17b
	.byte	0x20
	.byte	0
	.uleb128 0xe
	.4byte	0xc3
	.4byte	0x2d4
	.uleb128 0x11
	.4byte	0xbc
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.4byte	.LASF46
	.byte	0x8
	.2byte	0x505
	.byte	0x3
	.4byte	0x27d
	.uleb128 0x17
	.4byte	.LASF47
	.byte	0x8
	.2byte	0x508
	.byte	0x1e
	.4byte	0x2d4
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x9
	.byte	0x46
	.byte	0x25
	.4byte	0x2fa
	.uleb128 0x5
	.4byte	0x2ff
	.uleb128 0x24
	.4byte	.LASF196
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x4
	.byte	0xa
	.byte	0x33
	.byte	0x8
	.4byte	0x31f
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0xa
	.byte	0x34
	.byte	0x9
	.4byte	0x136
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0xa
	.byte	0x39
	.byte	0x19
	.4byte	0x304
	.uleb128 0xf
	.4byte	0x31f
	.uleb128 0x17
	.4byte	.LASF52
	.byte	0xb
	.2byte	0x126
	.byte	0x14
	.4byte	0x31f
	.uleb128 0xf
	.4byte	0x330
	.uleb128 0x12
	.4byte	.LASF53
	.byte	0x10
	.byte	0xc
	.byte	0xba
	.byte	0x8
	.4byte	0x3b8
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0xc
	.byte	0xbc
	.byte	0x10
	.4byte	0x3b8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0xc
	.byte	0xbf
	.byte	0x9
	.4byte	0xd6
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0xc
	.byte	0xc8
	.byte	0x9
	.4byte	0x12a
	.byte	0x8
	.uleb128 0xd
	.string	"len"
	.byte	0xc
	.byte	0xcb
	.byte	0x9
	.4byte	0x12a
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0xc
	.byte	0xd0
	.byte	0x8
	.4byte	0x112
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0xc
	.byte	0xd3
	.byte	0x8
	.4byte	0x112
	.byte	0xd
	.uleb128 0xd
	.string	"ref"
	.byte	0xc
	.byte	0xda
	.byte	0x8
	.4byte	0x112
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0xc
	.byte	0xdd
	.byte	0x8
	.4byte	0x112
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	0x342
	.uleb128 0x25
	.4byte	0x7c
	.byte	0xf
	.byte	0x34
	.4byte	0x429
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x7
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0xd
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0xe
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0xf
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF80
	.4byte	0x7c
	.byte	0xd
	.byte	0x71
	.byte	0x6
	.4byte	0x452
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0x3
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF81
	.4byte	0x7c
	.byte	0xd
	.byte	0x9f
	.byte	0x6
	.4byte	0x46f
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x474
	.uleb128 0x1a
	.4byte	.LASF84
	.byte	0x54
	.byte	0xd
	.2byte	0x10d
	.byte	0x8
	.4byte	0x597
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0xd
	.2byte	0x110
	.byte	0x11
	.4byte	0x46f
	.byte	0
	.uleb128 0x7
	.4byte	.LASF85
	.byte	0xd
	.2byte	0x115
	.byte	0xd
	.4byte	0x330
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0xd
	.2byte	0x116
	.byte	0xd
	.4byte	0x330
	.byte	0x8
	.uleb128 0x26
	.string	"gw"
	.2byte	0x117
	.byte	0xd
	.4byte	0x330
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0xd
	.2byte	0x129
	.byte	0x12
	.4byte	0x597
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0xd
	.2byte	0x12f
	.byte	0x13
	.4byte	0x5bc
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0xd
	.2byte	0x134
	.byte	0x17
	.4byte	0x5eb
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0xd
	.2byte	0x13f
	.byte	0x1c
	.4byte	0x610
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0xd
	.2byte	0x144
	.byte	0x1c
	.4byte	0x610
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0xd
	.2byte	0x14c
	.byte	0x9
	.4byte	0xd6
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF93
	.byte	0xd
	.2byte	0x14e
	.byte	0x9
	.4byte	0x1d2
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0xd
	.2byte	0x152
	.byte	0xf
	.4byte	0xf8
	.byte	0x38
	.uleb128 0x26
	.string	"mtu"
	.2byte	0x158
	.byte	0x9
	.4byte	0x12a
	.byte	0x3c
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0xd
	.2byte	0x15e
	.byte	0x8
	.4byte	0x656
	.byte	0x3e
	.uleb128 0x7
	.4byte	.LASF96
	.byte	0xd
	.2byte	0x160
	.byte	0x8
	.4byte	0x112
	.byte	0x44
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0xd
	.2byte	0x162
	.byte	0x8
	.4byte	0x112
	.byte	0x45
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0xd
	.2byte	0x164
	.byte	0x8
	.4byte	0x666
	.byte	0x46
	.uleb128 0x26
	.string	"num"
	.2byte	0x167
	.byte	0x8
	.4byte	0x112
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF98
	.byte	0xd
	.2byte	0x17d
	.byte	0x1c
	.4byte	0x62c
	.byte	0x4c
	.uleb128 0x7
	.4byte	.LASF99
	.byte	0xd
	.2byte	0x185
	.byte	0xf
	.4byte	0x6ec
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.4byte	.LASF100
	.byte	0xd
	.byte	0xb5
	.byte	0x11
	.4byte	0x5a3
	.uleb128 0x5
	.4byte	0x5a8
	.uleb128 0x1d
	.4byte	0x142
	.4byte	0x5bc
	.uleb128 0x1
	.4byte	0x3b8
	.uleb128 0x1
	.4byte	0x46f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF101
	.byte	0xd
	.byte	0xc0
	.byte	0x11
	.4byte	0x5c8
	.uleb128 0x5
	.4byte	0x5cd
	.uleb128 0x1d
	.4byte	0x142
	.4byte	0x5e6
	.uleb128 0x1
	.4byte	0x46f
	.uleb128 0x1
	.4byte	0x3b8
	.uleb128 0x1
	.4byte	0x5e6
	.byte	0
	.uleb128 0x5
	.4byte	0x32b
	.uleb128 0x6
	.4byte	.LASF102
	.byte	0xd
	.byte	0xd7
	.byte	0x11
	.4byte	0x5f7
	.uleb128 0x5
	.4byte	0x5fc
	.uleb128 0x1d
	.4byte	0x142
	.4byte	0x610
	.uleb128 0x1
	.4byte	0x46f
	.uleb128 0x1
	.4byte	0x3b8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF103
	.byte	0xd
	.byte	0xd9
	.byte	0x10
	.4byte	0x61c
	.uleb128 0x5
	.4byte	0x621
	.uleb128 0x19
	.4byte	0x62c
	.uleb128 0x1
	.4byte	0x46f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF104
	.byte	0xd
	.byte	0xdc
	.byte	0x11
	.4byte	0x638
	.uleb128 0x5
	.4byte	0x63d
	.uleb128 0x1d
	.4byte	0x142
	.4byte	0x656
	.uleb128 0x1
	.4byte	0x46f
	.uleb128 0x1
	.4byte	0x5e6
	.uleb128 0x1
	.4byte	0x452
	.byte	0
	.uleb128 0xe
	.4byte	0x112
	.4byte	0x666
	.uleb128 0x11
	.4byte	0xbc
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.4byte	0xec
	.4byte	0x676
	.uleb128 0x11
	.4byte	0xbc
	.byte	0x1
	.byte	0
	.uleb128 0x38
	.string	"acd"
	.byte	0x14
	.byte	0xe
	.byte	0x47
	.byte	0x8
	.4byte	0x6ec
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0xe
	.byte	0x4a
	.byte	0xf
	.4byte	0x6ec
	.byte	0
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0xe
	.byte	0x4c
	.byte	0xe
	.4byte	0x31f
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0xe
	.byte	0x4e
	.byte	0x14
	.4byte	0x732
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0xe
	.byte	0x50
	.byte	0x8
	.4byte	0x112
	.byte	0x9
	.uleb128 0xd
	.string	"ttw"
	.byte	0xe
	.byte	0x52
	.byte	0x9
	.4byte	0x12a
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0xe
	.byte	0x54
	.byte	0x8
	.4byte	0x112
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0xe
	.byte	0x56
	.byte	0x8
	.4byte	0x112
	.byte	0xd
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xe
	.byte	0x59
	.byte	0x1b
	.4byte	0x768
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.4byte	0x676
	.uleb128 0x5
	.4byte	0x33d
	.uleb128 0x25
	.4byte	0x7c
	.byte	0x10
	.byte	0x3a
	.4byte	0x732
	.uleb128 0x4
	.4byte	.LASF110
	.byte	0
	.uleb128 0x4
	.4byte	.LASF111
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF112
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF113
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF114
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF115
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF116
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF117
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF118
	.byte	0x10
	.byte	0x4f
	.byte	0x3
	.4byte	0x6f6
	.uleb128 0x25
	.4byte	0x7c
	.byte	0x10
	.byte	0x51
	.4byte	0x75c
	.uleb128 0x4
	.4byte	.LASF119
	.byte	0
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF122
	.byte	0x10
	.byte	0x55
	.byte	0x3
	.4byte	0x73e
	.uleb128 0x6
	.4byte	.LASF123
	.byte	0xe
	.byte	0x44
	.byte	0x10
	.4byte	0x774
	.uleb128 0x5
	.4byte	0x779
	.uleb128 0x19
	.4byte	0x789
	.uleb128 0x1
	.4byte	0x46f
	.uleb128 0x1
	.4byte	0x75c
	.byte	0
	.uleb128 0x6
	.4byte	.LASF124
	.byte	0x11
	.byte	0xea
	.byte	0x10
	.4byte	0x795
	.uleb128 0x5
	.4byte	0x79a
	.uleb128 0x19
	.4byte	0x7a5
	.uleb128 0x1
	.4byte	0x46f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF125
	.byte	0x11
	.byte	0xeb
	.byte	0x11
	.4byte	0x7b1
	.uleb128 0x5
	.4byte	0x7b6
	.uleb128 0x1d
	.4byte	0x142
	.4byte	0x7c5
	.uleb128 0x1
	.4byte	0x46f
	.byte	0
	.uleb128 0x27
	.byte	0x10
	.byte	0x12
	.byte	0x64
	.byte	0x9
	.4byte	0x810
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0x12
	.byte	0x66
	.byte	0xe
	.4byte	0x9b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0x12
	.byte	0x68
	.byte	0xe
	.4byte	0x83
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0x12
	.byte	0x6a
	.byte	0xe
	.4byte	0x83
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0x12
	.byte	0x6c
	.byte	0x13
	.4byte	0xa7
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0x12
	.byte	0x6e
	.byte	0x13
	.4byte	0xa7
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF131
	.byte	0x12
	.byte	0x6f
	.byte	0x3
	.4byte	0x7c5
	.uleb128 0x6
	.4byte	.LASF132
	.byte	0x12
	.byte	0x72
	.byte	0x10
	.4byte	0x828
	.uleb128 0x5
	.4byte	0x82d
	.uleb128 0x19
	.4byte	0x83d
	.uleb128 0x1
	.4byte	0x83d
	.uleb128 0x1
	.4byte	0xd6
	.byte	0
	.uleb128 0x5
	.4byte	0x810
	.uleb128 0x6
	.4byte	.LASF133
	.byte	0x12
	.byte	0x74
	.byte	0x10
	.4byte	0x15a
	.uleb128 0x12
	.4byte	.LASF134
	.byte	0x18
	.byte	0x13
	.byte	0x23
	.byte	0x8
	.4byte	0x8b7
	.uleb128 0x2
	.4byte	.LASF135
	.byte	0x13
	.byte	0x25
	.byte	0xd
	.4byte	0x6b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0x13
	.byte	0x26
	.byte	0xd
	.4byte	0x6b
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x13
	.byte	0x27
	.byte	0xd
	.4byte	0x8b7
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x13
	.byte	0x28
	.byte	0xe
	.4byte	0x9b
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF139
	.byte	0x13
	.byte	0x29
	.byte	0xe
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF140
	.byte	0x13
	.byte	0x2a
	.byte	0x9
	.4byte	0xb5
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF141
	.byte	0x13
	.byte	0x2b
	.byte	0xd
	.4byte	0x6b
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.4byte	0x6b
	.4byte	0x8c7
	.uleb128 0x11
	.4byte	0xbc
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.4byte	.LASF142
	.byte	0x20
	.byte	0x13
	.byte	0x46
	.byte	0x8
	.4byte	0x971
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0x13
	.byte	0x48
	.byte	0xe
	.4byte	0x83
	.byte	0
	.uleb128 0x2
	.4byte	.LASF144
	.byte	0x13
	.byte	0x4a
	.byte	0xd
	.4byte	0x8b7
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF145
	.byte	0x13
	.byte	0x4c
	.byte	0xd
	.4byte	0x6b
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF146
	.byte	0x13
	.byte	0x4e
	.byte	0xd
	.4byte	0x6b
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF147
	.byte	0x13
	.byte	0x50
	.byte	0xd
	.4byte	0x6b
	.byte	0xa
	.uleb128 0xd
	.string	"qos"
	.byte	0x13
	.byte	0x52
	.byte	0x9
	.4byte	0xb5
	.byte	0xc
	.uleb128 0xd
	.string	"aid"
	.byte	0x13
	.byte	0x53
	.byte	0xe
	.4byte	0x83
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF148
	.byte	0x13
	.byte	0x54
	.byte	0xd
	.4byte	0x6b
	.byte	0x12
	.uleb128 0x2
	.4byte	.LASF149
	.byte	0x13
	.byte	0x55
	.byte	0xe
	.4byte	0x83
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF150
	.byte	0x13
	.byte	0x56
	.byte	0xd
	.4byte	0x6b
	.byte	0x16
	.uleb128 0x2
	.4byte	.LASF151
	.byte	0x13
	.byte	0x57
	.byte	0xe
	.4byte	0x9b
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF152
	.byte	0x13
	.byte	0x58
	.byte	0xe
	.4byte	0x9b
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	0x8c7
	.uleb128 0xe
	.4byte	0xec
	.4byte	0x986
	.uleb128 0x11
	.4byte	0xbc
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	0xec
	.4byte	0x996
	.uleb128 0x11
	.4byte	0xbc
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xec
	.4byte	0x9a6
	.uleb128 0x11
	.4byte	0xbc
	.byte	0x40
	.byte	0
	.uleb128 0xe
	.4byte	0xec
	.4byte	0x9b6
	.uleb128 0x11
	.4byte	0xbc
	.byte	0x3f
	.byte	0
	.uleb128 0x5
	.4byte	0x9b
	.uleb128 0x1b
	.4byte	.LASF153
	.4byte	0x7c
	.byte	0x14
	.byte	0x52
	.byte	0x6
	.4byte	0xa26
	.uleb128 0x4
	.4byte	.LASF154
	.byte	0
	.uleb128 0x4
	.4byte	.LASF155
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF156
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF157
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF158
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF159
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF160
	.byte	0x11
	.uleb128 0x4
	.4byte	.LASF161
	.byte	0x12
	.uleb128 0x4
	.4byte	.LASF162
	.byte	0x13
	.uleb128 0x4
	.4byte	.LASF163
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF164
	.byte	0x15
	.uleb128 0x4
	.4byte	.LASF165
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF166
	.byte	0x7
	.uleb128 0x4
	.4byte	.LASF167
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF168
	.byte	0x9
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF169
	.4byte	0x7c
	.byte	0x14
	.byte	0x65
	.byte	0x6
	.4byte	0xa43
	.uleb128 0x4
	.4byte	.LASF170
	.byte	0
	.uleb128 0x4
	.4byte	.LASF171
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.4byte	.LASF172
	.byte	0x8
	.byte	0x14
	.byte	0x6a
	.byte	0x10
	.4byte	0xa6b
	.uleb128 0x2
	.4byte	.LASF173
	.byte	0x14
	.byte	0x6b
	.byte	0xa
	.4byte	0xa6b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF174
	.byte	0x14
	.byte	0x6c
	.byte	0x9
	.4byte	0xb5
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.4byte	0xec
	.4byte	0xa7b
	.uleb128 0x11
	.4byte	0xbc
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF175
	.byte	0x14
	.byte	0x6d
	.byte	0x3
	.4byte	0xa43
	.uleb128 0x12
	.4byte	.LASF176
	.byte	0x8
	.byte	0x15
	.byte	0x74
	.byte	0x8
	.4byte	0xaaf
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0x15
	.byte	0x77
	.byte	0x8
	.4byte	0xb5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF177
	.byte	0x15
	.byte	0x7f
	.byte	0xa
	.4byte	0xd6
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.4byte	.LASF178
	.byte	0x14
	.byte	0x15
	.byte	0xbb
	.byte	0x8
	.4byte	0xafe
	.uleb128 0x2
	.4byte	.LASF179
	.byte	0x15
	.byte	0xbe
	.byte	0x8
	.4byte	0xb5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF180
	.byte	0x15
	.byte	0xc7
	.byte	0xa
	.4byte	0xd6
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF181
	.byte	0x15
	.byte	0xd6
	.byte	0xc
	.4byte	0xb1e
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF182
	.byte	0x15
	.byte	0xe3
	.byte	0xc
	.4byte	0xb38
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF183
	.byte	0x15
	.byte	0xec
	.byte	0x18
	.4byte	0xbb3
	.byte	0x10
	.byte	0
	.uleb128 0x1d
	.4byte	0xb12
	.4byte	0xb12
	.uleb128 0x1
	.4byte	0xd6
	.uleb128 0x1
	.4byte	0xb19
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.byte	0x2
	.4byte	.LASF184
	.uleb128 0x5
	.4byte	0xa87
	.uleb128 0x5
	.4byte	0xafe
	.uleb128 0x19
	.4byte	0xb38
	.uleb128 0x1
	.4byte	0xd6
	.uleb128 0x1
	.4byte	0xb19
	.uleb128 0x1
	.4byte	0xd6
	.byte	0
	.uleb128 0x5
	.4byte	0xb23
	.uleb128 0x1a
	.4byte	.LASF92
	.byte	0x1c
	.byte	0x15
	.2byte	0x140
	.byte	0x8
	.4byte	0xbae
	.uleb128 0x7
	.4byte	.LASF185
	.byte	0x15
	.2byte	0x145
	.byte	0x18
	.4byte	0xbb3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF186
	.byte	0x15
	.2byte	0x14a
	.byte	0x18
	.4byte	0xbb3
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF187
	.byte	0x15
	.2byte	0x14e
	.byte	0x17
	.4byte	0xbb8
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF188
	.byte	0x15
	.2byte	0x152
	.byte	0xb
	.4byte	0xc3
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF177
	.byte	0x15
	.2byte	0x157
	.byte	0xa
	.4byte	0xd6
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF189
	.byte	0x15
	.2byte	0x165
	.byte	0xc
	.4byte	0xbcd
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF190
	.byte	0x15
	.2byte	0x170
	.byte	0xc
	.4byte	0xbcd
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.4byte	0xb3d
	.uleb128 0x5
	.4byte	0xbae
	.uleb128 0x5
	.4byte	0xaaf
	.uleb128 0x19
	.4byte	0xbcd
	.uleb128 0x1
	.4byte	0xd6
	.uleb128 0x1
	.4byte	0xb19
	.byte	0
	.uleb128 0x5
	.4byte	0xbbd
	.uleb128 0x1a
	.4byte	.LASF191
	.byte	0xc
	.byte	0x15
	.2byte	0x178
	.byte	0x8
	.4byte	0xc0b
	.uleb128 0x7
	.4byte	.LASF192
	.byte	0x15
	.2byte	0x17b
	.byte	0x18
	.4byte	0xbb3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF193
	.byte	0x15
	.2byte	0x182
	.byte	0x18
	.4byte	0xbb3
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF194
	.byte	0x15
	.2byte	0x18a
	.byte	0x18
	.4byte	0xbb3
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF195
	.byte	0x16
	.byte	0x4d
	.byte	0x22
	.4byte	0xc1c
	.uleb128 0xf
	.4byte	0xc0b
	.uleb128 0x5
	.4byte	0xc21
	.uleb128 0x24
	.4byte	.LASF197
	.uleb128 0x6
	.4byte	.LASF198
	.byte	0x16
	.byte	0x52
	.byte	0x10
	.4byte	0xc32
	.uleb128 0x5
	.4byte	0xc37
	.uleb128 0x19
	.4byte	0xc42
	.uleb128 0x1
	.4byte	0xc0b
	.byte	0
	.uleb128 0x6
	.4byte	.LASF199
	.byte	0x17
	.byte	0x45
	.byte	0x24
	.4byte	0xc4e
	.uleb128 0x5
	.4byte	0xc53
	.uleb128 0x24
	.4byte	.LASF200
	.uleb128 0x6
	.4byte	.LASF201
	.byte	0x18
	.byte	0x52
	.byte	0x10
	.4byte	0xd6
	.uleb128 0x6
	.4byte	.LASF202
	.byte	0x19
	.byte	0xac
	.byte	0x1f
	.4byte	0x2e1
	.uleb128 0x6
	.4byte	.LASF203
	.byte	0x19
	.byte	0xb1
	.byte	0x17
	.4byte	0x270
	.uleb128 0x6
	.4byte	.LASF204
	.byte	0x19
	.byte	0xbc
	.byte	0x17
	.4byte	0xc0b
	.uleb128 0x1b
	.4byte	.LASF205
	.4byte	0x7c
	.byte	0x1a
	.byte	0x34
	.byte	0x6
	.4byte	0xcab
	.uleb128 0x4
	.4byte	.LASF206
	.byte	0
	.uleb128 0x4
	.4byte	.LASF207
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF208
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF209
	.4byte	0x7c
	.byte	0x1a
	.byte	0x3a
	.byte	0xe
	.4byte	0xd76
	.uleb128 0x4
	.4byte	.LASF210
	.byte	0
	.uleb128 0x4
	.4byte	.LASF211
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF212
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF213
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF214
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF215
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF216
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF217
	.byte	0x7
	.uleb128 0x4
	.4byte	.LASF218
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF219
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF220
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF221
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF222
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF223
	.byte	0xd
	.uleb128 0x4
	.4byte	.LASF224
	.byte	0xe
	.uleb128 0x4
	.4byte	.LASF225
	.byte	0xf
	.uleb128 0x4
	.4byte	.LASF226
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF227
	.byte	0x11
	.uleb128 0x4
	.4byte	.LASF228
	.byte	0x12
	.uleb128 0x4
	.4byte	.LASF229
	.byte	0x13
	.uleb128 0x4
	.4byte	.LASF230
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF231
	.byte	0x15
	.uleb128 0x4
	.4byte	.LASF232
	.byte	0x16
	.uleb128 0x4
	.4byte	.LASF233
	.byte	0x17
	.uleb128 0x4
	.4byte	.LASF234
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF235
	.byte	0x19
	.uleb128 0x4
	.4byte	.LASF236
	.byte	0x1a
	.uleb128 0x4
	.4byte	.LASF237
	.byte	0x1b
	.uleb128 0x4
	.4byte	.LASF238
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF239
	.byte	0x1d
	.uleb128 0x4
	.4byte	.LASF240
	.byte	0x1e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF241
	.byte	0x1a
	.byte	0x64
	.byte	0x3
	.4byte	0xcab
	.uleb128 0x1b
	.4byte	.LASF242
	.4byte	0x7c
	.byte	0x1a
	.byte	0x66
	.byte	0xe
	.4byte	0xdb1
	.uleb128 0x4
	.4byte	.LASF243
	.byte	0
	.uleb128 0x4
	.4byte	.LASF244
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF245
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF246
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF247
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF248
	.byte	0x1a
	.byte	0x6c
	.byte	0x3
	.4byte	0xd82
	.uleb128 0x12
	.4byte	.LASF249
	.byte	0xd
	.byte	0x1a
	.byte	0x6f
	.byte	0x10
	.4byte	0xe0b
	.uleb128 0xd
	.string	"ev"
	.byte	0x1a
	.byte	0x70
	.byte	0x17
	.4byte	0xd76
	.byte	0
	.uleb128 0x2
	.4byte	.LASF250
	.byte	0x1a
	.byte	0x71
	.byte	0xb
	.4byte	0xd6
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF251
	.byte	0x1a
	.byte	0x72
	.byte	0xb
	.4byte	0xd6
	.byte	0x5
	.uleb128 0xd
	.string	"len"
	.byte	0x1a
	.byte	0x73
	.byte	0xe
	.4byte	0x9b
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF177
	.byte	0x1a
	.byte	0x74
	.byte	0xd
	.4byte	0xe0b
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.4byte	0x6b
	.4byte	0xe1b
	.uleb128 0x39
	.4byte	0xbc
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF252
	.byte	0x1a
	.byte	0x75
	.byte	0x3
	.4byte	0xdbd
	.uleb128 0x12
	.4byte	.LASF253
	.byte	0x14
	.byte	0x1a
	.byte	0x77
	.byte	0x10
	.4byte	0xe83
	.uleb128 0xd
	.string	"ops"
	.byte	0x1a
	.byte	0x78
	.byte	0xe
	.4byte	0x9b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF254
	.byte	0x1a
	.byte	0x79
	.byte	0xe
	.4byte	0x9b
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF255
	.byte	0x1a
	.byte	0x7a
	.byte	0xe
	.4byte	0x9b
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0x1a
	.byte	0x7b
	.byte	0xe
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF256
	.byte	0x1a
	.byte	0x7c
	.byte	0xe
	.4byte	0x9b
	.byte	0x10
	.uleb128 0xd
	.string	"buf"
	.byte	0x1a
	.byte	0x7d
	.byte	0xe
	.4byte	0xe83
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.4byte	0x9b
	.4byte	0xe92
	.uleb128 0x3a
	.4byte	0xbc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF257
	.byte	0x1a
	.byte	0x7e
	.byte	0x3
	.4byte	0xe27
	.uleb128 0x12
	.4byte	.LASF258
	.byte	0xb9
	.byte	0x1a
	.byte	0x80
	.byte	0x10
	.4byte	0xf55
	.uleb128 0x2
	.4byte	.LASF259
	.byte	0x1a
	.byte	0x81
	.byte	0xa
	.4byte	0x976
	.byte	0
	.uleb128 0x2
	.4byte	.LASF260
	.byte	0x1a
	.byte	0x82
	.byte	0xa
	.4byte	0x986
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF261
	.byte	0x1a
	.byte	0x83
	.byte	0xe
	.4byte	0x9b
	.byte	0x21
	.uleb128 0xd
	.string	"psk"
	.byte	0x1a
	.byte	0x84
	.byte	0xa
	.4byte	0x9a6
	.byte	0x25
	.uleb128 0x2
	.4byte	.LASF262
	.byte	0x1a
	.byte	0x85
	.byte	0xa
	.4byte	0x986
	.byte	0x65
	.uleb128 0xd
	.string	"pmk"
	.byte	0x1a
	.byte	0x86
	.byte	0xa
	.4byte	0x9a6
	.byte	0x66
	.uleb128 0x2
	.4byte	.LASF263
	.byte	0x1a
	.byte	0x87
	.byte	0xa
	.4byte	0x986
	.byte	0xa6
	.uleb128 0x2
	.4byte	.LASF264
	.byte	0x1a
	.byte	0x88
	.byte	0xe
	.4byte	0x9b
	.byte	0xa7
	.uleb128 0x2
	.4byte	.LASF265
	.byte	0x1a
	.byte	0x89
	.byte	0xe
	.4byte	0x9b
	.byte	0xab
	.uleb128 0xd
	.string	"mac"
	.byte	0x1a
	.byte	0x8a
	.byte	0xd
	.4byte	0x8b7
	.byte	0xaf
	.uleb128 0x2
	.4byte	.LASF148
	.byte	0x1a
	.byte	0x8b
	.byte	0xd
	.4byte	0x6b
	.byte	0xb5
	.uleb128 0x2
	.4byte	.LASF266
	.byte	0x1a
	.byte	0x8c
	.byte	0xe
	.4byte	0x83
	.byte	0xb6
	.uleb128 0x2
	.4byte	.LASF267
	.byte	0x1a
	.byte	0x8d
	.byte	0xd
	.4byte	0x6b
	.byte	0xb8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF268
	.byte	0x1a
	.byte	0x8e
	.byte	0x3
	.4byte	0xe9e
	.uleb128 0x12
	.4byte	.LASF269
	.byte	0x14
	.byte	0x1a
	.byte	0x90
	.byte	0x10
	.4byte	0xfae
	.uleb128 0xd
	.string	"ip"
	.byte	0x1a
	.byte	0x91
	.byte	0xe
	.4byte	0x9b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF270
	.byte	0x1a
	.byte	0x92
	.byte	0xe
	.4byte	0x9b
	.byte	0x4
	.uleb128 0xd
	.string	"gw"
	.byte	0x1a
	.byte	0x93
	.byte	0xe
	.4byte	0x9b
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF271
	.byte	0x1a
	.byte	0x94
	.byte	0xe
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF272
	.byte	0x1a
	.byte	0x95
	.byte	0xe
	.4byte	0x9b
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF273
	.byte	0x1a
	.byte	0x96
	.byte	0x3
	.4byte	0xf61
	.uleb128 0x12
	.4byte	.LASF274
	.byte	0x6f
	.byte	0x1a
	.byte	0x98
	.byte	0x10
	.4byte	0x1030
	.uleb128 0x2
	.4byte	.LASF275
	.byte	0x1a
	.byte	0x99
	.byte	0xd
	.4byte	0x51
	.byte	0
	.uleb128 0x2
	.4byte	.LASF259
	.byte	0x1a
	.byte	0x9a
	.byte	0xa
	.4byte	0x976
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF260
	.byte	0x1a
	.byte	0x9b
	.byte	0xa
	.4byte	0x986
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF276
	.byte	0x1a
	.byte	0x9c
	.byte	0xd
	.4byte	0x6b
	.byte	0x25
	.uleb128 0x2
	.4byte	.LASF261
	.byte	0x1a
	.byte	0x9d
	.byte	0xe
	.4byte	0x9b
	.byte	0x26
	.uleb128 0xd
	.string	"psk"
	.byte	0x1a
	.byte	0x9e
	.byte	0xa
	.4byte	0x9a6
	.byte	0x2a
	.uleb128 0x2
	.4byte	.LASF262
	.byte	0x1a
	.byte	0x9f
	.byte	0xa
	.4byte	0x986
	.byte	0x6a
	.uleb128 0x2
	.4byte	.LASF264
	.byte	0x1a
	.byte	0xa0
	.byte	0xe
	.4byte	0x9b
	.byte	0x6b
	.byte	0
	.uleb128 0x6
	.4byte	.LASF277
	.byte	0x1a
	.byte	0xa1
	.byte	0x3
	.4byte	0xfba
	.uleb128 0x12
	.4byte	.LASF278
	.byte	0xc4
	.byte	0x1a
	.byte	0xa5
	.byte	0x10
	.4byte	0x10e6
	.uleb128 0x2
	.4byte	.LASF259
	.byte	0x1a
	.byte	0xa6
	.byte	0xa
	.4byte	0x10e6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF279
	.byte	0x1a
	.byte	0xa7
	.byte	0xd
	.4byte	0x6b
	.byte	0x21
	.uleb128 0x2
	.4byte	.LASF261
	.byte	0x1a
	.byte	0xa8
	.byte	0xe
	.4byte	0x9b
	.byte	0x24
	.uleb128 0xd
	.string	"psk"
	.byte	0x1a
	.byte	0xa9
	.byte	0xa
	.4byte	0x996
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF264
	.byte	0x1a
	.byte	0xaa
	.byte	0xe
	.4byte	0x9b
	.byte	0x6c
	.uleb128 0xd
	.string	"pmk"
	.byte	0x1a
	.byte	0xab
	.byte	0xa
	.4byte	0x996
	.byte	0x70
	.uleb128 0x2
	.4byte	.LASF265
	.byte	0x1a
	.byte	0xac
	.byte	0xe
	.4byte	0x9b
	.byte	0xb4
	.uleb128 0xd
	.string	"mac"
	.byte	0x1a
	.byte	0xad
	.byte	0xd
	.4byte	0x8b7
	.byte	0xb8
	.uleb128 0x2
	.4byte	.LASF267
	.byte	0x1a
	.byte	0xae
	.byte	0xd
	.4byte	0x6b
	.byte	0xbe
	.uleb128 0x2
	.4byte	.LASF280
	.byte	0x1a
	.byte	0xb1
	.byte	0xd
	.4byte	0x6b
	.byte	0xbf
	.uleb128 0x2
	.4byte	.LASF281
	.byte	0x1a
	.byte	0xb2
	.byte	0xd
	.4byte	0x6b
	.byte	0xc0
	.uleb128 0x2
	.4byte	.LASF282
	.byte	0x1a
	.byte	0xb3
	.byte	0xd
	.4byte	0x6b
	.byte	0xc1
	.byte	0
	.uleb128 0xe
	.4byte	0xec
	.4byte	0x10f6
	.uleb128 0x11
	.4byte	0xbc
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF283
	.byte	0x1a
	.byte	0xb4
	.byte	0x3
	.4byte	0x103c
	.uleb128 0x12
	.4byte	.LASF284
	.byte	0x3c
	.byte	0x1a
	.byte	0xc0
	.byte	0x10
	.4byte	0x11ac
	.uleb128 0x2
	.4byte	.LASF259
	.byte	0x1a
	.byte	0xc1
	.byte	0xa
	.4byte	0x976
	.byte	0
	.uleb128 0x2
	.4byte	.LASF260
	.byte	0x1a
	.byte	0xc2
	.byte	0xa
	.4byte	0x986
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF261
	.byte	0x1a
	.byte	0xc3
	.byte	0xe
	.4byte	0x9b
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF144
	.byte	0x1a
	.byte	0xc4
	.byte	0xd
	.4byte	0x8b7
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF275
	.byte	0x1a
	.byte	0xc5
	.byte	0xd
	.4byte	0x6b
	.byte	0x2e
	.uleb128 0x2
	.4byte	.LASF140
	.byte	0x1a
	.byte	0xc6
	.byte	0xc
	.4byte	0x2b
	.byte	0x2f
	.uleb128 0x2
	.4byte	.LASF285
	.byte	0x1a
	.byte	0xc7
	.byte	0xc
	.4byte	0x2b
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF286
	.byte	0x1a
	.byte	0xc8
	.byte	0xc
	.4byte	0x2b
	.byte	0x31
	.uleb128 0x2
	.4byte	.LASF287
	.byte	0x1a
	.byte	0xc9
	.byte	0xd
	.4byte	0x6b
	.byte	0x32
	.uleb128 0x2
	.4byte	.LASF288
	.byte	0x1a
	.byte	0xca
	.byte	0xd
	.4byte	0x6b
	.byte	0x33
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0x1a
	.byte	0xcb
	.byte	0xd
	.4byte	0x6b
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF289
	.byte	0x1a
	.byte	0xcc
	.byte	0xe
	.4byte	0x9b
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.4byte	.LASF290
	.byte	0x1a
	.byte	0xcd
	.byte	0x3
	.4byte	0x1102
	.uleb128 0x27
	.byte	0x14
	.byte	0x1a
	.byte	0xd3
	.byte	0x5
	.4byte	0x1201
	.uleb128 0xd
	.string	"ip"
	.byte	0x1a
	.byte	0xd4
	.byte	0x12
	.4byte	0x9b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF270
	.byte	0x1a
	.byte	0xd5
	.byte	0x12
	.4byte	0x9b
	.byte	0x4
	.uleb128 0xd
	.string	"gw"
	.byte	0x1a
	.byte	0xd6
	.byte	0x12
	.4byte	0x9b
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF271
	.byte	0x1a
	.byte	0xd7
	.byte	0x12
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF272
	.byte	0x1a
	.byte	0xd8
	.byte	0x12
	.4byte	0x9b
	.byte	0x10
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.byte	0x1a
	.byte	0xdc
	.byte	0x9
	.4byte	0x1218
	.uleb128 0x2
	.4byte	.LASF140
	.byte	0x1a
	.byte	0xdd
	.byte	0x14
	.4byte	0x2b
	.byte	0
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.byte	0x1a
	.byte	0xdb
	.byte	0x5
	.4byte	0x122e
	.uleb128 0x3c
	.string	"sta"
	.byte	0x1a
	.byte	0xde
	.byte	0xb
	.4byte	0x1201
	.byte	0
	.uleb128 0x12
	.4byte	.LASF291
	.byte	0x78
	.byte	0x1a
	.byte	0xcf
	.byte	0x8
	.4byte	0x1283
	.uleb128 0x2
	.4byte	.LASF292
	.byte	0x1a
	.byte	0xd0
	.byte	0x9
	.4byte	0xb5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF293
	.byte	0x1a
	.byte	0xd1
	.byte	0xd
	.4byte	0x6b
	.byte	0x4
	.uleb128 0xd
	.string	"mac"
	.byte	0x1a
	.byte	0xd2
	.byte	0xd
	.4byte	0x8b7
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF294
	.byte	0x1a
	.byte	0xd9
	.byte	0x7
	.4byte	0x11b8
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0x1a
	.byte	0xda
	.byte	0x12
	.4byte	0x474
	.byte	0x20
	.uleb128 0x3d
	.4byte	0x1218
	.byte	0x74
	.byte	0
	.uleb128 0x12
	.4byte	.LASF295
	.byte	0x6e
	.byte	0x1a
	.byte	0xe2
	.byte	0x10
	.4byte	0x12ec
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0x1a
	.byte	0xe3
	.byte	0xe
	.4byte	0x83
	.byte	0
	.uleb128 0x2
	.4byte	.LASF296
	.byte	0x1a
	.byte	0xe7
	.byte	0xd
	.4byte	0x6b
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF259
	.byte	0x1a
	.byte	0xe8
	.byte	0xa
	.4byte	0x976
	.byte	0x3
	.uleb128 0xd
	.string	"psk"
	.byte	0x1a
	.byte	0xe9
	.byte	0xa
	.4byte	0x996
	.byte	0x23
	.uleb128 0x2
	.4byte	.LASF144
	.byte	0x1a
	.byte	0xea
	.byte	0xd
	.4byte	0x8b7
	.byte	0x64
	.uleb128 0x2
	.4byte	.LASF297
	.byte	0x1a
	.byte	0xeb
	.byte	0xe
	.4byte	0x83
	.byte	0x6a
	.uleb128 0x2
	.4byte	.LASF298
	.byte	0x1a
	.byte	0xec
	.byte	0xd
	.4byte	0x6b
	.byte	0x6c
	.byte	0
	.uleb128 0x6
	.4byte	.LASF299
	.byte	0x1a
	.byte	0xed
	.byte	0x3
	.4byte	0x1283
	.uleb128 0x12
	.4byte	.LASF300
	.byte	0x18
	.byte	0x1a
	.byte	0xef
	.byte	0x10
	.4byte	0x1361
	.uleb128 0x2
	.4byte	.LASF135
	.byte	0x1a
	.byte	0xf0
	.byte	0xd
	.4byte	0x6b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0x1a
	.byte	0xf1
	.byte	0xd
	.4byte	0x6b
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x1a
	.byte	0xf2
	.byte	0xd
	.4byte	0x8b7
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x1a
	.byte	0xf3
	.byte	0xe
	.4byte	0x9b
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF139
	.byte	0x1a
	.byte	0xf4
	.byte	0xe
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF140
	.byte	0x1a
	.byte	0xf5
	.byte	0x9
	.4byte	0xb5
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF141
	.byte	0x1a
	.byte	0xf6
	.byte	0xd
	.4byte	0x6b
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF301
	.byte	0x1a
	.byte	0xf7
	.byte	0x3
	.4byte	0x12f8
	.uleb128 0x3e
	.4byte	.LASF302
	.2byte	0x17e4
	.byte	0x1a
	.byte	0xf9
	.byte	0x10
	.4byte	0x148d
	.uleb128 0x2
	.4byte	.LASF303
	.byte	0x1a
	.byte	0xfa
	.byte	0xd
	.4byte	0x6b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF275
	.byte	0x1a
	.byte	0xfc
	.byte	0x9
	.4byte	0xb5
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF304
	.byte	0x1a
	.byte	0xfd
	.byte	0x9
	.4byte	0xb5
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF305
	.byte	0x1a
	.byte	0xff
	.byte	0x17
	.4byte	0x122e
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF306
	.byte	0x1a
	.2byte	0x100
	.byte	0x17
	.4byte	0x122e
	.byte	0x84
	.uleb128 0x7
	.4byte	.LASF307
	.byte	0x1a
	.2byte	0x101
	.byte	0x23
	.4byte	0xdb1
	.byte	0xfc
	.uleb128 0x15
	.4byte	.LASF308
	.2byte	0x103
	.byte	0x19
	.4byte	0x148d
	.2byte	0x100
	.uleb128 0x15
	.4byte	.LASF309
	.2byte	0x104
	.byte	0x9
	.4byte	0xb5
	.2byte	0x288
	.uleb128 0x15
	.4byte	.LASF310
	.2byte	0x106
	.byte	0x1b
	.4byte	0x149d
	.2byte	0x28c
	.uleb128 0x2b
	.string	"mq"
	.2byte	0x107
	.byte	0x17
	.4byte	0xc64
	.2byte	0xe44
	.uleb128 0x15
	.4byte	.LASF311
	.2byte	0x108
	.byte	0xd
	.4byte	0x14ad
	.2byte	0xe68
	.uleb128 0x2b
	.string	"m"
	.2byte	0x109
	.byte	0x19
	.4byte	0xbd2
	.2byte	0x1728
	.uleb128 0x15
	.4byte	.LASF312
	.2byte	0x10a
	.byte	0x10
	.4byte	0xc70
	.2byte	0x1734
	.uleb128 0x15
	.4byte	.LASF313
	.2byte	0x10b
	.byte	0x27
	.4byte	0x12ec
	.2byte	0x1760
	.uleb128 0x15
	.4byte	.LASF173
	.2byte	0x10c
	.byte	0xa
	.4byte	0xa6b
	.2byte	0x17ce
	.uleb128 0x15
	.4byte	.LASF314
	.2byte	0x10d
	.byte	0xd
	.4byte	0x6b
	.2byte	0x17d1
	.uleb128 0x15
	.4byte	.LASF174
	.2byte	0x10e
	.byte	0x9
	.4byte	0xb5
	.2byte	0x17d4
	.uleb128 0x15
	.4byte	.LASF315
	.2byte	0x111
	.byte	0xe
	.4byte	0x9b
	.2byte	0x17d8
	.uleb128 0x15
	.4byte	.LASF316
	.2byte	0x114
	.byte	0xe
	.4byte	0x9b
	.2byte	0x17dc
	.uleb128 0x15
	.4byte	.LASF317
	.2byte	0x118
	.byte	0x9
	.4byte	0xb5
	.2byte	0x17e0
	.byte	0
	.uleb128 0xe
	.4byte	0x10f6
	.4byte	0x149d
	.uleb128 0x11
	.4byte	0xbc
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	0x11ac
	.4byte	0x14ad
	.uleb128 0x11
	.4byte	0xbc
	.byte	0x31
	.byte	0
	.uleb128 0xe
	.4byte	0x6b
	.4byte	0x14be
	.uleb128 0x3f
	.4byte	0xbc
	.2byte	0x8bf
	.byte	0
	.uleb128 0x17
	.4byte	.LASF318
	.byte	0x1a
	.2byte	0x11a
	.byte	0x3
	.4byte	0x136d
	.uleb128 0x40
	.4byte	.LASF523
	.byte	0x1a
	.2byte	0x125
	.byte	0x14
	.4byte	0x14be
	.uleb128 0x41
	.4byte	0x14cb
	.byte	0x1
	.byte	0x39
	.byte	0xd
	.uleb128 0x5
	.byte	0x3
	.4byte	wifiMgmr
	.uleb128 0x13
	.4byte	.LASF319
	.byte	0x3b
	.byte	0x5
	.4byte	0xbae
	.uleb128 0x5
	.byte	0x3
	.4byte	stateGlobal
	.uleb128 0x13
	.4byte	.LASF320
	.byte	0x3c
	.byte	0x5
	.4byte	0xbae
	.uleb128 0x5
	.byte	0x3
	.4byte	stateIdle
	.uleb128 0x13
	.4byte	.LASF321
	.byte	0x3d
	.byte	0x5
	.4byte	0xbae
	.uleb128 0x5
	.byte	0x3
	.4byte	stateConnecting
	.uleb128 0x13
	.4byte	.LASF322
	.byte	0x3e
	.byte	0x5
	.4byte	0xbae
	.uleb128 0x5
	.byte	0x3
	.4byte	stateConnectedIPNo
	.uleb128 0x13
	.4byte	.LASF323
	.byte	0x3e
	.byte	0x19
	.4byte	0xbae
	.uleb128 0x5
	.byte	0x3
	.4byte	stateConnectedIPYes
	.uleb128 0x13
	.4byte	.LASF324
	.byte	0x3f
	.byte	0x5
	.4byte	0xbae
	.uleb128 0x5
	.byte	0x3
	.4byte	stateDisconnect
	.uleb128 0x13
	.4byte	.LASF325
	.byte	0x40
	.byte	0x5
	.4byte	0xbae
	.uleb128 0x5
	.byte	0x3
	.4byte	stateIfaceDown
	.uleb128 0x13
	.4byte	.LASF326
	.byte	0x41
	.byte	0x5
	.4byte	0xbae
	.uleb128 0x5
	.byte	0x3
	.4byte	stateSniffer
	.uleb128 0x13
	.4byte	.LASF327
	.byte	0x42
	.byte	0x5
	.4byte	0xbae
	.uleb128 0x5
	.byte	0x3
	.4byte	stateError
	.uleb128 0xb
	.4byte	.LASF328
	.2byte	0x240
	.byte	0xc
	.4byte	0xb5
	.uleb128 0x5
	.byte	0x3
	.4byte	auto_repeat
	.uleb128 0x1a
	.4byte	.LASF329
	.byte	0x4c
	.byte	0x1
	.2byte	0x344
	.byte	0x10
	.4byte	0x15bc
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x345
	.byte	0xa
	.4byte	0x976
	.byte	0
	.uleb128 0x7
	.4byte	.LASF312
	.byte	0x1
	.2byte	0x346
	.byte	0x10
	.4byte	0xc70
	.byte	0x20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF330
	.byte	0x1
	.2byte	0x347
	.byte	0x3
	.4byte	0x1591
	.uleb128 0xb
	.4byte	.LASF331
	.2byte	0x348
	.byte	0x1c
	.4byte	0x15bc
	.uleb128 0x5
	.byte	0x3
	.4byte	stateConnectedIPNo_data
	.uleb128 0x1a
	.4byte	.LASF332
	.byte	0x4c
	.byte	0x1
	.2byte	0x34c
	.byte	0x10
	.4byte	0x1606
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x34d
	.byte	0xa
	.4byte	0x976
	.byte	0
	.uleb128 0x7
	.4byte	.LASF312
	.byte	0x1
	.2byte	0x34e
	.byte	0x10
	.4byte	0xc70
	.byte	0x20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF333
	.byte	0x1
	.2byte	0x34f
	.byte	0x3
	.4byte	0x15db
	.uleb128 0xb
	.4byte	.LASF334
	.2byte	0x350
	.byte	0x1b
	.4byte	0x1606
	.uleb128 0x5
	.byte	0x3
	.4byte	state_tsen_reload_data
	.uleb128 0x42
	.4byte	.LASF335
	.2byte	0x108
	.byte	0x1
	.2byte	0x496
	.byte	0x10
	.4byte	0x166d
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x497
	.byte	0xa
	.4byte	0x976
	.byte	0
	.uleb128 0x7
	.4byte	.LASF312
	.byte	0x1
	.2byte	0x498
	.byte	0x10
	.4byte	0xc70
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x499
	.byte	0xd
	.4byte	0x6b
	.byte	0x4c
	.uleb128 0x7
	.4byte	.LASF337
	.byte	0x1
	.2byte	0x49a
	.byte	0x1d
	.4byte	0xf55
	.byte	0x4d
	.byte	0
	.uleb128 0x17
	.4byte	.LASF338
	.byte	0x1
	.2byte	0x49b
	.byte	0x3
	.4byte	0x1625
	.uleb128 0xb
	.4byte	.LASF339
	.2byte	0x49c
	.byte	0x19
	.4byte	0x166d
	.uleb128 0x5
	.byte	0x3
	.4byte	stateDisconnect_data
	.uleb128 0x16
	.4byte	.LASF343
	.byte	0x14
	.byte	0xa1
	.4byte	0xb5
	.uleb128 0x8
	.4byte	.LASF340
	.byte	0x13
	.byte	0x3d
	.byte	0x5
	.4byte	0xb5
	.4byte	0x16ad
	.uleb128 0x1
	.4byte	0x6b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF341
	.byte	0x13
	.byte	0x3c
	.byte	0x5
	.4byte	0xb5
	.4byte	0x16c8
	.uleb128 0x1
	.4byte	0x16c8
	.uleb128 0x1
	.4byte	0x6b
	.byte	0
	.uleb128 0x5
	.4byte	0x84e
	.uleb128 0x8
	.4byte	.LASF342
	.byte	0x13
	.byte	0x3b
	.byte	0x5
	.4byte	0xb5
	.4byte	0x16e3
	.uleb128 0x1
	.4byte	0x19d
	.byte	0
	.uleb128 0x16
	.4byte	.LASF344
	.byte	0x13
	.byte	0x44
	.4byte	0xb5
	.uleb128 0x8
	.4byte	.LASF345
	.byte	0x13
	.byte	0x43
	.byte	0x5
	.4byte	0xb5
	.4byte	0x1704
	.uleb128 0x1
	.4byte	0xe2
	.byte	0
	.uleb128 0x18
	.4byte	.LASF346
	.byte	0x17
	.2byte	0x349
	.byte	0x16
	.4byte	0xc42
	.4byte	0x172f
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0x16a
	.uleb128 0x1
	.4byte	0x1a2
	.uleb128 0x1
	.4byte	0x1734
	.byte	0
	.uleb128 0x5
	.4byte	0x2d4
	.uleb128 0xf
	.4byte	0x172f
	.uleb128 0x18
	.4byte	.LASF347
	.byte	0x9
	.2byte	0x14a
	.byte	0xd
	.4byte	0x16a
	.4byte	0x1769
	.uleb128 0x1
	.4byte	0x14e
	.uleb128 0x1
	.4byte	0xfd
	.uleb128 0x1
	.4byte	0x8f
	.uleb128 0x1
	.4byte	0xd8
	.uleb128 0x1
	.4byte	0x17b
	.uleb128 0x1
	.4byte	0x176e
	.byte	0
	.uleb128 0x5
	.4byte	0x2ee
	.uleb128 0xf
	.4byte	0x1769
	.uleb128 0x8
	.4byte	.LASF348
	.byte	0x14
	.byte	0x71
	.byte	0x5
	.4byte	0xb5
	.4byte	0x1789
	.uleb128 0x1
	.4byte	0x1789
	.byte	0
	.uleb128 0x5
	.4byte	0xa7b
	.uleb128 0x18
	.4byte	.LASF349
	.byte	0x15
	.2byte	0x1e1
	.byte	0x5
	.4byte	0xb5
	.4byte	0x17aa
	.uleb128 0x1
	.4byte	0x17aa
	.uleb128 0x1
	.4byte	0xb19
	.byte	0
	.uleb128 0x5
	.4byte	0xbd2
	.uleb128 0x18
	.4byte	.LASF350
	.byte	0x17
	.2byte	0x1f6
	.byte	0x8
	.4byte	0xc3
	.4byte	0x17d5
	.uleb128 0x1
	.4byte	0xc42
	.uleb128 0x1
	.4byte	0xd6
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0x18c
	.byte	0
	.uleb128 0x28
	.4byte	.LASF353
	.byte	0x1c
	.byte	0x3c
	.4byte	0x17eb
	.uleb128 0x1
	.4byte	0x6b
	.uleb128 0x1
	.4byte	0x6b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF351
	.byte	0x12
	.byte	0x81
	.byte	0x5
	.4byte	0xb5
	.4byte	0x180b
	.uleb128 0x1
	.4byte	0x83
	.uleb128 0x1
	.4byte	0x81c
	.uleb128 0x1
	.4byte	0xd6
	.byte	0
	.uleb128 0x16
	.4byte	.LASF352
	.byte	0x1b
	.byte	0x20
	.4byte	0xb5
	.uleb128 0x1e
	.4byte	.LASF354
	.byte	0x15
	.2byte	0x1a2
	.byte	0x6
	.4byte	0x1833
	.uleb128 0x1
	.4byte	0x17aa
	.uleb128 0x1
	.4byte	0xbb3
	.uleb128 0x1
	.4byte	0xbb3
	.byte	0
	.uleb128 0x18
	.4byte	.LASF355
	.byte	0x17
	.2byte	0x138
	.byte	0x8
	.4byte	0xc3
	.4byte	0x1859
	.uleb128 0x1
	.4byte	0xc42
	.uleb128 0x1
	.4byte	0x107
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0x18c
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF356
	.byte	0x9
	.2byte	0x2f6
	.byte	0x6
	.4byte	0x186c
	.uleb128 0x1
	.4byte	0x198
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF368
	.uleb128 0x8
	.4byte	.LASF357
	.byte	0x1d
	.byte	0x49
	.byte	0x5
	.4byte	0xb5
	.4byte	0x1887
	.uleb128 0x1
	.4byte	0x1887
	.byte	0
	.uleb128 0x5
	.4byte	0xb5
	.uleb128 0x8
	.4byte	.LASF358
	.byte	0x1e
	.byte	0x25
	.byte	0x5
	.4byte	0xb5
	.4byte	0x18a7
	.uleb128 0x1
	.4byte	0x18a7
	.uleb128 0x1
	.4byte	0xb5
	.byte	0
	.uleb128 0x5
	.4byte	0x14be
	.uleb128 0x16
	.4byte	.LASF359
	.byte	0x1f
	.byte	0x38
	.4byte	0xb5
	.uleb128 0x8
	.4byte	.LASF360
	.byte	0x1e
	.byte	0x24
	.byte	0x5
	.4byte	0xb5
	.4byte	0x18d2
	.uleb128 0x1
	.4byte	0x18a7
	.uleb128 0x1
	.4byte	0x18d2
	.byte	0
	.uleb128 0x5
	.4byte	0xf55
	.uleb128 0x8
	.4byte	.LASF361
	.byte	0x13
	.byte	0x34
	.byte	0x5
	.4byte	0xb5
	.4byte	0x18f2
	.uleb128 0x1
	.4byte	0x6b
	.uleb128 0x1
	.4byte	0x83
	.byte	0
	.uleb128 0x18
	.4byte	.LASF362
	.byte	0x16
	.2byte	0x510
	.byte	0xc
	.4byte	0x16a
	.4byte	0x191d
	.uleb128 0x1
	.4byte	0xc0b
	.uleb128 0x1
	.4byte	0x176
	.uleb128 0x1
	.4byte	0x198
	.uleb128 0x1
	.4byte	0x1922
	.uleb128 0x1
	.4byte	0x198
	.byte	0
	.uleb128 0x5
	.4byte	0x16a
	.uleb128 0xf
	.4byte	0x191d
	.uleb128 0x18
	.4byte	.LASF363
	.byte	0x16
	.2byte	0x166
	.byte	0x10
	.4byte	0xc0b
	.4byte	0x1957
	.uleb128 0x1
	.4byte	0xfd
	.uleb128 0x1
	.4byte	0x198
	.uleb128 0x1
	.4byte	0x187
	.uleb128 0x1
	.4byte	0xd8
	.uleb128 0x1
	.4byte	0xc26
	.uleb128 0x1
	.4byte	0x1957
	.byte	0
	.uleb128 0x5
	.4byte	0x270
	.uleb128 0x8
	.4byte	.LASF364
	.byte	0x20
	.byte	0x20
	.byte	0x5
	.4byte	0xb5
	.4byte	0x1972
	.uleb128 0x1
	.4byte	0x46f
	.byte	0
	.uleb128 0x8
	.4byte	.LASF365
	.byte	0x21
	.byte	0x48
	.byte	0x7
	.4byte	0x142
	.4byte	0x1997
	.uleb128 0x1
	.4byte	0x46f
	.uleb128 0x1
	.4byte	0x5e6
	.uleb128 0x1
	.4byte	0x5e6
	.uleb128 0x1
	.4byte	0x5e6
	.byte	0
	.uleb128 0x28
	.4byte	.LASF366
	.byte	0x22
	.byte	0x81
	.4byte	0x19a8
	.uleb128 0x1
	.4byte	0x46f
	.byte	0
	.uleb128 0x28
	.4byte	.LASF367
	.byte	0x23
	.byte	0x6b
	.4byte	0x19be
	.uleb128 0x1
	.4byte	0x112
	.uleb128 0x1
	.4byte	0x6f1
	.byte	0
	.uleb128 0x29
	.4byte	.LASF369
	.byte	0x7
	.byte	0x67
	.byte	0xd
	.uleb128 0x29
	.4byte	.LASF370
	.byte	0x7
	.byte	0x66
	.byte	0xd
	.uleb128 0x1e
	.4byte	.LASF371
	.byte	0x1
	.2byte	0x3b8
	.byte	0x11
	.4byte	0x19e1
	.uleb128 0x1
	.4byte	0x3e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF372
	.byte	0x24
	.byte	0x32
	.byte	0x5
	.4byte	0xb5
	.4byte	0x19fc
	.uleb128 0x1
	.4byte	0x19fc
	.uleb128 0x1
	.4byte	0x6b
	.byte	0
	.uleb128 0x5
	.4byte	0x3e
	.uleb128 0x23
	.4byte	.LASF373
	.byte	0x1a
	.2byte	0x128
	.byte	0x5
	.4byte	0xb5
	.uleb128 0x16
	.4byte	.LASF374
	.byte	0x1f
	.byte	0x46
	.4byte	0xb5
	.uleb128 0x18
	.4byte	.LASF375
	.byte	0x16
	.2byte	0x182
	.byte	0x7
	.4byte	0xd6
	.4byte	0x1a30
	.uleb128 0x1
	.4byte	0xc17
	.byte	0
	.uleb128 0x16
	.4byte	.LASF376
	.byte	0x13
	.byte	0x31
	.4byte	0xb5
	.uleb128 0x8
	.4byte	.LASF377
	.byte	0x13
	.byte	0x38
	.byte	0x5
	.4byte	0xb5
	.4byte	0x1a79
	.uleb128 0x1
	.4byte	0x1a79
	.uleb128 0x1
	.4byte	0xb5
	.uleb128 0x1
	.4byte	0x1a79
	.uleb128 0x1
	.4byte	0xb5
	.uleb128 0x1
	.4byte	0x1a79
	.uleb128 0x1
	.4byte	0xb5
	.uleb128 0x1
	.4byte	0x1a79
	.uleb128 0x1
	.4byte	0x77
	.uleb128 0x1
	.4byte	0x8f
	.byte	0
	.uleb128 0x5
	.4byte	0x77
	.uleb128 0x8
	.4byte	.LASF378
	.byte	0x1e
	.byte	0x22
	.byte	0x5
	.4byte	0xb5
	.4byte	0x1a9e
	.uleb128 0x1
	.4byte	0x18a7
	.uleb128 0x1
	.4byte	0x18d2
	.uleb128 0x1
	.4byte	0xb5
	.byte	0
	.uleb128 0x16
	.4byte	.LASF379
	.byte	0x13
	.byte	0x37
	.4byte	0xb5
	.uleb128 0x8
	.4byte	.LASF380
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.4byte	0xb5
	.4byte	0x1abf
	.uleb128 0x1
	.4byte	0xb5
	.byte	0
	.uleb128 0x8
	.4byte	.LASF381
	.byte	0x12
	.byte	0xb6
	.byte	0x5
	.4byte	0xb5
	.4byte	0x1adf
	.uleb128 0x1
	.4byte	0xb5
	.uleb128 0x1
	.4byte	0x842
	.uleb128 0x1
	.4byte	0xd6
	.byte	0
	.uleb128 0x23
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x245
	.byte	0x5
	.4byte	0xb5
	.uleb128 0x8
	.4byte	.LASF383
	.byte	0x13
	.byte	0x3f
	.byte	0x5
	.4byte	0xb5
	.4byte	0x1b02
	.uleb128 0x1
	.4byte	0x6b
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF384
	.byte	0xd
	.2byte	0x1ba
	.byte	0x6
	.4byte	0x1b15
	.uleb128 0x1
	.4byte	0x46f
	.byte	0
	.uleb128 0x18
	.4byte	.LASF385
	.byte	0x1
	.2byte	0x226
	.byte	0x7
	.4byte	0x142
	.4byte	0x1b2c
	.uleb128 0x1
	.4byte	0x46f
	.byte	0
	.uleb128 0x16
	.4byte	.LASF386
	.byte	0x13
	.byte	0x3e
	.4byte	0xb5
	.uleb128 0x8
	.4byte	.LASF387
	.byte	0x13
	.byte	0x3a
	.byte	0x5
	.4byte	0xb5
	.4byte	0x1b4d
	.uleb128 0x1
	.4byte	0x6b
	.byte	0
	.uleb128 0x29
	.4byte	.LASF388
	.byte	0x25
	.byte	0x3
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF389
	.byte	0x13
	.byte	0x39
	.byte	0x5
	.4byte	0xb5
	.4byte	0x1b7f
	.uleb128 0x1
	.4byte	0xe2
	.uleb128 0x1
	.4byte	0xe2
	.uleb128 0x1
	.4byte	0xb5
	.uleb128 0x1
	.4byte	0x6b
	.uleb128 0x1
	.4byte	0x6b
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF390
	.byte	0x1
	.2byte	0x207
	.byte	0x6
	.4byte	0x1b92
	.uleb128 0x1
	.4byte	0x46f
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF391
	.byte	0xd
	.2byte	0x1e8
	.byte	0x6
	.4byte	0x1ba5
	.uleb128 0x1
	.4byte	0x46f
	.byte	0
	.uleb128 0x8
	.4byte	.LASF392
	.byte	0x21
	.byte	0x4c
	.byte	0x7
	.4byte	0x142
	.4byte	0x1bc5
	.uleb128 0x1
	.4byte	0x46f
	.uleb128 0x1
	.4byte	0x789
	.uleb128 0x1
	.4byte	0x7a5
	.byte	0
	.uleb128 0x8
	.4byte	.LASF393
	.byte	0x13
	.byte	0x36
	.byte	0x5
	.4byte	0xb5
	.4byte	0x1be5
	.uleb128 0x1
	.4byte	0xb5
	.uleb128 0x1
	.4byte	0x46f
	.uleb128 0x1
	.4byte	0x19d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF394
	.byte	0x13
	.byte	0x40
	.byte	0x5
	.4byte	0xb5
	.4byte	0x1c14
	.uleb128 0x1
	.4byte	0x9b
	.uleb128 0x1
	.4byte	0x9b
	.uleb128 0x1
	.4byte	0x9b
	.uleb128 0x1
	.4byte	0x9b
	.uleb128 0x1
	.4byte	0xd6
	.uleb128 0x1
	.4byte	0xd6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF395
	.byte	0x13
	.byte	0x42
	.byte	0x5
	.4byte	0xb5
	.4byte	0x1c2f
	.uleb128 0x1
	.4byte	0x19d
	.uleb128 0x1
	.4byte	0xb5
	.byte	0
	.uleb128 0x8
	.4byte	.LASF396
	.byte	0x13
	.byte	0x33
	.byte	0x5
	.4byte	0xb5
	.4byte	0x1c4a
	.uleb128 0x1
	.4byte	0xb5
	.uleb128 0x1
	.4byte	0xb5
	.byte	0
	.uleb128 0x16
	.4byte	.LASF397
	.byte	0x13
	.byte	0x41
	.4byte	0xb5
	.uleb128 0x8
	.4byte	.LASF398
	.byte	0x12
	.byte	0x97
	.byte	0x5
	.4byte	0xb5
	.4byte	0x1c75
	.uleb128 0x1
	.4byte	0x83
	.uleb128 0x1
	.4byte	0x83
	.uleb128 0x1
	.4byte	0xa7
	.byte	0
	.uleb128 0x8
	.4byte	.LASF399
	.byte	0x13
	.byte	0x2e
	.byte	0x5
	.4byte	0xb5
	.4byte	0x1c8b
	.uleb128 0x1
	.4byte	0xb5
	.byte	0
	.uleb128 0x16
	.4byte	.LASF400
	.byte	0x13
	.byte	0x30
	.4byte	0xb5
	.uleb128 0x8
	.4byte	.LASF401
	.byte	0x1e
	.byte	0x27
	.byte	0x5
	.4byte	0xb5
	.4byte	0x1cb1
	.uleb128 0x1
	.4byte	0x18a7
	.uleb128 0x1
	.4byte	0xb5
	.byte	0
	.uleb128 0x8
	.4byte	.LASF402
	.byte	0x1e
	.byte	0x26
	.byte	0x5
	.4byte	0xb5
	.4byte	0x1ccc
	.uleb128 0x1
	.4byte	0x18a7
	.uleb128 0x1
	.4byte	0xb5
	.byte	0
	.uleb128 0x8
	.4byte	.LASF403
	.byte	0x13
	.byte	0x35
	.byte	0x5
	.4byte	0xb5
	.4byte	0x1ce2
	.uleb128 0x1
	.4byte	0x6b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF404
	.byte	0x26
	.byte	0x1f
	.byte	0x8
	.4byte	0xd6
	.4byte	0x1d02
	.uleb128 0x1
	.4byte	0xdd
	.uleb128 0x1
	.4byte	0x10c
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF405
	.byte	0x26
	.byte	0x29
	.byte	0x8
	.4byte	0xc3
	.4byte	0x1d18
	.uleb128 0x1
	.4byte	0xf8
	.byte	0
	.uleb128 0x8
	.4byte	.LASF406
	.byte	0x26
	.byte	0x2c
	.byte	0x7
	.4byte	0xe2
	.4byte	0x1d38
	.uleb128 0x1
	.4byte	0xe7
	.uleb128 0x1
	.4byte	0x102
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF407
	.byte	0x26
	.byte	0x24
	.byte	0x5
	.4byte	0xb5
	.4byte	0x1d53
	.uleb128 0x1
	.4byte	0xf8
	.uleb128 0x1
	.4byte	0xf8
	.byte	0
	.uleb128 0x8
	.4byte	.LASF408
	.byte	0x26
	.byte	0x1e
	.byte	0x5
	.4byte	0xb5
	.4byte	0x1d73
	.uleb128 0x1
	.4byte	0x107
	.uleb128 0x1
	.4byte	0x107
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF409
	.byte	0x26
	.byte	0x21
	.byte	0x8
	.4byte	0xd6
	.4byte	0x1d93
	.uleb128 0x1
	.4byte	0xd6
	.uleb128 0x1
	.4byte	0xb5
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x23
	.4byte	.LASF410
	.byte	0x9
	.2byte	0x54c
	.byte	0xc
	.4byte	0x18c
	.uleb128 0x8
	.4byte	.LASF411
	.byte	0x27
	.byte	0xce
	.byte	0x5
	.4byte	0xb5
	.4byte	0x1db7
	.uleb128 0x1
	.4byte	0x102
	.uleb128 0x43
	.byte	0
	.uleb128 0x44
	.4byte	.LASF422
	.byte	0x1
	.2byte	0x624
	.byte	0x5
	.4byte	0xb5
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF412
	.2byte	0x61e
	.4byte	0xb5
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1df7
	.uleb128 0x3
	.4byte	.LASF135
	.2byte	0x61e
	.byte	0x2e
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF413
	.2byte	0x60f
	.4byte	0xb5
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e3e
	.uleb128 0x3
	.4byte	.LASF414
	.2byte	0x60f
	.byte	0x44
	.4byte	0x1e3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.string	"idx"
	.2byte	0x60f
	.byte	0x5f
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0xb
	.4byte	.LASF415
	.2byte	0x611
	.byte	0x1e
	.4byte	0x84e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x5
	.4byte	0x1361
	.uleb128 0x1c
	.4byte	.LASF416
	.2byte	0x609
	.4byte	0xb5
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e6c
	.uleb128 0x3
	.4byte	.LASF417
	.2byte	0x609
	.byte	0x30
	.4byte	0x19d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF418
	.2byte	0x5fe
	.4byte	0xb5
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e95
	.uleb128 0x3
	.4byte	.LASF173
	.2byte	0x5fe
	.byte	0x2f
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x45
	.4byte	.LASF426
	.byte	0x1
	.2byte	0x5e5
	.byte	0x6
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ed8
	.uleb128 0xc
	.string	"ind"
	.2byte	0x5e5
	.byte	0x48
	.4byte	0x971
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF296
	.2byte	0x5e5
	.byte	0x55
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0xa
	.string	"i"
	.2byte	0x5e7
	.byte	0x9
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF419
	.2byte	0x5a5
	.4byte	0xb5
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f1f
	.uleb128 0x3
	.4byte	.LASF92
	.2byte	0x5a5
	.byte	0x27
	.4byte	0x1887
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.4byte	.LASF420
	.2byte	0x5a7
	.byte	0x19
	.4byte	0xbb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF421
	.2byte	0x5a8
	.byte	0x9
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x46
	.4byte	.LASF423
	.byte	0x1
	.2byte	0x59f
	.byte	0x5
	.4byte	0xb5
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x47
	.4byte	.LASF424
	.byte	0x1
	.2byte	0x599
	.byte	0x5
	.4byte	0xb5
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f61
	.uleb128 0x3
	.4byte	.LASF421
	.2byte	0x599
	.byte	0x2d
	.4byte	0x1887
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF425
	.2byte	0x589
	.4byte	0xb5
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f8a
	.uleb128 0xa
	.string	"ret"
	.2byte	0x58b
	.byte	0x9
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF427
	.2byte	0x57e
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fc8
	.uleb128 0x3
	.4byte	.LASF428
	.2byte	0x57e
	.byte	0x2e
	.4byte	0x1789
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0xb
	.4byte	.LASF429
	.2byte	0x581
	.byte	0x17
	.4byte	0x2ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF433
	.2byte	0x579
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fed
	.uleb128 0x3
	.4byte	.LASF430
	.2byte	0x579
	.byte	0x24
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF431
	.2byte	0x550
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2030
	.uleb128 0xa
	.string	"ev"
	.2byte	0x552
	.byte	0x12
	.4byte	0xa87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.4byte	.LASF432
	.2byte	0x553
	.byte	0xd
	.4byte	0x2030
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0xa
	.string	"msg"
	.2byte	0x554
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	0x6b
	.4byte	0x2040
	.uleb128 0x11
	.4byte	0xbc
	.byte	0xe7
	.byte	0
	.uleb128 0x5
	.4byte	0xe1b
	.uleb128 0x9
	.4byte	.LASF434
	.2byte	0x541
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2079
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x541
	.byte	0x35
	.4byte	0x83d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF435
	.2byte	0x541
	.byte	0x42
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF436
	.2byte	0x534
	.4byte	0xb5
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20a2
	.uleb128 0xc
	.string	"msg"
	.2byte	0x534
	.byte	0x2d
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF437
	.2byte	0x512
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20e5
	.uleb128 0x3
	.4byte	.LASF438
	.2byte	0x512
	.byte	0x28
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x512
	.byte	0x41
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.4byte	.LASF339
	.2byte	0x514
	.byte	0x17
	.4byte	0x20e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x166d
	.uleb128 0x9
	.4byte	.LASF439
	.2byte	0x4ed
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x214b
	.uleb128 0x3
	.4byte	.LASF438
	.2byte	0x4ed
	.byte	0x29
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x4ed
	.byte	0x42
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.4byte	.LASF440
	.2byte	0x4ef
	.byte	0x9
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF339
	.2byte	0x4f0
	.byte	0x17
	.4byte	0x20e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x2c
	.4byte	.LASF368
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF441
	.2byte	0x4de
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x217f
	.uleb128 0x3
	.4byte	.LASF177
	.2byte	0x4de
	.byte	0x2d
	.4byte	0xc7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.4byte	.LASF438
	.2byte	0x4e0
	.byte	0x17
	.4byte	0x20e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF442
	.2byte	0x4d3
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21c2
	.uleb128 0x3
	.4byte	.LASF443
	.2byte	0x4d3
	.byte	0x30
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x4d3
	.byte	0x4c
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF444
	.2byte	0x4d4
	.byte	0xd
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x9
	.4byte	.LASF445
	.2byte	0x4ab
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2223
	.uleb128 0x3
	.4byte	.LASF443
	.2byte	0x4ab
	.byte	0x35
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x4ab
	.byte	0x51
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF444
	.2byte	0x4ac
	.byte	0xd
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.4byte	.LASF339
	.2byte	0x4ae
	.byte	0x17
	.4byte	0x20e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF337
	.2byte	0x4af
	.byte	0x1e
	.4byte	0x18d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF450
	.2byte	0x4a0
	.4byte	0xb12
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2269
	.uleb128 0xc
	.string	"ch"
	.2byte	0x4a0
	.byte	0x2a
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x4a0
	.byte	0x3c
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"msg"
	.2byte	0x4a2
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF446
	.2byte	0x473
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22ac
	.uleb128 0x3
	.4byte	.LASF438
	.2byte	0x473
	.byte	0x2d
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x473
	.byte	0x46
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.4byte	.LASF447
	.2byte	0x475
	.byte	0xf
	.4byte	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF448
	.2byte	0x468
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22e0
	.uleb128 0x3
	.4byte	.LASF438
	.2byte	0x468
	.byte	0x2e
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x468
	.byte	0x47
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF449
	.2byte	0x45f
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2323
	.uleb128 0x3
	.4byte	.LASF443
	.2byte	0x45f
	.byte	0x2f
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x45f
	.byte	0x4b
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF444
	.2byte	0x460
	.byte	0xd
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LASF451
	.2byte	0x450
	.4byte	0xb12
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2369
	.uleb128 0xc
	.string	"ch"
	.2byte	0x450
	.byte	0x36
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x450
	.byte	0x48
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"msg"
	.2byte	0x452
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF452
	.2byte	0x442
	.4byte	0xb12
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23af
	.uleb128 0xc
	.string	"ch"
	.2byte	0x442
	.byte	0x38
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x442
	.byte	0x4a
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"msg"
	.2byte	0x444
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF453
	.2byte	0x436
	.4byte	0xb12
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23f5
	.uleb128 0xc
	.string	"ch"
	.2byte	0x436
	.byte	0x36
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x436
	.byte	0x48
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"msg"
	.2byte	0x438
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF454
	.2byte	0x42b
	.4byte	0xb12
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x243b
	.uleb128 0xc
	.string	"ch"
	.2byte	0x42b
	.byte	0x2d
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x42b
	.byte	0x3f
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"msg"
	.2byte	0x42d
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF455
	.2byte	0x40e
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x247e
	.uleb128 0x3
	.4byte	.LASF438
	.2byte	0x40e
	.byte	0x2a
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x40e
	.byte	0x43
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.4byte	.LASF331
	.2byte	0x410
	.byte	0x1a
	.4byte	0x247e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x15bc
	.uleb128 0x9
	.4byte	.LASF456
	.2byte	0x3fd
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24c6
	.uleb128 0x3
	.4byte	.LASF438
	.2byte	0x3fd
	.byte	0x28
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x3fd
	.byte	0x41
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.4byte	.LASF457
	.2byte	0x3ff
	.byte	0x19
	.4byte	0x24c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x1606
	.uleb128 0x9
	.4byte	.LASF458
	.2byte	0x3eb
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x250e
	.uleb128 0x3
	.4byte	.LASF438
	.2byte	0x3eb
	.byte	0x2b
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x3eb
	.byte	0x44
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.4byte	.LASF331
	.2byte	0x3ed
	.byte	0x1a
	.4byte	0x247e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF459
	.2byte	0x3c7
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x259a
	.uleb128 0xa
	.string	"ip"
	.2byte	0x3c9
	.byte	0xe
	.4byte	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF270
	.2byte	0x3c9
	.byte	0x12
	.4byte	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"gw"
	.2byte	0x3c9
	.byte	0x18
	.4byte	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.4byte	.LASF271
	.2byte	0x3c9
	.byte	0x1c
	.4byte	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.4byte	.LASF272
	.2byte	0x3c9
	.byte	0x22
	.4byte	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.4byte	.LASF447
	.2byte	0x3ca
	.byte	0x10
	.4byte	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.4byte	.LASF460
	.2byte	0x3cb
	.byte	0x10
	.4byte	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.4byte	.LASF461
	.2byte	0x3cc
	.byte	0x10
	.4byte	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.4byte	.LASF462
	.2byte	0x3b5
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25cd
	.uleb128 0xb
	.4byte	.LASF463
	.2byte	0x3b7
	.byte	0xd
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2e
	.4byte	.LASF371
	.2byte	0x3b8
	.byte	0x11
	.uleb128 0x1
	.4byte	0x3e
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF464
	.2byte	0x3ac
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2601
	.uleb128 0x3
	.4byte	.LASF177
	.2byte	0x3ac
	.byte	0x2a
	.4byte	0xc7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.4byte	.LASF438
	.2byte	0x3ae
	.byte	0xf
	.4byte	0x9b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF465
	.2byte	0x3a1
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2635
	.uleb128 0x3
	.4byte	.LASF177
	.2byte	0x3a1
	.byte	0x31
	.4byte	0xc7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.4byte	.LASF438
	.2byte	0x3a3
	.byte	0x1a
	.4byte	0x247e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF466
	.2byte	0x398
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2678
	.uleb128 0x3
	.4byte	.LASF443
	.2byte	0x398
	.byte	0x37
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x398
	.byte	0x53
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF444
	.2byte	0x399
	.byte	0xd
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x9
	.4byte	.LASF467
	.2byte	0x36e
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26dc
	.uleb128 0x3
	.4byte	.LASF443
	.2byte	0x36e
	.byte	0x32
	.4byte	0xd6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x36e
	.byte	0x4e
	.4byte	0xb19
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.4byte	.LASF444
	.2byte	0x36f
	.byte	0xd
	.4byte	0xd6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xa
	.string	"msg"
	.2byte	0x371
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xb
	.4byte	.LASF468
	.2byte	0x372
	.byte	0x1c
	.4byte	0x26dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x5
	.4byte	0xfae
	.uleb128 0x10
	.4byte	.LASF469
	.2byte	0x360
	.4byte	0xb12
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2727
	.uleb128 0xc
	.string	"ch"
	.2byte	0x360
	.byte	0x36
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x360
	.byte	0x48
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"msg"
	.2byte	0x362
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF470
	.2byte	0x355
	.4byte	0xb12
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x276d
	.uleb128 0xc
	.string	"ch"
	.2byte	0x355
	.byte	0x2b
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x355
	.byte	0x3d
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"msg"
	.2byte	0x357
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF471
	.2byte	0x330
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27a1
	.uleb128 0x3
	.4byte	.LASF438
	.2byte	0x330
	.byte	0x27
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x330
	.byte	0x40
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF472
	.2byte	0x32b
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27d5
	.uleb128 0x3
	.4byte	.LASF438
	.2byte	0x32b
	.byte	0x28
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x32b
	.byte	0x41
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF473
	.2byte	0x322
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2818
	.uleb128 0x3
	.4byte	.LASF443
	.2byte	0x322
	.byte	0x2f
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x322
	.byte	0x4b
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF444
	.2byte	0x323
	.byte	0xd
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LASF474
	.2byte	0x30f
	.4byte	0xb12
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x286d
	.uleb128 0xc
	.string	"ev"
	.2byte	0x30f
	.byte	0x2d
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x30f
	.byte	0x3f
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.4byte	.LASF475
	.2byte	0x311
	.byte	0x9
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"msg"
	.2byte	0x312
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF476
	.2byte	0x2f9
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x28a1
	.uleb128 0x3
	.4byte	.LASF438
	.2byte	0x2f9
	.byte	0x22
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x2f9
	.byte	0x3b
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF477
	.2byte	0x2f4
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x28d5
	.uleb128 0x3
	.4byte	.LASF438
	.2byte	0x2f4
	.byte	0x23
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x2f4
	.byte	0x3c
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF478
	.2byte	0x2eb
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2918
	.uleb128 0x3
	.4byte	.LASF443
	.2byte	0x2eb
	.byte	0x2c
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x2eb
	.byte	0x48
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF444
	.2byte	0x2ec
	.byte	0xd
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x9
	.4byte	.LASF479
	.2byte	0x2be
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2979
	.uleb128 0x3
	.4byte	.LASF443
	.2byte	0x2be
	.byte	0x2c
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x2be
	.byte	0x48
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF444
	.2byte	0x2bf
	.byte	0xd
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.string	"msg"
	.2byte	0x2c1
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF337
	.2byte	0x2c2
	.byte	0x1e
	.4byte	0x18d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.4byte	.LASF480
	.2byte	0x2b1
	.4byte	0xb12
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29bf
	.uleb128 0xc
	.string	"ev"
	.2byte	0x2b1
	.byte	0x2a
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x2b1
	.byte	0x3c
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"msg"
	.2byte	0x2b3
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF481
	.2byte	0x2a2
	.4byte	0xb12
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a14
	.uleb128 0xc
	.string	"ev"
	.2byte	0x2a2
	.byte	0x2a
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x2a2
	.byte	0x3c
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"msg"
	.2byte	0x2a4
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.4byte	.LASF487
	.4byte	0x2a24
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__.0
	.byte	0
	.uleb128 0xe
	.4byte	0xf3
	.4byte	0x2a24
	.uleb128 0x11
	.4byte	0xbc
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.4byte	0x2a14
	.uleb128 0x10
	.4byte	.LASF482
	.2byte	0x24b
	.4byte	0xb12
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a6f
	.uleb128 0xc
	.string	"ev"
	.2byte	0x24b
	.byte	0x2c
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x24b
	.byte	0x3e
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"msg"
	.2byte	0x24d
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF483
	.2byte	0x241
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2aab
	.uleb128 0xc
	.string	"arg"
	.2byte	0x241
	.byte	0x28
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x23
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x245
	.byte	0x5
	.4byte	0xb5
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF484
	.2byte	0x230
	.4byte	0xb12
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2af1
	.uleb128 0xc
	.string	"ev"
	.2byte	0x230
	.byte	0x31
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x230
	.byte	0x43
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"msg"
	.2byte	0x232
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF485
	.2byte	0x216
	.4byte	0xb12
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b4a
	.uleb128 0xc
	.string	"ev"
	.2byte	0x216
	.byte	0x29
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x216
	.byte	0x3b
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"msg"
	.2byte	0x218
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x48
	.4byte	.LASF385
	.byte	0x1
	.2byte	0x226
	.byte	0x7
	.4byte	0x142
	.uleb128 0x1
	.4byte	0x46f
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF486
	.2byte	0x1f8
	.4byte	0xb12
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2bbb
	.uleb128 0xc
	.string	"ev"
	.2byte	0x1f8
	.byte	0x27
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x1f8
	.byte	0x39
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"msg"
	.2byte	0x1fa
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"ap"
	.2byte	0x1fb
	.byte	0x19
	.4byte	0x2bbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.4byte	.LASF487
	.4byte	0x2bd0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__.1
	.uleb128 0x2e
	.4byte	.LASF390
	.2byte	0x207
	.byte	0x6
	.uleb128 0x1
	.4byte	0x46f
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x1030
	.uleb128 0xe
	.4byte	0xf3
	.4byte	0x2bd0
	.uleb128 0x11
	.4byte	0xbc
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.4byte	0x2bc0
	.uleb128 0x9
	.4byte	.LASF488
	.2byte	0x1f3
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c09
	.uleb128 0x3
	.4byte	.LASF438
	.2byte	0x1f3
	.byte	0x28
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x1f3
	.byte	0x41
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF489
	.2byte	0x1ed
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c3d
	.uleb128 0x3
	.4byte	.LASF438
	.2byte	0x1ed
	.byte	0x29
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x1ed
	.byte	0x42
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF490
	.2byte	0x1e4
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c80
	.uleb128 0x3
	.4byte	.LASF443
	.2byte	0x1e4
	.byte	0x35
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x1e4
	.byte	0x51
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF444
	.2byte	0x1e5
	.byte	0xd
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x9
	.4byte	.LASF491
	.2byte	0x1db
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2cc3
	.uleb128 0x3
	.4byte	.LASF443
	.2byte	0x1db
	.byte	0x34
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x1db
	.byte	0x50
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF444
	.2byte	0x1dc
	.byte	0xd
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF492
	.2byte	0x1d0
	.4byte	0xb12
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d09
	.uleb128 0xc
	.string	"ch"
	.2byte	0x1d0
	.byte	0x29
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x1d0
	.byte	0x3b
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"msg"
	.2byte	0x1d2
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF493
	.2byte	0x1c9
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d3d
	.uleb128 0x3
	.4byte	.LASF438
	.2byte	0x1c9
	.byte	0x25
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x1c9
	.byte	0x3e
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF494
	.2byte	0x1c3
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d71
	.uleb128 0x3
	.4byte	.LASF438
	.2byte	0x1c3
	.byte	0x26
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x1c3
	.byte	0x3f
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.4byte	.LASF495
	.2byte	0x1b5
	.4byte	0xb12
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2dc6
	.uleb128 0xc
	.string	"ch"
	.2byte	0x1b5
	.byte	0x27
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x1b5
	.byte	0x39
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"msg"
	.2byte	0x1b7
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF496
	.2byte	0x1b8
	.byte	0x22
	.4byte	0x2dc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	0xe92
	.uleb128 0x10
	.4byte	.LASF497
	.2byte	0x19f
	.4byte	0xb12
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e2f
	.uleb128 0xc
	.string	"ch"
	.2byte	0x19f
	.byte	0x2e
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x19f
	.byte	0x40
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"msg"
	.2byte	0x1a1
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"pkt"
	.2byte	0x1a2
	.byte	0xe
	.4byte	0x19d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"len"
	.2byte	0x1a3
	.byte	0x9
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LASF498
	.2byte	0x191
	.4byte	0xb12
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e75
	.uleb128 0xc
	.string	"ch"
	.2byte	0x191
	.byte	0x31
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x191
	.byte	0x43
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"msg"
	.2byte	0x193
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF499
	.2byte	0x188
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2eb8
	.uleb128 0x3
	.4byte	.LASF443
	.2byte	0x188
	.byte	0x27
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x188
	.byte	0x43
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF444
	.2byte	0x189
	.byte	0xd
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF500
	.2byte	0x17d
	.4byte	0xb12
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2efe
	.uleb128 0xc
	.string	"ch"
	.2byte	0x17d
	.byte	0x26
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x17d
	.byte	0x38
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"msg"
	.2byte	0x17f
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF501
	.2byte	0x177
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f32
	.uleb128 0x3
	.4byte	.LASF438
	.2byte	0x177
	.byte	0x24
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x177
	.byte	0x3d
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF502
	.2byte	0x172
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f66
	.uleb128 0x3
	.4byte	.LASF438
	.2byte	0x172
	.byte	0x25
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x172
	.byte	0x3e
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF503
	.2byte	0x16c
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2fa9
	.uleb128 0x3
	.4byte	.LASF443
	.2byte	0x16c
	.byte	0x26
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x16c
	.byte	0x42
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF444
	.2byte	0x16d
	.byte	0xd
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LASF504
	.2byte	0x149
	.4byte	0xb12
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2fef
	.uleb128 0xc
	.string	"ch"
	.2byte	0x149
	.byte	0x2c
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x149
	.byte	0x3e
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"msg"
	.2byte	0x14b
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF505
	.2byte	0x13b
	.4byte	0xb12
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3035
	.uleb128 0xc
	.string	"ch"
	.2byte	0x13b
	.byte	0x33
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x13b
	.byte	0x45
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"msg"
	.2byte	0x13d
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF506
	.2byte	0x12e
	.4byte	0xb12
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x307b
	.uleb128 0xc
	.string	"ch"
	.2byte	0x12e
	.byte	0x32
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x12e
	.byte	0x44
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"msg"
	.2byte	0x130
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF507
	.2byte	0x11d
	.4byte	0xb12
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30c1
	.uleb128 0xc
	.string	"ch"
	.2byte	0x11d
	.byte	0x3a
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x11d
	.byte	0x4c
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"msg"
	.2byte	0x11f
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF508
	.2byte	0x106
	.4byte	0xb12
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3107
	.uleb128 0xc
	.string	"ch"
	.2byte	0x106
	.byte	0x3b
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF176
	.2byte	0x106
	.byte	0x4d
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"msg"
	.2byte	0x108
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x49
	.4byte	.LASF509
	.byte	0x1
	.byte	0x9b
	.byte	0xd
	.4byte	0xb12
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31b8
	.uleb128 0x20
	.string	"ch"
	.byte	0x9b
	.byte	0x31
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x21
	.4byte	.LASF176
	.byte	0x9b
	.byte	0x43
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"i"
	.byte	0x9f
	.byte	0x9
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF510
	.byte	0x9f
	.byte	0xc
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LASF511
	.byte	0x9f
	.byte	0x18
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF512
	.byte	0xa0
	.byte	0xe
	.4byte	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.4byte	.LASF513
	.byte	0xa1
	.byte	0xe
	.4byte	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.4byte	.LASF514
	.byte	0xa2
	.byte	0xe
	.4byte	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.string	"msg"
	.byte	0xa3
	.byte	0x16
	.4byte	0x2040
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.4byte	.LASF515
	.byte	0xa4
	.byte	0x1c
	.4byte	0x31b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4a
	.4byte	.LASF524
	.byte	0x1
	.2byte	0x100
	.byte	0x1
	.4byte	.L30
	.byte	0
	.uleb128 0x5
	.4byte	0x11ac
	.uleb128 0x31
	.4byte	.LASF516
	.byte	0x8a
	.4byte	0xe2
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31e4
	.uleb128 0x21
	.4byte	.LASF288
	.byte	0x8a
	.byte	0x27
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x31
	.4byte	.LASF517
	.byte	0x5d
	.4byte	0xe2
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x320b
	.uleb128 0x21
	.4byte	.LASF287
	.byte	0x5d
	.byte	0x25
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x32
	.4byte	.LASF518
	.byte	0x58
	.4byte	0xb5
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3232
	.uleb128 0x20
	.string	"bit"
	.byte	0x58
	.byte	0x26
	.4byte	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.4byte	.LASF519
	.byte	0x53
	.4byte	0xb5
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3259
	.uleb128 0x20
	.string	"bit"
	.byte	0x53
	.byte	0x2a
	.4byte	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x33
	.4byte	.LASF520
	.byte	0x4e
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x327c
	.uleb128 0x20
	.string	"bit"
	.byte	0x4e
	.byte	0x28
	.4byte	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x33
	.4byte	.LASF521
	.byte	0x49
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x329f
	.uleb128 0x20
	.string	"bit"
	.byte	0x49
	.byte	0x28
	.4byte	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4b
	.4byte	.LASF525
	.byte	0x1
	.byte	0x44
	.byte	0xd
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.4byte	.LASF438
	.byte	0x44
	.byte	0x20
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.4byte	.LASF176
	.byte	0x44
	.byte	0x39
	.4byte	0xb19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 26
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x1b
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 13
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
	.uleb128 0x27
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 26
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x21
	.sleb128 1287
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.sleb128 7
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
	.uleb128 0x32
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
	.sleb128 12
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x39
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x37
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x89
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x3f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x43
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
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
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4a
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2a4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
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
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
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
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
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
	.4byte	.LFB7
	.uleb128 .LFE7-.LFB7
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
	.byte	0x7
	.4byte	.LFB29
	.uleb128 .LFE29-.LFB29
	.byte	0x7
	.4byte	.LFB30
	.uleb128 .LFE30-.LFB30
	.byte	0x7
	.4byte	.LFB31
	.uleb128 .LFE31-.LFB31
	.byte	0x7
	.4byte	.LFB32
	.uleb128 .LFE32-.LFB32
	.byte	0x7
	.4byte	.LFB33
	.uleb128 .LFE33-.LFB33
	.byte	0x7
	.4byte	.LFB34
	.uleb128 .LFE34-.LFB34
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
	.byte	0x7
	.4byte	.LFB60
	.uleb128 .LFE60-.LFB60
	.byte	0x7
	.4byte	.LFB61
	.uleb128 .LFE61-.LFB61
	.byte	0x7
	.4byte	.LFB62
	.uleb128 .LFE62-.LFB62
	.byte	0x7
	.4byte	.LFB63
	.uleb128 .LFE63-.LFB63
	.byte	0x7
	.4byte	.LFB64
	.uleb128 .LFE64-.LFB64
	.byte	0x7
	.4byte	.LFB65
	.uleb128 .LFE65-.LFB65
	.byte	0x7
	.4byte	.LFB66
	.uleb128 .LFE66-.LFB66
	.byte	0x7
	.4byte	.LFB67
	.uleb128 .LFE67-.LFB67
	.byte	0x7
	.4byte	.LFB68
	.uleb128 .LFE68-.LFB68
	.byte	0x7
	.4byte	.LFB69
	.uleb128 .LFE69-.LFB69
	.byte	0x7
	.4byte	.LFB70
	.uleb128 .LFE70-.LFB70
	.byte	0x7
	.4byte	.LFB71
	.uleb128 .LFE71-.LFB71
	.byte	0x7
	.4byte	.LFB72
	.uleb128 .LFE72-.LFB72
	.byte	0x7
	.4byte	.LFB73
	.uleb128 .LFE73-.LFB73
	.byte	0x7
	.4byte	.LFB74
	.uleb128 .LFE74-.LFB74
	.byte	0x7
	.4byte	.LFB75
	.uleb128 .LFE75-.LFB75
	.byte	0x7
	.4byte	.LFB76
	.uleb128 .LFE76-.LFB76
	.byte	0x7
	.4byte	.LFB77
	.uleb128 .LFE77-.LFB77
	.byte	0x7
	.4byte	.LFB78
	.uleb128 .LFE78-.LFB78
	.byte	0x7
	.4byte	.LFB79
	.uleb128 .LFE79-.LFB79
	.byte	0x7
	.4byte	.LFB80
	.uleb128 .LFE80-.LFB80
	.byte	0x7
	.4byte	.LFB81
	.uleb128 .LFE81-.LFB81
	.byte	0x7
	.4byte	.LFB82
	.uleb128 .LFE82-.LFB82
	.byte	0x7
	.4byte	.LFB83
	.uleb128 .LFE83-.LFB83
	.byte	0x7
	.4byte	.LFB84
	.uleb128 .LFE84-.LFB84
	.byte	0x7
	.4byte	.LFB85
	.uleb128 .LFE85-.LFB85
	.byte	0x7
	.4byte	.LFB86
	.uleb128 .LFE86-.LFB86
	.byte	0x7
	.4byte	.LFB87
	.uleb128 .LFE87-.LFB87
	.byte	0x7
	.4byte	.LFB88
	.uleb128 .LFE88-.LFB88
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF446:
	.string	"stateConnectedIPYes_exit"
.LASF2:
	.string	"int8_t"
.LASF423:
	.string	"wifi_mgmr_status_code_clean_internal"
.LASF499:
	.string	"stateSnifferAction"
.LASF223:
	.string	"WIFI_MGMR_EVENT_APP_RELOAD_TSEN"
.LASF402:
	.string	"wifi_mgmr_profile_autoreconnect_disable"
.LASF17:
	.string	"size_t"
.LASF250:
	.string	"data1"
.LASF350:
	.string	"xStreamBufferReceive"
.LASF413:
	.string	"wifi_mgmr_ap_sta_info_get_internal"
.LASF319:
	.string	"stateGlobal"
.LASF121:
	.string	"ACD_DECLINE"
.LASF354:
	.string	"stateM_init"
.LASF62:
	.string	"MEMP_TCP_PCB"
.LASF98:
	.string	"igmp_mac_filter"
.LASF481:
	.string	"stateIdleGuard_connect"
.LASF138:
	.string	"tsfhi"
.LASF147:
	.string	"ch_idx"
.LASF388:
	.string	"dns_server_init"
.LASF209:
	.string	"WIFI_MGMR_EVENT"
.LASF6:
	.string	"int32_t"
.LASF219:
	.string	"WIFI_MGMR_EVENT_APP_AP_STOP"
.LASF373:
	.string	"wifi_mgmr_api_fw_tsen_reload"
.LASF164:
	.string	"WIFI_STATE_WITH_AP_DISCONNECT"
.LASF391:
	.string	"netif_set_link_up"
.LASF447:
	.string	"addr_ipaddr"
.LASF385:
	.string	"dhcp_server_stop"
.LASF181:
	.string	"guard"
.LASF71:
	.string	"MEMP_SYS_TIMEOUT"
.LASF487:
	.string	"__func__"
.LASF65:
	.string	"MEMP_ALTCP_PCB"
.LASF484:
	.string	"stateGlobalGuard_conf_max_sta"
.LASF26:
	.string	"BaseType_t"
.LASF512:
	.string	"lastseen"
.LASF427:
	.string	"wifi_mgmr_start_background"
.LASF371:
	.string	"phy_tcal_callback"
.LASF162:
	.string	"WIFI_STATE_WITH_AP_CONNECTED_IP_GETTING"
.LASF44:
	.string	"ucDummy3"
.LASF429:
	.string	"xHandle"
.LASF92:
	.string	"state"
.LASF174:
	.string	"channel_nums"
.LASF39:
	.string	"ucDummy8"
.LASF465:
	.string	"ip_obtaining_timeout"
.LASF248:
	.string	"WIFI_MGMR_CONNECTION_STATUS_T"
.LASF80:
	.string	"lwip_internal_netif_client_data_index"
.LASF379:
	.string	"bl_main_monitor"
.LASF127:
	.string	"type"
.LASF505:
	.string	"stateGlobalGuard_fw_powersaving"
.LASF131:
	.string	"input_event_t"
.LASF159:
	.string	"WIFI_STATE_DISCONNECT"
.LASF221:
	.string	"WIFI_MGMR_EVENT_APP_RC_CONFIG"
.LASF428:
	.string	"conf"
.LASF253:
	.string	"wifi_mgmr_cfg_element_msg"
.LASF342:
	.string	"bl_main_apm_sta_cnt_get"
.LASF254:
	.string	"task"
.LASF104:
	.string	"netif_igmp_mac_filter_fn"
.LASF407:
	.string	"strcmp"
.LASF299:
	.string	"wifi_mgmr_connect_ind_stat_info_t"
.LASF204:
	.string	"timer_cb_arg_t"
.LASF421:
	.string	"s_code"
.LASF455:
	.string	"stateConnectedIPNoExit"
.LASF282:
	.string	"isUsed"
.LASF372:
	.string	"bl_tsen_adc_get"
.LASF298:
	.string	"chan_band"
.LASF401:
	.string	"wifi_mgmr_profile_autoreconnect_enable"
.LASF203:
	.string	"os_timer_t"
.LASF444:
	.string	"newStateData"
.LASF105:
	.string	"ipaddr"
.LASF474:
	.string	"stateIfaceDownGuard_phyup"
.LASF452:
	.string	"stateConnectedIPYesGuard_disconnect"
.LASF303:
	.string	"ready"
.LASF457:
	.string	"state_tsen_data"
.LASF141:
	.string	"data_rate"
.LASF259:
	.string	"ssid"
.LASF47:
	.string	"StaticMessageBuffer_t"
.LASF144:
	.string	"bssid"
.LASF7:
	.string	"long int"
.LASF416:
	.string	"wifi_mgmr_ap_sta_cnt_get_internal"
.LASF34:
	.string	"pvDummy1"
.LASF43:
	.string	"pvDummy2"
.LASF30:
	.string	"pvDummy3"
.LASF36:
	.string	"pvDummy5"
.LASF37:
	.string	"pvDummy6"
.LASF193:
	.string	"previousState"
.LASF139:
	.string	"tsflo"
.LASF410:
	.string	"xTaskGetTickCount"
.LASF167:
	.string	"WIFI_STATE_PSK_ERROR"
.LASF49:
	.string	"ip4_addr"
.LASF344:
	.string	"bl_main_get_channel_nums"
.LASF171:
	.string	"WIFI_SCAN_DONE_EVENT_BUSY"
.LASF155:
	.string	"WIFI_STATE_IDLE"
.LASF496:
	.string	"cfg_req"
.LASF256:
	.string	"length"
.LASF475:
	.string	"error"
.LASF439:
	.string	"stateDisconnect_enter"
.LASF217:
	.string	"WIFI_MGMR_EVENT_APP_PHY_UP"
.LASF497:
	.string	"stateSnifferGuard_raw_send"
.LASF89:
	.string	"linkoutput"
.LASF114:
	.string	"ACD_STATE_ANNOUNCING"
.LASF437:
	.string	"stateDisconnect_exit"
.LASF96:
	.string	"hwaddr_len"
.LASF74:
	.string	"MEMP_PBUF_POOL"
.LASF4:
	.string	"signed char"
.LASF422:
	.string	"wifi_mgmr_scan_complete_notify"
.LASF9:
	.string	"uint8_t"
.LASF276:
	.string	"hidden_ssid"
.LASF136:
	.string	"is_used"
.LASF292:
	.string	"mode"
.LASF206:
	.string	"EVENT_TYPE_FW"
.LASF182:
	.string	"action"
.LASF112:
	.string	"ACD_STATE_PROBING"
.LASF40:
	.string	"StaticTimer_t"
.LASF185:
	.string	"parentState"
.LASF290:
	.string	"wifi_mgmr_scan_item_t"
.LASF10:
	.string	"unsigned char"
.LASF291:
	.string	"wlan_netif"
.LASF258:
	.string	"wifi_mgmr_profile_msg"
.LASF440:
	.string	"is_ok"
.LASF146:
	.string	"ap_idx"
.LASF376:
	.string	"bl_main_phy_up"
.LASF346:
	.string	"xStreamBufferGenericCreateStatic"
.LASF381:
	.string	"aos_post_delayed_action"
.LASF289:
	.string	"timestamp_lastseen"
.LASF441:
	.string	"disconnect_retry"
.LASF66:
	.string	"MEMP_NETBUF"
.LASF134:
	.string	"wifi_apm_sta_info"
.LASF432:
	.string	"buffer"
.LASF318:
	.string	"wifi_mgmr_t"
.LASF184:
	.string	"_Bool"
.LASF133:
	.string	"aos_call_t"
.LASF129:
	.string	"value"
.LASF523:
	.string	"wifiMgmr"
.LASF320:
	.string	"stateIdle"
.LASF19:
	.string	"char"
.LASF398:
	.string	"aos_post_event"
.LASF336:
	.string	"timer_started"
.LASF88:
	.string	"output"
.LASF518:
	.string	"_features_is_set"
.LASF53:
	.string	"pbuf"
.LASF454:
	.string	"stateConnectedIPYesGuard"
.LASF225:
	.string	"WIFI_MGMR_EVENT_FW_DISCONNECT"
.LASF297:
	.string	"chan_freq"
.LASF283:
	.string	"wifi_mgmr_profile_t"
.LASF157:
	.string	"WIFI_STATE_CONNECTED_IP_GETTING"
.LASF313:
	.string	"wifi_mgmr_stat_info"
.LASF60:
	.string	"MEMP_RAW_PCB"
.LASF288:
	.string	"cipher"
.LASF498:
	.string	"stateSnifferGuard_ChannelSet"
.LASF311:
	.string	"mq_pool"
.LASF241:
	.string	"WIFI_MGMR_EVENT_T"
.LASF396:
	.string	"bl_main_monitor_channel_set"
.LASF300:
	.string	"wifi_mgmr_sta_basic_info"
.LASF312:
	.string	"timer"
.LASF393:
	.string	"bl_main_if_add"
.LASF500:
	.string	"stateSnifferGuard"
.LASF445:
	.string	"stateDisconnect_action_reconnect"
.LASF33:
	.string	"xSTATIC_TIMER"
.LASF135:
	.string	"sta_idx"
.LASF469:
	.string	"stateConnectedIPNoGuard_disconnect"
.LASF511:
	.string	"oldest"
.LASF58:
	.string	"flags"
.LASF408:
	.string	"memcmp"
.LASF331:
	.string	"stateConnectedIPNo_data"
.LASF274:
	.string	"wifi_mgmr_ap_msg"
.LASF263:
	.string	"pmk_tail"
.LASF213:
	.string	"WIFI_MGMR_EVENT_APP_CONNECTED"
.LASF378:
	.string	"wifi_mgmr_profile_add"
.LASF325:
	.string	"stateIfaceDown"
.LASF334:
	.string	"state_tsen_reload_data"
.LASF85:
	.string	"ip_addr"
.LASF267:
	.string	"dhcp_use"
.LASF503:
	.string	"stateGlobalAction"
.LASF349:
	.string	"stateM_handleEvent"
.LASF316:
	.string	"features"
.LASF468:
	.string	"ipgot"
.LASF87:
	.string	"input"
.LASF460:
	.string	"addr_netmask"
.LASF295:
	.string	"wifi_mgmr_connect_ind_stat_info"
.LASF286:
	.string	"ppm_rel"
.LASF205:
	.string	"EVENT_TYPE"
.LASF369:
	.string	"vTaskExitCritical"
.LASF411:
	.string	"printf"
.LASF257:
	.string	"wifi_mgmr_cfg_element_msg_t"
.LASF520:
	.string	"_pending_task_clr"
.LASF172:
	.string	"wifi_conf"
.LASF68:
	.string	"MEMP_TCPIP_MSG_API"
.LASF265:
	.string	"pmk_len"
.LASF46:
	.string	"StaticStreamBuffer_t"
.LASF67:
	.string	"MEMP_NETCONN"
.LASF246:
	.string	"WIFI_MGMR_CONNECTION_STATUS_CONNECTED_IP_NO"
.LASF321:
	.string	"stateConnecting"
.LASF190:
	.string	"exitAction"
.LASF77:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF90:
	.string	"status_callback"
.LASF117:
	.string	"ACD_STATE_RATE_LIMIT"
.LASF202:
	.string	"os_messagequeue_t"
.LASF489:
	.string	"stateConnectingEnter"
.LASF370:
	.string	"vTaskEnterCritical"
.LASF154:
	.string	"WIFI_STATE_UNKNOWN"
.LASF306:
	.string	"wlan_ap"
.LASF492:
	.string	"stateConnectingGuard"
.LASF383:
	.string	"bl_main_conf_max_sta"
.LASF186:
	.string	"entryState"
.LASF479:
	.string	"stateIdleAction_connect"
.LASF438:
	.string	"stateData"
.LASF212:
	.string	"WIFI_MGMR_EVENT_APP_SNIFFER"
.LASF493:
	.string	"stateSnifferExit"
.LASF412:
	.string	"wifi_mgmr_ap_sta_delete_internal"
.LASF327:
	.string	"stateError"
.LASF418:
	.string	"wifi_mgmr_set_country_code_internal"
.LASF343:
	.string	"wifi_mgmr_scan_complete_callback"
.LASF235:
	.string	"WIFI_MGMR_EVENT_GLB_SCAN_IND_PROBE_RESP"
.LASF339:
	.string	"stateDisconnect_data"
.LASF14:
	.string	"long unsigned int"
.LASF394:
	.string	"bl_main_cfg_task_req"
.LASF417:
	.string	"sta_cnt"
.LASF84:
	.string	"netif"
.LASF510:
	.string	"empty"
.LASF307:
	.string	"status"
.LASF508:
	.string	"stateGlobalGuard_disable_autoreconnect"
.LASF123:
	.string	"acd_conflict_callback_t"
.LASF95:
	.string	"hwaddr"
.LASF275:
	.string	"channel"
.LASF57:
	.string	"type_internal"
.LASF448:
	.string	"stateConnectedIPYes_enter"
.LASF333:
	.string	"tsen_reload_data_t"
.LASF149:
	.string	"center_freq"
.LASF234:
	.string	"WIFI_MGMR_EVENT_GLB_SCAN_IND_BEACON"
.LASF42:
	.string	"uxDummy1"
.LASF238:
	.string	"WIFI_MGMR_EVENT_GLB_DISABLE_AUTORECONNECT"
.LASF45:
	.string	"uxDummy4"
.LASF118:
	.string	"acd_state_enum_t"
.LASF38:
	.string	"uxDummy7"
.LASF220:
	.string	"WIFI_MGMR_EVENT_APP_CONF_MAX_STA"
.LASF335:
	.string	"disconnectData"
.LASF419:
	.string	"wifi_mgmr_state_get_internal"
.LASF366:
	.string	"dhcp_stop"
.LASF107:
	.string	"lastconflict"
.LASF195:
	.string	"TimerHandle_t"
.LASF55:
	.string	"payload"
.LASF338:
	.string	"disconnectData_t"
.LASF81:
	.string	"netif_mac_filter_action"
.LASF459:
	.string	"__sta_setup_ip"
.LASF197:
	.string	"tmrTimerControl"
.LASF326:
	.string	"stateSniffer"
.LASF494:
	.string	"stateSnifferEnter"
.LASF491:
	.string	"stateConnectingAction_connected"
.LASF392:
	.string	"netifapi_netif_common"
.LASF308:
	.string	"profiles"
.LASF482:
	.string	"stateGlobalGuard_denoise"
.LASF8:
	.string	"long long int"
.LASF287:
	.string	"auth"
.LASF125:
	.string	"netifapi_errt_fn"
.LASF513:
	.string	"counter"
.LASF78:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF207:
	.string	"EVENT_TYPE_APP"
.LASF150:
	.string	"width"
.LASF281:
	.string	"isActive"
.LASF260:
	.string	"ssid_tail"
.LASF51:
	.string	"ip4_addr_t"
.LASF404:
	.string	"memcpy"
.LASF86:
	.string	"netmask"
.LASF525:
	.string	"printErrMsg"
.LASF509:
	.string	"stateGlobalGuard_scan_beacon"
.LASF519:
	.string	"_pending_task_is_set"
.LASF506:
	.string	"stateGlobalGuard_fw_disconnect"
.LASF270:
	.string	"mask"
.LASF517:
	.string	"wifi_mgmr_auth_to_str"
.LASF462:
	.string	"__run_reload_tsen"
.LASF516:
	.string	"wifi_mgmr_cipher_to_str"
.LASF365:
	.string	"netifapi_netif_set_addr"
.LASF480:
	.string	"stateIdleGuard_sniffer"
.LASF143:
	.string	"status_code"
.LASF424:
	.string	"wifi_mgmr_status_code_get_internal"
.LASF215:
	.string	"WIFI_MGMR_EVENT_APP_DISCONNECT"
.LASF271:
	.string	"dns1"
.LASF272:
	.string	"dns2"
.LASF304:
	.string	"inf_ap_enabled"
.LASF420:
	.string	"m_state"
.LASF170:
	.string	"WIFI_SCAN_DONE_EVENT_OK"
.LASF25:
	.string	"TaskFunction_t"
.LASF176:
	.string	"event"
.LASF145:
	.string	"vif_idx"
.LASF50:
	.string	"addr"
.LASF470:
	.string	"stateConnectedIPNoGuard"
.LASF415:
	.string	"apm_sta_info"
.LASF495:
	.string	"stateGlobal_cfg_req"
.LASF453:
	.string	"stateConnectedIPYesGuard_ip_update"
.LASF16:
	.string	"unsigned int"
.LASF269:
	.string	"wifi_mgmr_ipgot_msg"
.LASF360:
	.string	"wifi_mgmr_profile_get"
.LASF22:
	.string	"u16_t"
.LASF232:
	.string	"WIFI_MGMR_EVENT_FW_CFG_REQ"
.LASF99:
	.string	"acd_list"
.LASF294:
	.string	"ipv4"
.LASF208:
	.string	"EVENT_TYPE_GLB"
.LASF278:
	.string	"wifi_mgmr_profile"
.LASF108:
	.string	"num_conflicts"
.LASF515:
	.string	"scan"
.LASF116:
	.string	"ACD_STATE_PASSIVE_ONGOING"
.LASF466:
	.string	"stateConnectedIPNoAction_disconnect"
.LASF227:
	.string	"WIFI_MGMR_EVENT_FW_CHANNEL_SET"
.LASF100:
	.string	"netif_input_fn"
.LASF48:
	.string	"TaskHandle_t"
.LASF363:
	.string	"xTimerCreateStatic"
.LASF332:
	.string	"tsen_reload_data"
.LASF229:
	.string	"WIFI_MGMR_EVENT_FW_IND_DISCONNECT"
.LASF153:
	.string	"WIFI_STATE_ENUM_LIST"
.LASF183:
	.string	"nextState"
.LASF102:
	.string	"netif_linkoutput_fn"
.LASF347:
	.string	"xTaskCreate"
.LASF240:
	.string	"WIFI_MGMR_EVENT_GLB_IP_UPDATE"
.LASF264:
	.string	"psk_len"
.LASF359:
	.string	"wifi_mgmr_api_reconnect"
.LASF483:
	.string	"trigger_auto_denoise"
.LASF101:
	.string	"netif_output_fn"
.LASF502:
	.string	"stateGlobalEnter"
.LASF384:
	.string	"netif_remove"
.LASF442:
	.string	"stateDisconnect_action_idle"
.LASF501:
	.string	"stateGlobalExit"
.LASF198:
	.string	"TimerCallbackFunction_t"
.LASF362:
	.string	"xTimerGenericCommand"
.LASF56:
	.string	"tot_len"
.LASF315:
	.string	"pending_task"
.LASF522:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF52:
	.string	"ip_addr_t"
.LASF122:
	.string	"acd_callback_enum_t"
.LASF357:
	.string	"bl60x_check_mac_status"
.LASF222:
	.string	"WIFI_MGMR_EVENT_APP_DENOISE"
.LASF314:
	.string	"disable_autoreconnect"
.LASF18:
	.string	"long double"
.LASF247:
	.string	"WIFI_MGMR_CONNECTION_STATUS_DISCONNECTED"
.LASF106:
	.string	"sent_num"
.LASF337:
	.string	"profile_msg"
.LASF389:
	.string	"bl_main_apm_start"
.LASF187:
	.string	"transitions"
.LASF249:
	.string	"wifi_mgmr_msg"
.LASF82:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF390:
	.string	"dhcpd_start"
.LASF24:
	.string	"err_t"
.LASF230:
	.string	"WIFI_MGMR_EVENT_FW_IND_CONNECTED"
.LASF239:
	.string	"WIFI_MGMR_EVENT_GLB_ENABLE_AUTORECONNECT"
.LASF251:
	.string	"data2"
.LASF382:
	.string	"wifi_mgmr_api_denoise_enable"
.LASF476:
	.string	"stateIdleExit"
.LASF361:
	.string	"bl_main_rate_config"
.LASF504:
	.string	"stateGlobalGuard_fw_scan"
.LASF142:
	.string	"wifi_event_sm_connect_ind"
.LASF173:
	.string	"country_code"
.LASF367:
	.string	"dns_setserver"
.LASF196:
	.string	"tskTaskControlBlock"
.LASF110:
	.string	"ACD_STATE_OFF"
.LASF356:
	.string	"vTaskDelay"
.LASF255:
	.string	"element"
.LASF32:
	.string	"xSTATIC_LIST_ITEM"
.LASF268:
	.string	"wifi_mgmr_profile_msg_t"
.LASF59:
	.string	"if_idx"
.LASF374:
	.string	"wifi_mgmr_api_fw_disconnect"
.LASF161:
	.string	"WIFI_STATE_WITH_AP_CONNECTING"
.LASF488:
	.string	"stateConnectingExit"
.LASF15:
	.string	"long long unsigned int"
.LASF61:
	.string	"MEMP_UDP_PCB"
.LASF277:
	.string	"wifi_mgmr_ap_msg_t"
.LASF377:
	.string	"bl_main_connect"
.LASF64:
	.string	"MEMP_TCP_SEG"
.LASF11:
	.string	"uint16_t"
.LASF119:
	.string	"ACD_IP_OK"
.LASF425:
	.string	"wifi_mgmr_init"
.LASF507:
	.string	"stateGlobalGuard_enable_autoreconnect"
.LASF387:
	.string	"bl_main_apm_stop"
.LASF130:
	.string	"extra"
.LASF400:
	.string	"bl_main_disconnect"
.LASF69:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF464:
	.string	"__reload_tsen"
.LASF191:
	.string	"stateMachine"
.LASF109:
	.string	"acd_conflict_callback"
.LASF226:
	.string	"WIFI_MGMR_EVENT_FW_POWERSAVING"
.LASF27:
	.string	"UBaseType_t"
.LASF324:
	.string	"stateDisconnect"
.LASF380:
	.string	"bl_main_denoise"
.LASF467:
	.string	"stateConnectedIPNoAction_ipgot"
.LASF91:
	.string	"link_callback"
.LASF301:
	.string	"wifi_mgmr_sta_basic_info_t"
.LASF329:
	.string	"connectedIPNoData"
.LASF28:
	.string	"TickType_t"
.LASF330:
	.string	"connectedIPNoData_t"
.LASF358:
	.string	"wifi_mgmr_profile_autoreconnect_is_enabled"
.LASF79:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF458:
	.string	"stateConnectedIPNoEnter"
.LASF156:
	.string	"WIFI_STATE_CONNECTING"
.LASF72:
	.string	"MEMP_NETDB"
.LASF521:
	.string	"_pending_task_set"
.LASF94:
	.string	"hostname"
.LASF409:
	.string	"memset"
.LASF296:
	.string	"type_ind"
.LASF477:
	.string	"stateIdleEnter"
.LASF341:
	.string	"bl_main_apm_sta_info_get"
.LASF310:
	.string	"scan_items"
.LASF485:
	.string	"stateGlobalGuard_stop"
.LASF406:
	.string	"strncpy"
.LASF449:
	.string	"stateConnectedIPYes_action"
.LASF103:
	.string	"netif_status_callback_fn"
.LASF242:
	.string	"WIFI_MGMR_CONNECTION_STATUS"
.LASF426:
	.string	"wifi_mgmr_set_connect_stat_info"
.LASF75:
	.string	"MEMP_MAX"
.LASF345:
	.string	"bl_main_set_country_code"
.LASF126:
	.string	"time"
.LASF302:
	.string	"wifi_mgmr"
.LASF472:
	.string	"stateIfaceDownEnter"
.LASF128:
	.string	"code"
.LASF148:
	.string	"band"
.LASF23:
	.string	"u32_t"
.LASF433:
	.string	"_wifi_mgmr_entry"
.LASF348:
	.string	"wifi_mgmr_drv_init"
.LASF237:
	.string	"WIFI_MGMR_EVENT_GLB_AP_IND_STA_DEL"
.LASF83:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF97:
	.string	"name"
.LASF352:
	.string	"wifi_mgmr_event_init"
.LASF456:
	.string	"periodic_tsen_reload"
.LASF210:
	.string	"WIFI_MGMR_EVENT_APP_IDLE"
.LASF245:
	.string	"WIFI_MGMR_CONNECTION_STATUS_CONNECTED_IP_YES"
.LASF73:
	.string	"MEMP_PBUF"
.LASF236:
	.string	"WIFI_MGMR_EVENT_GLB_AP_IND_STA_NEW"
.LASF399:
	.string	"bl_main_powersaving"
.LASF386:
	.string	"bl_main_apm_remove_all_sta"
.LASF224:
	.string	"WIFI_MGMR_EVENT_MAXAPP_MINIFW"
.LASF124:
	.string	"netifapi_void_fn"
.LASF168:
	.string	"WIFI_STATE_NO_AP_FOUND"
.LASF340:
	.string	"bl_main_apm_sta_delete"
.LASF5:
	.string	"short int"
.LASF151:
	.string	"center_freq1"
.LASF199:
	.string	"StreamBufferHandle_t"
.LASF317:
	.string	"scan_item_timeout"
.LASF309:
	.string	"profile_active_index"
.LASF166:
	.string	"WIFI_STATE_SNIFFER"
.LASF285:
	.string	"ppm_abs"
.LASF280:
	.string	"priority"
.LASF461:
	.string	"addr_gw"
.LASF233:
	.string	"WIFI_MGMR_EVENT_MAXFW_MINI_GLOBAL"
.LASF3:
	.string	"int16_t"
.LASF293:
	.string	"vif_index"
.LASF364:
	.string	"wifi_netif_dhcp_start"
.LASF430:
	.string	"pvParameters"
.LASF188:
	.string	"numTransitions"
.LASF165:
	.string	"WIFI_STATE_IFDOWN"
.LASF76:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF158:
	.string	"WIFI_STATE_CONNECTED_IP_GOT"
.LASF524:
	.string	"__exit"
.LASF351:
	.string	"aos_register_event_filter"
.LASF328:
	.string	"auto_repeat"
.LASF211:
	.string	"WIFI_MGMR_EVENT_APP_CONNECT"
.LASF160:
	.string	"WIFI_STATE_WITH_AP_IDLE"
.LASF323:
	.string	"stateConnectedIPYes"
.LASF353:
	.string	"hal_sys_capcode_update"
.LASF115:
	.string	"ACD_STATE_ONGOING"
.LASF405:
	.string	"strlen"
.LASF218:
	.string	"WIFI_MGMR_EVENT_APP_AP_START"
.LASF473:
	.string	"stateIfaceDownAction_phyup"
.LASF435:
	.string	"private_data"
.LASF200:
	.string	"StreamBufferDef_t"
.LASF284:
	.string	"wifi_mgmr_scan_item"
.LASF163:
	.string	"WIFI_STATE_WITH_AP_CONNECTED_IP_GOT"
.LASF397:
	.string	"bl_main_scan"
.LASF514:
	.string	"lastseen_found"
.LASF414:
	.string	"sta_info_internal"
.LASF70:
	.string	"MEMP_IGMP_GROUP"
.LASF395:
	.string	"bl_main_raw_send"
.LASF41:
	.string	"xSTATIC_STREAM_BUFFER"
.LASF194:
	.string	"errorState"
.LASF375:
	.string	"pvTimerGetTimerID"
.LASF478:
	.string	"stateIdleAction_sniffer"
.LASF179:
	.string	"eventType"
.LASF29:
	.string	"xDummy2"
.LASF35:
	.string	"xDummy3"
.LASF443:
	.string	"oldStateData"
.LASF490:
	.string	"stateConnectingAction_disconnect"
.LASF13:
	.string	"uint32_t"
.LASF152:
	.string	"center_freq2"
.LASF434:
	.string	"event_cb_wifi_event_mgmr"
.LASF231:
	.string	"WIFI_MGMR_EVENT_FW_DATA_RAW_SEND"
.LASF228:
	.string	"WIFI_MGMR_EVENT_FW_SCAN"
.LASF279:
	.string	"no_autoconnect"
.LASF178:
	.string	"transition"
.LASF486:
	.string	"stateGlobalGuard_AP"
.LASF322:
	.string	"stateConnectedIPNo"
.LASF132:
	.string	"aos_event_cb"
.LASF266:
	.string	"freq"
.LASF471:
	.string	"stateIfaceDownExit"
.LASF12:
	.string	"short unsigned int"
.LASF21:
	.string	"s8_t"
.LASF403:
	.string	"bl_main_if_remove"
.LASF113:
	.string	"ACD_STATE_ANNOUNCE_WAIT"
.LASF368:
	.string	"helper_record_dump"
.LASF216:
	.string	"WIFI_MGMR_EVENT_APP_RECONNECT"
.LASF180:
	.string	"condition"
.LASF262:
	.string	"psk_tail"
.LASF189:
	.string	"entryAction"
.LASF20:
	.string	"u8_t"
.LASF273:
	.string	"wifi_mgmr_ipgot_msg_t"
.LASF355:
	.string	"xStreamBufferSend"
.LASF111:
	.string	"ACD_STATE_PROBE_WAIT"
.LASF31:
	.string	"StaticListItem_t"
.LASF93:
	.string	"client_data"
.LASF450:
	.string	"stateDisconnect_guard"
.LASF201:
	.string	"MessageBufferHandle_t"
.LASF436:
	.string	"wifi_mgmr_event_notify"
.LASF169:
	.string	"WIFI_SCAN_DONE_EVENT_TYPE"
.LASF463:
	.string	"temp"
.LASF305:
	.string	"wlan_sta"
.LASF140:
	.string	"rssi"
.LASF175:
	.string	"wifi_conf_t"
.LASF243:
	.string	"WIFI_MGMR_CONNECTION_STATUS_IDLE"
.LASF54:
	.string	"next"
.LASF192:
	.string	"currentState"
.LASF177:
	.string	"data"
.LASF63:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF431:
	.string	"wifi_mgmr_start"
.LASF214:
	.string	"WIFI_MGMR_EVENT_APP_IP_GOT"
.LASF120:
	.string	"ACD_RESTART_CLIENT"
.LASF244:
	.string	"WIFI_MGMR_CONNECTION_STATUS_CONNECTING"
.LASF252:
	.string	"wifi_mgmr_msg_t"
.LASF261:
	.string	"ssid_len"
.LASF137:
	.string	"sta_mac"
.LASF451:
	.string	"stateConnectedIPYesGuard_rcconfig"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_wifidrv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/wifi_mgmr.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
