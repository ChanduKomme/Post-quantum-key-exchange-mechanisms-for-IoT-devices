	.file	"tc_blfdt_wifi.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blfdt" "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/test/tc_blfdt_wifi.c"
	.section	.text.fdt32_to_cpu,"ax",@progbits
	.align	1
	.type	fdt32_to_cpu, @function
fdt32_to_cpu:
.LFB3:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/libfdt_env.h"
	.loc 1 121 1
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
	.loc 1 122 58
	addi	a5,s0,-20
	.loc 1 122 61
	lbu	a5,0(a5)
	.loc 1 122 66
	slli	a4,a5,24
	.loc 1 122 112
	addi	a5,s0,-20
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 122 117
	slli	a5,a5,16
	.loc 1 122 73
	or	a4,a4,a5
	.loc 1 122 163
	addi	a5,s0,-20
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 122 168
	slli	a5,a5,8
	.loc 1 122 124
	or	a4,a4,a5
	.loc 1 122 212
	addi	a5,s0,-20
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 122 12
	or	a5,a4,a5
	.loc 1 123 1
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
	.size	fdt32_to_cpu, .-fdt32_to_cpu
	.section	.rodata
	.align	2
.LC0:
	.string	"wifi"
	.align	2
.LC1:
	.string	"tc_blfdt_wifi.c"
	.align	2
.LC2:
	.string	"\033[31mERROR \033[0m"
	.align	2
.LC3:
	.string	"[%10u][%s: %s:%4d] wifi NULL.\r\n"
	.align	2
.LC4:
	.string	"region"
	.align	2
.LC5:
	.string	"country_code"
	.align	2
.LC6:
	.string	"\033[32mINFO  \033[0m"
	.align	2
.LC7:
	.string	"[%10u][%s: %s:%4d] value = %ld, lentmp = %d\r\n"
	.align	2
.LC8:
	.string	"[%10u][%s: %s:%4d] country_code NULL.\r\n"
	.align	2
.LC9:
	.string	"mac"
	.align	2
.LC10:
	.string	"sta_mac_addr"
	.align	2
.LC11:
	.string	"[%10u][%s: %s:%4d] sta_mac :\r\n"
	.align	2
.LC12:
	.string	"[%10u][%s: %s:%4d] sta_mac_addr NULL.\r\n"
	.align	2
.LC13:
	.string	"ap_mac_addr"
	.align	2
.LC14:
	.string	"[%10u][%s: %s:%4d] ap_mac :\r\n"
	.align	2
.LC15:
	.string	"ap"
	.align	2
.LC16:
	.string	"ssid"
	.align	2
.LC17:
	.string	"[%10u][%s: %s:%4d] ap string[%d] = %s, lentmp = %d\r\n"
	.align	2
.LC18:
	.string	"[%10u][%s: %s:%4d] ap NULL.\r\n"
	.align	2
.LC19:
	.string	"pwd"
	.align	2
.LC20:
	.string	"[%10u][%s: %s:%4d] pwd string[%d] = %s, lentmp = %d\r\n"
	.align	2
.LC21:
	.string	"[%10u][%s: %s:%4d] pwd NULL.\r\n"
	.align	2
.LC22:
	.string	"ap_channel"
	.align	2
.LC23:
	.string	"[%10u][%s: %s:%4d] ap_channel = %ld\r\n"
	.align	2
.LC24:
	.string	"[%10u][%s: %s:%4d] ap_channel NULL.\r\n"
	.align	2
.LC25:
	.string	"auto_chan_detect"
	.align	2
.LC26:
	.string	"[%10u][%s: %s:%4d] auto_chan_detect string[%d] = %s, lentmp = %d\r\n"
	.align	2
.LC27:
	.string	"[%10u][%s: %s:%4d] auto_chan_detect NULL.\r\n"
	.align	2
.LC28:
	.string	"brd_rf"
	.align	2
.LC29:
	.string	"xtal"
	.align	2
.LC30:
	.string	"[%10u][%s: %s:%4d] xtal :\r\n"
	.align	2
.LC31:
	.string	"[%10u][%s: %s:%4d] xtal NULL."
	.align	2
.LC32:
	.string	"pwr_table"
	.align	2
.LC33:
	.string	"[%10u][%s: %s:%4d] pwr_table :\r\n"
	.align	2
.LC34:
	.string	"[%10u][%s: %s:%4d] pwr_table NULL. lentmp = %d.\r\n"
	.align	2
.LC35:
	.string	"channel_div_table"
	.align	2
.LC36:
	.string	"[%10u][%s: %s:%4d] channel_div_table :\r\n"
	.align	2
.LC37:
	.string	"[%10u][%s: %s:%4d] channel_div_table NULL.\r\n"
	.align	2
.LC38:
	.string	"channel_cnt_table"
	.align	2
.LC39:
	.string	"[%10u][%s: %s:%4d] channel_cnt_table :\r\n"
	.align	2
.LC40:
	.string	"[%10u][%s: %s:%4d] channel_cnt_table NULL.\r\n"
	.align	2
.LC41:
	.string	"lo_fcal_div"
	.align	2
.LC42:
	.string	"[%10u][%s: %s:%4d] lo_fcal_div :\r\n"
	.align	2
.LC43:
	.string	"[%10u][%s: %s:%4d] lo_fcal_div NULL.\r\n"
	.align	2
