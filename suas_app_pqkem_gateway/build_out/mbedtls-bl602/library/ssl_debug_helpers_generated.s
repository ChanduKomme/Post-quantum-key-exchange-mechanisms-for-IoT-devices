	.file	"ssl_debug_helpers_generated.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_debug_helpers_generated.c"
	.section	.rodata
	.align	2
.LC0:
	.string	"secp192k1"
	.align	2
.LC1:
	.string	"secp192r1"
	.align	2
.LC2:
	.string	"secp224k1"
	.align	2
.LC3:
	.string	"secp224r1"
	.align	2
.LC4:
	.string	"secp256k1"
	.align	2
.LC5:
	.string	"secp256r1"
	.align	2
.LC6:
	.string	"secp384r1"
	.align	2
.LC7:
	.string	"secp521r1"
	.align	2
.LC8:
	.string	"bp256r1"
	.align	2
.LC9:
	.string	"bp384r1"
	.align	2
.LC10:
	.string	"bp512r1"
	.align	2
.LC11:
	.string	"x25519"
	.align	2
.LC12:
	.string	"x448"
	.align	2
.LC13:
	.string	"ffdhe2048"
	.align	2
.LC14:
	.string	"ffdhe3072"
	.align	2
.LC15:
	.string	"ffdhe4096"
	.align	2
.LC16:
	.string	"ffdhe6144"
	.align	2
.LC17:
	.string	"ffdhe8192"
	.align	2
.LC18:
	.string	"UNKNOWN"
	.section	.text.mbedtls_ssl_named_group_to_str,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_named_group_to_str
	.type	mbedtls_ssl_named_group_to_str, @function
mbedtls_ssl_named_group_to_str:
.LFB139:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_debug_helpers_generated.c"
	.loc 1 22 1
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
	.loc 1 23 5
	lhu	a5,-18(s0)
	li	a4,260
	beq	a5,a4,.L2
	li	a4,260
	bgt	a5,a4,.L3
	li	a4,259
	beq	a5,a4,.L4
	li	a4,259
	bgt	a5,a4,.L3
	li	a4,258
	beq	a5,a4,.L5
	li	a4,258
	bgt	a5,a4,.L3
	li	a4,257
	beq	a5,a4,.L6
	li	a4,257
	bgt	a5,a4,.L3
	li	a4,256
	beq	a5,a4,.L7
	li	a4,256
	bgt	a5,a4,.L3
	li	a4,30
	beq	a5,a4,.L8
	li	a4,30
	bgt	a5,a4,.L3
	li	a4,29
	beq	a5,a4,.L9
	li	a4,29
	bgt	a5,a4,.L3
	li	a4,28
	beq	a5,a4,.L10
	li	a4,28
	bgt	a5,a4,.L3
	li	a4,27
	beq	a5,a4,.L11
	li	a4,27
	bgt	a5,a4,.L3
	li	a4,26
	beq	a5,a4,.L12
	li	a4,26
	bgt	a5,a4,.L3
	li	a4,25
	beq	a5,a4,.L13
	li	a4,25
	bgt	a5,a4,.L3
	li	a4,24
	beq	a5,a4,.L14
	li	a4,24
	bgt	a5,a4,.L3
	li	a4,23
	beq	a5,a4,.L15
	li	a4,23
	bgt	a5,a4,.L3
	li	a4,22
	beq	a5,a4,.L16
	li	a4,22
	bgt	a5,a4,.L3
	li	a4,21
	beq	a5,a4,.L17
	li	a4,21
	bgt	a5,a4,.L3
	li	a4,20
	beq	a5,a4,.L18
	li	a4,20
	bgt	a5,a4,.L3
	li	a4,18
	beq	a5,a4,.L19
	li	a4,19
	beq	a5,a4,.L20
	j	.L3
.L19:
	.loc 1 26 16
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	j	.L21
.L20:
	.loc 1 28 16
	lui	a5,%hi(.LC1)
	addi	a5,a5,%lo(.LC1)
	j	.L21
.L18:
	.loc 1 30 16
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	j	.L21
.L17:
	.loc 1 32 16
	lui	a5,%hi(.LC3)
	addi	a5,a5,%lo(.LC3)
	j	.L21
.L16:
	.loc 1 34 16
	lui	a5,%hi(.LC4)
	addi	a5,a5,%lo(.LC4)
	j	.L21
.L15:
	.loc 1 36 16
	lui	a5,%hi(.LC5)
	addi	a5,a5,%lo(.LC5)
	j	.L21
.L14:
	.loc 1 38 16
	lui	a5,%hi(.LC6)
	addi	a5,a5,%lo(.LC6)
	j	.L21
.L13:
	.loc 1 40 16
	lui	a5,%hi(.LC7)
	addi	a5,a5,%lo(.LC7)
	j	.L21
