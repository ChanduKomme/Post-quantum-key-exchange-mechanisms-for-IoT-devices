	.file	"altcp.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/altcp.c"
	.section	.text.altcp_alloc,"ax",@progbits
	.align	1
	.globl	altcp_alloc
	.type	altcp_alloc, @function
altcp_alloc:
.LFB5:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/altcp.c"
	.loc 1 137 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 138 47
	li	a0,5
	call	memp_malloc
	sw	a0,-20(s0)
	.loc 1 139 6
	lw	a5,-20(s0)
	beq	a5,zero,.L2
	.loc 1 140 5
	li	a2,44
	li	a1,0
	lw	a0,-20(s0)
	call	memset
.L2:
	.loc 1 142 10
	lw	a5,-20(s0)
	.loc 1 143 1
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
	.size	altcp_alloc, .-altcp_alloc
	.section	.text.altcp_free,"ax",@progbits
	.align	1
	.globl	altcp_free
	.type	altcp_free, @function
altcp_free:
.LFB6:
	.loc 1 150 1
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
	.loc 1 151 6
	lw	a5,-20(s0)
	beq	a5,zero,.L7
	.loc 1 152 13
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 152 8
	beq	a5,zero,.L6
	.loc 1 152 26 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 152 31 discriminator 1
	lw	a5,68(a5)
	.loc 1 152 19 discriminator 1
	beq	a5,zero,.L6
	.loc 1 153 11
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 153 16
	lw	a5,68(a5)
	.loc 1 153 7
	lw	a0,-20(s0)
	jalr	a5
.LVL0:
.L6:
	.loc 1 155 5
	lw	a1,-20(s0)
	li	a0,5
	call	memp_free
.L7:
	.loc 1 157 1
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
.LFE6:
	.size	altcp_free, .-altcp_free
	.section	.text.altcp_new_ip6,"ax",@progbits
	.align	1
	.globl	altcp_new_ip6
	.type	altcp_new_ip6, @function
altcp_new_ip6:
.LFB7:
	.loc 1 165 1
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
	.loc 1 166 10
	li	a1,6
	lw	a0,-20(s0)
	call	altcp_new_ip_type
	mv	a5,a0
	.loc 1 167 1
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
.LFE7:
	.size	altcp_new_ip6, .-altcp_new_ip6
	.section	.text.altcp_new,"ax",@progbits
	.align	1
	.globl	altcp_new
	.type	altcp_new, @function
altcp_new:
.LFB8:
	.loc 1 175 1
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
	.loc 1 176 10
	li	a1,0
	lw	a0,-20(s0)
	call	altcp_new_ip_type
	mv	a5,a0
	.loc 1 177 1
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
	.size	altcp_new, .-altcp_new
	.section	.text.altcp_new_ip_type,"ax",@progbits
	.align	1
	.globl	altcp_new_ip_type
	.type	altcp_new_ip_type, @function
altcp_new_ip_type:
.LFB9:
	.loc 1 190 1
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
	.loc 1 192 6
	lw	a5,-36(s0)
	bne	a5,zero,.L13
	.loc 1 194 12
	lbu	a5,-37(s0)
	mv	a0,a5
	call	altcp_tcp_new_ip_type
	mv	a5,a0
	j	.L14
.L13:
	.loc 1 196 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 196 6
	bne	a5,zero,.L15
	.loc 1 198 11
	li	a5,0
	j	.L14
.L15:
	.loc 1 200 19
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 200 10
	lw	a4,-36(s0)
	lw	a4,4(a4)
	lbu	a3,-37(s0)
	mv	a1,a3
	mv	a0,a4
	jalr	a5
.LVL1:
	sw	a0,-20(s0)
	.loc 1 201 6
	lw	a5,-20(s0)
	bne	a5,zero,.L16
	.loc 1 203 11
	li	a5,0
	j	.L14
.L16:
	.loc 1 205 10
	lw	a5,-20(s0)
.L14:
	.loc 1 206 1
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
	.size	altcp_new_ip_type, .-altcp_new_ip_type
	.section	.text.altcp_arg,"ax",@progbits
	.align	1
	.globl	altcp_arg
	.type	altcp_arg, @function
altcp_arg:
.LFB10:
	.loc 1 214 1
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
	.loc 1 215 6
	lw	a5,-20(s0)
	beq	a5,zero,.L19
	.loc 1 216 15
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,8(a5)
.L19:
	.loc 1 218 1
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
	.size	altcp_arg, .-altcp_arg
	.section	.text.altcp_accept,"ax",@progbits
	.align	1
	.globl	altcp_accept
	.type	altcp_accept, @function
altcp_accept:
.LFB11:
	.loc 1 226 1
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
	.loc 1 227 6
	lw	a5,-20(s0)
	beq	a5,zero,.L22
	.loc 1 228 18
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,16(a5)
.L22:
	.loc 1 230 1
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
.LFE11:
	.size	altcp_accept, .-altcp_accept
	.section	.text.altcp_recv,"ax",@progbits
	.align	1
	.globl	altcp_recv
	.type	altcp_recv, @function
altcp_recv:
.LFB12:
	.loc 1 238 1
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
	.loc 1 239 6
	lw	a5,-20(s0)
	beq	a5,zero,.L25
	.loc 1 240 16
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,24(a5)
.L25:
	.loc 1 242 1
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
.LFE12:
	.size	altcp_recv, .-altcp_recv
	.section	.text.altcp_sent,"ax",@progbits
	.align	1
	.globl	altcp_sent
	.type	altcp_sent, @function
altcp_sent:
.LFB13:
	.loc 1 250 1
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
	.loc 1 251 6
	lw	a5,-20(s0)
	beq	a5,zero,.L28
	.loc 1 252 16
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,28(a5)
.L28:
	.loc 1 254 1
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
.LFE13:
	.size	altcp_sent, .-altcp_sent
	.section	.text.altcp_poll,"ax",@progbits
	.align	1
	.globl	altcp_poll
	.type	altcp_poll, @function
altcp_poll:
.LFB14:
	.loc 1 262 1
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
	sb	a5,-25(s0)
	.loc 1 263 6
	lw	a5,-20(s0)
	beq	a5,zero,.L31
	.loc 1 264 16
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,32(a5)
	.loc 1 265 24
	lw	a5,-20(s0)
	lbu	a4,-25(s0)
	sb	a4,40(a5)
	.loc 1 266 13
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 266 8
	beq	a5,zero,.L31
	.loc 1 266 26 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 266 31 discriminator 1
	lw	a5,0(a5)
	.loc 1 266 19 discriminator 1
	beq	a5,zero,.L31
	.loc 1 267 11
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 267 16
	lw	a5,0(a5)
	.loc 1 267 7
	lbu	a4,-25(s0)
	mv	a1,a4
	lw	a0,-20(s0)
	jalr	a5
.LVL2:
.L31:
	.loc 1 270 1
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
	.size	altcp_poll, .-altcp_poll
	.section	.text.altcp_err,"ax",@progbits
	.align	1
	.globl	altcp_err
	.type	altcp_err, @function
altcp_err:
.LFB15:
	.loc 1 278 1
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
	.loc 1 279 6
	lw	a5,-20(s0)
	beq	a5,zero,.L34
	.loc 1 280 15
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,36(a5)
.L34:
	.loc 1 282 1
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
	.size	altcp_err, .-altcp_err
	.section	.text.altcp_recved,"ax",@progbits
	.align	1
	.globl	altcp_recved
	.type	altcp_recved, @function
altcp_recved:
.LFB16:
	.loc 1 292 1
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
	mv	a5,a1
	sh	a5,-22(s0)
	.loc 1 293 6
	lw	a5,-20(s0)
	beq	a5,zero,.L37
	.loc 1 293 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 293 12 discriminator 1
	beq	a5,zero,.L37
	.loc 1 293 32 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 293 37 discriminator 2
	lw	a5,4(a5)
	.loc 1 293 25 discriminator 2
	beq	a5,zero,.L37
	.loc 1 294 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 294 14
	lw	a5,4(a5)
	.loc 1 294 5
	lhu	a4,-22(s0)
	mv	a1,a4
	lw	a0,-20(s0)
	jalr	a5
.LVL3:
.L37:
	.loc 1 296 1
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
.LFE16:
	.size	altcp_recved, .-altcp_recved
	.section	.text.altcp_bind,"ax",@progbits
	.align	1
	.globl	altcp_bind
	.type	altcp_bind, @function
altcp_bind:
.LFB17:
	.loc 1 304 1
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
	sh	a5,-26(s0)
	.loc 1 305 6
	lw	a5,-20(s0)
	beq	a5,zero,.L39
	.loc 1 305 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 305 12 discriminator 1
	beq	a5,zero,.L39
	.loc 1 305 32 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 305 37 discriminator 2
	lw	a5,8(a5)
	.loc 1 305 25 discriminator 2
	beq	a5,zero,.L39
	.loc 1 306 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 306 21
	lw	a5,8(a5)
	.loc 1 306 12
	lhu	a4,-26(s0)
	mv	a2,a4
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	jalr	a5
.LVL4:
	mv	a5,a0
	j	.L40
.L39:
	.loc 1 308 10
	li	a5,-6
.L40:
	.loc 1 309 1
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
	.size	altcp_bind, .-altcp_bind
	.section	.text.altcp_connect,"ax",@progbits
	.align	1
	.globl	altcp_connect
	.type	altcp_connect, @function
altcp_connect:
.LFB18:
	.loc 1 317 1
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
	.loc 1 318 6
	lw	a5,-20(s0)
	beq	a5,zero,.L42
	.loc 1 318 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 318 12 discriminator 1
	beq	a5,zero,.L42
	.loc 1 318 32 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 318 37 discriminator 2
	lw	a5,12(a5)
	.loc 1 318 25 discriminator 2
	beq	a5,zero,.L42
	.loc 1 319 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 319 21
	lw	a5,12(a5)
	.loc 1 319 12
	lhu	a4,-26(s0)
	lw	a3,-32(s0)
	mv	a2,a4
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	jalr	a5
.LVL5:
	mv	a5,a0
	j	.L43
.L42:
	.loc 1 321 10
	li	a5,-6
