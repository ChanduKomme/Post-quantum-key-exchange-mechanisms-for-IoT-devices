	.file	"bridgeif.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip" "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/netif/bridgeif.c"
	.section	.sdata.bridgeif_netif_client_id,"aw"
	.type	bridgeif_netif_client_id, @object
	.size	bridgeif_netif_client_id, 1
bridgeif_netif_client_id:
	.byte	-1
	.section	.text.bridgeif_fdb_add,"ax",@progbits
	.align	1
	.globl	bridgeif_fdb_add
	.type	bridgeif_fdb_add, @function
bridgeif_fdb_add:
.LFB6:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/netif/bridgeif.c"
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
	mv	a5,a2
	sb	a5,-41(s0)
	.loc 1 141 6
	lw	a5,-36(s0)
	lw	a5,36(a5)
	sw	a5,-24(s0)
	.loc 1 145 10
	sw	zero,-20(s0)
	.loc 1 145 3
	j	.L2
.L5:
	.loc 1 146 12
	lw	a5,-24(s0)
	lw	a4,20(a5)
	.loc 1 146 18
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 146 21
	lbu	a5,0(a5)
	.loc 1 146 8
	bne	a5,zero,.L3
	.loc 1 148 14
	lw	a5,-24(s0)
	lw	a4,20(a5)
	.loc 1 148 20
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 148 23
	lbu	a5,0(a5)
	.loc 1 148 10
	bne	a5,zero,.L3
	.loc 1 149 11
	lw	a5,-24(s0)
	lw	a4,20(a5)
	.loc 1 149 17
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 149 26
	li	a4,1
	sb	a4,0(a5)
	.loc 1 150 11
	lw	a5,-24(s0)
	lw	a4,20(a5)
	.loc 1 150 17
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 150 31
	lbu	a4,-41(s0)
	sb	a4,1(a5)
	.loc 1 151 19
	lw	a5,-24(s0)
	lw	a4,20(a5)
	.loc 1 151 25
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 151 16
	addi	a5,a5,2
	.loc 1 151 9
	li	a2,6
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcpy
	.loc 1 154 16
	li	a5,0
	j	.L4
.L3:
	.loc 1 145 42 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	.loc 1 145 21 discriminator 1
	lw	a5,-24(s0)
	lhu	a5,16(a5)
	mv	a4,a5
	.loc 1 145 17 discriminator 1
	lw	a5,-20(s0)
	blt	a5,a4,.L5
	.loc 1 160 10
	li	a5,-1
.L4:
	.loc 1 161 1
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
	.size	bridgeif_fdb_add, .-bridgeif_fdb_add
	.section	.text.bridgeif_fdb_remove,"ax",@progbits
	.align	1
	.globl	bridgeif_fdb_remove
	.type	bridgeif_fdb_remove, @function
bridgeif_fdb_remove:
.LFB7:
	.loc 1 169 1
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
	.loc 1 174 6
	lw	a5,-36(s0)
	lw	a5,36(a5)
	sw	a5,-24(s0)
	.loc 1 178 10
	sw	zero,-20(s0)
	.loc 1 178 3
	j	.L7
.L10:
	.loc 1 179 11
	lw	a5,-24(s0)
	lw	a4,20(a5)
	.loc 1 179 17
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 179 20
	lbu	a5,0(a5)
	.loc 1 179 8
	beq	a5,zero,.L8
	.loc 1 179 40 discriminator 1
	lw	a5,-24(s0)
	lw	a4,20(a5)
	.loc 1 179 46 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 179 37 discriminator 1
	addi	a5,a5,2
	.loc 1 179 30 discriminator 1
	li	a2,6
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 1 179 26 discriminator 2
	bne	a5,zero,.L8
	.loc 1 181 13
	lw	a5,-24(s0)
	lw	a4,20(a5)
	.loc 1 181 19
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 181 22
	lbu	a5,0(a5)
	.loc 1 181 10
	beq	a5,zero,.L8
	.loc 1 181 42 discriminator 1
	lw	a5,-24(s0)
	lw	a4,20(a5)
	.loc 1 181 48 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 181 39 discriminator 1
	addi	a5,a5,2
	.loc 1 181 32 discriminator 1
	li	a2,6
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 1 181 28 discriminator 2
	bne	a5,zero,.L8
	.loc 1 182 19
	lw	a5,-24(s0)
	lw	a4,20(a5)
	.loc 1 182 25
	lw	a5,-20(s0)
	slli	a5,a5,3
	.loc 1 182 16
	add	a5,a4,a5
	.loc 1 182 9
	li	a2,8
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 1 185 16
	li	a5,0
	j	.L9
.L8:
	.loc 1 178 42 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L7:
	.loc 1 178 21 discriminator 1
	lw	a5,-24(s0)
	lhu	a5,16(a5)
	mv	a4,a5
	.loc 1 178 17 discriminator 1
	lw	a5,-20(s0)
	blt	a5,a4,.L10
	.loc 1 191 10
	li	a5,-6
.L9:
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
.LFE7:
	.size	bridgeif_fdb_remove, .-bridgeif_fdb_remove
	.section	.text.bridgeif_find_dst_ports,"ax",@progbits
	.align	1
	.type	bridgeif_find_dst_ports, @function
bridgeif_find_dst_ports:
.LFB8:
	.loc 1 197 1
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
	.loc 1 202 10
	sw	zero,-20(s0)
	.loc 1 202 3
	j	.L12
.L15:
	.loc 1 203 11
	lw	a5,-36(s0)
	lw	a4,20(a5)
	.loc 1 203 17
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 203 20
	lbu	a5,0(a5)
	.loc 1 203 8
	beq	a5,zero,.L13
	.loc 1 204 22
	lw	a5,-36(s0)
	lw	a4,20(a5)
	.loc 1 204 28
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 204 19
	addi	a5,a5,2
	.loc 1 204 12
	li	a2,6
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 1 204 10 discriminator 1
	bne	a5,zero,.L13
.LBB2:
	.loc 1 205 37
	lw	a5,-36(s0)
	lw	a4,20(a5)
	.loc 1 205 43
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	.loc 1 205 29
	lbu	a5,1(a5)
	sb	a5,-21(s0)
	.loc 1 207 16
	lbu	a5,-21(s0)
	j	.L14
.L13:
.LBE2:
	.loc 1 202 42 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L12:
	.loc 1 202 21 discriminator 1
	lw	a5,-36(s0)
	lhu	a5,16(a5)
	mv	a4,a5
	.loc 1 202 17 discriminator 1
	lw	a5,-20(s0)
	blt	a5,a4,.L15
	.loc 1 211 21
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 1 211 25
	andi	a5,a5,1
	.loc 1 211 6
	beq	a5,zero,.L16
	.loc 1 214 12
	li	a5,255
	j	.L14
.L16:
	.loc 1 218 10
	lw	a5,-36(s0)
	lw	a5,28(a5)
	lw	a1,-40(s0)
	mv	a0,a5
	call	bridgeif_fdb_get_dst_ports
	mv	a5,a0
.L14:
	.loc 1 219 1
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
	.size	bridgeif_find_dst_ports, .-bridgeif_find_dst_ports
	.section	.text.bridgeif_is_local_mac,"ax",@progbits
	.align	1
	.type	bridgeif_is_local_mac, @function
bridgeif_is_local_mac:
.LFB9:
	.loc 1 227 1
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
	.loc 1 230 17
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 230 24
	addi	a5,a5,62
	.loc 1 230 8
	li	a2,6
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 1 230 6 discriminator 1
	bne	a5,zero,.L18
	.loc 1 231 12
	li	a5,1
	j	.L19
.L18:
	.loc 1 234 10
	sw	zero,-20(s0)
	.loc 1 234 3
	j	.L20
.L22:
.LBB3:
	.loc 1 235 30
	lw	a5,-36(s0)
	lw	a3,12(a5)
	.loc 1 235 37
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	.loc 1 235 19
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 236 8
	lw	a5,-24(s0)
	beq	a5,zero,.L21
	.loc 1 237 25
	lw	a5,-24(s0)
	addi	a5,a5,62
	.loc 1 237 12
	li	a2,6
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	.loc 1 237 10 discriminator 1
	bne	a5,zero,.L21
	.loc 1 239 16
	li	a5,1
	j	.L19
