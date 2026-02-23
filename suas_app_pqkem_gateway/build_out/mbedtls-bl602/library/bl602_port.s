	.file	"bl602_port.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/bl602_port.c"
	.section	.text.mbedtls_hardware_poll,"ax",@progbits
	.align	1
	.globl	mbedtls_hardware_poll
	.type	mbedtls_hardware_poll, @function
mbedtls_hardware_poll:
.LFB89:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/bl602_port.c"
	.loc 1 18 1
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
	.loc 1 21 11
	lw	a5,-48(s0)
	sw	zero,0(a5)
	.loc 1 22 18
	sw	zero,-24(s0)
	.loc 1 24 12
	sw	zero,-20(s0)
	.loc 1 24 5
	j	.L2
.L4:
	.loc 1 25 21
	lw	a5,-20(s0)
	andi	a5,a5,3
	.loc 1 25 12
	bne	a5,zero,.L3
	.loc 1 26 24
	call	bl_rand
	mv	a5,a0
	.loc 1 26 22 discriminator 1
	sw	a5,-24(s0)
.L3:
	.loc 1 28 15
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 1 28 19
	lw	a4,-24(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 29 18
	lw	a5,-24(s0)
	srli	a5,a5,8
	sw	a5,-24(s0)
	.loc 1 24 27 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	.loc 1 24 19 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L4
	.loc 1 32 11
	lw	a5,-48(s0)
	lw	a4,-44(s0)
	sw	a4,0(a5)
	.loc 1 34 12
	li	a5,0
	.loc 1 35 1
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
.LFE89:
	.size	mbedtls_hardware_poll, .-mbedtls_hardware_poll
	.section	.text.mbedtls_net_init,"ax",@progbits
	.align	1
	.globl	mbedtls_net_init
	.type	mbedtls_net_init, @function
mbedtls_net_init:
.LFB90:
	.loc 1 44 1
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
	.loc 1 45 13
	lw	a5,-20(s0)
	li	a4,-1
	sw	a4,0(a5)
	.loc 1 46 1
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
.LFE90:
	.size	mbedtls_net_init, .-mbedtls_net_init
	.section	.rodata
	.align	2
.LC0:
	.string	"%s %d: getaddrinfo fail- errno: %d\n"
	.section	.text.mbedtls_net_connect,"ax",@progbits
	.align	1
	.globl	mbedtls_net_connect
	.type	mbedtls_net_connect, @function
mbedtls_net_connect:
.LFB91:
	.loc 1 51 1
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
	.loc 1 52 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 56 5
	addi	a5,s0,-56
	li	a2,32
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 57 21
	sw	zero,-52(s0)
	.loc 1 58 40
	lw	a4,-80(s0)
	li	a5,1
	bne	a4,a5,.L8
	.loc 1 58 40 is_stmt 0 discriminator 1
	li	a5,2
	j	.L9
.L8:
	.loc 1 58 40 discriminator 2
	li	a5,1
.L9:
	.loc 1 58 23 is_stmt 1 discriminator 4
	sw	a5,-48(s0)
	.loc 1 59 41
	lw	a4,-80(s0)
	li	a5,1
	bne	a4,a5,.L10
	.loc 1 59 41 is_stmt 0 discriminator 1
	li	a5,17
	j	.L11
.L10:
	.loc 1 59 41 discriminator 2
	li	a5,6
.L11:
	.loc 1 59 23 is_stmt 1 discriminator 4
	sw	a5,-44(s0)
	.loc 1 61 9
	addi	a4,s0,-60
	addi	a5,s0,-56
	mv	a3,a4
	mv	a2,a5
	lw	a1,-76(s0)
	lw	a0,-72(s0)
	call	lwip_getaddrinfo
	mv	a5,a0
	.loc 1 61 8 discriminator 1
	beq	a5,zero,.L12
	.loc 1 62 9
	lui	a5,%hi(errno)
	lw	a5,%lo(errno)(a5)
	mv	a3,a5
	li	a2,62
	lui	a5,%hi(__FUNCTION__.2)
	addi	a1,a5,%lo(__FUNCTION__.2)
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	.loc 1 63 16
	li	a5,-82
	j	.L20
.L12:
	.loc 1 67 9
	li	a5,-82
	sw	a5,-20(s0)
	.loc 1 69 13
	lw	a5,-60(s0)
	sw	a5,-24(s0)
	.loc 1 69 5
	j	.L14
.L19:
	.loc 1 70 19
	lw	a5,-24(s0)
	lw	a4,4(a5)
	lw	a5,-24(s0)
	lw	a3,8(a5)
	lw	a5,-24(s0)
	lw	a5,12(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	lwip_socket
	mv	a4,a0
	.loc 1 70 17 discriminator 1
	lw	a5,-68(s0)
	sw	a4,0(a5)
	.loc 1 71 16
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 1 71 12
	bge	a5,zero,.L15
	.loc 1 72 17
	li	a5,-66
	sw	a5,-20(s0)
	.loc 1 73 13
	j	.L16
.L15:
	.loc 1 76 13
	lw	a5,-68(s0)
	lw	a4,0(a5)
	.loc 1 76 37
	lw	a5,-24(s0)
	lw	a3,20(a5)
	.loc 1 76 13
	lw	a5,-24(s0)
	lw	a5,16(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	lwip_connect
	mv	a5,a0
	.loc 1 76 12 discriminator 1
	bne	a5,zero,.L17
	.loc 1 77 17
	sw	zero,-20(s0)
	.loc 1 78 13
	j	.L18
.L17:
	.loc 1 80 9
	lw	a0,-68(s0)
	call	mbedtls_net_close
	.loc 1 81 13
	li	a5,-68
	sw	a5,-20(s0)
.L16:
	.loc 1 69 41 discriminator 2
	lw	a5,-24(s0)
	lw	a5,28(a5)
	sw	a5,-24(s0)
.L14:
	.loc 1 69 29 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L19
.L18:
	.loc 1 83 5
	lw	a5,-60(s0)
	mv	a0,a5
	call	lwip_freeaddrinfo
	.loc 1 84 12
	lw	a5,-20(s0)
.L20:
	.loc 1 85 1
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
.LFE91:
	.size	mbedtls_net_connect, .-mbedtls_net_connect
	.section	.text.mbedtls_net_set_block,"ax",@progbits
	.align	1
	.globl	mbedtls_net_set_block
	.type	mbedtls_net_set_block, @function
mbedtls_net_set_block:
.LFB92:
	.loc 1 89 1
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
	.loc 1 90 17
	lw	a5,-36(s0)
	lw	a5,0(a5)
	li	a2,0
	li	a1,3
	mv	a0,a5
	call	lwip_fcntl
	sw	a0,-20(s0)
	.loc 1 91 11
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
	.loc 1 92 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a2,-20(s0)
	li	a1,4
	mv	a0,a5
	call	lwip_fcntl
	mv	a5,a0
	.loc 1 93 1
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
.LFE92:
	.size	mbedtls_net_set_block, .-mbedtls_net_set_block
	.section	.text.mbedtls_net_set_nonblock,"ax",@progbits
	.align	1
	.globl	mbedtls_net_set_nonblock
	.type	mbedtls_net_set_nonblock, @function
mbedtls_net_set_nonblock:
.LFB93:
	.loc 1 96 1
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
	.loc 1 97 17
	lw	a5,-36(s0)
	lw	a5,0(a5)
	li	a2,0
	li	a1,3
	mv	a0,a5
	call	lwip_fcntl
	sw	a0,-20(s0)
	.loc 1 98 11
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 99 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a2,-20(s0)
	li	a1,4
	mv	a0,a5
	call	lwip_fcntl
	mv	a5,a0
	.loc 1 100 1
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
.LFE93:
	.size	mbedtls_net_set_nonblock, .-mbedtls_net_set_nonblock
	.section	.text.mbedtls_net_recv_timeout,"ax",@progbits
	.align	1
	.globl	mbedtls_net_recv_timeout
	.type	mbedtls_net_recv_timeout, @function
mbedtls_net_recv_timeout:
.LFB94:
	.loc 1 105 1
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
	.loc 1 106 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 109 9
	lw	a5,-52(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 111 8
	lw	a5,-24(s0)
	bge	a5,zero,.L26
	.loc 1 112 16
	li	a5,-69
	j	.L34
.L26:
	.loc 1 115 5
	addi	a5,s0,-36
	li	a2,2
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 116 13
	lw	a4,-24(s0)
	li	a5,15
	bgt	a4,a5,.L28
	.loc 1 116 39 discriminator 1
	lw	a5,-24(s0)
	blt	a5,zero,.L28
	.loc 1 116 139 discriminator 2
	lw	a5,-24(s0)
	srai	a4,a5,31
	andi	a4,a4,7
	add	a5,a4,a5
	srai	a5,a5,3
	.loc 1 116 130 discriminator 2
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-20(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 1 116 161 discriminator 2
	lw	a5,-24(s0)
	andi	a5,a5,7
	.loc 1 116 148 discriminator 2
	li	a3,1
	sll	a5,a3,a5
	.loc 1 116 143 discriminator 2
	slli	a5,a5,24
	srai	a5,a5,24
	or	a5,a4,a5
	slli	a3,a5,24
	srai	a3,a3,24
	.loc 1 116 97 discriminator 2
	lw	a5,-24(s0)
	srai	a4,a5,31
	andi	a4,a4,7
	add	a5,a4,a5
	srai	a5,a5,3
	.loc 1 116 103 discriminator 2
	andi	a4,a3,0xff
	.loc 1 116 101 discriminator 2
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-20(a5)
.L28:
	.loc 1 118 25
	lw	a4,-64(s0)
	li	a5,274878464
	addi	a5,a5,-557
	mulhu	a5,a4,a5
	srli	a5,a5,6
	.loc 1 118 15
	sw	a5,-32(s0)
	.loc 1 119 27
	lw	a4,-64(s0)
	li	a5,274878464
	addi	a5,a5,-557
	mulhu	a5,a4,a5
	srli	a5,a5,6
	li	a3,1000
	mul	a5,a5,a3
	sub	a5,a4,a5
	.loc 1 119 35
	li	a4,1000
	mul	a5,a5,a4
	.loc 1 119 16
	sw	a5,-28(s0)
	.loc 1 121 11
	lw	a5,-24(s0)
	addi	a0,a5,1
	lw	a5,-64(s0)
	beq	a5,zero,.L29
	.loc 1 121 11 is_stmt 0 discriminator 1
	addi	a5,s0,-32
	j	.L30
.L29:
	.loc 1 121 11 discriminator 2
	li	a5,0
.L30:
	.loc 1 121 11 discriminator 4
	addi	a1,s0,-36
	mv	a4,a5
	li	a3,0
	li	a2,0
	call	lwip_select
	sw	a0,-20(s0)
	.loc 1 124 8 is_stmt 1
	lw	a5,-20(s0)
	bne	a5,zero,.L31
	.loc 1 125 16
	li	a5,-24576
	addi	a5,a5,-2048
	j	.L34
.L31:
	.loc 1 128 8
	lw	a5,-20(s0)
	bge	a5,zero,.L32
	.loc 1 129 19
	lui	a5,%hi(errno)
	lw	a4,%lo(errno)(a5)
	.loc 1 129 12
	li	a5,4
	bne	a4,a5,.L33
	.loc 1 130 20
	li	a5,-28672
	addi	a5,a5,1792
	j	.L34
.L33:
	.loc 1 133 16
	li	a5,-76
	j	.L34
.L32:
	.loc 1 137 12
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	mbedtls_net_recv
	mv	a5,a0
.L34:
	.loc 1 138 1
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
.LFE94:
	.size	mbedtls_net_recv_timeout, .-mbedtls_net_recv_timeout
	.section	.text.net_would_block,"ax",@progbits
	.align	1
	.type	net_would_block, @function
net_would_block:
.LFB95:
	.loc 1 144 1
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
	.loc 1 148 24
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 148 10
	li	a2,0
	li	a1,3
	mv	a0,a5
	call	lwip_fcntl
	mv	a5,a0
	.loc 1 148 34 discriminator 1
	andi	a4,a5,1
	.loc 1 148 8 discriminator 1
	li	a5,1
	beq	a4,a5,.L36
	.loc 1 149 16
	li	a5,0
	j	.L37
.L36:
	.loc 1 152 5
	lui	a5,%hi(errno)
	lw	a4,%lo(errno)(a5)
	li	a5,11
	bne	a4,a5,.L38
	.loc 1 159 20
	li	a5,1
	j	.L37
.L38:
	.loc 1 162 12
	li	a5,0
.L37:
	.loc 1 163 1
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
.LFE95:
	.size	net_would_block, .-net_would_block
	.section	.rodata
	.align	2
.LC1:
	.string	"%s %d: net reset - errno: %d\n"
	.align	2
.LC2:
	.string	"%s %d: net send failed - errno: %d\n"
	.section	.text.mbedtls_net_send,"ax",@progbits
	.align	1
	.globl	mbedtls_net_send
	.type	mbedtls_net_send, @function
mbedtls_net_send:
.LFB96:
	.loc 1 167 1
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
	.loc 1 168 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 169 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 171 8
	lw	a5,-24(s0)
	bge	a5,zero,.L40
	.loc 1 172 16
	li	a5,-69
	j	.L41
.L40:
	.loc 1 175 16
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	call	lwip_write
	sw	a0,-20(s0)
	.loc 1 177 8
	lw	a5,-20(s0)
	bge	a5,zero,.L42
	.loc 1 178 13
	lw	a0,-36(s0)
	call	net_would_block
	mv	a5,a0
	.loc 1 178 12 discriminator 1
	beq	a5,zero,.L43
	.loc 1 179 20
	li	a5,-28672
	addi	a5,a5,1920
	j	.L41
.L43:
	.loc 1 182 19
	lui	a5,%hi(errno)
	lw	a4,%lo(errno)(a5)
	.loc 1 182 12
	li	a5,32
	beq	a4,a5,.L44
	.loc 1 182 34 discriminator 1
	lui	a5,%hi(errno)
	lw	a4,%lo(errno)(a5)
	.loc 1 182 25 discriminator 1
	li	a5,104
	bne	a4,a5,.L45
.L44:
	.loc 1 183 13
	lui	a5,%hi(errno)
	lw	a5,%lo(errno)(a5)
	mv	a3,a5
	li	a2,183
	lui	a5,%hi(__FUNCTION__.1)
	addi	a1,a5,%lo(__FUNCTION__.1)
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	.loc 1 184 20
	li	a5,-80
	j	.L41
.L45:
	.loc 1 187 19
	lui	a5,%hi(errno)
	lw	a4,%lo(errno)(a5)
	.loc 1 187 12
	li	a5,4
	bne	a4,a5,.L46
	.loc 1 188 20
	li	a5,-28672
	addi	a5,a5,1920
	j	.L41
.L46:
	.loc 1 191 9
	lui	a5,%hi(errno)
	lw	a5,%lo(errno)(a5)
	mv	a3,a5
	li	a2,191
	lui	a5,%hi(__FUNCTION__.1)
	addi	a1,a5,%lo(__FUNCTION__.1)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	.loc 1 192 16
	li	a5,-78
	j	.L41
.L42:
	.loc 1 195 12
	lw	a5,-20(s0)
.L41:
	.loc 1 196 1
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
.LFE96:
	.size	mbedtls_net_send, .-mbedtls_net_send
	.section	.rodata
	.align	2
.LC3:
	.string	"%s %d: invalid socket fd\n"
	.align	2
.LC4:
	.string	"%s %d: net recv failed - errno: %d\n"
	.section	.text.mbedtls_net_recv,"ax",@progbits
	.align	1
	.globl	mbedtls_net_recv
	.type	mbedtls_net_recv, @function
mbedtls_net_recv:
.LFB97:
	.loc 1 200 1
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
	.loc 1 201 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 1 202 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 204 8
	lw	a5,-24(s0)
	bge	a5,zero,.L48
	.loc 1 205 9
	li	a2,205
	lui	a5,%hi(__FUNCTION__.0)
	addi	a1,a5,%lo(__FUNCTION__.0)
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	.loc 1 206 16
	li	a5,-69
	j	.L49
.L48:
	.loc 1 209 16
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	call	lwip_read
	sw	a0,-20(s0)
	.loc 1 211 8
	lw	a5,-20(s0)
	bge	a5,zero,.L50
	.loc 1 212 13
	lw	a0,-36(s0)
	call	net_would_block
	mv	a5,a0
	.loc 1 212 12 discriminator 1
	beq	a5,zero,.L51
	.loc 1 213 20
	li	a5,-28672
	addi	a5,a5,1792
	j	.L49
.L51:
	.loc 1 216 19
	lui	a5,%hi(errno)
	lw	a4,%lo(errno)(a5)
	.loc 1 216 12
	li	a5,32
	beq	a4,a5,.L52
	.loc 1 216 34 discriminator 1
	lui	a5,%hi(errno)
	lw	a4,%lo(errno)(a5)
	.loc 1 216 25 discriminator 1
	li	a5,104
	bne	a4,a5,.L53
.L52:
	.loc 1 217 13
	lui	a5,%hi(errno)
	lw	a5,%lo(errno)(a5)
	mv	a3,a5
	li	a2,217
	lui	a5,%hi(__FUNCTION__.0)
	addi	a1,a5,%lo(__FUNCTION__.0)
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	.loc 1 218 20
	li	a5,-80
	j	.L49
.L53:
	.loc 1 221 19
	lui	a5,%hi(errno)
	lw	a4,%lo(errno)(a5)
	.loc 1 221 12
	li	a5,4
	bne	a4,a5,.L54
	.loc 1 222 20
	li	a5,-28672
	addi	a5,a5,1792
	j	.L49
.L54:
	.loc 1 225 9
	lui	a5,%hi(errno)
	lw	a5,%lo(errno)(a5)
	mv	a3,a5
	li	a2,225
	lui	a5,%hi(__FUNCTION__.0)
	addi	a1,a5,%lo(__FUNCTION__.0)
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
	.loc 1 226 16
	li	a5,-76
	j	.L49
.L50:
	.loc 1 229 12
	lw	a5,-20(s0)
.L49:
	.loc 1 230 1
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
.LFE97:
	.size	mbedtls_net_recv, .-mbedtls_net_recv
	.section	.text.mbedtls_net_terminate,"ax",@progbits
	.align	1
	.globl	mbedtls_net_terminate
	.type	mbedtls_net_terminate, @function
mbedtls_net_terminate:
.LFB98:
	.loc 1 234 1
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
	.loc 1 235 12
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 235 8
	li	a5,-1
	beq	a4,a5,.L59
	.loc 1 239 8
	lbu	a5,-21(s0)
	beq	a5,zero,.L58
	.loc 1 240 9
	lw	a5,-20(s0)
	lw	a5,0(a5)
	li	a1,2
	mv	a0,a5
	call	lwip_shutdown
.L58:
	.loc 1 243 5
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	lwip_close
	.loc 1 244 13
	lw	a5,-20(s0)
	li	a4,-1
	sw	a4,0(a5)
	j	.L55
.L59:
	.loc 1 236 9
	nop
.L55:
	.loc 1 245 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE98:
	.size	mbedtls_net_terminate, .-mbedtls_net_terminate
	.section	.text.mbedtls_net_close,"ax",@progbits
	.align	1
	.globl	mbedtls_net_close
	.type	mbedtls_net_close, @function
mbedtls_net_close:
.LFB99:
	.loc 1 248 1
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
	.loc 1 249 5
	li	a1,0
	lw	a0,-20(s0)
	call	mbedtls_net_terminate
	.loc 1 250 1
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
.LFE99:
	.size	mbedtls_net_close, .-mbedtls_net_close
	.section	.text.mbedtls_net_free,"ax",@progbits
	.align	1
	.globl	mbedtls_net_free
	.type	mbedtls_net_free, @function
mbedtls_net_free:
.LFB100:
	.loc 1 253 1
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
	.loc 1 254 5
	li	a1,1
	lw	a0,-20(s0)
	call	mbedtls_net_terminate
	.loc 1 255 1
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
.LFE100:
	.size	mbedtls_net_free, .-mbedtls_net_free
	.section	.text.get_current_time_ms,"ax",@progbits
	.align	1
	.globl	get_current_time_ms
	.type	get_current_time_ms, @function
get_current_time_ms:
.LFB101:
	.loc 1 259 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 260 12
	call	bl_timer_now_us
	mv	a4,a0
	.loc 1 260 30 discriminator 1
	li	a5,274878464
	addi	a5,a5,-557
	mulhu	a5,a4,a5
	srli	a5,a5,6
	.loc 1 261 1
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
.LFE101:
	.size	get_current_time_ms, .-get_current_time_ms
	.section	.text.mbedtls_timing_get_timer,"ax",@progbits
	.align	1
	.globl	mbedtls_timing_get_timer
	.type	mbedtls_timing_get_timer, @function
mbedtls_timing_get_timer:
.LFB102:
	.loc 1 264 1
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
	.loc 1 265 8
	lw	a5,-24(s0)
	beq	a5,zero,.L65
	.loc 1 266 27
	call	get_current_time_ms
	mv	a5,a0
	.loc 1 266 27 is_stmt 0 discriminator 1
	mv	a4,a5
	.loc 1 266 25 is_stmt 1 discriminator 1
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 267 16
	li	a5,0
	j	.L66
.L65:
	.loc 1 269 16
	call	get_current_time_ms
	mv	a5,a0
	.loc 1 269 16 is_stmt 0 discriminator 1
	mv	a4,a5
	.loc 1 269 43 is_stmt 1 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 269 38 discriminator 1
	sub	a5,a4,a5
.L66:
	.loc 1 271 1
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
.LFE102:
	.size	mbedtls_timing_get_timer, .-mbedtls_timing_get_timer
	.section	.text.mbedtls_timing_set_delay,"ax",@progbits
	.align	1
	.globl	mbedtls_timing_set_delay
	.type	mbedtls_timing_set_delay, @function
mbedtls_timing_set_delay:
.LFB103:
	.loc 1 274 1
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
	.loc 1 275 35
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 276 17
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,4(a5)
	.loc 1 277 17
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	sw	a4,8(a5)
	.loc 1 279 8
	lw	a5,-44(s0)
	beq	a5,zero,.L69
	.loc 1 280 9
	lw	a5,-20(s0)
	li	a1,1
	mv	a0,a5
	call	mbedtls_timing_get_timer
.L69:
	.loc 1 282 1
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
.LFE103:
	.size	mbedtls_timing_set_delay, .-mbedtls_timing_set_delay
	.section	.text.mbedtls_timing_get_delay,"ax",@progbits
	.align	1
	.globl	mbedtls_timing_get_delay
	.type	mbedtls_timing_get_delay, @function
mbedtls_timing_get_delay:
.LFB104:
	.loc 1 285 1
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
	.loc 1 286 35
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 289 12
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 289 8
	bne	a5,zero,.L71
	.loc 1 290 16
	li	a5,-1
	j	.L72
.L71:
	.loc 1 293 18
	lw	a5,-20(s0)
	li	a1,0
	mv	a0,a5
	call	mbedtls_timing_get_timer
	sw	a0,-24(s0)
	.loc 1 295 26
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 295 8
	lw	a4,-24(s0)
	bltu	a4,a5,.L73
	.loc 1 296 16
	li	a5,2
	j	.L72
.L73:
	.loc 1 297 33
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 297 15
	lw	a4,-24(s0)
	bltu	a4,a5,.L74
	.loc 1 298 16
	li	a5,1
	j	.L72
.L74:
	.loc 1 300 16
	li	a5,0
.L72:
	.loc 1 302 1
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
.LFE104:
	.size	mbedtls_timing_get_delay, .-mbedtls_timing_get_delay
	.section	.rodata.__FUNCTION__.2,"a"
	.align	2
	.type	__FUNCTION__.2, @object
	.size	__FUNCTION__.2, 20
__FUNCTION__.2:
	.string	"mbedtls_net_connect"
	.section	.rodata.__FUNCTION__.1,"a"
	.align	2
	.type	__FUNCTION__.1, @object
	.size	__FUNCTION__.1, 17
__FUNCTION__.1:
	.string	"mbedtls_net_send"
	.section	.rodata.__FUNCTION__.0,"a"
	.align	2
	.type	__FUNCTION__.0, @object
	.size	__FUNCTION__.0, 17
__FUNCTION__.0:
	.string	"mbedtls_net_recv"
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/sockets.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netdb.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/net_sockets.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bl602_port.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_timer.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x946
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1a
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0xa
	.4byte	0x5a
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x3
	.byte	0x93
	.byte	0x14
	.4byte	0x2b
	.uleb128 0x1b
	.byte	0x4
	.uleb128 0x3
	.4byte	0x5a
	.uleb128 0x3
	.4byte	0xa1
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0xa
	.4byte	0xa1
	.uleb128 0x3
	.4byte	0xa8
	.uleb128 0x1c
	.4byte	0xad
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x4
	.byte	0x51
	.byte	0x12
	.4byte	0x89
	.uleb128 0x3
	.4byte	0xc8
	.uleb128 0x1d
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x5
	.byte	0x28
	.byte	0x12
	.4byte	0x74
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x5a
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x7b
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x6
	.byte	0x7d
	.byte	0x11
	.4byte	0xd5
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x6
	.byte	0x81
	.byte	0x12
	.4byte	0xe1
	.uleb128 0x1e
	.4byte	.LASF93
	.byte	0xd
	.byte	0xb1
	.byte	0xc
	.4byte	0x2b
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x7
	.byte	0x44
	.byte	0xe
	.4byte	0xed
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x10
	.byte	0x7
	.byte	0x63
	.byte	0x8
	.4byte	0x152
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x7
	.byte	0x64
	.byte	0x8
	.4byte	0xed
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x7
	.byte	0x65
	.byte	0xf
	.4byte	0x111
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x7
	.byte	0x66
	.byte	0x8
	.4byte	0x157
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x11d
	.uleb128 0xf
	.4byte	0xa1
	.4byte	0x167
	.uleb128 0x10
	.4byte	0x3e
	.byte	0xd
	.byte	0
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x7
	.byte	0x76
	.byte	0xf
	.4byte	0xf9
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x2
	.2byte	0x1ea
	.byte	0x10
	.4byte	0x18e
	.uleb128 0x11
	.4byte	.LASF28
	.2byte	0x1ec
	.byte	0x11
	.4byte	0x18e
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x5a
	.4byte	0x19e
	.uleb128 0x10
	.4byte	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF27
	.byte	0x7
	.2byte	0x1ed
	.byte	0x3
	.4byte	0x173
	.uleb128 0x15
	.4byte	.LASF29
	.byte	0x8
	.2byte	0x218
	.byte	0x8
	.4byte	0x1d3
	.uleb128 0x11
	.4byte	.LASF30
	.2byte	0x219
	.byte	0x8
	.4byte	0x74
	.byte	0
	.uleb128 0x11
	.4byte	.LASF31
	.2byte	0x21a
	.byte	0x8
	.4byte	0x74
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x20
	.byte	0x8
	.byte	0x67
	.byte	0x8
	.4byte	0x249
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x8
	.byte	0x68
	.byte	0x9
	.4byte	0x2b
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x8
	.byte	0x69
	.byte	0x9
	.4byte	0x2b
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x8
	.byte	0x6a
	.byte	0x9
	.4byte	0x2b
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x8
	.byte	0x6b
	.byte	0x9
	.4byte	0x2b
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x8
	.byte	0x6c
	.byte	0xf
	.4byte	0x167
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x8
	.byte	0x6d
	.byte	0x16
	.4byte	0x24e
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x8
	.byte	0x6e
	.byte	0xb
	.4byte	0x9c
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x8
	.byte	0x6f
	.byte	0x16
	.4byte	0x253
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.4byte	0x1d3
	.uleb128 0x3
	.4byte	0x11d
	.uleb128 0x3
	.4byte	0x1d3
	.uleb128 0x3
	.4byte	0x32
	.uleb128 0x3
	.4byte	0x61
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x4
	.byte	0x9
	.byte	0x53
	.byte	0x10
	.4byte	0x27c
	.uleb128 0x20
	.string	"fd"
	.byte	0x9
	.byte	0x5a
	.byte	0x9
	.4byte	0x2b
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF41
	.byte	0x9
	.byte	0x5c
	.byte	0x1
	.4byte	0x262
	.uleb128 0xa
	.4byte	0x27c
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0x8
	.4byte	0x2a8
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0xa
	.byte	0x7
	.byte	0xe
	.4byte	0xe1
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0xc
	.byte	0xa
	.byte	0xd
	.byte	0x10
	.4byte	0x2dd
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0xa
	.byte	0xe
	.byte	0x23
	.4byte	0x28d
	.byte	0
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0xa
	.byte	0xf
	.byte	0xe
	.4byte	0xe1
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0xa
	.byte	0x10
	.byte	0xe
	.4byte	0xe1
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF44
	.byte	0xa
	.byte	0x11
	.byte	0x3
	.4byte	0x2a8
	.uleb128 0x16
	.4byte	.LASF59
	.byte	0xc
	.byte	0x21
	.byte	0xa
	.4byte	0xe1
	.uleb128 0x8
	.4byte	.LASF48
	.2byte	0x261
	.byte	0x6
	.4byte	0x2b
	.4byte	0x30b
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF49
	.2byte	0x25c
	.byte	0x5
	.4byte	0x2b
	.4byte	0x326
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF50
	.2byte	0x265
	.byte	0x9
	.4byte	0xb7
	.4byte	0x346
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x95
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x8
	.4byte	.LASF51
	.2byte	0x26f
	.byte	0x9
	.4byte	0xb7
	.4byte	0x366
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0xc3
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x8
	.4byte	.LASF52
	.2byte	0x272
	.byte	0x5
	.4byte	0x2b
	.4byte	0x390
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x390
	.uleb128 0x1
	.4byte	0x390
	.uleb128 0x1
	.4byte	0x390
	.uleb128 0x1
	.4byte	0x395
	.byte	0
	.uleb128 0x3
	.4byte	0x19e
	.uleb128 0x3
	.4byte	0x1ab
	.uleb128 0x8
	.4byte	.LASF53
	.2byte	0x279
	.byte	0x5
	.4byte	0x2b
	.4byte	0x3ba
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x21
	.4byte	.LASF94
	.byte	0x8
	.byte	0x7d
	.byte	0x6
	.4byte	0x3cc
	.uleb128 0x1
	.4byte	0x253
	.byte	0
	.uleb128 0x8
	.4byte	.LASF54
	.2byte	0x262
	.byte	0x5
	.4byte	0x2b
	.4byte	0x3ec
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x3ec
	.uleb128 0x1
	.4byte	0x167
	.byte	0
	.uleb128 0x3
	.4byte	0x152
	.uleb128 0x8
	.4byte	.LASF55
	.2byte	0x26e
	.byte	0x5
	.4byte	0x2b
	.4byte	0x411
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x2b
	.byte	0
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x4
	.byte	0xce
	.byte	0x5
	.4byte	0x2b
	.4byte	0x428
	.uleb128 0x1
	.4byte	0xb2
	.uleb128 0x22
	.byte	0
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0x8
	.byte	0x7e
	.byte	0x5
	.4byte	0x2b
	.4byte	0x44d
	.uleb128 0x1
	.4byte	0xad
	.uleb128 0x1
	.4byte	0xad
	.uleb128 0x1
	.4byte	0x44d
	.uleb128 0x1
	.4byte	0x452
	.byte	0
	.uleb128 0x3
	.4byte	0x249
	.uleb128 0x3
	.4byte	0x253
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0xb
	.byte	0x21
	.byte	0x8
	.4byte	0x95
	.4byte	0x477
	.uleb128 0x1
	.4byte	0x95
	.uleb128 0x1
	.4byte	0x2b
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x16
	.4byte	.LASF60
	.byte	0x1
	.byte	0xe
	.byte	0xc
	.4byte	0x2b
	.uleb128 0x17
	.4byte	.LASF63
	.2byte	0x11c
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4cb
	.uleb128 0xe
	.4byte	.LASF62
	.2byte	0x11c
	.byte	0x24
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"ctx"
	.2byte	0x11e
	.4byte	0x4cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x11f
	.byte	0x13
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.4byte	0x2dd
	.uleb128 0x24
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x111
	.byte	0x6
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x523
	.uleb128 0xe
	.4byte	.LASF62
	.2byte	0x111
	.byte	0x25
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.4byte	.LASF46
	.2byte	0x111
	.byte	0x34
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.4byte	.LASF47
	.2byte	0x111
	.byte	0x45
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.string	"ctx"
	.2byte	0x113
	.4byte	0x4cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF64
	.2byte	0x107
	.byte	0xf
	.4byte	0x7b
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55d
	.uleb128 0x25
	.string	"val"
	.byte	0x1
	.2byte	0x107
	.byte	0x47
	.4byte	0x55d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF65
	.2byte	0x107
	.byte	0x50
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.4byte	0x28d
	.uleb128 0x26
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x102
	.byte	0x9
	.4byte	0xc9
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0xfc
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x59c
	.uleb128 0x2
	.string	"ctx"
	.byte	0xfc
	.byte	0x2c
	.4byte	0x59c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	0x27c
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0xf7
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c4
	.uleb128 0x2
	.string	"ctx"
	.byte	0xf7
	.byte	0x2d
	.4byte	0x59c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0xe9
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f5
	.uleb128 0x2
	.string	"ctx"
	.byte	0xe9
	.byte	0x31
	.4byte	0x59c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0xe9
	.byte	0x3b
	.4byte	0x5f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF71
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0xc7
	.4byte	0x2b
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x669
	.uleb128 0x2
	.string	"ctx"
	.byte	0xc7
	.byte	0x1c
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"buf"
	.byte	0xc7
	.byte	0x30
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"len"
	.byte	0xc7
	.byte	0x3c
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"ret"
	.byte	0xc9
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"fd"
	.byte	0xca
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF74
	.4byte	0x679
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.0
	.byte	0
	.uleb128 0xf
	.4byte	0xa8
	.4byte	0x679
	.uleb128 0x10
	.4byte	0x3e
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.4byte	0x669
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0xa6
	.4byte	0x2b
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6eb
	.uleb128 0x2
	.string	"ctx"
	.byte	0xa6
	.byte	0x1c
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"buf"
	.byte	0xa6
	.byte	0x36
	.4byte	0x25d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"len"
	.byte	0xa6
	.byte	0x42
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"ret"
	.byte	0xa8
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"fd"
	.byte	0xa9
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF74
	.4byte	0x679
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.1
	.byte	0
	.uleb128 0x27
	.4byte	.LASF96
	.byte	0x1
	.byte	0x8f
	.byte	0xc
	.4byte	0x2b
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x714
	.uleb128 0x2
	.string	"ctx"
	.byte	0x8f
	.byte	0x37
	.4byte	0x714
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	0x288
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0x67
	.4byte	0x2b
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a0
	.uleb128 0x2
	.string	"ctx"
	.byte	0x67
	.byte	0x24
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"buf"
	.byte	0x67
	.byte	0x38
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"len"
	.byte	0x67
	.byte	0x44
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x68
	.byte	0x27
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.string	"ret"
	.byte	0x6a
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"tv"
	.byte	0x6b
	.byte	0x14
	.4byte	0x1ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.4byte	.LASF77
	.byte	0x6c
	.byte	0xc
	.4byte	0x19e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"fd"
	.byte	0x6d
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x5f
	.4byte	0x2b
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d5
	.uleb128 0x2
	.string	"ctx"
	.byte	0x5f
	.byte	0x33
	.4byte	0x59c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x61
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x58
	.4byte	0x2b
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x80a
	.uleb128 0x2
	.string	"ctx"
	.byte	0x58
	.byte	0x30
	.4byte	0x59c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x5a
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x31
	.4byte	0x2b
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a6
	.uleb128 0x2
	.string	"ctx"
	.byte	0x31
	.byte	0x2e
	.4byte	0x59c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x31
	.byte	0x3f
	.4byte	0xad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x32
	.byte	0x11
	.4byte	0xad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x32
	.byte	0x1b
	.4byte	0x2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x7
	.string	"ret"
	.byte	0x34
	.byte	0x9
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x35
	.byte	0x15
	.4byte	0x1d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x35
	.byte	0x1d
	.4byte	0x253
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.string	"cur"
	.byte	0x35
	.byte	0x29
	.4byte	0x253
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF74
	.4byte	0x8b6
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.2
	.byte	0
	.uleb128 0xf
	.4byte	0xa8
	.4byte	0x8b6
	.uleb128 0x10
	.4byte	0x3e
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.4byte	0x8a6
	.uleb128 0x28
	.4byte	.LASF87
	.byte	0x1
	.byte	0x2b
	.byte	0x6
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8e0
	.uleb128 0x2
	.string	"ctx"
	.byte	0x2b
	.byte	0x2c
	.4byte	0x59c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.4byte	.LASF88
	.byte	0x1
	.byte	0x10
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x10
	.byte	0x21
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x11
	.byte	0x14
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"len"
	.byte	0x11
	.byte	0x23
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x11
	.byte	0x30
	.4byte	0x258
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.string	"i"
	.byte	0x14
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x16
	.byte	0x12
	.4byte	0x3e
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
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xe
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x21
	.sleb128 35
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x94
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
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
	.4byte	.LFB89
	.uleb128 .LFE89-.LFB89
	.byte	0x7
	.4byte	.LFB90
	.uleb128 .LFE90-.LFB90
	.byte	0x7
	.4byte	.LFB91
	.uleb128 .LFE91-.LFB91
	.byte	0x7
	.4byte	.LFB92
	.uleb128 .LFE92-.LFB92
	.byte	0x7
	.4byte	.LFB93
	.uleb128 .LFE93-.LFB93
	.byte	0x7
	.4byte	.LFB94
	.uleb128 .LFE94-.LFB94
	.byte	0x7
	.4byte	.LFB95
	.uleb128 .LFE95-.LFB95
	.byte	0x7
	.4byte	.LFB96
	.uleb128 .LFE96-.LFB96
	.byte	0x7
	.4byte	.LFB97
	.uleb128 .LFE97-.LFB97
	.byte	0x7
	.4byte	.LFB98
	.uleb128 .LFE98-.LFB98
	.byte	0x7
	.4byte	.LFB99
	.uleb128 .LFE99-.LFB99
	.byte	0x7
	.4byte	.LFB100
	.uleb128 .LFE100-.LFB100
	.byte	0x7
	.4byte	.LFB101
	.uleb128 .LFE101-.LFB101
	.byte	0x7
	.4byte	.LFB102
	.uleb128 .LFE102-.LFB102
	.byte	0x7
	.4byte	.LFB103
	.uleb128 .LFE103-.LFB103
	.byte	0x7
	.4byte	.LFB104
	.uleb128 .LFE104-.LFB104
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"sa_len"
.LASF47:
	.string	"fin_ms"
.LASF73:
	.string	"mbedtls_net_send"
.LASF48:
	.string	"lwip_close"
.LASF37:
	.string	"ai_addrlen"
.LASF64:
	.string	"mbedtls_timing_get_timer"
.LASF2:
	.string	"unsigned int"
.LASF12:
	.string	"size_t"
.LASF87:
	.string	"mbedtls_net_init"
.LASF94:
	.string	"lwip_freeaddrinfo"
.LASF88:
	.string	"mbedtls_hardware_poll"
.LASF52:
	.string	"lwip_select"
.LASF55:
	.string	"lwip_socket"
.LASF81:
	.string	"mbedtls_net_connect"
.LASF53:
	.string	"lwip_fcntl"
.LASF15:
	.string	"ssize_t"
.LASF96:
	.string	"net_would_block"
.LASF7:
	.string	"short int"
.LASF95:
	.string	"get_current_time_ms"
.LASF32:
	.string	"addrinfo"
.LASF75:
	.string	"mbedtls_net_recv_timeout"
.LASF17:
	.string	"uint8_t"
.LASF45:
	.string	"timer"
.LASF65:
	.string	"reset"
.LASF18:
	.string	"uint32_t"
.LASF70:
	.string	"shutdown"
.LASF46:
	.string	"int_ms"
.LASF35:
	.string	"ai_socktype"
.LASF39:
	.string	"ai_canonname"
.LASF90:
	.string	"olen"
.LASF41:
	.string	"mbedtls_net_context"
.LASF11:
	.string	"long long unsigned int"
.LASF13:
	.string	"_ssize_t"
.LASF58:
	.string	"memset"
.LASF9:
	.string	"long int"
.LASF49:
	.string	"lwip_shutdown"
.LASF56:
	.string	"printf"
.LASF74:
	.string	"__FUNCTION__"
.LASF85:
	.string	"hints"
.LASF84:
	.string	"proto"
.LASF66:
	.string	"mbedtls_timing_set_delay"
.LASF79:
	.string	"flags"
.LASF4:
	.string	"long double"
.LASF30:
	.string	"tv_sec"
.LASF21:
	.string	"sa_family_t"
.LASF6:
	.string	"unsigned char"
.LASF31:
	.string	"tv_usec"
.LASF5:
	.string	"signed char"
.LASF16:
	.string	"int32_t"
.LASF77:
	.string	"read_fds"
.LASF68:
	.string	"mbedtls_net_close"
.LASF25:
	.string	"socklen_t"
.LASF59:
	.string	"bl_timer_now_us"
.LASF40:
	.string	"ai_next"
.LASF50:
	.string	"lwip_read"
.LASF54:
	.string	"lwip_connect"
.LASF51:
	.string	"lwip_write"
.LASF42:
	.string	"mbedtls_timing_hr_time"
.LASF24:
	.string	"sa_data"
.LASF8:
	.string	"short unsigned int"
.LASF93:
	.string	"errno"
.LASF14:
	.string	"char"
.LASF63:
	.string	"mbedtls_timing_get_delay"
.LASF28:
	.string	"fd_bits"
.LASF78:
	.string	"mbedtls_net_set_nonblock"
.LASF57:
	.string	"lwip_getaddrinfo"
.LASF92:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF71:
	.string	"_Bool"
.LASF43:
	.string	"start_time"
.LASF62:
	.string	"data"
.LASF86:
	.string	"addr_list"
.LASF91:
	.string	"rand_buf"
.LASF83:
	.string	"port"
.LASF67:
	.string	"mbedtls_net_free"
.LASF10:
	.string	"long unsigned int"
.LASF61:
	.string	"elapsed_ms"
.LASF34:
	.string	"ai_family"
.LASF69:
	.string	"mbedtls_net_terminate"
.LASF29:
	.string	"timeval"
.LASF3:
	.string	"long long int"
.LASF33:
	.string	"ai_flags"
.LASF19:
	.string	"u8_t"
.LASF20:
	.string	"u32_t"
.LASF60:
	.string	"bl_rand"
.LASF27:
	.string	"fd_set"
.LASF23:
	.string	"sa_family"
.LASF89:
	.string	"output"
.LASF72:
	.string	"mbedtls_net_recv"
.LASF44:
	.string	"mbedtls_timing_delay_context"
.LASF80:
	.string	"mbedtls_net_set_block"
.LASF82:
	.string	"host"
.LASF38:
	.string	"ai_addr"
.LASF76:
	.string	"timeout"
.LASF26:
	.string	"sockaddr"
.LASF36:
	.string	"ai_protocol"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/bl602_port.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