.L43:
	.loc 1 322 1
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
	.size	altcp_connect, .-altcp_connect
	.section	.text.altcp_listen_with_backlog_and_err,"ax",@progbits
	.align	1
	.globl	altcp_listen_with_backlog_and_err
	.type	altcp_listen_with_backlog_and_err, @function
altcp_listen_with_backlog_and_err:
.LFB19:
	.loc 1 330 1
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
	mv	a5,a1
	sw	a2,-28(s0)
	sb	a5,-21(s0)
	.loc 1 331 6
	lw	a5,-20(s0)
	beq	a5,zero,.L45
	.loc 1 331 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 331 12 discriminator 1
	beq	a5,zero,.L45
	.loc 1 331 32 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 331 37 discriminator 2
	lw	a5,16(a5)
	.loc 1 331 25 discriminator 2
	beq	a5,zero,.L45
	.loc 1 332 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 332 21
	lw	a5,16(a5)
	.loc 1 332 12
	lbu	a4,-21(s0)
	lw	a2,-28(s0)
	mv	a1,a4
	lw	a0,-20(s0)
	jalr	a5
.LVL6:
	mv	a5,a0
	j	.L46
.L45:
	.loc 1 334 9
	li	a5,0
.L46:
	.loc 1 335 1
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
	.size	altcp_listen_with_backlog_and_err, .-altcp_listen_with_backlog_and_err
	.section	.text.altcp_abort,"ax",@progbits
	.align	1
	.globl	altcp_abort
	.type	altcp_abort, @function
altcp_abort:
.LFB20:
	.loc 1 343 1
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
	.loc 1 344 6
	lw	a5,-20(s0)
	beq	a5,zero,.L49
	.loc 1 344 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 344 12 discriminator 1
	beq	a5,zero,.L49
	.loc 1 344 32 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 344 37 discriminator 2
	lw	a5,20(a5)
	.loc 1 344 25 discriminator 2
	beq	a5,zero,.L49
	.loc 1 345 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 345 14
	lw	a5,20(a5)
	.loc 1 345 5
	lw	a0,-20(s0)
	jalr	a5
.LVL7:
.L49:
	.loc 1 347 1
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
	.size	altcp_abort, .-altcp_abort
	.section	.text.altcp_close,"ax",@progbits
	.align	1
	.globl	altcp_close
	.type	altcp_close, @function
altcp_close:
.LFB21:
	.loc 1 355 1
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
	.loc 1 356 6
	lw	a5,-20(s0)
	beq	a5,zero,.L51
	.loc 1 356 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 356 12 discriminator 1
	beq	a5,zero,.L51
	.loc 1 356 32 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 356 37 discriminator 2
	lw	a5,24(a5)
	.loc 1 356 25 discriminator 2
	beq	a5,zero,.L51
	.loc 1 357 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 357 21
	lw	a5,24(a5)
	.loc 1 357 12
	lw	a0,-20(s0)
	jalr	a5
.LVL8:
	mv	a5,a0
	j	.L52
.L51:
	.loc 1 359 10
	li	a5,-6
.L52:
	.loc 1 360 1
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
.LFE21:
	.size	altcp_close, .-altcp_close
	.section	.text.altcp_shutdown,"ax",@progbits
	.align	1
	.globl	altcp_shutdown
	.type	altcp_shutdown, @function
altcp_shutdown:
.LFB22:
	.loc 1 368 1
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
	.loc 1 369 6
	lw	a5,-20(s0)
	beq	a5,zero,.L54
	.loc 1 369 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 369 12 discriminator 1
	beq	a5,zero,.L54
	.loc 1 369 32 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 369 37 discriminator 2
	lw	a5,28(a5)
	.loc 1 369 25 discriminator 2
	beq	a5,zero,.L54
	.loc 1 370 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 370 21
	lw	a5,28(a5)
	.loc 1 370 12
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	jalr	a5
.LVL9:
	mv	a5,a0
	j	.L55
.L54:
	.loc 1 372 10
	li	a5,-6
.L55:
	.loc 1 373 1
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
.LFE22:
	.size	altcp_shutdown, .-altcp_shutdown
	.section	.text.altcp_write,"ax",@progbits
	.align	1
	.globl	altcp_write
	.type	altcp_write, @function
altcp_write:
.LFB23:
	.loc 1 381 1
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
	mv	a4,a3
	sh	a5,-26(s0)
	mv	a5,a4
	sb	a5,-27(s0)
	.loc 1 382 6
	lw	a5,-20(s0)
	beq	a5,zero,.L57
	.loc 1 382 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 382 12 discriminator 1
	beq	a5,zero,.L57
	.loc 1 382 32 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 382 37 discriminator 2
	lw	a5,32(a5)
	.loc 1 382 25 discriminator 2
	beq	a5,zero,.L57
	.loc 1 383 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 383 21
	lw	a5,32(a5)
	.loc 1 383 12
	lbu	a3,-27(s0)
	lhu	a4,-26(s0)
	mv	a2,a4
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	jalr	a5
.LVL10:
	mv	a5,a0
	j	.L58
.L57:
	.loc 1 385 10
	li	a5,-6
.L58:
	.loc 1 386 1
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
.LFE23:
	.size	altcp_write, .-altcp_write
	.section	.text.altcp_output,"ax",@progbits
	.align	1
	.globl	altcp_output
	.type	altcp_output, @function
altcp_output:
.LFB24:
	.loc 1 394 1
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
	.loc 1 395 6
	lw	a5,-20(s0)
	beq	a5,zero,.L60
	.loc 1 395 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 395 12 discriminator 1
	beq	a5,zero,.L60
	.loc 1 395 32 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 395 37 discriminator 2
	lw	a5,36(a5)
	.loc 1 395 25 discriminator 2
	beq	a5,zero,.L60
	.loc 1 396 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 396 21
	lw	a5,36(a5)
	.loc 1 396 12
	lw	a0,-20(s0)
	jalr	a5
.LVL11:
	mv	a5,a0
	j	.L61
.L60:
	.loc 1 398 10
	li	a5,-6
.L61:
	.loc 1 399 1
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
.LFE24:
	.size	altcp_output, .-altcp_output
	.section	.text.altcp_mss,"ax",@progbits
	.align	1
	.globl	altcp_mss
	.type	altcp_mss, @function
altcp_mss:
.LFB25:
	.loc 1 407 1
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
	.loc 1 408 6
	lw	a5,-20(s0)
	beq	a5,zero,.L63
	.loc 1 408 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 408 12 discriminator 1
	beq	a5,zero,.L63
	.loc 1 408 32 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 408 37 discriminator 2
	lw	a5,40(a5)
	.loc 1 408 25 discriminator 2
	beq	a5,zero,.L63
	.loc 1 409 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 409 21
	lw	a5,40(a5)
	.loc 1 409 12
	lw	a0,-20(s0)
	jalr	a5
.LVL12:
	mv	a5,a0
	j	.L64
.L63:
	.loc 1 411 10
	li	a5,0
.L64:
	.loc 1 412 1
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
.LFE25:
	.size	altcp_mss, .-altcp_mss
	.section	.text.altcp_sndbuf,"ax",@progbits
	.align	1
	.globl	altcp_sndbuf
	.type	altcp_sndbuf, @function
altcp_sndbuf:
.LFB26:
	.loc 1 420 1
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
	.loc 1 421 6
	lw	a5,-20(s0)
	beq	a5,zero,.L66
	.loc 1 421 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 421 12 discriminator 1
	beq	a5,zero,.L66
	.loc 1 421 32 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 421 37 discriminator 2
	lw	a5,44(a5)
	.loc 1 421 25 discriminator 2
	beq	a5,zero,.L66
	.loc 1 422 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 422 21
	lw	a5,44(a5)
	.loc 1 422 12
	lw	a0,-20(s0)
	jalr	a5
.LVL13:
	mv	a5,a0
	j	.L67
.L66:
	.loc 1 424 10
	li	a5,0
.L67:
	.loc 1 425 1
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
.LFE26:
	.size	altcp_sndbuf, .-altcp_sndbuf
	.section	.text.altcp_sndqueuelen,"ax",@progbits
	.align	1
	.globl	altcp_sndqueuelen
	.type	altcp_sndqueuelen, @function
altcp_sndqueuelen:
.LFB27:
	.loc 1 433 1
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
	.loc 1 434 6
	lw	a5,-20(s0)
	beq	a5,zero,.L69
	.loc 1 434 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 434 12 discriminator 1
	beq	a5,zero,.L69
	.loc 1 434 32 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 434 37 discriminator 2
	lw	a5,48(a5)
	.loc 1 434 25 discriminator 2
	beq	a5,zero,.L69
	.loc 1 435 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 435 21
	lw	a5,48(a5)
	.loc 1 435 12
	lw	a0,-20(s0)
	jalr	a5
.LVL14:
	mv	a5,a0
	j	.L70
.L69:
	.loc 1 437 10
	li	a5,0
.L70:
	.loc 1 438 1
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
.LFE27:
	.size	altcp_sndqueuelen, .-altcp_sndqueuelen
	.section	.text.altcp_nagle_disable,"ax",@progbits
	.align	1
	.globl	altcp_nagle_disable
	.type	altcp_nagle_disable, @function
altcp_nagle_disable:
.LFB28:
	.loc 1 442 1
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
	.loc 1 443 6
	lw	a5,-20(s0)
	beq	a5,zero,.L73
	.loc 1 443 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 443 12 discriminator 1
	beq	a5,zero,.L73
	.loc 1 443 32 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 443 37 discriminator 2
	lw	a5,52(a5)
	.loc 1 443 25 discriminator 2
	beq	a5,zero,.L73
	.loc 1 444 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 444 14
	lw	a5,52(a5)
	.loc 1 444 5
	lw	a0,-20(s0)
	jalr	a5
.LVL15:
.L73:
	.loc 1 446 1
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
	.size	altcp_nagle_disable, .-altcp_nagle_disable
	.section	.text.altcp_nagle_enable,"ax",@progbits
	.align	1
	.globl	altcp_nagle_enable
	.type	altcp_nagle_enable, @function
