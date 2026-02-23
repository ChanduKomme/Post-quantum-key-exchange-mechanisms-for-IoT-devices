	.file	"error.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602" "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/error.c"
	.section	.rodata
	.align	2
.LC0:
	.string	"CIPHER - The selected feature is not available"
	.align	2
.LC1:
	.string	"CIPHER - Bad input parameters"
	.align	2
.LC2:
	.string	"CIPHER - Failed to allocate memory"
	.align	2
.LC3:
	.string	"CIPHER - Input data contains invalid padding and is rejected"
	.align	2
.LC4:
	.string	"CIPHER - Decryption of block requires a full block"
	.align	2
.LC5:
	.string	"CIPHER - Authentication failed (for AEAD modes)"
	.align	2
.LC6:
	.string	"CIPHER - The context is invalid. For example, because it was freed"
	.align	2
.LC7:
	.string	"DHM - Bad input parameters"
	.align	2
.LC8:
	.string	"DHM - Reading of the DHM parameters failed"
	.align	2
.LC9:
	.string	"DHM - Making of the DHM parameters failed"
	.align	2
.LC10:
	.string	"DHM - Reading of the public values failed"
	.align	2
.LC11:
	.string	"DHM - Making of the public value failed"
	.align	2
.LC12:
	.string	"DHM - Calculation of the DHM secret failed"
	.align	2
.LC13:
	.string	"DHM - The ASN.1 data is not formatted correctly"
	.align	2
.LC14:
	.string	"DHM - Allocation of memory failed"
	.align	2
.LC15:
	.string	"DHM - Read or write of file failed"
	.align	2
.LC16:
	.string	"DHM - Setting the modulus and generator failed"
	.align	2
.LC17:
	.string	"ECP - Bad input parameters to function"
	.align	2
.LC18:
	.string	"ECP - The buffer is too small to write to"
	.align	2
.LC19:
	.string	"ECP - The requested feature is not available, for example, the requested curve is not supported"
	.align	2
.LC20:
	.string	"ECP - The signature is not valid"
	.align	2
.LC21:
	.string	"ECP - Memory allocation failed"
	.align	2
.LC22:
	.string	"ECP - Generation of random value, such as ephemeral key, failed"
	.align	2
.LC23:
	.string	"ECP - Invalid private or public key"
	.align	2
.LC24:
	.string	"ECP - The buffer contains a valid signature followed by more data"
	.align	2
.LC25:
	.string	"ECP - Operation in progress, call again with the same parameters to continue"
	.align	2
.LC26:
	.string	"MD - The selected feature is not available"
	.align	2
.LC27:
	.string	"MD - Bad input parameters to function"
	.align	2
.LC28:
	.string	"MD - Failed to allocate memory"
	.align	2
.LC29:
	.string	"MD - Opening or reading of file failed"
	.align	2
.LC30:
	.string	"PK - Memory allocation failed"
	.align	2
.LC31:
	.string	"PK - Type mismatch, eg attempt to encrypt with an ECDSA key"
	.align	2
.LC32:
	.string	"PK - Bad input parameters to function"
	.align	2
.LC33:
	.string	"PK - Read/write of file failed"
	.align	2
.LC34:
	.string	"PK - Unsupported key version"
	.align	2
.LC35:
	.string	"PK - Invalid key tag or value"
	.align	2
.LC36:
	.string	"PK - Key algorithm is unsupported (only RSA and EC are supported)"
	.align	2
.LC37:
	.string	"PK - Private key password can't be empty"
	.align	2
.LC38:
	.string	"PK - Given private key password does not allow for correct decryption"
	.align	2
.LC39:
	.string	"PK - The pubkey tag or value is invalid (only RSA and EC are supported)"
	.align	2
.LC40:
	.string	"PK - The algorithm tag or value is invalid"
	.align	2
.LC41:
	.string	"PK - Elliptic curve is unsupported (only NIST curves are supported)"
	.align	2
.LC42:
	.string	"PK - Unavailable feature, e.g. RSA disabled for RSA key"
	.align	2
.LC43:
	.string	"PK - The buffer contains a valid signature followed by more data"
	.align	2
.LC44:
	.string	"PK - The output buffer is too small"
	.align	2
.LC45:
	.string	"PKCS12 - Bad input parameters to function"
	.align	2
.LC46:
	.string	"PKCS12 - Feature not available, e.g. unsupported encryption scheme"
	.align	2
.LC47:
	.string	"PKCS12 - PBE ASN.1 data not as expected"
	.align	2
.LC48:
	.string	"PKCS12 - Given private key password does not allow for correct decryption"
	.align	2
.LC49:
	.string	"PKCS5 - Bad input parameters to function"
	.align	2
.LC50:
	.string	"PKCS5 - Unexpected ASN.1 data"
	.align	2
.LC51:
	.string	"PKCS5 - Requested encryption or digest alg not available"
	.align	2
.LC52:
	.string	"PKCS5 - Given private key password does not allow for correct decryption"
	.align	2
.LC53:
	.string	"PKCS7 - The format is invalid, e.g. different type expected"
	.align	2
.LC54:
	.string	"PKCS7 - Unavailable feature, e.g. anything other than signed data"
	.align	2
.LC55:
	.string	"PKCS7 - The PKCS #7 version element is invalid or cannot be parsed"
	.align	2
.LC56:
	.string	"PKCS7 - The PKCS #7 content info is invalid or cannot be parsed"
	.align	2
.LC57:
	.string	"PKCS7 - The algorithm tag or value is invalid or cannot be parsed"
	.align	2
.LC58:
	.string	"PKCS7 - The certificate tag or value is invalid or cannot be parsed"
	.align	2
.LC59:
	.string	"PKCS7 - Error parsing the signature"
	.align	2
.LC60:
	.string	"PKCS7 - Error parsing the signer's info"
	.align	2
.LC61:
	.string	"PKCS7 - Input invalid"
	.align	2
.LC62:
	.string	"PKCS7 - Allocation of memory failed"
	.align	2
.LC63:
	.string	"PKCS7 - Verification Failed"
	.align	2
.LC64:
	.string	"PKCS7 - The PKCS #7 date issued/expired dates are invalid"
	.align	2
.LC65:
	.string	"RSA - Bad input parameters to function"
	.align	2
.LC66:
	.string	"RSA - Input data contains invalid padding and is rejected"
	.align	2
.LC67:
	.string	"RSA - Something failed during generation of a key"
	.align	2
.LC68:
	.string	"RSA - Key failed to pass the validity check of the library"
	.align	2
.LC69:
	.string	"RSA - The public key operation failed"
	.align	2
.LC70:
	.string	"RSA - The private key operation failed"
	.align	2
.LC71:
	.string	"RSA - The PKCS#1 verification failed"
	.align	2
.LC72:
	.string	"RSA - The output buffer for decryption is not large enough"
	.align	2
.LC73:
	.string	"RSA - The random generator failed to generate non-zeros"
	.align	2
.LC74:
	.string	"SSL - A cryptographic operation is in progress. Try again later"
	.align	2
.LC75:
	.string	"SSL - The requested feature is not available"
	.align	2
.LC76:
	.string	"SSL - Bad input parameters to function"
	.align	2
.LC77:
	.string	"SSL - Verification of the message MAC failed"
	.align	2
.LC78:
	.string	"SSL - An invalid SSL record was received"
	.align	2
.LC79:
	.string	"SSL - The connection indicated an EOF"
	.align	2
.LC80:
	.string	"SSL - A message could not be parsed due to a syntactic error"
	.align	2
.LC81:
	.string	"SSL - No RNG was provided to the SSL module"
	.align	2
.LC82:
	.string	"SSL - No client certification received from the client, but required by the authentication mode"
	.align	2
.LC83:
	.string	"SSL - Client received an extended server hello containing an unsupported extension"
	.align	2
.LC84:
	.string	"SSL - No ALPN protocols supported that the client advertises"
	.align	2
.LC85:
	.string	"SSL - The own private key or pre-shared key is not set, but needed"
	.align	2
.LC86:
	.string	"SSL - No CA Chain is set, but required to operate"
	.align	2
.LC87:
	.string	"SSL - An unexpected message was received from our peer"
	.align	2
.LC88:
	.string	"SSL - A fatal alert message was received from our peer"
	.align	2
.LC89:
	.string	"SSL - No server could be identified matching the client's SNI"
	.align	2
.LC90:
	.string	"SSL - The peer notified us that the connection is going to be closed"
	.align	2
.LC91:
	.string	"SSL - Processing of the Certificate handshake message failed"
	.align	2
.LC92:
	.string	"SSL - A TLS 1.3 NewSessionTicket message has been received"
	.align	2
.LC93:
	.string	"SSL - Not possible to read early data"
	.align	2
.LC94:
	.ascii	"SSL - * Early data has been received as part of an on-going "
	.ascii	"handshake. This error code can be returned only on server si"
	.ascii	"de if and only if early data has been enabled by means of th"
	.ascii	"e mbedtls_ssl_conf_early_data() API. This error code can t"
	.string	"hen be returned by mbedtls_ssl_handshake(), mbedtls_ssl_handshake_step(), mbedtls_ssl_read() or mbedtls_ssl_write() if early data has been received as part of the handshake sequence they triggered. To read the early data, call mbedtls_ssl_read_early_data()"
	.align	2
