	.file	"ip4_addr.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/ipv4/ip4_addr.c"
	.globl	ip_addr_any
	.section	.srodata.ip_addr_any,"a"
	.align	2
	.type	ip_addr_any, @object
	.size	ip_addr_any, 4
ip_addr_any:
	.zero	4
	.globl	ip_addr_broadcast
	.section	.srodata.ip_addr_broadcast,"a"
	.align	2
	.type	ip_addr_broadcast, @object
	.size	ip_addr_broadcast, 4
ip_addr_broadcast:
	.word	-1
	.section	.text.ip4_addr_isbroadcast_u32,"ax",@progbits
	.align	1
	.globl	ip4_addr_isbroadcast_u32
	.type	ip4_addr_isbroadcast_u32, @function
ip4_addr_isbroadcast_u32:
.LFB4:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/ipv4/ip4_addr.c"
	.loc 1 59 1
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
	.loc 1 61 20
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 64 6
	lw	a4,-36(s0)
	li	a5,-1
	beq	a4,a5,.L2
	.loc 1 64 40 discriminator 1
	lw	a5,-36(s0)
	bne	a5,zero,.L3
.L2:
	.loc 1 66 12
	li	a5,1
	j	.L8
.L3:
	.loc 1 68 20
	lw	a5,-40(s0)
	lbu	a5,69(a5)
	.loc 1 68 28
	andi	a5,a5,2
	.loc 1 68 13
	bne	a5,zero,.L5
	.loc 1 71 12
	li	a5,0
	j	.L8
.L5:
	.loc 1 73 45
	lw	a5,-40(s0)
	addi	a5,a5,4
	.loc 1 73 67
	lw	a5,0(a5)
	.loc 1 73 13
	lw	a4,-36(s0)
	bne	a4,a5,.L6
	.loc 1 74 12
	li	a5,0
	j	.L8
.L6:
	.loc 1 76 25
	lw	a4,-20(s0)
	.loc 1 76 112
	lw	a5,-40(s0)
	addi	a5,a5,4
	.loc 1 76 134
	lw	a5,0(a5)
	.loc 1 76 86
	xor	a4,a4,a5
	.loc 1 76 56
	lw	a5,-40(s0)
	addi	a5,a5,8
	.loc 1 76 78
	lw	a5,0(a5)
	.loc 1 76 86
	and	a5,a4,a5
	.loc 1 76 13
	bne	a5,zero,.L7
	.loc 1 78 50
	lw	a5,-40(s0)
	addi	a5,a5,8
	.loc 1 78 72
	lw	a5,0(a5)
	.loc 1 78 26
	not	a4,a5
	.loc 1 78 24
	lw	a5,-36(s0)
	and	a4,a4,a5
	.loc 1 79 67
	lw	a5,-40(s0)
	addi	a5,a5,8
	.loc 1 79 89
	lw	a5,0(a5)
	.loc 1 79 41
	not	a5,a5
	.loc 1 78 14
	bne	a4,a5,.L7
	.loc 1 81 12
	li	a5,1
	j	.L8
.L7:
	.loc 1 83 12
	li	a5,0
.L8:
	.loc 1 85 1
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
.LFE4:
	.size	ip4_addr_isbroadcast_u32, .-ip4_addr_isbroadcast_u32
	.section	.text.ip4_addr_netmask_valid,"ax",@progbits
	.align	1
	.globl	ip4_addr_netmask_valid
	.type	ip4_addr_netmask_valid, @function
ip4_addr_netmask_valid:
.LFB5:
	.loc 1 94 1
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
	.loc 1 96 24
	lw	a0,-36(s0)
	call	lwip_htonl
	sw	a0,-24(s0)
	.loc 1 99 13
	li	a5,-2147483648
	sw	a5,-20(s0)
	.loc 1 99 3
	j	.L10
.L13:
	.loc 1 100 23
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	and	a5,a4,a5
	.loc 1 100 8
	beq	a5,zero,.L18
	.loc 1 99 43 discriminator 2
	lw	a5,-20(s0)
	srli	a5,a5,1
	sw	a5,-20(s0)
.L10:
	.loc 1 99 32 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L13
	j	.L14
.L18:
	.loc 1 101 7
	nop
	.loc 1 105 3
	j	.L14
.L17:
	.loc 1 106 23
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	and	a5,a4,a5
	.loc 1 106 8
	beq	a5,zero,.L15
	.loc 1 108 14
	li	a5,0
	j	.L16
