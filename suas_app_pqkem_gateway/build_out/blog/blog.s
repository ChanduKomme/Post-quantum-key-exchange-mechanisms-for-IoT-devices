	.file	"blog.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blog" "/home/chandu/sdk/bl602_iot_sdk/components/stage/blog/blog.c"
	.section	.bss.log_buf,"aw",@nobits
	.align	2
	.type	log_buf, @object
	.size	log_buf, 256
log_buf:
	.zero	256
	.section	.text.findch_sum,"ax",@progbits
	.align	1
	.type	findch_sum, @function
findch_sum:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blog/blog.c"
	.loc 1 48 1
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
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 1 49 9
	sw	zero,-20(s0)
	.loc 1 50 15
	lw	a0,-36(s0)
	call	strlen
	mv	a5,a0
	.loc 1 50 9 discriminator 1
	sw	a5,-28(s0)
	.loc 1 51 9
	sw	zero,-24(s0)
	.loc 1 53 12
	sw	zero,-20(s0)
	.loc 1 53 5
	j	.L2
.L4:
	.loc 1 54 16
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 54 12
	lbu	a4,-37(s0)
	bne	a4,a5,.L3
	.loc 1 55 16
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L3:
	.loc 1 53 27 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	.loc 1 53 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	blt	a4,a5,.L4
	.loc 1 59 12
	lw	a5,-24(s0)
	.loc 1 60 1
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
	.size	findch_sum, .-findch_sum
	.section	.rodata
	.align	2
.LC0:
	.string	"arg error.\r\n"
	.align	2
.LC1:
	.string	"all"
	.align	2
.LC2:
	.string	"debug"
	.align	2
.LC3:
	.string	"info"
	.align	2
.LC4:
	.string	"warn"
	.align	2
.LC5:
	.string	"error"
	.align	2
.LC6:
	.string	"assert"
	.align	2
.LC7:
	.string	"never"
	.align	2
.LC8:
	.string	"input level = %s not support.\r\n"
	.align	2
.LC9:
	.string	"input name = %s not support.\r\n"
	.align	2
.LC10:
	.string	"input name = %s not find.\r\n"
	.align	2
.LC11:
	.string	"set %s = %d\r\n"
	.section	.text.set_level,"ax",@progbits
	.align	1
	.type	set_level, @function
set_level:
.LFB6:
	.loc 1 62 1
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
	.loc 1 82 8
	lw	a4,-68(s0)
	li	a5,3
	beq	a4,a5,.L7
	.loc 1 83 9
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	bl_printk
	.loc 1 84 16
	li	a5,-1
	j	.L8
.L7:
	.loc 1 88 25
	lw	a5,-72(s0)
	addi	a5,a5,4
	.loc 1 88 14
	lw	a4,0(a5)
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	mv	a0,a4
	call	strcmp
	mv	a5,a0
	.loc 1 88 8 discriminator 1
	bne	a5,zero,.L9
	.loc 1 89 15
	sb	zero,-37(s0)
	j	.L10
.L9:
	.loc 1 90 32
	lw	a5,-72(s0)
	addi	a5,a5,4
	.loc 1 90 21
	lw	a4,0(a5)
	lui	a5,%hi(.LC2)
	addi	a1,a5,%lo(.LC2)
	mv	a0,a4
	call	strcmp
	mv	a5,a0
	.loc 1 90 15 discriminator 1
	bne	a5,zero,.L11
	.loc 1 91 15
	li	a5,1
	sb	a5,-37(s0)
	j	.L10
.L11:
	.loc 1 92 32
	lw	a5,-72(s0)
	addi	a5,a5,4
	.loc 1 92 21
	lw	a4,0(a5)
	lui	a5,%hi(.LC3)
	addi	a1,a5,%lo(.LC3)
	mv	a0,a4
	call	strcmp
	mv	a5,a0
	.loc 1 92 15 discriminator 1
	bne	a5,zero,.L12
	.loc 1 93 15
	li	a5,2
	sb	a5,-37(s0)
	j	.L10
.L12:
	.loc 1 94 32
	lw	a5,-72(s0)
	addi	a5,a5,4
	.loc 1 94 21
	lw	a4,0(a5)
	lui	a5,%hi(.LC4)
	addi	a1,a5,%lo(.LC4)
	mv	a0,a4
	call	strcmp
	mv	a5,a0
	.loc 1 94 15 discriminator 1
	bne	a5,zero,.L13
	.loc 1 95 15
	li	a5,3
	sb	a5,-37(s0)
	j	.L10
.L13:
	.loc 1 96 32
	lw	a5,-72(s0)
	addi	a5,a5,4
	.loc 1 96 21
	lw	a4,0(a5)
	lui	a5,%hi(.LC5)
	addi	a1,a5,%lo(.LC5)
	mv	a0,a4
	call	strcmp
	mv	a5,a0
	.loc 1 96 15 discriminator 1
	bne	a5,zero,.L14
	.loc 1 97 15
	li	a5,4
	sb	a5,-37(s0)
	j	.L10
.L14:
	.loc 1 98 32
	lw	a5,-72(s0)
	addi	a5,a5,4
	.loc 1 98 21
	lw	a4,0(a5)
	lui	a5,%hi(.LC6)
	addi	a1,a5,%lo(.LC6)
	mv	a0,a4
	call	strcmp
	mv	a5,a0
	.loc 1 98 15 discriminator 1
	bne	a5,zero,.L15
	.loc 1 99 15
	li	a5,5
	sb	a5,-37(s0)
	j	.L10
.L15:
	.loc 1 100 32
	lw	a5,-72(s0)
	addi	a5,a5,4
	.loc 1 100 21
	lw	a4,0(a5)
	lui	a5,%hi(.LC7)
	addi	a1,a5,%lo(.LC7)
	mv	a0,a4
	call	strcmp
	mv	a5,a0
	.loc 1 100 15 discriminator 1
	bne	a5,zero,.L16
	.loc 1 101 15
	li	a5,6
	sb	a5,-37(s0)
	j	.L10