.LC95:
	.string	"SSL - Not possible to write early data"
	.align	2
.LC96:
	.string	"SSL - Cache entry not found"
	.align	2
.LC97:
	.string	"SSL - Memory allocation failed"
	.align	2
.LC98:
	.string	"SSL - Hardware acceleration function returned with error"
	.align	2
.LC99:
	.string	"SSL - Hardware acceleration function skipped / left alone data"
	.align	2
.LC100:
	.string	"SSL - Handshake protocol not within min/max boundaries"
	.align	2
.LC101:
	.string	"SSL - The handshake negotiation failed"
	.align	2
.LC102:
	.string	"SSL - Session ticket has expired"
	.align	2
.LC103:
	.string	"SSL - Public key type mismatch (eg, asked for RSA key exchange and presented EC key)"
	.align	2
.LC104:
	.string	"SSL - Unknown identity received (eg, PSK identity)"
	.align	2
.LC105:
	.string	"SSL - Internal error (eg, unexpected failure in lower-level module)"
	.align	2
.LC106:
	.string	"SSL - A counter would wrap (eg, too many messages exchanged)"
	.align	2
.LC107:
	.string	"SSL - Unexpected message at ServerHello in renegotiation"
	.align	2
.LC108:
	.string	"SSL - DTLS client must retry for hello verification"
	.align	2
.LC109:
	.string	"SSL - A buffer is too small to receive or write a message"
	.align	2
.LC110:
	.string	"SSL - No data of requested type currently available on underlying transport"
	.align	2
.LC111:
	.string	"SSL - Connection requires a write call"
	.align	2
.LC112:
	.string	"SSL - The operation timed out"
	.align	2
.LC113:
	.string	"SSL - The client initiated a reconnect from the same port"
	.align	2
.LC114:
	.string	"SSL - Record header looks valid but is not expected"
	.align	2
.LC115:
	.string	"SSL - The alert message received indicates a non-fatal error"
	.align	2
.LC116:
	.string	"SSL - A field in a message was incorrect or inconsistent with other fields"
	.align	2
.LC117:
	.string	"SSL - Internal-only message signaling that further message-processing should be done"
	.align	2
.LC118:
	.string	"SSL - The asynchronous operation is not completed yet"
	.align	2
.LC119:
	.string	"SSL - Internal-only message signaling that a message arrived early"
	.align	2
.LC120:
	.string	"SSL - An encrypted DTLS-frame with an unexpected CID was received"
	.align	2
.LC121:
	.string	"SSL - An operation failed due to an unexpected version or configuration"
	.align	2
.LC122:
	.string	"SSL - Invalid value in SSL config"
	.align	2
.LC123:
	.ascii	"SSL - Attempt to verify a certificate without an expected ho"
	.ascii	"stname. This is usually insecure.  In TLS clients, when a cl"
	.ascii	"ient authenticates a server through its certificate, the cli"
	.ascii	"ent normally checks three things: - the certificate chain mu"
	.ascii	"st be valid; - the chain must start from a trusted CA; - the"
	.ascii	" certificate must cover the server name that is expected by "
	.ascii	"the client.  Omitting any of these checks is generally insec"
	.ascii	"ure, and can allow a malicious server to impersonate a legit"
	.ascii	"imate server.  The third check may be safely skipped in some"
	.ascii	" unusual scenarios, such as networks where eavesdropping is "
	.ascii	"a risk but not active attacks, or a private PKI where the cl"
	.ascii	"ient equally trusts all servers that are accredited by the r"
	.ascii	"oot CA.  You should call mbedtls_ssl_set_hostname() with the"
	.ascii	" expected server name before starting a TLS handshake on a c"
	.ascii	"lient (unless the client is set up to only use PSK-based aut"
	.ascii	"hentication, which does not rely on the host name). If you h"
	.ascii	"ave determined that server name verification is not required"
	.ascii	" for security in your scenario, call mbedtls_ssl_set_hostnam"
	.ascii	"e() with \\p NULL as the server name.  This error is raised "
	.ascii	"if all of the following conditions are met:  - A TLS client "
	.ascii	"is configured with the authenticat"
	.string	"ion mode #MBEDTLS_SSL_VERIFY_REQUIRED (default). - Certificate authentication is enabled. - The client does not call mbedtls_ssl_set_hostname(). - The configuration option #MBEDTLS_SSL_CLI_ALLOW_WEAK_CERTIFICATE_VERIFICATION_WITHOUT_HOSTNAME is not enabled"
	.align	2
.LC124:
	.string	"X509 - Unavailable feature, e.g. RSA hashing/encryption combination"
	.align	2
.LC125:
	.string	"X509 - Requested OID is unknown"
	.align	2
.LC126:
	.string	"X509 - The CRT/CRL/CSR format is invalid, e.g. different type expected"
	.align	2
.LC127:
	.string	"X509 - The CRT/CRL/CSR version element is invalid"
	.align	2
.LC128:
	.string	"X509 - The serial tag or value is invalid"
	.align	2
.LC129:
	.string	"X509 - The algorithm tag or value is invalid"
	.align	2
.LC130:
	.string	"X509 - The name tag or value is invalid"
	.align	2
.LC131:
	.string	"X509 - The date tag or value is invalid"
	.align	2
.LC132:
	.string	"X509 - The signature tag or value invalid"
	.align	2
.LC133:
	.string	"X509 - The extension tag or value is invalid"
	.align	2
.LC134:
	.string	"X509 - CRT/CRL/CSR has an unsupported version number"
	.align	2
.LC135:
	.string	"X509 - Signature algorithm (oid) is unsupported"
	.align	2
.LC136:
	.string	"X509 - Signature algorithms do not match. (see \\c ::mbedtls_x509_crt sig_oid)"
	.align	2
.LC137:
	.string	"X509 - Certificate verification failed, e.g. CRL, CA or signature check failed"
	.align	2
.LC138:
	.string	"X509 - Format not recognized as DER or PEM"
	.align	2
.LC139:
	.string	"X509 - Input invalid"
	.align	2
.LC140:
	.string	"X509 - Allocation of memory failed"
	.align	2
.LC141:
	.string	"X509 - Read/write of file failed"
	.align	2
.LC142:
	.string	"X509 - Destination buffer is too small"
	.align	2
.LC143:
	.string	"X509 - A fatal error occurred, eg the chain is too long or the vrfy callback failed"
	.section	.text.mbedtls_high_level_strerr,"ax",@progbits
	.align	1
	.globl	mbedtls_high_level_strerr
	.type	mbedtls_high_level_strerr, @function
mbedtls_high_level_strerr:
.LFB98:
	.file 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/error.c"
	.loc 1 175 1
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
	.loc 1 178 8
	lw	a5,-36(s0)
	bge	a5,zero,.L2
	.loc 1 179 20
	lw	a5,-36(s0)
	neg	a5,a5
	sw	a5,-36(s0)
