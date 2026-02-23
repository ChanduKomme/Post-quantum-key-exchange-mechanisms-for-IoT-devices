	.file	"hal_spi.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_spi.c"
	.section	.text.fdt32_to_cpu,"ax",@progbits
	.align	1
	.type	fdt32_to_cpu, @function
fdt32_to_cpu:
.LFB29:
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
.LFE29:
	.size	fdt32_to_cpu, .-fdt32_to_cpu
	.globl	g_hal_buf
	.section	.sbss.g_hal_buf,"aw",@nobits
	.align	2
	.type	g_hal_buf, @object
	.size	g_hal_buf, 4
g_hal_buf:
	.zero	4
	.section	.text.hal_gpio_init,"ax",@progbits
	.align	1
	.type	hal_gpio_init, @function
hal_gpio_init:
.LFB62:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_spi.c"
	.loc 2 91 1
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
	.loc 2 94 8
	lw	a5,-36(s0)
	beq	a5,zero,.L9
	.loc 2 99 22
	lw	a5,-36(s0)
	lbu	a5,12(a5)
	.loc 2 99 17
	sb	a5,-20(s0)
	.loc 2 100 22
	lw	a5,-36(s0)
	lbu	a5,11(a5)
	.loc 2 100 17
	sb	a5,-19(s0)
	.loc 2 101 22
	lw	a5,-36(s0)
	lbu	a5,13(a5)
	.loc 2 101 17
	sb	a5,-18(s0)
	.loc 2 102 22
	lw	a5,-36(s0)
	lbu	a5,14(a5)
	.loc 2 102 17
	sb	a5,-17(s0)
	.loc 2 104 5
	addi	a5,s0,-20
	li	a2,4
	mv	a1,a5
	li	a0,4
	call	GLB_GPIO_Func_Init
	.loc 2 106 12
	lw	a5,-36(s0)
	lbu	a5,2(a5)
	.loc 2 106 8
	bne	a5,zero,.L6
	.loc 2 107 9
	li	a0,1
	call	GLB_Set_SPI_0_ACT_MOD_Sel
	.loc 2 112 5
	j	.L3
.L6:
	.loc 2 109 9
	li	a0,0
	call	GLB_Set_SPI_0_ACT_MOD_Sel
	.loc 2 112 5
	j	.L3
.L9:
	.loc 2 96 9
	nop
.L3:
	.loc 2 113 1
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
	.size	hal_gpio_init, .-hal_gpio_init
	.section	.text.lli_list_init,"ax",@progbits
	.align	1
	.type	lli_list_init, @function
lli_list_init:
.LFB63:
	.loc 2 116 1
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
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	.loc 2 117 14
	sw	zero,-20(s0)
	.loc 2 123 11
	lw	a5,-52(s0)
	srli	a5,a5,11
	sw	a5,-24(s0)
	.loc 2 124 15
	lw	a5,-52(s0)
	andi	a5,a5,2047
	sw	a5,-28(s0)
	.loc 2 126 8
	lw	a5,-28(s0)
	beq	a5,zero,.L11
	.loc 2 127 15
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L11:
	.loc 2 130 20
	lw	a4,-32(s0)
	li	a5,-28672
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 131 20
	lw	a4,-32(s0)
	li	a5,-229376
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 132 20
	lw	a4,-32(s0)
	li	a5,-1835008
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 133 20
	lw	a4,-32(s0)
	li	a5,-14680064
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 134 18
	lw	a4,-32(s0)
	li	a5,-1879048192
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 135 22
	lw	a4,-32(s0)
	li	a5,-16777216
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 137 55
	lw	a5,-24(s0)
	slli	a5,a5,4
	.loc 2 137 16
	mv	a0,a5
	call	pvPortMalloc
	mv	a4,a0
	.loc 2 137 14 discriminator 1
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 2 138 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 2 138 8
	bne	a5,zero,.L12
	.loc 2 141 16
	li	a5,-1
	j	.L23
.L12:
	.loc 2 144 55
	lw	a5,-24(s0)
	slli	a5,a5,4
	.loc 2 144 16
	mv	a0,a5
	call	pvPortMalloc
	mv	a4,a0
	.loc 2 144 14 discriminator 1
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 2 145 9
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 2 145 8
	bne	a5,zero,.L14
	.loc 2 147 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	vPortFree
	.loc 2 149 16
	li	a5,-1
	j	.L23
.L14:
	.loc 2 152 12
	sw	zero,-20(s0)
	.loc 2 152 5
	j	.L15
.L22:
	.loc 2 153 12
	lw	a5,-28(s0)
	bne	a5,zero,.L16
	.loc 2 154 34
	lw	a4,-32(s0)
	li	a5,-4096
	and	a4,a4,a5
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-32(s0)
	j	.L17
.L16:
	.loc 2 156 28
	lw	a5,-24(s0)
	addi	a5,a5,-1
	.loc 2 156 16
	lw	a4,-20(s0)
	bne	a4,a5,.L18
	.loc 2 157 38
	lw	a5,-28(s0)
	mv	a4,a5
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
	lw	a3,-32(s0)
	li	a4,-4096
	and	a4,a3,a4
	or	a5,a4,a5
	sw	a5,-32(s0)
	j	.L17
.L18:
	.loc 2 159 38
	lw	a4,-32(s0)
	li	a5,-4096
	and	a4,a4,a5
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-32(s0)
.L17:
	.loc 2 163 20
	lw	a4,-32(s0)
	li	a5,67108864
	or	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 164 20
	lw	a4,-32(s0)
	li	a5,-134217728
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 166 24
	lw	a5,-24(s0)
	addi	a5,a5,-1
	.loc 2 166 12
	lw	a4,-20(s0)
	bne	a4,a5,.L19
	.loc 2 167 23
	lw	a4,-32(s0)
	li	a5,-2147483648
	or	a5,a4,a5
	sw	a5,-32(s0)
	j	.L20
.L19:
	.loc 2 169 23
	lw	a4,-32(s0)
	li	a5,-2147483648
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-32(s0)
.L20:
	.loc 2 172 60
	lw	a5,-20(s0)
	slli	a5,a5,11
	.loc 2 172 56
	lw	a4,-44(s0)
	add	a3,a4,a5
	.loc 2 172 10
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 172 19
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	.loc 2 172 36
	mv	a4,a3
	.loc 2 172 34
	sw	a4,0(a5)
	.loc 2 173 10
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 173 19
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	.loc 2 173 35
	li	a4,1073782784
	addi	a4,a4,648
	sw	a4,4(a5)
	.loc 2 174 10
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 174 19
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	.loc 2 174 31
	lw	a4,-32(s0)
	sw	a4,12(a5)
	.loc 2 176 20
	lw	a4,-32(s0)
	li	a5,-67108864
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 177 20
	lw	a4,-32(s0)
	li	a5,134217728
	or	a5,a4,a5
	sw	a5,-32(s0)
	.loc 2 178 10
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 178 19
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	.loc 2 178 34
	li	a4,1073782784
	addi	a4,a4,652
	sw	a4,0(a5)
	.loc 2 179 61
	lw	a5,-20(s0)
	slli	a5,a5,11
	.loc 2 179 57
	lw	a4,-48(s0)
	add	a3,a4,a5
	.loc 2 179 10
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 179 19
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	.loc 2 179 37
	mv	a4,a3
	.loc 2 179 35
	sw	a4,4(a5)
	.loc 2 180 10
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 180 19
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	.loc 2 180 31
	lw	a4,-32(s0)
	sw	a4,12(a5)
	.loc 2 182 12
	lw	a5,-20(s0)
	beq	a5,zero,.L21
	.loc 2 183 51
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 183 60
	lw	a5,-20(s0)
	slli	a5,a5,4
	.loc 2 183 49
	add	a2,a4,a5
	.loc 2 183 14
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 183 23
	lw	a3,-20(s0)
	li	a5,268435456
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,4
	add	a5,a4,a5
	.loc 2 183 39
	mv	a4,a2
	.loc 2 183 37
	sw	a4,8(a5)
	.loc 2 184 51
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 184 60
	lw	a5,-20(s0)
	slli	a5,a5,4
	.loc 2 184 49
	add	a2,a4,a5
	.loc 2 184 14
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 184 23
	lw	a3,-20(s0)
	li	a5,268435456
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,4
	add	a5,a4,a5
	.loc 2 184 39
	mv	a4,a2
	.loc 2 184 37
	sw	a4,8(a5)
.L21:
	.loc 2 187 10
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 2 187 19
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	.loc 2 187 31
	sw	zero,8(a5)
	.loc 2 188 10
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 2 188 19
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	.loc 2 188 31
	sw	zero,8(a5)
	.loc 2 152 29 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L15:
	.loc 2 152 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L22
	.loc 2 191 12
	li	a5,0
.L23:
	.loc 2 192 1
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
.LFE63:
	.size	lli_list_init, .-lli_list_init
	.section	.text.hal_spi_dma_init,"ax",@progbits
	.align	1
	.type	hal_spi_dma_init, @function
hal_spi_dma_init:
.LFB64:
	.loc 2 195 1
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
	.loc 2 196 15
	lw	a5,-52(s0)
	sw	a5,-20(s0)
	.loc 2 203 12
	lw	a5,-20(s0)
	lbu	a5,1(a5)
	sb	a5,-21(s0)
	.loc 2 212 42
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 2 212 34
	li	a4,40001536
	addi	a4,a4,-1536
	divu	a5,a4,a5
	.loc 2 212 13
	sb	a5,-22(s0)
	.loc 2 213 5
	li	a1,0
	li	a0,1
	call	GLB_Set_SPI_CLK
	.loc 2 214 23
	lbu	a5,-22(s0)
	sb	a5,-40(s0)
	.loc 2 215 22
	lbu	a5,-22(s0)
	sb	a5,-39(s0)
	.loc 2 216 28
	lbu	a5,-22(s0)
	sb	a5,-38(s0)
	.loc 2 217 28
	lbu	a5,-22(s0)
	sb	a5,-37(s0)
	.loc 2 218 26
	lbu	a5,-22(s0)
	sb	a5,-36(s0)
	.loc 2 219 5
	addi	a4,s0,-40
	lbu	a5,-21(s0)
	mv	a1,a4
	mv	a0,a5
	call	SPI_ClockConfig
	.loc 2 222 27
	sb	zero,-32(s0)
	.loc 2 223 29
	li	a5,1
	sb	a5,-31(s0)
	.loc 2 224 25
	sb	zero,-30(s0)
	.loc 2 225 24
	sb	zero,-29(s0)
	.loc 2 226 22
	sb	zero,-26(s0)
	.loc 2 228 15
	lw	a5,-20(s0)
	lbu	a5,8(a5)
	.loc 2 228 8
	bne	a5,zero,.L25
	.loc 2 229 28
	sb	zero,-28(s0)
	.loc 2 230 28
	sb	zero,-27(s0)
	j	.L26
.L25:
	.loc 2 231 22
	lw	a5,-20(s0)
	lbu	a4,8(a5)
	.loc 2 231 15
	li	a5,1
	bne	a4,a5,.L27
	.loc 2 232 28
	li	a5,1
	sb	a5,-28(s0)
	.loc 2 233 28
	sb	zero,-27(s0)
	j	.L26
.L27:
	.loc 2 234 22
	lw	a5,-20(s0)
	lbu	a4,8(a5)
	.loc 2 234 15
	li	a5,2
	bne	a4,a5,.L28
	.loc 2 235 28
	sb	zero,-28(s0)
	.loc 2 236 28
	li	a5,1
	sb	a5,-27(s0)
	j	.L26
.L28:
	.loc 2 237 22
	lw	a5,-20(s0)
	lbu	a4,8(a5)
	.loc 2 237 15
	li	a5,3
	bne	a4,a5,.L26
	.loc 2 238 28
	li	a5,1
	sb	a5,-28(s0)
	.loc 2 239 28
	li	a5,1
	sb	a5,-27(s0)
.L26:
	.loc 2 243 5
	addi	a5,s0,-32
	mv	a1,a5
	li	a0,0
	call	SPI_Init
	.loc 2 245 15
	lw	a5,-20(s0)
	lbu	a5,2(a5)
	.loc 2 245 8
	bne	a5,zero,.L29
	.loc 2 247 9
	lbu	a5,-21(s0)
	li	a1,1
	mv	a0,a5
	call	SPI_Disable
	j	.L30
.L29:
	.loc 2 249 9
	lbu	a5,-21(s0)
	li	a1,0
	mv	a0,a5
	call	SPI_Disable
.L30:
	.loc 2 252 5
	lbu	a5,-21(s0)
	li	a2,1
	li	a1,6
	mv	a0,a5
	call	SPI_IntMask
	.loc 2 255 29
	li	a5,1
	sb	a5,-44(s0)
	.loc 2 256 29
	li	a5,1
	sb	a5,-43(s0)
	.loc 2 257 29
	li	a5,1
	sb	a5,-42(s0)
	.loc 2 258 29
	li	a5,1
	sb	a5,-41(s0)
	.loc 2 259 5
	addi	a4,s0,-44
	lbu	a5,-21(s0)
	mv	a1,a4
	mv	a0,a5
	call	SPI_FifoConfig
	.loc 2 261 5
	call	DMA_Disable
	.loc 2 262 5
	lw	a5,-20(s0)
	lbu	a5,9(a5)
	li	a2,1
	li	a1,2
	mv	a0,a5
	call	DMA_IntMask
	.loc 2 263 5
	lw	a5,-20(s0)
	lbu	a5,9(a5)
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	DMA_IntMask
	.loc 2 264 5
	lw	a5,-20(s0)
	lbu	a5,9(a5)
	li	a2,0
	li	a1,1
	mv	a0,a5
	call	DMA_IntMask
	.loc 2 266 5
	lw	a5,-20(s0)
	lbu	a5,10(a5)
	li	a2,1
	li	a1,2
	mv	a0,a5
	call	DMA_IntMask
	.loc 2 267 5
	lw	a5,-20(s0)
	lbu	a5,10(a5)
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	DMA_IntMask
	.loc 2 268 5
	lw	a5,-20(s0)
	lbu	a5,10(a5)
	li	a2,0
	li	a1,1
	mv	a0,a5
	call	DMA_IntMask
	.loc 2 270 5
	li	a0,31
	call	bl_irq_enable
	.loc 2 271 31
	lw	a5,-20(s0)
	lbu	a5,9(a5)
	.loc 2 271 5
	mv	a4,a5
	li	a3,0
	li	a2,0
	lui	a5,%hi(bl_spi0_dma_int_handler_tx)
	addi	a1,a5,%lo(bl_spi0_dma_int_handler_tx)
	mv	a0,a4
	call	bl_dma_irq_register
	.loc 2 272 31
	lw	a5,-20(s0)
	lbu	a5,10(a5)
	.loc 2 272 5
	mv	a4,a5
	li	a3,0
	li	a2,0
	lui	a5,%hi(bl_spi0_dma_int_handler_rx)
	addi	a1,a5,%lo(bl_spi0_dma_int_handler_rx)
	mv	a0,a4
	call	bl_dma_irq_register
	.loc 2 274 5
	nop
	.loc 2 275 1
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE64:
	.size	hal_spi_dma_init, .-hal_spi_dma_init
	.section	.text.hal_spi_dma_trans,"ax",@progbits
	.align	1
	.type	hal_spi_dma_trans, @function
hal_spi_dma_trans:
.LFB65:
	.loc 2 278 1
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
	sw	a3,-64(s0)
	.loc 2 286 8
	lw	a5,-52(s0)
	beq	a5,zero,.L39
	.loc 2 291 18
	li	a5,1
	sb	a5,-28(s0)
	.loc 2 292 24
	sb	zero,-27(s0)
	.loc 2 293 24
	li	a5,11
	sb	a5,-26(s0)
	.loc 2 295 18
	li	a5,2
	sb	a5,-32(s0)
	.loc 2 296 24
	li	a5,10
	sb	a5,-31(s0)
	.loc 2 297 24
	sb	zero,-30(s0)
	.loc 2 300 5
	lw	a5,-52(s0)
	lw	a5,16(a5)
	li	a1,3
	mv	a0,a5
	call	xEventGroupClearBits
	.loc 2 302 5
	lw	a5,-52(s0)
	lbu	a5,9(a5)
	mv	a0,a5
	call	DMA_Channel_Disable
	.loc 2 303 5
	lw	a5,-52(s0)
	lbu	a5,10(a5)
	mv	a0,a5
	call	DMA_Channel_Disable
	.loc 2 304 25
	lw	a5,-52(s0)
	lbu	a5,9(a5)
	.loc 2 304 5
	mv	a0,a5
	call	bl_dma_int_clear
	.loc 2 305 25
	lw	a5,-52(s0)
	lbu	a5,10(a5)
	.loc 2 305 5
	mv	a0,a5
	call	bl_dma_int_clear
	.loc 2 306 5
	call	DMA_Enable
	.loc 2 308 12
	lw	a5,-52(s0)
	lbu	a5,2(a5)
	.loc 2 308 8
	bne	a5,zero,.L35
	.loc 2 309 9
	lw	a5,-52(s0)
	lbu	a5,1(a5)
	li	a1,1
	mv	a0,a5
	call	SPI_Enable
	j	.L36
.L35:
	.loc 2 311 9
	lw	a5,-52(s0)
	lbu	a5,1(a5)
	li	a1,0
	mv	a0,a5
	call	SPI_Enable