.L12:
	.loc 1 42 16
	lui	a5,%hi(.LC8)
	addi	a5,a5,%lo(.LC8)
	j	.L21
.L11:
	.loc 1 44 16
	lui	a5,%hi(.LC9)
	addi	a5,a5,%lo(.LC9)
	j	.L21
.L10:
	.loc 1 46 16
	lui	a5,%hi(.LC10)
	addi	a5,a5,%lo(.LC10)
	j	.L21
.L9:
	.loc 1 48 16
	lui	a5,%hi(.LC11)
	addi	a5,a5,%lo(.LC11)
	j	.L21
.L8:
	.loc 1 50 16
	lui	a5,%hi(.LC12)
	addi	a5,a5,%lo(.LC12)
	j	.L21
.L7:
	.loc 1 52 16
	lui	a5,%hi(.LC13)
	addi	a5,a5,%lo(.LC13)
	j	.L21
.L6:
	.loc 1 54 16
	lui	a5,%hi(.LC14)
	addi	a5,a5,%lo(.LC14)
	j	.L21
.L5:
	.loc 1 56 16
	lui	a5,%hi(.LC15)
	addi	a5,a5,%lo(.LC15)
	j	.L21
.L4:
	.loc 1 58 16
	lui	a5,%hi(.LC16)
	addi	a5,a5,%lo(.LC16)
	j	.L21
.L2:
	.loc 1 60 16
	lui	a5,%hi(.LC17)
	addi	a5,a5,%lo(.LC17)
	j	.L21
.L3:
	.loc 1 63 12
	lui	a5,%hi(.LC18)
	addi	a5,a5,%lo(.LC18)
.L21:
	.loc 1 64 1
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
	.size	mbedtls_ssl_named_group_to_str, .-mbedtls_ssl_named_group_to_str
	.section	.rodata
	.align	2
.LC19:
	.string	"rsa_pkcs1_sha256"
	.align	2
.LC20:
	.string	"rsa_pkcs1_sha384"
	.align	2
.LC21:
	.string	"rsa_pkcs1_sha512"
	.align	2
.LC22:
	.string	"ecdsa_secp256r1_sha256"
	.align	2
.LC23:
	.string	"ecdsa_secp384r1_sha384"
	.align	2
.LC24:
	.string	"ecdsa_secp521r1_sha512"
	.align	2
.LC25:
	.string	"rsa_pss_rsae_sha256"
	.align	2
.LC26:
	.string	"rsa_pss_rsae_sha384"
	.align	2
.LC27:
	.string	"rsa_pss_rsae_sha512"
	.align	2
.LC28:
	.string	"ed25519"
	.align	2
.LC29:
	.string	"ed448"
	.align	2
.LC30:
	.string	"rsa_pss_pss_sha256"
	.align	2
.LC31:
	.string	"rsa_pss_pss_sha384"
	.align	2
.LC32:
	.string	"rsa_pss_pss_sha512"
	.align	2
.LC33:
	.string	"rsa_pkcs1_sha1"
	.align	2
.LC34:
	.string	"ecdsa_sha1"
	.align	2
.LC35:
	.string	"none"
	.section	.text.mbedtls_ssl_sig_alg_to_str,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_sig_alg_to_str
	.type	mbedtls_ssl_sig_alg_to_str, @function
mbedtls_ssl_sig_alg_to_str:
.LFB140:
	.loc 1 66 1
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
	.loc 1 67 5
	lhu	a5,-18(s0)
	li	a4,4096
	addi	a4,a4,-2037
	beq	a5,a4,.L23
	li	a4,4096
	addi	a4,a4,-2037
	bgt	a5,a4,.L24
	li	a4,4096
	addi	a4,a4,-2038
	beq	a5,a4,.L25
	li	a4,4096
	addi	a4,a4,-2038
	bgt	a5,a4,.L24
	li	a4,4096
	addi	a4,a4,-2039
	beq	a5,a4,.L26
	li	a4,4096
	addi	a4,a4,-2039
	bgt	a5,a4,.L24
	li	a4,4096
	addi	a4,a4,-2040
	beq	a5,a4,.L27
	li	a4,4096
	addi	a4,a4,-2040
	bgt	a5,a4,.L24
	li	a4,4096
	addi	a4,a4,-2041
	beq	a5,a4,.L28
	li	a4,4096
	addi	a4,a4,-2041
	bgt	a5,a4,.L24
	li	a4,4096
	addi	a4,a4,-2042
	beq	a5,a4,.L29
	li	a4,4096
	addi	a4,a4,-2042
	bgt	a5,a4,.L24
	li	a4,4096
	addi	a4,a4,-2043
	beq	a5,a4,.L30
	li	a4,4096
	addi	a4,a4,-2043
	bgt	a5,a4,.L24
	li	a4,4096
	addi	a4,a4,-2044
	beq	a5,a4,.L31
	li	a4,4096
	addi	a4,a4,-2044
	bgt	a5,a4,.L24
	li	a4,1539
	beq	a5,a4,.L32
	li	a4,1539
	bgt	a5,a4,.L24
	li	a4,1537
	beq	a5,a4,.L33
	li	a4,1537
	bgt	a5,a4,.L24
	li	a4,1283
	beq	a5,a4,.L34
	li	a4,1283
	bgt	a5,a4,.L24
	li	a4,1281
	beq	a5,a4,.L35
	li	a4,1281
	bgt	a5,a4,.L24
	li	a4,1027
	beq	a5,a4,.L36
	li	a4,1027
	bgt	a5,a4,.L24
	li	a4,1025
	beq	a5,a4,.L37
	li	a4,1025
	bgt	a5,a4,.L24
	li	a4,515
	beq	a5,a4,.L38
	li	a4,515
	bgt	a5,a4,.L24
	beq	a5,zero,.L39
	li	a4,513
	beq	a5,a4,.L40
	j	.L24