.L2:
	.loc 1 183 27
	lw	a4,-36(s0)
	li	a5,65536
	addi	a5,a5,-128
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 185 5
	lw	a4,-20(s0)
	li	a5,32768
	addi	a5,a5,-128
	beq	a4,a5,.L3
	lw	a4,-20(s0)
	li	a5,32768
	addi	a5,a5,-128
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,32768
	addi	a5,a5,-256
	beq	a4,a5,.L5
	lw	a4,-20(s0)
	li	a5,32768
	addi	a5,a5,-256
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,32768
	addi	a5,a5,-384
	beq	a4,a5,.L6
	lw	a4,-20(s0)
	li	a5,32768
	addi	a5,a5,-384
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,32768
	addi	a5,a5,-896
	beq	a4,a5,.L7
	lw	a4,-20(s0)
	li	a5,32768
	addi	a5,a5,-896
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,32768
	addi	a5,a5,-1024
	beq	a4,a5,.L8
	lw	a4,-20(s0)
	li	a5,32768
	addi	a5,a5,-1024
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,32768
	addi	a5,a5,-1152
	beq	a4,a5,.L9
	lw	a4,-20(s0)
	li	a5,32768
	addi	a5,a5,-1152
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,32768
	addi	a5,a5,-1280
	beq	a4,a5,.L10
	lw	a4,-20(s0)
	li	a5,32768
	addi	a5,a5,-1280
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,32768
	addi	a5,a5,-1536
	beq	a4,a5,.L11
	lw	a4,-20(s0)
	li	a5,32768
	addi	a5,a5,-1536
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,32768
	addi	a5,a5,-1920
	beq	a4,a5,.L12
	lw	a4,-20(s0)
	li	a5,32768
	addi	a5,a5,-1920
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,32768
	addi	a5,a5,-2048
	beq	a4,a5,.L13
	lw	a4,-20(s0)
	li	a5,32768
	addi	a5,a5,-2048
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,1920
	beq	a4,a5,.L14
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,1920
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,1792
	beq	a4,a5,.L15
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,1792
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,1664
	beq	a4,a5,.L16
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,1664
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,1536
	beq	a4,a5,.L17
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,1536
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,1408
	beq	a4,a5,.L18
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,1408
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,1280
	beq	a4,a5,.L19
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,1280
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,1152
	beq	a4,a5,.L20
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,1152
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,1024
	beq	a4,a5,.L21
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,1024
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,768
	beq	a4,a5,.L22
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,768
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,640
	beq	a4,a5,.L23
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,640
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,512
	beq	a4,a5,.L24
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,512
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,384
	beq	a4,a5,.L25
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,384
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,256
	beq	a4,a5,.L26
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,256
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,128
	beq	a4,a5,.L27
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,128
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	beq	a4,a5,.L28
	lw	a4,-20(s0)
	li	a5,28672
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-128
	beq	a4,a5,.L29
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-128
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-384
	beq	a4,a5,.L30
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-384
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-512
	beq	a4,a5,.L31
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-512
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-640
	beq	a4,a5,.L32
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-640
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-768
	beq	a4,a5,.L33
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-768
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-896
	beq	a4,a5,.L34
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-896
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-1024
	beq	a4,a5,.L35
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-1024
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-1152
	beq	a4,a5,.L36
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-1152
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-1280
	beq	a4,a5,.L37
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-1280
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-1408
	beq	a4,a5,.L38
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-1408
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-1536
	beq	a4,a5,.L39
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-1536
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-1792
	beq	a4,a5,.L40
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-1792
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-1920
	beq	a4,a5,.L41
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-1920
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-2048
	beq	a4,a5,.L42
	lw	a4,-20(s0)
	li	a5,28672
	addi	a5,a5,-2048
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,1920
	beq	a4,a5,.L43
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,1920
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,1792
	beq	a4,a5,.L44
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,1792
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,1664
	beq	a4,a5,.L45
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,1664
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,1536
	beq	a4,a5,.L46
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,1536
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,1408
	beq	a4,a5,.L47
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,1408
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,1280
	beq	a4,a5,.L48
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,1280
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,1152
	beq	a4,a5,.L49
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,1152
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,896
	beq	a4,a5,.L50
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,896
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,768
	beq	a4,a5,.L51
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,768
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,640
	beq	a4,a5,.L52
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,640
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,512
	beq	a4,a5,.L53
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,512
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,384
	beq	a4,a5,.L54
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,384
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,256
	beq	a4,a5,.L55
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,256
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,128
	beq	a4,a5,.L56
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,128
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,24576
	beq	a4,a5,.L57
	lw	a4,-20(s0)
	li	a5,24576
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,-256
	beq	a4,a5,.L58
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,-256
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,-384
	beq	a4,a5,.L59
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,-384
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,-640
	beq	a4,a5,.L60
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,-640
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,-1920
	beq	a4,a5,.L61
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,-1920
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,-2048
	beq	a4,a5,.L62
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,-2048
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,1920
	beq	a4,a5,.L63
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,1920
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,1792
	beq	a4,a5,.L64
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,1792
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,1664
	beq	a4,a5,.L65
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,1664
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,1536
	beq	a4,a5,.L66
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,1536
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,1408
	beq	a4,a5,.L67
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,1408
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,1280
	beq	a4,a5,.L68
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,1280
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,1152
	beq	a4,a5,.L69
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,1152
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,1024
	beq	a4,a5,.L70
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,1024
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,896
	beq	a4,a5,.L71
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,896
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,768
	beq	a4,a5,.L72
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,768
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,512
	beq	a4,a5,.L73
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,512
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,384
	beq	a4,a5,.L74
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,384
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,256
	beq	a4,a5,.L75
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,256
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,128
	beq	a4,a5,.L76
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,128
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,-128
	beq	a4,a5,.L77
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,-128
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,-256
	beq	a4,a5,.L78
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,-256
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,-384
	beq	a4,a5,.L79
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,-384
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,-512
	beq	a4,a5,.L80
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,-512
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,-640
	beq	a4,a5,.L81
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,-640
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,-768
	beq	a4,a5,.L82
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,-768
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,-896
	beq	a4,a5,.L83
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,-896
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,-1024
	beq	a4,a5,.L84
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,-1024
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,-1280
	beq	a4,a5,.L85
	lw	a4,-20(s0)
	li	a5,20480
	addi	a5,a5,-1280
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,1152
	beq	a4,a5,.L86
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,1152
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,1024
	beq	a4,a5,.L87
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,1024
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,896
	beq	a4,a5,.L88
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,896
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,768
	beq	a4,a5,.L89
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,768
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,640
	beq	a4,a5,.L90
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,640
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,512
	beq	a4,a5,.L91
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,512
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,384
	beq	a4,a5,.L92
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,384
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,256
	beq	a4,a5,.L93
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,256
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,128
	beq	a4,a5,.L94
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,128
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-128
	beq	a4,a5,.L95
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-128
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-256
	beq	a4,a5,.L96
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-256
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-384
	beq	a4,a5,.L97
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-384
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-512
	beq	a4,a5,.L98
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-512
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-640
	beq	a4,a5,.L99
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-640
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-768
	beq	a4,a5,.L100
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-768
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-896
	beq	a4,a5,.L101
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-896
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-1024
	beq	a4,a5,.L102
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-1024
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-1152
	beq	a4,a5,.L103
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-1152
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-1280
	beq	a4,a5,.L104
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-1280
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-1408
	beq	a4,a5,.L105
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-1408
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-1536
	beq	a4,a5,.L106
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-1536
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-1664
	beq	a4,a5,.L107
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-1664
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-1792
	beq	a4,a5,.L108
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-1792
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-1920
	beq	a4,a5,.L109
	lw	a4,-20(s0)
	li	a5,16384
	addi	a5,a5,-1920
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,1408
	beq	a4,a5,.L110
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,1408
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,1152
	beq	a4,a5,.L111
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,1152
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,1024
	beq	a4,a5,.L112
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,1024
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,896
	beq	a4,a5,.L113
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,896
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,768
	beq	a4,a5,.L114
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,768
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,640
	beq	a4,a5,.L115
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,640
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,512
	beq	a4,a5,.L116
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,512
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,384
	beq	a4,a5,.L117
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,384
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,256
	beq	a4,a5,.L118
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,256
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,128
	beq	a4,a5,.L119
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,128
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,12288
	beq	a4,a5,.L120
	lw	a4,-20(s0)
	li	a5,12288
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,-128
	beq	a4,a5,.L121
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,-128
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,-256
	beq	a4,a5,.L122
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,-256
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,-384
	beq	a4,a5,.L123
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,-384
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,-512
	beq	a4,a5,.L124
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,-512
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,-1664
	beq	a4,a5,.L125
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,-1664
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,-1792
	beq	a4,a5,.L126
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,-1792
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,-1920
	beq	a4,a5,.L127
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,-1920
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,-2048
	beq	a4,a5,.L128
	lw	a4,-20(s0)
	li	a5,12288
	addi	a5,a5,-2048
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,1920
	beq	a4,a5,.L129
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,1920
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,1792
	beq	a4,a5,.L130
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,1792
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,1664
	beq	a4,a5,.L131
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,1664
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,1536
	beq	a4,a5,.L132
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,1536
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,1408
	beq	a4,a5,.L133
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,1408
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,1280
	beq	a4,a5,.L134
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,1280
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,1152
	beq	a4,a5,.L135
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,1152
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,1024
	beq	a4,a5,.L136
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,1024
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,896
	beq	a4,a5,.L137
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,896
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,768
	beq	a4,a5,.L138
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,768
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,640
	beq	a4,a5,.L139
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,640
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,512
	beq	a4,a5,.L140
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,512
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,384
	beq	a4,a5,.L141
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,384
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,256
	beq	a4,a5,.L142
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,256
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,128
	beq	a4,a5,.L143
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,128
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,-128
	beq	a4,a5,.L144
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,-128
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,-256
	beq	a4,a5,.L145
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,-256
	bgt	a4,a5,.L150
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,-512
	beq	a4,a5,.L146
	lw	a4,-20(s0)
	li	a5,8192
	addi	a5,a5,-384
	beq	a4,a5,.L147
	.loc 1 531 13
	j	.L150
.L56:
	.loc 1 189 19
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	j	.L148
.L55:
	.loc 1 191 19
	lui	a5,%hi(.LC1)
	addi	a5,a5,%lo(.LC1)
	j	.L148
.L54:
	.loc 1 193 19
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	j	.L148
.L53:
	.loc 1 195 19
	lui	a5,%hi(.LC3)
	addi	a5,a5,%lo(.LC3)
	j	.L148
.L52:
	.loc 1 197 19
	lui	a5,%hi(.LC4)
	addi	a5,a5,%lo(.LC4)
	j	.L148
.L51:
	.loc 1 199 19
	lui	a5,%hi(.LC5)
	addi	a5,a5,%lo(.LC5)
	j	.L148
.L50:
	.loc 1 201 19
	lui	a5,%hi(.LC6)
	addi	a5,a5,%lo(.LC6)
	j	.L148
.L119:
	.loc 1 206 19
	lui	a5,%hi(.LC7)
	addi	a5,a5,%lo(.LC7)
	j	.L148
.L118:
	.loc 1 208 19
	lui	a5,%hi(.LC8)
	addi	a5,a5,%lo(.LC8)
	j	.L148
.L117:
	.loc 1 210 19
	lui	a5,%hi(.LC9)
	addi	a5,a5,%lo(.LC9)
	j	.L148