.L36:
	.loc 2 314 11
	addi	a1,s0,-40
	addi	a5,s0,-36
	lw	a4,-64(s0)
	lw	a3,-60(s0)
	lw	a2,-56(s0)
	mv	a0,a5
	call	lli_list_init
	sw	a0,-20(s0)
	.loc 2 315 8
	lw	a5,-20(s0)
	blt	a5,zero,.L40
	.loc 2 321 5
	lw	a5,-52(s0)
	lbu	a5,9(a5)
	addi	a4,s0,-28
	mv	a1,a4
	mv	a0,a5
	call	DMA_LLI_Init
	.loc 2 322 5
	lw	a5,-52(s0)
	lbu	a5,10(a5)
	addi	a4,s0,-32
	mv	a1,a4
	mv	a0,a5
	call	DMA_LLI_Init
	.loc 2 323 5
	lw	a5,-52(s0)
	lbu	a5,9(a5)
	lw	a4,-36(s0)
	mv	a1,a4
	mv	a0,a5
	call	DMA_LLI_Update
	.loc 2 324 5
	lw	a5,-52(s0)
	lbu	a5,10(a5)
	lw	a4,-40(s0)
	mv	a1,a4
	mv	a0,a5
	call	DMA_LLI_Update
	.loc 2 325 5
	lw	a5,-52(s0)
	lbu	a5,9(a5)
	mv	a0,a5
	call	DMA_Channel_Enable
	.loc 2 326 5
	lw	a5,-52(s0)
	lbu	a5,10(a5)
	mv	a0,a5
	call	DMA_Channel_Enable
	.loc 2 328 14
	lw	a5,-52(s0)
	lw	a5,16(a5)
	li	a4,-1
	li	a3,1
	li	a2,1
	li	a1,3
	mv	a0,a5
	call	xEventGroupWaitBits
	sw	a0,-24(s0)
	.loc 2 338 5
	lw	a5,-36(s0)
	mv	a0,a5
	call	vPortFree
	.loc 2 339 5
	lw	a5,-40(s0)
	mv	a0,a5
	call	vPortFree
	j	.L32
.L39:
	.loc 2 288 9
	nop
	j	.L32
.L40:
	.loc 2 318 9
	nop
.L32:
	.loc 2 340 1
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE65:
	.size	hal_spi_dma_trans, .-hal_spi_dma_trans
	.section	.text.hal_spi_init,"ax",@progbits
	.align	1
	.globl	hal_spi_init
	.type	hal_spi_init, @function
hal_spi_init:
.LFB66:
	.loc 2 343 1
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
	.loc 2 351 10
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-24(s0)
	.loc 2 352 8
	lw	a5,-24(s0)
	bne	a5,zero,.L42
	.loc 2 353 16
	li	a5,-1
	j	.L43
.L42:
	.loc 2 356 12
	sw	zero,-20(s0)
	.loc 2 356 5
	j	.L44
.L45:
	.loc 2 357 9
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lw	a4,-24(s0)
	add	a5,a4,a5
	mv	a0,a5
	call	hal_gpio_init
	.loc 2 358 9
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lw	a4,-24(s0)
	add	a5,a4,a5
	mv	a0,a5
	call	hal_spi_dma_init
	.loc 2 356 25 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L44:
	.loc 2 356 19 discriminator 1
	lw	a5,-20(s0)
	ble	a5,zero,.L45
	.loc 2 365 12
	li	a5,0
.L43:
	.loc 2 366 1
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
.LFE66:
	.size	hal_spi_init, .-hal_spi_init
	.section	.text.hal_spi_finalize,"ax",@progbits
	.align	1
	.globl	hal_spi_finalize
	.type	hal_spi_finalize, @function
hal_spi_finalize:
.LFB67:
	.loc 2 369 1
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
	.loc 2 371 12
	li	a5,0
	.loc 2 372 1
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
.LFE67:
	.size	hal_spi_finalize, .-hal_spi_finalize
	.section	.text.hal_spi_send,"ax",@progbits
	.align	1
	.globl	hal_spi_send
	.type	hal_spi_send, @function
hal_spi_send:
.LFB68:
	.loc 2 375 1
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
	mv	a5,a2
	sw	a3,-32(s0)
	sh	a5,-26(s0)
	.loc 2 377 12
	li	a5,0
	.loc 2 378 1
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
.LFE68:
	.size	hal_spi_send, .-hal_spi_send
	.section	.text.hal_spi_recv,"ax",@progbits
	.align	1
	.globl	hal_spi_recv
	.type	hal_spi_recv, @function
hal_spi_recv:
.LFB69:
	.loc 2 380 1
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
	mv	a5,a2
	sw	a3,-32(s0)
	sh	a5,-26(s0)
	.loc 2 382 12
	li	a5,0
	.loc 2 383 1
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
.LFE69:
	.size	hal_spi_recv, .-hal_spi_recv
	.section	.text.hal_spi_send_recv,"ax",@progbits
	.align	1
	.globl	hal_spi_send_recv
	.type	hal_spi_send_recv, @function
hal_spi_send_recv:
.LFB70:
	.loc 2 386 1
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
	mv	a5,a3
	sw	a4,-36(s0)
	sh	a5,-30(s0)
	.loc 2 388 12
	li	a5,0
	.loc 2 389 1
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
.LFE70:
	.size	hal_spi_send_recv, .-hal_spi_send_recv
	.section	.text.hal_spi_set_rwmode,"ax",@progbits
	.align	1
	.globl	hal_spi_set_rwmode
	.type	hal_spi_set_rwmode, @function
hal_spi_set_rwmode:
.LFB71:
	.loc 2 392 1
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
	.loc 2 398 8
	lw	a5,-40(s0)
	blt	a5,zero,.L55
	.loc 2 398 20 discriminator 1
	lw	a4,-40(s0)
	li	a5,3
	ble	a4,a5,.L56
.L55:
	.loc 2 400 16
	li	a5,-1
	j	.L57
.L56:
	.loc 2 403 10
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 2 404 24
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	mv	a2,a5
	.loc 2 404 37
	lw	a5,-40(s0)
	andi	a4,a5,0xff
	lw	a3,-20(s0)
	mv	a5,a2
	slli	a5,a5,2
	add	a5,a5,a2
	slli	a5,a5,2
	add	a5,a3,a5
	sb	a4,2(a5)
	.loc 2 405 26
	lw	a5,-40(s0)
	andi	a4,a5,0xff
	lw	a5,-36(s0)
	sb	a4,4(a5)
	.loc 2 407 5
	lw	a0,-36(s0)
	call	hal_spi_init
	.loc 2 408 12
	li	a5,0
.L57:
	.loc 2 409 1
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
.LFE71:
	.size	hal_spi_set_rwmode, .-hal_spi_set_rwmode
	.section	.text.hal_spi_set_rwspeed,"ax",@progbits
	.align	1
	.globl	hal_spi_set_rwspeed
	.type	hal_spi_set_rwspeed, @function
hal_spi_set_rwspeed:
.LFB72:
	.loc 2 412 1
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
	.loc 2 415 13
	sb	zero,-21(s0)
	.loc 2 416 14
	sw	zero,-28(s0)
	.loc 2 421 24
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 2 421 8
	lw	a4,-40(s0)
	bne	a4,a5,.L59
	.loc 2 423 16
	li	a5,0
	j	.L60
.L59:
	.loc 2 426 12
	sw	zero,-20(s0)
	.loc 2 426 5
	j	.L61
.L66:
	.loc 2 427 34
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 2 427 31
	li	a4,40001536
	addi	a4,a4,-1536
	div	a4,a4,a5
	.loc 2 427 19
	lw	a5,-40(s0)
	.loc 2 427 12
	bne	a4,a5,.L62
	.loc 2 428 24
	lw	a5,-40(s0)
	sw	a5,-28(s0)
	.loc 2 429 23
	li	a5,1
	sb	a5,-21(s0)
	j	.L63
.L62:
	.loc 2 430 40
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 2 430 37
	li	a4,40001536
	addi	a4,a4,-1536
	div	a5,a4,a5
	mv	a4,a5
	.loc 2 430 19
	lw	a5,-40(s0)
	bgeu	a5,a4,.L71
	.loc 2 431 13
	nop
.L63:
	.loc 2 426 27 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L61:
	.loc 2 426 19 discriminator 1
	lw	a4,-20(s0)
	li	a5,255
	ble	a4,a5,.L66
	j	.L65
.L71:
	.loc 2 433 13
	nop
.L65:
	.loc 2 437 8
	lbu	a4,-21(s0)
	li	a5,1
	beq	a4,a5,.L67
	.loc 2 438 12
	lw	a5,-20(s0)
	bne	a5,zero,.L68
	.loc 2 440 20
	li	a5,-1
	j	.L60
.L68:
	.loc 2 441 19
	lw	a4,-20(s0)
	li	a5,256
	bne	a4,a5,.L69
	.loc 2 443 20
	li	a5,-1
	j	.L60
.L69:
	.loc 2 445 31
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 2 445 28
	li	a4,40001536
	addi	a4,a4,-1536
	div	a5,a4,a5
	mv	a4,a5
	.loc 2 445 36
	lw	a5,-40(s0)
	sub	a4,a4,a5
	.loc 2 445 65
	li	a5,40001536
	addi	a3,a5,-1536
	lw	a5,-20(s0)
	div	a5,a3,a5
	mv	a3,a5
	.loc 2 445 54
	lw	a5,-40(s0)
	sub	a5,a5,a3
	.loc 2 445 16
	bleu	a4,a5,.L70
	.loc 2 446 42
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 2 446 39
	li	a4,40001536
	addi	a4,a4,-1536
	div	a5,a4,a5
	.loc 2 446 28
	sw	a5,-28(s0)
	j	.L67
.L70:
	.loc 2 449 39
	li	a5,40001536
	addi	a4,a5,-1536
	lw	a5,-20(s0)
	div	a5,a4,a5
	.loc 2 449 28
	sw	a5,-28(s0)
.L67:
	.loc 2 455 10
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-32(s0)
	.loc 2 456 24
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	mv	a3,a5
	.loc 2 456 37
	lw	a4,-32(s0)
	mv	a5,a3
	slli	a5,a5,2
	add	a5,a5,a3
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-28(s0)
	sw	a4,4(a5)
	.loc 2 457 26
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	sw	a4,8(a5)
	.loc 2 459 5
	lw	a0,-36(s0)
	call	hal_spi_init
	.loc 2 460 12
	li	a5,0
.L60:
	.loc 2 461 1
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
.LFE72:
	.size	hal_spi_set_rwspeed, .-hal_spi_set_rwspeed
	.section	.text.hal_spi_transfer,"ax",@progbits
	.align	1
	.globl	hal_spi_transfer
	.type	hal_spi_transfer, @function
hal_spi_transfer:
.LFB73:
	.loc 2 464 1
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
	sb	a5,-41(s0)
	.loc 2 469 8
	lw	a5,-36(s0)
	beq	a5,zero,.L73
	.loc 2 469 20 discriminator 1
	lw	a5,-40(s0)
	bne	a5,zero,.L74
.L73:
	.loc 2 471 16
	li	a5,-1
	j	.L75
.L74:
	.loc 2 474 15
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-24(s0)
	.loc 2 475 8
	lw	a5,-24(s0)
	bne	a5,zero,.L76
	.loc 2 477 16
	li	a5,-1
	j	.L75
.L76:
	.loc 2 480 12
	lw	a5,-40(s0)
	sw	a5,-28(s0)
	.loc 2 489 12
	sh	zero,-18(s0)
	.loc 2 489 5
	j	.L77
.L78:
	.loc 2 493 52
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 2 493 9
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lw	a4,-24(s0)
	add	a0,a4,a5
	.loc 2 494 34
	lhu	a4,-18(s0)
	mv	a5,a4
	slli	a5,a5,3
	sub	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	lw	a5,-28(s0)
	add	a5,a5,a4
	.loc 2 494 37
	lw	a5,0(a5)
	.loc 2 493 9
	mv	a1,a5
	.loc 2 494 63
	lhu	a4,-18(s0)
	mv	a5,a4
	slli	a5,a5,3
	sub	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	lw	a5,-28(s0)
	add	a5,a5,a4
	.loc 2 494 66
	lw	a5,4(a5)
	.loc 2 493 9
	mv	a2,a5
	.loc 2 494 81
	lhu	a4,-18(s0)
	mv	a5,a4
	slli	a5,a5,3
	sub	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	lw	a5,-28(s0)
	add	a5,a5,a4
	.loc 2 493 9
	lw	a5,8(a5)
	mv	a3,a5
	call	hal_spi_dma_trans
	.loc 2 489 28 discriminator 3
	lhu	a5,-18(s0)
	addi	a5,a5,1
	sh	a5,-18(s0)
