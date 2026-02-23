	.file	"bl_adc.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.adc_data_update,"ax",@progbits
	.align	1
	.type	adc_data_update, @function
adc_data_update:
.LFB34:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
.LM4:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM5:
	li	a0,1
.LM6:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM7:
	call	bl_dma_find_ctx_by_channel
.LVL0:
.LM8:
.LM9:
	beq	a0,zero,.L1
.LM10:
.LM11:
	lw	a4,12(a0)
.LM12:
	lw	a5,8(a0)
.LM13:
	bne	a4,zero,.L4
.LM14:
.LM15:
	lw	a1,4(a5)
.LM16:
	li	a5,1
.L5:
.LM17:
	sw	a5,12(a0)
.LM18:
.LM19:
	lw	a5,24(a0)
.LM20:
	sw	a1,4(a0)
.LM21:
	beq	a5,zero,.L1
.LM22:
.LM23:
	lw	a2,20(a0)
.LM24:
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
.LM25:
	lw	a0,0(a0)
.LVL1:
.LM26:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LM27:
	jr	a5
.LVL2:
.L4:
	.cfi_restore_state
.LM28:
.LM29:
	lw	a1,20(a5)
.LM30:
.LM31:
	li	a5,0
	j	.L5
.L1:
.LM32:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE34:
	.size	adc_data_update, .-adc_data_update
	.section	.text.ADC_Clock_Init,"ax",@progbits
	.align	1
	.globl	ADC_Clock_Init
	.type	ADC_Clock_Init, @function
ADC_Clock_Init:
.LVL3:
.LFB27:
.LM33:
	.cfi_startproc
.LM34:
.LM35:
	mv	a2,a0
.LM36:
	li	a1,0
	li	a0,1
.LVL4:
.LM37:
	tail	GLB_Set_ADC_CLK
.LVL5:
.LM38:
	.cfi_endproc
.LFE27:
	.size	ADC_Clock_Init, .-ADC_Clock_Init
	.section	.text.TSEN_Calibration,"ax",@progbits
	.align	1
	.globl	TSEN_Calibration
	.type	TSEN_Calibration, @function
TSEN_Calibration:
.LFB28:
.LM39:
	.cfi_startproc
.LM40:
.LM41:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM42:
	call	ADC_SET_TSVBE_LOW
.LVL6:
.LM43:
	call	ADC_Start
.LVL7:
.LM44:
	li	a0,100
	call	BL602_Delay_MS
.LVL8:
.LM45:
.L13:
.LM46:
.LM47:
	call	ADC_Get_FIFO_Count
.LVL9:
.LM48:
	beq	a0,zero,.L13
.LM49:
	call	ADC_Read_FIFO
.LVL10:
.LM50:
	call	ADC_SET_TSVBE_HIGH
.LVL11:
.LM51:
	call	ADC_Start
.LVL12:
.LM52:
	li	a0,100
	call	BL602_Delay_MS
.LVL13:
.LM53:
.L14:
.LM54:
.LM55:
	call	ADC_Get_FIFO_Count
.LVL14:
.LM56:
	beq	a0,zero,.L14
.LM57:
	call	ADC_Read_FIFO
.LVL15:
.LM58:
.LM59:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LM60:
	tail	ADC_SET_TSVBE_LOW
.LVL16:
	.cfi_endproc
.LFE28:
	.size	TSEN_Calibration, .-TSEN_Calibration
	.section	.text.test_adc_init,"ax",@progbits
	.align	1
	.globl	test_adc_init
	.type	test_adc_init, @function
test_adc_init:
.LFB30:
.LM61:
	.cfi_startproc
.LM62:
.LM63:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM64:
	li	a0,2
.LM65:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM66:
	call	ADC_Clock_Init
.LVL17:
.LM67:
	call	ADC_Reset
.LVL18:
.LM68:
	call	ADC_Disable
.LVL19:
.LM69:
	call	ADC_Enable
.LVL20:
.LM70:
	lui	a0,%hi(adcCfg)
	addi	a0,a0,%lo(adcCfg)
	call	ADC_Init
.LVL21:
.LM71:
	li	a2,0
	li	a1,23
	li	a0,14
	call	ADC_Channel_Config
.LVL22:
.LM72:
	li	a0,0
	call	ADC_Tsen_Init
.LVL23:
.LM73:
	lui	a0,%hi(adcFifoCfg)
	addi	a0,a0,%lo(adcFifoCfg)
	call	ADC_FIFO_Cfg
.LVL24:
.LM74:
	call	TSEN_Calibration
.LVL25:
.LM75:
.LM76:
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	test_adc_init, .-test_adc_init
	.section	.text.test_adc_get,"ax",@progbits
	.align	1
	.globl	test_adc_get
	.type	test_adc_get, @function
test_adc_get:
.LVL26:
.LFB31:
.LM77:
	.cfi_startproc
.LM78:
.LM79:
.LM80:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	ra,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
.LM81:
	mv	s3,a0
.LM82:
	sw	zero,4(sp)
.LM83:
.LM84:
.LM85:
.LVL27:
.LM86:
.LM87:
.LM88:
	li	s1,0
.LM89:
	li	s2,0
.LM90:
	li	s0,0
.LVL28:
.L29:
.LM91:
	call	ADC_Start
.LVL29:
.LM92:
.L23:
.LM93:
.LM94:
	call	ADC_Get_FIFO_Count
.LVL30:
.LM95:
	beq	a0,zero,.L24
.L27:
.LM96:
.LM97:
.LM98:
	call	ADC_Read_FIFO
.LVL31:
.LM99:
	sw	a0,4(sp)
.LM100:
	addi	a2,sp,8
	li	a1,1
	addi	a0,sp,4
	call	ADC_Parse_Result
.LVL32:
.LM101:
	lhu	a5,10(sp)
.LM102:
	bne	s0,zero,.L25
.LM103:
.LVL33:
.LM104:
	mv	s2,a5
.LVL34:
.L26:
.LM105:
.LM106:
	call	ADC_Get_FIFO_Count
.LVL35:
.LM107:
	bne	a0,zero,.L27
.LM108:
.LM109:
	bne	s0,zero,.L28
.LM110:
.LM111:
	call	ADC_SET_TSVBE_HIGH
.LVL36:
.LM112:
.LM113:
.LM114:
	li	s0,1
	j	.L29
.LVL37:
.L24:
.LBB9:
.LM115:
.LM116:
	li	a0,1
	call	aos_msleep
.LVL38:
	j	.L23
.L25:
.LBE9:
.LM117:
.LVL39:
.LM118:
	mv	s1,a5
	j	.L26
.LVL40:
.L28:
.LM119:
.LM120:
	fcvt.s.w	fa4,s1
.LM121:
	fcvt.s.w	fa5,s2
.LM122:
	lui	a5,%hi(.LC1)
	flw	fa0,%lo(.LC1)(a5)
.LM123:
	fsub.s	fa5,fa5,fa4
.LVL41:
.LM124:
.LM125:
.LM126:
	fsub.s	fa0,fa5,fa0
.LVL42:
.LM127:
	call	__extendsfdf2
.LVL43:
.LM128:
	lui	a5,%hi(.LC2)
	lw	a2,%lo(.LC2)(a5)
	lw	a3,%lo(.LC2+4)(a5)
	call	__divdf3
.LVL44:
.LM129:
.LM130:
	call	__truncdfsf2
.LVL45:
.LM131:
	fcvt.w.s a5,fa0,rtz
	sh	a5,0(s3)
.LM132:
.LM133:
	call	ADC_SET_TSVBE_LOW
.LVL46:
.LM134:
.LM135:
.LM136:
.LM137:
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
.LVL47:
.LM138:
	li	a0,0
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE31:
	.size	test_adc_get, .-test_adc_get
	.section	.text.test_adc_test,"ax",@progbits
	.align	1
	.globl	test_adc_test
	.type	test_adc_test, @function
test_adc_test:
.LFB32:
.LM139:
	.cfi_startproc
.LM140:
.LBB12:
.LBI12:
.LM141:
.LBB13:
.LM142:
.LM143:
.LBE13:
.LBE12:
.LM144:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
.LBB16:
.LBB14:
.LM145:
	sw	zero,4(sp)
.LM146:
.LVL48:
.LM147:
.LM148:
.LM149:
	call	ADC_Reset
.LVL49:
.LM150:
	call	ADC_Disable
.LVL50:
.LM151:
	call	ADC_Enable
.LVL51:
.LM152:
	lui	a0,%hi(adcCfg)
	addi	a0,a0,%lo(adcCfg)
	call	ADC_Init
.LVL52:
.LM153:
	li	a2,0
	li	a1,23
	li	a0,14
	call	ADC_Channel_Config
.LVL53:
.LM154:
	li	a0,0
	call	ADC_Tsen_Init
.LVL54:
.LM155:
	lui	a0,%hi(adcFifoCfg)
	addi	a0,a0,%lo(adcFifoCfg)
	call	ADC_FIFO_Cfg
.LVL55:
.LM156:
	call	TSEN_Calibration
.LVL56:
.LM157:
.LM158:
.LM159:
	li	s0,0
.LM160:
	li	s1,40
.LVL57:
.L37:
.LM161:
	call	ADC_Start
.LVL58:
.LM162:
.L33:
.LM163:
.LM164:
	call	ADC_Get_FIFO_Count
.LVL59:
.LM165:
	beq	a0,zero,.L33
.L34:
.LM166:
.LM167:
.LM168:
	call	ADC_Read_FIFO
.LVL60:
.LM169:
	sw	a0,4(sp)
.LM170:
	addi	a2,sp,8
	li	a1,1
	addi	a0,sp,4
	call	ADC_Parse_Result
.LVL61:
.LM171:
.LM172:
.LM173:
.LM174:
	call	ADC_Get_FIFO_Count
.LVL62:
.LM175:
	bne	a0,zero,.L34
.LM176:
.LM177:
	andi	a5,s0,1
	beq	a5,zero,.L35
.LM178:
.LM179:
.LM180:
.LVL63:
.LM181:
.LM182:
.LM183:
.LM184:
	call	ADC_SET_TSVBE_LOW
.LVL64:
.L36:
.LM185:
.LM186:
	addi	s0,s0,1
.LVL65:
.LM187:
	li	a0,500
.LM188:
	andi	s0,s0,0xff
.LM189:
	call	BL602_Delay_MS
.LVL66:
.LM190:
.LM191:
	bne	s0,s1,.L37
.LVL67:
.LM192:
.LBE14:
.LBE16:
.LM193:
.LM194:
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL68:
.L35:
	.cfi_restore_state
.LBB17:
.LBB15:
.LM195:
.LM196:
.LM197:
.LM198:
	call	ADC_SET_TSVBE_HIGH
.LVL69:
	j	.L36
.LBE15:
.LBE17:
	.cfi_endproc
.LFE32:
	.size	test_adc_test, .-test_adc_test
	.section	.rodata.bl_tsen_adc_get.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"bl_adc.c"
	.align	2
.LC4:
	.string	"\033[31mERROR \033[0m"
	.align	2
.LC5:
	.string	"[%10u][%s: %s:%4d] read efuse data failed\r\n"
	.align	2
.LC6:
	.string	"\033[32mINFO  \033[0m"
	.align	2
.LC7:
	.string	"[%10u][%s: %s:%4d] offset = %d\r\n"
	.align	2
.LC8:
	.string	"temperature = %f Celsius\r\n"
	.section	.text.bl_tsen_adc_get,"ax",@progbits
	.align	1
	.globl	bl_tsen_adc_get
	.type	bl_tsen_adc_get, @function
bl_tsen_adc_get:
.LVL70:
.LFB33:
.LM199:
	.cfi_startproc
.LM200:
.LM201:
.LM202:
.LM203:
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s0,72(sp)
	.cfi_offset 8, -8
.LM204:
	lui	s0,%hi(tsen_offset.0)
.LM205:
	lhu	a4,%lo(tsen_offset.0)(s0)
	li	a5,65536
.LM206:
	sw	s1,68(sp)
	sw	s3,60(sp)
	sw	ra,76(sp)
	sw	s2,64(sp)
	fsw	fs0,44(sp)
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 40, -36
.LM207:
	addi	a5,a5,-1
.LM208:
	mv	s1,a0
	mv	s3,a1
.LM209:
	bne	a4,a5,.L44
.LBB18:
.LM210:
.LM211:
	lui	a1,%hi(.LANCHOR0)
.LVL71:
.LM212:
	li	a2,14
	addi	a1,a1,%lo(.LANCHOR0)
	addi	a0,sp,16
.LVL72:
.LM213:
	sh	zero,%lo(tsen_offset.0)(s0)
.LM214:
.LM215:
	call	memcpy
.LVL73:
.LM216:
.LM217:
	li	a2,7
	li	a1,0
	li	a0,1
.LM218:
	sh	zero,12(sp)
.LM219:
	call	GLB_Set_ADC_CLK
.LVL74:
.LM220:
	call	ADC_Disable
.LVL75:
.LM221:
	call	ADC_Enable
.LVL76:
.LM222:
	call	ADC_Reset
.LVL77:
.LM223:
	addi	a0,sp,16
	call	ADC_Init
.LVL78:
.LM224:
	li	a2,0
	li	a1,23
	li	a0,14
	call	ADC_Channel_Config
.LVL79:
.LM225:
	li	a0,0
	call	ADC_Tsen_Init
.LVL80:
.LM226:
	addi	a0,sp,12
	call	ADC_FIFO_Cfg
.LVL81:
.LM227:
.LM228:
	addi	a0,s0,%lo(tsen_offset.0)
	call	ADC_Trim_TSEN
.LVL82:
.LBB19:
.LBB20:
.LM229:
	lui	a5,%hi(TrapNetCounter)
.LBE20:
.LBE19:
.LM230:
	li	a4,1
.LBB23:
.LBB21:
.LM231:
	lw	a5,%lo(TrapNetCounter)(a5)
	lui	s2,%hi(.LC3)
.LBE21:
.LBE23:
.LM232:
	bne	a0,a4,.L45
.LM233:
.LM234:
.LM235:
.LBB24:
.LBI19:
.LM236:
.LBB22:
.LM237:
.LBE22:
.LBE24:
.LM238:
	beq	a5,zero,.L46
.LM239:
	call	xTaskGetTickCountFromISR
.LVL83:
.L60:
.LM240:
	mv	a1,a0
.LM241:
	lui	a2,%hi(.LC4)
	lui	a0,%hi(.LC5)
	li	a4,267
	addi	a3,s2,%lo(.LC3)
	addi	a2,a2,%lo(.LC4)
	addi	a0,a0,%lo(.LC5)
	call	bl_printk
.LVL84:
.LM242:
.LM243:
.L44:
.LBE18:
.LM244:
.LM245:
	lhu	a0,%lo(tsen_offset.0)(s0)
	call	TSEN_Get_Temp
.LVL85:
	fmv.s	fs0,fa0
.LVL86:
.LM246:
.LM247:
	beq	s3,zero,.L51
.LM248:
	call	__extendsfdf2
.LVL87:
	mv	a2,a0
	lui	a0,%hi(.LC8)
	mv	a3,a1
	addi	a0,a0,%lo(.LC8)
	call	printf
.LVL88:
.L51:
.LM249:
.LM250:
	beq	s1,zero,.L52
.LM251:
.LM252:
	fcvt.w.s a5,fs0,rtz
	sh	a5,0(s1)
.L52:
.LM253:
.LM254:
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	lw	s1,68(sp)
	.cfi_restore 9
.LVL89:
.LM255:
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
.LVL90:
.LM256:
	flw	fs0,44(sp)
	.cfi_restore 40
.LVL91:
.LM257:
	li	a0,0
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL92:
.L46:
	.cfi_restore_state
.LBB25:
.LM258:
	call	xTaskGetTickCount
.LVL93:
	j	.L60
.L45:
.LM259:
.LM260:
.LM261:
.LM262:
	beq	a5,zero,.L49
.LM263:
	call	xTaskGetTickCountFromISR
.LVL94:
.L61:
.LM264:
	lhu	a5,%lo(tsen_offset.0)(s0)
.LM265:
	mv	a1,a0
.LM266:
	lui	a2,%hi(.LC6)
	lui	a0,%hi(.LC7)
	li	a4,269
	addi	a3,s2,%lo(.LC3)
	addi	a2,a2,%lo(.LC6)
	addi	a0,a0,%lo(.LC7)
	call	bl_printk
.LVL95:
.LM267:
.LM268:
	j	.L44
.L49:
.LM269:
	call	xTaskGetTickCount
.LVL96:
	j	.L61