.L116:
	.loc 1 212 19
	lui	a5,%hi(.LC10)
	addi	a5,a5,%lo(.LC10)
	j	.L148
.L115:
	.loc 1 214 19
	lui	a5,%hi(.LC11)
	addi	a5,a5,%lo(.LC11)
	j	.L148
.L114:
	.loc 1 216 19
	lui	a5,%hi(.LC12)
	addi	a5,a5,%lo(.LC12)
	j	.L148
.L113:
	.loc 1 218 19
	lui	a5,%hi(.LC13)
	addi	a5,a5,%lo(.LC13)
	j	.L148
.L112:
	.loc 1 220 19
	lui	a5,%hi(.LC14)
	addi	a5,a5,%lo(.LC14)
	j	.L148
.L111:
	.loc 1 222 19
	lui	a5,%hi(.LC15)
	addi	a5,a5,%lo(.LC15)
	j	.L148
.L110:
	.loc 1 224 19
	lui	a5,%hi(.LC16)
	addi	a5,a5,%lo(.LC16)
	j	.L148
.L77:
	.loc 1 229 19
	lui	a5,%hi(.LC17)
	addi	a5,a5,%lo(.LC17)
	j	.L148
.L78:
	.loc 1 231 19
	lui	a5,%hi(.LC18)
	addi	a5,a5,%lo(.LC18)
	j	.L148
.L79:
	.loc 1 233 19
	lui	a5,%hi(.LC19)
	addi	a5,a5,%lo(.LC19)
	j	.L148
.L80:
	.loc 1 235 19
	lui	a5,%hi(.LC20)
	addi	a5,a5,%lo(.LC20)
	j	.L148
.L81:
	.loc 1 237 19
	lui	a5,%hi(.LC21)
	addi	a5,a5,%lo(.LC21)
	j	.L148
.L82:
	.loc 1 239 19
	lui	a5,%hi(.LC22)
	addi	a5,a5,%lo(.LC22)
	j	.L148
.L83:
	.loc 1 241 19
	lui	a5,%hi(.LC23)
	addi	a5,a5,%lo(.LC23)
	j	.L148
.L84:
	.loc 1 243 19
	lui	a5,%hi(.LC24)
	addi	a5,a5,%lo(.LC24)
	j	.L148
.L85:
	.loc 1 245 19
	lui	a5,%hi(.LC25)
	addi	a5,a5,%lo(.LC25)
	j	.L148
.L76:
	.loc 1 250 19
	lui	a5,%hi(.LC26)
	addi	a5,a5,%lo(.LC26)
	j	.L148
.L75:
	.loc 1 252 19
	lui	a5,%hi(.LC27)
	addi	a5,a5,%lo(.LC27)
	j	.L148
.L74:
	.loc 1 254 19
	lui	a5,%hi(.LC28)
	addi	a5,a5,%lo(.LC28)
	j	.L148
.L73:
	.loc 1 256 19
	lui	a5,%hi(.LC29)
	addi	a5,a5,%lo(.LC29)
	j	.L148
.L95:
	.loc 1 282 19
	lui	a5,%hi(.LC30)
	addi	a5,a5,%lo(.LC30)
	j	.L148
.L96:
	.loc 1 284 19
	lui	a5,%hi(.LC31)
	addi	a5,a5,%lo(.LC31)
	j	.L148
.L97:
	.loc 1 286 19
	lui	a5,%hi(.LC32)
	addi	a5,a5,%lo(.LC32)
	j	.L148
.L98:
	.loc 1 288 19
	lui	a5,%hi(.LC33)
	addi	a5,a5,%lo(.LC33)
	j	.L148
.L99:
	.loc 1 290 19
	lui	a5,%hi(.LC34)
	addi	a5,a5,%lo(.LC34)
	j	.L148
.L100:
	.loc 1 292 19
	lui	a5,%hi(.LC35)
	addi	a5,a5,%lo(.LC35)
	j	.L148
.L101:
	.loc 1 294 19
	lui	a5,%hi(.LC36)
	addi	a5,a5,%lo(.LC36)
	j	.L148
.L102:
	.loc 1 296 19
	lui	a5,%hi(.LC37)
	addi	a5,a5,%lo(.LC37)
	j	.L148
.L103:
	.loc 1 298 19
	lui	a5,%hi(.LC38)
	addi	a5,a5,%lo(.LC38)
	j	.L148
.L104:
	.loc 1 300 19
	lui	a5,%hi(.LC39)
	addi	a5,a5,%lo(.LC39)
	j	.L148
.L105:
	.loc 1 302 19
	lui	a5,%hi(.LC40)
	addi	a5,a5,%lo(.LC40)
	j	.L148
.L106:
	.loc 1 304 19
	lui	a5,%hi(.LC41)
	addi	a5,a5,%lo(.LC41)
	j	.L148
.L107:
	.loc 1 306 19
	lui	a5,%hi(.LC42)
	addi	a5,a5,%lo(.LC42)
	j	.L148
.L108:
	.loc 1 308 19
	lui	a5,%hi(.LC43)
	addi	a5,a5,%lo(.LC43)
	j	.L148
.L109:
	.loc 1 310 19
	lui	a5,%hi(.LC44)
	addi	a5,a5,%lo(.LC44)
	j	.L148
.L144:
	.loc 1 315 19
	lui	a5,%hi(.LC45)
	addi	a5,a5,%lo(.LC45)
	j	.L148
.L145:
	.loc 1 317 19
	lui	a5,%hi(.LC46)
	addi	a5,a5,%lo(.LC46)
	j	.L148
.L147:
	.loc 1 319 19
	lui	a5,%hi(.LC47)
	addi	a5,a5,%lo(.LC47)
	j	.L148
.L146:
	.loc 1 321 19
	lui	a5,%hi(.LC48)
	addi	a5,a5,%lo(.LC48)
	j	.L148
.L121:
	.loc 1 326 19
	lui	a5,%hi(.LC49)
	addi	a5,a5,%lo(.LC49)
	j	.L148
.L122:
	.loc 1 328 19
	lui	a5,%hi(.LC50)
	addi	a5,a5,%lo(.LC50)
	j	.L148
.L123:
	.loc 1 330 19
	lui	a5,%hi(.LC51)
	addi	a5,a5,%lo(.LC51)
	j	.L148
.L124:
	.loc 1 332 19
	lui	a5,%hi(.LC52)
	addi	a5,a5,%lo(.LC52)
	j	.L148
.L72:
	.loc 1 337 19
	lui	a5,%hi(.LC53)
	addi	a5,a5,%lo(.LC53)
	j	.L148
.L71:
	.loc 1 339 19
	lui	a5,%hi(.LC54)
	addi	a5,a5,%lo(.LC54)
	j	.L148
.L70:
	.loc 1 341 19
	lui	a5,%hi(.LC55)
	addi	a5,a5,%lo(.LC55)
	j	.L148
.L69:
	.loc 1 343 19
	lui	a5,%hi(.LC56)
	addi	a5,a5,%lo(.LC56)
	j	.L148
.L68:
	.loc 1 345 19
	lui	a5,%hi(.LC57)
	addi	a5,a5,%lo(.LC57)
	j	.L148
.L67:
	.loc 1 347 19
	lui	a5,%hi(.LC58)
	addi	a5,a5,%lo(.LC58)
	j	.L148
.L66:
	.loc 1 349 19
	lui	a5,%hi(.LC59)
	addi	a5,a5,%lo(.LC59)
	j	.L148
.L65:
	.loc 1 351 19
	lui	a5,%hi(.LC60)
	addi	a5,a5,%lo(.LC60)
	j	.L148
.L64:
	.loc 1 353 19
	lui	a5,%hi(.LC61)
	addi	a5,a5,%lo(.LC61)
	j	.L148
.L63:
	.loc 1 355 19
	lui	a5,%hi(.LC62)
	addi	a5,a5,%lo(.LC62)
	j	.L148
.L62:
	.loc 1 357 19
	lui	a5,%hi(.LC63)
	addi	a5,a5,%lo(.LC63)
	j	.L148
.L61:
	.loc 1 359 19
	lui	a5,%hi(.LC64)
	addi	a5,a5,%lo(.LC64)
	j	.L148
.L94:
	.loc 1 364 19
	lui	a5,%hi(.LC65)
	addi	a5,a5,%lo(.LC65)
	j	.L148
.L93:
	.loc 1 366 19
	lui	a5,%hi(.LC66)
	addi	a5,a5,%lo(.LC66)
	j	.L148
.L92:
	.loc 1 368 19
	lui	a5,%hi(.LC67)
	addi	a5,a5,%lo(.LC67)
	j	.L148
.L91:
	.loc 1 370 19
	lui	a5,%hi(.LC68)
	addi	a5,a5,%lo(.LC68)
	j	.L148
.L90:
	.loc 1 372 19
	lui	a5,%hi(.LC69)
	addi	a5,a5,%lo(.LC69)
	j	.L148
.L89:
	.loc 1 374 19
	lui	a5,%hi(.LC70)
	addi	a5,a5,%lo(.LC70)
	j	.L148
.L88:
	.loc 1 376 19
	lui	a5,%hi(.LC71)
	addi	a5,a5,%lo(.LC71)
	j	.L148