altcp_nagle_enable:
.LFB29:
	.loc 1 450 1
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
	.loc 1 451 6
	lw	a5,-20(s0)
	beq	a5,zero,.L76
	.loc 1 451 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 451 12 discriminator 1
	beq	a5,zero,.L76
	.loc 1 451 32 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 451 37 discriminator 2
	lw	a5,56(a5)
	.loc 1 451 25 discriminator 2
	beq	a5,zero,.L76
	.loc 1 452 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 452 14
	lw	a5,56(a5)
	.loc 1 452 5
	lw	a0,-20(s0)
	jalr	a5
.LVL16:
.L76:
	.loc 1 454 1
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
.LFE29:
	.size	altcp_nagle_enable, .-altcp_nagle_enable
	.section	.text.altcp_nagle_disabled,"ax",@progbits
	.align	1
	.globl	altcp_nagle_disabled
	.type	altcp_nagle_disabled, @function
altcp_nagle_disabled:
.LFB30:
	.loc 1 458 1
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
	.loc 1 459 6
	lw	a5,-20(s0)
	beq	a5,zero,.L78
	.loc 1 459 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 459 12 discriminator 1
	beq	a5,zero,.L78
	.loc 1 459 32 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 459 37 discriminator 2
	lw	a5,60(a5)
	.loc 1 459 25 discriminator 2
	beq	a5,zero,.L78
	.loc 1 460 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 460 21
	lw	a5,60(a5)
	.loc 1 460 12
	lw	a0,-20(s0)
	jalr	a5
.LVL17:
	mv	a5,a0
	j	.L79
.L78:
	.loc 1 462 10
	li	a5,0
.L79:
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
.LFE30:
	.size	altcp_nagle_disabled, .-altcp_nagle_disabled
	.section	.text.altcp_setprio,"ax",@progbits
	.align	1
	.globl	altcp_setprio
	.type	altcp_setprio, @function
altcp_setprio:
.LFB31:
	.loc 1 471 1
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
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 1 472 6
	lw	a5,-20(s0)
	beq	a5,zero,.L82
	.loc 1 472 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 472 12 discriminator 1
	beq	a5,zero,.L82
	.loc 1 472 32 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 472 37 discriminator 2
	lw	a5,64(a5)
	.loc 1 472 25 discriminator 2
	beq	a5,zero,.L82
	.loc 1 473 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 473 14
	lw	a5,64(a5)
	.loc 1 473 5
	lbu	a4,-21(s0)
	mv	a1,a4
	lw	a0,-20(s0)
	jalr	a5
.LVL18:
.L82:
	.loc 1 475 1
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
	.size	altcp_setprio, .-altcp_setprio
	.section	.text.altcp_get_tcp_addrinfo,"ax",@progbits
	.align	1
	.globl	altcp_get_tcp_addrinfo
	.type	altcp_get_tcp_addrinfo, @function
altcp_get_tcp_addrinfo:
.LFB32:
	.loc 1 479 1
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
	.loc 1 480 6
	lw	a5,-20(s0)
	beq	a5,zero,.L84
	.loc 1 480 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 480 12 discriminator 1
	beq	a5,zero,.L84
	.loc 1 480 32 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 480 37 discriminator 2
	lw	a5,72(a5)
	.loc 1 480 25 discriminator 2
	beq	a5,zero,.L84
	.loc 1 481 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 481 21
	lw	a5,72(a5)
	.loc 1 481 12
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	jalr	a5
.LVL19:
	mv	a5,a0
	j	.L85
.L84:
	.loc 1 483 10
	li	a5,-6
.L85:
	.loc 1 484 1
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
.LFE32:
	.size	altcp_get_tcp_addrinfo, .-altcp_get_tcp_addrinfo
	.section	.text.altcp_get_ip,"ax",@progbits
	.align	1
	.globl	altcp_get_ip
	.type	altcp_get_ip, @function
altcp_get_ip:
.LFB33:
	.loc 1 488 1
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
	.loc 1 489 6
	lw	a5,-20(s0)
	beq	a5,zero,.L87
	.loc 1 489 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 489 12 discriminator 1
	beq	a5,zero,.L87
	.loc 1 489 32 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 489 37 discriminator 2
	lw	a5,76(a5)
	.loc 1 489 25 discriminator 2
	beq	a5,zero,.L87
	.loc 1 490 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 490 21
	lw	a5,76(a5)
	.loc 1 490 12
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	jalr	a5
.LVL20:
	mv	a5,a0
	j	.L88
.L87:
	.loc 1 492 9
	li	a5,0
.L88:
	.loc 1 493 1
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
.LFE33:
	.size	altcp_get_ip, .-altcp_get_ip
	.section	.text.altcp_get_port,"ax",@progbits
	.align	1
	.globl	altcp_get_port
	.type	altcp_get_port, @function
altcp_get_port:
.LFB34:
	.loc 1 497 1
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
	.loc 1 498 6
	lw	a5,-20(s0)
	beq	a5,zero,.L90
	.loc 1 498 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 498 12 discriminator 1
	beq	a5,zero,.L90
	.loc 1 498 32 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 498 37 discriminator 2
	lw	a5,80(a5)
	.loc 1 498 25 discriminator 2
	beq	a5,zero,.L90
	.loc 1 499 16
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 499 21
	lw	a5,80(a5)
	.loc 1 499 12
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	jalr	a5
.LVL21:
	mv	a5,a0
	j	.L91
.L90:
	.loc 1 501 10
	li	a5,0
.L91:
	.loc 1 502 1
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
.LFE34:
	.size	altcp_get_port, .-altcp_get_port
	.section	.text.altcp_keepalive_disable,"ax",@progbits
	.align	1
	.globl	altcp_keepalive_disable
	.type	altcp_keepalive_disable, @function
altcp_keepalive_disable:
.LFB35:
	.loc 1 507 1
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
	.loc 1 508 6
	lw	a5,-20(s0)
	beq	a5,zero,.L94
	.loc 1 508 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 508 12 discriminator 1
	beq	a5,zero,.L94
	.loc 1 508 32 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 508 37 discriminator 2
	lw	a5,84(a5)
	.loc 1 508 25 discriminator 2
	beq	a5,zero,.L94
	.loc 1 509 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 509 14
	lw	a5,84(a5)
	.loc 1 509 5
	lw	a0,-20(s0)
	jalr	a5
.LVL22:
.L94:
	.loc 1 511 1
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
	.size	altcp_keepalive_disable, .-altcp_keepalive_disable
	.section	.text.altcp_keepalive_enable,"ax",@progbits
	.align	1
	.globl	altcp_keepalive_enable
	.type	altcp_keepalive_enable, @function
altcp_keepalive_enable:
.LFB36:
	.loc 1 515 1
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
	.loc 1 516 6
	lw	a5,-20(s0)
	beq	a5,zero,.L97
	.loc 1 516 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 516 12 discriminator 1
	beq	a5,zero,.L97
	.loc 1 516 32 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 516 37 discriminator 2
	lw	a5,88(a5)
	.loc 1 516 25 discriminator 2
	beq	a5,zero,.L97
	.loc 1 517 11
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 517 16
	lw	a5,88(a5)
	.loc 1 517 7
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	jalr	a5
.LVL23:
.L97:
	.loc 1 519 1
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
	.size	altcp_keepalive_enable, .-altcp_keepalive_enable
	.section	.text.altcp_default_set_poll,"ax",@progbits
	.align	1
	.globl	altcp_default_set_poll
	.type	altcp_default_set_poll, @function
altcp_default_set_poll:
.LFB37:
	.loc 1 537 1
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
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 1 538 6
	lw	a5,-20(s0)
	beq	a5,zero,.L100
	.loc 1 538 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 538 12 discriminator 1
	beq	a5,zero,.L100
	.loc 1 539 5
	lw	a5,-20(s0)
	lw	a4,4(a5)
	lw	a5,-20(s0)
	lw	a5,32(a5)
	lbu	a3,-21(s0)
	mv	a2,a3
	mv	a1,a5
	mv	a0,a4
	call	altcp_poll
.L100:
	.loc 1 541 1
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
.LFE37:
	.size	altcp_default_set_poll, .-altcp_default_set_poll
	.section	.text.altcp_default_recved,"ax",@progbits
	.align	1
	.globl	altcp_default_recved
	.type	altcp_default_recved, @function
altcp_default_recved:
.LFB38:
	.loc 1 545 1
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
	mv	a5,a1
	sh	a5,-22(s0)
	.loc 1 546 6
	lw	a5,-20(s0)
	beq	a5,zero,.L103
	.loc 1 546 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 546 12 discriminator 1
	beq	a5,zero,.L103
	.loc 1 547 5
	lw	a5,-20(s0)
	lw	a5,4(a5)
	lhu	a4,-22(s0)
	mv	a1,a4
	mv	a0,a5
	call	altcp_recved
.L103:
	.loc 1 549 1
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
.LFE38:
	.size	altcp_default_recved, .-altcp_default_recved
	.section	.text.altcp_default_bind,"ax",@progbits
	.align	1
	.globl	altcp_default_bind
	.type	altcp_default_bind, @function
altcp_default_bind:
.LFB39:
	.loc 1 553 1
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
	sh	a5,-26(s0)
	.loc 1 554 6
	lw	a5,-20(s0)
	beq	a5,zero,.L105
	.loc 1 554 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 554 12 discriminator 1
	beq	a5,zero,.L105
	.loc 1 555 12
	lw	a5,-20(s0)
	lw	a5,4(a5)
	lhu	a4,-26(s0)
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	altcp_bind
	mv	a5,a0
	j	.L106
.L105:
	.loc 1 557 10
	li	a5,-6
.L106:
	.loc 1 558 1
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
.LFE39:
	.size	altcp_default_bind, .-altcp_default_bind
	.section	.text.altcp_default_shutdown,"ax",@progbits
	.align	1
	.globl	altcp_default_shutdown
	.type	altcp_default_shutdown, @function
