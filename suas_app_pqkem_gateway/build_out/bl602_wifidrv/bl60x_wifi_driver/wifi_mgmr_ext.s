	.file	"wifi_mgmr_ext.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_wifidrv" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/wifi_mgmr_ext.c"
	.section	.text.wifi_mgmr_scan_item_is_timeout,"ax",@progbits
	.align	1
	.type	wifi_mgmr_scan_item_is_timeout, @function
wifi_mgmr_scan_item_is_timeout:
.LFB6:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/wifi_mgmr.h"
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
	sw	a1,-24(s0)
	.loc 1 300 27
	call	xTaskGetTickCount
	mv	a4,a0
	.loc 1 300 67 discriminator 1
	lw	a5,-24(s0)
	lw	a5,56(a5)
	.loc 1 300 47 discriminator 1
	sub	a5,a4,a5
	.loc 1 300 96 discriminator 1
	lw	a3,-20(s0)
	li	a4,4096
	add	a4,a3,a4
	lw	a4,2016(a4)
	.loc 1 300 120 discriminator 1
	sltu	a5,a5,a4
	seqz	a5,a5
	andi	a5,a5,0xff
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
.LFE6:
	.size	wifi_mgmr_scan_item_is_timeout, .-wifi_mgmr_scan_item_is_timeout
	.globl	scan_sig
	.section	.sbss.scan_sig,"aw",@nobits
	.align	2
	.type	scan_sig, @object
	.size	scan_sig, 4
scan_sig:
	.zero	4
	.section	.sbss.scan_cb,"aw",@nobits
	.align	2
	.type	scan_cb, @object
	.size	scan_cb, 4
scan_cb:
	.zero	4
	.section	.sbss.scan_data,"aw",@nobits
	.align	2
	.type	scan_data, @object
	.size	scan_data, 4
scan_data:
	.zero	4
	.section	.rodata
	.align	2
.LC0:
	.string	"scan complete status: %d, ssid_len = %lu\r\n"
	.section	.text.cb_scan_complete,"ax",@progbits
	.align	1
	.type	cb_scan_complete, @function