.L37:
	.loc 1 70 16
	lui	a5,%hi(.LC19)
	addi	a5,a5,%lo(.LC19)
	j	.L41
.L35:
	.loc 1 72 16
	lui	a5,%hi(.LC20)
	addi	a5,a5,%lo(.LC20)
	j	.L41
.L33:
	.loc 1 74 16
	lui	a5,%hi(.LC21)
	addi	a5,a5,%lo(.LC21)
	j	.L41
.L36:
	.loc 1 76 16
	lui	a5,%hi(.LC22)
	addi	a5,a5,%lo(.LC22)
	j	.L41
.L34:
	.loc 1 78 16
	lui	a5,%hi(.LC23)
	addi	a5,a5,%lo(.LC23)
	j	.L41
.L32:
	.loc 1 80 16
	lui	a5,%hi(.LC24)
	addi	a5,a5,%lo(.LC24)
	j	.L41
.L31:
	.loc 1 82 16
	lui	a5,%hi(.LC25)
	addi	a5,a5,%lo(.LC25)
	j	.L41
.L30:
	.loc 1 84 16
	lui	a5,%hi(.LC26)
	addi	a5,a5,%lo(.LC26)
	j	.L41
.L29:
	.loc 1 86 16
	lui	a5,%hi(.LC27)
	addi	a5,a5,%lo(.LC27)
	j	.L41
.L28:
	.loc 1 88 16
	lui	a5,%hi(.LC28)
	addi	a5,a5,%lo(.LC28)
	j	.L41
.L27:
	.loc 1 90 16
	lui	a5,%hi(.LC29)
	addi	a5,a5,%lo(.LC29)
	j	.L41
.L26:
	.loc 1 92 16
	lui	a5,%hi(.LC30)
	addi	a5,a5,%lo(.LC30)
	j	.L41
.L25:
	.loc 1 94 16
	lui	a5,%hi(.LC31)
	addi	a5,a5,%lo(.LC31)
	j	.L41
.L23:
	.loc 1 96 16
	lui	a5,%hi(.LC32)
	addi	a5,a5,%lo(.LC32)
	j	.L41
.L40:
	.loc 1 98 16
	lui	a5,%hi(.LC33)
	addi	a5,a5,%lo(.LC33)
	j	.L41
.L38:
	.loc 1 100 16
	lui	a5,%hi(.LC34)
	addi	a5,a5,%lo(.LC34)
	j	.L41
.L39:
	.loc 1 102 16
	lui	a5,%hi(.LC35)
	addi	a5,a5,%lo(.LC35)
	j	.L41
.L24:
	.loc 1 105 12
	lui	a5,%hi(.LC18)
	addi	a5,a5,%lo(.LC18)
.L41:
	.loc 1 106 1
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
.LFE140:
	.size	mbedtls_ssl_sig_alg_to_str, .-mbedtls_ssl_sig_alg_to_str
	.section	.rodata
	.align	2
.LC36:
	.string	"MBEDTLS_SSL_HELLO_REQUEST"
	.align	2
.LC37:
	.string	"MBEDTLS_SSL_CLIENT_HELLO"
	.align	2
.LC38:
	.string	"MBEDTLS_SSL_SERVER_HELLO"
	.align	2
.LC39:
	.string	"MBEDTLS_SSL_SERVER_CERTIFICATE"
	.align	2
.LC40:
	.string	"MBEDTLS_SSL_SERVER_KEY_EXCHANGE"
	.align	2
.LC41:
	.string	"MBEDTLS_SSL_CERTIFICATE_REQUEST"
	.align	2
.LC42:
	.string	"MBEDTLS_SSL_SERVER_HELLO_DONE"
	.align	2
.LC43:
	.string	"MBEDTLS_SSL_CLIENT_CERTIFICATE"
	.align	2
