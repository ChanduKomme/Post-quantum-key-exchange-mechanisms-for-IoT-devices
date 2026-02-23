	.file	"cli.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/cli" "/home/chandu/sdk/bl602_iot_sdk/components/stage/cli/cli/cli.c"
	.section	.sbss.cli,"aw",@nobits
	.align	2
	.type	cli, @object
	.size	cli, 4
cli:
	.zero	4
	.section	.sbss.cliexit,"aw",@nobits
	.align	2
	.type	cliexit, @object
	.size	cliexit, 4
cliexit:
	.zero	4
	.globl	esc_tag
	.section	.bss.esc_tag,"aw",@nobits
	.align	2
	.type	esc_tag, @object
	.size	esc_tag, 64
esc_tag:
	.zero	64
	.section	.sbss.esc_tag_len,"aw",@nobits
	.type	esc_tag_len, @object
	.size	esc_tag_len, 1
esc_tag_len:
	.zero	1
	.section	.sbss.cli_task,"aw",@nobits
	.align	2
	.type	cli_task, @object
	.size	cli_task, 4
cli_task:
	.zero	4
	.section	.sbss.fd_console,"aw",@nobits
	.align	2
	.type	fd_console, @object
	.size	fd_console, 4
fd_console:
	.zero	4
	.section	.text.cli_command_get,"ax",@progbits
	.align	1
	.type	cli_command_get, @function
cli_command_get:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/stage/cli/cli/cli.c"
	.loc 1 87 1
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
	.loc 1 88 8
	lw	a5,-20(s0)
	blt	a5,zero,.L2
	.loc 1 88 32 discriminator 1
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a5,44(a5)
	.loc 1 88 50 discriminator 1
	addi	a4,a5,8
	.loc 1 88 27 discriminator 1
	lw	a5,-20(s0)
	.loc 1 88 9 discriminator 1
	bgtu	a4,a5,.L3
.L2:
	.loc 1 89 16
	li	a5,-1
	j	.L4
.L3:
	.loc 1 91 18
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a4,44(a5)
	.loc 1 91 13
	lw	a5,-20(s0)
	.loc 1 91 8
	bleu	a4,a5,.L5
	.loc 1 92 12
	lw	a5,-24(s0)
	beq	a5,zero,.L6
	.loc 1 93 28
	lw	a5,-24(s0)
	li	a4,1
	sw	a4,0(a5)
.L6:
	.loc 1 95 20
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a3,8(a5)
	.loc 1 95 33
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	.loc 1 95 16
	add	a5,a3,a5
	j	.L4
.L5:
	.loc 1 97 8
	lw	a5,-24(s0)
	beq	a5,zero,.L7
	.loc 1 98 24
	lw	a5,-24(s0)
	sw	zero,0(a5)
.L7:
	.loc 1 100 15
	lui	a5,%hi(cli)
	lw	a4,%lo(cli)(a5)
	.loc 1 100 34
	lw	a3,-20(s0)
	.loc 1 100 39
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a5,44(a5)
	.loc 1 100 34
	sub	a5,a3,a5
	.loc 1 100 29
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,12(a5)
.L4:
	.loc 1 101 1
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
.LFE5:
	.size	cli_command_get, .-cli_command_get
	.section	.text.lookup_command,"ax",@progbits
	.align	1
	.type	lookup_command, @function
lookup_command:
.LFB6:
	.loc 1 108 1
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
	.loc 1 109 9
	sw	zero,-20(s0)
	.loc 1 110 9
	sw	zero,-24(s0)
	.loc 1 112 11
	j	.L9
.L16:
.LBB2:
	.loc 1 113 41
	li	a1,0
	lw	a0,-20(s0)
	call	cli_command_get
	sw	a0,-28(s0)
	.loc 1 114 16
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 114 12
	bne	a5,zero,.L10
	.loc 1 115 14
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 116 13
	j	.L9
.L10:
	.loc 1 119 12
	lw	a5,-40(s0)
	beq	a5,zero,.L12
	.loc 1 120 29
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 120 18
	lw	a4,-40(s0)
	mv	a2,a4
	lw	a1,-36(s0)
	mv	a0,a5
	call	strncmp
	mv	a5,a0
	.loc 1 120 16 discriminator 1
	bne	a5,zero,.L13
	.loc 1 121 24
	lw	a5,-28(s0)
	j	.L14
.L12:
	.loc 1 124 28
	lw	a5,-28(s0)
	lw	a5,0(a5)
	.loc 1 124 18
	lw	a1,-36(s0)
	mv	a0,a5
	call	strcmp
	mv	a5,a0
	.loc 1 124 16 discriminator 1
	bne	a5,zero,.L13
	.loc 1 125 24
	lw	a5,-28(s0)
	j	.L14
.L13:
	.loc 1 129 10
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 130 10
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L9:
.LBE2:
	.loc 1 112 19
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a5,44(a5)
	.loc 1 112 37
	addi	a4,a5,8
	.loc 1 112 14
	lw	a5,-20(s0)
	.loc 1 112 41
	bleu	a4,a5,.L15
	.loc 1 112 51 discriminator 1
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a4,48(a5)
	.loc 1 112 46 discriminator 1
	lw	a5,-24(s0)
	.loc 1 112 41 discriminator 1
	bgtu	a4,a5,.L16
.L15:
	.loc 1 133 11
	li	a5,0
.L14:
	.loc 1 134 1
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
	.size	lookup_command, .-lookup_command
	.section	.rodata
	.align	2
.LC0:
	.string	"\r\n"
	.align	2
.LC1:
	.string	"Error! cli alloc mem fail!\r\n"
	.align	2
.LC2:
	.string	"%s"
	.section	.text.proc_onecmd,"ax",@progbits
	.align	1
	.globl	proc_onecmd
	.type	proc_onecmd, @function
proc_onecmd:
.LFB7:
	.loc 1 142 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 143 9
	sw	zero,-20(s0)
	.loc 1 145 31
	sw	zero,-24(s0)
	.loc 1 147 8
	lw	a5,-36(s0)
	bgt	a5,zero,.L18
	.loc 1 148 16
	li	a5,0
	j	.L19