.LC44:
	.string	"[%10u][%s: %s:%4d] brd_rf NULL.\r\n"
	.section	.text.tc_fdt_wifi_module,"ax",@progbits
	.align	1
	.type	tc_fdt_wifi_module, @function
tc_fdt_wifi_module:
.LFB40:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/test/tc_blfdt_wifi.c"
	.loc 2 39 1
	.cfi_startproc
	addi	sp,sp,-352
	.cfi_def_cfa_offset 352
	sw	ra,348(sp)
	sw	s0,344(sp)
	sw	s1,340(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,352
	.cfi_def_cfa 8, 0
	.loc 2 40 17
	lui	a5,%hi(tc_wifi_dtb)
	addi	a5,a5,%lo(tc_wifi_dtb)
	sw	a5,-24(s0)
	.loc 2 42 9
	sw	zero,-28(s0)
	.loc 2 43 9
	sw	zero,-32(s0)
	.loc 2 45 21
	sw	zero,-36(s0)
	.loc 2 46 17
	sw	zero,-40(s0)
	.loc 2 47 9
	sw	zero,-48(s0)
	.loc 2 48 9
	sw	zero,-44(s0)
	.loc 2 52 19
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	li	a1,0
	lw	a0,-24(s0)
	call	fdt_subnode_offset
	sw	a0,-28(s0)
	.loc 2 54 8
	lw	a5,-28(s0)
	bgt	a5,zero,.L4
.LBB61:
.LBB62:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE62:
.LBE61:
	.loc 2 55 16 discriminator 1
	beq	a5,zero,.L6
	.loc 2 55 94 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L7
.L6:
	.loc 2 55 123 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L7:
	.loc 2 55 16 discriminator 7
	li	a4,55
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	bl_printk
	.loc 2 56 16
	li	a5,-1
	j	.L118
.L4:
	.loc 2 60 15
	lui	a5,%hi(.LC4)
	addi	a2,a5,%lo(.LC4)
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	fdt_subnode_offset
	sw	a0,-32(s0)
	.loc 2 61 8
	lw	a5,-32(s0)
	ble	a5,zero,.L9
	.loc 2 62 21
	addi	a5,s0,-48
	mv	a3,a5
	lui	a5,%hi(.LC5)
	addi	a2,a5,%lo(.LC5)
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	fdt_getprop
	sw	a0,-36(s0)
	.loc 2 63 12
	lw	a5,-36(s0)
	beq	a5,zero,.L10
.LBB63:
.LBB64:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE64:
.LBE63:
	.loc 2 64 20 discriminator 1
	beq	a5,zero,.L12
	.loc 2 64 112 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	s1,a0
	j	.L13
.L12:
	.loc 2 64 141 discriminator 3
	call	xTaskGetTickCount
	mv	s1,a0
.L13:
	.loc 2 64 20 discriminator 7
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a4,a0
	.loc 2 64 20 is_stmt 0 discriminator 8
	lw	a5,-48(s0)
	mv	a6,a5
	mv	a5,a4
	li	a4,64
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC6)
	addi	a2,a2,%lo(.LC6)
	mv	a1,s1
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	call	bl_printk
	j	.L9
.L10:
.LBB65:
.LBB66:
	.loc 3 181 31 is_stmt 1
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE66:
.LBE65:
	.loc 2 66 20 discriminator 1
	beq	a5,zero,.L15
	.loc 2 66 106 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L16
.L15:
	.loc 2 66 135 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L16:
	.loc 2 66 20 discriminator 7
	li	a4,66
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	bl_printk
	.loc 2 67 20
	li	a5,-1
	j	.L118
.L9:
	.loc 2 71 15
	lui	a5,%hi(.LC9)
	addi	a2,a5,%lo(.LC9)
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	fdt_subnode_offset
	sw	a0,-32(s0)
	.loc 2 72 8
	lw	a5,-32(s0)
	ble	a5,zero,.L17
	.loc 2 74 21
	addi	a5,s0,-48
	mv	a3,a5
	lui	a5,%hi(.LC10)
	addi	a2,a5,%lo(.LC10)
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	fdt_getprop
	sw	a0,-36(s0)
	.loc 2 75 20
	lw	a4,-48(s0)
	.loc 2 75 12
	li	a5,6
	bne	a4,a5,.L18
.LBB67:
	.loc 2 78 13
	addi	a5,s0,-56
	li	a2,6
	lw	a1,-36(s0)
	mv	a0,a5
	call	memcpy
.LBB68:
.LBB69:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE69:
.LBE68:
	.loc 2 79 20 discriminator 1
	beq	a5,zero,.L20
	.loc 2 79 97 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L21
.L20:
	.loc 2 79 126 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L21:
	.loc 2 79 20 discriminator 7
	li	a4,79
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	bl_printk
	.loc 2 80 13
	addi	a5,s0,-56
	li	a4,0
	li	a3,6
	mv	a2,a5
	li	a1,80
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	log_buf_out
.LBE67:
	.loc 2 87 21
	addi	a5,s0,-48
	mv	a3,a5
	lui	a5,%hi(.LC13)
	addi	a2,a5,%lo(.LC13)
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	fdt_getprop
	sw	a0,-36(s0)
	.loc 2 88 20
	lw	a4,-48(s0)
	.loc 2 88 12
	li	a5,6
	bne	a4,a5,.L17
	j	.L119
.L18:
.LBB70:
.LBB71:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE71:
.LBE70:
	.loc 2 82 20 discriminator 1
	beq	a5,zero,.L24
	.loc 2 82 106 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L25
