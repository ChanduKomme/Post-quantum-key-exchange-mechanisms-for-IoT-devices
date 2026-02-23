	.file	"ssl_tls12_client.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_tls12_client.c"
	.section	.rodata
	.align	2
.LC0:
	.string	"MBEDTLS_TLS_SRTP_AES128_CM_HMAC_SHA1_80"
	.align	2
.LC1:
	.string	"MBEDTLS_TLS_SRTP_AES128_CM_HMAC_SHA1_32"
	.align	2
.LC2:
	.string	"MBEDTLS_TLS_SRTP_NULL_HMAC_SHA1_80"
	.align	2
.LC3:
	.string	"MBEDTLS_TLS_SRTP_NULL_HMAC_SHA1_32"
	.align	2
.LC4:
	.string	""
	.section	.text.mbedtls_ssl_get_srtp_profile_as_string,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_get_srtp_profile_as_string, @function
mbedtls_ssl_get_srtp_profile_as_string:
.LFB92:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ssl.h"
	.loc 1 4292 1
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
	sh	a5,-18(s0)
	.loc 1 4293 5
	lhu	a5,-18(s0)
	li	a4,6
	beq	a5,a4,.L2
	li	a4,6
	bgt	a5,a4,.L9
	li	a4,5
	beq	a5,a4,.L4
	li	a4,5
	bgt	a5,a4,.L9
	li	a4,1
	beq	a5,a4,.L5
	li	a4,2
	beq	a5,a4,.L6
	.loc 1 4302 18
	j	.L9
.L5:
	.loc 1 4295 20
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	j	.L7
.L6:
	.loc 1 4297 20
	lui	a5,%hi(.LC1)
	addi	a5,a5,%lo(.LC1)
	j	.L7
.L4:
	.loc 1 4299 20
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	j	.L7
.L2:
	.loc 1 4301 20
	lui	a5,%hi(.LC3)
	addi	a5,a5,%lo(.LC3)
	j	.L7
.L9:
	.loc 1 4302 18
	nop
	.loc 1 4304 12
	lui	a5,%hi(.LC4)
	addi	a5,a5,%lo(.LC4)
.L7:
	.loc 1 4305 1
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
.LFE92:
	.size	mbedtls_ssl_get_srtp_profile_as_string, .-mbedtls_ssl_get_srtp_profile_as_string
	.section	.text.mbedtls_ssl_ciphersuite_cert_req_allowed,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_ciphersuite_cert_req_allowed, @function
mbedtls_ssl_ciphersuite_cert_req_allowed:
.LFB101:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_ciphersuites_internal.h"
	.loc 2 77 1
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
	.loc 2 78 17
	lw	a5,-20(s0)
	lbu	a5,10(a5)
	.loc 2 78 5
	li	a4,4
	bgt	a5,a4,.L11
	bgt	a5,zero,.L12
	j	.L13
.L11:
	addi	a4,a5,-9
	li	a5,1
	bgtu	a4,a5,.L13
.L12:
	.loc 2 85 20
	li	a5,1
	j	.L14
.L13:
	.loc 2 88 20
	li	a5,0
.L14:
	.loc 2 90 1
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
.LFE101:
	.size	mbedtls_ssl_ciphersuite_cert_req_allowed, .-mbedtls_ssl_ciphersuite_cert_req_allowed
	.section	.text.mbedtls_ssl_ciphersuite_uses_server_signature,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_ciphersuite_uses_server_signature, @function
mbedtls_ssl_ciphersuite_uses_server_signature:
.LFB104:
	.loc 2 141 1
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
	.loc 2 142 17
	lw	a5,-20(s0)
	lbu	a5,10(a5)
	addi	a4,a5,-2
	.loc 2 142 5
	li	a5,2
	bgtu	a4,a5,.L16
	.loc 2 146 20
	li	a5,1
	j	.L17
.L16:
	.loc 2 149 20
	li	a5,0
.L17:
	.loc 2 151 1
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
.LFE104:
	.size	mbedtls_ssl_ciphersuite_uses_server_signature, .-mbedtls_ssl_ciphersuite_uses_server_signature
	.section	.text.mbedtls_pk_ec_ro,"ax",@progbits
	.align	1
	.type	mbedtls_pk_ec_ro, @function
mbedtls_pk_ec_ro:
.LFB107:
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/pk_internal.h"
	.loc 3 61 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	.loc 3 62 13
	addi	a5,s0,-24
	mv	a0,a5
	call	mbedtls_pk_get_type
	mv	a5,a0
	addi	a4,a5,-2
	.loc 3 62 5 discriminator 1
	li	a5,2
	bgtu	a4,a5,.L19
	.loc 3 66 20
	lw	a5,-20(s0)
	j	.L20
.L19:
	.loc 3 68 19
	li	a5,0
.L20:
	.loc 3 70 1
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
.LFE107:
	.size	mbedtls_pk_ec_ro, .-mbedtls_pk_ec_ro
	.section	.text.mbedtls_ssl_chk_buf_ptr,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_chk_buf_ptr, @function
mbedtls_ssl_chk_buf_ptr:
.LFB113:
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_misc.h"
	.loc 4 509 1
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
	.loc 4 510 24
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bgtu	a4,a5,.L22
	.loc 4 510 49 discriminator 2
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 4 510 35 discriminator 2
	mv	a4,a5
	.loc 4 510 24 discriminator 2
	lw	a5,-28(s0)
	bleu	a5,a4,.L23
.L22:
	.loc 4 510 24 is_stmt 0 discriminator 3
	li	a5,1
	.loc 4 510 24
	j	.L25
.L23:
	.loc 4 510 24 discriminator 4
	li	a5,0
.L25:
	.loc 4 511 1 is_stmt 1
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
.LFE113:
	.size	mbedtls_ssl_chk_buf_ptr, .-mbedtls_ssl_chk_buf_ptr
	.section	.rodata
	.align	2
.LC5:
	.string	"handshake state: %d (%s) -> %d (%s)"
	.align	2
.LC6:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_misc.h"
	.section	.text.mbedtls_ssl_handshake_set_state,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_handshake_set_state, @function
mbedtls_ssl_handshake_set_state:
.LFB115:
	.loc 4 1352 1
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
	.loc 4 1353 5
	lw	a5,-36(s0)
	lw	s1,4(a5)
	.loc 4 1353 207
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 4 1353 5
	andi	a5,a5,0xff
	mv	a0,a5
	call	mbedtls_ssl_states_str
	mv	s3,a0
	.loc 4 1353 5 is_stmt 0 discriminator 1
	lbu	s2,-37(s0)
	lbu	a5,-37(s0)
	mv	a0,a5
	call	mbedtls_ssl_states_str
	mv	a5,a0
	.loc 4 1353 5 discriminator 2
	sw	a5,0(sp)
	mv	a7,s2
	mv	a6,s3
	mv	a5,s1
	lui	a4,%hi(.LC5)
	addi	a4,a4,%lo(.LC5)
	li	a3,1353
	lui	a2,%hi(.LC6)
	addi	a2,a2,%lo(.LC6)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 4 1356 18 is_stmt 1
	lbu	a4,-37(s0)
	.loc 4 1356 16
	lw	a5,-36(s0)
	sw	a4,4(a5)
	.loc 4 1357 1
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
	.loc 4 1360 1
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
	.loc 4 1361 45
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 4 1361 5
	andi	a5,a5,0xff
	.loc 4 1361 53
	addi	a5,a5,1
	andi	a5,a5,0xff
	.loc 4 1361 5
	mv	a1,a5
	lw	a0,-20(s0)
	call	mbedtls_ssl_handshake_set_state
	.loc 4 1362 1
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
	.loc 4 1476 1
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
	.loc 4 1477 12
	li	a2,1
	li	a1,1
	lw	a0,-20(s0)
	call	mbedtls_ssl_write_handshake_msg_ext
	mv	a5,a0
	.loc 4 1478 1
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
	.section	.text.mbedtls_ssl_check_srtp_profile_value,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_check_srtp_profile_value, @function
mbedtls_ssl_check_srtp_profile_value:
.LFB119:
	.loc 4 1659 1
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
	sh	a5,-18(s0)
	.loc 4 1660 5
	lhu	a5,-18(s0)
	li	a4,2
	bgt	a5,a4,.L31
	bgt	a5,zero,.L32
	.loc 4 1666 18
	j	.L36
.L31:
	addi	a4,a5,-5
	.loc 4 1660 5
	li	a5,1
	bgtu	a4,a5,.L36
.L32:
	.loc 4 1665 20
	lhu	a5,-18(s0)
	j	.L34
.L36:
	.loc 4 1666 18
	nop
	.loc 4 1668 12
	li	a5,0
.L34:
	.loc 4 1669 1
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
.LFE119:
	.size	mbedtls_ssl_check_srtp_profile_value, .-mbedtls_ssl_check_srtp_profile_value
	.section	.text.mbedtls_ssl_own_key,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_own_key, @function
mbedtls_ssl_own_key:
.LFB120:
	.loc 4 1674 1
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
	.loc 4 1677 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 4 1677 8
	beq	a5,zero,.L38
	.loc 4 1677 37 discriminator 1
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 4 1677 48 discriminator 1
	lw	a5,540(a5)
	.loc 4 1677 31 discriminator 1
	beq	a5,zero,.L38
	.loc 4 1678 23
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 4 1678 18
	lw	a5,540(a5)
	sw	a5,-20(s0)
	j	.L39
.L38:
	.loc 4 1680 23
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 4 1680 18
	lw	a5,108(a5)
	sw	a5,-20(s0)
.L39:
	.loc 4 1683 35
	lw	a5,-20(s0)
	beq	a5,zero,.L40
	.loc 4 1683 35 is_stmt 0 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 4 1683 35
	j	.L42
.L40:
	.loc 4 1683 35 discriminator 2
	li	a5,0
.L42:
	.loc 4 1684 1 is_stmt 1
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
.LFE120:
	.size	mbedtls_ssl_own_key, .-mbedtls_ssl_own_key
	.section	.text.mbedtls_ssl_own_cert,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_own_cert, @function
mbedtls_ssl_own_cert:
.LFB121:
	.loc 4 1687 1
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
	.loc 4 1690 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 4 1690 8
	beq	a5,zero,.L44
	.loc 4 1690 37 discriminator 1
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 4 1690 48 discriminator 1
	lw	a5,540(a5)
	.loc 4 1690 31 discriminator 1
	beq	a5,zero,.L44
	.loc 4 1691 23
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 4 1691 18
	lw	a5,540(a5)
	sw	a5,-20(s0)
	j	.L45
.L44:
	.loc 4 1693 23
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 4 1693 18
	lw	a5,108(a5)
	sw	a5,-20(s0)
.L45:
	.loc 4 1696 35
	lw	a5,-20(s0)
	beq	a5,zero,.L46
	.loc 4 1696 35 is_stmt 0 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 4 1696 35
	j	.L48
.L46:
	.loc 4 1696 35 discriminator 2
	li	a5,0
.L48:
	.loc 4 1697 1 is_stmt 1
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
.LFE121:
	.size	mbedtls_ssl_own_cert, .-mbedtls_ssl_own_cert
	.section	.text.mbedtls_ssl_hs_hdr_len,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_hs_hdr_len, @function
mbedtls_ssl_hs_hdr_len:
.LFB124:
	.loc 4 1777 1
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
	.loc 4 1779 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 4 1779 18
	lbu	a4,5(a5)
	.loc 4 1779 8
	li	a5,1
	bne	a4,a5,.L50
	.loc 4 1780 16
	li	a5,12
	j	.L51
.L50:
	.loc 4 1785 12
	li	a5,4
.L51:
	.loc 4 1786 1
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
	.section	.text.mbedtls_ssl_get_sig_algs,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_get_sig_algs, @function
mbedtls_ssl_get_sig_algs:
.LFB135:
	.loc 4 2430 1
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
	.loc 4 2440 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 4 2440 21
	lw	a5,148(a5)
	.loc 4 2447 1
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
.LFE135:
	.size	mbedtls_ssl_get_sig_algs, .-mbedtls_ssl_get_sig_algs
	.section	.text.mbedtls_ssl_sig_alg_is_offered,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_sig_alg_is_offered, @function
mbedtls_ssl_sig_alg_is_offered:
.LFB136:
	.loc 4 2539 1
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
	sh	a5,-38(s0)
	.loc 4 2540 31
	lw	a0,-36(s0)
	call	mbedtls_ssl_get_sig_algs
	sw	a0,-20(s0)
	.loc 4 2541 8
	lw	a5,-20(s0)
	bne	a5,zero,.L57
	.loc 4 2542 16
	li	a5,0
	j	.L56
.L59:
	.loc 4 2546 13
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	.loc 4 2546 12
	lhu	a4,-38(s0)
	bne	a4,a5,.L58
	.loc 4 2547 20
	li	a5,1
	j	.L56
.L58:
	.loc 4 2545 36
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
.L57:
	.loc 4 2545 12 discriminator 1
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	.loc 4 2545 21 discriminator 1
	bne	a5,zero,.L59
	.loc 4 2550 12
	li	a5,0
.L56:
	.loc 4 2551 1
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
.LFE136:
	.size	mbedtls_ssl_sig_alg_is_offered, .-mbedtls_ssl_sig_alg_is_offered
	.section	.text.mbedtls_ssl_get_pk_type_and_md_alg_from_sig_alg,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_get_pk_type_and_md_alg_from_sig_alg, @function
mbedtls_ssl_get_pk_type_and_md_alg_from_sig_alg:
.LFB137:
	.loc 4 2555 1
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
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sh	a5,-18(s0)
	.loc 4 2556 16
	lhu	a5,-18(s0)
	andi	a5,a5,0xff
	mv	a0,a5
	call	mbedtls_ssl_pk_alg_from_sig
	mv	a5,a0
	mv	a4,a5
	.loc 4 2556 14 discriminator 1
	lw	a5,-24(s0)
	sb	a4,0(a5)
	.loc 4 2557 15
	lhu	a5,-18(s0)
	srli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	andi	a5,a5,0xff
	mv	a0,a5
	call	mbedtls_ssl_md_alg_from_hash
	mv	a5,a0
	mv	a4,a5
	.loc 4 2557 13 discriminator 1
	lw	a5,-28(s0)
	sb	a4,0(a5)
	.loc 4 2559 9
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 4 2559 8
	beq	a5,zero,.L61
	.loc 4 2559 40 discriminator 1
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	.loc 4 2559 37 discriminator 1
	beq	a5,zero,.L61
	.loc 4 2560 16
	li	a5,0
	j	.L62
.L61:
	.loc 4 2563 5
	lhu	a5,-18(s0)
	li	a4,4096
	addi	a4,a4,-2042
	beq	a5,a4,.L63
	li	a4,4096
	addi	a4,a4,-2042
	bgt	a5,a4,.L64
	li	a4,4096
	addi	a4,a4,-2044
	beq	a5,a4,.L65
	li	a4,4096
	addi	a4,a4,-2043
	beq	a5,a4,.L66
	j	.L64
.L65:
	.loc 4 2567 21
	lw	a5,-28(s0)
	li	a4,9
	sb	a4,0(a5)
	.loc 4 2568 22
	lw	a5,-24(s0)
	li	a4,6
	sb	a4,0(a5)
	.loc 4 2569 13
	j	.L67
.L66:
	.loc 4 2573 21
	lw	a5,-28(s0)
	li	a4,10
	sb	a4,0(a5)
	.loc 4 2574 22
	lw	a5,-24(s0)
	li	a4,6
	sb	a4,0(a5)
	.loc 4 2575 13
	j	.L67
.L63:
	.loc 4 2579 21
	lw	a5,-28(s0)
	li	a4,11
	sb	a4,0(a5)
	.loc 4 2580 22
	lw	a5,-24(s0)
	li	a4,6
	sb	a4,0(a5)
	.loc 4 2581 13
	j	.L67
.L64:
	.loc 4 2585 20
	li	a5,-28672
	addi	a5,a5,-128
	j	.L62
.L67:
	.loc 4 2587 12
	li	a5,0
.L62:
	.loc 4 2588 1
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
.LFE137:
	.size	mbedtls_ssl_get_pk_type_and_md_alg_from_sig_alg, .-mbedtls_ssl_get_pk_type_and_md_alg_from_sig_alg
	.section	.text.mbedtls_ssl_tls12_sig_alg_is_supported,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_tls12_sig_alg_is_supported, @function
mbedtls_ssl_tls12_sig_alg_is_supported:
.LFB138:
	.loc 4 2593 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sh	a5,-34(s0)
	.loc 4 2595 27
	lhu	a5,-34(s0)
	srli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 4 2595 19
	sb	a5,-17(s0)
	.loc 4 2596 19
	lhu	a5,-34(s0)
	sb	a5,-18(s0)
	.loc 4 2598 5
	lbu	a5,-17(s0)
	li	a4,6
	beq	a5,a4,.L82
	li	a4,6
	bgt	a5,a4,.L70
	li	a4,5
	beq	a5,a4,.L83
	li	a4,5
	bgt	a5,a4,.L70
	li	a4,4
	beq	a5,a4,.L84
	li	a4,4
	bgt	a5,a4,.L70
	li	a4,3
	beq	a5,a4,.L85
	li	a4,3
	bgt	a5,a4,.L70
	li	a4,1
	beq	a5,a4,.L86
	li	a4,2
	beq	a5,a4,.L87
.L70:
	.loc 4 2630 20
	li	a5,0
	j	.L77
.L82:
	.loc 4 2626 13
	nop
	j	.L76
.L83:
	.loc 4 2621 13
	nop
	j	.L76
.L84:
	.loc 4 2616 13
	nop
	j	.L76
.L85:
	.loc 4 2611 13
	nop
	j	.L76
.L86:
	.loc 4 2601 13
	nop
	j	.L76
.L87:
	.loc 4 2606 13
	nop
.L76:
	.loc 4 2633 5
	lbu	a5,-18(s0)
	li	a4,1
	beq	a5,a4,.L88
	li	a4,3
	beq	a5,a4,.L89
	.loc 4 2645 20
	li	a5,0
	j	.L77
.L88:
	.loc 4 2636 13
	nop
	j	.L81
.L89:
	.loc 4 2641 13
	nop
.L81:
	.loc 4 2648 12
	li	a5,1
.L77:
	.loc 4 2649 1
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
.LFE138:
	.size	mbedtls_ssl_tls12_sig_alg_is_supported, .-mbedtls_ssl_tls12_sig_alg_is_supported
	.section	.text.mbedtls_ssl_sig_alg_is_supported,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_sig_alg_is_supported, @function
mbedtls_ssl_sig_alg_is_supported:
.LFB139:
	.loc 4 2655 1
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
	.loc 4 2658 12
	lw	a5,-20(s0)
	lhu	a4,16(a5)
	.loc 4 2658 8
	li	a5,771
	bne	a4,a5,.L91
	.loc 4 2659 16
	lhu	a5,-22(s0)
	mv	a0,a5
	call	mbedtls_ssl_tls12_sig_alg_is_supported
	mv	a5,a0
	j	.L92
.L91:
	.loc 4 2670 12
	li	a5,0
.L92:
	.loc 4 2671 1
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
.LFE139:
	.size	mbedtls_ssl_sig_alg_is_supported, .-mbedtls_ssl_sig_alg_is_supported
	.section	.text.mbedtls_ssl_conf_get_session_tickets,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_conf_get_session_tickets, @function
mbedtls_ssl_conf_get_session_tickets:
.LFB141:
	.loc 4 3023 1
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
	.loc 4 3024 16
	lw	a5,-20(s0)
	lbu	a5,13(a5)
	.loc 4 3025 14
	andi	a5,a5,1
	.loc 4 3027 1
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
.LFE141:
	.size	mbedtls_ssl_conf_get_session_tickets, .-mbedtls_ssl_conf_get_session_tickets
	.section	.rodata
	.align	2
.LC7:
	.string	"client hello, adding renegotiation extension"
	.align	2
.LC8:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_tls12_client.c"
	.section	.text.ssl_write_renegotiation_ext,"ax",@progbits
	.align	1
	.type	ssl_write_renegotiation_ext, @function
ssl_write_renegotiation_ext:
.LFB142:
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_tls12_client.c"
	.loc 5 55 1
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
	.loc 5 56 20
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 5 58 11
	lw	a5,-48(s0)
	sw	zero,0(a5)
	.loc 5 63 12
	lw	a5,-36(s0)
	lw	a4,8(a5)
	.loc 5 63 8
	li	a5,1
	beq	a4,a5,.L96
	.loc 5 64 16
	li	a5,0
	j	.L97
.L96:
	.loc 5 67 5
	lui	a5,%hi(.LC7)
	addi	a4,a5,%lo(.LC7)
	li	a3,67
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 70 58
	lw	a5,-36(s0)
	lw	a5,528(a5)
	.loc 5 70 14
	addi	a5,a5,5
	mv	a2,a5
	lw	a1,-44(s0)
	lw	a0,-20(s0)
	call	mbedtls_ssl_chk_buf_ptr
	mv	a5,a0
	.loc 5 70 13 discriminator 1
	beq	a5,zero,.L98
	.loc 5 70 93 discriminator 2
	li	a5,-28672
	addi	a5,a5,1536
	.loc 5 70 93 is_stmt 0
	j	.L97
.L98:
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	li	a5,511
	sh	a5,-26(s0)
.LBB62:
.LBB63:
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/alignment.h"
	.loc 6 148 33 is_stmt 1
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
.LBE63:
.LBE62:
	.loc 5 76 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 5 78 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 78 10
	sb	zero,0(a5)
	.loc 5 79 28
	lw	a5,-36(s0)
	lw	a5,528(a5)
	.loc 5 79 13
	andi	a4,a5,0xff
	.loc 5 79 7
	lw	a5,-20(s0)
	addi	a3,a5,1
	sw	a3,-20(s0)
	.loc 5 79 13
	addi	a4,a4,1
	andi	a4,a4,0xff
	.loc 5 79 10
	sb	a4,0(a5)
	.loc 5 80 28
	lw	a5,-36(s0)
	lw	a3,528(a5)
	.loc 5 80 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 80 13
	andi	a4,a3,0xff
	.loc 5 80 10
	sb	a4,0(a5)
	.loc 5 82 18
	lw	a5,-36(s0)
	addi	a4,a5,532
	.loc 5 82 5
	lw	a5,-36(s0)
	lw	a5,528(a5)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-20(s0)
	call	memcpy
	.loc 5 84 20
	lw	a5,-36(s0)
	lw	a5,528(a5)
	.loc 5 84 15
	addi	a4,a5,5
	.loc 5 84 11
	lw	a5,-48(s0)
	sw	a4,0(a5)
	.loc 5 86 12
	li	a5,0
.L97:
	.loc 5 87 1
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
.LFE142:
	.size	ssl_write_renegotiation_ext, .-ssl_write_renegotiation_ext
	.section	.rodata
	.align	2
.LC9:
	.string	"client hello, adding supported_point_formats extension"
	.section	.text.ssl_write_supported_point_formats_ext,"ax",@progbits
	.align	1
	.type	ssl_write_supported_point_formats_ext, @function
ssl_write_supported_point_formats_ext:
.LFB143:
	.loc 5 99 1
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
	.loc 5 100 20
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 5 103 11
	lw	a5,-48(s0)
	sw	zero,0(a5)
	.loc 5 105 5
	lui	a5,%hi(.LC9)
	addi	a4,a5,%lo(.LC9)
	li	a3,105
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 107 14
	li	a2,6
	lw	a1,-44(s0)
	lw	a0,-20(s0)
	call	mbedtls_ssl_chk_buf_ptr
	mv	a5,a0
	.loc 5 107 13 discriminator 1
	beq	a5,zero,.L100
	.loc 5 107 70 discriminator 2
	li	a5,-28672
	addi	a5,a5,1536
	.loc 5 107 70 is_stmt 0
	j	.L101
.L100:
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	li	a5,4096
	addi	a5,a5,-1280
	sh	a5,-26(s0)
.LBB64:
.LBB65:
	.loc 6 148 33 is_stmt 1
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
.LBE65:
.LBE64:
	.loc 5 110 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 5 112 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 112 10
	sb	zero,0(a5)
	.loc 5 113 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 113 10
	li	a4,2
	sb	a4,0(a5)
	.loc 5 115 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 115 10
	li	a4,1
	sb	a4,0(a5)
	.loc 5 116 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 116 10
	sb	zero,0(a5)
	.loc 5 118 11
	lw	a5,-48(s0)
	li	a4,6
	sw	a4,0(a5)
	.loc 5 120 12
	li	a5,0
.L101:
	.loc 5 121 1
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
	.size	ssl_write_supported_point_formats_ext, .-ssl_write_supported_point_formats_ext
	.section	.rodata
	.align	2
.LC10:
	.string	"client hello, adding CID extension"
	.section	.text.ssl_write_cid_ext,"ax",@progbits
	.align	1
	.type	ssl_write_cid_ext, @function
ssl_write_cid_ext:
.LFB144:
	.loc 5 220 1
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
	.loc 5 221 20
	lw	a5,-56(s0)
	sw	a5,-20(s0)
	.loc 5 230 11
	lw	a5,-64(s0)
	sw	zero,0(a5)
	.loc 5 231 12
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 5 231 18
	lbu	a4,5(a5)
	.loc 5 231 8
	li	a5,1
	bne	a4,a5,.L103
	.loc 5 232 12
	lw	a5,-52(s0)
	lbu	a5,589(a5)
	.loc 5 231 35 discriminator 1
	bne	a5,zero,.L104
.L103:
	.loc 5 233 16
	li	a5,0
	j	.L105
.L104:
	.loc 5 235 5
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,235
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 239 66
	lw	a5,-52(s0)
	lbu	a5,588(a5)
	.loc 5 239 80
	addi	a5,a5,5
	.loc 5 239 14
	mv	a2,a5
	lw	a1,-60(s0)
	lw	a0,-20(s0)
	call	mbedtls_ssl_chk_buf_ptr
	mv	a5,a0
	.loc 5 239 13 discriminator 1
	beq	a5,zero,.L106
	.loc 5 239 102 discriminator 2
	li	a5,-28672
	addi	a5,a5,1536
	.loc 5 239 102 is_stmt 0
	j	.L105
.L106:
	lw	a5,-20(s0)
	sw	a5,-28(s0)
	li	a5,12288
	addi	a5,a5,1536
	sh	a5,-30(s0)
.LBB66:
.LBB67:
	.loc 6 148 33 is_stmt 1
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
.LBE67:
.LBE66:
	.loc 5 243 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 5 244 27
	lw	a5,-52(s0)
	lbu	a5,588(a5)
	.loc 5 244 13
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 5 245 128 discriminator 2
	lw	a5,-24(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	lw	a4,-20(s0)
	sw	a4,-40(s0)
	sh	a5,-42(s0)
.LBB68:
.LBB69:
	.loc 6 148 33
	lw	a5,-40(s0)
	sw	a5,-48(s0)
	.loc 6 149 12
	lw	a5,-48(s0)
	lhu	a4,-42(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-42(s0)
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
	.loc 5 246 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 5 248 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 248 25
	lw	a4,-52(s0)
	lbu	a4,588(a4)
	.loc 5 248 10
	sb	a4,0(a5)
	.loc 5 249 18
	lw	a5,-52(s0)
	addi	a4,a5,556
	.loc 5 249 32
	lw	a5,-52(s0)
	lbu	a5,588(a5)
	.loc 5 249 5
	mv	a2,a5
	mv	a1,a4
	lw	a0,-20(s0)
	call	memcpy
	.loc 5 251 16
	lw	a5,-52(s0)
	lbu	a5,588(a5)
	.loc 5 251 30
	addi	a5,a5,5
	mv	a4,a5
	.loc 5 251 11
	lw	a5,-64(s0)
	sw	a4,0(a5)
	.loc 5 253 12
	li	a5,0
.L105:
	.loc 5 254 1
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
.LFE144:
	.size	ssl_write_cid_ext, .-ssl_write_cid_ext
	.section	.rodata
	.align	2
.LC11:
	.string	"client hello, adding max_fragment_length extension"
	.section	.text.ssl_write_max_fragment_length_ext,"ax",@progbits
	.align	1
	.type	ssl_write_max_fragment_length_ext, @function
ssl_write_max_fragment_length_ext:
.LFB145:
	.loc 5 263 1
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
	.loc 5 264 20
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 5 266 11
	lw	a5,-48(s0)
	sw	zero,0(a5)
	.loc 5 268 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 268 18
	lbu	a5,8(a5)
	.loc 5 268 8
	bne	a5,zero,.L108
	.loc 5 269 16
	li	a5,0
	j	.L109
.L108:
	.loc 5 272 5
	lui	a5,%hi(.LC11)
	addi	a4,a5,%lo(.LC11)
	li	a3,272
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 275 14
	li	a2,5
	lw	a1,-44(s0)
	lw	a0,-20(s0)
	call	mbedtls_ssl_chk_buf_ptr
	mv	a5,a0
	.loc 5 275 13 discriminator 1
	beq	a5,zero,.L110
	.loc 5 275 70 discriminator 2
	li	a5,-28672
	addi	a5,a5,1536
	.loc 5 275 70 is_stmt 0
	j	.L109
.L110:
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	li	a5,256
	sh	a5,-26(s0)
.LBB70:
.LBB71:
	.loc 6 148 33 is_stmt 1
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
.LBE71:
.LBE70:
	.loc 5 278 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 5 280 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 280 10
	sb	zero,0(a5)
	.loc 5 281 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 281 10
	li	a4,1
	sb	a4,0(a5)
	.loc 5 283 15
	lw	a5,-36(s0)
	lw	a4,0(a5)
	.loc 5 283 7
	lw	a5,-20(s0)
	addi	a3,a5,1
	sw	a3,-20(s0)
	.loc 5 283 21
	lbu	a4,8(a4)
	.loc 5 283 10
	sb	a4,0(a5)
	.loc 5 285 11
	lw	a5,-48(s0)
	li	a4,5
	sw	a4,0(a5)
	.loc 5 287 12
	li	a5,0
.L109:
	.loc 5 288 1
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
	.size	ssl_write_max_fragment_length_ext, .-ssl_write_max_fragment_length_ext
	.section	.rodata
	.align	2
.LC12:
	.string	"client hello, adding encrypt_then_mac extension"
	.section	.text.ssl_write_encrypt_then_mac_ext,"ax",@progbits
	.align	1
	.type	ssl_write_encrypt_then_mac_ext, @function
ssl_write_encrypt_then_mac_ext:
.LFB146:
	.loc 5 297 1
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
	.loc 5 298 20
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 5 300 11
	lw	a5,-48(s0)
	sw	zero,0(a5)
	.loc 5 302 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 302 18
	lbu	a5,9(a5)
	.loc 5 302 8
	bne	a5,zero,.L112
	.loc 5 303 16
	li	a5,0
	j	.L113
.L112:
	.loc 5 306 5
	lui	a5,%hi(.LC12)
	addi	a4,a5,%lo(.LC12)
	li	a3,306
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 309 14
	li	a2,4
	lw	a1,-44(s0)
	lw	a0,-20(s0)
	call	mbedtls_ssl_chk_buf_ptr
	mv	a5,a0
	.loc 5 309 13 discriminator 1
	beq	a5,zero,.L114
	.loc 5 309 70 discriminator 2
	li	a5,-28672
	addi	a5,a5,1536
	.loc 5 309 70 is_stmt 0
	j	.L113
.L114:
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	li	a5,4096
	addi	a5,a5,1536
	sh	a5,-26(s0)
.LBB72:
.LBB73:
	.loc 6 148 33 is_stmt 1
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
.LBE73:
.LBE72:
	.loc 5 312 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 5 314 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 314 10
	sb	zero,0(a5)
	.loc 5 315 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 315 10
	sb	zero,0(a5)
	.loc 5 317 11
	lw	a5,-48(s0)
	li	a4,4
	sw	a4,0(a5)
	.loc 5 319 12
	li	a5,0
.L113:
	.loc 5 320 1
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
.LFE146:
	.size	ssl_write_encrypt_then_mac_ext, .-ssl_write_encrypt_then_mac_ext
	.section	.rodata
	.align	2
.LC13:
	.string	"client hello, adding extended_master_secret extension"
	.section	.text.ssl_write_extended_ms_ext,"ax",@progbits
	.align	1
	.type	ssl_write_extended_ms_ext, @function
ssl_write_extended_ms_ext:
.LFB147:
	.loc 5 329 1
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
	.loc 5 330 20
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 5 332 11
	lw	a5,-48(s0)
	sw	zero,0(a5)
	.loc 5 334 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 334 18
	lbu	a5,10(a5)
	.loc 5 334 8
	bne	a5,zero,.L116
	.loc 5 335 16
	li	a5,0
	j	.L117
.L116:
	.loc 5 338 5
	lui	a5,%hi(.LC13)
	addi	a4,a5,%lo(.LC13)
	li	a3,338
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 341 14
	li	a2,4
	lw	a1,-44(s0)
	lw	a0,-20(s0)
	call	mbedtls_ssl_chk_buf_ptr
	mv	a5,a0
	.loc 5 341 13 discriminator 1
	beq	a5,zero,.L118
	.loc 5 341 70 discriminator 2
	li	a5,-28672
	addi	a5,a5,1536
	.loc 5 341 70 is_stmt 0
	j	.L117
.L118:
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	li	a5,4096
	addi	a5,a5,1792
	sh	a5,-26(s0)
.LBB74:
.LBB75:
	.loc 6 148 33 is_stmt 1
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
.LBE75:
.LBE74:
	.loc 5 344 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 5 346 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 346 10
	sb	zero,0(a5)
	.loc 5 347 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 347 10
	sb	zero,0(a5)
	.loc 5 349 11
	lw	a5,-48(s0)
	li	a4,4
	sw	a4,0(a5)
	.loc 5 351 12
	li	a5,0
.L117:
	.loc 5 352 1
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
.LFE147:
	.size	ssl_write_extended_ms_ext, .-ssl_write_extended_ms_ext
	.section	.rodata
	.align	2
.LC14:
	.string	"client hello, adding session ticket extension"
	.align	2
.LC15:
	.string	"sending session ticket of length %zu"
	.section	.text.ssl_write_session_ticket_ext,"ax",@progbits
	.align	1
	.type	ssl_write_session_ticket_ext, @function
ssl_write_session_ticket_ext:
.LFB148:
	.loc 5 361 1
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
	.loc 5 362 20
	lw	a5,-56(s0)
	sw	a5,-20(s0)
	.loc 5 363 22
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 5 363 12
	lw	a5,108(a5)
	sw	a5,-24(s0)
	.loc 5 365 11
	lw	a5,-64(s0)
	sw	zero,0(a5)
	.loc 5 367 9
	lw	a5,-52(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_ssl_conf_get_session_tickets
	mv	a5,a0
	.loc 5 367 8 discriminator 1
	bne	a5,zero,.L120
	.loc 5 369 16
	li	a5,0
	j	.L121
.L120:
	.loc 5 372 5
	lui	a5,%hi(.LC14)
	addi	a4,a5,%lo(.LC14)
	li	a3,372
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 376 14
	lw	a5,-24(s0)
	addi	a5,a5,4
	mv	a2,a5
	lw	a1,-60(s0)
	lw	a0,-20(s0)
	call	mbedtls_ssl_chk_buf_ptr
	mv	a5,a0
	.loc 5 376 13 discriminator 1
	beq	a5,zero,.L122
	.loc 5 376 77 discriminator 2
	li	a5,-28672
	addi	a5,a5,1536
	.loc 5 376 77 is_stmt 0
	j	.L121
.L122:
	lw	a5,-20(s0)
	sw	a5,-28(s0)
	li	a5,8192
	addi	a5,a5,768
	sh	a5,-30(s0)
.LBB76:
.LBB77:
	.loc 6 148 33 is_stmt 1
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
.LBE77:
.LBE76:
	.loc 5 379 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 5 381 125 discriminator 2
	lw	a5,-24(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	lw	a4,-20(s0)
	sw	a4,-40(s0)
	sh	a5,-42(s0)
.LBB78:
.LBB79:
	.loc 6 148 33
	lw	a5,-40(s0)
	sw	a5,-48(s0)
	.loc 6 149 12
	lw	a5,-48(s0)
	lhu	a4,-42(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-42(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 6 153 1
	nop
.LBE79:
.LBE78:
	.loc 5 382 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 5 384 11
	lw	a5,-64(s0)
	li	a4,4
	sw	a4,0(a5)
	.loc 5 386 12
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 5 386 31
	lw	a5,104(a5)
	.loc 5 386 8
	beq	a5,zero,.L123
	.loc 5 386 47 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L124
.L123:
	.loc 5 387 16
	li	a5,0
	j	.L121
.L124:
	.loc 5 390 5
	lw	a5,-24(s0)
	lui	a4,%hi(.LC15)
	addi	a4,a4,%lo(.LC15)
	li	a3,390
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 393 18
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 5 393 37
	lw	a5,104(a5)
	.loc 5 393 5
	lw	a2,-24(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	memcpy
	.loc 5 395 5
	lw	a5,-64(s0)
	lw	a4,0(a5)
	.loc 5 395 11
	lw	a5,-24(s0)
	add	a4,a4,a5
	lw	a5,-64(s0)
	sw	a4,0(a5)
	.loc 5 397 12
	li	a5,0
.L121:
	.loc 5 398 1
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
.LFE148:
	.size	ssl_write_session_ticket_ext, .-ssl_write_session_ticket_ext
	.section	.rodata
	.align	2
.LC16:
	.string	"client hello, adding use_srtp extension"
	.align	2
.LC17:
	.string	"ssl_write_use_srtp_ext, add profile: %04x"
	.align	2
.LC18:
	.string	"client hello, illegal DTLS-SRTP protection profile %d"
	.align	2
.LC19:
	.string	"sending mki"
	.section	.text.ssl_write_use_srtp_ext,"ax",@progbits
	.align	1
	.type	ssl_write_use_srtp_ext, @function
ssl_write_use_srtp_ext:
.LFB149:
	.loc 5 407 1
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
	.loc 5 408 20
	lw	a5,-88(s0)
	sw	a5,-20(s0)
	.loc 5 409 12
	sw	zero,-24(s0)
	.loc 5 409 43
	sw	zero,-32(s0)
	.loc 5 410 14
	sh	zero,-26(s0)
	.loc 5 410 27
	sh	zero,-34(s0)
	.loc 5 412 11
	lw	a5,-96(s0)
	sw	zero,0(a5)
	.loc 5 414 13
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 5 414 19
	lbu	a4,5(a5)
	.loc 5 414 8
	li	a5,1
	bne	a4,a5,.L126
	.loc 5 415 13
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 5 415 19
	lw	a5,192(a5)
	.loc 5 414 37 discriminator 1
	beq	a5,zero,.L126
	.loc 5 416 13
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 5 416 19
	lw	a5,196(a5)
	.loc 5 415 52
	bne	a5,zero,.L127
.L126:
	.loc 5 417 16
	li	a5,0
	j	.L128
.L127:
	.loc 5 429 12
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 5 429 18
	lbu	a4,17(a5)
	.loc 5 429 8
	li	a5,1
	bne	a4,a5,.L129
	.loc 5 430 17
	lw	a5,-84(s0)
	lhu	a5,258(a5)
	sh	a5,-26(s0)
.L129:
	.loc 5 436 27
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 5 436 33
	lw	a5,196(a5)
	.loc 5 436 63
	slli	a4,a5,1
	.loc 5 436 67
	lhu	a5,-26(s0)
	add	a5,a4,a5
	.loc 5 436 13
	addi	a5,a5,3
	sw	a5,-32(s0)
	.loc 5 438 5
	lui	a5,%hi(.LC16)
	addi	a4,a5,%lo(.LC16)
	li	a3,438
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 444 14
	lw	a5,-32(s0)
	addi	a5,a5,4
	mv	a2,a5
	lw	a1,-92(s0)
	lw	a0,-20(s0)
	call	mbedtls_ssl_chk_buf_ptr
	mv	a5,a0
	.loc 5 444 13 discriminator 1
	beq	a5,zero,.L130
	.loc 5 444 80 discriminator 2
	li	a5,-28672
	addi	a5,a5,1536
	.loc 5 444 80 is_stmt 0
	j	.L128
.L130:
	lw	a5,-20(s0)
	sw	a5,-40(s0)
	li	a5,4096
	addi	a5,a5,-512
	sh	a5,-42(s0)
.LBB80:
.LBB81:
	.loc 6 148 33 is_stmt 1
	lw	a5,-40(s0)
	sw	a5,-48(s0)
	.loc 6 149 12
	lw	a5,-48(s0)
	lhu	a4,-42(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-42(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 6 153 1
	nop
.LBE81:
.LBE80:
	.loc 5 447 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 5 449 128 discriminator 2
	lw	a5,-32(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	lw	a4,-20(s0)
	sw	a4,-52(s0)
	sh	a5,-54(s0)
.LBB82:
.LBB83:
	.loc 6 148 33
	lw	a5,-52(s0)
	sw	a5,-60(s0)
	.loc 6 149 12
	lw	a5,-60(s0)
	lhu	a4,-54(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-54(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 6 153 1
	nop
.LBE83:
.LBE82:
	.loc 5 450 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 5 460 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 460 10
	sb	zero,0(a5)
	.loc 5 461 32
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 5 461 38
	lw	a5,196(a5)
	.loc 5 461 13
	andi	a4,a5,0xff
	.loc 5 461 7
	lw	a5,-20(s0)
	addi	a3,a5,1
	sw	a3,-20(s0)
	.loc 5 461 13
	slli	a4,a4,1
	andi	a4,a4,0xff
	.loc 5 461 10
	sb	a4,0(a5)
	.loc 5 463 36
	sw	zero,-24(s0)
	.loc 5 463 5
	j	.L131
.L134:
	.loc 5 467 33
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 5 467 39
	lw	a4,192(a5)
	.loc 5 467 63
	lw	a5,-24(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	.loc 5 466 25
	lhu	a5,0(a5)
	mv	a0,a5
	call	mbedtls_ssl_check_srtp_profile_value
	mv	a5,a0
	sh	a5,-34(s0)
	.loc 5 468 12
	lhu	a5,-34(s0)
	beq	a5,zero,.L132
	.loc 5 469 13
	lhu	a5,-34(s0)
	lui	a4,%hi(.LC17)
	addi	a4,a4,%lo(.LC17)
	li	a3,469
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 471 142 discriminator 2
	lhu	a5,-34(s0)
	slli	a4,a5,8
	lhu	a5,-34(s0)
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	lw	a4,-20(s0)
	sw	a4,-64(s0)
	sh	a5,-66(s0)
.LBB84:
.LBB85:
	.loc 6 148 33
	lw	a5,-64(s0)
	sw	a5,-72(s0)
	.loc 6 149 12
	lw	a5,-72(s0)
	lhu	a4,-66(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-66(s0)
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
	.loc 5 472 15
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	j	.L136
.L132:
	.loc 5 478 208
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 5 478 214
	lw	a4,192(a5)
	.loc 5 478 238
	lw	a5,-24(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	.loc 5 478 13
	lui	a4,%hi(.LC18)
	addi	a4,a4,%lo(.LC18)
	li	a3,478
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 483 20
	li	a5,-110
	j	.L128
.L136:
	.loc 5 465 35
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L131:
	.loc 5 464 41
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 5 464 47
	lw	a5,196(a5)
	.loc 5 464 36
	lw	a4,-24(s0)
	bltu	a4,a5,.L134
	.loc 5 487 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 487 10
	lhu	a4,-26(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 5 489 8
	lhu	a5,-26(s0)
	beq	a5,zero,.L135
	.loc 5 490 38
	lw	a5,-84(s0)
	addi	a5,a5,260
	.loc 5 490 9
	lhu	a4,-26(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-20(s0)
	call	memcpy
	.loc 5 494 11
	lhu	a5,-26(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 495 175
	lw	a5,-84(s0)
	addi	a4,a5,260
	.loc 5 495 206
	lw	a5,-84(s0)
	lhu	a5,258(a5)
	.loc 5 495 9
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC19)
	addi	a4,a4,%lo(.LC19)
	li	a3,495
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-84(s0)
	call	mbedtls_debug_print_buf
.L135:
	.loc 5 507 15
	lw	a4,-20(s0)
	lw	a5,-88(s0)
	sub	a5,a4,a5
	mv	a4,a5
	.loc 5 507 11
	lw	a5,-96(s0)
	sw	a4,0(a5)
	.loc 5 509 12
	li	a5,0
.L128:
	.loc 5 510 1
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
.LFE149:
	.size	ssl_write_use_srtp_ext, .-ssl_write_use_srtp_ext
	.section	.rodata
	.align	2
.LC20:
	.string	"ssl_write_renegotiation_ext"
	.align	2
.LC21:
	.string	"ssl_write_supported_point_formats_ext"
	.align	2
.LC22:
	.string	"ssl_write_cid_ext"
	.align	2
.LC23:
	.string	"ssl_write_max_fragment_length_ext"
	.align	2
.LC24:
	.string	"ssl_write_encrypt_then_mac_ext"
	.align	2
.LC25:
	.string	"ssl_write_extended_ms_ext"
	.align	2
.LC26:
	.string	"ssl_write_use_srtp_ext"
	.align	2
.LC27:
	.string	"ssl_write_session_ticket_ext"
	.section	.text.mbedtls_ssl_tls12_write_client_hello_exts,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_tls12_write_client_hello_exts
	.type	mbedtls_ssl_tls12_write_client_hello_exts, @function
mbedtls_ssl_tls12_write_client_hello_exts:
.LFB150:
	.loc 5 518 1
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
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	.loc 5 519 9
	li	a5,-110
	sw	a5,-24(s0)
	.loc 5 520 20
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 5 521 12
	sw	zero,-28(s0)
	.loc 5 529 14
	lw	a5,-52(s0)
	sw	zero,0(a5)
	.loc 5 534 16
	addi	a5,s0,-28
	mv	a3,a5
	lw	a2,-44(s0)
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	ssl_write_renegotiation_ext
	sw	a0,-24(s0)
	.loc 5 534 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L138
	.loc 5 535 9
	lw	a5,-24(s0)
	lui	a4,%hi(.LC20)
	addi	a4,a4,%lo(.LC20)
	li	a3,535
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 536 16
	lw	a5,-24(s0)
	j	.L148
.L138:
	.loc 5 538 7
	lw	a5,-28(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 544 8
	lw	a5,-48(s0)
	beq	a5,zero,.L140
	.loc 5 545 20
	addi	a5,s0,-28
	mv	a3,a5
	lw	a2,-44(s0)
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	ssl_write_supported_point_formats_ext
	sw	a0,-24(s0)
	.loc 5 545 12 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L141
	.loc 5 547 13
	lw	a5,-24(s0)
	lui	a4,%hi(.LC21)
	addi	a4,a4,%lo(.LC21)
	li	a3,547
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 548 20
	lw	a5,-24(s0)
	j	.L148
.L141:
	.loc 5 550 11
	lw	a5,-28(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L140:
	.loc 5 563 16
	addi	a5,s0,-28
	mv	a3,a5
	lw	a2,-44(s0)
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	ssl_write_cid_ext
	sw	a0,-24(s0)
	.loc 5 563 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L142
	.loc 5 564 9
	lw	a5,-24(s0)
	lui	a4,%hi(.LC22)
	addi	a4,a4,%lo(.LC22)
	li	a3,564
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 565 16
	lw	a5,-24(s0)
	j	.L148
.L142:
	.loc 5 567 7
	lw	a5,-28(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 571 16
	addi	a5,s0,-28
	mv	a3,a5
	lw	a2,-44(s0)
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	ssl_write_max_fragment_length_ext
	sw	a0,-24(s0)
	.loc 5 571 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L143
	.loc 5 573 9
	lw	a5,-24(s0)
	lui	a4,%hi(.LC23)
	addi	a4,a4,%lo(.LC23)
	li	a3,573
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 574 16
	lw	a5,-24(s0)
	j	.L148
.L143:
	.loc 5 576 7
	lw	a5,-28(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 580 16
	addi	a5,s0,-28
	mv	a3,a5
	lw	a2,-44(s0)
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	ssl_write_encrypt_then_mac_ext
	sw	a0,-24(s0)
	.loc 5 580 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L144
	.loc 5 581 9
	lw	a5,-24(s0)
	lui	a4,%hi(.LC24)
	addi	a4,a4,%lo(.LC24)
	li	a3,581
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 582 16
	lw	a5,-24(s0)
	j	.L148
.L144:
	.loc 5 584 7
	lw	a5,-28(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 588 16
	addi	a5,s0,-28
	mv	a3,a5
	lw	a2,-44(s0)
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	ssl_write_extended_ms_ext
	sw	a0,-24(s0)
	.loc 5 588 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L145
	.loc 5 589 9
	lw	a5,-24(s0)
	lui	a4,%hi(.LC25)
	addi	a4,a4,%lo(.LC25)
	li	a3,589
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 590 16
	lw	a5,-24(s0)
	j	.L148
.L145:
	.loc 5 592 7
	lw	a5,-28(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 596 16
	addi	a5,s0,-28
	mv	a3,a5
	lw	a2,-44(s0)
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	ssl_write_use_srtp_ext
	sw	a0,-24(s0)
	.loc 5 596 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L146
	.loc 5 597 9
	lw	a5,-24(s0)
	lui	a4,%hi(.LC26)
	addi	a4,a4,%lo(.LC26)
	li	a3,597
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 598 16
	lw	a5,-24(s0)
	j	.L148
.L146:
	.loc 5 600 7
	lw	a5,-28(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 604 16
	addi	a5,s0,-28
	mv	a3,a5
	lw	a2,-44(s0)
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	ssl_write_session_ticket_ext
	sw	a0,-24(s0)
	.loc 5 604 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L147
	.loc 5 605 9
	lw	a5,-24(s0)
	lui	a4,%hi(.LC27)
	addi	a4,a4,%lo(.LC27)
	li	a3,605
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 606 16
	lw	a5,-24(s0)
	j	.L148
.L147:
	.loc 5 608 7
	lw	a5,-28(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 611 28
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	sub	a5,a4,a5
	.loc 5 611 16
	mv	a4,a5
	.loc 5 611 14
	lw	a5,-52(s0)
	sw	a4,0(a5)
	.loc 5 613 12
	li	a5,0
.L148:
	.loc 5 614 1
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
.LFE150:
	.size	mbedtls_ssl_tls12_write_client_hello_exts, .-mbedtls_ssl_tls12_write_client_hello_exts
	.section	.rodata
	.align	2
.LC28:
	.string	"non-matching renegotiation info"
	.align	2
.LC29:
	.string	"non-zero length renegotiation info"
	.section	.text.ssl_parse_renegotiation_info,"ax",@progbits
	.align	1
	.type	ssl_parse_renegotiation_info, @function
ssl_parse_renegotiation_info:
.LFB151:
	.loc 5 620 1
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
	.loc 5 622 12
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 5 622 8
	beq	a5,zero,.L150
	.loc 5 624 27
	lw	a5,-20(s0)
	lw	a5,528(a5)
	.loc 5 624 45
	slli	a5,a5,1
	.loc 5 624 22
	addi	a5,a5,1
	.loc 5 624 12
	lw	a4,-28(s0)
	bne	a4,a5,.L151
	.loc 5 625 16
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 5 625 26
	lw	a5,-20(s0)
	lw	a5,528(a5)
	.loc 5 625 44
	slli	a5,a5,1
	.loc 5 624 49 discriminator 1
	bne	a4,a5,.L151
	.loc 5 626 35
	lw	a5,-24(s0)
	addi	a4,a5,1
	.loc 5 627 34
	lw	a5,-20(s0)
	addi	a3,a5,532
	.loc 5 626 13
	lw	a5,-20(s0)
	lw	a5,528(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	mbedtls_ct_memcmp
	mv	a5,a0
	.loc 5 625 48
	bne	a5,zero,.L151
	.loc 5 628 44
	lw	a5,-20(s0)
	lw	a5,528(a5)
	.loc 5 628 39
	addi	a5,a5,1
	lw	a4,-24(s0)
	add	a4,a4,a5
	.loc 5 629 34
	lw	a5,-20(s0)
	addi	a3,a5,544
	.loc 5 628 13
	lw	a5,-20(s0)
	lw	a5,528(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	mbedtls_ct_memcmp
	mv	a5,a0
	.loc 5 627 80
	beq	a5,zero,.L152
.L151:
	.loc 5 630 13
	lui	a5,%hi(.LC28)
	addi	a4,a5,%lo(.LC28)
	li	a3,630
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 5 631 13
	li	a2,40
	li	a1,2
	lw	a0,-20(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 635 20
	li	a5,-28672
	addi	a5,a5,512
	j	.L153
.L150:
	.loc 5 640 12
	lw	a4,-28(s0)
	li	a5,1
	bne	a4,a5,.L154
	.loc 5 640 28 discriminator 1
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 5 640 22 discriminator 1
	beq	a5,zero,.L155
.L154:
	.loc 5 641 13
	lui	a5,%hi(.LC29)
	addi	a4,a5,%lo(.LC29)
	li	a3,641
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 5 643 13
	li	a2,40
	li	a1,2
	lw	a0,-20(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 647 20
	li	a5,-28672
	addi	a5,a5,512
	j	.L153
.L155:
	.loc 5 650 35
	lw	a5,-20(s0)
	li	a4,1
	sw	a4,524(a5)
.L152:
	.loc 5 653 12
	li	a5,0
.L153:
	.loc 5 654 1
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
.LFE151:
	.size	ssl_parse_renegotiation_info, .-ssl_parse_renegotiation_info
	.section	.rodata
	.align	2
.LC30:
	.string	"non-matching max fragment length extension"
	.section	.text.ssl_parse_max_fragment_length_ext,"ax",@progbits
	.align	1
	.type	ssl_parse_max_fragment_length_ext, @function
ssl_parse_max_fragment_length_ext:
.LFB152:
	.loc 5 661 1
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
	.loc 5 666 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 666 18
	lbu	a5,8(a5)
	.loc 5 666 8
	beq	a5,zero,.L157
	.loc 5 666 34 discriminator 1
	lw	a4,-28(s0)
	li	a5,1
	bne	a4,a5,.L157
	.loc 5 668 12
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	.loc 5 668 22
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 668 28
	lbu	a5,8(a5)
	.loc 5 667 18
	beq	a4,a5,.L158
.L157:
	.loc 5 669 9
	lui	a5,%hi(.LC30)
	addi	a4,a5,%lo(.LC30)
	li	a3,669
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 5 671 9
	li	a2,47
	li	a1,2
	lw	a0,-20(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 675 16
	li	a5,-24576
	addi	a5,a5,-1536
	j	.L159
.L158:
	.loc 5 678 12
	li	a5,0
.L159:
	.loc 5 679 1
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
	.size	ssl_parse_max_fragment_length_ext, .-ssl_parse_max_fragment_length_ext
	.section	.rodata
	.align	2
.LC31:
	.string	"CID extension unexpected"
	.align	2
.LC32:
	.string	"CID extension invalid"
	.align	2
.LC33:
	.string	"Use of CID extension negotiated"
	.align	2
.LC34:
	.string	"Server CID"
	.section	.text.ssl_parse_cid_ext,"ax",@progbits
	.align	1
	.type	ssl_parse_cid_ext, @function
ssl_parse_cid_ext:
.LFB153:
	.loc 5 687 1
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
	.loc 5 691 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 691 18
	lbu	a4,5(a5)
	.loc 5 690 8
	li	a5,1
	bne	a4,a5,.L161
	.loc 5 693 12
	lw	a5,-36(s0)
	lbu	a5,589(a5)
	.loc 5 691 35
	bne	a5,zero,.L162
.L161:
	.loc 5 694 9
	lui	a5,%hi(.LC31)
	addi	a4,a5,%lo(.LC31)
	li	a3,694
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 695 9
	li	a2,110
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 697 16
	li	a5,-28672
	addi	a5,a5,-1280
	j	.L163
.L162:
	.loc 5 700 8
	lw	a5,-44(s0)
	bne	a5,zero,.L164
	.loc 5 701 9
	lui	a5,%hi(.LC32)
	addi	a4,a5,%lo(.LC32)
	li	a3,701
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 702 9
	li	a2,50
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 704 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L163
.L164:
	.loc 5 707 24
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 5 707 20
	lbu	a5,0(a5)
	.loc 5 707 18
	sw	a5,-20(s0)
	.loc 5 708 8
	lw	a5,-44(s0)
	addi	a5,a5,-1
	sw	a5,-44(s0)
	.loc 5 710 8
	lw	a4,-20(s0)
	li	a5,32
	bleu	a4,a5,.L165
	.loc 5 711 9
	lui	a5,%hi(.LC32)
	addi	a4,a5,%lo(.LC32)
	li	a3,711
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 712 9
	li	a2,47
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 714 16
	li	a5,-24576
	addi	a5,a5,-1536
	j	.L163
.L165:
	.loc 5 717 8
	lw	a4,-44(s0)
	lw	a5,-20(s0)
	beq	a4,a5,.L166
	.loc 5 718 9
	lui	a5,%hi(.LC32)
	addi	a4,a5,%lo(.LC32)
	li	a3,718
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 719 9
	li	a2,50
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 721 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L163
.L166:
	.loc 5 724 8
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 724 32
	li	a4,1
	sb	a4,672(a5)
	.loc 5 725 8
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 725 36
	lw	a4,-20(s0)
	andi	a4,a4,0xff
	.loc 5 725 34
	sb	a4,705(a5)
	.loc 5 726 15
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 726 26
	addi	a5,a5,673
	.loc 5 726 5
	lw	a2,-20(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcpy
	.loc 5 728 5
	lui	a5,%hi(.LC33)
	addi	a4,a5,%lo(.LC33)
	li	a3,728
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 729 5
	lw	a6,-20(s0)
	lw	a5,-40(s0)
	lui	a4,%hi(.LC34)
	addi	a4,a4,%lo(.LC34)
	li	a3,729
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_buf
	.loc 5 731 12
	li	a5,0
.L163:
	.loc 5 732 1
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
.LFE153:
	.size	ssl_parse_cid_ext, .-ssl_parse_cid_ext
	.section	.rodata
	.align	2
.LC35:
	.string	"non-matching encrypt-then-MAC extension"
	.section	.text.ssl_parse_encrypt_then_mac_ext,"ax",@progbits
	.align	1
	.type	ssl_parse_encrypt_then_mac_ext, @function
ssl_parse_encrypt_then_mac_ext:
.LFB154:
	.loc 5 740 1
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
	.loc 5 741 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 741 18
	lbu	a5,9(a5)
	.loc 5 741 8
	beq	a5,zero,.L168
	.loc 5 741 42 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L169
.L168:
	.loc 5 743 9
	lui	a5,%hi(.LC35)
	addi	a4,a5,%lo(.LC35)
	li	a3,743
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 5 745 9
	li	a2,110
	li	a1,2
	lw	a0,-20(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 749 16
	li	a5,-28672
	addi	a5,a5,-1280
	j	.L170
.L169:
	.loc 5 754 8
	lw	a5,-20(s0)
	lw	a5,60(a5)
	.loc 5 754 46
	li	a4,1
	sw	a4,116(a5)
	.loc 5 756 12
	li	a5,0
.L170:
	.loc 5 757 1
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
.LFE154:
	.size	ssl_parse_encrypt_then_mac_ext, .-ssl_parse_encrypt_then_mac_ext
	.section	.rodata
	.align	2
.LC36:
	.string	"non-matching extended master secret extension"
	.section	.text.ssl_parse_extended_ms_ext,"ax",@progbits
	.align	1
	.type	ssl_parse_extended_ms_ext, @function
ssl_parse_extended_ms_ext:
.LFB155:
	.loc 5 765 1
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
	.loc 5 766 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 766 18
	lbu	a5,10(a5)
	.loc 5 766 8
	beq	a5,zero,.L172
	.loc 5 766 37 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L173
.L172:
	.loc 5 768 9
	lui	a5,%hi(.LC36)
	addi	a4,a5,%lo(.LC36)
	li	a3,768
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 5 770 9
	li	a2,110
	li	a1,2
	lw	a0,-20(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 774 16
	li	a5,-28672
	addi	a5,a5,-1280
	j	.L174
.L173:
	.loc 5 779 8
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 5 779 33
	li	a4,1
	sb	a4,8(a5)
	.loc 5 781 12
	li	a5,0
.L174:
	.loc 5 782 1
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
.LFE155:
	.size	ssl_parse_extended_ms_ext, .-ssl_parse_extended_ms_ext
	.section	.rodata
	.align	2
.LC37:
	.string	"non-matching session ticket extension"
	.section	.text.ssl_parse_session_ticket_ext,"ax",@progbits
	.align	1
	.type	ssl_parse_session_ticket_ext, @function
ssl_parse_session_ticket_ext:
.LFB156:
	.loc 5 790 1
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
	.loc 5 791 10
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_ssl_conf_get_session_tickets
	mv	a5,a0
	.loc 5 791 8 discriminator 1
	beq	a5,zero,.L176
	.loc 5 792 13
	lw	a5,-28(s0)
	beq	a5,zero,.L177
.L176:
	.loc 5 794 9
	lui	a5,%hi(.LC37)
	addi	a4,a5,%lo(.LC37)
	li	a3,794
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 5 796 9
	li	a2,110
	li	a1,2
	lw	a0,-20(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 800 16
	li	a5,-28672
	addi	a5,a5,-1280
	j	.L178
.L177:
	.loc 5 805 8
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 5 805 40
	li	a4,1
	sb	a4,4(a5)
	.loc 5 807 12
	li	a5,0
.L178:
	.loc 5 808 1
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
.LFE156:
	.size	ssl_parse_session_ticket_ext, .-ssl_parse_session_ticket_ext
	.section	.rodata
	.align	2
.LC38:
	.string	"bad server hello message"
	.align	2
.LC39:
	.string	"point format selected: %d"
	.align	2
.LC40:
	.string	"no point format in common"
	.section	.text.ssl_parse_supported_point_formats_ext,"ax",@progbits
	.align	1
	.type	ssl_parse_supported_point_formats_ext, @function
ssl_parse_supported_point_formats_ext:
.LFB157:
	.loc 5 818 1
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
	.loc 5 822 8
	lw	a5,-44(s0)
	beq	a5,zero,.L180
	.loc 5 822 34 discriminator 1
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 5 822 38 discriminator 1
	addi	a4,a5,1
	.loc 5 822 43 discriminator 1
	lw	a5,-44(s0)
	.loc 5 822 18 discriminator 1
	beq	a4,a5,.L181
.L180:
	.loc 5 823 9
	lui	a5,%hi(.LC38)
	addi	a4,a5,%lo(.LC38)
	li	a3,823
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 824 9
	li	a2,50
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 826 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L182
.L181:
	.loc 5 828 20
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 5 828 15
	sw	a5,-20(s0)
	.loc 5 830 7
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 5 831 11
	j	.L183
.L186:
	.loc 5 832 14
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 5 832 12
	beq	a5,zero,.L184
	.loc 5 833 14
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	.loc 5 832 23 discriminator 1
	li	a5,1
	bne	a4,a5,.L185
.L184:
	.loc 5 836 54
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	.loc 5 836 16
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 836 51
	sw	a4,324(a5)
	.loc 5 843 175
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 5 843 13
	lui	a4,%hi(.LC39)
	addi	a4,a4,%lo(.LC39)
	li	a3,843
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,4
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 844 20
	li	a5,0
	j	.L182
.L185:
	.loc 5 847 18
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 5 848 10
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L183:
	.loc 5 831 22
	lw	a5,-20(s0)
	bne	a5,zero,.L186
	.loc 5 851 5
	lui	a5,%hi(.LC40)
	addi	a4,a5,%lo(.LC40)
	li	a3,851
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 852 5
	li	a2,40
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 854 12
	li	a5,-28672
	addi	a5,a5,512
.L182:
	.loc 5 855 1
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
.LFE157:
	.size	ssl_parse_supported_point_formats_ext, .-ssl_parse_supported_point_formats_ext
	.section	.rodata
	.align	2
.LC41:
	.string	"non-matching ALPN extension"
	.align	2
.LC42:
	.string	"ALPN extension: no matching protocol"
	.section	.text.ssl_parse_alpn_ext,"ax",@progbits
	.align	1
	.type	ssl_parse_alpn_ext, @function
ssl_parse_alpn_ext:
.LFB158:
	.loc 5 915 1
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
	.loc 5 920 12
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 5 920 18
	lw	a5,188(a5)
	.loc 5 920 8
	bne	a5,zero,.L188
	.loc 5 921 9
	lui	a5,%hi(.LC41)
	addi	a4,a5,%lo(.LC41)
	li	a3,921
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 922 9
	li	a2,110
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 926 16
	li	a5,-28672
	addi	a5,a5,-1280
	j	.L189
.L188:
	.loc 5 940 8
	lw	a4,-60(s0)
	li	a5,3
	bgtu	a4,a5,.L190
	.loc 5 941 9
	li	a2,50
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 943 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L189
.L190:
	lw	a5,-56(s0)
	sw	a5,-32(s0)
.LBB86:
.LBB87:
	.loc 6 122 33
	lw	a5,-32(s0)
	sw	a5,-36(s0)
	.loc 6 123 7
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-38(s0)
	.loc 6 127 12
	lhu	a5,-38(s0)
.LBE87:
.LBE86:
	.loc 5 946 67 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 946 14 discriminator 2
	sw	a5,-24(s0)
	.loc 5 947 25
	lw	a5,-60(s0)
	addi	a5,a5,-2
	.loc 5 947 8
	lw	a4,-24(s0)
	beq	a4,a5,.L192
	.loc 5 948 9
	li	a2,50
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 950 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L189
.L192:
	.loc 5 953 19
	lw	a5,-56(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 5 953 14
	sw	a5,-28(s0)
	.loc 5 954 30
	lw	a5,-24(s0)
	addi	a5,a5,-1
	.loc 5 954 8
	lw	a4,-28(s0)
	beq	a4,a5,.L193
	.loc 5 955 9
	li	a2,50
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 957 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L189
.L193:
	.loc 5 961 17
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 5 961 12
	lw	a5,188(a5)
	sw	a5,-20(s0)
	.loc 5 961 5
	j	.L194
.L196:
	.loc 5 962 25
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	strlen
	mv	a4,a0
	.loc 5 962 12 discriminator 1
	lw	a5,-28(s0)
	bne	a5,a4,.L195
	.loc 5 963 24
	lw	a5,-56(s0)
	addi	a4,a5,3
	.loc 5 963 13
	lw	a5,-20(s0)
	lw	a5,0(a5)
	lw	a2,-28(s0)
	mv	a1,a5
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 5 962 36 discriminator 2
	bne	a5,zero,.L195
	.loc 5 964 32
	lw	a5,-20(s0)
	lw	a4,0(a5)
	.loc 5 964 30
	lw	a5,-52(s0)
	sw	a4,252(a5)
	.loc 5 965 20
	li	a5,0
	j	.L189
.L195:
	.loc 5 961 48 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
.L194:
	.loc 5 961 36 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 961 39 discriminator 1
	bne	a5,zero,.L196
	.loc 5 969 5
	lui	a5,%hi(.LC42)
	addi	a4,a5,%lo(.LC42)
	li	a3,969
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 970 5
	li	a2,40
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 972 12
	li	a5,-28672
	addi	a5,a5,512
.L189:
	.loc 5 973 1
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
.LFE158:
	.size	ssl_parse_alpn_ext, .-ssl_parse_alpn_ext
	.section	.rodata
	.align	2
.LC43:
	.string	"found srtp profile: %s"
	.align	2
.LC44:
	.string	"selected srtp profile: %s"
	.align	2
.LC45:
	.string	"received mki"
	.section	.text.ssl_parse_use_srtp_ext,"ax",@progbits
	.align	1
	.type	ssl_parse_use_srtp_ext, @function
ssl_parse_use_srtp_ext:
.LFB159:
	.loc 5 981 1
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
	.loc 5 982 30
	sh	zero,-26(s0)
	.loc 5 983 15
	sw	zero,-24(s0)
	.loc 5 984 14
	sh	zero,-28(s0)
	.loc 5 987 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 987 19
	lbu	a4,5(a5)
	.loc 5 987 8
	li	a5,1
	bne	a4,a5,.L198
	.loc 5 988 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 988 19
	lw	a5,192(a5)
	.loc 5 987 37 discriminator 1
	beq	a5,zero,.L198
	.loc 5 989 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 989 19
	lw	a5,196(a5)
	.loc 5 988 52
	bne	a5,zero,.L199
.L198:
	.loc 5 990 16
	li	a5,0
	j	.L200
.L199:
	.loc 5 1004 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 1004 18
	lbu	a4,17(a5)
	.loc 5 1004 8
	li	a5,1
	bne	a4,a5,.L201
	.loc 5 1005 38
	lw	a5,-36(s0)
	lhu	a5,258(a5)
	.loc 5 1005 17
	sw	a5,-24(s0)
.L201:
	.loc 5 1014 8
	lw	a4,-44(s0)
	li	a5,4
	bleu	a4,a5,.L202
	.loc 5 1014 34 discriminator 1
	lw	a5,-40(s0)
	addi	a5,a5,4
	lbu	a5,0(a5)
	.loc 5 1014 38 discriminator 1
	addi	a5,a5,5
	.loc 5 1014 19 discriminator 1
	lw	a4,-44(s0)
	beq	a4,a5,.L203
.L202:
	.loc 5 1015 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L200
.L203:
	.loc 5 1026 13
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 5 1026 8
	bne	a5,zero,.L204
	.loc 5 1026 30 discriminator 1
	lw	a5,-40(s0)
	addi	a5,a5,1
	lbu	a4,0(a5)
	.loc 5 1026 23 discriminator 1
	li	a5,2
	beq	a4,a5,.L205
.L204:
	.loc 5 1027 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L200
.L205:
	.loc 5 1030 43
	lw	a5,-40(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 5 1030 53
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,8
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 5 1030 58
	lw	a5,-40(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 5 1030 53
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 5 1030 37
	sh	a5,-28(s0)
	.loc 5 1031 25
	lhu	a5,-28(s0)
	mv	a0,a5
	call	mbedtls_ssl_check_srtp_profile_value
	mv	a5,a0
	sh	a5,-26(s0)
	.loc 5 1033 8
	lhu	a5,-26(s0)
	beq	a5,zero,.L206
	.loc 5 1034 9
	lhu	a5,-26(s0)
	mv	a0,a5
	call	mbedtls_ssl_get_srtp_profile_as_string
	mv	a5,a0
	.loc 5 1034 9 is_stmt 0 discriminator 1
	lui	a4,%hi(.LC43)
	addi	a4,a4,%lo(.LC43)
	li	a3,1034
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
.L206:
	.loc 5 1039 50 is_stmt 1
	lw	a5,-36(s0)
	sh	zero,256(a5)
	.loc 5 1044 12
	sw	zero,-20(s0)
	.loc 5 1044 5
	j	.L207
.L210:
	.loc 5 1045 37
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 1045 43
	lw	a4,192(a5)
	.loc 5 1045 67
	lw	a5,-20(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	.loc 5 1045 12
	lhu	a4,-26(s0)
	bne	a4,a5,.L208
	.loc 5 1046 63
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 1046 69
	lw	a4,192(a5)
	.loc 5 1046 93
	lw	a5,-20(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a4,0(a5)
	.loc 5 1046 58
	lw	a5,-36(s0)
	sh	a4,256(a5)
	.loc 5 1047 13
	lhu	a5,-26(s0)
	mv	a0,a5
	call	mbedtls_ssl_get_srtp_profile_as_string
	mv	a5,a0
	.loc 5 1047 13 is_stmt 0 discriminator 1
	lui	a4,%hi(.LC44)
	addi	a4,a4,%lo(.LC44)
	li	a3,1047
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1050 13 is_stmt 1
	j	.L209
.L208:
	.loc 5 1044 61 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L207:
	.loc 5 1044 24 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 1044 30 discriminator 1
	lw	a5,196(a5)
	.loc 5 1044 19 discriminator 1
	lw	a4,-20(s0)
	bltu	a4,a5,.L210
.L209:
	.loc 5 1055 28
	lw	a5,-36(s0)
	lhu	a5,256(a5)
	.loc 5 1055 8
	bne	a5,zero,.L211
	.loc 5 1056 9
	li	a2,40
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1058 16
	li	a5,-28672
	addi	a5,a5,512
	j	.L200
.L211:
	.loc 5 1063 8
	lw	a4,-44(s0)
	li	a5,5
	bne	a4,a5,.L212
	.loc 5 1064 37
	lw	a5,-36(s0)
	sh	zero,258(a5)
.L212:
	.loc 5 1073 8
	lw	a4,-44(s0)
	li	a5,5
	bleu	a4,a5,.L213
	.loc 5 1073 24 discriminator 1
	lw	a5,-40(s0)
	addi	a5,a5,4
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 5 1073 17 discriminator 1
	lw	a5,-24(s0)
	bne	a5,a4,.L214
	.loc 5 1074 49
	lw	a5,-36(s0)
	addi	a4,a5,260
	.loc 5 1074 61
	lw	a5,-40(s0)
	addi	a5,a5,5
	.loc 5 1074 23
	lw	a2,-24(s0)
	mv	a1,a5
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 5 1073 39 discriminator 2
	beq	a5,zero,.L213
.L214:
	.loc 5 1075 9
	li	a2,47
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1077 16
	li	a5,-24576
	addi	a5,a5,-1536
	j	.L200
.L213:
	.loc 5 1080 8
	lw	a4,-44(s0)
	li	a5,5
	bleu	a4,a5,.L215
	.loc 5 1081 177
	lw	a5,-36(s0)
	addi	a4,a5,260
	.loc 5 1081 208
	lw	a5,-36(s0)
	lhu	a5,258(a5)
	.loc 5 1081 9
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC45)
	addi	a4,a4,%lo(.LC45)
	li	a3,1081
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_buf
.L215:
	.loc 5 1085 12
	li	a5,0
.L200:
	.loc 5 1086 1
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
.LFE159:
	.size	ssl_parse_use_srtp_ext, .-ssl_parse_use_srtp_ext
	.section	.rodata
	.align	2
.LC46:
	.string	"=> parse hello verify request"
	.align	2
.LC47:
	.string	"incoming HelloVerifyRequest message is too short"
	.align	2
.LC48:
	.string	"server version"
	.align	2
.LC49:
	.string	"bad server version"
	.align	2
.LC50:
	.string	"cookie length does not match incoming message size"
	.align	2
.LC51:
	.string	"cookie"
	.align	2
.LC52:
	.string	"alloc failed (%d bytes)"
	.align	2
.LC53:
	.string	"mbedtls_ssl_reset_checksum"
	.align	2
.LC54:
	.string	"<= parse hello verify request"
	.section	.text.ssl_parse_hello_verify_request,"ax",@progbits
	.align	1
	.type	ssl_parse_hello_verify_request, @function
ssl_parse_hello_verify_request:
.LFB160:
	.loc 5 1095 1
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
	.loc 5 1096 9
	li	a5,-28672
	addi	a5,a5,-128
	sw	a5,-20(s0)
	.loc 5 1097 33
	lw	a5,-52(s0)
	lw	s1,120(a5)
	.loc 5 1097 44
	lw	a0,-52(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a5,a0
	.loc 5 1097 26 discriminator 1
	add	a5,s1,a5
	sw	a5,-24(s0)
	.loc 5 1106 5
	lui	a5,%hi(.LC46)
	addi	a4,a5,%lo(.LC46)
	li	a3,1106
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1112 9
	lw	a0,-52(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a5,a0
	.loc 5 1112 37 discriminator 1
	addi	a4,a5,3
	.loc 5 1112 46 discriminator 1
	lw	a5,-52(s0)
	lw	a5,132(a5)
	.loc 5 1112 8 discriminator 1
	bleu	a4,a5,.L217
	.loc 5 1113 9
	lui	a5,%hi(.LC47)
	addi	a4,a5,%lo(.LC47)
	li	a3,1113
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1115 9
	li	a2,50
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1117 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L218
.L217:
	.loc 5 1126 5
	li	a6,2
	lw	a5,-24(s0)
	lui	a4,%hi(.LC48)
	addi	a4,a4,%lo(.LC48)
	li	a3,1126
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_buf
	lw	a5,-24(s0)
	sw	a5,-32(s0)
.LBB88:
.LBB89:
	.loc 6 122 33
	lw	a5,-32(s0)
	sw	a5,-36(s0)
	.loc 6 123 7
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-38(s0)
	.loc 6 127 12
	lhu	a5,-38(s0)
.LBE89:
.LBE88:
	.loc 5 1127 76 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	sh	a5,-26(s0)
	.loc 5 1128 7
	lw	a5,-24(s0)
	addi	a5,a5,2
	sw	a5,-24(s0)
	.loc 5 1135 8
	lhu	a4,-26(s0)
	li	a5,65536
	addi	a5,a5,-259
	beq	a4,a5,.L220
	.loc 5 1135 39 discriminator 1
	lhu	a4,-26(s0)
	li	a5,65536
	addi	a5,a5,-257
	beq	a4,a5,.L220
	.loc 5 1136 9
	lui	a5,%hi(.LC49)
	addi	a4,a5,%lo(.LC49)
	li	a3,1136
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1138 9
	li	a2,70
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1141 16
	li	a5,-28672
	addi	a5,a5,384
	j	.L218
.L220:
	.loc 5 1144 20
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 5 1144 16
	lbu	a5,0(a5)
	sb	a5,-27(s0)
	.loc 5 1145 13
	lw	a5,-52(s0)
	lw	a4,120(a5)
	.loc 5 1145 27
	lw	a5,-52(s0)
	lw	a5,132(a5)
	.loc 5 1145 22
	add	a4,a4,a5
	.loc 5 1145 40
	lw	a5,-24(s0)
	sub	a4,a4,a5
	.loc 5 1145 44
	lbu	a5,-27(s0)
	.loc 5 1145 8
	bge	a4,a5,.L221
	.loc 5 1146 9
	lui	a5,%hi(.LC50)
	addi	a4,a5,%lo(.LC50)
	li	a3,1146
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1148 9
	li	a2,50
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1150 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L218
.L221:
	.loc 5 1152 5
	lbu	a5,-27(s0)
	mv	a6,a5
	lw	a5,-24(s0)
	lui	a4,%hi(.LC51)
	addi	a4,a4,%lo(.LC51)
	li	a3,1152
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1154 13
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 5 1154 24
	lw	a5,624(a5)
	.loc 5 1154 5
	mv	a0,a5
	call	free
	.loc 5 1156 30
	lbu	a4,-27(s0)
	.loc 5 1156 8
	lw	a5,-52(s0)
	lw	s1,64(a5)
	.loc 5 1156 30
	mv	a1,a4
	li	a0,1
	call	calloc
	mv	a5,a0
	.loc 5 1156 28 discriminator 1
	sw	a5,624(s1)
	.loc 5 1157 12
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 5 1157 23
	lw	a5,624(a5)
	.loc 5 1157 8
	bne	a5,zero,.L222
	.loc 5 1158 9
	lbu	a5,-27(s0)
	lui	a4,%hi(.LC52)
	addi	a4,a4,%lo(.LC52)
	li	a3,1158
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1159 16
	li	a5,-32768
	addi	a5,a5,256
	j	.L218
.L222:
	.loc 5 1162 15
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 5 1162 26
	lw	a5,624(a5)
	.loc 5 1162 5
	lbu	a4,-27(s0)
	mv	a2,a4
	lw	a1,-24(s0)
	mv	a0,a5
	call	memcpy
	.loc 5 1163 8
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 5 1163 32
	lbu	a4,-27(s0)
	sb	a4,628(a5)
	.loc 5 1166 5
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_ssl_handshake_set_state
	.loc 5 1167 11
	lw	a0,-52(s0)
	call	mbedtls_ssl_reset_checksum
	sw	a0,-20(s0)
	.loc 5 1168 8
	lw	a5,-20(s0)
	beq	a5,zero,.L223
	.loc 5 1169 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC53)
	addi	a4,a4,%lo(.LC53)
	li	a3,1169
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_ret
	.loc 5 1170 16
	lw	a5,-20(s0)
	j	.L218
.L223:
	.loc 5 1173 5
	lw	a0,-52(s0)
	call	mbedtls_ssl_recv_flight_completed
	.loc 5 1175 5
	lui	a5,%hi(.LC54)
	addi	a4,a5,%lo(.LC54)
	li	a3,1175
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1177 12
	li	a5,0
.L218:
	.loc 5 1178 1
	mv	a0,a5
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
.LFE160:
	.size	ssl_parse_hello_verify_request, .-ssl_parse_hello_verify_request
	.section	.rodata
	.align	2
.LC55:
	.string	"=> parse server hello"
	.align	2
.LC56:
	.string	"mbedtls_ssl_read_record"
	.align	2
.LC57:
	.string	"renegotiation requested, but not honored by server"
	.align	2
.LC58:
	.string	"non-handshake message during renegotiation"
	.align	2
.LC59:
	.string	"received hello verify request"
	.align	2
.LC60:
	.string	"<= parse server hello"
	.align	2
.LC61:
	.string	"server hello, version"
	.align	2
.LC62:
	.string	"server version out of bounds -  min: [0x%x], server: [0x%x], max: [0x%x]"
	.align	2
.LC63:
	.string	"server hello, current time: %lu"
	.align	2
.LC64:
	.string	"server hello, random bytes"
	.align	2
.LC65:
	.string	"server hello, bad compression: %d"
	.align	2
.LC66:
	.string	"ciphersuite info for %04x not found"
	.align	2
.LC67:
	.string	"server hello, session id len.: %zu"
	.align	2
.LC68:
	.string	"server hello, session id"
	.align	2
.LC69:
	.string	"a"
	.align	2
.LC70:
	.string	"no"
	.align	2
.LC71:
	.string	"%s session has been resumed"
	.align	2
.LC72:
	.string	"server hello, chosen ciphersuite: %04x"
	.align	2
.LC73:
	.string	"server hello, compress alg.: %d"
	.align	2
.LC74:
	.string	"server hello, chosen ciphersuite: %s"
	.align	2
.LC75:
	.string	"server hello, total extension length: %zu"
	.align	2
.LC76:
	.string	"found renegotiation extension"
	.align	2
.LC77:
	.string	"found max_fragment_length extension"
	.align	2
.LC78:
	.string	"found CID extension"
	.align	2
.LC79:
	.string	"found encrypt_then_mac extension"
	.align	2
.LC80:
	.string	"found extended_master_secret extension"
	.align	2
.LC81:
	.string	"found session_ticket extension"
	.align	2
.LC82:
	.string	"found supported_point_formats extension"
	.align	2
.LC83:
	.string	"found alpn extension"
	.align	2
.LC84:
	.string	"found use_srtp extension"
	.align	2
.LC85:
	.string	"unknown extension found: %u (ignoring)"
	.align	2
.LC86:
	.string	"mbedtls_ssl_derive_keys"
	.align	2
.LC87:
	.string	"legacy renegotiation, breaking off handshake"
	.align	2
.LC88:
	.string	"renegotiation_info extension missing (secure)"
	.align	2
.LC89:
	.string	"legacy renegotiation not allowed"
	.align	2
.LC90:
	.string	"renegotiation_info extension present (legacy)"
	.section	.text.ssl_parse_server_hello,"ax",@progbits
	.align	1
	.type	ssl_parse_server_hello, @function
ssl_parse_server_hello:
.LFB161:
	.loc 5 1183 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	sw	s1,116(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	a0,-116(s0)
	.loc 5 1190 9
	sw	zero,-32(s0)
	.loc 5 1192 9
	sw	zero,-36(s0)
	.loc 5 1195 5
	lui	a5,%hi(.LC55)
	addi	a4,a5,%lo(.LC55)
	li	a3,1195
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1197 16
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_ssl_read_record
	sw	a0,-40(s0)
	.loc 5 1197 8 discriminator 1
	lw	a5,-40(s0)
	beq	a5,zero,.L225
	.loc 5 1199 9
	lw	a5,-40(s0)
	lui	a4,%hi(.LC56)
	addi	a4,a4,%lo(.LC56)
	li	a3,1199
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_ret
	.loc 5 1200 16
	lw	a5,-40(s0)
	j	.L226
.L225:
	.loc 5 1203 9
	lw	a5,-116(s0)
	lw	a5,120(a5)
	sw	a5,-44(s0)
	.loc 5 1205 12
	lw	a5,-116(s0)
	lw	a4,128(a5)
	.loc 5 1205 8
	li	a5,22
	beq	a4,a5,.L227
	.loc 5 1207 16
	lw	a5,-116(s0)
	lw	a4,8(a5)
	.loc 5 1207 12
	li	a5,1
	bne	a4,a5,.L228
	.loc 5 1208 16
	lw	a5,-116(s0)
	lw	a5,12(a5)
	.loc 5 1208 37
	addi	a4,a5,1
	lw	a5,-116(s0)
	sw	a4,12(a5)
	.loc 5 1210 20
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 5 1210 26
	lw	a5,212(a5)
	.loc 5 1210 16
	blt	a5,zero,.L229
	.loc 5 1211 20
	lw	a5,-116(s0)
	lw	a4,12(a5)
	.loc 5 1211 47
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 5 1211 53
	lw	a5,212(a5)
	.loc 5 1210 52 discriminator 1
	ble	a4,a5,.L229
	.loc 5 1212 17
	lui	a5,%hi(.LC57)
	addi	a4,a5,%lo(.LC57)
	li	a3,1212
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1214 24
	li	a5,-28672
	addi	a5,a5,-1792
	j	.L226
.L229:
	.loc 5 1217 13
	lui	a5,%hi(.LC58)
	addi	a4,a5,%lo(.LC58)
	li	a3,1217
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1220 39
	lw	a5,-116(s0)
	li	a4,1
	sw	a4,176(a5)
	.loc 5 1221 20
	li	a5,-28672
	addi	a5,a5,1280
	j	.L226
.L228:
	.loc 5 1225 9
	lui	a5,%hi(.LC38)
	addi	a4,a5,%lo(.LC38)
	li	a3,1225
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1226 9
	li	a2,10
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1230 16
	li	a5,-28672
	addi	a5,a5,-1792
	j	.L226
.L227:
	.loc 5 1234 12
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 5 1234 18
	lbu	a4,5(a5)
	.loc 5 1234 8
	li	a5,1
	bne	a4,a5,.L230
	.loc 5 1235 16
	lw	a5,-44(s0)
	lbu	a4,0(a5)
	.loc 5 1235 12
	li	a5,3
	bne	a4,a5,.L231
	.loc 5 1236 13
	lui	a5,%hi(.LC59)
	addi	a4,a5,%lo(.LC59)
	li	a3,1236
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1237 13
	lui	a5,%hi(.LC60)
	addi	a4,a5,%lo(.LC60)
	li	a3,1237
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1238 20
	lw	a0,-116(s0)
	call	ssl_parse_hello_verify_request
	mv	a5,a0
	j	.L226
.L231:
	.loc 5 1241 21
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 1241 32
	lw	a5,624(a5)
	.loc 5 1241 13
	mv	a0,a5
	call	free
	.loc 5 1242 16
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 1242 36
	sw	zero,624(a5)
	.loc 5 1243 16
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 1243 40
	sb	zero,628(a5)
.L230:
	.loc 5 1248 12
	lw	a5,-116(s0)
	lw	s1,168(a5)
	.loc 5 1248 30
	lw	a0,-116(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a5,a0
	.loc 5 1248 28 discriminator 1
	addi	a5,a5,38
	.loc 5 1248 8 discriminator 1
	bltu	s1,a5,.L232
	.loc 5 1249 12
	lw	a5,-44(s0)
	lbu	a4,0(a5)
	.loc 5 1248 58 discriminator 2
	li	a5,2
	beq	a4,a5,.L233
.L232:
	.loc 5 1250 9
	lui	a5,%hi(.LC38)
	addi	a4,a5,%lo(.LC38)
	li	a3,1250
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1251 9
	li	a2,50
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1253 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L226
.L233:
	.loc 5 1267 12
	lw	a0,-116(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a4,a0
	.loc 5 1267 9 discriminator 1
	lw	a5,-44(s0)
	add	a5,a5,a4
	sw	a5,-44(s0)
	.loc 5 1269 5
	li	a6,2
	lw	a5,-44(s0)
	lui	a4,%hi(.LC61)
	addi	a4,a4,%lo(.LC61)
	li	a3,1269
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-116(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1271 83
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 5 1271 89
	lbu	a5,5(a5)
	.loc 5 1270 55
	mv	a1,a5
	lw	a0,-44(s0)
	call	mbedtls_ssl_read_version
	mv	a5,a0
	mv	a4,a5
	.loc 5 1270 22 discriminator 1
	lw	a5,-116(s0)
	sh	a4,16(a5)
	.loc 5 1272 8
	lw	a5,-116(s0)
	lw	a5,60(a5)
	.loc 5 1272 46
	lw	a4,-116(s0)
	lhu	a4,16(a4)
	.loc 5 1272 41
	sh	a4,4(a5)
	.loc 5 1273 43
	lw	a5,-116(s0)
	lw	a4,0(a5)
	.loc 5 1273 8
	lw	a5,-116(s0)
	lw	a5,60(a5)
	.loc 5 1273 49
	lbu	a4,4(a4)
	.loc 5 1273 38
	sb	a4,2(a5)
	.loc 5 1275 12
	lw	a5,-116(s0)
	lhu	a4,16(a5)
	.loc 5 1275 31
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 5 1275 37
	lhu	a5,2(a5)
	.loc 5 1275 8
	bltu	a4,a5,.L234
	.loc 5 1276 12
	lw	a5,-116(s0)
	lhu	a4,16(a5)
	.loc 5 1276 31
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 5 1276 37
	lhu	a5,0(a5)
	.loc 5 1275 55 discriminator 1
	bleu	a4,a5,.L235
.L234:
	.loc 5 1277 232
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 5 1277 238
	lhu	a5,2(a5)
	.loc 5 1277 9
	mv	a4,a5
	.loc 5 1277 271
	lw	a5,-116(s0)
	lhu	a5,16(a5)
	.loc 5 1277 9
	mv	a3,a5
	.loc 5 1277 300
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 5 1277 306
	lhu	a5,0(a5)
	.loc 5 1277 9
	mv	a7,a5
	mv	a6,a3
	mv	a5,a4
	lui	a4,%hi(.LC62)
	addi	a4,a4,%lo(.LC62)
	li	a3,1277
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1284 9
	li	a2,70
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1287 16
	li	a5,-28672
	addi	a5,a5,384
	j	.L226
.L235:
	.loc 5 1290 193
	lw	a5,-44(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 5 1290 197
	slli	a4,a5,24
	.loc 5 1290 226
	lw	a5,-44(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 5 1290 230
	slli	a5,a5,16
	.loc 5 1290 204
	or	a4,a4,a5
	.loc 5 1290 259
	lw	a5,-44(s0)
	addi	a5,a5,4
	lbu	a5,0(a5)
	.loc 5 1290 263
	slli	a5,a5,8
	.loc 5 1290 237
	or	a5,a4,a5
	.loc 5 1290 291
	lw	a4,-44(s0)
	addi	a4,a4,5
	lbu	a4,0(a4)
	.loc 5 1290 5
	or	a5,a5,a4
	lui	a4,%hi(.LC63)
	addi	a4,a4,%lo(.LC63)
	li	a3,1290
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1296 15
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 1296 12
	addi	a5,a5,808
	.loc 5 1296 5
	addi	a4,a5,32
	.loc 5 1296 48
	lw	a5,-44(s0)
	addi	a5,a5,2
	.loc 5 1296 5
	li	a2,32
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 5 1298 12
	lw	a5,-44(s0)
	addi	a5,a5,34
	lbu	a5,0(a5)
	.loc 5 1298 7
	sw	a5,-48(s0)
	.loc 5 1300 172
	lw	a5,-44(s0)
	addi	a5,a5,2
	.loc 5 1300 5
	li	a6,32
	lui	a4,%hi(.LC64)
	addi	a4,a4,%lo(.LC64)
	li	a3,1300
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-116(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1302 8
	lw	a4,-48(s0)
	li	a5,32
	bleu	a4,a5,.L236
	.loc 5 1303 9
	lui	a5,%hi(.LC38)
	addi	a4,a5,%lo(.LC38)
	li	a3,1303
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1304 9
	li	a2,50
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1306 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L226
.L236:
	.loc 5 1309 12
	lw	a5,-116(s0)
	lw	s1,168(a5)
	.loc 5 1309 25
	lw	a0,-116(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a4,a0
	.loc 5 1309 58 discriminator 1
	lw	a5,-48(s0)
	add	a5,a4,a5
	addi	a5,a5,39
	.loc 5 1309 8 discriminator 1
	bleu	s1,a5,.L237
	.loc 5 1310 134
	lw	a5,-48(s0)
	addi	a5,a5,38
	.loc 5 1310 128
	lw	a4,-44(s0)
	add	a5,a4,a5
	sw	a5,-76(s0)
.LBB90:
.LBB91:
	.loc 6 122 33
	lw	a5,-76(s0)
	sw	a5,-72(s0)
	.loc 6 123 7
	lw	a5,-72(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-66(s0)
	.loc 6 127 12
	lhu	a5,-66(s0)
.LBE91:
.LBE90:
	.loc 5 1310 75 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 1310 17 discriminator 2
	sw	a5,-24(s0)
	.loc 5 1312 12
	lw	a5,-24(s0)
	beq	a5,zero,.L239
	.loc 5 1312 26 discriminator 1
	lw	a4,-24(s0)
	li	a5,3
	bleu	a4,a5,.L240
.L239:
	.loc 5 1313 16
	lw	a5,-116(s0)
	lw	s1,168(a5)
	.loc 5 1313 30
	lw	a0,-116(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a4,a0
	.loc 5 1313 63 discriminator 1
	lw	a5,-48(s0)
	add	a4,a4,a5
	.loc 5 1313 67 discriminator 1
	lw	a5,-24(s0)
	add	a5,a4,a5
	addi	a5,a5,40
	.loc 5 1312 42 discriminator 3
	beq	s1,a5,.L241
.L240:
	.loc 5 1314 13
	lui	a5,%hi(.LC38)
	addi	a4,a5,%lo(.LC38)
	li	a3,1314
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1315 13
	li	a2,50
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1319 20
	li	a5,-28672
	addi	a5,a5,-768
	j	.L226
.L237:
	.loc 5 1321 19
	lw	a5,-116(s0)
	lw	s1,168(a5)
	.loc 5 1321 33
	lw	a0,-116(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a4,a0
	.loc 5 1321 66 discriminator 1
	lw	a5,-48(s0)
	add	a5,a4,a5
	addi	a5,a5,38
	.loc 5 1321 15 discriminator 1
	bne	s1,a5,.L242
	.loc 5 1322 17
	sw	zero,-24(s0)
	j	.L241
.L242:
	.loc 5 1324 9
	lui	a5,%hi(.LC38)
	addi	a4,a5,%lo(.LC38)
	li	a3,1324
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1325 9
	li	a2,50
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1327 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L226
.L241:
	.loc 5 1331 124
	lw	a5,-48(s0)
	addi	a5,a5,35
	lw	a4,-44(s0)
	add	a5,a4,a5
	sw	a5,-80(s0)
.LBB92:
.LBB93:
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
.LBE93:
.LBE92:
	.loc 5 1331 71 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 1331 7 discriminator 2
	sw	a5,-20(s0)
	.loc 5 1336 19
	lw	a5,-48(s0)
	addi	a5,a5,37
	.loc 5 1336 15
	lw	a4,-44(s0)
	add	a5,a4,a5
	.loc 5 1336 10
	lbu	a5,0(a5)
	sb	a5,-49(s0)
	.loc 5 1338 8
	lbu	a5,-49(s0)
	beq	a5,zero,.L244
	.loc 5 1339 9
	lbu	a5,-49(s0)
	lui	a4,%hi(.LC65)
	addi	a4,a4,%lo(.LC65)
	li	a3,1339
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1341 9
	li	a2,47
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1345 16
	li	a5,-28672
	addi	a5,a5,-128
	j	.L226
.L244:
	.loc 5 1351 8
	lw	a5,-116(s0)
	lw	s1,64(a5)
	.loc 5 1351 40
	lw	a0,-20(s0)
	call	mbedtls_ssl_ciphersuite_from_id
	mv	a5,a0
	.loc 5 1351 38 discriminator 1
	sw	a5,24(s1)
	.loc 5 1352 12
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 1352 23
	lw	a5,24(a5)
	.loc 5 1352 8
	bne	a5,zero,.L245
	.loc 5 1353 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC66)
	addi	a4,a4,%lo(.LC66)
	li	a3,1353
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1355 9
	li	a2,80
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1357 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L226
.L245:
	.loc 5 1360 43
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 1360 5
	lw	a5,24(a5)
	mv	a1,a5
	lw	a0,-116(s0)
	call	mbedtls_ssl_optimize_checksum
	.loc 5 1362 5
	lw	a5,-48(s0)
	lui	a4,%hi(.LC67)
	addi	a4,a4,%lo(.LC67)
	li	a3,1362
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1363 170
	lw	a5,-44(s0)
	addi	a5,a5,35
	.loc 5 1363 5
	lw	a6,-48(s0)
	lui	a4,%hi(.LC68)
	addi	a4,a4,%lo(.LC68)
	li	a3,1363
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-116(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1368 12
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 1368 23
	lbu	a5,0(a5)
	.loc 5 1368 8
	beq	a5,zero,.L246
	.loc 5 1368 37 discriminator 1
	lw	a5,-48(s0)
	beq	a5,zero,.L246
	.loc 5 1370 12
	lw	a5,-116(s0)
	lw	a5,8(a5)
	.loc 5 1368 47 discriminator 2
	bne	a5,zero,.L246
	.loc 5 1372 12
	lw	a5,-116(s0)
	lw	a5,60(a5)
	.loc 5 1372 31
	lw	a5,8(a5)
	.loc 5 1370 33
	lw	a4,-20(s0)
	bne	a4,a5,.L246
	.loc 5 1373 12
	lw	a5,-116(s0)
	lw	a5,60(a5)
	.loc 5 1373 31
	lw	a5,12(a5)
	.loc 5 1372 50
	lw	a4,-48(s0)
	bne	a4,a5,.L246
	.loc 5 1374 19
	lw	a5,-116(s0)
	lw	a5,60(a5)
	.loc 5 1374 38
	addi	a4,a5,16
	.loc 5 1374 48
	lw	a5,-44(s0)
	addi	a5,a5,35
	.loc 5 1374 9
	lw	a2,-48(s0)
	mv	a1,a5
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	.loc 5 1373 45
	beq	a5,zero,.L247
.L246:
	.loc 5 1375 9
	lw	a0,-116(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 5 1376 12
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 1376 32
	sb	zero,0(a5)
	.loc 5 1380 12
	lw	a5,-116(s0)
	lw	a5,60(a5)
	.loc 5 1380 45
	lw	a4,-20(s0)
	sw	a4,8(a5)
	.loc 5 1381 12
	lw	a5,-116(s0)
	lw	a5,60(a5)
	.loc 5 1381 40
	lw	a4,-48(s0)
	sw	a4,12(a5)
	.loc 5 1382 19
	lw	a5,-116(s0)
	lw	a5,60(a5)
	.loc 5 1382 38
	addi	a4,a5,16
	.loc 5 1382 48
	lw	a5,-44(s0)
	addi	a5,a5,35
	.loc 5 1382 9
	lw	a2,-48(s0)
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	j	.L248
.L247:
	.loc 5 1384 9
	li	a1,12
	lw	a0,-116(s0)
	call	mbedtls_ssl_handshake_set_state
.L248:
	.loc 5 1387 172
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 1387 183
	lbu	a5,0(a5)
	.loc 5 1387 5
	beq	a5,zero,.L249
	.loc 5 1387 5 is_stmt 0 discriminator 1
	lui	a5,%hi(.LC69)
	addi	a5,a5,%lo(.LC69)
	j	.L250
.L249:
	.loc 5 1387 5 discriminator 2
	lui	a5,%hi(.LC70)
	addi	a5,a5,%lo(.LC70)
.L250:
	.loc 5 1387 5 discriminator 4
	lui	a4,%hi(.LC71)
	addi	a4,a4,%lo(.LC71)
	li	a3,1387
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1390 5 is_stmt 1
	lw	a5,-20(s0)
	lui	a4,%hi(.LC72)
	addi	a4,a4,%lo(.LC72)
	li	a3,1390
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1391 180
	lw	a5,-48(s0)
	addi	a5,a5,37
	.loc 5 1391 176
	lw	a4,-44(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 5 1391 5
	lui	a4,%hi(.LC73)
	addi	a4,a4,%lo(.LC73)
	li	a3,1391
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1397 7
	sw	zero,-20(s0)
.L254:
	.loc 5 1399 16
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 5 1399 22
	lw	a4,20(a5)
	.loc 5 1399 40
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 5 1399 12
	bne	a5,zero,.L251
	.loc 5 1400 13
	lui	a5,%hi(.LC38)
	addi	a4,a5,%lo(.LC38)
	li	a3,1400
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1401 13
	li	a2,47
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1405 20
	li	a5,-24576
	addi	a5,a5,-1536
	j	.L226
.L251:
	.loc 5 1408 16
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 5 1408 22
	lw	a4,20(a5)
	.loc 5 1408 42
	lw	a5,-20(s0)
	addi	a3,a5,1
	sw	a3,-20(s0)
	.loc 5 1408 40
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 5 1409 16
	lw	a5,-116(s0)
	lw	a5,60(a5)
	.loc 5 1409 35
	lw	a5,8(a5)
	.loc 5 1408 12
	beq	a4,a5,.L291
	.loc 5 1399 12
	j	.L254
.L291:
	.loc 5 1410 13
	nop
	.loc 5 1415 12
	lw	a5,-116(s0)
	lw	a5,60(a5)
	.loc 5 1414 18
	lw	a5,8(a5)
	mv	a0,a5
	call	mbedtls_ssl_ciphersuite_from_id
	sw	a0,-56(s0)
	.loc 5 1416 9
	lw	a5,-116(s0)
	lhu	a4,16(a5)
	lw	a5,-116(s0)
	lhu	a5,16(a5)
	mv	a3,a5
	mv	a2,a4
	lw	a1,-56(s0)
	lw	a0,-116(s0)
	call	mbedtls_ssl_validate_ciphersuite
	mv	a5,a0
	.loc 5 1416 8 discriminator 1
	beq	a5,zero,.L255
	.loc 5 1418 9
	lui	a5,%hi(.LC38)
	addi	a4,a5,%lo(.LC38)
	li	a3,1418
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1419 9
	li	a2,40
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1423 16
	li	a5,-28672
	addi	a5,a5,512
	j	.L226
.L255:
	.loc 5 1426 188
	lw	a5,-56(s0)
	lw	a5,4(a5)
	.loc 5 1426 5
	lui	a4,%hi(.LC74)
	addi	a4,a4,%lo(.LC74)
	li	a3,1426
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1430 19
	lw	a5,-56(s0)
	lbu	a4,10(a5)
	.loc 5 1430 8
	li	a5,4
	bne	a4,a5,.L256
	.loc 5 1431 12
	lw	a5,-116(s0)
	lhu	a4,16(a5)
	.loc 5 1430 70 discriminator 1
	li	a5,771
	bne	a4,a5,.L256
	.loc 5 1432 12
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 1432 38
	li	a4,1
	sb	a4,11(a5)
.L256:
	.loc 5 1436 8
	lbu	a5,-49(s0)
	beq	a5,zero,.L257
	.loc 5 1437 9
	lui	a5,%hi(.LC38)
	addi	a4,a5,%lo(.LC38)
	li	a3,1437
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1438 9
	li	a2,47
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1442 16
	li	a5,-24576
	addi	a5,a5,-1536
	j	.L226
.L257:
	.loc 5 1445 20
	lw	a5,-48(s0)
	addi	a5,a5,40
	.loc 5 1445 9
	lw	a4,-44(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 5 1447 5
	lw	a5,-24(s0)
	lui	a4,%hi(.LC75)
	addi	a4,a4,%lo(.LC75)
	li	a3,1447
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1451 11
	j	.L258
.L283:
	lw	a5,-28(s0)
	sw	a5,-104(s0)
.LBB94:
.LBB95:
.LBB96:
	.loc 6 122 33
	lw	a5,-104(s0)
	sw	a5,-108(s0)
	.loc 6 123 7
	lw	a5,-108(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-110(s0)
	.loc 6 127 12
	lhu	a5,-110(s0)
.LBE96:
.LBE95:
	.loc 5 1452 82 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 1452 22 discriminator 2
	sw	a5,-60(s0)
	.loc 5 1453 137
	lw	a5,-28(s0)
	addi	a5,a5,2
	sw	a5,-92(s0)
.LBB97:
.LBB98:
	.loc 6 122 33
	lw	a5,-92(s0)
	sw	a5,-96(s0)
	.loc 6 123 7
	lw	a5,-96(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-98(s0)
	.loc 6 127 12
	lhu	a5,-98(s0)
.LBE98:
.LBE97:
	.loc 5 1453 84 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 1453 22 discriminator 2
	sw	a5,-64(s0)
	.loc 5 1455 22
	lw	a5,-64(s0)
	addi	a5,a5,4
	.loc 5 1455 12
	lw	a4,-24(s0)
	bgeu	a4,a5,.L261
	.loc 5 1456 13
	lui	a5,%hi(.LC38)
	addi	a4,a5,%lo(.LC38)
	li	a3,1456
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1457 13
	li	a2,50
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1460 20
	li	a5,-28672
	addi	a5,a5,-768
	j	.L226
.L261:
	.loc 5 1463 9
	lw	a4,-60(s0)
	li	a5,65536
	addi	a5,a5,-255
	beq	a4,a5,.L262
	lw	a4,-60(s0)
	li	a5,65536
	addi	a5,a5,-255
	bgtu	a4,a5,.L263
	lw	a4,-60(s0)
	li	a5,54
	beq	a4,a5,.L264
	lw	a4,-60(s0)
	li	a5,54
	bgtu	a4,a5,.L263
	lw	a4,-60(s0)
	li	a5,35
	beq	a4,a5,.L265
	lw	a4,-60(s0)
	li	a5,35
	bgtu	a4,a5,.L263
	lw	a4,-60(s0)
	li	a5,23
	beq	a4,a5,.L266
	lw	a4,-60(s0)
	li	a5,23
	bgtu	a4,a5,.L263
	lw	a4,-60(s0)
	li	a5,22
	beq	a4,a5,.L267
	lw	a4,-60(s0)
	li	a5,22
	bgtu	a4,a5,.L263
	lw	a4,-60(s0)
	li	a5,16
	beq	a4,a5,.L268
	lw	a4,-60(s0)
	li	a5,16
	bgtu	a4,a5,.L263
	lw	a4,-60(s0)
	li	a5,14
	beq	a4,a5,.L269
	lw	a4,-60(s0)
	li	a5,14
	bgtu	a4,a5,.L263
	lw	a4,-60(s0)
	li	a5,1
	beq	a4,a5,.L270
	lw	a4,-60(s0)
	li	a5,11
	beq	a4,a5,.L271
	j	.L263
.L262:
	.loc 5 1465 17
	lui	a5,%hi(.LC76)
	addi	a4,a5,%lo(.LC76)
	li	a3,1465
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1467 41
	li	a5,1
	sw	a5,-32(s0)
	.loc 5 1470 66
	lw	a5,-28(s0)
	addi	a5,a5,4
	.loc 5 1470 28
	lw	a2,-64(s0)
	mv	a1,a5
	lw	a0,-116(s0)
	call	ssl_parse_renegotiation_info
	sw	a0,-40(s0)
	.loc 5 1470 20 discriminator 1
	lw	a5,-40(s0)
	beq	a5,zero,.L292
	.loc 5 1472 28
	lw	a5,-40(s0)
	j	.L226
.L270:
	.loc 5 1479 17
	lui	a5,%hi(.LC77)
	addi	a4,a5,%lo(.LC77)
	li	a3,1479
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1483 66
	lw	a5,-28(s0)
	addi	a5,a5,4
	.loc 5 1482 28
	lw	a2,-64(s0)
	mv	a1,a5
	lw	a0,-116(s0)
	call	ssl_parse_max_fragment_length_ext
	sw	a0,-40(s0)
	.loc 5 1482 20 discriminator 1
	lw	a5,-40(s0)
	beq	a5,zero,.L293
	.loc 5 1484 28
	lw	a5,-40(s0)
	j	.L226
.L264:
	.loc 5 1492 17
	lui	a5,%hi(.LC78)
	addi	a4,a5,%lo(.LC78)
	li	a3,1492
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1495 50
	lw	a5,-28(s0)
	addi	a5,a5,4
	.loc 5 1494 28
	lw	a2,-64(s0)
	mv	a1,a5
	lw	a0,-116(s0)
	call	ssl_parse_cid_ext
	sw	a0,-40(s0)
	.loc 5 1494 20 discriminator 1
	lw	a5,-40(s0)
	beq	a5,zero,.L294
	.loc 5 1497 28
	lw	a5,-40(s0)
	j	.L226
.L267:
	.loc 5 1505 17
	lui	a5,%hi(.LC79)
	addi	a4,a5,%lo(.LC79)
	li	a3,1505
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1508 63
	lw	a5,-28(s0)
	addi	a5,a5,4
	.loc 5 1507 28
	lw	a2,-64(s0)
	mv	a1,a5
	lw	a0,-116(s0)
	call	ssl_parse_encrypt_then_mac_ext
	sw	a0,-40(s0)
	.loc 5 1507 20 discriminator 1
	lw	a5,-40(s0)
	beq	a5,zero,.L295
	.loc 5 1509 28
	lw	a5,-40(s0)
	j	.L226
.L266:
	.loc 5 1517 17
	lui	a5,%hi(.LC80)
	addi	a4,a5,%lo(.LC80)
	li	a3,1517
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1521 58
	lw	a5,-28(s0)
	addi	a5,a5,4
	.loc 5 1520 28
	lw	a2,-64(s0)
	mv	a1,a5
	lw	a0,-116(s0)
	call	ssl_parse_extended_ms_ext
	sw	a0,-40(s0)
	.loc 5 1520 20 discriminator 1
	lw	a5,-40(s0)
	beq	a5,zero,.L296
	.loc 5 1522 28
	lw	a5,-40(s0)
	j	.L226
.L265:
	.loc 5 1530 17
	lui	a5,%hi(.LC81)
	addi	a4,a5,%lo(.LC81)
	li	a3,1530
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1533 61
	lw	a5,-28(s0)
	addi	a5,a5,4
	.loc 5 1532 28
	lw	a2,-64(s0)
	mv	a1,a5
	lw	a0,-116(s0)
	call	ssl_parse_session_ticket_ext
	sw	a0,-40(s0)
	.loc 5 1532 20 discriminator 1
	lw	a5,-40(s0)
	beq	a5,zero,.L297
	.loc 5 1534 28
	lw	a5,-40(s0)
	j	.L226
.L271:
	.loc 5 1544 17
	lui	a5,%hi(.LC82)
	addi	a4,a5,%lo(.LC82)
	li	a3,1544
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1548 70
	lw	a5,-28(s0)
	addi	a5,a5,4
	.loc 5 1547 28
	lw	a2,-64(s0)
	mv	a1,a5
	lw	a0,-116(s0)
	call	ssl_parse_supported_point_formats_ext
	sw	a0,-40(s0)
	.loc 5 1547 20 discriminator 1
	lw	a5,-40(s0)
	beq	a5,zero,.L298
	.loc 5 1549 28
	lw	a5,-40(s0)
	j	.L226
.L268:
	.loc 5 1571 17
	lui	a5,%hi(.LC83)
	addi	a4,a5,%lo(.LC83)
	li	a3,1571
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1573 56
	lw	a5,-28(s0)
	addi	a5,a5,4
	.loc 5 1573 28
	lw	a2,-64(s0)
	mv	a1,a5
	lw	a0,-116(s0)
	call	ssl_parse_alpn_ext
	sw	a0,-40(s0)
	.loc 5 1573 20 discriminator 1
	lw	a5,-40(s0)
	beq	a5,zero,.L299
	.loc 5 1574 28
	lw	a5,-40(s0)
	j	.L226
.L269:
	.loc 5 1582 17
	lui	a5,%hi(.LC84)
	addi	a4,a5,%lo(.LC84)
	li	a3,1582
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1584 60
	lw	a5,-28(s0)
	addi	a5,a5,4
	.loc 5 1584 28
	lw	a2,-64(s0)
	mv	a1,a5
	lw	a0,-116(s0)
	call	ssl_parse_use_srtp_ext
	sw	a0,-40(s0)
	.loc 5 1584 20 discriminator 1
	lw	a5,-40(s0)
	beq	a5,zero,.L300
	.loc 5 1585 28
	lw	a5,-40(s0)
	j	.L226
.L263:
	.loc 5 1592 17
	lw	a5,-60(s0)
	lui	a4,%hi(.LC85)
	addi	a4,a4,%lo(.LC85)
	li	a3,1592
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	j	.L273
.L292:
	.loc 5 1475 17
	nop
	j	.L273
.L293:
	.loc 5 1487 17
	nop
	j	.L273
.L294:
	.loc 5 1500 17
	nop
	j	.L273
.L295:
	.loc 5 1512 17
	nop
	j	.L273
.L296:
	.loc 5 1525 17
	nop
	j	.L273
.L297:
	.loc 5 1537 17
	nop
	j	.L273
.L298:
	.loc 5 1552 17
	nop
	j	.L273
.L299:
	.loc 5 1577 17
	nop
	j	.L273
.L300:
	.loc 5 1588 17
	nop
.L273:
	.loc 5 1596 17
	lw	a4,-24(s0)
	lw	a5,-64(s0)
	sub	a5,a4,a5
	addi	a5,a5,-4
	sw	a5,-24(s0)
	.loc 5 1597 18
	lw	a5,-64(s0)
	addi	a5,a5,4
	.loc 5 1597 13
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 5 1599 12
	lw	a5,-24(s0)
	beq	a5,zero,.L258
	.loc 5 1599 25 discriminator 1
	lw	a4,-24(s0)
	li	a5,3
	bgtu	a4,a5,.L258
	.loc 5 1600 13
	lui	a5,%hi(.LC38)
	addi	a4,a5,%lo(.LC38)
	li	a3,1600
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1601 20
	li	a5,-28672
	addi	a5,a5,-768
	j	.L226
.L258:
.LBE94:
	.loc 5 1451 12
	lw	a5,-24(s0)
	bne	a5,zero,.L283
	.loc 5 1610 12
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 1610 23
	lbu	a5,0(a5)
	.loc 5 1610 8
	beq	a5,zero,.L284
	.loc 5 1611 20
	lw	a0,-116(s0)
	call	mbedtls_ssl_derive_keys
	sw	a0,-40(s0)
	.loc 5 1611 12 discriminator 1
	lw	a5,-40(s0)
	beq	a5,zero,.L284
	.loc 5 1612 13
	lw	a5,-40(s0)
	lui	a4,%hi(.LC86)
	addi	a4,a4,%lo(.LC86)
	li	a3,1612
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_ret
	.loc 5 1613 13
	li	a2,80
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1617 20
	lw	a5,-40(s0)
	j	.L226
.L284:
	.loc 5 1624 12
	lw	a5,-116(s0)
	lw	a5,524(a5)
	.loc 5 1624 8
	bne	a5,zero,.L285
	.loc 5 1625 12
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 5 1625 18
	lbu	a4,7(a5)
	.loc 5 1624 40 discriminator 1
	li	a5,2
	bne	a4,a5,.L285
	.loc 5 1627 9
	lui	a5,%hi(.LC87)
	addi	a4,a5,%lo(.LC87)
	li	a3,1627
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1629 27
	li	a5,1
	sw	a5,-36(s0)
	j	.L286
.L285:
	.loc 5 1632 17
	lw	a5,-116(s0)
	lw	a4,8(a5)
	.loc 5 1632 13
	li	a5,1
	bne	a4,a5,.L287
	.loc 5 1633 17
	lw	a5,-116(s0)
	lw	a4,524(a5)
	.loc 5 1632 38 discriminator 1
	li	a5,1
	bne	a4,a5,.L287
	.loc 5 1633 45
	lw	a5,-32(s0)
	bne	a5,zero,.L287
	.loc 5 1635 9
	lui	a5,%hi(.LC88)
	addi	a4,a5,%lo(.LC88)
	li	a3,1635
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1637 27
	li	a5,1
	sw	a5,-36(s0)
	j	.L286
.L287:
	.loc 5 1638 19
	lw	a5,-116(s0)
	lw	a4,8(a5)
	.loc 5 1638 15
	li	a5,1
	bne	a4,a5,.L288
	.loc 5 1639 19
	lw	a5,-116(s0)
	lw	a5,524(a5)
	.loc 5 1638 40 discriminator 1
	bne	a5,zero,.L288
	.loc 5 1640 19
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 5 1640 25
	lbu	a5,7(a5)
	.loc 5 1639 47
	bne	a5,zero,.L288
	.loc 5 1642 9
	lui	a5,%hi(.LC89)
	addi	a4,a5,%lo(.LC89)
	li	a3,1642
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1643 27
	li	a5,1
	sw	a5,-36(s0)
	j	.L286
.L288:
	.loc 5 1644 19
	lw	a5,-116(s0)
	lw	a4,8(a5)
	.loc 5 1644 15
	li	a5,1
	bne	a4,a5,.L286
	.loc 5 1645 19
	lw	a5,-116(s0)
	lw	a5,524(a5)
	.loc 5 1644 40 discriminator 1
	bne	a5,zero,.L286
	.loc 5 1645 47
	lw	a4,-32(s0)
	li	a5,1
	bne	a4,a5,.L286
	.loc 5 1647 9
	lui	a5,%hi(.LC90)
	addi	a4,a5,%lo(.LC90)
	li	a3,1647
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1649 27
	li	a5,1
	sw	a5,-36(s0)
.L286:
	.loc 5 1653 8
	lw	a4,-36(s0)
	li	a5,1
	bne	a4,a5,.L289
	.loc 5 1654 9
	li	a2,40
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1658 16
	li	a5,-28672
	addi	a5,a5,512
	j	.L226
.L289:
	.loc 5 1661 5
	lui	a5,%hi(.LC60)
	addi	a4,a5,%lo(.LC60)
	li	a3,1661
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1663 12
	li	a5,0
.L226:
	.loc 5 1664 1
	mv	a0,a5
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	lw	s1,116(sp)
	.cfi_restore 9
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE161:
	.size	ssl_parse_server_hello, .-ssl_parse_server_hello
	.section	.rodata
	.align	2
.LC91:
	.string	"should never happen"
	.align	2
.LC92:
	.string	"ECDH curve: %s"
	.section	.text.ssl_check_server_ecdh_params,"ax",@progbits
	.align	1
	.type	ssl_check_server_ecdh_params, @function
ssl_check_server_ecdh_params:
.LFB162:
	.loc 5 1790 1
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
	.loc 5 1794 17
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 1794 12
	lbu	a5,164(a5)
	sb	a5,-17(s0)
	.loc 5 1799 14
	lbu	a5,-17(s0)
	mv	a0,a5
	call	mbedtls_ssl_get_tls_id_from_ecp_group_id
	mv	a5,a0
	sh	a5,-20(s0)
	.loc 5 1800 8
	lhu	a5,-20(s0)
	bne	a5,zero,.L302
	.loc 5 1801 9
	lui	a5,%hi(.LC91)
	addi	a4,a5,%lo(.LC91)
	li	a3,1801
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1802 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L303
.L302:
	.loc 5 1805 5
	lhu	a5,-20(s0)
	mv	a0,a5
	call	mbedtls_ssl_get_curve_name_from_tls_id
	mv	a5,a0
	.loc 5 1805 5 is_stmt 0 discriminator 1
	lui	a4,%hi(.LC92)
	addi	a4,a4,%lo(.LC92)
	li	a3,1805
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1808 9 is_stmt 1
	lbu	a5,-17(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_ssl_check_curve
	mv	a5,a0
	.loc 5 1808 8 discriminator 1
	beq	a5,zero,.L304
	.loc 5 1809 16
	li	a5,-1
	j	.L303
.L304:
	.loc 5 1812 144
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 1812 140
	addi	a4,a5,164
	.loc 5 1812 5
	li	a5,1
	li	a3,1812
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_printf_ecdh
	.loc 5 1815 12
	li	a5,0
.L303:
	.loc 5 1816 1
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
.LFE162:
	.size	ssl_check_server_ecdh_params, .-ssl_check_server_ecdh_params
	.section	.rodata
	.align	2
.LC93:
	.string	"mbedtls_ecdh_read_params"
	.align	2
.LC94:
	.string	"bad server key exchange message (ECDHE curve)"
	.section	.text.ssl_parse_server_ecdh_params,"ax",@progbits
	.align	1
	.type	ssl_parse_server_ecdh_params, @function
ssl_parse_server_ecdh_params:
.LFB163:
	.loc 5 1831 1
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
	.loc 5 1832 9
	li	a5,-28672
	addi	a5,a5,-128
	sw	a5,-20(s0)
	.loc 5 1842 45
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 1842 16
	addi	a5,a5,164
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	mbedtls_ecdh_read_params
	sw	a0,-20(s0)
	.loc 5 1842 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L306
	.loc 5 1844 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC93)
	addi	a4,a4,%lo(.LC93)
	li	a3,1844
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 1846 12
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,1280
	bne	a4,a5,.L307
	.loc 5 1847 17
	li	a5,-28672
	sw	a5,-20(s0)
.L307:
	.loc 5 1850 16
	lw	a5,-20(s0)
	j	.L308
.L306:
	.loc 5 1853 9
	lw	a0,-36(s0)
	call	ssl_check_server_ecdh_params
	mv	a5,a0
	.loc 5 1853 8 discriminator 1
	beq	a5,zero,.L309
	.loc 5 1854 9
	lui	a5,%hi(.LC94)
	addi	a4,a5,%lo(.LC94)
	li	a3,1854
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1856 16
	li	a5,-28672
	addi	a5,a5,512
	j	.L308
.L309:
	.loc 5 1859 12
	lw	a5,-20(s0)
.L308:
	.loc 5 1860 1
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
.LFE163:
	.size	ssl_parse_server_ecdh_params, .-ssl_parse_server_ecdh_params
	.section	.rodata
	.align	2
.LC95:
	.string	"bad server key exchange message (psk_identity_hint length)"
	.section	.text.ssl_parse_server_psk_hint,"ax",@progbits
	.align	1
	.type	ssl_parse_server_psk_hint, @function
ssl_parse_server_psk_hint:
.LFB164:
	.loc 5 1870 1
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
	.loc 5 1871 9
	li	a5,-28672
	addi	a5,a5,-128
	sw	a5,-20(s0)
	.loc 5 1880 16
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 5 1880 13
	lw	a4,-60(s0)
	sub	a4,a4,a5
	.loc 5 1880 8
	li	a5,1
	bgt	a4,a5,.L311
	.loc 5 1881 9
	lui	a5,%hi(.LC95)
	addi	a4,a5,%lo(.LC95)
	li	a3,1881
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1883 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L312
.L311:
	.loc 5 1885 79
	lw	a5,-56(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
.LBB99:
.LBB100:
	.loc 6 122 33
	lw	a5,-28(s0)
	sw	a5,-32(s0)
	.loc 6 123 7
	lw	a5,-32(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-34(s0)
	.loc 6 127 12
	lhu	a5,-34(s0)
.LBE100:
.LBE99:
	.loc 5 1885 61 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	sh	a5,-22(s0)
	.loc 5 1886 5
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 5 1886 8
	addi	a4,a5,2
	lw	a5,-56(s0)
	sw	a4,0(a5)
	.loc 5 1888 16
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 5 1888 13
	lw	a4,-60(s0)
	sub	a4,a4,a5
	.loc 5 1888 20
	lhu	a5,-22(s0)
	.loc 5 1888 8
	bge	a4,a5,.L314
	.loc 5 1889 9
	lui	a5,%hi(.LC95)
	addi	a4,a5,%lo(.LC95)
	li	a3,1889
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1891 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L312
.L314:
	.loc 5 1899 5
	lw	a5,-56(s0)
	lw	a4,0(a5)
	.loc 5 1899 8
	lhu	a5,-22(s0)
	add	a4,a4,a5
	lw	a5,-56(s0)
	sw	a4,0(a5)
	.loc 5 1900 9
	sw	zero,-20(s0)
	.loc 5 1902 12
	lw	a5,-20(s0)
.L312:
	.loc 5 1903 1
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
.LFE164:
	.size	ssl_parse_server_psk_hint, .-ssl_parse_server_psk_hint
	.section	.rodata
	.align	2
.LC96:
	.string	"server key not ECDH capable"
	.align	2
.LC97:
	.string	"mbedtls_ecdh_get_params"
	.align	2
.LC98:
	.string	"bad server certificate (ECDH curve)"
	.section	.text.ssl_get_ecdh_params_from_cert,"ax",@progbits
	.align	1
	.type	ssl_get_ecdh_params_from_cert, @function
ssl_get_ecdh_params_from_cert:
.LFB165:
	.loc 5 1989 1
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
	.loc 5 1990 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 1996 12
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 5 1996 31
	lw	a5,96(a5)
	.loc 5 1996 8
	bne	a5,zero,.L316
	.loc 5 1998 9
	lui	a5,%hi(.LC91)
	addi	a4,a5,%lo(.LC91)
	li	a3,1998
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1999 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L317
.L316:
	.loc 5 2001 19
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 5 2001 38
	lw	a5,96(a5)
	.loc 5 2001 13
	addi	a5,a5,204
	sw	a5,-24(s0)
	.loc 5 2006 10
	li	a1,2
	lw	a0,-24(s0)
	call	mbedtls_pk_can_do
	mv	a5,a0
	.loc 5 2006 8 discriminator 1
	bne	a5,zero,.L318
	.loc 5 2007 9
	lui	a5,%hi(.LC96)
	addi	a4,a5,%lo(.LC96)
	li	a3,2007
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2008 16
	li	a5,-28672
	addi	a5,a5,768
	j	.L317
.L318:
	.loc 5 2012 43
	lw	a5,-24(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_ec_ro
	sw	a0,-28(s0)
	.loc 5 2058 44
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2058 16
	addi	a5,a5,164
	li	a2,1
	lw	a1,-28(s0)
	mv	a0,a5
	call	mbedtls_ecdh_get_params
	sw	a0,-20(s0)
	.loc 5 2058 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L319
	.loc 5 2060 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC97)
	addi	a4,a4,%lo(.LC97)
	li	a3,4096
	addi	a3,a3,-2036
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2061 16
	lw	a5,-20(s0)
	j	.L317
.L319:
	.loc 5 2064 9
	lw	a0,-36(s0)
	call	ssl_check_server_ecdh_params
	mv	a5,a0
	.loc 5 2064 8 discriminator 1
	beq	a5,zero,.L320
	.loc 5 2065 9
	lui	a5,%hi(.LC98)
	addi	a4,a5,%lo(.LC98)
	li	a5,4096
	addi	a3,a5,-2031
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2066 16
	li	a5,-32768
	addi	a5,a5,1536
	j	.L317
.L320:
	.loc 5 2076 12
	lw	a5,-20(s0)
.L317:
	.loc 5 2077 1
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
.LFE165:
	.size	ssl_get_ecdh_params_from_cert, .-ssl_get_ecdh_params_from_cert
	.section	.rodata
	.align	2
.LC99:
	.string	"=> parse server key exchange"
	.align	2
.LC100:
	.string	"ssl_get_ecdh_params_from_cert"
	.align	2
.LC101:
	.string	"<= skip parse server key exchange"
	.align	2
.LC102:
	.string	"bad server key exchange message"
	.align	2
.LC103:
	.string	"server key exchange message must not be skipped"
	.align	2
.LC104:
	.string	"server key exchange"
	.align	2
.LC105:
	.string	"missing input data in %s"
	.align	2
.LC106:
	.string	"signature"
	.align	2
.LC107:
	.string	"parameters hash"
	.align	2
.LC108:
	.string	"mbedtls_pk_verify"
	.align	2
.LC109:
	.string	"<= parse server key exchange"
	.section	.text.ssl_parse_server_key_exchange,"ax",@progbits
	.align	1
	.type	ssl_parse_server_key_exchange, @function
ssl_parse_server_key_exchange:
.LFB166:
	.loc 5 2083 1
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
	.loc 5 2084 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 2086 12
	lw	a5,-164(s0)
	lw	a5,64(a5)
	.loc 5 2085 38
	lw	a5,24(a5)
	sw	a5,-28(s0)
	.loc 5 2087 20
	sw	zero,-84(s0)
	.loc 5 2087 30
	sw	zero,-32(s0)
	.loc 5 2089 5
	lui	a5,%hi(.LC99)
	addi	a4,a5,%lo(.LC99)
	li	a5,4096
	addi	a3,a5,-2007
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-164(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2103 25
	lw	a5,-28(s0)
	lbu	a4,10(a5)
	.loc 5 2103 8
	li	a5,9
	beq	a4,a5,.L322
	.loc 5 2104 25
	lw	a5,-28(s0)
	lbu	a4,10(a5)
	.loc 5 2103 73 discriminator 1
	li	a5,10
	bne	a4,a5,.L323
.L322:
	.loc 5 2105 20
	lw	a0,-164(s0)
	call	ssl_get_ecdh_params_from_cert
	sw	a0,-20(s0)
	.loc 5 2105 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L324
	.loc 5 2106 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC100)
	addi	a4,a4,%lo(.LC100)
	li	a3,4096
	addi	a3,a3,-1990
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-164(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2107 13
	li	a2,40
	li	a1,2
	lw	a0,-164(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 2111 20
	lw	a5,-20(s0)
	j	.L356
.L324:
	.loc 5 2114 9
	lui	a5,%hi(.LC101)
	addi	a4,a5,%lo(.LC101)
	li	a5,4096
	addi	a3,a5,-1982
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-164(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2115 9
	lw	a0,-164(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 5 2116 16
	li	a5,0
	j	.L356
.L323:
	.loc 5 2124 12
	lw	a5,-164(s0)
	lw	a5,64(a5)
	.loc 5 2124 23
	lbu	a5,11(a5)
	.loc 5 2124 8
	beq	a5,zero,.L326
	.loc 5 2125 12
	lw	a5,-164(s0)
	lw	a5,64(a5)
	.loc 5 2125 23
	lbu	a4,12(a5)
	.loc 5 2124 38 discriminator 1
	li	a5,2
	beq	a4,a5,.L357
.L326:
	.loc 5 2130 16
	li	a1,1
	lw	a0,-164(s0)
	call	mbedtls_ssl_read_record
	sw	a0,-20(s0)
	.loc 5 2130 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L328
	.loc 5 2131 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC56)
	addi	a4,a4,%lo(.LC56)
	li	a3,4096
	addi	a3,a3,-1965
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-164(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2132 16
	lw	a5,-20(s0)
	j	.L356
.L328:
	.loc 5 2135 12
	lw	a5,-164(s0)
	lw	a4,128(a5)
	.loc 5 2135 8
	li	a5,22
	beq	a4,a5,.L329
	.loc 5 2136 9
	lui	a5,%hi(.LC102)
	addi	a4,a5,%lo(.LC102)
	li	a5,4096
	addi	a3,a5,-1960
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-164(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2137 9
	li	a2,10
	li	a1,2
	lw	a0,-164(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 2141 16
	li	a5,-28672
	addi	a5,a5,-1792
	j	.L356
.L329:
	.loc 5 2148 12
	lw	a5,-164(s0)
	lw	a5,120(a5)
	.loc 5 2148 20
	lbu	a4,0(a5)
	.loc 5 2148 8
	li	a5,12
	beq	a4,a5,.L330
	.loc 5 2149 29
	lw	a5,-28(s0)
	lbu	a4,10(a5)
	.loc 5 2149 12
	li	a5,5
	beq	a4,a5,.L331
	.loc 5 2150 29
	lw	a5,-28(s0)
	lbu	a4,10(a5)
	.loc 5 2149 72 discriminator 1
	li	a5,7
	bne	a4,a5,.L332
.L331:
	.loc 5 2153 39
	lw	a5,-164(s0)
	li	a4,1
	sw	a4,176(a5)
	.loc 5 2154 13
	j	.L333
.L332:
	.loc 5 2157 9
	lui	a5,%hi(.LC103)
	addi	a4,a5,%lo(.LC103)
	li	a5,4096
	addi	a3,a5,-1939
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-164(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2159 9
	li	a2,10
	li	a1,2
	lw	a0,-164(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 2164 16
	li	a5,-28672
	addi	a5,a5,-1792
	j	.L356
.L330:
	.loc 5 2168 12
	lw	a5,-164(s0)
	lw	a5,64(a5)
	.loc 5 2168 23
	lbu	a5,11(a5)
	.loc 5 2168 8
	beq	a5,zero,.L358
	.loc 5 2169 12
	lw	a5,-164(s0)
	lw	a5,64(a5)
	.loc 5 2169 36
	li	a4,2
	sb	a4,12(a5)
	j	.L327
.L357:
	.loc 5 2126 9
	nop
	j	.L327
.L358:
	.loc 5 2172 1
	nop
.L327:
	.loc 5 2174 12
	lw	a5,-164(s0)
	lw	s1,120(a5)
	.loc 5 2174 23
	lw	a0,-164(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a5,a0
	.loc 5 2174 21 discriminator 1
	add	a5,s1,a5
	.loc 5 2174 7 discriminator 1
	sw	a5,-84(s0)
	.loc 5 2175 14
	lw	a5,-164(s0)
	lw	a4,120(a5)
	.loc 5 2175 28
	lw	a5,-164(s0)
	lw	a5,168(a5)
	.loc 5 2175 9
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 5 2176 5
	lw	a3,-84(s0)
	.loc 5 2176 178
	lw	a5,-84(s0)
	lw	a4,-32(s0)
	sub	a5,a4,a5
	.loc 5 2176 5
	mv	a6,a5
	mv	a5,a3
	lui	a4,%hi(.LC104)
	addi	a4,a4,%lo(.LC104)
	li	a3,4096
	addi	a3,a3,-1920
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-164(s0)
	call	mbedtls_debug_print_buf
	.loc 5 2179 25
	lw	a5,-28(s0)
	lbu	a4,10(a5)
	.loc 5 2179 8
	li	a5,5
	beq	a4,a5,.L334
	.loc 5 2180 25
	lw	a5,-28(s0)
	lbu	a4,10(a5)
	.loc 5 2179 68 discriminator 1
	li	a5,7
	beq	a4,a5,.L334
	.loc 5 2181 25
	lw	a5,-28(s0)
	lbu	a4,10(a5)
	.loc 5 2180 72
	li	a5,6
	beq	a4,a5,.L334
	.loc 5 2182 25
	lw	a5,-28(s0)
	lbu	a4,10(a5)
	.loc 5 2181 72
	li	a5,8
	bne	a4,a5,.L335
.L334:
	.loc 5 2183 13
	addi	a5,s0,-84
	lw	a2,-32(s0)
	mv	a1,a5
	lw	a0,-164(s0)
	call	ssl_parse_server_psk_hint
	mv	a5,a0
	.loc 5 2183 12 discriminator 1
	beq	a5,zero,.L335
	.loc 5 2184 13
	lui	a5,%hi(.LC102)
	addi	a4,a5,%lo(.LC102)
	li	a5,4096
	addi	a3,a5,-1912
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-164(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2185 13
	li	a2,50
	li	a1,2
	lw	a0,-164(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 2189 20
	li	a5,-28672
	addi	a5,a5,-768
	j	.L356
.L335:
	.loc 5 2196 25
	lw	a5,-28(s0)
	lbu	a4,10(a5)
	.loc 5 2196 8
	li	a5,5
	beq	a4,a5,.L336
	.loc 5 2197 25
	lw	a5,-28(s0)
	lbu	a4,10(a5)
	.loc 5 2196 68 discriminator 1
	li	a5,7
	beq	a4,a5,.L336
	.loc 5 2220 25
	lw	a5,-28(s0)
	lbu	a4,10(a5)
	.loc 5 2220 8
	li	a5,3
	beq	a4,a5,.L337
	.loc 5 2221 25
	lw	a5,-28(s0)
	lbu	a4,10(a5)
	.loc 5 2220 74 discriminator 1
	li	a5,8
	beq	a4,a5,.L337
	.loc 5 2222 25
	lw	a5,-28(s0)
	lbu	a4,10(a5)
	.loc 5 2221 74
	li	a5,4
	bne	a4,a5,.L338
.L337:
	.loc 5 2223 13
	addi	a5,s0,-84
	lw	a2,-32(s0)
	mv	a1,a5
	lw	a0,-164(s0)
	call	ssl_parse_server_ecdh_params
	mv	a5,a0
	.loc 5 2223 12 discriminator 1
	beq	a5,zero,.L336
	.loc 5 2224 13
	lui	a5,%hi(.LC102)
	addi	a4,a5,%lo(.LC102)
	li	a5,4096
	addi	a3,a5,-1872
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-164(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2225 13
	li	a2,47
	li	a1,2
	lw	a0,-164(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 2229 20
	li	a5,-24576
	addi	a5,a5,-1536
	j	.L356
.L338:
	.loc 5 2289 9
	lui	a5,%hi(.LC91)
	addi	a4,a5,%lo(.LC91)
	li	a5,4096
	addi	a3,a5,-1807
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-164(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2290 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L356
.L336:
	.loc 5 2294 9
	lw	a0,-28(s0)
	call	mbedtls_ssl_ciphersuite_uses_server_signature
	mv	a5,a0
	.loc 5 2294 8 discriminator 1
	beq	a5,zero,.L359
.LBB101:
	.loc 5 2298 27
	sb	zero,-89(s0)
	.loc 5 2299 27
	sb	zero,-90(s0)
	.loc 5 2300 36
	lw	a5,-164(s0)
	lw	s1,120(a5)
	.loc 5 2300 47
	lw	a0,-164(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a5,a0
	.loc 5 2300 24 discriminator 1
	add	a5,s1,a5
	sw	a5,-36(s0)
	.loc 5 2301 41
	lw	a4,-84(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	.loc 5 2301 16
	sw	a5,-40(s0)
	.loc 5 2302 15
	sw	zero,-24(s0)
	.loc 5 2310 16
	lw	a5,-164(s0)
	lw	a5,60(a5)
	.loc 5 2310 35
	lw	a5,96(a5)
	.loc 5 2310 12
	bne	a5,zero,.L340
	.loc 5 2312 13
	lui	a5,%hi(.LC91)
	addi	a4,a5,%lo(.LC91)
	li	a5,4096
	addi	a3,a5,-1784
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-164(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2313 20
	li	a5,-28672
	addi	a5,a5,1024
	j	.L356
.L340:
	.loc 5 2315 23
	lw	a5,-164(s0)
	lw	a5,60(a5)
	.loc 5 2315 42
	lw	a5,96(a5)
	.loc 5 2315 17
	addi	a5,a5,204
	sw	a5,-44(s0)
	.loc 5 2321 18
	lw	a5,-84(s0)
	li	a2,2
	lw	a1,-32(s0)
	mv	a0,a5
	call	mbedtls_ssl_chk_buf_ptr
	mv	a5,a0
	.loc 5 2321 17 discriminator 1
	beq	a5,zero,.L342
	.loc 5 2321 67 discriminator 2
	lui	a5,%hi(__func__.0)
	addi	a5,a5,%lo(__func__.0)
	lui	a4,%hi(.LC105)
	addi	a4,a4,%lo(.LC105)
	li	a3,4096
	addi	a3,a3,-1775
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-164(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2321 239 discriminator 3
	li	a5,-28672
	addi	a2,a5,-768
	li	a1,50
	lw	a0,-164(s0)
	call	mbedtls_ssl_pend_fatal_alert
	.loc 5 2321 294 discriminator 4
	li	a5,-28672
	addi	a5,a5,-768
	.loc 5 2321 294 is_stmt 0
	j	.L356
.L342:
	.loc 5 2322 86 is_stmt 1
	lw	a5,-84(s0)
	sw	a5,-60(s0)
.LBB102:
.LBB103:
	.loc 6 122 33
	lw	a5,-60(s0)
	sw	a5,-64(s0)
	.loc 6 123 7
	lw	a5,-64(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-66(s0)
	.loc 6 127 12
	lhu	a5,-66(s0)
.LBE103:
.LBE102:
	.loc 5 2322 68 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	sh	a5,-46(s0)
	.loc 5 2323 13
	addi	a3,s0,-89
	addi	a4,s0,-90
	lhu	a5,-46(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ssl_get_pk_type_and_md_alg_from_sig_alg
	mv	a5,a0
	.loc 5 2323 12 discriminator 1
	beq	a5,zero,.L344
	.loc 5 2325 14
	lhu	a5,-46(s0)
	mv	a1,a5
	lw	a0,-164(s0)
	call	mbedtls_ssl_sig_alg_is_offered
	mv	a5,a0
	.loc 5 2324 49
	bne	a5,zero,.L344
	.loc 5 2326 14
	lhu	a5,-46(s0)
	mv	a1,a5
	lw	a0,-164(s0)
	call	mbedtls_ssl_sig_alg_is_supported
	mv	a5,a0
	.loc 5 2325 59
	bne	a5,zero,.L344
	.loc 5 2327 13
	lui	a5,%hi(.LC102)
	addi	a4,a5,%lo(.LC102)
	li	a5,4096
	addi	a3,a5,-1769
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-164(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2329 13
	li	a2,47
	li	a1,2
	lw	a0,-164(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 2333 20
	li	a5,-24576
	addi	a5,a5,-1536
	j	.L356
.L344:
	.loc 5 2335 11
	lw	a5,-84(s0)
	addi	a5,a5,2
	sw	a5,-84(s0)
	.loc 5 2337 14
	lbu	a5,-90(s0)
	mv	a1,a5
	lw	a0,-44(s0)
	call	mbedtls_pk_can_do
	mv	a5,a0
	.loc 5 2337 12 discriminator 1
	bne	a5,zero,.L345
	.loc 5 2338 13
	lui	a5,%hi(.LC102)
	addi	a4,a5,%lo(.LC102)
	li	a5,4096
	addi	a3,a5,-1758
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-164(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2340 13
	li	a2,47
	li	a1,2
	lw	a0,-164(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 2344 20
	li	a5,-24576
	addi	a5,a5,-1536
	j	.L356
.L345:
	.loc 5 2351 21
	lw	a5,-32(s0)
	addi	a4,a5,-2
	.loc 5 2351 15
	lw	a5,-84(s0)
	.loc 5 2351 12
	bgeu	a4,a5,.L346
	.loc 5 2352 13
	lui	a5,%hi(.LC102)
	addi	a4,a5,%lo(.LC102)
	li	a5,4096
	addi	a3,a5,-1744
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-164(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2353 13
	li	a2,50
	li	a1,2
	lw	a0,-164(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 2357 20
	li	a5,-28672
	addi	a5,a5,-768
	j	.L356
.L346:
	.loc 5 2359 86
	lw	a5,-84(s0)
	sw	a5,-72(s0)
.LBB104:
.LBB105:
	.loc 6 122 33
	lw	a5,-72(s0)
	sw	a5,-76(s0)
	.loc 6 123 7
	lw	a5,-76(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-78(s0)
	.loc 6 127 12
	lhu	a5,-78(s0)
.LBE105:
.LBE104:
	.loc 5 2359 68 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 2359 17 discriminator 2
	sw	a5,-52(s0)
	.loc 5 2360 11
	lw	a5,-84(s0)
	addi	a5,a5,2
	sw	a5,-84(s0)
	.loc 5 2362 22
	lw	a5,-52(s0)
	neg	a5,a5
	lw	a4,-32(s0)
	add	a4,a4,a5
	.loc 5 2362 15
	lw	a5,-84(s0)
	.loc 5 2362 12
	beq	a4,a5,.L348
	.loc 5 2363 13
	lui	a5,%hi(.LC102)
	addi	a4,a5,%lo(.LC102)
	li	a5,4096
	addi	a3,a5,-1733
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-164(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2364 13
	li	a2,50
	li	a1,2
	lw	a0,-164(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 2368 20
	li	a5,-28672
	addi	a5,a5,-768
	j	.L356
.L348:
	.loc 5 2371 9
	lw	a5,-84(s0)
	lw	a6,-52(s0)
	lui	a4,%hi(.LC106)
	addi	a4,a4,%lo(.LC106)
	li	a3,4096
	addi	a3,a3,-1725
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-164(s0)
	call	mbedtls_debug_print_buf
	.loc 5 2376 20
	lbu	a5,-89(s0)
	.loc 5 2376 12
	beq	a5,zero,.L349
	.loc 5 2377 19
	lbu	a5,-89(s0)
	addi	a2,s0,-88
	addi	a1,s0,-156
	lw	a4,-40(s0)
	lw	a3,-36(s0)
	lw	a0,-164(s0)
	call	mbedtls_ssl_get_key_exchange_md_tls1_2
	sw	a0,-20(s0)
	.loc 5 2380 16
	lw	a5,-20(s0)
	beq	a5,zero,.L350
	.loc 5 2381 24
	lw	a5,-20(s0)
	j	.L356
.L349:
	.loc 5 2384 13
	lui	a5,%hi(.LC91)
	addi	a4,a5,%lo(.LC91)
	li	a5,4096
	addi	a3,a5,-1712
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-164(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2385 20
	li	a5,-28672
	addi	a5,a5,1024
	j	.L356
.L350:
	.loc 5 2388 9
	lw	a4,-88(s0)
	addi	a5,s0,-156
	mv	a6,a4
	lui	a4,%hi(.LC107)
	addi	a4,a4,%lo(.LC107)
	li	a3,4096
	addi	a3,a3,-1708
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-164(s0)
	call	mbedtls_debug_print_buf
	.loc 5 2393 14
	lbu	a5,-90(s0)
	mv	a1,a5
	lw	a0,-44(s0)
	call	mbedtls_pk_can_do
	mv	a5,a0
	.loc 5 2393 12 discriminator 1
	bne	a5,zero,.L351
	.loc 5 2394 13
	lui	a5,%hi(.LC102)
	addi	a4,a5,%lo(.LC102)
	li	a5,4096
	addi	a3,a5,-1702
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-164(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2395 13
	li	a2,40
	li	a1,2
	lw	a0,-164(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 2399 20
	li	a5,-28672
	addi	a5,a5,768
	j	.L356
.L351:
	.loc 5 2403 16
	lw	a5,-164(s0)
	lw	a5,64(a5)
	.loc 5 2403 27
	lbu	a5,11(a5)
	.loc 5 2403 12
	beq	a5,zero,.L352
	.loc 5 2404 26
	lw	a5,-164(s0)
	lw	a5,64(a5)
	.loc 5 2404 20
	addi	a5,a5,420
	sw	a5,-24(s0)
.L352:
	.loc 5 2424 15
	lbu	a1,-89(s0)
	lw	a3,-88(s0)
	lw	a4,-84(s0)
	addi	a2,s0,-156
	lw	a6,-24(s0)
	lw	a5,-52(s0)
	lw	a0,-44(s0)
	call	mbedtls_pk_verify_restartable
	sw	a0,-20(s0)
	.loc 5 2427 12
	lw	a5,-20(s0)
	beq	a5,zero,.L333
.LBB106:
	.loc 5 2428 17
	li	a5,1
	sw	a5,-56(s0)
	.loc 5 2430 35
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,-1280
	add	a5,a4,a5
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 5 2430 28
	sw	a5,-56(s0)
	.loc 5 2432 16
	lw	a5,-56(s0)
	beq	a5,zero,.L354
	.loc 5 2433 17
	li	a2,51
	li	a1,2
	lw	a0,-164(s0)
	call	mbedtls_ssl_send_alert_message
.L354:
	.loc 5 2438 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC108)
	addi	a4,a4,%lo(.LC108)
	li	a3,4096
	addi	a3,a3,-1658
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-164(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2440 16
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,1280
	bne	a4,a5,.L355
	.loc 5 2441 21
	li	a5,-28672
	sw	a5,-20(s0)
.L355:
	.loc 5 2444 20
	lw	a5,-20(s0)
	j	.L356
.L359:
.LBE106:
.LBE101:
	.loc 5 2456 1
	nop
.L333:
	.loc 5 2457 5
	lw	a0,-164(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 5 2459 5
	lui	a5,%hi(.LC109)
	addi	a4,a5,%lo(.LC109)
	li	a5,4096
	addi	a3,a5,-1637
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-164(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2461 12
	li	a5,0
.L356:
	.loc 5 2462 1
	mv	a0,a5
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
.LFE166:
	.size	ssl_parse_server_key_exchange, .-ssl_parse_server_key_exchange
	.section	.rodata
	.align	2
.LC110:
	.string	"=> parse certificate request"
	.align	2
.LC111:
	.string	"<= skip parse certificate request"
	.align	2
.LC112:
	.string	"bad certificate request message"
	.align	2
.LC113:
	.string	"got %s certificate request"
	.align	2
.LC114:
	.string	"Supported Signature Algorithm found: %02x %02x"
	.align	2
.LC115:
	.string	"DN hint: %.*s"
	.align	2
.LC116:
	.string	"<= parse certificate request"
	.section	.text.ssl_parse_certificate_request,"ax",@progbits
	.align	1
	.type	ssl_parse_certificate_request, @function
ssl_parse_certificate_request:
.LFB167:
	.loc 5 2485 1
	.cfi_startproc
	addi	sp,sp,-416
	.cfi_def_cfa_offset 416
	sw	ra,412(sp)
	sw	s0,408(sp)
	sw	s1,404(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,416
	.cfi_def_cfa 8, 0
	sw	a0,-404(s0)
	.loc 5 2486 9
	li	a5,-110
	sw	a5,-28(s0)
	.loc 5 2488 12
	sw	zero,-32(s0)
	.loc 5 2489 12
	sw	zero,-36(s0)
	.loc 5 2489 31
	sw	zero,-40(s0)
	.loc 5 2491 12
	lw	a5,-404(s0)
	lw	a5,64(a5)
	.loc 5 2490 38
	lw	a5,24(a5)
	sw	a5,-44(s0)
	.loc 5 2498 5
	lui	a5,%hi(.LC110)
	addi	a4,a5,%lo(.LC110)
	li	a5,4096
	addi	a3,a5,-1598
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-404(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2500 10
	lw	a0,-44(s0)
	call	mbedtls_ssl_ciphersuite_cert_req_allowed
	mv	a5,a0
	.loc 5 2500 8 discriminator 1
	bne	a5,zero,.L361
	.loc 5 2501 9
	lui	a5,%hi(.LC111)
	addi	a4,a5,%lo(.LC111)
	li	a5,4096
	addi	a3,a5,-1595
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-404(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2502 9
	lw	a0,-404(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 5 2503 16
	li	a5,0
	j	.L362
.L361:
	.loc 5 2506 16
	li	a1,1
	lw	a0,-404(s0)
	call	mbedtls_ssl_read_record
	sw	a0,-28(s0)
	.loc 5 2506 8 discriminator 1
	lw	a5,-28(s0)
	beq	a5,zero,.L363
	.loc 5 2507 9
	lw	a5,-28(s0)
	lui	a4,%hi(.LC56)
	addi	a4,a4,%lo(.LC56)
	li	a3,4096
	addi	a3,a3,-1589
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-404(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2508 16
	lw	a5,-28(s0)
	j	.L362
.L363:
	.loc 5 2511 12
	lw	a5,-404(s0)
	lw	a4,128(a5)
	.loc 5 2511 8
	li	a5,22
	beq	a4,a5,.L364
	.loc 5 2512 9
	lui	a5,%hi(.LC112)
	addi	a4,a5,%lo(.LC112)
	li	a5,4096
	addi	a3,a5,-1584
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-404(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2513 9
	li	a2,10
	li	a1,2
	lw	a0,-404(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 2517 16
	li	a5,-28672
	addi	a5,a5,-1792
	j	.L362
.L364:
	.loc 5 2520 5
	lw	a0,-404(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 5 2522 13
	lw	a5,-404(s0)
	lw	a5,120(a5)
	.loc 5 2522 21
	lbu	a5,0(a5)
	.loc 5 2522 25
	addi	a5,a5,-13
	seqz	a5,a5
	andi	a4,a5,0xff
	.loc 5 2521 8
	lw	a5,-404(s0)
	lw	a5,64(a5)
	.loc 5 2521 33
	sb	a4,732(a5)
	.loc 5 2524 171
	lw	a5,-404(s0)
	lw	a5,64(a5)
	.loc 5 2524 182
	lbu	a5,732(a5)
	.loc 5 2524 5
	beq	a5,zero,.L365
	.loc 5 2524 5 is_stmt 0 discriminator 1
	lui	a5,%hi(.LC69)
	addi	a5,a5,%lo(.LC69)
	j	.L366
.L365:
	.loc 5 2524 5 discriminator 2
	lui	a5,%hi(.LC70)
	addi	a5,a5,%lo(.LC70)
.L366:
	.loc 5 2524 5 discriminator 4
	lui	a4,%hi(.LC113)
	addi	a4,a4,%lo(.LC113)
	li	a3,4096
	addi	a3,a3,-1572
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-404(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2527 12 is_stmt 1
	lw	a5,-404(s0)
	lw	a5,64(a5)
	.loc 5 2527 23
	lbu	a5,732(a5)
	.loc 5 2527 8
	bne	a5,zero,.L367
	.loc 5 2529 35
	lw	a5,-404(s0)
	li	a4,1
	sw	a4,176(a5)
	.loc 5 2530 9
	j	.L368
.L367:
	.loc 5 2557 9
	lw	a5,-404(s0)
	lw	a5,120(a5)
	sw	a5,-48(s0)
	.loc 5 2560 12
	lw	a5,-404(s0)
	lw	s1,168(a5)
	.loc 5 2560 26
	lw	a0,-404(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a5,a0
	.loc 5 2560 8 discriminator 1
	bgtu	s1,a5,.L369
	.loc 5 2561 9
	lui	a5,%hi(.LC112)
	addi	a4,a5,%lo(.LC112)
	li	a5,4096
	addi	a3,a5,-1535
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-404(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2562 9
	li	a2,50
	li	a1,2
	lw	a0,-404(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 2564 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L362
.L369:
	.loc 5 2566 25
	lw	a0,-404(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a4,a0
	.loc 5 2566 24 discriminator 1
	lw	a5,-48(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	.loc 5 2566 19 discriminator 1
	sw	a5,-36(s0)
	.loc 5 2567 7
	lw	a5,-36(s0)
	sw	a5,-32(s0)
	.loc 5 2579 12
	lw	a5,-404(s0)
	lw	s1,168(a5)
	.loc 5 2579 26
	lw	a0,-404(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a4,a0
	.loc 5 2579 58 discriminator 1
	lw	a5,-32(s0)
	add	a5,a4,a5
	addi	a5,a5,2
	.loc 5 2579 8 discriminator 1
	bgtu	s1,a5,.L370
	.loc 5 2580 9
	lui	a5,%hi(.LC112)
	addi	a4,a5,%lo(.LC112)
	li	a5,4096
	addi	a3,a5,-1516
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-404(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2581 9
	li	a2,50
	li	a1,2
	lw	a0,-404(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 2583 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L362
.L370:
	.loc 5 2587 160
	lw	a0,-404(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a4,a0
	.loc 5 2587 192 discriminator 1
	lw	a5,-32(s0)
	add	a5,a4,a5
	addi	a5,a5,1
	.loc 5 2587 157 discriminator 1
	lw	a4,-48(s0)
	add	a5,a4,a5
	sw	a5,-68(s0)
.LBB107:
.LBB108:
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
.LBE108:
.LBE107:
	.loc 5 2587 104 discriminator 2
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 2587 17 discriminator 3
	sw	a5,-52(s0)
	.loc 5 2601 12
	lw	a5,-404(s0)
	lw	s1,168(a5)
	.loc 5 2601 26
	lw	a0,-404(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a4,a0
	.loc 5 2601 58 discriminator 1
	lw	a5,-32(s0)
	add	a4,a4,a5
	.loc 5 2601 62 discriminator 1
	lw	a5,-52(s0)
	add	a5,a4,a5
	addi	a5,a5,3
	.loc 5 2601 8 discriminator 1
	bgtu	s1,a5,.L372
	.loc 5 2602 9
	lui	a5,%hi(.LC112)
	addi	a4,a5,%lo(.LC112)
	li	a5,4096
	addi	a3,a5,-1494
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-404(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2603 9
	li	a2,50
	li	a1,2
	lw	a0,-404(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 2607 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L362
.L372:
	.loc 5 2611 21
	lw	a0,-404(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a4,a0
	.loc 5 2611 53 discriminator 1
	lw	a5,-32(s0)
	add	a5,a4,a5
	addi	a5,a5,3
	.loc 5 2611 13 discriminator 1
	lw	a4,-48(s0)
	add	a5,a4,a5
	sw	a5,-56(s0)
.LBB109:
	.loc 5 2612 17
	sw	zero,-20(s0)
	.loc 5 2612 5
	j	.L373
.L374:
	.loc 5 2613 199
	lw	a4,-56(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 5 2613 9
	mv	a3,a5
	.loc 5 2613 211
	lw	a5,-20(s0)
	addi	a5,a5,1
	lw	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 5 2613 9
	mv	a6,a5
	mv	a5,a3
	lui	a4,%hi(.LC114)
	addi	a4,a4,%lo(.LC114)
	li	a3,4096
	addi	a3,a3,-1483
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-404(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2612 43 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
.L373:
	.loc 5 2612 26 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	bltu	a4,a5,.L374
.LBE109:
	.loc 5 2619 7
	lw	a4,-52(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	addi	a5,a5,2
	sw	a5,-32(s0)
	.loc 5 2622 155
	lw	a0,-404(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a4,a0
	.loc 5 2622 187 discriminator 1
	lw	a5,-32(s0)
	add	a5,a4,a5
	addi	a5,a5,1
	.loc 5 2622 152 discriminator 1
	lw	a4,-48(s0)
	add	a5,a4,a5
	sw	a5,-80(s0)
.LBB110:
.LBB111:
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
.LBE111:
.LBE110:
	.loc 5 2622 99 discriminator 2
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 2622 12 discriminator 3
	sw	a5,-40(s0)
	.loc 5 2624 7
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 5 2625 12
	lw	a5,-404(s0)
	lw	s1,168(a5)
	.loc 5 2625 26
	lw	a0,-404(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a4,a0
	.loc 5 2625 58 discriminator 1
	lw	a5,-32(s0)
	add	a5,a4,a5
	addi	a5,a5,3
	.loc 5 2625 8 discriminator 1
	beq	s1,a5,.L376
	.loc 5 2626 9
	lui	a5,%hi(.LC112)
	addi	a4,a5,%lo(.LC112)
	li	a5,4096
	addi	a3,a5,-1470
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-404(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2627 9
	li	a2,50
	li	a1,2
	lw	a0,-404(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 2629 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L362
.L376:
	.loc 5 2633 16
	lw	a0,-404(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a4,a0
	.loc 5 2633 48 discriminator 1
	lw	a5,-32(s0)
	add	a4,a4,a5
	.loc 5 2633 52 discriminator 1
	lw	a5,-40(s0)
	sub	a5,a4,a5
	addi	a5,a5,3
	.loc 5 2633 8 discriminator 1
	lw	a4,-48(s0)
	add	a5,a4,a5
	sw	a5,-60(s0)
.LBB112:
	.loc 5 2634 17
	sw	zero,-24(s0)
	.loc 5 2634 24
	sw	zero,-64(s0)
	.loc 5 2634 5
	j	.L377
.L381:
.LBB113:
	.loc 5 2635 35
	lw	a5,-24(s0)
	addi	a5,a5,2
	lw	a4,-60(s0)
	add	a5,a4,a5
	.loc 5 2635 24
	sw	a5,-104(s0)
	.loc 5 2639 9
	addi	a5,s0,-396
	li	a2,32
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 5 2640 129
	lw	a4,-60(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-92(s0)
.LBB114:
.LBB115:
	.loc 6 122 33
	lw	a5,-92(s0)
	sw	a5,-96(s0)
	.loc 6 123 7
	lw	a5,-96(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-98(s0)
	.loc 6 127 12
	lhu	a5,-98(s0)
.LBE115:
.LBE114:
	.loc 5 2640 73 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 2640 17 discriminator 2
	sw	a5,-64(s0)
	.loc 5 2641 30
	lw	a4,-40(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	.loc 5 2641 34
	addi	a5,a5,-2
	.loc 5 2641 12
	lw	a4,-64(s0)
	bgtu	a4,a5,.L379
	.loc 5 2642 13
	lw	a4,-104(s0)
	.loc 5 2642 40
	lw	a5,-64(s0)
	add	a4,a4,a5
	.loc 5 2642 13
	addi	a2,s0,-108
	addi	a5,s0,-104
	li	a3,48
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_asn1_get_tag
	mv	a5,a0
	.loc 5 2641 38 discriminator 1
	bne	a5,zero,.L379
	.loc 5 2644 13
	lw	a4,-104(s0)
	lw	a5,-108(s0)
	.loc 5 2644 41
	add	a4,a4,a5
	.loc 5 2644 13
	addi	a3,s0,-396
	addi	a5,s0,-104
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_x509_get_name
	mv	a5,a0
	.loc 5 2643 52
	beq	a5,zero,.L380
.L379:
	.loc 5 2645 13
	lui	a5,%hi(.LC112)
	addi	a4,a5,%lo(.LC112)
	li	a5,4096
	addi	a3,a5,-1451
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-404(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2646 13
	li	a2,50
	li	a1,2
	lw	a0,-404(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 2650 20
	li	a5,-28672
	addi	a5,a5,-768
	j	.L362
.L380:
	.loc 5 2652 9
	addi	a4,s0,-396
	addi	a5,s0,-364
	mv	a2,a4
	li	a1,256
	mv	a0,a5
	call	mbedtls_x509_dn_gets
	mv	a4,a0
	.loc 5 2652 9 is_stmt 0 discriminator 1
	addi	a5,s0,-364
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC115)
	addi	a4,a4,%lo(.LC115)
	li	a3,4096
	addi	a3,a3,-1444
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-404(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2655 55 is_stmt 1
	lw	a5,-372(s0)
	.loc 5 2655 9
	mv	a0,a5
	call	mbedtls_asn1_free_named_data_list_shallow
.LBE113:
	.loc 5 2634 51 discriminator 2
	lw	a4,-64(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	addi	a5,a5,2
	sw	a5,-24(s0)
.L377:
	.loc 5 2634 39 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	bltu	a4,a5,.L381
.LBE112:
	.loc 5 2659 1
	nop
.L368:
	.loc 5 2660 5
	lui	a5,%hi(.LC116)
	addi	a4,a5,%lo(.LC116)
	li	a5,4096
	addi	a3,a5,-1436
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-404(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2662 12
	li	a5,0
.L362:
	.loc 5 2663 1
	mv	a0,a5
	lw	ra,412(sp)
	.cfi_restore 1
	lw	s0,408(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 416
	lw	s1,404(sp)
	.cfi_restore 9
	addi	sp,sp,416
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE167:
	.size	ssl_parse_certificate_request, .-ssl_parse_certificate_request
	.section	.rodata
	.align	2
.LC117:
	.string	"=> parse server hello done"
	.align	2
.LC118:
	.string	"bad server hello done message"
	.align	2
.LC119:
	.string	"<= parse server hello done"
	.section	.text.ssl_parse_server_hello_done,"ax",@progbits
	.align	1
	.type	ssl_parse_server_hello_done, @function
ssl_parse_server_hello_done:
.LFB168:
	.loc 5 2668 1
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
	.loc 5 2669 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 2671 5
	lui	a5,%hi(.LC117)
	addi	a4,a5,%lo(.LC117)
	li	a5,4096
	addi	a3,a5,-1425
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2673 16
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_ssl_read_record
	sw	a0,-20(s0)
	.loc 5 2673 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L383
	.loc 5 2674 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC56)
	addi	a4,a4,%lo(.LC56)
	li	a3,4096
	addi	a3,a3,-1422
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2675 16
	lw	a5,-20(s0)
	j	.L384
.L383:
	.loc 5 2678 12
	lw	a5,-36(s0)
	lw	a4,128(a5)
	.loc 5 2678 8
	li	a5,22
	beq	a4,a5,.L385
	.loc 5 2679 9
	lui	a5,%hi(.LC118)
	addi	a4,a5,%lo(.LC118)
	li	a5,4096
	addi	a3,a5,-1417
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2680 16
	li	a5,-28672
	addi	a5,a5,-1792
	j	.L384
.L385:
	.loc 5 2683 12
	lw	a5,-36(s0)
	lw	s1,168(a5)
	.loc 5 2683 26
	lw	a0,-36(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a5,a0
	.loc 5 2683 8 discriminator 1
	bne	s1,a5,.L386
	.loc 5 2684 12
	lw	a5,-36(s0)
	lw	a5,120(a5)
	.loc 5 2684 20
	lbu	a4,0(a5)
	.loc 5 2683 54 discriminator 2
	li	a5,14
	beq	a4,a5,.L387
.L386:
	.loc 5 2685 9
	lui	a5,%hi(.LC118)
	addi	a4,a5,%lo(.LC118)
	li	a5,4096
	addi	a3,a5,-1411
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2686 9
	li	a2,50
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 2688 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L384
.L387:
	.loc 5 2691 5
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 5 2694 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 2694 18
	lbu	a4,5(a5)
	.loc 5 2694 8
	li	a5,1
	bne	a4,a5,.L388
	.loc 5 2695 9
	lw	a0,-36(s0)
	call	mbedtls_ssl_recv_flight_completed
.L388:
	.loc 5 2699 5
	lui	a5,%hi(.LC119)
	addi	a4,a5,%lo(.LC119)
	li	a5,4096
	addi	a3,a5,-1397
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2701 12
	li	a5,0
.L384:
	.loc 5 2702 1
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
.LFE168:
	.size	ssl_parse_server_hello_done, .-ssl_parse_server_hello_done
	.section	.rodata
	.align	2
.LC120:
	.string	"=> write client key exchange"
	.align	2
.LC121:
	.string	"mbedtls_ecdh_make_public"
	.align	2
.LC122:
	.string	"mbedtls_ecdh_calc_secret"
	.align	2
.LC123:
	.string	"psk identity too long or SSL buffer too short"
	.align	2
.LC124:
	.string	"mbedtls_ssl_psk_derive_premaster"
	.align	2
.LC125:
	.string	"mbedtls_ssl_write_handshake_msg"
	.align	2
.LC126:
	.string	"<= write client key exchange"
	.section	.text.ssl_write_client_key_exchange,"ax",@progbits
	.align	1
	.type	ssl_write_client_key_exchange, @function
ssl_write_client_key_exchange:
.LFB169:
	.loc 5 2706 1
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
	.loc 5 2707 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 2712 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2711 38
	lw	a5,24(a5)
	sw	a5,-28(s0)
	.loc 5 2714 5
	lui	a5,%hi(.LC120)
	addi	a4,a5,%lo(.LC120)
	li	a5,4096
	addi	a3,a5,-1382
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2754 25
	lw	a5,-28(s0)
	lbu	a4,10(a5)
	.loc 5 2754 8
	li	a5,3
	beq	a4,a5,.L390
	.loc 5 2755 25
	lw	a5,-28(s0)
	lbu	a4,10(a5)
	.loc 5 2754 74 discriminator 1
	li	a5,4
	beq	a4,a5,.L390
	.loc 5 2756 25
	lw	a5,-28(s0)
	lbu	a4,10(a5)
	.loc 5 2755 76
	li	a5,9
	beq	a4,a5,.L390
	.loc 5 2757 25
	lw	a5,-28(s0)
	lbu	a4,10(a5)
	.loc 5 2756 73
	li	a5,10
	bne	a4,a5,.L391
.L390:
	.loc 5 2834 20
	li	a5,4
	sw	a5,-24(s0)
	.loc 5 2837 16
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2837 27
	lbu	a5,11(a5)
	.loc 5 2837 12
	beq	a5,zero,.L392
	.loc 5 2838 20
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2838 31
	lbu	a4,12(a5)
	.loc 5 2838 16
	li	a5,3
	beq	a4,a5,.L411
	.loc 5 2842 45
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2842 13
	addi	a5,a5,164
	mv	a0,a5
	call	mbedtls_ecdh_enable_restart
.L392:
	.loc 5 2846 44
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2846 15
	addi	a0,a5,164
	.loc 5 2848 44
	lw	a5,-36(s0)
	lw	a4,216(a5)
	.loc 5 2846 15
	lw	a5,-24(s0)
	add	a2,a4,a5
	.loc 5 2849 43
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 2849 49
	lw	a4,32(a5)
	.loc 5 2849 61
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 2849 67
	lw	a5,36(a5)
	.loc 5 2846 15
	addi	a1,s0,-32
	li	a3,1000
	call	mbedtls_ecdh_make_public
	sw	a0,-20(s0)
	.loc 5 2850 12
	lw	a5,-20(s0)
	beq	a5,zero,.L395
	.loc 5 2851 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC121)
	addi	a4,a4,%lo(.LC121)
	li	a3,4096
	addi	a3,a3,-1245
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2853 16
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,1280
	bne	a4,a5,.L396
	.loc 5 2854 21
	li	a5,-28672
	sw	a5,-20(s0)
.L396:
	.loc 5 2857 20
	lw	a5,-20(s0)
	j	.L410
.L395:
	.loc 5 2860 148
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2860 144
	addi	a4,a5,164
	.loc 5 2860 9
	li	a5,0
	li	a3,4096
	addi	a3,a3,-1236
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_printf_ecdh
	.loc 5 2864 16
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2864 27
	lbu	a5,11(a5)
	.loc 5 2864 12
	beq	a5,zero,.L412
	.loc 5 2865 16
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2865 36
	lw	a4,-32(s0)
	sw	a4,20(a5)
	.loc 5 2866 16
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2866 40
	li	a4,3
	sb	a4,12(a5)
	j	.L394
.L411:
	.loc 5 2839 17
	nop
	j	.L394
.L412:
	.loc 5 2869 1
	nop
.L394:
	.loc 5 2870 16
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2870 27
	lbu	a5,11(a5)
	.loc 5 2870 12
	beq	a5,zero,.L398
	.loc 5 2871 30
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2871 41
	lw	a5,20(a5)
	.loc 5 2871 25
	sw	a5,-32(s0)
.L398:
	.loc 5 2874 49
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2874 20
	addi	a0,a5,164
	.loc 5 2875 49
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2874 20
	addi	a1,a5,976
	.loc 5 2876 48
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2876 59
	addi	a2,a5,872
	.loc 5 2878 48
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 2878 54
	lw	a4,32(a5)
	.loc 5 2878 66
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 2878 72
	lw	a5,36(a5)
	.loc 5 2874 20
	li	a3,1024
	call	mbedtls_ecdh_calc_secret
	sw	a0,-20(s0)
	.loc 5 2874 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L399
	.loc 5 2879 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC122)
	addi	a4,a4,%lo(.LC122)
	li	a3,4096
	addi	a3,a3,-1217
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2881 16
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,1280
	bne	a4,a5,.L400
	.loc 5 2882 21
	li	a5,-28672
	sw	a5,-20(s0)
.L400:
	.loc 5 2885 20
	lw	a5,-20(s0)
	j	.L410
.L399:
	.loc 5 2888 148
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2888 144
	addi	a4,a5,164
	.loc 5 2888 9
	li	a5,2
	li	a3,4096
	addi	a3,a3,-1208
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_printf_ecdh
	j	.L401
.L391:
	.loc 5 3023 9
	lw	a0,-28(s0)
	call	mbedtls_ssl_ciphersuite_uses_psk
	mv	a5,a0
	.loc 5 3023 8 discriminator 1
	beq	a5,zero,.L402
	.loc 5 3027 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	mbedtls_ssl_conf_has_static_psk
	mv	a5,a0
	.loc 5 3027 12 discriminator 1
	bne	a5,zero,.L403
	.loc 5 3031 20
	li	a5,-28672
	addi	a5,a5,1024
	j	.L410
.L403:
	.loc 5 3034 20
	li	a5,4
	sw	a5,-24(s0)
	.loc 5 3035 26
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 3035 32
	lw	a5,184(a5)
	.loc 5 3035 21
	sw	a5,-32(s0)
	.loc 5 3037 28
	lw	a4,-32(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	addi	a4,a5,2
	.loc 5 3037 12
	li	a5,16384
	bleu	a4,a5,.L404
	.loc 5 3038 13
	lui	a5,%hi(.LC123)
	addi	a4,a5,%lo(.LC123)
	li	a5,4096
	addi	a3,a5,-1058
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3040 20
	li	a5,-28672
	addi	a5,a5,1536
	j	.L410
.L404:
	.loc 5 3043 65
	lw	a5,-32(s0)
	srli	a2,a5,8
	.loc 5 3043 12
	lw	a5,-36(s0)
	lw	a4,216(a5)
	.loc 5 3043 32
	lw	a5,-24(s0)
	addi	a3,a5,1
	sw	a3,-24(s0)
	.loc 5 3043 21
	add	a5,a4,a5
	.loc 5 3043 39
	andi	a4,a2,0xff
	.loc 5 3043 36
	sb	a4,0(a5)
	.loc 5 3044 39
	lw	a2,-32(s0)
	.loc 5 3044 12
	lw	a5,-36(s0)
	lw	a4,216(a5)
	.loc 5 3044 32
	lw	a5,-24(s0)
	addi	a3,a5,1
	sw	a3,-24(s0)
	.loc 5 3044 21
	add	a5,a4,a5
	.loc 5 3044 39
	andi	a4,a2,0xff
	.loc 5 3044 36
	sb	a4,0(a5)
	.loc 5 3046 19
	lw	a5,-36(s0)
	lw	a4,216(a5)
	.loc 5 3046 29
	lw	a5,-24(s0)
	add	a4,a4,a5
	.loc 5 3047 19
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 3047 25
	lw	a3,180(a5)
	.loc 5 3048 19
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 3048 25
	lw	a5,184(a5)
	.loc 5 3046 9
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcpy
	.loc 5 3049 26
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 3049 32
	lw	a5,184(a5)
	.loc 5 3049 20
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 5 3052 29
	lw	a5,-28(s0)
	lbu	a4,10(a5)
	.loc 5 3052 12
	li	a5,5
	bne	a4,a5,.L405
	.loc 5 3053 25
	sw	zero,-32(s0)
	j	.L406
.L405:
	.loc 5 3111 29
	lw	a5,-28(s0)
	lbu	a4,10(a5)
	.loc 5 3111 12
	li	a5,8
	bne	a4,a5,.L407
	.loc 5 3115 48
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 3115 19
	addi	a0,a5,164
	.loc 5 3117 48
	lw	a5,-36(s0)
	lw	a4,216(a5)
	.loc 5 3115 19
	lw	a5,-24(s0)
	add	a2,a4,a5
	li	a4,16384
	lw	a5,-24(s0)
	sub	a3,a4,a5
	.loc 5 3119 47
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 3119 53
	lw	a4,32(a5)
	.loc 5 3119 65
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 3119 71
	lw	a5,36(a5)
	.loc 5 3115 19
	addi	a1,s0,-32
	call	mbedtls_ecdh_make_public
	sw	a0,-20(s0)
	.loc 5 3120 16
	lw	a5,-20(s0)
	beq	a5,zero,.L408
	.loc 5 3121 17
	lw	a5,-20(s0)
	lui	a4,%hi(.LC121)
	addi	a4,a4,%lo(.LC121)
	li	a3,4096
	addi	a3,a3,-975
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3122 24
	lw	a5,-20(s0)
	j	.L410
.L408:
	.loc 5 3125 152
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 3125 148
	addi	a4,a5,164
	.loc 5 3125 13
	li	a5,0
	li	a3,4096
	addi	a3,a3,-971
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_printf_ecdh
	j	.L406
.L407:
	.loc 5 3130 13
	lui	a5,%hi(.LC91)
	addi	a4,a5,%lo(.LC91)
	li	a5,4096
	addi	a3,a5,-966
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3131 20
	li	a5,-28672
	addi	a5,a5,1024
	j	.L410
.L406:
	.loc 5 3136 99
	lw	a5,-28(s0)
	lbu	a5,10(a5)
	.loc 5 3135 20
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_ssl_psk_derive_premaster
	sw	a0,-20(s0)
	.loc 5 3135 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L401
	.loc 5 3138 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC124)
	addi	a4,a4,%lo(.LC124)
	li	a3,4096
	addi	a3,a3,-958
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3140 20
	lw	a5,-20(s0)
	j	.L410
.L402:
	.loc 5 3194 9
	lui	a5,%hi(.LC91)
	addi	a4,a5,%lo(.LC91)
	li	a5,4096
	addi	a3,a5,-902
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3195 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L410
.L401:
	.loc 5 3198 34
	lw	a4,-32(s0)
	lw	a5,-24(s0)
	add	a4,a4,a5
	.loc 5 3198 21
	lw	a5,-36(s0)
	sw	a4,224(a5)
	.loc 5 3199 22
	lw	a5,-36(s0)
	li	a4,22
	sw	a4,220(a5)
	.loc 5 3200 8
	lw	a5,-36(s0)
	lw	a5,216(a5)
	.loc 5 3200 21
	li	a4,16
	sb	a4,0(a5)
	.loc 5 3202 5
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 5 3204 16
	lw	a0,-36(s0)
	call	mbedtls_ssl_write_handshake_msg
	sw	a0,-20(s0)
	.loc 5 3204 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L409
	.loc 5 3205 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC125)
	addi	a4,a4,%lo(.LC125)
	li	a3,4096
	addi	a3,a3,-891
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3206 16
	lw	a5,-20(s0)
	j	.L410
.L409:
	.loc 5 3209 5
	lui	a5,%hi(.LC126)
	addi	a4,a5,%lo(.LC126)
	li	a5,4096
	addi	a3,a5,-887
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3211 12
	li	a5,0
.L410:
	.loc 5 3212 1
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
.LFE169:
	.size	ssl_write_client_key_exchange, .-ssl_write_client_key_exchange
	.section	.rodata
	.align	2
.LC127:
	.string	"=> write certificate verify"
	.align	2
.LC128:
	.string	"<= skip write certificate verify"
	.align	2
.LC129:
	.string	"got no private key for certificate"
	.align	2
.LC130:
	.string	"calc_verify"
	.align	2
.LC131:
	.string	"mbedtls_pk_sign"
	.align	2
.LC132:
	.string	"<= write certificate verify"
	.section	.text.ssl_write_certificate_verify,"ax",@progbits
	.align	1
	.type	ssl_write_certificate_verify, @function
ssl_write_certificate_verify:
.LFB170:
	.loc 5 3241 1
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	ra,140(sp)
	sw	s0,136(sp)
	sw	s1,132(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	sw	a0,-116(s0)
	.loc 5 3242 9
	li	a5,-28672
	addi	a5,a5,-128
	sw	a5,-20(s0)
	.loc 5 3244 12
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 3243 38
	lw	a5,24(a5)
	sw	a5,-32(s0)
	.loc 5 3245 12
	sw	zero,-60(s0)
	.loc 5 3245 19
	sw	zero,-36(s0)
	.loc 5 3247 20
	addi	a5,s0,-108
	sw	a5,-40(s0)
	.loc 5 3248 23
	sb	zero,-21(s0)
	.loc 5 3250 11
	sw	zero,-28(s0)
	.loc 5 3252 29
	lw	a5,-116(s0)
	lw	a5,232(a5)
	.loc 5 3252 58
	lw	a4,-116(s0)
	lw	a3,216(a4)
	.loc 5 3252 73
	lw	a4,-116(s0)
	lw	a4,192(a4)
	.loc 5 3252 68
	sub	a4,a3,a4
	.loc 5 3252 12
	sub	a5,a5,a4
	sw	a5,-44(s0)
	.loc 5 3257 5
	lui	a5,%hi(.LC127)
	addi	a4,a5,%lo(.LC127)
	li	a5,4096
	addi	a3,a5,-839
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3260 12
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 3260 23
	lbu	a5,11(a5)
	.loc 5 3260 8
	beq	a5,zero,.L414
	.loc 5 3261 12
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 3261 23
	lbu	a4,12(a5)
	.loc 5 3260 38 discriminator 1
	li	a5,4
	beq	a4,a5,.L430
.L414:
	.loc 5 3266 16
	lw	a0,-116(s0)
	call	mbedtls_ssl_derive_keys
	sw	a0,-20(s0)
	.loc 5 3266 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L416
	.loc 5 3267 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC86)
	addi	a4,a4,%lo(.LC86)
	li	a3,4096
	addi	a3,a3,-829
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3268 16
	lw	a5,-20(s0)
	j	.L429
.L416:
	.loc 5 3271 10
	lw	a0,-32(s0)
	call	mbedtls_ssl_ciphersuite_cert_req_allowed
	mv	a5,a0
	.loc 5 3271 8 discriminator 1
	bne	a5,zero,.L418
	.loc 5 3272 9
	lui	a5,%hi(.LC128)
	addi	a4,a5,%lo(.LC128)
	li	a5,4096
	addi	a3,a5,-824
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3273 9
	lw	a0,-116(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 5 3274 16
	li	a5,0
	j	.L429
.L418:
	.loc 5 3277 12
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 3277 23
	lbu	a5,732(a5)
	.loc 5 3277 8
	beq	a5,zero,.L419
	.loc 5 3278 9
	lw	a0,-116(s0)
	call	mbedtls_ssl_own_cert
	mv	a5,a0
	.loc 5 3277 42 discriminator 1
	bne	a5,zero,.L420
.L419:
	.loc 5 3279 9
	lui	a5,%hi(.LC128)
	addi	a4,a5,%lo(.LC128)
	li	a5,4096
	addi	a3,a5,-817
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3280 9
	lw	a0,-116(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 5 3281 16
	li	a5,0
	j	.L429
.L420:
	.loc 5 3284 9
	lw	a0,-116(s0)
	call	mbedtls_ssl_own_key
	mv	a5,a0
	.loc 5 3284 8 discriminator 1
	bne	a5,zero,.L421
	.loc 5 3285 9
	lui	a5,%hi(.LC129)
	addi	a4,a5,%lo(.LC129)
	li	a5,4096
	addi	a3,a5,-811
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3286 16
	li	a5,-28672
	addi	a5,a5,-1536
	j	.L429
.L421:
	.loc 5 3293 12
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 3293 23
	lbu	a5,11(a5)
	.loc 5 3293 8
	beq	a5,zero,.L431
	.loc 5 3294 12
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 3294 36
	li	a4,4
	sb	a4,12(a5)
	j	.L415
.L430:
	.loc 5 3262 9
	nop
	j	.L415
.L431:
	.loc 5 3297 1
	nop
.L415:
	.loc 5 3300 14
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 3300 25
	lw	a5,32(a5)
	.loc 5 3300 11
	addi	a3,s0,-112
	addi	a4,s0,-108
	mv	a2,a3
	mv	a1,a4
	lw	a0,-116(s0)
	jalr	a5
.LVL0:
	sw	a0,-20(s0)
	.loc 5 3301 8
	lw	a5,-20(s0)
	beq	a5,zero,.L422
	.loc 5 3302 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC130)
	addi	a4,a4,%lo(.LC130)
	li	a3,4096
	addi	a3,a3,-794
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3303 16
	lw	a5,-20(s0)
	j	.L429
.L422:
	.loc 5 3322 12
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 3322 23
	lw	a5,24(a5)
	.loc 5 3322 41
	lbu	a4,9(a5)
	.loc 5 3322 8
	li	a5,10
	bne	a4,a5,.L423
	.loc 5 3323 16
	li	a5,10
	sb	a5,-21(s0)
	.loc 5 3324 12
	lw	a5,-116(s0)
	lw	a5,216(a5)
	.loc 5 3324 21
	addi	a5,a5,4
	.loc 5 3324 25
	li	a4,5
	sb	a4,0(a5)
	j	.L424
.L423:
	.loc 5 3326 16
	li	a5,9
	sb	a5,-21(s0)
	.loc 5 3327 12
	lw	a5,-116(s0)
	lw	a5,216(a5)
	.loc 5 3327 21
	addi	a5,a5,4
	.loc 5 3327 25
	li	a4,4
	sb	a4,0(a5)
.L424:
	.loc 5 3329 23
	lw	a0,-116(s0)
	call	mbedtls_ssl_own_key
	mv	a4,a0
	.loc 5 3329 8 discriminator 1
	lw	a5,-116(s0)
	lw	a5,216(a5)
	.loc 5 3329 17 discriminator 1
	addi	s1,a5,5
	.loc 5 3329 23 discriminator 1
	mv	a0,a4
	call	mbedtls_ssl_sig_from_pk
	mv	a5,a0
	.loc 5 3329 21 discriminator 2
	sb	a5,0(s1)
	.loc 5 3332 13
	sw	zero,-112(s0)
	.loc 5 3333 12
	li	a5,2
	sw	a5,-36(s0)
	.loc 5 3336 12
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 3336 23
	lbu	a5,11(a5)
	.loc 5 3336 8
	beq	a5,zero,.L425
	.loc 5 3337 22
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 3337 16
	addi	a5,a5,420
	sw	a5,-28(s0)
.L425:
	.loc 5 3341 16
	lw	a0,-116(s0)
	call	mbedtls_ssl_own_key
	mv	t1,a0
	.loc 5 3341 16 is_stmt 0 discriminator 1
	lw	a3,-112(s0)
	.loc 5 3343 47 is_stmt 1
	lw	a5,-116(s0)
	lw	a4,216(a5)
	.loc 5 3343 61
	lw	a5,-36(s0)
	addi	a5,a5,6
	.loc 5 3341 16
	add	a2,a4,a5
	.loc 5 3344 60
	lw	a4,-44(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	.loc 5 3341 16
	addi	a0,a5,-6
	.loc 5 3346 47
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 5 3346 53
	lw	a7,32(a5)
	.loc 5 3346 65
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 5 3346 71
	lw	a5,36(a5)
	.loc 5 3341 16
	addi	a6,s0,-60
	lbu	a1,-21(s0)
	lw	a4,-28(s0)
	sw	a4,4(sp)
	sw	a5,0(sp)
	mv	a5,a0
	mv	a4,a2
	lw	a2,-40(s0)
	mv	a0,t1
	call	mbedtls_pk_sign_restartable
	sw	a0,-20(s0)
	.loc 5 3341 8 discriminator 2
	lw	a5,-20(s0)
	beq	a5,zero,.L426
	.loc 5 3347 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC131)
	addi	a4,a4,%lo(.LC131)
	li	a3,4096
	addi	a3,a3,-749
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3349 12
	lw	a4,-20(s0)
	li	a5,-20480
	addi	a5,a5,1280
	bne	a4,a5,.L427
	.loc 5 3350 17
	li	a5,-28672
	sw	a5,-20(s0)
.L427:
	.loc 5 3353 16
	lw	a5,-20(s0)
	j	.L429
.L426:
	.loc 5 3356 135 discriminator 2
	lw	a5,-116(s0)
	lw	a4,216(a5)
	.loc 5 3356 146 discriminator 2
	lw	a5,-36(s0)
	addi	a5,a5,4
	add	a4,a4,a5
	.loc 5 3356 162 discriminator 2
	lw	a5,-60(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a3,a5,8
	srli	a5,a5,8
	or	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a4,-48(s0)
	sh	a5,-50(s0)
.LBB116:
.LBB117:
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
.LBE117:
.LBE116:
	.loc 5 3358 29
	lw	a4,-60(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	addi	a4,a5,6
	.loc 5 3358 21
	lw	a5,-116(s0)
	sw	a4,224(a5)
	.loc 5 3359 22
	lw	a5,-116(s0)
	li	a4,22
	sw	a4,220(a5)
	.loc 5 3360 8
	lw	a5,-116(s0)
	lw	a5,216(a5)
	.loc 5 3360 21
	li	a4,15
	sb	a4,0(a5)
	.loc 5 3362 5
	lw	a0,-116(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 5 3364 16
	lw	a0,-116(s0)
	call	mbedtls_ssl_write_handshake_msg
	sw	a0,-20(s0)
	.loc 5 3364 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L428
	.loc 5 3365 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC125)
	addi	a4,a4,%lo(.LC125)
	li	a3,4096
	addi	a3,a3,-731
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3366 16
	lw	a5,-20(s0)
	j	.L429
.L428:
	.loc 5 3369 5
	lui	a5,%hi(.LC132)
	addi	a4,a5,%lo(.LC132)
	li	a5,4096
	addi	a3,a5,-727
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3371 12
	lw	a5,-20(s0)
.L429:
	.loc 5 3372 1
	mv	a0,a5
	lw	ra,140(sp)
	.cfi_restore 1
	lw	s0,136(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	lw	s1,132(sp)
	.cfi_restore 9
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE170:
	.size	ssl_write_certificate_verify, .-ssl_write_certificate_verify
	.section	.rodata
	.align	2
.LC133:
	.string	"=> parse new session ticket"
	.align	2
.LC134:
	.string	"bad new session ticket message"
	.align	2
.LC135:
	.string	"ticket length: %zu"
	.align	2
.LC136:
	.string	"ticket alloc failed"
	.align	2
.LC137:
	.string	"ticket in use, discarding session id"
	.align	2
.LC138:
	.string	"<= parse new session ticket"
	.section	.text.ssl_parse_new_session_ticket,"ax",@progbits
	.align	1
	.type	ssl_parse_new_session_ticket, @function
ssl_parse_new_session_ticket:
.LFB171:
	.loc 5 3378 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	.loc 5 3379 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 3385 5
	lui	a5,%hi(.LC133)
	addi	a4,a5,%lo(.LC133)
	li	a5,4096
	addi	a3,a5,-711
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3387 16
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_ssl_read_record
	sw	a0,-20(s0)
	.loc 5 3387 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L433
	.loc 5 3388 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC56)
	addi	a4,a4,%lo(.LC56)
	li	a3,4096
	addi	a3,a3,-708
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3389 16
	lw	a5,-20(s0)
	j	.L434
.L433:
	.loc 5 3392 12
	lw	a5,-68(s0)
	lw	a4,128(a5)
	.loc 5 3392 8
	li	a5,22
	beq	a4,a5,.L435
	.loc 5 3393 9
	lui	a5,%hi(.LC134)
	addi	a4,a5,%lo(.LC134)
	li	a5,4096
	addi	a3,a5,-703
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3394 9
	li	a2,10
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 3398 16
	li	a5,-28672
	addi	a5,a5,-1792
	j	.L434
.L435:
	.loc 5 3411 12
	lw	a5,-68(s0)
	lw	a5,120(a5)
	.loc 5 3411 20
	lbu	a4,0(a5)
	.loc 5 3411 8
	li	a5,4
	bne	a4,a5,.L436
	.loc 5 3412 12
	lw	a5,-68(s0)
	lw	s1,168(a5)
	.loc 5 3412 29
	lw	a0,-68(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a5,a0
	.loc 5 3412 27 discriminator 1
	addi	a5,a5,6
	.loc 5 3411 29 discriminator 1
	bgeu	s1,a5,.L437
.L436:
	.loc 5 3413 9
	lui	a5,%hi(.LC134)
	addi	a4,a5,%lo(.LC134)
	li	a5,4096
	addi	a3,a5,-683
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3414 9
	li	a2,50
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 3416 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L434
.L437:
	.loc 5 3419 14
	lw	a5,-68(s0)
	lw	s1,120(a5)
	.loc 5 3419 25
	lw	a0,-68(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a5,a0
	.loc 5 3419 9 discriminator 1
	add	a5,s1,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	sw	a5,-52(s0)
.LBB118:
.LBB119:
	.loc 6 174 33
	lw	a5,-52(s0)
	sw	a5,-56(s0)
	.loc 6 175 7
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	lbu	a3,2(a5)
	slli	a3,a3,16
	or	a4,a3,a4
	lbu	a5,3(a5)
	slli	a5,a5,24
	or	a5,a5,a4
	sw	a5,-60(s0)
	.loc 6 179 12
	lw	a5,-60(s0)
.LBE119:
.LBE118:
	.loc 5 3421 65 discriminator 1
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	sw	a5,-28(s0)
	.loc 5 3423 122
	lw	a5,-24(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
.LBB120:
.LBB121:
	.loc 6 122 33
	lw	a5,-40(s0)
	sw	a5,-44(s0)
	.loc 6 123 7
	lw	a5,-44(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-46(s0)
	.loc 6 127 12
	lhu	a5,-46(s0)
.LBE121:
.LBE120:
	.loc 5 3423 69 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 3423 16 discriminator 2
	sw	a5,-32(s0)
	.loc 5 3425 26
	lw	a0,-68(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a4,a0
	.loc 5 3425 24 discriminator 1
	lw	a5,-32(s0)
	add	a5,a4,a5
	addi	a4,a5,6
	.loc 5 3425 60 discriminator 1
	lw	a5,-68(s0)
	lw	a5,168(a5)
	.loc 5 3425 8 discriminator 1
	beq	a4,a5,.L440
	.loc 5 3426 9
	lui	a5,%hi(.LC134)
	addi	a4,a5,%lo(.LC134)
	li	a5,4096
	addi	a3,a5,-670
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3427 9
	li	a2,50
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 3429 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L434
.L440:
	.loc 5 3432 5
	lw	a5,-32(s0)
	lui	a4,%hi(.LC135)
	addi	a4,a4,%lo(.LC135)
	li	a3,4096
	addi	a3,a3,-664
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3435 8
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 3435 40
	sb	zero,4(a5)
	.loc 5 3436 5
	li	a1,12
	lw	a0,-68(s0)
	call	mbedtls_ssl_handshake_set_state
	.loc 5 3442 8
	lw	a5,-32(s0)
	bne	a5,zero,.L441
	.loc 5 3443 16
	li	a5,0
	j	.L434
.L441:
	.loc 5 3446 12
	lw	a5,-68(s0)
	lw	a5,56(a5)
	.loc 5 3446 8
	beq	a5,zero,.L442
	.loc 5 3446 35 discriminator 1
	lw	a5,-68(s0)
	lw	a5,56(a5)
	.loc 5 3446 44 discriminator 1
	lw	a5,104(a5)
	.loc 5 3446 29 discriminator 1
	beq	a5,zero,.L442
	.loc 5 3447 37
	lw	a5,-68(s0)
	lw	a5,56(a5)
	.loc 5 3447 46
	lw	a4,104(a5)
	.loc 5 3448 37
	lw	a5,-68(s0)
	lw	a5,56(a5)
	.loc 5 3447 9
	lw	a5,108(a5)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_zeroize_and_free
	.loc 5 3449 12
	lw	a5,-68(s0)
	lw	a5,56(a5)
	.loc 5 3449 30
	sw	zero,104(a5)
	.loc 5 3450 12
	lw	a5,-68(s0)
	lw	a5,56(a5)
	.loc 5 3450 34
	sw	zero,108(a5)
.L442:
	.loc 5 3453 33
	lw	a5,-68(s0)
	lw	a5,60(a5)
	.loc 5 3453 52
	lw	a4,104(a5)
	.loc 5 3454 33
	lw	a5,-68(s0)
	lw	a5,60(a5)
	.loc 5 3453 5
	lw	a5,108(a5)
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_zeroize_and_free
	.loc 5 3455 8
	lw	a5,-68(s0)
	lw	a5,60(a5)
	.loc 5 3455 36
	sw	zero,104(a5)
	.loc 5 3456 8
	lw	a5,-68(s0)
	lw	a5,60(a5)
	.loc 5 3456 40
	sw	zero,108(a5)
	.loc 5 3458 19
	lw	a1,-32(s0)
	li	a0,1
	call	calloc
	mv	a5,a0
	sw	a5,-36(s0)
	.loc 5 3458 8 discriminator 1
	lw	a5,-36(s0)
	bne	a5,zero,.L443
	.loc 5 3459 9
	lui	a5,%hi(.LC136)
	addi	a4,a5,%lo(.LC136)
	li	a5,4096
	addi	a3,a5,-637
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3460 9
	li	a2,80
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 3462 16
	li	a5,-32768
	addi	a5,a5,256
	j	.L434
.L443:
	.loc 5 3465 24
	lw	a5,-24(s0)
	addi	a5,a5,6
	.loc 5 3465 5
	lw	a2,-32(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	memcpy
	.loc 5 3467 8
	lw	a5,-68(s0)
	lw	a5,60(a5)
	.loc 5 3467 36
	lw	a4,-36(s0)
	sw	a4,104(a5)
	.loc 5 3468 8
	lw	a5,-68(s0)
	lw	a5,60(a5)
	.loc 5 3468 40
	lw	a4,-32(s0)
	sw	a4,108(a5)
	.loc 5 3469 8
	lw	a5,-68(s0)
	lw	a5,60(a5)
	.loc 5 3469 45
	lw	a4,-28(s0)
	sw	a4,112(a5)
	.loc 5 3476 5
	lui	a5,%hi(.LC137)
	addi	a4,a5,%lo(.LC137)
	li	a5,4096
	addi	a3,a5,-620
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3477 8
	lw	a5,-68(s0)
	lw	a5,60(a5)
	.loc 5 3477 36
	sw	zero,12(a5)
	.loc 5 3479 5
	lui	a5,%hi(.LC138)
	addi	a4,a5,%lo(.LC138)
	li	a5,4096
	addi	a3,a5,-617
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3481 12
	li	a5,0
.L434:
	.loc 5 3482 1
	mv	a0,a5
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s1,68(sp)
	.cfi_restore 9
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE171:
	.size	ssl_parse_new_session_ticket, .-ssl_parse_new_session_ticket
	.section	.rodata
	.align	2
.LC139:
	.string	"handshake: done"
	.align	2
.LC140:
	.string	"invalid state %d"
	.section	.text.mbedtls_ssl_handshake_client_step,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_handshake_client_step
	.type	mbedtls_ssl_handshake_client_step, @function
mbedtls_ssl_handshake_client_step:
.LFB172:
	.loc 5 3489 1
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
	.loc 5 3490 9
	sw	zero,-20(s0)
	.loc 5 3495 12
	lw	a5,-36(s0)
	lw	a4,4(a5)
	.loc 5 3495 8
	li	a5,12
	bne	a4,a5,.L445
	.loc 5 3496 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 3496 23
	lbu	a5,4(a5)
	.loc 5 3495 61 discriminator 1
	beq	a5,zero,.L445
	.loc 5 3497 9
	li	a1,16
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_set_state
.L445:
	.loc 5 3501 16
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 5 3501 5
	li	a4,16
	beq	a5,a4,.L446
	li	a4,16
	bgt	a5,a4,.L447
	li	a4,15
	beq	a5,a4,.L448
	li	a4,15
	bgt	a5,a4,.L447
	li	a4,14
	beq	a5,a4,.L449
	li	a4,14
	bgt	a5,a4,.L447
	li	a4,13
	beq	a5,a4,.L450
	li	a4,13
	bgt	a5,a4,.L447
	li	a4,12
	beq	a5,a4,.L451
	li	a4,12
	bgt	a5,a4,.L447
	li	a4,11
	beq	a5,a4,.L452
	li	a4,11
	bgt	a5,a4,.L447
	li	a4,10
	beq	a5,a4,.L453
	li	a4,10
	bgt	a5,a4,.L447
	li	a4,9
	beq	a5,a4,.L454
	li	a4,9
	bgt	a5,a4,.L447
	li	a4,8
	beq	a5,a4,.L455
	li	a4,8
	bgt	a5,a4,.L447
	li	a4,7
	beq	a5,a4,.L456
	li	a4,7
	bgt	a5,a4,.L447
	li	a4,6
	beq	a5,a4,.L457
	li	a4,6
	bgt	a5,a4,.L447
	li	a4,5
	beq	a5,a4,.L458
	li	a4,5
	bgt	a5,a4,.L447
	li	a4,4
	beq	a5,a4,.L459
	li	a4,4
	bgt	a5,a4,.L447
	li	a4,3
	beq	a5,a4,.L460
	li	a4,3
	bgt	a5,a4,.L447
	li	a4,2
	beq	a5,a4,.L461
	li	a4,2
	bgt	a5,a4,.L447
	beq	a5,zero,.L462
	li	a4,1
	beq	a5,a4,.L463
	j	.L447
.L462:
	.loc 5 3503 13
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_set_state
	.loc 5 3504 13
	j	.L464
.L463:
	.loc 5 3510 19
	lw	a0,-36(s0)
	call	mbedtls_ssl_write_client_hello
	sw	a0,-20(s0)
	.loc 5 3511 13
	j	.L464
.L461:
	.loc 5 3521 19
	lw	a0,-36(s0)
	call	ssl_parse_server_hello
	sw	a0,-20(s0)
	.loc 5 3522 13
	j	.L464
.L460:
	.loc 5 3525 19
	lw	a0,-36(s0)
	call	mbedtls_ssl_parse_certificate
	sw	a0,-20(s0)
	.loc 5 3526 13
	j	.L464
.L459:
	.loc 5 3529 19
	lw	a0,-36(s0)
	call	ssl_parse_server_key_exchange
	sw	a0,-20(s0)
	.loc 5 3530 13
	j	.L464
.L458:
	.loc 5 3533 19
	lw	a0,-36(s0)
	call	ssl_parse_certificate_request
	sw	a0,-20(s0)
	.loc 5 3534 13
	j	.L464
.L457:
	.loc 5 3537 19
	lw	a0,-36(s0)
	call	ssl_parse_server_hello_done
	sw	a0,-20(s0)
	.loc 5 3538 13
	j	.L464
.L456:
	.loc 5 3548 19
	lw	a0,-36(s0)
	call	mbedtls_ssl_write_certificate
	sw	a0,-20(s0)
	.loc 5 3549 13
	j	.L464
.L455:
	.loc 5 3552 19
	lw	a0,-36(s0)
	call	ssl_write_client_key_exchange
	sw	a0,-20(s0)
	.loc 5 3553 13
	j	.L464
.L454:
	.loc 5 3556 19
	lw	a0,-36(s0)
	call	ssl_write_certificate_verify
	sw	a0,-20(s0)
	.loc 5 3557 13
	j	.L464
.L453:
	.loc 5 3560 19
	lw	a0,-36(s0)
	call	mbedtls_ssl_write_change_cipher_spec
	sw	a0,-20(s0)
	.loc 5 3561 13
	j	.L464
.L452:
	.loc 5 3564 19
	lw	a0,-36(s0)
	call	mbedtls_ssl_write_finished
	sw	a0,-20(s0)
	.loc 5 3565 13
	j	.L464
.L446:
	.loc 5 3574 19
	lw	a0,-36(s0)
	call	ssl_parse_new_session_ticket
	sw	a0,-20(s0)
	.loc 5 3575 13
	j	.L464
.L451:
	.loc 5 3579 19
	lw	a0,-36(s0)
	call	mbedtls_ssl_parse_change_cipher_spec
	sw	a0,-20(s0)
	.loc 5 3580 13
	j	.L464
.L450:
	.loc 5 3583 19
	lw	a0,-36(s0)
	call	mbedtls_ssl_parse_finished
	sw	a0,-20(s0)
	.loc 5 3584 13
	j	.L464
.L449:
	.loc 5 3587 13
	lui	a5,%hi(.LC139)
	addi	a4,a5,%lo(.LC139)
	li	a5,4096
	addi	a3,a5,-509
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3588 13
	li	a1,15
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_set_state
	.loc 5 3589 13
	j	.L464
.L448:
	.loc 5 3592 13
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_wrapup
	.loc 5 3593 13
	j	.L464
.L447:
	.loc 5 3596 13
	lw	a5,-36(s0)
	lw	a5,4(a5)
	lui	a4,%hi(.LC140)
	addi	a4,a4,%lo(.LC140)
	li	a3,4096
	addi	a3,a3,-500
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3597 20
	li	a5,-28672
	addi	a5,a5,-256
	j	.L465
.L464:
	.loc 5 3600 12
	lw	a5,-20(s0)
.L465:
	.loc 5 3601 1
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
.LFE172:
	.size	mbedtls_ssl_handshake_client_step, .-mbedtls_ssl_handshake_client_step
	.section	.rodata.__func__.0,"a"
	.align	2
	.type	__func__.0, @object
	.size	__func__.0, 30
__func__.0:
	.string	"ssl_parse_server_key_exchange"
	.text
.Letext0:
	.file 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.file 8 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 9 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
	.file 10 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/bignum.h"
	.file 11 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecp.h"
	.file 12 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
	.file 13 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/cipher.h"
	.file 14 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/cmac.h"
	.file 15 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/pk.h"
	.file 16 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ssl_ciphersuites.h"
	.file 17 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/asn1.h"
	.file 18 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/x509.h"
	.file 19 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/x509_crl.h"
	.file 20 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/x509_crt.h"
	.file 21 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/dhm.h"
	.file 22 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ecdh.h"
	.file 23 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/debug_internal.h"
	.file 24 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_client.h"
	.file 25 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/common.h"
	.file 26 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/x509_internal.h"
	.file 27 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 28 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.file 29 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/constant_time.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x45de
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x3c
	.4byte	.LASF673
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x1a
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x12
	.4byte	0x32
	.uleb128 0x1a
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x1a
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x1a
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1a
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x1a
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x1a
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3d
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x12
	.4byte	0x68
	.uleb128 0x1a
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xe
	.4byte	.LASF12
	.byte	0x7
	.byte	0xe5
	.byte	0x16
	.4byte	0x74
	.uleb128 0x1a
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xe
	.4byte	.LASF13
	.byte	0x8
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0x12
	.4byte	0x8e
	.uleb128 0xe
	.4byte	.LASF14
	.byte	0x8
	.byte	0x31
	.byte	0x1c
	.4byte	0x45
	.uleb128 0x12
	.4byte	0x9f
	.uleb128 0xe
	.4byte	.LASF15
	.byte	0x8
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0xe
	.4byte	.LASF16
	.byte	0x8
	.byte	0x37
	.byte	0x20
	.4byte	0x61
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0x8
	.byte	0x56
	.byte	0x16
	.4byte	0x74
	.uleb128 0x3e
	.byte	0x4
	.uleb128 0x32
	.4byte	0xd4
	.uleb128 0x4
	.4byte	0x32
	.uleb128 0x4
	.4byte	0xe5
	.uleb128 0x1a
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x12
	.4byte	0xe5
	.uleb128 0x4
	.4byte	0xec
	.uleb128 0x4
	.4byte	0x100
	.uleb128 0x32
	.4byte	0xf6
	.uleb128 0x3f
	.uleb128 0x2f
	.byte	0x2
	.byte	0x6
	.byte	0x56
	.4byte	0x115
	.uleb128 0x8
	.string	"x"
	.byte	0x6
	.byte	0x57
	.byte	0xe
	.4byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x6
	.byte	0x58
	.byte	0x1b
	.4byte	0x101
	.uleb128 0x2f
	.byte	0x4
	.byte	0x6
	.byte	0x59
	.4byte	0x135
	.uleb128 0x8
	.string	"x"
	.byte	0x6
	.byte	0x5a
	.byte	0xe
	.4byte	0xb0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x6
	.byte	0x5b
	.byte	0x1b
	.4byte	0x121
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x9
	.byte	0xd1
	.byte	0xd
	.4byte	0x14d
	.uleb128 0x11
	.4byte	0x68
	.4byte	0x166
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0xa
	.byte	0xaa
	.byte	0x12
	.4byte	0xb0
	.uleb128 0x15
	.4byte	.LASF23
	.byte	0x8
	.byte	0xa
	.byte	0xd0
	.byte	0x10
	.4byte	0x1a1
	.uleb128 0x8
	.string	"p"
	.byte	0xa
	.byte	0xd5
	.byte	0x17
	.4byte	0x1a1
	.byte	0
	.uleb128 0x8
	.string	"s"
	.byte	0xa
	.byte	0xe2
	.byte	0x12
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x8
	.string	"n"
	.byte	0xa
	.byte	0xe5
	.byte	0x14
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	0x166
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0xa
	.byte	0xf0
	.byte	0x1
	.4byte	0x172
	.uleb128 0x23
	.byte	0x7
	.4byte	0x32
	.byte	0xb
	.byte	0x66
	.4byte	0x213
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0xb
	.byte	0x75
	.byte	0x3
	.4byte	0x1b2
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x18
	.byte	0xb
	.byte	0x9e
	.byte	0x10
	.4byte	0x24e
	.uleb128 0x8
	.string	"X"
	.byte	0xb
	.byte	0x9f
	.byte	0x11
	.4byte	0x1a6
	.byte	0
	.uleb128 0x8
	.string	"Y"
	.byte	0xb
	.byte	0xa0
	.byte	0x11
	.4byte	0x1a6
	.byte	0x8
	.uleb128 0x8
	.string	"Z"
	.byte	0xb
	.byte	0xa1
	.byte	0x11
	.4byte	0x1a6
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0xb
	.byte	0xa3
	.byte	0x1
	.4byte	0x21f
	.uleb128 0x15
	.4byte	.LASF40
	.byte	0x60
	.byte	0xb
	.byte	0xe9
	.byte	0x10
	.4byte	0x31f
	.uleb128 0x8
	.string	"id"
	.byte	0xb
	.byte	0xea
	.byte	0x1a
	.4byte	0x213
	.byte	0
	.uleb128 0x8
	.string	"P"
	.byte	0xb
	.byte	0xeb
	.byte	0x11
	.4byte	0x1a6
	.byte	0x4
	.uleb128 0x8
	.string	"A"
	.byte	0xb
	.byte	0xec
	.byte	0x11
	.4byte	0x1a6
	.byte	0xc
	.uleb128 0x8
	.string	"B"
	.byte	0xb
	.byte	0xf1
	.byte	0x11
	.4byte	0x1a6
	.byte	0x14
	.uleb128 0x8
	.string	"G"
	.byte	0xb
	.byte	0xf3
	.byte	0x17
	.4byte	0x24e
	.byte	0x1c
	.uleb128 0x8
	.string	"N"
	.byte	0xb
	.byte	0xf4
	.byte	0x11
	.4byte	0x1a6
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0xb
	.byte	0xf5
	.byte	0xc
	.4byte	0x7b
	.byte	0x3c
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0xb
	.byte	0xf6
	.byte	0xc
	.4byte	0x7b
	.byte	0x40
	.uleb128 0x8
	.string	"h"
	.byte	0xb
	.byte	0xfb
	.byte	0x12
	.4byte	0x74
	.byte	0x44
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0xb
	.byte	0xfc
	.byte	0xa
	.4byte	0x333
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0xb
	.byte	0xfe
	.byte	0xa
	.4byte	0x351
	.byte	0x4c
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0xb
	.byte	0xff
	.byte	0xa
	.4byte	0x351
	.byte	0x50
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0xb
	.2byte	0x100
	.byte	0xb
	.4byte	0xd4
	.byte	0x54
	.uleb128 0x13
	.string	"T"
	.byte	0xb
	.2byte	0x101
	.byte	0x18
	.4byte	0x34c
	.byte	0x58
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0xb
	.2byte	0x102
	.byte	0xc
	.4byte	0x7b
	.byte	0x5c
	.byte	0
	.uleb128 0x11
	.4byte	0x68
	.4byte	0x32e
	.uleb128 0x1
	.4byte	0x32e
	.byte	0
	.uleb128 0x4
	.4byte	0x1a6
	.uleb128 0x4
	.4byte	0x31f
	.uleb128 0x11
	.4byte	0x68
	.4byte	0x34c
	.uleb128 0x1
	.4byte	0x34c
	.uleb128 0x1
	.4byte	0xd4
	.byte	0
	.uleb128 0x4
	.4byte	0x24e
	.uleb128 0x4
	.4byte	0x338
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0xb
	.2byte	0x104
	.byte	0x1
	.4byte	0x25a
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0xb
	.2byte	0x16c
	.byte	0x28
	.4byte	0x370
	.uleb128 0x2a
	.4byte	.LASF50
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0xb
	.2byte	0x173
	.byte	0x2b
	.4byte	0x382
	.uleb128 0x2a
	.4byte	.LASF51
	.uleb128 0x20
	.byte	0x10
	.byte	0xb
	.2byte	0x178
	.byte	0x9
	.4byte	0x3c9
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0xb
	.2byte	0x179
	.byte	0xe
	.4byte	0x74
	.byte	0
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0xb
	.2byte	0x17a
	.byte	0xe
	.4byte	0x74
	.byte	0x4
	.uleb128 0x13
	.string	"rsm"
	.byte	0xb
	.2byte	0x17b
	.byte	0x22
	.4byte	0x3c9
	.byte	0x8
	.uleb128 0x13
	.string	"ma"
	.byte	0xb
	.2byte	0x17c
	.byte	0x25
	.4byte	0x3ce
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	0x363
	.uleb128 0x4
	.4byte	0x375
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0xb
	.2byte	0x17d
	.byte	0x3
	.4byte	0x387
	.uleb128 0x1e
	.4byte	.LASF55
	.byte	0x80
	.byte	0xb
	.2byte	0x1ac
	.byte	0x10
	.4byte	0x415
	.uleb128 0x13
	.string	"grp"
	.byte	0xb
	.2byte	0x1ad
	.byte	0x17
	.4byte	0x356
	.byte	0
	.uleb128 0x13
	.string	"d"
	.byte	0xb
	.2byte	0x1ae
	.byte	0x11
	.4byte	0x1a6
	.byte	0x60
	.uleb128 0x13
	.string	"Q"
	.byte	0xb
	.2byte	0x1af
	.byte	0x17
	.4byte	0x24e
	.byte	0x68
	.byte	0
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0xb
	.2byte	0x1b1
	.byte	0x1
	.4byte	0x3e0
	.uleb128 0x12
	.4byte	0x415
	.uleb128 0x23
	.byte	0x7
	.4byte	0x32
	.byte	0xc
	.byte	0x2f
	.4byte	0x47c
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x11
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x12
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0xc
	.byte	0x3c
	.byte	0x3
	.4byte	0x427
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0xc
	.byte	0x6b
	.byte	0x22
	.4byte	0x499
	.uleb128 0x12
	.4byte	0x488
	.uleb128 0x2a
	.4byte	.LASF69
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0xc
	.byte	0xc
	.byte	0x7a
	.byte	0x10
	.4byte	0x4d3
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0xc
	.byte	0x7c
	.byte	0x1e
	.4byte	0x4d3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0xc
	.byte	0x84
	.byte	0xb
	.4byte	0xd4
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0xc
	.byte	0x88
	.byte	0xb
	.4byte	0xd4
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	0x494
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0xc
	.byte	0x8a
	.byte	0x3
	.4byte	0x49e
	.uleb128 0x17
	.4byte	0x32
	.4byte	0x4f4
	.uleb128 0x18
	.4byte	0x74
	.byte	0x3f
	.byte	0
	.uleb128 0x23
	.byte	0x5
	.4byte	0x2b
	.byte	0xd
	.byte	0xc7
	.4byte	0x513
	.uleb128 0x40
	.4byte	.LASF74
	.sleb128 -1
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0xd
	.byte	0xcb
	.byte	0x3
	.4byte	0x4f4
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0xd
	.byte	0xf9
	.byte	0x27
	.4byte	0x52b
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x24
	.byte	0xe
	.byte	0x3b
	.byte	0x8
	.4byte	0x560
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0xe
	.byte	0x3d
	.byte	0x13
	.4byte	0x6e7
	.byte	0
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0xe
	.byte	0x41
	.byte	0x13
	.4byte	0x6e7
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0xe
	.byte	0x44
	.byte	0xc
	.4byte	0x7b
	.byte	0x20
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF82
	.byte	0x8
	.byte	0xd
	.2byte	0x10a
	.byte	0x10
	.4byte	0x5e6
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0xd
	.2byte	0x10c
	.byte	0x11
	.4byte	0xf1
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF84
	.byte	0xd
	.2byte	0x10f
	.byte	0x12
	.4byte	0x74
	.byte	0x5
	.byte	0x20
	.uleb128 0x1b
	.4byte	.LASF85
	.byte	0xd
	.2byte	0x115
	.byte	0x12
	.4byte	0x74
	.byte	0x3
	.byte	0x25
	.uleb128 0x1b
	.4byte	.LASF86
	.byte	0xd
	.2byte	0x11b
	.byte	0x12
	.4byte	0x74
	.byte	0x4
	.byte	0x28
	.uleb128 0x1b
	.4byte	.LASF87
	.byte	0xd
	.2byte	0x120
	.byte	0x12
	.4byte	0x74
	.byte	0x4
	.byte	0x2c
	.uleb128 0x1b
	.4byte	.LASF88
	.byte	0xd
	.2byte	0x128
	.byte	0x12
	.4byte	0x74
	.byte	0x8
	.byte	0x30
	.uleb128 0x1b
	.4byte	.LASF89
	.byte	0xd
	.2byte	0x12e
	.byte	0x12
	.4byte	0x74
	.byte	0x2
	.byte	0x38
	.uleb128 0x1b
	.4byte	.LASF90
	.byte	0xd
	.2byte	0x131
	.byte	0x12
	.4byte	0x74
	.byte	0x5
	.byte	0x3a
	.byte	0
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0xd
	.2byte	0x133
	.byte	0x3
	.4byte	0x560
	.uleb128 0x12
	.4byte	0x5e6
	.uleb128 0x1e
	.4byte	.LASF91
	.byte	0x44
	.byte	0xd
	.2byte	0x13c
	.byte	0x10
	.4byte	0x6a0
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0xd
	.2byte	0x13e
	.byte	0x22
	.4byte	0x6a0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0xd
	.2byte	0x141
	.byte	0x9
	.4byte	0x68
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0xd
	.2byte	0x146
	.byte	0x19
	.4byte	0x513
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0xd
	.2byte	0x14c
	.byte	0xb
	.4byte	0x6ba
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0xd
	.2byte	0x152
	.byte	0xa
	.4byte	0x6e2
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0xd
	.2byte	0x158
	.byte	0x13
	.4byte	0x6e7
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0xd
	.2byte	0x15b
	.byte	0xc
	.4byte	0x7b
	.byte	0x24
	.uleb128 0x13
	.string	"iv"
	.byte	0xd
	.2byte	0x15f
	.byte	0x13
	.4byte	0x6e7
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0xd
	.2byte	0x162
	.byte	0xc
	.4byte	0x7b
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0xd
	.2byte	0x165
	.byte	0xb
	.4byte	0xd4
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0xd
	.2byte	0x169
	.byte	0x1d
	.4byte	0x6f7
	.byte	0x40
	.byte	0
	.uleb128 0x4
	.4byte	0x5f3
	.uleb128 0x26
	.4byte	0x6ba
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x4
	.4byte	0x6a5
	.uleb128 0x11
	.4byte	0x68
	.4byte	0x6dd
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x6dd
	.uleb128 0x1
	.4byte	0x6dd
	.byte	0
	.uleb128 0x4
	.4byte	0x7b
	.uleb128 0x4
	.4byte	0x6bf
	.uleb128 0x17
	.4byte	0x32
	.4byte	0x6f7
	.uleb128 0x18
	.4byte	0x74
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	0x51f
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0xd
	.2byte	0x177
	.byte	0x3
	.4byte	0x5f8
	.uleb128 0x23
	.byte	0x7
	.4byte	0x32
	.byte	0xf
	.byte	0x49
	.4byte	0x746
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF103
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.4byte	.LASF107
	.byte	0xf
	.byte	0x52
	.byte	0x3
	.4byte	0x709
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0xf
	.byte	0xd5
	.byte	0x22
	.4byte	0x763
	.uleb128 0x12
	.4byte	0x752
	.uleb128 0x2a
	.4byte	.LASF108
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x8
	.byte	0xf
	.byte	0xdc
	.byte	0x10
	.4byte	0x790
	.uleb128 0x7
	.4byte	.LASF110
	.byte	0xf
	.byte	0xdd
	.byte	0x1e
	.4byte	0x790
	.byte	0
	.uleb128 0x7
	.4byte	.LASF111
	.byte	0xf
	.byte	0xde
	.byte	0xb
	.4byte	0xd4
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	0x75e
	.uleb128 0xa
	.4byte	.LASF109
	.byte	0xf
	.2byte	0x109
	.byte	0x3
	.4byte	0x768
	.uleb128 0x12
	.4byte	0x795
	.uleb128 0x20
	.byte	0x8
	.byte	0xf
	.2byte	0x10f
	.byte	0x9
	.4byte	0x7ce
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0xf
	.2byte	0x110
	.byte	0x1e
	.4byte	0x790
	.byte	0
	.uleb128 0x2
	.4byte	.LASF112
	.byte	0xf
	.2byte	0x111
	.byte	0xb
	.4byte	0xd4
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF113
	.byte	0xf
	.2byte	0x112
	.byte	0x3
	.4byte	0x7a7
	.uleb128 0x22
	.byte	0x1
	.4byte	0x32
	.byte	0x10
	.2byte	0x101
	.byte	0xe
	.4byte	0x832
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF117
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF120
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF123
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.4byte	.LASF126
	.byte	0x10
	.2byte	0x10e
	.byte	0x3
	.4byte	0x7db
	.uleb128 0xa
	.4byte	.LASF127
	.byte	0x10
	.2byte	0x1b2
	.byte	0x2a
	.4byte	0x851
	.uleb128 0x12
	.4byte	0x83f
	.uleb128 0x1e
	.4byte	.LASF127
	.byte	0x10
	.byte	0x10
	.2byte	0x1c0
	.byte	0x8
	.4byte	0x8cf
	.uleb128 0x13
	.string	"id"
	.byte	0x10
	.2byte	0x1c1
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0x10
	.2byte	0x1c2
	.byte	0x11
	.4byte	0xf1
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0x10
	.2byte	0x1c4
	.byte	0xd
	.4byte	0x8e
	.byte	0x8
	.uleb128 0x13
	.string	"mac"
	.byte	0x10
	.2byte	0x1c5
	.byte	0xd
	.4byte	0x8e
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0x10
	.2byte	0x1c6
	.byte	0xd
	.4byte	0x8e
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0x10
	.2byte	0x1c7
	.byte	0xd
	.4byte	0x8e
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0x10
	.2byte	0x1c9
	.byte	0xe
	.4byte	0x9f
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF131
	.byte	0x10
	.2byte	0x1ca
	.byte	0xe
	.4byte	0x9f
	.byte	0xe
	.byte	0
	.uleb128 0x15
	.4byte	.LASF132
	.byte	0xc
	.byte	0x11
	.byte	0x8d
	.byte	0x10
	.4byte	0x902
	.uleb128 0x8
	.string	"tag"
	.byte	0x11
	.byte	0x8e
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x8
	.string	"len"
	.byte	0x11
	.byte	0x8f
	.byte	0xc
	.4byte	0x7b
	.byte	0x4
	.uleb128 0x8
	.string	"p"
	.byte	0x11
	.byte	0x90
	.byte	0x14
	.4byte	0xdb
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.4byte	.LASF132
	.byte	0x11
	.byte	0x92
	.byte	0x1
	.4byte	0x8cf
	.uleb128 0x15
	.4byte	.LASF133
	.byte	0x10
	.byte	0x11
	.byte	0xa1
	.byte	0x10
	.4byte	0x936
	.uleb128 0x8
	.string	"buf"
	.byte	0x11
	.byte	0xa2
	.byte	0x16
	.4byte	0x902
	.byte	0
	.uleb128 0x7
	.4byte	.LASF134
	.byte	0x11
	.byte	0xab
	.byte	0x23
	.4byte	0x936
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	0x90e
	.uleb128 0xe
	.4byte	.LASF133
	.byte	0x11
	.byte	0xad
	.byte	0x1
	.4byte	0x90e
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0x20
	.byte	0x11
	.byte	0xb2
	.byte	0x10
	.4byte	0x989
	.uleb128 0x8
	.string	"oid"
	.byte	0x11
	.byte	0xb3
	.byte	0x16
	.4byte	0x902
	.byte	0
	.uleb128 0x8
	.string	"val"
	.byte	0x11
	.byte	0xb4
	.byte	0x16
	.4byte	0x902
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF134
	.byte	0x11
	.byte	0xbd
	.byte	0x25
	.4byte	0x989
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF136
	.byte	0x11
	.byte	0xc4
	.byte	0x13
	.4byte	0x32
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.4byte	0x947
	.uleb128 0xe
	.4byte	.LASF135
	.byte	0x11
	.byte	0xc6
	.byte	0x1
	.4byte	0x947
	.uleb128 0xe
	.4byte	.LASF137
	.byte	0x12
	.byte	0xd8
	.byte	0x1a
	.4byte	0x902
	.uleb128 0xe
	.4byte	.LASF138
	.byte	0x12
	.byte	0xe3
	.byte	0x21
	.4byte	0x98e
	.uleb128 0x12
	.4byte	0x9a6
	.uleb128 0xe
	.4byte	.LASF139
	.byte	0x12
	.byte	0xe8
	.byte	0x1f
	.4byte	0x93b
	.uleb128 0x15
	.4byte	.LASF140
	.byte	0x34
	.byte	0x12
	.byte	0xed
	.byte	0x10
	.4byte	0xa05
	.uleb128 0x7
	.4byte	.LASF141
	.byte	0x12
	.byte	0xee
	.byte	0x16
	.4byte	0x99a
	.byte	0
	.uleb128 0x7
	.4byte	.LASF142
	.byte	0x12
	.byte	0xef
	.byte	0x1b
	.4byte	0x9b7
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF143
	.byte	0x12
	.byte	0xf0
	.byte	0x16
	.4byte	0x99a
	.byte	0x1c
	.uleb128 0x8
	.string	"raw"
	.byte	0x12
	.byte	0xf1
	.byte	0x16
	.4byte	0x99a
	.byte	0x28
	.byte	0
	.uleb128 0xe
	.4byte	.LASF140
	.byte	0x12
	.byte	0xf3
	.byte	0x1
	.4byte	0x9c3
	.uleb128 0x15
	.4byte	.LASF144
	.byte	0x18
	.byte	0x12
	.byte	0xf6
	.byte	0x10
	.4byte	0xa6d
	.uleb128 0x7
	.4byte	.LASF145
	.byte	0x12
	.byte	0xf7
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x8
	.string	"mon"
	.byte	0x12
	.byte	0xf7
	.byte	0xf
	.4byte	0x68
	.byte	0x4
	.uleb128 0x8
	.string	"day"
	.byte	0x12
	.byte	0xf7
	.byte	0x14
	.4byte	0x68
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF146
	.byte	0x12
	.byte	0xf8
	.byte	0x9
	.4byte	0x68
	.byte	0xc
	.uleb128 0x8
	.string	"min"
	.byte	0x12
	.byte	0xf8
	.byte	0xf
	.4byte	0x68
	.byte	0x10
	.uleb128 0x8
	.string	"sec"
	.byte	0x12
	.byte	0xf8
	.byte	0x14
	.4byte	0x68
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.4byte	.LASF144
	.byte	0x12
	.byte	0xfa
	.byte	0x1
	.4byte	0xa11
	.uleb128 0x15
	.4byte	.LASF147
	.byte	0x40
	.byte	0x13
	.byte	0x27
	.byte	0x10
	.4byte	0xac8
	.uleb128 0x8
	.string	"raw"
	.byte	0x13
	.byte	0x29
	.byte	0x16
	.4byte	0x99a
	.byte	0
	.uleb128 0x7
	.4byte	.LASF148
	.byte	0x13
	.byte	0x2b
	.byte	0x16
	.4byte	0x99a
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF149
	.byte	0x13
	.byte	0x2d
	.byte	0x17
	.4byte	0xa6d
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF150
	.byte	0x13
	.byte	0x33
	.byte	0x16
	.4byte	0x99a
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF134
	.byte	0x13
	.byte	0x38
	.byte	0x24
	.4byte	0xac8
	.byte	0x3c
	.byte	0
	.uleb128 0x4
	.4byte	0xa79
	.uleb128 0xe
	.4byte	.LASF147
	.byte	0x13
	.byte	0x3a
	.byte	0x1
	.4byte	0xa79
	.uleb128 0x15
	.4byte	.LASF151
	.byte	0xf4
	.byte	0x13
	.byte	0x40
	.byte	0x10
	.4byte	0xbb7
	.uleb128 0x8
	.string	"raw"
	.byte	0x13
	.byte	0x41
	.byte	0x16
	.4byte	0x99a
	.byte	0
	.uleb128 0x8
	.string	"tbs"
	.byte	0x13
	.byte	0x42
	.byte	0x16
	.4byte	0x99a
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF152
	.byte	0x13
	.byte	0x44
	.byte	0x9
	.4byte	0x68
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF153
	.byte	0x13
	.byte	0x45
	.byte	0x16
	.4byte	0x99a
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF154
	.byte	0x13
	.byte	0x47
	.byte	0x16
	.4byte	0x99a
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF155
	.byte	0x13
	.byte	0x49
	.byte	0x17
	.4byte	0x9a6
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF156
	.byte	0x13
	.byte	0x4b
	.byte	0x17
	.4byte	0xa6d
	.byte	0x54
	.uleb128 0x7
	.4byte	.LASF157
	.byte	0x13
	.byte	0x4c
	.byte	0x17
	.4byte	0xa6d
	.byte	0x6c
	.uleb128 0x7
	.4byte	.LASF158
	.byte	0x13
	.byte	0x4e
	.byte	0x1c
	.4byte	0xacd
	.byte	0x84
	.uleb128 0x7
	.4byte	.LASF159
	.byte	0x13
	.byte	0x50
	.byte	0x16
	.4byte	0x99a
	.byte	0xc4
	.uleb128 0x7
	.4byte	.LASF160
	.byte	0x13
	.byte	0x52
	.byte	0x16
	.4byte	0x99a
	.byte	0xd0
	.uleb128 0x8
	.string	"sig"
	.byte	0x13
	.byte	0x53
	.byte	0x16
	.4byte	0x99a
	.byte	0xdc
	.uleb128 0x7
	.4byte	.LASF161
	.byte	0x13
	.byte	0x54
	.byte	0x17
	.4byte	0x47c
	.byte	0xe8
	.uleb128 0x7
	.4byte	.LASF162
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.4byte	0x746
	.byte	0xe9
	.uleb128 0x7
	.4byte	.LASF163
	.byte	0x13
	.byte	0x56
	.byte	0xb
	.4byte	0xd4
	.byte	0xec
	.uleb128 0x7
	.4byte	.LASF134
	.byte	0x13
	.byte	0x5b
	.byte	0x1e
	.4byte	0xbb7
	.byte	0xf0
	.byte	0
	.uleb128 0x4
	.4byte	0xad9
	.uleb128 0xe
	.4byte	.LASF151
	.byte	0x13
	.byte	0x5d
	.byte	0x1
	.4byte	0xad9
	.uleb128 0x41
	.4byte	.LASF164
	.2byte	0x194
	.byte	0x14
	.byte	0x29
	.byte	0x10
	.4byte	0xd77
	.uleb128 0x7
	.4byte	.LASF165
	.byte	0x14
	.byte	0x2a
	.byte	0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x8
	.string	"raw"
	.byte	0x14
	.byte	0x2c
	.byte	0x16
	.4byte	0x99a
	.byte	0x4
	.uleb128 0x8
	.string	"tbs"
	.byte	0x14
	.byte	0x2d
	.byte	0x16
	.4byte	0x99a
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF152
	.byte	0x14
	.byte	0x2f
	.byte	0x9
	.4byte	0x68
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF148
	.byte	0x14
	.byte	0x30
	.byte	0x16
	.4byte	0x99a
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF153
	.byte	0x14
	.byte	0x31
	.byte	0x16
	.4byte	0x99a
	.byte	0x2c
	.uleb128 0x7
	.4byte	.LASF154
	.byte	0x14
	.byte	0x33
	.byte	0x16
	.4byte	0x99a
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF166
	.byte	0x14
	.byte	0x34
	.byte	0x16
	.4byte	0x99a
	.byte	0x44
	.uleb128 0x7
	.4byte	.LASF155
	.byte	0x14
	.byte	0x36
	.byte	0x17
	.4byte	0x9a6
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF167
	.byte	0x14
	.byte	0x37
	.byte	0x17
	.4byte	0x9a6
	.byte	0x70
	.uleb128 0x7
	.4byte	.LASF168
	.byte	0x14
	.byte	0x39
	.byte	0x17
	.4byte	0xa6d
	.byte	0x90
	.uleb128 0x7
	.4byte	.LASF169
	.byte	0x14
	.byte	0x3a
	.byte	0x17
	.4byte	0xa6d
	.byte	0xa8
	.uleb128 0x7
	.4byte	.LASF170
	.byte	0x14
	.byte	0x3c
	.byte	0x16
	.4byte	0x99a
	.byte	0xc0
	.uleb128 0x8
	.string	"pk"
	.byte	0x14
	.byte	0x3d
	.byte	0x18
	.4byte	0x795
	.byte	0xcc
	.uleb128 0x7
	.4byte	.LASF171
	.byte	0x14
	.byte	0x3f
	.byte	0x16
	.4byte	0x99a
	.byte	0xd4
	.uleb128 0x7
	.4byte	.LASF172
	.byte	0x14
	.byte	0x40
	.byte	0x16
	.4byte	0x99a
	.byte	0xe0
	.uleb128 0x7
	.4byte	.LASF173
	.byte	0x14
	.byte	0x41
	.byte	0x16
	.4byte	0x99a
	.byte	0xec
	.uleb128 0x7
	.4byte	.LASF174
	.byte	0x14
	.byte	0x42
	.byte	0x1b
	.4byte	0x9b7
	.byte	0xf8
	.uleb128 0x19
	.4byte	.LASF175
	.byte	0x43
	.byte	0x16
	.4byte	0x99a
	.2byte	0x108
	.uleb128 0x19
	.4byte	.LASF176
	.byte	0x44
	.byte	0x1c
	.4byte	0xa05
	.2byte	0x114
	.uleb128 0x19
	.4byte	.LASF177
	.byte	0x46
	.byte	0x1b
	.4byte	0x9b7
	.2byte	0x148
	.uleb128 0x19
	.4byte	.LASF178
	.byte	0x48
	.byte	0x9
	.4byte	0x68
	.2byte	0x158
	.uleb128 0x19
	.4byte	.LASF179
	.byte	0x49
	.byte	0x9
	.4byte	0x68
	.2byte	0x15c
	.uleb128 0x19
	.4byte	.LASF180
	.byte	0x4a
	.byte	0x9
	.4byte	0x68
	.2byte	0x160
	.uleb128 0x19
	.4byte	.LASF181
	.byte	0x4c
	.byte	0x12
	.4byte	0x74
	.2byte	0x164
	.uleb128 0x19
	.4byte	.LASF182
	.byte	0x4e
	.byte	0x1b
	.4byte	0x9b7
	.2byte	0x168
	.uleb128 0x19
	.4byte	.LASF183
	.byte	0x50
	.byte	0x13
	.4byte	0x32
	.2byte	0x178
	.uleb128 0x42
	.string	"sig"
	.byte	0x14
	.byte	0x52
	.byte	0x16
	.4byte	0x99a
	.2byte	0x17c
	.uleb128 0x19
	.4byte	.LASF161
	.byte	0x53
	.byte	0x17
	.4byte	0x47c
	.2byte	0x188
	.uleb128 0x19
	.4byte	.LASF162
	.byte	0x54
	.byte	0x17
	.4byte	0x746
	.2byte	0x189
	.uleb128 0x19
	.4byte	.LASF163
	.byte	0x55
	.byte	0xb
	.4byte	0xd4
	.2byte	0x18c
	.uleb128 0x19
	.4byte	.LASF134
	.byte	0x5a
	.byte	0x1e
	.4byte	0xd77
	.2byte	0x190
	.byte	0
	.uleb128 0x4
	.4byte	0xbc8
	.uleb128 0xe
	.4byte	.LASF164
	.byte	0x14
	.byte	0x5c
	.byte	0x1
	.4byte	0xbc8
	.uleb128 0x12
	.4byte	0xd7c
	.uleb128 0x15
	.4byte	.LASF184
	.byte	0x10
	.byte	0x14
	.byte	0x7d
	.byte	0x10
	.4byte	0xdcf
	.uleb128 0x7
	.4byte	.LASF185
	.byte	0x14
	.byte	0x7e
	.byte	0xe
	.4byte	0xb0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF186
	.byte	0x14
	.byte	0x7f
	.byte	0xe
	.4byte	0xb0
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF187
	.byte	0x14
	.byte	0x82
	.byte	0xe
	.4byte	0xb0
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF188
	.byte	0x14
	.byte	0x83
	.byte	0xe
	.4byte	0xb0
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.4byte	.LASF184
	.byte	0x14
	.byte	0x85
	.byte	0x1
	.4byte	0xd8d
	.uleb128 0x12
	.4byte	0xdcf
	.uleb128 0x4
	.4byte	0x795
	.uleb128 0x4
	.4byte	0x98e
	.uleb128 0x2f
	.byte	0x8
	.byte	0x14
	.byte	0xfa
	.4byte	0xe0d
	.uleb128 0x8
	.string	"crt"
	.byte	0x14
	.byte	0xfb
	.byte	0x17
	.4byte	0xe0d
	.byte	0
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x14
	.byte	0xfc
	.byte	0xe
	.4byte	0xb0
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	0xd7c
	.uleb128 0xe
	.4byte	.LASF189
	.byte	0x14
	.byte	0xfd
	.byte	0x3
	.4byte	0xdea
	.uleb128 0x20
	.byte	0x58
	.byte	0x14
	.2byte	0x107
	.byte	0x9
	.4byte	0xe53
	.uleb128 0x2
	.4byte	.LASF190
	.byte	0x14
	.2byte	0x108
	.byte	0x28
	.4byte	0xe53
	.byte	0
	.uleb128 0x13
	.string	"len"
	.byte	0x14
	.2byte	0x109
	.byte	0xe
	.4byte	0x74
	.byte	0x50
	.uleb128 0x2
	.4byte	.LASF191
	.byte	0x14
	.2byte	0x110
	.byte	0x17
	.4byte	0xe0d
	.byte	0x54
	.byte	0
	.uleb128 0x17
	.4byte	0xe12
	.4byte	0xe63
	.uleb128 0x18
	.4byte	0x74
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.4byte	.LASF192
	.byte	0x14
	.2byte	0x112
	.byte	0x3
	.4byte	0xe1e
	.uleb128 0x22
	.byte	0x1
	.4byte	0x32
	.byte	0x14
	.2byte	0x126
	.byte	0xa
	.4byte	0xe8b
	.uleb128 0x3
	.4byte	.LASF193
	.byte	0
	.uleb128 0x3
	.4byte	.LASF194
	.byte	0x1
	.byte	0
	.uleb128 0x20
	.byte	0x78
	.byte	0x14
	.2byte	0x119
	.byte	0x9
	.4byte	0xf05
	.uleb128 0x13
	.string	"pk"
	.byte	0x14
	.2byte	0x11b
	.byte	0x1c
	.4byte	0x7ce
	.byte	0
	.uleb128 0x2
	.4byte	.LASF195
	.byte	0x14
	.2byte	0x11e
	.byte	0x17
	.4byte	0xe0d
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF196
	.byte	0x14
	.2byte	0x11f
	.byte	0x17
	.4byte	0xe0d
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF197
	.byte	0x14
	.2byte	0x120
	.byte	0x9
	.4byte	0x68
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF198
	.byte	0x14
	.2byte	0x123
	.byte	0x9
	.4byte	0x68
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF199
	.byte	0x14
	.2byte	0x129
	.byte	0x7
	.4byte	0xe70
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF200
	.byte	0x14
	.2byte	0x12a
	.byte	0x9
	.4byte	0x68
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF201
	.byte	0x14
	.2byte	0x12b
	.byte	0x23
	.4byte	0xe63
	.byte	0x20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF202
	.byte	0x14
	.2byte	0x12d
	.byte	0x3
	.4byte	0xe8b
	.uleb128 0x4
	.4byte	0xd88
	.uleb128 0x4
	.4byte	0x39
	.uleb128 0xa
	.4byte	.LASF203
	.byte	0x14
	.2byte	0x310
	.byte	0xf
	.4byte	0xf29
	.uleb128 0x4
	.4byte	0xf2e
	.uleb128 0x11
	.4byte	0x68
	.4byte	0xf47
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0xf12
	.uleb128 0x1
	.4byte	0xf47
	.byte	0
	.uleb128 0x4
	.4byte	0xe0d
	.uleb128 0x15
	.4byte	.LASF204
	.byte	0x50
	.byte	0x15
	.byte	0x65
	.byte	0x10
	.4byte	0xfce
	.uleb128 0x8
	.string	"P"
	.byte	0x15
	.byte	0x66
	.byte	0x11
	.4byte	0x1a6
	.byte	0
	.uleb128 0x8
	.string	"G"
	.byte	0x15
	.byte	0x67
	.byte	0x11
	.4byte	0x1a6
	.byte	0x8
	.uleb128 0x8
	.string	"X"
	.byte	0x15
	.byte	0x68
	.byte	0x11
	.4byte	0x1a6
	.byte	0x10
	.uleb128 0x8
	.string	"GX"
	.byte	0x15
	.byte	0x69
	.byte	0x11
	.4byte	0x1a6
	.byte	0x18
	.uleb128 0x8
	.string	"GY"
	.byte	0x15
	.byte	0x6a
	.byte	0x11
	.4byte	0x1a6
	.byte	0x20
	.uleb128 0x8
	.string	"K"
	.byte	0x15
	.byte	0x6b
	.byte	0x11
	.4byte	0x1a6
	.byte	0x28
	.uleb128 0x8
	.string	"RP"
	.byte	0x15
	.byte	0x6c
	.byte	0x11
	.4byte	0x1a6
	.byte	0x30
	.uleb128 0x8
	.string	"Vi"
	.byte	0x15
	.byte	0x6d
	.byte	0x11
	.4byte	0x1a6
	.byte	0x38
	.uleb128 0x8
	.string	"Vf"
	.byte	0x15
	.byte	0x6e
	.byte	0x11
	.4byte	0x1a6
	.byte	0x40
	.uleb128 0x8
	.string	"pX"
	.byte	0x15
	.byte	0x6f
	.byte	0x11
	.4byte	0x1a6
	.byte	0x48
	.byte	0
	.uleb128 0xe
	.4byte	.LASF204
	.byte	0x15
	.byte	0x71
	.byte	0x1
	.4byte	0xf4c
	.uleb128 0x23
	.byte	0x7
	.4byte	0x32
	.byte	0x16
	.byte	0x3b
	.4byte	0xff3
	.uleb128 0x3
	.4byte	.LASF205
	.byte	0
	.uleb128 0x3
	.4byte	.LASF206
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF207
	.byte	0x16
	.byte	0x3e
	.byte	0x3
	.4byte	0xfda
	.uleb128 0x15
	.4byte	.LASF208
	.byte	0xf0
	.byte	0x16
	.byte	0x69
	.byte	0x10
	.4byte	0x1091
	.uleb128 0x8
	.string	"grp"
	.byte	0x16
	.byte	0x6b
	.byte	0x17
	.4byte	0x356
	.byte	0
	.uleb128 0x8
	.string	"d"
	.byte	0x16
	.byte	0x6c
	.byte	0x11
	.4byte	0x1a6
	.byte	0x60
	.uleb128 0x8
	.string	"Q"
	.byte	0x16
	.byte	0x6d
	.byte	0x17
	.4byte	0x24e
	.byte	0x68
	.uleb128 0x8
	.string	"Qp"
	.byte	0x16
	.byte	0x6e
	.byte	0x17
	.4byte	0x24e
	.byte	0x80
	.uleb128 0x8
	.string	"z"
	.byte	0x16
	.byte	0x6f
	.byte	0x11
	.4byte	0x1a6
	.byte	0x98
	.uleb128 0x7
	.4byte	.LASF209
	.byte	0x16
	.byte	0x70
	.byte	0x9
	.4byte	0x68
	.byte	0xa0
	.uleb128 0x8
	.string	"Vi"
	.byte	0x16
	.byte	0x71
	.byte	0x17
	.4byte	0x24e
	.byte	0xa4
	.uleb128 0x8
	.string	"Vf"
	.byte	0x16
	.byte	0x72
	.byte	0x17
	.4byte	0x24e
	.byte	0xbc
	.uleb128 0x8
	.string	"_d"
	.byte	0x16
	.byte	0x73
	.byte	0x11
	.4byte	0x1a6
	.byte	0xd4
	.uleb128 0x7
	.4byte	.LASF210
	.byte	0x16
	.byte	0x75
	.byte	0x9
	.4byte	0x68
	.byte	0xdc
	.uleb128 0x8
	.string	"rs"
	.byte	0x16
	.byte	0x76
	.byte	0x1d
	.4byte	0x3d3
	.byte	0xe0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF208
	.byte	0x16
	.byte	0x8e
	.byte	0x1
	.4byte	0xfff
	.uleb128 0x12
	.4byte	0x1091
	.uleb128 0x17
	.4byte	0x32
	.4byte	0x10b2
	.uleb128 0x18
	.4byte	0x74
	.byte	0x65
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	0x32
	.byte	0x1
	.2byte	0x2eb
	.byte	0xe
	.4byte	0x1175
	.uleb128 0x3
	.4byte	.LASF211
	.byte	0
	.uleb128 0x3
	.4byte	.LASF212
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF213
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF214
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF215
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF216
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF217
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF218
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF219
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF220
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF221
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF222
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF223
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF224
	.byte	0xd
	.uleb128 0x3
	.4byte	.LASF225
	.byte	0xe
	.uleb128 0x3
	.4byte	.LASF226
	.byte	0xf
	.uleb128 0x3
	.4byte	.LASF227
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF228
	.byte	0x11
	.uleb128 0x3
	.4byte	.LASF229
	.byte	0x12
	.uleb128 0x3
	.4byte	.LASF230
	.byte	0x13
	.uleb128 0x3
	.4byte	.LASF231
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF232
	.byte	0x15
	.uleb128 0x3
	.4byte	.LASF233
	.byte	0x16
	.uleb128 0x3
	.4byte	.LASF234
	.byte	0x17
	.uleb128 0x3
	.4byte	.LASF235
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF236
	.byte	0x19
	.uleb128 0x3
	.4byte	.LASF237
	.byte	0x1a
	.uleb128 0x3
	.4byte	.LASF238
	.byte	0x1b
	.uleb128 0x3
	.4byte	.LASF239
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF240
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x30b
	.byte	0x1
	.4byte	0x10b2
	.uleb128 0xa
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x32d
	.byte	0xd
	.4byte	0x118f
	.uleb128 0x11
	.4byte	0x68
	.4byte	0x11a8
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0xf17
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0xa
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x345
	.byte	0xd
	.4byte	0x14d
	.uleb128 0xa
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x35f
	.byte	0xd
	.4byte	0x11c2
	.uleb128 0x11
	.4byte	0x68
	.4byte	0x11e0
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xb0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x379
	.byte	0xe
	.4byte	0x11ed
	.uleb128 0x26
	.4byte	0x1202
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0xb0
	.uleb128 0x1
	.4byte	0xb0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x388
	.byte	0xd
	.4byte	0x120f
	.uleb128 0x11
	.4byte	0x68
	.4byte	0x121e
	.uleb128 0x1
	.4byte	0xd4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x38b
	.byte	0x24
	.4byte	0x1230
	.uleb128 0x12
	.4byte	0x121e
	.uleb128 0x1e
	.4byte	.LASF247
	.byte	0x78
	.byte	0x1
	.2byte	0x4fb
	.byte	0x8
	.4byte	0x1302
	.uleb128 0x2
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x4fd
	.byte	0x13
	.4byte	0x32
	.byte	0
	.uleb128 0x2
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x505
	.byte	0x13
	.4byte	0x32
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x506
	.byte	0xd
	.4byte	0x8e
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x50b
	.byte	0x22
	.4byte	0x21df
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x510
	.byte	0x9
	.4byte	0x68
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x511
	.byte	0xc
	.4byte	0x7b
	.byte	0xc
	.uleb128 0x13
	.string	"id"
	.byte	0x1
	.2byte	0x512
	.byte	0x13
	.4byte	0x21ec
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x513
	.byte	0x13
	.4byte	0x21fc
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x517
	.byte	0x17
	.4byte	0xe0d
	.byte	0x60
	.uleb128 0x2
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x520
	.byte	0xe
	.4byte	0xb0
	.byte	0x64
	.uleb128 0x2
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x523
	.byte	0x14
	.4byte	0xdb
	.byte	0x68
	.uleb128 0x2
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x524
	.byte	0xc
	.4byte	0x7b
	.byte	0x6c
	.uleb128 0x2
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x525
	.byte	0xe
	.4byte	0xb0
	.byte	0x70
	.uleb128 0x2
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x557
	.byte	0x9
	.4byte	0x68
	.byte	0x74
	.byte	0
	.uleb128 0xa
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x38c
	.byte	0x24
	.4byte	0x1314
	.uleb128 0x12
	.4byte	0x1302
	.uleb128 0x2b
	.4byte	.LASF261
	.2byte	0x260
	.byte	0x1
	.2byte	0x6c3
	.byte	0x8
	.4byte	0x174b
	.uleb128 0x2
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x6c4
	.byte	0x1f
	.4byte	0x2455
	.byte	0
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x6c9
	.byte	0x9
	.4byte	0x68
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x6cb
	.byte	0x9
	.4byte	0x68
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x6cc
	.byte	0x9
	.4byte	0x68
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x6e1
	.byte	0x22
	.4byte	0x21df
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF265
	.byte	0x1
	.2byte	0x6f4
	.byte	0xe
	.4byte	0x74
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x6f8
	.byte	0xa
	.4byte	0x2369
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x6f9
	.byte	0xb
	.4byte	0xd4
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x6fc
	.byte	0x19
	.4byte	0x245a
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x6fd
	.byte	0x19
	.4byte	0x245f
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x6fe
	.byte	0x21
	.4byte	0x2464
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x701
	.byte	0xb
	.4byte	0xd4
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x706
	.byte	0x1a
	.4byte	0x207b
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x707
	.byte	0x1a
	.4byte	0x207b
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF274
	.byte	0x1
	.2byte	0x708
	.byte	0x1a
	.4byte	0x207b
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x709
	.byte	0x1a
	.4byte	0x207b
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x70b
	.byte	0x23
	.4byte	0x2469
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x711
	.byte	0x1c
	.4byte	0x246e
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x714
	.byte	0x1c
	.4byte	0x246e
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x717
	.byte	0x1c
	.4byte	0x246e
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x71b
	.byte	0x1c
	.4byte	0x246e
	.byte	0x50
	.uleb128 0x2
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x729
	.byte	0xb
	.4byte	0xd4
	.byte	0x54
	.uleb128 0x2
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x72b
	.byte	0x1e
	.4byte	0x2473
	.byte	0x58
	.uleb128 0x2
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x72c
	.byte	0x1e
	.4byte	0x2478
	.byte	0x5c
	.uleb128 0x2
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x731
	.byte	0x14
	.4byte	0xdb
	.byte	0x60
	.uleb128 0x2
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x732
	.byte	0x14
	.4byte	0xdb
	.byte	0x64
	.uleb128 0x2
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x735
	.byte	0x14
	.4byte	0xdb
	.byte	0x68
	.uleb128 0x2
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x737
	.byte	0x14
	.4byte	0xdb
	.byte	0x6c
	.uleb128 0x2
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x73a
	.byte	0x14
	.4byte	0xdb
	.byte	0x70
	.uleb128 0x2
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x73b
	.byte	0x14
	.4byte	0xdb
	.byte	0x74
	.uleb128 0x2
	.4byte	.LASF290
	.byte	0x1
	.2byte	0x73c
	.byte	0x14
	.4byte	0xdb
	.byte	0x78
	.uleb128 0x2
	.4byte	.LASF291
	.byte	0x1
	.2byte	0x73d
	.byte	0x14
	.4byte	0xdb
	.byte	0x7c
	.uleb128 0x2
	.4byte	.LASF292
	.byte	0x1
	.2byte	0x73f
	.byte	0x9
	.4byte	0x68
	.byte	0x80
	.uleb128 0x2
	.4byte	.LASF293
	.byte	0x1
	.2byte	0x740
	.byte	0xc
	.4byte	0x7b
	.byte	0x84
	.uleb128 0x2
	.4byte	.LASF294
	.byte	0x1
	.2byte	0x741
	.byte	0xc
	.4byte	0x7b
	.byte	0x88
	.uleb128 0x2
	.4byte	.LASF295
	.byte	0x1
	.2byte	0x743
	.byte	0xc
	.4byte	0x7b
	.byte	0x8c
	.uleb128 0x2
	.4byte	.LASF296
	.byte	0x1
	.2byte	0x746
	.byte	0xe
	.4byte	0x9f
	.byte	0x90
	.uleb128 0x2
	.4byte	.LASF297
	.byte	0x1
	.2byte	0x747
	.byte	0xc
	.4byte	0x7b
	.byte	0x94
	.uleb128 0x2
	.4byte	.LASF298
	.byte	0x1
	.2byte	0x74b
	.byte	0xe
	.4byte	0xbc
	.byte	0x98
	.uleb128 0x2
	.4byte	.LASF299
	.byte	0x1
	.2byte	0x74c
	.byte	0xe
	.4byte	0xbc
	.byte	0xa0
	.uleb128 0x2
	.4byte	.LASF300
	.byte	0x1
	.2byte	0x74f
	.byte	0xc
	.4byte	0x7b
	.byte	0xa8
	.uleb128 0x2
	.4byte	.LASF301
	.byte	0x1
	.2byte	0x751
	.byte	0x9
	.4byte	0x68
	.byte	0xac
	.uleb128 0x2
	.4byte	.LASF302
	.byte	0x1
	.2byte	0x753
	.byte	0x9
	.4byte	0x68
	.byte	0xb0
	.uleb128 0x2
	.4byte	.LASF303
	.byte	0x1
	.2byte	0x759
	.byte	0x13
	.4byte	0x32
	.byte	0xb4
	.uleb128 0x2
	.4byte	.LASF304
	.byte	0x1
	.2byte	0x75d
	.byte	0x13
	.4byte	0x32
	.byte	0xb5
	.uleb128 0x2
	.4byte	.LASF305
	.byte	0x1
	.2byte	0x75f
	.byte	0x9
	.4byte	0x68
	.byte	0xb8
	.uleb128 0x2
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x764
	.byte	0xd
	.4byte	0x8e
	.byte	0xbc
	.uleb128 0x2
	.4byte	.LASF307
	.byte	0x1
	.2byte	0x778
	.byte	0x14
	.4byte	0xdb
	.byte	0xc0
	.uleb128 0x2
	.4byte	.LASF308
	.byte	0x1
	.2byte	0x779
	.byte	0x14
	.4byte	0xdb
	.byte	0xc4
	.uleb128 0x2
	.4byte	.LASF309
	.byte	0x1
	.2byte	0x77a
	.byte	0x14
	.4byte	0xdb
	.byte	0xc8
	.uleb128 0x2
	.4byte	.LASF310
	.byte	0x1
	.2byte	0x77c
	.byte	0x14
	.4byte	0xdb
	.byte	0xcc
	.uleb128 0x2
	.4byte	.LASF311
	.byte	0x1
	.2byte	0x77f
	.byte	0x14
	.4byte	0xdb
	.byte	0xd0
	.uleb128 0x2
	.4byte	.LASF312
	.byte	0x1
	.2byte	0x780
	.byte	0x14
	.4byte	0xdb
	.byte	0xd4
	.uleb128 0x2
	.4byte	.LASF313
	.byte	0x1
	.2byte	0x781
	.byte	0x14
	.4byte	0xdb
	.byte	0xd8
	.uleb128 0x2
	.4byte	.LASF314
	.byte	0x1
	.2byte	0x783
	.byte	0x9
	.4byte	0x68
	.byte	0xdc
	.uleb128 0x2
	.4byte	.LASF315
	.byte	0x1
	.2byte	0x784
	.byte	0xc
	.4byte	0x7b
	.byte	0xe0
	.uleb128 0x2
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x785
	.byte	0xc
	.4byte	0x7b
	.byte	0xe4
	.uleb128 0x2
	.4byte	.LASF317
	.byte	0x1
	.2byte	0x787
	.byte	0xc
	.4byte	0x7b
	.byte	0xe8
	.uleb128 0x2
	.4byte	.LASF318
	.byte	0x1
	.2byte	0x78a
	.byte	0x13
	.4byte	0x2445
	.byte	0xec
	.uleb128 0x13
	.string	"mtu"
	.byte	0x1
	.2byte	0x78d
	.byte	0xe
	.4byte	0x9f
	.byte	0xf4
	.uleb128 0x2
	.4byte	.LASF319
	.byte	0x1
	.2byte	0x7b0
	.byte	0xb
	.4byte	0xe0
	.byte	0xf8
	.uleb128 0x2
	.4byte	.LASF320
	.byte	0x1
	.2byte	0x7b4
	.byte	0x11
	.4byte	0xf1
	.byte	0xfc
	.uleb128 0x9
	.4byte	.LASF321
	.byte	0x1
	.2byte	0x7bb
	.byte	0x1c
	.4byte	0x21af
	.2byte	0x100
	.uleb128 0x9
	.4byte	.LASF322
	.byte	0x1
	.2byte	0x7c2
	.byte	0x14
	.4byte	0xdb
	.2byte	0x204
	.uleb128 0x9
	.4byte	.LASF323
	.byte	0x1
	.2byte	0x7c3
	.byte	0xc
	.4byte	0x7b
	.2byte	0x208
	.uleb128 0x9
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x7ca
	.byte	0x9
	.4byte	0x68
	.2byte	0x20c
	.uleb128 0x9
	.4byte	.LASF325
	.byte	0x1
	.2byte	0x7cd
	.byte	0xc
	.4byte	0x7b
	.2byte	0x210
	.uleb128 0x9
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x7ce
	.byte	0xa
	.4byte	0x247d
	.2byte	0x214
	.uleb128 0x9
	.4byte	.LASF327
	.byte	0x1
	.2byte	0x7cf
	.byte	0xa
	.4byte	0x247d
	.2byte	0x220
	.uleb128 0x9
	.4byte	.LASF328
	.byte	0x1
	.2byte	0x7d9
	.byte	0x13
	.4byte	0x21ec
	.2byte	0x22c
	.uleb128 0x9
	.4byte	.LASF329
	.byte	0x1
	.2byte	0x7da
	.byte	0xd
	.4byte	0x8e
	.2byte	0x24c
	.uleb128 0x9
	.4byte	.LASF330
	.byte	0x1
	.2byte	0x7db
	.byte	0xd
	.4byte	0x8e
	.2byte	0x24d
	.uleb128 0x9
	.4byte	.LASF331
	.byte	0x1
	.2byte	0x7e2
	.byte	0x20
	.4byte	0x248d
	.2byte	0x250
	.uleb128 0x9
	.4byte	.LASF332
	.byte	0x1
	.2byte	0x7e3
	.byte	0xb
	.4byte	0xd4
	.2byte	0x254
	.uleb128 0x9
	.4byte	.LASF333
	.byte	0x1
	.2byte	0x7ee
	.byte	0x1d
	.4byte	0x22de
	.2byte	0x258
	.byte	0
	.uleb128 0xa
	.4byte	.LASF334
	.byte	0x1
	.2byte	0x38d
	.byte	0x23
	.4byte	0x175d
	.uleb128 0x12
	.4byte	0x174b
	.uleb128 0x1e
	.4byte	.LASF334
	.byte	0xf4
	.byte	0x1
	.2byte	0x5af
	.byte	0x8
	.4byte	0x1b32
	.uleb128 0x2
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x5b5
	.byte	0x22
	.4byte	0x21df
	.byte	0
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x5b6
	.byte	0x22
	.4byte	0x21df
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x5be
	.byte	0xd
	.4byte	0x8e
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x5bf
	.byte	0xd
	.4byte	0x8e
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x5c0
	.byte	0xd
	.4byte	0x8e
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF337
	.byte	0x1
	.2byte	0x5c2
	.byte	0xd
	.4byte	0x8e
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x5c4
	.byte	0xd
	.4byte	0x8e
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x5c8
	.byte	0xd
	.4byte	0x8e
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF338
	.byte	0x1
	.2byte	0x5cb
	.byte	0xd
	.4byte	0x8e
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x5ce
	.byte	0xd
	.4byte	0x8e
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF340
	.byte	0x1
	.2byte	0x5d1
	.byte	0xd
	.4byte	0x8e
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF341
	.byte	0x1
	.2byte	0x5db
	.byte	0xd
	.4byte	0x8e
	.byte	0xd
	.uleb128 0x2
	.4byte	.LASF342
	.byte	0x1
	.2byte	0x5e5
	.byte	0xd
	.4byte	0x8e
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF343
	.byte	0x1
	.2byte	0x5e7
	.byte	0xd
	.4byte	0x8e
	.byte	0xf
	.uleb128 0x2
	.4byte	.LASF344
	.byte	0x1
	.2byte	0x5ec
	.byte	0xd
	.4byte	0x8e
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF345
	.byte	0x1
	.2byte	0x5f1
	.byte	0xd
	.4byte	0x8e
	.byte	0x11
	.uleb128 0x2
	.4byte	.LASF346
	.byte	0x1
	.2byte	0x5fa
	.byte	0x10
	.4byte	0x22eb
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF347
	.byte	0x1
	.2byte	0x602
	.byte	0xb
	.4byte	0x230f
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF348
	.byte	0x1
	.2byte	0x603
	.byte	0xb
	.4byte	0xd4
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF349
	.byte	0x1
	.2byte	0x606
	.byte	0xa
	.4byte	0x2314
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF350
	.byte	0x1
	.2byte	0x607
	.byte	0xb
	.4byte	0xd4
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF351
	.byte	0x1
	.2byte	0x60a
	.byte	0x1e
	.4byte	0x2319
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF352
	.byte	0x1
	.2byte	0x60c
	.byte	0x1e
	.4byte	0x231e
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF353
	.byte	0x1
	.2byte	0x60d
	.byte	0xb
	.4byte	0xd4
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF354
	.byte	0x1
	.2byte	0x611
	.byte	0xa
	.4byte	0x2341
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF355
	.byte	0x1
	.2byte	0x612
	.byte	0xb
	.4byte	0xd4
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x617
	.byte	0xa
	.4byte	0x2369
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x618
	.byte	0xb
	.4byte	0xd4
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF356
	.byte	0x1
	.2byte	0x61e
	.byte	0xa
	.4byte	0x2341
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF357
	.byte	0x1
	.2byte	0x61f
	.byte	0xb
	.4byte	0xd4
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF358
	.byte	0x1
	.2byte	0x625
	.byte	0xa
	.4byte	0x2396
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF359
	.byte	0x1
	.2byte	0x628
	.byte	0xa
	.4byte	0x23be
	.byte	0x50
	.uleb128 0x2
	.4byte	.LASF360
	.byte	0x1
	.2byte	0x62a
	.byte	0xb
	.4byte	0xd4
	.byte	0x54
	.uleb128 0x2
	.4byte	.LASF361
	.byte	0x1
	.2byte	0x62f
	.byte	0xa
	.4byte	0x23eb
	.byte	0x58
	.uleb128 0x2
	.4byte	.LASF362
	.byte	0x1
	.2byte	0x633
	.byte	0xa
	.4byte	0x240e
	.byte	0x5c
	.uleb128 0x2
	.4byte	.LASF363
	.byte	0x1
	.2byte	0x634
	.byte	0xb
	.4byte	0xd4
	.byte	0x60
	.uleb128 0x2
	.4byte	.LASF364
	.byte	0x1
	.2byte	0x637
	.byte	0xc
	.4byte	0x7b
	.byte	0x64
	.uleb128 0x2
	.4byte	.LASF365
	.byte	0x1
	.2byte	0x63b
	.byte	0x25
	.4byte	0x2413
	.byte	0x68
	.uleb128 0x2
	.4byte	.LASF366
	.byte	0x1
	.2byte	0x63c
	.byte	0x1b
	.4byte	0x2418
	.byte	0x6c
	.uleb128 0x2
	.4byte	.LASF367
	.byte	0x1
	.2byte	0x63d
	.byte	0x17
	.4byte	0xe0d
	.byte	0x70
	.uleb128 0x2
	.4byte	.LASF368
	.byte	0x1
	.2byte	0x63e
	.byte	0x17
	.4byte	0x241d
	.byte	0x74
	.uleb128 0x2
	.4byte	.LASF369
	.byte	0x1
	.2byte	0x640
	.byte	0x1e
	.4byte	0xf1c
	.byte	0x78
	.uleb128 0x2
	.4byte	.LASF370
	.byte	0x1
	.2byte	0x641
	.byte	0xb
	.4byte	0xd4
	.byte	0x7c
	.uleb128 0x2
	.4byte	.LASF371
	.byte	0x1
	.2byte	0x647
	.byte	0x1f
	.4byte	0x2422
	.byte	0x80
	.uleb128 0x2
	.4byte	.LASF372
	.byte	0x1
	.2byte	0x648
	.byte	0x22
	.4byte	0x2427
	.byte	0x84
	.uleb128 0x2
	.4byte	.LASF373
	.byte	0x1
	.2byte	0x64a
	.byte	0x21
	.4byte	0x242c
	.byte	0x88
	.uleb128 0x2
	.4byte	.LASF374
	.byte	0x1
	.2byte	0x64b
	.byte	0x21
	.4byte	0x2431
	.byte	0x8c
	.uleb128 0x2
	.4byte	.LASF375
	.byte	0x1
	.2byte	0x64c
	.byte	0xb
	.4byte	0xd4
	.byte	0x90
	.uleb128 0x2
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x654
	.byte	0x15
	.4byte	0x2436
	.byte	0x94
	.uleb128 0x2
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x65b
	.byte	0x15
	.4byte	0x2436
	.byte	0x98
	.uleb128 0x2
	.4byte	.LASF378
	.byte	0x1
	.2byte	0x65e
	.byte	0x11
	.4byte	0x1a6
	.byte	0x9c
	.uleb128 0x2
	.4byte	.LASF379
	.byte	0x1
	.2byte	0x65f
	.byte	0x11
	.4byte	0x1a6
	.byte	0xa4
	.uleb128 0x13
	.string	"psk"
	.byte	0x1
	.2byte	0x66c
	.byte	0x14
	.4byte	0xdb
	.byte	0xac
	.uleb128 0x2
	.4byte	.LASF380
	.byte	0x1
	.2byte	0x670
	.byte	0xc
	.4byte	0x7b
	.byte	0xb0
	.uleb128 0x2
	.4byte	.LASF381
	.byte	0x1
	.2byte	0x676
	.byte	0x14
	.4byte	0xdb
	.byte	0xb4
	.uleb128 0x2
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x67b
	.byte	0xc
	.4byte	0x7b
	.byte	0xb8
	.uleb128 0x2
	.4byte	.LASF383
	.byte	0x1
	.2byte	0x690
	.byte	0x12
	.4byte	0x243b
	.byte	0xbc
	.uleb128 0x2
	.4byte	.LASF384
	.byte	0x1
	.2byte	0x695
	.byte	0x25
	.4byte	0x2440
	.byte	0xc0
	.uleb128 0x2
	.4byte	.LASF385
	.byte	0x1
	.2byte	0x697
	.byte	0xc
	.4byte	0x7b
	.byte	0xc4
	.uleb128 0x2
	.4byte	.LASF386
	.byte	0x1
	.2byte	0x69e
	.byte	0xe
	.4byte	0xb0
	.byte	0xc8
	.uleb128 0x2
	.4byte	.LASF387
	.byte	0x1
	.2byte	0x6a1
	.byte	0xe
	.4byte	0xb0
	.byte	0xcc
	.uleb128 0x2
	.4byte	.LASF388
	.byte	0x1
	.2byte	0x6a3
	.byte	0xe
	.4byte	0xb0
	.byte	0xd0
	.uleb128 0x2
	.4byte	.LASF389
	.byte	0x1
	.2byte	0x6a8
	.byte	0x9
	.4byte	0x68
	.byte	0xd4
	.uleb128 0x2
	.4byte	.LASF390
	.byte	0x1
	.2byte	0x6a9
	.byte	0x13
	.4byte	0x2445
	.byte	0xd8
	.uleb128 0x2
	.4byte	.LASF391
	.byte	0x1
	.2byte	0x6ad
	.byte	0x12
	.4byte	0x74
	.byte	0xe0
	.uleb128 0x2
	.4byte	.LASF392
	.byte	0x1
	.2byte	0x6b0
	.byte	0x12
	.4byte	0x74
	.byte	0xe4
	.uleb128 0x2
	.4byte	.LASF333
	.byte	0x1
	.2byte	0x6b8
	.byte	0x1d
	.4byte	0x22de
	.byte	0xe8
	.uleb128 0x2
	.4byte	.LASF393
	.byte	0x1
	.2byte	0x6bb
	.byte	0x19
	.4byte	0x229e
	.byte	0xec
	.uleb128 0x2
	.4byte	.LASF394
	.byte	0x1
	.2byte	0x6bf
	.byte	0x1d
	.4byte	0xf12
	.byte	0xf0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF395
	.byte	0x1
	.2byte	0x390
	.byte	0x26
	.4byte	0x1b3f
	.uleb128 0x2b
	.4byte	.LASF395
	.2byte	0x160
	.byte	0x4
	.2byte	0x461
	.byte	0x8
	.4byte	0x1c4c
	.uleb128 0x2
	.4byte	.LASF396
	.byte	0x4
	.2byte	0x465
	.byte	0xc
	.4byte	0x7b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF397
	.byte	0x4
	.2byte	0x466
	.byte	0xc
	.4byte	0x7b
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF398
	.byte	0x4
	.2byte	0x467
	.byte	0xc
	.4byte	0x7b
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF399
	.byte	0x4
	.2byte	0x468
	.byte	0xc
	.4byte	0x7b
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF400
	.byte	0x4
	.2byte	0x469
	.byte	0xc
	.4byte	0x7b
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF401
	.byte	0x4
	.2byte	0x46b
	.byte	0x13
	.4byte	0x6e7
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF402
	.byte	0x4
	.2byte	0x46c
	.byte	0x13
	.4byte	0x6e7
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF403
	.byte	0x4
	.2byte	0x475
	.byte	0x1a
	.4byte	0x4d8
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF404
	.byte	0x4
	.2byte	0x476
	.byte	0x1a
	.4byte	0x4d8
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF260
	.byte	0x4
	.2byte	0x47a
	.byte	0x9
	.4byte	0x68
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF251
	.byte	0x4
	.2byte	0x47f
	.byte	0x22
	.4byte	0x21df
	.byte	0x50
	.uleb128 0x2
	.4byte	.LASF405
	.byte	0x4
	.2byte	0x486
	.byte	0x1e
	.4byte	0x6fc
	.byte	0x54
	.uleb128 0x2
	.4byte	.LASF406
	.byte	0x4
	.2byte	0x487
	.byte	0x1e
	.4byte	0x6fc
	.byte	0x98
	.uleb128 0x2
	.4byte	.LASF407
	.byte	0x4
	.2byte	0x48b
	.byte	0xd
	.4byte	0x8e
	.byte	0xdc
	.uleb128 0x2
	.4byte	.LASF408
	.byte	0x4
	.2byte	0x48c
	.byte	0xd
	.4byte	0x8e
	.byte	0xdd
	.uleb128 0x2
	.4byte	.LASF287
	.byte	0x4
	.2byte	0x48d
	.byte	0x13
	.4byte	0x21ec
	.byte	0xde
	.uleb128 0x2
	.4byte	.LASF310
	.byte	0x4
	.2byte	0x48e
	.byte	0x13
	.4byte	0x21ec
	.byte	0xfe
	.uleb128 0x9
	.4byte	.LASF409
	.byte	0x4
	.2byte	0x496
	.byte	0x13
	.4byte	0x4e4
	.2byte	0x11e
	.byte	0
	.uleb128 0xa
	.4byte	.LASF410
	.byte	0x1
	.2byte	0x391
	.byte	0x2d
	.4byte	0x1c59
	.uleb128 0x2b
	.4byte	.LASF410
	.2byte	0x3e4
	.byte	0x4
	.2byte	0x285
	.byte	0x8
	.4byte	0x1fb8
	.uleb128 0x2
	.4byte	.LASF411
	.byte	0x4
	.2byte	0x288
	.byte	0xd
	.4byte	0x8e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF412
	.byte	0x4
	.2byte	0x289
	.byte	0xd
	.4byte	0x8e
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF413
	.byte	0x4
	.2byte	0x28c
	.byte	0xd
	.4byte	0x8e
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF414
	.byte	0x4
	.2byte	0x292
	.byte	0xd
	.4byte	0x8e
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF415
	.byte	0x4
	.2byte	0x29a
	.byte	0xd
	.4byte	0x8e
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0x4
	.2byte	0x2b0
	.byte	0x22
	.4byte	0x21df
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF338
	.byte	0x4
	.2byte	0x2b4
	.byte	0xd
	.4byte	0x8e
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF416
	.byte	0x4
	.2byte	0x2b8
	.byte	0xd
	.4byte	0x8e
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF417
	.byte	0x4
	.2byte	0x2bc
	.byte	0x13
	.4byte	0x32
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF418
	.byte	0x4
	.2byte	0x2c5
	.byte	0xd
	.4byte	0x8e
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF419
	.byte	0x4
	.2byte	0x2cc
	.byte	0x7
	.4byte	0x24f7
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF420
	.byte	0x4
	.2byte	0x2cd
	.byte	0x17
	.4byte	0xe0d
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF421
	.byte	0x4
	.2byte	0x2ce
	.byte	0xc
	.4byte	0x7b
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF422
	.byte	0x4
	.2byte	0x2d1
	.byte	0x26
	.4byte	0x268e
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF423
	.byte	0x4
	.2byte	0x2d4
	.byte	0xb
	.4byte	0x26ac
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF424
	.byte	0x4
	.2byte	0x2d6
	.byte	0xb
	.4byte	0x26cf
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF425
	.byte	0x4
	.2byte	0x2d8
	.byte	0xb
	.4byte	0x26ed
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF426
	.byte	0x4
	.2byte	0x2d9
	.byte	0x1d
	.4byte	0x26f2
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF427
	.byte	0x4
	.2byte	0x300
	.byte	0xe
	.4byte	0x26f7
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF428
	.byte	0x4
	.2byte	0x309
	.byte	0x19
	.4byte	0xfce
	.byte	0x54
	.uleb128 0x2
	.4byte	.LASF429
	.byte	0x4
	.2byte	0x30e
	.byte	0x1a
	.4byte	0x1091
	.byte	0xa4
	.uleb128 0x9
	.4byte	.LASF430
	.byte	0x4
	.2byte	0x32c
	.byte	0xf
	.4byte	0x2707
	.2byte	0x194
	.uleb128 0x33
	.string	"psk"
	.2byte	0x334
	.byte	0x14
	.4byte	0xdb
	.2byte	0x198
	.uleb128 0x9
	.4byte	.LASF380
	.byte	0x4
	.2byte	0x335
	.byte	0xc
	.4byte	0x7b
	.2byte	0x19c
	.uleb128 0x9
	.4byte	.LASF431
	.byte	0x4
	.2byte	0x337
	.byte	0xe
	.4byte	0x9f
	.2byte	0x1a0
	.uleb128 0x9
	.4byte	.LASF432
	.byte	0x4
	.2byte	0x33b
	.byte	0x22
	.4byte	0xf05
	.2byte	0x1a4
	.uleb128 0x9
	.4byte	.LASF366
	.byte	0x4
	.2byte	0x33f
	.byte	0x1b
	.4byte	0x2418
	.2byte	0x21c
	.uleb128 0x9
	.4byte	.LASF433
	.byte	0x4
	.2byte	0x341
	.byte	0x1b
	.4byte	0x2418
	.2byte	0x220
	.uleb128 0x9
	.4byte	.LASF434
	.byte	0x4
	.2byte	0x342
	.byte	0x17
	.4byte	0xe0d
	.2byte	0x224
	.uleb128 0x9
	.4byte	.LASF435
	.byte	0x4
	.2byte	0x343
	.byte	0x17
	.4byte	0x241d
	.2byte	0x228
	.uleb128 0x9
	.4byte	.LASF436
	.byte	0x4
	.2byte	0x361
	.byte	0x7
	.4byte	0x25b1
	.2byte	0x22c
	.uleb128 0x9
	.4byte	.LASF437
	.byte	0x4
	.2byte	0x366
	.byte	0x14
	.4byte	0xdb
	.2byte	0x270
	.uleb128 0x9
	.4byte	.LASF438
	.byte	0x4
	.2byte	0x36e
	.byte	0xd
	.4byte	0x8e
	.2byte	0x274
	.uleb128 0x9
	.4byte	.LASF439
	.byte	0x4
	.2byte	0x37d
	.byte	0x13
	.4byte	0x32
	.2byte	0x275
	.uleb128 0x9
	.4byte	.LASF440
	.byte	0x4
	.2byte	0x381
	.byte	0x12
	.4byte	0x74
	.2byte	0x278
	.uleb128 0x9
	.4byte	.LASF441
	.byte	0x4
	.2byte	0x382
	.byte	0x12
	.4byte	0x74
	.2byte	0x27c
	.uleb128 0x9
	.4byte	.LASF442
	.byte	0x4
	.2byte	0x384
	.byte	0xe
	.4byte	0xb0
	.2byte	0x280
	.uleb128 0x9
	.4byte	.LASF443
	.byte	0x4
	.2byte	0x385
	.byte	0x1e
	.4byte	0x270c
	.2byte	0x284
	.uleb128 0x9
	.4byte	.LASF444
	.byte	0x4
	.2byte	0x386
	.byte	0x1e
	.4byte	0x270c
	.2byte	0x288
	.uleb128 0x9
	.4byte	.LASF445
	.byte	0x4
	.2byte	0x387
	.byte	0x14
	.4byte	0xdb
	.2byte	0x28c
	.uleb128 0x9
	.4byte	.LASF446
	.byte	0x4
	.2byte	0x388
	.byte	0x12
	.4byte	0x74
	.2byte	0x290
	.uleb128 0x9
	.4byte	.LASF447
	.byte	0x4
	.2byte	0x38a
	.byte	0x1c
	.4byte	0x246e
	.2byte	0x294
	.uleb128 0x9
	.4byte	.LASF448
	.byte	0x4
	.2byte	0x38c
	.byte	0x13
	.4byte	0x2445
	.2byte	0x298
	.uleb128 0x9
	.4byte	.LASF449
	.byte	0x4
	.2byte	0x392
	.byte	0xd
	.4byte	0x8e
	.2byte	0x2a0
	.uleb128 0x9
	.4byte	.LASF450
	.byte	0x4
	.2byte	0x396
	.byte	0x13
	.4byte	0x21ec
	.2byte	0x2a1
	.uleb128 0x9
	.4byte	.LASF451
	.byte	0x4
	.2byte	0x397
	.byte	0xd
	.4byte	0x8e
	.2byte	0x2c1
	.uleb128 0x33
	.string	"mtu"
	.2byte	0x39b
	.byte	0xe
	.4byte	0x9f
	.2byte	0x2c2
	.uleb128 0x9
	.4byte	.LASF452
	.byte	0x4
	.2byte	0x3a5
	.byte	0x1a
	.4byte	0x4d8
	.2byte	0x2c4
	.uleb128 0x9
	.4byte	.LASF453
	.byte	0x4
	.2byte	0x3ac
	.byte	0x1a
	.4byte	0x4d8
	.2byte	0x2d0
	.uleb128 0x9
	.4byte	.LASF454
	.byte	0x4
	.2byte	0x3bb
	.byte	0xd
	.4byte	0x8e
	.2byte	0x2dc
	.uleb128 0x9
	.4byte	.LASF455
	.byte	0x4
	.2byte	0x3d9
	.byte	0x7
	.4byte	0x266d
	.2byte	0x2e0
	.uleb128 0x9
	.4byte	.LASF409
	.byte	0x4
	.2byte	0x3dd
	.byte	0x13
	.4byte	0x4e4
	.2byte	0x328
	.uleb128 0x9
	.4byte	.LASF456
	.byte	0x4
	.2byte	0x3e1
	.byte	0x13
	.4byte	0x10a2
	.2byte	0x368
	.uleb128 0x9
	.4byte	.LASF457
	.byte	0x4
	.2byte	0x3e3
	.byte	0xc
	.4byte	0x7b
	.2byte	0x3d0
	.uleb128 0x9
	.4byte	.LASF458
	.byte	0x4
	.2byte	0x404
	.byte	0xb
	.4byte	0xd4
	.2byte	0x3d4
	.uleb128 0x9
	.4byte	.LASF459
	.byte	0x4
	.2byte	0x408
	.byte	0x1a
	.4byte	0xf17
	.2byte	0x3d8
	.uleb128 0x9
	.4byte	.LASF460
	.byte	0x4
	.2byte	0x409
	.byte	0xc
	.4byte	0x7b
	.2byte	0x3dc
	.uleb128 0x9
	.4byte	.LASF394
	.byte	0x4
	.2byte	0x40b
	.byte	0x1d
	.4byte	0xf12
	.2byte	0x3e0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF461
	.byte	0x1
	.2byte	0x394
	.byte	0x25
	.4byte	0x1fc5
	.uleb128 0x1e
	.4byte	.LASF461
	.byte	0xc
	.byte	0x4
	.2byte	0x4e4
	.byte	0x8
	.4byte	0x1ffe
	.uleb128 0x2
	.4byte	.LASF462
	.byte	0x4
	.2byte	0x4e5
	.byte	0x17
	.4byte	0xe0d
	.byte	0
	.uleb128 0x13
	.string	"key"
	.byte	0x4
	.2byte	0x4e6
	.byte	0x19
	.4byte	0xde0
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF134
	.byte	0x4
	.2byte	0x4e7
	.byte	0x1b
	.4byte	0x2418
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	.LASF463
	.byte	0x1
	.2byte	0x397
	.byte	0x28
	.4byte	0x200b
	.uleb128 0x1e
	.4byte	.LASF463
	.byte	0x10
	.byte	0x4
	.2byte	0x4ef
	.byte	0x8
	.4byte	0x2050
	.uleb128 0x13
	.string	"p"
	.byte	0x4
	.2byte	0x4f0
	.byte	0x14
	.4byte	0xdb
	.byte	0
	.uleb128 0x13
	.string	"len"
	.byte	0x4
	.2byte	0x4f1
	.byte	0xc
	.4byte	0x7b
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x4f2
	.byte	0x13
	.4byte	0x32
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF134
	.byte	0x4
	.2byte	0x4f3
	.byte	0x1e
	.4byte	0x270c
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF464
	.byte	0x1
	.2byte	0x3be
	.byte	0xd
	.4byte	0x205d
	.uleb128 0x11
	.4byte	0x68
	.4byte	0x207b
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0xf17
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x207b
	.byte	0
	.uleb128 0x4
	.4byte	0x121e
	.uleb128 0xa
	.4byte	.LASF465
	.byte	0x1
	.2byte	0x3d4
	.byte	0xd
	.4byte	0x208d
	.uleb128 0x11
	.4byte	0x68
	.4byte	0x20ab
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0xf17
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x20ab
	.byte	0
	.uleb128 0x4
	.4byte	0x122b
	.uleb128 0xa
	.4byte	.LASF466
	.byte	0x1
	.2byte	0x422
	.byte	0xd
	.4byte	0x20bd
	.uleb128 0x11
	.4byte	0x68
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0xe0d
	.uleb128 0x1
	.4byte	0x47c
	.uleb128 0x1
	.4byte	0xf17
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x4
	.4byte	0x1302
	.uleb128 0xa
	.4byte	.LASF467
	.byte	0x1
	.2byte	0x464
	.byte	0xd
	.4byte	0x20f2
	.uleb128 0x11
	.4byte	0x68
	.4byte	0x2110
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0xe0d
	.uleb128 0x1
	.4byte	0xf17
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0xa
	.4byte	.LASF468
	.byte	0x1
	.2byte	0x494
	.byte	0xd
	.4byte	0x211d
	.uleb128 0x11
	.4byte	0x68
	.4byte	0x213b
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x6dd
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0xa
	.4byte	.LASF469
	.byte	0x1
	.2byte	0x4aa
	.byte	0xe
	.4byte	0x2148
	.uleb128 0x26
	.4byte	0x2153
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF470
	.byte	0x1
	.2byte	0x4db
	.byte	0x12
	.4byte	0x9f
	.uleb128 0x12
	.4byte	0x2153
	.uleb128 0x2b
	.4byte	.LASF471
	.2byte	0x104
	.byte	0x1
	.2byte	0x4dd
	.byte	0x10
	.4byte	0x219f
	.uleb128 0x2
	.4byte	.LASF472
	.byte	0x1
	.2byte	0x4df
	.byte	0x1e
	.4byte	0x2153
	.byte	0
	.uleb128 0x2
	.4byte	.LASF473
	.byte	0x1
	.2byte	0x4e1
	.byte	0xe
	.4byte	0x9f
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF474
	.byte	0x1
	.2byte	0x4e3
	.byte	0x13
	.4byte	0x219f
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.4byte	0x32
	.4byte	0x21af
	.uleb128 0x18
	.4byte	0x74
	.byte	0xfe
	.byte	0
	.uleb128 0xa
	.4byte	.LASF475
	.byte	0x1
	.2byte	0x4e5
	.byte	0x1
	.4byte	0x2165
	.uleb128 0x22
	.byte	0x2
	.4byte	0x45
	.byte	0x1
	.2byte	0x4ea
	.byte	0xe
	.4byte	0x21df
	.uleb128 0x3
	.4byte	.LASF476
	.byte	0
	.uleb128 0x34
	.4byte	.LASF477
	.2byte	0x303
	.uleb128 0x34
	.4byte	.LASF478
	.2byte	0x304
	.byte	0
	.uleb128 0xa
	.4byte	.LASF479
	.byte	0x1
	.2byte	0x4ee
	.byte	0x3
	.4byte	0x21bc
	.uleb128 0x17
	.4byte	0x32
	.4byte	0x21fc
	.uleb128 0x18
	.4byte	0x74
	.byte	0x1f
	.byte	0
	.uleb128 0x17
	.4byte	0x32
	.4byte	0x220c
	.uleb128 0x18
	.4byte	0x74
	.byte	0x2f
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	0x32
	.byte	0x1
	.2byte	0x562
	.byte	0xe
	.4byte	0x2239
	.uleb128 0x3
	.4byte	.LASF480
	.byte	0
	.uleb128 0x3
	.4byte	.LASF481
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF482
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF483
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF484
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF485
	.byte	0x1
	.2byte	0x569
	.byte	0x1
	.4byte	0x220c
	.uleb128 0x22
	.byte	0x1
	.4byte	0x32
	.byte	0x1
	.2byte	0x56b
	.byte	0xe
	.4byte	0x225b
	.uleb128 0x3
	.4byte	.LASF486
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF487
	.byte	0x1
	.2byte	0x575
	.byte	0x3
	.4byte	0x2246
	.uleb128 0xa
	.4byte	.LASF488
	.byte	0x1
	.2byte	0x586
	.byte	0xe
	.4byte	0x2275
	.uleb128 0x26
	.4byte	0x229e
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0x225b
	.uleb128 0x1
	.4byte	0xf17
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xf17
	.uleb128 0x1
	.4byte	0xf17
	.uleb128 0x1
	.4byte	0x2239
	.byte	0
	.uleb128 0xa
	.4byte	.LASF489
	.byte	0x1
	.2byte	0x59e
	.byte	0xf
	.4byte	0x22ab
	.uleb128 0x4
	.4byte	0x22b0
	.uleb128 0x11
	.4byte	0x68
	.4byte	0x22bf
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0x35
	.byte	0x4
	.byte	0x1
	.2byte	0x5a7
	.byte	0x9
	.4byte	0x22de
	.uleb128 0x36
	.string	"n"
	.2byte	0x5a8
	.byte	0xf
	.4byte	0xc8
	.uleb128 0x36
	.string	"p"
	.2byte	0x5a9
	.byte	0xb
	.4byte	0xd4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF490
	.byte	0x1
	.2byte	0x5aa
	.byte	0x3
	.4byte	0x22bf
	.uleb128 0x4
	.4byte	0x6f
	.uleb128 0x26
	.4byte	0x230f
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0xf1
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0xf1
	.byte	0
	.uleb128 0x4
	.4byte	0x22f0
	.uleb128 0x4
	.4byte	0x14d
	.uleb128 0x4
	.4byte	0x2050
	.uleb128 0x4
	.4byte	0x2080
	.uleb128 0x11
	.4byte	0x68
	.4byte	0x2341
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0xf17
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x4
	.4byte	0x2323
	.uleb128 0x11
	.4byte	0x68
	.4byte	0x2364
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0xe0d
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x2364
	.byte	0
	.uleb128 0x4
	.4byte	0xb0
	.uleb128 0x4
	.4byte	0x2346
	.uleb128 0x11
	.4byte	0x68
	.4byte	0x2391
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0x2391
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0xf17
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x4
	.4byte	0xdb
	.uleb128 0x4
	.4byte	0x236e
	.uleb128 0x11
	.4byte	0x68
	.4byte	0x23be
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0xf17
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xf17
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x4
	.4byte	0x239b
	.uleb128 0x11
	.4byte	0x68
	.4byte	0x23eb
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0x20ab
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0xf17
	.uleb128 0x1
	.4byte	0x6dd
	.uleb128 0x1
	.4byte	0x2364
	.byte	0
	.uleb128 0x4
	.4byte	0x23c3
	.uleb128 0x11
	.4byte	0x68
	.4byte	0x240e
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0x207b
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x4
	.4byte	0x23f0
	.uleb128 0x4
	.4byte	0xddb
	.uleb128 0x4
	.4byte	0x1fb8
	.uleb128 0x4
	.4byte	0xbbc
	.uleb128 0x4
	.4byte	0x20b0
	.uleb128 0x4
	.4byte	0x20e5
	.uleb128 0x4
	.4byte	0x2110
	.uleb128 0x4
	.4byte	0x213b
	.uleb128 0x4
	.4byte	0xab
	.uleb128 0x4
	.4byte	0xf1
	.uleb128 0x4
	.4byte	0x2160
	.uleb128 0x17
	.4byte	0x32
	.4byte	0x2455
	.uleb128 0x18
	.4byte	0x74
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	0x1758
	.uleb128 0x4
	.4byte	0x1182
	.uleb128 0x4
	.4byte	0x11a8
	.uleb128 0x4
	.4byte	0x11b5
	.uleb128 0x4
	.4byte	0x1c4c
	.uleb128 0x4
	.4byte	0x1b32
	.uleb128 0x4
	.4byte	0x11e0
	.uleb128 0x4
	.4byte	0x1202
	.uleb128 0x17
	.4byte	0xe5
	.4byte	0x248d
	.uleb128 0x18
	.4byte	0x74
	.byte	0xb
	.byte	0
	.uleb128 0x4
	.4byte	0x2268
	.uleb128 0x23
	.byte	0x7
	.4byte	0x32
	.byte	0x17
	.byte	0x8f
	.4byte	0x24b1
	.uleb128 0x3
	.4byte	.LASF491
	.byte	0
	.uleb128 0x3
	.4byte	.LASF492
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF493
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF494
	.byte	0x17
	.byte	0x93
	.byte	0x3
	.4byte	0x2492
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x4
	.2byte	0x249
	.byte	0xd
	.4byte	0x24ca
	.uleb128 0x11
	.4byte	0x68
	.4byte	0x24f7
	.uleb128 0x1
	.4byte	0xf17
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xf1
	.uleb128 0x1
	.4byte	0xf17
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	0x32
	.byte	0x4
	.2byte	0x2c6
	.byte	0xa
	.4byte	0x2524
	.uleb128 0x3
	.4byte	.LASF496
	.byte	0
	.uleb128 0x3
	.4byte	.LASF497
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF498
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF499
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF500
	.byte	0x4
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF501
	.byte	0xc
	.byte	0x4
	.2byte	0x353
	.byte	0x10
	.4byte	0x257c
	.uleb128 0x1b
	.4byte	.LASF502
	.byte	0x4
	.2byte	0x354
	.byte	0x16
	.4byte	0x74
	.byte	0x1
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF503
	.byte	0x4
	.2byte	0x355
	.byte	0x16
	.4byte	0x74
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF504
	.byte	0x4
	.2byte	0x356
	.byte	0x16
	.4byte	0x74
	.byte	0x1
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF505
	.byte	0x4
	.2byte	0x357
	.byte	0x1c
	.4byte	0xdb
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF506
	.byte	0x4
	.2byte	0x358
	.byte	0x14
	.4byte	0x7b
	.byte	0x8
	.byte	0
	.uleb128 0x20
	.byte	0xc
	.byte	0x4
	.2byte	0x35b
	.byte	0x9
	.4byte	0x25b1
	.uleb128 0x2
	.4byte	.LASF505
	.byte	0x4
	.2byte	0x35c
	.byte	0x1c
	.4byte	0xdb
	.byte	0
	.uleb128 0x13
	.string	"len"
	.byte	0x4
	.2byte	0x35d
	.byte	0x14
	.4byte	0x7b
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF507
	.byte	0x4
	.2byte	0x35e
	.byte	0x16
	.4byte	0x74
	.byte	0x8
	.byte	0
	.uleb128 0x20
	.byte	0x44
	.byte	0x4
	.2byte	0x34c
	.byte	0x5
	.4byte	0x25f3
	.uleb128 0x2
	.4byte	.LASF508
	.byte	0x4
	.2byte	0x34d
	.byte	0x10
	.4byte	0x7b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF509
	.byte	0x4
	.2byte	0x350
	.byte	0x11
	.4byte	0x8e
	.byte	0x4
	.uleb128 0x13
	.string	"hs"
	.byte	0x4
	.2byte	0x359
	.byte	0xb
	.4byte	0x25f3
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF510
	.byte	0x4
	.2byte	0x35f
	.byte	0xb
	.4byte	0x257c
	.byte	0x38
	.byte	0
	.uleb128 0x17
	.4byte	0x2524
	.4byte	0x2603
	.uleb128 0x18
	.4byte	0x74
	.byte	0x3
	.byte	0
	.uleb128 0x20
	.byte	0x48
	.byte	0x4
	.2byte	0x3c6
	.byte	0x9
	.4byte	0x2638
	.uleb128 0x2
	.4byte	.LASF511
	.byte	0x4
	.2byte	0x3c7
	.byte	0x15
	.4byte	0x8e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF512
	.byte	0x4
	.2byte	0x3cb
	.byte	0x1b
	.4byte	0x4e4
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF513
	.byte	0x4
	.2byte	0x3cc
	.byte	0x14
	.4byte	0x7b
	.byte	0x44
	.byte	0
	.uleb128 0x20
	.byte	0x48
	.byte	0x4
	.2byte	0x3d0
	.byte	0x9
	.4byte	0x266d
	.uleb128 0x2
	.4byte	.LASF511
	.byte	0x4
	.2byte	0x3d1
	.byte	0x15
	.4byte	0x8e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF512
	.byte	0x4
	.2byte	0x3d5
	.byte	0x1b
	.4byte	0x4e4
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF513
	.byte	0x4
	.2byte	0x3d6
	.byte	0x14
	.4byte	0x7b
	.byte	0x44
	.byte	0
	.uleb128 0x35
	.byte	0x48
	.byte	0x4
	.2byte	0x3c4
	.byte	0x5
	.4byte	0x268e
	.uleb128 0x37
	.4byte	.LASF514
	.2byte	0x3cd
	.4byte	0x2603
	.uleb128 0x37
	.4byte	.LASF515
	.2byte	0x3d7
	.4byte	0x2638
	.byte	0
	.uleb128 0x4
	.4byte	0x84c
	.uleb128 0x11
	.4byte	0x68
	.4byte	0x26ac
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0xf17
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x4
	.4byte	0x2693
	.uleb128 0x11
	.4byte	0x68
	.4byte	0x26ca
	.uleb128 0x1
	.4byte	0x26ca
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x6dd
	.byte	0
	.uleb128 0x4
	.4byte	0x130f
	.uleb128 0x4
	.4byte	0x26b1
	.uleb128 0x11
	.4byte	0x68
	.4byte	0x26ed
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x4
	.4byte	0x26d4
	.uleb128 0x4
	.4byte	0x24bd
	.uleb128 0x17
	.4byte	0x9f
	.4byte	0x2707
	.uleb128 0x18
	.4byte	0x74
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.4byte	0x9f
	.uleb128 0x4
	.4byte	0x1ffe
	.uleb128 0x24
	.4byte	.LASF523
	.byte	0x4
	.2byte	0x53b
	.4byte	0x2723
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF516
	.byte	0x4
	.2byte	0x5df
	.byte	0x5
	.4byte	0x68
	.4byte	0x273a
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF517
	.byte	0x4
	.2byte	0x5da
	.byte	0x5
	.4byte	0x68
	.4byte	0x2751
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF518
	.byte	0x4
	.2byte	0x5e1
	.byte	0x5
	.4byte	0x68
	.4byte	0x2768
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF519
	.byte	0x4
	.2byte	0x5dc
	.byte	0x5
	.4byte	0x68
	.4byte	0x277f
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF520
	.byte	0x4
	.2byte	0x5d7
	.byte	0x5
	.4byte	0x68
	.4byte	0x2796
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF521
	.byte	0x4
	.2byte	0x5d5
	.byte	0x5
	.4byte	0x68
	.4byte	0x27ad
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF522
	.byte	0x18
	.byte	0x14
	.byte	0x5
	.4byte	0x68
	.4byte	0x27c3
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF524
	.byte	0x19
	.byte	0x79
	.4byte	0x27d9
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0xf
	.4byte	.LASF525
	.byte	0xf
	.2byte	0x398
	.byte	0x5
	.4byte	0x68
	.4byte	0x281d
	.uleb128 0x1
	.4byte	0xde0
	.uleb128 0x1
	.4byte	0x47c
	.uleb128 0x1
	.4byte	0xf17
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x6dd
	.uleb128 0x1
	.4byte	0x281d
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0x2822
	.byte	0
	.uleb128 0x4
	.4byte	0x141
	.uleb128 0x4
	.4byte	0x7ce
	.uleb128 0xf
	.4byte	.LASF526
	.byte	0x4
	.2byte	0x633
	.byte	0xf
	.4byte	0x32
	.4byte	0x283e
	.uleb128 0x1
	.4byte	0xde0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF527
	.byte	0x4
	.2byte	0x5c0
	.byte	0x5
	.4byte	0x68
	.4byte	0x285f
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0xf
	.4byte	.LASF528
	.byte	0x4
	.2byte	0x5f7
	.byte	0x5
	.4byte	0x68
	.4byte	0x287b
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0x832
	.byte	0
	.uleb128 0xf
	.4byte	.LASF529
	.byte	0x4
	.2byte	0x5ff
	.byte	0x5
	.4byte	0x68
	.4byte	0x2892
	.uleb128 0x1
	.4byte	0x2455
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF530
	.byte	0x2
	.byte	0x19
	.byte	0x5
	.4byte	0x68
	.4byte	0x28a8
	.uleb128 0x1
	.4byte	0x268e
	.byte	0
	.uleb128 0xf
	.4byte	.LASF531
	.byte	0x16
	.2byte	0x1ad
	.byte	0x5
	.4byte	0x68
	.4byte	0x28d8
	.uleb128 0x1
	.4byte	0x28d8
	.uleb128 0x1
	.4byte	0x6dd
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x281d
	.uleb128 0x1
	.4byte	0xd4
	.byte	0
	.uleb128 0x4
	.4byte	0x1091
	.uleb128 0xf
	.4byte	.LASF532
	.byte	0x16
	.2byte	0x175
	.byte	0x5
	.4byte	0x68
	.4byte	0x290d
	.uleb128 0x1
	.4byte	0x28d8
	.uleb128 0x1
	.4byte	0x6dd
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x281d
	.uleb128 0x1
	.4byte	0xd4
	.byte	0
	.uleb128 0x24
	.4byte	.LASF533
	.byte	0x16
	.2byte	0x1bf
	.4byte	0x291f
	.uleb128 0x1
	.4byte	0x28d8
	.byte	0
	.uleb128 0x24
	.4byte	.LASF534
	.byte	0x11
	.2byte	0x277
	.4byte	0x2931
	.uleb128 0x1
	.4byte	0xde5
	.byte	0
	.uleb128 0xf
	.4byte	.LASF535
	.byte	0x12
	.2byte	0x143
	.byte	0x5
	.4byte	0x68
	.4byte	0x2952
	.uleb128 0x1
	.4byte	0xe0
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x2952
	.byte	0
	.uleb128 0x4
	.4byte	0x9b2
	.uleb128 0x1c
	.4byte	.LASF536
	.byte	0x1a
	.byte	0x18
	.byte	0x5
	.4byte	0x68
	.4byte	0x2977
	.uleb128 0x1
	.4byte	0x2391
	.uleb128 0x1
	.4byte	0xf17
	.uleb128 0x1
	.4byte	0x2977
	.byte	0
	.uleb128 0x4
	.4byte	0x9a6
	.uleb128 0x1c
	.4byte	.LASF537
	.byte	0x11
	.byte	0xf5
	.byte	0x5
	.4byte	0x68
	.4byte	0x29a1
	.uleb128 0x1
	.4byte	0x2391
	.uleb128 0x1
	.4byte	0xf17
	.uleb128 0x1
	.4byte	0x6dd
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF538
	.byte	0x1b
	.byte	0x21
	.byte	0x8
	.4byte	0xd4
	.4byte	0x29c1
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0xf
	.4byte	.LASF539
	.byte	0x4
	.2byte	0x638
	.byte	0x13
	.4byte	0x47c
	.4byte	0x29d8
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0xf
	.4byte	.LASF540
	.byte	0x4
	.2byte	0x635
	.byte	0x13
	.4byte	0x746
	.4byte	0x29ef
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0xf
	.4byte	.LASF541
	.byte	0xf
	.2byte	0x307
	.byte	0x5
	.4byte	0x68
	.4byte	0x2a24
	.uleb128 0x1
	.4byte	0xde0
	.uleb128 0x1
	.4byte	0x47c
	.uleb128 0x1
	.4byte	0xf17
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xf17
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x2822
	.byte	0
	.uleb128 0xf
	.4byte	.LASF542
	.byte	0x4
	.2byte	0x713
	.byte	0x5
	.4byte	0x68
	.4byte	0x2a54
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x6dd
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x47c
	.byte	0
	.uleb128 0x24
	.4byte	.LASF543
	.byte	0x4
	.2byte	0x753
	.4byte	0x2a70
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0x32
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0xf
	.4byte	.LASF544
	.byte	0xf
	.2byte	0x400
	.byte	0x13
	.4byte	0x746
	.4byte	0x2a87
	.uleb128 0x1
	.4byte	0x2a87
	.byte	0
	.uleb128 0x4
	.4byte	0x7a2
	.uleb128 0xf
	.4byte	.LASF545
	.byte	0x16
	.2byte	0x157
	.byte	0x5
	.4byte	0x68
	.4byte	0x2aad
	.uleb128 0x1
	.4byte	0x28d8
	.uleb128 0x1
	.4byte	0x2aad
	.uleb128 0x1
	.4byte	0xff3
	.byte	0
	.uleb128 0x4
	.4byte	0x422
	.uleb128 0xf
	.4byte	.LASF546
	.byte	0xf
	.2byte	0x1c8
	.byte	0x5
	.4byte	0x68
	.4byte	0x2ace
	.uleb128 0x1
	.4byte	0x2a87
	.uleb128 0x1
	.4byte	0x746
	.byte	0
	.uleb128 0xf
	.4byte	.LASF547
	.byte	0x16
	.2byte	0x140
	.byte	0x5
	.4byte	0x68
	.4byte	0x2aef
	.uleb128 0x1
	.4byte	0x28d8
	.uleb128 0x1
	.4byte	0x2aef
	.uleb128 0x1
	.4byte	0xf17
	.byte	0
	.uleb128 0x4
	.4byte	0xf17
	.uleb128 0x25
	.4byte	.LASF548
	.byte	0x17
	.byte	0xa5
	.4byte	0x2b1e
	.uleb128 0x1
	.4byte	0x26ca
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0xf1
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x2b1e
	.uleb128 0x1
	.4byte	0x24b1
	.byte	0
	.uleb128 0x4
	.4byte	0x109d
	.uleb128 0xf
	.4byte	.LASF549
	.byte	0x4
	.2byte	0x644
	.byte	0x5
	.4byte	0x68
	.4byte	0x2b3f
	.uleb128 0x1
	.4byte	0x26ca
	.uleb128 0x1
	.4byte	0x213
	.byte	0
	.uleb128 0xf
	.4byte	.LASF550
	.byte	0x4
	.2byte	0x675
	.byte	0xd
	.4byte	0xf1
	.4byte	0x2b56
	.uleb128 0x1
	.4byte	0x9f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF551
	.byte	0x4
	.2byte	0x66b
	.byte	0xa
	.4byte	0x9f
	.4byte	0x2b6d
	.uleb128 0x1
	.4byte	0x213
	.byte	0
	.uleb128 0xf
	.4byte	.LASF552
	.byte	0x4
	.2byte	0x55c
	.byte	0x5
	.4byte	0x68
	.4byte	0x2b84
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF553
	.byte	0x4
	.2byte	0xb17
	.byte	0x5
	.4byte	0x68
	.4byte	0x2baa
	.uleb128 0x1
	.4byte	0x26ca
	.uleb128 0x1
	.4byte	0x268e
	.uleb128 0x1
	.4byte	0x21df
	.uleb128 0x1
	.4byte	0x21df
	.byte	0
	.uleb128 0x24
	.4byte	.LASF554
	.byte	0x4
	.2byte	0x5e3
	.4byte	0x2bc1
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0x268e
	.byte	0
	.uleb128 0xf
	.4byte	.LASF555
	.byte	0x10
	.2byte	0x1d0
	.byte	0x22
	.4byte	0x268e
	.4byte	0x2bd8
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0xf
	.4byte	.LASF556
	.byte	0x4
	.2byte	0x6d8
	.byte	0xa
	.4byte	0x9f
	.4byte	0x2bf4
	.uleb128 0x1
	.4byte	0xf17
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0xf
	.4byte	.LASF557
	.byte	0x4
	.2byte	0x5b3
	.byte	0x5
	.4byte	0x68
	.4byte	0x2c10
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0x74
	.byte	0
	.uleb128 0xf
	.4byte	.LASF558
	.byte	0x4
	.2byte	0x543
	.byte	0xd
	.4byte	0xf1
	.4byte	0x2c27
	.uleb128 0x1
	.4byte	0x1175
	.byte	0
	.uleb128 0x24
	.4byte	.LASF559
	.byte	0x4
	.2byte	0x6fe
	.4byte	0x2c39
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF560
	.byte	0x4
	.2byte	0x558
	.byte	0x5
	.4byte	0x68
	.4byte	0x2c50
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF561
	.byte	0x1c
	.byte	0x5a
	.byte	0x7
	.4byte	0xd4
	.4byte	0x2c6b
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x25
	.4byte	.LASF562
	.byte	0x1c
	.byte	0x5e
	.4byte	0x2c7c
	.uleb128 0x1
	.4byte	0xd4
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF563
	.byte	0x1b
	.byte	0x1e
	.byte	0x5
	.4byte	0x68
	.4byte	0x2c9c
	.uleb128 0x1
	.4byte	0xf6
	.uleb128 0x1
	.4byte	0xf6
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF564
	.byte	0x1b
	.byte	0x29
	.byte	0x8
	.4byte	0x7b
	.4byte	0x2cb2
	.uleb128 0x1
	.4byte	0xf1
	.byte	0
	.uleb128 0xf
	.4byte	.LASF565
	.byte	0x1
	.2byte	0x14fd
	.byte	0x5
	.4byte	0x68
	.4byte	0x2cd3
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0x32
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF566
	.byte	0x1d
	.byte	0x20
	.byte	0x5
	.4byte	0x68
	.4byte	0x2cf3
	.uleb128 0x1
	.4byte	0xf6
	.uleb128 0x1
	.4byte	0xf6
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x25
	.4byte	.LASF567
	.byte	0x17
	.byte	0x31
	.4byte	0x2d1d
	.uleb128 0x1
	.4byte	0x26ca
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0xf1
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0xf1
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x25
	.4byte	.LASF568
	.byte	0x17
	.byte	0x46
	.4byte	0x2d4c
	.uleb128 0x1
	.4byte	0x26ca
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0xf1
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0xf1
	.uleb128 0x1
	.4byte	0xf17
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF569
	.byte	0x1b
	.byte	0x1f
	.byte	0x8
	.4byte	0xd4
	.4byte	0x2d6c
	.uleb128 0x1
	.4byte	0xd6
	.uleb128 0x1
	.4byte	0xfb
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x25
	.4byte	.LASF570
	.byte	0x17
	.byte	0x1e
	.4byte	0x2d92
	.uleb128 0x1
	.4byte	0x26ca
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0xf1
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0xf1
	.uleb128 0x43
	.byte	0
	.uleb128 0x38
	.4byte	.LASF632
	.2byte	0xda0
	.4byte	0x68
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2dcc
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0xda0
	.byte	0x3c
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"ret"
	.byte	0x5
	.2byte	0xda2
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF572
	.byte	0x5
	.2byte	0xd31
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e9f
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0xd31
	.byte	0x3e
	.4byte	0x20e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xc
	.string	"ret"
	.byte	0x5
	.2byte	0xd33
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF571
	.byte	0x5
	.2byte	0xd34
	.byte	0xe
	.4byte	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF258
	.byte	0x5
	.2byte	0xd35
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF257
	.byte	0x5
	.2byte	0xd36
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"msg"
	.byte	0x5
	.2byte	0xd37
	.byte	0x1a
	.4byte	0xf17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.4byte	0x4552
	.4byte	.LBB118
	.4byte	.LBE118-.LBB118
	.2byte	0xd5d
	.byte	0x55
	.4byte	0x2e75
	.uleb128 0xd
	.4byte	0x4563
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xb
	.4byte	0x456c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xb
	.4byte	0x4575
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x16
	.4byte	0x45b6
	.4byte	.LBB120
	.4byte	.LBE120-.LBB120
	.2byte	0xd5f
	.byte	0x57
	.uleb128 0xd
	.4byte	0x45c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.4byte	0x45cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0xb
	.4byte	0x45d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF573
	.byte	0x5
	.2byte	0xca8
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2fa0
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0xca8
	.byte	0x3e
	.4byte	0x20e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0xc
	.string	"ret"
	.byte	0x5
	.2byte	0xcaa
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF422
	.byte	0x5
	.2byte	0xcab
	.byte	0x26
	.4byte	0x268e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.string	"n"
	.byte	0x5
	.2byte	0xcad
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.4byte	.LASF574
	.byte	0x5
	.2byte	0xcad
	.byte	0x13
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF575
	.byte	0x5
	.2byte	0xcae
	.byte	0x13
	.4byte	0x21fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x6
	.4byte	.LASF576
	.byte	0x5
	.2byte	0xcaf
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF577
	.byte	0x5
	.2byte	0xcb0
	.byte	0x17
	.4byte	0x47c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x6
	.4byte	.LASF578
	.byte	0x5
	.2byte	0xcb1
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x6
	.4byte	.LASF112
	.byte	0x5
	.2byte	0xcb2
	.byte	0xb
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF317
	.byte	0x5
	.2byte	0xcb4
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.4byte	.LASF582
	.2byte	0xce1
	.4byte	.L415
	.uleb128 0x16
	.4byte	0x4586
	.4byte	.LBB116
	.4byte	.LBE116-.LBB116
	.2byte	0xd1c
	.byte	0x66
	.uleb128 0xd
	.4byte	0x4593
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.4byte	0x459c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0xb
	.4byte	0x45a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF579
	.byte	0x5
	.2byte	0xa91
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3017
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0xa91
	.byte	0x3f
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"ret"
	.byte	0x5
	.2byte	0xa93
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF580
	.byte	0x5
	.2byte	0xa95
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF581
	.byte	0x5
	.2byte	0xa96
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF422
	.byte	0x5
	.2byte	0xa97
	.byte	0x26
	.4byte	0x268e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.4byte	.LASF583
	.2byte	0xb35
	.4byte	.L394
	.byte	0
	.uleb128 0x10
	.4byte	.LASF584
	.byte	0x5
	.2byte	0xa6b
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3053
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0xa6b
	.byte	0x3d
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"ret"
	.byte	0x5
	.2byte	0xa6d
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF585
	.byte	0x5
	.2byte	0x9b4
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3232
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x9b4
	.byte	0x3f
	.4byte	0x20e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -404
	.uleb128 0xc
	.string	"ret"
	.byte	0x5
	.2byte	0x9b6
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.string	"buf"
	.byte	0x5
	.2byte	0x9b7
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"n"
	.byte	0x5
	.2byte	0x9b8
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF586
	.byte	0x5
	.2byte	0x9b9
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF587
	.byte	0x5
	.2byte	0x9b9
	.byte	0x1f
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF422
	.byte	0x5
	.2byte	0x9ba
	.byte	0x26
	.4byte	0x268e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF588
	.byte	0x5
	.2byte	0x9bc
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.4byte	.LASF589
	.byte	0x5
	.2byte	0x9be
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.string	"dn"
	.byte	0x5
	.2byte	0x9bf
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.4byte	.LASF590
	.2byte	0xa63
	.4byte	.L368
	.uleb128 0x2c
	.4byte	.LBB109
	.4byte	.LBE109-.LBB109
	.4byte	0x3133
	.uleb128 0xc
	.string	"i"
	.byte	0x5
	.2byte	0xa34
	.byte	0x11
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.4byte	.LBB112
	.4byte	.LBE112-.LBB112
	.4byte	0x31d5
	.uleb128 0xc
	.string	"i"
	.byte	0x5
	.2byte	0xa4a
	.byte	0x11
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF591
	.byte	0x5
	.2byte	0xa4a
	.byte	0x18
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x39
	.4byte	.LBB113
	.4byte	.LBE113-.LBB113
	.uleb128 0xc
	.string	"p"
	.byte	0x5
	.2byte	0xa4b
	.byte	0x18
	.4byte	0xdb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x6
	.4byte	.LASF83
	.byte	0x5
	.2byte	0xa4c
	.byte	0x1b
	.4byte	0x9a6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -396
	.uleb128 0x6
	.4byte	.LASF592
	.byte	0x5
	.2byte	0xa4d
	.byte	0x10
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0xc
	.string	"s"
	.byte	0x5
	.2byte	0xa4e
	.byte	0xe
	.4byte	0x3232
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x16
	.4byte	0x45b6
	.4byte	.LBB114
	.4byte	.LBE114-.LBB114
	.2byte	0xa50
	.byte	0x5b
	.uleb128 0xd
	.4byte	0x45c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0xb
	.4byte	0x45cc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -98
	.uleb128 0xb
	.4byte	0x45d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	0x45b6
	.4byte	.LBB107
	.4byte	.LBE107-.LBB107
	.2byte	0xa1b
	.byte	0x7a
	.4byte	0x3205
	.uleb128 0xd
	.4byte	0x45c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xb
	.4byte	0x45cc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -74
	.uleb128 0xb
	.4byte	0x45d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x16
	.4byte	0x45b6
	.4byte	.LBB110
	.4byte	.LBE110-.LBB110
	.2byte	0xa3e
	.byte	0x75
	.uleb128 0xd
	.4byte	0x45c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xb
	.4byte	0x45cc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -86
	.uleb128 0xb
	.4byte	0x45d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	0xe5
	.4byte	0x3242
	.uleb128 0x18
	.4byte	0x74
	.byte	0xff
	.byte	0
	.uleb128 0x10
	.4byte	.LASF593
	.byte	0x5
	.2byte	0x822
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x33f9
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x822
	.byte	0x3f
	.4byte	0x20e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0xc
	.string	"ret"
	.byte	0x5
	.2byte	0x824
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF422
	.byte	0x5
	.2byte	0x825
	.byte	0x26
	.4byte	0x268e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.string	"p"
	.byte	0x5
	.2byte	0x827
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xc
	.string	"end"
	.byte	0x5
	.2byte	0x827
	.byte	0x1e
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.4byte	.LASF594
	.2byte	0x87c
	.4byte	.L327
	.uleb128 0x27
	.4byte	.LASF590
	.2byte	0x998
	.4byte	.L333
	.uleb128 0x44
	.4byte	.LASF674
	.4byte	0x3409
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__.0
	.uleb128 0x39
	.4byte	.LBB101
	.4byte	.LBE101-.LBB101
	.uleb128 0x6
	.4byte	.LASF595
	.byte	0x5
	.2byte	0x8f7
	.byte	0x10
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.4byte	.LASF578
	.byte	0x5
	.2byte	0x8f7
	.byte	0x19
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x6
	.4byte	.LASF575
	.byte	0x5
	.2byte	0x8f8
	.byte	0x17
	.4byte	0x4e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x6
	.4byte	.LASF577
	.byte	0x5
	.2byte	0x8fa
	.byte	0x1b
	.4byte	0x47c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -89
	.uleb128 0x6
	.4byte	.LASF596
	.byte	0x5
	.2byte	0x8fb
	.byte	0x1b
	.4byte	0x746
	.uleb128 0x3
	.byte	0x91
	.sleb128 -90
	.uleb128 0x6
	.4byte	.LASF597
	.byte	0x5
	.2byte	0x8fc
	.byte	0x18
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF598
	.byte	0x5
	.2byte	0x8fd
	.byte	0x10
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x8fe
	.byte	0xf
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF589
	.byte	0x5
	.2byte	0x8ff
	.byte	0x12
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x6
	.4byte	.LASF599
	.byte	0x5
	.2byte	0x901
	.byte	0x1d
	.4byte	0xde0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.4byte	.LBB106
	.4byte	.LBE106-.LBB106
	.4byte	0x339d
	.uleb128 0x6
	.4byte	.LASF600
	.byte	0x5
	.2byte	0x97c
	.byte	0x11
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x21
	.4byte	0x45b6
	.4byte	.LBB102
	.4byte	.LBE102-.LBB102
	.2byte	0x912
	.byte	0x56
	.4byte	0x33cb
	.uleb128 0xd
	.4byte	0x45c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xb
	.4byte	0x45cc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.uleb128 0xb
	.4byte	0x45d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x16
	.4byte	0x45b6
	.4byte	.LBB104
	.4byte	.LBE104-.LBB104
	.2byte	0x937
	.byte	0x56
	.uleb128 0xd
	.4byte	0x45c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xb
	.4byte	0x45cc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -78
	.uleb128 0xb
	.4byte	0x45d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	0xec
	.4byte	0x3409
	.uleb128 0x18
	.4byte	0x74
	.byte	0x1d
	.byte	0
	.uleb128 0x12
	.4byte	0x33f9
	.uleb128 0x10
	.4byte	.LASF601
	.byte	0x5
	.2byte	0x7c4
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB165
	.4byte	.LFE165-.LFB165
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x346a
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x7c4
	.byte	0x3f
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"ret"
	.byte	0x5
	.2byte	0x7c6
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF599
	.byte	0x5
	.2byte	0x7c7
	.byte	0x19
	.4byte	0xde0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF602
	.byte	0x5
	.2byte	0x7dc
	.byte	0x20
	.4byte	0x2aad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LASF603
	.byte	0x5
	.2byte	0x74b
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB164
	.4byte	.LFE164-.LFB164
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x34fd
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x74b
	.byte	0x3b
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.string	"p"
	.byte	0x5
	.2byte	0x74c
	.byte	0x36
	.4byte	0x2391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.string	"end"
	.byte	0x5
	.2byte	0x74d
	.byte	0x35
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xc
	.string	"ret"
	.byte	0x5
	.2byte	0x74f
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"len"
	.byte	0x5
	.2byte	0x750
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x16
	.4byte	0x45b6
	.4byte	.LBB99
	.4byte	.LBE99-.LBB99
	.2byte	0x75d
	.byte	0x4f
	.uleb128 0xd
	.4byte	0x45c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.4byte	0x45cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0xb
	.4byte	0x45d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF604
	.byte	0x5
	.2byte	0x724
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB163
	.4byte	.LFE163-.LFB163
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3557
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x724
	.byte	0x3e
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"p"
	.byte	0x5
	.2byte	0x725
	.byte	0x39
	.4byte	0x2391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"end"
	.byte	0x5
	.2byte	0x726
	.byte	0x38
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"ret"
	.byte	0x5
	.2byte	0x728
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF605
	.byte	0x5
	.2byte	0x6fd
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB162
	.4byte	.LFE162-.LFB162
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x35a3
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x6fd
	.byte	0x44
	.4byte	0x26ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF606
	.byte	0x5
	.2byte	0x6ff
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF607
	.byte	0x5
	.2byte	0x700
	.byte	0x1a
	.4byte	0x213
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x10
	.4byte	.LASF608
	.byte	0x5
	.2byte	0x49e
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB161
	.4byte	.LFE161-.LFB161
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3752
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x49e
	.byte	0x38
	.4byte	0x20e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0xc
	.string	"ret"
	.byte	0x5
	.2byte	0x4a0
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"i"
	.byte	0x5
	.2byte	0x4a0
	.byte	0xe
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"n"
	.byte	0x5
	.2byte	0x4a1
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.4byte	.LASF609
	.byte	0x5
	.2byte	0x4a2
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"buf"
	.byte	0x5
	.2byte	0x4a3
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"ext"
	.byte	0x5
	.2byte	0x4a3
	.byte	0x1a
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF610
	.byte	0x5
	.2byte	0x4a4
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x6
	.4byte	.LASF611
	.byte	0x5
	.2byte	0x4a6
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF612
	.byte	0x5
	.2byte	0x4a8
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF613
	.byte	0x5
	.2byte	0x4a9
	.byte	0x26
	.4byte	0x268e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.4byte	.LBB94
	.4byte	.LBE94-.LBB94
	.4byte	0x36f5
	.uleb128 0x6
	.4byte	.LASF614
	.byte	0x5
	.2byte	0x5ac
	.byte	0x16
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.4byte	.LASF615
	.byte	0x5
	.2byte	0x5ad
	.byte	0x16
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.4byte	0x45b6
	.4byte	.LBB95
	.4byte	.LBE95-.LBB95
	.2byte	0x5ac
	.byte	0x64
	.4byte	0x36c8
	.uleb128 0xd
	.4byte	0x45c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xb
	.4byte	0x45cc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -110
	.uleb128 0xb
	.4byte	0x45d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0x16
	.4byte	0x45b6
	.4byte	.LBB97
	.4byte	.LBE97-.LBB97
	.2byte	0x5ad
	.byte	0x66
	.uleb128 0xd
	.4byte	0x45c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0xb
	.4byte	0x45cc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -98
	.uleb128 0xb
	.4byte	0x45d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	0x45b6
	.4byte	.LBB90
	.4byte	.LBE90-.LBB90
	.2byte	0x51e
	.byte	0x5d
	.4byte	0x3725
	.uleb128 0xd
	.4byte	0x45c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xb
	.4byte	0x45cc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.uleb128 0xb
	.4byte	0x45d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x16
	.4byte	0x45b6
	.4byte	.LBB92
	.4byte	.LBE92-.LBB92
	.2byte	0x533
	.byte	0x59
	.uleb128 0xd
	.4byte	0x45c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xb
	.4byte	0x45cc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -86
	.uleb128 0xb
	.4byte	0x45d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF616
	.byte	0x5
	.2byte	0x446
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB160
	.4byte	.LFE160-.LFB160
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x37e5
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x446
	.byte	0x40
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.string	"ret"
	.byte	0x5
	.2byte	0x448
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"p"
	.byte	0x5
	.2byte	0x449
	.byte	0x1a
	.4byte	0xf17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF617
	.byte	0x5
	.2byte	0x44a
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x6
	.4byte	.LASF438
	.byte	0x5
	.2byte	0x44d
	.byte	0xd
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x16
	.4byte	0x45b6
	.4byte	.LBB88
	.4byte	.LBE88-.LBB88
	.2byte	0x467
	.byte	0x5e
	.uleb128 0xd
	.4byte	0x45c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.4byte	0x45cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0xb
	.4byte	0x45d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF618
	.byte	0x5
	.2byte	0x3d2
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB159
	.4byte	.LFE159-.LFB159
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x386f
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x3d2
	.byte	0x38
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"buf"
	.byte	0x5
	.2byte	0x3d3
	.byte	0x38
	.4byte	0xf17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"len"
	.byte	0x5
	.2byte	0x3d4
	.byte	0x2a
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF619
	.byte	0x5
	.2byte	0x3d6
	.byte	0x1e
	.4byte	0x2153
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xc
	.string	"i"
	.byte	0x5
	.2byte	0x3d7
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF473
	.byte	0x5
	.2byte	0x3d7
	.byte	0xf
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF620
	.byte	0x5
	.2byte	0x3d8
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LASF621
	.byte	0x5
	.2byte	0x391
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB158
	.4byte	.LFE158-.LFB158
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3912
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x391
	.byte	0x34
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.string	"buf"
	.byte	0x5
	.2byte	0x392
	.byte	0x34
	.4byte	0xf17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.string	"len"
	.byte	0x5
	.2byte	0x392
	.byte	0x40
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.4byte	.LASF622
	.byte	0x5
	.2byte	0x394
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF623
	.byte	0x5
	.2byte	0x394
	.byte	0x16
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.string	"p"
	.byte	0x5
	.2byte	0x395
	.byte	0x12
	.4byte	0x243b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.4byte	0x45b6
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.2byte	0x3b2
	.byte	0x55
	.uleb128 0xd
	.4byte	0x45c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.4byte	0x45cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0xb
	.4byte	0x45d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF624
	.byte	0x5
	.2byte	0x32f
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB157
	.4byte	.LFE157-.LFB157
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x397c
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x32f
	.byte	0x47
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"buf"
	.byte	0x5
	.2byte	0x330
	.byte	0x47
	.4byte	0xf17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"len"
	.byte	0x5
	.2byte	0x331
	.byte	0x39
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF625
	.byte	0x5
	.2byte	0x333
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"p"
	.byte	0x5
	.2byte	0x334
	.byte	0x1a
	.4byte	0xf17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.4byte	.LASF626
	.byte	0x5
	.2byte	0x313
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB156
	.4byte	.LFE156-.LFB156
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x39c8
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x313
	.byte	0x3e
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"buf"
	.byte	0x5
	.2byte	0x314
	.byte	0x3e
	.4byte	0xf17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"len"
	.byte	0x5
	.2byte	0x315
	.byte	0x30
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LASF627
	.byte	0x5
	.2byte	0x2fa
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB155
	.4byte	.LFE155-.LFB155
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a14
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x2fa
	.byte	0x3b
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"buf"
	.byte	0x5
	.2byte	0x2fb
	.byte	0x3b
	.4byte	0xf17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"len"
	.byte	0x5
	.2byte	0x2fc
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LASF628
	.byte	0x5
	.2byte	0x2e1
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB154
	.4byte	.LFE154-.LFB154
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a60
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x2e1
	.byte	0x40
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"buf"
	.byte	0x5
	.2byte	0x2e2
	.byte	0x40
	.4byte	0xf17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"len"
	.byte	0x5
	.2byte	0x2e3
	.byte	0x32
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LASF629
	.byte	0x5
	.2byte	0x2ac
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB153
	.4byte	.LFE153-.LFB153
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3abc
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x2ac
	.byte	0x33
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"buf"
	.byte	0x5
	.2byte	0x2ad
	.byte	0x33
	.4byte	0xf17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"len"
	.byte	0x5
	.2byte	0x2ae
	.byte	0x25
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF451
	.byte	0x5
	.2byte	0x2b0
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF630
	.byte	0x5
	.2byte	0x292
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB152
	.4byte	.LFE152-.LFB152
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b08
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x292
	.byte	0x43
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"buf"
	.byte	0x5
	.2byte	0x293
	.byte	0x43
	.4byte	0xf17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"len"
	.byte	0x5
	.2byte	0x294
	.byte	0x35
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LASF631
	.byte	0x5
	.2byte	0x269
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB151
	.4byte	.LFE151-.LFB151
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b54
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x269
	.byte	0x3e
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"buf"
	.byte	0x5
	.2byte	0x26a
	.byte	0x3e
	.4byte	0xf17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"len"
	.byte	0x5
	.2byte	0x26b
	.byte	0x30
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x38
	.4byte	.LASF633
	.2byte	0x201
	.4byte	0x68
	.4byte	.LFB150
	.4byte	.LFE150-.LFB150
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3bec
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x201
	.byte	0x44
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"buf"
	.byte	0x5
	.2byte	0x202
	.byte	0x3e
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"end"
	.byte	0x5
	.2byte	0x203
	.byte	0x44
	.4byte	0xf17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.4byte	.LASF634
	.byte	0x5
	.2byte	0x204
	.byte	0x33
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.4byte	.LASF311
	.byte	0x5
	.2byte	0x205
	.byte	0x37
	.4byte	0x6dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.string	"ret"
	.byte	0x5
	.2byte	0x207
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"p"
	.byte	0x5
	.2byte	0x208
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF609
	.byte	0x5
	.2byte	0x209
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LASF635
	.byte	0x5
	.2byte	0x193
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d1f
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x193
	.byte	0x38
	.4byte	0x20e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x5
	.string	"buf"
	.byte	0x5
	.2byte	0x194
	.byte	0x32
	.4byte	0xdb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x5
	.string	"end"
	.byte	0x5
	.2byte	0x195
	.byte	0x38
	.4byte	0xf17
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x14
	.4byte	.LASF636
	.byte	0x5
	.2byte	0x196
	.byte	0x2b
	.4byte	0x6dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xc
	.string	"p"
	.byte	0x5
	.2byte	0x198
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF637
	.byte	0x5
	.2byte	0x199
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF609
	.byte	0x5
	.2byte	0x199
	.byte	0x2b
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF473
	.byte	0x5
	.2byte	0x19a
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x6
	.4byte	.LASF638
	.byte	0x5
	.2byte	0x19a
	.byte	0x1b
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x21
	.4byte	0x4586
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.2byte	0x1be
	.byte	0x53
	.4byte	0x3cc6
	.uleb128 0xd
	.4byte	0x4593
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.4byte	0x459c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0xb
	.4byte	0x45a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x21
	.4byte	0x4586
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.2byte	0x1c1
	.byte	0x58
	.4byte	0x3cf3
	.uleb128 0xd
	.4byte	0x4593
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xd
	.4byte	0x459c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0xb
	.4byte	0x45a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x16
	.4byte	0x4586
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.2byte	0x1d7
	.byte	0x66
	.uleb128 0xd
	.4byte	0x4593
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xd
	.4byte	0x459c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.uleb128 0xb
	.4byte	0x45a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF639
	.byte	0x5
	.2byte	0x165
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB148
	.4byte	.LFE148-.LFB148
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3def
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x165
	.byte	0x3e
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.string	"buf"
	.byte	0x5
	.2byte	0x166
	.byte	0x38
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.string	"end"
	.byte	0x5
	.2byte	0x167
	.byte	0x3e
	.4byte	0xf17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.4byte	.LASF636
	.byte	0x5
	.2byte	0x168
	.byte	0x31
	.4byte	0x6dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xc
	.string	"p"
	.byte	0x5
	.2byte	0x16a
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF640
	.byte	0x5
	.2byte	0x16b
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.4byte	0x4586
	.4byte	.LBB76
	.4byte	.LBE76-.LBB76
	.2byte	0x17a
	.byte	0x53
	.4byte	0x3dc5
	.uleb128 0xd
	.4byte	0x4593
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.4byte	0x459c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0xb
	.4byte	0x45a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x16
	.4byte	0x4586
	.4byte	.LBB78
	.4byte	.LBE78-.LBB78
	.2byte	0x17d
	.byte	0x55
	.uleb128 0xd
	.4byte	0x4593
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.4byte	0x459c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0xb
	.4byte	0x45a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF641
	.byte	0x5
	.2byte	0x145
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e82
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x145
	.byte	0x3b
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"buf"
	.byte	0x5
	.2byte	0x146
	.byte	0x35
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"end"
	.byte	0x5
	.2byte	0x147
	.byte	0x3b
	.4byte	0xf17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.4byte	.LASF636
	.byte	0x5
	.2byte	0x148
	.byte	0x2e
	.4byte	0x6dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"p"
	.byte	0x5
	.2byte	0x14a
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.4byte	0x4586
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.2byte	0x157
	.byte	0x57
	.uleb128 0xd
	.4byte	0x4593
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	0x459c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xb
	.4byte	0x45a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF642
	.byte	0x5
	.2byte	0x125
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f15
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x125
	.byte	0x40
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"buf"
	.byte	0x5
	.2byte	0x126
	.byte	0x3a
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"end"
	.byte	0x5
	.2byte	0x127
	.byte	0x40
	.4byte	0xf17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.4byte	.LASF636
	.byte	0x5
	.2byte	0x128
	.byte	0x33
	.4byte	0x6dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"p"
	.byte	0x5
	.2byte	0x12a
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.4byte	0x4586
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.2byte	0x137
	.byte	0x53
	.uleb128 0xd
	.4byte	0x4593
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	0x459c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xb
	.4byte	0x45a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF643
	.byte	0x5
	.2byte	0x103
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3fa8
	.uleb128 0x5
	.string	"ssl"
	.byte	0x5
	.2byte	0x103
	.byte	0x43
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"buf"
	.byte	0x5
	.2byte	0x104
	.byte	0x3d
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"end"
	.byte	0x5
	.2byte	0x105
	.byte	0x43
	.4byte	0xf17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.4byte	.LASF636
	.byte	0x5
	.2byte	0x106
	.byte	0x36
	.4byte	0x6dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"p"
	.byte	0x5
	.2byte	0x108
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.4byte	0x4586
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.2byte	0x115
	.byte	0x52
	.uleb128 0xd
	.4byte	0x4593
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	0x459c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xb
	.4byte	0x45a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF644
	.byte	0x5
	.byte	0xd8
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x406e
	.uleb128 0x1d
	.string	"ssl"
	.byte	0x5
	.byte	0xd8
	.byte	0x33
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1d
	.string	"buf"
	.byte	0x5
	.byte	0xd9
	.byte	0x2d
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.string	"end"
	.byte	0x5
	.byte	0xda
	.byte	0x33
	.4byte	0xf17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.4byte	.LASF636
	.byte	0x5
	.byte	0xdb
	.byte	0x26
	.4byte	0x6dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.string	"p"
	.byte	0xdd
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x45
	.4byte	.LASF609
	.byte	0x5
	.byte	0xde
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x46
	.4byte	0x4586
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.byte	0x5
	.byte	0xf2
	.byte	0x53
	.4byte	0x4045
	.uleb128 0xd
	.4byte	0x4593
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.4byte	0x459c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0xb
	.4byte	0x45a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x31
	.4byte	0x4586
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.byte	0xf5
	.byte	0x58
	.uleb128 0xd
	.4byte	0x4593
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.4byte	0x459c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0xb
	.4byte	0x45a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF645
	.byte	0x5
	.byte	0x5f
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x40f8
	.uleb128 0x1d
	.string	"ssl"
	.byte	0x5
	.byte	0x5f
	.byte	0x47
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.string	"buf"
	.byte	0x5
	.byte	0x60
	.byte	0x41
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"end"
	.byte	0x5
	.byte	0x61
	.byte	0x47
	.4byte	0xf17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.4byte	.LASF636
	.byte	0x5
	.byte	0x62
	.byte	0x3a
	.4byte	0x6dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"p"
	.byte	0x64
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.4byte	0x4586
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.byte	0x6d
	.byte	0x53
	.uleb128 0xd
	.4byte	0x4593
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	0x459c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xb
	.4byte	0x45a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF646
	.byte	0x5
	.byte	0x33
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4182
	.uleb128 0x1d
	.string	"ssl"
	.byte	0x5
	.byte	0x33
	.byte	0x3d
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.string	"buf"
	.byte	0x5
	.byte	0x34
	.byte	0x37
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"end"
	.byte	0x5
	.byte	0x35
	.byte	0x3d
	.4byte	0xf17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.4byte	.LASF636
	.byte	0x5
	.byte	0x36
	.byte	0x30
	.4byte	0x6dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"p"
	.byte	0x38
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.4byte	0x4586
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.byte	0x4b
	.byte	0x57
	.uleb128 0xd
	.4byte	0x4593
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	0x459c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xb
	.4byte	0x45a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF647
	.byte	0x4
	.2byte	0xbcd
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB141
	.4byte	.LFE141-.LFB141
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41ae
	.uleb128 0x14
	.4byte	.LASF262
	.byte	0x4
	.2byte	0xbce
	.byte	0x1f
	.4byte	0x2455
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF648
	.byte	0x4
	.2byte	0xa5c
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41ea
	.uleb128 0x5
	.string	"ssl"
	.byte	0x4
	.2byte	0xa5d
	.byte	0x20
	.4byte	0x26ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF589
	.byte	0x4
	.2byte	0xa5e
	.byte	0x14
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF649
	.byte	0x4
	.2byte	0xa1f
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4236
	.uleb128 0x14
	.4byte	.LASF589
	.byte	0x4
	.2byte	0xa20
	.byte	0x14
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x6
	.4byte	.LASF575
	.byte	0x4
	.2byte	0xa23
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xc
	.string	"sig"
	.byte	0x4
	.2byte	0xa24
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x10
	.4byte	.LASF650
	.byte	0x4
	.2byte	0x9f9
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB137
	.4byte	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4282
	.uleb128 0x14
	.4byte	.LASF589
	.byte	0x4
	.2byte	0x9fa
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x14
	.4byte	.LASF651
	.byte	0x4
	.2byte	0x9fa
	.byte	0x2a
	.4byte	0x4282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF577
	.byte	0x4
	.2byte	0x9fa
	.byte	0x46
	.4byte	0x4287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.4byte	0x746
	.uleb128 0x4
	.4byte	0x47c
	.uleb128 0x10
	.4byte	.LASF652
	.byte	0x4
	.2byte	0x9e9
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB136
	.4byte	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42d8
	.uleb128 0x5
	.string	"ssl"
	.byte	0x4
	.2byte	0x9e9
	.byte	0x4d
	.4byte	0x26ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.4byte	.LASF653
	.byte	0x4
	.2byte	0x9ea
	.byte	0x3b
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x6
	.4byte	.LASF589
	.byte	0x4
	.2byte	0x9ec
	.byte	0x15
	.4byte	0x2436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF654
	.byte	0x4
	.2byte	0x97c
	.byte	0x1b
	.4byte	0xf6
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4304
	.uleb128 0x5
	.string	"ssl"
	.byte	0x4
	.2byte	0x97d
	.byte	0x20
	.4byte	0x26ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF655
	.byte	0x4
	.2byte	0x6f0
	.byte	0x16
	.4byte	0x7b
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4330
	.uleb128 0x5
	.string	"ssl"
	.byte	0x4
	.2byte	0x6f0
	.byte	0x48
	.4byte	0x26ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF656
	.byte	0x4
	.2byte	0x696
	.byte	0x21
	.4byte	0xe0d
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x436c
	.uleb128 0x5
	.string	"ssl"
	.byte	0x4
	.2byte	0x696
	.byte	0x4b
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF366
	.byte	0x4
	.2byte	0x698
	.byte	0x1b
	.4byte	0x2418
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF657
	.byte	0x4
	.2byte	0x689
	.byte	0x23
	.4byte	0xde0
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43a8
	.uleb128 0x5
	.string	"ssl"
	.byte	0x4
	.2byte	0x689
	.byte	0x4c
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF366
	.byte	0x4
	.2byte	0x68b
	.byte	0x1b
	.4byte	0x2418
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF658
	.byte	0x4
	.2byte	0x679
	.byte	0x28
	.4byte	0x2153
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43d4
	.uleb128 0x14
	.4byte	.LASF659
	.byte	0x4
	.2byte	0x67a
	.byte	0x15
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x10
	.4byte	.LASF660
	.byte	0x4
	.2byte	0x5c3
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4400
	.uleb128 0x5
	.string	"ssl"
	.byte	0x4
	.2byte	0x5c3
	.byte	0x48
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF661
	.2byte	0x54f
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4426
	.uleb128 0x5
	.string	"ssl"
	.byte	0x4
	.2byte	0x54f
	.byte	0x4f
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF662
	.2byte	0x546
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x445c
	.uleb128 0x5
	.string	"ssl"
	.byte	0x4
	.2byte	0x546
	.byte	0x49
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x547
	.byte	0x47
	.4byte	0x1175
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF663
	.byte	0x4
	.2byte	0x1fb
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x44a8
	.uleb128 0x5
	.string	"cur"
	.byte	0x4
	.2byte	0x1fb
	.byte	0x3a
	.4byte	0x44a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"end"
	.byte	0x4
	.2byte	0x1fc
	.byte	0x3a
	.4byte	0x44a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF664
	.byte	0x4
	.2byte	0x1fc
	.byte	0x46
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.4byte	0x9a
	.uleb128 0x2d
	.4byte	.LASF665
	.byte	0x3
	.byte	0x3c
	.byte	0x2a
	.4byte	0x2aad
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x44d6
	.uleb128 0x1d
	.string	"pk"
	.byte	0x3
	.byte	0x3c
	.byte	0x54
	.4byte	0x7a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF666
	.byte	0x8b
	.4byte	0x68
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x44fe
	.uleb128 0x28
	.4byte	.LASF667
	.byte	0x2
	.byte	0x8c
	.byte	0x26
	.4byte	0x268e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF668
	.byte	0x4c
	.4byte	0x68
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4526
	.uleb128 0x28
	.4byte	.LASF667
	.byte	0x2
	.byte	0x4c
	.byte	0x5d
	.4byte	0x268e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF669
	.byte	0x1
	.2byte	0x10c3
	.byte	0x1b
	.4byte	0xf1
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4552
	.uleb128 0x14
	.4byte	.LASF670
	.byte	0x1
	.2byte	0x10c3
	.byte	0x5b
	.4byte	0x2153
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x47
	.4byte	.LASF675
	.byte	0x6
	.byte	0xa7
	.byte	0x18
	.4byte	0xb0
	.byte	0x3
	.4byte	0x4581
	.uleb128 0x2e
	.string	"p"
	.byte	0xa7
	.byte	0x41
	.4byte	0xf6
	.uleb128 0x29
	.string	"r"
	.byte	0xa9
	.byte	0xe
	.4byte	0xb0
	.uleb128 0x29
	.string	"p32"
	.byte	0xae
	.byte	0x21
	.4byte	0x4581
	.byte	0
	.uleb128 0x4
	.4byte	0x135
	.uleb128 0x48
	.4byte	.LASF671
	.byte	0x6
	.byte	0x8e
	.byte	0x14
	.byte	0x3
	.4byte	0x45b1
	.uleb128 0x2e
	.string	"p"
	.byte	0x8e
	.byte	0x37
	.4byte	0xd4
	.uleb128 0x2e
	.string	"x"
	.byte	0x8e
	.byte	0x43
	.4byte	0x9f
	.uleb128 0x29
	.string	"p16"
	.byte	0x94
	.byte	0x21
	.4byte	0x45b1
	.byte	0
	.uleb128 0x4
	.4byte	0x115
	.uleb128 0x49
	.4byte	.LASF672
	.byte	0x6
	.byte	0x73
	.byte	0x18
	.4byte	0x9f
	.byte	0x3
	.uleb128 0x2e
	.string	"p"
	.byte	0x73
	.byte	0x41
	.4byte	0xf6
	.uleb128 0x29
	.string	"r"
	.byte	0x75
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x29
	.string	"p16"
	.byte	0x7a
	.byte	0x21
	.4byte	0x45b1
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 20
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x34
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
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
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 19
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.4byte	0x19c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.4byte	.LFB136
	.4byte	.LFE136-.LFB136
	.4byte	.LFB137
	.4byte	.LFE137-.LFB137
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.4byte	.LFB141
	.4byte	.LFE141-.LFB141
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
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.4byte	.LFB148
	.4byte	.LFE148-.LFB148
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
	.4byte	.LFB150
	.4byte	.LFE150-.LFB150
	.4byte	.LFB151
	.4byte	.LFE151-.LFB151
	.4byte	.LFB152
	.4byte	.LFE152-.LFB152
	.4byte	.LFB153
	.4byte	.LFE153-.LFB153
	.4byte	.LFB154
	.4byte	.LFE154-.LFB154
	.4byte	.LFB155
	.4byte	.LFE155-.LFB155
	.4byte	.LFB156
	.4byte	.LFE156-.LFB156
	.4byte	.LFB157
	.4byte	.LFE157-.LFB157
	.4byte	.LFB158
	.4byte	.LFE158-.LFB158
	.4byte	.LFB159
	.4byte	.LFE159-.LFB159
	.4byte	.LFB160
	.4byte	.LFE160-.LFB160
	.4byte	.LFB161
	.4byte	.LFE161-.LFB161
	.4byte	.LFB162
	.4byte	.LFE162-.LFB162
	.4byte	.LFB163
	.4byte	.LFE163-.LFB163
	.4byte	.LFB164
	.4byte	.LFE164-.LFB164
	.4byte	.LFB165
	.4byte	.LFE165-.LFB165
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
	.4byte	.LFB92
	.uleb128 .LFE92-.LFB92
	.byte	0x7
	.4byte	.LFB101
	.uleb128 .LFE101-.LFB101
	.byte	0x7
	.4byte	.LFB104
	.uleb128 .LFE104-.LFB104
	.byte	0x7
	.4byte	.LFB107
	.uleb128 .LFE107-.LFB107
	.byte	0x7
	.4byte	.LFB113
	.uleb128 .LFE113-.LFB113
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
	.4byte	.LFB119
	.uleb128 .LFE119-.LFB119
	.byte	0x7
	.4byte	.LFB120
	.uleb128 .LFE120-.LFB120
	.byte	0x7
	.4byte	.LFB121
	.uleb128 .LFE121-.LFB121
	.byte	0x7
	.4byte	.LFB124
	.uleb128 .LFE124-.LFB124
	.byte	0x7
	.4byte	.LFB135
	.uleb128 .LFE135-.LFB135
	.byte	0x7
	.4byte	.LFB136
	.uleb128 .LFE136-.LFB136
	.byte	0x7
	.4byte	.LFB137
	.uleb128 .LFE137-.LFB137
	.byte	0x7
	.4byte	.LFB138
	.uleb128 .LFE138-.LFB138
	.byte	0x7
	.4byte	.LFB139
	.uleb128 .LFE139-.LFB139
	.byte	0x7
	.4byte	.LFB141
	.uleb128 .LFE141-.LFB141
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
	.4byte	.LFB147
	.uleb128 .LFE147-.LFB147
	.byte	0x7
	.4byte	.LFB148
	.uleb128 .LFE148-.LFB148
	.byte	0x7
	.4byte	.LFB149
	.uleb128 .LFE149-.LFB149
	.byte	0x7
	.4byte	.LFB150
	.uleb128 .LFE150-.LFB150
	.byte	0x7
	.4byte	.LFB151
	.uleb128 .LFE151-.LFB151
	.byte	0x7
	.4byte	.LFB152
	.uleb128 .LFE152-.LFB152
	.byte	0x7
	.4byte	.LFB153
	.uleb128 .LFE153-.LFB153
	.byte	0x7
	.4byte	.LFB154
	.uleb128 .LFE154-.LFB154
	.byte	0x7
	.4byte	.LFB155
	.uleb128 .LFE155-.LFB155
	.byte	0x7
	.4byte	.LFB156
	.uleb128 .LFE156-.LFB156
	.byte	0x7
	.4byte	.LFB157
	.uleb128 .LFE157-.LFB157
	.byte	0x7
	.4byte	.LFB158
	.uleb128 .LFE158-.LFB158
	.byte	0x7
	.4byte	.LFB159
	.uleb128 .LFE159-.LFB159
	.byte	0x7
	.4byte	.LFB160
	.uleb128 .LFE160-.LFB160
	.byte	0x7
	.4byte	.LFB161
	.uleb128 .LFE161-.LFB161
	.byte	0x7
	.4byte	.LFB162
	.uleb128 .LFE162-.LFB162
	.byte	0x7
	.4byte	.LFB163
	.uleb128 .LFE163-.LFB163
	.byte	0x7
	.4byte	.LFB164
	.uleb128 .LFE164-.LFB164
	.byte	0x7
	.4byte	.LFB165
	.uleb128 .LFE165-.LFB165
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF653:
	.string	"proposed_sig_alg"
.LASF547:
	.string	"mbedtls_ecdh_read_params"
.LASF412:
	.string	"cli_exts"
.LASF12:
	.string	"size_t"
.LASF118:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA"
.LASF418:
	.string	"ecrs_enabled"
.LASF82:
	.string	"mbedtls_cipher_info_t"
.LASF332:
	.string	"p_export_keys"
.LASF54:
	.string	"mbedtls_ecp_restart_ctx"
.LASF97:
	.string	"cipher_ctx"
.LASF652:
	.string	"mbedtls_ssl_sig_alg_is_offered"
.LASF189:
	.string	"mbedtls_x509_crt_verify_chain_item"
.LASF393:
	.string	"f_cert_cb"
.LASF76:
	.string	"MBEDTLS_ENCRYPT"
.LASF264:
	.string	"renego_records_seen"
.LASF674:
	.string	"__func__"
.LASF497:
	.string	"ssl_ecrs_crt_verify"
.LASF447:
	.string	"alt_transform_out"
.LASF177:
	.string	"certificate_policies"
.LASF310:
	.string	"out_cid"
.LASF397:
	.string	"ivlen"
.LASF355:
	.string	"p_sni"
.LASF377:
	.string	"group_list"
.LASF109:
	.string	"mbedtls_pk_context"
.LASF298:
	.string	"in_window_top"
.LASF420:
	.string	"ecrs_peer_cert"
.LASF663:
	.string	"mbedtls_ssl_chk_buf_ptr"
.LASF252:
	.string	"ciphersuite"
.LASF387:
	.string	"hs_timeout_min"
.LASF425:
	.string	"calc_finished"
.LASF104:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF42:
	.string	"nbits"
.LASF348:
	.string	"p_dbg"
.LASF144:
	.string	"mbedtls_x509_time"
.LASF440:
	.string	"out_msg_seq"
.LASF40:
	.string	"mbedtls_ecp_group"
.LASF358:
	.string	"f_cookie_write"
.LASF50:
	.string	"mbedtls_ecp_restart_mul"
.LASF439:
	.string	"cookie_verify_result"
.LASF560:
	.string	"mbedtls_ssl_reset_checksum"
.LASF369:
	.string	"f_ca_cb"
.LASF582:
	.string	"sign"
.LASF110:
	.string	"pk_info"
.LASF283:
	.string	"f_get_timer"
.LASF107:
	.string	"mbedtls_pk_type_t"
.LASF142:
	.string	"authorityCertIssuer"
.LASF492:
	.string	"MBEDTLS_DEBUG_ECDH_QP"
.LASF79:
	.string	"state"
.LASF609:
	.string	"ext_len"
.LASF638:
	.string	"profile_value"
.LASF463:
	.string	"mbedtls_ssl_flight_item"
.LASF481:
	.string	"MBEDTLS_SSL_TLS_PRF_SHA384"
.LASF48:
	.string	"mbedtls_ecp_restart_mul_ctx"
.LASF88:
	.string	"type"
.LASF159:
	.string	"crl_ext"
.LASF151:
	.string	"mbedtls_x509_crl"
.LASF266:
	.string	"f_vrfy"
.LASF72:
	.string	"md_ctx"
.LASF57:
	.string	"MBEDTLS_MD_MD5"
.LASF491:
	.string	"MBEDTLS_DEBUG_ECDH_Q"
.LASF353:
	.string	"p_cache"
.LASF145:
	.string	"year"
.LASF164:
	.string	"mbedtls_x509_crt"
.LASF262:
	.string	"conf"
.LASF163:
	.string	"sig_opts"
.LASF634:
	.string	"uses_ec"
.LASF153:
	.string	"sig_oid"
.LASF280:
	.string	"transform_negotiate"
.LASF192:
	.string	"mbedtls_x509_crt_verify_chain"
.LASF640:
	.string	"tlen"
.LASF520:
	.string	"mbedtls_ssl_write_certificate"
.LASF123:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDH_RSA"
.LASF506:
	.string	"data_len"
.LASF424:
	.string	"calc_verify"
.LASF242:
	.string	"mbedtls_ssl_send_t"
.LASF86:
	.string	"key_bitlen"
.LASF347:
	.string	"f_dbg"
.LASF521:
	.string	"mbedtls_ssl_parse_certificate"
.LASF668:
	.string	"mbedtls_ssl_ciphersuite_cert_req_allowed"
.LASF215:
	.string	"MBEDTLS_SSL_SERVER_KEY_EXCHANGE"
.LASF25:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF276:
	.string	"handshake"
.LASF548:
	.string	"mbedtls_debug_printf_ecdh"
.LASF442:
	.string	"retransmit_timeout"
.LASF160:
	.string	"sig_oid2"
.LASF524:
	.string	"mbedtls_zeroize_and_free"
.LASF38:
	.string	"mbedtls_ecp_group_id"
.LASF204:
	.string	"mbedtls_dhm_context"
.LASF666:
	.string	"mbedtls_ssl_ciphersuite_uses_server_signature"
.LASF459:
	.string	"sni_name"
.LASF182:
	.string	"ext_key_usage"
.LASF247:
	.string	"mbedtls_ssl_session"
.LASF470:
	.string	"mbedtls_ssl_srtp_profile"
.LASF603:
	.string	"ssl_parse_server_psk_hint"
.LASF585:
	.string	"ssl_parse_certificate_request"
.LASF263:
	.string	"renego_status"
.LASF527:
	.string	"mbedtls_ssl_write_handshake_msg_ext"
.LASF62:
	.string	"MBEDTLS_MD_SHA384"
.LASF600:
	.string	"send_alert_msg"
.LASF6:
	.string	"long int"
.LASF493:
	.string	"MBEDTLS_DEBUG_ECDH_Z"
.LASF278:
	.string	"transform_out"
.LASF356:
	.string	"f_psk"
.LASF661:
	.string	"mbedtls_ssl_handshake_increment_state"
.LASF411:
	.string	"resume"
.LASF339:
	.string	"anti_replay"
.LASF180:
	.string	"max_pathlen"
.LASF580:
	.string	"header_len"
.LASF85:
	.string	"iv_size"
.LASF408:
	.string	"out_cid_len"
.LASF299:
	.string	"in_window"
.LASF239:
	.string	"MBEDTLS_SSL_TLS1_3_NEW_SESSION_TICKET"
.LASF31:
	.string	"MBEDTLS_ECP_DP_BP384R1"
.LASF337:
	.string	"allow_legacy_renegotiation"
.LASF507:
	.string	"epoch"
.LASF486:
	.string	"MBEDTLS_SSL_KEY_EXPORT_TLS12_MASTER_SECRET"
.LASF351:
	.string	"f_get_cache"
.LASF95:
	.string	"get_padding"
.LASF419:
	.string	"ecrs_state"
.LASF651:
	.string	"pk_type"
.LASF441:
	.string	"in_msg_seq"
.LASF66:
	.string	"MBEDTLS_MD_SHA3_384"
.LASF482:
	.string	"MBEDTLS_SSL_TLS_PRF_SHA256"
.LASF406:
	.string	"cipher_ctx_dec"
.LASF545:
	.string	"mbedtls_ecdh_get_params"
.LASF617:
	.string	"dtls_legacy_version"
.LASF403:
	.string	"md_ctx_enc"
.LASF203:
	.string	"mbedtls_x509_crt_ca_cb_t"
.LASF297:
	.string	"next_record_offset"
.LASF210:
	.string	"restart_enabled"
.LASF409:
	.string	"randbytes"
.LASF328:
	.string	"own_cid"
.LASF592:
	.string	"asn1_len"
.LASF2:
	.string	"signed char"
.LASF30:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF13:
	.string	"uint8_t"
.LASF413:
	.string	"sni_authmode"
.LASF616:
	.string	"ssl_parse_hello_verify_request"
.LASF325:
	.string	"verify_data_len"
.LASF115:
	.string	"MBEDTLS_KEY_EXCHANGE_RSA"
.LASF496:
	.string	"ssl_ecrs_none"
.LASF268:
	.string	"f_send"
.LASF454:
	.string	"client_auth"
.LASF396:
	.string	"minlen"
.LASF639:
	.string	"ssl_write_session_ticket_ext"
.LASF402:
	.string	"iv_dec"
.LASF467:
	.string	"mbedtls_ssl_async_decrypt_t"
.LASF155:
	.string	"issuer"
.LASF281:
	.string	"p_timer"
.LASF392:
	.string	"dhm_min_bitlen"
.LASF267:
	.string	"p_vrfy"
.LASF462:
	.string	"cert"
.LASF81:
	.string	"unprocessed_len"
.LASF623:
	.string	"name_len"
.LASF140:
	.string	"mbedtls_x509_authority"
.LASF311:
	.string	"out_len"
.LASF3:
	.string	"unsigned char"
.LASF625:
	.string	"list_size"
.LASF433:
	.string	"sni_key_cert"
.LASF178:
	.string	"ext_types"
.LASF205:
	.string	"MBEDTLS_ECDH_OURS"
.LASF490:
	.string	"mbedtls_ssl_user_data_t"
.LASF32:
	.string	"MBEDTLS_ECP_DP_BP512R1"
.LASF22:
	.string	"mbedtls_mpi_uint"
.LASF286:
	.string	"in_hdr"
.LASF211:
	.string	"MBEDTLS_SSL_HELLO_REQUEST"
.LASF648:
	.string	"mbedtls_ssl_sig_alg_is_supported"
.LASF344:
	.string	"ignore_unexpected_cid"
.LASF598:
	.string	"params_len"
.LASF539:
	.string	"mbedtls_ssl_md_alg_from_hash"
.LASF464:
	.string	"mbedtls_ssl_cache_get_t"
.LASF576:
	.string	"hash_start"
.LASF251:
	.string	"tls_version"
.LASF55:
	.string	"mbedtls_ecp_keypair"
.LASF532:
	.string	"mbedtls_ecdh_make_public"
.LASF452:
	.string	"fin_sha256"
.LASF243:
	.string	"mbedtls_ssl_recv_t"
.LASF130:
	.string	"min_tls_version"
.LASF595:
	.string	"sig_len"
.LASF227:
	.string	"MBEDTLS_SSL_NEW_SESSION_TICKET"
.LASF610:
	.string	"comp"
.LASF436:
	.string	"buffering"
.LASF316:
	.string	"out_left"
.LASF597:
	.string	"params"
.LASF175:
	.string	"subject_key_id"
.LASF78:
	.string	"mbedtls_cmac_context_t"
.LASF18:
	.string	"char"
.LASF44:
	.string	"t_pre"
.LASF628:
	.string	"ssl_parse_encrypt_then_mac_ext"
.LASF583:
	.string	"ecdh_calc_secret"
.LASF646:
	.string	"ssl_write_renegotiation_ext"
.LASF579:
	.string	"ssl_write_client_key_exchange"
.LASF494:
	.string	"mbedtls_debug_ecdh_attr"
.LASF77:
	.string	"mbedtls_operation_t"
.LASF650:
	.string	"mbedtls_ssl_get_pk_type_and_md_alg_from_sig_alg"
.LASF655:
	.string	"mbedtls_ssl_hs_hdr_len"
.LASF99:
	.string	"MBEDTLS_PK_NONE"
.LASF612:
	.string	"handshake_failure"
.LASF96:
	.string	"unprocessed_data"
.LASF485:
	.string	"mbedtls_tls_prf_types"
.LASF457:
	.string	"pmslen"
.LASF94:
	.string	"add_padding"
.LASF128:
	.string	"cipher"
.LASF121:
	.string	"MBEDTLS_KEY_EXCHANGE_RSA_PSK"
.LASF255:
	.string	"peer_cert"
.LASF561:
	.string	"calloc"
.LASF438:
	.string	"cookie_len"
.LASF275:
	.string	"session_negotiate"
.LASF556:
	.string	"mbedtls_ssl_read_version"
.LASF516:
	.string	"mbedtls_ssl_parse_finished"
.LASF89:
	.string	"flags"
.LASF563:
	.string	"memcmp"
.LASF291:
	.string	"in_offt"
.LASF273:
	.string	"session_out"
.LASF73:
	.string	"hmac_ctx"
.LASF63:
	.string	"MBEDTLS_MD_SHA512"
.LASF91:
	.string	"mbedtls_cipher_context_t"
.LASF200:
	.string	"self_cnt"
.LASF331:
	.string	"f_export_keys"
.LASF124:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA"
.LASF122:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDHE_PSK"
.LASF428:
	.string	"dhm_ctx"
.LASF234:
	.string	"MBEDTLS_SSL_CLIENT_CCS_BEFORE_2ND_CLIENT_HELLO"
.LASF303:
	.string	"send_alert"
.LASF567:
	.string	"mbedtls_debug_print_ret"
.LASF236:
	.string	"MBEDTLS_SSL_CLIENT_CCS_AFTER_CLIENT_HELLO"
.LASF265:
	.string	"badmac_seen_or_in_hsfraglen"
.LASF374:
	.string	"f_async_cancel"
.LASF621:
	.string	"ssl_parse_alpn_ext"
.LASF246:
	.string	"mbedtls_ssl_get_timer_t"
.LASF475:
	.string	"mbedtls_dtls_srtp_info"
.LASF664:
	.string	"need"
.LASF587:
	.string	"dn_len"
.LASF293:
	.string	"in_msglen"
.LASF292:
	.string	"in_msgtype"
.LASF67:
	.string	"MBEDTLS_MD_SHA3_512"
.LASF269:
	.string	"f_recv"
.LASF501:
	.string	"mbedtls_ssl_hs_buffer"
.LASF381:
	.string	"psk_identity"
.LASF443:
	.string	"flight"
.LASF368:
	.string	"ca_crl"
.LASF488:
	.string	"mbedtls_ssl_export_keys_t"
.LASF272:
	.string	"session_in"
.LASF21:
	.string	"mbedtls_f_rng_t"
.LASF472:
	.string	"chosen_dtls_srtp_profile"
.LASF340:
	.string	"disable_renegotiation"
.LASF622:
	.string	"list_len"
.LASF113:
	.string	"mbedtls_pk_restart_ctx"
.LASF217:
	.string	"MBEDTLS_SSL_SERVER_HELLO_DONE"
.LASF231:
	.string	"MBEDTLS_SSL_END_OF_EARLY_DATA"
.LASF186:
	.string	"allowed_pks"
.LASF537:
	.string	"mbedtls_asn1_get_tag"
.LASF384:
	.string	"dtls_srtp_profile_list"
.LASF636:
	.string	"olen"
.LASF105:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF315:
	.string	"out_msglen"
.LASF313:
	.string	"out_msg"
.LASF287:
	.string	"in_cid"
.LASF47:
	.string	"T_size"
.LASF349:
	.string	"f_rng"
.LASF477:
	.string	"MBEDTLS_SSL_VERSION_TLS1_2"
.LASF478:
	.string	"MBEDTLS_SSL_VERSION_TLS1_3"
.LASF245:
	.string	"mbedtls_ssl_set_timer_t"
.LASF423:
	.string	"update_checksum"
.LASF352:
	.string	"f_set_cache"
.LASF593:
	.string	"ssl_parse_server_key_exchange"
.LASF657:
	.string	"mbedtls_ssl_own_key"
.LASF460:
	.string	"sni_name_len"
.LASF446:
	.string	"in_flight_start_seq"
.LASF168:
	.string	"valid_from"
.LASF342:
	.string	"cert_req_ca_list"
.LASF534:
	.string	"mbedtls_asn1_free_named_data_list_shallow"
.LASF549:
	.string	"mbedtls_ssl_check_curve"
.LASF400:
	.string	"taglen"
.LASF308:
	.string	"out_ctr"
.LASF456:
	.string	"premaster"
.LASF528:
	.string	"mbedtls_ssl_psk_derive_premaster"
.LASF362:
	.string	"f_ticket_parse"
.LASF138:
	.string	"mbedtls_x509_name"
.LASF320:
	.string	"alpn_chosen"
.LASF300:
	.string	"in_hslen"
.LASF7:
	.string	"long unsigned int"
.LASF555:
	.string	"mbedtls_ssl_ciphersuite_from_id"
.LASF51:
	.string	"mbedtls_ecp_restart_muladd"
.LASF450:
	.string	"peer_cid"
.LASF416:
	.string	"async_in_progress"
.LASF631:
	.string	"ssl_parse_renegotiation_info"
.LASF235:
	.string	"MBEDTLS_SSL_SERVER_CCS_AFTER_SERVER_HELLO"
.LASF314:
	.string	"out_msgtype"
.LASF166:
	.string	"subject_raw"
.LASF58:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF154:
	.string	"issuer_raw"
.LASF367:
	.string	"ca_chain"
.LASF304:
	.string	"alert_type"
.LASF274:
	.string	"session"
.LASF330:
	.string	"negotiate_cid"
.LASF619:
	.string	"server_protection"
.LASF565:
	.string	"mbedtls_ssl_send_alert_message"
.LASF161:
	.string	"sig_md"
.LASF573:
	.string	"ssl_write_certificate_verify"
.LASF458:
	.string	"user_async_ctx"
.LASF637:
	.string	"protection_profiles_index"
.LASF533:
	.string	"mbedtls_ecdh_enable_restart"
.LASF530:
	.string	"mbedtls_ssl_ciphersuite_uses_psk"
.LASF557:
	.string	"mbedtls_ssl_read_record"
.LASF605:
	.string	"ssl_check_server_ecdh_params"
.LASF17:
	.string	"uintptr_t"
.LASF312:
	.string	"out_iv"
.LASF184:
	.string	"mbedtls_x509_crt_profile"
.LASF383:
	.string	"alpn_list"
.LASF194:
	.string	"x509_crt_rs_find_parent"
.LASF148:
	.string	"serial"
.LASF669:
	.string	"mbedtls_ssl_get_srtp_profile_as_string"
.LASF404:
	.string	"md_ctx_dec"
.LASF536:
	.string	"mbedtls_x509_get_name"
.LASF390:
	.string	"renego_period"
.LASF468:
	.string	"mbedtls_ssl_async_resume_t"
.LASF75:
	.string	"MBEDTLS_DECRYPT"
.LASF233:
	.string	"MBEDTLS_SSL_CLIENT_CCS_AFTER_SERVER_FINISHED"
.LASF223:
	.string	"MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC"
.LASF270:
	.string	"f_recv_timeout"
.LASF512:
	.string	"digest"
.LASF430:
	.string	"curves_tls_id"
.LASF114:
	.string	"MBEDTLS_KEY_EXCHANGE_NONE"
.LASF249:
	.string	"exported"
.LASF329:
	.string	"own_cid_len"
.LASF187:
	.string	"allowed_curves"
.LASF318:
	.string	"cur_out_ctr"
.LASF513:
	.string	"digest_len"
.LASF317:
	.string	"out_buf_len"
.LASF654:
	.string	"mbedtls_ssl_get_sig_algs"
.LASF658:
	.string	"mbedtls_ssl_check_srtp_profile_value"
.LASF643:
	.string	"ssl_write_max_fragment_length_ext"
.LASF237:
	.string	"MBEDTLS_SSL_SERVER_CCS_AFTER_HELLO_RETRY_REQUEST"
.LASF214:
	.string	"MBEDTLS_SSL_SERVER_CERTIFICATE"
.LASF179:
	.string	"ca_istrue"
.LASF529:
	.string	"mbedtls_ssl_conf_has_static_psk"
.LASF112:
	.string	"rs_ctx"
.LASF551:
	.string	"mbedtls_ssl_get_tls_id_from_ecp_group_id"
.LASF8:
	.string	"long long int"
.LASF434:
	.string	"sni_ca_chain"
.LASF445:
	.string	"cur_msg_p"
.LASF578:
	.string	"hashlen"
.LASF627:
	.string	"ssl_parse_extended_ms_ext"
.LASF596:
	.string	"pk_alg"
.LASF508:
	.string	"total_bytes_buffered"
.LASF202:
	.string	"mbedtls_x509_crt_restart_ctx"
.LASF432:
	.string	"ecrs_ctx"
.LASF569:
	.string	"memcpy"
.LASF371:
	.string	"f_async_sign_start"
.LASF289:
	.string	"in_iv"
.LASF101:
	.string	"MBEDTLS_PK_ECKEY"
.LASF644:
	.string	"ssl_write_cid_ext"
.LASF53:
	.string	"depth"
.LASF36:
	.string	"MBEDTLS_ECP_DP_SECP256K1"
.LASF111:
	.string	"pk_ctx"
.LASF59:
	.string	"MBEDTLS_MD_SHA1"
.LASF195:
	.string	"parent"
.LASF257:
	.string	"ticket"
.LASF670:
	.string	"profile"
.LASF629:
	.string	"ssl_parse_cid_ext"
.LASF185:
	.string	"allowed_mds"
.LASF500:
	.string	"ssl_ecrs_crt_vrfy_sign"
.LASF385:
	.string	"dtls_srtp_profile_list_len"
.LASF324:
	.string	"secure_renegotiation"
.LASF453:
	.string	"fin_sha384"
.LASF544:
	.string	"mbedtls_pk_get_type"
.LASF550:
	.string	"mbedtls_ssl_get_curve_name_from_tls_id"
.LASF69:
	.string	"mbedtls_md_info_t"
.LASF103:
	.string	"MBEDTLS_PK_ECDSA"
.LASF363:
	.string	"p_ticket"
.LASF522:
	.string	"mbedtls_ssl_write_client_hello"
.LASF553:
	.string	"mbedtls_ssl_validate_ciphersuite"
.LASF10:
	.string	"unsigned int"
.LASF206:
	.string	"MBEDTLS_ECDH_THEIRS"
.LASF228:
	.string	"MBEDTLS_SSL_SERVER_HELLO_VERIFY_REQUEST_SENT"
.LASF645:
	.string	"ssl_write_supported_point_formats_ext"
.LASF193:
	.string	"x509_crt_rs_none"
.LASF106:
	.string	"MBEDTLS_PK_OPAQUE"
.LASF219:
	.string	"MBEDTLS_SSL_CLIENT_KEY_EXCHANGE"
.LASF147:
	.string	"mbedtls_x509_crl_entry"
.LASF37:
	.string	"MBEDTLS_ECP_DP_CURVE448"
.LASF70:
	.string	"mbedtls_md_context_t"
.LASF618:
	.string	"ssl_parse_use_srtp_ext"
.LASF170:
	.string	"pk_raw"
.LASF284:
	.string	"in_buf"
.LASF455:
	.string	"state_local"
.LASF221:
	.string	"MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC"
.LASF120:
	.string	"MBEDTLS_KEY_EXCHANGE_DHE_PSK"
.LASF437:
	.string	"cookie"
.LASF135:
	.string	"mbedtls_asn1_named_data"
.LASF139:
	.string	"mbedtls_x509_sequence"
.LASF125:
	.string	"MBEDTLS_KEY_EXCHANGE_ECJPAKE"
.LASF489:
	.string	"mbedtls_ssl_hs_cb_t"
.LASF240:
	.string	"MBEDTLS_SSL_TLS1_3_NEW_SESSION_TICKET_FLUSH"
.LASF254:
	.string	"master"
.LASF294:
	.string	"in_left"
.LASF535:
	.string	"mbedtls_x509_dn_gets"
.LASF143:
	.string	"authorityCertSerialNumber"
.LASF322:
	.string	"cli_id"
.LASF183:
	.string	"ns_cert_type"
.LASF321:
	.string	"dtls_srtp_info"
.LASF364:
	.string	"cid_len"
.LASF375:
	.string	"p_async_config_data"
.LASF357:
	.string	"p_psk"
.LASF449:
	.string	"cid_in_use"
.LASF295:
	.string	"in_buf_len"
.LASF574:
	.string	"offset"
.LASF407:
	.string	"in_cid_len"
.LASF604:
	.string	"ssl_parse_server_ecdh_params"
.LASF515:
	.string	"finished_in"
.LASF35:
	.string	"MBEDTLS_ECP_DP_SECP224K1"
.LASF461:
	.string	"mbedtls_ssl_key_cert"
.LASF158:
	.string	"entry"
.LASF229:
	.string	"MBEDTLS_SSL_HELLO_RETRY_REQUEST"
.LASF127:
	.string	"mbedtls_ssl_ciphersuite_t"
.LASF503:
	.string	"is_fragmented"
.LASF471:
	.string	"mbedtls_dtls_srtp_info_t"
.LASF380:
	.string	"psk_len"
.LASF588:
	.string	"sig_alg_len"
.LASF207:
	.string	"mbedtls_ecdh_side"
.LASF136:
	.string	"next_merged"
.LASF253:
	.string	"id_len"
.LASF568:
	.string	"mbedtls_debug_print_buf"
.LASF52:
	.string	"ops_done"
.LASF68:
	.string	"mbedtls_md_type_t"
.LASF589:
	.string	"sig_alg"
.LASF656:
	.string	"mbedtls_ssl_own_cert"
.LASF102:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF199:
	.string	"in_progress"
.LASF327:
	.string	"peer_verify_data"
.LASF92:
	.string	"cipher_info"
.LASF673:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF19:
	.string	"mbedtls_uint16_unaligned_t"
.LASF11:
	.string	"long double"
.LASF546:
	.string	"mbedtls_pk_can_do"
.LASF542:
	.string	"mbedtls_ssl_get_key_exchange_md_tls1_2"
.LASF241:
	.string	"mbedtls_ssl_states"
.LASF33:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF398:
	.string	"fixed_ivlen"
.LASF90:
	.string	"base_idx"
.LASF630:
	.string	"ssl_parse_max_fragment_length_ext"
.LASF514:
	.string	"finished_out"
.LASF232:
	.string	"MBEDTLS_SSL_CLIENT_CERTIFICATE_VERIFY"
.LASF571:
	.string	"lifetime"
.LASF132:
	.string	"mbedtls_asn1_buf"
.LASF448:
	.string	"alt_out_ctr"
.LASF667:
	.string	"info"
.LASF479:
	.string	"mbedtls_ssl_protocol_version"
.LASF531:
	.string	"mbedtls_ecdh_calc_secret"
.LASF511:
	.string	"preparation_done"
.LASF499:
	.string	"ssl_ecrs_cke_ecdh_calc_secret"
.LASF649:
	.string	"mbedtls_ssl_tls12_sig_alg_is_supported"
.LASF150:
	.string	"entry_ext"
.LASF405:
	.string	"cipher_ctx_enc"
.LASF487:
	.string	"mbedtls_ssl_key_export_type"
.LASF100:
	.string	"MBEDTLS_PK_RSA"
.LASF395:
	.string	"mbedtls_ssl_transform"
.LASF9:
	.string	"long long unsigned int"
.LASF495:
	.string	"mbedtls_ssl_tls_prf_cb"
.LASF659:
	.string	"srtp_profile_value"
.LASF389:
	.string	"renego_max_records"
.LASF14:
	.string	"uint16_t"
.LASF662:
	.string	"mbedtls_ssl_handshake_set_state"
.LASF126:
	.string	"mbedtls_key_exchange_type_t"
.LASF157:
	.string	"next_update"
.LASF250:
	.string	"endpoint"
.LASF641:
	.string	"ssl_write_extended_ms_ext"
.LASF259:
	.string	"ticket_lifetime"
.LASF39:
	.string	"mbedtls_ecp_point"
.LASF504:
	.string	"is_complete"
.LASF271:
	.string	"p_bio"
.LASF28:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF23:
	.string	"mbedtls_mpi"
.LASF388:
	.string	"hs_timeout_max"
.LASF149:
	.string	"revocation_date"
.LASF244:
	.string	"mbedtls_ssl_recv_timeout_t"
.LASF117:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDHE_RSA"
.LASF526:
	.string	"mbedtls_ssl_sig_from_pk"
.LASF282:
	.string	"f_set_timer"
.LASF238:
	.string	"MBEDTLS_SSL_HANDSHAKE_OVER"
.LASF360:
	.string	"p_cookie"
.LASF451:
	.string	"peer_cid_len"
.LASF476:
	.string	"MBEDTLS_SSL_VERSION_UNKNOWN"
.LASF379:
	.string	"dhm_G"
.LASF323:
	.string	"cli_id_len"
.LASF176:
	.string	"authority_key_id"
.LASF435:
	.string	"sni_ca_crl"
.LASF290:
	.string	"in_msg"
.LASF173:
	.string	"v3_ext"
.LASF156:
	.string	"this_update"
.LASF378:
	.string	"dhm_P"
.LASF188:
	.string	"rsa_min_bitlen"
.LASF606:
	.string	"tls_id"
.LASF248:
	.string	"mfl_code"
.LASF319:
	.string	"hostname"
.LASF345:
	.string	"dtls_srtp_mki_support"
.LASF538:
	.string	"memset"
.LASF559:
	.string	"mbedtls_ssl_recv_flight_completed"
.LASF152:
	.string	"version"
.LASF41:
	.string	"pbits"
.LASF359:
	.string	"f_cookie_check"
.LASF60:
	.string	"MBEDTLS_MD_SHA224"
.LASF174:
	.string	"subject_alt_names"
.LASF372:
	.string	"f_async_decrypt_start"
.LASF671:
	.string	"mbedtls_put_unaligned_uint16"
.LASF213:
	.string	"MBEDTLS_SSL_SERVER_HELLO"
.LASF285:
	.string	"in_ctr"
.LASF620:
	.string	"server_protection_profile_value"
.LASF502:
	.string	"is_valid"
.LASF584:
	.string	"ssl_parse_server_hello_done"
.LASF27:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF93:
	.string	"operation"
.LASF601:
	.string	"ssl_get_ecdh_params_from_cert"
.LASF162:
	.string	"sig_pk"
.LASF611:
	.string	"renegotiation_info_seen"
.LASF552:
	.string	"mbedtls_ssl_derive_keys"
.LASF509:
	.string	"seen_ccs"
.LASF394:
	.string	"dn_hints"
.LASF427:
	.string	"received_sig_algs"
.LASF84:
	.string	"block_size"
.LASF172:
	.string	"subject_id"
.LASF401:
	.string	"iv_enc"
.LASF29:
	.string	"MBEDTLS_ECP_DP_SECP521R1"
.LASF279:
	.string	"transform"
.LASF572:
	.string	"ssl_parse_new_session_ticket"
.LASF444:
	.string	"cur_msg"
.LASF391:
	.string	"badmac_limit"
.LASF635:
	.string	"ssl_write_use_srtp_ext"
.LASF570:
	.string	"mbedtls_debug_print_msg"
.LASF469:
	.string	"mbedtls_ssl_async_cancel_t"
.LASF519:
	.string	"mbedtls_ssl_write_change_cipher_spec"
.LASF218:
	.string	"MBEDTLS_SSL_CLIENT_CERTIFICATE"
.LASF64:
	.string	"MBEDTLS_MD_SHA3_224"
.LASF129:
	.string	"key_exchange"
.LASF480:
	.string	"MBEDTLS_SSL_TLS_PRF_NONE"
.LASF382:
	.string	"psk_identity_len"
.LASF365:
	.string	"cert_profile"
.LASF386:
	.string	"read_timeout"
.LASF376:
	.string	"sig_algs"
.LASF45:
	.string	"t_post"
.LASF167:
	.string	"subject"
.LASF510:
	.string	"future_record"
.LASF169:
	.string	"valid_to"
.LASF83:
	.string	"name"
.LASF421:
	.string	"ecrs_n"
.LASF484:
	.string	"MBEDTLS_SSL_HKDF_EXPAND_SHA256"
.LASF116:
	.string	"MBEDTLS_KEY_EXCHANGE_DHE_RSA"
.LASF260:
	.string	"encrypt_then_mac"
.LASF191:
	.string	"trust_ca_cb_result"
.LASF119:
	.string	"MBEDTLS_KEY_EXCHANGE_PSK"
.LASF474:
	.string	"mki_value"
.LASF98:
	.string	"cmac_ctx"
.LASF540:
	.string	"mbedtls_ssl_pk_alg_from_sig"
.LASF224:
	.string	"MBEDTLS_SSL_SERVER_FINISHED"
.LASF209:
	.string	"point_format"
.LASF4:
	.string	"short int"
.LASF24:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF525:
	.string	"mbedtls_pk_sign_restartable"
.LASF16:
	.string	"uint64_t"
.LASF87:
	.string	"mode"
.LASF642:
	.string	"ssl_write_encrypt_then_mac_ext"
.LASF334:
	.string	"mbedtls_ssl_config"
.LASF554:
	.string	"mbedtls_ssl_optimize_checksum"
.LASF633:
	.string	"mbedtls_ssl_tls12_write_client_hello_exts"
.LASF43:
	.string	"modp"
.LASF586:
	.string	"cert_type_len"
.LASF216:
	.string	"MBEDTLS_SSL_CERTIFICATE_REQUEST"
.LASF338:
	.string	"extended_ms"
.LASF518:
	.string	"mbedtls_ssl_write_finished"
.LASF256:
	.string	"verify_result"
.LASF26:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF141:
	.string	"keyIdentifier"
.LASF350:
	.string	"p_rng"
.LASF366:
	.string	"key_cert"
.LASF61:
	.string	"MBEDTLS_MD_SHA256"
.LASF591:
	.string	"dni_len"
.LASF426:
	.string	"tls_prf"
.LASF56:
	.string	"MBEDTLS_MD_NONE"
.LASF614:
	.string	"ext_id"
.LASF672:
	.string	"mbedtls_get_unaligned_uint16"
.LASF326:
	.string	"own_verify_data"
.LASF226:
	.string	"MBEDTLS_SSL_HANDSHAKE_WRAPUP"
.LASF577:
	.string	"md_alg"
.LASF665:
	.string	"mbedtls_pk_ec_ro"
.LASF171:
	.string	"issuer_id"
.LASF146:
	.string	"hour"
.LASF558:
	.string	"mbedtls_ssl_states_str"
.LASF20:
	.string	"mbedtls_uint32_unaligned_t"
.LASF258:
	.string	"ticket_len"
.LASF564:
	.string	"strlen"
.LASF431:
	.string	"selected_identity"
.LASF225:
	.string	"MBEDTLS_SSL_FLUSH_BUFFERS"
.LASF647:
	.string	"mbedtls_ssl_conf_get_session_tickets"
.LASF288:
	.string	"in_len"
.LASF131:
	.string	"max_tls_version"
.LASF410:
	.string	"mbedtls_ssl_handshake_params"
.LASF65:
	.string	"MBEDTLS_MD_SHA3_256"
.LASF473:
	.string	"mki_len"
.LASF190:
	.string	"items"
.LASF302:
	.string	"keep_current_message"
.LASF517:
	.string	"mbedtls_ssl_parse_change_cipher_spec"
.LASF309:
	.string	"out_hdr"
.LASF465:
	.string	"mbedtls_ssl_cache_set_t"
.LASF198:
	.string	"parent_is_trusted"
.LASF466:
	.string	"mbedtls_ssl_async_sign_t"
.LASF220:
	.string	"MBEDTLS_SSL_CERTIFICATE_VERIFY"
.LASF34:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
.LASF399:
	.string	"maclen"
.LASF581:
	.string	"content_len"
.LASF296:
	.string	"in_epoch"
.LASF15:
	.string	"uint32_t"
.LASF346:
	.string	"ciphersuite_list"
.LASF335:
	.string	"transport"
.LASF523:
	.string	"mbedtls_ssl_handshake_wrapup"
.LASF615:
	.string	"ext_size"
.LASF602:
	.string	"peer_key"
.LASF415:
	.string	"new_session_ticket"
.LASF675:
	.string	"mbedtls_get_unaligned_uint32"
.LASF165:
	.string	"own_buffer"
.LASF370:
	.string	"p_ca_cb"
.LASF222:
	.string	"MBEDTLS_SSL_CLIENT_FINISHED"
.LASF181:
	.string	"key_usage"
.LASF361:
	.string	"f_ticket_write"
.LASF261:
	.string	"mbedtls_ssl_context"
.LASF277:
	.string	"transform_in"
.LASF306:
	.string	"disable_datagram_packing"
.LASF417:
	.string	"retransmit_state"
.LASF562:
	.string	"free"
.LASF660:
	.string	"mbedtls_ssl_write_handshake_msg"
.LASF197:
	.string	"fallback_signature_is_good"
.LASF626:
	.string	"ssl_parse_session_ticket_ext"
.LASF566:
	.string	"mbedtls_ct_memcmp"
.LASF336:
	.string	"authmode"
.LASF632:
	.string	"mbedtls_ssl_handshake_client_step"
.LASF5:
	.string	"short unsigned int"
.LASF80:
	.string	"unprocessed_block"
.LASF46:
	.string	"t_data"
.LASF498:
	.string	"ssl_ecrs_ske_start_processing"
.LASF541:
	.string	"mbedtls_pk_verify_restartable"
.LASF133:
	.string	"mbedtls_asn1_sequence"
.LASF333:
	.string	"user_data"
.LASF208:
	.string	"mbedtls_ecdh_context"
.LASF301:
	.string	"nb_zero"
.LASF613:
	.string	"suite_info"
.LASF543:
	.string	"mbedtls_ssl_pend_fatal_alert"
.LASF590:
	.string	"exit"
.LASF196:
	.string	"fallback_parent"
.LASF71:
	.string	"md_info"
.LASF305:
	.string	"alert_reason"
.LASF74:
	.string	"MBEDTLS_OPERATION_NONE"
.LASF414:
	.string	"certificate_request_sent"
.LASF422:
	.string	"ciphersuite_info"
.LASF307:
	.string	"out_buf"
.LASF599:
	.string	"peer_pk"
.LASF575:
	.string	"hash"
.LASF483:
	.string	"MBEDTLS_SSL_HKDF_EXPAND_SHA384"
.LASF341:
	.string	"session_tickets"
.LASF212:
	.string	"MBEDTLS_SSL_CLIENT_HELLO"
.LASF343:
	.string	"respect_cli_pref"
.LASF134:
	.string	"next"
.LASF608:
	.string	"ssl_parse_server_hello"
.LASF505:
	.string	"data"
.LASF624:
	.string	"ssl_parse_supported_point_formats_ext"
.LASF429:
	.string	"ecdh_ctx"
.LASF373:
	.string	"f_async_resume"
.LASF49:
	.string	"mbedtls_ecp_restart_muladd_ctx"
.LASF201:
	.string	"ver_chain"
.LASF230:
	.string	"MBEDTLS_SSL_ENCRYPTED_EXTENSIONS"
.LASF594:
	.string	"start_processing"
.LASF137:
	.string	"mbedtls_x509_buf"
.LASF354:
	.string	"f_sni"
.LASF607:
	.string	"grp_id"
.LASF108:
	.string	"mbedtls_pk_info_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_tls12_client.c"
	.globl	__bswapsi2
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