.L87:
	.loc 1 378 19
	lui	a5,%hi(.LC72)
	addi	a5,a5,%lo(.LC72)
	j	.L148
.L86:
	.loc 1 380 19
	lui	a5,%hi(.LC73)
	addi	a5,a5,%lo(.LC73)
	j	.L148
.L28:
	.loc 1 385 19
	lui	a5,%hi(.LC74)
	addi	a5,a5,%lo(.LC74)
	j	.L148
.L27:
	.loc 1 387 19
	lui	a5,%hi(.LC75)
	addi	a5,a5,%lo(.LC75)
	j	.L148
.L26:
	.loc 1 389 19
	lui	a5,%hi(.LC76)
	addi	a5,a5,%lo(.LC76)
	j	.L148
.L25:
	.loc 1 391 19
	lui	a5,%hi(.LC77)
	addi	a5,a5,%lo(.LC77)
	j	.L148
.L24:
	.loc 1 393 19
	lui	a5,%hi(.LC78)
	addi	a5,a5,%lo(.LC78)
	j	.L148
.L23:
	.loc 1 395 19
	lui	a5,%hi(.LC79)
	addi	a5,a5,%lo(.LC79)
	j	.L148
.L22:
	.loc 1 397 19
	lui	a5,%hi(.LC80)
	addi	a5,a5,%lo(.LC80)
	j	.L148
.L21:
	.loc 1 399 19
	lui	a5,%hi(.LC81)
	addi	a5,a5,%lo(.LC81)
	j	.L148
.L20:
	.loc 1 401 19
	lui	a5,%hi(.LC82)
	addi	a5,a5,%lo(.LC82)
	j	.L148
.L19:
	.loc 1 403 19
	lui	a5,%hi(.LC83)
	addi	a5,a5,%lo(.LC83)
	j	.L148
.L18:
	.loc 1 405 19
	lui	a5,%hi(.LC84)
	addi	a5,a5,%lo(.LC84)
	j	.L148
.L17:
	.loc 1 407 19
	lui	a5,%hi(.LC85)
	addi	a5,a5,%lo(.LC85)
	j	.L148
.L16:
	.loc 1 409 19
	lui	a5,%hi(.LC86)
	addi	a5,a5,%lo(.LC86)
	j	.L148
.L15:
	.loc 1 411 19
	lui	a5,%hi(.LC87)
	addi	a5,a5,%lo(.LC87)
	j	.L148
.L14:
	.loc 1 413 19
	lui	a5,%hi(.LC88)
	addi	a5,a5,%lo(.LC88)
	j	.L148
.L13:
	.loc 1 415 19
	lui	a5,%hi(.LC89)
	addi	a5,a5,%lo(.LC89)
	j	.L148
.L12:
	.loc 1 417 19
	lui	a5,%hi(.LC90)
	addi	a5,a5,%lo(.LC90)
	j	.L148
.L11:
	.loc 1 419 19
	lui	a5,%hi(.LC91)
	addi	a5,a5,%lo(.LC91)
	j	.L148
.L10:
	.loc 1 421 19
	lui	a5,%hi(.LC92)
	addi	a5,a5,%lo(.LC92)
	j	.L148
.L9:
	.loc 1 423 19
	lui	a5,%hi(.LC93)
	addi	a5,a5,%lo(.LC93)
	j	.L148
.L8:
	.loc 1 425 19
	lui	a5,%hi(.LC94)
	addi	a5,a5,%lo(.LC94)
	j	.L148
.L7:
	.loc 1 427 19
	lui	a5,%hi(.LC95)
	addi	a5,a5,%lo(.LC95)
	j	.L148
.L6:
	.loc 1 429 19
	lui	a5,%hi(.LC96)
	addi	a5,a5,%lo(.LC96)
	j	.L148
.L5:
	.loc 1 431 19
	lui	a5,%hi(.LC97)
	addi	a5,a5,%lo(.LC97)
	j	.L148
.L3:
	.loc 1 433 19
	lui	a5,%hi(.LC98)
	addi	a5,a5,%lo(.LC98)
	j	.L148
.L29:
	.loc 1 435 19
	lui	a5,%hi(.LC99)
	addi	a5,a5,%lo(.LC99)
	j	.L148
.L30:
	.loc 1 437 19
	lui	a5,%hi(.LC100)
	addi	a5,a5,%lo(.LC100)
	j	.L148
.L31:
	.loc 1 439 19
	lui	a5,%hi(.LC101)
	addi	a5,a5,%lo(.LC101)
	j	.L148
.L32:
	.loc 1 441 19
	lui	a5,%hi(.LC102)
	addi	a5,a5,%lo(.LC102)
	j	.L148
.L33:
	.loc 1 443 19
	lui	a5,%hi(.LC103)
	addi	a5,a5,%lo(.LC103)
	j	.L148
.L34:
	.loc 1 445 19
	lui	a5,%hi(.LC104)
	addi	a5,a5,%lo(.LC104)
	j	.L148
.L35:
	.loc 1 447 19
	lui	a5,%hi(.LC105)
	addi	a5,a5,%lo(.LC105)
	j	.L148
.L36:
	.loc 1 449 19
	lui	a5,%hi(.LC106)
	addi	a5,a5,%lo(.LC106)
	j	.L148
.L37:
	.loc 1 451 19
	lui	a5,%hi(.LC107)
	addi	a5,a5,%lo(.LC107)
	j	.L148
.L38:
	.loc 1 453 19
	lui	a5,%hi(.LC108)
	addi	a5,a5,%lo(.LC108)
	j	.L148
.L39:
	.loc 1 455 19
	lui	a5,%hi(.LC109)
	addi	a5,a5,%lo(.LC109)
	j	.L148
.L40:
	.loc 1 457 19
	lui	a5,%hi(.LC110)
	addi	a5,a5,%lo(.LC110)
	j	.L148
.L41:
	.loc 1 459 19
	lui	a5,%hi(.LC111)
	addi	a5,a5,%lo(.LC111)
	j	.L148
.L42:
	.loc 1 461 19
	lui	a5,%hi(.LC112)
	addi	a5,a5,%lo(.LC112)
	j	.L148
.L43:
	.loc 1 463 19
	lui	a5,%hi(.LC113)
	addi	a5,a5,%lo(.LC113)
	j	.L148
.L44:
	.loc 1 465 19
	lui	a5,%hi(.LC114)
	addi	a5,a5,%lo(.LC114)
	j	.L148
.L45:
	.loc 1 467 19
	lui	a5,%hi(.LC115)
	addi	a5,a5,%lo(.LC115)
	j	.L148
.L46:
	.loc 1 469 19
	lui	a5,%hi(.LC116)
	addi	a5,a5,%lo(.LC116)
	j	.L148
.L47:
	.loc 1 471 19
	lui	a5,%hi(.LC117)
	addi	a5,a5,%lo(.LC117)
	j	.L148
.L48:
	.loc 1 473 19
	lui	a5,%hi(.LC118)
	addi	a5,a5,%lo(.LC118)
	j	.L148
.L49:
	.loc 1 475 19
	lui	a5,%hi(.LC119)
	addi	a5,a5,%lo(.LC119)
	j	.L148
.L57:
	.loc 1 477 19
	lui	a5,%hi(.LC120)
	addi	a5,a5,%lo(.LC120)
	j	.L148
.L58:
	.loc 1 479 19
	lui	a5,%hi(.LC121)
	addi	a5,a5,%lo(.LC121)
	j	.L148
.L59:
	.loc 1 481 19
	lui	a5,%hi(.LC122)
	addi	a5,a5,%lo(.LC122)
	j	.L148
.L60:
	.loc 1 483 19
	lui	a5,%hi(.LC123)
	addi	a5,a5,%lo(.LC123)
	j	.L148
.L143:
	.loc 1 488 19
	lui	a5,%hi(.LC124)
	addi	a5,a5,%lo(.LC124)
	j	.L148
.L142:
	.loc 1 490 19
	lui	a5,%hi(.LC125)
	addi	a5,a5,%lo(.LC125)
	j	.L148
.L141:
	.loc 1 492 19
	lui	a5,%hi(.LC126)
	addi	a5,a5,%lo(.LC126)
	j	.L148
.L140:
	.loc 1 494 19
	lui	a5,%hi(.LC127)
	addi	a5,a5,%lo(.LC127)
	j	.L148
.L139:
	.loc 1 496 19
	lui	a5,%hi(.LC128)
	addi	a5,a5,%lo(.LC128)
	j	.L148
.L138:
	.loc 1 498 19
	lui	a5,%hi(.LC129)
	addi	a5,a5,%lo(.LC129)
	j	.L148
.L137:
	.loc 1 500 19
	lui	a5,%hi(.LC130)
	addi	a5,a5,%lo(.LC130)
	j	.L148
.L136:
	.loc 1 502 19
	lui	a5,%hi(.LC131)
	addi	a5,a5,%lo(.LC131)
	j	.L148
.L135:
	.loc 1 504 19
	lui	a5,%hi(.LC132)
	addi	a5,a5,%lo(.LC132)
	j	.L148
.L134:
	.loc 1 506 19
	lui	a5,%hi(.LC133)
	addi	a5,a5,%lo(.LC133)
	j	.L148
