	.file	"wifi_mgmr_cli.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_wifidrv" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/wifi_mgmr_cli.c"
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
	.section	.rodata
	.align	2
.LC0:
	.string	"1.0 Mbit/s, 20Mhz"
	.align	2
.LC1:
	.string	"2.0 Mbit/s, 20Mhz"
	.align	2
.LC2:
	.string	"5.5 Mbit/s, 20Mhz"
	.align	2
.LC3:
	.string	"11.0 Mbit/s, 20Mhz"
	.align	2
.LC4:
	.string	"6.0 Mbit/s, 20Mhz"
	.align	2
.LC5:
	.string	"9.0 Mbit/s, 20Mhz"
	.align	2
.LC6:
	.string	"12.0 Mbit/s, 20Mhz"
	.align	2
.LC7:
	.string	"18.0 Mbit/s, 20Mhz"
	.align	2
.LC8:
	.string	"24.0 Mbit/s, 20Mhz"
	.align	2
.LC9:
	.string	"36.0 Mbit/s, 20Mhz"
	.align	2
.LC10:
	.string	"48.0 Mbit/s, 20Mhz"
	.align	2
.LC11:
	.string	"54.0 Mbit/s, 20Mhz"
	.section	.rodata.data_rate_list,"a"
	.align	2
	.type	data_rate_list, @object
	.size	data_rate_list, 96
data_rate_list:
	.byte	0
	.zero	3
	.word	.LC0
	.byte	1
	.zero	3
	.word	.LC1
	.byte	2
	.zero	3
	.word	.LC2
	.byte	3
	.zero	3
	.word	.LC3
	.byte	11
	.zero	3
	.word	.LC4
	.byte	15
	.zero	3
	.word	.LC5
	.byte	10
	.zero	3
	.word	.LC6
	.byte	14
	.zero	3
	.word	.LC7
	.byte	9
	.zero	3
	.word	.LC8
	.byte	13
	.zero	3
	.word	.LC9
	.byte	8
	.zero	3
	.word	.LC10
	.byte	12
	.zero	3
	.word	.LC11
	.section	.text.char_to_hex,"ax",@progbits
	.align	1
	.type	char_to_hex, @function
char_to_hex:
.LFB7:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/wifi_mgmr_cli.c"
	.loc 2 81 1
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
	.loc 2 84 7
	lbu	a4,-33(s0)
	li	a5,47
	bleu	a4,a5,.L4
	.loc 2 84 21 discriminator 1
	lbu	a4,-33(s0)
	li	a5,57
	bgtu	a4,a5,.L4
	.loc 2 85 12
	lbu	a5,-33(s0)
	addi	a5,a5,-48
	sb	a5,-17(s0)
	j	.L5
.L4:
	.loc 2 86 12
	lbu	a4,-33(s0)
	li	a5,96
	bleu	a4,a5,.L6
	.loc 2 86 26 discriminator 1
	lbu	a4,-33(s0)
	li	a5,102
	bgtu	a4,a5,.L6
	.loc 2 87 12
	lbu	a5,-33(s0)
	addi	a5,a5,-87
	sb	a5,-17(s0)
	j	.L5
.L6:
	.loc 2 88 12
	lbu	a4,-33(s0)
	li	a5,64
	bleu	a4,a5,.L7
	.loc 2 88 26 discriminator 1
	lbu	a4,-33(s0)
	li	a5,70
	bgtu	a4,a5,.L7
	.loc 2 89 12
	lbu	a5,-33(s0)
	addi	a5,a5,-55
	sb	a5,-17(s0)
	j	.L5
.L7:
	.loc 2 91 12
	sb	zero,-17(s0)
.L5:
	.loc 2 93 12
	lbu	a5,-17(s0)
	.loc 2 94 1
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
.LFE7:
	.size	char_to_hex, .-char_to_hex
	.section	.rodata
	.align	2
.LC12:
	.string	"sta_str: %s, str_len: %d, sta_num: %d, q: %s\r\n"
	.section	.text.chan_str_to_hex,"ax",@progbits
	.align	1
	.type	chan_str_to_hex, @function
chan_str_to_hex:
.LFB8:
	.loc 2 97 1
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
	.loc 2 98 21
	li	a5,1
	sw	a5,-24(s0)
	.loc 2 99 14
	sh	zero,-26(s0)
	.loc 2 102 15
	lw	a0,-56(s0)
	call	strlen
	mv	a5,a0
	.loc 2 102 13 discriminator 1
	sw	a5,-32(s0)
	.loc 2 103 7
	lw	a5,-56(s0)
	sw	a5,-36(s0)
	.loc 2 104 6
	lw	a5,-32(s0)
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 2 104 16
	sb	zero,0(a5)
	.loc 2 105 11
	sw	zero,-20(s0)
	.loc 2 105 5
	j	.L10
.L11:
	.loc 2 106 42
	lw	a5,-32(s0)
	addi	a4,a5,-1
	.loc 2 106 44
	lw	a5,-20(s0)
	sub	a5,a4,a5
	mv	a4,a5
	.loc 2 106 34
	lw	a5,-36(s0)
	add	a5,a5,a4
	.loc 2 106 21
	lbu	a5,0(a5)
	mv	a0,a5
	call	char_to_hex
	mv	a5,a0
	.loc 2 106 19 discriminator 1
	mv	a4,a5
	lw	a5,-24(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	mul	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 2 106 13 discriminator 1
	lhu	a4,-26(s0)
	add	a5,a5,a4
	sh	a5,-26(s0)
	.loc 2 107 14
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	sw	a5,-24(s0)
	.loc 2 105 28 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L10:
	.loc 2 105 16 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	blt	a4,a5,.L11
	.loc 2 109 16
	lhu	a5,-26(s0)
	andi	a4,a5,0xff
	lw	a5,-52(s0)
	sb	a4,0(a5)
	.loc 2 110 83
	lw	a5,-52(s0)
	lbu	a5,0(a5)
	.loc 2 110 5
	lw	a4,-36(s0)
	mv	a3,a5
	lw	a2,-32(s0)
	lw	a1,-56(s0)
	lui	a5,%hi(.LC12)
	addi	a0,a5,%lo(.LC12)
	call	printf
	.loc 2 112 1
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
.LFE8:
	.size	chan_str_to_hex, .-chan_str_to_hex
	.section	.rodata
	.align	2
.LC13:
	.string	"wifi AP is not enabled, state = %d\r\n"
	.align	2
.LC14:
	.string	"no sta connect current AP, sta_cnt = %d\r\n"
	.align	2
.LC15:
	.string	"sta list:\r\n"
	.align	2
.LC16:
	.string	"-----------------------------------------------------------------------------------\r\n"
	.align	2
.LC17:
	.string	"No.      StaIndex      Mac-Address       Signal      DateRate            TimeStamp\r\n"
	.align	2
.LC18:
	.string	" %u          %u        %02X:%02X:%02X:%02X:%02X:%02X    %d      %s      0x%llx\r\n"
	.section	.text.wifi_ap_sta_list_get_cmd,"ax",@progbits
	.align	1
	.type	wifi_ap_sta_list_get_cmd, @function
wifi_ap_sta_list_get_cmd:
.LFB9:
	.loc 2 115 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	sw	s2,116(sp)
	sw	s3,112(sp)
	sw	s4,108(sp)
	sw	s5,104(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	sw	a2,-92(s0)
	sw	a3,-96(s0)
	.loc 2 116 9
	sw	zero,-52(s0)
	.loc 2 117 13
	sb	zero,-53(s0)
	.loc 2 120 13
	sb	zero,-35(s0)
	.loc 2 122 5
	addi	a5,s0,-52
	mv	a0,a5
	call	wifi_mgmr_state_get
	.loc 2 123 19
	lw	a5,-52(s0)
	andi	a5,a5,16
	.loc 2 123 8
	bne	a5,zero,.L13
	.loc 2 124 9
	lw	a5,-52(s0)
	mv	a1,a5
	lui	a5,%hi(.LC13)
	addi	a0,a5,%lo(.LC13)
	call	printf
	.loc 2 125 9
	j	.L12
.L13:
	.loc 2 128 5
	addi	a5,s0,-53
	mv	a0,a5
	call	wifi_mgmr_ap_sta_cnt_get
	.loc 2 129 9
	lbu	a5,-53(s0)
	.loc 2 129 8
	bne	a5,zero,.L15
	.loc 2 130 9
	lbu	a5,-53(s0)
	mv	a1,a5
	lui	a5,%hi(.LC14)
	addi	a0,a5,%lo(.LC14)
	call	printf
	.loc 2 131 9
	j	.L12
.L15:
	.loc 2 134 5
	addi	a5,s0,-80
	li	a2,24
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 135 5
	lui	a5,%hi(.LC15)
	addi	a0,a5,%lo(.LC15)
	call	printf
	.loc 2 136 5
	lui	a5,%hi(.LC16)
	addi	a0,a5,%lo(.LC16)
	call	printf
	.loc 2 137 5
	lui	a5,%hi(.LC17)
	addi	a0,a5,%lo(.LC17)
	call	printf
	.loc 2 138 5
	lui	a5,%hi(.LC16)
	addi	a0,a5,%lo(.LC16)
	call	printf
	.loc 2 139 11
	sb	zero,-33(s0)
	.loc 2 139 5
	j	.L16
.L24:
	.loc 2 140 9
	lbu	a4,-33(s0)
	addi	a5,s0,-80
	mv	a1,a4
	mv	a0,a5
	call	wifi_mgmr_ap_sta_info_get
	.loc 2 141 22
	lbu	a5,-79(s0)
	.loc 2 141 12
	beq	a5,zero,.L26
	.loc 2 141 43 discriminator 2
	lbu	a4,-80(s0)
	.loc 2 141 31 discriminator 2
	li	a5,239
	beq	a4,a5,.L26
	.loc 2 145 39
	lw	a5,-72(s0)
	.loc 2 145 18
	sw	a5,-48(s0)
	sw	zero,-44(s0)
	.loc 2 146 30
	lw	a5,-48(s0)
	slli	s3,a5,0
	li	s2,0
	.loc 2 146 47
	lw	a5,-68(s0)
	mv	s4,a5
	li	s5,0
	.loc 2 146 18
	or	a5,s2,s4
	sw	a5,-48(s0)
	or	a5,s3,s5
	sw	a5,-44(s0)
	.loc 2 148 15
	sb	zero,-34(s0)
	.loc 2 148 9
	j	.L20
.L23:
	.loc 2 149 33
	lbu	a5,-34(s0)
	lui	a4,%hi(data_rate_list)
	addi	a4,a4,%lo(data_rate_list)
	slli	a5,a5,3
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 2 149 55
	lbu	a5,-60(s0)
	.loc 2 149 15
	bne	a4,a5,.L21
	.loc 2 150 23
	lbu	a5,-34(s0)
	sb	a5,-35(s0)
	.loc 2 151 17
	j	.L22
.L21:
	.loc 2 148 73 discriminator 2
	lbu	a5,-34(s0)
	addi	a5,a5,1
	sb	a5,-34(s0)
.L20:
	.loc 2 148 21 discriminator 1
	lbu	a4,-34(s0)
	li	a5,11
	bleu	a4,a5,.L23
.L22:
	.loc 2 155 9
	lbu	a1,-33(s0)
	.loc 2 163 21
	lbu	a5,-80(s0)
	.loc 2 155 9
	mv	t1,a5
	.loc 2 164 29
	lbu	a5,-78(s0)
	.loc 2 155 9
	mv	t3,a5
	.loc 2 165 29
	lbu	a5,-77(s0)
	.loc 2 155 9
	mv	t4,a5
	.loc 2 166 29
	lbu	a5,-76(s0)
	.loc 2 155 9
	mv	t5,a5
	.loc 2 167 29
	lbu	a5,-75(s0)
	.loc 2 155 9
	mv	a6,a5
	.loc 2 168 29
	lbu	a5,-74(s0)
	.loc 2 155 9
	mv	a7,a5
	.loc 2 169 29
	lbu	a5,-73(s0)
	.loc 2 155 9
	mv	a0,a5
	lw	a3,-64(s0)
	lbu	a5,-35(s0)
	.loc 2 171 34
	lui	a4,%hi(data_rate_list)
	addi	a4,a4,%lo(data_rate_list)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a2,4(a5)
	.loc 2 155 9
	lw	a4,-48(s0)
	lw	a5,-44(s0)
	sw	a4,16(sp)
	sw	a5,20(sp)
	sw	a2,8(sp)
	sw	a3,4(sp)
	sw	a0,0(sp)
	mv	a5,t5
	mv	a4,t4
	mv	a3,t3
	mv	a2,t1
	lui	a0,%hi(.LC18)
	addi	a0,a0,%lo(.LC18)
	call	printf
	j	.L19
.L26:
	.loc 2 142 13
	nop
.L19:
	.loc 2 139 28 discriminator 2
	lbu	a5,-33(s0)
	addi	a5,a5,1
	sb	a5,-33(s0)
.L16:
	.loc 2 139 17 discriminator 1
	lbu	a5,-53(s0)
	lbu	a4,-33(s0)
	bltu	a4,a5,.L24
.L12:
	.loc 2 175 1
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	lw	s2,116(sp)
	.cfi_restore 18
	lw	s3,112(sp)
	.cfi_restore 19
	lw	s4,108(sp)
	.cfi_restore 20
	lw	s5,104(sp)
	.cfi_restore 21
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	wifi_ap_sta_list_get_cmd, .-wifi_ap_sta_list_get_cmd
	.section	.rodata
	.align	2
.LC19:
	.string	"[USAGE]: %s sta_num\r\n"
	.align	2
.LC20:
	.string	"Delete Sta No.%s \r\n"
	.align	2
.LC21:
	.string	"sta num = %d \r\n"
	.align	2
.LC22:
	.string	"no valid sta in list or sta idx(%d) is invalid\r\n"
	.align	2
.LC23:
	.string	"No.%d sta is invalid\r\n"
	.align	2
.LC24:
	.string	"sta info: No.%u,sta_idx = %u,mac = %02X:%02X:%02X:%02X:%02X:%02X,rssi = %d\r\n"
	.section	.text.wifi_ap_sta_delete_cmd,"ax",@progbits
	.align	1
	.type	wifi_ap_sta_delete_cmd, @function
wifi_ap_sta_delete_cmd:
.LFB10:
	.loc 2 178 1
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
	.loc 2 179 9
	sw	zero,-20(s0)
	.loc 2 180 13
	sb	zero,-21(s0)
	.loc 2 182 13
	sb	zero,-49(s0)
	.loc 2 184 8
	lw	a4,-76(s0)
	li	a5,2
	beq	a4,a5,.L28
	.loc 2 185 9
	lw	a5,-80(s0)
	lw	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC19)
	addi	a0,a5,%lo(.LC19)
	call	printf
	.loc 2 186 9
	j	.L27
.L28:
	.loc 2 189 5
	addi	a5,s0,-20
	mv	a0,a5
	call	wifi_mgmr_state_get
	.loc 2 190 19
	lw	a5,-20(s0)
	andi	a5,a5,16
	.loc 2 190 8
	bne	a5,zero,.L30
	.loc 2 191 9
	lw	a5,-20(s0)
	mv	a1,a5
	lui	a5,%hi(.LC13)
	addi	a0,a5,%lo(.LC13)
	call	printf
	.loc 2 192 9
	j	.L27
.L30:
	.loc 2 195 41
	lw	a5,-80(s0)
	addi	a5,a5,4
	.loc 2 195 5
	lw	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC20)
	addi	a0,a5,%lo(.LC20)
	call	printf
	.loc 2 196 35
	lw	a5,-80(s0)
	addi	a5,a5,4
	.loc 2 196 5
	lw	a4,0(a5)
	addi	a5,s0,-49
	mv	a1,a4
	mv	a0,a5
	call	chan_str_to_hex
	.loc 2 197 5
	lbu	a5,-49(s0)
	mv	a1,a5
	lui	a5,%hi(.LC21)
	addi	a0,a5,%lo(.LC21)
	call	printf
	.loc 2 199 5
	addi	a5,s0,-21
	mv	a0,a5
	call	wifi_mgmr_ap_sta_cnt_get
	.loc 2 200 9
	lbu	a5,-21(s0)
	.loc 2 200 8
	beq	a5,zero,.L31
	.loc 2 200 30 discriminator 1
	lbu	a4,-49(s0)
	lbu	a5,-21(s0)
	.loc 2 200 18 discriminator 1
	bleu	a4,a5,.L32
.L31:
	.loc 2 201 9
	lbu	a5,-21(s0)
	mv	a1,a5
	lui	a5,%hi(.LC22)
	addi	a0,a5,%lo(.LC22)
	call	printf
	.loc 2 202 9
	j	.L27
.L32:
	.loc 2 205 5
	addi	a5,s0,-48
	li	a2,24
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 206 5
	lbu	a4,-49(s0)
	addi	a5,s0,-48
	mv	a1,a4
	mv	a0,a5
	call	wifi_mgmr_ap_sta_info_get
	.loc 2 207 18
	lbu	a5,-47(s0)
	.loc 2 207 8
	beq	a5,zero,.L33
	.loc 2 207 39 discriminator 1
	lbu	a4,-48(s0)
	.loc 2 207 27 discriminator 1
	li	a5,239
	bne	a4,a5,.L34
.L33:
	.loc 2 208 9
	lbu	a5,-49(s0)
	mv	a1,a5
	lui	a5,%hi(.LC23)
	addi	a0,a5,%lo(.LC23)
	call	printf
	.loc 2 209 9
	j	.L27
.L34:
	.loc 2 212 5
	lbu	a5,-49(s0)
	mv	a1,a5
	.loc 2 218 17
	lbu	a5,-48(s0)
	.loc 2 212 5
	mv	a2,a5
	.loc 2 219 25
	lbu	a5,-46(s0)
	.loc 2 212 5
	mv	a3,a5
	.loc 2 220 25
	lbu	a5,-45(s0)
	.loc 2 212 5
	mv	a0,a5
	.loc 2 221 25
	lbu	a5,-44(s0)
	.loc 2 212 5
	mv	t1,a5
	.loc 2 222 25
	lbu	a5,-43(s0)
	.loc 2 212 5
	mv	a6,a5
	.loc 2 223 25
	lbu	a5,-42(s0)
	.loc 2 212 5
	mv	a7,a5
	.loc 2 224 25
	lbu	a5,-41(s0)
	.loc 2 212 5
	mv	a4,a5
	lw	a5,-32(s0)
	sw	a5,4(sp)
	sw	a4,0(sp)
	mv	a5,t1
	mv	a4,a0
	lui	a0,%hi(.LC24)
	addi	a0,a0,%lo(.LC24)
	call	printf
	.loc 2 227 5
	lbu	a5,-48(s0)
	mv	a0,a5
	call	wifi_mgmr_ap_sta_delete
.L27:
	.loc 2 228 1
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	wifi_ap_sta_delete_cmd, .-wifi_ap_sta_delete_cmd
	.section	.rodata
	.align	2
.LC25:
	.string	"EDCA Statistic:\r\n"
	.align	2
.LC26:
	.string	"  AC_BK:"
	.align	2
.LC27:
	.string	"aifs %3u, cwmin %3u, cwmax %3u, txop %4u\r\n"
	.align	2
.LC28:
	.string	"  AC_BE:"
	.align	2
.LC29:
	.string	"  AC_VI:"
	.align	2
.LC30:
	.string	"  AC_VO:"
	.section	.text.wifi_edca_dump_cmd,"ax",@progbits
	.align	1
	.type	wifi_edca_dump_cmd, @function
wifi_edca_dump_cmd:
.LFB11:
	.loc 2 231 1
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
	sw	a3,-48(s0)
	.loc 2 232 13
	sb	zero,-17(s0)
	.loc 2 232 23
	sb	zero,-18(s0)
	.loc 2 232 34
	sb	zero,-19(s0)
	.loc 2 233 14
	sh	zero,-22(s0)
	.loc 2 235 5
	lui	a5,%hi(.LC25)
	addi	a0,a5,%lo(.LC25)
	call	puts
	.loc 2 237 5
	addi	a4,s0,-22
	addi	a3,s0,-19
	addi	a2,s0,-18
	addi	a5,s0,-17
	mv	a1,a5
	li	a0,0
	call	bl60x_edca_get
	.loc 2 238 5
	lui	a5,%hi(.LC26)
	addi	a0,a5,%lo(.LC26)
	call	puts
	.loc 2 239 5
	lbu	a5,-17(s0)
	mv	a1,a5
	lbu	a5,-18(s0)
	mv	a2,a5
	lbu	a5,-19(s0)
	mv	a3,a5
	lhu	a5,-22(s0)
	mv	a4,a5
	lui	a5,%hi(.LC27)
	addi	a0,a5,%lo(.LC27)
	call	printf
	.loc 2 243 5
	addi	a4,s0,-22
	addi	a3,s0,-19
	addi	a2,s0,-18
	addi	a5,s0,-17
	mv	a1,a5
	li	a0,1
	call	bl60x_edca_get
	.loc 2 244 5
	lui	a5,%hi(.LC28)
	addi	a0,a5,%lo(.LC28)
	call	puts
	.loc 2 245 5
	lbu	a5,-17(s0)
	mv	a1,a5
	lbu	a5,-18(s0)
	mv	a2,a5
	lbu	a5,-19(s0)
	mv	a3,a5
	lhu	a5,-22(s0)
	mv	a4,a5
	lui	a5,%hi(.LC27)
	addi	a0,a5,%lo(.LC27)
	call	printf
	.loc 2 249 5
	addi	a4,s0,-22
	addi	a3,s0,-19
	addi	a2,s0,-18
	addi	a5,s0,-17
	mv	a1,a5
	li	a0,2
	call	bl60x_edca_get
	.loc 2 250 5
	lui	a5,%hi(.LC29)
	addi	a0,a5,%lo(.LC29)
	call	puts
	.loc 2 251 5
	lbu	a5,-17(s0)
	mv	a1,a5
	lbu	a5,-18(s0)
	mv	a2,a5
	lbu	a5,-19(s0)
	mv	a3,a5
	lhu	a5,-22(s0)
	mv	a4,a5
	lui	a5,%hi(.LC27)
	addi	a0,a5,%lo(.LC27)
	call	printf
	.loc 2 255 5
	addi	a4,s0,-22
	addi	a3,s0,-19
	addi	a2,s0,-18
	addi	a5,s0,-17
	mv	a1,a5
	li	a0,3
	call	bl60x_edca_get
	.loc 2 256 5
	lui	a5,%hi(.LC30)
	addi	a0,a5,%lo(.LC30)
	call	puts
	.loc 2 257 5
	lbu	a5,-17(s0)
	mv	a1,a5
	lbu	a5,-18(s0)
	mv	a2,a5
	lbu	a5,-19(s0)
	mv	a3,a5
	lhu	a5,-22(s0)
	mv	a4,a5
	lui	a5,%hi(.LC27)
	addi	a0,a5,%lo(.LC27)
	call	printf
	.loc 2 260 1
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
	.size	wifi_edca_dump_cmd, .-wifi_edca_dump_cmd
	.section	.text.wifi_mgmr_cli_powersaving_on,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_cli_powersaving_on
	.type	wifi_mgmr_cli_powersaving_on, @function
wifi_mgmr_cli_powersaving_on:
.LFB12:
	.loc 2 263 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 264 5
	li	a0,2
	call	wifi_mgmr_api_fw_powersaving
	.loc 2 265 12
	li	a5,0
	.loc 2 266 1
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
.LFE12:
	.size	wifi_mgmr_cli_powersaving_on, .-wifi_mgmr_cli_powersaving_on
	.section	.rodata
	.align	2
.LC31:
	.string	"cached scan list\r\n"
	.align	2
.LC32:
	.string	"****************************************************************************************************\r\n"
	.align	2
.LC33:
	.string	"index[%02d]: channel %02u, bssid %02X:%02X:%02X:%02X:%02X:%02X, rssi %3d, ppm abs:rel %3d : %3d, auth %20s, cipher:%12s, SSID %s\r\n"
	.align	2
.LC34:
	.string	"index[%02d]: empty\r\n"
	.align	2
.LC35:
	.string	"----------------------------------------------------------------------------------------------------\r\n"
	.section	.text.wifi_mgmr_cli_scanlist,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_cli_scanlist
	.type	wifi_mgmr_cli_scanlist, @function