.LC44:
	.string	"MBEDTLS_SSL_CLIENT_KEY_EXCHANGE"
	.align	2
.LC45:
	.string	"MBEDTLS_SSL_CERTIFICATE_VERIFY"
	.align	2
.LC46:
	.string	"MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC"
	.align	2
.LC47:
	.string	"MBEDTLS_SSL_CLIENT_FINISHED"
	.align	2
.LC48:
	.string	"MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC"
	.align	2
.LC49:
	.string	"MBEDTLS_SSL_SERVER_FINISHED"
	.align	2
.LC50:
	.string	"MBEDTLS_SSL_FLUSH_BUFFERS"
	.align	2
.LC51:
	.string	"MBEDTLS_SSL_HANDSHAKE_WRAPUP"
	.align	2
.LC52:
	.string	"MBEDTLS_SSL_NEW_SESSION_TICKET"
	.align	2
.LC53:
	.string	"MBEDTLS_SSL_SERVER_HELLO_VERIFY_REQUEST_SENT"
	.align	2
.LC54:
	.string	"MBEDTLS_SSL_HELLO_RETRY_REQUEST"
	.align	2
.LC55:
	.string	"MBEDTLS_SSL_ENCRYPTED_EXTENSIONS"
	.align	2
.LC56:
	.string	"MBEDTLS_SSL_END_OF_EARLY_DATA"
	.align	2
.LC57:
	.string	"MBEDTLS_SSL_CLIENT_CERTIFICATE_VERIFY"
	.align	2
.LC58:
	.string	"MBEDTLS_SSL_CLIENT_CCS_AFTER_SERVER_FINISHED"
	.align	2
.LC59:
	.string	"MBEDTLS_SSL_CLIENT_CCS_BEFORE_2ND_CLIENT_HELLO"
	.align	2
.LC60:
	.string	"MBEDTLS_SSL_SERVER_CCS_AFTER_SERVER_HELLO"
	.align	2
.LC61:
	.string	"MBEDTLS_SSL_CLIENT_CCS_AFTER_CLIENT_HELLO"
	.align	2
.LC62:
	.string	"MBEDTLS_SSL_SERVER_CCS_AFTER_HELLO_RETRY_REQUEST"
	.align	2
.LC63:
	.string	"MBEDTLS_SSL_HANDSHAKE_OVER"
	.align	2
.LC64:
	.string	"MBEDTLS_SSL_TLS1_3_NEW_SESSION_TICKET"
	.align	2
.LC65:
	.string	"MBEDTLS_SSL_TLS1_3_NEW_SESSION_TICKET_FLUSH"
	.align	2
.LC66:
	.string	"UNKNOWN_VALUE"
	.section	.text.mbedtls_ssl_states_str,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_states_str
	.type	mbedtls_ssl_states_str, @function
mbedtls_ssl_states_str:
.LFB141:
	.loc 1 108 1
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
	.loc 1 109 5
	lbu	a5,-17(s0)
	li	a4,29
	beq	a5,a4,.L43
	li	a4,29
	bgt	a5,a4,.L44
	li	a4,28
	beq	a5,a4,.L45
	li	a4,28
	bgt	a5,a4,.L44
	li	a4,27
	beq	a5,a4,.L46
	li	a4,27
	bgt	a5,a4,.L44
	li	a4,26
	beq	a5,a4,.L47
	li	a4,26
	bgt	a5,a4,.L44
	li	a4,25
	beq	a5,a4,.L48
	li	a4,25
	bgt	a5,a4,.L44
	li	a4,24
	beq	a5,a4,.L49
	li	a4,24
	bgt	a5,a4,.L44
	li	a4,23
	beq	a5,a4,.L50
	li	a4,23
	bgt	a5,a4,.L44
	li	a4,22
	beq	a5,a4,.L51
	li	a4,22
	bgt	a5,a4,.L44
	li	a4,21
	beq	a5,a4,.L52
	li	a4,21
	bgt	a5,a4,.L44
	li	a4,20
	beq	a5,a4,.L53
	li	a4,20
	bgt	a5,a4,.L44
	li	a4,19
	beq	a5,a4,.L54
	li	a4,19
	bgt	a5,a4,.L44
	li	a4,18
	beq	a5,a4,.L55
	li	a4,18
	bgt	a5,a4,.L44
	li	a4,17
	beq	a5,a4,.L56
	li	a4,17
	bgt	a5,a4,.L44
	li	a4,16
	beq	a5,a4,.L57
	li	a4,16
	bgt	a5,a4,.L44
	li	a4,15
	beq	a5,a4,.L58
	li	a4,15
	bgt	a5,a4,.L44
	li	a4,14
	beq	a5,a4,.L59
	li	a4,14
	bgt	a5,a4,.L44
	li	a4,13
	beq	a5,a4,.L60
	li	a4,13
	bgt	a5,a4,.L44
	li	a4,12
	beq	a5,a4,.L61
	li	a4,12
	bgt	a5,a4,.L44
	li	a4,11
	beq	a5,a4,.L62
	li	a4,11
	bgt	a5,a4,.L44
	li	a4,10
	beq	a5,a4,.L63
	li	a4,10
	bgt	a5,a4,.L44
	li	a4,9
	beq	a5,a4,.L64
	li	a4,9
	bgt	a5,a4,.L44
	li	a4,8
	beq	a5,a4,.L65
	li	a4,8
	bgt	a5,a4,.L44
	li	a4,7
	beq	a5,a4,.L66
	li	a4,7
	bgt	a5,a4,.L44
	li	a4,6
	beq	a5,a4,.L67
	li	a4,6
	bgt	a5,a4,.L44
	li	a4,5
	beq	a5,a4,.L68
	li	a4,5
	bgt	a5,a4,.L44
	li	a4,4
	beq	a5,a4,.L69
	li	a4,4
	bgt	a5,a4,.L44
	li	a4,3
	beq	a5,a4,.L70
	li	a4,3
	bgt	a5,a4,.L44
	li	a4,2
	beq	a5,a4,.L71
	li	a4,2
	bgt	a5,a4,.L44
	beq	a5,zero,.L72
	li	a4,1
	beq	a5,a4,.L73
	j	.L44