.LBE25:
	.cfi_endproc
.LFE33:
	.size	bl_tsen_adc_get, .-bl_tsen_adc_get
	.section	.text.bl_adc_freq_init,"ax",@progbits
	.align	1
	.globl	bl_adc_freq_init
	.type	bl_adc_freq_init, @function
bl_adc_freq_init:
.LVL97:
.LFB35:
.LM270:
	.cfi_startproc
.LM271:
.LM272:
.LM273:
.LM274:
.LM275:
	snez	a0,a0
.LVL98:
.LM276:
	neg	a0,a0
	andi	a0,a0,-11
.LM277:
	li	a5,4096
	addi	a5,a5,-1024
.LM278:
	addi	a0,a0,12
.LVL99:
.LM279:
.LM280:
	mul	a0,a0,a5
.LVL100:
.LM281:
	li	a5,96002048
	addi	a5,a5,-2048
.LM282:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM283:
	divu	a5,a5,a0
.LVL101:
.LM284:
.LM285:
	divu	a3,a5,a1
.LVL102:
.LM286:
.LM287:
	addi	a2,a3,1
.LM288:
	mul	a4,a2,a1
.LM289:
	sub	a4,a4,a5
.LM290:
	remu	a5,a5,a1
.LVL103:
.LM291:
	bltu	a4,a5,.L64
.LM292:
	mv	a2,a3
.L64:
.LVL104:
.LM293:
.LM294:
.LM295:
	li	a5,64
	bleu	a2,a5,.L65
	mv	a2,a5
.LVL105:
.L65:
.LM296:
	addi	a2,a2,-1
	andi	a2,a2,0xff
	li	a1,0
.LVL106:
.LM297:
	li	a0,1
.LVL107:
.LM298:
	call	GLB_Set_ADC_CLK
.LVL108:
.LM299:
.LM300:
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE35:
	.size	bl_adc_freq_init, .-bl_adc_freq_init
	.section	.text.bl_adc_dma_init,"ax",@progbits
	.align	1
	.globl	bl_adc_dma_init
	.type	bl_adc_dma_init, @function
bl_adc_dma_init:
.LVL109:
.LFB38:
.LM301:
	.cfi_startproc
.LM302:
.LM303:
.LM304:
.LM305:
.LM306:
.LM307:
	bne	a1,zero,.L69
.LM308:
	li	a0,-1
.LVL110:
.LM309:
	ret
.LVL111:
.L71:
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
.LM310:
	li	a0,-1
.L68:
.LM311:
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
.LVL112:
.LM312:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL113:
.LM313:
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
.LVL114:
.LM314:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL115:
.L69:
.LM315:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s4,24(sp)
	.cfi_offset 20, -24
	mv	s4,a0
.LM316:
.LM317:
	li	a0,28