.L133:
	.loc 1 508 19
	lui	a5,%hi(.LC134)
	addi	a5,a5,%lo(.LC134)
	j	.L148
.L132:
	.loc 1 510 19
	lui	a5,%hi(.LC135)
	addi	a5,a5,%lo(.LC135)
	j	.L148
.L131:
	.loc 1 512 19
	lui	a5,%hi(.LC136)
	addi	a5,a5,%lo(.LC136)
	j	.L148
.L130:
	.loc 1 514 19
	lui	a5,%hi(.LC137)
	addi	a5,a5,%lo(.LC137)
	j	.L148
.L129:
	.loc 1 516 19
	lui	a5,%hi(.LC138)
	addi	a5,a5,%lo(.LC138)
	j	.L148
.L128:
	.loc 1 518 19
	lui	a5,%hi(.LC139)
	addi	a5,a5,%lo(.LC139)
	j	.L148
.L127:
	.loc 1 520 19
	lui	a5,%hi(.LC140)
	addi	a5,a5,%lo(.LC140)
	j	.L148
.L126:
	.loc 1 522 19
	lui	a5,%hi(.LC141)
	addi	a5,a5,%lo(.LC141)
	j	.L148
.L125:
	.loc 1 524 19
	lui	a5,%hi(.LC142)
	addi	a5,a5,%lo(.LC142)
	j	.L148
.L120:
	.loc 1 526 19
	lui	a5,%hi(.LC143)
	addi	a5,a5,%lo(.LC143)
	j	.L148
.L150:
	.loc 1 531 13
	nop
	.loc 1 534 11
	li	a5,0
.L148:
	.loc 1 535 1
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
.LFE98:
	.size	mbedtls_high_level_strerr, .-mbedtls_high_level_strerr
	.section	.rodata
	.align	2
.LC144:
	.string	"AES - Invalid key length"
	.align	2
.LC145:
	.string	"AES - Invalid data input length"
	.align	2
.LC146:
	.string	"AES - Invalid input data"
	.align	2
.LC147:
	.string	"ASN1 - Out of data when parsing an ASN1 data structure"
	.align	2
.LC148:
	.string	"ASN1 - ASN1 tag was of an unexpected value"
	.align	2
.LC149:
	.string	"ASN1 - Error when trying to determine the length or invalid length"
	.align	2
.LC150:
	.string	"ASN1 - Actual length differs from expected length"
	.align	2
.LC151:
	.string	"ASN1 - Data is invalid"
	.align	2
.LC152:
	.string	"ASN1 - Memory allocation failed"
	.align	2
.LC153:
	.string	"ASN1 - Buffer too small when writing ASN.1 data structure"
	.align	2
.LC154:
	.string	"BASE64 - Output buffer too small"
	.align	2
.LC155:
	.string	"BASE64 - Invalid character in input"
	.align	2
.LC156:
	.string	"BIGNUM - An error occurred while reading from or writing to a file"
	.align	2
.LC157:
	.string	"BIGNUM - Bad input parameters to function"
	.align	2
.LC158:
	.string	"BIGNUM - There is an invalid character in the digit string"
	.align	2
.LC159:
	.string	"BIGNUM - The buffer is too small to write to"
	.align	2
.LC160:
	.string	"BIGNUM - The input arguments are negative or result in illegal output"
	.align	2
.LC161:
	.string	"BIGNUM - The input argument for division is zero, which is not allowed"
	.align	2
.LC162:
	.string	"BIGNUM - The input arguments are not acceptable"
	.align	2
.LC163:
	.string	"BIGNUM - Memory allocation failed"
	.align	2
.LC164:
	.string	"CCM - Bad input parameters to the function"
	.align	2
.LC165:
	.string	"CCM - Authenticated decryption failed"
	.align	2
.LC166:
	.string	"CHACHA20 - Invalid input parameter(s)"
	.align	2
.LC167:
	.string	"CTR_DRBG - The entropy source failed"
	.align	2
.LC168:
	.string	"CTR_DRBG - The requested random buffer length is too big"
	.align	2
.LC169:
	.string	"CTR_DRBG - The input (entropy + additional data) is too large"
	.align	2
.LC170:
	.string	"CTR_DRBG - Read or write error in file"
	.align	2
.LC171:
	.string	"DES - The data input has an invalid length"
	.align	2
.LC172:
	.string	"ENTROPY - Critical entropy source failure"
	.align	2
.LC173:
	.string	"ENTROPY - No more sources can be added"
	.align	2
.LC174:
	.string	"ENTROPY - No sources have been added to poll"
	.align	2
.LC175:
	.string	"ENTROPY - No strong sources have been added to poll"
	.align	2
.LC176:
	.string	"ENTROPY - Read/write error in file"
	.align	2
.LC177:
	.string	"ERROR - Generic error"
	.align	2
.LC178:
	.string	"ERROR - This is a bug in the library"
	.align	2
.LC179:
	.string	"PLATFORM - Hardware accelerator failed"
	.align	2
.LC180:
	.string	"PLATFORM - The requested feature is not supported by the platform"
	.align	2
.LC181:
	.string	"GCM - Authenticated decryption failed"
	.align	2
.LC182:
	.string	"GCM - Bad input parameters to function"
	.align	2
.LC183:
	.string	"GCM - An output buffer is too small"
	.align	2
.LC184:
	.string	"HMAC_DRBG - Too many random requested in single call"
	.align	2
.LC185:
	.string	"HMAC_DRBG - Input too large (Entropy + additional)"
	.align	2
.LC186:
	.string	"HMAC_DRBG - Read/write error in file"
	.align	2
.LC187:
	.string	"HMAC_DRBG - The entropy source failed"
	.align	2
.LC188:
	.string	"OID - OID is not found"
	.align	2
.LC189:
	.string	"OID - output buffer is too small"
	.align	2
.LC190:
	.string	"SHA1 - SHA-1 input data was malformed"
	.align	2
.LC191:
	.string	"SHA256 - SHA-256 input data was malformed"
	.align	2
.LC192:
	.string	"SHA3 - SHA-3 input data was malformed"
	.align	2
.LC193:
	.string	"SHA512 - SHA-512 input data was malformed"
	.section	.text.mbedtls_low_level_strerr,"ax",@progbits
	.align	1
	.globl	mbedtls_low_level_strerr
	.type	mbedtls_low_level_strerr, @function
mbedtls_low_level_strerr:
.LFB99:
	.loc 1 538 1
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
	.loc 1 541 8
	lw	a5,-36(s0)
	bge	a5,zero,.L152
	.loc 1 542 20
	lw	a5,-36(s0)
	neg	a5,a5
	sw	a5,-36(s0)
