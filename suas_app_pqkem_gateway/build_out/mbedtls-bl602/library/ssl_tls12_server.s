	.file	"ssl_tls12_server.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_tls12_server.c"
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
	.section	.text.mbedtls_ssl_ciphersuite_no_pfs,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_ciphersuite_no_pfs, @function
mbedtls_ssl_ciphersuite_no_pfs:
.LFB99:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_ciphersuites_internal.h"
	.loc 2 47 1
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
	.loc 2 48 17
	lw	a5,-20(s0)
	lbu	a5,10(a5)
	.loc 2 48 5
	li	a4,10
	bgt	a5,a4,.L11
	li	a4,9
	bge	a5,a4,.L12
	li	a4,7
	beq	a5,a4,.L12
	li	a4,7
	bgt	a5,a4,.L11
	li	a4,1
	beq	a5,a4,.L12
	li	a4,5
	bne	a5,a4,.L11
.L12:
	.loc 2 54 20
	li	a5,1
	j	.L13
.L11:
	.loc 2 57 20
	li	a5,0
.L13:
	.loc 2 59 1
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
.LFE99:
	.size	mbedtls_ssl_ciphersuite_no_pfs, .-mbedtls_ssl_ciphersuite_no_pfs
	.section	.text.mbedtls_ssl_ciphersuite_uses_ecdh,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_ciphersuite_uses_ecdh, @function
mbedtls_ssl_ciphersuite_uses_ecdh:
.LFB100:
	.loc 2 64 1
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
	.loc 2 65 17
	lw	a5,-20(s0)
	lbu	a5,10(a5)
	addi	a4,a5,-9
	.loc 2 65 5
	li	a5,1
	bgtu	a4,a5,.L15
	.loc 2 68 20
	li	a5,1
	j	.L16
.L15:
	.loc 2 71 20
	li	a5,0
.L16:
	.loc 2 73 1
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
.LFE100:
	.size	mbedtls_ssl_ciphersuite_uses_ecdh, .-mbedtls_ssl_ciphersuite_uses_ecdh
	.section	.text.mbedtls_ssl_ciphersuite_cert_req_allowed,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_ciphersuite_cert_req_allowed, @function
mbedtls_ssl_ciphersuite_cert_req_allowed:
.LFB101:
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
	bgt	a5,a4,.L18
	bgt	a5,zero,.L19
	j	.L20
.L18:
	addi	a4,a5,-9
	li	a5,1
	bgtu	a4,a5,.L20
.L19:
	.loc 2 85 20
	li	a5,1
	j	.L21
.L20:
	.loc 2 88 20
	li	a5,0
.L21:
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
	.section	.text.mbedtls_ssl_ciphersuite_uses_ecdhe,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_ciphersuite_uses_ecdhe, @function
mbedtls_ssl_ciphersuite_uses_ecdhe:
.LFB103:
	.loc 2 125 1
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
	.loc 2 126 17
	lw	a5,-20(s0)
	lbu	a5,10(a5)
	.loc 2 126 5
	li	a4,4
	bgt	a5,a4,.L23
	li	a4,3
	bge	a5,a4,.L24
	j	.L25
.L23:
	li	a4,8
	bne	a5,a4,.L25
.L24:
	.loc 2 130 20
	li	a5,1
	j	.L26
.L25:
	.loc 2 133 20
	li	a5,0
.L26:
	.loc 2 135 1
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
.LFE103:
	.size	mbedtls_ssl_ciphersuite_uses_ecdhe, .-mbedtls_ssl_ciphersuite_uses_ecdhe
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
	bgtu	a4,a5,.L28
	.loc 2 146 20
	li	a5,1
	j	.L29
.L28:
	.loc 2 149 20
	li	a5,0
.L29:
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
	bgtu	a4,a5,.L31
	.loc 3 66 20
	lw	a5,-20(s0)
	j	.L32
.L31:
	.loc 3 68 19
	li	a5,0
.L32:
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
	.section	.text.mbedtls_pk_get_ec_group_id,"ax",@progbits
	.align	1
	.type	mbedtls_pk_get_ec_group_id, @function
mbedtls_pk_get_ec_group_id:
.LFB109:
	.loc 3 87 1
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
	.loc 3 109 14
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_ec_ro
	mv	a5,a0
	.loc 3 109 12 discriminator 1
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	.loc 3 113 12
	lbu	a5,-17(s0)
	.loc 3 114 1
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
.LFE109:
	.size	mbedtls_pk_get_ec_group_id, .-mbedtls_pk_get_ec_group_id
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
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_misc.h"
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
	bgt	a5,a4,.L40
	bgt	a5,zero,.L41
	.loc 4 1666 18
	j	.L45
.L40:
	addi	a4,a5,-5
	.loc 4 1660 5
	li	a5,1
	bgtu	a4,a5,.L45
.L41:
	.loc 4 1665 20
	lhu	a5,-18(s0)
	j	.L43
.L45:
	.loc 4 1666 18
	nop
	.loc 4 1668 12
	li	a5,0
.L43:
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
	beq	a5,zero,.L47
	.loc 4 1677 37 discriminator 1
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 4 1677 48 discriminator 1
	lw	a5,540(a5)
	.loc 4 1677 31 discriminator 1
	beq	a5,zero,.L47
	.loc 4 1678 23
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 4 1678 18
	lw	a5,540(a5)
	sw	a5,-20(s0)
	j	.L48
.L47:
	.loc 4 1680 23
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 4 1680 18
	lw	a5,108(a5)
	sw	a5,-20(s0)
.L48:
	.loc 4 1683 35
	lw	a5,-20(s0)
	beq	a5,zero,.L49
	.loc 4 1683 35 is_stmt 0 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 4 1683 35
	j	.L51
.L49:
	.loc 4 1683 35 discriminator 2
	li	a5,0
.L51:
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
	beq	a5,zero,.L53
	.loc 4 1690 37 discriminator 1
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 4 1690 48 discriminator 1
	lw	a5,540(a5)
	.loc 4 1690 31 discriminator 1
	beq	a5,zero,.L53
	.loc 4 1691 23
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 4 1691 18
	lw	a5,540(a5)
	sw	a5,-20(s0)
	j	.L54
.L53:
	.loc 4 1693 23
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 4 1693 18
	lw	a5,108(a5)
	sw	a5,-20(s0)
.L54:
	.loc 4 1696 35
	lw	a5,-20(s0)
	beq	a5,zero,.L55
	.loc 4 1696 35 is_stmt 0 discriminator 1
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 4 1696 35
	j	.L57
.L55:
	.loc 4 1696 35 discriminator 2
	li	a5,0
.L57:
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
	.section	.text.mbedtls_ssl_in_hdr_len,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_in_hdr_len, @function
mbedtls_ssl_in_hdr_len:
.LFB122:
	.loc 4 1756 1
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
	.loc 4 1762 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 4 1762 18
	lbu	a4,5(a5)
	.loc 4 1762 8
	li	a5,1
	bne	a4,a5,.L59
	.loc 4 1763 16
	li	a5,13
	j	.L60
.L59:
	.loc 4 1767 16
	li	a5,5
.L60:
	.loc 4 1769 1
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
	bne	a4,a5,.L62
	.loc 4 1780 16
	li	a5,12
	j	.L63
.L62:
	.loc 4 1785 12
	li	a5,4
.L63:
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
	.section	.text.mbedtls_ssl_get_groups,"ax",@progbits
	.align	1
	.type	mbedtls_ssl_get_groups, @function
mbedtls_ssl_get_groups:
.LFB129:
	.loc 4 2326 1
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
	.loc 4 2328 15
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 4 2328 21
	lw	a5,152(a5)
	.loc 4 2336 1
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
.LFE129:
	.size	mbedtls_ssl_get_groups, .-mbedtls_ssl_get_groups
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
	.section	.text.mbedtls_ssl_set_client_transport_id,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_set_client_transport_id
	.type	mbedtls_ssl_set_client_transport_id, @function
mbedtls_ssl_set_client_transport_id:
.LFB166:
	.file 5 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_tls12_server.c"
	.loc 5 51 1
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
	.loc 5 52 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 52 18
	lbu	a4,4(a5)
	.loc 5 52 8
	li	a5,1
	beq	a4,a5,.L94
	.loc 5 53 16
	li	a5,-28672
	addi	a5,a5,-256
	j	.L95
.L94:
	.loc 5 56 13
	lw	a5,-20(s0)
	lw	a5,516(a5)
	.loc 5 56 5
	mv	a0,a5
	call	free
	.loc 5 58 24
	lw	a1,-28(s0)
	li	a0,1
	call	calloc
	mv	a5,a0
	mv	a4,a5
	.loc 5 58 22 discriminator 1
	lw	a5,-20(s0)
	sw	a4,516(a5)
	.loc 5 58 13 discriminator 1
	lw	a5,-20(s0)
	lw	a5,516(a5)
	.loc 5 58 8 discriminator 1
	bne	a5,zero,.L96
	.loc 5 59 16
	li	a5,-32768
	addi	a5,a5,256
	j	.L95
.L96:
	.loc 5 62 15
	lw	a5,-20(s0)
	lw	a5,516(a5)
	.loc 5 62 5
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	memcpy
	.loc 5 63 21
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,520(a5)
	.loc 5 65 12
	li	a5,0
.L95:
	.loc 5 66 1
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
.LFE166:
	.size	mbedtls_ssl_set_client_transport_id, .-mbedtls_ssl_set_client_transport_id
	.section	.text.mbedtls_ssl_conf_dtls_cookies,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_dtls_cookies
	.type	mbedtls_ssl_conf_dtls_cookies, @function
mbedtls_ssl_conf_dtls_cookies:
.LFB167:
	.loc 5 72 1
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
	.loc 5 73 26
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,76(a5)
	.loc 5 74 26
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,80(a5)
	.loc 5 75 20
	lw	a5,-20(s0)
	lw	a4,-32(s0)
	sw	a4,84(a5)
	.loc 5 76 1
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
.LFE167:
	.size	mbedtls_ssl_conf_dtls_cookies, .-mbedtls_ssl_conf_dtls_cookies
	.section	.text.ssl_conf_has_psk_or_cb,"ax",@progbits
	.align	1
	.type	ssl_conf_has_psk_or_cb, @function
ssl_conf_has_psk_or_cb:
.LFB168:
	.loc 5 82 1
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
	.loc 5 83 13
	lw	a5,-20(s0)
	lw	a5,68(a5)
	.loc 5 83 8
	beq	a5,zero,.L99
	.loc 5 84 16
	li	a5,1
	j	.L100
.L99:
	.loc 5 87 13
	lw	a5,-20(s0)
	lw	a5,184(a5)
	.loc 5 87 8
	beq	a5,zero,.L101
	.loc 5 87 44 discriminator 1
	lw	a5,-20(s0)
	lw	a5,180(a5)
	.loc 5 87 37 discriminator 1
	bne	a5,zero,.L102
.L101:
	.loc 5 88 16
	li	a5,0
	j	.L100
.L102:
	.loc 5 98 13
	lw	a5,-20(s0)
	lw	a5,172(a5)
	.loc 5 98 8
	beq	a5,zero,.L103
	.loc 5 98 33 discriminator 1
	lw	a5,-20(s0)
	lw	a5,176(a5)
	.loc 5 98 26 discriminator 1
	beq	a5,zero,.L103
	.loc 5 99 16
	li	a5,1
	j	.L100
.L103:
	.loc 5 102 12
	li	a5,0
.L100:
	.loc 5 103 1
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
	.size	ssl_conf_has_psk_or_cb, .-ssl_conf_has_psk_or_cb
	.section	.rodata
	.align	2
.LC7:
	.string	"non-matching renegotiation info"
	.align	2
.LC8:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_tls12_server.c"
	.align	2
.LC9:
	.string	"non-zero length renegotiation info"
	.section	.text.ssl_parse_renegotiation_info,"ax",@progbits
	.align	1
	.type	ssl_parse_renegotiation_info, @function
ssl_parse_renegotiation_info:
.LFB169:
	.loc 5 110 1
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
	.loc 5 112 12
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 5 112 8
	beq	a5,zero,.L105
	.loc 5 114 27
	lw	a5,-20(s0)
	lw	a5,528(a5)
	.loc 5 114 22
	addi	a5,a5,1
	.loc 5 114 12
	lw	a4,-28(s0)
	bne	a4,a5,.L106
	.loc 5 115 16
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 5 115 26
	lw	a5,-20(s0)
	lw	a5,528(a5)
	.loc 5 114 45 discriminator 1
	bne	a4,a5,.L106
	.loc 5 116 35
	lw	a5,-24(s0)
	addi	a4,a5,1
	.loc 5 116 43
	lw	a5,-20(s0)
	addi	a3,a5,544
	.loc 5 116 13
	lw	a5,-20(s0)
	lw	a5,528(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	mbedtls_ct_memcmp
	mv	a5,a0
	.loc 5 115 44
	beq	a5,zero,.L107
.L106:
	.loc 5 118 13
	lui	a5,%hi(.LC7)
	addi	a4,a5,%lo(.LC7)
	li	a3,118
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 5 119 13
	li	a2,40
	li	a1,2
	lw	a0,-20(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 121 20
	li	a5,-28672
	addi	a5,a5,512
	j	.L108
.L105:
	.loc 5 126 12
	lw	a4,-28(s0)
	li	a5,1
	bne	a4,a5,.L109
	.loc 5 126 28 discriminator 1
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 5 126 22 discriminator 1
	beq	a5,zero,.L110
.L109:
	.loc 5 127 13
	lui	a5,%hi(.LC9)
	addi	a4,a5,%lo(.LC9)
	li	a3,127
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 5 128 13
	li	a2,40
	li	a1,2
	lw	a0,-20(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 130 20
	li	a5,-28672
	addi	a5,a5,512
	j	.L108
.L110:
	.loc 5 133 35
	lw	a5,-20(s0)
	li	a4,1
	sw	a4,524(a5)
.L107:
	.loc 5 136 12
	li	a5,0
.L108:
	.loc 5 137 1
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
.LFE169:
	.size	ssl_parse_renegotiation_info, .-ssl_parse_renegotiation_info
	.section	.rodata
	.align	2
.LC10:
	.string	"bad client hello message"
	.section	.text.ssl_parse_supported_groups_ext,"ax",@progbits
	.align	1
	.type	ssl_parse_supported_groups_ext, @function
ssl_parse_supported_groups_ext:
.LFB170:
	.loc 5 184 1
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
	.loc 5 189 8
	lw	a4,-76(s0)
	li	a5,1
	bgtu	a4,a5,.L112
	.loc 5 190 9
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,190
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 191 9
	li	a2,50
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 193 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L113
.L112:
	lw	a5,-72(s0)
	sw	a5,-40(s0)
.LBB78:
.LBB79:
	.file 6 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/alignment.h"
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
.LBE79:
.LBE78:
	.loc 5 195 68 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 195 15 discriminator 2
	sw	a5,-20(s0)
	.loc 5 196 19
	lw	a5,-20(s0)
	addi	a5,a5,2
	.loc 5 196 8
	lw	a4,-76(s0)
	bne	a4,a5,.L115
	.loc 5 197 19
	lw	a5,-20(s0)
	andi	a5,a5,1
	.loc 5 196 30 discriminator 1
	beq	a5,zero,.L116
.L115:
	.loc 5 198 9
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,198
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 199 9
	li	a2,50
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 201 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L113
.L116:
	.loc 5 205 12
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 205 23
	lw	a5,404(a5)
	.loc 5 205 8
	beq	a5,zero,.L117
	.loc 5 206 9
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,206
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 207 9
	li	a2,47
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 209 16
	li	a5,-24576
	addi	a5,a5,-1536
	j	.L113
.L117:
	.loc 5 214 26
	lw	a5,-20(s0)
	srli	a5,a5,1
	.loc 5 214 14
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 5 215 8
	lw	a4,-24(s0)
	li	a5,14
	bleu	a4,a5,.L118
	.loc 5 216 18
	li	a5,14
	sw	a5,-24(s0)
.L118:
	.loc 5 219 26
	li	a1,2
	lw	a0,-24(s0)
	call	calloc
	mv	a5,a0
	sw	a5,-32(s0)
	.loc 5 219 8 discriminator 1
	lw	a5,-32(s0)
	bne	a5,zero,.L119
	.loc 5 221 9
	li	a2,80
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 223 16
	li	a5,-32768
	addi	a5,a5,256
	j	.L113
.L119:
	.loc 5 226 8
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 226 35
	lw	a4,-32(s0)
	sw	a4,404(a5)
	.loc 5 228 7
	lw	a5,-72(s0)
	addi	a5,a5,2
	sw	a5,-28(s0)
	.loc 5 229 11
	j	.L120
.L124:
	lw	a5,-28(s0)
	sw	a5,-52(s0)
.LBB80:
.LBB81:
.LBB82:
	.loc 6 122 33
	lw	a5,-52(s0)
	sw	a5,-56(s0)
	.loc 6 123 7
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-58(s0)
	.loc 6 127 12
	lhu	a5,-58(s0)
.LBE82:
.LBE81:
	.loc 5 230 81 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	sh	a5,-34(s0)
	.loc 5 232 13
	lhu	a5,-34(s0)
	mv	a0,a5
	call	mbedtls_ssl_get_ecp_group_id_from_tls_id
	mv	a5,a0
	.loc 5 232 12 discriminator 1
	beq	a5,zero,.L122
	.loc 5 234 27
	lw	a5,-32(s0)
	addi	a4,a5,2
	sw	a4,-32(s0)
	.loc 5 234 30
	lhu	a4,-34(s0)
	sh	a4,0(a5)
	.loc 5 235 21
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L122:
	.loc 5 238 19
	lw	a5,-20(s0)
	addi	a5,a5,-2
	sw	a5,-20(s0)
	.loc 5 239 11
	lw	a5,-28(s0)
	addi	a5,a5,2
	sw	a5,-28(s0)
.L120:
.LBE80:
	.loc 5 229 26
	lw	a5,-20(s0)
	beq	a5,zero,.L123
	.loc 5 229 26 is_stmt 0 discriminator 1
	lw	a4,-24(s0)
	li	a5,1
	bgtu	a4,a5,.L124
.L123:
	.loc 5 242 12 is_stmt 1
	li	a5,0
.L113:
	.loc 5 243 1
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
.LFE170:
	.size	ssl_parse_supported_groups_ext, .-ssl_parse_supported_groups_ext
	.section	.rodata
	.align	2
.LC11:
	.string	"point format selected: %d"
	.section	.text.ssl_parse_supported_point_formats,"ax",@progbits
	.align	1
	.type	ssl_parse_supported_point_formats, @function
ssl_parse_supported_point_formats:
.LFB171:
	.loc 5 249 1
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
	.loc 5 253 8
	lw	a5,-44(s0)
	beq	a5,zero,.L126
	.loc 5 253 34 discriminator 1
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 5 253 38 discriminator 1
	addi	a4,a5,1
	.loc 5 253 43 discriminator 1
	lw	a5,-44(s0)
	.loc 5 253 18 discriminator 1
	beq	a4,a5,.L127
.L126:
	.loc 5 254 9
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,254
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 255 9
	li	a2,50
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 257 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L128
.L127:
	.loc 5 259 20
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 5 259 15
	sw	a5,-20(s0)
	.loc 5 261 7
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 5 262 11
	j	.L129
.L132:
	.loc 5 263 14
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 5 263 12
	beq	a5,zero,.L130
	.loc 5 264 14
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	.loc 5 263 23 discriminator 1
	li	a5,1
	bne	a4,a5,.L131
.L130:
	.loc 5 267 54
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	.loc 5 267 16
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 267 51
	sw	a4,324(a5)
	.loc 5 274 175
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 5 274 13
	lui	a4,%hi(.LC11)
	addi	a4,a4,%lo(.LC11)
	li	a3,274
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,4
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 275 20
	li	a5,0
	j	.L128
.L131:
	.loc 5 278 18
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 5 279 10
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L129:
	.loc 5 262 22
	lw	a5,-20(s0)
	bne	a5,zero,.L132
	.loc 5 282 12
	li	a5,0
.L128:
	.loc 5 283 1
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
	.size	ssl_parse_supported_point_formats, .-ssl_parse_supported_point_formats
	.section	.text.ssl_parse_max_fragment_length_ext,"ax",@progbits
	.align	1
	.type	ssl_parse_max_fragment_length_ext, @function
ssl_parse_max_fragment_length_ext:
.LFB172:
	.loc 5 343 1
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
	.loc 5 344 8
	lw	a4,-28(s0)
	li	a5,1
	bne	a4,a5,.L134
	.loc 5 344 24 discriminator 1
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	.loc 5 344 18 discriminator 1
	li	a5,4
	bleu	a4,a5,.L135
.L134:
	.loc 5 345 9
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,345
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 5 346 9
	li	a2,47
	li	a1,2
	lw	a0,-20(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 348 16
	li	a5,-24576
	addi	a5,a5,-1536
	j	.L136
.L135:
	.loc 5 351 8
	lw	a5,-20(s0)
	lw	a5,60(a5)
	.loc 5 351 43
	lw	a4,-24(s0)
	lbu	a4,0(a4)
	.loc 5 351 38
	sb	a4,0(a5)
	.loc 5 353 12
	li	a5,0
.L136:
	.loc 5 354 1
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
.LFE172:
	.size	ssl_parse_max_fragment_length_ext, .-ssl_parse_max_fragment_length_ext
	.section	.rodata
	.align	2
.LC12:
	.string	"Client sent CID extension, but CID disabled"
	.align	2
.LC13:
	.string	"Use of CID extension negotiated"
	.align	2
.LC14:
	.string	"Client CID"
	.section	.text.ssl_parse_cid_ext,"ax",@progbits
	.align	1
	.type	ssl_parse_cid_ext, @function
ssl_parse_cid_ext:
.LFB173:
	.loc 5 362 1
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
	.loc 5 366 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 366 18
	lbu	a4,5(a5)
	.loc 5 366 8
	li	a5,1
	beq	a4,a5,.L138
	.loc 5 367 9
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,367
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 368 9
	li	a2,47
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 370 16
	li	a5,-24576
	addi	a5,a5,-1536
	j	.L139
.L138:
	.loc 5 379 8
	lw	a5,-44(s0)
	bne	a5,zero,.L140
	.loc 5 380 9
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,380
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 381 9
	li	a2,50
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 383 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L139
.L140:
	.loc 5 386 24
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 5 386 20
	lbu	a5,0(a5)
	.loc 5 386 18
	sw	a5,-20(s0)
	.loc 5 387 8
	lw	a5,-44(s0)
	addi	a5,a5,-1
	sw	a5,-44(s0)
	.loc 5 389 8
	lw	a4,-44(s0)
	lw	a5,-20(s0)
	beq	a4,a5,.L141
	.loc 5 390 9
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,390
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 391 9
	li	a2,50
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 393 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L139
.L141:
	.loc 5 397 12
	lw	a5,-36(s0)
	lbu	a5,589(a5)
	.loc 5 397 8
	bne	a5,zero,.L142
	.loc 5 400 9
	lui	a5,%hi(.LC12)
	addi	a4,a5,%lo(.LC12)
	li	a3,400
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 401 16
	li	a5,0
	j	.L139
.L142:
	.loc 5 404 8
	lw	a4,-20(s0)
	li	a5,32
	bleu	a4,a5,.L143
	.loc 5 405 9
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,405
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 406 9
	li	a2,47
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 408 16
	li	a5,-24576
	addi	a5,a5,-1536
	j	.L139
.L143:
	.loc 5 411 8
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 411 32
	li	a4,1
	sb	a4,672(a5)
	.loc 5 412 8
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 412 36
	lw	a4,-20(s0)
	andi	a4,a4,0xff
	.loc 5 412 34
	sb	a4,705(a5)
	.loc 5 413 15
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 413 26
	addi	a5,a5,673
	.loc 5 413 5
	lw	a2,-20(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	memcpy
	.loc 5 415 5
	lui	a5,%hi(.LC13)
	addi	a4,a5,%lo(.LC13)
	li	a3,415
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 416 5
	lw	a6,-20(s0)
	lw	a5,-40(s0)
	lui	a4,%hi(.LC14)
	addi	a4,a4,%lo(.LC14)
	li	a3,416
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_buf
	.loc 5 418 12
	li	a5,0
.L139:
	.loc 5 419 1
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
	.size	ssl_parse_cid_ext, .-ssl_parse_cid_ext
	.section	.text.ssl_parse_encrypt_then_mac_ext,"ax",@progbits
	.align	1
	.type	ssl_parse_encrypt_then_mac_ext, @function
ssl_parse_encrypt_then_mac_ext:
.LFB174:
	.loc 5 427 1
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
	.loc 5 428 8
	lw	a5,-28(s0)
	beq	a5,zero,.L145
	.loc 5 429 9
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,429
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 5 430 9
	li	a2,50
	li	a1,2
	lw	a0,-20(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 432 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L146
.L145:
	.loc 5 437 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 437 18
	lbu	a4,9(a5)
	.loc 5 437 8
	li	a5,1
	bne	a4,a5,.L147
	.loc 5 438 12
	lw	a5,-20(s0)
	lw	a5,60(a5)
	.loc 5 438 50
	li	a4,1
	sw	a4,116(a5)
.L147:
	.loc 5 441 12
	li	a5,0
.L146:
	.loc 5 442 1
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
.LFE174:
	.size	ssl_parse_encrypt_then_mac_ext, .-ssl_parse_encrypt_then_mac_ext
	.section	.text.ssl_parse_extended_ms_ext,"ax",@progbits
	.align	1
	.type	ssl_parse_extended_ms_ext, @function
ssl_parse_extended_ms_ext:
.LFB175:
	.loc 5 450 1
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
	.loc 5 451 8
	lw	a5,-28(s0)
	beq	a5,zero,.L149
	.loc 5 452 9
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,452
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-20(s0)
	call	mbedtls_debug_print_msg
	.loc 5 453 9
	li	a2,50
	li	a1,2
	lw	a0,-20(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 455 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L150
.L149:
	.loc 5 460 12
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 460 18
	lbu	a4,10(a5)
	.loc 5 460 8
	li	a5,1
	bne	a4,a5,.L151
	.loc 5 461 12
	lw	a5,-20(s0)
	lw	a5,64(a5)
	.loc 5 461 37
	li	a4,1
	sb	a4,8(a5)
.L151:
	.loc 5 464 12
	li	a5,0
.L150:
	.loc 5 465 1
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
	.size	ssl_parse_extended_ms_ext, .-ssl_parse_extended_ms_ext
	.section	.rodata
	.align	2
.LC15:
	.string	"ticket length: %zu"
	.align	2
.LC16:
	.string	"ticket rejected: renegotiating"
	.align	2
.LC17:
	.string	"ticket is not authentic"
	.align	2
.LC18:
	.string	"ticket is expired"
	.align	2
.LC19:
	.string	"mbedtls_ssl_ticket_parse"
	.align	2
.LC20:
	.string	"session successfully restored from ticket"
	.section	.text.ssl_parse_session_ticket_ext,"ax",@progbits
	.align	1
	.type	ssl_parse_session_ticket_ext, @function
ssl_parse_session_ticket_ext:
.LFB176:
	.loc 5 473 1
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	ra,156(sp)
	sw	s0,152(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sw	a0,-148(s0)
	sw	a1,-152(s0)
	sw	a2,-156(s0)
	.loc 5 474 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 477 5
	addi	a5,s0,-140
	mv	a0,a5
	call	mbedtls_ssl_session_init
	.loc 5 479 12
	lw	a5,-148(s0)
	lw	a5,0(a5)
	.loc 5 479 18
	lw	a5,92(a5)
	.loc 5 479 8
	beq	a5,zero,.L153
	.loc 5 480 12
	lw	a5,-148(s0)
	lw	a5,0(a5)
	.loc 5 480 18
	lw	a5,88(a5)
	.loc 5 479 42 discriminator 1
	bne	a5,zero,.L154
.L153:
	.loc 5 481 16
	li	a5,0
	j	.L162
.L154:
	.loc 5 485 8
	lw	a5,-148(s0)
	lw	a5,64(a5)
	.loc 5 485 40
	li	a4,1
	sb	a4,4(a5)
	.loc 5 487 5
	lw	a5,-156(s0)
	lui	a4,%hi(.LC15)
	addi	a4,a4,%lo(.LC15)
	li	a3,487
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-148(s0)
	call	mbedtls_debug_print_msg
	.loc 5 489 8
	lw	a5,-156(s0)
	bne	a5,zero,.L156
	.loc 5 490 16
	li	a5,0
	j	.L162
.L156:
	.loc 5 494 12
	lw	a5,-148(s0)
	lw	a5,8(a5)
	.loc 5 494 8
	beq	a5,zero,.L157
	.loc 5 495 9
	lui	a5,%hi(.LC16)
	addi	a4,a5,%lo(.LC16)
	li	a3,495
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-148(s0)
	call	mbedtls_debug_print_msg
	.loc 5 496 16
	li	a5,0
	j	.L162
.L157:
	.loc 5 503 19
	lw	a5,-148(s0)
	lw	a5,0(a5)
	.loc 5 503 25
	lw	a5,92(a5)
	.loc 5 503 45
	lw	a4,-148(s0)
	lw	a4,0(a4)
	.loc 5 503 51
	lw	a4,96(a4)
	.loc 5 503 16
	addi	a1,s0,-140
	lw	a3,-156(s0)
	lw	a2,-152(s0)
	mv	a0,a4
	jalr	a5
.LVL0:
	sw	a0,-20(s0)
	.loc 5 503 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L158
	.loc 5 505 9
	addi	a5,s0,-140
	mv	a0,a5
	call	mbedtls_ssl_session_free
	.loc 5 507 12
	lw	a4,-20(s0)
	li	a5,-28672
	addi	a5,a5,-384
	bne	a4,a5,.L159
	.loc 5 508 13
	lui	a5,%hi(.LC17)
	addi	a4,a5,%lo(.LC17)
	li	a3,508
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-148(s0)
	call	mbedtls_debug_print_msg
	j	.L160
.L159:
	.loc 5 509 19
	lw	a4,-20(s0)
	li	a5,-28672
	addi	a5,a5,640
	bne	a4,a5,.L161
	.loc 5 510 13
	lui	a5,%hi(.LC18)
	addi	a4,a5,%lo(.LC18)
	li	a3,510
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-148(s0)
	call	mbedtls_debug_print_msg
	j	.L160
.L161:
	.loc 5 512 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC19)
	addi	a4,a4,%lo(.LC19)
	li	a3,512
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-148(s0)
	call	mbedtls_debug_print_ret
.L160:
	.loc 5 515 16
	li	a5,0
	j	.L162
.L158:
	.loc 5 522 25
	lw	a5,-148(s0)
	lw	a5,60(a5)
	.loc 5 522 44
	lw	a5,12(a5)
	.loc 5 522 20
	sw	a5,-128(s0)
	.loc 5 523 28
	lw	a5,-148(s0)
	lw	a5,60(a5)
	.loc 5 523 47
	addi	a4,a5,16
	.loc 5 523 5
	lw	a3,-128(s0)
	addi	a5,s0,-140
	addi	a5,a5,16
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 5 525 5
	lw	a5,-148(s0)
	lw	a5,60(a5)
	mv	a0,a5
	call	mbedtls_ssl_session_free
	.loc 5 526 15
	lw	a5,-148(s0)
	lw	a5,60(a5)
	.loc 5 526 5
	addi	a4,s0,-140
	li	a2,120
	mv	a1,a4
	mv	a0,a5
	call	memcpy
	.loc 5 529 5
	addi	a5,s0,-140
	li	a1,120
	mv	a0,a5
	call	mbedtls_platform_zeroize
	.loc 5 531 5
	lui	a5,%hi(.LC20)
	addi	a4,a5,%lo(.LC20)
	li	a3,531
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-148(s0)
	call	mbedtls_debug_print_msg
	.loc 5 533 8
	lw	a5,-148(s0)
	lw	a5,64(a5)
	.loc 5 533 28
	li	a4,1
	sb	a4,0(a5)
	.loc 5 536 8
	lw	a5,-148(s0)
	lw	a5,64(a5)
	.loc 5 536 40
	sb	zero,4(a5)
	.loc 5 538 12
	li	a5,0
.L162:
	.loc 5 539 1
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
.LFE176:
	.size	ssl_parse_session_ticket_ext, .-ssl_parse_session_ticket_ext
	.section	.rodata
	.align	2
.LC21:
	.string	"found srtp profile: %s"
	.align	2
.LC22:
	.string	"selected srtp profile: %s"
	.align	2
.LC23:
	.string	"using mki"
	.section	.text.ssl_parse_use_srtp_ext,"ax",@progbits
	.align	1
	.type	ssl_parse_use_srtp_ext, @function
ssl_parse_use_srtp_ext:
.LFB177:
	.loc 5 547 1
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
	.loc 5 548 30
	sh	zero,-26(s0)
	.loc 5 553 18
	li	a5,3
	sw	a5,-32(s0)
	.loc 5 556 13
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 5 556 19
	lbu	a4,5(a5)
	.loc 5 556 8
	li	a5,1
	bne	a4,a5,.L164
	.loc 5 557 13
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 5 557 19
	lw	a5,192(a5)
	.loc 5 556 37 discriminator 1
	beq	a5,zero,.L164
	.loc 5 558 13
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 5 558 19
	lw	a5,196(a5)
	.loc 5 557 52
	bne	a5,zero,.L165
.L164:
	.loc 5 559 16
	li	a5,0
	j	.L166
.L165:
	.loc 5 579 8
	lw	a4,-60(s0)
	lw	a5,-32(s0)
	bgeu	a4,a5,.L167
	.loc 5 580 9
	li	a2,50
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 582 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L166
.L167:
	.loc 5 585 50
	lw	a5,-52(s0)
	sh	zero,256(a5)
	.loc 5 588 26
	lw	a5,-56(s0)
	lbu	a5,0(a5)
	.loc 5 588 30
	slli	a5,a5,8
	.loc 5 588 41
	lw	a4,-56(s0)
	addi	a4,a4,1
	lbu	a4,0(a4)
	.loc 5 588 36
	or	a5,a5,a4
	.loc 5 588 20
	sw	a5,-36(s0)
	.loc 5 589 9
	lw	a5,-56(s0)
	addi	a5,a5,2
	sw	a5,-56(s0)
	.loc 5 592 30
	lw	a4,-60(s0)
	lw	a5,-32(s0)
	sub	a5,a4,a5
	.loc 5 592 8
	lw	a4,-36(s0)
	bgtu	a4,a5,.L168
	.loc 5 593 24
	lw	a5,-36(s0)
	andi	a5,a5,1
	.loc 5 592 48 discriminator 1
	beq	a5,zero,.L169
.L168:
	.loc 5 594 9
	li	a2,50
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 596 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L166
.L169:
	.loc 5 602 12
	sw	zero,-24(s0)
	.loc 5 602 5
	j	.L170
.L179:
.LBB83:
	.loc 5 603 48
	lw	a4,-56(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 5 603 57
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a5,a5,8
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 5 603 62
	lw	a5,-24(s0)
	addi	a5,a5,1
	lw	a3,-56(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 5 603 57
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 5 603 18
	sh	a5,-38(s0)
	.loc 5 604 29
	lhu	a5,-38(s0)
	mv	a0,a5
	call	mbedtls_ssl_check_srtp_profile_value
	mv	a5,a0
	sh	a5,-26(s0)
	.loc 5 606 12
	lhu	a5,-26(s0)
	beq	a5,zero,.L183
	.loc 5 607 13
	lhu	a5,-26(s0)
	mv	a0,a5
	call	mbedtls_ssl_get_srtp_profile_as_string
	mv	a5,a0
	.loc 5 607 13 is_stmt 0 discriminator 1
	lui	a4,%hi(.LC21)
	addi	a4,a4,%lo(.LC21)
	li	a3,607
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 614 16 is_stmt 1
	sw	zero,-20(s0)
	.loc 5 614 9
	j	.L174
.L177:
	.loc 5 615 41
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 5 615 47
	lw	a4,192(a5)
	.loc 5 615 71
	lw	a5,-20(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	.loc 5 615 16
	lhu	a4,-26(s0)
	bne	a4,a5,.L175
	.loc 5 616 67
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 5 616 73
	lw	a4,192(a5)
	.loc 5 616 97
	lw	a5,-20(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a4,0(a5)
	.loc 5 616 62
	lw	a5,-52(s0)
	sh	a4,256(a5)
	.loc 5 617 17
	lhu	a5,-26(s0)
	mv	a0,a5
	call	mbedtls_ssl_get_srtp_profile_as_string
	mv	a5,a0
	.loc 5 617 17 is_stmt 0 discriminator 1
	lui	a4,%hi(.LC22)
	addi	a4,a4,%lo(.LC22)
	li	a3,617
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 620 17 is_stmt 1
	j	.L176
.L175:
	.loc 5 614 65 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L174:
	.loc 5 614 28 discriminator 1
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 5 614 34 discriminator 1
	lw	a5,196(a5)
	.loc 5 614 23 discriminator 1
	lw	a4,-20(s0)
	bltu	a4,a5,.L177
.L176:
	.loc 5 623 32
	lw	a5,-52(s0)
	lhu	a5,256(a5)
	.loc 5 623 12
	bne	a5,zero,.L184
	j	.L173
.L183:
	.loc 5 611 13
	nop
.L173:
.LBE83:
	.loc 5 602 39 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,2
	sw	a5,-24(s0)
.L170:
	.loc 5 602 19 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	bltu	a4,a5,.L179
	j	.L178
.L184:
.LBB84:
	.loc 5 624 13
	nop
.L178:
.LBE84:
	.loc 5 627 9
	lw	a4,-56(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	sw	a5,-56(s0)
	.loc 5 628 18
	lw	a5,-56(s0)
	lbu	a5,0(a5)
	.loc 5 628 16
	sh	a5,-40(s0)
	.loc 5 629 8
	lw	a5,-56(s0)
	addi	a5,a5,1
	sw	a5,-56(s0)
	.loc 5 631 8
	lhu	a4,-40(s0)
	li	a5,255
	bgtu	a4,a5,.L180
	.loc 5 632 20
	lhu	a4,-40(s0)
	lw	a5,-36(s0)
	add	a4,a4,a5
	.loc 5 632 37
	lw	a5,-32(s0)
	add	a5,a4,a5
	.loc 5 631 26 discriminator 1
	lw	a4,-60(s0)
	beq	a4,a5,.L181
.L180:
	.loc 5 633 9
	li	a2,50
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 635 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L166
.L181:
	.loc 5 639 12
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 5 639 18
	lbu	a4,17(a5)
	.loc 5 639 8
	li	a5,1
	bne	a4,a5,.L182
	.loc 5 639 47 discriminator 1
	lhu	a5,-40(s0)
	beq	a5,zero,.L182
	.loc 5 641 37
	lw	a5,-52(s0)
	lhu	a4,-40(s0)
	sh	a4,258(a5)
	.loc 5 643 35
	lw	a5,-52(s0)
	addi	a5,a5,260
	.loc 5 643 9
	lhu	a4,-40(s0)
	mv	a2,a4
	lw	a1,-56(s0)
	mv	a0,a5
	call	memcpy
	.loc 5 645 173
	lw	a5,-52(s0)
	addi	a4,a5,260
	.loc 5 645 204
	lw	a5,-52(s0)
	lhu	a5,258(a5)
	.loc 5 645 9
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC23)
	addi	a4,a4,%lo(.LC23)
	li	a3,645
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_buf
.L182:
	.loc 5 649 12
	li	a5,0
.L166:
	.loc 5 650 1
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
.LFE177:
	.size	ssl_parse_use_srtp_ext, .-ssl_parse_use_srtp_ext
	.section	.text.ssl_check_key_curve,"ax",@progbits
	.align	1
	.type	ssl_check_key_curve, @function
ssl_check_key_curve:
.LFB178:
	.loc 5 665 1
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
	.loc 5 666 15
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 5 667 35
	lw	a0,-36(s0)
	call	mbedtls_pk_get_ec_group_id
	mv	a5,a0
	sb	a5,-21(s0)
	.loc 5 670 11
	j	.L186
.L189:
	.loc 5 671 23
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	mv	a0,a5
	call	mbedtls_ssl_get_ecp_group_id_from_tls_id
	mv	a5,a0
	sb	a5,-22(s0)
	.loc 5 672 12
	lbu	a4,-22(s0)
	lbu	a5,-21(s0)
	bne	a4,a5,.L187
	.loc 5 673 20
	li	a5,0
	j	.L188
.L187:
	.loc 5 675 20
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
.L186:
	.loc 5 670 12
	lw	a5,-20(s0)
	lhu	a5,0(a5)
	.loc 5 670 25
	bne	a5,zero,.L189
	.loc 5 678 12
	li	a5,-1
.L188:
	.loc 5 679 1
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
.LFE178:
	.size	ssl_check_key_curve, .-ssl_check_key_curve
	.section	.rodata
	.align	2
.LC24:
	.string	"ciphersuite requires certificate"
	.align	2
.LC25:
	.string	"server has no certificate"
	.align	2
.LC26:
	.string	"candidate certificate chain, certificate"
	.align	2
.LC27:
	.string	"certificate mismatch: key type"
	.align	2
.LC28:
	.string	"certificate mismatch: (extended) key usage extension"
	.align	2
.LC29:
	.string	"certificate mismatch: elliptic curve"
	.align	2
.LC30:
	.string	"selected certificate chain, certificate"
	.section	.text.ssl_pick_cert,"ax",@progbits
	.align	1
	.type	ssl_pick_cert, @function
ssl_pick_cert:
.LFB179:
	.loc 5 689 1
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
	.loc 5 698 9
	lw	a0,-56(s0)
	call	mbedtls_ssl_get_ciphersuite_sig_pk_alg
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 5 703 12
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 5 703 23
	lw	a5,544(a5)
	.loc 5 703 8
	beq	a5,zero,.L191
	.loc 5 704 19
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 5 704 14
	lw	a5,544(a5)
	sw	a5,-24(s0)
	j	.L192
.L191:
	.loc 5 707 15
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 5 707 10
	lw	a5,108(a5)
	sw	a5,-24(s0)
.L192:
	.loc 5 709 9
	sw	zero,-32(s0)
	.loc 5 713 30
	lbu	a5,-25(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 5 713 20
	sw	a5,-32(s0)
	.loc 5 715 8
	lw	a5,-32(s0)
	beq	a5,zero,.L193
	.loc 5 716 16
	li	a5,0
	j	.L204
.L193:
	.loc 5 719 5
	lui	a5,%hi(.LC24)
	addi	a4,a5,%lo(.LC24)
	li	a3,719
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 721 8
	lw	a5,-24(s0)
	bne	a5,zero,.L195
	.loc 5 722 9
	lui	a5,%hi(.LC25)
	addi	a4,a5,%lo(.LC25)
	li	a3,722
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 723 16
	li	a5,-1
	j	.L204
.L195:
	.loc 5 726 14
	lw	a5,-24(s0)
	sw	a5,-20(s0)
	.loc 5 726 5
	j	.L196
.L202:
.LBB85:
	.loc 5 727 15
	sw	zero,-40(s0)
	.loc 5 728 188
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 728 9
	lui	a4,%hi(.LC26)
	addi	a4,a4,%lo(.LC26)
	li	a3,728
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_crt
	.loc 5 731 13
	sw	zero,-36(s0)
	.loc 5 743 50
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 743 46
	addi	a5,a5,204
	.loc 5 743 28
	lbu	a4,-25(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_pk_can_do
	sw	a0,-36(s0)
	.loc 5 745 12
	lw	a5,-36(s0)
	bne	a5,zero,.L197
	.loc 5 746 13
	lui	a5,%hi(.LC27)
	addi	a4,a5,%lo(.LC27)
	li	a3,746
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 747 13
	j	.L198
.L197:
	.loc 5 758 45
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 758 13
	addi	a4,s0,-40
	li	a3,771
	li	a2,0
	lw	a1,-56(s0)
	mv	a0,a5
	call	mbedtls_ssl_check_cert_usage
	mv	a5,a0
	.loc 5 758 12 discriminator 1
	beq	a5,zero,.L199
	.loc 5 762 13
	lui	a5,%hi(.LC28)
	addi	a4,a5,%lo(.LC28)
	li	a3,762
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 764 13
	j	.L198
.L199:
	.loc 5 768 12
	lbu	a4,-25(s0)
	li	a5,4
	bne	a4,a5,.L205
	.loc 5 769 37
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 5 769 13
	addi	a4,a5,204
	.loc 5 770 36
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 5 769 13
	lw	a5,404(a5)
	mv	a1,a5
	mv	a0,a4
	call	ssl_check_key_curve
	mv	a5,a0
	.loc 5 768 40 discriminator 1
	beq	a5,zero,.L205
	.loc 5 771 13
	lui	a5,%hi(.LC29)
	addi	a4,a5,%lo(.LC29)
	li	a3,771
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 772 13
	nop
.L198:
.LBE85:
	.loc 5 726 38 discriminator 2
	lw	a5,-20(s0)
	lw	a5,8(a5)
	sw	a5,-20(s0)
.L196:
	.loc 5 726 26 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L202
	j	.L201
.L205:
.LBB86:
	.loc 5 777 9
	nop
.L201:
.LBE86:
	.loc 5 781 8
	lw	a5,-20(s0)
	beq	a5,zero,.L203
	.loc 5 782 12
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 5 782 34
	lw	a4,-20(s0)
	sw	a4,540(a5)
	.loc 5 783 187
	lw	a5,-52(s0)
	lw	a5,64(a5)
	.loc 5 783 198
	lw	a5,540(a5)
	.loc 5 783 208
	lw	a5,0(a5)
	.loc 5 783 9
	lui	a4,%hi(.LC30)
	addi	a4,a4,%lo(.LC30)
	li	a3,783
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_crt
	.loc 5 785 16
	li	a5,0
	j	.L204
.L203:
	.loc 5 788 12
	li	a5,-1
.L204:
	.loc 5 789 1
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
.LFE179:
	.size	ssl_pick_cert, .-ssl_pick_cert
	.section	.rodata
	.align	2
.LC31:
	.string	"should never happen"
	.align	2
.LC32:
	.string	"trying ciphersuite: %#04x (%s)"
	.align	2
.LC33:
	.string	"ciphersuite mismatch: version"
	.align	2
.LC34:
	.string	"ciphersuite mismatch: no common elliptic curve"
	.align	2
.LC35:
	.string	"ciphersuite mismatch: no pre-shared key"
	.align	2
.LC36:
	.string	"ciphersuite mismatch: no suitable certificate"
	.align	2
.LC37:
	.string	"ciphersuite mismatch: no suitable hash algorithm for signature algorithm %u"
	.section	.text.ssl_ciphersuite_match,"ax",@progbits
	.align	1
	.type	ssl_ciphersuite_match, @function
ssl_ciphersuite_match:
.LFB180:
	.loc 5 799 1
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
	.loc 5 806 18
	lw	a0,-40(s0)
	call	mbedtls_ssl_ciphersuite_from_id
	sw	a0,-20(s0)
	.loc 5 807 8
	lw	a5,-20(s0)
	bne	a5,zero,.L207
	.loc 5 808 9
	lui	a5,%hi(.LC31)
	addi	a4,a5,%lo(.LC31)
	li	a3,808
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 809 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L208
.L207:
	.loc 5 812 5
	lw	a4,-40(s0)
	.loc 5 812 206
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 5 812 5
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC32)
	addi	a4,a4,%lo(.LC32)
	li	a3,812
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 815 19
	lw	a5,-20(s0)
	lhu	a4,12(a5)
	.loc 5 815 42
	lw	a5,-36(s0)
	lhu	a5,16(a5)
	.loc 5 815 8
	bgtu	a4,a5,.L209
	.loc 5 816 19
	lw	a5,-20(s0)
	lhu	a4,14(a5)
	.loc 5 816 42
	lw	a5,-36(s0)
	lhu	a5,16(a5)
	.loc 5 815 56 discriminator 1
	bgeu	a4,a5,.L210
.L209:
	.loc 5 817 9
	lui	a5,%hi(.LC33)
	addi	a4,a5,%lo(.LC33)
	li	a3,817
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 818 16
	li	a5,0
	j	.L208
.L210:
	.loc 5 833 9
	lw	a0,-20(s0)
	call	mbedtls_ssl_ciphersuite_uses_ec
	mv	a5,a0
	.loc 5 833 8 discriminator 1
	beq	a5,zero,.L211
	.loc 5 834 13
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 834 24
	lw	a5,404(a5)
	.loc 5 833 53 discriminator 2
	beq	a5,zero,.L212
	.loc 5 835 13
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 835 24
	lw	a5,404(a5)
	.loc 5 835 39
	lhu	a5,0(a5)
	.loc 5 834 47
	bne	a5,zero,.L211
.L212:
	.loc 5 836 9
	lui	a5,%hi(.LC34)
	addi	a4,a5,%lo(.LC34)
	li	a3,836
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 838 16
	li	a5,0
	j	.L208
.L211:
	.loc 5 845 9
	lw	a0,-20(s0)
	call	mbedtls_ssl_ciphersuite_uses_psk
	mv	a5,a0
	.loc 5 845 8 discriminator 1
	beq	a5,zero,.L213
	.loc 5 846 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	ssl_conf_has_psk_or_cb
	mv	a5,a0
	.loc 5 845 54 discriminator 2
	bne	a5,zero,.L213
	.loc 5 847 9
	lui	a5,%hi(.LC35)
	addi	a4,a5,%lo(.LC35)
	li	a3,847
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 848 16
	li	a5,0
	j	.L208
.L213:
	.loc 5 860 9
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	ssl_pick_cert
	mv	a5,a0
	.loc 5 860 8 discriminator 1
	beq	a5,zero,.L214
	.loc 5 861 9
	lui	a5,%hi(.LC36)
	addi	a4,a5,%lo(.LC36)
	li	a3,861
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 863 16
	li	a5,0
	j	.L208
.L214:
	.loc 5 870 16
	lw	a0,-20(s0)
	call	mbedtls_ssl_get_ciphersuite_sig_alg
	mv	a5,a0
	sb	a5,-21(s0)
	.loc 5 871 8
	lbu	a5,-21(s0)
	beq	a5,zero,.L215
	.loc 5 873 18
	lbu	a5,-21(s0)
	mv	a0,a5
	call	mbedtls_ssl_sig_from_pk_alg
	mv	a5,a0
	.loc 5 872 9
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_ssl_tls12_get_preferred_hash_for_sig_alg
	mv	a5,a0
	.loc 5 871 37 discriminator 1
	bne	a5,zero,.L215
	.loc 5 874 9
	lbu	a5,-21(s0)
	lui	a4,%hi(.LC37)
	addi	a4,a4,%lo(.LC37)
	li	a3,874
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 876 16
	li	a5,0
	j	.L208
.L215:
	.loc 5 881 23
	lw	a5,-44(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 5 882 12
	li	a5,0
.L208:
	.loc 5 883 1
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
.LFE180:
	.size	ssl_ciphersuite_match, .-ssl_ciphersuite_match
	.section	.rodata
	.align	2
.LC38:
	.string	"=> parse client hello"
	.align	2
.LC39:
	.string	"mbedtls_ssl_fetch_input"
	.align	2
.LC40:
	.string	"record header"
	.align	2
.LC41:
	.string	"client hello, message type: %d"
	.align	2
.LC42:
	.string	"client hello, message len.: %d"
	.align	2
.LC43:
	.string	"client hello, protocol version: [%d:%d]"
	.align	2
.LC44:
	.string	"replayed record, discarding"
	.align	2
.LC45:
	.string	"record contents"
	.align	2
.LC46:
	.string	"update_checksum"
	.align	2
.LC47:
	.string	"client hello v3, handshake type: %d"
	.align	2
.LC48:
	.string	"bad client hello message_seq: %u (expected %u)"
	.align	2
.LC49:
	.string	"fragment_offset=%u fragment_length=%u length=%u"
	.align	2
.LC50:
	.string	"ClientHello fragmentation not supported"
	.align	2
.LC51:
	.string	"client hello, version"
	.align	2
.LC52:
	.string	"server only supports TLS 1.2"
	.align	2
.LC53:
	.string	"client hello, random bytes"
	.align	2
.LC54:
	.string	"client hello, session id"
	.align	2
.LC55:
	.string	"client hello, cookie"
	.align	2
.LC56:
	.string	"cookie verification failed"
	.align	2
.LC57:
	.string	"cookie verification passed"
	.align	2
.LC58:
	.string	"cookie verification skipped"
	.align	2
.LC59:
	.string	"client hello, ciphersuitelist"
	.align	2
.LC60:
	.string	"client hello, compression"
	.align	2
.LC61:
	.string	"client hello extensions"
	.align	2
.LC62:
	.string	"found ServerName extension"
	.align	2
.LC63:
	.string	"found renegotiation extension"
	.align	2
.LC64:
	.string	"found signature_algorithms extension"
	.align	2
.LC65:
	.string	"found supported elliptic curves extension"
	.align	2
.LC66:
	.string	"found supported point formats extension"
	.align	2
.LC67:
	.string	"found max fragment length extension"
	.align	2
.LC68:
	.string	"found CID extension"
	.align	2
.LC69:
	.string	"found encrypt then mac extension"
	.align	2
.LC70:
	.string	"found extended master secret extension"
	.align	2
.LC71:
	.string	"found session ticket extension"
	.align	2
.LC72:
	.string	"found alpn extension"
	.align	2
.LC73:
	.string	"found use_srtp extension"
	.align	2
.LC74:
	.string	"unknown extension found: %u (ignoring)"
	.align	2
.LC75:
	.string	"received TLS_EMPTY_RENEGOTIATION_INFO "
	.align	2
.LC76:
	.string	"received RENEGOTIATION SCSV during renegotiation"
	.align	2
.LC77:
	.string	"legacy renegotiation, breaking off handshake"
	.align	2
.LC78:
	.string	"renegotiation_info extension missing (secure)"
	.align	2
.LC79:
	.string	"legacy renegotiation not allowed"
	.align	2
.LC80:
	.string	"renegotiation_info extension present (legacy)"
	.align	2
.LC81:
	.string	"f_cert_cb"
	.align	2
.LC82:
	.string	"got ciphersuites in common, but none of them usable"
	.align	2
.LC83:
	.string	"got no ciphersuites in common"
	.align	2
.LC84:
	.string	"selected ciphersuite: %s"
	.align	2
.LC85:
	.string	"client hello v3, signature_algorithm ext: %u"
	.align	2
.LC86:
	.string	"no hash algorithm for signature algorithm %u - should not happen"
	.align	2
.LC87:
	.string	"<= parse client hello"
	.section	.text.ssl_parse_client_hello,"ax",@progbits
	.align	1
	.type	ssl_parse_client_hello, @function
ssl_parse_client_hello:
.LFB181:
	.loc 5 890 1
	.cfi_startproc
	addi	sp,sp,-304
	.cfi_def_cfa_offset 304
	sw	ra,300(sp)
	sw	s0,296(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,304
	.cfi_def_cfa 8, 0
	sw	a0,-292(s0)
	.loc 5 900 9
	sw	zero,-52(s0)
	.loc 5 902 9
	sw	zero,-56(s0)
	.loc 5 910 9
	sw	zero,-60(s0)
	.loc 5 913 5
	lui	a5,%hi(.LC38)
	addi	a4,a5,%lo(.LC38)
	li	a3,913
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
.L217:
	.loc 5 928 19
	sw	zero,-64(s0)
	.loc 5 930 25
	lw	a5,-292(s0)
	lw	a5,8(a5)
	.loc 5 930 41
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 5 930 19
	sw	a5,-64(s0)
	.loc 5 932 8
	lw	a5,-64(s0)
	bne	a5,zero,.L218
	.loc 5 932 31 discriminator 1
	lw	a5,-292(s0)
	lw	a5,176(a5)
	.loc 5 932 24 discriminator 1
	bne	a5,zero,.L218
	.loc 5 933 20
	li	a1,5
	lw	a0,-292(s0)
	call	mbedtls_ssl_fetch_input
	sw	a0,-68(s0)
	.loc 5 933 12 discriminator 1
	lw	a5,-68(s0)
	beq	a5,zero,.L218
	.loc 5 935 13
	lw	a5,-68(s0)
	lui	a4,%hi(.LC39)
	addi	a4,a4,%lo(.LC39)
	li	a3,935
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_ret
	.loc 5 936 20
	lw	a5,-68(s0)
	j	.L331
.L218:
	.loc 5 940 9
	lw	a5,-292(s0)
	lw	a5,104(a5)
	sw	a5,-72(s0)
	.loc 5 942 5
	lw	a0,-292(s0)
	call	mbedtls_ssl_in_hdr_len
	mv	a5,a0
	.loc 5 942 5 is_stmt 0 discriminator 1
	mv	a6,a5
	lw	a5,-72(s0)
	lui	a4,%hi(.LC40)
	addi	a4,a4,%lo(.LC40)
	li	a3,942
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,4
	lw	a0,-292(s0)
	call	mbedtls_debug_print_buf
	.loc 5 953 174 is_stmt 1
	lw	a5,-72(s0)
	lbu	a5,0(a5)
	.loc 5 953 5
	lui	a4,%hi(.LC41)
	addi	a4,a4,%lo(.LC41)
	li	a3,953
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 956 12
	lw	a5,-72(s0)
	lbu	a4,0(a5)
	.loc 5 956 8
	li	a5,22
	beq	a4,a5,.L220
	.loc 5 957 9
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,957
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 958 16
	li	a5,-28672
	addi	a5,a5,-1792
	j	.L331
.L220:
	.loc 5 961 291
	lw	a5,-292(s0)
	lw	a5,112(a5)
	sw	a5,-164(s0)
.LBB87:
.LBB88:
	.loc 6 122 33
	lw	a5,-164(s0)
	sw	a5,-160(s0)
	.loc 6 123 7
	lw	a5,-160(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-154(s0)
	.loc 6 127 12
	lhu	a5,-154(s0)
.LBE88:
.LBE87:
	.loc 5 961 230 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 961 5 discriminator 2
	lui	a4,%hi(.LC42)
	addi	a4,a4,%lo(.LC42)
	li	a3,961
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 964 183
	lw	a5,-72(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 5 964 5
	mv	a4,a5
	.loc 5 964 191
	lw	a5,-72(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 5 964 5
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC43)
	addi	a4,a4,%lo(.LC43)
	li	a3,964
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 970 12
	lw	a5,-292(s0)
	lw	a5,0(a5)
	.loc 5 970 18
	lbu	a4,5(a5)
	.loc 5 970 8
	li	a5,1
	bne	a4,a5,.L222
	.loc 5 972 15
	lw	a5,-292(s0)
	lw	a5,8(a5)
	.loc 5 972 9
	bne	a5,zero,.L222
	.loc 5 976 16
	lw	a5,-292(s0)
	lw	a5,100(a5)
	.loc 5 976 24
	lbu	a5,0(a5)
	.loc 5 976 12
	bne	a5,zero,.L223
	.loc 5 976 39 discriminator 1
	lw	a5,-292(s0)
	lw	a5,100(a5)
	.loc 5 976 47 discriminator 1
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 5 976 33 discriminator 1
	beq	a5,zero,.L224
.L223:
	.loc 5 977 13
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,977
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 978 20
	li	a5,-24576
	addi	a5,a5,-1536
	j	.L331
.L224:
	.loc 5 981 16
	lw	a5,-292(s0)
	addi	a4,a5,238
	.loc 5 981 41
	lw	a5,-292(s0)
	lw	a5,100(a5)
	.loc 5 981 50
	addi	a5,a5,2
	.loc 5 981 9
	li	a2,6
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 5 985 13
	lw	a0,-292(s0)
	call	mbedtls_ssl_dtls_replay_check
	mv	a5,a0
	.loc 5 985 12 discriminator 1
	beq	a5,zero,.L225
	.loc 5 986 13
	lui	a5,%hi(.LC44)
	addi	a4,a5,%lo(.LC44)
	li	a3,986
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 987 37
	lw	a5,-292(s0)
	sw	zero,148(a5)
	.loc 5 988 26
	lw	a5,-292(s0)
	sw	zero,136(a5)
	.loc 5 989 13
	j	.L217
.L225:
	.loc 5 993 9
	lw	a0,-292(s0)
	call	mbedtls_ssl_dtls_replay_update
.L222:
	.loc 5 998 135
	lw	a5,-292(s0)
	lw	a5,112(a5)
	sw	a5,-152(s0)
.LBB89:
.LBB90:
	.loc 6 122 33
	lw	a5,-152(s0)
	sw	a5,-148(s0)
	.loc 6 123 7
	lw	a5,-148(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-166(s0)
	.loc 6 127 12
	lhu	a5,-166(s0)
.LBE90:
.LBE89:
	.loc 5 998 74 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 998 13 discriminator 2
	sw	a5,-36(s0)
	.loc 5 1001 12
	lw	a5,-292(s0)
	lw	a5,8(a5)
	.loc 5 1001 8
	beq	a5,zero,.L227
	.loc 5 1003 17
	lw	a5,-292(s0)
	lw	a5,168(a5)
	sw	a5,-36(s0)
	j	.L228
.L227:
	.loc 5 1007 16
	lw	a5,-292(s0)
	lw	a5,176(a5)
	.loc 5 1007 12
	beq	a5,zero,.L229
	.loc 5 1008 39
	lw	a5,-292(s0)
	sw	zero,176(a5)
	j	.L228
.L229:
	.loc 5 1010 16
	lw	a4,-36(s0)
	li	a5,16384
	bleu	a4,a5,.L230
	.loc 5 1011 17
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,1011
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1012 24
	li	a5,-24576
	addi	a5,a5,-1536
	j	.L331
.L230:
	.loc 5 1016 48
	lw	a0,-292(s0)
	call	mbedtls_ssl_in_hdr_len
	mv	a4,a0
	.loc 5 1015 24
	lw	a5,-36(s0)
	add	a5,a4,a5
	mv	a1,a5
	lw	a0,-292(s0)
	call	mbedtls_ssl_fetch_input
	sw	a0,-68(s0)
	.loc 5 1015 16 discriminator 1
	lw	a5,-68(s0)
	beq	a5,zero,.L231
	.loc 5 1017 17
	lw	a5,-68(s0)
	lui	a4,%hi(.LC39)
	addi	a4,a4,%lo(.LC39)
	li	a3,1017
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_ret
	.loc 5 1018 24
	lw	a5,-68(s0)
	j	.L331
.L231:
	.loc 5 1023 20
	lw	a5,-292(s0)
	lw	a5,0(a5)
	.loc 5 1023 26
	lbu	a4,5(a5)
	.loc 5 1023 16
	li	a5,1
	bne	a4,a5,.L232
	.loc 5 1024 53
	lw	a0,-292(s0)
	call	mbedtls_ssl_in_hdr_len
	mv	a4,a0
	.loc 5 1024 51 discriminator 1
	lw	a5,-36(s0)
	add	a4,a4,a5
	.loc 5 1024 41 discriminator 1
	lw	a5,-292(s0)
	sw	a4,148(a5)
	j	.L228
.L232:
	.loc 5 1027 26
	lw	a5,-292(s0)
	sw	zero,136(a5)
.L228:
	.loc 5 1031 9
	lw	a5,-292(s0)
	lw	a5,120(a5)
	sw	a5,-72(s0)
	.loc 5 1033 5
	lw	a6,-36(s0)
	lw	a5,-72(s0)
	lui	a4,%hi(.LC45)
	addi	a4,a4,%lo(.LC45)
	li	a3,1033
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,4
	lw	a0,-292(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1035 14
	lw	a5,-292(s0)
	lw	a5,64(a5)
	.loc 5 1035 25
	lw	a5,28(a5)
	.loc 5 1035 11
	lw	a2,-36(s0)
	lw	a1,-72(s0)
	lw	a0,-292(s0)
	jalr	a5
.LVL1:
	sw	a0,-68(s0)
	.loc 5 1036 8
	lw	a5,-68(s0)
	beq	a5,zero,.L233
	.loc 5 1037 9
	lw	a5,-68(s0)
	lui	a4,%hi(.LC46)
	addi	a4,a4,%lo(.LC46)
	li	a3,1037
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_ret
	.loc 5 1038 16
	lw	a5,-68(s0)
	j	.L331
.L233:
	.loc 5 1049 19
	lw	a0,-292(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a4,a0
	.loc 5 1049 8 discriminator 1
	lw	a5,-36(s0)
	bgeu	a5,a4,.L234
	.loc 5 1050 9
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,1050
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1051 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L331
.L234:
	.loc 5 1054 180
	lw	a5,-72(s0)
	lbu	a5,0(a5)
	.loc 5 1054 5
	lui	a4,%hi(.LC47)
	addi	a4,a4,%lo(.LC47)
	li	a3,1054
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1056 12
	lw	a5,-72(s0)
	lbu	a4,0(a5)
	.loc 5 1056 8
	li	a5,1
	beq	a4,a5,.L235
	.loc 5 1057 9
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,1057
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1058 16
	li	a5,-28672
	addi	a5,a5,-1792
	j	.L331
.L235:
	.loc 5 1062 12
	lw	a5,-292(s0)
	lw	a5,0(a5)
	.loc 5 1062 18
	lbu	a4,5(a5)
	.loc 5 1062 8
	li	a5,1
	bne	a4,a5,.L236
	.loc 5 1068 16
	lw	a5,-292(s0)
	lw	a4,8(a5)
	.loc 5 1068 12
	li	a5,1
	bne	a4,a5,.L237
.LBB91:
	.loc 5 1070 165
	lw	a5,-292(s0)
	lw	a5,120(a5)
	.loc 5 1070 175
	addi	a5,a5,4
	sw	a5,-172(s0)
.LBB92:
.LBB93:
	.loc 6 122 33
	lw	a5,-172(s0)
	sw	a5,-176(s0)
	.loc 6 123 7
	lw	a5,-176(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-178(s0)
	.loc 6 127 12
	lhu	a5,-178(s0)
.LBE93:
.LBE92:
	.loc 5 1070 114 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 1070 26 discriminator 2
	sw	a5,-80(s0)
	.loc 5 1071 35
	lw	a5,-292(s0)
	lw	a5,64(a5)
	.loc 5 1071 46
	lw	a5,636(a5)
	.loc 5 1071 16
	lw	a4,-80(s0)
	beq	a4,a5,.L239
	.loc 5 1072 219
	lw	a5,-292(s0)
	lw	a5,64(a5)
	.loc 5 1072 17
	lw	a5,636(a5)
	mv	a6,a5
	lw	a5,-80(s0)
	lui	a4,%hi(.LC48)
	addi	a4,a4,%lo(.LC48)
	li	a3,1072
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1075 24
	li	a5,-28672
	addi	a5,a5,-768
	j	.L331
.L239:
	.loc 5 1078 16
	lw	a5,-292(s0)
	lw	a5,64(a5)
	.loc 5 1078 27
	lw	a4,636(a5)
	.loc 5 1078 39
	addi	a4,a4,1
	sw	a4,636(a5)
.LBE91:
	j	.L240
.L237:
.LBB94:
	.loc 5 1082 165
	lw	a5,-292(s0)
	lw	a5,120(a5)
	.loc 5 1082 175
	addi	a5,a5,4
	sw	a5,-184(s0)
.LBB95:
.LBB96:
	.loc 6 122 33
	lw	a5,-184(s0)
	sw	a5,-188(s0)
	.loc 6 123 7
	lw	a5,-188(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-190(s0)
	.loc 6 127 12
	lhu	a5,-190(s0)
.LBE96:
.LBE95:
	.loc 5 1082 114 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 1082 26 discriminator 2
	sw	a5,-76(s0)
	.loc 5 1083 16
	lw	a5,-292(s0)
	lw	a5,64(a5)
	.loc 5 1083 41
	lw	a4,-76(s0)
	sw	a4,632(a5)
	.loc 5 1084 16
	lw	a5,-292(s0)
	lw	a5,64(a5)
	.loc 5 1084 54
	lw	a4,-76(s0)
	addi	a4,a4,1
	.loc 5 1084 40
	sw	a4,636(a5)
.L240:
.LBE94:
.LBB97:
	.loc 5 1092 49
	lw	a5,-292(s0)
	lw	a5,120(a5)
	.loc 5 1092 58
	addi	a5,a5,6
	lbu	a5,0(a5)
	.loc 5 1092 64
	slli	a4,a5,16
	.loc 5 1092 89
	lw	a5,-292(s0)
	lw	a5,120(a5)
	.loc 5 1092 98
	addi	a5,a5,7
	lbu	a5,0(a5)
	.loc 5 1092 108
	slli	a5,a5,8
	.loc 5 1092 71
	or	a5,a4,a5
	.loc 5 1092 132
	lw	a4,-292(s0)
	lw	a4,120(a4)
	.loc 5 1092 141
	addi	a4,a4,8
	lbu	a4,0(a4)
	.loc 5 1092 29
	or	a5,a5,a4
	sw	a5,-84(s0)
	.loc 5 1093 49
	lw	a5,-292(s0)
	lw	a5,120(a5)
	.loc 5 1093 58
	addi	a5,a5,9
	lbu	a5,0(a5)
	.loc 5 1093 64
	slli	a4,a5,16
	.loc 5 1093 89
	lw	a5,-292(s0)
	lw	a5,120(a5)
	.loc 5 1093 98
	addi	a5,a5,10
	lbu	a5,0(a5)
	.loc 5 1093 108
	slli	a5,a5,8
	.loc 5 1093 71
	or	a5,a4,a5
	.loc 5 1093 132
	lw	a4,-292(s0)
	lw	a4,120(a4)
	.loc 5 1093 141
	addi	a4,a4,11
	lbu	a4,0(a4)
	.loc 5 1093 29
	or	a5,a5,a4
	sw	a5,-88(s0)
	.loc 5 1094 40
	lw	a5,-292(s0)
	lw	a5,120(a5)
	.loc 5 1094 49
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 5 1094 55
	slli	a4,a5,16
	.loc 5 1094 80
	lw	a5,-292(s0)
	lw	a5,120(a5)
	.loc 5 1094 89
	addi	a5,a5,2
	lbu	a5,0(a5)
	.loc 5 1094 99
	slli	a5,a5,8
	.loc 5 1094 62
	or	a5,a4,a5
	.loc 5 1094 123
	lw	a4,-292(s0)
	lw	a4,120(a4)
	.loc 5 1094 132
	addi	a4,a4,3
	lbu	a4,0(a4)
	.loc 5 1094 20
	or	a5,a5,a4
	sw	a5,-92(s0)
	.loc 5 1095 13
	lw	a7,-92(s0)
	lw	a6,-88(s0)
	lw	a5,-84(s0)
	lui	a4,%hi(.LC49)
	addi	a4,a4,%lo(.LC49)
	li	a3,1095
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,4
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1099 16
	lw	a5,-84(s0)
	bne	a5,zero,.L242
	.loc 5 1099 38 discriminator 1
	lw	a4,-92(s0)
	lw	a5,-88(s0)
	beq	a4,a5,.L236
.L242:
	.loc 5 1100 17
	lui	a5,%hi(.LC50)
	addi	a4,a5,%lo(.LC50)
	li	a3,1100
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1101 24
	li	a5,-28672
	addi	a5,a5,-128
	j	.L331
.L236:
.LBE97:
	.loc 5 1107 12
	lw	a0,-292(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a4,a0
	.loc 5 1107 9 discriminator 1
	lw	a5,-72(s0)
	add	a5,a5,a4
	sw	a5,-72(s0)
	.loc 5 1108 16
	lw	a0,-292(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a4,a0
	.loc 5 1108 13 discriminator 1
	lw	a5,-36(s0)
	sub	a5,a5,a4
	sw	a5,-36(s0)
	.loc 5 1131 8
	lw	a4,-36(s0)
	li	a5,37
	bgtu	a4,a5,.L243
	.loc 5 1132 9
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,1132
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1133 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L331
.L243:
	.loc 5 1139 5
	li	a6,2
	lw	a5,-72(s0)
	lui	a4,%hi(.LC51)
	addi	a4,a4,%lo(.LC51)
	li	a3,1139
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1142 83
	lw	a5,-292(s0)
	lw	a5,0(a5)
	.loc 5 1142 89
	lbu	a5,5(a5)
	.loc 5 1141 55
	mv	a1,a5
	lw	a0,-72(s0)
	call	mbedtls_ssl_read_version
	mv	a5,a0
	mv	a4,a5
	.loc 5 1141 22 discriminator 1
	lw	a5,-292(s0)
	sh	a4,16(a5)
	.loc 5 1143 8
	lw	a5,-292(s0)
	lw	a5,60(a5)
	.loc 5 1143 46
	lw	a4,-292(s0)
	lhu	a4,16(a4)
	.loc 5 1143 41
	sh	a4,4(a5)
	.loc 5 1144 43
	lw	a5,-292(s0)
	lw	a4,0(a5)
	.loc 5 1144 8
	lw	a5,-292(s0)
	lw	a5,60(a5)
	.loc 5 1144 49
	lbu	a4,4(a4)
	.loc 5 1144 38
	sb	a4,2(a5)
	.loc 5 1146 12
	lw	a5,-292(s0)
	lhu	a4,16(a5)
	.loc 5 1146 8
	li	a5,771
	beq	a4,a5,.L244
	.loc 5 1147 9
	lui	a5,%hi(.LC52)
	addi	a4,a5,%lo(.LC52)
	li	a3,1147
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1148 9
	li	a2,70
	li	a1,2
	lw	a0,-292(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1150 16
	li	a5,-28672
	addi	a5,a5,384
	j	.L331
.L244:
	.loc 5 1156 172
	lw	a5,-72(s0)
	addi	a5,a5,2
	.loc 5 1156 5
	li	a6,32
	lui	a4,%hi(.LC53)
	addi	a4,a4,%lo(.LC53)
	li	a3,1156
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1158 15
	lw	a5,-292(s0)
	lw	a5,64(a5)
	.loc 5 1158 26
	addi	a4,a5,808
	.loc 5 1158 43
	lw	a5,-72(s0)
	addi	a5,a5,2
	.loc 5 1158 5
	li	a2,32
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 5 1163 19
	lw	a5,-72(s0)
	addi	a5,a5,34
	lbu	a5,0(a5)
	.loc 5 1163 14
	sw	a5,-96(s0)
	.loc 5 1165 8
	lw	a4,-96(s0)
	li	a5,32
	bgtu	a4,a5,.L245
	.loc 5 1166 23
	lw	a5,-96(s0)
	addi	a5,a5,36
	.loc 5 1165 55 discriminator 1
	lw	a4,-36(s0)
	bgeu	a4,a5,.L246
.L245:
	.loc 5 1167 9
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,1167
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1168 9
	li	a2,50
	li	a1,2
	lw	a0,-292(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1170 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L331
.L246:
	.loc 5 1173 170
	lw	a5,-72(s0)
	addi	a5,a5,35
	.loc 5 1173 5
	lw	a6,-96(s0)
	lui	a4,%hi(.LC54)
	addi	a4,a4,%lo(.LC54)
	li	a3,1173
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1175 8
	lw	a5,-292(s0)
	lw	a5,60(a5)
	.loc 5 1175 36
	lw	a4,-96(s0)
	sw	a4,12(a5)
	.loc 5 1176 15
	lw	a5,-292(s0)
	lw	a5,60(a5)
	.loc 5 1176 34
	addi	a5,a5,16
	.loc 5 1176 5
	li	a2,32
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 5 1178 15
	lw	a5,-292(s0)
	lw	a5,60(a5)
	.loc 5 1178 34
	addi	a4,a5,16
	.loc 5 1178 44
	lw	a5,-72(s0)
	addi	a3,a5,35
	.loc 5 1179 15
	lw	a5,-292(s0)
	lw	a5,60(a5)
	.loc 5 1178 5
	lw	a5,12(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcpy
	.loc 5 1185 12
	lw	a5,-292(s0)
	lw	a5,0(a5)
	.loc 5 1185 18
	lbu	a4,5(a5)
	.loc 5 1185 8
	li	a5,1
	bne	a4,a5,.L247
	.loc 5 1186 23
	lw	a5,-96(s0)
	addi	a5,a5,35
	sw	a5,-100(s0)
	.loc 5 1187 25
	lw	a4,-72(s0)
	lw	a5,-100(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 5 1187 20
	sw	a5,-104(s0)
	.loc 5 1189 31
	lw	a4,-100(s0)
	lw	a5,-104(s0)
	add	a5,a4,a5
	.loc 5 1189 44
	addi	a5,a5,3
	.loc 5 1189 12
	lw	a4,-36(s0)
	bgeu	a4,a5,.L248
	.loc 5 1190 13
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,1190
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1191 13
	li	a2,50
	li	a1,2
	lw	a0,-292(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1193 20
	li	a5,-28672
	addi	a5,a5,-768
	j	.L331
.L248:
	.loc 5 1196 186
	lw	a5,-100(s0)
	addi	a5,a5,1
	lw	a4,-72(s0)
	add	a5,a4,a5
	.loc 5 1196 9
	lw	a6,-104(s0)
	lui	a4,%hi(.LC55)
	addi	a4,a4,%lo(.LC55)
	li	a3,1196
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1200 16
	lw	a5,-292(s0)
	lw	a5,0(a5)
	.loc 5 1200 22
	lw	a5,80(a5)
	.loc 5 1200 12
	beq	a5,zero,.L249
	.loc 5 1202 18
	lw	a5,-292(s0)
	lw	a5,8(a5)
	.loc 5 1202 12
	bne	a5,zero,.L249
	.loc 5 1205 20
	lw	a5,-292(s0)
	lw	a5,0(a5)
	.loc 5 1205 26
	lw	a5,80(a5)
	.loc 5 1205 46
	lw	a4,-292(s0)
	lw	a4,0(a4)
	.loc 5 1205 52
	lw	a0,84(a4)
	.loc 5 1206 63
	lw	a4,-100(s0)
	addi	a4,a4,1
	lw	a3,-72(s0)
	add	a1,a3,a4
	.loc 5 1207 46
	lw	a4,-292(s0)
	lw	a3,516(a4)
	.loc 5 1205 17
	lw	a4,-292(s0)
	lw	a4,520(a4)
	lw	a2,-104(s0)
	jalr	a5
.LVL2:
	mv	a5,a0
	.loc 5 1205 16 discriminator 1
	beq	a5,zero,.L250
	.loc 5 1208 17
	lui	a5,%hi(.LC56)
	addi	a4,a5,%lo(.LC56)
	li	a3,1208
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1209 20
	lw	a5,-292(s0)
	lw	a5,64(a5)
	.loc 5 1209 54
	li	a4,1
	sb	a4,629(a5)
	.loc 5 1205 16
	j	.L252
.L250:
	.loc 5 1211 17
	lui	a5,%hi(.LC57)
	addi	a4,a5,%lo(.LC57)
	li	a3,1211
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1212 20
	lw	a5,-292(s0)
	lw	a5,64(a5)
	.loc 5 1212 54
	sb	zero,629(a5)
	.loc 5 1205 16
	j	.L252
.L249:
	.loc 5 1218 16
	lw	a5,-104(s0)
	beq	a5,zero,.L253
	.loc 5 1220 17
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,1220
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1221 24
	li	a5,-28672
	addi	a5,a5,-768
	j	.L331
.L253:
	.loc 5 1224 13
	lui	a5,%hi(.LC58)
	addi	a4,a5,%lo(.LC58)
	li	a3,1224
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
.L252:
	.loc 5 1230 41
	lw	a4,-100(s0)
	lw	a5,-104(s0)
	add	a5,a4,a5
	.loc 5 1230 21
	addi	a5,a5,1
	sw	a5,-32(s0)
	j	.L254
.L247:
	.loc 5 1233 17
	lw	a5,-96(s0)
	addi	a5,a5,35
	sw	a5,-32(s0)
.L254:
	.loc 5 1235 130
	lw	a4,-72(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	sw	a5,-196(s0)
.LBB98:
.LBB99:
	.loc 6 122 33
	lw	a5,-196(s0)
	sw	a5,-200(s0)
	.loc 6 123 7
	lw	a5,-200(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-202(s0)
	.loc 6 127 12
	lhu	a5,-202(s0)
.LBE99:
.LBE98:
	.loc 5 1235 77 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 1235 14 discriminator 2
	sw	a5,-108(s0)
	.loc 5 1237 8
	lw	a4,-108(s0)
	li	a5,1
	bleu	a4,a5,.L256
	.loc 5 1238 22
	lw	a4,-108(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	.loc 5 1238 36
	addi	a5,a5,3
	.loc 5 1237 22 discriminator 1
	lw	a4,-36(s0)
	bltu	a4,a5,.L256
	.loc 5 1239 19
	lw	a5,-108(s0)
	andi	a5,a5,1
	.loc 5 1238 50
	beq	a5,zero,.L257
.L256:
	.loc 5 1240 9
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,1240
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1241 9
	li	a2,50
	li	a1,2
	lw	a0,-292(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1243 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L331
.L257:
	.loc 5 1246 189
	lw	a5,-32(s0)
	addi	a5,a5,2
	lw	a4,-72(s0)
	add	a5,a4,a5
	.loc 5 1246 5
	lw	a6,-108(s0)
	lui	a4,%hi(.LC59)
	addi	a4,a4,%lo(.LC59)
	li	a3,1246
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1255 35
	lw	a4,-32(s0)
	lw	a5,-108(s0)
	add	a5,a4,a5
	.loc 5 1255 17
	addi	a5,a5,2
	sw	a5,-112(s0)
	.loc 5 1257 19
	lw	a4,-72(s0)
	lw	a5,-112(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 5 1257 14
	sw	a5,-116(s0)
	.loc 5 1259 8
	lw	a5,-116(s0)
	beq	a5,zero,.L258
	.loc 5 1259 22 discriminator 1
	lw	a4,-116(s0)
	li	a5,16
	bgtu	a4,a5,.L258
	.loc 5 1261 18
	lw	a4,-116(s0)
	lw	a5,-112(s0)
	add	a5,a4,a5
	.loc 5 1261 32
	addi	a5,a5,1
	.loc 5 1260 23
	lw	a4,-36(s0)
	bgeu	a4,a5,.L259
.L258:
	.loc 5 1262 9
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,1262
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1263 9
	li	a2,50
	li	a1,2
	lw	a0,-292(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1265 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L331
.L259:
	.loc 5 1268 185
	lw	a5,-112(s0)
	addi	a5,a5,1
	lw	a4,-72(s0)
	add	a5,a4,a5
	.loc 5 1268 5
	lw	a6,-116(s0)
	lui	a4,%hi(.LC60)
	addi	a4,a4,%lo(.LC60)
	li	a3,1268
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1274 34
	lw	a4,-112(s0)
	lw	a5,-116(s0)
	add	a5,a4,a5
	.loc 5 1274 16
	addi	a5,a5,1
	sw	a5,-120(s0)
	.loc 5 1275 8
	lw	a4,-36(s0)
	lw	a5,-120(s0)
	bleu	a4,a5,.L260
	.loc 5 1276 34
	lw	a5,-120(s0)
	addi	a5,a5,2
	.loc 5 1276 12
	lw	a4,-36(s0)
	bgeu	a4,a5,.L261
	.loc 5 1277 13
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,1277
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1278 13
	li	a2,50
	li	a1,2
	lw	a0,-292(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1280 20
	li	a5,-28672
	addi	a5,a5,-768
	j	.L331
.L261:
	.loc 5 1283 132
	lw	a4,-72(s0)
	lw	a5,-120(s0)
	add	a5,a4,a5
	sw	a5,-208(s0)
.LBB100:
.LBB101:
	.loc 6 122 33
	lw	a5,-208(s0)
	sw	a5,-212(s0)
	.loc 6 123 7
	lw	a5,-212(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-214(s0)
	.loc 6 127 12
	lhu	a5,-214(s0)
.LBE101:
.LBE100:
	.loc 5 1283 79 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 1283 17 discriminator 2
	sw	a5,-40(s0)
	.loc 5 1285 39
	lw	a4,-120(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	addi	a5,a5,2
	.loc 5 1285 12
	lw	a4,-36(s0)
	beq	a4,a5,.L263
	.loc 5 1286 13
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,1286
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1287 13
	li	a2,50
	li	a1,2
	lw	a0,-292(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1289 20
	li	a5,-28672
	addi	a5,a5,-768
	j	.L331
.L260:
	.loc 5 1292 17
	sw	zero,-40(s0)
.L263:
	.loc 5 1295 28
	lw	a5,-120(s0)
	addi	a5,a5,2
	.loc 5 1295 9
	lw	a4,-72(s0)
	add	a5,a4,a5
	sw	a5,-48(s0)
	.loc 5 1296 5
	lw	a6,-40(s0)
	lw	a5,-48(s0)
	lui	a4,%hi(.LC61)
	addi	a4,a4,%lo(.LC61)
	li	a3,1296
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_buf
	.loc 5 1298 11
	j	.L264
.L295:
.LBB102:
	.loc 5 1301 12
	lw	a4,-40(s0)
	li	a5,3
	bgtu	a4,a5,.L265
	.loc 5 1302 13
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,1302
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1303 13
	li	a2,50
	li	a1,2
	lw	a0,-292(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1305 20
	li	a5,-28672
	addi	a5,a5,-768
	j	.L331
.L265:
	lw	a5,-48(s0)
	sw	a5,-232(s0)
.LBB103:
.LBB104:
	.loc 6 122 33
	lw	a5,-232(s0)
	sw	a5,-236(s0)
	.loc 6 123 7
	lw	a5,-236(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-238(s0)
	.loc 6 127 12
	lhu	a5,-238(s0)
.LBE104:
.LBE103:
	.loc 5 1307 69 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 1307 16 discriminator 2
	sw	a5,-140(s0)
	.loc 5 1308 124
	lw	a5,-48(s0)
	addi	a5,a5,2
	sw	a5,-220(s0)
.LBB105:
.LBB106:
	.loc 6 122 33
	lw	a5,-220(s0)
	sw	a5,-224(s0)
	.loc 6 123 7
	lw	a5,-224(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-226(s0)
	.loc 6 127 12
	lhu	a5,-226(s0)
.LBE106:
.LBE105:
	.loc 5 1308 71 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 1308 18 discriminator 2
	sw	a5,-144(s0)
	.loc 5 1310 22
	lw	a5,-144(s0)
	addi	a5,a5,4
	.loc 5 1310 12
	lw	a4,-40(s0)
	bgeu	a4,a5,.L268
	.loc 5 1311 13
	lui	a5,%hi(.LC10)
	addi	a4,a5,%lo(.LC10)
	li	a3,1311
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1312 13
	li	a2,50
	li	a1,2
	lw	a0,-292(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1314 20
	li	a5,-28672
	addi	a5,a5,-768
	j	.L331
.L268:
	.loc 5 1316 9
	lw	a4,-140(s0)
	li	a5,65536
	addi	a5,a5,-255
	beq	a4,a5,.L269
	lw	a4,-140(s0)
	li	a5,65536
	addi	a5,a5,-255
	bgtu	a4,a5,.L270
	lw	a4,-140(s0)
	li	a5,54
	beq	a4,a5,.L271
	lw	a4,-140(s0)
	li	a5,54
	bgtu	a4,a5,.L270
	lw	a4,-140(s0)
	li	a5,35
	beq	a4,a5,.L272
	lw	a4,-140(s0)
	li	a5,35
	bgtu	a4,a5,.L270
	lw	a4,-140(s0)
	li	a5,23
	beq	a4,a5,.L273
	lw	a4,-140(s0)
	li	a5,23
	bgtu	a4,a5,.L270
	lw	a4,-140(s0)
	li	a5,22
	beq	a4,a5,.L274
	lw	a4,-140(s0)
	li	a5,22
	bgtu	a4,a5,.L270
	lw	a4,-140(s0)
	li	a5,16
	beq	a4,a5,.L275
	lw	a4,-140(s0)
	li	a5,16
	bgtu	a4,a5,.L270
	lw	a4,-140(s0)
	li	a5,14
	beq	a4,a5,.L276
	lw	a4,-140(s0)
	li	a5,14
	bgtu	a4,a5,.L270
	lw	a4,-140(s0)
	li	a5,13
	beq	a4,a5,.L277
	lw	a4,-140(s0)
	li	a5,13
	bgtu	a4,a5,.L270
	lw	a4,-140(s0)
	li	a5,11
	beq	a4,a5,.L278
	lw	a4,-140(s0)
	li	a5,11
	bgtu	a4,a5,.L270
	lw	a4,-140(s0)
	li	a5,10
	beq	a4,a5,.L279
	lw	a4,-140(s0)
	li	a5,10
	bgtu	a4,a5,.L270
	lw	a5,-140(s0)
	beq	a5,zero,.L280
	lw	a4,-140(s0)
	li	a5,1
	beq	a4,a5,.L281
	j	.L270
.L280:
	.loc 5 1319 17
	lui	a5,%hi(.LC62)
	addi	a4,a5,%lo(.LC62)
	li	a3,1319
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1320 66
	lw	a5,-48(s0)
	addi	a3,a5,4
	.loc 5 1321 65
	lw	a5,-144(s0)
	addi	a5,a5,4
	lw	a4,-48(s0)
	add	a5,a4,a5
	.loc 5 1320 23
	mv	a2,a5
	mv	a1,a3
	lw	a0,-292(s0)
	call	mbedtls_ssl_parse_server_name_ext
	sw	a0,-68(s0)
	.loc 5 1322 20
	lw	a5,-68(s0)
	beq	a5,zero,.L332
	.loc 5 1323 28
	lw	a5,-68(s0)
	j	.L331
.L269:
	.loc 5 1329 17
	lui	a5,%hi(.LC63)
	addi	a4,a5,%lo(.LC63)
	li	a3,1329
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1331 41
	li	a5,1
	sw	a5,-52(s0)
	.loc 5 1334 61
	lw	a5,-48(s0)
	addi	a5,a5,4
	.loc 5 1334 23
	lw	a2,-144(s0)
	mv	a1,a5
	lw	a0,-292(s0)
	call	ssl_parse_renegotiation_info
	sw	a0,-68(s0)
	.loc 5 1335 20
	lw	a5,-68(s0)
	beq	a5,zero,.L333
	.loc 5 1336 28
	lw	a5,-68(s0)
	j	.L331
.L277:
	.loc 5 1342 17
	lui	a5,%hi(.LC64)
	addi	a4,a5,%lo(.LC64)
	li	a3,1342
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1344 62
	lw	a5,-48(s0)
	addi	a3,a5,4
	.loc 5 1344 75
	lw	a5,-144(s0)
	addi	a5,a5,4
	lw	a4,-48(s0)
	add	a5,a4,a5
	.loc 5 1344 23
	mv	a2,a5
	mv	a1,a3
	lw	a0,-292(s0)
	call	mbedtls_ssl_parse_sig_alg_ext
	sw	a0,-68(s0)
	.loc 5 1345 20
	lw	a5,-68(s0)
	beq	a5,zero,.L285
	.loc 5 1346 28
	lw	a5,-68(s0)
	j	.L331
.L285:
	.loc 5 1349 42
	li	a5,1
	sw	a5,-60(s0)
	.loc 5 1350 17
	j	.L283
.L279:
	.loc 5 1357 17
	lui	a5,%hi(.LC65)
	addi	a4,a5,%lo(.LC65)
	li	a3,1357
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1359 63
	lw	a5,-48(s0)
	addi	a5,a5,4
	.loc 5 1359 23
	lw	a2,-144(s0)
	mv	a1,a5
	lw	a0,-292(s0)
	call	ssl_parse_supported_groups_ext
	sw	a0,-68(s0)
	.loc 5 1360 20
	lw	a5,-68(s0)
	beq	a5,zero,.L334
	.loc 5 1361 28
	lw	a5,-68(s0)
	j	.L331
.L278:
	.loc 5 1366 17
	lui	a5,%hi(.LC66)
	addi	a4,a5,%lo(.LC66)
	li	a3,1366
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1367 20
	lw	a5,-292(s0)
	lw	a5,64(a5)
	.loc 5 1367 31
	lbu	a4,1(a5)
	.loc 5 1367 20
	lw	a5,-292(s0)
	lw	a5,64(a5)
	.loc 5 1367 42
	ori	a4,a4,1
	andi	a4,a4,0xff
	sb	a4,1(a5)
	.loc 5 1369 66
	lw	a5,-48(s0)
	addi	a5,a5,4
	.loc 5 1369 23
	lw	a2,-144(s0)
	mv	a1,a5
	lw	a0,-292(s0)
	call	ssl_parse_supported_point_formats
	sw	a0,-68(s0)
	.loc 5 1370 20
	lw	a5,-68(s0)
	beq	a5,zero,.L335
	.loc 5 1371 28
	lw	a5,-68(s0)
	j	.L331
.L281:
	.loc 5 1391 17
	lui	a5,%hi(.LC67)
	addi	a4,a5,%lo(.LC67)
	li	a3,1391
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1393 66
	lw	a5,-48(s0)
	addi	a5,a5,4
	.loc 5 1393 23
	lw	a2,-144(s0)
	mv	a1,a5
	lw	a0,-292(s0)
	call	ssl_parse_max_fragment_length_ext
	sw	a0,-68(s0)
	.loc 5 1394 20
	lw	a5,-68(s0)
	beq	a5,zero,.L336
	.loc 5 1395 28
	lw	a5,-68(s0)
	j	.L331
.L271:
	.loc 5 1402 17
	lui	a5,%hi(.LC68)
	addi	a4,a5,%lo(.LC68)
	li	a3,1402
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1404 50
	lw	a5,-48(s0)
	addi	a5,a5,4
	.loc 5 1404 23
	lw	a2,-144(s0)
	mv	a1,a5
	lw	a0,-292(s0)
	call	ssl_parse_cid_ext
	sw	a0,-68(s0)
	.loc 5 1405 20
	lw	a5,-68(s0)
	beq	a5,zero,.L337
	.loc 5 1406 28
	lw	a5,-68(s0)
	j	.L331
.L274:
	.loc 5 1413 17
	lui	a5,%hi(.LC69)
	addi	a4,a5,%lo(.LC69)
	li	a3,1413
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1415 63
	lw	a5,-48(s0)
	addi	a5,a5,4
	.loc 5 1415 23
	lw	a2,-144(s0)
	mv	a1,a5
	lw	a0,-292(s0)
	call	ssl_parse_encrypt_then_mac_ext
	sw	a0,-68(s0)
	.loc 5 1416 20
	lw	a5,-68(s0)
	beq	a5,zero,.L338
	.loc 5 1417 28
	lw	a5,-68(s0)
	j	.L331
.L273:
	.loc 5 1424 17
	lui	a5,%hi(.LC70)
	addi	a4,a5,%lo(.LC70)
	li	a3,1424
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1426 58
	lw	a5,-48(s0)
	addi	a5,a5,4
	.loc 5 1426 23
	lw	a2,-144(s0)
	mv	a1,a5
	lw	a0,-292(s0)
	call	ssl_parse_extended_ms_ext
	sw	a0,-68(s0)
	.loc 5 1427 20
	lw	a5,-68(s0)
	beq	a5,zero,.L339
	.loc 5 1428 28
	lw	a5,-68(s0)
	j	.L331
.L272:
	.loc 5 1435 17
	lui	a5,%hi(.LC71)
	addi	a4,a5,%lo(.LC71)
	li	a3,1435
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1437 23
	lw	a5,-48(s0)
	addi	a5,a5,4
	lw	a2,-144(s0)
	mv	a1,a5
	lw	a0,-292(s0)
	call	ssl_parse_session_ticket_ext
	sw	a0,-68(s0)
	.loc 5 1438 20
	lw	a5,-68(s0)
	beq	a5,zero,.L340
	.loc 5 1439 28
	lw	a5,-68(s0)
	j	.L331
.L275:
	.loc 5 1446 17
	lui	a5,%hi(.LC72)
	addi	a4,a5,%lo(.LC72)
	li	a3,1446
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1448 59
	lw	a5,-48(s0)
	addi	a3,a5,4
	.loc 5 1449 58
	lw	a5,-144(s0)
	addi	a5,a5,4
	lw	a4,-48(s0)
	add	a5,a4,a5
	.loc 5 1448 23
	mv	a2,a5
	mv	a1,a3
	lw	a0,-292(s0)
	call	mbedtls_ssl_parse_alpn_ext
	sw	a0,-68(s0)
	.loc 5 1450 20
	lw	a5,-68(s0)
	beq	a5,zero,.L341
	.loc 5 1451 28
	lw	a5,-68(s0)
	j	.L331
.L276:
	.loc 5 1458 17
	lui	a5,%hi(.LC73)
	addi	a4,a5,%lo(.LC73)
	li	a3,1458
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1460 55
	lw	a5,-48(s0)
	addi	a5,a5,4
	.loc 5 1460 23
	lw	a2,-144(s0)
	mv	a1,a5
	lw	a0,-292(s0)
	call	ssl_parse_use_srtp_ext
	sw	a0,-68(s0)
	.loc 5 1461 20
	lw	a5,-68(s0)
	beq	a5,zero,.L342
	.loc 5 1462 28
	lw	a5,-68(s0)
	j	.L331
.L270:
	.loc 5 1468 17
	lw	a5,-140(s0)
	lui	a4,%hi(.LC74)
	addi	a4,a4,%lo(.LC74)
	li	a3,1468
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	j	.L283
.L332:
	.loc 5 1325 17
	nop
	j	.L283
.L333:
	.loc 5 1338 17
	nop
	j	.L283
.L334:
	.loc 5 1363 17
	nop
	j	.L283
.L335:
	.loc 5 1373 17
	nop
	j	.L283
.L336:
	.loc 5 1397 17
	nop
	j	.L283
.L337:
	.loc 5 1408 17
	nop
	j	.L283
.L338:
	.loc 5 1419 17
	nop
	j	.L283
.L339:
	.loc 5 1430 17
	nop
	j	.L283
.L340:
	.loc 5 1441 17
	nop
	j	.L283
.L341:
	.loc 5 1453 17
	nop
	j	.L283
.L342:
	.loc 5 1464 17
	nop
.L283:
	.loc 5 1472 17
	lw	a4,-40(s0)
	lw	a5,-144(s0)
	sub	a5,a4,a5
	addi	a5,a5,-4
	sw	a5,-40(s0)
	.loc 5 1473 18
	lw	a5,-144(s0)
	addi	a5,a5,4
	.loc 5 1473 13
	lw	a4,-48(s0)
	add	a5,a4,a5
	sw	a5,-48(s0)
.L264:
.LBE102:
	.loc 5 1298 20
	lw	a5,-40(s0)
	bne	a5,zero,.L295
	.loc 5 1482 8
	lw	a5,-60(s0)
	bne	a5,zero,.L296
.LBB107:
	.loc 5 1483 42
	lw	a5,-292(s0)
	lw	a5,64(a5)
	.loc 5 1483 19
	addi	a5,a5,44
	sw	a5,-124(s0)
	.loc 5 1484 24
	li	a5,515
	sh	a5,-276(s0)
	li	a5,513
	sh	a5,-274(s0)
	sh	zero,-272(s0)
	.loc 5 1500 9
	addi	a5,s0,-276
	li	a2,6
	mv	a1,a5
	lw	a0,-124(s0)
	call	memcpy
.L296:
.LBE107:
	.loc 5 1508 12
	sw	zero,-24(s0)
	.loc 5 1508 39
	lw	a5,-32(s0)
	addi	a5,a5,2
	.loc 5 1508 19
	lw	a4,-72(s0)
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 5 1508 5
	j	.L297
.L301:
	.loc 5 1509 14
	lw	a5,-44(s0)
	lbu	a5,0(a5)
	.loc 5 1509 12
	bne	a5,zero,.L298
	.loc 5 1509 27 discriminator 1
	lw	a5,-44(s0)
	addi	a5,a5,1
	lbu	a4,0(a5)
	.loc 5 1509 23 discriminator 1
	li	a5,255
	bne	a4,a5,.L298
	.loc 5 1510 13
	lui	a5,%hi(.LC75)
	addi	a4,a5,%lo(.LC75)
	li	a3,1510
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1512 20
	lw	a5,-292(s0)
	lw	a4,8(a5)
	.loc 5 1512 16
	li	a5,1
	bne	a4,a5,.L299
	.loc 5 1513 17
	lui	a5,%hi(.LC76)
	addi	a4,a5,%lo(.LC76)
	li	a3,1513
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1515 17
	li	a2,40
	li	a1,2
	lw	a0,-292(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1517 24
	li	a5,-28672
	addi	a5,a5,512
	j	.L331
.L299:
	.loc 5 1520 39
	lw	a5,-292(s0)
	li	a4,1
	sw	a4,524(a5)
	.loc 5 1521 13
	j	.L300
.L298:
	.loc 5 1508 60 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,2
	sw	a5,-24(s0)
	.loc 5 1508 68 discriminator 2
	lw	a5,-44(s0)
	addi	a5,a5,2
	sw	a5,-44(s0)
.L297:
	.loc 5 1508 46 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-108(s0)
	bltu	a4,a5,.L301
.L300:
	.loc 5 1528 12
	lw	a5,-292(s0)
	lw	a4,524(a5)
	.loc 5 1528 8
	li	a5,1
	beq	a4,a5,.L302
	.loc 5 1529 12
	lw	a5,-292(s0)
	lw	a5,0(a5)
	.loc 5 1529 18
	lbu	a4,7(a5)
	.loc 5 1528 40 discriminator 1
	li	a5,2
	bne	a4,a5,.L302
	.loc 5 1530 9
	lui	a5,%hi(.LC77)
	addi	a4,a5,%lo(.LC77)
	li	a3,1530
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1531 27
	li	a5,1
	sw	a5,-56(s0)
	j	.L303
.L302:
	.loc 5 1534 17
	lw	a5,-292(s0)
	lw	a4,8(a5)
	.loc 5 1534 13
	li	a5,1
	bne	a4,a5,.L304
	.loc 5 1535 17
	lw	a5,-292(s0)
	lw	a4,524(a5)
	.loc 5 1534 38 discriminator 1
	li	a5,1
	bne	a4,a5,.L304
	.loc 5 1535 45
	lw	a5,-52(s0)
	bne	a5,zero,.L304
	.loc 5 1537 9
	lui	a5,%hi(.LC78)
	addi	a4,a5,%lo(.LC78)
	li	a3,1537
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1538 27
	li	a5,1
	sw	a5,-56(s0)
	j	.L303
.L304:
	.loc 5 1539 19
	lw	a5,-292(s0)
	lw	a4,8(a5)
	.loc 5 1539 15
	li	a5,1
	bne	a4,a5,.L305
	.loc 5 1540 19
	lw	a5,-292(s0)
	lw	a5,524(a5)
	.loc 5 1539 40 discriminator 1
	bne	a5,zero,.L305
	.loc 5 1541 19
	lw	a5,-292(s0)
	lw	a5,0(a5)
	.loc 5 1541 25
	lbu	a5,7(a5)
	.loc 5 1540 47
	bne	a5,zero,.L305
	.loc 5 1542 9
	lui	a5,%hi(.LC79)
	addi	a4,a5,%lo(.LC79)
	li	a3,1542
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1543 27
	li	a5,1
	sw	a5,-56(s0)
	j	.L303
.L305:
	.loc 5 1544 19
	lw	a5,-292(s0)
	lw	a4,8(a5)
	.loc 5 1544 15
	li	a5,1
	bne	a4,a5,.L303
	.loc 5 1545 19
	lw	a5,-292(s0)
	lw	a5,524(a5)
	.loc 5 1544 40 discriminator 1
	bne	a5,zero,.L303
	.loc 5 1545 47
	lw	a4,-52(s0)
	li	a5,1
	bne	a4,a5,.L303
	.loc 5 1547 9
	lui	a5,%hi(.LC80)
	addi	a4,a5,%lo(.LC80)
	li	a3,1547
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1548 27
	li	a5,1
	sw	a5,-56(s0)
.L303:
	.loc 5 1552 8
	lw	a4,-56(s0)
	li	a5,1
	bne	a4,a5,.L306
	.loc 5 1553 9
	li	a2,40
	li	a1,2
	lw	a0,-292(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1555 16
	li	a5,-28672
	addi	a5,a5,512
	j	.L331
.L306:
	.loc 5 1561 12
	lw	a5,-292(s0)
	lw	a5,0(a5)
	.loc 5 1561 18
	lw	a5,236(a5)
	.loc 5 1561 8
	beq	a5,zero,.L307
	.loc 5 1561 43 discriminator 1
	lw	a5,-292(s0)
	lw	a5,0(a5)
	.loc 5 1561 49 discriminator 1
	lw	a5,236(a5)
	.loc 5 1561 40 discriminator 1
	lw	a0,-292(s0)
	jalr	a5
.LVL3:
	sw	a0,-68(s0)
	.loc 5 1561 30 discriminator 2
	lw	a5,-68(s0)
	beq	a5,zero,.L307
	.loc 5 1562 9
	lw	a5,-68(s0)
	lui	a4,%hi(.LC81)
	addi	a4,a4,%lo(.LC81)
	li	a3,1562
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_ret
	.loc 5 1563 16
	lw	a5,-68(s0)
	j	.L331
.L307:
	.loc 5 1566 8
	lw	a5,-292(s0)
	lw	a5,64(a5)
	.loc 5 1566 30
	sw	zero,984(a5)
	.loc 5 1567 8
	lw	a5,-292(s0)
	lw	a5,64(a5)
	.loc 5 1567 34
	sw	zero,988(a5)
	.loc 5 1576 22
	sw	zero,-20(s0)
	.loc 5 1577 23
	lw	a5,-292(s0)
	lw	a5,0(a5)
	.loc 5 1577 18
	lw	a5,20(a5)
	sw	a5,-128(s0)
	.loc 5 1578 22
	sw	zero,-268(s0)
	.loc 5 1580 12
	lw	a5,-292(s0)
	lw	a5,0(a5)
	.loc 5 1580 18
	lbu	a4,15(a5)
	.loc 5 1580 8
	li	a5,1
	bne	a4,a5,.L308
	.loc 5 1581 16
	sw	zero,-28(s0)
	.loc 5 1581 43
	lw	a5,-32(s0)
	addi	a5,a5,2
	.loc 5 1581 23
	lw	a4,-72(s0)
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 5 1581 9
	j	.L309
.L317:
	.loc 5 1582 20
	sw	zero,-24(s0)
	.loc 5 1582 13
	j	.L310
.L316:
	lw	a5,-44(s0)
	sw	a5,-244(s0)
.LBB108:
.LBB109:
	.loc 6 122 33
	lw	a5,-244(s0)
	sw	a5,-248(s0)
	.loc 6 123 7
	lw	a5,-248(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-250(s0)
	.loc 6 127 12
	lhu	a5,-250(s0)
.LBE109:
.LBE108:
	.loc 5 1583 70 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 1583 68 discriminator 2
	mv	a3,a5
	.loc 5 1583 146 discriminator 2
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-128(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 5 1583 20 discriminator 2
	bne	a3,a5,.L343
	.loc 5 1587 34
	li	a5,1
	sw	a5,-20(s0)
	.loc 5 1589 67
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-128(s0)
	add	a5,a4,a5
	.loc 5 1589 28
	lw	a5,0(a5)
	addi	a4,s0,-268
	mv	a2,a4
	mv	a1,a5
	lw	a0,-292(s0)
	call	ssl_ciphersuite_match
	sw	a0,-68(s0)
	.loc 5 1589 20 discriminator 1
	lw	a5,-68(s0)
	beq	a5,zero,.L314
	.loc 5 1591 28
	lw	a5,-68(s0)
	j	.L331
.L314:
	.loc 5 1594 38
	lw	a5,-268(s0)
	.loc 5 1594 20
	bne	a5,zero,.L344
	j	.L313
.L343:
	.loc 5 1584 21
	nop
.L313:
	.loc 5 1582 48 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L310:
	.loc 5 1582 37 discriminator 1
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-128(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 5 1582 41 discriminator 1
	bne	a5,zero,.L316
	.loc 5 1581 64 discriminator 2
	lw	a5,-28(s0)
	addi	a5,a5,2
	sw	a5,-28(s0)
	.loc 5 1581 72 discriminator 2
	lw	a5,-44(s0)
	addi	a5,a5,2
	sw	a5,-44(s0)
.L309:
	.loc 5 1581 50 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-108(s0)
	bltu	a4,a5,.L317
	j	.L318
.L308:
	.loc 5 1600 16
	sw	zero,-24(s0)
	.loc 5 1600 9
	j	.L319
.L326:
	.loc 5 1601 20
	sw	zero,-28(s0)
	.loc 5 1601 47
	lw	a5,-32(s0)
	addi	a5,a5,2
	.loc 5 1601 27
	lw	a4,-72(s0)
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 5 1601 13
	j	.L320
.L325:
	lw	a5,-44(s0)
	sw	a5,-256(s0)
.LBB110:
.LBB111:
	.loc 6 122 33
	lw	a5,-256(s0)
	sw	a5,-260(s0)
	.loc 6 123 7
	lw	a5,-260(s0)
	lbu	a4,0(a5)
	lbu	a5,1(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	sh	a5,-262(s0)
	.loc 6 127 12
	lhu	a5,-262(s0)
.LBE111:
.LBE110:
	.loc 5 1602 70 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 1602 68 discriminator 2
	mv	a3,a5
	.loc 5 1602 146 discriminator 2
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-128(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 5 1602 20 discriminator 2
	bne	a3,a5,.L345
	.loc 5 1606 34
	li	a5,1
	sw	a5,-20(s0)
	.loc 5 1608 67
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-128(s0)
	add	a5,a4,a5
	.loc 5 1608 28
	lw	a5,0(a5)
	addi	a4,s0,-268
	mv	a2,a4
	mv	a1,a5
	lw	a0,-292(s0)
	call	ssl_ciphersuite_match
	sw	a0,-68(s0)
	.loc 5 1608 20 discriminator 1
	lw	a5,-68(s0)
	beq	a5,zero,.L324
	.loc 5 1610 28
	lw	a5,-68(s0)
	j	.L331
.L324:
	.loc 5 1613 38
	lw	a5,-268(s0)
	.loc 5 1613 20
	bne	a5,zero,.L346
	j	.L323
.L345:
	.loc 5 1603 21
	nop
.L323:
	.loc 5 1601 68 discriminator 2
	lw	a5,-28(s0)
	addi	a5,a5,2
	sw	a5,-28(s0)
	.loc 5 1601 76 discriminator 2
	lw	a5,-44(s0)
	addi	a5,a5,2
	sw	a5,-44(s0)
.L320:
	.loc 5 1601 54 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-108(s0)
	bltu	a4,a5,.L325
	.loc 5 1600 44 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L319:
	.loc 5 1600 33 discriminator 1
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-128(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 5 1600 37 discriminator 1
	bne	a5,zero,.L326
.L318:
	.loc 5 1620 8
	lw	a5,-20(s0)
	beq	a5,zero,.L327
	.loc 5 1621 9
	lui	a5,%hi(.LC82)
	addi	a4,a5,%lo(.LC82)
	li	a3,1621
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1623 9
	li	a2,40
	li	a1,2
	lw	a0,-292(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1625 16
	li	a5,-28672
	addi	a5,a5,512
	j	.L331
.L327:
	.loc 5 1627 9
	lui	a5,%hi(.LC83)
	addi	a4,a5,%lo(.LC83)
	li	a3,1627
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1628 9
	li	a2,40
	li	a1,2
	lw	a0,-292(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 1630 16
	li	a5,-28672
	addi	a5,a5,512
	j	.L331
.L344:
	.loc 5 1595 21
	nop
	j	.L315
.L346:
	.loc 5 1614 21
	nop
.L315:
	.loc 5 1634 182
	lw	a5,-268(s0)
	lw	a5,4(a5)
	.loc 5 1634 5
	lui	a4,%hi(.LC84)
	addi	a4,a4,%lo(.LC84)
	li	a3,1634
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,2
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1636 55
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-128(s0)
	add	a4,a4,a5
	.loc 5 1636 8
	lw	a5,-292(s0)
	lw	a5,60(a5)
	.loc 5 1636 55
	lw	a4,0(a4)
	.loc 5 1636 41
	sw	a4,8(a5)
	.loc 5 1637 8
	lw	a5,-292(s0)
	lw	a5,64(a5)
	.loc 5 1637 38
	lw	a4,-268(s0)
	sw	a4,24(a5)
	.loc 5 1639 5
	lw	a0,-292(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 5 1642 12
	lw	a5,-292(s0)
	lw	a5,0(a5)
	.loc 5 1642 18
	lbu	a4,5(a5)
	.loc 5 1642 8
	li	a5,1
	bne	a4,a5,.L328
	.loc 5 1643 9
	lw	a0,-292(s0)
	call	mbedtls_ssl_recv_flight_completed
.L328:
	.loc 5 1650 33
	lw	a5,-268(s0)
	mv	a0,a5
	call	mbedtls_ssl_get_ciphersuite_sig_alg
	mv	a5,a0
	sb	a5,-129(s0)
	.loc 5 1651 8
	lbu	a5,-129(s0)
	beq	a5,zero,.L329
.LBB112:
	.loc 5 1653 18
	lbu	a5,-129(s0)
	mv	a0,a5
	call	mbedtls_ssl_sig_from_pk_alg
	mv	a5,a0
	.loc 5 1652 33
	mv	a1,a5
	lw	a0,-292(s0)
	call	mbedtls_ssl_tls12_get_preferred_hash_for_sig_alg
	sw	a0,-136(s0)
	.loc 5 1654 9
	lw	a5,-136(s0)
	lui	a4,%hi(.LC85)
	addi	a4,a4,%lo(.LC85)
	li	a3,1654
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
.LBE112:
	j	.L330
.L329:
	.loc 5 1657 9
	lbu	a5,-129(s0)
	lui	a4,%hi(.LC86)
	addi	a4,a4,%lo(.LC86)
	li	a3,1657
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
.L330:
	.loc 5 1662 5
	lui	a5,%hi(.LC87)
	addi	a4,a5,%lo(.LC87)
	li	a3,1662
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-292(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1664 12
	li	a5,0
.L331:
	.loc 5 1665 1
	mv	a0,a5
	lw	ra,300(sp)
	.cfi_restore 1
	lw	s0,296(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 304
	addi	sp,sp,304
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE181:
	.size	ssl_parse_client_hello, .-ssl_parse_client_hello
	.section	.rodata
	.align	2
.LC88:
	.string	"buffer too small"
	.align	2
.LC89:
	.string	"server hello, adding CID extension"
	.section	.text.ssl_write_cid_ext,"ax",@progbits
	.align	1
	.type	ssl_write_cid_ext, @function
ssl_write_cid_ext:
.LFB182:
	.loc 5 1671 1
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
	.loc 5 1672 20
	lw	a5,-72(s0)
	sw	a5,-20(s0)
	.loc 5 1674 35
	lw	a5,-68(s0)
	lw	a4,216(a5)
	.loc 5 1674 26
	li	a5,16384
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 5 1676 11
	lw	a5,-76(s0)
	sw	zero,0(a5)
	.loc 5 1680 12
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 1680 23
	lbu	a5,672(a5)
	.loc 5 1680 8
	beq	a5,zero,.L352
	.loc 5 1686 8
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bltu	a4,a5,.L350
	.loc 5 1686 34 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 5 1686 20 discriminator 1
	mv	a4,a5
	.loc 5 1686 56 discriminator 1
	lw	a5,-68(s0)
	lbu	a5,588(a5)
	.loc 5 1686 70 discriminator 1
	addi	a5,a5,5
	.loc 5 1686 17 discriminator 1
	bgeu	a4,a5,.L351
.L350:
	.loc 5 1687 9
	lui	a5,%hi(.LC88)
	addi	a4,a5,%lo(.LC88)
	li	a3,1687
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1688 9
	j	.L347
.L351:
	.loc 5 1691 5
	lui	a5,%hi(.LC89)
	addi	a4,a5,%lo(.LC89)
	li	a3,1691
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	lw	a5,-20(s0)
	sw	a5,-32(s0)
	li	a5,12288
	addi	a5,a5,1536
	sh	a5,-34(s0)
.LBB113:
.LBB114:
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
.LBE114:
.LBE113:
	.loc 5 1699 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 5 1700 27
	lw	a5,-68(s0)
	lbu	a5,588(a5)
	.loc 5 1700 13
	addi	a5,a5,1
	sw	a5,-28(s0)
	.loc 5 1701 128 discriminator 2
	lw	a5,-28(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	lw	a4,-20(s0)
	sw	a4,-44(s0)
	sh	a5,-46(s0)
.LBB115:
.LBB116:
	.loc 6 148 33
	lw	a5,-44(s0)
	sw	a5,-52(s0)
	.loc 6 149 12
	lw	a5,-52(s0)
	lhu	a4,-46(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-46(s0)
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
	.loc 5 1702 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 5 1704 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 1704 25
	lw	a4,-68(s0)
	lbu	a4,588(a4)
	.loc 5 1704 10
	sb	a4,0(a5)
	.loc 5 1705 18
	lw	a5,-68(s0)
	addi	a4,a5,556
	.loc 5 1705 32
	lw	a5,-68(s0)
	lbu	a5,588(a5)
	.loc 5 1705 5
	mv	a2,a5
	mv	a1,a4
	lw	a0,-20(s0)
	call	memcpy
	.loc 5 1707 16
	lw	a5,-68(s0)
	lbu	a5,588(a5)
	.loc 5 1707 30
	addi	a5,a5,5
	mv	a4,a5
	.loc 5 1707 11
	lw	a5,-76(s0)
	sw	a4,0(a5)
	j	.L347
.L352:
	.loc 5 1681 9
	nop
.L347:
	.loc 5 1708 1
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE182:
	.size	ssl_write_cid_ext, .-ssl_write_cid_ext
	.section	.rodata
	.align	2
.LC90:
	.string	"server hello, adding encrypt then mac extension"
	.section	.text.ssl_write_encrypt_then_mac_ext,"ax",@progbits
	.align	1
	.type	ssl_write_encrypt_then_mac_ext, @function
ssl_write_encrypt_then_mac_ext:
.LFB183:
	.loc 5 1715 1
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
	.loc 5 1716 20
	lw	a5,-56(s0)
	sw	a5,-20(s0)
	.loc 5 1717 38
	sw	zero,-24(s0)
	.loc 5 1726 12
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 5 1725 13
	lw	a5,8(a5)
	mv	a0,a5
	call	mbedtls_ssl_ciphersuite_from_id
	sw	a0,-24(s0)
	.loc 5 1727 8
	lw	a5,-24(s0)
	bne	a5,zero,.L354
	.loc 5 1728 12
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 5 1728 50
	sw	zero,116(a5)
	j	.L355
.L354:
.LBB117:
	.loc 5 1732 20
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 5 1731 13
	lw	a5,116(a5)
	lw	a1,-24(s0)
	mv	a0,a5
	call	mbedtls_ssl_get_mode_from_ciphersuite
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 5 1735 12
	lbu	a4,-25(s0)
	li	a5,2
	beq	a4,a5,.L355
	.loc 5 1736 16
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 5 1736 54
	sw	zero,116(a5)
.L355:
.LBE117:
	.loc 5 1740 12
	lw	a5,-52(s0)
	lw	a5,60(a5)
	.loc 5 1740 31
	lw	a5,116(a5)
	.loc 5 1740 8
	bne	a5,zero,.L356
	.loc 5 1741 15
	lw	a5,-60(s0)
	sw	zero,0(a5)
	.loc 5 1742 9
	j	.L353
.L356:
	.loc 5 1745 5
	lui	a5,%hi(.LC90)
	addi	a4,a5,%lo(.LC90)
	li	a3,1745
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	lw	a5,-20(s0)
	sw	a5,-32(s0)
	li	a5,4096
	addi	a5,a5,1536
	sh	a5,-34(s0)
.LBB118:
.LBB119:
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
.LBE119:
.LBE118:
	.loc 5 1748 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 5 1750 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 1750 10
	sb	zero,0(a5)
	.loc 5 1751 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 1751 10
	sb	zero,0(a5)
	.loc 5 1753 11
	lw	a5,-60(s0)
	li	a4,4
	sw	a4,0(a5)
.L353:
	.loc 5 1754 1
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE183:
	.size	ssl_write_encrypt_then_mac_ext, .-ssl_write_encrypt_then_mac_ext
	.section	.rodata
	.align	2
.LC91:
	.string	"server hello, adding extended master secret extension"
	.section	.text.ssl_write_extended_ms_ext,"ax",@progbits
	.align	1
	.type	ssl_write_extended_ms_ext, @function
ssl_write_extended_ms_ext:
.LFB184:
	.loc 5 1761 1
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
	.loc 5 1762 20
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 5 1764 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 1764 23
	lbu	a5,8(a5)
	.loc 5 1764 8
	bne	a5,zero,.L359
	.loc 5 1765 15
	lw	a5,-44(s0)
	sw	zero,0(a5)
	.loc 5 1766 9
	j	.L358
.L359:
	.loc 5 1769 5
	lui	a5,%hi(.LC91)
	addi	a4,a5,%lo(.LC91)
	li	a3,1769
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	li	a5,4096
	addi	a5,a5,1792
	sh	a5,-26(s0)
.LBB120:
.LBB121:
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
.LBE121:
.LBE120:
	.loc 5 1773 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 5 1775 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 1775 10
	sb	zero,0(a5)
	.loc 5 1776 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 1776 10
	sb	zero,0(a5)
	.loc 5 1778 11
	lw	a5,-44(s0)
	li	a4,4
	sw	a4,0(a5)
.L358:
	.loc 5 1779 1
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
	.size	ssl_write_extended_ms_ext, .-ssl_write_extended_ms_ext
	.section	.rodata
	.align	2
.LC92:
	.string	"server hello, adding session ticket extension"
	.section	.text.ssl_write_session_ticket_ext,"ax",@progbits
	.align	1
	.type	ssl_write_session_ticket_ext, @function
ssl_write_session_ticket_ext:
.LFB185:
	.loc 5 1786 1
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
	.loc 5 1787 20
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 5 1789 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 1789 23
	lbu	a5,4(a5)
	.loc 5 1789 8
	bne	a5,zero,.L362
	.loc 5 1790 15
	lw	a5,-44(s0)
	sw	zero,0(a5)
	.loc 5 1791 9
	j	.L361
.L362:
	.loc 5 1794 5
	lui	a5,%hi(.LC92)
	addi	a4,a5,%lo(.LC92)
	li	a3,1794
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	li	a5,8192
	addi	a5,a5,768
	sh	a5,-26(s0)
.LBB122:
.LBB123:
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
.LBE123:
.LBE122:
	.loc 5 1797 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 5 1799 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 1799 10
	sb	zero,0(a5)
	.loc 5 1800 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 1800 10
	sb	zero,0(a5)
	.loc 5 1802 11
	lw	a5,-44(s0)
	li	a4,4
	sw	a4,0(a5)
.L361:
	.loc 5 1803 1
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
	.size	ssl_write_session_ticket_ext, .-ssl_write_session_ticket_ext
	.section	.rodata
	.align	2
.LC93:
	.string	"server hello, secure renegotiation extension"
	.section	.text.ssl_write_renegotiation_ext,"ax",@progbits
	.align	1
	.type	ssl_write_renegotiation_ext, @function
ssl_write_renegotiation_ext:
.LFB186:
	.loc 5 1809 1
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
	.loc 5 1810 20
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 5 1812 12
	lw	a5,-36(s0)
	lw	a4,524(a5)
	.loc 5 1812 8
	li	a5,1
	beq	a4,a5,.L365
	.loc 5 1813 15
	lw	a5,-44(s0)
	sw	zero,0(a5)
	.loc 5 1814 9
	j	.L364
.L365:
	.loc 5 1817 5
	lui	a5,%hi(.LC93)
	addi	a4,a5,%lo(.LC93)
	li	a3,1817
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	li	a5,511
	sh	a5,-26(s0)
.LBB124:
.LBB125:
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
.LBE125:
.LBE124:
	.loc 5 1820 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 5 1823 12
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 5 1823 8
	beq	a5,zero,.L367
	.loc 5 1824 11
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 1824 14
	sb	zero,0(a5)
	.loc 5 1825 20
	lw	a5,-36(s0)
	lw	a5,528(a5)
	.loc 5 1825 42
	andi	a5,a5,0xff
	slli	a5,a5,1
	andi	a4,a5,0xff
	.loc 5 1825 11
	lw	a5,-20(s0)
	addi	a3,a5,1
	sw	a3,-20(s0)
	.loc 5 1825 42
	addi	a4,a4,1
	andi	a4,a4,0xff
	.loc 5 1825 14
	sb	a4,0(a5)
	.loc 5 1826 19
	lw	a5,-36(s0)
	lw	a5,528(a5)
	.loc 5 1826 14
	andi	a4,a5,0xff
	.loc 5 1826 11
	lw	a5,-20(s0)
	addi	a3,a5,1
	sw	a3,-20(s0)
	.loc 5 1826 14
	slli	a4,a4,1
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 5 1828 22
	lw	a5,-36(s0)
	addi	a4,a5,544
	.loc 5 1828 9
	lw	a5,-36(s0)
	lw	a5,528(a5)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-20(s0)
	call	memcpy
	.loc 5 1829 17
	lw	a5,-36(s0)
	lw	a5,528(a5)
	.loc 5 1829 11
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 1830 22
	lw	a5,-36(s0)
	addi	a4,a5,532
	.loc 5 1830 9
	lw	a5,-36(s0)
	lw	a5,528(a5)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-20(s0)
	call	memcpy
	.loc 5 1831 17
	lw	a5,-36(s0)
	lw	a5,528(a5)
	.loc 5 1831 11
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	j	.L368
.L367:
	.loc 5 1835 11
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 1835 14
	sb	zero,0(a5)
	.loc 5 1836 11
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 1836 14
	li	a4,1
	sb	a4,0(a5)
	.loc 5 1837 11
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 1837 14
	sb	zero,0(a5)
.L368:
	.loc 5 1840 25
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	sub	a5,a4,a5
	.loc 5 1840 13
	mv	a4,a5
	.loc 5 1840 11
	lw	a5,-44(s0)
	sw	a4,0(a5)
.L364:
	.loc 5 1841 1
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
	.size	ssl_write_renegotiation_ext, .-ssl_write_renegotiation_ext
	.section	.rodata
	.align	2
.LC94:
	.string	"server hello, max_fragment_length extension"
	.section	.text.ssl_write_max_fragment_length_ext,"ax",@progbits
	.align	1
	.type	ssl_write_max_fragment_length_ext, @function
ssl_write_max_fragment_length_ext:
.LFB187:
	.loc 5 1847 1
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
	.loc 5 1848 20
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 5 1850 12
	lw	a5,-36(s0)
	lw	a5,60(a5)
	.loc 5 1850 31
	lbu	a5,0(a5)
	.loc 5 1850 8
	bne	a5,zero,.L370
	.loc 5 1851 15
	lw	a5,-44(s0)
	sw	zero,0(a5)
	.loc 5 1852 9
	j	.L369
.L370:
	.loc 5 1855 5
	lui	a5,%hi(.LC94)
	addi	a4,a5,%lo(.LC94)
	li	a3,1855
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	li	a5,256
	sh	a5,-26(s0)
.LBB126:
.LBB127:
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
.LBE127:
.LBE126:
	.loc 5 1858 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 5 1860 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 1860 10
	sb	zero,0(a5)
	.loc 5 1861 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 1861 10
	li	a4,1
	sb	a4,0(a5)
	.loc 5 1863 15
	lw	a5,-36(s0)
	lw	a4,60(a5)
	.loc 5 1863 7
	lw	a5,-20(s0)
	addi	a3,a5,1
	sw	a3,-20(s0)
	.loc 5 1863 34
	lbu	a4,0(a4)
	.loc 5 1863 10
	sb	a4,0(a5)
	.loc 5 1865 11
	lw	a5,-44(s0)
	li	a4,5
	sw	a4,0(a5)
.L369:
	.loc 5 1866 1
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
	.size	ssl_write_max_fragment_length_ext, .-ssl_write_max_fragment_length_ext
	.section	.rodata
	.align	2
.LC95:
	.string	"server hello, supported_point_formats extension"
	.section	.text.ssl_write_supported_point_formats_ext,"ax",@progbits
	.align	1
	.type	ssl_write_supported_point_formats_ext, @function
ssl_write_supported_point_formats_ext:
.LFB188:
	.loc 5 1875 1
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
	.loc 5 1876 20
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	.loc 5 1879 13
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 1879 24
	lbu	a5,1(a5)
	.loc 5 1879 35
	andi	a5,a5,1
	.loc 5 1879 8
	bne	a5,zero,.L373
	.loc 5 1881 15
	lw	a5,-44(s0)
	sw	zero,0(a5)
	.loc 5 1882 9
	j	.L372
.L373:
	.loc 5 1885 5
	lui	a5,%hi(.LC95)
	addi	a4,a5,%lo(.LC95)
	li	a3,1885
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	li	a5,4096
	addi	a5,a5,-1280
	sh	a5,-26(s0)
.LBB128:
.LBB129:
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
.LBE129:
.LBE128:
	.loc 5 1888 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 5 1890 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 1890 10
	sb	zero,0(a5)
	.loc 5 1891 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 1891 10
	li	a4,2
	sb	a4,0(a5)
	.loc 5 1893 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 1893 10
	li	a4,1
	sb	a4,0(a5)
	.loc 5 1894 7
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 5 1894 10
	sb	zero,0(a5)
	.loc 5 1896 11
	lw	a5,-44(s0)
	li	a4,6
	sw	a4,0(a5)
.L372:
	.loc 5 1897 1
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
	.size	ssl_write_supported_point_formats_ext, .-ssl_write_supported_point_formats_ext
	.section	.rodata
	.align	2
.LC96:
	.string	"server hello, adding use_srtp extension"
	.align	2
.LC97:
	.string	"use_srtp extension invalid profile"
	.section	.text.ssl_write_use_srtp_ext,"ax",@progbits
	.align	1
	.type	ssl_write_use_srtp_ext, @function
ssl_write_use_srtp_ext:
.LFB189:
	.loc 5 1961 1
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
	.loc 5 1962 12
	sw	zero,-20(s0)
	.loc 5 1962 25
	sw	zero,-24(s0)
	.loc 5 1963 14
	sh	zero,-26(s0)
	.loc 5 1964 35
	lw	a5,-84(s0)
	lw	a4,216(a5)
	.loc 5 1964 26
	li	a5,16384
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 5 1966 11
	lw	a5,-92(s0)
	sw	zero,0(a5)
	.loc 5 1968 13
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 5 1968 19
	lbu	a4,5(a5)
	.loc 5 1968 8
	li	a5,1
	bne	a4,a5,.L383
	.loc 5 1969 29
	lw	a5,-84(s0)
	lhu	a5,256(a5)
	.loc 5 1968 37 discriminator 1
	beq	a5,zero,.L383
	.loc 5 1973 5
	lui	a5,%hi(.LC96)
	addi	a4,a5,%lo(.LC96)
	li	a3,1973
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1975 12
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 5 1975 18
	lbu	a4,17(a5)
	.loc 5 1975 8
	li	a5,1
	bne	a4,a5,.L379
	.loc 5 1976 38
	lw	a5,-84(s0)
	lhu	a5,258(a5)
	.loc 5 1976 17
	sw	a5,-20(s0)
.L379:
	.loc 5 1987 23
	lw	a4,-32(s0)
	lw	a5,-88(s0)
	sub	a5,a4,a5
	.loc 5 1987 9
	mv	a4,a5
	.loc 5 1987 40
	lw	a5,-20(s0)
	addi	a5,a5,9
	.loc 5 1987 8
	bgeu	a4,a5,.L380
	.loc 5 1988 9
	lui	a5,%hi(.LC88)
	addi	a4,a5,%lo(.LC88)
	li	a3,1988
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 1989 9
	j	.L375
.L380:
	lw	a5,-88(s0)
	sw	a5,-36(s0)
	li	a5,4096
	addi	a5,a5,-512
	sh	a5,-38(s0)
.LBB130:
.LBB131:
	.loc 6 148 33
	lw	a5,-36(s0)
	sw	a5,-44(s0)
	.loc 6 149 12
	lw	a5,-44(s0)
	lhu	a4,-38(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-38(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 6 153 1
	nop
.LBE131:
.LBE130:
	.loc 5 1998 13
	lw	a5,-20(s0)
	addi	a5,a5,5
	sw	a5,-24(s0)
	.loc 5 1999 125 discriminator 2
	lw	a5,-88(s0)
	addi	a4,a5,2
	.loc 5 1999 132 discriminator 2
	lw	a5,-24(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a3,a5,8
	srli	a5,a5,8
	or	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a4,-48(s0)
	sh	a5,-50(s0)
.LBB132:
.LBB133:
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
.LBE133:
.LBE132:
	.loc 5 2002 8
	lw	a5,-88(s0)
	addi	a5,a5,4
	.loc 5 2002 12
	sb	zero,0(a5)
	.loc 5 2003 8
	lw	a5,-88(s0)
	addi	a5,a5,5
	.loc 5 2003 12
	li	a4,2
	sb	a4,0(a5)
	.loc 5 2005 28
	lw	a5,-84(s0)
	lhu	a5,256(a5)
	.loc 5 2004 21
	mv	a0,a5
	call	mbedtls_ssl_check_srtp_profile_value
	mv	a5,a0
	sh	a5,-26(s0)
	.loc 5 2006 8
	lhu	a5,-26(s0)
	beq	a5,zero,.L381
	.loc 5 2007 135 discriminator 2
	lw	a5,-88(s0)
	addi	a4,a5,6
	.loc 5 2007 142 discriminator 2
	lhu	a5,-26(s0)
	slli	a3,a5,8
	lhu	a5,-26(s0)
	srli	a5,a5,8
	or	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a4,-60(s0)
	sh	a5,-62(s0)
.LBB134:
.LBB135:
	.loc 6 148 33
	lw	a5,-60(s0)
	sw	a5,-68(s0)
	.loc 6 149 12
	lw	a5,-68(s0)
	lhu	a4,-62(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-62(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 6 153 1
	nop
.LBE135:
.LBE134:
	.loc 5 2013 8
	lw	a5,-88(s0)
	addi	a5,a5,8
	.loc 5 2013 12
	lw	a4,-20(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 5 2014 12
	lw	a5,-88(s0)
	addi	a4,a5,9
	.loc 5 2014 40
	lw	a5,-84(s0)
	addi	a5,a5,260
	.loc 5 2014 5
	lw	a2,-20(s0)
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 5 2016 15
	lw	a5,-20(s0)
	addi	a4,a5,9
	.loc 5 2016 11
	lw	a5,-92(s0)
	sw	a4,0(a5)
	j	.L375
.L381:
	.loc 5 2009 9
	lui	a5,%hi(.LC97)
	addi	a4,a5,%lo(.LC97)
	li	a3,2009
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2010 9
	j	.L375
.L383:
	.loc 5 1970 9
	nop
.L375:
	.loc 5 2017 1
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE189:
	.size	ssl_write_use_srtp_ext, .-ssl_write_use_srtp_ext
	.section	.rodata
	.align	2
.LC98:
	.string	"=> write hello verify request"
	.align	2
.LC99:
	.string	"server version"
	.align	2
.LC100:
	.string	"inconsistent cookie callbacks"
	.align	2
.LC101:
	.string	"f_cookie_write"
	.align	2
.LC102:
	.string	"cookie sent"
	.align	2
.LC103:
	.string	"mbedtls_ssl_write_handshake_msg"
	.align	2
.LC104:
	.string	"mbedtls_ssl_flight_transmit"
	.align	2
.LC105:
	.string	"<= write hello verify request"
	.section	.text.ssl_write_hello_verify_request,"ax",@progbits
	.align	1
	.type	ssl_write_hello_verify_request, @function
ssl_write_hello_verify_request:
.LFB190:
	.loc 5 2023 1
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
	.loc 5 2024 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 2025 27
	lw	a5,-36(s0)
	lw	a5,216(a5)
	.loc 5 2025 37
	addi	a5,a5,4
	.loc 5 2025 20
	sw	a5,-28(s0)
	.loc 5 2028 5
	lui	a5,%hi(.LC98)
	addi	a4,a5,%lo(.LC98)
	li	a3,2028
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2039 5
	lw	a4,-28(s0)
	.loc 5 2039 37
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 2039 43
	lbu	a5,5(a5)
	.loc 5 2039 5
	mv	a3,a5
	lw	a5,-36(s0)
	lhu	a5,16(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	mbedtls_ssl_write_version
	.loc 5 2040 5
	lw	a5,-28(s0)
	li	a6,2
	lui	a4,%hi(.LC99)
	addi	a4,a4,%lo(.LC99)
	li	a3,2040
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_buf
	.loc 5 2041 7
	lw	a5,-28(s0)
	addi	a5,a5,2
	sw	a5,-28(s0)
	.loc 5 2044 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 2044 18
	lw	a5,76(a5)
	.loc 5 2044 8
	bne	a5,zero,.L385
	.loc 5 2045 9
	lui	a5,%hi(.LC100)
	addi	a4,a5,%lo(.LC100)
	li	a3,2045
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2046 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L390
.L385:
	.loc 5 2050 24
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 5 2050 21
	sw	a5,-24(s0)
	.loc 5 2052 19
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 2052 25
	lw	a5,76(a5)
	.loc 5 2052 45
	lw	a4,-36(s0)
	lw	a4,0(a4)
	.loc 5 2052 51
	lw	a0,84(a4)
	.loc 5 2053 49
	lw	a4,-36(s0)
	lw	a3,192(a4)
	.loc 5 2052 16
	li	a4,16384
	addi	a4,a4,381
	add	a2,a3,a4
	.loc 5 2054 45
	lw	a4,-36(s0)
	lw	a3,516(a4)
	.loc 5 2052 16
	lw	a4,-36(s0)
	lw	a4,520(a4)
	addi	a1,s0,-28
	jalr	a5
.LVL4:
	sw	a0,-20(s0)
	.loc 5 2052 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L387
	.loc 5 2055 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC101)
	addi	a4,a4,%lo(.LC101)
	li	a3,4096
	addi	a3,a3,-2041
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2056 16
	lw	a5,-20(s0)
	j	.L390
.L387:
	.loc 5 2059 43
	lw	a4,-28(s0)
	.loc 5 2059 62
	lw	a5,-24(s0)
	addi	a5,a5,1
	.loc 5 2059 43
	sub	a5,a4,a5
	.loc 5 2059 24
	andi	a4,a5,0xff
	.loc 5 2059 22
	lw	a5,-24(s0)
	sb	a4,0(a5)
	.loc 5 2061 169
	lw	a5,-24(s0)
	addi	a4,a5,1
	.loc 5 2061 174
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 5 2061 5
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC102)
	addi	a4,a4,%lo(.LC102)
	li	a3,4096
	addi	a3,a3,-2035
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_buf
	.loc 5 2063 35
	lw	a4,-28(s0)
	.loc 5 2063 40
	lw	a5,-36(s0)
	lw	a5,216(a5)
	.loc 5 2063 35
	sub	a5,a4,a5
	.loc 5 2063 23
	mv	a4,a5
	.loc 5 2063 21
	lw	a5,-36(s0)
	sw	a4,224(a5)
	.loc 5 2064 22
	lw	a5,-36(s0)
	li	a4,22
	sw	a4,220(a5)
	.loc 5 2065 8
	lw	a5,-36(s0)
	lw	a5,216(a5)
	.loc 5 2065 21
	li	a4,3
	sb	a4,0(a5)
	.loc 5 2067 5
	li	a1,17
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_set_state
	.loc 5 2069 16
	lw	a0,-36(s0)
	call	mbedtls_ssl_write_handshake_msg
	sw	a0,-20(s0)
	.loc 5 2069 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L388
	.loc 5 2070 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC103)
	addi	a4,a4,%lo(.LC103)
	li	a3,4096
	addi	a3,a3,-2026
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2071 16
	lw	a5,-20(s0)
	j	.L390
.L388:
	.loc 5 2075 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 2075 18
	lbu	a4,5(a5)
	.loc 5 2075 8
	li	a5,1
	bne	a4,a5,.L389
	.loc 5 2076 16
	lw	a0,-36(s0)
	call	mbedtls_ssl_flight_transmit
	sw	a0,-20(s0)
	.loc 5 2075 35 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L389
	.loc 5 2077 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC104)
	addi	a4,a4,%lo(.LC104)
	li	a3,4096
	addi	a3,a3,-2019
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2078 16
	lw	a5,-20(s0)
	j	.L390
.L389:
	.loc 5 2082 5
	lui	a5,%hi(.LC105)
	addi	a4,a5,%lo(.LC105)
	li	a5,4096
	addi	a3,a5,-2014
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2084 12
	li	a5,0
.L390:
	.loc 5 2085 1
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
.LFE190:
	.size	ssl_write_hello_verify_request, .-ssl_write_hello_verify_request
	.section	.rodata
	.align	2
.LC106:
	.string	"session successfully restored from cache"
	.section	.text.ssl_handle_id_based_session_resumption,"ax",@progbits
	.align	1
	.type	ssl_handle_id_based_session_resumption, @function
ssl_handle_id_based_session_resumption:
.LFB191:
	.loc 5 2089 1
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	ra,156(sp)
	sw	s0,152(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sw	a0,-148(s0)
	.loc 5 2092 33
	lw	a5,-148(s0)
	lw	a5,60(a5)
	sw	a5,-20(s0)
	.loc 5 2096 12
	lw	a5,-148(s0)
	lw	a5,64(a5)
	.loc 5 2096 23
	lbu	a4,0(a5)
	.loc 5 2096 8
	li	a5,1
	beq	a4,a5,.L401
	.loc 5 2099 16
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 5 2099 8
	beq	a5,zero,.L402
	.loc 5 2102 12
	lw	a5,-148(s0)
	lw	a5,0(a5)
	.loc 5 2102 18
	lw	a5,40(a5)
	.loc 5 2102 8
	beq	a5,zero,.L403
	.loc 5 2106 12
	lw	a5,-148(s0)
	lw	a5,8(a5)
	.loc 5 2106 8
	bne	a5,zero,.L404
	.loc 5 2111 5
	addi	a5,s0,-144
	mv	a0,a5
	call	mbedtls_ssl_session_init
	.loc 5 2113 14
	lw	a5,-148(s0)
	lw	a5,0(a5)
	.loc 5 2113 20
	lw	a5,40(a5)
	.loc 5 2113 37
	lw	a4,-148(s0)
	lw	a4,0(a4)
	.loc 5 2113 43
	lw	a0,48(a4)
	.loc 5 2114 41
	lw	a4,-20(s0)
	addi	a1,a4,16
	.loc 5 2113 11
	lw	a4,-20(s0)
	lw	a4,12(a4)
	addi	a3,s0,-144
	mv	a2,a4
	jalr	a5
.LVL5:
	sw	a0,-24(s0)
	.loc 5 2117 8
	lw	a5,-24(s0)
	bne	a5,zero,.L405
	.loc 5 2121 16
	lw	a5,-20(s0)
	lw	a4,8(a5)
	.loc 5 2121 44
	lw	a5,-136(s0)
	.loc 5 2121 8
	bne	a4,a5,.L406
	.loc 5 2127 5
	lw	a0,-20(s0)
	call	mbedtls_ssl_session_free
	.loc 5 2128 14
	lw	a5,-20(s0)
	mv	a3,a5
	addi	a5,s0,-144
	li	a4,120
	mv	a2,a4
	mv	a1,a5
	mv	a0,a3
	call	memcpy
	.loc 5 2129 5
	addi	a5,s0,-144
	li	a2,120
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 5 2131 5
	lui	a5,%hi(.LC106)
	addi	a4,a5,%lo(.LC106)
	li	a5,4096
	addi	a3,a5,-1965
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,3
	lw	a0,-148(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2132 8
	lw	a5,-148(s0)
	lw	a5,64(a5)
	.loc 5 2132 28
	li	a4,1
	sb	a4,0(a5)
	j	.L398
.L405:
	.loc 5 2118 9
	nop
	j	.L398
.L406:
	.loc 5 2123 9
	nop
.L398:
	.loc 5 2136 5
	addi	a5,s0,-144
	mv	a0,a5
	call	mbedtls_ssl_session_free
	j	.L391
.L401:
	.loc 5 2097 9
	nop
	j	.L391
.L402:
	.loc 5 2100 9
	nop
	j	.L391
.L403:
	.loc 5 2103 9
	nop
	j	.L391
.L404:
	.loc 5 2107 9
	nop
.L391:
	.loc 5 2137 1
	lw	ra,156(sp)
	.cfi_restore 1
	lw	s0,152(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE191:
	.size	ssl_handle_id_based_session_resumption, .-ssl_handle_id_based_session_resumption
	.section	.rodata
	.align	2
.LC107:
	.string	"=> write server hello"
	.align	2
.LC108:
	.string	"client hello was not authenticated"
	.align	2
.LC109:
	.string	"<= write server hello"
	.align	2
.LC110:
	.string	"server hello, chosen version: [%d:%d]"
	.align	2
.LC111:
	.string	"server hello, random bytes"
	.align	2
.LC112:
	.string	"mbedtls_ssl_derive_keys"
	.align	2
.LC113:
	.string	"server hello, session id len.: %zu"
	.align	2
.LC114:
	.string	"server hello, session id"
	.align	2
.LC115:
	.string	"a"
	.align	2
.LC116:
	.string	"no"
	.align	2
.LC117:
	.string	"%s session has been resumed"
	.align	2
.LC118:
	.string	"server hello, chosen ciphersuite: %s"
	.align	2
.LC119:
	.string	"server hello, compress alg.: 0x%02X"
	.align	2
.LC120:
	.string	"server hello, total extension length: %zu"
	.section	.text.ssl_write_server_hello,"ax",@progbits
	.align	1
	.type	ssl_write_server_hello, @function
ssl_write_server_hello:
.LFB192:
	.loc 5 2141 1
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
	.loc 5 2145 9
	li	a5,-110
	sw	a5,-32(s0)
	.loc 5 2146 18
	sw	zero,-28(s0)
	.loc 5 2149 5
	lui	a5,%hi(.LC107)
	addi	a4,a5,%lo(.LC107)
	li	a5,4096
	addi	a3,a5,-1947
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2152 12
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 5 2152 18
	lbu	a4,5(a5)
	.loc 5 2152 8
	li	a5,1
	bne	a4,a5,.L408
	.loc 5 2153 12
	lw	a5,-84(s0)
	lw	a5,64(a5)
	.loc 5 2153 23
	lbu	a5,629(a5)
	.loc 5 2152 35 discriminator 1
	beq	a5,zero,.L408
	.loc 5 2154 9
	lui	a5,%hi(.LC108)
	addi	a4,a5,%lo(.LC108)
	li	a5,4096
	addi	a3,a5,-1942
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2155 9
	lui	a5,%hi(.LC109)
	addi	a4,a5,%lo(.LC109)
	li	a5,4096
	addi	a3,a5,-1941
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2157 16
	lw	a0,-84(s0)
	call	ssl_write_hello_verify_request
	mv	a5,a0
	j	.L421
.L408:
	.loc 5 2168 9
	lw	a5,-84(s0)
	lw	a5,216(a5)
	sw	a5,-36(s0)
	.loc 5 2169 7
	lw	a5,-36(s0)
	addi	a5,a5,4
	sw	a5,-24(s0)
	.loc 5 2171 37
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 5 2171 43
	lbu	a5,5(a5)
	.loc 5 2171 5
	mv	a4,a5
	lw	a5,-84(s0)
	lhu	a5,16(a5)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-24(s0)
	call	mbedtls_ssl_write_version
	.loc 5 2172 7
	lw	a5,-24(s0)
	addi	a5,a5,2
	sw	a5,-24(s0)
	.loc 5 2174 182
	lw	a5,-36(s0)
	addi	a5,a5,4
	lbu	a5,0(a5)
	.loc 5 2174 5
	mv	a4,a5
	.loc 5 2174 190
	lw	a5,-36(s0)
	addi	a5,a5,5
	lbu	a5,0(a5)
	.loc 5 2174 5
	mv	a6,a5
	mv	a5,a4
	lui	a4,%hi(.LC110)
	addi	a4,a4,%lo(.LC110)
	li	a3,4096
	addi	a3,a3,-1922
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2185 19
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 5 2185 25
	lw	a5,32(a5)
	.loc 5 2185 36
	lw	a4,-84(s0)
	lw	a4,0(a4)
	.loc 5 2185 42
	lw	a4,36(a4)
	.loc 5 2185 16
	li	a2,4
	lw	a1,-24(s0)
	mv	a0,a4
	jalr	a5
.LVL6:
	sw	a0,-32(s0)
	.loc 5 2185 8 discriminator 1
	lw	a5,-32(s0)
	beq	a5,zero,.L410
	.loc 5 2186 16
	lw	a5,-32(s0)
	j	.L421
.L410:
	.loc 5 2189 7
	lw	a5,-24(s0)
	addi	a5,a5,4
	sw	a5,-24(s0)
	.loc 5 2192 19
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 5 2192 25
	lw	a5,32(a5)
	.loc 5 2192 36
	lw	a4,-84(s0)
	lw	a4,0(a4)
	.loc 5 2192 42
	lw	a4,36(a4)
	.loc 5 2192 16
	li	a2,20
	lw	a1,-24(s0)
	mv	a0,a4
	jalr	a5
.LVL7:
	sw	a0,-32(s0)
	.loc 5 2192 8 discriminator 1
	lw	a5,-32(s0)
	beq	a5,zero,.L411
	.loc 5 2193 16
	lw	a5,-32(s0)
	j	.L421
.L411:
	.loc 5 2195 7
	lw	a5,-24(s0)
	addi	a5,a5,20
	sw	a5,-24(s0)
	.loc 5 2218 23
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 5 2218 29
	lw	a5,32(a5)
	.loc 5 2218 40
	lw	a4,-84(s0)
	lw	a4,0(a4)
	.loc 5 2218 46
	lw	a4,36(a4)
	.loc 5 2218 20
	li	a2,8
	lw	a1,-24(s0)
	mv	a0,a4
	jalr	a5
.LVL8:
	sw	a0,-32(s0)
	.loc 5 2218 12 discriminator 1
	lw	a5,-32(s0)
	beq	a5,zero,.L412
	.loc 5 2219 20
	lw	a5,-32(s0)
	j	.L421
.L412:
	.loc 5 2222 7
	lw	a5,-24(s0)
	addi	a5,a5,8
	sw	a5,-24(s0)
	.loc 5 2224 15
	lw	a5,-84(s0)
	lw	a5,64(a5)
	.loc 5 2224 12
	addi	a5,a5,808
	.loc 5 2224 5
	addi	a4,a5,32
	.loc 5 2224 48
	lw	a5,-36(s0)
	addi	a5,a5,6
	.loc 5 2224 5
	li	a2,32
	mv	a1,a5
	mv	a0,a4
	call	memcpy
	.loc 5 2226 172
	lw	a5,-36(s0)
	addi	a5,a5,6
	.loc 5 2226 5
	li	a6,32
	lui	a4,%hi(.LC111)
	addi	a4,a4,%lo(.LC111)
	li	a3,4096
	addi	a3,a3,-1870
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-84(s0)
	call	mbedtls_debug_print_buf
	.loc 5 2228 5
	lw	a0,-84(s0)
	call	ssl_handle_id_based_session_resumption
	.loc 5 2230 12
	lw	a5,-84(s0)
	lw	a5,64(a5)
	.loc 5 2230 23
	lbu	a5,0(a5)
	.loc 5 2230 8
	bne	a5,zero,.L413
	.loc 5 2235 9
	lw	a0,-84(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 5 2242 16
	lw	a5,-84(s0)
	lw	a5,64(a5)
	.loc 5 2242 27
	lbu	a5,4(a5)
	.loc 5 2242 12
	beq	a5,zero,.L414
	.loc 5 2243 48
	sw	zero,-20(s0)
	.loc 5 2243 16
	lw	a5,-84(s0)
	lw	a5,60(a5)
	.loc 5 2243 44
	lw	a4,-20(s0)
	sw	a4,12(a5)
	.loc 5 2244 23
	lw	a5,-84(s0)
	lw	a5,60(a5)
	.loc 5 2244 42
	addi	a5,a5,16
	.loc 5 2244 13
	li	a2,32
	li	a1,0
	mv	a0,a5
	call	memset
	j	.L415
.L414:
	.loc 5 2248 48
	li	a5,32
	sw	a5,-20(s0)
	.loc 5 2248 16
	lw	a5,-84(s0)
	lw	a5,60(a5)
	.loc 5 2248 44
	lw	a4,-20(s0)
	sw	a4,12(a5)
	.loc 5 2249 27
	lw	a5,-84(s0)
	lw	a5,0(a5)
	.loc 5 2249 33
	lw	a5,32(a5)
	.loc 5 2249 44
	lw	a4,-84(s0)
	lw	a4,0(a4)
	.loc 5 2249 50
	lw	a3,36(a4)
	.loc 5 2249 62
	lw	a4,-84(s0)
	lw	a4,60(a4)
	.loc 5 2249 81
	addi	a4,a4,16
	.loc 5 2249 24
	lw	a2,-20(s0)
	mv	a1,a4
	mv	a0,a3
	jalr	a5
.LVL9:
	sw	a0,-32(s0)
	.loc 5 2249 16 discriminator 1
	lw	a5,-32(s0)
	beq	a5,zero,.L415
	.loc 5 2251 24
	lw	a5,-32(s0)
	j	.L421
.L413:
	.loc 5 2258 16
	lw	a5,-84(s0)
	lw	a5,60(a5)
	.loc 5 2258 11
	lw	a5,12(a5)
	sw	a5,-20(s0)
	.loc 5 2259 9
	li	a1,12
	lw	a0,-84(s0)
	call	mbedtls_ssl_handshake_set_state
	.loc 5 2261 20
	lw	a0,-84(s0)
	call	mbedtls_ssl_derive_keys
	sw	a0,-32(s0)
	.loc 5 2261 12 discriminator 1
	lw	a5,-32(s0)
	beq	a5,zero,.L415
	.loc 5 2262 13
	lw	a5,-32(s0)
	lui	a4,%hi(.LC112)
	addi	a4,a4,%lo(.LC112)
	li	a3,4096
	addi	a3,a3,-1834
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-84(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2263 20
	lw	a5,-32(s0)
	j	.L421
.L415:
	.loc 5 2275 31
	lw	a5,-84(s0)
	lw	a5,60(a5)
	.loc 5 2275 50
	lw	a3,12(a5)
	.loc 5 2275 7
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 5 2275 12
	andi	a4,a3,0xff
	.loc 5 2275 10
	sb	a4,0(a5)
	.loc 5 2276 18
	lw	a5,-84(s0)
	lw	a5,60(a5)
	.loc 5 2276 37
	addi	a4,a5,16
	.loc 5 2276 46
	lw	a5,-84(s0)
	lw	a5,60(a5)
	.loc 5 2276 5
	lw	a5,12(a5)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-24(s0)
	call	memcpy
	.loc 5 2277 13
	lw	a5,-84(s0)
	lw	a5,60(a5)
	.loc 5 2277 32
	lw	a5,12(a5)
	.loc 5 2277 7
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	.loc 5 2279 5
	lw	a5,-20(s0)
	lui	a4,%hi(.LC113)
	addi	a4,a4,%lo(.LC113)
	li	a3,4096
	addi	a3,a3,-1817
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2280 170
	lw	a5,-36(s0)
	addi	a5,a5,39
	.loc 5 2280 5
	lw	a6,-20(s0)
	lui	a4,%hi(.LC114)
	addi	a4,a4,%lo(.LC114)
	li	a3,4096
	addi	a3,a3,-1816
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-84(s0)
	call	mbedtls_debug_print_buf
	.loc 5 2281 172
	lw	a5,-84(s0)
	lw	a5,64(a5)
	.loc 5 2281 183
	lbu	a5,0(a5)
	.loc 5 2281 5
	beq	a5,zero,.L416
	.loc 5 2281 5 is_stmt 0 discriminator 1
	lui	a5,%hi(.LC115)
	addi	a5,a5,%lo(.LC115)
	j	.L417
.L416:
	.loc 5 2281 5 discriminator 2
	lui	a5,%hi(.LC116)
	addi	a5,a5,%lo(.LC116)
.L417:
	.loc 5 2281 5 discriminator 4
	lui	a4,%hi(.LC117)
	addi	a4,a4,%lo(.LC117)
	li	a3,4096
	addi	a3,a3,-1815
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2284 189 is_stmt 1 discriminator 2
	lw	a5,-84(s0)
	lw	a5,60(a5)
	.loc 5 2284 208 discriminator 2
	lw	a5,8(a5)
	.loc 5 2284 156 discriminator 2
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	lw	a4,-24(s0)
	sw	a4,-48(s0)
	sh	a5,-50(s0)
.LBB136:
.LBB137:
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
.LBE137:
.LBE136:
	.loc 5 2285 7
	lw	a5,-24(s0)
	addi	a5,a5,2
	sw	a5,-24(s0)
	.loc 5 2286 7
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 5 2286 10
	sb	zero,0(a5)
	.loc 5 2288 214
	lw	a5,-84(s0)
	lw	a5,60(a5)
	.loc 5 2288 233
	lw	a5,8(a5)
	.loc 5 2288 5
	mv	a0,a5
	call	mbedtls_ssl_get_ciphersuite_name
	mv	a5,a0
	.loc 5 2288 5 is_stmt 0 discriminator 1
	lui	a4,%hi(.LC118)
	addi	a4,a4,%lo(.LC118)
	li	a3,4096
	addi	a3,a3,-1808
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2290 5 is_stmt 1
	li	a5,0
	lui	a4,%hi(.LC119)
	addi	a4,a4,%lo(.LC119)
	li	a3,4096
	addi	a3,a3,-1806
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2296 44
	lw	a5,-28(s0)
	addi	a5,a5,2
	.loc 5 2296 5
	lw	a4,-24(s0)
	add	a5,a4,a5
	addi	a4,s0,-72
	mv	a2,a4
	mv	a1,a5
	lw	a0,-84(s0)
	call	ssl_write_renegotiation_ext
	.loc 5 2297 13
	lw	a5,-72(s0)
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 5 2300 50
	lw	a5,-28(s0)
	addi	a5,a5,2
	.loc 5 2300 5
	lw	a4,-24(s0)
	add	a5,a4,a5
	addi	a4,s0,-72
	mv	a2,a4
	mv	a1,a5
	lw	a0,-84(s0)
	call	ssl_write_max_fragment_length_ext
	.loc 5 2301 13
	lw	a5,-72(s0)
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 5 2305 34
	lw	a5,-28(s0)
	addi	a5,a5,2
	.loc 5 2305 5
	lw	a4,-24(s0)
	add	a5,a4,a5
	addi	a4,s0,-72
	mv	a2,a4
	mv	a1,a5
	lw	a0,-84(s0)
	call	ssl_write_cid_ext
	.loc 5 2306 13
	lw	a5,-72(s0)
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 5 2310 47
	lw	a5,-28(s0)
	addi	a5,a5,2
	.loc 5 2310 5
	lw	a4,-24(s0)
	add	a5,a4,a5
	addi	a4,s0,-72
	mv	a2,a4
	mv	a1,a5
	lw	a0,-84(s0)
	call	ssl_write_encrypt_then_mac_ext
	.loc 5 2311 13
	lw	a5,-72(s0)
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 5 2315 42
	lw	a5,-28(s0)
	addi	a5,a5,2
	.loc 5 2315 5
	lw	a4,-24(s0)
	add	a5,a4,a5
	addi	a4,s0,-72
	mv	a2,a4
	mv	a1,a5
	lw	a0,-84(s0)
	call	ssl_write_extended_ms_ext
	.loc 5 2316 13
	lw	a5,-72(s0)
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 5 2320 45
	lw	a5,-28(s0)
	addi	a5,a5,2
	.loc 5 2320 5
	lw	a4,-24(s0)
	add	a5,a4,a5
	addi	a4,s0,-72
	mv	a2,a4
	mv	a1,a5
	lw	a0,-84(s0)
	call	ssl_write_session_ticket_ext
	.loc 5 2321 13
	lw	a5,-72(s0)
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 5 2328 44
	lw	a5,-84(s0)
	lw	a5,60(a5)
	.loc 5 2328 9
	lw	a5,8(a5)
	mv	a0,a5
	call	mbedtls_ssl_ciphersuite_from_id
	sw	a0,-40(s0)
	.loc 5 2329 8
	lw	a5,-40(s0)
	beq	a5,zero,.L418
	.loc 5 2329 25 discriminator 1
	lw	a0,-40(s0)
	call	mbedtls_ssl_ciphersuite_uses_ec
	mv	a5,a0
	.loc 5 2329 22 discriminator 2
	beq	a5,zero,.L418
	.loc 5 2330 58
	lw	a5,-28(s0)
	addi	a5,a5,2
	.loc 5 2330 9
	lw	a4,-24(s0)
	add	a5,a4,a5
	addi	a4,s0,-72
	mv	a2,a4
	mv	a1,a5
	lw	a0,-84(s0)
	call	ssl_write_supported_point_formats_ext
	.loc 5 2331 17
	lw	a5,-72(s0)
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
.L418:
	.loc 5 2341 20
	lw	a4,-36(s0)
	li	a5,16384
	addi	a5,a5,-4
	add	a5,a4,a5
	sw	a5,-44(s0)
	.loc 5 2342 54
	lw	a5,-28(s0)
	addi	a5,a5,2
	.loc 5 2342 16
	lw	a4,-24(s0)
	add	a5,a4,a5
	addi	a4,s0,-72
	mv	a3,a4
	lw	a2,-44(s0)
	mv	a1,a5
	lw	a0,-84(s0)
	call	mbedtls_ssl_write_alpn_ext
	sw	a0,-32(s0)
	.loc 5 2342 8 discriminator 1
	lw	a5,-32(s0)
	beq	a5,zero,.L419
	.loc 5 2344 16
	lw	a5,-32(s0)
	j	.L421
.L419:
	.loc 5 2347 13
	lw	a5,-72(s0)
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 5 2351 39
	lw	a5,-28(s0)
	addi	a5,a5,2
	.loc 5 2351 5
	lw	a4,-24(s0)
	add	a5,a4,a5
	addi	a4,s0,-72
	mv	a2,a4
	mv	a1,a5
	lw	a0,-84(s0)
	call	ssl_write_use_srtp_ext
	.loc 5 2352 13
	lw	a5,-72(s0)
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 5 2355 5
	lw	a5,-28(s0)
	lui	a4,%hi(.LC120)
	addi	a4,a4,%lo(.LC120)
	li	a3,4096
	addi	a3,a3,-1741
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2358 8
	lw	a5,-28(s0)
	beq	a5,zero,.L420
	.loc 5 2359 132 discriminator 2
	lw	a5,-28(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	lw	a4,-24(s0)
	sw	a4,-60(s0)
	sh	a5,-62(s0)
.LBB138:
.LBB139:
	.loc 6 148 33
	lw	a5,-60(s0)
	sw	a5,-68(s0)
	.loc 6 149 12
	lw	a5,-68(s0)
	lhu	a4,-62(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-62(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 6 153 1
	nop
.LBE139:
.LBE138:
	.loc 5 2360 16
	lw	a5,-28(s0)
	addi	a5,a5,2
	.loc 5 2360 11
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
.L420:
	.loc 5 2363 35
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	.loc 5 2363 23
	mv	a4,a5
	.loc 5 2363 21
	lw	a5,-84(s0)
	sw	a4,224(a5)
	.loc 5 2364 22
	lw	a5,-84(s0)
	li	a4,22
	sw	a4,220(a5)
	.loc 5 2365 8
	lw	a5,-84(s0)
	lw	a5,216(a5)
	.loc 5 2365 21
	li	a4,2
	sb	a4,0(a5)
	.loc 5 2367 11
	lw	a0,-84(s0)
	call	mbedtls_ssl_write_handshake_msg
	sw	a0,-32(s0)
	.loc 5 2369 5
	lui	a5,%hi(.LC109)
	addi	a4,a5,%lo(.LC109)
	li	a5,4096
	addi	a3,a5,-1727
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-84(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2371 12
	lw	a5,-32(s0)
.L421:
	.loc 5 2372 1
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
.LFE192:
	.size	ssl_write_server_hello, .-ssl_write_server_hello
	.section	.rodata
	.align	2
.LC121:
	.string	"=> write certificate request"
	.align	2
.LC122:
	.string	"<= skip write certificate request"
	.align	2
.LC123:
	.string	"skipping CAs: buffer too short"
	.align	2
.LC124:
	.string	"requested DN"
	.align	2
.LC125:
	.string	"<= write certificate request"
	.section	.text.ssl_write_certificate_request,"ax",@progbits
	.align	1
	.type	ssl_write_certificate_request, @function
ssl_write_certificate_request:
.LFB193:
	.loc 5 2395 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	a0,-116(s0)
	.loc 5 2396 9
	li	a5,-28672
	addi	a5,a5,-128
	sw	a5,-44(s0)
	.loc 5 2398 12
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 2397 38
	lw	a5,24(a5)
	sw	a5,-48(s0)
	.loc 5 2402 42
	lw	a5,-116(s0)
	lw	a4,216(a5)
	.loc 5 2402 33
	li	a5,16384
	add	a5,a4,a5
	sw	a5,-52(s0)
	.loc 5 2406 5
	lui	a5,%hi(.LC121)
	addi	a4,a5,%lo(.LC121)
	li	a5,4096
	addi	a3,a5,-1690
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2408 5
	lw	a0,-116(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 5 2411 12
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 2411 23
	lbu	a4,2(a5)
	.loc 5 2411 8
	li	a5,3
	beq	a4,a5,.L423
	.loc 5 2412 23
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 2412 34
	lbu	a5,2(a5)
	.loc 5 2412 18
	sw	a5,-36(s0)
	j	.L424
.L423:
	.loc 5 2415 19
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 5 2415 25
	lbu	a5,6(a5)
	.loc 5 2415 14
	sw	a5,-36(s0)
.L424:
	.loc 5 2417 10
	lw	a0,-48(s0)
	call	mbedtls_ssl_ciphersuite_cert_req_allowed
	mv	a5,a0
	.loc 5 2417 8 discriminator 1
	beq	a5,zero,.L425
	.loc 5 2417 69 discriminator 2
	lw	a5,-36(s0)
	bne	a5,zero,.L426
.L425:
	.loc 5 2419 9
	lui	a5,%hi(.LC122)
	addi	a4,a5,%lo(.LC122)
	li	a5,4096
	addi	a3,a5,-1677
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2420 16
	li	a5,0
	j	.L427
.L426:
	.loc 5 2435 9
	lw	a5,-116(s0)
	lw	a5,216(a5)
	sw	a5,-56(s0)
	.loc 5 2436 7
	lw	a5,-56(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
	.loc 5 2444 12
	sw	zero,-60(s0)
	.loc 5 2447 17
	lw	a5,-60(s0)
	addi	a4,a5,1
	sw	a4,-60(s0)
	.loc 5 2447 9
	addi	a5,a5,1
	.loc 5 2447 6
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 5 2447 21
	li	a4,1
	sb	a4,0(a5)
	.loc 5 2450 17
	lw	a5,-60(s0)
	addi	a4,a5,1
	sw	a4,-60(s0)
	.loc 5 2450 9
	addi	a5,a5,1
	.loc 5 2450 6
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 5 2450 21
	li	a4,64
	sb	a4,0(a5)
	.loc 5 2453 34
	lw	a5,-60(s0)
	addi	a4,a5,1
	sw	a4,-60(s0)
	.loc 5 2453 12
	andi	a4,a5,0xff
	.loc 5 2453 10
	lw	a5,-20(s0)
	sb	a4,0(a5)
	.loc 5 2454 7
	lw	a4,-20(s0)
	lw	a5,-60(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 2456 12
	sw	zero,-32(s0)
	.loc 5 2471 31
	lw	a0,-116(s0)
	call	mbedtls_ssl_get_sig_algs
	sw	a0,-40(s0)
	.loc 5 2472 8
	lw	a5,-40(s0)
	bne	a5,zero,.L429
	.loc 5 2473 16
	li	a5,-24576
	addi	a5,a5,384
	j	.L427
.L433:
.LBB140:
	.loc 5 2477 44
	lw	a5,-40(s0)
	lhu	a5,0(a5)
	.loc 5 2477 31
	srli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 2477 23
	sb	a5,-63(s0)
	.loc 5 2479 13
	lbu	a5,-63(s0)
	mv	a1,a5
	lw	a0,-116(s0)
	call	mbedtls_ssl_set_calc_verify_md
	mv	a5,a0
	.loc 5 2479 12 discriminator 1
	bne	a5,zero,.L443
	.loc 5 2482 14
	lw	a5,-40(s0)
	lhu	a5,0(a5)
	mv	a1,a5
	lw	a0,-116(s0)
	call	mbedtls_ssl_sig_alg_is_supported
	mv	a5,a0
	.loc 5 2482 12 discriminator 1
	beq	a5,zero,.L444
	.loc 5 2489 16
	lw	a5,-32(s0)
	addi	a5,a5,2
	sw	a5,-32(s0)
	.loc 5 2490 131 discriminator 2
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	add	a4,a4,a5
	.loc 5 2490 143 discriminator 2
	lw	a5,-40(s0)
	lhu	a5,0(a5)
	slli	a3,a5,8
	srli	a5,a5,8
	or	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a4,-68(s0)
	sh	a5,-70(s0)
.LBB141:
.LBB142:
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
	j	.L431
.L443:
.LBE142:
.LBE141:
	.loc 5 2480 13
	nop
	j	.L431
.L444:
	.loc 5 2483 13
	nop
.L431:
.LBE140:
	.loc 5 2476 36
	lw	a5,-40(s0)
	addi	a5,a5,2
	sw	a5,-40(s0)
.L429:
	.loc 5 2476 12 discriminator 1
	lw	a5,-40(s0)
	lhu	a5,0(a5)
	.loc 5 2476 21 discriminator 1
	bne	a5,zero,.L433
	.loc 5 2495 127 discriminator 2
	lw	a5,-32(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	lw	a4,-20(s0)
	sw	a4,-80(s0)
	sh	a5,-82(s0)
.LBB143:
.LBB144:
	.loc 6 148 33
	lw	a5,-80(s0)
	sw	a5,-88(s0)
	.loc 6 149 12
	lw	a5,-88(s0)
	lhu	a4,-82(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-82(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 6 153 1
	nop
.LBE144:
.LBE143:
	.loc 5 2496 12
	lw	a5,-32(s0)
	addi	a5,a5,2
	sw	a5,-32(s0)
	.loc 5 2497 7
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 2503 7
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 5 2505 19
	sh	zero,-26(s0)
	.loc 5 2507 12
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 5 2507 18
	lbu	a4,14(a5)
	.loc 5 2507 8
	li	a5,1
	bne	a4,a5,.L434
	.loc 5 2515 16
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 2515 27
	lw	a5,992(a5)
	.loc 5 2515 12
	beq	a5,zero,.L435
	.loc 5 2516 22
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 2516 17
	lw	a5,992(a5)
	sw	a5,-24(s0)
	j	.L439
.L435:
	.loc 5 2519 16
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 5 2519 22
	lw	a5,240(a5)
	.loc 5 2519 12
	beq	a5,zero,.L437
	.loc 5 2520 22
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 5 2520 17
	lw	a5,240(a5)
	sw	a5,-24(s0)
	j	.L439
.L437:
	.loc 5 2524 16
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 2524 27
	lw	a5,548(a5)
	.loc 5 2524 12
	beq	a5,zero,.L438
	.loc 5 2525 22
	lw	a5,-116(s0)
	lw	a5,64(a5)
	.loc 5 2525 17
	lw	a5,548(a5)
	sw	a5,-24(s0)
	j	.L439
.L438:
	.loc 5 2528 18
	lw	a5,-116(s0)
	lw	a5,0(a5)
	.loc 5 2528 13
	lw	a5,112(a5)
	sw	a5,-24(s0)
	.loc 5 2530 15
	j	.L439
.L442:
	.loc 5 2533 50
	lw	a5,-24(s0)
	lw	a5,72(a5)
	.loc 5 2533 21
	sh	a5,-62(s0)
	.loc 5 2535 16
	lw	a4,-52(s0)
	lw	a5,-20(s0)
	bltu	a4,a5,.L440
	.loc 5 2535 42 discriminator 1
	lw	a4,-52(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 5 2535 28 discriminator 1
	mv	a4,a5
	.loc 5 2535 53 discriminator 1
	lhu	a5,-62(s0)
	.loc 5 2535 51 discriminator 1
	addi	a5,a5,2
	.loc 5 2535 25 discriminator 1
	bgeu	a4,a5,.L441
.L440:
	.loc 5 2536 17
	lui	a5,%hi(.LC123)
	addi	a4,a5,%lo(.LC123)
	li	a5,4096
	addi	a3,a5,-1560
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2537 17
	j	.L434
.L441:
	.loc 5 2540 136 discriminator 2
	lhu	a5,-62(s0)
	slli	a4,a5,8
	lhu	a5,-62(s0)
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	lw	a4,-20(s0)
	sw	a4,-92(s0)
	sh	a5,-94(s0)
.LBB145:
.LBB146:
	.loc 6 148 33
	lw	a5,-92(s0)
	sw	a5,-100(s0)
	.loc 6 149 12
	lw	a5,-100(s0)
	lhu	a4,-94(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-94(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 6 153 1
	nop
.LBE146:
.LBE145:
	.loc 5 2541 15
	lw	a5,-20(s0)
	addi	a5,a5,2
	sw	a5,-20(s0)
	.loc 5 2542 39
	lw	a5,-24(s0)
	lw	a5,76(a5)
	.loc 5 2542 13
	lhu	a4,-62(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-20(s0)
	call	memcpy
	.loc 5 2543 15
	lhu	a5,-62(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 2545 164
	lhu	a5,-62(s0)
	neg	a5,a5
	lw	a4,-20(s0)
	add	a5,a4,a5
	.loc 5 2545 13
	lhu	a4,-62(s0)
	mv	a6,a4
	lui	a4,%hi(.LC124)
	addi	a4,a4,%lo(.LC124)
	li	a3,4096
	addi	a3,a3,-1551
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-116(s0)
	call	mbedtls_debug_print_buf
	.loc 5 2547 27
	lhu	a5,-62(s0)
	mv	a4,a5
	lhu	a5,-26(s0)
	add	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	addi	a5,a5,2
	sh	a5,-26(s0)
	.loc 5 2548 17
	lw	a5,-24(s0)
	lw	a5,400(a5)
	sw	a5,-24(s0)
.L439:
	.loc 5 2530 27
	lw	a5,-24(s0)
	beq	a5,zero,.L434
	.loc 5 2530 33 discriminator 1
	lw	a5,-24(s0)
	lw	a5,28(a5)
	.loc 5 2530 27 discriminator 1
	bne	a5,zero,.L442
.L434:
	.loc 5 2552 35
	lw	a4,-20(s0)
	lw	a5,-56(s0)
	sub	a5,a4,a5
	.loc 5 2552 23
	mv	a4,a5
	.loc 5 2552 21
	lw	a5,-116(s0)
	sw	a4,224(a5)
	.loc 5 2553 22
	lw	a5,-116(s0)
	li	a4,22
	sw	a4,220(a5)
	.loc 5 2554 8
	lw	a5,-116(s0)
	lw	a5,216(a5)
	.loc 5 2554 21
	li	a4,13
	sb	a4,0(a5)
	.loc 5 2555 156 discriminator 2
	lw	a5,-116(s0)
	lw	a4,216(a5)
	.loc 5 2555 181 discriminator 2
	lw	a3,-60(s0)
	lw	a5,-32(s0)
	add	a5,a3,a5
	addi	a5,a5,4
	.loc 5 2555 167 discriminator 2
	add	a4,a4,a5
	.loc 5 2555 192 discriminator 2
	lhu	a5,-26(s0)
	slli	a3,a5,8
	lhu	a5,-26(s0)
	srli	a5,a5,8
	or	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a4,-104(s0)
	sh	a5,-106(s0)
.LBB147:
.LBB148:
	.loc 6 148 33
	lw	a5,-104(s0)
	sw	a5,-112(s0)
	.loc 6 149 12
	lw	a5,-112(s0)
	lhu	a4,-106(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-106(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 6 153 1
	nop
.LBE148:
.LBE147:
	.loc 5 2557 11
	lw	a0,-116(s0)
	call	mbedtls_ssl_write_handshake_msg
	sw	a0,-44(s0)
	.loc 5 2559 5
	lui	a5,%hi(.LC125)
	addi	a4,a5,%lo(.LC125)
	li	a5,4096
	addi	a3,a5,-1537
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-116(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2561 12
	lw	a5,-44(s0)
.L427:
	.loc 5 2562 1
	mv	a0,a5
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE193:
	.size	ssl_write_certificate_request, .-ssl_write_certificate_request
	.section	.rodata
	.align	2
.LC126:
	.string	"got no server private key"
	.align	2
.LC127:
	.string	"server key not ECDH capable"
	.align	2
.LC128:
	.string	"mbedtls_ecdh_get_params"
	.section	.text.ssl_get_ecdh_params_from_cert,"ax",@progbits
	.align	1
	.type	ssl_get_ecdh_params_from_cert, @function
ssl_get_ecdh_params_from_cert:
.LFB194:
	.loc 5 2717 1
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
	.loc 5 2718 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 2720 45
	lw	a0,-36(s0)
	call	mbedtls_ssl_own_key
	sw	a0,-24(s0)
	.loc 5 2721 8
	lw	a5,-24(s0)
	bne	a5,zero,.L446
	.loc 5 2722 9
	lui	a5,%hi(.LC126)
	addi	a4,a5,%lo(.LC126)
	li	a5,4096
	addi	a3,a5,-1374
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2723 16
	li	a5,-28672
	addi	a5,a5,-1536
	j	.L447
.L446:
	.loc 5 2726 10
	li	a1,2
	lw	a0,-24(s0)
	call	mbedtls_pk_can_do
	mv	a5,a0
	.loc 5 2726 8 discriminator 1
	bne	a5,zero,.L448
	.loc 5 2727 9
	lui	a5,%hi(.LC127)
	addi	a4,a5,%lo(.LC127)
	li	a5,4096
	addi	a3,a5,-1369
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2728 16
	li	a5,-28672
	addi	a5,a5,768
	j	.L447
.L448:
	.loc 5 2731 44
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2731 16
	addi	s1,a5,164
	.loc 5 2732 58
	lw	a0,-36(s0)
	call	mbedtls_ssl_own_key
	mv	a5,a0
	.loc 5 2731 16
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	mbedtls_pk_ec_ro
	mv	a5,a0
	.loc 5 2731 16 is_stmt 0 discriminator 1
	li	a2,0
	mv	a1,a5
	mv	a0,s1
	call	mbedtls_ecdh_get_params
	sw	a0,-20(s0)
	.loc 5 2731 8 is_stmt 1 discriminator 2
	lw	a5,-20(s0)
	beq	a5,zero,.L449
	.loc 5 2734 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC128)
	addi	a4,a4,%lo(.LC128)
	li	a3,4096
	addi	a3,a3,-1362
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2735 16
	lw	a5,-20(s0)
	j	.L447
.L449:
	.loc 5 2738 12
	li	a5,0
.L447:
	.loc 5 2739 1
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
.LFE194:
	.size	ssl_get_ecdh_params_from_cert, .-ssl_get_ecdh_params_from_cert
	.section	.rodata
	.align	2
.LC129:
	.string	"ssl_resume_server_key_exchange"
	.section	.text.ssl_resume_server_key_exchange,"ax",@progbits
	.align	1
	.type	ssl_resume_server_key_exchange, @function
ssl_resume_server_key_exchange:
.LFB195:
	.loc 5 2749 1
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
	.loc 5 2755 35
	lw	a5,-36(s0)
	lw	a4,216(a5)
	.loc 5 2755 50
	lw	a5,-36(s0)
	lw	a5,224(a5)
	.loc 5 2755 63
	addi	a5,a5,2
	.loc 5 2755 20
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 2756 30
	lw	a5,-36(s0)
	lw	a4,192(a5)
	.loc 5 2756 40
	li	a5,16384
	add	a4,a4,a5
	.loc 5 2757 27
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 5 2756 12
	sw	a5,-24(s0)
	.loc 5 2758 18
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 2758 24
	lw	a5,136(a5)
	.loc 5 2758 15
	lw	a3,-24(s0)
	lw	a2,-40(s0)
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	jalr	a5
.LVL10:
	sw	a0,-28(s0)
	.loc 5 2760 8
	lw	a4,-28(s0)
	li	a5,-24576
	addi	a5,a5,-1280
	beq	a4,a5,.L451
	.loc 5 2761 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 2761 43
	sb	zero,9(a5)
	.loc 5 2762 9
	li	a1,0
	lw	a0,-36(s0)
	call	mbedtls_ssl_set_async_operation_data
.L451:
	.loc 5 2764 5
	lw	a5,-28(s0)
	lui	a4,%hi(.LC129)
	addi	a4,a4,%lo(.LC129)
	li	a3,4096
	addi	a3,a3,-1332
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 2765 12
	lw	a5,-28(s0)
	.loc 5 2766 1
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
.LFE195:
	.size	ssl_resume_server_key_exchange, .-ssl_resume_server_key_exchange
	.section	.rodata
	.align	2
.LC130:
	.string	"no matching curve for ECDHE"
	.align	2
.LC131:
	.string	"ECDHE curve: %s"
	.align	2
.LC132:
	.string	"mbedtls_ecp_group_load"
	.align	2
.LC133:
	.string	"mbedtls_ecdh_make_params"
	.align	2
.LC134:
	.string	"pick hash algorithm %u for signing"
	.align	2
.LC135:
	.string	"parameters hash"
	.align	2
.LC136:
	.string	"f_async_sign_start"
	.align	2
.LC137:
	.string	"got no private key"
	.align	2
.LC138:
	.string	"mbedtls_pk_sign"
	.section	.text.ssl_prepare_server_key_exchange,"ax",@progbits
	.align	1
	.type	ssl_prepare_server_key_exchange, @function
ssl_prepare_server_key_exchange:
.LFB196:
	.loc 5 2776 1
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	ra,156(sp)
	sw	s0,152(sp)
	sw	s1,148(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sw	a0,-132(s0)
	sw	a1,-136(s0)
	.loc 5 2778 12
	lw	a5,-132(s0)
	lw	a5,64(a5)
	.loc 5 2777 38
	lw	a5,24(a5)
	sw	a5,-32(s0)
	.loc 5 2782 20
	sw	zero,-20(s0)
	.loc 5 2793 29
	lw	a5,-132(s0)
	lw	a5,232(a5)
	.loc 5 2793 58
	lw	a4,-132(s0)
	lw	a3,216(a4)
	.loc 5 2793 73
	lw	a4,-132(s0)
	lw	a4,192(a4)
	.loc 5 2793 68
	sub	a4,a3,a4
	.loc 5 2793 12
	sub	a5,a5,a4
	sw	a5,-36(s0)
	.loc 5 2799 21
	lw	a5,-132(s0)
	li	a4,4
	sw	a4,224(a5)
	.loc 5 2875 25
	lw	a5,-32(s0)
	lbu	a4,10(a5)
	.loc 5 2875 8
	li	a5,6
	beq	a4,a5,.L454
	.loc 5 2876 25
	lw	a5,-32(s0)
	lbu	a4,10(a5)
	.loc 5 2875 72 discriminator 1
	li	a5,8
	bne	a4,a5,.L455
.L454:
	.loc 5 2877 12
	lw	a5,-132(s0)
	lw	a4,216(a5)
	.loc 5 2877 25
	lw	a5,-132(s0)
	lw	a5,224(a5)
	.loc 5 2877 37
	addi	a2,a5,1
	lw	a3,-132(s0)
	sw	a2,224(a3)
	.loc 5 2877 21
	add	a5,a4,a5
	.loc 5 2877 41
	sb	zero,0(a5)
	.loc 5 2878 12
	lw	a5,-132(s0)
	lw	a4,216(a5)
	.loc 5 2878 25
	lw	a5,-132(s0)
	lw	a5,224(a5)
	.loc 5 2878 37
	addi	a2,a5,1
	lw	a3,-132(s0)
	sw	a2,224(a3)
	.loc 5 2878 21
	add	a5,a4,a5
	.loc 5 2878 41
	sb	zero,0(a5)
.L455:
	.loc 5 2938 9
	lw	a0,-32(s0)
	call	mbedtls_ssl_ciphersuite_uses_ecdhe
	mv	a5,a0
	.loc 5 2938 8 discriminator 1
	beq	a5,zero,.L456
.LBB149:
	.loc 5 2947 36
	lw	a5,-132(s0)
	lw	a5,64(a5)
	.loc 5 2947 19
	lw	a5,404(a5)
	sw	a5,-24(s0)
	.loc 5 2948 38
	lw	a0,-132(s0)
	call	mbedtls_ssl_get_groups
	sw	a0,-28(s0)
	.loc 5 2949 13
	li	a5,-110
	sw	a5,-40(s0)
	.loc 5 2950 16
	sw	zero,-60(s0)
	.loc 5 2953 12
	lw	a5,-28(s0)
	beq	a5,zero,.L457
	.loc 5 2953 33 discriminator 1
	lw	a5,-24(s0)
	bne	a5,zero,.L460
.L457:
	.loc 5 2954 20
	li	a5,-24576
	addi	a5,a5,384
	j	.L469
.L465:
	.loc 5 2957 35
	lw	a5,-132(s0)
	lw	a5,64(a5)
	.loc 5 2957 30
	lw	a5,404(a5)
	sw	a5,-24(s0)
	.loc 5 2957 13
	j	.L461
.L464:
	.loc 5 2959 21
	lw	a5,-24(s0)
	lhu	a4,0(a5)
	.loc 5 2959 34
	lw	a5,-28(s0)
	lhu	a5,0(a5)
	.loc 5 2959 20
	beq	a4,a5,.L484
	.loc 5 2958 48
	lw	a5,-24(s0)
	addi	a5,a5,2
	sw	a5,-24(s0)
.L461:
	.loc 5 2958 18 discriminator 1
	lw	a5,-24(s0)
	lhu	a5,0(a5)
	.loc 5 2958 31 discriminator 1
	bne	a5,zero,.L464
	.loc 5 2956 44
	lw	a5,-28(s0)
	addi	a5,a5,2
	sw	a5,-28(s0)
.L460:
	.loc 5 2956 16 discriminator 1
	lw	a5,-28(s0)
	lhu	a5,0(a5)
	.loc 5 2956 28 discriminator 1
	bne	a5,zero,.L465
	.loc 5 2965 1
	j	.L463
.L484:
	.loc 5 2960 21
	nop
.L463:
	.loc 5 2966 13
	lw	a5,-24(s0)
	lhu	a5,0(a5)
	.loc 5 2966 12
	bne	a5,zero,.L466
	.loc 5 2967 13
	lui	a5,%hi(.LC130)
	addi	a4,a5,%lo(.LC130)
	li	a5,4096
	addi	a3,a5,-1129
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-132(s0)
	call	mbedtls_debug_print_msg
	.loc 5 2968 20
	li	a5,-28672
	addi	a5,a5,512
	j	.L469
.L466:
	.loc 5 2971 9
	lw	a5,-24(s0)
	lhu	a5,0(a5)
	mv	a0,a5
	call	mbedtls_ssl_get_curve_name_from_tls_id
	mv	a5,a0
	.loc 5 2971 9 is_stmt 0 discriminator 1
	lui	a4,%hi(.LC131)
	addi	a4,a4,%lo(.LC131)
	li	a3,4096
	addi	a3,a3,-1125
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,2
	lw	a0,-132(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3058 13 is_stmt 1
	lw	a5,-24(s0)
	lhu	a5,0(a5)
	mv	a0,a5
	call	mbedtls_ssl_get_ecp_group_id_from_tls_id
	mv	a5,a0
	sb	a5,-41(s0)
	.loc 5 3060 43
	lw	a5,-132(s0)
	lw	a5,64(a5)
	.loc 5 3060 20
	addi	a5,a5,164
	lbu	a4,-41(s0)
	mv	a1,a4
	mv	a0,a5
	call	mbedtls_ecdh_setup
	sw	a0,-40(s0)
	.loc 5 3060 12 discriminator 1
	lw	a5,-40(s0)
	beq	a5,zero,.L467
	.loc 5 3062 13
	lw	a5,-40(s0)
	lui	a4,%hi(.LC132)
	addi	a4,a4,%lo(.LC132)
	li	a3,4096
	addi	a3,a3,-1034
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-132(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3063 20
	lw	a5,-40(s0)
	j	.L469
.L467:
	.loc 5 3067 22
	lw	a5,-132(s0)
	lw	a5,64(a5)
	.loc 5 3066 20
	addi	a0,a5,164
	.loc 5 3068 21
	lw	a5,-132(s0)
	lw	a4,216(a5)
	.loc 5 3068 36
	lw	a5,-132(s0)
	lw	a5,224(a5)
	.loc 5 3066 20
	add	a2,a4,a5
	.loc 5 3069 29
	lw	a5,-132(s0)
	lw	a5,224(a5)
	.loc 5 3066 20
	li	a4,16384
	sub	a3,a4,a5
	.loc 5 3070 21
	lw	a5,-132(s0)
	lw	a5,0(a5)
	.loc 5 3070 27
	lw	a4,32(a5)
	.loc 5 3070 39
	lw	a5,-132(s0)
	lw	a5,0(a5)
	.loc 5 3070 45
	lw	a5,36(a5)
	.loc 5 3066 20
	addi	a1,s0,-60
	call	mbedtls_ecdh_make_params
	sw	a0,-40(s0)
	.loc 5 3066 12 discriminator 1
	lw	a5,-40(s0)
	beq	a5,zero,.L468
	.loc 5 3071 13
	lw	a5,-40(s0)
	lui	a4,%hi(.LC133)
	addi	a4,a4,%lo(.LC133)
	li	a3,4096
	addi	a3,a3,-1025
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-132(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3072 20
	lw	a5,-40(s0)
	j	.L469
.L468:
	.loc 5 3075 148
	lw	a5,-132(s0)
	lw	a5,64(a5)
	.loc 5 3075 144
	addi	a4,a5,164
	.loc 5 3075 9
	li	a5,0
	li	a3,4096
	addi	a3,a3,-1021
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-132(s0)
	call	mbedtls_debug_printf_ecdh
	.loc 5 3080 25
	lw	a5,-132(s0)
	lw	a4,216(a5)
	.loc 5 3080 40
	lw	a5,-132(s0)
	lw	a5,224(a5)
	.loc 5 3080 20
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 5 3083 12
	lw	a5,-132(s0)
	lw	a4,224(a5)
	.loc 5 3083 25
	lw	a5,-60(s0)
	add	a4,a4,a5
	lw	a5,-132(s0)
	sw	a4,224(a5)
.L456:
.LBE149:
	.loc 5 3094 9
	lw	a0,-32(s0)
	call	mbedtls_ssl_ciphersuite_uses_server_signature
	mv	a5,a0
	.loc 5 3094 8 discriminator 1
	beq	a5,zero,.L470
.LBB150:
	.loc 5 3095 12
	lw	a5,-20(s0)
	bne	a5,zero,.L471
	.loc 5 3096 13
	lui	a5,%hi(.LC31)
	addi	a4,a5,%lo(.LC31)
	li	a5,4096
	addi	a3,a5,-1000
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-132(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3097 20
	li	a5,-28672
	addi	a5,a5,1024
	j	.L469
.L471:
	.loc 5 3100 46
	lw	a5,-132(s0)
	lw	a4,216(a5)
	.loc 5 3100 61
	lw	a5,-132(s0)
	lw	a5,224(a5)
	.loc 5 3100 56
	add	a4,a4,a5
	.loc 5 3100 74
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 5 3100 16
	sw	a5,-48(s0)
	.loc 5 3101 16
	sw	zero,-64(s0)
	.loc 5 3104 13
	li	a5,-110
	sw	a5,-52(s0)
	.loc 5 3113 13
	lw	a0,-32(s0)
	call	mbedtls_ssl_get_ciphersuite_sig_pk_alg
	mv	a5,a0
	sb	a5,-53(s0)
	.loc 5 3117 22
	lbu	a5,-53(s0)
	mv	a0,a5
	call	mbedtls_ssl_sig_from_pk_alg
	mv	a5,a0
	.loc 5 3116 29
	mv	a1,a5
	lw	a0,-132(s0)
	call	mbedtls_ssl_tls12_get_preferred_hash_for_sig_alg
	mv	a5,a0
	.loc 5 3115 23
	sb	a5,-54(s0)
	.loc 5 3119 36
	lbu	a5,-54(s0)
	mv	a0,a5
	call	mbedtls_ssl_md_alg_from_hash
	mv	a5,a0
	sb	a5,-55(s0)
	.loc 5 3123 12
	lbu	a5,-53(s0)
	beq	a5,zero,.L473
	.loc 5 3123 40 discriminator 1
	lbu	a5,-55(s0)
	bne	a5,zero,.L474
.L473:
	.loc 5 3124 13
	lui	a5,%hi(.LC31)
	addi	a4,a5,%lo(.LC31)
	li	a5,4096
	addi	a3,a5,-972
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-132(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3127 20
	li	a5,-28672
	addi	a5,a5,1024
	j	.L469
.L474:
	.loc 5 3130 9
	lbu	a5,-55(s0)
	lui	a4,%hi(.LC134)
	addi	a4,a4,%lo(.LC134)
	li	a3,4096
	addi	a3,a3,-966
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-132(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3135 12
	lbu	a5,-55(s0)
	beq	a5,zero,.L475
	.loc 5 3136 19
	lbu	a5,-55(s0)
	addi	a2,s0,-64
	addi	a1,s0,-128
	lw	a4,-48(s0)
	lw	a3,-20(s0)
	lw	a0,-132(s0)
	call	mbedtls_ssl_get_key_exchange_md_tls1_2
	sw	a0,-52(s0)
	.loc 5 3140 16
	lw	a5,-52(s0)
	beq	a5,zero,.L476
	.loc 5 3141 24
	lw	a5,-52(s0)
	j	.L469
.L475:
	.loc 5 3144 13
	lui	a5,%hi(.LC31)
	addi	a4,a5,%lo(.LC31)
	li	a5,4096
	addi	a3,a5,-952
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-132(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3145 20
	li	a5,-28672
	addi	a5,a5,1024
	j	.L469
.L476:
	.loc 5 3148 9
	lw	a4,-64(s0)
	addi	a5,s0,-128
	mv	a6,a4
	lui	a4,%hi(.LC135)
	addi	a4,a4,%lo(.LC135)
	li	a3,4096
	addi	a3,a3,-948
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-132(s0)
	call	mbedtls_debug_print_buf
	.loc 5 3169 43
	lbu	a1,-55(s0)
	.loc 5 3169 12
	lw	a5,-132(s0)
	lw	a4,216(a5)
	.loc 5 3169 25
	lw	a5,-132(s0)
	lw	a5,224(a5)
	.loc 5 3169 37
	addi	a2,a5,1
	lw	a3,-132(s0)
	sw	a2,224(a3)
	.loc 5 3169 21
	add	s1,a4,a5
	.loc 5 3169 43
	mv	a0,a1
	call	mbedtls_ssl_hash_from_md_alg
	mv	a5,a0
	.loc 5 3169 41 discriminator 1
	sb	a5,0(s1)
	.loc 5 3170 12
	lw	a5,-132(s0)
	lw	a4,216(a5)
	.loc 5 3170 25
	lw	a5,-132(s0)
	lw	a5,224(a5)
	.loc 5 3170 37
	addi	a2,a5,1
	lw	a3,-132(s0)
	sw	a2,224(a3)
	.loc 5 3170 21
	add	s1,a4,a5
	.loc 5 3170 43
	lbu	a5,-53(s0)
	mv	a0,a5
	call	mbedtls_ssl_sig_from_pk_alg
	mv	a5,a0
	.loc 5 3170 41 discriminator 1
	sb	a5,0(s1)
	.loc 5 3173 16
	lw	a5,-132(s0)
	lw	a5,0(a5)
	.loc 5 3173 22
	lw	a5,128(a5)
	.loc 5 3173 12
	beq	a5,zero,.L477
	.loc 5 3174 22
	lw	a5,-132(s0)
	lw	a5,0(a5)
	.loc 5 3174 28
	lw	s1,128(a5)
	.loc 5 3174 19
	lw	a0,-132(s0)
	call	mbedtls_ssl_own_cert
	mv	a1,a0
	.loc 5 3174 19 is_stmt 0 discriminator 1
	lw	a4,-64(s0)
	addi	a3,s0,-128
	lbu	a5,-55(s0)
	mv	a2,a5
	lw	a0,-132(s0)
	jalr	s1
.LVL11:
	sw	a0,-52(s0)
	.loc 5 3177 13 is_stmt 1
	lw	a5,-52(s0)
	beq	a5,zero,.L478
	lw	a5,-52(s0)
	bgt	a5,zero,.L479
	lw	a4,-52(s0)
	li	a5,-28672
	addi	a5,a5,128
	beq	a4,a5,.L485
	lw	a4,-52(s0)
	li	a5,-24576
	addi	a5,a5,-1280
	beq	a4,a5,.L481
	j	.L479
.L478:
	.loc 5 3182 24
	lw	a5,-132(s0)
	lw	a5,64(a5)
	.loc 5 3182 55
	li	a4,1
	sb	a4,9(a5)
	.loc 5 3183 28
	lw	a1,-136(s0)
	lw	a0,-132(s0)
	call	ssl_resume_server_key_exchange
	mv	a5,a0
	j	.L469
.L481:
	.loc 5 3185 24
	lw	a5,-132(s0)
	lw	a5,64(a5)
	.loc 5 3185 55
	li	a4,1
	sb	a4,9(a5)
	.loc 5 3186 28
	li	a5,-24576
	addi	a5,a5,-1280
	j	.L469
.L479:
	.loc 5 3188 21
	lw	a5,-52(s0)
	lui	a4,%hi(.LC136)
	addi	a4,a4,%lo(.LC136)
	li	a3,4096
	addi	a3,a3,-908
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-132(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3189 28
	lw	a5,-52(s0)
	j	.L469
.L485:
	.loc 5 3180 21
	nop
.L477:
	.loc 5 3194 13
	lw	a0,-132(s0)
	call	mbedtls_ssl_own_key
	mv	a5,a0
	.loc 5 3194 12 discriminator 1
	bne	a5,zero,.L482
	.loc 5 3195 13
	lui	a5,%hi(.LC137)
	addi	a4,a5,%lo(.LC137)
	li	a5,4096
	addi	a3,a5,-901
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-132(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3196 20
	li	a5,-28672
	addi	a5,a5,-1536
	j	.L469
.L482:
	.loc 5 3204 20
	lw	a0,-132(s0)
	call	mbedtls_ssl_own_key
	mv	t1,a0
	.loc 5 3204 20 is_stmt 0 discriminator 1
	lw	a3,-64(s0)
	.loc 5 3206 39 is_stmt 1
	lw	a5,-132(s0)
	lw	a4,216(a5)
	.loc 5 3206 54
	lw	a5,-132(s0)
	lw	a5,224(a5)
	.loc 5 3206 67
	addi	a5,a5,2
	.loc 5 3204 20
	add	a0,a4,a5
	.loc 5 3207 53
	lw	a5,-132(s0)
	lw	a5,224(a5)
	.loc 5 3207 48
	lw	a4,-36(s0)
	sub	a5,a4,a5
	.loc 5 3204 20
	addi	a4,a5,-2
	.loc 5 3209 39
	lw	a5,-132(s0)
	lw	a5,0(a5)
	.loc 5 3209 45
	lw	a6,32(a5)
	.loc 5 3210 39
	lw	a5,-132(s0)
	lw	a5,0(a5)
	.loc 5 3210 45
	lw	a5,36(a5)
	.loc 5 3204 20
	addi	a2,s0,-128
	lbu	a1,-55(s0)
	sw	a5,0(sp)
	mv	a7,a6
	lw	a6,-136(s0)
	mv	a5,a4
	mv	a4,a0
	mv	a0,t1
	call	mbedtls_pk_sign
	sw	a0,-52(s0)
	.loc 5 3204 12 discriminator 2
	lw	a5,-52(s0)
	beq	a5,zero,.L470
	.loc 5 3211 13
	lw	a5,-52(s0)
	lui	a4,%hi(.LC138)
	addi	a4,a4,%lo(.LC138)
	li	a3,4096
	addi	a3,a3,-885
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-132(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3212 20
	lw	a5,-52(s0)
	j	.L469
.L470:
.LBE150:
	.loc 5 3217 12
	li	a5,0
.L469:
	.loc 5 3218 1
	mv	a0,a5
	lw	ra,156(sp)
	.cfi_restore 1
	lw	s0,152(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	lw	s1,148(sp)
	.cfi_restore 9
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE196:
	.size	ssl_prepare_server_key_exchange, .-ssl_prepare_server_key_exchange
	.section	.rodata
	.align	2
.LC139:
	.string	"=> write server key exchange"
	.align	2
.LC140:
	.string	"ssl_get_ecdh_params_from_cert"
	.align	2
.LC141:
	.string	"<= skip write server key exchange"
	.align	2
.LC142:
	.string	"resuming signature operation"
	.align	2
.LC143:
	.string	"<= write server key exchange (pending)"
	.align	2
.LC144:
	.string	"my signature"
	.align	2
.LC145:
	.string	"<= write server key exchange"
	.section	.text.ssl_write_server_key_exchange,"ax",@progbits
	.align	1
	.type	ssl_write_server_key_exchange, @function
ssl_write_server_key_exchange:
.LFB197:
	.loc 5 3226 1
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
	.loc 5 3227 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 3228 12
	sw	zero,-28(s0)
	.loc 5 3231 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 3230 38
	lw	a5,24(a5)
	sw	a5,-24(s0)
	.loc 5 3234 5
	lui	a5,%hi(.LC139)
	addi	a4,a5,%lo(.LC139)
	li	a5,4096
	addi	a3,a5,-862
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3239 9
	lw	a0,-24(s0)
	call	mbedtls_ssl_ciphersuite_no_pfs
	mv	a5,a0
	.loc 5 3239 8 discriminator 1
	beq	a5,zero,.L487
	.loc 5 3243 13
	lw	a0,-24(s0)
	call	mbedtls_ssl_ciphersuite_uses_ecdh
	mv	a5,a0
	.loc 5 3243 12 discriminator 1
	beq	a5,zero,.L488
	.loc 5 3244 19
	lw	a0,-36(s0)
	call	ssl_get_ecdh_params_from_cert
	sw	a0,-20(s0)
	.loc 5 3245 16
	lw	a5,-20(s0)
	beq	a5,zero,.L488
	.loc 5 3246 17
	lw	a5,-20(s0)
	lui	a4,%hi(.LC140)
	addi	a4,a4,%lo(.LC140)
	li	a3,4096
	addi	a3,a3,-850
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3247 24
	lw	a5,-20(s0)
	j	.L497
.L488:
	.loc 5 3254 9
	lui	a5,%hi(.LC141)
	addi	a4,a5,%lo(.LC141)
	li	a5,4096
	addi	a3,a5,-842
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3255 9
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 5 3256 16
	li	a5,0
	j	.L497
.L487:
	.loc 5 3264 12
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 3264 23
	lbu	a5,9(a5)
	.loc 5 3264 8
	beq	a5,zero,.L490
	.loc 5 3265 9
	lui	a5,%hi(.LC142)
	addi	a4,a5,%lo(.LC142)
	li	a5,4096
	addi	a3,a5,-831
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3266 15
	addi	a5,s0,-28
	mv	a1,a5
	lw	a0,-36(s0)
	call	ssl_resume_server_key_exchange
	sw	a0,-20(s0)
	j	.L491
.L490:
	.loc 5 3272 15
	addi	a5,s0,-28
	mv	a1,a5
	lw	a0,-36(s0)
	call	ssl_prepare_server_key_exchange
	sw	a0,-20(s0)
.L491:
	.loc 5 3275 8
	lw	a5,-20(s0)
	beq	a5,zero,.L492
	.loc 5 3280 12
	lw	a4,-20(s0)
	li	a5,-24576
	addi	a5,a5,-1280
	bne	a4,a5,.L493
	.loc 5 3281 13
	lui	a5,%hi(.LC143)
	addi	a4,a5,%lo(.LC143)
	li	a5,4096
	addi	a3,a5,-815
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	j	.L494
.L493:
	.loc 5 3283 29
	lw	a5,-36(s0)
	sw	zero,224(a5)
.L494:
	.loc 5 3285 16
	lw	a5,-20(s0)
	j	.L497
.L492:
	.loc 5 3292 23
	lw	a5,-28(s0)
	.loc 5 3292 8
	beq	a5,zero,.L495
	.loc 5 3293 72
	lw	a5,-28(s0)
	srli	a1,a5,8
	.loc 5 3293 12
	lw	a5,-36(s0)
	lw	a4,216(a5)
	.loc 5 3293 25
	lw	a5,-36(s0)
	lw	a5,224(a5)
	.loc 5 3293 37
	addi	a2,a5,1
	lw	a3,-36(s0)
	sw	a2,224(a3)
	.loc 5 3293 21
	add	a5,a4,a5
	.loc 5 3293 44
	andi	a4,a1,0xff
	.loc 5 3293 41
	sb	a4,0(a5)
	.loc 5 3294 44
	lw	a1,-28(s0)
	.loc 5 3294 12
	lw	a5,-36(s0)
	lw	a4,216(a5)
	.loc 5 3294 25
	lw	a5,-36(s0)
	lw	a5,224(a5)
	.loc 5 3294 37
	addi	a2,a5,1
	lw	a3,-36(s0)
	sw	a2,224(a3)
	.loc 5 3294 21
	add	a5,a4,a5
	.loc 5 3294 44
	andi	a4,a1,0xff
	.loc 5 3294 41
	sb	a4,0(a5)
	.loc 5 3296 161
	lw	a5,-36(s0)
	lw	a4,216(a5)
	.loc 5 3296 176
	lw	a5,-36(s0)
	lw	a5,224(a5)
	.loc 5 3296 171
	add	a5,a4,a5
	.loc 5 3296 9
	lw	a4,-28(s0)
	mv	a6,a4
	lui	a4,%hi(.LC144)
	addi	a4,a4,%lo(.LC144)
	li	a3,4096
	addi	a3,a3,-800
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_print_buf
	.loc 5 3301 12
	lw	a5,-36(s0)
	lw	a4,224(a5)
	.loc 5 3301 25
	lw	a5,-28(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,224(a5)
.L495:
	.loc 5 3306 22
	lw	a5,-36(s0)
	li	a4,22
	sw	a4,220(a5)
	.loc 5 3307 8
	lw	a5,-36(s0)
	lw	a5,216(a5)
	.loc 5 3307 21
	li	a4,12
	sb	a4,0(a5)
	.loc 5 3309 5
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 5 3311 16
	lw	a0,-36(s0)
	call	mbedtls_ssl_write_handshake_msg
	sw	a0,-20(s0)
	.loc 5 3311 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L496
	.loc 5 3312 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC103)
	addi	a4,a4,%lo(.LC103)
	li	a3,4096
	addi	a3,a3,-784
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3313 16
	lw	a5,-20(s0)
	j	.L497
.L496:
	.loc 5 3316 5
	lui	a5,%hi(.LC145)
	addi	a4,a5,%lo(.LC145)
	li	a5,4096
	addi	a3,a5,-780
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3317 12
	li	a5,0
.L497:
	.loc 5 3318 1
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
.LFE197:
	.size	ssl_write_server_key_exchange, .-ssl_write_server_key_exchange
	.section	.rodata
	.align	2
.LC146:
	.string	"=> write server hello done"
	.align	2
.LC147:
	.string	"<= write server hello done"
	.section	.text.ssl_write_server_hello_done,"ax",@progbits
	.align	1
	.type	ssl_write_server_hello_done, @function
ssl_write_server_hello_done:
.LFB198:
	.loc 5 3322 1
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
	.loc 5 3323 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 3325 5
	lui	a5,%hi(.LC146)
	addi	a4,a5,%lo(.LC146)
	li	a5,4096
	addi	a3,a5,-771
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3327 21
	lw	a5,-36(s0)
	li	a4,4
	sw	a4,224(a5)
	.loc 5 3328 22
	lw	a5,-36(s0)
	li	a4,22
	sw	a4,220(a5)
	.loc 5 3329 8
	lw	a5,-36(s0)
	lw	a5,216(a5)
	.loc 5 3329 21
	li	a4,14
	sb	a4,0(a5)
	.loc 5 3331 5
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 5 3334 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 3334 18
	lbu	a4,5(a5)
	.loc 5 3334 8
	li	a5,1
	bne	a4,a5,.L499
	.loc 5 3335 9
	lw	a0,-36(s0)
	call	mbedtls_ssl_send_flight_completed
.L499:
	.loc 5 3339 16
	lw	a0,-36(s0)
	call	mbedtls_ssl_write_handshake_msg
	sw	a0,-20(s0)
	.loc 5 3339 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L500
	.loc 5 3340 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC103)
	addi	a4,a4,%lo(.LC103)
	li	a3,4096
	addi	a3,a3,-756
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3341 16
	lw	a5,-20(s0)
	j	.L501
.L500:
	.loc 5 3345 12
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 3345 18
	lbu	a4,5(a5)
	.loc 5 3345 8
	li	a5,1
	bne	a4,a5,.L502
	.loc 5 3346 16
	lw	a0,-36(s0)
	call	mbedtls_ssl_flight_transmit
	sw	a0,-20(s0)
	.loc 5 3345 35 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L502
	.loc 5 3347 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC104)
	addi	a4,a4,%lo(.LC104)
	li	a3,4096
	addi	a3,a3,-749
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3348 16
	lw	a5,-20(s0)
	j	.L501
.L502:
	.loc 5 3352 5
	lui	a5,%hi(.LC147)
	addi	a4,a5,%lo(.LC147)
	li	a5,4096
	addi	a3,a5,-744
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3354 12
	li	a5,0
.L501:
	.loc 5 3355 1
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
.LFE198:
	.size	ssl_write_server_hello_done, .-ssl_write_server_hello_done
	.section	.rodata
	.align	2
.LC148:
	.string	"got no pre-shared key"
	.align	2
.LC149:
	.string	"bad client key exchange message"
	.align	2
.LC150:
	.string	"Unknown PSK identity"
	.section	.text.ssl_parse_client_psk_identity,"ax",@progbits
	.align	1
	.type	ssl_parse_client_psk_identity, @function
ssl_parse_client_psk_identity:
.LFB199:
	.loc 5 3590 1
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
	.loc 5 3591 9
	sw	zero,-20(s0)
	.loc 5 3594 9
	lw	a5,-52(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	ssl_conf_has_psk_or_cb
	mv	a5,a0
	.loc 5 3594 8 discriminator 1
	bne	a5,zero,.L504
	.loc 5 3595 9
	lui	a5,%hi(.LC148)
	addi	a4,a5,%lo(.LC148)
	li	a5,4096
	addi	a3,a5,-501
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3596 16
	li	a5,-28672
	addi	a5,a5,-1536
	j	.L505
.L504:
	.loc 5 3602 15
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 5 3602 13
	lw	a4,-60(s0)
	sub	a4,a4,a5
	.loc 5 3602 8
	li	a5,1
	bgt	a4,a5,.L506
	.loc 5 3603 9
	lui	a5,%hi(.LC149)
	addi	a4,a5,%lo(.LC149)
	li	a5,4096
	addi	a3,a5,-493
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3604 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L505
.L506:
	.loc 5 3607 77
	lw	a5,-56(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
.LBB151:
.LBB152:
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
.LBE152:
.LBE151:
	.loc 5 3607 59 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	sh	a5,-22(s0)
	.loc 5 3608 5
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 5 3608 8
	addi	a4,a5,2
	lw	a5,-56(s0)
	sw	a4,0(a5)
	.loc 5 3610 8
	lhu	a5,-22(s0)
	beq	a5,zero,.L508
	.loc 5 3610 21 discriminator 1
	lhu	a4,-22(s0)
	.loc 5 3610 29 discriminator 1
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 5 3610 27 discriminator 1
	lw	a3,-60(s0)
	sub	a5,a3,a5
	.loc 5 3610 16 discriminator 1
	ble	a4,a5,.L509
.L508:
	.loc 5 3611 9
	lui	a5,%hi(.LC149)
	addi	a4,a5,%lo(.LC149)
	li	a5,4096
	addi	a3,a5,-485
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-52(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3612 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L505
.L509:
	.loc 5 3615 12
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 5 3615 18
	lw	a5,68(a5)
	.loc 5 3615 8
	beq	a5,zero,.L510
	.loc 5 3616 16
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 5 3616 22
	lw	a5,68(a5)
	.loc 5 3616 33
	lw	a4,-52(s0)
	lw	a4,0(a4)
	.loc 5 3616 39
	lw	a0,72(a4)
	.loc 5 3616 13
	lw	a4,-56(s0)
	lw	a4,0(a4)
	lhu	a3,-22(s0)
	mv	a2,a4
	lw	a1,-52(s0)
	jalr	a5
.LVL12:
	mv	a5,a0
	.loc 5 3616 12 discriminator 1
	beq	a5,zero,.L511
	.loc 5 3617 17
	li	a5,-28672
	addi	a5,a5,896
	sw	a5,-20(s0)
	j	.L511
.L510:
	.loc 5 3622 15
	lhu	a4,-22(s0)
	.loc 5 3622 21
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 5 3622 27
	lw	a5,184(a5)
	.loc 5 3622 12
	bne	a4,a5,.L512
	.loc 5 3623 34
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 5 3623 40
	lw	a4,180(a5)
	.loc 5 3623 13
	lw	a5,-56(s0)
	lw	a5,0(a5)
	lhu	a3,-22(s0)
	mv	a2,a3
	mv	a1,a5
	mv	a0,a4
	call	mbedtls_ct_memcmp
	mv	a5,a0
	.loc 5 3622 46 discriminator 1
	beq	a5,zero,.L511
.L512:
	.loc 5 3624 17
	li	a5,-28672
	addi	a5,a5,896
	sw	a5,-20(s0)
.L511:
	.loc 5 3628 8
	lw	a4,-20(s0)
	li	a5,-28672
	addi	a5,a5,896
	bne	a4,a5,.L513
	.loc 5 3629 9
	lw	a5,-56(s0)
	lw	a5,0(a5)
	lhu	a4,-22(s0)
	mv	a6,a4
	lui	a4,%hi(.LC150)
	addi	a4,a4,%lo(.LC150)
	li	a3,4096
	addi	a3,a3,-467
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-52(s0)
	call	mbedtls_debug_print_buf
	.loc 5 3630 9
	li	a2,115
	li	a1,2
	lw	a0,-52(s0)
	call	mbedtls_ssl_send_alert_message
	.loc 5 3632 16
	li	a5,-28672
	addi	a5,a5,896
	j	.L505
.L513:
	.loc 5 3635 5
	lw	a5,-56(s0)
	lw	a4,0(a5)
	.loc 5 3635 8
	lhu	a5,-22(s0)
	add	a4,a4,a5
	lw	a5,-56(s0)
	sw	a4,0(a5)
	.loc 5 3637 12
	li	a5,0
.L505:
	.loc 5 3638 1
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
.LFE199:
	.size	ssl_parse_client_psk_identity, .-ssl_parse_client_psk_identity
	.section	.rodata
	.align	2
.LC151:
	.string	"=> parse client key exchange"
	.align	2
.LC152:
	.string	"mbedtls_ssl_read_record"
	.align	2
.LC153:
	.string	"mbedtls_ecdh_read_public"
	.align	2
.LC154:
	.string	"mbedtls_ecdh_calc_secret"
	.align	2
.LC155:
	.string	"ssl_parse_client_psk_identity"
	.align	2
.LC156:
	.string	"bad client key exchange"
	.align	2
.LC157:
	.string	"mbedtls_ssl_psk_derive_premaster"
	.align	2
.LC158:
	.string	"<= parse client key exchange"
	.section	.text.ssl_parse_client_key_exchange,"ax",@progbits
	.align	1
	.type	ssl_parse_client_key_exchange, @function
ssl_parse_client_key_exchange:
.LFB200:
	.loc 5 3643 1
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
	.loc 5 3644 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 3648 27
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 3648 22
	lw	a5,24(a5)
	sw	a5,-24(s0)
	.loc 5 3650 5
	lui	a5,%hi(.LC151)
	addi	a4,a5,%lo(.LC151)
	li	a5,4096
	addi	a3,a5,-446
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3664 16
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_ssl_read_record
	sw	a0,-20(s0)
	.loc 5 3664 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L515
	.loc 5 3665 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC152)
	addi	a4,a4,%lo(.LC152)
	li	a3,4096
	addi	a3,a3,-431
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3666 16
	lw	a5,-20(s0)
	j	.L531
.L515:
	.loc 5 3669 12
	lw	a5,-36(s0)
	lw	s1,120(a5)
	.loc 5 3669 23
	lw	a0,-36(s0)
	call	mbedtls_ssl_hs_hdr_len
	mv	a5,a0
	.loc 5 3669 21 discriminator 1
	add	a5,s1,a5
	.loc 5 3669 7 discriminator 1
	sw	a5,-32(s0)
	.loc 5 3670 14
	lw	a5,-36(s0)
	lw	a4,120(a5)
	.loc 5 3670 28
	lw	a5,-36(s0)
	lw	a5,168(a5)
	.loc 5 3670 9
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 5 3672 12
	lw	a5,-36(s0)
	lw	a4,128(a5)
	.loc 5 3672 8
	li	a5,22
	beq	a4,a5,.L517
	.loc 5 3673 9
	lui	a5,%hi(.LC149)
	addi	a4,a5,%lo(.LC149)
	li	a5,4096
	addi	a3,a5,-423
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3674 16
	li	a5,-28672
	addi	a5,a5,-1792
	j	.L531
.L517:
	.loc 5 3677 12
	lw	a5,-36(s0)
	lw	a5,120(a5)
	.loc 5 3677 20
	lbu	a4,0(a5)
	.loc 5 3677 8
	li	a5,16
	beq	a4,a5,.L518
	.loc 5 3678 9
	lui	a5,%hi(.LC149)
	addi	a4,a5,%lo(.LC149)
	li	a5,4096
	addi	a3,a5,-418
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3679 16
	li	a5,-28672
	addi	a5,a5,-1792
	j	.L531
.L518:
	.loc 5 3710 25
	lw	a5,-24(s0)
	lbu	a4,10(a5)
	.loc 5 3710 8
	li	a5,3
	beq	a4,a5,.L519
	.loc 5 3711 25
	lw	a5,-24(s0)
	lbu	a4,10(a5)
	.loc 5 3710 74 discriminator 1
	li	a5,4
	beq	a4,a5,.L519
	.loc 5 3712 25
	lw	a5,-24(s0)
	lbu	a4,10(a5)
	.loc 5 3711 76
	li	a5,9
	beq	a4,a5,.L519
	.loc 5 3713 25
	lw	a5,-24(s0)
	lbu	a4,10(a5)
	.loc 5 3712 73
	li	a5,10
	bne	a4,a5,.L520
.L519:
	.loc 5 3776 49
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 3776 20
	addi	a3,a5,164
	lw	a1,-32(s0)
	.loc 5 3777 62
	lw	a5,-32(s0)
	lw	a4,-28(s0)
	sub	a5,a4,a5
	.loc 5 3776 20
	mv	a2,a5
	mv	a0,a3
	call	mbedtls_ecdh_read_public
	sw	a0,-20(s0)
	.loc 5 3776 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L521
	.loc 5 3778 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC153)
	addi	a4,a4,%lo(.LC153)
	li	a3,4096
	addi	a3,a3,-318
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3779 20
	li	a5,-28672
	addi	a5,a5,-768
	j	.L531
.L521:
	.loc 5 3782 148
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 3782 144
	addi	a4,a5,164
	.loc 5 3782 9
	li	a5,1
	li	a3,4096
	addi	a3,a3,-314
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_printf_ecdh
	.loc 5 3785 49
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 3785 20
	addi	a0,a5,164
	.loc 5 3786 49
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 3785 20
	addi	a1,a5,976
	.loc 5 3787 48
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 3787 59
	addi	a2,a5,872
	.loc 5 3789 48
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 3789 54
	lw	a4,32(a5)
	.loc 5 3789 66
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 5 3789 72
	lw	a5,36(a5)
	.loc 5 3785 20
	li	a3,1024
	call	mbedtls_ecdh_calc_secret
	sw	a0,-20(s0)
	.loc 5 3785 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L522
	.loc 5 3790 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC154)
	addi	a4,a4,%lo(.LC154)
	li	a3,4096
	addi	a3,a3,-306
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3791 20
	li	a5,-28672
	addi	a5,a5,-768
	j	.L531
.L522:
	.loc 5 3794 148
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 3794 144
	addi	a4,a5,164
	.loc 5 3794 9
	li	a5,2
	li	a3,4096
	addi	a3,a3,-302
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_printf_ecdh
	j	.L523
.L520:
	.loc 5 3803 25
	lw	a5,-24(s0)
	lbu	a4,10(a5)
	.loc 5 3803 8
	li	a5,5
	bne	a4,a5,.L524
	.loc 5 3804 20
	addi	a5,s0,-32
	lw	a2,-28(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	ssl_parse_client_psk_identity
	sw	a0,-20(s0)
	.loc 5 3804 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L525
	.loc 5 3805 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC155)
	addi	a4,a4,%lo(.LC155)
	li	a3,4096
	addi	a3,a3,-291
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3806 20
	lw	a5,-20(s0)
	j	.L531
.L525:
	.loc 5 3809 15
	lw	a5,-32(s0)
	.loc 5 3809 12
	lw	a4,-28(s0)
	beq	a4,a5,.L526
	.loc 5 3810 13
	lui	a5,%hi(.LC156)
	addi	a4,a5,%lo(.LC156)
	li	a5,4096
	addi	a3,a5,-286
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 3811 20
	li	a5,-28672
	addi	a5,a5,-768
	j	.L531
.L526:
	.loc 5 3816 99
	lw	a5,-24(s0)
	lbu	a5,10(a5)
	.loc 5 3815 20
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_ssl_psk_derive_premaster
	sw	a0,-20(s0)
	.loc 5 3815 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L523
	.loc 5 3818 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC157)
	addi	a4,a4,%lo(.LC157)
	li	a3,4096
	addi	a3,a3,-278
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3819 20
	lw	a5,-20(s0)
	j	.L531
.L524:
	.loc 5 3900 25
	lw	a5,-24(s0)
	lbu	a4,10(a5)
	.loc 5 3900 8
	li	a5,8
	bne	a4,a5,.L527
	.loc 5 3984 20
	addi	a5,s0,-32
	lw	a2,-28(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	ssl_parse_client_psk_identity
	sw	a0,-20(s0)
	.loc 5 3984 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L528
	.loc 5 3985 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC155)
	addi	a4,a4,%lo(.LC155)
	li	a3,4096
	addi	a3,a3,-111
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3986 20
	lw	a5,-20(s0)
	j	.L531
.L528:
	.loc 5 3989 49
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 3989 20
	addi	a3,a5,164
	lw	a1,-32(s0)
	.loc 5 3990 62
	lw	a5,-32(s0)
	lw	a4,-28(s0)
	sub	a5,a4,a5
	.loc 5 3989 20
	mv	a2,a5
	mv	a0,a3
	call	mbedtls_ecdh_read_public
	sw	a0,-20(s0)
	.loc 5 3989 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L529
	.loc 5 3991 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC153)
	addi	a4,a4,%lo(.LC153)
	li	a3,4096
	addi	a3,a3,-105
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 3992 20
	li	a5,-28672
	addi	a5,a5,-768
	j	.L531
.L529:
	.loc 5 3995 148
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 3995 144
	addi	a4,a5,164
	.loc 5 3995 9
	li	a5,1
	li	a3,4096
	addi	a3,a3,-101
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,3
	lw	a0,-36(s0)
	call	mbedtls_debug_printf_ecdh
	.loc 5 3999 99
	lw	a5,-24(s0)
	lbu	a5,10(a5)
	.loc 5 3998 20
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_ssl_psk_derive_premaster
	sw	a0,-20(s0)
	.loc 5 3998 12 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L523
	.loc 5 4001 13
	lw	a5,-20(s0)
	lui	a4,%hi(.LC157)
	addi	a4,a4,%lo(.LC157)
	li	a3,4096
	addi	a3,a3,-95
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 4002 20
	lw	a5,-20(s0)
	j	.L531
.L527:
	.loc 5 4046 9
	lui	a5,%hi(.LC31)
	addi	a4,a5,%lo(.LC31)
	li	a5,4096
	addi	a3,a5,-50
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4047 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L531
.L523:
	.loc 5 4050 16
	lw	a0,-36(s0)
	call	mbedtls_ssl_derive_keys
	sw	a0,-20(s0)
	.loc 5 4050 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L530
	.loc 5 4051 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC112)
	addi	a4,a4,%lo(.LC112)
	li	a3,4096
	addi	a3,a3,-45
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_ret
	.loc 5 4052 16
	lw	a5,-20(s0)
	j	.L531
.L530:
	.loc 5 4055 5
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 5 4057 5
	lui	a5,%hi(.LC158)
	addi	a4,a5,%lo(.LC158)
	li	a5,4096
	addi	a3,a5,-39
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4059 12
	li	a5,0
.L531:
	.loc 5 4060 1
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
.LFE200:
	.size	ssl_parse_client_key_exchange, .-ssl_parse_client_key_exchange
	.section	.rodata
	.align	2
.LC159:
	.string	"=> parse certificate verify"
	.align	2
.LC160:
	.string	"<= skip parse certificate verify"
	.align	2
.LC161:
	.string	"bad certificate verify message"
	.align	2
.LC162:
	.string	"peer not adhering to requested sig_alg for verify message"
	.align	2
.LC163:
	.string	"sig_alg doesn't match cert key"
	.align	2
.LC164:
	.string	"calc_verify"
	.align	2
.LC165:
	.string	"mbedtls_pk_verify"
	.align	2
.LC166:
	.string	"mbedtls_ssl_update_handshake_status"
	.align	2
.LC167:
	.string	"<= parse certificate verify"
	.section	.text.ssl_parse_certificate_verify,"ax",@progbits
	.align	1
	.type	ssl_parse_certificate_verify, @function
ssl_parse_certificate_verify:
.LFB201:
	.loc 5 4083 1
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	ra,140(sp)
	sw	s0,136(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	sw	a0,-132(s0)
	.loc 5 4084 9
	li	a5,-28672
	addi	a5,a5,-128
	sw	a5,-24(s0)
	.loc 5 4087 20
	addi	a5,s0,-112
	sw	a5,-20(s0)
	.loc 5 4092 12
	lw	a5,-132(s0)
	lw	a5,64(a5)
	.loc 5 4091 38
	lw	a5,24(a5)
	sw	a5,-28(s0)
	.loc 5 4095 5
	lui	a5,%hi(.LC159)
	addi	a4,a5,%lo(.LC159)
	li	a5,4096
	addi	a3,a5,-1
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-132(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4097 10
	lw	a0,-28(s0)
	call	mbedtls_ssl_ciphersuite_cert_req_allowed
	mv	a5,a0
	.loc 5 4097 8 discriminator 1
	bne	a5,zero,.L533
	.loc 5 4098 9
	lui	a5,%hi(.LC160)
	addi	a4,a5,%lo(.LC160)
	li	a5,4096
	addi	a3,a5,2
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-132(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4099 9
	lw	a0,-132(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 5 4100 16
	li	a5,0
	j	.L552
.L533:
	.loc 5 4104 12
	lw	a5,-132(s0)
	lw	a5,60(a5)
	.loc 5 4104 31
	lw	a5,96(a5)
	.loc 5 4104 8
	bne	a5,zero,.L535
	.loc 5 4105 9
	lui	a5,%hi(.LC160)
	addi	a4,a5,%lo(.LC160)
	li	a5,4096
	addi	a3,a5,9
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-132(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4106 9
	lw	a0,-132(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 5 4107 16
	li	a5,0
	j	.L552
.L535:
	.loc 5 4118 11
	li	a1,0
	lw	a0,-132(s0)
	call	mbedtls_ssl_read_record
	sw	a0,-24(s0)
	.loc 5 4119 8
	lw	a5,-24(s0)
	beq	a5,zero,.L536
	.loc 5 4120 9
	lw	a5,-24(s0)
	lui	a4,%hi(.LC152)
	addi	a4,a4,%lo(.LC152)
	li	a3,4096
	addi	a3,a3,24
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-132(s0)
	call	mbedtls_debug_print_ret
	.loc 5 4121 16
	lw	a5,-24(s0)
	j	.L552
.L536:
	.loc 5 4124 5
	lw	a0,-132(s0)
	call	mbedtls_ssl_handshake_increment_state
	.loc 5 4127 12
	lw	a5,-132(s0)
	lw	a4,128(a5)
	.loc 5 4127 8
	li	a5,22
	bne	a4,a5,.L537
	.loc 5 4128 12
	lw	a5,-132(s0)
	lw	a5,120(a5)
	.loc 5 4128 20
	lbu	a4,0(a5)
	.loc 5 4127 31 discriminator 1
	li	a5,15
	beq	a4,a5,.L538
.L537:
	.loc 5 4129 9
	lui	a5,%hi(.LC161)
	addi	a4,a5,%lo(.LC161)
	li	a5,4096
	addi	a3,a5,33
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-132(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4130 16
	li	a5,-28672
	addi	a5,a5,-1792
	j	.L552
.L538:
	.loc 5 4133 9
	lw	a0,-132(s0)
	call	mbedtls_ssl_hs_hdr_len
	sw	a0,-32(s0)
	.loc 5 4138 12
	lw	a5,-132(s0)
	lw	a5,60(a5)
	.loc 5 4138 31
	lw	a5,96(a5)
	.loc 5 4138 8
	bne	a5,zero,.L539
	.loc 5 4140 16
	li	a5,-28672
	addi	a5,a5,1024
	j	.L552
.L539:
	.loc 5 4142 19
	lw	a5,-132(s0)
	lw	a5,60(a5)
	.loc 5 4142 38
	lw	a5,96(a5)
	.loc 5 4142 13
	addi	a5,a5,204
	sw	a5,-36(s0)
	.loc 5 4151 11
	lw	a5,-32(s0)
	addi	a4,a5,2
	.loc 5 4151 20
	lw	a5,-132(s0)
	lw	a5,168(a5)
	.loc 5 4151 8
	bleu	a4,a5,.L540
	.loc 5 4152 9
	lui	a5,%hi(.LC161)
	addi	a4,a5,%lo(.LC161)
	li	a5,4096
	addi	a3,a5,56
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-132(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4153 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L552
.L540:
	.loc 5 4159 46
	lw	a5,-132(s0)
	lw	a4,120(a5)
	.loc 5 4159 54
	lw	a5,-32(s0)
	add	a5,a4,a5
	.loc 5 4159 14
	lbu	a5,0(a5)
	mv	a0,a5
	call	mbedtls_ssl_md_alg_from_hash
	mv	a5,a0
	sb	a5,-37(s0)
	.loc 5 4161 8
	lbu	a5,-37(s0)
	beq	a5,zero,.L541
	.loc 5 4161 77 discriminator 1
	lw	a5,-132(s0)
	lw	a4,120(a5)
	.loc 5 4161 85 discriminator 1
	lw	a5,-32(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 5 4161 38 discriminator 1
	mv	a1,a5
	lw	a0,-132(s0)
	call	mbedtls_ssl_set_calc_verify_md
	mv	a5,a0
	.loc 5 4161 35 discriminator 2
	beq	a5,zero,.L542
.L541:
	.loc 5 4162 9
	lui	a5,%hi(.LC162)
	addi	a4,a5,%lo(.LC162)
	li	a5,4096
	addi	a3,a5,66
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-132(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4164 16
	li	a5,-24576
	addi	a5,a5,-1536
	j	.L552
.L542:
	.loc 5 4168 8
	lbu	a4,-37(s0)
	li	a5,5
	bne	a4,a5,.L543
	.loc 5 4169 20
	lw	a5,-20(s0)
	addi	a5,a5,16
	sw	a5,-20(s0)
.L543:
	.loc 5 4174 13
	sw	zero,-44(s0)
	.loc 5 4176 6
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
	.loc 5 4181 50
	lw	a5,-132(s0)
	lw	a4,120(a5)
	.loc 5 4181 58
	lw	a5,-32(s0)
	add	a5,a4,a5
	.loc 5 4181 19
	lbu	a5,0(a5)
	mv	a0,a5
	call	mbedtls_ssl_pk_alg_from_sig
	mv	a5,a0
	sb	a5,-45(s0)
	.loc 5 4181 8 discriminator 1
	lbu	a5,-45(s0)
	bne	a5,zero,.L544
	.loc 5 4183 9
	lui	a5,%hi(.LC162)
	addi	a4,a5,%lo(.LC162)
	li	a5,4096
	addi	a3,a5,87
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-132(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4185 16
	li	a5,-24576
	addi	a5,a5,-1536
	j	.L552
.L544:
	.loc 5 4191 10
	lbu	a5,-45(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	mbedtls_pk_can_do
	mv	a5,a0
	.loc 5 4191 8 discriminator 1
	bne	a5,zero,.L545
	.loc 5 4192 9
	lui	a5,%hi(.LC163)
	addi	a4,a5,%lo(.LC163)
	li	a5,4096
	addi	a3,a5,96
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-132(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4193 16
	li	a5,-24576
	addi	a5,a5,-1536
	j	.L552
.L545:
	.loc 5 4196 6
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
	.loc 5 4198 11
	lw	a5,-32(s0)
	addi	a4,a5,2
	.loc 5 4198 20
	lw	a5,-132(s0)
	lw	a5,168(a5)
	.loc 5 4198 8
	bleu	a4,a5,.L546
	.loc 5 4199 9
	lui	a5,%hi(.LC161)
	addi	a4,a5,%lo(.LC161)
	li	a5,4096
	addi	a3,a5,103
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-132(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4200 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L552
.L546:
	.loc 5 4203 125
	lw	a5,-132(s0)
	lw	a4,120(a5)
	.loc 5 4203 135
	lw	a5,-32(s0)
	add	a5,a4,a5
	sw	a5,-56(s0)
.LBB153:
.LBB154:
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
.LBE154:
.LBE153:
	.loc 5 4203 74 discriminator 1
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 4203 13 discriminator 2
	sw	a5,-52(s0)
	.loc 5 4204 7
	lw	a5,-32(s0)
	addi	a5,a5,2
	sw	a5,-32(s0)
	.loc 5 4206 11
	lw	a4,-32(s0)
	lw	a5,-52(s0)
	add	a4,a4,a5
	.loc 5 4206 27
	lw	a5,-132(s0)
	lw	a5,168(a5)
	.loc 5 4206 8
	beq	a4,a5,.L548
	.loc 5 4207 9
	lui	a5,%hi(.LC161)
	addi	a4,a5,%lo(.LC161)
	li	a5,4096
	addi	a3,a5,111
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,1
	lw	a0,-132(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4208 16
	li	a5,-28672
	addi	a5,a5,-768
	j	.L552
.L548:
.LBB155:
	.loc 5 4214 18
	lw	a5,-132(s0)
	lw	a5,64(a5)
	.loc 5 4214 29
	lw	a5,32(a5)
	.loc 5 4214 15
	addi	a3,s0,-116
	addi	a4,s0,-112
	mv	a2,a3
	mv	a1,a4
	lw	a0,-132(s0)
	jalr	a5
.LVL13:
	sw	a0,-24(s0)
	.loc 5 4215 12
	lw	a5,-24(s0)
	beq	a5,zero,.L549
	.loc 5 4216 13
	lw	a5,-24(s0)
	lui	a4,%hi(.LC164)
	addi	a4,a4,%lo(.LC164)
	li	a3,4096
	addi	a3,a3,120
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-132(s0)
	call	mbedtls_debug_print_ret
	.loc 5 4217 20
	lw	a5,-24(s0)
	j	.L552
.L549:
.LBE155:
	.loc 5 4223 37
	lw	a5,-132(s0)
	lw	a4,120(a5)
	.loc 5 4223 46
	lw	a5,-32(s0)
	add	a4,a4,a5
	.loc 5 4221 16
	lbu	a1,-37(s0)
	lw	a5,-52(s0)
	lw	a3,-44(s0)
	lw	a2,-20(s0)
	lw	a0,-36(s0)
	call	mbedtls_pk_verify
	sw	a0,-24(s0)
	.loc 5 4221 8 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L550
	.loc 5 4224 9
	lw	a5,-24(s0)
	lui	a4,%hi(.LC165)
	addi	a4,a4,%lo(.LC165)
	li	a3,4096
	addi	a3,a3,128
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-132(s0)
	call	mbedtls_debug_print_ret
	.loc 5 4225 16
	lw	a5,-24(s0)
	j	.L552
.L550:
	.loc 5 4228 11
	lw	a0,-132(s0)
	call	mbedtls_ssl_update_handshake_status
	sw	a0,-24(s0)
	.loc 5 4229 8
	lw	a5,-24(s0)
	beq	a5,zero,.L551
	.loc 5 4230 9
	lw	a5,-24(s0)
	lui	a4,%hi(.LC166)
	addi	a4,a4,%lo(.LC166)
	li	a3,4096
	addi	a3,a3,134
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-132(s0)
	call	mbedtls_debug_print_ret
	.loc 5 4231 16
	lw	a5,-24(s0)
	j	.L552
.L551:
	.loc 5 4234 5
	lui	a5,%hi(.LC167)
	addi	a4,a5,%lo(.LC167)
	li	a5,4096
	addi	a3,a5,138
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-132(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4236 12
	lw	a5,-24(s0)
.L552:
	.loc 5 4237 1
	mv	a0,a5
	lw	ra,140(sp)
	.cfi_restore 1
	lw	s0,136(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE201:
	.size	ssl_parse_certificate_verify, .-ssl_parse_certificate_verify
	.section	.rodata
	.align	2
.LC168:
	.string	"=> write new session ticket"
	.align	2
.LC169:
	.string	"mbedtls_ssl_ticket_write"
	.align	2
.LC170:
	.string	"<= write new session ticket"
	.section	.text.ssl_write_new_session_ticket,"ax",@progbits
	.align	1
	.type	ssl_write_new_session_ticket, @function
ssl_write_new_session_ticket:
.LFB202:
	.loc 5 4243 1
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
	.loc 5 4244 9
	li	a5,-110
	sw	a5,-20(s0)
	.loc 5 4248 5
	lui	a5,%hi(.LC168)
	addi	a4,a5,%lo(.LC168)
	li	a5,4096
	addi	a3,a5,152
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4250 22
	lw	a5,-68(s0)
	li	a4,22
	sw	a4,220(a5)
	.loc 5 4251 8
	lw	a5,-68(s0)
	lw	a5,216(a5)
	.loc 5 4251 21
	li	a4,4
	sb	a4,0(a5)
	.loc 5 4267 19
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 5 4267 25
	lw	a6,88(a5)
	.loc 5 4267 45
	lw	a5,-68(s0)
	lw	a5,0(a5)
	.loc 5 4267 51
	lw	a0,96(a5)
	.loc 5 4268 45
	lw	a5,-68(s0)
	lw	a1,60(a5)
	.loc 5 4269 45
	lw	a5,-68(s0)
	lw	a5,216(a5)
	.loc 5 4267 16
	addi	a2,a5,10
	.loc 5 4270 45
	lw	a5,-68(s0)
	lw	a4,216(a5)
	.loc 5 4270 55
	li	a5,16384
	add	a3,a4,a5
	.loc 5 4267 16
	addi	a5,s0,-52
	addi	a4,s0,-48
	jalr	a6
.LVL14:
	sw	a0,-20(s0)
	.loc 5 4267 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L554
	.loc 5 4272 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC169)
	addi	a4,a4,%lo(.LC169)
	li	a3,4096
	addi	a3,a3,176
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_ret
	.loc 5 4273 14
	sw	zero,-48(s0)
.L554:
	.loc 5 4276 133 discriminator 2
	lw	a5,-68(s0)
	lw	a5,216(a5)
	.loc 5 4276 144 discriminator 2
	addi	s1,a5,4
	.loc 5 4276 151 discriminator 2
	lw	a5,-52(s0)
	mv	a0,a5
	call	__bswapsi2
	mv	a5,a0
	sw	s1,-24(s0)
	sw	a5,-28(s0)
.LBB156:
.LBB157:
	.loc 6 200 33
	lw	a5,-24(s0)
	sw	a5,-32(s0)
	.loc 6 201 12
	lw	a5,-32(s0)
	lw	a4,-28(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lw	a4,-28(s0)
	srli	a4,a4,8
	andi	a4,a4,255
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	lw	a4,-28(s0)
	srli	a4,a4,16
	andi	a4,a4,255
	lbu	a3,2(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,2(a5)
	lw	a4,-28(s0)
	srli	a4,a4,24
	lbu	a3,3(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,3(a5)
	.loc 6 205 1
	nop
.LBE157:
.LBE156:
	.loc 5 4277 129 discriminator 2
	lw	a5,-68(s0)
	lw	a5,216(a5)
	.loc 5 4277 140 discriminator 2
	addi	a4,a5,8
	.loc 5 4277 147 discriminator 2
	lw	a5,-48(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a3,a5,8
	srli	a5,a5,8
	or	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a4,-36(s0)
	sh	a5,-38(s0)
.LBB158:
.LBB159:
	.loc 6 148 33
	lw	a5,-36(s0)
	sw	a5,-44(s0)
	.loc 6 149 12
	lw	a5,-44(s0)
	lhu	a4,-38(s0)
	andi	a4,a4,255
	lbu	a3,0(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,0(a5)
	lhu	a4,-38(s0)
	srli	a4,a4,8
	slli	a4,a4,16
	srli	a4,a4,16
	lbu	a3,1(a5)
	andi	a3,a3,0
	or	a4,a3,a4
	sb	a4,1(a5)
	.loc 6 153 1
	nop
.LBE159:
.LBE158:
	.loc 5 4278 26
	lw	a5,-48(s0)
	addi	a4,a5,10
	.loc 5 4278 21
	lw	a5,-68(s0)
	sw	a4,224(a5)
	.loc 5 4284 8
	lw	a5,-68(s0)
	lw	a5,64(a5)
	.loc 5 4284 40
	sb	zero,4(a5)
	.loc 5 4286 16
	lw	a0,-68(s0)
	call	mbedtls_ssl_write_handshake_msg
	sw	a0,-20(s0)
	.loc 5 4286 8 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L555
	.loc 5 4287 9
	lw	a5,-20(s0)
	lui	a4,%hi(.LC103)
	addi	a4,a4,%lo(.LC103)
	li	a3,4096
	addi	a3,a3,191
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-68(s0)
	call	mbedtls_debug_print_ret
	.loc 5 4288 16
	lw	a5,-20(s0)
	j	.L557
.L555:
	.loc 5 4291 5
	lui	a5,%hi(.LC170)
	addi	a4,a5,%lo(.LC170)
	li	a5,4096
	addi	a3,a5,195
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-68(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4293 12
	li	a5,0
.L557:
	.loc 5 4294 1
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
.LFE202:
	.size	ssl_write_new_session_ticket, .-ssl_write_new_session_ticket
	.section	.rodata
	.align	2
.LC171:
	.string	"server state: %d"
	.align	2
.LC172:
	.string	"handshake: done"
	.align	2
.LC173:
	.string	"invalid state %d"
	.section	.text.mbedtls_ssl_handshake_server_step,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_handshake_server_step
	.type	mbedtls_ssl_handshake_server_step, @function
mbedtls_ssl_handshake_server_step:
.LFB203:
	.loc 5 4301 1
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
	.loc 5 4302 9
	sw	zero,-20(s0)
	.loc 5 4304 5
	lw	a5,-36(s0)
	lw	a5,4(a5)
	lui	a4,%hi(.LC171)
	addi	a4,a4,%lo(.LC171)
	li	a3,4096
	addi	a3,a3,208
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4306 16
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 5 4306 5
	li	a4,17
	beq	a5,a4,.L559
	li	a4,17
	bgt	a5,a4,.L560
	li	a4,15
	beq	a5,a4,.L561
	li	a4,15
	bgt	a5,a4,.L560
	li	a4,14
	beq	a5,a4,.L562
	li	a4,14
	bgt	a5,a4,.L560
	li	a4,13
	beq	a5,a4,.L563
	li	a4,13
	bgt	a5,a4,.L560
	li	a4,12
	beq	a5,a4,.L564
	li	a4,12
	bgt	a5,a4,.L560
	li	a4,11
	beq	a5,a4,.L565
	li	a4,11
	bgt	a5,a4,.L560
	li	a4,10
	beq	a5,a4,.L566
	li	a4,10
	bgt	a5,a4,.L560
	li	a4,9
	beq	a5,a4,.L567
	li	a4,9
	bgt	a5,a4,.L560
	li	a4,8
	beq	a5,a4,.L568
	li	a4,8
	bgt	a5,a4,.L560
	li	a4,7
	beq	a5,a4,.L569
	li	a4,7
	bgt	a5,a4,.L560
	li	a4,6
	beq	a5,a4,.L570
	li	a4,6
	bgt	a5,a4,.L560
	li	a4,5
	beq	a5,a4,.L571
	li	a4,5
	bgt	a5,a4,.L560
	li	a4,4
	beq	a5,a4,.L572
	li	a4,4
	bgt	a5,a4,.L560
	li	a4,3
	beq	a5,a4,.L573
	li	a4,3
	bgt	a5,a4,.L560
	li	a4,2
	beq	a5,a4,.L574
	li	a4,2
	bgt	a5,a4,.L560
	beq	a5,zero,.L575
	li	a4,1
	beq	a5,a4,.L576
	j	.L560
.L575:
	.loc 5 4308 13
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_set_state
	.loc 5 4309 13
	j	.L577
.L576:
	.loc 5 4315 19
	lw	a0,-36(s0)
	call	ssl_parse_client_hello
	sw	a0,-20(s0)
	.loc 5 4316 13
	j	.L577
.L559:
	.loc 5 4320 20
	li	a5,-28672
	addi	a5,a5,1408
	j	.L578
.L574:
	.loc 5 4331 19
	lw	a0,-36(s0)
	call	ssl_write_server_hello
	sw	a0,-20(s0)
	.loc 5 4332 13
	j	.L577
.L573:
	.loc 5 4335 19
	lw	a0,-36(s0)
	call	mbedtls_ssl_write_certificate
	sw	a0,-20(s0)
	.loc 5 4336 13
	j	.L577
.L572:
	.loc 5 4339 19
	lw	a0,-36(s0)
	call	ssl_write_server_key_exchange
	sw	a0,-20(s0)
	.loc 5 4340 13
	j	.L577
.L571:
	.loc 5 4343 19
	lw	a0,-36(s0)
	call	ssl_write_certificate_request
	sw	a0,-20(s0)
	.loc 5 4344 13
	j	.L577
.L570:
	.loc 5 4347 19
	lw	a0,-36(s0)
	call	ssl_write_server_hello_done
	sw	a0,-20(s0)
	.loc 5 4348 13
	j	.L577
.L569:
	.loc 5 4358 19
	lw	a0,-36(s0)
	call	mbedtls_ssl_parse_certificate
	sw	a0,-20(s0)
	.loc 5 4359 13
	j	.L577
.L568:
	.loc 5 4362 19
	lw	a0,-36(s0)
	call	ssl_parse_client_key_exchange
	sw	a0,-20(s0)
	.loc 5 4363 13
	j	.L577
.L567:
	.loc 5 4366 19
	lw	a0,-36(s0)
	call	ssl_parse_certificate_verify
	sw	a0,-20(s0)
	.loc 5 4367 13
	j	.L577
.L566:
	.loc 5 4370 19
	lw	a0,-36(s0)
	call	mbedtls_ssl_parse_change_cipher_spec
	sw	a0,-20(s0)
	.loc 5 4371 13
	j	.L577
.L565:
	.loc 5 4374 19
	lw	a0,-36(s0)
	call	mbedtls_ssl_parse_finished
	sw	a0,-20(s0)
	.loc 5 4375 13
	j	.L577
.L564:
	.loc 5 4384 20
	lw	a5,-36(s0)
	lw	a5,64(a5)
	.loc 5 4384 31
	lbu	a5,4(a5)
	.loc 5 4384 16
	beq	a5,zero,.L579
	.loc 5 4385 23
	lw	a0,-36(s0)
	call	ssl_write_new_session_ticket
	sw	a0,-20(s0)
	.loc 5 4389 13
	j	.L577
.L579:
	.loc 5 4388 19
	lw	a0,-36(s0)
	call	mbedtls_ssl_write_change_cipher_spec
	sw	a0,-20(s0)
	.loc 5 4389 13
	j	.L577
.L563:
	.loc 5 4392 19
	lw	a0,-36(s0)
	call	mbedtls_ssl_write_finished
	sw	a0,-20(s0)
	.loc 5 4393 13
	j	.L577
.L562:
	.loc 5 4396 13
	lui	a5,%hi(.LC172)
	addi	a4,a5,%lo(.LC172)
	li	a5,4096
	addi	a3,a5,300
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,2
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4397 13
	li	a1,15
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_set_state
	.loc 5 4398 13
	j	.L577
.L561:
	.loc 5 4401 13
	lw	a0,-36(s0)
	call	mbedtls_ssl_handshake_wrapup
	.loc 5 4402 13
	j	.L577
.L560:
	.loc 5 4405 13
	lw	a5,-36(s0)
	lw	a5,4(a5)
	lui	a4,%hi(.LC173)
	addi	a4,a4,%lo(.LC173)
	li	a3,4096
	addi	a3,a3,309
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,1
	lw	a0,-36(s0)
	call	mbedtls_debug_print_msg
	.loc 5 4406 20
	li	a5,-28672
	addi	a5,a5,-256
	j	.L578
.L577:
	.loc 5 4409 12
	lw	a5,-20(s0)
.L578:
	.loc 5 4410 1
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
.LFE203:
	.size	mbedtls_ssl_handshake_server_step, .-mbedtls_ssl_handshake_server_step
	.section	.text.mbedtls_ssl_conf_preference_order,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_conf_preference_order
	.type	mbedtls_ssl_conf_preference_order, @function
mbedtls_ssl_conf_preference_order:
.LFB204:
	.loc 5 4413 1
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
	.loc 5 4414 28
	lw	a5,-24(s0)
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,15(a5)
	.loc 5 4415 1
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
.LFE204:
	.size	mbedtls_ssl_conf_preference_order, .-mbedtls_ssl_conf_preference_order
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
	.file 24 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 25 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/constant_time.h"
	.file 26 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4c86
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x3d
	.4byte	.LASF726
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL2
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1d
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x1d
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x13
	.4byte	0x32
	.uleb128 0x1d
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x1d
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x1d
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1d
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x1d
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x1d
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3e
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x13
	.4byte	0x68
	.uleb128 0x1d
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xf
	.4byte	.LASF12
	.byte	0x7
	.byte	0xe5
	.byte	0x16
	.4byte	0x74
	.uleb128 0x13
	.4byte	0x7b
	.uleb128 0x1d
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xf
	.4byte	.LASF13
	.byte	0x8
	.byte	0x2e
	.byte	0x17
	.4byte	0x32
	.uleb128 0xf
	.4byte	.LASF14
	.byte	0x8
	.byte	0x31
	.byte	0x1c
	.4byte	0x45
	.uleb128 0x13
	.4byte	0x9f
	.uleb128 0xf
	.4byte	.LASF15
	.byte	0x8
	.byte	0x34
	.byte	0x1b
	.4byte	0x53
	.uleb128 0xf
	.4byte	.LASF16
	.byte	0x8
	.byte	0x37
	.byte	0x20
	.4byte	0x61
	.uleb128 0xf
	.4byte	.LASF17
	.byte	0x8
	.byte	0x56
	.byte	0x16
	.4byte	0x74
	.uleb128 0x3f
	.byte	0x4
	.uleb128 0x34
	.4byte	0xd4
	.uleb128 0x5
	.4byte	0x32
	.uleb128 0x5
	.4byte	0xe5
	.uleb128 0x1d
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x13
	.4byte	0xe5
	.uleb128 0x5
	.4byte	0xec
	.uleb128 0x5
	.4byte	0x100
	.uleb128 0x34
	.4byte	0xf6
	.uleb128 0x40
	.uleb128 0x32
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
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x6
	.byte	0x58
	.byte	0x1b
	.4byte	0x101
	.uleb128 0x32
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
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x6
	.byte	0x5b
	.byte	0x1b
	.4byte	0x121
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x9
	.byte	0xd1
	.byte	0xd
	.4byte	0x14d
	.uleb128 0x10
	.4byte	0x68
	.4byte	0x166
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0xa
	.byte	0xaa
	.byte	0x12
	.4byte	0xb0
	.uleb128 0x16
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
	.uleb128 0x5
	.4byte	0x166
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0xa
	.byte	0xf0
	.byte	0x1
	.4byte	0x172
	.uleb128 0x28
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
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0xb
	.byte	0x75
	.byte	0x3
	.4byte	0x1b2
	.uleb128 0x16
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
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0xb
	.byte	0xa3
	.byte	0x1
	.4byte	0x21f
	.uleb128 0x16
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
	.uleb128 0x14
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
	.uleb128 0x10
	.4byte	0x68
	.4byte	0x32e
	.uleb128 0x1
	.4byte	0x32e
	.byte	0
	.uleb128 0x5
	.4byte	0x1a6
	.uleb128 0x5
	.4byte	0x31f
	.uleb128 0x10
	.4byte	0x68
	.4byte	0x34c
	.uleb128 0x1
	.4byte	0x34c
	.uleb128 0x1
	.4byte	0xd4
	.byte	0
	.uleb128 0x5
	.4byte	0x24e
	.uleb128 0x5
	.4byte	0x338
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0xb
	.2byte	0x104
	.byte	0x1
	.4byte	0x25a
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0xb
	.2byte	0x16c
	.byte	0x28
	.4byte	0x370
	.uleb128 0x2e
	.4byte	.LASF50
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0xb
	.2byte	0x173
	.byte	0x2b
	.4byte	0x382
	.uleb128 0x2e
	.4byte	.LASF51
	.uleb128 0x24
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
	.uleb128 0x14
	.string	"rsm"
	.byte	0xb
	.2byte	0x17b
	.byte	0x22
	.4byte	0x3c9
	.byte	0x8
	.uleb128 0x14
	.string	"ma"
	.byte	0xb
	.2byte	0x17c
	.byte	0x25
	.4byte	0x3ce
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	0x363
	.uleb128 0x5
	.4byte	0x375
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0xb
	.2byte	0x17d
	.byte	0x3
	.4byte	0x387
	.uleb128 0x21
	.4byte	.LASF55
	.byte	0x80
	.byte	0xb
	.2byte	0x1ac
	.byte	0x10
	.4byte	0x415
	.uleb128 0x14
	.string	"grp"
	.byte	0xb
	.2byte	0x1ad
	.byte	0x17
	.4byte	0x356
	.byte	0
	.uleb128 0x14
	.string	"d"
	.byte	0xb
	.2byte	0x1ae
	.byte	0x11
	.4byte	0x1a6
	.byte	0x60
	.uleb128 0x14
	.string	"Q"
	.byte	0xb
	.2byte	0x1af
	.byte	0x17
	.4byte	0x24e
	.byte	0x68
	.byte	0
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0xb
	.2byte	0x1b1
	.byte	0x1
	.4byte	0x3e0
	.uleb128 0x13
	.4byte	0x415
	.uleb128 0x28
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
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0xc
	.byte	0x3c
	.byte	0x3
	.4byte	0x427
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0xc
	.byte	0x6b
	.byte	0x22
	.4byte	0x499
	.uleb128 0x13
	.4byte	0x488
	.uleb128 0x2e
	.4byte	.LASF69
	.uleb128 0x16
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
	.uleb128 0x5
	.4byte	0x494
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0xc
	.byte	0x8a
	.byte	0x3
	.4byte	0x49e
	.uleb128 0x19
	.4byte	0x32
	.4byte	0x4f4
	.uleb128 0x1a
	.4byte	0x74
	.byte	0x3f
	.byte	0
	.uleb128 0x28
	.byte	0x5
	.4byte	0x2b
	.byte	0xd
	.byte	0xc7
	.4byte	0x513
	.uleb128 0x41
	.4byte	.LASF74
	.sleb128 -1
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.4byte	.LASF77
	.byte	0xd
	.byte	0xcb
	.byte	0x3
	.4byte	0x4f4
	.uleb128 0xf
	.4byte	.LASF78
	.byte	0xd
	.byte	0xf9
	.byte	0x27
	.4byte	0x52b
	.uleb128 0x16
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
	.uleb128 0x21
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
	.uleb128 0x20
	.4byte	.LASF84
	.byte	0xd
	.2byte	0x10f
	.byte	0x12
	.4byte	0x74
	.byte	0x5
	.byte	0x20
	.uleb128 0x20
	.4byte	.LASF85
	.byte	0xd
	.2byte	0x115
	.byte	0x12
	.4byte	0x74
	.byte	0x3
	.byte	0x25
	.uleb128 0x20
	.4byte	.LASF86
	.byte	0xd
	.2byte	0x11b
	.byte	0x12
	.4byte	0x74
	.byte	0x4
	.byte	0x28
	.uleb128 0x20
	.4byte	.LASF87
	.byte	0xd
	.2byte	0x120
	.byte	0x12
	.4byte	0x74
	.byte	0x4
	.byte	0x2c
	.uleb128 0x20
	.4byte	.LASF88
	.byte	0xd
	.2byte	0x128
	.byte	0x12
	.4byte	0x74
	.byte	0x8
	.byte	0x30
	.uleb128 0x20
	.4byte	.LASF89
	.byte	0xd
	.2byte	0x12e
	.byte	0x12
	.4byte	0x74
	.byte	0x2
	.byte	0x38
	.uleb128 0x20
	.4byte	.LASF90
	.byte	0xd
	.2byte	0x131
	.byte	0x12
	.4byte	0x74
	.byte	0x5
	.byte	0x3a
	.byte	0
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0xd
	.2byte	0x133
	.byte	0x3
	.4byte	0x560
	.uleb128 0x13
	.4byte	0x5e6
	.uleb128 0x21
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
	.uleb128 0x14
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
	.uleb128 0x5
	.4byte	0x5f3
	.uleb128 0x2a
	.4byte	0x6ba
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x5
	.4byte	0x6a5
	.uleb128 0x10
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
	.uleb128 0x5
	.4byte	0x7b
	.uleb128 0x5
	.4byte	0x6bf
	.uleb128 0x19
	.4byte	0x32
	.4byte	0x6f7
	.uleb128 0x1a
	.4byte	0x74
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	0x51f
	.uleb128 0xd
	.4byte	.LASF91
	.byte	0xd
	.2byte	0x177
	.byte	0x3
	.4byte	0x5f8
	.uleb128 0x28
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
	.uleb128 0xf
	.4byte	.LASF107
	.byte	0xf
	.byte	0x52
	.byte	0x3
	.4byte	0x709
	.uleb128 0xf
	.4byte	.LASF108
	.byte	0xf
	.byte	0xd5
	.byte	0x22
	.4byte	0x763
	.uleb128 0x13
	.4byte	0x752
	.uleb128 0x2e
	.4byte	.LASF108
	.uleb128 0x16
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
	.uleb128 0x5
	.4byte	0x75e
	.uleb128 0xd
	.4byte	.LASF109
	.byte	0xf
	.2byte	0x109
	.byte	0x3
	.4byte	0x768
	.uleb128 0x13
	.4byte	0x795
	.uleb128 0x24
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
	.uleb128 0xd
	.4byte	.LASF113
	.byte	0xf
	.2byte	0x112
	.byte	0x3
	.4byte	0x7a7
	.uleb128 0x25
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
	.uleb128 0xd
	.4byte	.LASF126
	.byte	0x10
	.2byte	0x10e
	.byte	0x3
	.4byte	0x7db
	.uleb128 0xd
	.4byte	.LASF127
	.byte	0x10
	.2byte	0x1b2
	.byte	0x2a
	.4byte	0x851
	.uleb128 0x13
	.4byte	0x83f
	.uleb128 0x21
	.4byte	.LASF127
	.byte	0x10
	.byte	0x10
	.2byte	0x1c0
	.byte	0x8
	.4byte	0x8cf
	.uleb128 0x14
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
	.4byte	0x93
	.byte	0x8
	.uleb128 0x14
	.string	"mac"
	.byte	0x10
	.2byte	0x1c5
	.byte	0xd
	.4byte	0x93
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0x10
	.2byte	0x1c6
	.byte	0xd
	.4byte	0x93
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0x10
	.2byte	0x1c7
	.byte	0xd
	.4byte	0x93
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
	.uleb128 0x16
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
	.uleb128 0xf
	.4byte	.LASF132
	.byte	0x11
	.byte	0x92
	.byte	0x1
	.4byte	0x8cf
	.uleb128 0x16
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
	.uleb128 0x5
	.4byte	0x90e
	.uleb128 0xf
	.4byte	.LASF133
	.byte	0x11
	.byte	0xad
	.byte	0x1
	.4byte	0x90e
	.uleb128 0x16
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
	.uleb128 0x5
	.4byte	0x947
	.uleb128 0xf
	.4byte	.LASF135
	.byte	0x11
	.byte	0xc6
	.byte	0x1
	.4byte	0x947
	.uleb128 0xf
	.4byte	.LASF137
	.byte	0x12
	.byte	0xd8
	.byte	0x1a
	.4byte	0x902
	.uleb128 0xf
	.4byte	.LASF138
	.byte	0x12
	.byte	0xe3
	.byte	0x21
	.4byte	0x98e
	.uleb128 0xf
	.4byte	.LASF139
	.byte	0x12
	.byte	0xe8
	.byte	0x1f
	.4byte	0x93b
	.uleb128 0x16
	.4byte	.LASF140
	.byte	0x34
	.byte	0x12
	.byte	0xed
	.byte	0x10
	.4byte	0xa00
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
	.4byte	0x9b2
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
	.uleb128 0xf
	.4byte	.LASF140
	.byte	0x12
	.byte	0xf3
	.byte	0x1
	.4byte	0x9be
	.uleb128 0x16
	.4byte	.LASF144
	.byte	0x18
	.byte	0x12
	.byte	0xf6
	.byte	0x10
	.4byte	0xa68
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
	.uleb128 0xf
	.4byte	.LASF144
	.byte	0x12
	.byte	0xfa
	.byte	0x1
	.4byte	0xa0c
	.uleb128 0x16
	.4byte	.LASF147
	.byte	0x40
	.byte	0x13
	.byte	0x27
	.byte	0x10
	.4byte	0xac3
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
	.4byte	0xa68
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
	.4byte	0xac3
	.byte	0x3c
	.byte	0
	.uleb128 0x5
	.4byte	0xa74
	.uleb128 0xf
	.4byte	.LASF147
	.byte	0x13
	.byte	0x3a
	.byte	0x1
	.4byte	0xa74
	.uleb128 0x16
	.4byte	.LASF151
	.byte	0xf4
	.byte	0x13
	.byte	0x40
	.byte	0x10
	.4byte	0xbb2
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
	.4byte	0xa68
	.byte	0x54
	.uleb128 0x7
	.4byte	.LASF157
	.byte	0x13
	.byte	0x4c
	.byte	0x17
	.4byte	0xa68
	.byte	0x6c
	.uleb128 0x7
	.4byte	.LASF158
	.byte	0x13
	.byte	0x4e
	.byte	0x1c
	.4byte	0xac8
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
	.4byte	0xbb2
	.byte	0xf0
	.byte	0
	.uleb128 0x5
	.4byte	0xad4
	.uleb128 0xf
	.4byte	.LASF151
	.byte	0x13
	.byte	0x5d
	.byte	0x1
	.4byte	0xad4
	.uleb128 0x42
	.4byte	.LASF164
	.2byte	0x194
	.byte	0x14
	.byte	0x29
	.byte	0x10
	.4byte	0xd72
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
	.4byte	0xa68
	.byte	0x90
	.uleb128 0x7
	.4byte	.LASF169
	.byte	0x14
	.byte	0x3a
	.byte	0x17
	.4byte	0xa68
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
	.4byte	0x9b2
	.byte	0xf8
	.uleb128 0x17
	.4byte	.LASF175
	.byte	0x43
	.byte	0x16
	.4byte	0x99a
	.2byte	0x108
	.uleb128 0x17
	.4byte	.LASF176
	.byte	0x44
	.byte	0x1c
	.4byte	0xa00
	.2byte	0x114
	.uleb128 0x17
	.4byte	.LASF177
	.byte	0x46
	.byte	0x1b
	.4byte	0x9b2
	.2byte	0x148
	.uleb128 0x17
	.4byte	.LASF178
	.byte	0x48
	.byte	0x9
	.4byte	0x68
	.2byte	0x158
	.uleb128 0x17
	.4byte	.LASF179
	.byte	0x49
	.byte	0x9
	.4byte	0x68
	.2byte	0x15c
	.uleb128 0x17
	.4byte	.LASF180
	.byte	0x4a
	.byte	0x9
	.4byte	0x68
	.2byte	0x160
	.uleb128 0x17
	.4byte	.LASF181
	.byte	0x4c
	.byte	0x12
	.4byte	0x74
	.2byte	0x164
	.uleb128 0x17
	.4byte	.LASF182
	.byte	0x4e
	.byte	0x1b
	.4byte	0x9b2
	.2byte	0x168
	.uleb128 0x17
	.4byte	.LASF183
	.byte	0x50
	.byte	0x13
	.4byte	0x32
	.2byte	0x178
	.uleb128 0x43
	.string	"sig"
	.byte	0x14
	.byte	0x52
	.byte	0x16
	.4byte	0x99a
	.2byte	0x17c
	.uleb128 0x17
	.4byte	.LASF161
	.byte	0x53
	.byte	0x17
	.4byte	0x47c
	.2byte	0x188
	.uleb128 0x17
	.4byte	.LASF162
	.byte	0x54
	.byte	0x17
	.4byte	0x746
	.2byte	0x189
	.uleb128 0x17
	.4byte	.LASF163
	.byte	0x55
	.byte	0xb
	.4byte	0xd4
	.2byte	0x18c
	.uleb128 0x17
	.4byte	.LASF134
	.byte	0x5a
	.byte	0x1e
	.4byte	0xd72
	.2byte	0x190
	.byte	0
	.uleb128 0x5
	.4byte	0xbc3
	.uleb128 0xf
	.4byte	.LASF164
	.byte	0x14
	.byte	0x5c
	.byte	0x1
	.4byte	0xbc3
	.uleb128 0x13
	.4byte	0xd77
	.uleb128 0x16
	.4byte	.LASF184
	.byte	0x10
	.byte	0x14
	.byte	0x7d
	.byte	0x10
	.4byte	0xdca
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
	.uleb128 0xf
	.4byte	.LASF184
	.byte	0x14
	.byte	0x85
	.byte	0x1
	.4byte	0xd88
	.uleb128 0x13
	.4byte	0xdca
	.uleb128 0x5
	.4byte	0x795
	.uleb128 0x32
	.byte	0x8
	.byte	0x14
	.byte	0xfa
	.4byte	0xe03
	.uleb128 0x8
	.string	"crt"
	.byte	0x14
	.byte	0xfb
	.byte	0x17
	.4byte	0xe03
	.byte	0
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x14
	.byte	0xfc
	.byte	0xe
	.4byte	0xb0
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	0xd77
	.uleb128 0xf
	.4byte	.LASF189
	.byte	0x14
	.byte	0xfd
	.byte	0x3
	.4byte	0xde0
	.uleb128 0x24
	.byte	0x58
	.byte	0x14
	.2byte	0x107
	.byte	0x9
	.4byte	0xe49
	.uleb128 0x2
	.4byte	.LASF190
	.byte	0x14
	.2byte	0x108
	.byte	0x28
	.4byte	0xe49
	.byte	0
	.uleb128 0x14
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
	.4byte	0xe03
	.byte	0x54
	.byte	0
	.uleb128 0x19
	.4byte	0xe08
	.4byte	0xe59
	.uleb128 0x1a
	.4byte	0x74
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.4byte	.LASF192
	.byte	0x14
	.2byte	0x112
	.byte	0x3
	.4byte	0xe14
	.uleb128 0x25
	.byte	0x1
	.4byte	0x32
	.byte	0x14
	.2byte	0x126
	.byte	0xa
	.4byte	0xe81
	.uleb128 0x3
	.4byte	.LASF193
	.byte	0
	.uleb128 0x3
	.4byte	.LASF194
	.byte	0x1
	.byte	0
	.uleb128 0x24
	.byte	0x78
	.byte	0x14
	.2byte	0x119
	.byte	0x9
	.4byte	0xefb
	.uleb128 0x14
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
	.4byte	0xe03
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF196
	.byte	0x14
	.2byte	0x11f
	.byte	0x17
	.4byte	0xe03
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
	.4byte	0xe66
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
	.4byte	0xe59
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.4byte	.LASF202
	.byte	0x14
	.2byte	0x12d
	.byte	0x3
	.4byte	0xe81
	.uleb128 0x5
	.4byte	0xd83
	.uleb128 0x5
	.4byte	0x39
	.uleb128 0x13
	.4byte	0xf0d
	.uleb128 0xd
	.4byte	.LASF203
	.byte	0x14
	.2byte	0x310
	.byte	0xf
	.4byte	0xf24
	.uleb128 0x5
	.4byte	0xf29
	.uleb128 0x10
	.4byte	0x68
	.4byte	0xf42
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0xf08
	.uleb128 0x1
	.4byte	0xf42
	.byte	0
	.uleb128 0x5
	.4byte	0xe03
	.uleb128 0x16
	.4byte	.LASF204
	.byte	0x50
	.byte	0x15
	.byte	0x65
	.byte	0x10
	.4byte	0xfc9
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
	.uleb128 0xf
	.4byte	.LASF204
	.byte	0x15
	.byte	0x71
	.byte	0x1
	.4byte	0xf47
	.uleb128 0x28
	.byte	0x7
	.4byte	0x32
	.byte	0x16
	.byte	0x3b
	.4byte	0xfee
	.uleb128 0x3
	.4byte	.LASF205
	.byte	0
	.uleb128 0x3
	.4byte	.LASF206
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.4byte	.LASF207
	.byte	0x16
	.byte	0x3e
	.byte	0x3
	.4byte	0xfd5
	.uleb128 0x16
	.4byte	.LASF208
	.byte	0xf0
	.byte	0x16
	.byte	0x69
	.byte	0x10
	.4byte	0x108c
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
	.uleb128 0xf
	.4byte	.LASF208
	.byte	0x16
	.byte	0x8e
	.byte	0x1
	.4byte	0xffa
	.uleb128 0x13
	.4byte	0x108c
	.uleb128 0x19
	.4byte	0x32
	.4byte	0x10ad
	.uleb128 0x1a
	.4byte	0x74
	.byte	0x65
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	0x32
	.byte	0x1
	.2byte	0x2eb
	.byte	0xe
	.4byte	0x1170
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
	.uleb128 0xd
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x30b
	.byte	0x1
	.4byte	0x10ad
	.uleb128 0xd
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x32d
	.byte	0xd
	.4byte	0x118a
	.uleb128 0x10
	.4byte	0x68
	.4byte	0x11a3
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0xd
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x345
	.byte	0xd
	.4byte	0x14d
	.uleb128 0xd
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x35f
	.byte	0xd
	.4byte	0x11bd
	.uleb128 0x10
	.4byte	0x68
	.4byte	0x11db
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xb0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x379
	.byte	0xe
	.4byte	0x11e8
	.uleb128 0x2a
	.4byte	0x11fd
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0xb0
	.uleb128 0x1
	.4byte	0xb0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x388
	.byte	0xd
	.4byte	0x120a
	.uleb128 0x10
	.4byte	0x68
	.4byte	0x1219
	.uleb128 0x1
	.4byte	0xd4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x38b
	.byte	0x24
	.4byte	0x122b
	.uleb128 0x13
	.4byte	0x1219
	.uleb128 0x21
	.4byte	.LASF247
	.byte	0x78
	.byte	0x1
	.2byte	0x4fb
	.byte	0x8
	.4byte	0x12fd
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
	.4byte	0x93
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
	.uleb128 0x14
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
	.4byte	0xe03
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
	.uleb128 0xd
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x38c
	.byte	0x24
	.4byte	0x130f
	.uleb128 0x13
	.4byte	0x12fd
	.uleb128 0x2f
	.4byte	.LASF261
	.2byte	0x260
	.byte	0x1
	.2byte	0x6c3
	.byte	0x8
	.4byte	0x1746
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
	.4byte	0x2076
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x707
	.byte	0x1a
	.4byte	0x2076
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF274
	.byte	0x1
	.2byte	0x708
	.byte	0x1a
	.4byte	0x2076
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x709
	.byte	0x1a
	.4byte	0x2076
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
	.4byte	0x93
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
	.uleb128 0x14
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
	.uleb128 0xa
	.4byte	.LASF321
	.byte	0x1
	.2byte	0x7bb
	.byte	0x1c
	.4byte	0x21af
	.2byte	0x100
	.uleb128 0xa
	.4byte	.LASF322
	.byte	0x1
	.2byte	0x7c2
	.byte	0x14
	.4byte	0xdb
	.2byte	0x204
	.uleb128 0xa
	.4byte	.LASF323
	.byte	0x1
	.2byte	0x7c3
	.byte	0xc
	.4byte	0x7b
	.2byte	0x208
	.uleb128 0xa
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x7ca
	.byte	0x9
	.4byte	0x68
	.2byte	0x20c
	.uleb128 0xa
	.4byte	.LASF325
	.byte	0x1
	.2byte	0x7cd
	.byte	0xc
	.4byte	0x7b
	.2byte	0x210
	.uleb128 0xa
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x7ce
	.byte	0xa
	.4byte	0x247d
	.2byte	0x214
	.uleb128 0xa
	.4byte	.LASF327
	.byte	0x1
	.2byte	0x7cf
	.byte	0xa
	.4byte	0x247d
	.2byte	0x220
	.uleb128 0xa
	.4byte	.LASF328
	.byte	0x1
	.2byte	0x7d9
	.byte	0x13
	.4byte	0x21ec
	.2byte	0x22c
	.uleb128 0xa
	.4byte	.LASF329
	.byte	0x1
	.2byte	0x7da
	.byte	0xd
	.4byte	0x93
	.2byte	0x24c
	.uleb128 0xa
	.4byte	.LASF330
	.byte	0x1
	.2byte	0x7db
	.byte	0xd
	.4byte	0x93
	.2byte	0x24d
	.uleb128 0xa
	.4byte	.LASF331
	.byte	0x1
	.2byte	0x7e2
	.byte	0x20
	.4byte	0x248d
	.2byte	0x250
	.uleb128 0xa
	.4byte	.LASF332
	.byte	0x1
	.2byte	0x7e3
	.byte	0xb
	.4byte	0xd4
	.2byte	0x254
	.uleb128 0xa
	.4byte	.LASF333
	.byte	0x1
	.2byte	0x7ee
	.byte	0x1d
	.4byte	0x22de
	.2byte	0x258
	.byte	0
	.uleb128 0xd
	.4byte	.LASF334
	.byte	0x1
	.2byte	0x38d
	.byte	0x23
	.4byte	0x1758
	.uleb128 0x13
	.4byte	0x1746
	.uleb128 0x21
	.4byte	.LASF334
	.byte	0xf4
	.byte	0x1
	.2byte	0x5af
	.byte	0x8
	.4byte	0x1b2d
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
	.4byte	0x93
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x5bf
	.byte	0xd
	.4byte	0x93
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x5c0
	.byte	0xd
	.4byte	0x93
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF337
	.byte	0x1
	.2byte	0x5c2
	.byte	0xd
	.4byte	0x93
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x5c4
	.byte	0xd
	.4byte	0x93
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x5c8
	.byte	0xd
	.4byte	0x93
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF338
	.byte	0x1
	.2byte	0x5cb
	.byte	0xd
	.4byte	0x93
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x5ce
	.byte	0xd
	.4byte	0x93
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF340
	.byte	0x1
	.2byte	0x5d1
	.byte	0xd
	.4byte	0x93
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF341
	.byte	0x1
	.2byte	0x5db
	.byte	0xd
	.4byte	0x93
	.byte	0xd
	.uleb128 0x2
	.4byte	.LASF342
	.byte	0x1
	.2byte	0x5e5
	.byte	0xd
	.4byte	0x93
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF343
	.byte	0x1
	.2byte	0x5e7
	.byte	0xd
	.4byte	0x93
	.byte	0xf
	.uleb128 0x2
	.4byte	.LASF344
	.byte	0x1
	.2byte	0x5ec
	.byte	0xd
	.4byte	0x93
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF345
	.byte	0x1
	.2byte	0x5f1
	.byte	0xd
	.4byte	0x93
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
	.4byte	0xe03
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
	.4byte	0xf17
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
	.uleb128 0x14
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
	.4byte	0xf08
	.byte	0xf0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF395
	.byte	0x1
	.2byte	0x390
	.byte	0x26
	.4byte	0x1b3a
	.uleb128 0x2f
	.4byte	.LASF395
	.2byte	0x160
	.byte	0x4
	.2byte	0x461
	.byte	0x8
	.4byte	0x1c47
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
	.4byte	0x93
	.byte	0xdc
	.uleb128 0x2
	.4byte	.LASF408
	.byte	0x4
	.2byte	0x48c
	.byte	0xd
	.4byte	0x93
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
	.uleb128 0xa
	.4byte	.LASF409
	.byte	0x4
	.2byte	0x496
	.byte	0x13
	.4byte	0x4e4
	.2byte	0x11e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF410
	.byte	0x1
	.2byte	0x391
	.byte	0x2d
	.4byte	0x1c54
	.uleb128 0x2f
	.4byte	.LASF410
	.2byte	0x3e4
	.byte	0x4
	.2byte	0x285
	.byte	0x8
	.4byte	0x1fb3
	.uleb128 0x2
	.4byte	.LASF411
	.byte	0x4
	.2byte	0x288
	.byte	0xd
	.4byte	0x93
	.byte	0
	.uleb128 0x2
	.4byte	.LASF412
	.byte	0x4
	.2byte	0x289
	.byte	0xd
	.4byte	0x93
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF413
	.byte	0x4
	.2byte	0x28c
	.byte	0xd
	.4byte	0x93
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF414
	.byte	0x4
	.2byte	0x292
	.byte	0xd
	.4byte	0x93
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF415
	.byte	0x4
	.2byte	0x29a
	.byte	0xd
	.4byte	0x93
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
	.4byte	0x93
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF416
	.byte	0x4
	.2byte	0x2b8
	.byte	0xd
	.4byte	0x93
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
	.4byte	0x93
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF419
	.byte	0x4
	.2byte	0x2cc
	.byte	0x7
	.4byte	0x2511
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF420
	.byte	0x4
	.2byte	0x2cd
	.byte	0x17
	.4byte	0xe03
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
	.4byte	0x26a8
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF423
	.byte	0x4
	.2byte	0x2d4
	.byte	0xb
	.4byte	0x26c6
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF424
	.byte	0x4
	.2byte	0x2d6
	.byte	0xb
	.4byte	0x26e9
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF425
	.byte	0x4
	.2byte	0x2d8
	.byte	0xb
	.4byte	0x2707
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF426
	.byte	0x4
	.2byte	0x2d9
	.byte	0x1d
	.4byte	0x270c
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF427
	.byte	0x4
	.2byte	0x300
	.byte	0xe
	.4byte	0x2711
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF428
	.byte	0x4
	.2byte	0x309
	.byte	0x19
	.4byte	0xfc9
	.byte	0x54
	.uleb128 0x2
	.4byte	.LASF429
	.byte	0x4
	.2byte	0x30e
	.byte	0x1a
	.4byte	0x108c
	.byte	0xa4
	.uleb128 0xa
	.4byte	.LASF430
	.byte	0x4
	.2byte	0x32c
	.byte	0xf
	.4byte	0x2721
	.2byte	0x194
	.uleb128 0x35
	.string	"psk"
	.2byte	0x334
	.byte	0x14
	.4byte	0xdb
	.2byte	0x198
	.uleb128 0xa
	.4byte	.LASF380
	.byte	0x4
	.2byte	0x335
	.byte	0xc
	.4byte	0x7b
	.2byte	0x19c
	.uleb128 0xa
	.4byte	.LASF431
	.byte	0x4
	.2byte	0x337
	.byte	0xe
	.4byte	0x9f
	.2byte	0x1a0
	.uleb128 0xa
	.4byte	.LASF432
	.byte	0x4
	.2byte	0x33b
	.byte	0x22
	.4byte	0xefb
	.2byte	0x1a4
	.uleb128 0xa
	.4byte	.LASF366
	.byte	0x4
	.2byte	0x33f
	.byte	0x1b
	.4byte	0x2418
	.2byte	0x21c
	.uleb128 0xa
	.4byte	.LASF433
	.byte	0x4
	.2byte	0x341
	.byte	0x1b
	.4byte	0x2418
	.2byte	0x220
	.uleb128 0xa
	.4byte	.LASF434
	.byte	0x4
	.2byte	0x342
	.byte	0x17
	.4byte	0xe03
	.2byte	0x224
	.uleb128 0xa
	.4byte	.LASF435
	.byte	0x4
	.2byte	0x343
	.byte	0x17
	.4byte	0x241d
	.2byte	0x228
	.uleb128 0xa
	.4byte	.LASF436
	.byte	0x4
	.2byte	0x361
	.byte	0x7
	.4byte	0x25cb
	.2byte	0x22c
	.uleb128 0xa
	.4byte	.LASF437
	.byte	0x4
	.2byte	0x366
	.byte	0x14
	.4byte	0xdb
	.2byte	0x270
	.uleb128 0xa
	.4byte	.LASF438
	.byte	0x4
	.2byte	0x36e
	.byte	0xd
	.4byte	0x93
	.2byte	0x274
	.uleb128 0xa
	.4byte	.LASF439
	.byte	0x4
	.2byte	0x37d
	.byte	0x13
	.4byte	0x32
	.2byte	0x275
	.uleb128 0xa
	.4byte	.LASF440
	.byte	0x4
	.2byte	0x381
	.byte	0x12
	.4byte	0x74
	.2byte	0x278
	.uleb128 0xa
	.4byte	.LASF441
	.byte	0x4
	.2byte	0x382
	.byte	0x12
	.4byte	0x74
	.2byte	0x27c
	.uleb128 0xa
	.4byte	.LASF442
	.byte	0x4
	.2byte	0x384
	.byte	0xe
	.4byte	0xb0
	.2byte	0x280
	.uleb128 0xa
	.4byte	.LASF443
	.byte	0x4
	.2byte	0x385
	.byte	0x1e
	.4byte	0x2726
	.2byte	0x284
	.uleb128 0xa
	.4byte	.LASF444
	.byte	0x4
	.2byte	0x386
	.byte	0x1e
	.4byte	0x2726
	.2byte	0x288
	.uleb128 0xa
	.4byte	.LASF445
	.byte	0x4
	.2byte	0x387
	.byte	0x14
	.4byte	0xdb
	.2byte	0x28c
	.uleb128 0xa
	.4byte	.LASF446
	.byte	0x4
	.2byte	0x388
	.byte	0x12
	.4byte	0x74
	.2byte	0x290
	.uleb128 0xa
	.4byte	.LASF447
	.byte	0x4
	.2byte	0x38a
	.byte	0x1c
	.4byte	0x246e
	.2byte	0x294
	.uleb128 0xa
	.4byte	.LASF448
	.byte	0x4
	.2byte	0x38c
	.byte	0x13
	.4byte	0x2445
	.2byte	0x298
	.uleb128 0xa
	.4byte	.LASF449
	.byte	0x4
	.2byte	0x392
	.byte	0xd
	.4byte	0x93
	.2byte	0x2a0
	.uleb128 0xa
	.4byte	.LASF450
	.byte	0x4
	.2byte	0x396
	.byte	0x13
	.4byte	0x21ec
	.2byte	0x2a1
	.uleb128 0xa
	.4byte	.LASF451
	.byte	0x4
	.2byte	0x397
	.byte	0xd
	.4byte	0x93
	.2byte	0x2c1
	.uleb128 0x35
	.string	"mtu"
	.2byte	0x39b
	.byte	0xe
	.4byte	0x9f
	.2byte	0x2c2
	.uleb128 0xa
	.4byte	.LASF452
	.byte	0x4
	.2byte	0x3a5
	.byte	0x1a
	.4byte	0x4d8
	.2byte	0x2c4
	.uleb128 0xa
	.4byte	.LASF453
	.byte	0x4
	.2byte	0x3ac
	.byte	0x1a
	.4byte	0x4d8
	.2byte	0x2d0
	.uleb128 0xa
	.4byte	.LASF454
	.byte	0x4
	.2byte	0x3bb
	.byte	0xd
	.4byte	0x93
	.2byte	0x2dc
	.uleb128 0xa
	.4byte	.LASF455
	.byte	0x4
	.2byte	0x3d9
	.byte	0x7
	.4byte	0x2687
	.2byte	0x2e0
	.uleb128 0xa
	.4byte	.LASF409
	.byte	0x4
	.2byte	0x3dd
	.byte	0x13
	.4byte	0x4e4
	.2byte	0x328
	.uleb128 0xa
	.4byte	.LASF456
	.byte	0x4
	.2byte	0x3e1
	.byte	0x13
	.4byte	0x109d
	.2byte	0x368
	.uleb128 0xa
	.4byte	.LASF457
	.byte	0x4
	.2byte	0x3e3
	.byte	0xc
	.4byte	0x7b
	.2byte	0x3d0
	.uleb128 0xa
	.4byte	.LASF458
	.byte	0x4
	.2byte	0x404
	.byte	0xb
	.4byte	0xd4
	.2byte	0x3d4
	.uleb128 0xa
	.4byte	.LASF459
	.byte	0x4
	.2byte	0x408
	.byte	0x1a
	.4byte	0xf0d
	.2byte	0x3d8
	.uleb128 0xa
	.4byte	.LASF460
	.byte	0x4
	.2byte	0x409
	.byte	0xc
	.4byte	0x7b
	.2byte	0x3dc
	.uleb128 0xa
	.4byte	.LASF394
	.byte	0x4
	.2byte	0x40b
	.byte	0x1d
	.4byte	0xf08
	.2byte	0x3e0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF461
	.byte	0x1
	.2byte	0x394
	.byte	0x25
	.4byte	0x1fc0
	.uleb128 0x21
	.4byte	.LASF461
	.byte	0xc
	.byte	0x4
	.2byte	0x4e4
	.byte	0x8
	.4byte	0x1ff9
	.uleb128 0x2
	.4byte	.LASF462
	.byte	0x4
	.2byte	0x4e5
	.byte	0x17
	.4byte	0xe03
	.byte	0
	.uleb128 0x14
	.string	"key"
	.byte	0x4
	.2byte	0x4e6
	.byte	0x19
	.4byte	0xddb
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF134
	.byte	0x4
	.2byte	0x4e7
	.byte	0x1b
	.4byte	0x2418
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF463
	.byte	0x1
	.2byte	0x397
	.byte	0x28
	.4byte	0x2006
	.uleb128 0x21
	.4byte	.LASF463
	.byte	0x10
	.byte	0x4
	.2byte	0x4ef
	.byte	0x8
	.4byte	0x204b
	.uleb128 0x14
	.string	"p"
	.byte	0x4
	.2byte	0x4f0
	.byte	0x14
	.4byte	0xdb
	.byte	0
	.uleb128 0x14
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
	.4byte	0x2726
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF464
	.byte	0x1
	.2byte	0x3be
	.byte	0xd
	.4byte	0x2058
	.uleb128 0x10
	.4byte	0x68
	.4byte	0x2076
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x2076
	.byte	0
	.uleb128 0x5
	.4byte	0x1219
	.uleb128 0x13
	.4byte	0x2076
	.uleb128 0xd
	.4byte	.LASF465
	.byte	0x1
	.2byte	0x3d4
	.byte	0xd
	.4byte	0x208d
	.uleb128 0x10
	.4byte	0x68
	.4byte	0x20ab
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x20ab
	.byte	0
	.uleb128 0x5
	.4byte	0x1226
	.uleb128 0xd
	.4byte	.LASF466
	.byte	0x1
	.2byte	0x422
	.byte	0xd
	.4byte	0x20bd
	.uleb128 0x10
	.4byte	0x68
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0xe03
	.uleb128 0x1
	.4byte	0x47c
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x5
	.4byte	0x12fd
	.uleb128 0xd
	.4byte	.LASF467
	.byte	0x1
	.2byte	0x464
	.byte	0xd
	.4byte	0x20f2
	.uleb128 0x10
	.4byte	0x68
	.4byte	0x2110
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0xe03
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0xd
	.4byte	.LASF468
	.byte	0x1
	.2byte	0x494
	.byte	0xd
	.4byte	0x211d
	.uleb128 0x10
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
	.uleb128 0xd
	.4byte	.LASF469
	.byte	0x1
	.2byte	0x4aa
	.byte	0xe
	.4byte	0x2148
	.uleb128 0x2a
	.4byte	0x2153
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF470
	.byte	0x1
	.2byte	0x4db
	.byte	0x12
	.4byte	0x9f
	.uleb128 0x13
	.4byte	0x2153
	.uleb128 0x2f
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
	.uleb128 0x19
	.4byte	0x32
	.4byte	0x21af
	.uleb128 0x1a
	.4byte	0x74
	.byte	0xfe
	.byte	0
	.uleb128 0xd
	.4byte	.LASF475
	.byte	0x1
	.2byte	0x4e5
	.byte	0x1
	.4byte	0x2165
	.uleb128 0x25
	.byte	0x2
	.4byte	0x45
	.byte	0x1
	.2byte	0x4ea
	.byte	0xe
	.4byte	0x21df
	.uleb128 0x3
	.4byte	.LASF476
	.byte	0
	.uleb128 0x36
	.4byte	.LASF477
	.2byte	0x303
	.uleb128 0x36
	.4byte	.LASF478
	.2byte	0x304
	.byte	0
	.uleb128 0xd
	.4byte	.LASF479
	.byte	0x1
	.2byte	0x4ee
	.byte	0x3
	.4byte	0x21bc
	.uleb128 0x19
	.4byte	0x32
	.4byte	0x21fc
	.uleb128 0x1a
	.4byte	0x74
	.byte	0x1f
	.byte	0
	.uleb128 0x19
	.4byte	0x32
	.4byte	0x220c
	.uleb128 0x1a
	.4byte	0x74
	.byte	0x2f
	.byte	0
	.uleb128 0x25
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
	.uleb128 0xd
	.4byte	.LASF485
	.byte	0x1
	.2byte	0x569
	.byte	0x1
	.4byte	0x220c
	.uleb128 0x25
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
	.uleb128 0xd
	.4byte	.LASF487
	.byte	0x1
	.2byte	0x575
	.byte	0x3
	.4byte	0x2246
	.uleb128 0xd
	.4byte	.LASF488
	.byte	0x1
	.2byte	0x586
	.byte	0xe
	.4byte	0x2275
	.uleb128 0x2a
	.4byte	0x229e
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0x225b
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0x2239
	.byte	0
	.uleb128 0xd
	.4byte	.LASF489
	.byte	0x1
	.2byte	0x59e
	.byte	0xf
	.4byte	0x22ab
	.uleb128 0x5
	.4byte	0x22b0
	.uleb128 0x10
	.4byte	0x68
	.4byte	0x22bf
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0x37
	.byte	0x4
	.byte	0x1
	.2byte	0x5a7
	.byte	0x9
	.4byte	0x22de
	.uleb128 0x38
	.string	"n"
	.2byte	0x5a8
	.byte	0xf
	.4byte	0xc8
	.uleb128 0x38
	.string	"p"
	.2byte	0x5a9
	.byte	0xb
	.4byte	0xd4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF490
	.byte	0x1
	.2byte	0x5aa
	.byte	0x3
	.4byte	0x22bf
	.uleb128 0x5
	.4byte	0x6f
	.uleb128 0x2a
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
	.uleb128 0x5
	.4byte	0x22f0
	.uleb128 0x5
	.4byte	0x14d
	.uleb128 0x5
	.4byte	0x204b
	.uleb128 0x5
	.4byte	0x2080
	.uleb128 0x10
	.4byte	0x68
	.4byte	0x2341
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x5
	.4byte	0x2323
	.uleb128 0x10
	.4byte	0x68
	.4byte	0x2364
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0xe03
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x2364
	.byte	0
	.uleb128 0x5
	.4byte	0xb0
	.uleb128 0x5
	.4byte	0x2346
	.uleb128 0x10
	.4byte	0x68
	.4byte	0x2391
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0x2391
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x5
	.4byte	0xdb
	.uleb128 0x5
	.4byte	0x236e
	.uleb128 0x10
	.4byte	0x68
	.4byte	0x23be
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x5
	.4byte	0x239b
	.uleb128 0x10
	.4byte	0x68
	.4byte	0x23eb
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0x20ab
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0x6dd
	.uleb128 0x1
	.4byte	0x2364
	.byte	0
	.uleb128 0x5
	.4byte	0x23c3
	.uleb128 0x10
	.4byte	0x68
	.4byte	0x240e
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0x2076
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x5
	.4byte	0x23f0
	.uleb128 0x5
	.4byte	0xdd6
	.uleb128 0x5
	.4byte	0x1fb3
	.uleb128 0x5
	.4byte	0xbb7
	.uleb128 0x5
	.4byte	0x20b0
	.uleb128 0x5
	.4byte	0x20e5
	.uleb128 0x5
	.4byte	0x2110
	.uleb128 0x5
	.4byte	0x213b
	.uleb128 0x5
	.4byte	0xab
	.uleb128 0x5
	.4byte	0xf1
	.uleb128 0x5
	.4byte	0x2160
	.uleb128 0x19
	.4byte	0x32
	.4byte	0x2455
	.uleb128 0x1a
	.4byte	0x74
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	0x1753
	.uleb128 0x5
	.4byte	0x117d
	.uleb128 0x5
	.4byte	0x11a3
	.uleb128 0x5
	.4byte	0x11b0
	.uleb128 0x5
	.4byte	0x1c47
	.uleb128 0x5
	.4byte	0x1b2d
	.uleb128 0x5
	.4byte	0x11db
	.uleb128 0x5
	.4byte	0x11fd
	.uleb128 0x19
	.4byte	0xe5
	.4byte	0x248d
	.uleb128 0x1a
	.4byte	0x74
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	0x2268
	.uleb128 0xd
	.4byte	.LASF491
	.byte	0x1
	.2byte	0xbfc
	.byte	0xd
	.4byte	0x236e
	.uleb128 0xd
	.4byte	.LASF492
	.byte	0x1
	.2byte	0xc0d
	.byte	0xd
	.4byte	0x239b
	.uleb128 0x28
	.byte	0x7
	.4byte	0x32
	.byte	0x17
	.byte	0x8f
	.4byte	0x24cb
	.uleb128 0x3
	.4byte	.LASF493
	.byte	0
	.uleb128 0x3
	.4byte	.LASF494
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF495
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF496
	.byte	0x17
	.byte	0x93
	.byte	0x3
	.4byte	0x24ac
	.uleb128 0xd
	.4byte	.LASF497
	.byte	0x4
	.2byte	0x249
	.byte	0xd
	.4byte	0x24e4
	.uleb128 0x10
	.4byte	0x68
	.4byte	0x2511
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xf1
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	0x32
	.byte	0x4
	.2byte	0x2c6
	.byte	0xa
	.4byte	0x253e
	.uleb128 0x3
	.4byte	.LASF498
	.byte	0
	.uleb128 0x3
	.4byte	.LASF499
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF500
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF501
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF502
	.byte	0x4
	.byte	0
	.uleb128 0x21
	.4byte	.LASF503
	.byte	0xc
	.byte	0x4
	.2byte	0x353
	.byte	0x10
	.4byte	0x2596
	.uleb128 0x20
	.4byte	.LASF504
	.byte	0x4
	.2byte	0x354
	.byte	0x16
	.4byte	0x74
	.byte	0x1
	.byte	0
	.uleb128 0x20
	.4byte	.LASF505
	.byte	0x4
	.2byte	0x355
	.byte	0x16
	.4byte	0x74
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.4byte	.LASF506
	.byte	0x4
	.2byte	0x356
	.byte	0x16
	.4byte	0x74
	.byte	0x1
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF507
	.byte	0x4
	.2byte	0x357
	.byte	0x1c
	.4byte	0xdb
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF508
	.byte	0x4
	.2byte	0x358
	.byte	0x14
	.4byte	0x7b
	.byte	0x8
	.byte	0
	.uleb128 0x24
	.byte	0xc
	.byte	0x4
	.2byte	0x35b
	.byte	0x9
	.4byte	0x25cb
	.uleb128 0x2
	.4byte	.LASF507
	.byte	0x4
	.2byte	0x35c
	.byte	0x1c
	.4byte	0xdb
	.byte	0
	.uleb128 0x14
	.string	"len"
	.byte	0x4
	.2byte	0x35d
	.byte	0x14
	.4byte	0x7b
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF509
	.byte	0x4
	.2byte	0x35e
	.byte	0x16
	.4byte	0x74
	.byte	0x8
	.byte	0
	.uleb128 0x24
	.byte	0x44
	.byte	0x4
	.2byte	0x34c
	.byte	0x5
	.4byte	0x260d
	.uleb128 0x2
	.4byte	.LASF510
	.byte	0x4
	.2byte	0x34d
	.byte	0x10
	.4byte	0x7b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF511
	.byte	0x4
	.2byte	0x350
	.byte	0x11
	.4byte	0x93
	.byte	0x4
	.uleb128 0x14
	.string	"hs"
	.byte	0x4
	.2byte	0x359
	.byte	0xb
	.4byte	0x260d
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF512
	.byte	0x4
	.2byte	0x35f
	.byte	0xb
	.4byte	0x2596
	.byte	0x38
	.byte	0
	.uleb128 0x19
	.4byte	0x253e
	.4byte	0x261d
	.uleb128 0x1a
	.4byte	0x74
	.byte	0x3
	.byte	0
	.uleb128 0x24
	.byte	0x48
	.byte	0x4
	.2byte	0x3c6
	.byte	0x9
	.4byte	0x2652
	.uleb128 0x2
	.4byte	.LASF513
	.byte	0x4
	.2byte	0x3c7
	.byte	0x15
	.4byte	0x93
	.byte	0
	.uleb128 0x2
	.4byte	.LASF514
	.byte	0x4
	.2byte	0x3cb
	.byte	0x1b
	.4byte	0x4e4
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF515
	.byte	0x4
	.2byte	0x3cc
	.byte	0x14
	.4byte	0x7b
	.byte	0x44
	.byte	0
	.uleb128 0x24
	.byte	0x48
	.byte	0x4
	.2byte	0x3d0
	.byte	0x9
	.4byte	0x2687
	.uleb128 0x2
	.4byte	.LASF513
	.byte	0x4
	.2byte	0x3d1
	.byte	0x15
	.4byte	0x93
	.byte	0
	.uleb128 0x2
	.4byte	.LASF514
	.byte	0x4
	.2byte	0x3d5
	.byte	0x1b
	.4byte	0x4e4
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF515
	.byte	0x4
	.2byte	0x3d6
	.byte	0x14
	.4byte	0x7b
	.byte	0x44
	.byte	0
	.uleb128 0x37
	.byte	0x48
	.byte	0x4
	.2byte	0x3c4
	.byte	0x5
	.4byte	0x26a8
	.uleb128 0x39
	.4byte	.LASF516
	.2byte	0x3cd
	.4byte	0x261d
	.uleb128 0x39
	.4byte	.LASF517
	.2byte	0x3d7
	.4byte	0x2652
	.byte	0
	.uleb128 0x5
	.4byte	0x84c
	.uleb128 0x10
	.4byte	0x68
	.4byte	0x26c6
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x5
	.4byte	0x26ad
	.uleb128 0x10
	.4byte	0x68
	.4byte	0x26e4
	.uleb128 0x1
	.4byte	0x26e4
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x6dd
	.byte	0
	.uleb128 0x5
	.4byte	0x130a
	.uleb128 0x5
	.4byte	0x26cb
	.uleb128 0x10
	.4byte	0x68
	.4byte	0x2707
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x5
	.4byte	0x26ee
	.uleb128 0x5
	.4byte	0x24d7
	.uleb128 0x19
	.4byte	0x9f
	.4byte	0x2721
	.uleb128 0x1a
	.4byte	0x74
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.4byte	0x9f
	.uleb128 0x5
	.4byte	0x1ff9
	.uleb128 0x25
	.byte	0x1
	.4byte	0x32
	.byte	0x4
	.2byte	0xae2
	.byte	0xe
	.4byte	0x2752
	.uleb128 0x3
	.4byte	.LASF518
	.byte	0
	.uleb128 0x3
	.4byte	.LASF519
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF520
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF521
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF522
	.byte	0x4
	.2byte	0xae7
	.byte	0x3
	.4byte	0x272b
	.uleb128 0x26
	.4byte	.LASF536
	.byte	0x4
	.2byte	0x53b
	.4byte	0x2771
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF523
	.byte	0x4
	.2byte	0x5e1
	.byte	0x5
	.4byte	0x68
	.4byte	0x2788
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF524
	.byte	0x4
	.2byte	0x5dc
	.byte	0x5
	.4byte	0x68
	.4byte	0x279f
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF525
	.byte	0x4
	.2byte	0x5df
	.byte	0x5
	.4byte	0x68
	.4byte	0x27b6
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF526
	.byte	0x4
	.2byte	0x5da
	.byte	0x5
	.4byte	0x68
	.4byte	0x27cd
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF527
	.byte	0x4
	.2byte	0x5d5
	.byte	0x5
	.4byte	0x68
	.4byte	0x27e4
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF528
	.byte	0x4
	.2byte	0x5d7
	.byte	0x5
	.4byte	0x68
	.4byte	0x27fb
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF529
	.byte	0x4
	.2byte	0x564
	.byte	0x5
	.4byte	0x68
	.4byte	0x2812
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF530
	.byte	0xf
	.2byte	0x2ef
	.byte	0x5
	.4byte	0x68
	.4byte	0x2842
	.uleb128 0x1
	.4byte	0xddb
	.uleb128 0x1
	.4byte	0x47c
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0xe
	.4byte	.LASF531
	.byte	0x4
	.2byte	0x635
	.byte	0x13
	.4byte	0x746
	.4byte	0x2859
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0xe
	.4byte	.LASF532
	.byte	0x4
	.2byte	0x5f7
	.byte	0x5
	.4byte	0x68
	.4byte	0x2875
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0x832
	.byte	0
	.uleb128 0xe
	.4byte	.LASF533
	.byte	0x16
	.2byte	0x1ad
	.byte	0x5
	.4byte	0x68
	.4byte	0x28a5
	.uleb128 0x1
	.4byte	0x28a5
	.uleb128 0x1
	.4byte	0x6dd
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x28aa
	.uleb128 0x1
	.4byte	0xd4
	.byte	0
	.uleb128 0x5
	.4byte	0x108c
	.uleb128 0x5
	.4byte	0x141
	.uleb128 0xe
	.4byte	.LASF534
	.byte	0x16
	.2byte	0x18d
	.byte	0x5
	.4byte	0x68
	.4byte	0x28d0
	.uleb128 0x1
	.4byte	0x28a5
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0xe
	.4byte	.LASF535
	.byte	0x4
	.2byte	0x5b3
	.byte	0x5
	.4byte	0x68
	.4byte	0x28ec
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0x74
	.byte	0
	.uleb128 0x26
	.4byte	.LASF537
	.byte	0x4
	.2byte	0x6fd
	.4byte	0x28fe
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF538
	.byte	0xf
	.2byte	0x351
	.byte	0x5
	.4byte	0x68
	.4byte	0x293d
	.uleb128 0x1
	.4byte	0xddb
	.uleb128 0x1
	.4byte	0x47c
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x6dd
	.uleb128 0x1
	.4byte	0x28aa
	.uleb128 0x1
	.4byte	0xd4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF539
	.byte	0x4
	.2byte	0x639
	.byte	0xf
	.4byte	0x32
	.4byte	0x2954
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0xe
	.4byte	.LASF540
	.byte	0x4
	.2byte	0x713
	.byte	0x5
	.4byte	0x68
	.4byte	0x2984
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
	.uleb128 0xe
	.4byte	.LASF541
	.byte	0x4
	.2byte	0x638
	.byte	0x13
	.4byte	0x47c
	.4byte	0x299b
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x27
	.4byte	.LASF542
	.byte	0x17
	.byte	0xa5
	.4byte	0x29c5
	.uleb128 0x1
	.4byte	0x26e4
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0xf1
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x29c5
	.uleb128 0x1
	.4byte	0x24cb
	.byte	0
	.uleb128 0x5
	.4byte	0x1098
	.uleb128 0xe
	.4byte	.LASF543
	.byte	0x16
	.2byte	0x123
	.byte	0x5
	.4byte	0x68
	.4byte	0x29fa
	.uleb128 0x1
	.4byte	0x28a5
	.uleb128 0x1
	.4byte	0x6dd
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x28aa
	.uleb128 0x1
	.4byte	0xd4
	.byte	0
	.uleb128 0x22
	.4byte	.LASF544
	.byte	0x16
	.byte	0xfe
	.byte	0x5
	.4byte	0x68
	.4byte	0x2a15
	.uleb128 0x1
	.4byte	0x28a5
	.uleb128 0x1
	.4byte	0x213
	.byte	0
	.uleb128 0xe
	.4byte	.LASF545
	.byte	0x4
	.2byte	0x675
	.byte	0xd
	.4byte	0xf1
	.4byte	0x2a2c
	.uleb128 0x1
	.4byte	0x9f
	.byte	0
	.uleb128 0x26
	.4byte	.LASF546
	.byte	0x1
	.2byte	0xbea
	.4byte	0x2a43
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0xd4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF547
	.byte	0x16
	.2byte	0x157
	.byte	0x5
	.4byte	0x68
	.4byte	0x2a64
	.uleb128 0x1
	.4byte	0x28a5
	.uleb128 0x1
	.4byte	0x2a64
	.uleb128 0x1
	.4byte	0xfee
	.byte	0
	.uleb128 0x5
	.4byte	0x422
	.uleb128 0xe
	.4byte	.LASF548
	.byte	0x4
	.2byte	0x63d
	.byte	0x5
	.4byte	0x68
	.4byte	0x2a85
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0xe
	.4byte	.LASF549
	.byte	0x4
	.2byte	0xb3c
	.byte	0x5
	.4byte	0x68
	.4byte	0x2aab
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x6dd
	.byte	0
	.uleb128 0xe
	.4byte	.LASF550
	.byte	0x1
	.2byte	0x7f9
	.byte	0xd
	.4byte	0xf1
	.4byte	0x2ac2
	.uleb128 0x1
	.4byte	0x6f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF551
	.byte	0x4
	.2byte	0x55c
	.byte	0x5
	.4byte	0x68
	.4byte	0x2ad9
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF552
	.byte	0x4
	.2byte	0x5c0
	.byte	0x5
	.4byte	0x68
	.4byte	0x2afa
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0xe
	.4byte	.LASF553
	.byte	0x4
	.2byte	0x702
	.byte	0x5
	.4byte	0x68
	.4byte	0x2b11
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF554
	.byte	0x4
	.2byte	0x6d6
	.4byte	0x2b2d
	.uleb128 0x1
	.4byte	0xdb
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x21df
	.byte	0
	.uleb128 0xe
	.4byte	.LASF555
	.byte	0x4
	.2byte	0xaed
	.byte	0x14
	.4byte	0x2752
	.4byte	0x2b49
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x26a8
	.byte	0
	.uleb128 0xe
	.4byte	.LASF556
	.byte	0x4
	.2byte	0x543
	.byte	0xd
	.4byte	0xf1
	.4byte	0x2b60
	.uleb128 0x1
	.4byte	0x1170
	.byte	0
	.uleb128 0x26
	.4byte	.LASF557
	.byte	0x4
	.2byte	0x6fe
	.4byte	0x2b72
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF558
	.byte	0x4
	.2byte	0xb36
	.byte	0x5
	.4byte	0x68
	.4byte	0x2b93
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0xf0d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF559
	.byte	0x4
	.2byte	0x8fd
	.byte	0x5
	.4byte	0x68
	.4byte	0x2bb4
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0xf0d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF560
	.byte	0x4
	.2byte	0xb1f
	.byte	0x5
	.4byte	0x68
	.4byte	0x2bd5
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0xf0d
	.byte	0
	.uleb128 0x22
	.4byte	.LASF561
	.byte	0x18
	.byte	0x21
	.byte	0x8
	.4byte	0xd4
	.4byte	0x2bf5
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0xe
	.4byte	.LASF562
	.byte	0x4
	.2byte	0x6d8
	.byte	0xa
	.4byte	0x9f
	.4byte	0x2c11
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0x26
	.4byte	.LASF563
	.byte	0x4
	.2byte	0x709
	.4byte	0x2c23
	.uleb128 0x1
	.4byte	0x20e0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF564
	.byte	0x4
	.2byte	0x708
	.byte	0x5
	.4byte	0x68
	.4byte	0x2c3a
	.uleb128 0x1
	.4byte	0x26e4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF565
	.byte	0x4
	.2byte	0x5b6
	.byte	0x5
	.4byte	0x68
	.4byte	0x2c56
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0xe
	.4byte	.LASF566
	.byte	0x4
	.2byte	0x518
	.byte	0xe
	.4byte	0x74
	.4byte	0x2c72
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0x74
	.byte	0
	.uleb128 0xe
	.4byte	.LASF567
	.byte	0x4
	.2byte	0x634
	.byte	0xf
	.4byte	0x32
	.4byte	0x2c89
	.uleb128 0x1
	.4byte	0x746
	.byte	0
	.uleb128 0x22
	.4byte	.LASF568
	.byte	0x2
	.byte	0x15
	.byte	0x13
	.4byte	0x746
	.4byte	0x2c9f
	.uleb128 0x1
	.4byte	0x26a8
	.byte	0
	.uleb128 0x22
	.4byte	.LASF569
	.byte	0x2
	.byte	0x19
	.byte	0x5
	.4byte	0x68
	.4byte	0x2cb5
	.uleb128 0x1
	.4byte	0x26a8
	.byte	0
	.uleb128 0x22
	.4byte	.LASF570
	.byte	0x2
	.byte	0x18
	.byte	0x5
	.4byte	0x68
	.4byte	0x2ccb
	.uleb128 0x1
	.4byte	0x26a8
	.byte	0
	.uleb128 0xe
	.4byte	.LASF571
	.byte	0x10
	.2byte	0x1d0
	.byte	0x22
	.4byte	0x26a8
	.4byte	0x2ce2
	.uleb128 0x1
	.4byte	0x68
	.byte	0
	.uleb128 0xe
	.4byte	.LASF572
	.byte	0x4
	.2byte	0x6cf
	.byte	0x5
	.4byte	0x68
	.4byte	0x2d0d
	.uleb128 0x1
	.4byte	0xf08
	.uleb128 0x1
	.4byte	0x26a8
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0x21df
	.uleb128 0x1
	.4byte	0x2364
	.byte	0
	.uleb128 0xe
	.4byte	.LASF573
	.byte	0xf
	.2byte	0x1c8
	.byte	0x5
	.4byte	0x68
	.4byte	0x2d29
	.uleb128 0x1
	.4byte	0x2d29
	.uleb128 0x1
	.4byte	0x746
	.byte	0
	.uleb128 0x5
	.4byte	0x7a2
	.uleb128 0x27
	.4byte	.LASF574
	.byte	0x17
	.byte	0x86
	.4byte	0x2d58
	.uleb128 0x1
	.4byte	0x26e4
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0xf1
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0xf1
	.uleb128 0x1
	.4byte	0xf08
	.byte	0
	.uleb128 0x22
	.4byte	.LASF575
	.byte	0x2
	.byte	0x10
	.byte	0x13
	.4byte	0x746
	.4byte	0x2d6e
	.uleb128 0x1
	.4byte	0x26a8
	.byte	0
	.uleb128 0xe
	.4byte	.LASF576
	.byte	0xf
	.2byte	0x400
	.byte	0x13
	.4byte	0x746
	.4byte	0x2d85
	.uleb128 0x1
	.4byte	0x2d29
	.byte	0
	.uleb128 0x27
	.4byte	.LASF577
	.byte	0x9
	.byte	0x9f
	.4byte	0x2d9b
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x27
	.4byte	.LASF578
	.byte	0x17
	.byte	0x31
	.4byte	0x2dc5
	.uleb128 0x1
	.4byte	0x26e4
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
	.uleb128 0x26
	.4byte	.LASF579
	.byte	0x1
	.2byte	0x167f
	.4byte	0x2dd7
	.uleb128 0x1
	.4byte	0x2076
	.byte	0
	.uleb128 0x26
	.4byte	.LASF580
	.byte	0x1
	.2byte	0x1674
	.4byte	0x2de9
	.uleb128 0x1
	.4byte	0x2076
	.byte	0
	.uleb128 0x27
	.4byte	.LASF581
	.byte	0x17
	.byte	0x46
	.4byte	0x2e18
	.uleb128 0x1
	.4byte	0x26e4
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0xf1
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0xf1
	.uleb128 0x1
	.4byte	0xf0d
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0xe
	.4byte	.LASF582
	.byte	0x4
	.2byte	0x662
	.byte	0x16
	.4byte	0x213
	.4byte	0x2e2f
	.uleb128 0x1
	.4byte	0x9f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF583
	.byte	0x1
	.2byte	0x14fd
	.byte	0x5
	.4byte	0x68
	.4byte	0x2e50
	.uleb128 0x1
	.4byte	0x20e0
	.uleb128 0x1
	.4byte	0x32
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x27
	.4byte	.LASF584
	.byte	0x17
	.byte	0x1e
	.4byte	0x2e76
	.uleb128 0x1
	.4byte	0x26e4
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0xf1
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0xf1
	.uleb128 0x44
	.byte	0
	.uleb128 0x22
	.4byte	.LASF585
	.byte	0x19
	.byte	0x20
	.byte	0x5
	.4byte	0x68
	.4byte	0x2e96
	.uleb128 0x1
	.4byte	0xf6
	.uleb128 0x1
	.4byte	0xf6
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x22
	.4byte	.LASF586
	.byte	0x18
	.byte	0x1f
	.byte	0x8
	.4byte	0xd4
	.4byte	0x2eb6
	.uleb128 0x1
	.4byte	0xd6
	.uleb128 0x1
	.4byte	0xfb
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x22
	.4byte	.LASF587
	.byte	0x1a
	.byte	0x5a
	.byte	0x7
	.4byte	0xd4
	.4byte	0x2ed1
	.uleb128 0x1
	.4byte	0x7b
	.uleb128 0x1
	.4byte	0x7b
	.byte	0
	.uleb128 0x27
	.4byte	.LASF588
	.byte	0x1a
	.byte	0x5e
	.4byte	0x2ee2
	.uleb128 0x1
	.4byte	0xd4
	.byte	0
	.uleb128 0x45
	.4byte	.LASF695
	.byte	0x5
	.2byte	0x113c
	.byte	0x6
	.4byte	.LFB204
	.4byte	.LFE204-.LFB204
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f1a
	.uleb128 0x12
	.4byte	.LASF262
	.byte	0x5
	.2byte	0x113c
	.byte	0x3c
	.4byte	0x2f1a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF589
	.byte	0x5
	.2byte	0x113c
	.byte	0x46
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.4byte	0x1746
	.uleb128 0x46
	.4byte	.LASF697
	.byte	0x5
	.2byte	0x10cc
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB203
	.4byte	.LFE203-.LFB203
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f5b
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0x10cc
	.byte	0x3c
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.string	"ret"
	.byte	0x5
	.2byte	0x10ce
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF592
	.byte	0x5
	.2byte	0x1092
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB202
	.4byte	.LFE202-.LFB202
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x300e
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0x1092
	.byte	0x3e
	.4byte	0x20e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xb
	.string	"ret"
	.byte	0x5
	.2byte	0x1094
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF590
	.byte	0x5
	.2byte	0x1095
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF591
	.byte	0x5
	.2byte	0x1096
	.byte	0xe
	.4byte	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.4byte	0x4c04
	.4byte	.LBB156
	.4byte	.LBE156-.LBB156
	.2byte	0x10b4
	.byte	0x64
	.4byte	0x2fe4
	.uleb128 0x9
	.4byte	0x4c0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	0x4c17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.4byte	0x4c20
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x15
	.4byte	0x4c31
	.4byte	.LBB158
	.4byte	.LBE158-.LBB158
	.2byte	0x10b5
	.byte	0x60
	.uleb128 0x9
	.4byte	0x4c3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	0x4c44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0xc
	.4byte	0x4c4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF593
	.byte	0x5
	.2byte	0xff2
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB201
	.4byte	.LFE201-.LFB201
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3122
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0xff2
	.byte	0x3e
	.4byte	0x20e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0xb
	.string	"ret"
	.byte	0x5
	.2byte	0xff4
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"i"
	.byte	0x5
	.2byte	0xff5
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF594
	.byte	0x5
	.2byte	0xff5
	.byte	0xf
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF595
	.byte	0x5
	.2byte	0xff6
	.byte	0x13
	.4byte	0x21fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x4
	.4byte	.LASF596
	.byte	0x5
	.2byte	0xff7
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF597
	.byte	0x5
	.2byte	0xff8
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF598
	.byte	0x5
	.2byte	0xff9
	.byte	0x17
	.4byte	0x746
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x4
	.4byte	.LASF599
	.byte	0x5
	.2byte	0xffa
	.byte	0x17
	.4byte	0x47c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x4
	.4byte	.LASF422
	.byte	0x5
	.2byte	0xffb
	.byte	0x26
	.4byte	0x26a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF600
	.byte	0x5
	.2byte	0xffd
	.byte	0x19
	.4byte	0xddb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.4byte	.LBB155
	.4byte	.LBE155-.LBB155
	.4byte	0x30f8
	.uleb128 0x4
	.4byte	.LASF601
	.byte	0x5
	.2byte	0x1075
	.byte	0x10
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.uleb128 0x15
	.4byte	0x4c5e
	.4byte	.LBB153
	.4byte	.LBE153-.LBB153
	.2byte	0x106b
	.byte	0x5c
	.uleb128 0x9
	.4byte	0x4c6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.4byte	0x4c74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0xc
	.4byte	0x4c7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF602
	.byte	0x5
	.2byte	0xe3a
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB200
	.4byte	.LFE200-.LFB200
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x318c
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0xe3a
	.byte	0x3f
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.string	"ret"
	.byte	0x5
	.2byte	0xe3c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF422
	.byte	0x5
	.2byte	0xe3d
	.byte	0x26
	.4byte	0x26a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"p"
	.byte	0x5
	.2byte	0xe3e
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.string	"end"
	.byte	0x5
	.2byte	0xe3e
	.byte	0x18
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x11
	.4byte	.LASF603
	.byte	0x5
	.2byte	0xe04
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB199
	.4byte	.LFE199-.LFB199
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x321d
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0xe04
	.byte	0x3f
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"p"
	.byte	0x5
	.2byte	0xe04
	.byte	0x54
	.4byte	0x2391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"end"
	.byte	0x5
	.2byte	0xe05
	.byte	0x3f
	.4byte	0xf0d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xb
	.string	"ret"
	.byte	0x5
	.2byte	0xe07
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"n"
	.byte	0x5
	.2byte	0xe08
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x15
	.4byte	0x4c5e
	.4byte	.LBB151
	.4byte	.LBE151-.LBB151
	.2byte	0xe17
	.byte	0x4d
	.uleb128 0x9
	.4byte	0x4c6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.4byte	0x4c74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0xc
	.4byte	0x4c7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF604
	.byte	0x5
	.2byte	0xcf9
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB198
	.4byte	.LFE198-.LFB198
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3259
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0xcf9
	.byte	0x3d
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.string	"ret"
	.byte	0x5
	.2byte	0xcfb
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF605
	.byte	0x5
	.2byte	0xc99
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB197
	.4byte	.LFE197-.LFB197
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x32b5
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0xc99
	.byte	0x3f
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.string	"ret"
	.byte	0x5
	.2byte	0xc9b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF606
	.byte	0x5
	.2byte	0xc9c
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF422
	.byte	0x5
	.2byte	0xc9e
	.byte	0x26
	.4byte	0x26a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF607
	.byte	0x5
	.2byte	0xad6
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB196
	.4byte	.LFE196-.LFB196
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3407
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0xad6
	.byte	0x41
	.4byte	0x20e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x12
	.4byte	.LASF606
	.byte	0x5
	.2byte	0xad7
	.byte	0x34
	.4byte	0x6dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x4
	.4byte	.LASF422
	.byte	0x5
	.2byte	0xad9
	.byte	0x26
	.4byte	0x26a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF608
	.byte	0x5
	.2byte	0xade
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF317
	.byte	0x5
	.2byte	0xae9
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.4byte	.LASF629
	.2byte	0xb95
	.4byte	.L463
	.uleb128 0x1e
	.4byte	.LBB149
	.4byte	.LBE149-.LBB149
	.4byte	0x338b
	.uleb128 0x4
	.4byte	.LASF609
	.byte	0x5
	.2byte	0xb83
	.byte	0x13
	.4byte	0x2721
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF377
	.byte	0x5
	.2byte	0xb84
	.byte	0x19
	.4byte	0x2436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.string	"ret"
	.byte	0x5
	.2byte	0xb85
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"len"
	.byte	0x5
	.2byte	0xb86
	.byte	0x10
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF610
	.byte	0x5
	.2byte	0xbf1
	.byte	0x1e
	.4byte	0x213
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.byte	0
	.uleb128 0x47
	.4byte	.LBB150
	.4byte	.LBE150-.LBB150
	.uleb128 0x4
	.4byte	.LASF611
	.byte	0x5
	.2byte	0xc1c
	.byte	0x10
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF597
	.byte	0x5
	.2byte	0xc1d
	.byte	0x10
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.4byte	.LASF595
	.byte	0x5
	.2byte	0xc1e
	.byte	0x17
	.4byte	0x4e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xb
	.string	"ret"
	.byte	0x5
	.2byte	0xc20
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF612
	.byte	0x5
	.2byte	0xc28
	.byte	0x1b
	.4byte	0x746
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x4
	.4byte	.LASF613
	.byte	0x5
	.2byte	0xc2b
	.byte	0x17
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0x4
	.4byte	.LASF599
	.byte	0x5
	.2byte	0xc2f
	.byte	0x1b
	.4byte	0x47c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -55
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF614
	.byte	0x5
	.2byte	0xabb
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB195
	.4byte	.LFE195-.LFB195
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3473
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0xabb
	.byte	0x40
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LASF606
	.byte	0x5
	.2byte	0xabc
	.byte	0x33
	.4byte	0x6dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF615
	.byte	0x5
	.2byte	0xac3
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF616
	.byte	0x5
	.2byte	0xac4
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"ret"
	.byte	0x5
	.2byte	0xac6
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x11
	.4byte	.LASF617
	.byte	0x5
	.2byte	0xa9c
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB194
	.4byte	.LFE194-.LFB194
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x34bf
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0xa9c
	.byte	0x3f
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.string	"ret"
	.byte	0x5
	.2byte	0xa9e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF618
	.byte	0x5
	.2byte	0xaa0
	.byte	0x1f
	.4byte	0x2d29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF619
	.byte	0x5
	.2byte	0x95a
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB193
	.4byte	.LFE193-.LFB193
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3680
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0x95a
	.byte	0x3f
	.4byte	0x20e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0xb
	.string	"ret"
	.byte	0x5
	.2byte	0x95c
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF422
	.byte	0x5
	.2byte	0x95d
	.byte	0x26
	.4byte	0x26a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF620
	.byte	0x5
	.2byte	0x95f
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0x4
	.4byte	.LASF621
	.byte	0x5
	.2byte	0x95f
	.byte	0x17
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x4
	.4byte	.LASF622
	.byte	0x5
	.2byte	0x960
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF623
	.byte	0x5
	.2byte	0x960
	.byte	0x14
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.string	"buf"
	.byte	0x5
	.2byte	0x961
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.string	"p"
	.byte	0x5
	.2byte	0x961
	.byte	0x1a
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"end"
	.byte	0x5
	.2byte	0x962
	.byte	0x21
	.4byte	0xf12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xb
	.string	"crt"
	.byte	0x5
	.2byte	0x963
	.byte	0x1d
	.4byte	0xf08
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF336
	.byte	0x5
	.2byte	0x964
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF612
	.byte	0x5
	.2byte	0x9a7
	.byte	0x15
	.4byte	0x2436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.4byte	.LBB140
	.4byte	.LBE140-.LBB140
	.4byte	0x35f3
	.uleb128 0x4
	.4byte	.LASF595
	.byte	0x5
	.2byte	0x9ad
	.byte	0x17
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -63
	.uleb128 0x15
	.4byte	0x4c31
	.4byte	.LBB141
	.4byte	.LBE141-.LBB141
	.2byte	0x9ba
	.byte	0x62
	.uleb128 0x9
	.4byte	0x4c3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x9
	.4byte	0x4c44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0xc
	.4byte	0x4c4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x4c31
	.4byte	.LBB143
	.4byte	.LBE143-.LBB143
	.2byte	0x9bf
	.byte	0x57
	.4byte	0x3623
	.uleb128 0x9
	.4byte	0x4c3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x9
	.4byte	0x4c44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -82
	.uleb128 0xc
	.4byte	0x4c4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x18
	.4byte	0x4c31
	.4byte	.LBB145
	.4byte	.LBE145-.LBB145
	.2byte	0x9ec
	.byte	0x60
	.4byte	0x3653
	.uleb128 0x9
	.4byte	0x4c3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x9
	.4byte	0x4c44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -94
	.uleb128 0xc
	.4byte	0x4c4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0x15
	.4byte	0x4c31
	.4byte	.LBB147
	.4byte	.LBE147-.LBB147
	.2byte	0x9fb
	.byte	0x7b
	.uleb128 0x9
	.4byte	0x4c3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x9
	.4byte	0x4c44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -106
	.uleb128 0xc
	.4byte	0x4c4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF624
	.byte	0x5
	.2byte	0x85c
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB192
	.4byte	.LFE192-.LFB192
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3781
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0x85c
	.byte	0x38
	.4byte	0x20e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xb
	.string	"ret"
	.byte	0x5
	.2byte	0x861
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF625
	.byte	0x5
	.2byte	0x862
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x4
	.4byte	.LASF626
	.byte	0x5
	.2byte	0x862
	.byte	0x12
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.string	"n"
	.byte	0x5
	.2byte	0x862
	.byte	0x1f
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"buf"
	.byte	0x5
	.2byte	0x863
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.string	"p"
	.byte	0x5
	.2byte	0x863
	.byte	0x1a
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF627
	.byte	0x5
	.2byte	0x917
	.byte	0x26
	.4byte	0x26a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"end"
	.byte	0x5
	.2byte	0x925
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.4byte	0x4c31
	.4byte	.LBB136
	.4byte	.LBE136-.LBB136
	.2byte	0x8ec
	.byte	0x74
	.4byte	0x3756
	.uleb128 0x9
	.4byte	0x4c3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.4byte	0x4c44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0xc
	.4byte	0x4c4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x15
	.4byte	0x4c31
	.4byte	.LBB138
	.4byte	.LBE138-.LBB138
	.2byte	0x937
	.byte	0x5c
	.uleb128 0x9
	.4byte	0x4c3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x9
	.4byte	0x4c44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0xc
	.4byte	0x4c4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF633
	.byte	0x5
	.2byte	0x828
	.byte	0xd
	.4byte	.LFB191
	.4byte	.LFE191-.LFB191
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x37e6
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0x828
	.byte	0x49
	.4byte	0x20e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0xb
	.string	"ret"
	.byte	0x5
	.2byte	0x82a
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF628
	.byte	0x5
	.2byte	0x82b
	.byte	0x19
	.4byte	0x1219
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x4
	.4byte	.LASF274
	.byte	0x5
	.2byte	0x82c
	.byte	0x21
	.4byte	0x207b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.4byte	.LASF630
	.2byte	0x856
	.4byte	.L398
	.byte	0
	.uleb128 0x11
	.4byte	.LASF631
	.byte	0x5
	.2byte	0x7e6
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB190
	.4byte	.LFE190-.LFB190
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3840
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0x7e6
	.byte	0x40
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.string	"ret"
	.byte	0x5
	.2byte	0x7e8
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"p"
	.byte	0x5
	.2byte	0x7e9
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF632
	.byte	0x5
	.2byte	0x7ea
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF634
	.byte	0x5
	.2byte	0x7a6
	.byte	0xd
	.4byte	.LFB189
	.4byte	.LFE189-.LFB189
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x394f
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0x7a6
	.byte	0x39
	.4byte	0x20e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x6
	.string	"buf"
	.byte	0x5
	.2byte	0x7a7
	.byte	0x33
	.4byte	0xdb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x12
	.4byte	.LASF625
	.byte	0x5
	.2byte	0x7a8
	.byte	0x2c
	.4byte	0x6dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x4
	.4byte	.LASF473
	.byte	0x5
	.2byte	0x7aa
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF626
	.byte	0x5
	.2byte	0x7aa
	.byte	0x19
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF635
	.byte	0x5
	.2byte	0x7ab
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xb
	.string	"end"
	.byte	0x5
	.2byte	0x7ac
	.byte	0x1a
	.4byte	0xf0d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.4byte	0x4c31
	.4byte	.LBB130
	.4byte	.LBE130-.LBB130
	.2byte	0x7c9
	.byte	0x55
	.4byte	0x38f7
	.uleb128 0x9
	.4byte	0x4c3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	0x4c44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0xc
	.4byte	0x4c4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x18
	.4byte	0x4c31
	.4byte	.LBB132
	.4byte	.LBE132-.LBB132
	.2byte	0x7cf
	.byte	0x5a
	.4byte	0x3924
	.uleb128 0x9
	.4byte	0x4c3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.4byte	0x4c44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0xc
	.4byte	0x4c4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x15
	.4byte	0x4c31
	.4byte	.LBB134
	.4byte	.LBE134-.LBB134
	.2byte	0x7d7
	.byte	0x64
	.uleb128 0x9
	.4byte	0x4c3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x9
	.4byte	0x4c44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0xc
	.4byte	0x4c4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF636
	.byte	0x5
	.2byte	0x750
	.byte	0xd
	.4byte	.LFB188
	.4byte	.LFE188-.LFB188
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x39ce
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0x750
	.byte	0x48
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"buf"
	.byte	0x5
	.2byte	0x751
	.byte	0x42
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.4byte	.LASF625
	.byte	0x5
	.2byte	0x752
	.byte	0x3b
	.4byte	0x6dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.string	"p"
	.byte	0x5
	.2byte	0x754
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	0x4c31
	.4byte	.LBB128
	.4byte	.LBE128-.LBB128
	.2byte	0x75f
	.byte	0x53
	.uleb128 0x9
	.4byte	0x4c3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	0x4c44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xc
	.4byte	0x4c4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF637
	.byte	0x5
	.2byte	0x734
	.byte	0xd
	.4byte	.LFB187
	.4byte	.LFE187-.LFB187
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a4d
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0x734
	.byte	0x44
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"buf"
	.byte	0x5
	.2byte	0x735
	.byte	0x3e
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.4byte	.LASF625
	.byte	0x5
	.2byte	0x736
	.byte	0x37
	.4byte	0x6dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.string	"p"
	.byte	0x5
	.2byte	0x738
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	0x4c31
	.4byte	.LBB126
	.4byte	.LBE126-.LBB126
	.2byte	0x741
	.byte	0x52
	.uleb128 0x9
	.4byte	0x4c3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	0x4c44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xc
	.4byte	0x4c4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF638
	.byte	0x5
	.2byte	0x70e
	.byte	0xd
	.4byte	.LFB186
	.4byte	.LFE186-.LFB186
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3acc
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0x70e
	.byte	0x3e
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"buf"
	.byte	0x5
	.2byte	0x70f
	.byte	0x38
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.4byte	.LASF625
	.byte	0x5
	.2byte	0x710
	.byte	0x31
	.4byte	0x6dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.string	"p"
	.byte	0x5
	.2byte	0x712
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	0x4c31
	.4byte	.LBB124
	.4byte	.LBE124-.LBB124
	.2byte	0x71b
	.byte	0x57
	.uleb128 0x9
	.4byte	0x4c3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	0x4c44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xc
	.4byte	0x4c4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF639
	.byte	0x5
	.2byte	0x6f7
	.byte	0xd
	.4byte	.LFB185
	.4byte	.LFE185-.LFB185
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b4b
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0x6f7
	.byte	0x3f
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"buf"
	.byte	0x5
	.2byte	0x6f8
	.byte	0x39
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.4byte	.LASF625
	.byte	0x5
	.2byte	0x6f9
	.byte	0x32
	.4byte	0x6dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.string	"p"
	.byte	0x5
	.2byte	0x6fb
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	0x4c31
	.4byte	.LBB122
	.4byte	.LBE122-.LBB122
	.2byte	0x704
	.byte	0x53
	.uleb128 0x9
	.4byte	0x4c3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	0x4c44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xc
	.4byte	0x4c4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF640
	.byte	0x5
	.2byte	0x6de
	.byte	0xd
	.4byte	.LFB184
	.4byte	.LFE184-.LFB184
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3bca
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0x6de
	.byte	0x3c
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"buf"
	.byte	0x5
	.2byte	0x6df
	.byte	0x36
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.4byte	.LASF625
	.byte	0x5
	.2byte	0x6e0
	.byte	0x2f
	.4byte	0x6dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.string	"p"
	.byte	0x5
	.2byte	0x6e2
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	0x4c31
	.4byte	.LBB120
	.4byte	.LBE120-.LBB120
	.2byte	0x6ec
	.byte	0x57
	.uleb128 0x9
	.4byte	0x4c3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	0x4c44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xc
	.4byte	0x4c4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF641
	.byte	0x5
	.2byte	0x6b0
	.byte	0xd
	.4byte	.LFB183
	.4byte	.LFE183-.LFB183
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c77
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0x6b0
	.byte	0x41
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"buf"
	.byte	0x5
	.2byte	0x6b1
	.byte	0x3b
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.4byte	.LASF625
	.byte	0x5
	.2byte	0x6b2
	.byte	0x34
	.4byte	0x6dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xb
	.string	"p"
	.byte	0x5
	.2byte	0x6b4
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF627
	.byte	0x5
	.2byte	0x6b5
	.byte	0x26
	.4byte	0x26a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.4byte	.LBB117
	.4byte	.LBE117-.LBB117
	.4byte	0x3c4d
	.uleb128 0x4
	.4byte	.LASF642
	.byte	0x5
	.2byte	0x6c2
	.byte	0x1c
	.4byte	0x2752
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x15
	.4byte	0x4c31
	.4byte	.LBB118
	.4byte	.LBE118-.LBB118
	.2byte	0x6d3
	.byte	0x53
	.uleb128 0x9
	.4byte	0x4c3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.4byte	0x4c44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0xc
	.4byte	0x4c4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF643
	.byte	0x5
	.2byte	0x684
	.byte	0xd
	.4byte	.LFB182
	.4byte	.LFE182-.LFB182
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d46
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0x684
	.byte	0x34
	.4byte	0x20e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x6
	.string	"buf"
	.byte	0x5
	.2byte	0x685
	.byte	0x2e
	.4byte	0xdb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x12
	.4byte	.LASF625
	.byte	0x5
	.2byte	0x686
	.byte	0x27
	.4byte	0x6dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xb
	.string	"p"
	.byte	0x5
	.2byte	0x688
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF626
	.byte	0x5
	.2byte	0x689
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.string	"end"
	.byte	0x5
	.2byte	0x68a
	.byte	0x1a
	.4byte	0xf0d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.4byte	0x4c31
	.4byte	.LBB113
	.4byte	.LBE113-.LBB113
	.2byte	0x6a2
	.byte	0x53
	.4byte	0x3d1c
	.uleb128 0x9
	.4byte	0x4c3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.4byte	0x4c44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0xc
	.4byte	0x4c4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x15
	.4byte	0x4c31
	.4byte	.LBB115
	.4byte	.LBE115-.LBB115
	.2byte	0x6a5
	.byte	0x58
	.uleb128 0x9
	.4byte	0x4c3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.4byte	0x4c44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0xc
	.4byte	0x4c4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF644
	.byte	0x5
	.2byte	0x379
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB181
	.4byte	.LFE181-.LFB181
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41dd
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0x379
	.byte	0x38
	.4byte	0x20e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0xb
	.string	"ret"
	.byte	0x5
	.2byte	0x37b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.4byte	.LASF645
	.byte	0x5
	.2byte	0x37b
	.byte	0xe
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"i"
	.byte	0x5
	.2byte	0x37c
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"j"
	.byte	0x5
	.2byte	0x37c
	.byte	0xf
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF646
	.byte	0x5
	.2byte	0x37d
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF647
	.byte	0x5
	.2byte	0x37d
	.byte	0x19
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x4
	.4byte	.LASF648
	.byte	0x5
	.2byte	0x37d
	.byte	0x26
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x4
	.4byte	.LASF649
	.byte	0x5
	.2byte	0x37e
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF650
	.byte	0x5
	.2byte	0x37e
	.byte	0x15
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x4
	.4byte	.LASF651
	.byte	0x5
	.2byte	0x37e
	.byte	0x1f
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x4
	.4byte	.LASF652
	.byte	0x5
	.2byte	0x37e
	.byte	0x29
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x4
	.4byte	.LASF626
	.byte	0x5
	.2byte	0x37e
	.byte	0x33
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF653
	.byte	0x5
	.2byte	0x380
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x4
	.4byte	.LASF438
	.byte	0x5
	.2byte	0x380
	.byte	0x1b
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xb
	.string	"buf"
	.byte	0x5
	.2byte	0x382
	.byte	0x14
	.4byte	0xdb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xb
	.string	"p"
	.byte	0x5
	.2byte	0x382
	.byte	0x1a
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.string	"ext"
	.byte	0x5
	.2byte	0x382
	.byte	0x1e
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF654
	.byte	0x5
	.2byte	0x384
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF655
	.byte	0x5
	.2byte	0x386
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF656
	.byte	0x5
	.2byte	0x387
	.byte	0x10
	.4byte	0x22eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x4
	.4byte	.LASF422
	.byte	0x5
	.2byte	0x388
	.byte	0x26
	.4byte	0x26a8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x4
	.4byte	.LASF657
	.byte	0x5
	.2byte	0x38e
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF658
	.byte	0x5
	.2byte	0x393
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.4byte	.LASF659
	.2byte	0x396
	.4byte	.L217
	.uleb128 0x30
	.4byte	.LASF660
	.2byte	0x661
	.4byte	.L315
	.uleb128 0x4
	.4byte	.LASF612
	.byte	0x5
	.2byte	0x672
	.byte	0x17
	.4byte	0x746
	.uleb128 0x3
	.byte	0x91
	.sleb128 -129
	.uleb128 0x1e
	.4byte	.LBB91
	.4byte	.LBE91-.LBB91
	.4byte	0x3f59
	.uleb128 0x4
	.4byte	.LASF661
	.byte	0x5
	.2byte	0x42e
	.byte	0x1a
	.4byte	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x15
	.4byte	0x4c5e
	.4byte	.LBB92
	.4byte	.LBE92-.LBB92
	.2byte	0x42e
	.byte	0x84
	.uleb128 0x9
	.4byte	0x4c6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0xc
	.4byte	0x4c74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -178
	.uleb128 0xc
	.4byte	0x4c7d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB94
	.4byte	.LBE94-.LBB94
	.4byte	0x3fa4
	.uleb128 0x4
	.4byte	.LASF661
	.byte	0x5
	.2byte	0x43a
	.byte	0x1a
	.4byte	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x15
	.4byte	0x4c5e
	.4byte	.LBB95
	.4byte	.LBE95-.LBB95
	.2byte	0x43a
	.byte	0x84
	.uleb128 0x9
	.4byte	0x4c6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0xc
	.4byte	0x4c74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -190
	.uleb128 0xc
	.4byte	0x4c7d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB97
	.4byte	.LBE97-.LBB97
	.4byte	0x3fe5
	.uleb128 0x4
	.4byte	.LASF662
	.byte	0x5
	.2byte	0x443
	.byte	0x14
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x4
	.4byte	.LASF663
	.byte	0x5
	.2byte	0x443
	.byte	0x25
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x4
	.4byte	.LASF664
	.byte	0x5
	.2byte	0x443
	.byte	0x36
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB102
	.4byte	.LBE102-.LBB102
	.4byte	0x4071
	.uleb128 0x4
	.4byte	.LASF665
	.byte	0x5
	.2byte	0x513
	.byte	0x16
	.4byte	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x4
	.4byte	.LASF666
	.byte	0x5
	.2byte	0x514
	.byte	0x16
	.4byte	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x18
	.4byte	0x4c5e
	.4byte	.LBB103
	.4byte	.LBE103-.LBB103
	.2byte	0x51b
	.byte	0x57
	.4byte	0x4044
	.uleb128 0x9
	.4byte	0x4c6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0xc
	.4byte	0x4c74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -238
	.uleb128 0xc
	.4byte	0x4c7d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.byte	0
	.uleb128 0x15
	.4byte	0x4c5e
	.4byte	.LBB105
	.4byte	.LBE105-.LBB105
	.2byte	0x51c
	.byte	0x59
	.uleb128 0x9
	.4byte	0x4c6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0xc
	.4byte	0x4c74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -226
	.uleb128 0xc
	.4byte	0x4c7d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB107
	.4byte	.LBE107-.LBB107
	.4byte	0x40a1
	.uleb128 0x4
	.4byte	.LASF427
	.byte	0x5
	.2byte	0x5cb
	.byte	0x13
	.4byte	0x2721
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x4
	.4byte	.LASF667
	.byte	0x5
	.2byte	0x5cc
	.byte	0x18
	.4byte	0x41dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB112
	.4byte	.LBE112-.LBB112
	.4byte	0x40c0
	.uleb128 0x4
	.4byte	.LASF613
	.byte	0x5
	.2byte	0x674
	.byte	0x16
	.4byte	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x18
	.4byte	0x4c5e
	.4byte	.LBB87
	.4byte	.LBE87-.LBB87
	.2byte	0x3c1
	.byte	0xf8
	.4byte	0x40f0
	.uleb128 0x9
	.4byte	0x4c6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0xc
	.4byte	0x4c74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -154
	.uleb128 0xc
	.4byte	0x4c7d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x18
	.4byte	0x4c5e
	.4byte	.LBB89
	.4byte	.LBE89-.LBB89
	.2byte	0x3e6
	.byte	0x5c
	.4byte	0x4120
	.uleb128 0x9
	.4byte	0x4c6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0xc
	.4byte	0x4c74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -166
	.uleb128 0xc
	.4byte	0x4c7d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.byte	0
	.uleb128 0x18
	.4byte	0x4c5e
	.4byte	.LBB98
	.4byte	.LBE98-.LBB98
	.2byte	0x4d3
	.byte	0x5f
	.4byte	0x4150
	.uleb128 0x9
	.4byte	0x4c6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0xc
	.4byte	0x4c74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -202
	.uleb128 0xc
	.4byte	0x4c7d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0x18
	.4byte	0x4c5e
	.4byte	.LBB100
	.4byte	.LBE100-.LBB100
	.2byte	0x503
	.byte	0x61
	.4byte	0x4180
	.uleb128 0x9
	.4byte	0x4c6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0xc
	.4byte	0x4c74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -214
	.uleb128 0xc
	.4byte	0x4c7d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.byte	0
	.uleb128 0x18
	.4byte	0x4c5e
	.4byte	.LBB108
	.4byte	.LBE108-.LBB108
	.2byte	0x62f
	.byte	0x58
	.4byte	0x41b0
	.uleb128 0x9
	.4byte	0x4c6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0xc
	.4byte	0x4c74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -250
	.uleb128 0xc
	.4byte	0x4c7d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.uleb128 0x15
	.4byte	0x4c5e
	.4byte	.LBB110
	.4byte	.LBE110-.LBB110
	.2byte	0x642
	.byte	0x58
	.uleb128 0x9
	.4byte	0x4c6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0xc
	.4byte	0x4c74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -262
	.uleb128 0xc
	.4byte	0x4c7d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0xab
	.4byte	0x41ed
	.uleb128 0x1a
	.4byte	0x74
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF668
	.byte	0x5
	.2byte	0x31d
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB180
	.4byte	.LFE180-.LFB180
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4259
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0x31d
	.byte	0x37
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LASF669
	.byte	0x5
	.2byte	0x31d
	.byte	0x40
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.4byte	.LASF422
	.byte	0x5
	.2byte	0x31e
	.byte	0x44
	.4byte	0x4259
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF670
	.byte	0x5
	.2byte	0x320
	.byte	0x26
	.4byte	0x26a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF671
	.byte	0x5
	.2byte	0x323
	.byte	0x17
	.4byte	0x746
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x5
	.4byte	0x26a8
	.uleb128 0x11
	.4byte	.LASF672
	.byte	0x5
	.2byte	0x2af
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB179
	.4byte	.LFE179-.LFB179
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4300
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0x2af
	.byte	0x2f
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.4byte	.LASF422
	.byte	0x5
	.2byte	0x2b0
	.byte	0x3b
	.4byte	0x26a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.string	"cur"
	.byte	0x5
	.2byte	0x2b2
	.byte	0x1b
	.4byte	0x2418
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF673
	.byte	0x5
	.2byte	0x2b2
	.byte	0x21
	.4byte	0x2418
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF598
	.byte	0x5
	.2byte	0x2b9
	.byte	0x17
	.4byte	0x746
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x4
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x2bc
	.byte	0xe
	.4byte	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF674
	.byte	0x5
	.2byte	0x2c5
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3a
	.4byte	.LLRL1
	.uleb128 0x4
	.4byte	.LASF675
	.byte	0x5
	.2byte	0x2db
	.byte	0xd
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF676
	.byte	0x5
	.2byte	0x297
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB178
	.4byte	.LFE178-.LFB178
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x436b
	.uleb128 0x6
	.string	"pk"
	.byte	0x5
	.2byte	0x297
	.byte	0x34
	.4byte	0xddb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LASF430
	.byte	0x5
	.2byte	0x298
	.byte	0x2a
	.4byte	0x2721
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF609
	.byte	0x5
	.2byte	0x29a
	.byte	0xf
	.4byte	0x2721
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF677
	.byte	0x5
	.2byte	0x29b
	.byte	0x1a
	.4byte	0x213
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x4
	.4byte	.LASF610
	.byte	0x5
	.2byte	0x29c
	.byte	0x1a
	.4byte	0x213
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x11
	.4byte	.LASF678
	.byte	0x5
	.2byte	0x220
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB177
	.4byte	.LFE177-.LFB177
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4429
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0x220
	.byte	0x38
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"buf"
	.byte	0x5
	.2byte	0x221
	.byte	0x38
	.4byte	0xf0d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"len"
	.byte	0x5
	.2byte	0x222
	.byte	0x2a
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF679
	.byte	0x5
	.2byte	0x224
	.byte	0x1e
	.4byte	0x2153
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xb
	.string	"i"
	.byte	0x5
	.2byte	0x225
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"j"
	.byte	0x5
	.2byte	0x225
	.byte	0xf
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF680
	.byte	0x5
	.2byte	0x226
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF681
	.byte	0x5
	.2byte	0x227
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF682
	.byte	0x5
	.2byte	0x229
	.byte	0x12
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3a
	.4byte	.LLRL0
	.uleb128 0x4
	.4byte	.LASF683
	.byte	0x5
	.2byte	0x25b
	.byte	0x12
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF684
	.byte	0x5
	.2byte	0x1d6
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB176
	.4byte	.LFE176-.LFB176
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4499
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0x1d6
	.byte	0x3e
	.4byte	0x20e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x6
	.string	"buf"
	.byte	0x5
	.2byte	0x1d7
	.byte	0x38
	.4byte	0xdb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x6
	.string	"len"
	.byte	0x5
	.2byte	0x1d8
	.byte	0x30
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0xb
	.string	"ret"
	.byte	0x5
	.2byte	0x1da
	.byte	0x9
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF274
	.byte	0x5
	.2byte	0x1db
	.byte	0x19
	.4byte	0x1219
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.byte	0
	.uleb128 0x11
	.4byte	.LASF685
	.byte	0x5
	.2byte	0x1bf
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x44e5
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0x1bf
	.byte	0x3b
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"buf"
	.byte	0x5
	.2byte	0x1c0
	.byte	0x3b
	.4byte	0xf0d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"len"
	.byte	0x5
	.2byte	0x1c1
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x11
	.4byte	.LASF686
	.byte	0x5
	.2byte	0x1a8
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4531
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0x1a8
	.byte	0x40
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"buf"
	.byte	0x5
	.2byte	0x1a9
	.byte	0x40
	.4byte	0xf0d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"len"
	.byte	0x5
	.2byte	0x1aa
	.byte	0x32
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x11
	.4byte	.LASF687
	.byte	0x5
	.2byte	0x167
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x458d
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0x167
	.byte	0x33
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"buf"
	.byte	0x5
	.2byte	0x168
	.byte	0x33
	.4byte	0xf0d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"len"
	.byte	0x5
	.2byte	0x169
	.byte	0x25
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF451
	.byte	0x5
	.2byte	0x16b
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF688
	.byte	0x5
	.2byte	0x154
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x45d9
	.uleb128 0x6
	.string	"ssl"
	.byte	0x5
	.2byte	0x154
	.byte	0x43
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"buf"
	.byte	0x5
	.2byte	0x155
	.byte	0x43
	.4byte	0xf0d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"len"
	.byte	0x5
	.2byte	0x156
	.byte	0x35
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF689
	.byte	0x5
	.byte	0xf6
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x463b
	.uleb128 0x1b
	.string	"ssl"
	.byte	0x5
	.byte	0xf6
	.byte	0x43
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.string	"buf"
	.byte	0x5
	.byte	0xf7
	.byte	0x43
	.4byte	0xf0d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"len"
	.byte	0x5
	.byte	0xf8
	.byte	0x35
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.4byte	.LASF690
	.byte	0xfa
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"p"
	.byte	0x5
	.byte	0xfb
	.4byte	0xf0d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF691
	.byte	0x5
	.byte	0xb5
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4728
	.uleb128 0x1b
	.string	"ssl"
	.byte	0x5
	.byte	0xb5
	.byte	0x40
	.4byte	0x20e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1b
	.string	"buf"
	.byte	0x5
	.byte	0xb6
	.byte	0x40
	.4byte	0xf0d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.string	"len"
	.byte	0x5
	.byte	0xb7
	.byte	0x32
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.4byte	.LASF690
	.byte	0xb9
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.4byte	.LASF692
	.byte	0xb9
	.byte	0x17
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"p"
	.byte	0x5
	.byte	0xba
	.4byte	0xf0d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.4byte	.LASF430
	.byte	0xbb
	.byte	0xf
	.4byte	0x2721
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.4byte	0x46ff
	.uleb128 0x2c
	.4byte	.LASF609
	.byte	0xe6
	.byte	0x12
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x3b
	.4byte	0x4c5e
	.4byte	.LBB81
	.4byte	.LBE81-.LBB81
	.byte	0xe6
	.byte	0x63
	.uleb128 0x9
	.4byte	0x4c6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.4byte	0x4c74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0xc
	.4byte	0x4c7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	0x4c5e
	.4byte	.LBB78
	.4byte	.LBE78-.LBB78
	.byte	0xc3
	.byte	0x56
	.uleb128 0x9
	.4byte	0x4c6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.4byte	0x4c74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0xc
	.4byte	0x4c7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF693
	.byte	0x5
	.byte	0x6b
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4770
	.uleb128 0x1b
	.string	"ssl"
	.byte	0x5
	.byte	0x6b
	.byte	0x3e
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.string	"buf"
	.byte	0x5
	.byte	0x6c
	.byte	0x3e
	.4byte	0xf0d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"len"
	.byte	0x5
	.byte	0x6d
	.byte	0x30
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x29
	.4byte	.LASF694
	.byte	0x5
	.byte	0x51
	.byte	0xc
	.4byte	0x68
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x479a
	.uleb128 0x1c
	.4byte	.LASF262
	.byte	0x5
	.byte	0x51
	.byte	0x3d
	.4byte	0x2455
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x48
	.4byte	.LASF696
	.byte	0x5
	.byte	0x44
	.byte	0x6
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x47ed
	.uleb128 0x1c
	.4byte	.LASF262
	.byte	0x5
	.byte	0x44
	.byte	0x38
	.4byte	0x2f1a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.4byte	.LASF358
	.byte	0x5
	.byte	0x45
	.byte	0x40
	.4byte	0x47ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.4byte	.LASF359
	.byte	0x5
	.byte	0x46
	.byte	0x40
	.4byte	0x47f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.4byte	.LASF360
	.byte	0x5
	.byte	0x47
	.byte	0x2a
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5
	.4byte	0x2492
	.uleb128 0x5
	.4byte	0x249f
	.uleb128 0x49
	.4byte	.LASF698
	.byte	0x5
	.byte	0x30
	.byte	0x5
	.4byte	0x68
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x483f
	.uleb128 0x1b
	.string	"ssl"
	.byte	0x5
	.byte	0x30
	.byte	0x3e
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.4byte	.LASF699
	.byte	0x5
	.byte	0x31
	.byte	0x3e
	.4byte	0xf0d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.4byte	.LASF700
	.byte	0x5
	.byte	0x32
	.byte	0x30
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x11
	.4byte	.LASF701
	.byte	0x4
	.2byte	0xa5c
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x487b
	.uleb128 0x6
	.string	"ssl"
	.byte	0x4
	.2byte	0xa5d
	.byte	0x20
	.4byte	0x26e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF612
	.byte	0x4
	.2byte	0xa5e
	.byte	0x14
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x23
	.4byte	.LASF702
	.byte	0x4
	.2byte	0xa1f
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48c7
	.uleb128 0x12
	.4byte	.LASF612
	.byte	0x4
	.2byte	0xa20
	.byte	0x14
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x4
	.4byte	.LASF595
	.byte	0x4
	.2byte	0xa23
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xb
	.string	"sig"
	.byte	0x4
	.2byte	0xa24
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x23
	.4byte	.LASF703
	.byte	0x4
	.2byte	0x97c
	.byte	0x1b
	.4byte	0xf6
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48f3
	.uleb128 0x6
	.string	"ssl"
	.byte	0x4
	.2byte	0x97d
	.byte	0x20
	.4byte	0x26e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.4byte	.LASF704
	.byte	0x4
	.2byte	0x915
	.byte	0x1b
	.4byte	0xf6
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x491f
	.uleb128 0x6
	.string	"ssl"
	.byte	0x4
	.2byte	0x915
	.byte	0x4d
	.4byte	0x26e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.4byte	.LASF705
	.byte	0x4
	.2byte	0x6f0
	.byte	0x16
	.4byte	0x7b
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x494b
	.uleb128 0x6
	.string	"ssl"
	.byte	0x4
	.2byte	0x6f0
	.byte	0x48
	.4byte	0x26e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.4byte	.LASF706
	.byte	0x4
	.2byte	0x6db
	.byte	0x16
	.4byte	0x7b
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4977
	.uleb128 0x6
	.string	"ssl"
	.byte	0x4
	.2byte	0x6db
	.byte	0x48
	.4byte	0x26e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.4byte	.LASF707
	.byte	0x4
	.2byte	0x696
	.byte	0x21
	.4byte	0xe03
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x49b3
	.uleb128 0x6
	.string	"ssl"
	.byte	0x4
	.2byte	0x696
	.byte	0x4b
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF366
	.byte	0x4
	.2byte	0x698
	.byte	0x1b
	.4byte	0x2418
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.4byte	.LASF708
	.byte	0x4
	.2byte	0x689
	.byte	0x23
	.4byte	0xddb
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x49ef
	.uleb128 0x6
	.string	"ssl"
	.byte	0x4
	.2byte	0x689
	.byte	0x4c
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF366
	.byte	0x4
	.2byte	0x68b
	.byte	0x1b
	.4byte	0x2418
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.4byte	.LASF709
	.byte	0x4
	.2byte	0x679
	.byte	0x28
	.4byte	0x2153
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a1b
	.uleb128 0x12
	.4byte	.LASF710
	.byte	0x4
	.2byte	0x67a
	.byte	0x15
	.4byte	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x11
	.4byte	.LASF711
	.byte	0x4
	.2byte	0x5c3
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a47
	.uleb128 0x6
	.string	"ssl"
	.byte	0x4
	.2byte	0x5c3
	.byte	0x48
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF712
	.byte	0x4
	.2byte	0x54f
	.byte	0x14
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a6f
	.uleb128 0x6
	.string	"ssl"
	.byte	0x4
	.2byte	0x54f
	.byte	0x4f
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF713
	.byte	0x4
	.2byte	0x546
	.byte	0x14
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4aa7
	.uleb128 0x6
	.string	"ssl"
	.byte	0x4
	.2byte	0x546
	.byte	0x49
	.4byte	0x20e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x547
	.byte	0x47
	.4byte	0x1170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF714
	.byte	0x3
	.byte	0x56
	.byte	0x24
	.4byte	0x213
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4add
	.uleb128 0x1b
	.string	"pk"
	.byte	0x3
	.byte	0x56
	.byte	0x59
	.4byte	0x2d29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"id"
	.byte	0x3
	.byte	0x58
	.4byte	0x213
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF715
	.byte	0x3
	.byte	0x3c
	.byte	0x2a
	.4byte	0x2a64
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b06
	.uleb128 0x1b
	.string	"pk"
	.byte	0x3
	.byte	0x3c
	.byte	0x54
	.4byte	0x7a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.4byte	.LASF716
	.byte	0x2
	.byte	0x8b
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b30
	.uleb128 0x1c
	.4byte	.LASF699
	.byte	0x2
	.byte	0x8c
	.byte	0x26
	.4byte	0x26a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.4byte	.LASF717
	.byte	0x2
	.byte	0x7c
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b5a
	.uleb128 0x1c
	.4byte	.LASF699
	.byte	0x2
	.byte	0x7c
	.byte	0x57
	.4byte	0x26a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.4byte	.LASF718
	.byte	0x2
	.byte	0x4c
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b84
	.uleb128 0x1c
	.4byte	.LASF699
	.byte	0x2
	.byte	0x4c
	.byte	0x5d
	.4byte	0x26a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.4byte	.LASF719
	.byte	0x2
	.byte	0x3f
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4bae
	.uleb128 0x1c
	.4byte	.LASF699
	.byte	0x2
	.byte	0x3f
	.byte	0x56
	.4byte	0x26a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.4byte	.LASF720
	.byte	0x2
	.byte	0x2e
	.byte	0x13
	.4byte	0x68
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4bd8
	.uleb128 0x1c
	.4byte	.LASF699
	.byte	0x2
	.byte	0x2e
	.byte	0x53
	.4byte	0x26a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.4byte	.LASF721
	.byte	0x1
	.2byte	0x10c3
	.byte	0x1b
	.4byte	0xf1
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c04
	.uleb128 0x12
	.4byte	.LASF722
	.byte	0x1
	.2byte	0x10c3
	.byte	0x5b
	.4byte	0x2153
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF723
	.byte	0xc2
	.4byte	0x4c2c
	.uleb128 0x2d
	.string	"p"
	.byte	0xc2
	.byte	0x37
	.4byte	0xd4
	.uleb128 0x2d
	.string	"x"
	.byte	0xc2
	.byte	0x43
	.4byte	0xb0
	.uleb128 0x31
	.string	"p32"
	.byte	0xc8
	.byte	0x21
	.4byte	0x4c2c
	.byte	0
	.uleb128 0x5
	.4byte	0x135
	.uleb128 0x3c
	.4byte	.LASF724
	.byte	0x8e
	.4byte	0x4c59
	.uleb128 0x2d
	.string	"p"
	.byte	0x8e
	.byte	0x37
	.4byte	0xd4
	.uleb128 0x2d
	.string	"x"
	.byte	0x8e
	.byte	0x43
	.4byte	0x9f
	.uleb128 0x31
	.string	"p16"
	.byte	0x94
	.byte	0x21
	.4byte	0x4c59
	.byte	0
	.uleb128 0x5
	.4byte	0x115
	.uleb128 0x4a
	.4byte	.LASF725
	.byte	0x6
	.byte	0x73
	.byte	0x18
	.4byte	0x9f
	.byte	0x3
	.uleb128 0x2d
	.string	"p"
	.byte	0x73
	.byte	0x41
	.4byte	0xf6
	.uleb128 0x31
	.string	"r"
	.byte	0x75
	.byte	0xe
	.4byte	0x9f
	.uleb128 0x31
	.string	"p16"
	.byte	0x7a
	.byte	0x21
	.4byte	0x4c59
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x21
	.sleb128 26
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1ec
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
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
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
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
	.4byte	.LBB83
	.byte	0x4
	.uleb128 .LBB83-.LBB83
	.uleb128 .LBE83-.LBB83
	.byte	0x4
	.uleb128 .LBB84-.LBB83
	.uleb128 .LBE84-.LBB83
	.byte	0
.LLRL1:
	.byte	0x5
	.4byte	.LBB85
	.byte	0x4
	.uleb128 .LBB85-.LBB85
	.uleb128 .LBE85-.LBB85
	.byte	0x4
	.uleb128 .LBB86-.LBB85
	.uleb128 .LBE86-.LBB85
	.byte	0
.LLRL2:
	.byte	0x7
	.4byte	.LFB92
	.uleb128 .LFE92-.LFB92
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
	.4byte	.LFB103
	.uleb128 .LFE103-.LFB103
	.byte	0x7
	.4byte	.LFB104
	.uleb128 .LFE104-.LFB104
	.byte	0x7
	.4byte	.LFB107
	.uleb128 .LFE107-.LFB107
	.byte	0x7
	.4byte	.LFB109
	.uleb128 .LFE109-.LFB109
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
	.4byte	.LFB122
	.uleb128 .LFE122-.LFB122
	.byte	0x7
	.4byte	.LFB124
	.uleb128 .LFE124-.LFB124
	.byte	0x7
	.4byte	.LFB129
	.uleb128 .LFE129-.LFB129
	.byte	0x7
	.4byte	.LFB135
	.uleb128 .LFE135-.LFB135
	.byte	0x7
	.4byte	.LFB138
	.uleb128 .LFE138-.LFB138
	.byte	0x7
	.4byte	.LFB139
	.uleb128 .LFE139-.LFB139
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF650:
	.string	"ciph_len"
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
.LASF676:
	.string	"ssl_check_key_curve"
.LASF555:
	.string	"mbedtls_ssl_get_mode_from_ciphersuite"
.LASF97:
	.string	"cipher_ctx"
.LASF692:
	.string	"our_size"
.LASF189:
	.string	"mbedtls_x509_crt_verify_chain_item"
.LASF393:
	.string	"f_cert_cb"
.LASF76:
	.string	"MBEDTLS_ENCRYPT"
.LASF264:
	.string	"renego_records_seen"
.LASF499:
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
.LASF723:
	.string	"mbedtls_put_unaligned_uint32"
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
.LASF628:
	.string	"session_tmp"
.LASF348:
	.string	"p_dbg"
.LASF144:
	.string	"mbedtls_x509_time"
.LASF440:
	.string	"out_msg_seq"
.LASF663:
	.string	"fragment_length"
.LASF40:
	.string	"mbedtls_ecp_group"
.LASF358:
	.string	"f_cookie_write"
.LASF50:
	.string	"mbedtls_ecp_restart_mul"
.LASF439:
	.string	"cookie_verify_result"
.LASF369:
	.string	"f_ca_cb"
.LASF110:
	.string	"pk_info"
.LASF283:
	.string	"f_get_timer"
.LASF107:
	.string	"mbedtls_pk_type_t"
.LASF142:
	.string	"authorityCertIssuer"
.LASF494:
	.string	"MBEDTLS_DEBUG_ECDH_QP"
.LASF79:
	.string	"state"
.LASF717:
	.string	"mbedtls_ssl_ciphersuite_uses_ecdhe"
.LASF626:
	.string	"ext_len"
.LASF635:
	.string	"profile_value"
.LASF631:
	.string	"ssl_write_hello_verify_request"
.LASF463:
	.string	"mbedtls_ssl_flight_item"
.LASF481:
	.string	"MBEDTLS_SSL_TLS_PRF_SHA384"
.LASF649:
	.string	"msg_len"
.LASF605:
	.string	"ssl_write_server_key_exchange"
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
.LASF520:
	.string	"MBEDTLS_SSL_MODE_CBC_ETM"
.LASF57:
	.string	"MBEDTLS_MD_MD5"
.LASF493:
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
.LASF632:
	.string	"cookie_len_byte"
.LASF153:
	.string	"sig_oid"
.LASF280:
	.string	"transform_negotiate"
.LASF603:
	.string	"ssl_parse_client_psk_identity"
.LASF192:
	.string	"mbedtls_x509_crt_verify_chain"
.LASF590:
	.string	"tlen"
.LASF528:
	.string	"mbedtls_ssl_write_certificate"
.LASF123:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDH_RSA"
.LASF508:
	.string	"data_len"
.LASF424:
	.string	"calc_verify"
.LASF242:
	.string	"mbedtls_ssl_send_t"
.LASF86:
	.string	"key_bitlen"
.LASF347:
	.string	"f_dbg"
.LASF527:
	.string	"mbedtls_ssl_parse_certificate"
.LASF718:
	.string	"mbedtls_ssl_ciphersuite_cert_req_allowed"
.LASF215:
	.string	"MBEDTLS_SSL_SERVER_KEY_EXCHANGE"
.LASF25:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF276:
	.string	"handshake"
.LASF542:
	.string	"mbedtls_debug_printf_ecdh"
.LASF442:
	.string	"retransmit_timeout"
.LASF160:
	.string	"sig_oid2"
.LASF38:
	.string	"mbedtls_ecp_group_id"
.LASF657:
	.string	"sig_hash_alg_ext_present"
.LASF204:
	.string	"mbedtls_dhm_context"
.LASF566:
	.string	"mbedtls_ssl_tls12_get_preferred_hash_for_sig_alg"
.LASF459:
	.string	"sni_name"
.LASF182:
	.string	"ext_key_usage"
.LASF247:
	.string	"mbedtls_ssl_session"
.LASF470:
	.string	"mbedtls_ssl_srtp_profile"
.LASF675:
	.string	"key_type_matches"
.LASF263:
	.string	"renego_status"
.LASF552:
	.string	"mbedtls_ssl_write_handshake_msg_ext"
.LASF62:
	.string	"MBEDTLS_MD_SHA384"
.LASF6:
	.string	"long int"
.LASF495:
	.string	"MBEDTLS_DEBUG_ECDH_Z"
.LASF278:
	.string	"transform_out"
.LASF356:
	.string	"f_psk"
.LASF712:
	.string	"mbedtls_ssl_handshake_increment_state"
.LASF560:
	.string	"mbedtls_ssl_parse_server_name_ext"
.LASF669:
	.string	"suite_id"
.LASF411:
	.string	"resume"
.LASF683:
	.string	"protection_profile_value"
.LASF339:
	.string	"anti_replay"
.LASF180:
	.string	"max_pathlen"
.LASF696:
	.string	"mbedtls_ssl_conf_dtls_cookies"
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
.LASF645:
	.string	"got_common_suite"
.LASF509:
	.string	"epoch"
.LASF486:
	.string	"MBEDTLS_SSL_KEY_EXPORT_TLS12_MASTER_SECRET"
.LASF633:
	.string	"ssl_handle_id_based_session_resumption"
.LASF351:
	.string	"f_get_cache"
.LASF95:
	.string	"get_padding"
.LASF681:
	.string	"mki_length"
.LASF419:
	.string	"ecrs_state"
.LASF656:
	.string	"ciphersuites"
.LASF441:
	.string	"in_msg_seq"
.LASF664:
	.string	"length"
.LASF66:
	.string	"MBEDTLS_MD_SHA3_384"
.LASF719:
	.string	"mbedtls_ssl_ciphersuite_uses_ecdh"
.LASF482:
	.string	"MBEDTLS_SSL_TLS_PRF_SHA256"
.LASF572:
	.string	"mbedtls_ssl_check_cert_usage"
.LASF406:
	.string	"cipher_ctx_dec"
.LASF547:
	.string	"mbedtls_ecdh_get_params"
.LASF627:
	.string	"suite"
.LASF403:
	.string	"md_ctx_enc"
.LASF662:
	.string	"fragment_offset"
.LASF203:
	.string	"mbedtls_x509_crt_ca_cb_t"
.LASF615:
	.string	"sig_start"
.LASF297:
	.string	"next_record_offset"
.LASF210:
	.string	"restart_enabled"
.LASF409:
	.string	"randbytes"
.LASF328:
	.string	"own_cid"
.LASF2:
	.string	"signed char"
.LASF30:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF13:
	.string	"uint8_t"
.LASF413:
	.string	"sni_authmode"
.LASF325:
	.string	"verify_data_len"
.LASF115:
	.string	"MBEDTLS_KEY_EXCHANGE_RSA"
.LASF498:
	.string	"ssl_ecrs_none"
.LASF268:
	.string	"f_send"
.LASF454:
	.string	"client_auth"
.LASF611:
	.string	"dig_signed_len"
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
.LASF534:
	.string	"mbedtls_ecdh_read_public"
.LASF140:
	.string	"mbedtls_x509_authority"
.LASF311:
	.string	"out_len"
.LASF3:
	.string	"unsigned char"
.LASF690:
	.string	"list_size"
.LASF433:
	.string	"sni_key_cert"
.LASF178:
	.string	"ext_types"
.LASF714:
	.string	"mbedtls_pk_get_ec_group_id"
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
.LASF701:
	.string	"mbedtls_ssl_sig_alg_is_supported"
.LASF344:
	.string	"ignore_unexpected_cid"
.LASF541:
	.string	"mbedtls_ssl_md_alg_from_hash"
.LASF708:
	.string	"mbedtls_ssl_own_key"
.LASF464:
	.string	"mbedtls_ssl_cache_get_t"
.LASF648:
	.string	"ext_offset"
.LASF596:
	.string	"hash_start"
.LASF251:
	.string	"tls_version"
.LASF55:
	.string	"mbedtls_ecp_keypair"
.LASF452:
	.string	"fin_sha256"
.LASF243:
	.string	"mbedtls_ssl_recv_t"
.LASF130:
	.string	"min_tls_version"
.LASF697:
	.string	"mbedtls_ssl_handshake_server_step"
.LASF594:
	.string	"sig_len"
.LASF227:
	.string	"MBEDTLS_SSL_NEW_SESSION_TICKET"
.LASF436:
	.string	"buffering"
.LASF316:
	.string	"out_left"
.LASF175:
	.string	"subject_key_id"
.LASF78:
	.string	"mbedtls_cmac_context_t"
.LASF18:
	.string	"char"
.LASF44:
	.string	"t_pre"
.LASF704:
	.string	"mbedtls_ssl_get_groups"
.LASF686:
	.string	"ssl_parse_encrypt_then_mac_ext"
.LASF638:
	.string	"ssl_write_renegotiation_ext"
.LASF496:
	.string	"mbedtls_debug_ecdh_attr"
.LASF77:
	.string	"mbedtls_operation_t"
.LASF705:
	.string	"mbedtls_ssl_hs_hdr_len"
.LASF607:
	.string	"ssl_prepare_server_key_exchange"
.LASF698:
	.string	"mbedtls_ssl_set_client_transport_id"
.LASF99:
	.string	"MBEDTLS_PK_NONE"
.LASF655:
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
.LASF587:
	.string	"calloc"
.LASF574:
	.string	"mbedtls_debug_print_crt"
.LASF438:
	.string	"cookie_len"
.LASF275:
	.string	"session_negotiate"
.LASF562:
	.string	"mbedtls_ssl_read_version"
.LASF525:
	.string	"mbedtls_ssl_parse_finished"
.LASF89:
	.string	"flags"
.LASF577:
	.string	"mbedtls_platform_zeroize"
.LASF291:
	.string	"in_offt"
.LASF273:
	.string	"session_out"
.LASF621:
	.string	"total_dn_size"
.LASF73:
	.string	"hmac_ctx"
.LASF694:
	.string	"ssl_conf_has_psk_or_cb"
.LASF671:
	.string	"sig_type"
.LASF63:
	.string	"MBEDTLS_MD_SHA512"
.LASF537:
	.string	"mbedtls_ssl_send_flight_completed"
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
.LASF720:
	.string	"mbedtls_ssl_ciphersuite_no_pfs"
.LASF234:
	.string	"MBEDTLS_SSL_CLIENT_CCS_BEFORE_2ND_CLIENT_HELLO"
.LASF303:
	.string	"send_alert"
.LASF578:
	.string	"mbedtls_debug_print_ret"
.LASF236:
	.string	"MBEDTLS_SSL_CLIENT_CCS_AFTER_CLIENT_HELLO"
.LASF265:
	.string	"badmac_seen_or_in_hsfraglen"
.LASF374:
	.string	"f_async_cancel"
.LASF529:
	.string	"mbedtls_ssl_update_handshake_status"
.LASF592:
	.string	"ssl_write_new_session_ticket"
.LASF246:
	.string	"mbedtls_ssl_get_timer_t"
.LASF475:
	.string	"mbedtls_dtls_srtp_info"
.LASF565:
	.string	"mbedtls_ssl_fetch_input"
.LASF293:
	.string	"in_msglen"
.LASF292:
	.string	"in_msgtype"
.LASF67:
	.string	"MBEDTLS_MD_SHA3_512"
.LASF269:
	.string	"f_recv"
.LASF651:
	.string	"sess_len"
.LASF709:
	.string	"mbedtls_ssl_check_srtp_profile_value"
.LASF503:
	.string	"mbedtls_ssl_hs_buffer"
.LASF381:
	.string	"psk_identity"
.LASF543:
	.string	"mbedtls_ecdh_make_params"
.LASF443:
	.string	"flight"
.LASF680:
	.string	"profile_length"
.LASF368:
	.string	"ca_crl"
.LASF550:
	.string	"mbedtls_ssl_get_ciphersuite_name"
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
.LASF113:
	.string	"mbedtls_pk_restart_ctx"
.LASF217:
	.string	"MBEDTLS_SSL_SERVER_HELLO_DONE"
.LASF231:
	.string	"MBEDTLS_SSL_END_OF_EARLY_DATA"
.LASF186:
	.string	"allowed_pks"
.LASF608:
	.string	"dig_signed"
.LASF582:
	.string	"mbedtls_ssl_get_ecp_group_id_from_tls_id"
.LASF384:
	.string	"dtls_srtp_profile_list"
.LASF522:
	.string	"mbedtls_ssl_mode_t"
.LASF105:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF315:
	.string	"out_msglen"
.LASF672:
	.string	"ssl_pick_cert"
.LASF313:
	.string	"out_msg"
.LASF287:
	.string	"in_cid"
.LASF602:
	.string	"ssl_parse_client_key_exchange"
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
.LASF691:
	.string	"ssl_parse_supported_groups_ext"
.LASF460:
	.string	"sni_name_len"
.LASF548:
	.string	"mbedtls_ssl_set_calc_verify_md"
.LASF446:
	.string	"in_flight_start_seq"
.LASF668:
	.string	"ssl_ciphersuite_match"
.LASF168:
	.string	"valid_from"
.LASF342:
	.string	"cert_req_ca_list"
.LASF400:
	.string	"taglen"
.LASF660:
	.string	"have_ciphersuite"
.LASF308:
	.string	"out_ctr"
.LASF456:
	.string	"premaster"
.LASF532:
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
.LASF652:
	.string	"comp_len"
.LASF571:
	.string	"mbedtls_ssl_ciphersuite_from_id"
.LASF51:
	.string	"mbedtls_ecp_restart_muladd"
.LASF450:
	.string	"peer_cid"
.LASF416:
	.string	"async_in_progress"
.LASF693:
	.string	"ssl_parse_renegotiation_info"
.LASF519:
	.string	"MBEDTLS_SSL_MODE_CBC"
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
.LASF544:
	.string	"mbedtls_ecdh_setup"
.LASF304:
	.string	"alert_type"
.LASF274:
	.string	"session"
.LASF330:
	.string	"negotiate_cid"
.LASF583:
	.string	"mbedtls_ssl_send_alert_message"
.LASF653:
	.string	"cookie_offset"
.LASF161:
	.string	"sig_md"
.LASF629:
	.string	"curve_matching_done"
.LASF458:
	.string	"user_async_ctx"
.LASF700:
	.string	"ilen"
.LASF689:
	.string	"ssl_parse_supported_point_formats"
.LASF569:
	.string	"mbedtls_ssl_ciphersuite_uses_psk"
.LASF535:
	.string	"mbedtls_ssl_read_record"
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
.LASF721:
	.string	"mbedtls_ssl_get_srtp_profile_as_string"
.LASF404:
	.string	"md_ctx_dec"
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
.LASF514:
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
.LASF515:
	.string	"digest_len"
.LASF658:
	.string	"renegotiating"
.LASF679:
	.string	"client_protection"
.LASF682:
	.string	"size_of_lengths"
.LASF317:
	.string	"out_buf_len"
.LASF703:
	.string	"mbedtls_ssl_get_sig_algs"
.LASF674:
	.string	"pk_alg_is_none"
.LASF625:
	.string	"olen"
.LASF237:
	.string	"MBEDTLS_SSL_SERVER_CCS_AFTER_HELLO_RETRY_REQUEST"
.LASF214:
	.string	"MBEDTLS_SSL_SERVER_CERTIFICATE"
.LASF179:
	.string	"ca_istrue"
.LASF546:
	.string	"mbedtls_ssl_set_async_operation_data"
.LASF112:
	.string	"rs_ctx"
.LASF715:
	.string	"mbedtls_pk_ec_ro"
.LASF8:
	.string	"long long int"
.LASF614:
	.string	"ssl_resume_server_key_exchange"
.LASF434:
	.string	"sni_ca_chain"
.LASF445:
	.string	"cur_msg_p"
.LASF597:
	.string	"hashlen"
.LASF604:
	.string	"ssl_write_server_hello_done"
.LASF613:
	.string	"sig_hash"
.LASF549:
	.string	"mbedtls_ssl_write_alpn_ext"
.LASF598:
	.string	"pk_alg"
.LASF510:
	.string	"total_bytes_buffered"
.LASF202:
	.string	"mbedtls_x509_crt_restart_ctx"
.LASF568:
	.string	"mbedtls_ssl_get_ciphersuite_sig_alg"
.LASF637:
	.string	"ssl_write_max_fragment_length_ext"
.LASF432:
	.string	"ecrs_ctx"
.LASF586:
	.string	"memcpy"
.LASF371:
	.string	"f_async_sign_start"
.LASF289:
	.string	"in_iv"
.LASF101:
	.string	"MBEDTLS_PK_ECKEY"
.LASF643:
	.string	"ssl_write_cid_ext"
.LASF661:
	.string	"cli_msg_seq"
.LASF53:
	.string	"depth"
.LASF595:
	.string	"hash"
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
.LASF722:
	.string	"profile"
.LASF687:
	.string	"ssl_parse_cid_ext"
.LASF185:
	.string	"allowed_mds"
.LASF502:
	.string	"ssl_ecrs_crt_vrfy_sign"
.LASF567:
	.string	"mbedtls_ssl_sig_from_pk_alg"
.LASF646:
	.string	"ciph_offset"
.LASF385:
	.string	"dtls_srtp_profile_list_len"
.LASF324:
	.string	"secure_renegotiation"
.LASF453:
	.string	"fin_sha384"
.LASF576:
	.string	"mbedtls_pk_get_type"
.LASF545:
	.string	"mbedtls_ssl_get_curve_name_from_tls_id"
.LASF69:
	.string	"mbedtls_md_info_t"
.LASF103:
	.string	"MBEDTLS_PK_ECDSA"
.LASF570:
	.string	"mbedtls_ssl_ciphersuite_uses_ec"
.LASF363:
	.string	"p_ticket"
.LASF10:
	.string	"unsigned int"
.LASF206:
	.string	"MBEDTLS_ECDH_THEIRS"
.LASF228:
	.string	"MBEDTLS_SSL_SERVER_HELLO_VERIFY_REQUEST_SENT"
.LASF636:
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
.LASF678:
	.string	"ssl_parse_use_srtp_ext"
.LASF170:
	.string	"pk_raw"
.LASF284:
	.string	"in_buf"
.LASF455:
	.string	"state_local"
.LASF642:
	.string	"ssl_mode"
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
.LASF407:
	.string	"in_cid_len"
.LASF517:
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
.LASF505:
	.string	"is_fragmented"
.LASF471:
	.string	"mbedtls_dtls_srtp_info_t"
.LASF380:
	.string	"psk_len"
.LASF207:
	.string	"mbedtls_ecdh_side"
.LASF136:
	.string	"next_merged"
.LASF253:
	.string	"id_len"
.LASF581:
	.string	"mbedtls_debug_print_buf"
.LASF52:
	.string	"ops_done"
.LASF68:
	.string	"mbedtls_md_type_t"
.LASF612:
	.string	"sig_alg"
.LASF707:
	.string	"mbedtls_ssl_own_cert"
.LASF102:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF199:
	.string	"in_progress"
.LASF673:
	.string	"list"
.LASF327:
	.string	"peer_verify_data"
.LASF92:
	.string	"cipher_info"
.LASF558:
	.string	"mbedtls_ssl_parse_alpn_ext"
.LASF726:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF609:
	.string	"curr_tls_id"
.LASF19:
	.string	"mbedtls_uint16_unaligned_t"
.LASF11:
	.string	"long double"
.LASF573:
	.string	"mbedtls_pk_can_do"
.LASF540:
	.string	"mbedtls_ssl_get_key_exchange_md_tls1_2"
.LASF241:
	.string	"mbedtls_ssl_states"
.LASF33:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF398:
	.string	"fixed_ivlen"
.LASF90:
	.string	"base_idx"
.LASF688:
	.string	"ssl_parse_max_fragment_length_ext"
.LASF516:
	.string	"finished_out"
.LASF232:
	.string	"MBEDTLS_SSL_CLIENT_CERTIFICATE_VERIFY"
.LASF591:
	.string	"lifetime"
.LASF132:
	.string	"mbedtls_asn1_buf"
.LASF618:
	.string	"private_key"
.LASF667:
	.string	"default_sig_algs"
.LASF448:
	.string	"alt_out_ctr"
.LASF699:
	.string	"info"
.LASF479:
	.string	"mbedtls_ssl_protocol_version"
.LASF518:
	.string	"MBEDTLS_SSL_MODE_STREAM"
.LASF533:
	.string	"mbedtls_ecdh_calc_secret"
.LASF513:
	.string	"preparation_done"
.LASF501:
	.string	"ssl_ecrs_cke_ecdh_calc_secret"
.LASF538:
	.string	"mbedtls_pk_sign"
.LASF620:
	.string	"dn_size"
.LASF702:
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
.LASF659:
	.string	"read_record_header"
.LASF9:
	.string	"long long unsigned int"
.LASF497:
	.string	"mbedtls_ssl_tls_prf_cb"
.LASF710:
	.string	"srtp_profile_value"
.LASF389:
	.string	"renego_max_records"
.LASF14:
	.string	"uint16_t"
.LASF713:
	.string	"mbedtls_ssl_handshake_set_state"
.LASF126:
	.string	"mbedtls_key_exchange_type_t"
.LASF157:
	.string	"next_update"
.LASF250:
	.string	"endpoint"
.LASF640:
	.string	"ssl_write_extended_ms_ext"
.LASF575:
	.string	"mbedtls_ssl_get_ciphersuite_sig_pk_alg"
.LASF259:
	.string	"ticket_lifetime"
.LASF39:
	.string	"mbedtls_ecp_point"
.LASF506:
	.string	"is_complete"
.LASF271:
	.string	"p_bio"
.LASF28:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF23:
	.string	"mbedtls_mpi"
.LASF388:
	.string	"hs_timeout_max"
.LASF564:
	.string	"mbedtls_ssl_dtls_replay_check"
.LASF149:
	.string	"revocation_date"
.LASF580:
	.string	"mbedtls_ssl_session_init"
.LASF244:
	.string	"mbedtls_ssl_recv_timeout_t"
.LASF117:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDHE_RSA"
.LASF521:
	.string	"MBEDTLS_SSL_MODE_AEAD"
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
.LASF492:
	.string	"mbedtls_ssl_cookie_check_t"
.LASF173:
	.string	"v3_ext"
.LASF156:
	.string	"this_update"
.LASF378:
	.string	"dhm_P"
.LASF188:
	.string	"rsa_min_bitlen"
.LASF248:
	.string	"mfl_code"
.LASF319:
	.string	"hostname"
.LASF345:
	.string	"dtls_srtp_mki_support"
.LASF561:
	.string	"memset"
.LASF557:
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
.LASF724:
	.string	"mbedtls_put_unaligned_uint16"
.LASF213:
	.string	"MBEDTLS_SSL_SERVER_HELLO"
.LASF285:
	.string	"in_ctr"
.LASF504:
	.string	"is_valid"
.LASF27:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF93:
	.string	"operation"
.LASF617:
	.string	"ssl_get_ecdh_params_from_cert"
.LASF162:
	.string	"sig_pk"
.LASF654:
	.string	"renegotiation_info_seen"
.LASF551:
	.string	"mbedtls_ssl_derive_keys"
.LASF511:
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
.LASF444:
	.string	"cur_msg"
.LASF391:
	.string	"badmac_limit"
.LASF530:
	.string	"mbedtls_pk_verify"
.LASF634:
	.string	"ssl_write_use_srtp_ext"
.LASF584:
	.string	"mbedtls_debug_print_msg"
.LASF469:
	.string	"mbedtls_ssl_async_cancel_t"
.LASF524:
	.string	"mbedtls_ssl_write_change_cipher_spec"
.LASF218:
	.string	"MBEDTLS_SSL_CLIENT_CERTIFICATE"
.LASF64:
	.string	"MBEDTLS_MD_SHA3_224"
.LASF559:
	.string	"mbedtls_ssl_parse_sig_alg_ext"
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
.LASF725:
	.string	"mbedtls_get_unaligned_uint16"
.LASF45:
	.string	"t_post"
.LASF167:
	.string	"subject"
.LASF512:
	.string	"future_record"
.LASF169:
	.string	"valid_to"
.LASF83:
	.string	"name"
.LASF622:
	.string	"ct_len"
.LASF421:
	.string	"ecrs_n"
.LASF484:
	.string	"MBEDTLS_SSL_HKDF_EXPAND_SHA256"
.LASF116:
	.string	"MBEDTLS_KEY_EXCHANGE_DHE_RSA"
.LASF260:
	.string	"encrypt_then_mac"
.LASF606:
	.string	"signature_len"
.LASF623:
	.string	"sa_len"
.LASF593:
	.string	"ssl_parse_certificate_verify"
.LASF191:
	.string	"trust_ca_cb_result"
.LASF119:
	.string	"MBEDTLS_KEY_EXCHANGE_PSK"
.LASF474:
	.string	"mki_value"
.LASF98:
	.string	"cmac_ctx"
.LASF531:
	.string	"mbedtls_ssl_pk_alg_from_sig"
.LASF224:
	.string	"MBEDTLS_SSL_SERVER_FINISHED"
.LASF209:
	.string	"point_format"
.LASF4:
	.string	"short int"
.LASF589:
	.string	"order"
.LASF24:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF16:
	.string	"uint64_t"
.LASF87:
	.string	"mode"
.LASF641:
	.string	"ssl_write_encrypt_then_mac_ext"
.LASF334:
	.string	"mbedtls_ssl_config"
.LASF43:
	.string	"modp"
.LASF216:
	.string	"MBEDTLS_SSL_CERTIFICATE_REQUEST"
.LASF338:
	.string	"extended_ms"
.LASF523:
	.string	"mbedtls_ssl_write_finished"
.LASF256:
	.string	"verify_result"
.LASF26:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF141:
	.string	"keyIdentifier"
.LASF350:
	.string	"p_rng"
.LASF685:
	.string	"ssl_parse_extended_ms_ext"
.LASF616:
	.string	"sig_max_len"
.LASF579:
	.string	"mbedtls_ssl_session_free"
.LASF366:
	.string	"key_cert"
.LASF61:
	.string	"MBEDTLS_MD_SHA256"
.LASF426:
	.string	"tls_prf"
.LASF56:
	.string	"MBEDTLS_MD_NONE"
.LASF665:
	.string	"ext_id"
.LASF695:
	.string	"mbedtls_ssl_conf_preference_order"
.LASF326:
	.string	"own_verify_data"
.LASF226:
	.string	"MBEDTLS_SSL_HANDSHAKE_WRAPUP"
.LASF599:
	.string	"md_alg"
.LASF624:
	.string	"ssl_write_server_hello"
.LASF554:
	.string	"mbedtls_ssl_write_version"
.LASF171:
	.string	"issuer_id"
.LASF146:
	.string	"hour"
.LASF556:
	.string	"mbedtls_ssl_states_str"
.LASF20:
	.string	"mbedtls_uint32_unaligned_t"
.LASF258:
	.string	"ticket_len"
.LASF431:
	.string	"selected_identity"
.LASF225:
	.string	"MBEDTLS_SSL_FLUSH_BUFFERS"
.LASF539:
	.string	"mbedtls_ssl_hash_from_md_alg"
.LASF288:
	.string	"in_len"
.LASF644:
	.string	"ssl_parse_client_hello"
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
.LASF526:
	.string	"mbedtls_ssl_parse_change_cipher_spec"
.LASF309:
	.string	"out_hdr"
.LASF465:
	.string	"mbedtls_ssl_cache_set_t"
.LASF198:
	.string	"parent_is_trusted"
.LASF647:
	.string	"comp_offset"
.LASF466:
	.string	"mbedtls_ssl_async_sign_t"
.LASF619:
	.string	"ssl_write_certificate_request"
.LASF220:
	.string	"MBEDTLS_SSL_CERTIFICATE_VERIFY"
.LASF34:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
.LASF399:
	.string	"maclen"
.LASF610:
	.string	"curr_grp_id"
.LASF601:
	.string	"dummy_hlen"
.LASF296:
	.string	"in_epoch"
.LASF15:
	.string	"uint32_t"
.LASF346:
	.string	"ciphersuite_list"
.LASF563:
	.string	"mbedtls_ssl_dtls_replay_update"
.LASF335:
	.string	"transport"
.LASF536:
	.string	"mbedtls_ssl_handshake_wrapup"
.LASF666:
	.string	"ext_size"
.LASF415:
	.string	"new_session_ticket"
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
.LASF588:
	.string	"free"
.LASF711:
	.string	"mbedtls_ssl_write_handshake_msg"
.LASF197:
	.string	"fallback_signature_is_good"
.LASF684:
	.string	"ssl_parse_session_ticket_ext"
.LASF585:
	.string	"mbedtls_ct_memcmp"
.LASF336:
	.string	"authmode"
.LASF5:
	.string	"short unsigned int"
.LASF80:
	.string	"unprocessed_block"
.LASF716:
	.string	"mbedtls_ssl_ciphersuite_uses_server_signature"
.LASF46:
	.string	"t_data"
.LASF500:
	.string	"ssl_ecrs_ske_start_processing"
.LASF491:
	.string	"mbedtls_ssl_cookie_write_t"
.LASF133:
	.string	"mbedtls_asn1_sequence"
.LASF333:
	.string	"user_data"
.LASF208:
	.string	"mbedtls_ecdh_context"
.LASF301:
	.string	"nb_zero"
.LASF670:
	.string	"suite_info"
.LASF630:
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
.LASF600:
	.string	"peer_pk"
.LASF553:
	.string	"mbedtls_ssl_flight_transmit"
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
.LASF507:
	.string	"data"
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
.LASF137:
	.string	"mbedtls_x509_buf"
.LASF706:
	.string	"mbedtls_ssl_in_hdr_len"
.LASF354:
	.string	"f_sni"
.LASF677:
	.string	"grp_id"
.LASF108:
	.string	"mbedtls_pk_info_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_tls12_server.c"
	.globl	__bswapsi2
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
