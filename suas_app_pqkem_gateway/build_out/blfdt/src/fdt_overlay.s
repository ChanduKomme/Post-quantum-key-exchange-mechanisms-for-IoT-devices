	.file	"fdt_overlay.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blfdt" "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_overlay.c"
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
	.section	.text.cpu_to_fdt32,"ax",@progbits
	.align	1
	.type	cpu_to_fdt32, @function
cpu_to_fdt32:
.LFB4:
	.loc 1 125 1
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
	.loc 1 126 57
	addi	a5,s0,-20
	.loc 1 126 60
	lbu	a5,0(a5)
	.loc 1 126 65
	slli	a4,a5,24
	.loc 1 126 111
	addi	a5,s0,-20
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 126 116
	slli	a5,a5,16
	.loc 1 126 72
	or	a4,a4,a5
	.loc 1 126 162
	addi	a5,s0,-20
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 1 126 167
	slli	a5,a5,8
	.loc 1 126 123
	or	a4,a4,a5
	.loc 1 126 211
	addi	a5,s0,-20
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 126 12
	or	a5,a4,a5
	.loc 1 127 1
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
.LFE4:
	.size	cpu_to_fdt32, .-cpu_to_fdt32
	.section	.text.fdt_set_magic,"ax",@progbits
	.align	1
	.type	fdt_set_magic, @function
fdt_set_magic:
.LFB10:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/libfdt.h"
	.loc 2 295 59
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
	.loc 2 295 80
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 2 295 127
	lw	a0,-40(s0)
	call	cpu_to_fdt32
	mv	a4,a0
	.loc 2 295 125 discriminator 1
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 2 295 146
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
	.size	fdt_set_magic, .-fdt_set_magic
	.section	.text.fdt_setprop_inplace_u32,"ax",@progbits
	.align	1
	.type	fdt_setprop_inplace_u32, @function
fdt_setprop_inplace_u32:
.LFB24:
	.loc 2 1287 1
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
	.loc 2 1288 19
	lw	a0,-48(s0)
	call	cpu_to_fdt32
	mv	a5,a0
	.loc 2 1288 13 discriminator 1
	sw	a5,-20(s0)
	.loc 2 1289 12
	addi	a5,s0,-20
	li	a4,4
	mv	a3,a5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_setprop_inplace
	mv	a5,a0
	.loc 2 1290 1
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
	.size	fdt_setprop_inplace_u32, .-fdt_setprop_inplace_u32
	.section	.rodata
	.align	2
.LC0:
	.string	"target"
	.section	.text.overlay_get_target_phandle,"ax",@progbits
	.align	1
	.type	overlay_get_target_phandle, @function