.L152:
	.loc 1 546 26
	lw	a4,-36(s0)
	li	a5,-65536
	addi	a5,a5,127
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 548 5
	lw	a4,-20(s0)
	li	a5,24576
	addi	a5,a5,-128
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,118
	beq	a4,a5,.L154
	lw	a4,-20(s0)
	li	a5,118
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,117
	beq	a4,a5,.L155
	lw	a4,-20(s0)
	li	a5,117
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,116
	beq	a4,a5,.L156
	lw	a4,-20(s0)
	li	a5,116
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,115
	beq	a4,a5,.L157
	lw	a4,-20(s0)
	li	a5,115
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,114
	beq	a4,a5,.L158
	lw	a4,-20(s0)
	li	a5,114
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,112
	beq	a4,a5,.L159
	lw	a4,-20(s0)
	li	a5,112
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,110
	beq	a4,a5,.L160
	lw	a4,-20(s0)
	li	a5,110
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,108
	beq	a4,a5,.L161
	lw	a4,-20(s0)
	li	a5,108
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,106
	beq	a4,a5,.L162
	lw	a4,-20(s0)
	li	a5,106
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,104
	beq	a4,a5,.L163
	lw	a4,-20(s0)
	li	a5,104
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,102
	beq	a4,a5,.L164
	lw	a4,-20(s0)
	li	a5,102
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,100
	beq	a4,a5,.L165
	lw	a4,-20(s0)
	li	a5,100
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,98
	beq	a4,a5,.L166
	lw	a4,-20(s0)
	li	a5,98
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,96
	beq	a4,a5,.L167
	lw	a4,-20(s0)
	li	a5,96
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,81
	beq	a4,a5,.L168
	lw	a4,-20(s0)
	li	a5,81
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,64
	beq	a4,a5,.L169
	lw	a4,-20(s0)
	li	a5,64
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,63
	beq	a4,a5,.L170
	lw	a4,-20(s0)
	li	a5,63
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,62
	beq	a4,a5,.L171
	lw	a4,-20(s0)
	li	a5,62
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,61
	beq	a4,a5,.L172
	lw	a4,-20(s0)
	li	a5,61
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,60
	beq	a4,a5,.L173
	lw	a4,-20(s0)
	li	a5,60
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,58
	beq	a4,a5,.L174
	lw	a4,-20(s0)
	li	a5,58
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,56
	beq	a4,a5,.L175
	lw	a4,-20(s0)
	li	a5,56
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,54
	beq	a4,a5,.L176
	lw	a4,-20(s0)
	li	a5,54
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,52
	beq	a4,a5,.L177
	lw	a4,-20(s0)
	li	a5,52
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,50
	beq	a4,a5,.L178
	lw	a4,-20(s0)
	li	a5,50
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,46
	beq	a4,a5,.L179
	lw	a4,-20(s0)
	li	a5,46
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,44
	beq	a4,a5,.L180
	lw	a4,-20(s0)
	li	a5,44
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,42
	beq	a4,a5,.L181
	lw	a4,-20(s0)
	li	a5,42
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,34
	beq	a4,a5,.L182
	lw	a4,-20(s0)
	li	a5,34
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,33
	beq	a4,a5,.L183
	lw	a4,-20(s0)
	li	a5,33
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,32
	beq	a4,a5,.L184
	lw	a4,-20(s0)
	li	a5,32
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,22
	beq	a4,a5,.L185
	lw	a4,-20(s0)
	li	a5,22
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,20
	beq	a4,a5,.L186
	lw	a4,-20(s0)
	li	a5,20
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,18
	beq	a4,a5,.L187
	lw	a4,-20(s0)
	li	a5,18
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,16
	beq	a4,a5,.L188
	lw	a4,-20(s0)
	li	a5,16
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,15
	beq	a4,a5,.L189
	lw	a4,-20(s0)
	li	a5,15
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,14
	beq	a4,a5,.L190
	lw	a4,-20(s0)
	li	a5,14
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,13
	beq	a4,a5,.L191
	lw	a4,-20(s0)
	li	a5,13
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,12
	beq	a4,a5,.L192
	lw	a4,-20(s0)
	li	a5,12
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,11
	beq	a4,a5,.L193
	lw	a4,-20(s0)
	li	a5,11
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,10
	beq	a4,a5,.L194
	lw	a4,-20(s0)
	li	a5,10
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,9
	beq	a4,a5,.L195
	lw	a4,-20(s0)
	li	a5,9
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,8
	beq	a4,a5,.L196
	lw	a4,-20(s0)
	li	a5,8
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,7
	beq	a4,a5,.L197
	lw	a4,-20(s0)
	li	a5,7
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,6
	beq	a4,a5,.L198
	lw	a4,-20(s0)
	li	a5,6
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,5
	beq	a4,a5,.L199
	lw	a4,-20(s0)
	li	a5,5
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,4
	beq	a4,a5,.L200
	lw	a4,-20(s0)
	li	a5,4
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,3
	beq	a4,a5,.L201
	lw	a4,-20(s0)
	li	a5,3
	bgt	a4,a5,.L206
	lw	a4,-20(s0)
	li	a5,1
	beq	a4,a5,.L202
	lw	a4,-20(s0)
	li	a5,2
	beq	a4,a5,.L203
	.loc 1 786 13
	j	.L206
.L184:
	.loc 1 552 19
	lui	a5,%hi(.LC144)
	addi	a5,a5,%lo(.LC144)
	j	.L204
.L182:
	.loc 1 554 19
	lui	a5,%hi(.LC145)
	addi	a5,a5,%lo(.LC145)
	j	.L204
.L183:
	.loc 1 556 19
	lui	a5,%hi(.LC146)
	addi	a5,a5,%lo(.LC146)
	j	.L204
.L167:
	.loc 1 568 19
	lui	a5,%hi(.LC147)
	addi	a5,a5,%lo(.LC147)
	j	.L204
.L166:
	.loc 1 570 19
	lui	a5,%hi(.LC148)
	addi	a5,a5,%lo(.LC148)
	j	.L204
.L165:
	.loc 1 572 19
	lui	a5,%hi(.LC149)
	addi	a5,a5,%lo(.LC149)
	j	.L204
.L164:
	.loc 1 574 19
	lui	a5,%hi(.LC150)
	addi	a5,a5,%lo(.LC150)
	j	.L204
.L163:
	.loc 1 576 19
	lui	a5,%hi(.LC151)
	addi	a5,a5,%lo(.LC151)
	j	.L204
.L162:
	.loc 1 578 19
	lui	a5,%hi(.LC152)
	addi	a5,a5,%lo(.LC152)
	j	.L204
.L161:
	.loc 1 580 19
	lui	a5,%hi(.LC153)
	addi	a5,a5,%lo(.LC153)
	j	.L204
.L181:
	.loc 1 585 19
	lui	a5,%hi(.LC154)
	addi	a5,a5,%lo(.LC154)
	j	.L204
.L180:
	.loc 1 587 19
	lui	a5,%hi(.LC155)
	addi	a5,a5,%lo(.LC155)
	j	.L204
.L203:
	.loc 1 592 19
	lui	a5,%hi(.LC156)
	addi	a5,a5,%lo(.LC156)
	j	.L204
.L200:
	.loc 1 594 19
	lui	a5,%hi(.LC157)
	addi	a5,a5,%lo(.LC157)
	j	.L204
.L198:
	.loc 1 596 19
	lui	a5,%hi(.LC158)
	addi	a5,a5,%lo(.LC158)
	j	.L204
.L196:
	.loc 1 598 19
	lui	a5,%hi(.LC159)
	addi	a5,a5,%lo(.LC159)
	j	.L204
.L194:
	.loc 1 600 19
	lui	a5,%hi(.LC160)
	addi	a5,a5,%lo(.LC160)
	j	.L204
.L192:
	.loc 1 602 19
	lui	a5,%hi(.LC161)
	addi	a5,a5,%lo(.LC161)
	j	.L204
.L190:
	.loc 1 604 19
	lui	a5,%hi(.LC162)
	addi	a5,a5,%lo(.LC162)
	j	.L204
.L188:
	.loc 1 606 19
	lui	a5,%hi(.LC163)
	addi	a5,a5,%lo(.LC163)
	j	.L204
.L191:
	.loc 1 618 19
	lui	a5,%hi(.LC164)
	addi	a5,a5,%lo(.LC164)
	j	.L204
.L189:
	.loc 1 620 19
	lui	a5,%hi(.LC165)
	addi	a5,a5,%lo(.LC165)
	j	.L204
.L168:
	.loc 1 625 19
	lui	a5,%hi(.LC166)
	addi	a5,a5,%lo(.LC166)
	j	.L204
.L177:
	.loc 1 637 19
	lui	a5,%hi(.LC167)
	addi	a5,a5,%lo(.LC167)
	j	.L204
.L176:
	.loc 1 639 19
	lui	a5,%hi(.LC168)
	addi	a5,a5,%lo(.LC168)
	j	.L204
.L175:
	.loc 1 641 19
	lui	a5,%hi(.LC169)
	addi	a5,a5,%lo(.LC169)
	j	.L204
.L174:
	.loc 1 643 19
	lui	a5,%hi(.LC170)
	addi	a5,a5,%lo(.LC170)
	j	.L204
.L178:
	.loc 1 648 19
	lui	a5,%hi(.LC171)
	addi	a5,a5,%lo(.LC171)
	j	.L204
.L173:
	.loc 1 653 19
	lui	a5,%hi(.LC172)
	addi	a5,a5,%lo(.LC172)
	j	.L204
.L171:
	.loc 1 655 19
	lui	a5,%hi(.LC173)
	addi	a5,a5,%lo(.LC173)
	j	.L204
.L169:
	.loc 1 657 19
	lui	a5,%hi(.LC174)
	addi	a5,a5,%lo(.LC174)
	j	.L204
.L172:
	.loc 1 659 19
	lui	a5,%hi(.LC175)
	addi	a5,a5,%lo(.LC175)
	j	.L204
.L170:
	.loc 1 661 19
	lui	a5,%hi(.LC176)
	addi	a5,a5,%lo(.LC176)
	j	.L204
.L202:
	.loc 1 666 19
	lui	a5,%hi(.LC177)
	addi	a5,a5,%lo(.LC177)
	j	.L204
.L160:
	.loc 1 668 19
	lui	a5,%hi(.LC178)
	addi	a5,a5,%lo(.LC178)
	j	.L204
.L159:
	.loc 1 673 19
	lui	a5,%hi(.LC179)
	addi	a5,a5,%lo(.LC179)
	j	.L204
.L158:
	.loc 1 675 19
	lui	a5,%hi(.LC180)
	addi	a5,a5,%lo(.LC180)
	j	.L204
.L187:
	.loc 1 680 19
	lui	a5,%hi(.LC181)
	addi	a5,a5,%lo(.LC181)
	j	.L204
.L186:
	.loc 1 682 19
	lui	a5,%hi(.LC182)
	addi	a5,a5,%lo(.LC182)
	j	.L204
.L185:
	.loc 1 684 19
	lui	a5,%hi(.LC183)
	addi	a5,a5,%lo(.LC183)
	j	.L204
.L201:
	.loc 1 694 19
	lui	a5,%hi(.LC184)
	addi	a5,a5,%lo(.LC184)
	j	.L204
.L199:
	.loc 1 696 19
	lui	a5,%hi(.LC185)
	addi	a5,a5,%lo(.LC185)
	j	.L204
.L197:
	.loc 1 698 19
	lui	a5,%hi(.LC186)
	addi	a5,a5,%lo(.LC186)
	j	.L204
.L195:
	.loc 1 700 19
	lui	a5,%hi(.LC187)
	addi	a5,a5,%lo(.LC187)
	j	.L204
