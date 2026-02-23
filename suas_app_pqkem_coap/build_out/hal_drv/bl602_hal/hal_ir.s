	.file	"hal_ir.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.hal_ir_init_from_dts.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"ctrltype"
	.align	2
.LC1:
	.string	"hal_ir.c"
	.align	2
.LC2:
	.string	"\033[32mINFO  \033[0m"
	.align	2
.LC3:
	.string	"[%10u][%s: %s:%4d] do not find ctrltype \r\n"
	.align	2
.LC4:
	.string	"[%10u][%s: %s:%4d] ctrltype == %d \r\n"
	.align	2
.LC5:
	.string	"rx"
	.align	2
.LC6:
	.string	"[%10u][%s: %s:%4d] ir rx NULL.\r\n"
	.align	2
.LC7:
	.string	"status"
	.align	2
.LC8:
	.string	"[%10u][%s: %s:%4d] ir rx status_countindex = %d NULL.\r\n"
	.align	2
.LC9:
	.string	"okay"
	.align	2
.LC10:
	.string	"[%10u][%s: %s:%4d] ir rx status = %s\r\n"
	.align	2
.LC11:
	.string	"pin"
	.align	2
.LC12:
	.string	"[%10u][%s: %s:%4d] ir rx pin NULL.\r\n"
	.align	2
.LC13:
	.string	"[%10u][%s: %s:%4d] pin == %d \r\n"
	.align	2
.LC14:
	.string	"interval"
	.align	2
.LC15:
	.string	"[%10u][%s: %s:%4d] ir rx interval NULL.\r\n"
	.align	2
.LC16:
	.string	"[%10u][%s: %s:%4d] add here pin = %d, interval = %d\r\n"
	.section	.text.hal_ir_init_from_dts,"ax",@progbits
	.align	1
	.globl	hal_ir_init_from_dts
	.type	hal_ir_init_from_dts, @function
hal_ir_init_from_dts:
.LVL0:
.LFB46:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
.LM4:
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
.LM5:
	lui	a2,%hi(.LC0)
	addi	a3,sp,12
	addi	a2,a2,%lo(.LC0)