.L15:
	.loc 1 105 26
	lw	a5,-20(s0)
	srli	a5,a5,1
	sw	a5,-20(s0)
.L14:
	.loc 1 105 15 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L17
	.loc 1 112 10
	li	a5,1
.L16:
	.loc 1 113 1
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
	.size	ip4_addr_netmask_valid, .-ip4_addr_netmask_valid
	.section	.text.ipaddr_addr,"ax",@progbits
	.align	1
	.globl	ipaddr_addr
	.type	ipaddr_addr, @function
ipaddr_addr:
.LFB6:
	.loc 1 124 1
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
	.loc 1 127 7
	addi	a5,s0,-20
	mv	a1,a5
	lw	a0,-36(s0)
	call	ip4addr_aton
	mv	a5,a0
	.loc 1 127 6 discriminator 1
	beq	a5,zero,.L20
	.loc 1 128 19
	lw	a5,-20(s0)
	j	.L22
.L20:
	.loc 1 130 10
	li	a5,-1
.L22:
	.loc 1 131 1
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
	.size	ipaddr_addr, .-ipaddr_addr
	.section	.text.ip4addr_aton,"ax",@progbits
	.align	1
	.globl	ip4addr_aton
	.type	ip4addr_aton, @function
ip4addr_aton:
.LFB7:
	.loc 1 146 1
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
	.loc 1 151 10
	addi	a5,s0,-44
	sw	a5,-28(s0)
	.loc 1 153 5
	lw	a5,-52(s0)
	lbu	a5,0(a5)
	sb	a5,-22(s0)
.L40:
	.loc 1 160 13
	lbu	a5,-22(s0)
	.loc 1 160 12
	addi	a4,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 160 12
	andi	a5,a5,4
	.loc 1 160 8
	bne	a5,zero,.L24
	.loc 1 161 14
	li	a5,0
	j	.L58
.L24:
	.loc 1 163 9
	sw	zero,-20(s0)
	.loc 1 164 10
	li	a5,10
	sb	a5,-21(s0)
	.loc 1 165 8
	lbu	a4,-22(s0)
	li	a5,48
	bne	a4,a5,.L35
	.loc 1 166 9
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
	lw	a5,-52(s0)
	lbu	a5,0(a5)
	sb	a5,-22(s0)
	.loc 1 167 10
	lbu	a4,-22(s0)
	li	a5,120
	beq	a4,a5,.L27
	.loc 1 167 20 discriminator 1
	lbu	a4,-22(s0)
	li	a5,88
	bne	a4,a5,.L28
.L27:
	.loc 1 168 14
	li	a5,16
	sb	a5,-21(s0)
	.loc 1 169 11
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
	lw	a5,-52(s0)
	lbu	a5,0(a5)
	sb	a5,-22(s0)
	j	.L35
.L28:
	.loc 1 171 14
	li	a5,8
	sb	a5,-21(s0)
.L35:
	.loc 1 175 14
	lbu	a5,-22(s0)
	.loc 1 175 13
	addi	a4,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 175 13
	andi	a5,a5,4
	.loc 1 175 10
	beq	a5,zero,.L29
	.loc 1 176 11
	lbu	a4,-21(s0)
	li	a5,8
	bne	a4,a5,.L30
	.loc 1 176 38 discriminator 1
	lbu	a5,-22(s0)
	addi	a5,a5,-48
	.loc 1 176 28 discriminator 1
	mv	a4,a5
	.loc 1 176 24 discriminator 1
	li	a5,7
	bgtu	a4,a5,.L59
.L30:
	.loc 1 178 20
	lbu	a4,-21(s0)
	lw	a5,-20(s0)
	mul	a4,a4,a5
	.loc 1 178 28
	lbu	a5,-22(s0)
	add	a5,a4,a5
	.loc 1 178 13
	addi	a5,a5,-48
	sw	a5,-20(s0)
	.loc 1 179 11
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
	lw	a5,-52(s0)
	lbu	a5,0(a5)
	sb	a5,-22(s0)
	j	.L35
.L29:
	.loc 1 180 17
	lbu	a4,-21(s0)
	li	a5,16
	bne	a4,a5,.L31
	.loc 1 180 35 discriminator 1
	lbu	a5,-22(s0)
	.loc 1 180 34 discriminator 1
	addi	a4,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 180 34 discriminator 1
	andi	a5,a5,68
	.loc 1 180 29 discriminator 1
	beq	a5,zero,.L31
	.loc 1 181 20
	lw	a5,-20(s0)
	slli	a4,a5,4
	.loc 1 181 38
	lbu	a5,-22(s0)
	addi	a3,a5,10
	.loc 1 181 49
	lbu	a5,-22(s0)
	.loc 1 181 48
	addi	a2,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a2,a5
	lbu	a5,0(a5)
	.loc 1 181 48
	andi	a2,a5,3
	.loc 1 181 67
	li	a5,2
	bne	a2,a5,.L33
	.loc 1 181 67 is_stmt 0 discriminator 1
	li	a5,97
	j	.L34
