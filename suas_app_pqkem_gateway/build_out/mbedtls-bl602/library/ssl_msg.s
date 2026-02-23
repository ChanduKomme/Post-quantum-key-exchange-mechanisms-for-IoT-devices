	.file	"ssl_msg.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_msg.c"
	.section	.text.mbedtls_cipher_get_block_size,"ax",@progbits
	.align	1
	.type	mbedtls_cipher_get_block_size, @function
mbedtls_cipher_get_block_size:
.LFB27:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/cipher.h"
	.loc 1 687 1
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
	.loc 1 688 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 688 8
	bne	a5,zero,.L2
	.loc 1 689 16
	li	a5,0
	j	.L3
.L2:
	.loc 1 692 30
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 692 43
	lw	a5,4(a5)
	andi	a5,a5,31
	andi	a5,a5,0xff
.L3:
	.loc 1 693 1
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
	.size	mbedtls_cipher_get_block_size, .-mbedtls_cipher_get_block_size
	.section	.text.mbedtls_cipher_get_cipher_mode,"ax",@progbits
	.align	1
	.type	mbedtls_cipher_get_cipher_mode, @function
mbedtls_cipher_get_cipher_mode:
.LFB28:
	.loc 1 706 1
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
	.loc 1 707 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 707 8
	bne	a5,zero,.L5
	.loc 1 708 16
	li	a5,0
	j	.L6
.L5:
	.loc 1 711 39
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 711 52
	lw	a5,4(a5)
	srli	a5,a5,12
	andi	a5,a5,15
	andi	a5,a5,0xff
.L6:
	.loc 1 712 1
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
.LFE28:
	.size	mbedtls_cipher_get_cipher_mode, .-mbedtls_cipher_get_cipher_mode
	.section	.text.mbedtls_ssl_is_handshake_over,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_is_handshake_over, @function
mbedtls_ssl_is_handshake_over:
.LFB96:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ssl.h"
	.loc 2 5115 1
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
	.loc 2 5116 15
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 2 5116 23
	slti	a5,a5,27
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 2 5117 1
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
.LFE96:
	.size	mbedtls_ssl_is_handshake_over, .-mbedtls_ssl_is_handshake_over
	.section	.rodata
	.align	2
.LC0:
	.string	"handshake state: %d (%s) -> %d (%s)"
	.align	2
.LC1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_misc.h"
	.section	.text.mbedtls_ssl_handshake_set_state,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_handshake_set_state, @function
mbedtls_ssl_handshake_set_state:
.LFB115:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_misc.h"
	.loc 3 1352 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 3 1353 5
	lw	a5,-36(s0)
	lw	s1,4(a5)
	.loc 3 1353 207
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 3 1353 5
	andi	a5,a5,0xff
	mv	a0,a5
	call	mbedtls_ssl_states_str
	mv	s3,a0
	.loc 3 1353 5 is_stmt 0 discriminator 1
	lbu	s2,-37(s0)
	lbu	a5,-37(s0)
	mv	a0,a5
	call	mbedtls_ssl_states_str
	mv	a5,a0
	.loc 3 1353 5 discriminator 2
	sw	a5,0(sp)
	mv	a7,s2
	mv	a6,s3
	mv	a5,s1
	lui	a4,%hi(.LC0)
	addi	a4,a4,%lo(.LC0)
	li	a3,1353
	lui	a2,%hi(.LC1)
	addi	a2,a2,%lo(.LC1)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 3 1356 18 is_stmt 1
	lbu	a4,-37(s0)
	.loc 3 1356 16
	lw	a5,-36(s0)
	sw	a4,4(a5)
	.loc 3 1357 1
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE115:
	.size	mbedtls_ssl_handshake_set_state, .-mbedtls_ssl_handshake_set_state
	.section	.text.mbedtls_ssl_handshake_increment_state,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_handshake_increment_state, @function
mbedtls_ssl_handshake_increment_state:
.LFB116:
	.loc 3 1360 1
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
	.loc 3 1361 45
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 3 1361 5
	andi	a5,a5,0xff
	.loc 3 1361 53
	addi	a5,a5,1
	andi	a5,a5,0xff
	.loc 3 1361 5
	mv	a1,a5
	lw	a0,-20(s0)
	call	mbedtls_ssl_handshake_set_state
	.loc 3 1362 1
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
.LFE116:
	.size	mbedtls_ssl_handshake_increment_state, .-mbedtls_ssl_handshake_increment_state
	.section	.text.mbedtls_ssl_write_handshake_msg,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_write_handshake_msg, @function
mbedtls_ssl_write_handshake_msg:
.LFB117:
	.loc 3 1476 1
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
	.loc 3 1477 12
	li	a2,1
	li	a1,1
	lw	a0,-20(s0)
	call	mbedtls_ssl_write_handshake_msg_ext
	mv	a5,a0
	.loc 3 1478 1
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
.LFE117:
	.size	mbedtls_ssl_write_handshake_msg, .-mbedtls_ssl_write_handshake_msg
	.section	.text.mbedtls_ssl_in_hdr_len,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_in_hdr_len, @function
mbedtls_ssl_in_hdr_len:
.LFB122:
	.loc 3 1756 1
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
	.loc 3 1762 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 1762 18
	lbu	a4,5(a5)
	.loc 3 1762 8
	li	a5,1
	bne	a4,a5,.L14
	.loc 3 1763 16
	li	a5,13
	j	.L15
.L14:
	.loc 3 1767 16
	li	a5,5
.L15:
	.loc 3 1769 1
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
.LFE122:
	.size	mbedtls_ssl_in_hdr_len, .-mbedtls_ssl_in_hdr_len
	.section	.text.mbedtls_ssl_out_hdr_len,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_out_hdr_len, @function
mbedtls_ssl_out_hdr_len:
.LFB123:
	.loc 3 1772 1
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
	.loc 3 1773 25
	lw	a5,-20(s0)
	lw	a4,212(a5)
	.loc 3 1773 39
	lw	a5,-20(s0)
	lw	a5,200(a5)
	.loc 3 1773 34
	sub	a5,a4,a5
	.loc 3 1774 1
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
.LFE123:
	.size	mbedtls_ssl_out_hdr_len, .-mbedtls_ssl_out_hdr_len
	.section	.text.mbedtls_ssl_hs_hdr_len,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_hs_hdr_len, @function
mbedtls_ssl_hs_hdr_len:
.LFB124:
	.loc 3 1777 1
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
	.loc 3 1779 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 1779 18
	lbu	a4,5(a5)
	.loc 3 1779 8
	li	a5,1
	bne	a4,a5,.L19
	.loc 3 1780 16
	li	a5,12
	j	.L20
.L19:
	.loc 3 1785 12
	li	a5,4
.L20:
	.loc 3 1786 1
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
.LFE124:
	.size	mbedtls_ssl_hs_hdr_len, .-mbedtls_ssl_hs_hdr_len
	.section	.text.mbedtls_ssl_ep_len,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_ep_len, @function
mbedtls_ssl_ep_len:
.LFB125:
	.loc 3 1835 1
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
	.loc 3 1837 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 3 1837 18
	lbu	a4,5(a5)
	.loc 3 1837 8
	li	a5,1
	bne	a4,a5,.L22
	.loc 3 1838 16
	li	a5,2
	j	.L23
.L22:
	.loc 3 1843 12
	li	a5,0
.L23:
	.loc 3 1844 1
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
.LFE125:
	.size	mbedtls_ssl_ep_len, .-mbedtls_ssl_ep_len
	.section	.text.mbedtls_ct_compiler_opaque,"ax",@progbits
	.align	1
	.type	mbedtls_ct_compiler_opaque, @function
mbedtls_ct_compiler_opaque:
.LFB142:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/constant_time_impl.h"
	.loc 4 86 1
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
	.loc 4 88 5
	lw	a5,-20(s0)
	sw	a5,-20(s0)
	.loc 4 89 12
	lw	a5,-20(s0)
	.loc 4 93 1
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
.LFE142:
	.size	mbedtls_ct_compiler_opaque, .-mbedtls_ct_compiler_opaque
	.section	.text.mbedtls_ct_bool,"ax",@progbits
	.align	1
	.type	mbedtls_ct_bool, @function
mbedtls_ct_bool:
.LFB143:
	.loc 4 121 1
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
	.loc 4 184 34
	lw	a0,-36(s0)
	call	mbedtls_ct_compiler_opaque
	sw	a0,-20(s0)
	.loc 4 192 27
	lw	a5,-20(s0)
	neg	a4,a5
	.loc 4 192 39
	lw	a5,-20(s0)
	srli	a5,a5,1
	.loc 4 192 34
	neg	a5,a5
	.loc 4 192 32
	or	a5,a4,a5
	.loc 4 192 22
	sw	a5,-24(s0)
	.loc 4 195 11
	lw	a5,-24(s0)
	.loc 4 195 34
	srli	a5,a5,31
	.loc 4 195 7
	sw	a5,-24(s0)
	.loc 4 198 38
	lw	a5,-24(s0)
	neg	a5,a5
	.loc 4 203 1
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
.LFE143:
	.size	mbedtls_ct_bool, .-mbedtls_ct_bool
	.section	.text.mbedtls_ct_if,"ax",@progbits
	.align	1
	.type	mbedtls_ct_if, @function
mbedtls_ct_if:
.LFB144:
	.loc 4 208 1
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
	.loc 4 266 36
	lw	a0,-36(s0)
	call	mbedtls_ct_compiler_opaque
	mv	a5,a0
	.loc 4 265 28
	not	a5,a5
	sw	a5,-20(s0)
	.loc 4 267 44
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	and	a4,a4,a5
	.loc 4 267 63
	lw	a3,-20(s0)
	lw	a5,-44(s0)
	and	a5,a3,a5
	.loc 4 267 12
	or	a5,a4,a5
	.loc 4 269 1
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
.LFE144:
	.size	mbedtls_ct_if, .-mbedtls_ct_if
	.section	.text.mbedtls_ct_uint_lt,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_lt, @function
mbedtls_ct_uint_lt:
.LFB145:
	.loc 4 272 1
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
	.loc 4 354 34
	lw	a0,-36(s0)
	call	mbedtls_ct_compiler_opaque
	sw	a0,-20(s0)
	.loc 4 355 34
	lw	a0,-40(s0)
	call	mbedtls_ct_compiler_opaque
	sw	a0,-24(s0)
	.loc 4 360 55
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	xor	a5,a4,a5
	.loc 4 360 35
	srli	a5,a5,31
	mv	a0,a5
	call	mbedtls_ct_bool
	sw	a0,-28(s0)
	.loc 4 372 29
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	mbedtls_ct_if
	sw	a0,-32(s0)
	.loc 4 375 9
	lw	a5,-32(s0)
	srli	a5,a5,31
	sw	a5,-32(s0)
	.loc 4 378 12
	lw	a0,-32(s0)
	call	mbedtls_ct_bool
	mv	a5,a0
	.loc 4 380 1
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
.LFE145:
	.size	mbedtls_ct_uint_lt, .-mbedtls_ct_uint_lt
	.section	.text.mbedtls_ct_uint_ne,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_ne, @function
mbedtls_ct_uint_ne:
.LFB146:
	.loc 4 383 1
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
	.loc 4 385 36
	lw	a0,-36(s0)
	call	mbedtls_ct_compiler_opaque
	mv	s1,a0
	.loc 4 385 68 discriminator 1
	lw	a0,-40(s0)
	call	mbedtls_ct_compiler_opaque
	mv	a5,a0
	.loc 4 385 29 discriminator 2
	xor	a5,s1,a5
	sw	a5,-20(s0)
	.loc 4 388 12
	lw	a0,-20(s0)
	call	mbedtls_ct_bool
	mv	a5,a0
	.loc 4 389 1
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
.LFE146:
	.size	mbedtls_ct_uint_ne, .-mbedtls_ct_uint_ne
	.section	.text.mbedtls_ct_size_if_else_0,"ax",@progbits
	.align	1
	.type	mbedtls_ct_size_if_else_0, @function
mbedtls_ct_size_if_else_0:
.LFB152:
	.loc 4 447 1
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
	.loc 4 448 12
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	and	a5,a4,a5
	.loc 4 449 1
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
.LFE152:
	.size	mbedtls_ct_size_if_else_0, .-mbedtls_ct_size_if_else_0
	.section	.text.mbedtls_ct_uint_eq,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_eq, @function
mbedtls_ct_uint_eq:
.LFB158:
	.loc 4 491 1
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
	.loc 4 492 13
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_ct_uint_ne
	mv	a5,a0
	.loc 4 492 12 discriminator 1
	not	a5,a5
	.loc 4 493 1
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
.LFE158:
	.size	mbedtls_ct_uint_eq, .-mbedtls_ct_uint_eq
	.section	.text.mbedtls_ct_uint_ge,"ax",@progbits
	.align	1
	.type	mbedtls_ct_uint_ge, @function
mbedtls_ct_uint_ge:
.LFB160:
	.loc 4 503 1
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
	.loc 4 504 13
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	mbedtls_ct_uint_lt
	mv	a5,a0
	.loc 4 504 12 discriminator 1
	not	a5,a5
	.loc 4 505 1
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
.LFE160:
	.size	mbedtls_ct_uint_ge, .-mbedtls_ct_uint_ge
	.section	.text.mbedtls_ct_bool_and,"ax",@progbits
	.align	1
	.type	mbedtls_ct_bool_and, @function
mbedtls_ct_bool_and:
.LFB163:
	.loc 4 521 1
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
	.loc 4 522 12
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	and	a5,a4,a5
	.loc 4 523 1
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
.LFE163:
	.size	mbedtls_ct_bool_and, .-mbedtls_ct_bool_and
	.section	.text.mbedtls_ct_hmac,"ax",@progbits
	.align	1
	.type	mbedtls_ct_hmac, @function
mbedtls_ct_hmac:
.LFB166:
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_msg.c"
	.loc 5 194 1
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	ra,156(sp)
	sw	s0,152(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sw	a0,-132(s0)
	sw	a1,-136(s0)
	sw	a2,-140(s0)
	sw	a3,-144(s0)
	sw	a4,-148(s0)
	sw	a5,-152(s0)
	sw	a6,-156(s0)
	sw	a7,-160(s0)
	.loc 5 209 38
	lw	a5,-132(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_md_get_type
	mv	a5,a0
	sb	a5,-29(s0)
	.loc 5 212 65
	lbu	a4,-29(s0)
	li	a5,10
	bne	a4,a5,.L43
	.loc 5 212 18 discriminator 1
	li	a5,128
	sw	a5,-20(s0)
	j	.L44
.L43:
	.loc 5 212 18 is_stmt 0 discriminator 2
	li	a5,64
	sw	a5,-20(s0)
.L44:
	.loc 5 213 33 is_stmt 1
	lw	a5,-132(s0)
	lw	a5,8(a5)
	sw	a5,-36(s0)
	.loc 5 214 33
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 5 215 30
	lw	a5,-132(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_md_get_size
	mv	a5,a0
	.loc 5 215 18 discriminator 1
	sw	a5,-44(s0)
	.loc 5 220 9
	li	a5,-110
	sw	a5,-28(s0)
	.loc 5 222 5
	addi	a5,s0,-120
	mv	a0,a5
	call	mbedtls_md_init
	.loc 5 231 17
	lw	a5,-132(s0)
	lw	a4,0(a5)
	addi	a5,s0,-120
	li	a2,0
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_setup
	sw	a0,-28(s0)
	.loc 5 231 62 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L60
	.loc 5 235 17
	lw	a2,-140(s0)
	lw	a1,-136(s0)
	lw	a0,-132(s0)
	call	mbedtls_md_update
	sw	a0,-28(s0)
	.loc 5 235 69 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L61
	.loc 5 236 17
	lw	a2,-152(s0)
	lw	a1,-144(s0)
	lw	a0,-132(s0)
	call	mbedtls_md_update
	sw	a0,-28(s0)
	.loc 5 236 65 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L62
	.loc 5 242 5
	lw	a2,-44(s0)
	li	a1,33
	lw	a0,-160(s0)
	call	memset
	.loc 5 245 17
	lw	a5,-152(s0)
	sw	a5,-24(s0)
	.loc 5 245 5
	j	.L49
.L53:
	.loc 5 246 21
	addi	a5,s0,-120
	lw	a1,-132(s0)
	mv	a0,a5
	call	mbedtls_md_clone
	sw	a0,-28(s0)
	.loc 5 246 54 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L63
	.loc 5 247 21
	addi	a4,s0,-108
	addi	a5,s0,-120
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_finish
	sw	a0,-28(s0)
	.loc 5 247 59 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L64
	.loc 5 249 9
	lw	a1,-148(s0)
	lw	a0,-24(s0)
	call	mbedtls_ct_uint_eq
	.loc 5 249 9 is_stmt 0 discriminator 1
	addi	a5,s0,-108
	lw	a4,-44(s0)
	li	a3,0
	mv	a2,a5
	lw	a1,-160(s0)
	call	mbedtls_ct_memcpy_if
	.loc 5 252 12 is_stmt 1
	lw	a4,-24(s0)
	lw	a5,-156(s0)
	bgeu	a4,a5,.L52
	.loc 5 253 25
	lw	a4,-144(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	li	a2,1
	mv	a1,a5
	lw	a0,-132(s0)
	call	mbedtls_md_update
	sw	a0,-28(s0)
	.loc 5 253 71 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L65
.L52:
	.loc 5 245 63 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L49:
	.loc 5 245 40 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-156(s0)
	bleu	a4,a5,.L53
	.loc 5 258 17
	addi	a5,s0,-108
	mv	a1,a5
	lw	a0,-132(s0)
	call	mbedtls_md_finish
	sw	a0,-28(s0)
	.loc 5 258 54 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L66
	.loc 5 261 17
	lw	a0,-132(s0)
	call	mbedtls_md_starts
	sw	a0,-28(s0)
	.loc 5 261 45 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L67
	.loc 5 262 17
	lw	a2,-20(s0)
	lw	a1,-40(s0)
	lw	a0,-132(s0)
	call	mbedtls_md_update
	sw	a0,-28(s0)
	.loc 5 262 63 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L68
	.loc 5 263 17
	lw	a2,-44(s0)
	lw	a1,-160(s0)
	lw	a0,-132(s0)
	call	mbedtls_md_update
	sw	a0,-28(s0)
	.loc 5 263 64 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L69
	.loc 5 264 17
	lw	a1,-160(s0)
	lw	a0,-132(s0)
	call	mbedtls_md_finish
	sw	a0,-28(s0)
	.loc 5 264 53 discriminator 1
	lw	a5,-28(s0)
	bne	a5,zero,.L70
	.loc 5 267 17
	lw	a0,-132(s0)
	call	mbedtls_md_hmac_reset
	sw	a0,-28(s0)
	.loc 5 271 1
	j	.L46
.L60:
	.loc 5 231 73
	nop
	j	.L46
.L61:
	.loc 5 235 80
	nop
	j	.L46
.L62:
	.loc 5 236 76
	nop
	j	.L46
.L63:
	.loc 5 246 65
	nop
	j	.L46
.L64:
	.loc 5 247 70
	nop
	j	.L46
.L65:
	.loc 5 253 82
	nop
	j	.L46
.L66:
	.loc 5 258 65
	nop
	j	.L46
.L67:
	.loc 5 261 56
	nop
	j	.L46
.L68:
	.loc 5 262 74
	nop
	j	.L46
.L69:
	.loc 5 263 75
	nop
	j	.L46
.L70:
	.loc 5 264 64
	nop
.L46:
	.loc 5 272 5
	addi	a5,s0,-120
	mv	a0,a5
	call	mbedtls_md_free
	.loc 5 273 12
	lw	a5,-28(s0)
	.loc 5 274 1
	mv	a0,a5
	lw	ra,156(sp)
	.cfi_restore 1
	lw	s0,152(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE166:
	.size	mbedtls_ct_hmac, .-mbedtls_ct_hmac
	.section	.rodata
	.align	2
.LC2:
	.string	"set_timer to %d ms"
	.align	2
.LC3:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_msg.c"
	.section	.text.mbedtls_ssl_set_timer,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_set_timer
	.type	mbedtls_ssl_set_timer, @function
mbedtls_ssl_set_timer:
.LFB167:
	.loc 5 287 1
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
	.loc 5 288 12
	lw	a5,-20(s0)
	lw	a5,88(a5)
	.loc 5 288 8
	beq	a5,zero,.L74
	.loc 5 292 5
	lw	a5,-24(s0)
	lui	a4,%hi(.LC2)
	addi	a4,a4,%lo(.LC2)
	li	a3,292
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,3
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 5 293 8
	lw	a5,-20(s0)
	lw	a5,88(a5)
	.loc 5 293 5
	lw	a4,-20(s0)
	lw	a3,84(a4)
	.loc 5 293 46
	lw	a4,-24(s0)
	srli	a4,a4,2
	.loc 5 293 5
	lw	a2,-24(s0)
	mv	a1,a4
	mv	a0,a3
	jalr	a5
.LVL0:
	j	.L71
.L74:
	.loc 5 289 9
	nop
.L71:
	.loc 5 294 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE167:
	.size	mbedtls_ssl_set_timer, .-mbedtls_ssl_set_timer
	.section	.rodata
	.align	2
.LC4:
	.string	"timer expired"
	.section	.text.mbedtls_ssl_check_timer,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_check_timer
	.type	mbedtls_ssl_check_timer, @function
mbedtls_ssl_check_timer:
.LFB168:
	.loc 5 300 1
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
	.loc 5 301 12
	lw	a5,-20(s0)
	lw	a5,92(a5)
	.loc 5 301 8
	bne	a5,zero,.L76
	.loc 5 302 16
	li	a5,0
	j	.L77
.L76:
	.loc 5 305 12
	lw	a5,-20(s0)
	lw	a5,92(a5)
	.loc 5 305 9
	lw	a4,-20(s0)
	lw	a4,84(a4)
	mv	a0,a4
	jalr	a5
.LVL1:
	mv	a4,a0
	.loc 5 305 8 discriminator 1
	li	a5,2
	bne	a4,a5,.L78
	.loc 5 306 9
	lui	a5,%hi(.LC4)
	addi	a4,a5,%lo(.LC4)
	li	a3,306
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,3
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 5 307 16
	li	a5,-1
	j	.L77
.L78:
	.loc 5 310 12
	li	a5,0
.L77:
	.loc 5 311 1
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
.LFE168:
	.size	mbedtls_ssl_check_timer, .-mbedtls_ssl_check_timer
	.section	.rodata
	.align	2
.LC5:
	.string	"=> mbedtls_ssl_check_record"
	.align	2
.LC6:
	.string	"record buffer"
	.align	2
.LC7:
	.string	"ssl_parse_record_header"
	.align	2
.LC8:
	.string	"mbedtls_ssl_decrypt_buf"
	.align	2
.LC9:
	.string	"<= mbedtls_ssl_check_record"
	.section	.text.mbedtls_ssl_check_record,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_check_record
	.type	mbedtls_ssl_check_record, @function
mbedtls_ssl_check_record:
.LFB169:
	.loc 5 322 1
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
	sw	a2,-108(s0)
	.loc 5 323 9
	sw	zero,-20(s0)
	.loc 5 324 5
	lui	a5,%hi(.LC5)
	addi	a4,a5,%lo(.LC5)
	li	a3,324
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-100(s0)
	call	mbedtls_debug_print_msg
	.loc 5 325 5
	lw	a6,-108(s0)
	lw	a5,-104(s0)
	lui	a4,%hi(.LC6)
	addi	a4,a4,%lo(.LC6)
	li	a3,325
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,3
	lw	a0,-100(s0)
	call	mbedtls_debug_print_buf
	.loc 5 330 12
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 5 330 18
	lbu	a5,5(a5)
	.loc 5 330 8
	bne	a5,zero,.L80
	.loc 5 331 13
	li	a5,-28672
	addi	a5,a5,-128
	sw	a5,-20(s0)
	.loc 5 332 9
	j	.L81
.L80:
.LBB46:
	.loc 5 338 15
	addi	a5,s0,-84
	mv	a3,a5
	lw	a2,-108(s0)
	lw	a1,-104(s0)
	lw	a0,-100(s0)
	call	ssl_parse_record_header
	sw	a0,-20(s0)
	.loc 5 339 12
	lw	a5,-20(s0)
	beq	a5,zero,.L82
	.loc 5 340 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC7)
	addi	a4,a4,%lo(.LC7)
	li	a3,340
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,3
	lw	a0,-100(s0)
	call	mbedtls_debug_print_ret
	.loc 5 341 13
	j	.L81
.L82:
	.loc 5 344 16
	lw	a5,-100(s0)
	lw	a5,68(a5)
	.loc 5 344 12
	beq	a5,zero,.L81
	.loc 5 345 51
	lw	a5,-100(s0)
	lw	a5,68(a5)
	.loc 5 345 19
	addi	a4,s0,-84
	mv	a2,a4
	mv	a1,a5
	lw	a0,-100(s0)
	call	mbedtls_ssl_decrypt_buf
	sw	a0,-20(s0)
	.loc 5 346 16
	lw	a5,-20(s0)
	beq	a5,zero,.L81
	.loc 5 347 17
	lw	a5,-20(s0)
	lui	a4,%hi(.LC8)
	addi	a4,a4,%lo(.LC8)
	li	a3,347
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,3
	lw	a0,-100(s0)
	call	mbedtls_debug_print_ret
	.loc 5 348 17
	nop
.L81:
.LBE46:
	.loc 5 357 5
	lw	a1,-108(s0)
	lw	a0,-104(s0)
	call	mbedtls_platform_zeroize
	.loc 5 361 8
	lw	a4,-20(s0)
	li	a5,-24576
	beq	a4,a5,.L85
	.loc 5 361 24 discriminator 1
	lw	a4,-20(s0)
	li	a5,-24576
	addi	a5,a5,-1152
	bne	a4,a5,.L86
.L85:
	.loc 5 363 13
	li	a5,-24576
	addi	a5,a5,-1792
	sw	a5,-20(s0)
.L86:
	.loc 5 366 5
	lui	a5,%hi(.LC9)
	addi	a4,a5,%lo(.LC9)
	li	a3,366
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-100(s0)
	call	mbedtls_debug_print_msg
	.loc 5 367 12
	lw	a5,-20(s0)
	.loc 5 368 1
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
.LFE169:
	.size	mbedtls_ssl_check_record, .-mbedtls_ssl_check_record
	.section	.text.ssl_get_maximum_datagram_size,"ax",@progbits
	.align	1
	.type	ssl_get_maximum_datagram_size, @function
ssl_get_maximum_datagram_size:
.LFB170:
	.loc 5 392 1
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
	.loc 5 393 18
	lw	a0,-36(s0)
	call	mbedtls_ssl_get_current_mtu
	sw	a0,-20(s0)
	.loc 5 395 12
	lw	a5,-36(s0)
	lw	a5,232(a5)
	sw	a5,-24(s0)
	.loc 5 400 8
	lw	a5,-20(s0)
	beq	a5,zero,.L89
	.loc 5 400 18 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bgeu	a4,a5,.L89
	.loc 5 401 16
	lw	a5,-20(s0)
	j	.L90
.L89:
	.loc 5 404 12
	lw	a5,-24(s0)
.L90:
	.loc 5 405 1
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
.LFE170:
	.size	ssl_get_maximum_datagram_size, .-ssl_get_maximum_datagram_size
	.section	.text.ssl_get_remaining_space_in_datagram,"ax",@progbits
	.align	1
	.type	ssl_get_remaining_space_in_datagram, @function
ssl_get_remaining_space_in_datagram:
.LFB171:
	.loc 5 409 1
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
	.loc 5 410 18
	lw	a5,-36(s0)
	lw	a5,228(a5)
	sw	a5,-20(s0)
	.loc 5 411 24
	lw	a0,-36(s0)
	call	ssl_get_maximum_datagram_size
	sw	a0,-24(s0)
	.loc 5 415 8
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bleu	a4,a5,.L92
	.loc 5 417 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L93
.L92:
	.loc 5 420 23
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
.L93:
	.loc 5 421 1
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
.LFE171:
	.size	ssl_get_remaining_space_in_datagram, .-ssl_get_remaining_space_in_datagram
	.section	.text.ssl_get_remaining_payload_in_datagram,"ax",@progbits
	.align	1
	.type	ssl_get_remaining_payload_in_datagram, @function
ssl_get_remaining_payload_in_datagram:
.LFB172:
	.loc 5 425 1
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
	.loc 5 426 9
	li	a5,-110
	sw	a5,-28(s0)
	.loc 5 428 12
	li	a5,16384
	sw	a5,-24(s0)
	.loc 5 431 24
	lw	a0,-52(s0)
	call	mbedtls_ssl_get_output_max_frag_len
	sw	a0,-32(s0)
	.loc 5 433 8
	lw	a4,-24(s0)
	lw	a5,-32(s0)
	bleu	a4,a5,.L95
	.loc 5 434 17
	lw	a5,-32(s0)
	sw	a5,-24(s0)
.L95:
	.loc 5 446 23
	lw	a5,-52(s0)
	lw	a5,228(a5)
	.loc 5 446 8
	lw	a4,-24(s0)
	bgtu	a4,a5,.L96
	.loc 5 447 16
	li	a5,0
	j	.L97
.L96:
	.loc 5 450 19
	lw	a5,-52(s0)
	lw	a5,228(a5)
	.loc 5 450 13
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 5 453 11
	lw	a0,-52(s0)
	call	ssl_get_remaining_space_in_datagram
	sw	a0,-28(s0)
	.loc 5 454 8
	lw	a5,-28(s0)
	bge	a5,zero,.L98
	.loc 5 455 16
	lw	a5,-28(s0)
	j	.L97
.L98:
	.loc 5 457 15
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	.loc 5 459 11
	lw	a0,-52(s0)
	call	mbedtls_ssl_get_record_expansion
	sw	a0,-28(s0)
	.loc 5 460 8
	lw	a5,-28(s0)
	bge	a5,zero,.L99
	.loc 5 461 16
	lw	a5,-28(s0)
	j	.L97
.L99:
	.loc 5 463 15
	lw	a5,-28(s0)
	sw	a5,-36(s0)
	.loc 5 465 8
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	bgtu	a4,a5,.L100
	.loc 5 466 16
	li	a5,0
	j	.L97
.L100:
	.loc 5 469 15
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 470 8
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L101
	.loc 5 471 19
	lw	a5,-24(s0)
	sw	a5,-20(s0)
.L101:
	.loc 5 474 12
	lw	a5,-20(s0)
.L97:
	.loc 5 475 1
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
.LFE172:
	.size	ssl_get_remaining_payload_in_datagram, .-ssl_get_remaining_payload_in_datagram
	.section	.rodata
	.align	2
.LC10:
	.string	"mtu autoreduction to %d bytes"
	.align	2
.LC11:
	.string	"update timeout value to %lu millisecs"
	.section	.text.ssl_double_retransmit_timeout,"ax",@progbits
	.align	1
	.type	ssl_double_retransmit_timeout, @function
ssl_double_retransmit_timeout:
.LFB173:
	.loc 5 483 1
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
	.loc 5 486 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 486 23
	lw	a4,640(a5)
	.loc 5 486 50
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 486 56
	lw	a5,208(a5)
	.loc 5 486 8
	bltu	a4,a5,.L103
	.loc 5 487 16
	li	a5,-1
	j	.L104
.L103:
	.loc 5 496 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 496 23
	lw	a4,640(a5)
	.loc 5 496 50
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 496 56
	lw	a5,204(a5)
	.loc 5 496 8
	beq	a4,a5,.L105
	.loc 5 497 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 497 29
	li	a4,508
	sh	a4,706(a5)
	.loc 5 498 168
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 498 179
	lhu	a5,706(a5)
	.loc 5 498 9
	lui	a4,%hi(.LC10)
	addi	a4,a4,%lo(.LC10)
	li	a3,498
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
.L105:
	.loc 5 501 26
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 501 37
	lw	a5,640(a5)
	.loc 5 501 17
	slli	a5,a5,1
	sw	a5,-20(s0)
	.loc 5 504 26
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 504 37
	lw	a5,640(a5)
	.loc 5 504 8
	lw	a4,-20(s0)
	bltu	a4,a5,.L106
	.loc 5 505 26
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 505 32
	lw	a5,208(a5)
	.loc 5 504 58 discriminator 1
	lw	a4,-20(s0)
	bleu	a4,a5,.L107
.L106:
	.loc 5 506 26
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 506 21
	lw	a5,208(a5)
	sw	a5,-20(s0)
.L107:
	.loc 5 509 8
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 509 40
	lw	a4,-20(s0)
	sw	a4,640(a5)
	.loc 5 510 188
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 510 199
	lw	a5,640(a5)
	.loc 5 510 5
	lui	a4,%hi(.LC11)
	addi	a4,a4,%lo(.LC11)
	li	a3,510
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 513 12
	li	a5,0
.L104:
	.loc 5 514 1
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
.LFE173:
	.size	ssl_double_retransmit_timeout, .-ssl_double_retransmit_timeout
	.section	.text.ssl_reset_retransmit_timeout,"ax",@progbits
	.align	1
	.type	ssl_reset_retransmit_timeout, @function
ssl_reset_retransmit_timeout:
.LFB174:
	.loc 5 517 1
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
	.loc 5 518 45
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 5 518 8
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 5 518 51
	lw	a4,204(a4)
	.loc 5 518 40
	sw	a4,640(a5)
	.loc 5 519 188
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 5 519 199
	lw	a5,640(a5)
	.loc 5 519 5
	lui	a4,%hi(.LC11)
	addi	a4,a4,%lo(.LC11)
	li	a3,519
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,3
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 5 521 1
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
.LFE174:
	.size	ssl_reset_retransmit_timeout, .-ssl_reset_retransmit_timeout
	.section	.text.ssl_compute_padding_length,"ax",@progbits
	.align	1
	.type	ssl_compute_padding_length, @function
ssl_compute_padding_length:
.LFB175:
	.loc 5 532 1
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
	.loc 5 533 32
	lw	a5,-20(s0)
	addi	a4,a5,1
	.loc 5 533 37
	lw	a5,-24(s0)
	remu	a5,a4,a5
	.loc 5 533 25
	lw	a4,-24(s0)
	sub	a4,a4,a5
	.loc 5 533 52
	lw	a5,-24(s0)
	remu	a5,a4,a5
	.loc 5 534 1
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
.LFE175:
	.size	ssl_compute_padding_length, .-ssl_compute_padding_length
	.section	.text.ssl_build_inner_plaintext,"ax",@progbits
	.align	1
	.type	ssl_build_inner_plaintext, @function
ssl_build_inner_plaintext:
.LFB176:
	.loc 5 570 1
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
	mv	a5,a3
	sw	a4,-52(s0)
	sb	a5,-45(s0)
	.loc 5 571 12
	lw	a5,-40(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 5 574 8
	lw	a5,-44(s0)
	bne	a5,zero,.L112
	.loc 5 575 16
	li	a5,-1
	j	.L113
.L112:
	.loc 5 577 12
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 5 577 18
	lbu	a4,-45(s0)
	sb	a4,0(a5)
	.loc 5 578 8
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 5 579 14
	lw	a5,-44(s0)
	addi	a5,a5,-1
	sw	a5,-44(s0)
	.loc 5 581 8
	lw	a4,-44(s0)
	lw	a5,-52(s0)
	bgeu	a4,a5,.L114
	.loc 5 582 16
	li	a5,-1
	j	.L113
.L114:
	.loc 5 584 20
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	.loc 5 584 5
	lw	a2,-52(s0)
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 5 585 9
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 586 15
	lw	a4,-44(s0)
	lw	a5,-52(s0)
	sub	a5,a4,a5
	sw	a5,-44(s0)
	.loc 5 588 19
	lw	a5,-40(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 5 589 12
	li	a5,0
.L113:
	.loc 5 590 1
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
.LFE176:
	.size	ssl_build_inner_plaintext, .-ssl_build_inner_plaintext
	.section	.text.ssl_parse_inner_plaintext,"ax",@progbits
	.align	1
	.type	ssl_parse_inner_plaintext, @function
ssl_parse_inner_plaintext:
.LFB177:
	.loc 5 598 1
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
	.loc 5 599 12
	lw	a5,-40(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L118:
	.loc 5 603 12
	lw	a5,-20(s0)
	bne	a5,zero,.L116
	.loc 5 604 20
	li	a5,-1
	j	.L117
.L116:
	.loc 5 606 18
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 5 607 21
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 5 607 33
	beq	a5,zero,.L118
	.loc 5 609 19
	lw	a5,-40(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 5 610 24
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 5 610 15
	lw	a5,-44(s0)
	sb	a4,0(a5)
	.loc 5 612 12
	li	a5,0
.L117:
	.loc 5 613 1
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
.LFE177:
	.size	ssl_parse_inner_plaintext, .-ssl_parse_inner_plaintext
	.section	.text.ssl_extract_add_data_from_record,"ax",@progbits
	.align	1
	.type	ssl_extract_add_data_from_record, @function
ssl_extract_add_data_from_record:
.LFB178:
	.loc 5 673 1
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
	mv	a5,a3
	sw	a4,-68(s0)
	sh	a5,-62(s0)
	.loc 5 763 20
	lw	a5,-52(s0)
	sw	a5,-20(s0)
	.loc 5 764 12
	lw	a5,-60(s0)
	lw	a5,24(a5)
	sw	a5,-24(s0)
	.loc 5 768 25
	li	a5,-1
	sw	a5,-44(s0)
	li	a5,-1
	sw	a5,-40(s0)
	.loc 5 785 16
	lw	a5,-60(s0)
	lbu	a5,28(a5)
	.loc 5 785 12
	beq	a5,zero,.L120
	.loc 5 787 13
	addi	a5,s0,-44
	li	a2,8
	mv	a1,a5
	lw	a0,-20(s0)
	call	memcpy
	.loc 5 788 17
	lw	a5,-20(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
	.loc 5 791 23
	lw	a5,-60(s0)
	lbu	a4,8(a5)
	.loc 5 791 18
	lw	a5,-20(s0)
	sb	a4,0(a5)
	.loc 5 792 16
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 5 795 23
	lw	a5,-60(s0)
	lbu	a4,28(a5)
	.loc 5 795 18
	lw	a5,-20(s0)
	sb	a4,0(a5)
	.loc 5 796 16
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	j	.L121
.L120:
	.loc 5 801 28
	lw	a5,-60(s0)
	.loc 5 801 13
	li	a2,8
	mv	a1,a5
	lw	a0,-20(s0)
	call	memcpy
	.loc 5 802 17
	lw	a5,-20(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
.L121:
	.loc 5 807 15
	lw	a5,-60(s0)
	lbu	a4,8(a5)
	.loc 5 807 10
	lw	a5,-20(s0)
	sb	a4,0(a5)
	.loc 5 808 8
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 5 811 20
	lw	a5,-60(s0)
	addi	a5,a5,9
	.loc 5 811 5
	li	a2,2
	mv	a1,a5
	lw	a0,-20(s0)
	call	memcpy
	.loc 5 812 9
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 5 831 141 discriminator 2
	lw	a5,-24(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	lw	a4,-20(s0)
	sw	a4,-28(s0)
	sh	a5,-30(s0)
.LBB47:
.LBB48:
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/alignment.h"
	.loc 6 148 33
	lw	a5,-28(s0)
	sw	a5,-36(s0)
	.loc 6 149 12
	lw	a5,-36(s0)
	lhu	a4,-30(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-30(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 6 153 1
	nop
.LBE48:
.LBE47:
	.loc 5 832 13
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 5 835 35
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	sub	a5,a4,a5
	.loc 5 835 21
	mv	a4,a5
	.loc 5 835 19
	lw	a5,-56(s0)
	sw	a4,0(a5)
	.loc 5 836 1
	nop
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE178:
	.size	ssl_extract_add_data_from_record, .-ssl_extract_add_data_from_record
	.section	.text.ssl_transform_aead_dynamic_iv_is_explicit,"ax",@progbits
	.align	1
	.type	ssl_transform_aead_dynamic_iv_is_explicit, @function
ssl_transform_aead_dynamic_iv_is_explicit:
.LFB179:
	.loc 5 842 1
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
	.loc 5 843 21
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 5 843 41
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 5 843 29
	sub	a5,a4,a5
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 5 844 1
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
.LFE179:
	.size	ssl_transform_aead_dynamic_iv_is_explicit, .-ssl_transform_aead_dynamic_iv_is_explicit
	.section	.text.ssl_build_record_nonce,"ax",@progbits
	.align	1
	.type	ssl_build_record_nonce, @function
ssl_build_record_nonce:
.LFB180:
	.loc 5 875 1
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
	.loc 5 877 5
	lw	a2,-56(s0)
	li	a1,0
	lw	a0,-52(s0)
	call	memset
	.loc 5 878 5
	lw	a2,-64(s0)
	lw	a1,-60(s0)
	lw	a0,-52(s0)
	call	memcpy
	.loc 5 880 26
	lw	a4,-56(s0)
	lw	a5,-72(s0)
	sub	a5,a4,a5
	.loc 5 880 12
	lw	a4,-52(s0)
	add	a5,a4,a5
	sw	a5,-52(s0)
	lw	a5,-52(s0)
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	sw	a5,-24(s0)
	lw	a5,-68(s0)
	sw	a5,-28(s0)
	lw	a5,-72(s0)
	sw	a5,-32(s0)
.LBB49:
.LBB50:
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/common.h"
	.loc 7 191 12
	sw	zero,-36(s0)
	.loc 7 234 5
	j	.L125
.L126:
	.loc 7 235 17
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	.loc 7 235 24
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 7 235 10
	lw	a2,-20(s0)
	lw	a5,-36(s0)
	add	a5,a2,a5
	.loc 7 235 14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 7 234 20 discriminator 2
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L125:
	.loc 7 234 14 discriminator 1
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	bgtu	a4,a5,.L126
	.loc 7 237 1
	nop
.LBE50:
.LBE49:
	.loc 5 882 1
	nop
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE180:
	.size	ssl_build_record_nonce, .-ssl_build_record_nonce
	.section	.rodata
	.align	2
.LC12:
	.string	"=> encrypt buf"
	.align	2
.LC13:
	.string	"no transform provided to encrypt_buf"
	.align	2
.LC14:
	.string	"bad record structure provided to encrypt_buf"
	.align	2
.LC15:
	.string	"before encrypt: output payload"
	.align	2
.LC16:
	.string	"Record content %zu too large, maximum %zu"
	.align	2
.LC17:
	.string	"CID"
	.align	2
.LC18:
	.string	"Buffer provided for encrypted record not large enough"
	.align	2
.LC19:
	.string	"computed mac"
	.align	2
.LC20:
	.string	"mbedtls_md_hmac_xxx"
	.align	2
.LC21:
	.string	"IV used (internal)"
	.align	2
.LC22:
	.string	"IV used (transmitted)"
	.align	2
.LC23:
	.string	"additional data used for AEAD"
	.align	2
.LC24:
	.string	"before encrypt: msglen = %zu, including 0 bytes of padding"
	.align	2
.LC25:
	.string	"mbedtls_cipher_auth_encrypt_ext"
	.align	2
.LC26:
	.string	"after encrypt: tag"
	.align	2
.LC27:
	.string	"No PRNG provided to encrypt_record routine"
	.align	2
.LC28:
	.string	"before encrypt: msglen = %zu, including %zu bytes of IV and %zu bytes of padding"
	.align	2
.LC29:
	.string	"mbedtls_cipher_crypt"
	.align	2
.LC30:
	.string	"should never happen"
	.align	2
.LC31:
	.string	"using encrypt then mac"
	.align	2
.LC32:
	.string	"MAC'd meta-data"
	.align	2
.LC33:
	.string	"HMAC calculation failed"
	.align	2
.LC34:
	.string	"<= encrypt buf"
	.section	.text.mbedtls_ssl_encrypt_buf,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_encrypt_buf
	.type	mbedtls_ssl_encrypt_buf, @function
mbedtls_ssl_encrypt_buf:
.LFB181:
	.loc 5 890 1
	.cfi_startproc
	addi	sp,sp,-240
	.cfi_def_cfa_offset 240
	sw	ra,236(sp)
	sw	s0,232(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,240
	.cfi_def_cfa 8, 0
	sw	a0,-196(s0)
	sw	a1,-200(s0)
	sw	a2,-204(s0)
	sw	a3,-208(s0)
	sw	a4,-212(s0)
	.loc 5 892 9
	sw	zero,-20(s0)
	.loc 5 919 5
	lui	a5,%hi(.LC12)
	addi	a4,a5,%lo(.LC12)
	li	a3,919
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-196(s0)
	call	mbedtls_debug_print_msg
	.loc 5 921 8
	lw	a5,-200(s0)
	bne	a5,zero,.L128
	.loc 5 922 9
	lui	a5,%hi(.LC13)
	addi	a4,a5,%lo(.LC13)
	li	a3,922
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-196(s0)
	call	mbedtls_debug_print_msg
	.loc 5 923 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L177
.L128:
	.loc 5 925 8
	lw	a5,-204(s0)
	beq	a5,zero,.L130
	.loc 5 926 14
	lw	a5,-204(s0)
	lw	a5,12(a5)
	.loc 5 926 8
	beq	a5,zero,.L130
	.loc 5 927 14
	lw	a5,-204(s0)
	lw	a4,16(a5)
	.loc 5 927 29
	lw	a5,-204(s0)
	lw	a5,20(a5)
	.loc 5 927 8
	bltu	a4,a5,.L130
	.loc 5 928 15
	lw	a5,-204(s0)
	lw	a4,16(a5)
	.loc 5 928 30
	lw	a5,-204(s0)
	lw	a5,20(a5)
	.loc 5 928 25
	sub	a4,a4,a5
	.loc 5 928 49
	lw	a5,-204(s0)
	lw	a5,24(a5)
	.loc 5 928 9
	bltu	a4,a5,.L130
	.loc 5 930 15
	lw	a5,-204(s0)
	lbu	a5,28(a5)
	.loc 5 930 9
	beq	a5,zero,.L131
.L130:
	.loc 5 933 9
	lui	a5,%hi(.LC14)
	addi	a4,a5,%lo(.LC14)
	li	a3,933
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-196(s0)
	call	mbedtls_debug_print_msg
	.loc 5 934 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L177
.L131:
	.loc 5 937 16
	lw	a0,-200(s0)
	call	mbedtls_ssl_get_mode_from_transform
	mv	a5,a0
	sb	a5,-41(s0)
	.loc 5 939 15
	lw	a5,-204(s0)
	lw	a4,12(a5)
	.loc 5 939 26
	lw	a5,-204(s0)
	lw	a5,20(a5)
	.loc 5 939 10
	add	a5,a4,a5
	sw	a5,-48(s0)
	.loc 5 940 21
	lw	a5,-204(s0)
	lw	a4,16(a5)
	.loc 5 940 37
	lw	a5,-204(s0)
	lw	a3,24(a5)
	.loc 5 940 53
	lw	a5,-204(s0)
	lw	a5,20(a5)
	.loc 5 940 48
	add	a5,a3,a5
	.loc 5 940 16
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 5 941 5
	lw	a5,-204(s0)
	lw	a5,24(a5)
	mv	a6,a5
	lw	a5,-48(s0)
	lui	a4,%hi(.LC15)
	addi	a4,a4,%lo(.LC15)
	li	a3,941
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-196(s0)
	call	mbedtls_debug_print_buf
	.loc 5 944 12
	lw	a5,-204(s0)
	lw	a4,24(a5)
	.loc 5 944 8
	li	a5,16384
	bleu	a4,a5,.L132
	.loc 5 945 9
	lw	a5,-204(s0)
	lw	a5,24(a5)
	li	a6,16384
	lui	a4,%hi(.LC16)
	addi	a4,a4,%lo(.LC16)
	li	a3,945
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-196(s0)
	call	mbedtls_debug_print_msg
	.loc 5 949 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L177
.L132:
	.loc 5 985 29
	lw	a5,-200(s0)
	lbu	a4,221(a5)
	.loc 5 985 18
	lw	a5,-204(s0)
	sb	a4,28(a5)
	.loc 5 986 15
	lw	a5,-204(s0)
	addi	a4,a5,29
	.loc 5 986 31
	lw	a5,-200(s0)
	addi	a3,a5,254
	.loc 5 986 51
	lw	a5,-200(s0)
	lbu	a5,221(a5)
	.loc 5 986 5
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcpy
	.loc 5 987 138
	lw	a5,-204(s0)
	addi	a4,a5,29
	.loc 5 987 148
	lw	a5,-204(s0)
	lbu	a5,28(a5)
	.loc 5 987 5
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC17)
	addi	a4,a4,%lo(.LC17)
	li	a3,987
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,3
	lw	a0,-196(s0)
	call	mbedtls_debug_print_buf
	.loc 5 989 12
	lw	a5,-204(s0)
	lbu	a5,28(a5)
	.loc 5 989 8
	beq	a5,zero,.L133
.LBB51:
	.loc 5 991 13
	lw	a5,-204(s0)
	lw	a5,24(a5)
	li	a1,16
	mv	a0,a5
	call	ssl_compute_padding_length
	sw	a0,-52(s0)
	.loc 5 1000 13
	lw	a5,-204(s0)
	addi	a1,a5,24
	lw	a5,-204(s0)
	lbu	a5,8(a5)
	lw	a4,-52(s0)
	mv	a3,a5
	lw	a2,-24(s0)
	lw	a0,-48(s0)
	call	ssl_build_inner_plaintext
	mv	a5,a0
	.loc 5 1000 12 discriminator 1
	beq	a5,zero,.L134
	.loc 5 1005 20
	li	a5,-28672
	addi	a5,a5,1536
	j	.L177
.L134:
	.loc 5 1008 19
	lw	a5,-204(s0)
	li	a4,25
	sb	a4,8(a5)
.L133:
.LBE51:
	.loc 5 1012 21
	lw	a5,-204(s0)
	lw	a4,16(a5)
	.loc 5 1012 37
	lw	a5,-204(s0)
	lw	a3,24(a5)
	.loc 5 1012 53
	lw	a5,-204(s0)
	lw	a5,20(a5)
	.loc 5 1012 48
	add	a5,a3,a5
	.loc 5 1012 16
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 5 1018 8
	lbu	a5,-41(s0)
	beq	a5,zero,.L135
	.loc 5 1018 45 discriminator 1
	lbu	a4,-41(s0)
	li	a5,1
	bne	a4,a5,.L136
.L135:
.LBB52:
	.loc 5 1020 35
	lw	a5,-200(s0)
	lw	a5,12(a5)
	.loc 5 1020 12
	lw	a4,-24(s0)
	bgeu	a4,a5,.L137
	.loc 5 1021 13
	lui	a5,%hi(.LC18)
	addi	a4,a5,%lo(.LC18)
	li	a3,1021
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-196(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1022 20
	li	a5,-28672
	addi	a5,a5,1536
	j	.L177
.L137:
	.loc 5 1026 13
	li	a5,-110
	sw	a5,-28(s0)
	.loc 5 1033 9
	lw	a5,-200(s0)
	lhu	a3,80(a5)
	lw	a5,-200(s0)
	lw	a4,16(a5)
	addi	a1,s0,-128
	addi	a5,s0,-124
	lw	a2,-204(s0)
	mv	a0,a5
	call	ssl_extract_add_data_from_record
	.loc 5 1060 15
	lw	a5,-200(s0)
	addi	a5,a5,52
	lw	a3,-128(s0)
	addi	a4,s0,-124
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_hmac_update
	sw	a0,-28(s0)
	.loc 5 1062 12
	lw	a5,-28(s0)
	bne	a5,zero,.L178
	.loc 5 1065 15
	lw	a5,-200(s0)
	addi	a4,a5,52
	lw	a5,-204(s0)
	lw	a5,24(a5)
	mv	a2,a5
	lw	a1,-48(s0)
	mv	a0,a4
	call	mbedtls_md_hmac_update
	sw	a0,-28(s0)
	.loc 5 1066 12
	lw	a5,-28(s0)
	bne	a5,zero,.L179
	.loc 5 1069 15
	lw	a5,-200(s0)
	addi	a5,a5,52
	addi	a4,s0,-192
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_hmac_finish
	sw	a0,-28(s0)
	.loc 5 1070 12
	lw	a5,-28(s0)
	bne	a5,zero,.L180
	.loc 5 1073 15
	lw	a5,-200(s0)
	addi	a5,a5,52
	mv	a0,a5
	call	mbedtls_md_hmac_reset
	sw	a0,-28(s0)
	.loc 5 1074 12
	lw	a5,-28(s0)
	bne	a5,zero,.L181
	.loc 5 1079 26
	lw	a5,-204(s0)
	lw	a5,24(a5)
	.loc 5 1079 21
	lw	a4,-48(s0)
	add	a4,a4,a5
	.loc 5 1079 9
	lw	a5,-200(s0)
	lw	a3,12(a5)
	addi	a5,s0,-192
	mv	a2,a3
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 5 1082 159
	lw	a5,-204(s0)
	lw	a5,24(a5)
	.loc 5 1082 154
	lw	a4,-48(s0)
	add	a4,a4,a5
	.loc 5 1082 9
	lw	a5,-200(s0)
	lw	a5,12(a5)
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC19)
	addi	a4,a4,%lo(.LC19)
	li	a3,1082
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-196(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1085 12
	lw	a5,-204(s0)
	lw	a4,24(a5)
	.loc 5 1085 35
	lw	a5,-200(s0)
	lw	a5,12(a5)
	.loc 5 1085 23
	add	a4,a4,a5
	lw	a5,-204(s0)
	sw	a4,24(a5)
	.loc 5 1086 32
	lw	a5,-200(s0)
	lw	a5,12(a5)
	.loc 5 1086 20
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 5 1087 18
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	j	.L140
.L178:
	.loc 5 1063 13
	nop
	j	.L140
.L179:
	.loc 5 1067 13
	nop
	j	.L140
.L180:
	.loc 5 1071 13
	nop
	j	.L140
.L181:
	.loc 5 1075 13
	nop
.L140:
	.loc 5 1090 9
	lw	a5,-200(s0)
	lw	a4,12(a5)
	addi	a5,s0,-192
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 5 1098 12
	lw	a5,-28(s0)
	beq	a5,zero,.L136
	.loc 5 1099 13
	lw	a5,-28(s0)
	lui	a4,%hi(.LC20)
	addi	a4,a4,%lo(.LC20)
	li	a3,1099
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-196(s0)
	call	mbedtls_debug_print_ret
	.loc 5 1100 20
	lw	a5,-28(s0)
	j	.L177
.L136:
.LBE52:
	.loc 5 1120 8
	lbu	a4,-41(s0)
	li	a5,3
	bne	a4,a5,.L145
.LBB53:
	.loc 5 1125 13
	lw	a0,-200(s0)
	call	ssl_transform_aead_dynamic_iv_is_explicit
	sw	a0,-56(s0)
	.loc 5 1129 13
	li	a5,-110
	sw	a5,-60(s0)
	.loc 5 1132 35
	lw	a5,-200(s0)
	lw	a5,16(a5)
	.loc 5 1132 12
	lw	a4,-24(s0)
	bgeu	a4,a5,.L146
	.loc 5 1133 13
	lui	a5,%hi(.LC18)
	addi	a4,a5,%lo(.LC18)
	li	a3,1133
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-196(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1134 20
	li	a5,-28672
	addi	a5,a5,1536
	j	.L177
.L146:
	.loc 5 1149 20
	lw	a5,-204(s0)
	sw	a5,-64(s0)
	.loc 5 1150 24
	li	a5,8
	sw	a5,-68(s0)
	.loc 5 1153 41
	lw	a5,-200(s0)
	addi	a2,a5,20
	.loc 5 1152 9
	lw	a5,-200(s0)
	lw	a3,8(a5)
	addi	a0,s0,-140
	lw	a5,-68(s0)
	lw	a4,-64(s0)
	li	a1,12
	call	ssl_build_record_nonce
	.loc 5 1162 9
	lw	a5,-200(s0)
	lhu	a3,80(a5)
	lw	a5,-200(s0)
	lw	a4,16(a5)
	addi	a1,s0,-128
	addi	a5,s0,-124
	lw	a2,-204(s0)
	mv	a0,a5
	call	ssl_extract_add_data_from_record
	.loc 5 1166 9
	lw	a5,-200(s0)
	lw	a4,4(a5)
	addi	a5,s0,-140
	mv	a6,a4
	lui	a4,%hi(.LC21)
	addi	a4,a4,%lo(.LC21)
	li	a3,1166
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-196(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1168 9
	lw	a5,-56(s0)
	beq	a5,zero,.L148
	.loc 5 1168 9 is_stmt 0 discriminator 1
	lw	a5,-68(s0)
	j	.L149
.L148:
	.loc 5 1168 9 discriminator 2
	li	a5,0
.L149:
	.loc 5 1168 9 discriminator 4
	mv	a6,a5
	lw	a5,-64(s0)
	lui	a4,%hi(.LC22)
	addi	a4,a4,%lo(.LC22)
	li	a3,1168
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-196(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1171 9 is_stmt 1
	lw	a4,-128(s0)
	addi	a5,s0,-124
	mv	a6,a4
	lui	a4,%hi(.LC23)
	addi	a4,a4,%lo(.LC23)
	li	a3,1171
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-196(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1173 9
	lw	a5,-204(s0)
	lw	a5,24(a5)
	lui	a4,%hi(.LC24)
	addi	a4,a4,%lo(.LC24)
	li	a3,1173
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,3
	lw	a0,-196(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1195 20
	lw	a5,-200(s0)
	addi	a0,a5,84
	lw	a5,-200(s0)
	lw	a2,4(a5)
	lw	t3,-128(s0)
	lw	a5,-204(s0)
	lw	a6,24(a5)
	.loc 5 1199 61
	lw	a5,-204(s0)
	lw	a5,16(a5)
	.loc 5 1199 93
	lw	a4,-204(s0)
	lw	a4,12(a4)
	.loc 5 1199 88
	lw	a3,-48(s0)
	sub	a4,a3,a4
	.loc 5 1195 20
	sub	a5,a5,a4
	lw	a4,-204(s0)
	addi	a4,a4,24
	lw	a3,-200(s0)
	lw	a3,16(a3)
	addi	t1,s0,-124
	addi	a1,s0,-140
	sw	a3,8(sp)
	sw	a4,4(sp)
	sw	a5,0(sp)
	lw	a7,-48(s0)
	lw	a5,-48(s0)
	mv	a4,t3
	mv	a3,t1
	call	mbedtls_cipher_auth_encrypt_ext
	sw	a0,-60(s0)
	.loc 5 1195 12 discriminator 1
	lw	a5,-60(s0)
	beq	a5,zero,.L150
	.loc 5 1202 13
	lw	a5,-60(s0)
	lui	a4,%hi(.LC25)
	addi	a4,a4,%lo(.LC25)
	li	a3,1202
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-196(s0)
	call	mbedtls_debug_print_ret
	.loc 5 1203 20
	lw	a5,-60(s0)
	j	.L177
.L150:
	.loc 5 1207 165
	lw	a5,-204(s0)
	lw	a4,24(a5)
	.loc 5 1207 187
	lw	a5,-200(s0)
	lw	a5,16(a5)
	.loc 5 1207 176
	sub	a5,a4,a5
	lw	a4,-48(s0)
	add	a4,a4,a5
	.loc 5 1207 9
	lw	a5,-200(s0)
	lw	a5,16(a5)
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC26)
	addi	a4,a4,%lo(.LC26)
	li	a3,1207
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-196(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1211 32
	lw	a5,-200(s0)
	lw	a5,16(a5)
	.loc 5 1211 20
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 5 1216 12
	lw	a5,-56(s0)
	beq	a5,zero,.L151
	.loc 5 1217 20
	lw	a5,-204(s0)
	lw	a5,20(a5)
	.loc 5 1217 16
	lw	a4,-68(s0)
	bleu	a4,a5,.L152
	.loc 5 1218 17
	lui	a5,%hi(.LC18)
	addi	a4,a5,%lo(.LC18)
	li	a3,1218
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-196(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1219 24
	li	a5,-28672
	addi	a5,a5,1536
	j	.L177
.L152:
	.loc 5 1222 25
	lw	a5,-68(s0)
	neg	a5,a5
	lw	a4,-48(s0)
	add	a5,a4,a5
	.loc 5 1222 13
	lw	a2,-68(s0)
	lw	a1,-64(s0)
	mv	a0,a5
	call	memcpy
	.loc 5 1223 16
	lw	a5,-204(s0)
	lw	a4,20(a5)
	.loc 5 1223 30
	lw	a5,-68(s0)
	sub	a4,a4,a5
	lw	a5,-204(s0)
	sw	a4,20(a5)
	.loc 5 1224 16
	lw	a5,-204(s0)
	lw	a4,24(a5)
	.loc 5 1224 27
	lw	a5,-68(s0)
	add	a4,a4,a5
	lw	a5,-204(s0)
	sw	a4,24(a5)
.L151:
	.loc 5 1227 18
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.LBE53:
	j	.L153
.L145:
	.loc 5 1231 8
	lbu	a4,-41(s0)
	li	a5,1
	beq	a4,a5,.L154
	.loc 5 1231 42 discriminator 1
	lbu	a4,-41(s0)
	li	a5,2
	bne	a4,a5,.L155
.L154:
.LBB54:
	.loc 5 1233 13
	li	a5,-110
	sw	a5,-32(s0)
	.loc 5 1244 27
	lw	a5,-200(s0)
	lw	a4,4(a5)
	.loc 5 1244 41
	lw	a5,-204(s0)
	lw	a5,24(a5)
	.loc 5 1244 52
	addi	a3,a5,1
	.loc 5 1244 68
	lw	a5,-200(s0)
	lw	a5,4(a5)
	.loc 5 1244 57
	remu	a5,a3,a5
	.loc 5 1244 16
	sub	a5,a4,a5
	sw	a5,-36(s0)
	.loc 5 1245 32
	lw	a5,-200(s0)
	lw	a5,4(a5)
	.loc 5 1245 12
	lw	a4,-36(s0)
	bne	a4,a5,.L156
	.loc 5 1246 20
	sw	zero,-36(s0)
.L156:
	.loc 5 1250 33
	lw	a5,-36(s0)
	addi	a5,a5,1
	.loc 5 1250 12
	lw	a4,-24(s0)
	bgeu	a4,a5,.L157
	.loc 5 1251 13
	lui	a5,%hi(.LC18)
	addi	a4,a5,%lo(.LC18)
	li	a3,1251
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-196(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1252 20
	li	a5,-28672
	addi	a5,a5,1536
	j	.L177
.L157:
	.loc 5 1255 16
	sw	zero,-40(s0)
	.loc 5 1255 9
	j	.L159
.L160:
	.loc 5 1256 21
	lw	a5,-204(s0)
	lw	a4,24(a5)
	.loc 5 1256 32
	lw	a5,-40(s0)
	add	a5,a4,a5
	.loc 5 1256 17
	lw	a4,-48(s0)
	add	a5,a4,a5
	.loc 5 1256 39
	lw	a4,-36(s0)
	andi	a4,a4,0xff
	.loc 5 1256 37
	sb	a4,0(a5)
	.loc 5 1255 35 discriminator 3
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-40(s0)
.L159:
	.loc 5 1255 23 discriminator 1
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	bleu	a4,a5,.L160
	.loc 5 1259 12
	lw	a5,-204(s0)
	lw	a4,24(a5)
	.loc 5 1259 23
	lw	a5,-36(s0)
	add	a5,a4,a5
	addi	a4,a5,1
	lw	a5,-204(s0)
	sw	a4,24(a5)
	.loc 5 1260 20
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 5 1267 12
	lw	a5,-208(s0)
	bne	a5,zero,.L161
	.loc 5 1268 13
	lui	a5,%hi(.LC27)
	addi	a4,a5,%lo(.LC27)
	li	a3,1268
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-196(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1269 20
	li	a5,-28672
	addi	a5,a5,1024
	j	.L177
.L161:
	.loc 5 1272 16
	lw	a5,-204(s0)
	lw	a4,20(a5)
	.loc 5 1272 41
	lw	a5,-200(s0)
	lw	a5,4(a5)
	.loc 5 1272 12
	bgeu	a4,a5,.L162
	.loc 5 1273 13
	lui	a5,%hi(.LC18)
	addi	a4,a5,%lo(.LC18)
	li	a3,1273
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-196(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1274 20
	li	a5,-28672
	addi	a5,a5,1536
	j	.L177
.L162:
	.loc 5 1280 37
	lw	a5,-200(s0)
	addi	a4,a5,20
	.loc 5 1280 15
	lw	a5,-200(s0)
	lw	a3,4(a5)
	lw	a5,-208(s0)
	mv	a2,a3
	mv	a1,a4
	lw	a0,-212(s0)
	jalr	a5
.LVL2:
	sw	a0,-32(s0)
	.loc 5 1281 12
	lw	a5,-32(s0)
	beq	a5,zero,.L163
	.loc 5 1282 20
	lw	a5,-32(s0)
	j	.L177
.L163:
	.loc 5 1285 32
	lw	a5,-200(s0)
	lw	a5,4(a5)
	.loc 5 1285 21
	neg	a5,a5
	lw	a4,-48(s0)
	add	a4,a4,a5
	.loc 5 1285 50
	lw	a5,-200(s0)
	addi	a3,a5,20
	.loc 5 1285 9
	lw	a5,-200(s0)
	lw	a5,4(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcpy
	.loc 5 1288 9
	lw	a5,-204(s0)
	lw	a4,24(a5)
	lw	a5,-200(s0)
	lw	a3,4(a5)
	lw	a5,-36(s0)
	addi	a5,a5,1
	mv	a7,a5
	mv	a6,a3
	mv	a5,a4
	lui	a4,%hi(.LC28)
	addi	a4,a4,%lo(.LC28)
	li	a3,1288
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,3
	lw	a0,-196(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1338 20
	lw	a5,-200(s0)
	addi	a0,a5,84
	.loc 5 1339 50
	lw	a5,-200(s0)
	addi	a1,a5,20
	.loc 5 1338 20
	lw	a5,-200(s0)
	lw	a2,4(a5)
	lw	a5,-204(s0)
	lw	a4,24(a5)
	addi	a5,s0,-144
	mv	a6,a5
	lw	a5,-48(s0)
	lw	a3,-48(s0)
	call	mbedtls_cipher_crypt
	sw	a0,-32(s0)
	.loc 5 1338 12 discriminator 1
	lw	a5,-32(s0)
	beq	a5,zero,.L164
	.loc 5 1343 13
	lw	a5,-32(s0)
	lui	a4,%hi(.LC29)
	addi	a4,a4,%lo(.LC29)
	li	a3,1343
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-196(s0)
	call	mbedtls_debug_print_ret
	.loc 5 1344 20
	lw	a5,-32(s0)
	j	.L177
.L164:
	.loc 5 1348 16
	lw	a5,-204(s0)
	lw	a4,24(a5)
	.loc 5 1348 27
	lw	a5,-144(s0)
	.loc 5 1348 12
	beq	a4,a5,.L165
	.loc 5 1349 13
	lui	a5,%hi(.LC30)
	addi	a4,a5,%lo(.LC30)
	li	a3,1349
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-196(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1350 20
	li	a5,-28672
	addi	a5,a5,1024
	j	.L177
.L165:
	.loc 5 1353 26
	lw	a5,-200(s0)
	lw	a5,4(a5)
	.loc 5 1353 14
	neg	a5,a5
	lw	a4,-48(s0)
	add	a5,a4,a5
	sw	a5,-48(s0)
	.loc 5 1354 12
	lw	a5,-204(s0)
	lw	a4,20(a5)
	.loc 5 1354 38
	lw	a5,-200(s0)
	lw	a5,4(a5)
	.loc 5 1354 26
	sub	a4,a4,a5
	lw	a5,-204(s0)
	sw	a4,20(a5)
	.loc 5 1355 12
	lw	a5,-204(s0)
	lw	a4,24(a5)
	.loc 5 1355 35
	lw	a5,-200(s0)
	lw	a5,4(a5)
	.loc 5 1355 23
	add	a4,a4,a5
	lw	a5,-204(s0)
	sw	a4,24(a5)
	.loc 5 1358 12
	lw	a5,-20(s0)
	bne	a5,zero,.L182
.LBB55:
	.loc 5 1368 39
	lw	a5,-200(s0)
	lw	a5,12(a5)
	.loc 5 1368 16
	lw	a4,-24(s0)
	bgeu	a4,a5,.L167
	.loc 5 1369 17
	lui	a5,%hi(.LC18)
	addi	a4,a5,%lo(.LC18)
	li	a3,1369
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-196(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1370 24
	li	a5,-28672
	addi	a5,a5,1536
	j	.L168
.L167:
	.loc 5 1373 13
	lw	a5,-200(s0)
	lhu	a3,80(a5)
	lw	a5,-200(s0)
	lw	a4,16(a5)
	addi	a1,s0,-128
	addi	a5,s0,-124
	lw	a2,-204(s0)
	mv	a0,a5
	call	ssl_extract_add_data_from_record
	.loc 5 1377 13
	lui	a5,%hi(.LC31)
	addi	a4,a5,%lo(.LC31)
	li	a3,1377
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,3
	lw	a0,-196(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1378 13
	lw	a4,-128(s0)
	addi	a5,s0,-124
	mv	a6,a4
	lui	a4,%hi(.LC32)
	addi	a4,a4,%lo(.LC32)
	li	a3,1378
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-196(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1404 19
	lw	a5,-200(s0)
	addi	a5,a5,52
	lw	a3,-128(s0)
	addi	a4,s0,-124
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_hmac_update
	sw	a0,-32(s0)
	.loc 5 1406 16
	lw	a5,-32(s0)
	bne	a5,zero,.L183
	.loc 5 1409 19
	lw	a5,-200(s0)
	addi	a4,a5,52
	lw	a5,-204(s0)
	lw	a5,24(a5)
	mv	a2,a5
	lw	a1,-48(s0)
	mv	a0,a4
	call	mbedtls_md_hmac_update
	sw	a0,-32(s0)
	.loc 5 1411 16
	lw	a5,-32(s0)
	bne	a5,zero,.L184
	.loc 5 1414 19
	lw	a5,-200(s0)
	addi	a5,a5,52
	addi	a4,s0,-192
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_hmac_finish
	sw	a0,-32(s0)
	.loc 5 1415 16
	lw	a5,-32(s0)
	bne	a5,zero,.L185
	.loc 5 1418 19
	lw	a5,-200(s0)
	addi	a5,a5,52
	mv	a0,a5
	call	mbedtls_md_hmac_reset
	sw	a0,-32(s0)
	.loc 5 1419 16
	lw	a5,-32(s0)
	bne	a5,zero,.L186
	.loc 5 1424 30
	lw	a5,-204(s0)
	lw	a5,24(a5)
	.loc 5 1424 25
	lw	a4,-48(s0)
	add	a4,a4,a5
	.loc 5 1424 13
	lw	a5,-200(s0)
	lw	a3,12(a5)
	addi	a5,s0,-192
	mv	a2,a3
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 5 1426 16
	lw	a5,-204(s0)
	lw	a4,24(a5)
	.loc 5 1426 39
	lw	a5,-200(s0)
	lw	a5,12(a5)
	.loc 5 1426 27
	add	a4,a4,a5
	lw	a5,-204(s0)
	sw	a4,24(a5)
	.loc 5 1427 36
	lw	a5,-200(s0)
	lw	a5,12(a5)
	.loc 5 1427 24
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	.loc 5 1428 22
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	j	.L170
.L183:
	.loc 5 1407 17
	nop
	j	.L170
.L184:
	.loc 5 1412 17
	nop
	j	.L170
.L185:
	.loc 5 1416 17
	nop
	j	.L170
.L186:
	.loc 5 1420 17
	nop
.L170:
	.loc 5 1431 13
	lw	a5,-200(s0)
	lw	a4,12(a5)
	addi	a5,s0,-192
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 5 1439 16
	lw	a5,-32(s0)
	beq	a5,zero,.L182
	.loc 5 1440 17
	lw	a5,-32(s0)
	lui	a4,%hi(.LC33)
	addi	a4,a4,%lo(.LC33)
	li	a3,1440
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-196(s0)
	call	mbedtls_debug_print_ret
	.loc 5 1441 24
	lw	a5,-32(s0)
.L168:
.LBE55:
	.loc 5 1252 20 discriminator 1
	j	.L177
.L155:
.LBE54:
	.loc 5 1448 9
	lui	a5,%hi(.LC30)
	addi	a4,a5,%lo(.LC30)
	li	a3,1448
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-196(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1449 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L177
.L182:
	.loc 5 1232 47
	nop
.L153:
	.loc 5 1453 8
	lw	a4,-20(s0)
	li	a5,1
	beq	a4,a5,.L176
	.loc 5 1454 9
	lui	a5,%hi(.LC30)
	addi	a4,a5,%lo(.LC30)
	li	a3,1454
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-196(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1455 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L177
.L176:
	.loc 5 1458 5
	lui	a5,%hi(.LC34)
	addi	a4,a5,%lo(.LC34)
	li	a3,1458
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-196(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1460 12
	li	a5,0
.L177:
	.loc 5 1461 1
	mv	a0,a5
	lw	ra,236(sp)
	.cfi_restore 1
	lw	s0,232(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 240
	addi	sp,sp,240
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE181:
	.size	mbedtls_ssl_encrypt_buf, .-mbedtls_ssl_encrypt_buf
	.section	.rodata
	.align	2
.LC35:
	.string	"=> decrypt buf"
	.align	2
.LC36:
	.string	"bad record structure provided to decrypt_buf"
	.align	2
.LC37:
	.string	"msglen (%zu ) < explicit_iv_len (%zu) "
	.align	2
.LC38:
	.string	"msglen (%zu) < taglen (%zu) "
	.align	2
.LC39:
	.string	"IV used"
	.align	2
.LC40:
	.string	"TAG used"
	.align	2
.LC41:
	.string	"mbedtls_cipher_auth_decrypt_ext"
	.align	2
.LC42:
	.string	"msglen (%zu) < max( ivlen(%zu), maclen (%zu) + 1 ) ( + expl IV )"
	.align	2
.LC43:
	.string	"message  mac"
	.align	2
.LC44:
	.string	"expected mac"
	.align	2
.LC45:
	.string	"message mac does not match"
	.align	2
.LC46:
	.string	"mbedtls_hmac_xxx"
	.align	2
.LC47:
	.string	"msglen (%zu) %% ivlen (%zu) != 0"
	.align	2
.LC48:
	.string	"msglen (%zu) < maclen (%zu) + padlen (%zu)"
	.align	2
.LC49:
	.string	"bad padding byte detected"
	.align	2
.LC50:
	.string	"raw buffer after decryption"
	.align	2
.LC51:
	.string	"mbedtls_ct_hmac"
	.align	2
.LC52:
	.string	"<= decrypt buf"
	.section	.text.mbedtls_ssl_decrypt_buf,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_decrypt_buf
	.type	mbedtls_ssl_decrypt_buf, @function
mbedtls_ssl_decrypt_buf:
.LFB182:
	.loc 5 1466 1
	.cfi_startproc
	addi	sp,sp,-320
	.cfi_def_cfa_offset 320
	sw	ra,316(sp)
	sw	s0,312(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,320
	.cfi_def_cfa 8, 0
	sw	a0,-292(s0)
	sw	a1,-296(s0)
	sw	a2,-300(s0)
	.loc 5 1473 9
	sw	zero,-24(s0)
	.loc 5 1475 12
	sw	zero,-28(s0)
	.loc 5 1476 64
	li	a0,-1
	call	mbedtls_ct_compiler_opaque
	sw	a0,-32(s0)
	.loc 5 1494 5
	lui	a5,%hi(.LC35)
	addi	a4,a5,%lo(.LC35)
	li	a3,1494
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1495 8
	lw	a5,-300(s0)
	beq	a5,zero,.L188
	.loc 5 1496 12
	lw	a5,-300(s0)
	lw	a5,12(a5)
	.loc 5 1495 40 discriminator 1
	beq	a5,zero,.L188
	.loc 5 1497 12
	lw	a5,-300(s0)
	lw	a4,16(a5)
	.loc 5 1497 27
	lw	a5,-300(s0)
	lw	a5,20(a5)
	.loc 5 1496 40
	bltu	a4,a5,.L188
	.loc 5 1498 12
	lw	a5,-300(s0)
	lw	a4,16(a5)
	.loc 5 1498 27
	lw	a5,-300(s0)
	lw	a5,20(a5)
	.loc 5 1498 22
	sub	a4,a4,a5
	.loc 5 1498 46
	lw	a5,-300(s0)
	lw	a5,24(a5)
	.loc 5 1497 41
	bgeu	a4,a5,.L189
.L188:
	.loc 5 1499 9
	lui	a5,%hi(.LC36)
	addi	a4,a5,%lo(.LC36)
	li	a3,1499
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1500 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L235
.L189:
	.loc 5 1503 15
	lw	a5,-300(s0)
	lw	a4,12(a5)
	.loc 5 1503 26
	lw	a5,-300(s0)
	lw	a5,20(a5)
	.loc 5 1503 10
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 5 1504 16
	lw	a0,-296(s0)
	call	mbedtls_ssl_get_mode_from_transform
	mv	a5,a0
	sb	a5,-49(s0)
	.loc 5 1510 12
	lw	a5,-300(s0)
	lbu	a4,28(a5)
	.loc 5 1510 34
	lw	a5,-296(s0)
	lbu	a5,220(a5)
	.loc 5 1510 8
	bne	a4,a5,.L191
	.loc 5 1511 19
	lw	a5,-300(s0)
	addi	a4,a5,29
	.loc 5 1511 35
	lw	a5,-296(s0)
	addi	a3,a5,222
	.loc 5 1511 48
	lw	a5,-300(s0)
	lbu	a5,28(a5)
	.loc 5 1511 9
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 5 1510 47 discriminator 1
	beq	a5,zero,.L192
.L191:
	.loc 5 1512 16
	li	a5,-24576
	j	.L235
.L192:
	.loc 5 1531 8
	lbu	a4,-49(s0)
	li	a5,3
	bne	a4,a5,.L193
.LBB56:
	.loc 5 1547 24
	li	a5,8
	sw	a5,-96(s0)
	.loc 5 1548 13
	lw	a0,-296(s0)
	call	ssl_transform_aead_dynamic_iv_is_explicit
	mv	a4,a0
	.loc 5 1548 12 discriminator 1
	li	a5,1
	bne	a4,a5,.L194
	.loc 5 1549 20
	lw	a5,-300(s0)
	lw	a5,24(a5)
	.loc 5 1549 16
	lw	a4,-96(s0)
	bleu	a4,a5,.L195
	.loc 5 1550 17
	lw	a5,-300(s0)
	lw	a5,24(a5)
	lw	a6,-96(s0)
	lui	a4,%hi(.LC37)
	addi	a4,a4,%lo(.LC37)
	li	a3,1550
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1554 24
	li	a5,-28672
	addi	a5,a5,-384
	j	.L235
.L195:
	.loc 5 1556 24
	lw	a5,-36(s0)
	sw	a5,-40(s0)
	.loc 5 1558 18
	lw	a4,-36(s0)
	lw	a5,-96(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 5 1559 16
	lw	a5,-300(s0)
	lw	a4,20(a5)
	.loc 5 1559 30
	lw	a5,-96(s0)
	add	a4,a4,a5
	lw	a5,-300(s0)
	sw	a4,20(a5)
	.loc 5 1560 16
	lw	a5,-300(s0)
	lw	a4,24(a5)
	.loc 5 1560 27
	lw	a5,-96(s0)
	sub	a4,a4,a5
	lw	a5,-300(s0)
	sw	a4,24(a5)
	j	.L197
.L194:
	.loc 5 1562 24
	lw	a5,-300(s0)
	sw	a5,-40(s0)
.L197:
	.loc 5 1566 16
	lw	a5,-300(s0)
	lw	a4,24(a5)
	.loc 5 1566 38
	lw	a5,-296(s0)
	lw	a5,16(a5)
	.loc 5 1566 12
	bgeu	a4,a5,.L198
	.loc 5 1567 13
	lw	a5,-300(s0)
	lw	a4,24(a5)
	lw	a5,-296(s0)
	lw	a5,16(a5)
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC38)
	addi	a4,a4,%lo(.LC38)
	li	a3,1567
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1571 20
	li	a5,-28672
	addi	a5,a5,-384
	j	.L235
.L198:
	.loc 5 1573 12
	lw	a5,-300(s0)
	lw	a4,24(a5)
	.loc 5 1573 35
	lw	a5,-296(s0)
	lw	a5,16(a5)
	.loc 5 1573 23
	sub	a4,a4,a5
	lw	a5,-300(s0)
	sw	a4,24(a5)
	.loc 5 1579 41
	lw	a5,-296(s0)
	addi	a2,a5,36
	.loc 5 1578 9
	lw	a5,-296(s0)
	lw	a3,8(a5)
	addi	a0,s0,-180
	lw	a5,-96(s0)
	lw	a4,-40(s0)
	li	a1,12
	call	ssl_build_record_nonce
	.loc 5 1588 9
	lw	a5,-296(s0)
	lhu	a3,80(a5)
	lw	a5,-296(s0)
	lw	a4,16(a5)
	addi	a1,s0,-168
	addi	a5,s0,-164
	lw	a2,-300(s0)
	mv	a0,a5
	call	ssl_extract_add_data_from_record
	.loc 5 1591 9
	lw	a4,-168(s0)
	addi	a5,s0,-164
	mv	a6,a4
	lui	a4,%hi(.LC23)
	addi	a4,a4,%lo(.LC23)
	li	a3,1591
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-292(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1600 9
	lw	a5,-296(s0)
	lw	a4,4(a5)
	addi	a5,s0,-180
	mv	a6,a4
	lui	a4,%hi(.LC39)
	addi	a4,a4,%lo(.LC39)
	li	a3,1600
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-292(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1601 155
	lw	a5,-300(s0)
	lw	a5,24(a5)
	.loc 5 1601 150
	lw	a4,-36(s0)
	add	a4,a4,a5
	.loc 5 1601 9
	lw	a5,-296(s0)
	lw	a5,16(a5)
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC40)
	addi	a4,a4,%lo(.LC40)
	li	a3,1601
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-292(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1622 20
	lw	a5,-296(s0)
	addi	a0,a5,152
	lw	a5,-296(s0)
	lw	a2,4(a5)
	lw	t1,-168(s0)
	.loc 5 1626 33
	lw	a5,-300(s0)
	lw	a4,24(a5)
	.loc 5 1626 55
	lw	a5,-296(s0)
	lw	a5,16(a5)
	.loc 5 1622 20
	add	a6,a4,a5
	.loc 5 1627 33
	lw	a5,-300(s0)
	lw	a5,16(a5)
	.loc 5 1627 65
	lw	a4,-300(s0)
	lw	a4,12(a4)
	.loc 5 1627 60
	lw	a3,-36(s0)
	sub	a4,a3,a4
	.loc 5 1622 20
	sub	a5,a5,a4
	lw	a4,-296(s0)
	lw	a4,16(a4)
	addi	a3,s0,-164
	addi	a1,s0,-180
	sw	a4,8(sp)
	addi	a4,s0,-108
	sw	a4,4(sp)
	sw	a5,0(sp)
	lw	a7,-36(s0)
	lw	a5,-36(s0)
	mv	a4,t1
	call	mbedtls_cipher_auth_decrypt_ext
	sw	a0,-20(s0)
	.loc 5 1622 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L199
	.loc 5 1629 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC41)
	addi	a4,a4,%lo(.LC41)
	li	a3,1629
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_ret
	.loc 5 1631 16
	lw	a4,-20(s0)
	li	a5,-24576
	addi	a5,a5,-768
	bne	a4,a5,.L200
	.loc 5 1632 24
	li	a5,-28672
	addi	a5,a5,-384
	j	.L235
.L200:
	.loc 5 1635 20
	lw	a5,-20(s0)
	j	.L235
.L199:
	.loc 5 1639 18
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 5 1642 24
	lw	a5,-300(s0)
	lw	a4,24(a5)
	.loc 5 1642 18
	lw	a5,-108(s0)
	.loc 5 1642 12
	beq	a4,a5,.L202
	.loc 5 1643 13
	lui	a5,%hi(.LC30)
	addi	a4,a5,%lo(.LC30)
	li	a3,1643
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1644 20
	li	a5,-28672
	addi	a5,a5,1024
	j	.L235
.L193:
.LBE56:
	.loc 5 1649 8
	lbu	a4,-49(s0)
	li	a5,1
	beq	a4,a5,.L203
	.loc 5 1649 42 discriminator 1
	lbu	a4,-49(s0)
	li	a5,2
	bne	a4,a5,.L204
.L203:
.LBB57:
	.loc 5 1651 16
	sw	zero,-56(s0)
	.loc 5 1663 28
	lw	a5,-296(s0)
	lw	a5,4(a5)
	.loc 5 1663 16
	lw	a4,-56(s0)
	add	a5,a4,a5
	sw	a5,-56(s0)
	.loc 5 1687 16
	lw	a5,-300(s0)
	lw	a4,24(a5)
	.loc 5 1687 47
	lw	a5,-296(s0)
	lw	a3,4(a5)
	.loc 5 1687 36
	lw	a5,-56(s0)
	add	a5,a3,a5
	.loc 5 1687 12
	bltu	a4,a5,.L205
	.loc 5 1688 16
	lw	a5,-300(s0)
	lw	a4,24(a5)
	.loc 5 1688 47
	lw	a5,-296(s0)
	lw	a3,12(a5)
	.loc 5 1688 36
	lw	a5,-56(s0)
	add	a5,a3,a5
	.loc 5 1688 56
	addi	a5,a5,1
	.loc 5 1687 55 discriminator 1
	bgeu	a4,a5,.L206
.L205:
	.loc 5 1689 13
	lw	a5,-300(s0)
	lw	a4,24(a5)
	lw	a5,-296(s0)
	lw	a3,4(a5)
	lw	a5,-296(s0)
	lw	a5,12(a5)
	mv	a7,a5
	mv	a6,a3
	mv	a5,a4
	lui	a4,%hi(.LC42)
	addi	a4,a4,%lo(.LC42)
	li	a3,1689
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1696 20
	li	a5,-28672
	addi	a5,a5,-384
	j	.L235
.L206:
	.loc 5 1703 12
	lbu	a4,-49(s0)
	li	a5,2
	bne	a4,a5,.L207
.LBB58:
	.loc 5 1710 13
	lui	a5,%hi(.LC31)
	addi	a4,a5,%lo(.LC31)
	li	a3,1710
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1722 16
	lw	a5,-300(s0)
	lw	a4,24(a5)
	.loc 5 1722 39
	lw	a5,-296(s0)
	lw	a5,12(a5)
	.loc 5 1722 27
	sub	a4,a4,a5
	lw	a5,-300(s0)
	sw	a4,24(a5)
	.loc 5 1723 13
	lw	a5,-296(s0)
	lhu	a3,80(a5)
	lw	a5,-296(s0)
	lw	a4,16(a5)
	addi	a1,s0,-168
	addi	a5,s0,-164
	lw	a2,-300(s0)
	mv	a0,a5
	call	ssl_extract_add_data_from_record
	.loc 5 1728 13
	lw	a4,-168(s0)
	addi	a5,s0,-164
	mv	a6,a4
	lui	a4,%hi(.LC32)
	addi	a4,a4,%lo(.LC32)
	li	a3,1728
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-292(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1754 19
	lw	a5,-296(s0)
	addi	a5,a5,64
	lw	a3,-168(s0)
	addi	a4,s0,-164
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_hmac_update
	sw	a0,-20(s0)
	.loc 5 1756 16
	lw	a5,-20(s0)
	bne	a5,zero,.L236
	.loc 5 1759 19
	lw	a5,-296(s0)
	addi	a4,a5,64
	lw	a5,-300(s0)
	lw	a5,24(a5)
	mv	a2,a5
	lw	a1,-36(s0)
	mv	a0,a4
	call	mbedtls_md_hmac_update
	sw	a0,-20(s0)
	.loc 5 1761 16
	lw	a5,-20(s0)
	bne	a5,zero,.L237
	.loc 5 1764 19
	lw	a5,-296(s0)
	addi	a5,a5,64
	addi	a4,s0,-228
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_md_hmac_finish
	sw	a0,-20(s0)
	.loc 5 1765 16
	lw	a5,-20(s0)
	bne	a5,zero,.L238
	.loc 5 1768 19
	lw	a5,-296(s0)
	addi	a5,a5,64
	mv	a0,a5
	call	mbedtls_md_hmac_reset
	sw	a0,-20(s0)
	.loc 5 1769 16
	lw	a5,-20(s0)
	bne	a5,zero,.L239
	.loc 5 1773 163
	lw	a5,-300(s0)
	lw	a5,24(a5)
	.loc 5 1773 158
	lw	a4,-36(s0)
	add	a4,a4,a5
	.loc 5 1773 13
	lw	a5,-296(s0)
	lw	a5,12(a5)
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC43)
	addi	a4,a4,%lo(.LC43)
	li	a3,1773
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-292(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1775 13
	lw	a5,-296(s0)
	lw	a4,12(a5)
	addi	a5,s0,-228
	mv	a6,a4
	lui	a4,%hi(.LC44)
	addi	a4,a4,%lo(.LC44)
	li	a3,1775
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-292(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1779 45
	lw	a5,-300(s0)
	lw	a5,24(a5)
	.loc 5 1779 40
	lw	a4,-36(s0)
	add	a4,a4,a5
	.loc 5 1779 17
	lw	a5,-296(s0)
	lw	a3,12(a5)
	addi	a5,s0,-228
	mv	a2,a3
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_ct_memcmp
	mv	a5,a0
	.loc 5 1779 16 discriminator 1
	beq	a5,zero,.L213
	.loc 5 1781 17
	lui	a5,%hi(.LC45)
	addi	a4,a5,%lo(.LC45)
	li	a3,1781
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1782 21
	li	a5,-28672
	addi	a5,a5,-384
	sw	a5,-20(s0)
	.loc 5 1783 17
	j	.L209
.L213:
	.loc 5 1786 22
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	j	.L209
.L236:
	.loc 5 1757 17
	nop
	j	.L209
.L237:
	.loc 5 1762 17
	nop
	j	.L209
.L238:
	.loc 5 1766 17
	nop
	j	.L209
.L239:
	.loc 5 1770 17
	nop
.L209:
	.loc 5 1796 13
	lw	a5,-296(s0)
	lw	a4,12(a5)
	addi	a5,s0,-228
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 5 1798 16
	lw	a5,-20(s0)
	beq	a5,zero,.L207
	.loc 5 1799 20
	lw	a4,-20(s0)
	li	a5,-28672
	addi	a5,a5,-384
	beq	a4,a5,.L215
	.loc 5 1800 21
	lw	a5,-20(s0)
	lui	a4,%hi(.LC46)
	addi	a4,a4,%lo(.LC46)
	li	a3,1800
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_ret
.L215:
	.loc 5 1802 24
	lw	a5,-20(s0)
	j	.L235
.L207:
.LBE58:
	.loc 5 1814 16
	lw	a5,-300(s0)
	lw	a4,24(a5)
	.loc 5 1814 38
	lw	a5,-296(s0)
	lw	a5,4(a5)
	.loc 5 1814 27
	remu	a5,a4,a5
	.loc 5 1814 12
	beq	a5,zero,.L216
	.loc 5 1815 13
	lw	a5,-300(s0)
	lw	a4,24(a5)
	lw	a5,-296(s0)
	lw	a5,4(a5)
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC47)
	addi	a4,a4,%lo(.LC47)
	li	a3,1815
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1818 20
	li	a5,-28672
	addi	a5,a5,-384
	j	.L235
.L216:
	.loc 5 1826 25
	lw	a5,-296(s0)
	addi	a4,a5,36
	.loc 5 1826 9
	lw	a5,-296(s0)
	lw	a5,4(a5)
	mv	a2,a5
	lw	a1,-36(s0)
	mv	a0,a4
	call	memcpy
	.loc 5 1828 26
	lw	a5,-296(s0)
	lw	a5,4(a5)
	.loc 5 1828 14
	lw	a4,-36(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 5 1829 12
	lw	a5,-300(s0)
	lw	a4,20(a5)
	.loc 5 1829 38
	lw	a5,-296(s0)
	lw	a5,4(a5)
	.loc 5 1829 26
	add	a4,a4,a5
	lw	a5,-300(s0)
	sw	a4,20(a5)
	.loc 5 1830 12
	lw	a5,-300(s0)
	lw	a4,24(a5)
	.loc 5 1830 35
	lw	a5,-296(s0)
	lw	a5,4(a5)
	.loc 5 1830 23
	sub	a4,a4,a5
	lw	a5,-300(s0)
	sw	a4,24(a5)
	.loc 5 1876 20
	lw	a5,-296(s0)
	addi	a0,a5,152
	.loc 5 1877 50
	lw	a5,-296(s0)
	addi	a1,a5,36
	.loc 5 1876 20
	lw	a5,-296(s0)
	lw	a2,4(a5)
	lw	a5,-300(s0)
	lw	a4,24(a5)
	addi	a5,s0,-108
	mv	a6,a5
	lw	a5,-36(s0)
	lw	a3,-36(s0)
	call	mbedtls_cipher_crypt
	sw	a0,-20(s0)
	.loc 5 1876 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L217
	.loc 5 1879 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC29)
	addi	a4,a4,%lo(.LC29)
	li	a3,1879
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_ret
	.loc 5 1880 20
	lw	a5,-20(s0)
	j	.L235
.L217:
	.loc 5 1885 16
	lw	a5,-300(s0)
	lw	a4,24(a5)
	.loc 5 1885 27
	lw	a5,-108(s0)
	.loc 5 1885 12
	beq	a4,a5,.L218
	.loc 5 1886 13
	lui	a5,%hi(.LC30)
	addi	a4,a5,%lo(.LC30)
	li	a3,1886
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1887 20
	li	a5,-28672
	addi	a5,a5,1024
	j	.L235
.L218:
	.loc 5 1894 26
	lw	a5,-300(s0)
	lw	a5,24(a5)
	.loc 5 1894 22
	addi	a5,a5,-1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 5 1894 16
	sw	a5,-28(s0)
	.loc 5 1896 12
	lw	a4,-24(s0)
	li	a5,1
	bne	a4,a5,.L219
.LBB59:
	.loc 5 1898 20
	lw	a5,-300(s0)
	lw	a4,24(a5)
	.loc 5 1899 24
	lw	a5,-28(s0)
	addi	a5,a5,1
	.loc 5 1897 47
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_ct_uint_ge
	sw	a0,-64(s0)
	.loc 5 1900 23
	lw	a1,-32(s0)
	lw	a0,-64(s0)
	call	mbedtls_ct_bool_and
	sw	a0,-32(s0)
	.loc 5 1901 22
	lw	a1,-28(s0)
	lw	a0,-64(s0)
	call	mbedtls_ct_size_if_else_0
	sw	a0,-28(s0)
.LBE59:
	j	.L220
.L219:
.LBB60:
	.loc 5 1904 20
	lw	a5,-300(s0)
	lw	a4,24(a5)
	.loc 5 1904 42
	lw	a5,-296(s0)
	lw	a3,12(a5)
	.loc 5 1904 51
	lw	a5,-28(s0)
	add	a5,a3,a5
	.loc 5 1904 60
	addi	a5,a5,1
	.loc 5 1904 16
	bgeu	a4,a5,.L221
	.loc 5 1905 17
	lw	a5,-300(s0)
	lw	a4,24(a5)
	lw	a5,-296(s0)
	lw	a3,12(a5)
	lw	a5,-28(s0)
	addi	a5,a5,1
	mv	a7,a5
	mv	a6,a3
	mv	a5,a4
	lui	a4,%hi(.LC48)
	addi	a4,a4,%lo(.LC48)
	li	a3,1905
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
.L221:
	.loc 5 1914 20
	lw	a5,-300(s0)
	lw	a3,24(a5)
	.loc 5 1915 26
	lw	a5,-296(s0)
	lw	a4,12(a5)
	.loc 5 1915 35
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 5 1915 44
	addi	a5,a5,1
	.loc 5 1913 47
	mv	a1,a5
	mv	a0,a3
	call	mbedtls_ct_uint_ge
	sw	a0,-60(s0)
	.loc 5 1916 23
	lw	a1,-32(s0)
	lw	a0,-60(s0)
	call	mbedtls_ct_bool_and
	sw	a0,-32(s0)
	.loc 5 1917 22
	lw	a1,-28(s0)
	lw	a0,-60(s0)
	call	mbedtls_ct_size_if_else_0
	sw	a0,-28(s0)
.L220:
.LBE60:
	.loc 5 1920 15
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
	.loc 5 1932 16
	sw	zero,-44(s0)
	.loc 5 1933 40
	lw	a5,-36(s0)
	sw	a5,-68(s0)
	.loc 5 1937 39
	lw	a5,-300(s0)
	lw	a4,24(a5)
	.loc 5 1937 22
	lw	a5,-28(s0)
	sub	a5,a4,a5
	sw	a5,-72(s0)
	.loc 5 1938 38
	lw	a5,-300(s0)
	lw	a5,24(a5)
	.loc 5 1938 22
	li	a4,256
	bleu	a5,a4,.L222
	li	a5,256
.L222:
	sw	a5,-76(s0)
	.loc 5 1939 37
	lw	a5,-300(s0)
	lw	a4,24(a5)
	.loc 5 1939 22
	lw	a5,-76(s0)
	sub	a5,a4,a5
	sw	a5,-80(s0)
	.loc 5 1942 18
	lw	a5,-80(s0)
	sw	a5,-48(s0)
	.loc 5 1942 9
	j	.L223
.L224:
.LBB61:
	.loc 5 1946 46
	lw	a1,-72(s0)
	lw	a0,-48(s0)
	call	mbedtls_ct_uint_ge
	sw	a0,-84(s0)
	.loc 5 1947 32
	li	a1,1
	lw	a0,-84(s0)
	call	mbedtls_ct_size_if_else_0
	sw	a0,-88(s0)
	.loc 5 1948 70
	lw	a4,-68(s0)
	lw	a5,-48(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 5 1948 46
	mv	a4,a5
	.loc 5 1948 84
	lw	a5,-28(s0)
	addi	a5,a5,-1
	.loc 5 1948 46
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_ct_uint_eq
	sw	a0,-92(s0)
	.loc 5 1949 25
	lw	a1,-88(s0)
	lw	a0,-92(s0)
	call	mbedtls_ct_size_if_else_0
	sw	a0,-88(s0)
	.loc 5 1950 23
	lw	a4,-44(s0)
	lw	a5,-88(s0)
	add	a5,a4,a5
	sw	a5,-44(s0)
.LBE61:
	.loc 5 1942 55 discriminator 3
	lw	a5,-48(s0)
	addi	a5,a5,1
	sw	a5,-48(s0)
.L223:
	.loc 5 1942 40 discriminator 1
	lw	a5,-300(s0)
	lw	a5,24(a5)
	.loc 5 1942 35 discriminator 1
	lw	a4,-48(s0)
	bltu	a4,a5,.L224
	.loc 5 1952 19
	lw	a1,-28(s0)
	lw	a0,-44(s0)
	call	mbedtls_ct_uint_eq
	mv	a5,a0
	.loc 5 1952 19 is_stmt 0 discriminator 1
	lw	a1,-32(s0)
	mv	a0,a5
	call	mbedtls_ct_bool_and
	sw	a0,-32(s0)
	.loc 5 1955 12 is_stmt 1
	lw	a5,-28(s0)
	beq	a5,zero,.L225
	.loc 5 1955 64 discriminator 1
	li	a0,0
	call	mbedtls_ct_compiler_opaque
	mv	a4,a0
	.loc 5 1955 24 discriminator 2
	lw	a5,-32(s0)
	bne	a5,a4,.L225
	.loc 5 1956 13
	lui	a5,%hi(.LC49)
	addi	a4,a5,%lo(.LC49)
	li	a3,1956
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
.L225:
	.loc 5 1959 18
	lw	a1,-28(s0)
	lw	a0,-32(s0)
	call	mbedtls_ct_size_if_else_0
	sw	a0,-28(s0)
	.loc 5 1967 12
	lw	a5,-300(s0)
	lw	a4,24(a5)
	.loc 5 1967 23
	lw	a5,-28(s0)
	sub	a4,a4,a5
	lw	a5,-300(s0)
	sw	a4,24(a5)
.LBE57:
	.loc 5 1650 47
	j	.L202
.L204:
	.loc 5 1971 9
	lui	a5,%hi(.LC30)
	addi	a4,a5,%lo(.LC30)
	li	a3,1971
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1972 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L235
.L202:
	.loc 5 1976 5
	lw	a5,-300(s0)
	lw	a5,24(a5)
	mv	a6,a5
	lw	a5,-36(s0)
	lui	a4,%hi(.LC50)
	addi	a4,a4,%lo(.LC50)
	li	a3,1976
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-292(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1985 8
	lw	a5,-24(s0)
	bne	a5,zero,.L226
.LBB62:
	.loc 5 1986 23
	sw	zero,-276(s0)
	sw	zero,-272(s0)
	sw	zero,-268(s0)
	sw	zero,-264(s0)
	sw	zero,-260(s0)
	sw	zero,-256(s0)
	sw	zero,-252(s0)
	sw	zero,-248(s0)
	sw	zero,-244(s0)
	sw	zero,-240(s0)
	sw	zero,-236(s0)
	sw	zero,-232(s0)
	.loc 5 1987 23
	sw	zero,-228(s0)
	sw	zero,-224(s0)
	sw	zero,-220(s0)
	sw	zero,-216(s0)
	sw	zero,-212(s0)
	sw	zero,-208(s0)
	sw	zero,-204(s0)
	sw	zero,-200(s0)
	sw	zero,-196(s0)
	sw	zero,-192(s0)
	sw	zero,-188(s0)
	sw	zero,-184(s0)
	.loc 5 2005 12
	lw	a5,-300(s0)
	lw	a4,24(a5)
	.loc 5 2005 35
	lw	a5,-296(s0)
	lw	a5,12(a5)
	.loc 5 2005 23
	sub	a4,a4,a5
	lw	a5,-300(s0)
	sw	a4,24(a5)
	.loc 5 2006 9
	lw	a5,-296(s0)
	lhu	a3,80(a5)
	lw	a5,-296(s0)
	lw	a4,16(a5)
	addi	a1,s0,-168
	addi	a5,s0,-164
	lw	a2,-300(s0)
	mv	a0,a5
	call	ssl_extract_add_data_from_record
	.loc 5 2021 35
	lw	a5,-300(s0)
	lw	a5,24(a5)
	.loc 5 2021 22
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-100(s0)
	.loc 5 2022 64
	lw	a5,-100(s0)
	li	a4,256
	bgeu	a5,a4,.L227
	li	a5,256
.L227:
	.loc 5 2022 22
	addi	a5,a5,-256
	sw	a5,-104(s0)
	.loc 5 2031 15
	lw	a5,-296(s0)
	addi	a0,a5,64
	lw	a2,-168(s0)
	lw	a5,-300(s0)
	lw	a4,24(a5)
	addi	a5,s0,-276
	addi	a1,s0,-164
	mv	a7,a5
	lw	a6,-100(s0)
	lw	a5,-104(s0)
	lw	a3,-36(s0)
	call	mbedtls_ct_hmac
	sw	a0,-20(s0)
	.loc 5 2036 12
	lw	a5,-20(s0)
	beq	a5,zero,.L228
	.loc 5 2037 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC51)
	addi	a4,a4,%lo(.LC51)
	li	a3,2037
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2038 13
	j	.L229
.L228:
	.loc 5 2041 9
	lw	a5,-300(s0)
	lw	a2,24(a5)
	lw	a5,-296(s0)
	lw	a5,12(a5)
	addi	a0,s0,-228
	lw	a4,-100(s0)
	lw	a3,-104(s0)
	lw	a1,-36(s0)
	call	mbedtls_ct_memcpy_offset
	.loc 5 2048 9
	lw	a5,-296(s0)
	lw	a4,12(a5)
	addi	a5,s0,-276
	mv	a6,a4
	lui	a4,%hi(.LC44)
	addi	a4,a4,%lo(.LC44)
	li	a3,4096
	addi	a3,a3,-2048
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-292(s0)
	call	mbedtls_debug_print_buf
	.loc 5 2049 9
	lw	a5,-296(s0)
	lw	a4,12(a5)
	addi	a5,s0,-228
	mv	a6,a4
	lui	a4,%hi(.LC43)
	addi	a4,a4,%lo(.LC43)
	li	a3,4096
	addi	a3,a3,-2047
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-292(s0)
	call	mbedtls_debug_print_buf
	.loc 5 2052 13
	lw	a5,-296(s0)
	lw	a3,12(a5)
	addi	a4,s0,-276
	addi	a5,s0,-228
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ct_memcmp
	mv	a5,a0
	.loc 5 2052 12 discriminator 1
	beq	a5,zero,.L230
	.loc 5 2055 13
	lui	a5,%hi(.LC45)
	addi	a4,a5,%lo(.LC45)
	li	a5,4096
	addi	a3,a5,-2041
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2057 49
	li	a0,0
	call	mbedtls_ct_compiler_opaque
	sw	a0,-32(s0)
.L230:
	.loc 5 2059 18
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L229:
	.loc 5 2062 9
	lw	a5,-296(s0)
	lw	a4,12(a5)
	addi	a5,s0,-228
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 5 2063 9
	lw	a5,-296(s0)
	lw	a4,12(a5)
	addi	a5,s0,-276
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 5 2064 12
	lw	a5,-20(s0)
	beq	a5,zero,.L226
	.loc 5 2065 20
	lw	a5,-20(s0)
	j	.L235
.L226:
.LBE62:
	.loc 5 2072 46
	li	a0,0
	call	mbedtls_ct_compiler_opaque
	mv	a4,a0
	.loc 5 2072 8 discriminator 1
	lw	a5,-32(s0)
	bne	a5,a4,.L232
	.loc 5 2073 16
	li	a5,-28672
	addi	a5,a5,-384
	j	.L235
.L232:
	.loc 5 2078 8
	lw	a4,-24(s0)
	li	a5,1
	beq	a4,a5,.L233
	.loc 5 2079 9
	lui	a5,%hi(.LC30)
	addi	a4,a5,%lo(.LC30)
	li	a5,4096
	addi	a3,a5,-2017
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2080 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L235
.L233:
	.loc 5 2096 12
	lw	a5,-300(s0)
	lbu	a5,28(a5)
	.loc 5 2096 8
	beq	a5,zero,.L234
	.loc 5 2097 15
	lw	a5,-300(s0)
	addi	a4,a5,24
	lw	a5,-300(s0)
	addi	a5,a5,8
	mv	a2,a5
	mv	a1,a4
	lw	a0,-36(s0)
	call	ssl_parse_inner_plaintext
	sw	a0,-20(s0)
	.loc 5 2099 12
	lw	a5,-20(s0)
	beq	a5,zero,.L234
	.loc 5 2100 20
	li	a5,-28672
	addi	a5,a5,-512
	j	.L235
.L234:
	.loc 5 2105 5
	lui	a5,%hi(.LC52)
	addi	a4,a5,%lo(.LC52)
	li	a5,4096
	addi	a3,a5,-1991
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2107 12
	li	a5,0
.L235:
	.loc 5 2108 1
	mv	a0,a5
	lw	ra,316(sp)
	.cfi_restore 1
	lw	s0,312(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 320
	addi	sp,sp,320
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE182:
	.size	mbedtls_ssl_decrypt_buf, .-mbedtls_ssl_decrypt_buf
	.section	.rodata
	.align	2
.LC53:
	.string	"=> fetch input"
	.align	2
.LC54:
	.string	"Bad usage of mbedtls_ssl_set_bio() "
	.align	2
.LC55:
	.string	"requesting more data than fits"
	.align	2
.LC56:
	.string	"next record in same datagram, offset: %zu"
	.align	2
.LC57:
	.string	"in_left: %zu, nb_want: %zu"
	.align	2
.LC58:
	.string	"<= fetch input"
	.align	2
.LC59:
	.string	"timer has expired"
	.align	2
.LC60:
	.string	"f_recv_timeout: %lu ms"
	.align	2
.LC61:
	.string	"ssl->f_recv(_timeout)"
	.align	2
.LC62:
	.string	"timeout"
	.align	2
.LC63:
	.string	"handshake timeout"
	.align	2
.LC64:
	.string	"mbedtls_ssl_resend"
	.align	2
.LC65:
	.string	"mbedtls_ssl_resend_hello_request"
	.align	2
.LC66:
	.string	"f_recv returned %d bytes but only %zu were requested"
	.section	.text.mbedtls_ssl_fetch_input,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_fetch_input
	.type	mbedtls_ssl_fetch_input, @function
mbedtls_ssl_fetch_input:
.LFB183:
	.loc 5 2130 1
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
	.loc 5 2131 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 2134 12
	lw	a5,-36(s0)
	lw	a5,140(a5)
	sw	a5,-28(s0)
	.loc 5 2139 5
	lui	a5,%hi(.LC53)
	addi	a4,a5,%lo(.LC53)
	li	a5,4096
	addi	a3,a5,-1957
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2141 12
	lw	a5,-36(s0)
	lw	a5,36(a5)
	.loc 5 2141 8
	bne	a5,zero,.L241
	.loc 5 2141 34 discriminator 1
	lw	a5,-36(s0)
	lw	a5,40(a5)
	.loc 5 2141 28 discriminator 1
	bne	a5,zero,.L241
	.loc 5 2142 9
	lui	a5,%hi(.LC54)
	addi	a4,a5,%lo(.LC54)
	li	a5,4096
	addi	a3,a5,-1954
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2143 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L242
.L241:
	.loc 5 2146 45
	lw	a5,-36(s0)
	lw	a4,104(a5)
	.loc 5 2146 59
	lw	a5,-36(s0)
	lw	a5,96(a5)
	.loc 5 2146 54
	sub	a5,a4,a5
	.loc 5 2146 32
	mv	a4,a5
	.loc 5 2146 30
	lw	a5,-28(s0)
	sub	a5,a5,a4
	.loc 5 2146 8
	lw	a4,-40(s0)
	bleu	a4,a5,.L243
	.loc 5 2147 9
	lui	a5,%hi(.LC55)
	addi	a4,a5,%lo(.LC55)
	li	a5,4096
	addi	a3,a5,-1949
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2148 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L242
.L243:
	.loc 5 2152 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 2152 18
	lbu	a4,5(a5)
	.loc 5 2152 8
	li	a5,1
	bne	a4,a5,.L244
.LBB63:
	.loc 5 2165 16
	lw	a5,-36(s0)
	lw	a5,148(a5)
	.loc 5 2165 12
	beq	a5,zero,.L245
	.loc 5 2166 20
	lw	a5,-36(s0)
	lw	a4,136(a5)
	.loc 5 2166 35
	lw	a5,-36(s0)
	lw	a5,148(a5)
	.loc 5 2166 16
	bgeu	a4,a5,.L246
	.loc 5 2167 17
	lui	a5,%hi(.LC30)
	addi	a4,a5,%lo(.LC30)
	li	a5,4096
	addi	a3,a5,-1929
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2168 24
	li	a5,-28672
	addi	a5,a5,1024
	j	.L242
.L246:
	.loc 5 2171 16
	lw	a5,-36(s0)
	lw	a4,136(a5)
	.loc 5 2171 32
	lw	a5,-36(s0)
	lw	a5,148(a5)
	.loc 5 2171 26
	sub	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,136(a5)
	.loc 5 2173 20
	lw	a5,-36(s0)
	lw	a5,136(a5)
	.loc 5 2173 16
	beq	a5,zero,.L247
	.loc 5 2174 17
	lw	a5,-36(s0)
	lw	a5,148(a5)
	lui	a4,%hi(.LC56)
	addi	a4,a4,%lo(.LC56)
	li	a3,4096
	addi	a3,a3,-1922
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2177 28
	lw	a5,-36(s0)
	lw	a3,104(a5)
	.loc 5 2178 28
	lw	a5,-36(s0)
	lw	a4,104(a5)
	.loc 5 2178 42
	lw	a5,-36(s0)
	lw	a5,148(a5)
	.loc 5 2178 37
	add	a4,a4,a5
	.loc 5 2177 17
	lw	a5,-36(s0)
	lw	a5,136(a5)
	mv	a2,a5
	mv	a1,a4
	mv	a0,a3
	call	memmove
.L247:
	.loc 5 2182 37
	lw	a5,-36(s0)
	sw	zero,148(a5)
.L245:
	.loc 5 2185 9
	lw	a5,-36(s0)
	lw	a5,136(a5)
	lw	a6,-40(s0)
	lui	a4,%hi(.LC57)
	addi	a4,a4,%lo(.LC57)
	li	a3,4096
	addi	a3,a3,-1911
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2192 27
	lw	a5,-36(s0)
	lw	a5,136(a5)
	.loc 5 2192 12
	lw	a4,-40(s0)
	bgtu	a4,a5,.L248
	.loc 5 2193 13
	lui	a5,%hi(.LC58)
	addi	a4,a5,%lo(.LC58)
	li	a5,4096
	addi	a3,a5,-1903
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2194 20
	li	a5,0
	j	.L242
.L248:
	.loc 5 2202 16
	lw	a5,-36(s0)
	lw	a5,136(a5)
	.loc 5 2202 12
	beq	a5,zero,.L249
	.loc 5 2203 13
	lui	a5,%hi(.LC30)
	addi	a4,a5,%lo(.LC30)
	li	a5,4096
	addi	a3,a5,-1893
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2204 20
	li	a5,-28672
	addi	a5,a5,1024
	j	.L242
.L249:
	.loc 5 2212 13
	lw	a0,-36(s0)
	call	mbedtls_ssl_check_timer
	mv	a5,a0
	.loc 5 2212 12 discriminator 1
	beq	a5,zero,.L250
	.loc 5 2213 13
	lui	a5,%hi(.LC59)
	addi	a4,a5,%lo(.LC59)
	li	a5,4096
	addi	a3,a5,-1883
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2214 17
	li	a5,-24576
	addi	a5,a5,-2048
	sw	a5,-20(s0)
	j	.L251
.L250:
	.loc 5 2216 45
	lw	a5,-36(s0)
	lw	a4,104(a5)
	.loc 5 2216 59
	lw	a5,-36(s0)
	lw	a5,96(a5)
	.loc 5 2216 54
	sub	a5,a4,a5
	.loc 5 2216 32
	mv	a4,a5
	.loc 5 2216 17
	lw	a5,-28(s0)
	sub	a5,a5,a4
	sw	a5,-32(s0)
	.loc 5 2218 17
	lw	a0,-36(s0)
	call	mbedtls_ssl_is_handshake_over
	mv	a5,a0
	.loc 5 2218 16 discriminator 1
	bne	a5,zero,.L252
	.loc 5 2219 30
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2219 25
	lw	a5,640(a5)
	sw	a5,-24(s0)
	j	.L253
.L252:
	.loc 5 2221 30
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 2221 25
	lw	a5,200(a5)
	sw	a5,-24(s0)
.L253:
	.loc 5 2224 13
	lw	a5,-24(s0)
	lui	a4,%hi(.LC60)
	addi	a4,a4,%lo(.LC60)
	li	a3,4096
	addi	a3,a3,-1872
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2226 20
	lw	a5,-36(s0)
	lw	a5,40(a5)
	.loc 5 2226 16
	beq	a5,zero,.L254
	.loc 5 2227 26
	lw	a5,-36(s0)
	lw	a5,40(a5)
	.loc 5 2227 23
	lw	a4,-36(s0)
	lw	a0,44(a4)
	lw	a4,-36(s0)
	lw	a4,104(a4)
	lw	a3,-24(s0)
	lw	a2,-32(s0)
	mv	a1,a4
	jalr	a5
.LVL3:
	sw	a0,-20(s0)
	j	.L255
.L254:
	.loc 5 2230 26
	lw	a5,-36(s0)
	lw	a5,36(a5)
	.loc 5 2230 23
	lw	a4,-36(s0)
	lw	a3,44(a4)
	lw	a4,-36(s0)
	lw	a4,104(a4)
	lw	a2,-32(s0)
	mv	a1,a4
	mv	a0,a3
	jalr	a5
.LVL4:
	sw	a0,-20(s0)
.L255:
	.loc 5 2233 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC61)
	addi	a4,a4,%lo(.LC61)
	li	a3,4096
	addi	a3,a3,-1863
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2235 16
	lw	a5,-20(s0)
	bne	a5,zero,.L251
	.loc 5 2236 24
	li	a5,-28672
	addi	a5,a5,-640
	j	.L242
.L251:
	.loc 5 2240 12
	lw	a4,-20(s0)
	li	a5,-24576
	addi	a5,a5,-2048
	bne	a4,a5,.L256
	.loc 5 2241 13
	lui	a5,%hi(.LC62)
	addi	a4,a5,%lo(.LC62)
	li	a5,4096
	addi	a3,a5,-1855
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2242 13
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_ssl_set_timer
	.loc 5 2244 20
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 5 2244 16
	li	a5,27
	beq	a4,a5,.L257
	.loc 5 2245 21
	lw	a0,-36(s0)
	call	ssl_double_retransmit_timeout
	mv	a5,a0
	.loc 5 2245 20 discriminator 1
	beq	a5,zero,.L258
	.loc 5 2246 21
	lui	a5,%hi(.LC63)
	addi	a4,a5,%lo(.LC63)
	li	a5,4096
	addi	a3,a5,-1850
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2247 28
	li	a5,-24576
	addi	a5,a5,-2048
	j	.L242
.L258:
	.loc 5 2250 28
	lw	a0,-36(s0)
	call	mbedtls_ssl_resend
	sw	a0,-20(s0)
	.loc 5 2250 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L259
	.loc 5 2251 21
	lw	a5,-20(s0)
	lui	a4,%hi(.LC64)
	addi	a4,a4,%lo(.LC64)
	li	a3,4096
	addi	a3,a3,-1845
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2252 28
	lw	a5,-20(s0)
	j	.L242
.L259:
	.loc 5 2255 24
	li	a5,-28672
	addi	a5,a5,1792
	j	.L242
.L257:
	.loc 5 2258 25
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 2258 31
	lbu	a4,4(a5)
	.loc 5 2258 21
	li	a5,1
	bne	a4,a5,.L256
	.loc 5 2259 25
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 5 2258 47 discriminator 1
	li	a5,3
	bne	a4,a5,.L256
	.loc 5 2260 28
	lw	a0,-36(s0)
	call	mbedtls_ssl_resend_hello_request
	sw	a0,-20(s0)
	.loc 5 2260 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L260
	.loc 5 2261 21
	lw	a5,-20(s0)
	lui	a4,%hi(.LC65)
	addi	a4,a4,%lo(.LC65)
	li	a3,4096
	addi	a3,a3,-1835
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2263 28
	lw	a5,-20(s0)
	j	.L242
.L260:
	.loc 5 2266 24
	li	a5,-28672
	addi	a5,a5,1792
	j	.L242
.L256:
	.loc 5 2271 12
	lw	a5,-20(s0)
	bge	a5,zero,.L261
	.loc 5 2272 20
	lw	a5,-20(s0)
	j	.L242
.L261:
	.loc 5 2275 22
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	sw	a4,136(a5)
.LBE63:
	j	.L262
.L244:
	.loc 5 2279 9
	lw	a5,-36(s0)
	lw	a5,136(a5)
	lw	a6,-40(s0)
	lui	a4,%hi(.LC57)
	addi	a4,a4,%lo(.LC57)
	li	a3,4096
	addi	a3,a3,-1817
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2283 15
	j	.L263
.L270:
	.loc 5 2284 32
	lw	a5,-36(s0)
	lw	a5,136(a5)
	.loc 5 2284 17
	lw	a4,-40(s0)
	sub	a5,a4,a5
	sw	a5,-32(s0)
	.loc 5 2286 17
	lw	a0,-36(s0)
	call	mbedtls_ssl_check_timer
	mv	a5,a0
	.loc 5 2286 16 discriminator 1
	beq	a5,zero,.L264
	.loc 5 2287 21
	li	a5,-24576
	addi	a5,a5,-2048
	sw	a5,-20(s0)
	j	.L265
.L264:
	.loc 5 2289 24
	lw	a5,-36(s0)
	lw	a5,40(a5)
	.loc 5 2289 20
	beq	a5,zero,.L266
	.loc 5 2290 30
	lw	a5,-36(s0)
	lw	a5,40(a5)
	.loc 5 2290 27
	lw	a4,-36(s0)
	lw	a0,44(a4)
	.loc 5 2291 50
	lw	a4,-36(s0)
	lw	a3,104(a4)
	.loc 5 2291 64
	lw	a4,-36(s0)
	lw	a4,136(a4)
	.loc 5 2290 27
	add	a1,a3,a4
	.loc 5 2292 50
	lw	a4,-36(s0)
	lw	a4,0(a4)
	.loc 5 2292 56
	lw	a4,200(a4)
	.loc 5 2290 27
	mv	a3,a4
	lw	a2,-32(s0)
	jalr	a5
.LVL5:
	sw	a0,-20(s0)
	j	.L265
.L266:
	.loc 5 2294 30
	lw	a5,-36(s0)
	lw	a5,36(a5)
	.loc 5 2294 27
	lw	a4,-36(s0)
	lw	a0,44(a4)
	.loc 5 2295 42
	lw	a4,-36(s0)
	lw	a3,104(a4)
	.loc 5 2295 56
	lw	a4,-36(s0)
	lw	a4,136(a4)
	.loc 5 2294 27
	add	a4,a3,a4
	lw	a2,-32(s0)
	mv	a1,a4
	jalr	a5
.LVL6:
	sw	a0,-20(s0)
.L265:
	.loc 5 2299 13
	lw	a5,-36(s0)
	lw	a5,136(a5)
	lw	a6,-40(s0)
	lui	a4,%hi(.LC57)
	addi	a4,a4,%lo(.LC57)
	li	a3,4096
	addi	a3,a3,-1797
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2302 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC61)
	addi	a4,a4,%lo(.LC61)
	li	a3,4096
	addi	a3,a3,-1794
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2304 16
	lw	a5,-20(s0)
	bne	a5,zero,.L267
	.loc 5 2305 24
	li	a5,-28672
	addi	a5,a5,-640
	j	.L242
.L267:
	.loc 5 2308 16
	lw	a5,-20(s0)
	bge	a5,zero,.L268
	.loc 5 2309 24
	lw	a5,-20(s0)
	j	.L242
.L268:
	.loc 5 2312 17
	lw	a5,-20(s0)
	.loc 5 2312 16
	lw	a4,-32(s0)
	bgeu	a4,a5,.L269
	.loc 5 2313 17
	lw	a6,-32(s0)
	lw	a5,-20(s0)
	lui	a4,%hi(.LC66)
	addi	a4,a4,%lo(.LC66)
	li	a3,4096
	addi	a3,a3,-1783
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2317 24
	li	a5,-28672
	addi	a5,a5,1024
	j	.L242
.L269:
	.loc 5 2320 16
	lw	a5,-36(s0)
	lw	a4,136(a5)
	.loc 5 2320 26
	lw	a5,-20(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,136(a5)
.L263:
	.loc 5 2283 19
	lw	a5,-36(s0)
	lw	a5,136(a5)
	.loc 5 2283 29
	lw	a4,-40(s0)
	bgtu	a4,a5,.L270
.L262:
	.loc 5 2324 5
	lui	a5,%hi(.LC58)
	addi	a4,a5,%lo(.LC58)
	li	a5,4096
	addi	a3,a5,-1772
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2326 12
	li	a5,0
.L242:
	.loc 5 2327 1
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
.LFE183:
	.size	mbedtls_ssl_fetch_input, .-mbedtls_ssl_fetch_input
	.section	.rodata
	.align	2
.LC67:
	.string	"=> flush output"
	.align	2
.LC68:
	.string	"<= flush output"
	.align	2
.LC69:
	.string	"message length: %zu, out_left: %zu"
	.align	2
.LC70:
	.string	"ssl->f_send"
	.align	2
.LC71:
	.string	"f_send returned %d bytes but only %zu bytes were sent"
	.section	.text.mbedtls_ssl_flush_output,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_flush_output
	.type	mbedtls_ssl_flush_output, @function
mbedtls_ssl_flush_output:
.LFB184:
	.loc 5 2333 1
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
	.loc 5 2334 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 2337 5
	lui	a5,%hi(.LC67)
	addi	a4,a5,%lo(.LC67)
	li	a5,4096
	addi	a3,a5,-1759
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2339 12
	lw	a5,-36(s0)
	lw	a5,32(a5)
	.loc 5 2339 8
	bne	a5,zero,.L272
	.loc 5 2340 9
	lui	a5,%hi(.LC54)
	addi	a4,a5,%lo(.LC54)
	li	a5,4096
	addi	a3,a5,-1756
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2341 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L273
.L272:
	.loc 5 2345 12
	lw	a5,-36(s0)
	lw	a5,228(a5)
	.loc 5 2345 8
	bne	a5,zero,.L275
	.loc 5 2346 9
	lui	a5,%hi(.LC68)
	addi	a4,a5,%lo(.LC68)
	li	a5,4096
	addi	a3,a5,-1750
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2347 16
	li	a5,0
	j	.L273
.L278:
	.loc 5 2351 180
	lw	a0,-36(s0)
	call	mbedtls_ssl_out_hdr_len
	mv	a4,a0
	.loc 5 2351 214 discriminator 1
	lw	a5,-36(s0)
	lw	a5,224(a5)
	.loc 5 2351 9 discriminator 1
	add	a4,a4,a5
	lw	a5,-36(s0)
	lw	a5,228(a5)
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC69)
	addi	a4,a4,%lo(.LC69)
	li	a3,4096
	addi	a3,a3,-1745
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2355 18
	lw	a5,-36(s0)
	lw	a4,200(a5)
	.loc 5 2355 33
	lw	a5,-36(s0)
	lw	a5,228(a5)
	.loc 5 2355 28
	neg	a5,a5
	.loc 5 2355 13
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 5 2356 18
	lw	a5,-36(s0)
	lw	a5,32(a5)
	.loc 5 2356 15
	lw	a4,-36(s0)
	lw	a3,44(a4)
	lw	a4,-36(s0)
	lw	a4,228(a4)
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a3
	jalr	a5
.LVL7:
	sw	a0,-20(s0)
	.loc 5 2358 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC70)
	addi	a4,a4,%lo(.LC70)
	li	a3,4096
	addi	a3,a3,-1738
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2360 12
	lw	a5,-20(s0)
	bgt	a5,zero,.L276
	.loc 5 2361 20
	lw	a5,-20(s0)
	j	.L273
.L276:
	.loc 5 2364 31
	lw	a5,-36(s0)
	lw	a4,228(a5)
	.loc 5 2364 26
	lw	a5,-20(s0)
	.loc 5 2364 12
	bgeu	a4,a5,.L277
	.loc 5 2365 13
	lw	a5,-36(s0)
	lw	a5,228(a5)
	mv	a6,a5
	lw	a5,-20(s0)
	lui	a4,%hi(.LC71)
	addi	a4,a4,%lo(.LC71)
	li	a3,4096
	addi	a3,a3,-1731
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2369 20
	li	a5,-28672
	addi	a5,a5,1024
	j	.L273
.L277:
	.loc 5 2372 12
	lw	a5,-36(s0)
	lw	a4,228(a5)
	.loc 5 2372 23
	lw	a5,-20(s0)
	sub	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,228(a5)
.L275:
	.loc 5 2350 15
	lw	a5,-36(s0)
	lw	a5,228(a5)
	.loc 5 2350 26
	bne	a5,zero,.L278
	.loc 5 2376 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 2376 18
	lbu	a4,5(a5)
	.loc 5 2376 8
	li	a5,1
	bne	a4,a5,.L279
	.loc 5 2377 27
	lw	a5,-36(s0)
	lw	a4,192(a5)
	.loc 5 2377 22
	lw	a5,-36(s0)
	sw	a4,200(a5)
	j	.L280
.L279:
	.loc 5 2381 27
	lw	a5,-36(s0)
	lw	a5,192(a5)
	.loc 5 2381 37
	addi	a4,a5,8
	.loc 5 2381 22
	lw	a5,-36(s0)
	sw	a4,200(a5)
.L280:
	.loc 5 2383 5
	lw	a5,-36(s0)
	lw	a5,72(a5)
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_ssl_update_out_pointers
	.loc 5 2385 5
	lui	a5,%hi(.LC68)
	addi	a4,a5,%lo(.LC68)
	li	a5,4096
	addi	a3,a5,-1711
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2387 12
	li	a5,0
.L273:
	.loc 5 2388 1
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
.LFE184:
	.size	mbedtls_ssl_flush_output, .-mbedtls_ssl_flush_output
	.section	.rodata
	.align	2
.LC72:
	.string	"=> ssl_flight_append"
	.align	2
.LC73:
	.string	"message appended to flight"
	.align	2
.LC74:
	.string	"alloc %zu bytes failed"
	.align	2
.LC75:
	.string	"<= ssl_flight_append"
	.section	.text.ssl_flight_append,"ax",@progbits
	.align	1
	.type	ssl_flight_append, @function
ssl_flight_append:
.LFB185:
	.loc 5 2399 1
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
	.loc 5 2401 5
	lui	a5,%hi(.LC72)
	addi	a4,a5,%lo(.LC72)
	li	a5,4096
	addi	a3,a5,-1695
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2402 162
	lw	a5,-36(s0)
	lw	a4,216(a5)
	.loc 5 2402 5
	lw	a5,-36(s0)
	lw	a5,224(a5)
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC73)
	addi	a4,a4,%lo(.LC73)
	li	a3,4096
	addi	a3,a3,-1694
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-36(s0)
	call	mbedtls_debug_print_buf
	.loc 5 2406 16
	li	a1,16
	li	a0,1
	call	calloc
	mv	a5,a0
	sw	a5,-24(s0)
	.loc 5 2406 8 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L282
	.loc 5 2407 9
	li	a5,16
	lui	a4,%hi(.LC74)
	addi	a4,a4,%lo(.LC74)
	li	a3,4096
	addi	a3,a3,-1689
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2409 16
	li	a5,-32768
	addi	a5,a5,256
	j	.L283
.L282:
	.loc 5 2412 19
	lw	a5,-36(s0)
	lw	a5,224(a5)
	mv	a1,a5
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 5 2412 17 discriminator 1
	lw	a5,-24(s0)
	sw	a4,0(a5)
	.loc 5 2412 13 discriminator 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 5 2412 8 discriminator 1
	bne	a5,zero,.L284
	.loc 5 2413 9
	lw	a5,-36(s0)
	lw	a5,224(a5)
	lui	a4,%hi(.LC74)
	addi	a4,a4,%lo(.LC74)
	li	a3,4096
	addi	a3,a3,-1683
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2415 9
	lw	a0,-24(s0)
	call	free
	.loc 5 2416 16
	li	a5,-32768
	addi	a5,a5,256
	j	.L283
.L284:
	.loc 5 2420 15
	lw	a5,-24(s0)
	lw	a4,0(a5)
	.loc 5 2420 23
	lw	a5,-36(s0)
	lw	a3,216(a5)
	.loc 5 2420 5
	lw	a5,-36(s0)
	lw	a5,224(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcpy
	.loc 5 2421 19
	lw	a5,-36(s0)
	lw	a4,224(a5)
	.loc 5 2421 14
	lw	a5,-24(s0)
	sw	a4,4(a5)
	.loc 5 2422 20
	lw	a5,-36(s0)
	lw	a5,220(a5)
	.loc 5 2422 15
	andi	a4,a5,0xff
	lw	a5,-24(s0)
	sb	a4,8(a5)
	.loc 5 2423 15
	lw	a5,-24(s0)
	sw	zero,12(a5)
	.loc 5 2426 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2426 23
	lw	a5,644(a5)
	.loc 5 2426 8
	bne	a5,zero,.L285
	.loc 5 2427 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2427 32
	lw	a4,-24(s0)
	sw	a4,644(a5)
	j	.L286
.L285:
.LBB64:
	.loc 5 2429 43
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2429 34
	lw	a5,644(a5)
	sw	a5,-20(s0)
	.loc 5 2430 15
	j	.L287
.L288:
	.loc 5 2431 17
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
.L287:
	.loc 5 2430 19
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 5 2430 26
	bne	a5,zero,.L288
	.loc 5 2433 19
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,12(a5)
.L286:
.LBE64:
	.loc 5 2436 5
	lui	a5,%hi(.LC75)
	addi	a4,a5,%lo(.LC75)
	li	a5,4096
	addi	a3,a5,-1660
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2437 12
	li	a5,0
.L283:
	.loc 5 2438 1
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
.LFE185:
	.size	ssl_flight_append, .-ssl_flight_append
	.section	.text.mbedtls_ssl_flight_free,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_flight_free
	.type	mbedtls_ssl_flight_free, @function
mbedtls_ssl_flight_free:
.LFB186:
	.loc 5 2444 1
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
	.loc 5 2445 30
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 5 2448 11
	j	.L290
.L291:
	.loc 5 2449 14
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-24(s0)
	.loc 5 2451 17
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 2451 9
	mv	a0,a5
	call	free
	.loc 5 2452 9
	lw	a0,-20(s0)
	call	free
	.loc 5 2454 13
	lw	a5,-24(s0)
	sw	a5,-20(s0)
.L290:
	.loc 5 2448 16
	lw	a5,-20(s0)
	bne	a5,zero,.L291
	.loc 5 2456 1
	nop
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
.LFE186:
	.size	mbedtls_ssl_flight_free, .-mbedtls_ssl_flight_free
	.section	.rodata
	.align	2
.LC76:
	.string	"skip swap epochs"
	.align	2
.LC77:
	.string	"swap epochs"
	.section	.text.ssl_swap_epochs,"ax",@progbits
	.align	1
	.type	ssl_swap_epochs, @function
ssl_swap_epochs:
.LFB187:
	.loc 5 2463 1
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
	.loc 5 2467 12
	lw	a5,-36(s0)
	lw	a4,72(a5)
	.loc 5 2467 34
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2467 45
	lw	a5,660(a5)
	.loc 5 2467 8
	bne	a4,a5,.L293
	.loc 5 2468 9
	lui	a5,%hi(.LC76)
	addi	a4,a5,%lo(.LC76)
	li	a5,4096
	addi	a3,a5,-1628
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2469 16
	li	a5,0
	j	.L295
.L293:
	.loc 5 2472 5
	lui	a5,%hi(.LC77)
	addi	a4,a5,%lo(.LC77)
	li	a5,4096
	addi	a3,a5,-1624
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2475 19
	lw	a5,-36(s0)
	lw	a5,72(a5)
	sw	a5,-20(s0)
	.loc 5 2476 29
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2476 40
	lw	a4,660(a5)
	.loc 5 2476 24
	lw	a5,-36(s0)
	sw	a4,72(a5)
	.loc 5 2477 8
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2477 39
	lw	a4,-20(s0)
	sw	a4,660(a5)
	.loc 5 2480 28
	lw	a5,-36(s0)
	addi	a4,a5,236
	.loc 5 2480 5
	addi	a5,s0,-28
	li	a2,8
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 5 2481 15
	lw	a5,-36(s0)
	addi	a4,a5,236
	.loc 5 2481 33
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2481 44
	addi	a5,a5,664
	.loc 5 2481 5
	li	a2,8
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 5 2483 15
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2483 26
	addi	a5,a5,664
	.loc 5 2483 5
	addi	a4,s0,-28
	li	a2,8
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 5 2487 5
	lw	a5,-36(s0)
	lw	a5,72(a5)
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_ssl_update_out_pointers
	.loc 5 2489 12
	li	a5,0
.L295:
	.loc 5 2490 1
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
.LFE187:
	.size	ssl_swap_epochs, .-ssl_swap_epochs
	.section	.rodata
	.align	2
.LC78:
	.string	"=> mbedtls_ssl_resend"
	.align	2
.LC79:
	.string	"<= mbedtls_ssl_resend"
	.section	.text.mbedtls_ssl_resend,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_resend
	.type	mbedtls_ssl_resend, @function
mbedtls_ssl_resend:
.LFB188:
	.loc 5 2496 1
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
	.loc 5 2497 9
	sw	zero,-20(s0)
	.loc 5 2499 5
	lui	a5,%hi(.LC78)
	addi	a4,a5,%lo(.LC78)
	li	a5,4096
	addi	a3,a5,-1597
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2501 11
	lw	a0,-36(s0)
	call	mbedtls_ssl_flight_transmit
	sw	a0,-20(s0)
	.loc 5 2503 5
	lui	a5,%hi(.LC79)
	addi	a4,a5,%lo(.LC79)
	li	a5,4096
	addi	a3,a5,-1593
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2505 12
	lw	a5,-20(s0)
	.loc 5 2506 1
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
.LFE188:
	.size	mbedtls_ssl_resend, .-mbedtls_ssl_resend
	.section	.rodata
	.align	2
.LC80:
	.string	"=> mbedtls_ssl_flight_transmit"
	.align	2
.LC81:
	.string	"initialise flight transmission"
	.align	2
.LC82:
	.string	"swap epochs to send finished message"
	.align	2
.LC83:
	.string	"fragmenting handshake message (%u > %u)"
	.align	2
.LC84:
	.string	"handshake header"
	.align	2
.LC85:
	.string	"mbedtls_ssl_write_record"
	.align	2
.LC86:
	.string	"<= mbedtls_ssl_flight_transmit"
	.section	.text.mbedtls_ssl_flight_transmit,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_flight_transmit
	.type	mbedtls_ssl_flight_transmit, @function
mbedtls_ssl_flight_transmit:
.LFB189:
	.loc 5 2516 1
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
	.loc 5 2517 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 2518 5
	lui	a5,%hi(.LC80)
	addi	a4,a5,%lo(.LC80)
	li	a5,4096
	addi	a3,a5,-1578
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2520 12
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 2520 23
	lbu	a4,10(a5)
	.loc 5 2520 8
	li	a5,1
	beq	a4,a5,.L302
	.loc 5 2521 9
	lui	a5,%hi(.LC81)
	addi	a4,a5,%lo(.LC81)
	li	a5,4096
	addi	a3,a5,-1575
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2523 38
	lw	a5,-68(s0)
	lw	a4,64(a5)
	.loc 5 2523 12
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 2523 49
	lw	a4,644(a4)
	.loc 5 2523 33
	sw	a4,648(a5)
	.loc 5 2524 40
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 2524 51
	lw	a5,644(a5)
	.loc 5 2524 59
	lw	a4,0(a5)
	.loc 5 2524 12
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 2524 63
	addi	a4,a4,12
	.loc 5 2524 35
	sw	a4,652(a5)
	.loc 5 2525 15
	lw	a0,-68(s0)
	call	ssl_swap_epochs
	sw	a0,-20(s0)
	.loc 5 2526 12
	lw	a5,-20(s0)
	beq	a5,zero,.L300
	.loc 5 2527 20
	lw	a5,-20(s0)
	j	.L301
.L300:
	.loc 5 2530 12
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 2530 42
	li	a4,1
	sb	a4,10(a5)
	.loc 5 2533 11
	j	.L302
.L320:
.LBB65:
	.loc 5 2535 56
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 2535 47
	lw	a5,648(a5)
	sw	a5,-24(s0)
	.loc 5 2538 17
	lw	a5,-24(s0)
	lbu	a4,8(a5)
	.loc 5 2538 30
	li	a5,22
	bne	a4,a5,.L303
	.loc 5 2539 17
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 5 2539 20
	lbu	a4,0(a5)
	.loc 5 2538 30 discriminator 1
	li	a5,20
	bne	a4,a5,.L303
	.loc 5 2538 30 is_stmt 0 discriminator 3
	li	a5,1
	.loc 5 2538 30
	j	.L304
.L303:
	.loc 5 2538 30 discriminator 4
	li	a5,0
.L304:
	.loc 5 2537 19 is_stmt 1
	sw	a5,-28(s0)
	.loc 5 2541 36
	lw	a5,-68(s0)
	lbu	a5,188(a5)
	.loc 5 2542 35
	addi	a5,a5,-1
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 5 2541 19
	sw	a5,-32(s0)
	.loc 5 2547 12
	lw	a5,-28(s0)
	beq	a5,zero,.L305
	.loc 5 2547 31 discriminator 1
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 2547 42 discriminator 1
	lw	a4,652(a5)
	.loc 5 2547 61 discriminator 1
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 5 2547 65 discriminator 1
	addi	a5,a5,12
	.loc 5 2547 25 discriminator 1
	bne	a4,a5,.L305
	.loc 5 2548 13
	lui	a5,%hi(.LC82)
	addi	a4,a5,%lo(.LC82)
	li	a5,4096
	addi	a3,a5,-1548
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2549 19
	lw	a0,-68(s0)
	call	ssl_swap_epochs
	sw	a0,-20(s0)
	.loc 5 2550 16
	lw	a5,-20(s0)
	beq	a5,zero,.L305
	.loc 5 2551 24
	lw	a5,-20(s0)
	j	.L301
.L305:
	.loc 5 2555 15
	lw	a0,-68(s0)
	call	ssl_get_remaining_payload_in_datagram
	sw	a0,-20(s0)
	.loc 5 2556 12
	lw	a5,-20(s0)
	bge	a5,zero,.L306
	.loc 5 2557 20
	lw	a5,-20(s0)
	j	.L301
.L306:
	.loc 5 2559 22
	lw	a5,-20(s0)
	sw	a5,-36(s0)
	.loc 5 2562 16
	lw	a5,-24(s0)
	lbu	a4,8(a5)
	.loc 5 2562 12
	li	a5,20
	bne	a4,a5,.L307
	.loc 5 2563 16
	lw	a5,-36(s0)
	bne	a5,zero,.L308
	.loc 5 2564 28
	lw	a0,-68(s0)
	call	mbedtls_ssl_flush_output
	sw	a0,-20(s0)
	.loc 5 2564 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L324
	.loc 5 2565 28
	lw	a5,-20(s0)
	j	.L301
.L308:
	.loc 5 2571 23
	lw	a5,-68(s0)
	lw	a4,216(a5)
	.loc 5 2571 37
	lw	a5,-24(s0)
	lw	a3,0(a5)
	.loc 5 2571 45
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 5 2571 13
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcpy
	.loc 5 2572 34
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 5 2572 29
	lw	a5,-68(s0)
	sw	a4,224(a5)
	.loc 5 2573 35
	lw	a5,-24(s0)
	lbu	a5,8(a5)
	mv	a4,a5
	.loc 5 2573 30
	lw	a5,-68(s0)
	sw	a4,220(a5)
	.loc 5 2576 16
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 2576 27
	lw	a3,652(a5)
	.loc 5 2576 45
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 5 2576 16
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 2576 39
	add	a4,a3,a4
	sw	a4,652(a5)
	j	.L311
.L307:
.LBB66:
	.loc 5 2578 48
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 2578 41
	lw	a5,652(a5)
	sw	a5,-40(s0)
	.loc 5 2579 38
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 5 2579 26
	addi	a5,a5,-12
	sw	a5,-44(s0)
	.loc 5 2580 55
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 5 2580 59
	addi	a5,a5,12
	.loc 5 2580 49
	lw	a4,-40(s0)
	sub	a5,a4,a5
	.loc 5 2580 26
	sw	a5,-48(s0)
	.loc 5 2581 26
	lw	a4,-44(s0)
	lw	a5,-48(s0)
	sub	a5,a4,a5
	sw	a5,-52(s0)
	.loc 5 2584 16
	lw	a4,-36(s0)
	li	a5,11
	bleu	a4,a5,.L312
	.loc 5 2584 37 discriminator 1
	lw	a4,-36(s0)
	li	a5,12
	bne	a4,a5,.L313
	.loc 5 2584 60 discriminator 2
	lw	a5,-44(s0)
	beq	a5,zero,.L313
.L312:
	.loc 5 2585 20
	lw	a5,-28(s0)
	beq	a5,zero,.L314
	.loc 5 2586 27
	lw	a0,-68(s0)
	call	ssl_swap_epochs
	sw	a0,-20(s0)
	.loc 5 2587 24
	lw	a5,-20(s0)
	beq	a5,zero,.L314
	.loc 5 2588 32
	lw	a5,-20(s0)
	j	.L301
.L314:
	.loc 5 2592 28
	lw	a0,-68(s0)
	call	mbedtls_ssl_flush_output
	sw	a0,-20(s0)
	.loc 5 2592 20 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L325
	.loc 5 2593 28
	lw	a5,-20(s0)
	j	.L301
.L313:
	.loc 5 2598 29
	lw	a5,-36(s0)
	addi	a5,a5,-12
	sw	a5,-56(s0)
	.loc 5 2600 29
	lw	a4,-56(s0)
	lw	a5,-52(s0)
	bleu	a5,a4,.L316
	mv	a5,a4
.L316:
	sw	a5,-60(s0)
	.loc 5 2603 16
	lw	a5,-48(s0)
	bne	a5,zero,.L317
	.loc 5 2603 31 discriminator 1
	lw	a4,-60(s0)
	lw	a5,-44(s0)
	beq	a4,a5,.L317
	.loc 5 2604 17
	lw	a6,-56(s0)
	lw	a5,-60(s0)
	lui	a4,%hi(.LC83)
	addi	a4,a4,%lo(.LC83)
	li	a3,4096
	addi	a3,a3,-1492
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
.L317:
	.loc 5 2612 23
	lw	a5,-68(s0)
	lw	a4,216(a5)
	.loc 5 2612 37
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 5 2612 13
	li	a2,6
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 5 2614 55
	lw	a5,-48(s0)
	srli	a4,a5,16
	.loc 5 2614 16
	lw	a5,-68(s0)
	lw	a5,216(a5)
	.loc 5 2614 25
	addi	a5,a5,6
	.loc 5 2614 32
	andi	a4,a4,0xff
	.loc 5 2614 29
	sb	a4,0(a5)
	.loc 5 2615 55
	lw	a5,-48(s0)
	srli	a4,a5,8
	.loc 5 2615 16
	lw	a5,-68(s0)
	lw	a5,216(a5)
	.loc 5 2615 25
	addi	a5,a5,7
	.loc 5 2615 32
	andi	a4,a4,0xff
	.loc 5 2615 29
	sb	a4,0(a5)
	.loc 5 2616 16
	lw	a5,-68(s0)
	lw	a5,216(a5)
	.loc 5 2616 25
	addi	a5,a5,8
	.loc 5 2616 32
	lw	a4,-48(s0)
	andi	a4,a4,0xff
	.loc 5 2616 29
	sb	a4,0(a5)
	.loc 5 2618 62
	lw	a5,-60(s0)
	srli	a4,a5,16
	.loc 5 2618 16
	lw	a5,-68(s0)
	lw	a5,216(a5)
	.loc 5 2618 25
	addi	a5,a5,9
	.loc 5 2618 32
	andi	a4,a4,0xff
	.loc 5 2618 29
	sb	a4,0(a5)
	.loc 5 2619 63
	lw	a5,-60(s0)
	srli	a4,a5,8
	.loc 5 2619 16
	lw	a5,-68(s0)
	lw	a5,216(a5)
	.loc 5 2619 25
	addi	a5,a5,10
	.loc 5 2619 33
	andi	a4,a4,0xff
	.loc 5 2619 30
	sb	a4,0(a5)
	.loc 5 2620 16
	lw	a5,-68(s0)
	lw	a5,216(a5)
	.loc 5 2620 25
	addi	a5,a5,11
	.loc 5 2620 33
	lw	a4,-60(s0)
	andi	a4,a4,0xff
	.loc 5 2620 30
	sb	a4,0(a5)
	.loc 5 2622 160
	lw	a5,-68(s0)
	lw	a5,216(a5)
	.loc 5 2622 13
	li	a6,12
	lui	a4,%hi(.LC84)
	addi	a4,a4,%lo(.LC84)
	li	a3,4096
	addi	a3,a3,-1474
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,3
	lw	a0,-68(s0)
	call	mbedtls_debug_print_buf
	.loc 5 2625 23
	lw	a5,-68(s0)
	lw	a5,216(a5)
	.loc 5 2625 33
	addi	a5,a5,12
	.loc 5 2625 13
	lw	a2,-60(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcpy
	.loc 5 2626 47
	lw	a5,-60(s0)
	addi	a4,a5,12
	.loc 5 2626 29
	lw	a5,-68(s0)
	sw	a4,224(a5)
	.loc 5 2627 35
	lw	a5,-24(s0)
	lbu	a5,8(a5)
	mv	a4,a5
	.loc 5 2627 30
	lw	a5,-68(s0)
	sw	a4,220(a5)
	.loc 5 2630 16
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 2630 27
	lw	a3,652(a5)
	.loc 5 2630 16
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 2630 39
	lw	a4,-60(s0)
	add	a4,a3,a4
	sw	a4,652(a5)
.L311:
.LBE66:
	.loc 5 2634 16
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 2634 27
	lw	a4,652(a5)
	.loc 5 2634 45
	lw	a5,-24(s0)
	lw	a3,0(a5)
	.loc 5 2634 54
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 5 2634 49
	add	a5,a3,a5
	.loc 5 2634 12
	bltu	a4,a5,.L318
	.loc 5 2635 20
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 5 2635 16
	beq	a5,zero,.L319
	.loc 5 2636 20
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 2636 46
	lw	a4,-24(s0)
	lw	a4,12(a4)
	.loc 5 2636 41
	sw	a4,648(a5)
	.loc 5 2637 48
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 5 2637 54
	lw	a4,0(a5)
	.loc 5 2637 20
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 2637 58
	addi	a4,a4,12
	.loc 5 2637 43
	sw	a4,652(a5)
	j	.L318
.L319:
	.loc 5 2639 20
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 2639 41
	sw	zero,648(a5)
	.loc 5 2640 20
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 2640 43
	sw	zero,652(a5)
.L318:
	.loc 5 2645 20
	lw	a1,-32(s0)
	lw	a0,-68(s0)
	call	mbedtls_ssl_write_record
	sw	a0,-20(s0)
	.loc 5 2645 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L302
	.loc 5 2646 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC85)
	addi	a4,a4,%lo(.LC85)
	li	a3,4096
	addi	a3,a3,-1450
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2647 20
	lw	a5,-20(s0)
	j	.L301
.L324:
	.loc 5 2568 17
	nop
	j	.L302
.L325:
.LBB67:
	.loc 5 2596 17
	nop
.L302:
.LBE67:
.LBE65:
	.loc 5 2533 15
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 2533 26
	lw	a5,648(a5)
	.loc 5 2533 36
	bne	a5,zero,.L320
	.loc 5 2651 16
	lw	a0,-68(s0)
	call	mbedtls_ssl_flush_output
	sw	a0,-20(s0)
	.loc 5 2651 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L321
	.loc 5 2652 16
	lw	a5,-20(s0)
	j	.L301
.L321:
	.loc 5 2656 9
	lw	a0,-68(s0)
	call	mbedtls_ssl_is_handshake_over
	mv	a4,a0
	.loc 5 2656 8 discriminator 1
	li	a5,1
	bne	a4,a5,.L322
	.loc 5 2657 12
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 2657 42
	li	a4,3
	sb	a4,10(a5)
	j	.L323
.L322:
	.loc 5 2659 12
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 2659 42
	li	a4,2
	sb	a4,10(a5)
	.loc 5 2660 39
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 2660 9
	lw	a5,640(a5)
	mv	a1,a5
	lw	a0,-68(s0)
	call	mbedtls_ssl_set_timer
.L323:
	.loc 5 2663 5
	lui	a5,%hi(.LC86)
	addi	a4,a5,%lo(.LC86)
	li	a5,4096
	addi	a3,a5,-1433
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2665 12
	li	a5,0
.L301:
	.loc 5 2666 1
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
.LFE189:
	.size	mbedtls_ssl_flight_transmit, .-mbedtls_ssl_flight_transmit
	.section	.text.mbedtls_ssl_recv_flight_completed,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_recv_flight_completed
	.type	mbedtls_ssl_recv_flight_completed, @function
mbedtls_ssl_recv_flight_completed:
.LFB190:
	.loc 5 2672 1
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
	.loc 5 2674 32
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 5 2674 5
	lw	a5,644(a5)
	mv	a0,a5
	call	mbedtls_ssl_flight_free
	.loc 5 2675 8
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 5 2675 28
	sw	zero,644(a5)
	.loc 5 2676 8
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 5 2676 29
	sw	zero,648(a5)
	.loc 5 2679 46
	lw	a5,-20(s0)
	lw	a4,64(a5)
	.loc 5 2679 8
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 5 2679 57
	lw	a4,636(a4)
	.loc 5 2679 41
	sw	a4,656(a5)
	.loc 5 2682 8
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 5 2682 40
	sb	zero,560(a5)
	.loc 5 2685 5
	lw	a0,-20(s0)
	call	mbedtls_ssl_buffering_free
	.loc 5 2688 5
	li	a1,0
	lw	a0,-20(s0)
	call	mbedtls_ssl_set_timer
	.loc 5 2690 12
	lw	a5,-20(s0)
	lw	a4,128(a5)
	.loc 5 2690 8
	li	a5,22
	bne	a4,a5,.L327
	.loc 5 2691 12
	lw	a5,-20(s0)
	lw	a5,120(a5)
	.loc 5 2691 20
	lbu	a4,0(a5)
	.loc 5 2690 31 discriminator 1
	li	a5,20
	bne	a4,a5,.L327
	.loc 5 2692 12
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 5 2692 42
	li	a4,3
	sb	a4,10(a5)
	j	.L328
.L327:
	.loc 5 2694 12
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 5 2694 42
	sb	zero,10(a5)
	.loc 5 2696 1
	nop
.L328:
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
.LFE190:
	.size	mbedtls_ssl_recv_flight_completed, .-mbedtls_ssl_recv_flight_completed
	.section	.text.mbedtls_ssl_send_flight_completed,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_send_flight_completed
	.type	mbedtls_ssl_send_flight_completed, @function
mbedtls_ssl_send_flight_completed:
.LFB191:
	.loc 5 2702 1
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
	.loc 5 2703 5
	lw	a0,-20(s0)
	call	ssl_reset_retransmit_timeout
	.loc 5 2704 35
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 5 2704 5
	lw	a5,640(a5)
	mv	a1,a5
	lw	a0,-20(s0)
	call	mbedtls_ssl_set_timer
	.loc 5 2706 12
	lw	a5,-20(s0)
	lw	a4,128(a5)
	.loc 5 2706 8
	li	a5,22
	bne	a4,a5,.L330
	.loc 5 2707 12
	lw	a5,-20(s0)
	lw	a5,120(a5)
	.loc 5 2707 20
	lbu	a4,0(a5)
	.loc 5 2706 31 discriminator 1
	li	a5,20
	bne	a4,a5,.L330
	.loc 5 2708 12
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 5 2708 42
	li	a4,3
	sb	a4,10(a5)
	j	.L331
.L330:
	.loc 5 2710 12
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 5 2710 42
	li	a4,2
	sb	a4,10(a5)
	.loc 5 2712 1
	nop
.L331:
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
.LFE191:
	.size	mbedtls_ssl_send_flight_completed, .-mbedtls_ssl_send_flight_completed
	.section	.text.mbedtls_ssl_start_handshake_msg,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_start_handshake_msg
	.type	mbedtls_ssl_start_handshake_msg, @function
mbedtls_ssl_start_handshake_msg:
.LFB192:
	.loc 5 2720 1
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
	sw	a3,-32(s0)
	sb	a5,-21(s0)
	.loc 5 2728 15
	lw	a5,-20(s0)
	lw	a5,216(a5)
	.loc 5 2728 25
	addi	a4,a5,4
	.loc 5 2728 10
	lw	a5,-28(s0)
	sw	a4,0(a5)
	.loc 5 2729 14
	lw	a5,-32(s0)
	li	a4,16384
	addi	a4,a4,-4
	sw	a4,0(a5)
	.loc 5 2731 22
	lw	a5,-20(s0)
	li	a4,22
	sw	a4,220(a5)
	.loc 5 2732 8
	lw	a5,-20(s0)
	lw	a5,216(a5)
	.loc 5 2732 21
	lbu	a4,-21(s0)
	sb	a4,0(a5)
	.loc 5 2734 12
	li	a5,0
	.loc 5 2735 1
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
.LFE192:
	.size	mbedtls_ssl_start_handshake_msg, .-mbedtls_ssl_start_handshake_msg
	.section	.rodata
	.align	2
.LC87:
	.string	"=> write handshake message"
	.align	2
.LC88:
	.string	"Record too large: size %zu, maximum %zu"
	.align	2
.LC89:
	.string	"DTLS handshake message too large: size %zu, maximum %zu"
	.align	2
.LC90:
	.string	"update_checksum"
	.align	2
.LC91:
	.string	"ssl_flight_append"
	.align	2
.LC92:
	.string	"ssl_write_record"
	.align	2
.LC93:
	.string	"<= write handshake message"
	.section	.text.mbedtls_ssl_write_handshake_msg_ext,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_write_handshake_msg_ext
	.type	mbedtls_ssl_write_handshake_msg_ext, @function
mbedtls_ssl_write_handshake_msg_ext:
.LFB193:
	.loc 5 2762 1
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
	.loc 5 2763 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 2764 30
	lw	a5,-52(s0)
	lw	a5,224(a5)
	.loc 5 2764 18
	addi	a5,a5,-4
	sw	a5,-24(s0)
	.loc 5 2765 38
	lw	a5,-52(s0)
	lw	a5,216(a5)
	.loc 5 2765 25
	lbu	a5,0(a5)
	sb	a5,-25(s0)
	.loc 5 2767 5
	lui	a5,%hi(.LC87)
	addi	a4,a5,%lo(.LC87)
	li	a5,4096
	addi	a3,a5,-1329
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2772 12
	lw	a5,-52(s0)
	lw	a4,220(a5)
	.loc 5 2772 8
	li	a5,22
	beq	a4,a5,.L335
	.loc 5 2773 12
	lw	a5,-52(s0)
	lw	a4,220(a5)
	.loc 5 2772 32 discriminator 1
	li	a5,20
	beq	a4,a5,.L335
	.loc 5 2774 9
	lui	a5,%hi(.LC30)
	addi	a4,a5,%lo(.LC30)
	li	a5,4096
	addi	a3,a5,-1322
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2775 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L336
.L335:
	.loc 5 2780 14
	lw	a5,-52(s0)
	lw	a4,220(a5)
	.loc 5 2780 8
	li	a5,22
	bne	a4,a5,.L337
	.loc 5 2780 9 discriminator 1
	lbu	a5,-25(s0)
	beq	a5,zero,.L338
.L337:
	.loc 5 2782 12
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 5 2781 25
	bne	a5,zero,.L338
	.loc 5 2783 9
	lui	a5,%hi(.LC30)
	addi	a4,a5,%lo(.LC30)
	li	a5,4096
	addi	a3,a5,-1313
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2784 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L336
.L338:
	.loc 5 2788 12
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 5 2788 18
	lbu	a4,5(a5)
	.loc 5 2788 8
	li	a5,1
	bne	a4,a5,.L339
	.loc 5 2789 12
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 5 2788 35 discriminator 1
	beq	a5,zero,.L339
	.loc 5 2790 12
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 5 2790 23
	lbu	a4,10(a5)
	.loc 5 2789 31
	li	a5,1
	bne	a4,a5,.L339
	.loc 5 2791 9
	lui	a5,%hi(.LC30)
	addi	a4,a5,%lo(.LC30)
	li	a5,4096
	addi	a3,a5,-1305
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2792 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L336
.L339:
	.loc 5 2804 12
	lw	a5,-52(s0)
	lw	a4,224(a5)
	.loc 5 2804 8
	li	a5,16384
	bleu	a4,a5,.L340
	.loc 5 2805 9
	lw	a5,-52(s0)
	lw	a5,224(a5)
	li	a6,16384
	lui	a4,%hi(.LC88)
	addi	a4,a4,%lo(.LC88)
	li	a3,4096
	addi	a3,a3,-1291
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2810 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L336
.L340:
	.loc 5 2816 12
	lw	a5,-52(s0)
	lw	a4,220(a5)
	.loc 5 2816 8
	li	a5,22
	bne	a4,a5,.L341
	.loc 5 2817 49
	lw	a5,-24(s0)
	srli	a4,a5,16
	.loc 5 2817 12
	lw	a5,-52(s0)
	lw	a5,216(a5)
	.loc 5 2817 21
	addi	a5,a5,1
	.loc 5 2817 28
	andi	a4,a4,0xff
	.loc 5 2817 25
	sb	a4,0(a5)
	.loc 5 2818 49
	lw	a5,-24(s0)
	srli	a4,a5,8
	.loc 5 2818 12
	lw	a5,-52(s0)
	lw	a5,216(a5)
	.loc 5 2818 21
	addi	a5,a5,2
	.loc 5 2818 28
	andi	a4,a4,0xff
	.loc 5 2818 25
	sb	a4,0(a5)
	.loc 5 2819 12
	lw	a5,-52(s0)
	lw	a5,216(a5)
	.loc 5 2819 21
	addi	a5,a5,3
	.loc 5 2819 28
	lw	a4,-24(s0)
	andi	a4,a4,0xff
	.loc 5 2819 25
	sb	a4,0(a5)
	.loc 5 2829 16
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 5 2829 22
	lbu	a4,5(a5)
	.loc 5 2829 12
	li	a5,1
	bne	a4,a5,.L342
	.loc 5 2831 28
	lw	a5,-52(s0)
	lw	a4,224(a5)
	.loc 5 2831 41
	li	a5,-16384
	addi	a5,a5,7
	add	a4,a4,a5
	.loc 5 2831 16
	li	a5,7
	bgtu	a4,a5,.L343
	.loc 5 2832 17
	li	a5,16384
	addi	a6,a5,-12
	lw	a5,-24(s0)
	lui	a4,%hi(.LC89)
	addi	a4,a4,%lo(.LC89)
	li	a3,4096
	addi	a3,a3,-1264
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2837 24
	li	a5,-28672
	addi	a5,a5,-256
	j	.L336
.L343:
	.loc 5 2840 24
	lw	a5,-52(s0)
	lw	a5,216(a5)
	.loc 5 2840 34
	addi	a4,a5,12
	.loc 5 2840 43
	lw	a5,-52(s0)
	lw	a5,216(a5)
	.loc 5 2840 53
	addi	a5,a5,4
	.loc 5 2840 13
	lw	a2,-24(s0)
	mv	a1,a5
	mv	a0,a4
	call	memmove
	.loc 5 2841 16
	lw	a5,-52(s0)
	lw	a5,224(a5)
	.loc 5 2841 29
	addi	a4,a5,8
	lw	a5,-52(s0)
	sw	a4,224(a5)
	.loc 5 2844 16
	lbu	a5,-25(s0)
	beq	a5,zero,.L344
	.loc 5 2845 164 discriminator 2
	lw	a5,-52(s0)
	lw	a5,216(a5)
	.loc 5 2845 175 discriminator 2
	addi	a4,a5,4
	.loc 5 2845 215 discriminator 2
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 5 2845 226 discriminator 2
	lw	a5,632(a5)
	.loc 5 2845 182 discriminator 2
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a3,a5,8
	srli	a5,a5,8
	or	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a4,-32(s0)
	sh	a5,-34(s0)
.LBB68:
.LBB69:
	.loc 6 148 33
	lw	a5,-32(s0)
	sw	a5,-40(s0)
	.loc 6 149 12
	lw	a5,-40(s0)
	lhu	a4,-34(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-34(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 6 153 1
	nop
.LBE69:
.LBE68:
	.loc 5 2846 23
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 5 2846 34
	lw	a4,632(a5)
	.loc 5 2846 17
	addi	a4,a4,1
	sw	a4,632(a5)
	j	.L345
.L344:
	.loc 5 2848 20
	lw	a5,-52(s0)
	lw	a5,216(a5)
	.loc 5 2848 29
	addi	a5,a5,4
	.loc 5 2848 33
	sb	zero,0(a5)
	.loc 5 2849 20
	lw	a5,-52(s0)
	lw	a5,216(a5)
	.loc 5 2849 29
	addi	a5,a5,5
	.loc 5 2849 33
	sb	zero,0(a5)
.L345:
	.loc 5 2854 23
	lw	a5,-52(s0)
	lw	a5,216(a5)
	.loc 5 2854 33
	addi	a5,a5,6
	.loc 5 2854 13
	li	a2,3
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 5 2855 23
	lw	a5,-52(s0)
	lw	a5,216(a5)
	.loc 5 2855 33
	addi	a4,a5,9
	.loc 5 2855 41
	lw	a5,-52(s0)
	lw	a5,216(a5)
	.loc 5 2855 51
	addi	a5,a5,1
	.loc 5 2855 13
	li	a2,3
	mv	a1,a5
	mv	a0,a4
	call	memcpy
.L342:
	.loc 5 2860 12
	lbu	a5,-25(s0)
	beq	a5,zero,.L341
	.loc 5 2860 26 discriminator 1
	lw	a5,-56(s0)
	beq	a5,zero,.L341
	.loc 5 2861 22
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 5 2861 33
	lw	a5,28(a5)
	.loc 5 2861 59
	lw	a4,-52(s0)
	lw	a3,216(a4)
	.loc 5 2861 19
	lw	a4,-52(s0)
	lw	a4,224(a4)
	mv	a2,a4
	mv	a1,a3
	lw	a0,-52(s0)
	jalr	a5
.LVL8:
	sw	a0,-20(s0)
	.loc 5 2863 16
	lw	a5,-20(s0)
	beq	a5,zero,.L341
	.loc 5 2864 17
	lw	a5,-20(s0)
	lui	a4,%hi(.LC90)
	addi	a4,a4,%lo(.LC90)
	li	a3,4096
	addi	a3,a3,-1232
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2865 24
	lw	a5,-20(s0)
	j	.L336
.L341:
	.loc 5 2872 12
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 5 2872 18
	lbu	a4,5(a5)
	.loc 5 2872 8
	li	a5,1
	bne	a4,a5,.L346
	.loc 5 2873 14
	lw	a5,-52(s0)
	lw	a4,220(a5)
	.loc 5 2872 35 discriminator 1
	li	a5,22
	bne	a4,a5,.L347
	.loc 5 2873 9
	lbu	a5,-25(s0)
	beq	a5,zero,.L346
.L347:
	.loc 5 2875 20
	lw	a0,-52(s0)
	call	ssl_flight_append
	sw	a0,-20(s0)
	.loc 5 2875 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L349
	.loc 5 2876 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC91)
	addi	a4,a4,%lo(.LC91)
	li	a3,4096
	addi	a3,a3,-1220
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2877 20
	lw	a5,-20(s0)
	j	.L336
.L346:
	.loc 5 2882 20
	lw	a1,-60(s0)
	lw	a0,-52(s0)
	call	mbedtls_ssl_write_record
	sw	a0,-20(s0)
	.loc 5 2882 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L349
	.loc 5 2883 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC92)
	addi	a4,a4,%lo(.LC92)
	li	a3,4096
	addi	a3,a3,-1213
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2884 20
	lw	a5,-20(s0)
	j	.L336
.L349:
	.loc 5 2888 5
	lui	a5,%hi(.LC93)
	addi	a4,a5,%lo(.LC93)
	li	a5,4096
	addi	a3,a5,-1208
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2890 12
	li	a5,0
.L336:
	.loc 5 2891 1
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
.LFE193:
	.size	mbedtls_ssl_write_handshake_msg_ext, .-mbedtls_ssl_write_handshake_msg_ext
	.section	.text.mbedtls_ssl_finish_handshake_msg,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_finish_handshake_msg
	.type	mbedtls_ssl_finish_handshake_msg, @function
mbedtls_ssl_finish_handshake_msg:
.LFB194:
	.loc 5 2895 1
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
	.loc 5 2896 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 2901 25
	lw	a5,-44(s0)
	addi	a5,a5,4
	sw	a5,-24(s0)
	.loc 5 2902 21
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,224(a5)
	.loc 5 2903 17
	li	a2,0
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_ssl_write_handshake_msg_ext
	sw	a0,-20(s0)
	.loc 5 2905 1
	nop
.L351:
	.loc 5 2906 12
	lw	a5,-20(s0)
	.loc 5 2907 1
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
.LFE194:
	.size	mbedtls_ssl_finish_handshake_msg, .-mbedtls_ssl_finish_handshake_msg
	.section	.rodata
	.align	2
.LC94:
	.string	"=> write record"
	.align	2
.LC95:
	.string	"ssl_encrypt_buf"
	.align	2
.LC96:
	.string	"output record: msgtype = %u, version = [%u:%u], msglen = %zu"
	.align	2
.LC97:
	.string	"output record sent to network"
	.align	2
.LC98:
	.string	"outgoing message counter would wrap"
	.align	2
.LC99:
	.string	"ssl_get_remaining_payload_in_datagram"
	.align	2
.LC100:
	.string	"Still %u bytes available in current datagram"
	.align	2
.LC101:
	.string	"mbedtls_ssl_flush_output"
	.align	2
.LC102:
	.string	"<= write record"
	.section	.text.mbedtls_ssl_write_record,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_write_record
	.type	mbedtls_ssl_write_record, @function
mbedtls_ssl_write_record:
.LFB195:
	.loc 5 2922 1
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sw	ra,172(sp)
	sw	s0,168(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,176
	.cfi_def_cfa 8, 0
	sw	a0,-148(s0)
	sw	a1,-152(s0)
	.loc 5 2923 14
	sw	zero,-32(s0)
	.loc 5 2924 12
	lw	a5,-148(s0)
	lw	a5,224(a5)
	sw	a5,-20(s0)
	.loc 5 2925 9
	lw	a5,-152(s0)
	sw	a5,-24(s0)
	.loc 5 2927 5
	lui	a5,%hi(.LC94)
	addi	a4,a5,%lo(.LC94)
	li	a5,4096
	addi	a3,a5,-1169
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-148(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2929 8
	lw	a5,-32(s0)
	bne	a5,zero,.L354
.LBB70:
	.loc 5 2933 16
	lw	a5,-148(s0)
	lw	a5,232(a5)
	sw	a5,-36(s0)
	.loc 5 2939 38
	lw	a5,-148(s0)
	lhu	a5,16(a5)
	sh	a5,-38(s0)
	.loc 5 2947 38
	lw	a5,-148(s0)
	lw	a5,200(a5)
	.loc 5 2947 9
	addi	a4,a5,1
	.loc 5 2947 56
	lw	a5,-148(s0)
	lw	a5,0(a5)
	.loc 5 2947 62
	lbu	a5,5(a5)
	.loc 5 2947 9
	mv	a3,a5
	lhu	a5,-38(s0)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	mbedtls_ssl_write_version
	.loc 5 2950 19
	lw	a5,-148(s0)
	lw	a4,196(a5)
	.loc 5 2950 33
	lw	a5,-148(s0)
	addi	a5,a5,236
	.loc 5 2950 9
	li	a2,8
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 5 2951 143 discriminator 2
	lw	a5,-148(s0)
	lw	a4,208(a5)
	.loc 5 2951 150 discriminator 2
	lw	a5,-20(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a3,a5,8
	srli	a5,a5,8
	or	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a4,-56(s0)
	sh	a5,-58(s0)
.LBB71:
.LBB72:
	.loc 6 148 33
	lw	a5,-56(s0)
	sw	a5,-64(s0)
	.loc 6 149 12
	lw	a5,-64(s0)
	lhu	a4,-58(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-58(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 6 153 1
	nop
.LBE72:
.LBE71:
	.loc 5 2953 16
	lw	a5,-148(s0)
	lw	a5,72(a5)
	.loc 5 2953 12
	beq	a5,zero,.L355
.LBB73:
	.loc 5 2956 26
	lw	a5,-148(s0)
	lw	a5,212(a5)
	.loc 5 2956 21
	sw	a5,-128(s0)
	.loc 5 2957 54
	lw	a5,-148(s0)
	lw	a4,212(a5)
	.loc 5 2957 68
	lw	a5,-148(s0)
	lw	a5,192(a5)
	.loc 5 2957 63
	sub	a5,a4,a5
	.loc 5 2957 41
	mv	a4,a5
	.loc 5 2957 39
	lw	a5,-36(s0)
	sub	a5,a5,a4
	.loc 5 2957 25
	sw	a5,-124(s0)
	.loc 5 2958 31
	lw	a5,-148(s0)
	lw	a5,224(a5)
	.loc 5 2958 26
	sw	a5,-116(s0)
	.loc 5 2959 44
	lw	a5,-148(s0)
	lw	a4,216(a5)
	.loc 5 2959 59
	lw	a5,-128(s0)
	.loc 5 2959 54
	sub	a5,a4,a5
	.loc 5 2959 29
	sw	a5,-120(s0)
	.loc 5 2961 36
	lw	a5,-148(s0)
	lw	a4,196(a5)
	.loc 5 2961 13
	addi	a5,s0,-140
	li	a2,8
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 5 2962 51
	lw	a5,-148(s0)
	lw	a5,0(a5)
	.loc 5 2962 57
	lbu	a5,5(a5)
	.loc 5 2962 13
	mv	a3,a5
	lhu	a4,-38(s0)
	addi	a5,s0,-140
	addi	a5,a5,9
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	mbedtls_ssl_write_version
	.loc 5 2963 27
	lw	a5,-148(s0)
	lw	a5,220(a5)
	.loc 5 2963 22
	andi	a5,a5,0xff
	sb	a5,-132(s0)
	.loc 5 2967 25
	sb	zero,-112(s0)
	.loc 5 2970 24
	lw	a5,-148(s0)
	lw	a1,72(a5)
	.loc 5 2971 51
	lw	a5,-148(s0)
	lw	a5,0(a5)
	.loc 5 2971 57
	lw	a3,32(a5)
	.loc 5 2971 69
	lw	a5,-148(s0)
	lw	a5,0(a5)
	.loc 5 2971 75
	lw	a4,36(a5)
	.loc 5 2970 24
	addi	a5,s0,-140
	mv	a2,a5
	lw	a0,-148(s0)
	call	mbedtls_ssl_encrypt_buf
	sw	a0,-44(s0)
	.loc 5 2970 16 discriminator 1
	lw	a5,-44(s0)
	beq	a5,zero,.L356
	.loc 5 2972 17
	lw	a5,-44(s0)
	lui	a4,%hi(.LC95)
	addi	a4,a4,%lo(.LC95)
	li	a3,4096
	addi	a3,a3,-1124
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-148(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2973 24
	lw	a5,-44(s0)
	j	.L359
.L356:
	.loc 5 2976 20
	lw	a5,-120(s0)
	.loc 5 2976 16
	beq	a5,zero,.L358
	.loc 5 2977 17
	lui	a5,%hi(.LC30)
	addi	a4,a5,%lo(.LC30)
	li	a5,4096
	addi	a3,a5,-1119
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-148(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2978 24
	li	a5,-28672
	addi	a5,a5,1024
	j	.L359
.L358:
	.loc 5 2982 35
	lbu	a5,-132(s0)
	mv	a4,a5
	.loc 5 2982 30
	lw	a5,-148(s0)
	sw	a4,220(a5)
	.loc 5 2984 23
	lw	a5,-148(s0)
	lw	a4,204(a5)
	.loc 5 2984 46
	lbu	a5,-112(s0)
	.loc 5 2984 13
	mv	a3,a5
	addi	a5,s0,-140
	addi	a5,a5,29
	mv	a2,a3
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 5 2986 35
	lw	a5,-116(s0)
	sw	a5,-20(s0)
	.loc 5 2986 29
	lw	a5,-148(s0)
	lw	a4,-20(s0)
	sw	a4,224(a5)
	.loc 5 2987 156 discriminator 2
	lw	a5,-148(s0)
	lw	a4,208(a5)
	.loc 5 2987 196 discriminator 2
	lw	a5,-116(s0)
	.loc 5 2987 163 discriminator 2
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a3,a5,8
	srli	a5,a5,8
	or	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a4,-68(s0)
	sh	a5,-70(s0)
.LBB74:
.LBB75:
	.loc 6 148 33
	lw	a5,-68(s0)
	sw	a5,-76(s0)
	.loc 6 149 12
	lw	a5,-76(s0)
	lhu	a4,-70(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-70(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 6 153 1
	nop
.L355:
.LBE75:
.LBE74:
.LBE73:
	.loc 5 2990 39
	lw	a0,-148(s0)
	call	mbedtls_ssl_out_hdr_len
	mv	a4,a0
	.loc 5 2990 31 discriminator 1
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-48(s0)
	.loc 5 2995 16
	lw	a5,-148(s0)
	lw	a5,0(a5)
	.loc 5 2995 22
	lbu	a4,5(a5)
	.loc 5 2995 12
	li	a5,1
	bne	a4,a5,.L360
	.loc 5 2996 19
	lw	a0,-148(s0)
	call	ssl_get_remaining_space_in_datagram
	sw	a0,-44(s0)
	.loc 5 2997 16
	lw	a5,-44(s0)
	bge	a5,zero,.L361
	.loc 5 2998 24
	lw	a5,-44(s0)
	j	.L359
.L361:
	.loc 5 3001 41
	lw	a5,-44(s0)
	.loc 5 3001 16
	lw	a4,-48(s0)
	bleu	a4,a5,.L360
	.loc 5 3003 24
	li	a5,-28672
	addi	a5,a5,1024
	j	.L359
.L360:
	.loc 5 3009 46
	lw	a5,-148(s0)
	lw	a4,220(a5)
	.loc 5 3009 12
	lw	a5,-148(s0)
	lw	a5,200(a5)
	.loc 5 3009 27
	andi	a4,a4,0xff
	.loc 5 3009 25
	sb	a4,0(a5)
	.loc 5 3011 206
	lw	a5,-148(s0)
	lw	a5,200(a5)
	.loc 5 3011 215
	lbu	a5,0(a5)
	.loc 5 3011 9
	mv	a4,a5
	.loc 5 3011 223
	lw	a5,-148(s0)
	lw	a5,200(a5)
	.loc 5 3011 232
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 5 3011 9
	mv	a3,a5
	.loc 5 3011 240
	lw	a5,-148(s0)
	lw	a5,200(a5)
	.loc 5 3011 249
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 5 3011 9
	mv	a2,a5
	lw	a5,-20(s0)
	sw	a5,0(sp)
	mv	a7,a2
	mv	a6,a3
	mv	a5,a4
	lui	a4,%hi(.LC96)
	addi	a4,a4,%lo(.LC96)
	li	a3,4096
	addi	a3,a3,-1085
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,3
	lw	a0,-148(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3016 169
	lw	a5,-148(s0)
	lw	a5,200(a5)
	.loc 5 3016 9
	lw	a6,-48(s0)
	lui	a4,%hi(.LC97)
	addi	a4,a4,%lo(.LC97)
	li	a3,4096
	addi	a3,a3,-1080
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-148(s0)
	call	mbedtls_debug_print_buf
	.loc 5 3019 12
	lw	a5,-148(s0)
	lw	a4,228(a5)
	.loc 5 3019 23
	lw	a5,-48(s0)
	add	a4,a4,a5
	lw	a5,-148(s0)
	sw	a4,228(a5)
	.loc 5 3020 12
	lw	a5,-148(s0)
	lw	a4,200(a5)
	.loc 5 3020 22
	lw	a5,-48(s0)
	add	a4,a4,a5
	lw	a5,-148(s0)
	sw	a4,200(a5)
	.loc 5 3021 9
	lw	a5,-148(s0)
	lw	a5,72(a5)
	mv	a1,a5
	lw	a0,-148(s0)
	call	mbedtls_ssl_update_out_pointers
	.loc 5 3023 16
	li	a5,8
	sw	a5,-28(s0)
	.loc 5 3023 9
	j	.L362
.L365:
	.loc 5 3024 38
	lw	a5,-28(s0)
	addi	a5,a5,-1
	.loc 5 3024 35
	lw	a4,-148(s0)
	add	a4,a4,a5
	lbu	a4,236(a4)
	.loc 5 3024 17
	addi	a4,a4,1
	andi	a3,a4,0xff
	.loc 5 3024 16
	lw	a4,-148(s0)
	add	a4,a4,a5
	sb	a3,236(a4)
	.loc 5 3024 35
	lw	a4,-148(s0)
	add	a5,a4,a5
	lbu	a5,236(a5)
	.loc 5 3024 16
	bne	a5,zero,.L370
	.loc 5 3023 51 discriminator 2
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
.L362:
	.loc 5 3023 25 discriminator 1
	lw	a0,-148(s0)
	call	mbedtls_ssl_ep_len
	mv	a4,a0
	.loc 5 3023 23 discriminator 3
	lw	a5,-28(s0)
	bgtu	a5,a4,.L365
	j	.L364
.L370:
	.loc 5 3025 17
	nop
.L364:
	.loc 5 3030 18
	lw	a0,-148(s0)
	call	mbedtls_ssl_ep_len
	mv	a4,a0
	.loc 5 3030 12 discriminator 1
	lw	a5,-28(s0)
	bne	a5,a4,.L354
	.loc 5 3031 13
	lui	a5,%hi(.LC98)
	addi	a4,a5,%lo(.LC98)
	li	a5,4096
	addi	a3,a5,-1065
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-148(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3032 20
	li	a5,-28672
	addi	a5,a5,1152
	j	.L359
.L354:
.LBE70:
	.loc 5 3037 12
	lw	a5,-148(s0)
	lw	a5,0(a5)
	.loc 5 3037 18
	lbu	a4,5(a5)
	.loc 5 3037 8
	li	a5,1
	bne	a4,a5,.L366
	.loc 5 3037 35 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L366
.LBB76:
	.loc 5 3040 15
	lw	a0,-148(s0)
	call	ssl_get_remaining_payload_in_datagram
	sw	a0,-44(s0)
	.loc 5 3041 12
	lw	a5,-44(s0)
	bge	a5,zero,.L367
	.loc 5 3042 13
	lw	a5,-44(s0)
	lui	a4,%hi(.LC99)
	addi	a4,a4,%lo(.LC99)
	li	a3,4096
	addi	a3,a3,-1054
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-148(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3044 20
	lw	a5,-44(s0)
	j	.L359
.L367:
	.loc 5 3047 19
	lw	a5,-44(s0)
	sw	a5,-52(s0)
	.loc 5 3048 12
	lw	a5,-52(s0)
	bne	a5,zero,.L368
	.loc 5 3049 19
	li	a5,1
	sw	a5,-24(s0)
	j	.L366
.L368:
	.loc 5 3051 13
	lw	a5,-52(s0)
	lui	a4,%hi(.LC100)
	addi	a4,a4,%lo(.LC100)
	li	a3,4096
	addi	a3,a3,-1045
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-148(s0)
	call	mbedtls_debug_print_msg
.L366:
.LBE76:
	.loc 5 3058 8
	lw	a4,-24(s0)
	li	a5,1
	bne	a4,a5,.L369
	.loc 5 3059 16
	lw	a0,-148(s0)
	call	mbedtls_ssl_flush_output
	sw	a0,-44(s0)
	.loc 5 3058 22 discriminator 1
	lw	a5,-44(s0)
	beq	a5,zero,.L369
	.loc 5 3060 9
	lw	a5,-44(s0)
	lui	a4,%hi(.LC101)
	addi	a4,a4,%lo(.LC101)
	li	a3,4096
	addi	a3,a3,-1036
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-148(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3061 16
	lw	a5,-44(s0)
	j	.L359
.L369:
	.loc 5 3064 5
	lui	a5,%hi(.LC102)
	addi	a4,a5,%lo(.LC102)
	li	a5,4096
	addi	a3,a5,-1032
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-148(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3066 12
	li	a5,0
.L359:
	.loc 5 3067 1
	mv	a0,a5
	lw	ra,172(sp)
	.cfi_restore 1
	lw	s0,168(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE195:
	.size	mbedtls_ssl_write_record, .-mbedtls_ssl_write_record
	.section	.rodata
	.align	2
.LC103:
	.base64	"AAAAAA=="
	.section	.text.ssl_hs_is_proper_fragment,"ax",@progbits
	.align	1
	.type	ssl_hs_is_proper_fragment, @function
ssl_hs_is_proper_fragment:
.LFB196:
	.loc 5 3073 1
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
	.loc 5 3074 12
	lw	a5,-20(s0)
	lw	a4,132(a5)
	.loc 5 3074 29
	lw	a5,-20(s0)
	lw	a5,168(a5)
	.loc 5 3074 8
	bltu	a4,a5,.L372
	.loc 5 3075 19
	lw	a5,-20(s0)
	lw	a5,120(a5)
	.loc 5 3075 28
	addi	a4,a5,6
	.loc 5 3075 9
	li	a2,3
	lui	a5,%hi(.LC103)
	addi	a1,a5,%lo(.LC103)
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 5 3074 40 discriminator 1
	bne	a5,zero,.L372
	.loc 5 3076 19
	lw	a5,-20(s0)
	lw	a5,120(a5)
	.loc 5 3076 28
	addi	a4,a5,9
	.loc 5 3076 36
	lw	a5,-20(s0)
	lw	a5,120(a5)
	.loc 5 3076 45
	addi	a5,a5,1
	.loc 5 3076 9
	li	a2,3
	mv	a1,a5
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 5 3075 51
	beq	a5,zero,.L373
.L372:
	.loc 5 3077 16
	li	a5,1
	j	.L374
.L373:
	.loc 5 3079 12
	li	a5,0
.L374:
	.loc 5 3080 1
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
.LFE196:
	.size	ssl_hs_is_proper_fragment, .-ssl_hs_is_proper_fragment
	.section	.text.ssl_get_hs_frag_len,"ax",@progbits
	.align	1
	.type	ssl_get_hs_frag_len, @function
ssl_get_hs_frag_len:
.LFB197:
	.loc 5 3083 1
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
	.loc 5 3084 30
	lw	a5,-20(s0)
	lw	a5,120(a5)
	.loc 5 3084 39
	addi	a5,a5,9
	lbu	a5,0(a5)
	.loc 5 3084 45
	slli	a4,a5,16
	.loc 5 3084 70
	lw	a5,-20(s0)
	lw	a5,120(a5)
	.loc 5 3084 79
	addi	a5,a5,10
	lbu	a5,0(a5)
	.loc 5 3084 89
	slli	a5,a5,8
	.loc 5 3084 52
	or	a5,a4,a5
	.loc 5 3084 113
	lw	a4,-20(s0)
	lw	a4,120(a4)
	.loc 5 3084 122
	addi	a4,a4,11
	lbu	a4,0(a4)
	.loc 5 3084 95
	or	a5,a5,a4
	.loc 5 3085 1
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
.LFE197:
	.size	ssl_get_hs_frag_len, .-ssl_get_hs_frag_len
	.section	.text.ssl_get_hs_frag_off,"ax",@progbits
	.align	1
	.type	ssl_get_hs_frag_off, @function
ssl_get_hs_frag_off:
.LFB198:
	.loc 5 3088 1
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
	.loc 5 3089 30
	lw	a5,-20(s0)
	lw	a5,120(a5)
	.loc 5 3089 39
	addi	a5,a5,6
	lbu	a5,0(a5)
	.loc 5 3089 45
	slli	a4,a5,16
	.loc 5 3089 70
	lw	a5,-20(s0)
	lw	a5,120(a5)
	.loc 5 3089 79
	addi	a5,a5,7
	lbu	a5,0(a5)
	.loc 5 3089 89
	slli	a5,a5,8
	.loc 5 3089 52
	or	a5,a4,a5
	.loc 5 3089 113
	lw	a4,-20(s0)
	lw	a4,120(a4)
	.loc 5 3089 122
	addi	a4,a4,8
	lbu	a4,0(a4)
	.loc 5 3089 95
	or	a5,a5,a4
	.loc 5 3090 1
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
.LFE198:
	.size	ssl_get_hs_frag_off, .-ssl_get_hs_frag_off
	.section	.text.ssl_check_hs_header,"ax",@progbits
	.align	1
	.type	ssl_check_hs_header, @function
ssl_check_hs_header:
.LFB199:
	.loc 5 3094 1
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
	.loc 5 3097 15
	lw	a0,-36(s0)
	call	ssl_get_hs_total_len
	sw	a0,-20(s0)
	.loc 5 3098 16
	lw	a0,-36(s0)
	call	ssl_get_hs_frag_off
	sw	a0,-24(s0)
	.loc 5 3099 16
	lw	a0,-36(s0)
	call	ssl_get_hs_frag_len
	sw	a0,-28(s0)
	.loc 5 3101 8
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bleu	a4,a5,.L380
	.loc 5 3102 16
	li	a5,-1
	j	.L381
.L380:
	.loc 5 3105 28
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 5 3105 8
	lw	a4,-28(s0)
	bleu	a4,a5,.L382
	.loc 5 3106 16
	li	a5,-1
	j	.L381
.L382:
	.loc 5 3109 18
	lw	a5,-28(s0)
	addi	a4,a5,12
	.loc 5 3109 28
	lw	a5,-36(s0)
	lw	a5,132(a5)
	.loc 5 3109 8
	bleu	a4,a5,.L383
	.loc 5 3110 16
	li	a5,-1
	j	.L381
.L383:
	.loc 5 3113 12
	li	a5,0
.L381:
	.loc 5 3114 1
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
.LFE199:
	.size	ssl_check_hs_header, .-ssl_check_hs_header
	.section	.text.ssl_bitmask_set,"ax",@progbits
	.align	1
	.type	ssl_bitmask_set, @function
ssl_bitmask_set:
.LFB200:
	.loc 5 3120 1
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
	.loc 5 3123 30
	lw	a5,-40(s0)
	andi	a5,a5,7
	.loc 5 3123 16
	li	a4,8
	sub	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 3124 8
	lw	a4,-20(s0)
	li	a5,8
	beq	a4,a5,.L385
.LBB77:
	.loc 5 3125 16
	lw	a5,-40(s0)
	srli	a5,a5,3
	sw	a5,-28(s0)
	.loc 5 3128 12
	lw	a4,-44(s0)
	lw	a5,-20(s0)
	bgtu	a4,a5,.L386
	.loc 5 3129 13
	j	.L387
.L388:
	.loc 5 3130 21
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 5 3130 58
	lw	a3,-20(s0)
	lw	a5,-44(s0)
	sub	a5,a3,a5
	.loc 5 3130 43
	li	a3,1
	sll	a5,a3,a5
	.loc 5 3130 38
	slli	a5,a5,24
	srai	a5,a5,24
	or	a5,a4,a5
	slli	a3,a5,24
	srai	a3,a3,24
	.loc 5 3130 21
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 5 3130 38
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 5 3129 33 discriminator 2
	lw	a5,-44(s0)
	addi	a5,a5,-1
	sw	a5,-44(s0)
.L387:
	.loc 5 3129 24 discriminator 1
	lw	a5,-44(s0)
	bne	a5,zero,.L388
	.loc 5 3134 13
	j	.L384
.L386:
	.loc 5 3137 16
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 5 3138 13
	lw	a4,-44(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-44(s0)
	.loc 5 3140 9
	j	.L390
.L391:
	.loc 5 3141 17
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 5 3141 54
	lw	a5,-20(s0)
	addi	a5,a5,-1
	.loc 5 3141 39
	li	a3,1
	sll	a5,a3,a5
	.loc 5 3141 34
	slli	a5,a5,24
	srai	a5,a5,24
	or	a5,a4,a5
	slli	a3,a5,24
	srai	a3,a3,24
	.loc 5 3141 17
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 5 3141 34
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 5 3140 43 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L390:
	.loc 5 3140 27 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L391
.L385:
.LBE77:
	.loc 5 3145 14
	lw	a5,-44(s0)
	andi	a5,a5,7
	sw	a5,-24(s0)
	.loc 5 3146 8
	lw	a5,-24(s0)
	beq	a5,zero,.L392
.LBB78:
	.loc 5 3147 40
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	.loc 5 3147 16
	srli	a5,a5,3
	sw	a5,-32(s0)
	.loc 5 3149 13
	lw	a4,-44(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	sw	a5,-44(s0)
	.loc 5 3151 9
	j	.L393
.L394:
	.loc 5 3152 17
	lw	a4,-36(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	slli	a4,a5,24
	srai	a4,a4,24
	.loc 5 3152 44
	li	a3,8
	lw	a5,-24(s0)
	sub	a5,a3,a5
	.loc 5 3152 38
	li	a3,1
	sll	a5,a3,a5
	.loc 5 3152 33
	slli	a5,a5,24
	srai	a5,a5,24
	or	a5,a4,a5
	slli	a3,a5,24
	srai	a3,a3,24
	.loc 5 3152 17
	lw	a4,-36(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	.loc 5 3152 33
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 5 3151 39 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L393:
	.loc 5 3151 25 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L394
.L392:
.LBE78:
	.loc 5 3156 26
	lw	a5,-40(s0)
	srli	a5,a5,3
	.loc 5 3156 17
	lw	a4,-36(s0)
	add	a4,a4,a5
	.loc 5 3156 5
	lw	a5,-44(s0)
	srli	a5,a5,3
	mv	a2,a5
	li	a1,255
	mv	a0,a4
	call	memset
.L384:
	.loc 5 3157 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE200:
	.size	ssl_bitmask_set, .-ssl_bitmask_set
	.section	.text.ssl_bitmask_check,"ax",@progbits
	.align	1
	.type	ssl_bitmask_check, @function
ssl_bitmask_check:
.LFB201:
	.loc 5 3164 1
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
	.loc 5 3167 12
	sw	zero,-20(s0)
	.loc 5 3167 5
	j	.L396
.L399:
	.loc 5 3168 17
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 5 3168 12
	li	a5,255
	beq	a4,a5,.L397
	.loc 5 3169 20
	li	a5,-1
	j	.L398
.L397:
	.loc 5 3167 31 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L396:
	.loc 5 3167 25 discriminator 1
	lw	a5,-40(s0)
	srli	a5,a5,3
	.loc 5 3167 19 discriminator 1
	lw	a4,-20(s0)
	bltu	a4,a5,.L399
	.loc 5 3173 12
	sw	zero,-20(s0)
	.loc 5 3173 5
	j	.L400
.L402:
	.loc 5 3174 23
	lw	a5,-40(s0)
	srli	a5,a5,3
	.loc 5 3174 18
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a3,a5
	.loc 5 3174 39
	li	a4,7
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 5 3174 46
	sra	a5,a3,a5
	andi	a5,a5,1
	.loc 5 3174 12
	bne	a5,zero,.L401
	.loc 5 3175 20
	li	a5,-1
	j	.L398
.L401:
	.loc 5 3173 31 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L400:
	.loc 5 3173 25 discriminator 1
	lw	a5,-40(s0)
	andi	a5,a5,7
	.loc 5 3173 19 discriminator 1
	lw	a4,-20(s0)
	bltu	a4,a5,.L402
	.loc 5 3179 12
	li	a5,0
.L398:
	.loc 5 3180 1
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
.LFE201:
	.size	ssl_bitmask_check, .-ssl_bitmask_check
	.section	.text.ssl_get_reassembly_buffer_size,"ax",@progbits
	.align	1
	.type	ssl_get_reassembly_buffer_size, @function
ssl_get_reassembly_buffer_size:
.LFB202:
	.loc 5 3185 1
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
	.loc 5 3188 15
	li	a5,12
	sw	a5,-20(s0)
	.loc 5 3189 15
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 3191 8
	lw	a5,-40(s0)
	beq	a5,zero,.L404
	.loc 5 3192 30
	lw	a5,-36(s0)
	srli	a5,a5,3
	.loc 5 3192 45
	lw	a4,-36(s0)
	andi	a4,a4,7
	.loc 5 3192 49
	snez	a4,a4
	andi	a4,a4,0xff
	.loc 5 3192 34
	add	a5,a5,a4
	.loc 5 3192 19
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L404:
	.loc 5 3195 12
	lw	a5,-20(s0)
	.loc 5 3196 1
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
.LFE202:
	.size	ssl_get_reassembly_buffer_size, .-ssl_get_reassembly_buffer_size
	.section	.text.ssl_get_hs_total_len,"ax",@progbits
	.align	1
	.type	ssl_get_hs_total_len, @function
ssl_get_hs_total_len:
.LFB203:
	.loc 5 3201 1
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
	.loc 5 3202 30
	lw	a5,-20(s0)
	lw	a5,120(a5)
	.loc 5 3202 39
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 5 3202 45
	slli	a4,a5,16
	.loc 5 3202 70
	lw	a5,-20(s0)
	lw	a5,120(a5)
	.loc 5 3202 79
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 5 3202 89
	slli	a5,a5,8
	.loc 5 3202 52
	or	a5,a4,a5
	.loc 5 3202 113
	lw	a4,-20(s0)
	lw	a4,120(a4)
	.loc 5 3202 122
	addi	a4,a4,3
	lbu	a4,0(a4)
	.loc 5 3202 95
	or	a5,a5,a4
	.loc 5 3203 1
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
.LFE203:
	.size	ssl_get_hs_total_len, .-ssl_get_hs_total_len
	.section	.rodata
	.align	2
.LC104:
	.string	"handshake message too short: %zu"
	.align	2
.LC105:
	.string	"handshake message: msglen = %zu, type = %u, hslen = %zu"
	.align	2
.LC106:
	.string	"decrypted handshake message: iv-buf=%d hdr-buf=%d hdr-buf=%d"
	.align	2
.LC107:
	.string	"invalid handshake header"
	.align	2
.LC108:
	.string	"received future handshake message of sequence number %u (next %u)"
	.align	2
.LC109:
	.string	"received message from last flight, message_seq = %u, start_of_flight = %u"
	.align	2
.LC110:
	.string	"dropping out-of-sequence message: message_seq = %u, expected = %u"
	.align	2
.LC111:
	.string	"found fragmented DTLS handshake message"
	.align	2
.LC112:
	.string	"sole"
	.align	2
.LC113:
	.string	"initial"
	.align	2
.LC114:
	.string	"subsequent"
	.align	2
.LC115:
	.string	"%s handshake fragment: %zu, %u..%u of %zu"
	.align	2
.LC116:
	.string	"Shouldn't happen: no room to move handshake fragment %zu from %p to %p (buf=%p len=%zu)"
	.align	2
.LC117:
	.string	"Prepare: waiting for more handshake fragments %u/%zu"
	.align	2
.LC118:
	.string	"Shouldn't happen: in_msglen=%zu > 0xffff"
	.align	2
.LC119:
	.string	"reassembled record"
	.align	2
.LC120:
	.string	"More handshake messages in the record: %zu + %zu"
	.section	.text.mbedtls_ssl_prepare_handshake_record,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_prepare_handshake_record
	.type	mbedtls_ssl_prepare_handshake_record, @function
mbedtls_ssl_prepare_handshake_record:
.LFB204:
	.loc 5 3206 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s1,100(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	.loc 5 3207 12
	lw	a5,-84(s0)
	lw	a5,20(a5)
	.loc 5 3207 8
	bne	a5,zero,.L409
	.loc 5 3213 16
	lw	a5,-84(s0)
	lw	s1,132(a5)
	.loc 5 3213 30
	lw	a0,-84(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a5,a0
	.loc 5 3213 12 discriminator 1
	bgeu	s1,a5,.L410
	.loc 5 3214 13
	lw	a5,-84(s0)
	lw	a5,132(a5)
	lui	a4,%hi(.LC104)
	addi	a4,a4,%lo(.LC104)
	li	a3,4096
	addi	a3,a3,-882
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3216 20
	li	a5,-28672
	addi	a5,a5,-512
	j	.L411
.L410:
	.loc 5 3219 25
	lw	a0,-84(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	s1,a0
	.loc 5 3219 55 discriminator 1
	lw	a0,-84(s0)
	call	ssl_get_hs_total_len
	mv	a5,a0
	.loc 5 3219 53 discriminator 2
	add	a4,s1,a5
	.loc 5 3219 23 discriminator 2
	lw	a5,-84(s0)
	sw	a4,168(a5)
.L409:
	.loc 5 3222 5
	lw	a5,-84(s0)
	lw	a4,132(a5)
	.loc 5 3222 219
	lw	a5,-84(s0)
	lw	a5,120(a5)
	.loc 5 3222 227
	lbu	a5,0(a5)
	.loc 5 3222 5
	mv	a3,a5
	lw	a5,-84(s0)
	lw	a5,168(a5)
	mv	a7,a5
	mv	a6,a3
	mv	a5,a4
	lui	a4,%hi(.LC105)
	addi	a4,a4,%lo(.LC105)
	li	a3,4096
	addi	a3,a3,-874
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,3
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3227 12
	lw	a5,-84(s0)
	lw	a5,68(a5)
	.loc 5 3227 8
	beq	a5,zero,.L412
	.loc 5 3228 210
	lw	a5,-84(s0)
	lw	a4,116(a5)
	.loc 5 3228 223
	lw	a5,-84(s0)
	lw	a5,96(a5)
	.loc 5 3228 9
	sub	a3,a4,a5
	.loc 5 3228 244
	lw	a5,-84(s0)
	lw	a4,104(a5)
	.loc 5 3228 258
	lw	a5,-84(s0)
	lw	a5,96(a5)
	.loc 5 3228 9
	sub	a2,a4,a5
	.loc 5 3228 279
	lw	a5,-84(s0)
	lw	a4,120(a5)
	.loc 5 3228 293
	lw	a5,-84(s0)
	lw	a5,96(a5)
	.loc 5 3228 9
	sub	a5,a4,a5
	mv	a7,a5
	mv	a6,a2
	mv	a5,a3
	lui	a4,%hi(.LC106)
	addi	a4,a4,%lo(.LC106)
	li	a3,4096
	addi	a3,a3,-868
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
.L412:
	.loc 5 3236 12
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 5 3236 18
	lbu	a4,5(a5)
	.loc 5 3236 8
	li	a5,1
	bne	a4,a5,.L413
.LBB79:
	.loc 5 3237 13
	li	a5,-110
	sw	a5,-48(s0)
	.loc 5 3238 147
	lw	a5,-84(s0)
	lw	a5,120(a5)
	.loc 5 3238 157
	addi	a5,a5,4
	sw	a5,-56(s0)
.LBB80:
.LBB81:
	.loc 6 122 33
	lw	a5,-56(s0)
	sw	a5,-60(s0)
	.loc 6 123 7
	lw	a5,-60(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-62(s0)
	.loc 6 127 12
	lhu	a5,-62(s0)
.LBE81:
.LBE80:
	.loc 5 3238 96 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 3238 22 discriminator 2
	sw	a5,-52(s0)
	.loc 5 3240 13
	lw	a0,-84(s0)
	call	ssl_check_hs_header
	mv	a5,a0
	.loc 5 3240 12 discriminator 1
	beq	a5,zero,.L415
	.loc 5 3241 13
	lui	a5,%hi(.LC107)
	addi	a4,a5,%lo(.LC107)
	li	a5,4096
	addi	a3,a5,-855
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3242 20
	li	a5,-28672
	addi	a5,a5,-512
	j	.L411
.L415:
	.loc 5 3245 16
	lw	a5,-84(s0)
	lw	a5,64(a5)
	.loc 5 3245 12
	beq	a5,zero,.L416
	.loc 5 3246 15
	lw	a0,-84(s0)
	call	mbedtls_ssl_is_handshake_over
	mv	a5,a0
	.loc 5 3245 35 discriminator 1
	bne	a5,zero,.L417
	.loc 5 3247 34
	lw	a5,-84(s0)
	lw	a5,64(a5)
	.loc 5 3247 45
	lw	a5,636(a5)
	.loc 5 3246 55
	lw	a4,-52(s0)
	bne	a4,a5,.L418
.L417:
	.loc 5 3248 15
	lw	a0,-84(s0)
	call	mbedtls_ssl_is_handshake_over
	mv	a4,a0
	.loc 5 3247 59
	li	a5,1
	bne	a4,a5,.L416
	.loc 5 3249 18
	lw	a5,-84(s0)
	lw	a5,120(a5)
	.loc 5 3249 26
	lbu	a4,0(a5)
	.loc 5 3248 55
	li	a5,1
	beq	a4,a5,.L416
.L418:
	.loc 5 3250 35
	lw	a5,-84(s0)
	lw	a5,64(a5)
	.loc 5 3250 46
	lw	a5,636(a5)
	.loc 5 3250 16
	lw	a4,-52(s0)
	bleu	a4,a5,.L419
	.loc 5 3251 227
	lw	a5,-84(s0)
	lw	a5,64(a5)
	.loc 5 3251 17
	lw	a5,636(a5)
	mv	a6,a5
	lw	a5,-52(s0)
	lui	a4,%hi(.LC108)
	addi	a4,a4,%lo(.LC108)
	li	a3,4096
	addi	a3,a3,-845
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3256 24
	li	a5,-24576
	addi	a5,a5,-1152
	j	.L411
.L419:
	.loc 5 3262 36
	lw	a5,-84(s0)
	lw	a5,64(a5)
	.loc 5 3262 47
	lw	a5,656(a5)
	.loc 5 3262 69
	addi	a5,a5,-1
	.loc 5 3262 16
	lw	a4,-52(s0)
	bne	a4,a5,.L420
	.loc 5 3263 20
	lw	a5,-84(s0)
	lw	a5,120(a5)
	.loc 5 3263 28
	lbu	a4,0(a5)
	.loc 5 3262 73 discriminator 1
	li	a5,3
	beq	a4,a5,.L420
	.loc 5 3264 238
	lw	a5,-84(s0)
	lw	a5,64(a5)
	.loc 5 3264 17
	lw	a5,656(a5)
	mv	a6,a5
	lw	a5,-52(s0)
	lui	a4,%hi(.LC109)
	addi	a4,a4,%lo(.LC109)
	li	a3,4096
	addi	a3,a3,-832
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3269 28
	lw	a0,-84(s0)
	call	mbedtls_ssl_resend
	sw	a0,-48(s0)
	.loc 5 3269 20 discriminator 1
	lw	a5,-48(s0)
	beq	a5,zero,.L422
	.loc 5 3270 21
	lw	a5,-48(s0)
	lui	a4,%hi(.LC64)
	addi	a4,a4,%lo(.LC64)
	li	a3,4096
	addi	a3,a3,-826
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-84(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3271 28
	lw	a5,-48(s0)
	j	.L411
.L420:
	.loc 5 3274 230
	lw	a5,-84(s0)
	lw	a5,64(a5)
	.loc 5 3274 17
	lw	a5,636(a5)
	mv	a6,a5
	lw	a5,-52(s0)
	lui	a4,%hi(.LC110)
	addi	a4,a4,%lo(.LC110)
	li	a3,4096
	addi	a3,a3,-822
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
.L422:
	.loc 5 3280 20
	li	a5,-24576
	addi	a5,a5,-1408
	j	.L411
.L416:
	.loc 5 3288 13
	lw	a0,-84(s0)
	call	ssl_hs_is_proper_fragment
	mv	a4,a0
	.loc 5 3288 12 discriminator 1
	li	a5,1
	bne	a4,a5,.L423
	.loc 5 3289 13
	lui	a5,%hi(.LC111)
	addi	a4,a5,%lo(.LC111)
	li	a5,4096
	addi	a3,a5,-807
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3290 20
	li	a5,-24576
	addi	a5,a5,-1152
	j	.L411
.L413:
.LBE79:
.LBB82:
	.loc 5 3296 16
	lw	a5,-84(s0)
	lw	a5,96(a5)
	.loc 5 3295 30
	addi	a5,a5,8
	sw	a5,-20(s0)
	.loc 5 3298 40
	lw	a0,-84(s0)
	call	mbedtls_ssl_in_hdr_len
	mv	a4,a0
	.loc 5 3297 30
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 5 3299 57
	lw	a5,-84(s0)
	lw	a5,20(a5)
	.loc 5 3299 24
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 5 3301 37
	lw	a5,-84(s0)
	lw	a4,168(a5)
	.loc 5 3301 53
	lw	a5,-84(s0)
	lw	a5,20(a5)
	.loc 5 3301 22
	sub	a5,a4,a5
	sw	a5,-32(s0)
	.loc 5 3308 16
	lw	a5,-84(s0)
	lw	a4,132(a5)
	.loc 5 3307 22
	lw	a5,-32(s0)
	bleu	a5,a4,.L424
	mv	a5,a4
.L424:
	sw	a5,-36(s0)
	.loc 5 3311 191
	lw	a5,-84(s0)
	lw	a5,20(a5)
	.loc 5 3311 9
	bne	a5,zero,.L425
	.loc 5 3311 270 discriminator 1
	lw	a5,-84(s0)
	lw	a5,168(a5)
	.loc 5 3311 290 discriminator 1
	lw	a4,-36(s0)
	bne	a4,a5,.L426
	.loc 5 3311 9 discriminator 3
	lui	a5,%hi(.LC112)
	addi	a5,a5,%lo(.LC112)
	j	.L427
.L426:
	.loc 5 3311 9 is_stmt 0 discriminator 4
	lui	a5,%hi(.LC113)
	addi	a5,a5,%lo(.LC113)
	j	.L427
.L425:
	.loc 5 3311 9 discriminator 2
	lui	a5,%hi(.LC114)
	addi	a5,a5,%lo(.LC114)
.L427:
	.loc 5 3311 9 discriminator 5
	lw	a4,-84(s0)
	lw	a2,132(a4)
	lw	a4,-84(s0)
	lw	a1,20(a4)
	.loc 5 3311 357 is_stmt 1 discriminator 5
	lw	a4,-84(s0)
	lw	a3,20(a4)
	.loc 5 3311 9 discriminator 5
	lw	a4,-36(s0)
	add	a4,a3,a4
	lw	a3,-84(s0)
	lw	a3,168(a3)
	sw	a3,4(sp)
	sw	a4,0(sp)
	mv	a7,a1
	mv	a6,a2
	lui	a4,%hi(.LC115)
	addi	a4,a4,%lo(.LC115)
	li	a3,4096
	addi	a3,a3,-785
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,3
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3336 22
	lw	a5,-84(s0)
	lw	a5,140(a5)
	sw	a5,-40(s0)
	.loc 5 3340 30
	lw	a5,-84(s0)
	lw	a5,132(a5)
	.loc 5 3340 25
	lw	a4,-28(s0)
	add	a4,a4,a5
	.loc 5 3340 47
	lw	a5,-84(s0)
	lw	a3,96(a5)
	.loc 5 3340 56
	lw	a5,-40(s0)
	add	a5,a3,a5
	.loc 5 3340 12
	bleu	a4,a5,.L428
	.loc 5 3341 13
	lw	a5,-84(s0)
	lw	a3,132(a5)
	.loc 5 3341 268
	lw	a5,-84(s0)
	lw	a2,120(a5)
	.loc 5 3341 312
	lw	a5,-84(s0)
	lw	a5,96(a5)
	.loc 5 3341 13
	lw	a4,-40(s0)
	sw	a4,4(sp)
	sw	a5,0(sp)
	lw	a7,-28(s0)
	mv	a6,a2
	mv	a5,a3
	lui	a4,%hi(.LC116)
	addi	a4,a4,%lo(.LC116)
	li	a3,4096
	addi	a3,a3,-755
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3348 20
	li	a5,-110
	j	.L411
.L428:
	.loc 5 3350 33
	lw	a5,-84(s0)
	lw	a4,120(a5)
	.loc 5 3350 9
	lw	a5,-84(s0)
	lw	a5,132(a5)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-28(s0)
	call	memmove
	.loc 5 3352 12
	lw	a5,-84(s0)
	lw	a4,20(a5)
	.loc 5 3352 59
	lw	a5,-84(s0)
	lw	a5,132(a5)
	.loc 5 3352 42
	add	a4,a4,a5
	lw	a5,-84(s0)
	sw	a4,20(a5)
	.loc 5 3353 27
	lw	a5,-84(s0)
	lw	a5,132(a5)
	.loc 5 3353 21
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 5 3355 16
	lw	a5,-84(s0)
	lw	a4,20(a5)
	.loc 5 3355 51
	lw	a5,-84(s0)
	lw	a5,168(a5)
	.loc 5 3355 12
	bgeu	a4,a5,.L429
	.loc 5 3356 13
	lw	a5,-84(s0)
	lw	a4,20(a5)
	lw	a5,-84(s0)
	lw	a5,168(a5)
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC117)
	addi	a4,a4,%lo(.LC117)
	li	a3,4096
	addi	a3,a3,-740
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,3
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3359 25
	lw	a5,-84(s0)
	lw	a4,-28(s0)
	sw	a4,104(a5)
	.loc 5 3360 28
	lw	a5,-84(s0)
	sw	zero,132(a5)
	.loc 5 3361 13
	lw	a0,-84(s0)
	call	mbedtls_ssl_update_in_pointers
	.loc 5 3362 20
	li	a5,-24576
	addi	a5,a5,-1408
	j	.L411
.L429:
.LBB83:
	.loc 5 3364 33
	lw	a5,-84(s0)
	lw	a4,20(a5)
	.loc 5 3364 28
	lw	a5,-84(s0)
	sw	a4,132(a5)
	.loc 5 3365 46
	lw	a5,-84(s0)
	sw	zero,20(a5)
	.loc 5 3366 25
	lw	a5,-84(s0)
	lw	a4,-20(s0)
	sw	a4,104(a5)
	.loc 5 3367 13
	lw	a0,-84(s0)
	call	mbedtls_ssl_update_in_pointers
	.loc 5 3370 20
	lw	a5,-84(s0)
	lw	a4,132(a5)
	.loc 5 3370 16
	li	a5,65536
	bltu	a4,a5,.L430
	.loc 5 3371 17
	lw	a5,-84(s0)
	lw	a5,132(a5)
	lui	a4,%hi(.LC118)
	addi	a4,a4,%lo(.LC118)
	li	a3,4096
	addi	a3,a3,-725
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3375 24
	li	a5,-110
	j	.L411
.L430:
	.loc 5 3377 156 discriminator 2
	lw	a5,-84(s0)
	lw	a4,112(a5)
	.loc 5 3377 196 discriminator 2
	lw	a5,-84(s0)
	lw	a5,132(a5)
	.loc 5 3377 163 discriminator 2
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a3,a5,8
	srli	a5,a5,8
	or	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a4,-68(s0)
	sh	a5,-70(s0)
.LBB84:
.LBB85:
	.loc 6 148 33
	lw	a5,-68(s0)
	sw	a5,-76(s0)
	.loc 6 149 12
	lw	a5,-76(s0)
	lhu	a4,-70(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-70(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 6 153 1
	nop
.LBE85:
.LBE84:
	.loc 5 3379 33
	lw	a0,-84(s0)
	call	mbedtls_ssl_in_hdr_len
	mv	a4,a0
	.loc 5 3379 66 discriminator 1
	lw	a5,-84(s0)
	lw	a5,132(a5)
	.loc 5 3379 20 discriminator 1
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 5 3381 162
	lw	a5,-84(s0)
	lw	a5,104(a5)
	.loc 5 3381 13
	lw	a6,-44(s0)
	lui	a4,%hi(.LC119)
	addi	a4,a4,%lo(.LC119)
	li	a3,4096
	addi	a3,a3,-715
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-84(s0)
	call	mbedtls_debug_print_buf
	.loc 5 3383 20
	lw	a5,-84(s0)
	lw	a4,168(a5)
	.loc 5 3383 36
	lw	a5,-84(s0)
	lw	a5,132(a5)
	.loc 5 3383 16
	bgeu	a4,a5,.L423
	.loc 5 3384 17
	lw	a5,-84(s0)
	lw	a3,168(a5)
	.loc 5 3384 223
	lw	a5,-84(s0)
	lw	a4,132(a5)
	.loc 5 3384 240
	lw	a5,-84(s0)
	lw	a5,168(a5)
	.loc 5 3384 17
	sub	a5,a4,a5
	mv	a6,a5
	mv	a5,a3
	lui	a4,%hi(.LC120)
	addi	a4,a4,%lo(.LC120)
	li	a3,4096
	addi	a3,a3,-712
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,3
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
.L423:
.LBE83:
.LBE82:
	.loc 5 3393 12
	li	a5,0
.L411:
	.loc 5 3394 1
	mv	a0,a5
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	lw	s1,100(sp)
	.cfi_restore 9
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE204:
	.size	mbedtls_ssl_prepare_handshake_record, .-mbedtls_ssl_prepare_handshake_record
	.section	.text.mbedtls_ssl_update_handshake_status,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_update_handshake_status
	.type	mbedtls_ssl_update_handshake_status, @function
mbedtls_ssl_update_handshake_status:
.LFB205:
	.loc 5 3397 1
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
	.loc 5 3398 9
	li	a5,-110
	sw	a5,-28(s0)
	.loc 5 3399 42
	lw	a5,-36(s0)
	lw	a5,64(a5)
	sw	a5,-32(s0)
	.loc 5 3401 9
	lw	a0,-36(s0)
	call	mbedtls_ssl_is_handshake_over
	mv	a5,a0
	.loc 5 3401 8 discriminator 1
	bne	a5,zero,.L432
	.loc 5 3401 49 discriminator 2
	lw	a5,-32(s0)
	beq	a5,zero,.L432
	.loc 5 3402 18
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 3402 29
	lw	a5,28(a5)
	.loc 5 3402 55
	lw	a4,-36(s0)
	lw	a3,120(a4)
	.loc 5 3402 15
	lw	a4,-36(s0)
	lw	a4,168(a4)
	mv	a2,a4
	mv	a1,a3
	lw	a0,-36(s0)
	jalr	a5
.LVL9:
	sw	a0,-28(s0)
	.loc 5 3403 12
	lw	a5,-28(s0)
	beq	a5,zero,.L432
	.loc 5 3404 13
	lw	a5,-28(s0)
	lui	a4,%hi(.LC90)
	addi	a4,a4,%lo(.LC90)
	li	a3,4096
	addi	a3,a3,-692
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3405 20
	lw	a5,-28(s0)
	j	.L433
.L432:
	.loc 5 3411 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 3411 18
	lbu	a4,5(a5)
	.loc 5 3411 8
	li	a5,1
	bne	a4,a5,.L434
	.loc 5 3412 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 3411 35 discriminator 1
	beq	a5,zero,.L434
.LBB86:
	.loc 5 3417 11
	lw	a5,-32(s0)
	lw	a5,636(a5)
	.loc 5 3417 23
	addi	a4,a5,1
	lw	a5,-32(s0)
	sw	a4,636(a5)
	.loc 5 3424 9
	li	a1,0
	lw	a0,-36(s0)
	call	ssl_buffering_free_slot
	.loc 5 3427 21
	sw	zero,-20(s0)
	.loc 5 3427 33
	lw	a5,-32(s0)
	addi	a5,a5,564
	sw	a5,-24(s0)
	.loc 5 3427 9
	j	.L435
.L436:
	.loc 5 3430 21
	lw	a5,-24(s0)
	lw	a4,-24(s0)
	lw	a3,12(a4)
	sw	a3,0(a5)
	lw	a3,16(a4)
	sw	a3,4(a5)
	lw	a4,20(a4)
	sw	a4,8(a5)
	.loc 5 3429 20
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 5 3429 30
	lw	a5,-24(s0)
	addi	a5,a5,12
	sw	a5,-24(s0)
.L435:
	.loc 5 3428 21
	lw	a5,-20(s0)
	addi	a4,a5,1
	.loc 5 3428 25
	li	a5,3
	bleu	a4,a5,.L436
	.loc 5 3434 9
	li	a2,12
	li	a1,0
	lw	a0,-24(s0)
	call	memset
.L434:
.LBE86:
	.loc 5 3437 12
	li	a5,0
.L433:
	.loc 5 3438 1
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
.LFE205:
	.size	mbedtls_ssl_update_handshake_status, .-mbedtls_ssl_update_handshake_status
	.section	.text.mbedtls_ssl_dtls_replay_reset,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_dtls_replay_reset
	.type	mbedtls_ssl_dtls_replay_reset, @function
mbedtls_ssl_dtls_replay_reset:
.LFB206:
	.loc 5 3452 1
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
	.loc 5 3453 24
	lw	a5,-20(s0)
	li	a3,0
	li	a4,0
	sw	a3,152(a5)
	sw	a4,156(a5)
	.loc 5 3454 20
	lw	a5,-20(s0)
	sw	a3,160(a5)
	sw	a4,164(a5)
	.loc 5 3455 1
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
.LFE206:
	.size	mbedtls_ssl_dtls_replay_reset, .-mbedtls_ssl_dtls_replay_reset
	.section	.text.ssl_load_six_bytes,"ax",@progbits
	.align	1
	.type	ssl_load_six_bytes, @function
ssl_load_six_bytes:
.LFB207:
	.loc 5 3458 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s2,100(sp)
	sw	s3,96(sp)
	sw	s4,92(sp)
	sw	s5,88(sp)
	sw	s6,84(sp)
	sw	s7,80(sp)
	sw	s8,76(sp)
	sw	s9,72(sp)
	sw	s10,68(sp)
	sw	s11,64(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	.cfi_offset 22, -28
	.cfi_offset 23, -32
	.cfi_offset 24, -36
	.cfi_offset 25, -40
	.cfi_offset 26, -44
	.cfi_offset 27, -48
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	.loc 5 3459 27
	lw	a5,-52(s0)
	lbu	a5,0(a5)
	.loc 5 3459 13
	sw	a5,-64(s0)
	sw	zero,-60(s0)
	.loc 5 3459 31
	lw	a5,-64(s0)
	slli	a5,a5,8
	sw	a5,-68(s0)
	sw	zero,-72(s0)
	.loc 5 3460 27
	lw	a5,-52(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 5 3460 13
	sw	a5,-80(s0)
	sw	zero,-76(s0)
	.loc 5 3460 31
	lw	a5,-80(s0)
	slli	s11,a5,0
	li	s10,0
	.loc 5 3459 38
	lw	a4,-72(s0)
	lw	a5,-68(s0)
	mv	a1,a4
	or	s4,a1,s10
	or	s5,a5,s11
	.loc 5 3461 27
	lw	a5,-52(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 5 3461 13
	sw	a5,-88(s0)
	sw	zero,-84(s0)
	.loc 5 3461 31
	lw	a4,-88(s0)
	lw	a5,-84(s0)
	mv	a1,a4
	srli	s3,a1,8
	mv	a5,a4
	slli	s2,a5,24
	.loc 5 3460 38
	or	t5,s4,s2
	or	t6,s5,s3
	.loc 5 3462 27
	lw	a5,-52(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 5 3462 13
	mv	s8,a5
	li	s9,0
	.loc 5 3462 31
	srli	a5,s8,16
	slli	a7,s9,16
	add	a7,a5,a7
	slli	a6,s8,16
	.loc 5 3461 38
	or	t3,t5,a6
	or	t4,t6,a7
	.loc 5 3463 27
	lw	a5,-52(s0)
	addi	a5,a5,4
	lbu	a5,0(a5)
	.loc 5 3463 13
	mv	s6,a5
	li	s7,0
	.loc 5 3463 31
	srli	a5,s6,24
	slli	a3,s7,8
	add	a3,a5,a3
	slli	a2,s6,8
	.loc 5 3462 38
	or	t1,t3,a2
	or	t2,t4,a3
	.loc 5 3464 27
	lw	a5,-52(s0)
	addi	a5,a5,5
	lbu	a5,0(a5)
	.loc 5 3464 13
	sw	a5,-96(s0)
	sw	zero,-92(s0)
	.loc 5 3463 37
	lw	a5,-96(s0)
	lw	a6,-92(s0)
	mv	a4,a5
	or	a4,t1,a4
	sw	a4,-104(s0)
	mv	a5,a6
	or	a5,t2,a5
	sw	a5,-100(s0)
	.loc 5 3463 37 is_stmt 0 discriminator 1
	lw	a4,-104(s0)
	lw	a5,-100(s0)
	.loc 5 3465 1 is_stmt 1
	mv	a0,a4
	mv	a1,a5
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
	lw	s6,84(sp)
	.cfi_restore 22
	lw	s7,80(sp)
	.cfi_restore 23
	lw	s8,76(sp)
	.cfi_restore 24
	lw	s9,72(sp)
	.cfi_restore 25
	lw	s10,68(sp)
	.cfi_restore 26
	lw	s11,64(sp)
	.cfi_restore 27
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE207:
	.size	ssl_load_six_bytes, .-ssl_load_six_bytes
	.section	.text.mbedtls_ssl_dtls_record_replay_check,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_dtls_record_replay_check, @function
mbedtls_ssl_dtls_record_replay_check:
.LFB208:
	.loc 5 3469 1
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
	.loc 5 3470 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 3474 21
	lw	a5,-36(s0)
	lw	a5,100(a5)
	sw	a5,-24(s0)
	.loc 5 3477 17
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,100(a5)
	.loc 5 3479 11
	lw	a0,-36(s0)
	call	mbedtls_ssl_dtls_replay_check
	sw	a0,-20(s0)
	.loc 5 3482 17
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,100(a5)
	.loc 5 3484 12
	lw	a5,-20(s0)
	.loc 5 3485 1
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
.LFE208:
	.size	mbedtls_ssl_dtls_record_replay_check, .-mbedtls_ssl_dtls_record_replay_check
	.section	.text.mbedtls_ssl_dtls_replay_check,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_dtls_replay_check
	.type	mbedtls_ssl_dtls_replay_check, @function
mbedtls_ssl_dtls_replay_check:
.LFB209:
	.loc 5 3491 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s2,52(sp)
	sw	s3,48(sp)
	sw	s4,44(sp)
	sw	s5,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	.loc 5 3492 49
	lw	a5,-52(s0)
	lw	a5,100(a5)
	.loc 5 3492 27
	addi	a5,a5,2
	mv	a0,a5
	call	ssl_load_six_bytes
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	.loc 5 3495 12
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 5 3495 18
	lbu	a5,11(a5)
	.loc 5 3495 8
	bne	a5,zero,.L443
	.loc 5 3496 16
	li	a5,0
	j	.L444
.L443:
	.loc 5 3499 25
	lw	a5,-52(s0)
	lw	a4,152(a5)
	lw	a5,156(a5)
	.loc 5 3499 8
	lw	a3,-36(s0)
	mv	a2,a5
	bgtu	a3,a2,.L453
	lw	a3,-36(s0)
	mv	a2,a5
	bne	a3,a2,.L445
	lw	a3,-40(s0)
	mv	a5,a4
	bleu	a3,a5,.L445
.L453:
	.loc 5 3500 16
	li	a5,0
	j	.L444
.L445:
	.loc 5 3503 14
	lw	a5,-52(s0)
	lw	a2,152(a5)
	lw	a3,156(a5)
	.loc 5 3503 9
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	sub	a4,a2,a0
	mv	a6,a4
	sgtu	a6,a6,a2
	sub	a5,a3,a1
	sub	a3,a5,a6
	mv	a5,a3
	sw	a4,-48(s0)
	sw	a5,-44(s0)
	.loc 5 3505 8
	lw	a5,-44(s0)
	bne	a5,zero,.L454
	lw	a5,-44(s0)
	bne	a5,zero,.L447
	lw	a4,-48(s0)
	li	a5,63
	bleu	a4,a5,.L447
.L454:
	.loc 5 3506 16
	li	a5,-1
	j	.L444
.L447:
	.loc 5 3509 13
	lw	a5,-52(s0)
	lw	a4,160(a5)
	lw	a5,164(a5)
	.loc 5 3509 50
	lw	a3,-48(s0)
	addi	a2,a3,-32
	blt	a2,zero,.L449
	srl	s2,a5,a2
	li	s3,0
	j	.L450
.L449:
	slli	a1,a5,1
	li	a2,31
	sub	a2,a2,a3
	sll	a2,a1,a2
	srl	s2,a4,a3
	add	s2,a2,s2
	srl	s3,a5,a3
.L450:
	andi	s4,s2,1
	andi	s5,s3,0
	.loc 5 3509 8
	mv	a5,s4
	or	a5,a5,s5
	beq	a5,zero,.L451
	.loc 5 3510 16
	li	a5,-1
	j	.L444
.L451:
	.loc 5 3513 12
	li	a5,0
.L444:
	.loc 5 3514 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s2,52(sp)
	.cfi_restore 18
	lw	s3,48(sp)
	.cfi_restore 19
	lw	s4,44(sp)
	.cfi_restore 20
	lw	s5,40(sp)
	.cfi_restore 21
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE209:
	.size	mbedtls_ssl_dtls_replay_check, .-mbedtls_ssl_dtls_replay_check
	.section	.text.mbedtls_ssl_dtls_replay_update,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_dtls_replay_update
	.type	mbedtls_ssl_dtls_replay_update, @function
mbedtls_ssl_dtls_replay_update:
.LFB210:
	.loc 5 3520 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s2,84(sp)
	sw	s3,80(sp)
	sw	s4,76(sp)
	sw	s5,72(sp)
	sw	s6,68(sp)
	sw	s7,64(sp)
	sw	s8,60(sp)
	sw	s9,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	.cfi_offset 22, -28
	.cfi_offset 23, -32
	.cfi_offset 24, -36
	.cfi_offset 25, -40
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	.loc 5 3521 49
	lw	a5,-84(s0)
	lw	a5,100(a5)
	.loc 5 3521 27
	addi	a5,a5,2
	mv	a0,a5
	call	ssl_load_six_bytes
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	.loc 5 3523 12
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 5 3523 18
	lbu	a5,11(a5)
	.loc 5 3523 8
	beq	a5,zero,.L471
	.loc 5 3527 25
	lw	a5,-84(s0)
	lw	a4,152(a5)
	lw	a5,156(a5)
	.loc 5 3527 8
	lw	a3,-52(s0)
	mv	a2,a5
	bgtu	a3,a2,.L468
	lw	a3,-52(s0)
	mv	a2,a5
	bne	a3,a2,.L458
	lw	a3,-56(s0)
	mv	a5,a4
	bleu	a3,a5,.L458
.L468:
.LBB87:
	.loc 5 3529 42
	lw	a5,-84(s0)
	lw	a0,152(a5)
	lw	a1,156(a5)
	.loc 5 3529 18
	lw	a2,-56(s0)
	lw	a3,-52(s0)
	sub	a4,a2,a0
	mv	a6,a4
	sgtu	a6,a6,a2
	sub	a5,a3,a1
	sub	a3,a5,a6
	mv	a5,a3
	sw	a4,-72(s0)
	sw	a5,-68(s0)
	.loc 5 3531 12
	lw	a5,-68(s0)
	bne	a5,zero,.L469
	lw	a5,-68(s0)
	bne	a5,zero,.L460
	lw	a4,-72(s0)
	li	a5,63
	bleu	a4,a5,.L460
.L469:
	.loc 5 3532 28
	lw	a3,-84(s0)
	li	a4,1
	li	a5,0
	sw	a4,160(a3)
	sw	a5,164(a3)
	j	.L462
.L460:
	.loc 5 3534 16
	lw	a5,-84(s0)
	lw	a4,160(a5)
	lw	a5,164(a5)
	.loc 5 3534 28
	lw	a3,-72(s0)
	addi	a2,a3,-32
	blt	a2,zero,.L463
	sll	s3,a4,a2
	li	s2,0
	j	.L464
.L463:
	srli	a1,a4,1
	li	a2,31
	sub	a2,a2,a3
	srl	a2,a1,a2
	sll	s3,a5,a3
	add	s3,a2,s3
	sll	s2,a4,a3
.L464:
	lw	a5,-84(s0)
	sw	s2,160(a5)
	sw	s3,164(a5)
	.loc 5 3535 16
	lw	a5,-84(s0)
	lw	a4,160(a5)
	lw	a5,164(a5)
	.loc 5 3535 28
	ori	s8,a4,1
	ori	s9,a5,0
	lw	a5,-84(s0)
	sw	s8,160(a5)
	sw	s9,164(a5)
.L462:
	.loc 5 3538 28
	lw	a3,-84(s0)
	lw	a4,-56(s0)
	lw	a5,-52(s0)
	sw	a4,152(a3)
	sw	a5,156(a3)
.LBE87:
	j	.L455
.L458:
.LBB88:
	.loc 5 3541 27
	lw	a5,-84(s0)
	lw	a2,152(a5)
	lw	a3,156(a5)
	.loc 5 3541 18
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	sub	a4,a2,a0
	mv	a6,a4
	sgtu	a6,a6,a2
	sub	a5,a3,a1
	sub	a3,a5,a6
	mv	a5,a3
	sw	a4,-64(s0)
	sw	a5,-60(s0)
	.loc 5 3543 12
	lw	a5,-60(s0)
	bne	a5,zero,.L455
	lw	a5,-60(s0)
	bne	a5,zero,.L470
	lw	a4,-64(s0)
	li	a5,63
	bgtu	a4,a5,.L455
.L470:
	.loc 5 3544 16
	lw	a5,-84(s0)
	lw	a4,160(a5)
	lw	a5,164(a5)
	.loc 5 3544 44
	lw	a3,-64(s0)
	addi	a2,a3,-32
	blt	a2,zero,.L466
	li	a3,1
	sll	s5,a3,a2
	li	s4,0
	j	.L467
.L466:
	li	s5,0
	li	a2,1
	sll	s4,a2,a3
.L467:
	.loc 5 3544 28
	or	s6,a4,s4
	or	s7,a5,s5
	lw	a5,-84(s0)
	sw	s6,160(a5)
	sw	s7,164(a5)
	j	.L455
.L471:
.LBE88:
	.loc 5 3524 9
	nop
.L455:
	.loc 5 3547 1
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	lw	s2,84(sp)
	.cfi_restore 18
	lw	s3,80(sp)
	.cfi_restore 19
	lw	s4,76(sp)
	.cfi_restore 20
	lw	s5,72(sp)
	.cfi_restore 21
	lw	s6,68(sp)
	.cfi_restore 22
	lw	s7,64(sp)
	.cfi_restore 23
	lw	s8,60(sp)
	.cfi_restore 24
	lw	s9,56(sp)
	.cfi_restore 25
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE210:
	.size	mbedtls_ssl_dtls_replay_update, .-mbedtls_ssl_dtls_replay_update
	.section	.rodata
	.align	2
.LC121:
	.string	"check cookie: in_len=%u"
	.align	2
.LC122:
	.string	"cli_id"
	.align	2
.LC123:
	.string	"check cookie: record too short"
	.align	2
.LC124:
	.string	"check cookie: not a good ClientHello"
	.align	2
.LC125:
	.string	"    type=%u epoch=%u fragment_offset=%u"
	.align	2
.LC126:
	.string	"check cookie: sid_len=%u > %u"
	.align	2
.LC127:
	.string	"sid received from network"
	.align	2
.LC128:
	.string	"check cookie: cookie_len=%u > %u"
	.align	2
.LC129:
	.string	"cookie received from network"
	.align	2
.LC130:
	.string	"check cookie: valid"
	.section	.text.mbedtls_ssl_check_dtls_clihlo_cookie,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_check_dtls_clihlo_cookie, @function
mbedtls_ssl_check_dtls_clihlo_cookie:
.LFB211:
	.loc 5 3569 1
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
	sw	a4,-84(s0)
	sw	a5,-88(s0)
	sw	a6,-92(s0)
	sw	a7,-96(s0)
	.loc 5 3599 5
	lw	a5,-84(s0)
	lui	a4,%hi(.LC121)
	addi	a4,a4,%lo(.LC121)
	li	a3,4096
	addi	a3,a3,-497
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3601 5
	lw	a6,-76(s0)
	lw	a5,-72(s0)
	lui	a4,%hi(.LC122)
	addi	a4,a4,%lo(.LC122)
	li	a3,4096
	addi	a3,a3,-495
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-68(s0)
	call	mbedtls_debug_print_buf
	.loc 5 3602 8
	lw	a4,-84(s0)
	li	a5,60
	bgtu	a4,a5,.L473
	.loc 5 3603 9
	lui	a5,%hi(.LC123)
	addi	a4,a5,%lo(.LC123)
	li	a5,4096
	addi	a3,a5,-493
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,4
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3604 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L483
.L473:
	.loc 5 3607 115
	lw	a5,-80(s0)
	addi	a5,a5,3
	sw	a5,-40(s0)
.LBB89:
.LBB90:
	.loc 6 122 33
	lw	a5,-40(s0)
	sw	a5,-36(s0)
	.loc 6 123 7
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-42(s0)
	.loc 6 127 12
	lhu	a5,-42(s0)
.LBE90:
.LBE89:
	.loc 5 3607 63 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 3607 11 discriminator 2
	sw	a5,-20(s0)
	.loc 5 3608 41
	lw	a5,-80(s0)
	addi	a5,a5,19
	lbu	a5,0(a5)
	.loc 5 3608 48
	slli	a4,a5,16
	.loc 5 3608 73
	lw	a5,-80(s0)
	addi	a5,a5,20
	lbu	a5,0(a5)
	.loc 5 3608 84
	slli	a5,a5,8
	.loc 5 3608 55
	or	a5,a4,a5
	.loc 5 3608 108
	lw	a4,-80(s0)
	addi	a4,a4,21
	lbu	a4,0(a4)
	.loc 5 3608 21
	or	a5,a5,a4
	sw	a5,-24(s0)
	.loc 5 3610 11
	lw	a5,-80(s0)
	lbu	a4,0(a5)
	.loc 5 3610 8
	li	a5,22
	bne	a4,a5,.L476
	.loc 5 3610 21 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L476
	.loc 5 3610 35 discriminator 2
	lw	a5,-24(s0)
	beq	a5,zero,.L477
.L476:
	.loc 5 3612 9
	lui	a5,%hi(.LC124)
	addi	a4,a5,%lo(.LC124)
	li	a5,4096
	addi	a3,a5,-484
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,4
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3613 178
	lw	a5,-80(s0)
	lbu	a5,0(a5)
	.loc 5 3613 9
	lw	a7,-24(s0)
	lw	a6,-20(s0)
	lui	a4,%hi(.LC125)
	addi	a4,a4,%lo(.LC125)
	li	a3,4096
	addi	a3,a3,-483
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3616 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L483
.L477:
	.loc 5 3619 17
	lw	a5,-80(s0)
	addi	a5,a5,59
	lbu	a5,0(a5)
	.loc 5 3619 13
	sw	a5,-28(s0)
	.loc 5 3620 26
	lw	a5,-28(s0)
	addi	a5,a5,61
	.loc 5 3620 8
	lw	a4,-84(s0)
	bgeu	a4,a5,.L478
	.loc 5 3621 9
	lw	a5,-84(s0)
	addi	a5,a5,-61
	mv	a6,a5
	lw	a5,-28(s0)
	lui	a4,%hi(.LC126)
	addi	a4,a4,%lo(.LC126)
	li	a3,4096
	addi	a3,a3,-475
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3624 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L483
.L478:
	.loc 5 3626 5
	lw	a5,-80(s0)
	addi	a5,a5,60
	lw	a6,-28(s0)
	lui	a4,%hi(.LC127)
	addi	a4,a4,%lo(.LC127)
	li	a3,4096
	addi	a3,a3,-470
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-68(s0)
	call	mbedtls_debug_print_buf
	.loc 5 3629 24
	lw	a5,-28(s0)
	addi	a5,a5,60
	.loc 5 3629 20
	lw	a4,-80(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 5 3629 16
	sw	a5,-32(s0)
	.loc 5 3630 30
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	addi	a5,a5,61
	.loc 5 3630 8
	lw	a4,-84(s0)
	bgeu	a4,a5,.L479
	.loc 5 3631 211
	lw	a4,-84(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	.loc 5 3631 221
	addi	a5,a5,-61
	.loc 5 3631 9
	mv	a6,a5
	lw	a5,-32(s0)
	lui	a4,%hi(.LC128)
	addi	a4,a4,%lo(.LC128)
	li	a3,4096
	addi	a3,a3,-465
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3634 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L483
.L479:
	.loc 5 3637 174
	lw	a5,-28(s0)
	addi	a5,a5,61
	.loc 5 3637 5
	lw	a4,-80(s0)
	add	a5,a4,a5
	lw	a6,-32(s0)
	lui	a4,%hi(.LC129)
	addi	a4,a4,%lo(.LC129)
	li	a3,4096
	addi	a3,a3,-459
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-68(s0)
	call	mbedtls_debug_print_buf
	.loc 5 3639 12
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 5 3639 18
	lw	a5,80(a5)
	.loc 5 3639 38
	lw	a4,-68(s0)
	lw	a4,0(a4)
	.loc 5 3639 44
	lw	a0,84(a4)
	.loc 5 3640 48
	lw	a4,-28(s0)
	addi	a4,a4,61
	.loc 5 3639 9
	lw	a3,-80(s0)
	add	a1,a3,a4
	lw	a4,-76(s0)
	lw	a3,-72(s0)
	lw	a2,-32(s0)
	jalr	a5
.LVL10:
	mv	a5,a0
	.loc 5 3639 8 discriminator 1
	bne	a5,zero,.L480
	.loc 5 3642 9
	lui	a5,%hi(.LC130)
	addi	a4,a5,%lo(.LC130)
	li	a5,4096
	addi	a3,a5,-454
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,4
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3643 16
	li	a5,0
	j	.L483
.L480:
	.loc 5 3666 8
	lw	a4,-92(s0)
	li	a5,27
	bgtu	a4,a5,.L481
	.loc 5 3667 16
	li	a5,-28672
	addi	a5,a5,1536
	j	.L483
.L481:
	.loc 5 3671 5
	li	a2,25
	lw	a1,-80(s0)
	lw	a0,-88(s0)
	call	memcpy
	.loc 5 3672 9
	lw	a5,-88(s0)
	addi	a5,a5,13
	.loc 5 3672 14
	li	a4,3
	sb	a4,0(a5)
	.loc 5 3673 9
	lw	a5,-88(s0)
	addi	a5,a5,25
	.loc 5 3673 14
	li	a4,-2
	sb	a4,0(a5)
	.loc 5 3674 9
	lw	a5,-88(s0)
	addi	a5,a5,26
	.loc 5 3674 14
	li	a4,-1
	sb	a4,0(a5)
	.loc 5 3677 14
	lw	a5,-88(s0)
	addi	a5,a5,28
	.loc 5 3677 7
	sw	a5,-60(s0)
	.loc 5 3678 12
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 5 3678 18
	lw	a5,76(a5)
	.loc 5 3678 38
	lw	a4,-68(s0)
	lw	a4,0(a4)
	.loc 5 3678 44
	lw	a0,84(a4)
	.loc 5 3678 9
	lw	a3,-88(s0)
	lw	a4,-92(s0)
	add	a2,a3,a4
	addi	a1,s0,-60
	lw	a4,-76(s0)
	lw	a3,-72(s0)
	jalr	a5
.LVL11:
	mv	a5,a0
	.loc 5 3678 8 discriminator 1
	beq	a5,zero,.L482
	.loc 5 3681 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L483
.L482:
	.loc 5 3684 25
	lw	a4,-60(s0)
	lw	a5,-88(s0)
	sub	a5,a4,a5
	.loc 5 3684 13
	mv	a4,a5
	.loc 5 3684 11
	lw	a5,-96(s0)
	sw	a4,0(a5)
	.loc 5 3687 33
	lw	a5,-96(s0)
	lw	a5,0(a5)
	.loc 5 3687 16
	andi	a4,a5,0xff
	.loc 5 3687 9
	lw	a5,-88(s0)
	addi	a5,a5,27
	.loc 5 3687 16
	addi	a4,a4,-28
	andi	a4,a4,0xff
	.loc 5 3687 14
	sb	a4,0(a5)
	.loc 5 3689 41
	lw	a5,-96(s0)
	lw	a5,0(a5)
	.loc 5 3689 47
	addi	a5,a5,-25
	.loc 5 3689 53
	srli	a4,a5,16
	.loc 5 3689 20
	lw	a5,-88(s0)
	addi	a5,a5,22
	.loc 5 3689 28
	andi	a4,a4,0xff
	.loc 5 3689 25
	sb	a4,0(a5)
	.loc 5 3689 9
	lw	a4,-88(s0)
	addi	a4,a4,14
	.loc 5 3689 20
	lbu	a5,0(a5)
	.loc 5 3689 14
	sb	a5,0(a4)
	.loc 5 3690 41
	lw	a5,-96(s0)
	lw	a5,0(a5)
	.loc 5 3690 47
	addi	a5,a5,-25
	.loc 5 3690 53
	srli	a4,a5,8
	.loc 5 3690 20
	lw	a5,-88(s0)
	addi	a5,a5,23
	.loc 5 3690 28
	andi	a4,a4,0xff
	.loc 5 3690 25
	sb	a4,0(a5)
	.loc 5 3690 9
	lw	a4,-88(s0)
	addi	a4,a4,15
	.loc 5 3690 20
	lbu	a5,0(a5)
	.loc 5 3690 14
	sb	a5,0(a4)
	.loc 5 3691 40
	lw	a5,-96(s0)
	lw	a5,0(a5)
	.loc 5 3691 28
	andi	a4,a5,0xff
	.loc 5 3691 20
	lw	a5,-88(s0)
	addi	a5,a5,24
	.loc 5 3691 28
	addi	a4,a4,-25
	andi	a4,a4,0xff
	.loc 5 3691 25
	sb	a4,0(a5)
	.loc 5 3691 9
	lw	a4,-88(s0)
	addi	a4,a4,16
	.loc 5 3691 20
	lbu	a5,0(a5)
	.loc 5 3691 14
	sb	a5,0(a4)
	.loc 5 3693 131 discriminator 2
	lw	a5,-88(s0)
	addi	a4,a5,11
	.loc 5 3693 169 discriminator 2
	lw	a5,-96(s0)
	lw	a5,0(a5)
	.loc 5 3693 139 discriminator 2
	slli	a5,a5,16
	srli	a5,a5,16
	addi	a5,a5,-13
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a3,a5,8
	srli	a5,a5,8
	or	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a4,-48(s0)
	sh	a5,-50(s0)
.LBB91:
.LBB92:
	.loc 6 148 33
	lw	a5,-48(s0)
	sw	a5,-56(s0)
	.loc 6 149 12
	lw	a5,-56(s0)
	lhu	a4,-50(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-50(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 6 153 1
	nop
.LBE92:
.LBE91:
	.loc 5 3695 12
	li	a5,-28672
	addi	a5,a5,1408
.L483:
	.loc 5 3696 1
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
.LFE211:
	.size	mbedtls_ssl_check_dtls_clihlo_cookie, .-mbedtls_ssl_check_dtls_clihlo_cookie
	.section	.rodata
	.align	2
.LC131:
	.string	"no cookie callbacks, can't check reconnect validity"
	.align	2
.LC132:
	.string	"mbedtls_ssl_check_dtls_clihlo_cookie"
	.align	2
.LC133:
	.string	"sending HelloVerifyRequest"
	.align	2
.LC134:
	.string	"cookie is valid, resetting context"
	.align	2
.LC135:
	.string	"reset"
	.section	.text.ssl_handle_possible_reconnect,"ax",@progbits
	.align	1
	.type	ssl_handle_possible_reconnect, @function
ssl_handle_possible_reconnect:
.LFB212:
	.loc 5 3720 1
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
	.loc 5 3721 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 3722 12
	sw	zero,-28(s0)
	.loc 5 3724 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 3724 18
	lw	a5,76(a5)
	.loc 5 3724 8
	beq	a5,zero,.L485
	.loc 5 3725 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 3725 18
	lw	a5,80(a5)
	.loc 5 3724 42 discriminator 1
	bne	a5,zero,.L486
.L485:
	.loc 5 3728 9
	lui	a5,%hi(.LC131)
	addi	a4,a5,%lo(.LC131)
	li	a5,4096
	addi	a3,a5,-368
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3730 16
	li	a5,0
	j	.L491
.L486:
	.loc 5 3735 12
	lw	a5,-36(s0)
	lw	a1,516(a5)
	.loc 5 3733 11
	lw	a5,-36(s0)
	lw	a2,520(a5)
	.loc 5 3736 12
	lw	a5,-36(s0)
	lw	a3,96(a5)
	.loc 5 3733 11
	lw	a5,-36(s0)
	lw	a4,136(a5)
	lw	a5,-36(s0)
	lw	a5,192(a5)
	addi	a0,s0,-28
	mv	a7,a0
	li	a6,16384
	lw	a0,-36(s0)
	call	mbedtls_ssl_check_dtls_clihlo_cookie
	sw	a0,-20(s0)
	.loc 5 3739 5
	lw	a5,-20(s0)
	lui	a4,%hi(.LC132)
	addi	a4,a4,%lo(.LC132)
	li	a3,4096
	addi	a3,a3,-357
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3741 8
	lw	a4,-20(s0)
	li	a5,-28672
	addi	a5,a5,1408
	bne	a4,a5,.L488
.LBB93:
	.loc 5 3743 9
	lui	a5,%hi(.LC133)
	addi	a4,a5,%lo(.LC133)
	li	a5,4096
	addi	a3,a5,-353
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3744 169
	lw	a5,-36(s0)
	lw	a5,192(a5)
	.loc 5 3744 9
	lw	a4,-28(s0)
	mv	a6,a4
	lui	a4,%hi(.LC97)
	addi	a4,a4,%lo(.LC97)
	li	a3,4096
	addi	a3,a3,-352
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-36(s0)
	call	mbedtls_debug_print_buf
	.loc 5 3749 23
	lw	a5,-36(s0)
	lw	a5,32(a5)
	.loc 5 3749 20
	lw	a4,-36(s0)
	lw	a3,44(a4)
	.loc 5 3749 47
	lw	a4,-36(s0)
	lw	a4,192(a4)
	.loc 5 3749 20
	lw	a2,-28(s0)
	mv	a1,a4
	mv	a0,a3
	jalr	a5
.LVL12:
	sw	a0,-24(s0)
	.loc 5 3750 9
	lw	a5,-24(s0)
	lui	a4,%hi(.LC70)
	addi	a4,a4,%lo(.LC70)
	li	a3,4096
	addi	a3,a3,-346
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3753 16
	li	a5,0
	j	.L491
.L488:
.LBE93:
	.loc 5 3756 8
	lw	a5,-20(s0)
	bne	a5,zero,.L489
	.loc 5 3757 9
	lui	a5,%hi(.LC134)
	addi	a4,a5,%lo(.LC134)
	li	a5,4096
	addi	a3,a5,-339
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3758 20
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_ssl_session_reset_int
	sw	a0,-20(s0)
	.loc 5 3758 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L490
	.loc 5 3759 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC135)
	addi	a4,a4,%lo(.LC135)
	li	a3,4096
	addi	a3,a3,-337
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3760 20
	lw	a5,-20(s0)
	j	.L491
.L490:
	.loc 5 3763 16
	li	a5,-24576
	addi	a5,a5,-1920
	j	.L491
.L489:
	.loc 5 3766 12
	lw	a5,-20(s0)
.L491:
	.loc 5 3767 1
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
.LFE212:
	.size	ssl_handle_possible_reconnect, .-ssl_handle_possible_reconnect
	.section	.text.ssl_check_record_type,"ax",@progbits
	.align	1
	.type	ssl_check_record_type, @function
ssl_check_record_type:
.LFB213:
	.loc 5 3772 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 5 3773 8
	lbu	a4,-17(s0)
	li	a5,22
	beq	a4,a5,.L493
	.loc 5 3773 27 discriminator 1
	lbu	a4,-17(s0)
	li	a5,21
	beq	a4,a5,.L493
	.loc 5 3774 27
	lbu	a4,-17(s0)
	li	a5,20
	beq	a4,a5,.L493
	.loc 5 3775 27
	lbu	a4,-17(s0)
	li	a5,23
	beq	a4,a5,.L493
	.loc 5 3777 16
	li	a5,-28672
	addi	a5,a5,-512
	j	.L494
.L493:
	.loc 5 3780 12
	li	a5,0
.L494:
	.loc 5 3781 1
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
.LFE213:
	.size	ssl_check_record_type, .-ssl_check_record_type
	.section	.rodata
	.align	2
.LC136:
	.string	"datagram of length %u too small to hold DTLS record header of length %u"
	.align	2
.LC137:
	.string	"datagram of length %u too small to hold DTLS record header including CID, length %u"
	.align	2
.LC138:
	.string	"unknown record type %u"
	.align	2
.LC139:
	.string	"TLS version mismatch: got %u, expected max %u"
	.align	2
.LC140:
	.string	"input record header"
	.align	2
.LC141:
	.string	"input record: msgtype = %u, version = [0x%x], msglen = %zu"
	.align	2
.LC142:
	.string	"rejecting empty record"
	.align	2
.LC143:
	.string	"Datagram of length %u too small to contain record of advertised length %u."
	.align	2
.LC144:
	.string	"record from another epoch: expected %u, received %lu"
	.align	2
.LC145:
	.string	"Consider record for buffering"
	.align	2
.LC146:
	.string	"replayed record"
	.section	.text.ssl_parse_record_header,"ax",@progbits
	.align	1
	.type	ssl_parse_record_header, @function
ssl_parse_record_header:
.LFB214:
	.loc 5 3807 1
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
	sw	a2,-108(s0)
	sw	a3,-112(s0)
	.loc 5 3810 18
	sw	zero,-24(s0)
	.loc 5 3811 18
	li	a5,1
	sw	a5,-28(s0)
	.loc 5 3813 18
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 5 3815 18
	li	a5,2
	sw	a5,-36(s0)
	.loc 5 3817 18
	li	a5,8
	sw	a5,-40(s0)
	.loc 5 3822 18
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 5 3826 18
	lw	a4,-44(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	sw	a5,-48(s0)
	.loc 5 3828 12
	sw	zero,-52(s0)
	.loc 5 3833 18
	li	a5,2
	sw	a5,-56(s0)
	.loc 5 3840 12
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 5 3840 18
	lbu	a4,5(a5)
	.loc 5 3840 8
	li	a5,1
	bne	a4,a5,.L496
	.loc 5 3841 28
	lw	a4,-44(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	j	.L497
.L496:
	.loc 5 3845 28
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L497:
	.loc 5 3848 34
	lw	a4,-20(s0)
	lw	a5,-56(s0)
	add	a5,a4,a5
	.loc 5 3848 8
	lw	a4,-108(s0)
	bgeu	a4,a5,.L498
	.loc 5 3849 252
	lw	a5,-56(s0)
	slli	a5,a5,1
	.loc 5 3849 9
	mv	a6,a5
	lw	a5,-108(s0)
	lui	a4,%hi(.LC136)
	addi	a4,a4,%lo(.LC136)
	li	a3,4096
	addi	a3,a3,-247
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-100(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3854 16
	li	a5,-28672
	addi	a5,a5,-512
	j	.L499
.L498:
	.loc 5 3861 20
	lw	a4,-104(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 5 3861 15
	lw	a5,-112(s0)
	sb	a4,8(a5)
	.loc 5 3865 18
	lw	a5,-112(s0)
	sb	zero,28(a5)
	.loc 5 3867 12
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 5 3867 18
	lbu	a4,5(a5)
	.loc 5 3867 8
	li	a5,1
	bne	a4,a5,.L500
	.loc 5 3868 12
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 5 3868 18
	lw	a5,100(a5)
	.loc 5 3867 35 discriminator 1
	beq	a5,zero,.L500
	.loc 5 3869 12
	lw	a5,-112(s0)
	lbu	a4,8(a5)
	.loc 5 3868 33
	li	a5,25
	bne	a4,a5,.L500
	.loc 5 3885 30
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 5 3885 25
	lw	a5,100(a5)
	sw	a5,-52(s0)
	.loc 5 3886 28
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 3888 38
	lw	a4,-20(s0)
	lw	a5,-56(s0)
	add	a5,a4,a5
	.loc 5 3888 12
	lw	a4,-108(s0)
	bgeu	a4,a5,.L501
	.loc 5 3889 271
	lw	a4,-20(s0)
	lw	a5,-56(s0)
	add	a5,a4,a5
	.loc 5 3889 13
	mv	a6,a5
	lw	a5,-108(s0)
	lui	a4,%hi(.LC137)
	addi	a4,a4,%lo(.LC137)
	li	a3,4096
	addi	a3,a3,-207
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-100(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3894 20
	li	a5,-28672
	addi	a5,a5,-512
	j	.L499
.L501:
	.loc 5 3899 24
	lw	a5,-52(s0)
	andi	a4,a5,0xff
	.loc 5 3899 22
	lw	a5,-112(s0)
	sb	a4,28(a5)
	.loc 5 3900 19
	lw	a5,-112(s0)
	addi	a3,a5,29
	.loc 5 3900 30
	lw	a4,-104(s0)
	lw	a5,-48(s0)
	add	a5,a4,a5
	.loc 5 3900 9
	lw	a2,-52(s0)
	mv	a1,a5
	mv	a0,a3
	call	memcpy
	j	.L502
.L500:
	.loc 5 3904 13
	lw	a5,-112(s0)
	lbu	a5,8(a5)
	mv	a0,a5
	call	ssl_check_record_type
	mv	a5,a0
	.loc 5 3904 12 discriminator 1
	beq	a5,zero,.L502
	.loc 5 3905 177
	lw	a5,-112(s0)
	lbu	a5,8(a5)
	.loc 5 3905 13
	lui	a4,%hi(.LC138)
	addi	a4,a4,%lo(.LC138)
	li	a3,4096
	addi	a3,a3,-191
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-100(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3907 20
	li	a5,-28672
	addi	a5,a5,-512
	j	.L499
.L502:
	.loc 5 3914 22
	lw	a4,-104(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 5 3914 17
	lw	a5,-112(s0)
	sb	a4,9(a5)
	.loc 5 3915 22
	lw	a5,-32(s0)
	addi	a5,a5,1
	lw	a4,-104(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 5 3915 17
	lw	a5,-112(s0)
	sb	a4,10(a5)
	.loc 5 3917 13
	lw	a4,-104(s0)
	lw	a5,-32(s0)
	add	a4,a4,a5
	.loc 5 3918 12
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 5 3918 18
	lbu	a5,5(a5)
	.loc 5 3916 50
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_ssl_read_version
	mv	a5,a0
	sh	a5,-58(s0)
	.loc 5 3920 26
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 5 3920 32
	lhu	a5,0(a5)
	.loc 5 3920 8
	lhu	a4,-58(s0)
	bleu	a4,a5,.L503
	.loc 5 3921 9
	lhu	a4,-58(s0)
	.loc 5 3921 220
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 5 3921 226
	lhu	a5,0(a5)
	.loc 5 3921 9
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC139)
	addi	a4,a4,%lo(.LC139)
	li	a3,4096
	addi	a3,a3,-175
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-100(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3925 16
	li	a5,-28672
	addi	a5,a5,-512
	j	.L499
.L503:
	.loc 5 3932 12
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 5 3932 18
	lbu	a4,5(a5)
	.loc 5 3932 8
	li	a5,1
	bne	a4,a5,.L504
	.loc 5 3934 16
	lw	a3,-112(s0)
	.loc 5 3934 34
	lw	a4,-104(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	.loc 5 3934 9
	lw	a2,-40(s0)
	mv	a1,a5
	mv	a0,a3
	call	memcpy
	j	.L505
.L504:
	.loc 5 3940 16
	lw	a4,-112(s0)
	.loc 5 3940 33
	lw	a5,-100(s0)
	lw	a5,100(a5)
	.loc 5 3940 9
	lw	a2,-40(s0)
	mv	a1,a5
	mv	a0,a4
	call	memcpy
.L505:
	.loc 5 3947 43
	lw	a4,-20(s0)
	lw	a5,-56(s0)
	add	a4,a4,a5
	.loc 5 3947 22
	lw	a5,-112(s0)
	sw	a4,20(a5)
	.loc 5 3948 142
	lw	a4,-104(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-68(s0)
.LBB94:
.LBB95:
	.loc 6 122 33
	lw	a5,-68(s0)
	sw	a5,-72(s0)
	.loc 6 123 7
	lw	a5,-72(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-74(s0)
	.loc 6 127 12
	lhu	a5,-74(s0)
.LBE95:
.LBE94:
	.loc 5 3948 89 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 3948 87 discriminator 2
	mv	a4,a5
	.loc 5 3948 19 discriminator 2
	lw	a5,-112(s0)
	sw	a4,24(a5)
	.loc 5 3949 5
	lw	a5,-112(s0)
	lw	a5,20(a5)
	mv	a6,a5
	lw	a5,-104(s0)
	lui	a4,%hi(.LC140)
	addi	a4,a4,%lo(.LC140)
	li	a3,4096
	addi	a3,a3,-147
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-100(s0)
	call	mbedtls_debug_print_buf
	.loc 5 3951 200
	lw	a5,-112(s0)
	lbu	a5,8(a5)
	.loc 5 3951 5
	mv	a3,a5
	lhu	a4,-58(s0)
	lw	a5,-112(s0)
	lw	a5,24(a5)
	mv	a7,a5
	mv	a6,a4
	mv	a5,a3
	lui	a4,%hi(.LC141)
	addi	a4,a4,%lo(.LC141)
	li	a3,4096
	addi	a3,a3,-145
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,3
	lw	a0,-100(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3955 14
	lw	a5,-112(s0)
	lw	a4,-104(s0)
	sw	a4,12(a5)
	.loc 5 3956 23
	lw	a5,-112(s0)
	lw	a4,20(a5)
	.loc 5 3956 42
	lw	a5,-112(s0)
	lw	a5,24(a5)
	.loc 5 3956 37
	add	a4,a4,a5
	.loc 5 3956 18
	lw	a5,-112(s0)
	sw	a4,16(a5)
	.loc 5 3958 12
	lw	a5,-112(s0)
	lw	a5,24(a5)
	.loc 5 3958 8
	bne	a5,zero,.L507
	.loc 5 3959 9
	lui	a5,%hi(.LC142)
	addi	a4,a5,%lo(.LC142)
	li	a5,4096
	addi	a3,a5,-137
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-100(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3960 16
	li	a5,-28672
	addi	a5,a5,-512
	j	.L499
.L507:
	.loc 5 3976 12
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 5 3976 18
	lbu	a4,5(a5)
	.loc 5 3976 8
	li	a5,1
	bne	a4,a5,.L508
	.loc 5 3978 124
	lw	a5,-112(s0)
	sw	a5,-80(s0)
.LBB96:
.LBB97:
	.loc 6 122 33
	lw	a5,-80(s0)
	sw	a5,-84(s0)
	.loc 6 123 7
	lw	a5,-84(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-86(s0)
	.loc 6 127 12
	lhu	a5,-86(s0)
.LBE97:
.LBE96:
	.loc 5 3978 77 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 3978 19 discriminator 2
	sw	a5,-64(s0)
	.loc 5 3982 22
	lw	a5,-112(s0)
	lw	a4,20(a5)
	.loc 5 3982 41
	lw	a5,-112(s0)
	lw	a5,24(a5)
	.loc 5 3982 36
	add	a5,a4,a5
	.loc 5 3982 12
	lw	a4,-108(s0)
	bgeu	a4,a5,.L510
	.loc 5 3983 246
	lw	a5,-112(s0)
	lw	a4,20(a5)
	.loc 5 3983 265
	lw	a5,-112(s0)
	lw	a5,24(a5)
	.loc 5 3983 260
	add	a5,a4,a5
	.loc 5 3983 13
	mv	a6,a5
	lw	a5,-108(s0)
	lui	a4,%hi(.LC143)
	addi	a4,a4,%lo(.LC143)
	li	a3,4096
	addi	a3,a3,-113
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-100(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3988 20
	li	a5,-28672
	addi	a5,a5,-512
	j	.L499
.L510:
	.loc 5 3995 29
	lw	a5,-100(s0)
	lhu	a5,144(a5)
	mv	a4,a5
	.loc 5 3995 12
	lw	a5,-64(s0)
	beq	a5,a4,.L511
	.loc 5 3996 199
	lw	a5,-100(s0)
	lhu	a5,144(a5)
	.loc 5 3996 13
	lw	a6,-64(s0)
	lui	a4,%hi(.LC144)
	addi	a4,a4,%lo(.LC144)
	li	a3,4096
	addi	a3,a3,-100
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-100(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4002 44
	lw	a5,-100(s0)
	lhu	a5,144(a5)
	.loc 5 4002 55
	addi	a5,a5,1
	.loc 5 4002 16
	lw	a4,-64(s0)
	bne	a4,a5,.L512
	.loc 5 4003 17
	lui	a5,%hi(.LC145)
	addi	a4,a5,%lo(.LC145)
	li	a5,4096
	addi	a3,a5,-93
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-100(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4004 24
	li	a5,-24576
	addi	a5,a5,-1152
	j	.L499
.L512:
	.loc 5 4007 20
	li	a5,-24576
	addi	a5,a5,-1792
	j	.L499
.L511:
	.loc 5 4013 18
	lw	a5,-112(s0)
	mv	a1,a5
	lw	a0,-100(s0)
	call	mbedtls_ssl_dtls_record_replay_check
	mv	a5,a0
	.loc 5 4013 17 discriminator 1
	beq	a5,zero,.L508
	.loc 5 4015 13
	lui	a5,%hi(.LC146)
	addi	a4,a5,%lo(.LC146)
	li	a5,4096
	addi	a3,a5,-81
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-100(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4016 20
	li	a5,-24576
	addi	a5,a5,-1792
	j	.L499
.L508:
	.loc 5 4022 12
	li	a5,0
.L499:
	.loc 5 4023 1
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
.LFE214:
	.size	ssl_parse_record_header, .-ssl_parse_record_header
	.section	.rodata
	.align	2
.LC147:
	.string	"possible client reconnect from the same port"
	.section	.text.ssl_check_client_reconnect,"ax",@progbits
	.align	1
	.type	ssl_check_client_reconnect, @function
ssl_check_client_reconnect:
.LFB215:
	.loc 5 4029 1
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
	.loc 5 4030 150
	lw	a5,-36(s0)
	lw	a5,100(a5)
	sw	a5,-24(s0)
.LBB98:
.LBB99:
	.loc 6 122 33
	lw	a5,-24(s0)
	sw	a5,-28(s0)
	.loc 6 123 7
	lw	a5,-28(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-30(s0)
	.loc 6 127 12
	lhu	a5,-30(s0)
.LBE99:
.LBE98:
	.loc 5 4030 89 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 4030 18 discriminator 2
	sw	a5,-20(s0)
	.loc 5 4038 8
	lw	a5,-20(s0)
	bne	a5,zero,.L515
	.loc 5 4039 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 4039 18
	lbu	a4,4(a5)
	.loc 5 4038 24 discriminator 1
	li	a5,1
	bne	a4,a5,.L515
	.loc 5 4040 9
	lw	a0,-36(s0)
	call	mbedtls_ssl_is_handshake_over
	mv	a4,a0
	.loc 5 4039 34
	li	a5,1
	bne	a4,a5,.L515
	.loc 5 4041 12
	lw	a5,-36(s0)
	lw	a4,128(a5)
	.loc 5 4040 49
	li	a5,22
	bne	a4,a5,.L515
	.loc 5 4042 12
	lw	a5,-36(s0)
	lw	a4,136(a5)
	.loc 5 4041 31
	li	a5,13
	bleu	a4,a5,.L515
	.loc 5 4043 12
	lw	a5,-36(s0)
	lw	a5,96(a5)
	.loc 5 4043 20
	addi	a5,a5,13
	lbu	a4,0(a5)
	.loc 5 4042 27
	li	a5,1
	bne	a4,a5,.L515
	.loc 5 4044 9
	lui	a5,%hi(.LC147)
	addi	a4,a5,%lo(.LC147)
	li	a5,4096
	addi	a3,a5,-52
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4046 16
	lw	a0,-36(s0)
	call	ssl_handle_possible_reconnect
	mv	a5,a0
	j	.L516
.L515:
	.loc 5 4049 12
	li	a5,0
.L516:
	.loc 5 4050 1
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
.LFE215:
	.size	ssl_check_client_reconnect, .-ssl_check_client_reconnect
	.section	.rodata
	.align	2
.LC148:
	.string	"input record from network"
	.align	2
.LC149:
	.string	"ssl_decrypt_buf"
	.align	2
.LC150:
	.string	"ignoring unexpected CID"
	.align	2
.LC151:
	.string	"record type after decrypt (before %d): %d"
	.align	2
.LC152:
	.string	"input payload after decrypt"
	.align	2
.LC153:
	.string	"unknown record type"
	.align	2
.LC154:
	.string	"invalid zero-length message type: %d"
	.align	2
.LC155:
	.string	"received four consecutive empty messages, possible DoS attack"
	.align	2
.LC156:
	.string	"incoming message counter would wrap"
	.align	2
.LC157:
	.string	"bad message length"
	.section	.text.ssl_prepare_record_content,"ax",@progbits
	.align	1
	.type	ssl_prepare_record_content, @function
ssl_prepare_record_content:
.LFB216:
	.loc 5 4059 1
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
	.loc 5 4060 14
	sw	zero,-28(s0)
	.loc 5 4062 161
	lw	a5,-40(s0)
	lw	a4,12(a5)
	.loc 5 4062 5
	lw	a5,-40(s0)
	lw	a5,16(a5)
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC148)
	addi	a4,a4,%lo(.LC148)
	li	a3,4096
	addi	a3,a3,-34
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-36(s0)
	call	mbedtls_debug_print_buf
	.loc 5 4079 8
	lw	a5,-28(s0)
	bne	a5,zero,.L518
	.loc 5 4079 21 discriminator 1
	lw	a5,-36(s0)
	lw	a5,68(a5)
	.loc 5 4079 15 discriminator 1
	beq	a5,zero,.L518
.LBB100:
	.loc 5 4080 29
	lw	a5,-40(s0)
	lbu	a5,8(a5)
	sb	a5,-29(s0)
	.loc 5 4082 20
	lw	a5,-36(s0)
	lw	a5,68(a5)
	lw	a2,-40(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_ssl_decrypt_buf
	sw	a0,-20(s0)
	.loc 5 4082 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L519
	.loc 5 4084 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC149)
	addi	a4,a4,%lo(.LC149)
	li	a3,4096
	addi	a3,a3,-12
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 4116 16
	lw	a4,-20(s0)
	li	a5,-24576
	bne	a4,a5,.L520
	.loc 5 4117 20
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 4117 26
	lbu	a5,16(a5)
	.loc 5 4116 32 discriminator 1
	bne	a5,zero,.L520
	.loc 5 4119 17
	lui	a5,%hi(.LC150)
	addi	a4,a5,%lo(.LC150)
	li	a5,4096
	addi	a3,a5,23
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4120 21
	li	a5,-24576
	addi	a5,a5,-1408
	sw	a5,-20(s0)
.L520:
	.loc 5 4128 20
	lw	a5,-20(s0)
	j	.L521
.L519:
	.loc 5 4145 32
	lw	a5,-40(s0)
	lbu	a5,8(a5)
	.loc 5 4145 12
	lbu	a4,-29(s0)
	beq	a4,a5,.L522
	.loc 5 4146 13
	lbu	a4,-29(s0)
	.loc 5 4146 199
	lw	a5,-40(s0)
	lbu	a5,8(a5)
	.loc 5 4146 13
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC151)
	addi	a4,a4,%lo(.LC151)
	li	a3,4096
	addi	a3,a3,50
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
.L522:
	.loc 5 4150 167
	lw	a5,-40(s0)
	lw	a4,12(a5)
	.loc 5 4150 178
	lw	a5,-40(s0)
	lw	a5,20(a5)
	.loc 5 4150 173
	add	a4,a4,a5
	.loc 5 4150 9
	lw	a5,-40(s0)
	lw	a5,24(a5)
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC152)
	addi	a4,a4,%lo(.LC152)
	li	a3,4096
	addi	a3,a3,54
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-36(s0)
	call	mbedtls_debug_print_buf
	.loc 5 4161 13
	lw	a5,-40(s0)
	lbu	a5,8(a5)
	mv	a0,a5
	call	ssl_check_record_type
	mv	a5,a0
	.loc 5 4161 12 discriminator 1
	beq	a5,zero,.L523
	.loc 5 4162 13
	lui	a5,%hi(.LC153)
	addi	a4,a5,%lo(.LC153)
	li	a5,4096
	addi	a3,a5,66
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4163 20
	li	a5,-28672
	addi	a5,a5,-512
	j	.L521
.L523:
	.loc 5 4167 16
	lw	a5,-40(s0)
	lw	a5,24(a5)
	.loc 5 4167 12
	bne	a5,zero,.L524
	.loc 5 4169 20
	lw	a5,-36(s0)
	lhu	a4,16(a5)
	.loc 5 4169 16
	li	a5,771
	bne	a4,a5,.L525
	.loc 5 4170 23
	lw	a5,-40(s0)
	lbu	a4,8(a5)
	.loc 5 4170 17
	li	a5,23
	beq	a4,a5,.L525
	.loc 5 4172 17
	lw	a5,-36(s0)
	lw	a5,128(a5)
	lui	a4,%hi(.LC154)
	addi	a4,a4,%lo(.LC154)
	li	a3,4096
	addi	a3,a3,76
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4173 24
	li	a5,-28672
	addi	a5,a5,-512
	j	.L521
.L525:
	.loc 5 4177 16
	lw	a5,-36(s0)
	lw	a5,172(a5)
	.loc 5 4177 25
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,172(a5)
	.loc 5 4183 20
	lw	a5,-36(s0)
	lw	a4,172(a5)
	.loc 5 4183 16
	li	a5,3
	ble	a4,a5,.L526
	.loc 5 4184 17
	lui	a5,%hi(.LC155)
	addi	a4,a5,%lo(.LC155)
	li	a5,4096
	addi	a3,a5,88
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4189 24
	li	a5,-28672
	addi	a5,a5,-384
	j	.L521
.L524:
	.loc 5 4192 26
	lw	a5,-36(s0)
	sw	zero,172(a5)
.L526:
	.loc 5 4196 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 4196 22
	lbu	a4,5(a5)
	.loc 5 4196 12
	li	a5,1
	beq	a4,a5,.L518
.LBB101:
	.loc 5 4202 20
	li	a5,8
	sw	a5,-24(s0)
	.loc 5 4202 13
	j	.L527
.L530:
	.loc 5 4204 26
	lw	a5,-36(s0)
	lw	a4,100(a5)
	.loc 5 4204 34
	lw	a5,-24(s0)
	addi	a5,a5,-1
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 5 4204 21
	addi	a4,a4,1
	andi	a4,a4,0xff
	.loc 5 4204 20
	sb	a4,0(a5)
	.loc 5 4204 34
	lbu	a5,0(a5)
	.loc 5 4204 20
	bne	a5,zero,.L533
	.loc 5 4203 48
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L527:
	.loc 5 4203 22 discriminator 1
	lw	a0,-36(s0)
	call	mbedtls_ssl_ep_len
	mv	a4,a0
	.loc 5 4203 20 discriminator 2
	lw	a5,-24(s0)
	bgtu	a5,a4,.L530
	j	.L529
.L533:
	.loc 5 4205 21
	nop
.L529:
	.loc 5 4210 22
	lw	a0,-36(s0)
	call	mbedtls_ssl_ep_len
	mv	a4,a0
	.loc 5 4210 16 discriminator 1
	lw	a5,-24(s0)
	bne	a5,a4,.L518
	.loc 5 4211 17
	lui	a5,%hi(.LC156)
	addi	a4,a5,%lo(.LC156)
	li	a5,4096
	addi	a3,a5,115
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4212 24
	li	a5,-28672
	addi	a5,a5,1152
	j	.L521
.L518:
.LBE101:
.LBE100:
	.loc 5 4251 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 4251 18
	lbu	a4,5(a5)
	.loc 5 4251 8
	li	a5,1
	bne	a4,a5,.L531
	.loc 5 4252 9
	lw	a0,-36(s0)
	call	mbedtls_ssl_dtls_replay_update
.L531:
	.loc 5 4258 12
	lw	a5,-40(s0)
	lw	a4,24(a5)
	.loc 5 4258 8
	li	a5,16384
	bleu	a4,a5,.L532
	.loc 5 4259 9
	lui	a5,%hi(.LC157)
	addi	a4,a5,%lo(.LC157)
	li	a5,4096
	addi	a3,a5,163
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4260 16
	li	a5,-28672
	addi	a5,a5,-512
	j	.L521
.L532:
	.loc 5 4263 12
	li	a5,0
.L521:
	.loc 5 4264 1
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
.LFE216:
	.size	ssl_prepare_record_content, .-ssl_prepare_record_content
	.section	.rodata
	.align	2
.LC158:
	.string	"=> read record"
	.align	2
.LC159:
	.string	"ssl_get_next_record"
	.align	2
.LC160:
	.string	"mbedtls_ssl_handle_message_type"
	.align	2
.LC161:
	.string	"mbedtls_ssl_update_handshake_status"
	.align	2
.LC162:
	.string	"reuse previously read message"
	.align	2
.LC163:
	.string	"<= read record"
	.section	.text.mbedtls_ssl_read_record,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_read_record
	.type	mbedtls_ssl_read_record, @function
mbedtls_ssl_read_record:
.LFB217:
	.loc 5 4284 1
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
	.loc 5 4285 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 4287 5
	lui	a5,%hi(.LC158)
	addi	a4,a5,%lo(.LC158)
	li	a5,4096
	addi	a3,a5,191
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4289 12
	lw	a5,-36(s0)
	lw	a5,176(a5)
	.loc 5 4289 8
	beq	a5,zero,.L535
	j	.L547
.L535:
	.loc 5 4292 19
	lw	a0,-36(s0)
	call	ssl_consume_current_message
	sw	a0,-20(s0)
	.loc 5 4293 16
	lw	a5,-20(s0)
	beq	a5,zero,.L537
	.loc 5 4294 24
	lw	a5,-20(s0)
	j	.L538
.L537:
	.loc 5 4297 17
	lw	a0,-36(s0)
	call	ssl_record_is_in_progress
	mv	a5,a0
	.loc 5 4297 16 discriminator 1
	bne	a5,zero,.L539
.LBB102:
	.loc 5 4298 21
	sw	zero,-24(s0)
	.loc 5 4303 24
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 4303 30
	lbu	a4,5(a5)
	.loc 5 4303 20
	li	a5,1
	bne	a4,a5,.L540
	.loc 5 4304 21
	lw	a0,-36(s0)
	call	ssl_next_record_is_in_datagram
	mv	a5,a0
	.loc 5 4303 47 discriminator 1
	bne	a5,zero,.L540
	.loc 5 4305 25
	lw	a0,-36(s0)
	call	ssl_load_buffered_message
	mv	a5,a0
	.loc 5 4305 24 discriminator 1
	bne	a5,zero,.L540
	.loc 5 4306 44
	li	a5,1
	sw	a5,-24(s0)
.L540:
	.loc 5 4311 20
	lw	a5,-24(s0)
	bne	a5,zero,.L539
	.loc 5 4312 27
	lw	a0,-36(s0)
	call	ssl_get_next_record
	sw	a0,-20(s0)
	.loc 5 4313 24
	lw	a4,-20(s0)
	li	a5,-24576
	addi	a5,a5,-1408
	beq	a4,a5,.L548
	.loc 5 4317 24
	lw	a5,-20(s0)
	beq	a5,zero,.L539
	.loc 5 4318 25
	lw	a5,-20(s0)
	lui	a4,%hi(.LC159)
	addi	a4,a4,%lo(.LC159)
	li	a3,4096
	addi	a3,a3,222
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 4319 32
	lw	a5,-20(s0)
	j	.L538
.L539:
.LBE102:
	.loc 5 4324 19
	lw	a0,-36(s0)
	call	mbedtls_ssl_handle_message_type
	sw	a0,-20(s0)
	.loc 5 4327 16
	lw	a4,-20(s0)
	li	a5,-24576
	addi	a5,a5,-1152
	bne	a4,a5,.L542
	.loc 5 4329 23
	lw	a0,-36(s0)
	call	ssl_buffer_message
	sw	a0,-20(s0)
	.loc 5 4330 20
	lw	a5,-20(s0)
	beq	a5,zero,.L543
	.loc 5 4331 28
	lw	a5,-20(s0)
	j	.L538
.L543:
	.loc 5 4334 21
	li	a5,-24576
	addi	a5,a5,-1408
	sw	a5,-20(s0)
	j	.L542
.L548:
.LBB103:
	.loc 5 4314 25
	nop
.L542:
.LBE103:
	.loc 5 4338 33
	lw	a4,-20(s0)
	li	a5,-24576
	addi	a5,a5,-1664
	beq	a4,a5,.L535
	.loc 5 4338 33 is_stmt 0 discriminator 1
	lw	a4,-20(s0)
	li	a5,-24576
	addi	a5,a5,-1408
	beq	a4,a5,.L535
	.loc 5 4341 12 is_stmt 1
	lw	a5,-20(s0)
	beq	a5,zero,.L545
	.loc 5 4342 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC160)
	addi	a4,a4,%lo(.LC160)
	li	a3,4096
	addi	a3,a3,246
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 4343 20
	lw	a5,-20(s0)
	j	.L538
.L545:
	.loc 5 4346 16
	lw	a5,-36(s0)
	lw	a4,128(a5)
	.loc 5 4346 12
	li	a5,22
	bne	a4,a5,.L546
	.loc 5 4346 35 discriminator 1
	lw	a4,-40(s0)
	li	a5,1
	bne	a4,a5,.L546
	.loc 5 4348 19
	lw	a0,-36(s0)
	call	mbedtls_ssl_update_handshake_status
	sw	a0,-20(s0)
	.loc 5 4349 16
	lw	a5,-20(s0)
	beq	a5,zero,.L546
	.loc 5 4350 17
	lw	a5,-20(s0)
	lui	a4,%hi(.LC161)
	addi	a4,a4,%lo(.LC161)
	li	a3,4096
	addi	a3,a3,254
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 4351 24
	lw	a5,-20(s0)
	j	.L538
.L547:
	.loc 5 4355 9
	lui	a5,%hi(.LC162)
	addi	a4,a5,%lo(.LC162)
	li	a5,4096
	addi	a3,a5,259
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4356 35
	lw	a5,-36(s0)
	sw	zero,176(a5)
.L546:
	.loc 5 4359 5
	lui	a5,%hi(.LC163)
	addi	a4,a5,%lo(.LC163)
	li	a5,4096
	addi	a3,a5,263
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4361 12
	li	a5,0
.L538:
	.loc 5 4362 1
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
.LFE217:
	.size	mbedtls_ssl_read_record, .-mbedtls_ssl_read_record
	.section	.text.ssl_next_record_is_in_datagram,"ax",@progbits
	.align	1
	.type	ssl_next_record_is_in_datagram, @function
ssl_next_record_is_in_datagram:
.LFB218:
	.loc 5 4367 1
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
	.loc 5 4368 12
	lw	a5,-20(s0)
	lw	a4,136(a5)
	.loc 5 4368 27
	lw	a5,-20(s0)
	lw	a5,148(a5)
	.loc 5 4368 8
	bleu	a4,a5,.L550
	.loc 5 4369 16
	li	a5,1
	j	.L551
.L550:
	.loc 5 4372 12
	li	a5,0
.L551:
	.loc 5 4373 1
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
.LFE218:
	.size	ssl_next_record_is_in_datagram, .-ssl_next_record_is_in_datagram
	.section	.rodata
	.align	2
.LC164:
	.string	"=> ssl_load_buffered_message"
	.align	2
.LC165:
	.string	"CCS not seen in the current flight"
	.align	2
.LC166:
	.string	"Injecting buffered CCS message"
	.align	2
.LC167:
	.string	"fully"
	.align	2
.LC168:
	.string	"partially"
	.align	2
.LC169:
	.string	"Future message with sequence number %u %s buffered."
	.align	2
.LC170:
	.string	"Next handshake message has been buffered - load"
	.align	2
.LC171:
	.string	"Buffered handshake message (incl. header)"
	.align	2
.LC172:
	.string	"Next handshake message %u not or only partially buffered"
	.align	2
.LC173:
	.string	"<= ssl_load_buffered_message"
	.section	.text.ssl_load_buffered_message,"ax",@progbits
	.align	1
	.type	ssl_load_buffered_message, @function
ssl_load_buffered_message:
.LFB219:
	.loc 5 4377 1
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
	.loc 5 4378 42
	lw	a5,-52(s0)
	lw	a5,64(a5)
	sw	a5,-28(s0)
	.loc 5 4380 9
	sw	zero,-20(s0)
	.loc 5 4382 8
	lw	a5,-28(s0)
	bne	a5,zero,.L553
	.loc 5 4383 16
	li	a5,-1
	j	.L554
.L553:
	.loc 5 4386 5
	lui	a5,%hi(.LC164)
	addi	a4,a5,%lo(.LC164)
	li	a5,4096
	addi	a3,a5,290
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4388 12
	lw	a5,-52(s0)
	lw	a4,4(a5)
	.loc 5 4388 8
	li	a5,10
	beq	a4,a5,.L555
	.loc 5 4389 12
	lw	a5,-52(s0)
	lw	a4,4(a5)
	.loc 5 4388 61 discriminator 1
	li	a5,12
	bne	a4,a5,.L556
.L555:
	.loc 5 4392 27
	lw	a5,-28(s0)
	lbu	a5,560(a5)
	.loc 5 4392 12
	bne	a5,zero,.L557
	.loc 5 4393 13
	lui	a5,%hi(.LC165)
	addi	a4,a5,%lo(.LC165)
	li	a5,4096
	addi	a3,a5,297
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4394 17
	li	a5,-1
	sw	a5,-20(s0)
	.loc 5 4395 13
	j	.L558
.L557:
	.loc 5 4398 9
	lui	a5,%hi(.LC166)
	addi	a4,a5,%lo(.LC166)
	li	a5,4096
	addi	a3,a5,302
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4399 25
	lw	a5,-52(s0)
	li	a4,20
	sw	a4,128(a5)
	.loc 5 4400 24
	lw	a5,-52(s0)
	li	a4,1
	sw	a4,132(a5)
	.loc 5 4401 12
	lw	a5,-52(s0)
	lw	a5,120(a5)
	.loc 5 4401 24
	li	a4,1
	sb	a4,0(a5)
	.loc 5 4404 22
	lw	a5,-52(s0)
	sw	zero,136(a5)
	.loc 5 4405 33
	lw	a5,-52(s0)
	sw	zero,148(a5)
	.loc 5 4407 32
	lw	a5,-28(s0)
	sb	zero,560(a5)
	.loc 5 4408 9
	j	.L558
.L556:
.LBB104:
	.loc 5 4415 21
	li	a5,1
	sw	a5,-24(s0)
	.loc 5 4415 9
	j	.L559
.L563:
	.loc 5 4416 20
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	addi	a5,a5,544
	lw	a4,-28(s0)
	add	a5,a4,a5
	addi	a5,a5,20
	sw	a5,-32(s0)
	.loc 5 4417 34
	lw	a5,-32(s0)
	lbu	a5,0(a5)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 5 4417 16
	beq	a5,zero,.L560
	.loc 5 4418 198
	lw	a5,-28(s0)
	lw	a4,636(a5)
	.loc 5 4418 17
	lw	a5,-24(s0)
	add	a4,a4,a5
	.loc 5 4418 241
	lw	a5,-32(s0)
	lbu	a5,0(a5)
	andi	a5,a5,4
	andi	a5,a5,0xff
	.loc 5 4418 17
	beq	a5,zero,.L561
	.loc 5 4418 17 is_stmt 0 discriminator 1
	lui	a5,%hi(.LC167)
	addi	a5,a5,%lo(.LC167)
	j	.L562
.L561:
	.loc 5 4418 17 discriminator 2
	lui	a5,%hi(.LC168)
	addi	a5,a5,%lo(.LC168)
.L562:
	.loc 5 4418 17 discriminator 4
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC169)
	addi	a4,a4,%lo(.LC169)
	li	a3,4096
	addi	a3,a3,322
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
.L560:
	.loc 5 4415 44 is_stmt 1 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L559:
	.loc 5 4415 33 discriminator 1
	lw	a4,-24(s0)
	li	a5,3
	bleu	a4,a5,.L563
.LBE104:
	.loc 5 4428 12
	lw	a5,-28(s0)
	addi	a5,a5,564
	sw	a5,-32(s0)
	.loc 5 4429 27
	lw	a5,-32(s0)
	lbu	a5,0(a5)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 5 4429 8
	beq	a5,zero,.L564
	.loc 5 4429 57 discriminator 1
	lw	a5,-32(s0)
	lbu	a5,0(a5)
	andi	a5,a5,4
	andi	a5,a5,0xff
	.loc 5 4429 33 discriminator 1
	beq	a5,zero,.L564
.LBB105:
	.loc 5 4431 47
	lw	a5,-32(s0)
	lw	a5,4(a5)
	.loc 5 4431 54
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 5 4431 60
	slli	a4,a5,16
	.loc 5 4431 88
	lw	a5,-32(s0)
	lw	a5,4(a5)
	.loc 5 4431 95
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 5 4431 105
	slli	a5,a5,8
	.loc 5 4431 67
	or	a5,a4,a5
	.loc 5 4431 132
	lw	a4,-32(s0)
	lw	a4,4(a4)
	.loc 5 4431 139
	addi	a4,a4,3
	lbu	a4,0(a4)
	.loc 5 4431 16
	or	a5,a5,a4
	sw	a5,-36(s0)
	.loc 5 4435 21
	lw	a5,-36(s0)
	addi	a4,a5,12
	.loc 5 4435 12
	li	a5,16384
	bleu	a4,a5,.L565
	.loc 5 4436 13
	lui	a5,%hi(.LC30)
	addi	a4,a5,%lo(.LC30)
	li	a5,4096
	addi	a3,a5,340
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4437 20
	li	a5,-28672
	addi	a5,a5,1024
	j	.L554
.L565:
	.loc 5 4440 9
	lui	a5,%hi(.LC170)
	addi	a4,a5,%lo(.LC170)
	li	a5,4096
	addi	a3,a5,344
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4441 184
	lw	a5,-32(s0)
	lw	a4,4(a5)
	.loc 5 4441 9
	lw	a5,-36(s0)
	addi	a5,a5,12
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC171)
	addi	a4,a4,%lo(.LC171)
	li	a3,4096
	addi	a3,a3,345
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_buf
	.loc 5 4444 25
	lw	a5,-52(s0)
	li	a4,22
	sw	a4,128(a5)
	.loc 5 4445 33
	lw	a5,-36(s0)
	addi	a4,a5,12
	.loc 5 4445 23
	lw	a5,-52(s0)
	sw	a4,168(a5)
	.loc 5 4446 34
	lw	a5,-36(s0)
	addi	a4,a5,12
	.loc 5 4446 24
	lw	a5,-52(s0)
	sw	a4,132(a5)
	.loc 5 4447 19
	lw	a5,-52(s0)
	lw	a4,120(a5)
	.loc 5 4447 35
	lw	a5,-32(s0)
	lw	a3,4(a5)
	.loc 5 4447 9
	lw	a5,-52(s0)
	lw	a5,168(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcpy
	.loc 5 4449 13
	sw	zero,-20(s0)
	.loc 5 4450 9
	j	.L558
.L564:
.LBE105:
	.loc 5 4452 9
	lw	a5,-28(s0)
	lw	a5,636(a5)
	lui	a4,%hi(.LC172)
	addi	a4,a4,%lo(.LC172)
	li	a3,4096
	addi	a3,a3,356
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4456 9
	li	a5,-1
	sw	a5,-20(s0)
.L558:
	.loc 5 4460 5
	lui	a5,%hi(.LC173)
	addi	a4,a5,%lo(.LC173)
	li	a5,4096
	addi	a3,a5,364
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4461 12
	lw	a5,-20(s0)
.L554:
	.loc 5 4462 1
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
.LFE219:
	.size	ssl_load_buffered_message, .-ssl_load_buffered_message
	.section	.rodata
	.align	2
.LC174:
	.string	"Attempt to free buffered messages to have %u bytes available"
	.align	2
.LC175:
	.string	"Enough space available after freeing future epoch record"
	.align	2
.LC176:
	.string	"Free buffering slot %d to make space for reassembly of next handshake message"
	.align	2
.LC177:
	.string	"Enough space available after freeing buffered HS messages"
	.section	.text.ssl_buffer_make_space,"ax",@progbits
	.align	1
	.type	ssl_buffer_make_space, @function
ssl_buffer_make_space:
.LFB220:
	.loc 5 4467 1
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
	.loc 5 4469 42
	lw	a5,-36(s0)
	lw	a5,64(a5)
	sw	a5,-24(s0)
	.loc 5 4470 5
	lw	a5,-40(s0)
	lui	a4,%hi(.LC174)
	addi	a4,a4,%lo(.LC174)
	li	a3,4096
	addi	a3,a3,374
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4474 5
	lw	a0,-36(s0)
	call	ssl_free_buffered_record
	.loc 5 4478 34
	lw	a5,-24(s0)
	lw	a5,556(a5)
	.loc 5 4477 27
	li	a4,32768
	sub	a5,a4,a5
	.loc 5 4477 8
	lw	a4,-40(s0)
	bgtu	a4,a5,.L567
	.loc 5 4479 9
	lui	a5,%hi(.LC175)
	addi	a4,a5,%lo(.LC175)
	li	a5,4096
	addi	a3,a5,383
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4480 16
	li	a5,0
	j	.L568
.L567:
	.loc 5 4486 17
	li	a5,3
	sw	a5,-20(s0)
	.loc 5 4486 5
	j	.L569
.L571:
	.loc 5 4488 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC176)
	addi	a4,a4,%lo(.LC176)
	li	a3,4096
	addi	a3,a3,392
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4493 9
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	mv	a1,a5
	lw	a0,-36(s0)
	call	ssl_buffering_free_slot
	.loc 5 4497 38
	lw	a5,-24(s0)
	lw	a5,556(a5)
	.loc 5 4496 31
	li	a4,32768
	sub	a5,a4,a5
	.loc 5 4496 12
	lw	a4,-40(s0)
	bgtu	a4,a5,.L570
	.loc 5 4498 13
	lui	a5,%hi(.LC177)
	addi	a4,a5,%lo(.LC177)
	li	a5,4096
	addi	a3,a5,402
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4499 20
	li	a5,0
	j	.L568
.L570:
	.loc 5 4487 29
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L569:
	.loc 5 4487 17 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L571
	.loc 5 4503 12
	li	a5,-1
.L568:
	.loc 5 4504 1
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
.LFE220:
	.size	ssl_buffer_make_space, .-ssl_buffer_make_space
	.section	.rodata
	.align	2
.LC178:
	.string	"=> ssl_buffer_message"
	.align	2
.LC179:
	.string	"Remember CCS message"
	.align	2
.LC180:
	.string	"Ignore future HS message with sequence number %u, buffering window %u - %u"
	.align	2
.LC181:
	.string	"Buffering HS message with sequence number %u, offset %u "
	.align	2
.LC182:
	.string	"Buffering of future message of size %zu would exceed the compile-time limit %zu (already %zu bytes buffered) -- ignore\n"
	.align	2
.LC183:
	.string	"Buffering of future message of size %zu would exceed the compile-time limit %zu (already %zu bytes buffered) -- attempt to make space by freeing buffered future messages\n"
	.align	2
.LC184:
	.string	"Reassembly of next message of size %zu (%zu with bitmap) would exceed the compile-time limit %zu (already %zu bytes buffered) -- fail\n"
	.align	2
.LC185:
	.string	"initialize reassembly, total length = %zu"
	.align	2
.LC186:
	.string	"Fragment header mismatch - ignore"
	.align	2
.LC187:
	.string	"adding fragment, offset = %zu, length = %zu"
	.align	2
.LC188:
	.string	""
	.align	2
.LC189:
	.string	"not yet "
	.align	2
.LC190:
	.string	"message %scomplete"
	.align	2
.LC191:
	.string	"<= ssl_buffer_message"
	.section	.text.ssl_buffer_message,"ax",@progbits
	.align	1
	.type	ssl_buffer_message, @function
ssl_buffer_message:
.LFB221:
	.loc 5 4508 1
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
	.loc 5 4509 9
	sw	zero,-20(s0)
	.loc 5 4510 42
	lw	a5,-84(s0)
	lw	a5,64(a5)
	sw	a5,-24(s0)
	.loc 5 4512 8
	lw	a5,-24(s0)
	bne	a5,zero,.L573
	.loc 5 4513 16
	li	a5,0
	j	.L574
.L573:
	.loc 5 4516 5
	lui	a5,%hi(.LC178)
	addi	a4,a5,%lo(.LC178)
	li	a5,4096
	addi	a3,a5,420
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4518 16
	lw	a5,-84(s0)
	lw	a5,128(a5)
	.loc 5 4518 5
	li	a4,20
	beq	a5,a4,.L575
	li	a4,22
	beq	a5,a4,.L576
	.loc 5 4696 13
	j	.L578
.L575:
	.loc 5 4520 13
	lui	a5,%hi(.LC179)
	addi	a4,a5,%lo(.LC179)
	li	a5,4096
	addi	a3,a5,424
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4522 36
	lw	a5,-24(s0)
	li	a4,1
	sb	a4,560(a5)
	.loc 5 4523 13
	j	.L578
.L576:
.LBB106:
	.loc 5 4528 147
	lw	a5,-84(s0)
	lw	a5,120(a5)
	.loc 5 4528 157
	addi	a5,a5,4
	sw	a5,-64(s0)
.LBB107:
.LBB108:
	.loc 6 122 33
	lw	a5,-64(s0)
	sw	a5,-68(s0)
	.loc 6 123 7
	lw	a5,-68(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-70(s0)
	.loc 6 127 12
	lhu	a5,-70(s0)
.LBE108:
.LBE107:
	.loc 5 4528 96 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 4528 22 discriminator 2
	sw	a5,-28(s0)
	.loc 5 4530 33
	lw	a5,-84(s0)
	lw	a5,168(a5)
	.loc 5 4530 20
	addi	a5,a5,-12
	sw	a5,-32(s0)
	.loc 5 4534 35
	lw	a5,-84(s0)
	lw	a5,64(a5)
	.loc 5 4534 46
	lw	a5,636(a5)
	.loc 5 4534 16
	lw	a4,-28(s0)
	bgeu	a4,a5,.L580
	.loc 5 4535 17
	lui	a5,%hi(.LC30)
	addi	a4,a5,%lo(.LC30)
	li	a5,4096
	addi	a3,a5,439
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4536 24
	li	a5,-28672
	addi	a5,a5,1024
	j	.L574
.L580:
	.loc 5 4539 53
	lw	a5,-84(s0)
	lw	a5,64(a5)
	.loc 5 4539 64
	lw	a5,636(a5)
	.loc 5 4539 33
	lw	a4,-28(s0)
	sub	a5,a4,a5
	sw	a5,-36(s0)
	.loc 5 4540 16
	lw	a4,-36(s0)
	li	a5,3
	bleu	a4,a5,.L581
	.loc 5 4542 239
	lw	a5,-84(s0)
	lw	a5,64(a5)
	.loc 5 4542 17
	lw	a4,636(a5)
	.loc 5 4542 267
	lw	a5,-84(s0)
	lw	a5,64(a5)
	.loc 5 4542 278
	lw	a5,636(a5)
	.loc 5 4542 17
	addi	a5,a5,3
	mv	a7,a5
	mv	a6,a4
	lw	a5,-28(s0)
	lui	a4,%hi(.LC180)
	addi	a4,a4,%lo(.LC180)
	li	a3,4096
	addi	a3,a3,446
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4549 17
	j	.L578
.L581:
	.loc 5 4552 13
	lw	a6,-36(s0)
	lw	a5,-28(s0)
	lui	a4,%hi(.LC181)
	addi	a4,a4,%lo(.LC181)
	li	a3,4096
	addi	a3,a3,456
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4555 20
	lw	a4,-36(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	addi	a5,a5,544
	lw	a4,-24(s0)
	add	a5,a4,a5
	addi	a5,a5,20
	sw	a5,-40(s0)
	.loc 5 4558 17
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 5 4558 16
	bne	a5,zero,.L582
.LBB109:
	.loc 5 4562 22
	lw	a0,-84(s0)
	call	ssl_hs_is_proper_fragment
	mv	a5,a0
	.loc 5 4562 53 discriminator 1
	addi	a5,a5,-1
	seqz	a5,a5
	andi	a4,a5,0xff
	.loc 5 4561 39
	lw	a5,-40(s0)
	andi	a4,a4,1
	slli	a4,a4,1
	lbu	a3,0(a5)
	andi	a3,a3,-3
	or	a4,a3,a4
	sb	a4,0(a5)
	.loc 5 4569 29
	lw	a5,-32(s0)
	addi	a4,a5,12
	.loc 5 4569 20
	li	a5,16384
	bgtu	a4,a5,.L594
	.loc 5 4575 34
	lw	a5,-24(s0)
	lw	a4,556(a5)
	.loc 5 4575 20
	li	a5,32768
	bleu	a4,a5,.L584
	.loc 5 4577 21
	lui	a5,%hi(.LC30)
	addi	a4,a5,%lo(.LC30)
	li	a5,4096
	addi	a3,a5,481
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4578 28
	li	a5,-28672
	addi	a5,a5,1024
	j	.L574
.L584:
	.loc 5 4582 74
	lw	a5,-40(s0)
	lw	a5,0(a5)
	srli	a5,a5,1
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 5 4581 37
	mv	a1,a5
	lw	a0,-32(s0)
	call	ssl_get_reassembly_buffer_size
	sw	a0,-44(s0)
	.loc 5 4585 55
	lw	a5,-24(s0)
	lw	a5,556(a5)
	.loc 5 4584 48
	li	a4,32768
	sub	a5,a4,a5
	.loc 5 4584 20
	lw	a4,-44(s0)
	bleu	a4,a5,.L585
	.loc 5 4586 24
	lw	a5,-36(s0)
	beq	a5,zero,.L586
	.loc 5 4589 25
	lw	a5,-24(s0)
	lw	a5,556(a5)
	mv	a7,a5
	li	a6,32768
	lw	a5,-32(s0)
	lui	a4,%hi(.LC182)
	addi	a4,a4,%lo(.LC182)
	li	a3,4096
	addi	a3,a3,493
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4598 25
	j	.L578
.L586:
	.loc 5 4600 25
	lw	a5,-24(s0)
	lw	a5,556(a5)
	mv	a7,a5
	li	a6,32768
	lw	a5,-32(s0)
	lui	a4,%hi(.LC183)
	addi	a4,a4,%lo(.LC183)
	li	a3,4096
	addi	a3,a3,504
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4611 25
	lw	a1,-44(s0)
	lw	a0,-84(s0)
	call	ssl_buffer_make_space
	mv	a5,a0
	.loc 5 4611 24 discriminator 1
	beq	a5,zero,.L585
	.loc 5 4612 25
	lw	a5,-24(s0)
	lw	a5,556(a5)
	sw	a5,0(sp)
	li	a7,32768
	lw	a6,-44(s0)
	lw	a5,-32(s0)
	lui	a4,%hi(.LC184)
	addi	a4,a4,%lo(.LC184)
	li	a3,4096
	addi	a3,a3,516
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4625 29
	li	a5,-28672
	addi	a5,a5,1536
	sw	a5,-20(s0)
	.loc 5 4626 25
	j	.L578
.L585:
	.loc 5 4630 17
	lw	a5,-32(s0)
	lui	a4,%hi(.LC185)
	addi	a4,a4,%lo(.LC185)
	li	a3,4096
	addi	a3,a3,534
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4635 32
	lw	a1,-44(s0)
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 5 4635 30 discriminator 1
	lw	a5,-40(s0)
	sw	a4,4(a5)
	.loc 5 4636 27
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 5 4636 20
	bne	a5,zero,.L587
	.loc 5 4637 25
	li	a5,-32768
	addi	a5,a5,256
	sw	a5,-20(s0)
	.loc 5 4638 21
	j	.L578
.L587:
	.loc 5 4640 34
	lw	a5,-40(s0)
	lw	a4,-44(s0)
	sw	a4,8(a5)
	.loc 5 4644 30
	lw	a5,-40(s0)
	lw	a4,4(a5)
	.loc 5 4644 41
	lw	a5,-84(s0)
	lw	a5,120(a5)
	.loc 5 4644 17
	li	a2,6
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 5 4645 30
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 5 4645 37
	addi	a5,a5,6
	.loc 5 4645 17
	li	a2,3
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 5 4646 30
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 5 4646 37
	addi	a4,a5,9
	.loc 5 4646 48
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 5 4646 55
	addi	a5,a5,1
	.loc 5 4646 17
	li	a2,3
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 5 4648 34
	lw	a5,-40(s0)
	lbu	a4,0(a5)
	ori	a4,a4,1
	sb	a4,0(a5)
	.loc 5 4650 30
	lw	a5,-24(s0)
	lw	a4,556(a5)
	.loc 5 4650 52
	lw	a5,-44(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	sw	a4,556(a5)
.LBE109:
	j	.L588
.L582:
	.loc 5 4653 34
	lw	a5,-40(s0)
	lw	a4,4(a5)
	.loc 5 4653 45
	lw	a5,-84(s0)
	lw	a5,120(a5)
	.loc 5 4653 21
	li	a2,4
	mv	a1,a5
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 5 4653 20 discriminator 1
	beq	a5,zero,.L588
	.loc 5 4654 21
	lui	a5,%hi(.LC186)
	addi	a4,a5,%lo(.LC186)
	li	a5,4096
	addi	a3,a5,558
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4656 21
	j	.L578
.L588:
	.loc 5 4660 17
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	andi	a5,a5,4
	andi	a5,a5,0xff
	.loc 5 4660 16
	bne	a5,zero,.L595
.LBB110:
	.loc 5 4662 51
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 5 4662 39
	addi	a5,a5,12
	sw	a5,-48(s0)
	.loc 5 4670 28
	lw	a0,-84(s0)
	call	ssl_get_hs_frag_off
	sw	a0,-52(s0)
	.loc 5 4671 28
	lw	a0,-84(s0)
	call	ssl_get_hs_frag_len
	sw	a0,-56(s0)
	.loc 5 4673 17
	lw	a6,-56(s0)
	lw	a5,-52(s0)
	lui	a4,%hi(.LC187)
	addi	a4,a4,%lo(.LC187)
	li	a3,4096
	addi	a3,a3,577
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4676 17
	lw	a4,-48(s0)
	lw	a5,-52(s0)
	add	a4,a4,a5
	.loc 5 4676 43
	lw	a5,-84(s0)
	lw	a5,120(a5)
	.loc 5 4676 52
	addi	a5,a5,12
	.loc 5 4676 17
	lw	a2,-56(s0)
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 5 4678 21
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	andi	a5,a5,2
	andi	a5,a5,0xff
	.loc 5 4678 20
	beq	a5,zero,.L590
.LBB111:
	.loc 5 4679 43
	lw	a4,-48(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	sw	a5,-60(s0)
	.loc 5 4680 21
	lw	a2,-56(s0)
	lw	a1,-52(s0)
	lw	a0,-60(s0)
	call	ssl_bitmask_set
	.loc 5 4681 44
	lw	a1,-32(s0)
	lw	a0,-60(s0)
	call	ssl_bitmask_check
	mv	a5,a0
	.loc 5 4682 71
	seqz	a5,a5
	andi	a4,a5,0xff
	.loc 5 4681 41
	lw	a5,-40(s0)
	andi	a4,a4,1
	slli	a4,a4,2
	lbu	a3,0(a5)
	andi	a3,a3,-5
	or	a4,a3,a4
	sb	a4,0(a5)
.LBE111:
	j	.L591
.L590:
	.loc 5 4684 41
	lw	a5,-40(s0)
	lbu	a4,0(a5)
	ori	a4,a4,4
	sb	a4,0(a5)
.L591:
	.loc 5 4687 183
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	andi	a5,a5,4
	andi	a5,a5,0xff
	.loc 5 4687 17
	beq	a5,zero,.L592
	.loc 5 4687 17 is_stmt 0 discriminator 1
	lui	a5,%hi(.LC188)
	addi	a5,a5,%lo(.LC188)
	j	.L593
.L592:
	.loc 5 4687 17 discriminator 2
	lui	a5,%hi(.LC189)
	addi	a5,a5,%lo(.LC189)
.L593:
	.loc 5 4687 17 discriminator 4
	lui	a4,%hi(.LC190)
	addi	a4,a4,%lo(.LC190)
	li	a3,4096
	addi	a3,a3,591
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
.LBE110:
	.loc 5 4691 13 is_stmt 1
	j	.L595
.L594:
.LBB112:
	.loc 5 4571 21
	nop
	j	.L578
.L595:
.LBE112:
	.loc 5 4691 13
	nop
.L578:
.LBE106:
	.loc 5 4701 5
	lui	a5,%hi(.LC191)
	addi	a4,a5,%lo(.LC191)
	li	a5,4096
	addi	a3,a5,605
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4702 12
	lw	a5,-20(s0)
.L574:
	.loc 5 4703 1
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
.LFE221:
	.size	ssl_buffer_message, .-ssl_buffer_message
	.section	.rodata
	.align	2
.LC192:
	.string	"Consume: waiting for more handshake fragments %u/%zu"
	.align	2
.LC193:
	.string	"remaining content in record"
	.section	.text.ssl_consume_current_message,"ax",@progbits
	.align	1
	.type	ssl_consume_current_message, @function
ssl_consume_current_message:
.LFB222:
	.loc 5 4708 1
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
	.loc 5 4732 12
	lw	a5,-36(s0)
	lw	a5,168(a5)
	.loc 5 4732 8
	beq	a5,zero,.L597
	.loc 5 4736 16
	lw	a5,-36(s0)
	lw	a5,124(a5)
	.loc 5 4736 12
	beq	a5,zero,.L598
	.loc 5 4737 13
	lui	a5,%hi(.LC30)
	addi	a4,a5,%lo(.LC30)
	li	a5,4096
	addi	a3,a5,641
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4738 20
	li	a5,-28672
	addi	a5,a5,1024
	j	.L599
.L598:
	.loc 5 4741 16
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 5 4741 12
	beq	a5,zero,.L600
	.loc 5 4743 13
	lw	a5,-36(s0)
	lw	a4,20(a5)
	lw	a5,-36(s0)
	lw	a5,168(a5)
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC192)
	addi	a4,a4,%lo(.LC192)
	li	a3,4096
	addi	a3,a3,647
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4746 20
	li	a5,0
	j	.L599
.L600:
	.loc 5 4770 16
	lw	a5,-36(s0)
	lw	a4,168(a5)
	.loc 5 4770 32
	lw	a5,-36(s0)
	lw	a5,132(a5)
	.loc 5 4770 12
	bgeu	a4,a5,.L601
	.loc 5 4771 16
	lw	a5,-36(s0)
	lw	a4,132(a5)
	.loc 5 4771 34
	lw	a5,-36(s0)
	lw	a5,168(a5)
	.loc 5 4771 28
	sub	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,132(a5)
	.loc 5 4772 24
	lw	a5,-36(s0)
	lw	a3,120(a5)
	.loc 5 4772 37
	lw	a5,-36(s0)
	lw	a4,120(a5)
	.loc 5 4772 51
	lw	a5,-36(s0)
	lw	a5,168(a5)
	.loc 5 4772 46
	add	a4,a4,a5
	.loc 5 4772 13
	lw	a5,-36(s0)
	lw	a5,132(a5)
	mv	a2,a5
	mv	a1,a4
	mv	a0,a3
	call	memmove
	.loc 5 4774 156 discriminator 2
	lw	a5,-36(s0)
	lw	a4,112(a5)
	.loc 5 4774 196 discriminator 2
	lw	a5,-36(s0)
	lw	a5,132(a5)
	.loc 5 4774 163 discriminator 2
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a3,a5,8
	srli	a5,a5,8
	or	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a4,-20(s0)
	sh	a5,-22(s0)
.LBB113:
.LBB114:
	.loc 6 148 33
	lw	a5,-20(s0)
	sw	a5,-28(s0)
	.loc 6 149 12
	lw	a5,-28(s0)
	lhu	a4,-22(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-22(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 6 153 1
	nop
.LBE114:
.LBE113:
	.loc 5 4776 171
	lw	a5,-36(s0)
	lw	a4,120(a5)
	.loc 5 4776 13
	lw	a5,-36(s0)
	lw	a5,132(a5)
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC193)
	addi	a4,a4,%lo(.LC193)
	li	a3,4096
	addi	a3,a3,680
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,4
	lw	a0,-36(s0)
	call	mbedtls_debug_print_buf
	j	.L602
.L601:
	.loc 5 4779 28
	lw	a5,-36(s0)
	sw	zero,132(a5)
.L602:
	.loc 5 4782 23
	lw	a5,-36(s0)
	sw	zero,168(a5)
	j	.L603
.L597:
	.loc 5 4785 17
	lw	a5,-36(s0)
	lw	a5,124(a5)
	.loc 5 4785 13
	beq	a5,zero,.L604
	.loc 5 4786 16
	li	a5,0
	j	.L599
.L604:
	.loc 5 4790 24
	lw	a5,-36(s0)
	sw	zero,132(a5)
.L603:
	.loc 5 4793 12
	li	a5,0
.L599:
	.loc 5 4794 1
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
.LFE222:
	.size	ssl_consume_current_message, .-ssl_consume_current_message
	.section	.text.ssl_record_is_in_progress,"ax",@progbits
	.align	1
	.type	ssl_record_is_in_progress, @function
ssl_record_is_in_progress:
.LFB223:
	.loc 5 4798 1
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
	.loc 5 4799 12
	lw	a5,-20(s0)
	lw	a5,132(a5)
	.loc 5 4799 8
	beq	a5,zero,.L606
	.loc 5 4800 16
	li	a5,1
	j	.L607
.L606:
	.loc 5 4803 12
	li	a5,0
.L607:
	.loc 5 4804 1
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
.LFE223:
	.size	ssl_record_is_in_progress, .-ssl_record_is_in_progress
	.section	.text.ssl_free_buffered_record,"ax",@progbits
	.align	1
	.type	ssl_free_buffered_record, @function
ssl_free_buffered_record:
.LFB224:
	.loc 5 4809 1
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
	.loc 5 4810 42
	lw	a5,-36(s0)
	lw	a5,64(a5)
	sw	a5,-20(s0)
	.loc 5 4811 8
	lw	a5,-20(s0)
	beq	a5,zero,.L611
	.loc 5 4815 36
	lw	a5,-20(s0)
	lw	a5,612(a5)
	.loc 5 4815 8
	beq	a5,zero,.L608
	.loc 5 4816 22
	lw	a5,-20(s0)
	lw	a4,556(a5)
	.loc 5 4817 40
	lw	a5,-20(s0)
	lw	a5,616(a5)
	.loc 5 4816 44
	sub	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,556(a5)
	.loc 5 4819 41
	lw	a5,-20(s0)
	lw	a5,612(a5)
	.loc 5 4819 9
	mv	a0,a5
	call	free
	.loc 5 4820 42
	lw	a5,-20(s0)
	sw	zero,612(a5)
	j	.L608
.L611:
	.loc 5 4812 9
	nop
.L608:
	.loc 5 4822 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE224:
	.size	ssl_free_buffered_record, .-ssl_free_buffered_record
	.section	.rodata
	.align	2
.LC194:
	.string	"=> ssl_load_buffered_record"
	.align	2
.LC195:
	.string	"Buffered record not from current epoch."
	.align	2
.LC196:
	.string	"Found buffered record from current epoch - load"
	.align	2
.LC197:
	.string	"<= ssl_load_buffered_record"
	.section	.text.ssl_load_buffered_record,"ax",@progbits
	.align	1
	.type	ssl_load_buffered_record, @function
ssl_load_buffered_record:
.LFB225:
	.loc 5 4826 1
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
	.loc 5 4827 42
	lw	a5,-52(s0)
	lw	a5,64(a5)
	sw	a5,-20(s0)
	.loc 5 4832 12
	lw	a5,-52(s0)
	lw	a5,140(a5)
	sw	a5,-24(s0)
	.loc 5 4836 12
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 5 4836 18
	lbu	a4,5(a5)
	.loc 5 4836 8
	li	a5,1
	beq	a4,a5,.L613
	.loc 5 4837 16
	li	a5,0
	j	.L614
.L613:
	.loc 5 4840 8
	lw	a5,-20(s0)
	bne	a5,zero,.L615
	.loc 5 4841 16
	li	a5,0
	j	.L614
.L615:
	.loc 5 4844 9
	lw	a5,-20(s0)
	lw	a5,612(a5)
	sw	a5,-28(s0)
	.loc 5 4845 13
	lw	a5,-20(s0)
	lw	a5,616(a5)
	sw	a5,-32(s0)
	.loc 5 4846 15
	lw	a5,-20(s0)
	lw	a5,620(a5)
	sw	a5,-36(s0)
	.loc 5 4848 8
	lw	a5,-28(s0)
	bne	a5,zero,.L616
	.loc 5 4849 16
	li	a5,0
	j	.L614
.L616:
	.loc 5 4854 9
	lw	a0,-52(s0)
	call	ssl_next_record_is_in_datagram
	mv	a4,a0
	.loc 5 4854 8 discriminator 1
	li	a5,1
	bne	a4,a5,.L617
	.loc 5 4855 16
	li	a5,0
	j	.L614
.L617:
	.loc 5 4858 5
	lui	a5,%hi(.LC194)
	addi	a4,a5,%lo(.LC194)
	li	a5,4096
	addi	a3,a5,762
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4860 25
	lw	a5,-52(s0)
	lhu	a5,144(a5)
	mv	a4,a5
	.loc 5 4860 8
	lw	a5,-36(s0)
	beq	a5,a4,.L618
	.loc 5 4861 9
	lui	a5,%hi(.LC195)
	addi	a4,a5,%lo(.LC195)
	li	a5,4096
	addi	a3,a5,765
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4862 9
	j	.L619
.L618:
	.loc 5 4865 5
	lui	a5,%hi(.LC196)
	addi	a4,a5,%lo(.LC196)
	li	a5,4096
	addi	a3,a5,769
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4868 45
	lw	a5,-52(s0)
	lw	a4,104(a5)
	.loc 5 4868 59
	lw	a5,-52(s0)
	lw	a5,96(a5)
	.loc 5 4868 54
	sub	a5,a4,a5
	.loc 5 4868 32
	mv	a4,a5
	.loc 5 4868 30
	lw	a5,-24(s0)
	sub	a5,a5,a4
	.loc 5 4868 8
	lw	a4,-32(s0)
	bleu	a4,a5,.L620
	.loc 5 4869 9
	lui	a5,%hi(.LC30)
	addi	a4,a5,%lo(.LC30)
	li	a5,4096
	addi	a3,a5,773
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4870 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L614
.L620:
	.loc 5 4873 15
	lw	a5,-52(s0)
	lw	a5,104(a5)
	.loc 5 4873 5
	lw	a2,-32(s0)
	lw	a1,-28(s0)
	mv	a0,a5
	call	memcpy
	.loc 5 4874 18
	lw	a5,-52(s0)
	lw	a4,-32(s0)
	sw	a4,136(a5)
	.loc 5 4875 29
	lw	a5,-52(s0)
	sw	zero,148(a5)
	.loc 5 4877 5
	lw	a0,-52(s0)
	call	ssl_free_buffered_record
.L619:
	.loc 5 4880 5
	lui	a5,%hi(.LC197)
	addi	a4,a5,%lo(.LC197)
	li	a5,4096
	addi	a3,a5,784
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4881 12
	li	a5,0
.L614:
	.loc 5 4882 1
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
.LFE225:
	.size	ssl_load_buffered_record, .-ssl_load_buffered_record
	.section	.rodata
	.align	2
.LC198:
	.string	"Buffering of future epoch record of size %zu would exceed the compile-time limit %zu (already %zu bytes buffered) -- ignore\n"
	.align	2
.LC199:
	.string	"Buffer record from epoch %u"
	.align	2
.LC200:
	.string	"Buffered record"
	.section	.text.ssl_buffer_future_record,"ax",@progbits
	.align	1
	.type	ssl_buffer_future_record, @function
ssl_buffer_future_record:
.LFB226:
	.loc 5 4887 1
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
	.loc 5 4888 42
	lw	a5,-36(s0)
	lw	a5,64(a5)
	sw	a5,-20(s0)
	.loc 5 4891 8
	lw	a5,-20(s0)
	bne	a5,zero,.L622
	.loc 5 4892 16
	li	a5,0
	j	.L623
.L622:
	.loc 5 4897 12
	lw	a5,-40(s0)
	lbu	a4,8(a5)
	.loc 5 4897 8
	li	a5,22
	beq	a4,a5,.L624
	.loc 5 4898 16
	li	a5,0
	j	.L623
.L624:
	.loc 5 4902 36
	lw	a5,-20(s0)
	lw	a5,612(a5)
	.loc 5 4902 8
	beq	a5,zero,.L625
	.loc 5 4903 16
	li	a5,0
	j	.L623
.L625:
	.loc 5 4907 12
	lw	a5,-40(s0)
	lw	a4,16(a5)
	.loc 5 4908 38
	lw	a5,-20(s0)
	lw	a5,556(a5)
	.loc 5 4907 31
	li	a3,32768
	sub	a5,a3,a5
	.loc 5 4907 8
	bleu	a4,a5,.L626
	.loc 5 4909 283
	lw	a5,-40(s0)
	lw	a4,16(a5)
	.loc 5 4909 9
	lw	a5,-20(s0)
	lw	a5,556(a5)
	mv	a7,a5
	li	a6,32768
	mv	a5,a4
	lui	a4,%hi(.LC198)
	addi	a4,a4,%lo(.LC198)
	li	a3,4096
	addi	a3,a3,813
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4915 16
	li	a5,0
	j	.L623
.L626:
	.loc 5 4919 163
	lw	a5,-36(s0)
	lhu	a5,144(a5)
	.loc 5 4919 5
	addi	a5,a5,1
	lui	a4,%hi(.LC199)
	addi	a4,a4,%lo(.LC199)
	li	a3,4096
	addi	a3,a3,823
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4921 151
	lw	a5,-40(s0)
	lw	a4,12(a5)
	.loc 5 4921 161
	lw	a5,-40(s0)
	lw	a5,16(a5)
	.loc 5 4921 5
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC200)
	addi	a4,a4,%lo(.LC200)
	li	a3,4096
	addi	a3,a3,825
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_buf
	.loc 5 4925 44
	lw	a5,-36(s0)
	lhu	a5,144(a5)
	.loc 5 4925 55
	addi	a5,a5,1
	mv	a4,a5
	.loc 5 4925 39
	lw	a5,-20(s0)
	sw	a4,620(a5)
	.loc 5 4926 42
	lw	a5,-40(s0)
	lw	a4,16(a5)
	.loc 5 4926 37
	lw	a5,-20(s0)
	sw	a4,616(a5)
	.loc 5 4929 9
	lw	a5,-20(s0)
	lw	a5,616(a5)
	mv	a1,a5
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 5 4928 38
	lw	a5,-20(s0)
	sw	a4,612(a5)
	.loc 5 4930 36
	lw	a5,-20(s0)
	lw	a5,612(a5)
	.loc 5 4930 8
	bne	a5,zero,.L627
	.loc 5 4933 16
	li	a5,0
	j	.L623
.L627:
	.loc 5 4936 39
	lw	a5,-20(s0)
	lw	a4,612(a5)
	.loc 5 4936 49
	lw	a5,-40(s0)
	lw	a3,12(a5)
	.loc 5 4936 59
	lw	a5,-40(s0)
	lw	a5,16(a5)
	.loc 5 4936 5
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcpy
	.loc 5 4938 18
	lw	a5,-20(s0)
	lw	a4,556(a5)
	.loc 5 4938 46
	lw	a5,-40(s0)
	lw	a5,16(a5)
	.loc 5 4938 40
	add	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,556(a5)
	.loc 5 4939 12
	li	a5,0
.L623:
	.loc 5 4940 1
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
.LFE226:
	.size	ssl_buffer_future_record, .-ssl_buffer_future_record
	.section	.rodata
	.align	2
.LC201:
	.string	"mbedtls_ssl_fetch_input"
	.align	2
.LC202:
	.string	"ssl_check_client_reconnect"
	.align	2
.LC203:
	.string	"discarding unexpected record (header)"
	.align	2
.LC204:
	.string	"discarding invalid record (header)"
	.align	2
.LC205:
	.string	"more than one record within datagram"
	.align	2
.LC206:
	.string	"too many records with bad MAC"
	.align	2
.LC207:
	.string	"discarding invalid record (mac)"
	.section	.text.ssl_get_next_record,"ax",@progbits
	.align	1
	.type	ssl_get_next_record, @function
ssl_get_next_record:
.LFB227:
	.loc 5 4946 1
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
	.loc 5 4947 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 4957 11
	lw	a0,-100(s0)
	call	ssl_load_buffered_record
	sw	a0,-20(s0)
	.loc 5 4958 8
	lw	a5,-20(s0)
	beq	a5,zero,.L629
	.loc 5 4959 16
	lw	a5,-20(s0)
	j	.L650
.L629:
	.loc 5 4966 40
	lw	a0,-100(s0)
	call	mbedtls_ssl_in_hdr_len
	mv	a5,a0
	.loc 5 4966 11 discriminator 1
	mv	a1,a5
	lw	a0,-100(s0)
	call	mbedtls_ssl_fetch_input
	sw	a0,-20(s0)
	.loc 5 4967 8
	lw	a5,-20(s0)
	beq	a5,zero,.L631
	.loc 5 4968 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC201)
	addi	a4,a4,%lo(.LC201)
	li	a3,4096
	addi	a3,a3,872
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-100(s0)
	call	mbedtls_debug_print_ret
	.loc 5 4969 16
	lw	a5,-20(s0)
	j	.L650
.L631:
	.loc 5 4972 11
	lw	a5,-100(s0)
	lw	a4,104(a5)
	lw	a5,-100(s0)
	lw	a5,136(a5)
	addi	a3,s0,-96
	mv	a2,a5
	mv	a1,a4
	lw	a0,-100(s0)
	call	ssl_parse_record_header
	sw	a0,-20(s0)
	.loc 5 4973 8
	lw	a5,-20(s0)
	beq	a5,zero,.L632
	.loc 5 4975 16
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 5 4975 22
	lbu	a4,5(a5)
	.loc 5 4975 12
	li	a5,1
	bne	a4,a5,.L633
	.loc 5 4976 16
	lw	a4,-20(s0)
	li	a5,-24576
	addi	a5,a5,-1152
	bne	a4,a5,.L634
	.loc 5 4977 23
	addi	a5,s0,-96
	mv	a1,a5
	lw	a0,-100(s0)
	call	ssl_buffer_future_record
	sw	a0,-20(s0)
	.loc 5 4978 20
	lw	a5,-20(s0)
	beq	a5,zero,.L635
	.loc 5 4979 28
	lw	a5,-20(s0)
	j	.L650
.L635:
	.loc 5 4983 21
	li	a5,-24576
	addi	a5,a5,-1792
	sw	a5,-20(s0)
.L634:
	.loc 5 4986 16
	lw	a4,-20(s0)
	li	a5,-24576
	addi	a5,a5,-1792
	bne	a4,a5,.L636
	.loc 5 4991 17
	lw	a0,-100(s0)
	call	mbedtls_ssl_update_in_pointers
	.loc 5 4994 38
	lbu	a5,-88(s0)
	mv	a4,a5
	.loc 5 4994 33
	lw	a5,-100(s0)
	sw	a4,128(a5)
	.loc 5 4996 34
	lw	a5,-100(s0)
	lw	a5,108(a5)
	.loc 5 4996 48
	lbu	a4,-68(s0)
	.loc 5 4996 43
	add	a4,a5,a4
	.loc 5 4996 29
	lw	a5,-100(s0)
	sw	a4,112(a5)
	.loc 5 4998 47
	lw	a5,-100(s0)
	lw	a5,112(a5)
	.loc 5 4998 56
	addi	a4,a5,2
	.loc 5 4998 42
	lw	a5,-100(s0)
	sw	a4,120(a5)
	.loc 5 4998 33
	lw	a5,-100(s0)
	lw	a4,120(a5)
	.loc 5 4998 28
	lw	a5,-100(s0)
	sw	a4,116(a5)
	.loc 5 4999 37
	lw	a4,-72(s0)
	.loc 5 4999 32
	lw	a5,-100(s0)
	sw	a4,132(a5)
	.loc 5 5001 23
	lw	a0,-100(s0)
	call	ssl_check_client_reconnect
	sw	a0,-20(s0)
	.loc 5 5002 17
	lw	a5,-20(s0)
	lui	a4,%hi(.LC202)
	addi	a4,a4,%lo(.LC202)
	li	a3,4096
	addi	a3,a3,906
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-100(s0)
	call	mbedtls_debug_print_ret
	.loc 5 5003 20
	lw	a5,-20(s0)
	beq	a5,zero,.L637
	.loc 5 5004 28
	lw	a5,-20(s0)
	j	.L650
.L637:
	.loc 5 5009 46
	lw	a4,-80(s0)
	.loc 5 5009 41
	lw	a5,-100(s0)
	sw	a4,148(a5)
	.loc 5 5011 17
	lui	a5,%hi(.LC203)
	addi	a4,a5,%lo(.LC203)
	li	a5,4096
	addi	a3,a5,915
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-100(s0)
	call	mbedtls_debug_print_msg
	j	.L638
.L636:
	.loc 5 5015 41
	lw	a5,-100(s0)
	sw	zero,148(a5)
	.loc 5 5016 30
	lw	a5,-100(s0)
	sw	zero,136(a5)
	.loc 5 5018 17
	lui	a5,%hi(.LC204)
	addi	a4,a5,%lo(.LC204)
	li	a5,4096
	addi	a3,a5,922
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-100(s0)
	call	mbedtls_debug_print_msg
.L638:
	.loc 5 5023 20
	li	a5,-24576
	addi	a5,a5,-1408
	j	.L650
.L633:
	.loc 5 5027 20
	lw	a5,-20(s0)
	j	.L650
.L632:
	.loc 5 5032 12
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 5 5032 18
	lbu	a4,5(a5)
	.loc 5 5032 8
	li	a5,1
	bne	a4,a5,.L639
	.loc 5 5034 38
	lw	a4,-80(s0)
	.loc 5 5034 33
	lw	a5,-100(s0)
	sw	a4,148(a5)
	.loc 5 5035 16
	lw	a5,-100(s0)
	lw	a4,148(a5)
	.loc 5 5035 42
	lw	a5,-100(s0)
	lw	a5,136(a5)
	.loc 5 5035 12
	bgeu	a4,a5,.L640
	.loc 5 5036 13
	lui	a5,%hi(.LC205)
	addi	a4,a5,%lo(.LC205)
	li	a5,4096
	addi	a3,a5,940
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,3
	lw	a0,-100(s0)
	call	mbedtls_debug_print_msg
	j	.L640
.L639:
	.loc 5 5044 47
	lw	a5,-80(s0)
	.loc 5 5044 15
	mv	a1,a5
	lw	a0,-100(s0)
	call	mbedtls_ssl_fetch_input
	sw	a0,-20(s0)
	.loc 5 5045 12
	lw	a5,-20(s0)
	beq	a5,zero,.L641
	.loc 5 5046 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC201)
	addi	a4,a4,%lo(.LC201)
	li	a3,4096
	addi	a3,a3,950
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-100(s0)
	call	mbedtls_debug_print_ret
	.loc 5 5047 20
	lw	a5,-20(s0)
	j	.L650
.L641:
	.loc 5 5050 22
	lw	a5,-100(s0)
	sw	zero,136(a5)
.L640:
	.loc 5 5057 16
	addi	a5,s0,-96
	mv	a1,a5
	lw	a0,-100(s0)
	call	ssl_prepare_record_content
	sw	a0,-20(s0)
	.loc 5 5057 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L642
	.loc 5 5059 16
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 5 5059 22
	lbu	a4,5(a5)
	.loc 5 5059 12
	li	a5,1
	bne	a4,a5,.L643
	.loc 5 5061 16
	lw	a4,-20(s0)
	li	a5,-28672
	addi	a5,a5,-384
	bne	a4,a5,.L644
	.loc 5 5065 24
	lw	a5,-100(s0)
	lw	a4,4(a5)
	.loc 5 5065 20
	li	a5,11
	beq	a4,a5,.L645
	.loc 5 5066 24
	lw	a5,-100(s0)
	lw	a4,4(a5)
	.loc 5 5065 63 discriminator 1
	li	a5,13
	bne	a4,a5,.L646
.L645:
	.loc 5 5068 24
	lw	a4,-20(s0)
	li	a5,-28672
	addi	a5,a5,-384
	bne	a4,a5,.L647
	.loc 5 5069 25
	li	a2,20
	li	a1,2
	lw	a0,-100(s0)
	call	mbedtls_ssl_send_alert_message
.L647:
	.loc 5 5074 28
	lw	a5,-20(s0)
	j	.L650
.L646:
	.loc 5 5077 24
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 5 5077 30
	lw	a5,224(a5)
	.loc 5 5077 20
	beq	a5,zero,.L648
	.loc 5 5078 26
	lw	a5,-100(s0)
	lw	a5,20(a5)
	.loc 5 5078 21
	addi	a4,a5,1
	lw	a5,-100(s0)
	sw	a4,20(a5)
	.loc 5 5079 28
	lw	a5,-100(s0)
	lw	a4,20(a5)
	.loc 5 5079 64
	lw	a5,-100(s0)
	lw	a5,0(a5)
	.loc 5 5079 70
	lw	a5,224(a5)
	.loc 5 5079 24
	bltu	a4,a5,.L648
	.loc 5 5080 25
	lui	a5,%hi(.LC206)
	addi	a4,a5,%lo(.LC206)
	li	a5,4096
	addi	a3,a5,984
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-100(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5081 32
	li	a5,-28672
	addi	a5,a5,-384
	j	.L650
.L648:
	.loc 5 5088 41
	lw	a5,-100(s0)
	sw	zero,148(a5)
	.loc 5 5089 30
	lw	a5,-100(s0)
	sw	zero,136(a5)
	.loc 5 5091 17
	lui	a5,%hi(.LC207)
	addi	a4,a5,%lo(.LC207)
	li	a5,4096
	addi	a3,a5,995
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-100(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5092 24
	li	a5,-24576
	addi	a5,a5,-1408
	j	.L650
.L644:
	.loc 5 5095 20
	lw	a5,-20(s0)
	j	.L650
.L643:
	.loc 5 5101 16
	lw	a4,-20(s0)
	li	a5,-28672
	addi	a5,a5,-384
	bne	a4,a5,.L649
	.loc 5 5102 17
	li	a2,20
	li	a1,2
	lw	a0,-100(s0)
	call	mbedtls_ssl_send_alert_message
.L649:
	.loc 5 5107 20
	lw	a5,-20(s0)
	j	.L650
.L642:
	.loc 5 5115 5
	lw	a0,-100(s0)
	call	mbedtls_ssl_update_in_pointers
	.loc 5 5117 22
	lw	a5,-100(s0)
	lw	a5,108(a5)
	.loc 5 5117 36
	lbu	a4,-68(s0)
	.loc 5 5117 31
	add	a4,a5,a4
	.loc 5 5117 17
	lw	a5,-100(s0)
	sw	a4,112(a5)
	.loc 5 5119 21
	lw	a5,-100(s0)
	lw	a5,112(a5)
	.loc 5 5119 30
	addi	a4,a5,2
	.loc 5 5119 16
	lw	a5,-100(s0)
	sw	a4,116(a5)
	.loc 5 5123 26
	lbu	a5,-88(s0)
	mv	a4,a5
	.loc 5 5123 21
	lw	a5,-100(s0)
	sw	a4,128(a5)
	.loc 5 5128 8
	lw	a5,-100(s0)
	lw	a5,104(a5)
	.loc 5 5128 25
	lbu	a4,-88(s0)
	.loc 5 5128 20
	sb	a4,0(a5)
	.loc 5 5129 22
	lw	a4,-84(s0)
	.loc 5 5129 32
	lw	a5,-76(s0)
	.loc 5 5129 27
	add	a4,a4,a5
	.loc 5 5129 17
	lw	a5,-100(s0)
	sw	a4,120(a5)
	.loc 5 5130 25
	lw	a4,-72(s0)
	.loc 5 5130 20
	lw	a5,-100(s0)
	sw	a4,132(a5)
	.loc 5 5131 146 discriminator 2
	lw	a5,-100(s0)
	lw	a4,112(a5)
	.loc 5 5131 186 discriminator 2
	lw	a5,-72(s0)
	.loc 5 5131 153 discriminator 2
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a3,a5,8
	srli	a5,a5,8
	or	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a4,-24(s0)
	sh	a5,-26(s0)
.LBB115:
.LBB116:
	.loc 6 148 33
	lw	a5,-24(s0)
	sw	a5,-32(s0)
	.loc 6 149 12
	lw	a5,-32(s0)
	lhu	a4,-26(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-26(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 6 153 1
	nop
.LBE116:
.LBE115:
	.loc 5 5133 12
	li	a5,0
.L650:
	.loc 5 5134 1
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
.LFE227:
	.size	ssl_get_next_record, .-ssl_get_next_record
	.section	.rodata
	.align	2
.LC208:
	.string	"non-handshake message in the middle of a fragmented handshake message"
	.align	2
.LC209:
	.string	"invalid CCS message, len: %zu"
	.align	2
.LC210:
	.string	"invalid CCS message, content: %02x"
	.align	2
.LC211:
	.string	"dropping ChangeCipherSpec outside handshake"
	.align	2
.LC212:
	.string	"received out-of-order ChangeCipherSpec - remember"
	.align	2
.LC213:
	.string	"invalid alert message, len: %zu"
	.align	2
.LC214:
	.string	"got an alert message, type: [%u:%u]"
	.align	2
.LC215:
	.string	"is a fatal alert message (msg %d)"
	.align	2
.LC216:
	.string	"is a close notify message"
	.align	2
.LC217:
	.string	"is a no renegotiation alert"
	.align	2
.LC218:
	.string	"dropping unexpected ApplicationData"
	.section	.text.mbedtls_ssl_handle_message_type,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_handle_message_type
	.type	mbedtls_ssl_handle_message_type, @function
mbedtls_ssl_handle_message_type:
.LFB228:
	.loc 5 5137 1
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
	.loc 5 5138 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 5144 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 5144 18
	lbu	a5,5(a5)
	.loc 5 5144 8
	bne	a5,zero,.L652
	.loc 5 5145 12
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 5 5144 35 discriminator 1
	beq	a5,zero,.L652
	.loc 5 5146 12
	lw	a5,-36(s0)
	lw	a4,128(a5)
	.loc 5 5145 47
	li	a5,22
	beq	a4,a5,.L652
	.loc 5 5147 9
	lui	a5,%hi(.LC208)
	addi	a4,a5,%lo(.LC208)
	li	a5,4096
	addi	a3,a5,1051
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5149 16
	li	a5,-28672
	addi	a5,a5,-1792
	j	.L653
.L652:
	.loc 5 5155 12
	lw	a5,-36(s0)
	lw	a4,128(a5)
	.loc 5 5155 8
	li	a5,22
	bne	a4,a5,.L654
	.loc 5 5156 20
	lw	a0,-36(s0)
	call	mbedtls_ssl_prepare_handshake_record
	sw	a0,-20(s0)
	.loc 5 5156 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L654
	.loc 5 5157 20
	lw	a5,-20(s0)
	j	.L653
.L654:
	.loc 5 5161 12
	lw	a5,-36(s0)
	lw	a4,128(a5)
	.loc 5 5161 8
	li	a5,20
	bne	a4,a5,.L655
	.loc 5 5162 16
	lw	a5,-36(s0)
	lw	a4,132(a5)
	.loc 5 5162 12
	li	a5,1
	beq	a4,a5,.L656
	.loc 5 5163 13
	lw	a5,-36(s0)
	lw	a5,132(a5)
	lui	a4,%hi(.LC209)
	addi	a4,a4,%lo(.LC209)
	li	a3,4096
	addi	a3,a3,1067
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5165 20
	li	a5,-28672
	addi	a5,a5,-512
	j	.L653
.L656:
	.loc 5 5168 16
	lw	a5,-36(s0)
	lw	a5,120(a5)
	.loc 5 5168 24
	lbu	a4,0(a5)
	.loc 5 5168 12
	li	a5,1
	beq	a4,a5,.L657
	.loc 5 5169 178
	lw	a5,-36(s0)
	lw	a5,120(a5)
	.loc 5 5169 186
	lbu	a5,0(a5)
	.loc 5 5169 13
	lui	a4,%hi(.LC210)
	addi	a4,a4,%lo(.LC210)
	li	a3,4096
	addi	a3,a3,1073
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5171 20
	li	a5,-28672
	addi	a5,a5,-512
	j	.L653
.L657:
	.loc 5 5175 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 5175 22
	lbu	a4,5(a5)
	.loc 5 5175 12
	li	a5,1
	bne	a4,a5,.L655
	.loc 5 5176 16
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 5 5175 39 discriminator 1
	li	a5,10
	beq	a4,a5,.L655
	.loc 5 5177 16
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 5 5176 65
	li	a5,12
	beq	a4,a5,.L655
	.loc 5 5178 20
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 5178 16
	bne	a5,zero,.L658
	.loc 5 5179 17
	lui	a5,%hi(.LC211)
	addi	a4,a5,%lo(.LC211)
	li	a5,4096
	addi	a3,a5,1083
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5180 24
	li	a5,-24576
	addi	a5,a5,-1792
	j	.L653
.L658:
	.loc 5 5183 13
	lui	a5,%hi(.LC212)
	addi	a4,a5,%lo(.LC212)
	li	a5,4096
	addi	a3,a5,1087
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5184 20
	li	a5,-24576
	addi	a5,a5,-1152
	j	.L653
.L655:
	.loc 5 5197 12
	lw	a5,-36(s0)
	lw	a4,128(a5)
	.loc 5 5197 8
	li	a5,21
	bne	a4,a5,.L659
	.loc 5 5198 16
	lw	a5,-36(s0)
	lw	a4,132(a5)
	.loc 5 5198 12
	li	a5,2
	beq	a4,a5,.L660
	.loc 5 5202 13
	lw	a5,-36(s0)
	lw	a5,132(a5)
	lui	a4,%hi(.LC213)
	addi	a4,a4,%lo(.LC213)
	li	a3,4096
	addi	a3,a3,1106
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5204 20
	li	a5,-28672
	addi	a5,a5,-512
	j	.L653
.L660:
	.loc 5 5207 175
	lw	a5,-36(s0)
	lw	a5,120(a5)
	.loc 5 5207 183
	lbu	a5,0(a5)
	.loc 5 5207 9
	mv	a4,a5
	.loc 5 5207 191
	lw	a5,-36(s0)
	lw	a5,120(a5)
	.loc 5 5207 199
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 5 5207 9
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC214)
	addi	a4,a4,%lo(.LC214)
	li	a3,4096
	addi	a3,a3,1111
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5213 16
	lw	a5,-36(s0)
	lw	a5,120(a5)
	.loc 5 5213 24
	lbu	a4,0(a5)
	.loc 5 5213 12
	li	a5,2
	bne	a4,a5,.L661
	.loc 5 5214 177
	lw	a5,-36(s0)
	lw	a5,120(a5)
	.loc 5 5214 185
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 5 5214 13
	lui	a4,%hi(.LC215)
	addi	a4,a4,%lo(.LC215)
	li	a3,4096
	addi	a3,a3,1118
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5216 20
	li	a5,-28672
	addi	a5,a5,-1920
	j	.L653
.L661:
	.loc 5 5219 16
	lw	a5,-36(s0)
	lw	a5,120(a5)
	.loc 5 5219 24
	lbu	a4,0(a5)
	.loc 5 5219 12
	li	a5,1
	bne	a4,a5,.L662
	.loc 5 5220 16
	lw	a5,-36(s0)
	lw	a5,120(a5)
	.loc 5 5220 24
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 5 5219 33 discriminator 1
	bne	a5,zero,.L662
	.loc 5 5221 13
	lui	a5,%hi(.LC216)
	addi	a4,a5,%lo(.LC216)
	li	a5,4096
	addi	a3,a5,1125
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5222 20
	li	a5,-32768
	addi	a5,a5,1920
	j	.L653
.L662:
	.loc 5 5226 16
	lw	a5,-36(s0)
	lw	a5,120(a5)
	.loc 5 5226 24
	lbu	a4,0(a5)
	.loc 5 5226 12
	li	a5,1
	bne	a4,a5,.L663
	.loc 5 5227 16
	lw	a5,-36(s0)
	lw	a5,120(a5)
	.loc 5 5227 24
	addi	a5,a5,1
	lbu	a4,0(a5)
	.loc 5 5226 33 discriminator 1
	li	a5,100
	bne	a4,a5,.L663
	.loc 5 5228 13
	lui	a5,%hi(.LC217)
	addi	a4,a5,%lo(.LC217)
	li	a5,4096
	addi	a3,a5,1132
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5230 20
	li	a5,0
	j	.L653
.L663:
	.loc 5 5234 16
	li	a5,-24576
	addi	a5,a5,-1664
	j	.L653
.L659:
	.loc 5 5238 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 5238 18
	lbu	a4,5(a5)
	.loc 5 5238 8
	li	a5,1
	bne	a4,a5,.L664
	.loc 5 5241 16
	lw	a5,-36(s0)
	lw	a4,128(a5)
	.loc 5 5241 12
	li	a5,23
	bne	a4,a5,.L665
	.loc 5 5242 13
	lw	a0,-36(s0)
	call	mbedtls_ssl_is_handshake_over
	mv	a5,a0
	.loc 5 5241 35 discriminator 1
	bne	a5,zero,.L665
	.loc 5 5244 21
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 5 5244 13
	li	a5,1
	bne	a4,a5,.L666
	.loc 5 5245 21
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 5 5244 16 discriminator 1
	li	a5,2
	beq	a4,a5,.L665
.L666:
	.loc 5 5248 13
	lui	a5,%hi(.LC218)
	addi	a4,a5,%lo(.LC218)
	li	a5,4096
	addi	a3,a5,1152
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5249 20
	li	a5,-24576
	addi	a5,a5,-1664
	j	.L653
.L665:
	.loc 5 5252 16
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 5252 12
	beq	a5,zero,.L664
	.loc 5 5253 13
	lw	a0,-36(s0)
	call	mbedtls_ssl_is_handshake_over
	mv	a4,a0
	.loc 5 5252 35 discriminator 1
	li	a5,1
	bne	a4,a5,.L664
	.loc 5 5254 13
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_wrapup_free_hs_transform
.L664:
	.loc 5 5259 12
	li	a5,0
.L653:
	.loc 5 5260 1
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
.LFE228:
	.size	mbedtls_ssl_handle_message_type, .-mbedtls_ssl_handle_message_type
	.section	.text.mbedtls_ssl_send_fatal_handshake_failure,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_send_fatal_handshake_failure
	.type	mbedtls_ssl_send_fatal_handshake_failure, @function
mbedtls_ssl_send_fatal_handshake_failure:
.LFB229:
	.loc 5 5263 1
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
	.loc 5 5264 12
	li	a2,40
	li	a1,2
	lw	a0,-20(s0)
	call	mbedtls_ssl_send_alert_message
	mv	a5,a0
	.loc 5 5267 1
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
.LFE229:
	.size	mbedtls_ssl_send_fatal_handshake_failure, .-mbedtls_ssl_send_fatal_handshake_failure
	.section	.rodata
	.align	2
.LC219:
	.string	"=> send alert message"
	.align	2
.LC220:
	.string	"send alert level=%u message=%u"
	.align	2
.LC221:
	.string	"<= send alert message"
	.section	.text.mbedtls_ssl_send_alert_message,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_send_alert_message
	.type	mbedtls_ssl_send_alert_message, @function
mbedtls_ssl_send_alert_message:
.LFB230:
	.loc 5 5272 1
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
	sb	a5,-37(s0)
	mv	a5,a4
	sb	a5,-38(s0)
	.loc 5 5273 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 5275 8
	lw	a5,-36(s0)
	beq	a5,zero,.L670
	.loc 5 5275 26 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 5275 20 discriminator 1
	bne	a5,zero,.L671
.L670:
	.loc 5 5276 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L672
.L671:
	.loc 5 5279 12
	lw	a5,-36(s0)
	lw	a5,228(a5)
	.loc 5 5279 8
	beq	a5,zero,.L673
	.loc 5 5280 16
	lw	a0,-36(s0)
	call	mbedtls_ssl_flush_output
	mv	a5,a0
	j	.L672
.L673:
	.loc 5 5283 5
	lui	a5,%hi(.LC219)
	addi	a4,a5,%lo(.LC219)
	li	a5,4096
	addi	a3,a5,1187
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5284 5
	lbu	a5,-37(s0)
	lbu	a4,-38(s0)
	mv	a6,a4
	lui	a4,%hi(.LC220)
	addi	a4,a4,%lo(.LC220)
	li	a3,4096
	addi	a3,a3,1188
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5286 22
	lw	a5,-36(s0)
	li	a4,21
	sw	a4,220(a5)
	.loc 5 5287 21
	lw	a5,-36(s0)
	li	a4,2
	sw	a4,224(a5)
	.loc 5 5288 8
	lw	a5,-36(s0)
	lw	a5,216(a5)
	.loc 5 5288 21
	lbu	a4,-37(s0)
	sb	a4,0(a5)
	.loc 5 5289 8
	lw	a5,-36(s0)
	lw	a5,216(a5)
	.loc 5 5289 17
	addi	a5,a5,1
	.loc 5 5289 21
	lbu	a4,-38(s0)
	sb	a4,0(a5)
	.loc 5 5291 16
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_ssl_write_record
	sw	a0,-20(s0)
	.loc 5 5291 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L674
	.loc 5 5292 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC85)
	addi	a4,a4,%lo(.LC85)
	li	a3,4096
	addi	a3,a3,1196
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 5293 16
	lw	a5,-20(s0)
	j	.L672
.L674:
	.loc 5 5295 5
	lui	a5,%hi(.LC221)
	addi	a4,a5,%lo(.LC221)
	li	a5,4096
	addi	a3,a5,1199
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5297 12
	li	a5,0
.L672:
	.loc 5 5298 1
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
.LFE230:
	.size	mbedtls_ssl_send_alert_message, .-mbedtls_ssl_send_alert_message
	.section	.rodata
	.align	2
.LC222:
	.string	"=> write change cipher spec"
	.align	2
.LC223:
	.string	"mbedtls_ssl_write_handshake_msg"
	.align	2
.LC224:
	.string	"<= write change cipher spec"
	.section	.text.mbedtls_ssl_write_change_cipher_spec,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_write_change_cipher_spec
	.type	mbedtls_ssl_write_change_cipher_spec, @function
mbedtls_ssl_write_change_cipher_spec:
.LFB231:
	.loc 5 5301 1
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
	.loc 5 5302 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 5304 5
	lui	a5,%hi(.LC222)
	addi	a4,a5,%lo(.LC222)
	li	a5,4096
	addi	a3,a5,1208
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5306 22
	lw	a5,-36(s0)
	li	a4,20
	sw	a4,220(a5)
	.loc 5 5307 21
	lw	a5,-36(s0)
	li	a4,1
	sw	a4,224(a5)
	.loc 5 5308 8
	lw	a5,-36(s0)
	lw	a5,216(a5)
	.loc 5 5308 21
	li	a4,1
	sb	a4,0(a5)
	.loc 5 5310 5
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 5 5312 16
	lw	a0,-36(s0)
	call	mbedtls_ssl_write_handshake_msg
	sw	a0,-20(s0)
	.loc 5 5312 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L676
	.loc 5 5313 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC223)
	addi	a4,a4,%lo(.LC223)
	li	a3,4096
	addi	a3,a3,1217
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 5314 16
	lw	a5,-20(s0)
	j	.L677
.L676:
	.loc 5 5317 5
	lui	a5,%hi(.LC224)
	addi	a4,a5,%lo(.LC224)
	li	a5,4096
	addi	a3,a5,1221
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5319 12
	li	a5,0
.L677:
	.loc 5 5320 1
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
.LFE231:
	.size	mbedtls_ssl_write_change_cipher_spec, .-mbedtls_ssl_write_change_cipher_spec
	.section	.rodata
	.align	2
.LC225:
	.string	"=> parse change cipher spec"
	.align	2
.LC226:
	.string	"mbedtls_ssl_read_record"
	.align	2
.LC227:
	.string	"bad change cipher spec message"
	.align	2
.LC228:
	.string	"switching to new transform spec for inbound data"
	.align	2
.LC229:
	.string	"DTLS epoch would wrap"
	.align	2
.LC230:
	.string	"<= parse change cipher spec"
	.section	.text.mbedtls_ssl_parse_change_cipher_spec,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_parse_change_cipher_spec
	.type	mbedtls_ssl_parse_change_cipher_spec, @function
mbedtls_ssl_parse_change_cipher_spec:
.LFB232:
	.loc 5 5323 1
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
	.loc 5 5324 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 5326 5
	lui	a5,%hi(.LC225)
	addi	a4,a5,%lo(.LC225)
	li	a5,4096
	addi	a3,a5,1230
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5328 16
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_ssl_read_record
	sw	a0,-20(s0)
	.loc 5 5328 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L679
	.loc 5 5329 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC226)
	addi	a4,a4,%lo(.LC226)
	li	a3,4096
	addi	a3,a3,1233
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 5330 16
	lw	a5,-20(s0)
	j	.L680
.L679:
	.loc 5 5333 12
	lw	a5,-36(s0)
	lw	a4,128(a5)
	.loc 5 5333 8
	li	a5,20
	beq	a4,a5,.L681
	.loc 5 5334 9
	lui	a5,%hi(.LC227)
	addi	a4,a5,%lo(.LC227)
	li	a5,4096
	addi	a3,a5,1238
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5335 9
	li	a2,10
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 5337 16
	li	a5,-28672
	addi	a5,a5,-1792
	j	.L680
.L681:
	.loc 5 5347 5
	lui	a5,%hi(.LC228)
	addi	a4,a5,%lo(.LC228)
	li	a5,4096
	addi	a3,a5,1251
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5349 28
	lw	a5,-36(s0)
	lw	a4,80(a5)
	.loc 5 5349 23
	lw	a5,-36(s0)
	sw	a4,68(a5)
	.loc 5 5351 26
	lw	a5,-36(s0)
	lw	a4,60(a5)
	.loc 5 5351 21
	lw	a5,-36(s0)
	sw	a4,48(a5)
	.loc 5 5354 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 5354 18
	lbu	a4,5(a5)
	.loc 5 5354 8
	li	a5,1
	bne	a4,a5,.L682
	.loc 5 5356 9
	lw	a0,-36(s0)
	call	mbedtls_ssl_dtls_replay_reset
	.loc 5 5360 18
	lw	a5,-36(s0)
	lhu	a5,144(a5)
	.loc 5 5360 13
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 5 5360 12
	lw	a5,-36(s0)
	sh	a4,144(a5)
	.loc 5 5360 18
	lw	a5,-36(s0)
	lhu	a5,144(a5)
	.loc 5 5360 12
	bne	a5,zero,.L683
	.loc 5 5361 13
	lui	a5,%hi(.LC229)
	addi	a4,a5,%lo(.LC229)
	li	a5,4096
	addi	a3,a5,1265
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5364 20
	li	a5,-28672
	addi	a5,a5,1152
	j	.L680
.L682:
	.loc 5 5368 15
	lw	a5,-36(s0)
	lw	a5,100(a5)
	.loc 5 5368 5
	li	a2,8
	li	a1,0
	mv	a0,a5
	call	memset
.L683:
	.loc 5 5370 5
	lw	a0,-36(s0)
	call	mbedtls_ssl_update_in_pointers
	.loc 5 5372 5
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 5 5374 5
	lui	a5,%hi(.LC230)
	addi	a4,a5,%lo(.LC230)
	li	a5,4096
	addi	a3,a5,1278
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5376 12
	li	a5,0
.L680:
	.loc 5 5377 1
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
.LFE232:
	.size	mbedtls_ssl_parse_change_cipher_spec, .-mbedtls_ssl_parse_change_cipher_spec
	.section	.text.ssl_transform_get_explicit_iv_len,"ax",@progbits
	.align	1
	.type	ssl_transform_get_explicit_iv_len, @function
ssl_transform_get_explicit_iv_len:
.LFB233:
	.loc 5 5389 1
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
	.loc 5 5390 21
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 5 5390 40
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 5 5390 29
	sub	a5,a4,a5
	.loc 5 5391 1
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
.LFE233:
	.size	ssl_transform_get_explicit_iv_len, .-ssl_transform_get_explicit_iv_len
	.section	.text.mbedtls_ssl_update_out_pointers,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_update_out_pointers
	.type	mbedtls_ssl_update_out_pointers, @function
mbedtls_ssl_update_out_pointers:
.LFB234:
	.loc 5 5395 1
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
	.loc 5 5397 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 5397 18
	lbu	a4,5(a5)
	.loc 5 5397 8
	li	a5,1
	bne	a4,a5,.L687
	.loc 5 5398 27
	lw	a5,-20(s0)
	lw	a5,200(a5)
	.loc 5 5398 37
	addi	a4,a5,3
	.loc 5 5398 22
	lw	a5,-20(s0)
	sw	a4,196(a5)
	.loc 5 5400 27
	lw	a5,-20(s0)
	lw	a5,196(a5)
	.loc 5 5400 37
	addi	a4,a5,8
	.loc 5 5400 22
	lw	a5,-20(s0)
	sw	a4,204(a5)
	.loc 5 5401 27
	lw	a5,-20(s0)
	lw	a4,204(a5)
	.loc 5 5401 22
	lw	a5,-20(s0)
	sw	a4,208(a5)
	.loc 5 5402 12
	lw	a5,-24(s0)
	beq	a5,zero,.L688
	.loc 5 5403 16
	lw	a5,-20(s0)
	lw	a5,208(a5)
	.loc 5 5403 38
	lw	a4,-24(s0)
	lbu	a4,221(a4)
	.loc 5 5403 26
	add	a4,a5,a4
	lw	a5,-20(s0)
	sw	a4,208(a5)
.L688:
	.loc 5 5408 26
	lw	a5,-20(s0)
	lw	a5,208(a5)
	.loc 5 5408 36
	addi	a4,a5,2
	.loc 5 5408 21
	lw	a5,-20(s0)
	sw	a4,212(a5)
	j	.L689
.L687:
	.loc 5 5412 27
	lw	a5,-20(s0)
	lw	a5,200(a5)
	.loc 5 5412 37
	addi	a4,a5,3
	.loc 5 5412 22
	lw	a5,-20(s0)
	sw	a4,208(a5)
	.loc 5 5414 27
	lw	a5,-20(s0)
	lw	a4,208(a5)
	.loc 5 5414 22
	lw	a5,-20(s0)
	sw	a4,204(a5)
	.loc 5 5416 26
	lw	a5,-20(s0)
	lw	a5,200(a5)
	.loc 5 5416 36
	addi	a4,a5,5
	.loc 5 5416 21
	lw	a5,-20(s0)
	sw	a4,212(a5)
.L689:
	.loc 5 5419 23
	lw	a5,-20(s0)
	lw	a4,212(a5)
	.loc 5 5419 18
	lw	a5,-20(s0)
	sw	a4,216(a5)
	.loc 5 5421 8
	lw	a5,-24(s0)
	beq	a5,zero,.L691
	.loc 5 5422 25
	lw	a0,-24(s0)
	call	ssl_transform_get_explicit_iv_len
	mv	a4,a0
	.loc 5 5422 12 discriminator 1
	lw	a5,-20(s0)
	lw	a5,216(a5)
	.loc 5 5422 22 discriminator 1
	add	a4,a5,a4
	lw	a5,-20(s0)
	sw	a4,216(a5)
.L691:
	.loc 5 5424 1
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
.LFE234:
	.size	mbedtls_ssl_update_out_pointers, .-mbedtls_ssl_update_out_pointers
	.section	.text.mbedtls_ssl_update_in_pointers,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_update_in_pointers
	.type	mbedtls_ssl_update_in_pointers, @function
mbedtls_ssl_update_in_pointers:
.LFB235:
	.loc 5 5435 1
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
	.loc 5 5447 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 5447 18
	lbu	a4,5(a5)
	.loc 5 5447 8
	li	a5,1
	bne	a4,a5,.L693
	.loc 5 5452 26
	lw	a5,-20(s0)
	lw	a5,104(a5)
	.loc 5 5452 35
	addi	a4,a5,3
	.loc 5 5452 21
	lw	a5,-20(s0)
	sw	a4,100(a5)
	.loc 5 5454 26
	lw	a5,-20(s0)
	lw	a5,100(a5)
	.loc 5 5454 35
	addi	a4,a5,8
	.loc 5 5454 21
	lw	a5,-20(s0)
	sw	a4,108(a5)
	.loc 5 5455 26
	lw	a5,-20(s0)
	lw	a4,108(a5)
	.loc 5 5455 21
	lw	a5,-20(s0)
	sw	a4,112(a5)
	.loc 5 5459 25
	lw	a5,-20(s0)
	lw	a5,112(a5)
	.loc 5 5459 34
	addi	a4,a5,2
	.loc 5 5459 20
	lw	a5,-20(s0)
	sw	a4,116(a5)
	j	.L694
.L693:
	.loc 5 5463 26
	lw	a5,-20(s0)
	lw	a4,96(a5)
	.loc 5 5463 21
	lw	a5,-20(s0)
	sw	a4,100(a5)
	.loc 5 5464 26
	lw	a5,-20(s0)
	lw	a5,104(a5)
	.loc 5 5464 35
	addi	a4,a5,3
	.loc 5 5464 21
	lw	a5,-20(s0)
	sw	a4,112(a5)
	.loc 5 5466 26
	lw	a5,-20(s0)
	lw	a4,112(a5)
	.loc 5 5466 21
	lw	a5,-20(s0)
	sw	a4,108(a5)
	.loc 5 5468 25
	lw	a5,-20(s0)
	lw	a5,104(a5)
	.loc 5 5468 34
	addi	a4,a5,5
	.loc 5 5468 20
	lw	a5,-20(s0)
	sw	a4,116(a5)
.L694:
	.loc 5 5472 22
	lw	a5,-20(s0)
	lw	a4,116(a5)
	.loc 5 5472 17
	lw	a5,-20(s0)
	sw	a4,120(a5)
	.loc 5 5473 1
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
.LFE235:
	.size	mbedtls_ssl_update_in_pointers, .-mbedtls_ssl_update_in_pointers
	.section	.text.mbedtls_ssl_reset_in_pointers,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_reset_in_pointers
	.type	mbedtls_ssl_reset_in_pointers, @function
mbedtls_ssl_reset_in_pointers:
.LFB236:
	.loc 5 5480 1
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
	.loc 5 5482 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 5482 18
	lbu	a4,5(a5)
	.loc 5 5482 8
	li	a5,1
	bne	a4,a5,.L696
	.loc 5 5483 26
	lw	a5,-20(s0)
	lw	a4,96(a5)
	.loc 5 5483 21
	lw	a5,-20(s0)
	sw	a4,104(a5)
	j	.L697
.L696:
	.loc 5 5487 26
	lw	a5,-20(s0)
	lw	a5,96(a5)
	.loc 5 5487 35
	addi	a4,a5,8
	.loc 5 5487 21
	lw	a5,-20(s0)
	sw	a4,104(a5)
.L697:
	.loc 5 5491 5
	lw	a0,-20(s0)
	call	mbedtls_ssl_update_in_pointers
	.loc 5 5492 1
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
.LFE236:
	.size	mbedtls_ssl_reset_in_pointers, .-mbedtls_ssl_reset_in_pointers
	.section	.text.mbedtls_ssl_reset_out_pointers,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_reset_out_pointers
	.type	mbedtls_ssl_reset_out_pointers, @function
mbedtls_ssl_reset_out_pointers:
.LFB237:
	.loc 5 5495 1
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
	.loc 5 5498 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 5498 18
	lbu	a4,5(a5)
	.loc 5 5498 8
	li	a5,1
	bne	a4,a5,.L699
	.loc 5 5499 27
	lw	a5,-20(s0)
	lw	a4,192(a5)
	.loc 5 5499 22
	lw	a5,-20(s0)
	sw	a4,200(a5)
	j	.L700
.L699:
	.loc 5 5503 27
	lw	a5,-20(s0)
	lw	a4,192(a5)
	.loc 5 5503 22
	lw	a5,-20(s0)
	sw	a4,196(a5)
	.loc 5 5504 27
	lw	a5,-20(s0)
	lw	a5,192(a5)
	.loc 5 5504 37
	addi	a4,a5,8
	.loc 5 5504 22
	lw	a5,-20(s0)
	sw	a4,200(a5)
.L700:
	.loc 5 5507 5
	li	a1,0
	lw	a0,-20(s0)
	call	mbedtls_ssl_update_out_pointers
	.loc 5 5508 1
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
.LFE237:
	.size	mbedtls_ssl_reset_out_pointers, .-mbedtls_ssl_reset_out_pointers
	.section	.text.mbedtls_ssl_get_bytes_avail,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_bytes_avail
	.type	mbedtls_ssl_get_bytes_avail, @function
mbedtls_ssl_get_bytes_avail:
.LFB238:
	.loc 5 5514 1
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
	.loc 5 5515 15
	lw	a5,-20(s0)
	lw	a5,124(a5)
	.loc 5 5515 36
	beq	a5,zero,.L702
	.loc 5 5515 36 is_stmt 0 discriminator 1
	lw	a5,-20(s0)
	lw	a5,132(a5)
	.loc 5 5515 36
	j	.L704
.L702:
	.loc 5 5515 36 discriminator 2
	li	a5,0
.L704:
	.loc 5 5516 1 is_stmt 1
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
.LFE238:
	.size	mbedtls_ssl_get_bytes_avail, .-mbedtls_ssl_get_bytes_avail
	.section	.rodata
	.align	2
.LC231:
	.string	"ssl_check_pending: record held back for processing"
	.align	2
.LC232:
	.string	"ssl_check_pending: more records within current datagram"
	.align	2
.LC233:
	.string	"ssl_check_pending: more handshake messages within current record"
	.align	2
.LC234:
	.string	"ssl_check_pending: application data record is being processed"
	.align	2
.LC235:
	.string	"ssl_check_pending: nothing pending"
	.section	.text.mbedtls_ssl_check_pending,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_check_pending
	.type	mbedtls_ssl_check_pending, @function
mbedtls_ssl_check_pending:
.LFB239:
	.loc 5 5519 1
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
	.loc 5 5525 12
	lw	a5,-20(s0)
	lw	a4,176(a5)
	.loc 5 5525 8
	li	a5,1
	bne	a4,a5,.L706
	.loc 5 5526 9
	lui	a5,%hi(.LC231)
	addi	a4,a5,%lo(.LC231)
	li	a5,4096
	addi	a3,a5,1430
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,3
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5527 16
	li	a5,1
	j	.L707
.L706:
	.loc 5 5535 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 5535 18
	lbu	a4,5(a5)
	.loc 5 5535 8
	li	a5,1
	bne	a4,a5,.L708
	.loc 5 5536 12
	lw	a5,-20(s0)
	lw	a4,136(a5)
	.loc 5 5536 27
	lw	a5,-20(s0)
	lw	a5,148(a5)
	.loc 5 5535 35 discriminator 1
	bleu	a4,a5,.L708
	.loc 5 5537 9
	lui	a5,%hi(.LC232)
	addi	a4,a5,%lo(.LC232)
	li	a5,4096
	addi	a3,a5,1441
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,3
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5538 16
	li	a5,1
	j	.L707
.L708:
	.loc 5 5546 12
	lw	a5,-20(s0)
	lw	a5,168(a5)
	.loc 5 5546 8
	beq	a5,zero,.L709
	.loc 5 5546 33 discriminator 1
	lw	a5,-20(s0)
	lw	a4,168(a5)
	.loc 5 5546 49 discriminator 1
	lw	a5,-20(s0)
	lw	a5,132(a5)
	.loc 5 5546 27 discriminator 1
	bgeu	a4,a5,.L709
	.loc 5 5547 9
	lui	a5,%hi(.LC233)
	addi	a4,a5,%lo(.LC233)
	li	a5,4096
	addi	a3,a5,1451
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,3
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5549 16
	li	a5,1
	j	.L707
.L709:
	.loc 5 5555 12
	lw	a5,-20(s0)
	lw	a5,124(a5)
	.loc 5 5555 8
	beq	a5,zero,.L710
	.loc 5 5556 9
	lui	a5,%hi(.LC234)
	addi	a4,a5,%lo(.LC234)
	li	a5,4096
	addi	a3,a5,1460
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,3
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5557 16
	li	a5,1
	j	.L707
.L710:
	.loc 5 5566 5
	lui	a5,%hi(.LC235)
	addi	a4,a5,%lo(.LC235)
	li	a5,4096
	addi	a3,a5,1470
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,3
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5567 12
	li	a5,0
.L707:
	.loc 5 5568 1
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
.LFE239:
	.size	mbedtls_ssl_check_pending, .-mbedtls_ssl_check_pending
	.section	.text.mbedtls_ssl_get_record_expansion,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_get_record_expansion
	.type	mbedtls_ssl_get_record_expansion, @function
mbedtls_ssl_get_record_expansion:
.LFB240:
	.loc 5 5572 1
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
	.loc 5 5573 12
	sw	zero,-20(s0)
	.loc 5 5574 34
	lw	a5,-36(s0)
	lw	a5,72(a5)
	sw	a5,-24(s0)
	.loc 5 5581 26
	lw	a0,-36(s0)
	call	mbedtls_ssl_out_hdr_len
	sw	a0,-28(s0)
	.loc 5 5583 8
	lw	a5,-24(s0)
	bne	a5,zero,.L712
	.loc 5 5584 16
	lw	a5,-28(s0)
	j	.L713
.L712:
	.loc 5 5620 13
	lw	a5,-24(s0)
	addi	a5,a5,84
	mv	a0,a5
	call	mbedtls_cipher_get_cipher_mode
	mv	a5,a0
	.loc 5 5620 5 discriminator 1
	li	a4,11
	beq	a5,a4,.L714
	li	a4,11
	bgt	a5,a4,.L715
	li	a4,2
	beq	a5,a4,.L716
	li	a4,2
	blt	a5,a4,.L715
	addi	a4,a5,-6
	li	a5,2
	bgtu	a4,a5,.L715
.L714:
	.loc 5 5625 33
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 5 5626 13
	j	.L717
.L716:
	.loc 5 5630 26
	lw	a5,-24(s0)
	addi	a5,a5,84
	mv	a0,a5
	call	mbedtls_cipher_get_block_size
	sw	a0,-32(s0)
	.loc 5 5634 45
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 5 5634 33
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 5639 33
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 5644 33
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 5647 13
	j	.L717
.L715:
	.loc 5 5650 13
	lui	a5,%hi(.LC30)
	addi	a4,a5,%lo(.LC30)
	li	a5,4096
	addi	a3,a5,1554
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5651 20
	li	a5,-28672
	addi	a5,a5,1024
	j	.L713
.L717:
	.loc 5 5656 18
	lw	a5,-24(s0)
	lbu	a5,221(a5)
	.loc 5 5656 8
	beq	a5,zero,.L718
	.loc 5 5657 29
	lw	a5,-20(s0)
	addi	a5,a5,16
	sw	a5,-20(s0)
.L718:
	.loc 5 5661 31
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
.L713:
	.loc 5 5662 1
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
.LFE240:
	.size	mbedtls_ssl_get_record_expansion, .-mbedtls_ssl_get_record_expansion
	.section	.rodata
	.align	2
.LC236:
	.string	"record counter limit reached: renegotiate"
	.section	.text.ssl_check_ctr_renegotiate,"ax",@progbits
	.align	1
	.type	ssl_check_ctr_renegotiate, @function
ssl_check_ctr_renegotiate:
.LFB241:
	.loc 5 5670 1
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
	.loc 5 5671 21
	lw	a0,-36(s0)
	call	mbedtls_ssl_ep_len
	sw	a0,-20(s0)
	.loc 5 5675 9
	lw	a0,-36(s0)
	call	mbedtls_ssl_is_handshake_over
	mv	a5,a0
	.loc 5 5675 8 discriminator 1
	beq	a5,zero,.L720
	.loc 5 5676 12
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 5 5675 49 discriminator 2
	li	a5,3
	beq	a4,a5,.L720
	.loc 5 5677 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 5677 18
	lbu	a5,12(a5)
	.loc 5 5676 33
	bne	a5,zero,.L721
.L720:
	.loc 5 5678 16
	li	a5,0
	j	.L722
.L721:
	.loc 5 5681 28
	lw	a5,-36(s0)
	lw	a4,100(a5)
	.loc 5 5681 37
	lw	a5,-20(s0)
	add	a3,a4,a5
	.loc 5 5682 29
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 5 5682 25
	lw	a5,-20(s0)
	addi	a5,a5,208
	add	a5,a4,a5
	addi	a1,a5,8
	.loc 5 5681 18
	li	a4,8
	lw	a5,-20(s0)
	sub	a5,a4,a5
	mv	a2,a5
	mv	a0,a3
	call	memcmp
	sw	a0,-24(s0)
	.loc 5 5684 26
	lw	a5,-20(s0)
	addi	a5,a5,224
	lw	a4,-36(s0)
	add	a5,a4,a5
	addi	a3,a5,12
	.loc 5 5685 30
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 5 5685 26
	lw	a5,-20(s0)
	addi	a5,a5,208
	add	a5,a4,a5
	addi	a1,a5,8
	.loc 5 5686 51
	li	a4,8
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 5 5684 19
	mv	a2,a5
	mv	a0,a3
	call	memcmp
	sw	a0,-28(s0)
	.loc 5 5688 8
	lw	a5,-24(s0)
	bgt	a5,zero,.L723
	.loc 5 5688 25 discriminator 1
	lw	a5,-28(s0)
	bgt	a5,zero,.L723
	.loc 5 5689 16
	li	a5,0
	j	.L722
.L723:
	.loc 5 5692 5
	lui	a5,%hi(.LC236)
	addi	a4,a5,%lo(.LC236)
	li	a5,4096
	addi	a3,a5,1596
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5693 12
	lw	a0,-36(s0)
	call	mbedtls_ssl_renegotiate
	mv	a5,a0
.L722:
	.loc 5 5694 1
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
.LFE241:
	.size	ssl_check_ctr_renegotiate, .-ssl_check_ctr_renegotiate
	.section	.rodata
	.align	2
.LC237:
	.string	"handshake received (not HelloRequest)"
	.align	2
.LC238:
	.string	"handshake received (not ClientHello)"
	.align	2
.LC239:
	.string	"mbedtls_ssl_start_renegotiation"
	.align	2
.LC240:
	.string	"refusing renegotiation, sending alert"
	.section	.text.ssl_tls12_handle_hs_message_post_handshake,"ax",@progbits
	.align	1
	.type	ssl_tls12_handle_hs_message_post_handshake, @function
ssl_tls12_handle_hs_message_post_handshake:
.LFB242:
	.loc 5 5760 1
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
	.loc 5 5761 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 5770 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 5770 18
	lbu	a5,4(a5)
	.loc 5 5770 8
	bne	a5,zero,.L725
	.loc 5 5771 13
	lw	a5,-36(s0)
	lw	a5,120(a5)
	.loc 5 5771 21
	lbu	a5,0(a5)
	.loc 5 5770 34 discriminator 1
	bne	a5,zero,.L726
	.loc 5 5772 13
	lw	a5,-36(s0)
	lw	s1,168(a5)
	.loc 5 5772 27
	lw	a0,-36(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a5,a0
	.loc 5 5771 30
	beq	s1,a5,.L725
.L726:
	.loc 5 5773 9
	lui	a5,%hi(.LC237)
	addi	a4,a5,%lo(.LC237)
	li	a5,4096
	addi	a3,a5,1677
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5777 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 5777 22
	lbu	a4,5(a5)
	.loc 5 5777 12
	li	a5,1
	bne	a4,a5,.L727
	.loc 5 5778 20
	li	a5,0
	j	.L728
.L727:
	.loc 5 5781 16
	li	a5,-28672
	addi	a5,a5,-1792
	j	.L728
.L725:
	.loc 5 5786 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 5786 18
	lbu	a4,4(a5)
	.loc 5 5786 8
	li	a5,1
	bne	a4,a5,.L729
	.loc 5 5787 12
	lw	a5,-36(s0)
	lw	a5,120(a5)
	.loc 5 5787 20
	lbu	a4,0(a5)
	.loc 5 5786 34 discriminator 1
	li	a5,1
	beq	a4,a5,.L729
	.loc 5 5788 9
	lui	a5,%hi(.LC238)
	addi	a4,a5,%lo(.LC238)
	li	a5,4096
	addi	a3,a5,1692
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5792 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 5792 22
	lbu	a4,5(a5)
	.loc 5 5792 12
	li	a5,1
	bne	a4,a5,.L730
	.loc 5 5793 20
	li	a5,0
	j	.L728
.L730:
	.loc 5 5796 16
	li	a5,-28672
	addi	a5,a5,-1792
	j	.L728
.L729:
	.loc 5 5802 14
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 5802 20
	lbu	a5,12(a5)
	.loc 5 5802 8
	beq	a5,zero,.L731
	.loc 5 5803 15
	lw	a5,-36(s0)
	lw	a5,524(a5)
	.loc 5 5802 9 discriminator 1
	bne	a5,zero,.L732
	.loc 5 5804 15
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 5804 21
	lbu	a5,7(a5)
	.loc 5 5803 43
	beq	a5,zero,.L731
.L732:
	.loc 5 5812 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 5812 22
	lbu	a4,5(a5)
	.loc 5 5812 12
	li	a5,1
	bne	a4,a5,.L733
	.loc 5 5813 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 5813 22
	lbu	a5,4(a5)
	.loc 5 5812 39 discriminator 1
	bne	a5,zero,.L733
	.loc 5 5814 32
	lw	a5,-36(s0)
	li	a4,3
	sw	a4,8(a5)
.L733:
	.loc 5 5817 15
	lw	a0,-36(s0)
	call	mbedtls_ssl_start_renegotiation
	sw	a0,-20(s0)
	.loc 5 5818 12
	lw	a4,-20(s0)
	li	a5,-28672
	addi	a5,a5,1280
	beq	a4,a5,.L736
	.loc 5 5818 28 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L736
	.loc 5 5820 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC239)
	addi	a4,a4,%lo(.LC239)
	li	a3,4096
	addi	a3,a3,1724
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 5822 20
	lw	a5,-20(s0)
	j	.L728
.L731:
	.loc 5 5831 9
	lui	a5,%hi(.LC240)
	addi	a4,a5,%lo(.LC240)
	li	a5,4096
	addi	a3,a5,1735
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5833 20
	li	a2,100
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_ssl_send_alert_message
	sw	a0,-20(s0)
	.loc 5 5833 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L735
	.loc 5 5836 20
	lw	a5,-20(s0)
	j	.L728
.L736:
	.loc 5 5818 12
	nop
.L735:
	.loc 5 5840 12
	li	a5,0
.L728:
	.loc 5 5841 1
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
.LFE242:
	.size	ssl_tls12_handle_hs_message_post_handshake, .-ssl_tls12_handle_hs_message_post_handshake
	.section	.text.ssl_handle_hs_message_post_handshake,"ax",@progbits
	.align	1
	.type	ssl_handle_hs_message_post_handshake, @function
ssl_handle_hs_message_post_handshake:
.LFB243:
	.loc 5 5846 1
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
	.loc 5 5855 12
	lw	a5,-20(s0)
	lhu	a4,16(a5)
	.loc 5 5855 8
	li	a5,771
	bgtu	a4,a5,.L738
	.loc 5 5856 16
	lw	a0,-20(s0)
	call	ssl_tls12_handle_hs_message_post_handshake
	mv	a5,a0
	j	.L739
.L738:
	.loc 5 5861 12
	li	a5,-28672
	addi	a5,a5,1024
.L739:
	.loc 5 5862 1
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
.LFE243:
	.size	ssl_handle_hs_message_post_handshake, .-ssl_handle_hs_message_post_handshake
	.section	.text.ssl_read_application_data,"ax",@progbits
	.align	1
	.type	ssl_read_application_data, @function
ssl_read_application_data:
.LFB244:
	.loc 5 5882 1
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
	.loc 5 5883 26
	lw	a5,-36(s0)
	lw	a4,132(a5)
	.loc 5 5883 12
	lw	a5,-44(s0)
	bleu	a5,a4,.L741
	mv	a5,a4
.L741:
	sw	a5,-20(s0)
	.loc 5 5885 8
	lw	a5,-44(s0)
	beq	a5,zero,.L742
	.loc 5 5886 24
	lw	a5,-36(s0)
	lw	a5,124(a5)
	.loc 5 5886 9
	lw	a2,-20(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	memcpy
	.loc 5 5887 12
	lw	a5,-36(s0)
	lw	a4,132(a5)
	.loc 5 5887 24
	lw	a5,-20(s0)
	sub	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,132(a5)
.L742:
	.loc 5 5892 33
	lw	a5,-36(s0)
	lw	a5,124(a5)
	.loc 5 5892 5
	lw	a1,-20(s0)
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 5 5894 12
	lw	a5,-36(s0)
	lw	a5,132(a5)
	.loc 5 5894 8
	bne	a5,zero,.L743
	.loc 5 5896 22
	lw	a5,-36(s0)
	sw	zero,124(a5)
	.loc 5 5897 35
	lw	a5,-36(s0)
	sw	zero,176(a5)
	j	.L744
.L743:
	.loc 5 5900 12
	lw	a5,-36(s0)
	lw	a4,124(a5)
	.loc 5 5900 22
	lw	a5,-20(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,124(a5)
.L744:
	.loc 5 5903 12
	lw	a5,-20(s0)
	.loc 5 5904 1
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
.LFE244:
	.size	ssl_read_application_data, .-ssl_read_application_data
	.section	.rodata
	.align	2
.LC241:
	.string	"=> read"
	.align	2
.LC242:
	.string	"ssl_check_ctr_renegotiate"
	.align	2
.LC243:
	.string	"mbedtls_ssl_handshake"
	.align	2
.LC244:
	.string	"ssl_handle_hs_message_post_handshake"
	.align	2
.LC245:
	.string	"renegotiation requested, but not honored by client"
	.align	2
.LC246:
	.string	"ignoring non-fatal non-closure alert"
	.align	2
.LC247:
	.string	"bad application data message"
	.align	2
.LC248:
	.string	"<= read"
	.section	.text.mbedtls_ssl_read,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_read
	.type	mbedtls_ssl_read, @function
mbedtls_ssl_read:
.LFB245:
	.loc 5 5910 1
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
	.loc 5 5911 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 5913 8
	lw	a5,-36(s0)
	beq	a5,zero,.L747
	.loc 5 5913 26 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 5913 20 discriminator 1
	bne	a5,zero,.L748
.L747:
	.loc 5 5914 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L749
.L748:
	.loc 5 5917 5
	lui	a5,%hi(.LC241)
	addi	a4,a5,%lo(.LC241)
	li	a5,4096
	addi	a3,a5,1821
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 5920 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 5920 18
	lbu	a4,5(a5)
	.loc 5 5920 8
	li	a5,1
	bne	a4,a5,.L750
	.loc 5 5921 20
	lw	a0,-36(s0)
	call	mbedtls_ssl_flush_output
	sw	a0,-20(s0)
	.loc 5 5921 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L751
	.loc 5 5922 20
	lw	a5,-20(s0)
	j	.L749
.L751:
	.loc 5 5925 16
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 5925 12
	beq	a5,zero,.L750
	.loc 5 5926 16
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 5926 27
	lbu	a4,10(a5)
	.loc 5 5925 35 discriminator 1
	li	a5,1
	bne	a4,a5,.L750
	.loc 5 5927 24
	lw	a0,-36(s0)
	call	mbedtls_ssl_flight_transmit
	sw	a0,-20(s0)
	.loc 5 5927 16 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L750
	.loc 5 5928 24
	lw	a5,-20(s0)
	j	.L749
.L750:
	.loc 5 5947 11
	lw	a0,-36(s0)
	call	ssl_check_ctr_renegotiate
	sw	a0,-20(s0)
	.loc 5 5948 8
	lw	a4,-20(s0)
	li	a5,-28672
	addi	a5,a5,1280
	beq	a4,a5,.L752
	.loc 5 5948 24 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L752
	.loc 5 5950 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC242)
	addi	a4,a4,%lo(.LC242)
	li	a3,4096
	addi	a3,a3,1854
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 5951 16
	lw	a5,-20(s0)
	j	.L749
.L752:
	.loc 5 5955 12
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 5 5955 8
	li	a5,27
	beq	a4,a5,.L754
	.loc 5 5956 15
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake
	sw	a0,-20(s0)
	.loc 5 5957 12
	lw	a4,-20(s0)
	li	a5,-28672
	addi	a5,a5,1280
	beq	a4,a5,.L754
	.loc 5 5957 28 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L754
	.loc 5 5959 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC243)
	addi	a4,a4,%lo(.LC243)
	li	a3,4096
	addi	a3,a3,1863
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 5960 20
	lw	a5,-20(s0)
	j	.L749
.L767:
	.loc 5 5967 16
	lw	a5,-36(s0)
	lw	a5,92(a5)
	.loc 5 5967 12
	beq	a5,zero,.L755
	.loc 5 5968 16
	lw	a5,-36(s0)
	lw	a5,92(a5)
	.loc 5 5968 13
	lw	a4,-36(s0)
	lw	a4,84(a4)
	mv	a0,a4
	jalr	a5
.LVL13:
	mv	a4,a0
	.loc 5 5967 37 discriminator 1
	li	a5,-1
	bne	a4,a5,.L755
	.loc 5 5969 43
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 5969 49
	lw	a5,200(a5)
	.loc 5 5969 13
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_ssl_set_timer
.L755:
	.loc 5 5972 20
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_ssl_read_record
	sw	a0,-20(s0)
	.loc 5 5972 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L756
	.loc 5 5973 16
	lw	a4,-20(s0)
	li	a5,-28672
	addi	a5,a5,-640
	bne	a4,a5,.L757
	.loc 5 5974 24
	li	a5,0
	j	.L749
.L757:
	.loc 5 5977 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC226)
	addi	a4,a4,%lo(.LC226)
	li	a3,4096
	addi	a3,a3,1881
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 5978 20
	lw	a5,-20(s0)
	j	.L749
.L756:
	.loc 5 5981 16
	lw	a5,-36(s0)
	lw	a5,132(a5)
	.loc 5 5981 12
	bne	a5,zero,.L758
	.loc 5 5982 16
	lw	a5,-36(s0)
	lw	a4,128(a5)
	.loc 5 5981 33 discriminator 1
	li	a5,23
	bne	a4,a5,.L758
	.loc 5 5986 24
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_ssl_read_record
	sw	a0,-20(s0)
	.loc 5 5986 16 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L758
	.loc 5 5987 20
	lw	a4,-20(s0)
	li	a5,-28672
	addi	a5,a5,-640
	bne	a4,a5,.L759
	.loc 5 5988 28
	li	a5,0
	j	.L749
.L759:
	.loc 5 5991 17
	lw	a5,-20(s0)
	lui	a4,%hi(.LC226)
	addi	a4,a4,%lo(.LC226)
	li	a3,4096
	addi	a3,a3,1895
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 5992 24
	lw	a5,-20(s0)
	j	.L749
.L758:
	.loc 5 5996 16
	lw	a5,-36(s0)
	lw	a4,128(a5)
	.loc 5 5996 12
	li	a5,22
	bne	a4,a5,.L760
	.loc 5 5997 19
	lw	a0,-36(s0)
	call	ssl_handle_hs_message_post_handshake
	sw	a0,-20(s0)
	.loc 5 5998 16
	lw	a5,-20(s0)
	beq	a5,zero,.L768
	.loc 5 5999 17
	lw	a5,-20(s0)
	lui	a4,%hi(.LC244)
	addi	a4,a4,%lo(.LC244)
	li	a3,4096
	addi	a3,a3,1903
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 6001 24
	lw	a5,-20(s0)
	j	.L749
.L760:
	.loc 5 6028 21
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 5 6028 17
	li	a5,3
	bne	a4,a5,.L763
	.loc 5 6029 20
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 6029 26
	lw	a5,212(a5)
	.loc 5 6029 16
	blt	a5,zero,.L763
	.loc 5 6030 26
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 5 6030 21
	addi	a4,a5,1
	.loc 5 6030 20
	lw	a5,-36(s0)
	sw	a4,12(a5)
	.loc 5 6030 26
	lw	a5,-36(s0)
	lw	a4,12(a5)
	.loc 5 6030 53
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 6030 59
	lw	a5,212(a5)
	.loc 5 6030 20
	ble	a4,a5,.L763
	.loc 5 6031 21
	lui	a5,%hi(.LC245)
	addi	a4,a5,%lo(.LC245)
	li	a5,4096
	addi	a3,a5,1935
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 6033 28
	li	a5,-28672
	addi	a5,a5,-1792
	j	.L749
.L763:
	.loc 5 6040 16
	lw	a5,-36(s0)
	lw	a4,128(a5)
	.loc 5 6040 12
	li	a5,21
	bne	a4,a5,.L764
	.loc 5 6041 13
	lui	a5,%hi(.LC246)
	addi	a4,a5,%lo(.LC246)
	li	a5,4096
	addi	a3,a5,1945
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 6042 20
	li	a5,-28672
	addi	a5,a5,1792
	j	.L749
.L764:
	.loc 5 6045 16
	lw	a5,-36(s0)
	lw	a4,128(a5)
	.loc 5 6045 12
	li	a5,23
	beq	a4,a5,.L765
	.loc 5 6046 13
	lui	a5,%hi(.LC247)
	addi	a4,a5,%lo(.LC247)
	li	a5,4096
	addi	a3,a5,1950
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 6047 20
	li	a5,-28672
	addi	a5,a5,-1792
	j	.L749
.L765:
	.loc 5 6050 27
	lw	a5,-36(s0)
	lw	a4,120(a5)
	.loc 5 6050 22
	lw	a5,-36(s0)
	sw	a4,124(a5)
	.loc 5 6054 13
	lw	a0,-36(s0)
	call	mbedtls_ssl_is_handshake_over
	mv	a4,a0
	.loc 5 6054 12 discriminator 1
	li	a5,1
	bne	a4,a5,.L766
	.loc 5 6055 13
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_ssl_set_timer
.L766:
	.loc 5 6063 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 6063 22
	lbu	a4,4(a5)
	.loc 5 6063 12
	li	a5,1
	bne	a4,a5,.L754
	.loc 5 6064 16
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 5 6063 38 discriminator 1
	li	a5,3
	bne	a4,a5,.L754
	.loc 5 6065 24
	lw	a0,-36(s0)
	call	mbedtls_ssl_resend_hello_request
	sw	a0,-20(s0)
	.loc 5 6065 16 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L754
	.loc 5 6066 17
	lw	a5,-20(s0)
	lui	a4,%hi(.LC65)
	addi	a4,a4,%lo(.LC65)
	li	a3,4096
	addi	a3,a3,1970
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 6068 24
	lw	a5,-20(s0)
	j	.L749
.L768:
	.loc 5 6025 13
	nop
.L754:
	.loc 5 5965 15
	lw	a5,-36(s0)
	lw	a5,124(a5)
	.loc 5 5965 25
	beq	a5,zero,.L767
	.loc 5 6075 11
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	ssl_read_application_data
	sw	a0,-20(s0)
	.loc 5 6077 5
	lui	a5,%hi(.LC248)
	addi	a4,a5,%lo(.LC248)
	li	a5,4096
	addi	a3,a5,1981
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 6079 12
	lw	a5,-20(s0)
.L749:
	.loc 5 6080 1
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
.LFE245:
	.size	mbedtls_ssl_read, .-mbedtls_ssl_read
	.section	.rodata
	.align	2
.LC249:
	.string	"mbedtls_ssl_get_max_out_record_payload"
	.align	2
.LC250:
	.string	"fragment larger than the (negotiated) maximum fragment length: %zu > %zu"
	.section	.text.ssl_write_real,"ax",@progbits
	.align	1
	.type	ssl_write_real, @function
ssl_write_real:
.LFB246:
	.loc 5 6118 1
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
	.loc 5 6119 15
	lw	a0,-36(s0)
	call	mbedtls_ssl_get_max_out_record_payload
	sw	a0,-20(s0)
	.loc 5 6120 18
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 5 6122 8
	lw	a5,-20(s0)
	bge	a5,zero,.L770
	.loc 5 6123 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC249)
	addi	a4,a4,%lo(.LC249)
	li	a3,4096
	addi	a3,a3,2027
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 6124 16
	lw	a5,-20(s0)
	j	.L771
.L770:
	.loc 5 6127 8
	lw	a4,-44(s0)
	lw	a5,-24(s0)
	bleu	a4,a5,.L772
	.loc 5 6129 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 6129 22
	lbu	a4,5(a5)
	.loc 5 6129 12
	li	a5,1
	bne	a4,a5,.L773
	.loc 5 6130 13
	lw	a6,-24(s0)
	lw	a5,-44(s0)
	lui	a4,%hi(.LC250)
	addi	a4,a4,%lo(.LC250)
	li	a3,4096
	addi	a3,a3,2034
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 6134 20
	li	a5,-28672
	addi	a5,a5,-256
	j	.L771
.L773:
	.loc 5 6137 13
	lw	a5,-24(s0)
	sw	a5,-44(s0)
.L772:
	.loc 5 6140 12
	lw	a5,-36(s0)
	lw	a5,228(a5)
	.loc 5 6140 8
	beq	a5,zero,.L774
	.loc 5 6147 20
	lw	a0,-36(s0)
	call	mbedtls_ssl_flush_output
	sw	a0,-20(s0)
	.loc 5 6147 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L775
	.loc 5 6148 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC101)
	addi	a4,a4,%lo(.LC101)
	li	a3,8192
	addi	a3,a3,-2044
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 6149 20
	lw	a5,-20(s0)
	j	.L771
.L774:
	.loc 5 6157 25
	lw	a5,-36(s0)
	lw	a4,-44(s0)
	sw	a4,224(a5)
	.loc 5 6158 26
	lw	a5,-36(s0)
	li	a4,23
	sw	a4,220(a5)
	.loc 5 6159 12
	lw	a5,-44(s0)
	beq	a5,zero,.L776
	.loc 5 6160 23
	lw	a5,-36(s0)
	lw	a5,216(a5)
	.loc 5 6160 13
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcpy
.L776:
	.loc 5 6163 20
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_ssl_write_record
	sw	a0,-20(s0)
	.loc 5 6163 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L775
	.loc 5 6164 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC85)
	addi	a4,a4,%lo(.LC85)
	li	a3,8192
	addi	a3,a3,-2028
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 6165 20
	lw	a5,-20(s0)
	j	.L771
.L775:
	.loc 5 6169 12
	lw	a5,-44(s0)
.L771:
	.loc 5 6170 1
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
.LFE246:
	.size	ssl_write_real, .-ssl_write_real
	.section	.rodata
	.align	2
.LC251:
	.string	"=> write"
	.align	2
.LC252:
	.string	"<= write"
	.section	.text.mbedtls_ssl_write,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_write
	.type	mbedtls_ssl_write, @function
mbedtls_ssl_write:
.LFB247:
	.loc 5 6176 1
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
	.loc 5 6177 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 6179 5
	lui	a5,%hi(.LC251)
	addi	a4,a5,%lo(.LC251)
	li	a5,8192
	addi	a3,a5,-2013
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 6181 8
	lw	a5,-36(s0)
	beq	a5,zero,.L778
	.loc 5 6181 26 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 6181 20 discriminator 1
	bne	a5,zero,.L779
.L778:
	.loc 5 6182 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L780
.L779:
	.loc 5 6186 16
	lw	a0,-36(s0)
	call	ssl_check_ctr_renegotiate
	sw	a0,-20(s0)
	.loc 5 6186 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L781
	.loc 5 6187 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC242)
	addi	a4,a4,%lo(.LC242)
	li	a3,8192
	addi	a3,a3,-2005
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 6188 16
	lw	a5,-20(s0)
	j	.L780
.L781:
	.loc 5 6192 12
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 5 6192 8
	li	a5,27
	beq	a4,a5,.L782
	.loc 5 6193 20
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake
	sw	a0,-20(s0)
	.loc 5 6193 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L782
	.loc 5 6194 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC243)
	addi	a4,a4,%lo(.LC243)
	li	a3,8192
	addi	a3,a3,-1998
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 6195 20
	lw	a5,-20(s0)
	j	.L780
.L782:
	.loc 5 6199 11
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	ssl_write_real
	sw	a0,-20(s0)
	.loc 5 6201 5
	lui	a5,%hi(.LC252)
	addi	a4,a5,%lo(.LC252)
	li	a5,8192
	addi	a3,a5,-1991
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 6203 12
	lw	a5,-20(s0)
.L780:
	.loc 5 6204 1
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
.LFE247:
	.size	mbedtls_ssl_write, .-mbedtls_ssl_write
	.section	.rodata
	.align	2
.LC253:
	.string	"=> write close notify"
	.align	2
.LC254:
	.string	"mbedtls_ssl_send_alert_message"
	.align	2
.LC255:
	.string	"<= write close notify"
	.section	.text.mbedtls_ssl_close_notify,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_close_notify
	.type	mbedtls_ssl_close_notify, @function
mbedtls_ssl_close_notify:
.LFB248:
	.loc 5 6315 1
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
	.loc 5 6316 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 6318 8
	lw	a5,-36(s0)
	beq	a5,zero,.L784
	.loc 5 6318 26 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 6318 20 discriminator 1
	bne	a5,zero,.L785
.L784:
	.loc 5 6319 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L786
.L785:
	.loc 5 6322 5
	lui	a5,%hi(.LC253)
	addi	a4,a5,%lo(.LC253)
	li	a5,8192
	addi	a3,a5,-1870
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 6324 9
	lw	a0,-36(s0)
	call	mbedtls_ssl_is_handshake_over
	mv	a4,a0
	.loc 5 6324 8 discriminator 1
	li	a5,1
	bne	a4,a5,.L787
	.loc 5 6325 20
	li	a2,0
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_ssl_send_alert_message
	sw	a0,-20(s0)
	.loc 5 6325 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L787
	.loc 5 6328 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC254)
	addi	a4,a4,%lo(.LC254)
	li	a3,8192
	addi	a3,a3,-1864
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 6329 20
	lw	a5,-20(s0)
	j	.L786
.L787:
	.loc 5 6333 5
	lui	a5,%hi(.LC255)
	addi	a4,a5,%lo(.LC255)
	li	a5,8192
	addi	a3,a5,-1859
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 6335 12
	li	a5,0
.L786:
	.loc 5 6336 1
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
.LFE248:
	.size	mbedtls_ssl_close_notify, .-mbedtls_ssl_close_notify
	.section	.text.mbedtls_ssl_transform_free,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_transform_free
	.type	mbedtls_ssl_transform_free, @function
mbedtls_ssl_transform_free:
.LFB249:
	.loc 5 6339 1
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
	.loc 5 6340 8
	lw	a5,-20(s0)
	beq	a5,zero,.L791
	.loc 5 6348 5
	lw	a5,-20(s0)
	addi	a5,a5,84
	mv	a0,a5
	call	mbedtls_cipher_free
	.loc 5 6349 5
	lw	a5,-20(s0)
	addi	a5,a5,152
	mv	a0,a5
	call	mbedtls_cipher_free
	.loc 5 6357 5
	lw	a5,-20(s0)
	addi	a5,a5,52
	mv	a0,a5
	call	mbedtls_md_free
	.loc 5 6358 5
	lw	a5,-20(s0)
	addi	a5,a5,64
	mv	a0,a5
	call	mbedtls_md_free
	.loc 5 6362 5
	li	a1,352
	lw	a0,-20(s0)
	call	mbedtls_platform_zeroize
	j	.L788
.L791:
	.loc 5 6341 9
	nop
.L788:
	.loc 5 6363 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE249:
	.size	mbedtls_ssl_transform_free, .-mbedtls_ssl_transform_free
	.section	.text.mbedtls_ssl_set_inbound_transform,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_set_inbound_transform
	.type	mbedtls_ssl_set_inbound_transform, @function
mbedtls_ssl_set_inbound_transform:
.LFB250:
	.loc 5 6367 1
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
	.loc 5 6368 23
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,68(a5)
	.loc 5 6369 15
	lw	a5,-20(s0)
	lw	a5,100(a5)
	.loc 5 6369 5
	li	a2,8
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 5 6370 1
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
.LFE250:
	.size	mbedtls_ssl_set_inbound_transform, .-mbedtls_ssl_set_inbound_transform
	.section	.text.mbedtls_ssl_set_outbound_transform,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_set_outbound_transform
	.type	mbedtls_ssl_set_outbound_transform, @function
mbedtls_ssl_set_outbound_transform:
.LFB251:
	.loc 5 6374 1
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
	.loc 5 6375 24
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,72(a5)
	.loc 5 6376 15
	lw	a5,-20(s0)
	addi	a5,a5,236
	.loc 5 6376 5
	li	a2,8
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 5 6377 1
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
.LFE251:
	.size	mbedtls_ssl_set_outbound_transform, .-mbedtls_ssl_set_outbound_transform
	.section	.text.mbedtls_ssl_buffering_free,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_buffering_free
	.type	mbedtls_ssl_buffering_free, @function
mbedtls_ssl_buffering_free:
.LFB252:
	.loc 5 6382 1
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
	.loc 5 6384 42
	lw	a5,-36(s0)
	lw	a5,64(a5)
	sw	a5,-24(s0)
	.loc 5 6386 8
	lw	a5,-24(s0)
	beq	a5,zero,.L799
	.loc 5 6390 5
	lw	a0,-36(s0)
	call	ssl_free_buffered_record
	.loc 5 6392 17
	sw	zero,-20(s0)
	.loc 5 6392 5
	j	.L797
.L798:
	.loc 5 6393 9
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	mv	a1,a5
	lw	a0,-36(s0)
	call	ssl_buffering_free_slot
	.loc 5 6392 40 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L797:
	.loc 5 6392 29 discriminator 1
	lw	a4,-20(s0)
	li	a5,3
	bleu	a4,a5,.L798
	j	.L794
.L799:
	.loc 5 6387 9
	nop
.L794:
	.loc 5 6395 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE252:
	.size	mbedtls_ssl_buffering_free, .-mbedtls_ssl_buffering_free
	.section	.text.ssl_buffering_free_slot,"ax",@progbits
	.align	1
	.type	ssl_buffering_free_slot, @function
ssl_buffering_free_slot:
.LFB253:
	.loc 5 6399 1
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
	.loc 5 6400 42
	lw	a5,-36(s0)
	lw	a5,64(a5)
	sw	a5,-20(s0)
	.loc 5 6401 61
	lbu	a4,-37(s0)
	.loc 5 6401 35
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	addi	a5,a5,544
	lw	a4,-20(s0)
	add	a5,a4,a5
	addi	a5,a5,20
	sw	a5,-24(s0)
	.loc 5 6403 8
	lbu	a4,-37(s0)
	li	a5,3
	bgtu	a4,a5,.L803
	.loc 5 6407 26
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 5 6407 8
	beq	a5,zero,.L800
	.loc 5 6408 22
	lw	a5,-20(s0)
	lw	a4,556(a5)
	.loc 5 6408 53
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 5 6408 44
	sub	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,556(a5)
	.loc 5 6409 40
	lw	a5,-24(s0)
	lw	a4,4(a5)
	.loc 5 6409 9
	lw	a5,-24(s0)
	lw	a5,8(a5)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_zeroize_and_free
	.loc 5 6410 9
	li	a2,12
	li	a1,0
	lw	a0,-24(s0)
	call	memset
	j	.L800
.L803:
	.loc 5 6404 9
	nop
.L800:
	.loc 5 6412 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE253:
	.size	ssl_buffering_free_slot, .-ssl_buffering_free_slot
	.section	.text.mbedtls_ssl_write_version,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_write_version
	.type	mbedtls_ssl_write_version, @function
mbedtls_ssl_write_version:
.LFB254:
	.loc 5 6427 1
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
	sh	a5,-42(s0)
	.loc 5 6430 8
	lw	a4,-40(s0)
	li	a5,1
	bne	a4,a5,.L805
	.loc 5 6432 13
	lhu	a4,-42(s0)
	li	a5,770
	bne	a4,a5,.L806
	.loc 5 6432 13 is_stmt 0 discriminator 1
	li	a5,514
	j	.L807
.L806:
	.loc 5 6432 13 discriminator 2
	li	a5,513
.L807:
	.loc 5 6432 13 discriminator 4
	lhu	a4,-42(s0)
	sub	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 6431 31 is_stmt 1
	addi	a5,a5,-1
	sh	a5,-18(s0)
	j	.L808
.L805:
	.loc 5 6438 31
	lhu	a5,-42(s0)
	sh	a5,-18(s0)
.L808:
	.loc 5 6440 154 discriminator 2
	lhu	a5,-18(s0)
	slli	a4,a5,8
	lhu	a5,-18(s0)
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	lw	a4,-36(s0)
	sw	a4,-24(s0)
	sh	a5,-26(s0)
.LBB117:
.LBB118:
	.loc 6 148 33
	lw	a5,-24(s0)
	sw	a5,-32(s0)
	.loc 6 149 12
	lw	a5,-32(s0)
	lhu	a4,-26(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-26(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 6 153 1
	nop
.LBE118:
.LBE117:
	.loc 5 6441 1
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
.LFE254:
	.size	mbedtls_ssl_write_version, .-mbedtls_ssl_write_version
	.section	.text.mbedtls_ssl_read_version,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_read_version
	.type	mbedtls_ssl_read_version, @function
mbedtls_ssl_read_version:
.LFB255:
	.loc 5 6445 1
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
	lw	a5,-36(s0)
	sw	a5,-24(s0)
.LBB119:
.LBB120:
	.loc 6 122 33
	lw	a5,-24(s0)
	sw	a5,-28(s0)
	.loc 6 123 7
	lw	a5,-28(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-30(s0)
	.loc 6 127 12
	lhu	a5,-30(s0)
.LBE120:
.LBE119:
	.loc 5 6446 83 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	sh	a5,-18(s0)
	.loc 5 6448 8
	lw	a4,-40(s0)
	li	a5,1
	bne	a4,a5,.L811
	.loc 5 6450 13
	lhu	a4,-18(s0)
	li	a5,65536
	addi	a5,a5,-257
	bne	a4,a5,.L812
	.loc 5 6450 13 is_stmt 0 discriminator 1
	li	a5,514
	j	.L813
.L812:
	.loc 5 6450 13 discriminator 2
	li	a5,513
.L813:
	.loc 5 6450 13 discriminator 4
	lhu	a4,-18(s0)
	sub	a5,a5,a4
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 6449 21 is_stmt 1
	addi	a5,a5,-1
	sh	a5,-18(s0)
.L811:
	.loc 5 6455 12
	lhu	a5,-18(s0)
	.loc 5 6456 1
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
.LFE255:
	.size	mbedtls_ssl_read_version, .-mbedtls_ssl_read_version
	.section	.text.mbedtls_ssl_handle_pending_alert,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_handle_pending_alert
	.type	mbedtls_ssl_handle_pending_alert, @function
mbedtls_ssl_handle_pending_alert:
.LFB256:
	.loc 5 6465 1
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
	.loc 5 6469 12
	lw	a5,-36(s0)
	lbu	a5,180(a5)
	.loc 5 6469 8
	bne	a5,zero,.L816
	.loc 5 6470 16
	li	a5,0
	j	.L817
.L816:
	.loc 5 6473 11
	lw	a5,-36(s0)
	lbu	a5,181(a5)
	mv	a2,a5
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_ssl_send_alert_message
	sw	a0,-20(s0)
	.loc 5 6480 8
	lw	a4,-20(s0)
	li	a5,-28672
	addi	a5,a5,1920
	beq	a4,a5,.L818
	.loc 5 6481 25
	lw	a5,-36(s0)
	sb	zero,180(a5)
.L818:
	.loc 5 6484 8
	lw	a5,-20(s0)
	beq	a5,zero,.L819
	.loc 5 6485 16
	lw	a5,-20(s0)
	j	.L817
.L819:
	.loc 5 6488 15
	lw	a5,-36(s0)
	lw	a5,184(a5)
.L817:
	.loc 5 6489 1
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
.LFE256:
	.size	mbedtls_ssl_handle_pending_alert, .-mbedtls_ssl_handle_pending_alert
	.section	.text.mbedtls_ssl_pend_fatal_alert,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_pend_fatal_alert
	.type	mbedtls_ssl_pend_fatal_alert, @function
mbedtls_ssl_pend_fatal_alert:
.LFB257:
	.loc 5 6497 1
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
	.loc 5 6498 21
	lw	a5,-20(s0)
	li	a4,1
	sb	a4,180(a5)
	.loc 5 6499 21
	lw	a5,-20(s0)
	lbu	a4,-21(s0)
	sb	a4,181(a5)
	.loc 5 6500 23
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,184(a5)
	.loc 5 6501 1
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
.LFE257:
	.size	mbedtls_ssl_pend_fatal_alert, .-mbedtls_ssl_pend_fatal_alert
	.text
.Letext0:
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecp.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/cmac.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/pk.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ssl_ciphersuites.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/asn1.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/x509.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/x509_crl.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/x509_crt.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/dhm.h"
	.file 21 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecdh.h"
	.file 22 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/constant_time_internal.h"
	.file 23 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 24 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 25 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/constant_time.h"
	.file 26 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.file 27 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/debug_internal.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5897
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x40
	.4byte	.LASF803
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL3
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x1f
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xf
	.4byte	0x32
	.uleb128 0x41
	.4byte	0x32
	.uleb128 0x1f
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x1f
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x1f
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1f
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x1f
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x1f
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x42
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xf
	.4byte	0x6d
	.uleb128 0x1f
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xd
	.4byte	.LASF12
	.byte	0x8
	.byte	0xe5
	.byte	0x16
	.4byte	0x79
	.uleb128 0xf
	.4byte	0x80
	.uleb128 0x1f
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xd
	.4byte	.LASF13
	.byte	0x9
	.byte	0x28
	.byte	0x12
	.4byte	0x51
	.uleb128 0xd
	.4byte	.LASF14
	.byte	0x9
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0xd
	.4byte	.LASF15
	.byte	0x9
	.byte	0x31
	.byte	0x1c
	.4byte	0x4a
	.uleb128 0xf
	.4byte	0xb0
	.uleb128 0xd
	.4byte	.LASF16
	.byte	0x9
	.byte	0x34
	.byte	0x1b
	.4byte	0x58
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x9
	.byte	0x37
	.byte	0x20
	.4byte	0x66
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x9
	.byte	0x56
	.byte	0x16
	.4byte	0x79
	.uleb128 0x43
	.byte	0x4
	.uleb128 0x36
	.4byte	0xe5
	.uleb128 0x6
	.4byte	0x32
	.uleb128 0xf
	.4byte	0xec
	.uleb128 0x6
	.4byte	0xfb
	.uleb128 0x1f
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0xf
	.4byte	0xfb
	.uleb128 0x6
	.4byte	0x102
	.uleb128 0x6
	.4byte	0x116
	.uleb128 0x36
	.4byte	0x10c
	.uleb128 0x44
	.uleb128 0x37
	.byte	0x2
	.byte	0x6
	.byte	0x56
	.4byte	0x12b
	.uleb128 0xa
	.string	"x"
	.byte	0x6
	.byte	0x57
	.byte	0xe
	.4byte	0xb0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x6
	.byte	0x58
	.byte	0x1b
	.4byte	0x117
	.uleb128 0x12
	.4byte	0x6d
	.4byte	0x150
	.uleb128 0x2
	.4byte	0xe5
	.uleb128 0x2
	.4byte	0xec
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0xa
	.byte	0xaa
	.byte	0x12
	.4byte	0xc1
	.uleb128 0x18
	.4byte	.LASF22
	.byte	0x8
	.byte	0xa
	.byte	0xd0
	.byte	0x10
	.4byte	0x18b
	.uleb128 0xa
	.string	"p"
	.byte	0xa
	.byte	0xd5
	.byte	0x17
	.4byte	0x18b
	.byte	0
	.uleb128 0xa
	.string	"s"
	.byte	0xa
	.byte	0xe2
	.byte	0x12
	.4byte	0x43
	.byte	0x4
	.uleb128 0xa
	.string	"n"
	.byte	0xa
	.byte	0xe5
	.byte	0x14
	.4byte	0x4a
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.4byte	0x150
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0xa
	.byte	0xf0
	.byte	0x1
	.4byte	0x15c
	.uleb128 0x2b
	.byte	0x7
	.4byte	0x32
	.byte	0xb
	.byte	0x66
	.4byte	0x1fd
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x6
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0x7
	.uleb128 0x5
	.4byte	.LASF31
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF32
	.byte	0x9
	.uleb128 0x5
	.4byte	.LASF33
	.byte	0xa
	.uleb128 0x5
	.4byte	.LASF34
	.byte	0xb
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF36
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0xb
	.byte	0x75
	.byte	0x3
	.4byte	0x19c
	.uleb128 0x18
	.4byte	.LASF38
	.byte	0x18
	.byte	0xb
	.byte	0x9e
	.byte	0x10
	.4byte	0x238
	.uleb128 0xa
	.string	"X"
	.byte	0xb
	.byte	0x9f
	.byte	0x11
	.4byte	0x190
	.byte	0
	.uleb128 0xa
	.string	"Y"
	.byte	0xb
	.byte	0xa0
	.byte	0x11
	.4byte	0x190
	.byte	0x8
	.uleb128 0xa
	.string	"Z"
	.byte	0xb
	.byte	0xa1
	.byte	0x11
	.4byte	0x190
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0xb
	.byte	0xa3
	.byte	0x1
	.4byte	0x209
	.uleb128 0x18
	.4byte	.LASF39
	.byte	0x60
	.byte	0xb
	.byte	0xe9
	.byte	0x10
	.4byte	0x309
	.uleb128 0xa
	.string	"id"
	.byte	0xb
	.byte	0xea
	.byte	0x1a
	.4byte	0x1fd
	.byte	0
	.uleb128 0xa
	.string	"P"
	.byte	0xb
	.byte	0xeb
	.byte	0x11
	.4byte	0x190
	.byte	0x4
	.uleb128 0xa
	.string	"A"
	.byte	0xb
	.byte	0xec
	.byte	0x11
	.4byte	0x190
	.byte	0xc
	.uleb128 0xa
	.string	"B"
	.byte	0xb
	.byte	0xf1
	.byte	0x11
	.4byte	0x190
	.byte	0x14
	.uleb128 0xa
	.string	"G"
	.byte	0xb
	.byte	0xf3
	.byte	0x17
	.4byte	0x238
	.byte	0x1c
	.uleb128 0xa
	.string	"N"
	.byte	0xb
	.byte	0xf4
	.byte	0x11
	.4byte	0x190
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0xb
	.byte	0xf5
	.byte	0xc
	.4byte	0x80
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0xb
	.byte	0xf6
	.byte	0xc
	.4byte	0x80
	.byte	0x40
	.uleb128 0xa
	.string	"h"
	.byte	0xb
	.byte	0xfb
	.byte	0x12
	.4byte	0x79
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0xb
	.byte	0xfc
	.byte	0xa
	.4byte	0x31d
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0xb
	.byte	0xfe
	.byte	0xa
	.4byte	0x33b
	.byte	0x4c
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0xb
	.byte	0xff
	.byte	0xa
	.4byte	0x33b
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xb
	.2byte	0x100
	.byte	0xb
	.4byte	0xe5
	.byte	0x54
	.uleb128 0x15
	.string	"T"
	.byte	0xb
	.2byte	0x101
	.byte	0x18
	.4byte	0x336
	.byte	0x58
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0xb
	.2byte	0x102
	.byte	0xc
	.4byte	0x80
	.byte	0x5c
	.byte	0
	.uleb128 0x12
	.4byte	0x6d
	.4byte	0x318
	.uleb128 0x2
	.4byte	0x318
	.byte	0
	.uleb128 0x6
	.4byte	0x190
	.uleb128 0x6
	.4byte	0x309
	.uleb128 0x12
	.4byte	0x6d
	.4byte	0x336
	.uleb128 0x2
	.4byte	0x336
	.uleb128 0x2
	.4byte	0xe5
	.byte	0
	.uleb128 0x6
	.4byte	0x238
	.uleb128 0x6
	.4byte	0x322
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0xb
	.2byte	0x104
	.byte	0x1
	.4byte	0x244
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0xb
	.2byte	0x16c
	.byte	0x28
	.4byte	0x35a
	.uleb128 0x2e
	.4byte	.LASF49
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0xb
	.2byte	0x173
	.byte	0x2b
	.4byte	0x36c
	.uleb128 0x2e
	.4byte	.LASF50
	.uleb128 0x22
	.byte	0x10
	.byte	0xb
	.2byte	0x178
	.byte	0x9
	.4byte	0x3b3
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0xb
	.2byte	0x179
	.byte	0xe
	.4byte	0x79
	.byte	0
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0xb
	.2byte	0x17a
	.byte	0xe
	.4byte	0x79
	.byte	0x4
	.uleb128 0x15
	.string	"rsm"
	.byte	0xb
	.2byte	0x17b
	.byte	0x22
	.4byte	0x3b3
	.byte	0x8
	.uleb128 0x15
	.string	"ma"
	.byte	0xb
	.2byte	0x17c
	.byte	0x25
	.4byte	0x3b8
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.4byte	0x34d
	.uleb128 0x6
	.4byte	0x35f
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0xb
	.2byte	0x17d
	.byte	0x3
	.4byte	0x371
	.uleb128 0x2b
	.byte	0x7
	.4byte	0x32
	.byte	0xc
	.byte	0x2f
	.4byte	0x41f
	.uleb128 0x5
	.4byte	.LASF54
	.byte	0
	.uleb128 0x5
	.4byte	.LASF55
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF56
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF57
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF58
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF59
	.byte	0x9
	.uleb128 0x5
	.4byte	.LASF60
	.byte	0xa
	.uleb128 0x5
	.4byte	.LASF61
	.byte	0xb
	.uleb128 0x5
	.4byte	.LASF62
	.byte	0x10
	.uleb128 0x5
	.4byte	.LASF63
	.byte	0x11
	.uleb128 0x5
	.4byte	.LASF64
	.byte	0x12
	.uleb128 0x5
	.4byte	.LASF65
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0xc
	.byte	0x3c
	.byte	0x3
	.4byte	0x3ca
	.uleb128 0xf
	.4byte	0x41f
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0xc
	.byte	0x6b
	.byte	0x22
	.4byte	0x441
	.uleb128 0xf
	.4byte	0x430
	.uleb128 0x2e
	.4byte	.LASF67
	.uleb128 0x18
	.4byte	.LASF68
	.byte	0xc
	.byte	0xc
	.byte	0x7a
	.byte	0x10
	.4byte	0x47b
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0xc
	.byte	0x7c
	.byte	0x1e
	.4byte	0x47b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0xc
	.byte	0x84
	.byte	0xb
	.4byte	0xe5
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0xc
	.byte	0x88
	.byte	0xb
	.4byte	0xe5
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	0x43c
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0xc
	.byte	0x8a
	.byte	0x3
	.4byte	0x446
	.uleb128 0xf
	.4byte	0x480
	.uleb128 0x19
	.4byte	0x32
	.4byte	0x4a1
	.uleb128 0x1a
	.4byte	0x79
	.byte	0x3f
	.byte	0
	.uleb128 0x2b
	.byte	0x7
	.4byte	0x32
	.byte	0x1
	.byte	0xac
	.4byte	0x502
	.uleb128 0x5
	.4byte	.LASF72
	.byte	0
	.uleb128 0x5
	.4byte	.LASF73
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF74
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF75
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF76
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF77
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF78
	.byte	0x6
	.uleb128 0x5
	.4byte	.LASF79
	.byte	0x7
	.uleb128 0x5
	.4byte	.LASF80
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF81
	.byte	0x9
	.uleb128 0x5
	.4byte	.LASF82
	.byte	0xa
	.uleb128 0x5
	.4byte	.LASF83
	.byte	0xb
	.uleb128 0x5
	.4byte	.LASF84
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF85
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0x1
	.byte	0xbb
	.byte	0x3
	.4byte	0x4a1
	.uleb128 0x2b
	.byte	0x5
	.4byte	0x2b
	.byte	0x1
	.byte	0xc7
	.4byte	0x52d
	.uleb128 0x45
	.4byte	.LASF87
	.sleb128 -1
	.uleb128 0x5
	.4byte	.LASF88
	.byte	0
	.uleb128 0x5
	.4byte	.LASF89
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF90
	.byte	0x1
	.byte	0xcb
	.byte	0x3
	.4byte	0x50e
	.uleb128 0xd
	.4byte	.LASF91
	.byte	0x1
	.byte	0xf9
	.byte	0x27
	.4byte	0x545
	.uleb128 0x18
	.4byte	.LASF91
	.byte	0x24
	.byte	0xd
	.byte	0x3b
	.byte	0x8
	.4byte	0x57a
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0xd
	.byte	0x3d
	.byte	0x13
	.4byte	0x701
	.byte	0
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0xd
	.byte	0x41
	.byte	0x13
	.4byte	0x701
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0xd
	.byte	0x44
	.byte	0xc
	.4byte	0x80
	.byte	0x20
	.byte	0
	.uleb128 0x24
	.4byte	.LASF95
	.byte	0x8
	.byte	0x1
	.2byte	0x10a
	.byte	0x10
	.4byte	0x600
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x10c
	.byte	0x11
	.4byte	0x107
	.byte	0
	.uleb128 0x20
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x10f
	.byte	0x12
	.4byte	0x79
	.byte	0x5
	.byte	0x20
	.uleb128 0x20
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x115
	.byte	0x12
	.4byte	0x79
	.byte	0x3
	.byte	0x25
	.uleb128 0x20
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x11b
	.byte	0x12
	.4byte	0x79
	.byte	0x4
	.byte	0x28
	.uleb128 0x20
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x120
	.byte	0x12
	.4byte	0x79
	.byte	0x4
	.byte	0x2c
	.uleb128 0x20
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x128
	.byte	0x12
	.4byte	0x79
	.byte	0x8
	.byte	0x30
	.uleb128 0x20
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x12e
	.byte	0x12
	.4byte	0x79
	.byte	0x2
	.byte	0x38
	.uleb128 0x20
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x131
	.byte	0x12
	.4byte	0x79
	.byte	0x5
	.byte	0x3a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x133
	.byte	0x3
	.4byte	0x57a
	.uleb128 0xf
	.4byte	0x600
	.uleb128 0x24
	.4byte	.LASF104
	.byte	0x44
	.byte	0x1
	.2byte	0x13c
	.byte	0x10
	.4byte	0x6ba
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x13e
	.byte	0x22
	.4byte	0x6ba
	.byte	0
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x141
	.byte	0x9
	.4byte	0x6d
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x146
	.byte	0x19
	.4byte	0x52d
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x14c
	.byte	0xb
	.4byte	0x6d4
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x152
	.byte	0xa
	.4byte	0x6fc
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x158
	.byte	0x13
	.4byte	0x701
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x15b
	.byte	0xc
	.4byte	0x80
	.byte	0x24
	.uleb128 0x15
	.string	"iv"
	.byte	0x1
	.2byte	0x15f
	.byte	0x13
	.4byte	0x701
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x162
	.byte	0xc
	.4byte	0x80
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x165
	.byte	0xb
	.4byte	0xe5
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x169
	.byte	0x1d
	.4byte	0x711
	.byte	0x40
	.byte	0
	.uleb128 0x6
	.4byte	0x60d
	.uleb128 0x2c
	.4byte	0x6d4
	.uleb128 0x2
	.4byte	0xec
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x6
	.4byte	0x6bf
	.uleb128 0x12
	.4byte	0x6d
	.4byte	0x6f7
	.uleb128 0x2
	.4byte	0xec
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0x6f7
	.uleb128 0x2
	.4byte	0x6f7
	.byte	0
	.uleb128 0x6
	.4byte	0x80
	.uleb128 0x6
	.4byte	0x6d9
	.uleb128 0x19
	.4byte	0x32
	.4byte	0x711
	.uleb128 0x1a
	.4byte	0x79
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0x539
	.uleb128 0xc
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x177
	.byte	0x3
	.4byte	0x612
	.uleb128 0xf
	.4byte	0x716
	.uleb128 0x6
	.4byte	0xa4
	.uleb128 0x2b
	.byte	0x7
	.4byte	0x32
	.byte	0xe
	.byte	0x49
	.4byte	0x76a
	.uleb128 0x5
	.4byte	.LASF112
	.byte	0
	.uleb128 0x5
	.4byte	.LASF113
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF114
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF115
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF116
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF117
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF118
	.byte	0x6
	.uleb128 0x5
	.4byte	.LASF119
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.4byte	.LASF120
	.byte	0xe
	.byte	0x52
	.byte	0x3
	.4byte	0x72d
	.uleb128 0xd
	.4byte	.LASF121
	.byte	0xe
	.byte	0xd5
	.byte	0x22
	.4byte	0x787
	.uleb128 0xf
	.4byte	0x776
	.uleb128 0x2e
	.4byte	.LASF121
	.uleb128 0x18
	.4byte	.LASF122
	.byte	0x8
	.byte	0xe
	.byte	0xdc
	.byte	0x10
	.4byte	0x7b4
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0xe
	.byte	0xdd
	.byte	0x1e
	.4byte	0x7b4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0xe
	.byte	0xde
	.byte	0xb
	.4byte	0xe5
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	0x782
	.uleb128 0xc
	.4byte	.LASF122
	.byte	0xe
	.2byte	0x109
	.byte	0x3
	.4byte	0x78c
	.uleb128 0x22
	.byte	0x8
	.byte	0xe
	.2byte	0x10f
	.byte	0x9
	.4byte	0x7ed
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0xe
	.2byte	0x110
	.byte	0x1e
	.4byte	0x7b4
	.byte	0
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0xe
	.2byte	0x111
	.byte	0xb
	.4byte	0xe5
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF126
	.byte	0xe
	.2byte	0x112
	.byte	0x3
	.4byte	0x7c6
	.uleb128 0xc
	.4byte	.LASF127
	.byte	0xf
	.2byte	0x1b2
	.byte	0x2a
	.4byte	0x80c
	.uleb128 0xf
	.4byte	0x7fa
	.uleb128 0x24
	.4byte	.LASF127
	.byte	0x10
	.byte	0xf
	.2byte	0x1c0
	.byte	0x8
	.4byte	0x88a
	.uleb128 0x15
	.string	"id"
	.byte	0xf
	.2byte	0x1c1
	.byte	0x9
	.4byte	0x6d
	.byte	0
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0xf
	.2byte	0x1c2
	.byte	0x11
	.4byte	0x107
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0xf
	.2byte	0x1c4
	.byte	0xd
	.4byte	0xa4
	.byte	0x8
	.uleb128 0x15
	.string	"mac"
	.byte	0xf
	.2byte	0x1c5
	.byte	0xd
	.4byte	0xa4
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF129
	.byte	0xf
	.2byte	0x1c6
	.byte	0xd
	.4byte	0xa4
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0xf
	.2byte	0x1c7
	.byte	0xd
	.4byte	0xa4
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0xf
	.2byte	0x1c9
	.byte	0xe
	.4byte	0xb0
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0xf
	.2byte	0x1ca
	.byte	0xe
	.4byte	0xb0
	.byte	0xe
	.byte	0
	.uleb128 0x18
	.4byte	.LASF132
	.byte	0xc
	.byte	0x10
	.byte	0x8d
	.byte	0x10
	.4byte	0x8bd
	.uleb128 0xa
	.string	"tag"
	.byte	0x10
	.byte	0x8e
	.byte	0x9
	.4byte	0x6d
	.byte	0
	.uleb128 0xa
	.string	"len"
	.byte	0x10
	.byte	0x8f
	.byte	0xc
	.4byte	0x80
	.byte	0x4
	.uleb128 0xa
	.string	"p"
	.byte	0x10
	.byte	0x90
	.byte	0x14
	.4byte	0xec
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF132
	.byte	0x10
	.byte	0x92
	.byte	0x1
	.4byte	0x88a
	.uleb128 0x18
	.4byte	.LASF133
	.byte	0x10
	.byte	0x10
	.byte	0xa1
	.byte	0x10
	.4byte	0x8f1
	.uleb128 0xa
	.string	"buf"
	.byte	0x10
	.byte	0xa2
	.byte	0x16
	.4byte	0x8bd
	.byte	0
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0x10
	.byte	0xab
	.byte	0x23
	.4byte	0x8f1
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.4byte	0x8c9
	.uleb128 0xd
	.4byte	.LASF133
	.byte	0x10
	.byte	0xad
	.byte	0x1
	.4byte	0x8c9
	.uleb128 0x18
	.4byte	.LASF135
	.byte	0x20
	.byte	0x10
	.byte	0xb2
	.byte	0x10
	.4byte	0x944
	.uleb128 0xa
	.string	"oid"
	.byte	0x10
	.byte	0xb3
	.byte	0x16
	.4byte	0x8bd
	.byte	0
	.uleb128 0xa
	.string	"val"
	.byte	0x10
	.byte	0xb4
	.byte	0x16
	.4byte	0x8bd
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0x10
	.byte	0xbd
	.byte	0x25
	.4byte	0x944
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF136
	.byte	0x10
	.byte	0xc4
	.byte	0x13
	.4byte	0x32
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.4byte	0x902
	.uleb128 0xd
	.4byte	.LASF135
	.byte	0x10
	.byte	0xc6
	.byte	0x1
	.4byte	0x902
	.uleb128 0xd
	.4byte	.LASF137
	.byte	0x11
	.byte	0xd8
	.byte	0x1a
	.4byte	0x8bd
	.uleb128 0xd
	.4byte	.LASF138
	.byte	0x11
	.byte	0xe3
	.byte	0x21
	.4byte	0x949
	.uleb128 0xd
	.4byte	.LASF139
	.byte	0x11
	.byte	0xe8
	.byte	0x1f
	.4byte	0x8f6
	.uleb128 0x18
	.4byte	.LASF140
	.byte	0x34
	.byte	0x11
	.byte	0xed
	.byte	0x10
	.4byte	0x9bb
	.uleb128 0x9
	.4byte	.LASF141
	.byte	0x11
	.byte	0xee
	.byte	0x16
	.4byte	0x955
	.byte	0
	.uleb128 0x9
	.4byte	.LASF142
	.byte	0x11
	.byte	0xef
	.byte	0x1b
	.4byte	0x96d
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF143
	.byte	0x11
	.byte	0xf0
	.byte	0x16
	.4byte	0x955
	.byte	0x1c
	.uleb128 0xa
	.string	"raw"
	.byte	0x11
	.byte	0xf1
	.byte	0x16
	.4byte	0x955
	.byte	0x28
	.byte	0
	.uleb128 0xd
	.4byte	.LASF140
	.byte	0x11
	.byte	0xf3
	.byte	0x1
	.4byte	0x979
	.uleb128 0x18
	.4byte	.LASF144
	.byte	0x18
	.byte	0x11
	.byte	0xf6
	.byte	0x10
	.4byte	0xa23
	.uleb128 0x9
	.4byte	.LASF145
	.byte	0x11
	.byte	0xf7
	.byte	0x9
	.4byte	0x6d
	.byte	0
	.uleb128 0xa
	.string	"mon"
	.byte	0x11
	.byte	0xf7
	.byte	0xf
	.4byte	0x6d
	.byte	0x4
	.uleb128 0xa
	.string	"day"
	.byte	0x11
	.byte	0xf7
	.byte	0x14
	.4byte	0x6d
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF146
	.byte	0x11
	.byte	0xf8
	.byte	0x9
	.4byte	0x6d
	.byte	0xc
	.uleb128 0xa
	.string	"min"
	.byte	0x11
	.byte	0xf8
	.byte	0xf
	.4byte	0x6d
	.byte	0x10
	.uleb128 0xa
	.string	"sec"
	.byte	0x11
	.byte	0xf8
	.byte	0x14
	.4byte	0x6d
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.4byte	.LASF144
	.byte	0x11
	.byte	0xfa
	.byte	0x1
	.4byte	0x9c7
	.uleb128 0x18
	.4byte	.LASF147
	.byte	0x40
	.byte	0x12
	.byte	0x27
	.byte	0x10
	.4byte	0xa7e
	.uleb128 0xa
	.string	"raw"
	.byte	0x12
	.byte	0x29
	.byte	0x16
	.4byte	0x955
	.byte	0
	.uleb128 0x9
	.4byte	.LASF148
	.byte	0x12
	.byte	0x2b
	.byte	0x16
	.4byte	0x955
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF149
	.byte	0x12
	.byte	0x2d
	.byte	0x17
	.4byte	0xa23
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF150
	.byte	0x12
	.byte	0x33
	.byte	0x16
	.4byte	0x955
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0x12
	.byte	0x38
	.byte	0x24
	.4byte	0xa7e
	.byte	0x3c
	.byte	0
	.uleb128 0x6
	.4byte	0xa2f
	.uleb128 0xd
	.4byte	.LASF147
	.byte	0x12
	.byte	0x3a
	.byte	0x1
	.4byte	0xa2f
	.uleb128 0x18
	.4byte	.LASF151
	.byte	0xf4
	.byte	0x12
	.byte	0x40
	.byte	0x10
	.4byte	0xb6d
	.uleb128 0xa
	.string	"raw"
	.byte	0x12
	.byte	0x41
	.byte	0x16
	.4byte	0x955
	.byte	0
	.uleb128 0xa
	.string	"tbs"
	.byte	0x12
	.byte	0x42
	.byte	0x16
	.4byte	0x955
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF152
	.byte	0x12
	.byte	0x44
	.byte	0x9
	.4byte	0x6d
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF153
	.byte	0x12
	.byte	0x45
	.byte	0x16
	.4byte	0x955
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF154
	.byte	0x12
	.byte	0x47
	.byte	0x16
	.4byte	0x955
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF155
	.byte	0x12
	.byte	0x49
	.byte	0x17
	.4byte	0x961
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF156
	.byte	0x12
	.byte	0x4b
	.byte	0x17
	.4byte	0xa23
	.byte	0x54
	.uleb128 0x9
	.4byte	.LASF157
	.byte	0x12
	.byte	0x4c
	.byte	0x17
	.4byte	0xa23
	.byte	0x6c
	.uleb128 0x9
	.4byte	.LASF158
	.byte	0x12
	.byte	0x4e
	.byte	0x1c
	.4byte	0xa83
	.byte	0x84
	.uleb128 0x9
	.4byte	.LASF159
	.byte	0x12
	.byte	0x50
	.byte	0x16
	.4byte	0x955
	.byte	0xc4
	.uleb128 0x9
	.4byte	.LASF160
	.byte	0x12
	.byte	0x52
	.byte	0x16
	.4byte	0x955
	.byte	0xd0
	.uleb128 0xa
	.string	"sig"
	.byte	0x12
	.byte	0x53
	.byte	0x16
	.4byte	0x955
	.byte	0xdc
	.uleb128 0x9
	.4byte	.LASF161
	.byte	0x12
	.byte	0x54
	.byte	0x17
	.4byte	0x41f
	.byte	0xe8
	.uleb128 0x9
	.4byte	.LASF162
	.byte	0x12
	.byte	0x55
	.byte	0x17
	.4byte	0x76a
	.byte	0xe9
	.uleb128 0x9
	.4byte	.LASF163
	.byte	0x12
	.byte	0x56
	.byte	0xb
	.4byte	0xe5
	.byte	0xec
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0x12
	.byte	0x5b
	.byte	0x1e
	.4byte	0xb6d
	.byte	0xf0
	.byte	0
	.uleb128 0x6
	.4byte	0xa8f
	.uleb128 0xd
	.4byte	.LASF151
	.byte	0x12
	.byte	0x5d
	.byte	0x1
	.4byte	0xa8f
	.uleb128 0x46
	.4byte	.LASF164
	.2byte	0x194
	.byte	0x13
	.byte	0x29
	.byte	0x10
	.4byte	0xd2d
	.uleb128 0x9
	.4byte	.LASF165
	.byte	0x13
	.byte	0x2a
	.byte	0x9
	.4byte	0x6d
	.byte	0
	.uleb128 0xa
	.string	"raw"
	.byte	0x13
	.byte	0x2c
	.byte	0x16
	.4byte	0x955
	.byte	0x4
	.uleb128 0xa
	.string	"tbs"
	.byte	0x13
	.byte	0x2d
	.byte	0x16
	.4byte	0x955
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF152
	.byte	0x13
	.byte	0x2f
	.byte	0x9
	.4byte	0x6d
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF148
	.byte	0x13
	.byte	0x30
	.byte	0x16
	.4byte	0x955
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF153
	.byte	0x13
	.byte	0x31
	.byte	0x16
	.4byte	0x955
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF154
	.byte	0x13
	.byte	0x33
	.byte	0x16
	.4byte	0x955
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF166
	.byte	0x13
	.byte	0x34
	.byte	0x16
	.4byte	0x955
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF155
	.byte	0x13
	.byte	0x36
	.byte	0x17
	.4byte	0x961
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF167
	.byte	0x13
	.byte	0x37
	.byte	0x17
	.4byte	0x961
	.byte	0x70
	.uleb128 0x9
	.4byte	.LASF168
	.byte	0x13
	.byte	0x39
	.byte	0x17
	.4byte	0xa23
	.byte	0x90
	.uleb128 0x9
	.4byte	.LASF169
	.byte	0x13
	.byte	0x3a
	.byte	0x17
	.4byte	0xa23
	.byte	0xa8
	.uleb128 0x9
	.4byte	.LASF170
	.byte	0x13
	.byte	0x3c
	.byte	0x16
	.4byte	0x955
	.byte	0xc0
	.uleb128 0xa
	.string	"pk"
	.byte	0x13
	.byte	0x3d
	.byte	0x18
	.4byte	0x7b9
	.byte	0xcc
	.uleb128 0x9
	.4byte	.LASF171
	.byte	0x13
	.byte	0x3f
	.byte	0x16
	.4byte	0x955
	.byte	0xd4
	.uleb128 0x9
	.4byte	.LASF172
	.byte	0x13
	.byte	0x40
	.byte	0x16
	.4byte	0x955
	.byte	0xe0
	.uleb128 0x9
	.4byte	.LASF173
	.byte	0x13
	.byte	0x41
	.byte	0x16
	.4byte	0x955
	.byte	0xec
	.uleb128 0x9
	.4byte	.LASF174
	.byte	0x13
	.byte	0x42
	.byte	0x1b
	.4byte	0x96d
	.byte	0xf8
	.uleb128 0x1d
	.4byte	.LASF175
	.byte	0x43
	.byte	0x16
	.4byte	0x955
	.2byte	0x108
	.uleb128 0x1d
	.4byte	.LASF176
	.byte	0x44
	.byte	0x1c
	.4byte	0x9bb
	.2byte	0x114
	.uleb128 0x1d
	.4byte	.LASF177
	.byte	0x46
	.byte	0x1b
	.4byte	0x96d
	.2byte	0x148
	.uleb128 0x1d
	.4byte	.LASF178
	.byte	0x48
	.byte	0x9
	.4byte	0x6d
	.2byte	0x158
	.uleb128 0x1d
	.4byte	.LASF179
	.byte	0x49
	.byte	0x9
	.4byte	0x6d
	.2byte	0x15c
	.uleb128 0x1d
	.4byte	.LASF180
	.byte	0x4a
	.byte	0x9
	.4byte	0x6d
	.2byte	0x160
	.uleb128 0x1d
	.4byte	.LASF181
	.byte	0x4c
	.byte	0x12
	.4byte	0x79
	.2byte	0x164
	.uleb128 0x1d
	.4byte	.LASF182
	.byte	0x4e
	.byte	0x1b
	.4byte	0x96d
	.2byte	0x168
	.uleb128 0x1d
	.4byte	.LASF183
	.byte	0x50
	.byte	0x13
	.4byte	0x32
	.2byte	0x178
	.uleb128 0x47
	.string	"sig"
	.byte	0x13
	.byte	0x52
	.byte	0x16
	.4byte	0x955
	.2byte	0x17c
	.uleb128 0x1d
	.4byte	.LASF161
	.byte	0x53
	.byte	0x17
	.4byte	0x41f
	.2byte	0x188
	.uleb128 0x1d
	.4byte	.LASF162
	.byte	0x54
	.byte	0x17
	.4byte	0x76a
	.2byte	0x189
	.uleb128 0x1d
	.4byte	.LASF163
	.byte	0x55
	.byte	0xb
	.4byte	0xe5
	.2byte	0x18c
	.uleb128 0x1d
	.4byte	.LASF134
	.byte	0x5a
	.byte	0x1e
	.4byte	0xd2d
	.2byte	0x190
	.byte	0
	.uleb128 0x6
	.4byte	0xb7e
	.uleb128 0xd
	.4byte	.LASF164
	.byte	0x13
	.byte	0x5c
	.byte	0x1
	.4byte	0xb7e
	.uleb128 0xf
	.4byte	0xd32
	.uleb128 0x18
	.4byte	.LASF184
	.byte	0x10
	.byte	0x13
	.byte	0x7d
	.byte	0x10
	.4byte	0xd85
	.uleb128 0x9
	.4byte	.LASF185
	.byte	0x13
	.byte	0x7e
	.byte	0xe
	.4byte	0xc1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF186
	.byte	0x13
	.byte	0x7f
	.byte	0xe
	.4byte	0xc1
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF187
	.byte	0x13
	.byte	0x82
	.byte	0xe
	.4byte	0xc1
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF188
	.byte	0x13
	.byte	0x83
	.byte	0xe
	.4byte	0xc1
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF184
	.byte	0x13
	.byte	0x85
	.byte	0x1
	.4byte	0xd43
	.uleb128 0xf
	.4byte	0xd85
	.uleb128 0x6
	.4byte	0x7b9
	.uleb128 0x37
	.byte	0x8
	.byte	0x13
	.byte	0xfa
	.4byte	0xdbe
	.uleb128 0xa
	.string	"crt"
	.byte	0x13
	.byte	0xfb
	.byte	0x17
	.4byte	0xdbe
	.byte	0
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x13
	.byte	0xfc
	.byte	0xe
	.4byte	0xc1
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	0xd32
	.uleb128 0xd
	.4byte	.LASF189
	.byte	0x13
	.byte	0xfd
	.byte	0x3
	.4byte	0xd9b
	.uleb128 0x22
	.byte	0x58
	.byte	0x13
	.2byte	0x107
	.byte	0x9
	.4byte	0xe04
	.uleb128 0x1
	.4byte	.LASF190
	.byte	0x13
	.2byte	0x108
	.byte	0x28
	.4byte	0xe04
	.byte	0
	.uleb128 0x15
	.string	"len"
	.byte	0x13
	.2byte	0x109
	.byte	0xe
	.4byte	0x79
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF191
	.byte	0x13
	.2byte	0x110
	.byte	0x17
	.4byte	0xdbe
	.byte	0x54
	.byte	0
	.uleb128 0x19
	.4byte	0xdc3
	.4byte	0xe14
	.uleb128 0x1a
	.4byte	0x79
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.4byte	.LASF192
	.byte	0x13
	.2byte	0x112
	.byte	0x3
	.4byte	0xdcf
	.uleb128 0x28
	.byte	0x1
	.4byte	0x32
	.byte	0x13
	.2byte	0x126
	.byte	0xa
	.4byte	0xe3c
	.uleb128 0x5
	.4byte	.LASF193
	.byte	0
	.uleb128 0x5
	.4byte	.LASF194
	.byte	0x1
	.byte	0
	.uleb128 0x22
	.byte	0x78
	.byte	0x13
	.2byte	0x119
	.byte	0x9
	.4byte	0xeb6
	.uleb128 0x15
	.string	"pk"
	.byte	0x13
	.2byte	0x11b
	.byte	0x1c
	.4byte	0x7ed
	.byte	0
	.uleb128 0x1
	.4byte	.LASF195
	.byte	0x13
	.2byte	0x11e
	.byte	0x17
	.4byte	0xdbe
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF196
	.byte	0x13
	.2byte	0x11f
	.byte	0x17
	.4byte	0xdbe
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF197
	.byte	0x13
	.2byte	0x120
	.byte	0x9
	.4byte	0x6d
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF198
	.byte	0x13
	.2byte	0x123
	.byte	0x9
	.4byte	0x6d
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF199
	.byte	0x13
	.2byte	0x129
	.byte	0x7
	.4byte	0xe21
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF200
	.byte	0x13
	.2byte	0x12a
	.byte	0x9
	.4byte	0x6d
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF201
	.byte	0x13
	.2byte	0x12b
	.byte	0x23
	.4byte	0xe14
	.byte	0x20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF202
	.byte	0x13
	.2byte	0x12d
	.byte	0x3
	.4byte	0xe3c
	.uleb128 0x6
	.4byte	0xd3e
	.uleb128 0x6
	.4byte	0x39
	.uleb128 0xf
	.4byte	0xec8
	.uleb128 0xc
	.4byte	.LASF203
	.byte	0x13
	.2byte	0x310
	.byte	0xf
	.4byte	0xedf
	.uleb128 0x6
	.4byte	0xee4
	.uleb128 0x12
	.4byte	0x6d
	.4byte	0xefd
	.uleb128 0x2
	.4byte	0xe5
	.uleb128 0x2
	.4byte	0xec3
	.uleb128 0x2
	.4byte	0xefd
	.byte	0
	.uleb128 0x6
	.4byte	0xdbe
	.uleb128 0x18
	.4byte	.LASF204
	.byte	0x50
	.byte	0x14
	.byte	0x65
	.byte	0x10
	.4byte	0xf84
	.uleb128 0xa
	.string	"P"
	.byte	0x14
	.byte	0x66
	.byte	0x11
	.4byte	0x190
	.byte	0
	.uleb128 0xa
	.string	"G"
	.byte	0x14
	.byte	0x67
	.byte	0x11
	.4byte	0x190
	.byte	0x8
	.uleb128 0xa
	.string	"X"
	.byte	0x14
	.byte	0x68
	.byte	0x11
	.4byte	0x190
	.byte	0x10
	.uleb128 0xa
	.string	"GX"
	.byte	0x14
	.byte	0x69
	.byte	0x11
	.4byte	0x190
	.byte	0x18
	.uleb128 0xa
	.string	"GY"
	.byte	0x14
	.byte	0x6a
	.byte	0x11
	.4byte	0x190
	.byte	0x20
	.uleb128 0xa
	.string	"K"
	.byte	0x14
	.byte	0x6b
	.byte	0x11
	.4byte	0x190
	.byte	0x28
	.uleb128 0xa
	.string	"RP"
	.byte	0x14
	.byte	0x6c
	.byte	0x11
	.4byte	0x190
	.byte	0x30
	.uleb128 0xa
	.string	"Vi"
	.byte	0x14
	.byte	0x6d
	.byte	0x11
	.4byte	0x190
	.byte	0x38
	.uleb128 0xa
	.string	"Vf"
	.byte	0x14
	.byte	0x6e
	.byte	0x11
	.4byte	0x190
	.byte	0x40
	.uleb128 0xa
	.string	"pX"
	.byte	0x14
	.byte	0x6f
	.byte	0x11
	.4byte	0x190
	.byte	0x48
	.byte	0
	.uleb128 0xd
	.4byte	.LASF204
	.byte	0x14
	.byte	0x71
	.byte	0x1
	.4byte	0xf02
	.uleb128 0x18
	.4byte	.LASF205
	.byte	0xf0
	.byte	0x15
	.byte	0x69
	.byte	0x10
	.4byte	0x1022
	.uleb128 0xa
	.string	"grp"
	.byte	0x15
	.byte	0x6b
	.byte	0x17
	.4byte	0x340
	.byte	0
	.uleb128 0xa
	.string	"d"
	.byte	0x15
	.byte	0x6c
	.byte	0x11
	.4byte	0x190
	.byte	0x60
	.uleb128 0xa
	.string	"Q"
	.byte	0x15
	.byte	0x6d
	.byte	0x17
	.4byte	0x238
	.byte	0x68
	.uleb128 0xa
	.string	"Qp"
	.byte	0x15
	.byte	0x6e
	.byte	0x17
	.4byte	0x238
	.byte	0x80
	.uleb128 0xa
	.string	"z"
	.byte	0x15
	.byte	0x6f
	.byte	0x11
	.4byte	0x190
	.byte	0x98
	.uleb128 0x9
	.4byte	.LASF206
	.byte	0x15
	.byte	0x70
	.byte	0x9
	.4byte	0x6d
	.byte	0xa0
	.uleb128 0xa
	.string	"Vi"
	.byte	0x15
	.byte	0x71
	.byte	0x17
	.4byte	0x238
	.byte	0xa4
	.uleb128 0xa
	.string	"Vf"
	.byte	0x15
	.byte	0x72
	.byte	0x17
	.4byte	0x238
	.byte	0xbc
	.uleb128 0xa
	.string	"_d"
	.byte	0x15
	.byte	0x73
	.byte	0x11
	.4byte	0x190
	.byte	0xd4
	.uleb128 0x9
	.4byte	.LASF207
	.byte	0x15
	.byte	0x75
	.byte	0x9
	.4byte	0x6d
	.byte	0xdc
	.uleb128 0xa
	.string	"rs"
	.byte	0x15
	.byte	0x76
	.byte	0x1d
	.4byte	0x3bd
	.byte	0xe0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF205
	.byte	0x15
	.byte	0x8e
	.byte	0x1
	.4byte	0xf90
	.uleb128 0x19
	.4byte	0x32
	.4byte	0x103e
	.uleb128 0x1a
	.4byte	0x79
	.byte	0x65
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	0x32
	.byte	0x2
	.2byte	0x2eb
	.byte	0xe
	.4byte	0x1101
	.uleb128 0x5
	.4byte	.LASF208
	.byte	0
	.uleb128 0x5
	.4byte	.LASF209
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF210
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF211
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF212
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF213
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF214
	.byte	0x6
	.uleb128 0x5
	.4byte	.LASF215
	.byte	0x7
	.uleb128 0x5
	.4byte	.LASF216
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF217
	.byte	0x9
	.uleb128 0x5
	.4byte	.LASF218
	.byte	0xa
	.uleb128 0x5
	.4byte	.LASF219
	.byte	0xb
	.uleb128 0x5
	.4byte	.LASF220
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF221
	.byte	0xd
	.uleb128 0x5
	.4byte	.LASF222
	.byte	0xe
	.uleb128 0x5
	.4byte	.LASF223
	.byte	0xf
	.uleb128 0x5
	.4byte	.LASF224
	.byte	0x10
	.uleb128 0x5
	.4byte	.LASF225
	.byte	0x11
	.uleb128 0x5
	.4byte	.LASF226
	.byte	0x12
	.uleb128 0x5
	.4byte	.LASF227
	.byte	0x13
	.uleb128 0x5
	.4byte	.LASF228
	.byte	0x14
	.uleb128 0x5
	.4byte	.LASF229
	.byte	0x15
	.uleb128 0x5
	.4byte	.LASF230
	.byte	0x16
	.uleb128 0x5
	.4byte	.LASF231
	.byte	0x17
	.uleb128 0x5
	.4byte	.LASF232
	.byte	0x18
	.uleb128 0x5
	.4byte	.LASF233
	.byte	0x19
	.uleb128 0x5
	.4byte	.LASF234
	.byte	0x1a
	.uleb128 0x5
	.4byte	.LASF235
	.byte	0x1b
	.uleb128 0x5
	.4byte	.LASF236
	.byte	0x1c
	.uleb128 0x5
	.4byte	.LASF237
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF238
	.byte	0x2
	.2byte	0x30b
	.byte	0x1
	.4byte	0x103e
	.uleb128 0xc
	.4byte	.LASF239
	.byte	0x2
	.2byte	0x32d
	.byte	0xd
	.4byte	0x111b
	.uleb128 0x12
	.4byte	0x6d
	.4byte	0x1134
	.uleb128 0x2
	.4byte	0xe5
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0xc
	.4byte	.LASF240
	.byte	0x2
	.2byte	0x345
	.byte	0xd
	.4byte	0x137
	.uleb128 0xc
	.4byte	.LASF241
	.byte	0x2
	.2byte	0x35f
	.byte	0xd
	.4byte	0x114e
	.uleb128 0x12
	.4byte	0x6d
	.4byte	0x116c
	.uleb128 0x2
	.4byte	0xe5
	.uleb128 0x2
	.4byte	0xec
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0xc1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF242
	.byte	0x2
	.2byte	0x379
	.byte	0xe
	.4byte	0x1179
	.uleb128 0x2c
	.4byte	0x118e
	.uleb128 0x2
	.4byte	0xe5
	.uleb128 0x2
	.4byte	0xc1
	.uleb128 0x2
	.4byte	0xc1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF243
	.byte	0x2
	.2byte	0x388
	.byte	0xd
	.4byte	0x119b
	.uleb128 0x12
	.4byte	0x6d
	.4byte	0x11aa
	.uleb128 0x2
	.4byte	0xe5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF244
	.byte	0x2
	.2byte	0x38b
	.byte	0x24
	.4byte	0x11bc
	.uleb128 0xf
	.4byte	0x11aa
	.uleb128 0x24
	.4byte	.LASF244
	.byte	0x78
	.byte	0x2
	.2byte	0x4fb
	.byte	0x8
	.4byte	0x128e
	.uleb128 0x1
	.4byte	.LASF245
	.byte	0x2
	.2byte	0x4fd
	.byte	0x13
	.4byte	0x32
	.byte	0
	.uleb128 0x1
	.4byte	.LASF246
	.byte	0x2
	.2byte	0x505
	.byte	0x13
	.4byte	0x32
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF247
	.byte	0x2
	.2byte	0x506
	.byte	0xd
	.4byte	0xa4
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF248
	.byte	0x2
	.2byte	0x50b
	.byte	0x22
	.4byte	0x2175
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF249
	.byte	0x2
	.2byte	0x510
	.byte	0x9
	.4byte	0x6d
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF250
	.byte	0x2
	.2byte	0x511
	.byte	0xc
	.4byte	0x80
	.byte	0xc
	.uleb128 0x15
	.string	"id"
	.byte	0x2
	.2byte	0x512
	.byte	0x13
	.4byte	0x2182
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF251
	.byte	0x2
	.2byte	0x513
	.byte	0x13
	.4byte	0x2192
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF252
	.byte	0x2
	.2byte	0x517
	.byte	0x17
	.4byte	0xdbe
	.byte	0x60
	.uleb128 0x1
	.4byte	.LASF253
	.byte	0x2
	.2byte	0x520
	.byte	0xe
	.4byte	0xc1
	.byte	0x64
	.uleb128 0x1
	.4byte	.LASF254
	.byte	0x2
	.2byte	0x523
	.byte	0x14
	.4byte	0xec
	.byte	0x68
	.uleb128 0x1
	.4byte	.LASF255
	.byte	0x2
	.2byte	0x524
	.byte	0xc
	.4byte	0x80
	.byte	0x6c
	.uleb128 0x1
	.4byte	.LASF256
	.byte	0x2
	.2byte	0x525
	.byte	0xe
	.4byte	0xc1
	.byte	0x70
	.uleb128 0x1
	.4byte	.LASF257
	.byte	0x2
	.2byte	0x557
	.byte	0x9
	.4byte	0x6d
	.byte	0x74
	.byte	0
	.uleb128 0xc
	.4byte	.LASF258
	.byte	0x2
	.2byte	0x38c
	.byte	0x24
	.4byte	0x12a0
	.uleb128 0xf
	.4byte	0x128e
	.uleb128 0x2f
	.4byte	.LASF258
	.2byte	0x260
	.byte	0x2
	.2byte	0x6c3
	.byte	0x8
	.4byte	0x16d7
	.uleb128 0x1
	.4byte	.LASF259
	.byte	0x2
	.2byte	0x6c4
	.byte	0x1f
	.4byte	0x23eb
	.byte	0
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x2
	.2byte	0x6c9
	.byte	0x9
	.4byte	0x6d
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF260
	.byte	0x2
	.2byte	0x6cb
	.byte	0x9
	.4byte	0x6d
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF261
	.byte	0x2
	.2byte	0x6cc
	.byte	0x9
	.4byte	0x6d
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF248
	.byte	0x2
	.2byte	0x6e1
	.byte	0x22
	.4byte	0x2175
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x6f4
	.byte	0xe
	.4byte	0x79
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF263
	.byte	0x2
	.2byte	0x6f8
	.byte	0xa
	.4byte	0x22ff
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF264
	.byte	0x2
	.2byte	0x6f9
	.byte	0xb
	.4byte	0xe5
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF265
	.byte	0x2
	.2byte	0x6fc
	.byte	0x19
	.4byte	0x23f0
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF266
	.byte	0x2
	.2byte	0x6fd
	.byte	0x19
	.4byte	0x23f5
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF267
	.byte	0x2
	.2byte	0x6fe
	.byte	0x21
	.4byte	0x23fa
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF268
	.byte	0x2
	.2byte	0x701
	.byte	0xb
	.4byte	0xe5
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF269
	.byte	0x2
	.2byte	0x706
	.byte	0x1a
	.4byte	0x2011
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF270
	.byte	0x2
	.2byte	0x707
	.byte	0x1a
	.4byte	0x2011
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF271
	.byte	0x2
	.2byte	0x708
	.byte	0x1a
	.4byte	0x2011
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF272
	.byte	0x2
	.2byte	0x709
	.byte	0x1a
	.4byte	0x2011
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF273
	.byte	0x2
	.2byte	0x70b
	.byte	0x23
	.4byte	0x23ff
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF274
	.byte	0x2
	.2byte	0x711
	.byte	0x1c
	.4byte	0x2409
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF275
	.byte	0x2
	.2byte	0x714
	.byte	0x1c
	.4byte	0x2409
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF276
	.byte	0x2
	.2byte	0x717
	.byte	0x1c
	.4byte	0x2409
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF277
	.byte	0x2
	.2byte	0x71b
	.byte	0x1c
	.4byte	0x2409
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF278
	.byte	0x2
	.2byte	0x729
	.byte	0xb
	.4byte	0xe5
	.byte	0x54
	.uleb128 0x1
	.4byte	.LASF279
	.byte	0x2
	.2byte	0x72b
	.byte	0x1e
	.4byte	0x240e
	.byte	0x58
	.uleb128 0x1
	.4byte	.LASF280
	.byte	0x2
	.2byte	0x72c
	.byte	0x1e
	.4byte	0x2413
	.byte	0x5c
	.uleb128 0x1
	.4byte	.LASF281
	.byte	0x2
	.2byte	0x731
	.byte	0x14
	.4byte	0xec
	.byte	0x60
	.uleb128 0x1
	.4byte	.LASF282
	.byte	0x2
	.2byte	0x732
	.byte	0x14
	.4byte	0xec
	.byte	0x64
	.uleb128 0x1
	.4byte	.LASF283
	.byte	0x2
	.2byte	0x735
	.byte	0x14
	.4byte	0xec
	.byte	0x68
	.uleb128 0x1
	.4byte	.LASF284
	.byte	0x2
	.2byte	0x737
	.byte	0x14
	.4byte	0xec
	.byte	0x6c
	.uleb128 0x1
	.4byte	.LASF285
	.byte	0x2
	.2byte	0x73a
	.byte	0x14
	.4byte	0xec
	.byte	0x70
	.uleb128 0x1
	.4byte	.LASF286
	.byte	0x2
	.2byte	0x73b
	.byte	0x14
	.4byte	0xec
	.byte	0x74
	.uleb128 0x1
	.4byte	.LASF287
	.byte	0x2
	.2byte	0x73c
	.byte	0x14
	.4byte	0xec
	.byte	0x78
	.uleb128 0x1
	.4byte	.LASF288
	.byte	0x2
	.2byte	0x73d
	.byte	0x14
	.4byte	0xec
	.byte	0x7c
	.uleb128 0x1
	.4byte	.LASF289
	.byte	0x2
	.2byte	0x73f
	.byte	0x9
	.4byte	0x6d
	.byte	0x80
	.uleb128 0x1
	.4byte	.LASF290
	.byte	0x2
	.2byte	0x740
	.byte	0xc
	.4byte	0x80
	.byte	0x84
	.uleb128 0x1
	.4byte	.LASF291
	.byte	0x2
	.2byte	0x741
	.byte	0xc
	.4byte	0x80
	.byte	0x88
	.uleb128 0x1
	.4byte	.LASF292
	.byte	0x2
	.2byte	0x743
	.byte	0xc
	.4byte	0x80
	.byte	0x8c
	.uleb128 0x1
	.4byte	.LASF293
	.byte	0x2
	.2byte	0x746
	.byte	0xe
	.4byte	0xb0
	.byte	0x90
	.uleb128 0x1
	.4byte	.LASF294
	.byte	0x2
	.2byte	0x747
	.byte	0xc
	.4byte	0x80
	.byte	0x94
	.uleb128 0x1
	.4byte	.LASF295
	.byte	0x2
	.2byte	0x74b
	.byte	0xe
	.4byte	0xcd
	.byte	0x98
	.uleb128 0x1
	.4byte	.LASF296
	.byte	0x2
	.2byte	0x74c
	.byte	0xe
	.4byte	0xcd
	.byte	0xa0
	.uleb128 0x1
	.4byte	.LASF297
	.byte	0x2
	.2byte	0x74f
	.byte	0xc
	.4byte	0x80
	.byte	0xa8
	.uleb128 0x1
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x751
	.byte	0x9
	.4byte	0x6d
	.byte	0xac
	.uleb128 0x1
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x753
	.byte	0x9
	.4byte	0x6d
	.byte	0xb0
	.uleb128 0x1
	.4byte	.LASF300
	.byte	0x2
	.2byte	0x759
	.byte	0x13
	.4byte	0x32
	.byte	0xb4
	.uleb128 0x1
	.4byte	.LASF301
	.byte	0x2
	.2byte	0x75d
	.byte	0x13
	.4byte	0x32
	.byte	0xb5
	.uleb128 0x1
	.4byte	.LASF302
	.byte	0x2
	.2byte	0x75f
	.byte	0x9
	.4byte	0x6d
	.byte	0xb8
	.uleb128 0x1
	.4byte	.LASF303
	.byte	0x2
	.2byte	0x764
	.byte	0xd
	.4byte	0xa4
	.byte	0xbc
	.uleb128 0x1
	.4byte	.LASF304
	.byte	0x2
	.2byte	0x778
	.byte	0x14
	.4byte	0xec
	.byte	0xc0
	.uleb128 0x1
	.4byte	.LASF305
	.byte	0x2
	.2byte	0x779
	.byte	0x14
	.4byte	0xec
	.byte	0xc4
	.uleb128 0x1
	.4byte	.LASF306
	.byte	0x2
	.2byte	0x77a
	.byte	0x14
	.4byte	0xec
	.byte	0xc8
	.uleb128 0x1
	.4byte	.LASF307
	.byte	0x2
	.2byte	0x77c
	.byte	0x14
	.4byte	0xec
	.byte	0xcc
	.uleb128 0x1
	.4byte	.LASF308
	.byte	0x2
	.2byte	0x77f
	.byte	0x14
	.4byte	0xec
	.byte	0xd0
	.uleb128 0x1
	.4byte	.LASF309
	.byte	0x2
	.2byte	0x780
	.byte	0x14
	.4byte	0xec
	.byte	0xd4
	.uleb128 0x1
	.4byte	.LASF310
	.byte	0x2
	.2byte	0x781
	.byte	0x14
	.4byte	0xec
	.byte	0xd8
	.uleb128 0x1
	.4byte	.LASF311
	.byte	0x2
	.2byte	0x783
	.byte	0x9
	.4byte	0x6d
	.byte	0xdc
	.uleb128 0x1
	.4byte	.LASF312
	.byte	0x2
	.2byte	0x784
	.byte	0xc
	.4byte	0x80
	.byte	0xe0
	.uleb128 0x1
	.4byte	.LASF313
	.byte	0x2
	.2byte	0x785
	.byte	0xc
	.4byte	0x80
	.byte	0xe4
	.uleb128 0x1
	.4byte	.LASF314
	.byte	0x2
	.2byte	0x787
	.byte	0xc
	.4byte	0x80
	.byte	0xe8
	.uleb128 0x1
	.4byte	.LASF315
	.byte	0x2
	.2byte	0x78a
	.byte	0x13
	.4byte	0x23db
	.byte	0xec
	.uleb128 0x15
	.string	"mtu"
	.byte	0x2
	.2byte	0x78d
	.byte	0xe
	.4byte	0xb0
	.byte	0xf4
	.uleb128 0x1
	.4byte	.LASF316
	.byte	0x2
	.2byte	0x7b0
	.byte	0xb
	.4byte	0xf6
	.byte	0xf8
	.uleb128 0x1
	.4byte	.LASF317
	.byte	0x2
	.2byte	0x7b4
	.byte	0x11
	.4byte	0x107
	.byte	0xfc
	.uleb128 0xb
	.4byte	.LASF318
	.byte	0x2
	.2byte	0x7bb
	.byte	0x1c
	.4byte	0x2145
	.2byte	0x100
	.uleb128 0xb
	.4byte	.LASF319
	.byte	0x2
	.2byte	0x7c2
	.byte	0x14
	.4byte	0xec
	.2byte	0x204
	.uleb128 0xb
	.4byte	.LASF320
	.byte	0x2
	.2byte	0x7c3
	.byte	0xc
	.4byte	0x80
	.2byte	0x208
	.uleb128 0xb
	.4byte	.LASF321
	.byte	0x2
	.2byte	0x7ca
	.byte	0x9
	.4byte	0x6d
	.2byte	0x20c
	.uleb128 0xb
	.4byte	.LASF322
	.byte	0x2
	.2byte	0x7cd
	.byte	0xc
	.4byte	0x80
	.2byte	0x210
	.uleb128 0xb
	.4byte	.LASF323
	.byte	0x2
	.2byte	0x7ce
	.byte	0xa
	.4byte	0x2418
	.2byte	0x214
	.uleb128 0xb
	.4byte	.LASF324
	.byte	0x2
	.2byte	0x7cf
	.byte	0xa
	.4byte	0x2418
	.2byte	0x220
	.uleb128 0xb
	.4byte	.LASF325
	.byte	0x2
	.2byte	0x7d9
	.byte	0x13
	.4byte	0x2182
	.2byte	0x22c
	.uleb128 0xb
	.4byte	.LASF326
	.byte	0x2
	.2byte	0x7da
	.byte	0xd
	.4byte	0xa4
	.2byte	0x24c
	.uleb128 0xb
	.4byte	.LASF327
	.byte	0x2
	.2byte	0x7db
	.byte	0xd
	.4byte	0xa4
	.2byte	0x24d
	.uleb128 0xb
	.4byte	.LASF328
	.byte	0x2
	.2byte	0x7e2
	.byte	0x20
	.4byte	0x2428
	.2byte	0x250
	.uleb128 0xb
	.4byte	.LASF329
	.byte	0x2
	.2byte	0x7e3
	.byte	0xb
	.4byte	0xe5
	.2byte	0x254
	.uleb128 0xb
	.4byte	.LASF330
	.byte	0x2
	.2byte	0x7ee
	.byte	0x1d
	.4byte	0x2274
	.2byte	0x258
	.byte	0
	.uleb128 0xc
	.4byte	.LASF331
	.byte	0x2
	.2byte	0x38d
	.byte	0x23
	.4byte	0x16e9
	.uleb128 0xf
	.4byte	0x16d7
	.uleb128 0x24
	.4byte	.LASF331
	.byte	0xf4
	.byte	0x2
	.2byte	0x5af
	.byte	0x8
	.4byte	0x1abe
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0x2
	.2byte	0x5b5
	.byte	0x22
	.4byte	0x2175
	.byte	0
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0x2
	.2byte	0x5b6
	.byte	0x22
	.4byte	0x2175
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF247
	.byte	0x2
	.2byte	0x5be
	.byte	0xd
	.4byte	0xa4
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF332
	.byte	0x2
	.2byte	0x5bf
	.byte	0xd
	.4byte	0xa4
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF333
	.byte	0x2
	.2byte	0x5c0
	.byte	0xd
	.4byte	0xa4
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF334
	.byte	0x2
	.2byte	0x5c2
	.byte	0xd
	.4byte	0xa4
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF245
	.byte	0x2
	.2byte	0x5c4
	.byte	0xd
	.4byte	0xa4
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF257
	.byte	0x2
	.2byte	0x5c8
	.byte	0xd
	.4byte	0xa4
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF335
	.byte	0x2
	.2byte	0x5cb
	.byte	0xd
	.4byte	0xa4
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF336
	.byte	0x2
	.2byte	0x5ce
	.byte	0xd
	.4byte	0xa4
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF337
	.byte	0x2
	.2byte	0x5d1
	.byte	0xd
	.4byte	0xa4
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF338
	.byte	0x2
	.2byte	0x5db
	.byte	0xd
	.4byte	0xa4
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF339
	.byte	0x2
	.2byte	0x5e5
	.byte	0xd
	.4byte	0xa4
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF340
	.byte	0x2
	.2byte	0x5e7
	.byte	0xd
	.4byte	0xa4
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF341
	.byte	0x2
	.2byte	0x5ec
	.byte	0xd
	.4byte	0xa4
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF342
	.byte	0x2
	.2byte	0x5f1
	.byte	0xd
	.4byte	0xa4
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF343
	.byte	0x2
	.2byte	0x5fa
	.byte	0x10
	.4byte	0x2281
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF344
	.byte	0x2
	.2byte	0x602
	.byte	0xb
	.4byte	0x22a5
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF345
	.byte	0x2
	.2byte	0x603
	.byte	0xb
	.4byte	0xe5
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF346
	.byte	0x2
	.2byte	0x606
	.byte	0xa
	.4byte	0x22aa
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF347
	.byte	0x2
	.2byte	0x607
	.byte	0xb
	.4byte	0xe5
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF348
	.byte	0x2
	.2byte	0x60a
	.byte	0x1e
	.4byte	0x22af
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF349
	.byte	0x2
	.2byte	0x60c
	.byte	0x1e
	.4byte	0x22b4
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF350
	.byte	0x2
	.2byte	0x60d
	.byte	0xb
	.4byte	0xe5
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF351
	.byte	0x2
	.2byte	0x611
	.byte	0xa
	.4byte	0x22d7
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF352
	.byte	0x2
	.2byte	0x612
	.byte	0xb
	.4byte	0xe5
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF263
	.byte	0x2
	.2byte	0x617
	.byte	0xa
	.4byte	0x22ff
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF264
	.byte	0x2
	.2byte	0x618
	.byte	0xb
	.4byte	0xe5
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF353
	.byte	0x2
	.2byte	0x61e
	.byte	0xa
	.4byte	0x22d7
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF354
	.byte	0x2
	.2byte	0x61f
	.byte	0xb
	.4byte	0xe5
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF355
	.byte	0x2
	.2byte	0x625
	.byte	0xa
	.4byte	0x232c
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF356
	.byte	0x2
	.2byte	0x628
	.byte	0xa
	.4byte	0x2354
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF357
	.byte	0x2
	.2byte	0x62a
	.byte	0xb
	.4byte	0xe5
	.byte	0x54
	.uleb128 0x1
	.4byte	.LASF358
	.byte	0x2
	.2byte	0x62f
	.byte	0xa
	.4byte	0x2381
	.byte	0x58
	.uleb128 0x1
	.4byte	.LASF359
	.byte	0x2
	.2byte	0x633
	.byte	0xa
	.4byte	0x23a4
	.byte	0x5c
	.uleb128 0x1
	.4byte	.LASF360
	.byte	0x2
	.2byte	0x634
	.byte	0xb
	.4byte	0xe5
	.byte	0x60
	.uleb128 0x1
	.4byte	.LASF361
	.byte	0x2
	.2byte	0x637
	.byte	0xc
	.4byte	0x80
	.byte	0x64
	.uleb128 0x1
	.4byte	.LASF362
	.byte	0x2
	.2byte	0x63b
	.byte	0x25
	.4byte	0x23a9
	.byte	0x68
	.uleb128 0x1
	.4byte	.LASF363
	.byte	0x2
	.2byte	0x63c
	.byte	0x1b
	.4byte	0x23ae
	.byte	0x6c
	.uleb128 0x1
	.4byte	.LASF364
	.byte	0x2
	.2byte	0x63d
	.byte	0x17
	.4byte	0xdbe
	.byte	0x70
	.uleb128 0x1
	.4byte	.LASF365
	.byte	0x2
	.2byte	0x63e
	.byte	0x17
	.4byte	0x23b3
	.byte	0x74
	.uleb128 0x1
	.4byte	.LASF366
	.byte	0x2
	.2byte	0x640
	.byte	0x1e
	.4byte	0xed2
	.byte	0x78
	.uleb128 0x1
	.4byte	.LASF367
	.byte	0x2
	.2byte	0x641
	.byte	0xb
	.4byte	0xe5
	.byte	0x7c
	.uleb128 0x1
	.4byte	.LASF368
	.byte	0x2
	.2byte	0x647
	.byte	0x1f
	.4byte	0x23b8
	.byte	0x80
	.uleb128 0x1
	.4byte	.LASF369
	.byte	0x2
	.2byte	0x648
	.byte	0x22
	.4byte	0x23bd
	.byte	0x84
	.uleb128 0x1
	.4byte	.LASF370
	.byte	0x2
	.2byte	0x64a
	.byte	0x21
	.4byte	0x23c2
	.byte	0x88
	.uleb128 0x1
	.4byte	.LASF371
	.byte	0x2
	.2byte	0x64b
	.byte	0x21
	.4byte	0x23c7
	.byte	0x8c
	.uleb128 0x1
	.4byte	.LASF372
	.byte	0x2
	.2byte	0x64c
	.byte	0xb
	.4byte	0xe5
	.byte	0x90
	.uleb128 0x1
	.4byte	.LASF373
	.byte	0x2
	.2byte	0x654
	.byte	0x15
	.4byte	0x23cc
	.byte	0x94
	.uleb128 0x1
	.4byte	.LASF374
	.byte	0x2
	.2byte	0x65b
	.byte	0x15
	.4byte	0x23cc
	.byte	0x98
	.uleb128 0x1
	.4byte	.LASF375
	.byte	0x2
	.2byte	0x65e
	.byte	0x11
	.4byte	0x190
	.byte	0x9c
	.uleb128 0x1
	.4byte	.LASF376
	.byte	0x2
	.2byte	0x65f
	.byte	0x11
	.4byte	0x190
	.byte	0xa4
	.uleb128 0x15
	.string	"psk"
	.byte	0x2
	.2byte	0x66c
	.byte	0x14
	.4byte	0xec
	.byte	0xac
	.uleb128 0x1
	.4byte	.LASF377
	.byte	0x2
	.2byte	0x670
	.byte	0xc
	.4byte	0x80
	.byte	0xb0
	.uleb128 0x1
	.4byte	.LASF378
	.byte	0x2
	.2byte	0x676
	.byte	0x14
	.4byte	0xec
	.byte	0xb4
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x2
	.2byte	0x67b
	.byte	0xc
	.4byte	0x80
	.byte	0xb8
	.uleb128 0x1
	.4byte	.LASF380
	.byte	0x2
	.2byte	0x690
	.byte	0x12
	.4byte	0x23d1
	.byte	0xbc
	.uleb128 0x1
	.4byte	.LASF381
	.byte	0x2
	.2byte	0x695
	.byte	0x25
	.4byte	0x23d6
	.byte	0xc0
	.uleb128 0x1
	.4byte	.LASF382
	.byte	0x2
	.2byte	0x697
	.byte	0xc
	.4byte	0x80
	.byte	0xc4
	.uleb128 0x1
	.4byte	.LASF383
	.byte	0x2
	.2byte	0x69e
	.byte	0xe
	.4byte	0xc1
	.byte	0xc8
	.uleb128 0x1
	.4byte	.LASF384
	.byte	0x2
	.2byte	0x6a1
	.byte	0xe
	.4byte	0xc1
	.byte	0xcc
	.uleb128 0x1
	.4byte	.LASF385
	.byte	0x2
	.2byte	0x6a3
	.byte	0xe
	.4byte	0xc1
	.byte	0xd0
	.uleb128 0x1
	.4byte	.LASF386
	.byte	0x2
	.2byte	0x6a8
	.byte	0x9
	.4byte	0x6d
	.byte	0xd4
	.uleb128 0x1
	.4byte	.LASF387
	.byte	0x2
	.2byte	0x6a9
	.byte	0x13
	.4byte	0x23db
	.byte	0xd8
	.uleb128 0x1
	.4byte	.LASF388
	.byte	0x2
	.2byte	0x6ad
	.byte	0x12
	.4byte	0x79
	.byte	0xe0
	.uleb128 0x1
	.4byte	.LASF389
	.byte	0x2
	.2byte	0x6b0
	.byte	0x12
	.4byte	0x79
	.byte	0xe4
	.uleb128 0x1
	.4byte	.LASF330
	.byte	0x2
	.2byte	0x6b8
	.byte	0x1d
	.4byte	0x2274
	.byte	0xe8
	.uleb128 0x1
	.4byte	.LASF390
	.byte	0x2
	.2byte	0x6bb
	.byte	0x19
	.4byte	0x2234
	.byte	0xec
	.uleb128 0x1
	.4byte	.LASF391
	.byte	0x2
	.2byte	0x6bf
	.byte	0x1d
	.4byte	0xec3
	.byte	0xf0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF392
	.byte	0x2
	.2byte	0x390
	.byte	0x26
	.4byte	0x1ad0
	.uleb128 0xf
	.4byte	0x1abe
	.uleb128 0x2f
	.4byte	.LASF392
	.2byte	0x160
	.byte	0x3
	.2byte	0x461
	.byte	0x8
	.4byte	0x1bdd
	.uleb128 0x1
	.4byte	.LASF393
	.byte	0x3
	.2byte	0x465
	.byte	0xc
	.4byte	0x80
	.byte	0
	.uleb128 0x1
	.4byte	.LASF394
	.byte	0x3
	.2byte	0x466
	.byte	0xc
	.4byte	0x80
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF395
	.byte	0x3
	.2byte	0x467
	.byte	0xc
	.4byte	0x80
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF396
	.byte	0x3
	.2byte	0x468
	.byte	0xc
	.4byte	0x80
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF397
	.byte	0x3
	.2byte	0x469
	.byte	0xc
	.4byte	0x80
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF398
	.byte	0x3
	.2byte	0x46b
	.byte	0x13
	.4byte	0x701
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF399
	.byte	0x3
	.2byte	0x46c
	.byte	0x13
	.4byte	0x701
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF400
	.byte	0x3
	.2byte	0x475
	.byte	0x1a
	.4byte	0x480
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF401
	.byte	0x3
	.2byte	0x476
	.byte	0x1a
	.4byte	0x480
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF257
	.byte	0x3
	.2byte	0x47a
	.byte	0x9
	.4byte	0x6d
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF248
	.byte	0x3
	.2byte	0x47f
	.byte	0x22
	.4byte	0x2175
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF402
	.byte	0x3
	.2byte	0x486
	.byte	0x1e
	.4byte	0x716
	.byte	0x54
	.uleb128 0x1
	.4byte	.LASF403
	.byte	0x3
	.2byte	0x487
	.byte	0x1e
	.4byte	0x716
	.byte	0x98
	.uleb128 0x1
	.4byte	.LASF404
	.byte	0x3
	.2byte	0x48b
	.byte	0xd
	.4byte	0xa4
	.byte	0xdc
	.uleb128 0x1
	.4byte	.LASF405
	.byte	0x3
	.2byte	0x48c
	.byte	0xd
	.4byte	0xa4
	.byte	0xdd
	.uleb128 0x1
	.4byte	.LASF284
	.byte	0x3
	.2byte	0x48d
	.byte	0x13
	.4byte	0x2182
	.byte	0xde
	.uleb128 0x1
	.4byte	.LASF307
	.byte	0x3
	.2byte	0x48e
	.byte	0x13
	.4byte	0x2182
	.byte	0xfe
	.uleb128 0xb
	.4byte	.LASF406
	.byte	0x3
	.2byte	0x496
	.byte	0x13
	.4byte	0x491
	.2byte	0x11e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF407
	.byte	0x2
	.2byte	0x391
	.byte	0x2d
	.4byte	0x1bea
	.uleb128 0x2f
	.4byte	.LASF407
	.2byte	0x3e4
	.byte	0x3
	.2byte	0x285
	.byte	0x8
	.4byte	0x1f49
	.uleb128 0x1
	.4byte	.LASF408
	.byte	0x3
	.2byte	0x288
	.byte	0xd
	.4byte	0xa4
	.byte	0
	.uleb128 0x1
	.4byte	.LASF409
	.byte	0x3
	.2byte	0x289
	.byte	0xd
	.4byte	0xa4
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF410
	.byte	0x3
	.2byte	0x28c
	.byte	0xd
	.4byte	0xa4
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF411
	.byte	0x3
	.2byte	0x292
	.byte	0xd
	.4byte	0xa4
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF412
	.byte	0x3
	.2byte	0x29a
	.byte	0xd
	.4byte	0xa4
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0x3
	.2byte	0x2b0
	.byte	0x22
	.4byte	0x2175
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF335
	.byte	0x3
	.2byte	0x2b4
	.byte	0xd
	.4byte	0xa4
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF413
	.byte	0x3
	.2byte	0x2b8
	.byte	0xd
	.4byte	0xa4
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF414
	.byte	0x3
	.2byte	0x2bc
	.byte	0x13
	.4byte	0x32
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF415
	.byte	0x3
	.2byte	0x2c5
	.byte	0xd
	.4byte	0xa4
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF416
	.byte	0x3
	.2byte	0x2cc
	.byte	0x7
	.4byte	0x2467
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF417
	.byte	0x3
	.2byte	0x2cd
	.byte	0x17
	.4byte	0xdbe
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF418
	.byte	0x3
	.2byte	0x2ce
	.byte	0xc
	.4byte	0x80
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF419
	.byte	0x3
	.2byte	0x2d1
	.byte	0x26
	.4byte	0x25fe
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF420
	.byte	0x3
	.2byte	0x2d4
	.byte	0xb
	.4byte	0x261c
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF421
	.byte	0x3
	.2byte	0x2d6
	.byte	0xb
	.4byte	0x263f
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF422
	.byte	0x3
	.2byte	0x2d8
	.byte	0xb
	.4byte	0x265d
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF423
	.byte	0x3
	.2byte	0x2d9
	.byte	0x1d
	.4byte	0x2662
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF424
	.byte	0x3
	.2byte	0x300
	.byte	0xe
	.4byte	0x2667
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF425
	.byte	0x3
	.2byte	0x309
	.byte	0x19
	.4byte	0xf84
	.byte	0x54
	.uleb128 0x1
	.4byte	.LASF426
	.byte	0x3
	.2byte	0x30e
	.byte	0x1a
	.4byte	0x1022
	.byte	0xa4
	.uleb128 0xb
	.4byte	.LASF427
	.byte	0x3
	.2byte	0x32c
	.byte	0xf
	.4byte	0x2677
	.2byte	0x194
	.uleb128 0x38
	.string	"psk"
	.2byte	0x334
	.byte	0x14
	.4byte	0xec
	.2byte	0x198
	.uleb128 0xb
	.4byte	.LASF377
	.byte	0x3
	.2byte	0x335
	.byte	0xc
	.4byte	0x80
	.2byte	0x19c
	.uleb128 0xb
	.4byte	.LASF428
	.byte	0x3
	.2byte	0x337
	.byte	0xe
	.4byte	0xb0
	.2byte	0x1a0
	.uleb128 0xb
	.4byte	.LASF429
	.byte	0x3
	.2byte	0x33b
	.byte	0x22
	.4byte	0xeb6
	.2byte	0x1a4
	.uleb128 0xb
	.4byte	.LASF363
	.byte	0x3
	.2byte	0x33f
	.byte	0x1b
	.4byte	0x23ae
	.2byte	0x21c
	.uleb128 0xb
	.4byte	.LASF430
	.byte	0x3
	.2byte	0x341
	.byte	0x1b
	.4byte	0x23ae
	.2byte	0x220
	.uleb128 0xb
	.4byte	.LASF431
	.byte	0x3
	.2byte	0x342
	.byte	0x17
	.4byte	0xdbe
	.2byte	0x224
	.uleb128 0xb
	.4byte	.LASF432
	.byte	0x3
	.2byte	0x343
	.byte	0x17
	.4byte	0x23b3
	.2byte	0x228
	.uleb128 0xb
	.4byte	.LASF433
	.byte	0x3
	.2byte	0x361
	.byte	0x7
	.4byte	0x2521
	.2byte	0x22c
	.uleb128 0xb
	.4byte	.LASF434
	.byte	0x3
	.2byte	0x366
	.byte	0x14
	.4byte	0xec
	.2byte	0x270
	.uleb128 0xb
	.4byte	.LASF435
	.byte	0x3
	.2byte	0x36e
	.byte	0xd
	.4byte	0xa4
	.2byte	0x274
	.uleb128 0xb
	.4byte	.LASF436
	.byte	0x3
	.2byte	0x37d
	.byte	0x13
	.4byte	0x32
	.2byte	0x275
	.uleb128 0xb
	.4byte	.LASF437
	.byte	0x3
	.2byte	0x381
	.byte	0x12
	.4byte	0x79
	.2byte	0x278
	.uleb128 0xb
	.4byte	.LASF438
	.byte	0x3
	.2byte	0x382
	.byte	0x12
	.4byte	0x79
	.2byte	0x27c
	.uleb128 0xb
	.4byte	.LASF439
	.byte	0x3
	.2byte	0x384
	.byte	0xe
	.4byte	0xc1
	.2byte	0x280
	.uleb128 0xb
	.4byte	.LASF440
	.byte	0x3
	.2byte	0x385
	.byte	0x1e
	.4byte	0x267c
	.2byte	0x284
	.uleb128 0xb
	.4byte	.LASF441
	.byte	0x3
	.2byte	0x386
	.byte	0x1e
	.4byte	0x267c
	.2byte	0x288
	.uleb128 0xb
	.4byte	.LASF442
	.byte	0x3
	.2byte	0x387
	.byte	0x14
	.4byte	0xec
	.2byte	0x28c
	.uleb128 0xb
	.4byte	.LASF443
	.byte	0x3
	.2byte	0x388
	.byte	0x12
	.4byte	0x79
	.2byte	0x290
	.uleb128 0xb
	.4byte	.LASF444
	.byte	0x3
	.2byte	0x38a
	.byte	0x1c
	.4byte	0x2409
	.2byte	0x294
	.uleb128 0xb
	.4byte	.LASF445
	.byte	0x3
	.2byte	0x38c
	.byte	0x13
	.4byte	0x23db
	.2byte	0x298
	.uleb128 0xb
	.4byte	.LASF446
	.byte	0x3
	.2byte	0x392
	.byte	0xd
	.4byte	0xa4
	.2byte	0x2a0
	.uleb128 0xb
	.4byte	.LASF447
	.byte	0x3
	.2byte	0x396
	.byte	0x13
	.4byte	0x2182
	.2byte	0x2a1
	.uleb128 0xb
	.4byte	.LASF448
	.byte	0x3
	.2byte	0x397
	.byte	0xd
	.4byte	0xa4
	.2byte	0x2c1
	.uleb128 0x38
	.string	"mtu"
	.2byte	0x39b
	.byte	0xe
	.4byte	0xb0
	.2byte	0x2c2
	.uleb128 0xb
	.4byte	.LASF449
	.byte	0x3
	.2byte	0x3a5
	.byte	0x1a
	.4byte	0x480
	.2byte	0x2c4
	.uleb128 0xb
	.4byte	.LASF450
	.byte	0x3
	.2byte	0x3ac
	.byte	0x1a
	.4byte	0x480
	.2byte	0x2d0
	.uleb128 0xb
	.4byte	.LASF451
	.byte	0x3
	.2byte	0x3bb
	.byte	0xd
	.4byte	0xa4
	.2byte	0x2dc
	.uleb128 0xb
	.4byte	.LASF452
	.byte	0x3
	.2byte	0x3d9
	.byte	0x7
	.4byte	0x25dd
	.2byte	0x2e0
	.uleb128 0xb
	.4byte	.LASF406
	.byte	0x3
	.2byte	0x3dd
	.byte	0x13
	.4byte	0x491
	.2byte	0x328
	.uleb128 0xb
	.4byte	.LASF453
	.byte	0x3
	.2byte	0x3e1
	.byte	0x13
	.4byte	0x102e
	.2byte	0x368
	.uleb128 0xb
	.4byte	.LASF454
	.byte	0x3
	.2byte	0x3e3
	.byte	0xc
	.4byte	0x80
	.2byte	0x3d0
	.uleb128 0xb
	.4byte	.LASF455
	.byte	0x3
	.2byte	0x404
	.byte	0xb
	.4byte	0xe5
	.2byte	0x3d4
	.uleb128 0xb
	.4byte	.LASF456
	.byte	0x3
	.2byte	0x408
	.byte	0x1a
	.4byte	0xec8
	.2byte	0x3d8
	.uleb128 0xb
	.4byte	.LASF457
	.byte	0x3
	.2byte	0x409
	.byte	0xc
	.4byte	0x80
	.2byte	0x3dc
	.uleb128 0xb
	.4byte	.LASF391
	.byte	0x3
	.2byte	0x40b
	.byte	0x1d
	.4byte	0xec3
	.2byte	0x3e0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF458
	.byte	0x2
	.2byte	0x394
	.byte	0x25
	.4byte	0x1f56
	.uleb128 0x24
	.4byte	.LASF458
	.byte	0xc
	.byte	0x3
	.2byte	0x4e4
	.byte	0x8
	.4byte	0x1f8f
	.uleb128 0x1
	.4byte	.LASF459
	.byte	0x3
	.2byte	0x4e5
	.byte	0x17
	.4byte	0xdbe
	.byte	0
	.uleb128 0x15
	.string	"key"
	.byte	0x3
	.2byte	0x4e6
	.byte	0x19
	.4byte	0xd96
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x3
	.2byte	0x4e7
	.byte	0x1b
	.4byte	0x23ae
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF460
	.byte	0x2
	.2byte	0x397
	.byte	0x28
	.4byte	0x1fa1
	.uleb128 0xf
	.4byte	0x1f8f
	.uleb128 0x24
	.4byte	.LASF460
	.byte	0x10
	.byte	0x3
	.2byte	0x4ef
	.byte	0x8
	.4byte	0x1fe6
	.uleb128 0x15
	.string	"p"
	.byte	0x3
	.2byte	0x4f0
	.byte	0x14
	.4byte	0xec
	.byte	0
	.uleb128 0x15
	.string	"len"
	.byte	0x3
	.2byte	0x4f1
	.byte	0xc
	.4byte	0x80
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x3
	.2byte	0x4f2
	.byte	0x13
	.4byte	0x32
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x3
	.2byte	0x4f3
	.byte	0x1e
	.4byte	0x267c
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF461
	.byte	0x2
	.2byte	0x3be
	.byte	0xd
	.4byte	0x1ff3
	.uleb128 0x12
	.4byte	0x6d
	.4byte	0x2011
	.uleb128 0x2
	.4byte	0xe5
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0x2011
	.byte	0
	.uleb128 0x6
	.4byte	0x11aa
	.uleb128 0xc
	.4byte	.LASF462
	.byte	0x2
	.2byte	0x3d4
	.byte	0xd
	.4byte	0x2023
	.uleb128 0x12
	.4byte	0x6d
	.4byte	0x2041
	.uleb128 0x2
	.4byte	0xe5
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0x2041
	.byte	0
	.uleb128 0x6
	.4byte	0x11b7
	.uleb128 0xc
	.4byte	.LASF463
	.byte	0x2
	.2byte	0x422
	.byte	0xd
	.4byte	0x2053
	.uleb128 0x12
	.4byte	0x6d
	.4byte	0x2076
	.uleb128 0x2
	.4byte	0x2076
	.uleb128 0x2
	.4byte	0xdbe
	.uleb128 0x2
	.4byte	0x41f
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x6
	.4byte	0x128e
	.uleb128 0xc
	.4byte	.LASF464
	.byte	0x2
	.2byte	0x464
	.byte	0xd
	.4byte	0x2088
	.uleb128 0x12
	.4byte	0x6d
	.4byte	0x20a6
	.uleb128 0x2
	.4byte	0x2076
	.uleb128 0x2
	.4byte	0xdbe
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0xc
	.4byte	.LASF465
	.byte	0x2
	.2byte	0x494
	.byte	0xd
	.4byte	0x20b3
	.uleb128 0x12
	.4byte	0x6d
	.4byte	0x20d1
	.uleb128 0x2
	.4byte	0x2076
	.uleb128 0x2
	.4byte	0xec
	.uleb128 0x2
	.4byte	0x6f7
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0xc
	.4byte	.LASF466
	.byte	0x2
	.2byte	0x4aa
	.byte	0xe
	.4byte	0x20de
	.uleb128 0x2c
	.4byte	0x20e9
	.uleb128 0x2
	.4byte	0x2076
	.byte	0
	.uleb128 0xc
	.4byte	.LASF467
	.byte	0x2
	.2byte	0x4db
	.byte	0x12
	.4byte	0xb0
	.uleb128 0xf
	.4byte	0x20e9
	.uleb128 0x2f
	.4byte	.LASF468
	.2byte	0x104
	.byte	0x2
	.2byte	0x4dd
	.byte	0x10
	.4byte	0x2135
	.uleb128 0x1
	.4byte	.LASF469
	.byte	0x2
	.2byte	0x4df
	.byte	0x1e
	.4byte	0x20e9
	.byte	0
	.uleb128 0x1
	.4byte	.LASF470
	.byte	0x2
	.2byte	0x4e1
	.byte	0xe
	.4byte	0xb0
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF471
	.byte	0x2
	.2byte	0x4e3
	.byte	0x13
	.4byte	0x2135
	.byte	0x4
	.byte	0
	.uleb128 0x19
	.4byte	0x32
	.4byte	0x2145
	.uleb128 0x1a
	.4byte	0x79
	.byte	0xfe
	.byte	0
	.uleb128 0xc
	.4byte	.LASF472
	.byte	0x2
	.2byte	0x4e5
	.byte	0x1
	.4byte	0x20fb
	.uleb128 0x28
	.byte	0x2
	.4byte	0x4a
	.byte	0x2
	.2byte	0x4ea
	.byte	0xe
	.4byte	0x2175
	.uleb128 0x5
	.4byte	.LASF473
	.byte	0
	.uleb128 0x39
	.4byte	.LASF474
	.2byte	0x303
	.uleb128 0x39
	.4byte	.LASF475
	.2byte	0x304
	.byte	0
	.uleb128 0xc
	.4byte	.LASF476
	.byte	0x2
	.2byte	0x4ee
	.byte	0x3
	.4byte	0x2152
	.uleb128 0x19
	.4byte	0x32
	.4byte	0x2192
	.uleb128 0x1a
	.4byte	0x79
	.byte	0x1f
	.byte	0
	.uleb128 0x19
	.4byte	0x32
	.4byte	0x21a2
	.uleb128 0x1a
	.4byte	0x79
	.byte	0x2f
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	0x32
	.byte	0x2
	.2byte	0x562
	.byte	0xe
	.4byte	0x21cf
	.uleb128 0x5
	.4byte	.LASF477
	.byte	0
	.uleb128 0x5
	.4byte	.LASF478
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF479
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF480
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF481
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF482
	.byte	0x2
	.2byte	0x569
	.byte	0x1
	.4byte	0x21a2
	.uleb128 0x28
	.byte	0x1
	.4byte	0x32
	.byte	0x2
	.2byte	0x56b
	.byte	0xe
	.4byte	0x21f1
	.uleb128 0x5
	.4byte	.LASF483
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF484
	.byte	0x2
	.2byte	0x575
	.byte	0x3
	.4byte	0x21dc
	.uleb128 0xc
	.4byte	.LASF485
	.byte	0x2
	.2byte	0x586
	.byte	0xe
	.4byte	0x220b
	.uleb128 0x2c
	.4byte	0x2234
	.uleb128 0x2
	.4byte	0xe5
	.uleb128 0x2
	.4byte	0x21f1
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x21cf
	.byte	0
	.uleb128 0xc
	.4byte	.LASF486
	.byte	0x2
	.2byte	0x59e
	.byte	0xf
	.4byte	0x2241
	.uleb128 0x6
	.4byte	0x2246
	.uleb128 0x12
	.4byte	0x6d
	.4byte	0x2255
	.uleb128 0x2
	.4byte	0x2076
	.byte	0
	.uleb128 0x3a
	.byte	0x4
	.byte	0x2
	.2byte	0x5a7
	.byte	0x9
	.4byte	0x2274
	.uleb128 0x3b
	.string	"n"
	.2byte	0x5a8
	.byte	0xf
	.4byte	0xd9
	.uleb128 0x3b
	.string	"p"
	.2byte	0x5a9
	.byte	0xb
	.4byte	0xe5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF487
	.byte	0x2
	.2byte	0x5aa
	.byte	0x3
	.4byte	0x2255
	.uleb128 0x6
	.4byte	0x74
	.uleb128 0x2c
	.4byte	0x22a5
	.uleb128 0x2
	.4byte	0xe5
	.uleb128 0x2
	.4byte	0x6d
	.uleb128 0x2
	.4byte	0x107
	.uleb128 0x2
	.4byte	0x6d
	.uleb128 0x2
	.4byte	0x107
	.byte	0
	.uleb128 0x6
	.4byte	0x2286
	.uleb128 0x6
	.4byte	0x137
	.uleb128 0x6
	.4byte	0x1fe6
	.uleb128 0x6
	.4byte	0x2016
	.uleb128 0x12
	.4byte	0x6d
	.4byte	0x22d7
	.uleb128 0x2
	.4byte	0xe5
	.uleb128 0x2
	.4byte	0x2076
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x6
	.4byte	0x22b9
	.uleb128 0x12
	.4byte	0x6d
	.4byte	0x22fa
	.uleb128 0x2
	.4byte	0xe5
	.uleb128 0x2
	.4byte	0xdbe
	.uleb128 0x2
	.4byte	0x6d
	.uleb128 0x2
	.4byte	0x22fa
	.byte	0
	.uleb128 0x6
	.4byte	0xc1
	.uleb128 0x6
	.4byte	0x22dc
	.uleb128 0x12
	.4byte	0x6d
	.4byte	0x2327
	.uleb128 0x2
	.4byte	0xe5
	.uleb128 0x2
	.4byte	0x2327
	.uleb128 0x2
	.4byte	0xec
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x6
	.4byte	0xec
	.uleb128 0x6
	.4byte	0x2304
	.uleb128 0x12
	.4byte	0x6d
	.4byte	0x2354
	.uleb128 0x2
	.4byte	0xe5
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x6
	.4byte	0x2331
	.uleb128 0x12
	.4byte	0x6d
	.4byte	0x2381
	.uleb128 0x2
	.4byte	0xe5
	.uleb128 0x2
	.4byte	0x2041
	.uleb128 0x2
	.4byte	0xec
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x6f7
	.uleb128 0x2
	.4byte	0x22fa
	.byte	0
	.uleb128 0x6
	.4byte	0x2359
	.uleb128 0x12
	.4byte	0x6d
	.4byte	0x23a4
	.uleb128 0x2
	.4byte	0xe5
	.uleb128 0x2
	.4byte	0x2011
	.uleb128 0x2
	.4byte	0xec
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x6
	.4byte	0x2386
	.uleb128 0x6
	.4byte	0xd91
	.uleb128 0x6
	.4byte	0x1f49
	.uleb128 0x6
	.4byte	0xb72
	.uleb128 0x6
	.4byte	0x2046
	.uleb128 0x6
	.4byte	0x207b
	.uleb128 0x6
	.4byte	0x20a6
	.uleb128 0x6
	.4byte	0x20d1
	.uleb128 0x6
	.4byte	0xbc
	.uleb128 0x6
	.4byte	0x107
	.uleb128 0x6
	.4byte	0x20f6
	.uleb128 0x19
	.4byte	0x32
	.4byte	0x23eb
	.uleb128 0x1a
	.4byte	0x79
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.4byte	0x16e4
	.uleb128 0x6
	.4byte	0x110e
	.uleb128 0x6
	.4byte	0x1134
	.uleb128 0x6
	.4byte	0x1141
	.uleb128 0x6
	.4byte	0x1bdd
	.uleb128 0xf
	.4byte	0x23ff
	.uleb128 0x6
	.4byte	0x1abe
	.uleb128 0x6
	.4byte	0x116c
	.uleb128 0x6
	.4byte	0x118e
	.uleb128 0x19
	.4byte	0xfb
	.4byte	0x2428
	.uleb128 0x1a
	.4byte	0x79
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.4byte	0x21fe
	.uleb128 0xc
	.4byte	.LASF488
	.byte	0x3
	.2byte	0x249
	.byte	0xd
	.4byte	0x243a
	.uleb128 0x12
	.4byte	0x6d
	.4byte	0x2467
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0x107
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0xec
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	0x32
	.byte	0x3
	.2byte	0x2c6
	.byte	0xa
	.4byte	0x2494
	.uleb128 0x5
	.4byte	.LASF489
	.byte	0
	.uleb128 0x5
	.4byte	.LASF490
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF491
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF492
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF493
	.byte	0x4
	.byte	0
	.uleb128 0x24
	.4byte	.LASF494
	.byte	0xc
	.byte	0x3
	.2byte	0x353
	.byte	0x10
	.4byte	0x24ec
	.uleb128 0x20
	.4byte	.LASF495
	.byte	0x3
	.2byte	0x354
	.byte	0x16
	.4byte	0x79
	.byte	0x1
	.byte	0
	.uleb128 0x20
	.4byte	.LASF496
	.byte	0x3
	.2byte	0x355
	.byte	0x16
	.4byte	0x79
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.4byte	.LASF497
	.byte	0x3
	.2byte	0x356
	.byte	0x16
	.4byte	0x79
	.byte	0x1
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF498
	.byte	0x3
	.2byte	0x357
	.byte	0x1c
	.4byte	0xec
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF499
	.byte	0x3
	.2byte	0x358
	.byte	0x14
	.4byte	0x80
	.byte	0x8
	.byte	0
	.uleb128 0x22
	.byte	0xc
	.byte	0x3
	.2byte	0x35b
	.byte	0x9
	.4byte	0x2521
	.uleb128 0x1
	.4byte	.LASF498
	.byte	0x3
	.2byte	0x35c
	.byte	0x1c
	.4byte	0xec
	.byte	0
	.uleb128 0x15
	.string	"len"
	.byte	0x3
	.2byte	0x35d
	.byte	0x14
	.4byte	0x80
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF500
	.byte	0x3
	.2byte	0x35e
	.byte	0x16
	.4byte	0x79
	.byte	0x8
	.byte	0
	.uleb128 0x22
	.byte	0x44
	.byte	0x3
	.2byte	0x34c
	.byte	0x5
	.4byte	0x2563
	.uleb128 0x1
	.4byte	.LASF501
	.byte	0x3
	.2byte	0x34d
	.byte	0x10
	.4byte	0x80
	.byte	0
	.uleb128 0x1
	.4byte	.LASF502
	.byte	0x3
	.2byte	0x350
	.byte	0x11
	.4byte	0xa4
	.byte	0x4
	.uleb128 0x15
	.string	"hs"
	.byte	0x3
	.2byte	0x359
	.byte	0xb
	.4byte	0x2563
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF503
	.byte	0x3
	.2byte	0x35f
	.byte	0xb
	.4byte	0x24ec
	.byte	0x38
	.byte	0
	.uleb128 0x19
	.4byte	0x2494
	.4byte	0x2573
	.uleb128 0x1a
	.4byte	0x79
	.byte	0x3
	.byte	0
	.uleb128 0x22
	.byte	0x48
	.byte	0x3
	.2byte	0x3c6
	.byte	0x9
	.4byte	0x25a8
	.uleb128 0x1
	.4byte	.LASF504
	.byte	0x3
	.2byte	0x3c7
	.byte	0x15
	.4byte	0xa4
	.byte	0
	.uleb128 0x1
	.4byte	.LASF505
	.byte	0x3
	.2byte	0x3cb
	.byte	0x1b
	.4byte	0x491
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF506
	.byte	0x3
	.2byte	0x3cc
	.byte	0x14
	.4byte	0x80
	.byte	0x44
	.byte	0
	.uleb128 0x22
	.byte	0x48
	.byte	0x3
	.2byte	0x3d0
	.byte	0x9
	.4byte	0x25dd
	.uleb128 0x1
	.4byte	.LASF504
	.byte	0x3
	.2byte	0x3d1
	.byte	0x15
	.4byte	0xa4
	.byte	0
	.uleb128 0x1
	.4byte	.LASF505
	.byte	0x3
	.2byte	0x3d5
	.byte	0x1b
	.4byte	0x491
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF506
	.byte	0x3
	.2byte	0x3d6
	.byte	0x14
	.4byte	0x80
	.byte	0x44
	.byte	0
	.uleb128 0x3a
	.byte	0x48
	.byte	0x3
	.2byte	0x3c4
	.byte	0x5
	.4byte	0x25fe
	.uleb128 0x3c
	.4byte	.LASF507
	.2byte	0x3cd
	.4byte	0x2573
	.uleb128 0x3c
	.4byte	.LASF508
	.2byte	0x3d7
	.4byte	0x25a8
	.byte	0
	.uleb128 0x6
	.4byte	0x807
	.uleb128 0x12
	.4byte	0x6d
	.4byte	0x261c
	.uleb128 0x2
	.4byte	0x2076
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x6
	.4byte	0x2603
	.uleb128 0x12
	.4byte	0x6d
	.4byte	0x263a
	.uleb128 0x2
	.4byte	0x263a
	.uleb128 0x2
	.4byte	0xec
	.uleb128 0x2
	.4byte	0x6f7
	.byte	0
	.uleb128 0x6
	.4byte	0x129b
	.uleb128 0x6
	.4byte	0x2621
	.uleb128 0x12
	.4byte	0x6d
	.4byte	0x265d
	.uleb128 0x2
	.4byte	0x2076
	.uleb128 0x2
	.4byte	0xec
	.uleb128 0x2
	.4byte	0x6d
	.byte	0
	.uleb128 0x6
	.4byte	0x2644
	.uleb128 0x6
	.4byte	0x242d
	.uleb128 0x19
	.4byte	0xb0
	.4byte	0x2677
	.uleb128 0x1a
	.4byte	0x79
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.4byte	0xb0
	.uleb128 0x6
	.4byte	0x1f8f
	.uleb128 0xc
	.4byte	.LASF494
	.byte	0x3
	.2byte	0x410
	.byte	0x26
	.4byte	0x2494
	.uleb128 0x22
	.byte	0x40
	.byte	0x3
	.2byte	0x4c5
	.byte	0x9
	.4byte	0x2717
	.uleb128 0x15
	.string	"ctr"
	.byte	0x3
	.2byte	0x4c6
	.byte	0xd
	.4byte	0x2717
	.byte	0
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x3
	.2byte	0x4ce
	.byte	0xd
	.4byte	0xa4
	.byte	0x8
	.uleb128 0x15
	.string	"ver"
	.byte	0x3
	.2byte	0x4cf
	.byte	0xd
	.4byte	0x2727
	.byte	0x9
	.uleb128 0x15
	.string	"buf"
	.byte	0x3
	.2byte	0x4d5
	.byte	0x14
	.4byte	0xec
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF509
	.byte	0x3
	.2byte	0x4d6
	.byte	0xc
	.4byte	0x80
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF510
	.byte	0x3
	.2byte	0x4d7
	.byte	0xc
	.4byte	0x80
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF499
	.byte	0x3
	.2byte	0x4d8
	.byte	0xc
	.4byte	0x80
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF361
	.byte	0x3
	.2byte	0x4db
	.byte	0xd
	.4byte	0xa4
	.byte	0x1c
	.uleb128 0x15
	.string	"cid"
	.byte	0x3
	.2byte	0x4dc
	.byte	0x13
	.4byte	0x2182
	.byte	0x1d
	.byte	0
	.uleb128 0x19
	.4byte	0xa4
	.4byte	0x2727
	.uleb128 0x1a
	.4byte	0x79
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.4byte	0xa4
	.4byte	0x2737
	.uleb128 0x1a
	.4byte	0x79
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF511
	.byte	0x3
	.2byte	0x4de
	.byte	0x3
	.4byte	0x268e
	.uleb128 0xf
	.4byte	0x2737
	.uleb128 0x28
	.byte	0x1
	.4byte	0x32
	.byte	0x3
	.2byte	0xae2
	.byte	0xe
	.4byte	0x2770
	.uleb128 0x5
	.4byte	.LASF512
	.byte	0
	.uleb128 0x5
	.4byte	.LASF513
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF514
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF515
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF516
	.byte	0x3
	.2byte	0xae7
	.byte	0x3
	.4byte	0x2749
	.uleb128 0xd
	.4byte	.LASF517
	.byte	0x16
	.byte	0x50
	.byte	0x12
	.4byte	0xc1
	.uleb128 0xf
	.4byte	0x277d
	.uleb128 0xd
	.4byte	.LASF518
	.byte	0x16
	.byte	0x51
	.byte	0x12
	.4byte	0xc1
	.uleb128 0xf
	.4byte	0x278e
	.uleb128 0xd
	.4byte	.LASF519
	.byte	0x16
	.byte	0x52
	.byte	0x11
	.4byte	0x98
	.uleb128 0x25
	.4byte	.LASF520
	.byte	0x7
	.byte	0x79
	.4byte	0x27c1
	.uleb128 0x2
	.4byte	0xe5
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x30
	.4byte	.LASF521
	.byte	0x1
	.2byte	0x261
	.4byte	0x27d3
	.uleb128 0x2
	.4byte	0x27d3
	.byte	0
	.uleb128 0x6
	.4byte	0x716
	.uleb128 0x16
	.4byte	.LASF522
	.byte	0x2
	.2byte	0x133c
	.byte	0x5
	.4byte	0x6d
	.4byte	0x27ef
	.uleb128 0x2
	.4byte	0x263a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF523
	.byte	0x2
	.2byte	0x13ed
	.byte	0x5
	.4byte	0x6d
	.4byte	0x2806
	.uleb128 0x2
	.4byte	0x2076
	.byte	0
	.uleb128 0x16
	.4byte	.LASF524
	.byte	0x3
	.2byte	0x763
	.byte	0x5
	.4byte	0x6d
	.4byte	0x281d
	.uleb128 0x2
	.4byte	0x2076
	.byte	0
	.uleb128 0x16
	.4byte	.LASF525
	.byte	0x2
	.2byte	0x143c
	.byte	0x5
	.4byte	0x6d
	.4byte	0x2834
	.uleb128 0x2
	.4byte	0x2076
	.byte	0
	.uleb128 0x16
	.4byte	.LASF526
	.byte	0x3
	.2byte	0x543
	.byte	0xd
	.4byte	0x107
	.4byte	0x284b
	.uleb128 0x2
	.4byte	0x1101
	.byte	0
	.uleb128 0x30
	.4byte	.LASF527
	.byte	0x3
	.2byte	0x75f
	.4byte	0x285d
	.uleb128 0x2
	.4byte	0x2076
	.byte	0
	.uleb128 0x16
	.4byte	.LASF528
	.byte	0x3
	.2byte	0x746
	.byte	0x5
	.4byte	0x6d
	.4byte	0x2879
	.uleb128 0x2
	.4byte	0x2076
	.uleb128 0x2
	.4byte	0x6d
	.byte	0
	.uleb128 0x25
	.4byte	.LASF529
	.byte	0x17
	.byte	0x5e
	.4byte	0x288a
	.uleb128 0x2
	.4byte	0xe5
	.byte	0
	.uleb128 0x23
	.4byte	.LASF530
	.byte	0x17
	.byte	0x5a
	.byte	0x7
	.4byte	0xe5
	.4byte	0x28a5
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x16
	.4byte	.LASF531
	.byte	0x3
	.2byte	0x738
	.byte	0x5
	.4byte	0x6d
	.4byte	0x28bc
	.uleb128 0x2
	.4byte	0x2076
	.byte	0
	.uleb128 0x23
	.4byte	.LASF532
	.byte	0x18
	.byte	0x20
	.byte	0x8
	.4byte	0xe5
	.4byte	0x28dc
	.uleb128 0x2
	.4byte	0xe5
	.uleb128 0x2
	.4byte	0x10c
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x30
	.4byte	.LASF533
	.byte	0x16
	.2byte	0x213
	.4byte	0x2907
	.uleb128 0x2
	.4byte	0xec
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x23
	.4byte	.LASF534
	.byte	0x19
	.byte	0x20
	.byte	0x5
	.4byte	0x6d
	.4byte	0x2927
	.uleb128 0x2
	.4byte	0x10c
	.uleb128 0x2
	.4byte	0x10c
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x16
	.4byte	.LASF535
	.byte	0x1
	.2byte	0x4d7
	.byte	0x5
	.4byte	0x6d
	.4byte	0x2970
	.uleb128 0x2
	.4byte	0x27d3
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0xec
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0x6f7
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x23
	.4byte	.LASF536
	.byte	0x18
	.byte	0x1e
	.byte	0x5
	.4byte	0x6d
	.4byte	0x2990
	.uleb128 0x2
	.4byte	0x10c
	.uleb128 0x2
	.4byte	0x10c
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x16
	.4byte	.LASF537
	.byte	0x1
	.2byte	0x46d
	.byte	0x5
	.4byte	0x6d
	.4byte	0x29c5
	.uleb128 0x2
	.4byte	0x27d3
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0xec
	.uleb128 0x2
	.4byte	0x6f7
	.byte	0
	.uleb128 0x16
	.4byte	.LASF538
	.byte	0x1
	.2byte	0x49f
	.byte	0x5
	.4byte	0x6d
	.4byte	0x2a0e
	.uleb128 0x2
	.4byte	0x27d3
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0xec
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x2
	.4byte	0x6f7
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x16
	.4byte	.LASF539
	.byte	0xc
	.2byte	0x1db
	.byte	0x5
	.4byte	0x6d
	.4byte	0x2a2a
	.uleb128 0x2
	.4byte	0x2a2a
	.uleb128 0x2
	.4byte	0xec
	.byte	0
	.uleb128 0x6
	.4byte	0x480
	.uleb128 0x16
	.4byte	.LASF540
	.byte	0xc
	.2byte	0x1c5
	.byte	0x5
	.4byte	0x6d
	.4byte	0x2a50
	.uleb128 0x2
	.4byte	0x2a2a
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x16
	.4byte	.LASF541
	.byte	0x3
	.2byte	0xae9
	.byte	0x14
	.4byte	0x2770
	.4byte	0x2a67
	.uleb128 0x2
	.4byte	0x2a67
	.byte	0
	.uleb128 0x6
	.4byte	0x1acb
	.uleb128 0x23
	.4byte	.LASF542
	.byte	0x18
	.byte	0x1f
	.byte	0x8
	.4byte	0xe5
	.4byte	0x2a8c
	.uleb128 0x2
	.4byte	0xe7
	.uleb128 0x2
	.4byte	0x111
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x16
	.4byte	.LASF543
	.byte	0x3
	.2byte	0x1ad
	.byte	0x8
	.4byte	0x80
	.4byte	0x2aa3
	.uleb128 0x2
	.4byte	0x263a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF544
	.byte	0x3
	.2byte	0x767
	.byte	0x8
	.4byte	0x80
	.4byte	0x2aba
	.uleb128 0x2
	.4byte	0x263a
	.byte	0
	.uleb128 0x25
	.4byte	.LASF545
	.byte	0x1a
	.byte	0x9f
	.4byte	0x2ad0
	.uleb128 0x2
	.4byte	0xe5
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x25
	.4byte	.LASF546
	.byte	0x1b
	.byte	0x31
	.4byte	0x2afa
	.uleb128 0x2
	.4byte	0x263a
	.uleb128 0x2
	.4byte	0x6d
	.uleb128 0x2
	.4byte	0x107
	.uleb128 0x2
	.4byte	0x6d
	.uleb128 0x2
	.4byte	0x107
	.uleb128 0x2
	.4byte	0x6d
	.byte	0
	.uleb128 0x25
	.4byte	.LASF547
	.byte	0x1b
	.byte	0x46
	.4byte	0x2b29
	.uleb128 0x2
	.4byte	0x263a
	.uleb128 0x2
	.4byte	0x6d
	.uleb128 0x2
	.4byte	0x107
	.uleb128 0x2
	.4byte	0x6d
	.uleb128 0x2
	.4byte	0x107
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x25
	.4byte	.LASF548
	.byte	0x1b
	.byte	0x1e
	.4byte	0x2b4f
	.uleb128 0x2
	.4byte	0x263a
	.uleb128 0x2
	.4byte	0x6d
	.uleb128 0x2
	.4byte	0x107
	.uleb128 0x2
	.4byte	0x6d
	.uleb128 0x2
	.4byte	0x107
	.uleb128 0x48
	.byte	0
	.uleb128 0x25
	.4byte	.LASF549
	.byte	0xc
	.byte	0xae
	.4byte	0x2b60
	.uleb128 0x2
	.4byte	0x2a2a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF550
	.byte	0xc
	.2byte	0x1ed
	.byte	0x5
	.4byte	0x6d
	.4byte	0x2b77
	.uleb128 0x2
	.4byte	0x2a2a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF551
	.byte	0xc
	.2byte	0x114
	.byte	0x5
	.4byte	0x6d
	.4byte	0x2b8e
	.uleb128 0x2
	.4byte	0x2a2a
	.byte	0
	.uleb128 0x30
	.4byte	.LASF552
	.byte	0x16
	.2byte	0x1ef
	.4byte	0x2bb4
	.uleb128 0x2
	.4byte	0x277d
	.uleb128 0x2
	.4byte	0xec
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x16
	.4byte	.LASF553
	.byte	0xc
	.2byte	0x13c
	.byte	0x5
	.4byte	0x6d
	.4byte	0x2bd0
	.uleb128 0x2
	.4byte	0x2a2a
	.uleb128 0x2
	.4byte	0xec
	.byte	0
	.uleb128 0x23
	.4byte	.LASF554
	.byte	0xc
	.byte	0xdf
	.byte	0x5
	.4byte	0x6d
	.4byte	0x2beb
	.uleb128 0x2
	.4byte	0x2a2a
	.uleb128 0x2
	.4byte	0x2beb
	.byte	0
	.uleb128 0x6
	.4byte	0x48c
	.uleb128 0x23
	.4byte	.LASF555
	.byte	0x18
	.byte	0x21
	.byte	0x8
	.4byte	0xe5
	.4byte	0x2c10
	.uleb128 0x2
	.4byte	0xe5
	.uleb128 0x2
	.4byte	0x6d
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x16
	.4byte	.LASF556
	.byte	0xc
	.2byte	0x127
	.byte	0x5
	.4byte	0x6d
	.4byte	0x2c31
	.uleb128 0x2
	.4byte	0x2a2a
	.uleb128 0x2
	.4byte	0xec8
	.uleb128 0x2
	.4byte	0x80
	.byte	0
	.uleb128 0x23
	.4byte	.LASF557
	.byte	0xc
	.byte	0xc5
	.byte	0x5
	.4byte	0x6d
	.4byte	0x2c51
	.uleb128 0x2
	.4byte	0x2a2a
	.uleb128 0x2
	.4byte	0x47b
	.uleb128 0x2
	.4byte	0x6d
	.byte	0
	.uleb128 0x25
	.4byte	.LASF558
	.byte	0xc
	.byte	0x9f
	.4byte	0x2c62
	.uleb128 0x2
	.4byte	0x2a2a
	.byte	0
	.uleb128 0x23
	.4byte	.LASF559
	.byte	0xc
	.byte	0xeb
	.byte	0xf
	.4byte	0x32
	.4byte	0x2c78
	.uleb128 0x2
	.4byte	0x47b
	.byte	0
	.uleb128 0x16
	.4byte	.LASF560
	.byte	0xc
	.2byte	0x104
	.byte	0x13
	.4byte	0x41f
	.4byte	0x2c8f
	.uleb128 0x2
	.4byte	0x47b
	.byte	0
	.uleb128 0x31
	.4byte	.LASF563
	.2byte	0x195e
	.4byte	.LFB257
	.4byte	.LFE257-.LFB257
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2cd5
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x195e
	.byte	0x38
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF301
	.byte	0x5
	.2byte	0x195f
	.byte	0x31
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x8
	.4byte	.LASF302
	.byte	0x5
	.2byte	0x1960
	.byte	0x27
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x11
	.4byte	.LASF561
	.2byte	0x1940
	.4byte	0x6d
	.4byte	.LFB256
	.4byte	.LFE256-.LFB256
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d0f
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x1940
	.byte	0x3b
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0x1942
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x34
	.4byte	.LASF562
	.2byte	0x192b
	.byte	0xa
	.4byte	0xb0
	.4byte	.LFB255
	.4byte	.LFE255-.LFB255
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d83
	.uleb128 0x8
	.4byte	.LASF152
	.byte	0x5
	.2byte	0x192b
	.byte	0x37
	.4byte	0xec8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF332
	.byte	0x5
	.2byte	0x192c
	.byte	0x27
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF248
	.byte	0x5
	.2byte	0x192e
	.byte	0xe
	.4byte	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1b
	.4byte	0x586c
	.4byte	.LBB119
	.4byte	.LBE119-.LBB119
	.2byte	0x192e
	.byte	0x65
	.uleb128 0x10
	.4byte	0x5879
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	0x5883
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x13
	.4byte	0x588d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF564
	.2byte	0x1919
	.4byte	.LFB254
	.4byte	.LFE254-.LFB254
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e02
	.uleb128 0x8
	.4byte	.LASF152
	.byte	0x5
	.2byte	0x1919
	.byte	0x2e
	.4byte	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF332
	.byte	0x5
	.2byte	0x1919
	.byte	0x3e
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF248
	.byte	0x5
	.2byte	0x191a
	.byte	0x3d
	.4byte	0x2175
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x3
	.4byte	.LASF565
	.byte	0x5
	.2byte	0x191c
	.byte	0xe
	.4byte	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1b
	.4byte	0x583b
	.4byte	.LBB117
	.4byte	.LBE117-.LBB117
	.2byte	0x1928
	.byte	0x6c
	.uleb128 0x10
	.4byte	0x5846
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.4byte	0x5850
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x13
	.4byte	0x585a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF607
	.byte	0x5
	.2byte	0x18fd
	.byte	0xd
	.4byte	.LFB253
	.4byte	.LFE253-.LFB253
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e59
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x18fd
	.byte	0x3a
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF566
	.byte	0x5
	.2byte	0x18fe
	.byte	0x2d
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x7
	.string	"hs"
	.byte	0x5
	.2byte	0x1900
	.byte	0x2a
	.4byte	0x2404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF567
	.byte	0x5
	.2byte	0x1901
	.byte	0x23
	.4byte	0x2e5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	0x2681
	.uleb128 0xf
	.4byte	0x2e59
	.uleb128 0x1e
	.4byte	.LASF568
	.2byte	0x18ed
	.4byte	.LFB252
	.4byte	.LFE252-.LFB252
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ea8
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x18ed
	.byte	0x36
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF569
	.byte	0x5
	.2byte	0x18ef
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"hs"
	.byte	0x5
	.2byte	0x18f0
	.byte	0x2a
	.4byte	0x2404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF570
	.2byte	0x18e4
	.4byte	.LFB251
	.4byte	.LFE251-.LFB251
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ede
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x18e4
	.byte	0x3e
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF276
	.byte	0x5
	.2byte	0x18e5
	.byte	0x40
	.4byte	0x2409
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF571
	.2byte	0x18dd
	.4byte	.LFB250
	.4byte	.LFE250-.LFB250
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f14
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x18dd
	.byte	0x3d
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF276
	.byte	0x5
	.2byte	0x18de
	.byte	0x3f
	.4byte	0x2409
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF572
	.2byte	0x18c2
	.4byte	.LFB249
	.4byte	.LFE249-.LFB249
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f3a
	.uleb128 0x8
	.4byte	.LASF276
	.byte	0x5
	.2byte	0x18c2
	.byte	0x38
	.4byte	0x2409
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF573
	.2byte	0x18aa
	.4byte	0x6d
	.4byte	.LFB248
	.4byte	.LFE248-.LFB248
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f74
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x18aa
	.byte	0x33
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0x18ac
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF574
	.2byte	0x181f
	.4byte	0x6d
	.4byte	.LFB247
	.4byte	.LFE247-.LFB247
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2fce
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x181f
	.byte	0x2c
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"buf"
	.byte	0x5
	.2byte	0x181f
	.byte	0x46
	.4byte	0xec8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.string	"len"
	.byte	0x5
	.2byte	0x181f
	.byte	0x52
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0x1821
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF577
	.byte	0x5
	.2byte	0x17e4
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB246
	.4byte	.LFE246-.LFB246
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x303a
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x17e4
	.byte	0x30
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"buf"
	.byte	0x5
	.2byte	0x17e5
	.byte	0x30
	.4byte	0xec8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.string	"len"
	.byte	0x5
	.2byte	0x17e5
	.byte	0x3c
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0x17e7
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF575
	.byte	0x5
	.2byte	0x17e8
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF576
	.2byte	0x1715
	.4byte	0x6d
	.4byte	.LFB245
	.4byte	.LFE245-.LFB245
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3094
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x1715
	.byte	0x2b
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"buf"
	.byte	0x5
	.2byte	0x1715
	.byte	0x3f
	.4byte	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.string	"len"
	.byte	0x5
	.2byte	0x1715
	.byte	0x4b
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0x1717
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF578
	.byte	0x5
	.2byte	0x16f8
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB244
	.4byte	.LFE244-.LFB244
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30ee
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x16f9
	.byte	0x1a
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"buf"
	.byte	0x5
	.2byte	0x16f9
	.byte	0x2e
	.4byte	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.string	"len"
	.byte	0x5
	.2byte	0x16f9
	.byte	0x3a
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"n"
	.byte	0x5
	.2byte	0x16fb
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF579
	.byte	0x5
	.2byte	0x16d5
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x311a
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x16d5
	.byte	0x46
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF580
	.byte	0x5
	.2byte	0x167f
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3156
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x167f
	.byte	0x4c
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0x1681
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF581
	.byte	0x5
	.2byte	0x1625
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB241
	.4byte	.LFE241-.LFB241
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31b2
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x1625
	.byte	0x3b
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF582
	.byte	0x5
	.2byte	0x1627
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF583
	.byte	0x5
	.2byte	0x1628
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF584
	.byte	0x5
	.2byte	0x1629
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x11
	.4byte	.LASF585
	.2byte	0x15c3
	.4byte	0x6d
	.4byte	.LFB240
	.4byte	.LFE240-.LFB240
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x321c
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x15c3
	.byte	0x41
	.4byte	0x263a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF586
	.byte	0x5
	.2byte	0x15c5
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF276
	.byte	0x5
	.2byte	0x15c6
	.byte	0x22
	.4byte	0x2a67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x15c7
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF587
	.byte	0x5
	.2byte	0x15cd
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x11
	.4byte	.LASF588
	.2byte	0x158e
	.4byte	0x6d
	.4byte	.LFB239
	.4byte	.LFE239-.LFB239
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3246
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x158e
	.byte	0x3a
	.4byte	0x263a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x34
	.4byte	.LASF589
	.2byte	0x1589
	.byte	0x8
	.4byte	0x80
	.4byte	.LFB238
	.4byte	.LFE238-.LFB238
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3271
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x1589
	.byte	0x3f
	.4byte	0x263a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF590
	.2byte	0x1576
	.4byte	.LFB237
	.4byte	.LFE237-.LFB237
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3297
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x1576
	.byte	0x3a
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF591
	.2byte	0x1567
	.4byte	.LFB236
	.4byte	.LFE236-.LFB236
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x32bd
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x1567
	.byte	0x39
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.4byte	.LASF592
	.2byte	0x153a
	.4byte	.LFB235
	.4byte	.LFE235-.LFB235
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x32e3
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x153a
	.byte	0x3a
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF593
	.2byte	0x1511
	.4byte	.LFB234
	.4byte	.LFE234-.LFB234
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3319
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x1511
	.byte	0x3b
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF276
	.byte	0x5
	.2byte	0x1512
	.byte	0x3d
	.4byte	0x2409
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.4byte	.LASF594
	.byte	0x5
	.2byte	0x150b
	.byte	0xf
	.4byte	0x80
	.4byte	.LFB233
	.4byte	.LFE233-.LFB233
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3345
	.uleb128 0x8
	.4byte	.LASF276
	.byte	0x5
	.2byte	0x150c
	.byte	0x22
	.4byte	0x2a67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF595
	.2byte	0x14ca
	.4byte	0x6d
	.4byte	.LFB232
	.4byte	.LFE232-.LFB232
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x337f
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x14ca
	.byte	0x3f
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0x14cc
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF596
	.2byte	0x14b4
	.4byte	0x6d
	.4byte	.LFB231
	.4byte	.LFE231-.LFB231
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x33b9
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x14b4
	.byte	0x3f
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0x14b6
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF597
	.2byte	0x1495
	.4byte	0x6d
	.4byte	.LFB230
	.4byte	.LFE230-.LFB230
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3413
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x1495
	.byte	0x39
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF598
	.byte	0x5
	.2byte	0x1496
	.byte	0x32
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x8
	.4byte	.LASF599
	.byte	0x5
	.2byte	0x1497
	.byte	0x32
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0x1499
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF600
	.2byte	0x148e
	.4byte	0x6d
	.4byte	.LFB229
	.4byte	.LFE229-.LFB229
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x343d
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x148e
	.byte	0x43
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF601
	.2byte	0x1410
	.4byte	0x6d
	.4byte	.LFB228
	.4byte	.LFE228-.LFB228
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3477
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x1410
	.byte	0x3a
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0x1412
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF602
	.byte	0x5
	.2byte	0x1351
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB227
	.4byte	.LFE227-.LFB227
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x34ee
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x1351
	.byte	0x35
	.4byte	0x2076
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0x1353
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"rec"
	.byte	0x5
	.2byte	0x1354
	.byte	0x14
	.4byte	0x2737
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.4byte	0x583b
	.4byte	.LBB115
	.4byte	.LBE115-.LBB115
	.2byte	0x140b
	.byte	0x67
	.uleb128 0x10
	.4byte	0x5846
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.4byte	0x5850
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x13
	.4byte	0x585a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF603
	.byte	0x5
	.2byte	0x1315
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB226
	.4byte	.LFE226-.LFB226
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3539
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x1315
	.byte	0x3a
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"rec"
	.byte	0x5
	.2byte	0x1316
	.byte	0x3b
	.4byte	0x3539
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"hs"
	.byte	0x5
	.2byte	0x1318
	.byte	0x2a
	.4byte	0x2404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0x2744
	.uleb128 0xe
	.4byte	.LASF604
	.byte	0x5
	.2byte	0x12d9
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB225
	.4byte	.LFE225-.LFB225
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x35c4
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x12d9
	.byte	0x3a
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.string	"hs"
	.byte	0x5
	.2byte	0x12db
	.byte	0x2a
	.4byte	0x2404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"rec"
	.byte	0x5
	.2byte	0x12dc
	.byte	0x14
	.4byte	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF605
	.byte	0x5
	.2byte	0x12dd
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF606
	.byte	0x5
	.2byte	0x12de
	.byte	0xe
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF292
	.byte	0x5
	.2byte	0x12e0
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.4byte	.LASF612
	.2byte	0x130f
	.4byte	.L619
	.byte	0
	.uleb128 0x26
	.4byte	.LASF608
	.byte	0x5
	.2byte	0x12c8
	.byte	0xd
	.4byte	.LFB224
	.4byte	.LFE224-.LFB224
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x35fb
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x12c8
	.byte	0x3b
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"hs"
	.byte	0x5
	.2byte	0x12ca
	.byte	0x2a
	.4byte	0x2404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF609
	.byte	0x5
	.2byte	0x12bd
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB223
	.4byte	.LFE223-.LFB223
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3627
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x12bd
	.byte	0x3b
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF610
	.byte	0x5
	.2byte	0x1263
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB222
	.4byte	.LFE222-.LFB222
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x367c
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x1263
	.byte	0x3d
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.4byte	0x583b
	.4byte	.LBB113
	.4byte	.LBE113-.LBB113
	.2byte	0x12a6
	.byte	0x71
	.uleb128 0x10
	.4byte	0x5846
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	0x5850
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x13
	.4byte	0x585a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF611
	.byte	0x5
	.2byte	0x119b
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB221
	.4byte	.LFE221-.LFB221
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x37ba
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x119b
	.byte	0x34
	.4byte	0x2076
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0x119d
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"hs"
	.byte	0x5
	.2byte	0x119e
	.byte	0x2a
	.4byte	0x2404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.4byte	.LASF612
	.2byte	0x125b
	.4byte	.L578
	.uleb128 0x17
	.4byte	.LBB106
	.4byte	.LBE106-.LBB106
	.uleb128 0x3
	.4byte	.LASF613
	.byte	0x5
	.2byte	0x11af
	.byte	0x16
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF614
	.byte	0x5
	.2byte	0x11b0
	.byte	0x16
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF567
	.byte	0x5
	.2byte	0x11b1
	.byte	0x24
	.4byte	0x2e59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF615
	.byte	0x5
	.2byte	0x11b2
	.byte	0x14
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x49
	.4byte	.LLRL2
	.4byte	0x3735
	.uleb128 0x3
	.4byte	.LASF616
	.byte	0x5
	.2byte	0x11cf
	.byte	0x18
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1c
	.4byte	.LBB110
	.4byte	.LBE110-.LBB110
	.4byte	0x378d
	.uleb128 0x3
	.4byte	.LASF617
	.byte	0x5
	.2byte	0x1235
	.byte	0x18
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF618
	.byte	0x5
	.2byte	0x1235
	.byte	0x22
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.string	"msg"
	.byte	0x5
	.2byte	0x1236
	.byte	0x27
	.4byte	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.4byte	.LBB111
	.4byte	.LBE111-.LBB111
	.uleb128 0x3
	.4byte	.LASF619
	.byte	0x5
	.2byte	0x1247
	.byte	0x2b
	.4byte	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x586c
	.4byte	.LBB107
	.4byte	.LBE107-.LBB107
	.2byte	0x11b0
	.byte	0x72
	.uleb128 0x10
	.4byte	0x5879
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.4byte	0x5883
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x13
	.4byte	0x588d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF620
	.byte	0x5
	.2byte	0x1171
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB220
	.4byte	.LFE220-.LFB220
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3815
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x1171
	.byte	0x37
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF621
	.byte	0x5
	.2byte	0x1172
	.byte	0x29
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF569
	.byte	0x5
	.2byte	0x1174
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"hs"
	.byte	0x5
	.2byte	0x1175
	.byte	0x2a
	.4byte	0x2404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF622
	.byte	0x5
	.2byte	0x1118
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB219
	.4byte	.LFE219-.LFB219
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x38b3
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x1118
	.byte	0x3b
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.string	"hs"
	.byte	0x5
	.2byte	0x111a
	.byte	0x2a
	.4byte	0x2404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF567
	.byte	0x5
	.2byte	0x111b
	.byte	0x1c
	.4byte	0x2e59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0x111c
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.4byte	.LASF612
	.2byte	0x116a
	.4byte	.L558
	.uleb128 0x1c
	.4byte	.LBB104
	.4byte	.LBE104-.LBB104
	.4byte	0x3898
	.uleb128 0x3
	.4byte	.LASF569
	.byte	0x5
	.2byte	0x113e
	.byte	0x12
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.4byte	.LBB105
	.4byte	.LBE105-.LBB105
	.uleb128 0x3
	.4byte	.LASF615
	.byte	0x5
	.2byte	0x114f
	.byte	0x10
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF623
	.byte	0x5
	.2byte	0x110e
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB218
	.4byte	.LFE218-.LFB218
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x38df
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x110e
	.byte	0x40
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF624
	.2byte	0x10ba
	.4byte	0x6d
	.4byte	.LFB217
	.4byte	.LFE217-.LFB217
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x393f
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x10ba
	.byte	0x32
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF625
	.byte	0x5
	.2byte	0x10bb
	.byte	0x26
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0x10bd
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3d
	.4byte	.LLRL1
	.uleb128 0x3
	.4byte	.LASF626
	.byte	0x5
	.2byte	0x10ca
	.byte	0x15
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF627
	.byte	0x5
	.2byte	0xfd9
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB216
	.4byte	.LFE216-.LFB216
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x39cd
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0xfd9
	.byte	0x3c
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"rec"
	.byte	0x5
	.2byte	0xfda
	.byte	0x37
	.4byte	0x39cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0xfdc
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF628
	.byte	0x5
	.2byte	0xfdc
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.4byte	.LBB100
	.4byte	.LBE100-.LBB100
	.uleb128 0x3
	.4byte	.LASF629
	.byte	0x5
	.2byte	0xff0
	.byte	0x1d
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x17
	.4byte	.LBB101
	.4byte	.LBE101-.LBB101
	.uleb128 0x7
	.string	"i"
	.byte	0x5
	.2byte	0x1069
	.byte	0x16
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x2737
	.uleb128 0xe
	.4byte	.LASF630
	.byte	0x5
	.2byte	0xfbc
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB215
	.4byte	.LFE215-.LFB215
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a37
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0xfbc
	.byte	0x3c
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF606
	.byte	0x5
	.2byte	0xfbe
	.byte	0x12
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	0x586c
	.4byte	.LBB98
	.4byte	.LBE98-.LBB98
	.2byte	0xfbe
	.byte	0x6b
	.uleb128 0x10
	.4byte	0x5879
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	0x5883
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x13
	.4byte	0x588d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF631
	.byte	0x5
	.2byte	0xedb
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB214
	.4byte	.LFE214-.LFB214
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3bb3
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0xedb
	.byte	0x3f
	.4byte	0x263a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x4
	.string	"buf"
	.byte	0x5
	.2byte	0xedc
	.byte	0x33
	.4byte	0xec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x4
	.string	"len"
	.byte	0x5
	.2byte	0xedd
	.byte	0x2b
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x4
	.string	"rec"
	.byte	0x5
	.2byte	0xede
	.byte	0x34
	.4byte	0x39cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x3
	.4byte	.LASF248
	.byte	0x5
	.2byte	0xee0
	.byte	0x22
	.4byte	0x2175
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x3
	.4byte	.LASF632
	.byte	0x5
	.2byte	0xee2
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF633
	.byte	0x5
	.2byte	0xee3
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF634
	.byte	0x5
	.2byte	0xee5
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF635
	.byte	0x5
	.2byte	0xee7
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF636
	.byte	0x5
	.2byte	0xee9
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF606
	.byte	0x5
	.2byte	0xeec
	.byte	0xe
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.4byte	.LASF637
	.byte	0x5
	.2byte	0xeee
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF638
	.byte	0x5
	.2byte	0xef2
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF639
	.byte	0x5
	.2byte	0xef4
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF640
	.byte	0x5
	.2byte	0xef8
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF641
	.byte	0x5
	.2byte	0xef9
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3e
	.4byte	0x586c
	.4byte	.LBB94
	.4byte	.LBE94-.LBB94
	.2byte	0xf6c
	.byte	0x6b
	.4byte	0x3b86
	.uleb128 0x10
	.4byte	0x5879
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x13
	.4byte	0x5883
	.uleb128 0x3
	.byte	0x91
	.sleb128 -74
	.uleb128 0x13
	.4byte	0x588d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x1b
	.4byte	0x586c
	.4byte	.LBB96
	.4byte	.LBE96-.LBB96
	.2byte	0xf8a
	.byte	0x5f
	.uleb128 0x10
	.4byte	0x5879
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x13
	.4byte	0x5883
	.uleb128 0x3
	.byte	0x91
	.sleb128 -86
	.uleb128 0x13
	.4byte	0x588d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF642
	.byte	0x5
	.2byte	0xebb
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB213
	.4byte	.LFE213-.LFB213
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3bdf
	.uleb128 0x8
	.4byte	.LASF643
	.byte	0x5
	.2byte	0xebb
	.byte	0x2a
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xe
	.4byte	.LASF644
	.byte	0x5
	.2byte	0xe87
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c45
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0xe87
	.byte	0x3f
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0xe89
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"len"
	.byte	0x5
	.2byte	0xe8a
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.4byte	.LBB93
	.4byte	.LBE93-.LBB93
	.uleb128 0x3
	.4byte	.LASF645
	.byte	0x5
	.2byte	0xe9e
	.byte	0xd
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF646
	.byte	0x5
	.2byte	0xdec
	.byte	0x5
	.4byte	0x6d
	.4byte	.LFB211
	.4byte	.LFE211-.LFB211
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d8c
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0xded
	.byte	0x1a
	.4byte	0x2076
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x8
	.4byte	.LASF319
	.byte	0x5
	.2byte	0xdee
	.byte	0x1a
	.4byte	0xec8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x8
	.4byte	.LASF320
	.byte	0x5
	.2byte	0xdee
	.byte	0x29
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x4
	.string	"in"
	.byte	0x5
	.2byte	0xdef
	.byte	0x1a
	.4byte	0xec8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x8
	.4byte	.LASF285
	.byte	0x5
	.2byte	0xdef
	.byte	0x25
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x8
	.4byte	.LASF647
	.byte	0x5
	.2byte	0xdf0
	.byte	0x14
	.4byte	0xec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x8
	.4byte	.LASF509
	.byte	0x5
	.2byte	0xdf0
	.byte	0x21
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x8
	.4byte	.LASF648
	.byte	0x5
	.2byte	0xdf0
	.byte	0x32
	.4byte	0x6f7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3
	.4byte	.LASF649
	.byte	0x5
	.2byte	0xdf2
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF435
	.byte	0x5
	.2byte	0xdf2
	.byte	0x15
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF500
	.byte	0x5
	.2byte	0xdf2
	.byte	0x21
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF650
	.byte	0x5
	.2byte	0xdf2
	.byte	0x28
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"p"
	.byte	0x5
	.2byte	0xdf3
	.byte	0x14
	.4byte	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3e
	.4byte	0x586c
	.4byte	.LBB89
	.4byte	.LBE89-.LBB89
	.2byte	0xe17
	.byte	0x51
	.4byte	0x3d62
	.uleb128 0x10
	.4byte	0x5879
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.4byte	0x5883
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x13
	.4byte	0x588d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1b
	.4byte	0x583b
	.4byte	.LBB91
	.4byte	.LBE91-.LBB91
	.2byte	0xe6d
	.byte	0x5f
	.uleb128 0x10
	.4byte	0x5846
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.4byte	0x5850
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x13
	.4byte	0x585a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF651
	.2byte	0xdbf
	.4byte	.LFB210
	.4byte	.LFE210-.LFB210
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3dfc
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0xdbf
	.byte	0x3a
	.4byte	0x2076
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x3
	.4byte	.LASF652
	.byte	0x5
	.2byte	0xdc1
	.byte	0xe
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.4byte	.LBB87
	.4byte	.LBE87-.LBB87
	.4byte	0x3de1
	.uleb128 0x3
	.4byte	.LASF653
	.byte	0x5
	.2byte	0xdc9
	.byte	0x12
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x17
	.4byte	.LBB88
	.4byte	.LBE88-.LBB88
	.uleb128 0x7
	.string	"bit"
	.byte	0x5
	.2byte	0xdd5
	.byte	0x12
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF654
	.2byte	0xda2
	.4byte	0x6d
	.4byte	.LFB209
	.4byte	.LFE209-.LFB209
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e46
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0xda2
	.byte	0x3e
	.4byte	0x263a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF652
	.byte	0x5
	.2byte	0xda4
	.byte	0xe
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"bit"
	.byte	0x5
	.2byte	0xda5
	.byte	0xe
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.4byte	.LASF655
	.byte	0x5
	.2byte	0xd8c
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB208
	.4byte	.LFE208-.LFB208
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ea2
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0xd8c
	.byte	0x46
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF656
	.byte	0x5
	.2byte	0xd8c
	.byte	0x54
	.4byte	0x728
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0xd8e
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF657
	.byte	0x5
	.2byte	0xd8f
	.byte	0x14
	.4byte	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.4byte	.LASF658
	.byte	0x5
	.2byte	0xd81
	.byte	0x18
	.4byte	0xcd
	.4byte	.LFB207
	.4byte	.LFE207-.LFB207
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ece
	.uleb128 0x4
	.string	"buf"
	.byte	0x5
	.2byte	0xd81
	.byte	0x3a
	.4byte	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x31
	.4byte	.LASF659
	.2byte	0xd7b
	.4byte	.LFB206
	.4byte	.LFE206-.LFB206
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ef4
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0xd7b
	.byte	0x39
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF660
	.2byte	0xd44
	.4byte	0x6d
	.4byte	.LFB205
	.4byte	.LFE205-.LFB205
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f67
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0xd44
	.byte	0x3e
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0xd46
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.string	"hs"
	.byte	0x5
	.2byte	0xd47
	.byte	0x2a
	.4byte	0x2404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.uleb128 0x3
	.4byte	.LASF569
	.byte	0x5
	.2byte	0xd55
	.byte	0x12
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF567
	.byte	0x5
	.2byte	0xd56
	.byte	0x20
	.4byte	0x2e59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF661
	.2byte	0xc85
	.4byte	0x6d
	.4byte	.LFB204
	.4byte	.LFE204-.LFB204
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4099
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0xc85
	.byte	0x3f
	.4byte	0x2076
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1c
	.4byte	.LBB79
	.4byte	.LBE79-.LBB79
	.4byte	0x3fe8
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0xca5
	.byte	0xd
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF614
	.byte	0x5
	.2byte	0xca6
	.byte	0x16
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.4byte	0x586c
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.2byte	0xca6
	.byte	0x72
	.uleb128 0x10
	.4byte	0x5879
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.4byte	0x5883
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0x13
	.4byte	0x588d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.uleb128 0x3
	.4byte	.LASF662
	.byte	0x5
	.2byte	0xcdf
	.byte	0x1e
	.4byte	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF663
	.byte	0x5
	.2byte	0xce1
	.byte	0x1e
	.4byte	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF664
	.byte	0x5
	.2byte	0xce3
	.byte	0x18
	.4byte	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF665
	.byte	0x5
	.2byte	0xce5
	.byte	0x16
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF666
	.byte	0x5
	.2byte	0xceb
	.byte	0x16
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF292
	.byte	0x5
	.2byte	0xd08
	.byte	0x16
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.4byte	.LBB83
	.4byte	.LBE83-.LBB83
	.uleb128 0x3
	.4byte	.LASF667
	.byte	0x5
	.2byte	0xd33
	.byte	0x14
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.4byte	0x583b
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.2byte	0xd31
	.byte	0x71
	.uleb128 0x10
	.4byte	0x5846
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x10
	.4byte	0x5850
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x13
	.4byte	0x585a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF668
	.byte	0x5
	.2byte	0xc80
	.byte	0x11
	.4byte	0xc1
	.4byte	.LFB203
	.4byte	.LFE203-.LFB203
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x40c5
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0xc80
	.byte	0x41
	.4byte	0x263a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF669
	.byte	0x5
	.2byte	0xc6f
	.byte	0xf
	.4byte	0x80
	.4byte	.LFB202
	.4byte	.LFE202-.LFB202
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4111
	.uleb128 0x8
	.4byte	.LASF615
	.byte	0x5
	.2byte	0xc6f
	.byte	0x35
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF670
	.byte	0x5
	.2byte	0xc70
	.byte	0x37
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF671
	.byte	0x5
	.2byte	0xc72
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF672
	.byte	0x5
	.2byte	0xc5b
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB201
	.4byte	.LFE201-.LFB201
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x415b
	.uleb128 0x8
	.4byte	.LASF673
	.byte	0x5
	.2byte	0xc5b
	.byte	0x2d
	.4byte	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"len"
	.byte	0x5
	.2byte	0xc5b
	.byte	0x3a
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"i"
	.byte	0x5
	.2byte	0xc5d
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.4byte	.LASF674
	.byte	0x5
	.2byte	0xc2f
	.byte	0xd
	.4byte	.LFB200
	.4byte	.LFE200-.LFB200
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41fb
	.uleb128 0x8
	.4byte	.LASF673
	.byte	0x5
	.2byte	0xc2f
	.byte	0x2c
	.4byte	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF569
	.byte	0x5
	.2byte	0xc2f
	.byte	0x39
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.string	"len"
	.byte	0x5
	.2byte	0xc2f
	.byte	0x48
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF675
	.byte	0x5
	.2byte	0xc31
	.byte	0x12
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF676
	.byte	0x5
	.2byte	0xc31
	.byte	0x1e
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.4byte	.LBB77
	.4byte	.LBE77-.LBB77
	.4byte	0x41e0
	.uleb128 0x3
	.4byte	.LASF677
	.byte	0x5
	.2byte	0xc35
	.byte	0x10
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x17
	.4byte	.LBB78
	.4byte	.LBE78-.LBB78
	.uleb128 0x3
	.4byte	.LASF678
	.byte	0x5
	.2byte	0xc4b
	.byte	0x10
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF679
	.byte	0x5
	.2byte	0xc15
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB199
	.4byte	.LFE199-.LFB199
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4257
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0xc15
	.byte	0x3b
	.4byte	0x263a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF615
	.byte	0x5
	.2byte	0xc17
	.byte	0xe
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF618
	.byte	0x5
	.2byte	0xc17
	.byte	0x17
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF617
	.byte	0x5
	.2byte	0xc17
	.byte	0x21
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x14
	.4byte	.LASF680
	.byte	0x5
	.2byte	0xc0f
	.byte	0x11
	.4byte	0xc1
	.4byte	.LFB198
	.4byte	.LFE198-.LFB198
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4283
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0xc0f
	.byte	0x40
	.4byte	0x263a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF681
	.byte	0x5
	.2byte	0xc0a
	.byte	0x11
	.4byte	0xc1
	.4byte	.LFB197
	.4byte	.LFE197-.LFB197
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42af
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0xc0a
	.byte	0x40
	.4byte	0x263a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF682
	.byte	0x5
	.2byte	0xc00
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB196
	.4byte	.LFE196-.LFB196
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42db
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0xc00
	.byte	0x3b
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF683
	.2byte	0xb69
	.4byte	0x6d
	.4byte	.LFB195
	.4byte	.LFE195-.LFB195
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4431
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0xb69
	.byte	0x33
	.4byte	0x2076
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x8
	.4byte	.LASF684
	.byte	0x5
	.2byte	0xb69
	.byte	0x3c
	.4byte	0x6d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0xb6b
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF628
	.byte	0x5
	.2byte	0xb6b
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.string	"len"
	.byte	0x5
	.2byte	0xb6c
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF685
	.byte	0x5
	.2byte	0xb6d
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.4byte	0x4416
	.uleb128 0x7
	.string	"i"
	.byte	0x5
	.2byte	0xb72
	.byte	0x12
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF686
	.byte	0x5
	.2byte	0xb73
	.byte	0x10
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF314
	.byte	0x5
	.2byte	0xb75
	.byte	0x10
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF687
	.byte	0x5
	.2byte	0xb7b
	.byte	0x26
	.4byte	0x2175
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x1c
	.4byte	.LBB73
	.4byte	.LBE73-.LBB73
	.4byte	0x43ec
	.uleb128 0x7
	.string	"rec"
	.byte	0x5
	.2byte	0xb8a
	.byte	0x1c
	.4byte	0x2737
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x1b
	.4byte	0x583b
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.2byte	0xbab
	.byte	0x70
	.uleb128 0x10
	.4byte	0x5846
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x10
	.4byte	0x5850
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x13
	.4byte	0x585a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x583b
	.4byte	.LBB71
	.4byte	.LBE71-.LBB71
	.2byte	0xb87
	.byte	0x63
	.uleb128 0x10
	.4byte	0x5846
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.4byte	0x5850
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x13
	.4byte	0x585a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LBB76
	.4byte	.LBE76-.LBB76
	.uleb128 0x3
	.4byte	.LASF688
	.byte	0x5
	.2byte	0xbdf
	.byte	0x10
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF689
	.2byte	0xb4d
	.4byte	0x6d
	.4byte	.LFB194
	.4byte	.LFE194-.LFB194
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x44a6
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0xb4d
	.byte	0x3b
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF509
	.byte	0x5
	.2byte	0xb4e
	.byte	0x2d
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF615
	.byte	0x5
	.2byte	0xb4e
	.byte	0x3d
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0xb50
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF690
	.byte	0x5
	.2byte	0xb51
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.4byte	.LASF691
	.2byte	0xb59
	.4byte	.L351
	.byte	0
	.uleb128 0x11
	.4byte	.LASF692
	.2byte	0xac7
	.4byte	0x6d
	.4byte	.LFB193
	.4byte	.LFE193-.LFB193
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4549
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0xac7
	.byte	0x3e
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.4byte	.LASF420
	.byte	0x5
	.2byte	0xac8
	.byte	0x2d
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.4byte	.LASF684
	.byte	0x5
	.2byte	0xac9
	.byte	0x2d
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0xacb
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF693
	.byte	0x5
	.2byte	0xacc
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF694
	.byte	0x5
	.2byte	0xacd
	.byte	0x19
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1b
	.4byte	0x583b
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.2byte	0xb1d
	.byte	0x83
	.uleb128 0x10
	.4byte	0x5846
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.4byte	0x5850
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x13
	.4byte	0x585a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF695
	.2byte	0xa9e
	.byte	0x5
	.4byte	0x6d
	.4byte	.LFB192
	.4byte	.LFE192-.LFB192
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x45a4
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0xa9e
	.byte	0x3a
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF694
	.byte	0x5
	.2byte	0xa9e
	.byte	0x4d
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x4
	.string	"buf"
	.byte	0x5
	.2byte	0xa9f
	.byte	0x35
	.4byte	0x2327
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	.LASF509
	.byte	0x5
	.2byte	0xa9f
	.byte	0x42
	.4byte	0x6f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF696
	.2byte	0xa8d
	.4byte	.LFB191
	.4byte	.LFE191-.LFB191
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x45ca
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0xa8d
	.byte	0x3d
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF697
	.2byte	0xa6f
	.4byte	.LFB190
	.4byte	.LFE190-.LFB190
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x45f0
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0xa6f
	.byte	0x3d
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF698
	.2byte	0x9d3
	.4byte	0x6d
	.4byte	.LFB189
	.4byte	.LFE189-.LFB189
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46d9
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x9d3
	.byte	0x36
	.4byte	0x2076
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0x9d5
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.4byte	.LBB65
	.4byte	.LBE65-.LBB65
	.uleb128 0x3
	.4byte	.LASF699
	.byte	0x5
	.2byte	0x9e6
	.byte	0x10
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"cur"
	.byte	0x5
	.2byte	0x9e7
	.byte	0x2f
	.4byte	0x46de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF700
	.byte	0x5
	.2byte	0x9e9
	.byte	0x13
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF684
	.byte	0x5
	.2byte	0x9ed
	.byte	0x13
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3d
	.4byte	.LLRL0
	.uleb128 0x7
	.string	"p"
	.byte	0x5
	.2byte	0xa12
	.byte	0x29
	.4byte	0xecd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF693
	.byte	0x5
	.2byte	0xa13
	.byte	0x1a
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF618
	.byte	0x5
	.2byte	0xa14
	.byte	0x1a
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF701
	.byte	0x5
	.2byte	0xa15
	.byte	0x1a
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF702
	.byte	0x5
	.2byte	0xa16
	.byte	0x14
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF703
	.byte	0x5
	.2byte	0xa16
	.byte	0x25
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x1f9c
	.uleb128 0xf
	.4byte	0x46d9
	.uleb128 0x11
	.4byte	.LASF704
	.2byte	0x9bf
	.4byte	0x6d
	.4byte	.LFB188
	.4byte	.LFE188-.LFB188
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x471d
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x9bf
	.byte	0x2d
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0x9c1
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF705
	.byte	0x5
	.2byte	0x99e
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB187
	.4byte	.LFE187-.LFB187
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4769
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x99e
	.byte	0x31
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF706
	.byte	0x5
	.2byte	0x9a0
	.byte	0x1c
	.4byte	0x2409
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF707
	.byte	0x5
	.2byte	0x9a1
	.byte	0x13
	.4byte	0x23db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF708
	.2byte	0x98b
	.4byte	.LFB186
	.4byte	.LFE186-.LFB186
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x47af
	.uleb128 0x8
	.4byte	.LASF440
	.byte	0x5
	.2byte	0x98b
	.byte	0x37
	.4byte	0x267c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"cur"
	.byte	0x5
	.2byte	0x98d
	.byte	0x1e
	.4byte	0x267c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF134
	.byte	0x5
	.2byte	0x98e
	.byte	0x1e
	.4byte	0x267c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF709
	.byte	0x5
	.2byte	0x95e
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB185
	.4byte	.LFE185-.LFB185
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4805
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x95e
	.byte	0x33
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"msg"
	.byte	0x5
	.2byte	0x960
	.byte	0x1e
	.4byte	0x267c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.uleb128 0x7
	.string	"cur"
	.byte	0x5
	.2byte	0x97d
	.byte	0x22
	.4byte	0x267c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF710
	.2byte	0x91c
	.4byte	0x6d
	.4byte	.LFB184
	.4byte	.LFE184-.LFB184
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x484f
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x91c
	.byte	0x33
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0x91e
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"buf"
	.byte	0x5
	.2byte	0x91f
	.byte	0x14
	.4byte	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF711
	.2byte	0x851
	.4byte	0x6d
	.4byte	.LFB183
	.4byte	.LFE183-.LFB183
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48d3
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x851
	.byte	0x32
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF712
	.byte	0x5
	.2byte	0x851
	.byte	0x3e
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0x853
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"len"
	.byte	0x5
	.2byte	0x854
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF292
	.byte	0x5
	.2byte	0x856
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.uleb128 0x3
	.4byte	.LASF713
	.byte	0x5
	.2byte	0x869
	.byte	0x12
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF714
	.2byte	0x5b7
	.4byte	0x6d
	.4byte	.LFB182
	.4byte	.LFE182-.LFB182
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b6a
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x5b7
	.byte	0x38
	.4byte	0x263a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x8
	.4byte	.LASF276
	.byte	0x5
	.2byte	0x5b8
	.byte	0x34
	.4byte	0x2409
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x4
	.string	"rec"
	.byte	0x5
	.2byte	0x5b9
	.byte	0x2d
	.4byte	0x39cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x3
	.4byte	.LASF648
	.byte	0x5
	.2byte	0x5bc
	.byte	0xc
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x3
	.4byte	.LASF715
	.byte	0x5
	.2byte	0x5be
	.byte	0x18
	.4byte	0x2770
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0x5bf
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF716
	.byte	0x5
	.2byte	0x5c1
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF717
	.byte	0x5
	.2byte	0x5c3
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF718
	.byte	0x5
	.2byte	0x5c4
	.byte	0x1c
	.4byte	0x277d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF498
	.byte	0x5
	.2byte	0x5c6
	.byte	0x14
	.4byte	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF719
	.byte	0x5
	.2byte	0x5cb
	.byte	0x13
	.4byte	0x4b6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x3
	.4byte	.LASF720
	.byte	0x5
	.2byte	0x5cf
	.byte	0xc
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x21
	.4byte	.LASF721
	.2byte	0x6fc
	.4byte	.L209
	.uleb128 0x21
	.4byte	.LASF722
	.2byte	0x80d
	.4byte	.L229
	.uleb128 0x1c
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.4byte	0x4a07
	.uleb128 0x7
	.string	"iv"
	.byte	0x5
	.2byte	0x5fc
	.byte	0x17
	.4byte	0x4b7a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x3
	.4byte	.LASF723
	.byte	0x5
	.2byte	0x5fd
	.byte	0x18
	.4byte	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF724
	.byte	0x5
	.2byte	0x5fe
	.byte	0x10
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x1c
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.4byte	0x4b1b
	.uleb128 0x3
	.4byte	.LASF393
	.byte	0x5
	.2byte	0x673
	.byte	0x10
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF725
	.byte	0x5
	.2byte	0x78c
	.byte	0x10
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF726
	.byte	0x5
	.2byte	0x78d
	.byte	0x28
	.4byte	0x4b8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.4byte	.LASF727
	.byte	0x5
	.2byte	0x791
	.byte	0x16
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.4byte	.LASF728
	.byte	0x5
	.2byte	0x792
	.byte	0x16
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3
	.4byte	.LASF729
	.byte	0x5
	.2byte	0x793
	.byte	0x16
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x7
	.string	"idx"
	.byte	0x5
	.2byte	0x794
	.byte	0x10
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.4byte	0x4aa7
	.uleb128 0x3
	.4byte	.LASF730
	.byte	0x5
	.2byte	0x6ab
	.byte	0x1b
	.4byte	0x2192
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.byte	0
	.uleb128 0x1c
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.4byte	0x4ac4
	.uleb128 0x7
	.string	"ge"
	.byte	0x5
	.2byte	0x769
	.byte	0x2a
	.4byte	0x2789
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1c
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.4byte	0x4ae1
	.uleb128 0x7
	.string	"ge"
	.byte	0x5
	.2byte	0x779
	.byte	0x2a
	.4byte	0x2789
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x17
	.4byte	.LBB61
	.4byte	.LBE61-.LBB61
	.uleb128 0x7
	.string	"a"
	.byte	0x5
	.2byte	0x79a
	.byte	0x2a
	.4byte	0x2789
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x3
	.4byte	.LASF731
	.byte	0x5
	.2byte	0x79b
	.byte	0x14
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x7
	.string	"b"
	.byte	0x5
	.2byte	0x79c
	.byte	0x2a
	.4byte	0x2789
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.uleb128 0x3
	.4byte	.LASF730
	.byte	0x5
	.2byte	0x7c2
	.byte	0x17
	.4byte	0x2192
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x3
	.4byte	.LASF732
	.byte	0x5
	.2byte	0x7c3
	.byte	0x17
	.4byte	0x2192
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x3
	.4byte	.LASF575
	.byte	0x5
	.2byte	0x7e5
	.byte	0x16
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x3
	.4byte	.LASF733
	.byte	0x5
	.2byte	0x7e6
	.byte	0x16
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x32
	.4byte	0x4b7a
	.uleb128 0x1a
	.4byte	0x79
	.byte	0x36
	.byte	0
	.uleb128 0x19
	.4byte	0x32
	.4byte	0x4b8a
	.uleb128 0x1a
	.4byte	0x79
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.4byte	0x3e
	.uleb128 0xf
	.4byte	0x4b8a
	.uleb128 0x11
	.4byte	.LASF734
	.2byte	0x375
	.4byte	0x6d
	.4byte	.LFB181
	.4byte	.LFE181-.LFB181
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d8b
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x375
	.byte	0x32
	.4byte	0x2076
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x8
	.4byte	.LASF276
	.byte	0x5
	.2byte	0x376
	.byte	0x34
	.4byte	0x2409
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x4
	.string	"rec"
	.byte	0x5
	.2byte	0x377
	.byte	0x2d
	.4byte	0x39cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x8
	.4byte	.LASF346
	.byte	0x5
	.2byte	0x378
	.byte	0x23
	.4byte	0x22aa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x8
	.4byte	.LASF347
	.byte	0x5
	.2byte	0x379
	.byte	0x23
	.4byte	0xe5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x3
	.4byte	.LASF715
	.byte	0x5
	.2byte	0x37b
	.byte	0x18
	.4byte	0x2770
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x3
	.4byte	.LASF716
	.byte	0x5
	.2byte	0x37c
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF498
	.byte	0x5
	.2byte	0x37d
	.byte	0x14
	.4byte	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF719
	.byte	0x5
	.2byte	0x382
	.byte	0x13
	.4byte	0x4b6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x3
	.4byte	.LASF720
	.byte	0x5
	.2byte	0x386
	.byte	0xc
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x3
	.4byte	.LASF735
	.byte	0x5
	.2byte	0x387
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.4byte	.LASF722
	.2byte	0x441
	.4byte	.L140
	.uleb128 0x21
	.4byte	.LASF721
	.2byte	0x596
	.4byte	.L170
	.uleb128 0x1c
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.4byte	0x4c98
	.uleb128 0x3
	.4byte	.LASF736
	.byte	0x5
	.2byte	0x3de
	.byte	0x10
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x1c
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.4byte	0x4cc7
	.uleb128 0x7
	.string	"mac"
	.byte	0x5
	.2byte	0x401
	.byte	0x17
	.4byte	0x2192
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0x402
	.byte	0xd
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1c
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.4byte	0x4d26
	.uleb128 0x7
	.string	"iv"
	.byte	0x5
	.2byte	0x461
	.byte	0x17
	.4byte	0x4b7a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x3
	.4byte	.LASF723
	.byte	0x5
	.2byte	0x462
	.byte	0x18
	.4byte	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.4byte	.LASF724
	.byte	0x5
	.2byte	0x463
	.byte	0x10
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.4byte	.LASF737
	.byte	0x5
	.2byte	0x464
	.byte	0xd
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0x469
	.byte	0xd
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x17
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0x4d1
	.byte	0xd
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF717
	.byte	0x5
	.2byte	0x4d2
	.byte	0x10
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"i"
	.byte	0x5
	.2byte	0x4d2
	.byte	0x18
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF648
	.byte	0x5
	.2byte	0x4d3
	.byte	0x10
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x17
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.uleb128 0x7
	.string	"mac"
	.byte	0x5
	.2byte	0x54f
	.byte	0x1b
	.4byte	0x2192
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF738
	.byte	0x5
	.2byte	0x365
	.byte	0xd
	.4byte	.LFB180
	.4byte	.LFE180-.LFB180
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e3e
	.uleb128 0x8
	.4byte	.LASF739
	.byte	0x5
	.2byte	0x365
	.byte	0x33
	.4byte	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.4byte	.LASF740
	.byte	0x5
	.2byte	0x366
	.byte	0x2b
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.4byte	.LASF741
	.byte	0x5
	.2byte	0x367
	.byte	0x39
	.4byte	0xec8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x8
	.4byte	.LASF742
	.byte	0x5
	.2byte	0x368
	.byte	0x2b
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.4byte	.LASF723
	.byte	0x5
	.2byte	0x369
	.byte	0x39
	.4byte	0xec8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x8
	.4byte	.LASF724
	.byte	0x5
	.2byte	0x36a
	.byte	0x2b
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.4byte	0x57fd
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.2byte	0x371
	.byte	0x5
	.uleb128 0x10
	.4byte	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	0x5812
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.4byte	0x581c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.4byte	0x5826
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.4byte	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF743
	.byte	0x5
	.2byte	0x348
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB179
	.4byte	.LFE179-.LFB179
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e6a
	.uleb128 0x8
	.4byte	.LASF276
	.byte	0x5
	.2byte	0x349
	.byte	0x22
	.4byte	0x2a67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.4byte	.LASF744
	.byte	0x5
	.2byte	0x29b
	.byte	0xd
	.4byte	.LFB178
	.4byte	.LFE178-.LFB178
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f2c
	.uleb128 0x8
	.4byte	.LASF719
	.byte	0x5
	.2byte	0x29b
	.byte	0x3d
	.4byte	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.4byte	.LASF720
	.byte	0x5
	.2byte	0x29c
	.byte	0x36
	.4byte	0x6f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.string	"rec"
	.byte	0x5
	.2byte	0x29d
	.byte	0x3e
	.4byte	0x39cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x8
	.4byte	.LASF248
	.byte	0x5
	.2byte	0x29f
	.byte	0x2e
	.4byte	0x2175
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0x8
	.4byte	.LASF397
	.byte	0x5
	.2byte	0x2a0
	.byte	0x35
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x7
	.string	"cur"
	.byte	0x5
	.2byte	0x2fb
	.byte	0x14
	.4byte	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF745
	.byte	0x5
	.2byte	0x2fc
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF746
	.byte	0x5
	.2byte	0x300
	.byte	0x19
	.4byte	0x4f2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.4byte	0x583b
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.2byte	0x33f
	.byte	0x63
	.uleb128 0x10
	.4byte	0x5846
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.4byte	0x5850
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x13
	.4byte	0x585a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x39
	.4byte	0x4f3c
	.uleb128 0x1a
	.4byte	0x79
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.4byte	.LASF747
	.byte	0x5
	.2byte	0x253
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB177
	.4byte	.LFE177-.LFB177
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f98
	.uleb128 0x8
	.4byte	.LASF748
	.byte	0x5
	.2byte	0x253
	.byte	0x3b
	.4byte	0xec8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x5
	.2byte	0x254
	.byte	0x2e
	.4byte	0x6f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF750
	.byte	0x5
	.2byte	0x255
	.byte	0x2f
	.4byte	0x728
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF688
	.byte	0x5
	.2byte	0x257
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF751
	.byte	0x5
	.2byte	0x235
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB176
	.4byte	.LFE176-.LFB176
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5014
	.uleb128 0x8
	.4byte	.LASF748
	.byte	0x5
	.2byte	0x235
	.byte	0x35
	.4byte	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x5
	.2byte	0x236
	.byte	0x2e
	.4byte	0x6f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF688
	.byte	0x5
	.2byte	0x237
	.byte	0x2d
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF750
	.byte	0x5
	.2byte	0x238
	.byte	0x2e
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x4
	.string	"pad"
	.byte	0x5
	.2byte	0x239
	.byte	0x2d
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.string	"len"
	.byte	0x5
	.2byte	0x23b
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF752
	.byte	0x5
	.2byte	0x212
	.byte	0xf
	.4byte	0x80
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5050
	.uleb128 0x4
	.string	"len"
	.byte	0x5
	.2byte	0x212
	.byte	0x31
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF753
	.byte	0x5
	.2byte	0x213
	.byte	0x31
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.4byte	.LASF754
	.byte	0x5
	.2byte	0x204
	.byte	0xd
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5078
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x204
	.byte	0x3f
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF755
	.byte	0x5
	.2byte	0x1e2
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50b4
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x1e2
	.byte	0x3f
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF756
	.byte	0x5
	.2byte	0x1e4
	.byte	0xe
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF757
	.byte	0x5
	.2byte	0x1a8
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5130
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x1a8
	.byte	0x4d
	.4byte	0x263a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0x1aa
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF688
	.byte	0x5
	.2byte	0x1ab
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF758
	.byte	0x5
	.2byte	0x1ab
	.byte	0x17
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF575
	.byte	0x5
	.2byte	0x1ac
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"mfl"
	.byte	0x5
	.2byte	0x1af
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xe
	.4byte	.LASF759
	.byte	0x5
	.2byte	0x198
	.byte	0xc
	.4byte	0x6d
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x517c
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x198
	.byte	0x4b
	.4byte	0x263a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF760
	.byte	0x5
	.2byte	0x19a
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"mtu"
	.byte	0x5
	.2byte	0x19b
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF761
	.byte	0x5
	.2byte	0x187
	.byte	0xf
	.4byte	0x80
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51c8
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x187
	.byte	0x48
	.4byte	0x263a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"mtu"
	.byte	0x5
	.2byte	0x189
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF314
	.byte	0x5
	.2byte	0x18b
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF762
	.2byte	0x13f
	.4byte	0x6d
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x524b
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x13f
	.byte	0x39
	.4byte	0x263a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x4
	.string	"buf"
	.byte	0x5
	.2byte	0x140
	.byte	0x2d
	.4byte	0xec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x8
	.4byte	.LASF763
	.byte	0x5
	.2byte	0x141
	.byte	0x25
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x7
	.string	"ret"
	.byte	0x5
	.2byte	0x143
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.4byte	.LASF612
	.2byte	0x162
	.4byte	.L81
	.uleb128 0x17
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.uleb128 0x7
	.string	"rec"
	.byte	0x5
	.2byte	0x150
	.byte	0x18
	.4byte	0x2737
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF764
	.2byte	0x12b
	.4byte	0x6d
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5275
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x12b
	.byte	0x32
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF765
	.2byte	0x11e
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52ab
	.uleb128 0x4
	.string	"ssl"
	.byte	0x5
	.2byte	0x11e
	.byte	0x31
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF766
	.byte	0x5
	.2byte	0x11e
	.byte	0x3f
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.4byte	.LASF767
	.byte	0x5
	.byte	0xba
	.byte	0x5
	.4byte	0x6d
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53d3
	.uleb128 0x2d
	.string	"ctx"
	.byte	0x5
	.byte	0xba
	.byte	0x2b
	.4byte	0x2a2a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x27
	.4byte	.LASF719
	.byte	0x5
	.byte	0xbb
	.byte	0x2a
	.4byte	0xec8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x27
	.4byte	.LASF720
	.byte	0x5
	.byte	0xbc
	.byte	0x1c
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x27
	.4byte	.LASF498
	.byte	0x5
	.byte	0xbd
	.byte	0x2a
	.4byte	0xec8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x27
	.4byte	.LASF768
	.byte	0x5
	.byte	0xbe
	.byte	0x1c
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x27
	.4byte	.LASF769
	.byte	0x5
	.byte	0xbf
	.byte	0x1c
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x27
	.4byte	.LASF770
	.byte	0x5
	.byte	0xc0
	.byte	0x1c
	.4byte	0x80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x27
	.4byte	.LASF771
	.byte	0x5
	.byte	0xc1
	.byte	0x24
	.4byte	0xec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x29
	.4byte	.LASF772
	.byte	0xd1
	.byte	0x1d
	.4byte	0x42b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x29
	.4byte	.LASF97
	.byte	0xd4
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.4byte	.LASF773
	.byte	0xd5
	.byte	0x21
	.4byte	0xecd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.4byte	.LASF774
	.byte	0xd6
	.byte	0x21
	.4byte	0xecd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.4byte	.LASF775
	.byte	0xd7
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.4byte	.LASF776
	.byte	0xd9
	.byte	0x13
	.4byte	0x491
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x32
	.string	"aux"
	.byte	0x5
	.byte	0xda
	.byte	0x1a
	.4byte	0x480
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x29
	.4byte	.LASF569
	.byte	0xdb
	.byte	0xc
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"ret"
	.byte	0x5
	.byte	0xdc
	.byte	0x9
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.4byte	.LASF691
	.2byte	0x10f
	.4byte	.L46
	.byte	0
	.uleb128 0x14
	.4byte	.LASF777
	.byte	0x4
	.2byte	0x207
	.byte	0x26
	.4byte	0x277d
	.4byte	.LFB163
	.4byte	.LFE163-.LFB163
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x540b
	.uleb128 0x4
	.string	"x"
	.byte	0x4
	.2byte	0x207
	.byte	0x51
	.4byte	0x277d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"y"
	.byte	0x4
	.2byte	0x208
	.byte	0x51
	.4byte	0x277d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF778
	.byte	0x4
	.2byte	0x1f5
	.byte	0x26
	.4byte	0x277d
	.4byte	.LFB160
	.4byte	.LFE160-.LFB160
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5443
	.uleb128 0x4
	.string	"x"
	.byte	0x4
	.2byte	0x1f5
	.byte	0x4b
	.4byte	0x278e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"y"
	.byte	0x4
	.2byte	0x1f6
	.byte	0x4b
	.4byte	0x278e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF779
	.byte	0x4
	.2byte	0x1e9
	.byte	0x26
	.4byte	0x277d
	.4byte	.LFB158
	.4byte	.LFE158-.LFB158
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x547b
	.uleb128 0x4
	.string	"x"
	.byte	0x4
	.2byte	0x1e9
	.byte	0x4b
	.4byte	0x278e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"y"
	.byte	0x4
	.2byte	0x1ea
	.byte	0x4b
	.4byte	0x278e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.4byte	.LASF780
	.byte	0x4
	.2byte	0x1be
	.byte	0x16
	.4byte	0x80
	.4byte	.LFB152
	.4byte	.LFE152-.LFB152
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54b7
	.uleb128 0x8
	.4byte	.LASF781
	.byte	0x4
	.2byte	0x1be
	.byte	0x47
	.4byte	0x277d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"if1"
	.byte	0x4
	.2byte	0x1be
	.byte	0x59
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF782
	.byte	0x4
	.2byte	0x17e
	.byte	0x26
	.4byte	0x277d
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54ff
	.uleb128 0x4
	.string	"x"
	.byte	0x4
	.2byte	0x17e
	.byte	0x4b
	.4byte	0x278e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"y"
	.byte	0x4
	.2byte	0x17e
	.byte	0x60
	.4byte	0x278e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF783
	.byte	0x4
	.2byte	0x181
	.byte	0x1d
	.4byte	0x279a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF784
	.byte	0x4
	.2byte	0x10f
	.byte	0x26
	.4byte	0x277d
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5575
	.uleb128 0x4
	.string	"x"
	.byte	0x4
	.2byte	0x10f
	.byte	0x4b
	.4byte	0x278e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"y"
	.byte	0x4
	.2byte	0x10f
	.byte	0x60
	.4byte	0x278e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"xo"
	.byte	0x4
	.2byte	0x162
	.byte	0x1d
	.4byte	0x279a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"yo"
	.byte	0x4
	.2byte	0x163
	.byte	0x1d
	.4byte	0x279a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF785
	.byte	0x4
	.2byte	0x168
	.byte	0x1c
	.4byte	0x277d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.string	"ret"
	.byte	0x4
	.2byte	0x174
	.byte	0x17
	.4byte	0x278e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.4byte	.LASF786
	.byte	0x4
	.byte	0xcd
	.byte	0x21
	.4byte	0x278e
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55cd
	.uleb128 0x27
	.4byte	.LASF781
	.byte	0x4
	.byte	0xcd
	.byte	0x46
	.4byte	0x277d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"if1"
	.byte	0x4
	.byte	0xce
	.byte	0x41
	.4byte	0x278e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"if0"
	.byte	0x4
	.byte	0xcf
	.byte	0x41
	.4byte	0x278e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF787
	.byte	0x4
	.2byte	0x109
	.byte	0x1c
	.4byte	0x277d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x35
	.4byte	.LASF788
	.byte	0x4
	.byte	0x78
	.byte	0x26
	.4byte	0x277d
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5610
	.uleb128 0x2d
	.string	"x"
	.byte	0x4
	.byte	0x78
	.byte	0x48
	.4byte	0x278e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"xo"
	.byte	0x4
	.byte	0xb8
	.byte	0x1d
	.4byte	0x279a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.string	"y"
	.byte	0x4
	.byte	0xc0
	.byte	0x16
	.4byte	0x279f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF789
	.byte	0x4
	.byte	0x55
	.byte	0x21
	.4byte	0x278e
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5638
	.uleb128 0x2d
	.string	"x"
	.byte	0x4
	.byte	0x55
	.byte	0x4e
	.4byte	0x278e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF790
	.byte	0x3
	.2byte	0x72a
	.byte	0x16
	.4byte	0x80
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5664
	.uleb128 0x4
	.string	"ssl"
	.byte	0x3
	.2byte	0x72a
	.byte	0x44
	.4byte	0x263a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF791
	.byte	0x3
	.2byte	0x6f0
	.byte	0x16
	.4byte	0x80
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5690
	.uleb128 0x4
	.string	"ssl"
	.byte	0x3
	.2byte	0x6f0
	.byte	0x48
	.4byte	0x263a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF792
	.byte	0x3
	.2byte	0x6eb
	.byte	0x16
	.4byte	0x80
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x56bc
	.uleb128 0x4
	.string	"ssl"
	.byte	0x3
	.2byte	0x6eb
	.byte	0x49
	.4byte	0x263a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF793
	.byte	0x3
	.2byte	0x6db
	.byte	0x16
	.4byte	0x80
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x56e8
	.uleb128 0x4
	.string	"ssl"
	.byte	0x3
	.2byte	0x6db
	.byte	0x48
	.4byte	0x263a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF794
	.byte	0x3
	.2byte	0x5c3
	.byte	0x13
	.4byte	0x6d
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5714
	.uleb128 0x4
	.string	"ssl"
	.byte	0x3
	.2byte	0x5c3
	.byte	0x48
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.4byte	.LASF795
	.byte	0x3
	.2byte	0x54f
	.byte	0x14
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x573c
	.uleb128 0x4
	.string	"ssl"
	.byte	0x3
	.2byte	0x54f
	.byte	0x4f
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.4byte	.LASF796
	.byte	0x3
	.2byte	0x546
	.byte	0x14
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5774
	.uleb128 0x4
	.string	"ssl"
	.byte	0x3
	.2byte	0x546
	.byte	0x49
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF92
	.byte	0x3
	.2byte	0x547
	.byte	0x47
	.4byte	0x1101
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.byte	0
	.uleb128 0x14
	.4byte	.LASF797
	.byte	0x2
	.2byte	0x13fa
	.byte	0x13
	.4byte	0x6d
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57a0
	.uleb128 0x4
	.string	"ssl"
	.byte	0x2
	.2byte	0x13fa
	.byte	0x46
	.4byte	0x2076
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF798
	.byte	0x1
	.2byte	0x2c0
	.byte	0x25
	.4byte	0x502
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57cc
	.uleb128 0x4
	.string	"ctx"
	.byte	0x1
	.2byte	0x2c1
	.byte	0x25
	.4byte	0x57cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0x723
	.uleb128 0x14
	.4byte	.LASF799
	.byte	0x1
	.2byte	0x2ad
	.byte	0x1c
	.4byte	0x79
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57fd
	.uleb128 0x4
	.string	"ctx"
	.byte	0x1
	.2byte	0x2ae
	.byte	0x25
	.4byte	0x57cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF800
	.byte	0x7
	.byte	0xba
	.4byte	0x583b
	.uleb128 0x2a
	.string	"r"
	.byte	0x7
	.byte	0xba
	.byte	0x2f
	.4byte	0xec
	.uleb128 0x2a
	.string	"a"
	.byte	0x7
	.byte	0xbb
	.byte	0x35
	.4byte	0xec8
	.uleb128 0x2a
	.string	"b"
	.byte	0x7
	.byte	0xbc
	.byte	0x35
	.4byte	0xec8
	.uleb128 0x2a
	.string	"n"
	.byte	0x7
	.byte	0xbd
	.byte	0x27
	.4byte	0x80
	.uleb128 0x33
	.string	"i"
	.byte	0x7
	.byte	0xbf
	.byte	0xc
	.4byte	0x80
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF801
	.byte	0x6
	.byte	0x8e
	.4byte	0x5867
	.uleb128 0x2a
	.string	"p"
	.byte	0x6
	.byte	0x8e
	.byte	0x37
	.4byte	0xe5
	.uleb128 0x2a
	.string	"x"
	.byte	0x6
	.byte	0x8e
	.byte	0x43
	.4byte	0xb0
	.uleb128 0x33
	.string	"p16"
	.byte	0x6
	.byte	0x94
	.byte	0x21
	.4byte	0x5867
	.byte	0
	.uleb128 0x6
	.4byte	0x12b
	.uleb128 0x4b
	.4byte	.LASF802
	.byte	0x6
	.byte	0x73
	.byte	0x18
	.4byte	0xb0
	.byte	0x3
	.uleb128 0x2a
	.string	"p"
	.byte	0x6
	.byte	0x73
	.byte	0x41
	.4byte	0x10c
	.uleb128 0x33
	.string	"r"
	.byte	0x6
	.byte	0x75
	.byte	0xe
	.4byte	0xb0
	.uleb128 0x33
	.string	"p16"
	.byte	0x6
	.byte	0x7a
	.byte	0x21
	.4byte	0x5867
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
	.uleb128 0x5
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.sleb128 5
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 19
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
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xa
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
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x5
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
	.uleb128 0x28
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x2a
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
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x3b
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x38c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.4byte	.LFB152
	.4byte	.LFE152-.LFB152
	.4byte	.LFB158
	.4byte	.LFE158-.LFB158
	.4byte	.LFB160
	.4byte	.LFE160-.LFB160
	.4byte	.LFB163
	.4byte	.LFE163-.LFB163
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.4byte	.LFB176
	.4byte	.LFE176-.LFB176
	.4byte	.LFB177
	.4byte	.LFE177-.LFB177
	.4byte	.LFB178
	.4byte	.LFE178-.LFB178
	.4byte	.LFB179
	.4byte	.LFE179-.LFB179
	.4byte	.LFB180
	.4byte	.LFE180-.LFB180
	.4byte	.LFB181
	.4byte	.LFE181-.LFB181
	.4byte	.LFB182
	.4byte	.LFE182-.LFB182
	.4byte	.LFB183
	.4byte	.LFE183-.LFB183
	.4byte	.LFB184
	.4byte	.LFE184-.LFB184
	.4byte	.LFB185
	.4byte	.LFE185-.LFB185
	.4byte	.LFB186
	.4byte	.LFE186-.LFB186
	.4byte	.LFB187
	.4byte	.LFE187-.LFB187
	.4byte	.LFB188
	.4byte	.LFE188-.LFB188
	.4byte	.LFB189
	.4byte	.LFE189-.LFB189
	.4byte	.LFB190
	.4byte	.LFE190-.LFB190
	.4byte	.LFB191
	.4byte	.LFE191-.LFB191
	.4byte	.LFB192
	.4byte	.LFE192-.LFB192
	.4byte	.LFB193
	.4byte	.LFE193-.LFB193
	.4byte	.LFB194
	.4byte	.LFE194-.LFB194
	.4byte	.LFB195
	.4byte	.LFE195-.LFB195
	.4byte	.LFB196
	.4byte	.LFE196-.LFB196
	.4byte	.LFB197
	.4byte	.LFE197-.LFB197
	.4byte	.LFB198
	.4byte	.LFE198-.LFB198
	.4byte	.LFB199
	.4byte	.LFE199-.LFB199
	.4byte	.LFB200
	.4byte	.LFE200-.LFB200
	.4byte	.LFB201
	.4byte	.LFE201-.LFB201
	.4byte	.LFB202
	.4byte	.LFE202-.LFB202
	.4byte	.LFB203
	.4byte	.LFE203-.LFB203
	.4byte	.LFB204
	.4byte	.LFE204-.LFB204
	.4byte	.LFB205
	.4byte	.LFE205-.LFB205
	.4byte	.LFB206
	.4byte	.LFE206-.LFB206
	.4byte	.LFB207
	.4byte	.LFE207-.LFB207
	.4byte	.LFB208
	.4byte	.LFE208-.LFB208
	.4byte	.LFB209
	.4byte	.LFE209-.LFB209
	.4byte	.LFB210
	.4byte	.LFE210-.LFB210
	.4byte	.LFB211
	.4byte	.LFE211-.LFB211
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.4byte	.LFB213
	.4byte	.LFE213-.LFB213
	.4byte	.LFB214
	.4byte	.LFE214-.LFB214
	.4byte	.LFB215
	.4byte	.LFE215-.LFB215
	.4byte	.LFB216
	.4byte	.LFE216-.LFB216
	.4byte	.LFB217
	.4byte	.LFE217-.LFB217
	.4byte	.LFB218
	.4byte	.LFE218-.LFB218
	.4byte	.LFB219
	.4byte	.LFE219-.LFB219
	.4byte	.LFB220
	.4byte	.LFE220-.LFB220
	.4byte	.LFB221
	.4byte	.LFE221-.LFB221
	.4byte	.LFB222
	.4byte	.LFE222-.LFB222
	.4byte	.LFB223
	.4byte	.LFE223-.LFB223
	.4byte	.LFB224
	.4byte	.LFE224-.LFB224
	.4byte	.LFB225
	.4byte	.LFE225-.LFB225
	.4byte	.LFB226
	.4byte	.LFE226-.LFB226
	.4byte	.LFB227
	.4byte	.LFE227-.LFB227
	.4byte	.LFB228
	.4byte	.LFE228-.LFB228
	.4byte	.LFB229
	.4byte	.LFE229-.LFB229
	.4byte	.LFB230
	.4byte	.LFE230-.LFB230
	.4byte	.LFB231
	.4byte	.LFE231-.LFB231
	.4byte	.LFB232
	.4byte	.LFE232-.LFB232
	.4byte	.LFB233
	.4byte	.LFE233-.LFB233
	.4byte	.LFB234
	.4byte	.LFE234-.LFB234
	.4byte	.LFB235
	.4byte	.LFE235-.LFB235
	.4byte	.LFB236
	.4byte	.LFE236-.LFB236
	.4byte	.LFB237
	.4byte	.LFE237-.LFB237
	.4byte	.LFB238
	.4byte	.LFE238-.LFB238
	.4byte	.LFB239
	.4byte	.LFE239-.LFB239
	.4byte	.LFB240
	.4byte	.LFE240-.LFB240
	.4byte	.LFB241
	.4byte	.LFE241-.LFB241
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.4byte	.LFB244
	.4byte	.LFE244-.LFB244
	.4byte	.LFB245
	.4byte	.LFE245-.LFB245
	.4byte	.LFB246
	.4byte	.LFE246-.LFB246
	.4byte	.LFB247
	.4byte	.LFE247-.LFB247
	.4byte	.LFB248
	.4byte	.LFE248-.LFB248
	.4byte	.LFB249
	.4byte	.LFE249-.LFB249
	.4byte	.LFB250
	.4byte	.LFE250-.LFB250
	.4byte	.LFB251
	.4byte	.LFE251-.LFB251
	.4byte	.LFB252
	.4byte	.LFE252-.LFB252
	.4byte	.LFB253
	.4byte	.LFE253-.LFB253
	.4byte	.LFB254
	.4byte	.LFE254-.LFB254
	.4byte	.LFB255
	.4byte	.LFE255-.LFB255
	.4byte	.LFB256
	.4byte	.LFE256-.LFB256
	.4byte	.LFB257
	.4byte	.LFE257-.LFB257
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
	.4byte	.LBB66
	.byte	0x4
	.uleb128 .LBB66-.LBB66
	.uleb128 .LBE66-.LBB66
	.byte	0x4
	.uleb128 .LBB67-.LBB66
	.uleb128 .LBE67-.LBB66
	.byte	0
.LLRL1:
	.byte	0x5
	.4byte	.LBB102
	.byte	0x4
	.uleb128 .LBB102-.LBB102
	.uleb128 .LBE102-.LBB102
	.byte	0x4
	.uleb128 .LBB103-.LBB102
	.uleb128 .LBE103-.LBB102
	.byte	0
.LLRL2:
	.byte	0x5
	.4byte	.LBB109
	.byte	0x4
	.uleb128 .LBB109-.LBB109
	.uleb128 .LBE109-.LBB109
	.byte	0x4
	.uleb128 .LBB112-.LBB109
	.uleb128 .LBE112-.LBB109
	.byte	0
.LLRL3:
	.byte	0x7
	.4byte	.LFB27
	.uleb128 .LFE27-.LFB27
	.byte	0x7
	.4byte	.LFB28
	.uleb128 .LFE28-.LFB28
	.byte	0x7
	.4byte	.LFB96
	.uleb128 .LFE96-.LFB96
	.byte	0x7
	.4byte	.LFB115
	.uleb128 .LFE115-.LFB115
	.byte	0x7
	.4byte	.LFB116
	.uleb128 .LFE116-.LFB116
	.byte	0x7
	.4byte	.LFB117
	.uleb128 .LFE117-.LFB117
	.byte	0x7
	.4byte	.LFB122
	.uleb128 .LFE122-.LFB122
	.byte	0x7
	.4byte	.LFB123
	.uleb128 .LFE123-.LFB123
	.byte	0x7
	.4byte	.LFB124
	.uleb128 .LFE124-.LFB124
	.byte	0x7
	.4byte	.LFB125
	.uleb128 .LFE125-.LFB125
	.byte	0x7
	.4byte	.LFB142
	.uleb128 .LFE142-.LFB142
	.byte	0x7
	.4byte	.LFB143
	.uleb128 .LFE143-.LFB143
	.byte	0x7
	.4byte	.LFB144
	.uleb128 .LFE144-.LFB144
	.byte	0x7
	.4byte	.LFB145
	.uleb128 .LFE145-.LFB145
	.byte	0x7
	.4byte	.LFB146
	.uleb128 .LFE146-.LFB146
	.byte	0x7
	.4byte	.LFB152
	.uleb128 .LFE152-.LFB152
	.byte	0x7
	.4byte	.LFB158
	.uleb128 .LFE158-.LFB158
	.byte	0x7
	.4byte	.LFB160
	.uleb128 .LFE160-.LFB160
	.byte	0x7
	.4byte	.LFB163
	.uleb128 .LFE163-.LFB163
	.byte	0x7
	.4byte	.LFB166
	.uleb128 .LFE166-.LFB166
	.byte	0x7
	.4byte	.LFB167
	.uleb128 .LFE167-.LFB167
	.byte	0x7
	.4byte	.LFB168
	.uleb128 .LFE168-.LFB168
	.byte	0x7
	.4byte	.LFB169
	.uleb128 .LFE169-.LFB169
	.byte	0x7
	.4byte	.LFB170
	.uleb128 .LFE170-.LFB170
	.byte	0x7
	.4byte	.LFB171
	.uleb128 .LFE171-.LFB171
	.byte	0x7
	.4byte	.LFB172
	.uleb128 .LFE172-.LFB172
	.byte	0x7
	.4byte	.LFB173
	.uleb128 .LFE173-.LFB173
	.byte	0x7
	.4byte	.LFB174
	.uleb128 .LFE174-.LFB174
	.byte	0x7
	.4byte	.LFB175
	.uleb128 .LFE175-.LFB175
	.byte	0x7
	.4byte	.LFB176
	.uleb128 .LFE176-.LFB176
	.byte	0x7
	.4byte	.LFB177
	.uleb128 .LFE177-.LFB177
	.byte	0x7
	.4byte	.LFB178
	.uleb128 .LFE178-.LFB178
	.byte	0x7
	.4byte	.LFB179
	.uleb128 .LFE179-.LFB179
	.byte	0x7
	.4byte	.LFB180
	.uleb128 .LFE180-.LFB180
	.byte	0x7
	.4byte	.LFB181
	.uleb128 .LFE181-.LFB181
	.byte	0x7
	.4byte	.LFB182
	.uleb128 .LFE182-.LFB182
	.byte	0x7
	.4byte	.LFB183
	.uleb128 .LFE183-.LFB183
	.byte	0x7
	.4byte	.LFB184
	.uleb128 .LFE184-.LFB184
	.byte	0x7
	.4byte	.LFB185
	.uleb128 .LFE185-.LFB185
	.byte	0x7
	.4byte	.LFB186
	.uleb128 .LFE186-.LFB186
	.byte	0x7
	.4byte	.LFB187
	.uleb128 .LFE187-.LFB187
	.byte	0x7
	.4byte	.LFB188
	.uleb128 .LFE188-.LFB188
	.byte	0x7
	.4byte	.LFB189
	.uleb128 .LFE189-.LFB189
	.byte	0x7
	.4byte	.LFB190
	.uleb128 .LFE190-.LFB190
	.byte	0x7
	.4byte	.LFB191
	.uleb128 .LFE191-.LFB191
	.byte	0x7
	.4byte	.LFB192
	.uleb128 .LFE192-.LFB192
	.byte	0x7
	.4byte	.LFB193
	.uleb128 .LFE193-.LFB193
	.byte	0x7
	.4byte	.LFB194
	.uleb128 .LFE194-.LFB194
	.byte	0x7
	.4byte	.LFB195
	.uleb128 .LFE195-.LFB195
	.byte	0x7
	.4byte	.LFB196
	.uleb128 .LFE196-.LFB196
	.byte	0x7
	.4byte	.LFB197
	.uleb128 .LFE197-.LFB197
	.byte	0x7
	.4byte	.LFB198
	.uleb128 .LFE198-.LFB198
	.byte	0x7
	.4byte	.LFB199
	.uleb128 .LFE199-.LFB199
	.byte	0x7
	.4byte	.LFB200
	.uleb128 .LFE200-.LFB200
	.byte	0x7
	.4byte	.LFB201
	.uleb128 .LFE201-.LFB201
	.byte	0x7
	.4byte	.LFB202
	.uleb128 .LFE202-.LFB202
	.byte	0x7
	.4byte	.LFB203
	.uleb128 .LFE203-.LFB203
	.byte	0x7
	.4byte	.LFB204
	.uleb128 .LFE204-.LFB204
	.byte	0x7
	.4byte	.LFB205
	.uleb128 .LFE205-.LFB205
	.byte	0x7
	.4byte	.LFB206
	.uleb128 .LFE206-.LFB206
	.byte	0x7
	.4byte	.LFB207
	.uleb128 .LFE207-.LFB207
	.byte	0x7
	.4byte	.LFB208
	.uleb128 .LFE208-.LFB208
	.byte	0x7
	.4byte	.LFB209
	.uleb128 .LFE209-.LFB209
	.byte	0x7
	.4byte	.LFB210
	.uleb128 .LFE210-.LFB210
	.byte	0x7
	.4byte	.LFB211
	.uleb128 .LFE211-.LFB211
	.byte	0x7
	.4byte	.LFB212
	.uleb128 .LFE212-.LFB212
	.byte	0x7
	.4byte	.LFB213
	.uleb128 .LFE213-.LFB213
	.byte	0x7
	.4byte	.LFB214
	.uleb128 .LFE214-.LFB214
	.byte	0x7
	.4byte	.LFB215
	.uleb128 .LFE215-.LFB215
	.byte	0x7
	.4byte	.LFB216
	.uleb128 .LFE216-.LFB216
	.byte	0x7
	.4byte	.LFB217
	.uleb128 .LFE217-.LFB217
	.byte	0x7
	.4byte	.LFB218
	.uleb128 .LFE218-.LFB218
	.byte	0x7
	.4byte	.LFB219
	.uleb128 .LFE219-.LFB219
	.byte	0x7
	.4byte	.LFB220
	.uleb128 .LFE220-.LFB220
	.byte	0x7
	.4byte	.LFB221
	.uleb128 .LFE221-.LFB221
	.byte	0x7
	.4byte	.LFB222
	.uleb128 .LFE222-.LFB222
	.byte	0x7
	.4byte	.LFB223
	.uleb128 .LFE223-.LFB223
	.byte	0x7
	.4byte	.LFB224
	.uleb128 .LFE224-.LFB224
	.byte	0x7
	.4byte	.LFB225
	.uleb128 .LFE225-.LFB225
	.byte	0x7
	.4byte	.LFB226
	.uleb128 .LFE226-.LFB226
	.byte	0x7
	.4byte	.LFB227
	.uleb128 .LFE227-.LFB227
	.byte	0x7
	.4byte	.LFB228
	.uleb128 .LFE228-.LFB228
	.byte	0x7
	.4byte	.LFB229
	.uleb128 .LFE229-.LFB229
	.byte	0x7
	.4byte	.LFB230
	.uleb128 .LFE230-.LFB230
	.byte	0x7
	.4byte	.LFB231
	.uleb128 .LFE231-.LFB231
	.byte	0x7
	.4byte	.LFB232
	.uleb128 .LFE232-.LFB232
	.byte	0x7
	.4byte	.LFB233
	.uleb128 .LFE233-.LFB233
	.byte	0x7
	.4byte	.LFB234
	.uleb128 .LFE234-.LFB234
	.byte	0x7
	.4byte	.LFB235
	.uleb128 .LFE235-.LFB235
	.byte	0x7
	.4byte	.LFB236
	.uleb128 .LFE236-.LFB236
	.byte	0x7
	.4byte	.LFB237
	.uleb128 .LFE237-.LFB237
	.byte	0x7
	.4byte	.LFB238
	.uleb128 .LFE238-.LFB238
	.byte	0x7
	.4byte	.LFB239
	.uleb128 .LFE239-.LFB239
	.byte	0x7
	.4byte	.LFB240
	.uleb128 .LFE240-.LFB240
	.byte	0x7
	.4byte	.LFB241
	.uleb128 .LFE241-.LFB241
	.byte	0x7
	.4byte	.LFB242
	.uleb128 .LFE242-.LFB242
	.byte	0x7
	.4byte	.LFB243
	.uleb128 .LFE243-.LFB243
	.byte	0x7
	.4byte	.LFB244
	.uleb128 .LFE244-.LFB244
	.byte	0x7
	.4byte	.LFB245
	.uleb128 .LFE245-.LFB245
	.byte	0x7
	.4byte	.LFB246
	.uleb128 .LFE246-.LFB246
	.byte	0x7
	.4byte	.LFB247
	.uleb128 .LFE247-.LFB247
	.byte	0x7
	.4byte	.LFB248
	.uleb128 .LFE248-.LFB248
	.byte	0x7
	.4byte	.LFB249
	.uleb128 .LFE249-.LFB249
	.byte	0x7
	.4byte	.LFB250
	.uleb128 .LFE250-.LFB250
	.byte	0x7
	.4byte	.LFB251
	.uleb128 .LFE251-.LFB251
	.byte	0x7
	.4byte	.LFB252
	.uleb128 .LFE252-.LFB252
	.byte	0x7
	.4byte	.LFB253
	.uleb128 .LFE253-.LFB253
	.byte	0x7
	.4byte	.LFB254
	.uleb128 .LFE254-.LFB254
	.byte	0x7
	.4byte	.LFB255
	.uleb128 .LFE255-.LFB255
	.byte	0x7
	.4byte	.LFB256
	.uleb128 .LFE256-.LFB256
	.byte	0x7
	.4byte	.LFB257
	.uleb128 .LFE257-.LFB257
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF194:
	.string	"x509_crt_rs_find_parent"
.LASF199:
	.string	"in_progress"
.LASF571:
	.string	"mbedtls_ssl_set_inbound_transform"
.LASF105:
	.string	"cipher_info"
.LASF380:
	.string	"alpn_list"
.LASF381:
	.string	"dtls_srtp_profile_list"
.LASF599:
	.string	"message"
.LASF38:
	.string	"mbedtls_ecp_point"
.LASF433:
	.string	"buffering"
.LASF302:
	.string	"alert_reason"
.LASF257:
	.string	"encrypt_then_mac"
.LASF59:
	.string	"MBEDTLS_MD_SHA256"
.LASF784:
	.string	"mbedtls_ct_uint_lt"
.LASF625:
	.string	"update_hs_digest"
.LASF725:
	.string	"pad_count"
.LASF610:
	.string	"ssl_consume_current_message"
.LASF701:
	.string	"rem_len"
.LASF419:
	.string	"ciphersuite_info"
.LASF680:
	.string	"ssl_get_hs_frag_off"
.LASF677:
	.string	"first_byte_idx"
.LASF165:
	.string	"own_buffer"
.LASF65:
	.string	"MBEDTLS_MD_SHA3_512"
.LASF474:
	.string	"MBEDTLS_SSL_VERSION_TLS1_2"
.LASF475:
	.string	"MBEDTLS_SSL_VERSION_TLS1_3"
.LASF211:
	.string	"MBEDTLS_SSL_SERVER_CERTIFICATE"
.LASF539:
	.string	"mbedtls_md_hmac_finish"
.LASF607:
	.string	"ssl_buffering_free_slot"
.LASF30:
	.string	"MBEDTLS_ECP_DP_BP384R1"
.LASF221:
	.string	"MBEDTLS_SSL_SERVER_FINISHED"
.LASF628:
	.string	"done"
.LASF741:
	.string	"fixed_iv"
.LASF711:
	.string	"mbedtls_ssl_fetch_input"
.LASF470:
	.string	"mki_len"
.LASF642:
	.string	"ssl_check_record_type"
.LASF676:
	.string	"end_bits"
.LASF762:
	.string	"mbedtls_ssl_check_record"
.LASF15:
	.string	"uint16_t"
.LASF448:
	.string	"peer_cid_len"
.LASF407:
	.string	"mbedtls_ssl_handshake_params"
.LASF154:
	.string	"issuer_raw"
.LASF533:
	.string	"mbedtls_ct_memcpy_offset"
.LASF280:
	.string	"f_get_timer"
.LASF728:
	.string	"num_checks"
.LASF345:
	.string	"p_dbg"
.LASF314:
	.string	"out_buf_len"
.LASF370:
	.string	"f_async_resume"
.LASF687:
	.string	"tls_ver"
.LASF134:
	.string	"next"
.LASF426:
	.string	"ecdh_ctx"
.LASF132:
	.string	"mbedtls_asn1_buf"
.LASF291:
	.string	"in_left"
.LASF536:
	.string	"memcmp"
.LASF691:
	.string	"cleanup"
.LASF405:
	.string	"out_cid_len"
.LASF25:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF693:
	.string	"hs_len"
.LASF673:
	.string	"mask"
.LASF32:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF589:
	.string	"mbedtls_ssl_get_bytes_avail"
.LASF88:
	.string	"MBEDTLS_DECRYPT"
.LASF633:
	.string	"rec_hdr_type_len"
.LASF422:
	.string	"calc_finished"
.LASF163:
	.string	"sig_opts"
.LASF742:
	.string	"fixed_iv_len"
.LASF153:
	.string	"sig_oid"
.LASF518:
	.string	"mbedtls_ct_uint_t"
.LASF116:
	.string	"MBEDTLS_PK_ECDSA"
.LASF750:
	.string	"rec_type"
.LASF146:
	.string	"hour"
.LASF501:
	.string	"total_bytes_buffered"
.LASF279:
	.string	"f_set_timer"
.LASF283:
	.string	"in_hdr"
.LASF465:
	.string	"mbedtls_ssl_async_resume_t"
.LASF263:
	.string	"f_vrfy"
.LASF231:
	.string	"MBEDTLS_SSL_CLIENT_CCS_BEFORE_2ND_CLIENT_HELLO"
.LASF668:
	.string	"ssl_get_hs_total_len"
.LASF508:
	.string	"finished_in"
.LASF794:
	.string	"mbedtls_ssl_write_handshake_msg"
.LASF743:
	.string	"ssl_transform_aead_dynamic_iv_is_explicit"
.LASF577:
	.string	"ssl_write_real"
.LASF118:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF13:
	.string	"int32_t"
.LASF644:
	.string	"ssl_handle_possible_reconnect"
.LASF294:
	.string	"next_record_offset"
.LASF337:
	.string	"disable_renegotiation"
.LASF274:
	.string	"transform_in"
.LASF323:
	.string	"own_verify_data"
.LASF621:
	.string	"desired"
.LASF417:
	.string	"ecrs_peer_cert"
.LASF562:
	.string	"mbedtls_ssl_read_version"
.LASF181:
	.string	"key_usage"
.LASF685:
	.string	"flush"
.LASF596:
	.string	"mbedtls_ssl_write_change_cipher_spec"
.LASF70:
	.string	"md_ctx"
.LASF233:
	.string	"MBEDTLS_SSL_CLIENT_CCS_AFTER_CLIENT_HELLO"
.LASF160:
	.string	"sig_oid2"
.LASF698:
	.string	"mbedtls_ssl_flight_transmit"
.LASF121:
	.string	"mbedtls_pk_info_t"
.LASF702:
	.string	"cur_hs_frag_len"
.LASF185:
	.string	"allowed_mds"
.LASF531:
	.string	"mbedtls_ssl_resend_hello_request"
.LASF215:
	.string	"MBEDTLS_SSL_CLIENT_CERTIFICATE"
.LASF646:
	.string	"mbedtls_ssl_check_dtls_clihlo_cookie"
.LASF22:
	.string	"mbedtls_mpi"
.LASF629:
	.string	"old_msg_type"
.LASF84:
	.string	"MBEDTLS_MODE_KW"
.LASF653:
	.string	"shift"
.LASF600:
	.string	"mbedtls_ssl_send_fatal_handshake_failure"
.LASF537:
	.string	"mbedtls_cipher_crypt"
.LASF258:
	.string	"mbedtls_ssl_context"
.LASF410:
	.string	"sni_authmode"
.LASF244:
	.string	"mbedtls_ssl_session"
.LASF93:
	.string	"unprocessed_block"
.LASF529:
	.string	"free"
.LASF328:
	.string	"f_export_keys"
.LASF767:
	.string	"mbedtls_ct_hmac"
.LASF60:
	.string	"MBEDTLS_MD_SHA384"
.LASF656:
	.string	"record_in_ctr"
.LASF587:
	.string	"out_hdr_len"
.LASF97:
	.string	"block_size"
.LASF761:
	.string	"ssl_get_maximum_datagram_size"
.LASF669:
	.string	"ssl_get_reassembly_buffer_size"
.LASF542:
	.string	"memcpy"
.LASF758:
	.string	"expansion"
.LASF553:
	.string	"mbedtls_md_finish"
.LASF43:
	.string	"t_pre"
.LASF636:
	.string	"rec_hdr_ctr_len"
.LASF694:
	.string	"hs_type"
.LASF476:
	.string	"mbedtls_ssl_protocol_version"
.LASF69:
	.string	"md_info"
.LASF540:
	.string	"mbedtls_md_hmac_update"
.LASF220:
	.string	"MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC"
.LASF714:
	.string	"mbedtls_ssl_decrypt_buf"
.LASF149:
	.string	"revocation_date"
.LASF671:
	.string	"alloc_len"
.LASF191:
	.string	"trust_ca_cb_result"
.LASF616:
	.string	"reassembly_buf_sz"
.LASF312:
	.string	"out_msglen"
.LASF184:
	.string	"mbedtls_x509_crt_profile"
.LASF37:
	.string	"mbedtls_ecp_group_id"
.LASF692:
	.string	"mbedtls_ssl_write_handshake_msg_ext"
.LASF737:
	.string	"dynamic_iv_is_explicit"
.LASF227:
	.string	"MBEDTLS_SSL_ENCRYPTED_EXTENSIONS"
.LASF550:
	.string	"mbedtls_md_hmac_reset"
.LASF364:
	.string	"ca_chain"
.LASF111:
	.string	"cmac_ctx"
.LASF800:
	.string	"mbedtls_xor"
.LASF432:
	.string	"sni_ca_crl"
.LASF101:
	.string	"type"
.LASF739:
	.string	"dst_iv"
.LASF771:
	.string	"output"
.LASF647:
	.string	"obuf"
.LASF446:
	.string	"cid_in_use"
.LASF292:
	.string	"in_buf_len"
.LASF708:
	.string	"mbedtls_ssl_flight_free"
.LASF443:
	.string	"in_flight_start_seq"
.LASF236:
	.string	"MBEDTLS_SSL_TLS1_3_NEW_SESSION_TICKET"
.LASF481:
	.string	"MBEDTLS_SSL_HKDF_EXPAND_SHA256"
.LASF752:
	.string	"ssl_compute_padding_length"
.LASF355:
	.string	"f_cookie_write"
.LASF173:
	.string	"v3_ext"
.LASF100:
	.string	"mode"
.LASF803:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF42:
	.string	"modp"
.LASF672:
	.string	"ssl_bitmask_check"
.LASF251:
	.string	"master"
.LASF399:
	.string	"iv_dec"
.LASF663:
	.string	"payload_start"
.LASF667:
	.string	"record_len"
.LASF374:
	.string	"group_list"
.LASF415:
	.string	"ecrs_enabled"
.LASF441:
	.string	"cur_msg"
.LASF400:
	.string	"md_ctx_enc"
.LASF664:
	.string	"payload_end"
.LASF61:
	.string	"MBEDTLS_MD_SHA512"
.LASF3:
	.string	"unsigned char"
.LASF383:
	.string	"read_timeout"
.LASF324:
	.string	"peer_verify_data"
.LASF515:
	.string	"MBEDTLS_SSL_MODE_AEAD"
.LASF601:
	.string	"mbedtls_ssl_handle_message_type"
.LASF638:
	.string	"rec_hdr_cid_offset"
.LASF462:
	.string	"mbedtls_ssl_cache_set_t"
.LASF789:
	.string	"mbedtls_ct_compiler_opaque"
.LASF585:
	.string	"mbedtls_ssl_get_record_expansion"
.LASF704:
	.string	"mbedtls_ssl_resend"
.LASF275:
	.string	"transform_out"
.LASF723:
	.string	"dynamic_iv"
.LASF230:
	.string	"MBEDTLS_SSL_CLIENT_CCS_AFTER_SERVER_FINISHED"
.LASF802:
	.string	"mbedtls_get_unaligned_uint16"
.LASF517:
	.string	"mbedtls_ct_condition_t"
.LASF203:
	.string	"mbedtls_x509_crt_ca_cb_t"
.LASF424:
	.string	"received_sig_algs"
.LASF727:
	.string	"padding_idx"
.LASF264:
	.string	"p_vrfy"
.LASF55:
	.string	"MBEDTLS_MD_MD5"
.LASF110:
	.string	"cipher_ctx"
.LASF435:
	.string	"cookie_len"
.LASF651:
	.string	"mbedtls_ssl_dtls_replay_update"
.LASF119:
	.string	"MBEDTLS_PK_OPAQUE"
.LASF159:
	.string	"crl_ext"
.LASF688:
	.string	"remaining"
.LASF632:
	.string	"rec_hdr_type_offset"
.LASF713:
	.string	"timeout"
.LASF560:
	.string	"mbedtls_md_get_type"
.LASF572:
	.string	"mbedtls_ssl_transform_free"
.LASF552:
	.string	"mbedtls_ct_memcpy_if"
.LASF190:
	.string	"items"
.LASF229:
	.string	"MBEDTLS_SSL_CLIENT_CERTIFICATE_VERIFY"
.LASF17:
	.string	"uint64_t"
.LASF597:
	.string	"mbedtls_ssl_send_alert_message"
.LASF87:
	.string	"MBEDTLS_OPERATION_NONE"
.LASF421:
	.string	"calc_verify"
.LASF27:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF40:
	.string	"pbits"
.LASF177:
	.string	"certificate_policies"
.LASF488:
	.string	"mbedtls_ssl_tls_prf_cb"
.LASF738:
	.string	"ssl_build_record_nonce"
.LASF413:
	.string	"async_in_progress"
.LASF763:
	.string	"buflen"
.LASF754:
	.string	"ssl_reset_retransmit_timeout"
.LASF484:
	.string	"mbedtls_ssl_key_export_type"
.LASF756:
	.string	"new_timeout"
.LASF611:
	.string	"ssl_buffer_message"
.LASF150:
	.string	"entry_ext"
.LASF547:
	.string	"mbedtls_debug_print_buf"
.LASF362:
	.string	"cert_profile"
.LASF246:
	.string	"exported"
.LASF243:
	.string	"mbedtls_ssl_get_timer_t"
.LASF641:
	.string	"rec_hdr_len_len"
.LASF109:
	.string	"unprocessed_data"
.LASF520:
	.string	"mbedtls_zeroize_and_free"
.LASF201:
	.string	"ver_chain"
.LASF563:
	.string	"mbedtls_ssl_pend_fatal_alert"
.LASF48:
	.string	"mbedtls_ecp_restart_muladd_ctx"
.LASF295:
	.string	"in_window_top"
.LASF458:
	.string	"mbedtls_ssl_key_cert"
.LASF331:
	.string	"mbedtls_ssl_config"
.LASF612:
	.string	"exit"
.LASF690:
	.string	"msg_with_header_len"
.LASF336:
	.string	"anti_replay"
.LASF609:
	.string	"ssl_record_is_in_progress"
.LASF94:
	.string	"unprocessed_len"
.LASF39:
	.string	"mbedtls_ecp_group"
.LASF783:
	.string	"diff"
.LASF594:
	.string	"ssl_transform_get_explicit_iv_len"
.LASF654:
	.string	"mbedtls_ssl_dtls_replay_check"
.LASF548:
	.string	"mbedtls_debug_print_msg"
.LASF608:
	.string	"ssl_free_buffered_record"
.LASF795:
	.string	"mbedtls_ssl_handshake_increment_state"
.LASF167:
	.string	"subject"
.LASF178:
	.string	"ext_types"
.LASF367:
	.string	"p_ca_cb"
.LASF745:
	.string	"ad_len_field"
.LASF270:
	.string	"session_out"
.LASF329:
	.string	"p_export_keys"
.LASF12:
	.string	"size_t"
.LASF716:
	.string	"auth_done"
.LASF442:
	.string	"cur_msg_p"
.LASF14:
	.string	"uint8_t"
.LASF549:
	.string	"mbedtls_md_free"
.LASF395:
	.string	"fixed_ivlen"
.LASF142:
	.string	"authorityCertIssuer"
.LASF624:
	.string	"mbedtls_ssl_read_record"
.LASF242:
	.string	"mbedtls_ssl_set_timer_t"
.LASF480:
	.string	"MBEDTLS_SSL_HKDF_EXPAND_SHA384"
.LASF747:
	.string	"ssl_parse_inner_plaintext"
.LASF21:
	.string	"mbedtls_mpi_uint"
.LASF565:
	.string	"tls_version_formatted"
.LASF455:
	.string	"user_async_ctx"
.LASF91:
	.string	"mbedtls_cmac_context_t"
.LASF613:
	.string	"recv_msg_seq_offset"
.LASF168:
	.string	"valid_from"
.LASF665:
	.string	"hs_remain"
.LASF541:
	.string	"mbedtls_ssl_get_mode_from_transform"
.LASF250:
	.string	"id_len"
.LASF57:
	.string	"MBEDTLS_MD_SHA1"
.LASF353:
	.string	"f_psk"
.LASF720:
	.string	"add_data_len"
.LASF23:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF425:
	.string	"dhm_ctx"
.LASF313:
	.string	"out_left"
.LASF622:
	.string	"ssl_load_buffered_message"
.LASF678:
	.string	"last_byte_idx"
.LASF567:
	.string	"hs_buf"
.LASF207:
	.string	"restart_enabled"
.LASF623:
	.string	"ssl_next_record_is_in_datagram"
.LASF760:
	.string	"bytes_written"
.LASF218:
	.string	"MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC"
.LASF175:
	.string	"subject_key_id"
.LASF452:
	.string	"state_local"
.LASF472:
	.string	"mbedtls_dtls_srtp_info"
.LASF225:
	.string	"MBEDTLS_SSL_SERVER_HELLO_VERIFY_REQUEST_SENT"
.LASF339:
	.string	"cert_req_ca_list"
.LASF522:
	.string	"mbedtls_ssl_get_max_out_record_payload"
.LASF320:
	.string	"cli_id_len"
.LASF406:
	.string	"randbytes"
.LASF477:
	.string	"MBEDTLS_SSL_TLS_PRF_NONE"
.LASF169:
	.string	"valid_to"
.LASF144:
	.string	"mbedtls_x509_time"
.LASF430:
	.string	"sni_key_cert"
.LASF135:
	.string	"mbedtls_asn1_named_data"
.LASF414:
	.string	"retransmit_state"
.LASF655:
	.string	"mbedtls_ssl_dtls_record_replay_check"
.LASF603:
	.string	"ssl_buffer_future_record"
.LASF187:
	.string	"allowed_curves"
.LASF133:
	.string	"mbedtls_asn1_sequence"
.LASF180:
	.string	"max_pathlen"
.LASF670:
	.string	"add_bitmap"
.LASF510:
	.string	"data_offset"
.LASF382:
	.string	"dtls_srtp_profile_list_len"
.LASF590:
	.string	"mbedtls_ssl_reset_out_pointers"
.LASF516:
	.string	"mbedtls_ssl_mode_t"
.LASF559:
	.string	"mbedtls_md_get_size"
.LASF606:
	.string	"rec_epoch"
.LASF47:
	.string	"mbedtls_ecp_restart_mul_ctx"
.LASF781:
	.string	"condition"
.LASF643:
	.string	"record_type"
.LASF176:
	.string	"authority_key_id"
.LASF396:
	.string	"maclen"
.LASF237:
	.string	"MBEDTLS_SSL_TLS1_3_NEW_SESSION_TICKET_FLUSH"
.LASF357:
	.string	"p_cookie"
.LASF418:
	.string	"ecrs_n"
.LASF309:
	.string	"out_iv"
.LASF682:
	.string	"ssl_hs_is_proper_fragment"
.LASF326:
	.string	"own_cid_len"
.LASF513:
	.string	"MBEDTLS_SSL_MODE_CBC"
.LASF401:
	.string	"md_ctx_dec"
.LASF721:
	.string	"hmac_failed_etm_enabled"
.LASF437:
	.string	"out_msg_seq"
.LASF525:
	.string	"mbedtls_ssl_renegotiate"
.LASF712:
	.string	"nb_want"
.LASF145:
	.string	"year"
.LASF543:
	.string	"mbedtls_ssl_get_output_max_frag_len"
.LASF658:
	.string	"ssl_load_six_bytes"
.LASF486:
	.string	"mbedtls_ssl_hs_cb_t"
.LASF222:
	.string	"MBEDTLS_SSL_FLUSH_BUFFERS"
.LASF449:
	.string	"fin_sha256"
.LASF267:
	.string	"f_recv_timeout"
.LASF397:
	.string	"taglen"
.LASF143:
	.string	"authorityCertSerialNumber"
.LASF753:
	.string	"granularity"
.LASF726:
	.string	"check"
.LASF686:
	.string	"protected_record_size"
.LASF256:
	.string	"ticket_lifetime"
.LASF457:
	.string	"sni_name_len"
.LASF538:
	.string	"mbedtls_cipher_auth_encrypt_ext"
.LASF566:
	.string	"slot"
.LASF709:
	.string	"ssl_flight_append"
.LASF463:
	.string	"mbedtls_ssl_async_sign_t"
.LASF376:
	.string	"dhm_G"
.LASF375:
	.string	"dhm_P"
.LASF289:
	.string	"in_msgtype"
.LASF74:
	.string	"MBEDTLS_MODE_CBC"
.LASF387:
	.string	"renego_period"
.LASF356:
	.string	"f_cookie_check"
.LASF260:
	.string	"renego_status"
.LASF241:
	.string	"mbedtls_ssl_recv_timeout_t"
.LASF523:
	.string	"mbedtls_ssl_handshake"
.LASF637:
	.string	"rec_hdr_ctr_offset"
.LASF748:
	.string	"content"
.LASF491:
	.string	"ssl_ecrs_ske_start_processing"
.LASF189:
	.string	"mbedtls_x509_crt_verify_chain_item"
.LASF398:
	.string	"iv_enc"
.LASF29:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF89:
	.string	"MBEDTLS_ENCRYPT"
.LASF80:
	.string	"MBEDTLS_MODE_CCM"
.LASF346:
	.string	"f_rng"
.LASF390:
	.string	"f_cert_cb"
.LASF445:
	.string	"alt_out_ctr"
.LASF228:
	.string	"MBEDTLS_SSL_END_OF_EARLY_DATA"
.LASF558:
	.string	"mbedtls_md_init"
.LASF586:
	.string	"transform_expansion"
.LASF581:
	.string	"ssl_check_ctr_renegotiate"
.LASF729:
	.string	"start_idx"
.LASF684:
	.string	"force_flush"
.LASF103:
	.string	"base_idx"
.LASF403:
	.string	"cipher_ctx_dec"
.LASF461:
	.string	"mbedtls_ssl_cache_get_t"
.LASF179:
	.string	"ca_istrue"
.LASF431:
	.string	"sni_ca_chain"
.LASF598:
	.string	"level"
.LASF521:
	.string	"mbedtls_cipher_free"
.LASF196:
	.string	"fallback_parent"
.LASF96:
	.string	"name"
.LASF429:
	.string	"ecrs_ctx"
.LASF285:
	.string	"in_len"
.LASF699:
	.string	"max_frag_len"
.LASF354:
	.string	"p_psk"
.LASF512:
	.string	"MBEDTLS_SSL_MODE_STREAM"
.LASF108:
	.string	"get_padding"
.LASF136:
	.string	"next_merged"
.LASF482:
	.string	"mbedtls_tls_prf_types"
.LASF456:
	.string	"sni_name"
.LASF408:
	.string	"resume"
.LASF131:
	.string	"max_tls_version"
.LASF223:
	.string	"MBEDTLS_SSL_HANDSHAKE_WRAPUP"
.LASF377:
	.string	"psk_len"
.LASF650:
	.string	"fragment_offset"
.LASF730:
	.string	"mac_expect"
.LASF640:
	.string	"rec_hdr_len_offset"
.LASF496:
	.string	"is_fragmented"
.LASF99:
	.string	"key_bitlen"
.LASF166:
	.string	"subject_raw"
.LASF412:
	.string	"new_session_ticket"
.LASF791:
	.string	"mbedtls_ssl_hs_hdr_len"
.LASF502:
	.string	"seen_ccs"
.LASF368:
	.string	"f_async_sign_start"
.LASF75:
	.string	"MBEDTLS_MODE_CFB"
.LASF245:
	.string	"mfl_code"
.LASF660:
	.string	"mbedtls_ssl_update_handshake_status"
.LASF308:
	.string	"out_len"
.LASF338:
	.string	"session_tickets"
.LASF67:
	.string	"mbedtls_md_info_t"
.LASF31:
	.string	"MBEDTLS_ECP_DP_BP512R1"
.LASF710:
	.string	"mbedtls_ssl_flush_output"
.LASF147:
	.string	"mbedtls_x509_crl_entry"
.LASF5:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF799:
	.string	"mbedtls_cipher_get_block_size"
.LASF186:
	.string	"allowed_pks"
.LASF505:
	.string	"digest"
.LASF114:
	.string	"MBEDTLS_PK_ECKEY"
.LASF45:
	.string	"t_data"
.LASF483:
	.string	"MBEDTLS_SSL_KEY_EXPORT_TLS12_MASTER_SECRET"
.LASF202:
	.string	"mbedtls_x509_crt_restart_ctx"
.LASF248:
	.string	"tls_version"
.LASF393:
	.string	"minlen"
.LASF90:
	.string	"mbedtls_operation_t"
.LASF447:
	.string	"peer_cid"
.LASF139:
	.string	"mbedtls_x509_sequence"
.LASF765:
	.string	"mbedtls_ssl_set_timer"
.LASF51:
	.string	"ops_done"
.LASF388:
	.string	"badmac_limit"
.LASF371:
	.string	"f_async_cancel"
.LASF785:
	.string	"cond"
.LASF259:
	.string	"conf"
.LASF261:
	.string	"renego_records_seen"
.LASF217:
	.string	"MBEDTLS_SSL_CERTIFICATE_VERIFY"
.LASF301:
	.string	"alert_type"
.LASF773:
	.string	"ikey"
.LASF634:
	.string	"rec_hdr_version_offset"
.LASF126:
	.string	"mbedtls_pk_restart_ctx"
.LASF92:
	.string	"state"
.LASF389:
	.string	"dhm_min_bitlen"
.LASF774:
	.string	"okey"
.LASF766:
	.string	"millisecs"
.LASF438:
	.string	"in_msg_seq"
.LASF464:
	.string	"mbedtls_ssl_async_decrypt_t"
.LASF718:
	.string	"correct"
.LASF351:
	.string	"f_sni"
.LASF731:
	.string	"increment"
.LASF85:
	.string	"MBEDTLS_MODE_KWP"
.LASF450:
	.string	"fin_sha384"
.LASF358:
	.string	"f_ticket_write"
.LASF155:
	.string	"issuer"
.LASF575:
	.string	"max_len"
.LASF798:
	.string	"mbedtls_cipher_get_cipher_mode"
.LASF719:
	.string	"add_data"
.LASF768:
	.string	"data_len_secret"
.LASF120:
	.string	"mbedtls_pk_type_t"
.LASF113:
	.string	"MBEDTLS_PK_RSA"
.LASF106:
	.string	"operation"
.LASF514:
	.string	"MBEDTLS_SSL_MODE_CBC_ETM"
.LASF321:
	.string	"secure_renegotiation"
.LASF210:
	.string	"MBEDTLS_SSL_SERVER_HELLO"
.LASF527:
	.string	"mbedtls_ssl_handshake_wrapup_free_hs_transform"
.LASF123:
	.string	"pk_info"
.LASF546:
	.string	"mbedtls_debug_print_ret"
.LASF318:
	.string	"dtls_srtp_info"
.LASF468:
	.string	"mbedtls_dtls_srtp_info_t"
.LASF532:
	.string	"memmove"
.LASF801:
	.string	"mbedtls_put_unaligned_uint16"
.LASF50:
	.string	"mbedtls_ecp_restart_muladd"
.LASF137:
	.string	"mbedtls_x509_buf"
.LASF732:
	.string	"mac_peer"
.LASF335:
	.string	"extended_ms"
.LASF631:
	.string	"ssl_parse_record_header"
.LASF436:
	.string	"cookie_verify_result"
.LASF322:
	.string	"verify_data_len"
.LASF503:
	.string	"future_record"
.LASF35:
	.string	"MBEDTLS_ECP_DP_SECP256K1"
.LASF454:
	.string	"pmslen"
.LASF595:
	.string	"mbedtls_ssl_parse_change_cipher_spec"
.LASF6:
	.string	"long int"
.LASF347:
	.string	"p_rng"
.LASF717:
	.string	"padlen"
.LASF174:
	.string	"subject_alt_names"
.LASF255:
	.string	"ticket_len"
.LASF507:
	.string	"finished_out"
.LASF183:
	.string	"ns_cert_type"
.LASF288:
	.string	"in_offt"
.LASF193:
	.string	"x509_crt_rs_none"
.LASF157:
	.string	"next_update"
.LASF615:
	.string	"msg_len"
.LASF156:
	.string	"this_update"
.LASF578:
	.string	"ssl_read_application_data"
.LASF125:
	.string	"rs_ctx"
.LASF360:
	.string	"p_ticket"
.LASF68:
	.string	"mbedtls_md_context_t"
.LASF703:
	.string	"max_hs_frag_len"
.LASF497:
	.string	"is_complete"
.LASF271:
	.string	"session"
.LASF700:
	.string	"is_finished"
.LASF330:
	.string	"user_data"
.LASF411:
	.string	"certificate_request_sent"
.LASF639:
	.string	"rec_hdr_cid_len"
.LASF16:
	.string	"uint32_t"
.LASF617:
	.string	"frag_len"
.LASF635:
	.string	"rec_hdr_version_len"
.LASF253:
	.string	"verify_result"
.LASF18:
	.string	"uintptr_t"
.LASF733:
	.string	"min_len"
.LASF11:
	.string	"long double"
.LASF151:
	.string	"mbedtls_x509_crl"
.LASF219:
	.string	"MBEDTLS_SSL_CLIENT_FINISHED"
.LASF164:
	.string	"mbedtls_x509_crt"
.LASF52:
	.string	"depth"
.LASF630:
	.string	"ssl_check_client_reconnect"
.LASF269:
	.string	"session_in"
.LASF72:
	.string	"MBEDTLS_MODE_NONE"
.LASF148:
	.string	"serial"
.LASF115:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF363:
	.string	"key_cert"
.LASF404:
	.string	"in_cid_len"
.LASF7:
	.string	"long unsigned int"
.LASF104:
	.string	"mbedtls_cipher_context_t"
.LASF83:
	.string	"MBEDTLS_MODE_CHACHAPOLY"
.LASF41:
	.string	"nbits"
.LASF619:
	.string	"bitmask"
.LASF158:
	.string	"entry"
.LASF459:
	.string	"cert"
.LASF707:
	.string	"tmp_out_ctr"
.LASF73:
	.string	"MBEDTLS_MODE_ECB"
.LASF697:
	.string	"mbedtls_ssl_recv_flight_completed"
.LASF652:
	.string	"rec_seqnum"
.LASF247:
	.string	"endpoint"
.LASF379:
	.string	"psk_identity_len"
.LASF44:
	.string	"t_post"
.LASF171:
	.string	"issuer_id"
.LASF797:
	.string	"mbedtls_ssl_is_handshake_over"
.LASF495:
	.string	"is_valid"
.LASF19:
	.string	"char"
.LASF614:
	.string	"recv_msg_seq"
.LASF334:
	.string	"allow_legacy_renegotiation"
.LASF602:
	.string	"ssl_get_next_record"
.LASF234:
	.string	"MBEDTLS_SSL_SERVER_CCS_AFTER_HELLO_RETRY_REQUEST"
.LASF775:
	.string	"hash_size"
.LASF588:
	.string	"mbedtls_ssl_check_pending"
.LASF300:
	.string	"send_alert"
.LASF76:
	.string	"MBEDTLS_MODE_OFB"
.LASF420:
	.string	"update_checksum"
.LASF788:
	.string	"mbedtls_ct_bool"
.LASF554:
	.string	"mbedtls_md_clone"
.LASF793:
	.string	"mbedtls_ssl_in_hdr_len"
.LASF528:
	.string	"mbedtls_ssl_session_reset_int"
.LASF715:
	.string	"ssl_mode"
.LASF453:
	.string	"premaster"
.LASF284:
	.string	"in_cid"
.LASF327:
	.string	"negotiate_cid"
.LASF423:
	.string	"tls_prf"
.LASF212:
	.string	"MBEDTLS_SSL_SERVER_KEY_EXCHANGE"
.LASF679:
	.string	"ssl_check_hs_header"
.LASF112:
	.string	"MBEDTLS_PK_NONE"
.LASF487:
	.string	"mbedtls_ssl_user_data_t"
.LASF675:
	.string	"start_bits"
.LASF460:
	.string	"mbedtls_ssl_flight_item"
.LASF661:
	.string	"mbedtls_ssl_prepare_handshake_record"
.LASF343:
	.string	"ciphersuite_list"
.LASF352:
	.string	"p_sni"
.LASF124:
	.string	"pk_ctx"
.LASF198:
	.string	"parent_is_trusted"
.LASF293:
	.string	"in_epoch"
.LASF573:
	.string	"mbedtls_ssl_close_notify"
.LASF319:
	.string	"cli_id"
.LASF544:
	.string	"mbedtls_ssl_get_current_mtu"
.LASF200:
	.string	"self_cnt"
.LASF724:
	.string	"dynamic_iv_len"
.LASF26:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF141:
	.string	"keyIdentifier"
.LASF307:
	.string	"out_cid"
.LASF138:
	.string	"mbedtls_x509_name"
.LASF681:
	.string	"ssl_get_hs_frag_len"
.LASF786:
	.string	"mbedtls_ct_if"
.LASF348:
	.string	"f_get_cache"
.LASF192:
	.string	"mbedtls_x509_crt_verify_chain"
.LASF574:
	.string	"mbedtls_ssl_write"
.LASF683:
	.string	"mbedtls_ssl_write_record"
.LASF28:
	.string	"MBEDTLS_ECP_DP_SECP521R1"
.LASF535:
	.string	"mbedtls_cipher_auth_decrypt_ext"
.LASF317:
	.string	"alpn_chosen"
.LASF373:
	.string	"sig_algs"
.LASF402:
	.string	"cipher_ctx_enc"
.LASF722:
	.string	"hmac_failed_etm_disabled"
.LASF272:
	.string	"session_negotiate"
.LASF286:
	.string	"in_iv"
.LASF620:
	.string	"ssl_buffer_make_space"
.LASF273:
	.string	"handshake"
.LASF385:
	.string	"hs_timeout_max"
.LASF534:
	.string	"mbedtls_ct_memcmp"
.LASF369:
	.string	"f_async_decrypt_start"
.LASF206:
	.string	"point_format"
.LASF46:
	.string	"T_size"
.LASF489:
	.string	"ssl_ecrs_none"
.LASF71:
	.string	"hmac_ctx"
.LASF466:
	.string	"mbedtls_ssl_async_cancel_t"
.LASF296:
	.string	"in_window"
.LASF252:
	.string	"peer_cert"
.LASF209:
	.string	"MBEDTLS_SSL_CLIENT_HELLO"
.LASF582:
	.string	"ep_len"
.LASF86:
	.string	"mbedtls_cipher_mode_t"
.LASF492:
	.string	"ssl_ecrs_cke_ecdh_calc_secret"
.LASF122:
	.string	"mbedtls_pk_context"
.LASF556:
	.string	"mbedtls_md_update"
.LASF107:
	.string	"add_padding"
.LASF332:
	.string	"transport"
.LASF197:
	.string	"fallback_signature_is_good"
.LASF77:
	.string	"MBEDTLS_MODE_CTR"
.LASF524:
	.string	"mbedtls_ssl_start_renegotiation"
.LASF277:
	.string	"transform_negotiate"
.LASF62:
	.string	"MBEDTLS_MD_SHA3_224"
.LASF657:
	.string	"original_in_ctr"
.LASF580:
	.string	"ssl_tls12_handle_hs_message_post_handshake"
.LASF526:
	.string	"mbedtls_ssl_states_str"
.LASF666:
	.string	"hs_this_fragment_len"
.LASF473:
	.string	"MBEDTLS_SSL_VERSION_UNKNOWN"
.LASF262:
	.string	"badmac_seen_or_in_hsfraglen"
.LASF593:
	.string	"mbedtls_ssl_update_out_pointers"
.LASF705:
	.string	"ssl_swap_epochs"
.LASF471:
	.string	"mki_value"
.LASF366:
	.string	"f_ca_cb"
.LASF316:
	.string	"hostname"
.LASF751:
	.string	"ssl_build_inner_plaintext"
.LASF662:
	.string	"reassembled_record_start"
.LASF394:
	.string	"ivlen"
.LASF530:
	.string	"calloc"
.LASF498:
	.string	"data"
.LASF239:
	.string	"mbedtls_ssl_send_t"
.LASF306:
	.string	"out_hdr"
.LASF82:
	.string	"MBEDTLS_MODE_XTS"
.LASF568:
	.string	"mbedtls_ssl_buffering_free"
.LASF281:
	.string	"in_buf"
.LASF649:
	.string	"sid_len"
.LASF777:
	.string	"mbedtls_ct_bool_and"
.LASF772:
	.string	"md_alg"
.LASF214:
	.string	"MBEDTLS_SSL_SERVER_HELLO_DONE"
.LASF204:
	.string	"mbedtls_dhm_context"
.LASF551:
	.string	"mbedtls_md_starts"
.LASF479:
	.string	"MBEDTLS_SSL_TLS_PRF_SHA256"
.LASF378:
	.string	"psk_identity"
.LASF490:
	.string	"ssl_ecrs_crt_verify"
.LASF485:
	.string	"mbedtls_ssl_export_keys_t"
.LASF240:
	.string	"mbedtls_ssl_recv_t"
.LASF249:
	.string	"ciphersuite"
.LASF645:
	.string	"send_ret"
.LASF205:
	.string	"mbedtls_ecdh_context"
.LASF734:
	.string	"mbedtls_ssl_encrypt_buf"
.LASF63:
	.string	"MBEDTLS_MD_SHA3_256"
.LASF20:
	.string	"mbedtls_uint16_unaligned_t"
.LASF235:
	.string	"MBEDTLS_SSL_HANDSHAKE_OVER"
.LASF499:
	.string	"data_len"
.LASF325:
	.string	"own_cid"
.LASF213:
	.string	"MBEDTLS_SSL_CERTIFICATE_REQUEST"
.LASF340:
	.string	"respect_cli_pref"
.LASF350:
	.string	"p_cache"
.LASF81:
	.string	"MBEDTLS_MODE_CCM_STAR_NO_TAG"
.LASF372:
	.string	"p_async_config_data"
.LASF626:
	.string	"dtls_have_buffered"
.LASF304:
	.string	"out_buf"
.LASF561:
	.string	"mbedtls_ssl_handle_pending_alert"
.LASF287:
	.string	"in_msg"
.LASF130:
	.string	"min_tls_version"
.LASF787:
	.string	"not_cond"
.LASF706:
	.string	"tmp_transform"
.LASF161:
	.string	"sig_md"
.LASF232:
	.string	"MBEDTLS_SSL_SERVER_CCS_AFTER_SERVER_HELLO"
.LASF359:
	.string	"f_ticket_parse"
.LASF451:
	.string	"client_auth"
.LASF33:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
.LASF341:
	.string	"ignore_unexpected_cid"
.LASF9:
	.string	"long long unsigned int"
.LASF216:
	.string	"MBEDTLS_SSL_CLIENT_KEY_EXCHANGE"
.LASF195:
	.string	"parent"
.LASF569:
	.string	"offset"
.LASF172:
	.string	"subject_id"
.LASF297:
	.string	"in_hslen"
.LASF386:
	.string	"renego_max_records"
.LASF604:
	.string	"ssl_load_buffered_record"
.LASF427:
	.string	"curves_tls_id"
.LASF409:
	.string	"cli_exts"
.LASF744:
	.string	"ssl_extract_add_data_from_record"
.LASF439:
	.string	"retransmit_timeout"
.LASF170:
	.string	"pk_raw"
.LASF54:
	.string	"MBEDTLS_MD_NONE"
.LASF333:
	.string	"authmode"
.LASF310:
	.string	"out_msg"
.LASF735:
	.string	"post_avail"
.LASF759:
	.string	"ssl_get_remaining_space_in_datagram"
.LASF36:
	.string	"MBEDTLS_ECP_DP_CURVE448"
.LASF226:
	.string	"MBEDTLS_SSL_HELLO_RETRY_REQUEST"
.LASF182:
	.string	"ext_key_usage"
.LASF188:
	.string	"rsa_min_bitlen"
.LASF238:
	.string	"mbedtls_ssl_states"
.LASF266:
	.string	"f_recv"
.LASF78:
	.string	"MBEDTLS_MODE_GCM"
.LASF770:
	.string	"max_data_len"
.LASF434:
	.string	"cookie"
.LASF384:
	.string	"hs_timeout_min"
.LASF440:
	.string	"flight"
.LASF303:
	.string	"disable_datagram_packing"
.LASF755:
	.string	"ssl_double_retransmit_timeout"
.LASF584:
	.string	"out_ctr_cmp"
.LASF282:
	.string	"in_ctr"
.LASF695:
	.string	"mbedtls_ssl_start_handshake_msg"
.LASF493:
	.string	"ssl_ecrs_crt_vrfy_sign"
.LASF162:
	.string	"sig_pk"
.LASF592:
	.string	"mbedtls_ssl_update_in_pointers"
.LASF790:
	.string	"mbedtls_ssl_ep_len"
.LASF605:
	.string	"rec_len"
.LASF416:
	.string	"ecrs_state"
.LASF500:
	.string	"epoch"
.LASF627:
	.string	"ssl_prepare_record_content"
.LASF689:
	.string	"mbedtls_ssl_finish_handshake_msg"
.LASF79:
	.string	"MBEDTLS_MODE_STREAM"
.LASF8:
	.string	"long long int"
.LASF779:
	.string	"mbedtls_ct_uint_eq"
.LASF796:
	.string	"mbedtls_ssl_handshake_set_state"
.LASF740:
	.string	"dst_iv_len"
.LASF696:
	.string	"mbedtls_ssl_send_flight_completed"
.LASF305:
	.string	"out_ctr"
.LASF342:
	.string	"dtls_srtp_mki_support"
.LASF764:
	.string	"mbedtls_ssl_check_timer"
.LASF265:
	.string	"f_send"
.LASF769:
	.string	"min_data_len"
.LASF444:
	.string	"alt_transform_out"
.LASF391:
	.string	"dn_hints"
.LASF576:
	.string	"mbedtls_ssl_read"
.LASF555:
	.string	"memset"
.LASF782:
	.string	"mbedtls_ct_uint_ne"
.LASF648:
	.string	"olen"
.LASF776:
	.string	"aux_out"
.LASF117:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF511:
	.string	"mbedtls_record"
.LASF674:
	.string	"ssl_bitmask_set"
.LASF749:
	.string	"content_size"
.LASF98:
	.string	"iv_size"
.LASF278:
	.string	"p_timer"
.LASF254:
	.string	"ticket"
.LASF557:
	.string	"mbedtls_md_setup"
.LASF504:
	.string	"preparation_done"
.LASF570:
	.string	"mbedtls_ssl_set_outbound_transform"
.LASF127:
	.string	"mbedtls_ssl_ciphersuite_t"
.LASF344:
	.string	"f_dbg"
.LASF778:
	.string	"mbedtls_ct_uint_ge"
.LASF276:
	.string	"transform"
.LASF591:
	.string	"mbedtls_ssl_reset_in_pointers"
.LASF509:
	.string	"buf_len"
.LASF129:
	.string	"key_exchange"
.LASF392:
	.string	"mbedtls_ssl_transform"
.LASF290:
	.string	"in_msglen"
.LASF618:
	.string	"frag_off"
.LASF478:
	.string	"MBEDTLS_SSL_TLS_PRF_SHA384"
.LASF298:
	.string	"nb_zero"
.LASF494:
	.string	"mbedtls_ssl_hs_buffer"
.LASF361:
	.string	"cid_len"
.LASF583:
	.string	"in_ctr_cmp"
.LASF24:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF49:
	.string	"mbedtls_ecp_restart_mul"
.LASF140:
	.string	"mbedtls_x509_authority"
.LASF64:
	.string	"MBEDTLS_MD_SHA3_384"
.LASF519:
	.string	"mbedtls_ct_int_t"
.LASF152:
	.string	"version"
.LASF128:
	.string	"cipher"
.LASF208:
	.string	"MBEDTLS_SSL_HELLO_REQUEST"
.LASF428:
	.string	"selected_identity"
.LASF10:
	.string	"unsigned int"
.LASF736:
	.string	"padding"
.LASF58:
	.string	"MBEDTLS_MD_SHA224"
.LASF34:
	.string	"MBEDTLS_ECP_DP_SECP224K1"
.LASF506:
	.string	"digest_len"
.LASF224:
	.string	"MBEDTLS_SSL_NEW_SESSION_TICKET"
.LASF53:
	.string	"mbedtls_ecp_restart_ctx"
.LASF545:
	.string	"mbedtls_platform_zeroize"
.LASF564:
	.string	"mbedtls_ssl_write_version"
.LASF746:
	.string	"seq_num_placeholder"
.LASF311:
	.string	"out_msgtype"
.LASF780:
	.string	"mbedtls_ct_size_if_else_0"
.LASF4:
	.string	"short int"
.LASF659:
	.string	"mbedtls_ssl_dtls_replay_reset"
.LASF315:
	.string	"cur_out_ctr"
.LASF365:
	.string	"ca_crl"
.LASF268:
	.string	"p_bio"
.LASF66:
	.string	"mbedtls_md_type_t"
.LASF579:
	.string	"ssl_handle_hs_message_post_handshake"
.LASF467:
	.string	"mbedtls_ssl_srtp_profile"
.LASF757:
	.string	"ssl_get_remaining_payload_in_datagram"
.LASF349:
	.string	"f_set_cache"
.LASF56:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF95:
	.string	"mbedtls_cipher_info_t"
.LASF792:
	.string	"mbedtls_ssl_out_hdr_len"
.LASF469:
	.string	"chosen_dtls_srtp_profile"
.LASF299:
	.string	"keep_current_message"
.LASF102:
	.string	"flags"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_msg.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