altcp_default_shutdown:
.LFB40:
	.loc 1 562 1
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
	.loc 1 563 6
	lw	a5,-20(s0)
	beq	a5,zero,.L108
	.loc 1 564 8
	lw	a5,-24(s0)
	beq	a5,zero,.L109
	.loc 1 564 17 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L109
	.loc 1 564 35 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 564 28 discriminator 2
	beq	a5,zero,.L109
	.loc 1 564 48 discriminator 3
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 564 53 discriminator 3
	lw	a5,24(a5)
	.loc 1 564 41 discriminator 3
	beq	a5,zero,.L109
	.loc 1 566 18
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 566 23
	lw	a5,24(a5)
	.loc 1 566 14
	lw	a0,-20(s0)
	jalr	a5
.LVL24:
	mv	a5,a0
	j	.L110
.L109:
	.loc 1 568 13
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 568 8
	beq	a5,zero,.L108
	.loc 1 569 14
	lw	a5,-20(s0)
	lw	a5,4(a5)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	altcp_shutdown
	mv	a5,a0
	j	.L110
.L108:
	.loc 1 572 10
	li	a5,-6
.L110:
	.loc 1 573 1
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
	.size	altcp_default_shutdown, .-altcp_default_shutdown
	.section	.text.altcp_default_write,"ax",@progbits
	.align	1
	.globl	altcp_default_write
	.type	altcp_default_write, @function
altcp_default_write:
.LFB41:
	.loc 1 577 1
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
	mv	a4,a3
	sh	a5,-26(s0)
	mv	a5,a4
	sb	a5,-27(s0)
	.loc 1 578 6
	lw	a5,-20(s0)
	beq	a5,zero,.L112
	.loc 1 578 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 578 12 discriminator 1
	beq	a5,zero,.L112
	.loc 1 579 12
	lw	a5,-20(s0)
	lw	a5,4(a5)
	lbu	a3,-27(s0)
	lhu	a4,-26(s0)
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	altcp_write
	mv	a5,a0
	j	.L113
.L112:
	.loc 1 581 10
	li	a5,-6
.L113:
	.loc 1 582 1
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
	.size	altcp_default_write, .-altcp_default_write
	.section	.text.altcp_default_output,"ax",@progbits
	.align	1
	.globl	altcp_default_output
	.type	altcp_default_output, @function
altcp_default_output:
.LFB42:
	.loc 1 586 1
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
	.loc 1 587 6
	lw	a5,-20(s0)
	beq	a5,zero,.L115
	.loc 1 587 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 587 12 discriminator 1
	beq	a5,zero,.L115
	.loc 1 588 12
	lw	a5,-20(s0)
	lw	a5,4(a5)
	mv	a0,a5
	call	altcp_output
	mv	a5,a0
	j	.L116
.L115:
	.loc 1 590 10
	li	a5,-6
.L116:
	.loc 1 591 1
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
.LFE42:
	.size	altcp_default_output, .-altcp_default_output
	.section	.text.altcp_default_mss,"ax",@progbits
	.align	1
	.globl	altcp_default_mss
	.type	altcp_default_mss, @function
altcp_default_mss:
.LFB43:
	.loc 1 595 1
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
	.loc 1 596 6
	lw	a5,-20(s0)
	beq	a5,zero,.L118
	.loc 1 596 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 596 12 discriminator 1
	beq	a5,zero,.L118
	.loc 1 597 12
	lw	a5,-20(s0)
	lw	a5,4(a5)
	mv	a0,a5
	call	altcp_mss
	mv	a5,a0
	j	.L119
.L118:
	.loc 1 599 10
	li	a5,0
.L119:
	.loc 1 600 1
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
.LFE43:
	.size	altcp_default_mss, .-altcp_default_mss
	.section	.text.altcp_default_sndbuf,"ax",@progbits
	.align	1
	.globl	altcp_default_sndbuf
	.type	altcp_default_sndbuf, @function
altcp_default_sndbuf:
.LFB44:
	.loc 1 604 1
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
	.loc 1 605 6
	lw	a5,-20(s0)
	beq	a5,zero,.L121
	.loc 1 605 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 605 12 discriminator 1
	beq	a5,zero,.L121
	.loc 1 606 12
	lw	a5,-20(s0)
	lw	a5,4(a5)
	mv	a0,a5
	call	altcp_sndbuf
	mv	a5,a0
	j	.L122
.L121:
	.loc 1 608 10
	li	a5,0
.L122:
	.loc 1 609 1
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
	.size	altcp_default_sndbuf, .-altcp_default_sndbuf
	.section	.text.altcp_default_sndqueuelen,"ax",@progbits
	.align	1
	.globl	altcp_default_sndqueuelen
	.type	altcp_default_sndqueuelen, @function
altcp_default_sndqueuelen:
.LFB45:
	.loc 1 613 1
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
	.loc 1 614 6
	lw	a5,-20(s0)
	beq	a5,zero,.L124
	.loc 1 614 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 614 12 discriminator 1
	beq	a5,zero,.L124
	.loc 1 615 12
	lw	a5,-20(s0)
	lw	a5,4(a5)
	mv	a0,a5
	call	altcp_sndqueuelen
	mv	a5,a0
	j	.L125
.L124:
	.loc 1 617 10
	li	a5,0
.L125:
	.loc 1 618 1
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
.LFE45:
	.size	altcp_default_sndqueuelen, .-altcp_default_sndqueuelen
	.section	.text.altcp_default_nagle_disable,"ax",@progbits
	.align	1
	.globl	altcp_default_nagle_disable
	.type	altcp_default_nagle_disable, @function
altcp_default_nagle_disable:
.LFB46:
	.loc 1 622 1
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
	.loc 1 623 6
	lw	a5,-20(s0)
	beq	a5,zero,.L128
	.loc 1 623 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 623 12 discriminator 1
	beq	a5,zero,.L128
	.loc 1 624 5
	lw	a5,-20(s0)
	lw	a5,4(a5)
	mv	a0,a5
	call	altcp_nagle_disable
.L128:
	.loc 1 626 1
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
	.size	altcp_default_nagle_disable, .-altcp_default_nagle_disable
	.section	.text.altcp_default_nagle_enable,"ax",@progbits
	.align	1
	.globl	altcp_default_nagle_enable
	.type	altcp_default_nagle_enable, @function
altcp_default_nagle_enable:
.LFB47:
	.loc 1 630 1
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
	.loc 1 631 6
	lw	a5,-20(s0)
	beq	a5,zero,.L131
	.loc 1 631 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 631 12 discriminator 1
	beq	a5,zero,.L131
	.loc 1 632 5
	lw	a5,-20(s0)
	lw	a5,4(a5)
	mv	a0,a5
	call	altcp_nagle_enable
.L131:
	.loc 1 634 1
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
.LFE47:
	.size	altcp_default_nagle_enable, .-altcp_default_nagle_enable
	.section	.text.altcp_default_nagle_disabled,"ax",@progbits
	.align	1
	.globl	altcp_default_nagle_disabled
	.type	altcp_default_nagle_disabled, @function
altcp_default_nagle_disabled:
.LFB48:
	.loc 1 638 1
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
	.loc 1 639 6
	lw	a5,-20(s0)
	beq	a5,zero,.L133
	.loc 1 639 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 639 12 discriminator 1
	beq	a5,zero,.L133
	.loc 1 640 12
	lw	a5,-20(s0)
	lw	a5,4(a5)
	mv	a0,a5
	call	altcp_nagle_disabled
	mv	a5,a0
	j	.L134
.L133:
	.loc 1 642 10
	li	a5,0
.L134:
	.loc 1 643 1
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
.LFE48:
	.size	altcp_default_nagle_disabled, .-altcp_default_nagle_disabled
	.section	.text.altcp_default_setprio,"ax",@progbits
	.align	1
	.globl	altcp_default_setprio
	.type	altcp_default_setprio, @function
altcp_default_setprio:
.LFB49:
	.loc 1 647 1
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
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 1 648 6
	lw	a5,-20(s0)
	beq	a5,zero,.L137
	.loc 1 648 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 648 12 discriminator 1
	beq	a5,zero,.L137
	.loc 1 649 5
	lw	a5,-20(s0)
	lw	a5,4(a5)
	lbu	a4,-21(s0)
	mv	a1,a4
	mv	a0,a5
	call	altcp_setprio
.L137:
	.loc 1 651 1
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
.LFE49:
	.size	altcp_default_setprio, .-altcp_default_setprio
	.section	.text.altcp_default_dealloc,"ax",@progbits
	.align	1
	.globl	altcp_default_dealloc
	.type	altcp_default_dealloc, @function
altcp_default_dealloc:
.LFB50:
	.loc 1 655 1
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
	.loc 1 658 1
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
.LFE50:
	.size	altcp_default_dealloc, .-altcp_default_dealloc
	.section	.text.altcp_default_get_tcp_addrinfo,"ax",@progbits
	.align	1
	.globl	altcp_default_get_tcp_addrinfo
	.type	altcp_default_get_tcp_addrinfo, @function
altcp_default_get_tcp_addrinfo:
.LFB51:
	.loc 1 662 1
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
	.loc 1 663 6
	lw	a5,-20(s0)
	beq	a5,zero,.L140
	.loc 1 663 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 663 12 discriminator 1
	beq	a5,zero,.L140
	.loc 1 664 12
	lw	a5,-20(s0)
	lw	a5,4(a5)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	altcp_get_tcp_addrinfo
	mv	a5,a0
	j	.L141
.L140:
	.loc 1 666 10
	li	a5,-6
.L141:
	.loc 1 667 1
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
.LFE51:
	.size	altcp_default_get_tcp_addrinfo, .-altcp_default_get_tcp_addrinfo
	.section	.text.altcp_default_get_ip,"ax",@progbits
	.align	1
	.globl	altcp_default_get_ip
	.type	altcp_default_get_ip, @function
altcp_default_get_ip:
.LFB52:
	.loc 1 671 1
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
	.loc 1 672 6
	lw	a5,-20(s0)
	beq	a5,zero,.L143
	.loc 1 672 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 672 12 discriminator 1
	beq	a5,zero,.L143
	.loc 1 673 12
	lw	a5,-20(s0)
	lw	a5,4(a5)
	lw	a1,-24(s0)
	mv	a0,a5
	call	altcp_get_ip
	mv	a5,a0
	j	.L144
.L143:
	.loc 1 675 9
	li	a5,0