.L77:
	.loc 2 489 19 discriminator 1
	lbu	a5,-41(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-18(s0)
	bltu	a4,a5,.L78
	.loc 2 500 12
	li	a5,0
.L75:
	.loc 2 501 1
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
.LFE73:
	.size	hal_spi_transfer, .-hal_spi_transfer
	.section	.text.vfs_spi_init_fullname,"ax",@progbits
	.align	1
	.globl	vfs_spi_init_fullname
	.type	vfs_spi_init_fullname, @function
vfs_spi_init_fullname:
.LFB74:
	.loc 2 506 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	mv	t1,a1
	mv	a0,a2
	mv	a1,a3
	sw	a4,-44(s0)
	mv	a2,a5
	mv	a3,a6
	mv	a4,a7
	mv	a5,t1
	sb	a5,-37(s0)
	mv	a5,a0
	sb	a5,-38(s0)
	mv	a5,a1
	sb	a5,-39(s0)
	mv	a5,a2
	sb	a5,-40(s0)
	mv	a5,a3
	sb	a5,-45(s0)
	mv	a5,a4
	sb	a5,-46(s0)
	.loc 2 510 11
	lw	a0,-36(s0)
	call	strlen
	mv	a5,a0
	.loc 2 510 9 discriminator 1
	sw	a5,-20(s0)
	.loc 2 511 8
	lw	a4,-20(s0)
	li	a5,31
	ble	a4,a5,.L80
	.loc 2 513 16
	li	a5,-22
	j	.L81
.L80:
	.loc 2 517 13
	lui	a5,%hi(g_hal_buf)
	lw	a5,%lo(g_hal_buf)(a5)
	.loc 2 517 8
	bne	a5,zero,.L82
	.loc 2 518 39
	li	a0,20
	call	aos_malloc
	mv	a4,a0
	.loc 2 518 19 discriminator 1
	lui	a5,%hi(g_hal_buf)
	sw	a4,%lo(g_hal_buf)(a5)
	.loc 2 519 17
	lui	a5,%hi(g_hal_buf)
	lw	a5,%lo(g_hal_buf)(a5)
	.loc 2 519 12
	bne	a5,zero,.L83
	.loc 2 521 20
	li	a5,-12
	j	.L81
.L83:
	.loc 2 523 9
	lui	a5,%hi(g_hal_buf)
	lw	a5,%lo(g_hal_buf)(a5)
	li	a2,20
	li	a1,0
	mv	a0,a5
	call	memset
.L82:
	.loc 2 526 14
	lui	a5,%hi(g_hal_buf)
	lw	s2,%lo(g_hal_buf)(a5)
	.loc 2 526 27
	lbu	s1,-37(s0)
	.loc 2 526 50
	call	xEventGroupCreate
	mv	a4,a0
	.loc 2 526 48 discriminator 1
	mv	a5,s1
	slli	a5,a5,2
	add	a5,a5,s1
	slli	a5,a5,2
	add	a5,s2,a5
	sw	a4,16(a5)
	.loc 2 529 25
	lui	a5,%hi(g_hal_buf)
	lw	a3,%lo(g_hal_buf)(a5)
	.loc 2 529 38
	lbu	a4,-37(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,16(a5)
	.loc 2 529 8
	bne	a5,zero,.L84
	.loc 2 530 9
	lui	a5,%hi(g_hal_buf)
	lw	a5,%lo(g_hal_buf)(a5)
	mv	a0,a5
	call	aos_free
	.loc 2 531 16
	li	a5,-12
	j	.L81
.L84:
	.loc 2 534 23
	li	a0,16
	call	aos_malloc
	sw	a0,-24(s0)
	.loc 2 535 8
	lw	a5,-24(s0)
	bne	a5,zero,.L85
	.loc 2 537 36
	lui	a5,%hi(g_hal_buf)
	lw	a3,%lo(g_hal_buf)(a5)
	.loc 2 537 9
	lbu	a4,-37(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,16(a5)
	mv	a0,a5
	call	vEventGroupDelete
	.loc 2 538 9
	lui	a5,%hi(g_hal_buf)
	lw	a5,%lo(g_hal_buf)(a5)
	mv	a0,a5
	call	aos_free
	.loc 2 539 16
	li	a5,-12
	j	.L81
.L85:
	.loc 2 542 5
	li	a2,16
	li	a1,0
	lw	a0,-24(s0)
	call	memset
	.loc 2 543 15
	lw	a5,-24(s0)
	lbu	a4,-37(s0)
	sb	a4,0(a5)
	.loc 2 544 22
	lw	a5,-24(s0)
	lbu	a4,-38(s0)
	sb	a4,4(a5)
	.loc 2 545 22
	lw	a5,-24(s0)
	lw	a4,-44(s0)
	sw	a4,8(a5)
	.loc 2 546 14
	lui	a5,%hi(g_hal_buf)
	lw	a3,%lo(g_hal_buf)(a5)
	.loc 2 546 27
	lbu	a4,-37(s0)
	.loc 2 546 35
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a4,-37(s0)
	sb	a4,1(a5)
	.loc 2 547 14
	lui	a5,%hi(g_hal_buf)
	lw	a3,%lo(g_hal_buf)(a5)
	.loc 2 547 27
	lbu	a4,-37(s0)
	.loc 2 547 33
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a4,-38(s0)
	sb	a4,2(a5)
	.loc 2 548 14
	lui	a5,%hi(g_hal_buf)
	lw	a3,%lo(g_hal_buf)(a5)
	.loc 2 548 27
	lbu	a4,-37(s0)
	.loc 2 548 40
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a4,-39(s0)
	sb	a4,8(a5)
	.loc 2 549 14
	lui	a5,%hi(g_hal_buf)
	lw	a3,%lo(g_hal_buf)(a5)
	.loc 2 549 27
	lbu	a4,-37(s0)
	.loc 2 549 33
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,-44(s0)
	sw	a4,4(a5)
	.loc 2 550 14
	lui	a5,%hi(g_hal_buf)
	lw	a3,%lo(g_hal_buf)(a5)
	.loc 2 550 27
	lbu	a4,-37(s0)
	.loc 2 550 38
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a4,-40(s0)
	sb	a4,9(a5)
	.loc 2 551 14
	lui	a5,%hi(g_hal_buf)
	lw	a3,%lo(g_hal_buf)(a5)
	.loc 2 551 27
	lbu	a4,-37(s0)
	.loc 2 551 38
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a4,-45(s0)
	sb	a4,10(a5)
	.loc 2 552 14
	lui	a5,%hi(g_hal_buf)
	lw	a3,%lo(g_hal_buf)(a5)
	.loc 2 552 27
	lbu	a4,-37(s0)
	.loc 2 552 36
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a4,-46(s0)
	sb	a4,11(a5)
	.loc 2 553 14
	lui	a5,%hi(g_hal_buf)
	lw	a3,%lo(g_hal_buf)(a5)
	.loc 2 553 27
	lbu	a4,-37(s0)
	.loc 2 553 35
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a4,0(s0)
	sb	a4,12(a5)
	.loc 2 554 14
	lui	a5,%hi(g_hal_buf)
	lw	a3,%lo(g_hal_buf)(a5)
	.loc 2 554 27
	lbu	a4,-37(s0)
	.loc 2 554 37
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a4,4(s0)
	sb	a4,13(a5)
	.loc 2 555 14
	lui	a5,%hi(g_hal_buf)
	lw	a3,%lo(g_hal_buf)(a5)
	.loc 2 555 27
	lbu	a4,-37(s0)
	.loc 2 555 37
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lbu	a4,8(s0)
	sb	a4,14(a5)
	.loc 2 556 15
	lui	a5,%hi(g_hal_buf)
	lw	a4,%lo(g_hal_buf)(a5)
	lw	a5,-24(s0)
	sw	a4,12(a5)
	.loc 2 561 11
	lw	a2,-24(s0)
	lui	a5,%hi(spi_ops)
	addi	a1,a5,%lo(spi_ops)
	lw	a0,-36(s0)
	call	aos_register_driver
	sw	a0,-28(s0)
	.loc 2 562 8
	lw	a5,-28(s0)
	beq	a5,zero,.L86
	.loc 2 563 9
	lw	a0,-24(s0)
	call	aos_free
	.loc 2 564 36
	lui	a5,%hi(g_hal_buf)
	lw	a3,%lo(g_hal_buf)(a5)
	.loc 2 564 9
	lbu	a4,-37(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,16(a5)
	mv	a0,a5
	call	vEventGroupDelete
	.loc 2 565 9
	lui	a5,%hi(g_hal_buf)
	lw	a5,%lo(g_hal_buf)(a5)
	mv	a0,a5
	call	aos_free
	.loc 2 566 16
	lw	a5,-28(s0)
	j	.L81
.L86:
	.loc 2 569 12
	li	a5,0
.L81:
	.loc 2 570 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE74:
	.size	vfs_spi_init_fullname, .-vfs_spi_init_fullname
	.section	.rodata
	.align	2
.LC0:
	.string	"spi@4000F000"
	.align	2
.LC1:
	.string	"status"
	.align	2
.LC2:
	.string	"okay"
	.align	2
.LC3:
	.string	"mode"
	.align	2
.LC4:
	.string	"master"
	.align	2
.LC5:
	.string	"slave"
	.align	2
.LC6:
	.string	"path"
	.align	2
.LC7:
	.string	"port"
	.align	2
.LC8:
	.string	"polar_phase"
	.align	2
.LC9:
	.string	"freq"
	.align	2
.LC10:
	.string	"pin"
	.align	2
.LC11:
	.string	"clk"
	.align	2
.LC12:
	.string	"cs"
	.align	2
.LC13:
	.string	"mosi"
	.align	2
.LC14:
	.string	"miso"
	.align	2
.LC15:
	.string	"dma_cfg"
	.align	2
.LC16:
	.string	"tx_dma_ch"
	.align	2
.LC17:
	.string	"rx_dma_ch"
	.section	.text.spi_arg_set_fdt2,"ax",@progbits
	.align	1
	.globl	spi_arg_set_fdt2
	.type	spi_arg_set_fdt2, @function
spi_arg_set_fdt2:
.LFB75:
	.loc 2 577 1
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
	.loc 2 589 11
	sw	zero,-28(s0)
	.loc 2 591 9
	sw	zero,-32(s0)
	.loc 2 592 9
	sw	zero,-36(s0)
	.loc 2 593 21
	sw	zero,-40(s0)
	.loc 2 594 9
	sw	zero,-72(s0)
	.loc 2 595 17
	sw	zero,-44(s0)
	.loc 2 596 9
	sw	zero,-48(s0)
	.loc 2 601 17
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	sw	a5,-76(s0)
	.loc 2 606 12
	sw	zero,-24(s0)
	.loc 2 606 5
	j	.L88
.L112:
	.loc 2 608 19
	lw	a3,-88(s0)
	lw	a4,-24(s0)
	addi	a5,s0,-76
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a2,a5
	mv	a1,a3
	lw	a0,-84(s0)
	call	fdt_subnode_offset
	sw	a0,-32(s0)
	.loc 2 609 12
	lw	a5,-32(s0)
	ble	a5,zero,.L114
	.loc 2 613 18
	addi	a5,s0,-72
	mv	a4,a5
	li	a3,0
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	lw	a1,-32(s0)
	lw	a0,-84(s0)
	call	fdt_stringlist_get
	sw	a0,-44(s0)
	.loc 2 614 21
	lw	a4,-72(s0)
	.loc 2 614 12
	li	a5,4
	bne	a4,a5,.L115
	.loc 2 614 31 discriminator 2
	li	a2,4
	lw	a1,-44(s0)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	memcmp
	mv	a5,a0
	.loc 2 614 27 discriminator 3
	bne	a5,zero,.L115
	.loc 2 619 18
	addi	a5,s0,-72
	mv	a4,a5
	li	a3,0
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	lw	a1,-32(s0)
	lw	a0,-84(s0)
	call	fdt_stringlist_get
	sw	a0,-44(s0)
	.loc 2 620 21
	lw	a4,-72(s0)
	.loc 2 620 12
	li	a5,6
	beq	a4,a5,.L93
	.loc 2 620 36 discriminator 1
	lw	a4,-72(s0)
	.loc 2 620 26 discriminator 1
	li	a5,5
	bne	a4,a5,.L116
.L93:
	.loc 2 620 47 discriminator 4
	li	a2,6
	lw	a1,-44(s0)
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	memcmp
	mv	a5,a0
	.loc 2 620 42 discriminator 5
	beq	a5,zero,.L95
	.loc 2 620 85 discriminator 6
	li	a2,5
	lw	a1,-44(s0)
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	memcmp
	mv	a5,a0
	.loc 2 620 81 discriminator 7
	bne	a5,zero,.L116
.L95:
	.loc 2 625 13
	li	a2,6
	lw	a1,-44(s0)
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	memcmp
	mv	a5,a0
	.loc 2 625 12 discriminator 1
	bne	a5,zero,.L96
	.loc 2 626 18
	sb	zero,-17(s0)
	j	.L97
.L96:
	.loc 2 628 18
	li	a5,1
	sb	a5,-17(s0)
.L97:
	.loc 2 632 22
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	lw	a1,-32(s0)
	lw	a0,-84(s0)
	call	fdt_stringlist_count
	sw	a0,-48(s0)
	.loc 2 633 12
	lw	a4,-48(s0)
	li	a5,1
	bne	a4,a5,.L117
	.loc 2 637 18
	addi	a5,s0,-72
	mv	a4,a5
	li	a3,0
	lui	a5,%hi(.LC6)
	addi	a2,a5,%lo(.LC6)
	lw	a1,-32(s0)
	lw	a0,-84(s0)
	call	fdt_stringlist_get
	sw	a0,-44(s0)
	.loc 2 641 14
	lw	a5,-44(s0)
	sw	a5,-28(s0)
	.loc 2 644 21
	addi	a5,s0,-72
	mv	a3,a5
	lui	a5,%hi(.LC7)
	addi	a2,a5,%lo(.LC7)
	lw	a1,-32(s0)
	lw	a0,-84(s0)
	call	fdt_getprop
	sw	a0,-40(s0)
	.loc 2 645 12
	lw	a5,-40(s0)
	beq	a5,zero,.L118
	.loc 2 649 26
	lw	a5,-40(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 2 649 14 discriminator 1
	sb	a5,-49(s0)
	.loc 2 650 18
	lbu	a5,-49(s0)
	.loc 2 650 12
	lw	a4,-24(s0)
	bne	a4,a5,.L119
	.loc 2 656 21
	addi	a5,s0,-72
	mv	a3,a5
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	lw	a1,-32(s0)
	lw	a0,-84(s0)
	call	fdt_getprop
	sw	a0,-40(s0)
	.loc 2 657 12
	lw	a5,-40(s0)
	beq	a5,zero,.L120
	.loc 2 661 33
	lw	a5,-40(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 2 661 21 discriminator 1
	sb	a5,-50(s0)
	.loc 2 664 21
	addi	a5,s0,-72
	mv	a3,a5
	lui	a5,%hi(.LC9)
	addi	a2,a5,%lo(.LC9)
	lw	a1,-32(s0)
	lw	a0,-84(s0)
	call	fdt_getprop
	sw	a0,-40(s0)
	.loc 2 665 12
	lw	a5,-40(s0)
	beq	a5,zero,.L121
	.loc 2 669 27
	lw	a5,-40(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	sw	a0,-56(s0)
	.loc 2 672 19
	lui	a5,%hi(.LC10)
	addi	a2,a5,%lo(.LC10)
	lw	a1,-32(s0)
	lw	a0,-84(s0)
	call	fdt_subnode_offset
	sw	a0,-36(s0)
	.loc 2 673 12
	lw	a5,-32(s0)
	ble	a5,zero,.L122
	.loc 2 678 21
	addi	a5,s0,-72
	mv	a3,a5
	lui	a5,%hi(.LC11)
	addi	a2,a5,%lo(.LC11)
	lw	a1,-36(s0)
	lw	a0,-84(s0)
	call	fdt_getprop
	sw	a0,-40(s0)
	.loc 2 679 12
	lw	a5,-40(s0)
	beq	a5,zero,.L123
	.loc 2 683 29
	lw	a5,-40(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 2 683 17 discriminator 1
	sb	a5,-57(s0)
	.loc 2 686 21
	addi	a5,s0,-72
	mv	a3,a5
	lui	a5,%hi(.LC12)
	addi	a2,a5,%lo(.LC12)
	lw	a1,-36(s0)
	lw	a0,-84(s0)
	call	fdt_getprop
	sw	a0,-40(s0)
	.loc 2 687 12
	lw	a5,-40(s0)
	beq	a5,zero,.L124
	.loc 2 691 28
	lw	a5,-40(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 2 691 16 discriminator 1
	sb	a5,-58(s0)
	.loc 2 694 21
	addi	a5,s0,-72
	mv	a3,a5
	lui	a5,%hi(.LC13)
	addi	a2,a5,%lo(.LC13)
	lw	a1,-36(s0)
	lw	a0,-84(s0)
	call	fdt_getprop
	sw	a0,-40(s0)
	.loc 2 695 12
	lw	a5,-40(s0)
	beq	a5,zero,.L125
	.loc 2 699 30
	lw	a5,-40(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 2 699 18 discriminator 1
	sb	a5,-59(s0)
	.loc 2 702 21
	addi	a5,s0,-72
	mv	a3,a5
	lui	a5,%hi(.LC14)
	addi	a2,a5,%lo(.LC14)
	lw	a1,-36(s0)
	lw	a0,-84(s0)
	call	fdt_getprop
	sw	a0,-40(s0)
	.loc 2 703 12
	lw	a5,-40(s0)
	beq	a5,zero,.L126
	.loc 2 707 30
	lw	a5,-40(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 2 707 18 discriminator 1
	sb	a5,-60(s0)
	.loc 2 710 19
	lui	a5,%hi(.LC15)
	addi	a2,a5,%lo(.LC15)
	lw	a1,-32(s0)
	lw	a0,-84(s0)
	call	fdt_subnode_offset
	sw	a0,-36(s0)
	.loc 2 711 12
	lw	a5,-32(s0)
	ble	a5,zero,.L127
	.loc 2 716 21
	addi	a5,s0,-72
	mv	a3,a5
	lui	a5,%hi(.LC16)
	addi	a2,a5,%lo(.LC16)
	lw	a1,-36(s0)
	lw	a0,-84(s0)
	call	fdt_getprop
	sw	a0,-40(s0)
	.loc 2 717 12
	lw	a5,-40(s0)
	beq	a5,zero,.L128
	.loc 2 721 31
	lw	a5,-40(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 2 721 19 discriminator 1
	sb	a5,-61(s0)
	.loc 2 724 21
	addi	a5,s0,-72
	mv	a3,a5
	lui	a5,%hi(.LC17)
	addi	a2,a5,%lo(.LC17)
	lw	a1,-36(s0)
	lw	a0,-84(s0)
	call	fdt_getprop
	sw	a0,-40(s0)
	.loc 2 725 12
	lw	a5,-40(s0)
	beq	a5,zero,.L129
	.loc 2 729 31
	lw	a5,-40(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
	.loc 2 729 19 discriminator 1
	sb	a5,-62(s0)
	.loc 2 731 15
	lbu	a6,-57(s0)
	lbu	a0,-62(s0)
	lbu	a4,-61(s0)
	lbu	a3,-50(s0)
	lbu	a2,-17(s0)
	lbu	a1,-49(s0)
	lbu	a5,-60(s0)
	sw	a5,8(sp)
	lbu	a5,-59(s0)
	sw	a5,4(sp)
	lbu	a5,-58(s0)
	sw	a5,0(sp)
	mv	a7,a6
	mv	a6,a0
	mv	a5,a4
	lw	a4,-56(s0)
	lw	a0,-28(s0)
	call	vfs_spi_init_fullname
	sw	a0,-68(s0)
	j	.L90
.L114:
	.loc 2 610 13
	nop
	j	.L90
.L115:
	.loc 2 616 13
	nop
	j	.L90
.L116:
	.loc 2 622 13
	nop
	j	.L90
.L117:
	.loc 2 635 13
	nop
	j	.L90
.L118:
	.loc 2 647 13
	nop
	j	.L90
.L119:
	.loc 2 652 13
	nop
	j	.L90
.L120:
	.loc 2 659 13
	nop
	j	.L90
.L121:
	.loc 2 667 13
	nop
	j	.L90
.L122:
	.loc 2 674 13
	nop
	j	.L90
.L123:
	.loc 2 681 13
	nop
	j	.L90
.L124:
	.loc 2 689 13
	nop
	j	.L90
.L125:
	.loc 2 697 13
	nop
	j	.L90
.L126:
	.loc 2 705 13
	nop
	j	.L90
.L127:
	.loc 2 712 13
	nop
	j	.L90
.L128:
	.loc 2 719 13
	nop
	j	.L90
.L129:
	.loc 2 727 13
	nop
.L90:
	.loc 2 606 25 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L88:
	.loc 2 606 19 discriminator 1
	lw	a5,-24(s0)
	ble	a5,zero,.L112
	.loc 2 738 12
	li	a5,0
	.loc 2 739 1
	mv	a0,a5
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE75:
	.size	spi_arg_set_fdt2, .-spi_arg_set_fdt2
	.section	.text.vfs_spi_fdt_init,"ax",@progbits
	.align	1
	.globl	vfs_spi_fdt_init
	.type	vfs_spi_fdt_init, @function
vfs_spi_fdt_init:
.LFB76:
	.loc 2 742 1
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
	.loc 2 743 5
	lw	a5,-20(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	spi_arg_set_fdt2
	.loc 2 745 12
	li	a5,0
	.loc 2 746 1
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
.LFE76:
	.size	vfs_spi_fdt_init, .-vfs_spi_fdt_init
	.section	.text.bl_spi0_dma_int_handler_tx,"ax",@progbits
	.align	1
	.globl	bl_spi0_dma_int_handler_tx
	.type	bl_spi0_dma_int_handler_tx, @function
bl_spi0_dma_int_handler_tx:
.LFB77:
	.loc 2 749 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 750 16
	sw	zero,-20(s0)
	.loc 2 751 16
	sw	zero,-24(s0)
	.loc 2 753 13
	lui	a5,%hi(g_hal_buf)
	lw	a5,%lo(g_hal_buf)(a5)
	.loc 2 753 8
	beq	a5,zero,.L136
	.loc 2 754 35
	lui	a5,%hi(g_hal_buf)
	lw	a5,%lo(g_hal_buf)(a5)
	.loc 2 754 45
	lbu	a5,9(a5)
	.loc 2 754 9
	mv	a0,a5
	call	bl_dma_int_clear
	.loc 2 756 22
	lui	a5,%hi(g_hal_buf)
	lw	a5,%lo(g_hal_buf)(a5)
	.loc 2 756 32
	lw	a5,16(a5)
	.loc 2 756 12
	beq	a5,zero,.L134
	.loc 2 757 58
	lui	a5,%hi(g_hal_buf)
	lw	a5,%lo(g_hal_buf)(a5)
	.loc 2 757 23
	lw	a5,16(a5)
	addi	a4,s0,-24
	mv	a2,a4
	li	a1,1
	mv	a0,a5
	call	xEventGroupSetBitsFromISR
	sw	a0,-20(s0)
.L134:
	.loc 2 762 11
	lw	a5,-20(s0)
	beq	a5,zero,.L136
	.loc 2 763 17
	lw	a5,-24(s0)
	.loc 2 763 15
	beq	a5,zero,.L136
	.loc 2 763 44 discriminator 1
	call	vTaskSwitchContext
	.loc 2 769 5
	nop
.L136:
	nop
	.loc 2 770 1
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
	.size	bl_spi0_dma_int_handler_tx, .-bl_spi0_dma_int_handler_tx
	.section	.text.bl_spi0_dma_int_handler_rx,"ax",@progbits
	.align	1
	.globl	bl_spi0_dma_int_handler_rx
	.type	bl_spi0_dma_int_handler_rx, @function
bl_spi0_dma_int_handler_rx:
.LFB78:
	.loc 2 773 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 774 16
	sw	zero,-20(s0)
	.loc 2 775 16
	sw	zero,-24(s0)
	.loc 2 777 13
	lui	a5,%hi(g_hal_buf)
	lw	a5,%lo(g_hal_buf)(a5)
	.loc 2 777 8
	beq	a5,zero,.L141
	.loc 2 778 35
	lui	a5,%hi(g_hal_buf)
	lw	a5,%lo(g_hal_buf)(a5)
	.loc 2 778 45
	lbu	a5,10(a5)
	.loc 2 778 9
	mv	a0,a5
	call	bl_dma_int_clear
	.loc 2 780 22
	lui	a5,%hi(g_hal_buf)
	lw	a5,%lo(g_hal_buf)(a5)
	.loc 2 780 32
	lw	a5,16(a5)
	.loc 2 780 12
	beq	a5,zero,.L139
	.loc 2 781 58
	lui	a5,%hi(g_hal_buf)
	lw	a5,%lo(g_hal_buf)(a5)
	.loc 2 781 23
	lw	a5,16(a5)
	addi	a4,s0,-24
	mv	a2,a4
	li	a1,2
	mv	a0,a5
	call	xEventGroupSetBitsFromISR
	sw	a0,-20(s0)
.L139:
	.loc 2 786 11
	lw	a5,-20(s0)
	beq	a5,zero,.L141
	.loc 2 787 17
	lw	a5,-24(s0)
	.loc 2 787 15
	beq	a5,zero,.L141
	.loc 2 787 44 discriminator 1
	call	vTaskSwitchContext
	.loc 2 792 5
	nop
.L141:
	nop
	.loc 2 793 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE78:
	.size	bl_spi0_dma_int_handler_rx, .-bl_spi0_dma_int_handler_rx
	.text
.Letext0:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timeval.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timespec.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/types.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/stat.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_dir.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_inode.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/device/vfs_spi.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/hal/soc/spi.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_spi.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 21 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/dma_reg.h"
	.file 22 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_dma.h"
	.file 23 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 24 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/event_groups.h"
	.file 25 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/libfdt.h"
	.file 26 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 27 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_register.h"
	.file 28 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/aos/kernel.h"
	.file 29 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 30 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_dma.h"
	.file 31 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_irq.h"
	.file 32 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1eef
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x24
	.4byte	.LASF469
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x25
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0xb
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0x4f
	.byte	0x1b
	.4byte	0x82
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0xc8
	.byte	0x17
	.4byte	0x45
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x5
	.byte	0x1e
	.byte	0xe
	.4byte	0x6f
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x5
	.byte	0x22
	.byte	0xe
	.4byte	0x6f
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x2e
	.byte	0xe
	.4byte	0x6f
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x5
	.byte	0x38
	.byte	0xf
	.4byte	0x61
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x5
	.byte	0x3c
	.byte	0x18
	.4byte	0x68
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x3f
	.byte	0x18
	.4byte	0x68
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x4b
	.byte	0x18
	.4byte	0x68
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x5a
	.byte	0x14
	.4byte	0x76
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0x66
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0x93
	.byte	0x14
	.4byte	0x2b
	.uleb128 0x26
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x5
	.byte	0xd5
	.byte	0x18
	.4byte	0x68
	.uleb128 0x5
	.4byte	0x127
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF26
	.uleb128 0x12
	.4byte	0x127
	.uleb128 0x5
	.4byte	0x12e
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x6
	.byte	0x4c
	.byte	0x11
	.4byte	0xfc
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x6
	.byte	0x51
	.byte	0x12
	.4byte	0x108
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x7
	.byte	0x28
	.byte	0x12
	.4byte	0x6f
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x7
	.byte	0x2e
	.byte	0x17
	.4byte	0x5a
	.uleb128 0x12
	.4byte	0x15c
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x7
	.byte	0x31
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x7
	.byte	0x34
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x12
	.4byte	0x179
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x8
	.byte	0x2a
	.byte	0x19
	.4byte	0x90
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x10
	.byte	0x9
	.byte	0x2f
	.byte	0x8
	.4byte	0x1be
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x9
	.byte	0x30
	.byte	0x9
	.4byte	0x18a
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x9
	.byte	0x31
	.byte	0x7
	.4byte	0x6f
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0xa
	.byte	0x61
	.byte	0x14
	.4byte	0x9c
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0xa
	.byte	0x66
	.byte	0x15
	.4byte	0xa8
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0xa
	.byte	0x89
	.byte	0x11
	.4byte	0xe4
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0xa
	.byte	0x9f
	.byte	0x11
	.4byte	0xc0
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0xa
	.byte	0xa3
	.byte	0x11
	.4byte	0xcc
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0xa
	.byte	0xa7
	.byte	0x11
	.4byte	0xd8
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0xa
	.byte	0xbb
	.byte	0x12
	.4byte	0xf0
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0xa
	.byte	0xc0
	.byte	0x13
	.4byte	0x116
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x58
	.byte	0xb
	.byte	0x1b
	.byte	0x8
	.4byte	0x2e2
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0xb
	.byte	0x1d
	.byte	0x9
	.4byte	0x1e2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0xb
	.byte	0x1e
	.byte	0x9
	.4byte	0x1d6
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0xb
	.byte	0x1f
	.byte	0xa
	.4byte	0x206
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0xb
	.byte	0x20
	.byte	0xb
	.4byte	0x212
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0xb
	.byte	0x21
	.byte	0x9
	.4byte	0x1ee
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0xb
	.byte	0x22
	.byte	0x9
	.4byte	0x1fa
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0xb
	.byte	0x23
	.byte	0x9
	.4byte	0x1e2
	.byte	0xe
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0xb
	.byte	0x24
	.byte	0x9
	.4byte	0x138
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0xb
	.byte	0x2a
	.byte	0x13
	.4byte	0x196
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0xb
	.byte	0x2b
	.byte	0x13
	.4byte	0x196
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0xb
	.byte	0x2c
	.byte	0x13
	.4byte	0x196
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0xb
	.byte	0x2d
	.byte	0xd
	.4byte	0x1ca
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0xb
	.byte	0x2e
	.byte	0xc
	.4byte	0x1be
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0xb
	.byte	0x30
	.byte	0x8
	.4byte	0x2e2
	.byte	0x50
	.byte	0
	.uleb128 0x16
	.4byte	0x6f
	.4byte	0x2f2
	.uleb128 0x18
	.4byte	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x24
	.byte	0xc
	.byte	0x4
	.byte	0x8
	.4byte	0x375
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0xc
	.byte	0x5
	.byte	0xa
	.4byte	0x6f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0xc
	.byte	0x6
	.byte	0xa
	.4byte	0x6f
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xc
	.byte	0x7
	.byte	0xa
	.4byte	0x6f
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0xc
	.byte	0x8
	.byte	0xa
	.4byte	0x6f
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xc
	.byte	0x9
	.byte	0xa
	.4byte	0x6f
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xc
	.byte	0xa
	.byte	0xa
	.4byte	0x6f
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0xc
	.byte	0xb
	.byte	0xa
	.4byte	0x6f
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xc
	.byte	0xc
	.byte	0xa
	.4byte	0x6f
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0xc
	.byte	0xd
	.byte	0xa
	.4byte	0x6f
	.byte	0x20
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0xc
	.byte	0x10
	.4byte	0x3a5
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0xc
	.byte	0x11
	.byte	0x9
	.4byte	0x2b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0xc
	.byte	0x12
	.byte	0xd
	.4byte	0x15c
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xc
	.byte	0x13
	.byte	0xa
	.4byte	0x3a5
	.byte	0x5
	.byte	0
	.uleb128 0x16
	.4byte	0x127
	.4byte	0x3b4
	.uleb128 0x27
	.4byte	0x3e
	.byte	0
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0xc
	.byte	0x14
	.byte	0x3
	.4byte	0x375
	.uleb128 0xc
	.byte	0x8
	.byte	0xc
	.byte	0x16
	.4byte	0x3e3
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0xc
	.byte	0x17
	.byte	0x9
	.4byte	0x2b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0xc
	.byte	0x18
	.byte	0x9
	.4byte	0x2b
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0xc
	.byte	0x19
	.byte	0x3
	.4byte	0x3c0
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0xd
	.byte	0x2c
	.byte	0x1f
	.4byte	0x464
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x1c
	.byte	0xd
	.byte	0x46
	.byte	0x8
	.4byte	0x464
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0xd
	.byte	0x47
	.byte	0xb
	.4byte	0x6a2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0xd
	.byte	0x48
	.byte	0xb
	.4byte	0x6b6
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0xd
	.byte	0x49
	.byte	0xf
	.4byte	0x6d4
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0xd
	.byte	0x4a
	.byte	0xf
	.4byte	0x6f8
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0xd
	.byte	0x4b
	.byte	0xb
	.4byte	0x716
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0xd
	.byte	0x4d
	.byte	0xb
	.4byte	0x745
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0xd
	.byte	0x4f
	.byte	0xb
	.4byte	0x6b6
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.4byte	0x3fb
	.uleb128 0x4
	.4byte	.LASF86
	.byte	0xd
	.byte	0x2d
	.byte	0x1d
	.4byte	0x587
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0x50
	.byte	0xd
	.byte	0x52
	.byte	0x8
	.4byte	0x587
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0xd
	.byte	0x53
	.byte	0xb
	.4byte	0x763
	.byte	0
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0xd
	.byte	0x54
	.byte	0xb
	.4byte	0x6b6
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0xd
	.byte	0x55
	.byte	0xf
	.4byte	0x781
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0xd
	.byte	0x56
	.byte	0xf
	.4byte	0x79f
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0xd
	.byte	0x57
	.byte	0xd
	.4byte	0x7bd
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0xd
	.byte	0x58
	.byte	0xb
	.4byte	0x6b6
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0xd
	.byte	0x59
	.byte	0xb
	.4byte	0x7e0
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0xd
	.byte	0x5a
	.byte	0xb
	.4byte	0x7f9
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0xd
	.byte	0x5b
	.byte	0xb
	.4byte	0x817
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0xd
	.byte	0x5c
	.byte	0x12
	.4byte	0x835
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0xd
	.byte	0x5d
	.byte	0x15
	.4byte	0x853
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0xd
	.byte	0x5e
	.byte	0xb
	.4byte	0x86c
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0xd
	.byte	0x5f
	.byte	0xb
	.4byte	0x7f9
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0xd
	.byte	0x60
	.byte	0xb
	.4byte	0x7f9
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0xd
	.byte	0x61
	.byte	0xc
	.4byte	0x881
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0xd
	.byte	0x62
	.byte	0xc
	.4byte	0x89a
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF98
	.byte	0xd
	.byte	0x63
	.byte	0xc
	.4byte	0x8b4
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0xd
	.byte	0x64
	.byte	0xb
	.4byte	0x716
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0xd
	.byte	0x65
	.byte	0xb
	.4byte	0x8d7
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0xd
	.byte	0x66
	.byte	0xb
	.4byte	0x763
	.byte	0x4c
	.byte	0
	.uleb128 0x12
	.4byte	0x475
	.uleb128 0x28
	.4byte	.LASF470
	.byte	0x4
	.byte	0xd
	.byte	0x2f
	.byte	0x7
	.4byte	0x5b0
	.uleb128 0x1f
	.4byte	.LASF100
	.byte	0x30
	.byte	0x17
	.4byte	0x5b0
	.uleb128 0x1f
	.4byte	.LASF101
	.byte	0x31
	.byte	0x15
	.4byte	0x5b5
	.byte	0
	.uleb128 0x5
	.4byte	0x3ef
	.uleb128 0x5
	.4byte	0x469
	.uleb128 0xc
	.byte	0x14
	.byte	0xd
	.byte	0x35
	.4byte	0x611
	.uleb128 0x19
	.string	"ops"
	.byte	0xd
	.byte	0x36
	.byte	0x17
	.4byte	0x58c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0xd
	.byte	0x37
	.byte	0xb
	.4byte	0x114
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF103
	.byte	0xd
	.byte	0x38
	.byte	0xb
	.4byte	0x122
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0xd
	.byte	0x39
	.byte	0x9
	.4byte	0x2b
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0xd
	.byte	0x3a
	.byte	0xd
	.4byte	0x15c
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0xd
	.byte	0x3b
	.byte	0xd
	.4byte	0x15c
	.byte	0x11
	.byte	0
	.uleb128 0x4
	.4byte	.LASF107
	.byte	0xd
	.byte	0x3c
	.byte	0x3
	.4byte	0x5ba
	.uleb128 0xc
	.byte	0xc
	.byte	0xd
	.byte	0x3e
	.4byte	0x64d
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0xd
	.byte	0x3f
	.byte	0xe
	.4byte	0x64d
	.byte	0
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0xd
	.byte	0x40
	.byte	0xb
	.4byte	0x114
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0xd
	.byte	0x41
	.byte	0xc
	.4byte	0x32
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	0x611
	.uleb128 0x4
	.4byte	.LASF111
	.byte	0xd
	.byte	0x42
	.byte	0x3
	.4byte	0x61d
	.uleb128 0x4
	.4byte	.LASF112
	.byte	0xd
	.byte	0x45
	.byte	0x10
	.4byte	0x66a
	.uleb128 0x5
	.4byte	0x66f
	.uleb128 0x1b
	.4byte	0x67f
	.uleb128 0x2
	.4byte	0x67f
	.uleb128 0x2
	.4byte	0x114
	.byte	0
	.uleb128 0x5
	.4byte	0x684
	.uleb128 0x20
	.4byte	.LASF349
	.uleb128 0x9
	.4byte	0x2b
	.4byte	0x69d
	.uleb128 0x2
	.4byte	0x64d
	.uleb128 0x2
	.4byte	0x69d
	.byte	0
	.uleb128 0x5
	.4byte	0x652
	.uleb128 0x5
	.4byte	0x689
	.uleb128 0x9
	.4byte	0x2b
	.4byte	0x6b6
	.uleb128 0x2
	.4byte	0x69d
	.byte	0
	.uleb128 0x5
	.4byte	0x6a7
	.uleb128 0x9
	.4byte	0x144
	.4byte	0x6d4
	.uleb128 0x2
	.4byte	0x69d
	.uleb128 0x2
	.4byte	0x114
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0x5
	.4byte	0x6bb
	.uleb128 0x9
	.4byte	0x144
	.4byte	0x6f2
	.uleb128 0x2
	.4byte	0x69d
	.uleb128 0x2
	.4byte	0x6f2
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0x5
	.4byte	0x6f7
	.uleb128 0x29
	.uleb128 0x5
	.4byte	0x6d9
	.uleb128 0x9
	.4byte	0x2b
	.4byte	0x716
	.uleb128 0x2
	.4byte	0x69d
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x82
	.byte	0
	.uleb128 0x5
	.4byte	0x6fd
	.uleb128 0x9
	.4byte	0x2b
	.4byte	0x73e
	.uleb128 0x2
	.4byte	0x69d
	.uleb128 0x2
	.4byte	0x73e
	.uleb128 0x2
	.4byte	0x65e
	.uleb128 0x2
	.4byte	0x67f
	.uleb128 0x2
	.4byte	0x114
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.4byte	.LASF113
	.uleb128 0x5
	.4byte	0x71b
	.uleb128 0x9
	.4byte	0x2b
	.4byte	0x763
	.uleb128 0x2
	.4byte	0x69d
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x5
	.4byte	0x74a
	.uleb128 0x9
	.4byte	0x144
	.4byte	0x781
	.uleb128 0x2
	.4byte	0x69d
	.uleb128 0x2
	.4byte	0x122
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0x5
	.4byte	0x768
	.uleb128 0x9
	.4byte	0x144
	.4byte	0x79f
	.uleb128 0x2
	.4byte	0x69d
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0x5
	.4byte	0x786
	.uleb128 0x9
	.4byte	0x138
	.4byte	0x7bd
	.uleb128 0x2
	.4byte	0x69d
	.uleb128 0x2
	.4byte	0x138
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x5
	.4byte	0x7a4
	.uleb128 0x9
	.4byte	0x2b
	.4byte	0x7db
	.uleb128 0x2
	.4byte	0x69d
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x7db
	.byte	0
	.uleb128 0x5
	.4byte	0x21e
	.uleb128 0x5
	.4byte	0x7c2
	.uleb128 0x9
	.4byte	0x2b
	.4byte	0x7f9
	.uleb128 0x2
	.4byte	0x69d
	.uleb128 0x2
	.4byte	0x133
	.byte	0
	.uleb128 0x5
	.4byte	0x7e5
	.uleb128 0x9
	.4byte	0x2b
	.4byte	0x817
	.uleb128 0x2
	.4byte	0x69d
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x133
	.byte	0
	.uleb128 0x5
	.4byte	0x7fe
	.uleb128 0x9
	.4byte	0x830
	.4byte	0x830
	.uleb128 0x2
	.4byte	0x69d
	.uleb128 0x2
	.4byte	0x133
	.byte	0
	.uleb128 0x5
	.4byte	0x3e3
	.uleb128 0x5
	.4byte	0x81c
	.uleb128 0x9
	.4byte	0x84e
	.4byte	0x84e
	.uleb128 0x2
	.4byte	0x69d
	.uleb128 0x2
	.4byte	0x830
	.byte	0
	.uleb128 0x5
	.4byte	0x3b4
	.uleb128 0x5
	.4byte	0x83a
	.uleb128 0x9
	.4byte	0x2b
	.4byte	0x86c
	.uleb128 0x2
	.4byte	0x69d
	.uleb128 0x2
	.4byte	0x830
	.byte	0
	.uleb128 0x5
	.4byte	0x858
	.uleb128 0x1b
	.4byte	0x881
	.uleb128 0x2
	.4byte	0x69d
	.uleb128 0x2
	.4byte	0x830
	.byte	0
	.uleb128 0x5
	.4byte	0x871
	.uleb128 0x9
	.4byte	0x6f
	.4byte	0x89a
	.uleb128 0x2
	.4byte	0x69d
	.uleb128 0x2
	.4byte	0x830
	.byte	0
	.uleb128 0x5
	.4byte	0x886
	.uleb128 0x1b
	.4byte	0x8b4
	.uleb128 0x2
	.4byte	0x69d
	.uleb128 0x2
	.4byte	0x830
	.uleb128 0x2
	.4byte	0x6f
	.byte	0
	.uleb128 0x5
	.4byte	0x89f
	.uleb128 0x9
	.4byte	0x2b
	.4byte	0x8d2
	.uleb128 0x2
	.4byte	0x69d
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x8d2
	.byte	0
	.uleb128 0x5
	.4byte	0x2f2
	.uleb128 0x5
	.4byte	0x8b9
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0x1c
	.byte	0xe
	.byte	0x29
	.byte	0x10
	.4byte	0x986
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0xe
	.byte	0x2a
	.byte	0xe
	.4byte	0x179
	.byte	0
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0xe
	.byte	0x2b
	.byte	0xe
	.4byte	0x179
	.byte	0x4
	.uleb128 0x19
	.string	"len"
	.byte	0xe
	.byte	0x2c
	.byte	0xe
	.4byte	0x179
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF117
	.byte	0xe
	.byte	0x2d
	.byte	0xe
	.4byte	0x179
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0xe
	.byte	0x2e
	.byte	0xe
	.4byte	0x16d
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0xe
	.byte	0x2f
	.byte	0xe
	.4byte	0x16d
	.byte	0x12
	.uleb128 0x3
	.4byte	.LASF120
	.byte	0xe
	.byte	0x30
	.byte	0xd
	.4byte	0x15c
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0xe
	.byte	0x31
	.byte	0xd
	.4byte	0x15c
	.byte	0x15
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0xe
	.byte	0x32
	.byte	0xd
	.4byte	0x15c
	.byte	0x16
	.uleb128 0x3
	.4byte	.LASF123
	.byte	0xe
	.byte	0x33
	.byte	0xd
	.4byte	0x15c
	.byte	0x17
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0xe
	.byte	0x34
	.byte	0xd
	.4byte	0x15c
	.byte	0x18
	.uleb128 0x19
	.string	"pad"
	.byte	0xe
	.byte	0x35
	.byte	0xd
	.4byte	0x15c
	.byte	0x19
	.byte	0
	.uleb128 0x4
	.4byte	.LASF125
	.byte	0xe
	.byte	0x36
	.byte	0x3
	.4byte	0x8dc
	.uleb128 0x2a
	.4byte	.LASF368
	.byte	0xe
	.byte	0x39
	.byte	0x1e
	.4byte	0x464
	.uleb128 0xc
	.byte	0x8
	.byte	0xf
	.byte	0xb
	.4byte	0x9c1
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0xf
	.byte	0xc
	.byte	0xd
	.4byte	0x15c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0xf
	.byte	0xd
	.byte	0xe
	.4byte	0x179
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF128
	.byte	0xf
	.byte	0xe
	.byte	0x3
	.4byte	0x99e
	.uleb128 0xc
	.byte	0x10
	.byte	0xf
	.byte	0x10
	.4byte	0x9fd
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0xf
	.byte	0x11
	.byte	0xd
	.4byte	0x15c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF130
	.byte	0xf
	.byte	0x12
	.byte	0x12
	.4byte	0x9c1
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0xf
	.byte	0x13
	.byte	0xb
	.4byte	0x114
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF132
	.byte	0xf
	.byte	0x14
	.byte	0x3
	.4byte	0x9cd
	.uleb128 0x8
	.4byte	0x5a
	.byte	0x10
	.byte	0x41
	.byte	0x1
	.4byte	0xbb4
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF135
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF137
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF138
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF139
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF140
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF142
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF144
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF147
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF149
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF150
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF152
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF157
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF158
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF159
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF160
	.byte	0x27
	.uleb128 0x1
	.4byte	.LASF161
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF162
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF163
	.byte	0x2a
	.uleb128 0x1
	.4byte	.LASF164
	.byte	0x2b
	.uleb128 0x1
	.4byte	.LASF165
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF166
	.byte	0x2d
	.uleb128 0x1
	.4byte	.LASF167
	.byte	0x2e
	.uleb128 0x1
	.4byte	.LASF168
	.byte	0x2f
	.uleb128 0x1
	.4byte	.LASF169
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF170
	.byte	0x31
	.uleb128 0x1
	.4byte	.LASF171
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF172
	.byte	0x33
	.uleb128 0x1
	.4byte	.LASF173
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF174
	.byte	0x35
	.uleb128 0x1
	.4byte	.LASF175
	.byte	0x36
	.uleb128 0x1
	.4byte	.LASF176
	.byte	0x37
	.uleb128 0x1
	.4byte	.LASF177
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF178
	.byte	0x39
	.uleb128 0x1
	.4byte	.LASF179
	.byte	0x3a
	.uleb128 0x1
	.4byte	.LASF180
	.byte	0x3b
	.uleb128 0x1
	.4byte	.LASF181
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF182
	.byte	0x3d
	.uleb128 0x1
	.4byte	.LASF183
	.byte	0x3e
	.uleb128 0x1
	.4byte	.LASF184
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF185
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF186
	.byte	0x41
	.uleb128 0x1
	.4byte	.LASF187
	.byte	0x42
	.uleb128 0x1
	.4byte	.LASF188
	.byte	0x43
	.uleb128 0x1
	.4byte	.LASF189
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF190
	.byte	0x45
	.uleb128 0x1
	.4byte	.LASF191
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF192
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF193
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF194
	.byte	0x49
	.uleb128 0x1
	.4byte	.LASF195
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF196
	.byte	0x4b
	.uleb128 0x1
	.4byte	.LASF197
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF198
	.byte	0x4d
	.uleb128 0x1
	.4byte	.LASF199
	.byte	0x4e
	.uleb128 0x1
	.4byte	.LASF200
	.byte	0x4f
	.uleb128 0x1
	.4byte	.LASF201
	.byte	0x50
	.byte	0
	.uleb128 0x16
	.4byte	0x15c
	.4byte	0xbc4
	.uleb128 0x18
	.4byte	0x3e
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x5a
	.byte	0x11
	.byte	0x17
	.byte	0x1
	.4byte	0xbe3
	.uleb128 0x1
	.4byte	.LASF202
	.byte	0
	.uleb128 0x1
	.4byte	.LASF203
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF204
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF205
	.byte	0x11
	.byte	0x1b
	.byte	0x2
	.4byte	0xbc4
	.uleb128 0x8
	.4byte	0x5a
	.byte	0x11
	.byte	0x21
	.byte	0x1
	.4byte	0xc08
	.uleb128 0x1
	.4byte	.LASF206
	.byte	0
	.uleb128 0x1
	.4byte	.LASF207
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF208
	.byte	0x11
	.byte	0x24
	.byte	0x2
	.4byte	0xbef
	.uleb128 0x8
	.4byte	0x5a
	.byte	0x11
	.byte	0x33
	.byte	0x1
	.4byte	0xc2d
	.uleb128 0x1
	.4byte	.LASF209
	.byte	0
	.uleb128 0x1
	.4byte	.LASF210
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF211
	.byte	0x11
	.byte	0x36
	.byte	0x2
	.4byte	0xc14
	.uleb128 0x8
	.4byte	0x5a
	.byte	0x12
	.byte	0x39
	.byte	0xe
	.4byte	0xc52
	.uleb128 0x1
	.4byte	.LASF212
	.byte	0
	.uleb128 0x1
	.4byte	.LASF213
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF214
	.byte	0x12
	.byte	0x3c
	.byte	0x2
	.4byte	0xc39
	.uleb128 0x8
	.4byte	0x5a
	.byte	0x12
	.byte	0x41
	.byte	0xe
	.4byte	0xc77
	.uleb128 0x1
	.4byte	.LASF215
	.byte	0
	.uleb128 0x1
	.4byte	.LASF216
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF217
	.byte	0x12
	.byte	0x44
	.byte	0x2
	.4byte	0xc5e
	.uleb128 0x8
	.4byte	0x5a
	.byte	0x12
	.byte	0x49
	.byte	0xe
	.4byte	0xc9c
	.uleb128 0x1
	.4byte	.LASF218
	.byte	0
	.uleb128 0x1
	.4byte	.LASF219
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF220
	.byte	0x12
	.byte	0x4c
	.byte	0x2
	.4byte	0xc83
	.uleb128 0x8
	.4byte	0x5a
	.byte	0x12
	.byte	0x51
	.byte	0xe
	.4byte	0xcc1
	.uleb128 0x1
	.4byte	.LASF221
	.byte	0
	.uleb128 0x1
	.4byte	.LASF222
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF223
	.byte	0x12
	.byte	0x54
	.byte	0x2
	.4byte	0xca8
	.uleb128 0x8
	.4byte	0x5a
	.byte	0x12
	.byte	0x59
	.byte	0xe
	.4byte	0xce6
	.uleb128 0x1
	.4byte	.LASF224
	.byte	0
	.uleb128 0x1
	.4byte	.LASF225
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF226
	.byte	0x12
	.byte	0x5c
	.byte	0x2
	.4byte	0xccd
	.uleb128 0x8
	.4byte	0x5a
	.byte	0x12
	.byte	0x61
	.byte	0xe
	.4byte	0xd17
	.uleb128 0x1
	.4byte	.LASF227
	.byte	0
	.uleb128 0x1
	.4byte	.LASF228
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF229
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF230
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF231
	.byte	0x12
	.byte	0x66
	.byte	0x2
	.4byte	0xcf2
	.uleb128 0x8
	.4byte	0x5a
	.byte	0x12
	.byte	0x6b
	.byte	0xe
	.4byte	0xd3c
	.uleb128 0x1
	.4byte	.LASF232
	.byte	0
	.uleb128 0x1
	.4byte	.LASF233
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF234
	.byte	0x12
	.byte	0x6e
	.byte	0x2
	.4byte	0xd23
	.uleb128 0x8
	.4byte	0x5a
	.byte	0x12
	.byte	0x85
	.byte	0xe
	.4byte	0xd7f
	.uleb128 0x1
	.4byte	.LASF235
	.byte	0
	.uleb128 0x1
	.4byte	.LASF236
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF237
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF238
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF239
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF240
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF241
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF242
	.byte	0x12
	.byte	0x8d
	.byte	0x2
	.4byte	0xd48
	.uleb128 0xc
	.byte	0x7
	.byte	0x12
	.byte	0x92
	.4byte	0xdef
	.uleb128 0x3
	.4byte	.LASF243
	.byte	0x12
	.byte	0x93
	.byte	0x11
	.4byte	0xc08
	.byte	0
	.uleb128 0x3
	.4byte	.LASF244
	.byte	0x12
	.byte	0x94
	.byte	0x11
	.4byte	0xc08
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF245
	.byte	0x12
	.byte	0x95
	.byte	0x1b
	.4byte	0xc77
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF246
	.byte	0x12
	.byte	0x96
	.byte	0x1a
	.4byte	0xc9c
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF247
	.byte	0x12
	.byte	0x97
	.byte	0x20
	.4byte	0xcc1
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF248
	.byte	0x12
	.byte	0x98
	.byte	0x1b
	.4byte	0xce6
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF249
	.byte	0x12
	.byte	0x99
	.byte	0x18
	.4byte	0xd17
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF250
	.byte	0x12
	.byte	0x9a
	.byte	0x2
	.4byte	0xd8b
	.uleb128 0xc
	.byte	0x5
	.byte	0x12
	.byte	0x9f
	.4byte	0xe45
	.uleb128 0x3
	.4byte	.LASF251
	.byte	0x12
	.byte	0xa0
	.byte	0xd
	.4byte	0x15c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF252
	.byte	0x12
	.byte	0xa1
	.byte	0xd
	.4byte	0x15c
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF253
	.byte	0x12
	.byte	0xa2
	.byte	0xd
	.4byte	0x15c
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF254
	.byte	0x12
	.byte	0xa3
	.byte	0xd
	.4byte	0x15c
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF255
	.byte	0x12
	.byte	0xa4
	.byte	0xd
	.4byte	0x15c
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF256
	.byte	0x12
	.byte	0xa5
	.byte	0x2
	.4byte	0xdfb
	.uleb128 0xc
	.byte	0x4
	.byte	0x12
	.byte	0xaa
	.4byte	0xe8e
	.uleb128 0x3
	.4byte	.LASF257
	.byte	0x12
	.byte	0xab
	.byte	0xd
	.4byte	0x15c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF258
	.byte	0x12
	.byte	0xac
	.byte	0xd
	.4byte	0x15c
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF259
	.byte	0x12
	.byte	0xad
	.byte	0x11
	.4byte	0xc08
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF260
	.byte	0x12
	.byte	0xae
	.byte	0x11
	.4byte	0xc08
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF261
	.byte	0x12
	.byte	0xaf
	.byte	0x2
	.4byte	0xe51
	.uleb128 0x8
	.4byte	0x5a
	.byte	0x13
	.byte	0x29
	.byte	0x1
	.4byte	0xf37
	.uleb128 0x1
	.4byte	.LASF262
	.byte	0
	.uleb128 0x1
	.4byte	.LASF263
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF264
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF265
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF266
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF267
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF268
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF269
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF270
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF271
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF272
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF273
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF274
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF275
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF276
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF277
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF278
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF279
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF280
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF281
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF282
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF283
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF284
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF285
	.byte	0x17
	.byte	0
	.uleb128 0x4
	.4byte	.LASF286
	.byte	0x13
	.byte	0x42
	.byte	0x2
	.4byte	0xe9a
	.uleb128 0x8
	.4byte	0x5a
	.byte	0x13
	.byte	0x4c
	.byte	0x1
	.4byte	0xf8c
	.uleb128 0x1
	.4byte	.LASF287
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF288
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF289
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF290
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF291
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF292
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF293
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF294
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF295
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF296
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.4byte	.LASF297
	.byte	0x13
	.byte	0x57
	.byte	0x2
	.4byte	0xf43
	.uleb128 0x8
	.4byte	0x5a
	.byte	0x14
	.byte	0x74
	.byte	0xe
	.4byte	0xfb1
	.uleb128 0x1
	.4byte	.LASF298
	.byte	0
	.uleb128 0x1
	.4byte	.LASF299
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF300
	.byte	0x14
	.byte	0x77
	.byte	0x2
	.4byte	0xf98
	.uleb128 0x2b
	.4byte	.LASF301
	.byte	0x4
	.byte	0x15
	.2byte	0x4a0
	.byte	0x10
	.4byte	0x1054
	.uleb128 0x11
	.4byte	.LASF302
	.2byte	0x4a1
	.4byte	0x179
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.4byte	.LASF303
	.2byte	0x4a2
	.4byte	0x179
	.byte	0x3
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF304
	.2byte	0x4a3
	.4byte	0x179
	.byte	0x3
	.byte	0xf
	.uleb128 0x11
	.4byte	.LASF305
	.2byte	0x4a4
	.4byte	0x179
	.byte	0x3
	.byte	0x12
	.uleb128 0x11
	.4byte	.LASF306
	.2byte	0x4a5
	.4byte	0x179
	.byte	0x3
	.byte	0x15
	.uleb128 0x11
	.4byte	.LASF307
	.2byte	0x4a6
	.4byte	0x179
	.byte	0x1
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF308
	.2byte	0x4a7
	.4byte	0x179
	.byte	0x1
	.byte	0x19
	.uleb128 0x1c
	.string	"SI"
	.2byte	0x4a8
	.4byte	0x179
	.byte	0x1a
	.uleb128 0x1c
	.string	"DI"
	.2byte	0x4a9
	.4byte	0x179
	.byte	0x1b
	.uleb128 0x11
	.4byte	.LASF309
	.2byte	0x4aa
	.4byte	0x179
	.byte	0x3
	.byte	0x1c
	.uleb128 0x1c
	.string	"I"
	.2byte	0x4ab
	.4byte	0x179
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	0x5a
	.byte	0x16
	.byte	0x49
	.byte	0xe
	.4byte	0x1073
	.uleb128 0x1
	.4byte	.LASF310
	.byte	0
	.uleb128 0x1
	.4byte	.LASF311
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF312
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x5a
	.byte	0x16
	.byte	0x52
	.byte	0xe
	.4byte	0x1098
	.uleb128 0x1
	.4byte	.LASF313
	.byte	0
	.uleb128 0x1
	.4byte	.LASF314
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF315
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF316
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF317
	.byte	0x16
	.byte	0x57
	.byte	0x2
	.4byte	0x1073
	.uleb128 0x8
	.4byte	0x5a
	.byte	0x16
	.byte	0x5c
	.byte	0xe
	.4byte	0x10c9
	.uleb128 0x1
	.4byte	.LASF318
	.byte	0
	.uleb128 0x1
	.4byte	.LASF319
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF320
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF321
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x5a
	.byte	0x16
	.byte	0x66
	.byte	0xe
	.4byte	0x1118
	.uleb128 0x1
	.4byte	.LASF322
	.byte	0
	.uleb128 0x1
	.4byte	.LASF323
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF324
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF325
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF326
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF327
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF328
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF329
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF330
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF331
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF332
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF333
	.byte	0x16
	.byte	0x72
	.byte	0x2
	.4byte	0x10c9
	.uleb128 0x8
	.4byte	0x5a
	.byte	0x16
	.byte	0x82
	.byte	0xe
	.4byte	0x1143
	.uleb128 0x1
	.4byte	.LASF334
	.byte	0
	.uleb128 0x1
	.4byte	.LASF335
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF336
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF337
	.byte	0x16
	.byte	0x86
	.byte	0x2
	.4byte	0x1124
	.uleb128 0xc
	.byte	0x10
	.byte	0x16
	.byte	0xb0
	.4byte	0x118c
	.uleb128 0x3
	.4byte	.LASF338
	.byte	0x16
	.byte	0xb1
	.byte	0xe
	.4byte	0x179
	.byte	0
	.uleb128 0x3
	.4byte	.LASF339
	.byte	0x16
	.byte	0xb2
	.byte	0xe
	.4byte	0x179
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF340
	.byte	0x16
	.byte	0xb3
	.byte	0xe
	.4byte	0x179
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF341
	.byte	0x16
	.byte	0xb4
	.byte	0x1c
	.4byte	0xfbd
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF342
	.byte	0x16
	.byte	0xb5
	.byte	0x2
	.4byte	0x114f
	.uleb128 0xc
	.byte	0x3
	.byte	0x16
	.byte	0xba
	.4byte	0x11c8
	.uleb128 0x19
	.string	"dir"
	.byte	0x16
	.byte	0xbb
	.byte	0x18
	.4byte	0x1098
	.byte	0
	.uleb128 0x3
	.4byte	.LASF343
	.byte	0x16
	.byte	0xbc
	.byte	0x19
	.4byte	0x1118
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF344
	.byte	0x16
	.byte	0xbd
	.byte	0x19
	.4byte	0x1118
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF345
	.byte	0x16
	.byte	0xbe
	.byte	0x2
	.4byte	0x1198
	.uleb128 0x5
	.4byte	0x118c
	.uleb128 0x5
	.4byte	0x11c8
	.uleb128 0x4
	.4byte	.LASF346
	.byte	0x17
	.byte	0x3f
	.byte	0x11
	.4byte	0x150
	.uleb128 0x12
	.4byte	0x11de
	.uleb128 0x4
	.4byte	.LASF347
	.byte	0x17
	.byte	0x41
	.byte	0x12
	.4byte	0x179
	.uleb128 0x5
	.4byte	0x15c
	.uleb128 0x4
	.4byte	.LASF348
	.byte	0x18
	.byte	0x52
	.byte	0x22
	.4byte	0x120c
	.uleb128 0x5
	.4byte	0x1211
	.uleb128 0x20
	.4byte	.LASF350
	.uleb128 0x4
	.4byte	.LASF351
	.byte	0x18
	.byte	0x5c
	.byte	0x14
	.4byte	0x11ef
	.uleb128 0x12
	.4byte	0x1216
	.uleb128 0x4
	.4byte	.LASF352
	.byte	0x1
	.byte	0x63
	.byte	0x12
	.4byte	0x179
	.uleb128 0x10
	.4byte	.LASF353
	.byte	0x14
	.byte	0x2
	.byte	0x42
	.byte	0x10
	.4byte	0x12dd
	.uleb128 0x3
	.4byte	.LASF354
	.byte	0x2
	.byte	0x43
	.byte	0xd
	.4byte	0x15c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF355
	.byte	0x2
	.byte	0x44
	.byte	0x11
	.4byte	0xc52
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0x2
	.byte	0x45
	.byte	0xd
	.4byte	0x15c
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0x2
	.byte	0x46
	.byte	0xe
	.4byte	0x179
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF356
	.byte	0x2
	.byte	0x47
	.byte	0xd
	.4byte	0x15c
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF357
	.byte	0x2
	.byte	0x48
	.byte	0xd
	.4byte	0x15c
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF358
	.byte	0x2
	.byte	0x49
	.byte	0xd
	.4byte	0x15c
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF359
	.byte	0x2
	.byte	0x4a
	.byte	0xd
	.4byte	0x15c
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF360
	.byte	0x2
	.byte	0x4b
	.byte	0xd
	.4byte	0x15c
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF361
	.byte	0x2
	.byte	0x4c
	.byte	0xd
	.4byte	0x15c
	.byte	0xd
	.uleb128 0x3
	.4byte	.LASF362
	.byte	0x2
	.byte	0x4d
	.byte	0xd
	.4byte	0x15c
	.byte	0xe
	.uleb128 0x3
	.4byte	.LASF363
	.byte	0x2
	.byte	0x4e
	.byte	0x18
	.4byte	0x1200
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF364
	.byte	0x2
	.byte	0x4f
	.byte	0x3
	.4byte	0x1233
	.uleb128 0x10
	.4byte	.LASF365
	.byte	0x14
	.byte	0x2
	.byte	0x51
	.byte	0x10
	.4byte	0x1304
	.uleb128 0x3
	.4byte	.LASF366
	.byte	0x2
	.byte	0x52
	.byte	0xe
	.4byte	0x1304
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x12dd
	.4byte	0x1314
	.uleb128 0x18
	.4byte	0x3e
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF367
	.byte	0x2
	.byte	0x53
	.byte	0x3
	.4byte	0x12e9
	.uleb128 0x2c
	.4byte	.LASF369
	.byte	0x2
	.byte	0x55
	.byte	0x12
	.4byte	0x1332
	.uleb128 0x5
	.byte	0x3
	.4byte	g_hal_buf
	.uleb128 0x5
	.4byte	0x1314
	.uleb128 0x1d
	.4byte	.LASF387
	.byte	0x1d
	.2byte	0x97c
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF370
	.byte	0x18
	.2byte	0x230
	.byte	0xd
	.4byte	0x11de
	.4byte	0x1361
	.uleb128 0x2
	.4byte	0x1200
	.uleb128 0x2
	.4byte	0x1222
	.uleb128 0x2
	.4byte	0x1361
	.byte	0
	.uleb128 0x5
	.4byte	0x11de
	.uleb128 0xa
	.4byte	.LASF371
	.byte	0x19
	.2byte	0x311
	.byte	0xd
	.4byte	0x6f2
	.4byte	0x138c
	.uleb128 0x2
	.4byte	0x6f2
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x138c
	.byte	0
	.uleb128 0x5
	.4byte	0x2b
	.uleb128 0xa
	.4byte	.LASF372
	.byte	0x19
	.2byte	0x440
	.byte	0x5
	.4byte	0x2b
	.4byte	0x13b2
	.uleb128 0x2
	.4byte	0x6f2
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x133
	.byte	0
	.uleb128 0x13
	.4byte	.LASF373
	.byte	0x1a
	.byte	0x1e
	.byte	0x5
	.4byte	0x2b
	.4byte	0x13d2
	.uleb128 0x2
	.4byte	0x6f2
	.uleb128 0x2
	.4byte	0x6f2
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF374
	.byte	0x19
	.2byte	0x470
	.byte	0xd
	.4byte	0x133
	.4byte	0x13fd
	.uleb128 0x2
	.4byte	0x6f2
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x138c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF375
	.byte	0x19
	.2byte	0x1de
	.byte	0x5
	.4byte	0x2b
	.4byte	0x141e
	.uleb128 0x2
	.4byte	0x6f2
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x133
	.byte	0
	.uleb128 0x13
	.4byte	.LASF376
	.byte	0x1b
	.byte	0xe
	.byte	0x5
	.4byte	0x2b
	.4byte	0x143e
	.uleb128 0x2
	.4byte	0x133
	.uleb128 0x2
	.4byte	0x5b0
	.uleb128 0x2
	.4byte	0x114
	.byte	0
	.uleb128 0x14
	.4byte	.LASF377
	.byte	0x18
	.2byte	0x2e3
	.byte	0x6
	.4byte	0x1451
	.uleb128 0x2
	.4byte	0x1200
	.byte	0
	.uleb128 0x14
	.4byte	.LASF378
	.byte	0x1c
	.2byte	0x1e1
	.byte	0xa
	.4byte	0x1464
	.uleb128 0x2
	.4byte	0x114
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF471
	.byte	0x18
	.byte	0x93
	.byte	0x15
	.4byte	0x1200
	.uleb128 0x13
	.4byte	.LASF379
	.byte	0x1a
	.byte	0x21
	.byte	0x8
	.4byte	0x114
	.4byte	0x1490
	.uleb128 0x2
	.4byte	0x114
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF380
	.byte	0x1c
	.2byte	0x1bf
	.byte	0xb
	.4byte	0x114
	.4byte	0x14a7
	.uleb128 0x2
	.4byte	0x3e
	.byte	0
	.uleb128 0x13
	.4byte	.LASF381
	.byte	0x1a
	.byte	0x29
	.byte	0x8
	.4byte	0x32
	.4byte	0x14bd
	.uleb128 0x2
	.4byte	0x133
	.byte	0
	.uleb128 0xa
	.4byte	.LASF382
	.byte	0x18
	.2byte	0x127
	.byte	0xd
	.4byte	0x1216
	.4byte	0x14e8
	.uleb128 0x2
	.4byte	0x1200
	.uleb128 0x2
	.4byte	0x1222
	.uleb128 0x2
	.4byte	0x11ea
	.uleb128 0x2
	.4byte	0x11ea
	.uleb128 0x2
	.4byte	0x11ef
	.byte	0
	.uleb128 0x14
	.4byte	.LASF383
	.byte	0x16
	.2byte	0x140
	.byte	0x6
	.4byte	0x14fb
	.uleb128 0x2
	.4byte	0x15c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF384
	.byte	0x16
	.2byte	0x143
	.byte	0x6
	.4byte	0x1513
	.uleb128 0x2
	.4byte	0x15c
	.uleb128 0x2
	.4byte	0x179
	.byte	0
	.uleb128 0x14
	.4byte	.LASF385
	.byte	0x16
	.2byte	0x142
	.byte	0x6
	.4byte	0x152b
	.uleb128 0x2
	.4byte	0x15c
	.uleb128 0x2
	.4byte	0x11d9
	.byte	0
	.uleb128 0xa
	.4byte	.LASF386
	.byte	0x12
	.2byte	0x110
	.byte	0xd
	.4byte	0xbe3
	.4byte	0x1547
	.uleb128 0x2
	.4byte	0xc52
	.uleb128 0x2
	.4byte	0xd3c
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF388
	.byte	0x16
	.2byte	0x139
	.byte	0x6
	.uleb128 0x13
	.4byte	.LASF389
	.byte	0x1e
	.byte	0x48
	.byte	0x5
	.4byte	0x2b
	.4byte	0x1566
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x14
	.4byte	.LASF390
	.byte	0x16
	.2byte	0x141
	.byte	0x6
	.4byte	0x1579
	.uleb128 0x2
	.4byte	0x15c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF391
	.byte	0x18
	.2byte	0x160
	.byte	0xd
	.4byte	0x1216
	.4byte	0x1595
	.uleb128 0x2
	.4byte	0x1200
	.uleb128 0x2
	.4byte	0x1222
	.byte	0
	.uleb128 0x13
	.4byte	.LASF392
	.byte	0x1e
	.byte	0x4b
	.byte	0x5
	.4byte	0x2b
	.4byte	0x15ba
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x114
	.uleb128 0x2
	.4byte	0x114
	.uleb128 0x2
	.4byte	0x114
	.byte	0
	.uleb128 0x21
	.4byte	.LASF393
	.byte	0x1f
	.byte	0x20
	.4byte	0x15cb
	.uleb128 0x2
	.4byte	0x3e
	.byte	0
	.uleb128 0x14
	.4byte	.LASF394
	.byte	0x16
	.2byte	0x144
	.byte	0x6
	.4byte	0x15e8
	.uleb128 0x2
	.4byte	0x15c
	.uleb128 0x2
	.4byte	0x1143
	.uleb128 0x2
	.4byte	0xc2d
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF395
	.byte	0x16
	.2byte	0x13a
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF396
	.byte	0x12
	.2byte	0x10f
	.byte	0xd
	.4byte	0xbe3
	.4byte	0x160d
	.uleb128 0x2
	.4byte	0xc52
	.uleb128 0x2
	.4byte	0x160d
	.byte	0
	.uleb128 0x5
	.4byte	0xe8e
	.uleb128 0xa
	.4byte	.LASF397
	.byte	0x12
	.2byte	0x119
	.byte	0xd
	.4byte	0xbe3
	.4byte	0x1633
	.uleb128 0x2
	.4byte	0xc52
	.uleb128 0x2
	.4byte	0xd7f
	.uleb128 0x2
	.4byte	0xc2d
	.byte	0
	.uleb128 0xa
	.4byte	.LASF398
	.byte	0x12
	.2byte	0x111
	.byte	0xd
	.4byte	0xbe3
	.4byte	0x164f
	.uleb128 0x2
	.4byte	0xc52
	.uleb128 0x2
	.4byte	0xd3c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF399
	.byte	0x12
	.2byte	0x10c
	.byte	0xd
	.4byte	0xbe3
	.4byte	0x166b
	.uleb128 0x2
	.4byte	0xc52
	.uleb128 0x2
	.4byte	0x166b
	.byte	0
	.uleb128 0x5
	.4byte	0xdef
	.uleb128 0xa
	.4byte	.LASF400
	.byte	0x12
	.2byte	0x10e
	.byte	0xd
	.4byte	0xbe3
	.4byte	0x168c
	.uleb128 0x2
	.4byte	0xc52
	.uleb128 0x2
	.4byte	0x168c
	.byte	0
	.uleb128 0x5
	.4byte	0xe45
	.uleb128 0xa
	.4byte	.LASF401
	.byte	0x14
	.2byte	0x23a
	.byte	0xd
	.4byte	0xbe3
	.4byte	0x16ad
	.uleb128 0x2
	.4byte	0x15c
	.uleb128 0x2
	.4byte	0x15c
	.byte	0
	.uleb128 0x21
	.4byte	.LASF402
	.byte	0x20
	.byte	0xa4
	.4byte	0x16be
	.uleb128 0x2
	.4byte	0x114
	.byte	0
	.uleb128 0x13
	.4byte	.LASF403
	.byte	0x20
	.byte	0xa3
	.byte	0x7
	.4byte	0x114
	.4byte	0x16d4
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF404
	.byte	0x14
	.2byte	0x25a
	.byte	0xd
	.4byte	0xbe3
	.4byte	0x16eb
	.uleb128 0x2
	.4byte	0xfb1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF405
	.byte	0x14
	.2byte	0x277
	.byte	0xd
	.4byte	0xbe3
	.4byte	0x170c
	.uleb128 0x2
	.4byte	0xf8c
	.uleb128 0x2
	.4byte	0x170c
	.uleb128 0x2
	.4byte	0x15c
	.byte	0
	.uleb128 0x5
	.4byte	0xf37
	.uleb128 0x22
	.4byte	.LASF408
	.2byte	0x304
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1745
	.uleb128 0x6
	.4byte	.LASF406
	.2byte	0x306
	.byte	0x10
	.4byte	0x11de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF407
	.2byte	0x307
	.byte	0x10
	.4byte	0x11de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.4byte	.LASF409
	.2byte	0x2ec
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1779
	.uleb128 0x6
	.4byte	.LASF406
	.2byte	0x2ee
	.byte	0x10
	.4byte	0x11de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF407
	.2byte	0x2ef
	.byte	0x10
	.4byte	0x11de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.4byte	.LASF411
	.2byte	0x2e5
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17b2
	.uleb128 0xe
	.string	"fdt"
	.2byte	0x2e5
	.byte	0x1f
	.4byte	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF410
	.2byte	0x2e5
	.byte	0x2d
	.4byte	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.4byte	.LASF412
	.2byte	0x240
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x191a
	.uleb128 0xe
	.string	"fdt"
	.2byte	0x240
	.byte	0x23
	.4byte	0x6f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x7
	.4byte	.LASF410
	.2byte	0x240
	.byte	0x31
	.4byte	0x179
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x6
	.4byte	.LASF129
	.2byte	0x243
	.byte	0xd
	.4byte	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x6
	.4byte	.LASF126
	.2byte	0x244
	.byte	0xd
	.4byte	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x6
	.4byte	.LASF356
	.2byte	0x245
	.byte	0xd
	.4byte	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x6
	.4byte	.LASF127
	.2byte	0x246
	.byte	0xe
	.4byte	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.4byte	.LASF357
	.2byte	0x247
	.byte	0xd
	.4byte	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x6
	.4byte	.LASF358
	.2byte	0x248
	.byte	0xd
	.4byte	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0x6
	.4byte	.LASF359
	.2byte	0x249
	.byte	0xd
	.4byte	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x6
	.4byte	.LASF360
	.2byte	0x24a
	.byte	0xd
	.4byte	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x6
	.4byte	.LASF361
	.2byte	0x24b
	.byte	0xd
	.4byte	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -59
	.uleb128 0x6
	.4byte	.LASF362
	.2byte	0x24c
	.byte	0xd
	.4byte	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.4byte	.LASF413
	.2byte	0x24d
	.byte	0xb
	.4byte	0x122
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF414
	.2byte	0x24f
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF415
	.2byte	0x250
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF416
	.2byte	0x251
	.byte	0x15
	.4byte	0x191a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF417
	.2byte	0x252
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.4byte	.LASF418
	.2byte	0x253
	.byte	0x11
	.4byte	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF419
	.2byte	0x254
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"i"
	.2byte	0x256
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"ret"
	.2byte	0x257
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x6
	.4byte	.LASF420
	.2byte	0x259
	.byte	0x11
	.4byte	0x191f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x5
	.4byte	0x185
	.uleb128 0x16
	.4byte	0x133
	.4byte	0x192f
	.uleb128 0x18
	.4byte	0x3e
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF421
	.2byte	0x1f7
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a1c
	.uleb128 0x7
	.4byte	.LASF422
	.2byte	0x1f7
	.byte	0x27
	.4byte	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF129
	.2byte	0x1f7
	.byte	0x39
	.4byte	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x7
	.4byte	.LASF126
	.2byte	0x1f8
	.byte	0x25
	.4byte	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x7
	.4byte	.LASF356
	.2byte	0x1f8
	.byte	0x33
	.4byte	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -39
	.uleb128 0x7
	.4byte	.LASF127
	.2byte	0x1f8
	.byte	0x49
	.4byte	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.4byte	.LASF357
	.2byte	0x1f8
	.byte	0x57
	.4byte	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF358
	.2byte	0x1f8
	.byte	0x6a
	.4byte	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x7
	.4byte	.LASF359
	.2byte	0x1f9
	.byte	0x25
	.4byte	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x7
	.4byte	.LASF360
	.2byte	0x1f9
	.byte	0x36
	.4byte	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF361
	.2byte	0x1f9
	.byte	0x46
	.4byte	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF362
	.2byte	0x1f9
	.byte	0x58
	.4byte	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.string	"ret"
	.2byte	0x1fb
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.string	"len"
	.2byte	0x1fb
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"spi"
	.2byte	0x1fc
	.byte	0x10
	.4byte	0x1a1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	0x9fd
	.uleb128 0x15
	.4byte	.LASF423
	.2byte	0x1cf
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a94
	.uleb128 0x7
	.4byte	.LASF424
	.2byte	0x1cf
	.byte	0x21
	.4byte	0x1a1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF425
	.2byte	0x1cf
	.byte	0x30
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF426
	.2byte	0x1cf
	.byte	0x3e
	.4byte	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0xf
	.string	"i"
	.2byte	0x1d1
	.byte	0xe
	.4byte	0x16d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x6
	.4byte	.LASF427
	.2byte	0x1d2
	.byte	0x1a
	.4byte	0x1a94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF428
	.2byte	0x1d3
	.byte	0x16
	.4byte	0x1332
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	0x986
	.uleb128 0x15
	.4byte	.LASF429
	.2byte	0x19b
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b0c
	.uleb128 0x7
	.4byte	.LASF424
	.2byte	0x19b
	.byte	0x24
	.4byte	0x1a1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF430
	.2byte	0x19b
	.byte	0x36
	.4byte	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF431
	.2byte	0x19d
	.byte	0x16
	.4byte	0x1332
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.string	"i"
	.2byte	0x19e
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF432
	.2byte	0x19f
	.byte	0xd
	.4byte	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x6
	.4byte	.LASF433
	.2byte	0x1a0
	.byte	0xe
	.4byte	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x15
	.4byte	.LASF434
	.2byte	0x187
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b54
	.uleb128 0x7
	.4byte	.LASF424
	.2byte	0x187
	.byte	0x23
	.4byte	0x1a1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF126
	.2byte	0x187
	.byte	0x30
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF431
	.2byte	0x189
	.byte	0x16
	.4byte	0x1332
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF435
	.2byte	0x181
	.4byte	0x150
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bb9
	.uleb128 0xe
	.string	"spi"
	.2byte	0x181
	.byte	0x36
	.4byte	0x1a1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF436
	.2byte	0x181
	.byte	0x54
	.4byte	0x11fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF437
	.2byte	0x181
	.byte	0x76
	.4byte	0x11fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF426
	.2byte	0x181
	.byte	0x98
	.4byte	0x16d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x7
	.4byte	.LASF438
	.2byte	0x181
	.byte	0xb7
	.4byte	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF439
	.2byte	0x17b
	.4byte	0x150
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c0f
	.uleb128 0xe
	.string	"spi"
	.2byte	0x17b
	.byte	0x31
	.4byte	0x1a1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF431
	.2byte	0x17b
	.byte	0x4f
	.4byte	0x11fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF426
	.2byte	0x17b
	.byte	0x6e
	.4byte	0x16d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x7
	.4byte	.LASF438
	.2byte	0x17b
	.byte	0x8d
	.4byte	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF440
	.2byte	0x176
	.4byte	0x150
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c65
	.uleb128 0xe
	.string	"spi"
	.2byte	0x176
	.byte	0x31
	.4byte	0x1a1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF431
	.2byte	0x176
	.byte	0x55
	.4byte	0x1c65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF426
	.2byte	0x176
	.byte	0x74
	.4byte	0x16d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x7
	.4byte	.LASF438
	.2byte	0x176
	.byte	0x93
	.4byte	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5
	.4byte	0x168
	.uleb128 0x1a
	.4byte	.LASF441
	.2byte	0x170
	.4byte	0x150
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c93
	.uleb128 0xe
	.string	"spi"
	.2byte	0x170
	.byte	0x35
	.4byte	0x1a1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF442
	.2byte	0x156
	.byte	0x9
	.4byte	0x150
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cd9
	.uleb128 0xe
	.string	"spi"
	.2byte	0x156
	.byte	0x21
	.4byte	0x1a1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.string	"i"
	.2byte	0x158
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF431
	.2byte	0x159
	.byte	0x16
	.4byte	0x1332
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF450
	.byte	0x2
	.2byte	0x115
	.byte	0xd
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d87
	.uleb128 0xe
	.string	"arg"
	.2byte	0x115
	.byte	0x29
	.4byte	0x1d87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.4byte	.LASF443
	.2byte	0x115
	.byte	0x37
	.4byte	0x11fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.4byte	.LASF444
	.2byte	0x115
	.byte	0x48
	.4byte	0x11fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xe
	.string	"Len"
	.2byte	0x115
	.byte	0x59
	.4byte	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.4byte	.LASF445
	.2byte	0x117
	.byte	0x11
	.4byte	0x1216
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF446
	.2byte	0x118
	.byte	0x16
	.4byte	0x11c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF447
	.2byte	0x119
	.byte	0x16
	.4byte	0x11c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF448
	.2byte	0x11a
	.byte	0x18
	.4byte	0x11d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF449
	.2byte	0x11b
	.byte	0x18
	.4byte	0x11d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"ret"
	.2byte	0x11c
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x12dd
	.uleb128 0x23
	.4byte	.LASF451
	.byte	0xc2
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e04
	.uleb128 0x1e
	.string	"arg"
	.byte	0x2
	.byte	0xc2
	.byte	0x28
	.4byte	0x1d87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xd
	.4byte	.LASF452
	.byte	0xc4
	.byte	0xf
	.4byte	0x1d87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LASF453
	.byte	0xc5
	.byte	0x12
	.4byte	0xdef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.4byte	.LASF454
	.byte	0xc6
	.byte	0x17
	.4byte	0xe45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.4byte	.LASF455
	.byte	0xc7
	.byte	0x16
	.4byte	0xe8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.4byte	.LASF456
	.byte	0xc8
	.byte	0x11
	.4byte	0xc52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0xd
	.4byte	.LASF457
	.byte	0xc9
	.byte	0xd
	.4byte	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF472
	.byte	0x2
	.byte	0x73
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e97
	.uleb128 0x17
	.4byte	.LASF458
	.byte	0x2e
	.4byte	0x1e97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.4byte	.LASF459
	.byte	0x4b
	.4byte	0x1e97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.4byte	.LASF460
	.byte	0x5d
	.4byte	0x11fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.4byte	.LASF461
	.byte	0x70
	.4byte	0x11fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.4byte	.LASF462
	.byte	0x83
	.4byte	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.string	"i"
	.byte	0x2
	.byte	0x75
	.byte	0xe
	.4byte	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LASF463
	.byte	0x76
	.byte	0xe
	.4byte	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LASF464
	.byte	0x77
	.byte	0xe
	.4byte	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.4byte	.LASF465
	.byte	0x78
	.byte	0x1c
	.4byte	0xfbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5
	.4byte	0x11d4
	.uleb128 0x23
	.4byte	.LASF466
	.byte	0x5a
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ece
	.uleb128 0x1e
	.string	"arg"
	.byte	0x2
	.byte	0x5a
	.byte	0x25
	.4byte	0x1d87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.4byte	.LASF467
	.byte	0x5c
	.byte	0xd
	.4byte	0xbb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.4byte	.LASF468
	.byte	0x1
	.byte	0x78
	.byte	0x18
	.4byte	0x179
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.byte	0x78
	.byte	0x2d
	.4byte	0x1227
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x7
	.uleb128 0x5
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 21
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x15
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 115
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.sleb128 9
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
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 21
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
	.uleb128 0x1d
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
	.uleb128 0x3c
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
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x17
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
	.uleb128 0x29
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x34
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
	.uleb128 0x31
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
	.4byte	0xa4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
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
	.4byte	.LFB29
	.uleb128 .LFE29-.LFB29
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF58:
	.string	"st_blocks"
.LASF203:
	.string	"ERROR"
.LASF429:
	.string	"hal_spi_set_rwspeed"
.LASF258:
	.string	"rxFifoThreshold"
.LASF434:
	.string	"hal_spi_set_rwmode"
.LASF236:
	.string	"SPI_INT_TX_FIFO_REQ"
.LASF242:
	.string	"SPI_INT_Type"
.LASF139:
	.string	"L1C_BMX_ERR_IRQn"
.LASF229:
	.string	"SPI_FRAME_SIZE_24"
.LASF135:
	.string	"MEXT_IRQn"
.LASF103:
	.string	"i_name"
.LASF352:
	.string	"fdt32_t"
.LASF365:
	.string	"spi_priv_data"
.LASF144:
	.string	"SDIO_IRQn"
.LASF377:
	.string	"vEventGroupDelete"
.LASF287:
	.string	"GPIO_FUN_SDIO"
.LASF187:
	.string	"PDS_WAKEUP_IRQn"
.LASF192:
	.string	"BZ_PHY_IRQn"
.LASF286:
	.string	"GLB_GPIO_Type"
.LASF424:
	.string	"spi_dev"
.LASF338:
	.string	"srcDmaAddr"
.LASF108:
	.string	"node"
.LASF396:
	.string	"SPI_FifoConfig"
.LASF446:
	.string	"txllicfg"
.LASF404:
	.string	"GLB_Set_SPI_0_ACT_MOD_Sel"
.LASF294:
	.string	"GPIO_FUN_ANALOG"
.LASF430:
	.string	"speed"
.LASF451:
	.string	"hal_spi_dma_init"
.LASF358:
	.string	"rx_dma_ch"
.LASF316:
	.string	"DMA_TRNS_P2P"
.LASF405:
	.string	"GLB_GPIO_Func_Init"
.LASF100:
	.string	"i_ops"
.LASF57:
	.string	"st_blksize"
.LASF202:
	.string	"SUCCESS"
.LASF152:
	.string	"DMA_ALL_IRQn"
.LASF254:
	.string	"dataPhase1Len"
.LASF356:
	.string	"polar_phase"
.LASF106:
	.string	"refs"
.LASF374:
	.string	"fdt_stringlist_get"
.LASF454:
	.string	"clockcfg"
.LASF138:
	.string	"BMX_TO_IRQn"
.LASF255:
	.string	"intervalLen"
.LASF280:
	.string	"GLB_GPIO_PIN_18"
.LASF91:
	.string	"opendir"
.LASF116:
	.string	"rx_buf"
.LASF85:
	.string	"sync"
.LASF416:
	.string	"addr_prop"
.LASF410:
	.string	"dtb_spi_offset"
.LASF239:
	.string	"SPI_INT_SLAVE_UNDERRUN"
.LASF7:
	.string	"short int"
.LASF87:
	.string	"fs_ops"
.LASF67:
	.string	"f_ffree"
.LASF332:
	.string	"DMA_REQ_NONE"
.LASF220:
	.string	"SPI_BIT_INVERSE_Type"
.LASF175:
	.string	"TIMER_WDT_IRQn"
.LASF448:
	.string	"ptxlli"
.LASF368:
	.string	"spi_ops"
.LASF72:
	.string	"d_name"
.LASF372:
	.string	"fdt_stringlist_count"
.LASF337:
	.string	"DMA_INT_Type"
.LASF59:
	.string	"st_spare4"
.LASF461:
	.string	"prx_data"
.LASF440:
	.string	"hal_spi_send"
.LASF250:
	.string	"SPI_CFG_Type"
.LASF464:
	.string	"remainder"
.LASF238:
	.string	"SPI_INT_SLAVE_TIMEOUT"
.LASF21:
	.string	"__ino_t"
.LASF302:
	.string	"TransferSize"
.LASF289:
	.string	"GPIO_FUN_SPI"
.LASF447:
	.string	"rxllicfg"
.LASF291:
	.string	"GPIO_FUN_UART"
.LASF262:
	.string	"GLB_GPIO_PIN_0"
.LASF300:
	.string	"GLB_SPI_PAD_ACT_AS_Type"
.LASF38:
	.string	"ino_t"
.LASF205:
	.string	"BL_Err_Type"
.LASF32:
	.string	"uint32_t"
.LASF266:
	.string	"GLB_GPIO_PIN_4"
.LASF120:
	.string	"bits_per_word"
.LASF268:
	.string	"GLB_GPIO_PIN_6"
.LASF421:
	.string	"vfs_spi_init_fullname"
.LASF240:
	.string	"SPI_INT_FIFO_ERROR"
.LASF308:
	.string	"reserved_25"
.LASF344:
	.string	"dstPeriph"
.LASF370:
	.string	"xEventGroupSetBitsFromISR"
.LASF340:
	.string	"nextLLI"
.LASF102:
	.string	"i_arg"
.LASF181:
	.string	"GPIO_INT0_IRQn"
.LASF463:
	.string	"count"
.LASF384:
	.string	"DMA_LLI_Update"
.LASF218:
	.string	"SPI_BIT_INVERSE_MSB_FIRST"
.LASF394:
	.string	"DMA_IntMask"
.LASF353:
	.string	"_spi_hw"
.LASF418:
	.string	"result"
.LASF329:
	.string	"DMA_REQ_SPI_TX"
.LASF241:
	.string	"SPI_INT_ALL"
.LASF13:
	.string	"long long unsigned int"
.LASF247:
	.string	"clkPhaseInv"
.LASF231:
	.string	"SPI_FrameSize_Type"
.LASF450:
	.string	"hal_spi_dma_trans"
.LASF296:
	.string	"GPIO_FUN_JTAG"
.LASF363:
	.string	"spi_dma_event_group"
.LASF397:
	.string	"SPI_IntMask"
.LASF457:
	.string	"clk_div"
.LASF143:
	.string	"RF_TOP_INT1_IRQn"
.LASF334:
	.string	"DMA_INT_TCOMPLETED"
.LASF339:
	.string	"destDmaAddr"
.LASF232:
	.string	"SPI_WORK_MODE_SLAVE"
.LASF109:
	.string	"f_arg"
.LASF330:
	.string	"DMA_REQ_GPADC0"
.LASF331:
	.string	"DMA_REQ_GPADC1"
.LASF398:
	.string	"SPI_Disable"
.LASF311:
	.string	"DMA_TRNS_WIDTH_16BITS"
.LASF160:
	.string	"SF_CTRL_IRQn"
.LASF459:
	.string	"pprxlli"
.LASF173:
	.string	"TIMER_CH0_IRQn"
.LASF403:
	.string	"pvPortMalloc"
.LASF420:
	.string	"spi_node"
.LASF27:
	.string	"off_t"
.LASF22:
	.string	"__mode_t"
.LASF467:
	.string	"gpiopins"
.LASF70:
	.string	"d_ino"
.LASF45:
	.string	"stat"
.LASF319:
	.string	"DMA_BURST_SIZE_4"
.LASF354:
	.string	"used"
.LASF14:
	.string	"__int_least64_t"
.LASF237:
	.string	"SPI_INT_RX_FIFO_REQ"
.LASF46:
	.string	"st_dev"
.LASF261:
	.string	"SPI_FifoCfg_Type"
.LASF389:
	.string	"bl_dma_int_clear"
.LASF412:
	.string	"spi_arg_set_fdt2"
.LASF35:
	.string	"tv_nsec"
.LASF25:
	.string	"__nlink_t"
.LASF10:
	.string	"size_t"
.LASF121:
	.string	"cs_change"
.LASF355:
	.string	"ssp_id"
.LASF110:
	.string	"offset"
.LASF71:
	.string	"d_type"
.LASF306:
	.string	"DWidth"
.LASF456:
	.string	"spi_id"
.LASF126:
	.string	"mode"
.LASF428:
	.string	"priv_data"
.LASF309:
	.string	"Prot"
.LASF113:
	.string	"_Bool"
.LASF275:
	.string	"GLB_GPIO_PIN_13"
.LASF51:
	.string	"st_gid"
.LASF167:
	.string	"UART1_IRQn"
.LASF132:
	.string	"spi_dev_t"
.LASF279:
	.string	"GLB_GPIO_PIN_17"
.LASF96:
	.string	"rewinddir"
.LASF48:
	.string	"st_mode"
.LASF94:
	.string	"mkdir"
.LASF111:
	.string	"file_t"
.LASF411:
	.string	"vfs_spi_fdt_init"
.LASF49:
	.string	"st_nlink"
.LASF127:
	.string	"freq"
.LASF413:
	.string	"path"
.LASF470:
	.string	"inode_ops_t"
.LASF407:
	.string	"xHigherPriorityTaskWoken"
.LASF83:
	.string	"ioctl"
.LASF189:
	.string	"HBN_OUT1_IRQn"
.LASF305:
	.string	"SWidth"
.LASF114:
	.string	"spi_ioc_transfer"
.LASF400:
	.string	"SPI_ClockConfig"
.LASF303:
	.string	"SBSize"
.LASF200:
	.string	"WIFI_IPC_PUBLIC_IRQn"
.LASF215:
	.string	"SPI_BYTE_INVERSE_BYTE0_FIRST"
.LASF115:
	.string	"tx_buf"
.LASF362:
	.string	"pin_miso"
.LASF164:
	.string	"SPI_IRQn"
.LASF417:
	.string	"lentmp"
.LASF84:
	.string	"poll"
.LASF324:
	.string	"DMA_REQ_UART1_RX"
.LASF131:
	.string	"priv"
.LASF44:
	.string	"timespec"
.LASF26:
	.string	"char"
.LASF36:
	.string	"blkcnt_t"
.LASF401:
	.string	"GLB_Set_SPI_CLK"
.LASF206:
	.string	"DISABLE"
.LASF169:
	.string	"I2C_IRQn"
.LASF359:
	.string	"pin_clk"
.LASF234:
	.string	"SPI_WORK_MODE_Type"
.LASF112:
	.string	"poll_notify_t"
.LASF256:
	.string	"SPI_ClockCfg_Type"
.LASF366:
	.string	"hwspi"
.LASF385:
	.string	"DMA_LLI_Init"
.LASF80:
	.string	"close"
.LASF437:
	.string	"rx_data"
.LASF297:
	.string	"GLB_GPIO_FUNC_Type"
.LASF304:
	.string	"DBSize"
.LASF427:
	.string	"s_xfer"
.LASF2:
	.string	"unsigned int"
.LASF28:
	.string	"ssize_t"
.LASF88:
	.string	"lseek"
.LASF350:
	.string	"EventGroupDef_t"
.LASF30:
	.string	"uint8_t"
.LASF105:
	.string	"type"
.LASF292:
	.string	"GPIO_FUN_PWM"
.LASF33:
	.string	"time_t"
.LASF295:
	.string	"GPIO_FUN_SWGPIO"
.LASF209:
	.string	"UNMASK"
.LASF282:
	.string	"GLB_GPIO_PIN_20"
.LASF360:
	.string	"pin_cs"
.LASF41:
	.string	"gid_t"
.LASF60:
	.string	"statfs"
.LASF233:
	.string	"SPI_WORK_MODE_MASTER"
.LASF47:
	.string	"st_ino"
.LASF433:
	.string	"real_speed"
.LASF243:
	.string	"deglitchEnable"
.LASF249:
	.string	"frameSize"
.LASF293:
	.string	"GPIO_FUN_EXT_PA"
.LASF66:
	.string	"f_files"
.LASF3:
	.string	"long long int"
.LASF151:
	.string	"SEC_SHA_IRQn"
.LASF63:
	.string	"f_blocks"
.LASF82:
	.string	"write"
.LASF204:
	.string	"TIMEOUT"
.LASF61:
	.string	"f_type"
.LASF199:
	.string	"MAC_PORT_TRG_IRQn"
.LASF380:
	.string	"aos_malloc"
.LASF455:
	.string	"fifocfg"
.LASF89:
	.string	"unlink"
.LASF383:
	.string	"DMA_Channel_Enable"
.LASF388:
	.string	"DMA_Enable"
.LASF225:
	.string	"SPI_CLK_POLARITY_HIGH"
.LASF382:
	.string	"xEventGroupWaitBits"
.LASF472:
	.string	"lli_list_init"
.LASF333:
	.string	"DMA_Periph_Req_Type"
.LASF253:
	.string	"dataPhase0Len"
.LASF390:
	.string	"DMA_Channel_Disable"
.LASF346:
	.string	"BaseType_t"
.LASF39:
	.string	"dev_t"
.LASF64:
	.string	"f_bfree"
.LASF193:
	.string	"BLE_IRQn"
.LASF122:
	.string	"tx_nbits"
.LASF321:
	.string	"DMA_BURST_SIZE_16"
.LASF471:
	.string	"xEventGroupCreate"
.LASF78:
	.string	"file_ops"
.LASF325:
	.string	"DMA_REQ_UART1_TX"
.LASF77:
	.string	"file_ops_t"
.LASF379:
	.string	"memset"
.LASF367:
	.string	"spi_priv_data_t"
.LASF435:
	.string	"hal_spi_send_recv"
.LASF137:
	.string	"BMX_ERR_IRQn"
.LASF188:
	.string	"HBN_OUT0_IRQn"
.LASF201:
	.string	"IRQn_LAST"
.LASF426:
	.string	"size"
.LASF436:
	.string	"tx_data"
.LASF171:
	.string	"PWM_IRQn"
.LASF213:
	.string	"SPI_ID_MAX"
.LASF425:
	.string	"xfer"
.LASF375:
	.string	"fdt_subnode_offset"
.LASF343:
	.string	"srcPeriph"
.LASF65:
	.string	"f_bavail"
.LASF145:
	.string	"DMA_BMX_ERR_IRQn"
.LASF458:
	.string	"pptxlli"
.LASF272:
	.string	"GLB_GPIO_PIN_10"
.LASF273:
	.string	"GLB_GPIO_PIN_11"
.LASF274:
	.string	"GLB_GPIO_PIN_12"
.LASF301:
	.string	"DMA_Control_Reg"
.LASF276:
	.string	"GLB_GPIO_PIN_14"
.LASF277:
	.string	"GLB_GPIO_PIN_15"
.LASF278:
	.string	"GLB_GPIO_PIN_16"
.LASF369:
	.string	"g_hal_buf"
.LASF214:
	.string	"SPI_ID_Type"
.LASF281:
	.string	"GLB_GPIO_PIN_19"
.LASF99:
	.string	"access"
.LASF441:
	.string	"hal_spi_finalize"
.LASF347:
	.string	"TickType_t"
.LASF198:
	.string	"MAC_GEN_IRQn"
.LASF381:
	.string	"strlen"
.LASF226:
	.string	"SPI_CLK_POLARITY_Type"
.LASF431:
	.string	"data"
.LASF259:
	.string	"txFifoDmaEnable"
.LASF142:
	.string	"RF_TOP_INT0_IRQn"
.LASF8:
	.string	"short unsigned int"
.LASF4:
	.string	"long double"
.LASF20:
	.string	"__gid_t"
.LASF31:
	.string	"uint16_t"
.LASF163:
	.string	"EFUSE_IRQn"
.LASF97:
	.string	"telldir"
.LASF221:
	.string	"SPI_CLK_PHASE_INVERSE_0"
.LASF222:
	.string	"SPI_CLK_PHASE_INVERSE_1"
.LASF414:
	.string	"offset1"
.LASF415:
	.string	"offset2"
.LASF442:
	.string	"hal_spi_init"
.LASF342:
	.string	"DMA_LLI_Ctrl_Type"
.LASF387:
	.string	"vTaskSwitchContext"
.LASF345:
	.string	"DMA_LLI_Cfg_Type"
.LASF141:
	.string	"SEC_BMX_ERR_IRQn"
.LASF246:
	.string	"bitSequence"
.LASF283:
	.string	"GLB_GPIO_PIN_21"
.LASF284:
	.string	"GLB_GPIO_PIN_22"
.LASF6:
	.string	"unsigned char"
.LASF40:
	.string	"uid_t"
.LASF195:
	.string	"MAC_TXRX_MISC_IRQn"
.LASF130:
	.string	"config"
.LASF191:
	.string	"WIFI_IRQn"
.LASF248:
	.string	"clkPolarity"
.LASF361:
	.string	"pin_mosi"
.LASF95:
	.string	"rmdir"
.LASF310:
	.string	"DMA_TRNS_WIDTH_8BITS"
.LASF153:
	.string	"RESERVED0"
.LASF93:
	.string	"closedir"
.LASF155:
	.string	"RESERVED2"
.LASF251:
	.string	"startLen"
.LASF159:
	.string	"RESERVED4"
.LASF161:
	.string	"RESERVED5"
.LASF165:
	.string	"RESERVED6"
.LASF168:
	.string	"RESERVED7"
.LASF170:
	.string	"RESERVED8"
.LASF172:
	.string	"RESERVED9"
.LASF460:
	.string	"ptx_data"
.LASF364:
	.string	"spi_hw_t"
.LASF223:
	.string	"SPI_CLK_PHASE_INVERSE_Type"
.LASF9:
	.string	"long int"
.LASF313:
	.string	"DMA_TRNS_M2M"
.LASF399:
	.string	"SPI_Init"
.LASF462:
	.string	"length"
.LASF314:
	.string	"DMA_TRNS_M2P"
.LASF444:
	.string	"RxData"
.LASF263:
	.string	"GLB_GPIO_PIN_1"
.LASF264:
	.string	"GLB_GPIO_PIN_2"
.LASF265:
	.string	"GLB_GPIO_PIN_3"
.LASF408:
	.string	"bl_spi0_dma_int_handler_rx"
.LASF267:
	.string	"GLB_GPIO_PIN_5"
.LASF391:
	.string	"xEventGroupClearBits"
.LASF269:
	.string	"GLB_GPIO_PIN_7"
.LASF270:
	.string	"GLB_GPIO_PIN_8"
.LASF271:
	.string	"GLB_GPIO_PIN_9"
.LASF166:
	.string	"UART0_IRQn"
.LASF466:
	.string	"hal_gpio_init"
.LASF217:
	.string	"SPI_BYTE_INVERSE_Type"
.LASF393:
	.string	"bl_irq_enable"
.LASF76:
	.string	"aos_dir_t"
.LASF245:
	.string	"byteSequence"
.LASF402:
	.string	"vPortFree"
.LASF373:
	.string	"memcmp"
.LASF133:
	.string	"MSOFT_IRQn"
.LASF323:
	.string	"DMA_REQ_UART0_TX"
.LASF157:
	.string	"IRRX_IRQn"
.LASF104:
	.string	"i_flags"
.LASF92:
	.string	"readdir"
.LASF119:
	.string	"delay_msecs"
.LASF146:
	.string	"SEC_GMAC_IRQn"
.LASF69:
	.string	"f_namelen"
.LASF357:
	.string	"tx_dma_ch"
.LASF16:
	.string	"__blksize_t"
.LASF147:
	.string	"SEC_CDET_IRQn"
.LASF210:
	.string	"MASK"
.LASF196:
	.string	"MAC_RX_TRG_IRQn"
.LASF298:
	.string	"GLB_SPI_PAD_ACT_AS_SLAVE"
.LASF125:
	.string	"spi_ioc_transfer_t"
.LASF19:
	.string	"__uid_t"
.LASF124:
	.string	"word_delay_usecs"
.LASF54:
	.string	"st_atim"
.LASF81:
	.string	"read"
.LASF74:
	.string	"dd_vfs_fd"
.LASF351:
	.string	"EventBits_t"
.LASF79:
	.string	"open"
.LASF443:
	.string	"TxData"
.LASF90:
	.string	"rename"
.LASF73:
	.string	"aos_dirent_t"
.LASF299:
	.string	"GLB_SPI_PAD_ACT_AS_MASTER"
.LASF34:
	.string	"tv_sec"
.LASF207:
	.string	"ENABLE"
.LASF117:
	.string	"speed_hz"
.LASF318:
	.string	"DMA_BURST_SIZE_1"
.LASF326:
	.string	"DMA_REQ_I2C_RX"
.LASF12:
	.string	"long unsigned int"
.LASF335:
	.string	"DMA_INT_ERR"
.LASF134:
	.string	"MTIME_IRQn"
.LASF320:
	.string	"DMA_BURST_SIZE_8"
.LASF423:
	.string	"hal_spi_transfer"
.LASF211:
	.string	"BL_Mask_Type"
.LASF148:
	.string	"SEC_PKA_IRQn"
.LASF29:
	.string	"int32_t"
.LASF336:
	.string	"DMA_INT_ALL"
.LASF452:
	.string	"hw_arg"
.LASF129:
	.string	"port"
.LASF406:
	.string	"xResult"
.LASF208:
	.string	"BL_Fun_Type"
.LASF55:
	.string	"st_mtim"
.LASF212:
	.string	"SPI_ID_0"
.LASF162:
	.string	"GPADC_DMA_IRQn"
.LASF322:
	.string	"DMA_REQ_UART0_RX"
.LASF288:
	.string	"GPIO_FUN_FLASH"
.LASF62:
	.string	"f_bsize"
.LASF409:
	.string	"bl_spi0_dma_int_handler_tx"
.LASF68:
	.string	"f_fsid"
.LASF11:
	.string	"__uint32_t"
.LASF150:
	.string	"SEC_AES_IRQn"
.LASF449:
	.string	"prxlli"
.LASF349:
	.string	"pollfd"
.LASF453:
	.string	"spicfg"
.LASF136:
	.string	"CLIC_SOFT_PEND_IRQn"
.LASF438:
	.string	"timeout"
.LASF244:
	.string	"continuousEnable"
.LASF156:
	.string	"IRTX_IRQn"
.LASF43:
	.string	"nlink_t"
.LASF176:
	.string	"RESERVED10"
.LASF177:
	.string	"RESERVED11"
.LASF178:
	.string	"RESERVED12"
.LASF179:
	.string	"RESERVED13"
.LASF180:
	.string	"RESERVED14"
.LASF182:
	.string	"RESERVED16"
.LASF183:
	.string	"RESERVED17"
.LASF184:
	.string	"RESERVED18"
.LASF185:
	.string	"RESERVED19"
.LASF465:
	.string	"dmactrl"
.LASF230:
	.string	"SPI_FRAME_SIZE_32"
.LASF285:
	.string	"GLB_GPIO_PIN_MAX"
.LASF419:
	.string	"countindex"
.LASF53:
	.string	"st_size"
.LASF101:
	.string	"i_fops"
.LASF252:
	.string	"stopLen"
.LASF123:
	.string	"rx_nbits"
.LASF439:
	.string	"hal_spi_recv"
.LASF386:
	.string	"SPI_Enable"
.LASF378:
	.string	"aos_free"
.LASF257:
	.string	"txFifoThreshold"
.LASF37:
	.string	"blksize_t"
.LASF317:
	.string	"DMA_Trans_Dir_Type"
.LASF341:
	.string	"dmaCtrl"
.LASF197:
	.string	"MAC_TX_TRG_IRQn"
.LASF50:
	.string	"st_uid"
.LASF23:
	.string	"__off_t"
.LASF149:
	.string	"SEC_TRNG_IRQn"
.LASF56:
	.string	"st_ctim"
.LASF18:
	.string	"__dev_t"
.LASF24:
	.string	"_ssize_t"
.LASF75:
	.string	"dd_rsv"
.LASF5:
	.string	"signed char"
.LASF128:
	.string	"spi_config_t"
.LASF174:
	.string	"TIMER_CH1_IRQn"
.LASF42:
	.string	"mode_t"
.LASF327:
	.string	"DMA_REQ_I2C_TX"
.LASF445:
	.string	"uxBits"
.LASF186:
	.string	"RESERVED20"
.LASF227:
	.string	"SPI_FRAME_SIZE_8"
.LASF376:
	.string	"aos_register_driver"
.LASF422:
	.string	"fullname"
.LASF315:
	.string	"DMA_TRNS_P2M"
.LASF98:
	.string	"seekdir"
.LASF140:
	.string	"L1C_BMX_TO_IRQn"
.LASF118:
	.string	"delay_usecs"
.LASF395:
	.string	"DMA_Disable"
.LASF219:
	.string	"SPI_BIT_INVERSE_LSB_FIRST"
.LASF312:
	.string	"DMA_TRNS_WIDTH_32BITS"
.LASF15:
	.string	"__blkcnt_t"
.LASF154:
	.string	"RESERVED1"
.LASF17:
	.string	"_off_t"
.LASF235:
	.string	"SPI_INT_END"
.LASF158:
	.string	"RESERVED3"
.LASF190:
	.string	"BOR_IRQn"
.LASF52:
	.string	"st_rdev"
.LASF290:
	.string	"GPIO_FUN_I2C"
.LASF307:
	.string	"SLargerD"
.LASF224:
	.string	"SPI_CLK_POLARITY_LOW"
.LASF469:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF228:
	.string	"SPI_FRAME_SIZE_16"
.LASF194:
	.string	"MAC_TXRX_TIMER_IRQn"
.LASF328:
	.string	"DMA_REQ_SPI_RX"
.LASF216:
	.string	"SPI_BYTE_INVERSE_BYTE3_FIRST"
.LASF432:
	.string	"real_flag"
.LASF86:
	.string	"fs_ops_t"
.LASF348:
	.string	"EventGroupHandle_t"
.LASF468:
	.string	"fdt32_to_cpu"
.LASF260:
	.string	"rxFifoDmaEnable"
.LASF392:
	.string	"bl_dma_irq_register"
.LASF371:
	.string	"fdt_getprop"
.LASF107:
	.string	"inode_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_spi.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