.L33:
	.loc 1 181 67 discriminator 2
	li	a5,65
.L34:
	.loc 1 181 43 is_stmt 1 discriminator 4
	sub	a5,a3,a5
	.loc 1 181 13 discriminator 4
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 182 11
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
	lw	a5,-52(s0)
	lbu	a5,0(a5)
	sb	a5,-22(s0)
	.loc 1 175 10
	j	.L35
.L59:
	.loc 1 177 11
	nop
.L31:
	.loc 1 187 8
	lbu	a4,-22(s0)
	li	a5,46
	bne	a4,a5,.L60
	.loc 1 194 23
	addi	a5,s0,-44
	addi	a5,a5,12
	.loc 1 194 10
	lw	a4,-28(s0)
	bltu	a4,a5,.L37
	.loc 1 195 16
	li	a5,0
	j	.L58
.L37:
	.loc 1 197 10
	lw	a5,-28(s0)
	addi	a4,a5,4
	sw	a4,-28(s0)
	.loc 1 197 13
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 198 9
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
	lw	a5,-52(s0)
	lbu	a5,0(a5)
	sb	a5,-22(s0)
	.loc 1 160 8
	j	.L40
.L60:
	.loc 1 200 7
	nop
	.loc 1 206 6
	lbu	a5,-22(s0)
	beq	a5,zero,.L41
	.loc 1 206 24 discriminator 1
	lbu	a5,-22(s0)
	.loc 1 206 23 discriminator 1
	addi	a4,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 206 23 discriminator 1
	andi	a5,a5,8
	.loc 1 206 17 discriminator 1
	bne	a5,zero,.L41
	.loc 1 207 12
	li	a5,0
	j	.L58
.L41:
	.loc 1 213 14
	addi	a5,s0,-44
	lw	a4,-28(s0)
	sub	a5,a4,a5
	srai	a5,a5,2
	.loc 1 213 22
	addi	a5,a5,1
	.loc 1 213 3
	li	a4,4
	beq	a5,a4,.L42
	li	a4,4
	bgt	a5,a4,.L61
	li	a4,3
	beq	a5,a4,.L44
	li	a4,3
	bgt	a5,a4,.L61
	li	a4,2
	beq	a5,a4,.L45
	li	a4,2
	bgt	a5,a4,.L61
	beq	a5,zero,.L46
	li	a4,1
	beq	a5,a4,.L62
	.loc 1 252 7
	j	.L61
.L46:
	.loc 1 216 14
	li	a5,0
	j	.L58
.L45:
	.loc 1 222 10
	lw	a4,-20(s0)
	li	a5,16777216
	bltu	a4,a5,.L49
	.loc 1 223 16
	li	a5,0
	j	.L58
.L49:
	.loc 1 225 16
	lw	a4,-44(s0)
	.loc 1 225 10
	li	a5,255
	bleu	a4,a5,.L50
	.loc 1 226 16
	li	a5,0
	j	.L58