.L16:
	.loc 1 103 60
	lw	a5,-72(s0)
	addi	a5,a5,4
	.loc 1 103 9
	lw	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	bl_printk
	.loc 1 104 16
	li	a5,-1
	j	.L8
.L10:
	.loc 1 108 29
	lw	a5,-72(s0)
	addi	a5,a5,8
	.loc 1 108 14
	lw	a5,0(a5)
	li	a1,46
	mv	a0,a5
	call	findch_sum
	sw	a0,-44(s0)
	.loc 1 110 8
	lw	a5,-44(s0)
	bne	a5,zero,.L17
	.loc 1 111 15
	lui	a5,%hi(_ld_bl_static_blogcomponent_code_start)
	addi	a5,a5,%lo(_ld_bl_static_blogcomponent_code_start)
	sw	a5,-20(s0)
	.loc 1 112 13
	lui	a5,%hi(_ld_bl_static_blogcomponent_code_end)
	addi	a5,a5,%lo(_ld_bl_static_blogcomponent_code_end)
	sw	a5,-24(s0)
	j	.L18
.L17:
	.loc 1 113 15
	lw	a4,-44(s0)
	li	a5,1
	bne	a4,a5,.L19
	.loc 1 114 15
	lui	a5,%hi(_ld_bl_static_blogfile_code_start)
	addi	a5,a5,%lo(_ld_bl_static_blogfile_code_start)
	sw	a5,-20(s0)
	.loc 1 115 13
	lui	a5,%hi(_ld_bl_static_blogfile_code_end)
	addi	a5,a5,%lo(_ld_bl_static_blogfile_code_end)
	sw	a5,-24(s0)
	j	.L18
.L19:
	.loc 1 116 15
	lw	a4,-44(s0)
	li	a5,2
	bne	a4,a5,.L20
	.loc 1 117 15
	lui	a5,%hi(_ld_bl_static_blogpri_code_start)
	addi	a5,a5,%lo(_ld_bl_static_blogpri_code_start)
	sw	a5,-20(s0)
	.loc 1 118 13
	lui	a5,%hi(_ld_bl_static_blogpri_code_end)
	addi	a5,a5,%lo(_ld_bl_static_blogpri_code_end)
	sw	a5,-24(s0)
	j	.L18
.L20:
	.loc 1 120 59
	lw	a5,-72(s0)
	addi	a5,a5,8
	.loc 1 120 9
	lw	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	bl_printk
	.loc 1 121 16
	li	a5,-1
	j	.L8
.L18:
	.loc 1 124 10
	sw	zero,-32(s0)
	.loc 1 125 17
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	srai	a5,a5,3
	.loc 1 125 11
	addi	a5,a5,-1
	sw	a5,-36(s0)
	.loc 1 126 11
	j	.L21
.L26:
	.loc 1 127 21
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	.loc 1 127 30
	srai	a5,a5,1
	.loc 1 127 13
	sw	a5,-48(s0)
	.loc 1 128 31
	lw	a5,-48(s0)
	slli	a5,a5,3
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 1 128 36
	lw	a4,4(a5)
	.loc 1 128 47
	lw	a5,-72(s0)
	addi	a5,a5,8
	.loc 1 128 19
	lw	a5,0(a5)
	mv	a1,a5
	mv	a0,a4
	call	strcmp
	sw	a0,-52(s0)
	.loc 1 129 12
	lw	a5,-52(s0)
	bge	a5,zero,.L22
	.loc 1 130 24
	lw	a5,-48(s0)
	addi	a5,a5,1
	.loc 1 130 18
	sw	a5,-32(s0)
	j	.L21
.L22:
	.loc 1 131 19
	lw	a5,-52(s0)
	ble	a5,zero,.L24
	.loc 1 132 25
	lw	a5,-48(s0)
	addi	a5,a5,-1
	.loc 1 132 19
	sw	a5,-36(s0)
	j	.L21
.L24:
	.loc 1 134 26
	lw	a5,-48(s0)
	slli	a5,a5,3
	.loc 1 134 18
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 135 13
	j	.L25
.L21:
	.loc 1 126 17
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	ble	a4,a5,.L26
.L25:
	.loc 1 139 8
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	ble	a4,a5,.L27
	.loc 1 140 56
	lw	a5,-72(s0)
	addi	a5,a5,8
	.loc 1 140 9
	lw	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC10)
	addi	a0,a5,%lo(.LC10)
	call	bl_printk
	.loc 1 141 16
	li	a5,-1
	j	.L8
.L27:
	.loc 1 145 11
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 145 20
	lbu	a4,-37(s0)
	sb	a4,0(a5)
	.loc 1 146 5
	lw	a5,-28(s0)
	lw	a4,4(a5)
	.loc 1 146 52
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 146 46
	lbu	a5,0(a5)
	.loc 1 146 5
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	bl_printk
	.loc 1 147 12
	li	a5,0
.L8:
	.loc 1 148 1
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
.LFE6:
	.size	set_level, .-set_level
	.section	.rodata
	.align	2
.LC12:
	.string	"set blog error.\r\n"
	.section	.text.cmd_blog_set_level,"ax",@progbits
	.align	1
	.globl	cmd_blog_set_level
	.type	cmd_blog_set_level, @function
cmd_blog_set_level:
.LFB7:
	.loc 1 151 1
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
	.loc 1 152 14
	lw	a1,-32(s0)
	lw	a0,-28(s0)
	call	set_level
	mv	a5,a0
	.loc 1 152 8 discriminator 1
	beq	a5,zero,.L30
	.loc 1 153 9
	lui	a5,%hi(.LC12)
	addi	a0,a5,%lo(.LC12)
	call	bl_printk
.L30:
	.loc 1 155 1
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
.LFE7:
	.size	cmd_blog_set_level, .-cmd_blog_set_level
	.section	.rodata
	.align	2