.L21:
.LBE3:
	.loc 1 234 35 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L20:
	.loc 1 234 21 discriminator 1
	lw	a5,-36(s0)
	lbu	a5,11(a5)
	mv	a4,a5
	.loc 1 234 17 discriminator 1
	lw	a5,-20(s0)
	blt	a5,a4,.L22
	.loc 1 244 10
	li	a5,0
.L19:
	.loc 1 245 1
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
	.size	bridgeif_is_local_mac, .-bridgeif_is_local_mac
	.section	.text.bridgeif_send_to_port,"ax",@progbits
	.align	1
	.type	bridgeif_send_to_port, @function
bridgeif_send_to_port:
.LFB10:
	.loc 1 250 1
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
	.loc 1 251 6
	lbu	a4,-41(s0)
	li	a5,6
	bgtu	a4,a5,.L24
	.loc 1 253 25
	lw	a5,-36(s0)
	lbu	a5,10(a5)
	.loc 1 253 8
	lbu	a4,-41(s0)
	bgeu	a4,a5,.L24
.LBB4:
	.loc 1 254 32
	lw	a5,-36(s0)
	lw	a3,12(a5)
	.loc 1 254 39
	lbu	a4,-41(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	.loc 1 254 21
	lw	a5,4(a5)
	sw	a5,-20(s0)
	.loc 1 255 10
	lw	a5,-20(s0)
	beq	a5,zero,.L24
	.loc 1 255 37 discriminator 1
	lw	a5,-20(s0)
	lw	a5,24(a5)
	.loc 1 255 27 discriminator 1
	beq	a5,zero,.L24
	.loc 1 257 29
	lw	a5,-20(s0)
	lbu	a5,72(a5)
	.loc 1 257 14
	addi	a5,a5,1
	andi	a4,a5,0xff
	.loc 1 257 45
	lw	a5,-40(s0)
	lbu	a5,15(a5)
	.loc 1 257 12
	beq	a4,a5,.L24
	.loc 1 258 25
	lw	a5,-20(s0)
	lbu	a5,69(a5)
	.loc 1 258 15
	srli	a5,a5,2
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 258 14
	beq	a5,zero,.L24
	.loc 1 260 26
	lw	a5,-20(s0)
	lw	a5,24(a5)
	.loc 1 260 20
	lw	a1,-40(s0)
	lw	a0,-20(s0)
	jalr	a5
.LVL0:
	mv	a5,a0
	j	.L25
.L24:
.LBE4:
	.loc 1 268 10
	li	a5,0
.L25:
	.loc 1 269 1
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
	.size	bridgeif_send_to_port, .-bridgeif_send_to_port
	.section	.text.bridgeif_send_to_ports,"ax",@progbits
	.align	1
	.type	bridgeif_send_to_ports, @function
bridgeif_send_to_ports:
.LFB11:
	.loc 1 275 1
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
	.loc 1 276 14
	sb	zero,-17(s0)
	.loc 1 278 23
	li	a5,1
	sb	a5,-19(s0)
	.loc 1 281 10
	sb	zero,-18(s0)
	.loc 1 281 3
	j	.L27
.L29:
	.loc 1 282 9
	lbu	a5,-41(s0)
	mv	a4,a5
	lbu	a5,-19(s0)
	and	a5,a4,a5
	andi	a5,a5,0xff
	.loc 1 282 8
	beq	a5,zero,.L28
	.loc 1 283 13
	lbu	a5,-18(s0)
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	bridgeif_send_to_port
	mv	a5,a0
	sb	a5,-20(s0)
	.loc 1 284 10
	lb	a5,-20(s0)
	beq	a5,zero,.L28
	.loc 1 285 17
	lbu	a5,-20(s0)
	sb	a5,-17(s0)
.L28:
	.loc 1 281 23 discriminator 2
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
	.loc 1 281 32 discriminator 2
	lbu	a5,-19(s0)
	slli	a5,a5,1
	sb	a5,-19(s0)
.L27:
	.loc 1 281 17 discriminator 1
	lbu	a4,-18(s0)
	li	a5,6
	bleu	a4,a5,.L29
	.loc 1 290 10
	lb	a5,-17(s0)
	.loc 1 291 1
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
	.size	bridgeif_send_to_ports, .-bridgeif_send_to_ports
	.section	.text.bridgeif_output,"ax",@progbits
	.align	1
	.type	bridgeif_output, @function
bridgeif_output:
.LFB12:
	.loc 1 299 1
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
	.loc 1 301 23
	lw	a5,-36(s0)
	lw	a5,36(a5)
	sw	a5,-20(s0)
	.loc 1 302 20
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	.loc 1 304 34
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	bridgeif_find_dst_ports
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 1 305 9
	lbu	a5,-25(s0)
	mv	a2,a5
	lw	a1,-40(s0)
	lw	a0,-20(s0)
	call	bridgeif_send_to_ports
	mv	a5,a0
	sb	a5,-26(s0)
	.loc 1 317 20
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a5,0(a5)
	.loc 1 317 3
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	sh	a4,0(a5)
	.loc 1 319 10
	lb	a5,-26(s0)
	.loc 1 320 1
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
	.size	bridgeif_output, .-bridgeif_output
	.section	.text.bridgeif_input,"ax",@progbits
	.align	1
	.type	bridgeif_input, @function
bridgeif_input:
.LFB13:
	.loc 1 327 1
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
	.loc 1 333 6
	lw	a5,-52(s0)
	beq	a5,zero,.L34
	.loc 1 333 16 discriminator 1
	lw	a5,-56(s0)
	bne	a5,zero,.L35
.L34:
	.loc 1 334 12
	li	a5,-6
	j	.L36
.L35:
	.loc 1 336 49
	lui	a5,%hi(bridgeif_netif_client_id)
	lbu	a5,%lo(bridgeif_netif_client_id)(a5)
	.loc 1 336 8
	lw	a4,-56(s0)
	addi	a5,a5,8
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,8(a5)
	sw	a5,-20(s0)
	.loc 1 338 6
	lw	a5,-20(s0)
	beq	a5,zero,.L37
	.loc 1 338 26 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 338 19 discriminator 1
	bne	a5,zero,.L38
.L37:
	.loc 1 339 12
	li	a5,-6
	j	.L36
.L38:
	.loc 1 341 6
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 342 27
	lw	a5,-56(s0)
	lbu	a5,72(a5)
	.loc 1 342 10
	addi	a5,a5,1
	sb	a5,-25(s0)
	.loc 1 344 13
	lw	a5,-52(s0)
	lbu	a4,-25(s0)
	sb	a4,15(a5)
	.loc 1 346 7
	lw	a5,-52(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	.loc 1 347 39
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 347 7
	addi	a5,a5,6
	sw	a5,-36(s0)
	.loc 1 349 17
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 349 21
	andi	a5,a5,1
	.loc 1 349 6
	bne	a5,zero,.L39
	.loc 1 351 5
	lw	a5,-24(s0)
	lw	a4,28(a5)
	lw	a5,-20(s0)
	lbu	a5,8(a5)
	mv	a2,a5
	lw	a1,-36(s0)
	mv	a0,a4
	call	bridgeif_fdb_update_src
.L39:
	.loc 1 354 16
	lw	a5,-32(s0)
	lbu	a5,0(a5)
	.loc 1 354 20
	andi	a5,a5,1
	.loc 1 354 6
	beq	a5,zero,.L40
	.loc 1 356 16
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	bridgeif_find_dst_ports
	mv	a5,a0
	sb	a5,-37(s0)
	.loc 1 357 5
	lbu	a5,-37(s0)
	mv	a2,a5
	lw	a1,-52(s0)
	lw	a0,-24(s0)
	call	bridgeif_send_to_ports
	.loc 1 358 9
	lb	a5,-37(s0)
	.loc 1 358 8
	bge	a5,zero,.L41
	.loc 1 361 13
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 361 20
	lw	a5,16(a5)
	.loc 1 361 11
	lw	a4,-24(s0)
	lw	a4,0(a4)
	mv	a1,a4
	lw	a0,-52(s0)
	jalr	a5
.LVL1:
	mv	a5,a0
	.loc 1 361 10 discriminator 1
	beq	a5,zero,.L42
	.loc 1 362 9
	lw	a0,-52(s0)
	call	pbuf_free
	j	.L42
.L41:
	.loc 1 366 7
	lw	a0,-52(s0)
	call	pbuf_free
.L42:
	.loc 1 369 12
	li	a5,0
	j	.L36
.L40:
	.loc 1 372 9
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	bridgeif_is_local_mac
	mv	a5,a0
	.loc 1 372 8 discriminator 1
	beq	a5,zero,.L43
	.loc 1 375 16
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 375 23
	lw	a5,16(a5)
	.loc 1 375 14
	lw	a4,-24(s0)
	lw	a4,0(a4)
	mv	a1,a4
	lw	a0,-52(s0)
	jalr	a5
.LVL2:
	mv	a5,a0
	j	.L36
.L43:
	.loc 1 379 16
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	bridgeif_find_dst_ports
	mv	a5,a0
	sb	a5,-37(s0)
	.loc 1 380 5
	lbu	a5,-37(s0)
	mv	a2,a5
	lw	a1,-52(s0)
	lw	a0,-24(s0)
	call	bridgeif_send_to_ports
	.loc 1 383 5
	lw	a0,-52(s0)
	call	pbuf_free
	.loc 1 385 12
	li	a5,0
.L36:
	.loc 1 387 1
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
.LFE13:
	.size	bridgeif_input, .-bridgeif_input
	.section	.text.bridgeif_tcpip_input,"ax",@progbits
	.align	1
	.type	bridgeif_tcpip_input, @function
bridgeif_tcpip_input:
.LFB14:
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
	sw	a1,-24(s0)
	.loc 1 395 10
	lui	a5,%hi(bridgeif_input)
	addi	a2,a5,%lo(bridgeif_input)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	tcpip_inpkt
	mv	a5,a0
	.loc 1 396 1
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
.LFE14:
	.size	bridgeif_tcpip_input, .-bridgeif_tcpip_input
	.section	.rodata
	.align	2
.LC0:
	.string	"lwip"
	.section	.text.bridgeif_init,"ax",@progbits
	.align	1
	.globl	bridgeif_init
	.type	bridgeif_init, @function
bridgeif_init:
.LFB15:
	.loc 1 414 1
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
	.loc 1 428 32
	lui	a5,%hi(bridgeif_netif_client_id)
	lbu	a4,%lo(bridgeif_netif_client_id)(a5)
	.loc 1 428 6
	li	a5,255
	bne	a4,a5,.L47
	.loc 1 429 32
	call	netif_alloc_client_data_id
	mv	a5,a0
	mv	a4,a5
	.loc 1 429 30 discriminator 1
	lui	a5,%hi(bridgeif_netif_client_id)
	sb	a4,%lo(bridgeif_netif_client_id)(a5)
.L47:
	.loc 1 432 13
	lw	a5,-36(s0)
	lw	a5,36(a5)
	sw	a5,-20(s0)
	.loc 1 437 60
	lw	a5,-20(s0)
	lbu	a5,6(a5)
	mv	a4,a5
	.loc 1 437 72
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	.loc 1 437 110
	lw	a5,-20(s0)
	lhu	a5,10(a5)
	.loc 1 437 135
	slli	a5,a5,3
	.loc 1 437 98
	add	a5,a4,a5
	.loc 1 437 19
	addi	a5,a5,32
	sw	a5,-24(s0)
	.loc 1 438 13
	lw	a5,-24(s0)
	sh	a5,-26(s0)
	.loc 1 441 30
	lhu	a5,-26(s0)
	mv	a1,a5
	li	a0,1
	call	mem_calloc
	sw	a0,-32(s0)
	.loc 1 442 6
	lw	a5,-32(s0)
	bne	a5,zero,.L48
	.loc 1 444 12
	li	a5,-1
	j	.L49
.L48:
	.loc 1 446 10
	lw	a5,-32(s0)
	addi	a5,a5,4
	.loc 1 446 24
	lw	a4,-20(s0)
	.loc 1 446 3
	li	a2,6
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 1 447 13
	lw	a5,-32(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 1 449 28
	lw	a5,-20(s0)
	lbu	a4,6(a5)
	.loc 1 449 17
	lw	a5,-32(s0)
	sb	a4,10(a5)
	.loc 1 450 38
	lw	a5,-32(s0)
	addi	a4,a5,32
	.loc 1 450 13
	lw	a5,-32(s0)
	sw	a4,12(a5)
	.loc 1 452 35
	lw	a5,-20(s0)
	lhu	a4,10(a5)
	.loc 1 452 24
	lw	a5,-32(s0)
	sh	a4,16(a5)
	.loc 1 453 77
	lw	a5,-20(s0)
	lbu	a5,6(a5)
	mv	a4,a5
	.loc 1 453 89
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	.loc 1 453 65
	addi	a5,a5,32
	lw	a4,-32(s0)
	add	a4,a4,a5
	.loc 1 453 12
	lw	a5,-32(s0)
	sw	a4,20(a5)
	.loc 1 455 35
	lw	a5,-20(s0)
	lhu	a4,8(a5)
	.loc 1 455 24
	lw	a5,-32(s0)
	sh	a4,24(a5)
	.loc 1 456 14
	lw	a5,-20(s0)
	lhu	a5,8(a5)
	mv	a0,a5
	call	bridgeif_fdb_init
	mv	a4,a0
	.loc 1 456 12 discriminator 1
	lw	a5,-32(s0)
	sw	a4,28(a5)
	.loc 1 457 9
	lw	a5,-32(s0)
	lw	a5,28(a5)
	.loc 1 457 6
	bne	a5,zero,.L50
	.loc 1 459 5
	lw	a0,-32(s0)
	call	mem_free
	.loc 1 460 12
	li	a5,-1
	j	.L49
.L50:
	.loc 1 465 19
	lw	a5,-36(s0)
	lui	a4,%hi(.LC0)
	addi	a4,a4,%lo(.LC0)
	sw	a4,56(a5)
	.loc 1 475 16
	lw	a5,-36(s0)
	lw	a4,-32(s0)
	sw	a4,36(a5)
	.loc 1 476 18
	lw	a5,-36(s0)
	li	a4,98
	sb	a4,70(a5)
	.loc 1 477 18
	lw	a5,-36(s0)
	li	a4,114
	sb	a4,71(a5)
	.loc 1 483 17
	lw	a5,-36(s0)
	lui	a4,%hi(etharp_output)
	addi	a4,a4,%lo(etharp_output)
	sw	a4,20(a5)
	.loc 1 488 21
	lw	a5,-36(s0)
	lui	a4,%hi(bridgeif_output)
	addi	a4,a4,%lo(bridgeif_output)
	sw	a4,24(a5)
	.loc 1 491 21
	lw	a5,-36(s0)
	li	a4,6
	sb	a4,68(a5)
	.loc 1 494 15
	lw	a5,-36(s0)
	addi	a4,a5,62
	.loc 1 494 25
	lw	a5,-32(s0)
	addi	a5,a5,4
	.loc 1 494 3
	li	a2,6
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 1 497 14
	lw	a5,-36(s0)
	li	a4,1500
	sh	a4,60(a5)
	.loc 1 501 16
	lw	a5,-36(s0)
	li	a4,126
	sb	a4,69(a5)
	.loc 1 516 10
	li	a5,0
.L49:
	.loc 1 517 1
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
.LFE15:
	.size	bridgeif_init, .-bridgeif_init
	.section	.text.bridgeif_add_port,"ax",@progbits
	.align	1
	.globl	bridgeif_add_port
	.type	bridgeif_add_port, @function
bridgeif_add_port:
.LFB16:
	.loc 1 525 1
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
	.loc 1 533 15
	lw	a5,-40(s0)
	lbu	a5,69(a5)
	.loc 1 533 23
	andi	a5,a5,8
	.loc 1 533 6
	beq	a5,zero,.L52
	.loc 1 533 43 discriminator 1
	lw	a5,-40(s0)
	lbu	a5,69(a5)
	.loc 1 533 51 discriminator 1
	andi	a5,a5,16
	.loc 1 533 32 discriminator 1
	bne	a5,zero,.L53
.L52:
	.loc 1 535 12
	li	a5,-6
	j	.L54
.L53:
	.loc 1 538 6
	lw	a5,-36(s0)
	lw	a5,36(a5)
	sw	a5,-20(s0)
	.loc 1 540 9
	lw	a5,-20(s0)
	lbu	a4,11(a5)
	.loc 1 540 26
	lw	a5,-20(s0)
	lbu	a5,10(a5)
	.loc 1 540 6
	bltu	a4,a5,.L55
	.loc 1 541 12
	li	a5,-6
	j	.L54
.L55:
	.loc 1 543 13
	lw	a5,-20(s0)
	lw	a4,12(a5)
	.loc 1 543 23
	lw	a5,-20(s0)
	lbu	a5,11(a5)
	mv	a3,a5
	.loc 1 543 20
	mv	a5,a3
	slli	a5,a5,1
	add	a5,a5,a3
	slli	a5,a5,2
	.loc 1 543 8
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 544 20
	lw	a5,-24(s0)
	lw	a4,-40(s0)
	sw	a4,4(a5)
	.loc 1 545 22
	lw	a5,-20(s0)
	lbu	a4,11(a5)
	.loc 1 545 18
	lw	a5,-24(s0)
	sb	a4,8(a5)
	.loc 1 546 16
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 547 5
	lw	a5,-20(s0)
	lbu	a5,11(a5)
	.loc 1 547 16
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,11(a5)
	.loc 1 553 17
	lw	a5,-40(s0)
	lui	a4,%hi(bridgeif_tcpip_input)
	addi	a4,a4,%lo(bridgeif_tcpip_input)
	sw	a4,16(a5)
	.loc 1 556 24
	lui	a5,%hi(bridgeif_netif_client_id)
	lbu	a5,%lo(bridgeif_netif_client_id)(a5)
	.loc 1 556 53
	lw	a4,-40(s0)
	addi	a5,a5,8
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,8(a5)
	.loc 1 558 41
	lw	a5,-40(s0)
	lbu	a5,69(a5)
	.loc 1 558 26
	andi	a5,a5,-9
	andi	a4,a5,0xff
	.loc 1 558 24
	lw	a5,-40(s0)
	sb	a4,69(a5)
	.loc 1 560 10
	li	a5,0
.L54:
	.loc 1 561 1
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
	.size	bridgeif_add_port, .-bridgeif_add_port
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/netif/bridgeif.h"
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/prot/ethernet.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/mem.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/stats.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/etharp.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/include/lwip/tcpip.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf11
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x20
	.4byte	.LASF188
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x21
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x9
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x22
	.byte	0x4
	.uleb128 0x1c
	.4byte	0x84
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x18
	.4byte	0x8b
	.uleb128 0x5
	.4byte	0x92
	.uleb128 0x5
	.4byte	0xa6
	.uleb128 0x1c
	.4byte	0x9c
	.uleb128 0x23
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x22
	.byte	0x15
	.4byte	0x32
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x39
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x47
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x55
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0xb3
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0xa7
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0xbf
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xcb
	.uleb128 0x1d
	.byte	0x5
	.4byte	0x32
	.byte	0x5
	.byte	0x35
	.4byte	0x17a
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0
	.uleb128 0x7
	.4byte	.LASF23
	.sleb128 -1
	.uleb128 0x7
	.4byte	.LASF24
	.sleb128 -2
	.uleb128 0x7
	.4byte	.LASF25
	.sleb128 -3
	.uleb128 0x7
	.4byte	.LASF26
	.sleb128 -4
	.uleb128 0x7
	.4byte	.LASF27
	.sleb128 -5
	.uleb128 0x7
	.4byte	.LASF28
	.sleb128 -6
	.uleb128 0x7
	.4byte	.LASF29
	.sleb128 -7
	.uleb128 0x7
	.4byte	.LASF30
	.sleb128 -8
	.uleb128 0x7
	.4byte	.LASF31
	.sleb128 -9
	.uleb128 0x7
	.4byte	.LASF32
	.sleb128 -10
	.uleb128 0x7
	.4byte	.LASF33
	.sleb128 -11
	.uleb128 0x7
	.4byte	.LASF34
	.sleb128 -12
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 -13
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 -14
	.uleb128 0x7
	.4byte	.LASF37
	.sleb128 -15
	.uleb128 0x7
	.4byte	.LASF38
	.sleb128 -16
	.byte	0
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x5
	.byte	0x60
	.byte	0xe
	.4byte	0xe3
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x6
	.byte	0x7
	.byte	0x3c
	.byte	0x8
	.4byte	0x1a1
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x7
	.byte	0x3d
	.byte	0x8
	.4byte	0x1a6
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x186
	.uleb128 0x13
	.4byte	0xd7
	.4byte	0x1b6
	.uleb128 0x14
	.4byte	0x6a
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x6
	.byte	0x36
	.byte	0xe
	.4byte	0xd7
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0xc
	.byte	0x6
	.byte	0x46
	.byte	0x10
	.4byte	0x204
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x6
	.byte	0x48
	.byte	0x13
	.4byte	0x186
	.byte	0
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x6
	.byte	0x4b
	.byte	0x8
	.4byte	0xd7
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x6
	.byte	0x4e
	.byte	0x9
	.4byte	0xef
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x6
	.byte	0x50
	.byte	0x9
	.4byte	0xef
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x6
	.byte	0x51
	.byte	0x3
	.4byte	0x1c2
	.uleb128 0x13
	.4byte	0x84
	.4byte	0x220
	.uleb128 0x14
	.4byte	0x6a
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x4
	.byte	0x8
	.byte	0x33
	.byte	0x8
	.4byte	0x23b
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x8
	.byte	0x34
	.byte	0x9
	.4byte	0xfb
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x8
	.byte	0x39
	.byte	0x19
	.4byte	0x220
	.uleb128 0x18
	.4byte	0x23b
	.uleb128 0x24
	.4byte	.LASF51
	.byte	0x9
	.2byte	0x126
	.byte	0x14
	.4byte	0x23b
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x10
	.byte	0xa
	.byte	0xba
	.byte	0x8
	.4byte	0x2cf
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0xa
	.byte	0xbc
	.byte	0x10
	.4byte	0x2cf
	.byte	0
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0xa
	.byte	0xbf
	.byte	0x9
	.4byte	0x84
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xa
	.byte	0xc8
	.byte	0x9
	.4byte	0xef
	.byte	0x8
	.uleb128 0xa
	.string	"len"
	.byte	0xa
	.byte	0xcb
	.byte	0x9
	.4byte	0xef
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0xa
	.byte	0xd0
	.byte	0x8
	.4byte	0xd7
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0xa
	.byte	0xd3
	.byte	0x8
	.4byte	0xd7
	.byte	0xd
	.uleb128 0xa
	.string	"ref"
	.byte	0xa
	.byte	0xda
	.byte	0x8
	.4byte	0xd7
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0xa
	.byte	0xdd
	.byte	0x8
	.4byte	0xd7
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	0x259
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0xb
	.byte	0x43
	.byte	0xf
	.4byte	0xef
	.uleb128 0x1d
	.byte	0x7
	.4byte	0x39
	.byte	0xc
	.byte	0x34
	.4byte	0x34d
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xd
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0xe
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	.LASF76
	.byte	0xa
	.byte	0xd
	.byte	0x62
	.byte	0x8
	.4byte	0x39c
	.uleb128 0xa
	.string	"err"
	.byte	0xd
	.byte	0x66
	.byte	0x9
	.4byte	0xef
	.byte	0
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0xd
	.byte	0x67
	.byte	0xe
	.4byte	0x2d4
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xd
	.byte	0x68
	.byte	0xe
	.4byte	0x2d4
	.byte	0x4
	.uleb128 0xa
	.string	"max"
	.byte	0xd
	.byte	0x69
	.byte	0xe
	.4byte	0x2d4
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xd
	.byte	0x6a
	.byte	0x9
	.4byte	0xef
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	0x34d
	.uleb128 0x8
	.4byte	.LASF80
	.byte	0x18
	.byte	0xd
	.byte	0x40
	.byte	0x8
	.4byte	0x44a
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xd
	.byte	0x41
	.byte	0x9
	.4byte	0xef
	.byte	0
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xd
	.byte	0x42
	.byte	0x9
	.4byte	0xef
	.byte	0x2
	.uleb128 0xa
	.string	"fw"
	.byte	0xd
	.byte	0x43
	.byte	0x9
	.4byte	0xef
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0xd
	.byte	0x44
	.byte	0x9
	.4byte	0xef
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0xd
	.byte	0x45
	.byte	0x9
	.4byte	0xef
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0xd
	.byte	0x46
	.byte	0x9
	.4byte	0xef
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0xd
	.byte	0x47
	.byte	0x9
	.4byte	0xef
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0xd
	.byte	0x48
	.byte	0x9
	.4byte	0xef
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0xd
	.byte	0x49
	.byte	0x9
	.4byte	0xef
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xd
	.byte	0x4a
	.byte	0x9
	.4byte	0xef
	.byte	0x12
	.uleb128 0xa
	.string	"err"
	.byte	0xd
	.byte	0x4b
	.byte	0x9
	.4byte	0xef
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0xd
	.byte	0x4c
	.byte	0x9
	.4byte	0xef
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.4byte	.LASF91
	.byte	0x1c
	.byte	0xd
	.byte	0x50
	.byte	0x8
	.4byte	0x50e
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xd
	.byte	0x51
	.byte	0x9
	.4byte	0xef
	.byte	0
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xd
	.byte	0x52
	.byte	0x9
	.4byte	0xef
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0xd
	.byte	0x53
	.byte	0x9
	.4byte	0xef
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0xd
	.byte	0x54
	.byte	0x9
	.4byte	0xef
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0xd
	.byte	0x55
	.byte	0x9
	.4byte	0xef
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0xd
	.byte	0x56
	.byte	0x9
	.4byte	0xef
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0xd
	.byte	0x57
	.byte	0x9
	.4byte	0xef
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0xd
	.byte	0x58
	.byte	0x9
	.4byte	0xef
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0xd
	.byte	0x59
	.byte	0x9
	.4byte	0xef
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0xd
	.byte	0x5a
	.byte	0x9
	.4byte	0xef
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0xd
	.byte	0x5b
	.byte	0x9
	.4byte	0xef
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0xd
	.byte	0x5c
	.byte	0x9
	.4byte	0xef
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0xd
	.byte	0x5d
	.byte	0x9
	.4byte	0xef
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0xd
	.byte	0x5e
	.byte	0x9
	.4byte	0xef
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.4byte	.LASF99
	.byte	0x6
	.byte	0xd
	.byte	0x6e
	.byte	0x8
	.4byte	0x543
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xd
	.byte	0x6f
	.byte	0x9
	.4byte	0xef
	.byte	0
	.uleb128 0xa
	.string	"max"
	.byte	0xd
	.byte	0x70
	.byte	0x9
	.4byte	0xef
	.byte	0x2
	.uleb128 0xa
	.string	"err"
	.byte	0xd
	.byte	0x71
	.byte	0x9
	.4byte	0xef
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF100
	.byte	0x12
	.byte	0xd
	.byte	0x75
	.byte	0x8
	.4byte	0x578
	.uleb128 0xa
	.string	"sem"
	.byte	0xd
	.byte	0x76
	.byte	0x18
	.4byte	0x50e
	.byte	0
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0xd
	.byte	0x77
	.byte	0x18
	.4byte	0x50e
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0xd
	.byte	0x78
	.byte	0x18
	.4byte	0x50e
	.byte	0xc
	.byte	0
	.uleb128 0x25
	.4byte	.LASF103
	.2byte	0x108
	.byte	0xd
	.byte	0xeb
	.byte	0x8
	.4byte	0x60e
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0xd
	.byte	0xee
	.byte	0x16
	.4byte	0x3a1
	.byte	0
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0xd
	.byte	0xf2
	.byte	0x16
	.4byte	0x3a1
	.byte	0x18
	.uleb128 0xa
	.string	"ip"
	.byte	0xd
	.byte	0xfa
	.byte	0x16
	.4byte	0x3a1
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0xd
	.byte	0xfe
	.byte	0x16
	.4byte	0x3a1
	.byte	0x48
	.uleb128 0x6
	.4byte	.LASF107
	.byte	0xd
	.2byte	0x102
	.byte	0x15
	.4byte	0x44a
	.byte	0x60
	.uleb128 0xf
	.string	"udp"
	.byte	0xd
	.2byte	0x106
	.byte	0x16
	.4byte	0x3a1
	.byte	0x7c
	.uleb128 0xf
	.string	"tcp"
	.byte	0xd
	.2byte	0x10a
	.byte	0x16
	.4byte	0x3a1
	.byte	0x94
	.uleb128 0xf
	.string	"mem"
	.byte	0xd
	.2byte	0x10e
	.byte	0x14
	.4byte	0x34d
	.byte	0xac
	.uleb128 0x6
	.4byte	.LASF108
	.byte	0xd
	.2byte	0x112
	.byte	0x15
	.4byte	0x60e
	.byte	0xb8
	.uleb128 0xf
	.string	"sys"
	.byte	0xd
	.2byte	0x116
	.byte	0x14
	.4byte	0x543
	.byte	0xf4
	.byte	0
	.uleb128 0x13
	.4byte	0x39c
	.4byte	0x61e
	.uleb128 0x14
	.4byte	0x6a
	.byte	0xe
	.byte	0
	.uleb128 0x26
	.4byte	.LASF189
	.byte	0xd
	.2byte	0x133
	.byte	0x16
	.4byte	0x578
	.uleb128 0x1e
	.4byte	.LASF113
	.4byte	0x39
	.byte	0x71
	.4byte	0x652
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0x3
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF114
	.4byte	0x39
	.byte	0x9f
	.4byte	0x66d
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x672
	.uleb128 0x27
	.4byte	.LASF117
	.byte	0x54
	.byte	0xe
	.2byte	0x10d
	.byte	0x8
	.4byte	0x798
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0xe
	.2byte	0x110
	.byte	0x11
	.4byte	0x66d
	.byte	0
	.uleb128 0x6
	.4byte	.LASF118
	.byte	0xe
	.2byte	0x115
	.byte	0xd
	.4byte	0x24c
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF119
	.byte	0xe
	.2byte	0x116
	.byte	0xd
	.4byte	0x24c
	.byte	0x8
	.uleb128 0xf
	.string	"gw"
	.byte	0xe
	.2byte	0x117
	.byte	0xd
	.4byte	0x24c
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF120
	.byte	0xe
	.2byte	0x129
	.byte	0x12
	.4byte	0x798
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF121
	.byte	0xe
	.2byte	0x12f
	.byte	0x13
	.4byte	0x7bd
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF122
	.byte	0xe
	.2byte	0x134
	.byte	0x17
	.4byte	0x7ec
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF123
	.byte	0xe
	.2byte	0x13f
	.byte	0x1c
	.4byte	0x811
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF124
	.byte	0xe
	.2byte	0x144
	.byte	0x1c
	.4byte	0x811
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF125
	.byte	0xe
	.2byte	0x14c
	.byte	0x9
	.4byte	0x84
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF126
	.byte	0xe
	.2byte	0x14e
	.byte	0x9
	.4byte	0x210
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF127
	.byte	0xe
	.2byte	0x152
	.byte	0xf
	.4byte	0x97
	.byte	0x38
	.uleb128 0xf
	.string	"mtu"
	.byte	0xe
	.2byte	0x158
	.byte	0x9
	.4byte	0xef
	.byte	0x3c
	.uleb128 0x6
	.4byte	.LASF128
	.byte	0xe
	.2byte	0x15e
	.byte	0x8
	.4byte	0x1a6
	.byte	0x3e
	.uleb128 0x6
	.4byte	.LASF129
	.byte	0xe
	.2byte	0x160
	.byte	0x8
	.4byte	0xd7
	.byte	0x44
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0xe
	.2byte	0x162
	.byte	0x8
	.4byte	0xd7
	.byte	0x45
	.uleb128 0x6
	.4byte	.LASF130
	.byte	0xe
	.2byte	0x164
	.byte	0x8
	.4byte	0x857
	.byte	0x46
	.uleb128 0xf
	.string	"num"
	.byte	0xe
	.2byte	0x167
	.byte	0x8
	.4byte	0xd7
	.byte	0x48
	.uleb128 0x6
	.4byte	.LASF131
	.byte	0xe
	.2byte	0x17d
	.byte	0x1c
	.4byte	0x82d
	.byte	0x4c
	.uleb128 0x6
	.4byte	.LASF132
	.byte	0xe
	.2byte	0x185
	.byte	0xf
	.4byte	0x86c
	.byte	0x50
	.byte	0
	.uleb128 0x4
	.4byte	.LASF133
	.byte	0xe
	.byte	0xb5
	.byte	0x11
	.4byte	0x7a4
	.uleb128 0x5
	.4byte	0x7a9
	.uleb128 0x15
	.4byte	0x17a
	.4byte	0x7bd
	.uleb128 0x2
	.4byte	0x2cf
	.uleb128 0x2
	.4byte	0x66d
	.byte	0
	.uleb128 0x4
	.4byte	.LASF134
	.byte	0xe
	.byte	0xc0
	.byte	0x11
	.4byte	0x7c9
	.uleb128 0x5
	.4byte	0x7ce
	.uleb128 0x15
	.4byte	0x17a
	.4byte	0x7e7
	.uleb128 0x2
	.4byte	0x66d
	.uleb128 0x2
	.4byte	0x2cf
	.uleb128 0x2
	.4byte	0x7e7
	.byte	0
	.uleb128 0x5
	.4byte	0x247
	.uleb128 0x4
	.4byte	.LASF135
	.byte	0xe
	.byte	0xd7
	.byte	0x11
	.4byte	0x7f8
	.uleb128 0x5
	.4byte	0x7fd
	.uleb128 0x15
	.4byte	0x17a
	.4byte	0x811
	.uleb128 0x2
	.4byte	0x66d
	.uleb128 0x2
	.4byte	0x2cf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF136
	.byte	0xe
	.byte	0xd9
	.byte	0x10
	.4byte	0x81d
	.uleb128 0x5
	.4byte	0x822
	.uleb128 0x28
	.4byte	0x82d
	.uleb128 0x2
	.4byte	0x66d
	.byte	0
	.uleb128 0x4
	.4byte	.LASF137
	.byte	0xe
	.byte	0xdc
	.byte	0x11
	.4byte	0x839
	.uleb128 0x5
	.4byte	0x83e
	.uleb128 0x15
	.4byte	0x17a
	.4byte	0x857
	.uleb128 0x2
	.4byte	0x66d
	.uleb128 0x2
	.4byte	0x7e7
	.uleb128 0x2
	.4byte	0x652
	.byte	0
	.uleb128 0x13
	.4byte	0x8b
	.4byte	0x867
	.uleb128 0x14
	.4byte	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.string	"acd"
	.uleb128 0x5
	.4byte	0x867
	.uleb128 0x8
	.4byte	.LASF138
	.byte	0xc
	.byte	0x1
	.byte	0x62
	.byte	0x10
	.4byte	0x8a6
	.uleb128 0x1
	.4byte	.LASF139
	.byte	0x1
	.byte	0x63
	.byte	0x1e
	.4byte	0x929
	.byte	0
	.uleb128 0x1
	.4byte	.LASF140
	.byte	0x1
	.byte	0x64
	.byte	0x11
	.4byte	0x66d
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0x1
	.byte	0x65
	.byte	0x8
	.4byte	0xd7
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	.LASF142
	.byte	0x20
	.byte	0x1
	.byte	0x6e
	.byte	0x10
	.4byte	0x929
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x1
	.byte	0x6f
	.byte	0x11
	.4byte	0x66d
	.byte	0
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x1
	.byte	0x70
	.byte	0x13
	.4byte	0x186
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x1
	.byte	0x71
	.byte	0x8
	.4byte	0xd7
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0x1
	.byte	0x72
	.byte	0x8
	.4byte	0xd7
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF144
	.byte	0x1
	.byte	0x73
	.byte	0x14
	.4byte	0x97b
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0x1
	.byte	0x74
	.byte	0x9
	.4byte	0xef
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0x1
	.byte	0x75
	.byte	0x20
	.4byte	0x980
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF147
	.byte	0x1
	.byte	0x76
	.byte	0x9
	.4byte	0xef
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0x1
	.byte	0x77
	.byte	0x9
	.4byte	0x84
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	0x8a6
	.uleb128 0x4
	.4byte	.LASF149
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.4byte	0x871
	.uleb128 0x8
	.4byte	.LASF150
	.byte	0x8
	.byte	0x1
	.byte	0x68
	.byte	0x10
	.4byte	0x96f
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x1
	.byte	0x69
	.byte	0x8
	.4byte	0xd7
	.byte	0
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0x1
	.byte	0x6a
	.byte	0x17
	.4byte	0x1b6
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x1
	.byte	0x6b
	.byte	0x13
	.4byte	0x186
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF152
	.byte	0x1
	.byte	0x6c
	.byte	0x3
	.4byte	0x93a
	.uleb128 0x5
	.4byte	0x92e
	.uleb128 0x5
	.4byte	0x96f
	.uleb128 0x4
	.4byte	.LASF153
	.byte	0x1
	.byte	0x78
	.byte	0x3
	.4byte	0x8a6
	.uleb128 0x19
	.4byte	.LASF167
	.byte	0x7b
	.byte	0xd
	.4byte	0xd7
	.uleb128 0x5
	.byte	0x3
	.4byte	bridgeif_netif_client_id
	.uleb128 0xd
	.4byte	.LASF154
	.byte	0xf
	.byte	0x51
	.byte	0x7
	.4byte	0x17a
	.4byte	0x9c2
	.uleb128 0x2
	.4byte	0x66d
	.uleb128 0x2
	.4byte	0x2cf
	.uleb128 0x2
	.4byte	0x7e7
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF159
	.byte	0xb
	.byte	0x4c
	.4byte	0x9d3
	.uleb128 0x2
	.4byte	0x84
	.byte	0
	.uleb128 0xd
	.4byte	.LASF155
	.byte	0x6
	.byte	0x66
	.byte	0x7
	.4byte	0x84
	.4byte	0x9e9
	.uleb128 0x2
	.4byte	0xef
	.byte	0
	.uleb128 0xd
	.4byte	.LASF156
	.byte	0xb
	.byte	0x4b
	.byte	0x7
	.4byte	0x84
	.4byte	0xa04
	.uleb128 0x2
	.4byte	0x2d4
	.uleb128 0x2
	.4byte	0x2d4
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF190
	.byte	0xe
	.byte	0xe7
	.byte	0x6
	.4byte	0xd7
	.uleb128 0xd
	.4byte	.LASF157
	.byte	0x10
	.byte	0x4f
	.byte	0x7
	.4byte	0x17a
	.4byte	0xa30
	.uleb128 0x2
	.4byte	0x2cf
	.uleb128 0x2
	.4byte	0x66d
	.uleb128 0x2
	.4byte	0x798
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF158
	.byte	0xa
	.2byte	0x125
	.byte	0x6
	.4byte	0xd7
	.4byte	0xa47
	.uleb128 0x2
	.4byte	0x2cf
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF160
	.byte	0x6
	.byte	0x64
	.4byte	0xa62
	.uleb128 0x2
	.4byte	0x84
	.uleb128 0x2
	.4byte	0xa62
	.uleb128 0x2
	.4byte	0xd7
	.byte	0
	.uleb128 0x5
	.4byte	0x186
	.uleb128 0xd
	.4byte	.LASF161
	.byte	0x6
	.byte	0x65
	.byte	0x15
	.4byte	0x1b6
	.4byte	0xa82
	.uleb128 0x2
	.4byte	0x84
	.uleb128 0x2
	.4byte	0xa62
	.byte	0
	.uleb128 0xd
	.4byte	.LASF162
	.byte	0x11
	.byte	0x21
	.byte	0x8
	.4byte	0x84
	.4byte	0xaa2
	.uleb128 0x2
	.4byte	0x84
	.uleb128 0x2
	.4byte	0x2b
	.uleb128 0x2
	.4byte	0x71
	.byte	0
	.uleb128 0xd
	.4byte	.LASF163
	.byte	0x11
	.byte	0x1e
	.byte	0x5
	.4byte	0x2b
	.4byte	0xac2
	.uleb128 0x2
	.4byte	0x9c
	.uleb128 0x2
	.4byte	0x9c
	.uleb128 0x2
	.4byte	0x71
	.byte	0
	.uleb128 0xd
	.4byte	.LASF164
	.byte	0x11
	.byte	0x1f
	.byte	0x8
	.4byte	0x84
	.4byte	0xae2
	.uleb128 0x2
	.4byte	0x86
	.uleb128 0x2
	.4byte	0xa1
	.uleb128 0x2
	.4byte	0x71
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x20c
	.byte	0x1
	.4byte	0x17a
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb39
	.uleb128 0x10
	.4byte	.LASF165
	.2byte	0x20c
	.byte	0x21
	.4byte	0x66d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.4byte	.LASF166
	.2byte	0x20c
	.byte	0x39
	.4byte	0x66d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"br"
	.2byte	0x20e
	.byte	0x17
	.4byte	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF168
	.2byte	0x20f
	.byte	0x14
	.4byte	0x97b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	0x985
	.uleb128 0x2d
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x19d
	.byte	0x1
	.4byte	0x17a
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba4
	.uleb128 0x10
	.4byte	.LASF117
	.2byte	0x19d
	.byte	0x1d
	.4byte	0x66d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.4byte	.LASF171
	.2byte	0x19f
	.byte	0x18
	.4byte	0xba4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"br"
	.2byte	0x1a0
	.byte	0x17
	.4byte	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.4byte	.LASF172
	.2byte	0x1a1
	.byte	0xa
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.4byte	.LASF173
	.2byte	0x1a2
	.byte	0xe
	.4byte	0x2d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x5
	.4byte	0x204
	.uleb128 0x16
	.4byte	.LASF174
	.2byte	0x189
	.4byte	0x17a
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbdf
	.uleb128 0x12
	.string	"p"
	.2byte	0x189
	.byte	0x23
	.4byte	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	.LASF117
	.2byte	0x189
	.byte	0x34
	.4byte	0x66d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.4byte	.LASF175
	.2byte	0x146
	.4byte	0x17a
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc6e
	.uleb128 0x12
	.string	"p"
	.2byte	0x146
	.byte	0x1d
	.4byte	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.4byte	.LASF117
	.2byte	0x146
	.byte	0x2e
	.4byte	0x66d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.4byte	.LASF176
	.2byte	0x148
	.byte	0x8
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0xc
	.4byte	.LASF177
	.2byte	0x149
	.byte	0x17
	.4byte	0x1b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0xb
	.string	"src"
	.2byte	0x14a
	.byte	0x14
	.4byte	0xa62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.string	"dst"
	.2byte	0x14a
	.byte	0x1a
	.4byte	0xa62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.string	"br"
	.2byte	0x14b
	.byte	0x17
	.4byte	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.4byte	.LASF168
	.2byte	0x14c
	.byte	0x14
	.4byte	0x97b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF178
	.2byte	0x12a
	.4byte	0x17a
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcdf
	.uleb128 0x10
	.4byte	.LASF117
	.2byte	0x12a
	.byte	0x1f
	.4byte	0x66d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"p"
	.2byte	0x12a
	.byte	0x33
	.4byte	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"err"
	.2byte	0x12c
	.byte	0x9
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xb
	.string	"br"
	.2byte	0x12d
	.byte	0x17
	.4byte	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"dst"
	.2byte	0x12e
	.byte	0x14
	.4byte	0xa62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.4byte	.LASF177
	.2byte	0x130
	.byte	0x17
	.4byte	0x1b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x16
	.4byte	.LASF179
	.2byte	0x112
	.4byte	0x17a
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd5d
	.uleb128 0x12
	.string	"br"
	.2byte	0x112
	.byte	0x2c
	.4byte	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"p"
	.2byte	0x112
	.byte	0x3d
	.4byte	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.4byte	.LASF177
	.2byte	0x112
	.byte	0x54
	.4byte	0x1b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0xb
	.string	"err"
	.2byte	0x114
	.byte	0x9
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF180
	.2byte	0x114
	.byte	0xe
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xb
	.string	"i"
	.2byte	0x115
	.byte	0x8
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0xc
	.4byte	.LASF181
	.2byte	0x116
	.byte	0x17
	.4byte	0x1b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF182
	.byte	0xf9
	.4byte	0x17a
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdb5
	.uleb128 0x17
	.string	"br"
	.byte	0xf9
	.byte	0x2b
	.4byte	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.string	"p"
	.byte	0xf9
	.byte	0x3c
	.4byte	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.4byte	.LASF183
	.byte	0xf9
	.byte	0x44
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1b
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x19
	.4byte	.LASF166
	.byte	0xfe
	.byte	0x15
	.4byte	0x66d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF184
	.byte	0xe2
	.4byte	0x2b
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe0d
	.uleb128 0x17
	.string	"br"
	.byte	0xe2
	.byte	0x2b
	.4byte	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0xe2
	.byte	0x40
	.4byte	0xa62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"i"
	.byte	0xe4
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x19
	.4byte	.LASF166
	.byte	0xeb
	.byte	0x13
	.4byte	0x66d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF185
	.byte	0xc4
	.4byte	0x1b6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe65
	.uleb128 0x17
	.string	"br"
	.byte	0xc4
	.byte	0x2d
	.4byte	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.4byte	.LASF186
	.byte	0xc4
	.byte	0x42
	.4byte	0xa62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"i"
	.byte	0xc6
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x11
	.string	"ret"
	.byte	0xcd
	.byte	0x1d
	.4byte	0x1b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF187
	.byte	0x1
	.byte	0xa8
	.byte	0x1
	.4byte	0x17a
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb5
	.uleb128 0xe
	.4byte	.LASF165
	.byte	0xa8
	.byte	0x23
	.4byte	0x66d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0xa8
	.byte	0x44
	.4byte	0xeb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"i"
	.byte	0xaa
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.string	"br"
	.byte	0xab
	.byte	0x17
	.4byte	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	0x1a1
	.uleb128 0x2f
	.4byte	.LASF191
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.4byte	0x17a
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF165
	.byte	0x87
	.byte	0x20
	.4byte	0x66d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x87
	.byte	0x41
	.4byte	0xeb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.4byte	.LASF144
	.byte	0x87
	.byte	0x5b
	.4byte	0x1b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x11
	.string	"i"
	.byte	0x89
	.byte	0x7
	.4byte	0x2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.string	"br"
	.byte	0x8a
	.byte	0x17
	.4byte	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x1e
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
	.sleb128 14
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.4byte	0x6c
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF41:
	.string	"eth_addr"
.LASF174:
	.string	"bridgeif_tcpip_input"
.LASF159:
	.string	"mem_free"
.LASF63:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF120:
	.string	"input"
.LASF158:
	.string	"pbuf_free"
.LASF44:
	.string	"ethaddr"
.LASF111:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF57:
	.string	"flags"
.LASF37:
	.string	"ERR_CLSD"
.LASF30:
	.string	"ERR_USE"
.LASF177:
	.string	"dstports"
.LASF38:
	.string	"ERR_ARG"
.LASF95:
	.string	"rx_report"
.LASF10:
	.string	"unsigned int"
.LASF53:
	.string	"next"
.LASF39:
	.string	"err_t"
.LASF150:
	.string	"bridgeif_fdb_static_entry_s"
.LASF152:
	.string	"bridgeif_fdb_static_entry_t"
.LASF122:
	.string	"linkoutput"
.LASF20:
	.string	"u16_t"
.LASF187:
	.string	"bridgeif_fdb_remove"
.LASF172:
	.string	"alloc_len_sizet"
.LASF148:
	.string	"fdbd"
.LASF76:
	.string	"stats_mem"
.LASF134:
	.string	"netif_output_fn"
.LASF74:
	.string	"MEMP_PBUF_POOL"
.LASF189:
	.string	"lwip_stats"
.LASF142:
	.string	"bridgeif_private_s"
.LASF153:
	.string	"bridgeif_private_t"
.LASF36:
	.string	"ERR_RST"
.LASF139:
	.string	"bridge"
.LASF31:
	.string	"ERR_ALREADY"
.LASF99:
	.string	"stats_syselem"
.LASF140:
	.string	"port_netif"
.LASF133:
	.string	"netif_input_fn"
.LASF17:
	.string	"uint32_t"
.LASF14:
	.string	"int8_t"
.LASF180:
	.string	"ret_err"
.LASF70:
	.string	"MEMP_IGMP_GROUP"
.LASF68:
	.string	"MEMP_TCPIP_MSG_API"
.LASF89:
	.string	"opterr"
.LASF101:
	.string	"mutex"
.LASF179:
	.string	"bridgeif_send_to_ports"
.LASF79:
	.string	"illegal"
.LASF97:
	.string	"tx_leave"
.LASF128:
	.string	"hwaddr"
.LASF105:
	.string	"etharp"
.LASF9:
	.string	"long long unsigned int"
.LASF156:
	.string	"mem_calloc"
.LASF107:
	.string	"igmp"
.LASF50:
	.string	"ip4_addr_t"
.LASF129:
	.string	"hwaddr_len"
.LASF28:
	.string	"ERR_VAL"
.LASF69:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF78:
	.string	"used"
.LASF103:
	.string	"stats_"
.LASF186:
	.string	"dst_addr"
.LASF143:
	.string	"num_ports"
.LASF56:
	.string	"type_internal"
.LASF55:
	.string	"tot_len"
.LASF13:
	.string	"size_t"
.LASF54:
	.string	"payload"
.LASF121:
	.string	"output"
.LASF161:
	.string	"bridgeif_fdb_get_dst_ports"
.LASF52:
	.string	"pbuf"
.LASF185:
	.string	"bridgeif_find_dst_ports"
.LASF184:
	.string	"bridgeif_is_local_mac"
.LASF75:
	.string	"MEMP_MAX"
.LASF183:
	.string	"dstport_idx"
.LASF19:
	.string	"s8_t"
.LASF173:
	.string	"alloc_len"
.LASF155:
	.string	"bridgeif_fdb_init"
.LASF67:
	.string	"MEMP_NETCONN"
.LASF94:
	.string	"rx_general"
.LASF29:
	.string	"ERR_WOULDBLOCK"
.LASF25:
	.string	"ERR_TIMEOUT"
.LASF166:
	.string	"portif"
.LASF73:
	.string	"MEMP_PBUF"
.LASF126:
	.string	"client_data"
.LASF12:
	.string	"char"
.LASF59:
	.string	"mem_size_t"
.LASF137:
	.string	"netif_igmp_mac_filter_fn"
.LASF131:
	.string	"igmp_mac_filter"
.LASF80:
	.string	"stats_proto"
.LASF175:
	.string	"bridgeif_input"
.LASF190:
	.string	"netif_alloc_client_data_id"
.LASF116:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF48:
	.string	"bridgeif_initdata_t"
.LASF15:
	.string	"uint8_t"
.LASF127:
	.string	"hostname"
.LASF124:
	.string	"link_callback"
.LASF66:
	.string	"MEMP_NETBUF"
.LASF119:
	.string	"netmask"
.LASF8:
	.string	"long long int"
.LASF34:
	.string	"ERR_IF"
.LASF123:
	.string	"status_callback"
.LASF62:
	.string	"MEMP_TCP_PCB"
.LASF108:
	.string	"memp"
.LASF18:
	.string	"u8_t"
.LASF162:
	.string	"memset"
.LASF84:
	.string	"chkerr"
.LASF181:
	.string	"mask"
.LASF171:
	.string	"init_data"
.LASF65:
	.string	"MEMP_ALTCP_PCB"
.LASF115:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF146:
	.string	"fdbs"
.LASF167:
	.string	"bridgeif_netif_client_id"
.LASF11:
	.string	"long double"
.LASF16:
	.string	"uint16_t"
.LASF58:
	.string	"if_idx"
.LASF151:
	.string	"dst_ports"
.LASF154:
	.string	"etharp_output"
.LASF46:
	.string	"max_fdb_dynamic_entries"
.LASF24:
	.string	"ERR_BUF"
.LASF149:
	.string	"bridgeif_port_t"
.LASF138:
	.string	"bridgeif_port_private_s"
.LASF160:
	.string	"bridgeif_fdb_update_src"
.LASF21:
	.string	"u32_t"
.LASF147:
	.string	"max_fdbd_entries"
.LASF4:
	.string	"short int"
.LASF106:
	.string	"icmp"
.LASF6:
	.string	"long int"
.LASF87:
	.string	"rterr"
.LASF77:
	.string	"avail"
.LASF169:
	.string	"bridgeif_add_port"
.LASF71:
	.string	"MEMP_SYS_TIMEOUT"
.LASF163:
	.string	"memcmp"
.LASF61:
	.string	"MEMP_UDP_PCB"
.LASF102:
	.string	"mbox"
.LASF27:
	.string	"ERR_INPROGRESS"
.LASF49:
	.string	"ip4_addr"
.LASF32:
	.string	"ERR_ISCONN"
.LASF90:
	.string	"cachehit"
.LASF130:
	.string	"name"
.LASF135:
	.string	"netif_linkoutput_fn"
.LASF141:
	.string	"port_num"
.LASF60:
	.string	"MEMP_RAW_PCB"
.LASF85:
	.string	"lenerr"
.LASF7:
	.string	"long unsigned int"
.LASF114:
	.string	"netif_mac_filter_action"
.LASF176:
	.string	"rx_idx"
.LASF168:
	.string	"port"
.LASF88:
	.string	"proterr"
.LASF92:
	.string	"rx_v1"
.LASF165:
	.string	"bridgeif"
.LASF100:
	.string	"stats_sys"
.LASF3:
	.string	"unsigned char"
.LASF113:
	.string	"lwip_internal_netif_client_data_index"
.LASF86:
	.string	"memerr"
.LASF64:
	.string	"MEMP_TCP_SEG"
.LASF136:
	.string	"netif_status_callback_fn"
.LASF104:
	.string	"link"
.LASF157:
	.string	"tcpip_inpkt"
.LASF43:
	.string	"addr"
.LASF96:
	.string	"tx_join"
.LASF81:
	.string	"xmit"
.LASF83:
	.string	"drop"
.LASF125:
	.string	"state"
.LASF112:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF117:
	.string	"netif"
.LASF35:
	.string	"ERR_ABRT"
.LASF132:
	.string	"acd_list"
.LASF144:
	.string	"ports"
.LASF42:
	.string	"bridgeif_initdata_s"
.LASF22:
	.string	"ERR_OK"
.LASF82:
	.string	"recv"
.LASF109:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF2:
	.string	"signed char"
.LASF5:
	.string	"short unsigned int"
.LASF145:
	.string	"max_fdbs_entries"
.LASF164:
	.string	"memcpy"
.LASF91:
	.string	"stats_igmp"
.LASF33:
	.string	"ERR_CONN"
.LASF47:
	.string	"max_fdb_static_entries"
.LASF26:
	.string	"ERR_RTE"
.LASF178:
	.string	"bridgeif_output"
.LASF45:
	.string	"max_ports"
.LASF51:
	.string	"ip_addr_t"
.LASF72:
	.string	"MEMP_NETDB"
.LASF182:
	.string	"bridgeif_send_to_port"
.LASF98:
	.string	"tx_report"
.LASF188:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF170:
	.string	"bridgeif_init"
.LASF40:
	.string	"bridgeif_portmask_t"
.LASF110:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF23:
	.string	"ERR_MEM"
.LASF118:
	.string	"ip_addr"
.LASF93:
	.string	"rx_group"
.LASF191:
	.string	"bridgeif_fdb_add"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/network/lwip/src/netif/bridgeif.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/lwip"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
