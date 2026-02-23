	.file	"bl602_adc.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std" "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c"
	.section	.bss.adcIntCbfArra,"aw",@nobits
	.align	2
	.type	adcIntCbfArra, @object
	.size	adcIntCbfArra, 20
adcIntCbfArra:
	.zero	20
	.section	.sdata.adcGainCoeffCal,"aw"
	.align	2
	.type	adcGainCoeffCal, @object
	.size	adcGainCoeffCal, 8
adcGainCoeffCal:
	.byte	0
	.zero	1
	.half	0
	.word	1065353216
	.section	.text.ADC_Reset,"ax",@progbits
	.align	1
	.globl	ADC_Reset
	.type	ADC_Reset, @function
ADC_Reset:
.LFB8:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c"
	.loc 1 107 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 111 13
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 111 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 112 7
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 112 74
	lw	a4,-20(s0)
	ori	a4,a4,4
	.loc 1 112 61
	sw	a4,0(a5)
	.loc 1 113 6
 #APP
# 113 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 113 29
# 113 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 113 52
# 113 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 113 75
# 113 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 113 98
# 113 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 113 121
# 113 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 113 144
# 113 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 113 167
# 113 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 114 7
 #NO_APP
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 114 74
	lw	a4,-20(s0)
	andi	a4,a4,-5
	.loc 1 114 61
	sw	a4,0(a5)
	.loc 1 115 1
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
	.size	ADC_Reset, .-ADC_Reset
	.section	.text.ADC_Enable,"ax",@progbits
	.align	1
	.globl	ADC_Enable
	.type	ADC_Enable, @function
ADC_Enable:
.LFB9:
	.loc 1 126 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 129 13
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 129 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 130 11
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 131 7
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 131 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 132 1
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
	.size	ADC_Enable, .-ADC_Enable
	.section	.text.ADC_Disable,"ax",@progbits
	.align	1
	.globl	ADC_Disable
	.type	ADC_Disable, @function
ADC_Disable:
.LFB10:
	.loc 1 143 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 146 13
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 146 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 147 11
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
	.loc 1 148 7
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 148 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 149 1
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
.LFE10:
	.size	ADC_Disable, .-ADC_Disable
	.section	.text.ADC_Init,"ax",@progbits
	.align	1
	.globl	ADC_Init
	.type	ADC_Init, @function
ADC_Init:
.LFB11:
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
	sw	a0,-36(s0)
	.loc 1 179 14
	li	a5,1073807360
	addi	a5,a5,-1776
	.loc 1 179 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 180 25
	lw	a4,-24(s0)
	li	a5,-1610612736
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 180 71
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 180 80
	slli	a5,a5,29
	.loc 1 180 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 181 25
	lw	a4,-24(s0)
	li	a5,-402653184
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 181 71
	lw	a5,-36(s0)
	lbu	a5,1(a5)
	.loc 1 181 80
	slli	a5,a5,27
	.loc 1 181 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 182 12
	lw	a4,-24(s0)
	li	a5,-67108864
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 183 12
	lw	a4,-24(s0)
	li	a5,-33554432
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 184 12
	lw	a4,-24(s0)
	li	a5,-31457280
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 185 25
	lw	a4,-24(s0)
	li	a5,-1835008
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 185 71
	lw	a5,-36(s0)
	lbu	a5,2(a5)
	.loc 1 185 80
	slli	a5,a5,18
	.loc 1 185 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 186 12
	lw	a4,-24(s0)
	li	a5,-131072
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 187 25
	lw	a5,-24(s0)
	andi	a5,a5,-2
	.loc 1 187 70
	lw	a4,-36(s0)
	lbu	a4,11(a4)
	.loc 1 187 12
	or	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 188 25
	lw	a5,-24(s0)
	andi	a4,a5,-29
	.loc 1 188 70
	lw	a5,-36(s0)
	lbu	a5,10(a5)
	.loc 1 188 81
	slli	a5,a5,2
	.loc 1 188 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 189 7
	li	a5,1073807360
	addi	a5,a5,-1776
	.loc 1 189 61
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 190 6
 #APP
# 190 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 190 29
# 190 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 190 52
# 190 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 190 75
# 190 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 190 98
# 190 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 190 121
# 190 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 190 144
# 190 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 190 167
# 190 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 193 14
 #NO_APP
	li	a5,1073807360
	addi	a5,a5,-1772
	.loc 1 193 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 194 12
	lw	a4,-20(s0)
	li	a5,-1879048192
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 195 25
	lw	a4,-20(s0)
	li	a5,-234881024
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 195 71
	lw	a5,-36(s0)
	lbu	a5,3(a5)
	.loc 1 195 79
	slli	a5,a5,25
	.loc 1 195 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 196 25
	lw	a4,-20(s0)
	li	a5,-29360128
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 196 71
	lw	a5,-36(s0)
	lbu	a5,4(a5)
	.loc 1 196 79
	slli	a5,a5,22
	.loc 1 196 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 197 25
	lw	a4,-20(s0)
	li	a5,-131072
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 197 71
	lw	a5,-36(s0)
	lbu	a5,6(a5)
	.loc 1 197 81
	slli	a5,a5,17
	.loc 1 197 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 200 12
	lw	a5,-36(s0)
	lbu	a5,3(a5)
	.loc 1 200 7
	bne	a5,zero,.L5
	.loc 1 200 45 discriminator 1
	lw	a5,-36(s0)
	lbu	a5,4(a5)
	.loc 1 200 39 discriminator 1
	beq	a5,zero,.L6
.L5:
	.loc 1 201 29
	lw	a4,-20(s0)
	li	a5,-98304
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 201 16
	li	a5,65536
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L7
.L6:
	.loc 1 203 29
	lw	a4,-20(s0)
	li	a5,-98304
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 203 16
	li	a5,32768
	or	a5,a4,a5
	sw	a5,-20(s0)
.L7:
	.loc 1 206 12
	lw	a4,-20(s0)
	li	a5,-16384
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 207 12
	lw	a5,-36(s0)
	lbu	a5,3(a5)
	.loc 1 207 7
	bne	a5,zero,.L8
	.loc 1 207 45 discriminator 1
	lw	a5,-36(s0)
	lbu	a5,4(a5)
	.loc 1 207 39 discriminator 1
	beq	a5,zero,.L9
.L8:
	.loc 1 208 16
	lw	a4,-20(s0)
	li	a5,8192
	or	a5,a4,a5
	sw	a5,-20(s0)
	j	.L10
.L9:
	.loc 1 210 16
	lw	a4,-20(s0)
	li	a5,-8192
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
.L10:
	.loc 1 213 25
	lw	a4,-20(s0)
	li	a5,-8192
	addi	a5,a5,511
	and	a4,a4,a5
	.loc 1 213 12
	li	a5,4096
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 214 25
	lw	a5,-20(s0)
	andi	a4,a5,-385
	.loc 1 214 70
	lw	a5,-36(s0)
	lbu	a5,7(a5)
	.loc 1 214 76
	slli	a5,a5,7
	.loc 1 214 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 215 25
	lw	a5,-20(s0)
	andi	a4,a5,-9
	.loc 1 215 70
	lw	a5,-36(s0)
	lbu	a5,8(a5)
	.loc 1 215 77
	slli	a5,a5,3
	.loc 1 215 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 216 25
	lw	a5,-20(s0)
	andi	a4,a5,-5
	.loc 1 216 70
	lw	a5,-36(s0)
	lbu	a5,9(a5)
	.loc 1 216 82
	slli	a5,a5,2
	.loc 1 216 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 218 7
	li	a5,1073807360
	addi	a5,a5,-1772
	.loc 1 218 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 221 15
	li	a5,1073807360
	addi	a5,a5,-1736
	.loc 1 221 13
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 222 27
	lw	a4,-28(s0)
	li	a5,-65536
	and	a5,a4,a5
	.loc 1 222 73
	lw	a4,-36(s0)
	lh	a4,12(a4)
	.loc 1 222 13
	or	a5,a5,a4
	sw	a5,-28(s0)
	.loc 1 223 7
	li	a5,1073807360
	addi	a5,a5,-1736
	.loc 1 223 61
	lw	a4,-28(s0)
	sw	a4,0(a5)
	.loc 1 229 5
	call	ADC_Gain_Trim
	.loc 1 230 1
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
	.size	ADC_Init, .-ADC_Init
	.section	.text.ADC_Channel_Config,"ax",@progbits
	.align	1
	.globl	ADC_Channel_Config
	.type	ADC_Channel_Config, @function
ADC_Channel_Config:
.LFB12:
	.loc 1 243 1
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
	mv	a3,a1
	mv	a4,a2
	sb	a5,-33(s0)
	mv	a5,a3
	sb	a5,-34(s0)
	mv	a5,a4
	sb	a5,-35(s0)
	.loc 1 251 13
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 251 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 252 23
	lw	a4,-20(s0)
	li	a5,-8192
	addi	a5,a5,255
	and	a4,a4,a5
	.loc 1 252 54
	lbu	a5,-33(s0)
	.loc 1 252 71
	slli	a5,a5,8
	.loc 1 252 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 253 23
	lw	a5,-20(s0)
	andi	a4,a5,-249
	.loc 1 253 54
	lbu	a5,-34(s0)
	.loc 1 253 71
	slli	a5,a5,3
	.loc 1 253 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 254 7
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 254 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 257 14
	li	a5,1073807360
	addi	a5,a5,-1776
	.loc 1 257 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 258 25
	lw	a5,-24(s0)
	andi	a4,a5,-3
	.loc 1 258 56
	lbu	a5,-35(s0)
	.loc 1 258 74
	slli	a5,a5,1
	.loc 1 258 12
	or	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 259 12
	lw	a4,-24(s0)
	li	a5,-33554432
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 260 7
	li	a5,1073807360
	addi	a5,a5,-1776
	.loc 1 260 61
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 262 1
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
	.size	ADC_Channel_Config, .-ADC_Channel_Config
	.section	.text.ADC_Scan_Channel_Config,"ax",@progbits
	.align	1
	.globl	ADC_Scan_Channel_Config
	.type	ADC_Scan_Channel_Config, @function
ADC_Scan_Channel_Config:
.LFB13:
	.loc 1 276 1
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
	mv	a5,a2
	mv	a4,a3
	sb	a5,-41(s0)
	mv	a5,a4
	sb	a5,-42(s0)
	.loc 1 283 12
	li	a5,6
	sw	a5,-28(s0)
	.loc 1 284 18
	lbu	a5,-41(s0)
	.loc 1 284 7
	lw	a4,-28(s0)
	bleu	a4,a5,.L13
	.loc 1 285 16
	lbu	a5,-41(s0)
	sw	a5,-28(s0)
.L13:
	.loc 1 288 13
	li	a5,1073807360
	addi	a5,a5,-1768
	.loc 1 288 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 289 10
	sw	zero,-24(s0)
	.loc 1 289 5
	j	.L14
.L15:
	.loc 1 290 34
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	.loc 1 290 30
	li	a4,31
	sll	a5,a4,a5
	.loc 1 290 24
	not	a5,a5
	mv	a4,a5
	.loc 1 290 15
	lw	a5,-20(s0)
	and	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 291 27
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a3,a5
	.loc 1 291 34
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	.loc 1 291 30
	sll	a5,a3,a5
	mv	a4,a5
	.loc 1 291 15
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 289 24 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L14:
	.loc 1 289 14 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	bltu	a4,a5,.L15
	.loc 1 293 7
	li	a5,1073807360
	addi	a5,a5,-1768
	.loc 1 293 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 295 13
	li	a5,1073807360
	addi	a5,a5,-1760
	.loc 1 295 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 296 10
	sw	zero,-24(s0)
	.loc 1 296 5
	j	.L16