.LC13:
	.string	"blog code1 = %p - %p\r\n"
	.align	2
.LC14:
	.string	"blog code2 = %p - %p\r\n"
	.align	2
.LC15:
	.string	"blog code3 = %p - %p\r\n"
	.align	2
.LC16:
	.string	"name too long.\r\n"
	.align	2
.LC17:
	.string	"[%-48s] = [%d]\r\n"
	.section	.text.cmd_blog_info_dump,"ax",@progbits
	.align	1
	.globl	cmd_blog_info_dump
	.type	cmd_blog_info_dump, @function
cmd_blog_info_dump:
.LFB8:
	.loc 1 158 1
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sw	ra,172(sp)
	sw	s0,168(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,176
	.cfi_def_cfa 8, 0
	sw	a0,-164(s0)
	sw	a1,-168(s0)
	sw	a2,-172(s0)
	sw	a3,-176(s0)
	.loc 1 160 10
	addi	a5,s0,-156
	li	a4,128
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 169 5
	lui	a5,%hi(_ld_bl_static_blogcomponent_code_end)
	addi	a2,a5,%lo(_ld_bl_static_blogcomponent_code_end)
	lui	a5,%hi(_ld_bl_static_blogcomponent_code_start)
	addi	a1,a5,%lo(_ld_bl_static_blogcomponent_code_start)
	lui	a5,%hi(.LC13)
	addi	a0,a5,%lo(.LC13)
	call	bl_printk
	.loc 1 170 5
	lui	a5,%hi(_ld_bl_static_blogfile_code_end)
	addi	a2,a5,%lo(_ld_bl_static_blogfile_code_end)
	lui	a5,%hi(_ld_bl_static_blogfile_code_start)
	addi	a1,a5,%lo(_ld_bl_static_blogfile_code_start)
	lui	a5,%hi(.LC14)
	addi	a0,a5,%lo(.LC14)
	call	bl_printk
	.loc 1 171 5
	lui	a5,%hi(_ld_bl_static_blogpri_code_end)
	addi	a2,a5,%lo(_ld_bl_static_blogpri_code_end)
	lui	a5,%hi(_ld_bl_static_blogpri_code_start)
	addi	a1,a5,%lo(_ld_bl_static_blogpri_code_start)
	lui	a5,%hi(.LC15)
	addi	a0,a5,%lo(.LC15)
	call	bl_printk
	.loc 1 173 17
	lui	a5,%hi(_ld_bl_static_blogcomponent_code_start)
	addi	a5,a5,%lo(_ld_bl_static_blogcomponent_code_start)
	sw	a5,-20(s0)
	.loc 1 173 5
	j	.L32
.L45:
	.loc 1 175 26
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 175 13
	mv	a0,a5
	call	strlen
	mv	a4,a0
	.loc 1 175 12 discriminator 1
	li	a5,128
	bleu	a4,a5,.L33
	.loc 1 176 13
	lui	a5,%hi(.LC16)
	addi	a0,a5,%lo(.LC16)
	call	bl_printk
	j	.L31
.L33:
	.loc 1 179 21
	lbu	a5,-156(s0)
	.loc 1 179 12
	beq	a5,zero,.L35
	.loc 1 180 45
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 180 22
	addi	a5,s0,-156
	mv	a1,a4
	mv	a0,a5
	call	strcmp
	mv	a5,a0
	.loc 1 180 16 discriminator 1
	beq	a5,zero,.L46
	.loc 1 185 17
	addi	a5,s0,-156
	mv	a0,a5
	call	strlen
	mv	a4,a0
	.loc 1 185 17 is_stmt 0 discriminator 1
	addi	a5,s0,-156
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	memset
.L35:
	.loc 1 189 9 is_stmt 1
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 189 63
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 189 55
	lbu	a5,0(a5)
	.loc 1 189 9
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC17)
	addi	a0,a5,%lo(.LC17)
	call	bl_printk
	.loc 1 191 22
	lbu	a5,-156(s0)
	.loc 1 191 12
	beq	a5,zero,.L38
	.loc 1 191 49 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 191 36 discriminator 1
	addi	a4,s0,-156
	mv	a1,a4
	mv	a0,a5
	call	strcmp
	mv	a5,a0
	.loc 1 191 32 discriminator 2
	beq	a5,zero,.L47
.L38:
	.loc 1 194 32
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 194 9
	addi	a5,s0,-156
	mv	a1,a4
	mv	a0,a5
	call	strcpy
	.loc 1 196 21
	lui	a5,%hi(_ld_bl_static_blogfile_code_start)
	addi	a5,a5,%lo(_ld_bl_static_blogfile_code_start)
	sw	a5,-24(s0)
	.loc 1 196 9
	j	.L39
.L44:
	.loc 1 199 30
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 1 199 44
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 199 17
	mv	a1,a5
	mv	a0,a4
	call	strstr
	mv	a4,a0
	.loc 1 199 61 discriminator 1
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 199 16 discriminator 1
	bne	a4,a5,.L40
	.loc 1 201 17
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 1 201 71
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 201 63
	lbu	a5,0(a5)
	.loc 1 201 17
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC17)
	addi	a0,a5,%lo(.LC17)
	call	bl_printk
	.loc 1 203 29
	lui	a5,%hi(_ld_bl_static_blogpri_code_start)
	addi	a5,a5,%lo(_ld_bl_static_blogpri_code_start)
	sw	a5,-28(s0)
	.loc 1 203 17
	j	.L41
.L43:
	.loc 1 206 38
	lw	a5,-28(s0)
	lw	a4,4(a5)
	.loc 1 206 52
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 206 25
	mv	a1,a5
	mv	a0,a4
	call	strstr
	mv	a4,a0
	.loc 1 206 69 discriminator 1
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 1 206 24 discriminator 1
	bne	a4,a5,.L42
	.loc 1 207 25
	lw	a5,-28(s0)
	lw	a4,4(a5)
	.loc 1 207 79
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 207 71
	lbu	a5,0(a5)
	.loc 1 207 25
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC17)
	addi	a0,a5,%lo(.LC17)
	call	bl_printk