.L144:
	.loc 1 676 1
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
.LFE52:
	.size	altcp_default_get_ip, .-altcp_default_get_ip
	.section	.text.altcp_default_get_port,"ax",@progbits
	.align	1
	.globl	altcp_default_get_port
	.type	altcp_default_get_port, @function
altcp_default_get_port:
.LFB53:
	.loc 1 680 1
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
	.loc 1 681 6
	lw	a5,-20(s0)
	beq	a5,zero,.L146
	.loc 1 681 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 681 12 discriminator 1
	beq	a5,zero,.L146
	.loc 1 682 12
	lw	a5,-20(s0)
	lw	a5,4(a5)
	lw	a1,-24(s0)
	mv	a0,a5
	call	altcp_get_port
	mv	a5,a0
	j	.L147
.L146:
	.loc 1 684 10
	li	a5,0
.L147:
	.loc 1 685 1
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
.LFE53:
	.size	altcp_default_get_port, .-altcp_default_get_port
	.section	.text.altcp_default_keepalive_disable,"ax",@progbits
	.align	1
	.globl	altcp_default_keepalive_disable
	.type	altcp_default_keepalive_disable, @function
altcp_default_keepalive_disable:
.LFB54:
	.loc 1 690 1
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
	.loc 1 691 6
	lw	a5,-20(s0)
	beq	a5,zero,.L150
	.loc 1 691 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 691 12 discriminator 1
	beq	a5,zero,.L150
	.loc 1 692 5
	lw	a5,-20(s0)
	lw	a5,4(a5)
	mv	a0,a5
	call	altcp_keepalive_disable
.L150:
	.loc 1 694 1
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
.LFE54:
	.size	altcp_default_keepalive_disable, .-altcp_default_keepalive_disable
	.section	.text.altcp_default_keepalive_enable,"ax",@progbits
	.align	1
	.globl	altcp_default_keepalive_enable
	.type	altcp_default_keepalive_enable, @function
altcp_default_keepalive_enable:
.LFB55:
	.loc 1 698 1
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
	.loc 1 699 6
	lw	a5,-20(s0)
	beq	a5,zero,.L153
	.loc 1 699 19 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 699 12 discriminator 1
	beq	a5,zero,.L153
	.loc 1 700 7
	lw	a5,-20(s0)
	lw	a5,4(a5)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	altcp_keepalive_enable