wifi_mgmr_cli_scanlist:
.LFB13:
	.loc 2 269 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s1,100(sp)
	sw	s2,96(sp)
	sw	s3,92(sp)
	sw	s4,88(sp)
	sw	s5,84(sp)
	sw	s6,80(sp)
	sw	s7,76(sp)
	sw	s8,72(sp)
	sw	s9,68(sp)
	sw	s10,64(sp)
	sw	s11,60(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	.loc 2 272 5
	lui	a5,%hi(.LC31)
	addi	a0,a5,%lo(.LC31)
	call	printf
	.loc 2 273 5
	lui	a5,%hi(.LC32)
	addi	a0,a5,%lo(.LC32)
	call	printf
	.loc 2 274 12
	sw	zero,-68(s0)
	.loc 2 274 5
	j	.L40
.L43:
	.loc 2 275 35
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-68(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a5,704(a5)
	.loc 2 275 12
	beq	a5,zero,.L41
	.loc 2 275 49 discriminator 1
	lw	a4,-68(s0)
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
	.loc 2 275 44 discriminator 2
	bne	a5,zero,.L41
	.loc 2 278 43
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-68(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a5,698(a5)
	.loc 2 276 13
	mv	s6,a5
	.loc 2 279 49
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-68(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a5,692(a5)
	.loc 2 276 13
	mv	s7,a5
	.loc 2 280 49
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-68(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a5,693(a5)
	.loc 2 276 13
	mv	s8,a5
	.loc 2 281 49
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-68(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a5,694(a5)
	.loc 2 276 13
	mv	s9,a5
	.loc 2 282 49
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-68(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a5,695(a5)
	.loc 2 276 13
	mv	s10,a5
	.loc 2 283 49
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-68(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a5,696(a5)
	.loc 2 276 13
	mv	s11,a5
	.loc 2 284 49
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-68(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a5,697(a5)
	.loc 2 276 13
	mv	s2,a5
	.loc 2 285 43
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-68(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lb	a5,699(a5)
	.loc 2 276 13
	mv	s3,a5
	.loc 2 286 43
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-68(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lb	a5,700(a5)
	.loc 2 276 13
	mv	s4,a5
	.loc 2 287 43
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-68(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lb	a5,701(a5)
	.loc 2 276 13
	mv	s5,a5
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-68(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a5,702(a5)
	mv	a0,a5
	call	wifi_mgmr_auth_to_str
	mv	s1,a0
	.loc 2 276 13 is_stmt 0 discriminator 1
	lui	a5,%hi(wifiMgmr)
	addi	a3,a5,%lo(wifiMgmr)
	lw	a4,-68(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a5,703(a5)
	mv	a0,a5
	call	wifi_mgmr_cipher_to_str
	mv	a3,a0
	.loc 2 290 43 is_stmt 1
	lw	a4,-68(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,2
	addi	a4,a5,640
	lui	a5,%hi(wifiMgmr)
	addi	a5,a5,%lo(wifiMgmr)
	add	a5,a4,a5
	addi	a5,a5,12
	.loc 2 276 13
	sw	a5,24(sp)
	sw	a3,20(sp)
	sw	s1,16(sp)
	sw	s5,12(sp)
	sw	s4,8(sp)
	sw	s3,4(sp)
	sw	s2,0(sp)
	mv	a7,s11
	mv	a6,s10
	mv	a5,s9
	mv	a4,s8
	mv	a3,s7
	mv	a2,s6
	lw	a1,-68(s0)
	lui	a0,%hi(.LC33)
	addi	a0,a0,%lo(.LC33)
	call	printf
	j	.L42
.L41:
	.loc 2 293 13
	lw	a1,-68(s0)
	lui	a5,%hi(.LC34)
	addi	a0,a5,%lo(.LC34)
	call	printf
.L42:
	.loc 2 274 82 discriminator 2
	lw	a5,-68(s0)
	addi	a5,a5,1
	sw	a5,-68(s0)
.L40:
	.loc 2 274 19 discriminator 1
	lw	a4,-68(s0)
	li	a5,49
	bleu	a4,a5,.L43
	.loc 2 296 5
	lui	a5,%hi(.LC35)
	addi	a0,a5,%lo(.LC35)
	call	printf
	.loc 2 297 12
	li	a5,0
	.loc 2 298 1
	mv	a0,a5
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	lw	s1,100(sp)
	.cfi_restore 9
	lw	s2,96(sp)
	.cfi_restore 18
	lw	s3,92(sp)
	.cfi_restore 19
	lw	s4,88(sp)
	.cfi_restore 20
	lw	s5,84(sp)
	.cfi_restore 21
	lw	s6,80(sp)
	.cfi_restore 22
	lw	s7,76(sp)
	.cfi_restore 23
	lw	s8,72(sp)
	.cfi_restore 24
	lw	s9,68(sp)
	.cfi_restore 25
	lw	s10,64(sp)
	.cfi_restore 26
	lw	s11,60(sp)
	.cfi_restore 27
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	wifi_mgmr_cli_scanlist, .-wifi_mgmr_cli_scanlist
	.section	.text.cmd_rf_dump,"ax",@progbits
	.align	1
	.type	cmd_rf_dump, @function
cmd_rf_dump:
.LFB14:
	.loc 2 301 1
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
	.loc 2 303 1
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
.LFE14:
	.size	cmd_rf_dump, .-cmd_rf_dump
	.section	.rodata
	.align	2
.LC36:
	.string	"Usage: %s capcode\r\n"
	.align	2
.LC37:
	.string	"Capcode %u is being used\r\n"
	.align	2
.LC38:
	.string	"Setting capcode to %d\r\n"
	.section	.text.wifi_capcode_cmd,"ax",@progbits
	.align	1
	.type	wifi_capcode_cmd, @function
wifi_capcode_cmd:
.LFB15:
	.loc 2 306 1
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
	sw	a3,-48(s0)
	.loc 2 307 9
	sw	zero,-20(s0)
	.loc 2 309 8
	lw	a4,-44(s0)
	li	a5,2
	beq	a4,a5,.L47
	.loc 2 309 19 discriminator 1
	lw	a4,-44(s0)
	li	a5,1
	beq	a4,a5,.L47
	.loc 2 310 9
	lw	a5,-48(s0)
	lw	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC36)
	addi	a0,a5,%lo(.LC36)
	call	printf
	.loc 2 311 9
	j	.L46
.L47:
	.loc 2 315 8
	lw	a4,-44(s0)
	li	a5,1
	bne	a4,a5,.L49
	.loc 2 316 48
	call	hal_sys_capcode_get
	mv	a5,a0
	.loc 2 316 9 discriminator 1
	mv	a1,a5
	lui	a5,%hi(.LC37)
	addi	a0,a5,%lo(.LC37)
	call	printf
	.loc 2 317 9
	j	.L46
.L49:
	.loc 2 321 24
	lw	a5,-48(s0)
	addi	a5,a5,4
	.loc 2 321 15
	lw	a5,0(a5)
	mv	a0,a5
	call	atoi
	sw	a0,-20(s0)
	.loc 2 322 5
	lw	a1,-20(s0)
	lui	a5,%hi(.LC38)
	addi	a0,a5,%lo(.LC38)
	call	printf
	.loc 2 324 8
	lw	a5,-20(s0)
	ble	a5,zero,.L46
	.loc 2 325 9
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	lw	a4,-20(s0)
	andi	a4,a4,0xff
	mv	a1,a4
	mv	a0,a5
	call	hal_sys_capcode_update
.L46:
	.loc 2 327 1
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
	.size	wifi_capcode_cmd, .-wifi_capcode_cmd
	.section	.text.wifi_scan_cmd,"ax",@progbits
	.align	1
	.type	wifi_scan_cmd, @function
wifi_scan_cmd:
.LFB16:
	.loc 2 330 1
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
	.loc 2 331 5
	li	a1,0
	li	a0,0
	call	wifi_mgmr_scan
	.loc 2 332 1
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
.LFE16:
	.size	wifi_scan_cmd, .-wifi_scan_cmd
	.section	.text.wifi_scan_filter_cmd,"ax",@progbits
	.align	1
	.type	wifi_scan_filter_cmd, @function
wifi_scan_filter_cmd:
.LFB17:
	.loc 2 335 1
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
	sw	a3,-48(s0)
	.loc 2 336 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 2 338 8
	lw	a4,-44(s0)
	li	a5,2
	bne	a4,a5,.L54
	.loc 2 342 18
	lw	a5,-48(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	.loc 2 342 21
	lbu	a5,0(a5)
	.loc 2 342 36
	addi	a5,a5,-49
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 2 342 12
	sw	a5,-20(s0)
	.loc 2 344 5
	lw	a0,-20(s0)
	call	wifi_mgmr_scan_filter_hidden_ssid
	j	.L51
.L54:
	.loc 2 339 9
	nop
.L51:
	.loc 2 345 1
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
	.size	wifi_scan_filter_cmd, .-wifi_scan_filter_cmd
	.section	.rodata
	.align	2
.LC39:
	.string	"RSSI:   %ddbm\r\n"
	.align	2
.LC40:
	.string	"IP  :   %s \r\n"
	.align	2
.LC41:
	.string	"MASK:   %s \r\n"
	.align	2
.LC42:
	.string	"GW  :   %s \r\n"
	.align	2
.LC43:
	.string	"DNS1:   %s \r\n"
	.align	2
.LC44:
	.string	"DNS2:   %s \r\n"
	.align	2
.LC45:
	.string	"Power Table (dbm):\r\n"
	.align	2
.LC46:
	.string	"--------------------------------\r\n"
	.align	2
.LC47:
	.string	"  11b: %u %u %u %u             (1Mbps 2Mbps 5.5Mbps 11Mbps)\r\n"
	.align	2
.LC48:
	.string	"  11g: %u %u %u %u %u %u %u %u (6Mbps 9Mbps 12Mbps 18Mbps 24Mbps 36Mbps 48Mbps 54Mbps)\r\n"
	.align	2
.LC49:
	.string	"  11n: %u %u %u %u %u %u %u %u (MCS0 ~ MCS7)\r\n"
	.section	.text.wifi_sta_ip_info,"ax",@progbits
	.align	1
	.type	wifi_sta_ip_info, @function
wifi_sta_ip_info:
.LFB18:
	.loc 2 348 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	sw	a2,-92(s0)
	sw	a3,-96(s0)
	.loc 2 354 5
	addi	a3,s0,-28
	addi	a4,s0,-24
	addi	a5,s0,-20
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	wifi_mgmr_sta_ip_get
	.loc 2 355 5
	addi	a4,s0,-36
	addi	a5,s0,-32
	mv	a1,a4
	mv	a0,a5
	call	wifi_mgmr_sta_dns_get
	.loc 2 356 5
	addi	a5,s0,-40
	mv	a0,a5
	call	wifi_mgmr_rssi_get
	.loc 2 357 5
	addi	a5,s0,-80
	mv	a0,a5
	call	bl_tpc_power_table_get
	.loc 2 358 5
	lw	a5,-40(s0)
	mv	a1,a5
	lui	a5,%hi(.LC39)
	addi	a0,a5,%lo(.LC39)
	call	printf
	.loc 2 359 5
	addi	a5,s0,-20
	mv	a0,a5
	call	ip4addr_ntoa
	mv	a5,a0
	.loc 2 359 5 is_stmt 0 discriminator 1
	mv	a1,a5
	lui	a5,%hi(.LC40)
	addi	a0,a5,%lo(.LC40)
	call	printf
	.loc 2 360 5 is_stmt 1
	addi	a5,s0,-28
	mv	a0,a5
	call	ip4addr_ntoa
	mv	a5,a0
	.loc 2 360 5 is_stmt 0 discriminator 1
	mv	a1,a5
	lui	a5,%hi(.LC41)
	addi	a0,a5,%lo(.LC41)
	call	printf
	.loc 2 361 5 is_stmt 1
	addi	a5,s0,-24
	mv	a0,a5
	call	ip4addr_ntoa
	mv	a5,a0
	.loc 2 361 5 is_stmt 0 discriminator 1
	mv	a1,a5
	lui	a5,%hi(.LC42)
	addi	a0,a5,%lo(.LC42)
	call	printf
	.loc 2 362 5 is_stmt 1
	addi	a5,s0,-32
	mv	a0,a5
	call	ip4addr_ntoa
	mv	a5,a0
	.loc 2 362 5 is_stmt 0 discriminator 1
	mv	a1,a5
	lui	a5,%hi(.LC43)
	addi	a0,a5,%lo(.LC43)
	call	printf
	.loc 2 363 5 is_stmt 1
	addi	a5,s0,-36
	mv	a0,a5
	call	ip4addr_ntoa
	mv	a5,a0
	.loc 2 363 5 is_stmt 0 discriminator 1
	mv	a1,a5
	lui	a5,%hi(.LC44)
	addi	a0,a5,%lo(.LC44)
	call	printf
	.loc 2 364 5 is_stmt 1
	lui	a5,%hi(.LC45)
	addi	a0,a5,%lo(.LC45)
	call	puts
	.loc 2 365 5
	lui	a5,%hi(.LC46)
	addi	a0,a5,%lo(.LC46)
	call	puts
	.loc 2 367 25
	lb	a5,-80(s0)
	.loc 2 366 5
	mv	a1,a5
	.loc 2 368 25
	lb	a5,-79(s0)
	.loc 2 366 5
	mv	a2,a5
	.loc 2 369 25
	lb	a5,-78(s0)
	.loc 2 366 5
	mv	a3,a5
	.loc 2 370 25
	lb	a5,-77(s0)
	.loc 2 366 5
	mv	a4,a5
	lui	a5,%hi(.LC47)
	addi	a0,a5,%lo(.LC47)
	call	printf
	.loc 2 373 25
	lb	a5,-72(s0)
	.loc 2 372 5
	mv	a1,a5
	.loc 2 374 25
	lb	a5,-71(s0)
	.loc 2 372 5
	mv	a2,a5
	.loc 2 375 25
	lb	a5,-70(s0)
	.loc 2 372 5
	mv	a3,a5
	.loc 2 376 25
	lb	a5,-69(s0)
	.loc 2 372 5
	mv	a4,a5
	.loc 2 377 25
	lb	a5,-68(s0)
	.loc 2 372 5
	mv	a0,a5
	.loc 2 378 25
	lb	a5,-67(s0)
	.loc 2 372 5
	mv	a6,a5
	.loc 2 379 25
	lb	a5,-66(s0)
	.loc 2 372 5
	mv	a7,a5
	.loc 2 380 25
	lb	a5,-65(s0)
	.loc 2 372 5
	sw	a5,0(sp)
	mv	a5,a0
	lui	a0,%hi(.LC48)
	addi	a0,a0,%lo(.LC48)
	call	printf
	.loc 2 383 25
	lb	a5,-64(s0)
	.loc 2 382 5
	mv	a1,a5
	.loc 2 384 25
	lb	a5,-63(s0)
	.loc 2 382 5
	mv	a2,a5
	.loc 2 385 25
	lb	a5,-62(s0)
	.loc 2 382 5
	mv	a3,a5
	.loc 2 386 25
	lb	a5,-61(s0)
	.loc 2 382 5
	mv	a4,a5
	.loc 2 387 25
	lb	a5,-60(s0)
	.loc 2 382 5
	mv	a0,a5
	.loc 2 388 25
	lb	a5,-59(s0)
	.loc 2 382 5
	mv	a6,a5
	.loc 2 389 25
	lb	a5,-58(s0)
	.loc 2 382 5
	mv	a7,a5
	.loc 2 390 25
	lb	a5,-57(s0)
	.loc 2 382 5
	sw	a5,0(sp)
	mv	a5,a0
	lui	a0,%hi(.LC49)
	addi	a0,a0,%lo(.LC49)
	call	printf
	.loc 2 392 5
	lui	a5,%hi(.LC46)
	addi	a0,a5,%lo(.LC46)
	call	puts
	.loc 2 393 1
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
.LFE18:
	.size	wifi_sta_ip_info, .-wifi_sta_ip_info
	.section	.data.packet_raw,"aw"
	.align	2
	.type	packet_raw, @object
	.size	packet_raw, 24
packet_raw:
	.base64	"SAIAAP///////zMzMzMzM////////wAA"
	.section	.rodata
	.align	2
.LC50:
	.string	"Raw send failed\r\n"
	.align	2
.LC51:
	.string	"Raw send succeed\r\n"
	.section	.text.cmd_wifi_raw_send,"ax",@progbits
	.align	1
	.type	cmd_wifi_raw_send, @function
cmd_wifi_raw_send:
.LFB19:
	.loc 2 405 1
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
	.loc 2 408 48
	lui	a5,%hi(seq.4)
	lw	a5,%lo(seq.4)(a5)
	andi	a5,a5,0xff
	slli	a5,a5,4
	andi	a4,a5,0xff
	.loc 2 408 40
	lui	a5,%hi(packet_raw)
	addi	a5,a5,%lo(packet_raw)
	sb	a4,22(a5)
	.loc 2 409 49
	lui	a5,%hi(seq.4)
	lw	a5,%lo(seq.4)(a5)
	slli	a5,a5,4
	.loc 2 409 65
	srli	a5,a5,8
	.loc 2 409 40
	andi	a4,a5,0xff
	lui	a5,%hi(packet_raw)
	addi	a5,a5,%lo(packet_raw)
	sb	a4,23(a5)
	.loc 2 410 8
	lui	a5,%hi(seq.4)
	lw	a5,%lo(seq.4)(a5)
	addi	a4,a5,1
	lui	a5,%hi(seq.4)
	sw	a4,%lo(seq.4)(a5)
	.loc 2 412 9
	li	a1,24
	lui	a5,%hi(packet_raw)
	addi	a0,a5,%lo(packet_raw)
	call	wifi_mgmr_raw_80211_send
	mv	a5,a0
	.loc 2 412 8 discriminator 1
	beq	a5,zero,.L57
	.loc 2 413 9
	lui	a5,%hi(.LC50)
	addi	a0,a5,%lo(.LC50)
	call	puts
	.loc 2 417 1
	j	.L59
.L57:
	.loc 2 415 9
	lui	a5,%hi(.LC51)
	addi	a0,a5,%lo(.LC51)
	call	puts
.L59:
	.loc 2 417 1
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
.LFE19:
	.size	cmd_wifi_raw_send, .-cmd_wifi_raw_send
	.section	.text.wifi_disconnect_cmd,"ax",@progbits
	.align	1
	.type	wifi_disconnect_cmd, @function
wifi_disconnect_cmd:
.LFB20:
	.loc 2 420 1
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
	.loc 2 421 5
	call	wifi_mgmr_sta_disconnect
	.loc 2 423 5
	li	a0,1000
	call	vTaskDelay
	.loc 2 424 5
	li	a0,0
	call	wifi_mgmr_sta_disable
	.loc 2 425 1
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
	.size	wifi_disconnect_cmd, .-wifi_disconnect_cmd
	.section	.rodata
	.align	2
.LC52:
	.string	"Illegal CMD format\r\n"
	.align	2
.LC53:
	.string	"IP  : "
	.align	2
.LC54:
	.string	"\r\n"
	.align	2
.LC55:
	.string	"MASK: "
	.align	2
.LC56:
	.string	"GW  : "
	.align	2
.LC57:
	.string	"DNS1: "
	.align	2
.LC58:
	.string	"DNS2: "
	.section	.text.wifi_sta_ip_set_cmd,"ax",@progbits
	.align	1
	.type	wifi_sta_ip_set_cmd, @function
wifi_sta_ip_set_cmd:
.LFB21:
	.loc 2 428 1
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
	.loc 2 438 8
	lw	a4,-76(s0)
	li	a5,6
	beq	a4,a5,.L62
	.loc 2 439 9
	lui	a5,%hi(.LC52)
	addi	a0,a5,%lo(.LC52)
	call	puts
	j	.L61
.L62:
	.loc 2 442 26
	lw	a5,-80(s0)
	addi	a5,a5,4
	.loc 2 442 10
	lw	a5,0(a5)
	mv	a0,a5
	call	ipaddr_addr
	sw	a0,-20(s0)
	.loc 2 443 28
	lw	a5,-80(s0)
	addi	a5,a5,8
	.loc 2 443 12
	lw	a5,0(a5)
	mv	a0,a5
	call	ipaddr_addr
	sw	a0,-24(s0)
	.loc 2 444 26
	lw	a5,-80(s0)
	addi	a5,a5,12
	.loc 2 444 10
	lw	a5,0(a5)
	mv	a0,a5
	call	ipaddr_addr
	sw	a0,-28(s0)
	.loc 2 445 28
	lw	a5,-80(s0)
	addi	a5,a5,16
	.loc 2 445 12
	lw	a5,0(a5)
	mv	a0,a5
	call	ipaddr_addr
	sw	a0,-32(s0)
	.loc 2 446 28
	lw	a5,-80(s0)
	addi	a5,a5,20
	.loc 2 446 12
	lw	a5,0(a5)
	mv	a0,a5
	call	ipaddr_addr
	sw	a0,-36(s0)
	.loc 2 448 20
	lw	a5,-20(s0)
	sw	a5,-60(s0)
	.loc 2 449 5
	addi	a4,s0,-56
	addi	a5,s0,-60
	li	a2,20
	mv	a1,a4
	mv	a0,a5
	call	ip4addr_ntoa_r
	.loc 2 450 5
	lui	a5,%hi(.LC53)
	addi	a0,a5,%lo(.LC53)
	call	puts
	.loc 2 451 5
	addi	a5,s0,-56
	mv	a0,a5
	call	puts
	.loc 2 452 5
	lui	a5,%hi(.LC54)
	addi	a0,a5,%lo(.LC54)
	call	puts
	.loc 2 454 20
	lw	a5,-24(s0)
	sw	a5,-60(s0)
	.loc 2 455 5
	addi	a4,s0,-56
	addi	a5,s0,-60
	li	a2,20
	mv	a1,a4
	mv	a0,a5
	call	ip4addr_ntoa_r
	.loc 2 456 5
	lui	a5,%hi(.LC55)
	addi	a0,a5,%lo(.LC55)
	call	puts
	.loc 2 457 5
	addi	a5,s0,-56
	mv	a0,a5
	call	puts
	.loc 2 458 5
	lui	a5,%hi(.LC54)
	addi	a0,a5,%lo(.LC54)
	call	puts
	.loc 2 460 20
	lw	a5,-28(s0)
	sw	a5,-60(s0)
	.loc 2 461 5
	addi	a4,s0,-56
	addi	a5,s0,-60
	li	a2,20
	mv	a1,a4
	mv	a0,a5
	call	ip4addr_ntoa_r
	.loc 2 462 5
	lui	a5,%hi(.LC56)
	addi	a0,a5,%lo(.LC56)
	call	puts
	.loc 2 463 5
	addi	a5,s0,-56
	mv	a0,a5
	call	puts
	.loc 2 464 5
	lui	a5,%hi(.LC54)
	addi	a0,a5,%lo(.LC54)
	call	puts
	.loc 2 466 20
	lw	a5,-32(s0)
	sw	a5,-60(s0)
	.loc 2 467 5
	addi	a4,s0,-56
	addi	a5,s0,-60
	li	a2,20
	mv	a1,a4
	mv	a0,a5
	call	ip4addr_ntoa_r
	.loc 2 468 5
	lui	a5,%hi(.LC57)
	addi	a0,a5,%lo(.LC57)
	call	puts
	.loc 2 469 5
	addi	a5,s0,-56
	mv	a0,a5
	call	puts
	.loc 2 470 5
	lui	a5,%hi(.LC54)
	addi	a0,a5,%lo(.LC54)
	call	puts
	.loc 2 472 20
	lw	a5,-36(s0)
	sw	a5,-60(s0)
	.loc 2 473 5
	addi	a4,s0,-56
	addi	a5,s0,-60
	li	a2,20
	mv	a1,a4
	mv	a0,a5
	call	ip4addr_ntoa_r
	.loc 2 474 5
	lui	a5,%hi(.LC58)
	addi	a0,a5,%lo(.LC58)
	call	puts
	.loc 2 475 5
	addi	a5,s0,-56
	mv	a0,a5
	call	puts
	.loc 2 476 5
	lui	a5,%hi(.LC54)
	addi	a0,a5,%lo(.LC54)
	call	puts
	.loc 2 478 5
	lw	a4,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	wifi_mgmr_sta_ip_set
.L61:
	.loc 2 479 1
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	wifi_sta_ip_set_cmd, .-wifi_sta_ip_set_cmd
	.section	.text.wifi_sta_ip_unset_cmd,"ax",@progbits
	.align	1
	.type	wifi_sta_ip_unset_cmd, @function
wifi_sta_ip_unset_cmd:
.LFB22:
	.loc 2 482 1
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
	.loc 2 483 5
	call	wifi_mgmr_sta_ip_unset
	.loc 2 484 1
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
	.size	wifi_sta_ip_unset_cmd, .-wifi_sta_ip_unset_cmd
	.section	.rodata
	.align	2
.LC59:
	.string	"[USAGE]: %s [ssid] [password]\r\n"
	.section	.text.wifi_connect_cmd,"ax",@progbits
	.align	1
	.type	wifi_connect_cmd, @function
wifi_connect_cmd:
.LFB23:
	.loc 2 487 1
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
	sw	a3,-48(s0)
	.loc 2 490 8
	lw	a4,-44(s0)
	li	a5,3
	beq	a4,a5,.L66
	.loc 2 491 9
	lw	a5,-48(s0)
	lw	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC59)
	addi	a0,a5,%lo(.LC59)
	call	printf
	.loc 2 492 9
	j	.L65
.L66:
	.loc 2 495 22
	call	wifi_mgmr_sta_enable
	sw	a0,-20(s0)
	.loc 2 496 47
	lw	a5,-48(s0)
	addi	a5,a5,4
	.loc 2 496 5
	lw	a1,0(a5)
	.loc 2 496 56
	lw	a5,-48(s0)
	addi	a5,a5,8
	.loc 2 496 5
	lw	a2,0(a5)
	li	a6,0
	li	a5,0
	li	a4,0
	li	a3,0
	lw	a0,-20(s0)
	call	wifi_mgmr_sta_connect
.L65:
	.loc 2 497 1
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
	.size	wifi_connect_cmd, .-wifi_connect_cmd
	.section	.rodata
	.align	2
.LC60:
	.string	"%s:wifi state = 0x%x\r\n"
	.align	2
.LC61:
	.string	"wifi current state: WIFI_STATE_UNKNOWN\r\n"
	.align	2
.LC62:
	.string	"wifi current state: WIFI_STATE_IDLE\r\n"
	.align	2
.LC63:
	.string	"wifi current state: WIFI_STATE_CONNECTING\r\n"
	.align	2
.LC64:
	.string	"wifi current state: WIFI_STATE_CONNECTED_IP_GETTING\r\n"
	.align	2
.LC65:
	.string	"wifi current state: WIFI_STATE_CONNECTED_IP_GOT\r\n"
	.align	2
.LC66:
	.string	"wifi current state: WIFI_STATE_DISCONNECT\r\n"
	.align	2
.LC67:
	.string	"wifi current state: WIFI_STATE_WITH_AP_IDLE\r\n"
	.align	2
.LC68:
	.string	"wifi current state: WIFI_STATE_WITH_AP_CONNECTING\r\n"
	.align	2
.LC69:
	.string	"wifi current state: WIFI_STATE_WITH_AP_CONNECTED_IP_GETTING\r\n"
	.align	2
.LC70:
	.string	"wifi current state: WIFI_STATE_WITH_AP_CONNECTED_IP_GOT\r\n"
	.align	2
.LC71:
	.string	"wifi current state: WIFI_STATE_WITH_AP_DISCONNECT\r\n"
	.align	2
.LC72:
	.string	"wifi current state: WIFI_STATE_IFDOWN\r\n"
	.align	2
.LC73:
	.string	"wifi current state: WIFI_STATE_SNIFFER\r\n"
	.align	2
.LC74:
	.string	"wifi current state: WIFI_STATE_PSK_ERROR\r\n"
	.align	2
.LC75:
	.string	"wifi current state: WIFI_STATE_NO_AP_FOUND\r\n"
	.align	2
.LC76:
	.string	"wifi current state: invalid\r\n"
	.section	.text.wifi_sta_get_state_cmd,"ax",@progbits
	.align	1
	.type	wifi_sta_get_state_cmd, @function
wifi_sta_get_state_cmd:
.LFB24:
	.loc 2 500 1
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
	sw	a3,-48(s0)
	.loc 2 501 9
	sw	zero,-20(s0)
	.loc 2 503 5
	addi	a5,s0,-20
	mv	a0,a5
	call	wifi_mgmr_state_get
	.loc 2 505 5
	lw	a5,-20(s0)
	mv	a2,a5
	lui	a5,%hi(__func__.3)
	addi	a1,a5,%lo(__func__.3)
	lui	a5,%hi(.LC60)
	addi	a0,a5,%lo(.LC60)
	call	printf
	.loc 2 506 14
	lw	a5,-20(s0)
	.loc 2 506 7
	bne	a5,zero,.L69
	.loc 2 507 9
	lui	a5,%hi(.LC61)
	addi	a0,a5,%lo(.LC61)
	call	printf
	.loc 2 539 1
	j	.L85
.L69:
	.loc 2 508 21
	lw	a4,-20(s0)
	.loc 2 508 14
	li	a5,1
	bne	a4,a5,.L71
	.loc 2 509 9
	lui	a5,%hi(.LC62)
	addi	a0,a5,%lo(.LC62)
	call	printf
	.loc 2 539 1
	j	.L85
.L71:
	.loc 2 510 21
	lw	a4,-20(s0)
	.loc 2 510 14
	li	a5,2
	bne	a4,a5,.L72
	.loc 2 511 9
	lui	a5,%hi(.LC63)
	addi	a0,a5,%lo(.LC63)
	call	printf
	.loc 2 539 1
	j	.L85
.L72:
	.loc 2 512 21
	lw	a4,-20(s0)
	.loc 2 512 14
	li	a5,3
	bne	a4,a5,.L73
	.loc 2 513 9
	lui	a5,%hi(.LC64)
	addi	a0,a5,%lo(.LC64)
	call	printf
	.loc 2 539 1
	j	.L85
.L73:
	.loc 2 514 21
	lw	a4,-20(s0)
	.loc 2 514 14
	li	a5,4
	bne	a4,a5,.L74
	.loc 2 515 9
	lui	a5,%hi(.LC65)
	addi	a0,a5,%lo(.LC65)
	call	printf
	.loc 2 539 1
	j	.L85
.L74:
	.loc 2 516 21
	lw	a4,-20(s0)
	.loc 2 516 14
	li	a5,5
	bne	a4,a5,.L75
	.loc 2 517 9
	lui	a5,%hi(.LC66)
	addi	a0,a5,%lo(.LC66)
	call	printf
	.loc 2 539 1
	j	.L85
.L75:
	.loc 2 518 21
	lw	a4,-20(s0)
	.loc 2 518 14
	li	a5,17
	bne	a4,a5,.L76
	.loc 2 519 9
	lui	a5,%hi(.LC67)
	addi	a0,a5,%lo(.LC67)
	call	printf
	.loc 2 539 1
	j	.L85
.L76:
	.loc 2 520 21
	lw	a4,-20(s0)
	.loc 2 520 14
	li	a5,18
	bne	a4,a5,.L77
	.loc 2 521 9
	lui	a5,%hi(.LC68)
	addi	a0,a5,%lo(.LC68)
	call	printf
	.loc 2 539 1
	j	.L85
.L77:
	.loc 2 522 21
	lw	a4,-20(s0)
	.loc 2 522 14
	li	a5,19
	bne	a4,a5,.L78
	.loc 2 523 9
	lui	a5,%hi(.LC69)
	addi	a0,a5,%lo(.LC69)
	call	printf
	.loc 2 539 1
	j	.L85
.L78:
	.loc 2 524 21
	lw	a4,-20(s0)
	.loc 2 524 14
	li	a5,20
	bne	a4,a5,.L79
	.loc 2 525 9
	lui	a5,%hi(.LC70)
	addi	a0,a5,%lo(.LC70)
	call	printf
	.loc 2 539 1
	j	.L85
.L79:
	.loc 2 526 21
	lw	a4,-20(s0)
	.loc 2 526 14
	li	a5,21
	bne	a4,a5,.L80
	.loc 2 527 9
	lui	a5,%hi(.LC71)
	addi	a0,a5,%lo(.LC71)
	call	printf
	.loc 2 539 1
	j	.L85
.L80:
	.loc 2 528 21
	lw	a4,-20(s0)
	.loc 2 528 14
	li	a5,6
	bne	a4,a5,.L81
	.loc 2 529 9
	lui	a5,%hi(.LC72)
	addi	a0,a5,%lo(.LC72)
	call	printf
	.loc 2 539 1
	j	.L85
.L81:
	.loc 2 530 21
	lw	a4,-20(s0)
	.loc 2 530 14
	li	a5,7
	bne	a4,a5,.L82
	.loc 2 531 9
	lui	a5,%hi(.LC73)
	addi	a0,a5,%lo(.LC73)
	call	printf
	.loc 2 539 1
	j	.L85
.L82:
	.loc 2 532 21
	lw	a4,-20(s0)
	.loc 2 532 14
	li	a5,8
	bne	a4,a5,.L83
	.loc 2 533 9
	lui	a5,%hi(.LC74)
	addi	a0,a5,%lo(.LC74)
	call	printf
	.loc 2 539 1
	j	.L85
.L83:
	.loc 2 534 21
	lw	a4,-20(s0)
	.loc 2 534 14
	li	a5,9
	bne	a4,a5,.L84
	.loc 2 535 9
	lui	a5,%hi(.LC75)
	addi	a0,a5,%lo(.LC75)
	call	printf
	.loc 2 539 1
	j	.L85
.L84:
	.loc 2 537 9
	lui	a5,%hi(.LC76)
	addi	a0,a5,%lo(.LC76)
	call	printf
.L85:
	.loc 2 539 1
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
.LFE24:
	.size	wifi_sta_get_state_cmd, .-wifi_sta_get_state_cmd
	.section	.text.wifi_disable_autoreconnect_cmd,"ax",@progbits
	.align	1
	.type	wifi_disable_autoreconnect_cmd, @function
wifi_disable_autoreconnect_cmd:
.LFB25:
	.loc 2 542 1
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
	.loc 2 543 5
	call	wifi_mgmr_sta_autoconnect_disable
	.loc 2 544 1
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
	.size	wifi_disable_autoreconnect_cmd, .-wifi_disable_autoreconnect_cmd
	.section	.text.wifi_enable_autoreconnect_cmd,"ax",@progbits
	.align	1
	.type	wifi_enable_autoreconnect_cmd, @function
wifi_enable_autoreconnect_cmd:
.LFB26:
	.loc 2 547 1
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
	.loc 2 548 5
	call	wifi_mgmr_sta_autoconnect_enable
	.loc 2 549 1
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
	.size	wifi_enable_autoreconnect_cmd, .-wifi_enable_autoreconnect_cmd
	.section	.rodata
	.align	2
.LC77:
	.string	"rc_fix_en [b/g/n] [MCS] [GI]"
	.align	2
.LC78:
	.string	"n mode"
	.align	2
.LC79:
	.string	"b/g mdoe"
	.align	2
.LC80:
	.string	"wifi set mode:%s, mcs:%d, gi:%d\r\n"
	.align	2
.LC81:
	.string	"wifi rc:0x%x\r\n"
	.section	.text.wifi_rc_fixed_enable,"ax",@progbits
	.align	1
	.type	wifi_rc_fixed_enable, @function
wifi_rc_fixed_enable:
.LFB27:
	.loc 2 552 1
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
	sw	a3,-48(s0)
	.loc 2 553 13
	sb	zero,-19(s0)
	.loc 2 554 13
	sb	zero,-20(s0)
	.loc 2 555 13
	sb	zero,-21(s0)
	.loc 2 556 14
	sh	zero,-18(s0)
	.loc 2 558 8
	lw	a4,-44(s0)
	li	a5,4
	beq	a4,a5,.L89
	.loc 2 559 9
	lui	a5,%hi(.LC77)
	addi	a0,a5,%lo(.LC77)
	call	printf
	.loc 2 560 9
	j	.L88
.L89:
	.loc 2 562 21
	lw	a5,-48(s0)
	addi	a5,a5,4
	.loc 2 562 12
	lw	a5,0(a5)
	mv	a0,a5
	call	atoi
	mv	a5,a0
	.loc 2 562 10 discriminator 1
	sb	a5,-19(s0)
	.loc 2 563 20
	lw	a5,-48(s0)
	addi	a5,a5,8
	.loc 2 563 11
	lw	a5,0(a5)
	mv	a0,a5
	call	atoi
	mv	a5,a0
	.loc 2 563 9 discriminator 1
	sb	a5,-20(s0)
	.loc 2 564 19
	lw	a5,-48(s0)
	addi	a5,a5,12
	.loc 2 564 10
	lw	a5,0(a5)
	mv	a0,a5
	call	atoi
	mv	a5,a0
	.loc 2 564 8 discriminator 1
	sb	a5,-21(s0)
	.loc 2 566 5
	lbu	a4,-19(s0)
	li	a5,1
	bne	a4,a5,.L91
	.loc 2 566 5 is_stmt 0 discriminator 1
	lui	a5,%hi(.LC78)
	addi	a5,a5,%lo(.LC78)
	j	.L92
.L91:
	.loc 2 566 5 discriminator 2
	lui	a5,%hi(.LC79)
	addi	a5,a5,%lo(.LC79)
.L92:
	.loc 2 566 5 discriminator 4
	lbu	a4,-20(s0)
	lbu	a3,-21(s0)
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC80)
	addi	a0,a5,%lo(.LC80)
	call	printf
	.loc 2 568 8 is_stmt 1
	lbu	a4,-19(s0)
	li	a5,1
	bne	a4,a5,.L93
	.loc 2 569 26
	lbu	a5,-19(s0)
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,12
	slli	a4,a5,16
	srai	a4,a4,16
	lbu	a5,-21(s0)
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,9
	slli	a5,a5,16
	srai	a5,a5,16
	or	a5,a4,a5
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 2 569 36
	lbu	a5,-20(s0)
	slli	a5,a5,16
	srai	a5,a5,16
	or	a5,a4,a5
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 2 569 12
	lh	a5,-18(s0)
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	sh	a5,-18(s0)
	j	.L94
.L93:
	.loc 2 570 14
	lbu	a5,-19(s0)
	bne	a5,zero,.L94
	.loc 2 571 12
	lbu	a5,-20(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-18(s0)
	or	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	ori	a5,a5,1536
	sh	a5,-18(s0)
.L94:
	.loc 2 574 5
	lhu	a5,-18(s0)
	mv	a1,a5
	lui	a5,%hi(.LC81)
	addi	a0,a5,%lo(.LC81)
	call	printf
	.loc 2 576 5
	lhu	a5,-18(s0)
	mv	a0,a5
	call	wifi_mgmr_rate_config
.L88:
	.loc 2 577 1
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
	.size	wifi_rc_fixed_enable, .-wifi_rc_fixed_enable
	.section	.text.wifi_rc_fixed_disable,"ax",@progbits
	.align	1
	.type	wifi_rc_fixed_disable, @function
wifi_rc_fixed_disable:
.LFB28:
	.loc 2 580 1
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
	sw	a3,-48(s0)
	.loc 2 581 14
	li	a5,-1
	sh	a5,-18(s0)
	.loc 2 583 5
	lhu	a5,-18(s0)
	mv	a0,a5
	call	wifi_mgmr_rate_config
	.loc 2 584 1
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
.LFE28:
	.size	wifi_rc_fixed_disable, .-wifi_rc_fixed_disable
	.section	.text.wifi_denoise_enable_cmd,"ax",@progbits
	.align	1
	.type	wifi_denoise_enable_cmd, @function
wifi_denoise_enable_cmd:
.LFB29:
	.loc 2 613 1
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
	.loc 2 614 5
	call	wifi_mgmr_api_denoise_enable
	.loc 2 615 1
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
	.size	wifi_denoise_enable_cmd, .-wifi_denoise_enable_cmd
	.section	.text.wifi_denoise_disable_cmd,"ax",@progbits
	.align	1
	.type	wifi_denoise_disable_cmd, @function
wifi_denoise_disable_cmd:
.LFB30:
	.loc 2 618 1
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
	.loc 2 619 5
	call	wifi_mgmr_api_denoise_disable
	.loc 2 620 1
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
.LFE30:
	.size	wifi_denoise_disable_cmd, .-wifi_denoise_disable_cmd
	.section	.text.wifi_power_saving_on_cmd,"ax",@progbits
	.align	1
	.type	wifi_power_saving_on_cmd, @function
wifi_power_saving_on_cmd:
.LFB31:
	.loc 2 623 1
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
	.loc 2 624 5
	li	a0,2
	call	wifi_mgmr_sta_powersaving
	.loc 2 625 1
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
	.size	wifi_power_saving_on_cmd, .-wifi_power_saving_on_cmd
	.section	.text.wifi_power_saving_off_cmd,"ax",@progbits
	.align	1
	.type	wifi_power_saving_off_cmd, @function
wifi_power_saving_off_cmd:
.LFB32:
	.loc 2 628 1
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
	.loc 2 629 5
	li	a0,0
	call	wifi_mgmr_sta_powersaving
	.loc 2 630 1
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
	.size	wifi_power_saving_off_cmd, .-wifi_power_saving_off_cmd
	.section	.text.sniffer_cb,"ax",@progbits
	.align	1
	.type	sniffer_cb, @function
sniffer_cb:
.LFB33:
	.loc 2 633 1
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
	.loc 2 640 20
	lui	a5,%hi(sniffer_counter.2)
	lw	a5,%lo(sniffer_counter.2)(a5)
	addi	a4,a5,1
	lui	a5,%hi(sniffer_counter.2)
	sw	a4,%lo(sniffer_counter.2)(a5)
	.loc 2 641 14
	call	xTaskGetTickCount
	mv	a5,a0
	.loc 2 641 9 discriminator 1
	mv	a4,a5
	.loc 2 641 36 discriminator 1
	lui	a5,%hi(last_tick.1)
	lw	a5,%lo(last_tick.1)(a5)
	.loc 2 641 34 discriminator 1
	sub	a4,a4,a5
	.loc 2 641 8 discriminator 1
	li	a5,8192
	addi	a5,a5,1808
	ble	a4,a5,.L102
	.loc 2 645 21
	call	xTaskGetTickCount
	mv	a4,a0
	.loc 2 645 19 discriminator 1
	lui	a5,%hi(last_tick.1)
	sw	a4,%lo(last_tick.1)(a5)
	.loc 2 646 22
	lui	a5,%hi(sniffer_counter.2)
	lw	a4,%lo(sniffer_counter.2)(a5)
	lui	a5,%hi(sniffer_last.0)
	sw	a4,%lo(sniffer_last.0)(a5)
.L102:
	.loc 2 648 1
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
	.size	sniffer_cb, .-sniffer_cb
	.section	.text.wifi_mon_cmd,"ax",@progbits
	.align	1
	.type	wifi_mon_cmd, @function
wifi_mon_cmd:
.LFB34:
	.loc 2 651 1
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
	.loc 2 652 8
	lw	a4,-28(s0)
	li	a5,1
	ble	a4,a5,.L104
	.loc 2 654 9
	call	wifi_mgmr_sniffer_enable
	.loc 2 659 1
	j	.L106
.L104:
	.loc 2 657 9
	lui	a5,%hi(sniffer_cb)
	addi	a1,a5,%lo(sniffer_cb)
	li	a0,0
	call	wifi_mgmr_sniffer_register
.L106:
	.loc 2 659 1
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
	.size	wifi_mon_cmd, .-wifi_mon_cmd
	.section	.text.wifi_sniffer_on_cmd,"ax",@progbits
	.align	1
	.type	wifi_sniffer_on_cmd, @function
wifi_sniffer_on_cmd:
.LFB35:
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
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	.loc 2 663 5
	call	wifi_mgmr_sniffer_enable
	.loc 2 664 5
	lui	a5,%hi(sniffer_cb)
	addi	a1,a5,%lo(sniffer_cb)
	li	a0,0
	call	wifi_mgmr_sniffer_register
	.loc 2 665 1
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
.LFE35:
	.size	wifi_sniffer_on_cmd, .-wifi_sniffer_on_cmd
	.section	.text.wifi_sniffer_off_cmd,"ax",@progbits
	.align	1
	.type	wifi_sniffer_off_cmd, @function
wifi_sniffer_off_cmd:
.LFB36:
	.loc 2 668 1
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
	.loc 2 669 5
	call	wifi_mgmr_sniffer_disable
	.loc 2 670 5
	li	a0,0
	call	wifi_mgmr_sniffer_unregister
	.loc 2 671 1
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
.LFE36:
	.size	wifi_sniffer_off_cmd, .-wifi_sniffer_off_cmd
	.section	.rodata
	.align	2
.LC82:
	.string	"BL60X_uAP_%02X%02X%02X"
	.align	2
.LC83:
	.string	"12345678"
	.section	.text.cmd_wifi_ap_start,"ax",@progbits
	.align	1
	.type	cmd_wifi_ap_start, @function
cmd_wifi_ap_start:
.LFB37:
	.loc 2 674 1
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
	sw	a3,-96(s0)
	.loc 2 676 13
	sb	zero,-17(s0)
	.loc 2 681 5
	addi	a5,s0,-36
	li	a2,6
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 682 5
	addi	a5,s0,-36
	mv	a0,a5
	call	bl_wifi_mac_addr_get
	.loc 2 683 5
	addi	a5,s0,-68
	li	a2,32
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 684 73
	lbu	a5,-33(s0)
	.loc 2 684 5
	mv	a3,a5
	.loc 2 684 81
	lbu	a5,-32(s0)
	.loc 2 684 5
	mv	a4,a5
	.loc 2 684 89
	lbu	a5,-31(s0)
	.loc 2 684 5
	addi	a0,s0,-68
	lui	a2,%hi(.LC82)
	addi	a2,a2,%lo(.LC82)
	li	a1,32
	call	snprintf
	.loc 2 685 38
	sb	zero,-37(s0)
	.loc 2 687 22
	call	wifi_mgmr_ap_enable
	sw	a0,-24(s0)
	.loc 2 688 8
	lw	a4,-92(s0)
	li	a5,1
	bne	a4,a5,.L110
	.loc 2 690 9
	lbu	a2,-17(s0)
	addi	a5,s0,-68
	li	a4,1
	li	a3,0
	mv	a1,a5
	lw	a0,-24(s0)
	call	wifi_mgmr_ap_start
	j	.L109
.L110:
	.loc 2 693 12
	lw	a4,-92(s0)
	li	a5,3
	bne	a4,a5,.L112
	.loc 2 694 25
	li	a5,1
	sb	a5,-17(s0)
.L112:
	.loc 2 696 28
	lw	a5,-96(s0)
	addi	a5,a5,4
	.loc 2 696 19
	lw	a5,0(a5)
	mv	a0,a5
	call	atoi
	sw	a0,-28(s0)
	.loc 2 697 12
	lw	a5,-28(s0)
	ble	a5,zero,.L116
	.loc 2 697 25 discriminator 1
	lw	a4,-28(s0)
	li	a5,11
	bgt	a4,a5,.L116
	.loc 2 700 9
	lbu	a2,-17(s0)
	addi	a1,s0,-68
	lw	a4,-28(s0)
	lui	a5,%hi(.LC83)
	addi	a3,a5,%lo(.LC83)
	lw	a0,-24(s0)
	call	wifi_mgmr_ap_start
	j	.L109
.L116:
	.loc 2 698 13 discriminator 1
	nop
.L109:
	.loc 2 702 1
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
	.size	cmd_wifi_ap_start, .-cmd_wifi_ap_start
	.section	.rodata
	.align	2
.LC84:
	.string	"--->>> cmd_wifi_ap_stop\r\n"
	.section	.text.cmd_wifi_ap_stop,"ax",@progbits
	.align	1
	.type	cmd_wifi_ap_stop, @function
cmd_wifi_ap_stop:
.LFB38:
	.loc 2 705 1
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
	.loc 2 706 5
	li	a0,0
	call	wifi_mgmr_ap_stop
	.loc 2 707 5
	lui	a5,%hi(.LC84)
	addi	a0,a5,%lo(.LC84)
	call	printf
	.loc 2 708 1
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
	.size	cmd_wifi_ap_stop, .-cmd_wifi_ap_stop
	.section	.rodata
	.align	2
.LC85:
	.string	"Usage: wifi_ap_max_sta [num]\r\n"
	.align	2
.LC86:
	.string	"Conf Max Sta to %d\r\n"
	.section	.text.cmd_wifi_ap_conf_max_sta,"ax",@progbits
	.align	1
	.type	cmd_wifi_ap_conf_max_sta, @function
cmd_wifi_ap_conf_max_sta:
.LFB39:
	.loc 2 711 1
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
	sw	a3,-48(s0)
	.loc 2 714 8
	lw	a4,-44(s0)
	li	a5,2
	beq	a4,a5,.L119
	.loc 2 715 9
	lui	a5,%hi(.LC85)
	addi	a0,a5,%lo(.LC85)
	call	printf
	.loc 2 716 9
	j	.L118
.L119:
	.loc 2 719 34
	lw	a5,-48(s0)
	addi	a5,a5,4
	.loc 2 719 25
	lw	a5,0(a5)
	mv	a0,a5
	call	atoi
	sw	a0,-20(s0)
	.loc 2 720 5
	lw	a1,-20(s0)
	lui	a5,%hi(.LC86)
	addi	a0,a5,%lo(.LC86)
	call	printf
	.loc 2 722 5
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	mv	a0,a5
	call	wifi_mgmr_conf_max_sta
.L118:
	.loc 2 723 1
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
	.size	cmd_wifi_ap_conf_max_sta, .-cmd_wifi_ap_conf_max_sta
	.section	.rodata
	.align	2
.LC87:
	.string	"[CLI] Dump statistic use forced mode\r\n"
	.align	2
.LC88:
	.string	"[CLI] Dump statistic use normal mode\r\n"
	.section	.text.cmd_wifi_dump,"ax",@progbits
	.align	1
	.type	cmd_wifi_dump, @function
cmd_wifi_dump:
.LFB40:
	.loc 2 726 1
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
	.loc 2 727 8
	lw	a4,-28(s0)
	li	a5,1
	ble	a4,a5,.L122
	.loc 2 728 9
	lui	a5,%hi(.LC87)
	addi	a0,a5,%lo(.LC87)
	call	puts
	.loc 2 729 9
	call	vTaskEnterCritical
	.loc 2 730 9
	li	a0,1
	call	bl60x_fw_dump_statistic
	.loc 2 731 9
	call	vTaskExitCritical
	.loc 2 738 1
	j	.L124
.L122:
	.loc 2 733 9
	lui	a5,%hi(.LC88)
	addi	a0,a5,%lo(.LC88)
	call	puts
	.loc 2 734 9
	call	vTaskEnterCritical
	.loc 2 735 9
	li	a0,0
	call	bl60x_fw_dump_statistic
	.loc 2 736 9
	call	vTaskExitCritical
.L124:
	.loc 2 738 1
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
.LFE40:
	.size	cmd_wifi_dump, .-cmd_wifi_dump
	.section	.rodata
	.align	2
.LC89:
	.string	"dump"
	.align	2
.LC90:
	.string	"set"
	.align	2
.LC91:
	.string	"get"
	.align	2
.LC92:
	.string	"reset"
	.align	2
.LC93:
	.string	"%s: unknown option %c\r\n"
	.align	2
.LC94:
	.string	":c:T:e:t:v:"
	.align	2
.LC95:
	.string	"Target CFG Element Info, task: %lu, element %lu, type %lu, val %lu\r\n"
	.align	2
.LC96:
	.string	"    OPS: %s\r\n"
	.align	2
.LC97:
	.string	"UNKNOWN OPS\r\n"
	.section	.text.cmd_wifi_cfg,"ax",@progbits
	.align	1
	.type	cmd_wifi_cfg, @function
cmd_wifi_cfg:
.LFB41:
	.loc 2 741 1
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
	.loc 2 744 14
	sw	zero,-24(s0)
	.loc 2 744 24
	sw	zero,-28(s0)
	.loc 2 744 37
	sw	zero,-32(s0)
	.loc 2 748 5
	addi	a5,s0,-60
	li	a1,0
	mv	a0,a5
	call	utils_getopt_init
	.loc 2 750 9
	li	a5,4
	sw	a5,-20(s0)
	.loc 2 751 11
	j	.L128
.L140:
	.loc 2 752 9
	lw	a4,-36(s0)
	li	a5,118
	beq	a4,a5,.L127
	lw	a4,-36(s0)
	li	a5,118
	bgt	a4,a5,.L128
	lw	a4,-36(s0)
	li	a5,116
	beq	a4,a5,.L129
	lw	a4,-36(s0)
	li	a5,116
	bgt	a4,a5,.L128
	lw	a4,-36(s0)
	li	a5,101
	beq	a4,a5,.L130
	lw	a4,-36(s0)
	li	a5,101
	bgt	a4,a5,.L128
	lw	a4,-36(s0)
	li	a5,99
	beq	a4,a5,.L131
	lw	a4,-36(s0)
	li	a5,99
	bgt	a4,a5,.L128
	lw	a4,-36(s0)
	li	a5,63
	beq	a4,a5,.L132
	lw	a4,-36(s0)
	li	a5,84
	beq	a4,a5,.L133
	j	.L128
.L131:
	.loc 2 754 51
	lw	a5,-60(s0)
	.loc 2 754 26
	mv	a1,a5
	lui	a5,%hi(.LC89)
	addi	a0,a5,%lo(.LC89)
	call	strcmp
	mv	a5,a0
	.loc 2 754 20 discriminator 1
	bne	a5,zero,.L134
	.loc 2 755 25
	li	a5,3
	sw	a5,-20(s0)
	.loc 2 763 17
	j	.L147
.L134:
	.loc 2 756 57
	lw	a5,-60(s0)
	.loc 2 756 33
	mv	a1,a5
	lui	a5,%hi(.LC90)
	addi	a0,a5,%lo(.LC90)
	call	strcmp
	mv	a5,a0
	.loc 2 756 27 discriminator 1
	bne	a5,zero,.L136
	.loc 2 757 25
	sw	zero,-20(s0)
	.loc 2 763 17
	j	.L147
.L136:
	.loc 2 758 57
	lw	a5,-60(s0)
	.loc 2 758 33
	mv	a1,a5
	lui	a5,%hi(.LC91)
	addi	a0,a5,%lo(.LC91)
	call	strcmp
	mv	a5,a0
	.loc 2 758 27 discriminator 1
	bne	a5,zero,.L137
	.loc 2 759 25
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 763 17
	j	.L147
.L137:
	.loc 2 760 59
	lw	a5,-60(s0)
	.loc 2 760 33
	mv	a1,a5
	lui	a5,%hi(.LC92)
	addi	a0,a5,%lo(.LC92)
	call	strcmp
	mv	a5,a0
	.loc 2 760 27 discriminator 1
	bne	a5,zero,.L147
	.loc 2 761 25
	li	a5,2
	sw	a5,-20(s0)
	.loc 2 763 17
	j	.L147
.L129:
	.loc 2 765 39
	lw	a5,-60(s0)
	.loc 2 765 24
	mv	a0,a5
	call	atoi
	mv	a5,a0
	.loc 2 765 22 discriminator 1
	sw	a5,-24(s0)
	.loc 2 766 17
	j	.L128
.L130:
	.loc 2 768 42
	lw	a5,-60(s0)
	.loc 2 768 27
	mv	a0,a5
	call	atoi
	mv	a5,a0
	.loc 2 768 25 discriminator 1
	sw	a5,-28(s0)
	.loc 2 769 17
	j	.L128
.L133:
	.loc 2 771 39
	lw	a5,-60(s0)
	.loc 2 771 24
	mv	a0,a5
	call	atoi
	mv	a5,a0
	.loc 2 771 22 discriminator 1
	sw	a5,-32(s0)
	.loc 2 772 17
	j	.L128
.L127:
	.loc 2 774 41
	lw	a5,-60(s0)
	.loc 2 774 26
	mv	a0,a5
	call	atoi
	mv	a5,a0
	.loc 2 774 24 discriminator 1
	sw	a5,-40(s0)
	.loc 2 775 17
	j	.L128
.L132:
	.loc 2 777 17
	lw	a5,-80(s0)
	lw	a5,0(a5)
	lw	a4,-48(s0)
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC93)
	addi	a0,a5,%lo(.LC93)
	call	printf
	j	.L125
.L147:
	.loc 2 763 17
	nop
.L128:
	.loc 2 751 19
	addi	a4,s0,-60
	lui	a5,%hi(.LC94)
	addi	a3,a5,%lo(.LC94)
	lw	a2,-80(s0)
	lw	a1,-76(s0)
	mv	a0,a4
	call	utils_getopt
	sw	a0,-36(s0)
	.loc 2 751 73 discriminator 1
	lw	a4,-36(s0)
	li	a5,-1
	bne	a4,a5,.L140
	.loc 2 782 5
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lui	a5,%hi(.LC95)
	addi	a0,a5,%lo(.LC95)
	call	printf
	.loc 2 785 5
	lw	a4,-20(s0)
	li	a5,4
	beq	a4,a5,.L141
	lw	a4,-20(s0)
	li	a5,4
	bgtu	a4,a5,.L125
	lw	a4,-20(s0)
	li	a5,3
	beq	a4,a5,.L143
	lw	a4,-20(s0)
	li	a5,3
	bgtu	a4,a5,.L125
	lw	a4,-20(s0)
	li	a5,2
	beq	a4,a5,.L144
	lw	a4,-20(s0)
	li	a5,2
	bgtu	a4,a5,.L125
	lw	a5,-20(s0)
	beq	a5,zero,.L145
	lw	a4,-20(s0)
	li	a5,1
	beq	a4,a5,.L146
	j	.L125
.L145:
	.loc 2 788 13
	lui	a5,%hi(.LC90)
	addi	a1,a5,%lo(.LC90)
	lui	a5,%hi(.LC96)
	addi	a0,a5,%lo(.LC96)
	call	printf
	.loc 2 789 13
	addi	a5,s0,-40
	li	a4,4
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	li	a0,0
	call	wifi_mgmr_cfg_req
	.loc 2 791 9
	j	.L125
.L146:
	.loc 2 794 13
	lui	a5,%hi(.LC91)
	addi	a1,a5,%lo(.LC91)
	lui	a5,%hi(.LC96)
	addi	a0,a5,%lo(.LC96)
	call	printf
	.loc 2 795 13
	addi	a5,s0,-40
	li	a4,4
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	li	a0,1
	call	wifi_mgmr_cfg_req
	.loc 2 797 9
	j	.L125
.L144:
	.loc 2 800 13
	lui	a5,%hi(.LC92)
	addi	a1,a5,%lo(.LC92)
	lui	a5,%hi(.LC96)
	addi	a0,a5,%lo(.LC96)
	call	printf
	.loc 2 801 13
	li	a5,0
	li	a4,0
	li	a3,0
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	li	a0,2
	call	wifi_mgmr_cfg_req
	.loc 2 803 9
	j	.L125
.L143:
	.loc 2 806 13
	lui	a5,%hi(.LC89)
	addi	a1,a5,%lo(.LC89)
	lui	a5,%hi(.LC96)
	addi	a0,a5,%lo(.LC96)
	call	printf
	.loc 2 807 13
	li	a5,0
	li	a4,0
	li	a3,0
	li	a2,0
	li	a1,0
	li	a0,3
	call	wifi_mgmr_cfg_req
	.loc 2 809 9
	j	.L125
.L141:
	.loc 2 812 13
	lui	a5,%hi(.LC97)
	addi	a0,a5,%lo(.LC97)
	call	printf
	.loc 2 814 9
	nop
.L125:
	.loc 2 816 1
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE41:
	.size	cmd_wifi_cfg, .-cmd_wifi_cfg
	.section	.text.cmd_wifi_mib,"ax",@progbits
	.align	1
	.type	cmd_wifi_mib, @function
cmd_wifi_mib:
.LFB42:
	.loc 2 819 1
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
	.loc 2 821 5
	call	hal_mib_dump
	.loc 2 822 5
	lw	a5,-32(s0)
	lw	a5,0(a5)
	li	a1,30
	mv	a0,a5
	call	utils_hexdump
	.loc 2 823 1
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
.LFE42:
	.size	cmd_wifi_mib, .-cmd_wifi_mib
	.section	.sbss.pkt_counter,"aw",@nobits
	.align	2
	.type	pkt_counter, @object
	.size	pkt_counter, 4
pkt_counter:
	.zero	4
	.section	.text.wifi_mgmr_ext_dump_needed,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_ext_dump_needed
	.type	wifi_mgmr_ext_dump_needed, @function
wifi_mgmr_ext_dump_needed:
.LFB43:
	.loc 2 827 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 828 21
	lui	a5,%hi(pkt_counter)
	lw	a5,%lo(pkt_counter)(a5)
	.loc 2 828 8
	ble	a5,zero,.L150
	.loc 2 829 20
	lui	a5,%hi(pkt_counter)
	lw	a5,%lo(pkt_counter)(a5)
	addi	a4,a5,-1
	lui	a5,%hi(pkt_counter)
	sw	a4,%lo(pkt_counter)(a5)
	.loc 2 830 16
	li	a5,1
	j	.L151
.L150:
	.loc 2 832 12
	li	a5,0
.L151:
	.loc 2 833 1
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
	.size	wifi_mgmr_ext_dump_needed, .-wifi_mgmr_ext_dump_needed
	.section	.text.cmd_dump_reset,"ax",@progbits
	.align	1
	.type	cmd_dump_reset, @function
cmd_dump_reset:
.LFB44:
	.loc 2 836 1
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
	.loc 2 837 17
	lui	a5,%hi(pkt_counter)
	li	a4,10
	sw	a4,%lo(pkt_counter)(a5)
	.loc 2 838 1
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
	.size	cmd_dump_reset, .-cmd_dump_reset
	.section	.text.cmd_wifi_coex_rf_force_on,"ax",@progbits
	.align	1
	.type	cmd_wifi_coex_rf_force_on, @function
cmd_wifi_coex_rf_force_on:
.LFB45:
	.loc 2 842 1
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
	.loc 2 843 5
	li	a0,1
	call	coex_wifi_rf_forece_enable
	.loc 2 844 1
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
	.size	cmd_wifi_coex_rf_force_on, .-cmd_wifi_coex_rf_force_on
	.section	.text.cmd_wifi_coex_rf_force_off,"ax",@progbits
	.align	1
	.type	cmd_wifi_coex_rf_force_off, @function
cmd_wifi_coex_rf_force_off:
.LFB46:
	.loc 2 847 1
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
	.loc 2 848 5
	li	a0,0
	call	coex_wifi_rf_forece_enable
	.loc 2 849 1
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
.LFE46:
	.size	cmd_wifi_coex_rf_force_off, .-cmd_wifi_coex_rf_force_off
	.section	.text.cmd_wifi_coex_pti_force_on,"ax",@progbits
	.align	1
	.type	cmd_wifi_coex_pti_force_on, @function
cmd_wifi_coex_pti_force_on:
.LFB47:
	.loc 2 853 1
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
	.loc 2 854 5
	li	a0,1
	call	coex_wifi_pti_forece_enable
	.loc 2 855 1
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
	.size	cmd_wifi_coex_pti_force_on, .-cmd_wifi_coex_pti_force_on
	.section	.text.cmd_wifi_coex_pti_force_off,"ax",@progbits
	.align	1
	.type	cmd_wifi_coex_pti_force_off, @function
cmd_wifi_coex_pti_force_off:
.LFB48:
	.loc 2 858 1
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
	.loc 2 859 5
	li	a0,0
	call	coex_wifi_pti_forece_enable
	.loc 2 860 1
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
	.size	cmd_wifi_coex_pti_force_off, .-cmd_wifi_coex_pti_force_off
	.section	.text.cmd_wifi_coex_pta_force_on,"ax",@progbits
	.align	1
	.type	cmd_wifi_coex_pta_force_on, @function
cmd_wifi_coex_pta_force_on:
.LFB49:
	.loc 2 864 1
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
	.loc 2 865 5
	li	a0,1
	call	coex_wifi_pta_forece_enable
	.loc 2 866 1
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
	.size	cmd_wifi_coex_pta_force_on, .-cmd_wifi_coex_pta_force_on
	.section	.text.cmd_wifi_coex_pta_force_off,"ax",@progbits
	.align	1
	.type	cmd_wifi_coex_pta_force_off, @function
cmd_wifi_coex_pta_force_off:
.LFB50:
	.loc 2 869 1
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
	.loc 2 870 5
	li	a0,0
	call	coex_wifi_pta_forece_enable
	.loc 2 871 1
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
.LFE50:
	.size	cmd_wifi_coex_pta_force_off, .-cmd_wifi_coex_pta_force_off
	.section	.rodata
	.align	2
.LC98:
	.string	"wifi state unknown\r\n"
	.align	2
.LC99:
	.string	"wifi state idle\r\n"
	.align	2
.LC100:
	.string	"wifi state connecting\r\n"
	.align	2
.LC101:
	.string	"wifi state connected ip getting\r\n"
	.align	2
.LC102:
	.string	"wifi state connected ip got\r\n"
	.align	2
.LC103:
	.string	"wifi state disconnect\r\n"
	.align	2
.LC104:
	.string	"wifi state with ap idle\r\n"
	.align	2
.LC105:
	.string	"wifi state with ap connecting\r\n"
	.align	2
.LC106:
	.string	"wifi state with ap connected ip getting\r\n"
	.align	2
.LC107:
	.string	"wifi state with ap connected ip got\r\n"
	.align	2
.LC108:
	.string	"wifi state with ap disconnect\r\n"
	.align	2
.LC109:
	.string	"wifi state ifdown\r\n"
	.align	2
.LC110:
	.string	"wifi state sniffer\r\n"
	.align	2
.LC111:
	.string	"wifi state psk error\r\n"
	.align	2
.LC112:
	.string	"wifi state no ap found\r\n"
	.section	.text.cmd_wifi_state_get,"ax",@progbits
	.align	1
	.type	cmd_wifi_state_get, @function
cmd_wifi_state_get:
.LFB51:
	.loc 2 874 1
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
	sw	a3,-48(s0)
	.loc 2 875 9
	sw	zero,-20(s0)
	.loc 2 876 5
	addi	a5,s0,-20
	mv	a0,a5
	call	wifi_mgmr_state_get
	.loc 2 878 5
	lw	a5,-20(s0)
	li	a4,21
	beq	a5,a4,.L160
	li	a4,21
	bgt	a5,a4,.L177
	li	a4,20
	beq	a5,a4,.L162
	li	a4,20
	bgt	a5,a4,.L177
	li	a4,19
	beq	a5,a4,.L163
	li	a4,19
	bgt	a5,a4,.L177
	li	a4,18
	beq	a5,a4,.L164
	li	a4,18
	bgt	a5,a4,.L177
	li	a4,17
	beq	a5,a4,.L165
	li	a4,17
	bgt	a5,a4,.L177
	li	a4,9
	beq	a5,a4,.L166
	li	a4,9
	bgt	a5,a4,.L177
	li	a4,8
	beq	a5,a4,.L167
	li	a4,8
	bgt	a5,a4,.L177
	li	a4,7
	beq	a5,a4,.L168
	li	a4,7
	bgt	a5,a4,.L177
	li	a4,6
	beq	a5,a4,.L169
	li	a4,6
	bgt	a5,a4,.L177
	li	a4,5
	beq	a5,a4,.L170
	li	a4,5
	bgt	a5,a4,.L177
	li	a4,4
	beq	a5,a4,.L171
	li	a4,4
	bgt	a5,a4,.L177
	li	a4,3
	beq	a5,a4,.L172
	li	a4,3
	bgt	a5,a4,.L177
	li	a4,2
	beq	a5,a4,.L173
	li	a4,2
	bgt	a5,a4,.L177
	beq	a5,zero,.L174
	li	a4,1
	beq	a5,a4,.L175
	.loc 2 925 13
	j	.L177
.L174:
	.loc 2 880 13
	lui	a5,%hi(.LC98)
	addi	a0,a5,%lo(.LC98)
	call	printf
	.loc 2 881 13
	j	.L176
.L175:
	.loc 2 883 13
	lui	a5,%hi(.LC99)
	addi	a0,a5,%lo(.LC99)
	call	printf
	.loc 2 884 13
	j	.L176
.L173:
	.loc 2 886 13
	lui	a5,%hi(.LC100)
	addi	a0,a5,%lo(.LC100)
	call	printf
	.loc 2 887 13
	j	.L176
.L172:
	.loc 2 889 13
	lui	a5,%hi(.LC101)
	addi	a0,a5,%lo(.LC101)
	call	printf
	.loc 2 890 13
	j	.L176
.L171:
	.loc 2 892 13
	lui	a5,%hi(.LC102)
	addi	a0,a5,%lo(.LC102)
	call	printf
	.loc 2 893 13
	j	.L176
.L170:
	.loc 2 895 13
	lui	a5,%hi(.LC103)
	addi	a0,a5,%lo(.LC103)
	call	printf
	.loc 2 896 13
	j	.L176
.L165:
	.loc 2 898 13
	lui	a5,%hi(.LC104)
	addi	a0,a5,%lo(.LC104)
	call	printf
	.loc 2 899 13
	j	.L176
.L164:
	.loc 2 901 13
	lui	a5,%hi(.LC105)
	addi	a0,a5,%lo(.LC105)
	call	printf
	.loc 2 902 13
	j	.L176
.L163:
	.loc 2 904 13
	lui	a5,%hi(.LC106)
	addi	a0,a5,%lo(.LC106)
	call	printf
	.loc 2 905 13
	j	.L176
.L162:
	.loc 2 907 13
	lui	a5,%hi(.LC107)
	addi	a0,a5,%lo(.LC107)
	call	printf
	.loc 2 908 13
	j	.L176
.L160:
	.loc 2 910 13
	lui	a5,%hi(.LC108)
	addi	a0,a5,%lo(.LC108)
	call	printf
	.loc 2 911 13
	j	.L176
.L169:
	.loc 2 913 13
	lui	a5,%hi(.LC109)
	addi	a0,a5,%lo(.LC109)
	call	printf
	.loc 2 914 13
	j	.L176
.L168:
	.loc 2 916 13
	lui	a5,%hi(.LC110)
	addi	a0,a5,%lo(.LC110)
	call	printf
	.loc 2 917 13
	j	.L176
.L167:
	.loc 2 919 13
	lui	a5,%hi(.LC111)
	addi	a0,a5,%lo(.LC111)
	call	printf
	.loc 2 920 13
	j	.L176
.L166:
	.loc 2 922 13
	lui	a5,%hi(.LC112)
	addi	a0,a5,%lo(.LC112)
	call	printf
	.loc 2 923 13
	j	.L176
.L177:
	.loc 2 925 13
	nop
.L176:
	.loc 2 927 1
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
.LFE51:
	.size	cmd_wifi_state_get, .-cmd_wifi_state_get
	.section	.rodata
	.align	2
.LC113:
	.base64	"EhISEhISEhIQEBAQEBAODhAQEBAQDg4OAAAAAAAAAAAAAAAAAAA="
	.section	.text.cmd_wifi_power_table_update,"ax",@progbits
	.align	1
	.type	cmd_wifi_power_table_update, @function
cmd_wifi_power_table_update:
.LFB52:
	.loc 2 930 1
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
	.loc 2 931 12
	lui	a5,%hi(.LC113)
	addi	a5,a5,%lo(.LC113)
	lw	t1,0(a5)
	lw	a7,4(a5)
	lw	a6,8(a5)
	lw	a0,12(a5)
	lw	a1,16(a5)
	lw	a2,20(a5)
	lw	a3,24(a5)
	lw	a4,28(a5)
	sw	t1,-56(s0)
	sw	a7,-52(s0)
	sw	a6,-48(s0)
	sw	a0,-44(s0)
	sw	a1,-40(s0)
	sw	a2,-36(s0)
	sw	a3,-32(s0)
	sw	a4,-28(s0)
	lw	a4,32(a5)
	sw	a4,-24(s0)
	lhu	a5,36(a5)
	sh	a5,-20(s0)
	.loc 2 938 5
	addi	a5,s0,-56
	mv	a0,a5
	call	bl_tpc_update_power_table
	.loc 2 939 1
	nop
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE52:
	.size	cmd_wifi_power_table_update, .-cmd_wifi_power_table_update
	.section	.rodata
	.align	2
.LC114:
	.string	"rf_dump"
	.align	2
.LC115:
	.string	"rf dump"
	.align	2
.LC116:
	.string	"wifi_capcode"
	.align	2
.LC117:
	.string	"wifi capcode"
	.align	2
.LC118:
	.string	"wifi_scan"
	.align	2
.LC119:
	.string	"wifi scan"
	.align	2
.LC120:
	.string	"wifi_scan_filter"
	.align	2
.LC121:
	.string	"wifi_mon"
	.align	2
.LC122:
	.string	"wifi monitor"
	.align	2
.LC123:
	.string	"wifi_raw_send"
	.align	2
.LC124:
	.string	"wifi raw send test"
	.align	2
.LC125:
	.string	"wifi_sta_info"
	.align	2
.LC126:
	.string	"wifi sta info"
	.align	2
.LC127:
	.string	"wifi_sta_ip_set"
	.align	2
.LC128:
	.string	"wifi STA IP config [ip] [mask] [gw] [dns1] [dns2]"
	.align	2
.LC129:
	.string	"wifi_sta_ip_unset"
	.align	2
.LC130:
	.string	"wifi STA IP config unset"
	.align	2
.LC131:
	.string	"wifi_sta_disconnect"
	.align	2
.LC132:
	.string	"wifi station disconnect"
	.align	2
.LC133:
	.string	"wifi_sta_connect"
	.align	2
.LC134:
	.string	"wifi station connect"
	.align	2
.LC135:
	.string	"wifi_sta_get_state"
	.align	2
.LC136:
	.string	"wifi sta get state"
	.align	2
.LC137:
	.string	"wifi_sta_autoconnect_enable"
	.align	2
.LC138:
	.string	"wifi station enable auto reconnect"
	.align	2
.LC139:
	.string	"wifi_sta_autoconnect_disable"
	.align	2
.LC140:
	.string	"wifi station disable auto reconnect"
	.align	2
.LC141:
	.string	"rc_fix_en"
	.align	2
.LC142:
	.string	"wifi rate control fixed rate enable"
	.align	2
.LC143:
	.string	"rc_fix_dis"
	.align	2
.LC144:
	.string	"wifi rate control fixed rate diable"
	.align	2
.LC145:
	.string	"wifi_sta_ps_on"
	.align	2
.LC146:
	.string	"wifi power saving mode ON"
	.align	2
.LC147:
	.string	"wifi_sta_ps_off"
	.align	2
.LC148:
	.string	"wifi power saving mode OFF"
	.align	2
.LC149:
	.string	"wifi_sta_denoise_enable"
	.align	2
.LC150:
	.string	"wifi denoise"
	.align	2
.LC151:
	.string	"wifi_sta_denoise_disable"
	.align	2
.LC152:
	.string	"wifi_sniffer_on"
	.align	2
.LC153:
	.string	"wifi sniffer mode on"
	.align	2
.LC154:
	.string	"wifi_sniffer_off"
	.align	2
.LC155:
	.string	"wifi sniffer mode off"
	.align	2
.LC156:
	.string	"wifi_ap_start"
	.align	2
.LC157:
	.string	"start Ap mode"
	.align	2
.LC158:
	.string	"wifi_ap_stop"
	.align	2
.LC159:
	.string	"stop Ap mode"
	.align	2
.LC160:
	.string	"wifi_ap_conf_max_sta"
	.align	2
.LC161:
	.string	"config Ap max sta"
	.align	2
.LC162:
	.string	"wifi_dump"
	.align	2
.LC163:
	.string	"dump fw statistic"
	.align	2
.LC164:
	.string	"wifi_cfg"
	.align	2
.LC165:
	.string	"wifi cfg cmd"
	.align	2
.LC166:
	.string	"wifi_mib"
	.align	2
.LC167:
	.string	"dump mib statistic"
	.align	2
.LC168:
	.string	"wifi_pkt"
	.align	2
.LC169:
	.string	"wifi dump needed"
	.align	2
.LC170:
	.string	"wifi_coex_rf_force_on"
	.align	2
.LC171:
	.string	"wifi coex RF forece on"
	.align	2
.LC172:
	.string	"wifi_coex_rf_force_off"
	.align	2
.LC173:
	.string	"wifi coex RF forece off"
	.align	2
.LC174:
	.string	"wifi_coex_pti_force_on"
	.align	2
.LC175:
	.string	"wifi coex PTI forece on"
	.align	2
.LC176:
	.string	"wifi_coex_pti_force_off"
	.align	2
.LC177:
	.string	"wifi coex PTI forece off"
	.align	2
.LC178:
	.string	"wifi_coex_pta_force_on"
	.align	2
.LC179:
	.string	"wifi coex PTA forece on"
	.align	2
.LC180:
	.string	"wifi_coex_pta_force_off"
	.align	2
.LC181:
	.string	"wifi coex PTA forece off"
	.align	2
.LC182:
	.string	"wifi_sta_list"
	.align	2
.LC183:
	.string	"get sta list in AP mode"
	.align	2
.LC184:
	.string	"wifi_sta_del"
	.align	2
.LC185:
	.string	"delete one sta in AP mode"
	.align	2
.LC186:
	.string	"wifi_edca_dump"
	.align	2
.LC187:
	.string	"dump EDCA data"
	.align	2
.LC188:
	.string	"wifi_state"
	.align	2
.LC189:
	.string	"get wifi_state"
	.align	2
.LC190:
	.string	"wifi_update_power"
	.align	2
.LC191:
	.string	"Power table test command"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 480
cmds_user:
	.word	.LC114
	.word	.LC115
	.word	cmd_rf_dump
	.word	.LC116
	.word	.LC117
	.word	wifi_capcode_cmd
	.word	.LC118
	.word	.LC119
	.word	wifi_scan_cmd
	.word	.LC120
	.word	.LC119
	.word	wifi_scan_filter_cmd
	.word	.LC121
	.word	.LC122
	.word	wifi_mon_cmd
	.word	.LC123
	.word	.LC124
	.word	cmd_wifi_raw_send
	.word	.LC125
	.word	.LC126
	.word	wifi_sta_ip_info
	.word	.LC127
	.word	.LC128
	.word	wifi_sta_ip_set_cmd
	.word	.LC129
	.word	.LC130
	.word	wifi_sta_ip_unset_cmd
	.word	.LC131
	.word	.LC132
	.word	wifi_disconnect_cmd
	.word	.LC133
	.word	.LC134
	.word	wifi_connect_cmd
	.word	.LC135
	.word	.LC136
	.word	wifi_sta_get_state_cmd
	.word	.LC137
	.word	.LC138
	.word	wifi_enable_autoreconnect_cmd
	.word	.LC139
	.word	.LC140
	.word	wifi_disable_autoreconnect_cmd
	.word	.LC141
	.word	.LC142
	.word	wifi_rc_fixed_enable
	.word	.LC143
	.word	.LC144
	.word	wifi_rc_fixed_disable
	.word	.LC145
	.word	.LC146
	.word	wifi_power_saving_on_cmd
	.word	.LC147
	.word	.LC148
	.word	wifi_power_saving_off_cmd
	.word	.LC149
	.word	.LC150
	.word	wifi_denoise_enable_cmd
	.word	.LC151
	.word	.LC150
	.word	wifi_denoise_disable_cmd
	.word	.LC152
	.word	.LC153
	.word	wifi_sniffer_on_cmd
	.word	.LC154
	.word	.LC155
	.word	wifi_sniffer_off_cmd
	.word	.LC156
	.word	.LC157
	.word	cmd_wifi_ap_start
	.word	.LC158
	.word	.LC159
	.word	cmd_wifi_ap_stop
	.word	.LC160
	.word	.LC161
	.word	cmd_wifi_ap_conf_max_sta
	.word	.LC162
	.word	.LC163
	.word	cmd_wifi_dump
	.word	.LC164
	.word	.LC165
	.word	cmd_wifi_cfg
	.word	.LC166
	.word	.LC167
	.word	cmd_wifi_mib
	.word	.LC168
	.word	.LC169
	.word	cmd_dump_reset
	.word	.LC170
	.word	.LC171
	.word	cmd_wifi_coex_rf_force_on
	.word	.LC172
	.word	.LC173
	.word	cmd_wifi_coex_rf_force_off
	.word	.LC174
	.word	.LC175
	.word	cmd_wifi_coex_pti_force_on
	.word	.LC176
	.word	.LC177
	.word	cmd_wifi_coex_pti_force_off
	.word	.LC178
	.word	.LC179
	.word	cmd_wifi_coex_pta_force_on
	.word	.LC180
	.word	.LC181
	.word	cmd_wifi_coex_pta_force_off
	.word	.LC182
	.word	.LC183
	.word	wifi_ap_sta_list_get_cmd
	.word	.LC184
	.word	.LC185
	.word	wifi_ap_sta_delete_cmd
	.word	.LC186
	.word	.LC187
	.word	wifi_edca_dump_cmd
	.word	.LC188
	.word	.LC189
	.word	cmd_wifi_state_get
	.word	.LC190
	.word	.LC191
	.word	cmd_wifi_power_table_update
	.section	.text.wifi_mgmr_cli_init,"ax",@progbits
	.align	1
	.globl	wifi_mgmr_cli_init
	.type	wifi_mgmr_cli_init, @function
wifi_mgmr_cli_init:
.LFB53:
	.loc 2 986 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 991 12
	li	a5,0
	.loc 2 992 1
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
.LFE53:
	.size	wifi_mgmr_cli_init, .-wifi_mgmr_cli_init
	.section	.sbss.seq.4,"aw",@nobits
	.align	2
	.type	seq.4, @object
	.size	seq.4, 4
seq.4:
	.zero	4
	.section	.rodata.__func__.3,"a"
	.align	2
	.type	__func__.3, @object
	.size	__func__.3, 23
__func__.3:
	.string	"wifi_sta_get_state_cmd"
	.section	.sbss.sniffer_counter.2,"aw",@nobits
	.align	2
	.type	sniffer_counter.2, @object
	.size	sniffer_counter.2, 4
sniffer_counter.2:
	.zero	4
	.section	.sbss.last_tick.1,"aw",@nobits
	.align	2
	.type	last_tick.1, @object
	.size	last_tick.1, 4
last_tick.1:
	.zero	4
	.section	.sbss.sniffer_last.0,"aw",@nobits
	.align	2
	.type	sniffer_last.0, @object
	.size	sniffer_last.0, 4
sniffer_last.0:
	.zero	4
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/projdefs.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/stage/cli/cli/include/cli.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifi/include/bl60x_fw_api.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/include/wifi_mgmr_ext.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/os_hal.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_tlv_bl.h"
	.file 21 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_getopt.h"
	.file 22 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_hexdump.h"
	.file 23 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 24 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 25 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_wifi.h"
	.file 26 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/wifi_mgmr_api.h"
	.file 27 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 28 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_sys.h"
	.file 29 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2736
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x2c
	.4byte	.LASF376
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x10
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x10
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x10
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x10
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x10
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x10
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2d
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x10
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2e
	.byte	0x4
	.uleb128 0x9
	.4byte	0x95
	.uleb128 0x14
	.4byte	0x86
	.uleb128 0x23
	.4byte	0x86
	.uleb128 0x10
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x14
	.4byte	0x95
	.uleb128 0x9
	.4byte	0x9c
	.uleb128 0x23
	.4byte	0xa1
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x4
	.byte	0x22
	.byte	0x15
	.4byte	0x2b
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0x40
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x5
	.byte	0x23
	.byte	0x10
	.4byte	0xe7
	.uleb128 0x9
	.4byte	0xec
	.uleb128 0x17
	.4byte	0xf7
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x6
	.byte	0x40
	.byte	0x12
	.4byte	0xcf
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x6
	.byte	0x41
	.byte	0x12
	.4byte	0xcf
	.uleb128 0x14
	.4byte	0x103
	.uleb128 0x9
	.4byte	0xb7
	.uleb128 0x18
	.4byte	.LASF24
	.byte	0x14
	.byte	0x7
	.2byte	0x425
	.byte	0x8
	.4byte	0x144
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x7
	.2byte	0x42a
	.byte	0xd
	.4byte	0x103
	.byte	0
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x7
	.2byte	0x42b
	.byte	0x8
	.4byte	0x144
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	0x84
	.4byte	0x154
	.uleb128 0xd
	.4byte	0x6a
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.4byte	.LASF23
	.byte	0x7
	.2byte	0x430
	.byte	0x22
	.4byte	0x119
	.uleb128 0xc
	.4byte	0x84
	.4byte	0x171
	.uleb128 0xd
	.4byte	0x6a
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.4byte	.LASF25
	.byte	0x2c
	.byte	0x7
	.2byte	0x4e1
	.byte	0x10
	.4byte	0x1e2
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x7
	.2byte	0x4e3
	.byte	0x8
	.4byte	0x84
	.byte	0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x7
	.2byte	0x4e4
	.byte	0x13
	.4byte	0x154
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x7
	.2byte	0x4e5
	.byte	0xd
	.4byte	0x103
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x7
	.2byte	0x4e6
	.byte	0x8
	.4byte	0x84
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x7
	.2byte	0x4e7
	.byte	0x11
	.4byte	0xdb
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x7
	.2byte	0x4e9
	.byte	0xf
	.4byte	0xf7
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x7
	.2byte	0x4eb
	.byte	0xa
	.4byte	0xb7
	.byte	0x28
	.byte	0
	.uleb128 0x19
	.4byte	.LASF32
	.byte	0x7
	.2byte	0x4ed
	.byte	0x3
	.4byte	0x171
	.uleb128 0x18
	.4byte	.LASF33
	.byte	0x24
	.byte	0x7
	.2byte	0x4fd
	.byte	0x10
	.4byte	0x236
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x7
	.2byte	0x4ff
	.byte	0x9
	.4byte	0x236
	.byte	0
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x7
	.2byte	0x500
	.byte	0x9
	.4byte	0x161
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x7
	.2byte	0x501
	.byte	0xa
	.4byte	0xb7
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x7
	.2byte	0x503
	.byte	0xf
	.4byte	0xf7
	.byte	0x20
	.byte	0
	.uleb128 0xc
	.4byte	0x71
	.4byte	0x246
	.uleb128 0xd
	.4byte	0x6a
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.4byte	.LASF38
	.byte	0x7
	.2byte	0x505
	.byte	0x3
	.4byte	0x1ef
	.uleb128 0x19
	.4byte	.LASF39
	.byte	0x7
	.2byte	0x508
	.byte	0x1e
	.4byte	0x246
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0xc
	.byte	0x8
	.byte	0x4c
	.byte	0x8
	.4byte	0x295
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x8
	.byte	0x4d
	.byte	0x11
	.4byte	0xa1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x8
	.byte	0x4e
	.byte	0x11
	.4byte	0xa1
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x8
	.byte	0x50
	.byte	0xc
	.4byte	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.4byte	0x260
	.uleb128 0x17
	.4byte	0x2b4
	.uleb128 0x1
	.4byte	0x86
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x2b4
	.byte	0
	.uleb128 0x9
	.4byte	0x86
	.uleb128 0x9
	.4byte	0x29a
	.uleb128 0x24
	.4byte	0x32
	.byte	0xe
	.byte	0x4b
	.byte	0x6
	.4byte	0x2e9
	.uleb128 0x5
	.4byte	.LASF44
	.byte	0
	.uleb128 0x5
	.4byte	.LASF45
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF46
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF47
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF48
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x9
	.byte	0x7d
	.byte	0x11
	.4byte	0xb7
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x9
	.byte	0x7e
	.byte	0x10
	.4byte	0xab
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x9
	.byte	0x7f
	.byte	0x12
	.4byte	0xc3
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x9
	.byte	0x81
	.byte	0x12
	.4byte	0xcf
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0xa
	.byte	0x60
	.byte	0xe
	.4byte	0x2f5
	.uleb128 0x11
	.4byte	.LASF54
	.byte	0x4
	.byte	0xb
	.byte	0x33
	.byte	0x8
	.4byte	0x340
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0xb
	.byte	0x34
	.byte	0x9
	.4byte	0x30d
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0xb
	.byte	0x39
	.byte	0x19
	.4byte	0x325
	.uleb128 0x14
	.4byte	0x340
	.uleb128 0x19
	.4byte	.LASF57
	.byte	0xc
	.2byte	0x126
	.byte	0x14
	.4byte	0x340
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0x10
	.byte	0xd
	.byte	0xba
	.byte	0x8
	.4byte	0x3d4
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0xd
	.byte	0xbc
	.byte	0x10
	.4byte	0x3d4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0xd
	.byte	0xbf
	.byte	0x9
	.4byte	0x84
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0xd
	.byte	0xc8
	.byte	0x9
	.4byte	0x301
	.byte	0x8
	.uleb128 0x15
	.string	"len"
	.byte	0xd
	.byte	0xcb
	.byte	0x9
	.4byte	0x301
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0xd
	.byte	0xd0
	.byte	0x8
	.4byte	0x2e9
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0xd
	.byte	0xd3
	.byte	0x8
	.4byte	0x2e9
	.byte	0xd
	.uleb128 0x15
	.string	"ref"
	.byte	0xd
	.byte	0xda
	.byte	0x8
	.4byte	0x2e9
	.byte	0xe
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0xd
	.byte	0xdd
	.byte	0x8
	.4byte	0x2e9
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.4byte	0x35e
	.uleb128 0x24
	.4byte	0x32
	.byte	0xf
	.byte	0x34
	.byte	0xe
	.4byte	0x446
	.uleb128 0x5
	.4byte	.LASF65
	.byte	0
	.uleb128 0x5
	.4byte	.LASF66
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF67
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF68
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF69
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF71
	.byte	0x6
	.uleb128 0x5
	.4byte	.LASF72
	.byte	0x7
	.uleb128 0x5
	.4byte	.LASF73
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF74
	.byte	0x9
	.uleb128 0x5
	.4byte	.LASF75
	.byte	0xa
	.uleb128 0x5
	.4byte	.LASF76
	.byte	0xb
	.uleb128 0x5
	.4byte	.LASF77
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF78
	.byte	0xd
	.uleb128 0x5
	.4byte	.LASF79
	.byte	0xe
	.uleb128 0x5
	.4byte	.LASF80
	.byte	0xf
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF85
	.4byte	0x32
	.byte	0x10
	.byte	0x71
	.byte	0x6
	.4byte	0x46f
	.uleb128 0x5
	.4byte	.LASF81
	.byte	0
	.uleb128 0x5
	.4byte	.LASF82
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF83
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF84
	.byte	0x3
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF86
	.4byte	0x32
	.byte	0x10
	.byte	0x9f
	.byte	0x6
	.4byte	0x48c
	.uleb128 0x5
	.4byte	.LASF87
	.byte	0
	.uleb128 0x5
	.4byte	.LASF88
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x491
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0x54
	.byte	0x10
	.2byte	0x10d
	.byte	0x8
	.4byte	0x5b4
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0x10
	.2byte	0x110
	.byte	0x11
	.4byte	0x48c
	.byte	0
	.uleb128 0x6
	.4byte	.LASF90
	.byte	0x10
	.2byte	0x115
	.byte	0xd
	.4byte	0x351
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x10
	.2byte	0x116
	.byte	0xd
	.4byte	0x351
	.byte	0x8
	.uleb128 0x21
	.string	"gw"
	.2byte	0x117
	.byte	0xd
	.4byte	0x351
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF92
	.byte	0x10
	.2byte	0x129
	.byte	0x12
	.4byte	0x5b4
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF93
	.byte	0x10
	.2byte	0x12f
	.byte	0x13
	.4byte	0x5d9
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF94
	.byte	0x10
	.2byte	0x134
	.byte	0x17
	.4byte	0x608
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF95
	.byte	0x10
	.2byte	0x13f
	.byte	0x1c
	.4byte	0x62d
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF96
	.byte	0x10
	.2byte	0x144
	.byte	0x1c
	.4byte	0x62d
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF97
	.byte	0x10
	.2byte	0x14c
	.byte	0x9
	.4byte	0x84
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF98
	.byte	0x10
	.2byte	0x14e
	.byte	0x9
	.4byte	0x144
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF99
	.byte	0x10
	.2byte	0x152
	.byte	0xf
	.4byte	0xa1
	.byte	0x38
	.uleb128 0x21
	.string	"mtu"
	.2byte	0x158
	.byte	0x9
	.4byte	0x301
	.byte	0x3c
	.uleb128 0x6
	.4byte	.LASF100
	.byte	0x10
	.2byte	0x15e
	.byte	0x8
	.4byte	0x673
	.byte	0x3e
	.uleb128 0x6
	.4byte	.LASF101
	.byte	0x10
	.2byte	0x160
	.byte	0x8
	.4byte	0x2e9
	.byte	0x44
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0x10
	.2byte	0x162
	.byte	0x8
	.4byte	0x2e9
	.byte	0x45
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x10
	.2byte	0x164
	.byte	0x8
	.4byte	0x683
	.byte	0x46
	.uleb128 0x21
	.string	"num"
	.2byte	0x167
	.byte	0x8
	.4byte	0x2e9
	.byte	0x48
	.uleb128 0x6
	.4byte	.LASF102
	.byte	0x10
	.2byte	0x17d
	.byte	0x1c
	.4byte	0x649
	.byte	0x4c
	.uleb128 0x6
	.4byte	.LASF103
	.byte	0x10
	.2byte	0x185
	.byte	0xf
	.4byte	0x698
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.4byte	.LASF104
	.byte	0x10
	.byte	0xb5
	.byte	0x11
	.4byte	0x5c0
	.uleb128 0x9
	.4byte	0x5c5
	.uleb128 0x1d
	.4byte	0x319
	.4byte	0x5d9
	.uleb128 0x1
	.4byte	0x3d4
	.uleb128 0x1
	.4byte	0x48c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF105
	.byte	0x10
	.byte	0xc0
	.byte	0x11
	.4byte	0x5e5
	.uleb128 0x9
	.4byte	0x5ea
	.uleb128 0x1d
	.4byte	0x319
	.4byte	0x603
	.uleb128 0x1
	.4byte	0x48c
	.uleb128 0x1
	.4byte	0x3d4
	.uleb128 0x1
	.4byte	0x603
	.byte	0
	.uleb128 0x9
	.4byte	0x34c
	.uleb128 0xb
	.4byte	.LASF106
	.byte	0x10
	.byte	0xd7
	.byte	0x11
	.4byte	0x614
	.uleb128 0x9
	.4byte	0x619
	.uleb128 0x1d
	.4byte	0x319
	.4byte	0x62d
	.uleb128 0x1
	.4byte	0x48c
	.uleb128 0x1
	.4byte	0x3d4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF107
	.byte	0x10
	.byte	0xd9
	.byte	0x10
	.4byte	0x639
	.uleb128 0x9
	.4byte	0x63e
	.uleb128 0x17
	.4byte	0x649
	.uleb128 0x1
	.4byte	0x48c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF108
	.byte	0x10
	.byte	0xdc
	.byte	0x11
	.4byte	0x655
	.uleb128 0x9
	.4byte	0x65a
	.uleb128 0x1d
	.4byte	0x319
	.4byte	0x673
	.uleb128 0x1
	.4byte	0x48c
	.uleb128 0x1
	.4byte	0x603
	.uleb128 0x1
	.4byte	0x46f
	.byte	0
	.uleb128 0xc
	.4byte	0x2e9
	.4byte	0x683
	.uleb128 0xd
	.4byte	0x6a
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.4byte	0x95
	.4byte	0x693
	.uleb128 0xd
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x2f
	.string	"acd"
	.uleb128 0x9
	.4byte	0x693
	.uleb128 0xc
	.4byte	0x95
	.4byte	0x6ad
	.uleb128 0xd
	.4byte	0x6a
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.4byte	0x95
	.4byte	0x6bd
	.uleb128 0xd
	.4byte	0x6a
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xb7
	.4byte	0x6cd
	.uleb128 0xd
	.4byte	0x6a
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.4byte	0x95
	.4byte	0x6dd
	.uleb128 0xd
	.4byte	0x6a
	.byte	0x40
	.byte	0
	.uleb128 0x11
	.4byte	.LASF109
	.byte	0x18
	.byte	0x11
	.byte	0x38
	.byte	0x10
	.4byte	0x746
	.uleb128 0x4
	.4byte	.LASF110
	.byte	0x11
	.byte	0x39
	.byte	0xd
	.4byte	0xb7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF111
	.byte	0x11
	.byte	0x3a
	.byte	0xd
	.4byte	0xb7
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF112
	.byte	0x11
	.byte	0x3b
	.byte	0xd
	.4byte	0x6bd
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF113
	.byte	0x11
	.byte	0x3c
	.byte	0xe
	.4byte	0xcf
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF114
	.byte	0x11
	.byte	0x3d
	.byte	0xe
	.4byte	0xcf
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF115
	.byte	0x11
	.byte	0x3e
	.byte	0x9
	.4byte	0x63
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF116
	.byte	0x11
	.byte	0x3f
	.byte	0xd
	.4byte	0xb7
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x11
	.byte	0x42
	.byte	0xf
	.4byte	0x84
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x11
	.byte	0x43
	.byte	0x10
	.4byte	0x75e
	.uleb128 0x9
	.4byte	0x763
	.uleb128 0x17
	.4byte	0x778
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x114
	.uleb128 0x1
	.4byte	0x63
	.byte	0
	.uleb128 0x9
	.4byte	0xcf
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0x11
	.byte	0x45
	.byte	0x10
	.4byte	0x789
	.uleb128 0x9
	.4byte	0x78e
	.uleb128 0x17
	.4byte	0x79e
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF120
	.4byte	0x32
	.byte	0x11
	.byte	0x52
	.byte	0x6
	.4byte	0x809
	.uleb128 0x5
	.4byte	.LASF121
	.byte	0
	.uleb128 0x5
	.4byte	.LASF122
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF123
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF124
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF125
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF127
	.byte	0x11
	.uleb128 0x5
	.4byte	.LASF128
	.byte	0x12
	.uleb128 0x5
	.4byte	.LASF129
	.byte	0x13
	.uleb128 0x5
	.4byte	.LASF130
	.byte	0x14
	.uleb128 0x5
	.4byte	.LASF131
	.byte	0x15
	.uleb128 0x5
	.4byte	.LASF132
	.byte	0x6
	.uleb128 0x5
	.4byte	.LASF133
	.byte	0x7
	.uleb128 0x5
	.4byte	.LASF134
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF135
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.4byte	0x95
	.4byte	0x819
	.uleb128 0xd
	.4byte	0x6a
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0x8
	.byte	0x12
	.byte	0x74
	.byte	0x8
	.4byte	0x841
	.uleb128 0x4
	.4byte	.LASF137
	.byte	0x12
	.byte	0x77
	.byte	0x8
	.4byte	0x63
	.byte	0
	.uleb128 0x4
	.4byte	.LASF138
	.byte	0x12
	.byte	0x7f
	.byte	0xa
	.4byte	0x84
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0x14
	.byte	0x12
	.byte	0xbb
	.byte	0x8
	.4byte	0x890
	.uleb128 0x4
	.4byte	.LASF140
	.byte	0x12
	.byte	0xbe
	.byte	0x8
	.4byte	0x63
	.byte	0
	.uleb128 0x4
	.4byte	.LASF141
	.byte	0x12
	.byte	0xc7
	.byte	0xa
	.4byte	0x84
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF142
	.byte	0x12
	.byte	0xd6
	.byte	0xc
	.4byte	0x8b0
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF143
	.byte	0x12
	.byte	0xe3
	.byte	0xc
	.4byte	0x8ca
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF144
	.byte	0x12
	.byte	0xec
	.byte	0x18
	.4byte	0x945
	.byte	0x10
	.byte	0
	.uleb128 0x1d
	.4byte	0x8a4
	.4byte	0x8a4
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x8ab
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.byte	0x2
	.4byte	.LASF145
	.uleb128 0x9
	.4byte	0x819
	.uleb128 0x9
	.4byte	0x890
	.uleb128 0x17
	.4byte	0x8ca
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x8ab
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x9
	.4byte	0x8b5
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x1c
	.byte	0x12
	.2byte	0x140
	.byte	0x8
	.4byte	0x940
	.uleb128 0x6
	.4byte	.LASF146
	.byte	0x12
	.2byte	0x145
	.byte	0x18
	.4byte	0x945
	.byte	0
	.uleb128 0x6
	.4byte	.LASF147
	.byte	0x12
	.2byte	0x14a
	.byte	0x18
	.4byte	0x945
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF148
	.byte	0x12
	.2byte	0x14e
	.byte	0x17
	.4byte	0x94a
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF149
	.byte	0x12
	.2byte	0x152
	.byte	0xb
	.4byte	0x71
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF138
	.byte	0x12
	.2byte	0x157
	.byte	0xa
	.4byte	0x84
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF150
	.byte	0x12
	.2byte	0x165
	.byte	0xc
	.4byte	0x95f
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF151
	.byte	0x12
	.2byte	0x170
	.byte	0xc
	.4byte	0x95f
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.4byte	0x8cf
	.uleb128 0x9
	.4byte	0x940
	.uleb128 0x9
	.4byte	0x841
	.uleb128 0x17
	.4byte	0x95f
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x8ab
	.byte	0
	.uleb128 0x9
	.4byte	0x94f
	.uleb128 0x18
	.4byte	.LASF152
	.byte	0xc
	.byte	0x12
	.2byte	0x178
	.byte	0x8
	.4byte	0x99d
	.uleb128 0x6
	.4byte	.LASF153
	.byte	0x12
	.2byte	0x17b
	.byte	0x18
	.4byte	0x945
	.byte	0
	.uleb128 0x6
	.4byte	.LASF154
	.byte	0x12
	.2byte	0x182
	.byte	0x18
	.4byte	0x945
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF155
	.byte	0x12
	.2byte	0x18a
	.byte	0x18
	.4byte	0x945
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0x13
	.byte	0xac
	.byte	0x1f
	.4byte	0x253
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0x13
	.byte	0xb1
	.byte	0x17
	.4byte	0x1e2
	.uleb128 0x1c
	.4byte	.LASF158
	.4byte	0x32
	.byte	0x1
	.byte	0x66
	.byte	0xe
	.4byte	0x9e4
	.uleb128 0x5
	.4byte	.LASF159
	.byte	0
	.uleb128 0x5
	.4byte	.LASF160
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF161
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF162
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF163
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF164
	.byte	0x1
	.byte	0x6c
	.byte	0x3
	.4byte	0x9b5
	.uleb128 0x11
	.4byte	.LASF165
	.byte	0xc4
	.byte	0x1
	.byte	0xa5
	.byte	0x10
	.4byte	0xa9a
	.uleb128 0x4
	.4byte	.LASF166
	.byte	0x1
	.byte	0xa6
	.byte	0xa
	.4byte	0xa9a
	.byte	0
	.uleb128 0x4
	.4byte	.LASF167
	.byte	0x1
	.byte	0xa7
	.byte	0xd
	.4byte	0xb7
	.byte	0x21
	.uleb128 0x4
	.4byte	.LASF168
	.byte	0x1
	.byte	0xa8
	.byte	0xe
	.4byte	0xcf
	.byte	0x24
	.uleb128 0x15
	.string	"psk"
	.byte	0x1
	.byte	0xa9
	.byte	0xa
	.4byte	0x6cd
	.byte	0x28
	.uleb128 0x4
	.4byte	.LASF169
	.byte	0x1
	.byte	0xaa
	.byte	0xe
	.4byte	0xcf
	.byte	0x6c
	.uleb128 0x15
	.string	"pmk"
	.byte	0x1
	.byte	0xab
	.byte	0xa
	.4byte	0x6cd
	.byte	0x70
	.uleb128 0x4
	.4byte	.LASF170
	.byte	0x1
	.byte	0xac
	.byte	0xe
	.4byte	0xcf
	.byte	0xb4
	.uleb128 0x15
	.string	"mac"
	.byte	0x1
	.byte	0xad
	.byte	0xd
	.4byte	0x6bd
	.byte	0xb8
	.uleb128 0x4
	.4byte	.LASF171
	.byte	0x1
	.byte	0xae
	.byte	0xd
	.4byte	0xb7
	.byte	0xbe
	.uleb128 0x4
	.4byte	.LASF172
	.byte	0x1
	.byte	0xb1
	.byte	0xd
	.4byte	0xb7
	.byte	0xbf
	.uleb128 0x4
	.4byte	.LASF173
	.byte	0x1
	.byte	0xb2
	.byte	0xd
	.4byte	0xb7
	.byte	0xc0
	.uleb128 0x4
	.4byte	.LASF174
	.byte	0x1
	.byte	0xb3
	.byte	0xd
	.4byte	0xb7
	.byte	0xc1
	.byte	0
	.uleb128 0xc
	.4byte	0x95
	.4byte	0xaaa
	.uleb128 0xd
	.4byte	0x6a
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF175
	.byte	0x1
	.byte	0xb4
	.byte	0x3
	.4byte	0x9f0
	.uleb128 0x11
	.4byte	.LASF176
	.byte	0x3c
	.byte	0x1
	.byte	0xc0
	.byte	0x10
	.4byte	0xb60
	.uleb128 0x4
	.4byte	.LASF166
	.byte	0x1
	.byte	0xc1
	.byte	0xa
	.4byte	0x69d
	.byte	0
	.uleb128 0x4
	.4byte	.LASF177
	.byte	0x1
	.byte	0xc2
	.byte	0xa
	.4byte	0x6ad
	.byte	0x20
	.uleb128 0x4
	.4byte	.LASF168
	.byte	0x1
	.byte	0xc3
	.byte	0xe
	.4byte	0xcf
	.byte	0x24
	.uleb128 0x4
	.4byte	.LASF178
	.byte	0x1
	.byte	0xc4
	.byte	0xd
	.4byte	0x6bd
	.byte	0x28
	.uleb128 0x4
	.4byte	.LASF179
	.byte	0x1
	.byte	0xc5
	.byte	0xd
	.4byte	0xb7
	.byte	0x2e
	.uleb128 0x4
	.4byte	.LASF115
	.byte	0x1
	.byte	0xc6
	.byte	0xc
	.4byte	0xab
	.byte	0x2f
	.uleb128 0x4
	.4byte	.LASF180
	.byte	0x1
	.byte	0xc7
	.byte	0xc
	.4byte	0xab
	.byte	0x30
	.uleb128 0x4
	.4byte	.LASF181
	.byte	0x1
	.byte	0xc8
	.byte	0xc
	.4byte	0xab
	.byte	0x31
	.uleb128 0x4
	.4byte	.LASF182
	.byte	0x1
	.byte	0xc9
	.byte	0xd
	.4byte	0xb7
	.byte	0x32
	.uleb128 0x4
	.4byte	.LASF183
	.byte	0x1
	.byte	0xca
	.byte	0xd
	.4byte	0xb7
	.byte	0x33
	.uleb128 0x4
	.4byte	.LASF111
	.byte	0x1
	.byte	0xcb
	.byte	0xd
	.4byte	0xb7
	.byte	0x34
	.uleb128 0x4
	.4byte	.LASF184
	.byte	0x1
	.byte	0xcc
	.byte	0xe
	.4byte	0xcf
	.byte	0x38
	.byte	0
	.uleb128 0xb
	.4byte	.LASF185
	.byte	0x1
	.byte	0xcd
	.byte	0x3
	.4byte	0xab6
	.uleb128 0x25
	.byte	0x14
	.byte	0xd3
	.byte	0x5
	.4byte	0xbb4
	.uleb128 0x15
	.string	"ip"
	.byte	0x1
	.byte	0xd4
	.byte	0x12
	.4byte	0xcf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF186
	.byte	0x1
	.byte	0xd5
	.byte	0x12
	.4byte	0xcf
	.byte	0x4
	.uleb128 0x15
	.string	"gw"
	.byte	0x1
	.byte	0xd6
	.byte	0x12
	.4byte	0xcf
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF187
	.byte	0x1
	.byte	0xd7
	.byte	0x12
	.4byte	0xcf
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF188
	.byte	0x1
	.byte	0xd8
	.byte	0x12
	.4byte	0xcf
	.byte	0x10
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.byte	0xdc
	.byte	0x9
	.4byte	0xbca
	.uleb128 0x4
	.4byte	.LASF115
	.byte	0x1
	.byte	0xdd
	.byte	0x14
	.4byte	0xab
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.byte	0x1
	.byte	0xdb
	.byte	0x5
	.4byte	0xbe0
	.uleb128 0x31
	.string	"sta"
	.byte	0x1
	.byte	0xde
	.byte	0xb
	.4byte	0xbb4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF189
	.byte	0x78
	.byte	0x1
	.byte	0xcf
	.byte	0x8
	.4byte	0xc35
	.uleb128 0x4
	.4byte	.LASF190
	.byte	0x1
	.byte	0xd0
	.byte	0x9
	.4byte	0x63
	.byte	0
	.uleb128 0x4
	.4byte	.LASF191
	.byte	0x1
	.byte	0xd1
	.byte	0xd
	.4byte	0xb7
	.byte	0x4
	.uleb128 0x15
	.string	"mac"
	.byte	0x1
	.byte	0xd2
	.byte	0xd
	.4byte	0x6bd
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF192
	.byte	0x1
	.byte	0xd9
	.byte	0x7
	.4byte	0xb6c
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF89
	.byte	0x1
	.byte	0xda
	.byte	0x12
	.4byte	0x491
	.byte	0x20
	.uleb128 0x32
	.4byte	0xbca
	.byte	0x74
	.byte	0
	.uleb128 0x11
	.4byte	.LASF193
	.byte	0x6e
	.byte	0x1
	.byte	0xe2
	.byte	0x10
	.4byte	0xc9e
	.uleb128 0x4
	.4byte	.LASF194
	.byte	0x1
	.byte	0xe3
	.byte	0xe
	.4byte	0xc3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF195
	.byte	0x1
	.byte	0xe7
	.byte	0xd
	.4byte	0xb7
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF166
	.byte	0x1
	.byte	0xe8
	.byte	0xa
	.4byte	0x69d
	.byte	0x3
	.uleb128 0x15
	.string	"psk"
	.byte	0x1
	.byte	0xe9
	.byte	0xa
	.4byte	0x6cd
	.byte	0x23
	.uleb128 0x4
	.4byte	.LASF178
	.byte	0x1
	.byte	0xea
	.byte	0xd
	.4byte	0x6bd
	.byte	0x64
	.uleb128 0x4
	.4byte	.LASF196
	.byte	0x1
	.byte	0xeb
	.byte	0xe
	.4byte	0xc3
	.byte	0x6a
	.uleb128 0x4
	.4byte	.LASF197
	.byte	0x1
	.byte	0xec
	.byte	0xd
	.4byte	0xb7
	.byte	0x6c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF198
	.byte	0x1
	.byte	0xed
	.byte	0x3
	.4byte	0xc35
	.uleb128 0x33
	.4byte	.LASF199
	.2byte	0x17e4
	.byte	0x1
	.byte	0xf9
	.byte	0x10
	.4byte	0xdca
	.uleb128 0x4
	.4byte	.LASF200
	.byte	0x1
	.byte	0xfa
	.byte	0xd
	.4byte	0xb7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF179
	.byte	0x1
	.byte	0xfc
	.byte	0x9
	.4byte	0x63
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF201
	.byte	0x1
	.byte	0xfd
	.byte	0x9
	.4byte	0x63
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF202
	.byte	0x1
	.byte	0xff
	.byte	0x17
	.4byte	0xbe0
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x100
	.byte	0x17
	.4byte	0xbe0
	.byte	0x84
	.uleb128 0x6
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x101
	.byte	0x23
	.4byte	0x9e4
	.byte	0xfc
	.uleb128 0x12
	.4byte	.LASF205
	.2byte	0x103
	.byte	0x19
	.4byte	0xdca
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF206
	.2byte	0x104
	.byte	0x9
	.4byte	0x63
	.2byte	0x288
	.uleb128 0x12
	.4byte	.LASF207
	.2byte	0x106
	.byte	0x1b
	.4byte	0xdda
	.2byte	0x28c
	.uleb128 0x26
	.string	"mq"
	.2byte	0x107
	.byte	0x17
	.4byte	0x99d
	.2byte	0xe44
	.uleb128 0x12
	.4byte	.LASF208
	.2byte	0x108
	.byte	0xd
	.4byte	0xdea
	.2byte	0xe68
	.uleb128 0x26
	.string	"m"
	.2byte	0x109
	.byte	0x19
	.4byte	0x964
	.2byte	0x1728
	.uleb128 0x12
	.4byte	.LASF209
	.2byte	0x10a
	.byte	0x10
	.4byte	0x9a9
	.2byte	0x1734
	.uleb128 0x12
	.4byte	.LASF210
	.2byte	0x10b
	.byte	0x27
	.4byte	0xc9e
	.2byte	0x1760
	.uleb128 0x12
	.4byte	.LASF211
	.2byte	0x10c
	.byte	0xa
	.4byte	0x809
	.2byte	0x17ce
	.uleb128 0x12
	.4byte	.LASF212
	.2byte	0x10d
	.byte	0xd
	.4byte	0xb7
	.2byte	0x17d1
	.uleb128 0x12
	.4byte	.LASF213
	.2byte	0x10e
	.byte	0x9
	.4byte	0x63
	.2byte	0x17d4
	.uleb128 0x12
	.4byte	.LASF214
	.2byte	0x111
	.byte	0xe
	.4byte	0xcf
	.2byte	0x17d8
	.uleb128 0x12
	.4byte	.LASF215
	.2byte	0x114
	.byte	0xe
	.4byte	0xcf
	.2byte	0x17dc
	.uleb128 0x12
	.4byte	.LASF216
	.2byte	0x118
	.byte	0x9
	.4byte	0x63
	.2byte	0x17e0
	.byte	0
	.uleb128 0xc
	.4byte	0xaaa
	.4byte	0xdda
	.uleb128 0xd
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	0xb60
	.4byte	0xdea
	.uleb128 0xd
	.4byte	0x6a
	.byte	0x31
	.byte	0
	.uleb128 0xc
	.4byte	0xb7
	.4byte	0xdfb
	.uleb128 0x34
	.4byte	0x6a
	.2byte	0x8bf
	.byte	0
	.uleb128 0x19
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x11a
	.byte	0x3
	.4byte	0xcaa
	.uleb128 0x35
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x125
	.byte	0x14
	.4byte	0xdfb
	.uleb128 0x1c
	.4byte	.LASF218
	.4byte	0x32
	.byte	0x14
	.byte	0x34
	.byte	0x6
	.4byte	0xe44
	.uleb128 0x5
	.4byte	.LASF219
	.byte	0
	.uleb128 0x5
	.4byte	.LASF220
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF221
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF222
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF223
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF224
	.byte	0x14
	.byte	0x15
	.byte	0x24
	.byte	0x10
	.4byte	0xe93
	.uleb128 0x4
	.4byte	.LASF225
	.byte	0x15
	.byte	0x25
	.byte	0xb
	.4byte	0x86
	.byte	0
	.uleb128 0x4
	.4byte	.LASF226
	.byte	0x15
	.byte	0x26
	.byte	0x9
	.4byte	0x63
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF227
	.byte	0x15
	.byte	0x27
	.byte	0x9
	.4byte	0x63
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF228
	.byte	0x15
	.byte	0x28
	.byte	0x9
	.4byte	0x63
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF229
	.byte	0x15
	.byte	0x29
	.byte	0x9
	.4byte	0x63
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF230
	.byte	0x15
	.byte	0x2a
	.byte	0x3
	.4byte	0xe44
	.uleb128 0x11
	.4byte	.LASF231
	.byte	0x8
	.byte	0x2
	.byte	0x3c
	.byte	0x8
	.4byte	0xec7
	.uleb128 0x4
	.4byte	.LASF116
	.byte	0x2
	.byte	0x3d
	.byte	0xd
	.4byte	0xb7
	.byte	0
	.uleb128 0x15
	.string	"val"
	.byte	0x2
	.byte	0x3e
	.byte	0x11
	.4byte	0xa1
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	0xe9f
	.uleb128 0xc
	.4byte	0xec7
	.4byte	0xedc
	.uleb128 0xd
	.4byte	0x6a
	.byte	0xb
	.byte	0
	.uleb128 0x14
	.4byte	0xecc
	.uleb128 0xe
	.4byte	.LASF232
	.byte	0x41
	.byte	0x27
	.4byte	0xedc
	.uleb128 0x5
	.byte	0x3
	.4byte	data_rate_list
	.uleb128 0xc
	.4byte	0xb7
	.4byte	0xf02
	.uleb128 0xd
	.4byte	0x6a
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.4byte	.LASF233
	.2byte	0x18b
	.byte	0x10
	.4byte	0xef2
	.uleb128 0x5
	.byte	0x3
	.4byte	packet_raw
	.uleb128 0xa
	.4byte	.LASF234
	.2byte	0x339
	.byte	0xc
	.4byte	0x63
	.uleb128 0x5
	.byte	0x3
	.4byte	pkt_counter
	.uleb128 0xc
	.4byte	0x295
	.4byte	0xf36
	.uleb128 0xd
	.4byte	0x6a
	.byte	0x27
	.byte	0
	.uleb128 0x14
	.4byte	0xf26
	.uleb128 0xa
	.4byte	.LASF235
	.2byte	0x3ae
	.byte	0x21
	.4byte	0xf36
	.uleb128 0x5
	.byte	0x3
	.4byte	cmds_user
	.uleb128 0x1e
	.4byte	.LASF236
	.byte	0xe
	.byte	0x5d
	.4byte	0xf5e
	.uleb128 0x1
	.4byte	0xf5e
	.byte	0
	.uleb128 0x9
	.4byte	0xab
	.uleb128 0x1f
	.4byte	.LASF237
	.byte	0x2
	.2byte	0x35e
	.4byte	0xf75
	.uleb128 0x1
	.4byte	0x63
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF238
	.byte	0x2
	.2byte	0x353
	.4byte	0xf87
	.uleb128 0x1
	.4byte	0x63
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF239
	.byte	0x2
	.2byte	0x348
	.4byte	0xf99
	.uleb128 0x1
	.4byte	0x63
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF240
	.byte	0x16
	.byte	0x20
	.4byte	0xfaf
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x6a
	.byte	0
	.uleb128 0x27
	.4byte	.LASF245
	.uleb128 0x8
	.4byte	.LASF241
	.byte	0x11
	.byte	0xa0
	.byte	0x5
	.4byte	0x63
	.4byte	0xfe3
	.uleb128 0x1
	.4byte	0xcf
	.uleb128 0x1
	.4byte	0xcf
	.uleb128 0x1
	.4byte	0xcf
	.uleb128 0x1
	.4byte	0xcf
	.uleb128 0x1
	.4byte	0xcf
	.uleb128 0x1
	.4byte	0x778
	.byte	0
	.uleb128 0x8
	.4byte	.LASF242
	.byte	0x15
	.byte	0x6c
	.byte	0x5
	.4byte	0x63
	.4byte	0x1008
	.uleb128 0x1
	.4byte	0x1008
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x100d
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x9
	.4byte	0xe93
	.uleb128 0x9
	.4byte	0x8b
	.uleb128 0x8
	.4byte	.LASF243
	.byte	0x17
	.byte	0x24
	.byte	0x5
	.4byte	0x63
	.4byte	0x102d
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF244
	.byte	0x15
	.byte	0x36
	.byte	0x5
	.4byte	0x63
	.4byte	0x1048
	.uleb128 0x1
	.4byte	0x1008
	.uleb128 0x1
	.4byte	0x63
	.byte	0
	.uleb128 0x28
	.4byte	.LASF246
	.byte	0x67
	.uleb128 0x1e
	.4byte	.LASF247
	.byte	0xe
	.byte	0x46
	.4byte	0x105f
	.uleb128 0x1
	.4byte	0x63
	.byte	0
	.uleb128 0x28
	.4byte	.LASF248
	.byte	0x66
	.uleb128 0x8
	.4byte	.LASF249
	.byte	0x11
	.byte	0x95
	.byte	0x5
	.4byte	0x63
	.4byte	0x107b
	.uleb128 0x1
	.4byte	0xb7
	.byte	0
	.uleb128 0x8
	.4byte	.LASF250
	.byte	0x11
	.byte	0x8c
	.byte	0x5
	.4byte	0x63
	.4byte	0x1091
	.uleb128 0x1
	.4byte	0x1091
	.byte	0
	.uleb128 0x9
	.4byte	0x746
	.uleb128 0x8
	.4byte	.LASF251
	.byte	0x11
	.byte	0x8d
	.byte	0x5
	.4byte	0x63
	.4byte	0x10c0
	.uleb128 0x1
	.4byte	0x1091
	.uleb128 0x1
	.4byte	0x86
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x86
	.uleb128 0x1
	.4byte	0x63
	.byte	0
	.uleb128 0x13
	.4byte	.LASF255
	.byte	0x11
	.byte	0x88
	.byte	0x12
	.4byte	0x746
	.uleb128 0x22
	.4byte	.LASF252
	.byte	0x18
	.2byte	0x110
	.byte	0x5
	.4byte	0x63
	.4byte	0x10ee
	.uleb128 0x1
	.4byte	0x90
	.uleb128 0x1
	.4byte	0x71
	.uleb128 0x1
	.4byte	0xa6
	.uleb128 0x29
	.byte	0
	.uleb128 0x8
	.4byte	.LASF253
	.byte	0x19
	.byte	0x33
	.byte	0x5
	.4byte	0x63
	.4byte	0x1104
	.uleb128 0x1
	.4byte	0x114
	.byte	0
	.uleb128 0x8
	.4byte	.LASF254
	.byte	0x11
	.byte	0x97
	.byte	0x5
	.4byte	0x63
	.4byte	0x111a
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x13
	.4byte	.LASF256
	.byte	0x11
	.byte	0x93
	.byte	0x5
	.4byte	0x63
	.uleb128 0x8
	.4byte	.LASF257
	.byte	0x11
	.byte	0x96
	.byte	0x5
	.4byte	0x63
	.4byte	0x1141
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x752
	.byte	0
	.uleb128 0x13
	.4byte	.LASF258
	.byte	0x11
	.byte	0x92
	.byte	0x5
	.4byte	0x63
	.uleb128 0x8
	.4byte	.LASF259
	.byte	0x11
	.byte	0x81
	.byte	0x5
	.4byte	0x63
	.4byte	0x1163
	.uleb128 0x1
	.4byte	0x63
	.byte	0
	.uleb128 0x13
	.4byte	.LASF260
	.byte	0x1a
	.byte	0x4f
	.byte	0x5
	.4byte	0x63
	.uleb128 0x13
	.4byte	.LASF261
	.byte	0x1a
	.byte	0x4e
	.byte	0x5
	.4byte	0x63
	.uleb128 0x8
	.4byte	.LASF262
	.byte	0x11
	.byte	0x94
	.byte	0x5
	.4byte	0x63
	.4byte	0x1191
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x13
	.4byte	.LASF263
	.byte	0x11
	.byte	0x82
	.byte	0x5
	.4byte	0x63
	.uleb128 0x13
	.4byte	.LASF264
	.byte	0x11
	.byte	0x83
	.byte	0x5
	.4byte	0x63
	.uleb128 0x8
	.4byte	.LASF265
	.byte	0x11
	.byte	0x7f
	.byte	0x5
	.4byte	0x63
	.4byte	0x11dd
	.uleb128 0x1
	.4byte	0x1091
	.uleb128 0x1
	.4byte	0x86
	.uleb128 0x1
	.4byte	0x86
	.uleb128 0x1
	.4byte	0x86
	.uleb128 0x1
	.4byte	0x114
	.uleb128 0x1
	.4byte	0xb7
	.uleb128 0x1
	.4byte	0xc3
	.byte	0
	.uleb128 0x13
	.4byte	.LASF266
	.byte	0x11
	.byte	0x77
	.byte	0x12
	.4byte	0x746
	.uleb128 0x13
	.4byte	.LASF267
	.byte	0x11
	.byte	0x7e
	.byte	0x5
	.4byte	0x63
	.uleb128 0x8
	.4byte	.LASF268
	.byte	0x11
	.byte	0x7c
	.byte	0x5
	.4byte	0x63
	.4byte	0x121f
	.uleb128 0x1
	.4byte	0xcf
	.uleb128 0x1
	.4byte	0xcf
	.uleb128 0x1
	.4byte	0xcf
	.uleb128 0x1
	.4byte	0xcf
	.uleb128 0x1
	.4byte	0xcf
	.byte	0
	.uleb128 0x8
	.4byte	.LASF269
	.byte	0xb
	.byte	0xd9
	.byte	0x7
	.4byte	0x86
	.4byte	0x123f
	.uleb128 0x1
	.4byte	0x603
	.uleb128 0x1
	.4byte	0x86
	.uleb128 0x1
	.4byte	0x63
	.byte	0
	.uleb128 0x8
	.4byte	.LASF270
	.byte	0xb
	.byte	0xd5
	.byte	0x7
	.4byte	0x30d
	.4byte	0x1255
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF271
	.byte	0x11
	.byte	0x78
	.byte	0x5
	.4byte	0x63
	.4byte	0x126b
	.uleb128 0x1
	.4byte	0x1091
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF272
	.byte	0x1b
	.2byte	0x2f6
	.4byte	0x127d
	.uleb128 0x1
	.4byte	0x10f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF273
	.byte	0x11
	.byte	0x80
	.byte	0x5
	.4byte	0x63
	.uleb128 0x8
	.4byte	.LASF274
	.byte	0x11
	.byte	0xa6
	.byte	0x5
	.4byte	0x63
	.4byte	0x12a4
	.uleb128 0x1
	.4byte	0x114
	.uleb128 0x1
	.4byte	0x63
	.byte	0
	.uleb128 0x8
	.4byte	.LASF275
	.byte	0xb
	.byte	0xd8
	.byte	0x7
	.4byte	0x86
	.4byte	0x12ba
	.uleb128 0x1
	.4byte	0x603
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF276
	.byte	0xe
	.byte	0x63
	.4byte	0x12cb
	.uleb128 0x1
	.4byte	0xf5e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF277
	.byte	0x11
	.byte	0x9a
	.byte	0x5
	.4byte	0x63
	.4byte	0x12e1
	.uleb128 0x1
	.4byte	0x12e1
	.byte	0
	.uleb128 0x9
	.4byte	0x63
	.uleb128 0x8
	.4byte	.LASF278
	.byte	0x11
	.byte	0x7d
	.byte	0x5
	.4byte	0x63
	.4byte	0x1301
	.uleb128 0x1
	.4byte	0x778
	.uleb128 0x1
	.4byte	0x778
	.byte	0
	.uleb128 0x8
	.4byte	.LASF279
	.byte	0x11
	.byte	0x7b
	.byte	0x5
	.4byte	0x63
	.4byte	0x1321
	.uleb128 0x1
	.4byte	0x778
	.uleb128 0x1
	.4byte	0x778
	.uleb128 0x1
	.4byte	0x778
	.byte	0
	.uleb128 0x8
	.4byte	.LASF280
	.byte	0x11
	.byte	0x9e
	.byte	0x5
	.4byte	0x63
	.4byte	0x1337
	.uleb128 0x1
	.4byte	0x63
	.byte	0
	.uleb128 0x8
	.4byte	.LASF281
	.byte	0x11
	.byte	0x9f
	.byte	0x5
	.4byte	0x63
	.4byte	0x1352
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x77d
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF282
	.byte	0x1c
	.byte	0x3c
	.4byte	0x1368
	.uleb128 0x1
	.4byte	0xb7
	.uleb128 0x1
	.4byte	0xb7
	.byte	0
	.uleb128 0x8
	.4byte	.LASF283
	.byte	0x1d
	.byte	0x51
	.byte	0x5
	.4byte	0x63
	.4byte	0x137e
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x13
	.4byte	.LASF284
	.byte	0x1c
	.byte	0x3d
	.byte	0x9
	.4byte	0xb7
	.uleb128 0x36
	.4byte	.LASF285
	.byte	0x1b
	.2byte	0x54c
	.byte	0xc
	.4byte	0x103
	.uleb128 0x22
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x127
	.byte	0x7
	.4byte	0x86
	.4byte	0x13ae
	.uleb128 0x1
	.4byte	0xb7
	.byte	0
	.uleb128 0x22
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x126
	.byte	0x7
	.4byte	0x86
	.4byte	0x13c5
	.uleb128 0x1
	.4byte	0xb7
	.byte	0
	.uleb128 0x8
	.4byte	.LASF288
	.byte	0x1a
	.byte	0x4b
	.byte	0x5
	.4byte	0x63
	.4byte	0x13db
	.uleb128 0x1
	.4byte	0x63
	.byte	0
	.uleb128 0x8
	.4byte	.LASF289
	.byte	0xe
	.byte	0x58
	.byte	0x5
	.4byte	0x63
	.4byte	0x1405
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x114
	.uleb128 0x1
	.4byte	0x114
	.uleb128 0x1
	.4byte	0x114
	.uleb128 0x1
	.4byte	0x1405
	.byte	0
	.uleb128 0x9
	.4byte	0xc3
	.uleb128 0x8
	.4byte	.LASF290
	.byte	0x18
	.byte	0xe3
	.byte	0x5
	.4byte	0x63
	.4byte	0x1420
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF291
	.byte	0x11
	.byte	0x90
	.byte	0x5
	.4byte	0x63
	.4byte	0x1436
	.uleb128 0x1
	.4byte	0xb7
	.byte	0
	.uleb128 0x8
	.4byte	.LASF292
	.byte	0x11
	.byte	0x8f
	.byte	0x5
	.4byte	0x63
	.4byte	0x1451
	.uleb128 0x1
	.4byte	0x1451
	.uleb128 0x1
	.4byte	0xb7
	.byte	0
	.uleb128 0x9
	.4byte	0x6dd
	.uleb128 0x8
	.4byte	.LASF293
	.byte	0x17
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0x1476
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0x8
	.4byte	.LASF294
	.byte	0x11
	.byte	0x8e
	.byte	0x5
	.4byte	0x63
	.4byte	0x148c
	.uleb128 0x1
	.4byte	0x114
	.byte	0
	.uleb128 0x8
	.4byte	.LASF295
	.byte	0x11
	.byte	0x98
	.byte	0x5
	.4byte	0x63
	.4byte	0x14a2
	.uleb128 0x1
	.4byte	0x12e1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF296
	.byte	0x18
	.byte	0xce
	.byte	0x5
	.4byte	0x63
	.4byte	0x14b9
	.uleb128 0x1
	.4byte	0xa6
	.uleb128 0x29
	.byte	0
	.uleb128 0x8
	.4byte	.LASF297
	.byte	0x17
	.byte	0x29
	.byte	0x8
	.4byte	0x71
	.4byte	0x14cf
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF310
	.2byte	0x3d9
	.4byte	0x63
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF301
	.2byte	0x3a1
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x154b
	.uleb128 0x2
	.string	"buf"
	.2byte	0x3a1
	.byte	0x2f
	.4byte	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.string	"len"
	.2byte	0x3a1
	.byte	0x38
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x3a1
	.byte	0x41
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x3a1
	.byte	0x4e
	.4byte	0x2b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xa
	.4byte	.LASF300
	.2byte	0x3a3
	.byte	0xc
	.4byte	0x154b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0xc
	.4byte	0xab
	.4byte	0x155b
	.uleb128 0xd
	.4byte	0x6a
	.byte	0x25
	.byte	0
	.uleb128 0x7
	.4byte	.LASF302
	.2byte	0x369
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15be
	.uleb128 0x2
	.string	"buf"
	.2byte	0x369
	.byte	0x26
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"len"
	.2byte	0x369
	.byte	0x2f
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x369
	.byte	0x38
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x369
	.byte	0x45
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.4byte	.LASF97
	.2byte	0x36b
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	.LASF303
	.2byte	0x364
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1612
	.uleb128 0x2
	.string	"buf"
	.2byte	0x364
	.byte	0x2f
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x364
	.byte	0x38
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x364
	.byte	0x41
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x364
	.byte	0x4e
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF304
	.2byte	0x35f
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1666
	.uleb128 0x2
	.string	"buf"
	.2byte	0x35f
	.byte	0x2e
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x35f
	.byte	0x37
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x35f
	.byte	0x40
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x35f
	.byte	0x4d
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF305
	.2byte	0x359
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16ba
	.uleb128 0x2
	.string	"buf"
	.2byte	0x359
	.byte	0x2f
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x359
	.byte	0x38
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x359
	.byte	0x41
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x359
	.byte	0x4e
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF306
	.2byte	0x354
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x170e
	.uleb128 0x2
	.string	"buf"
	.2byte	0x354
	.byte	0x2e
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x354
	.byte	0x37
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x354
	.byte	0x40
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x354
	.byte	0x4d
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF307
	.2byte	0x34e
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1762
	.uleb128 0x2
	.string	"buf"
	.2byte	0x34e
	.byte	0x2e
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x34e
	.byte	0x37
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x34e
	.byte	0x40
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x34e
	.byte	0x4d
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF308
	.2byte	0x349
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17b6
	.uleb128 0x2
	.string	"buf"
	.2byte	0x349
	.byte	0x2d
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x349
	.byte	0x36
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x349
	.byte	0x3f
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x349
	.byte	0x4c
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF309
	.2byte	0x343
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x180a
	.uleb128 0x2
	.string	"buf"
	.2byte	0x343
	.byte	0x22
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x343
	.byte	0x2b
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x343
	.byte	0x34
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x343
	.byte	0x41
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF311
	.2byte	0x33a
	.4byte	0x63
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF312
	.2byte	0x332
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1878
	.uleb128 0x2
	.string	"buf"
	.2byte	0x332
	.byte	0x20
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x332
	.byte	0x29
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x332
	.byte	0x32
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x332
	.byte	0x3f
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.4byte	.LASF245
	.byte	0
	.uleb128 0x7
	.4byte	.LASF313
	.2byte	0x2e4
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1939
	.uleb128 0x2
	.string	"buf"
	.2byte	0x2e4
	.byte	0x20
	.4byte	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.string	"len"
	.2byte	0x2e4
	.byte	0x29
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x2e4
	.byte	0x32
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x2e4
	.byte	0x3f
	.4byte	0x2b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xf
	.string	"opt"
	.2byte	0x2e6
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.string	"ops"
	.2byte	0x2e7
	.byte	0xe
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.4byte	.LASF314
	.2byte	0x2e8
	.byte	0xe
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF315
	.2byte	0x2e8
	.byte	0x18
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.4byte	.LASF137
	.2byte	0x2e8
	.byte	0x25
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.string	"val"
	.2byte	0x2e9
	.byte	0xe
	.4byte	0x1939
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.4byte	.LASF224
	.2byte	0x2eb
	.byte	0x12
	.4byte	0xe93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0xc
	.4byte	0xcf
	.4byte	0x1949
	.uleb128 0xd
	.4byte	0x6a
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF316
	.2byte	0x2d5
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x199d
	.uleb128 0x2
	.string	"buf"
	.2byte	0x2d5
	.byte	0x21
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x2d5
	.byte	0x2a
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x2d5
	.byte	0x33
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x2d5
	.byte	0x40
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF317
	.2byte	0x2c6
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a00
	.uleb128 0x2
	.string	"buf"
	.2byte	0x2c6
	.byte	0x2c
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"len"
	.2byte	0x2c6
	.byte	0x35
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x2c6
	.byte	0x3e
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x2c6
	.byte	0x4b
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.4byte	.LASF318
	.2byte	0x2c8
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	.LASF319
	.2byte	0x2c0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a54
	.uleb128 0x2
	.string	"buf"
	.2byte	0x2c0
	.byte	0x24
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x2c0
	.byte	0x2d
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x2c0
	.byte	0x36
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x2c0
	.byte	0x43
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF320
	.2byte	0x2a1
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1af8
	.uleb128 0x2
	.string	"buf"
	.2byte	0x2a1
	.byte	0x25
	.4byte	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2
	.string	"len"
	.2byte	0x2a1
	.byte	0x2e
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x2a1
	.byte	0x37
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x2a1
	.byte	0x44
	.4byte	0x2b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xf
	.string	"mac"
	.2byte	0x2a3
	.byte	0xd
	.4byte	0x6bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF321
	.2byte	0x2a4
	.byte	0xd
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xa
	.4byte	.LASF322
	.2byte	0x2a5
	.byte	0xa
	.4byte	0x69d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xa
	.4byte	.LASF179
	.2byte	0x2a6
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.4byte	.LASF323
	.2byte	0x2a7
	.byte	0x16
	.4byte	0x746
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.4byte	.LASF324
	.2byte	0x29b
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b4c
	.uleb128 0x2
	.string	"buf"
	.2byte	0x29b
	.byte	0x28
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x29b
	.byte	0x31
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x29b
	.byte	0x3a
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x29b
	.byte	0x47
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF325
	.2byte	0x295
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ba0
	.uleb128 0x2
	.string	"buf"
	.2byte	0x295
	.byte	0x27
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x295
	.byte	0x30
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x295
	.byte	0x39
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x295
	.byte	0x46
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF326
	.2byte	0x28a
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bf4
	.uleb128 0x2
	.string	"buf"
	.2byte	0x28a
	.byte	0x20
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x28a
	.byte	0x29
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x28a
	.byte	0x32
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x28a
	.byte	0x3f
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF327
	.2byte	0x278
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c6d
	.uleb128 0x2
	.string	"env"
	.2byte	0x278
	.byte	0x1e
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"pkt"
	.2byte	0x278
	.byte	0x2c
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"len"
	.2byte	0x278
	.byte	0x35
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.4byte	.LASF328
	.2byte	0x27a
	.byte	0x19
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	sniffer_counter.2
	.uleb128 0xa
	.4byte	.LASF329
	.2byte	0x27a
	.byte	0x2a
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	sniffer_last.0
	.uleb128 0xa
	.4byte	.LASF330
	.2byte	0x27b
	.byte	0x19
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	last_tick.1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF331
	.2byte	0x273
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cc1
	.uleb128 0x2
	.string	"buf"
	.2byte	0x273
	.byte	0x2d
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x273
	.byte	0x36
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x273
	.byte	0x3f
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x273
	.byte	0x4c
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF332
	.2byte	0x26e
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d15
	.uleb128 0x2
	.string	"buf"
	.2byte	0x26e
	.byte	0x2c
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x26e
	.byte	0x35
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x26e
	.byte	0x3e
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x26e
	.byte	0x4b
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF333
	.2byte	0x269
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d69
	.uleb128 0x2
	.string	"buf"
	.2byte	0x269
	.byte	0x2c
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x269
	.byte	0x35
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x269
	.byte	0x3e
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x269
	.byte	0x4b
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF334
	.2byte	0x264
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dbd
	.uleb128 0x2
	.string	"buf"
	.2byte	0x264
	.byte	0x2b
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x264
	.byte	0x34
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x264
	.byte	0x3d
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x264
	.byte	0x4a
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF335
	.2byte	0x243
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e1f
	.uleb128 0x2
	.string	"buf"
	.2byte	0x243
	.byte	0x29
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"len"
	.2byte	0x243
	.byte	0x32
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x243
	.byte	0x3b
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x243
	.byte	0x48
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"rc"
	.2byte	0x245
	.byte	0xe
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x7
	.4byte	.LASF336
	.2byte	0x227
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ead
	.uleb128 0x2
	.string	"buf"
	.2byte	0x227
	.byte	0x28
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"len"
	.2byte	0x227
	.byte	0x31
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x227
	.byte	0x3a
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x227
	.byte	0x47
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.4byte	.LASF190
	.2byte	0x229
	.byte	0xd
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0xf
	.string	"mcs"
	.2byte	0x22a
	.byte	0xd
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"gi"
	.2byte	0x22b
	.byte	0xd
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0xf
	.string	"rc"
	.2byte	0x22c
	.byte	0xe
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x7
	.4byte	.LASF337
	.2byte	0x222
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f01
	.uleb128 0x2
	.string	"buf"
	.2byte	0x222
	.byte	0x31
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x222
	.byte	0x3a
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x222
	.byte	0x43
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x222
	.byte	0x50
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF338
	.2byte	0x21d
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f55
	.uleb128 0x2
	.string	"buf"
	.2byte	0x21d
	.byte	0x32
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x21d
	.byte	0x3b
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x21d
	.byte	0x44
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x21d
	.byte	0x51
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF339
	.2byte	0x1f3
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fc7
	.uleb128 0x2
	.string	"buf"
	.2byte	0x1f3
	.byte	0x2a
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"len"
	.2byte	0x1f3
	.byte	0x33
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x1f3
	.byte	0x3c
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x1f3
	.byte	0x49
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.4byte	.LASF97
	.2byte	0x1f5
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x37
	.4byte	.LASF378
	.4byte	0x1fd7
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__.3
	.byte	0
	.uleb128 0xc
	.4byte	0x9c
	.4byte	0x1fd7
	.uleb128 0xd
	.4byte	0x6a
	.byte	0x16
	.byte	0
	.uleb128 0x14
	.4byte	0x1fc7
	.uleb128 0x7
	.4byte	.LASF340
	.2byte	0x1e6
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x203f
	.uleb128 0x2
	.string	"buf"
	.2byte	0x1e6
	.byte	0x24
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"len"
	.2byte	0x1e6
	.byte	0x2d
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x1e6
	.byte	0x36
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x1e6
	.byte	0x43
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.4byte	.LASF323
	.2byte	0x1e8
	.byte	0x16
	.4byte	0x746
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	.LASF341
	.2byte	0x1e1
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2093
	.uleb128 0x2
	.string	"buf"
	.2byte	0x1e1
	.byte	0x29
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x1e1
	.byte	0x32
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x1e1
	.byte	0x3b
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x1e1
	.byte	0x48
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF342
	.2byte	0x1ab
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2152
	.uleb128 0x2
	.string	"buf"
	.2byte	0x1ab
	.byte	0x27
	.4byte	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.string	"len"
	.2byte	0x1ab
	.byte	0x30
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x1ab
	.byte	0x39
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x1ab
	.byte	0x46
	.4byte	0x2b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xf
	.string	"ip"
	.2byte	0x1b2
	.byte	0xe
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.4byte	.LASF186
	.2byte	0x1b2
	.byte	0x12
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"gw"
	.2byte	0x1b2
	.byte	0x18
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.4byte	.LASF187
	.2byte	0x1b2
	.byte	0x1c
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.4byte	.LASF188
	.2byte	0x1b2
	.byte	0x22
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF343
	.2byte	0x1b3
	.byte	0xa
	.4byte	0x2152
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.4byte	.LASF55
	.2byte	0x1b4
	.byte	0x10
	.4byte	0x340
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0xc
	.4byte	0x95
	.4byte	0x2162
	.uleb128 0xd
	.4byte	0x6a
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	.LASF344
	.2byte	0x1a3
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21b6
	.uleb128 0x2
	.string	"buf"
	.2byte	0x1a3
	.byte	0x27
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x1a3
	.byte	0x30
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x1a3
	.byte	0x39
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x1a3
	.byte	0x46
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF345
	.2byte	0x194
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x221c
	.uleb128 0x2
	.string	"buf"
	.2byte	0x194
	.byte	0x25
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x194
	.byte	0x2e
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x194
	.byte	0x37
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x194
	.byte	0x44
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.string	"seq"
	.2byte	0x196
	.byte	0x15
	.4byte	0xcf
	.uleb128 0x5
	.byte	0x3
	.4byte	seq.4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF346
	.2byte	0x15b
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22dc
	.uleb128 0x2
	.string	"buf"
	.2byte	0x15b
	.byte	0x24
	.4byte	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2
	.string	"len"
	.2byte	0x15b
	.byte	0x2d
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x15b
	.byte	0x36
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x15b
	.byte	0x43
	.4byte	0x2b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xf
	.string	"ip"
	.2byte	0x15d
	.byte	0x10
	.4byte	0x340
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"gw"
	.2byte	0x15d
	.byte	0x14
	.4byte	0x340
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF186
	.2byte	0x15d
	.byte	0x18
	.4byte	0x340
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.4byte	.LASF187
	.2byte	0x15d
	.byte	0x1e
	.4byte	0x340
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.4byte	.LASF188
	.2byte	0x15d
	.byte	0x24
	.4byte	0x340
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF115
	.2byte	0x15e
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.4byte	.LASF347
	.2byte	0x15f
	.byte	0xc
	.4byte	0x154b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x7
	.4byte	.LASF348
	.2byte	0x14e
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x233f
	.uleb128 0x2
	.string	"buf"
	.2byte	0x14e
	.byte	0x28
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"len"
	.2byte	0x14e
	.byte	0x31
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x14e
	.byte	0x3a
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x14e
	.byte	0x47
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.4byte	.LASF349
	.2byte	0x150
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	.LASF350
	.2byte	0x149
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2393
	.uleb128 0x2
	.string	"buf"
	.2byte	0x149
	.byte	0x21
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x149
	.byte	0x2a
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x149
	.byte	0x33
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x149
	.byte	0x40
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF351
	.2byte	0x131
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23f6
	.uleb128 0x2
	.string	"buf"
	.2byte	0x131
	.byte	0x24
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"len"
	.2byte	0x131
	.byte	0x2d
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x131
	.byte	0x36
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x131
	.byte	0x43
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.4byte	.LASF352
	.2byte	0x133
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF353
	.2byte	0x12c
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x244a
	.uleb128 0x2
	.string	"buf"
	.2byte	0x12c
	.byte	0x1f
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"len"
	.2byte	0x12c
	.byte	0x28
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x12c
	.byte	0x31
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x12c
	.byte	0x3e
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x38
	.4byte	.LASF379
	.byte	0x2
	.2byte	0x10c
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2474
	.uleb128 0xf
	.string	"i"
	.2byte	0x10e
	.byte	0x9
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x39
	.4byte	.LASF354
	.byte	0x2
	.2byte	0x106
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.4byte	.LASF355
	.byte	0xe6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2510
	.uleb128 0x1a
	.string	"buf"
	.byte	0xe6
	.byte	0x26
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.string	"len"
	.byte	0xe6
	.byte	0x2f
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.4byte	.LASF298
	.byte	0xe6
	.byte	0x38
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.4byte	.LASF299
	.byte	0xe6
	.byte	0x45
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.4byte	.LASF356
	.byte	0xe8
	.byte	0xd
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xe
	.4byte	.LASF357
	.byte	0xe8
	.byte	0x17
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0xe
	.4byte	.LASF358
	.byte	0xe8
	.byte	0x22
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0xe
	.4byte	.LASF359
	.byte	0xe9
	.byte	0xe
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x20
	.4byte	.LASF360
	.byte	0xb1
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2599
	.uleb128 0x1a
	.string	"buf"
	.byte	0xb1
	.byte	0x2a
	.4byte	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1a
	.string	"len"
	.byte	0xb1
	.byte	0x33
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x16
	.4byte	.LASF298
	.byte	0xb1
	.byte	0x3c
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x16
	.4byte	.LASF299
	.byte	0xb1
	.byte	0x49
	.4byte	0x2b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0xb3
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF361
	.byte	0xb4
	.byte	0xd
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0xe
	.4byte	.LASF362
	.byte	0xb5
	.byte	0x20
	.4byte	0x6dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.4byte	.LASF363
	.byte	0xb6
	.byte	0xd
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.byte	0
	.uleb128 0x20
	.4byte	.LASF364
	.byte	0x72
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2649
	.uleb128 0x1a
	.string	"buf"
	.byte	0x72
	.byte	0x2c
	.4byte	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1a
	.string	"len"
	.byte	0x72
	.byte	0x35
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x16
	.4byte	.LASF298
	.byte	0x72
	.byte	0x3e
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x16
	.4byte	.LASF299
	.byte	0x72
	.byte	0x4b
	.4byte	0x2b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0x74
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xe
	.4byte	.LASF361
	.byte	0x75
	.byte	0xd
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x1b
	.string	"i"
	.byte	0x75
	.byte	0x1a
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1b
	.string	"j"
	.byte	0x75
	.byte	0x1d
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0xe
	.4byte	.LASF362
	.byte	0x76
	.byte	0x20
	.4byte	0x6dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xe
	.4byte	.LASF365
	.byte	0x77
	.byte	0xf
	.4byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.4byte	.LASF366
	.byte	0x78
	.byte	0xd
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.byte	0
	.uleb128 0x20
	.4byte	.LASF367
	.byte	0x60
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26bc
	.uleb128 0x16
	.4byte	.LASF363
	.byte	0x60
	.byte	0x26
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x16
	.4byte	.LASF368
	.byte	0x60
	.byte	0x35
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"i"
	.byte	0x62
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF369
	.byte	0x62
	.byte	0xc
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.4byte	.LASF370
	.byte	0x62
	.byte	0x15
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"val"
	.byte	0x63
	.byte	0xe
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x1b
	.string	"q"
	.byte	0x64
	.byte	0xb
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF372
	.byte	0x2
	.byte	0x50
	.byte	0x16
	.4byte	0x32
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26f3
	.uleb128 0x16
	.4byte	.LASF371
	.byte	0x50
	.byte	0x27
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1b
	.string	"ret"
	.byte	0x52
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF373
	.byte	0x1
	.2byte	0x12a
	.byte	0x13
	.4byte	0x63
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x272f
	.uleb128 0x3
	.4byte	.LASF374
	.byte	0x1
	.2byte	0x12a
	.byte	0x3f
	.4byte	0x272f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF375
	.byte	0x1
	.2byte	0x12a
	.byte	0x5c
	.4byte	0x2734
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	0xdfb
	.uleb128 0x9
	.4byte	0xb60
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
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0xb
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
	.uleb128 0xf
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
	.uleb128 0xb
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 16
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x21
	.sleb128 820
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0
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
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.4byte	0x194
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"int8_t"
.LASF13:
	.string	"size_t"
.LASF339:
	.string	"wifi_sta_get_state_cmd"
.LASF268:
	.string	"wifi_mgmr_sta_ip_set"
.LASF67:
	.string	"MEMP_TCP_PCB"
.LASF102:
	.string	"igmp_mac_filter"
.LASF113:
	.string	"tsfhi"
.LASF316:
	.string	"cmd_wifi_dump"
.LASF131:
	.string	"WIFI_STATE_WITH_AP_DISCONNECT"
.LASF342:
	.string	"wifi_sta_ip_set_cmd"
.LASF249:
	.string	"wifi_mgmr_conf_max_sta"
.LASF142:
	.string	"guard"
.LASF76:
	.string	"MEMP_SYS_TIMEOUT"
.LASF378:
	.string	"__func__"
.LASF273:
	.string	"wifi_mgmr_sta_disconnect"
.LASF70:
	.string	"MEMP_ALTCP_PCB"
.LASF302:
	.string	"cmd_wifi_state_get"
.LASF306:
	.string	"cmd_wifi_coex_pti_force_on"
.LASF129:
	.string	"WIFI_STATE_WITH_AP_CONNECTED_IP_GETTING"
.LASF36:
	.string	"ucDummy3"
.LASF97:
	.string	"state"
.LASF213:
	.string	"channel_nums"
.LASF31:
	.string	"ucDummy8"
.LASF164:
	.string	"WIFI_MGMR_CONNECTION_STATUS_T"
.LASF290:
	.string	"puts"
.LASF85:
	.string	"lwip_internal_netif_client_data_index"
.LASF118:
	.string	"sniffer_cb_t"
.LASF295:
	.string	"wifi_mgmr_state_get"
.LASF329:
	.string	"sniffer_last"
.LASF137:
	.string	"type"
.LASF126:
	.string	"WIFI_STATE_DISCONNECT"
.LASF267:
	.string	"wifi_mgmr_sta_ip_unset"
.LASF314:
	.string	"task"
.LASF108:
	.string	"netif_igmp_mac_filter_fn"
.LASF45:
	.string	"API_AC_BE"
.LASF198:
	.string	"wifi_mgmr_connect_ind_stat_info_t"
.LASF44:
	.string	"API_AC_BK"
.LASF258:
	.string	"wifi_mgmr_sniffer_enable"
.LASF174:
	.string	"isUsed"
.LASF222:
	.string	"CFG_ELEMENT_TYPE_OPS_DUMP_DEBUG"
.LASF284:
	.string	"hal_sys_capcode_get"
.LASF197:
	.string	"chan_band"
.LASF157:
	.string	"os_timer_t"
.LASF283:
	.string	"atoi"
.LASF200:
	.string	"ready"
.LASF116:
	.string	"data_rate"
.LASF289:
	.string	"bl60x_edca_get"
.LASF166:
	.string	"ssid"
.LASF39:
	.string	"StaticMessageBuffer_t"
.LASF178:
	.string	"bssid"
.LASF6:
	.string	"long int"
.LASF287:
	.string	"wifi_mgmr_auth_to_str"
.LASF340:
	.string	"wifi_connect_cmd"
.LASF343:
	.string	"addr_str"
.LASF300:
	.string	"power_table_test"
.LASF26:
	.string	"pvDummy1"
.LASF35:
	.string	"pvDummy2"
.LASF22:
	.string	"pvDummy3"
.LASF28:
	.string	"pvDummy5"
.LASF29:
	.string	"pvDummy6"
.LASF154:
	.string	"previousState"
.LASF114:
	.string	"tsflo"
.LASF291:
	.string	"wifi_mgmr_ap_sta_delete"
.LASF285:
	.string	"xTaskGetTickCount"
.LASF134:
	.string	"WIFI_STATE_PSK_ERROR"
.LASF54:
	.string	"ip4_addr"
.LASF334:
	.string	"wifi_denoise_enable_cmd"
.LASF122:
	.string	"WIFI_STATE_IDLE"
.LASF360:
	.string	"wifi_ap_sta_delete_cmd"
.LASF348:
	.string	"wifi_scan_filter_cmd"
.LASF260:
	.string	"wifi_mgmr_api_denoise_disable"
.LASF338:
	.string	"wifi_disable_autoreconnect_cmd"
.LASF117:
	.string	"wifi_interface_t"
.LASF94:
	.string	"linkoutput"
.LASF264:
	.string	"wifi_mgmr_sta_autoconnect_disable"
.LASF101:
	.string	"hwaddr_len"
.LASF79:
	.string	"MEMP_PBUF_POOL"
.LASF2:
	.string	"signed char"
.LASF15:
	.string	"uint8_t"
.LASF321:
	.string	"hidden_ssid"
.LASF111:
	.string	"is_used"
.LASF190:
	.string	"mode"
.LASF143:
	.string	"action"
.LASF237:
	.string	"coex_wifi_pta_forece_enable"
.LASF32:
	.string	"StaticTimer_t"
.LASF146:
	.string	"parentState"
.LASF185:
	.string	"wifi_mgmr_scan_item_t"
.LASF233:
	.string	"packet_raw"
.LASF373:
	.string	"wifi_mgmr_scan_item_is_timeout"
.LASF3:
	.string	"unsigned char"
.LASF189:
	.string	"wlan_netif"
.LASF271:
	.string	"wifi_mgmr_sta_disable"
.LASF288:
	.string	"wifi_mgmr_api_fw_powersaving"
.LASF347:
	.string	"power_rate_table"
.LASF352:
	.string	"capcode"
.LASF52:
	.string	"u32_t"
.LASF354:
	.string	"wifi_mgmr_cli_powersaving_on"
.LASF71:
	.string	"MEMP_NETBUF"
.LASF217:
	.string	"wifi_mgmr_t"
.LASF350:
	.string	"wifi_scan_cmd"
.LASF145:
	.string	"_Bool"
.LASF315:
	.string	"element"
.LASF377:
	.string	"wifiMgmr"
.LASF12:
	.string	"char"
.LASF281:
	.string	"wifi_mgmr_scan"
.LASF224:
	.string	"getopt_env"
.LASF93:
	.string	"output"
.LASF346:
	.string	"wifi_sta_ip_info"
.LASF58:
	.string	"pbuf"
.LASF277:
	.string	"wifi_mgmr_rssi_get"
.LASF196:
	.string	"chan_freq"
.LASF175:
	.string	"wifi_mgmr_profile_t"
.LASF124:
	.string	"WIFI_STATE_CONNECTED_IP_GETTING"
.LASF210:
	.string	"wifi_mgmr_stat_info"
.LASF65:
	.string	"MEMP_RAW_PCB"
.LASF247:
	.string	"bl60x_fw_dump_statistic"
.LASF183:
	.string	"cipher"
.LASF256:
	.string	"wifi_mgmr_sniffer_disable"
.LASF208:
	.string	"mq_pool"
.LASF301:
	.string	"cmd_wifi_power_table_update"
.LASF209:
	.string	"timer"
.LASF25:
	.string	"xSTATIC_TIMER"
.LASF110:
	.string	"sta_idx"
.LASF63:
	.string	"flags"
.LASF223:
	.string	"CFG_ELEMENT_TYPE_OPS_UNKNOWN"
.LASF243:
	.string	"strcmp"
.LASF90:
	.string	"ip_addr"
.LASF171:
	.string	"dhcp_use"
.LASF262:
	.string	"wifi_mgmr_rate_config"
.LASF254:
	.string	"wifi_mgmr_sniffer_unregister"
.LASF328:
	.string	"sniffer_counter"
.LASF215:
	.string	"features"
.LASF263:
	.string	"wifi_mgmr_sta_autoconnect_enable"
.LASF92:
	.string	"input"
.LASF335:
	.string	"wifi_rc_fixed_disable"
.LASF181:
	.string	"ppm_rel"
.LASF266:
	.string	"wifi_mgmr_sta_enable"
.LASF309:
	.string	"cmd_dump_reset"
.LASF364:
	.string	"wifi_ap_sta_list_get_cmd"
.LASF246:
	.string	"vTaskExitCritical"
.LASF296:
	.string	"printf"
.LASF73:
	.string	"MEMP_TCPIP_MSG_API"
.LASF323:
	.string	"wifi_interface"
.LASF170:
	.string	"pmk_len"
.LASF38:
	.string	"StaticStreamBuffer_t"
.LASF72:
	.string	"MEMP_NETCONN"
.LASF162:
	.string	"WIFI_MGMR_CONNECTION_STATUS_CONNECTED_IP_NO"
.LASF330:
	.string	"last_tick"
.LASF151:
	.string	"exitAction"
.LASF82:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF95:
	.string	"status_callback"
.LASF274:
	.string	"wifi_mgmr_raw_80211_send"
.LASF156:
	.string	"os_messagequeue_t"
.LASF308:
	.string	"cmd_wifi_coex_rf_force_on"
.LASF245:
	.string	"hal_mib_dump"
.LASF371:
	.string	"asccode"
.LASF121:
	.string	"WIFI_STATE_UNKNOWN"
.LASF203:
	.string	"wlan_ap"
.LASF43:
	.string	"function"
.LASF366:
	.string	"index"
.LASF226:
	.string	"optind"
.LASF278:
	.string	"wifi_mgmr_sta_dns_get"
.LASF7:
	.string	"long unsigned int"
.LASF184:
	.string	"timestamp_lastseen"
.LASF361:
	.string	"sta_cnt"
.LASF89:
	.string	"netif"
.LASF204:
	.string	"status"
.LASF194:
	.string	"status_code"
.LASF100:
	.string	"hwaddr"
.LASF179:
	.string	"channel"
.LASF62:
	.string	"type_internal"
.LASF255:
	.string	"wifi_mgmr_ap_enable"
.LASF235:
	.string	"cmds_user"
.LASF34:
	.string	"uxDummy1"
.LASF37:
	.string	"uxDummy4"
.LASF30:
	.string	"uxDummy7"
.LASF232:
	.string	"data_rate_list"
.LASF60:
	.string	"payload"
.LASF298:
	.string	"argc"
.LASF119:
	.string	"scan_complete_cb_t"
.LASF86:
	.string	"netif_mac_filter_action"
.LASF299:
	.string	"argv"
.LASF331:
	.string	"wifi_power_saving_off_cmd"
.LASF252:
	.string	"snprintf"
.LASF231:
	.string	"wifi_ap_data_rate"
.LASF205:
	.string	"profiles"
.LASF8:
	.string	"long long int"
.LASF182:
	.string	"auth"
.LASF345:
	.string	"cmd_wifi_raw_send"
.LASF355:
	.string	"wifi_edca_dump_cmd"
.LASF83:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF201:
	.string	"inf_ap_enabled"
.LASF173:
	.string	"isActive"
.LASF365:
	.string	"sta_time"
.LASF177:
	.string	"ssid_tail"
.LASF56:
	.string	"ip4_addr_t"
.LASF374:
	.string	"mgmr"
.LASF276:
	.string	"bl_tpc_power_table_get"
.LASF324:
	.string	"wifi_sniffer_off_cmd"
.LASF303:
	.string	"cmd_wifi_coex_pta_force_off"
.LASF91:
	.string	"netmask"
.LASF244:
	.string	"utils_getopt_init"
.LASF186:
	.string	"mask"
.LASF229:
	.string	"__optpos"
.LASF307:
	.string	"cmd_wifi_coex_rf_force_off"
.LASF286:
	.string	"wifi_mgmr_cipher_to_str"
.LASF241:
	.string	"wifi_mgmr_cfg_req"
.LASF187:
	.string	"dns1"
.LASF188:
	.string	"dns2"
.LASF270:
	.string	"ipaddr_addr"
.LASF230:
	.string	"getopt_env_t"
.LASF18:
	.string	"TaskFunction_t"
.LASF136:
	.string	"event"
.LASF42:
	.string	"help"
.LASF55:
	.string	"addr"
.LASF234:
	.string	"pkt_counter"
.LASF358:
	.string	"cwmax"
.LASF326:
	.string	"wifi_mon_cmd"
.LASF10:
	.string	"unsigned int"
.LASF219:
	.string	"CFG_ELEMENT_TYPE_OPS_SET"
.LASF51:
	.string	"u16_t"
.LASF103:
	.string	"acd_list"
.LASF192:
	.string	"ipv4"
.LASF193:
	.string	"wifi_mgmr_connect_ind_stat_info"
.LASF165:
	.string	"wifi_mgmr_profile"
.LASF104:
	.string	"netif_input_fn"
.LASF279:
	.string	"wifi_mgmr_sta_ip_get"
.LASF221:
	.string	"CFG_ELEMENT_TYPE_OPS_RESET"
.LASF120:
	.string	"WIFI_STATE_ENUM_LIST"
.LASF322:
	.string	"ssid_name"
.LASF144:
	.string	"nextState"
.LASF106:
	.string	"netif_linkoutput_fn"
.LASF353:
	.string	"cmd_rf_dump"
.LASF169:
	.string	"psk_len"
.LASF240:
	.string	"utils_hexdump"
.LASF369:
	.string	"str_len"
.LASF379:
	.string	"wifi_mgmr_cli_scanlist"
.LASF318:
	.string	"max_sta_supported"
.LASF356:
	.string	"aifs"
.LASF105:
	.string	"netif_output_fn"
.LASF336:
	.string	"wifi_rc_fixed_enable"
.LASF253:
	.string	"bl_wifi_mac_addr_get"
.LASF61:
	.string	"tot_len"
.LASF214:
	.string	"pending_task"
.LASF376:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF57:
	.string	"ip_addr_t"
.LASF250:
	.string	"wifi_mgmr_ap_stop"
.LASF212:
	.string	"disable_autoreconnect"
.LASF11:
	.string	"long double"
.LASF163:
	.string	"WIFI_MGMR_CONNECTION_STATUS_DISCONNECTED"
.LASF87:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF53:
	.string	"err_t"
.LASF261:
	.string	"wifi_mgmr_api_denoise_enable"
.LASF311:
	.string	"wifi_mgmr_ext_dump_needed"
.LASF211:
	.string	"country_code"
.LASF332:
	.string	"wifi_power_saving_on_cmd"
.LASF372:
	.string	"char_to_hex"
.LASF272:
	.string	"vTaskDelay"
.LASF24:
	.string	"xSTATIC_LIST_ITEM"
.LASF64:
	.string	"if_idx"
.LASF228:
	.string	"optopt"
.LASF251:
	.string	"wifi_mgmr_ap_start"
.LASF344:
	.string	"wifi_disconnect_cmd"
.LASF128:
	.string	"WIFI_STATE_WITH_AP_CONNECTING"
.LASF9:
	.string	"long long unsigned int"
.LASF66:
	.string	"MEMP_UDP_PCB"
.LASF69:
	.string	"MEMP_TCP_SEG"
.LASF16:
	.string	"uint16_t"
.LASF238:
	.string	"coex_wifi_pti_forece_enable"
.LASF74:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF152:
	.string	"stateMachine"
.LASF269:
	.string	"ip4addr_ntoa_r"
.LASF40:
	.string	"cli_command"
.LASF19:
	.string	"UBaseType_t"
.LASF96:
	.string	"link_callback"
.LASF319:
	.string	"cmd_wifi_ap_stop"
.LASF239:
	.string	"coex_wifi_rf_forece_enable"
.LASF20:
	.string	"TickType_t"
.LASF227:
	.string	"opterr"
.LASF84:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF362:
	.string	"sta_info"
.LASF123:
	.string	"WIFI_STATE_CONNECTING"
.LASF77:
	.string	"MEMP_NETDB"
.LASF99:
	.string	"hostname"
.LASF293:
	.string	"memset"
.LASF195:
	.string	"type_ind"
.LASF207:
	.string	"scan_items"
.LASF310:
	.string	"wifi_mgmr_cli_init"
.LASF107:
	.string	"netif_status_callback_fn"
.LASF158:
	.string	"WIFI_MGMR_CONNECTION_STATUS"
.LASF80:
	.string	"MEMP_MAX"
.LASF199:
	.string	"wifi_mgmr"
.LASF46:
	.string	"API_AC_VI"
.LASF47:
	.string	"API_AC_VO"
.LASF280:
	.string	"wifi_mgmr_scan_filter_hidden_ssid"
.LASF313:
	.string	"cmd_wifi_cfg"
.LASF305:
	.string	"cmd_wifi_coex_pti_force_off"
.LASF257:
	.string	"wifi_mgmr_sniffer_register"
.LASF88:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF312:
	.string	"cmd_wifi_mib"
.LASF325:
	.string	"wifi_sniffer_on_cmd"
.LASF341:
	.string	"wifi_sta_ip_unset_cmd"
.LASF294:
	.string	"wifi_mgmr_ap_sta_cnt_get"
.LASF41:
	.string	"name"
.LASF248:
	.string	"vTaskEnterCritical"
.LASF320:
	.string	"cmd_wifi_ap_start"
.LASF161:
	.string	"WIFI_MGMR_CONNECTION_STATUS_CONNECTED_IP_YES"
.LASF78:
	.string	"MEMP_PBUF"
.LASF357:
	.string	"cwmin"
.LASF135:
	.string	"WIFI_STATE_NO_AP_FOUND"
.LASF236:
	.string	"bl_tpc_update_power_table"
.LASF4:
	.string	"short int"
.LASF48:
	.string	"API_AC_MAX"
.LASF275:
	.string	"ip4addr_ntoa"
.LASF259:
	.string	"wifi_mgmr_sta_powersaving"
.LASF216:
	.string	"scan_item_timeout"
.LASF206:
	.string	"profile_active_index"
.LASF133:
	.string	"WIFI_STATE_SNIFFER"
.LASF180:
	.string	"ppm_abs"
.LASF172:
	.string	"priority"
.LASF148:
	.string	"transitions"
.LASF367:
	.string	"chan_str_to_hex"
.LASF191:
	.string	"vif_index"
.LASF304:
	.string	"cmd_wifi_coex_pta_force_on"
.LASF368:
	.string	"sta_str"
.LASF149:
	.string	"numTransitions"
.LASF375:
	.string	"item"
.LASF132:
	.string	"WIFI_STATE_IFDOWN"
.LASF81:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF125:
	.string	"WIFI_STATE_CONNECTED_IP_GOT"
.LASF265:
	.string	"wifi_mgmr_sta_connect"
.LASF349:
	.string	"filter"
.LASF359:
	.string	"txop"
.LASF363:
	.string	"sta_num"
.LASF127:
	.string	"WIFI_STATE_WITH_AP_IDLE"
.LASF282:
	.string	"hal_sys_capcode_update"
.LASF147:
	.string	"entryState"
.LASF242:
	.string	"utils_getopt"
.LASF297:
	.string	"strlen"
.LASF176:
	.string	"wifi_mgmr_scan_item"
.LASF130:
	.string	"WIFI_STATE_WITH_AP_CONNECTED_IP_GOT"
.LASF351:
	.string	"wifi_capcode_cmd"
.LASF218:
	.string	"CFG_ELEMENT_TYPE_OPS"
.LASF75:
	.string	"MEMP_IGMP_GROUP"
.LASF33:
	.string	"xSTATIC_STREAM_BUFFER"
.LASF327:
	.string	"sniffer_cb"
.LASF155:
	.string	"errorState"
.LASF140:
	.string	"eventType"
.LASF21:
	.string	"xDummy2"
.LASF27:
	.string	"xDummy3"
.LASF17:
	.string	"uint32_t"
.LASF167:
	.string	"no_autoconnect"
.LASF292:
	.string	"wifi_mgmr_ap_sta_info_get"
.LASF225:
	.string	"optarg"
.LASF139:
	.string	"transition"
.LASF5:
	.string	"short unsigned int"
.LASF50:
	.string	"s8_t"
.LASF109:
	.string	"wifi_sta_basic_info"
.LASF141:
	.string	"condition"
.LASF370:
	.string	"base"
.LASF150:
	.string	"entryAction"
.LASF49:
	.string	"u8_t"
.LASF23:
	.string	"StaticListItem_t"
.LASF98:
	.string	"client_data"
.LASF220:
	.string	"CFG_ELEMENT_TYPE_OPS_GET"
.LASF317:
	.string	"cmd_wifi_ap_conf_max_sta"
.LASF202:
	.string	"wlan_sta"
.LASF115:
	.string	"rssi"
.LASF159:
	.string	"WIFI_MGMR_CONNECTION_STATUS_IDLE"
.LASF337:
	.string	"wifi_enable_autoreconnect_cmd"
.LASF59:
	.string	"next"
.LASF153:
	.string	"currentState"
.LASF138:
	.string	"data"
.LASF68:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF160:
	.string	"WIFI_MGMR_CONNECTION_STATUS_CONNECTING"
.LASF333:
	.string	"wifi_denoise_disable_cmd"
.LASF168:
	.string	"ssid_len"
.LASF112:
	.string	"sta_mac"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_wifidrv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/wifi_mgmr_cli.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