.L17:
	.loc 1 297 34
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	.loc 1 297 30
	li	a4,31
	sll	a5,a4,a5
	.loc 1 297 24
	not	a5,a5
	mv	a4,a5
	.loc 1 297 15
	lw	a5,-20(s0)
	and	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 298 27
	lw	a4,-40(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a3,a5
	.loc 1 298 34
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	.loc 1 298 30
	sll	a5,a3,a5
	mv	a4,a5
	.loc 1 298 15
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 296 24 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L16:
	.loc 1 296 14 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	bltu	a4,a5,.L17
	.loc 1 300 7
	li	a5,1073807360
	addi	a5,a5,-1760
	.loc 1 300 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 303 18
	lbu	a5,-41(s0)
	.loc 1 303 7
	lw	a4,-28(s0)
	bgeu	a4,a5,.L18
	.loc 1 304 17
	li	a5,1073807360
	addi	a5,a5,-1764
	.loc 1 304 15
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 305 14
	sw	zero,-24(s0)
	.loc 1 305 9
	j	.L19
.L20:
	.loc 1 306 38
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	.loc 1 306 34
	li	a4,31
	sll	a5,a4,a5
	.loc 1 306 28
	not	a5,a5
	mv	a4,a5
	.loc 1 306 19
	lw	a5,-20(s0)
	and	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 307 33
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 1 307 31
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a3,a5
	.loc 1 307 46
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	.loc 1 307 42
	sll	a5,a3,a5
	mv	a4,a5
	.loc 1 307 19
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 305 39 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L19:
	.loc 1 305 29 discriminator 1
	lbu	a4,-41(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	.loc 1 305 18 discriminator 1
	lw	a4,-24(s0)
	bltu	a4,a5,.L20
	.loc 1 309 11
	li	a5,1073807360
	addi	a5,a5,-1764
	.loc 1 309 65
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 311 17
	li	a5,1073807360
	addi	a5,a5,-1756
	.loc 1 311 15
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 312 14
	sw	zero,-24(s0)
	.loc 1 312 9
	j	.L21
.L22:
	.loc 1 313 38
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	.loc 1 313 34
	li	a4,31
	sll	a5,a4,a5
	.loc 1 313 28
	not	a5,a5
	mv	a4,a5
	.loc 1 313 19
	lw	a5,-20(s0)
	and	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 314 33
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 1 314 31
	lw	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a3,a5
	.loc 1 314 46
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	.loc 1 314 42
	sll	a5,a3,a5
	mv	a4,a5
	.loc 1 314 19
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 312 39 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L21:
	.loc 1 312 29 discriminator 1
	lbu	a4,-41(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	.loc 1 312 18 discriminator 1
	lw	a4,-24(s0)
	bltu	a4,a5,.L22
	.loc 1 316 11
	li	a5,1073807360
	addi	a5,a5,-1756
	.loc 1 316 65
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L18:
	.loc 1 320 13
	li	a5,1073807360
	addi	a5,a5,-1776
	.loc 1 320 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 321 23
	lw	a4,-20(s0)
	li	a5,-31457280
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 321 76
	lbu	a5,-41(s0)
	addi	a5,a5,-1
	.loc 1 321 79
	slli	a5,a5,21
	.loc 1 321 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 322 23
	lw	a5,-20(s0)
	andi	a4,a5,-3
	.loc 1 322 54
	lbu	a5,-42(s0)
	.loc 1 322 72
	slli	a5,a5,1
	.loc 1 322 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 323 11
	lw	a4,-20(s0)
	li	a5,33554432
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 324 7
	li	a5,1073807360
	addi	a5,a5,-1776
	.loc 1 324 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 325 1
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
.LFE13:
	.size	ADC_Scan_Channel_Config, .-ADC_Scan_Channel_Config
	.section	.text.ADC_Start,"ax",@progbits
	.align	1
	.globl	ADC_Start
	.type	ADC_Start, @function
ADC_Start:
.LFB14:
	.loc 1 336 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 340 13
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 340 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 341 11
	lw	a5,-20(s0)
	andi	a5,a5,-3
	sw	a5,-20(s0)
	.loc 1 342 7
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 342 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 344 5
	li	a0,100
	call	BL602_Delay_US
	.loc 1 347 13
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 347 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 348 11
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	.loc 1 349 7
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 349 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 351 1
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
	.size	ADC_Start, .-ADC_Start
	.section	.text.ADC_Stop,"ax",@progbits
	.align	1
	.globl	ADC_Stop
	.type	ADC_Stop, @function
ADC_Stop:
.LFB15:
	.loc 1 362 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 366 13
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 366 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 367 11
	lw	a5,-20(s0)
	andi	a5,a5,-3
	sw	a5,-20(s0)
	.loc 1 368 7
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 368 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 369 1
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
.LFE15:
	.size	ADC_Stop, .-ADC_Stop
	.section	.text.ADC_FIFO_Cfg,"ax",@progbits
	.align	1
	.globl	ADC_FIFO_Cfg
	.type	ADC_FIFO_Cfg, @function
ADC_FIFO_Cfg:
.LFB16:
	.loc 1 380 1
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
	.loc 1 391 13
	li	a5,1073750016
	.loc 1 391 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 392 23
	lw	a4,-20(s0)
	li	a5,-12582912
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 392 73
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 392 89
	slli	a5,a5,22
	.loc 1 392 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 395 23
	lw	a5,-20(s0)
	andi	a5,a5,-2
	.loc 1 395 72
	lw	a4,-36(s0)
	lbu	a4,1(a4)
	.loc 1 395 11
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 397 7
	li	a5,1073750016
	.loc 1 397 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 400 13
	li	a5,1073750016
	.loc 1 400 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 401 11
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	.loc 1 402 7
	li	a5,1073750016
	.loc 1 402 59
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 404 1
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
.LFE16:
	.size	ADC_FIFO_Cfg, .-ADC_FIFO_Cfg
	.section	.text.ADC_Get_FIFO_Count,"ax",@progbits
	.align	1
	.globl	ADC_Get_FIFO_Count
	.type	ADC_Get_FIFO_Count, @function
ADC_Get_FIFO_Count:
.LFB17:
	.loc 1 415 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 418 13
	li	a5,1073750016
	.loc 1 418 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 420 51
	lw	a5,-20(s0)
	srli	a5,a5,16
	andi	a5,a5,0xff
	andi	a5,a5,63
	andi	a5,a5,0xff
	.loc 1 421 1
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
	.size	ADC_Get_FIFO_Count, .-ADC_Get_FIFO_Count
	.section	.text.ADC_FIFO_Is_Full,"ax",@progbits
	.align	1
	.globl	ADC_FIFO_Is_Full
	.type	ADC_FIFO_Is_Full, @function
ADC_FIFO_Is_Full:
.LFB18:
	.loc 1 432 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 435 13
	li	a5,1073750016
	.loc 1 435 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 437 19
	lw	a5,-20(s0)
	andi	a5,a5,8
	.loc 1 437 7
	beq	a5,zero,.L29
	.loc 1 438 16
	li	a5,1
	j	.L30
.L29:
	.loc 1 440 16
	li	a5,0
.L30:
	.loc 1 442 1
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
	.size	ADC_FIFO_Is_Full, .-ADC_FIFO_Is_Full
	.section	.text.ADC_FIFO_Is_Empty,"ax",@progbits
	.align	1
	.globl	ADC_FIFO_Is_Empty
	.type	ADC_FIFO_Is_Empty, @function
ADC_FIFO_Is_Empty:
.LFB19:
	.loc 1 453 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 456 13
	li	a5,1073750016
	.loc 1 456 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 458 19
	lw	a5,-20(s0)
	andi	a5,a5,4
	.loc 1 458 7
	beq	a5,zero,.L32
	.loc 1 459 16
	li	a5,0
	j	.L33
.L32:
	.loc 1 461 16
	li	a5,1
.L33:
	.loc 1 463 1
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
.LFE19:
	.size	ADC_FIFO_Is_Empty, .-ADC_FIFO_Is_Empty
	.section	.text.ADC_Read_FIFO,"ax",@progbits
	.align	1
	.globl	ADC_Read_FIFO
	.type	ADC_Read_FIFO, @function
ADC_Read_FIFO:
.LFB20:
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
	.loc 1 480 13
	li	a5,1073750016
	addi	a5,a5,4
	.loc 1 480 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 482 12
	lw	a5,-20(s0)
	.loc 1 483 1
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
.LFE20:
	.size	ADC_Read_FIFO, .-ADC_Read_FIFO
	.section	.text.ADC_Parse_Result,"ax",@progbits
	.align	1
	.globl	ADC_Parse_Result
	.type	ADC_Parse_Result, @function
ADC_Parse_Result:
.LFB21:
	.loc 1 496 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	.loc 1 497 13
	sb	zero,-33(s0)
	.loc 1 498 14
	sw	zero,-52(s0)
	.loc 1 498 24
	sw	zero,-56(s0)
	.loc 1 501 11
	lui	a5,%hi(.LC0)
	flw	fa5,%lo(.LC0)(a5)
	fsw	fa5,-40(s0)
	.loc 1 502 14
	sw	zero,-44(s0)
	.loc 1 504 11
	lui	a5,%hi(.LC1)
	flw	fa5,%lo(.LC1)(a5)
	fsw	fa5,-48(s0)
	.loc 1 506 23
	lui	a5,%hi(adcGainCoeffCal)
	addi	a5,a5,%lo(adcGainCoeffCal)
	lbu	a5,0(a5)
	.loc 1 506 7
	beq	a5,zero,.L37
	.loc 1 507 12
	lui	a5,%hi(adcGainCoeffCal)
	addi	a5,a5,%lo(adcGainCoeffCal)
	flw	fa5,4(a5)
	fsw	fa5,-48(s0)
.L37:
	.loc 1 510 14
	li	a5,1073807360
	addi	a5,a5,-1776
	.loc 1 510 12
	lw	a5,0(a5)
	sw	a5,-52(s0)
	.loc 1 511 14
	li	a5,1073807360
	addi	a5,a5,-1772
	.loc 1 511 12
	lw	a5,0(a5)
	sw	a5,-56(s0)
	.loc 1 512 53
	lw	a5,-52(s0)
	srli	a5,a5,2
	andi	a5,a5,0xff
	.loc 1 512 13
	andi	a5,a5,7
	sb	a5,-57(s0)
	.loc 1 513 52
	lw	a5,-56(s0)
	srli	a5,a5,2
	andi	a5,a5,0xff
	.loc 1 513 12
	andi	a5,a5,1
	sb	a5,-58(s0)
	.loc 1 515 56
	lw	a5,-56(s0)
	andi	a5,a5,8
	.loc 1 515 7
	bne	a5,zero,.L38
	.loc 1 516 12
	lui	a5,%hi(.LC2)
	flw	fa5,%lo(.LC2)(a5)
	fsw	fa5,-40(s0)
.L38:
	.loc 1 518 7
	lbu	a5,-58(s0)
	bne	a5,zero,.L39
	.loc 1 519 14
	sw	zero,-44(s0)
	.loc 1 519 9
	j	.L40
.L45:
	.loc 1 520 37
	lw	a5,-44(s0)
	slli	a5,a5,2
	lw	a4,-68(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 520 40
	srli	a3,a5,21
	.loc 1 520 19
	lw	a5,-44(s0)
	slli	a5,a5,3
	lw	a4,-76(s0)
	add	a5,a4,a5
	.loc 1 520 30
	slli	a4,a3,24
	srai	a4,a4,24
	sb	a4,0(a5)
	.loc 1 521 19
	lw	a5,-44(s0)
	slli	a5,a5,3
	lw	a4,-76(s0)
	add	a5,a4,a5
	.loc 1 521 30
	li	a4,-1
	sb	a4,1(a5)
	.loc 1 522 15
	lbu	a5,-57(s0)
	bne	a5,zero,.L41
	.loc 1 523 56
	lw	a5,-44(s0)
	slli	a5,a5,2
	lw	a4,-68(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 523 67
	srli	a4,a5,4
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
	.loc 1 523 71
	fcvt.s.wu	fa4,a5
	flw	fa5,-48(s0)
	fdiv.s	fa5,fa4,fa5
	.loc 1 523 33
	fcvt.wu.s a3,fa5,rtz
	.loc 1 523 23
	lw	a5,-44(s0)
	slli	a5,a5,3
	lw	a4,-76(s0)
	add	a5,a4,a5
	.loc 1 523 32
	slli	a4,a3,16
	srli	a4,a4,16
	sh	a4,2(a5)
	.loc 1 524 38
	lw	a5,-44(s0)
	slli	a5,a5,3
	lw	a4,-76(s0)
	add	a5,a4,a5
	.loc 1 524 41
	lhu	a5,2(a5)
	.loc 1 524 47
	mv	a0,a5
	call	__floatsidf
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(.LC3)
	lw	a2,%lo(.LC3)(a3)
	lw	a3,%lo(.LC3+4)(a3)
	mv	a0,a4
	mv	a1,a5
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	mv	s2,a4
	mv	s3,a5
	.loc 1 524 54
	flw	fa0,-40(s0)
	call	__extendsfdf2
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	mv	a0,s2
	mv	a1,s3
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	.loc 1 524 23
	lw	a5,-44(s0)
	slli	a5,a5,3
	lw	a4,-76(s0)
	add	s1,a4,a5
	.loc 1 524 54
	mv	a0,a2
	mv	a1,a3
	call	__truncdfsf2
	fmv.s	fa5,fa0
	.loc 1 524 31
	fsw	fa5,4(s1)
	j	.L42
.L41:
	.loc 1 525 21
	lbu	a4,-57(s0)
	li	a5,1
	bne	a4,a5,.L43
	.loc 1 526 56
	lw	a5,-44(s0)
	slli	a5,a5,2
	lw	a4,-68(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 526 67
	srli	a4,a5,2
	li	a5,16384
	addi	a5,a5,-1
	and	a5,a4,a5
	.loc 1 526 71
	fcvt.s.wu	fa4,a5
	flw	fa5,-48(s0)
	fdiv.s	fa5,fa4,fa5
	.loc 1 526 33
	fcvt.wu.s a3,fa5,rtz
	.loc 1 526 23
	lw	a5,-44(s0)
	slli	a5,a5,3
	lw	a4,-76(s0)
	add	a5,a4,a5
	.loc 1 526 32
	slli	a4,a3,16
	srli	a4,a4,16
	sh	a4,2(a5)
	.loc 1 527 38
	lw	a5,-44(s0)
	slli	a5,a5,3
	lw	a4,-76(s0)
	add	a5,a4,a5
	.loc 1 527 41
	lhu	a5,2(a5)
	.loc 1 527 47
	mv	a0,a5
	call	__floatsidf
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(.LC4)
	lw	a2,%lo(.LC4)(a3)
	lw	a3,%lo(.LC4+4)(a3)
	mv	a0,a4
	mv	a1,a5
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	mv	s2,a4
	mv	s3,a5
	.loc 1 527 55
	flw	fa0,-40(s0)
	call	__extendsfdf2
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	mv	a0,s2
	mv	a1,s3
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	.loc 1 527 23
	lw	a5,-44(s0)
	slli	a5,a5,3
	lw	a4,-76(s0)
	add	s1,a4,a5
	.loc 1 527 55
	mv	a0,a2
	mv	a1,a3
	call	__truncdfsf2
	fmv.s	fa5,fa0
	.loc 1 527 31
	fsw	fa5,4(s1)
	j	.L42
.L43:
	.loc 1 528 21
	lbu	a4,-57(s0)
	li	a5,2
	beq	a4,a5,.L44
	.loc 1 528 65 discriminator 1
	lbu	a4,-57(s0)
	li	a5,4
	bne	a4,a5,.L42
.L44:
	.loc 1 529 55
	lw	a5,-44(s0)
	slli	a5,a5,2
	lw	a4,-68(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 529 58
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 529 66
	fcvt.s.wu	fa4,a5
	flw	fa5,-48(s0)
	fdiv.s	fa5,fa4,fa5
	.loc 1 529 33
	fcvt.wu.s a3,fa5,rtz
	.loc 1 529 23
	lw	a5,-44(s0)
	slli	a5,a5,3
	lw	a4,-76(s0)
	add	a5,a4,a5
	.loc 1 529 32
	slli	a4,a3,16
	srli	a4,a4,16
	sh	a4,2(a5)
	.loc 1 530 38
	lw	a5,-44(s0)
	slli	a5,a5,3
	lw	a4,-76(s0)
	add	a5,a4,a5
	.loc 1 530 41
	lhu	a5,2(a5)
	.loc 1 530 47
	mv	a0,a5
	call	__floatsidf
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(.LC5)
	lw	a2,%lo(.LC5)(a3)
	lw	a3,%lo(.LC5+4)(a3)
	mv	a0,a4
	mv	a1,a5
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	mv	s2,a4
	mv	s3,a5
	.loc 1 530 55
	flw	fa0,-40(s0)
	call	__extendsfdf2
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	mv	a0,s2
	mv	a1,s3
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	.loc 1 530 23
	lw	a5,-44(s0)
	slli	a5,a5,3
	lw	a4,-76(s0)
	add	s1,a4,a5
	.loc 1 530 55
	mv	a0,a2
	mv	a1,a3
	call	__truncdfsf2
	fmv.s	fa5,fa0
	.loc 1 530 31
	fsw	fa5,4(s1)
.L42:
	.loc 1 519 24 discriminator 2
	lw	a5,-44(s0)
	addi	a5,a5,1
	sw	a5,-44(s0)
.L40:
	.loc 1 519 18 discriminator 1
	lw	a4,-44(s0)
	lw	a5,-72(s0)
	bltu	a4,a5,.L45
	.loc 1 559 1
	j	.L55
.L39:
	.loc 1 534 14
	sw	zero,-44(s0)
	.loc 1 534 9
	j	.L47
.L54:
	.loc 1 535 17
	sb	zero,-33(s0)
	.loc 1 536 37
	lw	a5,-44(s0)
	slli	a5,a5,2
	lw	a4,-68(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 536 40
	srli	a3,a5,21
	.loc 1 536 19
	lw	a5,-44(s0)
	slli	a5,a5,3
	lw	a4,-76(s0)
	add	a5,a4,a5
	.loc 1 536 30
	slli	a4,a3,24
	srai	a4,a4,24
	sb	a4,0(a5)
	.loc 1 537 38
	lw	a5,-44(s0)
	slli	a5,a5,2
	lw	a4,-68(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 537 41
	srli	a5,a5,16
	.loc 1 537 46
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 1 537 19
	lw	a5,-44(s0)
	slli	a5,a5,3
	lw	a3,-76(s0)
	add	a5,a3,a5
	.loc 1 537 46
	andi	a4,a4,31
	slli	a4,a4,24
	srai	a4,a4,24
	.loc 1 537 30
	sb	a4,1(a5)
	.loc 1 539 22
	lw	a5,-44(s0)
	slli	a5,a5,2
	lw	a4,-68(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 539 25
	li	a5,32768
	and	a5,a4,a5
	.loc 1 539 15
	beq	a5,zero,.L48
	.loc 1 540 36
	lw	a5,-44(s0)
	slli	a5,a5,2
	lw	a4,-68(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 540 23
	lw	a5,-44(s0)
	slli	a5,a5,2
	lw	a3,-68(s0)
	add	a5,a3,a5
	.loc 1 540 29
	not	a4,a4
	.loc 1 540 27
	sw	a4,0(a5)
	.loc 1 541 23
	lw	a5,-44(s0)
	slli	a5,a5,2
	lw	a4,-68(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-44(s0)
	slli	a5,a5,2
	lw	a3,-68(s0)
	add	a5,a3,a5
	.loc 1 541 27
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 1 542 21
	li	a5,1
	sb	a5,-33(s0)
.L48:
	.loc 1 544 15
	lbu	a5,-57(s0)
	bne	a5,zero,.L49
	.loc 1 545 56
	lw	a5,-44(s0)
	slli	a5,a5,2
	lw	a4,-68(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 545 67
	srli	a4,a5,4
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
	.loc 1 545 71
	fcvt.s.wu	fa4,a5
	flw	fa5,-48(s0)
	fdiv.s	fa5,fa4,fa5
	.loc 1 545 33
	fcvt.wu.s a3,fa5,rtz
	.loc 1 545 23
	lw	a5,-44(s0)
	slli	a5,a5,3
	lw	a4,-76(s0)
	add	a5,a4,a5
	.loc 1 545 32
	slli	a4,a3,16
	srli	a4,a4,16
	sh	a4,2(a5)
	.loc 1 546 38
	lw	a5,-44(s0)
	slli	a5,a5,3
	lw	a4,-76(s0)
	add	a5,a4,a5
	.loc 1 546 41
	lhu	a5,2(a5)
	.loc 1 546 47
	mv	a0,a5
	call	__floatsidf
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(.LC6)
	lw	a2,%lo(.LC6)(a3)
	lw	a3,%lo(.LC6+4)(a3)
	mv	a0,a4
	mv	a1,a5
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	mv	s2,a4
	mv	s3,a5
	.loc 1 546 54
	flw	fa0,-40(s0)
	call	__extendsfdf2
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	mv	a0,s2
	mv	a1,s3
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	.loc 1 546 23
	lw	a5,-44(s0)
	slli	a5,a5,3
	lw	a4,-76(s0)
	add	s1,a4,a5
	.loc 1 546 54
	mv	a0,a2
	mv	a1,a3
	call	__truncdfsf2
	fmv.s	fa5,fa0
	.loc 1 546 31
	fsw	fa5,4(s1)
	j	.L50
.L49:
	.loc 1 547 21
	lbu	a4,-57(s0)
	li	a5,1
	bne	a4,a5,.L51
	.loc 1 548 56
	lw	a5,-44(s0)
	slli	a5,a5,2
	lw	a4,-68(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 548 67
	srli	a4,a5,2
	li	a5,16384
	addi	a5,a5,-1
	and	a5,a4,a5
	.loc 1 548 71
	fcvt.s.wu	fa4,a5
	flw	fa5,-48(s0)
	fdiv.s	fa5,fa4,fa5
	.loc 1 548 33
	fcvt.wu.s a3,fa5,rtz
	.loc 1 548 23
	lw	a5,-44(s0)
	slli	a5,a5,3
	lw	a4,-76(s0)
	add	a5,a4,a5
	.loc 1 548 32
	slli	a4,a3,16
	srli	a4,a4,16
	sh	a4,2(a5)
	.loc 1 549 38
	lw	a5,-44(s0)
	slli	a5,a5,3
	lw	a4,-76(s0)
	add	a5,a4,a5
	.loc 1 549 41
	lhu	a5,2(a5)
	.loc 1 549 47
	mv	a0,a5
	call	__floatsidf
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(.LC7)
	lw	a2,%lo(.LC7)(a3)
	lw	a3,%lo(.LC7+4)(a3)
	mv	a0,a4
	mv	a1,a5
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	mv	s2,a4
	mv	s3,a5
	.loc 1 549 54
	flw	fa0,-40(s0)
	call	__extendsfdf2
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	mv	a0,s2
	mv	a1,s3
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	.loc 1 549 23
	lw	a5,-44(s0)
	slli	a5,a5,3
	lw	a4,-76(s0)
	add	s1,a4,a5
	.loc 1 549 54
	mv	a0,a2
	mv	a1,a3
	call	__truncdfsf2
	fmv.s	fa5,fa0
	.loc 1 549 31
	fsw	fa5,4(s1)
	j	.L50
.L51:
	.loc 1 550 21
	lbu	a4,-57(s0)
	li	a5,2
	beq	a4,a5,.L52
	.loc 1 550 65 discriminator 1
	lbu	a4,-57(s0)
	li	a5,4
	bne	a4,a5,.L50
.L52:
	.loc 1 551 55
	lw	a5,-44(s0)
	slli	a5,a5,2
	lw	a4,-68(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 551 58
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 551 66
	fcvt.s.wu	fa4,a5
	flw	fa5,-48(s0)
	fdiv.s	fa5,fa4,fa5
	.loc 1 551 33
	fcvt.wu.s a3,fa5,rtz
	.loc 1 551 23
	lw	a5,-44(s0)
	slli	a5,a5,3
	lw	a4,-76(s0)
	add	a5,a4,a5
	.loc 1 551 32
	slli	a4,a3,16
	srli	a4,a4,16
	sh	a4,2(a5)
	.loc 1 552 38
	lw	a5,-44(s0)
	slli	a5,a5,3
	lw	a4,-76(s0)
	add	a5,a4,a5
	.loc 1 552 41
	lhu	a5,2(a5)
	.loc 1 552 47
	mv	a0,a5
	call	__floatsidf
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(.LC8)
	lw	a2,%lo(.LC8)(a3)
	lw	a3,%lo(.LC8+4)(a3)
	mv	a0,a4
	mv	a1,a5
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	mv	s2,a4
	mv	s3,a5
	.loc 1 552 55
	flw	fa0,-40(s0)
	call	__extendsfdf2
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	mv	a0,s2
	mv	a1,s3
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	.loc 1 552 23
	lw	a5,-44(s0)
	slli	a5,a5,3
	lw	a4,-76(s0)
	add	s1,a4,a5
	.loc 1 552 55
	mv	a0,a2
	mv	a1,a3
	call	__truncdfsf2
	fmv.s	fa5,fa0
	.loc 1 552 31
	fsw	fa5,4(s1)
.L50:
	.loc 1 554 15
	lbu	a5,-33(s0)
	beq	a5,zero,.L53
	.loc 1 555 42
	lw	a5,-44(s0)
	slli	a5,a5,3
	lw	a4,-76(s0)
	add	a5,a4,a5
	.loc 1 555 45
	flw	fa5,4(a5)
	.loc 1 555 23
	lw	a5,-44(s0)
	slli	a5,a5,3
	lw	a4,-76(s0)
	add	a5,a4,a5
	.loc 1 555 34
	fneg.s	fa5,fa5
	.loc 1 555 32
	fsw	fa5,4(a5)
.L53:
	.loc 1 534 24 discriminator 2
	lw	a5,-44(s0)
	addi	a5,a5,1
	sw	a5,-44(s0)
.L47:
	.loc 1 534 18 discriminator 1
	lw	a4,-44(s0)
	lw	a5,-72(s0)
	bltu	a4,a5,.L54
.L55:
	.loc 1 559 1
	nop
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	ADC_Parse_Result, .-ADC_Parse_Result
	.section	.text.ADC_IntMask,"ax",@progbits
	.align	1
	.globl	ADC_IntMask
	.type	ADC_IntMask, @function
ADC_IntMask:
.LFB22:
	.loc 1 571 1
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
	mv	a4,a1
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	.loc 1 578 5
	lbu	a5,-33(s0)
	li	a4,5
	beq	a5,a4,.L57
	li	a4,5
	bgt	a5,a4,.L77
	li	a4,4
	beq	a5,a4,.L59
	li	a4,4
	bgt	a5,a4,.L77
	li	a4,3
	beq	a5,a4,.L60
	li	a4,3
	bgt	a5,a4,.L77
	li	a4,2
	beq	a5,a4,.L61
	li	a4,2
	bgt	a5,a4,.L77
	beq	a5,zero,.L62
	li	a4,1
	beq	a5,a4,.L63
	.loc 1 663 13
	j	.L77
.L62:
	.loc 1 581 21
	li	a5,1073807360
	addi	a5,a5,-1748
	.loc 1 581 19
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 582 15
	lbu	a5,-34(s0)
	bne	a5,zero,.L64
	.loc 1 584 23
	lw	a5,-20(s0)
	andi	a5,a5,-513
	sw	a5,-20(s0)
	j	.L65
.L64:
	.loc 1 587 23
	lw	a5,-20(s0)
	ori	a5,a5,512
	sw	a5,-20(s0)
.L65:
	.loc 1 589 15
	li	a5,1073807360
	addi	a5,a5,-1748
	.loc 1 589 69
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 590 13
	j	.L66
.L63:
	.loc 1 592 21
	li	a5,1073807360
	addi	a5,a5,-1748
	.loc 1 592 19
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 593 15
	lbu	a5,-34(s0)
	bne	a5,zero,.L67
	.loc 1 595 23
	lw	a5,-20(s0)
	andi	a5,a5,-257
	sw	a5,-20(s0)
	j	.L68
.L67:
	.loc 1 598 23
	lw	a5,-20(s0)
	ori	a5,a5,256
	sw	a5,-20(s0)
.L68:
	.loc 1 600 15
	li	a5,1073807360
	addi	a5,a5,-1748
	.loc 1 600 69
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 601 13
	j	.L66
.L61:
	.loc 1 603 21
	li	a5,1073750016
	.loc 1 603 19
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 604 15
	lbu	a5,-34(s0)
	bne	a5,zero,.L69
	.loc 1 606 23
	lw	a4,-20(s0)
	li	a5,-16384
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	j	.L70
.L69:
	.loc 1 609 23
	lw	a4,-20(s0)
	li	a5,16384
	or	a5,a4,a5
	sw	a5,-20(s0)
.L70:
	.loc 1 611 15
	li	a5,1073750016
	.loc 1 611 67
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 612 13
	j	.L66
.L60:
	.loc 1 614 21
	li	a5,1073750016
	.loc 1 614 19
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 615 15
	lbu	a5,-34(s0)
	bne	a5,zero,.L71
	.loc 1 617 23
	lw	a4,-20(s0)
	li	a5,-8192
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	j	.L72
.L71:
	.loc 1 620 23
	lw	a4,-20(s0)
	li	a5,8192
	or	a5,a4,a5
	sw	a5,-20(s0)
.L72:
	.loc 1 622 15
	li	a5,1073750016
	.loc 1 622 67
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 623 13
	j	.L66
.L59:
	.loc 1 625 21
	li	a5,1073750016
	.loc 1 625 19
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 626 15
	lbu	a5,-34(s0)
	bne	a5,zero,.L73
	.loc 1 628 23
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	j	.L74
.L73:
	.loc 1 631 23
	lw	a4,-20(s0)
	li	a5,4096
	or	a5,a4,a5
	sw	a5,-20(s0)
.L74:
	.loc 1 633 15
	li	a5,1073750016
	.loc 1 633 67
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 634 13
	j	.L66
.L57:
	.loc 1 636 15
	lbu	a5,-34(s0)
	bne	a5,zero,.L75
	.loc 1 638 25
	li	a5,1073754112
	addi	a5,a5,-1748
	.loc 1 638 23
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 639 23
	lw	a5,-20(s0)
	andi	a5,a5,-513
	sw	a5,-20(s0)
	.loc 1 640 23
	lw	a5,-20(s0)
	andi	a5,a5,-257
	sw	a5,-20(s0)
	.loc 1 641 19
	li	a5,1073807360
	addi	a5,a5,-1748
	.loc 1 641 73
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 643 25
	li	a5,1073750016
	.loc 1 643 23
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 644 23
	lw	a4,-20(s0)
	li	a5,-16384
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 645 23
	lw	a4,-20(s0)
	li	a5,-8192
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 646 23
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 647 19
	li	a5,1073750016
	.loc 1 647 71
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 661 13
	j	.L66
.L75:
	.loc 1 650 25
	li	a5,1073754112
	addi	a5,a5,-1748
	.loc 1 650 23
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 651 23
	lw	a5,-20(s0)
	ori	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 652 23
	lw	a5,-20(s0)
	ori	a5,a5,256
	sw	a5,-20(s0)
	.loc 1 653 19
	li	a5,1073807360
	addi	a5,a5,-1748
	.loc 1 653 73
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 655 25
	li	a5,1073750016
	.loc 1 655 23
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 656 23
	lw	a4,-20(s0)
	li	a5,8192
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 657 23
	lw	a4,-20(s0)
	li	a5,16384
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 658 23
	lw	a4,-20(s0)
	li	a5,4096
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 659 19
	li	a5,1073750016
	.loc 1 659 71
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 661 13
	j	.L66
.L77:
	.loc 1 663 13
	nop
.L66:
	.loc 1 665 1
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
.LFE22:
	.size	ADC_IntMask, .-ADC_IntMask
	.section	.text.ADC_IntClr,"ax",@progbits
	.align	1
	.globl	ADC_IntClr
	.type	ADC_IntClr, @function
ADC_IntClr:
.LFB23:
	.loc 1 676 1
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
	.loc 1 682 5
	lbu	a5,-33(s0)
	li	a4,5
	beq	a5,a4,.L79
	li	a4,5
	bgt	a5,a4,.L87
	li	a4,4
	beq	a5,a4,.L81
	li	a4,4
	bgt	a5,a4,.L87
	li	a4,3
	beq	a5,a4,.L82
	li	a4,3
	bgt	a5,a4,.L87
	li	a4,2
	beq	a5,a4,.L83
	li	a4,2
	bgt	a5,a4,.L87
	beq	a5,zero,.L84
	li	a4,1
	beq	a5,a4,.L85
	.loc 1 792 13
	j	.L87
.L84:
	.loc 1 685 21
	li	a5,1073807360
	addi	a5,a5,-1748
	.loc 1 685 19
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 686 19
	lw	a5,-20(s0)
	andi	a5,a5,-33
	sw	a5,-20(s0)
	.loc 1 687 15
	li	a5,1073807360
	addi	a5,a5,-1748
	.loc 1 687 69
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 689 19
	lw	a5,-20(s0)
	ori	a5,a5,32
	sw	a5,-20(s0)
	.loc 1 690 15
	li	a5,1073807360
	addi	a5,a5,-1748
	.loc 1 690 69
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 693 21
	li	a5,1073807360
	addi	a5,a5,-1748
	.loc 1 693 19
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 694 19
	lw	a5,-20(s0)
	andi	a5,a5,-33
	sw	a5,-20(s0)
	.loc 1 695 15
	li	a5,1073807360
	addi	a5,a5,-1748
	.loc 1 695 69
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 697 13
	j	.L86
.L85:
	.loc 1 699 21
	li	a5,1073807360
	addi	a5,a5,-1748
	.loc 1 699 19
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 700 19
	lw	a5,-20(s0)
	andi	a5,a5,-17
	sw	a5,-20(s0)
	.loc 1 701 15
	li	a5,1073807360
	addi	a5,a5,-1748
	.loc 1 701 69
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 703 19
	lw	a5,-20(s0)
	ori	a5,a5,16
	sw	a5,-20(s0)
	.loc 1 704 15
	li	a5,1073807360
	addi	a5,a5,-1748
	.loc 1 704 69
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 707 21
	li	a5,1073807360
	addi	a5,a5,-1748
	.loc 1 707 19
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 708 19
	lw	a5,-20(s0)
	andi	a5,a5,-17
	sw	a5,-20(s0)
	.loc 1 709 15
	li	a5,1073807360
	addi	a5,a5,-1748
	.loc 1 709 69
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 711 13
	j	.L86
.L83:
	.loc 1 713 21
	li	a5,1073750016
	.loc 1 713 19
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 714 19
	lw	a5,-20(s0)
	andi	a5,a5,-1025
	sw	a5,-20(s0)
	.loc 1 715 15
	li	a5,1073750016
	.loc 1 715 67
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 717 19
	lw	a5,-20(s0)
	ori	a5,a5,1024
	sw	a5,-20(s0)
	.loc 1 718 15
	li	a5,1073750016
	.loc 1 718 67
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 721 21
	li	a5,1073750016
	.loc 1 721 19
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 722 19
	lw	a5,-20(s0)
	andi	a5,a5,-1025
	sw	a5,-20(s0)
	.loc 1 723 15
	li	a5,1073750016
	.loc 1 723 67
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 725 13
	j	.L86
.L82:
	.loc 1 727 21
	li	a5,1073750016
	.loc 1 727 19
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 728 19
	lw	a5,-20(s0)
	andi	a5,a5,-513
	sw	a5,-20(s0)
	.loc 1 729 15
	li	a5,1073750016
	.loc 1 729 67
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 731 19
	lw	a5,-20(s0)
	ori	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 732 15
	li	a5,1073750016
	.loc 1 732 67
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 735 21
	li	a5,1073750016
	.loc 1 735 19
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 736 19
	lw	a5,-20(s0)
	andi	a5,a5,-513
	sw	a5,-20(s0)
	.loc 1 737 15
	li	a5,1073750016
	.loc 1 737 67
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 739 13
	j	.L86
.L81:
	.loc 1 741 21
	li	a5,1073750016
	.loc 1 741 19
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 742 19
	lw	a5,-20(s0)
	andi	a5,a5,-257
	sw	a5,-20(s0)
	.loc 1 743 15
	li	a5,1073750016
	.loc 1 743 67
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 745 19
	lw	a5,-20(s0)
	ori	a5,a5,256
	sw	a5,-20(s0)
	.loc 1 746 15
	li	a5,1073750016
	.loc 1 746 67
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 749 21
	li	a5,1073750016
	.loc 1 749 19
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 750 19
	lw	a5,-20(s0)
	andi	a5,a5,-257
	sw	a5,-20(s0)
	.loc 1 751 15
	li	a5,1073750016
	.loc 1 751 67
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 753 13
	j	.L86
.L79:
	.loc 1 755 21
	li	a5,1073807360
	addi	a5,a5,-1748
	.loc 1 755 19
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 756 19
	lw	a5,-20(s0)
	andi	a5,a5,-33
	sw	a5,-20(s0)
	.loc 1 757 19
	lw	a5,-20(s0)
	andi	a5,a5,-17
	sw	a5,-20(s0)
	.loc 1 758 15
	li	a5,1073807360
	addi	a5,a5,-1748
	.loc 1 758 69
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 760 19
	lw	a5,-20(s0)
	ori	a5,a5,32
	sw	a5,-20(s0)
	.loc 1 761 19
	lw	a5,-20(s0)
	ori	a5,a5,16
	sw	a5,-20(s0)
	.loc 1 762 15
	li	a5,1073807360
	addi	a5,a5,-1748
	.loc 1 762 69
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 765 21
	li	a5,1073807360
	addi	a5,a5,-1748
	.loc 1 765 19
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 766 19
	lw	a5,-20(s0)
	andi	a5,a5,-33
	sw	a5,-20(s0)
	.loc 1 767 19
	lw	a5,-20(s0)
	andi	a5,a5,-17
	sw	a5,-20(s0)
	.loc 1 768 15
	li	a5,1073807360
	addi	a5,a5,-1748
	.loc 1 768 69
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 771 21
	li	a5,1073750016
	.loc 1 771 19
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 772 19
	lw	a5,-20(s0)
	andi	a5,a5,-1025
	sw	a5,-20(s0)
	.loc 1 773 19
	lw	a5,-20(s0)
	andi	a5,a5,-513
	sw	a5,-20(s0)
	.loc 1 774 19
	lw	a5,-20(s0)
	andi	a5,a5,-257
	sw	a5,-20(s0)
	.loc 1 775 15
	li	a5,1073750016
	.loc 1 775 67
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 777 19
	lw	a5,-20(s0)
	ori	a5,a5,1024
	sw	a5,-20(s0)
	.loc 1 778 19
	lw	a5,-20(s0)
	ori	a5,a5,512
	sw	a5,-20(s0)
	.loc 1 779 19
	lw	a5,-20(s0)
	ori	a5,a5,256
	sw	a5,-20(s0)
	.loc 1 780 15
	li	a5,1073750016
	.loc 1 780 67
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 783 21
	li	a5,1073750016
	.loc 1 783 19
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 784 19
	lw	a5,-20(s0)
	andi	a5,a5,-1025
	sw	a5,-20(s0)
	.loc 1 785 19
	lw	a5,-20(s0)
	andi	a5,a5,-513
	sw	a5,-20(s0)
	.loc 1 786 19
	lw	a5,-20(s0)
	andi	a5,a5,-257
	sw	a5,-20(s0)
	.loc 1 787 15
	li	a5,1073750016
	.loc 1 787 67
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 790 13
	j	.L86
.L87:
	.loc 1 792 13
	nop
.L86:
	.loc 1 794 1
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
.LFE23:
	.size	ADC_IntClr, .-ADC_IntClr
	.section	.text.ADC_GetIntStatus,"ax",@progbits
	.align	1
	.globl	ADC_GetIntStatus
	.type	ADC_GetIntStatus, @function
ADC_GetIntStatus:
.LFB24:
	.loc 1 805 1
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
	.loc 1 807 17
	sb	zero,-17(s0)
	.loc 1 812 5
	lbu	a5,-33(s0)
	li	a4,5
	beq	a5,a4,.L98
	li	a4,5
	bgt	a5,a4,.L99
	li	a4,4
	beq	a5,a4,.L91
	li	a4,4
	bgt	a5,a4,.L99
	li	a4,3
	beq	a5,a4,.L92
	li	a4,3
	bgt	a5,a4,.L99
	li	a4,2
	beq	a5,a4,.L93
	li	a4,2
	bgt	a5,a4,.L99
	beq	a5,zero,.L94
	li	a4,1
	beq	a5,a4,.L95
	.loc 1 837 13
	j	.L99
.L94:
	.loc 1 815 21
	li	a5,1073807360
	addi	a5,a5,-1748
	.loc 1 815 19
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 816 62
	lw	a5,-24(s0)
	srli	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 816 23
	andi	a5,a5,1
	sb	a5,-17(s0)
	.loc 1 817 13
	j	.L96
.L95:
	.loc 1 819 21
	li	a5,1073807360
	addi	a5,a5,-1748
	.loc 1 819 19
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 820 62
	lw	a5,-24(s0)
	andi	a5,a5,0xff
	.loc 1 820 23
	andi	a5,a5,1
	sb	a5,-17(s0)
	.loc 1 821 13
	j	.L96
.L93:
	.loc 1 823 21
	li	a5,1073750016
	.loc 1 823 19
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 824 65
	lw	a5,-24(s0)
	srli	a5,a5,6
	andi	a5,a5,0xff
	.loc 1 824 23
	andi	a5,a5,1
	sb	a5,-17(s0)
	.loc 1 825 13
	j	.L96
.L92:
	.loc 1 827 21
	li	a5,1073750016
	.loc 1 827 19
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 828 65
	lw	a5,-24(s0)
	srli	a5,a5,5
	andi	a5,a5,0xff
	.loc 1 828 23
	andi	a5,a5,1
	sb	a5,-17(s0)
	.loc 1 829 13
	j	.L96
.L91:
	.loc 1 831 21
	li	a5,1073750016
	.loc 1 831 19
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 832 65
	lw	a5,-24(s0)
	srli	a5,a5,4
	andi	a5,a5,0xff
	.loc 1 832 23
	andi	a5,a5,1
	sb	a5,-17(s0)
	.loc 1 833 13
	j	.L96
.L98:
	.loc 1 835 13
	nop
	j	.L96
.L99:
	.loc 1 837 13
	nop
.L96:
	.loc 1 840 12
	lbu	a5,-17(s0)
	.loc 1 841 1
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
.LFE24:
	.size	ADC_GetIntStatus, .-ADC_GetIntStatus
	.section	.text.ADC_Int_Callback_Install,"ax",@progbits
	.align	1
	.globl	ADC_Int_Callback_Install
	.type	ADC_Int_Callback_Install, @function
ADC_Int_Callback_Install:
.LFB25:
	.loc 1 853 1
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
	sw	a1,-24(s0)
	sb	a5,-17(s0)
	.loc 1 857 18
	lbu	a5,-17(s0)
	.loc 1 857 28
	lui	a4,%hi(adcIntCbfArra)
	addi	a4,a4,%lo(adcIntCbfArra)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 858 1
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
	.size	ADC_Int_Callback_Install, .-ADC_Int_Callback_Install
	.section	.text.ADC_Vbat_Enable,"ax",@progbits
	.align	1
	.globl	ADC_Vbat_Enable
	.type	ADC_Vbat_Enable, @function
ADC_Vbat_Enable:
.LFB26:
	.loc 1 916 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 919 13
	li	a5,1073807360
	addi	a5,a5,-1772
	.loc 1 919 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 920 11
	lw	a5,-20(s0)
	ori	a5,a5,16
	sw	a5,-20(s0)
	.loc 1 921 7
	li	a5,1073807360
	addi	a5,a5,-1772
	.loc 1 921 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 922 1
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
	.size	ADC_Vbat_Enable, .-ADC_Vbat_Enable
	.section	.text.ADC_Vbat_Disable,"ax",@progbits
	.align	1
	.globl	ADC_Vbat_Disable
	.type	ADC_Vbat_Disable, @function
ADC_Vbat_Disable:
.LFB27:
	.loc 1 933 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 936 13
	li	a5,1073807360
	addi	a5,a5,-1772
	.loc 1 936 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 937 11
	lw	a5,-20(s0)
	andi	a5,a5,-17
	sw	a5,-20(s0)
	.loc 1 938 7
	li	a5,1073807360
	addi	a5,a5,-1772
	.loc 1 938 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 939 1
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
.LFE27:
	.size	ADC_Vbat_Disable, .-ADC_Vbat_Disable
	.section	.text.ADC_Tsen_Init,"ax",@progbits
	.align	1
	.globl	ADC_Tsen_Init
	.type	ADC_Tsen_Init, @function
ADC_Tsen_Init:
.LFB28:
	.loc 1 950 1
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
	.loc 1 956 13
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 956 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 958 11
	lw	a4,-20(s0)
	li	a5,-1073741824
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 960 11
	lw	a4,-20(s0)
	li	a5,-805306368
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 962 11
	lw	a4,-20(s0)
	li	a5,-134217728
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 964 11
	lw	a4,-20(s0)
	li	a5,262144
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 965 7
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 965 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 968 13
	li	a5,1073807360
	addi	a5,a5,-1772
	.loc 1 968 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 970 11
	lw	a4,-20(s0)
	li	a5,-2147483648
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 972 23
	lw	a4,-20(s0)
	li	a5,-1879048192
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 972 11
	li	a5,536870912
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 974 11
	lw	a4,-20(s0)
	li	a5,-3670016
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 976 11
	lw	a4,-20(s0)
	li	a5,-262144
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 978 11
	lw	a5,-20(s0)
	ori	a5,a5,64
	sw	a5,-20(s0)
	.loc 1 980 23
	lw	a5,-20(s0)
	andi	a4,a5,-33
	.loc 1 980 54
	lbu	a5,-33(s0)
	.loc 1 980 73
	slli	a5,a5,5
	.loc 1 980 11
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 982 23
	lw	a5,-20(s0)
	andi	a5,a5,-385
	.loc 1 982 11
	ori	a5,a5,256
	sw	a5,-20(s0)
	.loc 1 984 11
	lw	a4,-20(s0)
	li	a5,-16384
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 986 11
	lw	a4,-20(s0)
	li	a5,-8192
	addi	a5,a5,511
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 988 7
	li	a5,1073807360
	addi	a5,a5,-1772
	.loc 1 988 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 991 13
	li	a5,1073807360
	addi	a5,a5,-1776
	.loc 1 991 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 993 12
	lw	a4,-20(s0)
	li	a5,67108864
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 994 7
	li	a5,1073807360
	addi	a5,a5,-1776
	.loc 1 994 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1000 15
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 1000 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1001 12
	lw	a4,-20(s0)
	li	a5,524288
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1002 7
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 1002 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1003 1
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
	.size	ADC_Tsen_Init, .-ADC_Tsen_Init
	.section	.text.TSEN_Get_V_Error,"ax",@progbits
	.align	1
	.globl	TSEN_Get_V_Error
	.type	TSEN_Get_V_Error, @function
TSEN_Get_V_Error:
.LFB29:
	.loc 1 1015 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 1016 14
	sw	zero,-20(s0)
	.loc 1 1016 22
	sw	zero,-24(s0)
	.loc 1 1017 14
	sw	zero,-28(s0)
	.loc 1 1018 14
	sw	zero,-40(s0)
	.loc 1 1021 13
	sb	zero,-29(s0)
	.loc 1 1024 15
	li	a5,1073750016
	.loc 1 1024 12
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 1025 12
	lw	a5,-36(s0)
	ori	a5,a5,2
	sw	a5,-36(s0)
	.loc 1 1026 7
	li	a5,1073750016
	.loc 1 1026 59
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 1028 5
	call	ADC_SET_TSVBE_LOW
	.loc 1 1030 5
	call	ADC_Start
	.loc 1 1031 11
	nop
.L105:
	.loc 1 1031 12 discriminator 2
	call	ADC_Get_FIFO_Count
	mv	a5,a0
	.loc 1 1031 33 discriminator 2
	beq	a5,zero,.L105
	.loc 1 1033 14
	call	ADC_Read_FIFO
	mv	a5,a0
	.loc 1 1033 12 discriminator 1
	sw	a5,-40(s0)
	.loc 1 1034 19
	lui	a5,%hi(adcGainCoeffCal)
	addi	a5,a5,%lo(adcGainCoeffCal)
	lbu	a5,0(a5)
	sb	a5,-29(s0)
	.loc 1 1035 39
	lui	a5,%hi(adcGainCoeffCal)
	addi	a5,a5,%lo(adcGainCoeffCal)
	sb	zero,0(a5)
	.loc 1 1036 5
	addi	a4,s0,-48
	addi	a5,s0,-40
	mv	a2,a4
	li	a1,1
	mv	a0,a5
	call	ADC_Parse_Result
	.loc 1 1037 39
	lui	a5,%hi(adcGainCoeffCal)
	addi	a5,a5,%lo(adcGainCoeffCal)
	lbu	a4,-29(s0)
	sb	a4,0(a5)
	.loc 1 1038 16
	lhu	a5,-46(s0)
	.loc 1 1038 8
	sw	a5,-20(s0)
	.loc 1 1041 15
	li	a5,1073750016
	.loc 1 1041 12
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 1042 12
	lw	a5,-36(s0)
	ori	a5,a5,2
	sw	a5,-36(s0)
	.loc 1 1043 7
	li	a5,1073750016
	.loc 1 1043 59
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 1046 5
	call	ADC_SET_TSVBE_HIGH
	.loc 1 1048 5
	call	ADC_Start
	.loc 1 1049 11
	nop
.L106:
	.loc 1 1049 12 discriminator 2
	call	ADC_Get_FIFO_Count
	mv	a5,a0
	.loc 1 1049 33 discriminator 2
	beq	a5,zero,.L106
	.loc 1 1051 14
	call	ADC_Read_FIFO
	mv	a5,a0
	.loc 1 1051 12 discriminator 1
	sw	a5,-40(s0)
	.loc 1 1052 19
	lui	a5,%hi(adcGainCoeffCal)
	addi	a5,a5,%lo(adcGainCoeffCal)
	lbu	a5,0(a5)
	sb	a5,-29(s0)
	.loc 1 1053 39
	lui	a5,%hi(adcGainCoeffCal)
	addi	a5,a5,%lo(adcGainCoeffCal)
	sb	zero,0(a5)
	.loc 1 1054 5
	addi	a4,s0,-48
	addi	a5,s0,-40
	mv	a2,a4
	li	a1,1
	mv	a0,a5
	call	ADC_Parse_Result
	.loc 1 1055 39
	lui	a5,%hi(adcGainCoeffCal)
	addi	a5,a5,%lo(adcGainCoeffCal)
	lbu	a4,-29(s0)
	sb	a4,0(a5)
	.loc 1 1056 16
	lhu	a5,-46(s0)
	.loc 1 1056 8
	sw	a5,-24(s0)
	.loc 1 1058 13
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 1060 12
	lw	a5,-28(s0)
	.loc 1 1061 1
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
.LFE29:
	.size	TSEN_Get_V_Error, .-TSEN_Get_V_Error
	.section	.sclock_rlt_code,"ax",@progbits
	.align	1
	.globl	ADC_Trim_TSEN
	.type	ADC_Trim_TSEN, @function
ADC_Trim_TSEN:
.LFB30:
	.loc 1 1073 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	.loc 1 1074 13
	sb	zero,-33(s0)
	.loc 1 1075 14
	sw	zero,-40(s0)
	.loc 1 1076 14
	sw	zero,-44(s0)
	.loc 1 1077 11
	sw	zero,-48(s0)
	.loc 1 1077 18
	sw	zero,-52(s0)
	.loc 1 1077 25
	sw	zero,-56(s0)
	.loc 1 1077 31
	sw	zero,-60(s0)
	.loc 1 1080 5
	addi	a5,s0,-64
	mv	a0,a5
	call	EF_Ctrl_Read_TSEN_Trim
	.loc 1 1082 8
	lw	a4,-64(s0)
	li	a5,8192
	and	a5,a4,a5
	.loc 1 1082 7
	beq	a5,zero,.L109
	.loc 1 1083 16
	lw	a5,-64(s0)
	srli	a5,a5,12
	andi	a5,a5,1
	andi	a5,a5,0xff
	mv	s1,a5
	.loc 1 1083 70
	lw	a5,-64(s0)
	mv	a4,a5
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1083 42
	li	a1,12
	mv	a0,a5
	call	EF_Ctrl_Get_Trim_Parity
	mv	a5,a0
	.loc 1 1083 11 discriminator 1
	bne	s1,a5,.L109
	.loc 1 1087 32
	lw	a5,-64(s0)
	mv	a4,a5
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a4,a5
	.loc 1 1087 26
	lw	a5,-68(s0)
	sh	a4,0(a5)
	.loc 1 1089 46
	lw	a4,-64(s0)
	li	a5,16384
	and	a5,a4,a5
	.loc 1 1089 15
	bne	a5,zero,.L110
	.loc 1 1095 27
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 1095 24
	lw	a5,0(a5)
	sw	a5,-44(s0)
	.loc 1 1096 24
	lw	a4,-44(s0)
	li	a5,-524288
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-44(s0)
	.loc 1 1097 19
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 1097 73
	lw	a4,-44(s0)
	sw	a4,0(a5)
	.loc 1 1099 34
	sb	zero,-33(s0)
	.loc 1 1099 17
	j	.L111
.L112:
	.loc 1 1100 36
	call	TSEN_Get_V_Error
	mv	a4,a0
	.loc 1 1100 33 discriminator 1
	lw	a5,-40(s0)
	add	a5,a5,a4
	sw	a5,-40(s0)
	.loc 1 1099 67 discriminator 3
	lbu	a5,-33(s0)
	addi	a5,a5,1
	sb	a5,-33(s0)
.L111:
	.loc 1 1099 50 discriminator 1
	lbu	a4,-33(s0)
	li	a5,49
	bleu	a4,a5,.L112
	.loc 1 1103 29
	lw	a4,-40(s0)
	li	a5,1374388224
	addi	a5,a5,1311
	mulhu	a5,a4,a5
	srli	a5,a5,4
	sw	a5,-40(s0)
	.loc 1 1106 20
	lw	a5,-40(s0)
	fcvt.s.wu	fa5,a5
	fsw	fa5,-48(s0)
	.loc 1 1108 29
	sw	zero,-40(s0)
	.loc 1 1111 27
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 1111 24
	lw	a5,0(a5)
	sw	a5,-44(s0)
	.loc 1 1112 24
	lw	a4,-44(s0)
	li	a5,524288
	or	a5,a4,a5
	sw	a5,-44(s0)
	.loc 1 1113 19
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 1113 73
	lw	a4,-44(s0)
	sw	a4,0(a5)
	.loc 1 1115 34
	sb	zero,-33(s0)
	.loc 1 1115 17
	j	.L113
.L114:
	.loc 1 1116 36
	call	TSEN_Get_V_Error
	mv	a4,a0
	.loc 1 1116 33 discriminator 1
	lw	a5,-40(s0)
	add	a5,a5,a4
	sw	a5,-40(s0)
	.loc 1 1115 67 discriminator 3
	lbu	a5,-33(s0)
	addi	a5,a5,1
	sb	a5,-33(s0)
.L113:
	.loc 1 1115 50 discriminator 1
	lbu	a4,-33(s0)
	li	a5,49
	bleu	a4,a5,.L114
	.loc 1 1119 29
	lw	a4,-40(s0)
	li	a5,1374388224
	addi	a5,a5,1311
	mulhu	a5,a4,a5
	srli	a5,a5,4
	sw	a5,-40(s0)
	.loc 1 1122 20
	lw	a5,-40(s0)
	fcvt.s.wu	fa5,a5
	fsw	fa5,-52(s0)
	.loc 1 1125 21
	lw	a5,-68(s0)
	lhu	a5,0(a5)
	.loc 1 1125 19
	fcvt.s.wu	fa5,a5
	fsw	fa5,-56(s0)
	.loc 1 1127 28
	flw	fa0,-52(s0)
	call	__extendsfdf2
	mv	s2,a0
	mv	s3,a1
	.loc 1 1127 44
	flw	fa0,-48(s0)
	call	__extendsfdf2
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(.LC9)
	lw	a2,%lo(.LC9)(a3)
	lw	a3,%lo(.LC9+4)(a3)
	mv	a0,a4
	mv	a1,a5
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	.loc 1 1127 28
	mv	a2,a4
	mv	a3,a5
	mv	a0,s2
	mv	a1,s3
	call	__subdf3
	mv	a4,a0
	mv	a5,a1
	mv	s2,a4
	mv	s3,a5
	.loc 1 1127 65
	flw	fa0,-56(s0)
	call	__extendsfdf2
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(.LC10)
	lw	a2,%lo(.LC10)(a3)
	lw	a3,%lo(.LC10+4)(a3)
	mv	a0,a4
	mv	a1,a5
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	.loc 1 1127 50
	mv	a2,a4
	mv	a3,a5
	mv	a0,s2
	mv	a1,s3
	call	__adddf3
	mv	a4,a0
	mv	a5,a1
	mv	a0,a4
	mv	a1,a5
	.loc 1 1127 69
	lui	a5,%hi(.LC11)
	lw	a2,%lo(.LC11)(a5)
	lw	a3,%lo(.LC11+4)(a5)
	call	__adddf3
	mv	a4,a0
	mv	a5,a1
	.loc 1 1127 23
	mv	a0,a4
	mv	a1,a5
	call	__truncdfsf2
	fmv.s	fa5,fa0
	fsw	fa5,-60(s0)
	.loc 1 1131 38
	flw	fa4,-60(s0)
	flw	fa5,-56(s0)
	fadd.s	fa5,fa4,fa5
	.loc 1 1131 30
	fcvt.wu.s a5,fa5,rtz
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-68(s0)
	sh	a4,0(a5)
.L110:
	.loc 1 1134 20
	li	a5,0
	j	.L116
.L109:
	.loc 1 1138 12
	li	a5,1
.L116:
	.loc 1 1139 1
	mv	a0,a5
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	ADC_Trim_TSEN, .-ADC_Trim_TSEN
	.section	.text.ADC_SET_TSVBE_LOW,"ax",@progbits
	.align	1
	.globl	ADC_SET_TSVBE_LOW
	.type	ADC_SET_TSVBE_LOW, @function
ADC_SET_TSVBE_LOW:
.LFB31:
	.loc 1 1150 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1152 13
	li	a5,1073807360
	addi	a5,a5,-1772
	.loc 1 1152 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1153 11
	lw	a4,-20(s0)
	li	a5,-2147483648
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1154 7
	li	a5,1073807360
	addi	a5,a5,-1772
	.loc 1 1154 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1155 1
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
	.size	ADC_SET_TSVBE_LOW, .-ADC_SET_TSVBE_LOW
	.section	.text.ADC_SET_TSVBE_HIGH,"ax",@progbits
	.align	1
	.globl	ADC_SET_TSVBE_HIGH
	.type	ADC_SET_TSVBE_HIGH, @function
ADC_SET_TSVBE_HIGH:
.LFB32:
	.loc 1 1166 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1168 13
	li	a5,1073807360
	addi	a5,a5,-1772
	.loc 1 1168 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1169 11
	lw	a4,-20(s0)
	li	a5,-2147483648
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1170 7
	li	a5,1073807360
	addi	a5,a5,-1772
	.loc 1 1170 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1171 1
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
	.size	ADC_SET_TSVBE_HIGH, .-ADC_SET_TSVBE_HIGH
	.section	.text.TSEN_Get_Temp,"ax",@progbits
	.align	1
	.globl	TSEN_Get_Temp
	.type	TSEN_Get_Temp, @function
TSEN_Get_Temp:
.LFB33:
	.loc 1 1182 1
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
	.loc 1 1183 14
	sw	zero,-24(s0)
	.loc 1 1183 22
	sw	zero,-28(s0)
	.loc 1 1184 11
	sw	zero,-20(s0)
	.loc 1 1185 14
	sw	zero,-40(s0)
	.loc 1 1188 13
	sb	zero,-29(s0)
	.loc 1 1191 15
	li	a5,1073750016
	.loc 1 1191 12
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 1192 12
	lw	a5,-36(s0)
	ori	a5,a5,2
	sw	a5,-36(s0)
	.loc 1 1193 7
	li	a5,1073750016
	.loc 1 1193 59
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 1195 5
	call	ADC_SET_TSVBE_LOW
	.loc 1 1197 5
	call	ADC_Start
	.loc 1 1198 11
	nop
.L120:
	.loc 1 1198 12 discriminator 2
	call	ADC_Get_FIFO_Count
	mv	a5,a0
	.loc 1 1198 33 discriminator 2
	beq	a5,zero,.L120
	.loc 1 1200 14
	call	ADC_Read_FIFO
	mv	a5,a0
	.loc 1 1200 12 discriminator 1
	sw	a5,-40(s0)
	.loc 1 1202 19
	lui	a5,%hi(adcGainCoeffCal)
	addi	a5,a5,%lo(adcGainCoeffCal)
	lbu	a5,0(a5)
	sb	a5,-29(s0)
	.loc 1 1203 39
	lui	a5,%hi(adcGainCoeffCal)
	addi	a5,a5,%lo(adcGainCoeffCal)
	sb	zero,0(a5)
	.loc 1 1204 5
	addi	a4,s0,-48
	addi	a5,s0,-40
	mv	a2,a4
	li	a1,1
	mv	a0,a5
	call	ADC_Parse_Result
	.loc 1 1205 39
	lui	a5,%hi(adcGainCoeffCal)
	addi	a5,a5,%lo(adcGainCoeffCal)
	lbu	a4,-29(s0)
	sb	a4,0(a5)
	.loc 1 1206 16
	lhu	a5,-46(s0)
	.loc 1 1206 8
	sw	a5,-24(s0)
	.loc 1 1209 15
	li	a5,1073750016
	.loc 1 1209 12
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 1210 12
	lw	a5,-36(s0)
	ori	a5,a5,2
	sw	a5,-36(s0)
	.loc 1 1211 7
	li	a5,1073750016
	.loc 1 1211 59
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 1214 5
	call	ADC_SET_TSVBE_HIGH
	.loc 1 1216 5
	call	ADC_Start
	.loc 1 1217 11
	nop
.L121:
	.loc 1 1217 12 discriminator 2
	call	ADC_Get_FIFO_Count
	mv	a5,a0
	.loc 1 1217 33 discriminator 2
	beq	a5,zero,.L121
	.loc 1 1219 14
	call	ADC_Read_FIFO
	mv	a5,a0
	.loc 1 1219 12 discriminator 1
	sw	a5,-40(s0)
	.loc 1 1220 19
	lui	a5,%hi(adcGainCoeffCal)
	addi	a5,a5,%lo(adcGainCoeffCal)
	lbu	a5,0(a5)
	sb	a5,-29(s0)
	.loc 1 1221 39
	lui	a5,%hi(adcGainCoeffCal)
	addi	a5,a5,%lo(adcGainCoeffCal)
	sb	zero,0(a5)
	.loc 1 1222 5
	addi	a4,s0,-48
	addi	a5,s0,-40
	mv	a2,a4
	li	a1,1
	mv	a0,a5
	call	ADC_Parse_Result
	.loc 1 1223 39
	lui	a5,%hi(adcGainCoeffCal)
	addi	a5,a5,%lo(adcGainCoeffCal)
	lbu	a4,-29(s0)
	sb	a4,0(a5)
	.loc 1 1224 16
	lhu	a5,-46(s0)
	.loc 1 1224 8
	sw	a5,-28(s0)
	.loc 1 1226 8
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	bleu	a4,a5,.L122
	.loc 1 1228 18
	lw	a5,-24(s0)
	fcvt.s.wu	fa4,a5
	.loc 1 1228 30
	lw	a5,-28(s0)
	fcvt.s.wu	fa5,a5
	.loc 1 1228 28
	fsub.s	fa4,fa4,fa5
	.loc 1 1228 43
	lw	a5,-52(s0)
	fcvt.s.wu	fa5,a5
	.loc 1 1228 41
	fsub.s	fa5,fa4,fa5
	fmv.s	fa0,fa5
	call	__extendsfdf2
	mv	a4,a0
	mv	a5,a1
	.loc 1 1228 63
	lui	a3,%hi(.LC12)
	lw	a2,%lo(.LC12)(a3)
	lw	a3,%lo(.LC12+4)(a3)
	mv	a0,a4
	mv	a1,a5
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	.loc 1 1228 14
	mv	a0,a4
	mv	a1,a5
	call	__truncdfsf2
	fmv.s	fa5,fa0
	fsw	fa5,-20(s0)
	j	.L123
.L122:
	.loc 1 1232 18
	lw	a5,-28(s0)
	fcvt.s.wu	fa4,a5
	.loc 1 1232 30
	lw	a5,-24(s0)
	fcvt.s.wu	fa5,a5
	.loc 1 1232 28
	fsub.s	fa4,fa4,fa5
	.loc 1 1232 43
	lw	a5,-52(s0)
	fcvt.s.wu	fa5,a5
	.loc 1 1232 41
	fsub.s	fa5,fa4,fa5
	fmv.s	fa0,fa5
	call	__extendsfdf2
	mv	a4,a0
	mv	a5,a1
	.loc 1 1232 63
	lui	a3,%hi(.LC12)
	lw	a2,%lo(.LC12)(a3)
	lw	a3,%lo(.LC12+4)(a3)
	mv	a0,a4
	mv	a1,a5
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	.loc 1 1232 14
	mv	a0,a4
	mv	a1,a5
	call	__truncdfsf2
	fmv.s	fa5,fa0
	fsw	fa5,-20(s0)
.L123:
	.loc 1 1235 12
	flw	fa5,-20(s0)
	.loc 1 1236 1
	fmv.s	fa0,fa5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	TSEN_Get_Temp, .-TSEN_Get_Temp
	.section	.text.ADC_Mic_Init,"ax",@progbits
	.align	1
	.globl	ADC_Mic_Init
	.type	ADC_Mic_Init, @function
ADC_Mic_Init:
.LFB34:
	.loc 1 1248 1
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
	.loc 1 1249 14
	sw	zero,-20(s0)
	.loc 1 1249 24
	sw	zero,-24(s0)
	.loc 1 1260 16
	li	a5,1073807360
	addi	a5,a5,-1772
	.loc 1 1260 13
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1262 14
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 1262 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1263 25
	lw	a4,-20(s0)
	li	a5,-8388608
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1263 82
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 1263 95
	slli	a5,a5,23
	.loc 1 1263 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1264 25
	lw	a4,-20(s0)
	li	a5,-6291456
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1264 82
	lw	a5,-36(s0)
	lbu	a5,1(a5)
	.loc 1 1264 96
	slli	a5,a5,21
	.loc 1 1264 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1265 25
	lw	a4,-20(s0)
	li	a5,-1048576
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1265 82
	lw	a5,-36(s0)
	lbu	a5,2(a5)
	.loc 1 1265 93
	slli	a5,a5,20
	.loc 1 1265 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1266 25
	lw	a4,-20(s0)
	li	a5,-524288
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1266 82
	lw	a5,-36(s0)
	lbu	a5,3(a5)
	.loc 1 1266 93
	slli	a5,a5,19
	.loc 1 1266 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1267 25
	lw	a4,-20(s0)
	li	a5,-262144
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1267 82
	lw	a5,-36(s0)
	lbu	a5,4(a5)
	.loc 1 1267 90
	slli	a5,a5,18
	.loc 1 1267 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1268 25
	lw	a4,-20(s0)
	li	a5,-65536
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1268 82
	lw	a5,-36(s0)
	lbu	a5,5(a5)
	.loc 1 1268 101
	slli	a5,a5,16
	.loc 1 1268 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1270 20
	lw	a4,-24(s0)
	li	a5,8192
	and	a5,a4,a5
	.loc 1 1270 7
	beq	a5,zero,.L126
	.loc 1 1270 59 discriminator 1
	lw	a5,-36(s0)
	lbu	a4,6(a5)
	.loc 1 1270 42 discriminator 1
	li	a5,1
	bne	a4,a5,.L126
	.loc 1 1272 16
	li	a5,1
	j	.L127
.L126:
	.loc 1 1274 29
	lw	a4,-20(s0)
	li	a5,-32768
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1274 86
	lw	a5,-36(s0)
	lbu	a5,6(a5)
	.loc 1 1274 97
	slli	a5,a5,15
	.loc 1 1274 16
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1277 25
	lw	a4,-20(s0)
	li	a5,-16384
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 1277 82
	lw	a5,-36(s0)
	lbu	a5,7(a5)
	.loc 1 1277 94
	slli	a5,a5,14
	.loc 1 1277 12
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1279 7
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 1279 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1281 12
	li	a5,0
.L127:
	.loc 1 1283 1
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
.LFE34:
	.size	ADC_Mic_Init, .-ADC_Mic_Init
	.section	.text.ADC_MIC_Bias_Enable,"ax",@progbits
	.align	1
	.globl	ADC_MIC_Bias_Enable
	.type	ADC_MIC_Bias_Enable, @function
ADC_MIC_Bias_Enable:
.LFB35:
	.loc 1 1295 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1298 13
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 1298 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1299 11
	lw	a4,-20(s0)
	li	a5,16384
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1300 7
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 1300 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1301 1
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
	.size	ADC_MIC_Bias_Enable, .-ADC_MIC_Bias_Enable
	.section	.text.ADC_MIC_Bias_Disable,"ax",@progbits
	.align	1
	.globl	ADC_MIC_Bias_Disable
	.type	ADC_MIC_Bias_Disable, @function
ADC_MIC_Bias_Disable:
.LFB36:
	.loc 1 1313 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1316 13
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 1316 11
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1317 11
	lw	a4,-20(s0)
	li	a5,-16384
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1318 7
	li	a5,1073807360
	addi	a5,a5,-1780
	.loc 1 1318 61
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 1319 1
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
	.size	ADC_MIC_Bias_Disable, .-ADC_MIC_Bias_Disable
	.section	.sclock_rlt_code
	.align	1
	.globl	ADC_Gain_Trim
	.type	ADC_Gain_Trim, @function
ADC_Gain_Trim:
.LFB37:
	.loc 1 1331 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1335 5
	addi	a5,s0,-24
	mv	a0,a5
	call	EF_Ctrl_Read_ADC_Gain_Trim
	.loc 1 1337 8
	lw	a4,-24(s0)
	li	a5,8192
	and	a5,a4,a5
	.loc 1 1337 7
	beq	a5,zero,.L131
	.loc 1 1338 16
	lw	a5,-24(s0)
	srli	a5,a5,12
	andi	a5,a5,1
	andi	a5,a5,0xff
	mv	s1,a5
	.loc 1 1338 65
	lw	a5,-24(s0)
	mv	a4,a5
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1338 37
	li	a1,12
	mv	a0,a5
	call	EF_Ctrl_Get_Trim_Parity
	mv	a5,a0
	.loc 1 1338 11 discriminator 1
	bne	s1,a5,.L131
	.loc 1 1339 48
	lui	a5,%hi(adcGainCoeffCal)
	addi	a5,a5,%lo(adcGainCoeffCal)
	li	a4,1
	sb	a4,0(a5)
	.loc 1 1340 51
	lw	a5,-24(s0)
	mv	a4,a5
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a4,a5
	.loc 1 1340 45
	lui	a5,%hi(adcGainCoeffCal)
	addi	a5,a5,%lo(adcGainCoeffCal)
	sh	a4,2(a5)
	.loc 1 1341 32
	lui	a5,%hi(adcGainCoeffCal)
	addi	a5,a5,%lo(adcGainCoeffCal)
	lhu	a5,2(a5)
	.loc 1 1341 16
	sw	a5,-20(s0)
	.loc 1 1342 20
	lw	a4,-20(s0)
	li	a5,4096
	addi	a5,a5,-2048
	and	a5,a4,a5
	.loc 1 1342 15
	beq	a5,zero,.L132
	.loc 1 1343 21
	lw	a5,-20(s0)
	not	a5,a5
	sw	a5,-20(s0)
	.loc 1 1344 21
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 1345 21
	lw	a4,-20(s0)
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1347 43
	lw	a5,-20(s0)
	fcvt.s.wu	fa5,a5
	fmv.s	fa0,fa5
	call	__extendsfdf2
	mv	a4,a0
	mv	a5,a1
	.loc 1 1347 53
	lui	a3,%hi(.LC6)
	lw	a2,%lo(.LC6)(a3)
	lw	a3,%lo(.LC6+4)(a3)
	mv	a0,a4
	mv	a1,a5
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	mv	a0,a4
	mv	a1,a5
	.loc 1 1347 41
	lui	a5,%hi(.LC13)
	lw	a2,%lo(.LC13)(a5)
	lw	a3,%lo(.LC13+4)(a5)
	call	__adddf3
	mv	a4,a0
	mv	a5,a1
	mv	a0,a4
	mv	a1,a5
	call	__truncdfsf2
	fmv.s	fa5,fa0
	.loc 1 1347 36
	lui	a5,%hi(adcGainCoeffCal)
	addi	a5,a5,%lo(adcGainCoeffCal)
	fsw	fa5,4(a5)
	j	.L133
.L132:
	.loc 1 1350 43
	lw	a5,-20(s0)
	fcvt.s.wu	fa5,a5
	fmv.s	fa0,fa5
	call	__extendsfdf2
	mv	a4,a0
	mv	a5,a1
	.loc 1 1350 53
	lui	a3,%hi(.LC6)
	lw	a2,%lo(.LC6)(a3)
	lw	a3,%lo(.LC6+4)(a3)
	mv	a0,a4
	mv	a1,a5
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	.loc 1 1350 41
	lui	a5,%hi(.LC13)
	lw	a0,%lo(.LC13)(a5)
	lw	a1,%lo(.LC13+4)(a5)
	call	__subdf3
	mv	a4,a0
	mv	a5,a1
	mv	a0,a4
	mv	a1,a5
	call	__truncdfsf2
	fmv.s	fa5,fa0
	.loc 1 1350 36
	lui	a5,%hi(adcGainCoeffCal)
	addi	a5,a5,%lo(adcGainCoeffCal)
	fsw	fa5,4(a5)
.L133:
	.loc 1 1354 20
	li	a5,0
	j	.L135
.L131:
	.loc 1 1358 12
	li	a5,1
.L135:
	.loc 1 1359 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE37:
	.size	ADC_Gain_Trim, .-ADC_Gain_Trim
	.section	.rodata
	.align	2
.LC0:
	.word	1073741824
	.align	2
.LC1:
	.word	1065353216
	.align	2
.LC2:
	.word	1078774989
	.align	3
.LC3:
	.word	0
	.word	1085276160
	.align	3
.LC4:
	.word	0
	.word	1087373312
	.align	3
.LC5:
	.word	0
	.word	1089470464
	.align	3
.LC6:
	.word	0
	.word	1084227584
	.align	3
.LC7:
	.word	0
	.word	1086324736
	.align	3
.LC8:
	.word	0
	.word	1088421888
	.align	3
.LC9:
	.word	-972099360
	.word	1073091221
	.align	3
.LC10:
	.word	406569858
	.word	1071139415
	.align	3
.LC11:
	.word	0
	.word	1079115776
	.align	3
.LC12:
	.word	1855425872
	.word	1075774226
	.align	3
.LC13:
	.word	0
	.word	1072693248
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_adc.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_ef_ctrl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xfe0
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1a
	.4byte	.LASF246
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x3e
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x25
	.byte	0x13
	.4byte	0x51
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x2b
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x7e
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x91
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x9
	.byte	0x10
	.byte	0x4
	.4byte	.LASF16
	.uleb128 0x1c
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x4
	.4byte	0x2b
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0xbc
	.uleb128 0x4
	.4byte	0x2b
	.byte	0x3
	.byte	0x21
	.byte	0x1
	.4byte	0x100
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x3
	.byte	0x24
	.byte	0x2
	.4byte	0xe7
	.uleb128 0x4
	.4byte	0x2b
	.byte	0x3
	.byte	0x2a
	.byte	0x1
	.4byte	0x125
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0
	.uleb128 0x1d
	.string	"SET"
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x3
	.byte	0x2d
	.byte	0x2
	.4byte	0x10c
	.uleb128 0x4
	.4byte	0x2b
	.byte	0x3
	.byte	0x33
	.byte	0x1
	.4byte	0x14a
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x3
	.byte	0x36
	.byte	0x2
	.4byte	0x131
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x3
	.byte	0x7c
	.byte	0xf
	.4byte	0xb4
	.uleb128 0xb
	.4byte	0x156
	.uleb128 0x4
	.4byte	0x2b
	.byte	0x4
	.byte	0x3a
	.byte	0xe
	.4byte	0x204
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x17
	.byte	0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x4
	.byte	0x53
	.byte	0x2
	.4byte	0x167
	.uleb128 0x4
	.4byte	0x2b
	.byte	0x4
	.byte	0x58
	.byte	0xe
	.4byte	0x235
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x4
	.byte	0x5d
	.byte	0x2
	.4byte	0x210
	.uleb128 0x4
	.4byte	0x2b
	.byte	0x4
	.byte	0x62
	.byte	0xe
	.4byte	0x266
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x4
	.byte	0x67
	.byte	0x2
	.4byte	0x241
	.uleb128 0x4
	.4byte	0x2b
	.byte	0x4
	.byte	0x6c
	.byte	0xe
	.4byte	0x2af
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x4
	.byte	0x75
	.byte	0x2
	.4byte	0x272
	.uleb128 0x4
	.4byte	0x2b
	.byte	0x4
	.byte	0x88
	.byte	0xe
	.4byte	0x2f2
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x4
	.byte	0x90
	.byte	0x2
	.4byte	0x2bb
	.uleb128 0x4
	.4byte	0x2b
	.byte	0x4
	.byte	0x95
	.byte	0xe
	.4byte	0x317
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x4
	.byte	0x98
	.byte	0x2
	.4byte	0x2fe
	.uleb128 0x4
	.4byte	0x2b
	.byte	0x4
	.byte	0x9d
	.byte	0xe
	.4byte	0x348
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0x4
	.byte	0xa2
	.byte	0x2
	.4byte	0x323
	.uleb128 0x4
	.4byte	0x2b
	.byte	0x4
	.byte	0xa7
	.byte	0xe
	.4byte	0x379
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
	.byte	0
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0x4
	.byte	0xac
	.byte	0x2
	.4byte	0x354
	.uleb128 0x4
	.4byte	0x2b
	.byte	0x4
	.byte	0xb1
	.byte	0xe
	.4byte	0x39e
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF98
	.byte	0x4
	.byte	0xb4
	.byte	0x2
	.4byte	0x385
	.uleb128 0x4
	.4byte	0x2b
	.byte	0x4
	.byte	0xb9
	.byte	0xe
	.4byte	0x3c3
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0x4
	.byte	0xbc
	.byte	0x2
	.4byte	0x3aa
	.uleb128 0x4
	.4byte	0x2b
	.byte	0x4
	.byte	0xc1
	.byte	0xe
	.4byte	0x3e8
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0x4
	.byte	0xc4
	.byte	0x2
	.4byte	0x3cf
	.uleb128 0x4
	.4byte	0x2b
	.byte	0x4
	.byte	0xc9
	.byte	0xe
	.4byte	0x41f
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0x4
	.byte	0xcf
	.byte	0x2
	.4byte	0x3f4
	.uleb128 0x4
	.4byte	0x2b
	.byte	0x4
	.byte	0xd4
	.byte	0xe
	.4byte	0x444
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0x4
	.byte	0xd7
	.byte	0x2
	.4byte	0x42b
	.uleb128 0x4
	.4byte	0x2b
	.byte	0x4
	.byte	0xdc
	.byte	0xe
	.4byte	0x475
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0x4
	.byte	0xe1
	.byte	0x2
	.4byte	0x450
	.uleb128 0x4
	.4byte	0x2b
	.byte	0x4
	.byte	0xe6
	.byte	0xe
	.4byte	0x49a
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0x4
	.byte	0xe9
	.byte	0x2
	.4byte	0x481
	.uleb128 0x11
	.byte	0x8
	.byte	0x4
	.byte	0xee
	.4byte	0x50f
	.uleb128 0xa
	.4byte	.LASF122
	.byte	0xef
	.byte	0x1a
	.4byte	0x444
	.byte	0
	.uleb128 0xa
	.4byte	.LASF123
	.byte	0xf0
	.byte	0x18
	.4byte	0x475
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF124
	.byte	0xf1
	.byte	0x17
	.4byte	0x49a
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF125
	.byte	0xf2
	.byte	0x17
	.4byte	0x49a
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF126
	.byte	0xf3
	.byte	0x11
	.4byte	0x100
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF127
	.byte	0xf4
	.byte	0x11
	.4byte	0x100
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF128
	.byte	0xf5
	.byte	0x11
	.4byte	0x100
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF129
	.byte	0xf6
	.byte	0x11
	.4byte	0x100
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF130
	.byte	0x4
	.byte	0xf7
	.byte	0x2
	.4byte	0x4a6
	.uleb128 0x11
	.byte	0xe
	.byte	0x4
	.byte	0xfc
	.4byte	0x5ca
	.uleb128 0xa
	.4byte	.LASF131
	.byte	0xfd
	.byte	0x16
	.4byte	0x235
	.byte	0
	.uleb128 0xa
	.4byte	.LASF132
	.byte	0xfe
	.byte	0x16
	.4byte	0x266
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF133
	.byte	0xff
	.byte	0x12
	.4byte	0x2af
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF134
	.2byte	0x100
	.byte	0x17
	.4byte	0x2f2
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF135
	.2byte	0x101
	.byte	0x17
	.4byte	0x2f2
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF136
	.2byte	0x102
	.byte	0x17
	.4byte	0x348
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF137
	.2byte	0x103
	.byte	0x17
	.4byte	0x317
	.byte	0x6
	.uleb128 0x16
	.string	"vcm"
	.2byte	0x104
	.byte	0x16
	.4byte	0x379
	.byte	0x7
	.uleb128 0x5
	.4byte	.LASF138
	.2byte	0x105
	.byte	0x13
	.4byte	0x3c3
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF139
	.2byte	0x106
	.byte	0x18
	.4byte	0x3e8
	.byte	0x9
	.uleb128 0x5
	.4byte	.LASF140
	.2byte	0x107
	.byte	0x19
	.4byte	0x41f
	.byte	0xa
	.uleb128 0x5
	.4byte	.LASF141
	.2byte	0x108
	.byte	0x11
	.4byte	0x100
	.byte	0xb
	.uleb128 0x5
	.4byte	.LASF142
	.2byte	0x109
	.byte	0xd
	.4byte	0x45
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.4byte	.LASF143
	.2byte	0x10a
	.4byte	0x51b
	.uleb128 0x13
	.byte	0x8
	.2byte	0x10f
	.4byte	0x612
	.uleb128 0x5
	.4byte	.LASF144
	.2byte	0x110
	.byte	0xc
	.4byte	0x32
	.byte	0
	.uleb128 0x5
	.4byte	.LASF145
	.2byte	0x111
	.byte	0xc
	.4byte	0x32
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF146
	.2byte	0x112
	.byte	0xe
	.4byte	0x72
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF147
	.2byte	0x113
	.byte	0xb
	.4byte	0x612
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.4byte	.LASF148
	.uleb128 0xe
	.4byte	.LASF149
	.2byte	0x114
	.4byte	0x5d5
	.uleb128 0x17
	.4byte	0x2b
	.2byte	0x119
	.4byte	0x648
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
	.byte	0
	.uleb128 0xe
	.4byte	.LASF154
	.2byte	0x11e
	.4byte	0x624
	.uleb128 0x17
	.4byte	0x2b
	.2byte	0x123
	.4byte	0x683
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF157
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF158
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF159
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF160
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.4byte	.LASF161
	.2byte	0x12a
	.4byte	0x653
	.uleb128 0x13
	.byte	0x2
	.2byte	0x12f
	.4byte	0x6b1
	.uleb128 0x5
	.4byte	.LASF162
	.2byte	0x130
	.byte	0x1d
	.4byte	0x648
	.byte	0
	.uleb128 0x5
	.4byte	.LASF163
	.2byte	0x131
	.byte	0x11
	.4byte	0x100
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF164
	.2byte	0x132
	.4byte	0x68e
	.uleb128 0x13
	.byte	0x8
	.2byte	0x137
	.4byte	0x6ec
	.uleb128 0x5
	.4byte	.LASF165
	.2byte	0x138
	.byte	0x11
	.4byte	0x100
	.byte	0
	.uleb128 0x5
	.4byte	.LASF166
	.2byte	0x139
	.byte	0xe
	.4byte	0x72
	.byte	0x2
	.uleb128 0x16
	.string	"coe"
	.2byte	0x13a
	.byte	0xb
	.4byte	0x612
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF167
	.2byte	0x13b
	.4byte	0x6bc
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.byte	0x98
	.4byte	0x73c
	.uleb128 0xd
	.4byte	.LASF168
	.byte	0x99
	.4byte	0x85
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF169
	.byte	0x9a
	.4byte	0x85
	.byte	0x1
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF170
	.byte	0x9b
	.4byte	0x85
	.byte	0x1
	.byte	0xd
	.uleb128 0xd
	.4byte	.LASF171
	.byte	0x9c
	.4byte	0x85
	.byte	0x1
	.byte	0xe
	.uleb128 0xd
	.4byte	.LASF172
	.byte	0x9d
	.4byte	0x85
	.byte	0x11
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF173
	.byte	0x5
	.byte	0x9e
	.byte	0x2
	.4byte	0x6f7
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.byte	0xa3
	.4byte	0x781
	.uleb128 0xd
	.4byte	.LASF174
	.byte	0xa4
	.4byte	0x85
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF175
	.byte	0xa5
	.4byte	0x85
	.byte	0x1
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF176
	.byte	0xa6
	.4byte	0x85
	.byte	0x1
	.byte	0xd
	.uleb128 0xd
	.4byte	.LASF172
	.byte	0xa7
	.4byte	0x85
	.byte	0x12
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.4byte	.LASF177
	.byte	0x5
	.byte	0xa8
	.byte	0x2
	.4byte	0x748
	.uleb128 0x1e
	.4byte	0x162
	.4byte	0x79d
	.uleb128 0x1f
	.4byte	0xa6
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF178
	.byte	0x43
	.byte	0x1b
	.4byte	0x78d
	.uleb128 0x5
	.byte	0x3
	.4byte	adcIntCbfArra
	.uleb128 0xc
	.4byte	.LASF179
	.byte	0x44
	.byte	0x1c
	.4byte	0x6ec
	.uleb128 0x5
	.byte	0x3
	.4byte	adcGainCoeffCal
	.uleb128 0x18
	.4byte	.LASF180
	.2byte	0x11a
	.4byte	0x7d0
	.uleb128 0x10
	.4byte	0x7d0
	.byte	0
	.uleb128 0xb
	.4byte	0x781
	.uleb128 0x20
	.4byte	.LASF247
	.byte	0x5
	.2byte	0x114
	.byte	0x9
	.4byte	0x66
	.4byte	0x7f1
	.uleb128 0x10
	.4byte	0x85
	.uleb128 0x10
	.4byte	0x66
	.byte	0
	.uleb128 0x18
	.4byte	.LASF181
	.2byte	0x119
	.4byte	0x802
	.uleb128 0x10
	.4byte	0x802
	.byte	0
	.uleb128 0xb
	.4byte	0x73c
	.uleb128 0x21
	.4byte	.LASF182
	.byte	0x3
	.byte	0x88
	.byte	0x6
	.4byte	0x819
	.uleb128 0x10
	.4byte	0x85
	.byte	0
	.uleb128 0x12
	.4byte	.LASF187
	.2byte	0x532
	.byte	0x3a
	.4byte	0xdb
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x852
	.uleb128 0x2
	.4byte	.LASF183
	.2byte	0x534
	.byte	0x1f
	.4byte	0x781
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"tmp"
	.2byte	0x535
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF185
	.2byte	0x520
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x877
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x522
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF186
	.2byte	0x50e
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x89c
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x510
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF188
	.2byte	0x4df
	.byte	0xd
	.4byte	0xdb
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8e4
	.uleb128 0x6
	.4byte	.LASF192
	.2byte	0x4df
	.byte	0x29
	.4byte	0x8e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF189
	.2byte	0x4e1
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF190
	.2byte	0x4e1
	.byte	0x18
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	0x50f
	.uleb128 0x12
	.4byte	.LASF191
	.2byte	0x49d
	.byte	0x7
	.4byte	0x612
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x97a
	.uleb128 0x6
	.4byte	.LASF193
	.2byte	0x49d
	.byte	0x1e
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.string	"v0"
	.2byte	0x49f
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"v1"
	.2byte	0x49f
	.byte	0x16
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF194
	.2byte	0x4a0
	.byte	0xb
	.4byte	0x612
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF195
	.2byte	0x4a1
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF196
	.2byte	0x4a2
	.byte	0x15
	.4byte	0x619
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x4a3
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF197
	.2byte	0x4a4
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.byte	0
	.uleb128 0x8
	.4byte	.LASF198
	.2byte	0x48d
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x99f
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x48f
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF199
	.2byte	0x47d
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9c4
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x47f
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF200
	.2byte	0x430
	.byte	0x3a
	.4byte	0xdb
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa63
	.uleb128 0x6
	.4byte	.LASF193
	.2byte	0x430
	.byte	0x53
	.4byte	0xa63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF201
	.2byte	0x432
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF202
	.2byte	0x433
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x434
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"A1"
	.2byte	0x435
	.byte	0xb
	.4byte	0x612
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.string	"A2"
	.2byte	0x435
	.byte	0x12
	.4byte	0x612
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.string	"C"
	.2byte	0x435
	.byte	0x19
	.4byte	0x612
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF203
	.2byte	0x435
	.byte	0x1f
	.4byte	0x612
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF183
	.2byte	0x436
	.byte	0x24
	.4byte	0x73c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xb
	.4byte	0x72
	.uleb128 0x12
	.4byte	.LASF204
	.2byte	0x3f6
	.byte	0xa
	.4byte	0x85
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaea
	.uleb128 0x7
	.string	"v0"
	.2byte	0x3f8
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"v1"
	.2byte	0x3f8
	.byte	0x16
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF205
	.2byte	0x3f9
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF195
	.2byte	0x3fa
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF196
	.2byte	0x3fb
	.byte	0x15
	.4byte	0x619
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x3fc
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF197
	.2byte	0x3fd
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.byte	0
	.uleb128 0x8
	.4byte	.LASF206
	.2byte	0x3b5
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb1e
	.uleb128 0x6
	.4byte	.LASF207
	.2byte	0x3b5
	.byte	0x26
	.4byte	0x39e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x3b7
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF208
	.2byte	0x3a4
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb43
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x3a6
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF209
	.2byte	0x393
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb68
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x395
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF210
	.2byte	0x354
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb9c
	.uleb128 0x6
	.4byte	.LASF211
	.2byte	0x354
	.byte	0x2c
	.4byte	0x683
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x6
	.4byte	.LASF212
	.2byte	0x354
	.byte	0x46
	.4byte	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.4byte	.LASF213
	.2byte	0x324
	.byte	0xd
	.4byte	0x125
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbe4
	.uleb128 0x6
	.4byte	.LASF211
	.2byte	0x324
	.byte	0x2b
	.4byte	0x683
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x326
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF214
	.2byte	0x327
	.byte	0x11
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x8
	.4byte	.LASF215
	.2byte	0x2a3
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc18
	.uleb128 0x6
	.4byte	.LASF211
	.2byte	0x2a3
	.byte	0x1e
	.4byte	0x683
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x2a5
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF216
	.2byte	0x23a
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc5b
	.uleb128 0x6
	.4byte	.LASF211
	.2byte	0x23a
	.byte	0x1f
	.4byte	0x683
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x6
	.4byte	.LASF217
	.2byte	0x23a
	.byte	0x35
	.4byte	0x14a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x23c
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF218
	.2byte	0x1ef
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd18
	.uleb128 0x6
	.4byte	.LASF219
	.2byte	0x1ef
	.byte	0x21
	.4byte	0xd18
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.2byte	0x1ef
	.byte	0x31
	.4byte	0x85
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.4byte	.LASF196
	.2byte	0x1ef
	.byte	0x46
	.4byte	0xd1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x7
	.string	"neg"
	.2byte	0x1f1
	.byte	0xd
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.4byte	.LASF189
	.2byte	0x1f2
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF190
	.2byte	0x1f2
	.byte	0x18
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF220
	.2byte	0x1f3
	.byte	0x19
	.4byte	0x41f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x2
	.4byte	.LASF221
	.2byte	0x1f4
	.byte	0x18
	.4byte	0x3e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x7
	.string	"ref"
	.2byte	0x1f5
	.byte	0xb
	.4byte	0x612
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"i"
	.2byte	0x1f6
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"coe"
	.2byte	0x1f8
	.byte	0xb
	.4byte	0x612
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xb
	.4byte	0x85
	.uleb128 0xb
	.4byte	0x619
	.uleb128 0xf
	.4byte	.LASF222
	.2byte	0x1dc
	.byte	0xa
	.4byte	0x85
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd4c
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x1de
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF223
	.2byte	0x1c4
	.byte	0xd
	.4byte	0x125
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd76
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x1c6
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF224
	.2byte	0x1af
	.byte	0xd
	.4byte	0x125
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xda0
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x1b1
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	.LASF225
	.2byte	0x19e
	.byte	0x9
	.4byte	0x66
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdca
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x1a0
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF226
	.2byte	0x17b
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdfe
	.uleb128 0x6
	.4byte	.LASF227
	.2byte	0x17b
	.byte	0x26
	.4byte	0xdfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x17d
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	0x6b1
	.uleb128 0x8
	.4byte	.LASF228
	.2byte	0x169
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe28
	.uleb128 0x2
	.4byte	.LASF229
	.2byte	0x16b
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF230
	.2byte	0x14f
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe4d
	.uleb128 0x2
	.4byte	.LASF229
	.2byte	0x151
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF231
	.2byte	0x113
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeca
	.uleb128 0x6
	.4byte	.LASF232
	.2byte	0x113
	.byte	0x2c
	.4byte	0xeca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF233
	.2byte	0x113
	.byte	0x46
	.4byte	0xeca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF234
	.2byte	0x113
	.byte	0x5a
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x6
	.4byte	.LASF235
	.2byte	0x113
	.byte	0x71
	.4byte	0x100
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x2
	.4byte	.LASF184
	.2byte	0x115
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"i"
	.2byte	0x115
	.byte	0x15
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF236
	.2byte	0x116
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.4byte	0x204
	.uleb128 0x14
	.4byte	.LASF237
	.byte	0xf2
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf27
	.uleb128 0x15
	.4byte	.LASF238
	.byte	0x27
	.4byte	0x204
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x15
	.4byte	.LASF239
	.byte	0x3b
	.4byte	0x204
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x15
	.4byte	.LASF235
	.byte	0x4d
	.4byte	0x100
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0xc
	.4byte	.LASF229
	.byte	0xf4
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF240
	.byte	0xf5
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.4byte	.LASF241
	.byte	0x1
	.byte	0xa0
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf77
	.uleb128 0x24
	.string	"cfg"
	.byte	0x1
	.byte	0xa0
	.byte	0x1d
	.4byte	0xf77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF240
	.byte	0xa2
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.4byte	.LASF242
	.byte	0xa3
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF243
	.byte	0xa4
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.4byte	0x5ca
	.uleb128 0x14
	.4byte	.LASF244
	.byte	0x8e
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf9f
	.uleb128 0xc
	.4byte	.LASF184
	.byte	0x90
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF245
	.byte	0x7d
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfc2
	.uleb128 0xc
	.4byte	.LASF184
	.byte	0x7f
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.4byte	.LASF248
	.byte	0x1
	.byte	0x6a
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF229
	.byte	0x6c
	.byte	0xe
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 242
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x17
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
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.4byte	0x104
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF129:
	.string	"micBiasEn"
.LASF163:
	.string	"dmaEn"
.LASF4:
	.string	"int8_t"
.LASF229:
	.string	"regCmd"
.LASF65:
	.string	"ADC_V11_SEL_Type"
.LASF119:
	.string	"ADC_MIC_MODE_SINGLE"
.LASF158:
	.string	"ADC_INT_FIFO_OVERRUN"
.LASF188:
	.string	"ADC_Mic_Init"
.LASF29:
	.string	"BL_Mask_Type"
.LASF126:
	.string	"dwaEn"
.LASF162:
	.string	"fifoThreshold"
.LASF43:
	.string	"ADC_CHAN_DAC_OUTA"
.LASF44:
	.string	"ADC_CHAN_DAC_OUTB"
.LASF191:
	.string	"TSEN_Get_Temp"
.LASF76:
	.string	"ADC_PGA_GAIN_1"
.LASF77:
	.string	"ADC_PGA_GAIN_2"
.LASF78:
	.string	"ADC_PGA_GAIN_4"
.LASF79:
	.string	"ADC_PGA_GAIN_8"
.LASF226:
	.string	"ADC_FIFO_Cfg"
.LASF55:
	.string	"ADC_Chan_Type"
.LASF137:
	.string	"biasSel"
.LASF31:
	.string	"ADC_CHAN0"
.LASF32:
	.string	"ADC_CHAN1"
.LASF33:
	.string	"ADC_CHAN2"
.LASF34:
	.string	"ADC_CHAN3"
.LASF35:
	.string	"ADC_CHAN4"
.LASF36:
	.string	"ADC_CHAN5"
.LASF37:
	.string	"ADC_CHAN6"
.LASF38:
	.string	"ADC_CHAN7"
.LASF39:
	.string	"ADC_CHAN8"
.LASF40:
	.string	"ADC_CHAN9"
.LASF170:
	.string	"tsenRefcodeCornerEn"
.LASF240:
	.string	"regCfg1"
.LASF242:
	.string	"regCfg2"
.LASF245:
	.string	"ADC_Enable"
.LASF196:
	.string	"result"
.LASF189:
	.string	"tmpVal1"
.LASF190:
	.string	"tmpVal2"
.LASF58:
	.string	"ADC_V18_SEL_1P82V"
.LASF48:
	.string	"ADC_CHAN_DCTEST"
.LASF7:
	.string	"long int"
.LASF96:
	.string	"ADC_TSEN_MOD_INTERNAL_DIODE"
.LASF120:
	.string	"ADC_MIC_MODE_DIFF"
.LASF109:
	.string	"ADC_DATA_WIDTH_16_WITH_256_AVERAGE"
.LASF108:
	.string	"ADC_DATA_WIDTH_16_WITH_128_AVERAGE"
.LASF150:
	.string	"ADC_FIFO_THRESHOLD_1"
.LASF151:
	.string	"ADC_FIFO_THRESHOLD_4"
.LASF152:
	.string	"ADC_FIFO_THRESHOLD_8"
.LASF133:
	.string	"clkDiv"
.LASF83:
	.string	"ADC_BIAS_SEL_MAIN_BANDGAP"
.LASF156:
	.string	"ADC_INT_NEG_SATURATION"
.LASF98:
	.string	"ADC_TSEN_MOD_Type"
.LASF174:
	.string	"adcGainCoeff"
.LASF3:
	.string	"signed char"
.LASF9:
	.string	"uint8_t"
.LASF153:
	.string	"ADC_FIFO_THRESHOLD_16"
.LASF168:
	.string	"tsenRefcodeCorner"
.LASF107:
	.string	"ADC_DATA_WIDTH_16_WITH_64_AVERAGE"
.LASF199:
	.string	"ADC_SET_TSVBE_LOW"
.LASF200:
	.string	"ADC_Trim_TSEN"
.LASF2:
	.string	"unsigned char"
.LASF149:
	.string	"ADC_Result_Type"
.LASF213:
	.string	"ADC_GetIntStatus"
.LASF125:
	.string	"mic2Mode"
.LASF49:
	.string	"ADC_CHAN_VABT_HALF"
.LASF91:
	.string	"ADC_PGA_VCM_1V"
.LASF139:
	.string	"inputMode"
.LASF224:
	.string	"ADC_FIFO_Is_Full"
.LASF182:
	.string	"BL602_Delay_US"
.LASF146:
	.string	"value"
.LASF17:
	.string	"char"
.LASF219:
	.string	"orgVal"
.LASF208:
	.string	"ADC_Vbat_Disable"
.LASF110:
	.string	"ADC_Data_Width_Type"
.LASF80:
	.string	"ADC_PGA_GAIN_16"
.LASF113:
	.string	"ADC_MICBOOST_DB_Type"
.LASF102:
	.string	"ADC_INPUT_SINGLE_END"
.LASF227:
	.string	"fifoCfg"
.LASF217:
	.string	"intMask"
.LASF228:
	.string	"ADC_Stop"
.LASF41:
	.string	"ADC_CHAN10"
.LASF42:
	.string	"ADC_CHAN11"
.LASF121:
	.string	"ADC_MIC_MODE_Type"
.LASF216:
	.string	"ADC_IntMask"
.LASF75:
	.string	"ADC_PGA_GAIN_NONE"
.LASF106:
	.string	"ADC_DATA_WIDTH_14_WITH_16_AVERAGE"
.LASF234:
	.string	"scanLength"
.LASF100:
	.string	"ADC_VREF_2V"
.LASF84:
	.string	"ADC_BIAS_SEL_AON_BANDGAP"
.LASF138:
	.string	"vref"
.LASF117:
	.string	"ADC_PGA2_GAIN_12DB"
.LASF81:
	.string	"ADC_PGA_GAIN_32"
.LASF59:
	.string	"ADC_V18_SEL_1P92V"
.LASF243:
	.string	"regCalib"
.LASF177:
	.string	"Efuse_ADC_Gain_Coeff_Type"
.LASF206:
	.string	"ADC_Tsen_Init"
.LASF159:
	.string	"ADC_INT_ADC_READY"
.LASF247:
	.string	"EF_Ctrl_Get_Trim_Parity"
.LASF124:
	.string	"mic1Mode"
.LASF181:
	.string	"EF_Ctrl_Read_TSEN_Trim"
.LASF193:
	.string	"tsen_offset"
.LASF210:
	.string	"ADC_Int_Callback_Install"
.LASF134:
	.string	"gain1"
.LASF135:
	.string	"gain2"
.LASF27:
	.string	"UNMASK"
.LASF140:
	.string	"resWidth"
.LASF141:
	.string	"offsetCalibEn"
.LASF13:
	.string	"long unsigned int"
.LASF63:
	.string	"ADC_V11_SEL_1P18V"
.LASF105:
	.string	"ADC_DATA_WIDTH_12"
.LASF209:
	.string	"ADC_Vbat_Enable"
.LASF104:
	.string	"ADC_SIG_INPUT_Type"
.LASF90:
	.string	"ADC_CHOP_MOD_Type"
.LASF236:
	.string	"dealLen"
.LASF204:
	.string	"TSEN_Get_V_Error"
.LASF183:
	.string	"trim"
.LASF195:
	.string	"regVal"
.LASF19:
	.string	"ERROR"
.LASF85:
	.string	"ADC_BIAS_SEL_Type"
.LASF198:
	.string	"ADC_SET_TSVBE_HIGH"
.LASF176:
	.string	"adcGainCoeffEn"
.LASF166:
	.string	"adcgainCoeffVal"
.LASF8:
	.string	"long long int"
.LASF144:
	.string	"posChan"
.LASF201:
	.string	"average_index"
.LASF131:
	.string	"v18Sel"
.LASF24:
	.string	"BL_Fun_Type"
.LASF21:
	.string	"BL_Err_Type"
.LASF52:
	.string	"ADC_CHAN_SENP1"
.LASF51:
	.string	"ADC_CHAN_SENP2"
.LASF50:
	.string	"ADC_CHAN_SENP3"
.LASF122:
	.string	"micboostDb"
.LASF220:
	.string	"dataType"
.LASF97:
	.string	"ADC_TSEN_MOD_EXTERNAL_DIODE"
.LASF233:
	.string	"negChList"
.LASF148:
	.string	"float"
.LASF54:
	.string	"ADC_CHAN_GND"
.LASF132:
	.string	"v11Sel"
.LASF239:
	.string	"negCh"
.LASF64:
	.string	"ADC_V11_SEL_1P26V"
.LASF244:
	.string	"ADC_Disable"
.LASF15:
	.string	"unsigned int"
.LASF207:
	.string	"tsenMod"
.LASF211:
	.string	"intType"
.LASF173:
	.string	"Efuse_TSEN_Refcode_Corner_Type"
.LASF136:
	.string	"chopMode"
.LASF218:
	.string	"ADC_Parse_Result"
.LASF123:
	.string	"micPga2Gain"
.LASF232:
	.string	"posChList"
.LASF248:
	.string	"ADC_Reset"
.LASF225:
	.string	"ADC_Get_FIFO_Count"
.LASF69:
	.string	"ADC_CLK_DIV_12"
.LASF70:
	.string	"ADC_CLK_DIV_16"
.LASF89:
	.string	"ADC_CHOP_MOD_AZ_PGA_RPC_ON"
.LASF111:
	.string	"ADC_MICBOOST_DB_16DB"
.LASF71:
	.string	"ADC_CLK_DIV_20"
.LASF20:
	.string	"TIMEOUT"
.LASF72:
	.string	"ADC_CLK_DIV_24"
.LASF246:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF22:
	.string	"DISABLE"
.LASF16:
	.string	"long double"
.LASF161:
	.string	"ADC_INT_Type"
.LASF185:
	.string	"ADC_MIC_Bias_Disable"
.LASF180:
	.string	"EF_Ctrl_Read_ADC_Gain_Trim"
.LASF73:
	.string	"ADC_CLK_DIV_32"
.LASF160:
	.string	"ADC_INT_ALL"
.LASF221:
	.string	"sigType"
.LASF66:
	.string	"ADC_CLK_DIV_1"
.LASF67:
	.string	"ADC_CLK_DIV_4"
.LASF114:
	.string	"ADC_PGA2_GAIN_0DB"
.LASF68:
	.string	"ADC_CLK_DIV_8"
.LASF203:
	.string	"delta"
.LASF14:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint16_t"
.LASF178:
	.string	"adcIntCbfArra"
.LASF238:
	.string	"posCh"
.LASF186:
	.string	"ADC_MIC_Bias_Enable"
.LASF235:
	.string	"contEn"
.LASF88:
	.string	"ADC_CHOP_MOD_AZ_PGA_ON"
.LASF18:
	.string	"SUCCESS"
.LASF205:
	.string	"v_error"
.LASF212:
	.string	"cbFun"
.LASF56:
	.string	"ADC_V18_SEL_1P62V"
.LASF164:
	.string	"ADC_FIFO_Cfg_Type"
.LASF237:
	.string	"ADC_Channel_Config"
.LASF25:
	.string	"RESET"
.LASF60:
	.string	"ADC_V18_SEL_Type"
.LASF101:
	.string	"ADC_VREF_Type"
.LASF53:
	.string	"ADC_CHAN_SENP0"
.LASF46:
	.string	"ADC_CHAN_TSEN_N"
.LASF45:
	.string	"ADC_CHAN_TSEN_P"
.LASF154:
	.string	"ADC_FIFO_Threshold_Type"
.LASF99:
	.string	"ADC_VREF_3P2V"
.LASF179:
	.string	"adcGainCoeffCal"
.LASF95:
	.string	"ADC_PGA_VCM_Type"
.LASF118:
	.string	"ADC_PGA2_GAIN_Type"
.LASF116:
	.string	"ADC_PGA2_GAIN_N6DB"
.LASF92:
	.string	"ADC_PGA_VCM_1P2V"
.LASF86:
	.string	"ADC_CHOP_MOD_ALL_OFF"
.LASF26:
	.string	"BL_Sts_Type"
.LASF192:
	.string	"adc_mic_config"
.LASF143:
	.string	"ADC_CFG_Type"
.LASF215:
	.string	"ADC_IntClr"
.LASF28:
	.string	"MASK"
.LASF230:
	.string	"ADC_Start"
.LASF6:
	.string	"short int"
.LASF145:
	.string	"negChan"
.LASF112:
	.string	"ADC_MICBOOST_DB_32DB"
.LASF165:
	.string	"adcGainCoeffEnable"
.LASF5:
	.string	"int16_t"
.LASF155:
	.string	"ADC_INT_POS_SATURATION"
.LASF241:
	.string	"ADC_Init"
.LASF23:
	.string	"ENABLE"
.LASF142:
	.string	"offsetCalibVal"
.LASF231:
	.string	"ADC_Scan_Channel_Config"
.LASF130:
	.string	"ADC_MIC_Type"
.LASF93:
	.string	"ADC_PGA_VCM_1P4V"
.LASF175:
	.string	"adcGainCoeffParity"
.LASF171:
	.string	"tsenRefcodeCornerVersion"
.LASF202:
	.string	"v_error_sum"
.LASF103:
	.string	"ADC_INPUT_DIFF"
.LASF167:
	.string	"ADC_Gain_Coeff_Type"
.LASF128:
	.string	"micPgaEn"
.LASF157:
	.string	"ADC_INT_FIFO_UNDERRUN"
.LASF115:
	.string	"ADC_PGA2_GAIN_6DB"
.LASF74:
	.string	"ADC_CLK_Type"
.LASF222:
	.string	"ADC_Read_FIFO"
.LASF214:
	.string	"bitStatus"
.LASF12:
	.string	"uint32_t"
.LASF87:
	.string	"ADC_CHOP_MOD_AZ_ON"
.LASF172:
	.string	"reserved"
.LASF94:
	.string	"ADC_PGA_VCM_1P6V"
.LASF197:
	.string	"gainCalEnabled"
.LASF11:
	.string	"short unsigned int"
.LASF169:
	.string	"tsenRefcodeCornerParity"
.LASF57:
	.string	"ADC_V18_SEL_1P72V"
.LASF82:
	.string	"ADC_PGA_GAIN_Type"
.LASF223:
	.string	"ADC_FIFO_Is_Empty"
.LASF187:
	.string	"ADC_Gain_Trim"
.LASF47:
	.string	"ADC_CHAN_VREF"
.LASF147:
	.string	"volt"
.LASF61:
	.string	"ADC_V11_SEL_1P0V"
.LASF194:
	.string	"temp"
.LASF30:
	.string	"intCallback_Type"
.LASF184:
	.string	"tmpVal"
.LASF62:
	.string	"ADC_V11_SEL_1P1V"
.LASF127:
	.string	"micboostBypassEn"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/bl602_std"
	.globl	__adddf3
	.globl	__subdf3
	.globl	__truncdfsf2
	.globl	__muldf3
	.globl	__extendsfdf2
	.globl	__divdf3
	.globl	__floatsidf
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
