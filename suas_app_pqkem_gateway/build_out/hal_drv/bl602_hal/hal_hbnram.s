	.file	"hal_hbnram.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv" "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_hbnram.c"
	.section	.text.mem_fourbytes_copy,"ax",@progbits
	.align	1
	.type	mem_fourbytes_copy, @function
mem_fourbytes_copy:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_hbnram.c"
	.loc 1 68 1
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
	.loc 1 71 11
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 72 11
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	.loc 1 73 16
	lw	a5,-44(s0)
	srai	a4,a5,31
	andi	a4,a4,3
	add	a5,a4,a5
	srai	a5,a5,2
	.loc 1 73 10
	sw	a5,-28(s0)
	.loc 1 75 11
	j	.L2
.L3:
	.loc 1 76 18
	lw	a5,-24(s0)
	lw	a4,0(a5)
	.loc 1 76 16
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 77 14
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 78 14
	lw	a5,-24(s0)
	addi	a5,a5,4
	sw	a5,-24(s0)
	.loc 1 79 13
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
.L2:
	.loc 1 75 17
	lw	a5,-28(s0)
	bne	a5,zero,.L3
	.loc 1 82 12
	lw	a5,-36(s0)
	.loc 1 83 1
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
.LFE5:
	.size	mem_fourbytes_copy, .-mem_fourbytes_copy
	.section	.text.memset_fourbytes,"ax",@progbits
	.align	1
	.type	memset_fourbytes, @function
memset_fourbytes:
.LFB6:
	.loc 1 86 1
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
	.loc 1 89 14
	sw	zero,-28(s0)
	.loc 1 90 14
	sw	zero,-32(s0)
	.loc 1 92 13
	lw	a5,-40(s0)
	.loc 1 92 9
	andi	a5,a5,255
	sw	a5,-32(s0)
	.loc 1 93 23
	lw	a5,-32(s0)
	slli	a4,a5,8
	.loc 1 93 16
	lw	a5,-32(s0)
	or	a4,a4,a5
	.loc 1 93 36
	lw	a5,-32(s0)
	slli	a5,a5,16
	.loc 1 93 29
	or	a4,a4,a5
	.loc 1 93 50
	lw	a5,-32(s0)
	slli	a5,a5,24
	.loc 1 93 10
	or	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 94 10
	lw	a5,-44(s0)
	srai	a4,a5,31
	andi	a4,a4,3
	add	a5,a4,a5
	srai	a5,a5,2
	sw	a5,-24(s0)
	.loc 1 95 11
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 96 11
	j	.L6
.L7:
	.loc 1 97 16
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	.loc 1 98 14
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 99 13
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L6:
	.loc 1 96 17
	lw	a5,-24(s0)
	bgt	a5,zero,.L7
	.loc 1 102 12
	lw	a5,-36(s0)
	.loc 1 103 1
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
.LFE6:
	.size	memset_fourbytes, .-memset_fourbytes
	.section	.rodata
	.align	2
.LC0:
	.string	"Sec_Eng_SHA256_Finish error \r\n"
	.section	.text.sha_check_withctx,"ax",@progbits
	.align	1
	.type	sha_check_withctx, @function