.L24:
	.loc 2 82 135 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L25:
	.loc 2 82 20 discriminator 7
	li	a4,82
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	lui	a5,%hi(.LC12)
	addi	a0,a5,%lo(.LC12)
	call	bl_printk
	.loc 2 83 20
	li	a5,-1
	j	.L118
.L119:
.LBB72:
	.loc 2 91 13
	addi	a5,s0,-64
	li	a2,6
	lw	a1,-36(s0)
	mv	a0,a5
	call	memcpy
.LBB73:
.LBB74:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE74:
.LBE73:
	.loc 2 92 20 discriminator 1
	beq	a5,zero,.L27
	.loc 2 92 96 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L28
.L27:
	.loc 2 92 125 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L28:
	.loc 2 92 20 discriminator 7
	li	a4,92
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	lui	a5,%hi(.LC14)
	addi	a0,a5,%lo(.LC14)
	call	bl_printk
	.loc 2 93 13
	addi	a5,s0,-64
	li	a4,0
	li	a3,6
	mv	a2,a5
	li	a1,93
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	log_buf_out
.L17:
.LBE72:
	.loc 2 98 15
	lui	a5,%hi(.LC15)
	addi	a2,a5,%lo(.LC15)
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	fdt_subnode_offset
	sw	a0,-32(s0)
	.loc 2 99 8
	lw	a5,-32(s0)
	ble	a5,zero,.L29
	.loc 2 101 22
	lui	a5,%hi(.LC16)
	addi	a2,a5,%lo(.LC16)
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	fdt_stringlist_count
	sw	a0,-44(s0)
	.loc 2 102 12
	lw	a5,-44(s0)
	ble	a5,zero,.L30
	.loc 2 103 20
	sw	zero,-20(s0)
	.loc 2 103 13
	j	.L31
.L36:
	.loc 2 104 26
	addi	a5,s0,-48
	mv	a4,a5
	lw	a3,-20(s0)
	lui	a5,%hi(.LC16)
	addi	a2,a5,%lo(.LC16)
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	fdt_stringlist_get
	sw	a0,-40(s0)
	.loc 2 105 28
	lw	a5,-48(s0)
	.loc 2 105 20
	ble	a5,zero,.L32
.LBB75:
.LBB76:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE76:
.LBE75:
	.loc 2 106 28 discriminator 1
	beq	a5,zero,.L34
	.loc 2 106 127 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L35
.L34:
	.loc 2 106 156 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L35:
	.loc 2 106 28 discriminator 7
	lw	a5,-48(s0)
	mv	a7,a5
	lw	a6,-40(s0)
	lw	a5,-20(s0)
	li	a4,106
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC6)
	addi	a2,a2,%lo(.LC6)
	lui	a0,%hi(.LC17)
	addi	a0,a0,%lo(.LC17)
	call	bl_printk
.L32:
	.loc 2 103 42 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L31:
	.loc 2 103 27 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	blt	a4,a5,.L36
	j	.L120
.L30:
.LBB77:
.LBB78:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE78:
.LBE77:
	.loc 2 110 20 discriminator 1
	beq	a5,zero,.L39
	.loc 2 110 96 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L40
.L39:
	.loc 2 110 125 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L40:
	.loc 2 110 20 discriminator 7
	li	a4,110
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	lui	a5,%hi(.LC18)
	addi	a0,a5,%lo(.LC18)
	call	bl_printk
	.loc 2 111 20
	li	a5,-1
	j	.L118
.L120:
	.loc 2 115 22
	lui	a5,%hi(.LC19)
	addi	a2,a5,%lo(.LC19)
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	fdt_stringlist_count
	sw	a0,-44(s0)
	.loc 2 116 12
	lw	a5,-44(s0)
	ble	a5,zero,.L41
	.loc 2 117 20
	sw	zero,-20(s0)
	.loc 2 117 13
	j	.L42
.L47:
	.loc 2 118 26
	addi	a5,s0,-48
	mv	a4,a5
	lw	a3,-20(s0)
	lui	a5,%hi(.LC19)
	addi	a2,a5,%lo(.LC19)
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	fdt_stringlist_get
	sw	a0,-40(s0)
	.loc 2 119 28
	lw	a5,-48(s0)
	.loc 2 119 20
	ble	a5,zero,.L43
.LBB79:
.LBB80:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE80:
.LBE79:
	.loc 2 121 28 discriminator 1
	beq	a5,zero,.L45
	.loc 2 121 128 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L46
.L45:
	.loc 2 121 157 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L46:
	.loc 2 121 28 discriminator 7
	lw	a5,-48(s0)
	mv	a7,a5
	lw	a6,-40(s0)
	lw	a5,-20(s0)
	li	a4,121
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC6)
	addi	a2,a2,%lo(.LC6)
	lui	a0,%hi(.LC20)
	addi	a0,a0,%lo(.LC20)
	call	bl_printk
.L43:
	.loc 2 117 42 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L42:
	.loc 2 117 27 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	blt	a4,a5,.L47
	j	.L121
.L41:
.LBB81:
.LBB82:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE82:
.LBE81:
	.loc 2 125 20 discriminator 1
	beq	a5,zero,.L50
	.loc 2 125 97 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L51
.L50:
	.loc 2 125 126 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L51:
	.loc 2 125 20 discriminator 7
	li	a4,125
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	lui	a5,%hi(.LC21)
	addi	a0,a5,%lo(.LC21)
	call	bl_printk
	.loc 2 126 20
	li	a5,-1
	j	.L118