.L72:
	.loc 1 111 20
	lui	a5,%hi(.LC36)
	addi	a5,a5,%lo(.LC36)
	j	.L74
.L73:
	.loc 1 113 20
	lui	a5,%hi(.LC37)
	addi	a5,a5,%lo(.LC37)
	j	.L74
.L71:
	.loc 1 115 20
	lui	a5,%hi(.LC38)
	addi	a5,a5,%lo(.LC38)
	j	.L74
.L70:
	.loc 1 117 20
	lui	a5,%hi(.LC39)
	addi	a5,a5,%lo(.LC39)
	j	.L74
.L69:
	.loc 1 119 20
	lui	a5,%hi(.LC40)
	addi	a5,a5,%lo(.LC40)
	j	.L74
.L68:
	.loc 1 121 20
	lui	a5,%hi(.LC41)
	addi	a5,a5,%lo(.LC41)
	j	.L74
.L67:
	.loc 1 123 20
	lui	a5,%hi(.LC42)
	addi	a5,a5,%lo(.LC42)
	j	.L74
.L66:
	.loc 1 125 20
	lui	a5,%hi(.LC43)
	addi	a5,a5,%lo(.LC43)
	j	.L74
.L65:
	.loc 1 127 20
	lui	a5,%hi(.LC44)
	addi	a5,a5,%lo(.LC44)
	j	.L74
.L64:
	.loc 1 129 20
	lui	a5,%hi(.LC45)
	addi	a5,a5,%lo(.LC45)
	j	.L74
.L63:
	.loc 1 131 20
	lui	a5,%hi(.LC46)
	addi	a5,a5,%lo(.LC46)
	j	.L74
.L62:
	.loc 1 133 20
	lui	a5,%hi(.LC47)
	addi	a5,a5,%lo(.LC47)
	j	.L74
.L61:
	.loc 1 135 20
	lui	a5,%hi(.LC48)
	addi	a5,a5,%lo(.LC48)
	j	.L74
.L60:
	.loc 1 137 20
	lui	a5,%hi(.LC49)
	addi	a5,a5,%lo(.LC49)
	j	.L74
.L59:
	.loc 1 139 20
	lui	a5,%hi(.LC50)
	addi	a5,a5,%lo(.LC50)
	j	.L74
.L58:
	.loc 1 141 20
	lui	a5,%hi(.LC51)
	addi	a5,a5,%lo(.LC51)
	j	.L74
.L57:
	.loc 1 143 20
	lui	a5,%hi(.LC52)
	addi	a5,a5,%lo(.LC52)
	j	.L74
.L56:
	.loc 1 145 20
	lui	a5,%hi(.LC53)
	addi	a5,a5,%lo(.LC53)
	j	.L74
.L55:
	.loc 1 147 20
	lui	a5,%hi(.LC54)
	addi	a5,a5,%lo(.LC54)
	j	.L74
.L54:
	.loc 1 149 20
	lui	a5,%hi(.LC55)
	addi	a5,a5,%lo(.LC55)
	j	.L74
.L53:
	.loc 1 151 20
	lui	a5,%hi(.LC56)
	addi	a5,a5,%lo(.LC56)
	j	.L74
.L52:
	.loc 1 153 20
	lui	a5,%hi(.LC57)
	addi	a5,a5,%lo(.LC57)
	j	.L74
.L51:
	.loc 1 155 20
	lui	a5,%hi(.LC58)
	addi	a5,a5,%lo(.LC58)
	j	.L74