.LM6:
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	s6,32(sp)
	sw	ra,60(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s7,28(sp)
	sw	s8,24(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 22, -32
	.cfi_offset 1, -4
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 23, -36
	.cfi_offset 24, -40
.LM7:
	mv	s6,a0
.LVL1:
.LM8:
.LM9:
.LM10:
	mv	s0,a1
.LM11:
	sw	zero,12(sp)
.LM12:
.LVL2:
.LM13:
.LM14:
.LM15:
.LM16:
.LM17:
.LBB48:
.LBB49:
.LM18:
	lui	s3,%hi(TrapNetCounter)
.LBE49:
.LBE48:
.LM19:
	call	fdt_getprop
.LVL3:
.LM20:
.LBB52:
.LBB50:
.LM21:
	lw	a3,%lo(TrapNetCounter)(s3)
	lui	s2,%hi(.LC1)
	lui	s1,%hi(.LC2)
.LBE50:
.LBE52:
.LM22:
	bne	a0,zero,.L2
.LM23:
.LM24:
.LM25:
.LBB53:
.LBI48:
.LM26:
.LBB51:
.LM27:
.LBE51:
.LBE53:
.LM28:
	beq	a3,zero,.L3
.LM29:
	call	xTaskGetTickCountFromISR
.LVL4:
.L36:
.LM30:
	mv	a1,a0
.LM31:
	lui	a0,%hi(.LC3)
	li	a4,68
	addi	a3,s2,%lo(.LC1)
	addi	a2,s1,%lo(.LC2)
	addi	a0,a0,%lo(.LC3)
	call	bl_printk
.LVL5:
.LM32:
.LM33:
.LM34:
	li	s4,0
.LVL6:
.L5:
.LM35:
.LM36:
.LM37:
.LM38:
	lui	a2,%hi(.LC5)
	addi	a2,a2,%lo(.LC5)
	mv	a1,s0
	mv	a0,s6
	call	fdt_subnode_offset
.LVL7:
	mv	s7,a0
.LVL8:
.LM39:
.LM40:
	bgt	a0,zero,.L8
.LM41:
.LM42:
.LM43:
.LBB54:
.LBI54:
.LM44:
.LBB55:
.LM45:
.LBE55:
.LBE54:
.LM46:
	lw	a5,%lo(TrapNetCounter)(s3)
	beq	a5,zero,.L9
.LM47:
	call	xTaskGetTickCountFromISR
.LVL9:
.L38:
.LM48:
	mv	a1,a0
.LM49:
	lui	a0,%hi(.LC6)
	li	a4,76
	addi	a3,s2,%lo(.LC1)
	addi	a2,s1,%lo(.LC2)
	addi	a0,a0,%lo(.LC6)
.LVL10:
.L40:
.LM50:
	call	bl_printk
.LVL11:
.LM51:
.LM52:
	j	.L11
.LVL12:
.L3:
.LM53:
	call	xTaskGetTickCount
.LVL13:
.LM54:
	j	.L36
.LVL14:
.L2:
.LM55:
.LM56:
	lw	a4,0(a0)
.LVL15:
.LBB56:
.LBI56:
.LM57:
.LBB57:
.LM58:
.LM59:
	srli	a5,a4,8
	andi	a5,a5,0xff
.LM60:
	slli	s4,a4,24
.LM61:
	slli	a5,a5,16
.LM62:
	or	s4,s4,a5
.LM63:
	srli	a5,a4,24
.LM64:
	srli	a4,a4,16
	andi	a4,a4,0xff
.LM65:
	or	s4,s4,a5
.LM66:
	slli	a4,a4,8
.LM67:
	or	s4,s4,a4
.LVL16:
.LM68:
.LBE57:
.LBE56:
.LM69:
.LM70:
.LM71:
.LM72:
	beq	a3,zero,.L6
.LM73:
	call	xTaskGetTickCountFromISR
.LVL17:
.L37:
.LM74:
	mv	a1,a0
.LM75:
	lui	a0,%hi(.LC4)
	mv	a5,s4
	li	a4,71
	addi	a3,s2,%lo(.LC1)
	addi	a2,s1,%lo(.LC2)
	addi	a0,a0,%lo(.LC4)
	call	bl_printk
.LVL18:
	j	.L5
.LVL19:
.L6:
.LM76:
	call	xTaskGetTickCount
.LVL20:
.LM77:
	j	.L37
.LVL21:
.L9:
.LM78:
	call	xTaskGetTickCount
.LVL22:
.LM79:
	j	.L38
.LVL23:
.L8:
.LM80:
.LM81:
	lui	s0,%hi(.LC7)
.LVL24:
.LM82:
	mv	a1,a0
	addi	a2,s0,%lo(.LC7)
	mv	a0,s6
.LVL25:
.LM83:
	call	fdt_stringlist_count
.LVL26:
.LM84:
	li	a5,1
.LM85:
	mv	s5,a0
.LVL27:
.LM86:
.LM87:
	beq	a0,a5,.L12
.LM88:
.LM89:
.LM90:
.LBB58:
.LBI58:
.LM91:
.LBB59:
.LM92:
.LBE59:
.LBE58:
.LM93:
	lw	a5,%lo(TrapNetCounter)(s3)
	beq	a5,zero,.L13
.LM94:
	call	xTaskGetTickCountFromISR
.LVL28:
.L39:
.LM95:
	mv	a1,a0
.LM96:
	lui	a0,%hi(.LC8)
	mv	a5,s5
	li	a4,80
	addi	a3,s2,%lo(.LC1)
	addi	a2,s1,%lo(.LC2)
	addi	a0,a0,%lo(.LC8)
.LVL29:
.L41:
.LM97:
	call	bl_printk
.LVL30:
.LM98:
.LM99:
.L11:
.LM100:
	li	s5,0
.LVL31:
.L15:
.LM101:
.LM102:
.LM103:
	mv	a1,s4
	mv	a0,s5
	call	bl_ir_init
.LVL32:
.LM104:
.LM105:
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
	lw	s4,40(sp)
	.cfi_restore 20
.LVL33:
.LM106:
	lw	s5,36(sp)
	.cfi_restore 21
.LVL34:
.LM107:
	lw	s6,32(sp)
	.cfi_restore 22
.LVL35:
.LM108:
	lw	s7,28(sp)
	.cfi_restore 23
.LVL36:
.LM109:
	lw	s8,24(sp)
	.cfi_restore 24
	li	a0,0
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL37:
.L13:
	.cfi_restore_state
.LM110:
	call	xTaskGetTickCount
.LVL38:
.LM111:
	j	.L39
.LVL39:
.L12:
.LM112:
.LM113:
	addi	a2,s0,%lo(.LC7)
	addi	a4,sp,12
	li	a3,0
	mv	a1,s7
	mv	a0,s6
.LVL40:
.LM114:
	call	fdt_stringlist_get
.LVL41:
.LM115:
	lw	a2,12(sp)
	li	a5,4
.LM116:
	mv	s0,a0
.LVL42:
.LM117:
.LM118:
	beq	a2,a5,.L16
.L19:
.LM119:
.LM120:
.LM121:
.LBB60:
.LBI60:
.LM122:
.LBB61:
.LM123:
.LBE61:
.LBE60:
.LM124:
	lw	a5,%lo(TrapNetCounter)(s3)
	bne	a5,zero,.L17
.LM125:
	call	xTaskGetTickCount
.LVL43:
	j	.L42
.L16:
.LM126:
	mv	a1,a0
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	call	memcmp
.LVL44:
.LM127:
	bne	a0,zero,.L19
.LM128:
.LM129:
	lui	a2,%hi(.LC11)
	addi	a3,sp,12
	addi	a2,a2,%lo(.LC11)
	mv	a1,s7
	mv	a0,s6
	call	fdt_getprop
.LVL45:
.LM130:
.LBB62:
.LBB63:
.LM131:
	lw	a3,%lo(TrapNetCounter)(s3)
.LBE63:
.LBE62:
.LM132:
	bne	a0,zero,.L22
.LM133:
.LM134:
.LM135:
.LBB65:
.LBI62:
.LM136:
.LBB64:
.LM137:
.LBE64:
.LBE65:
.LM138:
	beq	a3,zero,.L23
.LM139:
	call	xTaskGetTickCountFromISR
.LVL46:
.L43:
.LM140:
	mv	a1,a0
.LM141:
	lui	a0,%hi(.LC12)
	li	a4,89
	addi	a3,s2,%lo(.LC1)
	addi	a2,s1,%lo(.LC2)
	addi	a0,a0,%lo(.LC12)
	j	.L40
.L17:
.LM142:
	call	xTaskGetTickCountFromISR
.LVL47:
.L42:
.LM143:
	mv	a1,a0
.LM144:
	lui	a0,%hi(.LC10)
	mv	a5,s0
	li	a4,84
	addi	a3,s2,%lo(.LC1)
	addi	a2,s1,%lo(.LC2)
	addi	a0,a0,%lo(.LC10)
	j	.L41
.LVL48:
.L23:
.LM145:
	call	xTaskGetTickCount
.LVL49:
.LM146:
	j	.L43
.LVL50:
.L22:
.LM147:
.LM148:
	lw	a4,0(a0)
.LVL51:
.LBB66:
.LBI66:
.LM149:
.LBB67:
.LM150:
.LM151:
	srli	a5,a4,8
	andi	a5,a5,0xff
.LM152:
	slli	a5,a5,16
.LM153:
	slli	s5,a4,24
.LVL52:
.LM154:
	srli	s0,a4,16
.LVL53:
.LM155:
	or	s5,s5,a5
.LM156:
	andi	s0,s0,0xff
.LM157:
	srli	a5,a4,24
.LM158:
	or	s5,s5,a5
.LM159:
	slli	s0,s0,8
.LM160:
	or	s0,s5,s0
.LVL54:
.LM161:
.LBE67:
.LBE66:
.LM162:
	andi	s5,s5,0xff
.LVL55:
.LM163:
.LM164:
.LM165:
.LM166:
	beq	a3,zero,.L25
.LM167:
	call	xTaskGetTickCountFromISR
.LVL56:
.L44:
.LM168:
	mv	a1,a0
.LM169:
	lui	a0,%hi(.LC13)
	andi	a5,s0,255
	li	a4,92
	addi	a3,s2,%lo(.LC1)
	addi	a2,s1,%lo(.LC2)
	addi	a0,a0,%lo(.LC13)
	mv	s8,a5
	call	bl_printk
.LVL57:
.LM170:
.LM171:
.LM172:
.LM173:
	lui	a2,%hi(.LC14)
	addi	a3,sp,12
	addi	a2,a2,%lo(.LC14)
	mv	a1,s7
	mv	a0,s6
	call	fdt_getprop
.LVL58:
.LM174:
.LBB68:
.LBB69:
.LM175:
	lw	a3,%lo(TrapNetCounter)(s3)
.LBE69:
.LBE68:
.LM176:
	bne	a0,zero,.L27
.LM177:
.LM178:
.LM179:
.LBB71:
.LBI68:
.LM180:
.LBB70:
.LM181:
.LBE70:
.LBE71:
.LM182:
	beq	a3,zero,.L28
.LM183:
	call	xTaskGetTickCountFromISR
.LVL59:
.L45:
.LM184:
	mv	a1,a0
.LM185:
	lui	a0,%hi(.LC15)
	li	a4,95
	addi	a3,s2,%lo(.LC1)
	addi	a2,s1,%lo(.LC2)
	addi	a0,a0,%lo(.LC15)
	call	bl_printk
.LVL60:
.LM186:
.LM187:
	j	.L15
.LVL61:
.L25:
.LM188:
	call	xTaskGetTickCount
.LVL62:
.LM189:
	j	.L44
.LVL63:
.L28:
.LM190:
	call	xTaskGetTickCount
.LVL64:
.LM191:
	j	.L45
.LVL65:
.L27:
.LM192:
.LM193:
	lw	a5,0(a0)
.LVL66:
.LBB72:
.LBI72:
.LM194:
.LBB73:
.LM195:
.LM196:
	srli	a4,a5,8
	andi	a4,a4,0xff
.LM197:
	slli	s0,a5,24
.LM198:
	slli	a4,a4,16
.LM199:
	or	s0,s0,a4
.LM200:
	srli	a4,a5,24
.LM201:
	srli	a5,a5,16
.LVL67:
.LM202:
	or	s0,s0,a4
.LM203:
	slli	a5,a5,8
.LM204:
	or	s0,s0,a5
.LVL68:
.LM205:
.LBE73:
.LBE72:
.LM206:
.LM207:
.LM208:
.LM209:
	beq	a3,zero,.L31
.LM210:
	call	xTaskGetTickCountFromISR
.LVL69:
.L46:
.LM211:
	mv	a1,a0
.LM212:
	slli	a6,s0,16
	lui	a0,%hi(.LC16)
	srli	a6,a6,16
	mv	a5,s8
	li	a4,98
	addi	a3,s2,%lo(.LC1)
	addi	a2,s1,%lo(.LC2)
	addi	a0,a0,%lo(.LC16)
	call	bl_printk
.LVL70:
	j	.L15
.LVL71:
.L31:
.LM213:
	call	xTaskGetTickCount
.LVL72:
.LM214:
	j	.L46
	.cfi_endproc
.LFE46:
	.size	hal_ir_init_from_dts, .-hal_ir_init_from_dts
	.section	.text.hal_irled_init,"ax",@progbits
	.align	1
	.globl	hal_irled_init
	.type	hal_irled_init, @function
hal_irled_init:
.LVL73:
.LFB47:
.LM215:
	.cfi_startproc
.LM216:
.LM217:
	li	a5,1
	bgtu	a0,a5,.L49
.LM218:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
.LM219:
	call	bl_irled_gpio_init
.LVL74:
.LM220:
	mv	a0,s0
	call	bl_irled_init
.LVL75:
.LM221:
.LM222:
	lui	a5,%hi(g_chip_type)
.LM223:
	lw	ra,12(sp)
	.cfi_restore 1
.LM224:
	sw	s0,%lo(g_chip_type)(a5)
.LM225:
.LM226:
	lw	s0,8(sp)
	.cfi_restore 8
.LVL76:
.LM227:
	li	a0,0
.LM228:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL77:
.L49:
.LM229:
	li	a0,-1
.LVL78:
.LM230:
	ret
	.cfi_endproc
.LFE47:
	.size	hal_irled_init, .-hal_irled_init
	.section	.text.hal_irled_send_data,"ax",@progbits
	.align	1
	.globl	hal_irled_send_data
	.type	hal_irled_send_data, @function
hal_irled_send_data:
.LVL79:
.LFB48:
.LM231:
	.cfi_startproc
.LM232:
.LM233:
.LM234:
.LM235:
.LM236:
	beq	a1,zero,.L60
	ble	a0,zero,.L60
.LM237:
.LM238:
	lui	a5,%hi(g_chip_type)
.LM239:
	lw	a5,%lo(g_chip_type)(a5)
.LM240:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s4,8(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s5,4(sp)
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 21, -28
.LM241:
	li	s4,50
.LM242:
	beq	a5,zero,.L68
.LM243:
	li	s4,24
.L68:
.LM244:
	lui	s3,%hi(last_us.0)
	mv	s2,a1
	mv	s1,a0
.LM245:
	call	bl_timer_now_us64
.LVL80:
.LM246:
	lw	s0,%lo(last_us.0)(s3)
	lw	a5,%lo(last_us.0+4)(s3)
.LM247:
	li	s5,0
.LVL81:
.LM248:
.LM249:
	sub	a4,a0,s0
	sgtu	a0,a4,a0
	sub	a5,a1,a5
	sub	a5,a5,a0
.LM250:
	bne	s5,a5,.L57
.LM251:
	bleu	s4,a4,.L57
.LM252:
.LM253:
	call	bl_timer_now_us64
.LVL82:
.LM254:
	add	s0,s0,s4
	sub	a0,s0,a0
	call	bl_timer_delay_us
.LVL83:
.L57:
.LM255:
.LBB74:
.LBI74:
.LM256:
.LBB75:
.LM257:
 #APP
# 94 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
	csrci mstatus, 8
# 0 "" 2
 #NO_APP
.LBE75:
.LBE74:
.LM258:
.LVL84:
.LM259:
.LM260:
	li	s0,0
.LVL85:
.L59:
.LM261:
	slli	a5,s0,2
	add	a5,s2,a5
	lw	a0,0(a5)
.LM262:
	addi	s0,s0,1
.LVL86:
.LM263:
	call	bl_irled_send_one_data
.LVL87:
.LM264:
.LM265:
	bgt	s1,s0,.L59
.LM266:
.LBB76:
.LBI76:
.LM267:
.LBB77:
.LM268:
 #APP
# 89 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
	csrsi mstatus, 8
# 0 "" 2
 #NO_APP
.LBE77:
.LBE76:
.LM269:
.LM270:
	call	bl_timer_now_us64
.LVL88:
.LM271:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL89:
.LM272:
	sw	a0,%lo(last_us.0)(s3)
	sw	a1,%lo(last_us.0+4)(s3)
.LM273:
.LM274:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL90:
.LM275:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL91:
.LM276:
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
.LVL92:
.LM277:
	lw	s5,4(sp)
	.cfi_restore 21
.LM278:
	li	a0,0
.LM279:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL93:
.L60:
.LM280:
	li	a0,-1
.LVL94:
.LM281:
	ret
	.cfi_endproc
.LFE48:
	.size	hal_irled_send_data, .-hal_irled_send_data
	.section	.sbss.last_us.0,"aw",@nobits
	.align	3
	.type	last_us.0, @object
	.size	last_us.0, 8
last_us.0:
	.zero	8
	.section	.sbss.g_chip_type,"aw",@nobits
	.align	2
	.type	g_chip_type, @object
	.size	g_chip_type, 4
g_chip_type:
	.zero	4
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x850
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x18
	.4byte	.LASF56
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL21
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x19
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x5
	.byte	0xe5
	.byte	0x16
	.4byte	0x32
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x13
	.4byte	0x84
	.uleb128 0x8
	.4byte	0x8b
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x6
	.byte	0x28
	.byte	0x12
	.4byte	0x55
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x6
	.byte	0x2e
	.byte	0x17
	.4byte	0x40
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.4byte	0x4e
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x6
	.byte	0x34
	.byte	0x1b
	.4byte	0x5c
	.uleb128 0x13
	.4byte	0xb9
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x6
	.byte	0x37
	.byte	0x20
	.4byte	0x2b
	.uleb128 0x8
	.4byte	0xdb
	.uleb128 0x1a
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x3
	.byte	0x63
	.byte	0x12
	.4byte	0xb9
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0x95
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x2
	.byte	0x41
	.byte	0x12
	.4byte	0xb9
	.uleb128 0x1b
	.4byte	.LASF37
	.byte	0x2
	.byte	0x5c
	.byte	0x13
	.4byte	0xe8
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x2e
	.byte	0xc
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	g_chip_type
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x7
	.byte	0x28
	.4byte	0x6a
	.4byte	0x132
	.uleb128 0x3
	.4byte	0xb9
	.byte	0
	.uleb128 0x14
	.4byte	.LASF31
	.byte	0x8
	.byte	0x22
	.4byte	0x143
	.uleb128 0x3
	.4byte	0xb9
	.byte	0
	.uleb128 0x15
	.4byte	.LASF24
	.byte	0x8
	.byte	0x23
	.byte	0xa
	.4byte	0xca
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x7
	.byte	0x27
	.4byte	0x6a
	.4byte	0x164
	.uleb128 0x3
	.4byte	0x6a
	.byte	0
	.uleb128 0x15
	.4byte	.LASF25
	.byte	0x7
	.byte	0x26
	.byte	0x5
	.4byte	0x6a
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x7
	.byte	0x24
	.4byte	0x6a
	.4byte	0x18a
	.uleb128 0x3
	.4byte	0x6a
	.uleb128 0x3
	.4byte	0x6a
	.byte	0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x9
	.byte	0x1e
	.4byte	0x6a
	.4byte	0x1a9
	.uleb128 0x3
	.4byte	0xd6
	.uleb128 0x3
	.4byte	0xd6
	.uleb128 0x3
	.4byte	0x71
	.byte	0
	.uleb128 0xb
	.4byte	.LASF28
	.2byte	0x470
	.byte	0xd
	.4byte	0x90
	.4byte	0x1d3
	.uleb128 0x3
	.4byte	0xd6
	.uleb128 0x3
	.4byte	0x6a
	.uleb128 0x3
	.4byte	0x90
	.uleb128 0x3
	.4byte	0x6a
	.uleb128 0x3
	.4byte	0x1d3
	.byte	0
	.uleb128 0x8
	.4byte	0x6a
	.uleb128 0xb
	.4byte	.LASF29
	.2byte	0x440
	.byte	0x5
	.4byte	0x6a
	.4byte	0x1f8
	.uleb128 0x3
	.4byte	0xd6
	.uleb128 0x3
	.4byte	0x6a
	.uleb128 0x3
	.4byte	0x90
	.byte	0
	.uleb128 0xb
	.4byte	.LASF30
	.2byte	0x1de
	.byte	0x5
	.4byte	0x6a
	.4byte	0x218
	.uleb128 0x3
	.4byte	0xd6
	.uleb128 0x3
	.4byte	0x6a
	.uleb128 0x3
	.4byte	0x90
	.byte	0
	.uleb128 0x14
	.4byte	.LASF32
	.byte	0xb
	.byte	0x9e
	.4byte	0x22a
	.uleb128 0x3
	.4byte	0x90
	.uleb128 0x1c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF33
	.2byte	0x54c
	.4byte	0xf4
	.uleb128 0x16
	.4byte	.LASF34
	.2byte	0x55d
	.4byte	0xf4
	.uleb128 0xb
	.4byte	.LASF35
	.2byte	0x311
	.byte	0xd
	.4byte	0xd6
	.4byte	0x265
	.uleb128 0x3
	.4byte	0xd6
	.uleb128 0x3
	.4byte	0x6a
	.uleb128 0x3
	.4byte	0x90
	.uleb128 0x3
	.4byte	0x1d3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x7f
	.4byte	0x6a
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x32f
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x7f
	.byte	0x1d
	.4byte	0x6a
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x1d
	.string	"buf"
	.byte	0x1
	.byte	0x7f
	.byte	0x31
	.4byte	0x32f
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0xf
	.string	"i"
	.byte	0x81
	.byte	0x9
	.4byte	0x6a
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x82
	.byte	0x15
	.4byte	0xca
	.uleb128 0x5
	.byte	0x3
	.4byte	last_us.0
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x83
	.byte	0xe
	.4byte	0xca
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x9
	.4byte	0x822
	.4byte	.LBI74
	.byte	0x19
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.byte	0x95
	.byte	0x5
	.uleb128 0x9
	.4byte	0x828
	.4byte	.LBI76
	.byte	0x24
	.4byte	.LBB76
	.4byte	.LBE76-.LBB76
	.byte	0x99
	.byte	0x5
	.uleb128 0x2
	.4byte	.LVL80
	.4byte	0x143
	.uleb128 0x2
	.4byte	.LVL82
	.4byte	0x143
	.uleb128 0x2
	.4byte	.LVL83
	.4byte	0x132
	.uleb128 0x2
	.4byte	.LVL87
	.4byte	0x11d
	.uleb128 0x2
	.4byte	.LVL88
	.4byte	0x143
	.byte	0
	.uleb128 0x8
	.4byte	0xb9
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x6f
	.4byte	0x6a
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x379
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x6f
	.byte	0x18
	.4byte	0x6a
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x2
	.4byte	.LVL74
	.4byte	0x164
	.uleb128 0x1e
	.4byte	.LVL75
	.4byte	0x14f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x34
	.4byte	0x6a
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x81d
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x34
	.byte	0x23
	.4byte	0xb9
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x34
	.byte	0x37
	.4byte	0xb9
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x36
	.byte	0x9
	.4byte	0x6a
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xf
	.string	"fdt"
	.byte	0x37
	.byte	0x11
	.4byte	0xd6
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x39
	.byte	0x15
	.4byte	0x81d
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x3a
	.byte	0x9
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x3b
	.byte	0x11
	.4byte	0x90
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x3c
	.byte	0x9
	.4byte	0x6a
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x3d
	.byte	0x9
	.4byte	0x6a
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0xf
	.string	"pin"
	.byte	0x3f
	.byte	0xd
	.4byte	0xa1
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x40
	.byte	0xe
	.4byte	0xad
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x10
	.4byte	0x82e
	.4byte	.LBI48
	.byte	0x19
	.4byte	.LLRL10
	.byte	0x44
	.byte	0x4e
	.uleb128 0x9
	.4byte	0x82e
	.4byte	.LBI54
	.byte	0x2b
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x4c
	.byte	0x44
	.uleb128 0x11
	.4byte	0x83b
	.4byte	.LBI56
	.byte	0x38
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x46
	.byte	0x1f
	.4byte	0x4a7
	.uleb128 0x12
	.4byte	0x848
	.4byte	.LLST11
	.4byte	.LVUS11
	.byte	0
	.uleb128 0x9
	.4byte	0x82e
	.4byte	.LBI58
	.byte	0x5a
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.byte	0x50
	.byte	0x5f
	.uleb128 0x9
	.4byte	0x82e
	.4byte	.LBI60
	.byte	0x79
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.byte	0x54
	.byte	0x52
	.uleb128 0x10
	.4byte	0x82e
	.4byte	.LBI62
	.byte	0x87
	.4byte	.LLRL12
	.byte	0x59
	.byte	0x54
	.uleb128 0x11
	.4byte	0x83b
	.4byte	.LBI66
	.byte	0x94
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.byte	0x5b
	.byte	0x26
	.4byte	0x505
	.uleb128 0x12
	.4byte	0x848
	.4byte	.LLST13
	.4byte	.LVUS13
	.byte	0
	.uleb128 0x10
	.4byte	0x82e
	.4byte	.LBI68
	.byte	0xb3
	.4byte	.LLRL14
	.byte	0x5f
	.byte	0x5d
	.uleb128 0x11
	.4byte	0x83b
	.4byte	.LBI72
	.byte	0xc1
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.byte	0x61
	.byte	0x2f
	.4byte	0x53b
	.uleb128 0x12
	.4byte	0x848
	.4byte	.LLST15
	.4byte	.LVUS15
	.byte	0
	.uleb128 0x4
	.4byte	.LVL3
	.4byte	0x240
	.4byte	0x564
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x86
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x2
	.4byte	.LVL4
	.4byte	0x235
	.uleb128 0x4
	.4byte	.LVL5
	.4byte	0x218
	.4byte	0x59c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x44
	.byte	0
	.uleb128 0x4
	.4byte	.LVL7
	.4byte	0x1f8
	.4byte	0x5bf
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x86
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x2
	.4byte	.LVL9
	.4byte	0x235
	.uleb128 0x2
	.4byte	.LVL11
	.4byte	0x218
	.uleb128 0x2
	.4byte	.LVL13
	.4byte	0x22a
	.uleb128 0x2
	.4byte	.LVL17
	.4byte	0x235
	.uleb128 0x4
	.4byte	.LVL18
	.4byte	0x218
	.4byte	0x618
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x47
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x84
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL20
	.4byte	0x22a
	.uleb128 0x2
	.4byte	.LVL22
	.4byte	0x22a
	.uleb128 0x4
	.4byte	.LVL26
	.4byte	0x1d8
	.4byte	0x64d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x86
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x87
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x2
	.4byte	.LVL28
	.4byte	0x235
	.uleb128 0x2
	.4byte	.LVL30
	.4byte	0x218
	.uleb128 0x4
	.4byte	.LVL32
	.4byte	0x170
	.4byte	0x679
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x85
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x84
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LVL38
	.4byte	0x22a
	.uleb128 0x4
	.4byte	.LVL41
	.4byte	0x1a9
	.4byte	0x6b0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x86
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x87
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x2
	.4byte	.LVL43
	.4byte	0x22a
	.uleb128 0x4
	.4byte	.LVL44
	.4byte	0x18a
	.4byte	0x6d6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4
	.4byte	.LVL45
	.4byte	0x240
	.4byte	0x6ff
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x86
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x87
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x2
	.4byte	.LVL46
	.4byte	0x235
	.uleb128 0x2
	.4byte	.LVL47
	.4byte	0x235
	.uleb128 0x2
	.4byte	.LVL49
	.4byte	0x22a
	.uleb128 0x2
	.4byte	.LVL56
	.4byte	0x235
	.uleb128 0x4
	.4byte	.LVL57
	.4byte	0x218
	.4byte	0x758
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x5c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x88
	.sleb128 0
	.byte	0
	.uleb128 0x4
	.4byte	.LVL58
	.4byte	0x240
	.4byte	0x781
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x86
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x87
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x2
	.4byte	.LVL59
	.4byte	0x235
	.uleb128 0x4
	.4byte	.LVL60
	.4byte	0x218
	.4byte	0x7b9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x5f
	.byte	0
	.uleb128 0x2
	.4byte	.LVL62
	.4byte	0x22a
	.uleb128 0x2
	.4byte	.LVL64
	.4byte	0x22a
	.uleb128 0x2
	.4byte	.LVL69
	.4byte	0x235
	.uleb128 0x4
	.4byte	.LVL70
	.4byte	0x218
	.4byte	0x813
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x88
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x60
	.uleb128 0x6
	.byte	0x78
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0
	.uleb128 0x2
	.4byte	.LVL72
	.4byte	0x22a
	.byte	0
	.uleb128 0x8
	.4byte	0xc5
	.uleb128 0x17
	.4byte	.LASF54
	.byte	0x5c
	.uleb128 0x17
	.4byte	.LASF55
	.byte	0x57
	.uleb128 0x1f
	.4byte	.LASF57
	.byte	0x2
	.byte	0xb3
	.byte	0x3a
	.4byte	0xe8
	.byte	0x3
	.uleb128 0x20
	.4byte	.LASF58
	.byte	0x3
	.byte	0x78
	.byte	0x18
	.4byte	0xb9
	.byte	0x3
	.uleb128 0x21
	.string	"x"
	.byte	0x3
	.byte	0x78
	.byte	0x2d
	.4byte	0xdc
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
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
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 55
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS17:
	.uleb128 0
	.uleb128 0xf
	.uleb128 0xf
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x31
	.uleb128 0x31
	.uleb128 0x32
	.uleb128 0x32
	.uleb128 0
.LLST17:
	.byte	0x6
	.4byte	.LVL79
	.byte	0x4
	.uleb128 .LVL79-.LVL79
	.uleb128 .LVL80-1-.LVL79
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL80-1-.LVL79
	.uleb128 .LVL90-.LVL79
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL90-.LVL79
	.uleb128 .LVL93-.LVL79
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL93-.LVL79
	.uleb128 .LVL94-.LVL79
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL94-.LVL79
	.uleb128 .LFE48-.LVL79
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS18:
	.uleb128 0
	.uleb128 0xf
	.uleb128 0xf
	.uleb128 0x2d
	.uleb128 0x2d
	.uleb128 0x31
	.uleb128 0x31
	.uleb128 0
.LLST18:
	.byte	0x6
	.4byte	.LVL79
	.byte	0x4
	.uleb128 .LVL79-.LVL79
	.uleb128 .LVL80-1-.LVL79
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL80-1-.LVL79
	.uleb128 .LVL91-.LVL79
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL91-.LVL79
	.uleb128 .LVL93-.LVL79
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL93-.LVL79
	.uleb128 .LFE48-.LVL79
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS19:
	.uleb128 0x1c
	.uleb128 0x1e
	.uleb128 0x1e
	.uleb128 0x20
	.uleb128 0x20
	.uleb128 0x22
	.uleb128 0x22
	.uleb128 0x29
.LLST19:
	.byte	0x6
	.4byte	.LVL84
	.byte	0x4
	.uleb128 .LVL84-.LVL84
	.uleb128 .LVL85-.LVL84
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL85-.LVL84
	.uleb128 .LVL86-.LVL84
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL86-.LVL84
	.uleb128 .LVL87-.LVL84
	.uleb128 0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL87-.LVL84
	.uleb128 .LVL89-.LVL84
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS20:
	.uleb128 0x11
	.uleb128 0x2e
.LLST20:
	.byte	0x8
	.4byte	.LVL81
	.uleb128 .LVL92-.LVL81
	.uleb128 0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x4
	.byte	0x65
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS16:
	.uleb128 0
	.uleb128 0x5
	.uleb128 0x5
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0xf
	.uleb128 0xf
	.uleb128 0
.LLST16:
	.byte	0x6
	.4byte	.LVL73
	.byte	0x4
	.uleb128 .LVL73-.LVL73
	.uleb128 .LVL74-1-.LVL73
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL74-1-.LVL73
	.uleb128 .LVL76-.LVL73
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL76-.LVL73
	.uleb128 .LVL77-.LVL73
	.uleb128 0x5
	.byte	0x3
	.4byte	g_chip_type
	.byte	0x4
	.uleb128 .LVL77-.LVL73
	.uleb128 .LVL78-.LVL73
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL78-.LVL73
	.uleb128 .LFE47-.LVL73
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0x6b
	.uleb128 0x6b
	.uleb128 0x6d
	.uleb128 0x6d
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL3-1-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL3-1-.LVL0
	.uleb128 .LVL35-.LVL0
	.uleb128 0x1
	.byte	0x66
	.byte	0x4
	.uleb128 .LVL35-.LVL0
	.uleb128 .LVL37-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL37-.LVL0
	.uleb128 .LFE46-.LVL0
	.uleb128 0x1
	.byte	0x66
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0x31
	.uleb128 0x31
	.uleb128 0x34
	.uleb128 0x34
	.uleb128 0x51
	.uleb128 0x51
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL3-1-.LVL0
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL3-1-.LVL0
	.uleb128 .LVL10-.LVL0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL10-.LVL0
	.uleb128 .LVL12-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL12-.LVL0
	.uleb128 .LVL24-.LVL0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL24-.LVL0
	.uleb128 .LFE46-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0x2
	.uleb128 0x26
	.uleb128 0x26
	.uleb128 0x2f
	.uleb128 0x2f
	.uleb128 0x34
	.uleb128 0x34
	.uleb128 0x4d
	.uleb128 0x4d
	.uleb128 0x4e
	.uleb128 0x4e
	.uleb128 0x4f
	.uleb128 0x4f
	.uleb128 0x52
	.uleb128 0x52
	.uleb128 0x6c
	.uleb128 0x6d
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL8-.LVL0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.LVL0
	.uleb128 .LVL9-1-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL9-1-.LVL0
	.uleb128 .LVL12-.LVL0
	.uleb128 0x1
	.byte	0x67
	.byte	0x4
	.uleb128 .LVL12-.LVL0
	.uleb128 .LVL21-.LVL0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL21-.LVL0
	.uleb128 .LVL22-1-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL22-1-.LVL0
	.uleb128 .LVL23-.LVL0
	.uleb128 0x1
	.byte	0x67
	.byte	0x4
	.uleb128 .LVL23-.LVL0
	.uleb128 .LVL25-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL25-.LVL0
	.uleb128 .LVL36-.LVL0
	.uleb128 0x1
	.byte	0x67
	.byte	0x4
	.uleb128 .LVL37-.LVL0
	.uleb128 .LFE46-.LVL0
	.uleb128 0x1
	.byte	0x67
	.byte	0
.LVUS3:
	.uleb128 0x7
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0x6b
	.uleb128 0x6b
	.uleb128 0x6d
	.uleb128 0x6d
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL3-1-.LVL1
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL3-1-.LVL1
	.uleb128 .LVL35-.LVL1
	.uleb128 0x1
	.byte	0x66
	.byte	0x4
	.uleb128 .LVL35-.LVL1
	.uleb128 .LVL37-.LVL1
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL37-.LVL1
	.uleb128 .LFE46-.LVL1
	.uleb128 0x1
	.byte	0x66
	.byte	0
.LVUS4:
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0x1d
	.uleb128 0x34
	.uleb128 0x35
	.uleb128 0x36
	.uleb128 0x49
	.uleb128 0x4b
	.uleb128 0x4c
	.uleb128 0x81
	.uleb128 0x8b
	.uleb128 0x90
	.uleb128 0x91
	.uleb128 0x92
	.uleb128 0xa7
	.uleb128 0xad
	.uleb128 0xb7
	.uleb128 0xbb
	.uleb128 0xbc
	.uleb128 0xbd
	.uleb128 0xbe
	.uleb128 0xbf
	.uleb128 0xd2
	.uleb128 0xd4
	.uleb128 0xd5
.LLST4:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL3-.LVL1
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.LVL1
	.uleb128 .LVL4-1-.LVL1
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL12-.LVL1
	.uleb128 .LVL13-1-.LVL1
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL14-.LVL1
	.uleb128 .LVL17-1-.LVL1
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL19-.LVL1
	.uleb128 .LVL20-1-.LVL1
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL45-.LVL1
	.uleb128 .LVL46-1-.LVL1
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL48-.LVL1
	.uleb128 .LVL49-1-.LVL1
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL50-.LVL1
	.uleb128 .LVL56-1-.LVL1
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL58-.LVL1
	.uleb128 .LVL59-1-.LVL1
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL61-.LVL1
	.uleb128 .LVL62-1-.LVL1
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL63-.LVL1
	.uleb128 .LVL64-1-.LVL1
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL65-.LVL1
	.uleb128 .LVL69-1-.LVL1
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL71-.LVL1
	.uleb128 .LVL72-1-.LVL1
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS5:
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x34
	.uleb128 0x60
	.uleb128 0x6d
	.uleb128 0x74
	.uleb128 0x74
	.uleb128 0x9a
.LLST5:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL10-.LVL2
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL12-.LVL2
	.uleb128 .LVL29-.LVL2
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL37-.LVL2
	.uleb128 .LVL42-.LVL2
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL42-.LVL2
	.uleb128 .LVL53-.LVL2
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS6:
	.uleb128 0xd
	.uleb128 0x31
	.uleb128 0x34
	.uleb128 0x55
	.uleb128 0x55
	.uleb128 0x5e
	.uleb128 0x5e
	.uleb128 0x63
	.uleb128 0x6d
	.uleb128 0x6e
	.uleb128 0x6e
	.uleb128 0x6f
	.uleb128 0x6f
	.uleb128 0x71
	.uleb128 0x71
	.uleb128 0x99
.LLST6:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL10-.LVL2
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL12-.LVL2
	.uleb128 .LVL27-.LVL2
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL27-.LVL2
	.uleb128 .LVL28-1-.LVL2
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL28-1-.LVL2
	.uleb128 .LVL30-.LVL2
	.uleb128 0x1
	.byte	0x65
	.byte	0x4
	.uleb128 .LVL37-.LVL2
	.uleb128 .LVL38-1-.LVL2
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL38-1-.LVL2
	.uleb128 .LVL39-.LVL2
	.uleb128 0x1
	.byte	0x65
	.byte	0x4
	.uleb128 .LVL39-.LVL2
	.uleb128 .LVL40-.LVL2
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL40-.LVL2
	.uleb128 .LVL52-.LVL2
	.uleb128 0x1
	.byte	0x65
	.byte	0
.LVUS7:
	.uleb128 0xe
	.uleb128 0x22
	.uleb128 0x22
	.uleb128 0x34
	.uleb128 0x34
	.uleb128 0x43
	.uleb128 0x43
	.uleb128 0x69
	.uleb128 0x6d
	.uleb128 0
.LLST7:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL6-.LVL2
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.LVL2
	.uleb128 .LVL12-.LVL2
	.uleb128 0x1
	.byte	0x64
	.byte	0x4
	.uleb128 .LVL12-.LVL2
	.uleb128 .LVL16-.LVL2
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL2
	.uleb128 .LVL33-.LVL2
	.uleb128 0x1
	.byte	0x64
	.byte	0x4
	.uleb128 .LVL37-.LVL2
	.uleb128 .LFE46-.LVL2
	.uleb128 0x1
	.byte	0x64
	.byte	0
.LVUS8:
	.uleb128 0xf
	.uleb128 0x64
	.uleb128 0x64
	.uleb128 0x6a
	.uleb128 0x6d
	.uleb128 0xa2
	.uleb128 0xa2
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL31-.LVL2
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL31-.LVL2
	.uleb128 .LVL34-.LVL2
	.uleb128 0x1
	.byte	0x65
	.byte	0x4
	.uleb128 .LVL37-.LVL2
	.uleb128 .LVL55-.LVL2
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL55-.LVL2
	.uleb128 .LFE46-.LVL2
	.uleb128 0x1
	.byte	0x65
	.byte	0
.LVUS9:
	.uleb128 0x10
	.uleb128 0x64
	.uleb128 0x6d
	.uleb128 0xcc
	.uleb128 0xcc
	.uleb128 0
.LLST9:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL31-.LVL2
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL37-.LVL2
	.uleb128 .LVL68-.LVL2
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL68-.LVL2
	.uleb128 .LFE46-.LVL2
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS11:
	.uleb128 0x38
	.uleb128 0x3a
.LLST11:
	.byte	0x8
	.4byte	.LVL15
	.uleb128 .LVL15-.LVL15
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS13:
	.uleb128 0x94
	.uleb128 0xa0
.LLST13:
	.byte	0x8
	.4byte	.LVL51
	.uleb128 .LVL54-.LVL51
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS15:
	.uleb128 0xc1
	.uleb128 0xc9
	.uleb128 0xc9
	.uleb128 0xcc
.LLST15:
	.byte	0x6
	.4byte	.LVL66
	.byte	0x4
	.uleb128 .LVL66-.LVL66
	.uleb128 .LVL67-.LVL66
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL67-.LVL66
	.uleb128 .LVL68-.LVL66
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
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
.LLRL10:
	.byte	0x5
	.4byte	.LBB48
	.byte	0x4
	.uleb128 .LBB48-.LBB48
	.uleb128 .LBE48-.LBB48
	.byte	0x4
	.uleb128 .LBB52-.LBB48
	.uleb128 .LBE52-.LBB48
	.byte	0x4
	.uleb128 .LBB53-.LBB48
	.uleb128 .LBE53-.LBB48
	.byte	0
.LLRL12:
	.byte	0x5
	.4byte	.LBB62
	.byte	0x4
	.uleb128 .LBB62-.LBB62
	.uleb128 .LBE62-.LBB62
	.byte	0x4
	.uleb128 .LBB65-.LBB62
	.uleb128 .LBE65-.LBB62
	.byte	0
.LLRL14:
	.byte	0x5
	.4byte	.LBB68
	.byte	0x4
	.uleb128 .LBB68-.LBB68
	.uleb128 .LBE68-.LBB68
	.byte	0x4
	.uleb128 .LBB71-.LBB68
	.uleb128 .LBE71-.LBB68
	.byte	0
.LLRL21:
	.byte	0x7
	.4byte	.LFB46
	.uleb128 .LFE46-.LFB46
	.byte	0x7
	.4byte	.LFB47
	.uleb128 .LFE47-.LFB47
	.byte	0x7
	.4byte	.LFB48
	.uleb128 .LFE48-.LFB48
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.4byte	.LELT0-.LSLT0
.LSLT0:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf2
	.byte	0xd
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x9
	.4byte	.LASF1
	.4byte	.LASF59
	.4byte	.LASF60
	.4byte	.LASF61
	.4byte	.LASF62
	.4byte	.LASF63
	.4byte	.LASF64
	.4byte	.LASF65
	.4byte	.LASF66
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0xd
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF67
	.byte	0x4
	.4byte	.LASF68
	.byte	0x3
	.4byte	.LASF69
	.byte	0x5
	.4byte	.LASF70
	.byte	0x1
	.4byte	.LASF71
	.byte	0x7
	.4byte	.LASF72
	.byte	0x7
	.4byte	.LASF73
	.byte	0x4
	.4byte	.LASF74
	.byte	0x4
	.4byte	.LASF75
	.byte	0x8
	.4byte	.LASF76
	.byte	0x5
	.4byte	.LASF77
	.byte	0x6
	.4byte	.LASF78
	.byte	0x2
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x4b
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x6
	.byte	0x15
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x24
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x3
	.sleb128 -13
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x6
	.byte	0x12
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x1c
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0x8a
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -115
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0x89
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -114
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x4
	.uleb128 0x2
	.byte	0x86
	.byte	0x5
	.uleb128 0x3a
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x4
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x3
	.sleb128 -113
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x5
	.uleb128 0x69
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x5
	.uleb128 0x86
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x8
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc6
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x10
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x6
	.byte	0x21
	.byte	0x5
	.uleb128 0xca
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x4
	.uleb128 0x2
	.byte	0x7e
	.byte	0x5
	.uleb128 0x3a
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x4
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x3
	.sleb128 -105
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x5
	.uleb128 0x5f
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x5
	.uleb128 0x7c
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x24
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x8
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xcc
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0x1
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x6
	.byte	0x3
	.sleb128 -21
	.byte	0x1
	.byte	0x5
	.uleb128 0x86
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0x1
	.byte	0x5
	.uleb128 0x86
	.byte	0x9
	.2byte	.LM55-.LM54
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM57-.LM56
	.byte	0x4
	.uleb128 0x3
	.byte	0x6
	.byte	0x49
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM58-.LM57
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM59-.LM58
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x70
	.byte	0x9
	.2byte	.LM60-.LM59
	.byte	0x1
	.byte	0x5
	.uleb128 0x42
	.byte	0x9
	.2byte	.LM61-.LM60
	.byte	0x1
	.byte	0x5
	.uleb128 0x75
	.byte	0x9
	.2byte	.LM62-.LM61
	.byte	0x1
	.byte	0x5
	.uleb128 0x49
	.byte	0x9
	.2byte	.LM63-.LM62
	.byte	0x1
	.byte	0x5
	.uleb128 0xd4
	.byte	0x9
	.2byte	.LM64-.LM63
	.byte	0x1
	.byte	0x5
	.uleb128 0xa3
	.byte	0x9
	.2byte	.LM65-.LM64
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM66-.LM65
	.byte	0x1
	.byte	0x5
	.uleb128 0xa8
	.byte	0x9
	.2byte	.LM67-.LM66
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM68-.LM67
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM69-.LM68
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x3
	.sleb128 -51
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM70-.LM69
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM71-.LM70
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM72-.LM71
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM73-.LM72
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x5
	.uleb128 0x63
	.byte	0x9
	.2byte	.LM74-.LM73
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x5
	.uleb128 0x80
	.byte	0x9
	.2byte	.LM75-.LM74
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM76-.LM75
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x5
	.uleb128 0x80
	.byte	0x9
	.2byte	.LM77-.LM76
	.byte	0x1
	.byte	0x5
	.uleb128 0x80
	.byte	0x9
	.2byte	.LM78-.LM77
	.byte	0x1c
	.byte	0x5
	.uleb128 0x7c
	.byte	0x9
	.2byte	.LM79-.LM78
	.byte	0x1
	.byte	0x5
	.uleb128 0x7c
	.byte	0x9
	.2byte	.LM80-.LM79
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM81-.LM80
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM82-.LM81
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM83-.LM82
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM84-.LM83
	.byte	0x18
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM85-.LM84
	.byte	0x16
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM86-.LM85
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM87-.LM86
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM88-.LM87
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM89-.LM88
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM90-.LM89
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM91-.LM90
	.byte	0x4
	.uleb128 0x2
	.byte	0x7a
	.byte	0x5
	.uleb128 0x3a
	.byte	0x9
	.2byte	.LM92-.LM91
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM93-.LM92
	.byte	0x4
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x3
	.sleb128 -101
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM94-.LM93
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x5
	.uleb128 0x7a
	.byte	0x9
	.2byte	.LM95-.LM94
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x5
	.uleb128 0x97
	.byte	0x9
	.2byte	.LM96-.LM95
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM97-.LM96
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM98-.LM97
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x8
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xe3
	.byte	0x9
	.2byte	.LM99-.LM98
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM100-.LM99
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x3
	.sleb128 -17
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM101-.LM100
	.byte	0x6
	.byte	0x3a
	.byte	0x5
	.uleb128 0xf0
	.byte	0x9
	.2byte	.LM102-.LM101
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM103-.LM102
	.byte	0x1f
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM104-.LM103
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM105-.LM104
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM106-.LM105
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM107-.LM106
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM108-.LM107
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM109-.LM108
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM110-.LM109
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -29
	.byte	0x1
	.byte	0x5
	.uleb128 0x97
	.byte	0x9
	.2byte	.LM111-.LM110
	.byte	0x1
	.byte	0x5
	.uleb128 0x97
	.byte	0x9
	.2byte	.LM112-.LM111
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM113-.LM112
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM114-.LM113
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM115-.LM114
	.byte	0x18
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM116-.LM115
	.byte	0x16
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM117-.LM116
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM118-.LM117
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM119-.LM118
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM120-.LM119
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM121-.LM120
	.byte	0x1
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM122-.LM121
	.byte	0x4
	.uleb128 0x2
	.byte	0x76
	.byte	0x5
	.uleb128 0x3a
	.byte	0x9
	.2byte	.LM123-.LM122
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM124-.LM123
	.byte	0x4
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x3
	.sleb128 -97
	.byte	0x1
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM125-.LM124
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x5
	.uleb128 0x8a
	.byte	0x9
	.2byte	.LM126-.LM125
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x16
	.byte	0x5
	.uleb128 0x23
	.byte	0x9
	.2byte	.LM127-.LM126
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM128-.LM127
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM129-.LM128
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM130-.LM129
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM131-.LM130
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0x74
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM132-.LM131
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -93
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM133-.LM132
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM134-.LM133
	.byte	0x1
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM135-.LM134
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM136-.LM135
	.byte	0x4
	.uleb128 0x2
	.byte	0x71
	.byte	0x5
	.uleb128 0x3a
	.byte	0x9
	.2byte	.LM137-.LM136
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM138-.LM137
	.byte	0x4
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x3
	.sleb128 -92
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM139-.LM138
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x5
	.uleb128 0x6f
	.byte	0x9
	.2byte	.LM140-.LM139
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x5
	.uleb128 0x8c
	.byte	0x9
	.2byte	.LM141-.LM140
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM142-.LM141
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x12
	.byte	0x5
	.uleb128 0x6d
	.byte	0x9
	.2byte	.LM143-.LM142
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x5
	.uleb128 0x8a
	.byte	0x9
	.2byte	.LM144-.LM143
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM145-.LM144
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x1c
	.byte	0x5
	.uleb128 0x8c
	.byte	0x9
	.2byte	.LM146-.LM145
	.byte	0x1
	.byte	0x5
	.uleb128 0x8c
	.byte	0x9
	.2byte	.LM147-.LM146
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM148-.LM147
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x26
	.byte	0x9
	.2byte	.LM149-.LM148
	.byte	0x4
	.uleb128 0x3
	.byte	0x6
	.byte	0x34
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM150-.LM149
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM151-.LM150
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x70
	.byte	0x9
	.2byte	.LM152-.LM151
	.byte	0x1
	.byte	0x5
	.uleb128 0x75
	.byte	0x9
	.2byte	.LM153-.LM152
	.byte	0x1
	.byte	0x5
	.uleb128 0x42
	.byte	0x9
	.2byte	.LM154-.LM153
	.byte	0x1
	.byte	0x5
	.uleb128 0xa3
	.byte	0x9
	.2byte	.LM155-.LM154
	.byte	0x1
	.byte	0x5
	.uleb128 0x49
	.byte	0x9
	.2byte	.LM156-.LM155
	.byte	0x1
	.byte	0x5
	.uleb128 0xa3
	.byte	0x9
	.2byte	.LM157-.LM156
	.byte	0x1
	.byte	0x5
	.uleb128 0xd4
	.byte	0x9
	.2byte	.LM158-.LM157
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM159-.LM158
	.byte	0x1
	.byte	0x5
	.uleb128 0xa8
	.byte	0x9
	.2byte	.LM160-.LM159
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM161-.LM160
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM162-.LM161
	.byte	0x4
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -31
	.byte	0x1
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM163-.LM162
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM164-.LM163
	.byte	0x1
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM165-.LM164
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM166-.LM165
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM167-.LM166
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x5
	.uleb128 0x6a
	.byte	0x9
	.2byte	.LM168-.LM167
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x5
	.uleb128 0x87
	.byte	0x9
	.2byte	.LM169-.LM168
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM170-.LM169
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x8
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xcc
	.byte	0x9
	.2byte	.LM171-.LM170
	.byte	0x1
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM172-.LM171
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM173-.LM172
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x21
	.byte	0x9
	.2byte	.LM174-.LM173
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM175-.LM174
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0x6e
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM176-.LM175
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -87
	.byte	0x1
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM177-.LM176
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM178-.LM177
	.byte	0x1
	.byte	0x5
	.uleb128 0x1e
	.byte	0x9
	.2byte	.LM179-.LM178
	.byte	0x1
	.byte	0x5
	.uleb128 0x20
	.byte	0x9
	.2byte	.LM180-.LM179
	.byte	0x4
	.uleb128 0x2
	.byte	0x6b
	.byte	0x5
	.uleb128 0x3a
	.byte	0x9
	.2byte	.LM181-.LM180
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM182-.LM181
	.byte	0x4
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x3
	.sleb128 -86
	.byte	0x1
	.byte	0x5
	.uleb128 0x20
	.byte	0x9
	.2byte	.LM183-.LM182
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x5
	.uleb128 0x78
	.byte	0x9
	.2byte	.LM184-.LM183
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x5
	.uleb128 0x95
	.byte	0x9
	.2byte	.LM185-.LM184
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.uleb128 0x20
	.byte	0x9
	.2byte	.LM186-.LM185
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x8
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd5
	.byte	0x9
	.2byte	.LM187-.LM186
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM188-.LM187
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.uleb128 0x87
	.byte	0x9
	.2byte	.LM189-.LM188
	.byte	0x1
	.byte	0x5
	.uleb128 0x87
	.byte	0x9
	.2byte	.LM190-.LM189
	.byte	0x1a
	.byte	0x5
	.uleb128 0x95
	.byte	0x9
	.2byte	.LM191-.LM190
	.byte	0x1
	.byte	0x5
	.uleb128 0x95
	.byte	0x9
	.2byte	.LM192-.LM191
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM193-.LM192
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x2f
	.byte	0x9
	.2byte	.LM194-.LM193
	.byte	0x4
	.uleb128 0x3
	.byte	0x6
	.byte	0x2e
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM195-.LM194
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM196-.LM195
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x70
	.byte	0x9
	.2byte	.LM197-.LM196
	.byte	0x1
	.byte	0x5
	.uleb128 0x42
	.byte	0x9
	.2byte	.LM198-.LM197
	.byte	0x1
	.byte	0x5
	.uleb128 0x75
	.byte	0x9
	.2byte	.LM199-.LM198
	.byte	0x1
	.byte	0x5
	.uleb128 0x49
	.byte	0x9
	.2byte	.LM200-.LM199
	.byte	0x1
	.byte	0x5
	.uleb128 0xd4
	.byte	0x9
	.2byte	.LM201-.LM200
	.byte	0x1
	.byte	0x5
	.uleb128 0xa3
	.byte	0x9
	.2byte	.LM202-.LM201
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM203-.LM202
	.byte	0x1
	.byte	0x5
	.uleb128 0xa8
	.byte	0x9
	.2byte	.LM204-.LM203
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM205-.LM204
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM206-.LM205
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x3
	.sleb128 -24
	.byte	0x1
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM207-.LM206
	.byte	0x1
	.byte	0x5
	.uleb128 0x1e
	.byte	0x9
	.2byte	.LM208-.LM207
	.byte	0x1
	.byte	0x5
	.uleb128 0x20
	.byte	0x9
	.2byte	.LM209-.LM208
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x20
	.byte	0x9
	.2byte	.LM210-.LM209
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x5
	.uleb128 0x84
	.byte	0x9
	.2byte	.LM211-.LM210
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x5
	.uleb128 0xa1
	.byte	0x9
	.2byte	.LM212-.LM211
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.uleb128 0x20
	.byte	0x9
	.2byte	.LM213-.LM212
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x5
	.uleb128 0xa1
	.byte	0x9
	.2byte	.LM214-.LM213
	.byte	0x1
	.byte	0x5
	.uleb128 0xa1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE46
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM215
	.byte	0x86
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM216-.LM215
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM217-.LM216
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM218-.LM217
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM219-.LM218
	.byte	0x6
	.byte	0x1e
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM220-.LM219
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM221-.LM220
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM222-.LM221
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM223-.LM222
	.byte	0x1a
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM224-.LM223
	.byte	0x14
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM225-.LM224
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM226-.LM225
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM227-.LM226
	.byte	0x16
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM228-.LM227
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM229-.LM228
	.byte	0xe
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM230-.LM229
	.byte	0x20
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE47
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM231
	.byte	0x96
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM232-.LM231
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM233-.LM232
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM234-.LM233
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM235-.LM234
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM236-.LM235
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM237-.LM236
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM238-.LM237
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM239-.LM238
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM240-.LM239
	.byte	0x3
	.sleb128 -11
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM241-.LM240
	.byte	0x23
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM242-.LM241
	.byte	0x16
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM243-.LM242
	.byte	0x1a
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM244-.LM243
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1a
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM245-.LM244
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM246-.LM245
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM247-.LM246
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x14
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM248-.LM247
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM249-.LM248
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM250-.LM249
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM251-.LM250
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM252-.LM251
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM253-.LM252
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x28
	.byte	0x9
	.2byte	.LM254-.LM253
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM255-.LM254
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM256-.LM255
	.byte	0x4
	.uleb128 0x4
	.byte	0x3
	.sleb128 -57
	.byte	0x1
	.byte	0x5
	.uleb128 0x37
	.byte	0x9
	.2byte	.LM257-.LM256
	.byte	0x19
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM258-.LM257
	.byte	0x4
	.uleb128 0x1
	.byte	0x4f
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM259-.LM258
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM260-.LM259
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM261-.LM260
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM262-.LM261
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x20
	.byte	0x9
	.2byte	.LM263-.LM262
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM264-.LM263
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x20
	.byte	0x9
	.2byte	.LM265-.LM264
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM266-.LM265
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM267-.LM266
	.byte	0x4
	.uleb128 0x4
	.byte	0x3
	.sleb128 -66
	.byte	0x1
	.byte	0x5
	.uleb128 0x37
	.byte	0x9
	.2byte	.LM268-.LM267
	.byte	0x19
	.byte	0x5
	.uleb128 0x3
	.byte	0x9
	.2byte	.LM269-.LM268
	.byte	0x4
	.uleb128 0x1
	.byte	0x59
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM270-.LM269
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM271-.LM270
	.byte	0x1a
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM272-.LM271
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x14
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM273-.LM272
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM274-.LM273
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM275-.LM274
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM276-.LM275
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM277-.LM276
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM278-.LM277
	.byte	0x16
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM279-.LM278
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM280-.LM279
	.byte	0x3
	.sleb128 -22
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM281-.LM280
	.byte	0x2d
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE48
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF57:
	.string	"xPortIsInsideInterrupt"
.LASF39:
	.string	"last_us"
.LASF46:
	.string	"dtb_offset"
.LASF13:
	.string	"size_t"
.LASF21:
	.string	"TickType_t"
.LASF27:
	.string	"memcmp"
.LASF45:
	.string	"fdt_input"
.LASF40:
	.string	"reset_us"
.LASF23:
	.string	"bl_irled_init"
.LASF43:
	.string	"chip_type"
.LASF3:
	.string	"unsigned int"
.LASF18:
	.string	"uint64_t"
.LASF19:
	.string	"fdt32_t"
.LASF48:
	.string	"addr_prop"
.LASF41:
	.string	"hal_irled_send_data"
.LASF55:
	.string	"__enable_irq"
.LASF5:
	.string	"unsigned char"
.LASF38:
	.string	"g_chip_type"
.LASF29:
	.string	"fdt_stringlist_count"
.LASF9:
	.string	"long unsigned int"
.LASF36:
	.string	"data_num"
.LASF7:
	.string	"short unsigned int"
.LASF56:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF17:
	.string	"uint32_t"
.LASF37:
	.string	"TrapNetCounter"
.LASF31:
	.string	"bl_timer_delay_us"
.LASF44:
	.string	"hal_ir_init_from_dts"
.LASF26:
	.string	"bl_ir_init"
.LASF47:
	.string	"offset1"
.LASF15:
	.string	"uint8_t"
.LASF50:
	.string	"result"
.LASF53:
	.string	"interval"
.LASF25:
	.string	"bl_irled_gpio_init"
.LASF2:
	.string	"long long unsigned int"
.LASF42:
	.string	"hal_irled_init"
.LASF14:
	.string	"int32_t"
.LASF30:
	.string	"fdt_subnode_offset"
.LASF10:
	.string	"long long int"
.LASF32:
	.string	"bl_printk"
.LASF12:
	.string	"char"
.LASF34:
	.string	"xTaskGetTickCountFromISR"
.LASF33:
	.string	"xTaskGetTickCount"
.LASF28:
	.string	"fdt_stringlist_get"
.LASF24:
	.string	"bl_timer_now_us64"
.LASF6:
	.string	"short int"
.LASF16:
	.string	"uint16_t"
.LASF49:
	.string	"lentmp"
.LASF58:
	.string	"fdt32_to_cpu"
.LASF54:
	.string	"__disable_irq"
.LASF8:
	.string	"long int"
.LASF52:
	.string	"ctrltype"
.LASF51:
	.string	"countindex"
.LASF11:
	.string	"long double"
.LASF35:
	.string	"fdt_getprop"
.LASF4:
	.string	"signed char"
.LASF22:
	.string	"bl_irled_send_one_data"
.LASF20:
	.string	"BaseType_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF75:
	.string	"string.h"
.LASF67:
	.string	"hal_ir.c"
.LASF66:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include"
.LASF77:
	.string	"utils_log.h"
.LASF76:
	.string	"libfdt.h"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/hal_drv"
.LASF64:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/include"
.LASF72:
	.string	"stdint-gcc.h"
.LASF70:
	.string	"cmsis_compatible_gcc.h"
.LASF71:
	.string	"stddef.h"
.LASF63:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc"
.LASF78:
	.string	"task.h"
.LASF74:
	.string	"bl_timer.h"
.LASF73:
	.string	"bl_ir.h"
.LASF59:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include"
.LASF62:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal"
.LASF65:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF68:
	.string	"portmacro.h"
.LASF61:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_ir.c"
.LASF60:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/include"
.LASF69:
	.string	"libfdt_env.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