overlay_get_target_phandle:
.LFB40:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_overlay.c"
	.loc 3 52 1
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
	.loc 3 56 11
	addi	a5,s0,-24
	mv	a3,a5
	lui	a5,%hi(.LC0)
	addi	a2,a5,%lo(.LC0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_getprop
	sw	a0,-20(s0)
	.loc 3 57 8
	lw	a5,-20(s0)
	bne	a5,zero,.L9
	.loc 3 58 16
	li	a5,0
	j	.L13
.L9:
	.loc 3 60 14
	lw	a4,-24(s0)
	.loc 3 60 8
	li	a5,4
	bne	a4,a5,.L11
	.loc 3 60 35 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a4,a0
	.loc 3 60 31 discriminator 2
	li	a5,-1
	bne	a4,a5,.L12
.L11:
	.loc 3 61 16
	li	a5,-1
	j	.L13
.L12:
	.loc 3 63 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a5,a0
.L13:
	.loc 3 64 1
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
	.size	overlay_get_target_phandle, .-overlay_get_target_phandle
	.section	.rodata
	.align	2
.LC1:
	.string	"target-path"
	.section	.text.overlay_get_target,"ax",@progbits
	.align	1
	.type	overlay_get_target, @function
overlay_get_target:
.LFB41:
	.loc 3 83 1
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
	.loc 3 85 17
	sw	zero,-20(s0)
	.loc 3 86 9
	sw	zero,-32(s0)
	.loc 3 89 15
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	overlay_get_target_phandle
	sw	a0,-28(s0)
	.loc 3 90 8
	lw	a4,-28(s0)
	li	a5,-1
	bne	a4,a5,.L15
	.loc 3 91 16
	li	a5,-6
	j	.L23
.L15:
	.loc 3 94 8
	lw	a5,-28(s0)
	bne	a5,zero,.L17
	.loc 3 96 16
	addi	a5,s0,-32
	mv	a3,a5
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	fdt_getprop
	sw	a0,-20(s0)
	.loc 3 97 12
	lw	a5,-20(s0)
	beq	a5,zero,.L18
	.loc 3 98 19
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	fdt_path_offset
	sw	a0,-24(s0)
	j	.L19
.L18:
	.loc 3 100 17
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	j	.L19
.L17:
	.loc 3 102 15
	lw	a1,-28(s0)
	lw	a0,-36(s0)
	call	fdt_node_offset_by_phandle
	sw	a0,-24(s0)
.L19:
	.loc 3 111 8
	lw	a5,-24(s0)
	bge	a5,zero,.L20
	.loc 3 111 29 discriminator 1
	lw	a4,-32(s0)
	.loc 3 111 17 discriminator 1
	li	a5,-1
	bne	a4,a5,.L20
	.loc 3 112 13
	li	a5,-16
	sw	a5,-24(s0)
.L20:
	.loc 3 115 8
	lw	a5,-24(s0)
	bge	a5,zero,.L21
	.loc 3 116 16
	lw	a5,-24(s0)
	j	.L23
.L21:
	.loc 3 119 8
	lw	a5,-48(s0)
	beq	a5,zero,.L22
	.loc 3 120 16
	lw	a5,-48(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L22:
	.loc 3 122 12
	lw	a5,-24(s0)
.L23:
	.loc 3 123 1
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
	.size	overlay_get_target, .-overlay_get_target
	.section	.text.overlay_phandle_add_offset,"ax",@progbits
	.align	1
	.type	overlay_phandle_add_offset, @function
overlay_phandle_add_offset:
.LFB42:
	.loc 3 141 1
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
	.loc 3 146 11
	addi	a5,s0,-28
	mv	a3,a5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_getprop
	sw	a0,-20(s0)
	.loc 3 147 8
	lw	a5,-20(s0)
	bne	a5,zero,.L25
	.loc 3 148 16
	lw	a5,-28(s0)
	j	.L30
.L25:
	.loc 3 150 13
	lw	a4,-28(s0)
	.loc 3 150 8
	li	a5,4
	beq	a4,a5,.L27
	.loc 3 151 16
	li	a5,-6
	j	.L30
.L27:
	.loc 3 153 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	sw	a0,-24(s0)
	.loc 3 154 18
	lw	a4,-24(s0)
	lw	a5,-48(s0)
	add	a5,a4,a5
	.loc 3 154 8
	lw	a4,-24(s0)
	bleu	a4,a5,.L28
	.loc 3 155 16
	li	a5,-17
	j	.L30
.L28:
	.loc 3 157 13
	lw	a4,-24(s0)
	lw	a5,-48(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 3 158 8
	lw	a4,-24(s0)
	li	a5,-1
	bne	a4,a5,.L29
	.loc 3 159 16
	li	a5,-17
	j	.L30
.L29:
	.loc 3 161 12
	lw	a3,-24(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_setprop_inplace_u32
	mv	a5,a0
.L30:
	.loc 3 162 1
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
.LFE42:
	.size	overlay_phandle_add_offset, .-overlay_phandle_add_offset
	.section	.rodata
	.align	2
.LC2:
	.string	"phandle"
	.align	2
.LC3:
	.string	"linux,phandle"
	.section	.text.overlay_adjust_node_phandles,"ax",@progbits
	.align	1
	.type	overlay_adjust_node_phandles, @function
overlay_adjust_node_phandles:
.LFB43:
	.loc 3 181 1
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
	.loc 3 185 11
	lw	a3,-44(s0)
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	overlay_phandle_add_offset
	sw	a0,-24(s0)
	.loc 3 186 8
	lw	a5,-24(s0)
	beq	a5,zero,.L32
	.loc 3 186 13 discriminator 1
	lw	a4,-24(s0)
	li	a5,-1
	beq	a4,a5,.L32
	.loc 3 187 16
	lw	a5,-24(s0)
	j	.L33
.L32:
	.loc 3 189 11
	lw	a3,-44(s0)
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	overlay_phandle_add_offset
	sw	a0,-24(s0)
	.loc 3 190 8
	lw	a5,-24(s0)
	beq	a5,zero,.L34
	.loc 3 190 13 discriminator 1
	lw	a4,-24(s0)
	li	a5,-1
	beq	a4,a5,.L34
	.loc 3 191 16
	lw	a5,-24(s0)
	j	.L33
.L34:
	.loc 3 193 18
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_first_subnode
	sw	a0,-20(s0)
	.loc 3 193 5
	j	.L35
.L37:
	.loc 3 194 15
	lw	a2,-44(s0)
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	overlay_adjust_node_phandles
	sw	a0,-24(s0)
	.loc 3 195 12
	lw	a5,-24(s0)
	beq	a5,zero,.L36
	.loc 3 196 20
	lw	a5,-24(s0)
	j	.L33
.L36:
	.loc 3 193 69 discriminator 4
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	fdt_next_subnode
	sw	a0,-20(s0)
.L35:
	.loc 3 193 55 discriminator 2
	lw	a5,-20(s0)
	bge	a5,zero,.L37
	.loc 3 199 12
	li	a5,0
.L33:
	.loc 3 200 1
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
.LFE43:
	.size	overlay_adjust_node_phandles, .-overlay_adjust_node_phandles
	.section	.text.overlay_adjust_local_phandles,"ax",@progbits
	.align	1
	.type	overlay_adjust_local_phandles, @function
overlay_adjust_local_phandles:
.LFB44:
	.loc 3 217 1
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
	.loc 3 221 12
	lw	a2,-24(s0)
	li	a1,0
	lw	a0,-20(s0)
	call	overlay_adjust_node_phandles
	mv	a5,a0
	.loc 3 222 1
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
.LFE44:
	.size	overlay_adjust_local_phandles, .-overlay_adjust_local_phandles
	.section	.text.overlay_update_local_node_references,"ax",@progbits
	.align	1
	.type	overlay_update_local_node_references, @function
overlay_update_local_node_references:
.LFB45:
	.loc 3 247 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	sw	a2,-92(s0)
	sw	a3,-96(s0)
	.loc 3 252 23
	lw	a1,-92(s0)
	lw	a0,-84(s0)
	call	fdt_first_property_offset
	sw	a0,-20(s0)
	.loc 3 252 5
	j	.L41
.L53:
.LBB2:
	.loc 3 260 21
	addi	a4,s0,-60
	addi	a5,s0,-56
	mv	a3,a4
	mv	a2,a5
	lw	a1,-20(s0)
	lw	a0,-84(s0)
	call	fdt_getprop_by_offset
	sw	a0,-44(s0)
	.loc 3 262 12
	lw	a5,-44(s0)
	bne	a5,zero,.L42
	.loc 3 263 20
	lw	a5,-60(s0)
	j	.L52
.L42:
	.loc 3 265 23
	lw	a5,-60(s0)
	andi	a5,a5,3
	.loc 3 265 12
	beq	a5,zero,.L44
	.loc 3 266 20
	li	a5,-16
	j	.L52
.L44:
	.loc 3 268 20
	lw	a5,-56(s0)
	addi	a4,s0,-64
	mv	a3,a4
	mv	a2,a5
	lw	a1,-88(s0)
	lw	a0,-84(s0)
	call	fdt_getprop
	sw	a0,-48(s0)
	.loc 3 269 12
	lw	a5,-48(s0)
	bne	a5,zero,.L45
	.loc 3 270 26
	lw	a4,-64(s0)
	.loc 3 270 16
	li	a5,-1
	bne	a4,a5,.L46
	.loc 3 271 24
	li	a5,-16
	j	.L52
.L46:
	.loc 3 273 20
	lw	a5,-64(s0)
	j	.L52
.L45:
	.loc 3 276 16
	sw	zero,-28(s0)
	.loc 3 276 9
	j	.L47
.L51:
.LBB3:
	.loc 3 280 45
	lw	a5,-28(s0)
	slli	a5,a5,2
	lw	a4,-44(s0)
	add	a5,a4,a5
	.loc 3 280 23
	lw	a5,0(a5)
	mv	a0,a5
	call	fdt32_to_cpu
	sw	a0,-52(s0)
	.loc 3 288 39
	lw	a4,-48(s0)
	lw	a5,-52(s0)
	add	a4,a4,a5
	.loc 3 288 13
	addi	a5,s0,-68
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 3 290 36
	lw	a5,-68(s0)
	mv	a0,a5
	call	fdt32_to_cpu
	mv	a4,a0
	.loc 3 290 23 discriminator 1
	lw	a5,-96(s0)
	add	a5,a4,a5
	mv	a0,a5
	call	cpu_to_fdt32
	mv	a5,a0
	.loc 3 290 21 discriminator 2
	sw	a5,-68(s0)
	.loc 3 292 19
	lw	s1,-56(s0)
	.loc 3 295 35
	lw	a5,-56(s0)
	mv	a0,a5
	call	strlen
	mv	a5,a0
	.loc 3 292 19
	mv	a3,a5
	addi	a5,s0,-68
	li	a6,4
	lw	a4,-52(s0)
	mv	a2,s1
	lw	a1,-88(s0)
	lw	a0,-84(s0)
	call	fdt_setprop_inplace_namelen_partial
	sw	a0,-40(s0)
	.loc 3 299 16
	lw	a4,-40(s0)
	li	a5,-3
	bne	a4,a5,.L48
	.loc 3 300 24
	li	a5,-16
	j	.L49
.L48:
	.loc 3 302 16
	lw	a5,-40(s0)
	beq	a5,zero,.L50
	.loc 3 303 24
	lw	a5,-40(s0)
	j	.L49
.L50:
.LBE3:
	.loc 3 276 58 discriminator 2
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
	j	.L47
.L49:
	.loc 3 263 20 discriminator 1
	j	.L52
.L47:
	.loc 3 276 36 discriminator 1
	lw	a5,-60(s0)
	srli	a4,a5,2
	.loc 3 276 23 discriminator 1
	lw	a5,-28(s0)
	bgtu	a4,a5,.L51
.LBE2:
	.loc 3 252 98 discriminator 4
	lw	a1,-20(s0)
	lw	a0,-84(s0)
	call	fdt_next_property_offset
	sw	a0,-20(s0)
.L41:
	.loc 3 252 79 discriminator 2
	lw	a5,-20(s0)
	bge	a5,zero,.L53
	.loc 3 307 24
	lw	a1,-92(s0)
	lw	a0,-84(s0)
	call	fdt_first_subnode
	sw	a0,-24(s0)
	.loc 3 307 5
	j	.L54
.L58:
.LBB4:
	.loc 3 308 40
	li	a2,0
	lw	a1,-24(s0)
	lw	a0,-84(s0)
	call	fdt_get_name
	sw	a0,-32(s0)
	.loc 3 312 22
	lw	a2,-32(s0)
	lw	a1,-88(s0)
	lw	a0,-84(s0)
	call	fdt_subnode_offset
	sw	a0,-36(s0)
	.loc 3 314 12
	lw	a4,-36(s0)
	li	a5,-1
	bne	a4,a5,.L55
	.loc 3 315 20
	li	a5,-16
	j	.L52
.L55:
	.loc 3 316 12
	lw	a5,-36(s0)
	bge	a5,zero,.L56
	.loc 3 317 20
	lw	a5,-36(s0)
	j	.L52
.L56:
	.loc 3 319 15
	lw	a3,-96(s0)
	lw	a2,-24(s0)
	lw	a1,-36(s0)
	lw	a0,-84(s0)
	call	overlay_update_local_node_references
	sw	a0,-40(s0)
	.loc 3 323 12
	lw	a5,-40(s0)
	beq	a5,zero,.L57
	.loc 3 324 20
	lw	a5,-40(s0)
	j	.L52
.L57:
.LBE4:
	.loc 3 307 93 discriminator 4
	lw	a1,-24(s0)
	lw	a0,-84(s0)
	call	fdt_next_subnode
	sw	a0,-24(s0)
.L54:
	.loc 3 307 73 discriminator 2
	lw	a5,-24(s0)
	bge	a5,zero,.L58
	.loc 3 327 12
	li	a5,0
.L52:
	.loc 3 328 1
	mv	a0,a5
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	lw	s1,84(sp)
	.cfi_restore 9
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE45:
	.size	overlay_update_local_node_references, .-overlay_update_local_node_references
	.section	.rodata
	.align	2
.LC4:
	.string	"/__local_fixups__"
	.section	.text.overlay_update_local_references,"ax",@progbits
	.align	1
	.type	overlay_update_local_references, @function
overlay_update_local_references:
.LFB46:
	.loc 3 348 1
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
	.loc 3 351 14
	lui	a5,%hi(.LC4)
	addi	a1,a5,%lo(.LC4)
	lw	a0,-36(s0)
	call	fdt_path_offset
	sw	a0,-20(s0)
	.loc 3 352 8
	lw	a5,-20(s0)
	bge	a5,zero,.L60
	.loc 3 354 12
	lw	a4,-20(s0)
	li	a5,-1
	bne	a4,a5,.L61
	.loc 3 355 20
	li	a5,0
	j	.L62
.L61:
	.loc 3 357 16
	lw	a5,-20(s0)
	j	.L62
.L60:
	.loc 3 363 12
	lw	a3,-40(s0)
	lw	a2,-20(s0)
	li	a1,0
	lw	a0,-36(s0)
	call	overlay_update_local_node_references
	mv	a5,a0
.L62:
	.loc 3 365 1
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
	.size	overlay_update_local_references, .-overlay_update_local_references
	.section	.text.overlay_fixup_one_phandle,"ax",@progbits
	.align	1
	.type	overlay_fixup_one_phandle, @function
overlay_fixup_one_phandle:
.LFB47:
	.loc 3 395 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	sw	a5,-72(s0)
	sw	a6,-76(s0)
	sw	a7,-80(s0)
	.loc 3 402 8
	lw	a5,-60(s0)
	bge	a5,zero,.L64
	.loc 3 403 16
	lw	a5,-60(s0)
	j	.L71
.L64:
	.loc 3 405 19
	addi	a5,s0,-40
	mv	a3,a5
	lw	a2,0(s0)
	lw	a1,-60(s0)
	lw	a0,-52(s0)
	call	fdt_getprop
	sw	a0,-20(s0)
	.loc 3 407 8
	lw	a5,-20(s0)
	bne	a5,zero,.L66
	.loc 3 408 16
	lw	a5,-40(s0)
	j	.L71
.L66:
	.loc 3 410 18
	lw	a1,-20(s0)
	lw	a0,-52(s0)
	call	fdt_path_offset
	sw	a0,-24(s0)
	.loc 3 411 8
	lw	a5,-24(s0)
	bge	a5,zero,.L67
	.loc 3 412 16
	lw	a5,-24(s0)
	j	.L71
.L67:
	.loc 3 414 15
	lw	a1,-24(s0)
	lw	a0,-52(s0)
	call	fdt_get_phandle
	sw	a0,-28(s0)
	.loc 3 415 8
	lw	a5,-28(s0)
	bne	a5,zero,.L68
	.loc 3 416 16
	li	a5,-1
	j	.L71
.L68:
	.loc 3 418 17
	lw	a5,-68(s0)
	mv	a2,a5
	lw	a1,-64(s0)
	lw	a0,-56(s0)
	call	fdt_path_offset_namelen
	sw	a0,-32(s0)
	.loc 3 419 8
	lw	a4,-32(s0)
	li	a5,-1
	bne	a4,a5,.L69
	.loc 3 420 16
	li	a5,-16
	j	.L71
.L69:
	.loc 3 421 8
	lw	a5,-32(s0)
	bge	a5,zero,.L70
	.loc 3 422 16
	lw	a5,-32(s0)
	j	.L71
.L70:
	.loc 3 424 20
	lw	a0,-28(s0)
	call	cpu_to_fdt32
	mv	a5,a0
	.loc 3 424 18 discriminator 1
	sw	a5,-36(s0)
	.loc 3 425 12
	lw	a3,-76(s0)
	lw	a4,-80(s0)
	addi	a5,s0,-36
	li	a6,4
	lw	a2,-72(s0)
	lw	a1,-32(s0)
	lw	a0,-56(s0)
	call	fdt_setprop_inplace_namelen_partial
	mv	a5,a0
.L71:
	.loc 3 429 1
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
.LFE47:
	.size	overlay_fixup_one_phandle, .-overlay_fixup_one_phandle
	.section	.text.overlay_fixup_phandle,"ax",@progbits
	.align	1
	.type	overlay_fixup_phandle, @function
overlay_fixup_phandle:
.LFB48:
	.loc 3 452 1
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
	.loc 3 457 13
	addi	a4,s0,-68
	addi	a5,s0,-64
	mv	a3,a4
	mv	a2,a5
	lw	a1,-96(s0)
	lw	a0,-88(s0)
	call	fdt_getprop_by_offset
	sw	a0,-20(s0)
	.loc 3 459 8
	lw	a5,-20(s0)
	bne	a5,zero,.L73
	.loc 3 460 17
	lw	a4,-68(s0)
	.loc 3 460 12
	li	a5,-1
	bne	a4,a5,.L74
	.loc 3 461 20
	li	a5,-13
	j	.L88
.L74:
	.loc 3 463 16
	lw	a5,-68(s0)
	j	.L88
.L73:
.LBB5:
	.loc 3 468 21
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 3 474 21
	lw	a5,-68(s0)
	mv	a2,a5
	li	a1,0
	lw	a0,-20(s0)
	call	memchr
	sw	a0,-28(s0)
	.loc 3 475 12
	lw	a5,-28(s0)
	bne	a5,zero,.L76
	.loc 3 476 20
	li	a5,-16
	j	.L88
.L76:
	.loc 3 477 31
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 3 477 19
	sw	a5,-32(s0)
	.loc 3 479 13
	lw	a5,-68(s0)
	mv	a4,a5
	lw	a5,-32(s0)
	sub	a5,a4,a5
	addi	a5,a5,-1
	sw	a5,-68(s0)
	.loc 3 480 15
	lw	a5,-32(s0)
	addi	a5,a5,1
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 3 482 14
	lw	a5,-24(s0)
	sw	a5,-36(s0)
	.loc 3 483 15
	lw	a2,-32(s0)
	li	a1,58
	lw	a0,-24(s0)
	call	memchr
	sw	a0,-40(s0)
	.loc 3 484 12
	lw	a5,-40(s0)
	beq	a5,zero,.L78
	.loc 3 484 21 discriminator 1
	lw	a5,-40(s0)
	lbu	a4,0(a5)
	.loc 3 484 18 discriminator 1
	li	a5,58
	beq	a4,a5,.L79
.L78:
	.loc 3 485 20
	li	a5,-16
	j	.L88
.L79:
	.loc 3 487 24
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	.loc 3 487 18
	sw	a5,-44(s0)
	.loc 3 488 36
	lw	a5,-32(s0)
	addi	a5,a5,-1
	.loc 3 488 12
	lw	a4,-44(s0)
	bne	a4,a5,.L80
	.loc 3 489 20
	li	a5,-16
	j	.L88
.L80:
	.loc 3 491 19
	lw	a4,-32(s0)
	lw	a5,-44(s0)
	sub	a5,a4,a5
	addi	a5,a5,-1
	sw	a5,-32(s0)
	.loc 3 492 14
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-48(s0)
	.loc 3 493 15
	lw	a2,-32(s0)
	li	a1,58
	lw	a0,-48(s0)
	call	memchr
	sw	a0,-40(s0)
	.loc 3 494 12
	lw	a5,-40(s0)
	beq	a5,zero,.L81
	.loc 3 494 21 discriminator 1
	lw	a5,-40(s0)
	lbu	a4,0(a5)
	.loc 3 494 18 discriminator 1
	li	a5,58
	beq	a4,a5,.L82
.L81:
	.loc 3 495 20
	li	a5,-16
	j	.L88
.L82:
	.loc 3 497 24
	lw	a4,-40(s0)
	lw	a5,-48(s0)
	sub	a5,a4,a5
	.loc 3 497 18
	sw	a5,-52(s0)
	.loc 3 498 12
	lw	a5,-52(s0)
	bne	a5,zero,.L83
	.loc 3 499 20
	li	a5,-16
	j	.L88
.L83:
	.loc 3 501 31
	lw	a5,-40(s0)
	addi	a5,a5,1
	.loc 3 501 19
	addi	a4,s0,-72
	li	a2,10
	mv	a1,a4
	mv	a0,a5
	call	strtoul
	mv	a5,a0
	.loc 3 501 17 discriminator 1
	sw	a5,-56(s0)
	.loc 3 502 14
	lw	a5,-72(s0)
	lbu	a5,0(a5)
	.loc 3 502 12
	bne	a5,zero,.L84
	.loc 3 502 50 discriminator 1
	lw	a5,-40(s0)
	addi	a4,a5,1
	.loc 3 502 42 discriminator 1
	lw	a5,-72(s0)
	.loc 3 502 31 discriminator 1
	bltu	a4,a5,.L85
.L84:
	.loc 3 503 20
	li	a5,-16
	j	.L88
.L85:
	.loc 3 505 15
	lw	a5,-64(s0)
	sw	a5,0(sp)
	lw	a7,-56(s0)
	lw	a6,-52(s0)
	lw	a5,-48(s0)
	lw	a4,-44(s0)
	lw	a3,-36(s0)
	lw	a2,-92(s0)
	lw	a1,-88(s0)
	lw	a0,-84(s0)
	call	overlay_fixup_one_phandle
	sw	a0,-60(s0)
	.loc 3 508 12
	lw	a5,-60(s0)
	beq	a5,zero,.L86
	.loc 3 509 20
	lw	a5,-60(s0)
	j	.L88
.L86:
.LBE5:
	.loc 3 510 18
	lw	a5,-68(s0)
	bgt	a5,zero,.L73
	.loc 3 512 12
	li	a5,0
.L88:
	.loc 3 513 1
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
.LFE48:
	.size	overlay_fixup_phandle, .-overlay_fixup_phandle
	.section	.rodata
	.align	2
.LC5:
	.string	"/__fixups__"
	.align	2
.LC6:
	.string	"/__symbols__"
	.section	.text.overlay_fixup_phandles,"ax",@progbits
	.align	1
	.type	overlay_fixup_phandles, @function
overlay_fixup_phandles:
.LFB49:
	.loc 3 533 1
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
	.loc 3 538 18
	lui	a5,%hi(.LC5)
	addi	a1,a5,%lo(.LC5)
	lw	a0,-40(s0)
	call	fdt_path_offset
	sw	a0,-24(s0)
	.loc 3 539 8
	lw	a4,-24(s0)
	li	a5,-1
	bne	a4,a5,.L90
	.loc 3 540 16
	li	a5,0
	j	.L91
.L90:
	.loc 3 541 8
	lw	a5,-24(s0)
	bge	a5,zero,.L92
	.loc 3 542 16
	lw	a5,-24(s0)
	j	.L91
.L92:
	.loc 3 545 19
	lui	a5,%hi(.LC6)
	addi	a1,a5,%lo(.LC6)
	lw	a0,-36(s0)
	call	fdt_path_offset
	sw	a0,-28(s0)
	.loc 3 546 8
	lw	a5,-28(s0)
	bge	a5,zero,.L93
	.loc 3 546 26 discriminator 1
	lw	a4,-28(s0)
	li	a5,-1
	beq	a4,a5,.L93
	.loc 3 547 16
	lw	a5,-28(s0)
	j	.L91
.L93:
	.loc 3 549 21
	lw	a1,-24(s0)
	lw	a0,-40(s0)
	call	fdt_first_property_offset
	sw	a0,-20(s0)
	.loc 3 549 5
	j	.L94
.L96:
.LBB6:
	.loc 3 552 15
	lw	a3,-20(s0)
	lw	a2,-28(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	overlay_fixup_phandle
	sw	a0,-32(s0)
	.loc 3 553 12
	lw	a5,-32(s0)
	beq	a5,zero,.L95
	.loc 3 554 20
	lw	a5,-32(s0)
	j	.L91
.L95:
.LBE6:
	.loc 3 549 92 discriminator 4
	lw	a1,-20(s0)
	lw	a0,-40(s0)
	call	fdt_next_property_offset
	sw	a0,-20(s0)
.L94:
	.loc 3 549 75 discriminator 2
	lw	a5,-20(s0)
	bge	a5,zero,.L96
	.loc 3 557 12
	li	a5,0
.L91:
	.loc 3 558 1
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
.LFE49:
	.size	overlay_fixup_phandles, .-overlay_fixup_phandles
	.section	.text.overlay_apply_node,"ax",@progbits
	.align	1
	.type	overlay_apply_node, @function
overlay_apply_node:
.LFB50:
	.loc 3 581 1
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
	.loc 3 585 21
	lw	a1,-80(s0)
	lw	a0,-76(s0)
	call	fdt_first_property_offset
	sw	a0,-20(s0)
	.loc 3 585 5
	j	.L98
.L104:
.LBB7:
	.loc 3 591 16
	addi	a4,s0,-52
	addi	a5,s0,-48
	mv	a3,a4
	mv	a2,a5
	lw	a1,-20(s0)
	lw	a0,-76(s0)
	call	fdt_getprop_by_offset
	sw	a0,-40(s0)
	.loc 3 593 22
	lw	a4,-52(s0)
	.loc 3 593 12
	li	a5,-1
	bne	a4,a5,.L99
	.loc 3 594 20
	li	a5,-13
	j	.L103
.L99:
	.loc 3 595 22
	lw	a5,-52(s0)
	.loc 3 595 12
	bge	a5,zero,.L101
	.loc 3 596 20
	lw	a5,-52(s0)
	j	.L103
.L101:
	.loc 3 598 15
	lw	a5,-48(s0)
	lw	a4,-52(s0)
	lw	a3,-40(s0)
	mv	a2,a5
	lw	a1,-72(s0)
	lw	a0,-68(s0)
	call	fdt_setprop
	sw	a0,-44(s0)
	.loc 3 599 12
	lw	a5,-44(s0)
	beq	a5,zero,.L102
	.loc 3 600 20
	lw	a5,-44(s0)
	j	.L103
.L102:
.LBE7:
	.loc 3 585 86 discriminator 4
	lw	a1,-20(s0)
	lw	a0,-76(s0)
	call	fdt_next_property_offset
	sw	a0,-20(s0)
.L98:
	.loc 3 585 69 discriminator 2
	lw	a5,-20(s0)
	bge	a5,zero,.L104
	.loc 3 603 20
	lw	a1,-80(s0)
	lw	a0,-76(s0)
	call	fdt_first_subnode
	sw	a0,-24(s0)
	.loc 3 603 5
	j	.L105
.L109:
.LBB8:
	.loc 3 604 28
	li	a2,0
	lw	a1,-24(s0)
	lw	a0,-76(s0)
	call	fdt_get_name
	sw	a0,-32(s0)
	.loc 3 608 17
	lw	a2,-32(s0)
	lw	a1,-72(s0)
	lw	a0,-68(s0)
	call	fdt_add_subnode
	sw	a0,-28(s0)
	.loc 3 609 12
	lw	a4,-28(s0)
	li	a5,-2
	bne	a4,a5,.L106
	.loc 3 610 21
	lw	a2,-32(s0)
	lw	a1,-72(s0)
	lw	a0,-68(s0)
	call	fdt_subnode_offset
	sw	a0,-28(s0)
	.loc 3 611 16
	lw	a4,-28(s0)
	li	a5,-1
	bne	a4,a5,.L106
	.loc 3 612 24
	li	a5,-13
	j	.L103
.L106:
	.loc 3 615 12
	lw	a5,-28(s0)
	bge	a5,zero,.L107
	.loc 3 616 20
	lw	a5,-28(s0)
	j	.L103
.L107:
	.loc 3 618 15
	lw	a3,-24(s0)
	lw	a2,-76(s0)
	lw	a1,-28(s0)
	lw	a0,-68(s0)
	call	overlay_apply_node
	sw	a0,-36(s0)
	.loc 3 619 12
	lw	a5,-36(s0)
	beq	a5,zero,.L108
	.loc 3 620 20
	lw	a5,-36(s0)
	j	.L103
.L108:
.LBE8:
	.loc 3 603 75 discriminator 4
	lw	a1,-24(s0)
	lw	a0,-76(s0)
	call	fdt_next_subnode
	sw	a0,-24(s0)
.L105:
	.loc 3 603 59 discriminator 2
	lw	a5,-24(s0)
	bge	a5,zero,.L109
	.loc 3 623 12
	li	a5,0
.L103:
	.loc 3 624 1
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
.LFE50:
	.size	overlay_apply_node, .-overlay_apply_node
	.section	.rodata
	.align	2
.LC7:
	.string	"__overlay__"
	.section	.text.overlay_merge,"ax",@progbits
	.align	1
	.type	overlay_merge, @function
overlay_merge:
.LFB51:
	.loc 3 642 1
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
	.loc 3 645 21
	li	a1,0
	lw	a0,-40(s0)
	call	fdt_first_subnode
	sw	a0,-20(s0)
	.loc 3 645 5
	j	.L111
.L117:
.LBB9:
	.loc 3 654 19
	lui	a5,%hi(.LC7)
	addi	a2,a5,%lo(.LC7)
	lw	a1,-20(s0)
	lw	a0,-40(s0)
	call	fdt_subnode_offset
	sw	a0,-24(s0)
	.loc 3 655 12
	lw	a4,-24(s0)
	li	a5,-1
	beq	a4,a5,.L118
	.loc 3 658 12
	lw	a5,-24(s0)
	bge	a5,zero,.L114
	.loc 3 659 20
	lw	a5,-24(s0)
	j	.L115
.L114:
	.loc 3 661 18
	li	a3,0
	lw	a2,-20(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	overlay_get_target
	sw	a0,-28(s0)
	.loc 3 662 12
	lw	a5,-28(s0)
	bge	a5,zero,.L116
	.loc 3 663 20
	lw	a5,-28(s0)
	j	.L115
.L116:
	.loc 3 665 15
	lw	a3,-24(s0)
	lw	a2,-40(s0)
	lw	a1,-28(s0)
	lw	a0,-36(s0)
	call	overlay_apply_node
	sw	a0,-32(s0)
	.loc 3 666 12
	lw	a5,-32(s0)
	beq	a5,zero,.L113
	.loc 3 667 20
	lw	a5,-32(s0)
	j	.L115
.L118:
	.loc 3 656 13
	nop
.L113:
.LBE9:
	.loc 3 645 75 discriminator 4
	lw	a1,-20(s0)
	lw	a0,-40(s0)
	call	fdt_next_subnode
	sw	a0,-20(s0)
.L111:
	.loc 3 645 58 discriminator 2
	lw	a5,-20(s0)
	bge	a5,zero,.L117
	.loc 3 670 12
	li	a5,0
.L115:
	.loc 3 671 1
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
	.size	overlay_merge, .-overlay_merge
	.section	.text.get_path_len,"ax",@progbits
	.align	1
	.type	get_path_len, @function
get_path_len:
.LFB52:
	.loc 3 674 1
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
	.loc 3 675 9
	sw	zero,-20(s0)
.LBB10:
	.loc 3 678 29
	lw	a0,-36(s0)
	call	fdt_ro_probe_
	sw	a0,-24(s0)
	.loc 3 678 20 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L120
	.loc 3 678 62 discriminator 2
	lw	a5,-24(s0)
	.loc 3 678 62 is_stmt 0
	j	.L127
.L120:
.LBE10:
	.loc 3 681 16 is_stmt 1
	addi	a5,s0,-32
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_get_name
	sw	a0,-28(s0)
	.loc 3 682 12
	lw	a5,-28(s0)
	bne	a5,zero,.L122
	.loc 3 683 20
	lw	a5,-32(s0)
	j	.L127
.L122:
	.loc 3 686 21
	lw	a5,-32(s0)
	.loc 3 686 12
	beq	a5,zero,.L129
	.loc 3 689 22
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	fdt_parent_offset
	sw	a0,-40(s0)
	.loc 3 690 12
	lw	a5,-40(s0)
	bge	a5,zero,.L125
	.loc 3 691 20
	lw	a5,-40(s0)
	j	.L127
.L125:
	.loc 3 692 24
	lw	a5,-32(s0)
	addi	a5,a5,1
	.loc 3 692 13
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 3 681 14
	j	.L120
.L129:
	.loc 3 687 13
	nop
	.loc 3 696 8
	lw	a5,-20(s0)
	bne	a5,zero,.L126
	.loc 3 697 12
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L126:
	.loc 3 698 12
	lw	a5,-20(s0)
.L127:
	.loc 3 699 1
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
	.size	get_path_len, .-get_path_len
	.section	.rodata
	.align	2
.LC8:
	.string	"__symbols__"
	.align	2
.LC9:
	.string	"/__overlay__/"
	.section	.text.overlay_symbol_update,"ax",@progbits
	.align	1
	.type	overlay_symbol_update, @function
overlay_symbol_update:
.LFB53:
	.loc 3 718 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	a0,-100(s0)
	sw	a1,-104(s0)
	.loc 3 730 14
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,0
	lw	a0,-104(s0)
	call	fdt_subnode_offset
	sw	a0,-36(s0)
	.loc 3 733 8
	lw	a5,-36(s0)
	bge	a5,zero,.L131
	.loc 3 734 16
	li	a5,0
	j	.L156
.L131:
	.loc 3 736 16
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,0
	lw	a0,-100(s0)
	call	fdt_subnode_offset
	sw	a0,-20(s0)
	.loc 3 739 8
	lw	a4,-20(s0)
	li	a5,-1
	bne	a4,a5,.L133
	.loc 3 740 20
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,0
	lw	a0,-100(s0)
	call	fdt_add_subnode
	sw	a0,-20(s0)
.L133:
	.loc 3 743 8
	lw	a5,-20(s0)
	bge	a5,zero,.L134
	.loc 3 744 16
	lw	a5,-20(s0)
	j	.L156
.L134:
	.loc 3 747 17
	lw	a1,-36(s0)
	lw	a0,-104(s0)
	call	fdt_first_property_offset
	sw	a0,-24(s0)
	.loc 3 747 5
	j	.L135
.L155:
	.loc 3 748 16
	addi	a4,s0,-80
	addi	a5,s0,-84
	mv	a3,a4
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-104(s0)
	call	fdt_getprop_by_offset
	sw	a0,-40(s0)
	.loc 3 749 12
	lw	a5,-40(s0)
	bne	a5,zero,.L136
	.loc 3 750 20
	lw	a5,-80(s0)
	j	.L156
.L136:
	.loc 3 753 22
	lw	a5,-80(s0)
	.loc 3 753 12
	ble	a5,zero,.L137
	.loc 3 753 29 discriminator 1
	lw	a5,-80(s0)
	mv	a2,a5
	li	a1,0
	lw	a0,-40(s0)
	call	memchr
	mv	a3,a0
	.loc 3 753 66 discriminator 2
	lw	a5,-80(s0)
	addi	a5,a5,-1
	.loc 3 753 61 discriminator 2
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 3 753 26 discriminator 2
	beq	a3,a5,.L138
.L137:
	.loc 3 754 20
	li	a5,-15
	j	.L156
.L138:
	.loc 3 757 18
	lw	a5,-80(s0)
	mv	a4,a5
	.loc 3 757 11
	lw	a5,-40(s0)
	add	a5,a5,a4
	sw	a5,-44(s0)
	.loc 3 761 13
	lw	a5,-40(s0)
	lbu	a4,0(a5)
	.loc 3 761 12
	li	a5,47
	beq	a4,a5,.L139
	.loc 3 762 20
	li	a5,-15
	j	.L156
.L139:
	.loc 3 765 13
	lw	a5,-40(s0)
	addi	a5,a5,1
	li	a1,47
	mv	a0,a5
	call	strchr
	sw	a0,-48(s0)
	.loc 3 766 12
	lw	a5,-48(s0)
	bne	a5,zero,.L140
	.loc 3 767 20
	li	a5,-16
	j	.L156
.L140:
	.loc 3 769 19
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
	.loc 3 770 27
	lw	a4,-48(s0)
	lw	a5,-40(s0)
	sub	a5,a4,a5
	.loc 3 770 23
	addi	a5,a5,-1
	sw	a5,-56(s0)
	.loc 3 773 13
	li	a5,13
	sw	a5,-32(s0)
	.loc 3 774 16
	lw	a4,-44(s0)
	lw	a5,-48(s0)
	sub	a5,a4,a5
	.loc 3 774 12
	lw	a4,-32(s0)
	bgt	a4,a5,.L141
	.loc 3 774 30 discriminator 1
	lw	a5,-32(s0)
	mv	a2,a5
	lui	a5,%hi(.LC9)
	addi	a1,a5,%lo(.LC9)
	lw	a0,-48(s0)
	call	memcmp
	mv	a5,a0
	.loc 3 774 27 discriminator 2
	beq	a5,zero,.L142
.L141:
	.loc 3 775 20
	li	a5,-16
	j	.L156
.L142:
	.loc 3 777 22
	lw	a5,-32(s0)
	.loc 3 777 18
	lw	a4,-48(s0)
	add	a5,a4,a5
	sw	a5,-60(s0)
	.loc 3 778 22
	lw	a4,-44(s0)
	lw	a5,-60(s0)
	sub	a5,a4,a5
	sw	a5,-64(s0)
	.loc 3 781 15
	lw	a3,-56(s0)
	lw	a2,-52(s0)
	li	a1,0
	lw	a0,-104(s0)
	call	fdt_subnode_offset_namelen
	sw	a0,-68(s0)
	.loc 3 784 12
	lw	a5,-68(s0)
	bge	a5,zero,.L143
	.loc 3 785 20
	li	a5,-16
	j	.L156
.L143:
	.loc 3 786 18
	lw	a5,-68(s0)
	sw	a5,-72(s0)
	.loc 3 789 15
	lui	a5,%hi(.LC7)
	addi	a2,a5,%lo(.LC7)
	lw	a1,-72(s0)
	lw	a0,-104(s0)
	call	fdt_subnode_offset
	sw	a0,-68(s0)
	.loc 3 790 12
	lw	a5,-68(s0)
	bge	a5,zero,.L144
	.loc 3 791 20
	li	a5,-16
	j	.L156
.L144:
	.loc 3 794 15
	addi	a5,s0,-88
	mv	a3,a5
	lw	a2,-72(s0)
	lw	a1,-104(s0)
	lw	a0,-100(s0)
	call	overlay_get_target
	sw	a0,-68(s0)
	.loc 3 795 12
	lw	a5,-68(s0)
	bge	a5,zero,.L145
	.loc 3 796 20
	lw	a5,-68(s0)
	j	.L156
.L145:
	.loc 3 797 16
	lw	a5,-68(s0)
	sw	a5,-28(s0)
	.loc 3 800 13
	lw	a5,-88(s0)
	.loc 3 800 12
	bne	a5,zero,.L146
	.loc 3 801 19
	lw	a1,-28(s0)
	lw	a0,-100(s0)
	call	get_path_len
	sw	a0,-68(s0)
	.loc 3 802 16
	lw	a5,-68(s0)
	bge	a5,zero,.L147
	.loc 3 803 24
	lw	a5,-68(s0)
	j	.L156
.L147:
	.loc 3 804 17
	lw	a5,-68(s0)
	sw	a5,-32(s0)
	j	.L148
.L146:
	.loc 3 806 19
	lw	a5,-88(s0)
	mv	a0,a5
	call	strlen
	mv	a5,a0
	.loc 3 806 17 discriminator 1
	sw	a5,-32(s0)
.L148:
	.loc 3 809 15
	lw	a2,-84(s0)
	.loc 3 810 28
	lw	a5,-32(s0)
	slti	a5,a5,2
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 3 810 21
	lw	a5,-32(s0)
	add	a4,a4,a5
	.loc 3 810 33
	lw	a5,-64(s0)
	add	a5,a4,a5
	.loc 3 809 15
	addi	a5,a5,1
	addi	a4,s0,-92
	mv	a3,a5
	lw	a1,-20(s0)
	lw	a0,-100(s0)
	call	fdt_setprop_placeholder
	sw	a0,-68(s0)
	.loc 3 811 12
	lw	a5,-68(s0)
	bge	a5,zero,.L149
	.loc 3 812 20
	lw	a5,-68(s0)
	j	.L156
.L149:
	.loc 3 814 13
	lw	a5,-88(s0)
	.loc 3 814 12
	bne	a5,zero,.L150
	.loc 3 816 19
	addi	a5,s0,-88
	mv	a3,a5
	lw	a2,-72(s0)
	lw	a1,-104(s0)
	lw	a0,-100(s0)
	call	overlay_get_target
	sw	a0,-68(s0)
	.loc 3 817 16
	lw	a5,-68(s0)
	bge	a5,zero,.L151
	.loc 3 818 24
	lw	a5,-68(s0)
	j	.L156
.L151:
	.loc 3 819 20
	lw	a5,-68(s0)
	sw	a5,-28(s0)
.L150:
	.loc 3 822 13
	lw	a5,-92(s0)
	sw	a5,-76(s0)
	.loc 3 823 12
	lw	a4,-32(s0)
	li	a5,1
	ble	a4,a5,.L152
	.loc 3 824 17
	lw	a5,-88(s0)
	.loc 3 824 16
	bne	a5,zero,.L153
	.loc 3 825 23
	lw	a5,-32(s0)
	addi	a5,a5,1
	mv	a3,a5
	lw	a2,-76(s0)
	lw	a1,-28(s0)
	lw	a0,-100(s0)
	call	fdt_get_path
	sw	a0,-68(s0)
	.loc 3 826 20
	lw	a5,-68(s0)
	bge	a5,zero,.L154
	.loc 3 827 28
	lw	a5,-68(s0)
	j	.L156
.L153:
	.loc 3 829 17
	lw	a4,-88(s0)
	.loc 3 829 46
	lw	a5,-32(s0)
	addi	a5,a5,1
	.loc 3 829 17
	mv	a2,a5
	mv	a1,a4
	lw	a0,-76(s0)
	call	memcpy
	j	.L154
.L152:
	.loc 3 832 16
	lw	a5,-32(s0)
	addi	a5,a5,-1
	sw	a5,-32(s0)
.L154:
	.loc 3 834 12
	lw	a5,-32(s0)
	lw	a4,-76(s0)
	add	a5,a4,a5
	.loc 3 834 18
	li	a4,47
	sb	a4,0(a5)
	.loc 3 835 26
	lw	a5,-32(s0)
	addi	a5,a5,1
	lw	a4,-76(s0)
	add	a5,a4,a5
	.loc 3 835 9
	lw	a4,-64(s0)
	mv	a2,a4
	lw	a1,-60(s0)
	mv	a0,a5
	call	memcpy
	.loc 3 836 17
	lw	a5,-32(s0)
	addi	a4,a5,1
	.loc 3 836 21
	lw	a5,-64(s0)
	add	a5,a4,a5
	mv	a4,a5
	.loc 3 836 12
	lw	a5,-76(s0)
	add	a5,a5,a4
	.loc 3 836 37
	sb	zero,0(a5)
	.loc 3 747 76 discriminator 4
	lw	a1,-24(s0)
	lw	a0,-104(s0)
	call	fdt_next_property_offset
	sw	a0,-24(s0)
.L135:
	.loc 3 747 63 discriminator 2
	lw	a5,-24(s0)
	bge	a5,zero,.L155
	.loc 3 839 12
	li	a5,0
.L156:
	.loc 3 840 1
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
.LFE53:
	.size	overlay_symbol_update, .-overlay_symbol_update
	.section	.text.fdt_overlay_apply,"ax",@progbits
	.align	1
	.globl	fdt_overlay_apply
	.type	fdt_overlay_apply, @function
fdt_overlay_apply:
.LFB54:
	.loc 3 843 1
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
	.loc 3 844 22
	lw	a0,-36(s0)
	call	fdt_get_max_phandle
	sw	a0,-24(s0)
.LBB11:
	.loc 3 847 29
	lw	a0,-36(s0)
	call	fdt_ro_probe_
	sw	a0,-28(s0)
	.loc 3 847 20 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L158
	.loc 3 847 62 discriminator 2
	lw	a5,-28(s0)
	.loc 3 847 62 is_stmt 0
	j	.L159
.L158:
.LBE11:
.LBB12:
	.loc 3 848 29 is_stmt 1
	lw	a0,-40(s0)
	call	fdt_ro_probe_
	sw	a0,-32(s0)
	.loc 3 848 20 discriminator 1
	lw	a5,-32(s0)
	beq	a5,zero,.L160
	.loc 3 848 63 discriminator 2
	lw	a5,-32(s0)
	.loc 3 848 63 is_stmt 0
	j	.L159
.L160:
.LBE12:
	.loc 3 850 11 is_stmt 1
	lw	a1,-24(s0)
	lw	a0,-40(s0)
	call	overlay_adjust_local_phandles
	sw	a0,-20(s0)
	.loc 3 851 8
	lw	a5,-20(s0)
	bne	a5,zero,.L167
	.loc 3 854 11
	lw	a1,-24(s0)
	lw	a0,-40(s0)
	call	overlay_update_local_references
	sw	a0,-20(s0)
	.loc 3 855 8
	lw	a5,-20(s0)
	bne	a5,zero,.L168
	.loc 3 858 11
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	overlay_fixup_phandles
	sw	a0,-20(s0)
	.loc 3 859 8
	lw	a5,-20(s0)
	bne	a5,zero,.L169
	.loc 3 862 11
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	overlay_merge
	sw	a0,-20(s0)
	.loc 3 863 8
	lw	a5,-20(s0)
	bne	a5,zero,.L170
	.loc 3 866 11
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	overlay_symbol_update
	sw	a0,-20(s0)
	.loc 3 867 8
	lw	a5,-20(s0)
	bne	a5,zero,.L171
	.loc 3 873 5
	li	a1,-1
	lw	a0,-40(s0)
	call	fdt_set_magic
	.loc 3 875 12
	li	a5,0
	j	.L159
.L167:
	.loc 3 852 9
	nop
	j	.L162
.L168:
	.loc 3 856 9
	nop
	j	.L162
.L169:
	.loc 3 860 9
	nop
	j	.L162
.L170:
	.loc 3 864 9
	nop
	j	.L162
.L171:
	.loc 3 868 9
	nop
.L162:
	.loc 3 881 5
	li	a1,-1
	lw	a0,-40(s0)
	call	fdt_set_magic
	.loc 3 887 5
	li	a1,-1
	lw	a0,-36(s0)
	call	fdt_set_magic
	.loc 3 889 12
	lw	a5,-20(s0)
.L159:
	.loc 3 890 1
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
.LFE54:
	.size	fdt_overlay_apply, .-fdt_overlay_apply
	.text
.Letext0:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/fdt.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/inc/libfdt_internal.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x106e
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x16
	.4byte	.LASF126
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x11
	.4byte	.LASF8
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x11
	.4byte	.LASF9
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x74
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x11
	.4byte	.LASF12
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x8e
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x18
	.byte	0x4
	.uleb128 0x12
	.4byte	0x9c
	.uleb128 0xb
	.4byte	0xa8
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x15
	.4byte	0xa8
	.uleb128 0xb
	.4byte	0xaf
	.uleb128 0x12
	.4byte	0xb4
	.uleb128 0xb
	.4byte	0xc8
	.uleb128 0x12
	.4byte	0xbe
	.uleb128 0x19
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x1
	.byte	0x63
	.byte	0x12
	.4byte	0x82
	.uleb128 0x15
	.4byte	0xc9
	.uleb128 0x1a
	.4byte	.LASF127
	.byte	0x28
	.byte	0x6
	.byte	0x57
	.byte	0x8
	.4byte	0x156
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x58
	.4byte	0xc9
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x59
	.4byte	0xc9
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x5a
	.4byte	0xc9
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x5b
	.4byte	0xc9
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5c
	.4byte	0xc9
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x5d
	.4byte	0xc9
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x5e
	.4byte	0xc9
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x61
	.4byte	0xc9
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x64
	.4byte	0xc9
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x67
	.4byte	0xc9
	.byte	0x24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF27
	.2byte	0x196
	.byte	0xa
	.4byte	0x82
	.4byte	0x16c
	.uleb128 0x1
	.4byte	0xbe
	.byte	0
	.uleb128 0x4
	.4byte	.LASF28
	.2byte	0x35c
	.byte	0x5
	.4byte	0x2b
	.4byte	0x191
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0xa3
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x4
	.4byte	.LASF29
	.2byte	0x629
	.byte	0x5
	.4byte	0x2b
	.4byte	0x1bb
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0xb4
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x1bb
	.byte	0
	.uleb128 0xb
	.4byte	0x9c
	.uleb128 0x4
	.4byte	.LASF30
	.2byte	0x1c3
	.byte	0x5
	.4byte	0x2b
	.4byte	0x1e5
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0xb4
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x7
	.byte	0x1e
	.byte	0x5
	.4byte	0x2b
	.4byte	0x205
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x7
	.byte	0x23
	.byte	0x7
	.4byte	0xa3
	.4byte	0x220
	.uleb128 0x1
	.4byte	0xb4
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x4
	.4byte	.LASF33
	.2byte	0x3a9
	.byte	0x5
	.4byte	0x2b
	.4byte	0x23b
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x8
	.byte	0x57
	.byte	0x5
	.4byte	0x2b
	.4byte	0x251
	.uleb128 0x1
	.4byte	0xbe
	.byte	0
	.uleb128 0x4
	.4byte	.LASF35
	.2byte	0x78f
	.byte	0x5
	.4byte	0x2b
	.4byte	0x271
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0xb4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF36
	.2byte	0x60a
	.byte	0x5
	.4byte	0x2b
	.4byte	0x29b
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0xb4
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x9
	.byte	0xad
	.byte	0xf
	.4byte	0x8e
	.4byte	0x2bb
	.uleb128 0x1
	.4byte	0xb9
	.uleb128 0x1
	.4byte	0x2c0
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0xb
	.4byte	0xa3
	.uleb128 0x12
	.4byte	0x2bb
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x7
	.byte	0x1d
	.byte	0x8
	.4byte	0x9c
	.4byte	0x2e5
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	.LASF39
	.2byte	0x1ea
	.byte	0x5
	.4byte	0x2b
	.4byte	0x305
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0xb4
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x4
	.4byte	.LASF40
	.2byte	0x325
	.byte	0xa
	.4byte	0x82
	.4byte	0x320
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.2byte	0x1de
	.byte	0x5
	.4byte	0x2b
	.4byte	0x340
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0xb4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF42
	.2byte	0x21d
	.byte	0xd
	.4byte	0xb4
	.4byte	0x360
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x360
	.byte	0
	.uleb128 0xb
	.4byte	0x2b
	.uleb128 0x4
	.4byte	.LASF43
	.2byte	0x246
	.byte	0x5
	.4byte	0x2b
	.4byte	0x380
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x4
	.4byte	.LASF44
	.2byte	0x4c2
	.byte	0x5
	.4byte	0x2b
	.4byte	0x3b4
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0xb4
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x7
	.byte	0x29
	.byte	0x8
	.4byte	0x32
	.4byte	0x3ca
	.uleb128 0x1
	.4byte	0xb4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x7
	.byte	0x1f
	.byte	0x8
	.4byte	0x9c
	.4byte	0x3ea
	.uleb128 0x1
	.4byte	0x9e
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	.LASF47
	.2byte	0x2da
	.byte	0xd
	.4byte	0xbe
	.4byte	0x40f
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x40f
	.uleb128 0x1
	.4byte	0x360
	.byte	0
	.uleb128 0xb
	.4byte	0xb4
	.uleb128 0x4
	.4byte	.LASF48
	.2byte	0x231
	.byte	0x5
	.4byte	0x2b
	.4byte	0x42f
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x2
	.byte	0xf3
	.byte	0x5
	.4byte	0x2b
	.4byte	0x44a
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x2
	.byte	0xe6
	.byte	0x5
	.4byte	0x2b
	.4byte	0x465
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x4
	.4byte	.LASF51
	.2byte	0x4e5
	.byte	0x5
	.4byte	0x2b
	.4byte	0x48f
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0xb4
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x4
	.4byte	.LASF52
	.2byte	0x3e8
	.byte	0x5
	.4byte	0x2b
	.4byte	0x4aa
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x82
	.byte	0
	.uleb128 0x4
	.4byte	.LASF53
	.2byte	0x204
	.byte	0x5
	.4byte	0x2b
	.4byte	0x4c5
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0xb4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF54
	.2byte	0x311
	.byte	0xd
	.4byte	0xbe
	.4byte	0x4ea
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0xb4
	.uleb128 0x1
	.4byte	0x360
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF128
	.byte	0x3
	.2byte	0x34a
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58b
	.uleb128 0x7
	.string	"fdt"
	.byte	0x3
	.2byte	0x34a
	.byte	0x1d
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x3
	.2byte	0x34a
	.byte	0x28
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x3
	.2byte	0x34c
	.byte	0xe
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"ret"
	.byte	0x3
	.2byte	0x34d
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.string	"err"
	.byte	0x3
	.2byte	0x36d
	.byte	0x1
	.4byte	.L162
	.uleb128 0x14
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x570
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x3
	.2byte	0x34f
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xe
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x3
	.2byte	0x350
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x3
	.2byte	0x2cd
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6fa
	.uleb128 0x7
	.string	"fdt"
	.byte	0x3
	.2byte	0x2cd
	.byte	0x28
	.4byte	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x3
	.2byte	0x2cd
	.byte	0x33
	.4byte	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0x3
	.2byte	0x2cf
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x3
	.2byte	0x2cf
	.byte	0x13
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x3
	.2byte	0x2cf
	.byte	0x1b
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x3
	.2byte	0x2cf
	.byte	0x21
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0x3
	.2byte	0x2cf
	.byte	0x2b
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x3
	.2byte	0x2cf
	.byte	0x35
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.string	"len"
	.byte	0x3
	.2byte	0x2d0
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x3
	.2byte	0x2d0
	.byte	0xe
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.string	"ret"
	.byte	0x3
	.2byte	0x2d0
	.byte	0x1d
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0x3
	.2byte	0x2d0
	.byte	0x22
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.string	"s"
	.byte	0x3
	.2byte	0x2d1
	.byte	0x11
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.string	"e"
	.byte	0x3
	.2byte	0x2d1
	.byte	0x15
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0x3
	.2byte	0x2d2
	.byte	0x11
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0x3
	.2byte	0x2d3
	.byte	0x11
	.4byte	0xb4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x3
	.2byte	0x2d4
	.byte	0x11
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0x3
	.2byte	0x2d5
	.byte	0x11
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0x3
	.2byte	0x2d6
	.byte	0x11
	.4byte	0xb4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x5
	.string	"buf"
	.byte	0x3
	.2byte	0x2d7
	.byte	0xb
	.4byte	0xa3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x5
	.string	"p"
	.byte	0x3
	.2byte	0x2d8
	.byte	0xb
	.4byte	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x3
	.2byte	0x2a1
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x780
	.uleb128 0x7
	.string	"fdt"
	.byte	0x3
	.2byte	0x2a1
	.byte	0x25
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x3
	.2byte	0x2a1
	.byte	0x2e
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"len"
	.byte	0x3
	.2byte	0x2a3
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0x3
	.2byte	0x2a3
	.byte	0x12
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0x3
	.2byte	0x2a4
	.byte	0x11
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xe
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x3
	.2byte	0x2a6
	.byte	0xb
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x3
	.2byte	0x281
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x806
	.uleb128 0x7
	.string	"fdt"
	.byte	0x3
	.2byte	0x281
	.byte	0x20
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x3
	.2byte	0x281
	.byte	0x2b
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0x3
	.2byte	0x283
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0x3
	.2byte	0x286
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x3
	.2byte	0x287
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.string	"ret"
	.byte	0x3
	.2byte	0x288
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x3
	.2byte	0x243
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x90e
	.uleb128 0x7
	.string	"fdt"
	.byte	0x3
	.2byte	0x243
	.byte	0x25
	.4byte	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x3
	.2byte	0x243
	.byte	0x2e
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x3
	.2byte	0x244
	.byte	0x19
	.4byte	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x3
	.2byte	0x244
	.byte	0x23
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0x3
	.2byte	0x246
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0x3
	.2byte	0x247
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x8d3
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0x3
	.2byte	0x24a
	.byte	0x15
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x3
	.2byte	0x24b
	.byte	0x15
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0x3
	.2byte	0x24c
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.string	"ret"
	.byte	0x3
	.2byte	0x24d
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0xe
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0x3
	.2byte	0x25c
	.byte	0x15
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0x3
	.2byte	0x25d
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.string	"ret"
	.byte	0x3
	.2byte	0x25e
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0x3
	.2byte	0x214
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x994
	.uleb128 0x7
	.string	"fdt"
	.byte	0x3
	.2byte	0x214
	.byte	0x29
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x3
	.2byte	0x214
	.byte	0x34
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0x3
	.2byte	0x216
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0x3
	.2byte	0x216
	.byte	0x15
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0x3
	.2byte	0x217
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x5
	.string	"ret"
	.byte	0x3
	.2byte	0x226
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0x3
	.2byte	0x1c2
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae0
	.uleb128 0x7
	.string	"fdt"
	.byte	0x3
	.2byte	0x1c2
	.byte	0x28
	.4byte	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x3
	.2byte	0x1c2
	.byte	0x33
	.4byte	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x3
	.2byte	0x1c2
	.byte	0x3d
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x3
	.2byte	0x1c3
	.byte	0x16
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0x3
	.2byte	0x1c5
	.byte	0x11
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0x3
	.2byte	0x1c6
	.byte	0x11
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.string	"len"
	.byte	0x3
	.2byte	0x1c7
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xe
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0x3
	.2byte	0x1d3
	.byte	0x15
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0x3
	.2byte	0x1d3
	.byte	0x1c
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0x3
	.2byte	0x1d3
	.byte	0x23
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0x3
	.2byte	0x1d4
	.byte	0x15
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x3
	.2byte	0x1d5
	.byte	0x12
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0x3
	.2byte	0x1d5
	.byte	0x1c
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0x3
	.2byte	0x1d6
	.byte	0x12
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.string	"sep"
	.byte	0x3
	.2byte	0x1d7
	.byte	0xf
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0x3
	.2byte	0x1d7
	.byte	0x15
	.4byte	0xa3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0x3
	.2byte	0x1d8
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.string	"ret"
	.byte	0x3
	.2byte	0x1d8
	.byte	0x16
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF95
	.byte	0x3
	.2byte	0x186
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf0
	.uleb128 0x7
	.string	"fdt"
	.byte	0x3
	.2byte	0x186
	.byte	0x2c
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x3
	.2byte	0x186
	.byte	0x37
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x3
	.2byte	0x187
	.byte	0x1a
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x3
	.2byte	0x188
	.byte	0x22
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x3
	.2byte	0x188
	.byte	0x31
	.4byte	0x82
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x3
	.2byte	0x189
	.byte	0x22
	.4byte	0xb4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0x3
	.2byte	0x189
	.byte	0x31
	.4byte	0x82
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0x3
	.2byte	0x18a
	.byte	0x1a
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x3
	.2byte	0x18a
	.byte	0x2f
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0x3
	.2byte	0x18c
	.byte	0x11
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0x3
	.2byte	0x18d
	.byte	0xe
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0x3
	.2byte	0x18e
	.byte	0xd
	.4byte	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0x3
	.2byte	0x18f
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0x3
	.2byte	0x18f
	.byte	0x15
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0x3
	.2byte	0x190
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xd
	.4byte	.LASF101
	.byte	0x3
	.2byte	0x15b
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc3c
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x3
	.2byte	0x15b
	.byte	0x32
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x3
	.2byte	0x15b
	.byte	0x41
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF102
	.byte	0x3
	.2byte	0x15d
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF103
	.byte	0xf3
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd77
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0xf3
	.byte	0x37
	.4byte	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x6
	.4byte	.LASF104
	.byte	0xf4
	.byte	0x1d
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x6
	.4byte	.LASF105
	.byte	0xf5
	.byte	0x1d
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0xf6
	.byte	0x22
	.4byte	0x82
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xa
	.4byte	.LASF106
	.byte	0xf8
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.4byte	.LASF107
	.byte	0xf9
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"ret"
	.byte	0xfa
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xd4c
	.uleb128 0xa
	.4byte	.LASF108
	.byte	0xfd
	.byte	0x18
	.4byte	0xd77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.4byte	.LASF109
	.byte	0xfe
	.byte	0x15
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0xff
	.byte	0x15
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0x3
	.2byte	0x100
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0x3
	.2byte	0x101
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.string	"i"
	.byte	0x3
	.2byte	0x102
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xe
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0x3
	.2byte	0x115
	.byte	0x15
	.4byte	0xc9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0x3
	.2byte	0x116
	.byte	0x16
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x2
	.4byte	.LASF112
	.byte	0x3
	.2byte	0x134
	.byte	0x15
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0x3
	.2byte	0x136
	.byte	0xd
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xd5
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0xd8
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdb2
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0xd8
	.byte	0x30
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0xd8
	.byte	0x3f
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.4byte	.LASF115
	.byte	0xb3
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe12
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0xb3
	.byte	0x2f
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF78
	.byte	0xb3
	.byte	0x39
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0xb4
	.byte	0x1e
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.4byte	.LASF116
	.byte	0xb6
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"ret"
	.byte	0xb7
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.4byte	.LASF117
	.byte	0x8b
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe8f
	.uleb128 0x13
	.string	"fdt"
	.byte	0x3
	.byte	0x8b
	.byte	0x2d
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF78
	.byte	0x8b
	.byte	0x36
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0x8c
	.byte	0x23
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x8c
	.byte	0x32
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"val"
	.byte	0x8e
	.byte	0x14
	.4byte	0xd77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.4byte	.LASF111
	.byte	0x8f
	.byte	0xe
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"len"
	.byte	0x90
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0x51
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf1a
	.uleb128 0x13
	.string	"fdt"
	.byte	0x3
	.byte	0x51
	.byte	0x2b
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0x51
	.byte	0x3c
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF62
	.byte	0x52
	.byte	0x17
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF119
	.byte	0x52
	.byte	0x2e
	.4byte	0x40f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.4byte	.LASF97
	.byte	0x54
	.byte	0xe
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x55
	.byte	0x11
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x56
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.string	"ret"
	.byte	0x56
	.byte	0x17
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.4byte	.LASF120
	.byte	0x33
	.byte	0x11
	.4byte	0x82
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf6c
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0x33
	.byte	0x38
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF62
	.byte	0x33
	.byte	0x42
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"val"
	.byte	0x35
	.byte	0x14
	.4byte	0xd77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"len"
	.byte	0x36
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.4byte	.LASF121
	.byte	0x2
	.2byte	0x505
	.byte	0x13
	.4byte	0x2b
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfd8
	.uleb128 0x7
	.string	"fdt"
	.byte	0x2
	.2byte	0x505
	.byte	0x31
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x2
	.2byte	0x505
	.byte	0x3a
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x2
	.2byte	0x506
	.byte	0x23
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"val"
	.byte	0x2
	.2byte	0x506
	.byte	0x32
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.string	"tmp"
	.byte	0x2
	.2byte	0x508
	.byte	0xd
	.4byte	0xc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF124
	.byte	0x2
	.2byte	0x127
	.byte	0x14
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1020
	.uleb128 0x7
	.string	"fdt"
	.byte	0x2
	.2byte	0x127
	.byte	0x28
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"val"
	.byte	0x2
	.2byte	0x127
	.byte	0x36
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0x2
	.2byte	0x127
	.byte	0x50
	.4byte	0x1020
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	0xda
	.uleb128 0x1e
	.4byte	.LASF123
	.byte	0x1
	.byte	0x7c
	.byte	0x17
	.4byte	0xc9
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x104d
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.byte	0x7c
	.byte	0x2d
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF125
	.byte	0x1
	.byte	0x78
	.byte	0x18
	.4byte	0x82
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.byte	0x78
	.byte	0x2d
	.4byte	0xc9
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
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
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
	.byte	0x7
	.4byte	.LFB10
	.uleb128 .LFE10-.LFB10
	.byte	0x7
	.4byte	.LFB24
	.uleb128 .LFE24-.LFB24
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF70:
	.string	"target_path"
.LASF84:
	.string	"fixups_off"
.LASF119:
	.string	"pathp"
.LASF77:
	.string	"overlay_apply_node"
.LASF8:
	.string	"size_t"
.LASF91:
	.string	"name_len"
.LASF76:
	.string	"overlay"
.LASF124:
	.string	"fdt_set_magic"
.LASF69:
	.string	"rel_path"
.LASF18:
	.string	"totalsize"
.LASF96:
	.string	"symbol_path"
.LASF121:
	.string	"fdt_setprop_inplace_u32"
.LASF14:
	.string	"long long unsigned int"
.LASF112:
	.string	"fixup_child_name"
.LASF122:
	.string	"fdth"
.LASF43:
	.string	"fdt_next_property_offset"
.LASF23:
	.string	"last_comp_version"
.LASF56:
	.string	"delta"
.LASF54:
	.string	"fdt_getprop"
.LASF27:
	.string	"fdt_get_max_phandle"
.LASF3:
	.string	"long long int"
.LASF5:
	.string	"signed char"
.LASF103:
	.string	"overlay_update_local_node_references"
.LASF85:
	.string	"symbols_off"
.LASF38:
	.string	"memchr"
.LASF125:
	.string	"fdt32_to_cpu"
.LASF50:
	.string	"fdt_first_subnode"
.LASF79:
	.string	"property"
.LASF7:
	.string	"long int"
.LASF108:
	.string	"fixup_val"
.LASF78:
	.string	"node"
.LASF29:
	.string	"fdt_setprop_placeholder"
.LASF46:
	.string	"memcpy"
.LASF98:
	.string	"phandle_prop"
.LASF109:
	.string	"tree_val"
.LASF106:
	.string	"fixup_prop"
.LASF72:
	.string	"get_path_len"
.LASF90:
	.string	"fixup_str"
.LASF59:
	.string	"ov_sym"
.LASF64:
	.string	"frag_name_len"
.LASF39:
	.string	"fdt_path_offset_namelen"
.LASF99:
	.string	"symbol_off"
.LASF49:
	.string	"fdt_next_subnode"
.LASF94:
	.string	"poffset"
.LASF36:
	.string	"fdt_setprop"
.LASF100:
	.string	"fixup_off"
.LASF30:
	.string	"fdt_subnode_offset_namelen"
.LASF2:
	.string	"unsigned int"
.LASF75:
	.string	"overlay_merge"
.LASF45:
	.string	"strlen"
.LASF80:
	.string	"subnode"
.LASF13:
	.string	"long unsigned int"
.LASF20:
	.string	"off_dt_strings"
.LASF60:
	.string	"prop"
.LASF32:
	.string	"strchr"
.LASF67:
	.string	"name"
.LASF41:
	.string	"fdt_subnode_offset"
.LASF48:
	.string	"fdt_first_property_offset"
.LASF11:
	.string	"short unsigned int"
.LASF95:
	.string	"overlay_fixup_one_phandle"
.LASF107:
	.string	"fixup_child"
.LASF35:
	.string	"fdt_add_subnode"
.LASF97:
	.string	"phandle"
.LASF71:
	.string	"overlay_symbol_update"
.LASF63:
	.string	"target"
.LASF88:
	.string	"label"
.LASF68:
	.string	"frag_name"
.LASF65:
	.string	"rel_path_len"
.LASF93:
	.string	"endptr"
.LASF66:
	.string	"path"
.LASF26:
	.string	"size_dt_struct"
.LASF22:
	.string	"version"
.LASF53:
	.string	"fdt_path_offset"
.LASF4:
	.string	"long double"
.LASF105:
	.string	"fixup_node"
.LASF19:
	.string	"off_dt_struct"
.LASF92:
	.string	"fixup_len"
.LASF28:
	.string	"fdt_get_path"
.LASF25:
	.string	"size_dt_strings"
.LASF115:
	.string	"overlay_adjust_node_phandles"
.LASF117:
	.string	"overlay_phandle_add_offset"
.LASF44:
	.string	"fdt_setprop_inplace_namelen_partial"
.LASF104:
	.string	"tree_node"
.LASF10:
	.string	"unsigned char"
.LASF55:
	.string	"fdto"
.LASF113:
	.string	"tree_child"
.LASF73:
	.string	"nodeoffset"
.LASF21:
	.string	"off_mem_rsvmap"
.LASF6:
	.string	"short int"
.LASF17:
	.string	"magic"
.LASF58:
	.string	"root_sym"
.LASF110:
	.string	"tree_len"
.LASF62:
	.string	"fragment"
.LASF86:
	.string	"overlay_fixup_phandle"
.LASF87:
	.string	"value"
.LASF12:
	.string	"uint32_t"
.LASF33:
	.string	"fdt_parent_offset"
.LASF15:
	.string	"char"
.LASF51:
	.string	"fdt_setprop_inplace"
.LASF82:
	.string	"nnode"
.LASF61:
	.string	"path_len"
.LASF120:
	.string	"overlay_get_target_phandle"
.LASF102:
	.string	"fixups"
.LASF31:
	.string	"memcmp"
.LASF34:
	.string	"fdt_ro_probe_"
.LASF74:
	.string	"namelen"
.LASF116:
	.string	"child"
.LASF126:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF127:
	.string	"fdt_header"
.LASF42:
	.string	"fdt_get_name"
.LASF101:
	.string	"overlay_update_local_references"
.LASF123:
	.string	"cpu_to_fdt32"
.LASF40:
	.string	"fdt_get_phandle"
.LASF37:
	.string	"strtoul"
.LASF52:
	.string	"fdt_node_offset_by_phandle"
.LASF9:
	.string	"uint8_t"
.LASF24:
	.string	"boot_cpuid_phys"
.LASF111:
	.string	"adj_val"
.LASF57:
	.string	"err_"
.LASF81:
	.string	"prop_len"
.LASF89:
	.string	"fixup_end"
.LASF114:
	.string	"overlay_adjust_local_phandles"
.LASF16:
	.string	"fdt32_t"
.LASF83:
	.string	"overlay_fixup_phandles"
.LASF128:
	.string	"fdt_overlay_apply"
.LASF47:
	.string	"fdt_getprop_by_offset"
.LASF118:
	.string	"overlay_get_target"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blfdt"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/blfdt/src/fdt_overlay.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