.L50:
	.loc 1 157 20
	lui	a5,%hi(.LC59)
	addi	a5,a5,%lo(.LC59)
	j	.L74
.L49:
	.loc 1 159 20
	lui	a5,%hi(.LC60)
	addi	a5,a5,%lo(.LC60)
	j	.L74
.L48:
	.loc 1 161 20
	lui	a5,%hi(.LC61)
	addi	a5,a5,%lo(.LC61)
	j	.L74
.L47:
	.loc 1 163 20
	lui	a5,%hi(.LC62)
	addi	a5,a5,%lo(.LC62)
	j	.L74
.L46:
	.loc 1 165 20
	lui	a5,%hi(.LC63)
	addi	a5,a5,%lo(.LC63)
	j	.L74
.L45:
	.loc 1 167 20
	lui	a5,%hi(.LC64)
	addi	a5,a5,%lo(.LC64)
	j	.L74
.L43:
	.loc 1 169 20
	lui	a5,%hi(.LC65)
	addi	a5,a5,%lo(.LC65)
	j	.L74
.L44:
	.loc 1 171 20
	lui	a5,%hi(.LC66)
	addi	a5,a5,%lo(.LC66)
.L74:
	.loc 1 173 1
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
	.size	mbedtls_ssl_states_str, .-mbedtls_ssl_states_str
	.section	.rodata
	.align	2
.LC67:
	.string	"MBEDTLS_SSL_VERSION_UNKNOWN"
	.align	2
.LC68:
	.string	"MBEDTLS_SSL_VERSION_TLS1_2"
	.align	2
.LC69:
	.string	"MBEDTLS_SSL_VERSION_TLS1_3"
	.section	.text.mbedtls_ssl_protocol_version_str,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_protocol_version_str
	.type	mbedtls_ssl_protocol_version_str, @function
mbedtls_ssl_protocol_version_str:
.LFB142:
	.loc 1 192 1
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
	.loc 1 193 5
	lhu	a5,-18(s0)
	li	a4,772
	beq	a5,a4,.L76
	li	a4,772
	bgt	a5,a4,.L77
	beq	a5,zero,.L78
	li	a4,771
	beq	a5,a4,.L79
	j	.L77
.L78:
	.loc 1 195 20
	lui	a5,%hi(.LC67)
	addi	a5,a5,%lo(.LC67)
	j	.L80
.L79:
	.loc 1 197 20
	lui	a5,%hi(.LC68)
	addi	a5,a5,%lo(.LC68)
	j	.L80
.L76:
	.loc 1 199 20
	lui	a5,%hi(.LC69)
	addi	a5,a5,%lo(.LC69)
	j	.L80
.L77:
	.loc 1 201 20
	lui	a5,%hi(.LC66)
	addi	a5,a5,%lo(.LC66)
.L80:
	.loc 1 203 1
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
	.size	mbedtls_ssl_protocol_version_str, .-mbedtls_ssl_protocol_version_str
	.section	.rodata
	.align	2
.LC70:
	.string	"MBEDTLS_SSL_TLS_PRF_NONE"
	.align	2
.LC71:
	.string	"MBEDTLS_SSL_TLS_PRF_SHA384"
	.align	2
.LC72:
	.string	"MBEDTLS_SSL_TLS_PRF_SHA256"
	.align	2
.LC73:
	.string	"MBEDTLS_SSL_HKDF_EXPAND_SHA384"
	.align	2
.LC74:
	.string	"MBEDTLS_SSL_HKDF_EXPAND_SHA256"
	.section	.text.mbedtls_tls_prf_types_str,"ax",@progbits
	.align	1
	.globl	mbedtls_tls_prf_types_str
	.type	mbedtls_tls_prf_types_str, @function
mbedtls_tls_prf_types_str:
.LFB143:
	.loc 1 206 1
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
	.loc 1 207 5
	lbu	a5,-17(s0)
	li	a4,4
	beq	a5,a4,.L82
	li	a4,4
	bgt	a5,a4,.L83
	li	a4,3
	beq	a5,a4,.L84
	li	a4,3
	bgt	a5,a4,.L83
	li	a4,2
	beq	a5,a4,.L85
	li	a4,2
	bgt	a5,a4,.L83
	beq	a5,zero,.L86
	li	a4,1
	beq	a5,a4,.L87
	j	.L83
.L86:
	.loc 1 209 20
	lui	a5,%hi(.LC70)
	addi	a5,a5,%lo(.LC70)
	j	.L88
.L87:
	.loc 1 211 20
	lui	a5,%hi(.LC71)
	addi	a5,a5,%lo(.LC71)
	j	.L88
.L85:
	.loc 1 213 20
	lui	a5,%hi(.LC72)
	addi	a5,a5,%lo(.LC72)
	j	.L88
.L84:
	.loc 1 215 20
	lui	a5,%hi(.LC73)
	addi	a5,a5,%lo(.LC73)
	j	.L88