.L121:
	.loc 2 130 21
	addi	a5,s0,-48
	mv	a3,a5
	lui	a5,%hi(.LC22)
	addi	a2,a5,%lo(.LC22)
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	fdt_getprop
	sw	a0,-36(s0)
	.loc 2 131 12
	lw	a5,-36(s0)
	beq	a5,zero,.L52
.LBB83:
.LBB84:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE84:
.LBE83:
	.loc 2 132 20 discriminator 1
	beq	a5,zero,.L54
	.loc 2 132 104 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	s1,a0
	j	.L55
.L54:
	.loc 2 132 133 discriminator 3
	call	xTaskGetTickCount
	mv	s1,a0
.L55:
	.loc 2 132 20 discriminator 7
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 2 132 20 is_stmt 0 discriminator 8
	li	a4,132
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC6)
	addi	a2,a2,%lo(.LC6)
	mv	a1,s1
	lui	a0,%hi(.LC23)
	addi	a0,a0,%lo(.LC23)
	call	bl_printk
	.loc 2 139 22 is_stmt 1
	lui	a5,%hi(.LC25)
	addi	a2,a5,%lo(.LC25)
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	fdt_stringlist_count
	sw	a0,-44(s0)
	.loc 2 140 12
	lw	a5,-44(s0)
	ble	a5,zero,.L60
	j	.L122
.L52:
.LBB85:
.LBB86:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE86:
.LBE85:
	.loc 2 134 20 discriminator 1
	beq	a5,zero,.L58
	.loc 2 134 104 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L59
.L58:
	.loc 2 134 133 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L59:
	.loc 2 134 20 discriminator 7
	li	a4,134
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	lui	a5,%hi(.LC24)
	addi	a0,a5,%lo(.LC24)
	call	bl_printk
	.loc 2 135 20
	li	a5,-1
	j	.L118
.L122:
	.loc 2 141 20
	sw	zero,-20(s0)
	.loc 2 141 13
	j	.L61
.L66:
	.loc 2 142 26
	addi	a5,s0,-48
	mv	a4,a5
	lw	a3,-20(s0)
	lui	a5,%hi(.LC25)
	addi	a2,a5,%lo(.LC25)
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	fdt_stringlist_get
	sw	a0,-40(s0)
	.loc 2 143 28
	lw	a5,-48(s0)
	.loc 2 143 20
	ble	a5,zero,.L62
.LBB87:
.LBB88:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE88:
.LBE87:
	.loc 2 144 28 discriminator 1
	beq	a5,zero,.L64
	.loc 2 144 141 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L65
.L64:
	.loc 2 144 170 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L65:
	.loc 2 144 28 discriminator 7
	lw	a5,-48(s0)
	mv	a7,a5
	lw	a6,-40(s0)
	lw	a5,-20(s0)
	li	a4,144
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC6)
	addi	a2,a2,%lo(.LC6)
	lui	a0,%hi(.LC26)
	addi	a0,a0,%lo(.LC26)
	call	bl_printk
.L62:
	.loc 2 141 42 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L61:
	.loc 2 141 27 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	blt	a4,a5,.L66
	j	.L123
.L60:
.LBB89:
.LBB90:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE90:
.LBE89:
	.loc 2 148 20 discriminator 1
	beq	a5,zero,.L69
	.loc 2 148 110 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L70
.L69:
	.loc 2 148 139 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L70:
	.loc 2 148 20 discriminator 7
	li	a4,148
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	lui	a5,%hi(.LC27)
	addi	a0,a5,%lo(.LC27)
	call	bl_printk
	.loc 2 149 20
	li	a5,-1
	j	.L118
.L29:
.LBB91:
.LBB92:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE92:
.LBE91:
	.loc 2 152 16 discriminator 1
	beq	a5,zero,.L72
	.loc 2 152 92 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L73
.L72:
	.loc 2 152 121 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L73:
	.loc 2 152 16 discriminator 7
	li	a4,152
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	lui	a5,%hi(.LC18)
	addi	a0,a5,%lo(.LC18)
	call	bl_printk
	.loc 2 153 16
	li	a5,-1
	j	.L118
.L123:
	.loc 2 157 15
	lui	a5,%hi(.LC28)
	addi	a2,a5,%lo(.LC28)
	lw	a1,-28(s0)
	lw	a0,-24(s0)
	call	fdt_subnode_offset
	sw	a0,-32(s0)
	.loc 2 158 8
	lw	a5,-32(s0)
	ble	a5,zero,.L74
	.loc 2 160 21
	addi	a5,s0,-48
	mv	a3,a5
	lui	a5,%hi(.LC29)
	addi	a2,a5,%lo(.LC29)
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	fdt_getprop
	sw	a0,-36(s0)
	.loc 2 161 20
	lw	a4,-48(s0)
	.loc 2 161 12
	li	a5,20
	bne	a4,a5,.L75
.LBB93:
	.loc 2 164 13
	addi	a5,s0,-84
	li	a2,20
	lw	a1,-36(s0)
	mv	a0,a5
	call	memcpy
.LBB94:
.LBB95:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE95:
.LBE94:
	.loc 2 165 20 discriminator 1
	beq	a5,zero,.L77
	.loc 2 165 94 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L78
