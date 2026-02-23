	.file	"hal_board.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_board.c"
	.section	.text.fdt32_to_cpu,"ax",@progbits
	.align	1
	.type	fdt32_to_cpu, @function
fdt32_to_cpu:
.LFB6:
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
.LFE6:
	.size	fdt32_to_cpu, .-fdt32_to_cpu
	.section	.sbss.factory_addr,"aw",@nobits
	.align	2
	.type	factory_addr, @object
	.size	factory_addr, 4
factory_addr:
	.zero	4
	.section	.text.ble_controller_set_tx_pwr,"ax",@progbits
	.align	1
	.type	ble_controller_set_tx_pwr, @function
ble_controller_set_tx_pwr:
.LFB45:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/include/ble_lib_api.h"
	.loc 2 34 1
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
	.loc 2 37 1
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
	.size	ble_controller_set_tx_pwr, .-ble_controller_set_tx_pwr
	.section	.rodata
	.align	2
.LC0:
	.string	"sta_mac_addr"
	.align	2
.LC1:
	.string	"ap_mac_addr"
	.section	.text.update_mac_config_get_mac_from_dtb,"ax",@progbits
	.align	1
	.type	update_mac_config_get_mac_from_dtb, @function
update_mac_config_get_mac_from_dtb:
.LFB46:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_board.c"
	.loc 3 57 1
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
	.loc 3 59 20
	sw	zero,-20(s0)
	.loc 3 62 17
	addi	a5,s0,-24
	mv	a3,a5
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_getprop
	sw	a0,-20(s0)
	.loc 3 63 11
	lw	a4,-24(s0)
	.loc 3 63 8
	li	a5,6
	bne	a4,a5,.L5
	.loc 3 65 9
	li	a2,6
	lw	a1,-20(s0)
	lw	a0,-44(s0)
	call	memcpy
	.loc 3 69 9
	lw	a0,-44(s0)
	call	bl_wifi_sta_mac_addr_set
	.loc 3 75 17
	addi	a5,s0,-24
	mv	a3,a5
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_getprop
	sw	a0,-20(s0)
	.loc 3 76 11
	lw	a4,-24(s0)
	.loc 3 76 8
	li	a5,6
	bne	a4,a5,.L8
	j	.L11
.L5:
	.loc 3 72 16
	li	a5,-1
	j	.L10
.L11:
	.loc 3 78 9
	li	a2,6
	lw	a1,-20(s0)
	lw	a0,-44(s0)
	call	memcpy
	.loc 3 82 9
	lw	a0,-44(s0)
	call	bl_wifi_ap_mac_addr_set
	.loc 3 88 12
	li	a5,0
	j	.L10
.L8:
	.loc 3 85 16
	li	a5,-1
.L10:
	.loc 3 89 1
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
	.size	update_mac_config_get_mac_from_dtb, .-update_mac_config_get_mac_from_dtb
	.section	.text.update_mac_config_get_mac_from_efuse,"ax",@progbits
	.align	1
	.type	update_mac_config_get_mac_from_efuse, @function