cb_scan_complete:
.LFB7:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/wifi_mgmr_ext.c"
	.loc 2 61 1
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
	.loc 2 62 26
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 2 63 9
	lw	a5,-40(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 2 64 5
	lw	a5,-20(s0)
	lw	a5,36(a5)
	mv	a2,a5
	lw	a1,-24(s0)
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	.loc 2 66 18
	lui	a5,%hi(scan_sig)
	lw	a5,%lo(scan_sig)(a5)
	.loc 2 66 8
	beq	a5,zero,.L5
	.loc 2 67 9
	lui	a5,%hi(scan_sig)
	lw	a5,%lo(scan_sig)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	xQueueGenericSend
.L5:
	.loc 2 69 1
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
.LFE7:
	.size	cb_scan_complete, .-cb_scan_complete
	.section	.text.cb_scan_item_parse,"ax",@progbits
	.align	1
	.type	cb_scan_item_parse, @function
cb_scan_item_parse:
.LFB8:
	.loc 2 72 1
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
	.loc 2 74 14
	lw	a5,-40(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 2 77 8
	lw	a4,-20(s0)
	li	a5,49
	bgtu	a4,a5,.L9
	.loc 2 82 66
	lw	a4,-20(s0)
	li	a5,52
	mul	a5,a4,a5
	.loc 2 82 26
	lw	a4,-36(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 2 83 12
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 2 86 31
	lw	a5,-44(s0)
	lbu	a4,46(a5)
	.loc 2 86 25
	lw	a5,-24(s0)
	sb	a4,46(a5)
	.loc 2 87 28
	lw	a5,-44(s0)
	lb	a4,48(a5)
	.loc 2 87 22
	lw	a5,-24(s0)
	sb	a4,48(a5)
	.loc 2 88 22
	lw	a5,-24(s0)
	addi	a4,a5,40
	.loc 2 88 35
	lw	a5,-44(s0)
	addi	a5,a5,40
	.loc 2 88 5
	li	a2,6
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 2 89 22
	lw	a5,-24(s0)
	.loc 2 89 34
	lw	a4,-44(s0)
	.loc 2 89 5
	li	a2,32
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 2 90 30
	lw	a5,-24(s0)
	sb	zero,32(a5)
	.loc 2 91 43
	lw	a5,-24(s0)
	.loc 2 91 28
	mv	a0,a5
	call	strlen
	mv	a4,a0
	.loc 2 91 26 discriminator 1
	lw	a5,-24(s0)
	sw	a4,36(a5)
	.loc 2 92 28
	lw	a5,-44(s0)
	lbu	a4,47(a5)
	.loc 2 92 22
	lw	a5,-24(s0)
	sb	a4,47(a5)
	.loc 2 95 15
	lw	a5,-40(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	j	.L6
.L9:
	.loc 2 79 9
	nop
.L6:
	.loc 2 96 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	cb_scan_item_parse, .-cb_scan_item_parse
	.section	.text.mac_is_unvalid,"ax",@progbits
	.align	1
	.type	mac_is_unvalid, @function
mac_is_unvalid:
.LFB9:
	.loc 2 99 1
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
	.loc 2 103 10
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	sb	a5,-21(s0)
	.loc 2 104 12
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 104 5
	j	.L11
.L14:
	.loc 2 105 24
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 2 105 12
	lbu	a4,-21(s0)
	bne	a4,a5,.L18
	.loc 2 104 25 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L11:
	.loc 2 104 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,5
	ble	a4,a5,.L14
	j	.L13
.L18:
	.loc 2 106 13
	nop
.L13:
	.loc 2 109 8
	lw	a4,-20(s0)
	li	a5,6
	bne	a4,a5,.L15
	.loc 2 110 12
	lbu	a5,-21(s0)
	beq	a5,zero,.L16
	.loc 2 110 23 discriminator 1
	lbu	a4,-21(s0)
	li	a5,255
	bne	a4,a5,.L15
.L16:
	.loc 2 112 20
	li	a5,1
	j	.L17
.L15:
	.loc 2 116 12
	li	a5,0
.L17:
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
.LFE9:
	.size	mac_is_unvalid, .-mac_is_unvalid
	.section	.text.wifi_eth_sta_enable,"ax",@progbits
	.align	1
	.type	wifi_eth_sta_enable, @function
wifi_eth_sta_enable:
.LFB10:
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
	.loc 2 130 17
	sw	zero,-20(s0)
	.loc 2 131 18
	sw	zero,-24(s0)
	.loc 2 132 13
	sw	zero,-28(s0)
	.loc 2 135 17
	lw	a5,-36(s0)
	addi	a5,a5,62
	.loc 2 135 5
	li	a2,6
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcpy
	.loc 2 136 29
	lw	a5,-36(s0)
	addi	a5,a5,62
	.loc 2 136 9
	mv	a0,a5
	call	mac_is_unvalid
	mv	a5,a0
	.loc 2 136 8 discriminator 1
	beq	a5,zero,.L20
	.loc 2 138 35
	lw	a5,-36(s0)
	addi	a5,a5,62
	.loc 2 138 9
	mv	a0,a5
	call	bl_wifi_mac_addr_get
	.loc 2 139 33
	lw	a5,-36(s0)
	addi	a5,a5,62
	.loc 2 139 13
	mv	a0,a5
	call	mac_is_unvalid
	mv	a5,a0
	.loc 2 139 12 discriminator 1
	beq	a5,zero,.L21
	.loc 2 142 30
	lw	a5,-36(s0)
	li	a4,-64
	sb	a4,62(a5)
	.loc 2 143 30
	lw	a5,-36(s0)
	li	a4,80
	sb	a4,63(a5)
	.loc 2 144 30
	lw	a5,-36(s0)
	li	a4,67
	sb	a4,64(a5)
	.loc 2 145 30
	lw	a5,-36(s0)
	li	a4,-55
	sb	a4,65(a5)
	.loc 2 146 30
	lw	a5,-36(s0)
	sb	zero,66(a5)
	.loc 2 147 30
	lw	a5,-36(s0)
	li	a4,1
	sb	a4,67(a5)
.L21:
	.loc 2 150 26
	lw	a5,-36(s0)
	addi	a5,a5,62
	.loc 2 150 9
	li	a2,6
	mv	a1,a5
	lw	a0,-40(s0)
	call	memcpy
.L20:
	.loc 2 166 5
	addi	a3,s0,-28
	addi	a2,s0,-24
	addi	a1,s0,-20
	lui	a5,%hi(tcpip_input)
	addi	a6,a5,%lo(tcpip_input)
	lui	a5,%hi(bl606a0_wifi_netif_init)
	addi	a5,a5,%lo(bl606a0_wifi_netif_init)
	li	a4,0
	lw	a0,-36(s0)
	call	netifapi_netif_add
	.loc 2 167 20
	lw	a5,-36(s0)
	li	a4,115
	sb	a4,70(a5)
	.loc 2 168 20
	lw	a5,-36(s0)
	li	a4,116
	sb	a4,71(a5)
	.loc 2 169 10
	lw	a5,-36(s0)
	lbu	a5,69(a5)
	.loc 2 169 18
	ori	a5,a5,36
	andi	a4,a5,0xff
	lw	a5,-36(s0)
	sb	a4,69(a5)
	.loc 2 170 5
	lw	a0,-36(s0)
	call	netif_set_default
	.loc 2 171 5
	lw	a0,-36(s0)
	call	netif_set_up
	.loc 2 172 1
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
	.size	wifi_eth_sta_enable, .-wifi_eth_sta_enable
	.section	.text.wifi_mgmr_psk_cal,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_psk_cal
	.type	wifi_mgmr_psk_cal, @function
wifi_mgmr_psk_cal:
.LFB11:
	.loc 2 175 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	.loc 2 179 11
	addi	a5,s0,-52
	mv	a3,a5
	lw	a2,-76(s0)
	lw	a1,-72(s0)
	lw	a0,-68(s0)
	call	bl60x_fw_password_hash
	sw	a0,-20(s0)
	.loc 2 180 8
	lw	a5,-20(s0)
	bne	a5,zero,.L23
	.loc 2 181 9
	addi	a5,s0,-52
	li	a2,32
	mv	a1,a5
	lw	a0,-80(s0)
	call	utils_bin2hex
.L23:
	.loc 2 184 12
	lw	a5,-20(s0)
	.loc 2 185 1
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
.LFE11:
	.size	wifi_mgmr_psk_cal, .-wifi_mgmr_psk_cal
	.section	.text.wifi_mgmr_drv_init,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_drv_init
	.type	wifi_mgmr_drv_init, @function
wifi_mgmr_drv_init:
.LFB12:
	.loc 2 188 1
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
	.loc 2 189 5
	lw	a0,-20(s0)
	call	bl606a0_wifi_init
	.loc 2 190 40
	lw	a5,-20(s0)
	.loc 2 190 5
	mv	a0,a5
	call	wifi_mgmr_api_set_country_code
	.loc 2 191 5
	call	wifi_mgmr_init
	.loc 2 192 5
	call	wifi_mgmr_api_ifaceup
	.loc 2 193 12
	li	a5,0
	.loc 2 194 1
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
	.size	wifi_mgmr_drv_init, .-wifi_mgmr_drv_init
	.section	.text.wifi_mgmr_get_wifi_channel_conf,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_get_wifi_channel_conf
	.type	wifi_mgmr_get_wifi_channel_conf, @function
wifi_mgmr_get_wifi_channel_conf:
.LFB13:
	.loc 2 197 1
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
	.loc 2 198 27
	lw	a4,-20(s0)
	.loc 2 198 5
	li	a2,3
	lui	a5,%hi(wifiMgmr+6094)
	addi	a1,a5,%lo(wifiMgmr+6094)
	mv	a0,a4
	call	strncpy
	.loc 2 199 44
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,2004(a5)
	.loc 2 199 34
	lw	a5,-20(s0)
	sw	a4,4(a5)
	.loc 2 200 1
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
.LFE13:
	.size	wifi_mgmr_get_wifi_channel_conf, .-wifi_mgmr_get_wifi_channel_conf
	.section	.rodata
	.align	2
.LC1:
	.string	"----- BUG FIXME? NOT do STA enable again\r\n"
	.align	2
.LC2:
	.string	"---------STA enable\r\n"
	.section	.text.wifi_mgmr_sta_enable,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_sta_enable
	.type	wifi_mgmr_sta_enable, @function
wifi_mgmr_sta_enable:
.LFB14:
	.loc 2 203 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 206 11
	lui	a5,%hi(done.2)
	lw	a4,%lo(done.2)(a5)
	.loc 2 206 8
	li	a5,1
	bne	a4,a5,.L29
	.loc 2 207 9
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	.loc 2 208 16
	lui	a5,%hi(wifiMgmr+12)
	addi	a5,a5,%lo(wifiMgmr+12)
	j	.L30
.L29:
	.loc 2 210 10
	lui	a5,%hi(done.2)
	li	a4,1
	sw	a4,%lo(done.2)(a5)
	.loc 2 212 5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	.loc 2 213 28
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	sw	zero,12(a5)
	.loc 2 215 5
	lui	a5,%hi(wifiMgmr+17)
	addi	a1,a5,%lo(wifiMgmr+17)
	lui	a5,%hi(wifiMgmr+44)
	addi	a0,a5,%lo(wifiMgmr+44)
	call	wifi_eth_sta_enable
	.loc 2 216 12
	lui	a5,%hi(wifiMgmr+12)
	addi	a5,a5,%lo(wifiMgmr+12)
.L30:
	.loc 2 217 1
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
.LFE14:
	.size	wifi_mgmr_sta_enable, .-wifi_mgmr_sta_enable
	.section	.text.wifi_mgmr_sta_disable,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_sta_disable
	.type	wifi_mgmr_sta_disable, @function
wifi_mgmr_sta_disable:
.LFB15:
	.loc 2 220 1
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
	.loc 2 221 5
	call	wifi_mgmr_api_idle
	.loc 2 222 12
	li	a5,0
	.loc 2 223 1
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
	.size	wifi_mgmr_sta_disable, .-wifi_mgmr_sta_disable
	.section	.text.wifi_mgmr_sta_mac_set,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_sta_mac_set
	.type	wifi_mgmr_sta_mac_set, @function
wifi_mgmr_sta_mac_set:
.LFB16:
	.loc 2 226 1
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
	.loc 2 227 5
	li	a2,6
	lw	a1,-20(s0)
	lui	a5,%hi(wifiMgmr+17)
	addi	a0,a5,%lo(wifiMgmr+17)
	call	memcpy
	.loc 2 228 12
	li	a5,0
	.loc 2 229 1
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
.LFE16:
	.size	wifi_mgmr_sta_mac_set, .-wifi_mgmr_sta_mac_set
	.section	.text.wifi_mgmr_sta_mac_get,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_sta_mac_get
	.type	wifi_mgmr_sta_mac_get, @function
wifi_mgmr_sta_mac_get:
.LFB17:
	.loc 2 232 1
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
	.loc 2 235 9
	lui	a5,%hi(wifiMgmr+17)
	addi	a0,a5,%lo(wifiMgmr+17)
	call	mac_is_unvalid
	mv	a5,a0
	.loc 2 235 8 discriminator 1
	beq	a5,zero,.L36
	.loc 2 236 9
	lui	a5,%hi(wifiMgmr+17)
	addi	a0,a5,%lo(wifiMgmr+17)
	call	bl_wifi_mac_addr_get
	.loc 2 237 13
	lui	a5,%hi(wifiMgmr+17)
	addi	a0,a5,%lo(wifiMgmr+17)
	call	mac_is_unvalid
	mv	a5,a0
	.loc 2 237 12 discriminator 1
	beq	a5,zero,.L36
	.loc 2 240 38
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	li	a4,24
	sb	a4,17(a5)
	.loc 2 241 38
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	li	a4,-71
	sb	a4,18(a5)
	.loc 2 242 38
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	li	a4,5
	sb	a4,19(a5)
	.loc 2 243 38
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	sb	zero,20(a5)
	.loc 2 244 38
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	sb	zero,21(a5)
	.loc 2 245 38
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	li	a4,1
	sb	a4,22(a5)
.L36:
	.loc 2 248 5
	li	a2,6
	lui	a5,%hi(wifiMgmr+17)
	addi	a1,a5,%lo(wifiMgmr+17)
	lw	a0,-20(s0)
	call	memcpy
	.loc 2 249 12
	li	a5,0
	.loc 2 250 1
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
.LFE17:
	.size	wifi_mgmr_sta_mac_get, .-wifi_mgmr_sta_mac_get
	.section	.text.wifi_mgmr_sta_ip_get,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_sta_ip_get
	.type	wifi_mgmr_sta_ip_get, @function
wifi_mgmr_sta_ip_get:
.LFB18:
	.loc 2 253 1
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
	.loc 2 254 32
	lui	a5,%hi(wifiMgmr+48)
	addi	a5,a5,%lo(wifiMgmr+48)
	.loc 2 254 72
	lw	a4,0(a5)
	.loc 2 254 9
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 2 255 34
	lui	a5,%hi(wifiMgmr+52)
	addi	a5,a5,%lo(wifiMgmr+52)
	.loc 2 255 74
	lw	a4,0(a5)
	.loc 2 255 11
	lw	a5,-28(s0)
	sw	a4,0(a5)
	.loc 2 256 32
	lui	a5,%hi(wifiMgmr+56)
	addi	a5,a5,%lo(wifiMgmr+56)
	.loc 2 256 67
	lw	a4,0(a5)
	.loc 2 256 9
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 2 258 12
	li	a5,0
	.loc 2 259 1
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
.LFE18:
	.size	wifi_mgmr_sta_ip_get, .-wifi_mgmr_sta_ip_get
	.section	.text.wifi_mgmr_sta_dns_get,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_sta_dns_get
	.type	wifi_mgmr_sta_dns_get, @function
wifi_mgmr_sta_dns_get:
.LFB19:
	.loc 2 262 1
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
	.loc 2 266 11
	li	a0,0
	call	dns_getserver
	sw	a0,-20(s0)
	.loc 2 267 21
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 267 11
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 2 271 15
	li	a0,1
	call	dns_getserver
	sw	a0,-20(s0)
	.loc 2 272 25
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 2 272 15
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 2 277 12
	li	a5,0
	.loc 2 278 1
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
	.size	wifi_mgmr_sta_dns_get, .-wifi_mgmr_sta_dns_get
	.section	.text.wifi_mgmr_sta_ip_set,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_sta_ip_set
	.type	wifi_mgmr_sta_ip_set, @function
wifi_mgmr_sta_ip_set:
.LFB20:
	.loc 2 281 1
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
	.loc 2 282 5
	call	vTaskEnterCritical
	.loc 2 284 31
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	sw	a4,24(a5)
	.loc 2 285 33
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	lw	a4,-24(s0)
	sw	a4,28(a5)
	.loc 2 286 31
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	lw	a4,-28(s0)
	sw	a4,32(a5)
	.loc 2 287 33
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	lw	a4,-32(s0)
	sw	a4,36(a5)
	.loc 2 288 33
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	lw	a4,-36(s0)
	sw	a4,40(a5)
	.loc 2 290 5
	call	vTaskExitCritical
	.loc 2 292 5
	call	wifi_mgmr_api_ip_update
	.loc 2 294 12
	li	a5,0
	.loc 2 295 1
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
.LFE20:
	.size	wifi_mgmr_sta_ip_set, .-wifi_mgmr_sta_ip_set
	.section	.text.wifi_mgmr_sta_ip_unset,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_sta_ip_unset
	.type	wifi_mgmr_sta_ip_unset, @function
wifi_mgmr_sta_ip_unset:
.LFB21:
	.loc 2 298 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 299 12
	li	a4,0
	li	a3,0
	li	a2,0
	li	a1,0
	li	a0,0
	call	wifi_mgmr_sta_ip_set
	mv	a5,a0
	.loc 2 300 1
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
.LFE21:
	.size	wifi_mgmr_sta_ip_unset, .-wifi_mgmr_sta_ip_unset
	.section	.text.wifi_mgmr_sta_connect,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_sta_connect
	.type	wifi_mgmr_sta_connect, @function
wifi_mgmr_sta_connect:
.LFB22:
	.loc 2 303 1
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
	mv	a4,a6
	sb	a5,-37(s0)
	mv	a5,a4
	sh	a5,-40(s0)
	.loc 2 304 5
	lw	a0,-24(s0)
	call	wifi_mgmr_sta_ssid_set
	.loc 2 305 5
	lw	a0,-28(s0)
	call	wifi_mgmr_sta_psk_set
	.loc 2 306 12
	lhu	a5,-40(s0)
	lbu	a4,-37(s0)
	lw	a3,-36(s0)
	lw	a2,-32(s0)
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	wifi_mgmr_api_connect
	mv	a5,a0
	.loc 2 307 1
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
.LFE22:
	.size	wifi_mgmr_sta_connect, .-wifi_mgmr_sta_connect
	.section	.text.wifi_mgmr_sta_disconnect,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_sta_disconnect
	.type	wifi_mgmr_sta_disconnect, @function
wifi_mgmr_sta_disconnect:
.LFB23:
	.loc 2 310 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 311 5
	call	wifi_mgmr_api_disconnect
	.loc 2 312 12
	li	a5,0
	.loc 2 313 1
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
.LFE23:
	.size	wifi_mgmr_sta_disconnect, .-wifi_mgmr_sta_disconnect
	.section	.text.wifi_mgmr_sta_powersaving,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_sta_powersaving
	.type	wifi_mgmr_sta_powersaving, @function
wifi_mgmr_sta_powersaving:
.LFB24:
	.loc 2 316 1
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
	.loc 2 317 5
	lw	a4,-20(s0)
	li	a5,2
	beq	a4,a5,.L51
	lw	a4,-20(s0)
	li	a5,2
	bgt	a4,a5,.L52
	lw	a5,-20(s0)
	beq	a5,zero,.L53
	lw	a4,-20(s0)
	li	a5,1
	beq	a4,a5,.L54
	j	.L52
.L53:
	.loc 2 320 13
	li	a0,0
	call	wifi_mgmr_api_fw_powersaving
	.loc 2 322 9
	j	.L55
.L54:
	.loc 2 325 13
	li	a0,1
	call	wifi_mgmr_api_fw_powersaving
	.loc 2 327 9
	j	.L55
.L51:
	.loc 2 330 13
	li	a0,2
	call	wifi_mgmr_api_fw_powersaving
	.loc 2 332 9
	j	.L55
.L52:
	.loc 2 336 20
	li	a5,-1
	j	.L56
.L55:
	.loc 2 339 12
	li	a5,0
.L56:
	.loc 2 340 1
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
	.size	wifi_mgmr_sta_powersaving, .-wifi_mgmr_sta_powersaving
	.section	.text.wifi_mgmr_sta_autoconnect_enable,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_sta_autoconnect_enable
	.type	wifi_mgmr_sta_autoconnect_enable, @function
wifi_mgmr_sta_autoconnect_enable:
.LFB25:
	.loc 2 343 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 344 5
	call	wifi_mgmr_api_enable_autoreconnect
	.loc 2 345 12
	li	a5,0
	.loc 2 346 1
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
.LFE25:
	.size	wifi_mgmr_sta_autoconnect_enable, .-wifi_mgmr_sta_autoconnect_enable
	.section	.text.wifi_mgmr_sta_autoconnect_disable,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_sta_autoconnect_disable
	.type	wifi_mgmr_sta_autoconnect_disable, @function
wifi_mgmr_sta_autoconnect_disable:
.LFB26:
	.loc 2 349 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 350 5
	call	wifi_mgmr_api_disable_autoreconnect
	.loc 2 351 12
	li	a5,0
	.loc 2 352 1
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
.LFE26:
	.size	wifi_mgmr_sta_autoconnect_disable, .-wifi_mgmr_sta_autoconnect_disable
	.section	.rodata
	.align	2
.LC3:
	.string	"wifi mgmr ind status code = %d\r\n"
	.align	2
.LC4:
	.string	"ssid: %s, psk: %s, band: %d, freq: %d, type_ind: %d\r\n"
	.align	2
.LC5:
	.string	"bssid: %02x%02x%02x%02x%02x%02x\r\n"
	.section	.text.wifi_mgmr_sta_connect_ind_stat_get,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_sta_connect_ind_stat_get
	.type	wifi_mgmr_sta_connect_ind_stat_get, @function
wifi_mgmr_sta_connect_ind_stat_get:
.LFB27:
	.loc 2 355 1
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
	.loc 2 356 20
	lui	a5,%hi(wifiMgmr+5987)
	addi	a0,a5,%lo(wifiMgmr+5987)
	call	strlen
	mv	a5,a0
	.loc 2 356 9 discriminator 1
	sw	a5,-20(s0)
	.loc 2 357 8
	lw	a5,-20(s0)
	ble	a5,zero,.L62
	.loc 2 358 34
	lw	a5,-36(s0)
	addi	a4,a5,3
	.loc 2 358 9
	lw	a5,-20(s0)
	mv	a2,a5
	lui	a5,%hi(wifiMgmr+5987)
	addi	a1,a5,%lo(wifiMgmr+5987)
	mv	a0,a4
	call	memcpy
	.loc 2 359 44
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sb	zero,3(a5)
.L62:
	.loc 2 362 19
	lui	a5,%hi(wifiMgmr+6019)
	addi	a0,a5,%lo(wifiMgmr+6019)
	call	strlen
	mv	a5,a0
	.loc 2 362 9 discriminator 1
	sw	a5,-24(s0)
	.loc 2 363 8
	lw	a5,-24(s0)
	ble	a5,zero,.L63
	.loc 2 364 34
	lw	a5,-36(s0)
	addi	a4,a5,35
	.loc 2 364 9
	lw	a5,-24(s0)
	mv	a2,a5
	lui	a5,%hi(wifiMgmr+6019)
	addi	a1,a5,%lo(wifiMgmr+6019)
	mv	a0,a4
	call	memcpy
	.loc 2 365 42
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	sb	zero,35(a5)
.L63:
	.loc 2 368 30
	lw	a5,-36(s0)
	addi	a4,a5,164
	.loc 2 368 5
	li	a2,6
	lui	a5,%hi(wifiMgmr+6084)
	addi	a1,a5,%lo(wifiMgmr+6084)
	mv	a0,a4
	call	memcpy
	.loc 2 370 67
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lhu	a4,1888(a5)
	.loc 2 370 37
	lw	a5,-36(s0)
	sh	a4,0(a5)
	.loc 2 371 65
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lbu	a4,1996(a5)
	.loc 2 371 35
	lw	a5,-36(s0)
	sb	a4,172(a5)
	.loc 2 372 65
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lhu	a4,1994(a5)
	.loc 2 372 35
	lw	a5,-36(s0)
	sh	a4,170(a5)
	.loc 2 373 64
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lbu	a4,1890(a5)
	.loc 2 373 34
	lw	a5,-36(s0)
	sb	a4,2(a5)
	.loc 2 375 68
	lw	a5,-36(s0)
	lhu	a5,0(a5)
	.loc 2 375 5
	mv	a1,a5
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	.loc 2 377 31
	lw	a5,-36(s0)
	addi	a1,a5,3
	.loc 2 378 31
	lw	a5,-36(s0)
	addi	a2,a5,35
	.loc 2 379 31
	lw	a5,-36(s0)
	lbu	a5,172(a5)
	.loc 2 376 5
	mv	a3,a5
	.loc 2 380 31
	lw	a5,-36(s0)
	lhu	a5,170(a5)
	.loc 2 376 5
	mv	a4,a5
	.loc 2 381 31
	lw	a5,-36(s0)
	lbu	a5,2(a5)
	.loc 2 376 5
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	printf
	.loc 2 383 42
	lw	a5,-36(s0)
	lbu	a5,164(a5)
	.loc 2 382 5
	mv	a1,a5
	.loc 2 384 42
	lw	a5,-36(s0)
	lbu	a5,165(a5)
	.loc 2 382 5
	mv	a2,a5
	.loc 2 385 42
	lw	a5,-36(s0)
	lbu	a5,166(a5)
	.loc 2 382 5
	mv	a3,a5
	.loc 2 386 42
	lw	a5,-36(s0)
	lbu	a5,167(a5)
	.loc 2 382 5
	mv	a4,a5
	.loc 2 387 42
	lw	a5,-36(s0)
	lbu	a5,168(a5)
	.loc 2 382 5
	mv	a0,a5
	.loc 2 388 42
	lw	a5,-36(s0)
	lbu	a5,169(a5)
	.loc 2 382 5
	mv	a6,a5
	mv	a5,a0
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
	.loc 2 390 1
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
	.size	wifi_mgmr_sta_connect_ind_stat_get, .-wifi_mgmr_sta_connect_ind_stat_get
	.section	.text.wifi_mgmr_sta_ssid_set,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_sta_ssid_set
	.type	wifi_mgmr_sta_ssid_set, @function
wifi_mgmr_sta_ssid_set:
.LFB28:
	.loc 2 393 1
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
	.loc 2 394 9
	lw	a0,-20(s0)
	call	strlen
	mv	a5,a0
	.loc 2 394 8 discriminator 1
	beq	a5,zero,.L66
	.loc 2 395 9
	lw	a0,-20(s0)
	call	strlen
	mv	a5,a0
	.loc 2 395 9 is_stmt 0 discriminator 1
	mv	a2,a5
	lw	a1,-20(s0)
	lui	a5,%hi(wifiMgmr+5987)
	addi	a0,a5,%lo(wifiMgmr+5987)
	call	memcpy
.L66:
	.loc 2 396 1 is_stmt 1
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
	.size	wifi_mgmr_sta_ssid_set, .-wifi_mgmr_sta_ssid_set
	.section	.text.wifi_mgmr_sta_psk_set,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_sta_psk_set
	.type	wifi_mgmr_sta_psk_set, @function
wifi_mgmr_sta_psk_set:
.LFB29:
	.loc 2 399 1
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
	.loc 2 400 9
	lw	a0,-20(s0)
	call	strlen
	mv	a5,a0
	.loc 2 400 8 discriminator 1
	beq	a5,zero,.L69
	.loc 2 401 9
	lw	a0,-20(s0)
	call	strlen
	mv	a5,a0
	.loc 2 401 9 is_stmt 0 discriminator 1
	mv	a2,a5
	lw	a1,-20(s0)
	lui	a5,%hi(wifiMgmr+6019)
	addi	a0,a5,%lo(wifiMgmr+6019)
	call	memcpy
.L69:
	.loc 2 402 1 is_stmt 1
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
	.size	wifi_mgmr_sta_psk_set, .-wifi_mgmr_sta_psk_set
	.section	.text.wifi_eth_ap_enable,"ax",@progbits
	.align	1
	.type	wifi_eth_ap_enable, @function
wifi_eth_ap_enable:
.LFB30:
	.loc 2 405 1
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
	.loc 2 411 21
	li	a5,17543168
	addi	a5,a5,-1856
	sw	a5,-20(s0)
	.loc 2 412 22
	li	a5,16777216
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 2 413 17
	sw	zero,-28(s0)
	.loc 2 420 17
	lw	a5,-36(s0)
	addi	a5,a5,62
	.loc 2 420 5
	li	a2,6
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcpy
	.loc 2 421 29
	lw	a5,-36(s0)
	addi	a5,a5,62
	.loc 2 421 9
	mv	a0,a5
	call	mac_is_unvalid
	mv	a5,a0
	.loc 2 421 8 discriminator 1
	beq	a5,zero,.L71
	.loc 2 423 35
	lw	a5,-36(s0)
	addi	a5,a5,62
	.loc 2 423 9
	mv	a0,a5
	call	bl_wifi_mac_addr_get
	.loc 2 424 33
	lw	a5,-36(s0)
	addi	a5,a5,62
	.loc 2 424 13
	mv	a0,a5
	call	mac_is_unvalid
	mv	a5,a0
	.loc 2 424 12 discriminator 1
	beq	a5,zero,.L72
	.loc 2 427 30
	lw	a5,-36(s0)
	li	a4,-64
	sb	a4,62(a5)
	.loc 2 428 30
	lw	a5,-36(s0)
	li	a4,80
	sb	a4,63(a5)
	.loc 2 429 30
	lw	a5,-36(s0)
	li	a4,67
	sb	a4,64(a5)
	.loc 2 430 30
	lw	a5,-36(s0)
	li	a4,-55
	sb	a4,65(a5)
	.loc 2 431 30
	lw	a5,-36(s0)
	sb	zero,66(a5)
	.loc 2 432 30
	lw	a5,-36(s0)
	li	a4,1
	sb	a4,67(a5)
.L72:
	.loc 2 435 26
	lw	a5,-36(s0)
	addi	a5,a5,62
	.loc 2 435 9
	li	a2,6
	mv	a1,a5
	lw	a0,-40(s0)
	call	memcpy
.L71:
	.loc 2 438 5
	addi	a3,s0,-28
	addi	a2,s0,-24
	addi	a1,s0,-20
	lui	a5,%hi(tcpip_input)
	addi	a6,a5,%lo(tcpip_input)
	lui	a5,%hi(bl606a0_wifi_netif_init)
	addi	a5,a5,%lo(bl606a0_wifi_netif_init)
	li	a4,0
	lw	a0,-36(s0)
	call	netifapi_netif_add
	.loc 2 439 20
	lw	a5,-36(s0)
	li	a4,97
	sb	a4,70(a5)
	.loc 2 440 20
	lw	a5,-36(s0)
	li	a4,112
	sb	a4,71(a5)
	.loc 2 441 5
	lw	a0,-36(s0)
	call	netif_set_default
	.loc 2 442 5
	lw	a0,-36(s0)
	call	netif_set_up
	.loc 2 443 1
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
.LFE30:
	.size	wifi_eth_ap_enable, .-wifi_eth_ap_enable
	.section	.text.wifi_mgmr_ap_enable,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_ap_enable
	.type	wifi_mgmr_ap_enable, @function
wifi_mgmr_ap_enable:
.LFB31:
	.loc 2 446 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 447 27
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	li	a4,1
	sw	a4,132(a5)
	.loc 2 448 5
	lui	a5,%hi(wifiMgmr+137)
	addi	a1,a5,%lo(wifiMgmr+137)
	lui	a5,%hi(wifiMgmr+164)
	addi	a0,a5,%lo(wifiMgmr+164)
	call	wifi_eth_ap_enable
	.loc 2 449 12
	lui	a5,%hi(wifiMgmr+132)
	addi	a5,a5,%lo(wifiMgmr+132)
	.loc 2 450 1
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
.LFE31:
	.size	wifi_mgmr_ap_enable, .-wifi_mgmr_ap_enable
	.section	.text.wifi_mgmr_ap_mac_set,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_ap_mac_set
	.type	wifi_mgmr_ap_mac_set, @function
wifi_mgmr_ap_mac_set:
.LFB32:
	.loc 2 453 1
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
	.loc 2 454 5
	li	a2,6
	lw	a1,-20(s0)
	lui	a5,%hi(wifiMgmr+137)
	addi	a0,a5,%lo(wifiMgmr+137)
	call	memcpy
	.loc 2 455 12
	li	a5,0
	.loc 2 456 1
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
.LFE32:
	.size	wifi_mgmr_ap_mac_set, .-wifi_mgmr_ap_mac_set
	.section	.text.wifi_mgmr_ap_mac_get,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_ap_mac_get
	.type	wifi_mgmr_ap_mac_get, @function
wifi_mgmr_ap_mac_get:
.LFB33:
	.loc 2 459 1
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
	.loc 2 462 5
	lui	a5,%hi(wifiMgmr+137)
	addi	a0,a5,%lo(wifiMgmr+137)
	call	mac_is_unvalid
	.loc 2 463 5
	lui	a5,%hi(wifiMgmr+137)
	addi	a0,a5,%lo(wifiMgmr+137)
	call	bl_efuse_read_mac
	.loc 2 464 9
	lui	a5,%hi(wifiMgmr+137)
	addi	a0,a5,%lo(wifiMgmr+137)
	call	mac_is_unvalid
	mv	a5,a0
	.loc 2 464 8 discriminator 1
	beq	a5,zero,.L78
	.loc 2 467 33
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	li	a4,-64
	sb	a4,137(a5)
	.loc 2 468 33
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	li	a4,80
	sb	a4,138(a5)
	.loc 2 469 33
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	li	a4,67
	sb	a4,139(a5)
	.loc 2 470 33
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	li	a4,-55
	sb	a4,140(a5)
	.loc 2 471 33
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	sb	zero,141(a5)
	.loc 2 472 33
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	li	a4,1
	sb	a4,142(a5)
.L78:
	.loc 2 474 5
	li	a2,6
	lui	a5,%hi(wifiMgmr+137)
	addi	a1,a5,%lo(wifiMgmr+137)
	lw	a0,-20(s0)
	call	memcpy
	.loc 2 475 12
	li	a5,0
	.loc 2 476 1
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
.LFE33:
	.size	wifi_mgmr_ap_mac_get, .-wifi_mgmr_ap_mac_get
	.section	.text.wifi_mgmr_ap_ip_get,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_ap_ip_get
	.type	wifi_mgmr_ap_ip_get, @function
wifi_mgmr_ap_ip_get:
.LFB34:
	.loc 2 479 1
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
	.loc 2 480 32
	lui	a5,%hi(wifiMgmr+168)
	addi	a5,a5,%lo(wifiMgmr+168)
	.loc 2 480 71
	lw	a4,0(a5)
	.loc 2 480 9
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 2 481 32
	lui	a5,%hi(wifiMgmr+172)
	addi	a5,a5,%lo(wifiMgmr+172)
	.loc 2 481 71
	lw	a4,0(a5)
	.loc 2 481 9
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 2 482 34
	lui	a5,%hi(wifiMgmr+176)
	addi	a5,a5,%lo(wifiMgmr+176)
	.loc 2 482 68
	lw	a4,0(a5)
	.loc 2 482 11
	lw	a5,-28(s0)
	sw	a4,0(a5)
	.loc 2 484 12
	li	a5,0
	.loc 2 485 1
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
.LFE34:
	.size	wifi_mgmr_ap_ip_get, .-wifi_mgmr_ap_ip_get
	.section	.text.wifi_mgmr_ap_start,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_ap_start
	.type	wifi_mgmr_ap_start, @function
wifi_mgmr_ap_start:
.LFB35:
	.loc 2 489 1
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
	.loc 2 490 5
	lw	a5,-28(s0)
	andi	a5,a5,0xff
	mv	a3,a5
	lw	a2,-36(s0)
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	wifi_mgmr_api_ap_start
	.loc 2 491 12
	li	a5,0
	.loc 2 492 1
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
	.size	wifi_mgmr_ap_start, .-wifi_mgmr_ap_start
	.section	.text.wifi_mgmr_ap_stop,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_ap_stop
	.type	wifi_mgmr_ap_stop, @function
wifi_mgmr_ap_stop:
.LFB36:
	.loc 2 495 1
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
	.loc 2 496 5
	call	wifi_mgmr_api_ap_stop
	.loc 2 497 12
	li	a5,0
	.loc 2 498 1
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
.LFE36:
	.size	wifi_mgmr_ap_stop, .-wifi_mgmr_ap_stop
	.section	.text.wifi_mgmr_ap_sta_cnt_get,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_ap_sta_cnt_get
	.type	wifi_mgmr_ap_sta_cnt_get, @function
wifi_mgmr_ap_sta_cnt_get:
.LFB37:
	.loc 2 501 1
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
	.loc 2 502 5
	lw	a0,-20(s0)
	call	wifi_mgmr_ap_sta_cnt_get_internal
	.loc 2 503 12
	li	a5,0
	.loc 2 504 1
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
.LFE37:
	.size	wifi_mgmr_ap_sta_cnt_get, .-wifi_mgmr_ap_sta_cnt_get
	.section	.text.wifi_mgmr_ap_sta_info_get,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_ap_sta_info_get
	.type	wifi_mgmr_ap_sta_info_get, @function
wifi_mgmr_ap_sta_info_get:
.LFB38:
	.loc 2 507 1
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
	.loc 2 509 5
	addi	a5,s0,-40
	li	a2,24
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 510 5
	lbu	a4,-53(s0)
	addi	a5,s0,-40
	mv	a1,a4
	mv	a0,a5
	call	wifi_mgmr_ap_sta_info_get_internal
	.loc 2 511 42
	lbu	a4,-40(s0)
	.loc 2 511 23
	lw	a5,-52(s0)
	sb	a4,0(a5)
	.loc 2 512 42
	lbu	a4,-39(s0)
	.loc 2 512 23
	lw	a5,-52(s0)
	sb	a4,1(a5)
	.loc 2 513 39
	lw	a4,-24(s0)
	.loc 2 513 20
	lw	a5,-52(s0)
	sw	a4,16(a5)
	.loc 2 514 40
	lw	a4,-28(s0)
	.loc 2 514 21
	lw	a5,-52(s0)
	sw	a4,12(a5)
	.loc 2 515 40
	lw	a4,-32(s0)
	.loc 2 515 21
	lw	a5,-52(s0)
	sw	a4,8(a5)
	.loc 2 516 44
	lbu	a4,-20(s0)
	.loc 2 516 25
	lw	a5,-52(s0)
	sb	a4,20(a5)
	.loc 2 517 20
	lw	a5,-52(s0)
	addi	a4,a5,2
	.loc 2 517 5
	addi	a5,s0,-40
	addi	a5,a5,2
	li	a2,6
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 2 518 12
	li	a5,0
	.loc 2 519 1
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
.LFE38:
	.size	wifi_mgmr_ap_sta_info_get, .-wifi_mgmr_ap_sta_info_get
	.section	.text.wifi_mgmr_ap_sta_delete,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_ap_sta_delete
	.type	wifi_mgmr_ap_sta_delete, @function
wifi_mgmr_ap_sta_delete:
.LFB39:
	.loc 2 522 1
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
	.loc 2 523 5
	lbu	a5,-17(s0)
	mv	a0,a5
	call	wifi_mgmr_ap_sta_delete_internal
	.loc 2 524 12
	li	a5,0
	.loc 2 525 1
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
.LFE39:
	.size	wifi_mgmr_ap_sta_delete, .-wifi_mgmr_ap_sta_delete
	.section	.text.wifi_mgmr_ap_set_gateway,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_ap_set_gateway
	.type	wifi_mgmr_ap_set_gateway, @function
wifi_mgmr_ap_set_gateway:
.LFB40:
	.loc 2 528 1
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
	.loc 2 530 12
	li	a5,0
	.loc 2 531 1
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
.LFE40:
	.size	wifi_mgmr_ap_set_gateway, .-wifi_mgmr_ap_set_gateway
	.section	.text.wifi_mgmr_sniffer_register,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_sniffer_register
	.type	wifi_mgmr_sniffer_register, @function
wifi_mgmr_sniffer_register:
.LFB41:
	.loc 2 534 1
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
	.loc 2 535 5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	bl_rx_pkt_cb_register
	.loc 2 536 12
	li	a5,0
	.loc 2 537 1
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
.LFE41:
	.size	wifi_mgmr_sniffer_register, .-wifi_mgmr_sniffer_register
	.section	.text.wifi_mgmr_sniffer_unregister,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_sniffer_unregister
	.type	wifi_mgmr_sniffer_unregister, @function
wifi_mgmr_sniffer_unregister:
.LFB42:
	.loc 2 540 1
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
	.loc 2 541 5
	lw	a0,-20(s0)
	call	bl_rx_pkt_cb_unregister
	.loc 2 542 12
	li	a5,0
	.loc 2 543 1
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
.LFE42:
	.size	wifi_mgmr_sniffer_unregister, .-wifi_mgmr_sniffer_unregister
	.section	.text.wifi_mgmr_sniffer_enable,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_sniffer_enable
	.type	wifi_mgmr_sniffer_enable, @function
wifi_mgmr_sniffer_enable:
.LFB43:
	.loc 2 546 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 547 5
	call	wifi_mgmr_api_sniffer_enable
	.loc 2 548 12
	li	a5,0
	.loc 2 549 1
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
.LFE43:
	.size	wifi_mgmr_sniffer_enable, .-wifi_mgmr_sniffer_enable
	.section	.text.wifi_mgmr_sniffer_disable,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_sniffer_disable
	.type	wifi_mgmr_sniffer_disable, @function
wifi_mgmr_sniffer_disable:
.LFB44:
	.loc 2 552 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 553 5
	call	wifi_mgmr_api_idle
	.loc 2 554 12
	li	a5,0
	.loc 2 555 1
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
.LFE44:
	.size	wifi_mgmr_sniffer_disable, .-wifi_mgmr_sniffer_disable
	.section	.text.wifi_mgmr_rate_config,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_rate_config
	.type	wifi_mgmr_rate_config, @function
wifi_mgmr_rate_config:
.LFB45:
	.loc 2 558 1
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
	sh	a5,-18(s0)
	.loc 2 559 12
	lhu	a5,-18(s0)
	mv	a0,a5
	call	wifi_mgmr_api_rate_config
	mv	a5,a0
	.loc 2 560 1
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
.LFE45:
	.size	wifi_mgmr_rate_config, .-wifi_mgmr_rate_config
	.section	.text.wifi_mgmr_conf_max_sta,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_conf_max_sta
	.type	wifi_mgmr_conf_max_sta, @function
wifi_mgmr_conf_max_sta:
.LFB46:
	.loc 2 563 1
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
	.loc 2 564 12
	lbu	a5,-17(s0)
	mv	a0,a5
	call	wifi_mgmr_api_conf_max_sta
	mv	a5,a0
	.loc 2 565 1
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
.LFE46:
	.size	wifi_mgmr_conf_max_sta, .-wifi_mgmr_conf_max_sta
	.section	.text.wifi_mgmr_state_get,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_state_get
	.type	wifi_mgmr_state_get, @function
wifi_mgmr_state_get:
.LFB47:
	.loc 2 568 1
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
	.loc 2 569 12
	lw	a0,-20(s0)
	call	wifi_mgmr_state_get_internal
	mv	a5,a0
	.loc 2 570 1
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
.LFE47:
	.size	wifi_mgmr_state_get, .-wifi_mgmr_state_get
	.section	.text.wifi_mgmr_status_code_get,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_status_code_get
	.type	wifi_mgmr_status_code_get, @function
wifi_mgmr_status_code_get:
.LFB48:
	.loc 2 573 1
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
	.loc 2 574 12
	lw	a0,-20(s0)
	call	wifi_mgmr_status_code_get_internal
	mv	a5,a0
	.loc 2 575 1
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
.LFE48:
	.size	wifi_mgmr_status_code_get, .-wifi_mgmr_status_code_get
	.section	.text.wifi_mgmr_rssi_get,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_rssi_get
	.type	wifi_mgmr_rssi_get, @function
wifi_mgmr_rssi_get:
.LFB49:
	.loc 2 578 1
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
	.loc 2 579 34
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	lb	a5,128(a5)
	mv	a4,a5
	.loc 2 579 11
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 2 580 12
	li	a5,0
	.loc 2 581 1
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
.LFE49:
	.size	wifi_mgmr_rssi_get, .-wifi_mgmr_rssi_get
	.section	.text.wifi_mgmr_channel_get,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_channel_get
	.type	wifi_mgmr_channel_get, @function
wifi_mgmr_channel_get:
.LFB50:
	.loc 2 584 1
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
	.loc 2 585 24
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	lw	a4,4(a5)
	.loc 2 585 14
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 2 586 12
	li	a5,0
	.loc 2 587 1
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
.LFE50:
	.size	wifi_mgmr_channel_get, .-wifi_mgmr_channel_get
	.section	.rodata
	.align	2
.LC6:
	.string	"set channel %d, 40Mhz %d\r\n"
	.section	.text.wifi_mgmr_channel_set,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_channel_set
	.type	wifi_mgmr_channel_set, @function
wifi_mgmr_channel_set:
.LFB51:
	.loc 2 590 1
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
	.loc 2 591 22
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	sw	a4,4(a5)
	.loc 2 592 5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	wifi_mgmr_api_channel_set
	.loc 2 593 5
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	printf
	.loc 2 594 12
	li	a5,0
	.loc 2 595 1
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
.LFE51:
	.size	wifi_mgmr_channel_set, .-wifi_mgmr_channel_set
	.section	.text.wifi_mgmr_raw_80211_send,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_raw_80211_send
	.type	wifi_mgmr_raw_80211_send, @function
wifi_mgmr_raw_80211_send:
.LFB52:
	.loc 2 598 1
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
	.loc 2 599 8
	lw	a4,-24(s0)
	li	a5,480
	ble	a4,a5,.L117
	.loc 2 601 16
	li	a5,-1
	j	.L118
.L117:
	.loc 2 603 5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	wifi_mgmr_api_raw_send
	.loc 2 605 12
	li	a5,0
.L118:
	.loc 2 606 1
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
.LFE52:
	.size	wifi_mgmr_raw_80211_send, .-wifi_mgmr_raw_80211_send
	.section	.rodata
	.align	2
.LC7:
	.string	"wifi scan Done\r\n"
	.section	.text.wifi_mgmr_all_ap_scan,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_all_ap_scan
	.type	wifi_mgmr_all_ap_scan, @function
wifi_mgmr_all_ap_scan:
.LFB53:
	.loc 2 609 1
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
	.loc 2 610 14
	sw	zero,-24(s0)
	.loc 2 613 8
	lw	a5,-36(s0)
	beq	a5,zero,.L120
	.loc 2 613 23 discriminator 1
	lw	a5,-40(s0)
	bne	a5,zero,.L121
.L120:
	.loc 2 614 16
	li	a5,-1
	j	.L126
.L121:
	.loc 2 617 39
	li	a5,4096
	addi	a0,a5,-1496
	call	pvPortMalloc
	sw	a0,-20(s0)
	.loc 2 618 7
	lw	a5,-20(s0)
	bne	a5,zero,.L123
	.loc 2 619 16
	li	a5,-1
	j	.L126
.L123:
	.loc 2 621 5
	li	a5,4096
	addi	a2,a5,-1496
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 2 623 27
	li	a2,3
	li	a1,0
	li	a0,1
	call	xQueueGenericCreate
	mv	a4,a0
	.loc 2 623 25 discriminator 1
	lui	a5,%hi(scan_sig)
	sw	a4,%lo(scan_sig)(a5)
	lui	a5,%hi(scan_sig)
	lw	a5,%lo(scan_sig)(a5)
	.loc 2 623 7 discriminator 1
	bne	a5,zero,.L124
	.loc 2 624 9
	lw	a0,-20(s0)
	call	vPortFree
	.loc 2 625 16
	li	a5,-1
	j	.L126
.L124:
	.loc 2 628 5
	lui	a5,%hi(cb_scan_complete)
	addi	a1,a5,%lo(cb_scan_complete)
	lw	a0,-20(s0)
	call	wifi_mgmr_scan
	.loc 2 630 34
	lui	a5,%hi(scan_sig)
	lw	a5,%lo(scan_sig)(a5)
	li	a1,-1
	mv	a0,a5
	call	xQueueSemaphoreTake
	mv	a4,a0
	.loc 2 630 8 discriminator 1
	li	a5,1
	bne	a4,a5,.L125
	.loc 2 631 9
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
.L125:
	.loc 2 634 5
	call	wifi_mgmr_cli_scanlist
	.loc 2 636 5
	addi	a4,s0,-24
	lui	a5,%hi(cb_scan_item_parse)
	addi	a2,a5,%lo(cb_scan_item_parse)
	mv	a1,a4
	lw	a0,-20(s0)
	call	wifi_mgmr_scan_ap_all
	.loc 2 638 10
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 2 639 13
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 2 641 5
	lui	a5,%hi(scan_sig)
	lw	a5,%lo(scan_sig)(a5)
	mv	a0,a5
	call	vQueueDelete
	.loc 2 643 12
	li	a5,0
.L126:
	.loc 2 644 1
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
	.size	wifi_mgmr_all_ap_scan, .-wifi_mgmr_all_ap_scan
	.section	.text.wifi_mgmr_scan,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_scan
	.type	wifi_mgmr_scan, @function
wifi_mgmr_scan:
.LFB54:
	.loc 2 647 1
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
	.loc 2 648 13
	lui	a5,%hi(scan_cb)
	lw	a4,-24(s0)
	sw	a4,%lo(scan_cb)(a5)
	.loc 2 649 15
	lui	a5,%hi(scan_data)
	lw	a4,-20(s0)
	sw	a4,%lo(scan_data)(a5)
	.loc 2 651 5
	call	wifi_mgmr_api_fw_scan
	.loc 2 653 12
	li	a5,0
	.loc 2 654 1
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
.LFE54:
	.size	wifi_mgmr_scan, .-wifi_mgmr_scan
	.section	.text.wifi_mgmr_cfg_req,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_cfg_req
	.type	wifi_mgmr_cfg_req, @function
wifi_mgmr_cfg_req:
.LFB55:
	.loc 2 657 1
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
	sw	a5,-40(s0)
	.loc 2 658 12
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	wifi_mgmr_api_cfg_req
	mv	a5,a0
	.loc 2 659 1
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
	.size	wifi_mgmr_cfg_req, .-wifi_mgmr_cfg_req
	.section	.text.wifi_mgmr_scan_filter_hidden_ssid,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_scan_filter_hidden_ssid
	.type	wifi_mgmr_scan_filter_hidden_ssid, @function
wifi_mgmr_scan_filter_hidden_ssid:
.LFB56:
	.loc 2 662 1
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
	.loc 2 663 5
	call	vTaskEnterCritical
	.loc 2 664 8
	lw	a5,-20(s0)
	beq	a5,zero,.L132
	.loc 2 665 17
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a5,2012(a5)
	.loc 2 665 27
	andi	a4,a5,-2
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a3,a5
	sw	a4,2012(a5)
	j	.L133
.L132:
	.loc 2 667 17
	lui	a5,%hi(wifiMgmr)
	addi	a4,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a4,a5
	lw	a5,2012(a5)
	.loc 2 667 27
	ori	a4,a5,1
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	li	a5,4096
	add	a5,a3,a5
	sw	a4,2012(a5)
.L133:
	.loc 2 669 5
	call	vTaskExitCritical
	.loc 2 670 12
	li	a5,0
	.loc 2 671 1
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
.LFE56:
	.size	wifi_mgmr_scan_filter_hidden_ssid, .-wifi_mgmr_scan_filter_hidden_ssid
	.section	.rodata
	.align	2
.LC8:
	.string	"%s: scan complete\r\n"
	.section	.text.wifi_mgmr_scan_complete_callback,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_scan_complete_callback
	.type	wifi_mgmr_scan_complete_callback, @function
wifi_mgmr_scan_complete_callback:
.LFB57:
	.loc 2 674 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 675 9
	sw	zero,-20(s0)
	.loc 2 677 5
	lui	a5,%hi(__func__.1)
	addi	a1,a5,%lo(__func__.1)
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	printf
	.loc 2 678 17
	lui	a5,%hi(scan_cb)
	lw	a5,%lo(scan_cb)(a5)
	.loc 2 678 8
	beq	a5,zero,.L136
	.loc 2 679 16
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 680 9
	lui	a5,%hi(scan_cb)
	lw	a5,%lo(scan_cb)(a5)
	lui	a4,%hi(scan_data)
	lw	a4,%lo(scan_data)(a4)
	addi	a3,s0,-20
	mv	a1,a3
	mv	a0,a4
	jalr	a5
.LVL0:
.L136:
	.loc 2 682 12
	li	a5,0
	.loc 2 683 1
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
.LFE57:
	.size	wifi_mgmr_scan_complete_callback, .-wifi_mgmr_scan_complete_callback
	.section	.text.wifi_mgmr_scan_ap,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_scan_ap
	.type	wifi_mgmr_scan_ap, @function
wifi_mgmr_scan_ap:
.LFB58:
	.loc 2 686 1
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
	.loc 2 687 12
	li	a5,-1
	sw	a5,-24(s0)
	.loc 2 688 12
	li	a5,-127
	sb	a5,-25(s0)
	.loc 2 691 12
	sw	zero,-20(s0)
	.loc 2 691 5
	j	.L139
.L143:
	.loc 2 692 35
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a5,704(a5)
	.loc 2 692 12
	beq	a5,zero,.L140
	.loc 2 693 19
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
	mv	a1,a5
	lui	a5,%hi(wifiMgmr)
	addi	a0,a5,%lo(wifiMgmr)
	call	wifi_mgmr_scan_item_is_timeout
	mv	a5,a0
	.loc 2 692 44 discriminator 1
	bne	a5,zero,.L140
	.loc 2 693 126
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
	.loc 2 693 97
	lw	a1,-36(s0)
	mv	a0,a5
	call	strcmp
	mv	a5,a0
	.loc 2 693 89 discriminator 2
	bne	a5,zero,.L140
	.loc 2 695 19
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 2 696 39
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lb	a5,699(a5)
	.loc 2 696 16
	lb	a4,-25(s0)
	bge	a4,a5,.L146
	.loc 2 698 22
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a5,699(a5)
	sb	a5,-25(s0)
	.loc 2 700 13
	j	.L146
.L140:
	.loc 2 691 82 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L139:
	.loc 2 691 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,49
	bleu	a4,a5,.L143
	j	.L142
.L146:
	.loc 2 700 13
	nop
.L142:
	.loc 2 703 8
	lw	a4,-20(s0)
	li	a5,50
	beq	a4,a5,.L144
	.loc 2 703 75 discriminator 1
	lw	a5,-24(s0)
	blt	a5,zero,.L144
	.loc 2 706 14
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	addi	a4,a5,640
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	add	a5,a4,a5
	addi	a5,a5,12
	sw	a5,-32(s0)
	.loc 2 707 20
	lw	a5,-40(s0)
	.loc 2 707 32
	lw	a4,-32(s0)
	.loc 2 707 9
	li	a2,32
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 2 708 28
	lw	a5,-40(s0)
	sb	zero,32(a5)
	.loc 2 709 37
	lw	a5,-40(s0)
	.loc 2 709 26
	mv	a0,a5
	call	strlen
	mv	a4,a0
	.loc 2 709 24 discriminator 1
	lw	a5,-40(s0)
	sw	a4,36(a5)
	.loc 2 710 20
	lw	a5,-40(s0)
	addi	a4,a5,40
	.loc 2 710 33
	lw	a5,-32(s0)
	addi	a5,a5,40
	.loc 2 710 9
	li	a2,6
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 2 711 29
	lw	a5,-32(s0)
	lbu	a4,46(a5)
	.loc 2 711 23
	lw	a5,-40(s0)
	sb	a4,46(a5)
	.loc 2 712 26
	lw	a5,-32(s0)
	lb	a4,47(a5)
	.loc 2 712 20
	lw	a5,-40(s0)
	sb	a4,48(a5)
	.loc 2 717 12
	li	a5,0
	j	.L145
.L144:
	.loc 2 714 16
	li	a5,-1
.L145:
	.loc 2 718 1
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
.LFE58:
	.size	wifi_mgmr_scan_ap, .-wifi_mgmr_scan_ap
	.section	.text.wifi_mgmr_scan_ap_all,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_scan_ap_all
	.type	wifi_mgmr_scan_ap_all, @function
wifi_mgmr_scan_ap_all:
.LFB59:
	.loc 2 721 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	sw	a2,-92(s0)
	.loc 2 726 12
	sw	zero,-20(s0)
	.loc 2 726 5
	j	.L148
.L150:
	.loc 2 727 14
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
	sw	a5,-24(s0)
	.loc 2 728 17
	lw	a5,-24(s0)
	lbu	a5,52(a5)
	.loc 2 728 12
	beq	a5,zero,.L149
	.loc 2 728 32 discriminator 1
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
	mv	a1,a5
	lui	a5,%hi(wifiMgmr)
	addi	a0,a5,%lo(wifiMgmr)
	call	wifi_mgmr_scan_item_is_timeout
	mv	a5,a0
	.loc 2 728 27 discriminator 2
	bne	a5,zero,.L149
	.loc 2 730 35
	lw	a4,-24(s0)
	.loc 2 730 13
	addi	a5,s0,-76
	li	a2,32
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 2 731 31
	sb	zero,-44(s0)
	.loc 2 732 29
	addi	a5,s0,-76
	mv	a0,a5
	call	strlen
	mv	a5,a0
	.loc 2 732 27 discriminator 1
	sw	a5,-40(s0)
	.loc 2 733 36
	lw	a5,-24(s0)
	addi	a4,a5,40
	.loc 2 733 13
	addi	a5,s0,-76
	addi	a5,a5,40
	li	a2,6
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 2 734 32
	lw	a5,-24(s0)
	lbu	a5,46(a5)
	.loc 2 734 26
	sb	a5,-30(s0)
	.loc 2 735 29
	lw	a5,-24(s0)
	lb	a5,47(a5)
	.loc 2 735 23
	sb	a5,-28(s0)
	.loc 2 736 29
	lw	a5,-24(s0)
	lbu	a5,50(a5)
	.loc 2 736 23
	sb	a5,-29(s0)
	.loc 2 737 13
	addi	a4,s0,-76
	lw	a5,-92(s0)
	mv	a2,a4
	lw	a1,-88(s0)
	lw	a0,-84(s0)
	jalr	a5
.LVL1:
.L149:
	.loc 2 726 82 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L148:
	.loc 2 726 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,49
	bleu	a4,a5,.L150
	.loc 2 741 12
	li	a5,0
	.loc 2 742 1
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
.LFE59:
	.size	wifi_mgmr_scan_ap_all, .-wifi_mgmr_scan_ap_all
	.section	.rodata
	.align	2
.LC9:
	.string	"%s:code = %s\r\n"
	.section	.text.wifi_mgmr_set_country_code,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_set_country_code
	.type	wifi_mgmr_set_country_code, @function
wifi_mgmr_set_country_code:
.LFB60:
	.loc 2 745 1
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
	.loc 2 746 5
	lw	a2,-20(s0)
	lui	a5,%hi(__func__.0)
	addi	a1,a5,%lo(__func__.0)
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	printf
	.loc 2 747 5
	lw	a0,-20(s0)
	call	wifi_mgmr_api_set_country_code
	.loc 2 749 12
	li	a5,0
	.loc 2 750 1
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
.LFE60:
	.size	wifi_mgmr_set_country_code, .-wifi_mgmr_set_country_code
	.section	.rodata
	.align	2
.LC10:
	.string	"Connection OK"
	.align	2
.LC11:
	.string	"tx auth frame alloc failure"
	.align	2
.LC12:
	.string	"Authentication failure"
	.align	2
.LC13:
	.string	"Auth response but auth algo failure"
	.align	2
.LC14:
	.string	"tx assoc frame alloc failure"
	.align	2
.LC15:
	.string	"Association failure"
	.align	2
.LC16:
	.string	"deauth by AP but state error"
	.align	2
.LC17:
	.string	"deauth by AP when connecting"
	.align	2
.LC18:
	.string	"Passwd error, 4-way handshake timeout"
	.align	2
.LC19:
	.string	"Passwd error, tx deauth frame transmit failure"
	.align	2
.LC20:
	.string	"Passwd error, tx deauth frame allocate failure"
	.align	2
.LC21:
	.string	"tx auth or associate frame transmit failure"
	.align	2
.LC22:
	.string	"SSID error, scan no bssid and channel"
	.align	2
.LC23:
	.string	"create channel context failure when join network"
	.align	2
.LC24:
	.string	"join network failure"
	.align	2
.LC25:
	.string	"add sta failure"
	.align	2
.LC26:
	.string	"Beacon Loss"
	.align	2
.LC27:
	.string	"Unknown Status Code"
	.section	.text.wifi_mgmr_status_code_str,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_status_code_str
	.type	wifi_mgmr_status_code_str, @function
wifi_mgmr_status_code_str:
.LFB61:
	.loc 2 753 1
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
	sh	a5,-18(s0)
	.loc 2 754 5
	lhu	a5,-18(s0)
	li	a4,16
	beq	a5,a4,.L155
	li	a4,16
	bgt	a5,a4,.L156
	li	a4,15
	beq	a5,a4,.L157
	li	a4,15
	bgt	a5,a4,.L156
	li	a4,14
	beq	a5,a4,.L158
	li	a4,14
	bgt	a5,a4,.L156
	li	a4,13
	beq	a5,a4,.L159
	li	a4,13
	bgt	a5,a4,.L156
	li	a4,12
	beq	a5,a4,.L160
	li	a4,12
	bgt	a5,a4,.L156
	li	a4,11
	beq	a5,a4,.L161
	li	a4,11
	bgt	a5,a4,.L156
	li	a4,10
	beq	a5,a4,.L162
	li	a4,10
	bgt	a5,a4,.L156
	li	a4,9
	beq	a5,a4,.L163
	li	a4,9
	bgt	a5,a4,.L156
	li	a4,8
	beq	a5,a4,.L164
	li	a4,8
	bgt	a5,a4,.L156
	li	a4,7
	beq	a5,a4,.L165
	li	a4,7
	bgt	a5,a4,.L156
	li	a4,6
	beq	a5,a4,.L166
	li	a4,6
	bgt	a5,a4,.L156
	li	a4,5
	beq	a5,a4,.L167
	li	a4,5
	bgt	a5,a4,.L156
	li	a4,4
	beq	a5,a4,.L168
	li	a4,4
	bgt	a5,a4,.L156
	li	a4,3
	beq	a5,a4,.L169
	li	a4,3
	bgt	a5,a4,.L156
	li	a4,2
	beq	a5,a4,.L170
	li	a4,2
	bgt	a5,a4,.L156
	beq	a5,zero,.L171
	li	a4,1
	beq	a5,a4,.L172
	j	.L156
.L171:
	.loc 2 756 20
	lui	a5,%hi(.LC10)
	addi	a5,a5,%lo(.LC10)
	j	.L173
.L172:
	.loc 2 759 20
	lui	a5,%hi(.LC11)
	addi	a5,a5,%lo(.LC11)
	j	.L173
.L170:
	.loc 2 762 20
	lui	a5,%hi(.LC12)
	addi	a5,a5,%lo(.LC12)
	j	.L173
.L169:
	.loc 2 765 20
	lui	a5,%hi(.LC13)
	addi	a5,a5,%lo(.LC13)
	j	.L173
.L168:
	.loc 2 768 20
	lui	a5,%hi(.LC14)
	addi	a5,a5,%lo(.LC14)
	j	.L173
.L167:
	.loc 2 771 20
	lui	a5,%hi(.LC15)
	addi	a5,a5,%lo(.LC15)
	j	.L173
.L166:
	.loc 2 774 20
	lui	a5,%hi(.LC16)
	addi	a5,a5,%lo(.LC16)
	j	.L173
.L165:
	.loc 2 777 20
	lui	a5,%hi(.LC17)
	addi	a5,a5,%lo(.LC17)
	j	.L173
.L164:
	.loc 2 780 20
	lui	a5,%hi(.LC18)
	addi	a5,a5,%lo(.LC18)
	j	.L173
.L163:
	.loc 2 783 20
	lui	a5,%hi(.LC19)
	addi	a5,a5,%lo(.LC19)
	j	.L173
.L162:
	.loc 2 786 20
	lui	a5,%hi(.LC20)
	addi	a5,a5,%lo(.LC20)
	j	.L173
.L161:
	.loc 2 789 20
	lui	a5,%hi(.LC21)
	addi	a5,a5,%lo(.LC21)
	j	.L173
.L160:
	.loc 2 792 20
	lui	a5,%hi(.LC22)
	addi	a5,a5,%lo(.LC22)
	j	.L173
.L159:
	.loc 2 795 20
	lui	a5,%hi(.LC23)
	addi	a5,a5,%lo(.LC23)
	j	.L173
.L158:
	.loc 2 798 20
	lui	a5,%hi(.LC24)
	addi	a5,a5,%lo(.LC24)
	j	.L173
.L157:
	.loc 2 801 20
	lui	a5,%hi(.LC25)
	addi	a5,a5,%lo(.LC25)
	j	.L173
.L155:
	.loc 2 804 20
	lui	a5,%hi(.LC26)
	addi	a5,a5,%lo(.LC26)
	j	.L173
.L156:
	.loc 2 808 20
	lui	a5,%hi(.LC27)
	addi	a5,a5,%lo(.LC27)
.L173:
	.loc 2 811 1
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
.LFE61:
	.size	wifi_mgmr_status_code_str, .-wifi_mgmr_status_code_str
	.section	.sbss.done.2,"aw",@nobits
	.align	2
	.type	done.2, @object
	.size	done.2, 4
done.2:
	.zero	4
	.section	.rodata.__func__.1,"a"
	.align	2
	.type	__func__.1, @object
	.size	__func__.1, 33
__func__.1:
	.string	"wifi_mgmr_scan_complete_callback"
	.section	.rodata.__func__.0,"a"
	.align	2
	.type	__func__.0, @object
	.size	__func__.0, 27
__func__.0:
	.string	"wifi_mgmr_set_country_code"
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/projdefs.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/queue.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/semphr.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/acd.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/acd.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_main.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/include/wifi_mgmr_ext.h"
	.file 21 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
	.file 22 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/os_hal.h"
	.file 23 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 24 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/wifi_mgmr_api.h"
	.file 25 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 26 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.file 27 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_efuse.h"
	.file 28 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/dns.h"
	.file 29 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_hex.h"
	.file 30 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifi/include/bl60x_fw_api.h"
	.file 31 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/tcpip.h"
	.file 32 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netifapi.h"
	.file 33 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_wifi.h"
	.file 34 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2275
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x2c
	.4byte	.LASF378
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2d
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x10
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x10
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x10
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x10
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x10
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x10
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x10
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2e
	.byte	0x4
	.uleb128 0x1f
	.4byte	0x84
	.uleb128 0x7
	.4byte	0x95
	.uleb128 0x1f
	.4byte	0x8b
	.uleb128 0x10
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x14
	.4byte	0x95
	.uleb128 0x7
	.4byte	0x9c
	.uleb128 0x1f
	.4byte	0xa1
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x22
	.byte	0x15
	.4byte	0x53
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x6f
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x5a
	.uleb128 0x14
	.4byte	0xc3
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x76
	.uleb128 0x7
	.4byte	0xfb
	.uleb128 0x1f
	.4byte	0xec
	.uleb128 0x14
	.4byte	0xec
	.uleb128 0x2f
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x5
	.byte	0x7d
	.byte	0x11
	.4byte	0xc3
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x7e
	.byte	0x10
	.4byte	0xab
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x7f
	.byte	0x12
	.4byte	0xd4
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x81
	.byte	0x12
	.4byte	0xe0
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x6
	.byte	0x60
	.byte	0xe
	.4byte	0x108
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x7
	.byte	0x23
	.byte	0x10
	.4byte	0x144
	.uleb128 0x7
	.4byte	0x149
	.uleb128 0x16
	.4byte	0x154
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x8
	.byte	0x3f
	.byte	0x11
	.4byte	0xb7
	.uleb128 0x14
	.4byte	0x154
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x8
	.byte	0x40
	.byte	0x12
	.4byte	0xe0
	.uleb128 0x14
	.4byte	0x165
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x8
	.byte	0x41
	.byte	0x12
	.4byte	0xe0
	.uleb128 0x7
	.4byte	0xc3
	.uleb128 0x1a
	.4byte	.LASF31
	.byte	0x14
	.byte	0x9
	.2byte	0x425
	.byte	0x8
	.4byte	0x1b2
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x9
	.2byte	0x42a
	.byte	0xd
	.4byte	0x176
	.byte	0
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x9
	.2byte	0x42b
	.byte	0x8
	.4byte	0x1b2
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	0x84
	.4byte	0x1c2
	.uleb128 0xc
	.4byte	0x3e
	.byte	0x3
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF30
	.byte	0x9
	.2byte	0x430
	.byte	0x22
	.4byte	0x187
	.uleb128 0xb
	.4byte	0x84
	.4byte	0x1df
	.uleb128 0xc
	.4byte	0x3e
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF32
	.byte	0x2c
	.byte	0x9
	.2byte	0x4e1
	.byte	0x10
	.4byte	0x250
	.uleb128 0x5
	.4byte	.LASF33
	.byte	0x9
	.2byte	0x4e3
	.byte	0x8
	.4byte	0x84
	.byte	0
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x9
	.2byte	0x4e4
	.byte	0x13
	.4byte	0x1c2
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF34
	.byte	0x9
	.2byte	0x4e5
	.byte	0xd
	.4byte	0x176
	.byte	0x18
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x9
	.2byte	0x4e6
	.byte	0x8
	.4byte	0x84
	.byte	0x1c
	.uleb128 0x5
	.4byte	.LASF36
	.byte	0x9
	.2byte	0x4e7
	.byte	0x11
	.4byte	0x138
	.byte	0x20
	.uleb128 0x5
	.4byte	.LASF37
	.byte	0x9
	.2byte	0x4e9
	.byte	0xf
	.4byte	0x165
	.byte	0x24
	.uleb128 0x5
	.4byte	.LASF38
	.byte	0x9
	.2byte	0x4eb
	.byte	0xa
	.4byte	0xc3
	.byte	0x28
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF39
	.byte	0x9
	.2byte	0x4ed
	.byte	0x3
	.4byte	0x1df
	.uleb128 0x1a
	.4byte	.LASF40
	.byte	0x24
	.byte	0x9
	.2byte	0x4fd
	.byte	0x10
	.4byte	0x2a4
	.uleb128 0x5
	.4byte	.LASF41
	.byte	0x9
	.2byte	0x4ff
	.byte	0x9
	.4byte	0x2a4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF42
	.byte	0x9
	.2byte	0x500
	.byte	0x9
	.4byte	0x1cf
	.byte	0x10
	.uleb128 0x5
	.4byte	.LASF43
	.byte	0x9
	.2byte	0x501
	.byte	0xa
	.4byte	0xc3
	.byte	0x1c
	.uleb128 0x5
	.4byte	.LASF44
	.byte	0x9
	.2byte	0x503
	.byte	0xf
	.4byte	0x165
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.4byte	0x32
	.4byte	0x2b4
	.uleb128 0xc
	.4byte	0x3e
	.byte	0x3
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF45
	.byte	0x9
	.2byte	0x505
	.byte	0x3
	.4byte	0x25d
	.uleb128 0x1b
	.4byte	.LASF46
	.byte	0x9
	.2byte	0x508
	.byte	0x1e
	.4byte	0x2b4
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0xa
	.byte	0x30
	.byte	0x22
	.4byte	0x2da
	.uleb128 0x7
	.4byte	0x2df
	.uleb128 0x30
	.4byte	.LASF379
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0xb
	.byte	0x25
	.byte	0x17
	.4byte	0x2ce
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x4
	.byte	0xc
	.byte	0x33
	.byte	0x8
	.4byte	0x30b
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0xc
	.byte	0x34
	.byte	0x9
	.4byte	0x120
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0xc
	.byte	0x39
	.byte	0x19
	.4byte	0x2f0
	.uleb128 0x14
	.4byte	0x30b
	.uleb128 0x1b
	.4byte	.LASF52
	.byte	0xd
	.2byte	0x126
	.byte	0x14
	.4byte	0x30b
	.uleb128 0x14
	.4byte	0x31c
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x10
	.byte	0xe
	.byte	0xba
	.byte	0x8
	.4byte	0x3a4
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0xe
	.byte	0xbc
	.byte	0x10
	.4byte	0x3a4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0xe
	.byte	0xbf
	.byte	0x9
	.4byte	0x84
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0xe
	.byte	0xc8
	.byte	0x9
	.4byte	0x114
	.byte	0x8
	.uleb128 0x11
	.string	"len"
	.byte	0xe
	.byte	0xcb
	.byte	0x9
	.4byte	0x114
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0xe
	.byte	0xd0
	.byte	0x8
	.4byte	0xfc
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0xe
	.byte	0xd3
	.byte	0x8
	.4byte	0xfc
	.byte	0xd
	.uleb128 0x11
	.string	"ref"
	.byte	0xe
	.byte	0xda
	.byte	0x8
	.4byte	0xfc
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0xe
	.byte	0xdd
	.byte	0x8
	.4byte	0xfc
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x32e
	.uleb128 0x20
	.4byte	0x5a
	.byte	0x11
	.byte	0x34
	.byte	0xe
	.4byte	0x416
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF62
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF68
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF69
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF70
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF71
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF72
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF73
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF74
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF75
	.byte	0xf
	.byte	0
	.uleb128 0x23
	.4byte	.LASF80
	.4byte	0x5a
	.byte	0xf
	.byte	0x71
	.byte	0x6
	.4byte	0x43f
	.uleb128 0x6
	.4byte	.LASF76
	.byte	0
	.uleb128 0x6
	.4byte	.LASF77
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF78
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF79
	.byte	0x3
	.byte	0
	.uleb128 0x23
	.4byte	.LASF81
	.4byte	0x5a
	.byte	0xf
	.byte	0x9f
	.byte	0x6
	.4byte	0x45c
	.uleb128 0x6
	.4byte	.LASF82
	.byte	0
	.uleb128 0x6
	.4byte	.LASF83
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF84
	.byte	0xf
	.byte	0xab
	.byte	0x11
	.4byte	0x468
	.uleb128 0x7
	.4byte	0x46d
	.uleb128 0x1c
	.4byte	0x12c
	.4byte	0x47c
	.uleb128 0x1
	.4byte	0x47c
	.byte	0
	.uleb128 0x7
	.4byte	0x481
	.uleb128 0x1a
	.4byte	.LASF85
	.byte	0x54
	.byte	0xf
	.2byte	0x10d
	.byte	0x8
	.4byte	0x5a4
	.uleb128 0x5
	.4byte	.LASF54
	.byte	0xf
	.2byte	0x110
	.byte	0x11
	.4byte	0x47c
	.byte	0
	.uleb128 0x5
	.4byte	.LASF86
	.byte	0xf
	.2byte	0x115
	.byte	0xd
	.4byte	0x31c
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF87
	.byte	0xf
	.2byte	0x116
	.byte	0xd
	.4byte	0x31c
	.byte	0x8
	.uleb128 0x24
	.string	"gw"
	.2byte	0x117
	.byte	0xd
	.4byte	0x31c
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF88
	.byte	0xf
	.2byte	0x129
	.byte	0x12
	.4byte	0x5a4
	.byte	0x10
	.uleb128 0x5
	.4byte	.LASF89
	.byte	0xf
	.2byte	0x12f
	.byte	0x13
	.4byte	0x5c9
	.byte	0x14
	.uleb128 0x5
	.4byte	.LASF90
	.byte	0xf
	.2byte	0x134
	.byte	0x17
	.4byte	0x5f8
	.byte	0x18
	.uleb128 0x5
	.4byte	.LASF91
	.byte	0xf
	.2byte	0x13f
	.byte	0x1c
	.4byte	0x61d
	.byte	0x1c
	.uleb128 0x5
	.4byte	.LASF92
	.byte	0xf
	.2byte	0x144
	.byte	0x1c
	.4byte	0x61d
	.byte	0x20
	.uleb128 0x5
	.4byte	.LASF93
	.byte	0xf
	.2byte	0x14c
	.byte	0x9
	.4byte	0x84
	.byte	0x24
	.uleb128 0x5
	.4byte	.LASF94
	.byte	0xf
	.2byte	0x14e
	.byte	0x9
	.4byte	0x1b2
	.byte	0x28
	.uleb128 0x5
	.4byte	.LASF95
	.byte	0xf
	.2byte	0x152
	.byte	0xf
	.4byte	0xa1
	.byte	0x38
	.uleb128 0x24
	.string	"mtu"
	.2byte	0x158
	.byte	0x9
	.4byte	0x114
	.byte	0x3c
	.uleb128 0x5
	.4byte	.LASF96
	.byte	0xf
	.2byte	0x15e
	.byte	0x8
	.4byte	0x663
	.byte	0x3e
	.uleb128 0x5
	.4byte	.LASF97
	.byte	0xf
	.2byte	0x160
	.byte	0x8
	.4byte	0xfc
	.byte	0x44
	.uleb128 0x5
	.4byte	.LASF58
	.byte	0xf
	.2byte	0x162
	.byte	0x8
	.4byte	0xfc
	.byte	0x45
	.uleb128 0x5
	.4byte	.LASF98
	.byte	0xf
	.2byte	0x164
	.byte	0x8
	.4byte	0x673
	.byte	0x46
	.uleb128 0x24
	.string	"num"
	.2byte	0x167
	.byte	0x8
	.4byte	0xfc
	.byte	0x48
	.uleb128 0x5
	.4byte	.LASF99
	.byte	0xf
	.2byte	0x17d
	.byte	0x1c
	.4byte	0x639
	.byte	0x4c
	.uleb128 0x5
	.4byte	.LASF100
	.byte	0xf
	.2byte	0x185
	.byte	0xf
	.4byte	0x6f9
	.byte	0x50
	.byte	0
	.uleb128 0x4
	.4byte	.LASF101
	.byte	0xf
	.byte	0xb5
	.byte	0x11
	.4byte	0x5b0
	.uleb128 0x7
	.4byte	0x5b5
	.uleb128 0x1c
	.4byte	0x12c
	.4byte	0x5c9
	.uleb128 0x1
	.4byte	0x3a4
	.uleb128 0x1
	.4byte	0x47c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF102
	.byte	0xf
	.byte	0xc0
	.byte	0x11
	.4byte	0x5d5
	.uleb128 0x7
	.4byte	0x5da
	.uleb128 0x1c
	.4byte	0x12c
	.4byte	0x5f3
	.uleb128 0x1
	.4byte	0x47c
	.uleb128 0x1
	.4byte	0x3a4
	.uleb128 0x1
	.4byte	0x5f3
	.byte	0
	.uleb128 0x7
	.4byte	0x317
	.uleb128 0x4
	.4byte	.LASF103
	.byte	0xf
	.byte	0xd7
	.byte	0x11
	.4byte	0x604
	.uleb128 0x7
	.4byte	0x609
	.uleb128 0x1c
	.4byte	0x12c
	.4byte	0x61d
	.uleb128 0x1
	.4byte	0x47c
	.uleb128 0x1
	.4byte	0x3a4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF104
	.byte	0xf
	.byte	0xd9
	.byte	0x10
	.4byte	0x629
	.uleb128 0x7
	.4byte	0x62e
	.uleb128 0x16
	.4byte	0x639
	.uleb128 0x1
	.4byte	0x47c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF105
	.byte	0xf
	.byte	0xdc
	.byte	0x11
	.4byte	0x645
	.uleb128 0x7
	.4byte	0x64a
	.uleb128 0x1c
	.4byte	0x12c
	.4byte	0x663
	.uleb128 0x1
	.4byte	0x47c
	.uleb128 0x1
	.4byte	0x5f3
	.uleb128 0x1
	.4byte	0x43f
	.byte	0
	.uleb128 0xb
	.4byte	0xfc
	.4byte	0x673
	.uleb128 0xc
	.4byte	0x3e
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	0x95
	.4byte	0x683
	.uleb128 0xc
	.4byte	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0x31
	.string	"acd"
	.byte	0x14
	.byte	0x10
	.byte	0x47
	.byte	0x8
	.4byte	0x6f9
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0x10
	.byte	0x4a
	.byte	0xf
	.4byte	0x6f9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0x10
	.byte	0x4c
	.byte	0xe
	.4byte	0x30b
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0x10
	.byte	0x4e
	.byte	0x14
	.4byte	0x740
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0x10
	.byte	0x50
	.byte	0x8
	.4byte	0xfc
	.byte	0x9
	.uleb128 0x11
	.string	"ttw"
	.byte	0x10
	.byte	0x52
	.byte	0x9
	.4byte	0x114
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0x10
	.byte	0x54
	.byte	0x8
	.4byte	0xfc
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0x10
	.byte	0x56
	.byte	0x8
	.4byte	0xfc
	.byte	0xd
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0x10
	.byte	0x59
	.byte	0x1b
	.4byte	0x777
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0x683
	.uleb128 0x7
	.4byte	0x329
	.uleb128 0x20
	.4byte	0x5a
	.byte	0x12
	.byte	0x3a
	.byte	0xe
	.4byte	0x740
	.uleb128 0x6
	.4byte	.LASF111
	.byte	0
	.uleb128 0x6
	.4byte	.LASF112
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF113
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF114
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF115
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF117
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF118
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF119
	.byte	0x12
	.byte	0x4f
	.byte	0x3
	.4byte	0x703
	.uleb128 0x20
	.4byte	0x5a
	.byte	0x12
	.byte	0x51
	.byte	0xe
	.4byte	0x76b
	.uleb128 0x6
	.4byte	.LASF120
	.byte	0
	.uleb128 0x6
	.4byte	.LASF121
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF122
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF123
	.byte	0x12
	.byte	0x55
	.byte	0x3
	.4byte	0x74c
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0x10
	.byte	0x44
	.byte	0x10
	.4byte	0x783
	.uleb128 0x7
	.4byte	0x788
	.uleb128 0x16
	.4byte	0x798
	.uleb128 0x1
	.4byte	0x47c
	.uleb128 0x1
	.4byte	0x76b
	.byte	0
	.uleb128 0xb
	.4byte	0xc3
	.4byte	0x7a8
	.uleb128 0xc
	.4byte	0x3e
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF125
	.byte	0x13
	.byte	0xb5
	.byte	0x10
	.4byte	0x7b4
	.uleb128 0x7
	.4byte	0x7b9
	.uleb128 0x16
	.4byte	0x7ce
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x182
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0xd
	.4byte	.LASF126
	.byte	0x34
	.byte	0x14
	.byte	0x22
	.byte	0x10
	.4byte	0x837
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0x14
	.byte	0x23
	.byte	0xa
	.4byte	0x837
	.byte	0
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0x14
	.byte	0x24
	.byte	0xa
	.4byte	0x847
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0x14
	.byte	0x25
	.byte	0xe
	.4byte	0xe0
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0x14
	.byte	0x26
	.byte	0xd
	.4byte	0x798
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF131
	.byte	0x14
	.byte	0x27
	.byte	0xd
	.4byte	0xc3
	.byte	0x2e
	.uleb128 0x2
	.4byte	.LASF132
	.byte	0x14
	.byte	0x28
	.byte	0xd
	.4byte	0xc3
	.byte	0x2f
	.uleb128 0x2
	.4byte	.LASF133
	.byte	0x14
	.byte	0x29
	.byte	0xc
	.4byte	0xab
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.4byte	0x95
	.4byte	0x847
	.uleb128 0xc
	.4byte	0x3e
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.4byte	0x95
	.4byte	0x857
	.uleb128 0xc
	.4byte	0x3e
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF134
	.byte	0x14
	.byte	0x2a
	.byte	0x3
	.4byte	0x7ce
	.uleb128 0xd
	.4byte	.LASF135
	.byte	0xae
	.byte	0x14
	.byte	0x2c
	.byte	0x10
	.4byte	0x8d9
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0x14
	.byte	0x2d
	.byte	0xe
	.4byte	0xd4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x14
	.byte	0x2f
	.byte	0xd
	.4byte	0xc3
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0x14
	.byte	0x30
	.byte	0xa
	.4byte	0x837
	.byte	0x3
	.uleb128 0x11
	.string	"psk"
	.byte	0x14
	.byte	0x31
	.byte	0xa
	.4byte	0x8d9
	.byte	0x23
	.uleb128 0x11
	.string	"pmk"
	.byte	0x14
	.byte	0x32
	.byte	0xa
	.4byte	0x8e9
	.byte	0x64
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0x14
	.byte	0x33
	.byte	0xd
	.4byte	0x798
	.byte	0xa4
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x14
	.byte	0x34
	.byte	0xe
	.4byte	0xd4
	.byte	0xaa
	.uleb128 0x2
	.4byte	.LASF139
	.byte	0x14
	.byte	0x35
	.byte	0xd
	.4byte	0xc3
	.byte	0xac
	.byte	0
	.uleb128 0xb
	.4byte	0x95
	.4byte	0x8e9
	.uleb128 0xc
	.4byte	0x3e
	.byte	0x40
	.byte	0
	.uleb128 0xb
	.4byte	0x95
	.4byte	0x8f9
	.uleb128 0xc
	.4byte	0x3e
	.byte	0x3f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF140
	.byte	0x14
	.byte	0x36
	.byte	0x3
	.4byte	0x863
	.uleb128 0xd
	.4byte	.LASF141
	.byte	0x18
	.byte	0x14
	.byte	0x38
	.byte	0x10
	.4byte	0x96e
	.uleb128 0x2
	.4byte	.LASF142
	.byte	0x14
	.byte	0x39
	.byte	0xd
	.4byte	0xc3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0x14
	.byte	0x3a
	.byte	0xd
	.4byte	0xc3
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF144
	.byte	0x14
	.byte	0x3b
	.byte	0xd
	.4byte	0x798
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF145
	.byte	0x14
	.byte	0x3c
	.byte	0xe
	.4byte	0xe0
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF146
	.byte	0x14
	.byte	0x3d
	.byte	0xe
	.4byte	0xe0
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF133
	.byte	0x14
	.byte	0x3e
	.byte	0x9
	.4byte	0x2b
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF147
	.byte	0x14
	.byte	0x3f
	.byte	0xd
	.4byte	0xc3
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.4byte	.LASF148
	.byte	0x14
	.byte	0x42
	.byte	0xf
	.4byte	0x84
	.uleb128 0x4
	.4byte	.LASF149
	.byte	0x14
	.byte	0x43
	.byte	0x10
	.4byte	0x7b4
	.uleb128 0x4
	.4byte	.LASF150
	.byte	0x14
	.byte	0x44
	.byte	0x10
	.4byte	0x992
	.uleb128 0x7
	.4byte	0x997
	.uleb128 0x16
	.4byte	0x9ac
	.uleb128 0x1
	.4byte	0x9ac
	.uleb128 0x1
	.4byte	0x9b1
	.uleb128 0x1
	.4byte	0x9ac
	.byte	0
	.uleb128 0x7
	.4byte	0x857
	.uleb128 0x7
	.4byte	0xe0
	.uleb128 0x4
	.4byte	.LASF151
	.byte	0x14
	.byte	0x45
	.byte	0x10
	.4byte	0x9c2
	.uleb128 0x7
	.4byte	0x9c7
	.uleb128 0x16
	.4byte	0x9d7
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x20
	.4byte	0x5a
	.byte	0x14
	.byte	0x49
	.byte	0x1
	.4byte	0x9f6
	.uleb128 0x6
	.4byte	.LASF152
	.byte	0
	.uleb128 0x6
	.4byte	.LASF153
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF154
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF155
	.byte	0x8
	.byte	0x14
	.byte	0x6a
	.byte	0x10
	.4byte	0xa1e
	.uleb128 0x2
	.4byte	.LASF156
	.byte	0x14
	.byte	0x6b
	.byte	0xa
	.4byte	0xa1e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF157
	.byte	0x14
	.byte	0x6c
	.byte	0x9
	.4byte	0x2b
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	0x95
	.4byte	0xa2e
	.uleb128 0xc
	.4byte	0x3e
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF158
	.byte	0x14
	.byte	0x6d
	.byte	0x3
	.4byte	0x9f6
	.uleb128 0xd
	.4byte	.LASF159
	.byte	0x8
	.byte	0x15
	.byte	0x74
	.byte	0x8
	.4byte	0xa62
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0x15
	.byte	0x77
	.byte	0x8
	.4byte	0x2b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF161
	.byte	0x15
	.byte	0x7f
	.byte	0xa
	.4byte	0x84
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF162
	.byte	0x14
	.byte	0x15
	.byte	0xbb
	.byte	0x8
	.4byte	0xab1
	.uleb128 0x2
	.4byte	.LASF163
	.byte	0x15
	.byte	0xbe
	.byte	0x8
	.4byte	0x2b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF164
	.byte	0x15
	.byte	0xc7
	.byte	0xa
	.4byte	0x84
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF165
	.byte	0x15
	.byte	0xd6
	.byte	0xc
	.4byte	0xad1
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF166
	.byte	0x15
	.byte	0xe3
	.byte	0xc
	.4byte	0xaeb
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF167
	.byte	0x15
	.byte	0xec
	.byte	0x18
	.4byte	0xb66
	.byte	0x10
	.byte	0
	.uleb128 0x1c
	.4byte	0xac5
	.4byte	0xac5
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0xacc
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.byte	0x2
	.4byte	.LASF168
	.uleb128 0x7
	.4byte	0xa3a
	.uleb128 0x7
	.4byte	0xab1
	.uleb128 0x16
	.4byte	0xaeb
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0xacc
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x7
	.4byte	0xad6
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0x1c
	.byte	0x15
	.2byte	0x140
	.byte	0x8
	.4byte	0xb61
	.uleb128 0x5
	.4byte	.LASF169
	.byte	0x15
	.2byte	0x145
	.byte	0x18
	.4byte	0xb66
	.byte	0
	.uleb128 0x5
	.4byte	.LASF170
	.byte	0x15
	.2byte	0x14a
	.byte	0x18
	.4byte	0xb66
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF171
	.byte	0x15
	.2byte	0x14e
	.byte	0x17
	.4byte	0xb6b
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF172
	.byte	0x15
	.2byte	0x152
	.byte	0xb
	.4byte	0x32
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF161
	.byte	0x15
	.2byte	0x157
	.byte	0xa
	.4byte	0x84
	.byte	0x10
	.uleb128 0x5
	.4byte	.LASF173
	.byte	0x15
	.2byte	0x165
	.byte	0xc
	.4byte	0xb80
	.byte	0x14
	.uleb128 0x5
	.4byte	.LASF174
	.byte	0x15
	.2byte	0x170
	.byte	0xc
	.4byte	0xb80
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.4byte	0xaf0
	.uleb128 0x7
	.4byte	0xb61
	.uleb128 0x7
	.4byte	0xa62
	.uleb128 0x16
	.4byte	0xb80
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0xacc
	.byte	0
	.uleb128 0x7
	.4byte	0xb70
	.uleb128 0x1a
	.4byte	.LASF175
	.byte	0xc
	.byte	0x15
	.2byte	0x178
	.byte	0x8
	.4byte	0xbbe
	.uleb128 0x5
	.4byte	.LASF176
	.byte	0x15
	.2byte	0x17b
	.byte	0x18
	.4byte	0xb66
	.byte	0
	.uleb128 0x5
	.4byte	.LASF177
	.byte	0x15
	.2byte	0x182
	.byte	0x18
	.4byte	0xb66
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF178
	.byte	0x15
	.2byte	0x18a
	.byte	0x18
	.4byte	0xb66
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF179
	.byte	0x16
	.byte	0xac
	.byte	0x1f
	.4byte	0x2c1
	.uleb128 0x4
	.4byte	.LASF180
	.byte	0x16
	.byte	0xb1
	.byte	0x17
	.4byte	0x250
	.uleb128 0x23
	.4byte	.LASF181
	.4byte	0x5a
	.byte	0x1
	.byte	0x66
	.byte	0xe
	.4byte	0xc05
	.uleb128 0x6
	.4byte	.LASF182
	.byte	0
	.uleb128 0x6
	.4byte	.LASF183
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF184
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF185
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF186
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF187
	.byte	0x1
	.byte	0x6c
	.byte	0x3
	.4byte	0xbd6
	.uleb128 0xd
	.4byte	.LASF188
	.byte	0xc4
	.byte	0x1
	.byte	0xa5
	.byte	0x10
	.4byte	0xcbb
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0x1
	.byte	0xa6
	.byte	0xa
	.4byte	0xcbb
	.byte	0
	.uleb128 0x2
	.4byte	.LASF189
	.byte	0x1
	.byte	0xa7
	.byte	0xd
	.4byte	0xc3
	.byte	0x21
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0x1
	.byte	0xa8
	.byte	0xe
	.4byte	0xe0
	.byte	0x24
	.uleb128 0x11
	.string	"psk"
	.byte	0x1
	.byte	0xa9
	.byte	0xa
	.4byte	0x8d9
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF190
	.byte	0x1
	.byte	0xaa
	.byte	0xe
	.4byte	0xe0
	.byte	0x6c
	.uleb128 0x11
	.string	"pmk"
	.byte	0x1
	.byte	0xab
	.byte	0xa
	.4byte	0x8d9
	.byte	0x70
	.uleb128 0x2
	.4byte	.LASF191
	.byte	0x1
	.byte	0xac
	.byte	0xe
	.4byte	0xe0
	.byte	0xb4
	.uleb128 0x11
	.string	"mac"
	.byte	0x1
	.byte	0xad
	.byte	0xd
	.4byte	0x798
	.byte	0xb8
	.uleb128 0x2
	.4byte	.LASF192
	.byte	0x1
	.byte	0xae
	.byte	0xd
	.4byte	0xc3
	.byte	0xbe
	.uleb128 0x2
	.4byte	.LASF193
	.byte	0x1
	.byte	0xb1
	.byte	0xd
	.4byte	0xc3
	.byte	0xbf
	.uleb128 0x2
	.4byte	.LASF194
	.byte	0x1
	.byte	0xb2
	.byte	0xd
	.4byte	0xc3
	.byte	0xc0
	.uleb128 0x2
	.4byte	.LASF195
	.byte	0x1
	.byte	0xb3
	.byte	0xd
	.4byte	0xc3
	.byte	0xc1
	.byte	0
	.uleb128 0xb
	.4byte	0x95
	.4byte	0xccb
	.uleb128 0xc
	.4byte	0x3e
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF196
	.byte	0x1
	.byte	0xb4
	.byte	0x3
	.4byte	0xc11
	.uleb128 0xd
	.4byte	.LASF197
	.byte	0x3c
	.byte	0x1
	.byte	0xc0
	.byte	0x10
	.4byte	0xd81
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0x1
	.byte	0xc1
	.byte	0xa
	.4byte	0x837
	.byte	0
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0x1
	.byte	0xc2
	.byte	0xa
	.4byte	0x847
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0x1
	.byte	0xc3
	.byte	0xe
	.4byte	0xe0
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0x1
	.byte	0xc4
	.byte	0xd
	.4byte	0x798
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF131
	.byte	0x1
	.byte	0xc5
	.byte	0xd
	.4byte	0xc3
	.byte	0x2e
	.uleb128 0x2
	.4byte	.LASF133
	.byte	0x1
	.byte	0xc6
	.byte	0xc
	.4byte	0xab
	.byte	0x2f
	.uleb128 0x2
	.4byte	.LASF198
	.byte	0x1
	.byte	0xc7
	.byte	0xc
	.4byte	0xab
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF199
	.byte	0x1
	.byte	0xc8
	.byte	0xc
	.4byte	0xab
	.byte	0x31
	.uleb128 0x2
	.4byte	.LASF132
	.byte	0x1
	.byte	0xc9
	.byte	0xd
	.4byte	0xc3
	.byte	0x32
	.uleb128 0x2
	.4byte	.LASF200
	.byte	0x1
	.byte	0xca
	.byte	0xd
	.4byte	0xc3
	.byte	0x33
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0x1
	.byte	0xcb
	.byte	0xd
	.4byte	0xc3
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF201
	.byte	0x1
	.byte	0xcc
	.byte	0xe
	.4byte	0xe0
	.byte	0x38
	.byte	0
	.uleb128 0x4
	.4byte	.LASF202
	.byte	0x1
	.byte	0xcd
	.byte	0x3
	.4byte	0xcd7
	.uleb128 0x28
	.byte	0x14
	.byte	0xd3
	.byte	0x5
	.4byte	0xdd5
	.uleb128 0x11
	.string	"ip"
	.byte	0x1
	.byte	0xd4
	.byte	0x12
	.4byte	0xe0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF203
	.byte	0x1
	.byte	0xd5
	.byte	0x12
	.4byte	0xe0
	.byte	0x4
	.uleb128 0x11
	.string	"gw"
	.byte	0x1
	.byte	0xd6
	.byte	0x12
	.4byte	0xe0
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF204
	.byte	0x1
	.byte	0xd7
	.byte	0x12
	.4byte	0xe0
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF205
	.byte	0x1
	.byte	0xd8
	.byte	0x12
	.4byte	0xe0
	.byte	0x10
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.byte	0xdc
	.byte	0x9
	.4byte	0xdeb
	.uleb128 0x2
	.4byte	.LASF133
	.byte	0x1
	.byte	0xdd
	.byte	0x14
	.4byte	0xab
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.byte	0xdb
	.byte	0x5
	.4byte	0xe01
	.uleb128 0x33
	.string	"sta"
	.byte	0x1
	.byte	0xde
	.byte	0xb
	.4byte	0xdd5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF206
	.byte	0x78
	.byte	0x1
	.byte	0xcf
	.byte	0x8
	.4byte	0xe56
	.uleb128 0x2
	.4byte	.LASF207
	.byte	0x1
	.byte	0xd0
	.byte	0x9
	.4byte	0x2b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF208
	.byte	0x1
	.byte	0xd1
	.byte	0xd
	.4byte	0xc3
	.byte	0x4
	.uleb128 0x11
	.string	"mac"
	.byte	0x1
	.byte	0xd2
	.byte	0xd
	.4byte	0x798
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF209
	.byte	0x1
	.byte	0xd9
	.byte	0x7
	.4byte	0xd8d
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0x1
	.byte	0xda
	.byte	0x12
	.4byte	0x481
	.byte	0x20
	.uleb128 0x34
	.4byte	0xdeb
	.byte	0x74
	.byte	0
	.uleb128 0xd
	.4byte	.LASF210
	.byte	0x6e
	.byte	0x1
	.byte	0xe2
	.byte	0x10
	.4byte	0xebf
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0x1
	.byte	0xe3
	.byte	0xe
	.4byte	0xd4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x1
	.byte	0xe7
	.byte	0xd
	.4byte	0xc3
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0x1
	.byte	0xe8
	.byte	0xa
	.4byte	0x837
	.byte	0x3
	.uleb128 0x11
	.string	"psk"
	.byte	0x1
	.byte	0xe9
	.byte	0xa
	.4byte	0x8d9
	.byte	0x23
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0x1
	.byte	0xea
	.byte	0xd
	.4byte	0x798
	.byte	0x64
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x1
	.byte	0xeb
	.byte	0xe
	.4byte	0xd4
	.byte	0x6a
	.uleb128 0x2
	.4byte	.LASF139
	.byte	0x1
	.byte	0xec
	.byte	0xd
	.4byte	0xc3
	.byte	0x6c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF211
	.byte	0x1
	.byte	0xed
	.byte	0x3
	.4byte	0xe56
	.uleb128 0xd
	.4byte	.LASF212
	.byte	0x18
	.byte	0x1
	.byte	0xef
	.byte	0x10
	.4byte	0xf34
	.uleb128 0x2
	.4byte	.LASF142
	.byte	0x1
	.byte	0xf0
	.byte	0xd
	.4byte	0xc3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0x1
	.byte	0xf1
	.byte	0xd
	.4byte	0xc3
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF144
	.byte	0x1
	.byte	0xf2
	.byte	0xd
	.4byte	0x798
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF145
	.byte	0x1
	.byte	0xf3
	.byte	0xe
	.4byte	0xe0
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF146
	.byte	0x1
	.byte	0xf4
	.byte	0xe
	.4byte	0xe0
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF133
	.byte	0x1
	.byte	0xf5
	.byte	0x9
	.4byte	0x2b
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF147
	.byte	0x1
	.byte	0xf6
	.byte	0xd
	.4byte	0xc3
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.4byte	.LASF213
	.byte	0x1
	.byte	0xf7
	.byte	0x3
	.4byte	0xecb
	.uleb128 0x35
	.4byte	.LASF214
	.2byte	0x17e4
	.byte	0x1
	.byte	0xf9
	.byte	0x10
	.4byte	0x1060
	.uleb128 0x2
	.4byte	.LASF215
	.byte	0x1
	.byte	0xfa
	.byte	0xd
	.4byte	0xc3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF131
	.byte	0x1
	.byte	0xfc
	.byte	0x9
	.4byte	0x2b
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF216
	.byte	0x1
	.byte	0xfd
	.byte	0x9
	.4byte	0x2b
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF217
	.byte	0x1
	.byte	0xff
	.byte	0x17
	.4byte	0xe01
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x100
	.byte	0x17
	.4byte	0xe01
	.byte	0x84
	.uleb128 0x5
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x101
	.byte	0x23
	.4byte	0xc05
	.byte	0xfc
	.uleb128 0x12
	.4byte	.LASF220
	.2byte	0x103
	.byte	0x19
	.4byte	0x1060
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF221
	.2byte	0x104
	.byte	0x9
	.4byte	0x2b
	.2byte	0x288
	.uleb128 0x12
	.4byte	.LASF222
	.2byte	0x106
	.byte	0x1b
	.4byte	0x1070
	.2byte	0x28c
	.uleb128 0x29
	.string	"mq"
	.2byte	0x107
	.byte	0x17
	.4byte	0xbbe
	.2byte	0xe44
	.uleb128 0x12
	.4byte	.LASF223
	.2byte	0x108
	.byte	0xd
	.4byte	0x1080
	.2byte	0xe68
	.uleb128 0x29
	.string	"m"
	.2byte	0x109
	.byte	0x19
	.4byte	0xb85
	.2byte	0x1728
	.uleb128 0x12
	.4byte	.LASF224
	.2byte	0x10a
	.byte	0x10
	.4byte	0xbca
	.2byte	0x1734
	.uleb128 0x12
	.4byte	.LASF225
	.2byte	0x10b
	.byte	0x27
	.4byte	0xebf
	.2byte	0x1760
	.uleb128 0x12
	.4byte	.LASF156
	.2byte	0x10c
	.byte	0xa
	.4byte	0xa1e
	.2byte	0x17ce
	.uleb128 0x12
	.4byte	.LASF226
	.2byte	0x10d
	.byte	0xd
	.4byte	0xc3
	.2byte	0x17d1
	.uleb128 0x12
	.4byte	.LASF157
	.2byte	0x10e
	.byte	0x9
	.4byte	0x2b
	.2byte	0x17d4
	.uleb128 0x12
	.4byte	.LASF227
	.2byte	0x111
	.byte	0xe
	.4byte	0xe0
	.2byte	0x17d8
	.uleb128 0x12
	.4byte	.LASF228
	.2byte	0x114
	.byte	0xe
	.4byte	0xe0
	.2byte	0x17dc
	.uleb128 0x12
	.4byte	.LASF229
	.2byte	0x118
	.byte	0x9
	.4byte	0x2b
	.2byte	0x17e0
	.byte	0
	.uleb128 0xb
	.4byte	0xccb
	.4byte	0x1070
	.uleb128 0xc
	.4byte	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0xd81
	.4byte	0x1080
	.uleb128 0xc
	.4byte	0x3e
	.byte	0x31
	.byte	0
	.uleb128 0xb
	.4byte	0xc3
	.4byte	0x1091
	.uleb128 0x36
	.4byte	0x3e
	.2byte	0x8bf
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x11a
	.byte	0x3
	.4byte	0xf40
	.uleb128 0x37
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x125
	.byte	0x14
	.4byte	0x1091
	.uleb128 0x38
	.4byte	.LASF232
	.byte	0x2
	.byte	0x35
	.byte	0x13
	.4byte	0x2e4
	.uleb128 0x5
	.byte	0x3
	.4byte	scan_sig
	.uleb128 0x15
	.4byte	.LASF233
	.byte	0x39
	.byte	0x1b
	.4byte	0x9b6
	.uleb128 0x5
	.byte	0x3
	.4byte	scan_cb
	.uleb128 0x15
	.4byte	.LASF234
	.byte	0x3a
	.byte	0xe
	.4byte	0x84
	.uleb128 0x5
	.byte	0x3
	.4byte	scan_data
	.uleb128 0x39
	.4byte	.LASF237
	.byte	0x19
	.2byte	0x54c
	.byte	0xc
	.4byte	0x176
	.uleb128 0x8
	.4byte	.LASF235
	.byte	0x17
	.byte	0x24
	.byte	0x5
	.4byte	0x2b
	.4byte	0x1107
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF236
	.byte	0x18
	.byte	0x35
	.byte	0x5
	.4byte	0x2b
	.4byte	0x1136
	.uleb128 0x1
	.4byte	0xe0
	.uleb128 0x1
	.4byte	0xe0
	.uleb128 0x1
	.4byte	0xe0
	.uleb128 0x1
	.4byte	0xe0
	.uleb128 0x1
	.4byte	0xe0
	.uleb128 0x1
	.4byte	0x9b1
	.byte	0
	.uleb128 0x13
	.4byte	.LASF238
	.byte	0x18
	.byte	0x47
	.4byte	0x2b
	.uleb128 0x25
	.4byte	.LASF241
	.byte	0xa
	.2byte	0x392
	.4byte	0x1153
	.uleb128 0x1
	.4byte	0x2ce
	.byte	0
	.uleb128 0x13
	.4byte	.LASF239
	.byte	0x14
	.byte	0xa2
	.4byte	0x2b
	.uleb128 0x17
	.4byte	.LASF240
	.byte	0xa
	.2byte	0x58a
	.byte	0xc
	.4byte	0x154
	.4byte	0x117a
	.uleb128 0x1
	.4byte	0x2ce
	.uleb128 0x1
	.4byte	0x176
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF242
	.byte	0x1a
	.byte	0xa4
	.byte	0x6
	.4byte	0x118c
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x17
	.4byte	.LASF243
	.byte	0xa
	.2byte	0x5d8
	.byte	0x10
	.4byte	0x2ce
	.4byte	0x11ad
	.uleb128 0x1
	.4byte	0x171
	.uleb128 0x1
	.4byte	0x171
	.uleb128 0x1
	.4byte	0xcf
	.byte	0
	.uleb128 0x8
	.4byte	.LASF244
	.byte	0x1a
	.byte	0xa3
	.byte	0x7
	.4byte	0x84
	.4byte	0x11c3
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x8
	.4byte	.LASF245
	.byte	0x18
	.byte	0x42
	.byte	0x5
	.4byte	0x2b
	.4byte	0x11de
	.uleb128 0x1
	.4byte	0x182
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF246
	.byte	0x18
	.byte	0x41
	.byte	0x5
	.4byte	0x2b
	.4byte	0x11f9
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x17
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x11f
	.byte	0x5
	.4byte	0x2b
	.4byte	0x1210
	.uleb128 0x1
	.4byte	0x1210
	.byte	0
	.uleb128 0x7
	.4byte	0x2b
	.uleb128 0x17
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x11d
	.byte	0x5
	.4byte	0x2b
	.4byte	0x122c
	.uleb128 0x1
	.4byte	0x1210
	.byte	0
	.uleb128 0x8
	.4byte	.LASF249
	.byte	0x18
	.byte	0x3b
	.byte	0x5
	.4byte	0x2b
	.4byte	0x1242
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF250
	.byte	0x18
	.byte	0x3a
	.byte	0x5
	.4byte	0x2b
	.4byte	0x1258
	.uleb128 0x1
	.4byte	0xd4
	.byte	0
	.uleb128 0x13
	.4byte	.LASF251
	.byte	0x18
	.byte	0x3d
	.4byte	0x2b
	.uleb128 0x8
	.4byte	.LASF252
	.byte	0x13
	.byte	0xc0
	.byte	0x5
	.4byte	0x2b
	.4byte	0x1279
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x8
	.4byte	.LASF253
	.byte	0x13
	.byte	0xbf
	.byte	0x5
	.4byte	0x2b
	.4byte	0x1294
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x7a8
	.byte	0
	.uleb128 0x17
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x123
	.byte	0x5
	.4byte	0x2b
	.4byte	0x12ab
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x17
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x122
	.byte	0x5
	.4byte	0x2b
	.4byte	0x12c7
	.uleb128 0x1
	.4byte	0x12c7
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x7
	.4byte	0xf34
	.uleb128 0x8
	.4byte	.LASF256
	.byte	0x17
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0x12ec
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x17
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x121
	.byte	0x5
	.4byte	0x2b
	.4byte	0x1303
	.uleb128 0x1
	.4byte	0x182
	.byte	0
	.uleb128 0x13
	.4byte	.LASF258
	.byte	0x18
	.byte	0x3f
	.4byte	0x2b
	.uleb128 0x8
	.4byte	.LASF259
	.byte	0x18
	.byte	0x3e
	.byte	0x5
	.4byte	0x2b
	.4byte	0x1333
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF260
	.byte	0x1b
	.byte	0x21
	.byte	0x5
	.4byte	0x2b
	.4byte	0x1349
	.uleb128 0x1
	.4byte	0x182
	.byte	0
	.uleb128 0x13
	.4byte	.LASF261
	.byte	0x18
	.byte	0x4c
	.4byte	0x2b
	.uleb128 0x13
	.4byte	.LASF262
	.byte	0x18
	.byte	0x4d
	.4byte	0x2b
	.uleb128 0x8
	.4byte	.LASF263
	.byte	0x18
	.byte	0x4b
	.byte	0x5
	.4byte	0x2b
	.4byte	0x1375
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x13
	.4byte	.LASF264
	.byte	0x18
	.byte	0x39
	.4byte	0x2b
	.uleb128 0x8
	.4byte	.LASF265
	.byte	0x18
	.byte	0x34
	.byte	0x5
	.4byte	0x2b
	.4byte	0x13af
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x182
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0xd4
	.byte	0
	.uleb128 0x13
	.4byte	.LASF266
	.byte	0x18
	.byte	0x37
	.4byte	0x2b
	.uleb128 0x2a
	.4byte	.LASF267
	.byte	0x67
	.uleb128 0x2a
	.4byte	.LASF268
	.byte	0x66
	.uleb128 0x8
	.4byte	.LASF269
	.byte	0x1c
	.byte	0x6c
	.byte	0x12
	.4byte	0x6fe
	.4byte	0x13dc
	.uleb128 0x1
	.4byte	0xfc
	.byte	0
	.uleb128 0x13
	.4byte	.LASF270
	.byte	0x18
	.byte	0x40
	.4byte	0x2b
	.uleb128 0x8
	.4byte	.LASF271
	.byte	0x17
	.byte	0x2c
	.byte	0x7
	.4byte	0x8b
	.4byte	0x1407
	.uleb128 0x1
	.4byte	0x90
	.uleb128 0x1
	.4byte	0xa6
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x13
	.4byte	.LASF272
	.byte	0x18
	.byte	0x3c
	.4byte	0x2b
	.uleb128 0x13
	.4byte	.LASF273
	.byte	0x14
	.byte	0x72
	.4byte	0x2b
	.uleb128 0x8
	.4byte	.LASF274
	.byte	0x18
	.byte	0x43
	.byte	0x5
	.4byte	0x2b
	.4byte	0x1433
	.uleb128 0x1
	.4byte	0x8b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF275
	.byte	0x2
	.byte	0x37
	.byte	0xc
	.4byte	0x2b
	.4byte	0x1449
	.uleb128 0x1
	.4byte	0x1449
	.byte	0
	.uleb128 0x7
	.4byte	0xa2e
	.uleb128 0x8
	.4byte	.LASF276
	.byte	0x1d
	.byte	0x20
	.byte	0x7
	.4byte	0x8b
	.4byte	0x146e
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0xec
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x8
	.4byte	.LASF277
	.byte	0x1e
	.byte	0x41
	.byte	0x5
	.4byte	0x2b
	.4byte	0x1493
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x8b
	.byte	0
	.uleb128 0x25
	.4byte	.LASF278
	.byte	0xf
	.2byte	0x1da
	.4byte	0x14a5
	.uleb128 0x1
	.4byte	0x47c
	.byte	0
	.uleb128 0x25
	.4byte	.LASF279
	.byte	0xf
	.2byte	0x1c2
	.4byte	0x14b7
	.uleb128 0x1
	.4byte	0x47c
	.byte	0
	.uleb128 0x8
	.4byte	.LASF280
	.byte	0x1f
	.byte	0x50
	.byte	0x7
	.4byte	0x12c
	.4byte	0x14d2
	.uleb128 0x1
	.4byte	0x3a4
	.uleb128 0x1
	.4byte	0x47c
	.byte	0
	.uleb128 0x8
	.4byte	.LASF281
	.byte	0x2
	.byte	0x38
	.byte	0x7
	.4byte	0x12c
	.4byte	0x14e8
	.uleb128 0x1
	.4byte	0x47c
	.byte	0
	.uleb128 0x8
	.4byte	.LASF282
	.byte	0x20
	.byte	0x41
	.byte	0x7
	.4byte	0x12c
	.4byte	0x151c
	.uleb128 0x1
	.4byte	0x47c
	.uleb128 0x1
	.4byte	0x5f3
	.uleb128 0x1
	.4byte	0x5f3
	.uleb128 0x1
	.4byte	0x5f3
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x45c
	.uleb128 0x1
	.4byte	0x5a4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF283
	.byte	0x21
	.byte	0x33
	.byte	0x5
	.4byte	0x2b
	.4byte	0x1532
	.uleb128 0x1
	.4byte	0x182
	.byte	0
	.uleb128 0x8
	.4byte	.LASF284
	.byte	0x17
	.byte	0x29
	.byte	0x8
	.4byte	0x32
	.4byte	0x1548
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF285
	.byte	0x17
	.byte	0x1f
	.byte	0x8
	.4byte	0x84
	.4byte	0x1568
	.uleb128 0x1
	.4byte	0x86
	.uleb128 0x1
	.4byte	0xf1
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x17
	.4byte	.LASF286
	.byte	0xa
	.2byte	0x28a
	.byte	0xc
	.4byte	0x154
	.4byte	0x158e
	.uleb128 0x1
	.4byte	0x2ce
	.uleb128 0x1
	.4byte	0xf6
	.uleb128 0x1
	.4byte	0x176
	.uleb128 0x1
	.4byte	0x160
	.byte	0
	.uleb128 0x8
	.4byte	.LASF287
	.byte	0x22
	.byte	0xce
	.byte	0x5
	.4byte	0x2b
	.4byte	0x15a5
	.uleb128 0x1
	.4byte	0xa6
	.uleb128 0x3b
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF288
	.2byte	0x2f0
	.byte	0xd
	.4byte	0xa1
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15d0
	.uleb128 0x3
	.4byte	.LASF136
	.byte	0x2
	.2byte	0x2f0
	.byte	0x30
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x9
	.4byte	.LASF289
	.2byte	0x2e8
	.4byte	0x2b
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1609
	.uleb128 0x3
	.4byte	.LASF156
	.byte	0x2
	.2byte	0x2e8
	.byte	0x26
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.4byte	.LASF297
	.4byte	0x1619
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__.0
	.byte	0
	.uleb128 0xb
	.4byte	0x9c
	.4byte	0x1619
	.uleb128 0xc
	.4byte	0x3e
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.4byte	0x1609
	.uleb128 0x9
	.4byte	.LASF290
	.2byte	0x2d0
	.4byte	0x2b
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1694
	.uleb128 0xa
	.string	"env"
	.2byte	0x2d0
	.byte	0x30
	.4byte	0x9ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x3
	.4byte	.LASF291
	.byte	0x2
	.2byte	0x2d0
	.byte	0x3f
	.4byte	0x9b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xa
	.string	"cb"
	.2byte	0x2d0
	.byte	0x56
	.4byte	0x986
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x21
	.string	"i"
	.2byte	0x2d2
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF292
	.2byte	0x2d3
	.byte	0x1c
	.4byte	0x1694
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.4byte	.LASF293
	.2byte	0x2d4
	.byte	0x19
	.4byte	0x857
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x7
	.4byte	0xd81
	.uleb128 0x9
	.4byte	.LASF294
	.2byte	0x2ad
	.4byte	0x2b
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x170d
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0x2
	.2byte	0x2ad
	.byte	0x1d
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF293
	.byte	0x2
	.2byte	0x2ad
	.byte	0x38
	.4byte	0x9ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"i"
	.2byte	0x2af
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF295
	.2byte	0x2af
	.byte	0xc
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.4byte	.LASF133
	.2byte	0x2b0
	.byte	0xc
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0xe
	.4byte	.LASF292
	.2byte	0x2b1
	.byte	0x1c
	.4byte	0x1694
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x9
	.4byte	.LASF296
	.2byte	0x2a1
	.4byte	0x2b
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1745
	.uleb128 0xe
	.4byte	.LASF219
	.2byte	0x2a3
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.4byte	.LASF297
	.4byte	0x1755
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__.1
	.byte	0
	.uleb128 0xb
	.4byte	0x9c
	.4byte	0x1755
	.uleb128 0xc
	.4byte	0x3e
	.byte	0x20
	.byte	0
	.uleb128 0x14
	.4byte	0x1745
	.uleb128 0x9
	.4byte	.LASF298
	.2byte	0x295
	.4byte	0x2b
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1784
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x295
	.byte	0x2b
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF300
	.2byte	0x290
	.4byte	0x2b
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17fc
	.uleb128 0xa
	.string	"ops"
	.2byte	0x290
	.byte	0x20
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF301
	.byte	0x2
	.2byte	0x290
	.byte	0x2e
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF302
	.byte	0x2
	.2byte	0x290
	.byte	0x3d
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF160
	.byte	0x2
	.2byte	0x290
	.byte	0x4f
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF303
	.byte	0x2
	.2byte	0x290
	.byte	0x5e
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"buf"
	.2byte	0x290
	.byte	0x70
	.4byte	0x9b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x9
	.4byte	.LASF304
	.2byte	0x286
	.4byte	0x2b
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1834
	.uleb128 0x3
	.4byte	.LASF161
	.byte	0x2
	.2byte	0x286
	.byte	0x1a
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"cb"
	.2byte	0x286
	.byte	0x33
	.4byte	0x9b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF305
	.2byte	0x260
	.4byte	0x2b
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x188b
	.uleb128 0x3
	.4byte	.LASF306
	.byte	0x2
	.2byte	0x260
	.byte	0x31
	.4byte	0x188b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"num"
	.2byte	0x260
	.byte	0x43
	.4byte	0x9b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.4byte	.LASF307
	.2byte	0x262
	.byte	0xe
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.4byte	.LASF308
	.2byte	0x263
	.byte	0x1a
	.4byte	0x9ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	0x9ac
	.uleb128 0x9
	.4byte	.LASF309
	.2byte	0x255
	.4byte	0x2b
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18c8
	.uleb128 0xa
	.string	"pkt"
	.2byte	0x255
	.byte	0x27
	.4byte	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"len"
	.2byte	0x255
	.byte	0x30
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF310
	.2byte	0x24d
	.4byte	0x2b
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1902
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0x2
	.2byte	0x24d
	.byte	0x1f
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF311
	.byte	0x2
	.2byte	0x24d
	.byte	0x2c
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF312
	.2byte	0x247
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x192d
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0x2
	.2byte	0x247
	.byte	0x20
	.4byte	0x1210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF313
	.2byte	0x241
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1958
	.uleb128 0x3
	.4byte	.LASF133
	.byte	0x2
	.2byte	0x241
	.byte	0x1d
	.4byte	0x1210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF314
	.2byte	0x23c
	.4byte	0x2b
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1982
	.uleb128 0x3
	.4byte	.LASF315
	.byte	0x2
	.2byte	0x23c
	.byte	0x24
	.4byte	0x1210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF316
	.2byte	0x237
	.4byte	0x2b
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19ac
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x237
	.byte	0x1e
	.4byte	0x1210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF317
	.2byte	0x232
	.4byte	0x2b
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19d6
	.uleb128 0x3
	.4byte	.LASF318
	.byte	0x2
	.2byte	0x232
	.byte	0x24
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x9
	.4byte	.LASF319
	.2byte	0x22d
	.4byte	0x2b
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a00
	.uleb128 0x3
	.4byte	.LASF320
	.byte	0x2
	.2byte	0x22d
	.byte	0x24
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x18
	.4byte	.LASF321
	.2byte	0x227
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.4byte	.LASF322
	.2byte	0x221
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF323
	.2byte	0x21b
	.4byte	0x2b
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a55
	.uleb128 0xa
	.string	"env"
	.2byte	0x21b
	.byte	0x28
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF324
	.2byte	0x215
	.4byte	0x2b
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a8c
	.uleb128 0xa
	.string	"env"
	.2byte	0x215
	.byte	0x26
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"cb"
	.2byte	0x215
	.byte	0x38
	.4byte	0x97a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF325
	.2byte	0x20f
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ab7
	.uleb128 0x3
	.4byte	.LASF326
	.byte	0x2
	.2byte	0x20f
	.byte	0x24
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF327
	.2byte	0x209
	.4byte	0x2b
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ae1
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0x2
	.2byte	0x209
	.byte	0x25
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x9
	.4byte	.LASF328
	.2byte	0x1fa
	.4byte	0x2b
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b29
	.uleb128 0x3
	.4byte	.LASF329
	.byte	0x2
	.2byte	0x1fa
	.byte	0x3b
	.4byte	0x1b29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xa
	.string	"idx"
	.2byte	0x1fa
	.byte	0x4d
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0xe
	.4byte	.LASF330
	.2byte	0x1fc
	.byte	0x25
	.4byte	0xecb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x7
	.4byte	0x905
	.uleb128 0x9
	.4byte	.LASF331
	.2byte	0x1f4
	.4byte	0x2b
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b58
	.uleb128 0x3
	.4byte	.LASF332
	.byte	0x2
	.2byte	0x1f4
	.byte	0x27
	.4byte	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF333
	.2byte	0x1ee
	.4byte	0x2b
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b82
	.uleb128 0x3
	.4byte	.LASF334
	.byte	0x2
	.2byte	0x1ee
	.byte	0x29
	.4byte	0x1b82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	0x96e
	.uleb128 0x9
	.4byte	.LASF335
	.2byte	0x1e8
	.4byte	0x2b
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bf1
	.uleb128 0x3
	.4byte	.LASF334
	.byte	0x2
	.2byte	0x1e8
	.byte	0x2a
	.4byte	0x1b82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0x2
	.2byte	0x1e8
	.byte	0x3b
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF336
	.byte	0x2
	.2byte	0x1e8
	.byte	0x45
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF337
	.byte	0x2
	.2byte	0x1e8
	.byte	0x58
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0x2
	.2byte	0x1e8
	.byte	0x64
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF338
	.2byte	0x1de
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c38
	.uleb128 0xa
	.string	"ip"
	.2byte	0x1de
	.byte	0x23
	.4byte	0x9b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"gw"
	.2byte	0x1de
	.byte	0x31
	.4byte	0x9b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF203
	.byte	0x2
	.2byte	0x1de
	.byte	0x3f
	.4byte	0x9b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x9
	.4byte	.LASF339
	.2byte	0x1ca
	.4byte	0x2b
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c61
	.uleb128 0xa
	.string	"mac"
	.2byte	0x1ca
	.byte	0x22
	.4byte	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF340
	.2byte	0x1c4
	.4byte	0x2b
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c8a
	.uleb128 0xa
	.string	"mac"
	.2byte	0x1c4
	.byte	0x22
	.4byte	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF341
	.2byte	0x1bd
	.byte	0x12
	.4byte	0x96e
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3c
	.4byte	.LASF369
	.byte	0x2
	.2byte	0x194
	.byte	0xd
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d03
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x194
	.byte	0x2e
	.4byte	0x47c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"mac"
	.2byte	0x194
	.byte	0x3d
	.4byte	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.4byte	.LASF106
	.2byte	0x196
	.byte	0x10
	.4byte	0x30b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF87
	.2byte	0x197
	.byte	0x10
	.4byte	0x30b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.string	"gw"
	.2byte	0x198
	.byte	0x10
	.4byte	0x30b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x26
	.4byte	.LASF342
	.2byte	0x18e
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d28
	.uleb128 0xa
	.string	"psk"
	.2byte	0x18e
	.byte	0x22
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.4byte	.LASF343
	.2byte	0x188
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d4e
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0x2
	.2byte	0x188
	.byte	0x23
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.4byte	.LASF344
	.2byte	0x162
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d92
	.uleb128 0x3
	.4byte	.LASF345
	.byte	0x2
	.2byte	0x162
	.byte	0x50
	.4byte	0x1d92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.4byte	.LASF129
	.2byte	0x164
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF190
	.2byte	0x16a
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.4byte	0x8f9
	.uleb128 0x18
	.4byte	.LASF346
	.2byte	0x15c
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.4byte	.LASF347
	.2byte	0x156
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF348
	.2byte	0x13b
	.4byte	0x2b
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1deb
	.uleb128 0xa
	.string	"ps"
	.2byte	0x13b
	.byte	0x23
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF349
	.2byte	0x135
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF350
	.2byte	0x12e
	.4byte	0x2b
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e88
	.uleb128 0x3
	.4byte	.LASF351
	.byte	0x2
	.2byte	0x12e
	.byte	0x2d
	.4byte	0x1b82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0x2
	.2byte	0x12e
	.byte	0x43
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"psk"
	.2byte	0x12e
	.byte	0x4f
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.string	"pmk"
	.2byte	0x12e
	.byte	0x5a
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.string	"mac"
	.2byte	0x12e
	.byte	0x68
	.4byte	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF352
	.byte	0x2
	.2byte	0x12e
	.byte	0x75
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x3
	.4byte	.LASF353
	.byte	0x2
	.2byte	0x12e
	.byte	0x84
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x18
	.4byte	.LASF354
	.2byte	0x129
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF355
	.2byte	0x118
	.4byte	0x2b
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f04
	.uleb128 0xa
	.string	"ip"
	.2byte	0x118
	.byte	0x23
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF203
	.byte	0x2
	.2byte	0x118
	.byte	0x30
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"gw"
	.2byte	0x118
	.byte	0x3f
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF204
	.byte	0x2
	.2byte	0x118
	.byte	0x4c
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF205
	.byte	0x2
	.2byte	0x118
	.byte	0x5b
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x9
	.4byte	.LASF356
	.2byte	0x105
	.4byte	0x2b
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f4d
	.uleb128 0x3
	.4byte	.LASF204
	.byte	0x2
	.2byte	0x105
	.byte	0x25
	.4byte	0x9b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF205
	.byte	0x2
	.2byte	0x105
	.byte	0x35
	.4byte	0x9b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"dns"
	.2byte	0x107
	.byte	0x16
	.4byte	0x6fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF357
	.byte	0x2
	.byte	0xfc
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f90
	.uleb128 0x19
	.string	"ip"
	.byte	0xfc
	.byte	0x24
	.4byte	0x9b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.string	"gw"
	.byte	0xfc
	.byte	0x32
	.4byte	0x9b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.4byte	.LASF203
	.byte	0xfc
	.byte	0x40
	.4byte	0x9b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF358
	.byte	0xe7
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fb8
	.uleb128 0x19
	.string	"mac"
	.byte	0xe7
	.byte	0x23
	.4byte	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF359
	.byte	0xe1
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fe0
	.uleb128 0x19
	.string	"mac"
	.byte	0xe1
	.byte	0x23
	.4byte	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF360
	.byte	0xdb
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2008
	.uleb128 0xf
	.4byte	.LASF334
	.byte	0xdb
	.byte	0x2d
	.4byte	0x1b82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF361
	.byte	0xca
	.byte	0x12
	.4byte	0x96e
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2033
	.uleb128 0x15
	.4byte	.LASF362
	.byte	0xcc
	.byte	0x10
	.4byte	0x2b
	.uleb128 0x5
	.byte	0x3
	.4byte	done.2
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF363
	.byte	0x2
	.byte	0xc4
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2058
	.uleb128 0xf
	.4byte	.LASF364
	.byte	0xc4
	.byte	0x33
	.4byte	0x1449
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF365
	.byte	0xbb
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2080
	.uleb128 0xf
	.4byte	.LASF366
	.byte	0xbb
	.byte	0x25
	.4byte	0x1449
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF367
	.byte	0xae
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20f2
	.uleb128 0xf
	.4byte	.LASF368
	.byte	0xae
	.byte	0x1d
	.4byte	0x8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xf
	.4byte	.LASF127
	.byte	0xae
	.byte	0x2d
	.4byte	0x8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xf
	.4byte	.LASF129
	.byte	0xae
	.byte	0x37
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xf
	.4byte	.LASF89
	.byte	0xae
	.byte	0x47
	.4byte	0x8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.string	"ret"
	.byte	0xb0
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.string	"psk"
	.byte	0xb1
	.byte	0xa
	.4byte	0x837
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x27
	.4byte	.LASF370
	.byte	0x77
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x214c
	.uleb128 0xf
	.4byte	.LASF85
	.byte	0x77
	.byte	0x2f
	.4byte	0x47c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.string	"mac"
	.byte	0x77
	.byte	0x3e
	.4byte	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x79
	.byte	0x10
	.4byte	0x30b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x7a
	.byte	0x10
	.4byte	0x30b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.string	"gw"
	.byte	0x7b
	.byte	0x10
	.4byte	0x30b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF375
	.byte	0x2
	.byte	0x62
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x218f
	.uleb128 0x19
	.string	"mac"
	.byte	0x62
	.byte	0x23
	.4byte	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.string	"i"
	.byte	0x64
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF161
	.byte	0x65
	.byte	0xd
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x27
	.4byte	.LASF371
	.byte	0x47
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21ea
	.uleb128 0x19
	.string	"env"
	.byte	0x47
	.byte	0x35
	.4byte	0x9ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.4byte	.LASF291
	.byte	0x47
	.byte	0x44
	.4byte	0x9b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.4byte	.LASF293
	.byte	0x47
	.byte	0x61
	.4byte	0x9ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.4byte	.LASF307
	.byte	0x4a
	.byte	0xe
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF372
	.byte	0x52
	.byte	0x1a
	.4byte	0x9ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.4byte	.LASF373
	.byte	0x3c
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2237
	.uleb128 0xf
	.4byte	.LASF161
	.byte	0x3c
	.byte	0x24
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.4byte	.LASF374
	.byte	0x3c
	.byte	0x30
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.4byte	.LASF372
	.byte	0x3e
	.byte	0x1a
	.4byte	0x9ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF219
	.byte	0x3f
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x40
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x12a
	.byte	0x13
	.4byte	0x2b
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2273
	.uleb128 0x3
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x12a
	.byte	0x3f
	.4byte	0x2273
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF293
	.byte	0x1
	.2byte	0x12a
	.byte	0x5c
	.4byte	0x1694
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.4byte	0x1091
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
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
	.uleb128 0xf
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
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
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x19
	.uleb128 0x5
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x7c
	.uleb128 0x19
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
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x1f
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 15
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1d4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
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
	.4byte	.LFB6
	.uleb128 .LFE6-.LFB6
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"int8_t"
.LASF13:
	.string	"size_t"
.LASF255:
	.string	"wifi_mgmr_ap_sta_info_get_internal"
.LASF269:
	.string	"dns_getserver"
.LASF122:
	.string	"ACD_DECLINE"
.LASF62:
	.string	"MEMP_TCP_PCB"
.LASF99:
	.string	"igmp_mac_filter"
.LASF145:
	.string	"tsfhi"
.LASF367:
	.string	"wifi_mgmr_psk_cal"
.LASF15:
	.string	"int32_t"
.LASF294:
	.string	"wifi_mgmr_scan_ap"
.LASF317:
	.string	"wifi_mgmr_conf_max_sta"
.LASF165:
	.string	"guard"
.LASF71:
	.string	"MEMP_SYS_TIMEOUT"
.LASF297:
	.string	"__func__"
.LASF349:
	.string	"wifi_mgmr_sta_disconnect"
.LASF65:
	.string	"MEMP_ALTCP_PCB"
.LASF280:
	.string	"tcpip_input"
.LASF25:
	.string	"BaseType_t"
.LASF275:
	.string	"bl606a0_wifi_init"
.LASF43:
	.string	"ucDummy3"
.LASF320:
	.string	"config"
.LASF93:
	.string	"state"
.LASF157:
	.string	"channel_nums"
.LASF38:
	.string	"ucDummy8"
.LASF187:
	.string	"WIFI_MGMR_CONNECTION_STATUS_T"
.LASF246:
	.string	"wifi_mgmr_api_channel_set"
.LASF80:
	.string	"lwip_internal_netif_client_data_index"
.LASF306:
	.string	"ap_ary"
.LASF149:
	.string	"sniffer_cb_t"
.LASF316:
	.string	"wifi_mgmr_state_get"
.LASF160:
	.string	"type"
.LASF239:
	.string	"wifi_mgmr_cli_scanlist"
.LASF265:
	.string	"wifi_mgmr_api_connect"
.LASF354:
	.string	"wifi_mgmr_sta_ip_unset"
.LASF366:
	.string	"conf"
.LASF308:
	.string	"ap_ary_p"
.LASF301:
	.string	"task"
.LASF105:
	.string	"netif_igmp_mac_filter_fn"
.LASF211:
	.string	"wifi_mgmr_connect_ind_stat_info_t"
.LASF134:
	.string	"wifi_mgmr_ap_item_t"
.LASF315:
	.string	"s_code"
.LASF195:
	.string	"isUsed"
.LASF250:
	.string	"wifi_mgmr_api_rate_config"
.LASF322:
	.string	"wifi_mgmr_sniffer_enable"
.LASF139:
	.string	"chan_band"
.LASF180:
	.string	"os_timer_t"
.LASF106:
	.string	"ipaddr"
.LASF215:
	.string	"ready"
.LASF147:
	.string	"data_rate"
.LASF127:
	.string	"ssid"
.LASF337:
	.string	"passwd"
.LASF46:
	.string	"StaticMessageBuffer_t"
.LASF130:
	.string	"bssid"
.LASF9:
	.string	"long int"
.LASF339:
	.string	"wifi_mgmr_ap_mac_get"
.LASF379:
	.string	"QueueDefinition"
.LASF257:
	.string	"wifi_mgmr_ap_sta_cnt_get_internal"
.LASF33:
	.string	"pvDummy1"
.LASF42:
	.string	"pvDummy2"
.LASF29:
	.string	"pvDummy3"
.LASF35:
	.string	"pvDummy5"
.LASF36:
	.string	"pvDummy6"
.LASF177:
	.string	"previousState"
.LASF146:
	.string	"tsflo"
.LASF327:
	.string	"wifi_mgmr_ap_sta_delete"
.LASF237:
	.string	"xTaskGetTickCount"
.LASF49:
	.string	"ip4_addr"
.LASF288:
	.string	"wifi_mgmr_status_code_str"
.LASF303:
	.string	"length"
.LASF312:
	.string	"wifi_mgmr_channel_get"
.LASF148:
	.string	"wifi_interface_t"
.LASF90:
	.string	"linkoutput"
.LASF115:
	.string	"ACD_STATE_ANNOUNCING"
.LASF346:
	.string	"wifi_mgmr_sta_autoconnect_disable"
.LASF97:
	.string	"hwaddr_len"
.LASF244:
	.string	"pvPortMalloc"
.LASF74:
	.string	"MEMP_PBUF_POOL"
.LASF47:
	.string	"QueueHandle_t"
.LASF5:
	.string	"signed char"
.LASF16:
	.string	"uint8_t"
.LASF336:
	.string	"hidden_ssid"
.LASF135:
	.string	"wifi_mgmr_sta_connect_ind_stat_info"
.LASF166:
	.string	"action"
.LASF113:
	.string	"ACD_STATE_PROBING"
.LASF39:
	.string	"StaticTimer_t"
.LASF169:
	.string	"parentState"
.LASF202:
	.string	"wifi_mgmr_scan_item_t"
.LASF6:
	.string	"unsigned char"
.LASF206:
	.string	"wlan_netif"
.LASF344:
	.string	"wifi_mgmr_sta_connect_ind_stat_get"
.LASF360:
	.string	"wifi_mgmr_sta_disable"
.LASF263:
	.string	"wifi_mgmr_api_fw_powersaving"
.LASF125:
	.string	"wifi_event_pkt_cb_t"
.LASF243:
	.string	"xQueueGenericCreate"
.LASF66:
	.string	"MEMP_NETBUF"
.LASF84:
	.string	"netif_init_fn"
.LASF272:
	.string	"wifi_mgmr_api_ifaceup"
.LASF230:
	.string	"wifi_mgmr_t"
.LASF168:
	.string	"_Bool"
.LASF302:
	.string	"element"
.LASF238:
	.string	"wifi_mgmr_api_fw_scan"
.LASF126:
	.string	"wifi_mgmr_ap_item"
.LASF231:
	.string	"wifiMgmr"
.LASF314:
	.string	"wifi_mgmr_status_code_get"
.LASF345:
	.string	"wifi_mgmr_ind_stat"
.LASF264:
	.string	"wifi_mgmr_api_disconnect"
.LASF12:
	.string	"char"
.LASF304:
	.string	"wifi_mgmr_scan"
.LASF241:
	.string	"vQueueDelete"
.LASF89:
	.string	"output"
.LASF53:
	.string	"pbuf"
.LASF313:
	.string	"wifi_mgmr_rssi_get"
.LASF138:
	.string	"chan_freq"
.LASF196:
	.string	"wifi_mgmr_profile_t"
.LASF225:
	.string	"wifi_mgmr_stat_info"
.LASF311:
	.string	"use_40Mhz"
.LASF48:
	.string	"SemaphoreHandle_t"
.LASF232:
	.string	"scan_sig"
.LASF200:
	.string	"cipher"
.LASF321:
	.string	"wifi_mgmr_sniffer_disable"
.LASF223:
	.string	"mq_pool"
.LASF212:
	.string	"wifi_mgmr_sta_basic_info"
.LASF224:
	.string	"timer"
.LASF32:
	.string	"xSTATIC_TIMER"
.LASF142:
	.string	"sta_idx"
.LASF58:
	.string	"flags"
.LASF235:
	.string	"strcmp"
.LASF86:
	.string	"ip_addr"
.LASF192:
	.string	"dhcp_use"
.LASF319:
	.string	"wifi_mgmr_rate_config"
.LASF323:
	.string	"wifi_mgmr_sniffer_unregister"
.LASF228:
	.string	"features"
.LASF154:
	.string	"PS_MODE_ON_DYN"
.LASF347:
	.string	"wifi_mgmr_sta_autoconnect_enable"
.LASF88:
	.string	"input"
.LASF373:
	.string	"cb_scan_complete"
.LASF199:
	.string	"ppm_rel"
.LASF361:
	.string	"wifi_mgmr_sta_enable"
.LASF267:
	.string	"vTaskExitCritical"
.LASF287:
	.string	"printf"
.LASF155:
	.string	"wifi_conf"
.LASF68:
	.string	"MEMP_TCPIP_MSG_API"
.LASF351:
	.string	"wifi_interface"
.LASF191:
	.string	"pmk_len"
.LASF45:
	.string	"StaticStreamBuffer_t"
.LASF67:
	.string	"MEMP_NETCONN"
.LASF185:
	.string	"WIFI_MGMR_CONNECTION_STATUS_CONNECTED_IP_NO"
.LASF174:
	.string	"exitAction"
.LASF77:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF91:
	.string	"status_callback"
.LASF118:
	.string	"ACD_STATE_RATE_LIMIT"
.LASF179:
	.string	"os_messagequeue_t"
.LASF371:
	.string	"cb_scan_item_parse"
.LASF262:
	.string	"wifi_mgmr_api_enable_autoreconnect"
.LASF325:
	.string	"wifi_mgmr_ap_set_gateway"
.LASF218:
	.string	"wlan_ap"
.LASF334:
	.string	"interface"
.LASF274:
	.string	"wifi_mgmr_api_set_country_code"
.LASF170:
	.string	"entryState"
.LASF295:
	.string	"index"
.LASF358:
	.string	"wifi_mgmr_sta_mac_get"
.LASF286:
	.string	"xQueueGenericSend"
.LASF60:
	.string	"MEMP_RAW_PCB"
.LASF254:
	.string	"wifi_mgmr_ap_sta_delete_internal"
.LASF279:
	.string	"netif_set_default"
.LASF356:
	.string	"wifi_mgmr_sta_dns_get"
.LASF296:
	.string	"wifi_mgmr_scan_complete_callback"
.LASF10:
	.string	"long unsigned int"
.LASF201:
	.string	"timestamp_lastseen"
.LASF332:
	.string	"sta_cnt"
.LASF85:
	.string	"netif"
.LASF140:
	.string	"wifi_mgmr_sta_connect_ind_stat_info_t"
.LASF219:
	.string	"status"
.LASF374:
	.string	"param"
.LASF124:
	.string	"acd_conflict_callback_t"
.LASF96:
	.string	"hwaddr"
.LASF131:
	.string	"channel"
.LASF57:
	.string	"type_internal"
.LASF341:
	.string	"wifi_mgmr_ap_enable"
.LASF41:
	.string	"uxDummy1"
.LASF44:
	.string	"uxDummy4"
.LASF119:
	.string	"acd_state_enum_t"
.LASF37:
	.string	"uxDummy7"
.LASF248:
	.string	"wifi_mgmr_state_get_internal"
.LASF108:
	.string	"lastconflict"
.LASF55:
	.string	"payload"
.LASF151:
	.string	"scan_complete_cb_t"
.LASF81:
	.string	"netif_mac_filter_action"
.LASF326:
	.string	"gateway"
.LASF266:
	.string	"wifi_mgmr_api_ip_update"
.LASF220:
	.string	"profiles"
.LASF3:
	.string	"long long int"
.LASF132:
	.string	"auth"
.LASF307:
	.string	"counter"
.LASF78:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF216:
	.string	"inf_ap_enabled"
.LASF194:
	.string	"isActive"
.LASF128:
	.string	"ssid_tail"
.LASF51:
	.string	"ip4_addr_t"
.LASF377:
	.string	"mgmr"
.LASF285:
	.string	"memcpy"
.LASF252:
	.string	"bl_rx_pkt_cb_unregister"
.LASF355:
	.string	"wifi_mgmr_sta_ip_set"
.LASF276:
	.string	"utils_bin2hex"
.LASF87:
	.string	"netmask"
.LASF369:
	.string	"wifi_eth_ap_enable"
.LASF376:
	.string	"wifi_mgmr_scan_item_is_timeout"
.LASF203:
	.string	"mask"
.LASF136:
	.string	"status_code"
.LASF247:
	.string	"wifi_mgmr_status_code_get_internal"
.LASF300:
	.string	"wifi_mgmr_cfg_req"
.LASF204:
	.string	"dns1"
.LASF205:
	.string	"dns2"
.LASF24:
	.string	"TaskFunction_t"
.LASF159:
	.string	"event"
.LASF50:
	.string	"addr"
.LASF342:
	.string	"wifi_mgmr_sta_psk_set"
.LASF2:
	.string	"unsigned int"
.LASF365:
	.string	"wifi_mgmr_drv_init"
.LASF21:
	.string	"u16_t"
.LASF100:
	.string	"acd_list"
.LASF209:
	.string	"ipv4"
.LASF210:
	.string	"wifi_mgmr_connect_ind_stat_info"
.LASF253:
	.string	"bl_rx_pkt_cb_register"
.LASF188:
	.string	"wifi_mgmr_profile"
.LASF109:
	.string	"num_conflicts"
.LASF117:
	.string	"ACD_STATE_PASSIVE_ONGOING"
.LASF101:
	.string	"netif_input_fn"
.LASF357:
	.string	"wifi_mgmr_sta_ip_get"
.LASF362:
	.string	"done"
.LASF309:
	.string	"wifi_mgmr_raw_80211_send"
.LASF310:
	.string	"wifi_mgmr_channel_set"
.LASF167:
	.string	"nextState"
.LASF103:
	.string	"netif_linkoutput_fn"
.LASF190:
	.string	"psk_len"
.LASF318:
	.string	"max_sta_supported"
.LASF102:
	.string	"netif_output_fn"
.LASF283:
	.string	"bl_wifi_mac_addr_get"
.LASF56:
	.string	"tot_len"
.LASF227:
	.string	"pending_task"
.LASF378:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF52:
	.string	"ip_addr_t"
.LASF123:
	.string	"acd_callback_enum_t"
.LASF333:
	.string	"wifi_mgmr_ap_stop"
.LASF226:
	.string	"disable_autoreconnect"
.LASF4:
	.string	"long double"
.LASF186:
	.string	"WIFI_MGMR_CONNECTION_STATUS_DISCONNECTED"
.LASF107:
	.string	"sent_num"
.LASF82:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF249:
	.string	"wifi_mgmr_api_conf_max_sta"
.LASF23:
	.string	"err_t"
.LASF291:
	.string	"param1"
.LASF292:
	.string	"scan"
.LASF156:
	.string	"country_code"
.LASF111:
	.string	"ACD_STATE_OFF"
.LASF289:
	.string	"wifi_mgmr_set_country_code"
.LASF31:
	.string	"xSTATIC_LIST_ITEM"
.LASF59:
	.string	"if_idx"
.LASF335:
	.string	"wifi_mgmr_ap_start"
.LASF234:
	.string	"scan_data"
.LASF338:
	.string	"wifi_mgmr_ap_ip_get"
.LASF11:
	.string	"long long unsigned int"
.LASF61:
	.string	"MEMP_UDP_PCB"
.LASF305:
	.string	"wifi_mgmr_all_ap_scan"
.LASF64:
	.string	"MEMP_TCP_SEG"
.LASF17:
	.string	"uint16_t"
.LASF120:
	.string	"ACD_IP_OK"
.LASF273:
	.string	"wifi_mgmr_init"
.LASF69:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF363:
	.string	"wifi_mgmr_get_wifi_channel_conf"
.LASF175:
	.string	"stateMachine"
.LASF110:
	.string	"acd_conflict_callback"
.LASF26:
	.string	"UBaseType_t"
.LASF92:
	.string	"link_callback"
.LASF213:
	.string	"wifi_mgmr_sta_basic_info_t"
.LASF27:
	.string	"TickType_t"
.LASF259:
	.string	"wifi_mgmr_api_ap_start"
.LASF233:
	.string	"scan_cb"
.LASF79:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF329:
	.string	"sta_info"
.LASF72:
	.string	"MEMP_NETDB"
.LASF95:
	.string	"hostname"
.LASF251:
	.string	"wifi_mgmr_api_sniffer_enable"
.LASF256:
	.string	"memset"
.LASF240:
	.string	"xQueueSemaphoreTake"
.LASF137:
	.string	"type_ind"
.LASF364:
	.string	"wifi_chan_conf"
.LASF222:
	.string	"scan_items"
.LASF271:
	.string	"strncpy"
.LASF245:
	.string	"wifi_mgmr_api_raw_send"
.LASF270:
	.string	"wifi_mgmr_api_idle"
.LASF104:
	.string	"netif_status_callback_fn"
.LASF181:
	.string	"WIFI_MGMR_CONNECTION_STATUS"
.LASF75:
	.string	"MEMP_MAX"
.LASF214:
	.string	"wifi_mgmr"
.LASF143:
	.string	"is_used"
.LASF352:
	.string	"band"
.LASF22:
	.string	"u32_t"
.LASF236:
	.string	"wifi_mgmr_api_cfg_req"
.LASF298:
	.string	"wifi_mgmr_scan_filter_hidden_ssid"
.LASF359:
	.string	"wifi_mgmr_sta_mac_set"
.LASF340:
	.string	"wifi_mgmr_ap_mac_set"
.LASF324:
	.string	"wifi_mgmr_sniffer_register"
.LASF83:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF331:
	.string	"wifi_mgmr_ap_sta_cnt_get"
.LASF98:
	.string	"name"
.LASF268:
	.string	"vTaskEnterCritical"
.LASF184:
	.string	"WIFI_MGMR_CONNECTION_STATUS_CONNECTED_IP_YES"
.LASF73:
	.string	"MEMP_PBUF"
.LASF7:
	.string	"short int"
.LASF348:
	.string	"wifi_mgmr_sta_powersaving"
.LASF229:
	.string	"scan_item_timeout"
.LASF221:
	.string	"profile_active_index"
.LASF207:
	.string	"mode"
.LASF198:
	.string	"ppm_abs"
.LASF193:
	.string	"priority"
.LASF171:
	.string	"transitions"
.LASF208:
	.string	"vif_index"
.LASF343:
	.string	"wifi_mgmr_sta_ssid_set"
.LASF152:
	.string	"PS_MODE_OFF"
.LASF172:
	.string	"numTransitions"
.LASF293:
	.string	"item"
.LASF76:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF350:
	.string	"wifi_mgmr_sta_connect"
.LASF299:
	.string	"filter"
.LASF116:
	.string	"ACD_STATE_ONGOING"
.LASF284:
	.string	"strlen"
.LASF258:
	.string	"wifi_mgmr_api_ap_stop"
.LASF197:
	.string	"wifi_mgmr_scan_item"
.LASF330:
	.string	"sta_info_internal"
.LASF70:
	.string	"MEMP_IGMP_GROUP"
.LASF40:
	.string	"xSTATIC_STREAM_BUFFER"
.LASF281:
	.string	"bl606a0_wifi_netif_init"
.LASF178:
	.string	"errorState"
.LASF368:
	.string	"password"
.LASF163:
	.string	"eventType"
.LASF28:
	.string	"xDummy2"
.LASF34:
	.string	"xDummy3"
.LASF18:
	.string	"uint32_t"
.LASF153:
	.string	"PS_MODE_ON"
.LASF278:
	.string	"netif_set_up"
.LASF189:
	.string	"no_autoconnect"
.LASF328:
	.string	"wifi_mgmr_ap_sta_info_get"
.LASF290:
	.string	"wifi_mgmr_scan_ap_all"
.LASF162:
	.string	"transition"
.LASF370:
	.string	"wifi_eth_sta_enable"
.LASF353:
	.string	"freq"
.LASF8:
	.string	"short unsigned int"
.LASF20:
	.string	"s8_t"
.LASF141:
	.string	"wifi_sta_basic_info"
.LASF114:
	.string	"ACD_STATE_ANNOUNCE_WAIT"
.LASF282:
	.string	"netifapi_netif_add"
.LASF164:
	.string	"condition"
.LASF173:
	.string	"entryAction"
.LASF19:
	.string	"u8_t"
.LASF242:
	.string	"vPortFree"
.LASF372:
	.string	"ap_ary_ptr"
.LASF112:
	.string	"ACD_STATE_PROBE_WAIT"
.LASF30:
	.string	"StaticListItem_t"
.LASF94:
	.string	"client_data"
.LASF375:
	.string	"mac_is_unvalid"
.LASF260:
	.string	"bl_efuse_read_mac"
.LASF217:
	.string	"wlan_sta"
.LASF133:
	.string	"rssi"
.LASF158:
	.string	"wifi_conf_t"
.LASF182:
	.string	"WIFI_MGMR_CONNECTION_STATUS_IDLE"
.LASF150:
	.string	"scan_item_cb_t"
.LASF54:
	.string	"next"
.LASF176:
	.string	"currentState"
.LASF161:
	.string	"data"
.LASF261:
	.string	"wifi_mgmr_api_disable_autoreconnect"
.LASF63:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF121:
	.string	"ACD_RESTART_CLIENT"
.LASF183:
	.string	"WIFI_MGMR_CONNECTION_STATUS_CONNECTING"
.LASF277:
	.string	"bl60x_fw_password_hash"
.LASF129:
	.string	"ssid_len"
.LASF144:
	.string	"sta_mac"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_wifidrv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/wifi_mgmr_ext.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