.L82:
	.loc 1 217 20
	lui	a5,%hi(.LC74)
	addi	a5,a5,%lo(.LC74)
	j	.L88
.L83:
	.loc 1 219 20
	lui	a5,%hi(.LC66)
	addi	a5,a5,%lo(.LC66)
.L88:
	.loc 1 221 1
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
.LFE143:
	.size	mbedtls_tls_prf_types_str, .-mbedtls_tls_prf_types_str
	.section	.rodata
	.align	2
.LC75:
	.string	"MBEDTLS_SSL_KEY_EXPORT_TLS12_MASTER_SECRET"
	.section	.text.mbedtls_ssl_key_export_type_str,"ax",@progbits
	.align	1
	.globl	mbedtls_ssl_key_export_type_str
	.type	mbedtls_ssl_key_export_type_str, @function
mbedtls_ssl_key_export_type_str:
.LFB144:
	.loc 1 224 1
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
	.loc 1 225 5
	lbu	a5,-17(s0)
	bne	a5,zero,.L90
	.loc 1 227 20
	lui	a5,%hi(.LC75)
	addi	a5,a5,%lo(.LC75)
	j	.L91
.L90:
	.loc 1 243 20
	lui	a5,%hi(.LC66)
	addi	a5,a5,%lo(.LC66)
.L91:
	.loc 1 245 1
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
.LFE144:
	.size	mbedtls_ssl_key_export_type_str, .-mbedtls_ssl_key_export_type_str
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ssl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2c5
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x40
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xb
	.4byte	0x84
	.uleb128 0xc
	.byte	0x4
	.4byte	0x8b
	.uleb128 0x5
	.byte	0x1
	.4byte	0x32
	.2byte	0x2eb
	.4byte	0x157
	.uleb128 0x1
	.4byte	.LASF13
	.byte	0
	.uleb128 0x1
	.4byte	.LASF14
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.4byte	.LASF44
	.2byte	0x30b
	.byte	0x1
	.4byte	0x96
	.uleb128 0x5
	.byte	0x2
	.4byte	0x40
	.2byte	0x4ea
	.4byte	0x184
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0
	.uleb128 0x7
	.4byte	.LASF46
	.2byte	0x303
	.uleb128 0x7
	.4byte	.LASF47
	.2byte	0x304
	.byte	0
	.uleb128 0x6
	.4byte	.LASF48
	.2byte	0x4ee
	.byte	0x3
	.4byte	0x163
	.uleb128 0x5
	.byte	0x1
	.4byte	0x32
	.2byte	0x562
	.4byte	0x1bb
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF54
	.2byte	0x569
	.byte	0x1
	.4byte	0x190
	.uleb128 0x5
	.byte	0x1
	.4byte	0x32
	.2byte	0x56b
	.4byte	0x1da
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF56
	.2byte	0x575
	.byte	0x3
	.4byte	0x1c7
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0xdf
	.4byte	0x90
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20c
	.uleb128 0x3
	.string	"in"
	.byte	0xdf
	.byte	0x4a
	.4byte	0x1da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0xcd
	.4byte	0x90
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x232
	.uleb128 0x3
	.string	"in"
	.byte	0xcd
	.byte	0x3e
	.4byte	0x1bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0xbf
	.4byte	0x90
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x258
	.uleb128 0x3
	.string	"in"
	.byte	0xbf
	.byte	0x4c
	.4byte	0x184
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x6b
	.4byte	0x90
	.4byte	.LFB141
	.4byte	.LFE141-.LFB141
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27e
	.uleb128 0x3
	.string	"in"
	.byte	0x6b
	.byte	0x38
	.4byte	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB140
	.4byte	.LFE140-.LFB140
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a4
	.uleb128 0x3
	.string	"in"
	.byte	0x41
	.byte	0x32
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x1
	.byte	0x15
	.byte	0xd
	.4byte	0x90
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.string	"in"
	.byte	0x15
	.byte	0x36
	.4byte	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.sleb128 13
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
	.uleb128 0x5
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
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.4byte	.LFB140
	.4byte	.LFE140-.LFB140
	.4byte	.LFB141
	.4byte	.LFE141-.LFB141
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
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
	.4byte	.LFB139
	.uleb128 .LFE139-.LFB139
	.byte	0x7
	.4byte	.LFB140
	.uleb128 .LFE140-.LFB140
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
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"MBEDTLS_SSL_NEW_SESSION_TICKET"
.LASF46:
	.string	"MBEDTLS_SSL_VERSION_TLS1_2"
.LASF47:
	.string	"MBEDTLS_SSL_VERSION_TLS1_3"
.LASF4:
	.string	"short int"
.LASF30:
	.string	"MBEDTLS_SSL_SERVER_HELLO_VERIFY_REQUEST_SENT"