update_mac_config_get_mac_from_efuse:
.LFB47:
	.loc 3 92 1
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
	.loc 3 95 5
	lw	a0,-36(s0)
	call	bl_efuse_read_mac
	.loc 3 96 25
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	.loc 3 96 39
	lw	a5,-36(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 3 96 15
	or	a5,a4,a5
	andi	a4,a5,0xff
	.loc 3 96 53
	lw	a5,-36(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 3 96 15
	or	a5,a4,a5
	andi	a4,a5,0xff
	.loc 3 96 67
	lw	a5,-36(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 3 96 15
	or	a5,a4,a5
	andi	a4,a5,0xff
	.loc 3 96 81
	lw	a5,-36(s0)
	addi	a5,a5,4
	lbu	a5,0(a5)
	.loc 3 96 15
	or	a5,a4,a5
	andi	a4,a5,0xff
	.loc 3 96 95
	lw	a5,-36(s0)
	addi	a5,a5,5
	lbu	a5,0(a5)
	.loc 3 96 15
	or	a5,a4,a5
	sb	a5,-17(s0)
	.loc 3 97 26
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	.loc 3 97 40
	lw	a5,-36(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 3 97 16
	and	a5,a4,a5
	andi	a4,a5,0xff
	.loc 3 97 54
	lw	a5,-36(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 3 97 16
	and	a5,a4,a5
	andi	a4,a5,0xff
	.loc 3 97 68
	lw	a5,-36(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 3 97 16
	and	a5,a4,a5
	andi	a4,a5,0xff
	.loc 3 97 82
	lw	a5,-36(s0)
	addi	a5,a5,4
	lbu	a5,0(a5)
	.loc 3 97 16
	and	a5,a4,a5
	andi	a4,a5,0xff
	.loc 3 97 96
	lw	a5,-36(s0)
	addi	a5,a5,5
	lbu	a5,0(a5)
	.loc 3 97 16
	and	a5,a4,a5
	sb	a5,-18(s0)
	.loc 3 99 8
	lbu	a5,-17(s0)
	beq	a5,zero,.L13
	.loc 3 99 24 discriminator 1
	lbu	a4,-18(s0)
	li	a5,1
	bne	a4,a5,.L14
.L13:
	.loc 3 101 16
	li	a5,-1
	j	.L15
.L14:
	.loc 3 103 12
	li	a5,0
.L15:
	.loc 3 104 1
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
.LFE47:
	.size	update_mac_config_get_mac_from_efuse, .-update_mac_config_get_mac_from_efuse
	.section	.text.update_mac_config_get_mac_from_factory,"ax",@progbits
	.align	1
	.type	update_mac_config_get_mac_from_factory, @function
update_mac_config_get_mac_from_factory:
.LFB48:
	.loc 3 107 1
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
	.loc 3 110 9
	lw	a0,-36(s0)
	call	bl_efuse_read_mac_factory
	mv	a5,a0
	.loc 3 110 8 discriminator 1
	beq	a5,zero,.L17
	.loc 3 111 16
	li	a5,-1
	j	.L18
.L17:
	.loc 3 113 25
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	.loc 3 113 39
	lw	a5,-36(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 3 113 15
	or	a5,a4,a5
	andi	a4,a5,0xff
	.loc 3 113 53
	lw	a5,-36(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 3 113 15
	or	a5,a4,a5
	andi	a4,a5,0xff
	.loc 3 113 67
	lw	a5,-36(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 3 113 15
	or	a5,a4,a5
	andi	a4,a5,0xff
	.loc 3 113 81
	lw	a5,-36(s0)
	addi	a5,a5,4
	lbu	a5,0(a5)
	.loc 3 113 15
	or	a5,a4,a5
	andi	a4,a5,0xff
	.loc 3 113 95
	lw	a5,-36(s0)
	addi	a5,a5,5
	lbu	a5,0(a5)
	.loc 3 113 15
	or	a5,a4,a5
	sb	a5,-17(s0)
	.loc 3 114 26
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	.loc 3 114 40
	lw	a5,-36(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 3 114 16
	and	a5,a4,a5
	andi	a4,a5,0xff
	.loc 3 114 54
	lw	a5,-36(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 3 114 16
	and	a5,a4,a5
	andi	a4,a5,0xff
	.loc 3 114 68
	lw	a5,-36(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 3 114 16
	and	a5,a4,a5
	andi	a4,a5,0xff
	.loc 3 114 82
	lw	a5,-36(s0)
	addi	a5,a5,4
	lbu	a5,0(a5)
	.loc 3 114 16
	and	a5,a4,a5
	andi	a4,a5,0xff
	.loc 3 114 96
	lw	a5,-36(s0)
	addi	a5,a5,5
	lbu	a5,0(a5)
	.loc 3 114 16
	and	a5,a4,a5
	sb	a5,-18(s0)
	.loc 3 115 8
	lbu	a5,-17(s0)
	beq	a5,zero,.L19
	.loc 3 115 24 discriminator 1
	lbu	a4,-18(s0)
	li	a5,1
	bne	a4,a5,.L20
.L19:
	.loc 3 117 16
	li	a5,-1
	j	.L18
.L20:
	.loc 3 119 12
	li	a5,0
.L18:
	.loc 3 120 1
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
	.size	update_mac_config_get_mac_from_factory, .-update_mac_config_get_mac_from_factory
	.section	.rodata
	.align	2
.LC2:
	.string	"hal_board.c"
	.align	2
.LC3:
	.string	"\033[35mASSERT\033[0m"
	.align	2
.LC4:
	.string	"[%10u][%s: %s:%4d] ASSERT: %s:%d\r\n"
	.section	.text.update_mac_config_with_order,"ax",@progbits
	.align	1
	.type	update_mac_config_with_order, @function
update_mac_config_with_order:
.LFB49:
	.loc 3 131 1
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
	.loc 3 136 9
	sw	zero,-24(s0)
	.loc 3 137 11
	lw	a0,-60(s0)
	call	strlen
	mv	a5,a0
	.loc 3 137 9 discriminator 1
	sw	a5,-28(s0)
	.loc 3 138 12
	sw	zero,-20(s0)
	.loc 3 138 5
	j	.L22
.L36:
	.loc 3 139 22
	lw	a5,-20(s0)
	lw	a4,-60(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 3 139 9
	li	a4,77
	beq	a5,a4,.L23
	li	a4,77
	bgt	a5,a4,.L38
	li	a4,66
	beq	a5,a4,.L25
	li	a4,70
	beq	a5,a4,.L26
	j	.L38
.L25:
	.loc 3 142 26
	addi	a5,s0,-36
	mv	a0,a5
	call	update_mac_config_get_mac_from_efuse
	mv	a5,a0
	.loc 3 142 20 discriminator 1
	bne	a5,zero,.L39
	.loc 3 143 25
	li	a5,1
	sw	a5,-24(s0)
	.loc 3 145 21
	j	.L28
.L26:
	.loc 3 153 26
	addi	a5,s0,-36
	mv	a2,a5
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	update_mac_config_get_mac_from_dtb
	mv	a5,a0
	.loc 3 153 20 discriminator 1
	bne	a5,zero,.L40
	.loc 3 154 25
	li	a5,1
	sw	a5,-24(s0)
	.loc 3 156 21
	j	.L28
.L23:
	.loc 3 164 26
	addi	a5,s0,-36
	mv	a0,a5
	call	update_mac_config_get_mac_from_factory
	mv	a5,a0
	.loc 3 164 20 discriminator 1
	bne	a5,zero,.L41
	.loc 3 165 25
	li	a5,1
	sw	a5,-24(s0)
	.loc 3 167 21
	j	.L28
.L38:
.LBB8:
.LBB9:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.loc 4 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE9:
.LBE8:
	.loc 3 175 41 discriminator 2
	beq	a5,zero,.L33
	.loc 3 175 122 discriminator 3
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L34
.L33:
	.loc 3 175 151 discriminator 4
	call	xTaskGetTickCount
	mv	a1,a0
.L34:
	.loc 3 175 41 discriminator 8
	li	a6,175
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	li	a4,175
	lui	a3,%hi(.LC2)
	addi	a3,a3,%lo(.LC2)
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	bl_printk
.L35:
	.loc 3 175 262
	nop
	j	.L35
.L39:
	.loc 3 150 13
	nop
	j	.L29
.L40:
	.loc 3 161 13
	nop
	j	.L29
.L41:
	.loc 3 172 13
	nop
.L29:
	.loc 3 138 38 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L22:
	.loc 3 138 25 discriminator 1
	lw	a4,-20(s0)
	li	a5,2
	bgt	a4,a5,.L42
	.loc 3 138 25 is_stmt 0 discriminator 3
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	blt	a4,a5,.L36
.L42:
	.loc 3 179 1 is_stmt 1
	nop
.L28:
	.loc 3 180 8
	lw	a5,-24(s0)
	bne	a5,zero,.L37
	.loc 3 182 9
	addi	a4,s0,-36
	li	a2,6
	lui	a5,%hi(mac_default.0)
	addi	a1,a5,%lo(mac_default.0)
	mv	a0,a4
	call	memcpy
.L37:
	.loc 3 193 5
	addi	a5,s0,-36
	mv	a0,a5
	call	bl_wifi_ap_mac_addr_set
	.loc 3 194 5
	addi	a5,s0,-36
	mv	a0,a5
	call	bl_wifi_sta_mac_addr_set
	.loc 3 195 1
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
.LFE49:
	.size	update_mac_config_with_order, .-update_mac_config_with_order
	.section	.rodata
	.align	2
.LC5:
	.string	"mode"
	.section	.text.update_mac_config,"ax",@progbits
	.align	1
	.type	update_mac_config, @function
update_mac_config:
.LFB50:
	.loc 3 198 1
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
	.loc 3 199 9
	sw	zero,-20(s0)
	.loc 3 199 25
	sw	zero,-28(s0)
	.loc 3 200 17
	sw	zero,-24(s0)
	.loc 3 203 18
	lui	a5,%hi(.LC5)
	addi	a2,a5,%lo(.LC5)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_stringlist_count
	sw	a0,-20(s0)
	.loc 3 204 8
	lw	a4,-20(s0)
	li	a5,1
	bne	a4,a5,.L45
	.loc 3 205 18
	addi	a5,s0,-28
	mv	a4,a5
	li	a3,0
	lui	a5,%hi(.LC5)
	addi	a2,a5,%lo(.LC5)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_stringlist_get
	sw	a0,-24(s0)
	.loc 3 207 20
	lw	a4,-28(s0)
	.loc 3 207 12
	li	a5,3
	bgt	a4,a5,.L45
	.loc 3 208 13
	lw	a5,-28(s0)
	mv	a4,a5
	addi	a5,s0,-32
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	memcpy
	.loc 3 209 25
	sb	zero,-29(s0)
	.loc 3 211 13
	addi	a5,s0,-32
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	update_mac_config_with_order
.L45:
	.loc 3 214 1
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
.LFE50:
	.size	update_mac_config, .-update_mac_config
	.section	.text.update_xtal_config_get_mac_from_factory,"ax",@progbits
	.align	1
	.type	update_xtal_config_get_mac_from_factory, @function
update_xtal_config_get_mac_from_factory:
.LFB51:
	.loc 3 218 1
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
	.loc 3 219 13
	sb	zero,-17(s0)
	.loc 3 221 9
	addi	a5,s0,-17
	mv	a0,a5
	call	bl_efuse_read_capcode
	mv	a5,a0
	.loc 3 221 8 discriminator 1
	beq	a5,zero,.L47
	.loc 3 222 16
	li	a5,-1
	j	.L49
.L47:
	.loc 3 225 16
	lbu	a5,-17(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 3 226 16
	lbu	a4,-17(s0)
	.loc 3 226 12
	lw	a5,-36(s0)
	addi	a5,a5,4
	.loc 3 226 16
	sw	a4,0(a5)
	.loc 3 227 12
	lw	a5,-36(s0)
	addi	a5,a5,8
	.loc 3 227 16
	li	a4,1
	sw	a4,0(a5)
	.loc 3 228 12
	lw	a5,-36(s0)
	addi	a5,a5,12
	.loc 3 228 16
	li	a4,60
	sw	a4,0(a5)
	.loc 3 229 12
	lw	a5,-36(s0)
	addi	a5,a5,16
	.loc 3 229 16
	li	a4,60
	sw	a4,0(a5)
	.loc 3 231 12
	li	a5,0
.L49:
	.loc 3 232 1
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
	.size	update_xtal_config_get_mac_from_factory, .-update_xtal_config_get_mac_from_factory
	.section	.rodata
	.align	2
.LC6:
	.string	"xtal"
	.section	.text.update_xtal_config_get_mac_from_dtb,"ax",@progbits
	.align	1
	.type	update_xtal_config_get_mac_from_dtb, @function
update_xtal_config_get_mac_from_dtb:
.LFB52:
	.loc 3 235 1
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
	.loc 3 236 20
	sw	zero,-20(s0)
	.loc 3 237 9
	sw	zero,-24(s0)
	.loc 3 239 17
	addi	a5,s0,-24
	mv	a3,a5
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_getprop
	sw	a0,-20(s0)
	.loc 3 241 13
	lw	a4,-24(s0)
	.loc 3 241 8
	li	a5,20
	bne	a4,a5,.L51
	.loc 3 250 32
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 3 250 23 discriminator 1
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 3 250 20 discriminator 1
	lw	a5,-44(s0)
	sw	a4,0(a5)
	.loc 3 251 46
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 3 251 32
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 3 251 23 discriminator 1
	andi	a4,a5,0xff
	.loc 3 251 16 discriminator 1
	lw	a5,-44(s0)
	addi	a5,a5,4
	.loc 3 251 20 discriminator 1
	sw	a4,0(a5)
	.loc 3 252 46
	lw	a5,-20(s0)
	addi	a5,a5,8
	.loc 3 252 32
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 3 252 23 discriminator 1
	andi	a4,a5,0xff
	.loc 3 252 16 discriminator 1
	lw	a5,-44(s0)
	addi	a5,a5,8
	.loc 3 252 20 discriminator 1
	sw	a4,0(a5)
	.loc 3 253 46
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 3 253 32
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 3 253 23 discriminator 1
	andi	a4,a5,0xff
	.loc 3 253 16 discriminator 1
	lw	a5,-44(s0)
	addi	a5,a5,12
	.loc 3 253 20 discriminator 1
	sw	a4,0(a5)
	.loc 3 254 46
	lw	a5,-20(s0)
	addi	a5,a5,16
	.loc 3 254 32
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 3 254 23 discriminator 1
	andi	a4,a5,0xff
	.loc 3 254 16 discriminator 1
	lw	a5,-44(s0)
	addi	a5,a5,16
	.loc 3 254 20 discriminator 1
	sw	a4,0(a5)
	.loc 3 259 12
	li	a5,0
	j	.L54
.L51:
	.loc 3 257 16
	li	a5,-1
.L54:
	.loc 3 260 1
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
.LFE52:
	.size	update_xtal_config_get_mac_from_dtb, .-update_xtal_config_get_mac_from_dtb
	.section	.text.update_xtal_config_with_order,"ax",@progbits
	.align	1
	.type	update_xtal_config_with_order, @function
update_xtal_config_with_order:
.LFB53:
	.loc 3 264 1
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
	.loc 3 268 9
	sw	zero,-24(s0)
	.loc 3 269 11
	lw	a0,-60(s0)
	call	strlen
	mv	a5,a0
	.loc 3 269 9 discriminator 1
	sw	a5,-28(s0)
	.loc 3 270 12
	sw	zero,-20(s0)
	.loc 3 270 5
	j	.L56
.L68:
	.loc 3 271 22
	lw	a5,-20(s0)
	lw	a4,-60(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 3 271 9
	li	a4,70
	beq	a5,a4,.L57
	li	a4,77
	beq	a5,a4,.L58
	j	.L71
.L57:
	.loc 3 274 26
	addi	a5,s0,-48
	mv	a2,a5
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	update_xtal_config_get_mac_from_dtb
	mv	a5,a0
	.loc 3 274 20 discriminator 1
	bne	a5,zero,.L72
	.loc 3 275 25
	li	a5,1
	sw	a5,-24(s0)
	.loc 3 277 21
	j	.L61
.L58:
	.loc 3 285 26
	addi	a5,s0,-48
	mv	a0,a5
	call	update_xtal_config_get_mac_from_factory
	mv	a5,a0
	.loc 3 285 20 discriminator 1
	bne	a5,zero,.L73
	.loc 3 286 25
	li	a5,1
	sw	a5,-24(s0)
	.loc 3 288 21
	j	.L61
.L71:
.LBB10:
.LBB11:
	.loc 4 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE11:
.LBE10:
	.loc 3 296 41 discriminator 2
	beq	a5,zero,.L65
	.loc 3 296 122 discriminator 3
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L66
.L65:
	.loc 3 296 151 discriminator 4
	call	xTaskGetTickCount
	mv	a1,a0
.L66:
	.loc 3 296 41 discriminator 8
	li	a6,296
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	li	a4,296
	lui	a3,%hi(.LC2)
	addi	a3,a3,%lo(.LC2)
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	bl_printk
.L67:
	.loc 3 296 262
	nop
	j	.L67
.L72:
	.loc 3 282 13
	nop
	j	.L62
.L73:
	.loc 3 293 13
	nop
.L62:
	.loc 3 270 38 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L56:
	.loc 3 270 25 discriminator 1
	lw	a4,-20(s0)
	li	a5,1
	bgt	a4,a5,.L74
	.loc 3 270 25 is_stmt 0 discriminator 3
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	blt	a4,a5,.L68
.L74:
	.loc 3 300 1 is_stmt 1
	nop
.L61:
	.loc 3 301 8
	lw	a5,-24(s0)
	bne	a5,zero,.L69
	.loc 3 303 20
	li	a5,50
	sw	a5,-48(s0)
	.loc 3 304 20
	li	a5,50
	sw	a5,-44(s0)
	.loc 3 305 20
	li	a5,1
	sw	a5,-40(s0)
	.loc 3 306 20
	li	a5,60
	sw	a5,-36(s0)
	.loc 3 307 20
	li	a5,60
	sw	a5,-32(s0)
.L69:
	.loc 3 309 35
	lw	a5,-48(s0)
	.loc 3 309 5
	andi	a5,a5,0xff
	.loc 3 309 47
	lw	a4,-44(s0)
	.loc 3 309 5
	andi	a4,a4,0xff
	mv	a1,a4
	mv	a0,a5
	call	hal_sys_capcode_update
	.loc 3 310 1
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
.LFE53:
	.size	update_xtal_config_with_order, .-update_xtal_config_with_order
	.section	.rodata
	.align	2
.LC7:
	.string	"xtal_mode"
	.section	.text.update_xtal_config,"ax",@progbits
	.align	1
	.type	update_xtal_config, @function
update_xtal_config:
.LFB54:
	.loc 3 313 1
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
	.loc 3 314 9
	sw	zero,-28(s0)
	.loc 3 316 17
	sw	zero,-20(s0)
	.loc 3 318 18
	lui	a5,%hi(.LC7)
	addi	a2,a5,%lo(.LC7)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_stringlist_count
	sw	a0,-24(s0)
	.loc 3 319 8
	lw	a4,-24(s0)
	li	a5,1
	bne	a4,a5,.L77
	.loc 3 320 18
	addi	a5,s0,-28
	mv	a4,a5
	li	a3,0
	lui	a5,%hi(.LC7)
	addi	a2,a5,%lo(.LC7)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_stringlist_get
	sw	a0,-20(s0)
	.loc 3 322 20
	lw	a4,-28(s0)
	.loc 3 322 12
	li	a5,2
	bgt	a4,a5,.L77
	.loc 3 323 13
	lw	a5,-28(s0)
	mv	a4,a5
	addi	a5,s0,-32
	mv	a2,a4
	lw	a1,-20(s0)
	mv	a0,a5
	call	memcpy
	.loc 3 324 46
	sb	zero,-30(s0)
	.loc 3 326 13
	addi	a5,s0,-32
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	update_xtal_config_with_order
.L77:
	.loc 3 329 1
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
	.size	update_xtal_config, .-update_xtal_config
	.section	.rodata
	.align	2
.LC8:
	.string	"pwr_offset"
	.section	.text.update_poweroffset_config_get_mac_from_dtb,"ax",@progbits
	.align	1
	.type	update_poweroffset_config_get_mac_from_dtb, @function
update_poweroffset_config_get_mac_from_dtb:
.LFB55:
	.loc 3 332 1
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
	.loc 3 333 9
	sw	zero,-28(s0)
	.loc 3 334 20
	sw	zero,-24(s0)
	.loc 3 337 17
	addi	a5,s0,-28
	mv	a3,a5
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_getprop
	sw	a0,-24(s0)
	.loc 3 338 14
	lw	a4,-28(s0)
	.loc 3 338 8
	li	a5,56
	bne	a4,a5,.L79
	.loc 3 339 16
	sw	zero,-20(s0)
	.loc 3 339 9
	j	.L80
.L81:
	.loc 3 340 92
	lw	a5,-20(s0)
	slli	a5,a5,2
	mv	a4,a5
	.loc 3 340 55
	lw	a5,-24(s0)
	add	a5,a5,a4
	.loc 3 340 41
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a3,a0
	.loc 3 340 24 discriminator 1
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	add	a5,a4,a5
	.loc 3 340 28 discriminator 1
	slli	a4,a3,24
	srai	a4,a4,24
	sb	a4,0(a5)
	.loc 3 339 30 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L80:
	.loc 3 339 23 discriminator 1
	lw	a4,-20(s0)
	li	a5,13
	ble	a4,a5,.L81
	.loc 3 344 16
	sw	zero,-20(s0)
	.loc 3 344 9
	j	.L82
.L83:
	.loc 3 345 24
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	add	a5,a4,a5
	lb	a5,0(a5)
	andi	a5,a5,0xff
	.loc 3 345 28
	addi	a5,a5,-10
	andi	a3,a5,0xff
	.loc 3 345 24
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	add	a5,a4,a5
	.loc 3 345 28
	slli	a4,a3,24
	srai	a4,a4,24
	sb	a4,0(a5)
	.loc 3 344 30 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L82:
	.loc 3 344 23 discriminator 1
	lw	a4,-20(s0)
	li	a5,13
	ble	a4,a5,.L83
	j	.L87
.L79:
	.loc 3 352 16
	li	a5,-1
	j	.L86
.L87:
	.loc 3 354 12
	li	a5,0
.L86:
	.loc 3 355 1
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
	.size	update_poweroffset_config_get_mac_from_dtb, .-update_poweroffset_config_get_mac_from_dtb
	.section	.text.update_poweroffset_config_with_order,"ax",@progbits
	.align	1
	.type	update_poweroffset_config_with_order, @function
update_poweroffset_config_with_order:
.LFB56:
	.loc 3 358 1
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
	.loc 3 362 5
	addi	a5,s0,-48
	li	a2,14
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 3 363 5
	addi	a5,s0,-64
	li	a2,14
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 3 364 9
	sw	zero,-28(s0)
	.loc 3 365 11
	lw	a0,-76(s0)
	call	strlen
	mv	a5,a0
	.loc 3 365 9 discriminator 1
	sw	a5,-32(s0)
	.loc 3 366 12
	sw	zero,-20(s0)
	.loc 3 366 5
	j	.L89
.L111:
	.loc 3 367 22
	lw	a5,-20(s0)
	lw	a4,-76(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 3 367 9
	li	a4,102
	beq	a5,a4,.L90
	li	a4,102
	bgt	a5,a4,.L112
	li	a4,98
	beq	a5,a4,.L92
	li	a4,98
	bgt	a5,a4,.L112
	li	a4,66
	beq	a5,a4,.L92
	li	a4,70
	beq	a5,a4,.L90
	j	.L112
.L92:
	.loc 3 371 26
	addi	a5,s0,-64
	mv	a0,a5
	call	bl_efuse_read_pwroft
	mv	a5,a0
	.loc 3 371 20 discriminator 1
	bne	a5,zero,.L114
	.loc 3 372 25
	li	a5,1
	sw	a5,-28(s0)
	.loc 3 374 21
	addi	a5,s0,-64
	li	a4,1
	li	a3,14
	mv	a2,a5
	li	a1,374
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	log_buf_out
	.loc 3 375 37
	lw	a5,-20(s0)
	lw	a4,-76(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 3 375 24
	li	a5,66
	bne	a4,a5,.L94
	.loc 3 377 32
	sw	zero,-24(s0)
	.loc 3 377 25
	j	.L95
.L96:
	.loc 3 378 61
	lw	a5,-24(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lb	a4,-48(a5)
	.loc 3 378 44
	lw	a5,-24(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-32(a5)
	.loc 3 377 63 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L95:
	.loc 3 377 39 discriminator 1
	lw	a4,-24(s0)
	li	a5,13
	bleu	a4,a5,.L96
	.loc 3 381 25
	j	.L113
.L94:
	.loc 3 385 32
	sw	zero,-24(s0)
	.loc 3 385 25
	j	.L98
.L99:
	.loc 3 386 40
	lw	a5,-24(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lb	a5,-32(a5)
	andi	a4,a5,0xff
	.loc 3 386 62
	lw	a5,-24(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lb	a5,-48(a5)
	andi	a5,a5,0xff
	.loc 3 386 44
	add	a5,a4,a5
	andi	a5,a5,0xff
	slli	a4,a5,24
	srai	a4,a4,24
	lw	a5,-24(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-32(a5)
	.loc 3 385 63 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L98:
	.loc 3 385 39 discriminator 1
	lw	a4,-24(s0)
	li	a5,13
	bleu	a4,a5,.L99
	.loc 3 393 13
	j	.L114
.L90:
	.loc 3 397 26
	addi	a5,s0,-64
	mv	a2,a5
	lw	a1,-72(s0)
	lw	a0,-68(s0)
	call	update_poweroffset_config_get_mac_from_dtb
	mv	a5,a0
	.loc 3 397 20 discriminator 1
	bne	a5,zero,.L115
	.loc 3 398 25
	li	a5,1
	sw	a5,-28(s0)
	.loc 3 400 37
	lw	a5,-20(s0)
	lw	a4,-76(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 3 400 24
	li	a5,66
	bne	a4,a5,.L102
	.loc 3 402 32
	sw	zero,-24(s0)
	.loc 3 402 25
	j	.L103
.L104:
	.loc 3 403 61
	lw	a5,-24(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lb	a4,-48(a5)
	.loc 3 403 44
	lw	a5,-24(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-32(a5)
	.loc 3 402 63 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L103:
	.loc 3 402 39 discriminator 1
	lw	a4,-24(s0)
	li	a5,13
	bleu	a4,a5,.L104
	.loc 3 406 25
	j	.L113
.L102:
	.loc 3 410 32
	sw	zero,-24(s0)
	.loc 3 410 25
	j	.L105
.L106:
	.loc 3 411 40
	lw	a5,-24(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lb	a5,-32(a5)
	andi	a4,a5,0xff
	.loc 3 411 62
	lw	a5,-24(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lb	a5,-48(a5)
	andi	a5,a5,0xff
	.loc 3 411 44
	add	a5,a4,a5
	andi	a5,a5,0xff
	slli	a4,a5,24
	srai	a4,a4,24
	lw	a5,-24(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-32(a5)
	.loc 3 410 63 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L105:
	.loc 3 410 39 discriminator 1
	lw	a4,-24(s0)
	li	a5,13
	bleu	a4,a5,.L106
	.loc 3 414 21
	j	.L113
.L112:
.LBB12:
.LBB13:
	.loc 4 181 31
	lui	a5,%hi(TrapNetCounter)
	lw	a5,%lo(TrapNetCounter)(a5)
	snez	a5,a5
	andi	a5,a5,0xff
.LBE13:
.LBE12:
	.loc 3 422 41 discriminator 2
	beq	a5,zero,.L108
	.loc 3 422 122 discriminator 3
	call	xTaskGetTickCountFromISR
	mv	a1,a0
	j	.L109
.L108:
	.loc 3 422 151 discriminator 4
	call	xTaskGetTickCount
	mv	a1,a0
.L109:
	.loc 3 422 41 discriminator 8
	li	a6,422
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	li	a4,422
	lui	a3,%hi(.LC2)
	addi	a3,a3,%lo(.LC2)
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	bl_printk
.L110:
	.loc 3 422 262
	nop
	j	.L110
.L114:
	.loc 3 393 13
	nop
	j	.L100
.L115:
	.loc 3 419 13
	nop
.L100:
	.loc 3 366 38 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L89:
	.loc 3 366 25 discriminator 1
	lw	a4,-20(s0)
	li	a5,1
	bgt	a4,a5,.L116
	.loc 3 366 25 is_stmt 0 discriminator 3
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	blt	a4,a5,.L111
.L97:
.L116:
	.loc 3 426 1 is_stmt 1
	nop
.L113:
	.loc 3 430 5
	addi	a5,s0,-48
	li	a4,1
	li	a3,14
	mv	a2,a5
	li	a1,430
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	log_buf_out
	.loc 3 433 5
	lb	a5,-42(s0)
	mv	a0,a5
	call	ble_rf_set_pwr_offset
	.loc 3 435 5
	addi	a5,s0,-48
	mv	a0,a5
	call	phy_powroffset_set
	.loc 3 436 1
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
.LFE56:
	.size	update_poweroffset_config_with_order, .-update_poweroffset_config_with_order
	.section	.rodata
	.align	2
.LC9:
	.string	"pwr_mode"
	.section	.text.update_poweroffset_config,"ax",@progbits
	.align	1
	.type	update_poweroffset_config, @function
update_poweroffset_config:
.LFB57:
	.loc 3 441 1
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
	.loc 3 442 9
	sw	zero,-28(s0)
	.loc 3 444 17
	sw	zero,-20(s0)
	.loc 3 446 18
	lui	a5,%hi(.LC9)
	addi	a2,a5,%lo(.LC9)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_stringlist_count
	sw	a0,-24(s0)
	.loc 3 447 8
	lw	a4,-24(s0)
	li	a5,1
	bne	a4,a5,.L119
	.loc 3 448 18
	addi	a5,s0,-28
	mv	a4,a5
	li	a3,0
	lui	a5,%hi(.LC9)
	addi	a2,a5,%lo(.LC9)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_stringlist_get
	sw	a0,-20(s0)
	.loc 3 450 20
	lw	a4,-28(s0)
	.loc 3 450 12
	li	a5,2
	bgt	a4,a5,.L119
	.loc 3 451 13
	lw	a5,-28(s0)
	mv	a4,a5
	addi	a5,s0,-32
	mv	a2,a4
	lw	a1,-20(s0)
	mv	a0,a5
	call	memcpy
	.loc 3 452 44
	sb	zero,-30(s0)
	.loc 3 454 13
	addi	a5,s0,-32
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	update_poweroffset_config_with_order
.L119:
	.loc 3 457 1
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
	.size	update_poweroffset_config, .-update_poweroffset_config
	.section	.rodata
	.align	2
.LC10:
	.string	"ssid"
	.align	2
.LC11:
	.string	"pwd"
	.align	2
.LC12:
	.string	"auto_connect_enable"
	.section	.text.update_sta_field,"ax",@progbits
	.align	1
	.type	update_sta_field, @function
update_sta_field:
.LFB58:
	.loc 3 460 1
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	ra,156(sp)
	sw	s0,152(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sw	a0,-148(s0)
	sw	a1,-152(s0)
	sw	a2,-156(s0)
	.loc 3 461 9
	sw	zero,-28(s0)
	.loc 3 462 9
	sw	zero,-32(s0)
	.loc 3 462 25
	sw	zero,-44(s0)
	.loc 3 463 17
	sw	zero,-36(s0)
	.loc 3 464 20
	sw	zero,-40(s0)
	.loc 3 467 15
	lw	a2,-156(s0)
	lw	a1,-152(s0)
	lw	a0,-148(s0)
	call	fdt_subnode_offset
	sw	a0,-28(s0)
	.loc 3 468 8
	lw	a5,-28(s0)
	ble	a5,zero,.L121
.LBB14:
	.loc 3 471 17
	sb	zero,-21(s0)
	.loc 3 473 17
	sb	zero,-22(s0)
	.loc 3 475 22
	lui	a5,%hi(.LC10)
	addi	a2,a5,%lo(.LC10)
	lw	a1,-28(s0)
	lw	a0,-148(s0)
	call	fdt_stringlist_count
	sw	a0,-32(s0)
	.loc 3 476 12
	lw	a4,-32(s0)
	li	a5,1
	bne	a4,a5,.L122
	.loc 3 477 22
	addi	a5,s0,-44
	mv	a4,a5
	li	a3,0
	lui	a5,%hi(.LC10)
	addi	a2,a5,%lo(.LC10)
	lw	a1,-28(s0)
	lw	a0,-148(s0)
	call	fdt_stringlist_get
	sw	a0,-36(s0)
	.loc 3 478 25
	lw	a5,-44(s0)
	.loc 3 478 16
	ble	a5,zero,.L122
	.loc 3 478 39 discriminator 1
	lw	a4,-44(s0)
	.loc 3 478 30 discriminator 1
	li	a5,31
	bgt	a4,a5,.L122
	.loc 3 480 17
	lw	a5,-44(s0)
	mv	a4,a5
	addi	a5,s0,-140
	mv	a2,a4
	lw	a1,-36(s0)
	mv	a0,a5
	call	memcpy
	.loc 3 481 24
	lw	a5,-44(s0)
	.loc 3 481 33
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-124(a5)
	.loc 3 482 29
	lw	a5,-44(s0)
	sb	a5,-21(s0)
.L122:
	.loc 3 486 22
	lui	a5,%hi(.LC11)
	addi	a2,a5,%lo(.LC11)
	lw	a1,-28(s0)
	lw	a0,-148(s0)
	call	fdt_stringlist_count
	sw	a0,-32(s0)
	.loc 3 487 12
	lw	a4,-32(s0)
	li	a5,1
	bne	a4,a5,.L123
	.loc 3 488 22
	addi	a5,s0,-44
	mv	a4,a5
	li	a3,0
	lui	a5,%hi(.LC11)
	addi	a2,a5,%lo(.LC11)
	lw	a1,-28(s0)
	lw	a0,-148(s0)
	call	fdt_stringlist_get
	sw	a0,-36(s0)
	.loc 3 489 25
	lw	a5,-44(s0)
	.loc 3 489 16
	ble	a5,zero,.L123
	.loc 3 489 39 discriminator 1
	lw	a4,-44(s0)
	.loc 3 489 30 discriminator 1
	li	a5,31
	bgt	a4,a5,.L123
	.loc 3 491 17
	lw	a5,-44(s0)
	mv	a4,a5
	addi	a5,s0,-108
	mv	a2,a4
	lw	a1,-36(s0)
	mv	a0,a5
	call	memcpy
	.loc 3 492 23
	lw	a5,-44(s0)
	.loc 3 492 32
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-92(a5)
	.loc 3 493 28
	lw	a5,-44(s0)
	sb	a5,-22(s0)
.L123:
	.loc 3 496 21
	addi	a5,s0,-44
	mv	a3,a5
	lui	a5,%hi(.LC12)
	addi	a2,a5,%lo(.LC12)
	lw	a1,-28(s0)
	lw	a0,-148(s0)
	call	fdt_getprop
	sw	a0,-40(s0)
	.loc 3 497 12
	lw	a5,-40(s0)
	beq	a5,zero,.L124
	.loc 3 500 46
	lw	a5,-40(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 3 500 33 discriminator 1
	sw	a5,-20(s0)
	j	.L125
.L124:
	.loc 3 502 33
	sw	zero,-20(s0)
.L125:
	.loc 3 505 9
	lbu	a3,-22(s0)
	addi	a2,s0,-108
	lbu	a1,-21(s0)
	addi	a5,s0,-140
	lw	a4,-20(s0)
	mv	a0,a5
	call	bl_wifi_sta_info_set
.L121:
.LBE14:
	.loc 3 507 12
	lw	a5,-28(s0)
	.loc 3 508 1
	mv	a0,a5
	lw	ra,156(sp)
	.cfi_restore 1
	lw	s0,152(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE58:
	.size	update_sta_field, .-update_sta_field
	.section	.rodata
	.align	2
.LC13:
	.string	"ap"
	.align	2
.LC14:
	.string	"ap_channel"
	.section	.text.update_ap_field,"ax",@progbits
	.align	1
	.type	update_ap_field, @function
update_ap_field:
.LFB59:
	.loc 3 511 1
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	ra,156(sp)
	sw	s0,152(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sw	a0,-148(s0)
	sw	a1,-152(s0)
	sw	a2,-156(s0)
	.loc 3 512 9
	sw	zero,-24(s0)
	.loc 3 513 9
	sw	zero,-28(s0)
	.loc 3 513 25
	sw	zero,-40(s0)
	.loc 3 514 17
	sw	zero,-32(s0)
	.loc 3 515 20
	sw	zero,-36(s0)
	.loc 3 517 15
	lui	a5,%hi(.LC13)
	addi	a2,a5,%lo(.LC13)
	lw	a1,-152(s0)
	lw	a0,-148(s0)
	call	fdt_subnode_offset
	sw	a0,-24(s0)
	.loc 3 518 8
	lw	a5,-24(s0)
	ble	a5,zero,.L128
.LBB15:
	.loc 3 522 17
	sb	zero,-17(s0)
	.loc 3 524 17
	sb	zero,-18(s0)
	.loc 3 525 17
	sb	zero,-19(s0)
	.loc 3 527 22
	lui	a5,%hi(.LC10)
	addi	a2,a5,%lo(.LC10)
	lw	a1,-24(s0)
	lw	a0,-148(s0)
	call	fdt_stringlist_count
	sw	a0,-28(s0)
	.loc 3 528 12
	lw	a4,-28(s0)
	li	a5,1
	bne	a4,a5,.L129
	.loc 3 529 22
	addi	a5,s0,-40
	mv	a4,a5
	li	a3,0
	lui	a5,%hi(.LC10)
	addi	a2,a5,%lo(.LC10)
	lw	a1,-24(s0)
	lw	a0,-148(s0)
	call	fdt_stringlist_get
	sw	a0,-32(s0)
	.loc 3 530 25
	lw	a5,-40(s0)
	.loc 3 530 16
	ble	a5,zero,.L129
	.loc 3 530 39 discriminator 1
	lw	a4,-40(s0)
	.loc 3 530 30 discriminator 1
	li	a5,31
	bgt	a4,a5,.L129
	.loc 3 532 17
	lw	a5,-40(s0)
	mv	a4,a5
	addi	a5,s0,-136
	mv	a2,a4
	lw	a1,-32(s0)
	mv	a0,a5
	call	memcpy
	.loc 3 533 24
	lw	a5,-40(s0)
	.loc 3 533 33
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-120(a5)
	.loc 3 534 29
	lw	a5,-40(s0)
	sb	a5,-17(s0)
.L129:
	.loc 3 538 22
	lui	a5,%hi(.LC11)
	addi	a2,a5,%lo(.LC11)
	lw	a1,-24(s0)
	lw	a0,-148(s0)
	call	fdt_stringlist_count
	sw	a0,-28(s0)
	.loc 3 539 12
	lw	a4,-28(s0)
	li	a5,1
	bne	a4,a5,.L130
	.loc 3 540 22
	addi	a5,s0,-40
	mv	a4,a5
	li	a3,0
	lui	a5,%hi(.LC11)
	addi	a2,a5,%lo(.LC11)
	lw	a1,-24(s0)
	lw	a0,-148(s0)
	call	fdt_stringlist_get
	sw	a0,-32(s0)
	.loc 3 541 25
	lw	a5,-40(s0)
	.loc 3 541 16
	ble	a5,zero,.L130
	.loc 3 541 39 discriminator 1
	lw	a4,-40(s0)
	.loc 3 541 30 discriminator 1
	li	a5,31
	bgt	a4,a5,.L130
	.loc 3 543 17
	lw	a5,-40(s0)
	mv	a4,a5
	addi	a5,s0,-104
	mv	a2,a4
	lw	a1,-32(s0)
	mv	a0,a5
	call	memcpy
	.loc 3 544 23
	lw	a5,-40(s0)
	.loc 3 544 32
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-88(a5)
	.loc 3 545 28
	lw	a5,-40(s0)
	sb	a5,-18(s0)
.L130:
	.loc 3 549 21
	addi	a5,s0,-40
	mv	a3,a5
	lui	a5,%hi(.LC14)
	addi	a2,a5,%lo(.LC14)
	lw	a1,-24(s0)
	lw	a0,-148(s0)
	call	fdt_getprop
	sw	a0,-36(s0)
	.loc 3 550 12
	lw	a5,-36(s0)
	beq	a5,zero,.L131
	.loc 3 553 37
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 3 553 24 discriminator 1
	sb	a5,-19(s0)
.L131:
	.loc 3 558 9
	lbu	a4,-19(s0)
	lbu	a3,-18(s0)
	addi	a2,s0,-104
	lbu	a1,-17(s0)
	addi	a5,s0,-136
	mv	a0,a5
	call	bl_wifi_ap_info_set
.L128:
.LBE15:
	.loc 3 562 12
	lw	a5,-24(s0)
	.loc 3 563 1
	mv	a0,a5
	lw	ra,156(sp)
	.cfi_restore 1
	lw	s0,152(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE59:
	.size	update_ap_field, .-update_ap_field
	.section	.rodata
	.align	2
.LC15:
	.string	"wifi"
	.align	2
.LC16:
	.string	"brd_rf"
	.align	2
.LC17:
	.string	"channel_div_table"
	.align	2
.LC18:
	.string	"channel_cnt_table"
	.align	2
.LC19:
	.string	"lo_fcal_div"
	.align	2
.LC20:
	.string	"mac"
	.align	2
.LC21:
	.string	"region"
	.align	2
.LC22:
	.string	"country_code"
	.align	2
.LC23:
	.string	"pwr_table_11b"
	.align	2
.LC24:
	.string	"pwr_table_11g"
	.align	2
.LC25:
	.string	"pwr_table_11n"
	.align	2
.LC26:
	.string	"sta"
	.align	2
.LC27:
	.string	"bluetooth"
	.align	2
.LC28:
	.string	"pwr_table_ble"
	.section	.text.hal_board_load_fdt_info,"ax",@progbits
	.align	1
	.type	hal_board_load_fdt_info, @function
hal_board_load_fdt_info:
.LFB60:
	.loc 3 566 1
	.cfi_startproc
	addi	sp,sp,-192
	.cfi_def_cfa_offset 192
	sw	ra,188(sp)
	sw	s0,184(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,192
	.cfi_def_cfa 8, 0
	sw	a0,-180(s0)
	.loc 3 567 17
	lw	a5,-180(s0)
	sw	a5,-28(s0)
	.loc 3 569 9
	sw	zero,-32(s0)
	.loc 3 569 26
	sw	zero,-36(s0)
	.loc 3 570 9
	sw	zero,-40(s0)
	.loc 3 571 20
	sw	zero,-44(s0)
	.loc 3 573 9
	sw	zero,-56(s0)
	.loc 3 576 19
	lui	a5,%hi(.LC15)
	addi	a2,a5,%lo(.LC15)
	li	a1,0
	lw	a0,-28(s0)
	call	fdt_subnode_offset
	sw	a0,-32(s0)
	.loc 3 581 15
	lui	a5,%hi(.LC16)
	addi	a2,a5,%lo(.LC16)
	lw	a1,-32(s0)
	lw	a0,-28(s0)
	call	fdt_subnode_offset
	sw	a0,-40(s0)
	.loc 3 582 8
	lw	a5,-40(s0)
	ble	a5,zero,.L134
.LBB16:
	.loc 3 585 18
	sh	zero,-46(s0)
	.loc 3 592 9
	lw	a1,-40(s0)
	lw	a0,-28(s0)
	call	update_xtal_config
	.loc 3 595 21
	addi	a5,s0,-56
	mv	a3,a5
	lui	a5,%hi(.LC17)
	addi	a2,a5,%lo(.LC17)
	lw	a1,-40(s0)
	lw	a0,-28(s0)
	call	fdt_getprop
	sw	a0,-44(s0)
	.loc 3 596 18
	lw	a4,-56(s0)
	.loc 3 596 12
	li	a5,60
	bne	a4,a5,.L135
	.loc 3 597 20
	sw	zero,-20(s0)
	.loc 3 597 13
	j	.L136
.L137:
	.loc 3 598 102
	lw	a5,-20(s0)
	slli	a5,a5,2
	mv	a4,a5
	.loc 3 598 65
	lw	a5,-44(s0)
	add	a5,a5,a4
	.loc 3 598 51
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a3,a0
	.loc 3 598 38 discriminator 1
	lw	a4,-20(s0)
	addi	a5,s0,-168
	slli	a4,a4,2
	add	a5,a4,a5
	sw	a3,0(a5)
	.loc 3 597 34 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L136:
	.loc 3 597 27 discriminator 1
	lw	a4,-20(s0)
	li	a5,14
	ble	a4,a5,.L137
.L135:
	.loc 3 606 21
	addi	a5,s0,-56
	mv	a3,a5
	lui	a5,%hi(.LC18)
	addi	a2,a5,%lo(.LC18)
	lw	a1,-40(s0)
	lw	a0,-28(s0)
	call	fdt_getprop
	sw	a0,-44(s0)
	.loc 3 607 18
	lw	a4,-56(s0)
	.loc 3 607 12
	li	a5,56
	bne	a4,a5,.L138
	.loc 3 608 20
	sw	zero,-20(s0)
	.loc 3 608 13
	j	.L139
.L140:
	.loc 3 609 102
	lw	a5,-20(s0)
	slli	a5,a5,2
	mv	a4,a5
	.loc 3 609 65
	lw	a5,-44(s0)
	add	a5,a5,a4
	.loc 3 609 51
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 3 609 41 discriminator 1
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 3 609 38 discriminator 1
	lw	a3,-20(s0)
	addi	a5,s0,-84
	slli	a3,a3,1
	add	a5,a3,a5
	sh	a4,0(a5)
	.loc 3 608 34 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L139:
	.loc 3 608 27 discriminator 1
	lw	a4,-20(s0)
	li	a5,13
	ble	a4,a5,.L140
.L138:
	.loc 3 617 21
	addi	a5,s0,-56
	mv	a3,a5
	lui	a5,%hi(.LC19)
	addi	a2,a5,%lo(.LC19)
	lw	a1,-40(s0)
	lw	a0,-28(s0)
	call	fdt_getprop
	sw	a0,-44(s0)
	.loc 3 618 15
	lw	a4,-56(s0)
	.loc 3 618 12
	li	a5,4
	bne	a4,a5,.L134
	.loc 3 619 38
	lw	a5,-44(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 3 619 25 discriminator 1
	sh	a5,-46(s0)
.L134:
.LBE16:
	.loc 3 629 15
	lui	a5,%hi(.LC20)
	addi	a2,a5,%lo(.LC20)
	lw	a1,-32(s0)
	lw	a0,-28(s0)
	call	fdt_subnode_offset
	sw	a0,-40(s0)
	.loc 3 630 8
	lw	a5,-40(s0)
	ble	a5,zero,.L142
	.loc 3 631 9
	lw	a1,-40(s0)
	lw	a0,-28(s0)
	call	update_mac_config
.L142:
	.loc 3 634 15
	lui	a5,%hi(.LC21)
	addi	a2,a5,%lo(.LC21)
	lw	a1,-32(s0)
	lw	a0,-28(s0)
	call	fdt_subnode_offset
	sw	a0,-40(s0)
	.loc 3 635 8
	lw	a5,-40(s0)
	ble	a5,zero,.L143
	.loc 3 637 21
	addi	a5,s0,-56
	mv	a3,a5
	lui	a5,%hi(.LC22)
	addi	a2,a5,%lo(.LC22)
	lw	a1,-40(s0)
	lw	a0,-28(s0)
	call	fdt_getprop
	sw	a0,-44(s0)
	.loc 3 638 15
	lw	a4,-56(s0)
	.loc 3 638 12
	li	a5,4
	bne	a4,a5,.L143
	.loc 3 641 48
	lw	a5,-44(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 3 641 13 discriminator 1
	andi	a5,a5,0xff
	mv	a0,a5
	call	bl_wifi_country_code_set
.L143:
	.loc 3 647 15
	lui	a5,%hi(.LC16)
	addi	a2,a5,%lo(.LC16)
	lw	a1,-32(s0)
	lw	a0,-28(s0)
	call	fdt_subnode_offset
	sw	a0,-40(s0)
	.loc 3 648 8
	lw	a5,-40(s0)
	ble	a5,zero,.L144
.LBB17:
	.loc 3 654 21
	addi	a5,s0,-56
	mv	a3,a5
	lui	a5,%hi(.LC23)
	addi	a2,a5,%lo(.LC23)
	lw	a1,-40(s0)
	lw	a0,-28(s0)
	call	fdt_getprop
	sw	a0,-44(s0)
	.loc 3 655 17
	lw	a4,-56(s0)
	.loc 3 655 12
	li	a5,16
	bne	a4,a5,.L145
	.loc 3 656 20
	sw	zero,-20(s0)
	.loc 3 656 13
	j	.L146
.L147:
	.loc 3 657 94
	lw	a5,-20(s0)
	slli	a5,a5,2
	mv	a4,a5
	.loc 3 657 57
	lw	a5,-44(s0)
	add	a5,a5,a4
	.loc 3 657 43
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 3 657 30 discriminator 1
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-92(a5)
	.loc 3 656 33 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L146:
	.loc 3 656 27 discriminator 1
	lw	a4,-20(s0)
	li	a5,3
	ble	a4,a5,.L147
	.loc 3 665 13
	addi	a5,s0,-108
	mv	a0,a5
	call	bl_tpc_update_power_rate_11b
.L145:
	.loc 3 670 21
	addi	a5,s0,-56
	mv	a3,a5
	lui	a5,%hi(.LC24)
	addi	a2,a5,%lo(.LC24)
	lw	a1,-40(s0)
	lw	a0,-28(s0)
	call	fdt_getprop
	sw	a0,-44(s0)
	.loc 3 671 17
	lw	a4,-56(s0)
	.loc 3 671 12
	li	a5,32
	bne	a4,a5,.L148
	.loc 3 672 20
	sw	zero,-20(s0)
	.loc 3 672 13
	j	.L149
.L150:
	.loc 3 673 94
	lw	a5,-20(s0)
	slli	a5,a5,2
	mv	a4,a5
	.loc 3 673 57
	lw	a5,-44(s0)
	add	a5,a5,a4
	.loc 3 673 43
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 3 673 30 discriminator 1
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-92(a5)
	.loc 3 672 33 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L149:
	.loc 3 672 27 discriminator 1
	lw	a4,-20(s0)
	li	a5,7
	ble	a4,a5,.L150
	.loc 3 685 13
	addi	a5,s0,-108
	mv	a0,a5
	call	bl_tpc_update_power_rate_11g
.L148:
	.loc 3 690 21
	addi	a5,s0,-56
	mv	a3,a5
	lui	a5,%hi(.LC25)
	addi	a2,a5,%lo(.LC25)
	lw	a1,-40(s0)
	lw	a0,-28(s0)
	call	fdt_getprop
	sw	a0,-44(s0)
	.loc 3 691 17
	lw	a4,-56(s0)
	.loc 3 691 12
	li	a5,32
	bne	a4,a5,.L151
	.loc 3 692 20
	sw	zero,-20(s0)
	.loc 3 692 13
	j	.L152
.L153:
	.loc 3 693 94
	lw	a5,-20(s0)
	slli	a5,a5,2
	mv	a4,a5
	.loc 3 693 57
	lw	a5,-44(s0)
	add	a5,a5,a4
	.loc 3 693 43
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 3 693 30 discriminator 1
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-92(a5)
	.loc 3 692 33 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L152:
	.loc 3 692 27 discriminator 1
	lw	a4,-20(s0)
	li	a5,7
	ble	a4,a5,.L153
	.loc 3 705 13
	addi	a5,s0,-108
	mv	a0,a5
	call	bl_tpc_update_power_rate_11n
.L151:
	.loc 3 709 9
	lw	a1,-40(s0)
	lw	a0,-28(s0)
	call	update_poweroffset_config
.L144:
.LBE17:
	.loc 3 712 15
	lui	a5,%hi(.LC13)
	addi	a2,a5,%lo(.LC13)
	lw	a1,-32(s0)
	lw	a0,-28(s0)
	call	update_ap_field
	sw	a0,-40(s0)
	.loc 3 713 15
	lui	a5,%hi(.LC26)
	addi	a2,a5,%lo(.LC26)
	lw	a1,-32(s0)
	lw	a0,-28(s0)
	call	update_sta_field
	sw	a0,-40(s0)
	.loc 3 715 17
	lui	a5,%hi(.LC27)
	addi	a2,a5,%lo(.LC27)
	li	a1,0
	lw	a0,-28(s0)
	call	fdt_subnode_offset
	sw	a0,-36(s0)
	.loc 3 721 19
	lui	a5,%hi(.LC16)
	addi	a2,a5,%lo(.LC16)
	lw	a1,-36(s0)
	lw	a0,-28(s0)
	call	fdt_subnode_offset
	sw	a0,-52(s0)
	.loc 3 722 8
	lw	a5,-52(s0)
	ble	a5,zero,.L154
.LBB18:
	.loc 3 723 13
	sw	zero,-24(s0)
	.loc 3 724 21
	addi	a5,s0,-56
	mv	a3,a5
	lui	a5,%hi(.LC28)
	addi	a2,a5,%lo(.LC28)
	lw	a1,-52(s0)
	lw	a0,-28(s0)
	call	fdt_getprop
	sw	a0,-44(s0)
	.loc 3 725 12
	lw	a5,-44(s0)
	beq	a5,zero,.L155
	.loc 3 726 40
	lw	a5,-44(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 3 726 27 discriminator 1
	sw	a5,-24(s0)
	j	.L156
.L155:
	.loc 3 728 27
	sw	zero,-24(s0)
.L156:
	.loc 3 731 9
	lw	a5,-24(s0)
	mv	a0,a5
	call	ble_controller_set_tx_pwr
.L154:
.LBE18:
	.loc 3 734 12
	li	a5,0
	.loc 3 735 1
	mv	a0,a5
	lw	ra,188(sp)
	.cfi_restore 1
	lw	s0,184(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 192
	addi	sp,sp,192
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE60:
	.size	hal_board_load_fdt_info, .-hal_board_load_fdt_info
	.section	.text.hal_board_get_factory_addr,"ax",@progbits
	.align	1
	.globl	hal_board_get_factory_addr
	.type	hal_board_get_factory_addr, @function
hal_board_get_factory_addr:
.LFB61:
	.loc 3 872 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 3 873 12
	lui	a5,%hi(factory_addr)
	lw	a5,%lo(factory_addr)(a5)
	.loc 3 874 1
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
.LFE61:
	.size	hal_board_get_factory_addr, .-hal_board_get_factory_addr
	.section	.rodata
	.align	2
.LC29:
	.string	"factory"
	.section	.text.hal_board_cfg,"ax",@progbits
	.align	1
	.globl	hal_board_cfg
	.type	hal_board_cfg, @function
hal_board_cfg:
.LFB62:
	.loc 3 877 1
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
	.loc 3 885 11
	addi	a5,s0,-24
	mv	a2,a5
	lui	a5,%hi(factory_addr)
	addi	a1,a5,%lo(factory_addr)
	lui	a5,%hi(.LC29)
	addi	a0,a5,%lo(.LC29)
	call	hal_boot2_partition_addr_active
	sw	a0,-20(s0)
	.loc 3 887 11
	lui	a5,%hi(factory_addr)
	lw	a5,%lo(factory_addr)(a5)
	.loc 3 887 8
	bne	a5,zero,.L161
.L162:
	.loc 3 889 15
	nop
	j	.L162
.L161:
	.loc 3 893 11
	addi	a5,s0,-24
	mv	a2,a5
	lui	a5,%hi(factory_addr)
	addi	a1,a5,%lo(factory_addr)
	lui	a5,%hi(.LC29)
	addi	a0,a5,%lo(.LC29)
	call	hal_boot2_partition_bus_addr_active
	sw	a0,-20(s0)
	.loc 3 895 11
	lui	a5,%hi(factory_addr)
	lw	a5,%lo(factory_addr)(a5)
	.loc 3 895 8
	bne	a5,zero,.L163
.L164:
	.loc 3 897 15
	nop
	j	.L164
.L163:
	.loc 3 903 5
	lui	a5,%hi(factory_addr)
	lw	a5,%lo(factory_addr)(a5)
	mv	a0,a5
	call	hal_board_load_fdt_info
	.loc 3 906 12
	li	a5,0
	.loc 3 907 1
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
	.size	hal_board_cfg, .-hal_board_cfg
	.section	.srodata.mac_default.0,"a"
	.align	2
	.type	mac_default.0, @object
	.size	mac_default.0, 6
mac_default.0:
	.base64	"GLkFiIiI"
	.text
.Letext0:
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_log.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_boot2.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifi/include/bl60x_fw_api.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_wifi.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/libfdt.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifi/include/bl_phy_api.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_efuse.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_sys.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xddf
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1f
	.4byte	.LASF107
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xb
	.4byte	.LASF4
	.byte	0x5
	.byte	0x22
	.byte	0x15
	.4byte	0x3c
	.uleb128 0x11
	.4byte	0x2b
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0xb
	.4byte	.LASF5
	.byte	0x5
	.byte	0x28
	.byte	0x12
	.4byte	0x56
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0xb
	.4byte	.LASF8
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x75
	.uleb128 0x11
	.4byte	0x64
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0xb
	.4byte	.LASF10
	.byte	0x5
	.byte	0x31
	.byte	0x1c
	.4byte	0x88
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0xb
	.4byte	.LASF12
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x9b
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x20
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x6
	.byte	0xe5
	.byte	0x16
	.4byte	0xb0
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.4byte	.LASF17
	.uleb128 0x21
	.byte	0x4
	.uleb128 0x18
	.4byte	0xca
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x11
	.4byte	0xd1
	.uleb128 0xc
	.4byte	0xd8
	.uleb128 0xc
	.4byte	0x64
	.uleb128 0xc
	.4byte	0xf1
	.uleb128 0x18
	.4byte	0xe7
	.uleb128 0x22
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x63
	.byte	0x12
	.4byte	0x8f
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x4
	.byte	0x3f
	.byte	0x11
	.4byte	0x4a
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x4
	.byte	0x41
	.byte	0x12
	.4byte	0x8f
	.uleb128 0x23
	.4byte	.LASF108
	.byte	0x4
	.byte	0x5c
	.byte	0x13
	.4byte	0xfe
	.uleb128 0x24
	.4byte	.LASF109
	.byte	0x7
	.byte	0x1
	.4byte	0x75
	.byte	0x7
	.byte	0x55
	.byte	0xe
	.4byte	0x147
	.uleb128 0x15
	.4byte	.LASF22
	.byte	0
	.uleb128 0x15
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF24
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x7
	.byte	0x59
	.byte	0x3
	.4byte	0x122
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x2f
	.byte	0x11
	.4byte	0x8f
	.uleb128 0x5
	.byte	0x3
	.4byte	factory_addr
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x8
	.byte	0x4a
	.byte	0x5
	.4byte	0xa9
	.4byte	0x184
	.uleb128 0x1
	.4byte	0xdd
	.uleb128 0x1
	.4byte	0x184
	.uleb128 0x1
	.4byte	0x184
	.byte	0
	.uleb128 0xc
	.4byte	0x8f
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x8
	.byte	0x4d
	.byte	0x5
	.4byte	0xa9
	.4byte	0x1a9
	.uleb128 0x1
	.4byte	0xdd
	.uleb128 0x1
	.4byte	0x184
	.uleb128 0x1
	.4byte	0x184
	.byte	0
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x9
	.byte	0x62
	.4byte	0x1ba
	.uleb128 0x1
	.4byte	0x1ba
	.byte	0
	.uleb128 0xc
	.4byte	0x2b
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x9
	.byte	0x61
	.4byte	0x1d0
	.uleb128 0x1
	.4byte	0x1ba
	.byte	0
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x9
	.byte	0x60
	.4byte	0x1e1
	.uleb128 0x1
	.4byte	0x1ba
	.byte	0
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0xa
	.byte	0x2f
	.byte	0x5
	.4byte	0xa9
	.4byte	0x1f7
	.uleb128 0x1
	.4byte	0x64
	.byte	0
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0xa
	.byte	0x30
	.byte	0x5
	.4byte	0xa9
	.4byte	0x221
	.uleb128 0x1
	.4byte	0xe2
	.uleb128 0x1
	.4byte	0x64
	.uleb128 0x1
	.4byte	0xe2
	.uleb128 0x1
	.4byte	0x64
	.uleb128 0x1
	.4byte	0x64
	.byte	0
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0xa
	.byte	0x35
	.byte	0x5
	.4byte	0xa9
	.4byte	0x24b
	.uleb128 0x1
	.4byte	0xe2
	.uleb128 0x1
	.4byte	0x64
	.uleb128 0x1
	.4byte	0xe2
	.uleb128 0x1
	.4byte	0x64
	.uleb128 0x1
	.4byte	0xa9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF34
	.2byte	0x1de
	.byte	0x5
	.4byte	0xa9
	.4byte	0x26b
	.uleb128 0x1
	.4byte	0xe7
	.uleb128 0x1
	.4byte	0xa9
	.uleb128 0x1
	.4byte	0xdd
	.byte	0
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0xc
	.byte	0x29
	.4byte	0x27c
	.uleb128 0x1
	.4byte	0x1ba
	.byte	0
	.uleb128 0x19
	.4byte	.LASF36
	.4byte	0x28b
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x7
	.byte	0x9c
	.byte	0x5
	.4byte	0xa9
	.4byte	0x2b5
	.uleb128 0x1
	.4byte	0xdd
	.uleb128 0x1
	.4byte	0xa9
	.uleb128 0x1
	.4byte	0xe7
	.uleb128 0x1
	.4byte	0xa9
	.uleb128 0x1
	.4byte	0x147
	.byte	0
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0xd
	.byte	0x24
	.byte	0x5
	.4byte	0xa9
	.4byte	0x2cb
	.uleb128 0x1
	.4byte	0x1ba
	.byte	0
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0xe
	.byte	0x21
	.byte	0x8
	.4byte	0xca
	.4byte	0x2eb
	.uleb128 0x1
	.4byte	0xca
	.uleb128 0x1
	.4byte	0xa9
	.uleb128 0x1
	.4byte	0xb7
	.byte	0
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0xf
	.byte	0x3c
	.4byte	0x301
	.uleb128 0x1
	.4byte	0x64
	.uleb128 0x1
	.4byte	0x64
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0xd
	.byte	0x23
	.byte	0x5
	.4byte	0xa9
	.4byte	0x317
	.uleb128 0x1
	.4byte	0xe2
	.byte	0
	.uleb128 0x12
	.4byte	.LASF42
	.2byte	0x470
	.byte	0xd
	.4byte	0xdd
	.4byte	0x341
	.uleb128 0x1
	.4byte	0xe7
	.uleb128 0x1
	.4byte	0xa9
	.uleb128 0x1
	.4byte	0xdd
	.uleb128 0x1
	.4byte	0xa9
	.uleb128 0x1
	.4byte	0x341
	.byte	0
	.uleb128 0xc
	.4byte	0xa9
	.uleb128 0x12
	.4byte	.LASF43
	.2byte	0x440
	.byte	0x5
	.4byte	0xa9
	.4byte	0x366
	.uleb128 0x1
	.4byte	0xe7
	.uleb128 0x1
	.4byte	0xa9
	.uleb128 0x1
	.4byte	0xdd
	.byte	0
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x7
	.byte	0x9e
	.4byte	0x378
	.uleb128 0x1
	.4byte	0xdd
	.uleb128 0x25
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF45
	.2byte	0x54c
	.4byte	0x10a
	.uleb128 0x1a
	.4byte	.LASF46
	.2byte	0x55d
	.4byte	0x10a
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0xe
	.byte	0x29
	.byte	0x8
	.4byte	0xb7
	.4byte	0x3a4
	.uleb128 0x1
	.4byte	0xdd
	.byte	0
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0xd
	.byte	0x22
	.byte	0x5
	.4byte	0xa9
	.4byte	0x3ba
	.uleb128 0x1
	.4byte	0xe2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0xd
	.byte	0x21
	.byte	0x5
	.4byte	0xa9
	.4byte	0x3d0
	.uleb128 0x1
	.4byte	0xe2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0xa
	.byte	0x2d
	.byte	0x5
	.4byte	0xa9
	.4byte	0x3e6
	.uleb128 0x1
	.4byte	0xe2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0xa
	.byte	0x2c
	.byte	0x5
	.4byte	0xa9
	.4byte	0x3fc
	.uleb128 0x1
	.4byte	0xe2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0xe
	.byte	0x1f
	.byte	0x8
	.4byte	0xca
	.4byte	0x41c
	.uleb128 0x1
	.4byte	0xcc
	.uleb128 0x1
	.4byte	0xec
	.uleb128 0x1
	.4byte	0xb7
	.byte	0
	.uleb128 0x12
	.4byte	.LASF53
	.2byte	0x311
	.byte	0xd
	.4byte	0xe7
	.4byte	0x441
	.uleb128 0x1
	.4byte	0xe7
	.uleb128 0x1
	.4byte	0xa9
	.uleb128 0x1
	.4byte	0xdd
	.uleb128 0x1
	.4byte	0x341
	.byte	0
	.uleb128 0x26
	.4byte	.LASF110
	.byte	0x3
	.2byte	0x36c
	.byte	0x5
	.4byte	0xa9
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48a
	.uleb128 0x5
	.4byte	.LASF56
	.2byte	0x36c
	.byte	0x2b
	.4byte	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x7
	.string	"ret"
	.2byte	0x371
	.byte	0x9
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF55
	.2byte	0x372
	.byte	0xe
	.4byte	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.4byte	.LASF111
	.byte	0x3
	.2byte	0x367
	.byte	0xa
	.4byte	0x8f
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.4byte	.LASF68
	.2byte	0x235
	.4byte	0xa9
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b5
	.uleb128 0xd
	.string	"dtb"
	.2byte	0x235
	.byte	0x30
	.4byte	0xe7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x7
	.string	"fdt"
	.2byte	0x237
	.byte	0x11
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF57
	.2byte	0x239
	.byte	0x9
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF58
	.2byte	0x239
	.byte	0x1a
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF59
	.2byte	0x23a
	.byte	0x9
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF60
	.2byte	0x23b
	.byte	0x14
	.4byte	0x5b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF61
	.2byte	0x23d
	.byte	0x9
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.string	"i"
	.2byte	0x23e
	.byte	0x9
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF62
	.2byte	0x2d1
	.byte	0x9
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x57d
	.uleb128 0x2
	.4byte	.LASF63
	.2byte	0x247
	.byte	0x12
	.4byte	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2
	.4byte	.LASF64
	.2byte	0x248
	.byte	0x12
	.4byte	0x5ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x249
	.byte	0x12
	.4byte	0x7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x59b
	.uleb128 0x2
	.4byte	.LASF66
	.2byte	0x28b
	.byte	0x11
	.4byte	0x5da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0x16
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x2
	.4byte	.LASF67
	.2byte	0x2d3
	.byte	0xd
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x70
	.uleb128 0x8
	.4byte	0x8f
	.4byte	0x5ca
	.uleb128 0x9
	.4byte	0xb0
	.byte	0xe
	.byte	0
	.uleb128 0x8
	.4byte	0x7c
	.4byte	0x5da
	.uleb128 0x9
	.4byte	0xb0
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.4byte	0x64
	.4byte	0x5ea
	.uleb128 0x9
	.4byte	0xb0
	.byte	0x17
	.byte	0
	.uleb128 0x13
	.4byte	.LASF69
	.2byte	0x1fe
	.4byte	0xa9
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d6
	.uleb128 0xd
	.string	"fdt"
	.2byte	0x1fe
	.byte	0x28
	.4byte	0xe7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x5
	.4byte	.LASF57
	.2byte	0x1fe
	.byte	0x31
	.4byte	0xa9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x5
	.4byte	.LASF70
	.2byte	0x1fe
	.byte	0x5a
	.4byte	0xdd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2
	.4byte	.LASF59
	.2byte	0x200
	.byte	0x9
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF71
	.2byte	0x201
	.byte	0x9
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF61
	.2byte	0x201
	.byte	0x19
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF72
	.2byte	0x202
	.byte	0x11
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF60
	.2byte	0x203
	.byte	0x14
	.4byte	0x5b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x2
	.4byte	.LASF73
	.2byte	0x209
	.byte	0x11
	.4byte	0x6d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2
	.4byte	.LASF74
	.2byte	0x20a
	.byte	0x11
	.4byte	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.4byte	.LASF75
	.2byte	0x20b
	.byte	0x11
	.4byte	0x6e6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2
	.4byte	.LASF76
	.2byte	0x20c
	.byte	0x11
	.4byte	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2
	.4byte	.LASF77
	.2byte	0x20d
	.byte	0x11
	.4byte	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x64
	.4byte	0x6e6
	.uleb128 0x9
	.4byte	0xb0
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	0x64
	.4byte	0x6f6
	.uleb128 0x9
	.4byte	0xb0
	.byte	0x3f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF78
	.2byte	0x1cb
	.4byte	0xa9
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e2
	.uleb128 0xd
	.string	"fdt"
	.2byte	0x1cb
	.byte	0x29
	.4byte	0xe7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x5
	.4byte	.LASF57
	.2byte	0x1cb
	.byte	0x32
	.4byte	0xa9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x5
	.4byte	.LASF70
	.2byte	0x1cb
	.byte	0x4b
	.4byte	0xdd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2
	.4byte	.LASF59
	.2byte	0x1cd
	.byte	0x9
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF71
	.2byte	0x1ce
	.byte	0x9
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF61
	.2byte	0x1ce
	.byte	0x19
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF72
	.2byte	0x1cf
	.byte	0x11
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF60
	.2byte	0x1d0
	.byte	0x14
	.4byte	0x5b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF79
	.2byte	0x1d1
	.byte	0x9
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x2
	.4byte	.LASF73
	.2byte	0x1d6
	.byte	0x11
	.4byte	0x6d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2
	.4byte	.LASF74
	.2byte	0x1d7
	.byte	0x11
	.4byte	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x2
	.4byte	.LASF75
	.2byte	0x1d8
	.byte	0x11
	.4byte	0x6e6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2
	.4byte	.LASF76
	.2byte	0x1d9
	.byte	0x11
	.4byte	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF81
	.2byte	0x1b8
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x852
	.uleb128 0xd
	.string	"fdt"
	.2byte	0x1b8
	.byte	0x33
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF59
	.2byte	0x1b8
	.byte	0x3c
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF61
	.2byte	0x1ba
	.byte	0x9
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF71
	.2byte	0x1ba
	.byte	0x15
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF80
	.2byte	0x1bb
	.byte	0xa
	.4byte	0x852
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF72
	.2byte	0x1bc
	.byte	0x11
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	0xd1
	.4byte	0x862
	.uleb128 0x9
	.4byte	0xb0
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF82
	.2byte	0x165
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x928
	.uleb128 0xd
	.string	"fdt"
	.2byte	0x165
	.byte	0x3e
	.4byte	0xe7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.4byte	.LASF59
	.2byte	0x165
	.byte	0x47
	.4byte	0xa9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.4byte	.LASF83
	.2byte	0x165
	.byte	0x5c
	.4byte	0xdd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x7
	.string	"i"
	.2byte	0x167
	.byte	0x9
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"set"
	.2byte	0x167
	.byte	0xc
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.string	"len"
	.2byte	0x167
	.byte	0x11
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.string	"j"
	.2byte	0x167
	.byte	0x16
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF84
	.2byte	0x168
	.byte	0xc
	.4byte	0x928
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF85
	.2byte	0x168
	.byte	0x1d
	.4byte	0x928
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.4byte	.LASF91
	.2byte	0x1aa
	.4byte	.L97
	.uleb128 0x19
	.4byte	.LASF36
	.4byte	0x917
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x1d
	.4byte	0xdb1
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.2byte	0x1a6
	.byte	0x5f
	.byte	0
	.uleb128 0x8
	.4byte	0x2b
	.4byte	0x938
	.uleb128 0x9
	.4byte	0xb0
	.byte	0xd
	.byte	0
	.uleb128 0x13
	.4byte	.LASF86
	.2byte	0x14b
	.4byte	0xa9
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9aa
	.uleb128 0xd
	.string	"fdt"
	.2byte	0x14b
	.byte	0x43
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF59
	.2byte	0x14b
	.byte	0x4c
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF84
	.2byte	0x14b
	.byte	0x5c
	.4byte	0x1ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF61
	.2byte	0x14d
	.byte	0x9
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.string	"i"
	.2byte	0x14d
	.byte	0x15
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF60
	.2byte	0x14e
	.byte	0x14
	.4byte	0x5b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.4byte	.LASF87
	.2byte	0x138
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa1a
	.uleb128 0xd
	.string	"fdt"
	.2byte	0x138
	.byte	0x2c
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF59
	.2byte	0x138
	.byte	0x35
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF61
	.2byte	0x13a
	.byte	0x9
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF71
	.2byte	0x13a
	.byte	0x15
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF88
	.2byte	0x13b
	.byte	0xa
	.4byte	0x852
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF72
	.2byte	0x13c
	.byte	0x11
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF89
	.2byte	0x107
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab2
	.uleb128 0xd
	.string	"fdt"
	.2byte	0x107
	.byte	0x37
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.4byte	.LASF59
	.2byte	0x107
	.byte	0x40
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.4byte	.LASF83
	.2byte	0x107
	.byte	0x55
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.string	"i"
	.2byte	0x109
	.byte	0x9
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"set"
	.2byte	0x109
	.byte	0xc
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"len"
	.2byte	0x109
	.byte	0x11
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF90
	.2byte	0x10a
	.byte	0xe
	.4byte	0xab2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.4byte	.LASF91
	.2byte	0x12c
	.4byte	.L61
	.uleb128 0x1d
	.4byte	0xdb1
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.2byte	0x128
	.byte	0x5f
	.byte	0
	.uleb128 0x8
	.4byte	0x8f
	.4byte	0xac2
	.uleb128 0x9
	.4byte	0xb0
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF92
	.byte	0xea
	.4byte	0xa9
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb24
	.uleb128 0x10
	.string	"fdt"
	.byte	0x3
	.byte	0xea
	.byte	0x3c
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x3
	.byte	0xea
	.byte	0x45
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0x3
	.byte	0xea
	.byte	0x57
	.4byte	0x184
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0xec
	.byte	0x14
	.4byte	0x5b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0xed
	.byte	0x9
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.4byte	.LASF93
	.byte	0xd9
	.4byte	0xa9
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5a
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0x3
	.byte	0xd9
	.byte	0x3d
	.4byte	0x184
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0xdb
	.byte	0xd
	.4byte	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF95
	.byte	0xc5
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc5
	.uleb128 0x10
	.string	"fdt"
	.byte	0x3
	.byte	0xc5
	.byte	0x2b
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x3
	.byte	0xc5
	.byte	0x34
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0xc7
	.byte	0x9
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0xc7
	.byte	0x19
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xc8
	.byte	0x11
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0xc9
	.byte	0xa
	.4byte	0xbc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.4byte	0xd1
	.4byte	0xbd5
	.uleb128 0x9
	.4byte	0xb0
	.byte	0x3
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF97
	.byte	0x82
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc77
	.uleb128 0x10
	.string	"fdt"
	.byte	0x3
	.byte	0x82
	.byte	0x36
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x3
	.byte	0x82
	.byte	0x3f
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x3
	.byte	0x82
	.byte	0x54
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x17
	.string	"i"
	.byte	0x9
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.string	"set"
	.byte	0xc
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"len"
	.byte	0x11
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF98
	.byte	0x85
	.byte	0xd
	.4byte	0xc77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0x86
	.byte	0x1a
	.4byte	0xc97
	.uleb128 0x5
	.byte	0x3
	.4byte	mac_default.0
	.uleb128 0x28
	.4byte	.LASF91
	.byte	0x3
	.byte	0xb3
	.byte	0x1
	.4byte	.L28
	.uleb128 0x29
	.4byte	0xdb1
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x3
	.byte	0xaf
	.byte	0x5f
	.byte	0
	.uleb128 0x8
	.4byte	0x64
	.4byte	0xc87
	.uleb128 0x9
	.4byte	0xb0
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	0x70
	.4byte	0xc97
	.uleb128 0x9
	.4byte	0xb0
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.4byte	0xc87
	.uleb128 0xf
	.4byte	.LASF100
	.byte	0x6a
	.4byte	0xa9
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce0
	.uleb128 0xa
	.4byte	.LASF98
	.byte	0x3
	.byte	0x6a
	.byte	0x3b
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0x6c
	.byte	0xd
	.4byte	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0x6c
	.byte	0x18
	.4byte	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0xf
	.4byte	.LASF103
	.byte	0x5b
	.4byte	0xa9
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd24
	.uleb128 0xa
	.4byte	.LASF98
	.byte	0x3
	.byte	0x5b
	.byte	0x39
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0x5d
	.byte	0xd
	.4byte	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0x5d
	.byte	0x18
	.4byte	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0xf
	.4byte	.LASF104
	.byte	0x38
	.4byte	0xa9
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd86
	.uleb128 0x10
	.string	"fdt"
	.byte	0x3
	.byte	0x38
	.byte	0x3b
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x3
	.byte	0x38
	.byte	0x44
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.4byte	.LASF98
	.byte	0x3
	.byte	0x38
	.byte	0x55
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x3a
	.byte	0x9
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x3b
	.byte	0x14
	.4byte	0x5b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF105
	.byte	0x2
	.byte	0x21
	.byte	0x14
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdac
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x2
	.byte	0x21
	.byte	0x3c
	.4byte	0xdac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	0x37
	.uleb128 0x2b
	.4byte	.LASF112
	.byte	0x4
	.byte	0xb3
	.byte	0x3a
	.4byte	0xfe
	.byte	0x3
	.uleb128 0x2c
	.4byte	.LASF106
	.byte	0x1
	.byte	0x78
	.byte	0x18
	.4byte	0x8f
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.string	"x"
	.byte	0x1
	.byte	0x78
	.byte	0x2d
	.4byte	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
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
	.sleb128 3
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
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x21
	.sleb128 11
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
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 132
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 432
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 17
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
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 16
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.sleb128 3
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xac
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF77:
	.string	"ap_channel"
.LASF111:
	.string	"hal_board_get_factory_addr"
.LASF99:
	.string	"mac_default"
.LASF72:
	.string	"result"
.LASF54:
	.string	"factory_addr"
.LASF74:
	.string	"ap_ssid_len"
.LASF53:
	.string	"fdt_getprop"
.LASF32:
	.string	"bl_wifi_ap_info_set"
.LASF4:
	.string	"int8_t"
.LASF59:
	.string	"offset1"
.LASF62:
	.string	"offset2"
.LASF50:
	.string	"bl_wifi_ap_mac_addr_set"
.LASF3:
	.string	"short int"
.LASF16:
	.string	"size_t"
.LASF63:
	.string	"channel_div_table"
.LASF61:
	.string	"lentmp"
.LASF103:
	.string	"update_mac_config_get_mac_from_efuse"
.LASF52:
	.string	"memcpy"
.LASF22:
	.string	"LOG_BUF_OUT_DATA_TYPE_HEX"
.LASF95:
	.string	"update_mac_config"
.LASF42:
	.string	"fdt_stringlist_get"
.LASF102:
	.string	"result_and"
.LASF101:
	.string	"result_or"
.LASF108:
	.string	"TrapNetCounter"
.LASF8:
	.string	"uint8_t"
.LASF90:
	.string	"capcode"
.LASF23:
	.string	"LOG_BUF_OUT_DATA_TYPE_INT8"
.LASF112:
	.string	"xPortIsInsideInterrupt"
.LASF31:
	.string	"bl_wifi_country_code_set"
.LASF71:
	.string	"countindex"
.LASF85:
	.string	"poweroffset_tmp"
.LASF84:
	.string	"poweroffset"
.LASF17:
	.string	"long double"
.LASF7:
	.string	"long long int"
.LASF41:
	.string	"bl_efuse_read_capcode"
.LASF83:
	.string	"order"
.LASF39:
	.string	"memset"
.LASF26:
	.string	"hal_boot2_partition_bus_addr_active"
.LASF24:
	.string	"LOG_BUF_OUT_DATA_TYPE_UNT8"
.LASF6:
	.string	"long int"
.LASF81:
	.string	"update_poweroffset_config"
.LASF51:
	.string	"bl_wifi_sta_mac_addr_set"
.LASF92:
	.string	"update_xtal_config_get_mac_from_dtb"
.LASF96:
	.string	"mac_mode"
.LASF45:
	.string	"xTaskGetTickCount"
.LASF9:
	.string	"unsigned char"
.LASF43:
	.string	"fdt_stringlist_count"
.LASF49:
	.string	"bl_efuse_read_mac"
.LASF70:
	.string	"name"
.LASF66:
	.string	"pwr_table"
.LASF104:
	.string	"update_mac_config_get_mac_from_dtb"
.LASF109:
	.string	"LOG_BUF_OUT_DATA_TYPE"
.LASF68:
	.string	"hal_board_load_fdt_info"
.LASF97:
	.string	"update_mac_config_with_order"
.LASF105:
	.string	"ble_controller_set_tx_pwr"
.LASF25:
	.string	"LOG_BUF_OUT_DATA_TYPE_T"
.LASF48:
	.string	"bl_efuse_read_mac_factory"
.LASF2:
	.string	"signed char"
.LASF34:
	.string	"fdt_subnode_offset"
.LASF14:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF15:
	.string	"unsigned int"
.LASF10:
	.string	"uint16_t"
.LASF20:
	.string	"BaseType_t"
.LASF13:
	.string	"long unsigned int"
.LASF29:
	.string	"bl_tpc_update_power_rate_11g"
.LASF67:
	.string	"pwr_table_ble"
.LASF19:
	.string	"fdt32_t"
.LASF58:
	.string	"bt_offset"
.LASF28:
	.string	"bl_tpc_update_power_rate_11n"
.LASF98:
	.string	"mac_addr"
.LASF18:
	.string	"char"
.LASF100:
	.string	"update_mac_config_get_mac_from_factory"
.LASF35:
	.string	"phy_powroffset_set"
.LASF47:
	.string	"strlen"
.LASF5:
	.string	"int32_t"
.LASF60:
	.string	"addr_prop"
.LASF11:
	.string	"short unsigned int"
.LASF57:
	.string	"wifi_offset"
.LASF107:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF73:
	.string	"ap_ssid"
.LASF33:
	.string	"bl_wifi_sta_info_set"
.LASF75:
	.string	"ap_psk"
.LASF21:
	.string	"TickType_t"
.LASF30:
	.string	"bl_tpc_update_power_rate_11b"
.LASF94:
	.string	"capcode_efuse"
.LASF40:
	.string	"hal_sys_capcode_update"
.LASF37:
	.string	"log_buf_out"
.LASF79:
	.string	"auto_connect_enable"
.LASF80:
	.string	"pwr_mode"
.LASF91:
	.string	"break_scan"
.LASF82:
	.string	"update_poweroffset_config_with_order"
.LASF93:
	.string	"update_xtal_config_get_mac_from_factory"
.LASF55:
	.string	"size"
.LASF36:
	.string	"ble_rf_set_pwr_offset"
.LASF56:
	.string	"board_code"
.LASF27:
	.string	"hal_boot2_partition_addr_active"
.LASF46:
	.string	"xTaskGetTickCountFromISR"
.LASF110:
	.string	"hal_board_cfg"
.LASF38:
	.string	"bl_efuse_read_pwroft"
.LASF78:
	.string	"update_sta_field"
.LASF76:
	.string	"ap_psk_len"
.LASF44:
	.string	"bl_printk"
.LASF64:
	.string	"channel_cnt_table"
.LASF106:
	.string	"fdt32_to_cpu"
.LASF65:
	.string	"lo_fcal_div"
.LASF87:
	.string	"update_xtal_config"
.LASF69:
	.string	"update_ap_field"
.LASF89:
	.string	"update_xtal_config_with_order"
.LASF86:
	.string	"update_poweroffset_config_get_mac_from_dtb"
.LASF88:
	.string	"xtal_mode"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_board.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