.L153:
	.loc 1 702 1
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
.LFE55:
	.size	altcp_default_keepalive_enable, .-altcp_default_keepalive_enable
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/altcp.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/priv/altcp_priv.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/altcp_tcp.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x138b
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x17
	.4byte	.LASF206
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xc
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0xc
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0xc
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x19
	.byte	0x4
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	0x92
	.uleb128 0x1a
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x22
	.byte	0x15
	.4byte	0x32
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x39
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x55
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0x9f
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0x93
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0xab
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xb7
	.uleb128 0x14
	.byte	0x5
	.4byte	0x32
	.byte	0x5
	.byte	0x35
	.4byte	0x166
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.sleb128 -1
	.uleb128 0x8
	.4byte	.LASF24
	.sleb128 -2
	.uleb128 0x8
	.4byte	.LASF25
	.sleb128 -3
	.uleb128 0x8
	.4byte	.LASF26
	.sleb128 -4
	.uleb128 0x8
	.4byte	.LASF27
	.sleb128 -5
	.uleb128 0x8
	.4byte	.LASF28
	.sleb128 -6
	.uleb128 0x8
	.4byte	.LASF29
	.sleb128 -7
	.uleb128 0x8
	.4byte	.LASF30
	.sleb128 -8
	.uleb128 0x8
	.4byte	.LASF31
	.sleb128 -9
	.uleb128 0x8
	.4byte	.LASF32
	.sleb128 -10
	.uleb128 0x8
	.4byte	.LASF33
	.sleb128 -11
	.uleb128 0x8
	.4byte	.LASF34
	.sleb128 -12
	.uleb128 0x8
	.4byte	.LASF35
	.sleb128 -13
	.uleb128 0x8
	.4byte	.LASF36
	.sleb128 -14
	.uleb128 0x8
	.4byte	.LASF37
	.sleb128 -15
	.uleb128 0x8
	.4byte	.LASF38
	.sleb128 -16
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x5
	.byte	0x60
	.byte	0xe
	.4byte	0xcf
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x10
	.byte	0x6
	.byte	0xba
	.byte	0x8
	.4byte	0x1e8
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x6
	.byte	0xbc
	.byte	0x10
	.4byte	0x1e8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x84
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x6
	.byte	0xc8
	.byte	0x9
	.4byte	0xdb
	.byte	0x8
	.uleb128 0xd
	.string	"len"
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0xdb
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x6
	.byte	0xd0
	.byte	0x8
	.4byte	0xc3
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x6
	.byte	0xd3
	.byte	0x8
	.4byte	0xc3
	.byte	0xd
	.uleb128 0xd
	.string	"ref"
	.byte	0x6
	.byte	0xda
	.byte	0x8
	.4byte	0xc3
	.byte	0xe
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x6
	.byte	0xdd
	.byte	0x8
	.4byte	0xc3
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	0x172
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x4
	.byte	0x7
	.byte	0x33
	.byte	0x8
	.4byte	0x208
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x7
	.byte	0x34
	.byte	0x9
	.4byte	0xe7
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x7
	.byte	0x39
	.byte	0x19
	.4byte	0x1ed
	.uleb128 0x1b
	.4byte	.LASF207
	.byte	0x7
	.byte	0x1
	.4byte	0x39
	.byte	0x8
	.byte	0x36
	.byte	0x6
	.4byte	0x239
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x2e
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF53
	.byte	0x8
	.2byte	0x126
	.byte	0x14
	.4byte	0x208
	.uleb128 0x15
	.4byte	0x239
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x9
	.byte	0x3b
	.byte	0x11
	.4byte	0x257
	.uleb128 0x5
	.4byte	0x25c
	.uleb128 0x9
	.4byte	0x166
	.4byte	0x275
	.uleb128 0x2
	.4byte	0x84
	.uleb128 0x2
	.4byte	0x275
	.uleb128 0x2
	.4byte	0x166
	.byte	0
	.uleb128 0x5
	.4byte	0x27a
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x2c
	.byte	0x9
	.byte	0x44
	.byte	0x8
	.4byte	0x317
	.uleb128 0xd
	.string	"fns"
	.byte	0x9
	.byte	0x45
	.byte	0x21
	.4byte	0x525
	.byte	0
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0x9
	.byte	0x46
	.byte	0x15
	.4byte	0x275
	.byte	0x4
	.uleb128 0xd
	.string	"arg"
	.byte	0x9
	.byte	0x47
	.byte	0x9
	.4byte	0x84
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0x9
	.byte	0x48
	.byte	0x9
	.4byte	0x84
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0x9
	.byte	0x4a
	.byte	0x13
	.4byte	0x24b
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x9
	.byte	0x4b
	.byte	0x16
	.4byte	0x317
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x9
	.byte	0x4c
	.byte	0x11
	.4byte	0x323
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0x9
	.byte	0x4d
	.byte	0x11
	.4byte	0x352
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x9
	.byte	0x4e
	.byte	0x11
	.4byte	0x37c
	.byte	0x20
	.uleb128 0xd
	.string	"err"
	.byte	0x9
	.byte	0x4f
	.byte	0x10
	.4byte	0x3a1
	.byte	0x24
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x9
	.byte	0x50
	.byte	0x8
	.4byte	0xc3
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x9
	.byte	0x3c
	.byte	0x11
	.4byte	0x257
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x9
	.byte	0x3d
	.byte	0x11
	.4byte	0x32f
	.uleb128 0x5
	.4byte	0x334
	.uleb128 0x9
	.4byte	0x166
	.4byte	0x352
	.uleb128 0x2
	.4byte	0x84
	.uleb128 0x2
	.4byte	0x275
	.uleb128 0x2
	.4byte	0x1e8
	.uleb128 0x2
	.4byte	0x166
	.byte	0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x9
	.byte	0x3e
	.byte	0x11
	.4byte	0x35e
	.uleb128 0x5
	.4byte	0x363
	.uleb128 0x9
	.4byte	0x166
	.4byte	0x37c
	.uleb128 0x2
	.4byte	0x84
	.uleb128 0x2
	.4byte	0x275
	.uleb128 0x2
	.4byte	0xdb
	.byte	0
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x9
	.byte	0x3f
	.byte	0x11
	.4byte	0x388
	.uleb128 0x5
	.4byte	0x38d
	.uleb128 0x9
	.4byte	0x166
	.4byte	0x3a1
	.uleb128 0x2
	.4byte	0x84
	.uleb128 0x2
	.4byte	0x275
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x9
	.byte	0x40
	.byte	0x10
	.4byte	0x3ad
	.uleb128 0x5
	.4byte	0x3b2
	.uleb128 0x10
	.4byte	0x3c2
	.uleb128 0x2
	.4byte	0x84
	.uleb128 0x2
	.4byte	0x166
	.byte	0
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x9
	.byte	0x42
	.byte	0x1d
	.4byte	0x3ce
	.uleb128 0x5
	.4byte	0x3d3
	.uleb128 0x9
	.4byte	0x275
	.4byte	0x3e7
	.uleb128 0x2
	.4byte	0x84
	.uleb128 0x2
	.4byte	0xc3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x5c
	.byte	0xa
	.byte	0x61
	.byte	0x8
	.4byte	0x520
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0xa
	.byte	0x62
	.byte	0x15
	.4byte	0x55e
	.byte	0
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0xa
	.byte	0x63
	.byte	0x13
	.4byte	0x57f
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0xa
	.byte	0x64
	.byte	0x11
	.4byte	0x5a0
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0xa
	.byte	0x65
	.byte	0x14
	.4byte	0x5cf
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0xa
	.byte	0x66
	.byte	0x13
	.4byte	0x5fe
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0xa
	.byte	0x67
	.byte	0x12
	.4byte	0x62d
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0xa
	.byte	0x68
	.byte	0x12
	.4byte	0x649
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0xa
	.byte	0x69
	.byte	0x15
	.4byte	0x669
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0xa
	.byte	0x6a
	.byte	0x12
	.4byte	0x693
	.byte	0x20
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0xa
	.byte	0x6b
	.byte	0x13
	.4byte	0x6c2
	.byte	0x24
	.uleb128 0xd
	.string	"mss"
	.byte	0xa
	.byte	0x6c
	.byte	0x10
	.4byte	0x6ce
	.byte	0x28
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0xa
	.byte	0x6d
	.byte	0x13
	.4byte	0x6ee
	.byte	0x2c
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0xa
	.byte	0x6e
	.byte	0x18
	.4byte	0x6fa
	.byte	0x30
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0xa
	.byte	0x6f
	.byte	0x1a
	.4byte	0x706
	.byte	0x34
	.uleb128 0x4
	.4byte	.LASF84
	.byte	0xa
	.byte	0x70
	.byte	0x19
	.4byte	0x712
	.byte	0x38
	.uleb128 0x4
	.4byte	.LASF85
	.byte	0xa
	.byte	0x71
	.byte	0x1b
	.4byte	0x71e
	.byte	0x3c
	.uleb128 0x4
	.4byte	.LASF86
	.byte	0xa
	.byte	0x72
	.byte	0x14
	.4byte	0x73e
	.byte	0x40
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0xa
	.byte	0x73
	.byte	0x14
	.4byte	0x74a
	.byte	0x44
	.uleb128 0x4
	.4byte	.LASF88
	.byte	0xa
	.byte	0x74
	.byte	0x1d
	.4byte	0x756
	.byte	0x48
	.uleb128 0x4
	.4byte	.LASF89
	.byte	0xa
	.byte	0x75
	.byte	0x13
	.4byte	0x78f
	.byte	0x4c
	.uleb128 0x4
	.4byte	.LASF90
	.byte	0xa
	.byte	0x76
	.byte	0x15
	.4byte	0x7b4
	.byte	0x50
	.uleb128 0x4
	.4byte	.LASF91
	.byte	0xa
	.byte	0x78
	.byte	0x1e
	.4byte	0x7d9
	.byte	0x54
	.uleb128 0x4
	.4byte	.LASF92
	.byte	0xa
	.byte	0x79
	.byte	0x1d
	.4byte	0x7e5
	.byte	0x58
	.byte	0
	.uleb128 0x15
	.4byte	0x3e7
	.uleb128 0x5
	.4byte	0x520
	.uleb128 0xf
	.4byte	.LASF93
	.byte	0x8
	.byte	0x9
	.byte	0x55
	.byte	0x10
	.4byte	0x552
	.uleb128 0x4
	.4byte	.LASF94
	.byte	0x9
	.byte	0x57
	.byte	0x10
	.4byte	0x3c2
	.byte	0
	.uleb128 0xd
	.string	"arg"
	.byte	0x9
	.byte	0x59
	.byte	0x9
	.4byte	0x84
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0x9
	.byte	0x5a
	.byte	0x3
	.4byte	0x52a
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0xa
	.byte	0x3b
	.byte	0x10
	.4byte	0x56a
	.uleb128 0x5
	.4byte	0x56f
	.uleb128 0x10
	.4byte	0x57f
	.uleb128 0x2
	.4byte	0x275
	.uleb128 0x2
	.4byte	0xc3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0xa
	.byte	0x3c
	.byte	0x10
	.4byte	0x58b
	.uleb128 0x5
	.4byte	0x590
	.uleb128 0x10
	.4byte	0x5a0
	.uleb128 0x2
	.4byte	0x275
	.uleb128 0x2
	.4byte	0xdb
	.byte	0
	.uleb128 0x3
	.4byte	.LASF98
	.byte	0xa
	.byte	0x3d
	.byte	0x11
	.4byte	0x5ac
	.uleb128 0x5
	.4byte	0x5b1
	.uleb128 0x9
	.4byte	0x166
	.4byte	0x5ca
	.uleb128 0x2
	.4byte	0x275
	.uleb128 0x2
	.4byte	0x5ca
	.uleb128 0x2
	.4byte	0xdb
	.byte	0
	.uleb128 0x5
	.4byte	0x246
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0xa
	.byte	0x3e
	.byte	0x11
	.4byte	0x5db
	.uleb128 0x5
	.4byte	0x5e0
	.uleb128 0x9
	.4byte	0x166
	.4byte	0x5fe
	.uleb128 0x2
	.4byte	0x275
	.uleb128 0x2
	.4byte	0x5ca
	.uleb128 0x2
	.4byte	0xdb
	.uleb128 0x2
	.4byte	0x317
	.byte	0
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0xa
	.byte	0x40
	.byte	0x1d
	.4byte	0x60a
	.uleb128 0x5
	.4byte	0x60f
	.uleb128 0x9
	.4byte	0x275
	.4byte	0x628
	.uleb128 0x2
	.4byte	0x275
	.uleb128 0x2
	.4byte	0xc3
	.uleb128 0x2
	.4byte	0x628
	.byte	0
	.uleb128 0x5
	.4byte	0x166
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0xa
	.byte	0x42
	.byte	0x10
	.4byte	0x639
	.uleb128 0x5
	.4byte	0x63e
	.uleb128 0x10
	.4byte	0x649
	.uleb128 0x2
	.4byte	0x275
	.byte	0
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0xa
	.byte	0x43
	.byte	0x11
	.4byte	0x655
	.uleb128 0x5
	.4byte	0x65a
	.uleb128 0x9
	.4byte	0x166
	.4byte	0x669
	.uleb128 0x2
	.4byte	0x275
	.byte	0
	.uleb128 0x3
	.4byte	.LASF103
	.byte	0xa
	.byte	0x44
	.byte	0x11
	.4byte	0x675
	.uleb128 0x5
	.4byte	0x67a
	.uleb128 0x9
	.4byte	0x166
	.4byte	0x693
	.uleb128 0x2
	.4byte	0x275
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0xa
	.byte	0x46
	.byte	0x11
	.4byte	0x69f
	.uleb128 0x5
	.4byte	0x6a4
	.uleb128 0x9
	.4byte	0x166
	.4byte	0x6c2
	.uleb128 0x2
	.4byte	0x275
	.uleb128 0x2
	.4byte	0x8d
	.uleb128 0x2
	.4byte	0xdb
	.uleb128 0x2
	.4byte	0xc3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0xa
	.byte	0x47
	.byte	0x11
	.4byte	0x655
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0xa
	.byte	0x49
	.byte	0x11
	.4byte	0x6da
	.uleb128 0x5
	.4byte	0x6df
	.uleb128 0x9
	.4byte	0xdb
	.4byte	0x6ee
	.uleb128 0x2
	.4byte	0x275
	.byte	0
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0xa
	.byte	0x4a
	.byte	0x11
	.4byte	0x6da
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0xa
	.byte	0x4b
	.byte	0x11
	.4byte	0x6da
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0xa
	.byte	0x4c
	.byte	0x10
	.4byte	0x639
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0xa
	.byte	0x4d
	.byte	0x10
	.4byte	0x639
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0xa
	.byte	0x4e
	.byte	0xf
	.4byte	0x72a
	.uleb128 0x5
	.4byte	0x72f
	.uleb128 0x9
	.4byte	0x2b
	.4byte	0x73e
	.uleb128 0x2
	.4byte	0x275
	.byte	0
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0xa
	.byte	0x50
	.byte	0x10
	.4byte	0x56a
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0xa
	.byte	0x52
	.byte	0x10
	.4byte	0x639
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0xa
	.byte	0x54
	.byte	0x11
	.4byte	0x762
	.uleb128 0x5
	.4byte	0x767
	.uleb128 0x9
	.4byte	0x166
	.4byte	0x785
	.uleb128 0x2
	.4byte	0x275
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x785
	.uleb128 0x2
	.4byte	0x78a
	.byte	0
	.uleb128 0x5
	.4byte	0x239
	.uleb128 0x5
	.4byte	0xdb
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0xa
	.byte	0x55
	.byte	0x16
	.4byte	0x79b
	.uleb128 0x5
	.4byte	0x7a0
	.uleb128 0x9
	.4byte	0x785
	.4byte	0x7b4
	.uleb128 0x2
	.4byte	0x275
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0xa
	.byte	0x56
	.byte	0x11
	.4byte	0x7c0
	.uleb128 0x5
	.4byte	0x7c5
	.uleb128 0x9
	.4byte	0xdb
	.4byte	0x7d9
	.uleb128 0x2
	.4byte	0x275
	.uleb128 0x2
	.4byte	0x2b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF117
	.byte	0xa
	.byte	0x59
	.byte	0x10
	.4byte	0x639
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0xa
	.byte	0x5a
	.byte	0x10
	.4byte	0x7f1
	.uleb128 0x5
	.4byte	0x7f6
	.uleb128 0x10
	.4byte	0x810
	.uleb128 0x2
	.4byte	0x275
	.uleb128 0x2
	.4byte	0xe7
	.uleb128 0x2
	.4byte	0xe7
	.uleb128 0x2
	.4byte	0xe7
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.4byte	0x39
	.byte	0xb
	.byte	0x34
	.4byte	0x87d
	.uleb128 0x7
	.4byte	.LASF119
	.byte	0
	.uleb128 0x7
	.4byte	.LASF120
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF121
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF122
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF123
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF124
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF125
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF126
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF127
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF128
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF129
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF130
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF131
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF132
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF133
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF134
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF135
	.byte	0xb
	.byte	0x38
	.byte	0x3
	.4byte	0x810
	.uleb128 0x12
	.4byte	.LASF136
	.byte	0xc
	.byte	0x38
	.byte	0x13
	.4byte	0x275
	.4byte	0x89f
	.uleb128 0x2
	.4byte	0xc3
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF208
	.byte	0xb
	.byte	0x95
	.byte	0x6
	.4byte	0x8b6
	.uleb128 0x2
	.4byte	0x87d
	.uleb128 0x2
	.4byte	0x84
	.byte	0
	.uleb128 0x12
	.4byte	.LASF137
	.byte	0xd
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0x8d6
	.uleb128 0x2
	.4byte	0x84
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x71
	.byte	0
	.uleb128 0x12
	.4byte	.LASF138
	.byte	0xb
	.byte	0x93
	.byte	0x7
	.4byte	0x84
	.4byte	0x8ec
	.uleb128 0x2
	.4byte	0x87d
	.byte	0
	.uleb128 0xa
	.4byte	.LASF143
	.2byte	0x2b9
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x93e
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x2b9
	.byte	0x32
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF140
	.2byte	0x2b9
	.byte	0x3e
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF141
	.2byte	0x2b9
	.byte	0x4a
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF142
	.2byte	0x2b9
	.byte	0x57
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF144
	.2byte	0x2b1
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x963
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x2b1
	.byte	0x33
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF146
	.2byte	0x2a7
	.4byte	0xdb
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x99b
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x2a7
	.byte	0x2a
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF145
	.2byte	0x2a7
	.byte	0x34
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF147
	.2byte	0x29e
	.4byte	0x785
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d3
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x29e
	.byte	0x28
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF145
	.2byte	0x29e
	.byte	0x32
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF148
	.2byte	0x295
	.4byte	0x166
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa29
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x295
	.byte	0x32
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF145
	.2byte	0x295
	.byte	0x3c
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF48
	.2byte	0x295
	.byte	0x4e
	.4byte	0x785
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF149
	.2byte	0x295
	.byte	0x5b
	.4byte	0x78a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x16
	.4byte	.LASF150
	.2byte	0x28e
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa4e
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x28e
	.byte	0x29
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF151
	.2byte	0x286
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa82
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x286
	.byte	0x29
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF152
	.2byte	0x286
	.byte	0x34
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x6
	.4byte	.LASF153
	.2byte	0x27d
	.4byte	0x2b
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaab
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x27d
	.byte	0x30
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF154
	.2byte	0x275
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad0
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x275
	.byte	0x2e
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF155
	.2byte	0x26d
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf5
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x26d
	.byte	0x2f
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF156
	.2byte	0x264
	.4byte	0xdb
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb1e
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x264
	.byte	0x2d
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF157
	.2byte	0x25b
	.4byte	0xdb
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb47
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x25b
	.byte	0x28
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF158
	.2byte	0x252
	.4byte	0xdb
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb70
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x252
	.byte	0x25
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF159
	.2byte	0x249
	.4byte	0x166
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb99
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x249
	.byte	0x28
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF160
	.2byte	0x240
	.4byte	0x166
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbef
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x240
	.byte	0x27
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0x240
	.byte	0x39
	.4byte	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"len"
	.2byte	0x240
	.byte	0x48
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x240
	.byte	0x52
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.byte	0
	.uleb128 0x6
	.4byte	.LASF163
	.2byte	0x231
	.4byte	0x166
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc36
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x231
	.byte	0x2a
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF164
	.2byte	0x231
	.byte	0x34
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF165
	.2byte	0x231
	.byte	0x41
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.4byte	.LASF166
	.2byte	0x228
	.4byte	0x166
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc7d
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x228
	.byte	0x26
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF167
	.2byte	0x228
	.byte	0x3d
	.4byte	0x5ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF149
	.2byte	0x228
	.byte	0x4b
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0xa
	.4byte	.LASF168
	.2byte	0x220
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb1
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x220
	.byte	0x28
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"len"
	.2byte	0x220
	.byte	0x34
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0xa
	.4byte	.LASF169
	.2byte	0x218
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce5
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x218
	.byte	0x2a
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF170
	.2byte	0x218
	.byte	0x35
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0xa
	.4byte	.LASF171
	.2byte	0x202
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd37
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x202
	.byte	0x2a
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF140
	.2byte	0x202
	.byte	0x36
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF141
	.2byte	0x202
	.byte	0x42
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF142
	.2byte	0x202
	.byte	0x4f
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF172
	.2byte	0x1fa
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd5c
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x1fa
	.byte	0x2b
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF173
	.2byte	0x1f0
	.4byte	0xdb
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd94
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x1f0
	.byte	0x22
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF145
	.2byte	0x1f0
	.byte	0x2c
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF174
	.2byte	0x1e7
	.4byte	0x785
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdcc
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x1e7
	.byte	0x20
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF145
	.2byte	0x1e7
	.byte	0x2a
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF175
	.2byte	0x1de
	.4byte	0x166
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe22
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x1de
	.byte	0x2a
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF145
	.2byte	0x1de
	.byte	0x34
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF48
	.2byte	0x1de
	.byte	0x46
	.4byte	0x785
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF149
	.2byte	0x1de
	.byte	0x53
	.4byte	0x78a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF176
	.2byte	0x1d6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe56
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x1d6
	.byte	0x21
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF152
	.2byte	0x1d6
	.byte	0x2c
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x6
	.4byte	.LASF177
	.2byte	0x1c9
	.4byte	0x2b
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe7f
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x1c9
	.byte	0x28
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF178
	.2byte	0x1c1
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xea4
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x1c1
	.byte	0x26
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF179
	.2byte	0x1b9
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xec9
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x1b9
	.byte	0x27
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF180
	.2byte	0x1b0
	.4byte	0xdb
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xef2
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x1b0
	.byte	0x25
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF181
	.2byte	0x1a3
	.4byte	0xdb
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf1b
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x1a3
	.byte	0x20
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF182
	.2byte	0x196
	.4byte	0xdb
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf44
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x196
	.byte	0x1d
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF183
	.2byte	0x189
	.4byte	0x166
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf6d
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x189
	.byte	0x20
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF184
	.2byte	0x17c
	.4byte	0x166
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfc3
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x17c
	.byte	0x1f
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF161
	.2byte	0x17c
	.byte	0x31
	.4byte	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"len"
	.2byte	0x17c
	.byte	0x40
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x1
	.4byte	.LASF162
	.2byte	0x17c
	.byte	0x4a
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.byte	0
	.uleb128 0x6
	.4byte	.LASF185
	.2byte	0x16f
	.4byte	0x166
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x100a
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x16f
	.byte	0x22
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF164
	.2byte	0x16f
	.byte	0x2c
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF165
	.2byte	0x16f
	.byte	0x39
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.4byte	.LASF186
	.2byte	0x162
	.4byte	0x166
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1033
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x162
	.byte	0x1f
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF187
	.2byte	0x156
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1058
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x156
	.byte	0x1f
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF188
	.2byte	0x149
	.4byte	0x275
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x109f
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x149
	.byte	0x35
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF189
	.2byte	0x149
	.byte	0x40
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0xe
	.string	"err"
	.2byte	0x149
	.byte	0x50
	.4byte	0x628
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.4byte	.LASF190
	.2byte	0x13c
	.4byte	0x166
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10f5
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x13c
	.byte	0x21
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF167
	.2byte	0x13c
	.byte	0x38
	.4byte	0x5ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF149
	.2byte	0x13c
	.byte	0x46
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x1
	.4byte	.LASF59
	.2byte	0x13c
	.byte	0x5f
	.4byte	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.4byte	.LASF191
	.2byte	0x12f
	.4byte	0x166
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x113c
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x12f
	.byte	0x1e
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF167
	.2byte	0x12f
	.byte	0x35
	.4byte	0x5ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF149
	.2byte	0x12f
	.byte	0x43
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0xa
	.4byte	.LASF192
	.2byte	0x123
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1170
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x123
	.byte	0x20
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"len"
	.2byte	0x123
	.byte	0x2c
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x16
	.4byte	.LASF193
	.2byte	0x115
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11a4
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x115
	.byte	0x1d
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"err"
	.2byte	0x115
	.byte	0x30
	.4byte	0x3a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF194
	.2byte	0x105
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11e7
	.uleb128 0x1
	.4byte	.LASF139
	.2byte	0x105
	.byte	0x1e
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF62
	.2byte	0x105
	.byte	0x32
	.4byte	0x37c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF170
	.2byte	0x105
	.byte	0x3d
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x11
	.4byte	.LASF195
	.byte	0xf9
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1218
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0xf9
	.byte	0x1e
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0xf9
	.byte	0x32
	.4byte	0x352
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF196
	.byte	0xed
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1249
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0xed
	.byte	0x1e
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0xed
	.byte	0x32
	.4byte	0x323
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF197
	.byte	0xe1
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x127a
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0xe1
	.byte	0x20
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0xe1
	.byte	0x36
	.4byte	0x24b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF198
	.byte	0xd5
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12ac
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0xd5
	.byte	0x1d
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.string	"arg"
	.byte	0x1
	.byte	0xd5
	.byte	0x29
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF199
	.byte	0xbd
	.4byte	0x275
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12f0
	.uleb128 0xb
	.4byte	.LASF200
	.byte	0xbd
	.byte	0x26
	.4byte	0x12f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.4byte	.LASF201
	.byte	0xbd
	.byte	0x36
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1f
	.4byte	.LASF139
	.byte	0x1
	.byte	0xbf
	.byte	0x15
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x552
	.uleb128 0x13
	.4byte	.LASF202
	.byte	0xae
	.4byte	0x275
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x131c
	.uleb128 0xb
	.4byte	.LASF200
	.byte	0xae
	.byte	0x1e
	.4byte	0x12f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF203
	.byte	0xa4
	.4byte	0x275
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1343
	.uleb128 0xb
	.4byte	.LASF200
	.byte	0xa4
	.byte	0x22
	.4byte	0x12f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.4byte	.LASF204
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1368
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0x95
	.byte	0x1e
	.4byte	0x275
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF205
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.4byte	0x275
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.string	"ret"
	.byte	0x1
	.byte	0x8a
	.byte	0x15
	.4byte	0x275
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.sleb128 1
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.sleb128 1
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
	.uleb128 0x12
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
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
	.uleb128 0x21
	.sleb128 14
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
	.sleb128 1
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x18
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1ac
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF144:
	.string	"altcp_default_keepalive_disable"