.L77:
	.loc 2 165 123 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L78:
	.loc 2 165 20 discriminator 7
	li	a4,165
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	lui	a5,%hi(.LC30)
	addi	a0,a5,%lo(.LC30)
	call	bl_printk
	.loc 2 166 13
	addi	a5,s0,-84
	li	a4,0
	li	a3,20
	mv	a2,a5
	li	a1,166
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	log_buf_out
.LBE93:
	.loc 2 172 21
	addi	a5,s0,-48
	mv	a3,a5
	lui	a5,%hi(.LC32)
	addi	a2,a5,%lo(.LC32)
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	fdt_getprop
	sw	a0,-36(s0)
	.loc 2 173 20
	lw	a4,-48(s0)
	.loc 2 173 12
	li	a5,256
	bne	a4,a5,.L83
	j	.L124
.L75:
.LBB96:
.LBB97:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE97:
.LBE96:
	.loc 2 168 20 discriminator 1
	beq	a5,zero,.L81
	.loc 2 168 94 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L82
.L81:
	.loc 2 168 123 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L82:
	.loc 2 168 20 discriminator 7
	li	a4,168
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	lui	a5,%hi(.LC31)
	addi	a0,a5,%lo(.LC31)
	call	bl_printk
	.loc 2 169 20
	li	a5,-1
	j	.L118
.L124:
.LBB98:
	.loc 2 176 13
	addi	a5,s0,-344
	li	a2,256
	lw	a1,-36(s0)
	mv	a0,a5
	call	memcpy
.LBB99:
.LBB100:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE100:
.LBE99:
	.loc 2 177 20 discriminator 1
	beq	a5,zero,.L85
	.loc 2 177 99 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L86
.L85:
	.loc 2 177 128 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L86:
	.loc 2 177 20 discriminator 7
	li	a4,177
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	lui	a5,%hi(.LC33)
	addi	a0,a5,%lo(.LC33)
	call	bl_printk
	.loc 2 178 13
	addi	a5,s0,-344
	li	a4,0
	li	a3,256
	mv	a2,a5
	li	a1,178
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	log_buf_out
.LBE98:
	.loc 2 184 21
	addi	a5,s0,-48
	mv	a3,a5
	lui	a5,%hi(.LC35)
	addi	a2,a5,%lo(.LC35)
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	fdt_getprop
	sw	a0,-36(s0)
	.loc 2 185 20
	lw	a4,-48(s0)
	.loc 2 185 12
	li	a5,60
	bne	a4,a5,.L91
	j	.L125
.L83:
.LBB101:
.LBB102:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE102:
.LBE101:
	.loc 2 180 20 discriminator 1
	beq	a5,zero,.L89
	.loc 2 180 116 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L90
.L89:
	.loc 2 180 145 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L90:
	.loc 2 180 20 discriminator 7
	lw	a5,-48(s0)
	li	a4,180
	lui	a3,%hi(.LC1)
	addi	a3,a3,%lo(.LC1)
	lui	a2,%hi(.LC2)
	addi	a2,a2,%lo(.LC2)
	lui	a0,%hi(.LC34)
	addi	a0,a0,%lo(.LC34)
	call	bl_printk
	.loc 2 181 20
	li	a5,-1
	j	.L118
.L125:
.LBB103:
	.loc 2 188 13
	addi	a5,s0,-344
	li	a2,60
	lw	a1,-36(s0)
	mv	a0,a5
	call	memcpy
.LBB104:
.LBB105:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE105:
.LBE104:
	.loc 2 189 20 discriminator 1
	beq	a5,zero,.L93
	.loc 2 189 107 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L94
.L93:
	.loc 2 189 136 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L94:
	.loc 2 189 20 discriminator 7
	li	a4,189
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	lui	a5,%hi(.LC36)
	addi	a0,a5,%lo(.LC36)
	call	bl_printk
	.loc 2 190 13
	addi	a5,s0,-344
	li	a4,0
	li	a3,60
	mv	a2,a5
	li	a1,190
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	log_buf_out
.LBE103:
	.loc 2 196 21
	addi	a5,s0,-48
	mv	a3,a5
	lui	a5,%hi(.LC38)
	addi	a2,a5,%lo(.LC38)
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	fdt_getprop
	sw	a0,-36(s0)
	.loc 2 197 20
	lw	a4,-48(s0)
	.loc 2 197 12
	li	a5,56
	bne	a4,a5,.L99
	j	.L126
.L91:
.LBB106:
.LBB107:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE107:
.LBE106:
	.loc 2 192 20 discriminator 1
	beq	a5,zero,.L97
	.loc 2 192 111 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L98
.L97:
	.loc 2 192 140 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L98:
	.loc 2 192 20 discriminator 7
	li	a4,192
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	lui	a5,%hi(.LC37)
	addi	a0,a5,%lo(.LC37)
	call	bl_printk
	.loc 2 193 20
	li	a5,-1
	j	.L118
.L126:
.LBB108:
	.loc 2 200 13
	addi	a5,s0,-344
	li	a2,56
	lw	a1,-36(s0)
	mv	a0,a5
	call	memcpy
.LBB109:
.LBB110:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE110:
.LBE109:
	.loc 2 201 20 discriminator 1
	beq	a5,zero,.L101
	.loc 2 201 107 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L102