.L50:
	.loc 1 228 19
	lw	a5,-44(s0)
	.loc 1 228 23
	slli	a5,a5,24
	.loc 1 228 11
	lw	a4,-20(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 229 7
	j	.L48
.L44:
	.loc 1 232 10
	lw	a4,-20(s0)
	li	a5,65536
	bltu	a4,a5,.L51
	.loc 1 233 16
	li	a5,0
	j	.L58
.L51:
	.loc 1 235 17
	lw	a4,-44(s0)
	.loc 1 235 10
	li	a5,255
	bgtu	a4,a5,.L52
	.loc 1 235 38 discriminator 1
	lw	a4,-40(s0)
	.loc 1 235 29 discriminator 1
	li	a5,255
	bleu	a4,a5,.L53
.L52:
	.loc 1 236 16
	li	a5,0
	j	.L58
.L53:
	.loc 1 238 20
	lw	a5,-44(s0)
	.loc 1 238 24
	slli	a4,a5,24
	.loc 1 238 39
	lw	a5,-40(s0)
	.loc 1 238 43
	slli	a5,a5,16
	.loc 1 238 31
	or	a5,a4,a5
	.loc 1 238 11
	lw	a4,-20(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 239 7
	j	.L48
.L42:
	.loc 1 242 10
	lw	a4,-20(s0)
	li	a5,255
	bleu	a4,a5,.L54
	.loc 1 243 16
	li	a5,0
	j	.L58
.L54:
	.loc 1 245 17
	lw	a4,-44(s0)
	.loc 1 245 10
	li	a5,255
	bgtu	a4,a5,.L55
	.loc 1 245 38 discriminator 1
	lw	a4,-40(s0)
	.loc 1 245 29 discriminator 1
	li	a5,255
	bgtu	a4,a5,.L55
	.loc 1 245 59 discriminator 2
	lw	a4,-36(s0)
	.loc 1 245 50 discriminator 2
	li	a5,255
	bleu	a4,a5,.L56
.L55:
	.loc 1 246 16
	li	a5,0
	j	.L58
.L56:
	.loc 1 248 20
	lw	a5,-44(s0)
	.loc 1 248 24
	slli	a4,a5,24
	.loc 1 248 39
	lw	a5,-40(s0)
	.loc 1 248 43
	slli	a5,a5,16
	.loc 1 248 31
	or	a4,a4,a5
	.loc 1 248 58
	lw	a5,-36(s0)
	.loc 1 248 62
	slli	a5,a5,8
	.loc 1 248 50
	or	a5,a4,a5
	.loc 1 248 11
	lw	a4,-20(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 249 7
	j	.L48
.L61:
	.loc 1 252 7
	nop
	j	.L48
.L62:
	.loc 1 219 7
	nop
.L48:
	.loc 1 254 6
	lw	a5,-56(s0)
	beq	a5,zero,.L57
	.loc 1 255 22
	lw	a0,-20(s0)
	call	lwip_htonl
	mv	a4,a0
	.loc 1 255 19 discriminator 1
	lw	a5,-56(s0)
	sw	a4,0(a5)
.L57:
	.loc 1 257 10
	li	a5,1
.L58:
	.loc 1 258 1
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
.LFE7:
	.size	ip4addr_aton, .-ip4addr_aton
	.section	.text.ip4addr_ntoa,"ax",@progbits
	.align	1
	.globl	ip4addr_ntoa
	.type	ip4addr_ntoa, @function
ip4addr_ntoa:
.LFB8:
	.loc 1 270 1
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
	.loc 1 272 10
	li	a2,16
	lui	a5,%hi(str.0)
	addi	a1,a5,%lo(str.0)
	lw	a0,-20(s0)
	call	ip4addr_ntoa_r
	mv	a5,a0
	.loc 1 273 1
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
	.size	ip4addr_ntoa, .-ip4addr_ntoa
	.section	.text.ip4addr_ntoa_r,"ax",@progbits
	.align	1
	.globl	ip4addr_ntoa_r
	.type	ip4addr_ntoa_r, @function
ip4addr_ntoa_r:
.LFB9:
	.loc 1 286 1
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
	.loc 1 294 7
	sw	zero,-32(s0)
	.loc 1 296 19
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 296 10
	sw	a5,-40(s0)
	.loc 1 298 6
	lw	a5,-56(s0)
	sw	a5,-20(s0)
	.loc 1 299 6
	addi	a5,s0,-40
	sw	a5,-24(s0)
	.loc 1 300 10
	sb	zero,-25(s0)
	.loc 1 300 3
	j	.L66
.L73:
	.loc 1 301 7
	sb	zero,-26(s0)
.L67:
	.loc 1 303 13
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	.loc 1 303 11
	li	a5,-858992640
	addi	a5,a5,-819
	mulhu	a5,a4,a5
	srli	a3,a5,3
	mv	a5,a3
	slli	a5,a5,2
	add	a5,a5,a3
	slli	a5,a5,1
	sub	a5,a4,a5
	sb	a5,-33(s0)
	.loc 1 304 7
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	.loc 1 304 11
	li	a5,-858992640
	addi	a5,a5,-819
	mulhu	a5,a4,a5
	srli	a5,a5,3
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,0(a5)
	.loc 1 305 12
	lbu	a5,-26(s0)
	addi	a4,a5,1
	sb	a4,-26(s0)
	.loc 1 305 18
	lbu	a4,-33(s0)
	addi	a4,a4,48
	andi	a4,a4,0xff
	.loc 1 305 16
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-28(a5)
	.loc 1 306 14 discriminator 1
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L67
	.loc 1 307 11
	j	.L68
.L71:
	.loc 1 308 14
	lw	a5,-32(s0)
	addi	a4,a5,1
	sw	a4,-32(s0)
	.loc 1 308 10
	lw	a4,-60(s0)
	bgt	a4,a5,.L69
	.loc 1 309 15
	li	a5,0
	j	.L74
.L69:
	.loc 1 311 18
	lbu	a4,-26(s0)
	.loc 1 311 10
	lw	a5,-20(s0)
	addi	a3,a5,1
	sw	a3,-20(s0)
	.loc 1 311 18
	addi	a4,a4,-16
	add	a4,a4,s0
	lbu	a4,-28(a4)
	.loc 1 311 13
	sb	a4,0(a5)
.L68:
	.loc 1 307 13
	lbu	a5,-26(s0)
	addi	a4,a5,-1
	sb	a4,-26(s0)
	.loc 1 307 12
	bne	a5,zero,.L71
	.loc 1 313 12
	lw	a5,-32(s0)
	addi	a4,a5,1
	sw	a4,-32(s0)
	.loc 1 313 8
	lw	a4,-60(s0)
	bgt	a4,a5,.L72
	.loc 1 314 13
	li	a5,0
	j	.L74
.L72:
	.loc 1 316 8
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 316 11
	li	a4,46
	sb	a4,0(a5)
	.loc 1 317 7
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 1 300 23 discriminator 2
	lbu	a5,-25(s0)
	addi	a5,a5,1
	sb	a5,-25(s0)
.L66:
	.loc 1 300 17 discriminator 1
	lbu	a4,-25(s0)
	li	a5,3
	bleu	a4,a5,.L73
	.loc 1 319 9
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sb	zero,0(a5)
	.loc 1 320 10
	lw	a5,-56(s0)
.L74:
	.loc 1 321 1
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
.LFE9:
	.size	ip4addr_ntoa_r, .-ip4addr_ntoa_r
	.section	.bss.str.0,"aw",@nobits
	.align	2
	.type	str.0, @object
	.size	str.0, 16
str.0:
	.zero	16
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/ctype.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/def.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x745
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x19
	.4byte	.LASF94
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
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x1b
	.byte	0x4
	.uleb128 0x3
	.4byte	0x7f
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xb
	.4byte	0x7f
	.uleb128 0x3
	.4byte	0x86
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x32
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x39
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x47
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x55
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x7d
	.byte	0x11
	.4byte	0x9c
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x7e
	.byte	0x10
	.4byte	0x90
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x7f
	.byte	0x12
	.4byte	0xa8
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x81
	.byte	0x12
	.4byte	0xb4
	.uleb128 0x8
	.4byte	0x86
	.4byte	0xfb
	.uleb128 0x1c
	.byte	0
	.uleb128 0xb
	.4byte	0xf0
	.uleb128 0x1d
	.4byte	.LASF23
	.byte	0x6
	.byte	0x46
	.byte	0x13
	.4byte	0xfb
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x4
	.byte	0x4
	.byte	0x33
	.4byte	0x126
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x4
	.byte	0x34
	.byte	0x9
	.4byte	0xe4
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x39
	.byte	0x19
	.4byte	0x10c
	.uleb128 0xb
	.4byte	0x126
	.uleb128 0x1e
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x126
	.byte	0x14
	.4byte	0x126
	.uleb128 0xb
	.4byte	0x137
	.uleb128 0x14
	.4byte	.LASF24
	.2byte	0x18e
	.4byte	0x144
	.uleb128 0x14
	.4byte	.LASF25
	.2byte	0x18f
	.4byte	0x144
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x7
	.byte	0x60
	.byte	0xe
	.4byte	0xcc
	.uleb128 0x13
	.4byte	.LASF28
	.byte	0x10
	.byte	0x8
	.byte	0xba
	.4byte	0x1de
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x8
	.byte	0xbc
	.byte	0x10
	.4byte	0x1de
	.byte	0
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x8
	.byte	0xbf
	.byte	0x9
	.4byte	0x78
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x8
	.byte	0xc8
	.byte	0x9
	.4byte	0xd8
	.byte	0x8
	.uleb128 0x15
	.string	"len"
	.byte	0xcb
	.byte	0x9
	.4byte	0xd8
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x8
	.byte	0xd0
	.byte	0x8
	.4byte	0xc0
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x8
	.byte	0xd3
	.byte	0x8
	.4byte	0xc0
	.byte	0xd
	.uleb128 0x15
	.string	"ref"
	.byte	0xda
	.byte	0x8
	.4byte	0xc0
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x8
	.byte	0xdd
	.byte	0x8
	.4byte	0xc0
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	0x16b
	.uleb128 0x1f
	.byte	0x7
	.byte	0x1
	.4byte	0x39
	.byte	0xa
	.byte	0x34
	.byte	0xe
	.4byte	0x252
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	0xc0
	.uleb128 0x16
	.4byte	.LASF56
	.4byte	0x39
	.byte	0x71
	.4byte	0x27e
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF57
	.4byte	0x39
	.byte	0x9f
	.4byte	0x299
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	0x29e
	.uleb128 0x20
	.4byte	.LASF60
	.byte	0x54
	.byte	0x9
	.2byte	0x10d
	.byte	0x8
	.4byte	0x3b0
	.uleb128 0x2
	.4byte	.LASF30
	.2byte	0x110
	.byte	0x11
	.4byte	0x299
	.byte	0
	.uleb128 0x2
	.4byte	.LASF61
	.2byte	0x115
	.byte	0xd
	.4byte	0x137
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF62
	.2byte	0x116
	.byte	0xd
	.4byte	0x137
	.byte	0x8
	.uleb128 0x10
	.string	"gw"
	.2byte	0x117
	.byte	0xd
	.4byte	0x137
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF63
	.2byte	0x129
	.byte	0x12
	.4byte	0x3b5
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF64
	.2byte	0x12f
	.byte	0x13
	.4byte	0x3da
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x134
	.byte	0x17
	.4byte	0x409
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF66
	.2byte	0x13f
	.byte	0x1c
	.4byte	0x42e
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF67
	.2byte	0x144
	.byte	0x1c
	.4byte	0x42e
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF68
	.2byte	0x14c
	.byte	0x9
	.4byte	0x78
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF69
	.2byte	0x14e
	.byte	0x9
	.4byte	0x474
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF70
	.2byte	0x152
	.byte	0xf
	.4byte	0x8b
	.byte	0x38
	.uleb128 0x10
	.string	"mtu"
	.2byte	0x158
	.byte	0x9
	.4byte	0xd8
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF71
	.2byte	0x15e
	.byte	0x8
	.4byte	0x484
	.byte	0x3e
	.uleb128 0x2
	.4byte	.LASF72
	.2byte	0x160
	.byte	0x8
	.4byte	0xc0
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF34
	.2byte	0x162
	.byte	0x8
	.4byte	0xc0
	.byte	0x45
	.uleb128 0x2
	.4byte	.LASF73
	.2byte	0x164
	.byte	0x8
	.4byte	0x494
	.byte	0x46
	.uleb128 0x10
	.string	"num"
	.2byte	0x167
	.byte	0x8
	.4byte	0xc0
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF74
	.2byte	0x17d
	.byte	0x1c
	.4byte	0x44a
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF75
	.2byte	0x185
	.byte	0xf
	.4byte	0x4a9
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.4byte	0x29e
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0x9
	.byte	0xb5
	.byte	0x11
	.4byte	0x3c1
	.uleb128 0x3
	.4byte	0x3c6
	.uleb128 0xd
	.4byte	0x15f
	.4byte	0x3da
	.uleb128 0x5
	.4byte	0x1de
	.uleb128 0x5
	.4byte	0x299
	.byte	0
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0x9
	.byte	0xc0
	.byte	0x11
	.4byte	0x3e6
	.uleb128 0x3
	.4byte	0x3eb
	.uleb128 0xd
	.4byte	0x15f
	.4byte	0x404
	.uleb128 0x5
	.4byte	0x299
	.uleb128 0x5
	.4byte	0x1de
	.uleb128 0x5
	.4byte	0x404
	.byte	0
	.uleb128 0x3
	.4byte	0x132
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0x9
	.byte	0xd7
	.byte	0x11
	.4byte	0x415
	.uleb128 0x3
	.4byte	0x41a
	.uleb128 0xd
	.4byte	0x15f
	.4byte	0x42e
	.uleb128 0x5
	.4byte	0x299
	.uleb128 0x5
	.4byte	0x1de
	.byte	0
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0x9
	.byte	0xd9
	.byte	0x10
	.4byte	0x43a
	.uleb128 0x3
	.4byte	0x43f
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x5
	.4byte	0x299
	.byte	0
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0x9
	.byte	0xdc
	.byte	0x11
	.4byte	0x456
	.uleb128 0x3
	.4byte	0x45b
	.uleb128 0xd
	.4byte	0x15f
	.4byte	0x474
	.uleb128 0x5
	.4byte	0x299
	.uleb128 0x5
	.4byte	0x404
	.uleb128 0x5
	.4byte	0x27e
	.byte	0
	.uleb128 0x8
	.4byte	0x78
	.4byte	0x484
	.uleb128 0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0xc0
	.4byte	0x494
	.uleb128 0xa
	.4byte	0x6a
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	0x7f
	.4byte	0x4a4
	.uleb128 0xa
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x22
	.string	"acd"
	.uleb128 0x3
	.4byte	0x4a4
	.uleb128 0x17
	.4byte	0x149
	.byte	0x2f
	.uleb128 0x5
	.byte	0x3
	.4byte	ip_addr_any
	.uleb128 0x17
	.4byte	0x154
	.byte	0x30
	.uleb128 0x5
	.byte	0x3
	.4byte	ip_addr_broadcast
	.uleb128 0x23
	.4byte	.LASF95
	.byte	0xb
	.byte	0x65
	.byte	0x7
	.4byte	0xe4
	.4byte	0x4dc
	.uleb128 0x5
	.4byte	0xe4
	.byte	0
	.uleb128 0x24
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x11d
	.byte	0x1
	.4byte	0x7a
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x599
	.uleb128 0x11
	.4byte	.LASF29
	.2byte	0x11d
	.byte	0x22
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.string	"buf"
	.byte	0x1
	.2byte	0x11d
	.byte	0x2e
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.4byte	.LASF81
	.2byte	0x11d
	.byte	0x37
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x11f
	.byte	0x9
	.4byte	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"inv"
	.2byte	0x120
	.byte	0x8
	.4byte	0x599
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"rp"
	.2byte	0x121
	.byte	0x9
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"ap"
	.2byte	0x122
	.byte	0x9
	.4byte	0x252
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"rem"
	.2byte	0x123
	.byte	0x8
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x7
	.string	"n"
	.2byte	0x124
	.byte	0x8
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x7
	.string	"i"
	.2byte	0x125
	.byte	0x8
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x7
	.string	"len"
	.2byte	0x126
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.4byte	0x7f
	.4byte	0x5a9
	.uleb128 0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0
	.uleb128 0x27
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x10d
	.byte	0x1
	.4byte	0x7a
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e6
	.uleb128 0x11
	.4byte	.LASF29
	.2byte	0x10d
	.byte	0x20
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"str"
	.2byte	0x10f
	.byte	0xf
	.4byte	0x5e6
	.uleb128 0x5
	.byte	0x3
	.4byte	str.0
	.byte	0
	.uleb128 0x8
	.4byte	0x7f
	.4byte	0x5f6
	.uleb128 0xa
	.4byte	0x6a
	.byte	0xf
	.byte	0
	.uleb128 0x12
	.4byte	.LASF85
	.byte	0x91
	.4byte	0x2b
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x66d
	.uleb128 0x18
	.string	"cp"
	.byte	0x91
	.byte	0x1a
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x91
	.byte	0x2a
	.4byte	0x66d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.string	"val"
	.byte	0x93
	.byte	0x9
	.4byte	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x94
	.byte	0x8
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0xf
	.string	"c"
	.byte	0x95
	.byte	0x8
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x96
	.byte	0x9
	.4byte	0x672
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.string	"pp"
	.byte	0x97
	.byte	0xa
	.4byte	0x682
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x3
	.4byte	0x126
	.uleb128 0x8
	.4byte	0xe4
	.4byte	0x682
	.uleb128 0xa
	.4byte	0x6a
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	0xe4
	.uleb128 0x12
	.4byte	.LASF88
	.byte	0x7b
	.4byte	0xe4
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6bb
	.uleb128 0x18
	.string	"cp"
	.byte	0x7b
	.byte	0x19
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.string	"val"
	.byte	0x7d
	.byte	0xe
	.4byte	0x126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF89
	.byte	0x5d
	.4byte	0xc0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6fe
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x5d
	.byte	0x1e
	.4byte	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x5f
	.byte	0x9
	.4byte	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x60
	.byte	0x9
	.4byte	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.4byte	.LASF92
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x743
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x3a
	.byte	0x20
	.4byte	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x3a
	.byte	0x3a
	.4byte	0x743
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x3c
	.byte	0xe
	.4byte	0x126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	0x3b0
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xe
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0x11
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
	.uleb128 0x13
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
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 24
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x16
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 17
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x21
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x27
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
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
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF41:
	.string	"MEMP_ALTCP_PCB"
.LASF81:
	.string	"buflen"
.LASF71:
	.string	"hwaddr"
.LASF13:
	.string	"int8_t"
.LASF75:
	.string	"acd_list"
.LASF53:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF68:
	.string	"state"
.LASF77:
	.string	"netif_output_fn"
.LASF93:
	.string	"ipaddr"
.LASF4:
	.string	"short int"
.LASF42:
	.string	"MEMP_NETBUF"
.LASF63:
	.string	"input"
.LASF32:
	.string	"tot_len"
.LASF25:
	.string	"ip_addr_broadcast"
.LASF92:
	.string	"ip4_addr_isbroadcast_u32"
.LASF66:
	.string	"status_callback"
.LASF72:
	.string	"hwaddr_len"
.LASF69:
	.string	"client_data"
.LASF58:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF74:
	.string	"igmp_mac_filter"
.LASF14:
	.string	"uint8_t"
.LASF39:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF70:
	.string	"hostname"
.LASF48:
	.string	"MEMP_NETDB"
.LASF23:
	.string	"_ctype_"
.LASF2:
	.string	"signed char"
.LASF65:
	.string	"linkoutput"
.LASF18:
	.string	"s8_t"
.LASF8:
	.string	"long long int"
.LASF9:
	.string	"long long unsigned int"
.LASF56:
	.string	"lwip_internal_netif_client_data_index"
.LASF78:
	.string	"netif_linkoutput_fn"
.LASF89:
	.string	"ip4_addr_netmask_valid"
.LASF6:
	.string	"long int"
.LASF57:
	.string	"netif_mac_filter_action"
.LASF22:
	.string	"ip_addr_t"
.LASF85:
	.string	"ip4addr_aton"
.LASF29:
	.string	"addr"
.LASF82:
	.string	"s_addr"
.LASF33:
	.string	"type_internal"
.LASF80:
	.string	"netif_igmp_mac_filter_fn"
.LASF73:
	.string	"name"
.LASF52:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF11:
	.string	"long double"
.LASF24:
	.string	"ip_addr_any"
.LASF76:
	.string	"netif_input_fn"
.LASF3:
	.string	"unsigned char"
.LASF79:
	.string	"netif_status_callback_fn"
.LASF51:
	.string	"MEMP_MAX"
.LASF35:
	.string	"if_idx"
.LASF43:
	.string	"MEMP_NETCONN"
.LASF34:
	.string	"flags"
.LASF54:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF16:
	.string	"uint32_t"
.LASF10:
	.string	"unsigned int"
.LASF15:
	.string	"uint16_t"
.LASF95:
	.string	"lwip_htonl"
.LASF46:
	.string	"MEMP_IGMP_GROUP"
.LASF59:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF5:
	.string	"short unsigned int"
.LASF67:
	.string	"link_callback"
.LASF26:
	.string	"err_t"
.LASF12:
	.string	"char"
.LASF44:
	.string	"MEMP_TCPIP_MSG_API"
.LASF94:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF87:
	.string	"parts"
.LASF84:
	.string	"ip4addr_ntoa"
.LASF27:
	.string	"ip4_addr"
.LASF49:
	.string	"MEMP_PBUF"
.LASF47:
	.string	"MEMP_SYS_TIMEOUT"
.LASF7:
	.string	"long unsigned int"
.LASF36:
	.string	"MEMP_RAW_PCB"
.LASF21:
	.string	"ip4_addr_t"
.LASF60:
	.string	"netif"
.LASF55:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF90:
	.string	"mask"
.LASF62:
	.string	"netmask"
.LASF20:
	.string	"u32_t"
.LASF88:
	.string	"ipaddr_addr"
.LASF19:
	.string	"u16_t"
.LASF50:
	.string	"MEMP_PBUF_POOL"
.LASF40:
	.string	"MEMP_TCP_SEG"
.LASF83:
	.string	"ip4addr_ntoa_r"
.LASF45:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF64:
	.string	"output"
.LASF38:
	.string	"MEMP_TCP_PCB"
.LASF37:
	.string	"MEMP_UDP_PCB"
.LASF17:
	.string	"u8_t"
.LASF86:
	.string	"base"
.LASF61:
	.string	"ip_addr"
.LASF91:
	.string	"nm_hostorder"
.LASF31:
	.string	"payload"
.LASF30:
	.string	"next"
.LASF28:
	.string	"pbuf"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/core/ipv4/ip4_addr.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