.LVL116:
.LM318:
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s3,28(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	mv	s2,a1
.LM319:
	call	pvPortMalloc
.LVL117:
.LM320:
	mv	s1,a0
.LVL118:
.LM321:
.LM322:
	beq	a0,zero,.L71
.LM323:
.LM324:
	li	a0,32
	call	pvPortMalloc
.LVL119:
	mv	s0,a0
.LVL120:
.LM325:
.LM326:
	beq	a0,zero,.L71
.LM327:
.LM328:
	slli	a0,s2,3
	call	pvPortMalloc
.LVL121:
	mv	s3,a0
.LVL122:
.LM329:
.LM330:
	beq	a0,zero,.L71
.LM331:
.LM332:
.LM333:
.LM334:
	li	a5,4096
	addi	a5,a5,1538
.LM335:
	li	a0,1
.LVL123:
.LM336:
	sh	a5,12(sp)
.LM337:
	sb	zero,14(sp)
.LM338:
	call	DMA_Channel_Disable
.LVL124:
.LM339:
.LBB28:
.LBI28:
.LM340:
.LBB29:
.LM341:
.LM342:
.LM343:
.LM344:
.LM345:
.LM346:
.LM347:
.LM348:
.LM349:
.LM350:
.LM351:
.LM352:
.LM353:
	addi	a5,s0,16
.LM354:
	sw	a5,8(s0)
.LM355:
	slli	a5,s2,20
	li	a4,-2008547328
	srli	a5,a5,20
	or	a5,a5,a4
	lw	a4,12(s0)
	li	a2,33554432
.LM356:
	li	a3,1073750016
.LM357:
	and	a4,a4,a2
	or	a4,a5,a4
	sw	a4,12(s0)
.LM358:
	lw	a4,28(s0)
.LM359:
	addi	a3,a3,4
.LM360:
	sw	s3,4(s0)
.LM361:
	and	a4,a4,a2
	or	a5,a5,a4
.LM362:
	addi	s3,s3,48
.LVL125:
.LM363:
	sw	a3,0(s0)
.LM364:
.LM365:
.LM366:
.LM367:
.LM368:
	sw	a3,16(s0)
.LM369:
.LM370:
	sw	a5,28(s0)
.LBE29:
.LBE28:
.LM371:
	addi	a1,sp,12
	li	a0,1
.LBB31:
.LBB30:
.LM372:
	sw	s3,20(s0)
.LM373:
.LM374:
	sw	s0,24(s0)
.LM375:
.LM376:
.LVL126:
.LM377:
.LBE30:
.LBE31:
.LM378:
	call	DMA_LLI_Init
.LVL127:
.LM379:
	mv	a1,s0
	li	a0,1
	call	DMA_LLI_Update
.LVL128:
.LM380:
.LM381:
	lui	a1,%hi(adc_data_update)
.LM382:
	sw	s4,0(s1)
.LM383:
.LM384:
	sw	s0,8(s1)
.LM385:
.LM386:
	sw	zero,12(s1)
.LM387:
.LM388:
	sw	zero,16(s1)
.LM389:
.LM390:
	sw	zero,4(s1)
.LM391:
.LM392:
	sw	s2,20(s1)
.LM393:
.LM394:
	sw	zero,24(s1)
.LM395:
	mv	a3,s1
	li	a2,0
	addi	a1,a1,%lo(adc_data_update)
	li	a0,1
	call	bl_dma_irq_register
.LVL129:
.LM396:
.LM397:
	li	a0,0
	j	.L68
	.cfi_endproc
.LFE38:
	.size	bl_adc_dma_init, .-bl_adc_dma_init
	.section	.text.bl_adc_start,"ax",@progbits
	.align	1
	.globl	bl_adc_start
	.type	bl_adc_start, @function
bl_adc_start:
.LFB39:
.LM398:
	.cfi_startproc
.LM399:
	li	a2,1
.LM400:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM401:
	mv	a0,a2
	li	a1,2
.LM402:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM403:
	call	DMA_IntMask
.LVL130:
.LM404:
	li	a2,0
	li	a1,0
	li	a0,1
	call	DMA_IntMask
.LVL131:
.LM405:
	li	a1,1
	mv	a0,a1
	li	a2,0
	call	DMA_IntMask
.LVL132:
.LM406:
	call	ADC_Start
.LVL133:
.LM407:
	call	DMA_Enable
.LVL134:
.LM408:
	li	a0,1
	call	DMA_Channel_Enable
.LVL135:
.LM409:
.LM410:
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE39:
	.size	bl_adc_start, .-bl_adc_start
	.section	.text.bl_adc_gpio_init,"ax",@progbits
	.align	1
	.globl	bl_adc_gpio_init
	.type	bl_adc_gpio_init, @function
bl_adc_gpio_init:
.LVL136:
.LFB40:
.LM411:
	.cfi_startproc
.LM412:
.LM413:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
.LM414:
	sb	a0,15(sp)
.LM415:
	addi	a1,sp,15
	li	a2,1
	li	a0,10
.LVL137:
.LM416:
	sw	ra,28(sp)
	.cfi_offset 1, -4
.LM417:
	call	GLB_GPIO_Func_Init
.LVL138:
.LM418:
.LM419:
	lw	ra,28(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE40:
	.size	bl_adc_gpio_init, .-bl_adc_gpio_init
	.section	.text.bl_adc_parse_data,"ax",@progbits
	.align	1
	.globl	bl_adc_parse_data
	.type	bl_adc_parse_data, @function
bl_adc_parse_data:
.LVL139:
.LFB42:
.LM420:
	.cfi_startproc
.LM421:
.LM422:
.LM423:
.LM424:
	li	a4,0
.LVL140:
.L89:
.LM425:
	blt	a4,a1,.L93
.LM426:
	li	a0,-1
.LVL141:
.L88:
.LM427:
	ret
.LVL142:
.L93:
.LM428:
.LM429:
	slli	a5,a4,2
	add	a5,a0,a5
	lw	a5,0(a5)
.LM430:
	srli	a6,a5,21
.LM431:
	bne	a6,a2,.L90
.LM432:
	slli	a0,a5,16
.LVL143:
.LM433:
	srli	a0,a0,16
.LM434:
	beq	a3,zero,.L88
.LM435:
.LVL144:
.LBB32:
.LBI32:
.LM436:
.LBB33:
.LM437:
.LM438:
.LM439:
.LM440:
.LM441:
	li	a5,4096
	addi	a5,a5,-896
	mul	a0,a0,a5
.LM442:
	srli	a0,a0,16
.LVL145:
.LM443:
.LBE33:
.LBE32:
.LM444:
.LM445:
	ret
.LVL146:
.L90:
.LM446:
	addi	a4,a4,1
.LVL147:
.LM447:
	j	.L89
	.cfi_endproc
.LFE42:
	.size	bl_adc_parse_data, .-bl_adc_parse_data
	.section	.text.bl_adc_get_channel_by_gpio,"ax",@progbits
	.align	1
	.globl	bl_adc_get_channel_by_gpio
	.type	bl_adc_get_channel_by_gpio, @function
bl_adc_get_channel_by_gpio:
.LVL148:
.LFB43:
.LM448:
	.cfi_startproc
.LM449:
.LM450:
	addi	a0,a0,-4
.LVL149:
.LM451:
	li	a5,11
	bgtu	a0,a5,.L96
	lui	a5,%hi(CSWTCH.42)
	addi	a5,a5,%lo(CSWTCH.42)
	add	a5,a5,a0
	lb	a0,0(a5)
.LVL150:
.LM452:
	ret
.L96:
.LM453:
	li	a0,-1
.LM454:
	ret
	.cfi_endproc
.LFE43:
	.size	bl_adc_get_channel_by_gpio, .-bl_adc_get_channel_by_gpio
	.section	.text.bl_adc_init,"ax",@progbits
	.align	1
	.globl	bl_adc_init
	.type	bl_adc_init, @function
bl_adc_init:
.LVL151:
.LFB36:
.LM455:
	.cfi_startproc
.LM456:
.LM457:
.LM458:
.LM459:
.LM460:
.LM461:
.LM462:
.LM463:
.LM464:
.LM465:
.LM466:
.LM467:
.LM468:
.LM469:
.LM470:
.LM471:
.LM472:
.LM473:
.LM474:
.LM475:
.LM476:
	li	a5,393216
.LM477:
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
.LM478:
	addi	a5,a5,258
	sw	a5,48(sp)
.LM479:
	li	a5,196608
.LM480:
	sw	ra,76(sp)
	sw	a1,12(sp)
.LM481:
	sw	a5,56(sp)
.LM482:
	sw	s0,72(sp)
	sw	s1,68(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	sw	s2,64(sp)
	.cfi_offset 18, -16
.LM483:
	sw	zero,52(sp)
.LM484:
	sh	zero,60(sp)
.LM485:
	call	ADC_Disable
.LVL152:
.LM486:
	call	ADC_Enable
.LVL153:
.LM487:
	call	ADC_Reset
.LVL154:
.LM488:
	addi	a0,sp,48
	call	ADC_Init
.LVL155:
.LM489:
	addi	s1,sp,24
	addi	s2,sp,36
.LM490:
	bne	s0,zero,.L98
.LM491:
	li	a3,23
.LM492:
	li	a5,12
.LVL156:
.L99:
.LM493:
.LM494:
	add	a4,s1,s0
	sb	s0,0(a4)
.LM495:
.LM496:
	add	a4,s2,s0
	sb	a3,0(a4)
.LM497:
	addi	s0,s0,1
.LVL157:
.LM498:
	bne	s0,a5,.L99
.LVL158:
.L100:
.LM499:
	andi	a2,s0,0xff
	mv	a1,s2
	mv	a0,s1
	li	a3,1
	call	ADC_Scan_Channel_Config
.LVL159:
.LM500:
.LM501:
.LM502:
	addi	a0,sp,20
.LM503:
	li	a5,256
	sh	a5,20(sp)
.LM504:
	call	ADC_FIFO_Cfg
.LVL160:
.LM505:
.LM506:
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
.LVL161:
.LM507:
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	li	a0,0
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
.LVL162:
.LM508:
	jr	ra
.LVL163:
.L98:
	.cfi_restore_state
.LM509:
.LM510:
	lw	a0,12(sp)
.LM511:
	li	s0,1
.LVL164:
.LM512:
	call	bl_adc_get_channel_by_gpio
.LVL165:
.LM513:
.LM514:
	li	a5,23
.LM515:
	sb	a0,24(sp)
.LM516:
.LM517:
	sb	a5,36(sp)
.LM518:
.LVL166:
.LM519:
	j	.L100
	.cfi_endproc
.LFE36:
	.size	bl_adc_init, .-bl_adc_init
	.section	.rodata.CSWTCH.42,"a"
	.align	2
	.type	CSWTCH.42, @object
	.size	CSWTCH.42, 12
CSWTCH.42:
	.byte	1
	.byte	4
	.byte	5
	.byte	-1
	.byte	-1
	.byte	7
	.byte	9
	.byte	10
	.byte	0
	.byte	3
	.byte	2
	.byte	11
	.section	.sdata.tsen_offset.0,"aw"
	.align	1
	.type	tsen_offset.0, @object
	.size	tsen_offset.0, 2
tsen_offset.0:
	.half	-1
	.globl	adcFifoCfg
	.section	.sbss.adcFifoCfg,"aw",@nobits
	.align	2
	.type	adcFifoCfg, @object
	.size	adcFifoCfg, 2
adcFifoCfg:
	.zero	2
	.globl	adcCfg
	.section	.data.adcCfg,"aw"
	.align	2
	.type	adcCfg, @object
	.size	adcCfg, 14
adcCfg:
	.byte	2
	.byte	1
	.byte	4
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	4
	.byte	0
	.half	0
	.section	.srodata.cst4,"aM",@progbits,4
	.align	2
.LC1:
	.word	1158733824
	.section	.srodata.cst8,"aM",@progbits,8
	.align	3
.LC2:
	.word	1855425872
	.word	1075774226
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.byte	2
	.byte	1
	.byte	7
	.byte	1
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	4
	.byte	0
	.half	0
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x18b9
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x2f
	.4byte	.LASF314
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL43
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0xa
	.byte	0x4
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x30
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.4byte	.LASF6
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.4byte	.LASF7
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x2b
	.uleb128 0xa
	.byte	0x10
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x31
	.byte	0x4
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x32
	.4byte	0x94
	.uleb128 0xb
	.4byte	0x9b
	.uleb128 0x33
	.4byte	0xa0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x4
	.byte	0x22
	.byte	0x15
	.4byte	0x55
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.byte	0x25
	.byte	0x13
	.4byte	0x5c
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x6a
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x40
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x71
	.uleb128 0x7
	.4byte	0x40
	.byte	0x5
	.byte	0x17
	.byte	0x1
	.4byte	0x111
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.4byte	0xf2
	.uleb128 0x7
	.4byte	0x40
	.byte	0x5
	.byte	0x21
	.byte	0x1
	.4byte	0x136
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x5
	.byte	0x24
	.byte	0x2
	.4byte	0x11d
	.uleb128 0x7
	.4byte	0x40
	.byte	0x5
	.byte	0x33
	.byte	0x1
	.4byte	0x15b
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x5
	.byte	0x36
	.byte	0x2
	.4byte	0x142
	.uleb128 0x7
	.4byte	0x40
	.byte	0x6
	.byte	0x29
	.byte	0x1
	.4byte	0x204
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x6
	.byte	0x42
	.byte	0x2
	.4byte	0x167
	.uleb128 0x7
	.4byte	0x40
	.byte	0x6
	.byte	0x4c
	.byte	0x1
	.4byte	0x259
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0x6
	.byte	0x57
	.byte	0x2
	.4byte	0x210
	.uleb128 0x7
	.4byte	0x40
	.byte	0x7
	.byte	0xbf
	.byte	0xe
	.4byte	0x27e
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF70
	.byte	0x7
	.byte	0xc2
	.byte	0x2
	.4byte	0x265
	.uleb128 0x34
	.4byte	.LASF224
	.byte	0x4
	.byte	0x8
	.2byte	0x4a0
	.byte	0x10
	.4byte	0x321
	.uleb128 0xf
	.4byte	.LASF71
	.2byte	0x4a1
	.4byte	0xe6
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.4byte	.LASF72
	.2byte	0x4a2
	.4byte	0xe6
	.byte	0x3
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF73
	.2byte	0x4a3
	.4byte	0xe6
	.byte	0x3
	.byte	0xf
	.uleb128 0xf
	.4byte	.LASF74
	.2byte	0x4a4
	.4byte	0xe6
	.byte	0x3
	.byte	0x12
	.uleb128 0xf
	.4byte	.LASF75
	.2byte	0x4a5
	.4byte	0xe6
	.byte	0x3
	.byte	0x15
	.uleb128 0xf
	.4byte	.LASF76
	.2byte	0x4a6
	.4byte	0xe6
	.byte	0x1
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF77
	.2byte	0x4a7
	.4byte	0xe6
	.byte	0x1
	.byte	0x19
	.uleb128 0x1e
	.string	"SI"
	.2byte	0x4a8
	.4byte	0xe6
	.byte	0x1a
	.uleb128 0x1e
	.string	"DI"
	.2byte	0x4a9
	.4byte	0xe6
	.byte	0x1b
	.uleb128 0xf
	.4byte	.LASF78
	.2byte	0x4aa
	.4byte	0xe6
	.byte	0x3
	.byte	0x1c
	.uleb128 0x1e
	.string	"I"
	.2byte	0x4ab
	.4byte	0xe6
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.4byte	0x40
	.byte	0x9
	.byte	0x49
	.byte	0xe
	.4byte	0x340
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	0x40
	.byte	0x9
	.byte	0x52
	.byte	0xe
	.4byte	0x365
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF86
	.byte	0x9
	.byte	0x57
	.byte	0x2
	.4byte	0x340
	.uleb128 0x7
	.4byte	0x40
	.byte	0x9
	.byte	0x5c
	.byte	0xe
	.4byte	0x396
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	0x40
	.byte	0x9
	.byte	0x66
	.byte	0xe
	.4byte	0x3e5
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF102
	.byte	0x9
	.byte	0x72
	.byte	0x2
	.4byte	0x396
	.uleb128 0x7
	.4byte	0x40
	.byte	0x9
	.byte	0x82
	.byte	0xe
	.4byte	0x410
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF106
	.byte	0x9
	.byte	0x86
	.byte	0x2
	.4byte	0x3f1
	.uleb128 0x1f
	.byte	0x10
	.byte	0x9
	.byte	0xb0
	.4byte	0x459
	.uleb128 0x8
	.4byte	.LASF107
	.byte	0x9
	.byte	0xb1
	.byte	0xe
	.4byte	0xe6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF108
	.byte	0x9
	.byte	0xb2
	.byte	0xe
	.4byte	0xe6
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF109
	.byte	0x9
	.byte	0xb3
	.byte	0xe
	.4byte	0xe6
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF110
	.byte	0x9
	.byte	0xb4
	.byte	0x1c
	.4byte	0x28a
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF111
	.byte	0x9
	.byte	0xb5
	.byte	0x2
	.4byte	0x41c
	.uleb128 0x1f
	.byte	0x3
	.byte	0x9
	.byte	0xba
	.4byte	0x495
	.uleb128 0x26
	.string	"dir"
	.byte	0x9
	.byte	0xbb
	.byte	0x18
	.4byte	0x365
	.byte	0
	.uleb128 0x8
	.4byte	.LASF112
	.byte	0x9
	.byte	0xbc
	.byte	0x19
	.4byte	0x3e5
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF113
	.byte	0x9
	.byte	0xbd
	.byte	0x19
	.4byte	0x3e5
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF114
	.byte	0x9
	.byte	0xbe
	.byte	0x2
	.4byte	0x465
	.uleb128 0xb
	.4byte	0x459
	.uleb128 0xb
	.4byte	0x495
	.uleb128 0x7
	.4byte	0x40
	.byte	0xa
	.byte	0x3a
	.byte	0xe
	.4byte	0x548
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF129
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF135
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF137
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF138
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.4byte	.LASF139
	.byte	0xa
	.byte	0x53
	.byte	0x2
	.4byte	0x4ab
	.uleb128 0x7
	.4byte	0x40
	.byte	0xa
	.byte	0x58
	.byte	0xe
	.4byte	0x579
	.uleb128 0x1
	.4byte	.LASF140
	.byte	0
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF142
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF144
	.byte	0xa
	.byte	0x5d
	.byte	0x2
	.4byte	0x554
	.uleb128 0x7
	.4byte	0x40
	.byte	0xa
	.byte	0x62
	.byte	0xe
	.4byte	0x5aa
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF147
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF149
	.byte	0xa
	.byte	0x67
	.byte	0x2
	.4byte	0x585
	.uleb128 0x7
	.4byte	0x40
	.byte	0xa
	.byte	0x6c
	.byte	0xe
	.4byte	0x5f3
	.uleb128 0x1
	.4byte	.LASF150
	.byte	0
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF152
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF157
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF158
	.byte	0xa
	.byte	0x75
	.byte	0x2
	.4byte	0x5b6
	.uleb128 0x7
	.4byte	0x40
	.byte	0xa
	.byte	0x88
	.byte	0xe
	.4byte	0x636
	.uleb128 0x1
	.4byte	.LASF159
	.byte	0
	.uleb128 0x1
	.4byte	.LASF160
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF161
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF162
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF163
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF164
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF165
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.4byte	.LASF166
	.byte	0xa
	.byte	0x90
	.byte	0x2
	.4byte	0x5ff
	.uleb128 0x7
	.4byte	0x40
	.byte	0xa
	.byte	0x95
	.byte	0xe
	.4byte	0x65b
	.uleb128 0x1
	.4byte	.LASF167
	.byte	0
	.uleb128 0x1
	.4byte	.LASF168
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF169
	.byte	0xa
	.byte	0x98
	.byte	0x2
	.4byte	0x642
	.uleb128 0x7
	.4byte	0x40
	.byte	0xa
	.byte	0x9d
	.byte	0xe
	.4byte	0x68c
	.uleb128 0x1
	.4byte	.LASF170
	.byte	0
	.uleb128 0x1
	.4byte	.LASF171
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF172
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF173
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF174
	.byte	0xa
	.byte	0xa2
	.byte	0x2
	.4byte	0x667
	.uleb128 0x7
	.4byte	0x40
	.byte	0xa
	.byte	0xa7
	.byte	0xe
	.4byte	0x6bd
	.uleb128 0x1
	.4byte	.LASF175
	.byte	0
	.uleb128 0x1
	.4byte	.LASF176
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF177
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF178
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF179
	.byte	0xa
	.byte	0xac
	.byte	0x2
	.4byte	0x698
	.uleb128 0x7
	.4byte	0x40
	.byte	0xa
	.byte	0xb1
	.byte	0xe
	.4byte	0x6e2
	.uleb128 0x1
	.4byte	.LASF180
	.byte	0
	.uleb128 0x1
	.4byte	.LASF181
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF182
	.byte	0xa
	.byte	0xb4
	.byte	0x2
	.4byte	0x6c9
	.uleb128 0x7
	.4byte	0x40
	.byte	0xa
	.byte	0xb9
	.byte	0xe
	.4byte	0x707
	.uleb128 0x1
	.4byte	.LASF183
	.byte	0
	.uleb128 0x1
	.4byte	.LASF184
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF185
	.byte	0xa
	.byte	0xbc
	.byte	0x2
	.4byte	0x6ee
	.uleb128 0x7
	.4byte	0x40
	.byte	0xa
	.byte	0xc1
	.byte	0xe
	.4byte	0x72c
	.uleb128 0x1
	.4byte	.LASF186
	.byte	0
	.uleb128 0x1
	.4byte	.LASF187
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF188
	.byte	0xa
	.byte	0xc4
	.byte	0x2
	.4byte	0x713
	.uleb128 0x7
	.4byte	0x40
	.byte	0xa
	.byte	0xc9
	.byte	0xe
	.4byte	0x763
	.uleb128 0x1
	.4byte	.LASF189
	.byte	0
	.uleb128 0x1
	.4byte	.LASF190
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF191
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF192
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF193
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF194
	.byte	0xa
	.byte	0xcf
	.byte	0x2
	.4byte	0x738
	.uleb128 0x1f
	.byte	0xe
	.byte	0xa
	.byte	0xfc
	.4byte	0x822
	.uleb128 0x8
	.4byte	.LASF195
	.byte	0xa
	.byte	0xfd
	.byte	0x16
	.4byte	0x579
	.byte	0
	.uleb128 0x8
	.4byte	.LASF196
	.byte	0xa
	.byte	0xfe
	.byte	0x16
	.4byte	0x5aa
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF197
	.byte	0xa
	.byte	0xff
	.byte	0x12
	.4byte	0x5f3
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF198
	.2byte	0x100
	.byte	0x17
	.4byte	0x636
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF199
	.2byte	0x101
	.byte	0x17
	.4byte	0x636
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF200
	.2byte	0x102
	.byte	0x17
	.4byte	0x68c
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF201
	.2byte	0x103
	.byte	0x17
	.4byte	0x65b
	.byte	0x6
	.uleb128 0x35
	.string	"vcm"
	.byte	0xa
	.2byte	0x104
	.byte	0x16
	.4byte	0x6bd
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF202
	.2byte	0x105
	.byte	0x13
	.4byte	0x707
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF203
	.2byte	0x106
	.byte	0x18
	.4byte	0x72c
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF204
	.2byte	0x107
	.byte	0x19
	.4byte	0x763
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF205
	.2byte	0x108
	.byte	0x11
	.4byte	0x136
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF206
	.2byte	0x109
	.byte	0xd
	.4byte	0xb6
	.byte	0xc
	.byte	0
	.uleb128 0x16
	.4byte	.LASF207
	.2byte	0x10a
	.4byte	0x76f
	.uleb128 0x27
	.byte	0x8
	.2byte	0x10f
	.4byte	0x86a
	.uleb128 0x9
	.4byte	.LASF208
	.2byte	0x110
	.byte	0xc
	.4byte	0xaa
	.byte	0
	.uleb128 0x9
	.4byte	.LASF209
	.2byte	0x111
	.byte	0xc
	.4byte	0xaa
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF210
	.2byte	0x112
	.byte	0xe
	.4byte	0xda
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF211
	.2byte	0x113
	.byte	0xb
	.4byte	0x39
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.4byte	.LASF212
	.2byte	0x114
	.4byte	0x82d
	.uleb128 0x36
	.byte	0x7
	.byte	0x1
	.4byte	0x40
	.byte	0xa
	.2byte	0x119
	.byte	0xe
	.4byte	0x89d
	.uleb128 0x1
	.4byte	.LASF213
	.byte	0
	.uleb128 0x1
	.4byte	.LASF214
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF215
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF216
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF217
	.2byte	0x11e
	.4byte	0x875
	.uleb128 0x27
	.byte	0x2
	.2byte	0x12f
	.4byte	0x8cb
	.uleb128 0x9
	.4byte	.LASF218
	.2byte	0x130
	.byte	0x1d
	.4byte	0x89d
	.byte	0
	.uleb128 0x9
	.4byte	.LASF219
	.2byte	0x131
	.byte	0x11
	.4byte	0x136
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.4byte	.LASF220
	.2byte	0x132
	.4byte	0x8a8
	.uleb128 0x6
	.4byte	.LASF221
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0xc2
	.uleb128 0x6
	.4byte	.LASF222
	.byte	0x2
	.byte	0x41
	.byte	0x12
	.4byte	0xe6
	.uleb128 0x37
	.4byte	.LASF233
	.byte	0x2
	.byte	0x5c
	.byte	0x13
	.4byte	0x8d6
	.uleb128 0x6
	.4byte	.LASF223
	.byte	0xb
	.byte	0x24
	.byte	0x10
	.4byte	0x906
	.uleb128 0xb
	.4byte	0x90b
	.uleb128 0x38
	.4byte	0x920
	.uleb128 0x4
	.4byte	0x47
	.uleb128 0x4
	.4byte	0x920
	.uleb128 0x4
	.4byte	0xe6
	.byte	0
	.uleb128 0xb
	.4byte	0xe6
	.uleb128 0x39
	.4byte	.LASF225
	.byte	0x1c
	.byte	0xb
	.byte	0x25
	.byte	0x10
	.4byte	0x98d
	.uleb128 0x8
	.4byte	.LASF226
	.byte	0xb
	.byte	0x26
	.byte	0x9
	.4byte	0x47
	.byte	0
	.uleb128 0x8
	.4byte	.LASF227
	.byte	0xb
	.byte	0x27
	.byte	0xf
	.4byte	0x920
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF228
	.byte	0xb
	.byte	0x28
	.byte	0xb
	.4byte	0x92
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF229
	.byte	0xb
	.byte	0x29
	.byte	0x9
	.4byte	0x47
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF230
	.byte	0xb
	.byte	0x2a
	.byte	0xe
	.4byte	0xe6
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF231
	.byte	0xb
	.byte	0x2b
	.byte	0xe
	.4byte	0xe6
	.byte	0x14
	.uleb128 0x26
	.string	"cb"
	.byte	0xb
	.byte	0x2c
	.byte	0x11
	.4byte	0x8fa
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF232
	.byte	0xb
	.byte	0x2d
	.byte	0x2
	.4byte	0x925
	.uleb128 0x28
	.4byte	.LASF234
	.byte	0x37
	.byte	0xe
	.4byte	0x822
	.uleb128 0x5
	.byte	0x3
	.4byte	adcCfg
	.uleb128 0x28
	.4byte	.LASF235
	.byte	0x48
	.byte	0x13
	.4byte	0x8cb
	.uleb128 0x5
	.byte	0x3
	.4byte	adcFifoCfg
	.uleb128 0x17
	.4byte	.LASF238
	.byte	0x7
	.2byte	0x277
	.byte	0xd
	.4byte	0x111
	.4byte	0x9dc
	.uleb128 0x4
	.4byte	0x259
	.uleb128 0x4
	.4byte	0x9dc
	.uleb128 0x4
	.4byte	0xce
	.byte	0
	.uleb128 0xb
	.4byte	0x204
	.uleb128 0xc
	.4byte	.LASF236
	.byte	0x9
	.2byte	0x140
	.4byte	0x9f3
	.uleb128 0x4
	.4byte	0xce
	.byte	0
	.uleb128 0x11
	.4byte	.LASF258
	.byte	0x9
	.2byte	0x139
	.uleb128 0xc
	.4byte	.LASF237
	.byte	0x9
	.2byte	0x144
	.4byte	0xa17
	.uleb128 0x4
	.4byte	0xce
	.uleb128 0x4
	.4byte	0x410
	.uleb128 0x4
	.4byte	0x15b
	.byte	0
	.uleb128 0x18
	.4byte	.LASF239
	.byte	0xc
	.byte	0x4e
	.byte	0x7
	.4byte	0x92
	.4byte	0xa2d
	.uleb128 0x4
	.4byte	0x47
	.byte	0
	.uleb128 0x18
	.4byte	.LASF240
	.byte	0xc
	.byte	0x4b
	.byte	0x5
	.4byte	0x47
	.4byte	0xa52
	.uleb128 0x4
	.4byte	0x47
	.uleb128 0x4
	.4byte	0x92
	.uleb128 0x4
	.4byte	0x92
	.uleb128 0x4
	.4byte	0x92
	.byte	0
	.uleb128 0xc
	.4byte	.LASF241
	.byte	0x9
	.2byte	0x143
	.4byte	0xa69
	.uleb128 0x4
	.4byte	0xce
	.uleb128 0x4
	.4byte	0xe6
	.byte	0
	.uleb128 0xc
	.4byte	.LASF242
	.byte	0x9
	.2byte	0x142
	.4byte	0xa80
	.uleb128 0x4
	.4byte	0xce
	.uleb128 0x4
	.4byte	0x4a6
	.byte	0
	.uleb128 0xc
	.4byte	.LASF243
	.byte	0x9
	.2byte	0x141
	.4byte	0xa92
	.uleb128 0x4
	.4byte	0xce
	.byte	0
	.uleb128 0x18
	.4byte	.LASF244
	.byte	0xd
	.byte	0xa3
	.byte	0x7
	.4byte	0x92
	.4byte	0xaa8
	.uleb128 0x4
	.4byte	0x7f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF245
	.byte	0xa
	.2byte	0x1fb
	.4byte	0xac9
	.uleb128 0x4
	.4byte	0xac9
	.uleb128 0x4
	.4byte	0xac9
	.uleb128 0x4
	.4byte	0xce
	.uleb128 0x4
	.4byte	0x136
	.byte	0
	.uleb128 0xb
	.4byte	0x548
	.uleb128 0x18
	.4byte	.LASF246
	.byte	0xe
	.byte	0xce
	.byte	0x5
	.4byte	0x47
	.4byte	0xae5
	.uleb128 0x4
	.4byte	0xa5
	.uleb128 0x29
	.byte	0
	.uleb128 0x17
	.4byte	.LASF247
	.byte	0xa
	.2byte	0x212
	.byte	0x7
	.4byte	0x39
	.4byte	0xafc
	.uleb128 0x4
	.4byte	0xe6
	.byte	0
	.uleb128 0x19
	.4byte	.LASF248
	.byte	0xf
	.byte	0x9e
	.byte	0x6
	.4byte	0xb0f
	.uleb128 0x4
	.4byte	0xa0
	.uleb128 0x29
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF249
	.byte	0x10
	.2byte	0x54c
	.byte	0xc
	.4byte	0x8e2
	.uleb128 0x1a
	.4byte	.LASF250
	.byte	0x10
	.2byte	0x55d
	.byte	0xc
	.4byte	0x8e2
	.uleb128 0x17
	.4byte	.LASF251
	.byte	0xa
	.2byte	0x20f
	.byte	0xd
	.4byte	0x111
	.4byte	0xb40
	.uleb128 0x4
	.4byte	0xb40
	.byte	0
	.uleb128 0xb
	.4byte	0xda
	.uleb128 0xc
	.4byte	.LASF252
	.byte	0xa
	.2byte	0x203
	.4byte	0xb61
	.uleb128 0x4
	.4byte	0x920
	.uleb128 0x4
	.4byte	0xe6
	.uleb128 0x4
	.4byte	0xb61
	.byte	0
	.uleb128 0xb
	.4byte	0x86a
	.uleb128 0x19
	.4byte	.LASF253
	.byte	0x1
	.byte	0xb9
	.byte	0x19
	.4byte	0xb78
	.uleb128 0x4
	.4byte	0x47
	.byte	0
	.uleb128 0xc
	.4byte	.LASF254
	.byte	0xa
	.2byte	0x1fe
	.4byte	0xb8a
	.uleb128 0x4
	.4byte	0xb8a
	.byte	0
	.uleb128 0xb
	.4byte	0x8cb
	.uleb128 0xc
	.4byte	.LASF255
	.byte	0xa
	.2byte	0x20b
	.4byte	0xba1
	.uleb128 0x4
	.4byte	0x6e2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF256
	.byte	0xa
	.2byte	0x1fa
	.4byte	0xbbd
	.uleb128 0x4
	.4byte	0x548
	.uleb128 0x4
	.4byte	0x548
	.uleb128 0x4
	.4byte	0x136
	.byte	0
	.uleb128 0xc
	.4byte	.LASF257
	.byte	0xa
	.2byte	0x1f9
	.4byte	0xbcf
	.uleb128 0x4
	.4byte	0xbcf
	.byte	0
	.uleb128 0xb
	.4byte	0x822
	.uleb128 0x11
	.4byte	.LASF259
	.byte	0xa
	.2byte	0x1f7
	.uleb128 0x11
	.4byte	.LASF260
	.byte	0xa
	.2byte	0x1f8
	.uleb128 0x11
	.4byte	.LASF261
	.byte	0xa
	.2byte	0x1f6
	.uleb128 0x11
	.4byte	.LASF262
	.byte	0xa
	.2byte	0x20a
	.uleb128 0x1a
	.4byte	.LASF263
	.byte	0xa
	.2byte	0x202
	.byte	0xa
	.4byte	0xe6
	.uleb128 0x1a
	.4byte	.LASF264
	.byte	0xa
	.2byte	0x1ff
	.byte	0x9
	.4byte	0xce
	.uleb128 0x19
	.4byte	.LASF265
	.byte	0x5
	.byte	0x89
	.byte	0x6
	.4byte	0xc20
	.uleb128 0x4
	.4byte	0xe6
	.byte	0
	.uleb128 0x11
	.4byte	.LASF266
	.byte	0xa
	.2byte	0x1fc
	.uleb128 0x11
	.4byte	.LASF267
	.byte	0xa
	.2byte	0x209
	.uleb128 0x17
	.4byte	.LASF268
	.byte	0x7
	.2byte	0x262
	.byte	0xd
	.4byte	0x111
	.4byte	0xc51
	.uleb128 0x4
	.4byte	0xce
	.uleb128 0x4
	.4byte	0x27e
	.uleb128 0x4
	.4byte	0xce
	.byte	0
	.uleb128 0x12
	.4byte	.LASF269
	.2byte	0x20f
	.byte	0x5
	.4byte	0x47
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc8c
	.uleb128 0xd
	.4byte	.LASF271
	.2byte	0x20f
	.byte	0x24
	.4byte	0x47
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x2a
	.4byte	.LASF273
	.2byte	0x211
	.byte	0x9
	.4byte	0x47
	.byte	0
	.uleb128 0x12
	.4byte	.LASF270
	.2byte	0x1fa
	.byte	0x9
	.4byte	0xc2
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd36
	.uleb128 0xd
	.4byte	.LASF272
	.2byte	0x1fa
	.byte	0x25
	.4byte	0x920
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x20
	.4byte	.LASF231
	.byte	0x2f
	.4byte	0x47
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x20
	.4byte	.LASF273
	.byte	0x3e
	.4byte	0x47
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x20
	.4byte	.LASF274
	.byte	0x4b
	.4byte	0x47
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x21
	.string	"i"
	.2byte	0x1fc
	.byte	0x9
	.4byte	0x47
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0xe
	.4byte	.LASF275
	.2byte	0x1fd
	.byte	0xd
	.4byte	0xc2
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x3a
	.4byte	0xd36
	.4byte	.LBI32
	.byte	0x10
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.2byte	0x205
	.byte	0x18
	.uleb128 0x1b
	.4byte	0xd48
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x14
	.4byte	0xd54
	.4byte	.LLST36
	.4byte	.LVUS36
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF315
	.byte	0x1
	.2byte	0x1f0
	.byte	0x11
	.4byte	0xe6
	.byte	0x1
	.4byte	0xd62
	.uleb128 0x22
	.4byte	.LASF275
	.2byte	0x1f0
	.byte	0x28
	.4byte	0xe6
	.uleb128 0x3c
	.string	"val"
	.byte	0x1
	.2byte	0x1f2
	.byte	0xe
	.4byte	0xe6
	.byte	0
	.uleb128 0x12
	.4byte	.LASF276
	.2byte	0x1e7
	.byte	0x5
	.4byte	0x47
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdba
	.uleb128 0xd
	.4byte	.LASF271
	.2byte	0x1e7
	.byte	0x1a
	.4byte	0x47
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x13
	.4byte	.LASF282
	.2byte	0x1e9
	.byte	0xd
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x10
	.4byte	.LVL138
	.4byte	0x9bb
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF277
	.2byte	0x1da
	.byte	0x5
	.4byte	0x47
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe4d
	.uleb128 0x5
	.4byte	.LVL130
	.4byte	0x9fb
	.4byte	0xdf1
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x5
	.4byte	.LVL131
	.4byte	0x9fb
	.4byte	0xe0e
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.4byte	.LVL132
	.4byte	0x9fb
	.4byte	0xe2b
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.4byte	.LVL133
	.4byte	0xc20
	.uleb128 0x3
	.4byte	.LVL134
	.4byte	0x9f3
	.uleb128 0x10
	.4byte	.LVL135
	.4byte	0x9e1
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF278
	.2byte	0x1a3
	.byte	0x5
	.4byte	0x47
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfc3
	.uleb128 0xd
	.4byte	.LASF226
	.2byte	0x1a3
	.byte	0x19
	.4byte	0x47
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0xd
	.4byte	.LASF279
	.2byte	0x1a3
	.byte	0x28
	.4byte	0xe6
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0xe
	.4byte	.LASF280
	.2byte	0x1a5
	.byte	0x18
	.4byte	0x4a1
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0xe
	.4byte	.LASF281
	.2byte	0x1a6
	.byte	0xf
	.4byte	0x920
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x13
	.4byte	.LASF283
	.2byte	0x1a7
	.byte	0x16
	.4byte	0x495
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.4byte	.LASF284
	.2byte	0x1a8
	.byte	0x10
	.4byte	0xfc3
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x3d
	.4byte	0xfc8
	.4byte	.LBI28
	.byte	0x27
	.4byte	.LLRL27
	.byte	0x1
	.2byte	0x1ca
	.byte	0x5
	.4byte	0xf1d
	.uleb128 0x1b
	.4byte	0xfd6
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x1b
	.4byte	0xfe2
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x1b
	.4byte	0xfef
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x3e
	.4byte	0xffb
	.byte	0
	.uleb128 0x5
	.4byte	.LVL117
	.4byte	0xa92
	.4byte	0xf30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.uleb128 0x5
	.4byte	.LVL119
	.4byte	0xa92
	.4byte	0xf44
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.4byte	.LVL121
	.4byte	0xa92
	.4byte	0xf5a
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x82
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.4byte	.LVL124
	.4byte	0xa80
	.4byte	0xf6d
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x5
	.4byte	.LVL127
	.4byte	0xa69
	.4byte	0xf86
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x5
	.4byte	.LVL128
	.4byte	0xa52
	.4byte	0xf9f
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL129
	.4byte	0xa2d
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	adc_data_update
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x98d
	.uleb128 0x3f
	.4byte	.LASF307
	.byte	0x1
	.2byte	0x187
	.byte	0xd
	.byte	0x1
	.4byte	0x1008
	.uleb128 0x22
	.4byte	.LASF280
	.2byte	0x187
	.byte	0x31
	.4byte	0x4a1
	.uleb128 0x40
	.string	"buf"
	.byte	0x1
	.2byte	0x187
	.byte	0x43
	.4byte	0x920
	.uleb128 0x22
	.4byte	.LASF279
	.2byte	0x187
	.byte	0x51
	.4byte	0xe6
	.uleb128 0x2a
	.4byte	.LASF285
	.2byte	0x189
	.byte	0x1c
	.4byte	0x28a
	.byte	0
	.uleb128 0x12
	.4byte	.LASF286
	.2byte	0x153
	.byte	0x5
	.4byte	0x47
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x113b
	.uleb128 0xd
	.4byte	.LASF226
	.2byte	0x153
	.byte	0x15
	.4byte	0x47
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0xd
	.4byte	.LASF271
	.2byte	0x153
	.byte	0x1f
	.4byte	0x47
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x21
	.string	"i"
	.2byte	0x155
	.byte	0x9
	.4byte	0x47
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0xe
	.4byte	.LASF287
	.2byte	0x156
	.byte	0x9
	.4byte	0x47
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0xe
	.4byte	.LASF288
	.2byte	0x157
	.byte	0x9
	.4byte	0x47
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x13
	.4byte	.LASF289
	.2byte	0x158
	.byte	0x12
	.4byte	0x822
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.4byte	.LASF290
	.2byte	0x159
	.byte	0x13
	.4byte	0x113b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.4byte	.LASF291
	.2byte	0x15a
	.byte	0x13
	.4byte	0x113b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.4byte	.LASF292
	.2byte	0x15b
	.byte	0x17
	.4byte	0x8cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LVL152
	.4byte	0xbdc
	.uleb128 0x3
	.4byte	.LVL153
	.4byte	0xbd4
	.uleb128 0x3
	.4byte	.LVL154
	.4byte	0xbe4
	.uleb128 0x5
	.4byte	.LVL155
	.4byte	0xbbd
	.4byte	0x10ef
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5
	.4byte	.LVL159
	.4byte	0xaa8
	.4byte	0x1114
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x82
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x5
	.4byte	.LVL160
	.4byte	0xb78
	.4byte	0x1128
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x10
	.4byte	.LVL165
	.4byte	0xc51
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x548
	.4byte	0x114b
	.uleb128 0x42
	.4byte	0x2b
	.byte	0xb
	.byte	0
	.uleb128 0x12
	.4byte	.LASF293
	.2byte	0x138
	.byte	0x5
	.4byte	0x47
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11de
	.uleb128 0xd
	.4byte	.LASF226
	.2byte	0x138
	.byte	0x1a
	.4byte	0x47
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0xd
	.4byte	.LASF294
	.2byte	0x138
	.byte	0x29
	.4byte	0xe6
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x21
	.string	"div"
	.2byte	0x13a
	.byte	0xe
	.4byte	0xe6
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0xe
	.4byte	.LASF295
	.2byte	0x13b
	.byte	0xe
	.4byte	0xe6
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0xe
	.4byte	.LASF296
	.2byte	0x13c
	.byte	0xe
	.4byte	0xe6
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x10
	.4byte	.LVL108
	.4byte	0xc30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x11d
	.byte	0xd
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1219
	.uleb128 0xe
	.4byte	.LASF284
	.2byte	0x11f
	.byte	0x10
	.4byte	0xfc3
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x10
	.4byte	.LVL0
	.4byte	0xa17
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF297
	.byte	0xe0
	.4byte	0x47
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1428
	.uleb128 0x2b
	.4byte	.LASF298
	.byte	0xe0
	.byte	0x1e
	.4byte	0x1428
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x2b
	.4byte	.LASF299
	.byte	0xe0
	.byte	0x2c
	.4byte	0xce
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x15
	.4byte	.LASF300
	.byte	0xe2
	.byte	0x15
	.4byte	0xda
	.uleb128 0x5
	.byte	0x3
	.4byte	tsen_offset.0
	.uleb128 0x1d
	.string	"val"
	.byte	0xe3
	.byte	0xb
	.4byte	0x39
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x44
	.4byte	.LLRL15
	.4byte	0x1402
	.uleb128 0x15
	.4byte	.LASF234
	.byte	0xe7
	.byte	0x16
	.4byte	0x822
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.4byte	.LASF235
	.byte	0xf8
	.byte	0x1b
	.4byte	0x8cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x45
	.4byte	0x1889
	.4byte	.LBI19
	.byte	0x25
	.4byte	.LLRL16
	.byte	0x1
	.2byte	0x10b
	.byte	0x53
	.uleb128 0x5
	.4byte	.LVL73
	.4byte	0x1896
	.4byte	0x12d5
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x5
	.4byte	.LVL74
	.4byte	0xc30
	.4byte	0x12f2
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x3
	.4byte	.LVL75
	.4byte	0xbdc
	.uleb128 0x3
	.4byte	.LVL76
	.4byte	0xbd4
	.uleb128 0x3
	.4byte	.LVL77
	.4byte	0xbe4
	.uleb128 0x5
	.4byte	.LVL78
	.4byte	0xbbd
	.4byte	0x1321
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x5
	.4byte	.LVL79
	.4byte	0xba1
	.4byte	0x133e
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3e
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.4byte	.LVL80
	.4byte	0xb8f
	.4byte	0x1351
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.4byte	.LVL81
	.4byte	0xb78
	.4byte	0x1366
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x5
	.4byte	.LVL82
	.4byte	0xb29
	.4byte	0x137d
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	tsen_offset.0
	.byte	0
	.uleb128 0x3
	.4byte	.LVL83
	.4byte	0xb1c
	.uleb128 0x5
	.4byte	.LVL84
	.4byte	0xafc
	.4byte	0x13b6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0xa
	.2byte	0x10b
	.byte	0
	.uleb128 0x3
	.4byte	.LVL93
	.4byte	0xb0f
	.uleb128 0x3
	.4byte	.LVL94
	.4byte	0xb1c
	.uleb128 0x5
	.4byte	.LVL95
	.4byte	0xafc
	.4byte	0x13f8
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0xa
	.2byte	0x10d
	.byte	0
	.uleb128 0x3
	.4byte	.LVL96
	.4byte	0xb0f
	.byte	0
	.uleb128 0x3
	.4byte	.LVL85
	.4byte	0xae5
	.uleb128 0x3
	.4byte	.LVL87
	.4byte	0x18a1
	.uleb128 0x10
	.4byte	.LVL88
	.4byte	0xace
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xb6
	.uleb128 0x1c
	.4byte	.LASF301
	.byte	0xda
	.4byte	0x47
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1588
	.uleb128 0x46
	.4byte	0x1766
	.4byte	.LBI12
	.byte	0x2
	.4byte	.LLRL7
	.byte	0x1
	.byte	0xdc
	.byte	0x5
	.uleb128 0x2c
	.4byte	0x1773
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.4byte	0x177e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.4byte	0x1789
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x14
	.4byte	0x1792
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x14
	.4byte	0x179c
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x14
	.4byte	0x17a6
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x3
	.4byte	.LVL49
	.4byte	0xbe4
	.uleb128 0x3
	.4byte	.LVL50
	.4byte	0xbdc
	.uleb128 0x3
	.4byte	.LVL51
	.4byte	0xbd4
	.uleb128 0x5
	.4byte	.LVL52
	.4byte	0xbbd
	.4byte	0x14cc
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	adcCfg
	.byte	0
	.uleb128 0x5
	.4byte	.LVL53
	.4byte	0xba1
	.4byte	0x14e9
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3e
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.4byte	.LVL54
	.4byte	0xb8f
	.4byte	0x14fc
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.4byte	.LVL55
	.4byte	0xb78
	.4byte	0x1513
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	adcFifoCfg
	.byte	0
	.uleb128 0x3
	.4byte	.LVL56
	.4byte	0x17b2
	.uleb128 0x3
	.4byte	.LVL58
	.4byte	0xc20
	.uleb128 0x3
	.4byte	.LVL59
	.4byte	0xc01
	.uleb128 0x3
	.4byte	.LVL60
	.4byte	0xbf4
	.uleb128 0x5
	.4byte	.LVL61
	.4byte	0xb45
	.4byte	0x1556
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.4byte	.LVL62
	.4byte	0xc01
	.uleb128 0x3
	.4byte	.LVL64
	.4byte	0xc28
	.uleb128 0x5
	.4byte	.LVL66
	.4byte	0xc0e
	.4byte	0x157d
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.uleb128 0x3
	.4byte	.LVL69
	.4byte	0xbec
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF302
	.byte	0xad
	.4byte	0x47
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16b8
	.uleb128 0x2d
	.string	"tmp"
	.byte	0xad
	.byte	0x1b
	.4byte	0x1428
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x15
	.4byte	.LASF303
	.byte	0xaf
	.byte	0x15
	.4byte	0x86a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.4byte	.LASF304
	.byte	0xb0
	.byte	0xe
	.4byte	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.string	"i"
	.byte	0xb1
	.byte	0xd
	.4byte	0xce
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1d
	.string	"v0"
	.byte	0xb2
	.byte	0xe
	.4byte	0xe6
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x1d
	.string	"v1"
	.byte	0xb2
	.byte	0x13
	.4byte	0xe6
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x47
	.4byte	.LASF305
	.byte	0x1
	.byte	0xb3
	.byte	0xb
	.4byte	0x39
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x48
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x1647
	.uleb128 0x19
	.4byte	.LASF253
	.byte	0x1
	.byte	0xb9
	.byte	0x19
	.4byte	0x1637
	.uleb128 0x4
	.4byte	0x47
	.byte	0
	.uleb128 0x10
	.4byte	.LVL38
	.4byte	0xb66
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LVL29
	.4byte	0xc20
	.uleb128 0x3
	.4byte	.LVL30
	.4byte	0xc01
	.uleb128 0x3
	.4byte	.LVL31
	.4byte	0xbf4
	.uleb128 0x5
	.4byte	.LVL32
	.4byte	0xb45
	.4byte	0x1681
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3
	.4byte	.LVL35
	.4byte	0xc01
	.uleb128 0x3
	.4byte	.LVL36
	.4byte	0xbec
	.uleb128 0x3
	.4byte	.LVL43
	.4byte	0x18a1
	.uleb128 0x3
	.4byte	.LVL44
	.4byte	0x18aa
	.uleb128 0x3
	.4byte	.LVL45
	.4byte	0x18b3
	.uleb128 0x3
	.4byte	.LVL46
	.4byte	0xc28
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF306
	.byte	0x9a
	.4byte	0x47
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1766
	.uleb128 0x5
	.4byte	.LVL17
	.4byte	0x1840
	.4byte	0x16e3
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3
	.4byte	.LVL18
	.4byte	0xbe4
	.uleb128 0x3
	.4byte	.LVL19
	.4byte	0xbdc
	.uleb128 0x3
	.4byte	.LVL20
	.4byte	0xbd4
	.uleb128 0x5
	.4byte	.LVL21
	.4byte	0xbbd
	.4byte	0x1715
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	adcCfg
	.byte	0
	.uleb128 0x5
	.4byte	.LVL22
	.4byte	0xba1
	.4byte	0x1732
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3e
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.4byte	.LVL23
	.4byte	0xb8f
	.4byte	0x1745
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.4byte	.LVL24
	.4byte	0xb78
	.4byte	0x175c
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	adcFifoCfg
	.byte	0
	.uleb128 0x3
	.4byte	.LVL25
	.4byte	0x17b2
	.byte	0
	.uleb128 0x49
	.4byte	.LASF308
	.byte	0x1
	.byte	0x64
	.byte	0xd
	.byte	0x1
	.4byte	0x17b2
	.uleb128 0x23
	.4byte	.LASF303
	.byte	0x66
	.byte	0x15
	.4byte	0x86a
	.uleb128 0x23
	.4byte	.LASF304
	.byte	0x67
	.byte	0xe
	.4byte	0xe6
	.uleb128 0x24
	.string	"i"
	.byte	0x68
	.byte	0xd
	.4byte	0xce
	.uleb128 0x24
	.string	"v0"
	.byte	0x69
	.byte	0xe
	.4byte	0xe6
	.uleb128 0x24
	.string	"v1"
	.byte	0x69
	.byte	0x13
	.4byte	0xe6
	.uleb128 0x23
	.4byte	.LASF305
	.byte	0x6a
	.byte	0xb
	.4byte	0x39
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF309
	.byte	0x53
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1840
	.uleb128 0x3
	.4byte	.LVL6
	.4byte	0xc28
	.uleb128 0x3
	.4byte	.LVL7
	.4byte	0xc20
	.uleb128 0x5
	.4byte	.LVL8
	.4byte	0xc0e
	.4byte	0x17ec
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x3
	.4byte	.LVL9
	.4byte	0xc01
	.uleb128 0x3
	.4byte	.LVL10
	.4byte	0xbf4
	.uleb128 0x3
	.4byte	.LVL11
	.4byte	0xbec
	.uleb128 0x3
	.4byte	.LVL12
	.4byte	0xc20
	.uleb128 0x5
	.4byte	.LVL13
	.4byte	0xc0e
	.4byte	0x1824
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x3
	.4byte	.LVL14
	.4byte	0xc01
	.uleb128 0x3
	.4byte	.LVL15
	.4byte	0xbf4
	.uleb128 0x4a
	.4byte	.LVL16
	.4byte	0xc28
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF310
	.byte	0x4d
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1889
	.uleb128 0x2d
	.string	"div"
	.byte	0x4d
	.byte	0x1d
	.4byte	0xce
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x4b
	.4byte	.LVL5
	.4byte	0xc30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x40
	.byte	0xa8
	.uleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF317
	.byte	0x2
	.byte	0xb3
	.byte	0x3a
	.4byte	0x8d6
	.byte	0x3
	.uleb128 0x4d
	.4byte	.LASF318
	.4byte	.LASF319
	.byte	0x11
	.byte	0
	.uleb128 0x25
	.4byte	.LASF311
	.4byte	.LASF311
	.uleb128 0x25
	.4byte	.LASF312
	.4byte	.LASF312
	.uleb128 0x25
	.4byte	.LASF313
	.4byte	.LASF313
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
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
	.uleb128 0xa
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
	.uleb128 0xd
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 22
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x1b
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 22
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 506
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0xb
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x3d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x41
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x4d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
.LVUS37:
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x3
	.uleb128 0x4
	.uleb128 0x4
	.uleb128 0
.LLST37:
	.byte	0x6
	.4byte	.LVL148
	.byte	0x4
	.uleb128 .LVL148-.LVL148
	.uleb128 .LVL149-.LVL148
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL149-.LVL148
	.uleb128 .LVL150-.LVL148
	.uleb128 0x3
	.byte	0x7a
	.sleb128 4
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL150-.LVL148
	.uleb128 .LFE43-.LVL148
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS32:
	.uleb128 0
	.uleb128 0x7
	.uleb128 0x7
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0xd
	.uleb128 0xd
	.uleb128 0x1a
	.uleb128 0x1a
	.uleb128 0
.LLST32:
	.byte	0x6
	.4byte	.LVL139
	.byte	0x4
	.uleb128 .LVL139-.LVL139
	.uleb128 .LVL141-.LVL139
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL141-.LVL139
	.uleb128 .LVL142-.LVL139
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL142-.LVL139
	.uleb128 .LVL143-.LVL139
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL143-.LVL139
	.uleb128 .LVL146-.LVL139
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL146-.LVL139
	.uleb128 .LFE42-.LVL139
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS33:
	.uleb128 0x4
	.uleb128 0x5
	.uleb128 0x5
	.uleb128 0x1b
	.uleb128 0x1b
	.uleb128 0
.LLST33:
	.byte	0x6
	.4byte	.LVL139
	.byte	0x4
	.uleb128 .LVL139-.LVL139
	.uleb128 .LVL140-.LVL139
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL140-.LVL139
	.uleb128 .LVL147-.LVL139
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL147-.LVL139
	.uleb128 .LFE42-.LVL139
	.uleb128 0x3
	.byte	0x7e
	.sleb128 -1
	.byte	0x9f
	.byte	0
.LVUS34:
	.uleb128 0x17
	.uleb128 0x1a
.LLST34:
	.byte	0x8
	.4byte	.LVL145
	.uleb128 .LVL146-.LVL145
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS35:
	.uleb128 0x10
	.uleb128 0x15
.LLST35:
	.byte	0x8
	.4byte	.LVL144
	.uleb128 .LVL144-.LVL144
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS36:
	.uleb128 0x13
	.uleb128 0x15
.LLST36:
	.byte	0x8
	.4byte	.LVL144
	.uleb128 .LVL144-.LVL144
	.uleb128 0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS31:
	.uleb128 0
	.uleb128 0x5
	.uleb128 0x5
	.uleb128 0
.LLST31:
	.byte	0x6
	.4byte	.LVL136
	.byte	0x4
	.uleb128 .LVL136-.LVL136
	.uleb128 .LVL137-.LVL136
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL137-.LVL136
	.uleb128 .LFE40-.LVL136
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0xd
	.uleb128 0xd
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x11
	.uleb128 0
.LLST22:
	.byte	0x6
	.4byte	.LVL109
	.byte	0x4
	.uleb128 .LVL109-.LVL109
	.uleb128 .LVL110-.LVL109
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL110-.LVL109
	.uleb128 .LVL111-.LVL109
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL111-.LVL109
	.uleb128 .LVL114-.LVL109
	.uleb128 0x1
	.byte	0x64
	.byte	0x4
	.uleb128 .LVL114-.LVL109
	.uleb128 .LVL115-.LVL109
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL115-.LVL109
	.uleb128 .LVL116-.LVL109
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL116-.LVL109
	.uleb128 .LFE38-.LVL109
	.uleb128 0x1
	.byte	0x64
	.byte	0
.LVUS23:
	.uleb128 0
	.uleb128 0x9
	.uleb128 0x9
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0x13
	.uleb128 0
.LLST23:
	.byte	0x6
	.4byte	.LVL109
	.byte	0x4
	.uleb128 .LVL109-.LVL109
	.uleb128 .LVL111-.LVL109
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL111-.LVL109
	.uleb128 .LVL113-.LVL109
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL113-.LVL109
	.uleb128 .LVL115-.LVL109
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL115-.LVL109
	.uleb128 .LVL117-1-.LVL109
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL117-1-.LVL109
	.uleb128 .LFE38-.LVL109
	.uleb128 0x1
	.byte	0x62
	.byte	0
.LVUS24:
	.uleb128 0x18
	.uleb128 0
.LLST24:
	.byte	0x8
	.4byte	.LVL120
	.uleb128 .LFE38-.LVL120
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS25:
	.uleb128 0x1c
	.uleb128 0x23
	.uleb128 0x23
	.uleb128 0x3e
	.uleb128 0x3e
	.uleb128 0x4e
	.uleb128 0x4e
	.uleb128 0
.LLST25:
	.byte	0x6
	.4byte	.LVL122
	.byte	0x4
	.uleb128 .LVL122-.LVL122
	.uleb128 .LVL123-.LVL122
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL123-.LVL122
	.uleb128 .LVL125-.LVL122
	.uleb128 0x1
	.byte	0x63
	.byte	0x4
	.uleb128 .LVL125-.LVL122
	.uleb128 .LVL127-1-.LVL122
	.uleb128 0x2
	.byte	0x78
	.sleb128 4
	.byte	0x4
	.uleb128 .LVL127-1-.LVL122
	.uleb128 .LFE38-.LVL122
	.uleb128 0x3
	.byte	0x83
	.sleb128 -48
	.byte	0x9f
	.byte	0
.LVUS26:
	.uleb128 0x9
	.uleb128 0xb
	.uleb128 0x14
	.uleb128 0
.LLST26:
	.byte	0x6
	.4byte	.LVL111
	.byte	0x4
	.uleb128 .LVL111-.LVL111
	.uleb128 .LVL112-.LVL111
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL118-.LVL111
	.uleb128 .LFE38-.LVL111
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS28:
	.uleb128 0x27
	.uleb128 0x4c
.LLST28:
	.byte	0x8
	.4byte	.LVL124
	.uleb128 .LVL126-.LVL124
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS29:
	.uleb128 0x27
	.uleb128 0x3e
	.uleb128 0x3e
	.uleb128 0x4c
.LLST29:
	.byte	0x6
	.4byte	.LVL124
	.byte	0x4
	.uleb128 .LVL124-.LVL124
	.uleb128 .LVL125-.LVL124
	.uleb128 0x1
	.byte	0x63
	.byte	0x4
	.uleb128 .LVL125-.LVL124
	.uleb128 .LVL126-.LVL124
	.uleb128 0x2
	.byte	0x78
	.sleb128 4
	.byte	0
.LVUS30:
	.uleb128 0x27
	.uleb128 0x4c
.LLST30:
	.byte	0x8
	.4byte	.LVL124
	.uleb128 .LVL126-.LVL124
	.uleb128 0x1
	.byte	0x62
	.byte	0
.LVUS38:
	.uleb128 0
	.uleb128 0x1f
	.uleb128 0x1f
	.uleb128 0x26
	.uleb128 0x26
	.uleb128 0x36
	.uleb128 0x36
	.uleb128 0x39
	.uleb128 0x39
	.uleb128 0
.LLST38:
	.byte	0x6
	.4byte	.LVL151
	.byte	0x4
	.uleb128 .LVL151-.LVL151
	.uleb128 .LVL152-1-.LVL151
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL152-1-.LVL151
	.uleb128 .LVL156-.LVL151
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL156-.LVL151
	.uleb128 .LVL163-.LVL151
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL163-.LVL151
	.uleb128 .LVL164-.LVL151
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL164-.LVL151
	.uleb128 .LFE36-.LVL151
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS39:
	.uleb128 0
	.uleb128 0x1f
	.uleb128 0x1f
	.uleb128 0x35
	.uleb128 0x35
	.uleb128 0x36
	.uleb128 0x36
	.uleb128 0
.LLST39:
	.byte	0x6
	.4byte	.LVL151
	.byte	0x4
	.uleb128 .LVL151-.LVL151
	.uleb128 .LVL152-1-.LVL151
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL152-1-.LVL151
	.uleb128 .LVL162-.LVL151
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x4
	.uleb128 .LVL162-.LVL151
	.uleb128 .LVL163-.LVL151
	.uleb128 0x3
	.byte	0x72
	.sleb128 -68
	.byte	0x4
	.uleb128 .LVL163-.LVL151
	.uleb128 .LFE36-.LVL151
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
.LVUS40:
	.uleb128 0x26
	.uleb128 0x2c
.LLST40:
	.byte	0x8
	.4byte	.LVL156
	.uleb128 .LVL158-.LVL156
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS41:
	.uleb128 0x3a
	.uleb128 0
.LLST41:
	.byte	0x8
	.4byte	.LVL165
	.uleb128 .LFE36-.LVL165
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS42:
	.uleb128 0x2c
	.uleb128 0x34
	.uleb128 0x40
	.uleb128 0
.LLST42:
	.byte	0x6
	.4byte	.LVL158
	.byte	0x4
	.uleb128 .LVL158-.LVL158
	.uleb128 .LVL161-.LVL158
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL166-.LVL158
	.uleb128 .LFE36-.LVL158
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS17:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0
.LLST17:
	.byte	0x6
	.4byte	.LVL97
	.byte	0x4
	.uleb128 .LVL97-.LVL97
	.uleb128 .LVL98-.LVL97
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL98-.LVL97
	.uleb128 .LFE35-.LVL97
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS18:
	.uleb128 0
	.uleb128 0x1b
	.uleb128 0x1b
	.uleb128 0
.LLST18:
	.byte	0x6
	.4byte	.LVL97
	.byte	0x4
	.uleb128 .LVL97-.LVL97
	.uleb128 .LVL106-.LVL97
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL106-.LVL97
	.uleb128 .LFE35-.LVL97
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS19:
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x17
	.uleb128 0x18
	.uleb128 0x18
	.uleb128 0x1a
.LLST19:
	.byte	0x6
	.4byte	.LVL102
	.byte	0x4
	.uleb128 .LVL102-.LVL102
	.uleb128 .LVL104-.LVL102
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL104-.LVL102
	.uleb128 .LVL104-.LVL102
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL104-.LVL102
	.uleb128 .LVL105-.LVL102
	.uleb128 0x16
	.byte	0x7c
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x40
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0
.LVUS20:
	.uleb128 0xe
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x1c
	.uleb128 0x1c
	.uleb128 0
.LLST20:
	.byte	0x6
	.4byte	.LVL101
	.byte	0x4
	.uleb128 .LVL101-.LVL101
	.uleb128 .LVL103-.LVL101
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL103-.LVL101
	.uleb128 .LVL107-.LVL101
	.uleb128 0xf
	.byte	0xc
	.4byte	0x5b8d800
	.byte	0xa8
	.uleb128 0x2b
	.byte	0x7a
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2b
	.byte	0x1b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL107-.LVL101
	.uleb128 .LFE35-.LVL101
	.uleb128 0x22
	.byte	0xc
	.4byte	0x5b8d800
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x1f
	.byte	0x9
	.byte	0xf5
	.byte	0x1a
	.byte	0x23
	.uleb128 0xc
	.byte	0xa
	.2byte	0xc00
	.byte	0x1e
	.byte	0xa8
	.uleb128 0x2b
	.byte	0x1b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS21:
	.uleb128 0x9
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0
.LLST21:
	.byte	0x6
	.4byte	.LVL99
	.byte	0x4
	.uleb128 .LVL99-.LVL99
	.uleb128 .LVL100-.LVL99
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL100-.LVL99
	.uleb128 .LFE35-.LVL99
	.uleb128 0x12
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x1f
	.byte	0x9
	.byte	0xf5
	.byte	0x1a
	.byte	0x23
	.uleb128 0xc
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0x7
	.uleb128 0x19
	.uleb128 0x1b
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LFE34-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS12:
	.uleb128 0
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0x38
	.uleb128 0x38
	.uleb128 0x3b
	.uleb128 0x3b
	.uleb128 0
.LLST12:
	.byte	0x6
	.4byte	.LVL70
	.byte	0x4
	.uleb128 .LVL70-.LVL70
	.uleb128 .LVL72-.LVL70
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL72-.LVL70
	.uleb128 .LVL89-.LVL70
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL89-.LVL70
	.uleb128 .LVL92-.LVL70
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL92-.LVL70
	.uleb128 .LFE33-.LVL70
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS13:
	.uleb128 0
	.uleb128 0xd
	.uleb128 0xd
	.uleb128 0x39
	.uleb128 0x39
	.uleb128 0
.LLST13:
	.byte	0x6
	.4byte	.LVL70
	.byte	0x4
	.uleb128 .LVL70-.LVL70
	.uleb128 .LVL71-.LVL70
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL71-.LVL70
	.uleb128 .LVL90-.LVL70
	.uleb128 0x1
	.byte	0x63
	.byte	0x4
	.uleb128 .LVL90-.LVL70
	.uleb128 .LFE33-.LVL70
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x40
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS14:
	.uleb128 0x3
	.uleb128 0x2f
	.uleb128 0x2f
	.uleb128 0x3a
	.uleb128 0x3b
	.uleb128 0
.LLST14:
	.byte	0x6
	.4byte	.LVL70
	.byte	0x4
	.uleb128 .LVL70-.LVL70
	.uleb128 .LVL86-.LVL70
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x4
	.uleb128 .LVL86-.LVL70
	.uleb128 .LVL91-.LVL70
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x28
	.byte	0x4
	.uleb128 .LVL92-.LVL70
	.uleb128 .LFE33-.LVL70
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0
.LVUS8:
	.uleb128 0x8
	.uleb128 0x16
	.uleb128 0x16
	.uleb128 0x30
	.uleb128 0x34
	.uleb128 0x35
	.uleb128 0x38
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL48
	.byte	0x4
	.uleb128 .LVL48-.LVL48
	.uleb128 .LVL57-.LVL48
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL57-.LVL48
	.uleb128 .LVL65-.LVL48
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL66-.LVL48
	.uleb128 .LVL67-.LVL48
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL68-.LVL48
	.uleb128 .LFE32-.LVL48
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS9:
	.uleb128 0x9
	.uleb128 0x13
.LLST9:
	.byte	0x8
	.4byte	.LVL48
	.uleb128 .LVL56-.LVL48
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 0xa
	.uleb128 0x16
.LLST11:
	.byte	0x8
	.4byte	.LVL48
	.uleb128 .LVL57-.LVL48
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0x3d
	.uleb128 0x3d
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL26
	.byte	0x4
	.uleb128 .LVL26-.LVL26
	.uleb128 .LVL28-.LVL26
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL28-.LVL26
	.uleb128 .LVL47-.LVL26
	.uleb128 0x1
	.byte	0x63
	.byte	0x4
	.uleb128 .LVL47-.LVL26
	.uleb128 .LFE31-.LVL26
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 0xa
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0x24
	.uleb128 0x24
	.uleb128 0x26
	.uleb128 0x26
	.uleb128 0x3b
	.uleb128 0x3b
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL27
	.byte	0x4
	.uleb128 .LVL27-.LVL27
	.uleb128 .LVL28-.LVL27
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL28-.LVL27
	.uleb128 .LVL36-.LVL27
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL36-.LVL27
	.uleb128 .LVL37-.LVL27
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL37-.LVL27
	.uleb128 .LVL46-.LVL27
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL46-.LVL27
	.uleb128 .LFE31-.LVL27
	.uleb128 0x2
	.byte	0x32
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 0xa
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0x1c
.LLST4:
	.byte	0x6
	.4byte	.LVL27
	.byte	0x4
	.uleb128 .LVL27-.LVL27
	.uleb128 .LVL28-.LVL27
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL33-.LVL27
	.uleb128 .LVL34-.LVL27
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS5:
	.uleb128 0xa
	.uleb128 0xe
	.uleb128 0x29
	.uleb128 0x2a
.LLST5:
	.byte	0x6
	.4byte	.LVL27
	.byte	0x4
	.uleb128 .LVL27-.LVL27
	.uleb128 .LVL28-.LVL27
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL39-.LVL27
	.uleb128 .LVL40-.LVL27
	.uleb128 0x9
	.byte	0x91
	.sleb128 -38
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 0x9
	.uleb128 0x2f
	.uleb128 0x2f
	.uleb128 0x30
	.uleb128 0x30
	.uleb128 0x32
	.uleb128 0x32
	.uleb128 0x33
	.uleb128 0x33
	.uleb128 0x34
	.uleb128 0x34
	.uleb128 0x36
.LLST6:
	.byte	0x6
	.4byte	.LVL27
	.byte	0x4
	.uleb128 .LVL27-.LVL27
	.uleb128 .LVL41-.LVL27
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x4
	.uleb128 .LVL41-.LVL27
	.uleb128 .LVL41-.LVL27
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x2f
	.byte	0x4
	.uleb128 .LVL41-.LVL27
	.uleb128 .LVL42-.LVL27
	.uleb128 0xc
	.byte	0xa5
	.uleb128 0x2f
	.uleb128 0x39
	.byte	0xa4
	.uleb128 0x39
	.byte	0x4
	.4byte	0x4510e000
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL42-.LVL27
	.uleb128 .LVL43-1-.LVL27
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x2a
	.byte	0x4
	.uleb128 .LVL43-1-.LVL27
	.uleb128 .LVL44-.LVL27
	.uleb128 0x16
	.byte	0x82
	.sleb128 0
	.byte	0xa8
	.uleb128 0x47
	.byte	0xa8
	.uleb128 0x39
	.byte	0x79
	.sleb128 0
	.byte	0xa8
	.uleb128 0x47
	.byte	0xa8
	.uleb128 0x39
	.byte	0x1c
	.byte	0xa4
	.uleb128 0x39
	.byte	0x4
	.4byte	0x4510e000
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL44-.LVL27
	.uleb128 .LVL45-1-.LVL27
	.uleb128 0x6
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x4e
	.byte	0xa8
	.uleb128 0x39
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 0x4
	.uleb128 0x4
	.uleb128 0x5
	.uleb128 0x5
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL4-.LVL3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL4-.LVL3
	.uleb128 .LVL5-1-.LVL3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL5-1-.LVL3
	.uleb128 .LFE27-.LVL3
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0x40
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
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
.LLRL7:
	.byte	0x5
	.4byte	.LBB12
	.byte	0x4
	.uleb128 .LBB12-.LBB12
	.uleb128 .LBE12-.LBB12
	.byte	0x4
	.uleb128 .LBB16-.LBB12
	.uleb128 .LBE16-.LBB12
	.byte	0x4
	.uleb128 .LBB17-.LBB12
	.uleb128 .LBE17-.LBB12
	.byte	0
.LLRL15:
	.byte	0x5
	.4byte	.LBB18
	.byte	0x4
	.uleb128 .LBB18-.LBB18
	.uleb128 .LBE18-.LBB18
	.byte	0x4
	.uleb128 .LBB25-.LBB18
	.uleb128 .LBE25-.LBB18
	.byte	0
.LLRL16:
	.byte	0x5
	.4byte	.LBB19
	.byte	0x4
	.uleb128 .LBB19-.LBB19
	.uleb128 .LBE19-.LBB19
	.byte	0x4
	.uleb128 .LBB23-.LBB19
	.uleb128 .LBE23-.LBB19
	.byte	0x4
	.uleb128 .LBB24-.LBB19
	.uleb128 .LBE24-.LBB19
	.byte	0
.LLRL27:
	.byte	0x5
	.4byte	.LBB28
	.byte	0x4
	.uleb128 .LBB28-.LBB28
	.uleb128 .LBE28-.LBB28
	.byte	0x4
	.uleb128 .LBB31-.LBB28
	.uleb128 .LBE31-.LBB28
	.byte	0
.LLRL43:
	.byte	0x7
	.4byte	.LFB34
	.uleb128 .LFE34-.LFB34
	.byte	0x7
	.4byte	.LFB27
	.uleb128 .LFE27-.LFB27
	.byte	0x7
	.4byte	.LFB28
	.uleb128 .LFE28-.LFB28
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
	.4byte	.LFB35
	.uleb128 .LFE35-.LFB35
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
	.4byte	.LFB42
	.uleb128 .LFE42-.LFB42
	.byte	0x7
	.4byte	.LFB43
	.uleb128 .LFE43-.LFB43
	.byte	0x7
	.4byte	.LFB36
	.uleb128 .LFE36-.LFB36
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
	.4byte	.LASF320
	.4byte	.LASF321
	.4byte	.LASF322
	.4byte	.LASF323
	.4byte	.LASF324
	.4byte	.LASF325
	.4byte	.LASF326
	.4byte	.LASF327
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x12
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF328
	.byte	0x5
	.4byte	.LASF329
	.byte	0x4
	.4byte	.LASF330
	.byte	0x7
	.4byte	.LASF331
	.byte	0x7
	.4byte	.LASF332
	.byte	0x2
	.4byte	.LASF333
	.byte	0x2
	.4byte	.LASF334
	.byte	0x2
	.4byte	.LASF335
	.byte	0x1
	.4byte	.LASF336
	.byte	0x2
	.4byte	.LASF337
	.byte	0x2
	.4byte	.LASF338
	.byte	0x5
	.4byte	.LASF339
	.byte	0x5
	.4byte	.LASF340
	.byte	0x3
	.4byte	.LASF341
	.byte	0x8
	.4byte	.LASF342
	.byte	0x6
	.4byte	.LASF343
	.byte	0x3
	.4byte	.LASF344
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x3
	.sleb128 285
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x1a
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x1a
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x18
	.byte	0x5
	.uleb128 0x49
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x16
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x57
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x6
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x10
	.byte	0x5
	.uleb128 0x1e
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x1e
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x13
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x13
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x6
	.byte	0x12
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x57
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x57
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x20
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE34
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM33
	.byte	0x64
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE27
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM39
	.byte	0x6a
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x5
	.uleb128 0x20
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x1
	.byte	0x5
	.uleb128 0x20
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x5
	.uleb128 0x20
	.byte	0x9
	.2byte	.LM55-.LM54
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0x1
	.byte	0x5
	.uleb128 0x20
	.byte	0x9
	.2byte	.LM57-.LM56
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM58-.LM57
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM59-.LM58
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM60-.LM59
	.byte	0x16
	.byte	0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE28
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM61
	.byte	0xb1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM62-.LM61
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM63-.LM62
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM64-.LM63
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM65-.LM64
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM66-.LM65
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM67-.LM66
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM68-.LM67
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM69-.LM68
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM70-.LM69
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM71-.LM70
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM72-.LM71
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM73-.LM72
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM74-.LM73
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM75-.LM74
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM76-.LM75
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE30
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM77
	.byte	0xc4
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM78-.LM77
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM79-.LM78
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM80-.LM79
	.byte	0x6
	.byte	0x15
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM81-.LM80
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM82-.LM81
	.byte	0x19
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM83-.LM82
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM84-.LM83
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM85-.LM84
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM86-.LM85
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM87-.LM86
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM88-.LM87
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM89-.LM88
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM90-.LM89
	.byte	0x1a
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM91-.LM90
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM92-.LM91
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM93-.LM92
	.byte	0x1
	.byte	0x5
	.uleb128 0x24
	.byte	0x9
	.2byte	.LM94-.LM93
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM95-.LM94
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x24
	.byte	0x9
	.2byte	.LM96-.LM95
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM97-.LM96
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM98-.LM97
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM99-.LM98
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM100-.LM99
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM101-.LM100
	.byte	0x19
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM102-.LM101
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM103-.LM102
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM104-.LM103
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM105-.LM104
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x26
	.byte	0x9
	.2byte	.LM106-.LM105
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM107-.LM106
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x26
	.byte	0x9
	.2byte	.LM108-.LM107
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM109-.LM108
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM110-.LM109
	.byte	0x6
	.byte	0x20
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM111-.LM110
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM112-.LM111
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -29
	.byte	0x1
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM113-.LM112
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM114-.LM113
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM115-.LM114
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM116-.LM115
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM117-.LM116
	.byte	0x21
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM118-.LM117
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM119-.LM118
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM120-.LM119
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x23
	.byte	0x9
	.2byte	.LM121-.LM120
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM122-.LM121
	.byte	0x1a
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM123-.LM122
	.byte	0x14
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM124-.LM123
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM125-.LM124
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM126-.LM125
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM127-.LM126
	.byte	0x1
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM128-.LM127
	.byte	0x1
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM129-.LM128
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM130-.LM129
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM131-.LM130
	.byte	0x1a
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM132-.LM131
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM133-.LM132
	.byte	0x1a
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM134-.LM133
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -31
	.byte	0x1
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM135-.LM134
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM136-.LM135
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x39
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM137-.LM136
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM138-.LM137
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE31
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM139
	.byte	0xf1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM140-.LM139
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM141-.LM140
	.byte	0x3
	.sleb128 -120
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM142-.LM141
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM143-.LM142
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM144-.LM143
	.byte	0x6
	.byte	0x8b
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM145-.LM144
	.byte	0x3
	.sleb128 -116
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM146-.LM145
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM147-.LM146
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM148-.LM147
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM149-.LM148
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM150-.LM149
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM151-.LM150
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM152-.LM151
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM153-.LM152
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM154-.LM153
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM155-.LM154
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM156-.LM155
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM157-.LM156
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM158-.LM157
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM159-.LM158
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xa
	.byte	0x9
	.2byte	.LM160-.LM159
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM161-.LM160
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM162-.LM161
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM163-.LM162
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x5
	.uleb128 0x24
	.byte	0x9
	.2byte	.LM164-.LM163
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM165-.LM164
	.byte	0x1
	.byte	0x5
	.uleb128 0x24
	.byte	0x9
	.2byte	.LM166-.LM165
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM167-.LM166
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM168-.LM167
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM169-.LM168
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM170-.LM169
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM171-.LM170
	.byte	0x19
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM172-.LM171
	.byte	0x1a
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM173-.LM172
	.byte	0x19
	.byte	0x5
	.uleb128 0x25
	.byte	0x9
	.2byte	.LM174-.LM173
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM175-.LM174
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x25
	.byte	0x9
	.2byte	.LM176-.LM175
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM177-.LM176
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM178-.LM177
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM179-.LM178
	.byte	0x18
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM180-.LM179
	.byte	0x18
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM181-.LM180
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM182-.LM181
	.byte	0x19
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM183-.LM182
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM184-.LM183
	.byte	0x1a
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM185-.LM184
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM186-.LM185
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0x3
	.sleb128 -29
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM187-.LM186
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x34
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM188-.LM187
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -29
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM189-.LM188
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x34
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM190-.LM189
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0x3
	.sleb128 -29
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM191-.LM190
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM192-.LM191
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM193-.LM192
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x7c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM194-.LM193
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM195-.LM194
	.byte	0x6
	.byte	0x3
	.sleb128 -82
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM196-.LM195
	.byte	0x19
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM197-.LM196
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM198-.LM197
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE32
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM199
	.byte	0xf7
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM200-.LM199
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM201-.LM200
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM202-.LM201
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM203-.LM202
	.byte	0x6
	.byte	0x13
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM204-.LM203
	.byte	0x1b
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM205-.LM204
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM206-.LM205
	.byte	0x13
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM207-.LM206
	.byte	0x1b
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM208-.LM207
	.byte	0x13
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM209-.LM208
	.byte	0x1b
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM210-.LM209
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM211-.LM210
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM212-.LM211
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM213-.LM212
	.byte	0x16
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM214-.LM213
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM215-.LM214
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM216-.LM215
	.byte	0x6
	.byte	0x28
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM217-.LM216
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM218-.LM217
	.byte	0x12
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM219-.LM218
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM220-.LM219
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM221-.LM220
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM222-.LM221
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM223-.LM222
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM224-.LM223
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM225-.LM224
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM226-.LM225
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM227-.LM226
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM228-.LM227
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM229-.LM228
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -85
	.byte	0x1
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM230-.LM229
	.byte	0x4
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6c
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM231-.LM230
	.byte	0x4
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x3
	.sleb128 -85
	.byte	0x1
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM232-.LM231
	.byte	0x4
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6c
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM233-.LM232
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM234-.LM233
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM235-.LM234
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM236-.LM235
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -88
	.byte	0x1
	.byte	0x5
	.uleb128 0x3a
	.byte	0x9
	.2byte	.LM237-.LM236
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM238-.LM237
	.byte	0x4
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x6d
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM239-.LM238
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x5
	.uleb128 0x6e
	.byte	0x9
	.2byte	.LM240-.LM239
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x5
	.uleb128 0x8b
	.byte	0x9
	.2byte	.LM241-.LM240
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM242-.LM241
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x8
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xcc
	.byte	0x9
	.2byte	.LM243-.LM242
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM244-.LM243
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM245-.LM244
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xb
	.byte	0x9
	.2byte	.LM246-.LM245
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM247-.LM246
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM248-.LM247
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM249-.LM248
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM250-.LM249
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM251-.LM250
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM252-.LM251
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM253-.LM252
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM254-.LM253
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM255-.LM254
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM256-.LM255
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM257-.LM256
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM258-.LM257
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -15
	.byte	0x1
	.byte	0x5
	.uleb128 0x8b
	.byte	0x9
	.2byte	.LM259-.LM258
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM260-.LM259
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM261-.LM260
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM262-.LM261
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM263-.LM262
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x5
	.uleb128 0x63
	.byte	0x9
	.2byte	.LM264-.LM263
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM265-.LM264
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x5
	.uleb128 0x80
	.byte	0x9
	.2byte	.LM266-.LM265
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM267-.LM266
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xce
	.byte	0x9
	.2byte	.LM268-.LM267
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM269-.LM268
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x80
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE33
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM270
	.byte	0x3
	.sleb128 312
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM271-.LM270
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM272-.LM271
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM273-.LM272
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM274-.LM273
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM275-.LM274
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM276-.LM275
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM277-.LM276
	.byte	0x1c
	.byte	0x5
	.uleb128 0x28
	.byte	0x9
	.2byte	.LM278-.LM277
	.byte	0x12
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM279-.LM278
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM280-.LM279
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x28
	.byte	0x9
	.2byte	.LM281-.LM280
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM282-.LM281
	.byte	0x3
	.sleb128 -11
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM283-.LM282
	.byte	0x22
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM284-.LM283
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM285-.LM284
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM286-.LM285
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM287-.LM286
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM288-.LM287
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM289-.LM288
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM290-.LM289
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM291-.LM290
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM292-.LM291
	.byte	0x16
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM293-.LM292
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM294-.LM293
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM295-.LM294
	.byte	0x6
	.byte	0x13
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM296-.LM295
	.byte	0x1b
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM297-.LM296
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM298-.LM297
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM299-.LM298
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM300-.LM299
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE35
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM301
	.byte	0x3
	.sleb128 419
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM302-.LM301
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM303-.LM302
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM304-.LM303
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM305-.LM304
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM306-.LM305
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM307-.LM306
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM308-.LM307
	.byte	0x1a
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM309-.LM308
	.byte	0x42
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM310-.LM309
	.byte	0x3
	.sleb128 -43
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM311-.LM310
	.byte	0x42
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM312-.LM311
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM313-.LM312
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM314-.LM313
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM315-.LM314
	.byte	0x3
	.sleb128 -52
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM316-.LM315
	.byte	0x6
	.byte	0x23
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM317-.LM316
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM318-.LM317
	.byte	0x3
	.sleb128 -12
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM319-.LM318
	.byte	0x23
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM320-.LM319
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM321-.LM320
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM322-.LM321
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM323-.LM322
	.byte	0x6
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM324-.LM323
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM325-.LM324
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM326-.LM325
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM327-.LM326
	.byte	0x6
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM328-.LM327
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM329-.LM328
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM330-.LM329
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM331-.LM330
	.byte	0x6
	.byte	0x1d
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM332-.LM331
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM333-.LM332
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM334-.LM333
	.byte	0x6
	.byte	0x15
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM335-.LM334
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM336-.LM335
	.byte	0x14
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM337-.LM336
	.byte	0x19
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM338-.LM337
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM339-.LM338
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM340-.LM339
	.byte	0x3
	.sleb128 -67
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM341-.LM340
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM342-.LM341
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM343-.LM342
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM344-.LM343
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM345-.LM344
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM346-.LM345
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM347-.LM346
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM348-.LM347
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM349-.LM348
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM350-.LM349
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM351-.LM350
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM352-.LM351
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM353-.LM352
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x23
	.byte	0x9
	.2byte	.LM354-.LM353
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM355-.LM354
	.byte	0x18
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM356-.LM355
	.byte	0x14
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM357-.LM356
	.byte	0x1a
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM358-.LM357
	.byte	0x1c
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM359-.LM358
	.byte	0xf
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM360-.LM359
	.byte	0x18
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM361-.LM360
	.byte	0x1e
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM362-.LM361
	.byte	0x15
	.byte	0x5
	.uleb128 0x27
	.byte	0x9
	.2byte	.LM363-.LM362
	.byte	0x11
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM364-.LM363
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM365-.LM364
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM366-.LM365
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM367-.LM366
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM368-.LM367
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM369-.LM368
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM370-.LM369
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM371-.LM370
	.byte	0x44
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM372-.LM371
	.byte	0x3
	.sleb128 -47
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM373-.LM372
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM374-.LM373
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM375-.LM374
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM376-.LM375
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM377-.LM376
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM378-.LM377
	.byte	0x6
	.byte	0x42
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM379-.LM378
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM380-.LM379
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM381-.LM380
	.byte	0x6
	.byte	0x1e
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM382-.LM381
	.byte	0x10
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM383-.LM382
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM384-.LM383
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM385-.LM384
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM386-.LM385
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM387-.LM386
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM388-.LM387
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM389-.LM388
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM390-.LM389
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM391-.LM390
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM392-.LM391
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM393-.LM392
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM394-.LM393
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM395-.LM394
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM396-.LM395
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM397-.LM396
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE38
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM398
	.byte	0x3
	.sleb128 474
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM399-.LM398
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM400-.LM399
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM401-.LM400
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM402-.LM401
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM403-.LM402
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM404-.LM403
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM405-.LM404
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM406-.LM405
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM407-.LM406
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM408-.LM407
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM409-.LM408
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM410-.LM409
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE39
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM411
	.byte	0x3
	.sleb128 487
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM412-.LM411
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM413-.LM412
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM414-.LM413
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM415-.LM414
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM416-.LM415
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM417-.LM416
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM418-.LM417
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM419-.LM418
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE40
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM420
	.byte	0x3
	.sleb128 506
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM421-.LM420
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM422-.LM421
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM423-.LM422
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM424-.LM423
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM425-.LM424
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM426-.LM425
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x24
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM427-.LM426
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM428-.LM427
	.byte	0x6
	.byte	0x3
	.sleb128 -13
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM429-.LM428
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM430-.LM429
	.byte	0x1
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM431-.LM430
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM432-.LM431
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM433-.LM432
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM434-.LM433
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM435-.LM434
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM436-.LM435
	.byte	0x3
	.sleb128 -21
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM437-.LM436
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM438-.LM437
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM439-.LM438
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM440-.LM439
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM441-.LM440
	.byte	0x6
	.byte	0x15
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM442-.LM441
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM443-.LM442
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM444-.LM443
	.byte	0x6
	.byte	0x29
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM445-.LM444
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x18
	.byte	0x9
	.2byte	.LM446-.LM445
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0xf
	.byte	0x5
	.uleb128 0x21
	.byte	0x9
	.2byte	.LM447-.LM446
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE42
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM448
	.byte	0x3
	.sleb128 527
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM449-.LM448
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM450-.LM449
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM451-.LM450
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM452-.LM451
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM453-.LM452
	.byte	0x14
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM454-.LM453
	.byte	0x33
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE43
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM455
	.byte	0x3
	.sleb128 339
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM456-.LM455
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM457-.LM456
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM458-.LM457
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM459-.LM458
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM460-.LM459
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM461-.LM460
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM462-.LM461
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM463-.LM462
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM464-.LM463
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM465-.LM464
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM466-.LM465
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM467-.LM466
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM468-.LM467
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM469-.LM468
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM470-.LM469
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM471-.LM470
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM472-.LM471
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM473-.LM472
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM474-.LM473
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM475-.LM474
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM476-.LM475
	.byte	0x6
	.byte	0x3
	.sleb128 -12
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM477-.LM476
	.byte	0xe
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM478-.LM477
	.byte	0x20
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM479-.LM478
	.byte	0x1f
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM480-.LM479
	.byte	0x3
	.sleb128 -17
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM481-.LM480
	.byte	0x28
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM482-.LM481
	.byte	0x3
	.sleb128 -17
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM483-.LM482
	.byte	0x24
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM484-.LM483
	.byte	0x1f
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM485-.LM484
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM486-.LM485
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM487-.LM486
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM488-.LM487
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM489-.LM488
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM490-.LM489
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM491-.LM490
	.byte	0x1a
	.byte	0x5
	.uleb128 0x22
	.byte	0x9
	.2byte	.LM492-.LM491
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x15
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM493-.LM492
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM494-.LM493
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x22
	.byte	0x9
	.2byte	.LM495-.LM494
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM496-.LM495
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x22
	.byte	0x9
	.2byte	.LM497-.LM496
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.byte	0x6
	.byte	0x15
	.byte	0x5
	.uleb128 0x1e
	.byte	0x9
	.2byte	.LM498-.LM497
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM499-.LM498
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x23
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM500-.LM499
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM501-.LM500
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM502-.LM501
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM503-.LM502
	.byte	0x15
	.byte	0x5
	.uleb128 0x20
	.byte	0x9
	.2byte	.LM504-.LM503
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM505-.LM504
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM506-.LM505
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM507-.LM506
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM508-.LM507
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM509-.LM508
	.byte	0x6
	.byte	0x3
	.sleb128 -12
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM510-.LM509
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM511-.LM510
	.byte	0x1a
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM512-.LM511
	.byte	0x14
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM513-.LM512
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM514-.LM513
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1e
	.byte	0x9
	.2byte	.LM515-.LM514
	.byte	0x16
	.byte	0x5
	.uleb128 0x1e
	.byte	0x9
	.2byte	.LM516-.LM515
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM517-.LM516
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1e
	.byte	0x9
	.2byte	.LM518-.LM517
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM519-.LM518
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE36
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF165:
	.string	"ADC_PGA_GAIN_32"
.LASF23:
	.string	"ERROR"
.LASF68:
	.string	"GLB_ADC_CLK_96M"
.LASF216:
	.string	"ADC_FIFO_THRESHOLD_16"
.LASF287:
	.string	"chan"
.LASF14:
	.string	"char"
.LASF290:
	.string	"pos_chlist_single"
.LASF179:
	.string	"ADC_PGA_VCM_Type"
.LASF56:
	.string	"GLB_GPIO_Type"
.LASF107:
	.string	"srcDmaAddr"
.LASF274:
	.string	"raw_flag"
.LASF242:
	.string	"DMA_LLI_Init"
.LASF64:
	.string	"GPIO_FUN_ANALOG"
.LASF177:
	.string	"ADC_PGA_VCM_1P4V"
.LASF238:
	.string	"GLB_GPIO_Func_Init"
.LASF183:
	.string	"ADC_VREF_3P2V"
.LASF219:
	.string	"dmaEn"
.LASF203:
	.string	"inputMode"
.LASF60:
	.string	"GPIO_FUN_I2C"
.LASF153:
	.string	"ADC_CLK_DIV_12"
.LASF154:
	.string	"ADC_CLK_DIV_16"
.LASF292:
	.string	"adc_fifo_cfg"
.LASF241:
	.string	"DMA_LLI_Update"
.LASF314:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF147:
	.string	"ADC_V11_SEL_1P18V"
.LASF263:
	.string	"ADC_Read_FIFO"
.LASF226:
	.string	"mode"
.LASF70:
	.string	"GLB_ADC_CLK_Type"
.LASF319:
	.string	"__builtin_memcpy"
.LASF284:
	.string	"pstctx"
.LASF101:
	.string	"DMA_REQ_NONE"
.LASF106:
	.string	"DMA_INT_Type"
.LASF270:
	.string	"bl_adc_parse_data"
.LASF135:
	.string	"ADC_CHAN_SENP2"
.LASF17:
	.string	"int16_t"
.LASF293:
	.string	"bl_adc_freq_init"
.LASF296:
	.string	"mode_freq"
.LASF155:
	.string	"ADC_CLK_DIV_20"
.LASF264:
	.string	"ADC_Get_FIFO_Count"
.LASF156:
	.string	"ADC_CLK_DIV_24"
.LASF186:
	.string	"ADC_INPUT_SINGLE_END"
.LASF187:
	.string	"ADC_INPUT_DIFF"
.LASF280:
	.string	"pstlli"
.LASF71:
	.string	"TransferSize"
.LASF118:
	.string	"ADC_CHAN3"
.LASF59:
	.string	"GPIO_FUN_SPI"
.LASF61:
	.string	"GPIO_FUN_UART"
.LASF295:
	.string	"source_freq"
.LASF178:
	.string	"ADC_PGA_VCM_1P6V"
.LASF25:
	.string	"BL_Err_Type"
.LASF21:
	.string	"uint32_t"
.LASF16:
	.string	"int8_t"
.LASF188:
	.string	"ADC_SIG_INPUT_Type"
.LASF125:
	.string	"ADC_CHAN10"
.LASF277:
	.string	"bl_adc_start"
.LASF113:
	.string	"dstPeriph"
.LASF109:
	.string	"nextLLI"
.LASF4:
	.string	"float"
.LASF306:
	.string	"test_adc_init"
.LASF137:
	.string	"ADC_CHAN_SENP0"
.LASF136:
	.string	"ADC_CHAN_SENP1"
.LASF206:
	.string	"offsetCalibVal"
.LASF134:
	.string	"ADC_CHAN_SENP3"
.LASF248:
	.string	"bl_printk"
.LASF237:
	.string	"DMA_IntMask"
.LASF157:
	.string	"ADC_CLK_DIV_32"
.LASF303:
	.string	"result"
.LASF3:
	.string	"long long unsigned int"
.LASF250:
	.string	"xTaskGetTickCountFromISR"
.LASF272:
	.string	"parr"
.LASF66:
	.string	"GPIO_FUN_JTAG"
.LASF138:
	.string	"ADC_CHAN_GND"
.LASF174:
	.string	"ADC_CHOP_MOD_Type"
.LASF257:
	.string	"ADC_Init"
.LASF103:
	.string	"DMA_INT_TCOMPLETED"
.LASF108:
	.string	"destDmaAddr"
.LASF99:
	.string	"DMA_REQ_GPADC0"
.LASF100:
	.string	"DMA_REQ_GPADC1"
.LASF24:
	.string	"TIMEOUT"
.LASF80:
	.string	"DMA_TRNS_WIDTH_16BITS"
.LASF261:
	.string	"ADC_Reset"
.LASF244:
	.string	"pvPortMalloc"
.LASF304:
	.string	"regVal"
.LASF77:
	.string	"reserved_25"
.LASF266:
	.string	"ADC_Start"
.LASF210:
	.string	"value"
.LASF88:
	.string	"DMA_BURST_SIZE_4"
.LASF232:
	.string	"adc_ctx_t"
.LASF233:
	.string	"TrapNetCounter"
.LASF252:
	.string	"ADC_Parse_Result"
.LASF142:
	.string	"ADC_V18_SEL_1P82V"
.LASF231:
	.string	"data_size"
.LASF15:
	.string	"size_t"
.LASF161:
	.string	"ADC_PGA_GAIN_2"
.LASF75:
	.string	"DWidth"
.LASF315:
	.string	"adc_calc_data"
.LASF78:
	.string	"Prot"
.LASF47:
	.string	"GLB_GPIO_PIN_15"
.LASF149:
	.string	"ADC_V11_SEL_Type"
.LASF51:
	.string	"GLB_GPIO_PIN_19"
.LASF145:
	.string	"ADC_V11_SEL_1P0V"
.LASF294:
	.string	"freq"
.LASF312:
	.string	"__divdf3"
.LASF271:
	.string	"gpio_num"
.LASF74:
	.string	"SWidth"
.LASF72:
	.string	"SBSize"
.LASF313:
	.string	"__truncdfsf2"
.LASF148:
	.string	"ADC_V11_SEL_1P26V"
.LASF150:
	.string	"ADC_CLK_DIV_1"
.LASF158:
	.string	"ADC_CLK_Type"
.LASF301:
	.string	"test_adc_test"
.LASF93:
	.string	"DMA_REQ_UART1_RX"
.LASF152:
	.string	"ADC_CLK_DIV_8"
.LASF208:
	.string	"posChan"
.LASF22:
	.string	"SUCCESS"
.LASF249:
	.string	"xTaskGetTickCount"
.LASF26:
	.string	"DISABLE"
.LASF194:
	.string	"ADC_Data_Width_Type"
.LASF159:
	.string	"ADC_PGA_GAIN_NONE"
.LASF285:
	.string	"dma_ctrl_reg"
.LASF146:
	.string	"ADC_V11_SEL_1P1V"
.LASF256:
	.string	"ADC_Channel_Config"
.LASF67:
	.string	"GLB_GPIO_FUNC_Type"
.LASF73:
	.string	"DBSize"
.LASF184:
	.string	"ADC_VREF_2V"
.LASF302:
	.string	"test_adc_get"
.LASF2:
	.string	"unsigned int"
.LASF58:
	.string	"GPIO_FUN_FLASH"
.LASF281:
	.string	"llibuf"
.LASF19:
	.string	"uint8_t"
.LASF225:
	.string	"adc_ctx"
.LASF62:
	.string	"GPIO_FUN_PWM"
.LASF160:
	.string	"ADC_PGA_GAIN_1"
.LASF65:
	.string	"GPIO_FUN_SWGPIO"
.LASF29:
	.string	"UNMASK"
.LASF162:
	.string	"ADC_PGA_GAIN_4"
.LASF207:
	.string	"ADC_CFG_Type"
.LASF163:
	.string	"ADC_PGA_GAIN_8"
.LASF204:
	.string	"resWidth"
.LASF115:
	.string	"ADC_CHAN0"
.LASF116:
	.string	"ADC_CHAN1"
.LASF117:
	.string	"ADC_CHAN2"
.LASF185:
	.string	"ADC_VREF_Type"
.LASF119:
	.string	"ADC_CHAN4"
.LASF120:
	.string	"ADC_CHAN5"
.LASF121:
	.string	"ADC_CHAN6"
.LASF122:
	.string	"ADC_CHAN7"
.LASF123:
	.string	"ADC_CHAN8"
.LASF124:
	.string	"ADC_CHAN9"
.LASF202:
	.string	"vref"
.LASF228:
	.string	"adc_lli"
.LASF308:
	.string	"ADC_tsen_case"
.LASF279:
	.string	"data_num"
.LASF63:
	.string	"GPIO_FUN_EXT_PA"
.LASF12:
	.string	"long long int"
.LASF193:
	.string	"ADC_DATA_WIDTH_16_WITH_256_AVERAGE"
.LASF246:
	.string	"printf"
.LASF197:
	.string	"clkDiv"
.LASF190:
	.string	"ADC_DATA_WIDTH_14_WITH_16_AVERAGE"
.LASF229:
	.string	"lli_flag"
.LASF236:
	.string	"DMA_Channel_Enable"
.LASF258:
	.string	"DMA_Enable"
.LASF102:
	.string	"DMA_Periph_Req_Type"
.LASF251:
	.string	"ADC_Trim_TSEN"
.LASF243:
	.string	"DMA_Channel_Disable"
.LASF221:
	.string	"BaseType_t"
.LASF140:
	.string	"ADC_V18_SEL_1P62V"
.LASF297:
	.string	"bl_tsen_adc_get"
.LASF224:
	.string	"DMA_Control_Reg"
.LASF192:
	.string	"ADC_DATA_WIDTH_16_WITH_128_AVERAGE"
.LASF94:
	.string	"DMA_REQ_UART1_TX"
.LASF316:
	.string	"adc_data_update"
.LASF127:
	.string	"ADC_CHAN_DAC_OUTA"
.LASF128:
	.string	"ADC_CHAN_DAC_OUTB"
.LASF129:
	.string	"ADC_CHAN_TSEN_P"
.LASF112:
	.string	"srcPeriph"
.LASF168:
	.string	"ADC_BIAS_SEL_AON_BANDGAP"
.LASF311:
	.string	"__extendsfdf2"
.LASF317:
	.string	"xPortIsInsideInterrupt"
.LASF42:
	.string	"GLB_GPIO_PIN_10"
.LASF43:
	.string	"GLB_GPIO_PIN_11"
.LASF44:
	.string	"GLB_GPIO_PIN_12"
.LASF45:
	.string	"GLB_GPIO_PIN_13"
.LASF46:
	.string	"GLB_GPIO_PIN_14"
.LASF289:
	.string	"adccfg"
.LASF48:
	.string	"GLB_GPIO_PIN_16"
.LASF49:
	.string	"GLB_GPIO_PIN_17"
.LASF50:
	.string	"GLB_GPIO_PIN_18"
.LASF191:
	.string	"ADC_DATA_WIDTH_16_WITH_64_AVERAGE"
.LASF254:
	.string	"ADC_FIFO_Cfg"
.LASF172:
	.string	"ADC_CHOP_MOD_AZ_PGA_ON"
.LASF222:
	.string	"TickType_t"
.LASF173:
	.string	"ADC_CHOP_MOD_AZ_PGA_RPC_ON"
.LASF275:
	.string	"data"
.LASF189:
	.string	"ADC_DATA_WIDTH_12"
.LASF144:
	.string	"ADC_V18_SEL_Type"
.LASF13:
	.string	"long double"
.LASF57:
	.string	"GPIO_FUN_SDIO"
.LASF20:
	.string	"uint16_t"
.LASF200:
	.string	"chopMode"
.LASF111:
	.string	"DMA_LLI_Ctrl_Type"
.LASF114:
	.string	"DMA_LLI_Cfg_Type"
.LASF273:
	.string	"channel"
.LASF69:
	.string	"GLB_ADC_CLK_XCLK"
.LASF52:
	.string	"GLB_GPIO_PIN_20"
.LASF53:
	.string	"GLB_GPIO_PIN_21"
.LASF54:
	.string	"GLB_GPIO_PIN_22"
.LASF151:
	.string	"ADC_CLK_DIV_4"
.LASF205:
	.string	"offsetCalibEn"
.LASF79:
	.string	"DMA_TRNS_WIDTH_8BITS"
.LASF278:
	.string	"bl_adc_dma_init"
.LASF8:
	.string	"short int"
.LASF310:
	.string	"ADC_Clock_Init"
.LASF10:
	.string	"long int"
.LASF82:
	.string	"DMA_TRNS_M2M"
.LASF83:
	.string	"DMA_TRNS_M2P"
.LASF32:
	.string	"GLB_GPIO_PIN_0"
.LASF33:
	.string	"GLB_GPIO_PIN_1"
.LASF34:
	.string	"GLB_GPIO_PIN_2"
.LASF35:
	.string	"GLB_GPIO_PIN_3"
.LASF36:
	.string	"GLB_GPIO_PIN_4"
.LASF37:
	.string	"GLB_GPIO_PIN_5"
.LASF38:
	.string	"GLB_GPIO_PIN_6"
.LASF39:
	.string	"GLB_GPIO_PIN_7"
.LASF40:
	.string	"GLB_GPIO_PIN_8"
.LASF41:
	.string	"GLB_GPIO_PIN_9"
.LASF298:
	.string	"temp"
.LASF291:
	.string	"neg_chlist_single"
.LASF143:
	.string	"ADC_V18_SEL_1P92V"
.LASF180:
	.string	"ADC_TSEN_MOD_INTERNAL_DIODE"
.LASF110:
	.string	"dmaCtrl"
.LASF212:
	.string	"ADC_Result_Type"
.LASF288:
	.string	"channel_num"
.LASF262:
	.string	"ADC_SET_TSVBE_HIGH"
.LASF141:
	.string	"ADC_V18_SEL_1P72V"
.LASF182:
	.string	"ADC_TSEN_MOD_Type"
.LASF30:
	.string	"MASK"
.LASF300:
	.string	"tsen_offset"
.LASF130:
	.string	"ADC_CHAN_TSEN_N"
.LASF181:
	.string	"ADC_TSEN_MOD_EXTERNAL_DIODE"
.LASF169:
	.string	"ADC_BIAS_SEL_Type"
.LASF167:
	.string	"ADC_BIAS_SEL_MAIN_BANDGAP"
.LASF286:
	.string	"bl_adc_init"
.LASF126:
	.string	"ADC_CHAN11"
.LASF230:
	.string	"chan_init_table"
.LASF211:
	.string	"volt"
.LASF217:
	.string	"ADC_FIFO_Threshold_Type"
.LASF133:
	.string	"ADC_CHAN_VABT_HALF"
.LASF171:
	.string	"ADC_CHOP_MOD_AZ_ON"
.LASF27:
	.string	"ENABLE"
.LASF87:
	.string	"DMA_BURST_SIZE_1"
.LASF95:
	.string	"DMA_REQ_I2C_RX"
.LASF11:
	.string	"long unsigned int"
.LASF104:
	.string	"DMA_INT_ERR"
.LASF196:
	.string	"v11Sel"
.LASF268:
	.string	"GLB_Set_ADC_CLK"
.LASF89:
	.string	"DMA_BURST_SIZE_8"
.LASF31:
	.string	"BL_Mask_Type"
.LASF18:
	.string	"int32_t"
.LASF105:
	.string	"DMA_INT_ALL"
.LASF253:
	.string	"aos_msleep"
.LASF166:
	.string	"ADC_PGA_GAIN_Type"
.LASF28:
	.string	"BL_Fun_Type"
.LASF139:
	.string	"ADC_Chan_Type"
.LASF255:
	.string	"ADC_Tsen_Init"
.LASF265:
	.string	"BL602_Delay_MS"
.LASF91:
	.string	"DMA_REQ_UART0_RX"
.LASF195:
	.string	"v18Sel"
.LASF5:
	.string	"unsigned char"
.LASF220:
	.string	"ADC_FIFO_Cfg_Type"
.LASF131:
	.string	"ADC_CHAN_VREF"
.LASF267:
	.string	"ADC_SET_TSVBE_LOW"
.LASF90:
	.string	"DMA_BURST_SIZE_16"
.LASF283:
	.string	"llicfg"
.LASF164:
	.string	"ADC_PGA_GAIN_16"
.LASF55:
	.string	"GLB_GPIO_PIN_MAX"
.LASF247:
	.string	"TSEN_Get_Temp"
.LASF223:
	.string	"bl_adc_cb_t"
.LASF282:
	.string	"adc_pin"
.LASF84:
	.string	"DMA_TRNS_P2M"
.LASF85:
	.string	"DMA_TRNS_P2P"
.LASF260:
	.string	"ADC_Disable"
.LASF86:
	.string	"DMA_Trans_Dir_Type"
.LASF235:
	.string	"adcFifoCfg"
.LASF201:
	.string	"biasSel"
.LASF234:
	.string	"adcCfg"
.LASF227:
	.string	"channel_data"
.LASF276:
	.string	"bl_adc_gpio_init"
.LASF209:
	.string	"negChan"
.LASF245:
	.string	"ADC_Scan_Channel_Config"
.LASF7:
	.string	"signed char"
.LASF9:
	.string	"short unsigned int"
.LASF96:
	.string	"DMA_REQ_I2C_TX"
.LASF299:
	.string	"log_flag"
.LASF307:
	.string	"adc_dma_lli_init"
.LASF318:
	.string	"memcpy"
.LASF269:
	.string	"bl_adc_get_channel_by_gpio"
.LASF198:
	.string	"gain1"
.LASF199:
	.string	"gain2"
.LASF132:
	.string	"ADC_CHAN_DCTEST"
.LASF309:
	.string	"TSEN_Calibration"
.LASF6:
	.string	"double"
.LASF81:
	.string	"DMA_TRNS_WIDTH_32BITS"
.LASF176:
	.string	"ADC_PGA_VCM_1P2V"
.LASF92:
	.string	"DMA_REQ_UART0_TX"
.LASF76:
	.string	"SLargerD"
.LASF213:
	.string	"ADC_FIFO_THRESHOLD_1"
.LASF214:
	.string	"ADC_FIFO_THRESHOLD_4"
.LASF215:
	.string	"ADC_FIFO_THRESHOLD_8"
.LASF170:
	.string	"ADC_CHOP_MOD_ALL_OFF"
.LASF97:
	.string	"DMA_REQ_SPI_RX"
.LASF239:
	.string	"bl_dma_find_ctx_by_channel"
.LASF218:
	.string	"fifoThreshold"
.LASF175:
	.string	"ADC_PGA_VCM_1V"
.LASF98:
	.string	"DMA_REQ_SPI_TX"
.LASF305:
	.string	"v_error"
.LASF240:
	.string	"bl_dma_irq_register"
.LASF259:
	.string	"ADC_Enable"
	.section	.debug_line_str,"MS",@progbits,1
.LASF328:
	.string	"bl_adc.c"
.LASF337:
	.string	"bl602_adc.h"
.LASF335:
	.string	"dma_reg.h"
.LASF327:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include"
.LASF336:
	.string	"bl602_dma.h"
.LASF338:
	.string	"bl_adc.h"
.LASF322:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/include"
.LASF333:
	.string	"bl602_gpio.h"
.LASF334:
	.string	"bl602_glb.h"
.LASF340:
	.string	"portable.h"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_adc.c"
.LASF342:
	.string	"utils_log.h"
.LASF343:
	.string	"task.h"
.LASF344:
	.string	"<built-in>"
.LASF325:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/utils/include"
.LASF324:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal"
.LASF341:
	.string	"stdio.h"
.LASF321:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc"
.LASF320:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals"
.LASF329:
	.string	"portmacro.h"
.LASF339:
	.string	"bl_dma.h"
.LASF330:
	.string	"stddef.h"
.LASF331:
	.string	"stdint-gcc.h"
.LASF326:
	.string	"/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF332:
	.string	"bl602_common.h"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/hal_drv"
.LASF323:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V"
	.globl	__truncdfsf2
	.globl	__divdf3
	.globl	__extendsfdf2
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
