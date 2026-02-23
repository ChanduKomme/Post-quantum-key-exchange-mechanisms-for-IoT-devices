	.file	"dhcp_server_raw.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip_dhcpd" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip_dhcpd/dhcp_server_raw.c"
	.section	.sbss.lw_dhcp_server,"aw",@nobits
	.align	2
	.type	lw_dhcp_server, @object
	.size	lw_dhcp_server, 4
lw_dhcp_server:
	.zero	4
	.section	.text.dhcp_client_find_by_mac,"ax",@progbits
	.align	1
	.type	dhcp_client_find_by_mac, @function
dhcp_client_find_by_mac:
.LFB6:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip_dhcpd/dhcp_server_raw.c"
	.loc 1 112 1
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
	.loc 1 115 15
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 115 5
	j	.L2
.L5:
	.loc 1 117 24
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 117 13
	lbu	a4,-41(s0)
	mv	a2,a4
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 1 117 12 discriminator 1
	bne	a5,zero,.L3
	.loc 1 119 20
	lw	a5,-20(s0)
	j	.L4
.L3:
	.loc 1 115 58 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L2:
	.loc 1 115 45 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L5
	.loc 1 123 11
	li	a5,0
.L4:
	.loc 1 124 1
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
	.size	dhcp_client_find_by_mac, .-dhcp_client_find_by_mac
	.section	.text.dhcp_client_find_by_ip,"ax",@progbits
	.align	1
	.type	dhcp_client_find_by_ip, @function
dhcp_client_find_by_ip:
.LFB7:
	.loc 1 136 1
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
	.loc 1 142 5
	addi	a5,s0,-28
	li	a2,4
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 143 22
	lw	a5,-28(s0)
	sw	a5,-24(s0)
	.loc 1 144 15
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 144 5
	j	.L7
.L10:
	.loc 1 146 29
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 1 146 48
	lw	a5,-24(s0)
	.loc 1 146 12
	bne	a4,a5,.L8
	.loc 1 148 20
	lw	a5,-20(s0)
	j	.L11
.L8:
	.loc 1 144 58 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L7:
	.loc 1 144 45 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L10
	.loc 1 152 11
	li	a5,0
.L11:
	.loc 1 153 1
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
.LFE7:
	.size	dhcp_client_find_by_ip, .-dhcp_client_find_by_ip
	.section	.rodata
	.align	2
.LC0:
	.string	"IP Found, but MAC address is NOT the same\r\n"
	.section	.text.dhcp_client_find,"ax",@progbits
	.align	1
	.type	dhcp_client_find, @function
dhcp_client_find:
.LFB8:
	.loc 1 166 1
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
	mv	a5,a3
	sh	a5,-46(s0)
	.loc 1 171 51
	lw	a5,-40(s0)
	addi	a4,a5,28
	.loc 1 171 12
	lw	a5,-40(s0)
	lbu	a5,2(a5)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	dhcp_client_find_by_mac
	sw	a0,-20(s0)
	.loc 1 172 8
	lw	a5,-20(s0)
	beq	a5,zero,.L13
	.loc 1 174 16
	lw	a5,-20(s0)
	j	.L14
.L13:
	.loc 1 177 11
	lhu	a5,-46(s0)
	li	a2,50
	mv	a1,a5
	lw	a0,-44(s0)
	call	dhcp_server_option_find
	sw	a0,-24(s0)
	.loc 1 178 8
	lw	a5,-24(s0)
	beq	a5,zero,.L15
	.loc 1 180 51
	lw	a5,-24(s0)
	addi	a5,a5,2
	.loc 1 180 16
	mv	a1,a5
	lw	a0,-36(s0)
	call	dhcp_client_find_by_ip
	sw	a0,-20(s0)
	.loc 1 181 12
	lw	a5,-20(s0)
	beq	a5,zero,.L15
	.loc 1 183 33
	lw	a5,-20(s0)
	addi	a4,a5,4
	.loc 1 183 46
	lw	a5,-40(s0)
	addi	a3,a5,28
	.loc 1 183 59
	lw	a5,-40(s0)
	lbu	a5,2(a5)
	.loc 1 183 22
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 1 183 16 discriminator 1
	bne	a5,zero,.L16
	.loc 1 184 24
	lw	a5,-20(s0)
	j	.L14
.L16:
	.loc 1 186 17
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	puts
.L15:
	.loc 1 191 11
	li	a5,0
.L14:
	.loc 1 192 1
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
.LFE8:
	.size	dhcp_client_find, .-dhcp_client_find
	.section	.text.dhcp_client_alloc,"ax",@progbits
	.align	1
	.type	dhcp_client_alloc, @function
dhcp_client_alloc:
.LFB9:
	.loc 1 205 1
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
	mv	a5,a3
	sh	a5,-46(s0)
	.loc 1 210 51
	lw	a5,-40(s0)
	addi	a4,a5,28
	.loc 1 210 12
	lw	a5,-40(s0)
	lbu	a5,2(a5)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	dhcp_client_find_by_mac
	sw	a0,-24(s0)
	.loc 1 211 8
	lw	a5,-24(s0)
	beq	a5,zero,.L18
	.loc 1 213 16
	lw	a5,-24(s0)
	j	.L19
.L18:
	.loc 1 216 11
	lhu	a5,-46(s0)
	li	a2,50
	mv	a1,a5
	lw	a0,-44(s0)
	call	dhcp_server_option_find
	sw	a0,-28(s0)
	.loc 1 217 8
	lw	a5,-28(s0)
	bne	a5,zero,.L20
.L26:
	.loc 1 226 1
	nop
.L21:
	j	.L22
.L20:
	.loc 1 219 51
	lw	a5,-28(s0)
	addi	a5,a5,2
	.loc 1 219 16
	mv	a1,a5
	lw	a0,-36(s0)
	call	dhcp_client_find_by_ip
	sw	a0,-24(s0)
	.loc 1 220 12
	lw	a5,-24(s0)
	beq	a5,zero,.L26
	.loc 1 222 20
	lw	a5,-24(s0)
	j	.L19
.L22:
	.loc 1 227 57
	lw	a5,-36(s0)
	addi	a5,a5,24
	.loc 1 227 12
	mv	a1,a5
	lw	a0,-36(s0)
	call	dhcp_client_find_by_ip
	sw	a0,-24(s0)
	.loc 1 228 8
	lw	a5,-24(s0)
	beq	a5,zero,.L23
	.loc 1 230 19
	lw	a5,-36(s0)
	lw	a5,24(a5)
	mv	a0,a5
	call	lwip_htonl
	mv	a5,a0
	.loc 1 230 16 discriminator 1
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 231 22
	lw	a5,-36(s0)
	lw	a5,20(a5)
	mv	a0,a5
	call	lwip_htonl
	mv	a4,a0
	.loc 1 231 12 discriminator 1
	lw	a5,-20(s0)
	bleu	a5,a4,.L24
	.loc 1 233 22
	lw	a5,-36(s0)
	lw	a5,16(a5)
	mv	a0,a5
	call	lwip_htonl
	sw	a0,-20(s0)
.L24:
	.loc 1 235 36
	lw	a0,-20(s0)
	call	lwip_htonl
	mv	a4,a0
	.loc 1 235 34 discriminator 1
	lw	a5,-36(s0)
	sw	a4,24(a5)
	.loc 1 236 9
	j	.L22
.L23:
	.loc 1 238 39
	li	a0,20
	call	mem_malloc
	sw	a0,-24(s0)
	.loc 1 239 8
	lw	a5,-24(s0)
	bne	a5,zero,.L25
	.loc 1 241 15
	li	a5,0
	j	.L19
.L25:
	.loc 1 243 16
	lw	a5,-24(s0)
	addi	a4,a5,4
	.loc 1 243 28
	lw	a5,-40(s0)
	addi	a3,a5,28
	.loc 1 243 40
	lw	a5,-40(s0)
	lbu	a5,2(a5)
	.loc 1 243 5
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcpy
	.loc 1 244 18
	lw	a5,-24(s0)
	lw	a4,-36(s0)
	lw	a4,24(a4)
	sw	a4,12(a5)
	.loc 1 246 28
	lw	a5,-36(s0)
	lw	a4,12(a5)
	.loc 1 246 16
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 1 247 27
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,12(a5)
	.loc 1 249 12
	lw	a5,-24(s0)
.L19:
	.loc 1 250 1
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
	.size	dhcp_client_alloc, .-dhcp_client_alloc
	.section	.text.dhcp_server_option_find,"ax",@progbits
	.align	1
	.type	dhcp_server_option_find, @function