.L179:
	.loc 1 747 19
	lui	a5,%hi(.LC188)
	addi	a5,a5,%lo(.LC188)
	j	.L204
.L193:
	.loc 1 749 19
	lui	a5,%hi(.LC189)
	addi	a5,a5,%lo(.LC189)
	j	.L204
.L157:
	.loc 1 759 19
	lui	a5,%hi(.LC190)
	addi	a5,a5,%lo(.LC190)
	j	.L204
.L156:
	.loc 1 764 19
	lui	a5,%hi(.LC191)
	addi	a5,a5,%lo(.LC191)
	j	.L204
.L154:
	.loc 1 769 19
	lui	a5,%hi(.LC192)
	addi	a5,a5,%lo(.LC192)
	j	.L204
.L155:
	.loc 1 774 19
	lui	a5,%hi(.LC193)
	addi	a5,a5,%lo(.LC193)
	j	.L204
.L206:
	.loc 1 786 13
	nop
	.loc 1 789 11
	li	a5,0
.L204:
	.loc 1 790 1
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
.LFE99:
	.size	mbedtls_low_level_strerr, .-mbedtls_low_level_strerr
	.section	.rodata
	.align	2
.LC194:
	.string	"UNKNOWN ERROR CODE (%04X)"
	.align	2
.LC195:
	.string	"%s"
	.align	2
.LC196:
	.string	" : "
	.section	.text.mbedtls_strerror,"ax",@progbits
	.align	1
	.globl	mbedtls_strerror
	.type	mbedtls_strerror, @function
mbedtls_strerror:
.LFB100:
	.loc 1 793 1
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
	.loc 1 796 17
	sw	zero,-20(s0)
	.loc 1 797 17
	sw	zero,-24(s0)
	.loc 1 799 8
	lw	a5,-44(s0)
	beq	a5,zero,.L218
	.loc 1 803 5
	lw	a2,-44(s0)
	li	a1,0
	lw	a0,-40(s0)
	call	memset
	.loc 1 805 8
	lw	a5,-36(s0)
	bge	a5,zero,.L210
	.loc 1 806 13
	lw	a5,-36(s0)
	neg	a5,a5
	sw	a5,-36(s0)
.L210:
	.loc 1 809 13
	lw	a4,-36(s0)
	li	a5,65536
	addi	a5,a5,-128
	and	a5,a4,a5
	.loc 1 809 8
	beq	a5,zero,.L211
	.loc 1 810 17
	lw	a4,-36(s0)
	li	a5,65536
	addi	a5,a5,-128
	and	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 813 40
	lw	a0,-36(s0)
	call	mbedtls_high_level_strerr
	sw	a0,-20(s0)
	.loc 1 815 12
	lw	a5,-20(s0)
	bne	a5,zero,.L212
	.loc 1 816 13
	lw	a5,-28(s0)
	mv	a3,a5
	lui	a5,%hi(.LC194)
	addi	a2,a5,%lo(.LC194)
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	snprintf
	j	.L213
.L212:
	.loc 1 818 13
	lw	a3,-20(s0)
	lui	a5,%hi(.LC195)
	addi	a2,a5,%lo(.LC195)
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	snprintf
.L213:
	.loc 1 824 12
	lw	a4,-28(s0)
	li	a5,28672
	addi	a5,a5,1920
	beq	a4,a5,.L219
.L211:
	.loc 1 830 13
	lw	a4,-36(s0)
	li	a5,-65536
	addi	a5,a5,127
	and	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 832 8
	lw	a5,-28(s0)
	beq	a5,zero,.L220
	.loc 1 839 11
	lw	a0,-40(s0)
	call	strlen
	sw	a0,-32(s0)
	.loc 1 841 8
	lw	a5,-32(s0)
	beq	a5,zero,.L215
	.loc 1 842 20
	lw	a4,-44(s0)
	lw	a5,-32(s0)
	sub	a4,a4,a5
	.loc 1 842 12
	li	a5,4
	bleu	a4,a5,.L221
	.loc 1 846 22
	lw	a4,-40(s0)
	lw	a5,-32(s0)
	add	a3,a4,a5
	.loc 1 846 9
	lw	a4,-44(s0)
	lw	a5,-32(s0)
	sub	a4,a4,a5
	lui	a5,%hi(.LC196)
	addi	a2,a5,%lo(.LC196)
	mv	a1,a4
	mv	a0,a3
	call	snprintf
	.loc 1 848 13
	lw	a5,-32(s0)
	addi	a5,a5,3
	lw	a4,-40(s0)
	add	a5,a4,a5
	sw	a5,-40(s0)
	.loc 1 849 16
	lw	a4,-44(s0)
	lw	a5,-32(s0)
	sub	a5,a4,a5
	addi	a5,a5,-3
	sw	a5,-44(s0)
.L215:
	.loc 1 853 35
	lw	a0,-36(s0)
	call	mbedtls_low_level_strerr
	sw	a0,-24(s0)
	.loc 1 855 8
	lw	a5,-24(s0)
	bne	a5,zero,.L217
	.loc 1 856 9
	lw	a5,-28(s0)
	mv	a3,a5
	lui	a5,%hi(.LC194)
	addi	a2,a5,%lo(.LC194)
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	snprintf
	j	.L207
.L217:
	.loc 1 858 9
	lw	a3,-24(s0)
	lui	a5,%hi(.LC195)
	addi	a2,a5,%lo(.LC195)
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	snprintf
	j	.L207
.L218:
	.loc 1 800 9
	nop
	j	.L207
.L219:
	.loc 1 825 13
	nop
	j	.L207
.L220:
	.loc 1 833 9
	nop
	j	.L207
.L221:
	.loc 1 843 13
	nop
.L207:
	.loc 1 860 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE100:
	.size	mbedtls_strerror, .-mbedtls_strerror
	.text
.Letext0:
	.file 2 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h"
	.file 3 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h"
	.file 4 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1e4
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x4
	.4byte	0x90
	.uleb128 0x5
	.4byte	0x86
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xd
	.4byte	0x90
	.uleb128 0x4
	.4byte	0x97
	.uleb128 0x5
	.4byte	0x9c
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x29
	.4byte	0x71
	.4byte	0xba
	.uleb128 0x2
	.4byte	0x9c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF14
	.byte	0x3
	.2byte	0x110
	.byte	0x5
	.4byte	0x63
	.4byte	0xdc
	.uleb128 0x2
	.4byte	0x8b
	.uleb128 0x2
	.4byte	0x71
	.uleb128 0x2
	.4byte	0xa1
	.uleb128 0xf
	.byte	0
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x21
	.4byte	0x84
	.4byte	0xfa
	.uleb128 0x2
	.4byte	0x84
	.uleb128 0x2
	.4byte	0x63
	.uleb128 0x2
	.4byte	0x71
	.byte	0
	.uleb128 0x10
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x318
	.byte	0x6
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x178
	.uleb128 0x7
	.string	"ret"
	.byte	0x1b
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"buf"
	.byte	0x26
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF16
	.2byte	0x318
	.byte	0x32
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.2byte	0x31a
	.byte	0xc
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF17
	.2byte	0x31b
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF18
	.2byte	0x31c
	.byte	0x11
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF19
	.2byte	0x31d
	.byte	0x11
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x219
	.byte	0xd
	.4byte	0x9c
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b2
	.uleb128 0x8
	.4byte	.LASF20
	.2byte	0x219
	.byte	0x2a
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF21
	.2byte	0x21b
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF23
	.byte	0x1
	.byte	0xae
	.byte	0xd
	.4byte	0x9c
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF20
	.byte	0x1
	.byte	0xae
	.byte	0x2b
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.4byte	.LASF24
	.byte	0x1
	.byte	0xb0
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x37
	.byte	0
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
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 792
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
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
	.4byte	.LFB98
	.uleb128 .LFE98-.LFB98
	.byte	0x7
	.4byte	.LFB99
	.uleb128 .LFE99-.LFB99
	.byte	0x7
	.4byte	.LFB100
	.uleb128 .LFE100-.LFB100
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"long long int"
.LASF26:
	.string	"size_t"
.LASF22:
	.string	"mbedtls_strerror"
.LASF21:
	.string	"low_level_error_code"
.LASF27:
	.string	"mbedtls_low_level_strerr"
.LASF25:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -O0 -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"long long unsigned int"
.LASF14:
	.string	"snprintf"
.LASF16:
	.string	"buflen"
.LASF3:
	.string	"unsigned char"
.LASF12:
	.string	"char"
.LASF24:
	.string	"high_level_error_code"
.LASF6:
	.string	"long int"
.LASF19:
	.string	"low_level_error_description"
.LASF7:
	.string	"long unsigned int"
.LASF17:
	.string	"use_ret"
.LASF13:
	.string	"strlen"
.LASF5:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF18:
	.string	"high_level_error_description"
.LASF11:
	.string	"long double"
.LASF15:
	.string	"memset"
.LASF4:
	.string	"short int"
.LASF10:
	.string	"unsigned int"
.LASF20:
	.string	"error_code"
.LASF23:
	.string	"mbedtls_high_level_strerr"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/mbedtls-bl602"
.LASF0:
	.string	"/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/library/error.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