sha_check_withctx:
.LFB7:
	.loc 1 106 1
	.cfi_startproc
	addi	sp,sp,-224
	.cfi_def_cfa_offset 224
	sw	ra,220(sp)
	sw	s0,216(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,224
	.cfi_def_cfa 8, 0
	sw	a0,-196(s0)
	sw	a1,-200(s0)
	mv	a5,a2
	sw	a3,-208(s0)
	sw	a4,-212(s0)
	sb	a5,-201(s0)
	.loc 1 107 14
	sw	zero,-20(s0)
	.loc 1 112 11
	lw	a4,-212(s0)
	lw	a5,-208(s0)
	divu	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 113 12
	lw	a4,-212(s0)
	lw	a5,-208(s0)
	remu	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 115 5
	call	bl_sha_mutex_take
	.loc 1 116 5
	lbu	a4,-201(s0)
	addi	a5,s0,-180
	mv	a1,a4
	mv	a0,a5
	call	bl_sha_init
	.loc 1 118 13
	lw	a0,-208(s0)
	call	pvPortMalloc
	sw	a0,-32(s0)
	.loc 1 119 12
	sw	zero,-20(s0)
	.loc 1 119 5
	j	.L10
.L11:
	.loc 1 120 45
	lw	a4,-20(s0)
	lw	a5,-208(s0)
	mul	a5,a4,a5
	.loc 1 120 41
	lw	a4,-196(s0)
	add	a5,a4,a5
	.loc 1 120 9
	lw	a4,-208(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-32(s0)
	call	mem_fourbytes_copy
	.loc 1 121 9
	addi	a5,s0,-180
	lw	a2,-208(s0)
	lw	a1,-32(s0)
	mv	a0,a5
	call	bl_sha_update
	.loc 1 119 29 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L10:
	.loc 1 119 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L11
	.loc 1 124 8
	lw	a5,-28(s0)
	beq	a5,zero,.L12
	.loc 1 125 9
	lw	a2,-208(s0)
	li	a1,0
	lw	a0,-32(s0)
	call	memset
	.loc 1 126 45
	lw	a4,-20(s0)
	lw	a5,-208(s0)
	mul	a5,a4,a5
	.loc 1 126 41
	lw	a4,-196(s0)
	add	a5,a4,a5
	.loc 1 126 9
	lw	a4,-208(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-32(s0)
	call	mem_fourbytes_copy
	.loc 1 127 9
	addi	a5,s0,-180
	lw	a2,-28(s0)
	lw	a1,-32(s0)
	mv	a0,a5
	call	bl_sha_update
.L12:
	.loc 1 130 9
	addi	a5,s0,-180
	lw	a1,-200(s0)
	mv	a0,a5
	call	bl_sha_finish
	mv	a5,a0
	.loc 1 130 8 discriminator 1
	beq	a5,zero,.L13
	.loc 1 131 9
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
.L13:
	.loc 1 133 5
	call	bl_sha_mutex_give
	.loc 1 135 5
	lw	a0,-32(s0)
	call	vPortFree
	.loc 1 137 12
	li	a5,0
	.loc 1 138 1
	mv	a0,a5
	lw	ra,220(sp)
	.cfi_restore 1
	lw	s0,216(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 224
	addi	sp,sp,224
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	sha_check_withctx, .-sha_check_withctx
	.section	.text.get_avaible_area,"ax",@progbits
	.align	1
	.type	get_avaible_area, @function
get_avaible_area:
.LFB8:
	.loc 1 141 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 145 15
	li	a5,1073807360
	addi	a5,a5,64
	sw	a5,-20(s0)
	.loc 1 147 11
	j	.L16
.L19:
	.loc 1 148 17
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 149 12
	lw	a5,-24(s0)
	bne	a5,zero,.L17
	.loc 1 150 20
	lw	a5,-20(s0)
	j	.L18
.L17:
	.loc 1 153 75
	lw	a5,-20(s0)
	addi	a5,a5,8
	.loc 1 153 47
	lw	a5,0(a5)
	.loc 1 153 45
	addi	a5,a5,12
	.loc 1 153 19
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L16:
	.loc 1 147 22
	lw	a4,-20(s0)
	li	a5,1073811456
	bltu	a4,a5,.L19
	.loc 1 156 11
	li	a5,0
.L18:
	.loc 1 157 1
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
.LFE8:
	.size	get_avaible_area, .-get_avaible_area
	.section	.text.find_addr_by_key,"ax",@progbits
	.align	1
	.type	find_addr_by_key, @function
find_addr_by_key:
.LFB9:
	.loc 1 160 1
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
	.loc 1 165 11
	li	a5,1073807360
	addi	a5,a5,64
	sw	a5,-20(s0)
	.loc 1 166 11
	j	.L21
.L24:
	.loc 1 167 13
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 168 20
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 168 12
	lw	a4,-24(s0)
	bne	a4,a5,.L22
	.loc 1 169 20
	lw	a5,-20(s0)
	j	.L23
.L22:
	.loc 1 172 13
	lw	a5,-20(s0)
	lw	a5,8(a5)
	sw	a5,-28(s0)
	.loc 1 173 37
	lw	a5,-28(s0)
	addi	a5,a5,12
	.loc 1 173 15
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L21:
	.loc 1 166 18
	lw	a4,-20(s0)
	li	a5,1073811456
	bltu	a4,a5,.L24
	.loc 1 176 11
	li	a5,0
.L23:
	.loc 1 177 1
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
	.size	find_addr_by_key, .-find_addr_by_key
	.section	.rodata
	.align	2
.LC1:
	.string	"|head-64bytes|\r\n"
	.align	2
.LC2:
	.string	"|%s:head-12bytes data-%ldbytes|\r\n"
	.align	2
.LC3:
	.string	"|unused-%ldbytes|\r\n"
	.section	.text.print_mem_map,"ax",@progbits
	.align	1
	.globl	print_mem_map
	.type	print_mem_map, @function
print_mem_map:
.LFB10:
	.loc 1 180 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 186 5
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	.loc 1 187 5
	addi	a5,s0,-36
	li	a2,5
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 188 11
	li	a5,1073807360
	addi	a5,a5,64
	sw	a5,-20(s0)
	.loc 1 189 11
	j	.L26
.L30:
	.loc 1 190 13
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 191 12
	lw	a5,-24(s0)
	beq	a5,zero,.L27
	.loc 1 192 13
	addi	a5,s0,-36
	li	a2,4
	lw	a1,-20(s0)
	mv	a0,a5
	call	mem_fourbytes_copy
	.loc 1 193 17
	lw	a5,-20(s0)
	lw	a5,8(a5)
	sw	a5,-28(s0)
	.loc 1 194 13
	addi	a5,s0,-36
	lw	a2,-28(s0)
	mv	a1,a5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	j	.L32
.L27:
	.loc 1 196 87
	li	a4,1073811456
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 1 196 13
	mv	a1,a5
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	.loc 1 197 13
	j	.L25
.L32:
	.loc 1 200 37
	lw	a5,-28(s0)
	addi	a5,a5,12
	.loc 1 200 15
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L26:
	.loc 1 189 18
	lw	a4,-20(s0)
	li	a5,1073811456
	bltu	a4,a5,.L30
	.loc 1 203 5
	nop
.L25:
	.loc 1 204 1
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
	.size	print_mem_map, .-print_mem_map
	.section	.rodata
	.align	2
.LC4:
	.string	"magic is not right ,recalculate.\r\n"
	.align	2
.LC5:
	.string	"hash check success \r\n"
	.align	2
.LC6:
	.string	"hash check failed, memset mem \r\n"
	.section	.text.hal_hbnram_init,"ax",@progbits
	.align	1
	.globl	hal_hbnram_init
	.type	hal_hbnram_init, @function
hal_hbnram_init:
.LFB11:
	.loc 1 207 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	.loc 1 214 17
	li	a5,1073807360
	.loc 1 214 15
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 215 8
	lw	a4,-20(s0)
	li	a5,305418240
	addi	a5,a5,1656
	beq	a4,a5,.L34
	.loc 1 216 9
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
	.loc 1 217 9
	li	a2,4096
	li	a1,0
	li	a0,1073807360
	call	memset_fourbytes
	.loc 1 218 9
	li	a5,1073807360
	.loc 1 218 33
	li	a4,305418240
	addi	a4,a4,1656
	sw	a4,0(a5)
	.loc 1 219 9
	addi	a1,s0,-56
	li	a5,4096
	addi	a4,a5,-20
	li	a3,32
	li	a2,0
	li	a5,1073807360
	addi	a0,a5,20
	call	sha_check_withctx
	.loc 1 220 9
	addi	a5,s0,-56
	li	a2,16
	mv	a1,a5
	li	a5,1073807360
	addi	a0,a5,4
	call	mem_fourbytes_copy
	.loc 1 221 16
	li	a5,-1
	j	.L38
.L34:
	.loc 1 223 9
	addi	a4,s0,-72
	li	a2,16
	li	a5,1073807360
	addi	a1,a5,4
	mv	a0,a4
	call	mem_fourbytes_copy
	.loc 1 224 9
	addi	a1,s0,-56
	li	a5,4096
	addi	a4,a5,-20
	li	a3,32
	li	a2,0
	li	a5,1073807360
	addi	a0,a5,20
	call	sha_check_withctx
	.loc 1 225 9
	addi	a4,s0,-56
	addi	a5,s0,-88
	li	a2,16
	mv	a1,a4
	mv	a0,a5
	call	mem_fourbytes_copy
	.loc 1 226 16
	addi	a4,s0,-72
	addi	a5,s0,-88
	li	a2,16
	mv	a1,a4
	mv	a0,a5
	call	memcmp
	sw	a0,-24(s0)
	.loc 1 227 12
	lw	a5,-24(s0)
	bne	a5,zero,.L36
	.loc 1 228 13
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	printf
	.loc 1 238 12
	li	a5,0
	j	.L38
.L36:
	.loc 1 230 13
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	printf
	.loc 1 231 13
	li	a2,4096
	li	a1,0
	li	a0,1073807360
	call	memset_fourbytes
	.loc 1 232 13
	addi	a1,s0,-56
	li	a5,4096
	addi	a4,a5,-20
	li	a3,32
	li	a2,0
	li	a5,1073807360
	addi	a0,a5,20
	call	sha_check_withctx
	.loc 1 233 13
	addi	a5,s0,-56
	li	a2,16
	mv	a1,a5
	li	a5,1073807360
	addi	a0,a5,4
	call	mem_fourbytes_copy
	.loc 1 234 20
	li	a5,-1
.L38:
	.loc 1 239 1
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
.LFE11:
	.size	hal_hbnram_init, .-hal_hbnram_init
	.section	.text.hal_hbnram_deinit,"ax",@progbits
	.align	1
	.globl	hal_hbnram_deinit
	.type	hal_hbnram_deinit, @function
hal_hbnram_deinit:
.LFB12:
	.loc 1 242 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 243 5
	li	a2,4096
	li	a1,0
	li	a0,1073807360
	call	memset_fourbytes
	.loc 1 245 12
	li	a5,0
	.loc 1 246 1
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
	.size	hal_hbnram_deinit, .-hal_hbnram_deinit
	.section	.rodata
	.align	2
.LC7:
	.string	"illegal para. \r\n"
	.align	2
.LC8:
	.string	"do not have area for alloc. \r\n"
	.align	2
.LC9:
	.string	"not have enough area for alloc \r\n"
	.align	2
.LC10:
	.string	"only left %d bytes, not enough for alloc \r\n"
	.section	.text.hal_hbnram_alloc,"ax",@progbits
	.align	1
	.globl	hal_hbnram_alloc
	.type	hal_hbnram_alloc, @function
hal_hbnram_alloc:
.LFB13:
	.loc 1 249 1
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
	.loc 1 256 10
	lw	a0,-68(s0)
	call	strlen
	mv	a4,a0
	.loc 1 256 8 discriminator 1
	li	a5,4
	bgtu	a4,a5,.L42
	.loc 1 256 27 discriminator 2
	lw	a5,-72(s0)
	bgt	a5,zero,.L43
.L42:
	.loc 1 257 9
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
	.loc 1 258 16
	li	a5,-1
	j	.L51
.L43:
	.loc 1 261 13
	call	get_avaible_area
	sw	a0,-20(s0)
	.loc 1 262 8
	lw	a5,-20(s0)
	bne	a5,zero,.L45
	.loc 1 263 9
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	printf
	.loc 1 264 16
	li	a5,-1
	j	.L51
.L45:
	.loc 1 267 17
	lw	a5,-72(s0)
	andi	a5,a5,3
	.loc 1 267 8
	beq	a5,zero,.L46
	.loc 1 268 25
	lw	a4,-72(s0)
	srai	a5,a4,31
	srli	a5,a5,30
	add	a4,a4,a5
	andi	a4,a4,3
	sub	a5,a4,a5
	mv	a4,a5
	.loc 1 268 19
	li	a5,4
	sub	a4,a5,a4
	.loc 1 268 30
	lw	a5,-72(s0)
	add	a5,a4,a5
	.loc 1 268 14
	sw	a5,-60(s0)
	j	.L47
.L46:
	.loc 1 270 14
	lw	a5,-72(s0)
	sw	a5,-60(s0)
.L47:
	.loc 1 273 22
	lw	a5,-60(s0)
	addi	a5,a5,12
	lw	a4,-20(s0)
	add	a4,a4,a5
	.loc 1 273 8
	li	a5,1073811456
	bleu	a4,a5,.L48
	.loc 1 274 65
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 274 19
	li	a4,1073811456
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 275 12
	lw	a5,-24(s0)
	bge	a5,zero,.L49
	.loc 1 276 13
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	printf
	j	.L50
.L49:
	.loc 1 278 13
	lw	a1,-24(s0)
	lui	a5,%hi(.LC10)
	addi	a0,a5,%lo(.LC10)
	call	printf
.L50:
	.loc 1 281 16
	li	a5,-1
	j	.L51
.L48:
	.loc 1 284 5
	addi	a5,s0,-64
	li	a2,4
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 285 5
	lw	a0,-68(s0)
	call	strlen
	mv	a4,a0
	.loc 1 285 5 is_stmt 0 discriminator 1
	addi	a5,s0,-64
	mv	a2,a4
	lw	a1,-68(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 286 5 is_stmt 1
	addi	a5,s0,-64
	li	a2,4
	mv	a1,a5
	lw	a0,-20(s0)
	call	mem_fourbytes_copy
	.loc 1 287 5
	lw	a5,-20(s0)
	addi	a5,a5,8
	addi	a4,s0,-60
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	mem_fourbytes_copy
	.loc 1 288 5
	addi	a1,s0,-56
	li	a5,4096
	addi	a4,a5,-20
	li	a3,32
	li	a2,0
	li	a5,1073807360
	addi	a0,a5,20
	call	sha_check_withctx
	.loc 1 289 5
	addi	a5,s0,-56
	li	a2,16
	mv	a1,a5
	li	a5,1073807360
	addi	a0,a5,4
	call	mem_fourbytes_copy
	.loc 1 291 12
	li	a5,0
.L51:
	.loc 1 292 1
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
.LFE13:
	.size	hal_hbnram_alloc, .-hal_hbnram_alloc
	.section	.rodata
	.align	2
.LC11:
	.string	"illegal para \r\n"
	.align	2
.LC12:
	.string	"key oversize \r\n"
	.align	2
.LC13:
	.string	"not correct key, return \r\n"
	.align	2
.LC14:
	.string	"length is too big than alloc size\r\n"
	.section	.text.hal_hbnram_buffer_set,"ax",@progbits
	.align	1
	.globl	hal_hbnram_buffer_set
	.type	hal_hbnram_buffer_set, @function
hal_hbnram_buffer_set:
.LFB14:
	.loc 1 295 1
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
	.loc 1 297 14
	sw	zero,-20(s0)
	.loc 1 303 8
	lw	a5,-84(s0)
	beq	a5,zero,.L53
	.loc 1 303 20 discriminator 1
	lw	a5,-88(s0)
	beq	a5,zero,.L53
	.loc 1 303 35 discriminator 2
	lw	a5,-92(s0)
	bgt	a5,zero,.L54
.L53:
	.loc 1 304 9
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	printf
	.loc 1 306 16
	li	a5,-1
	j	.L62
.L54:
	.loc 1 309 9
	lw	a0,-84(s0)
	call	strlen
	mv	a4,a0
	.loc 1 309 8 discriminator 1
	li	a5,4
	bleu	a4,a5,.L56
	.loc 1 310 9
	lui	a5,%hi(.LC12)
	addi	a0,a5,%lo(.LC12)
	call	printf
	.loc 1 311 16
	li	a5,-1
	j	.L62
.L56:
	.loc 1 314 5
	addi	a5,s0,-68
	li	a2,4
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 315 5
	lw	a0,-84(s0)
	call	strlen
	mv	a4,a0
	.loc 1 315 5 is_stmt 0 discriminator 1
	addi	a5,s0,-68
	mv	a2,a4
	lw	a1,-84(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 316 13 is_stmt 1
	addi	a5,s0,-68
	mv	a0,a5
	call	find_addr_by_key
	sw	a0,-24(s0)
	.loc 1 317 8
	lw	a5,-24(s0)
	bne	a5,zero,.L57
	.loc 1 318 9
	lui	a5,%hi(.LC13)
	addi	a0,a5,%lo(.LC13)
	call	printf
	.loc 1 320 16
	li	a5,-1
	j	.L62
.L57:
	.loc 1 323 15
	lw	a5,-24(s0)
	lw	a5,8(a5)
	sw	a5,-20(s0)
	.loc 1 325 16
	lw	a5,-92(s0)
	.loc 1 325 8
	lw	a4,-20(s0)
	bgeu	a4,a5,.L58
	.loc 1 326 9
	lui	a5,%hi(.LC14)
	addi	a0,a5,%lo(.LC14)
	call	printf
	.loc 1 327 16
	li	a5,-1
	j	.L62
.L58:
	.loc 1 330 20
	lw	a5,-92(s0)
	andi	a5,a5,3
	.loc 1 330 8
	beq	a5,zero,.L59
	.loc 1 331 24
	lw	a4,-92(s0)
	srai	a5,a4,31
	srli	a5,a5,30
	add	a4,a4,a5
	andi	a4,a4,3
	sub	a5,a4,a5
	.loc 1 331 15
	sw	a5,-28(s0)
	.loc 1 332 12
	lw	a4,-92(s0)
	li	a5,4
	ble	a4,a5,.L60
	.loc 1 333 13
	lw	a5,-24(s0)
	addi	a3,a5,12
	.loc 1 333 65
	lw	a4,-92(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	.loc 1 333 13
	mv	a2,a5
	lw	a1,-88(s0)
	mv	a0,a3
	call	mem_fourbytes_copy
	.loc 1 334 41
	lw	a4,-92(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	lw	a4,-88(s0)
	add	a4,a4,a5
	.loc 1 334 13
	addi	a5,s0,-64
	lw	a2,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 1 335 61
	lw	a4,-92(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	addi	a5,a5,12
	.loc 1 335 13
	lw	a4,-24(s0)
	add	a5,a4,a5
	addi	a4,s0,-64
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	mem_fourbytes_copy
	j	.L61
.L60:
	.loc 1 337 13
	addi	a5,s0,-64
	lw	a2,-28(s0)
	lw	a1,-88(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 338 13
	lw	a5,-24(s0)
	addi	a5,a5,12
	addi	a4,s0,-64
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	mem_fourbytes_copy
	j	.L61
.L59:
	.loc 1 341 8
	lw	a5,-24(s0)
	addi	a5,a5,12
	lw	a2,-92(s0)
	lw	a1,-88(s0)
	mv	a0,a5
	call	mem_fourbytes_copy
.L61:
	.loc 1 344 5
	addi	a1,s0,-60
	li	a5,4096
	addi	a4,a5,-20
	li	a3,32
	li	a2,0
	li	a5,1073807360
	addi	a0,a5,20
	call	sha_check_withctx
	.loc 1 345 5
	addi	a5,s0,-60
	li	a2,16
	mv	a1,a5
	li	a5,1073807360
	addi	a0,a5,4
	call	mem_fourbytes_copy
	.loc 1 347 12
	lw	a5,-92(s0)
.L62:
	.loc 1 348 1
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
.LFE14:
	.size	hal_hbnram_buffer_set, .-hal_hbnram_buffer_set
	.section	.rodata
	.align	2
.LC15:
	.string	"key not correct, return \r\n"
	.align	2
.LC16:
	.string	"length is big than alloc size \r\n"
	.section	.text.hal_hbnram_buffer_get,"ax",@progbits
	.align	1
	.globl	hal_hbnram_buffer_get
	.type	hal_hbnram_buffer_get, @function
hal_hbnram_buffer_get:
.LFB15:
	.loc 1 351 1
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
	.loc 1 353 14
	sw	zero,-20(s0)
	.loc 1 358 8
	lw	a5,-56(s0)
	beq	a5,zero,.L64
	.loc 1 358 20 discriminator 1
	lw	a5,-52(s0)
	beq	a5,zero,.L64
	.loc 1 358 35 discriminator 2
	lw	a5,-60(s0)
	bgt	a5,zero,.L65
.L64:
	.loc 1 359 9
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	printf
	.loc 1 360 16
	li	a5,-1
	j	.L73
.L65:
	.loc 1 363 9
	lw	a0,-52(s0)
	call	strlen
	mv	a4,a0
	.loc 1 363 8 discriminator 1
	li	a5,4
	bleu	a4,a5,.L67
	.loc 1 364 9
	lui	a5,%hi(.LC12)
	addi	a0,a5,%lo(.LC12)
	call	printf
.L67:
	.loc 1 367 5
	addi	a5,s0,-36
	li	a2,4
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 368 5
	lw	a0,-52(s0)
	call	strlen
	mv	a4,a0
	.loc 1 368 5 is_stmt 0 discriminator 1
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-52(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 369 13 is_stmt 1
	addi	a5,s0,-36
	mv	a0,a5
	call	find_addr_by_key
	sw	a0,-24(s0)
	.loc 1 370 8
	lw	a5,-24(s0)
	bne	a5,zero,.L68
	.loc 1 371 9
	lui	a5,%hi(.LC15)
	addi	a0,a5,%lo(.LC15)
	call	printf
	.loc 1 372 16
	li	a5,-1
	j	.L73
.L68:
	.loc 1 375 15
	lw	a5,-24(s0)
	lw	a5,8(a5)
	sw	a5,-20(s0)
	.loc 1 376 16
	lw	a5,-60(s0)
	.loc 1 376 8
	lw	a4,-20(s0)
	bgeu	a4,a5,.L69
	.loc 1 377 9
	lui	a5,%hi(.LC16)
	addi	a0,a5,%lo(.LC16)
	call	printf
	.loc 1 378 16
	li	a5,-1
	j	.L73
.L69:
	.loc 1 381 20
	lw	a5,-60(s0)
	andi	a5,a5,3
	.loc 1 381 8
	beq	a5,zero,.L70
	.loc 1 382 24
	lw	a4,-60(s0)
	srai	a5,a4,31
	srli	a5,a5,30
	add	a4,a4,a5
	andi	a4,a4,3
	sub	a5,a4,a5
	.loc 1 382 15
	sw	a5,-28(s0)
	.loc 1 383 12
	lw	a4,-60(s0)
	li	a5,4
	ble	a4,a5,.L71
	.loc 1 384 43
	lw	a5,-24(s0)
	addi	a3,a5,12
	.loc 1 384 65
	lw	a4,-60(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	.loc 1 384 13
	mv	a2,a5
	mv	a1,a3
	lw	a0,-56(s0)
	call	mem_fourbytes_copy
	.loc 1 385 69
	lw	a4,-60(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	addi	a5,a5,12
	lw	a4,-24(s0)
	add	a4,a4,a5
	.loc 1 385 13
	addi	a5,s0,-32
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	mem_fourbytes_copy
	.loc 1 386 33
	lw	a4,-60(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	lw	a4,-56(s0)
	add	a5,a4,a5
	.loc 1 386 13
	addi	a4,s0,-32
	lw	a2,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	j	.L72
.L71:
	.loc 1 388 46
	lw	a5,-24(s0)
	addi	a4,a5,12
	.loc 1 388 13
	addi	a5,s0,-32
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	mem_fourbytes_copy
	.loc 1 389 13
	addi	a5,s0,-32
	lw	a2,-28(s0)
	mv	a1,a5
	lw	a0,-56(s0)
	call	memcpy
	j	.L72
.L70:
	.loc 1 392 39
	lw	a5,-24(s0)
	addi	a5,a5,12
	.loc 1 392 9
	lw	a2,-60(s0)
	mv	a1,a5
	lw	a0,-56(s0)
	call	mem_fourbytes_copy
.L72:
	.loc 1 395 12
	lw	a5,-60(s0)
.L73:
	.loc 1 396 1
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
.LFE15:
	.size	hal_hbnram_buffer_get, .-hal_hbnram_buffer_get
	.section	.rodata
	.align	2
.LC17:
	.string	"invalid handle pointer \r\n"
	.align	2
.LC18:
	.string	"invalid key \r\n"
	.section	.text.hal_hbnram_handle_get_fromkey,"ax",@progbits
	.align	1
	.globl	hal_hbnram_handle_get_fromkey
	.type	hal_hbnram_handle_get_fromkey, @function
hal_hbnram_handle_get_fromkey:
.LFB16:
	.loc 1 399 1
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
	.loc 1 403 8
	lw	a5,-36(s0)
	beq	a5,zero,.L75
	.loc 1 403 20 discriminator 1
	lw	a5,-40(s0)
	bne	a5,zero,.L76
.L75:
	.loc 1 404 9
	lui	a5,%hi(.LC17)
	addi	a0,a5,%lo(.LC17)
	call	printf
	.loc 1 406 16
	li	a5,-1
	j	.L80
.L76:
	.loc 1 409 9
	lw	a0,-36(s0)
	call	strlen
	mv	a4,a0
	.loc 1 409 8 discriminator 1
	li	a5,4
	bleu	a4,a5,.L78
	.loc 1 410 9
	lui	a5,%hi(.LC12)
	addi	a0,a5,%lo(.LC12)
	call	printf
.L78:
	.loc 1 413 5
	addi	a5,s0,-24
	li	a2,4
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 414 5
	lw	a0,-36(s0)
	call	strlen
	mv	a4,a0
	.loc 1 414 5 is_stmt 0 discriminator 1
	addi	a5,s0,-24
	mv	a2,a4
	lw	a1,-36(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 415 13 is_stmt 1
	addi	a5,s0,-24
	mv	a0,a5
	call	find_addr_by_key
	sw	a0,-20(s0)
	.loc 1 416 8
	lw	a5,-20(s0)
	bne	a5,zero,.L79
	.loc 1 417 9
	lui	a5,%hi(.LC18)
	addi	a0,a5,%lo(.LC18)
	call	printf
	.loc 1 418 16
	li	a5,-1
	j	.L80
.L79:
	.loc 1 420 24
	lw	a5,-40(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 421 44
	lw	a5,-20(s0)
	addi	a5,a5,8
	.loc 1 421 20
	lw	a5,0(a5)
	mv	a4,a5
	.loc 1 421 18
	lw	a5,-40(s0)
	sw	a4,12(a5)
	.loc 1 422 24
	lw	a5,-40(s0)
	sw	zero,8(a5)
	.loc 1 423 23
	lw	a5,-40(s0)
	sw	zero,4(a5)
	.loc 1 425 12
	li	a5,0
.L80:
	.loc 1 426 1
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
	.size	hal_hbnram_handle_get_fromkey, .-hal_hbnram_handle_get_fromkey
	.section	.rodata
	.align	2
.LC19:
	.string	"invalid pointer \r\n"
	.align	2
.LC20:
	.string	"len == 0 \r\n"
	.align	2
.LC21:
	.string	"len oversize \r\n"
	.section	.text.hal_hbnram_copy_from_stream,"ax",@progbits
	.align	1
	.globl	hal_hbnram_copy_from_stream
	.type	hal_hbnram_copy_from_stream, @function
hal_hbnram_copy_from_stream:
.LFB17:
	.loc 1 429 1
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
	.loc 1 430 13
	sw	zero,-36(s0)
	.loc 1 431 13
	sw	zero,-40(s0)
	.loc 1 437 8
	lw	a5,-56(s0)
	beq	a5,zero,.L82
	.loc 1 437 20 discriminator 1
	lw	a5,-52(s0)
	bne	a5,zero,.L83
.L82:
	.loc 1 438 9
	lui	a5,%hi(.LC19)
	addi	a0,a5,%lo(.LC19)
	call	printf
	.loc 1 439 16
	li	a5,-1
	j	.L94
.L83:
	.loc 1 442 8
	lw	a5,-60(s0)
	bgt	a5,zero,.L85
	.loc 1 443 9
	lui	a5,%hi(.LC20)
	addi	a0,a5,%lo(.LC20)
	call	printf
	.loc 1 444 16
	li	a5,-1
	j	.L94
.L85:
	.loc 1 447 21
	lw	a5,-52(s0)
	lw	a4,4(a5)
	.loc 1 447 13
	lw	a5,-60(s0)
	add	a4,a4,a5
	.loc 1 447 41
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 447 8
	ble	a4,a5,.L86
	.loc 1 448 9
	lui	a5,%hi(.LC21)
	addi	a0,a5,%lo(.LC21)
	call	printf
	.loc 1 449 16
	li	a5,-1
	j	.L94
.L86:
	.loc 1 452 24
	lw	a5,-52(s0)
	lw	a4,4(a5)
	.loc 1 452 16
	srai	a5,a4,31
	srli	a5,a5,30
	add	a4,a4,a5
	andi	a4,a4,3
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 453 8
	lw	a5,-20(s0)
	bne	a5,zero,.L87
	.loc 1 454 20
	lw	a4,-60(s0)
	srai	a5,a4,31
	srli	a5,a5,30
	add	a4,a4,a5
	andi	a4,a4,3
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 455 12
	lw	a5,-28(s0)
	bne	a5,zero,.L88
	.loc 1 456 43
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 456 78
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 456 70
	addi	a5,a5,12
	add	a5,a4,a5
	.loc 1 456 13
	lw	a2,-60(s0)
	mv	a1,a5
	lw	a0,-56(s0)
	call	mem_fourbytes_copy
	j	.L89
.L88:
	.loc 1 458 19
	lw	a5,-60(s0)
	srai	a4,a5,31
	andi	a4,a4,3
	add	a5,a4,a5
	srai	a5,a5,2
	sw	a5,-32(s0)
	.loc 1 459 16
	lw	a5,-32(s0)
	ble	a5,zero,.L90
	.loc 1 460 47
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 460 82
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 460 74
	addi	a5,a5,12
	add	a3,a4,a5
	.loc 1 460 17
	lw	a4,-60(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	mv	a2,a5
	mv	a1,a3
	lw	a0,-56(s0)
	call	mem_fourbytes_copy
	.loc 1 461 51
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 461 86
	lw	a5,-52(s0)
	lw	a5,4(a5)
	mv	a3,a5
	.loc 1 461 98
	lw	a5,-60(s0)
	add	a3,a3,a5
	.loc 1 461 104
	lw	a5,-28(s0)
	sub	a5,a3,a5
	addi	a5,a5,12
	add	a4,a4,a5
	.loc 1 461 17
	addi	a5,s0,-40
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	mem_fourbytes_copy
	.loc 1 462 34
	lw	a4,-60(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	lw	a4,-56(s0)
	add	a5,a4,a5
	.loc 1 462 17
	lw	a3,-28(s0)
	addi	a4,s0,-40
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	j	.L89
.L90:
	.loc 1 464 51
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 464 86
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 464 78
	addi	a5,a5,12
	add	a4,a4,a5
	.loc 1 464 17
	addi	a5,s0,-40
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	mem_fourbytes_copy
	.loc 1 465 17
	lw	a4,-60(s0)
	addi	a5,s0,-40
	mv	a2,a4
	mv	a1,a5
	lw	a0,-56(s0)
	call	memcpy
	j	.L89
.L87:
	.loc 1 469 43
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 469 78
	lw	a5,-52(s0)
	lw	a5,4(a5)
	mv	a3,a5
	.loc 1 469 90
	lw	a5,-20(s0)
	sub	a5,a3,a5
	addi	a5,a5,12
	add	a4,a4,a5
	.loc 1 469 9
	addi	a5,s0,-36
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	mem_fourbytes_copy
	.loc 1 470 9
	lw	a5,-20(s0)
	addi	a4,s0,-36
	add	a3,a4,a5
	.loc 1 470 46
	li	a4,4
	lw	a5,-20(s0)
	sub	a4,a4,a5
	.loc 1 470 85
	lw	a5,-60(s0)
	ble	a5,a4,.L91
	mv	a5,a4
.L91:
	.loc 1 470 9
	mv	a2,a5
	mv	a1,a3
	lw	a0,-56(s0)
	call	memcpy
	.loc 1 471 27
	li	a4,4
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 1 471 16
	lw	a4,-60(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 472 12
	lw	a5,-24(s0)
	ble	a5,zero,.L89
	.loc 1 473 24
	lw	a4,-24(s0)
	srai	a5,a4,31
	srli	a5,a5,30
	add	a4,a4,a5
	andi	a4,a4,3
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 474 16
	lw	a5,-28(s0)
	bne	a5,zero,.L92
	.loc 1 475 44
	lw	a5,-20(s0)
	li	a4,4
	sub	a5,a4,a5
	.loc 1 475 17
	lw	a4,-56(s0)
	add	a3,a4,a5
	.loc 1 475 64
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 475 99
	lw	a5,-52(s0)
	lw	a5,4(a5)
	mv	a2,a5
	.loc 1 475 111
	lw	a5,-20(s0)
	sub	a5,a2,a5
	.loc 1 475 124
	addi	a5,a5,16
	add	a5,a4,a5
	.loc 1 475 17
	lw	a2,-24(s0)
	mv	a1,a5
	mv	a0,a3
	call	mem_fourbytes_copy
	j	.L89
.L92:
	.loc 1 477 23
	lw	a5,-24(s0)
	srai	a4,a5,31
	andi	a4,a4,3
	add	a5,a4,a5
	srai	a5,a5,2
	sw	a5,-32(s0)
	.loc 1 478 20
	lw	a5,-32(s0)
	ble	a5,zero,.L93
	.loc 1 479 48
	lw	a5,-20(s0)
	li	a4,4
	sub	a5,a4,a5
	.loc 1 479 21
	lw	a4,-56(s0)
	add	a3,a4,a5
	.loc 1 479 68
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 479 103
	lw	a5,-52(s0)
	lw	a5,4(a5)
	mv	a2,a5
	.loc 1 479 115
	lw	a5,-20(s0)
	sub	a5,a2,a5
	.loc 1 479 128
	addi	a5,a5,16
	add	a1,a4,a5
	.loc 1 479 21
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	mv	a2,a5
	mv	a0,a3
	call	mem_fourbytes_copy
	.loc 1 480 55
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 480 90
	lw	a5,-52(s0)
	lw	a5,4(a5)
	mv	a3,a5
	.loc 1 480 102
	lw	a5,-20(s0)
	sub	a3,a3,a5
	.loc 1 480 119
	lw	a5,-24(s0)
	add	a3,a3,a5
	.loc 1 480 128
	lw	a5,-28(s0)
	sub	a5,a3,a5
	addi	a5,a5,16
	add	a4,a4,a5
	.loc 1 480 21
	addi	a5,s0,-40
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	mem_fourbytes_copy
	.loc 1 481 49
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a4,a4,a5
	.loc 1 481 58
	lw	a5,-28(s0)
	sub	a5,a4,a5
	addi	a5,a5,4
	lw	a4,-56(s0)
	add	a5,a4,a5
	.loc 1 481 21
	lw	a3,-28(s0)
	addi	a4,s0,-40
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	j	.L89
.L93:
	.loc 1 484 55
	lw	a5,-52(s0)
	lw	a4,0(a5)
	.loc 1 484 90
	lw	a5,-52(s0)
	lw	a5,4(a5)
	mv	a3,a5
	.loc 1 484 102
	lw	a5,-20(s0)
	sub	a5,a3,a5
	.loc 1 484 115
	addi	a5,a5,16
	add	a4,a4,a5
	.loc 1 484 21
	addi	a5,s0,-40
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	mem_fourbytes_copy
	.loc 1 485 36
	lw	a5,-20(s0)
	li	a4,4
	sub	a5,a4,a5
	lw	a4,-56(s0)
	add	a5,a4,a5
	.loc 1 485 21
	lw	a3,-28(s0)
	addi	a4,s0,-40
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	memcpy
.L89:
	.loc 1 491 31
	lw	a5,-52(s0)
	lw	a4,4(a5)
	.loc 1 491 43
	lw	a5,-60(s0)
	add	a4,a4,a5
	.loc 1 491 23
	lw	a5,-52(s0)
	sw	a4,4(a5)
	.loc 1 493 12
	li	a5,0
.L94:
	.loc 1 494 1
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
.LFE17:
	.size	hal_hbnram_copy_from_stream, .-hal_hbnram_copy_from_stream
	.section	.rodata
	.align	2
.LC22:
	.string	"invalid  pointer. \r\n"
	.align	2
.LC23:
	.string	"len <= 0 , return \r\n"
	.section	.text.hal_hbnram_copy_to_stream,"ax",@progbits
	.align	1
	.globl	hal_hbnram_copy_to_stream
	.type	hal_hbnram_copy_to_stream, @function
hal_hbnram_copy_to_stream:
.LFB18:
	.loc 1 497 1
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
	.loc 1 502 13
	sw	zero,-36(s0)
	.loc 1 503 13
	sw	zero,-40(s0)
	.loc 1 506 8
	lw	a5,-88(s0)
	beq	a5,zero,.L96
	.loc 1 506 20 discriminator 1
	lw	a5,-84(s0)
	bne	a5,zero,.L97
.L96:
	.loc 1 507 9
	lui	a5,%hi(.LC22)
	addi	a0,a5,%lo(.LC22)
	call	printf
.L97:
	.loc 1 510 21
	lw	a5,-84(s0)
	lw	a4,8(a5)
	.loc 1 510 13
	lw	a5,-92(s0)
	add	a4,a4,a5
	.loc 1 510 42
	lw	a5,-84(s0)
	lw	a5,12(a5)
	.loc 1 510 8
	ble	a4,a5,.L98
	.loc 1 511 9
	lui	a5,%hi(.LC21)
	addi	a0,a5,%lo(.LC21)
	call	printf
.L98:
	.loc 1 514 8
	lw	a5,-92(s0)
	bgt	a5,zero,.L99
	.loc 1 515 9
	lui	a5,%hi(.LC23)
	addi	a0,a5,%lo(.LC23)
	call	printf
	.loc 1 516 16
	li	a5,-1
	j	.L109
.L99:
	.loc 1 520 15
	lw	a5,-84(s0)
	lw	a5,8(a5)
	.loc 1 520 32
	andi	a5,a5,3
	.loc 1 520 8
	beq	a5,zero,.L101
	.loc 1 521 28
	lw	a5,-84(s0)
	lw	a4,8(a5)
	.loc 1 521 20
	srai	a5,a4,31
	srli	a5,a5,30
	add	a4,a4,a5
	andi	a4,a4,3
	sub	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 522 43
	lw	a5,-84(s0)
	lw	a4,0(a5)
	.loc 1 522 78
	lw	a5,-84(s0)
	lw	a5,8(a5)
	mv	a3,a5
	.loc 1 522 91
	lw	a5,-32(s0)
	sub	a5,a3,a5
	addi	a5,a5,12
	add	a4,a4,a5
	.loc 1 522 9
	addi	a5,s0,-36
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	mem_fourbytes_copy
	.loc 1 523 22
	li	a4,4
	lw	a5,-32(s0)
	sub	a5,a4,a5
	.loc 1 523 12
	lw	a4,-92(s0)
	blt	a4,a5,.L102
	.loc 1 524 13
	lw	a5,-32(s0)
	addi	a4,s0,-36
	add	a3,a4,a5
	.loc 1 524 49
	li	a4,4
	lw	a5,-32(s0)
	sub	a5,a4,a5
	.loc 1 524 13
	mv	a2,a5
	lw	a1,-88(s0)
	mv	a0,a3
	call	memcpy
	j	.L103
.L102:
	.loc 1 526 13
	lw	a5,-32(s0)
	addi	a4,s0,-36
	add	a5,a4,a5
	lw	a4,-92(s0)
	mv	a2,a4
	lw	a1,-88(s0)
	mv	a0,a5
	call	memcpy
.L103:
	.loc 1 529 34
	lw	a5,-84(s0)
	lw	a4,0(a5)
	.loc 1 529 69
	lw	a5,-84(s0)
	lw	a5,8(a5)
	mv	a3,a5
	.loc 1 529 82
	lw	a5,-32(s0)
	sub	a5,a3,a5
	addi	a5,a5,12
	.loc 1 529 9
	add	a5,a4,a5
	addi	a4,s0,-36
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	mem_fourbytes_copy
	.loc 1 530 27
	li	a4,4
	lw	a5,-32(s0)
	sub	a5,a4,a5
	.loc 1 530 16
	lw	a4,-92(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 531 12
	lw	a5,-28(s0)
	blt	a5,zero,.L104
	.loc 1 532 29
	lw	a5,-28(s0)
	andi	a5,a5,3
	.loc 1 532 16
	bne	a5,zero,.L105
	.loc 1 533 42
	lw	a5,-84(s0)
	lw	a4,0(a5)
	.loc 1 533 77
	lw	a5,-84(s0)
	lw	a5,8(a5)
	mv	a3,a5
	.loc 1 533 90
	lw	a5,-32(s0)
	sub	a5,a3,a5
	.loc 1 533 103
	addi	a5,a5,16
	.loc 1 533 17
	add	a3,a4,a5
	.loc 1 533 116
	lw	a5,-32(s0)
	li	a4,4
	sub	a5,a4,a5
	lw	a4,-88(s0)
	add	a5,a4,a5
	.loc 1 533 17
	lw	a2,-28(s0)
	mv	a1,a5
	mv	a0,a3
	call	mem_fourbytes_copy
	j	.L104
.L105:
	.loc 1 535 23
	lw	a5,-28(s0)
	srai	a4,a5,31
	andi	a4,a4,3
	add	a5,a4,a5
	srai	a5,a5,2
	sw	a5,-20(s0)
	.loc 1 536 28
	lw	a4,-28(s0)
	srai	a5,a4,31
	srli	a5,a5,30
	add	a4,a4,a5
	andi	a4,a4,3
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 537 20
	lw	a5,-20(s0)
	bne	a5,zero,.L106
	.loc 1 538 45
	lw	a5,-32(s0)
	li	a4,4
	sub	a5,a4,a5
	lw	a4,-88(s0)
	add	a4,a4,a5
	.loc 1 538 21
	lw	a3,-28(s0)
	addi	a5,s0,-40
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 1 539 46
	lw	a5,-84(s0)
	lw	a4,0(a5)
	.loc 1 539 81
	lw	a5,-84(s0)
	lw	a5,8(a5)
	mv	a3,a5
	.loc 1 539 98
	lw	a5,-32(s0)
	sub	a5,a3,a5
	addi	a5,a5,16
	.loc 1 539 21
	add	a5,a4,a5
	addi	a4,s0,-40
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	mem_fourbytes_copy
	j	.L104
.L106:
	.loc 1 541 46
	lw	a5,-84(s0)
	lw	a4,0(a5)
	.loc 1 541 81
	lw	a5,-84(s0)
	lw	a5,8(a5)
	mv	a3,a5
	.loc 1 541 94
	lw	a5,-32(s0)
	sub	a5,a3,a5
	.loc 1 541 107
	addi	a5,a5,16
	.loc 1 541 21
	add	a3,a4,a5
	.loc 1 541 120
	lw	a5,-32(s0)
	li	a4,4
	sub	a5,a4,a5
	lw	a4,-88(s0)
	add	a1,a4,a5
	.loc 1 541 21
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	mv	a2,a5
	mv	a0,a3
	call	mem_fourbytes_copy
	.loc 1 542 58
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	sub	a4,a4,a5
	.loc 1 542 67
	lw	a5,-24(s0)
	sub	a5,a4,a5
	addi	a5,a5,4
	lw	a4,-88(s0)
	add	a4,a4,a5
	.loc 1 542 21
	lw	a3,-24(s0)
	addi	a5,s0,-40
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 1 543 46
	lw	a5,-84(s0)
	lw	a4,0(a5)
	.loc 1 543 81
	lw	a5,-84(s0)
	lw	a5,8(a5)
	mv	a3,a5
	.loc 1 543 94
	lw	a5,-32(s0)
	sub	a3,a3,a5
	.loc 1 543 111
	lw	a5,-28(s0)
	add	a3,a3,a5
	.loc 1 543 120
	lw	a5,-24(s0)
	sub	a5,a3,a5
	addi	a5,a5,16
	.loc 1 543 21
	add	a5,a4,a5
	addi	a4,s0,-40
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	mem_fourbytes_copy
	j	.L104
.L101:
	.loc 1 548 21
	lw	a5,-92(s0)
	andi	a5,a5,3
	.loc 1 548 12
	bne	a5,zero,.L107
	.loc 1 549 38
	lw	a5,-84(s0)
	lw	a4,0(a5)
	.loc 1 549 73
	lw	a5,-84(s0)
	lw	a5,8(a5)
	.loc 1 549 65
	addi	a5,a5,12
	.loc 1 549 13
	add	a5,a4,a5
	lw	a2,-92(s0)
	lw	a1,-88(s0)
	mv	a0,a5
	call	mem_fourbytes_copy
	j	.L104
.L107:
	.loc 1 551 19
	lw	a5,-92(s0)
	srai	a4,a5,31
	andi	a4,a4,3
	add	a5,a4,a5
	srai	a5,a5,2
	sw	a5,-20(s0)
	.loc 1 552 24
	lw	a4,-92(s0)
	srai	a5,a4,31
	srli	a5,a5,30
	add	a4,a4,a5
	andi	a4,a4,3
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 553 20
	lw	a4,-92(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 554 16
	lw	a5,-20(s0)
	bne	a5,zero,.L108
	.loc 1 555 17
	lw	a4,-24(s0)
	addi	a5,s0,-40
	mv	a2,a4
	lw	a1,-88(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 556 42
	lw	a5,-84(s0)
	lw	a4,0(a5)
	.loc 1 556 77
	lw	a5,-84(s0)
	lw	a5,8(a5)
	.loc 1 556 69
	addi	a5,a5,12
	.loc 1 556 17
	add	a5,a4,a5
	addi	a4,s0,-40
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	mem_fourbytes_copy
	j	.L104
.L108:
	.loc 1 558 42
	lw	a5,-84(s0)
	lw	a4,0(a5)
	.loc 1 558 77
	lw	a5,-84(s0)
	lw	a5,8(a5)
	.loc 1 558 69
	addi	a5,a5,12
	.loc 1 558 17
	add	a5,a4,a5
	lw	a2,-28(s0)
	lw	a1,-88(s0)
	mv	a0,a5
	call	mem_fourbytes_copy
	.loc 1 559 17
	lw	a5,-28(s0)
	.loc 1 559 37
	lw	a4,-88(s0)
	add	a4,a4,a5
	.loc 1 559 17
	lw	a3,-24(s0)
	addi	a5,s0,-40
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 1 560 42
	lw	a5,-84(s0)
	lw	a4,0(a5)
	.loc 1 560 77
	lw	a5,-84(s0)
	lw	a5,8(a5)
	mv	a3,a5
	.loc 1 560 90
	lw	a5,-28(s0)
	add	a5,a3,a5
	addi	a5,a5,12
	.loc 1 560 17
	add	a5,a4,a5
	addi	a4,s0,-40
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	mem_fourbytes_copy
.L104:
	.loc 1 565 32
	lw	a5,-84(s0)
	lw	a4,8(a5)
	.loc 1 565 45
	lw	a5,-92(s0)
	add	a4,a4,a5
	.loc 1 565 24
	lw	a5,-84(s0)
	sw	a4,8(a5)
	.loc 1 566 5
	addi	a1,s0,-72
	li	a5,4096
	addi	a4,a5,-20
	li	a3,32
	li	a2,0
	li	a5,1073807360
	addi	a0,a5,20
	call	sha_check_withctx
	.loc 1 567 5
	addi	a5,s0,-72
	li	a2,16
	mv	a1,a5
	li	a5,1073807360
	addi	a0,a5,4
	call	mem_fourbytes_copy
	.loc 1 569 12
	li	a5,0
.L109:
	.loc 1 570 1
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
.LFE18:
	.size	hal_hbnram_copy_to_stream, .-hal_hbnram_copy_to_stream
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_sec.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_hbnram.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x98c
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1a
	.4byte	.LASF90
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x9
	.4byte	.LASF8
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x58
	.uleb128 0x11
	.4byte	0x47
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x9
	.4byte	.LASF9
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x72
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x87
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x1c
	.byte	0x4
	.uleb128 0x12
	.4byte	0xa1
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x11
	.4byte	0xa8
	.uleb128 0xa
	.4byte	0xaf
	.uleb128 0x12
	.4byte	0xb4
	.uleb128 0xa
	.4byte	0xc8
	.uleb128 0x12
	.4byte	0xbe
	.uleb128 0x1d
	.uleb128 0xa
	.4byte	0x47
	.uleb128 0xb
	.4byte	0x47
	.4byte	0xde
	.uleb128 0xc
	.4byte	0x87
	.byte	0xf
	.byte	0
	.uleb128 0x1e
	.byte	0x14
	.byte	0x4
	.byte	0x27
	.byte	0x9
	.4byte	0x11c
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x4
	.byte	0x28
	.byte	0xe
	.4byte	0x11c
	.byte	0
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x4
	.byte	0x29
	.byte	0xf
	.4byte	0x12c
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2a
	.byte	0xf
	.4byte	0x12c
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2b
	.byte	0xd
	.4byte	0x47
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	0x66
	.4byte	0x12c
	.uleb128 0xc
	.4byte	0x87
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x66
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2c
	.byte	0x3
	.4byte	0xde
	.uleb128 0x1f
	.byte	0x7
	.byte	0x1
	.4byte	0x58
	.byte	0x4
	.byte	0x2f
	.byte	0xe
	.4byte	0x15e
	.uleb128 0x13
	.4byte	.LASF21
	.byte	0
	.uleb128 0x13
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF23
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x4
	.byte	0x33
	.byte	0x3
	.4byte	0x13d
	.uleb128 0x11
	.4byte	0x15e
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x94
	.byte	0x4
	.byte	0x35
	.4byte	0x19f
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x4
	.byte	0x36
	.byte	0x22
	.4byte	0x131
	.byte	0
	.uleb128 0x16
	.string	"tmp"
	.byte	0x37
	.4byte	0x19f
	.byte	0x14
	.uleb128 0x16
	.string	"pad"
	.byte	0x38
	.4byte	0x19f
	.byte	0x54
	.byte	0
	.uleb128 0xb
	.4byte	0x66
	.4byte	0x1af
	.uleb128 0xc
	.4byte	0x87
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x4
	.byte	0x39
	.byte	0x3
	.4byte	0x16f
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x10
	.byte	0x5
	.byte	0x21
	.4byte	0x1fc
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x5
	.byte	0x22
	.byte	0xe
	.4byte	0xc9
	.byte	0
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0x5
	.byte	0x23
	.byte	0x9
	.4byte	0x80
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF31
	.byte	0x5
	.byte	0x24
	.byte	0x9
	.4byte	0x80
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF32
	.byte	0x5
	.byte	0x25
	.byte	0x9
	.4byte	0x80
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x5
	.byte	0x26
	.byte	0x3
	.4byte	0x1bb
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x6
	.byte	0x1f
	.byte	0x8
	.4byte	0xa1
	.4byte	0x228
	.uleb128 0x3
	.4byte	0xa3
	.uleb128 0x3
	.4byte	0xc3
	.uleb128 0x3
	.4byte	0x8e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x6
	.byte	0x29
	.byte	0x8
	.4byte	0x8e
	.4byte	0x23e
	.uleb128 0x3
	.4byte	0xb4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x6
	.byte	0x1e
	.byte	0x5
	.4byte	0x80
	.4byte	0x25e
	.uleb128 0x3
	.4byte	0xbe
	.uleb128 0x3
	.4byte	0xbe
	.uleb128 0x3
	.4byte	0x8e
	.byte	0
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x8
	.byte	0xa4
	.4byte	0x26f
	.uleb128 0x3
	.4byte	0xa1
	.byte	0
	.uleb128 0x18
	.4byte	.LASF44
	.byte	0x4a
	.4byte	0x80
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x7
	.byte	0xce
	.byte	0x5
	.4byte	0x80
	.4byte	0x290
	.uleb128 0x3
	.4byte	0xb9
	.uleb128 0x20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x4
	.byte	0x4d
	.byte	0x5
	.4byte	0x80
	.4byte	0x2ab
	.uleb128 0x3
	.4byte	0x2ab
	.uleb128 0x3
	.4byte	0xc9
	.byte	0
	.uleb128 0xa
	.4byte	0x1af
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x6
	.byte	0x21
	.byte	0x8
	.4byte	0xa1
	.4byte	0x2d0
	.uleb128 0x3
	.4byte	0xa1
	.uleb128 0x3
	.4byte	0x80
	.uleb128 0x3
	.4byte	0x8e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x4
	.byte	0x4c
	.byte	0x5
	.4byte	0x80
	.4byte	0x2f0
	.uleb128 0x3
	.4byte	0x2ab
	.uleb128 0x3
	.4byte	0x2f0
	.uleb128 0x3
	.4byte	0x66
	.byte	0
	.uleb128 0xa
	.4byte	0x53
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x8
	.byte	0xa3
	.byte	0x7
	.4byte	0xa1
	.4byte	0x30b
	.uleb128 0x3
	.4byte	0x8e
	.byte	0
	.uleb128 0x17
	.4byte	.LASF43
	.byte	0x4
	.byte	0x4b
	.4byte	0x321
	.uleb128 0x3
	.4byte	0x2ab
	.uleb128 0x3
	.4byte	0x16a
	.byte	0
	.uleb128 0x18
	.4byte	.LASF45
	.byte	0x49
	.4byte	0x80
	.uleb128 0xe
	.4byte	.LASF54
	.2byte	0x1f0
	.4byte	0x80
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3df
	.uleb128 0xf
	.4byte	.LASF46
	.2byte	0x1f0
	.byte	0x30
	.4byte	0x3df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x6
	.string	"buf"
	.2byte	0x1f0
	.byte	0x41
	.4byte	0xc9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x6
	.string	"len"
	.2byte	0x1f0
	.byte	0x4a
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x1f2
	.byte	0x9
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF48
	.2byte	0x1f3
	.byte	0x9
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF49
	.2byte	0x1f4
	.byte	0x9
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF50
	.2byte	0x1f5
	.byte	0x9
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF51
	.2byte	0x1f6
	.byte	0xd
	.4byte	0x3e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF52
	.2byte	0x1f7
	.byte	0xd
	.4byte	0x3e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF53
	.2byte	0x1f8
	.byte	0xd
	.4byte	0x3f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0xa
	.4byte	0x1fc
	.uleb128 0xb
	.4byte	0x47
	.4byte	0x3f4
	.uleb128 0xc
	.4byte	0x87
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x47
	.4byte	0x404
	.uleb128 0xc
	.4byte	0x87
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF55
	.2byte	0x1ac
	.4byte	0x80
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a5
	.uleb128 0xf
	.4byte	.LASF46
	.2byte	0x1ac
	.byte	0x32
	.4byte	0x3df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"buf"
	.2byte	0x1ac
	.byte	0x43
	.4byte	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"len"
	.2byte	0x1ac
	.byte	0x4c
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF51
	.2byte	0x1ae
	.byte	0xd
	.4byte	0x3e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF52
	.2byte	0x1af
	.byte	0xd
	.4byte	0x3e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x1b0
	.byte	0x9
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF48
	.2byte	0x1b1
	.byte	0x9
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF49
	.2byte	0x1b2
	.byte	0x9
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF50
	.2byte	0x1b3
	.byte	0x9
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF56
	.2byte	0x18e
	.4byte	0x80
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4fb
	.uleb128 0x6
	.string	"key"
	.2byte	0x18e
	.byte	0x2f
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.4byte	.LASF46
	.2byte	0x18e
	.byte	0x45
	.4byte	0x3df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF57
	.2byte	0x190
	.byte	0xe
	.4byte	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF58
	.2byte	0x191
	.byte	0xd
	.4byte	0x3e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF59
	.2byte	0x15e
	.4byte	0x80
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58d
	.uleb128 0x6
	.string	"key"
	.2byte	0x15e
	.byte	0x27
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"buf"
	.2byte	0x15e
	.byte	0x35
	.4byte	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.4byte	.LASF60
	.2byte	0x15e
	.byte	0x3e
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF57
	.2byte	0x160
	.byte	0xe
	.4byte	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF61
	.2byte	0x161
	.byte	0xe
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF49
	.2byte	0x162
	.byte	0xe
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF62
	.2byte	0x163
	.byte	0xd
	.4byte	0x3e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF58
	.2byte	0x164
	.byte	0xd
	.4byte	0x3e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xe
	.4byte	.LASF63
	.2byte	0x126
	.4byte	0x80
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x632
	.uleb128 0x6
	.string	"key"
	.2byte	0x126
	.byte	0x27
	.4byte	0xb4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x6
	.string	"buf"
	.2byte	0x126
	.byte	0x35
	.4byte	0xc9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xf
	.4byte	.LASF60
	.2byte	0x126
	.byte	0x3e
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1
	.4byte	.LASF57
	.2byte	0x128
	.byte	0xe
	.4byte	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF61
	.2byte	0x129
	.byte	0xe
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF53
	.2byte	0x12a
	.byte	0xd
	.4byte	0x3f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF62
	.2byte	0x12b
	.byte	0xd
	.4byte	0x3e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF49
	.2byte	0x12c
	.byte	0xe
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF58
	.2byte	0x12d
	.byte	0xd
	.4byte	0x3e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x19
	.4byte	.LASF64
	.byte	0xf8
	.4byte	0x80
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6af
	.uleb128 0x7
	.string	"key"
	.byte	0xf8
	.byte	0x22
	.4byte	0xb4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x7
	.string	"len"
	.byte	0xf8
	.byte	0x2b
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0xfa
	.byte	0xe
	.4byte	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0xfb
	.byte	0xd
	.4byte	0x3f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0xfc
	.byte	0x9
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0xfd
	.byte	0xe
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0xfe
	.byte	0xd
	.4byte	0x3e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x21
	.4byte	.LASF91
	.byte	0x1
	.byte	0xf1
	.byte	0x5
	.4byte	0x80
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.4byte	.LASF68
	.byte	0xce
	.4byte	0x80
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x726
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0xd0
	.byte	0xd
	.4byte	0x3f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0xd1
	.byte	0xd
	.4byte	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0xd2
	.byte	0xd
	.4byte	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0xd3
	.byte	0xe
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0xd4
	.byte	0x9
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.4byte	.LASF92
	.byte	0x1
	.byte	0xb3
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x773
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0xb5
	.byte	0xe
	.4byte	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"val"
	.byte	0xb6
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.string	"len"
	.byte	0xb7
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0xb8
	.byte	0xa
	.4byte	0x773
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xb
	.4byte	0xa8
	.4byte	0x783
	.uleb128 0xc
	.4byte	0x87
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x9f
	.4byte	0xc9
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d2
	.uleb128 0x7
	.string	"key"
	.byte	0x9f
	.byte	0x2b
	.4byte	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0xa1
	.byte	0xe
	.4byte	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"val"
	.byte	0xa2
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.string	"len"
	.byte	0xa3
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x8c
	.4byte	0xc9
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x807
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0x8e
	.byte	0xe
	.4byte	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0x8f
	.byte	0xe
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.4byte	.LASF77
	.byte	0x1
	.byte	0x69
	.byte	0xc
	.4byte	0x80
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ac
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x27
	.4byte	0xc9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0x37
	.4byte	0xc9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x4d
	.4byte	0x15e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -201
	.uleb128 0x10
	.4byte	.LASF80
	.byte	0x5f
	.4byte	0x66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x73
	.4byte	0x66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0xd
	.string	"i"
	.byte	0x6b
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0x6c
	.byte	0xe
	.4byte	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x6d
	.byte	0xe
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0x6e
	.byte	0xe
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0x72
	.byte	0x12
	.4byte	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.byte	0
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0x55
	.4byte	0xc9
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x924
	.uleb128 0x7
	.string	"src"
	.byte	0x55
	.byte	0x2b
	.4byte	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"n"
	.byte	0x55
	.byte	0x34
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"len"
	.byte	0x55
	.byte	0x3b
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0x57
	.byte	0xf
	.4byte	0x12c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0x58
	.byte	0x9
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0x59
	.byte	0xe
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.string	"num"
	.byte	0x5a
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x24
	.4byte	.LASF93
	.byte	0x1
	.byte	0x43
	.byte	0x11
	.4byte	0xc9
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.string	"dst"
	.byte	0x43
	.byte	0x2d
	.4byte	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"src"
	.byte	0x43
	.byte	0x41
	.4byte	0x2f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"len"
	.byte	0x43
	.byte	0x4a
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0x45
	.byte	0xf
	.4byte	0x12c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0x45
	.byte	0x17
	.4byte	0x12c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0x45
	.byte	0x1e
	.4byte	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.sleb128 14
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 105
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.sleb128 17
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
	.uleb128 0x15
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
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
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
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF86:
	.string	"flen"
.LASF21:
	.string	"BL_SHA256"
.LASF73:
	.string	"find_addr_by_key"
.LASF65:
	.string	"paddr"
.LASF16:
	.string	"total"
.LASF19:
	.string	"shaFeed"
.LASF3:
	.string	"short int"
.LASF13:
	.string	"size_t"
.LASF78:
	.string	"input"
.LASF84:
	.string	"memset_fourbytes"
.LASF44:
	.string	"bl_sha_mutex_give"
.LASF17:
	.string	"shaBuf"
.LASF93:
	.string	"mem_fourbytes_copy"
.LASF77:
	.string	"sha_check_withctx"
.LASF87:
	.string	"data"
.LASF50:
	.string	"tmplen"
.LASF81:
	.string	"pallc"
.LASF92:
	.string	"print_mem_map"
.LASF54:
	.string	"hal_hbnram_copy_to_stream"
.LASF47:
	.string	"head_count"
.LASF59:
	.string	"hal_hbnram_buffer_get"
.LASF34:
	.string	"memcpy"
.LASF8:
	.string	"uint8_t"
.LASF88:
	.string	"pfdst"
.LASF30:
	.string	"read_idex"
.LASF89:
	.string	"pfsrc"
.LASF9:
	.string	"uint32_t"
.LASF60:
	.string	"length"
.LASF25:
	.string	"sha_ctx"
.LASF36:
	.string	"memcmp"
.LASF5:
	.string	"long long int"
.LASF31:
	.string	"write_idex"
.LASF23:
	.string	"BL_SHA1"
.LASF85:
	.string	"fpsrc"
.LASF4:
	.string	"long int"
.LASF37:
	.string	"printf"
.LASF27:
	.string	"bl_sha_ctx"
.LASF22:
	.string	"BL_SHA224"
.LASF14:
	.string	"long double"
.LASF51:
	.string	"headbuf"
.LASF66:
	.string	"left_size"
.LASF6:
	.string	"unsigned char"
.LASF2:
	.string	"signed char"
.LASF11:
	.string	"long long unsigned int"
.LASF91:
	.string	"hal_hbnram_deinit"
.LASF43:
	.string	"bl_sha_init"
.LASF12:
	.string	"unsigned int"
.LASF62:
	.string	"tmpbuf"
.LASF10:
	.string	"long unsigned int"
.LASF75:
	.string	"phbn_addr"
.LASF70:
	.string	"calc_hash"
.LASF76:
	.string	"key_val"
.LASF48:
	.string	"tail_count"
.LASF7:
	.string	"short unsigned int"
.LASF15:
	.string	"char"
.LASF40:
	.string	"bl_sha_update"
.LASF35:
	.string	"strlen"
.LASF58:
	.string	"keybuf"
.LASF57:
	.string	"phead"
.LASF90:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF56:
	.string	"hal_hbnram_handle_get_fromkey"
.LASF38:
	.string	"bl_sha_finish"
.LASF67:
	.string	"alen"
.LASF29:
	.string	"block_addr"
.LASF80:
	.string	"data_size"
.LASF61:
	.string	"area_size"
.LASF79:
	.string	"shaType"
.LASF42:
	.string	"vPortFree"
.LASF46:
	.string	"handle"
.LASF32:
	.string	"size"
.LASF55:
	.string	"hal_hbnram_copy_from_stream"
.LASF49:
	.string	"count"
.LASF83:
	.string	"shaCtx"
.LASF20:
	.string	"_bl_sha_SEC_Eng_SHA256_Ctx_t"
.LASF63:
	.string	"hal_hbnram_buffer_set"
.LASF39:
	.string	"memset"
.LASF68:
	.string	"hal_hbnram_init"
.LASF45:
	.string	"bl_sha_mutex_take"
.LASF71:
	.string	"magic_val"
.LASF53:
	.string	"output"
.LASF52:
	.string	"tailbuf"
.LASF33:
	.string	"hbnram_handle_t"
.LASF72:
	.string	"flag"
.LASF24:
	.string	"bl_sha_type_t"
.LASF18:
	.string	"shaPadding"
.LASF26:
	.string	"bl_sha_ctx_t"
.LASF74:
	.string	"get_avaible_area"
.LASF69:
	.string	"hash128"
.LASF82:
	.string	"remain"
.LASF41:
	.string	"pvPortMalloc"
.LASF64:
	.string	"hal_hbnram_alloc"
.LASF28:
	.string	"_hbnram_handle"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_hbnram.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