.LASF148:
	.string	"altcp_default_get_tcp_addrinfo"
.LASF70:
	.string	"altcp_functions"
.LASF203:
	.string	"altcp_new_ip6"
.LASF170:
	.string	"interval"
.LASF200:
	.string	"allocator"
.LASF67:
	.string	"altcp_poll_fn"
.LASF104:
	.string	"altcp_write_fn"
.LASF122:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF101:
	.string	"altcp_abort_fn"
.LASF80:
	.string	"output"
.LASF139:
	.string	"conn"
.LASF116:
	.string	"altcp_get_port_fn"
.LASF93:
	.string	"altcp_allocator_s"
.LASF95:
	.string	"altcp_allocator_t"
.LASF204:
	.string	"altcp_free"
.LASF143:
	.string	"altcp_default_keepalive_enable"
.LASF44:
	.string	"flags"
.LASF201:
	.string	"ip_type"
.LASF37:
	.string	"ERR_CLSD"
.LASF150:
	.string	"altcp_default_dealloc"
.LASF30:
	.string	"ERR_USE"
.LASF172:
	.string	"altcp_keepalive_disable"
.LASF38:
	.string	"ERR_ARG"
.LASF73:
	.string	"bind"
.LASF10:
	.string	"unsigned int"
.LASF40:
	.string	"next"