.LASF22:
	.string	"MBEDTLS_SSL_CERTIFICATE_VERIFY"
.LASF13:
	.string	"MBEDTLS_SSL_HELLO_REQUEST"
.LASF54:
	.string	"mbedtls_tls_prf_types"
.LASF53:
	.string	"MBEDTLS_SSL_HKDF_EXPAND_SHA256"
.LASF36:
	.string	"MBEDTLS_SSL_CLIENT_CCS_BEFORE_2ND_CLIENT_HELLO"
.LASF25:
	.string	"MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC"
.LASF24:
	.string	"MBEDTLS_SSL_CLIENT_FINISHED"
.LASF11:
	.string	"long double"
.LASF8:
	.string	"long long int"
.LASF58:
	.string	"mbedtls_tls_prf_types_str"
.LASF37:
	.string	"MBEDTLS_SSL_SERVER_CCS_AFTER_SERVER_HELLO"
.LASF33:
	.string	"MBEDTLS_SSL_END_OF_EARLY_DATA"
.LASF6:
	.string	"long int"
.LASF32:
	.string	"MBEDTLS_SSL_ENCRYPTED_EXTENSIONS"
.LASF14:
	.string	"MBEDTLS_SSL_CLIENT_HELLO"
.LASF40:
	.string	"MBEDTLS_SSL_HANDSHAKE_OVER"
.LASF55:
	.string	"MBEDTLS_SSL_KEY_EXPORT_TLS12_MASTER_SECRET"
.LASF44:
	.string	"mbedtls_ssl_states"
.LASF19:
	.string	"MBEDTLS_SSL_SERVER_HELLO_DONE"
.LASF45:
	.string	"MBEDTLS_SSL_VERSION_UNKNOWN"
.LASF15:
	.string	"MBEDTLS_SSL_SERVER_HELLO"
.LASF21:
	.string	"MBEDTLS_SSL_CLIENT_KEY_EXCHANGE"
.LASF3:
	.string	"unsigned char"
.LASF20:
	.string	"MBEDTLS_SSL_CLIENT_CERTIFICATE"
.LASF23:
	.string	"MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC"
.LASF2:
	.string	"signed char"
.LASF17:
	.string	"MBEDTLS_SSL_SERVER_KEY_EXCHANGE"
.LASF9:
	.string	"long long unsigned int"
.LASF49:
	.string	"MBEDTLS_SSL_TLS_PRF_NONE"
.LASF10:
	.string	"unsigned int"
.LASF35:
	.string	"MBEDTLS_SSL_CLIENT_CCS_AFTER_SERVER_FINISHED"
.LASF43:
	.string	"uint16_t"
.LASF50:
	.string	"MBEDTLS_SSL_TLS_PRF_SHA384"
.LASF7:
	.string	"long unsigned int"
.LASF48:
	.string	"mbedtls_ssl_protocol_version"
.LASF56:
	.string	"mbedtls_ssl_key_export_type"
.LASF42:
	.string	"MBEDTLS_SSL_TLS1_3_NEW_SESSION_TICKET_FLUSH"
.LASF5:
	.string	"short unsigned int"
.LASF12:
	.string	"char"
.LASF62:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF57:
	.string	"mbedtls_ssl_key_export_type_str"
.LASF61:
	.string	"mbedtls_ssl_sig_alg_to_str"
.LASF27:
	.string	"MBEDTLS_SSL_FLUSH_BUFFERS"
.LASF39:
	.string	"MBEDTLS_SSL_SERVER_CCS_AFTER_HELLO_RETRY_REQUEST"
.LASF38:
	.string	"MBEDTLS_SSL_CLIENT_CCS_AFTER_CLIENT_HELLO"
.LASF59:
	.string	"mbedtls_ssl_protocol_version_str"
.LASF16:
	.string	"MBEDTLS_SSL_SERVER_CERTIFICATE"
.LASF52:
	.string	"MBEDTLS_SSL_HKDF_EXPAND_SHA384"
.LASF51:
	.string	"MBEDTLS_SSL_TLS_PRF_SHA256"
.LASF63:
	.string	"mbedtls_ssl_named_group_to_str"
.LASF26:
	.string	"MBEDTLS_SSL_SERVER_FINISHED"
.LASF34:
	.string	"MBEDTLS_SSL_CLIENT_CERTIFICATE_VERIFY"
.LASF60:
	.string	"mbedtls_ssl_states_str"
.LASF18:
	.string	"MBEDTLS_SSL_CERTIFICATE_REQUEST"
.LASF41:
	.string	"MBEDTLS_SSL_TLS1_3_NEW_SESSION_TICKET"
.LASF28:
	.string	"MBEDTLS_SSL_HANDSHAKE_WRAPUP"
.LASF31:
	.string	"MBEDTLS_SSL_HELLO_RETRY_REQUEST"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/ssl_debug_helpers_generated.c"
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