dhcp_server_option_find:
.LFB10:
	.loc 1 262 1
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
	mv	a4,a2
	sh	a5,-38(s0)
	mv	a5,a4
	sb	a5,-39(s0)
	.loc 1 263 21
	lhu	a5,-38(s0)
	.loc 1 263 11
	lw	a4,-36(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 264 11
	j	.L28
.L32:
	.loc 1 266 13
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 266 12
	lbu	a4,-39(s0)
	bne	a4,a5,.L29
	.loc 1 268 20
	lw	a5,-36(s0)
	j	.L30
.L29:
	.loc 1 270 20
	lw	a5,-36(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 270 13
	addi	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
.L28:
	.loc 1 264 24
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	bgeu	a4,a5,.L31
	.loc 1 264 28 discriminator 1
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	.loc 1 264 24 discriminator 1
	li	a5,255
	bne	a4,a5,.L32
.L31:
	.loc 1 272 11
	li	a5,0
.L30:
	.loc 1 273 1
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
.LFE10:
	.size	dhcp_server_option_find, .-dhcp_server_option_find
	.section	.text.dhcp_server_recv,"ax",@progbits
	.align	1
	.type	dhcp_server_recv, @function
dhcp_server_recv:
.LFB11:
	.loc 1 280 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	mv	a5,a4
	sh	a5,-82(s0)
	.loc 1 281 25
	lw	a5,-68(s0)
	sw	a5,-28(s0)
	.loc 1 289 15
	lw	a5,-80(s0)
	lw	a5,0(a5)
	sw	a5,-56(s0)
	.loc 1 298 10
	lw	a5,-76(s0)
	lhu	a4,10(a5)
	.loc 1 298 8
	li	a5,43
	bgtu	a4,a5,.L34
	.loc 1 301 9
	lw	a0,-76(s0)
	call	pbuf_free
	.loc 1 302 9
	j	.L33
.L34:
	.loc 1 305 9
	li	a2,640
	li	a1,1500
	li	a0,182
	call	pbuf_alloc
	sw	a0,-32(s0)
	.loc 1 306 8
	lw	a5,-32(s0)
	bne	a5,zero,.L36
	.loc 1 309 9
	lw	a0,-76(s0)
	call	pbuf_free
	.loc 1 310 9
	j	.L33
.L36:
	.loc 1 312 10
	lw	a5,-32(s0)
	lhu	a4,8(a5)
	.loc 1 312 23
	lw	a5,-76(s0)
	lhu	a5,8(a5)
	.loc 1 312 8
	bgeu	a4,a5,.L37
	.loc 1 315 9
	lw	a0,-76(s0)
	call	pbuf_free
	.loc 1 316 9
	j	.L33
.L37:
	.loc 1 319 5
	lw	a1,-76(s0)
	lw	a0,-32(s0)
	call	pbuf_copy
	.loc 1 320 5
	lw	a0,-76(s0)
	call	pbuf_free
	.loc 1 322 9
	lw	a5,-32(s0)
	lw	a5,4(a5)
	sw	a5,-36(s0)
	.loc 1 323 12
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	.loc 1 323 8
	li	a5,1
	bne	a4,a5,.L57
	.loc 1 329 12
	lw	a5,-36(s0)
	lbu	a4,236(a5)
	lbu	a3,237(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,238(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,239(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	mv	a4,a5
	.loc 1 329 8
	li	a5,1666416640
	addi	a5,a5,611
	bne	a4,a5,.L58
	.loc 1 335 12
	lw	a5,-36(s0)
	lbu	a4,2(a5)
	.loc 1 335 8
	li	a5,6
	bgtu	a4,a5,.L59
	.loc 1 340 13
	lw	a5,-36(s0)
	addi	a5,a5,240
	sw	a5,-40(s0)
	.loc 1 341 15
	lw	a5,-32(s0)
	lhu	a5,8(a5)
	.loc 1 341 12
	addi	a5,a5,-240
	sh	a5,-42(s0)
	.loc 1 342 11
	lhu	a5,-42(s0)
	li	a2,53
	mv	a1,a5
	lw	a0,-40(s0)
	call	dhcp_server_option_find
	sw	a0,-48(s0)
	.loc 1 343 8
	lw	a5,-48(s0)
	beq	a5,zero,.L60
	.loc 1 345 18
	lw	a5,-48(s0)
	lbu	a5,2(a5)
	sb	a5,-49(s0)
	.loc 1 346 12
	lbu	a4,-49(s0)
	li	a5,1
	bne	a4,a5,.L42
	.loc 1 348 20
	lhu	a5,-42(s0)
	mv	a3,a5
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lw	a0,-28(s0)
	call	dhcp_client_alloc
	sw	a0,-20(s0)
	.loc 1 349 16
	lw	a5,-20(s0)
	beq	a5,zero,.L61
	.loc 1 353 29
	lw	a5,-20(s0)
	li	a4,-2142175232
	addi	a4,a4,256
	sw	a4,16(a5)
	.loc 1 355 21
	lw	a5,-36(s0)
	li	a4,2
	sb	a4,0(a5)
	.loc 1 356 23
	lw	a5,-36(s0)
	sb	zero,3(a5)
	.loc 1 357 23
	lw	a5,-36(s0)
	lbu	a4,8(a5)
	andi	a4,a4,0
	sb	a4,8(a5)
	lbu	a4,9(a5)
	andi	a4,a4,0
	sb	a4,9(a5)
	.loc 1 358 20
	lw	a5,-36(s0)
	addi	a4,a5,20
	.loc 1 358 46
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 1 358 33
	addi	a5,a5,4
	.loc 1 358 13
	li	a2,4
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 1 359 27
	lw	a5,-36(s0)
	sb	zero,44(a5)
	.loc 1 360 26
	lw	a5,-36(s0)
	sb	zero,108(a5)
	.loc 1 361 25
	lw	a5,-36(s0)
	lbu	a4,236(a5)
	andi	a4,a4,0
	ori	a4,a4,99
	sb	a4,236(a5)
	lbu	a4,237(a5)
	andi	a4,a4,0
	ori	a4,a4,-126
	sb	a4,237(a5)
	lbu	a4,238(a5)
	andi	a4,a4,0
	ori	a4,a4,83
	sb	a4,238(a5)
	lbu	a4,239(a5)
	andi	a4,a4,0
	ori	a4,a4,99
	sb	a4,239(a5)
	.loc 1 362 20
	lw	a5,-36(s0)
	addi	a4,a5,16
	.loc 1 362 33
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 362 13
	li	a2,4
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 1 364 21
	lw	a5,-36(s0)
	addi	a5,a5,240
	sw	a5,-40(s0)
	.loc 1 366 21
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 366 24
	li	a4,53
	sb	a4,0(a5)
	.loc 1 367 21
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 367 24
	li	a4,1
	sb	a4,0(a5)
	.loc 1 368 21
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 368 24
	li	a4,2
	sb	a4,0(a5)
	.loc 1 371 21
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 371 24
	li	a4,54
	sb	a4,0(a5)
	.loc 1 372 21
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 372 24
	li	a4,4
	sb	a4,0(a5)
	.loc 1 373 41
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 1 373 28
	addi	a5,a5,4
	.loc 1 373 13
	li	a2,4
	mv	a1,a5
	lw	a0,-40(s0)
	call	memcpy
	.loc 1 374 21
	lw	a5,-40(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
	.loc 1 377 21
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 377 24
	li	a4,51
	sb	a4,0(a5)
	.loc 1 378 21
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 378 24
	li	a4,4
	sb	a4,0(a5)
	.loc 1 379 17
	li	a5,86016
	addi	a5,a5,384
	sw	a5,-60(s0)
	.loc 1 380 13
	addi	a5,s0,-60
	li	a2,4
	mv	a1,a5
	lw	a0,-40(s0)
	call	memcpy
	.loc 1 381 21
	lw	a5,-40(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
	.loc 1 384 21
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 384 24
	li	a4,1
	sb	a4,0(a5)
	.loc 1 385 21
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 385 24
	li	a4,4
	sb	a4,0(a5)
	.loc 1 386 42
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 1 386 28
	addi	a5,a5,8
	.loc 1 386 13
	li	a2,4
	mv	a1,a5
	lw	a0,-40(s0)
	call	memcpy
	.loc 1 387 21
	lw	a5,-40(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
	.loc 1 389 21
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 389 24
	li	a4,6
	sb	a4,0(a5)
	.loc 1 390 21
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 390 24
	li	a4,4
	sb	a4,0(a5)
	.loc 1 399 41
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 1 399 28
	addi	a5,a5,4
	.loc 1 399 13
	li	a2,4
	mv	a1,a5
	lw	a0,-40(s0)
	call	memcpy
	.loc 1 401 21
	lw	a5,-40(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
	.loc 1 403 21
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 403 24
	li	a4,3
	sb	a4,0(a5)
	.loc 1 404 21
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 404 24
	li	a4,4
	sb	a4,0(a5)
	.loc 1 405 42
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 1 405 28
	addi	a5,a5,4
	.loc 1 405 13
	li	a2,4
	mv	a1,a5
	lw	a0,-40(s0)
	call	memcpy
	.loc 1 406 21
	lw	a5,-40(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
	.loc 1 409 21
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 409 24
	li	a4,-1
	sb	a4,0(a5)
	.loc 1 411 22
	lw	a4,-40(s0)
	.loc 1 411 39
	lw	a5,-36(s0)
	.loc 1 411 37
	sub	a5,a4,a5
	.loc 1 411 20
	sh	a5,-42(s0)
	.loc 1 412 27
	lw	a5,-32(s0)
	lhu	a5,8(a5)
	.loc 1 412 16
	lhu	a4,-42(s0)
	bgeu	a4,a5,.L44
	.loc 1 414 17
	lhu	a5,-42(s0)
	mv	a1,a5
	lw	a0,-32(s0)
	call	pbuf_realloc
.L44:
	.loc 1 417 27
	li	a5,-1
	sw	a5,-56(s0)
	.loc 1 418 13
	lw	a5,-28(s0)
	lw	a4,4(a5)
	lhu	a3,-82(s0)
	addi	a5,s0,-56
	mv	a2,a5
	lw	a1,-32(s0)
	lw	a0,-72(s0)
	call	udp_sendto_if
	j	.L39
.L42:
	.loc 1 424 20
	lbu	a4,-49(s0)
	li	a5,3
	bne	a4,a5,.L45
	.loc 1 426 28
	lhu	a5,-42(s0)
	mv	a3,a5
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lw	a0,-28(s0)
	call	dhcp_client_find
	sw	a0,-20(s0)
	.loc 1 427 24
	lw	a5,-20(s0)
	beq	a5,zero,.L46
	.loc 1 430 41
	lw	a5,-20(s0)
	li	a4,-2142175232
	addi	a4,a4,256
	sw	a4,16(a5)
	.loc 1 432 33
	lw	a5,-36(s0)
	li	a4,2
	sb	a4,0(a5)
	.loc 1 433 35
	lw	a5,-36(s0)
	sb	zero,3(a5)
	.loc 1 434 35
	lw	a5,-36(s0)
	lbu	a4,8(a5)
	andi	a4,a4,0
	sb	a4,8(a5)
	lbu	a4,9(a5)
	andi	a4,a4,0
	sb	a4,9(a5)
	.loc 1 435 32
	lw	a5,-36(s0)
	addi	a4,a5,20
	.loc 1 435 58
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 1 435 45
	addi	a5,a5,4
	.loc 1 435 25
	li	a2,4
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 1 436 39
	lw	a5,-36(s0)
	sb	zero,44(a5)
	.loc 1 437 38
	lw	a5,-36(s0)
	sb	zero,108(a5)
	.loc 1 438 37
	lw	a5,-36(s0)
	lbu	a4,236(a5)
	andi	a4,a4,0
	ori	a4,a4,99
	sb	a4,236(a5)
	lbu	a4,237(a5)
	andi	a4,a4,0
	ori	a4,a4,-126
	sb	a4,237(a5)
	lbu	a4,238(a5)
	andi	a4,a4,0
	ori	a4,a4,83
	sb	a4,238(a5)
	lbu	a4,239(a5)
	andi	a4,a4,0
	ori	a4,a4,99
	sb	a4,239(a5)
	.loc 1 439 32
	lw	a5,-36(s0)
	addi	a4,a5,16
	.loc 1 439 45
	lw	a5,-20(s0)
	addi	a5,a5,12
	.loc 1 439 25
	li	a2,4
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 1 440 33
	lw	a5,-36(s0)
	addi	a5,a5,240
	sw	a5,-40(s0)
	.loc 1 443 33
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 443 36
	li	a4,53
	sb	a4,0(a5)
	.loc 1 444 33
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 444 36
	li	a4,1
	sb	a4,0(a5)
	.loc 1 445 33
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 445 36
	li	a4,5
	sb	a4,0(a5)
	.loc 1 448 33
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 448 36
	li	a4,54
	sb	a4,0(a5)
	.loc 1 449 33
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 449 36
	li	a4,4
	sb	a4,0(a5)
	.loc 1 450 53
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 1 450 40
	addi	a5,a5,4
	.loc 1 450 25
	li	a2,4
	mv	a1,a5
	lw	a0,-40(s0)
	call	memcpy
	.loc 1 451 33
	lw	a5,-40(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
	.loc 1 454 33
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 454 36
	li	a4,51
	sb	a4,0(a5)
	.loc 1 455 33
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 455 36
	li	a4,4
	sb	a4,0(a5)
	.loc 1 456 29
	li	a5,86016
	addi	a5,a5,384
	sw	a5,-60(s0)
	.loc 1 457 25
	addi	a5,s0,-60
	li	a2,4
	mv	a1,a5
	lw	a0,-40(s0)
	call	memcpy
	.loc 1 458 33
	lw	a5,-40(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
	.loc 1 461 33
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 461 36
	li	a4,1
	sb	a4,0(a5)
	.loc 1 462 33
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 462 36
	li	a4,4
	sb	a4,0(a5)
	.loc 1 463 54
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 1 463 40
	addi	a5,a5,8
	.loc 1 463 25
	li	a2,4
	mv	a1,a5
	lw	a0,-40(s0)
	call	memcpy
	.loc 1 464 33
	lw	a5,-40(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
	.loc 1 466 33
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 466 36
	li	a4,6
	sb	a4,0(a5)
	.loc 1 467 33
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 467 36
	li	a4,4
	sb	a4,0(a5)
	.loc 1 476 53
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 1 476 40
	addi	a5,a5,4
	.loc 1 476 25
	li	a2,4
	mv	a1,a5
	lw	a0,-40(s0)
	call	memcpy
	.loc 1 478 33
	lw	a5,-40(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
	.loc 1 480 33
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 480 36
	li	a4,3
	sb	a4,0(a5)
	.loc 1 481 33
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 481 36
	li	a4,4
	sb	a4,0(a5)
	.loc 1 482 54
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 1 482 40
	addi	a5,a5,4
	.loc 1 482 25
	li	a2,4
	mv	a1,a5
	lw	a0,-40(s0)
	call	memcpy
	.loc 1 483 33
	lw	a5,-40(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
	.loc 1 486 33
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 486 36
	li	a4,-1
	sb	a4,0(a5)
	.loc 1 488 34
	lw	a4,-40(s0)
	.loc 1 488 51
	lw	a5,-36(s0)
	.loc 1 488 49
	sub	a5,a4,a5
	.loc 1 488 32
	sh	a5,-42(s0)
	.loc 1 489 39
	lw	a5,-32(s0)
	lhu	a5,8(a5)
	.loc 1 489 28
	lhu	a4,-42(s0)
	bgeu	a4,a5,.L47
	.loc 1 491 29
	lhu	a5,-42(s0)
	mv	a1,a5
	lw	a0,-32(s0)
	call	pbuf_realloc
.L47:
	.loc 1 494 39
	li	a5,-1
	sw	a5,-56(s0)
	.loc 1 495 25
	lw	a5,-28(s0)
	lw	a4,4(a5)
	lhu	a3,-82(s0)
	addi	a5,s0,-56
	mv	a2,a5
	lw	a1,-32(s0)
	lw	a0,-72(s0)
	call	udp_sendto_if
	j	.L39
.L46:
	.loc 1 501 33
	lw	a5,-36(s0)
	li	a4,2
	sb	a4,0(a5)
	.loc 1 502 35
	lw	a5,-36(s0)
	sb	zero,3(a5)
	.loc 1 503 35
	lw	a5,-36(s0)
	lbu	a4,8(a5)
	andi	a4,a4,0
	sb	a4,8(a5)
	lbu	a4,9(a5)
	andi	a4,a4,0
	sb	a4,9(a5)
	.loc 1 504 32
	lw	a5,-36(s0)
	addi	a4,a5,20
	.loc 1 504 58
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 1 504 45
	addi	a5,a5,4
	.loc 1 504 25
	li	a2,4
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 1 505 39
	lw	a5,-36(s0)
	sb	zero,44(a5)
	.loc 1 506 38
	lw	a5,-36(s0)
	sb	zero,108(a5)
	.loc 1 507 37
	lw	a5,-36(s0)
	lbu	a4,236(a5)
	andi	a4,a4,0
	ori	a4,a4,99
	sb	a4,236(a5)
	lbu	a4,237(a5)
	andi	a4,a4,0
	ori	a4,a4,-126
	sb	a4,237(a5)
	lbu	a4,238(a5)
	andi	a4,a4,0
	ori	a4,a4,83
	sb	a4,238(a5)
	lbu	a4,239(a5)
	andi	a4,a4,0
	ori	a4,a4,99
	sb	a4,239(a5)
	.loc 1 508 32
	lw	a5,-36(s0)
	addi	a5,a5,16
	.loc 1 508 25
	li	a2,4
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 509 33
	lw	a5,-36(s0)
	addi	a5,a5,240
	sw	a5,-40(s0)
	.loc 1 512 33
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 512 36
	li	a4,53
	sb	a4,0(a5)
	.loc 1 513 33
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 513 36
	li	a4,1
	sb	a4,0(a5)
	.loc 1 514 33
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 514 36
	li	a4,6
	sb	a4,0(a5)
	.loc 1 517 33
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 517 36
	li	a4,54
	sb	a4,0(a5)
	.loc 1 518 33
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 518 36
	li	a4,4
	sb	a4,0(a5)
	.loc 1 519 53
	lw	a5,-28(s0)
	lw	a5,4(a5)
	.loc 1 519 40
	addi	a5,a5,4
	.loc 1 519 25
	li	a2,4
	mv	a1,a5
	lw	a0,-40(s0)
	call	memcpy
	.loc 1 520 33
	lw	a5,-40(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
	.loc 1 523 33
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 523 36
	li	a4,-1
	sb	a4,0(a5)
	.loc 1 524 34
	lw	a4,-40(s0)
	.loc 1 524 51
	lw	a5,-36(s0)
	.loc 1 524 49
	sub	a5,a4,a5
	.loc 1 524 32
	sh	a5,-42(s0)
	.loc 1 525 39
	lw	a5,-32(s0)
	lhu	a5,8(a5)
	.loc 1 525 28
	lhu	a4,-42(s0)
	bgeu	a4,a5,.L48
	.loc 1 527 29
	lhu	a5,-42(s0)
	mv	a1,a5
	lw	a0,-32(s0)
	call	pbuf_realloc
.L48:
	.loc 1 530 39
	li	a5,-1
	sw	a5,-56(s0)
	.loc 1 531 25
	lw	a5,-28(s0)
	lw	a4,4(a5)
	lhu	a3,-82(s0)
	addi	a5,s0,-56
	mv	a2,a5
	lw	a1,-32(s0)
	lw	a0,-72(s0)
	call	udp_sendto_if
	j	.L39
.L45:
	.loc 1 534 25
	lbu	a4,-49(s0)
	li	a5,7
	bne	a4,a5,.L39
.LBB2:
	.loc 1 536 46
	sw	zero,-24(s0)
	.loc 1 538 31
	lw	a5,-28(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 1 538 21
	j	.L50
.L55:
	.loc 1 540 40
	lw	a5,-20(s0)
	addi	a4,a5,4
	.loc 1 540 53
	lw	a5,-36(s0)
	addi	a3,a5,28
	.loc 1 540 66
	lw	a5,-36(s0)
	lbu	a5,2(a5)
	.loc 1 540 29
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 1 540 28 discriminator 1
	bne	a5,zero,.L51
	.loc 1 542 52
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 1 542 32
	lw	a4,-20(s0)
	bne	a4,a5,.L52
	.loc 1 544 62
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 544 56
	lw	a5,-28(s0)
	sw	a4,12(a5)
	.loc 1 550 29
	j	.L54
.L52:
	.loc 1 548 55
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 1 548 49
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 1 550 29
	j	.L54
.L51:
	.loc 1 552 35
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 1 553 30
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 538 75 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L50:
	.loc 1 538 62 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L55
.L54:
	.loc 1 556 24
	lw	a5,-20(s0)
	beq	a5,zero,.L39
	.loc 1 558 25
	lw	a0,-20(s0)
	call	mem_free
	j	.L39
.L57:
.LBE2:
	.loc 1 326 9
	nop
	j	.L39
.L58:
	.loc 1 332 9
	nop
	j	.L39
.L59:
	.loc 1 337 9
	nop
	j	.L39
.L60:
	.loc 1 573 1
	nop
	j	.L39
.L61:
	.loc 1 351 17
	nop
.L39:
	.loc 1 574 5
	lw	a0,-32(s0)
	call	pbuf_free
.L33:
	.loc 1 575 1
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
	.size	dhcp_server_recv, .-dhcp_server_recv
	.section	.text.dhcp_server_start,"ax",@progbits
	.align	1
	.globl	dhcp_server_start
	.type	dhcp_server_start, @function
dhcp_server_start:
.LFB12:
	.loc 1 589 1
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
	.loc 1 593 22
	lui	a5,%hi(lw_dhcp_server)
	lw	a5,%lo(lw_dhcp_server)(a5)
	sw	a5,-20(s0)
	.loc 1 593 5
	j	.L63
.L66:
	.loc 1 595 24
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 595 12
	lw	a4,-36(s0)
	bne	a4,a5,.L64
	.loc 1 597 32
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	lw	a4,0(a4)
	sw	a4,16(a5)
	.loc 1 598 30
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	lw	a4,0(a4)
	sw	a4,20(a5)
	.loc 1 599 34
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	lw	a4,0(a4)
	sw	a4,24(a5)
	.loc 1 600 20
	li	a5,0
	j	.L65
.L64:
	.loc 1 593 72 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L63:
	.loc 1 593 52 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L66
	.loc 1 604 17
	sw	zero,-20(s0)
	.loc 1 606 41
	li	a0,28
	call	mem_malloc
	sw	a0,-20(s0)
	.loc 1 607 8
	lw	a5,-20(s0)
	bne	a5,zero,.L67
	.loc 1 610 16
	li	a5,-1
	j	.L65
.L67:
	.loc 1 614 5
	li	a2,28
	li	a1,0
	lw	a0,-20(s0)
	call	memset
	.loc 1 617 23
	lui	a5,%hi(lw_dhcp_server)
	lw	a4,%lo(lw_dhcp_server)(a5)
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 618 20
	lui	a5,%hi(lw_dhcp_server)
	lw	a4,-20(s0)
	sw	a4,%lo(lw_dhcp_server)(a5)
	.loc 1 619 24
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	sw	a4,4(a5)
	.loc 1 620 28
	lw	a5,-20(s0)
	sw	zero,12(a5)
	.loc 1 621 24
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	lw	a4,0(a4)
	sw	a4,16(a5)
	.loc 1 622 22
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	lw	a4,0(a4)
	sw	a4,20(a5)
	.loc 1 623 26
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	lw	a4,0(a4)
	sw	a4,24(a5)
	.loc 1 626 24
	call	udp_new
	mv	a4,a0
	.loc 1 626 22 discriminator 1
	lw	a5,-20(s0)
	sw	a4,8(a5)
	.loc 1 627 20
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 627 8
	bne	a5,zero,.L68
	.loc 1 630 16
	li	a5,-1
	j	.L65
.L68:
	.loc 1 633 58
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 633 64
	lbu	a4,9(a5)
	.loc 1 633 18
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 633 39
	ori	a4,a4,32
	andi	a4,a4,0xff
	.loc 1 633 37
	sb	a4,9(a5)
	.loc 1 635 5
	lw	a5,-20(s0)
	lw	a4,8(a5)
	li	a2,67
	lui	a5,%hi(ip_addr_any)
	addi	a1,a5,%lo(ip_addr_any)
	mv	a0,a4
	call	udp_bind
	.loc 1 638 5
	lw	a5,-20(s0)
	lw	a4,8(a5)
	lw	a2,-20(s0)
	lui	a5,%hi(dhcp_server_recv)
	addi	a1,a5,%lo(dhcp_server_recv)
	mv	a0,a4
	call	udp_recv
	.loc 1 641 12
	li	a5,0
.L65:
	.loc 1 642 1
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
.LFE12:
	.size	dhcp_server_start, .-dhcp_server_start
	.section	.rodata
	.align	2
.LC1:
	.string	"[DHCP] [DHCPD] CRITICAL: no dhcp_server instance found\r\n"
	.section	.text.dhcp_server_stop,"ax",@progbits
	.align	1
	.globl	dhcp_server_stop
	.type	dhcp_server_stop, @function
dhcp_server_stop:
.LFB13:
	.loc 1 646 1
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
	.loc 1 650 22
	lui	a5,%hi(lw_dhcp_server)
	lw	a5,%lo(lw_dhcp_server)(a5)
	sw	a5,-20(s0)
	.loc 1 650 5
	j	.L70
.L73:
	.loc 1 651 24
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 651 12
	lw	a4,-36(s0)
	beq	a4,a5,.L77
	.loc 1 650 72 discriminator 2
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L70:
	.loc 1 650 52 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L73
	j	.L72
.L77:
	.loc 1 652 13
	nop
.L72:
	.loc 1 656 8
	lw	a5,-20(s0)
	bne	a5,zero,.L74
	.loc 1 657 9
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	.loc 1 658 16
	li	a5,-6
	j	.L75
.L74:
	.loc 1 662 20
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 662 8
	beq	a5,zero,.L76
	.loc 1 663 9
	lw	a5,-20(s0)
	lw	a5,8(a5)
	mv	a0,a5
	call	udp_remove
.L76:
	.loc 1 667 20
	lui	a5,%hi(lw_dhcp_server)
	sw	zero,%lo(lw_dhcp_server)(a5)
	.loc 1 668 5
	lw	a0,-20(s0)
	call	mem_free
	.loc 1 670 12
	li	a5,0
.L75:
	.loc 1 671 1
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
	.size	dhcp_server_stop, .-dhcp_server_stop
	.section	.rodata
	.align	2
.LC2:
	.string	"255.255.255.0"
	.align	2
.LC3:
	.string	"0.0.0.0"
	.align	2
.LC4:
	.string	"192.168.169.1"
	.align	2
.LC6:
	.string	"[DHCP] DHCPD_SERVER_IP: %s error!\r\n"
	.align	2
.LC7:
	.string	"%d"
	.align	2
.LC8:
	.string	"[DHCP] ip_start: [%s]\r\n"
	.align	2
.LC9:
	.string	"[DHCP] dhcp_server_start res: %d.\r\n"
	.align	2
.LC5:
	.string	"192.168.169.1"
	.zero	6
	.section	.text.dhcpd_start,"ax",@progbits
	.align	1
	.globl	dhcpd_start
	.type	dhcpd_start, @function
dhcpd_start:
.LFB14:
	.loc 1 675 1
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
.LBB3:
	.loc 1 682 9
	lw	a0,-68(s0)
	call	dhcp_stop
	.loc 1 684 9
	lui	a5,%hi(.LC2)
	addi	a3,a5,%lo(.LC2)
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	lui	a5,%hi(.LC4)
	addi	a1,a5,%lo(.LC4)
	lw	a0,-68(s0)
	call	set_if
	.loc 1 686 9
	lw	a0,-68(s0)
	call	netif_set_up
.LBE3:
.LBB4:
	.loc 1 690 14
	lui	a5,%hi(.LC5)
	addi	a5,a5,%lo(.LC5)
	lw	a3,0(a5)
	lw	a4,4(a5)
	sw	a3,-44(s0)
	sw	a4,-40(s0)
	lw	a4,8(a5)
	sw	a4,-36(s0)
	lhu	a5,12(a5)
	sh	a5,-32(s0)
	sh	zero,-30(s0)
	sh	zero,-28(s0)
	sh	zero,-26(s0)
	.loc 1 691 15
	addi	a5,s0,-44
	sw	a5,-20(s0)
	.loc 1 694 13
	addi	a5,s0,-44
	li	a1,46
	mv	a0,a5
	call	strchr
	sw	a0,-20(s0)
	.loc 1 695 12
	lw	a5,-20(s0)
	beq	a5,zero,.L79
	.loc 1 697 26
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 1 697 17
	li	a1,46
	mv	a0,a5
	call	strchr
	sw	a0,-20(s0)
	.loc 1 698 16
	lw	a5,-20(s0)
	beq	a5,zero,.L79
	.loc 1 700 30
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 1 700 21
	li	a1,46
	mv	a0,a5
	call	strchr
	sw	a0,-20(s0)
.L79:
	.loc 1 703 12
	lw	a5,-20(s0)
	bne	a5,zero,.L80
	.loc 1 705 13
	addi	a5,s0,-44
	mv	a1,a5
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	printf
.LBE4:
	.loc 1 726 5
	j	.L84
.L80:
.LBB5:
	.loc 1 708 11
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 710 9
	li	a2,2
	lui	a5,%hi(.LC7)
	addi	a1,a5,%lo(.LC7)
	lw	a0,-20(s0)
	call	sprintf
	.loc 1 711 9
	addi	a4,s0,-48
	addi	a5,s0,-44
	mv	a1,a4
	mv	a0,a5
	call	ip4addr_aton
	.loc 1 712 9
	addi	a5,s0,-44
	mv	a1,a5
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	printf
	.loc 1 713 9
	li	a2,254
	lui	a5,%hi(.LC7)
	addi	a1,a5,%lo(.LC7)
	lw	a0,-20(s0)
	call	sprintf
	.loc 1 714 9
	addi	a4,s0,-52
	addi	a5,s0,-44
	mv	a1,a4
	mv	a0,a5
	call	ip4addr_aton
	.loc 1 715 9
	addi	a5,s0,-44
	mv	a1,a5
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	printf
	.loc 1 717 15
	addi	a4,s0,-52
	addi	a5,s0,-48
	mv	a2,a4
	mv	a1,a5
	lw	a0,-68(s0)
	call	dhcp_server_start
	mv	a5,a0
	sb	a5,-21(s0)
	.loc 1 718 12
	lb	a5,-21(s0)
	beq	a5,zero,.L84
	.loc 1 720 13
	lb	a5,-21(s0)
	mv	a1,a5
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	printf
.LBE5:
	.loc 1 726 5
	nop
.L81:
.L84:
	nop
	.loc 1 727 1
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	dhcpd_start, .-dhcpd_start
	.section	.rodata
	.align	2
.LC10:
	.string	"[DHCP] %s: %s\r\n"
	.align	2
.LC11:
	.string	"[DHCP] network interface name too long!\r\n"
	.align	2
.LC12:
	.string	"[DHCP] network interface: %s not found!\r\n"
	.section	.text.dhcpd_stop,"ax",@progbits
	.align	1
	.globl	dhcpd_stop
	.type	dhcpd_stop, @function
dhcpd_stop:
.LFB15:
	.loc 1 730 1
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
	.loc 1 731 19
	lui	a5,%hi(netif_list)
	lw	a5,%lo(netif_list)(a5)
	sw	a5,-20(s0)
	.loc 1 733 5
	lw	a2,-36(s0)
	lui	a5,%hi(__func__.0)
	addi	a1,a5,%lo(__func__.0)
	lui	a5,%hi(.LC10)
	addi	a0,a5,%lo(.LC10)
	call	printf
	.loc 1 736 9
	lw	a0,-36(s0)
	call	strlen
	mv	a4,a0
	.loc 1 736 8 discriminator 1
	li	a5,2
	bleu	a4,a5,.L88
	.loc 1 737 9
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	printf
	.loc 1 738 9
	j	.L87
.L91:
	.loc 1 742 38
	lw	a5,-20(s0)
	addi	a5,a5,70
	.loc 1 742 13
	li	a2,2
	mv	a1,a5
	lw	a0,-36(s0)
	call	strncmp
	mv	a5,a0
	.loc 1 742 12 discriminator 1
	beq	a5,zero,.L94
	.loc 1 745 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 746 12
	lw	a5,-20(s0)
	bne	a5,zero,.L88
	.loc 1 748 13
	lw	a1,-36(s0)
	lui	a5,%hi(.LC12)
	addi	a0,a5,%lo(.LC12)
	call	printf
	.loc 1 749 13
	j	.L90
.L88:
	.loc 1 741 18
	lw	a5,-20(s0)
	bne	a5,zero,.L91
	j	.L90
.L94:
	.loc 1 743 13
	nop
.L90:
	.loc 1 753 8
	lw	a5,-20(s0)
	beq	a5,zero,.L95
	.loc 1 757 5
	lw	a0,-20(s0)
	call	dhcp_server_stop
	.loc 1 761 5
	j	.L87
.L95:
	.loc 1 754 9
	nop
.L87:
	.loc 1 761 5
	nop
	.loc 1 762 1
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
	.size	dhcpd_stop, .-dhcpd_stop
	.section	.rodata.__func__.0,"a"
	.align	2
	.type	__func__.0, @object
	.size	__func__.0, 11
__func__.0:
	.string	"dhcpd_stop"
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/mem.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/acd.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/ip4.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/dhcp.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/udp.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/acd.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/dhcp.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/def.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x112c
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x27
	.4byte	.LASF215
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL1
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x28
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0xa
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x29
	.byte	0x4
	.uleb128 0x17
	.4byte	0x84
	.uleb128 0x5
	.4byte	0x95
	.uleb128 0x17
	.4byte	0x8b
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x11
	.4byte	0x95
	.uleb128 0x5
	.4byte	0x9c
	.uleb128 0x17
	.4byte	0xa1
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x22
	.byte	0x15
	.4byte	0x2b
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x11
	.4byte	0xb7
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x40
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x4e
	.uleb128 0xb
	.4byte	0x84
	.4byte	0xf0
	.uleb128 0xc
	.4byte	0x6a
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	0xfa
	.uleb128 0x17
	.4byte	0xf0
	.uleb128 0x2a
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0xb7
	.uleb128 0x11
	.4byte	0xfb
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0xab
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0xc8
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xd4
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x4
	.byte	0x5
	.byte	0x33
	.4byte	0x14a
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0x5
	.byte	0x34
	.byte	0x9
	.4byte	0x124
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x39
	.byte	0x19
	.4byte	0x130
	.uleb128 0x11
	.4byte	0x14a
	.uleb128 0x2b
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x126
	.byte	0x14
	.4byte	0x14a
	.uleb128 0x11
	.4byte	0x15b
	.uleb128 0x20
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x18e
	.byte	0x18
	.4byte	0x168
	.uleb128 0x14
	.byte	0x5
	.byte	0x1
	.4byte	0x2b
	.byte	0x7
	.byte	0x35
	.4byte	0x1ee
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0
	.uleb128 0x7
	.4byte	.LASF25
	.sleb128 -1
	.uleb128 0x7
	.4byte	.LASF26
	.sleb128 -2
	.uleb128 0x7
	.4byte	.LASF27
	.sleb128 -3
	.uleb128 0x7
	.4byte	.LASF28
	.sleb128 -4
	.uleb128 0x7
	.4byte	.LASF29
	.sleb128 -5
	.uleb128 0x7
	.4byte	.LASF30
	.sleb128 -6
	.uleb128 0x7
	.4byte	.LASF31
	.sleb128 -7
	.uleb128 0x7
	.4byte	.LASF32
	.sleb128 -8
	.uleb128 0x7
	.4byte	.LASF33
	.sleb128 -9
	.uleb128 0x7
	.4byte	.LASF34
	.sleb128 -10
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 -11
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 -12
	.uleb128 0x7
	.4byte	.LASF37
	.sleb128 -13
	.uleb128 0x7
	.4byte	.LASF38
	.sleb128 -14
	.uleb128 0x7
	.4byte	.LASF39
	.sleb128 -15
	.uleb128 0x7
	.4byte	.LASF40
	.sleb128 -16
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x7
	.byte	0x60
	.byte	0xe
	.4byte	0x10c
	.uleb128 0x14
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x8
	.byte	0x59
	.4byte	0x226
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0xb6
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0xa2
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x8e
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x80
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x8
	.byte	0x70
	.byte	0x3
	.4byte	0x1fa
	.uleb128 0x14
	.byte	0x7
	.byte	0x2
	.4byte	0x40
	.byte	0x8
	.byte	0x91
	.4byte	0x25a
	.uleb128 0x21
	.4byte	.LASF48
	.2byte	0x280
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x41
	.uleb128 0x21
	.4byte	.LASF51
	.2byte	0x182
	.byte	0
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x8
	.byte	0xa8
	.byte	0x3
	.4byte	0x232
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x10
	.byte	0x8
	.byte	0xba
	.4byte	0x2db
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x8
	.byte	0xbc
	.byte	0x10
	.4byte	0x2e0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x8
	.byte	0xbf
	.byte	0x9
	.4byte	0x84
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0x8
	.byte	0xc8
	.byte	0x9
	.4byte	0x118
	.byte	0x8
	.uleb128 0xd
	.string	"len"
	.byte	0x8
	.byte	0xcb
	.byte	0x9
	.4byte	0x118
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x8
	.byte	0xd0
	.byte	0x8
	.4byte	0xfb
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x8
	.byte	0xd3
	.byte	0x8
	.4byte	0xfb
	.byte	0xd
	.uleb128 0xd
	.string	"ref"
	.byte	0x8
	.byte	0xda
	.byte	0x8
	.4byte	0xfb
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x8
	.byte	0xdd
	.byte	0x8
	.4byte	0xfb
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.4byte	0x266
	.uleb128 0x5
	.4byte	0x266
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x9
	.byte	0x43
	.byte	0xf
	.4byte	0x118
	.uleb128 0x14
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0xa
	.byte	0x34
	.4byte	0x35f
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0xd
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0xe
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	0xfb
	.uleb128 0x22
	.4byte	.LASF83
	.4byte	0x32
	.byte	0x71
	.4byte	0x38b
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x3
	.byte	0
	.uleb128 0x22
	.4byte	.LASF84
	.4byte	0x32
	.byte	0x9f
	.4byte	0x3a6
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x3ab
	.uleb128 0x2c
	.4byte	.LASF87
	.byte	0x54
	.byte	0xb
	.2byte	0x10d
	.byte	0x8
	.4byte	0x4bd
	.uleb128 0x6
	.4byte	.LASF56
	.2byte	0x110
	.byte	0x11
	.4byte	0x3a6
	.byte	0
	.uleb128 0x6
	.4byte	.LASF88
	.2byte	0x115
	.byte	0xd
	.4byte	0x15b
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF89
	.2byte	0x116
	.byte	0xd
	.4byte	0x15b
	.byte	0x8
	.uleb128 0x1b
	.string	"gw"
	.2byte	0x117
	.byte	0xd
	.4byte	0x15b
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF90
	.2byte	0x129
	.byte	0x12
	.4byte	0x4bd
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF91
	.2byte	0x12f
	.byte	0x13
	.4byte	0x4e2
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF92
	.2byte	0x134
	.byte	0x17
	.4byte	0x511
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF93
	.2byte	0x13f
	.byte	0x1c
	.4byte	0x536
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF94
	.2byte	0x144
	.byte	0x1c
	.4byte	0x536
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF95
	.2byte	0x14c
	.byte	0x9
	.4byte	0x84
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF96
	.2byte	0x14e
	.byte	0x9
	.4byte	0xe0
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF97
	.2byte	0x152
	.byte	0xf
	.4byte	0xa1
	.byte	0x38
	.uleb128 0x1b
	.string	"mtu"
	.2byte	0x158
	.byte	0x9
	.4byte	0x118
	.byte	0x3c
	.uleb128 0x6
	.4byte	.LASF98
	.2byte	0x15e
	.byte	0x8
	.4byte	0x57c
	.byte	0x3e
	.uleb128 0x6
	.4byte	.LASF99
	.2byte	0x160
	.byte	0x8
	.4byte	0xfb
	.byte	0x44
	.uleb128 0x6
	.4byte	.LASF60
	.2byte	0x162
	.byte	0x8
	.4byte	0xfb
	.byte	0x45
	.uleb128 0x6
	.4byte	.LASF100
	.2byte	0x164
	.byte	0x8
	.4byte	0x58c
	.byte	0x46
	.uleb128 0x1b
	.string	"num"
	.2byte	0x167
	.byte	0x8
	.4byte	0xfb
	.byte	0x48
	.uleb128 0x6
	.4byte	.LASF101
	.2byte	0x17d
	.byte	0x1c
	.4byte	0x552
	.byte	0x4c
	.uleb128 0x6
	.4byte	.LASF102
	.2byte	0x185
	.byte	0xf
	.4byte	0x612
	.byte	0x50
	.byte	0
	.uleb128 0x4
	.4byte	.LASF103
	.byte	0xb
	.byte	0xb5
	.byte	0x11
	.4byte	0x4c9
	.uleb128 0x5
	.4byte	0x4ce
	.uleb128 0x18
	.4byte	0x1ee
	.4byte	0x4e2
	.uleb128 0x1
	.4byte	0x2e0
	.uleb128 0x1
	.4byte	0x3a6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF104
	.byte	0xb
	.byte	0xc0
	.byte	0x11
	.4byte	0x4ee
	.uleb128 0x5
	.4byte	0x4f3
	.uleb128 0x18
	.4byte	0x1ee
	.4byte	0x50c
	.uleb128 0x1
	.4byte	0x3a6
	.uleb128 0x1
	.4byte	0x2e0
	.uleb128 0x1
	.4byte	0x50c
	.byte	0
	.uleb128 0x5
	.4byte	0x156
	.uleb128 0x4
	.4byte	.LASF105
	.byte	0xb
	.byte	0xd7
	.byte	0x11
	.4byte	0x51d
	.uleb128 0x5
	.4byte	0x522
	.uleb128 0x18
	.4byte	0x1ee
	.4byte	0x536
	.uleb128 0x1
	.4byte	0x3a6
	.uleb128 0x1
	.4byte	0x2e0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF106
	.byte	0xb
	.byte	0xd9
	.byte	0x10
	.4byte	0x542
	.uleb128 0x5
	.4byte	0x547
	.uleb128 0x1c
	.4byte	0x552
	.uleb128 0x1
	.4byte	0x3a6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF107
	.byte	0xb
	.byte	0xdc
	.byte	0x11
	.4byte	0x55e
	.uleb128 0x5
	.4byte	0x563
	.uleb128 0x18
	.4byte	0x1ee
	.4byte	0x57c
	.uleb128 0x1
	.4byte	0x3a6
	.uleb128 0x1
	.4byte	0x50c
	.uleb128 0x1
	.4byte	0x38b
	.byte	0
	.uleb128 0xb
	.4byte	0xfb
	.4byte	0x58c
	.uleb128 0xc
	.4byte	0x6a
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	0x95
	.4byte	0x59c
	.uleb128 0xc
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x2d
	.string	"acd"
	.byte	0x14
	.byte	0xc
	.byte	0x47
	.byte	0x8
	.4byte	0x612
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0xc
	.byte	0x4a
	.byte	0xf
	.4byte	0x612
	.byte	0
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0xc
	.byte	0x4c
	.byte	0xe
	.4byte	0x14a
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0xc
	.byte	0x4e
	.byte	0x14
	.4byte	0x8b0
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xc
	.byte	0x50
	.byte	0x8
	.4byte	0xfb
	.byte	0x9
	.uleb128 0xd
	.string	"ttw"
	.byte	0xc
	.byte	0x52
	.byte	0x9
	.4byte	0x118
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0xc
	.byte	0x54
	.byte	0x8
	.4byte	0xfb
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0xc
	.byte	0x56
	.byte	0x8
	.4byte	0xfb
	.byte	0xd
	.uleb128 0x2
	.4byte	.LASF112
	.byte	0xc
	.byte	0x59
	.byte	0x1b
	.4byte	0x8e8
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.4byte	0x59c
	.uleb128 0x20
	.4byte	.LASF114
	.byte	0xb
	.2byte	0x1a7
	.byte	0x16
	.4byte	0x3a6
	.uleb128 0x5
	.4byte	0x168
	.uleb128 0xb
	.4byte	0xfb
	.4byte	0x639
	.uleb128 0xc
	.4byte	0x6a
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.4byte	.LASF115
	.byte	0x4
	.byte	0xd
	.byte	0x35
	.4byte	0x653
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0xd
	.byte	0x36
	.byte	0x9
	.4byte	0x124
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF116
	.byte	0xd
	.byte	0x3d
	.byte	0x20
	.4byte	0x639
	.uleb128 0x2e
	.4byte	.LASF117
	.2byte	0x134
	.byte	0xe
	.byte	0x3f
	.byte	0x8
	.4byte	0x73d
	.uleb128 0xd
	.string	"op"
	.byte	0xe
	.byte	0x41
	.byte	0x8
	.4byte	0xfb
	.byte	0
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0xe
	.byte	0x42
	.byte	0x8
	.4byte	0xfb
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0xe
	.byte	0x43
	.byte	0x8
	.4byte	0xfb
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0xe
	.byte	0x44
	.byte	0x8
	.4byte	0xfb
	.byte	0x3
	.uleb128 0xd
	.string	"xid"
	.byte	0xe
	.byte	0x45
	.byte	0x9
	.4byte	0x124
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0xe
	.byte	0x46
	.byte	0x9
	.4byte	0x118
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0xe
	.byte	0x47
	.byte	0x9
	.4byte	0x118
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0xe
	.byte	0x48
	.byte	0x10
	.4byte	0x653
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0xe
	.byte	0x49
	.byte	0x10
	.4byte	0x653
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0xe
	.byte	0x4a
	.byte	0x10
	.4byte	0x653
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0xe
	.byte	0x4b
	.byte	0x10
	.4byte	0x653
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0xe
	.byte	0x4c
	.byte	0x8
	.4byte	0x629
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0xe
	.byte	0x4d
	.byte	0x8
	.4byte	0x73d
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0xe
	.byte	0x4e
	.byte	0x8
	.4byte	0x74d
	.byte	0x6c
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0xe
	.byte	0x4f
	.byte	0x9
	.4byte	0x124
	.byte	0xec
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0xe
	.byte	0x5a
	.byte	0x8
	.4byte	0x75d
	.byte	0xf0
	.byte	0
	.uleb128 0xb
	.4byte	0xfb
	.4byte	0x74d
	.uleb128 0xc
	.4byte	0x6a
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.4byte	0xfb
	.4byte	0x75d
	.uleb128 0xc
	.4byte	0x6a
	.byte	0x7f
	.byte	0
	.uleb128 0xb
	.4byte	0xfb
	.4byte	0x76d
	.uleb128 0xc
	.4byte	0x6a
	.byte	0x43
	.byte	0
	.uleb128 0x4
	.4byte	.LASF131
	.byte	0xf
	.byte	0x4d
	.byte	0x10
	.4byte	0x779
	.uleb128 0x5
	.4byte	0x77e
	.uleb128 0x1c
	.4byte	0x79d
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x79d
	.uleb128 0x1
	.4byte	0x2e0
	.uleb128 0x1
	.4byte	0x624
	.uleb128 0x1
	.4byte	0x118
	.byte	0
	.uleb128 0x5
	.4byte	0x7a2
	.uleb128 0x13
	.4byte	.LASF132
	.byte	0x28
	.byte	0xf
	.byte	0x51
	.4byte	0x872
	.uleb128 0x2
	.4byte	.LASF133
	.byte	0xf
	.byte	0x53
	.byte	0xd
	.4byte	0x15b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF134
	.byte	0xf
	.byte	0x53
	.byte	0x21
	.4byte	0x15b
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF135
	.byte	0xf
	.byte	0x53
	.byte	0x31
	.4byte	0xfb
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0xf
	.byte	0x53
	.byte	0x41
	.4byte	0xfb
	.byte	0x9
	.uleb128 0xd
	.string	"tos"
	.byte	0xf
	.byte	0x53
	.byte	0x52
	.4byte	0xfb
	.byte	0xa
	.uleb128 0xd
	.string	"ttl"
	.byte	0xf
	.byte	0x53
	.byte	0x5c
	.4byte	0xfb
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0xf
	.byte	0x57
	.byte	0x13
	.4byte	0x79d
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0xf
	.byte	0x59
	.byte	0x8
	.4byte	0xfb
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0xf
	.byte	0x5b
	.byte	0x9
	.4byte	0x118
	.byte	0x12
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0xf
	.byte	0x5b
	.byte	0x15
	.4byte	0x118
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF139
	.byte	0xf
	.byte	0x60
	.byte	0xe
	.4byte	0x14a
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF140
	.byte	0xf
	.byte	0x63
	.byte	0x8
	.4byte	0xfb
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF141
	.byte	0xf
	.byte	0x65
	.byte	0x8
	.4byte	0xfb
	.byte	0x1d
	.uleb128 0x2
	.4byte	.LASF142
	.byte	0xf
	.byte	0x6e
	.byte	0xf
	.4byte	0x76d
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0xf
	.byte	0x70
	.byte	0x9
	.4byte	0x84
	.byte	0x24
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x10
	.byte	0x3a
	.4byte	0x8b0
	.uleb128 0x3
	.4byte	.LASF144
	.byte	0
	.uleb128 0x3
	.4byte	.LASF145
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF146
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF147
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF149
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF150
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF151
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF152
	.byte	0x10
	.byte	0x4f
	.byte	0x3
	.4byte	0x872
	.uleb128 0x14
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x10
	.byte	0x51
	.4byte	0x8dc
	.uleb128 0x3
	.4byte	.LASF153
	.byte	0
	.uleb128 0x3
	.4byte	.LASF154
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF155
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF156
	.byte	0x10
	.byte	0x55
	.byte	0x3
	.4byte	0x8bc
	.uleb128 0x4
	.4byte	.LASF157
	.byte	0xc
	.byte	0x44
	.byte	0x10
	.4byte	0x8f4
	.uleb128 0x5
	.4byte	0x8f9
	.uleb128 0x1c
	.4byte	0x909
	.uleb128 0x1
	.4byte	0x3a6
	.uleb128 0x1
	.4byte	0x8dc
	.byte	0
	.uleb128 0x13
	.4byte	.LASF158
	.byte	0x14
	.byte	0x1
	.byte	0x49
	.4byte	0x94a
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x1
	.byte	0x4b
	.byte	0x1e
	.4byte	0x94a
	.byte	0
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0x1
	.byte	0x4c
	.byte	0xa
	.4byte	0x57c
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0x1
	.byte	0x4d
	.byte	0x10
	.4byte	0x14a
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF159
	.byte	0x1
	.byte	0x4e
	.byte	0xb
	.4byte	0x124
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.4byte	0x909
	.uleb128 0x13
	.4byte	.LASF160
	.byte	0x1c
	.byte	0x1
	.byte	0x54
	.4byte	0x9b7
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x1
	.byte	0x56
	.byte	0x19
	.4byte	0x9b7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0x1
	.byte	0x57
	.byte	0x13
	.4byte	0x3a6
	.byte	0x4
	.uleb128 0xd
	.string	"pcb"
	.byte	0x1
	.byte	0x58
	.byte	0x15
	.4byte	0x79d
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF161
	.byte	0x1
	.byte	0x59
	.byte	0x1e
	.4byte	0x94a
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF162
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.4byte	0x14a
	.byte	0x10
	.uleb128 0xd
	.string	"end"
	.byte	0x1
	.byte	0x5b
	.byte	0x10
	.4byte	0x14a
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF163
	.byte	0x1
	.byte	0x5c
	.byte	0x10
	.4byte	0x14a
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.4byte	0x94f
	.uleb128 0xe
	.4byte	.LASF188
	.byte	0x64
	.byte	0x1c
	.4byte	0x9b7
	.uleb128 0x5
	.byte	0x3
	.4byte	lw_dhcp_server
	.uleb128 0x8
	.4byte	.LASF164
	.byte	0x11
	.byte	0x2b
	.byte	0x5
	.4byte	0x63
	.4byte	0x9ed
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0x8
	.4byte	.LASF165
	.byte	0x11
	.byte	0x29
	.byte	0x8
	.4byte	0x71
	.4byte	0xa03
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF166
	.byte	0x5
	.byte	0xd6
	.byte	0x5
	.4byte	0x63
	.4byte	0xa1e
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x1
	.4byte	0xa1e
	.byte	0
	.uleb128 0x5
	.4byte	0x14a
	.uleb128 0x8
	.4byte	.LASF167
	.byte	0x12
	.byte	0xfa
	.byte	0x5
	.4byte	0x63
	.4byte	0xa3f
	.uleb128 0x1
	.4byte	0x90
	.uleb128 0x1
	.4byte	0xa6
	.uleb128 0x23
	.byte	0
	.uleb128 0x8
	.4byte	.LASF168
	.byte	0x11
	.byte	0x23
	.byte	0x7
	.4byte	0x8b
	.4byte	0xa5a
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x1
	.4byte	0x63
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF169
	.byte	0xb
	.2byte	0x1da
	.byte	0x6
	.4byte	0xa6d
	.uleb128 0x1
	.4byte	0x3a6
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x2a8
	.byte	0x15
	.4byte	0xa8f
	.uleb128 0x1
	.4byte	0x3a6
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.byte	0
	.uleb128 0x19
	.4byte	.LASF171
	.byte	0x13
	.byte	0x81
	.4byte	0xaa0
	.uleb128 0x1
	.4byte	0x3a6
	.byte	0
	.uleb128 0x19
	.4byte	.LASF172
	.byte	0xf
	.byte	0x79
	.4byte	0xab1
	.uleb128 0x1
	.4byte	0x79d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF173
	.byte	0x12
	.byte	0xce
	.byte	0x5
	.4byte	0x63
	.4byte	0xac8
	.uleb128 0x1
	.4byte	0xa6
	.uleb128 0x23
	.byte	0
	.uleb128 0x19
	.4byte	.LASF174
	.byte	0xf
	.byte	0x80
	.4byte	0xae3
	.uleb128 0x1
	.4byte	0x79d
	.uleb128 0x1
	.4byte	0x76d
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x8
	.4byte	.LASF175
	.byte	0xf
	.byte	0x7a
	.byte	0x7
	.4byte	0x1ee
	.4byte	0xb03
	.uleb128 0x1
	.4byte	0x79d
	.uleb128 0x1
	.4byte	0x624
	.uleb128 0x1
	.4byte	0x118
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF216
	.byte	0xf
	.byte	0x77
	.byte	0x12
	.4byte	0x79d
	.uleb128 0x19
	.4byte	.LASF176
	.byte	0x9
	.byte	0x4c
	.4byte	0xb20
	.uleb128 0x1
	.4byte	0x84
	.byte	0
	.uleb128 0x8
	.4byte	.LASF177
	.byte	0x11
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0xb40
	.uleb128 0x1
	.4byte	0x84
	.uleb128 0x1
	.4byte	0x63
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0x8
	.4byte	.LASF178
	.byte	0xf
	.byte	0x82
	.byte	0x7
	.4byte	0x1ee
	.4byte	0xb6a
	.uleb128 0x1
	.4byte	0x79d
	.uleb128 0x1
	.4byte	0x2e0
	.uleb128 0x1
	.4byte	0x624
	.uleb128 0x1
	.4byte	0x118
	.uleb128 0x1
	.4byte	0x3a6
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF179
	.byte	0x8
	.2byte	0x11a
	.byte	0x6
	.4byte	0xb82
	.uleb128 0x1
	.4byte	0x2e0
	.uleb128 0x1
	.4byte	0x118
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF180
	.2byte	0x12a
	.byte	0x7
	.4byte	0x1ee
	.4byte	0xb9d
	.uleb128 0x1
	.4byte	0x2e0
	.uleb128 0x1
	.4byte	0xb9d
	.byte	0
	.uleb128 0x5
	.4byte	0x2db
	.uleb128 0x1e
	.4byte	.LASF181
	.2byte	0x113
	.byte	0xe
	.4byte	0x2e0
	.4byte	0xbc2
	.uleb128 0x1
	.4byte	0x226
	.uleb128 0x1
	.4byte	0x118
	.uleb128 0x1
	.4byte	0x25a
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF182
	.2byte	0x125
	.byte	0x6
	.4byte	0xfb
	.4byte	0xbd8
	.uleb128 0x1
	.4byte	0x2e0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF183
	.byte	0x9
	.byte	0x4a
	.byte	0x7
	.4byte	0x84
	.4byte	0xbee
	.uleb128 0x1
	.4byte	0x2e5
	.byte	0
	.uleb128 0x8
	.4byte	.LASF184
	.byte	0x14
	.byte	0x65
	.byte	0x7
	.4byte	0x124
	.4byte	0xc04
	.uleb128 0x1
	.4byte	0x124
	.byte	0
	.uleb128 0x8
	.4byte	.LASF185
	.byte	0x12
	.byte	0xe3
	.byte	0x5
	.4byte	0x63
	.4byte	0xc1a
	.uleb128 0x1
	.4byte	0xa1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF186
	.byte	0x11
	.byte	0x1f
	.byte	0x8
	.4byte	0x84
	.4byte	0xc3a
	.uleb128 0x1
	.4byte	0x86
	.uleb128 0x1
	.4byte	0xf5
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0x8
	.4byte	.LASF187
	.byte	0x11
	.byte	0x1e
	.byte	0x5
	.4byte	0x63
	.4byte	0xc5a
	.uleb128 0x1
	.4byte	0xf0
	.uleb128 0x1
	.4byte	0xf0
	.uleb128 0x1
	.4byte	0x71
	.byte	0
	.uleb128 0x24
	.4byte	.LASF189
	.2byte	0x2d9
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xca8
	.uleb128 0xf
	.4byte	.LASF191
	.2byte	0x2d9
	.byte	0x1d
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF87
	.2byte	0x2db
	.byte	0x13
	.4byte	0x3a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.4byte	.LASF217
	.4byte	0xcb8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__.0
	.uleb128 0x1f
	.4byte	.LASF192
	.2byte	0x2f7
	.4byte	.L87
	.byte	0
	.uleb128 0xb
	.4byte	0x9c
	.4byte	0xcb8
	.uleb128 0xc
	.4byte	0x6a
	.byte	0xa
	.byte	0
	.uleb128 0x11
	.4byte	0xca8
	.uleb128 0x24
	.4byte	.LASF190
	.2byte	0x2a2
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd69
	.uleb128 0xf
	.4byte	.LASF87
	.2byte	0x2a2
	.byte	0x20
	.4byte	0x3a6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x12
	.string	"res"
	.2byte	0x2a4
	.byte	0xb
	.4byte	0x1ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1f
	.4byte	.LASF192
	.2byte	0x2d4
	.4byte	.L81
	.uleb128 0x31
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0xd28
	.uleb128 0x32
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x2a8
	.byte	0x15
	.uleb128 0x1
	.4byte	0x3a6
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.uleb128 0x1
	.4byte	0x8b
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LLRL0
	.uleb128 0x9
	.4byte	.LASF193
	.2byte	0x2b2
	.byte	0xe
	.4byte	0xd69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.string	"p"
	.2byte	0x2b3
	.byte	0xf
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF194
	.2byte	0x2b4
	.byte	0x14
	.4byte	0x14a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.4byte	.LASF195
	.2byte	0x2b4
	.byte	0x1e
	.4byte	0x14a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x95
	.4byte	0xd79
	.uleb128 0xc
	.4byte	0x6a
	.byte	0x13
	.byte	0
	.uleb128 0x25
	.4byte	.LASF196
	.2byte	0x285
	.byte	0x7
	.4byte	0x1ee
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdb2
	.uleb128 0xf
	.4byte	.LASF87
	.2byte	0x285
	.byte	0x26
	.4byte	0x3a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF160
	.2byte	0x287
	.byte	0x19
	.4byte	0x9b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.4byte	.LASF197
	.2byte	0x24c
	.byte	0x1
	.4byte	0x1ee
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe09
	.uleb128 0xf
	.4byte	.LASF87
	.2byte	0x24c
	.byte	0x21
	.4byte	0x3a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.4byte	.LASF162
	.2byte	0x24c
	.byte	0x34
	.4byte	0xa1e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"end"
	.2byte	0x24c
	.byte	0x47
	.4byte	0xa1e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.4byte	.LASF160
	.2byte	0x24e
	.byte	0x19
	.4byte	0x9b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x34
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x117
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf27
	.uleb128 0x15
	.string	"arg"
	.2byte	0x117
	.byte	0x18
	.4byte	0x84
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x15
	.string	"pcb"
	.2byte	0x117
	.byte	0x2d
	.4byte	0x79d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x15
	.string	"p"
	.2byte	0x117
	.byte	0x3f
	.4byte	0x2e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xf
	.4byte	.LASF198
	.2byte	0x117
	.byte	0x53
	.4byte	0x624
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xf
	.4byte	.LASF199
	.2byte	0x117
	.byte	0x64
	.4byte	0x118
	.uleb128 0x3
	.byte	0x91
	.sleb128 -82
	.uleb128 0x9
	.4byte	.LASF160
	.2byte	0x119
	.byte	0x19
	.4byte	0x9b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.string	"msg"
	.2byte	0x11a
	.byte	0x16
	.4byte	0xf27
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"q"
	.2byte	0x11b
	.byte	0x12
	.4byte	0x2e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.4byte	.LASF200
	.2byte	0x11c
	.byte	0xb
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"opt"
	.2byte	0x11d
	.byte	0xb
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.4byte	.LASF201
	.2byte	0x11e
	.byte	0x1e
	.4byte	0x94a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF202
	.2byte	0x11f
	.byte	0xa
	.4byte	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x9
	.4byte	.LASF203
	.2byte	0x120
	.byte	0xb
	.4byte	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x9
	.4byte	.LASF55
	.2byte	0x121
	.byte	0xf
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.string	"tmp"
	.2byte	0x122
	.byte	0xb
	.4byte	0x124
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1f
	.4byte	.LASF204
	.2byte	0x23d
	.4byte	.L39
	.uleb128 0x35
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x9
	.4byte	.LASF205
	.2byte	0x218
	.byte	0x2e
	.4byte	0x94a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x65f
	.uleb128 0x36
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x105
	.byte	0x1
	.4byte	0x35f
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf84
	.uleb128 0x15
	.string	"buf"
	.2byte	0x105
	.byte	0x1f
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.string	"len"
	.2byte	0x105
	.byte	0x2a
	.4byte	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0xf
	.4byte	.LASF206
	.2byte	0x105
	.byte	0x34
	.4byte	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -39
	.uleb128 0x12
	.string	"end"
	.2byte	0x107
	.byte	0xb
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF208
	.byte	0xcb
	.4byte	0x94a
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x100a
	.uleb128 0x10
	.4byte	.LASF209
	.byte	0xcb
	.byte	0x27
	.4byte	0x9b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.string	"msg"
	.byte	0xcb
	.byte	0x44
	.4byte	0xf27
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.4byte	.LASF200
	.byte	0xcc
	.byte	0x19
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.string	"len"
	.byte	0xcc
	.byte	0x28
	.4byte	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x26
	.string	"opt"
	.byte	0xce
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0xcf
	.byte	0xb
	.4byte	0x124
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF201
	.byte	0xd0
	.byte	0x1e
	.4byte	0x94a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.4byte	.LASF210
	.byte	0x1
	.byte	0xe2
	.byte	0x1
	.4byte	.L21
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF211
	.byte	0xa4
	.4byte	0x94a
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1076
	.uleb128 0x10
	.4byte	.LASF209
	.byte	0xa4
	.byte	0x26
	.4byte	0x9b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.string	"msg"
	.byte	0xa4
	.byte	0x43
	.4byte	0xf27
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.4byte	.LASF200
	.byte	0xa5
	.byte	0x18
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.string	"len"
	.byte	0xa5
	.byte	0x27
	.4byte	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x26
	.string	"opt"
	.byte	0xa7
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.4byte	.LASF201
	.byte	0xa9
	.byte	0x1e
	.4byte	0x94a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF212
	.byte	0x87
	.4byte	0x94a
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10d4
	.uleb128 0x10
	.4byte	.LASF209
	.byte	0x87
	.byte	0x2c
	.4byte	0x9b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.string	"ip"
	.byte	0x87
	.byte	0x47
	.4byte	0x10d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.4byte	.LASF201
	.byte	0x89
	.byte	0x1e
	.4byte	0x94a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0x8a
	.byte	0xf
	.4byte	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.4byte	.LASF213
	.byte	0x8b
	.byte	0xe
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x5
	.4byte	0xc3
	.uleb128 0x1a
	.4byte	.LASF214
	.byte	0x6f
	.4byte	0x94a
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x112a
	.uleb128 0x10
	.4byte	.LASF209
	.byte	0x6f
	.byte	0x2d
	.4byte	0x9b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.4byte	.LASF126
	.byte	0x6f
	.byte	0x45
	.4byte	0x112a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.4byte	.LASF119
	.byte	0x6f
	.byte	0x52
	.4byte	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0xe
	.4byte	.LASF201
	.byte	0x71
	.byte	0x1e
	.4byte	0x94a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	0x107
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 11
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 11
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
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0xa
	.byte	0
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.sleb128 11
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.byte	0x5
	.4byte	.LBB4
	.byte	0x4
	.uleb128 .LBB4-.LBB4
	.uleb128 .LBE4-.LBB4
	.byte	0x4
	.uleb128 .LBB5-.LBB4
	.uleb128 .LBE5-.LBB4
	.byte	0
.LLRL1:
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF107:
	.string	"netif_igmp_mac_filter_fn"
.LASF74:
	.string	"MEMP_SYS_TIMEOUT"
.LASF54:
	.string	"pbuf"
.LASF13:
	.string	"size_t"
.LASF44:
	.string	"PBUF_LINK"
.LASF175:
	.string	"udp_bind"
.LASF149:
	.string	"ACD_STATE_ONGOING"
.LASF75:
	.string	"MEMP_NETDB"
.LASF153:
	.string	"ACD_IP_OK"
.LASF52:
	.string	"pbuf_type"
.LASF119:
	.string	"hlen"
.LASF61:
	.string	"if_idx"
.LASF173:
	.string	"printf"
.LASF157:
	.string	"acd_conflict_callback_t"
.LASF55:
	.string	"addr"
.LASF146:
	.string	"ACD_STATE_PROBING"
.LASF118:
	.string	"htype"
.LASF121:
	.string	"secs"
.LASF210:
	.string	"dhcp_alloc_again"
.LASF56:
	.string	"next"
.LASF209:
	.string	"dhcpserver"
.LASF155:
	.string	"ACD_DECLINE"
.LASF85:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF122:
	.string	"ciaddr"
.LASF137:
	.string	"local_port"
.LASF7:
	.string	"long unsigned int"
.LASF32:
	.string	"ERR_USE"
.LASF9:
	.string	"long long unsigned int"
.LASF147:
	.string	"ACD_STATE_ANNOUNCE_WAIT"
.LASF213:
	.string	"ipval"
.LASF98:
	.string	"hwaddr"
.LASF109:
	.string	"sent_num"
.LASF58:
	.string	"tot_len"
.LASF27:
	.string	"ERR_TIMEOUT"
.LASF95:
	.string	"state"
.LASF97:
	.string	"hostname"
.LASF6:
	.string	"long int"
.LASF43:
	.string	"PBUF_IP"
.LASF196:
	.string	"dhcp_server_stop"
.LASF51:
	.string	"PBUF_POOL"
.LASF63:
	.string	"MEMP_RAW_PCB"
.LASF53:
	.string	"ip4_addr"
.LASF50:
	.string	"PBUF_REF"
.LASF195:
	.string	"ip_end"
.LASF208:
	.string	"dhcp_client_alloc"
.LASF142:
	.string	"recv"
.LASF82:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF36:
	.string	"ERR_IF"
.LASF16:
	.string	"uint16_t"
.LASF99:
	.string	"hwaddr_len"
.LASF64:
	.string	"MEMP_UDP_PCB"
.LASF89:
	.string	"netmask"
.LASF105:
	.string	"netif_linkoutput_fn"
.LASF24:
	.string	"ERR_OK"
.LASF78:
	.string	"MEMP_MAX"
.LASF66:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF130:
	.string	"options"
.LASF193:
	.string	"str_tmp"
.LASF59:
	.string	"type_internal"
.LASF199:
	.string	"port"
.LASF154:
	.string	"ACD_RESTART_CLIENT"
.LASF207:
	.string	"dhcp_server_option_find"
.LASF10:
	.string	"unsigned int"
.LASF131:
	.string	"udp_recv_fn"
.LASF73:
	.string	"MEMP_IGMP_GROUP"
.LASF111:
	.string	"num_conflicts"
.LASF76:
	.string	"MEMP_PBUF"
.LASF91:
	.string	"output"
.LASF171:
	.string	"dhcp_stop"
.LASF135:
	.string	"netif_idx"
.LASF33:
	.string	"ERR_ALREADY"
.LASF206:
	.string	"option"
.LASF136:
	.string	"so_options"
.LASF168:
	.string	"strchr"
.LASF150:
	.string	"ACD_STATE_PASSIVE_ONGOING"
.LASF127:
	.string	"sname"
.LASF65:
	.string	"MEMP_TCP_PCB"
.LASF169:
	.string	"netif_set_up"
.LASF100:
	.string	"name"
.LASF113:
	.string	"ip_addr_any"
.LASF192:
	.string	"_exit"
.LASF116:
	.string	"ip4_addr_p_t"
.LASF22:
	.string	"ip4_addr_t"
.LASF94:
	.string	"link_callback"
.LASF190:
	.string	"dhcpd_start"
.LASF182:
	.string	"pbuf_free"
.LASF165:
	.string	"strlen"
.LASF104:
	.string	"netif_output_fn"
.LASF145:
	.string	"ACD_STATE_PROBE_WAIT"
.LASF110:
	.string	"lastconflict"
.LASF143:
	.string	"recv_arg"
.LASF161:
	.string	"node_list"
.LASF115:
	.string	"ip4_addr_packed"
.LASF141:
	.string	"mcast_ttl"
.LASF218:
	.string	"dhcp_server_recv"
.LASF166:
	.string	"ip4addr_aton"
.LASF214:
	.string	"dhcp_client_find_by_mac"
.LASF84:
	.string	"netif_mac_filter_action"
.LASF67:
	.string	"MEMP_TCP_SEG"
.LASF47:
	.string	"pbuf_layer"
.LASF159:
	.string	"lease_end"
.LASF188:
	.string	"lw_dhcp_server"
.LASF185:
	.string	"puts"
.LASF202:
	.string	"msg_type"
.LASF23:
	.string	"ip_addr_t"
.LASF212:
	.string	"dhcp_client_find_by_ip"
.LASF41:
	.string	"err_t"
.LASF178:
	.string	"udp_sendto_if"
.LASF11:
	.string	"long double"
.LASF87:
	.string	"netif"
.LASF172:
	.string	"udp_remove"
.LASF126:
	.string	"chaddr"
.LASF101:
	.string	"igmp_mac_filter"
.LASF57:
	.string	"payload"
.LASF205:
	.string	"node_prev"
.LASF88:
	.string	"ip_addr"
.LASF49:
	.string	"PBUF_ROM"
.LASF170:
	.string	"set_if"
.LASF194:
	.string	"ip_start"
.LASF179:
	.string	"pbuf_realloc"
.LASF4:
	.string	"short int"
.LASF114:
	.string	"netif_list"
.LASF163:
	.string	"current"
.LASF174:
	.string	"udp_recv"
.LASF103:
	.string	"netif_input_fn"
.LASF216:
	.string	"udp_new"
.LASF29:
	.string	"ERR_INPROGRESS"
.LASF151:
	.string	"ACD_STATE_RATE_LIMIT"
.LASF158:
	.string	"dhcp_client_node"
.LASF124:
	.string	"siaddr"
.LASF80:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF30:
	.string	"ERR_VAL"
.LASF200:
	.string	"opt_buf"
.LASF92:
	.string	"linkoutput"
.LASF3:
	.string	"unsigned char"
.LASF40:
	.string	"ERR_ARG"
.LASF167:
	.string	"sprintf"
.LASF35:
	.string	"ERR_CONN"
.LASF133:
	.string	"local_ip"
.LASF201:
	.string	"node"
.LASF164:
	.string	"strncmp"
.LASF81:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF112:
	.string	"acd_conflict_callback"
.LASF156:
	.string	"acd_callback_enum_t"
.LASF128:
	.string	"file"
.LASF106:
	.string	"netif_status_callback_fn"
.LASF21:
	.string	"u32_t"
.LASF93:
	.string	"status_callback"
.LASF217:
	.string	"__func__"
.LASF90:
	.string	"input"
.LASF79:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF19:
	.string	"s8_t"
.LASF46:
	.string	"PBUF_RAW"
.LASF45:
	.string	"PBUF_RAW_TX"
.LASF48:
	.string	"PBUF_RAM"
.LASF86:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF38:
	.string	"ERR_RST"
.LASF17:
	.string	"uint32_t"
.LASF37:
	.string	"ERR_ABRT"
.LASF176:
	.string	"mem_free"
.LASF129:
	.string	"cookie"
.LASF71:
	.string	"MEMP_TCPIP_MSG_API"
.LASF203:
	.string	"length"
.LASF12:
	.string	"char"
.LASF180:
	.string	"pbuf_copy"
.LASF69:
	.string	"MEMP_NETBUF"
.LASF25:
	.string	"ERR_MEM"
.LASF70:
	.string	"MEMP_NETCONN"
.LASF68:
	.string	"MEMP_ALTCP_PCB"
.LASF42:
	.string	"PBUF_TRANSPORT"
.LASF77:
	.string	"MEMP_PBUF_POOL"
.LASF117:
	.string	"dhcp_msg"
.LASF152:
	.string	"acd_state_enum_t"
.LASF139:
	.string	"mcast_ip4"
.LASF187:
	.string	"memcmp"
.LASF18:
	.string	"u8_t"
.LASF186:
	.string	"memcpy"
.LASF5:
	.string	"short unsigned int"
.LASF39:
	.string	"ERR_CLSD"
.LASF28:
	.string	"ERR_RTE"
.LASF14:
	.string	"int8_t"
.LASF183:
	.string	"mem_malloc"
.LASF20:
	.string	"u16_t"
.LASF26:
	.string	"ERR_BUF"
.LASF62:
	.string	"mem_size_t"
.LASF184:
	.string	"lwip_htonl"
.LASF177:
	.string	"memset"
.LASF83:
	.string	"lwip_internal_netif_client_data_index"
.LASF34:
	.string	"ERR_ISCONN"
.LASF138:
	.string	"remote_port"
.LASF211:
	.string	"dhcp_client_find"
.LASF102:
	.string	"acd_list"
.LASF148:
	.string	"ACD_STATE_ANNOUNCING"
.LASF189:
	.string	"dhcpd_stop"
.LASF108:
	.string	"ipaddr"
.LASF15:
	.string	"uint8_t"
.LASF134:
	.string	"remote_ip"
.LASF60:
	.string	"flags"
.LASF120:
	.string	"hops"
.LASF132:
	.string	"udp_pcb"
.LASF31:
	.string	"ERR_WOULDBLOCK"
.LASF197:
	.string	"dhcp_server_start"
.LASF96:
	.string	"client_data"
.LASF125:
	.string	"giaddr"
.LASF123:
	.string	"yiaddr"
.LASF162:
	.string	"start"
.LASF215:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF144:
	.string	"ACD_STATE_OFF"
.LASF198:
	.string	"recv_addr"
.LASF140:
	.string	"mcast_ifindex"
.LASF191:
	.string	"netif_name"
.LASF181:
	.string	"pbuf_alloc"
.LASF204:
	.string	"free_pbuf_and_return"
.LASF160:
	.string	"dhcp_server"
.LASF72:
	.string	"MEMP_TCPIP_MSG_INPKT"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip_dhcpd/dhcp_server_raw.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip_dhcpd"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