.LASF155:
	.string	"altcp_default_nagle_disable"
.LASF39:
	.string	"err_t"
.LASF118:
	.string	"altcp_keepalive_enable_fn"
.LASF194:
	.string	"altcp_poll"
.LASF107:
	.string	"altcp_sndbuf_fn"
.LASF151:
	.string	"altcp_default_setprio"
.LASF87:
	.string	"dealloc"
.LASF20:
	.string	"u16_t"
.LASF185:
	.string	"altcp_shutdown"
.LASF160:
	.string	"altcp_default_write"
.LASF81:
	.string	"sndbuf"
.LASF86:
	.string	"setprio"
.LASF99:
	.string	"altcp_connect_fn"
.LASF133:
	.string	"MEMP_PBUF_POOL"
.LASF36:
	.string	"ERR_RST"
.LASF180:
	.string	"altcp_sndqueuelen"
.LASF31:
	.string	"ERR_ALREADY"
.LASF207:
	.string	"lwip_ip_addr_type"
.LASF112:
	.string	"altcp_setprio_fn"
.LASF17:
	.string	"uint32_t"
.LASF14:
	.string	"int8_t"
.LASF83:
	.string	"nagle_disable"
.LASF61:
	.string	"sent"
.LASF129:
	.string	"MEMP_IGMP_GROUP"
.LASF179:
	.string	"altcp_nagle_disable"
.LASF127:
	.string	"MEMP_TCPIP_MSG_API"
.LASF88:
	.string	"addrinfo"
.LASF142:
	.string	"count"
.LASF9:
	.string	"long long unsigned int"
.LASF187:
	.string	"altcp_abort"
.LASF171:
	.string	"altcp_keepalive_enable"
.LASF49:
	.string	"ip4_addr_t"
.LASF78:
	.string	"shutdown"
.LASF154:
	.string	"altcp_default_nagle_enable"
.LASF28:
	.string	"ERR_VAL"
.LASF193:
	.string	"altcp_err"
.LASF98:
	.string	"altcp_bind_fn"
.LASF128:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF208:
	.string	"memp_free"
.LASF76:
	.string	"abort"
.LASF43:
	.string	"type_internal"
.LASF42:
	.string	"tot_len"
.LASF167:
	.string	"ipaddr"
.LASF13:
	.string	"size_t"
.LASF41:
	.string	"payload"
.LASF182:
	.string	"altcp_mss"
.LASF175:
	.string	"altcp_get_tcp_addrinfo"
.LASF59:
	.string	"connected"
.LASF89:
	.string	"getip"
.LASF46:
	.string	"pbuf"
.LASF189:
	.string	"backlog"
.LASF72:
	.string	"recved"
.LASF75:
	.string	"listen"
.LASF19:
	.string	"s8_t"
.LASF186:
	.string	"altcp_close"
.LASF56:
	.string	"inner_conn"
.LASF126:
	.string	"MEMP_NETCONN"
.LASF178:
	.string	"altcp_nagle_enable"
.LASF29:
	.string	"ERR_WOULDBLOCK"
.LASF25:
	.string	"ERR_TIMEOUT"
.LASF134:
	.string	"MEMP_MAX"
.LASF152:
	.string	"prio"
.LASF58:
	.string	"accept"
.LASF132:
	.string	"MEMP_PBUF"
.LASF62:
	.string	"poll"
.LASF12:
	.string	"char"
.LASF173:
	.string	"altcp_get_port"
.LASF146:
	.string	"altcp_default_get_port"
.LASF111:
	.string	"altcp_nagle_disabled_fn"
.LASF77:
	.string	"close"
.LASF184:
	.string	"altcp_write"
.LASF190:
	.string	"altcp_connect"
.LASF115:
	.string	"altcp_get_ip_fn"
.LASF55:
	.string	"altcp_pcb"
.LASF156:
	.string	"altcp_default_sndqueuelen"
.LASF15:
	.string	"uint8_t"
.LASF114:
	.string	"altcp_get_tcp_addrinfo_fn"
.LASF71:
	.string	"set_poll"
.LASF168:
	.string	"altcp_default_recved"
.LASF198:
	.string	"altcp_arg"
.LASF138:
	.string	"memp_malloc"
.LASF125:
	.string	"MEMP_NETBUF"
.LASF8:
	.string	"long long int"
.LASF79:
	.string	"write"
.LASF52:
	.string	"IPADDR_TYPE_ANY"
.LASF34:
	.string	"ERR_IF"
.LASF192:
	.string	"altcp_recved"
.LASF96:
	.string	"altcp_set_poll_fn"
.LASF121:
	.string	"MEMP_TCP_PCB"
.LASF18:
	.string	"u8_t"
.LASF163:
	.string	"altcp_default_shutdown"
.LASF177:
	.string	"altcp_nagle_disabled"
.LASF97:
	.string	"altcp_recved_fn"
.LASF137:
	.string	"memset"
.LASF69:
	.string	"altcp_new_fn"
.LASF165:
	.string	"shut_tx"
.LASF162:
	.string	"apiflags"
.LASF66:
	.string	"altcp_sent_fn"
.LASF108:
	.string	"altcp_sndqueuelen_fn"
.LASF159:
	.string	"altcp_default_output"
.LASF145:
	.string	"local"
.LASF124:
	.string	"MEMP_ALTCP_PCB"
.LASF183:
	.string	"altcp_output"
.LASF161:
	.string	"dataptr"
.LASF205:
	.string	"altcp_alloc"
.LASF11:
	.string	"long double"
.LASF153:
	.string	"altcp_default_nagle_disabled"
.LASF16:
	.string	"uint16_t"
.LASF110:
	.string	"altcp_nagle_enable_fn"
.LASF45:
	.string	"if_idx"
.LASF92:
	.string	"keepalive_enable"
.LASF24:
	.string	"ERR_BUF"
.LASF21:
	.string	"u32_t"
.LASF94:
	.string	"alloc"
.LASF4:
	.string	"short int"
.LASF188:
	.string	"altcp_listen_with_backlog_and_err"
.LASF74:
	.string	"connect"
.LASF141:
	.string	"intvl"
.LASF157:
	.string	"altcp_default_sndbuf"
.LASF6:
	.string	"long int"
.LASF102:
	.string	"altcp_close_fn"
.LASF103:
	.string	"altcp_shutdown_fn"
.LASF130:
	.string	"MEMP_SYS_TIMEOUT"
.LASF68:
	.string	"altcp_err_fn"
.LASF181:
	.string	"altcp_sndbuf"
.LASF166:
	.string	"altcp_default_bind"
.LASF120:
	.string	"MEMP_UDP_PCB"
.LASF169:
	.string	"altcp_default_set_poll"
.LASF100:
	.string	"altcp_listen_fn"
.LASF136:
	.string	"altcp_tcp_new_ip_type"
.LASF27:
	.string	"ERR_INPROGRESS"
.LASF147:
	.string	"altcp_default_get_ip"
.LASF47:
	.string	"ip4_addr"
.LASF117:
	.string	"altcp_keepalive_disable_fn"
.LASF32:
	.string	"ERR_ISCONN"
.LASF174:
	.string	"altcp_get_ip"
.LASF191:
	.string	"altcp_bind"
.LASF63:
	.string	"pollinterval"
.LASF119:
	.string	"MEMP_RAW_PCB"
.LASF7:
	.string	"long unsigned int"
.LASF196:
	.string	"altcp_recv"
.LASF109:
	.string	"altcp_nagle_disable_fn"
.LASF149:
	.string	"port"
.LASF202:
	.string	"altcp_new"
.LASF85:
	.string	"nagle_disabled"
.LASF106:
	.string	"altcp_mss_fn"
.LASF84:
	.string	"nagle_enable"
.LASF3:
	.string	"unsigned char"
.LASF50:
	.string	"IPADDR_TYPE_V4"
.LASF51:
	.string	"IPADDR_TYPE_V6"
.LASF123:
	.string	"MEMP_TCP_SEG"
.LASF48:
	.string	"addr"
.LASF197:
	.string	"altcp_accept"
.LASF57:
	.string	"state"
.LASF90:
	.string	"getport"
.LASF35:
	.string	"ERR_ABRT"
.LASF176:
	.string	"altcp_setprio"
.LASF22:
	.string	"ERR_OK"
.LASF60:
	.string	"recv"
.LASF2:
	.string	"signed char"
.LASF158:
	.string	"altcp_default_mss"
.LASF64:
	.string	"altcp_connected_fn"
.LASF5:
	.string	"short unsigned int"
.LASF33:
	.string	"ERR_CONN"
.LASF26:
	.string	"ERR_RTE"
.LASF91:
	.string	"keepalive_disable"
.LASF53:
	.string	"ip_addr_t"
.LASF131:
	.string	"MEMP_NETDB"
.LASF135:
	.string	"memp_t"
.LASF195:
	.string	"altcp_sent"
.LASF164:
	.string	"shut_rx"
.LASF206:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF113:
	.string	"altcp_dealloc_fn"
.LASF54:
	.string	"altcp_accept_fn"
.LASF199:
	.string	"altcp_new_ip_type"
.LASF23:
	.string	"ERR_MEM"
.LASF105:
	.string	"altcp_output_fn"
.LASF82:
	.string	"sndqueuelen"
.LASF65:
	.string	"altcp_recv_fn"
.LASF140:
	.string	"idle"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/altcp.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