.L42:
	.loc 1 204 89
	lw	a5,-28(s0)
	addi	a5,a5,8
	sw	a5,-28(s0)
.L41:
	.loc 1 204 21 discriminator 1
	lw	a4,-28(s0)
	.loc 1 204 40 discriminator 1
	lui	a5,%hi(_ld_bl_static_blogpri_code_end)
	addi	a5,a5,%lo(_ld_bl_static_blogpri_code_end)
	.loc 1 204 38 discriminator 1
	bltu	a4,a5,.L43
.L40:
	.loc 1 197 82
	lw	a5,-24(s0)
	addi	a5,a5,8
	sw	a5,-24(s0)
.L39:
	.loc 1 197 13 discriminator 1
	lw	a4,-24(s0)
	.loc 1 197 32 discriminator 1
	lui	a5,%hi(_ld_bl_static_blogfile_code_end)
	addi	a5,a5,%lo(_ld_bl_static_blogfile_code_end)
	.loc 1 197 30 discriminator 1
	bltu	a4,a5,.L44
	j	.L37
.L46:
	.loc 1 182 15
	nop
	j	.L37
.L47:
	.loc 1 192 13
	nop
.L37:
	.loc 1 174 84
	lw	a5,-20(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
.L32:
	.loc 1 174 10 discriminator 1
	lw	a4,-20(s0)
	.loc 1 174 29 discriminator 1
	lui	a5,%hi(_ld_bl_static_blogcomponent_code_end)
	addi	a5,a5,%lo(_ld_bl_static_blogcomponent_code_end)
	.loc 1 174 27 discriminator 1
	bltu	a4,a5,.L45
.L31:
	.loc 1 213 1
	lw	ra,172(sp)
	.cfi_restore 1
	lw	s0,168(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	cmd_blog_info_dump, .-cmd_blog_info_dump
	.section	.rodata
	.align	2
.LC18:
	.string	"\r\nblog init set power on level %d, %d, %d.\r\n"
	.section	.text.blog_set_poweron_softlevel,"ax",@progbits
	.align	1
	.type	blog_set_poweron_softlevel, @function
blog_set_poweron_softlevel:
.LFB9:
	.loc 1 223 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 233 5
	li	a3,2
	li	a2,2
	li	a1,2
	lui	a5,%hi(.LC18)
	addi	a0,a5,%lo(.LC18)
	call	bl_printk
	.loc 1 235 16
	lui	a5,%hi(_ld_bl_static_blogcomponent_code_start)
	addi	a5,a5,%lo(_ld_bl_static_blogcomponent_code_start)
	sw	a5,-20(s0)
	.loc 1 235 5
	j	.L49
.L50:
	.loc 1 237 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 237 24
	li	a4,2
	sb	a4,0(a5)
	.loc 1 236 81 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
.L49:
	.loc 1 236 11 discriminator 1
	lw	a4,-20(s0)
	.loc 1 236 28 discriminator 1
	lui	a5,%hi(_ld_bl_static_blogcomponent_code_end)
	addi	a5,a5,%lo(_ld_bl_static_blogcomponent_code_end)
	.loc 1 236 26 discriminator 1
	bltu	a4,a5,.L50
	.loc 1 240 16
	lui	a5,%hi(_ld_bl_static_blogfile_code_start)
	addi	a5,a5,%lo(_ld_bl_static_blogfile_code_start)
	sw	a5,-20(s0)
	.loc 1 240 5
	j	.L51
.L52:
	.loc 1 242 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 242 24
	li	a4,2
	sb	a4,0(a5)
	.loc 1 241 76 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
.L51:
	.loc 1 241 11 discriminator 1
	lw	a4,-20(s0)
	.loc 1 241 28 discriminator 1
	lui	a5,%hi(_ld_bl_static_blogfile_code_end)
	addi	a5,a5,%lo(_ld_bl_static_blogfile_code_end)
	.loc 1 241 26 discriminator 1
	bltu	a4,a5,.L52
	.loc 1 245 16
	lui	a5,%hi(_ld_bl_static_blogpri_code_start)
	addi	a5,a5,%lo(_ld_bl_static_blogpri_code_start)
	sw	a5,-20(s0)
	.loc 1 245 5
	j	.L53
.L54:
	.loc 1 247 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 247 24
	li	a4,2
	sb	a4,0(a5)
	.loc 1 246 75 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
.L53:
	.loc 1 246 11 discriminator 1
	lw	a4,-20(s0)
	.loc 1 246 28 discriminator 1
	lui	a5,%hi(_ld_bl_static_blogpri_code_end)
	addi	a5,a5,%lo(_ld_bl_static_blogpri_code_end)
	.loc 1 246 26 discriminator 1
	bltu	a4,a5,.L54
	.loc 1 249 1
	nop
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
	.size	blog_set_poweron_softlevel, .-blog_set_poweron_softlevel
	.section	.rodata
	.align	2
.LC19:
	.string	"%.*s"
	.section	.text.blog_port_output,"ax",@progbits
	.align	1
	.globl	blog_port_output
	.type	blog_port_output, @function
blog_port_output:
.LFB10:
	.loc 1 257 53
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
	.loc 1 259 5
	lw	a2,-20(s0)
	lw	a1,-24(s0)
	lui	a5,%hi(.LC19)
	addi	a0,a5,%lo(.LC19)
	call	bl_printk
	.loc 1 261 1
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
	.size	blog_port_output, .-blog_port_output
	.section	.rodata
	.align	2
.LC20:
	.string	"assert.\r\n"
	.section	.text.blog_strcpy,"ax",@progbits
	.align	1
	.globl	blog_strcpy
	.type	blog_strcpy, @function
blog_strcpy:
.LFB11:
	.loc 1 272 64
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
	.loc 1 273 17
	lw	a5,-44(s0)
	sw	a5,-20(s0)
	.loc 1 275 8
	lw	a5,-40(s0)
	beq	a5,zero,.L57
	.loc 1 275 16 discriminator 1
	lw	a5,-44(s0)
	bne	a5,zero,.L60
.L57:
	.loc 1 276 9
	lui	a5,%hi(.LC20)
	addi	a0,a5,%lo(.LC20)
	call	bl_printk
	.loc 1 277 16
	li	a5,0
	j	.L59
.L63:
	.loc 1 282 20
	lw	a5,-36(s0)
	addi	a4,a5,1
	sw	a4,-36(s0)
	.loc 1 282 12
	li	a4,255
	bgtu	a5,a4,.L64
	.loc 1 283 26
	lw	a4,-44(s0)
	addi	a5,a4,1
	sw	a5,-44(s0)
	.loc 1 283 17
	lw	a5,-40(s0)
	addi	a3,a5,1
	sw	a3,-40(s0)
	.loc 1 283 22
	lbu	a4,0(a4)
	.loc 1 283 20
	sb	a4,0(a5)
.L60:
	.loc 1 280 12
	lw	a5,-44(s0)
	lbu	a5,0(a5)
	.loc 1 280 17
	bne	a5,zero,.L63
	j	.L62
.L64:
	.loc 1 285 13
	nop
.L62:
	.loc 1 288 16
	lw	a4,-44(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
.L59:
	.loc 1 289 1
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
.LFE11:
	.size	blog_strcpy, .-blog_strcpy
	.section	.rodata
	.align	2
.LC21:
	.string	"[%s]: %04X-%04X: "
	.align	2
.LC22:
	.string	"%02X "
	.align	2
.LC23:
	.string	"   "
	.align	2
.LC24:
	.string	" "
	.align	2
.LC25:
	.string	"  "
	.align	2
.LC26:
	.string	"%c"
	.align	2
.LC27:
	.string	"\r\n"
	.section	.text.blog_hexdump_out,"ax",@progbits
	.align	1
	.globl	blog_hexdump_out
	.type	blog_hexdump_out, @function
blog_hexdump_out:
.LFB12:
	.loc 1 299 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	mv	a5,a1
	sw	a2,-60(s0)
	mv	a4,a3
	sb	a5,-53(s0)
	mv	a5,a4
	sh	a5,-56(s0)
	.loc 1 303 14
	sh	zero,-22(s0)
	.loc 1 304 10
	sw	zero,-36(s0)
	sw	zero,-32(s0)
	.loc 1 309 12
	sh	zero,-18(s0)
	.loc 1 309 5
	j	.L66
.L80:
	.loc 1 311 22
	lhu	a3,-18(s0)
	.loc 1 311 79
	lhu	a4,-18(s0)
	lbu	a5,-53(s0)
	add	a5,a4,a5
	.loc 1 311 22
	addi	a5,a5,-1
	mv	a4,a3
	lw	a3,-52(s0)
	lui	a2,%hi(.LC21)
	addi	a2,a2,%lo(.LC21)
	li	a1,256
	lui	a0,%hi(log_buf)
	addi	a0,a0,%lo(log_buf)
	call	snprintf
	sw	a0,-28(s0)
	.loc 1 313 12
	lw	a5,-28(s0)
	blt	a5,zero,.L67
	.loc 1 313 31 discriminator 1
	lw	a4,-28(s0)
	li	a5,256
	bgt	a4,a5,.L67
	.loc 1 314 21
	lw	a5,-28(s0)
	sh	a5,-22(s0)
	j	.L68
.L67:
	.loc 1 316 21
	li	a5,256
	sh	a5,-22(s0)
.L68:
	.loc 1 319 16
	sh	zero,-20(s0)
	.loc 1 319 9
	j	.L69
.L73:
	.loc 1 320 19
	lhu	a4,-18(s0)
	lhu	a5,-20(s0)
	add	a4,a4,a5
	.loc 1 320 23
	lhu	a5,-56(s0)
	.loc 1 320 16
	bge	a4,a5,.L70
	.loc 1 321 75
	lhu	a4,-18(s0)
	lhu	a5,-20(s0)
	add	a5,a4,a5
	mv	a4,a5
	.loc 1 321 72
	lw	a5,-60(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	.loc 1 321 17
	addi	a4,s0,-36
	mv	a3,a5
	lui	a5,%hi(.LC22)
	addi	a2,a5,%lo(.LC22)
	li	a1,8
	mv	a0,a4
	call	snprintf
	j	.L71
.L70:
	.loc 1 323 17
	addi	a4,s0,-36
	li	a2,8
	lui	a5,%hi(.LC23)
	addi	a1,a5,%lo(.LC23)
	mv	a0,a4
	call	strncpy
.L71:
	.loc 1 325 24
	lhu	a3,-22(s0)
	lhu	a4,-22(s0)
	lui	a5,%hi(log_buf)
	addi	a5,a5,%lo(log_buf)
	add	a5,a4,a5
	addi	a4,s0,-36
	mv	a2,a4
	mv	a1,a5
	mv	a0,a3
	call	blog_strcpy
	mv	a5,a0
	.loc 1 325 21 discriminator 1
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-22(s0)
	add	a5,a5,a4
	sh	a5,-22(s0)
	.loc 1 326 20
	lhu	a5,-20(s0)
	addi	a5,a5,1
	.loc 1 326 29
	andi	a5,a5,7
	.loc 1 326 16
	bne	a5,zero,.L72
	.loc 1 327 28
	lhu	a3,-22(s0)
	lhu	a4,-22(s0)
	lui	a5,%hi(log_buf)
	addi	a5,a5,%lo(log_buf)
	add	a4,a4,a5
	lui	a5,%hi(.LC24)
	addi	a2,a5,%lo(.LC24)
	mv	a1,a4
	mv	a0,a3
	call	blog_strcpy
	mv	a5,a0
	.loc 1 327 25 discriminator 1
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-22(s0)
	add	a5,a5,a4
	sh	a5,-22(s0)
.L72:
	.loc 1 319 33 discriminator 2
	lhu	a5,-20(s0)
	addi	a5,a5,1
	sh	a5,-20(s0)
.L69:
	.loc 1 319 23 discriminator 1
	lbu	a5,-53(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-20(s0)
	bltu	a4,a5,.L73
	.loc 1 330 20
	lhu	a3,-22(s0)
	lhu	a4,-22(s0)
	lui	a5,%hi(log_buf)
	addi	a5,a5,%lo(log_buf)
	add	a4,a4,a5
	lui	a5,%hi(.LC25)
	addi	a2,a5,%lo(.LC25)
	mv	a1,a4
	mv	a0,a3
	call	blog_strcpy
	mv	a5,a0
	.loc 1 330 17 discriminator 1
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-22(s0)
	add	a5,a5,a4
	sh	a5,-22(s0)
	.loc 1 332 16
	sh	zero,-20(s0)
	.loc 1 332 9
	j	.L74
.L78:
	.loc 1 333 19
	lhu	a4,-18(s0)
	lhu	a5,-20(s0)
	add	a4,a4,a5
	.loc 1 333 23
	lhu	a5,-56(s0)
	.loc 1 333 16
	bge	a4,a5,.L75
	.loc 1 334 89
	lhu	a4,-18(s0)
	lhu	a5,-20(s0)
	add	a5,a4,a5
	mv	a4,a5
	.loc 1 334 86
	lw	a5,-60(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	.loc 1 334 95
	addi	a5,a5,-32
	.loc 1 334 67
	mv	a4,a5
	.loc 1 334 17
	li	a5,94
	bgtu	a4,a5,.L76
	.loc 1 334 124 discriminator 1
	lhu	a4,-18(s0)
	lhu	a5,-20(s0)
	add	a5,a4,a5
	mv	a4,a5
	.loc 1 334 121 discriminator 1
	lw	a5,-60(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	j	.L77
.L76:
	.loc 1 334 17 discriminator 2
	li	a5,46
.L77:
	.loc 1 334 17 is_stmt 0 discriminator 4
	addi	a4,s0,-36
	mv	a3,a5
	lui	a5,%hi(.LC26)
	addi	a2,a5,%lo(.LC26)
	li	a1,8
	mv	a0,a4
	call	snprintf
	.loc 1 335 28 is_stmt 1
	lhu	a3,-22(s0)
	lhu	a4,-22(s0)
	lui	a5,%hi(log_buf)
	addi	a5,a5,%lo(log_buf)
	add	a5,a4,a5
	addi	a4,s0,-36
	mv	a2,a4
	mv	a1,a5
	mv	a0,a3
	call	blog_strcpy
	mv	a5,a0
	.loc 1 335 25 discriminator 1
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-22(s0)
	add	a5,a5,a4
	sh	a5,-22(s0)
.L75:
	.loc 1 332 33 discriminator 2
	lhu	a5,-20(s0)
	addi	a5,a5,1
	sh	a5,-20(s0)
.L74:
	.loc 1 332 23 discriminator 1
	lbu	a5,-53(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-20(s0)
	bltu	a4,a5,.L78
	.loc 1 339 21
	lhu	s1,-22(s0)
	.loc 1 339 23
	lui	a5,%hi(.LC27)
	addi	a0,a5,%lo(.LC27)
	call	strlen
	mv	a5,a0
	.loc 1 339 21 discriminator 1
	add	a4,s1,a5
	.loc 1 339 12 discriminator 1
	li	a5,256
	bleu	a4,a5,.L79
	.loc 1 340 31
	lui	a5,%hi(.LC27)
	addi	a0,a5,%lo(.LC27)
	call	strlen
	mv	a5,a0
	.loc 1 340 29 discriminator 1
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 340 21 discriminator 1
	li	a4,256
	sub	a5,a4,a5
	sh	a5,-22(s0)
.L79:
	.loc 1 343 20
	lhu	a3,-22(s0)
	lhu	a4,-22(s0)
	lui	a5,%hi(log_buf)
	addi	a5,a5,%lo(log_buf)
	add	a4,a4,a5
	lui	a5,%hi(.LC27)
	addi	a2,a5,%lo(.LC27)
	mv	a1,a4
	mv	a0,a3
	call	blog_strcpy
	mv	a5,a0
	.loc 1 343 17 discriminator 1
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-22(s0)
	add	a5,a5,a4
	sh	a5,-22(s0)
	.loc 1 346 9
	lhu	a5,-22(s0)
	mv	a1,a5
	lui	a5,%hi(log_buf)
	addi	a0,a5,%lo(log_buf)
	call	blog_port_output
	.loc 1 309 29 discriminator 2
	lbu	a5,-53(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-18(s0)
	add	a5,a5,a4
	sh	a5,-18(s0)
.L66:
	.loc 1 309 19 discriminator 1
	lhu	a4,-18(s0)
	lhu	a5,-56(s0)
	bltu	a4,a5,.L80
	.loc 1 350 1
	nop
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	blog_hexdump_out, .-blog_hexdump_out
	.section	.text.blog_init,"ax",@progbits
	.align	1
	.globl	blog_init
	.type	blog_init, @function
blog_init:
.LFB13:
	.loc 1 353 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 354 5
	call	blog_set_poweron_softlevel
	.loc 1 355 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	blog_init, .-blog_init
	.section	.rodata
	.align	2
.LC28:
	.string	"blogset"
	.align	2
.LC29:
	.string	"blog pri set level"
	.align	2
.LC30:
	.string	"blogdump"
	.align	2
.LC31:
	.string	"blog info dump"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 24
cmds_user:
	.word	.LC28
	.word	.LC29
	.word	cmd_blog_set_level
	.word	.LC30
	.word	.LC31
	.word	cmd_blog_info_dump
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/stage/cli/cli/include/cli.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/stage/blog/blog_type.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6e9
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x19
	.4byte	.LASF72
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
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1a
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x3
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x1b
	.byte	0x4
	.uleb128 0x5
	.4byte	0x90
	.uleb128 0x13
	.4byte	0x86
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xf
	.4byte	0x90
	.uleb128 0x5
	.4byte	0x97
	.uleb128 0x13
	.4byte	0x9c
	.uleb128 0x10
	.4byte	0x90
	.4byte	0xb6
	.uleb128 0x11
	.4byte	0x6a
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.4byte	.LASF25
	.byte	0xc
	.byte	0x2
	.byte	0x4c
	.byte	0x8
	.4byte	0xeb
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x2
	.byte	0x4d
	.byte	0x11
	.4byte	0x9c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x2
	.byte	0x4e
	.byte	0x11
	.4byte	0x9c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x2
	.byte	0x50
	.byte	0xc
	.4byte	0x10f
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.4byte	0xb6
	.uleb128 0x1c
	.4byte	0x10a
	.uleb128 0x1
	.4byte	0x86
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x10a
	.byte	0
	.uleb128 0x5
	.4byte	0x86
	.uleb128 0x5
	.4byte	0xf0
	.uleb128 0x10
	.4byte	0x90
	.4byte	0x124
	.uleb128 0x11
	.4byte	0x6a
	.byte	0xff
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF73
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x4
	.byte	0x21
	.byte	0xe
	.4byte	0x161
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x4
	.byte	0x29
	.byte	0x3
	.4byte	0x124
	.uleb128 0x14
	.4byte	.LASF26
	.byte	0x8
	.byte	0x4
	.byte	0x2b
	.byte	0x10
	.4byte	0x195
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x4
	.byte	0x2c
	.byte	0x13
	.4byte	0x195
	.byte	0
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2d
	.byte	0xb
	.4byte	0x86
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	0x161
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x4
	.byte	0x2e
	.byte	0x3
	.4byte	0x16d
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0xf
	.4byte	0x1a6
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x5
	.byte	0x31
	.byte	0x1c
	.4byte	0x40
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x2d
	.byte	0xd
	.4byte	0x114
	.uleb128 0x5
	.byte	0x3
	.4byte	log_buf
	.uleb128 0x10
	.4byte	0xeb
	.4byte	0x1f0
	.uleb128 0x11
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.4byte	0x1e0
	.uleb128 0xc
	.4byte	.LASF33
	.2byte	0x165
	.byte	0x21
	.4byte	0x1f0
	.uleb128 0x5
	.byte	0x3
	.4byte	cmds_user
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x2c
	.byte	0x7
	.4byte	0x86
	.4byte	0x226
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF35
	.byte	0x7
	.2byte	0x110
	.byte	0x5
	.4byte	0x63
	.4byte	0x248
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x71
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x15
	.byte	0
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x30
	.byte	0x7
	.4byte	0x86
	.4byte	0x262
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0x9c
	.byte	0
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x26
	.byte	0x7
	.4byte	0x86
	.4byte	0x27c
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0x29b
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x24
	.byte	0x5
	.4byte	0x63
	.4byte	0x2b5
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x1
	.4byte	0x9c
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF74
	.byte	0x8
	.byte	0x9e
	.byte	0x6
	.4byte	0x2c8
	.uleb128 0x1
	.4byte	0x9c
	.uleb128 0x15
	.byte	0
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x29
	.byte	0x8
	.4byte	0x71
	.4byte	0x2dd
	.uleb128 0x1
	.4byte	0x9c
	.byte	0
	.uleb128 0x20
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x160
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.4byte	.LASF48
	.2byte	0x12a
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x385
	.uleb128 0xd
	.4byte	.LASF13
	.2byte	0x12a
	.byte	0x23
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xd
	.4byte	.LASF41
	.2byte	0x12a
	.byte	0x31
	.4byte	0x1a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x12
	.string	"buf"
	.2byte	0x12a
	.byte	0x47
	.4byte	0x385
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xd
	.4byte	.LASF42
	.2byte	0x12a
	.byte	0x55
	.4byte	0x1b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"i"
	.byte	0xe
	.4byte	0x1b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x17
	.string	"j"
	.byte	0x11
	.4byte	0x1b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF43
	.2byte	0x12f
	.byte	0xe
	.4byte	0x1b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0xc
	.4byte	.LASF44
	.2byte	0x130
	.byte	0xa
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF45
	.2byte	0x131
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x5
	.4byte	0x1b2
	.uleb128 0x21
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x110
	.byte	0x8
	.4byte	0x71
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e2
	.uleb128 0xd
	.4byte	.LASF46
	.2byte	0x110
	.byte	0x1b
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"dst"
	.2byte	0x110
	.byte	0x2a
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"src"
	.2byte	0x110
	.byte	0x3b
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.4byte	.LASF47
	.2byte	0x111
	.byte	0x11
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF49
	.2byte	0x101
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x416
	.uleb128 0x12
	.string	"log"
	.2byte	0x101
	.byte	0x23
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LASF42
	.2byte	0x101
	.byte	0x2f
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.4byte	.LASF70
	.byte	0x1
	.byte	0xde
	.byte	0xd
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x477
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0xe0
	.byte	0x12
	.4byte	0x477
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0xe2
	.4byte	0x90
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0xe3
	.4byte	0x90
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0xe4
	.4byte	0x90
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0xe5
	.4byte	0x90
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0xe6
	.4byte	0x90
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0xe7
	.4byte	0x90
	.byte	0
	.uleb128 0x5
	.4byte	0x19a
	.uleb128 0x18
	.4byte	.LASF57
	.byte	0x9d
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x542
	.uleb128 0x9
	.string	"buf"
	.byte	0x9d
	.byte	0x2f
	.4byte	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x9
	.string	"len"
	.byte	0x9d
	.byte	0x48
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x9d
	.byte	0x61
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x9d
	.byte	0x7e
	.4byte	0x10a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x9f
	.byte	0x12
	.4byte	0x477
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x9f
	.byte	0x1b
	.4byte	0x477
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x9f
	.byte	0x24
	.4byte	0x477
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xa0
	.byte	0xa
	.4byte	0x542
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0xa2
	.4byte	0x90
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0xa3
	.4byte	0x90
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0xa4
	.4byte	0x90
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0xa5
	.4byte	0x90
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0xa6
	.4byte	0x90
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0xa7
	.4byte	0x90
	.byte	0
	.uleb128 0x10
	.4byte	0x90
	.4byte	0x552
	.uleb128 0x11
	.4byte	0x6a
	.byte	0x7f
	.byte	0
	.uleb128 0x18
	.4byte	.LASF64
	.byte	0x96
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x59f
	.uleb128 0x9
	.string	"buf"
	.byte	0x96
	.byte	0x2f
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"len"
	.byte	0x96
	.byte	0x48
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x96
	.byte	0x51
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x96
	.byte	0x5e
	.4byte	0x10a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.4byte	.LASF77
	.byte	0x1
	.byte	0x3d
	.byte	0xc
	.4byte	0x63
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x692
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x3d
	.byte	0x1a
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x3d
	.byte	0x27
	.4byte	0x10a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0x3f
	.4byte	0x90
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x40
	.4byte	0x90
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0x41
	.4byte	0x90
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0x42
	.4byte	0x90
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0x43
	.4byte	0x90
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x44
	.4byte	0x90
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x46
	.byte	0x12
	.4byte	0x477
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"end"
	.byte	0x47
	.byte	0x12
	.4byte	0x477
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x48
	.byte	0x12
	.4byte	0x477
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x4a
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x4b
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.string	"mid"
	.byte	0x4c
	.byte	0xe
	.4byte	0x1c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x4d
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x4e
	.byte	0x12
	.4byte	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x50
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x24
	.4byte	.LASF71
	.byte	0x1
	.byte	0x2f
	.byte	0xc
	.4byte	0x63
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.string	"str"
	.byte	0x2f
	.byte	0x23
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"ch"
	.byte	0x2f
	.byte	0x2d
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0xe
	.string	"i"
	.byte	0x31
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"len"
	.byte	0x32
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xe
	.string	"ret"
	.byte	0x33
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 17
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0xa
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 302
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x20
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
	.uleb128 0x22
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
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"_blog_info"
.LASF34:
	.string	"strncpy"
.LASF61:
	.string	"info_f"
.LASF68:
	.string	"cmp_val"
.LASF73:
	.string	"_blog_leve"
.LASF56:
	.string	"_ld_bl_static_blogpri_code_end"
.LASF4:
	.string	"short int"
.LASF23:
	.string	"size_t"
.LASF14:
	.string	"help"
.LASF29:
	.string	"uint8_t"
.LASF20:
	.string	"BLOG_LEVEL_ERROR"
.LASF31:
	.string	"uint32_t"
.LASF52:
	.string	"_ld_bl_static_blogcomponent_code_end"
.LASF54:
	.string	"_ld_bl_static_blogfile_code_end"
.LASF41:
	.string	"width"
.LASF62:
	.string	"info_p"
.LASF51:
	.string	"_ld_bl_static_blogcomponent_code_start"
.LASF8:
	.string	"long long int"
.LASF50:
	.string	"info"
.LASF38:
	.string	"memset"
.LASF6:
	.string	"long int"
.LASF32:
	.string	"log_buf"
.LASF60:
	.string	"info_c"
.LASF46:
	.string	"cur_len"
.LASF35:
	.string	"snprintf"
.LASF13:
	.string	"name"
.LASF11:
	.string	"long double"
.LASF67:
	.string	"right"
.LASF3:
	.string	"unsigned char"
.LASF44:
	.string	"dump_string"
.LASF58:
	.string	"argc"
.LASF21:
	.string	"BLOG_LEVEL_ASSERT"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF77:
	.string	"set_level"
.LASF10:
	.string	"unsigned int"
.LASF30:
	.string	"uint16_t"
.LASF75:
	.string	"blog_init"
.LASF18:
	.string	"BLOG_LEVEL_INFO"
.LASF59:
	.string	"argv"
.LASF69:
	.string	"ch_sum"
.LASF65:
	.string	"start"
.LASF5:
	.string	"short unsigned int"
.LASF12:
	.string	"char"
.LASF17:
	.string	"BLOG_LEVEL_DEBUG"
.LASF15:
	.string	"function"
.LASF40:
	.string	"strlen"
.LASF66:
	.string	"left"
.LASF37:
	.string	"strcpy"
.LASF72:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF47:
	.string	"src_old"
.LASF63:
	.string	"name_buf"
.LASF53:
	.string	"_ld_bl_static_blogfile_code_start"
.LASF48:
	.string	"blog_hexdump_out"
.LASF45:
	.string	"fmt_result"
.LASF16:
	.string	"BLOG_LEVEL_ALL"
.LASF28:
	.string	"blog_info_t"
.LASF7:
	.string	"long unsigned int"
.LASF55:
	.string	"_ld_bl_static_blogpri_code_start"
.LASF42:
	.string	"size"
.LASF57:
	.string	"cmd_blog_info_dump"
.LASF71:
	.string	"findch_sum"
.LASF64:
	.string	"cmd_blog_set_level"
.LASF27:
	.string	"level"
.LASF39:
	.string	"strcmp"
.LASF25:
	.string	"cli_command"
.LASF76:
	.string	"blog_strcpy"
.LASF33:
	.string	"cmds_user"
.LASF36:
	.string	"strstr"
.LASF49:
	.string	"blog_port_output"
.LASF74:
	.string	"bl_printk"
.LASF19:
	.string	"BLOG_LEVEL_WARN"
.LASF22:
	.string	"BLOG_LEVEL_NEVER"
.LASF24:
	.string	"blog_level_t"
.LASF70:
	.string	"blog_set_poweron_softlevel"
.LASF43:
	.string	"log_len"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/blog"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/blog/blog.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