.L18:
	.loc 1 151 13
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a5,4(a5)
	.loc 1 151 8
	bne	a5,zero,.L20
	.loc 1 152 9
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
.L20:
	.loc 1 160 15
	lw	a5,-40(s0)
	lw	a5,0(a5)
	li	a1,46
	mv	a0,a5
	call	strchr
	sw	a0,-28(s0)
	.loc 1 160 49 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L21
	.loc 1 160 60 discriminator 2
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 160 7 discriminator 2
	lw	a4,-28(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	j	.L22
.L21:
	.loc 1 160 7 is_stmt 0 discriminator 3
	sw	zero,-20(s0)
.L22:
	.loc 1 162 15 is_stmt 1
	lw	a5,-40(s0)
	lw	a5,0(a5)
	lw	a1,-20(s0)
	mv	a0,a5
	call	lookup_command
	sw	a0,-24(s0)
	.loc 1 163 8
	lw	a5,-24(s0)
	bne	a5,zero,.L23
	.loc 1 164 16
	li	a5,1
	j	.L19
.L23:
	.loc 1 167 8
	lui	a5,%hi(cli)
	lw	s1,%lo(cli)(a5)
	.loc 1 167 19
	li	a0,512
	call	aos_malloc
	mv	a5,a0
	.loc 1 167 17 discriminator 1
	sw	a5,312(s1)
	.loc 1 168 19
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a5,312(a5)
	.loc 1 168 8
	bne	a5,zero,.L24
	.loc 1 169 9
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	aos_cli_printf
	.loc 1 170 16
	li	a5,1
	j	.L19
.L24:
	.loc 1 172 15
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a5,312(a5)
	.loc 1 172 5
	li	a2,512
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 174 12
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 174 26
	lui	a4,%hi(cli)
	lw	a4,%lo(cli)(a4)
	.loc 1 174 5
	lw	a4,312(a4)
	lw	a3,-40(s0)
	lw	a2,-36(s0)
	li	a1,512
	mv	a0,a4
	jalr	a5
.LVL0:
	.loc 1 175 29
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	.loc 1 175 5
	lw	a5,312(a5)
	mv	a1,a5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	aos_cli_printf
	.loc 1 177 17
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a5,312(a5)
	.loc 1 177 5
	mv	a0,a5
	call	aos_free
	.loc 1 178 8
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	.loc 1 178 17
	sw	zero,312(a5)
	.loc 1 179 12
	li	a5,0
.L19:
	.loc 1 180 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	proc_onecmd, .-proc_onecmd
	.section	.text.handle_input,"ax",@progbits
	.align	1
	.type	handle_input, @function
handle_input:
.LFB8:
	.loc 1 194 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	.loc 1 202 9
	sw	zero,-52(s0)
	sw	zero,-48(s0)
	sw	zero,-44(s0)
	sw	zero,-40(s0)
	.loc 1 206 9
	sw	zero,-20(s0)
	.loc 1 207 10
	addi	a5,s0,-52
	sw	a5,-24(s0)
	.loc 1 208 9
	sw	zero,-28(s0)
	.loc 1 209 9
	sw	zero,-32(s0)
	.loc 1 211 5
	li	a2,256
	li	a1,0
	lui	a5,%hi(argvall.3)
	addi	a0,a5,%lo(argvall.3)
	call	memset
	.loc 1 212 5
	addi	a5,s0,-52
	li	a2,16
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 213 5
	addi	a5,s0,-36
	li	a2,4
	li	a1,0
	mv	a0,a5
	call	memset
.L46:
	.loc 1 216 22
	lw	a5,-28(s0)
	lw	a4,-68(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 216 9
	li	a4,59
	beq	a5,a4,.L26
	li	a4,59
	bgt	a5,a4,.L27
	li	a4,34
	beq	a5,a4,.L28
	li	a4,34
	bgt	a5,a4,.L27
	beq	a5,zero,.L29
	li	a4,32
	beq	a5,a4,.L30
	j	.L27
.L29:
	.loc 1 218 21
	lbu	a5,-36(s0)
	andi	a5,a5,2
	andi	a5,a5,0xff
	.loc 1 218 20
	beq	a5,zero,.L31
	.loc 1 219 28
	li	a5,2
	j	.L51
.L31:
	.loc 1 221 27
	lbu	a5,-36(s0)
	ori	a5,a5,4
	sb	a5,-36(s0)
	.loc 1 222 17
	j	.L33
.L28:
	.loc 1 225 20
	lw	a5,-28(s0)
	ble	a5,zero,.L34
	.loc 1 225 35 discriminator 1
	lw	a5,-28(s0)
	addi	a5,a5,-1
	lw	a4,-68(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 1 225 27 discriminator 1
	li	a5,92
	bne	a4,a5,.L34
	.loc 1 225 51 discriminator 2
	lbu	a5,-36(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	beq	a5,zero,.L34
	.loc 1 226 34
	lw	a5,-28(s0)
	addi	a5,a5,-1
	.loc 1 226 28
	lw	a4,-68(s0)
	add	s1,a4,a5
	.loc 1 226 21
	lw	a5,-28(s0)
	.loc 1 226 43
	lw	a4,-68(s0)
	add	s2,a4,a5
	.loc 1 226 54
	lw	a5,-28(s0)
	.loc 1 226 61
	lw	a4,-68(s0)
	add	a5,a4,a5
	.loc 1 226 54
	mv	a0,a5
	call	strlen
	mv	a5,a0
	.loc 1 226 21 discriminator 1
	addi	a5,a5,1
	mv	a2,a5
	mv	a1,s2
	mv	a0,s1
	call	memcpy
	.loc 1 227 21
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
	.loc 1 228 21
	j	.L33
.L34:
	.loc 1 230 21
	lbu	a5,-36(s0)
	andi	a5,a5,2
	andi	a5,a5,0xff
	.loc 1 230 20
	bne	a5,zero,.L35
	.loc 1 230 35 discriminator 1
	lbu	a5,-36(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L52
.L35:
	.loc 1 233 21
	lbu	a5,-36(s0)
	andi	a5,a5,2
	andi	a5,a5,0xff
	.loc 1 233 20
	beq	a5,zero,.L36
	.loc 1 233 37 discriminator 1
	lbu	a5,-36(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 233 34 discriminator 1
	bne	a5,zero,.L36
	.loc 1 234 28
	li	a5,2
	j	.L51
.L36:
	.loc 1 237 21
	lbu	a5,-36(s0)
	andi	a5,a5,2
	andi	a5,a5,0xff
	.loc 1 237 20
	bne	a5,zero,.L37
	.loc 1 237 38 discriminator 1
	lbu	a5,-36(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 237 35 discriminator 1
	bne	a5,zero,.L37
	.loc 1 238 32
	lbu	a5,-36(s0)
	ori	a5,a5,1
	sb	a5,-36(s0)
	.loc 1 239 34
	lbu	a5,-36(s0)
	ori	a5,a5,2
	sb	a5,-36(s0)
	.loc 1 240 22
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 240 29
	addi	a4,a5,1
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 1 241 59
	lw	a5,-28(s0)
	addi	a4,a5,1
	.loc 1 241 38
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 241 46
	addi	a5,a5,-1
	.loc 1 241 53
	lw	a3,-68(s0)
	add	a4,a3,a4
	.loc 1 241 51
	lui	a3,%hi(argvall.3)
	addi	a3,a3,%lo(argvall.3)
	lw	a2,-20(s0)
	slli	a2,a2,4
	add	a5,a2,a5
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 1 247 17
	j	.L53
.L37:
	.loc 1 242 28
	lbu	a5,-36(s0)
	andi	a5,a5,2
	andi	a5,a5,0xff
	.loc 1 242 27
	beq	a5,zero,.L53
	.loc 1 242 41 discriminator 1
	lbu	a5,-36(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	beq	a5,zero,.L53
	.loc 1 243 32
	lbu	a5,-36(s0)
	andi	a5,a5,-2
	sb	a5,-36(s0)
	.loc 1 244 34
	lbu	a5,-36(s0)
	andi	a5,a5,-3
	sb	a5,-36(s0)
	.loc 1 245 26
	lw	a5,-28(s0)
	lw	a4,-68(s0)
	add	a5,a4,a5
	.loc 1 245 30
	sb	zero,0(a5)
	.loc 1 247 17
	j	.L53
.L30:
	.loc 1 250 20
	lw	a5,-28(s0)
	ble	a5,zero,.L39
	.loc 1 250 35 discriminator 1
	lw	a5,-28(s0)
	addi	a5,a5,-1
	lw	a4,-68(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 1 250 27 discriminator 1
	li	a5,92
	bne	a4,a5,.L39
	.loc 1 250 51 discriminator 2
	lbu	a5,-36(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	beq	a5,zero,.L39
	.loc 1 251 34
	lw	a5,-28(s0)
	addi	a5,a5,-1
	.loc 1 251 28
	lw	a4,-68(s0)
	add	s1,a4,a5
	.loc 1 251 21
	lw	a5,-28(s0)
	.loc 1 251 43
	lw	a4,-68(s0)
	add	s2,a4,a5
	.loc 1 251 54
	lw	a5,-28(s0)
	.loc 1 251 61
	lw	a4,-68(s0)
	add	a5,a4,a5
	.loc 1 251 54
	mv	a0,a5
	call	strlen
	mv	a5,a0
	.loc 1 251 21 discriminator 1
	addi	a5,a5,1
	mv	a2,a5
	mv	a1,s2
	mv	a0,s1
	call	memcpy
	.loc 1 252 21
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
	.loc 1 253 21
	j	.L33
.L39:
	.loc 1 255 21
	lbu	a5,-36(s0)
	andi	a5,a5,2
	andi	a5,a5,0xff
	.loc 1 255 20
	bne	a5,zero,.L54
	.loc 1 255 35 discriminator 1
	lbu	a5,-36(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	beq	a5,zero,.L54
	.loc 1 256 32
	lbu	a5,-36(s0)
	andi	a5,a5,-2
	sb	a5,-36(s0)
	.loc 1 257 26
	lw	a5,-28(s0)
	lw	a4,-68(s0)
	add	a5,a4,a5
	.loc 1 257 30
	sb	zero,0(a5)
	.loc 1 259 17
	j	.L54
.L26:
	.loc 1 262 20
	lw	a5,-28(s0)
	ble	a5,zero,.L41
	.loc 1 262 35 discriminator 1
	lw	a5,-28(s0)
	addi	a5,a5,-1
	lw	a4,-68(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 1 262 27 discriminator 1
	li	a5,92
	bne	a4,a5,.L41
	.loc 1 262 51 discriminator 2
	lbu	a5,-36(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	beq	a5,zero,.L41
	.loc 1 263 34
	lw	a5,-28(s0)
	addi	a5,a5,-1
	.loc 1 263 28
	lw	a4,-68(s0)
	add	s1,a4,a5
	.loc 1 263 21
	lw	a5,-28(s0)
	.loc 1 263 43
	lw	a4,-68(s0)
	add	s2,a4,a5
	.loc 1 263 54
	lw	a5,-28(s0)
	.loc 1 263 61
	lw	a4,-68(s0)
	add	a5,a4,a5
	.loc 1 263 54
	mv	a0,a5
	call	strlen
	mv	a5,a0
	.loc 1 263 21 discriminator 1
	addi	a5,a5,1
	mv	a2,a5
	mv	a1,s2
	mv	a0,s1
	call	memcpy
	.loc 1 264 21
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
	.loc 1 265 21
	j	.L33
.L41:
	.loc 1 267 21
	lbu	a5,-36(s0)
	andi	a5,a5,2
	andi	a5,a5,0xff
	.loc 1 267 20
	beq	a5,zero,.L42
	.loc 1 268 28
	li	a5,2
	j	.L51
.L42:
	.loc 1 270 21
	lbu	a5,-36(s0)
	andi	a5,a5,2
	andi	a5,a5,0xff
	.loc 1 270 20
	bne	a5,zero,.L55
	.loc 1 270 35 discriminator 1
	lbu	a5,-36(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	beq	a5,zero,.L55
	.loc 1 271 32
	lbu	a5,-36(s0)
	andi	a5,a5,-2
	sb	a5,-36(s0)
	.loc 1 272 26
	lw	a5,-28(s0)
	lw	a4,-68(s0)
	add	a5,a4,a5
	.loc 1 272 30
	sb	zero,0(a5)
	.loc 1 274 25
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 274 24
	beq	a5,zero,.L55
	.loc 1 275 28
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	li	a5,3
	bgt	a4,a5,.L55
	.loc 1 276 35
	addi	a4,s0,-52
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 281 17
	j	.L55
.L27:
	.loc 1 284 21
	lbu	a5,-36(s0)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 284 20
	bne	a5,zero,.L56
	.loc 1 285 32
	lbu	a5,-36(s0)
	ori	a5,a5,1
	sb	a5,-36(s0)
	.loc 1 286 22
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 286 29
	addi	a4,a5,1
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 1 287 53
	lw	a4,-28(s0)
	.loc 1 287 38
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 287 46
	addi	a5,a5,-1
	.loc 1 287 53
	lw	a3,-68(s0)
	add	a4,a3,a4
	.loc 1 287 51
	lui	a3,%hi(argvall.3)
	addi	a3,a3,%lo(argvall.3)
	lw	a2,-20(s0)
	slli	a2,a2,4
	add	a5,a2,a5
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 1 289 17
	j	.L56
.L52:
	.loc 1 231 21
	nop
	j	.L33
.L53:
	.loc 1 247 17
	nop
	j	.L33
.L54:
	.loc 1 259 17
	nop
	j	.L33
.L55:
	.loc 1 281 17
	nop
	j	.L33
.L56:
	.loc 1 289 17
	nop
.L33:
	.loc 1 291 14
	lbu	a5,-36(s0)
	andi	a5,a5,4
	andi	a5,a5,0xff
	.loc 1 291 52
	bne	a5,zero,.L45
	.loc 1 291 25 discriminator 1
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
	lw	a4,-28(s0)
	li	a5,255
	bgt	a4,a5,.L45
	.loc 1 291 38 discriminator 2
	lw	a4,-20(s0)
	li	a5,3
	bgt	a4,a5,.L45
	.loc 1 292 15
	lw	a5,-24(s0)
	lw	a4,0(a5)
	.loc 1 291 52 discriminator 3
	li	a5,15
	ble	a4,a5,.L46
.L45:
	.loc 1 294 9
	lbu	a5,-36(s0)
	andi	a5,a5,2
	andi	a5,a5,0xff
	.loc 1 294 8
	beq	a5,zero,.L47
	.loc 1 295 16
	li	a5,2
	j	.L51
.L47:
	.loc 1 298 12
	sw	zero,-28(s0)
	.loc 1 298 5
	j	.L48
.L50:
	.loc 1 299 16
	lw	a4,-28(s0)
	addi	a5,s0,-52
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 1 299 47
	lw	a5,-28(s0)
	slli	a4,a5,6
	lui	a5,%hi(argvall.3)
	addi	a5,a5,%lo(argvall.3)
	add	a5,a4,a5
	.loc 1 299 16
	mv	a1,a5
	mv	a0,a3
	call	proc_onecmd
	mv	a4,a0
	.loc 1 299 13 discriminator 1
	lw	a5,-32(s0)
	or	a5,a5,a4
	sw	a5,-32(s0)
	.loc 1 298 40 discriminator 4
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L48:
	.loc 1 298 29 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	bgt	a4,a5,.L49
	.loc 1 298 29 is_stmt 0 discriminator 3
	lw	a4,-28(s0)
	li	a5,3
	ble	a4,a5,.L50
.L49:
	.loc 1 302 12 is_stmt 1
	lw	a5,-32(s0)
.L51:
	.loc 1 303 1
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
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	handle_input, .-handle_input
	.section	.rodata
	.align	2
.LC3:
	.string	"%s %s "
	.align	2
.LC4:
	.string	"%s "
	.align	2
.LC5:
	.string	"# "
	.align	2
.LC6:
	.string	"%s%s"
	.section	.text.tab_complete,"ax",@progbits
	.align	1
	.type	tab_complete, @function
tab_complete:
.LFB9:
	.loc 1 310 1
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
	.loc 1 312 17
	sw	zero,-32(s0)
	.loc 1 314 5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	aos_cli_printf
	.loc 1 317 12
	sw	zero,-20(s0)
	.loc 1 317 19
	sw	zero,-24(s0)
	.loc 1 317 26
	sw	zero,-28(s0)
	.loc 1 317 5
	j	.L58
.L64:
.LBB3:
	.loc 1 319 41
	li	a1,0
	lw	a0,-20(s0)
	call	cli_command_get
	sw	a0,-36(s0)
	.loc 1 320 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 320 12
	beq	a5,zero,.L59
	.loc 1 321 36
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 321 18
	lw	a5,-56(s0)
	lw	a5,0(a5)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-52(s0)
	call	strncmp
	mv	a5,a0
	.loc 1 321 16 discriminator 1
	bne	a5,zero,.L60
	.loc 1 322 18
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
	.loc 1 323 20
	lw	a4,-28(s0)
	li	a5,1
	bne	a4,a5,.L61
	.loc 1 324 24
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-32(s0)
	j	.L60
.L61:
	.loc 1 325 27
	lw	a4,-28(s0)
	li	a5,2
	bne	a4,a5,.L62
	.loc 1 326 53
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 326 21
	mv	a2,a5
	lw	a1,-32(s0)
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	aos_cli_printf
	j	.L60
.L62:
	.loc 1 328 46
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 328 21
	mv	a1,a5
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	aos_cli_printf
.L60:
	.loc 1 330 14
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L59:
.LBE3:
	.loc 1 318 40
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L58:
	.loc 1 317 38 discriminator 1
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a5,44(a5)
	.loc 1 317 56 discriminator 1
	addi	a4,a5,8
	.loc 1 317 33 discriminator 1
	lw	a5,-20(s0)
	.loc 1 318 13 discriminator 1
	bleu	a4,a5,.L63
	.loc 1 318 23 discriminator 2
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a4,48(a5)
	.loc 1 318 18 discriminator 2
	lw	a5,-24(s0)
	.loc 1 318 13 discriminator 2
	bgtu	a4,a5,.L64
.L63:
	.loc 1 335 8
	lw	a4,-28(s0)
	li	a5,1
	bne	a4,a5,.L65
	.loc 1 335 16 discriminator 1
	lw	a5,-32(s0)
	beq	a5,zero,.L65
	.loc 1 336 13
	lw	a0,-32(s0)
	call	strlen
	mv	a4,a0
	.loc 1 336 26 discriminator 1
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 1 336 24 discriminator 1
	sub	a5,a4,a5
	.loc 1 336 11 discriminator 1
	sw	a5,-24(s0)
	.loc 1 337 13
	lw	a5,-56(s0)
	lw	a4,0(a5)
	.loc 1 337 17
	lw	a5,-24(s0)
	add	a4,a4,a5
	.loc 1 337 12
	li	a5,255
	bgtu	a4,a5,.L65
	.loc 1 338 28
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 1 338 26
	lw	a4,-52(s0)
	add	a3,a4,a5
	.loc 1 338 38
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 1 338 36
	lw	a4,-32(s0)
	add	a5,a4,a5
	.loc 1 338 13
	lw	a4,-24(s0)
	mv	a2,a4
	mv	a1,a5
	mv	a0,a3
	call	memcpy
	.loc 1 339 13
	lw	a5,-56(s0)
	lw	a4,0(a5)
	.loc 1 339 17
	lw	a5,-24(s0)
	add	a4,a4,a5
	lw	a5,-56(s0)
	sw	a4,0(a5)
	.loc 1 340 20
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 1 340 24
	addi	a3,a5,1
	lw	a4,-56(s0)
	sw	a3,0(a4)
	.loc 1 340 18
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 1 340 28
	li	a4,32
	sb	a4,0(a5)
	.loc 1 341 19
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 1 341 18
	lw	a4,-52(s0)
	add	a5,a4,a5
	.loc 1 341 24
	sb	zero,0(a5)
.L65:
	.loc 1 344 8
	lw	a4,-28(s0)
	li	a5,1
	ble	a4,a5,.L66
	.loc 1 345 9
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	aos_cli_printf
.L66:
	.loc 1 349 5
	lw	a2,-52(s0)
	lui	a5,%hi(.LC5)
	addi	a1,a5,%lo(.LC5)
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	aos_cli_printf
	.loc 1 350 1
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
.LFE9:
	.size	tab_complete, .-tab_complete
	.section	.text.cli_history_input,"ax",@progbits
	.align	1
	.type	cli_history_input, @function
cli_history_input:
.LFB10:
	.loc 1 356 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 357 22
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	.loc 1 357 11
	addi	a5,a5,56
	sw	a5,-28(s0)
	.loc 1 358 29
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	addi	a5,a5,56
	.loc 1 358 19
	mv	a0,a5
	call	strlen
	mv	a5,a0
	.loc 1 358 38 discriminator 1
	addi	a5,a5,1
	.loc 1 358 9 discriminator 1
	sw	a5,-32(s0)
	.loc 1 360 22
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	.loc 1 360 9
	lw	a5,320(a5)
	sw	a5,-36(s0)
	.loc 1 361 9
	li	a4,256
	lw	a5,-36(s0)
	sub	a5,a4,a5
	sw	a5,-40(s0)
	.loc 1 365 8
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	.loc 1 365 18
	lw	a4,-36(s0)
	sw	a4,316(a5)
	.loc 1 367 8
	lw	a4,-40(s0)
	lw	a5,-32(s0)
	blt	a4,a5,.L68
	.loc 1 368 27
	lw	a4,-36(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	.loc 1 368 17
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 369 23
	lui	a5,%hi(cli)
	lw	a4,%lo(cli)(a5)
	.loc 1 369 18
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,324(a5)
	sb	a5,-17(s0)
	.loc 1 370 22
	lui	a5,%hi(cli)
	lw	a4,%lo(cli)(a5)
	.loc 1 370 17
	lw	a5,-36(s0)
	addi	a5,a5,320
	add	a5,a4,a5
	addi	a5,a5,4
	.loc 1 370 9
	lw	a4,-32(s0)
	mv	a2,a4
	lw	a1,-28(s0)
	mv	a0,a5
	call	strncpy
	j	.L69
.L68:
	.loc 1 373 28
	lw	a4,-36(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	.loc 1 373 38
	addi	a4,a5,-1
	.loc 1 373 17
	srai	a5,a4,31
	srli	a5,a5,24
	add	a4,a4,a5
	andi	a4,a4,255
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 374 23
	lui	a5,%hi(cli)
	lw	a4,%lo(cli)(a5)
	.loc 1 374 18
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,324(a5)
	sb	a5,-17(s0)
	.loc 1 375 22
	lui	a5,%hi(cli)
	lw	a4,%lo(cli)(a5)
	.loc 1 375 17
	lw	a5,-36(s0)
	addi	a5,a5,320
	add	a5,a4,a5
	addi	a5,a5,4
	.loc 1 375 9
	lw	a4,-40(s0)
	mv	a2,a4
	lw	a1,-28(s0)
	mv	a0,a5
	call	strncpy
	.loc 1 376 22
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	.loc 1 376 17
	addi	a3,a5,324
	.loc 1 376 9
	lw	a5,-40(s0)
	.loc 1 376 43
	lw	a4,-28(s0)
	add	a1,a4,a5
	.loc 1 376 63
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	sub	a5,a4,a5
	.loc 1 376 9
	mv	a2,a5
	mv	a0,a3
	call	strncpy
.L69:
	.loc 1 378 24
	lw	a5,-24(s0)
	addi	a4,a5,1
	.loc 1 378 13
	srai	a5,a4,31
	srli	a5,a5,24
	add	a4,a4,a5
	andi	a4,a4,255
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 379 8
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	.loc 1 379 18
	lw	a4,-24(s0)
	sw	a4,320(a5)
	.loc 1 382 8
	lbu	a5,-17(s0)
	beq	a5,zero,.L73
	.loc 1 384 15
	j	.L71
.L72:
	.loc 1 385 16
	lui	a5,%hi(cli)
	lw	a4,%lo(cli)(a5)
	.loc 1 385 35
	lw	a5,-24(s0)
	add	a5,a4,a5
	sb	zero,324(a5)
	.loc 1 386 32
	lw	a5,-24(s0)
	addi	a4,a5,1
	.loc 1 386 21
	srai	a5,a4,31
	srli	a5,a5,24
	add	a4,a4,a5
	andi	a4,a4,255
	sub	a5,a4,a5
	sw	a5,-24(s0)
.L71:
	.loc 1 384 19
	lui	a5,%hi(cli)
	lw	a4,%lo(cli)(a5)
	.loc 1 384 28
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,324(a5)
	.loc 1 384 38
	bne	a5,zero,.L72
.L73:
	.loc 1 389 1
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
	.size	cli_history_input, .-cli_history_input
	.section	.text.cli_up_history,"ax",@progbits
	.align	1
	.type	cli_up_history, @function
cli_up_history:
.LFB11:
	.loc 1 393 1
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
	.loc 1 395 9
	sw	zero,-24(s0)
	.loc 1 397 20
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	.loc 1 397 15
	lw	a5,316(a5)
	sw	a5,-24(s0)
	.loc 1 398 17
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a5,316(a5)
	.loc 1 398 31
	addi	a4,a5,255
	.loc 1 398 11
	srai	a5,a4,31
	srli	a5,a5,24
	add	a4,a4,a5
	andi	a4,a4,255
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 400 11
	j	.L75
.L77:
	.loc 1 401 28
	lw	a5,-20(s0)
	addi	a4,a5,255
	.loc 1 401 15
	srai	a5,a4,31
	srli	a5,a5,24
	add	a4,a4,a5
	andi	a4,a4,255
	sub	a5,a4,a5
	sw	a5,-20(s0)
.L75:
	.loc 1 400 16
	lui	a5,%hi(cli)
	lw	a4,%lo(cli)(a5)
	.loc 1 400 25
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,324(a5)
	.loc 1 400 42
	bne	a5,zero,.L76
	.loc 1 400 58 discriminator 1
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a5,316(a5)
	.loc 1 400 42 discriminator 1
	lw	a4,-20(s0)
	bne	a4,a5,.L77
.L76:
	.loc 1 403 21
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a5,316(a5)
	.loc 1 403 8
	lw	a4,-20(s0)
	beq	a4,a5,.L78
	.loc 1 404 15
	j	.L79
.L80:
	.loc 1 405 32
	lw	a5,-20(s0)
	addi	a4,a5,255
	.loc 1 405 19
	srai	a5,a4,31
	srli	a5,a5,24
	add	a4,a4,a5
	andi	a4,a4,255
	sub	a5,a4,a5
	sw	a5,-20(s0)
.L79:
	.loc 1 404 19
	lui	a5,%hi(cli)
	lw	a4,%lo(cli)(a5)
	.loc 1 404 28
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,324(a5)
	.loc 1 404 36
	bne	a5,zero,.L80
	.loc 1 407 24
	lw	a5,-20(s0)
	addi	a4,a5,1
	.loc 1 407 15
	srai	a5,a4,31
	srli	a5,a5,24
	add	a4,a4,a5
	andi	a4,a4,255
	sub	a5,a4,a5
	sw	a5,-20(s0)
.L78:
	.loc 1 409 8
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	.loc 1 409 18
	lw	a4,-20(s0)
	sw	a4,316(a5)
	.loc 1 411 11
	j	.L81
.L82:
	.loc 1 413 24
	lui	a5,%hi(cli)
	lw	a3,%lo(cli)(a5)
	.loc 1 413 16
	lw	a5,-36(s0)
	addi	a4,a5,1
	sw	a4,-36(s0)
	.loc 1 413 33
	lw	a4,-24(s0)
	add	a4,a3,a4
	lbu	a4,324(a4)
	.loc 1 413 19
	sb	a4,0(a5)
	.loc 1 414 32
	lw	a5,-24(s0)
	addi	a4,a5,1
	.loc 1 414 19
	srai	a5,a4,31
	srli	a5,a5,24
	add	a4,a4,a5
	andi	a4,a4,255
	sub	a5,a4,a5
	sw	a5,-24(s0)
.L81:
	.loc 1 411 15
	lui	a5,%hi(cli)
	lw	a4,%lo(cli)(a5)
	.loc 1 411 24
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,324(a5)
	.loc 1 411 36
	bne	a5,zero,.L82
	.loc 1 416 13
	lw	a5,-36(s0)
	sb	zero,0(a5)
	.loc 1 418 5
	nop
	.loc 1 419 1
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
	.size	cli_up_history, .-cli_up_history
	.section	.text.cli_down_history,"ax",@progbits
	.align	1
	.type	cli_down_history, @function
cli_down_history:
.LFB12:
	.loc 1 422 1
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
	.loc 1 424 9
	sw	zero,-24(s0)
	.loc 1 426 20
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	.loc 1 426 15
	lw	a5,316(a5)
	sw	a5,-24(s0)
	.loc 1 427 16
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	.loc 1 427 11
	lw	a5,316(a5)
	sw	a5,-20(s0)
	.loc 1 429 11
	j	.L85
.L86:
	.loc 1 430 24
	lw	a5,-20(s0)
	addi	a4,a5,1
	.loc 1 430 15
	srai	a5,a4,31
	srli	a5,a5,24
	add	a4,a4,a5
	andi	a4,a4,255
	sub	a5,a4,a5
	sw	a5,-20(s0)
.L85:
	.loc 1 429 16
	lui	a5,%hi(cli)
	lw	a4,%lo(cli)(a5)
	.loc 1 429 25
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,324(a5)
	.loc 1 429 33
	bne	a5,zero,.L86
	.loc 1 432 21
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a5,316(a5)
	.loc 1 432 8
	lw	a4,-20(s0)
	beq	a4,a5,.L87
	.loc 1 433 15
	j	.L88
.L89:
	.loc 1 434 28
	lw	a5,-20(s0)
	addi	a4,a5,1
	.loc 1 434 19
	srai	a5,a4,31
	srli	a5,a5,24
	add	a4,a4,a5
	andi	a4,a4,255
	sub	a5,a4,a5
	sw	a5,-20(s0)
.L88:
	.loc 1 433 19
	lui	a5,%hi(cli)
	lw	a4,%lo(cli)(a5)
	.loc 1 433 28
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,324(a5)
	.loc 1 433 36
	beq	a5,zero,.L89
.L87:
	.loc 1 437 8
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	.loc 1 437 18
	lw	a4,-20(s0)
	sw	a4,316(a5)
	.loc 1 439 11
	j	.L90
.L91:
	.loc 1 440 24
	lui	a5,%hi(cli)
	lw	a3,%lo(cli)(a5)
	.loc 1 440 16
	lw	a5,-36(s0)
	addi	a4,a5,1
	sw	a4,-36(s0)
	.loc 1 440 33
	lw	a4,-24(s0)
	add	a4,a3,a4
	lbu	a4,324(a4)
	.loc 1 440 19
	sb	a4,0(a5)
	.loc 1 441 32
	lw	a5,-24(s0)
	addi	a4,a5,1
	.loc 1 441 19
	srai	a5,a4,31
	srli	a5,a5,24
	add	a4,a4,a5
	andi	a4,a4,255
	sub	a5,a4,a5
	sw	a5,-24(s0)
.L90:
	.loc 1 439 15
	lui	a5,%hi(cli)
	lw	a4,%lo(cli)(a5)
	.loc 1 439 24
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,324(a5)
	.loc 1 439 36
	bne	a5,zero,.L91
	.loc 1 444 13
	lw	a5,-36(s0)
	sb	zero,0(a5)
	.loc 1 446 5
	nop
	.loc 1 447 1
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
	.size	cli_down_history, .-cli_down_history
	.section	.rodata
	.align	2
.LC7:
	.string	"inbuf_null\r\n"
	.align	2
.LC8:
	.string	"\033%c"
	.align	2
.LC9:
	.string	"\033%c%c"
	.align	2
.LC10:
	.string	"\r\n# %s"
	.align	2
.LC11:
	.string	"Error: esc_tag buffer overflow\r\n"
	.align	2
.LC12:
	.string	"%c %c"
	.align	2
.LC13:
	.string	"%c"
	.align	2
.LC14:
	.string	"Error: input buffer overflow\r\n"
	.section	.text.get_input,"ax",@progbits
	.align	1
	.type	get_input, @function
get_input:
.LFB13:
	.loc 1 455 1
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
	.loc 1 457 9
	sw	zero,-20(s0)
	.loc 1 459 8
	lw	a5,-36(s0)
	bne	a5,zero,.L96
	.loc 1 460 9
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	aos_cli_printf
	.loc 1 461 16
	li	a5,0
	j	.L122
.L121:
	.loc 1 466 15
	lbu	a4,-21(s0)
	.loc 1 466 12
	li	a5,10
	beq	a4,a5,.L97
	.loc 1 466 28 discriminator 1
	lbu	a4,-21(s0)
	.loc 1 466 23 discriminator 1
	li	a5,13
	bne	a4,a5,.L98
.L97:
	.loc 1 467 19
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 467 18
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 1 467 24
	sb	zero,0(a5)
	.loc 1 468 17
	lw	a5,-40(s0)
	sw	zero,0(a5)
	.loc 1 469 20
	li	a5,1
	j	.L122
.L98:
	.loc 1 472 15
	lbu	a4,-21(s0)
	.loc 1 472 12
	li	a5,27
	bne	a4,a5,.L99
	.loc 1 473 17
	lui	a5,%hi(esc.2)
	li	a4,1
	sb	a4,%lo(esc.2)(a5)
	.loc 1 474 18
	lui	a5,%hi(key1.1)
	li	a4,-1
	sb	a4,%lo(key1.1)(a5)
	.loc 1 475 18
	lui	a5,%hi(key2.0)
	li	a4,-1
	sb	a4,%lo(key2.0)(a5)
	.loc 1 476 13
	j	.L96
.L99:
	.loc 1 479 13
	lui	a5,%hi(esc.2)
	lb	a5,%lo(esc.2)(a5)
	.loc 1 479 12
	beq	a5,zero,.L101
	.loc 1 480 22
	lui	a5,%hi(key1.1)
	lb	a5,%lo(key1.1)(a5)
	.loc 1 480 16
	bge	a5,zero,.L102
	.loc 1 481 22
	lbu	a5,-21(s0)
	slli	a4,a5,24
	srai	a4,a4,24
	lui	a5,%hi(key1.1)
	sb	a4,%lo(key1.1)(a5)
	.loc 1 482 26
	lui	a5,%hi(key1.1)
	lb	a4,%lo(key1.1)(a5)
	.loc 1 482 20
	li	a5,91
	beq	a4,a5,.L123
	.loc 1 484 28
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 484 26
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 1 484 34
	li	a4,27
	sb	a4,0(a5)
	.loc 1 485 22
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 485 26
	addi	a4,a5,1
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 486 32
	lui	a5,%hi(key1.1)
	lb	a3,%lo(key1.1)(a5)
	.loc 1 486 27
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 486 26
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 1 486 32
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 487 22
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 487 26
	addi	a4,a5,1
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 488 29
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a5,4(a5)
	.loc 1 488 24
	bne	a5,zero,.L104
	.loc 1 489 25
	lui	a5,%hi(key1.1)
	lb	a5,%lo(key1.1)(a5)
	mv	a1,a5
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	printf
.L104:
	.loc 1 492 25
	lui	a5,%hi(esc.2)
	sb	zero,%lo(esc.2)(a5)
	.loc 1 494 17
	j	.L123
.L102:
	.loc 1 497 22
	lui	a5,%hi(key2.0)
	lb	a5,%lo(key2.0)(a5)
	.loc 1 497 16
	bge	a5,zero,.L105
	.loc 1 498 22
	lbu	a5,-21(s0)
	slli	a4,a5,24
	srai	a4,a4,24
	lui	a5,%hi(key2.0)
	sb	a4,%lo(key2.0)(a5)
	.loc 1 499 26
	lui	a5,%hi(key2.0)
	lb	a4,%lo(key2.0)(a5)
	.loc 1 499 20
	li	a5,116
	bne	a4,a5,.L105
	.loc 1 500 32
	lui	a5,%hi(esc_tag)
	addi	a5,a5,%lo(esc_tag)
	li	a4,27
	sb	a4,0(a5)
	.loc 1 501 32
	lui	a5,%hi(key1.1)
	lb	a5,%lo(key1.1)(a5)
	andi	a4,a5,0xff
	lui	a5,%hi(esc_tag)
	addi	a5,a5,%lo(esc_tag)
	sb	a4,1(a5)
	.loc 1 502 33
	lui	a5,%hi(esc_tag_len)
	li	a4,2
	sb	a4,%lo(esc_tag_len)(a5)
.L105:
	.loc 1 506 22
	lui	a5,%hi(key2.0)
	lb	a4,%lo(key2.0)(a5)
	.loc 1 506 16
	li	a5,65
	beq	a4,a5,.L106
	.loc 1 506 38 discriminator 1
	lui	a5,%hi(key2.0)
	lb	a4,%lo(key2.0)(a5)
	.loc 1 506 30 discriminator 1
	li	a5,66
	beq	a4,a5,.L106
	.loc 1 506 54 discriminator 2
	lui	a5,%hi(key2.0)
	lb	a4,%lo(key2.0)(a5)
	.loc 1 506 46 discriminator 2
	li	a5,116
	beq	a4,a5,.L106
	.loc 1 508 24
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 508 22
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 1 508 30
	li	a4,27
	sb	a4,0(a5)
	.loc 1 509 18
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 509 22
	addi	a4,a5,1
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 510 28
	lui	a5,%hi(key1.1)
	lb	a3,%lo(key1.1)(a5)
	.loc 1 510 23
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 510 22
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 1 510 28
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 511 18
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 511 22
	addi	a4,a5,1
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 512 28
	lui	a5,%hi(key2.0)
	lb	a3,%lo(key2.0)(a5)
	.loc 1 512 23
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 512 22
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 1 512 28
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 513 18
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 513 22
	addi	a4,a5,1
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 514 25
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a5,4(a5)
	.loc 1 514 20
	bne	a5,zero,.L107
	.loc 1 515 21
	lui	a5,%hi(key1.1)
	lb	a5,%lo(key1.1)(a5)
	mv	a4,a5
	lui	a5,%hi(key2.0)
	lb	a5,%lo(key2.0)(a5)
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	printf
.L107:
	.loc 1 518 28
	lui	a5,%hi(esc_tag)
	addi	a5,a5,%lo(esc_tag)
	sb	zero,0(a5)
	.loc 1 519 29
	lui	a5,%hi(esc_tag_len)
	sb	zero,%lo(esc_tag_len)(a5)
	.loc 1 520 21
	lui	a5,%hi(esc.2)
	sb	zero,%lo(esc.2)(a5)
	.loc 1 521 17
	j	.L96
.L106:
	.loc 1 532 22
	lui	a5,%hi(key2.0)
	lb	a4,%lo(key2.0)(a5)
	.loc 1 532 16
	li	a5,65
	bne	a4,a5,.L108
	.loc 1 533 17
	lw	a0,-36(s0)
	call	cli_up_history
	.loc 1 534 17
	lw	a1,-36(s0)
	lui	a5,%hi(.LC10)
	addi	a0,a5,%lo(.LC10)
	call	printf
	.loc 1 535 23
	lw	a0,-36(s0)
	call	strlen
	mv	a4,a0
	.loc 1 535 21 discriminator 1
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 536 28
	lui	a5,%hi(esc_tag)
	addi	a5,a5,%lo(esc_tag)
	sb	zero,0(a5)
	.loc 1 537 29
	lui	a5,%hi(esc_tag_len)
	sb	zero,%lo(esc_tag_len)(a5)
	.loc 1 538 21
	lui	a5,%hi(esc.2)
	sb	zero,%lo(esc.2)(a5)
	.loc 1 539 17
	j	.L96
.L108:
	.loc 1 542 22
	lui	a5,%hi(key2.0)
	lb	a4,%lo(key2.0)(a5)
	.loc 1 542 16
	li	a5,66
	bne	a4,a5,.L109
	.loc 1 543 17
	lw	a0,-36(s0)
	call	cli_down_history
	.loc 1 544 17
	lw	a1,-36(s0)
	lui	a5,%hi(.LC10)
	addi	a0,a5,%lo(.LC10)
	call	printf
	.loc 1 545 23
	lw	a0,-36(s0)
	call	strlen
	mv	a4,a0
	.loc 1 545 21 discriminator 1
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 546 28
	lui	a5,%hi(esc_tag)
	addi	a5,a5,%lo(esc_tag)
	sb	zero,0(a5)
	.loc 1 547 29
	lui	a5,%hi(esc_tag_len)
	sb	zero,%lo(esc_tag_len)(a5)
	.loc 1 548 21
	lui	a5,%hi(esc.2)
	sb	zero,%lo(esc.2)(a5)
	.loc 1 549 17
	j	.L96
.L109:
	.loc 1 554 29
	lui	a5,%hi(esc_tag_len)
	lbu	a4,%lo(esc_tag_len)(a5)
	.loc 1 554 16
	li	a5,63
	bleu	a4,a5,.L110
	.loc 1 555 28
	lui	a5,%hi(esc_tag)
	addi	a5,a5,%lo(esc_tag)
	sb	zero,0(a5)
	.loc 1 556 29
	lui	a5,%hi(esc_tag_len)
	sb	zero,%lo(esc_tag_len)(a5)
	.loc 1 557 21
	lui	a5,%hi(esc.2)
	sb	zero,%lo(esc.2)(a5)
	.loc 1 558 17
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	printf
	.loc 1 560 17
	j	.L96
.L110:
	.loc 1 562 32
	lui	a5,%hi(esc_tag_len)
	lbu	a5,%lo(esc_tag_len)(a5)
	addi	a4,a5,1
	andi	a3,a4,0xff
	lui	a4,%hi(esc_tag_len)
	sb	a3,%lo(esc_tag_len)(a4)
	mv	a3,a5
	.loc 1 562 36
	lbu	a4,-21(s0)
	lui	a5,%hi(esc_tag)
	addi	a5,a5,%lo(esc_tag)
	add	a5,a5,a3
	sb	a4,0(a5)
	.loc 1 563 19
	lbu	a4,-21(s0)
	.loc 1 563 16
	li	a5,109
	bne	a4,a5,.L124
	.loc 1 564 36
	lui	a5,%hi(esc_tag_len)
	lbu	a5,%lo(esc_tag_len)(a5)
	addi	a4,a5,1
	andi	a3,a4,0xff
	lui	a4,%hi(esc_tag_len)
	sb	a3,%lo(esc_tag_len)(a4)
	mv	a4,a5
	.loc 1 564 40
	lui	a5,%hi(esc_tag)
	addi	a5,a5,%lo(esc_tag)
	add	a5,a5,a4
	sb	zero,0(a5)
	.loc 1 565 25
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a5,4(a5)
	.loc 1 565 20
	bne	a5,zero,.L112
	.loc 1 566 21
	lui	a5,%hi(esc_tag)
	addi	a1,a5,%lo(esc_tag)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
.L112:
	.loc 1 569 21
	lui	a5,%hi(esc.2)
	sb	zero,%lo(esc.2)(a5)
	.loc 1 571 13
	j	.L124
.L101:
	.loc 1 574 15
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 574 14
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 1 574 20
	lbu	a4,-21(s0)
	sb	a4,0(a5)
	.loc 1 575 16
	lbu	a4,-21(s0)
	.loc 1 575 12
	li	a5,8
	beq	a4,a5,.L113
	.loc 1 576 16
	lbu	a4,-21(s0)
	.loc 1 575 25 discriminator 1
	li	a5,127
	bne	a4,a5,.L114
.L113:
	.loc 1 577 17
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 577 16
	beq	a5,zero,.L125
	.loc 1 578 18
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 578 22
	addi	a4,a5,-1
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 579 25
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a5,4(a5)
	.loc 1 579 20
	bne	a5,zero,.L125
	.loc 1 580 21
	li	a2,8
	li	a1,8
	lui	a5,%hi(.LC12)
	addi	a0,a5,%lo(.LC12)
	call	printf
	.loc 1 584 13
	j	.L125
.L114:
	.loc 1 587 15
	lbu	a4,-21(s0)
	.loc 1 587 12
	li	a5,9
	bne	a4,a5,.L116
	.loc 1 588 19
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 588 18
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 1 588 24
	sb	zero,0(a5)
	.loc 1 589 13
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	tab_complete
	.loc 1 590 13
	j	.L96
.L116:
	.loc 1 593 17
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a5,4(a5)
	.loc 1 593 12
	bne	a5,zero,.L117
	.loc 1 594 13
	lbu	a5,-21(s0)
	mv	a1,a5
	lui	a5,%hi(.LC13)
	addi	a0,a5,%lo(.LC13)
	call	printf
.L117:
	.loc 1 598 10
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 598 14
	addi	a4,a5,1
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 599 13
	lw	a5,-40(s0)
	lw	a4,0(a5)
	.loc 1 599 12
	li	a5,255
	bleu	a4,a5,.L96
	.loc 1 600 13
	lui	a5,%hi(.LC14)
	addi	a0,a5,%lo(.LC14)
	call	aos_cli_printf
	.loc 1 601 13
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	aos_cli_printf
	.loc 1 602 17
	lw	a5,-40(s0)
	sw	zero,0(a5)
	.loc 1 603 20
	li	a5,0
	j	.L122
.L123:
	.loc 1 494 17
	nop
	j	.L96
.L124:
	.loc 1 571 13
	nop
	j	.L96
.L125:
	.loc 1 584 13
	nop
.L96:
	.loc 1 465 14
	lw	a5,-44(s0)
	beq	a5,zero,.L118
	.loc 1 465 14 is_stmt 0 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-48(s0)
	bge	a4,a5,.L119
	.loc 1 465 61 is_stmt 1 discriminator 3
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 465 50 discriminator 3
	sb	a5,-21(s0)
	.loc 1 465 71 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 465 14 discriminator 3
	li	a5,1
	j	.L120
.L119:
	.loc 1 465 14 is_stmt 0 discriminator 4
	li	a5,0
	j	.L120
.L118:
	.loc 1 465 86 is_stmt 1 discriminator 2
	addi	a5,s0,-21
	mv	a0,a5
	call	cli_getchar
	mv	a5,a0
	.loc 1 465 14 discriminator 5
	addi	a5,a5,-1
	seqz	a5,a5
	andi	a5,a5,0xff
.L120:
	.loc 1 465 14 is_stmt 0 discriminator 6
	bne	a5,zero,.L121
	.loc 1 607 12 is_stmt 1
	li	a5,0
.L122:
	.loc 1 608 1
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
.LFE13:
	.size	get_input, .-get_input
	.section	.rodata
	.align	2
.LC15:
	.string	"command '%s' not found\r\n"
	.section	.text.print_bad_command,"ax",@progbits
	.align	1
	.type	print_bad_command, @function
print_bad_command:
.LFB14:
	.loc 1 615 1
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
	.loc 1 616 8
	lw	a5,-20(s0)
	beq	a5,zero,.L128
	.loc 1 617 9
	lw	a1,-20(s0)
	lui	a5,%hi(.LC15)
	addi	a0,a5,%lo(.LC15)
	call	aos_cli_printf
.L128:
	.loc 1 619 1
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
	.size	print_bad_command, .-print_bad_command
	.section	.rodata
	.align	2
.LC16:
	.string	"syntax error\r\n"
	.section	.text.cli_main_input,"ax",@progbits
	.align	1
	.type	cli_main_input, @function
cli_main_input:
.LFB15:
	.loc 1 622 1
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
	.loc 1 624 11
	sw	zero,-20(s0)
	.loc 1 626 22
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	addi	a4,a5,56
	.loc 1 626 35
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	.loc 1 626 9
	addi	a5,a5,52
	lw	a3,-40(s0)
	lw	a2,-36(s0)
	mv	a1,a5
	mv	a0,a4
	call	get_input
	mv	a5,a0
	.loc 1 626 8 discriminator 1
	beq	a5,zero,.L134
	.loc 1 627 18
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	.loc 1 627 13
	addi	a5,a5,56
	sw	a5,-20(s0)
	.loc 1 634 23
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	addi	a5,a5,56
	.loc 1 634 13
	mv	a0,a5
	call	strlen
	mv	a5,a0
	.loc 1 634 12 discriminator 1
	beq	a5,zero,.L131
	.loc 1 635 13
	call	cli_history_input
.L131:
	.loc 1 639 15
	lw	a0,-20(s0)
	call	handle_input
	sw	a0,-24(s0)
	.loc 1 640 12
	lw	a4,-24(s0)
	li	a5,1
	bne	a4,a5,.L132
	.loc 1 641 13
	lw	a0,-20(s0)
	call	print_bad_command
	j	.L133
.L132:
	.loc 1 642 19
	lw	a4,-24(s0)
	li	a5,2
	bne	a4,a5,.L133
	.loc 1 643 13
	lui	a5,%hi(.LC16)
	addi	a0,a5,%lo(.LC16)
	call	aos_cli_printf
.L133:
	.loc 1 646 9
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	aos_cli_printf
	.loc 1 647 20
	lui	a5,%hi(esc_tag)
	addi	a5,a5,%lo(esc_tag)
	sb	zero,0(a5)
	.loc 1 648 21
	lui	a5,%hi(esc_tag_len)
	sb	zero,%lo(esc_tag_len)(a5)
	.loc 1 649 9
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	aos_cli_printf
.L134:
	.loc 1 651 1
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
.LFE15:
	.size	cli_main_input, .-cli_main_input
	.globl	built_ins
	.section	.rodata
	.align	2
.LC17:
	.string	"help"
	.align	2
.LC18:
	.string	"print this"
	.align	2
.LC19:
	.string	"p"
	.align	2
.LC20:
	.string	"print memory"
	.align	2
.LC21:
	.string	"m"
	.align	2
.LC22:
	.string	"modify memory"
	.align	2
.LC23:
	.string	"echo"
	.align	2
.LC24:
	.string	"echo for command"
	.align	2
.LC25:
	.string	"exit"
	.align	2
.LC26:
	.string	"close CLI"
	.align	2
.LC27:
	.string	"devname"
	.align	2
.LC28:
	.string	"print device name"
	.align	2
.LC29:
	.string	"sysver"
	.align	2
.LC30:
	.string	"system version"
	.align	2
.LC31:
	.string	"reboot"
	.align	2
.LC32:
	.string	"reboot system"
	.align	2
.LC33:
	.string	"poweroff"
	.align	2
.LC34:
	.string	"poweroff system"
	.align	2
.LC35:
	.string	"reset"
	.align	2
.LC36:
	.string	"system reset"
	.align	2
.LC37:
	.string	"time"
	.align	2
.LC38:
	.string	"system time"
	.align	2
.LC39:
	.string	"ota"
	.align	2
.LC40:
	.string	"system ota"
	.align	2
.LC41:
	.string	"ps"
	.align	2
.LC42:
	.string	"thread dump"
	.align	2
.LC43:
	.string	"ls"
	.align	2
.LC44:
	.string	"file list"
	.align	2
.LC45:
	.string	"hexdump"
	.align	2
.LC46:
	.string	"dump file"
	.align	2
.LC47:
	.string	"cat"
	.align	2
.LC48:
	.string	"cat file"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	built_ins, @object
	.size	built_ins, 192
built_ins:
	.word	.LC17
	.word	.LC18
	.word	help_cmd
	.word	.LC19
	.word	.LC20
	.word	pmem_cmd
	.word	.LC21
	.word	.LC22
	.word	mmem_cmd
	.word	.LC23
	.word	.LC24
	.word	echo_cmd
	.word	.LC25
	.word	.LC26
	.word	exit_cmd
	.word	.LC27
	.word	.LC28
	.word	devname_cmd
	.word	.LC29
	.word	.LC30
	.word	version_cmd
	.word	.LC31
	.word	.LC32
	.word	reboot_cmd
	.word	.LC33
	.word	.LC34
	.word	poweroff_cmd
	.word	.LC35
	.word	.LC36
	.word	reset_cmd
	.word	.LC37
	.word	.LC38
	.word	uptime_cmd
	.word	.LC39
	.word	.LC40
	.word	ota_cmd
	.word	.LC41
	.word	.LC42
	.word	ps_cmd
	.word	.LC43
	.word	.LC44
	.word	ls_cmd
	.word	.LC45
	.word	.LC46
	.word	hexdump_cmd
	.word	.LC47
	.word	.LC48
	.word	cat_cmd
	.section	.rodata
	.align	2
.LC49:
	.string	"====Build-in Commands====\r\n"
	.align	2
.LC50:
	.string	"====Support %d cmds once, seperate by ; ====\r\n"
	.align	2
.LC51:
	.string	""
	.align	2
.LC52:
	.string	"%-25s: %s\r\n"
	.align	2
.LC53:
	.string	"====User Commands====\r\n"
	.section	.text.help_cmd,"ax",@progbits
	.align	1
	.type	help_cmd, @function
help_cmd:
.LFB16:
	.loc 1 706 1
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
	.loc 1 708 14
	li	a5,16
	sw	a5,-28(s0)
	.loc 1 710 5
	lui	a5,%hi(.LC49)
	addi	a0,a5,%lo(.LC49)
	call	aos_cli_printf
	.loc 1 711 5
	li	a1,4
	lui	a5,%hi(.LC50)
	addi	a0,a5,%lo(.LC50)
	call	aos_cli_printf
	.loc 1 714 12
	sw	zero,-20(s0)
	.loc 1 714 5
	j	.L136
.L140:
.LBB4:
	.loc 1 715 35
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	lui	a4,%hi(built_ins)
	addi	a4,a4,%lo(built_ins)
	add	a5,a5,a4
	sw	a5,-36(s0)
	.loc 1 716 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 716 12
	beq	a5,zero,.L137
	.loc 1 717 48
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 1 718 31
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 717 13
	beq	a5,zero,.L138
	.loc 1 717 13 is_stmt 0 discriminator 1
	lw	a5,-36(s0)
	lw	a5,4(a5)
	j	.L139
.L138:
	.loc 1 717 13 discriminator 2
	lui	a5,%hi(.LC51)
	addi	a5,a5,%lo(.LC51)
.L139:
	.loc 1 717 13 discriminator 4
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC52)
	addi	a0,a5,%lo(.LC52)
	call	aos_cli_printf
.L137:
.LBE4:
	.loc 1 714 38 is_stmt 1 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L136:
	.loc 1 714 19 discriminator 1
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	bgtu	a4,a5,.L140
	.loc 1 721 5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	aos_cli_printf
	.loc 1 722 5
	lui	a5,%hi(.LC53)
	addi	a0,a5,%lo(.LC53)
	call	aos_cli_printf
	.loc 1 723 12
	sw	zero,-20(s0)
	.loc 1 723 19
	lw	a5,-28(s0)
	sw	a5,-24(s0)
	.loc 1 723 5
	j	.L141
.L147:
.LBB5:
	.loc 1 724 41
	li	a1,0
	lw	a0,-20(s0)
	call	cli_command_get
	sw	a0,-32(s0)
	.loc 1 725 12
	lw	a4,-32(s0)
	lui	a5,%hi(built_ins)
	addi	a5,a5,%lo(built_ins)
	bltu	a4,a5,.L142
	.loc 1 725 49 discriminator 1
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	lui	a5,%hi(built_ins)
	addi	a5,a5,%lo(built_ins)
	add	a5,a4,a5
	.loc 1 725 30 discriminator 1
	lw	a4,-32(s0)
	bltu	a4,a5,.L148
.L142:
	.loc 1 728 16
	lw	a5,-32(s0)
	lw	a5,0(a5)
	.loc 1 728 12
	beq	a5,zero,.L143
	.loc 1 729 48
	lw	a5,-32(s0)
	lw	a4,0(a5)
	.loc 1 730 31
	lw	a5,-32(s0)
	lw	a5,4(a5)
	.loc 1 729 13
	beq	a5,zero,.L144
	.loc 1 729 13 is_stmt 0 discriminator 1
	lw	a5,-32(s0)
	lw	a5,4(a5)
	j	.L145
.L144:
	.loc 1 729 13 discriminator 2
	lui	a5,%hi(.LC51)
	addi	a5,a5,%lo(.LC51)
.L145:
	.loc 1 729 13 discriminator 4
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC52)
	addi	a0,a5,%lo(.LC52)
	call	aos_cli_printf
	.loc 1 731 14 is_stmt 1
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	j	.L143
.L148:
	.loc 1 726 13
	nop
.L143:
.LBE5:
	.loc 1 723 93 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L141:
	.loc 1 723 44 discriminator 1
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a5,44(a5)
	.loc 1 723 62 discriminator 1
	addi	a4,a5,8
	.loc 1 723 39 discriminator 1
	lw	a5,-20(s0)
	.loc 1 723 66 discriminator 1
	bleu	a4,a5,.L149
	.loc 1 723 76 discriminator 3
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a4,48(a5)
	.loc 1 723 71 discriminator 3
	lw	a5,-24(s0)
	.loc 1 723 66 discriminator 3
	bgtu	a4,a5,.L147
.L149:
	.loc 1 734 1
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
.LFE16:
	.size	help_cmd, .-help_cmd
	.section	.rodata
	.align	2
.LC54:
	.string	"kernel version :posix\r\n"
	.align	2
.LC55:
	.string	"release_bl_iot_sdk_1.6.11-1-g66bb28da-dirty"
	.align	2
.LC56:
	.string	"Memory Configuration on %d banks:\r\n"
	.align	2
.LC57:
	.string	"    [%d]%6s %6u Kbytes @ %p\r\n"
	.align	2
.LC58:
	.string	"Heap left: %d Bytes\r\n"
	.section	.text.version_cmd,"ax",@progbits
	.align	1
	.type	version_cmd, @function
version_cmd:
.LFB17:
	.loc 1 738 1
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
	.loc 1 739 9
	li	a5,4
	sw	a5,-24(s0)
	.loc 1 743 5
	lui	a5,%hi(.LC54)
	addi	a0,a5,%lo(.LC54)
	call	aos_cli_printf
	.loc 1 744 5
	lui	a5,%hi(.LC55)
	addi	a0,a5,%lo(.LC55)
	call	aos_cli_printf
	.loc 1 745 5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	aos_cli_printf
	.loc 1 746 14
	addi	a3,s0,-80
	addi	a2,s0,-56
	addi	a4,s0,-40
	addi	a5,s0,-24
	mv	a1,a4
	mv	a0,a5
	call	bl_chip_memory_ram
	mv	a5,a0
	.loc 1 746 8 discriminator 1
	bne	a5,zero,.L151
	.loc 1 747 9
	lw	a5,-24(s0)
	mv	a1,a5
	lui	a5,%hi(.LC56)
	addi	a0,a5,%lo(.LC56)
	call	aos_cli_printf
	.loc 1 748 16
	sw	zero,-20(s0)
	.loc 1 748 9
	j	.L152
.L153:
	.loc 1 749 13
	addi	a3,s0,-80
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,1
	add	a2,a3,a5
	.loc 1 752 21
	lw	a4,-20(s0)
	addi	a5,s0,-56
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 749 13
	srli	a3,a5,10
	lw	a4,-20(s0)
	addi	a5,s0,-40
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a5
	lw	a1,-20(s0)
	lui	a5,%hi(.LC57)
	addi	a0,a5,%lo(.LC57)
	call	aos_cli_printf
	.loc 1 748 31 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L152:
	.loc 1 748 23 discriminator 1
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	blt	a4,a5,.L153
.L151:
	.loc 1 757 5
	call	xPortGetFreeHeapSize
	mv	a5,a0
	.loc 1 757 5 is_stmt 0 discriminator 1
	mv	a1,a5
	lui	a5,%hi(.LC58)
	addi	a0,a5,%lo(.LC58)
	call	aos_cli_printf
	.loc 1 758 1 is_stmt 1
	nop
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	version_cmd, .-version_cmd
	.section	.rodata
	.align	2
.LC59:
	.string	"Disabled"
	.align	2
.LC60:
	.string	"Enabled"
	.align	2
.LC61:
	.string	"Usage: echo on/off. Echo is currently %s\r\n"
	.align	2
.LC62:
	.string	"on"
	.align	2
.LC63:
	.string	"Enable echo\r\n"
	.align	2
.LC64:
	.string	"off"
	.align	2
.LC65:
	.string	"Disable echo\r\n"
	.section	.text.echo_cmd,"ax",@progbits
	.align	1
	.type	echo_cmd, @function
echo_cmd:
.LFB18:
	.loc 1 764 1
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
	.loc 1 765 8
	lw	a4,-28(s0)
	li	a5,1
	bne	a4,a5,.L155
	.loc 1 767 27
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a5,4(a5)
	.loc 1 766 9
	beq	a5,zero,.L156
	.loc 1 766 9 is_stmt 0 discriminator 1
	lui	a5,%hi(.LC59)
	addi	a5,a5,%lo(.LC59)
	j	.L157
.L156:
	.loc 1 766 9 discriminator 2
	lui	a5,%hi(.LC60)
	addi	a5,a5,%lo(.LC60)
.L157:
	.loc 1 766 9 discriminator 4
	mv	a1,a5
	lui	a5,%hi(.LC61)
	addi	a0,a5,%lo(.LC61)
	call	aos_cli_printf
	.loc 1 768 9 is_stmt 1
	j	.L154
.L155:
	.loc 1 771 21
	lw	a5,-32(s0)
	addi	a5,a5,4
	.loc 1 771 10
	lw	a4,0(a5)
	lui	a5,%hi(.LC62)
	addi	a1,a5,%lo(.LC62)
	mv	a0,a4
	call	strcmp
	mv	a5,a0
	.loc 1 771 8 discriminator 1
	bne	a5,zero,.L159
	.loc 1 772 9
	lui	a5,%hi(.LC63)
	addi	a0,a5,%lo(.LC63)
	call	aos_cli_printf
	.loc 1 773 12
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	.loc 1 773 28
	sw	zero,4(a5)
	j	.L154
.L159:
	.loc 1 774 28
	lw	a5,-32(s0)
	addi	a5,a5,4
	.loc 1 774 17
	lw	a4,0(a5)
	lui	a5,%hi(.LC64)
	addi	a1,a5,%lo(.LC64)
	mv	a0,a4
	call	strcmp
	mv	a5,a0
	.loc 1 774 15 discriminator 1
	bne	a5,zero,.L154
	.loc 1 775 9
	lui	a5,%hi(.LC65)
	addi	a0,a5,%lo(.LC65)
	call	aos_cli_printf
	.loc 1 776 12
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	.loc 1 776 28
	li	a4,1
	sw	a4,4(a5)
.L154:
	.loc 1 778 1
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
	.size	echo_cmd, .-echo_cmd
	.section	.text.exit_cmd,"ax",@progbits
	.align	1
	.type	exit_cmd, @function
exit_cmd:
.LFB19:
	.loc 1 781 1
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
	.loc 1 782 13
	lui	a5,%hi(cliexit)
	li	a4,1
	sw	a4,%lo(cliexit)(a5)
	.loc 1 783 5
	nop
	.loc 1 784 1
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
	.size	exit_cmd, .-exit_cmd
	.section	.rodata
	.align	2
.LC66:
	.string	"BL602"
	.align	2
.LC67:
	.string	"device name: %s\r\n"
	.section	.text.devname_cmd,"ax",@progbits
	.align	1
	.type	devname_cmd, @function
devname_cmd:
.LFB20:
	.loc 1 787 1
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
	.loc 1 788 5
	lui	a5,%hi(.LC66)
	addi	a1,a5,%lo(.LC66)
	lui	a5,%hi(.LC67)
	addi	a0,a5,%lo(.LC67)
	call	aos_cli_printf
	.loc 1 789 1
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
	.size	devname_cmd, .-devname_cmd
	.section	.rodata
	.align	2
.LC68:
	.string	"p <addr> <nunits> <width>\r\naddr  : address to display\r\nnunits: number of units to display (default is 16)\r\nwidth : width of unit, 1/2/4 (default is 4)\r\n"
	.align	2
.LC69:
	.string	"0x%08x:"
	.align	2
.LC70:
	.string	" %02x"
	.align	2
.LC71:
	.string	" %04x"
	.align	2
.LC72:
	.string	" %08x"
	.section	.text.pmem_cmd,"ax",@progbits
	.align	1
	.type	pmem_cmd, @function
pmem_cmd:
.LFB21:
	.loc 1 792 1
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
	.loc 1 794 11
	sw	zero,-36(s0)
	.loc 1 795 11
	sw	zero,-24(s0)
	.loc 1 796 9
	li	a5,16
	sw	a5,-28(s0)
	.loc 1 797 9
	li	a5,4
	sw	a5,-32(s0)
	.loc 1 799 5
	lw	a4,-60(s0)
	li	a5,4
	beq	a4,a5,.L164
	lw	a4,-60(s0)
	li	a5,4
	bgt	a4,a5,.L190
	lw	a4,-60(s0)
	li	a5,2
	beq	a4,a5,.L166
	lw	a4,-60(s0)
	li	a5,3
	beq	a4,a5,.L167
	.loc 1 811 13
	j	.L190
.L164:
	.loc 1 801 32
	lw	a5,-64(s0)
	addi	a5,a5,12
	.loc 1 801 21
	lw	a5,0(a5)
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	strtol
	sw	a0,-32(s0)
.L167:
	.loc 1 804 33
	lw	a5,-64(s0)
	addi	a5,a5,8
	.loc 1 804 22
	lw	a5,0(a5)
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	strtol
	sw	a0,-28(s0)
	.loc 1 805 20
	lw	a5,-28(s0)
	li	a4,1024
	ble	a5,a4,.L168
	li	a5,1024
.L168:
	sw	a5,-28(s0)
.L166:
	.loc 1 808 39
	lw	a5,-64(s0)
	addi	a5,a5,4
	.loc 1 808 28
	lw	a5,0(a5)
	addi	a4,s0,-36
	li	a2,0
	mv	a1,a4
	mv	a0,a5
	call	strtol
	mv	a5,a0
	.loc 1 808 18 discriminator 1
	sw	a5,-24(s0)
	.loc 1 809 13
	j	.L169
.L190:
	.loc 1 811 13
	nop
.L169:
	.loc 1 814 13
	lw	a5,-36(s0)
	.loc 1 814 8
	beq	a5,zero,.L170
	.loc 1 814 34 discriminator 1
	lw	a5,-64(s0)
	addi	a5,a5,4
	lw	a4,0(a5)
	.loc 1 814 27 discriminator 1
	lw	a5,-36(s0)
	.loc 1 814 20 discriminator 1
	bne	a4,a5,.L171
.L170:
	.loc 1 815 9
	lui	a5,%hi(.LC68)
	addi	a0,a5,%lo(.LC68)
	call	aos_cli_printf
	j	.L163
.L171:
	.loc 1 822 5
	lw	a4,-32(s0)
	li	a5,1
	beq	a4,a5,.L173
	lw	a4,-32(s0)
	li	a5,2
	beq	a4,a5,.L174
	j	.L189
.L173:
	.loc 1 824 20
	sw	zero,-20(s0)
	.loc 1 824 13
	j	.L176
.L179:
	.loc 1 825 28
	lw	a5,-20(s0)
	andi	a5,a5,15
	.loc 1 825 20
	bne	a5,zero,.L177
	.loc 1 826 21
	lw	a5,-24(s0)
	mv	a1,a5
	lui	a5,%hi(.LC69)
	addi	a0,a5,%lo(.LC69)
	call	aos_cli_printf
.L177:
	.loc 1 828 41
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 1 828 17
	mv	a1,a5
	lui	a5,%hi(.LC70)
	addi	a0,a5,%lo(.LC70)
	call	aos_cli_printf
	.loc 1 829 22
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 1 830 23
	lw	a4,-20(s0)
	srai	a5,a4,31
	srli	a5,a5,28
	add	a4,a4,a5
	andi	a4,a4,15
	sub	a5,a4,a5
	mv	a4,a5
	.loc 1 830 20
	li	a5,15
	bne	a4,a5,.L178
	.loc 1 831 21
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	aos_cli_printf
.L178:
	.loc 1 824 38 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L176:
	.loc 1 824 27 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	blt	a4,a5,.L179
	.loc 1 834 13
	j	.L163
.L174:
	.loc 1 836 20
	sw	zero,-20(s0)
	.loc 1 836 13
	j	.L181
.L184:
	.loc 1 837 27
	lw	a5,-20(s0)
	andi	a5,a5,7
	.loc 1 837 20
	bne	a5,zero,.L182
	.loc 1 838 21
	lw	a5,-24(s0)
	mv	a1,a5
	lui	a5,%hi(.LC69)
	addi	a0,a5,%lo(.LC69)
	call	aos_cli_printf
.L182:
	.loc 1 840 41
	lw	a5,-24(s0)
	lhu	a5,0(a5)
	.loc 1 840 17
	mv	a1,a5
	lui	a5,%hi(.LC71)
	addi	a0,a5,%lo(.LC71)
	call	aos_cli_printf
	.loc 1 841 22
	lw	a5,-24(s0)
	addi	a5,a5,2
	sw	a5,-24(s0)
	.loc 1 842 23
	lw	a4,-20(s0)
	srai	a5,a4,31
	srli	a5,a5,29
	add	a4,a4,a5
	andi	a4,a4,7
	sub	a5,a4,a5
	mv	a4,a5
	.loc 1 842 20
	li	a5,7
	bne	a4,a5,.L183
	.loc 1 843 21
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	aos_cli_printf
.L183:
	.loc 1 836 38 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L181:
	.loc 1 836 27 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	blt	a4,a5,.L184
	.loc 1 846 13
	j	.L163
.L189:
	.loc 1 848 20
	sw	zero,-20(s0)
	.loc 1 848 13
	j	.L185
.L188:
	.loc 1 849 27
	lw	a5,-20(s0)
	andi	a5,a5,3
	.loc 1 849 20
	bne	a5,zero,.L186
	.loc 1 850 21
	lw	a5,-24(s0)
	mv	a1,a5
	lui	a5,%hi(.LC69)
	addi	a0,a5,%lo(.LC69)
	call	aos_cli_printf
.L186:
	.loc 1 852 17
	lw	a5,-24(s0)
	lw	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC72)
	addi	a0,a5,%lo(.LC72)
	call	aos_cli_printf
	.loc 1 853 22
	lw	a5,-24(s0)
	addi	a5,a5,4
	sw	a5,-24(s0)
	.loc 1 854 23
	lw	a4,-20(s0)
	srai	a5,a4,31
	srli	a5,a5,30
	add	a4,a4,a5
	andi	a4,a4,3
	sub	a5,a4,a5
	mv	a4,a5
	.loc 1 854 20
	li	a5,3
	bne	a4,a5,.L187
	.loc 1 855 21
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	aos_cli_printf
.L187:
	.loc 1 848 38 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L185:
	.loc 1 848 27 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	blt	a4,a5,.L188
	.loc 1 858 13
	nop
.L163:
	.loc 1 860 1
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	pmem_cmd, .-pmem_cmd
	.section	.rodata
	.align	2
.LC73:
	.string	"m <addr> <value> <width>\r\naddr  : address to modify\r\nvalue : new value (default is 0)\r\nwidth : width of unit, 1/2/4 (default is 4)\r\n"
	.align	2
.LC74:
	.string	"value on 0x%x change from 0x%x to 0x%x.\r\n"
	.section	.text.mmem_cmd,"ax",@progbits
	.align	1
	.type	mmem_cmd, @function
mmem_cmd:
.LFB22:
	.loc 1 863 1
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
	.loc 1 864 11
	sw	zero,-20(s0)
	.loc 1 865 9
	li	a5,4
	sw	a5,-24(s0)
	.loc 1 866 18
	sw	zero,-28(s0)
	.loc 1 870 5
	lw	a4,-60(s0)
	li	a5,4
	beq	a4,a5,.L192
	lw	a4,-60(s0)
	li	a5,4
	bgt	a4,a5,.L193
	lw	a4,-60(s0)
	li	a5,2
	beq	a4,a5,.L194
	lw	a4,-60(s0)
	li	a5,3
	beq	a4,a5,.L195
	j	.L193
.L192:
	.loc 1 872 32
	lw	a5,-64(s0)
	addi	a5,a5,12
	.loc 1 872 21
	lw	a5,0(a5)
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	strtol
	sw	a0,-24(s0)
.L195:
	.loc 1 875 32
	lw	a5,-64(s0)
	addi	a5,a5,8
	.loc 1 875 21
	lw	a5,0(a5)
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	strtol
	mv	a5,a0
	.loc 1 875 19 discriminator 1
	sw	a5,-28(s0)
.L194:
	.loc 1 878 39
	lw	a5,-64(s0)
	addi	a5,a5,4
	.loc 1 878 28
	lw	a5,0(a5)
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	strtol
	mv	a5,a0
	.loc 1 878 18 discriminator 1
	sw	a5,-20(s0)
	.loc 1 879 13
	j	.L196
.L193:
	.loc 1 881 18
	sw	zero,-20(s0)
	.loc 1 882 13
	nop
.L196:
	.loc 1 885 8
	lw	a5,-20(s0)
	bne	a5,zero,.L197
	.loc 1 886 9
	lui	a5,%hi(.LC73)
	addi	a0,a5,%lo(.LC73)
	call	aos_cli_printf
	.loc 1 890 9
	j	.L191
.L197:
	.loc 1 893 5
	lw	a4,-24(s0)
	li	a5,1
	beq	a4,a5,.L199
	lw	a4,-24(s0)
	li	a5,2
	beq	a4,a5,.L200
	j	.L203
.L199:
	.loc 1 895 40
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 895 23
	sw	a5,-32(s0)
	.loc 1 896 47
	lw	a5,-28(s0)
	andi	a4,a5,0xff
	.loc 1 896 45
	lw	a5,-20(s0)
	sb	a4,0(a5)
	.loc 1 897 40
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 897 23
	sw	a5,-36(s0)
	.loc 1 898 13
	j	.L202
.L200:
	.loc 1 900 40
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 900 23
	sw	a5,-32(s0)
	.loc 1 901 48
	lw	a5,-28(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 901 46
	lw	a5,-20(s0)
	sh	a4,0(a5)
	.loc 1 902 40
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 902 23
	sw	a5,-36(s0)
	.loc 1 903 13
	j	.L202
.L203:
	.loc 1 906 23
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 907 44
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	.loc 1 908 23
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 909 13
	nop
.L202:
	.loc 1 911 5
	lw	a5,-20(s0)
	lw	a3,-36(s0)
	lw	a2,-32(s0)
	mv	a1,a5
	lui	a5,%hi(.LC74)
	addi	a0,a5,%lo(.LC74)
	call	aos_cli_printf
.L191:
	.loc 1 913 1
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	mmem_cmd, .-mmem_cmd
	.section	.rodata
	.align	2
.LC75:
	.string	"reboot\r\n"
	.section	.text.reboot_cmd,"ax",@progbits
	.align	1
	.type	reboot_cmd, @function
reboot_cmd:
.LFB23:
	.loc 1 918 1
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
	.loc 1 919 5
	lui	a5,%hi(.LC75)
	addi	a0,a5,%lo(.LC75)
	call	aos_cli_printf
	.loc 1 921 5
	call	hal_reboot
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
.LFE23:
	.size	reboot_cmd, .-reboot_cmd
	.section	.rodata
	.align	2
.LC76:
	.string	"poweroff\r\n"
	.section	.text.poweroff_cmd,"ax",@progbits
	.align	1
	.type	poweroff_cmd, @function
poweroff_cmd:
.LFB24:
	.loc 1 925 1
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
	.loc 1 926 5
	lui	a5,%hi(.LC76)
	addi	a0,a5,%lo(.LC76)
	call	aos_cli_printf
	.loc 1 928 5
	call	hal_poweroff
	.loc 1 929 1
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
.LFE24:
	.size	poweroff_cmd, .-poweroff_cmd
	.section	.rodata
	.align	2
.LC77:
	.string	"system reset\r\n"
	.section	.text.reset_cmd,"ax",@progbits
	.align	1
	.type	reset_cmd, @function
reset_cmd:
.LFB25:
	.loc 1 932 1
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
	.loc 1 933 5
	lui	a5,%hi(.LC77)
	addi	a0,a5,%lo(.LC77)
	call	aos_cli_printf
	.loc 1 935 5
	call	hal_sys_reset
	.loc 1 936 1
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
	.size	reset_cmd, .-reset_cmd
	.section	.rodata
	.align	2
.LC78:
	.string	"UP time in ms %llu\r\n"
	.align	2
.LC79:
	.string	"UP time in %llu days, %llu hours, %llu minutes, %llu seconds\r\n"
	.section	.text.uptime_cmd,"ax",@progbits
	.align	1
	.type	uptime_cmd, @function
uptime_cmd:
.LFB26:
	.loc 1 939 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s2,100(sp)
	sw	s3,96(sp)
	sw	s4,92(sp)
	sw	s5,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	sw	a2,-92(s0)
	sw	a3,-96(s0)
	.loc 1 946 10
	call	aos_now_ms
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	.loc 1 947 5
	lw	a2,-40(s0)
	lw	a3,-36(s0)
	lui	a5,%hi(.LC78)
	addi	a0,a5,%lo(.LC78)
	call	aos_cli_printf
	.loc 1 948 13
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	li	a2,1000
	li	a3,0
	mv	a0,a4
	mv	a1,a5
	call	__divdi3
	mv	a4,a0
	mv	a5,a1
	sw	a4,-48(s0)
	sw	a5,-44(s0)
	.loc 1 949 13
	lw	a4,-48(s0)
	lw	a5,-44(s0)
	li	a2,60
	li	a3,0
	mv	a0,a4
	mv	a1,a5
	call	__divdi3
	mv	a4,a0
	mv	a5,a1
	sw	a4,-56(s0)
	sw	a5,-52(s0)
	.loc 1 950 11
	lw	a4,-56(s0)
	lw	a5,-52(s0)
	li	a2,60
	li	a3,0
	mv	a0,a4
	mv	a1,a5
	call	__divdi3
	mv	a4,a0
	mv	a5,a1
	sw	a4,-64(s0)
	sw	a5,-60(s0)
	.loc 1 951 10
	lw	a4,-64(s0)
	lw	a5,-60(s0)
	li	a2,24
	li	a3,0
	mv	a0,a4
	mv	a1,a5
	call	__divdi3
	mv	a4,a0
	mv	a5,a1
	sw	a4,-72(s0)
	sw	a5,-68(s0)
	.loc 1 952 5
	lw	a4,-64(s0)
	lw	a5,-60(s0)
	li	a2,24
	li	a3,0
	mv	a0,a4
	mv	a1,a5
	call	__moddi3
	mv	a4,a0
	mv	a5,a1
	mv	s2,a4
	mv	s3,a5
	lw	a4,-56(s0)
	lw	a5,-52(s0)
	li	a2,60
	li	a3,0
	mv	a0,a4
	mv	a1,a5
	call	__moddi3
	mv	a4,a0
	mv	a5,a1
	mv	s4,a4
	mv	s5,a5
	lw	a4,-48(s0)
	lw	a5,-44(s0)
	li	a2,60
	li	a3,0
	mv	a0,a4
	mv	a1,a5
	call	__moddi3
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(sp)
	sw	a5,4(sp)
	mv	a6,s4
	mv	a7,s5
	mv	a4,s2
	mv	a5,s3
	lw	a2,-72(s0)
	lw	a3,-68(s0)
	lui	a1,%hi(.LC79)
	addi	a0,a1,%lo(.LC79)
	call	aos_cli_printf
	.loc 1 958 1
	nop
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	lw	s2,100(sp)
	.cfi_restore 18
	lw	s3,96(sp)
	.cfi_restore 19
	lw	s4,92(sp)
	.cfi_restore 20
	lw	s5,88(sp)
	.cfi_restore 21
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE26:
	.size	uptime_cmd, .-uptime_cmd
	.section	.text.tftp_ota_thread,"ax",@progbits
	.align	1
	.globl	tftp_ota_thread
	.type	tftp_ota_thread, @function
tftp_ota_thread:
.LFB27:
	.loc 1 961 1
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
	.loc 1 962 5
	li	a0,0
	call	aos_task_exit
	.loc 1 963 1
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
	.size	tftp_ota_thread, .-tftp_ota_thread
	.section	.rodata
	.align	2
.LC80:
	.string	"LOCAL OTA"
	.section	.text.ota_cmd,"ax",@progbits
	.align	1
	.type	ota_cmd, @function
ota_cmd:
.LFB28:
	.loc 1 966 1
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
	.loc 1 967 5
	li	a3,4096
	li	a2,0
	lui	a5,%hi(tftp_ota_thread)
	addi	a1,a5,%lo(tftp_ota_thread)
	lui	a5,%hi(.LC80)
	addi	a0,a5,%lo(.LC80)
	call	aos_task_new
	.loc 1 968 1
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
.LFE28:
	.size	ota_cmd, .-ota_cmd
	.section	.rodata
	.align	2
.LC81:
	.string	"State   Priority  Stack    #          Base\r\n********************************************************\r\n"
	.align	2
.LC82:
	.string	"Task"
	.section	.text.ps_cmd,"ax",@progbits
	.align	1
	.type	ps_cmd, @function
ps_cmd:
.LFB29:
	.loc 1 971 1
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
	.loc 1 973 23
	lui	a5,%hi(.LC81)
	addi	a5,a5,%lo(.LC81)
	sw	a5,-28(s0)
	.loc 1 976 12
	li	a0,1536
	call	pvPortMalloc
	sw	a0,-32(s0)
	.loc 1 977 8
	lw	a5,-32(s0)
	beq	a5,zero,.L215
	.loc 1 980 19
	lw	a5,-32(s0)
	sw	a5,-20(s0)
	.loc 1 983 5
	lui	a5,%hi(.LC82)
	addi	a1,a5,%lo(.LC82)
	lw	a0,-20(s0)
	call	strcpy
	.loc 1 984 22
	lw	a0,-20(s0)
	call	strlen
	mv	a4,a0
	.loc 1 984 19 discriminator 1
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 988 27
	lui	a5,%hi(.LC82)
	addi	a0,a5,%lo(.LC82)
	call	strlen
	mv	a5,a0
	.loc 1 988 25 discriminator 1
	sw	a5,-24(s0)
	.loc 1 988 5
	j	.L213
.L214:
	.loc 1 990 24
	lw	a5,-20(s0)
	li	a4,32
	sb	a4,0(a5)
	.loc 1 991 22
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 994 24
	lw	a5,-20(s0)
	sb	zero,0(a5)
	.loc 1 988 90 discriminator 4
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L213:
	.loc 1 988 59 discriminator 2
	lw	a4,-24(s0)
	li	a5,12
	ble	a4,a5,.L214
	.loc 1 996 5
	lw	a1,-28(s0)
	lw	a0,-20(s0)
	call	strcpy
	.loc 1 997 31
	lw	a0,-28(s0)
	call	strlen
	mv	a4,a0
	.loc 1 997 5 discriminator 1
	lw	a5,-20(s0)
	add	a5,a5,a4
	mv	a0,a5
	call	vTaskList
	.loc 1 998 5
	lw	a0,-32(s0)
	call	cli_putstr
	.loc 1 1000 5
	lw	a0,-32(s0)
	call	vPortFree
	j	.L210
.L215:
	.loc 1 978 9
	nop
.L210:
	.loc 1 1001 1
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
	.size	ps_cmd, .-ps_cmd
	.section	.rodata
	.align	2
.LC83:
	.string	"\tSize\t\t\t\t\t Name\t\t\tFiletype\r\n"
	.align	2
.LC84:
	.string	"----------------------------------------------------------------------------------\r\n"
	.align	2
.LC85:
	.string	"File System"
	.align	2
.LC86:
	.string	"Unknown"
	.align	2
.LC87:
	.string	"Block Device"
	.align	2
.LC88:
	.string	"Char Device"
	.align	2
.LC89:
	.string	"%10d\t\t%30s\t\t\t%s\r\n"
	.section	.text.cb_idnoe,"ax",@progbits
	.align	1
	.type	cb_idnoe, @function
cb_idnoe:
.LFB30:
	.loc 1 1004 1
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
	.loc 1 1005 10
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 1007 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 1007 8
	bne	a5,zero,.L217
	.loc 1 1008 16
	lw	a5,-20(s0)
	li	a4,1
	sw	a4,0(a5)
	.loc 1 1009 9
	lui	a5,%hi(.LC83)
	addi	a0,a5,%lo(.LC83)
	call	printf
	.loc 1 1010 9
	lui	a5,%hi(.LC84)
	addi	a0,a5,%lo(.LC84)
	call	printf
.L217:
	.loc 1 1013 20
	lw	a5,-40(s0)
	lbu	a4,16(a5)
	.loc 1 1012 5
	li	a5,1
	beq	a4,a5,.L218
	.loc 1 1013 87
	lw	a5,-40(s0)
	lbu	a4,16(a5)
	.loc 1 1013 145
	li	a5,2
	beq	a4,a5,.L219
	.loc 1 1013 155 discriminator 1
	lw	a5,-40(s0)
	lbu	a4,16(a5)
	.loc 1 1013 208 discriminator 1
	li	a5,3
	bne	a4,a5,.L220
	.loc 1 1012 5
	li	a4,80
	j	.L221
.L220:
	li	a4,0
	j	.L221
.L219:
	li	a4,28
	j	.L221
.L218:
	.loc 1 1012 5 is_stmt 0 discriminator 1
	li	a4,28
.L221:
	.loc 1 1012 5 discriminator 2
	lw	a5,-40(s0)
	lw	a2,8(a5)
	.loc 1 1015 20 is_stmt 1
	lw	a5,-40(s0)
	lbu	a3,16(a5)
	.loc 1 1012 5 discriminator 2
	li	a5,1
	beq	a3,a5,.L222
	.loc 1 1015 77
	lw	a5,-40(s0)
	lbu	a3,16(a5)
	.loc 1 1015 126
	li	a5,2
	beq	a3,a5,.L223
	.loc 1 1015 136 discriminator 1
	lw	a5,-40(s0)
	lbu	a3,16(a5)
	.loc 1 1015 181 discriminator 1
	li	a5,3
	bne	a3,a5,.L224
	.loc 1 1012 5
	lui	a5,%hi(.LC85)
	addi	a5,a5,%lo(.LC85)
	j	.L225
.L224:
	lui	a5,%hi(.LC86)
	addi	a5,a5,%lo(.LC86)
	j	.L225
.L223:
	lui	a5,%hi(.LC87)
	addi	a5,a5,%lo(.LC87)
	j	.L225
.L222:
	.loc 1 1012 5 is_stmt 0 discriminator 3
	lui	a5,%hi(.LC88)
	addi	a5,a5,%lo(.LC88)
.L225:
	.loc 1 1012 5 discriminator 4
	mv	a3,a5
	mv	a1,a4
	lui	a5,%hi(.LC89)
	addi	a0,a5,%lo(.LC89)
	call	printf
	.loc 1 1017 12 is_stmt 1
	li	a5,0
	.loc 1 1018 1
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
.LFE30:
	.size	cb_idnoe, .-cb_idnoe
	.section	.rodata
	.align	2
.LC90:
	.string	"/sdcard"
	.align	2
.LC91:
	.string	"/sdcard/%s"
	.align	2
.LC92:
	.string	"%10ld\t\t%30s\t\t\tDirectory\r\n"
	.align	2
.LC93:
	.string	"%10ld\t\t%30s\t\t\tFile\r\n"
	.align	2
.LC94:
	.string	"can not open sdcard\r\n"
	.align	2
.LC95:
	.string	"/romfs"
	.align	2
.LC96:
	.string	"can not open romfs\r\n"
	.align	2
.LC97:
	.string	"/"
	.align	2
.LC98:
	.string	"un-supported direcotry!\r\n"
	.align	2
.LC99:
	.string	"invalid parameter!\r\n"
	.section	.text.ls_cmd,"ax",@progbits
	.align	1
	.type	ls_cmd, @function
ls_cmd:
.LFB31:
	.loc 1 1021 1
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sw	ra,172(sp)
	sw	s0,168(sp)
	sw	s1,164(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,176
	.cfi_def_cfa 8, 0
	sw	a0,-164(s0)
	sw	a1,-168(s0)
	sw	a2,-172(s0)
	sw	a3,-176(s0)
	.loc 1 1026 9
	sw	zero,-160(s0)
	.loc 1 1028 10
	li	a0,88
	call	pvPortMalloc
	sw	a0,-20(s0)
	.loc 1 1029 5
	li	a2,88
	li	a1,0
	lui	a5,%hi(stat)
	addi	a0,a5,%lo(stat)
	call	memset
	.loc 1 1030 5
	addi	a5,s0,-156
	li	a2,128
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 1032 8
	lw	a4,-172(s0)
	li	a5,2
	bne	a4,a5,.L228
	.loc 1 1033 25
	lw	a5,-176(s0)
	addi	a5,a5,4
	.loc 1 1033 14
	lw	a4,0(a5)
	lui	a5,%hi(.LC90)
	addi	a1,a5,%lo(.LC90)
	mv	a0,a4
	call	strcmp
	mv	a5,a0
	.loc 1 1033 12 discriminator 1
	bne	a5,zero,.L229
	.loc 1 1034 18
	lui	a5,%hi(.LC90)
	addi	a0,a5,%lo(.LC90)
	call	aos_opendir
	sw	a0,-24(s0)
	.loc 1 1035 16
	lw	a5,-24(s0)
	beq	a5,zero,.L230
	.loc 1 1036 17
	lui	a5,%hi(.LC83)
	addi	a0,a5,%lo(.LC83)
	call	printf
	.loc 1 1037 17
	lui	a5,%hi(.LC84)
	addi	a0,a5,%lo(.LC84)
	call	printf
.L235:
	.loc 1 1039 34
	lw	a0,-24(s0)
	call	aos_readdir
	sw	a0,-28(s0)
	.loc 1 1040 24
	lw	a5,-28(s0)
	beq	a5,zero,.L249
	.loc 1 1043 88
	lw	a5,-28(s0)
	addi	a5,a5,5
	.loc 1 1043 21
	addi	a4,s0,-156
	mv	a3,a5
	lui	a5,%hi(.LC91)
	addi	a2,a5,%lo(.LC91)
	li	a1,127
	mv	a0,a4
	call	snprintf
	.loc 1 1044 30
	addi	a5,s0,-156
	lw	a1,-20(s0)
	mv	a0,a5
	call	aos_stat
	mv	a5,a0
	.loc 1 1044 24 discriminator 1
	bne	a5,zero,.L235
	.loc 1 1045 40
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 1045 36
	li	a5,16384
	and	a5,a4,a5
	.loc 1 1045 28
	beq	a5,zero,.L234
	.loc 1 1046 29
	lw	a5,-20(s0)
	lw	a4,16(a5)
	.loc 1 1046 95
	lw	a5,-28(s0)
	addi	a5,a5,5
	.loc 1 1046 29
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC92)
	addi	a0,a5,%lo(.LC92)
	call	printf
	j	.L235
.L234:
	.loc 1 1048 29
	lw	a5,-20(s0)
	lw	a4,16(a5)
	.loc 1 1048 90
	lw	a5,-28(s0)
	addi	a5,a5,5
	.loc 1 1048 29
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC93)
	addi	a0,a5,%lo(.LC93)
	call	printf
	.loc 1 1039 32
	j	.L235
.L249:
	.loc 1 1041 25
	nop
	.loc 1 1052 17
	lw	a0,-24(s0)
	call	aos_closedir
	j	.L236
.L230:
	.loc 1 1054 17
	lui	a5,%hi(.LC94)
	addi	a0,a5,%lo(.LC94)
	call	printf
	j	.L236
.L229:
	.loc 1 1056 32
	lw	a5,-176(s0)
	addi	a5,a5,4
	.loc 1 1056 21
	lw	s1,0(a5)
	lui	a5,%hi(.LC95)
	addi	a0,a5,%lo(.LC95)
	call	strlen
	mv	a5,a0
	.loc 1 1056 21 is_stmt 0 discriminator 1
	mv	a2,a5
	lui	a5,%hi(.LC95)
	addi	a1,a5,%lo(.LC95)
	mv	a0,s1
	call	memcmp
	mv	a5,a0
	.loc 1 1056 19 is_stmt 1 discriminator 2
	bne	a5,zero,.L237
	.loc 1 1057 47
	lw	a5,-176(s0)
	addi	a5,a5,4
	.loc 1 1057 18
	lw	a5,0(a5)
	mv	a0,a5
	call	aos_opendir
	sw	a0,-24(s0)
	.loc 1 1058 16
	lw	a5,-24(s0)
	beq	a5,zero,.L238
	.loc 1 1059 17
	lui	a5,%hi(.LC83)
	addi	a0,a5,%lo(.LC83)
	call	printf
	.loc 1 1060 17
	lui	a5,%hi(.LC84)
	addi	a0,a5,%lo(.LC84)
	call	printf
.L244:
	.loc 1 1062 34
	lw	a0,-24(s0)
	call	aos_readdir
	sw	a0,-28(s0)
	.loc 1 1063 24
	lw	a5,-28(s0)
	beq	a5,zero,.L250
	.loc 1 1068 21
	addi	a5,s0,-156
	li	a2,128
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 1069 74
	lw	a5,-176(s0)
	addi	a5,a5,4
	.loc 1 1069 21
	lw	a5,0(a5)
	addi	a4,s0,-156
	mv	a3,a5
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	li	a1,127
	mv	a0,a4
	call	snprintf
	.loc 1 1070 35
	addi	a5,s0,-156
	mv	a0,a5
	call	strlen
	mv	a5,a0
	.loc 1 1070 53 discriminator 1
	addi	a5,a5,-1
	.loc 1 1070 34 discriminator 1
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a4,-140(a5)
	.loc 1 1070 24 discriminator 1
	li	a5,47
	beq	a4,a5,.L241
	.loc 1 1071 35
	addi	a5,s0,-156
	mv	a0,a5
	call	strlen
	mv	a5,a0
	.loc 1 1071 54 discriminator 1
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,47
	sb	a4,-140(a5)
.L241:
	.loc 1 1073 42
	addi	a5,s0,-156
	mv	a0,a5
	call	strlen
	mv	a4,a0
	.loc 1 1073 21 discriminator 1
	addi	a5,s0,-156
	add	s1,a5,a4
	.loc 1 1073 80 discriminator 1
	addi	a5,s0,-156
	mv	a0,a5
	call	strlen
	mv	a4,a0
	.loc 1 1073 98 discriminator 2
	li	a5,127
	sub	a4,a5,a4
	.loc 1 1073 119 discriminator 2
	lw	a5,-28(s0)
	addi	a5,a5,5
	.loc 1 1073 21 discriminator 2
	mv	a3,a5
	lui	a5,%hi(.LC2)
	addi	a2,a5,%lo(.LC2)
	mv	a1,a4
	mv	a0,s1
	call	snprintf
	.loc 1 1076 30
	addi	a5,s0,-156
	lw	a1,-20(s0)
	mv	a0,a5
	call	aos_stat
	mv	a5,a0
	.loc 1 1076 24 discriminator 1
	bne	a5,zero,.L244
	.loc 1 1077 40
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 1077 36
	li	a5,16384
	and	a5,a4,a5
	.loc 1 1077 28
	beq	a5,zero,.L243
	.loc 1 1078 29
	lw	a5,-20(s0)
	lw	a4,16(a5)
	.loc 1 1078 95
	lw	a5,-28(s0)
	addi	a5,a5,5
	.loc 1 1078 29
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC92)
	addi	a0,a5,%lo(.LC92)
	call	printf
	j	.L244
.L243:
	.loc 1 1080 29
	lw	a5,-20(s0)
	lw	a4,16(a5)
	.loc 1 1080 90
	lw	a5,-28(s0)
	addi	a5,a5,5
	.loc 1 1080 29
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC93)
	addi	a0,a5,%lo(.LC93)
	call	printf
	.loc 1 1062 32
	j	.L244
.L250:
	.loc 1 1064 25
	nop
	.loc 1 1084 17
	lw	a0,-24(s0)
	call	aos_closedir
	j	.L236
.L238:
	.loc 1 1086 17
	lui	a5,%hi(.LC96)
	addi	a0,a5,%lo(.LC96)
	call	printf
	j	.L236
.L237:
	.loc 1 1088 32
	lw	a5,-176(s0)
	addi	a5,a5,4
	.loc 1 1088 21
	lw	a4,0(a5)
	lui	a5,%hi(.LC97)
	addi	a1,a5,%lo(.LC97)
	mv	a0,a4
	call	strcmp
	mv	a5,a0
	.loc 1 1088 19 discriminator 1
	bne	a5,zero,.L245
	.loc 1 1089 13
	addi	a5,s0,-160
	mv	a1,a5
	lui	a5,%hi(cb_idnoe)
	addi	a0,a5,%lo(cb_idnoe)
	call	inode_forearch_name
	j	.L236
.L245:
	.loc 1 1091 13
	lui	a5,%hi(.LC98)
	addi	a0,a5,%lo(.LC98)
	call	aos_cli_printf
	j	.L236
.L228:
	.loc 1 1094 12
	lw	a4,-172(s0)
	li	a5,1
	bne	a4,a5,.L246
	.loc 1 1095 13
	addi	a5,s0,-160
	mv	a1,a5
	lui	a5,%hi(cb_idnoe)
	addi	a0,a5,%lo(cb_idnoe)
	call	inode_forearch_name
	j	.L236
.L246:
	.loc 1 1097 13
	lui	a5,%hi(.LC99)
	addi	a0,a5,%lo(.LC99)
	call	aos_cli_printf
.L236:
	.loc 1 1100 5
	lw	a0,-20(s0)
	call	vPortFree
	.loc 1 1101 1
	nop
	lw	ra,172(sp)
	.cfi_restore 1
	lw	s0,168(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	lw	s1,164(sp)
	.cfi_restore 9
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE31:
	.size	ls_cmd, .-ls_cmd
	.section	.rodata
	.align	2
.LC100:
	.string	"open %s failed!\r\n"
	.align	2
.LC101:
	.string	"Found file %s. XIP Addr %p, len %lu\r\n"
	.section	.text.hexdump_cmd,"ax",@progbits
	.align	1
	.type	hexdump_cmd, @function
hexdump_cmd:
.LFB32:
	.loc 1 1104 1
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
	.loc 1 1108 8
	lw	a4,-44(s0)
	li	a5,2
	beq	a4,a5,.L252
	.loc 1 1109 9
	lui	a5,%hi(.LC99)
	addi	a0,a5,%lo(.LC99)
	call	printf
.L252:
	.loc 1 1112 23
	lw	a5,-48(s0)
	addi	a5,a5,4
	.loc 1 1112 10
	lw	a5,0(a5)
	li	a1,0
	mv	a0,a5
	call	aos_open
	sw	a0,-20(s0)
	.loc 1 1113 8
	lw	a5,-20(s0)
	bge	a5,zero,.L253
	.loc 1 1114 43
	lw	a5,-48(s0)
	addi	a5,a5,4
	.loc 1 1114 9
	lw	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC100)
	addi	a0,a5,%lo(.LC100)
	call	printf
	j	.L251
.L253:
	.loc 1 1118 5
	addi	a5,s0,-28
	li	a2,8
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 1119 5
	addi	a5,s0,-28
	mv	a2,a5
	li	a1,1
	lw	a0,-20(s0)
	call	aos_ioctl
	.loc 1 1121 17
	lw	a5,-48(s0)
	addi	a5,a5,4
	.loc 1 1120 5
	lw	a5,0(a5)
	lw	a4,-28(s0)
	lw	a3,-24(s0)
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC101)
	addi	a0,a5,%lo(.LC101)
	call	printf
	.loc 1 1125 26
	lw	a5,-28(s0)
	.loc 1 1125 39
	lw	a4,-24(s0)
	.loc 1 1125 5
	mv	a1,a4
	mv	a0,a5
	call	utils_hexdump
	.loc 1 1126 5
	lw	a0,-20(s0)
	call	aos_close
.L251:
	.loc 1 1127 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	hexdump_cmd, .-hexdump_cmd
	.section	.text.cat_cmd,"ax",@progbits
	.align	1
	.type	cat_cmd, @function
cat_cmd:
.LFB33:
	.loc 1 1130 1
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
	.loc 1 1134 8
	lw	a4,-44(s0)
	li	a5,2
	beq	a4,a5,.L256
	.loc 1 1135 9
	lui	a5,%hi(.LC99)
	addi	a0,a5,%lo(.LC99)
	call	printf
.L256:
	.loc 1 1138 23
	lw	a5,-48(s0)
	addi	a5,a5,4
	.loc 1 1138 10
	lw	a5,0(a5)
	li	a1,0
	mv	a0,a5
	call	aos_open
	sw	a0,-20(s0)
	.loc 1 1139 8
	lw	a5,-20(s0)
	bge	a5,zero,.L257
	.loc 1 1140 43
	lw	a5,-48(s0)
	addi	a5,a5,4
	.loc 1 1140 9
	lw	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC100)
	addi	a0,a5,%lo(.LC100)
	call	printf
	j	.L255
.L257:
	.loc 1 1145 17
	addi	a5,s0,-21
	li	a2,1
	mv	a1,a5
	lw	a0,-20(s0)
	call	aos_read
	mv	a4,a0
	.loc 1 1145 11 discriminator 1
	li	a5,1
	bne	a4,a5,.L262
	.loc 1 1148 9
	lbu	a5,-21(s0)
	mv	a1,a5
	lui	a5,%hi(.LC13)
	addi	a0,a5,%lo(.LC13)
	call	printf
	.loc 1 1145 11
	j	.L257
.L262:
	.loc 1 1146 13
	nop
	.loc 1 1150 5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	.loc 1 1151 5
	lw	a0,-20(s0)
	call	aos_close
.L255:
	.loc 1 1152 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	cat_cmd, .-cat_cmd
	.section	.text.aos_cli_register_command,"ax",@progbits
	.align	1
	.globl	aos_cli_register_command
	.type	aos_cli_register_command, @function
aos_cli_register_command:
.LFB34:
	.loc 1 1156 1
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
	.loc 1 1159 9
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	.loc 1 1159 8
	bne	a5,zero,.L264
	.loc 1 1160 15
	li	a5,1
	j	.L265
.L264:
	.loc 1 1163 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1163 8
	beq	a5,zero,.L266
	.loc 1 1163 27 discriminator 1
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 1163 20 discriminator 1
	bne	a5,zero,.L267
.L266:
	.loc 1 1164 15
	li	a5,22
	j	.L265
.L267:
	.loc 1 1167 12
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a4,48(a5)
	.loc 1 1167 33
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a5,44(a5)
	.loc 1 1167 51
	addi	a5,a5,8
	.loc 1 1167 8
	bltu	a4,a5,.L268
	.loc 1 1168 15
	li	a5,12
	j	.L265
.L268:
	.loc 1 1174 12
	sw	zero,-20(s0)
	.loc 1 1174 5
	j	.L269
.L271:
	.loc 1 1175 13
	li	a1,0
	lw	a0,-20(s0)
	call	cli_command_get
	mv	a4,a0
	.loc 1 1175 12 discriminator 1
	lw	a5,-36(s0)
	bne	a5,a4,.L270
	.loc 1 1176 20
	li	a5,0
	j	.L265
.L270:
	.loc 1 1174 41 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L269:
	.loc 1 1174 24 discriminator 1
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a4,48(a5)
	.loc 1 1174 19 discriminator 1
	lw	a5,-20(s0)
	bgtu	a4,a5,.L271
	.loc 1 1193 8
	lui	a5,%hi(cli)
	lw	a3,%lo(cli)(a5)
	.loc 1 1193 26
	lui	a5,%hi(cli)
	lw	a4,%lo(cli)(a5)
	lw	a5,48(a4)
	.loc 1 1193 40
	addi	a2,a5,1
	sw	a2,48(a4)
	.loc 1 1193 48
	lui	a4,%hi(cli)
	lw	a4,%lo(cli)(a4)
	lw	a4,44(a4)
	.loc 1 1193 43
	sub	a5,a5,a4
	.loc 1 1193 67
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,-36(s0)
	sw	a4,12(a5)
	.loc 1 1195 12
	li	a5,0
.L265:
	.loc 1 1196 1
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
	.size	aos_cli_register_command, .-aos_cli_register_command
	.section	.text.aos_cli_unregister_command,"ax",@progbits
	.align	1
	.globl	aos_cli_unregister_command
	.type	aos_cli_unregister_command, @function
aos_cli_unregister_command:
.LFB35:
	.loc 1 1199 1
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
	.loc 1 1203 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1203 8
	beq	a5,zero,.L273
	.loc 1 1203 27 discriminator 1
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 1203 20 discriminator 1
	bne	a5,zero,.L274
.L273:
	.loc 1 1204 15
	li	a5,22
	j	.L275
.L274:
	.loc 1 1207 12
	sw	zero,-20(s0)
	.loc 1 1207 5
	j	.L276
.L281:
.LBB6:
	.loc 1 1208 13
	sw	zero,-32(s0)
	.loc 1 1209 39
	addi	a5,s0,-32
	mv	a1,a5
	lw	a0,-20(s0)
	call	cli_command_get
	sw	a0,-24(s0)
	.loc 1 1210 12
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	bne	a4,a5,.L277
	.loc 1 1212 17
	lw	a5,-32(s0)
	.loc 1 1212 16
	beq	a5,zero,.L278
	.loc 1 1213 23
	li	a5,1
	j	.L275
.L278:
	.loc 1 1215 16
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a4,48(a5)
	.loc 1 1215 30
	addi	a4,a4,-1
	sw	a4,48(a5)
	.loc 1 1216 33
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a4,48(a5)
	.loc 1 1216 48
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 1 1216 28
	sw	a5,-28(s0)
	.loc 1 1217 16
	lw	a5,-28(s0)
	ble	a5,zero,.L280
	.loc 1 1218 29
	lui	a5,%hi(cli)
	lw	a4,%lo(cli)(a5)
	.loc 1 1218 46
	lw	a3,-20(s0)
	.loc 1 1218 51
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a5,44(a5)
	.loc 1 1218 46
	sub	a5,a3,a5
	.loc 1 1218 25
	slli	a5,a5,2
	add	a5,a4,a5
	addi	a0,a5,12
	.loc 1 1218 75
	lui	a5,%hi(cli)
	lw	a4,%lo(cli)(a5)
	.loc 1 1218 92
	lw	a3,-20(s0)
	.loc 1 1218 97
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a5,44(a5)
	.loc 1 1218 92
	sub	a5,a3,a5
	.loc 1 1218 115
	addi	a5,a5,1
	.loc 1 1218 71
	slli	a5,a5,2
	add	a5,a4,a5
	addi	a4,a5,12
	.loc 1 1218 17
	lw	a5,-28(s0)
	.loc 1 1219 41
	slli	a5,a5,2
	.loc 1 1218 17
	mv	a2,a5
	mv	a1,a4
	call	memmove
.L280:
	.loc 1 1221 16
	lui	a5,%hi(cli)
	lw	a4,%lo(cli)(a5)
	.loc 1 1221 34
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a3,48(a5)
	.loc 1 1221 54
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a5,44(a5)
	.loc 1 1221 49
	sub	a5,a3,a5
	.loc 1 1221 73
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,12(a5)
	.loc 1 1222 20
	li	a5,0
	j	.L275
.L277:
.LBE6:
	.loc 1 1207 41 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L276:
	.loc 1 1207 24 discriminator 1
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	lw	a4,48(a5)
	.loc 1 1207 19 discriminator 1
	lw	a5,-20(s0)
	bgtu	a4,a5,.L281
	.loc 1 1226 12
	li	a5,-12
.L275:
	.loc 1 1227 1
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
.LFE35:
	.size	aos_cli_unregister_command, .-aos_cli_unregister_command
	.section	.text.aos_cli_register_commands,"ax",@progbits
	.align	1
	.globl	aos_cli_register_commands
	.type	aos_cli_register_commands, @function
aos_cli_register_commands:
.LFB36:
	.loc 1 1230 1
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
	.loc 1 1234 9
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	.loc 1 1234 8
	bne	a5,zero,.L283
	.loc 1 1235 15
	li	a5,1
	j	.L284
.L283:
	.loc 1 1237 12
	sw	zero,-20(s0)
	.loc 1 1237 5
	j	.L285
.L287:
	.loc 1 1238 20
	lw	a5,-36(s0)
	addi	a4,a5,12
	sw	a4,-36(s0)
	mv	a0,a5
	call	aos_cli_register_command
	sw	a0,-24(s0)
	.loc 1 1238 12 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L286
	.loc 1 1239 20
	lw	a5,-24(s0)
	j	.L284
.L286:
	.loc 1 1237 32 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L285:
	.loc 1 1237 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	blt	a4,a5,.L287
	.loc 1 1243 12
	li	a5,0
.L284:
	.loc 1 1244 1
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
.LFE36:
	.size	aos_cli_register_commands, .-aos_cli_register_commands
	.section	.text.aos_cli_unregister_commands,"ax",@progbits
	.align	1
	.globl	aos_cli_unregister_commands
	.type	aos_cli_unregister_commands, @function
aos_cli_unregister_commands:
.LFB37:
	.loc 1 1247 1
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
	.loc 1 1251 12
	sw	zero,-20(s0)
	.loc 1 1251 5
	j	.L289
.L292:
	.loc 1 1252 20
	lw	a5,-36(s0)
	addi	a4,a5,12
	sw	a4,-36(s0)
	mv	a0,a5
	call	aos_cli_unregister_command
	sw	a0,-24(s0)
	.loc 1 1252 12 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L290
	.loc 1 1253 20
	lw	a5,-24(s0)
	j	.L291
.L290:
	.loc 1 1251 32 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L289:
	.loc 1 1251 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	blt	a4,a5,.L292
	.loc 1 1257 12
	li	a5,0
.L291:
	.loc 1 1258 1
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
.LFE37:
	.size	aos_cli_unregister_commands, .-aos_cli_unregister_commands
	.section	.text.aos_cli_stop,"ax",@progbits
	.align	1
	.globl	aos_cli_stop
	.type	aos_cli_stop, @function
aos_cli_stop:
.LFB38:
	.loc 1 1261 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1262 13
	lui	a5,%hi(cliexit)
	li	a4,1
	sw	a4,%lo(cliexit)(a5)
	.loc 1 1264 12
	li	a5,0
	.loc 1 1265 1
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
.LFE38:
	.size	aos_cli_stop, .-aos_cli_stop
	.section	.text.aos_cli_task_get,"ax",@progbits
	.align	1
	.globl	aos_cli_task_get
	.type	aos_cli_task_get, @function
aos_cli_task_get:
.LFB39:
	.loc 1 1269 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1270 20
	lui	a5,%hi(cli_task)
	lw	a5,%lo(cli_task)(a5)
	.loc 1 1271 1
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
.LFE39:
	.size	aos_cli_task_get, .-aos_cli_task_get
	.section	.text.aos_cli_init,"ax",@progbits
	.align	1
	.globl	aos_cli_init
	.type	aos_cli_init, @function
aos_cli_init:
.LFB40:
	.loc 1 1274 1
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
	.loc 1 1280 28
	li	a0,580
	call	aos_malloc
	mv	a4,a0
	.loc 1 1280 9 discriminator 1
	lui	a5,%hi(cli)
	sw	a4,%lo(cli)(a5)
	.loc 1 1281 13
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	.loc 1 1281 8
	bne	a5,zero,.L298
	.loc 1 1282 15
	li	a5,12
	j	.L299
.L298:
	.loc 1 1285 5
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	li	a2,580
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 1294 8
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	.loc 1 1294 22
	lui	a4,%hi(_ld_bl_static_cli_cmds_start)
	addi	a4,a4,%lo(_ld_bl_static_cli_cmds_start)
	sw	a4,8(a5)
	.loc 1 1295 78
	lui	a5,%hi(_ld_bl_static_cli_cmds_end)
	addi	a4,a5,%lo(_ld_bl_static_cli_cmds_end)
	lui	a5,%hi(_ld_bl_static_cli_cmds_start)
	addi	a5,a5,%lo(_ld_bl_static_cli_cmds_start)
	sub	a5,a4,a5
	srai	a4,a5,2
	li	a5,-1431654400
	addi	a5,a5,-1365
	mul	a5,a4,a5
	mv	a4,a5
	.loc 1 1295 8
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	.loc 1 1295 26
	sw	a4,44(a5)
	.loc 1 1297 28
	lui	a5,%hi(cli)
	lw	a4,%lo(cli)(a5)
	.loc 1 1297 8
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	.loc 1 1297 28
	lw	a4,44(a4)
	.loc 1 1297 23
	sw	a4,48(a5)
	.loc 1 1299 8
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	.loc 1 1299 22
	li	a4,1
	sw	a4,0(a5)
	.loc 1 1300 8
	lui	a5,%hi(cli)
	lw	a5,%lo(cli)(a5)
	.loc 1 1300 24
	sw	zero,4(a5)
	.loc 1 1310 12
	li	a5,0
.L299:
	.loc 1 1321 1
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
.LFE40:
	.size	aos_cli_init, .-aos_cli_init
	.section	.rodata
	.align	2
.LC102:
	.string	"-------------BUG from aos_read for ret\r\n"
	.section	.text.console_cb_read,"ax",@progbits
	.align	1
	.type	console_cb_read, @function
console_cb_read:
.LFB41:
	.loc 1 1324 1
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
	.loc 1 1328 11
	addi	a5,s0,-36
	li	a2,16
	mv	a1,a5
	lw	a0,-52(s0)
	call	aos_read
	sw	a0,-20(s0)
	.loc 1 1329 8
	lw	a5,-20(s0)
	ble	a5,zero,.L303
	.loc 1 1330 17
	lw	a4,-20(s0)
	.loc 1 1330 12
	li	a5,16
	bgtu	a4,a5,.L302
	.loc 1 1331 24
	lui	a5,%hi(fd_console)
	lw	a4,-52(s0)
	sw	a4,%lo(fd_console)(a5)
	.loc 1 1332 13
	addi	a5,s0,-36
	lw	a1,-20(s0)
	mv	a0,a5
	call	cli_main_input
	.loc 1 1337 1
	j	.L303
.L302:
	.loc 1 1334 13
	lui	a5,%hi(.LC102)
	addi	a0,a5,%lo(.LC102)
	call	printf
.L303:
	.loc 1 1337 1
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
.LFE41:
	.size	console_cb_read, .-console_cb_read
	.section	.rodata
	.align	2
.LC103:
	.string	"Empty cb\r\n"
	.section	.text.console_cb_write,"ax",@progbits
	.align	1
	.type	console_cb_write, @function
console_cb_write:
.LFB42:
	.loc 1 1340 1
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
	.loc 1 1341 5
	lui	a5,%hi(.LC103)
	addi	a0,a5,%lo(.LC103)
	call	printf
	.loc 1 1342 1
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
	.size	console_cb_write, .-console_cb_write
	.section	.text.aos_cli_event_cb_read_get,"ax",@progbits
	.align	1
	.globl	aos_cli_event_cb_read_get
	.type	aos_cli_event_cb_read_get, @function
aos_cli_event_cb_read_get:
.LFB43:
	.loc 1 1345 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1346 12
	lui	a5,%hi(console_cb_read)
	addi	a5,a5,%lo(console_cb_read)
	.loc 1 1347 1
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
	.size	aos_cli_event_cb_read_get, .-aos_cli_event_cb_read_get
	.section	.text.aos_cli_event_cb_write_get,"ax",@progbits
	.align	1
	.globl	aos_cli_event_cb_write_get
	.type	aos_cli_event_cb_write_get, @function
aos_cli_event_cb_write_get:
.LFB44:
	.loc 1 1350 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1351 12
	lui	a5,%hi(console_cb_write)
	addi	a5,a5,%lo(console_cb_write)
	.loc 1 1352 1
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
.LFE44:
	.size	aos_cli_event_cb_write_get, .-aos_cli_event_cb_write_get
	.section	.text.aos_cli_get_tag,"ax",@progbits
	.align	1
	.globl	aos_cli_get_tag
	.type	aos_cli_get_tag, @function
aos_cli_get_tag:
.LFB45:
	.loc 1 1355 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1356 12
	lui	a5,%hi(esc_tag)
	addi	a5,a5,%lo(esc_tag)
	.loc 1 1357 1
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
.LFE45:
	.size	aos_cli_get_tag, .-aos_cli_get_tag
	.section	.text.aos_cli_input_direct,"ax",@progbits
	.align	1
	.globl	aos_cli_input_direct
	.type	aos_cli_input_direct, @function
aos_cli_input_direct:
.LFB46:
	.loc 1 1360 1
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
	.loc 1 1361 5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	cli_main_input
	.loc 1 1362 1
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
	.size	aos_cli_input_direct, .-aos_cli_input_direct
	.section	.text.aos_cli_printf,"ax",@progbits
	.align	1
	.globl	aos_cli_printf
	.type	aos_cli_printf, @function
aos_cli_printf:
.LFB47:
	.loc 1 1366 1
	.cfi_startproc
	addi	sp,sp,-336
	.cfi_def_cfa_offset 336
	sw	ra,300(sp)
	sw	s0,296(sp)
	.cfi_offset 1, -36
	.cfi_offset 8, -40
	addi	s0,sp,304
	.cfi_def_cfa 8, 32
	sw	a0,-292(s0)
	sw	a1,4(s0)
	sw	a2,8(s0)
	sw	a3,12(s0)
	sw	a4,16(s0)
	sw	a5,20(s0)
	sw	a6,24(s0)
	sw	a7,28(s0)
	.loc 1 1373 5
	addi	a5,s0,-288
	li	a2,256
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 1375 8
	sw	zero,-20(s0)
	.loc 1 1376 9
	lui	a5,%hi(esc_tag_len)
	lbu	a5,%lo(esc_tag_len)(a5)
	.loc 1 1376 8
	beq	a5,zero,.L313
	.loc 1 1377 9
	addi	a4,s0,-288
	lui	a5,%hi(esc_tag)
	addi	a1,a5,%lo(esc_tag)
	mv	a0,a4
	call	strcpy
	.loc 1 1378 14
	lui	a5,%hi(esc_tag)
	addi	a0,a5,%lo(esc_tag)
	call	strlen
	mv	a5,a0
	.loc 1 1378 12 discriminator 1
	sw	a5,-20(s0)
.L313:
	.loc 1 1380 19
	lw	a5,-20(s0)
	.loc 1 1380 9
	addi	a4,s0,-288
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 1382 4
	addi	a5,s0,32
	sw	a5,-296(s0)
	lw	a5,-296(s0)
	addi	a5,a5,-28
	sw	a5,-32(s0)
	.loc 1 1383 30
	li	a4,256
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 1 1383 11
	mv	a4,a5
	lw	a5,-32(s0)
	mv	a3,a5
	lw	a2,-292(s0)
	mv	a1,a4
	lw	a0,-24(s0)
	call	vsnprintf
	sw	a0,-28(s0)
	.loc 1 1386 8
	lw	a5,-28(s0)
	bgt	a5,zero,.L314
	.loc 1 1387 16
	li	a5,0
	j	.L316
.L314:
	.loc 1 1390 5
	addi	a5,s0,-288
	mv	a0,a5
	call	cli_putstr
	.loc 1 1392 12
	li	a5,0
.L316:
	.loc 1 1393 1
	mv	a0,a5
	lw	ra,300(sp)
	.cfi_restore 1
	lw	s0,296(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 336
	addi	sp,sp,336
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE47:
	.size	aos_cli_printf, .-aos_cli_printf
	.section	.text.cli_putstr,"ax",@progbits
	.align	1
	.globl	cli_putstr
	.type	cli_putstr, @function
cli_putstr:
.LFB48:
	.loc 1 1397 1
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
	.loc 1 1400 11
	lw	a0,-36(s0)
	call	strlen
	mv	a5,a0
	.loc 1 1400 9 discriminator 1
	sw	a5,-24(s0)
	.loc 1 1401 9
	sw	zero,-20(s0)
	.loc 1 1402 11
	j	.L318
.L321:
	.loc 1 1403 20
	lui	a5,%hi(fd_console)
	lw	a3,%lo(fd_console)(a5)
	lw	a5,-20(s0)
	.loc 1 1403 46
	lw	a4,-36(s0)
	add	a1,a4,a5
	.loc 1 1403 57
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 1 1403 20
	mv	a2,a5
	mv	a0,a3
	call	aos_write
	sw	a0,-28(s0)
	.loc 1 1403 12 discriminator 1
	lw	a5,-28(s0)
	blt	a5,zero,.L323
	.loc 1 1404 17
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1405 13
	nop
.L318:
	.loc 1 1402 16
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	blt	a4,a5,.L321
	j	.L320
.L323:
	.loc 1 1407 9
	nop
.L320:
	.loc 1 1410 12
	li	a5,0
	.loc 1 1411 1
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
	.size	cli_putstr, .-cli_putstr
	.section	.text.cli_getchar,"ax",@progbits
	.align	1
	.globl	cli_getchar
	.type	cli_getchar, @function
cli_getchar:
.LFB49:
	.loc 1 1414 1
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
	.loc 1 1415 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 1416 14
	sw	zero,-24(s0)
	.loc 1 1419 5
	addi	a5,s0,-84
	li	a2,60
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 1420 21
	sb	zero,-84(s0)
	.loc 1 1422 11
	addi	a3,s0,-24
	addi	a5,s0,-84
	li	a4,-1
	li	a2,1
	lw	a1,-100(s0)
	mv	a0,a5
	call	hal_uart_recv_II
	sw	a0,-20(s0)
	.loc 1 1424 8
	lw	a5,-20(s0)
	bne	a5,zero,.L325
	.loc 1 1424 34 discriminator 1
	lw	a4,-24(s0)
	.loc 1 1424 20 discriminator 1
	li	a5,1
	bne	a4,a5,.L325
	.loc 1 1425 16
	li	a5,1
	j	.L327
.L325:
	.loc 1 1427 16
	li	a5,0
.L327:
	.loc 1 1429 1
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
.LFE49:
	.size	cli_getchar, .-cli_getchar
	.section	.bss.argvall.3,"aw",@nobits
	.align	2
	.type	argvall.3, @object
	.size	argvall.3, 256
argvall.3:
	.zero	256
	.section	.sbss.esc.2,"aw",@nobits
	.type	esc.2, @object
	.size	esc.2, 1
esc.2:
	.zero	1
	.section	.sdata.key1.1,"aw"
	.type	key1.1, @object
	.size	key1.1, 1
key1.1:
	.byte	-1
	.section	.sdata.key2.0,"aw"
	.type	key2.0, @object
	.size	key2.0, 1
key2.0:
	.byte	-1
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdarg.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/stage/cli/cli/include/cli.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_stdint.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timeval.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_timespec.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/types.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/stage/yloop/include/aos/kernel.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/hal/soc/uart.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/stat.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_dir.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs_inode.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/fs/vfs_romfs.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/fs/vfs/include/vfs.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 21 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_hexdump.h"
	.file 22 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
	.file 23 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
	.file 24 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_sys.h"
	.file 25 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 26 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_chip.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2254
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x2b
	.4byte	.LASF332
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x37
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2c
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2d
	.4byte	0x3e
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x29
	.byte	0x15
	.4byte	0x64
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x77
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0xe
	.byte	0x2
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0xe
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x4d
	.byte	0x12
	.4byte	0x98
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0xab
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0xc8
	.byte	0x17
	.4byte	0x4a
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x1e
	.byte	0xe
	.4byte	0x98
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x22
	.byte	0xe
	.4byte	0x98
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.4byte	0x98
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x38
	.byte	0xf
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x3c
	.byte	0x18
	.4byte	0x85
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x3f
	.byte	0x18
	.4byte	0x85
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x4b
	.byte	0x18
	.4byte	0x85
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0x5a
	.byte	0x14
	.4byte	0x9f
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x4
	.byte	0x66
	.byte	0x10
	.4byte	0xdd
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x4
	.byte	0x93
	.byte	0x14
	.4byte	0x3e
	.uleb128 0x2e
	.byte	0x4
	.uleb128 0x15
	.4byte	0x13d
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x4
	.byte	0xd5
	.byte	0x18
	.4byte	0x85
	.uleb128 0x2f
	.byte	0x4
	.4byte	.LASF333
	.uleb128 0x5
	.4byte	0x160
	.uleb128 0x15
	.4byte	0x156
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.4byte	.LASF29
	.uleb128 0x16
	.4byte	0x160
	.uleb128 0x5
	.4byte	0x167
	.uleb128 0x16
	.4byte	0x16c
	.uleb128 0x15
	.4byte	0x16c
	.uleb128 0x5
	.4byte	0x185
	.uleb128 0x15
	.4byte	0x17b
	.uleb128 0x30
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x5
	.byte	0x28
	.byte	0x1b
	.4byte	0x150
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x6
	.byte	0x2e
	.byte	0x18
	.4byte	0x186
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x6
	.byte	0x4c
	.byte	0x11
	.4byte	0x125
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x6
	.byte	0x51
	.byte	0x12
	.4byte	0x131
	.uleb128 0x14
	.4byte	.LASF37
	.byte	0xc
	.byte	0x7
	.byte	0x4c
	.byte	0x8
	.4byte	0x1eb
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x7
	.byte	0x4d
	.byte	0x11
	.4byte	0x16c
	.byte	0
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x7
	.byte	0x4e
	.byte	0x11
	.4byte	0x16c
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x7
	.byte	0x50
	.byte	0xc
	.4byte	0x214
	.byte	0x8
	.byte	0
	.uleb128 0x16
	.4byte	0x1b6
	.uleb128 0x18
	.4byte	0x20a
	.uleb128 0x1
	.4byte	0x156
	.uleb128 0x1
	.4byte	0x3e
	.uleb128 0x1
	.4byte	0x3e
	.uleb128 0x1
	.4byte	0x20a
	.byte	0
	.uleb128 0x5
	.4byte	0x156
	.uleb128 0x15
	.4byte	0x20a
	.uleb128 0x5
	.4byte	0x1f0
	.uleb128 0x31
	.4byte	.LASF38
	.2byte	0x244
	.byte	0x7
	.byte	0x53
	.byte	0x8
	.4byte	0x2c3
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x7
	.byte	0x54
	.byte	0x9
	.4byte	0x3e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x7
	.byte	0x55
	.byte	0x9
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0x7
	.byte	0x57
	.byte	0x1f
	.4byte	0x2c3
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x7
	.byte	0x58
	.byte	0x1f
	.4byte	0x2c8
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x7
	.byte	0x5a
	.byte	0x12
	.4byte	0x37
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x7
	.byte	0x5b
	.byte	0x12
	.4byte	0x37
	.byte	0x30
	.uleb128 0x19
	.string	"bp"
	.byte	0x7
	.byte	0x5c
	.byte	0x12
	.4byte	0x37
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x7
	.byte	0x5e
	.byte	0xa
	.4byte	0x2d8
	.byte	0x38
	.uleb128 0x1c
	.4byte	.LASF46
	.byte	0x5f
	.byte	0xb
	.4byte	0x156
	.2byte	0x138
	.uleb128 0x1c
	.4byte	.LASF47
	.byte	0x62
	.byte	0x9
	.4byte	0x3e
	.2byte	0x13c
	.uleb128 0x1c
	.4byte	.LASF48
	.byte	0x63
	.byte	0x9
	.4byte	0x3e
	.2byte	0x140
	.uleb128 0x1c
	.4byte	.LASF49
	.byte	0x64
	.byte	0xa
	.4byte	0x2d8
	.2byte	0x144
	.byte	0
	.uleb128 0x5
	.4byte	0x1eb
	.uleb128 0xf
	.4byte	0x2c3
	.4byte	0x2d8
	.uleb128 0xd
	.4byte	0x37
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.4byte	0x160
	.4byte	0x2e8
	.uleb128 0xd
	.4byte	0x37
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x8
	.byte	0x14
	.byte	0x12
	.4byte	0x58
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x8
	.byte	0x18
	.byte	0x13
	.4byte	0x6b
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x8
	.byte	0x2c
	.byte	0x13
	.4byte	0x8c
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x8
	.byte	0x30
	.byte	0x14
	.4byte	0x9f
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x9
	.byte	0x2a
	.byte	0x19
	.4byte	0xb9
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x10
	.byte	0xa
	.byte	0x2f
	.byte	0x8
	.4byte	0x34c
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0xa
	.byte	0x30
	.byte	0x9
	.4byte	0x318
	.byte	0
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0xa
	.byte	0x31
	.byte	0x7
	.4byte	0x98
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0xb
	.byte	0x61
	.byte	0x14
	.4byte	0xc5
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0xb
	.byte	0x66
	.byte	0x15
	.4byte	0xd1
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0xb
	.byte	0x89
	.byte	0x11
	.4byte	0x10d
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0xb
	.byte	0x9f
	.byte	0x11
	.4byte	0xe9
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0xb
	.byte	0xa3
	.byte	0x11
	.4byte	0xf5
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xb
	.byte	0xa7
	.byte	0x11
	.4byte	0x101
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0xb
	.byte	0xbb
	.byte	0x12
	.4byte	0x119
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xb
	.byte	0xc0
	.byte	0x13
	.4byte	0x144
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.byte	0x16
	.byte	0xc
	.4byte	0x3c3
	.uleb128 0x19
	.string	"hdl"
	.byte	0xc
	.byte	0x18
	.byte	0xf
	.4byte	0x13d
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xc
	.byte	0x19
	.byte	0x7
	.4byte	0x3ac
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0xc
	.byte	0x1b
	.byte	0x17
	.4byte	0x3c3
	.uleb128 0x5
	.4byte	0x3e0
	.uleb128 0x18
	.4byte	0x3eb
	.uleb128 0x1
	.4byte	0x13d
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.4byte	.LASF68
	.uleb128 0x17
	.4byte	0x77
	.byte	0xd
	.byte	0xc
	.byte	0xe
	.4byte	0x41d
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0xd
	.byte	0x12
	.byte	0x3
	.4byte	0x3f2
	.uleb128 0x17
	.4byte	0x77
	.byte	0xd
	.byte	0x17
	.byte	0xe
	.4byte	0x442
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0xd
	.byte	0x1a
	.byte	0x3
	.4byte	0x429
	.uleb128 0x17
	.4byte	0x77
	.byte	0xd
	.byte	0x1f
	.byte	0xe
	.4byte	0x473
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0xd
	.byte	0x24
	.byte	0x3
	.4byte	0x44e
	.uleb128 0x17
	.4byte	0x77
	.byte	0xd
	.byte	0x29
	.byte	0xe
	.4byte	0x49e
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0xd
	.byte	0x2d
	.byte	0x3
	.4byte	0x47f
	.uleb128 0x17
	.4byte	0x77
	.byte	0xd
	.byte	0x32
	.byte	0xe
	.4byte	0x4c9
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0xd
	.byte	0x36
	.byte	0x3
	.4byte	0x4aa
	.uleb128 0x11
	.byte	0xc
	.byte	0xd
	.byte	0x43
	.byte	0x9
	.4byte	0x52d
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0xd
	.byte	0x44
	.byte	0xe
	.4byte	0x30c
	.byte	0
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0xd
	.byte	0x45
	.byte	0x1b
	.4byte	0x41d
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0xd
	.byte	0x46
	.byte	0x17
	.4byte	0x49e
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0xd
	.byte	0x47
	.byte	0x1a
	.4byte	0x442
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0xd
	.byte	0x48
	.byte	0x1d
	.4byte	0x473
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0xd
	.byte	0x49
	.byte	0x15
	.4byte	0x4c9
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0xd
	.byte	0x4a
	.byte	0x3
	.4byte	0x4d5
	.uleb128 0x11
	.byte	0x3c
	.byte	0xd
	.byte	0x4f
	.byte	0x9
	.4byte	0x5eb
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0xd
	.byte	0x50
	.byte	0xd
	.4byte	0x2f4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0xd
	.byte	0x51
	.byte	0x13
	.4byte	0x52d
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0xd
	.byte	0x52
	.byte	0xb
	.4byte	0x13d
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0xd
	.byte	0x53
	.byte	0xb
	.4byte	0x13d
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF102
	.byte	0xd
	.byte	0x54
	.byte	0xe
	.4byte	0x30c
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0xd
	.byte	0x55
	.byte	0xe
	.4byte	0x30c
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0xd
	.byte	0x56
	.byte	0xb
	.4byte	0x13d
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0xd
	.byte	0x57
	.byte	0xb
	.4byte	0x13d
	.byte	0x24
	.uleb128 0x19
	.string	"fd"
	.byte	0xd
	.byte	0x58
	.byte	0xb
	.4byte	0x13d
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0xd
	.byte	0x59
	.byte	0xb
	.4byte	0x13d
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0xd
	.byte	0x5a
	.byte	0xb
	.4byte	0x13d
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0xd
	.byte	0x5b
	.byte	0xd
	.4byte	0x2f4
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xd
	.byte	0x5c
	.byte	0xb
	.4byte	0x13d
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0xd
	.byte	0x5d
	.byte	0x3
	.4byte	0x539
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x58
	.byte	0xe
	.byte	0x1b
	.byte	0x8
	.4byte	0x6bb
	.uleb128 0x2
	.4byte	.LASF112
	.byte	0xe
	.byte	0x1d
	.byte	0x9
	.4byte	0x370
	.byte	0
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0xe
	.byte	0x1e
	.byte	0x9
	.4byte	0x364
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0xe
	.byte	0x1f
	.byte	0xa
	.4byte	0x394
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF115
	.byte	0xe
	.byte	0x20
	.byte	0xb
	.4byte	0x3a0
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0xe
	.byte	0x21
	.byte	0x9
	.4byte	0x37c
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0xe
	.byte	0x22
	.byte	0x9
	.4byte	0x388
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0xe
	.byte	0x23
	.byte	0x9
	.4byte	0x370
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0xe
	.byte	0x24
	.byte	0x9
	.4byte	0x19e
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0xe
	.byte	0x2a
	.byte	0x13
	.4byte	0x324
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0xe
	.byte	0x2b
	.byte	0x13
	.4byte	0x324
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0xe
	.byte	0x2c
	.byte	0x13
	.4byte	0x324
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0xe
	.byte	0x2d
	.byte	0xd
	.4byte	0x358
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0xe
	.byte	0x2e
	.byte	0xc
	.4byte	0x34c
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0xe
	.byte	0x30
	.byte	0x8
	.4byte	0x6bb
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.4byte	0x98
	.4byte	0x6cb
	.uleb128 0xd
	.4byte	0x37
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.4byte	.LASF126
	.byte	0x24
	.byte	0xf
	.byte	0x4
	.byte	0x8
	.4byte	0x74e
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0xf
	.byte	0x5
	.byte	0xa
	.4byte	0x98
	.byte	0
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0xf
	.byte	0x6
	.byte	0xa
	.4byte	0x98
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0xf
	.byte	0x7
	.byte	0xa
	.4byte	0x98
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0xf
	.byte	0x8
	.byte	0xa
	.4byte	0x98
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF131
	.byte	0xf
	.byte	0x9
	.byte	0xa
	.4byte	0x98
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF132
	.byte	0xf
	.byte	0xa
	.byte	0xa
	.4byte	0x98
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF133
	.byte	0xf
	.byte	0xb
	.byte	0xa
	.4byte	0x98
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF134
	.byte	0xf
	.byte	0xc
	.byte	0xa
	.4byte	0x98
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF135
	.byte	0xf
	.byte	0xd
	.byte	0xa
	.4byte	0x98
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.byte	0xf
	.byte	0x10
	.byte	0x9
	.4byte	0x77f
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0xf
	.byte	0x11
	.byte	0x9
	.4byte	0x3e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0xf
	.byte	0x12
	.byte	0xd
	.4byte	0x2f4
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0xf
	.byte	0x13
	.byte	0xa
	.4byte	0x77f
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.4byte	0x160
	.4byte	0x78e
	.uleb128 0x32
	.4byte	0x37
	.byte	0
	.uleb128 0x3
	.4byte	.LASF139
	.byte	0xf
	.byte	0x14
	.byte	0x3
	.4byte	0x74e
	.uleb128 0x11
	.byte	0x8
	.byte	0xf
	.byte	0x16
	.byte	0x9
	.4byte	0x7be
	.uleb128 0x2
	.4byte	.LASF140
	.byte	0xf
	.byte	0x17
	.byte	0x9
	.4byte	0x3e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF141
	.byte	0xf
	.byte	0x18
	.byte	0x9
	.4byte	0x3e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0xf
	.byte	0x19
	.byte	0x3
	.4byte	0x79a
	.uleb128 0x17
	.4byte	0x77
	.byte	0x10
	.byte	0x12
	.byte	0x6
	.4byte	0x7ef
	.uleb128 0xa
	.4byte	.LASF143
	.byte	0
	.uleb128 0xa
	.4byte	.LASF144
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF145
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF146
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF147
	.byte	0x10
	.byte	0x2c
	.byte	0x1f
	.4byte	0x864
	.uleb128 0x14
	.4byte	.LASF148
	.byte	0x1c
	.byte	0x10
	.byte	0x46
	.byte	0x8
	.4byte	0x864
	.uleb128 0x2
	.4byte	.LASF149
	.byte	0x10
	.byte	0x47
	.byte	0xb
	.4byte	0xaa4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF150
	.byte	0x10
	.byte	0x48
	.byte	0xb
	.4byte	0xab8
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF151
	.byte	0x10
	.byte	0x49
	.byte	0xf
	.4byte	0xad6
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF152
	.byte	0x10
	.byte	0x4a
	.byte	0xf
	.4byte	0xaf4
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF153
	.byte	0x10
	.byte	0x4b
	.byte	0xb
	.4byte	0xb12
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF154
	.byte	0x10
	.byte	0x4d
	.byte	0xb
	.4byte	0xb41
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF155
	.byte	0x10
	.byte	0x4f
	.byte	0xb
	.4byte	0xab8
	.byte	0x18
	.byte	0
	.uleb128 0x16
	.4byte	0x7fb
	.uleb128 0x3
	.4byte	.LASF156
	.byte	0x10
	.byte	0x2d
	.byte	0x1d
	.4byte	0x987
	.uleb128 0x14
	.4byte	.LASF157
	.byte	0x50
	.byte	0x10
	.byte	0x52
	.byte	0x8
	.4byte	0x987
	.uleb128 0x2
	.4byte	.LASF149
	.byte	0x10
	.byte	0x53
	.byte	0xb
	.4byte	0xb5f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF150
	.byte	0x10
	.byte	0x54
	.byte	0xb
	.4byte	0xab8
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF151
	.byte	0x10
	.byte	0x55
	.byte	0xf
	.4byte	0xb7d
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF152
	.byte	0x10
	.byte	0x56
	.byte	0xf
	.4byte	0xb9b
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF158
	.byte	0x10
	.byte	0x57
	.byte	0xd
	.4byte	0xbb9
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF155
	.byte	0x10
	.byte	0x58
	.byte	0xb
	.4byte	0xab8
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0x10
	.byte	0x59
	.byte	0xb
	.4byte	0xbe1
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF159
	.byte	0x10
	.byte	0x5a
	.byte	0xb
	.4byte	0xbfa
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0x10
	.byte	0x5b
	.byte	0xb
	.4byte	0xc18
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF161
	.byte	0x10
	.byte	0x5c
	.byte	0x12
	.4byte	0xc36
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF162
	.byte	0x10
	.byte	0x5d
	.byte	0x15
	.4byte	0xc54
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF163
	.byte	0x10
	.byte	0x5e
	.byte	0xb
	.4byte	0xc6d
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF164
	.byte	0x10
	.byte	0x5f
	.byte	0xb
	.4byte	0xbfa
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF165
	.byte	0x10
	.byte	0x60
	.byte	0xb
	.4byte	0xbfa
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF166
	.byte	0x10
	.byte	0x61
	.byte	0xc
	.4byte	0xc82
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF167
	.byte	0x10
	.byte	0x62
	.byte	0xc
	.4byte	0xc9b
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF168
	.byte	0x10
	.byte	0x63
	.byte	0xc
	.4byte	0xcb5
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF153
	.byte	0x10
	.byte	0x64
	.byte	0xb
	.4byte	0xb12
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0x10
	.byte	0x65
	.byte	0xb
	.4byte	0xcd8
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF169
	.byte	0x10
	.byte	0x66
	.byte	0xb
	.4byte	0xb5f
	.byte	0x4c
	.byte	0
	.uleb128 0x16
	.4byte	0x875
	.uleb128 0x33
	.4byte	.LASF334
	.byte	0x4
	.byte	0x10
	.byte	0x2f
	.byte	0x7
	.4byte	0x9b0
	.uleb128 0x24
	.4byte	.LASF170
	.byte	0x30
	.byte	0x17
	.4byte	0x9b0
	.uleb128 0x24
	.4byte	.LASF171
	.byte	0x31
	.byte	0x15
	.4byte	0x9b5
	.byte	0
	.uleb128 0x5
	.4byte	0x7ef
	.uleb128 0x5
	.4byte	0x869
	.uleb128 0x11
	.byte	0x14
	.byte	0x10
	.byte	0x35
	.byte	0x9
	.4byte	0xa12
	.uleb128 0x19
	.string	"ops"
	.byte	0x10
	.byte	0x36
	.byte	0x17
	.4byte	0x98c
	.byte	0
	.uleb128 0x2
	.4byte	.LASF172
	.byte	0x10
	.byte	0x37
	.byte	0xb
	.4byte	0x13d
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF173
	.byte	0x10
	.byte	0x38
	.byte	0xb
	.4byte	0x156
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF174
	.byte	0x10
	.byte	0x39
	.byte	0x9
	.4byte	0x3e
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF175
	.byte	0x10
	.byte	0x3a
	.byte	0xd
	.4byte	0x2f4
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF176
	.byte	0x10
	.byte	0x3b
	.byte	0xd
	.4byte	0x2f4
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF177
	.byte	0x10
	.byte	0x3c
	.byte	0x3
	.4byte	0x9ba
	.uleb128 0x11
	.byte	0xc
	.byte	0x10
	.byte	0x3e
	.byte	0x9
	.4byte	0xa4f
	.uleb128 0x2
	.4byte	.LASF178
	.byte	0x10
	.byte	0x3f
	.byte	0xe
	.4byte	0xa4f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF179
	.byte	0x10
	.byte	0x40
	.byte	0xb
	.4byte	0x13d
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF180
	.byte	0x10
	.byte	0x41
	.byte	0xc
	.4byte	0x2b
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	0xa12
	.uleb128 0x3
	.4byte	.LASF181
	.byte	0x10
	.byte	0x42
	.byte	0x3
	.4byte	0xa1e
	.uleb128 0x3
	.4byte	.LASF182
	.byte	0x10
	.byte	0x45
	.byte	0x10
	.4byte	0xa6c
	.uleb128 0x5
	.4byte	0xa71
	.uleb128 0x18
	.4byte	0xa81
	.uleb128 0x1
	.4byte	0xa81
	.uleb128 0x1
	.4byte	0x13d
	.byte	0
	.uleb128 0x5
	.4byte	0xa86
	.uleb128 0x34
	.4byte	.LASF335
	.uleb128 0xc
	.4byte	0x3e
	.4byte	0xa9f
	.uleb128 0x1
	.4byte	0xa4f
	.uleb128 0x1
	.4byte	0xa9f
	.byte	0
	.uleb128 0x5
	.4byte	0xa54
	.uleb128 0x5
	.4byte	0xa8b
	.uleb128 0xc
	.4byte	0x3e
	.4byte	0xab8
	.uleb128 0x1
	.4byte	0xa9f
	.byte	0
	.uleb128 0x5
	.4byte	0xaa9
	.uleb128 0xc
	.4byte	0x1aa
	.4byte	0xad6
	.uleb128 0x1
	.4byte	0xa9f
	.uleb128 0x1
	.4byte	0x13d
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x5
	.4byte	0xabd
	.uleb128 0xc
	.4byte	0x1aa
	.4byte	0xaf4
	.uleb128 0x1
	.4byte	0xa9f
	.uleb128 0x1
	.4byte	0x17b
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x5
	.4byte	0xadb
	.uleb128 0xc
	.4byte	0x3e
	.4byte	0xb12
	.uleb128 0x1
	.4byte	0xa9f
	.uleb128 0x1
	.4byte	0x3e
	.uleb128 0x1
	.4byte	0xab
	.byte	0
	.uleb128 0x5
	.4byte	0xaf9
	.uleb128 0xc
	.4byte	0x3e
	.4byte	0xb3a
	.uleb128 0x1
	.4byte	0xa9f
	.uleb128 0x1
	.4byte	0xb3a
	.uleb128 0x1
	.4byte	0xa60
	.uleb128 0x1
	.4byte	0xa81
	.uleb128 0x1
	.4byte	0x13d
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.byte	0x2
	.4byte	.LASF183
	.uleb128 0x5
	.4byte	0xb17
	.uleb128 0xc
	.4byte	0x3e
	.4byte	0xb5f
	.uleb128 0x1
	.4byte	0xa9f
	.uleb128 0x1
	.4byte	0x16c
	.uleb128 0x1
	.4byte	0x3e
	.byte	0
	.uleb128 0x5
	.4byte	0xb46
	.uleb128 0xc
	.4byte	0x1aa
	.4byte	0xb7d
	.uleb128 0x1
	.4byte	0xa9f
	.uleb128 0x1
	.4byte	0x156
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x5
	.4byte	0xb64
	.uleb128 0xc
	.4byte	0x1aa
	.4byte	0xb9b
	.uleb128 0x1
	.4byte	0xa9f
	.uleb128 0x1
	.4byte	0x16c
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x5
	.4byte	0xb82
	.uleb128 0xc
	.4byte	0x19e
	.4byte	0xbb9
	.uleb128 0x1
	.4byte	0xa9f
	.uleb128 0x1
	.4byte	0x19e
	.uleb128 0x1
	.4byte	0x3e
	.byte	0
	.uleb128 0x5
	.4byte	0xba0
	.uleb128 0xc
	.4byte	0x3e
	.4byte	0xbd7
	.uleb128 0x1
	.4byte	0xa9f
	.uleb128 0x1
	.4byte	0x16c
	.uleb128 0x1
	.4byte	0xbd7
	.byte	0
	.uleb128 0x5
	.4byte	0x5f7
	.uleb128 0x15
	.4byte	0xbd7
	.uleb128 0x5
	.4byte	0xbbe
	.uleb128 0xc
	.4byte	0x3e
	.4byte	0xbfa
	.uleb128 0x1
	.4byte	0xa9f
	.uleb128 0x1
	.4byte	0x16c
	.byte	0
	.uleb128 0x5
	.4byte	0xbe6
	.uleb128 0xc
	.4byte	0x3e
	.4byte	0xc18
	.uleb128 0x1
	.4byte	0xa9f
	.uleb128 0x1
	.4byte	0x16c
	.uleb128 0x1
	.4byte	0x16c
	.byte	0
	.uleb128 0x5
	.4byte	0xbff
	.uleb128 0xc
	.4byte	0xc31
	.4byte	0xc31
	.uleb128 0x1
	.4byte	0xa9f
	.uleb128 0x1
	.4byte	0x16c
	.byte	0
	.uleb128 0x5
	.4byte	0x7be
	.uleb128 0x5
	.4byte	0xc1d
	.uleb128 0xc
	.4byte	0xc4f
	.4byte	0xc4f
	.uleb128 0x1
	.4byte	0xa9f
	.uleb128 0x1
	.4byte	0xc31
	.byte	0
	.uleb128 0x5
	.4byte	0x78e
	.uleb128 0x5
	.4byte	0xc3b
	.uleb128 0xc
	.4byte	0x3e
	.4byte	0xc6d
	.uleb128 0x1
	.4byte	0xa9f
	.uleb128 0x1
	.4byte	0xc31
	.byte	0
	.uleb128 0x5
	.4byte	0xc59
	.uleb128 0x18
	.4byte	0xc82
	.uleb128 0x1
	.4byte	0xa9f
	.uleb128 0x1
	.4byte	0xc31
	.byte	0
	.uleb128 0x5
	.4byte	0xc72
	.uleb128 0xc
	.4byte	0x98
	.4byte	0xc9b
	.uleb128 0x1
	.4byte	0xa9f
	.uleb128 0x1
	.4byte	0xc31
	.byte	0
	.uleb128 0x5
	.4byte	0xc87
	.uleb128 0x18
	.4byte	0xcb5
	.uleb128 0x1
	.4byte	0xa9f
	.uleb128 0x1
	.4byte	0xc31
	.uleb128 0x1
	.4byte	0x98
	.byte	0
	.uleb128 0x5
	.4byte	0xca0
	.uleb128 0xc
	.4byte	0x3e
	.4byte	0xcd3
	.uleb128 0x1
	.4byte	0xa9f
	.uleb128 0x1
	.4byte	0x16c
	.uleb128 0x1
	.4byte	0xcd3
	.byte	0
	.uleb128 0x5
	.4byte	0x6cb
	.uleb128 0x5
	.4byte	0xcba
	.uleb128 0x14
	.4byte	.LASF184
	.byte	0x8
	.byte	0x11
	.byte	0xb
	.byte	0x10
	.4byte	0xd05
	.uleb128 0x19
	.string	"buf"
	.byte	0x11
	.byte	0xc
	.byte	0xb
	.4byte	0x156
	.byte	0
	.uleb128 0x2
	.4byte	.LASF185
	.byte	0x11
	.byte	0xd
	.byte	0xe
	.4byte	0x30c
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF186
	.byte	0x11
	.byte	0xe
	.byte	0x3
	.4byte	0xcdd
	.uleb128 0x3
	.4byte	.LASF187
	.byte	0x12
	.byte	0x3f
	.byte	0x11
	.4byte	0x300
	.uleb128 0x12
	.string	"cli"
	.byte	0x42
	.byte	0x17
	.4byte	0xd2e
	.uleb128 0x5
	.byte	0x3
	.4byte	cli
	.uleb128 0x5
	.4byte	0x219
	.uleb128 0x10
	.4byte	.LASF188
	.byte	0x43
	.byte	0x15
	.4byte	0x45
	.uleb128 0x5
	.byte	0x3
	.4byte	cliexit
	.uleb128 0xf
	.4byte	0x160
	.4byte	0xd54
	.uleb128 0xd
	.4byte	0x37
	.byte	0x3f
	.byte	0
	.uleb128 0x35
	.4byte	.LASF192
	.byte	0x1
	.byte	0x44
	.byte	0x6
	.4byte	0xd44
	.uleb128 0x5
	.byte	0x3
	.4byte	esc_tag
	.uleb128 0x10
	.4byte	.LASF189
	.byte	0x45
	.byte	0x10
	.4byte	0x2f4
	.uleb128 0x5
	.byte	0x3
	.4byte	esc_tag_len
	.uleb128 0x10
	.4byte	.LASF190
	.byte	0x46
	.byte	0x13
	.4byte	0x3cf
	.uleb128 0x5
	.byte	0x3
	.4byte	cli_task
	.uleb128 0x10
	.4byte	.LASF191
	.byte	0x47
	.byte	0xc
	.4byte	0x3e
	.uleb128 0x5
	.byte	0x3
	.4byte	fd_console
	.uleb128 0xf
	.4byte	0x1eb
	.4byte	0xda9
	.uleb128 0xd
	.4byte	0x37
	.byte	0xf
	.byte	0
	.uleb128 0x16
	.4byte	0xd99
	.uleb128 0x36
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x2a2
	.byte	0x1a
	.4byte	0xda9
	.uleb128 0x5
	.byte	0x3
	.4byte	built_ins
	.uleb128 0x9
	.4byte	.LASF194
	.byte	0xd
	.byte	0xc1
	.byte	0x9
	.4byte	0x300
	.4byte	0xdeb
	.uleb128 0x1
	.4byte	0xdeb
	.uleb128 0x1
	.4byte	0x13d
	.uleb128 0x1
	.4byte	0x30c
	.uleb128 0x1
	.4byte	0xdf0
	.uleb128 0x1
	.4byte	0x30c
	.byte	0
	.uleb128 0x5
	.4byte	0x5eb
	.uleb128 0x5
	.4byte	0x30c
	.uleb128 0x9
	.4byte	.LASF195
	.byte	0x13
	.byte	0x55
	.byte	0x9
	.4byte	0x1aa
	.4byte	0xe15
	.uleb128 0x1
	.4byte	0x3e
	.uleb128 0x1
	.4byte	0x17b
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF196
	.byte	0x6
	.2byte	0x112
	.byte	0x5
	.4byte	0x3e
	.4byte	0xe3b
	.uleb128 0x1
	.4byte	0x15b
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x176
	.uleb128 0x1
	.4byte	0x186
	.byte	0
	.uleb128 0x9
	.4byte	.LASF197
	.byte	0x14
	.byte	0x20
	.byte	0x8
	.4byte	0x13d
	.4byte	0xe5b
	.uleb128 0x1
	.4byte	0x13d
	.uleb128 0x1
	.4byte	0x17b
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF198
	.byte	0x13
	.byte	0x4a
	.byte	0x9
	.4byte	0x1aa
	.4byte	0xe7b
	.uleb128 0x1
	.4byte	0x3e
	.uleb128 0x1
	.4byte	0x13d
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF199
	.byte	0x13
	.byte	0x3f
	.byte	0x5
	.4byte	0x3e
	.4byte	0xe91
	.uleb128 0x1
	.4byte	0x3e
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF209
	.byte	0x15
	.byte	0x20
	.byte	0x6
	.4byte	0xea8
	.uleb128 0x1
	.4byte	0x13d
	.uleb128 0x1
	.4byte	0x37
	.byte	0
	.uleb128 0x9
	.4byte	.LASF200
	.byte	0x13
	.byte	0x60
	.byte	0x5
	.4byte	0x3e
	.4byte	0xec8
	.uleb128 0x1
	.4byte	0x3e
	.uleb128 0x1
	.4byte	0x3e
	.uleb128 0x1
	.4byte	0xab
	.byte	0
	.uleb128 0x9
	.4byte	.LASF201
	.byte	0x13
	.byte	0x36
	.byte	0x5
	.4byte	0x3e
	.4byte	0xee3
	.uleb128 0x1
	.4byte	0x16c
	.uleb128 0x1
	.4byte	0x3e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF202
	.byte	0x10
	.byte	0x74
	.byte	0x5
	.4byte	0x3e
	.4byte	0xefe
	.uleb128 0x1
	.4byte	0xefe
	.uleb128 0x1
	.4byte	0x13d
	.byte	0
	.uleb128 0x5
	.4byte	0xf03
	.uleb128 0xc
	.4byte	0x3e
	.4byte	0xf17
	.uleb128 0x1
	.4byte	0x13d
	.uleb128 0x1
	.4byte	0xa4f
	.byte	0
	.uleb128 0x9
	.4byte	.LASF203
	.byte	0x14
	.byte	0x1e
	.byte	0x5
	.4byte	0x3e
	.4byte	0xf37
	.uleb128 0x1
	.4byte	0x17b
	.uleb128 0x1
	.4byte	0x17b
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF204
	.byte	0x13
	.byte	0xbd
	.byte	0x5
	.4byte	0x3e
	.4byte	0xf4d
	.uleb128 0x1
	.4byte	0xc31
	.byte	0
	.uleb128 0x9
	.4byte	.LASF205
	.byte	0x13
	.byte	0x98
	.byte	0x5
	.4byte	0x3e
	.4byte	0xf68
	.uleb128 0x1
	.4byte	0x16c
	.uleb128 0x1
	.4byte	0xbd7
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF206
	.byte	0x6
	.2byte	0x110
	.byte	0x5
	.4byte	0x3e
	.4byte	0xf8a
	.uleb128 0x1
	.4byte	0x15b
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x176
	.uleb128 0x20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF207
	.byte	0x13
	.byte	0xc6
	.byte	0xf
	.4byte	0xc4f
	.4byte	0xfa0
	.uleb128 0x1
	.4byte	0xc31
	.byte	0
	.uleb128 0x9
	.4byte	.LASF208
	.byte	0x13
	.byte	0xb4
	.byte	0xc
	.4byte	0xc31
	.4byte	0xfb6
	.uleb128 0x1
	.4byte	0x16c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0xe
	.byte	0x8e
	.byte	0x5
	.4byte	0x3e
	.4byte	0xfd1
	.uleb128 0x1
	.4byte	0x176
	.uleb128 0x1
	.4byte	0xbdc
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF210
	.byte	0x16
	.byte	0xa4
	.byte	0x6
	.4byte	0xfe3
	.uleb128 0x1
	.4byte	0x13d
	.byte	0
	.uleb128 0x25
	.4byte	.LASF211
	.byte	0x17
	.2byte	0x699
	.byte	0x6
	.4byte	0xff6
	.uleb128 0x1
	.4byte	0x156
	.byte	0
	.uleb128 0x9
	.4byte	.LASF212
	.byte	0x14
	.byte	0x26
	.byte	0x7
	.4byte	0x156
	.4byte	0x1011
	.uleb128 0x1
	.4byte	0x15b
	.uleb128 0x1
	.4byte	0x176
	.byte	0
	.uleb128 0x9
	.4byte	.LASF213
	.byte	0x16
	.byte	0xa3
	.byte	0x7
	.4byte	0x13d
	.4byte	0x1027
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF214
	.byte	0xc
	.byte	0x47
	.byte	0x9
	.4byte	0x3e
	.4byte	0x104c
	.uleb128 0x1
	.4byte	0x16c
	.uleb128 0x1
	.4byte	0x3db
	.uleb128 0x1
	.4byte	0x13d
	.uleb128 0x1
	.4byte	0x3e
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF215
	.byte	0xc
	.byte	0x61
	.byte	0xa
	.4byte	0x105e
	.uleb128 0x1
	.4byte	0x3e
	.byte	0
	.uleb128 0x37
	.4byte	.LASF220
	.byte	0xc
	.2byte	0x1ef
	.byte	0xf
	.4byte	0x4a
	.uleb128 0x21
	.4byte	.LASF216
	.byte	0x24
	.uleb128 0x21
	.4byte	.LASF217
	.byte	0x25
	.uleb128 0x21
	.4byte	.LASF218
	.byte	0x23
	.uleb128 0x9
	.4byte	.LASF219
	.byte	0x19
	.byte	0xab
	.byte	0x6
	.4byte	0x98
	.4byte	0x109d
	.uleb128 0x1
	.4byte	0x176
	.uleb128 0x1
	.4byte	0x20f
	.uleb128 0x1
	.4byte	0x3e
	.byte	0
	.uleb128 0x38
	.4byte	.LASF221
	.byte	0x16
	.byte	0xa7
	.byte	0x8
	.4byte	0x2b
	.uleb128 0x9
	.4byte	.LASF222
	.byte	0x1a
	.byte	0x22
	.byte	0x5
	.4byte	0x3e
	.4byte	0x10ce
	.uleb128 0x1
	.4byte	0x10ce
	.uleb128 0x1
	.4byte	0x10d3
	.uleb128 0x1
	.4byte	0x10d3
	.uleb128 0x1
	.4byte	0x10d8
	.byte	0
	.uleb128 0x5
	.4byte	0x3e
	.uleb128 0x5
	.4byte	0x37
	.uleb128 0x5
	.4byte	0x10dd
	.uleb128 0xf
	.4byte	0x160
	.4byte	0x10ed
	.uleb128 0xd
	.4byte	0x37
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.4byte	.LASF223
	.byte	0x14
	.byte	0x2c
	.byte	0x7
	.4byte	0x156
	.4byte	0x110d
	.uleb128 0x1
	.4byte	0x15b
	.uleb128 0x1
	.4byte	0x176
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF224
	.byte	0x14
	.byte	0x1f
	.byte	0x8
	.4byte	0x13d
	.4byte	0x112d
	.uleb128 0x1
	.4byte	0x13f
	.uleb128 0x1
	.4byte	0x180
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF225
	.byte	0x14
	.byte	0x29
	.byte	0x8
	.4byte	0x2b
	.4byte	0x1143
	.uleb128 0x1
	.4byte	0x16c
	.byte	0
	.uleb128 0x25
	.4byte	.LASF226
	.byte	0xc
	.2byte	0x1e1
	.byte	0xa
	.4byte	0x1156
	.uleb128 0x1
	.4byte	0x13d
	.byte	0
	.uleb128 0x9
	.4byte	.LASF227
	.byte	0x14
	.byte	0x21
	.byte	0x8
	.4byte	0x13d
	.4byte	0x1176
	.uleb128 0x1
	.4byte	0x13d
	.uleb128 0x1
	.4byte	0x3e
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF228
	.byte	0xc
	.2byte	0x1bf
	.byte	0xb
	.4byte	0x13d
	.4byte	0x118d
	.uleb128 0x1
	.4byte	0x37
	.byte	0
	.uleb128 0x9
	.4byte	.LASF229
	.byte	0x14
	.byte	0x23
	.byte	0x7
	.4byte	0x156
	.4byte	0x11a8
	.uleb128 0x1
	.4byte	0x16c
	.uleb128 0x1
	.4byte	0x3e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF230
	.byte	0x6
	.byte	0xce
	.byte	0x5
	.4byte	0x3e
	.4byte	0x11bf
	.uleb128 0x1
	.4byte	0x176
	.uleb128 0x20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF231
	.byte	0x14
	.byte	0x24
	.byte	0x5
	.4byte	0x3e
	.4byte	0x11da
	.uleb128 0x1
	.4byte	0x16c
	.uleb128 0x1
	.4byte	0x16c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF232
	.byte	0x14
	.byte	0x2b
	.byte	0x5
	.4byte	0x3e
	.4byte	0x11fa
	.uleb128 0x1
	.4byte	0x16c
	.uleb128 0x1
	.4byte	0x16c
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x13
	.4byte	.LASF235
	.2byte	0x585
	.4byte	0x3e
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1252
	.uleb128 0x4
	.4byte	.LASF45
	.2byte	0x585
	.byte	0x17
	.4byte	0x156
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x6
	.string	"ret"
	.2byte	0x587
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF233
	.2byte	0x588
	.byte	0xe
	.4byte	0x30c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF234
	.2byte	0x589
	.byte	0x10
	.4byte	0x5eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x13
	.4byte	.LASF236
	.2byte	0x574
	.4byte	0x3e
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12a8
	.uleb128 0x7
	.string	"msg"
	.2byte	0x574
	.byte	0x16
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"len"
	.2byte	0x576
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"pos"
	.2byte	0x576
	.byte	0xe
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"ret"
	.2byte	0x576
	.byte	0x13
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x13
	.4byte	.LASF237
	.2byte	0x555
	.4byte	0x3e
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x131d
	.uleb128 0x7
	.string	"msg"
	.2byte	0x555
	.byte	0x20
	.4byte	0x16c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x20
	.uleb128 0x6
	.string	"ap"
	.2byte	0x557
	.byte	0xd
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.string	"pos"
	.2byte	0x559
	.byte	0xb
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.4byte	.LASF238
	.2byte	0x559
	.byte	0x10
	.4byte	0x2d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x6
	.string	"sz"
	.2byte	0x55a
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"len"
	.2byte	0x55b
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x26
	.4byte	.LASF275
	.2byte	0x54f
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1351
	.uleb128 0x4
	.4byte	.LASF239
	.2byte	0x54f
	.byte	0x21
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF240
	.2byte	0x54f
	.byte	0x2d
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF241
	.2byte	0x54a
	.byte	0xd
	.4byte	0x16c
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.4byte	.LASF242
	.2byte	0x545
	.byte	0x7
	.4byte	0x13d
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.4byte	.LASF243
	.2byte	0x540
	.byte	0x7
	.4byte	0x13d
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF245
	.2byte	0x53b
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13c6
	.uleb128 0x7
	.string	"fd"
	.2byte	0x53b
	.byte	0x32
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF244
	.2byte	0x53b
	.byte	0x4c
	.4byte	0x13d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF246
	.2byte	0x52b
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1417
	.uleb128 0x7
	.string	"fd"
	.2byte	0x52b
	.byte	0x31
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF244
	.2byte	0x52b
	.byte	0x4b
	.4byte	0x13d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.4byte	.LASF239
	.2byte	0x52d
	.byte	0xa
	.4byte	0x1417
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"ret"
	.2byte	0x52e
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.4byte	0x160
	.4byte	0x1427
	.uleb128 0xd
	.4byte	0x37
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.4byte	.LASF247
	.2byte	0x4f9
	.4byte	0x3e
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1464
	.uleb128 0x4
	.4byte	.LASF248
	.2byte	0x4f9
	.byte	0x26
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.4byte	.LASF249
	.byte	0x11
	.4byte	0x160
	.uleb128 0x27
	.4byte	.LASF250
	.byte	0x2f
	.4byte	0x160
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF251
	.2byte	0x4f4
	.byte	0x7
	.4byte	0x13d
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.4byte	.LASF252
	.2byte	0x4ec
	.byte	0x5
	.4byte	0x3e
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.4byte	.LASF253
	.2byte	0x4de
	.4byte	0x3e
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14e4
	.uleb128 0x4
	.4byte	.LASF254
	.2byte	0x4de
	.byte	0x3b
	.4byte	0x2c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF255
	.2byte	0x4de
	.byte	0x45
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"i"
	.2byte	0x4e0
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"err"
	.2byte	0x4e1
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF256
	.2byte	0x4cd
	.4byte	0x3e
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1538
	.uleb128 0x4
	.4byte	.LASF254
	.2byte	0x4cd
	.byte	0x39
	.4byte	0x2c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF255
	.2byte	0x4cd
	.byte	0x43
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"i"
	.2byte	0x4cf
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"err"
	.2byte	0x4d0
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF257
	.2byte	0x4ae
	.4byte	0x3e
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15a3
	.uleb128 0x7
	.string	"cmd"
	.2byte	0x4ae
	.byte	0x3a
	.4byte	0x2c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"i"
	.2byte	0x4b0
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF258
	.2byte	0x4b1
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x8
	.4byte	.LASF259
	.2byte	0x4b8
	.byte	0xd
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"c"
	.2byte	0x4b9
	.byte	0x23
	.4byte	0x2c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF260
	.2byte	0x483
	.4byte	0x3e
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15d9
	.uleb128 0x7
	.string	"cmd"
	.2byte	0x483
	.byte	0x38
	.4byte	0x2c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"i"
	.2byte	0x485
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF261
	.2byte	0x469
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1647
	.uleb128 0x7
	.string	"buf"
	.2byte	0x469
	.byte	0x2b
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"len"
	.2byte	0x469
	.byte	0x44
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF262
	.2byte	0x469
	.byte	0x4d
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF263
	.2byte	0x469
	.byte	0x5a
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"fd"
	.2byte	0x46b
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"ch"
	.2byte	0x46c
	.byte	0xa
	.4byte	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0xb
	.4byte	.LASF264
	.2byte	0x44f
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16b6
	.uleb128 0x7
	.string	"buf"
	.2byte	0x44f
	.byte	0x2f
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"len"
	.2byte	0x44f
	.byte	0x48
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF262
	.2byte	0x44f
	.byte	0x51
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF263
	.2byte	0x44f
	.byte	0x5e
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"fd"
	.2byte	0x451
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF265
	.2byte	0x452
	.byte	0x15
	.4byte	0xd05
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF266
	.2byte	0x3fc
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1757
	.uleb128 0x7
	.string	"buf"
	.2byte	0x3fc
	.byte	0x2a
	.4byte	0x156
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x7
	.string	"len"
	.2byte	0x3fc
	.byte	0x43
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x4
	.4byte	.LASF262
	.2byte	0x3fc
	.byte	0x4c
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x4
	.4byte	.LASF263
	.2byte	0x3fc
	.byte	0x59
	.4byte	0x20a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x8
	.4byte	.LASF267
	.2byte	0x3fe
	.byte	0xa
	.4byte	0x1757
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x6
	.string	"dp"
	.2byte	0x3ff
	.byte	0x11
	.4byte	0xc31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF268
	.2byte	0x400
	.byte	0x13
	.4byte	0xc4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.string	"st"
	.2byte	0x401
	.byte	0x12
	.4byte	0xbd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"env"
	.2byte	0x402
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0xf
	.4byte	0x160
	.4byte	0x1767
	.uleb128 0xd
	.4byte	0x37
	.byte	0x7f
	.byte	0
	.uleb128 0x28
	.4byte	.LASF304
	.2byte	0x3eb
	.4byte	0x3e
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17ae
	.uleb128 0x7
	.string	"arg"
	.2byte	0x3eb
	.byte	0x1b
	.4byte	0x13d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF178
	.2byte	0x3eb
	.byte	0x29
	.4byte	0xa4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"env"
	.2byte	0x3ed
	.byte	0xa
	.4byte	0x10ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF269
	.2byte	0x3ca
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x183c
	.uleb128 0x7
	.string	"buf"
	.2byte	0x3ca
	.byte	0x2a
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"len"
	.2byte	0x3ca
	.byte	0x43
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF262
	.2byte	0x3ca
	.byte	0x5c
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF263
	.2byte	0x3ca
	.byte	0x79
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.4byte	.LASF270
	.2byte	0x3cc
	.byte	0xb
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF271
	.2byte	0x3cc
	.byte	0x1b
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.4byte	.LASF272
	.2byte	0x3cd
	.byte	0x17
	.4byte	0x171
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	.LASF273
	.2byte	0x3ce
	.byte	0x10
	.4byte	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF274
	.2byte	0x3c5
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x188e
	.uleb128 0x7
	.string	"buf"
	.2byte	0x3c5
	.byte	0x2b
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"len"
	.2byte	0x3c5
	.byte	0x44
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF262
	.2byte	0x3c5
	.byte	0x5d
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF263
	.2byte	0x3c5
	.byte	0x7a
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x26
	.4byte	.LASF276
	.2byte	0x3c0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18b3
	.uleb128 0x7
	.string	"arg"
	.2byte	0x3c0
	.byte	0x2c
	.4byte	0x13d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF277
	.2byte	0x3aa
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1954
	.uleb128 0x7
	.string	"buf"
	.2byte	0x3aa
	.byte	0x2e
	.4byte	0x156
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x7
	.string	"len"
	.2byte	0x3aa
	.byte	0x47
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x4
	.4byte	.LASF262
	.2byte	0x3aa
	.byte	0x60
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x4
	.4byte	.LASF263
	.2byte	0x3aa
	.byte	0x7d
	.4byte	0x20a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x6
	.string	"ms"
	.2byte	0x3ac
	.byte	0xf
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF278
	.2byte	0x3ad
	.byte	0xf
	.4byte	0x4a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x8
	.4byte	.LASF279
	.2byte	0x3ae
	.byte	0xf
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.4byte	.LASF280
	.2byte	0x3af
	.byte	0xf
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.4byte	.LASF281
	.2byte	0x3b0
	.byte	0xf
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xb
	.4byte	.LASF282
	.2byte	0x3a3
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19a6
	.uleb128 0x7
	.string	"buf"
	.2byte	0x3a3
	.byte	0x2d
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"len"
	.2byte	0x3a3
	.byte	0x46
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF262
	.2byte	0x3a3
	.byte	0x5f
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF263
	.2byte	0x3a3
	.byte	0x7c
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xb
	.4byte	.LASF283
	.2byte	0x39c
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19f8
	.uleb128 0x7
	.string	"buf"
	.2byte	0x39c
	.byte	0x30
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"len"
	.2byte	0x39c
	.byte	0x49
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF262
	.2byte	0x39c
	.byte	0x62
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF263
	.2byte	0x39c
	.byte	0x7f
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xb
	.4byte	.LASF284
	.2byte	0x395
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a4a
	.uleb128 0x7
	.string	"buf"
	.2byte	0x395
	.byte	0x2e
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"len"
	.2byte	0x395
	.byte	0x47
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF262
	.2byte	0x395
	.byte	0x60
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF263
	.2byte	0x395
	.byte	0x7d
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xb
	.4byte	.LASF285
	.2byte	0x35e
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ae7
	.uleb128 0x7
	.string	"buf"
	.2byte	0x35e
	.byte	0x2c
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.string	"len"
	.2byte	0x35e
	.byte	0x45
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF262
	.2byte	0x35e
	.byte	0x4e
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF263
	.2byte	0x35e
	.byte	0x5b
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.4byte	.LASF286
	.2byte	0x360
	.byte	0xb
	.4byte	0x13d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF287
	.2byte	0x361
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF288
	.2byte	0x362
	.byte	0x12
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	.LASF289
	.2byte	0x363
	.byte	0x12
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.4byte	.LASF290
	.2byte	0x364
	.byte	0x12
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xb
	.4byte	.LASF291
	.2byte	0x317
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b82
	.uleb128 0x7
	.string	"buf"
	.2byte	0x317
	.byte	0x2c
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.string	"len"
	.2byte	0x317
	.byte	0x45
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF262
	.2byte	0x317
	.byte	0x4e
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF263
	.2byte	0x317
	.byte	0x5b
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.string	"i"
	.2byte	0x319
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"pos"
	.2byte	0x31a
	.byte	0xb
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF286
	.2byte	0x31b
	.byte	0xb
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF292
	.2byte	0x31c
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	.LASF287
	.2byte	0x31d
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xb
	.4byte	.LASF293
	.2byte	0x312
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bd4
	.uleb128 0x7
	.string	"buf"
	.2byte	0x312
	.byte	0x2f
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"len"
	.2byte	0x312
	.byte	0x48
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF262
	.2byte	0x312
	.byte	0x61
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF263
	.2byte	0x312
	.byte	0x7e
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x22
	.4byte	.LASF294
	.2byte	0x30c
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c26
	.uleb128 0x7
	.string	"buf"
	.2byte	0x30c
	.byte	0x2c
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"len"
	.2byte	0x30c
	.byte	0x45
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF262
	.2byte	0x30c
	.byte	0x5e
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF263
	.2byte	0x30c
	.byte	0x7b
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xb
	.4byte	.LASF295
	.2byte	0x2fb
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c78
	.uleb128 0x7
	.string	"buf"
	.2byte	0x2fb
	.byte	0x2c
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"len"
	.2byte	0x2fb
	.byte	0x45
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF262
	.2byte	0x2fb
	.byte	0x4e
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF263
	.2byte	0x2fb
	.byte	0x5b
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xb
	.4byte	.LASF296
	.2byte	0x2e1
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d18
	.uleb128 0x7
	.string	"buf"
	.2byte	0x2e1
	.byte	0x2f
	.4byte	0x156
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x7
	.string	"len"
	.2byte	0x2e1
	.byte	0x48
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x4
	.4byte	.LASF262
	.2byte	0x2e1
	.byte	0x61
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x4
	.4byte	.LASF263
	.2byte	0x2e1
	.byte	0x7e
	.4byte	0x20a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x6
	.string	"num"
	.2byte	0x2e3
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"i"
	.2byte	0x2e3
	.byte	0x12
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF286
	.2byte	0x2e4
	.byte	0x12
	.4byte	0x1d18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF297
	.2byte	0x2e4
	.byte	0x1b
	.4byte	0x1d18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.4byte	.LASF298
	.2byte	0x2e5
	.byte	0xa
	.4byte	0x1d28
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xf
	.4byte	0x37
	.4byte	0x1d28
	.uleb128 0xd
	.4byte	0x37
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.4byte	0x160
	.4byte	0x1d3e
	.uleb128 0xd
	.4byte	0x37
	.byte	0x3
	.uleb128 0xd
	.4byte	0x37
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF299
	.2byte	0x2c1
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1def
	.uleb128 0x7
	.string	"buf"
	.2byte	0x2c1
	.byte	0x2c
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.string	"len"
	.2byte	0x2c1
	.byte	0x45
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF262
	.2byte	0x2c1
	.byte	0x5e
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF263
	.2byte	0x2c1
	.byte	0x7b
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.string	"i"
	.2byte	0x2c3
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"n"
	.2byte	0x2c3
	.byte	0xc
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF300
	.2byte	0x2c4
	.byte	0xe
	.4byte	0x30c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x1dd5
	.uleb128 0x6
	.string	"cmd"
	.2byte	0x2cb
	.byte	0x23
	.4byte	0x2c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1d
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x6
	.string	"cmd"
	.2byte	0x2d4
	.byte	0x23
	.4byte	0x2c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF301
	.2byte	0x26d
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e41
	.uleb128 0x4
	.4byte	.LASF239
	.2byte	0x26d
	.byte	0x22
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF240
	.2byte	0x26d
	.byte	0x2e
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"ret"
	.2byte	0x26f
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"msg"
	.2byte	0x270
	.byte	0xb
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF302
	.2byte	0x266
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e66
	.uleb128 0x4
	.4byte	.LASF303
	.2byte	0x266
	.byte	0x25
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.4byte	.LASF305
	.2byte	0x1c6
	.4byte	0x3e
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f0d
	.uleb128 0x4
	.4byte	.LASF45
	.2byte	0x1c6
	.byte	0x1c
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"bp"
	.2byte	0x1c6
	.byte	0x31
	.4byte	0x10d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF306
	.2byte	0x1c6
	.byte	0x3b
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF240
	.2byte	0x1c6
	.byte	0x4a
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"c"
	.2byte	0x1c8
	.byte	0xa
	.4byte	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x6
	.string	"pos"
	.2byte	0x1c9
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"esc"
	.2byte	0x1ca
	.byte	0x13
	.4byte	0x2e8
	.uleb128 0x5
	.byte	0x3
	.4byte	esc.2
	.uleb128 0x8
	.4byte	.LASF307
	.2byte	0x1ca
	.byte	0x1c
	.4byte	0x2e8
	.uleb128 0x5
	.byte	0x3
	.4byte	key1.1
	.uleb128 0x8
	.4byte	.LASF308
	.2byte	0x1ca
	.byte	0x27
	.4byte	0x2e8
	.uleb128 0x5
	.byte	0x3
	.4byte	key2.0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF309
	.2byte	0x1a5
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f50
	.uleb128 0x4
	.4byte	.LASF310
	.2byte	0x1a5
	.byte	0x24
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF311
	.2byte	0x1a7
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF312
	.2byte	0x1a8
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.4byte	.LASF313
	.2byte	0x188
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f93
	.uleb128 0x4
	.4byte	.LASF310
	.2byte	0x188
	.byte	0x22
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF311
	.2byte	0x18a
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF312
	.2byte	0x18b
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF314
	.2byte	0x163
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2003
	.uleb128 0x8
	.4byte	.LASF45
	.2byte	0x165
	.byte	0xb
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	.LASF315
	.2byte	0x166
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.4byte	.LASF48
	.2byte	0x168
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF316
	.2byte	0x169
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF317
	.2byte	0x16a
	.byte	0xa
	.4byte	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x8
	.4byte	.LASF318
	.2byte	0x16b
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF319
	.2byte	0x135
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2084
	.uleb128 0x4
	.4byte	.LASF45
	.2byte	0x135
	.byte	0x20
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.string	"bp"
	.2byte	0x135
	.byte	0x35
	.4byte	0x10d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"i"
	.2byte	0x137
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"n"
	.2byte	0x137
	.byte	0xc
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"m"
	.2byte	0x137
	.byte	0xf
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.string	"fm"
	.2byte	0x138
	.byte	0x11
	.4byte	0x16c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x6
	.string	"cmd"
	.2byte	0x13f
	.byte	0x23
	.4byte	0x2c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF320
	.byte	0xc1
	.byte	0xc
	.4byte	0x3e
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x213b
	.uleb128 0x1b
	.4byte	.LASF45
	.byte	0xc1
	.byte	0x1f
	.4byte	0x156
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x11
	.byte	0x4
	.byte	0x1
	.byte	0xc3
	.byte	0x5
	.4byte	0x20d7
	.uleb128 0x23
	.4byte	.LASF321
	.byte	0xc5
	.4byte	0x37
	.byte	0
	.uleb128 0x23
	.4byte	.LASF322
	.byte	0xc6
	.4byte	0x37
	.byte	0x1
	.uleb128 0x23
	.4byte	.LASF323
	.byte	0xc7
	.4byte	0x37
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0xc8
	.byte	0x7
	.4byte	0x20ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.4byte	.LASF324
	.byte	0xc9
	.byte	0x12
	.4byte	0x213b
	.uleb128 0x5
	.byte	0x3
	.4byte	argvall.3
	.uleb128 0x10
	.4byte	.LASF325
	.byte	0xca
	.byte	0x9
	.4byte	0x2151
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.4byte	.LASF326
	.byte	0xce
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	.LASF327
	.byte	0xcf
	.byte	0xa
	.4byte	0x10ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"i"
	.byte	0xd0
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.string	"ret"
	.byte	0xd1
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xf
	.4byte	0x156
	.4byte	0x2151
	.uleb128 0xd
	.4byte	0x37
	.byte	0x3
	.uleb128 0xd
	.4byte	0x37
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.4byte	0x3e
	.4byte	0x2161
	.uleb128 0xd
	.4byte	0x37
	.byte	0x3
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF328
	.byte	0x1
	.byte	0x8d
	.byte	0x5
	.4byte	0x3e
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21be
	.uleb128 0x1b
	.4byte	.LASF262
	.byte	0x8d
	.byte	0x15
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.4byte	.LASF263
	.byte	0x8d
	.byte	0x21
	.4byte	0x20a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"i"
	.byte	0x8f
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.string	"p"
	.byte	0x90
	.byte	0x11
	.4byte	0x16c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.4byte	.LASF329
	.byte	0x91
	.byte	0x1f
	.4byte	0x2c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.4byte	.LASF330
	.byte	0x6b
	.byte	0x22
	.4byte	0x2c3
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2224
	.uleb128 0x1b
	.4byte	.LASF34
	.byte	0x6b
	.byte	0x37
	.4byte	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.string	"len"
	.byte	0x6b
	.byte	0x41
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"i"
	.byte	0x6d
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.string	"n"
	.byte	0x6e
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x12
	.string	"cmd"
	.byte	0x71
	.byte	0x23
	.4byte	0x2c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF331
	.byte	0x1
	.byte	0x56
	.byte	0x22
	.4byte	0x2c3
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.string	"idx"
	.byte	0x56
	.byte	0x36
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF259
	.byte	0x56
	.byte	0x40
	.4byte	0x10ce
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0xc
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
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x21
	.sleb128 24
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x23
	.uleb128 0xd
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
	.sleb128 18
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 16
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 1275
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
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x36
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.4byte	0x17c
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF300:
	.string	"build_in_count"
.LASF171:
	.string	"i_fops"
.LASF50:
	.string	"int8_t"
.LASF122:
	.string	"st_ctim"
.LASF27:
	.string	"_ssize_t"
.LASF5:
	.string	"size_t"
.LASF159:
	.string	"unlink"
.LASF94:
	.string	"stop_bits"
.LASF258:
	.string	"remaining_cmds"
.LASF173:
	.string	"i_name"
.LASF123:
	.string	"st_blksize"
.LASF124:
	.string	"st_blocks"
.LASF129:
	.string	"f_blocks"
.LASF108:
	.string	"read_block_flag"
.LASF90:
	.string	"hal_uart_mode_t"
.LASF52:
	.string	"int32_t"
.LASF276:
	.string	"tftp_ota_thread"
.LASF221:
	.string	"xPortGetFreeHeapSize"
.LASF265:
	.string	"filebuf"
.LASF61:
	.string	"dev_t"
.LASF65:
	.string	"nlink_t"
.LASF317:
	.string	"lastchar"
.LASF23:
	.string	"__gid_t"
.LASF133:
	.string	"f_ffree"
.LASF152:
	.string	"write"
.LASF187:
	.string	"BaseType_t"
.LASF121:
	.string	"st_mtim"
.LASF54:
	.string	"time_t"
.LASF318:
	.string	"tmp_idx"
.LASF149:
	.string	"open"
.LASF252:
	.string	"aos_cli_stop"
.LASF99:
	.string	"config"
.LASF44:
	.string	"num_commands"
.LASF82:
	.string	"hal_uart_flow_control_t"
.LASF175:
	.string	"type"
.LASF111:
	.string	"stat"
.LASF139:
	.string	"aos_dirent_t"
.LASF179:
	.string	"f_arg"
.LASF107:
	.string	"taskhdl"
.LASF157:
	.string	"fs_ops"
.LASF135:
	.string	"f_namelen"
.LASF330:
	.string	"lookup_command"
.LASF140:
	.string	"dd_vfs_fd"
.LASF185:
	.string	"bufsize"
.LASF231:
	.string	"strcmp"
.LASF33:
	.string	"ssize_t"
.LASF218:
	.string	"hal_reboot"
.LASF109:
	.string	"priv"
.LASF128:
	.string	"f_bsize"
.LASF233:
	.string	"recv_size"
.LASF245:
	.string	"console_cb_write"
.LASF8:
	.string	"__uint8_t"
.LASF21:
	.string	"__dev_t"
.LASF189:
	.string	"esc_tag_len"
.LASF62:
	.string	"uid_t"
.LASF13:
	.string	"long int"
.LASF197:
	.string	"memmove"
.LASF39:
	.string	"initialized"
.LASF215:
	.string	"aos_task_exit"
.LASF102:
	.string	"rx_buf_size"
.LASF186:
	.string	"romfs_filebuf_t"
.LASF313:
	.string	"cli_up_history"
.LASF49:
	.string	"history"
.LASF274:
	.string	"ota_cmd"
.LASF324:
	.string	"argvall"
.LASF292:
	.string	"nunits"
.LASF153:
	.string	"ioctl"
.LASF101:
	.string	"tx_ringbuf_handle"
.LASF213:
	.string	"pvPortMalloc"
.LASF7:
	.string	"signed char"
.LASF260:
	.string	"aos_cli_register_command"
.LASF19:
	.string	"__blksize_t"
.LASF51:
	.string	"uint8_t"
.LASF194:
	.string	"hal_uart_recv_II"
.LASF116:
	.string	"st_uid"
.LASF125:
	.string	"st_spare4"
.LASF184:
	.string	"_romfs_file_buf"
.LASF208:
	.string	"aos_opendir"
.LASF84:
	.string	"ODD_PARITY"
.LASF9:
	.string	"unsigned char"
.LASF220:
	.string	"aos_now_ms"
.LASF293:
	.string	"devname_cmd"
.LASF118:
	.string	"st_rdev"
.LASF85:
	.string	"EVEN_PARITY"
.LASF202:
	.string	"inode_forearch_name"
.LASF48:
	.string	"his_cur"
.LASF333:
	.string	"__builtin_va_list"
.LASF143:
	.string	"VFS_TYPE_NOT_INIT"
.LASF30:
	.string	"__gnuc_va_list"
.LASF183:
	.string	"_Bool"
.LASF137:
	.string	"d_type"
.LASF288:
	.string	"value"
.LASF256:
	.string	"aos_cli_register_commands"
.LASF217:
	.string	"hal_poweroff"
.LASF29:
	.string	"char"
.LASF294:
	.string	"exit_cmd"
.LASF138:
	.string	"d_name"
.LASF301:
	.string	"cli_main_input"
.LASF106:
	.string	"poll_data"
.LASF134:
	.string	"f_fsid"
.LASF25:
	.string	"__mode_t"
.LASF289:
	.string	"old_value"
.LASF195:
	.string	"aos_write"
.LASF178:
	.string	"node"
.LASF248:
	.string	"use_thread"
.LASF226:
	.string	"aos_free"
.LASF326:
	.string	"cmdnum"
.LASF304:
	.string	"cb_idnoe"
.LASF230:
	.string	"printf"
.LASF86:
	.string	"hal_uart_parity_t"
.LASF239:
	.string	"buffer"
.LASF168:
	.string	"seekdir"
.LASF327:
	.string	"pargc"
.LASF132:
	.string	"f_files"
.LASF334:
	.string	"inode_ops_t"
.LASF302:
	.string	"print_bad_command"
.LASF156:
	.string	"fs_ops_t"
.LASF254:
	.string	"cmds"
.LASF309:
	.string	"cli_down_history"
.LASF164:
	.string	"mkdir"
.LASF163:
	.string	"closedir"
.LASF36:
	.string	"function"
.LASF117:
	.string	"st_gid"
.LASF170:
	.string	"i_ops"
.LASF311:
	.string	"index"
.LASF92:
	.string	"data_width"
.LASF162:
	.string	"readdir"
.LASF216:
	.string	"hal_sys_reset"
.LASF299:
	.string	"help_cmd"
.LASF60:
	.string	"ino_t"
.LASF15:
	.string	"long unsigned int"
.LASF212:
	.string	"strcpy"
.LASF161:
	.string	"opendir"
.LASF244:
	.string	"param"
.LASF119:
	.string	"st_size"
.LASF103:
	.string	"tx_buf_size"
.LASF310:
	.string	"inaddr"
.LASF190:
	.string	"cli_task"
.LASF46:
	.string	"outbuf"
.LASF69:
	.string	"DATA_WIDTH_5BIT"
.LASF74:
	.string	"hal_uart_data_width_t"
.LASF71:
	.string	"DATA_WIDTH_7BIT"
.LASF307:
	.string	"key1"
.LASF308:
	.string	"key2"
.LASF192:
	.string	"esc_tag"
.LASF73:
	.string	"DATA_WIDTH_9BIT"
.LASF323:
	.string	"done"
.LASF335:
	.string	"pollfd"
.LASF263:
	.string	"argv"
.LASF18:
	.string	"__blkcnt_t"
.LASF206:
	.string	"snprintf"
.LASF24:
	.string	"__ino_t"
.LASF211:
	.string	"vTaskList"
.LASF201:
	.string	"aos_open"
.LASF14:
	.string	"__uint32_t"
.LASF66:
	.string	"aos_hdl_t"
.LASF3:
	.string	"long long int"
.LASF31:
	.string	"va_list"
.LASF267:
	.string	"path_name"
.LASF287:
	.string	"width"
.LASF331:
	.string	"cli_command_get"
.LASF45:
	.string	"inbuf"
.LASF328:
	.string	"proc_onecmd"
.LASF155:
	.string	"sync"
.LASF222:
	.string	"bl_chip_memory_ram"
.LASF278:
	.string	"days"
.LASF237:
	.string	"aos_cli_printf"
.LASF104:
	.string	"mutex"
.LASF93:
	.string	"parity"
.LASF68:
	.string	"float"
.LASF281:
	.string	"seconds"
.LASF240:
	.string	"count"
.LASF35:
	.string	"help"
.LASF105:
	.string	"poll_cb"
.LASF250:
	.string	"_ld_bl_static_cli_cmds_end"
.LASF151:
	.string	"read"
.LASF2:
	.string	"unsigned int"
.LASF148:
	.string	"file_ops"
.LASF199:
	.string	"aos_close"
.LASF58:
	.string	"blkcnt_t"
.LASF236:
	.string	"cli_putstr"
.LASF141:
	.string	"dd_rsv"
.LASF295:
	.string	"echo_cmd"
.LASF325:
	.string	"argcall"
.LASF188:
	.string	"cliexit"
.LASF196:
	.string	"vsnprintf"
.LASF319:
	.string	"tab_complete"
.LASF160:
	.string	"rename"
.LASF144:
	.string	"VFS_TYPE_CHAR_DEV"
.LASF280:
	.string	"minutes"
.LASF145:
	.string	"VFS_TYPE_BLOCK_DEV"
.LASF154:
	.string	"poll"
.LASF180:
	.string	"offset"
.LASF305:
	.string	"get_input"
.LASF40:
	.string	"echo_disabled"
.LASF247:
	.string	"aos_cli_init"
.LASF214:
	.string	"aos_task_new"
.LASF209:
	.string	"utils_hexdump"
.LASF115:
	.string	"st_nlink"
.LASF32:
	.string	"off_t"
.LASF64:
	.string	"mode_t"
.LASF75:
	.string	"STOP_BITS_1"
.LASF76:
	.string	"STOP_BITS_2"
.LASF172:
	.string	"i_arg"
.LASF243:
	.string	"aos_cli_event_cb_read_get"
.LASF100:
	.string	"rx_ringbuf_handle"
.LASF41:
	.string	"static_cmds"
.LASF181:
	.string	"file_t"
.LASF332:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF235:
	.string	"cli_getchar"
.LASF4:
	.string	"long double"
.LASF232:
	.string	"strncmp"
.LASF158:
	.string	"lseek"
.LASF198:
	.string	"aos_read"
.LASF272:
	.string	"pcHeader"
.LASF257:
	.string	"aos_cli_unregister_command"
.LASF191:
	.string	"fd_console"
.LASF113:
	.string	"st_ino"
.LASF320:
	.string	"handle_input"
.LASF296:
	.string	"version_cmd"
.LASF112:
	.string	"st_dev"
.LASF255:
	.string	"num_cmds"
.LASF55:
	.string	"timespec"
.LASF271:
	.string	"info"
.LASF130:
	.string	"f_bfree"
.LASF81:
	.string	"FLOW_CONTROL_CTS_RTS"
.LASF242:
	.string	"aos_cli_event_cb_write_get"
.LASF67:
	.string	"aos_task_t"
.LASF146:
	.string	"VFS_TYPE_FS_DEV"
.LASF166:
	.string	"rewinddir"
.LASF6:
	.string	"__int8_t"
.LASF297:
	.string	"size"
.LASF16:
	.string	"long long unsigned int"
.LASF329:
	.string	"command"
.LASF273:
	.string	"xSpacePadding"
.LASF269:
	.string	"ps_cmd"
.LASF26:
	.string	"__off_t"
.LASF303:
	.string	"cmd_string"
.LASF79:
	.string	"FLOW_CONTROL_CTS"
.LASF147:
	.string	"file_ops_t"
.LASF89:
	.string	"MODE_TX_RX"
.LASF43:
	.string	"num_static_cmds"
.LASF37:
	.string	"cli_command"
.LASF176:
	.string	"refs"
.LASF80:
	.string	"FLOW_CONTROL_RTS"
.LASF291:
	.string	"pmem_cmd"
.LASF78:
	.string	"FLOW_CONTROL_DISABLED"
.LASF227:
	.string	"memset"
.LASF97:
	.string	"uart_config_t"
.LASF223:
	.string	"strncpy"
.LASF298:
	.string	"desc"
.LASF321:
	.string	"inArg"
.LASF262:
	.string	"argc"
.LASF200:
	.string	"aos_ioctl"
.LASF205:
	.string	"aos_stat"
.LASF203:
	.string	"memcmp"
.LASF322:
	.string	"inQuote"
.LASF229:
	.string	"strchr"
.LASF290:
	.string	"new_value"
.LASF253:
	.string	"aos_cli_unregister_commands"
.LASF131:
	.string	"f_bavail"
.LASF316:
	.string	"left_num"
.LASF95:
	.string	"flow_control"
.LASF34:
	.string	"name"
.LASF284:
	.string	"reboot_cmd"
.LASF98:
	.string	"port"
.LASF246:
	.string	"console_cb_read"
.LASF207:
	.string	"aos_readdir"
.LASF219:
	.string	"strtol"
.LASF127:
	.string	"f_type"
.LASF10:
	.string	"short int"
.LASF285:
	.string	"mmem_cmd"
.LASF204:
	.string	"aos_closedir"
.LASF259:
	.string	"is_static_cmd"
.LASF42:
	.string	"dynamic_cmds"
.LASF96:
	.string	"mode"
.LASF234:
	.string	"uart_stdio"
.LASF57:
	.string	"tv_nsec"
.LASF277:
	.string	"uptime_cmd"
.LASF167:
	.string	"telldir"
.LASF193:
	.string	"built_ins"
.LASF88:
	.string	"MODE_RX"
.LASF17:
	.string	"__int_least64_t"
.LASF282:
	.string	"reset_cmd"
.LASF177:
	.string	"inode_t"
.LASF264:
	.string	"hexdump_cmd"
.LASF142:
	.string	"aos_dir_t"
.LASF268:
	.string	"out_dirent"
.LASF225:
	.string	"strlen"
.LASF110:
	.string	"uart_dev_t"
.LASF241:
	.string	"aos_cli_get_tag"
.LASF249:
	.string	"_ld_bl_static_cli_cmds_start"
.LASF224:
	.string	"memcpy"
.LASF174:
	.string	"i_flags"
.LASF306:
	.string	"buffer_cb"
.LASF114:
	.string	"st_mode"
.LASF22:
	.string	"__uid_t"
.LASF59:
	.string	"blksize_t"
.LASF136:
	.string	"d_ino"
.LASF47:
	.string	"his_idx"
.LASF87:
	.string	"MODE_TX"
.LASF270:
	.string	"pcWriteBuffer"
.LASF286:
	.string	"addr"
.LASF53:
	.string	"uint32_t"
.LASF314:
	.string	"cli_history_input"
.LASF279:
	.string	"hours"
.LASF228:
	.string	"aos_malloc"
.LASF266:
	.string	"ls_cmd"
.LASF91:
	.string	"baud_rate"
.LASF312:
	.string	"lastindex"
.LASF20:
	.string	"_off_t"
.LASF126:
	.string	"statfs"
.LASF11:
	.string	"short unsigned int"
.LASF38:
	.string	"cli_st"
.LASF238:
	.string	"message"
.LASF165:
	.string	"rmdir"
.LASF210:
	.string	"vPortFree"
.LASF283:
	.string	"poweroff_cmd"
.LASF12:
	.string	"__int32_t"
.LASF70:
	.string	"DATA_WIDTH_6BIT"
.LASF169:
	.string	"access"
.LASF182:
	.string	"poll_notify_t"
.LASF72:
	.string	"DATA_WIDTH_8BIT"
.LASF275:
	.string	"aos_cli_input_direct"
.LASF28:
	.string	"__nlink_t"
.LASF251:
	.string	"aos_cli_task_get"
.LASF315:
	.string	"charnum"
.LASF63:
	.string	"gid_t"
.LASF150:
	.string	"close"
.LASF83:
	.string	"NO_PARITY"
.LASF56:
	.string	"tv_sec"
.LASF261:
	.string	"cat_cmd"
.LASF77:
	.string	"hal_uart_stop_bits_t"
.LASF120:
	.string	"st_atim"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/stage/cli/cli/cli.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/cli"
	.globl	__moddi3
	.globl	__divdi3
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