.L101:
	.loc 2 201 136 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L102:
	.loc 2 201 20 discriminator 7
	li	a4,201
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	lui	a5,%hi(.LC39)
	addi	a0,a5,%lo(.LC39)
	call	bl_printk
	.loc 2 202 13
	addi	a5,s0,-344
	li	a4,0
	li	a3,56
	mv	a2,a5
	li	a1,202
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	log_buf_out
.LBE108:
	.loc 2 208 21
	addi	a5,s0,-48
	mv	a3,a5
	lui	a5,%hi(.LC41)
	addi	a2,a5,%lo(.LC41)
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	fdt_getprop
	sw	a0,-36(s0)
	.loc 2 209 20
	lw	a4,-48(s0)
	.loc 2 209 12
	li	a5,4
	bne	a4,a5,.L107
	j	.L127
.L99:
.LBB111:
.LBB112:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE112:
.LBE111:
	.loc 2 204 20 discriminator 1
	beq	a5,zero,.L105
	.loc 2 204 111 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L106
.L105:
	.loc 2 204 140 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L106:
	.loc 2 204 20 discriminator 7
	li	a4,204
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	lui	a5,%hi(.LC40)
	addi	a0,a5,%lo(.LC40)
	call	bl_printk
	.loc 2 205 20
	li	a5,-1
	j	.L118
.L127:
.LBB113:
	.loc 2 212 13
	addi	a5,s0,-88
	li	a2,4
	lw	a1,-36(s0)
	mv	a0,a5
	call	memcpy
.LBB114:
.LBB115:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE115:
.LBE114:
	.loc 2 213 20 discriminator 1
	beq	a5,zero,.L109
	.loc 2 213 101 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L110
.L109:
	.loc 2 213 130 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L110:
	.loc 2 213 20 discriminator 7
	li	a4,213
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	lui	a5,%hi(.LC42)
	addi	a0,a5,%lo(.LC42)
	call	bl_printk
	.loc 2 214 13
	addi	a5,s0,-88
	li	a4,0
	li	a3,4
	mv	a2,a5
	li	a1,214
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	log_buf_out
.LBE113:
	.loc 2 224 12
	li	a5,0
	j	.L118
.L107:
.LBB116:
.LBB117:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE117:
.LBE116:
	.loc 2 216 20 discriminator 1
	beq	a5,zero,.L113
	.loc 2 216 105 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L114
.L113:
	.loc 2 216 134 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L114:
	.loc 2 216 20 discriminator 7
	li	a4,216
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	lui	a5,%hi(.LC43)
	addi	a0,a5,%lo(.LC43)
	call	bl_printk
	.loc 2 217 20
	li	a5,-1
	j	.L118
.L74:
.LBB118:
.LBB119:
	.loc 3 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE119:
.LBE118:
	.loc 2 220 16 discriminator 1
	beq	a5,zero,.L116
	.loc 2 220 96 discriminator 2
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L117
.L116:
	.loc 2 220 125 discriminator 3
	call	xTaskGetTickCount
	mv	a1,a0
.L117:
	.loc 2 220 16 discriminator 7
	li	a4,220
	lui	a5,%hi(.LC1)
	addi	a3,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	lui	a5,%hi(.LC44)
	addi	a0,a5,%lo(.LC44)
	call	bl_printk
	.loc 2 221 16
	li	a5,-1
.L118:
	.loc 2 225 1
	mv	a0,a5
	lw	ra,348(sp)
	.cfi_restore 1
	lw	s0,344(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 352
	lw	s1,340(sp)
	.cfi_restore 9
	addi	sp,sp,352
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE40:
	.size	tc_fdt_wifi_module, .-tc_fdt_wifi_module
	.section	.rodata
	.align	2
.LC45:
	.string	"fdt wifi module failed\r\n"
	.align	2
.LC46:
	.string	"fdt wifi module successed\r\n"
	.section	.text.tc_fdt_wifi,"ax",@progbits
	.align	1
	.globl	tc_fdt_wifi
	.type	tc_fdt_wifi, @function
tc_fdt_wifi:
.LFB41:
	.loc 2 228 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 230 14
	call	tc_fdt_wifi_module
	sw	a0,-20(s0)
	.loc 2 232 8
	lw	a5,-20(s0)
	beq	a5,zero,.L129
	.loc 2 233 9
	lui	a5,%hi(.LC45)
	addi	a0,a5,%lo(.LC45)
	call	printf
	j	.L130
.L129:
	.loc 2 235 9
	lui	a5,%hi(.LC46)
	addi	a0,a5,%lo(.LC46)
	call	printf
.L130:
	.loc 2 238 12
	lw	a5,-20(s0)
	.loc 2 239 1
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
	.size	tc_fdt_wifi, .-tc_fdt_wifi
	.text
.Letext0:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_log.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/libfdt.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x609
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x5
	.byte	0x28
	.byte	0x12
	.4byte	0x6d
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x85
	.uleb128 0x9
	.4byte	0x74
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0xa4
	.uleb128 0x9
	.4byte	0x93
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x15
	.byte	0x4
	.uleb128 0xc
	.4byte	0xb2
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x9
	.4byte	0xb9
	.uleb128 0xa
	.4byte	0xc0
	.uleb128 0xc
	.4byte	0xc5
	.uleb128 0xa
	.4byte	0xd9
	.uleb128 0xc
	.4byte	0xcf
	.uleb128 0x16
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x1
	.byte	0x63
	.byte	0x12
	.4byte	0x93
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x3
	.byte	0x3f
	.byte	0x11
	.4byte	0x61
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x93
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x3
	.byte	0x5c
	.byte	0x13
	.4byte	0xe6
	.uleb128 0x17
	.4byte	.LASF49
	.byte	0x7
	.byte	0x1
	.4byte	0x85
	.byte	0x6
	.byte	0x55
	.byte	0xe
	.4byte	0x12f
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x6
	.byte	0x59
	.byte	0x3
	.4byte	0x10a
	.uleb128 0x6
	.4byte	0x80
	.4byte	0x146
	.uleb128 0x18
	.byte	0
	.uleb128 0x9
	.4byte	0x13b
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x2
	.byte	0x24
	.byte	0x16
	.4byte	0x146
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x7
	.byte	0xce
	.byte	0x5
	.4byte	0x2b
	.4byte	0x16e
	.uleb128 0x2
	.4byte	0xca
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF27
	.2byte	0x470
	.byte	0xd
	.4byte	0xc5
	.4byte	0x198
	.uleb128 0x2
	.4byte	0xcf
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0xc5
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x198
	.byte	0
	.uleb128 0xa
	.4byte	0x2b
	.uleb128 0xb
	.4byte	.LASF28
	.2byte	0x440
	.byte	0x5
	.4byte	0x2b
	.4byte	0x1bd
	.uleb128 0x2
	.4byte	0xcf
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0xc5
	.byte	0
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x6
	.byte	0x9c
	.byte	0x5
	.4byte	0x2b
	.4byte	0x1e7
	.uleb128 0x2
	.4byte	0xc5
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0xcf
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x12f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x9
	.byte	0x1f
	.byte	0x8
	.4byte	0xb2
	.4byte	0x207
	.uleb128 0x2
	.4byte	0xb4
	.uleb128 0x2
	.4byte	0xd4
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.2byte	0x311
	.byte	0xd
	.4byte	0xcf
	.4byte	0x22c
	.uleb128 0x2
	.4byte	0xcf
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0xc5
	.uleb128 0x2
	.4byte	0x198
	.byte	0
	.uleb128 0x19
	.4byte	.LASF50
	.byte	0x6
	.byte	0x9e
	.byte	0x6
	.4byte	0x23f
	.uleb128 0x2
	.4byte	0xc5
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.4byte	.LASF32
	.2byte	0x54c
	.4byte	0xf2
	.uleb128 0x11
	.4byte	.LASF33
	.2byte	0x55d
	.4byte	0xf2
	.uleb128 0xb
	.4byte	.LASF34
	.2byte	0x1de
	.byte	0x5
	.4byte	0x2b
	.4byte	0x275
	.uleb128 0x2
	.4byte	0xcf
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0xc5
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF51
	.byte	0x2
	.byte	0xe3
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29e
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0xe5
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF52
	.byte	0x2
	.byte	0x26
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x576
	.uleb128 0x12
	.string	"fdt"
	.byte	0x28
	.byte	0x11
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x2a
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x2b
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x2d
	.byte	0x15
	.4byte	0x576
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x2e
	.byte	0x11
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x2f
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x30
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.string	"i"
	.byte	0x31
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.4byte	0x351
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x4c
	.byte	0x15
	.4byte	0x57b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.byte	0x4f
	.byte	0x46
	.byte	0
	.uleb128 0x7
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.4byte	0x37c
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x59
	.byte	0x15
	.4byte	0x57b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB73
	.4byte	.LBE73-.LBB73
	.byte	0x5c
	.byte	0x45
	.byte	0
	.uleb128 0x7
	.4byte	.LBB93
	.4byte	.LBE93-.LBB93
	.4byte	0x3a8
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0xa2
	.byte	0x15
	.4byte	0x58b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB94
	.4byte	.LBE94-.LBB94
	.byte	0xa5
	.byte	0x43
	.byte	0
	.uleb128 0x7
	.4byte	.LBB98
	.4byte	.LBE98-.LBB98
	.4byte	0x3d4
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0xae
	.byte	0x15
	.4byte	0x59b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB99
	.4byte	.LBE99-.LBB99
	.byte	0xb1
	.byte	0x48
	.byte	0
	.uleb128 0x7
	.4byte	.LBB103
	.4byte	.LBE103-.LBB103
	.4byte	0x400
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0xba
	.byte	0x15
	.4byte	0x5ab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB104
	.4byte	.LBE104-.LBB104
	.byte	0xbd
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.4byte	.LBB108
	.4byte	.LBE108-.LBB108
	.4byte	0x42c
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0xc6
	.byte	0x15
	.4byte	0x5bb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB109
	.4byte	.LBE109-.LBB109
	.byte	0xc9
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.4byte	.LBB113
	.4byte	.LBE113-.LBB113
	.4byte	0x458
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0xd2
	.byte	0x15
	.4byte	0x5cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB114
	.4byte	.LBE114-.LBB114
	.byte	0xd5
	.byte	0x4a
	.byte	0
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB61
	.4byte	.LBE61-.LBB61
	.byte	0x37
	.byte	0x43
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.byte	0x40
	.byte	0x55
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB65
	.4byte	.LBE65-.LBB65
	.byte	0x42
	.byte	0x4f
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.byte	0x52
	.byte	0x4f
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB75
	.4byte	.LBE75-.LBB75
	.byte	0x6a
	.byte	0x64
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB77
	.4byte	.LBE77-.LBB77
	.byte	0x6e
	.byte	0x45
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB79
	.4byte	.LBE79-.LBB79
	.byte	0x79
	.byte	0x65
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB81
	.4byte	.LBE81-.LBB81
	.byte	0x7d
	.byte	0x46
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB83
	.4byte	.LBE83-.LBB83
	.byte	0x84
	.byte	0x4d
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB85
	.4byte	.LBE85-.LBB85
	.byte	0x86
	.byte	0x4d
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB87
	.4byte	.LBE87-.LBB87
	.byte	0x90
	.byte	0x72
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB89
	.4byte	.LBE89-.LBB89
	.byte	0x94
	.byte	0x53
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB91
	.4byte	.LBE91-.LBB91
	.byte	0x98
	.byte	0x41
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB96
	.4byte	.LBE96-.LBB96
	.byte	0xa8
	.byte	0x43
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB101
	.4byte	.LBE101-.LBB101
	.byte	0xb4
	.byte	0x59
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB106
	.4byte	.LBE106-.LBB106
	.byte	0xc0
	.byte	0x54
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB111
	.4byte	.LBE111-.LBB111
	.byte	0xcc
	.byte	0x54
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB116
	.4byte	.LBE116-.LBB116
	.byte	0xd8
	.byte	0x4e
	.uleb128 0x1
	.4byte	0x5db
	.4byte	.LBB118
	.4byte	.LBE118-.LBB118
	.byte	0xdc
	.byte	0x45
	.byte	0
	.uleb128 0xa
	.4byte	0x9f
	.uleb128 0x6
	.4byte	0x74
	.4byte	0x58b
	.uleb128 0x8
	.4byte	0x3e
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.4byte	0x74
	.4byte	0x59b
	.uleb128 0x8
	.4byte	0x3e
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.4byte	0x74
	.4byte	0x5ab
	.uleb128 0x8
	.4byte	0x3e
	.byte	0xff
	.byte	0
	.uleb128 0x6
	.4byte	0x74
	.4byte	0x5bb
	.uleb128 0x8
	.4byte	0x3e
	.byte	0x3b
	.byte	0
	.uleb128 0x6
	.4byte	0x74
	.4byte	0x5cb
	.uleb128 0x8
	.4byte	0x3e
	.byte	0x37
	.byte	0
	.uleb128 0x6
	.4byte	0x74
	.4byte	0x5db
	.uleb128 0x8
	.4byte	0x3e
	.byte	0x3
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF53
	.byte	0x3
	.byte	0xb3
	.byte	0x3a
	.4byte	0xe6
	.byte	0x3
	.uleb128 0x1d
	.4byte	.LASF54
	.byte	0x1
	.byte	0x78
	.byte	0x18
	.4byte	0x93
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.byte	0x78
	.byte	0x2d
	.4byte	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0xc
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
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
	.4byte	.LFB3
	.uleb128 .LFE3-.LFB3
	.byte	0x7
	.4byte	.LFB40
	.uleb128 .LFE40-.LFB40
	.byte	0x7
	.4byte	.LFB41
	.uleb128 .LFE41-.LFB41
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF47:
	.string	"lo_fcal_div"
.LASF19:
	.string	"TickType_t"
.LASF7:
	.string	"size_t"
.LASF29:
	.string	"log_buf_out"
.LASF28:
	.string	"fdt_stringlist_count"
.LASF25:
	.string	"tc_wifi_dtb"
.LASF37:
	.string	"offset1"
.LASF9:
	.string	"long int"
.LASF23:
	.string	"LOG_BUF_OUT_DATA_TYPE_T"
.LASF17:
	.string	"fdt32_t"
.LASF38:
	.string	"addr_prop"
.LASF21:
	.string	"LOG_BUF_OUT_DATA_TYPE_INT8"
.LASF11:
	.string	"unsigned char"
.LASF50:
	.string	"bl_printk"
.LASF44:
	.string	"pwr_table"
.LASF51:
	.string	"tc_fdt_wifi"
.LASF45:
	.string	"channel_div_table"
.LASF14:
	.string	"long unsigned int"
.LASF12:
	.string	"short unsigned int"
.LASF54:
	.string	"fdt32_to_cpu"
.LASF42:
	.string	"ap_mac"
.LASF24:
	.string	"TrapNetCounter"
.LASF48:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF2:
	.string	"unsigned int"
.LASF41:
	.string	"sta_mac"
.LASF15:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF35:
	.string	"result"
.LASF4:
	.string	"long double"
.LASF3:
	.string	"long long int"
.LASF20:
	.string	"LOG_BUF_OUT_DATA_TYPE_HEX"
.LASF16:
	.string	"char"
.LASF33:
	.string	"xTaskGetTickCountFromISR"
.LASF49:
	.string	"LOG_BUF_OUT_DATA_TYPE"
.LASF26:
	.string	"printf"
.LASF27:
	.string	"fdt_stringlist_get"
.LASF8:
	.string	"int32_t"
.LASF6:
	.string	"short int"
.LASF36:
	.string	"wifi_offset"
.LASF22:
	.string	"LOG_BUF_OUT_DATA_TYPE_UNT8"
.LASF39:
	.string	"lentmp"
.LASF52:
	.string	"tc_fdt_wifi_module"
.LASF13:
	.string	"uint32_t"
.LASF53:
	.string	"xPortIsInsideInterrupt"
.LASF34:
	.string	"fdt_subnode_offset"
.LASF43:
	.string	"xtal"
.LASF46:
	.string	"channel_cnt_table"
.LASF31:
	.string	"fdt_getprop"
.LASF5:
	.string	"signed char"
.LASF30:
	.string	"memcpy"
.LASF32:
	.string	"xTaskGetTickCount"
.LASF18:
	.string	"BaseType_t"
.LASF40:
	.string	"countindex"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/test/tc_blfdt_wifi.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blfdt"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
